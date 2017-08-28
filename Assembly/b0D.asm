;Super Mario Bros. - The Lost Levels.

CODE_0D8000:    JMP CODE_0D800D         ; $0D:8000: 4C 0D 80    ;

CODE_0D8003:    JMP CODE_0D818D         ; $0D:8003: 4C 8D 81    ;

CODE_0D8006:    JMP CODE_0D83A0         ; $0D:8006: 4C A0 83    ;

CODE_0D8009:    JML CODE_009641         ; $0D:8009: 5C 41 96 00 ;

CODE_0D800D:    NOP                     ; $0D:800D: EA          ;
CODE_0D800E:    NOP                     ; $0D:800E: EA          ;
CODE_0D800F:    LDA #$AA                ; $0D:800F: A9 AA       ;
CODE_0D8011:    STA $702000             ; $0D:8011: 8F 00 20 70 ;
CODE_0D8015:    CMP $700000             ; $0D:8015: CF 00 00 70 ;
CODE_0D8019:    BNE CODE_0D8009         ; $0D:8019: D0 EE       ;
CODE_0D801B:    LDA #$55                ; $0D:801B: A9 55       ;
CODE_0D801D:    STA $702000             ; $0D:801D: 8F 00 20 70 ;
CODE_0D8021:    CMP $700000             ; $0D:8021: CF 00 00 70 ;
CODE_0D8025:    BNE CODE_0D8009         ; $0D:8025: D0 E2       ;
CODE_0D8027:    SEI                     ; $0D:8027: 78          ;
CODE_0D8028:    STZ $4200               ; $0D:8028: 9C 00 42    ;
CODE_0D802B:    STZ $420B               ; $0D:802B: 9C 0B 42    ;
CODE_0D802E:    STZ $420C               ; $0D:802E: 9C 0C 42    ;
CODE_0D8031:    LDA #$80                ; $0D:8031: A9 80       ;
CODE_0D8033:    STA $2100               ; $0D:8033: 8D 00 21    ;
CODE_0D8036:    PHK                     ; $0D:8036: 4B          ;
CODE_0D8037:    PLB                     ; $0D:8037: AB          ;
CODE_0D8038:    JSL CODE_0E8000         ; $0D:8038: 22 00 80 0E ;
CODE_0D803C:    JSL CODE_0480AE         ; $0D:803C: 22 AE 80 04 ;
CODE_0D8040:    JSR CODE_0D841C         ; $0D:8040: 20 1C 84    ;
CODE_0D8043:    STZ $1608               ; $0D:8043: 9C 08 16    ;
CODE_0D8046:    STZ $1609               ; $0D:8046: 9C 09 16    ;
CODE_0D8049:    STZ $160F               ; $0D:8049: 9C 0F 16    ;
CODE_0D804C:    STZ $160E               ; $0D:804C: 9C 0E 16    ;
CODE_0D804F:    STZ $160A               ; $0D:804F: 9C 0A 16    ;
CODE_0D8052:    STA $160D               ; $0D:8052: 8D 0D 16    ;
CODE_0D8055:    LDA #$01                ; $0D:8055: A9 01       ;
CODE_0D8057:    STA $160C               ; $0D:8057: 8D 0C 16    ;
CODE_0D805A:    LDA #$81                ; $0D:805A: A9 81       ;
CODE_0D805C:    STA $09                 ; $0D:805C: 85 09       ;
CODE_0D805E:    STA $4200               ; $0D:805E: 8D 00 42    ;
CODE_0D8061:    CLI                     ; $0D:8061: 58          ;
CODE_0D8062:    LDA $0154               ; $0D:8062: AD 54 01    ;
CODE_0D8065:    BEQ CODE_0D8062         ; $0D:8065: F0 FB       ;
CODE_0D8067:    JSR CODE_0D96A8         ; $0D:8067: 20 A8 96    ;
CODE_0D806A:    LDA $07B7               ; $0D:806A: AD B7 07    ;
CODE_0D806D:    AND #$02                ; $0D:806D: 29 02       ;
CODE_0D806F:    STA $07C7               ; $0D:806F: 8D C7 07    ;
CODE_0D8072:    LDA $07B8               ; $0D:8072: AD B8 07    ;
CODE_0D8075:    AND #$02                ; $0D:8075: 29 02       ;
CODE_0D8077:    EOR $07C7               ; $0D:8077: 4D C7 07    ;
CODE_0D807A:    CLC                     ; $0D:807A: 18          ;
CODE_0D807B:    BEQ CODE_0D807E         ; $0D:807B: F0 01       ;
CODE_0D807D:    SEC                     ; $0D:807D: 38          ;
CODE_0D807E:    ROR $07B7               ; $0D:807E: 6E B7 07    ;
CODE_0D8081:    ROR $07B8               ; $0D:8081: 6E B8 07    ;
CODE_0D8084:    ROR $07B9               ; $0D:8084: 6E B9 07    ;
CODE_0D8087:    ROR $07BA               ; $0D:8087: 6E BA 07    ;
CODE_0D808A:    ROR $07BB               ; $0D:808A: 6E BB 07    ;
CODE_0D808D:    ROR $07BC               ; $0D:808D: 6E BC 07    ;
CODE_0D8090:    ROR $07BD               ; $0D:8090: 6E BD 07    ;
CODE_0D8093:    JSL CODE_048163         ; $0D:8093: 22 63 81 04 ;
CODE_0D8097:    LDA $700007             ; $0D:8097: AF 07 00 70 ;
CODE_0D809B:    BEQ CODE_0D80B8         ; $0D:809B: F0 1B       ;
CODE_0D809D:    LDA $0FFA               ; $0D:809D: AD FA 0F    ;
CODE_0D80A0:    AND #$20                ; $0D:80A0: 29 20       ;
CODE_0D80A2:    BEQ CODE_0D80A7         ; $0D:80A2: F0 03       ;
CODE_0D80A4:    INC $15E5               ; $0D:80A4: EE E5 15    ;
CODE_0D80A7:    LDA $0FFA               ; $0D:80A7: AD FA 0F    ;
CODE_0D80AA:    AND #$10                ; $0D:80AA: 29 10       ;
CODE_0D80AC:    BNE CODE_0D80B8         ; $0D:80AC: D0 0A       ;
CODE_0D80AE:    LDA $15E5               ; $0D:80AE: AD E5 15    ;
CODE_0D80B1:    AND #$01                ; $0D:80B1: 29 01       ;
CODE_0D80B3:    BEQ CODE_0D80B8         ; $0D:80B3: F0 03       ;
CODE_0D80B5:    JMP CODE_0D817F         ; $0D:80B5: 4C 7F 81    ;

CODE_0D80B8:    LDA $0B76               ; $0D:80B8: AD 76 0B    ;
CODE_0D80BB:    BNE CODE_0D80C1         ; $0D:80BB: D0 04       ;
CODE_0D80BD:    JSL CODE_0FEFAF         ; $0D:80BD: 22 AF EF 0F ;
CODE_0D80C1:    JSL CODE_0FD94F         ; $0D:80C1: 22 4F D9 0F ;
CODE_0D80C5:    JSR CODE_0D98F2         ; $0D:80C5: 20 F2 98    ;
CODE_0D80C8:    LDA $5C                 ; $0D:80C8: A5 5C       ;
CODE_0D80CA:    BNE CODE_0D80D0         ; $0D:80CA: D0 04       ;
CODE_0D80CC:    JSL CODE_0E834E         ; $0D:80CC: 22 4E 83 0E ;
CODE_0D80D0:    LDA $0ED6               ; $0D:80D0: AD D6 0E    ;
CODE_0D80D3:    BMI CODE_0D80F0         ; $0D:80D3: 30 1B       ;
CODE_0D80D5:    BEQ CODE_0D810A         ; $0D:80D5: F0 33       ;
CODE_0D80D7:    LDA $07B0               ; $0D:80D7: AD B0 07    ;
CODE_0D80DA:    BEQ CODE_0D810A         ; $0D:80DA: F0 2E       ;
CODE_0D80DC:    LDA $0FFA               ; $0D:80DC: AD FA 0F    ;
CODE_0D80DF:    BMI CODE_0D80E8         ; $0D:80DF: 30 07       ;
CODE_0D80E1:    LDA $0FF6               ; $0D:80E1: AD F6 0F    ;
CODE_0D80E4:    AND #$90                ; $0D:80E4: 29 90       ;
CODE_0D80E6:    BEQ CODE_0D810A         ; $0D:80E6: F0 22       ;
CODE_0D80E8:    STZ $07B0               ; $0D:80E8: 9C B0 07    ;
CODE_0D80EB:    STZ $0ED6               ; $0D:80EB: 9C D6 0E    ;
CODE_0D80EE:    BRA CODE_0D810A         ; $0D:80EE: 80 1A       ;

CODE_0D80F0:    LDA $0FFA               ; $0D:80F0: AD FA 0F    ;
CODE_0D80F3:    ORA $0FF6               ; $0D:80F3: 0D F6 0F    ;
CODE_0D80F6:    AND #$40                ; $0D:80F6: 29 40       ;
CODE_0D80F8:    BEQ CODE_0D810A         ; $0D:80F8: F0 10       ;
CODE_0D80FA:    LDA $1201               ; $0D:80FA: AD 01 12    ;
CODE_0D80FD:    CMP #$0F                ; $0D:80FD: C9 0F       ;
CODE_0D80FF:    BNE CODE_0D810A         ; $0D:80FF: D0 09       ;
CODE_0D8101:    LDA #$80                ; $0D:8101: A9 80       ;
CODE_0D8103:    STA $1602               ; $0D:8103: 8D 02 16    ;
CODE_0D8106:    JML CODE_0080DE         ; $0D:8106: 5C DE 80 00 ;

CODE_0D810A:    LDA $0E7F               ; $0D:810A: AD 7F 0E    ;
CODE_0D810D:    BEQ CODE_0D8114         ; $0D:810D: F0 05       ;
CODE_0D810F:    JSR CODE_0DC089         ; $0D:810F: 20 89 C0    ;
CODE_0D8112:    BRA CODE_0D817F         ; $0D:8112: 80 6B       ;

CODE_0D8114:    LDA $0776               ; $0D:8114: AD 76 07    ;
CODE_0D8117:    LSR A                   ; $0D:8117: 4A          ;
CODE_0D8118:    BCS CODE_0D8178         ; $0D:8118: B0 5E       ;
CODE_0D811A:    PHD                     ; $0D:811A: 0B          ;
CODE_0D811B:    LDA #$07                ; $0D:811B: A9 07       ;
CODE_0D811D:    XBA                     ; $0D:811D: EB          ;
CODE_0D811E:    LDA #$00                ; $0D:811E: A9 00       ;
CODE_0D8120:    TCD                     ; $0D:8120: 5B          ;
CODE_0D8121:    LDA $47                 ; $0D:8121: A5 47       ;
CODE_0D8123:    BEQ CODE_0D8129         ; $0D:8123: F0 04       ;
CODE_0D8125:    DEC $47                 ; $0D:8125: C6 47       ;
CODE_0D8127:    BNE CODE_0D813E         ; $0D:8127: D0 15       ;
CODE_0D8129:    LDX #$18                ; $0D:8129: A2 18       ;
CODE_0D812B:    DEC $87                 ; $0D:812B: C6 87       ;
CODE_0D812D:    BPL CODE_0D8135         ; $0D:812D: 10 06       ;
CODE_0D812F:    LDA #$14                ; $0D:812F: A9 14       ;
CODE_0D8131:    STA $87                 ; $0D:8131: 85 87       ;
CODE_0D8133:    LDX #$2B                ; $0D:8133: A2 2B       ;
CODE_0D8135:    LDA $88,x               ; $0D:8135: B5 88       ;
CODE_0D8137:    BEQ CODE_0D813B         ; $0D:8137: F0 02       ;
CODE_0D8139:    DEC $88,x               ; $0D:8139: D6 88       ;
CODE_0D813B:    DEX                     ; $0D:813B: CA          ;
CODE_0D813C:    BPL CODE_0D8135         ; $0D:813C: 10 F7       ;
CODE_0D813E:    PLD                     ; $0D:813E: 2B          ;
CODE_0D813F:    LDA $07B0               ; $0D:813F: AD B0 07    ;
CODE_0D8142:    BNE CODE_0D814C         ; $0D:8142: D0 08       ;
CODE_0D8144:    LDA $0ED6               ; $0D:8144: AD D6 0E    ;
CODE_0D8147:    AND #$80                ; $0D:8147: 29 80       ;
CODE_0D8149:    STA $0ED6               ; $0D:8149: 8D D6 0E    ;
CODE_0D814C:    INC $09                 ; $0D:814C: E6 09       ;
CODE_0D814E:    INC $0E68               ; $0D:814E: EE 68 0E    ;
CODE_0D8151:    LDA $0E68               ; $0D:8151: AD 68 0E    ;
CODE_0D8154:    AND #$18                ; $0D:8154: 29 18       ;
CODE_0D8156:    CMP #$18                ; $0D:8156: C9 18       ;
CODE_0D8158:    BNE CODE_0D815D         ; $0D:8158: D0 03       ;
CODE_0D815A:    STZ $0E68               ; $0D:815A: 9C 68 0E    ;
CODE_0D815D:    JSL CODE_0FE26D         ; $0D:815D: 22 6D E2 0F ;
CODE_0D8161:    LDA $0722               ; $0D:8161: AD 22 07    ;
CODE_0D8164:    BEQ CODE_0D816E         ; $0D:8164: F0 08       ;
CODE_0D8166:    LDA $1B                 ; $0D:8166: A5 1B       ;
CODE_0D8168:    LSR A                   ; $0D:8168: 4A          ;
CODE_0D8169:    BCS CODE_0D816E         ; $0D:8169: B0 03       ;
CODE_0D816B:    JSR CODE_0D83EC         ; $0D:816B: 20 EC 83    ;
CODE_0D816E:    JSR CODE_0D83D8         ; $0D:816E: 20 D8 83    ;
CODE_0D8171:    LDA $1680               ; $0D:8171: AD 80 16    ;
CODE_0D8174:    BMI CODE_0D8178         ; $0D:8174: 30 02       ;
CODE_0D8176:    BRA CODE_0D817F         ; $0D:8176: 80 07       ;

CODE_0D8178:    JSR CODE_0D841C         ; $0D:8178: 20 1C 84    ;
CODE_0D817B:    JSL CODE_0FDA33         ; $0D:817B: 22 33 DA 0F ;
CODE_0D817F:    JSL CODE_0FEBC6         ; $0D:817F: 22 C6 EB 0F ;
CODE_0D8183:    STZ $0154               ; $0D:8183: 9C 54 01    ;
CODE_0D8186:    JMP CODE_0D8062         ; $0D:8186: 4C 62 80    ;

DATA_0D8189:        db $00,$00,$00,$03

CODE_0D818D:    PHB                     ; $0D:818D: 8B          ;
CODE_0D818E:    PHK                     ; $0D:818E: 4B          ;
CODE_0D818F:    PLB                     ; $0D:818F: AB          ;
CODE_0D8190:    LDA $4210               ; $0D:8190: AD 10 42    ;
CODE_0D8193:    LDA $1201               ; $0D:8193: AD 01 12    ;
CODE_0D8196:    BNE CODE_0D819A         ; $0D:8196: D0 02       ;
CODE_0D8198:    LDA #$80                ; $0D:8198: A9 80       ;
CODE_0D819A:    STA $2100               ; $0D:819A: 8D 00 21    ;
CODE_0D819D:    STZ $420C               ; $0D:819D: 9C 0C 42    ;
CODE_0D81A0:    LDA $0154               ; $0D:81A0: AD 54 01    ;
CODE_0D81A3:    BEQ CODE_0D81A8         ; $0D:81A3: F0 03       ;
CODE_0D81A5:    JMP CODE_0D82EA         ; $0D:81A5: 4C EA 82    ;

CODE_0D81A8:    INC $0154               ; $0D:81A8: EE 54 01    ;
CODE_0D81AB:    LDX $0773               ; $0D:81AB: AE 73 07    ;
CODE_0D81AE:    LDA $0753               ; $0D:81AE: AD 53 07    ;
CODE_0D81B1:    BEQ CODE_0D81C5         ; $0D:81B1: F0 12       ;
CODE_0D81B3:    CPX #$0C                ; $0D:81B3: E0 0C       ;
CODE_0D81B5:    BNE CODE_0D81B9         ; $0D:81B5: D0 02       ;
CODE_0D81B7:    LDX #$1F                ; $0D:81B7: A2 1F       ;
CODE_0D81B9:    CPX #$10                ; $0D:81B9: E0 10       ;
CODE_0D81BB:    BNE CODE_0D81BF         ; $0D:81BB: D0 02       ;
CODE_0D81BD:    LDX #$20                ; $0D:81BD: A2 20       ;
CODE_0D81BF:    CPX #$13                ; $0D:81BF: E0 13       ;
CODE_0D81C1:    BNE CODE_0D81C5         ; $0D:81C1: D0 02       ;
CODE_0D81C3:    LDX #$21                ; $0D:81C3: A2 21       ;
CODE_0D81C5:    LDA.l DATA_0FF340,x     ; $0D:81C5: BF 40 F3 0F ;
CODE_0D81C9:    STA $00                 ; $0D:81C9: 85 00       ;
CODE_0D81CB:    LDA.l DATA_0FF362,x     ; $0D:81CB: BF 62 F3 0F ;
CODE_0D81CF:    STA $01                 ; $0D:81CF: 85 01       ;
CODE_0D81D1:    LDA.b #DATA_0FF340>>16  ; $0D:81D1: A9 0F       ;
CODE_0D81D3:    STA $4314               ; $0D:81D3: 8D 14 43    ;
CODE_0D81D6:    STA $02                 ; $0D:81D6: 85 02       ;
CODE_0D81D8:    JSR CODE_0D977C         ; $0D:81D8: 20 7C 97    ;
CODE_0D81DB:    LDX $0773               ; $0D:81DB: AE 73 07    ;
CODE_0D81DE:    CPX #$06                ; $0D:81DE: E0 06       ;
CODE_0D81E0:    BNE CODE_0D81F8         ; $0D:81E0: D0 16       ;
CODE_0D81E2:    LDA.l DATA_0FF340       ; $0D:81E2: AF 40 F3 0F ;
CODE_0D81E6:    STA $00                 ; $0D:81E6: 85 00       ;
CODE_0D81E8:    LDA.l DATA_0FF362       ; $0D:81E8: AF 62 F3 0F ;
CODE_0D81EC:    STA $01                 ; $0D:81EC: 85 01       ;
CODE_0D81EE:    LDA.b #DATA_0FF340>>16  ; $0D:81EE: A9 0F       ;
CODE_0D81F0:    STA $4314               ; $0D:81F0: 8D 14 43    ;
CODE_0D81F3:    STA $02                 ; $0D:81F3: 85 02       ;
CODE_0D81F5:    JSR CODE_0D977C         ; $0D:81F5: 20 7C 97    ;
CODE_0D81F8:    PHD                     ; $0D:81F8: 0B          ;
CODE_0D81F9:    LDA #$43                ; $0D:81F9: A9 43       ;
CODE_0D81FB:    XBA                     ; $0D:81FB: EB          ; DP: $4300
CODE_0D81FC:    LDA #$00                ; $0D:81FC: A9 00       ;
CODE_0D81FE:    TCD                     ; $0D:81FE: 5B          ; TODO: DMA source
CODE_0D81FF:    REP #$10                ; $0D:81FF: C2 10       ;
CODE_0D8201:    LDA #$81                ; $0D:8201: A9 81       ;
CODE_0D8203:    STA $2115               ; $0D:8203: 8D 15 21    ;
CODE_0D8206:    LDY #$1801              ; $0D:8206: A0 01 18    ;
CODE_0D8209:    STY $00                 ; $0D:8209: 84 00       ;
CODE_0D820B:    LDA $0EF9               ; $0D:820B: AD F9 0E    ;
CODE_0D820E:    BEQ CODE_0D8243         ; $0D:820E: F0 33       ;
CODE_0D8210:    LDA #$7F                ; $0D:8210: A9 7F       ;
CODE_0D8212:    STA $04                 ; $0D:8212: 85 04       ;
CODE_0D8214:    REP #$20                ; $0D:8214: C2 20       ;
CODE_0D8216:    LDY #$0040              ; $0D:8216: A0 40 00    ;
CODE_0D8219:    LDX #$0000              ; $0D:8219: A2 00 00    ;
CODE_0D821C:    LDA $7F0002,x           ; $0D:821C: BF 02 00 7F ;
CODE_0D8220:    STA $2116               ; $0D:8220: 8D 16 21    ;
CODE_0D8223:    TXA                     ; $0D:8223: 8A          ;
CODE_0D8224:    CLC                     ; $0D:8224: 18          ;
CODE_0D8225:    ADC #$0004              ; $0D:8225: 69 04 00    ;
CODE_0D8228:    STA $02                 ; $0D:8228: 85 02       ;
CODE_0D822A:    STY $05                 ; $0D:822A: 84 05       ;
CODE_0D822C:    TXA                     ; $0D:822C: 8A          ;
CODE_0D822D:    CLC                     ; $0D:822D: 18          ;
CODE_0D822E:    ADC #$0042              ; $0D:822E: 69 42 00    ;
CODE_0D8231:    TAX                     ; $0D:8231: AA          ;
CODE_0D8232:    LDA #$0001              ; $0D:8232: A9 01 00    ;
CODE_0D8235:    STA $420B               ; $0D:8235: 8D 0B 42    ;
CODE_0D8238:    LDA $7F0002,x           ; $0D:8238: BF 02 00 7F ;
CODE_0D823C:    BPL CODE_0D8220         ; $0D:823C: 10 E2       ;
CODE_0D823E:    SEP #$20                ; $0D:823E: E2 20       ;
CODE_0D8240:    STZ $0EF9               ; $0D:8240: 9C F9 0E    ;
CODE_0D8243:    LDA $0ED4               ; $0D:8243: AD D4 0E    ;
CODE_0D8246:    BEQ CODE_0D8276         ; $0D:8246: F0 2E       ;
CODE_0D8248:    LDA #$7F                ; $0D:8248: A9 7F       ;
CODE_0D824A:    STA $04                 ; $0D:824A: 85 04       ;
CODE_0D824C:    REP #$20                ; $0D:824C: C2 20       ;
CODE_0D824E:    LDY #$0038              ; $0D:824E: A0 38 00    ;
CODE_0D8251:    LDX #$0000              ; $0D:8251: A2 00 00    ;
CODE_0D8254:    LDA $7F2002,x           ; $0D:8254: BF 02 20 7F ;
CODE_0D8258:    STA $2116               ; $0D:8258: 8D 16 21    ;
CODE_0D825B:    TXA                     ; $0D:825B: 8A          ;
CODE_0D825C:    CLC                     ; $0D:825C: 18          ;
CODE_0D825D:    ADC #$2004              ; $0D:825D: 69 04 20    ;
CODE_0D8260:    STA $02                 ; $0D:8260: 85 02       ;
CODE_0D8262:    STY $05                 ; $0D:8262: 84 05       ;
CODE_0D8264:    TXA                     ; $0D:8264: 8A          ;
CODE_0D8265:    CLC                     ; $0D:8265: 18          ;
CODE_0D8266:    ADC #$003A              ; $0D:8266: 69 3A 00    ;
CODE_0D8269:    TAX                     ; $0D:8269: AA          ;
CODE_0D826A:    LDA #$0001              ; $0D:826A: A9 01 00    ;
CODE_0D826D:    STA $420B               ; $0D:826D: 8D 0B 42    ;
CODE_0D8270:    LDA $7F2002,x           ; $0D:8270: BF 02 20 7F ;
CODE_0D8274:    BPL CODE_0D8258         ; $0D:8274: 10 E2       ;
CODE_0D8276:    SEP #$30                ; $0D:8276: E2 30       ;
CODE_0D8278:    STZ $0ED4               ; $0D:8278: 9C D4 0E    ;
CODE_0D827B:    LDA #$80                ; $0D:827B: A9 80       ;
CODE_0D827D:    STA $2115               ; $0D:827D: 8D 15 21    ;
CODE_0D8280:    JSR CODE_0D96DD         ; $0D:8280: 20 DD 96    ;
CODE_0D8283:    LDA $1200               ; $0D:8283: AD 00 12    ;
CODE_0D8286:    BEQ CODE_0D82B3         ; $0D:8286: F0 2B       ;
CODE_0D8288:    BMI CODE_0D82AE         ; $0D:8288: 30 24       ;
CODE_0D828A:    REP #$10                ; $0D:828A: C2 10       ;
CODE_0D828C:    STZ $2121               ; $0D:828C: 9C 21 21    ;
CODE_0D828F:    LDY #$2200              ; $0D:828F: A0 00 22    ;
CODE_0D8292:    STY $00                 ; $0D:8292: 84 00       ;
CODE_0D8294:    LDY #$1000              ; $0D:8294: A0 00 10    ;
CODE_0D8297:    STY $02                 ; $0D:8297: 84 02       ;
CODE_0D8299:    LDA #$00                ; $0D:8299: A9 00       ;
CODE_0D829B:    STA $04                 ; $0D:829B: 85 04       ;
CODE_0D829D:    LDY #$0200              ; $0D:829D: A0 00 02    ;
CODE_0D82A0:    STY $05                 ; $0D:82A0: 84 05       ;
CODE_0D82A2:    LDA #$01                ; $0D:82A2: A9 01       ;
CODE_0D82A4:    STA $420B               ; $0D:82A4: 8D 0B 42    ;
CODE_0D82A7:    SEP #$10                ; $0D:82A7: E2 10       ;
CODE_0D82A9:    STZ $1200               ; $0D:82A9: 9C 00 12    ;
CODE_0D82AC:    BRA CODE_0D82B3         ; $0D:82AC: 80 05       ;

CODE_0D82AE:    LDA #$01                ; $0D:82AE: A9 01       ;
CODE_0D82B0:    STA $1200               ; $0D:82B0: 8D 00 12    ;
CODE_0D82B3:    PLD                     ; $0D:82B3: 2B          ;
CODE_0D82B4:    LDY #$00                ; $0D:82B4: A0 00       ;
CODE_0D82B6:    LDX $0773               ; $0D:82B6: AE 73 07    ;
CODE_0D82B9:    CPX #$06                ; $0D:82B9: E0 06       ;
CODE_0D82BB:    BNE CODE_0D82BF         ; $0D:82BB: D0 02       ;
CODE_0D82BD:    INY                     ; $0D:82BD: C8          ;
CODE_0D82BE:    INY                     ; $0D:82BE: C8          ;
CODE_0D82BF:    REP #$20                ; $0D:82BF: C2 20       ;
CODE_0D82C1:    LDA DATA_0D8189,y       ; $0D:82C1: B9 89 81    ;
CODE_0D82C4:    REP #$10                ; $0D:82C4: C2 10       ;
CODE_0D82C6:    TAX                     ; $0D:82C6: AA          ;
CODE_0D82C7:    STZ $1700,x             ; $0D:82C7: 9E 00 17    ;
CODE_0D82CA:    LDA #$FFFF              ; $0D:82CA: A9 FF FF    ;
CODE_0D82CD:    STA $1702,x             ; $0D:82CD: 9D 02 17    ;
CODE_0D82D0:    LDA #$0000              ; $0D:82D0: A9 00 00    ;
CODE_0D82D3:    STA $7F0000             ; $0D:82D3: 8F 00 00 7F ;
CODE_0D82D7:    LDA $5C                 ; $0D:82D7: A5 5C       ;
CODE_0D82D9:    AND #$00FF              ; $0D:82D9: 29 FF 00    ;
CODE_0D82DC:    BEQ CODE_0D82E5         ; $0D:82DC: F0 07       ;
CODE_0D82DE:    LDA #$0000              ; $0D:82DE: A9 00 00    ;
CODE_0D82E1:    STA $7F2000             ; $0D:82E1: 8F 00 20 7F ;
CODE_0D82E5:    SEP #$30                ; $0D:82E5: E2 30       ;
CODE_0D82E7:    STZ $0773               ; $0D:82E7: 9C 73 07    ;
CODE_0D82EA:    LDA $1203               ; $0D:82EA: AD 03 12    ;
CODE_0D82ED:    STA $420C               ; $0D:82ED: 8D 0C 42    ;
CODE_0D82F0:    PHD                     ; $0D:82F0: 0B          ;
CODE_0D82F1:    LDA #$21                ; $0D:82F1: A9 21       ;
CODE_0D82F3:    XBA                     ; $0D:82F3: EB          ;
CODE_0D82F4:    LDA #$00                ; $0D:82F4: A9 00       ;
CODE_0D82F6:    TCD                     ; $0D:82F6: 5B          ;
CODE_0D82F7:    LDA $1209               ; $0D:82F7: AD 09 12    ;
CODE_0D82FA:    STA $30                 ; $0D:82FA: 85 30       ;
CODE_0D82FC:    LDA $120A               ; $0D:82FC: AD 0A 12    ;
CODE_0D82FF:    STA $31                 ; $0D:82FF: 85 31       ;
CODE_0D8301:    LDA $1204               ; $0D:8301: AD 04 12    ;
CODE_0D8304:    STA $23                 ; $0D:8304: 85 23       ;
CODE_0D8306:    LDA $1205               ; $0D:8306: AD 05 12    ;
CODE_0D8309:    STA $24                 ; $0D:8309: 85 24       ;
CODE_0D830B:    LDA $1206               ; $0D:830B: AD 06 12    ;
CODE_0D830E:    STA $25                 ; $0D:830E: 85 25       ;
CODE_0D8310:    LDA $120B               ; $0D:8310: AD 0B 12    ;
CODE_0D8313:    STA $2C                 ; $0D:8313: 85 2C       ;
CODE_0D8315:    LDA $120C               ; $0D:8315: AD 0C 12    ;
CODE_0D8318:    STA $2D                 ; $0D:8318: 85 2D       ;
CODE_0D831A:    LDA $1207               ; $0D:831A: AD 07 12    ;
CODE_0D831D:    STA $2E                 ; $0D:831D: 85 2E       ;
CODE_0D831F:    LDA $1208               ; $0D:831F: AD 08 12    ;
CODE_0D8322:    STA $2F                 ; $0D:8322: 85 2F       ;
CODE_0D8324:    LDA $0EE0               ; $0D:8324: AD E0 0E    ;
CODE_0D8327:    STA $32                 ; $0D:8327: 85 32       ;
CODE_0D8329:    LDA $0EE1               ; $0D:8329: AD E1 0E    ;
CODE_0D832C:    STA $32                 ; $0D:832C: 85 32       ;
CODE_0D832E:    LDA $0EE2               ; $0D:832E: AD E2 0E    ;
CODE_0D8331:    STA $32                 ; $0D:8331: 85 32       ;
CODE_0D8333:    LDA $120D               ; $0D:8333: AD 0D 12    ;
CODE_0D8336:    STA $05                 ; $0D:8336: 85 05       ;
CODE_0D8338:    LDA $0E7E               ; $0D:8338: AD 7E 0E    ;
CODE_0D833B:    STA $06                 ; $0D:833B: 85 06       ;
CODE_0D833D:    STZ $11                 ; $0D:833D: 64 11       ;
CODE_0D833F:    STZ $11                 ; $0D:833F: 64 11       ;
CODE_0D8341:    LDA $0ED1               ; $0D:8341: AD D1 0E    ;
CODE_0D8344:    BEQ CODE_0D8350         ; $0D:8344: F0 0A       ;
CODE_0D8346:    LDA $0EEE               ; $0D:8346: AD EE 0E    ;
CODE_0D8349:    STA $0F                 ; $0D:8349: 85 0F       ;
CODE_0D834B:    LDA $0EEF               ; $0D:834B: AD EF 0E    ;
CODE_0D834E:    STA $0F                 ; $0D:834E: 85 0F       ;
CODE_0D8350:    LDA $0E7F               ; $0D:8350: AD 7F 0E    ;
CODE_0D8353:    BNE CODE_0D837F         ; $0D:8353: D0 2A       ;
CODE_0D8355:    LDA $073F               ; $0D:8355: AD 3F 07    ;
CODE_0D8358:    STA $0D                 ; $0D:8358: 85 0D       ;
CODE_0D835A:    LDA $071A               ; $0D:835A: AD 1A 07    ;
CODE_0D835D:    STA $0D                 ; $0D:835D: 85 0D       ;
CODE_0D835F:    LDA $0ED1               ; $0D:835F: AD D1 0E    ;
CODE_0D8362:    BNE CODE_0D836E         ; $0D:8362: D0 0A       ;
CODE_0D8364:    LDA $0EFD               ; $0D:8364: AD FD 0E    ;
CODE_0D8367:    STA $0F                 ; $0D:8367: 85 0F       ;
CODE_0D8369:    LDA $0EFE               ; $0D:8369: AD FE 0E    ;
CODE_0D836C:    STA $0F                 ; $0D:836C: 85 0F       ;
CODE_0D836E:    LDA $0740               ; $0D:836E: AD 40 07    ;
CODE_0D8371:    STA $0E                 ; $0D:8371: 85 0E       ;
CODE_0D8373:    STZ $0E                 ; $0D:8373: 64 0E       ;
CODE_0D8375:    LDA $0ED2               ; $0D:8375: AD D2 0E    ;
CODE_0D8378:    STA $10                 ; $0D:8378: 85 10       ;
CODE_0D837A:    LDA $0ED3               ; $0D:837A: AD D3 0E    ;
CODE_0D837D:    STA $10                 ; $0D:837D: 85 10       ;
CODE_0D837F:    PLD                     ; $0D:837F: 2B          ;
CODE_0D8380:    LDX #$81                ; $0D:8380: A2 81       ;
CODE_0D8382:    LDA $0EDE               ; $0D:8382: AD DE 0E    ;
CODE_0D8385:    BEQ CODE_0D839B         ; $0D:8385: F0 14       ;
CODE_0D8387:    LDA $4211               ; $0D:8387: AD 11 42    ;
CODE_0D838A:    LDA $0EF2               ; $0D:838A: AD F2 0E    ;
CODE_0D838D:    STA $4209               ; $0D:838D: 8D 09 42    ;
CODE_0D8390:    STZ $420A               ; $0D:8390: 9C 0A 42    ;
CODE_0D8393:    STZ $4207               ; $0D:8393: 9C 07 42    ;
CODE_0D8396:    STZ $4208               ; $0D:8396: 9C 08 42    ;
CODE_0D8399:    LDX #$A1                ; $0D:8399: A2 A1       ;
CODE_0D839B:    STX $4200               ; $0D:839B: 8E 00 42    ;
CODE_0D839E:    PLB                     ; $0D:839E: AB          ;
CODE_0D839F:    RTL                     ; $0D:839F: 6B          ;

CODE_0D83A0:    PHB                     ; $0D:83A0: 8B          ;
CODE_0D83A1:    PHK                     ; $0D:83A1: 4B          ;
CODE_0D83A2:    PLB                     ; $0D:83A2: AB          ;
CODE_0D83A3:    LDA $4211               ; $0D:83A3: AD 11 42    ;
CODE_0D83A6:    BPL CODE_0D83D6         ; $0D:83A6: 10 2E       ;
CODE_0D83A8:    LDA $0EDE               ; $0D:83A8: AD DE 0E    ;
CODE_0D83AB:    BEQ CODE_0D83D6         ; $0D:83AB: F0 29       ;
CODE_0D83AD:    LDA $0ED1               ; $0D:83AD: AD D1 0E    ;
CODE_0D83B0:    BEQ CODE_0D83C5         ; $0D:83B0: F0 13       ;
CODE_0D83B2:    BIT $4212               ; $0D:83B2: 2C 12 42    ;
CODE_0D83B5:    BVC CODE_0D83B2         ; $0D:83B5: 50 FB       ;
CODE_0D83B7:    LDA $0EFD               ; $0D:83B7: AD FD 0E    ;
CODE_0D83BA:    STA $210F               ; $0D:83BA: 8D 0F 21    ;
CODE_0D83BD:    LDA $0EFE               ; $0D:83BD: AD FE 0E    ;
CODE_0D83C0:    STA $210F               ; $0D:83C0: 8D 0F 21    ;
CODE_0D83C3:    BRA CODE_0D83D6         ; $0D:83C3: 80 11       ;

CODE_0D83C5:    BIT $4212               ; $0D:83C5: 2C 12 42    ;
CODE_0D83C8:    BVC CODE_0D83C5         ; $0D:83C8: 50 FB       ;
CODE_0D83CA:    LDA $0EEE               ; $0D:83CA: AD EE 0E    ;
CODE_0D83CD:    STA $2111               ; $0D:83CD: 8D 11 21    ;
CODE_0D83D0:    LDA $0EEF               ; $0D:83D0: AD EF 0E    ;
CODE_0D83D3:    STA $2111               ; $0D:83D3: 8D 11 21    ;
CODE_0D83D6:    PLB                     ; $0D:83D6: AB          ;
CODE_0D83D7:    RTL                     ; $0D:83D7: 6B          ;

CODE_0D83D8:    LDA $0770               ; $0D:83D8: AD 70 07    ;
CODE_0D83DB:    ASL A                   ; $0D:83DB: 0A          ;
CODE_0D83DC:    TAX                     ; $0D:83DC: AA          ;
CODE_0D83DD:    JMP (PNTR_0D83E0,x)     ; $0D:83DD: 7C E0 83    ;

PNTR_0D83E0:        dw CODE_0D84B6
                    dw CODE_0DAB70
                    dw CODE_0D8667
                    dw CODE_0D9FC6

CODE_0D83E8:    JSR CODE_0D8421         ; $0D:83E8: 20 21 84    ;
CODE_0D83EB:    RTL                     ; $0D:83EB: 6B          ;

CODE_0D83EC:    PHD                     ; $0D:83EC: 0B          ;
CODE_0D83ED:    LDA #$0B                ; $0D:83ED: A9 0B       ;
CODE_0D83EF:    XBA                     ; $0D:83EF: EB          ;
CODE_0D83F0:    LDA #$00                ; $0D:83F0: A9 00       ;
CODE_0D83F2:    TCD                     ; $0D:83F2: 5B          ;
CODE_0D83F3:    LDA #$90                ; $0D:83F3: A9 90       ;
CODE_0D83F5:    STA $62                 ; $0D:83F5: 85 62       ;
CODE_0D83F7:    LDA #$94                ; $0D:83F7: A9 94       ;
CODE_0D83F9:    STA $63                 ; $0D:83F9: 85 63       ;
CODE_0D83FB:    LDA #$98                ; $0D:83FB: A9 98       ;
CODE_0D83FD:    STA $64                 ; $0D:83FD: 85 64       ;
CODE_0D83FF:    LDA #$9C                ; $0D:83FF: A9 9C       ;
CODE_0D8401:    STA $65                 ; $0D:8401: 85 65       ;
CODE_0D8403:    LDA #$A0                ; $0D:8403: A9 A0       ;
CODE_0D8405:    STA $66                 ; $0D:8405: 85 66       ;
CODE_0D8407:    LDA #$A4                ; $0D:8407: A9 A4       ;
CODE_0D8409:    STA $67                 ; $0D:8409: 85 67       ;
CODE_0D840B:    LDA #$A8                ; $0D:840B: A9 A8       ;
CODE_0D840D:    STA $68                 ; $0D:840D: 85 68       ;
CODE_0D840F:    LDA #$AC                ; $0D:840F: A9 AC       ;
CODE_0D8411:    STA $69                 ; $0D:8411: 85 69       ;
CODE_0D8413:    LDA #$58                ; $0D:8413: A9 58       ;
CODE_0D8415:    STA $6A                 ; $0D:8415: 85 6A       ;
CODE_0D8417:    PLD                     ; $0D:8417: 2B          ;
CODE_0D8418:    LDA $96                 ; $0D:8418: A5 96       ;
CODE_0D841A:    BNE CODE_0D845E         ; $0D:841A: D0 42       ;
CODE_0D841C:    LDA $0E67               ; $0D:841C: AD 67 0E    ;
CODE_0D841F:    BNE CODE_0D8495         ; $0D:841F: D0 74       ;
CODE_0D8421:    LDX #$00                ; $0D:8421: A2 00       ;
CODE_0D8423:    LDA #$F0                ; $0D:8423: A9 F0       ;
CODE_0D8425:    STA $0801,x             ; $0D:8425: 9D 01 08    ;
CODE_0D8428:    STA $0841,x             ; $0D:8428: 9D 41 08    ;
CODE_0D842B:    STA $0881,x             ; $0D:842B: 9D 81 08    ;
CODE_0D842E:    STA $08C1,x             ; $0D:842E: 9D C1 08    ;
CODE_0D8431:    STA $0901,x             ; $0D:8431: 9D 01 09    ;
CODE_0D8434:    STA $0941,x             ; $0D:8434: 9D 41 09    ;
CODE_0D8437:    STA $0981,x             ; $0D:8437: 9D 81 09    ;
CODE_0D843A:    STA $09C1,x             ; $0D:843A: 9D C1 09    ;
CODE_0D843D:    STZ $0C00,x             ; $0D:843D: 9E 00 0C    ;
CODE_0D8440:    STZ $0C40,x             ; $0D:8440: 9E 40 0C    ;
CODE_0D8443:    STZ $0C80,x             ; $0D:8443: 9E 80 0C    ;
CODE_0D8446:    STZ $0CC0,x             ; $0D:8446: 9E C0 0C    ;
CODE_0D8449:    STZ $0D00,x             ; $0D:8449: 9E 00 0D    ;
CODE_0D844C:    STZ $0D40,x             ; $0D:844C: 9E 40 0D    ;
CODE_0D844F:    STZ $0D80,x             ; $0D:844F: 9E 80 0D    ;
CODE_0D8452:    STZ $0DC0,x             ; $0D:8452: 9E C0 0D    ;
CODE_0D8455:    INX                     ; $0D:8455: E8          ;
CODE_0D8456:    INX                     ; $0D:8456: E8          ;
CODE_0D8457:    INX                     ; $0D:8457: E8          ;
CODE_0D8458:    INX                     ; $0D:8458: E8          ;
CODE_0D8459:    CPX #$40                ; $0D:8459: E0 40       ;
CODE_0D845B:    BNE CODE_0D8425         ; $0D:845B: D0 C8       ;
CODE_0D845D:    RTS                     ; $0D:845D: 60          ;

CODE_0D845E:    LDX #$00                ; $0D:845E: A2 00       ;
CODE_0D8460:    LDA #$F0                ; $0D:8460: A9 F0       ;
CODE_0D8462:    STA $0841,x             ; $0D:8462: 9D 41 08    ;
CODE_0D8465:    STA $0881,x             ; $0D:8465: 9D 81 08    ;
CODE_0D8468:    STA $08C1,x             ; $0D:8468: 9D C1 08    ;
CODE_0D846B:    STA $0901,x             ; $0D:846B: 9D 01 09    ;
CODE_0D846E:    STA $0941,x             ; $0D:846E: 9D 41 09    ;
CODE_0D8471:    STA $0981,x             ; $0D:8471: 9D 81 09    ;
CODE_0D8474:    STA $09C1,x             ; $0D:8474: 9D C1 09    ;
CODE_0D8477:    STZ $0C40,x             ; $0D:8477: 9E 40 0C    ;
CODE_0D847A:    STZ $0C80,x             ; $0D:847A: 9E 80 0C    ;
CODE_0D847D:    STZ $0CC0,x             ; $0D:847D: 9E C0 0C    ;
CODE_0D8480:    STZ $0D00,x             ; $0D:8480: 9E 00 0D    ;
CODE_0D8483:    STZ $0D40,x             ; $0D:8483: 9E 40 0D    ;
CODE_0D8486:    STZ $0D80,x             ; $0D:8486: 9E 80 0D    ;
CODE_0D8489:    STZ $0DC0,x             ; $0D:8489: 9E C0 0D    ;
CODE_0D848C:    INX                     ; $0D:848C: E8          ;
CODE_0D848D:    INX                     ; $0D:848D: E8          ;
CODE_0D848E:    INX                     ; $0D:848E: E8          ;
CODE_0D848F:    INX                     ; $0D:848F: E8          ;
CODE_0D8490:    CPX #$40                ; $0D:8490: E0 40       ;
CODE_0D8492:    BNE CODE_0D8462         ; $0D:8492: D0 CE       ;
CODE_0D8494:    RTS                     ; $0D:8494: 60          ;

CODE_0D8495:    LDA #$F0                ; $0D:8495: A9 F0       ;
CODE_0D8497:    STA $0851               ; $0D:8497: 8D 51 08    ;
CODE_0D849A:    STA $0855               ; $0D:849A: 8D 55 08    ;
CODE_0D849D:    STA $08B1               ; $0D:849D: 8D B1 08    ;
CODE_0D84A0:    STA $08B5               ; $0D:84A0: 8D B5 08    ;
CODE_0D84A3:    STA $08B9               ; $0D:84A3: 8D B9 08    ;
CODE_0D84A6:    STA $08BD               ; $0D:84A6: 8D BD 08    ;
CODE_0D84A9:    STA $08C1               ; $0D:84A9: 8D C1 08    ;
CODE_0D84AC:    STA $08C5               ; $0D:84AC: 8D C5 08    ;
CODE_0D84AF:    STA $08C9               ; $0D:84AF: 8D C9 08    ;
CODE_0D84B2:    STA $08CD               ; $0D:84B2: 8D CD 08    ;
CODE_0D84B5:    RTS                     ; $0D:84B5: 60          ;

CODE_0D84B6:    LDA $0772               ; $0D:84B6: AD 72 07    ;
CODE_0D84B9:    ASL A                   ; $0D:84B9: 0A          ;
CODE_0D84BA:    TAX                     ; $0D:84BA: AA          ;
CODE_0D84BB:    JSR (PNTR_0D84D5,x)     ; $0D:84BB: FC D5 84    ;
CODE_0D84BE:    LDA $701FF2             ; $0D:84BE: AF F2 1F 70 ;
CODE_0D84C2:    BEQ CODE_0D84D1         ; $0D:84C2: F0 0D       ;
CODE_0D84C4:    STZ $1600               ; $0D:84C4: 9C 00 16    ;
CODE_0D84C7:    STZ $1601               ; $0D:84C7: 9C 01 16    ;
CODE_0D84CA:    STZ $1602               ; $0D:84CA: 9C 02 16    ;
CODE_0D84CD:    STZ $1603               ; $0D:84CD: 9C 03 16    ;
CODE_0D84D0:    RTS                     ; $0D:84D0: 60          ;

CODE_0D84D1:    STZ $1602               ; $0D:84D1: 9C 02 16    ;
CODE_0D84D4:    RTS                     ; $0D:84D4: 60          ;

PNTR_0D84D5:        dw CODE_0D9D11            ;
                    dw CODE_0D89BD            ;
                    dw CODE_0D9E3F            ;
                    dw CODE_0D84DD            ;

CODE_0D84DD:    LDA $0FF4               ; $0D:84DD: AD F4 0F    ;
CODE_0D84E0:    AND #$10                ; $0D:84E0: 29 10       ;
CODE_0D84E2:    BEQ CODE_0D8558         ; $0D:84E2: F0 74       ;
CODE_0D84E4:    LDA $077A               ; $0D:84E4: AD 7A 07    ;
CODE_0D84E7:    STA $0EC2               ; $0D:84E7: 8D C2 0E    ;
CODE_0D84EA:    STA $0753               ; $0D:84EA: 8D 53 07    ;
CODE_0D84ED:    STZ $077A               ; $0D:84ED: 9C 7A 07    ;
CODE_0D84F0:    STZ $0F08               ; $0D:84F0: 9C 08 0F    ;
CODE_0D84F3:    STZ $0F09               ; $0D:84F3: 9C 09 0F    ;
CODE_0D84F6:    STZ $07FB               ; $0D:84F6: 9C FB 07    ;
CODE_0D84F9:    LDA $700008             ; $0D:84F9: AF 08 00 70 ;
CODE_0D84FD:    STA $075F               ; $0D:84FD: 8D 5F 07    ;
CODE_0D8500:    LDA $700009             ; $0D:8500: AF 09 00 70 ;
CODE_0D8504:    STA $0760               ; $0D:8504: 8D 60 07    ;
CODE_0D8507:    LDA $0E24               ; $0D:8507: AD 24 0E    ;
CODE_0D850A:    STA $075C               ; $0D:850A: 8D 5C 07    ;
CODE_0D850D:    JSL CODE_0FD051         ; $0D:850D: 22 51 D0 0F ;
CODE_0D8511:    LDA $075F               ; $0D:8511: AD 5F 07    ;
CODE_0D8514:    CMP #$09                ; $0D:8514: C9 09       ;
CODE_0D8516:    BCC CODE_0D851B         ; $0D:8516: 90 03       ;
CODE_0D8518:    INC $07FB               ; $0D:8518: EE FB 07    ;
CODE_0D851B:    LDA #$00                ; $0D:851B: A9 00       ;
CODE_0D851D:    STA $7FFB05             ; $0D:851D: 8F 05 FB 7F ;
CODE_0D8521:    JMP CODE_0D85FE         ; $0D:8521: 4C FE 85    ;

CODE_0D8524:    LDA #$00                ; $0D:8524: A9 00       ;
CODE_0D8526:    STA $701FE8             ; $0D:8526: 8F E8 1F 70 ;
CODE_0D852A:    STA $701FE9             ; $0D:852A: 8F E9 1F 70 ;
CODE_0D852E:    STA $701FEA             ; $0D:852E: 8F EA 1F 70 ;
CODE_0D8532:    STA $701FEB             ; $0D:8532: 8F EB 1F 70 ;
CODE_0D8536:    STA $701FEC             ; $0D:8536: 8F EC 1F 70 ;
CODE_0D853A:    STA $701FED             ; $0D:853A: 8F ED 1F 70 ;
CODE_0D853E:    STA $07C8               ; $0D:853E: 8D C8 07    ;
CODE_0D8541:    STA $07C9               ; $0D:8541: 8D C9 07    ;
CODE_0D8544:    STA $07CA               ; $0D:8544: 8D CA 07    ;
CODE_0D8547:    STA $07CB               ; $0D:8547: 8D CB 07    ;
CODE_0D854A:    STA $07CC               ; $0D:854A: 8D CC 07    ;
CODE_0D854D:    STA $07CD               ; $0D:854D: 8D CD 07    ;
CODE_0D8550:    LDA #$08                ; $0D:8550: A9 08       ;
CODE_0D8552:    STA $1600               ; $0D:8552: 8D 00 16    ;
CODE_0D8555:    JMP CODE_0D85EC         ; $0D:8555: 4C EC 85    ;

CODE_0D8558:    JSL CODE_0FFB49         ; $0D:8558: 22 49 FB 0F ;
CODE_0D855C:    LDA $701FF2             ; $0D:855C: AF F2 1F 70 ;
CODE_0D8560:    BNE CODE_0D8582         ; $0D:8560: D0 20       ;
CODE_0D8562:    LDA $0FF8               ; $0D:8562: AD F8 0F    ;
CODE_0D8565:    CMP #$B0                ; $0D:8565: C9 B0       ;
CODE_0D8567:    BNE CODE_0D8570         ; $0D:8567: D0 07       ;
CODE_0D8569:    LDA $0FF4               ; $0D:8569: AD F4 0F    ;
CODE_0D856C:    CMP #$80                ; $0D:856C: C9 80       ;
CODE_0D856E:    BEQ CODE_0D8524         ; $0D:856E: F0 B4       ;
CODE_0D8570:    LDA $7FFB05             ; $0D:8570: AF 05 FB 7F ;
CODE_0D8574:    BMI CODE_0D857B         ; $0D:8574: 30 05       ;
CODE_0D8576:    LDA #$40                ; $0D:8576: A9 40       ;
CODE_0D8578:    STA $07B2               ; $0D:8578: 8D B2 07    ;
CODE_0D857B:    LDA $0FF6               ; $0D:857B: AD F6 0F    ;
CODE_0D857E:    AND #$2C                ; $0D:857E: 29 2C       ;
CODE_0D8580:    BNE CODE_0D858F         ; $0D:8580: D0 0D       ;
CODE_0D8582:    LDX $07B2               ; $0D:8582: AE B2 07    ;
CODE_0D8585:    BNE CODE_0D85CF         ; $0D:8585: D0 48       ;
CODE_0D8587:    JSL CODE_0FF70F         ; $0D:8587: 22 0F F7 0F ;
CODE_0D858B:    BCC CODE_0D85D2         ; $0D:858B: 90 45       ;
CODE_0D858D:    BCS CODE_0D85EC         ; $0D:858D: B0 5D       ;
CODE_0D858F:    LDA $07B2               ; $0D:858F: AD B2 07    ;
CODE_0D8592:    BEQ CODE_0D85EC         ; $0D:8592: F0 58       ;
CODE_0D8594:    LDA #$18                ; $0D:8594: A9 18       ;
CODE_0D8596:    STA $07B2               ; $0D:8596: 8D B2 07    ;
CODE_0D8599:    LDA $0009               ; $0D:8599: AD 09 00    ;
CODE_0D859C:    AND #$FE                ; $0D:859C: 29 FE       ;
CODE_0D859E:    STA $0009               ; $0D:859E: 8D 09 00    ;
CODE_0D85A1:    LDA $701FF2             ; $0D:85A1: AF F2 1F 70 ;
CODE_0D85A5:    BNE CODE_0D85CF         ; $0D:85A5: D0 28       ;
CODE_0D85A7:    LDA $0FF6               ; $0D:85A7: AD F6 0F    ;
CODE_0D85AA:    BIT #$20                ; $0D:85AA: 89 20       ;
CODE_0D85AC:    BEQ CODE_0D85B5         ; $0D:85AC: F0 07       ;
CODE_0D85AE:    LDA $077A               ; $0D:85AE: AD 7A 07    ;
CODE_0D85B1:    EOR #$01                ; $0D:85B1: 49 01       ;
CODE_0D85B3:    BRA CODE_0D85C3         ; $0D:85B3: 80 0E       ;

CODE_0D85B5:    AND #$0C                ; $0D:85B5: 29 0C       ;
CODE_0D85B7:    BEQ CODE_0D85CB         ; $0D:85B7: F0 12       ;
CODE_0D85B9:    EOR #$08                ; $0D:85B9: 49 08       ;
CODE_0D85BB:    LSR A                   ; $0D:85BB: 4A          ;
CODE_0D85BC:    LSR A                   ; $0D:85BC: 4A          ;
CODE_0D85BD:    LSR A                   ; $0D:85BD: 4A          ;
CODE_0D85BE:    CMP $077A               ; $0D:85BE: CD 7A 07    ;
CODE_0D85C1:    BEQ CODE_0D85CB         ; $0D:85C1: F0 08       ;
CODE_0D85C3:    STA $077A               ; $0D:85C3: 8D 7A 07    ;
CODE_0D85C6:    LDA #$01                ; $0D:85C6: A9 01       ;
CODE_0D85C8:    STA $1603               ; $0D:85C8: 8D 03 16    ;
CODE_0D85CB:    JSL CODE_0FF317         ; $0D:85CB: 22 17 F3 0F ;
CODE_0D85CF:    STZ $0FF4               ; $0D:85CF: 9C F4 0F    ;
CODE_0D85D2:    LDA $1603               ; $0D:85D2: AD 03 16    ;
CODE_0D85D5:    PHA                     ; $0D:85D5: 48          ;
CODE_0D85D6:    JSR CODE_0DAB80         ; $0D:85D6: 20 80 AB    ;
CODE_0D85D9:    STZ $1600               ; $0D:85D9: 9C 00 16    ;
CODE_0D85DC:    STZ $1601               ; $0D:85DC: 9C 01 16    ;
CODE_0D85DF:    PLA                     ; $0D:85DF: 68          ;
CODE_0D85E0:    STA $1603               ; $0D:85E0: 8D 03 16    ;
CODE_0D85E3:    LDA $0F                 ; $0D:85E3: A5 0F       ;
CODE_0D85E5:    CMP #$06                ; $0D:85E5: C9 06       ;
CODE_0D85E7:    BNE CODE_0D8656         ; $0D:85E7: D0 6D       ;
CODE_0D85E9:    STZ $0EC8               ; $0D:85E9: 9C C8 0E    ;
CODE_0D85EC:    STZ $0770               ; $0D:85EC: 9C 70 07    ;
CODE_0D85EF:    STZ $0772               ; $0D:85EF: 9C 72 07    ;
CODE_0D85F2:    STZ $0722               ; $0D:85F2: 9C 22 07    ;
CODE_0D85F5:    LDA #$01                ; $0D:85F5: A9 01       ;
CODE_0D85F7:    STA $0E7F               ; $0D:85F7: 8D 7F 0E    ;
CODE_0D85FA:    INC $0774               ; $0D:85FA: EE 74 07    ;
CODE_0D85FD:    RTS                     ; $0D:85FD: 60          ;

CODE_0D85FE:    LDY $07B2               ; $0D:85FE: AC B2 07    ;
CODE_0D8601:    BEQ CODE_0D85EC         ; $0D:8601: F0 E9       ;
CODE_0D8603:    ASL A                   ; $0D:8603: 0A          ;
CODE_0D8604:    BCC CODE_0D860B         ; $0D:8604: 90 05       ;
CODE_0D8606:    LDA #$09                ; $0D:8606: A9 09       ;
CODE_0D8608:    JSR CODE_0D8663         ; $0D:8608: 20 63 86    ;
CODE_0D860B:    LDA #$29                ; $0D:860B: A9 29       ;
CODE_0D860D:    STA $1603               ; $0D:860D: 8D 03 16    ;
CODE_0D8610:    LDA #$01                ; $0D:8610: A9 01       ;
CODE_0D8612:    STA $0E67               ; $0D:8612: 8D 67 0E    ;
CODE_0D8615:    STA $0BA5               ; $0D:8615: 8D A5 0B    ;
CODE_0D8618:    JSR CODE_0DF700         ; $0D:8618: 20 00 F7    ;
CODE_0D861B:    JSL CODE_0EC34C         ; $0D:861B: 22 4C C3 0E ;
CODE_0D861F:    INC $075D               ; $0D:861F: EE 5D 07    ;
CODE_0D8622:    INC $0764               ; $0D:8622: EE 64 07    ;
CODE_0D8625:    INC $0757               ; $0D:8625: EE 57 07    ;
CODE_0D8628:    INC $0770               ; $0D:8628: EE 70 07    ;
CODE_0D862B:    LDA $07FB               ; $0D:862B: AD FB 07    ;
CODE_0D862E:    STA $076A               ; $0D:862E: 8D 6A 07    ;
CODE_0D8631:    STZ $0772               ; $0D:8631: 9C 72 07    ;
CODE_0D8634:    STZ $07B2               ; $0D:8634: 9C B2 07    ;
CODE_0D8637:    LDX #$0B                ; $0D:8637: A2 0B       ;
CODE_0D8639:    STZ $07DA,x             ; $0D:8639: 9E DA 07    ;
CODE_0D863C:    DEX                     ; $0D:863C: CA          ;
CODE_0D863D:    BPL CODE_0D8639         ; $0D:863D: 10 FA       ;
CODE_0D863F:    PHX                     ; $0D:863F: DA          ;
CODE_0D8640:    STZ $E4                 ; $0D:8640: 64 E4       ;
CODE_0D8642:    LDA $075E               ; $0D:8642: AD 5E 07    ;
CODE_0D8645:    JSR CODE_0D8657         ; $0D:8645: 20 57 86    ;
CODE_0D8648:    STA $07DF               ; $0D:8648: 8D DF 07    ;
CODE_0D864B:    LDA $E4                 ; $0D:864B: A5 E4       ;
CODE_0D864D:    STA $07DE               ; $0D:864D: 8D DE 07    ;
CODE_0D8650:    LDA #$01                ; $0D:8650: A9 01       ;
CODE_0D8652:    STA $0E1A               ; $0D:8652: 8D 1A 0E    ;
CODE_0D8655:    PLX                     ; $0D:8655: FA          ;
CODE_0D8656:    RTS                     ; $0D:8656: 60          ;

CODE_0D8657:    CMP #$0A                ; $0D:8657: C9 0A       ;
CODE_0D8659:    BCC CODE_0D8662         ; $0D:8659: 90 07       ;
CODE_0D865B:    INC $E4                 ; $0D:865B: E6 E4       ;
CODE_0D865D:    SEC                     ; $0D:865D: 38          ;
CODE_0D865E:    SBC #$0A                ; $0D:865E: E9 0A       ;
CODE_0D8660:    BRA CODE_0D8657         ; $0D:8660: 80 F5       ;

CODE_0D8662:    RTS                     ; $0D:8662: 60          ;

CODE_0D8663:    STA $075F               ; $0D:8663: 8D 5F 07    ;
CODE_0D8666:    RTS                     ; $0D:8666: 60          ;

CODE_0D8667:    JSR CODE_0D867C         ; $0D:8667: 20 7C 86    ;
CODE_0D866A:    LDA $0772               ; $0D:866A: AD 72 07    ;
CODE_0D866D:    BEQ CODE_0D8676         ; $0D:866D: F0 07       ;
CODE_0D866F:    LDX #$00                ; $0D:866F: A2 00       ;
CODE_0D8671:    STX $9E                 ; $0D:8671: 86 9E       ;
CODE_0D8673:    JSR CODE_0DC250         ; $0D:8673: 20 50 C2    ;
CODE_0D8676:    JSR CODE_0DFD29         ; $0D:8676: 20 29 FD    ;
CODE_0D8679:    JMP CODE_0DF700         ; $0D:8679: 4C 00 F7    ;

CODE_0D867C:    LDA $0EC4               ; $0D:867C: AD C4 0E    ;
CODE_0D867F:    BNE CODE_0D8695         ; $0D:867F: D0 14       ;
CODE_0D8681:    LDA $0772               ; $0D:8681: AD 72 07    ;
CODE_0D8684:    JSR CODE_0D9693         ; $0D:8684: 20 93 96    ;Some sort of executeptr routine

PNTR_0D8687:        dw CODE_0DD3BA
                    dw CODE_0D8773
                    dw CODE_0D878B
                    dw CODE_0D87FA
                    dw CODE_0D8810
                    dw CODE_0D8734
                    dw CODE_0D8857

CODE_0D8695:    LDA $0772               ; $0D:8695: AD 72 07    ;
CODE_0D8698:    JSR CODE_0D9693         ; $0D:8698: 20 93 96    ;Same case as above

PNTR_0D869B:        dw CODE_0DD3BA
                    dw CODE_0D876D
                    dw CODE_0D878B
                    dw CODE_0D86B9
                    dw CODE_0D86CD
                    dw CODE_0D8734
                    dw CODE_0D86F6
                    dw CODE_0D86FD
                    dw CODE_0D870C
                    dw CODE_0D871D
                    dw CODE_0D8722
                    dw CODE_0D8726
                    dw CODE_0D8857
                    dw CODE_0D872A
                    dw CODE_0D872F

CODE_0D86B9:    LDA $0754               ; $0D:86B9: AD 54 07    ;
CODE_0D86BC:    BEQ CODE_0D86C6         ; $0D:86BC: F0 08       ;
CODE_0D86BE:    JSL CODE_00C62D         ; $0D:86BE: 22 2D C6 00 ;
CODE_0D86C2:    INC $0772               ; $0D:86C2: EE 72 07    ;
CODE_0D86C5:    RTS                     ; $0D:86C5: 60          ;

CODE_0D86C6:    INC $0772               ; $0D:86C6: EE 72 07    ;
CODE_0D86C9:    INC $0772               ; $0D:86C9: EE 72 07    ;
CODE_0D86CC:    RTS                     ; $0D:86CC: 60          ;

CODE_0D86CD:    STZ $0FF4               ; $0D:86CD: 9C F4 0F    ;
CODE_0D86D0:    STZ $0FF6               ; $0D:86D0: 9C F6 0F    ;
CODE_0D86D3:    STZ $0FF5               ; $0D:86D3: 9C F5 0F    ;
CODE_0D86D6:    STZ $0FF7               ; $0D:86D6: 9C F7 0F    ;
CODE_0D86D9:    STZ $0FF8               ; $0D:86D9: 9C F8 0F    ;
CODE_0D86DC:    STZ $0FF9               ; $0D:86DC: 9C F9 0F    ;
CODE_0D86DF:    STZ $0FFA               ; $0D:86DF: 9C FA 0F    ;
CODE_0D86E2:    STZ $0FFB               ; $0D:86E2: 9C FB 0F    ;
CODE_0D86E5:    LDA #$02                ; $0D:86E5: A9 02       ;
CODE_0D86E7:    STA $078F               ; $0D:86E7: 8D 8F 07    ;
CODE_0D86EA:    JSR CODE_0DAB99         ; $0D:86EA: 20 99 AB    ;
CODE_0D86ED:    LDA $0754               ; $0D:86ED: AD 54 07    ;
CODE_0D86F0:    BNE CODE_0D86F5         ; $0D:86F0: D0 03       ;
CODE_0D86F2:    INC $0772               ; $0D:86F2: EE 72 07    ;
CODE_0D86F5:    RTS                     ; $0D:86F5: 60          ;

CODE_0D86F6:    INC $0772               ; $0D:86F6: EE 72 07    ;
CODE_0D86F9:    INC $0F87               ; $0D:86F9: EE 87 0F    ;
CODE_0D86FC:    RTS                     ; $0D:86FC: 60          ;

CODE_0D86FD:    JSL CODE_00C45F         ; $0D:86FD: 22 5F C4 00 ;
CODE_0D8701:    LDA $0F87               ; $0D:8701: AD 87 0F    ;
CODE_0D8704:    CMP #$06                ; $0D:8704: C9 06       ;
CODE_0D8706:    BCC CODE_0D870B         ; $0D:8706: 90 03       ;
CODE_0D8708:    INC $0772               ; $0D:8708: EE 72 07    ;
CODE_0D870B:    RTS                     ; $0D:870B: 60          ;

CODE_0D870C:    LDA #$10                ; $0D:870C: A9 10       ;
CODE_0D870E:    STA $1602               ; $0D:870E: 8D 02 16    ;
CODE_0D8711:    JSL CODE_00C060         ; $0D:8711: 22 60 C0 00 ;
CODE_0D8715:    JSL CODE_0FD9F9         ; $0D:8715: 22 F9 D9 0F ;
CODE_0D8719:    INC $0772               ; $0D:8719: EE 72 07    ;
CODE_0D871C:    RTS                     ; $0D:871C: 60          ;

CODE_0D871D:    JSL CODE_00C68B         ; $0D:871D: 22 8B C6 00 ;
CODE_0D8721:    RTS                     ; $0D:8721: 60          ;

CODE_0D8722:    INC $0772               ; $0D:8722: EE 72 07    ;
CODE_0D8725:    RTS                     ; $0D:8725: 60          ;

CODE_0D8726:    INC $0772               ; $0D:8726: EE 72 07    ;
CODE_0D8729:    RTS                     ; $0D:8729: 60          ;

CODE_0D872A:    JSL CODE_0E819D         ; $0D:872A: 22 9D 81 0E ;
CODE_0D872E:    RTS                     ; $0D:872E: 60          ;

CODE_0D872F:    JSL CODE_0E81E3         ; $0D:872F: 22 E3 81 0E ;
CODE_0D8733:    RTS                     ; $0D:8733: 60          ;

CODE_0D8734:    LDA $07B1               ; $0D:8734: AD B1 07    ;
CODE_0D8737:    CMP #$06                ; $0D:8737: C9 06       ;
CODE_0D8739:    BCS CODE_0D876C         ; $0D:8739: B0 31       ;
CODE_0D873B:    LDA $2143               ; $0D:873B: AD 43 21    ;
CODE_0D873E:    AND #$7F                ; $0D:873E: 29 7F       ;
CODE_0D8740:    CMP #$4B                ; $0D:8740: C9 4B       ;
CODE_0D8742:    BEQ CODE_0D8749         ; $0D:8742: F0 05       ;
CODE_0D8744:    LDA #$4B                ; $0D:8744: A9 4B       ;
CODE_0D8746:    STA $1603               ; $0D:8746: 8D 03 16    ;
CODE_0D8749:    JSR CODE_0DD6FF         ; $0D:8749: 20 FF D6    ;
CODE_0D874C:    LDA $07E9               ; $0D:874C: AD E9 07    ;
CODE_0D874F:    ORA $07EA               ; $0D:874F: 0D EA 07    ;
CODE_0D8752:    ORA $07EB               ; $0D:8752: 0D EB 07    ;
CODE_0D8755:    BNE CODE_0D876C         ; $0D:8755: D0 15       ;
CODE_0D8757:    LDA #$4C                ; $0D:8757: A9 4C       ;
CODE_0D8759:    STA $1603               ; $0D:8759: 8D 03 16    ;
CODE_0D875C:    STA $0E1A               ; $0D:875C: 8D 1A 0E    ;
CODE_0D875F:    LDA #$30                ; $0D:875F: A9 30       ;
CODE_0D8761:    STA $0788               ; $0D:8761: 8D 88 07    ;
CODE_0D8764:    LDA #$06                ; $0D:8764: A9 06       ;
CODE_0D8766:    STA $07B1               ; $0D:8766: 8D B1 07    ;
CODE_0D8769:    INC $0772               ; $0D:8769: EE 72 07    ;
CODE_0D876C:    RTS                     ; $0D:876C: 60          ;

CODE_0D876D:    JSL CODE_00C654         ; $0D:876D: 22 54 C6 00 ;
CODE_0D8771:    BRA CODE_0D877C         ; $0D:8771: 80 09       ;

CODE_0D8773:    LDA $0B76               ; $0D:8773: AD 76 0B    ;
CODE_0D8776:    BEQ CODE_0D8786         ; $0D:8776: F0 0E       ;
CODE_0D8778:    JSL CODE_00D507         ; $0D:8778: 22 07 D5 00 ;
CODE_0D877C:    LDX $071B               ; $0D:877C: AE 1B 07    ;
CODE_0D877F:    INX                     ; $0D:877F: E8          ;
CODE_0D8780:    STX $0203               ; $0D:8780: 8E 03 02    ;
CODE_0D8783:    JMP CODE_0D8BD0         ; $0D:8783: 4C D0 8B    ;

CODE_0D8786:    JSL CODE_00D4CA         ; $0D:8786: 22 CA D4 00 ;
CODE_0D878A:    RTS                     ; $0D:878A: 60          ;

CODE_0D878B:    LDA $96                 ; $0D:878B: A5 96       ;
CODE_0D878D:    BEQ CODE_0D8790         ; $0D:878D: F0 01       ;
CODE_0D878F:    RTS                     ; $0D:878F: 60          ;

CODE_0D8790:    LDA $0F82               ; $0D:8790: AD 82 0F    ;
CODE_0D8793:    BEQ CODE_0D8799         ; $0D:8793: F0 04       ;
CODE_0D8795:    JSL CODE_00C555         ; $0D:8795: 22 55 C5 00 ;
CODE_0D8799:    LDY #$00                ; $0D:8799: A0 00       ;
CODE_0D879B:    STY $0204               ; $0D:879B: 8C 04 02    ;
CODE_0D879E:    LDA $78                 ; $0D:879E: A5 78       ;
CODE_0D87A0:    CMP $0203               ; $0D:87A0: CD 03 02    ;
CODE_0D87A3:    BNE CODE_0D87CD         ; $0D:87A3: D0 28       ;
CODE_0D87A5:    LDA $075F               ; $0D:87A5: AD 5F 07    ;
CODE_0D87A8:    CMP #$07                ; $0D:87A8: C9 07       ;
CODE_0D87AA:    BEQ CODE_0D87B0         ; $0D:87AA: F0 04       ;
CODE_0D87AC:    CMP #$0C                ; $0D:87AC: C9 0C       ;
CODE_0D87AE:    BNE CODE_0D87B9         ; $0D:87AE: D0 09       ;
CODE_0D87B0:    INC $0204               ; $0D:87B0: EE 04 02    ;
CODE_0D87B3:    JSL CODE_00C3DA         ; $0D:87B3: 22 DA C3 00 ;
CODE_0D87B7:    BRA CODE_0D87D1         ; $0D:87B7: 80 18       ;

CODE_0D87B9:    CMP #$02                ; $0D:87B9: C9 02       ;
CODE_0D87BB:    BNE CODE_0D87C6         ; $0D:87BB: D0 09       ;
CODE_0D87BD:    LDA $0219               ; $0D:87BD: AD 19 02    ;
CODE_0D87C0:    CMP #$44                ; $0D:87C0: C9 44       ;
CODE_0D87C2:    BCS CODE_0D87D1         ; $0D:87C2: B0 0D       ;
CODE_0D87C4:    BRA CODE_0D87CD         ; $0D:87C4: 80 07       ;

CODE_0D87C6:    LDA $0219               ; $0D:87C6: AD 19 02    ;
CODE_0D87C9:    CMP #$54                ; $0D:87C9: C9 54       ;
CODE_0D87CB:    BCS CODE_0D87D1         ; $0D:87CB: B0 04       ;
CODE_0D87CD:    INC $0204               ; $0D:87CD: EE 04 02    ;
CODE_0D87D0:    INY                     ; $0D:87D0: C8          ;
CODE_0D87D1:    TYA                     ; $0D:87D1: 98          ;
CODE_0D87D2:    JSR CODE_0DAE12         ; $0D:87D2: 20 12 AE    ;
CODE_0D87D5:    LDA $071A               ; $0D:87D5: AD 1A 07    ;
CODE_0D87D8:    CMP $0203               ; $0D:87D8: CD 03 02    ;
CODE_0D87DB:    BEQ CODE_0D87F4         ; $0D:87DB: F0 17       ;
CODE_0D87DD:    LDA $0768               ; $0D:87DD: AD 68 07    ;
CODE_0D87E0:    CLC                     ; $0D:87E0: 18          ;
CODE_0D87E1:    ADC #$80                ; $0D:87E1: 69 80       ;
CODE_0D87E3:    STA $0768               ; $0D:87E3: 8D 68 07    ;
CODE_0D87E6:    LDA #$01                ; $0D:87E6: A9 01       ;
CODE_0D87E8:    ADC #$00                ; $0D:87E8: 69 00       ;
CODE_0D87EA:    TAY                     ; $0D:87EA: A8          ;
CODE_0D87EB:    JSR CODE_0DACAA         ; $0D:87EB: 20 AA AC    ;
CODE_0D87EE:    JSR CODE_0DAC52         ; $0D:87EE: 20 52 AC    ;
CODE_0D87F1:    INC $0204               ; $0D:87F1: EE 04 02    ;
CODE_0D87F4:    LDA $0204               ; $0D:87F4: AD 04 02    ;
CODE_0D87F7:    BEQ CODE_0D8853         ; $0D:87F7: F0 5A       ;
CODE_0D87F9:    RTS                     ; $0D:87F9: 60          ;

CODE_0D87FA:    INC $0F7F               ; $0D:87FA: EE 7F 0F    ;
CODE_0D87FD:    LDA $0F7F               ; $0D:87FD: AD 7F 0F    ;
CODE_0D8800:    CMP #$70                ; $0D:8800: C9 70       ;
CODE_0D8802:    BNE CODE_0D880F         ; $0D:8802: D0 0B       ;
CODE_0D8804:    LDA #$01                ; $0D:8804: A9 01       ;
CODE_0D8806:    STA $0F7E               ; $0D:8806: 8D 7E 0F    ;
CODE_0D8809:    STZ $0F7F               ; $0D:8809: 9C 7F 0F    ;
CODE_0D880C:    INC $0772               ; $0D:880C: EE 72 07    ;
CODE_0D880F:    RTS                     ; $0D:880F: 60          ;

CODE_0D8810:    LDA $0749               ; $0D:8810: AD 49 07    ;
CODE_0D8813:    BNE CODE_0D8834         ; $0D:8813: D0 1F       ;
CODE_0D8815:    LDA $0719               ; $0D:8815: AD 19 07    ;
CODE_0D8818:    BEQ CODE_0D8822         ; $0D:8818: F0 08       ;
CODE_0D881A:    CMP #$08                ; $0D:881A: C9 08       ;
CODE_0D881C:    BCS CODE_0D8834         ; $0D:881C: B0 16       ;
CODE_0D881E:    CMP #$01                ; $0D:881E: C9 01       ;
CODE_0D8820:    BCC CODE_0D8834         ; $0D:8820: 90 12       ;
CODE_0D8822:    TAY                     ; $0D:8822: A8          ;
CODE_0D8823:    BEQ CODE_0D882D         ; $0D:8823: F0 08       ;
CODE_0D8825:    CPY #$03                ; $0D:8825: C0 03       ;
CODE_0D8827:    BCS CODE_0D8847         ; $0D:8827: B0 1E       ;
CODE_0D8829:    CPY #$02                ; $0D:8829: C0 02       ;
CODE_0D882B:    BCS CODE_0D8834         ; $0D:882B: B0 07       ;
CODE_0D882D:    TYA                     ; $0D:882D: 98          ;
CODE_0D882E:    CLC                     ; $0D:882E: 18          ;
CODE_0D882F:    ADC #$0C                ; $0D:882F: 69 0C       ;
CODE_0D8831:    STA $0773               ; $0D:8831: 8D 73 07    ;
CODE_0D8834:    LDA $0749               ; $0D:8834: AD 49 07    ;
CODE_0D8837:    CLC                     ; $0D:8837: 18          ;
CODE_0D8838:    ADC #$04                ; $0D:8838: 69 04       ;
CODE_0D883A:    STA $0749               ; $0D:883A: 8D 49 07    ;
CODE_0D883D:    LDA $0719               ; $0D:883D: AD 19 07    ;
CODE_0D8840:    ADC #$00                ; $0D:8840: 69 00       ;
CODE_0D8842:    STA $0719               ; $0D:8842: 8D 19 07    ;
CODE_0D8845:    CMP #$06                ; $0D:8845: C9 06       ;
CODE_0D8847:    BCC CODE_0D8856         ; $0D:8847: 90 0D       ;
CODE_0D8849:    LDA #$06                ; $0D:8849: A9 06       ;
CODE_0D884B:    LDA #$08                ; $0D:884B: A9 08       ;
CODE_0D884D:    STA $07B1               ; $0D:884D: 8D B1 07    ;
CODE_0D8850:    STA $0E67               ; $0D:8850: 8D 67 0E    ;
CODE_0D8853:    INC $0772               ; $0D:8853: EE 72 07    ;
CODE_0D8856:    RTS                     ; $0D:8856: 60          ;

CODE_0D8857:    LDA $07B1               ; $0D:8857: AD B1 07    ;
CODE_0D885A:    BNE CODE_0D8898         ; $0D:885A: D0 3C       ;
CODE_0D885C:    STZ $0760               ; $0D:885C: 9C 60 07    ;
CODE_0D885F:    STZ $075C               ; $0D:885F: 9C 5C 07    ;
CODE_0D8862:    STZ $0772               ; $0D:8862: 9C 72 07    ;
CODE_0D8865:    LDA $1680               ; $0D:8865: AD 80 16    ;
CODE_0D8868:    CMP #$90                ; $0D:8868: C9 90       ;
CODE_0D886A:    BEQ CODE_0D888C         ; $0D:886A: F0 20       ;
CODE_0D886C:    LDA $075F               ; $0D:886C: AD 5F 07    ;
CODE_0D886F:    CLC                     ; $0D:886F: 18          ;
CODE_0D8870:    ADC #$01                ; $0D:8870: 69 01       ;
CODE_0D8872:    CMP #$0C                ; $0D:8872: C9 0C       ;
CODE_0D8874:    BCC CODE_0D8878         ; $0D:8874: 90 02       ;
CODE_0D8876:    LDA #$0C                ; $0D:8876: A9 0C       ;
CODE_0D8878:    CMP #$08                ; $0D:8878: C9 08       ;
CODE_0D887A:    BNE CODE_0D8889         ; $0D:887A: D0 0D       ;
CODE_0D887C:    LDA $0F2B               ; $0D:887C: AD 2B 0F    ;
CODE_0D887F:    BEQ CODE_0D8889         ; $0D:887F: F0 08       ;
CODE_0D8881:    LDA #$01                ; $0D:8881: A9 01       ;
CODE_0D8883:    STA $07FB               ; $0D:8883: 8D FB 07    ;
CODE_0D8886:    INC $075F               ; $0D:8886: EE 5F 07    ;
CODE_0D8889:    INC $075F               ; $0D:8889: EE 5F 07    ;
CODE_0D888C:    JSL CODE_0EC34C         ; $0D:888C: 22 4C C3 0E ;
CODE_0D8890:    INC $0757               ; $0D:8890: EE 57 07    ;
CODE_0D8893:    LDA #$01                ; $0D:8893: A9 01       ;
CODE_0D8895:    STA $0770               ; $0D:8895: 8D 70 07    ;
CODE_0D8898:    RTS                     ; $0D:8898: 60          ;

CODE_0D8899:    LDA $0FF4               ; $0D:8899: AD F4 0F    ;
CODE_0D889C:    ORA $0FF5               ; $0D:889C: 0D F5 0F    ;
CODE_0D889F:    AND #$40                ; $0D:889F: 29 40       ;
CODE_0D88A1:    BEQ CODE_0D88B0         ; $0D:88A1: F0 0D       ;
CODE_0D88A3:    LDA #$01                ; $0D:88A3: A9 01       ;
CODE_0D88A5:    STA $07FB               ; $0D:88A5: 8D FB 07    ;
CODE_0D88A8:    LDA #$FF                ; $0D:88A8: A9 FF       ;
CODE_0D88AA:    STA $075A               ; $0D:88AA: 8D 5A 07    ;
CODE_0D88AD:    JSR CODE_0D9FF4         ; $0D:88AD: 20 F4 9F    ;
CODE_0D88B0:    RTS                     ; $0D:88B0: 60          ;

DATA_0D88B1:        db $FF,$FF,$F6,$FB,$F7,$FB,$F8,$FB ;
                    db $F9,$FB,$FA,$FB,$F6,$0E,$F7,$0E ;
                    db $F8,$0E,$F9,$0E,$FA,$0E,$FD,$FE ;

DATA_0D88C9:        db $FF,$41,$42,$44,$45,$48,$31,$32 ;
                    db $34,$35,$38,$00 ;

CODE_0D88D5:    LDA $0110,x             ; $0D:88D5: BD 10 01    ;
CODE_0D88D8:    BEQ CODE_0D8898         ; $0D:88D8: F0 BE       ;
CODE_0D88DA:    CMP #$0B                ; $0D:88DA: C9 0B       ;
CODE_0D88DC:    BCC CODE_0D88EA         ; $0D:88DC: 90 0C       ;
CODE_0D88DE:    LDA #$0B                ; $0D:88DE: A9 0B       ;
CODE_0D88E0:    STA $0110,x             ; $0D:88E0: 9D 10 01    ;
CODE_0D88E3:    CPX #$09                ; $0D:88E3: E0 09       ;
CODE_0D88E5:    BEQ CODE_0D88EA         ; $0D:88E5: F0 03       ;
CODE_0D88E7:    STA $0284               ; $0D:88E7: 8D 84 02    ;
CODE_0D88EA:    TAY                     ; $0D:88EA: A8          ;
CODE_0D88EB:    LDA $0138,x             ; $0D:88EB: BD 38 01    ;
CODE_0D88EE:    BNE CODE_0D88F4         ; $0D:88EE: D0 04       ;
CODE_0D88F0:    STA $0110,x             ; $0D:88F0: 9D 10 01    ;
CODE_0D88F3:    RTS                     ; $0D:88F3: 60          ;

CODE_0D88F4:    DEC $0138,x             ; $0D:88F4: DE 38 01    ;
CODE_0D88F7:    CMP #$2B                ; $0D:88F7: C9 2B       ;
CODE_0D88F9:    BNE CODE_0D891B         ; $0D:88F9: D0 20       ;
CODE_0D88FB:    CPY #$0B                ; $0D:88FB: C0 0B       ;
CODE_0D88FD:    BNE CODE_0D8908         ; $0D:88FD: D0 09       ;
CODE_0D88FF:    JSL CODE_048596         ; $0D:88FF: 22 96 85 04 ;Increase lives by one
CODE_0D8903:    LDA #$05                ; $0D:8903: A9 05       ;
CODE_0D8905:    STA $1603               ; $0D:8905: 8D 03 16    ;
CODE_0D8908:    LDA DATA_0D88C9,y       ; $0D:8908: B9 C9 88    ;
CODE_0D890B:    LSR A                   ; $0D:890B: 4A          ;
CODE_0D890C:    LSR A                   ; $0D:890C: 4A          ;
CODE_0D890D:    LSR A                   ; $0D:890D: 4A          ;
CODE_0D890E:    LSR A                   ; $0D:890E: 4A          ;
CODE_0D890F:    TAX                     ; $0D:890F: AA          ;
CODE_0D8910:    LDA DATA_0D88C9,y       ; $0D:8910: B9 C9 88    ;
CODE_0D8913:    AND #$0F                ; $0D:8913: 29 0F       ;
CODE_0D8915:    STA $0145,x             ; $0D:8915: 9D 45 01    ;
CODE_0D8918:    JSR CODE_0DBB27         ; $0D:8918: 20 27 BB    ;
CODE_0D891B:    LDX $9E                 ; $0D:891B: A6 9E       ;
CODE_0D891D:    LDY $0B58               ; $0D:891D: AC 58 0B    ;
CODE_0D8920:    LDA $0801,y             ; $0D:8920: B9 01 08    ;
CODE_0D8923:    CMP #$F0                ; $0D:8923: C9 F0       ;
CODE_0D8925:    BEQ CODE_0D8936         ; $0D:8925: F0 0F       ;
CODE_0D8927:    INY                     ; $0D:8927: C8          ;
CODE_0D8928:    INY                     ; $0D:8928: C8          ;
CODE_0D8929:    INY                     ; $0D:8929: C8          ;
CODE_0D892A:    INY                     ; $0D:892A: C8          ;
CODE_0D892B:    INY                     ; $0D:892B: C8          ;
CODE_0D892C:    INY                     ; $0D:892C: C8          ;
CODE_0D892D:    INY                     ; $0D:892D: C8          ;
CODE_0D892E:    INY                     ; $0D:892E: C8          ;
CODE_0D892F:    CPY #$90                ; $0D:892F: C0 90       ;
CODE_0D8931:    BNE CODE_0D8920         ; $0D:8931: D0 ED       ;
CODE_0D8933:    LDY $0B58               ; $0D:8933: AC 58 0B    ;
CODE_0D8936:    LDA $0124,x             ; $0D:8936: BD 24 01    ;
CODE_0D8939:    CMP #$18                ; $0D:8939: C9 18       ;
CODE_0D893B:    BCC CODE_0D8942         ; $0D:893B: 90 05       ;
CODE_0D893D:    SBC #$01                ; $0D:893D: E9 01       ;
CODE_0D893F:    STA $0124,x             ; $0D:893F: 9D 24 01    ;
CODE_0D8942:    LDA $0124,x             ; $0D:8942: BD 24 01    ;
CODE_0D8945:    JSR CODE_0DEB8A         ; $0D:8945: 20 8A EB    ;
CODE_0D8948:    STX $E0                 ; $0D:8948: 86 E0       ;
CODE_0D894A:    TXA                     ; $0D:894A: 8A          ;
CODE_0D894B:    ASL A                   ; $0D:894B: 0A          ;
CODE_0D894C:    TAX                     ; $0D:894C: AA          ;
CODE_0D894D:    REP #$20                ; $0D:894D: C2 20       ;
CODE_0D894F:    LDA $0E50,x             ; $0D:894F: BD 50 0E    ;
CODE_0D8952:    STA $E2                 ; $0D:8952: 85 E2       ;
CODE_0D8954:    CLC                     ; $0D:8954: 18          ;
CODE_0D8955:    ADC #$0008              ; $0D:8955: 69 08 00    ;
CODE_0D8958:    STA $DE                 ; $0D:8958: 85 DE       ;
CODE_0D895A:    SEP #$20                ; $0D:895A: E2 20       ;
CODE_0D895C:    LDX $E0                 ; $0D:895C: A6 E0       ;
CODE_0D895E:    STZ $DD                 ; $0D:895E: 64 DD       ;
CODE_0D8960:    LDA $E3                 ; $0D:8960: A5 E3       ;
CODE_0D8962:    BEQ CODE_0D896A         ; $0D:8962: F0 06       ;
CODE_0D8964:    LDA $DD                 ; $0D:8964: A5 DD       ;
CODE_0D8966:    ORA #$01                ; $0D:8966: 09 01       ;
CODE_0D8968:    STA $DD                 ; $0D:8968: 85 DD       ;
CODE_0D896A:    LDA $DD                 ; $0D:896A: A5 DD       ;
CODE_0D896C:    STA $0C00,y             ; $0D:896C: 99 00 0C    ;
CODE_0D896F:    LDA $0110,x             ; $0D:896F: BD 10 01    ;
CODE_0D8972:    CMP #$06                ; $0D:8972: C9 06       ;
CODE_0D8974:    BCS CODE_0D897A         ; $0D:8974: B0 04       ;
CODE_0D8976:    STZ $DD                 ; $0D:8976: 64 DD       ;
CODE_0D8978:    BRA CODE_0D8982         ; $0D:8978: 80 08       ;

CODE_0D897A:    CMP #$0B                ; $0D:897A: C9 0B       ;
CODE_0D897C:    BEQ CODE_0D8976         ; $0D:897C: F0 F8       ;
CODE_0D897E:    LDA #$02                ; $0D:897E: A9 02       ;
CODE_0D8980:    STA $DD                 ; $0D:8980: 85 DD       ;
CODE_0D8982:    LDA $DF                 ; $0D:8982: A5 DF       ;
CODE_0D8984:    BEQ CODE_0D898C         ; $0D:8984: F0 06       ;
CODE_0D8986:    LDA $DD                 ; $0D:8986: A5 DD       ;
CODE_0D8988:    ORA #$01                ; $0D:8988: 09 01       ;
CODE_0D898A:    STA $DD                 ; $0D:898A: 85 DD       ;
CODE_0D898C:    LDA $DD                 ; $0D:898C: A5 DD       ;
CODE_0D898E:    STA $0C04,y             ; $0D:898E: 99 04 0C    ;
CODE_0D8991:    LDA $E2                 ; $0D:8991: A5 E2       ;
CODE_0D8993:    STA $0800,y             ; $0D:8993: 99 00 08    ;
CODE_0D8996:    LDA $DE                 ; $0D:8996: A5 DE       ;
CODE_0D8998:    STA $0804,y             ; $0D:8998: 99 04 08    ;
CODE_0D899B:    LDA $0110,x             ; $0D:899B: BD 10 01    ;
CODE_0D899E:    ASL A                   ; $0D:899E: 0A          ;
CODE_0D899F:    TAX                     ; $0D:899F: AA          ;
CODE_0D89A0:    LDA DATA_0D88B1,x       ; $0D:89A0: BD B1 88    ;
CODE_0D89A3:    STA $0802,y             ; $0D:89A3: 99 02 08    ;
CODE_0D89A6:    LDA DATA_0D88B1+1,x     ; $0D:89A6: BD B2 88    ;
CODE_0D89A9:    STA $0806,y             ; $0D:89A9: 99 06 08    ;
CODE_0D89AC:    TAX                     ; $0D:89AC: AA          ;
CODE_0D89AD:    LDA #$32                ; $0D:89AD: A9 32       ;
CODE_0D89AF:    STA $0803,y             ; $0D:89AF: 99 03 08    ;
CODE_0D89B2:    CPX #$0E                ; $0D:89B2: E0 0E       ;
CODE_0D89B4:    BNE CODE_0D89B7         ; $0D:89B4: D0 01       ;
CODE_0D89B6:    INC A                   ; $0D:89B6: 1A          ;
CODE_0D89B7:    STA $0807,y             ; $0D:89B7: 99 07 08    ;
CODE_0D89BA:    LDX $9E                 ; $0D:89BA: A6 9E       ;
CODE_0D89BC:    RTS                     ; $0D:89BC: 60          ;

CODE_0D89BD:    LDA $073C               ; $0D:89BD: AD 3C 07    ;
CODE_0D89C0:    ASL A                   ; $0D:89C0: 0A          ;
CODE_0D89C1:    TAX                     ; $0D:89C1: AA          ;
CODE_0D89C2:    JMP (PNTR_0D89C5,x)     ; $0D:89C2: 7C C5 89    ;

PNTR_0D89C5:        dw CODE_0D89E5
                    dw CODE_0D89EE
                    dw CODE_0D8A32
                    dw CODE_0D8A56
                    dw CODE_0D8ABF
                    dw CODE_0D8ED6
                    dw CODE_0D8AE0
                    dw CODE_0D9A4C
                    dw CODE_0D8ED6
                    dw CODE_0D8B6F
                    dw CODE_0D8A0D
                    dw CODE_0D8A23
                    dw CODE_0D8A28
                    dw CODE_0D8B9D
                    dw CODE_0D8BB3
                    dw CODE_0D8BCB

CODE_0D89E5:    LDA $0770               ; $0D:89E5: AD 70 07    ;
CODE_0D89E8:    BEQ CODE_0D8A20         ; $0D:89E8: F0 36       ;
CODE_0D89EA:    LDX #$03                ; $0D:89EA: A2 03       ;
CODE_0D89EC:    BRA CODE_0D8A18         ; $0D:89EC: 80 2A       ;

CODE_0D89EE:    LDA $0744               ; $0D:89EE: AD 44 07    ;
CODE_0D89F1:    PHA                     ; $0D:89F1: 48          ;
CODE_0D89F2:    LDA $0756               ; $0D:89F2: AD 56 07    ;
CODE_0D89F5:    PHA                     ; $0D:89F5: 48          ;
CODE_0D89F6:    STZ $0756               ; $0D:89F6: 9C 56 07    ;
CODE_0D89F9:    LDA #$02                ; $0D:89F9: A9 02       ;
CODE_0D89FB:    STA $0744               ; $0D:89FB: 8D 44 07    ;
CODE_0D89FE:    JSL CODE_0E98C3         ; $0D:89FE: 22 C3 98 0E ;
CODE_0D8A02:    PLA                     ; $0D:8A02: 68          ;
CODE_0D8A03:    STA $0756               ; $0D:8A03: 8D 56 07    ;
CODE_0D8A06:    PLA                     ; $0D:8A06: 68          ;
CODE_0D8A07:    STA $0744               ; $0D:8A07: 8D 44 07    ;
CODE_0D8A0A:    JMP CODE_0D8BC7         ; $0D:8A0A: 4C C7 8B    ;

CODE_0D8A0D:    LDA $5C                 ; $0D:8A0D: A5 5C       ;
CODE_0D8A0F:    JSL CODE_0FD8F6         ; $0D:8A0F: 22 F6 D8 0F ;
CODE_0D8A13:    JSL CODE_0E9147         ; $0D:8A13: 22 47 91 0E ;
CODE_0D8A17:    RTS                     ; $0D:8A17: 60          ;

CODE_0D8A18:    STZ $0773               ; $0D:8A18: 9C 73 07    ;
CODE_0D8A1B:    LDA #$01                ; $0D:8A1B: A9 01       ;
CODE_0D8A1D:    STA $1200               ; $0D:8A1D: 8D 00 12    ;
CODE_0D8A20:    JMP CODE_0D8BC7         ; $0D:8A20: 4C C7 8B    ;

CODE_0D8A23:    JSL CODE_0E98B8         ; $0D:8A23: 22 B8 98 0E ;
CODE_0D8A27:    RTS                     ; $0D:8A27: 60          ;

CODE_0D8A28:    INC $073C               ; $0D:8A28: EE 3C 07    ;
CODE_0D8A2B:    RTS                     ; $0D:8A2B: 60          ;

CODE_0D8A2C:    STA $0773               ; $0D:8A2C: 8D 73 07    ;
CODE_0D8A2F:    JMP CODE_0D8BC7         ; $0D:8A2F: 4C C7 8B    ;

CODE_0D8A32:    LDA #$00                ; $0D:8A32: A9 00       ;
CODE_0D8A34:    JSR CODE_0D8DBF         ; $0D:8A34: 20 BF 8D    ;
CODE_0D8A37:    LDA $0753               ; $0D:8A37: AD 53 07    ;
CODE_0D8A3A:    BEQ CODE_0D8A53         ; $0D:8A3A: F0 17       ;
CODE_0D8A3C:    LDA #$15                ; $0D:8A3C: A9 15       ;
CODE_0D8A3E:    STA $1706               ; $0D:8A3E: 8D 06 17    ;
CODE_0D8A41:    LDA #$1E                ; $0D:8A41: A9 1E       ;
CODE_0D8A43:    STA $1708               ; $0D:8A43: 8D 08 17    ;
CODE_0D8A46:    LDA #$12                ; $0D:8A46: A9 12       ;
CODE_0D8A48:    STA $170A               ; $0D:8A48: 8D 0A 17    ;
CODE_0D8A4B:    STA $170E               ; $0D:8A4B: 8D 0E 17    ;
CODE_0D8A4E:    LDA #$10                ; $0D:8A4E: A9 10       ;
CODE_0D8A50:    STA $170C               ; $0D:8A50: 8D 0C 17    ;
CODE_0D8A53:    JMP CODE_0D8BC7         ; $0D:8A53: 4C C7 8B    ;

CODE_0D8A56:    JSR CODE_0DBB2D         ; $0D:8A56: 20 2D BB    ;
CODE_0D8A59:    REP #$30                ; $0D:8A59: C2 30       ;
CODE_0D8A5B:    LDX $1700               ; $0D:8A5B: AE 00 17    ;
CODE_0D8A5E:    LDA #$7358              ; $0D:8A5E: A9 58 73    ;
CODE_0D8A61:    STA $1702,x             ; $0D:8A61: 9D 02 17    ;
CODE_0D8A64:    LDA #$0500              ; $0D:8A64: A9 00 05    ;
CODE_0D8A67:    STA $1704,x             ; $0D:8A67: 9D 04 17    ;
CODE_0D8A6A:    SEP #$20                ; $0D:8A6A: E2 20       ;
CODE_0D8A6C:    LDA $075F               ; $0D:8A6C: AD 5F 07    ;
CODE_0D8A6F:    INC A                   ; $0D:8A6F: 1A          ;
CODE_0D8A70:    STA $1706,x             ; $0D:8A70: 9D 06 17    ;
CODE_0D8A73:    LDA #$20                ; $0D:8A73: A9 20       ;
CODE_0D8A75:    STA $1707,x             ; $0D:8A75: 9D 07 17    ;
CODE_0D8A78:    STA $1709,x             ; $0D:8A78: 9D 09 17    ;
CODE_0D8A7B:    STA $170B,x             ; $0D:8A7B: 9D 0B 17    ;
CODE_0D8A7E:    LDA #$24                ; $0D:8A7E: A9 24       ;
CODE_0D8A80:    STA $1708,x             ; $0D:8A80: 9D 08 17    ;
CODE_0D8A83:    LDA $075C               ; $0D:8A83: AD 5C 07    ;
CODE_0D8A86:    INC A                   ; $0D:8A86: 1A          ;
CODE_0D8A87:    STA $170A,x             ; $0D:8A87: 9D 0A 17    ;
CODE_0D8A8A:    LDA #$FF                ; $0D:8A8A: A9 FF       ;
CODE_0D8A8C:    STA $170C,x             ; $0D:8A8C: 9D 0C 17    ;
CODE_0D8A8F:    LDA $0770               ; $0D:8A8F: AD 70 07    ;
CODE_0D8A92:    BNE CODE_0D8AB0         ; $0D:8A92: D0 1C       ;
CODE_0D8A94:    LDA $701FF2             ; $0D:8A94: AF F2 1F 70 ;
CODE_0D8A98:    BNE CODE_0D8AB0         ; $0D:8A98: D0 16       ;
CODE_0D8A9A:    LDA $7FFB05             ; $0D:8A9A: AF 05 FB 7F ;
CODE_0D8A9E:    BMI CODE_0D8AB0         ; $0D:8A9E: 30 10       ;
CODE_0D8AA0:    LDA $7FFB00             ; $0D:8AA0: AF 00 FB 7F ;
CODE_0D8AA4:    INC A                   ; $0D:8AA4: 1A          ;
CODE_0D8AA5:    STA $1706,x             ; $0D:8AA5: 9D 06 17    ;
CODE_0D8AA8:    LDA $7FFB01             ; $0D:8AA8: AF 01 FB 7F ;
CODE_0D8AAC:    INC A                   ; $0D:8AAC: 1A          ;
CODE_0D8AAD:    STA $170A,x             ; $0D:8AAD: 9D 0A 17    ;
CODE_0D8AB0:    REP #$20                ; $0D:8AB0: C2 20       ;
CODE_0D8AB2:    TXA                     ; $0D:8AB2: 8A          ;
CODE_0D8AB3:    CLC                     ; $0D:8AB3: 18          ;
CODE_0D8AB4:    ADC #$000A              ; $0D:8AB4: 69 0A 00    ;
CODE_0D8AB7:    STA $1700               ; $0D:8AB7: 8D 00 17    ;
CODE_0D8ABA:    SEP #$30                ; $0D:8ABA: E2 30       ;
CODE_0D8ABC:    JMP CODE_0D8BC7         ; $0D:8ABC: 4C C7 8B    ;

CODE_0D8ABF:    LDA $0759               ; $0D:8ABF: AD 59 07    ;
CODE_0D8AC2:    BEQ CODE_0D8ADA         ; $0D:8AC2: F0 16       ;
CODE_0D8AC4:    STZ $0759               ; $0D:8AC4: 9C 59 07    ;
CODE_0D8AC7:    LDY #$00                ; $0D:8AC7: A0 00       ;
CODE_0D8AC9:    JSR CODE_0D841C         ; $0D:8AC9: 20 1C 84    ;
CODE_0D8ACC:    JSL CODE_0E8D2E         ; $0D:8ACC: 22 2E 8D 0E ;
CODE_0D8AD0:    LDA #$01                ; $0D:8AD0: A9 01       ;
CODE_0D8AD2:    STA $0ED6               ; $0D:8AD2: 8D D6 0E    ;
CODE_0D8AD5:    LDA #$02                ; $0D:8AD5: A9 02       ;
CODE_0D8AD7:    JMP CODE_0D8B02         ; $0D:8AD7: 4C 02 8B    ;

CODE_0D8ADA:    INC $073C               ; $0D:8ADA: EE 3C 07    ;
CODE_0D8ADD:    JMP CODE_0D8BC7         ; $0D:8ADD: 4C C7 8B    ;

CODE_0D8AE0:    LDA $0770               ; $0D:8AE0: AD 70 07    ;
CODE_0D8AE3:    BEQ CODE_0D8B2E         ; $0D:8AE3: F0 49       ;
CODE_0D8AE5:    CMP #$03                ; $0D:8AE5: C9 03       ;
CODE_0D8AE7:    BEQ CODE_0D8B34         ; $0D:8AE7: F0 4B       ;
CODE_0D8AE9:    LDA $0752               ; $0D:8AE9: AD 52 07    ;
CODE_0D8AEC:    BNE CODE_0D8B2E         ; $0D:8AEC: D0 40       ;
CODE_0D8AEE:    LDY $5C                 ; $0D:8AEE: A4 5C       ;
CODE_0D8AF0:    CPY #$03                ; $0D:8AF0: C0 03       ;
CODE_0D8AF2:    BEQ CODE_0D8AF9         ; $0D:8AF2: F0 05       ;
CODE_0D8AF4:    LDA $0769               ; $0D:8AF4: AD 69 07    ;
CODE_0D8AF7:    BNE CODE_0D8B2E         ; $0D:8AF7: D0 35       ;
CODE_0D8AF9:    JSR CODE_0DF85F         ; $0D:8AF9: 20 5F F8    ;
CODE_0D8AFC:    JSL CODE_0E8F43         ; $0D:8AFC: 22 43 8F 0E ;
CODE_0D8B00:    LDA #$01                ; $0D:8B00: A9 01       ;
CODE_0D8B02:    JSR CODE_0D8DBF         ; $0D:8B02: 20 BF 8D    ;
CODE_0D8B05:    JSR CODE_0D8EE7         ; $0D:8B05: 20 E7 8E    ;
CODE_0D8B08:    STZ $1204               ; $0D:8B08: 9C 04 12    ;
CODE_0D8B0B:    STZ $1205               ; $0D:8B0B: 9C 05 12    ;
CODE_0D8B0E:    STZ $1206               ; $0D:8B0E: 9C 06 12    ;
CODE_0D8B11:    STZ $1209               ; $0D:8B11: 9C 09 12    ;
CODE_0D8B14:    LDA #$20                ; $0D:8B14: A9 20       ;
CODE_0D8B16:    STA $120A               ; $0D:8B16: 8D 0A 12    ;
CODE_0D8B19:    STZ $1203               ; $0D:8B19: 9C 03 12    ;
CODE_0D8B1C:    LDA #$02                ; $0D:8B1C: A9 02       ;
CODE_0D8B1E:    STA $0E7F               ; $0D:8B1E: 8D 7F 0E    ;
CODE_0D8B21:    STZ $0E4F               ; $0D:8B21: 9C 4F 0E    ;
CODE_0D8B24:    STZ $1201               ; $0D:8B24: 9C 01 12    ;
CODE_0D8B27:    STZ $0E7E               ; $0D:8B27: 9C 7E 0E    ;
CODE_0D8B2A:    STZ $0774               ; $0D:8B2A: 9C 74 07    ;
CODE_0D8B2D:    RTS                     ; $0D:8B2D: 60          ;

CODE_0D8B2E:    LDA #$09                ; $0D:8B2E: A9 09       ;
CODE_0D8B30:    STA $073C               ; $0D:8B30: 8D 3C 07    ;
CODE_0D8B33:    RTS                     ; $0D:8B33: 60          ;

CODE_0D8B34:    STZ $1204               ; $0D:8B34: 9C 04 12    ;
CODE_0D8B37:    STZ $1205               ; $0D:8B37: 9C 05 12    ;
CODE_0D8B3A:    STZ $1206               ; $0D:8B3A: 9C 06 12    ;
CODE_0D8B3D:    STZ $1209               ; $0D:8B3D: 9C 09 12    ;
CODE_0D8B40:    LDA #$20                ; $0D:8B40: A9 20       ;
CODE_0D8B42:    STA $120A               ; $0D:8B42: 8D 0A 12    ;
CODE_0D8B45:    STZ $1203               ; $0D:8B45: 9C 03 12    ;
CODE_0D8B48:    LDA $0774               ; $0D:8B48: AD 74 07    ;
CODE_0D8B4B:    BEQ CODE_0D8B5F         ; $0D:8B4B: F0 12       ;
CODE_0D8B4D:    STZ $0E4F               ; $0D:8B4D: 9C 4F 0E    ;
CODE_0D8B50:    STZ $0774               ; $0D:8B50: 9C 74 07    ;
CODE_0D8B53:    STZ $1201               ; $0D:8B53: 9C 01 12    ;
CODE_0D8B56:    LDA #$02                ; $0D:8B56: A9 02       ;
CODE_0D8B58:    STA $0E7F               ; $0D:8B58: 8D 7F 0E    ;
CODE_0D8B5B:    JSL CODE_0E8D2E         ; $0D:8B5B: 22 2E 8D 0E ;
CODE_0D8B5F:    JSR CODE_0D99CA         ; $0D:8B5F: 20 CA 99    ;
CODE_0D8B62:    LDA #$09                ; $0D:8B62: A9 09       ;
CODE_0D8B64:    STA $07B0               ; $0D:8B64: 8D B0 07    ;
CODE_0D8B67:    LDA #$03                ; $0D:8B67: A9 03       ;
CODE_0D8B69:    JSR CODE_0D8DBF         ; $0D:8B69: 20 BF 8D    ;
CODE_0D8B6C:    JMP CODE_0D8BD0         ; $0D:8B6C: 4C D0 8B    ;

CODE_0D8B6F:    LDA $0774               ; $0D:8B6F: AD 74 07    ;
CODE_0D8B72:    BEQ CODE_0D8B7A         ; $0D:8B72: F0 06       ;
CODE_0D8B74:    CMP #$01                ; $0D:8B74: C9 01       ;
CODE_0D8B76:    BEQ CODE_0D8B87         ; $0D:8B76: F0 0F       ;
CODE_0D8B78:    BRA CODE_0D8B84         ; $0D:8B78: 80 0A       ;

CODE_0D8B7A:    LDA #$01                ; $0D:8B7A: A9 01       ;
CODE_0D8B7C:    STA $0E7F               ; $0D:8B7C: 8D 7F 0E    ;
CODE_0D8B7F:    STZ $0E4F               ; $0D:8B7F: 9C 4F 0E    ;
CODE_0D8B82:    BRA CODE_0D8B9C         ; $0D:8B82: 80 18       ;

CODE_0D8B84:    INC $0774               ; $0D:8B84: EE 74 07    ;
CODE_0D8B87:    JSR CODE_0DA054         ; $0D:8B87: 20 54 A0    ;
CODE_0D8B8A:    LDA $071F               ; $0D:8B8A: AD 1F 07    ;
CODE_0D8B8D:    BNE CODE_0D8B87         ; $0D:8B8D: D0 F8       ;
CODE_0D8B8F:    DEC $071E               ; $0D:8B8F: CE 1E 07    ;
CODE_0D8B92:    BPL CODE_0D8B97         ; $0D:8B92: 10 03       ;
CODE_0D8B94:    INC $073C               ; $0D:8B94: EE 3C 07    ;
CODE_0D8B97:    LDA #$06                ; $0D:8B97: A9 06       ;
CODE_0D8B99:    STA $0773               ; $0D:8B99: 8D 73 07    ;
CODE_0D8B9C:    RTS                     ; $0D:8B9C: 60          ;

CODE_0D8B9D:    LDA $0770               ; $0D:8B9D: AD 70 07    ;
CODE_0D8BA0:    BNE CODE_0D8BD0         ; $0D:8BA0: D0 2E       ;
CODE_0D8BA2:    JSL CODE_0FE893         ; $0D:8BA2: 22 93 E8 0F ;
CODE_0D8BA6:    STZ $0EC2               ; $0D:8BA6: 9C C2 0E    ;
CODE_0D8BA9:    LDA #$80                ; $0D:8BA9: A9 80       ;
CODE_0D8BAB:    STA $0ED6               ; $0D:8BAB: 8D D6 0E    ;
CODE_0D8BAE:    LDA #$05                ; $0D:8BAE: A9 05       ;
CODE_0D8BB0:    JMP CODE_0D8A2C         ; $0D:8BB0: 4C 2C 8A    ;

CODE_0D8BB3:    LDA $0770               ; $0D:8BB3: AD 70 07    ;
CODE_0D8BB6:    BNE CODE_0D8BD0         ; $0D:8BB6: D0 18       ;
CODE_0D8BB8:    LDX #$00                ; $0D:8BB8: A2 00       ;
CODE_0D8BBA:    STA $0300,x             ; $0D:8BBA: 9D 00 03    ;
CODE_0D8BBD:    STA $0400,x             ; $0D:8BBD: 9D 00 04    ;
CODE_0D8BC0:    DEX                     ; $0D:8BC0: CA          ;
CODE_0D8BC1:    BNE CODE_0D8BBA         ; $0D:8BC1: D0 F7       ;
CODE_0D8BC3:    JSL CODE_0FF317         ; $0D:8BC3: 22 17 F3 0F ;
CODE_0D8BC7:    INC $073C               ; $0D:8BC7: EE 3C 07    ;
CODE_0D8BCA:    RTS                     ; $0D:8BCA: 60          ;

CODE_0D8BCB:    LDA #$FA                ; $0D:8BCB: A9 FA       ;
CODE_0D8BCD:    JSR CODE_0DBB30         ; $0D:8BCD: 20 30 BB    ;
CODE_0D8BD0:    INC $0772               ; $0D:8BD0: EE 72 07    ;
CODE_0D8BD3:    RTS                     ; $0D:8BD3: 60          ;

DATA_0D8BD4:        db $58,$43,$00,$09,$16,$20,$0A,$20 ;
                    db $1B,$20,$12,$20,$18,$20,$58,$52 ;
                    db $00,$15,$20,$20,$18,$20,$1B,$20 ;
                    db $15,$20,$0D,$20,$28,$20,$28,$20 ;
                    db $1D,$20,$12,$20,$16,$20,$0E,$20 ;
                    db $58,$68,$00,$09,$00,$20,$28,$20 ;
                    db $28,$20,$27,$24,$25,$20,$FF,$58 ;
                    db $43,$00,$09,$15,$20,$1E,$20,$12 ;
                    db $20,$10,$20,$12,$20,$58,$52,$00 ;
                    db $15,$20,$20,$18,$20,$1B,$20,$15 ;
                    db $20,$0D,$20,$28,$20,$28,$20,$1D ;
                    db $20,$12,$20,$16,$20,$0E,$20,$58 ;
                    db $68,$00,$09,$00,$20,$28,$20,$28 ;
                    db $20,$27,$24,$25,$20,$FF,$59,$6D ;
                    db $00,$0F,$28,$20,$28,$20,$28,$20 ;
                    db $25,$20,$28,$20,$28,$20,$28,$20 ;
                    db $28,$20,$59,$E0,$40,$FE,$28,$00 ;
                    db $59,$0B,$00,$11,$20,$20,$18,$20 ;
                    db $1B,$20,$15,$20,$0D,$20,$28,$20 ;
                    db $28,$20,$24,$20,$28,$20,$58,$AC ;
                    db $40,$0D,$28,$20,$FF,$09,$6D,$00 ;
                    db $09,$E0,$19,$E1,$19,$E2,$19,$E3 ;
                    db $19,$E4,$19,$09,$8D,$00,$09,$F0 ;
                    db $19,$F1,$19,$F2,$19,$F3,$19,$F4 ;
                    db $19,$09,$AC,$00,$0D,$CA,$19,$CB ;
                    db $19,$CC,$19,$CD,$19,$24,$00,$CE ;
                    db $19,$CF,$19,$09,$CC,$00,$0D,$DA ;
                    db $19,$DB,$19,$DC,$19,$DD,$19,$24 ;
                    db $00,$DE,$19,$DF,$19,$FF,$09,$CC ;
                    db $40,$0C,$24,$00,$09,$AB,$00,$0F ;
                    db $A1,$02,$A2,$02,$A3,$02,$A4,$02 ;
                    db $A5,$02,$A6,$02,$A7,$02,$A8,$02 ;
                    db $09,$EB,$00,$19,$AE,$02,$AF,$02 ;
                    db $B0,$02,$B1,$02,$AD,$02,$A1,$02 ;
                    db $A2,$02,$A3,$02,$A4,$02,$A5,$02 ;
                    db $A6,$02,$A7,$02,$A8,$02,$0A,$2B ;
                    db $00,$11,$AE,$02,$AF,$02,$B0,$02 ;
                    db $B1,$02,$AD,$02,$A9,$02,$AA,$02 ;
                    db $AB,$02,$AC,$02,$09,$0B,$00,$13 ;
                    db $C0,$19,$C1,$19,$C2,$19,$C3,$19 ;
                    db $C4,$19,$C5,$19,$C6,$19,$C7,$19 ;
                    db $C8,$19,$C9,$19,$09,$2B,$00,$13 ;
                    db $D0,$19,$D1,$19,$D2,$19,$D3,$19 ;
                    db $D4,$19,$D5,$19,$D6,$19,$D7,$19 ;
                    db $D8,$19,$D9,$19,$FF ;

DATA_0D8D39:        db $05,$84,$00,$29,$20,$08,$0E,$08 ;
                    db $15,$08,$0C,$08,$18,$08,$16,$08 ;
                    db $0E,$08,$24,$00,$1D,$08,$18,$08 ;
                    db $24,$00,$20,$08,$0A,$08,$1B,$08 ;
                    db $19,$08,$24,$00,$23,$08,$18,$08 ;
                    db $17,$08,$0E,$08,$2B,$08,$05,$E5 ;
                    db $00,$01,$24,$08,$05,$ED,$00,$01 ;
                    db $24,$08,$05,$F5,$00,$01,$24,$08 ;
                    db $FF ;

DATA_0D8D7A:        db $E5,$19,$E6,$19,$E7,$19,$E8,$19 ;
                    db $E9,$19 ;

DATA_0D8D84:        db $F5,$19,$F6,$19,$F7,$19,$F8,$19 ;
                    db $F9,$19 ;

DATA_0D8D8E:        db $15,$20,$1E,$20,$12,$20,$10,$20 ;
                    db $12,$20 ;

DATA_0D8D98:        db $02,$03,$04,$01,$06,$07,$08,$05 ;
                    db $0B,$0C,$0D ;

DATA_0D8DA3:        db $00,$37,$6E,$6E,$A5,$C1,$E6,$E6
                    db $65,$65

DATA_0D8DAD:        dw $0000,$0000,$0000,$0000
                    dw $0101

CODE_0D8DB7:    LDA $077A               ; $0D:8DB7: AD 7A 07    ;
CODE_0D8DBA:    BEQ CODE_0D8DD4         ; $0D:8DBA: F0 18       ;
CODE_0D8DBC:    INY                     ; $0D:8DBC: C8          ;
CODE_0D8DBD:    BRA CODE_0D8DD4         ; $0D:8DBD: 80 15       ;

CODE_0D8DBF:    PHA                     ; $0D:8DBF: 48          ;
CODE_0D8DC0:    ASL A                   ; $0D:8DC0: 0A          ;
CODE_0D8DC1:    TAY                     ; $0D:8DC1: A8          ;
CODE_0D8DC2:    BEQ CODE_0D8DB7         ; $0D:8DC2: F0 F3       ;
CODE_0D8DC4:    CPY #$04                ; $0D:8DC4: C0 04       ;
CODE_0D8DC6:    BCC CODE_0D8DD4         ; $0D:8DC6: 90 0C       ;
CODE_0D8DC8:    CPY #$08                ; $0D:8DC8: C0 08       ;
CODE_0D8DCA:    BCC CODE_0D8DCE         ; $0D:8DCA: 90 02       ;
CODE_0D8DCC:    LDY #$08                ; $0D:8DCC: A0 08       ;
CODE_0D8DCE:    LDA $077A               ; $0D:8DCE: AD 7A 07    ;
CODE_0D8DD1:    BNE CODE_0D8DD4         ; $0D:8DD1: D0 01       ;
CODE_0D8DD3:    INY                     ; $0D:8DD3: C8          ;
CODE_0D8DD4:    STY $F3                 ; $0D:8DD4: 84 F3       ;
CODE_0D8DD6:    LDX DATA_0D8DA3,y       ; $0D:8DD6: BE A3 8D    ;
CODE_0D8DD9:    LDA $075F               ; $0D:8DD9: AD 5F 07    ;
CODE_0D8DDC:    CMP #$08                ; $0D:8DDC: C9 08       ;
CODE_0D8DDE:    BNE CODE_0D8DEA         ; $0D:8DDE: D0 0A       ;
CODE_0D8DE0:    CPY #$07                ; $0D:8DE0: C0 07       ;
CODE_0D8DE2:    BNE CODE_0D8DEA         ; $0D:8DE2: D0 06       ;
CODE_0D8DE4:    DEY                     ; $0D:8DE4: 88          ;
CODE_0D8DE5:    LDX DATA_0D8DA3,y       ; $0D:8DE5: BE A3 8D    ;
CODE_0D8DE8:    STY $F3                 ; $0D:8DE8: 84 F3       ;
CODE_0D8DEA:    REP #$30                ; $0D:8DEA: C2 30       ;
CODE_0D8DEC:    LDA DATA_0D8DAD,y       ; $0D:8DEC: B9 AD 8D    ;
CODE_0D8DEF:    AND #$00FF              ; $0D:8DEF: 29 FF 00    ;
CODE_0D8DF2:    XBA                     ; $0D:8DF2: EB          ;
CODE_0D8DF3:    STA $DE                 ; $0D:8DF3: 85 DE       ;
CODE_0D8DF5:    TXA                     ; $0D:8DF5: 8A          ;
CODE_0D8DF6:    AND #$00FF              ; $0D:8DF6: 29 FF 00    ;
CODE_0D8DF9:    ORA $DE                 ; $0D:8DF9: 05 DE       ;
CODE_0D8DFB:    TAX                     ; $0D:8DFB: AA          ;
CODE_0D8DFC:    LDY #$0000              ; $0D:8DFC: A0 00 00    ;
CODE_0D8DFF:    SEP #$20                ; $0D:8DFF: E2 20       ;
CODE_0D8E01:    LDA DATA_0D8BD4,x       ; $0D:8E01: BD D4 8B    ;
CODE_0D8E04:    CMP #$FF                ; $0D:8E04: C9 FF       ;
CODE_0D8E06:    BEQ CODE_0D8E0F         ; $0D:8E06: F0 07       ;
CODE_0D8E08:    STA $1702,y             ; $0D:8E08: 99 02 17    ;
CODE_0D8E0B:    INX                     ; $0D:8E0B: E8          ;
CODE_0D8E0C:    INY                     ; $0D:8E0C: C8          ;
CODE_0D8E0D:    BRA CODE_0D8E01         ; $0D:8E0D: 80 F2       ;

CODE_0D8E0F:    LDA #$FF                ; $0D:8E0F: A9 FF       ;
CODE_0D8E11:    STA $1702,y             ; $0D:8E11: 99 02 17    ;
CODE_0D8E14:    SEP #$10                ; $0D:8E14: E2 10       ;
CODE_0D8E16:    PLA                     ; $0D:8E16: 68          ;
CODE_0D8E17:    TAX                     ; $0D:8E17: AA          ;
CODE_0D8E18:    CMP #$04                ; $0D:8E18: C9 04       ;
CODE_0D8E1A:    BCC CODE_0D8E1F         ; $0D:8E1A: 90 03       ;
CODE_0D8E1C:    JMP CODE_0D8EB3         ; $0D:8E1C: 4C B3 8E    ;

CODE_0D8E1F:    DEX                     ; $0D:8E1F: CA          ;
CODE_0D8E20:    BNE CODE_0D8E68         ; $0D:8E20: D0 46       ;
CODE_0D8E22:    LDA $075A               ; $0D:8E22: AD 5A 07    ;
CODE_0D8E25:    INC A                   ; $0D:8E25: 1A          ;
CODE_0D8E26:    CMP #$0A                ; $0D:8E26: C9 0A       ;
CODE_0D8E28:    BCC CODE_0D8E56         ; $0D:8E28: 90 2C       ;
CODE_0D8E2A:    STZ $E4                 ; $0D:8E2A: 64 E4       ;
CODE_0D8E2C:    STZ $E5                 ; $0D:8E2C: 64 E5       ;
CODE_0D8E2E:    SEC                     ; $0D:8E2E: 38          ;
CODE_0D8E2F:    SBC #$64                ; $0D:8E2F: E9 64       ;
CODE_0D8E31:    BCC CODE_0D8E37         ; $0D:8E31: 90 04       ;
CODE_0D8E33:    INC $E4                 ; $0D:8E33: E6 E4       ;
CODE_0D8E35:    BRA CODE_0D8E2E         ; $0D:8E35: 80 F7       ;

CODE_0D8E37:    CLC                     ; $0D:8E37: 18          ;
CODE_0D8E38:    ADC #$64                ; $0D:8E38: 69 64       ;
CODE_0D8E3A:    SEC                     ; $0D:8E3A: 38          ;
CODE_0D8E3B:    SBC #$0A                ; $0D:8E3B: E9 0A       ;
CODE_0D8E3D:    BCC CODE_0D8E43         ; $0D:8E3D: 90 04       ;
CODE_0D8E3F:    INC $E5                 ; $0D:8E3F: E6 E5       ;
CODE_0D8E41:    BRA CODE_0D8E3A         ; $0D:8E41: 80 F7       ;

CODE_0D8E43:    CLC                     ; $0D:8E43: 18          ;
CODE_0D8E44:    ADC #$0A                ; $0D:8E44: 69 0A       ;
CODE_0D8E46:    STA $E6                 ; $0D:8E46: 85 E6       ;
CODE_0D8E48:    LDY $E4                 ; $0D:8E48: A4 E4       ;
CODE_0D8E4A:    BEQ CODE_0D8E4F         ; $0D:8E4A: F0 03       ;
CODE_0D8E4C:    STY $170E               ; $0D:8E4C: 8C 0E 17    ;
CODE_0D8E4F:    LDA $E5                 ; $0D:8E4F: A5 E5       ;
CODE_0D8E51:    STA $1710               ; $0D:8E51: 8D 10 17    ;
CODE_0D8E54:    LDA $E6                 ; $0D:8E54: A5 E6       ;
CODE_0D8E56:    STA $1712               ; $0D:8E56: 8D 12 17    ;
CODE_0D8E59:    LDY $075F               ; $0D:8E59: AC 5F 07    ;
CODE_0D8E5C:    INY                     ; $0D:8E5C: C8          ;
CODE_0D8E5D:    STY $172C               ; $0D:8E5D: 8C 2C 17    ;
CODE_0D8E60:    LDY $075C               ; $0D:8E60: AC 5C 07    ;
CODE_0D8E63:    INY                     ; $0D:8E63: C8          ;
CODE_0D8E64:    STY $1730               ; $0D:8E64: 8C 30 17    ;
CODE_0D8E67:    RTS                     ; $0D:8E67: 60          ;

CODE_0D8E68:    LDA $077A               ; $0D:8E68: AD 7A 07    ;
CODE_0D8E6B:    BEQ CODE_0D8EB2         ; $0D:8E6B: F0 45       ;
CODE_0D8E6D:    LDA $0753               ; $0D:8E6D: AD 53 07    ;
CODE_0D8E70:    DEX                     ; $0D:8E70: CA          ;
CODE_0D8E71:    BNE CODE_0D8E89         ; $0D:8E71: D0 16       ;
CODE_0D8E73:    LDY $0770               ; $0D:8E73: AC 70 07    ;
CODE_0D8E76:    CPY #$03                ; $0D:8E76: C0 03       ;
CODE_0D8E78:    BEQ CODE_0D8E89         ; $0D:8E78: F0 0F       ;
CODE_0D8E7A:    LDA $0761               ; $0D:8E7A: AD 61 07    ;
CODE_0D8E7D:    BMI CODE_0D8E86         ; $0D:8E7D: 30 07       ;
CODE_0D8E7F:    LDA $0753               ; $0D:8E7F: AD 53 07    ;
CODE_0D8E82:    EOR #$01                ; $0D:8E82: 49 01       ;
CODE_0D8E84:    BRA CODE_0D8E89         ; $0D:8E84: 80 03       ;

CODE_0D8E86:    LDA $0753               ; $0D:8E86: AD 53 07    ;
CODE_0D8E89:    LSR A                   ; $0D:8E89: 4A          ;
CODE_0D8E8A:    BCC CODE_0D8EB2         ; $0D:8E8A: 90 26       ;
CODE_0D8E8C:    LDY #$09                ; $0D:8E8C: A0 09       ;
CODE_0D8E8E:    LDA $F3                 ; $0D:8E8E: A5 F3       ;
CODE_0D8E90:    CMP #$04                ; $0D:8E90: C9 04       ;
CODE_0D8E92:    BEQ CODE_0D8E98         ; $0D:8E92: F0 04       ;
CODE_0D8E94:    CMP #$06                ; $0D:8E94: C9 06       ;
CODE_0D8E96:    BNE CODE_0D8EA9         ; $0D:8E96: D0 11       ;
CODE_0D8E98:    LDA DATA_0D8D7A,y       ; $0D:8E98: B9 7A 8D    ;
CODE_0D8E9B:    STA $1706,y             ; $0D:8E9B: 99 06 17    ;
CODE_0D8E9E:    LDA DATA_0D8D84,y       ; $0D:8E9E: B9 84 8D    ;
CODE_0D8EA1:    STA $1714,y             ; $0D:8EA1: 99 14 17    ;
CODE_0D8EA4:    DEY                     ; $0D:8EA4: 88          ;
CODE_0D8EA5:    BPL CODE_0D8E98         ; $0D:8EA5: 10 F1       ;
CODE_0D8EA7:    BRA CODE_0D8EB2         ; $0D:8EA7: 80 09       ;

CODE_0D8EA9:    LDA DATA_0D8D8E,y       ; $0D:8EA9: B9 8E 8D    ;
CODE_0D8EAC:    STA $1706,y             ; $0D:8EAC: 99 06 17    ;
CODE_0D8EAF:    DEY                     ; $0D:8EAF: 88          ;
CODE_0D8EB0:    BPL CODE_0D8EA9         ; $0D:8EB0: 10 F7       ;
CODE_0D8EB2:    RTS                     ; $0D:8EB2: 60          ;

CODE_0D8EB3:    PHA                     ; $0D:8EB3: 48          ;
CODE_0D8EB4:    LDY $1700               ; $0D:8EB4: AC 00 17    ;
CODE_0D8EB7:    PHX                     ; $0D:8EB7: DA          ;
CODE_0D8EB8:    LDX #$00                ; $0D:8EB8: A2 00       ;
CODE_0D8EBA:    LDA DATA_0D8D39,x       ; $0D:8EBA: BD 39 8D    ;
CODE_0D8EBD:    STA $1702,y             ; $0D:8EBD: 99 02 17    ;
CODE_0D8EC0:    INX                     ; $0D:8EC0: E8          ;
CODE_0D8EC1:    INY                     ; $0D:8EC1: C8          ;
CODE_0D8EC2:    CMP #$FF                ; $0D:8EC2: C9 FF       ;
CODE_0D8EC4:    BNE CODE_0D8EBA         ; $0D:8EC4: D0 F4       ;
CODE_0D8EC6:    PLX                     ; $0D:8EC6: FA          ;
CODE_0D8EC7:    PLA                     ; $0D:8EC7: 68          ;
CODE_0D8EC8:    SEC                     ; $0D:8EC8: 38          ;
CODE_0D8EC9:    SBC #$80                ; $0D:8EC9: E9 80       ;
CODE_0D8ECB:    TAX                     ; $0D:8ECB: AA          ;
CODE_0D8ECC:    STY $1700               ; $0D:8ECC: 8C 00 17    ;
CODE_0D8ECF:    LDA DATA_0D8D98,x       ; $0D:8ECF: BD 98 8D    ;
CODE_0D8ED2:    STA $16F9,y             ; $0D:8ED2: 99 F9 16    ;
CODE_0D8ED5:    RTS                     ; $0D:8ED5: 60          ;

CODE_0D8ED6:    LDA $07B0               ; $0D:8ED6: AD B0 07    ;
CODE_0D8ED9:    BNE CODE_0D8EEF         ; $0D:8ED9: D0 14       ;
CODE_0D8EDB:    LDA $0770               ; $0D:8EDB: AD 70 07    ;
CODE_0D8EDE:    CMP #$03                ; $0D:8EDE: C9 03       ;
CODE_0D8EE0:    BEQ CODE_0D8EE7         ; $0D:8EE0: F0 05       ;
CODE_0D8EE2:    LDA #$01                ; $0D:8EE2: A9 01       ;
CODE_0D8EE4:    STA $0E7F               ; $0D:8EE4: 8D 7F 0E    ;
CODE_0D8EE7:    LDA #$07                ; $0D:8EE7: A9 07       ;
CODE_0D8EE9:    STA $07B0               ; $0D:8EE9: 8D B0 07    ;
CODE_0D8EEC:    INC $073C               ; $0D:8EEC: EE 3C 07    ;
CODE_0D8EEF:    RTS                     ; $0D:8EEF: 60          ;

CODE_0D8EF0:    LDA $0EC9               ; $0D:8EF0: AD C9 0E    ;
CODE_0D8EF3:    BNE CODE_0D8EEF         ; $0D:8EF3: D0 FA       ;
CODE_0D8EF5:    REP #$30                ; $0D:8EF5: C2 30       ;
CODE_0D8EF7:    LDY $1A00               ; $0D:8EF7: AC 00 1A    ;
CODE_0D8EFA:    STY $00                 ; $0D:8EFA: 84 00       ;
CODE_0D8EFC:    LDA $0720               ; $0D:8EFC: AD 20 07    ;
CODE_0D8EFF:    STA $1A02,y             ; $0D:8EFF: 99 02 1A    ;
CODE_0D8F02:    XBA                     ; $0D:8F02: EB          ;
CODE_0D8F03:    STA $0ECC               ; $0D:8F03: 8D CC 0E    ;
CODE_0D8F06:    LDA #$3D80              ; $0D:8F06: A9 80 3D    ;
CODE_0D8F09:    STA $1A04,y             ; $0D:8F09: 99 04 1A    ;
CODE_0D8F0C:    LDA #$0024              ; $0D:8F0C: A9 24 00    ;
CODE_0D8F0F:    STA $1A06,y             ; $0D:8F0F: 99 06 1A    ;
CODE_0D8F12:    STA $1A08,y             ; $0D:8F12: 99 08 1A    ;
CODE_0D8F15:    STA $1A0A,y             ; $0D:8F15: 99 0A 1A    ;
CODE_0D8F18:    STA $1A0C,y             ; $0D:8F18: 99 0C 1A    ;
CODE_0D8F1B:    SEP #$30                ; $0D:8F1B: E2 30       ;
CODE_0D8F1D:    LDX #$00                ; $0D:8F1D: A2 00       ;
CODE_0D8F1F:    LDA $0EE7               ; $0D:8F1F: AD E7 0E    ;
CODE_0D8F22:    BEQ CODE_0D8F34         ; $0D:8F22: F0 10       ;
CODE_0D8F24:    STA $0EE6               ; $0D:8F24: 8D E6 0E    ;
CODE_0D8F27:    LDA $0720               ; $0D:8F27: AD 20 07    ;
CODE_0D8F2A:    STA $0EF5               ; $0D:8F2A: 8D F5 0E    ;
CODE_0D8F2D:    LDA $0721               ; $0D:8F2D: AD 21 07    ;
CODE_0D8F30:    INC A                   ; $0D:8F30: 1A          ;
CODE_0D8F31:    STA $0EF4               ; $0D:8F31: 8D F4 0E    ;
CODE_0D8F34:    STX $02                 ; $0D:8F34: 86 02       ;
CODE_0D8F36:    LDA $06A1,x             ; $0D:8F36: BD A1 06    ;
CODE_0D8F39:    AND #$C0                ; $0D:8F39: 29 C0       ;
CODE_0D8F3B:    ASL A                   ; $0D:8F3B: 0A          ;
CODE_0D8F3C:    ROL A                   ; $0D:8F3C: 2A          ;
CODE_0D8F3D:    ROL A                   ; $0D:8F3D: 2A          ;
CODE_0D8F3E:    TAY                     ; $0D:8F3E: A8          ;
CODE_0D8F3F:    LDA DATA_0D910B,y       ; $0D:8F3F: B9 0B 91    ;
CODE_0D8F42:    STA $06                 ; $0D:8F42: 85 06       ;
CODE_0D8F44:    LDA DATA_0D910B+4,y     ; $0D:8F44: B9 0F 91    ;
CODE_0D8F47:    STA $07                 ; $0D:8F47: 85 07       ;
CODE_0D8F49:    REP #$30                ; $0D:8F49: C2 30       ;
CODE_0D8F4B:    TXA                     ; $0D:8F4B: 8A          ;
CODE_0D8F4C:    AND #$00FF              ; $0D:8F4C: 29 FF 00    ;
CODE_0D8F4F:    TAX                     ; $0D:8F4F: AA          ;
CODE_0D8F50:    LDA $06A1,x             ; $0D:8F50: BD A1 06    ;
CODE_0D8F53:    AND #$003F              ; $0D:8F53: 29 3F 00    ;
CODE_0D8F56:    ASL A                   ; $0D:8F56: 0A          ;
CODE_0D8F57:    ASL A                   ; $0D:8F57: 0A          ;
CODE_0D8F58:    ASL A                   ; $0D:8F58: 0A          ;
CODE_0D8F59:    STA $03                 ; $0D:8F59: 85 03       ;
CODE_0D8F5B:    LDA $071F               ; $0D:8F5B: AD 1F 07    ;
CODE_0D8F5E:    AND #$0001              ; $0D:8F5E: 29 01 00    ;
CODE_0D8F61:    EOR #$0001              ; $0D:8F61: 49 01 00    ;
CODE_0D8F64:    ASL A                   ; $0D:8F64: 0A          ;
CODE_0D8F65:    ASL A                   ; $0D:8F65: 0A          ;
CODE_0D8F66:    ADC $03                 ; $0D:8F66: 65 03       ;
CODE_0D8F68:    TAY                     ; $0D:8F68: A8          ;
CODE_0D8F69:    LDX $00                 ; $0D:8F69: A6 00       ;
CODE_0D8F6B:    LDA ($06),y             ; $0D:8F6B: B1 06       ;
CODE_0D8F6D:    STA $1A0E,x             ; $0D:8F6D: 9D 0E 1A    ;
CODE_0D8F70:    INY                     ; $0D:8F70: C8          ;
CODE_0D8F71:    INY                     ; $0D:8F71: C8          ;
CODE_0D8F72:    LDA ($06),y             ; $0D:8F72: B1 06       ;
CODE_0D8F74:    STA $1A10,x             ; $0D:8F74: 9D 10 1A    ;
CODE_0D8F77:    INC $00                 ; $0D:8F77: E6 00       ;
CODE_0D8F79:    INC $00                 ; $0D:8F79: E6 00       ;
CODE_0D8F7B:    INC $00                 ; $0D:8F7B: E6 00       ;
CODE_0D8F7D:    INC $00                 ; $0D:8F7D: E6 00       ;
CODE_0D8F7F:    SEP #$30                ; $0D:8F7F: E2 30       ;
CODE_0D8F81:    LDX $02                 ; $0D:8F81: A6 02       ;
CODE_0D8F83:    INX                     ; $0D:8F83: E8          ;
CODE_0D8F84:    CPX #$0D                ; $0D:8F84: E0 0D       ;
CODE_0D8F86:    BCS CODE_0D8F8B         ; $0D:8F86: B0 03       ;
CODE_0D8F88:    JMP CODE_0D8F34         ; $0D:8F88: 4C 34 8F    ;

CODE_0D8F8B:    REP #$30                ; $0D:8F8B: C2 30       ;
CODE_0D8F8D:    LDY $1A00               ; $0D:8F8D: AC 00 1A    ;
CODE_0D8F90:    LDA $1A0E,y             ; $0D:8F90: B9 0E 1A    ;
CODE_0D8F93:    CMP #$18A2              ; $0D:8F93: C9 A2 18    ;
CODE_0D8F96:    BEQ CODE_0D8F9D         ; $0D:8F96: F0 05       ;
CODE_0D8F98:    CMP #$18A3              ; $0D:8F98: C9 A3 18    ;
CODE_0D8F9B:    BNE CODE_0D8FA9         ; $0D:8F9B: D0 0C       ;
CODE_0D8F9D:    STA $1A06,y             ; $0D:8F9D: 99 06 1A    ;
CODE_0D8FA0:    STA $1A08,y             ; $0D:8FA0: 99 08 1A    ;
CODE_0D8FA3:    STA $1A0A,y             ; $0D:8FA3: 99 0A 1A    ;
CODE_0D8FA6:    STA $1A0C,y             ; $0D:8FA6: 99 0C 1A    ;
CODE_0D8FA9:    LDA $00                 ; $0D:8FA9: A5 00       ;
CODE_0D8FAB:    CLC                     ; $0D:8FAB: 18          ;
CODE_0D8FAC:    ADC #$000E              ; $0D:8FAC: 69 0E 00    ;
CODE_0D8FAF:    TAY                     ; $0D:8FAF: A8          ;
CODE_0D8FB0:    LDA #$FFFF              ; $0D:8FB0: A9 FF FF    ;
CODE_0D8FB3:    STA $1A02,y             ; $0D:8FB3: 99 02 1A    ;
CODE_0D8FB6:    STY $1A00               ; $0D:8FB6: 8C 00 1A    ;
CODE_0D8FB9:    LDA $0743               ; $0D:8FB9: AD 43 07    ;
CODE_0D8FBC:    AND #$00FF              ; $0D:8FBC: 29 FF 00    ;
CODE_0D8FBF:    BNE CODE_0D9007         ; $0D:8FBF: D0 46       ;
CODE_0D8FC1:    LDA $5C                 ; $0D:8FC1: A5 5C       ;
CODE_0D8FC3:    AND #$00FF              ; $0D:8FC3: 29 FF 00    ;
CODE_0D8FC6:    BEQ CODE_0D9007         ; $0D:8FC6: F0 3F       ;
CODE_0D8FC8:    CMP #$0003              ; $0D:8FC8: C9 03 00    ;
CODE_0D8FCB:    BEQ CODE_0D9007         ; $0D:8FCB: F0 3A       ;
CODE_0D8FCD:    LDA $19F8,y             ; $0D:8FCD: B9 F8 19    ;
CODE_0D8FD0:    CMP #$086A              ; $0D:8FD0: C9 6A 08    ;
CODE_0D8FD3:    BEQ CODE_0D8FDA         ; $0D:8FD3: F0 05       ;
CODE_0D8FD5:    CMP #$0863              ; $0D:8FD5: C9 63 08    ;
CODE_0D8FD8:    BNE CODE_0D8FDD         ; $0D:8FD8: D0 03       ;
CODE_0D8FDA:    INC $0ECE               ; $0D:8FDA: EE CE 0E    ;
CODE_0D8FDD:    LDA $19F8,y             ; $0D:8FDD: B9 F8 19    ;
CODE_0D8FE0:    CMP #$0024              ; $0D:8FE0: C9 24 00    ;
CODE_0D8FE3:    BEQ CODE_0D8FFA         ; $0D:8FE3: F0 15       ;
CODE_0D8FE5:    CMP #$10A4              ; $0D:8FE5: C9 A4 10    ;
CODE_0D8FE8:    BEQ CODE_0D8FFA         ; $0D:8FE8: F0 10       ;
CODE_0D8FEA:    CMP #$0A08              ; $0D:8FEA: C9 08 0A    ;
CODE_0D8FED:    BNE CODE_0D9003         ; $0D:8FED: D0 14       ;
CODE_0D8FEF:    LDA $0ECE               ; $0D:8FEF: AD CE 0E    ;
CODE_0D8FF2:    AND #$FF00              ; $0D:8FF2: 29 00 FF    ;
CODE_0D8FF5:    STA $0ECE               ; $0D:8FF5: 8D CE 0E    ;
CODE_0D8FF8:    BRA CODE_0D9003         ; $0D:8FF8: 80 09       ;

CODE_0D8FFA:    LDA $0ECE               ; $0D:8FFA: AD CE 0E    ;
CODE_0D8FFD:    ORA #$0100              ; $0D:8FFD: 09 00 01    ;
CODE_0D9000:    STA $0ECE               ; $0D:9000: 8D CE 0E    ;
CODE_0D9003:    JSL CODE_0E87FF         ; $0D:9003: 22 FF 87 0E ;
CODE_0D9007:    SEP #$30                ; $0D:9007: E2 30       ;
CODE_0D9009:    INC $0721               ; $0D:9009: EE 21 07    ;
CODE_0D900C:    LDA $0721               ; $0D:900C: AD 21 07    ;
CODE_0D900F:    AND #$1F                ; $0D:900F: 29 1F       ;
CODE_0D9011:    BNE CODE_0D901E         ; $0D:9011: D0 0B       ;
CODE_0D9013:    STZ $0721               ; $0D:9013: 9C 21 07    ;
CODE_0D9016:    LDA $0720               ; $0D:9016: AD 20 07    ;
CODE_0D9019:    EOR #$04                ; $0D:9019: 49 04       ;
CODE_0D901B:    STA $0720               ; $0D:901B: 8D 20 07    ;
CODE_0D901E:    LDA #$06                ; $0D:901E: A9 06       ;
CODE_0D9020:    STA $0773               ; $0D:9020: 8D 73 07    ;
CODE_0D9023:    RTS                     ; $0D:9023: 60          ;

CODE_0D9024:    RTS                     ; $0D:9024: 60          ;

CODE_0D9025:    RTS                     ; $0D:9025: 60          ;

DATA_0D9026:        db $45,$0C,$45,$0C,$47,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $57,$0C,$58,$0C,$59,$0C,$5A,$0C
                    db $24,$00,$24,$00,$24,$00,$24,$00

CODE_0D9046:    LDY $1700               ; $0D:9046: AC 00 17    ;
CODE_0D9049:    INY                     ; $0D:9049: C8          ;
CODE_0D904A:    LDA #$03                ; $0D:904A: A9 03       ;
CODE_0D904C:    JSR CODE_0D9094         ; $0D:904C: 20 94 90    ;
CODE_0D904F:    LDA #$06                ; $0D:904F: A9 06       ;
CODE_0D9051:    STA $0773               ; $0D:9051: 8D 73 07    ;
CODE_0D9054:    JMP CODE_0D9085         ; $0D:9054: 4C 85 90    ;

CODE_0D9057:    JSR CODE_0D9063         ; $0D:9057: 20 63 90    ;
CODE_0D905A:    INC $03F2               ; $0D:905A: EE F2 03    ;
CODE_0D905D:    DEC $03EE,x             ; $0D:905D: DE EE 03    ;
CODE_0D9060:    RTS                     ; $0D:9060: 60          ;

CODE_0D9061:    LDA #$00                ; $0D:9061: A9 00       ;
CODE_0D9063:    LDY #$03                ; $0D:9063: A0 03       ;
CODE_0D9065:    CMP #$00                ; $0D:9065: C9 00       ;
CODE_0D9067:    BEQ CODE_0D907D         ; $0D:9067: F0 14       ;
CODE_0D9069:    LDY #$00                ; $0D:9069: A0 00       ;
CODE_0D906B:    CMP #$54                ; $0D:906B: C9 54       ;
CODE_0D906D:    BEQ CODE_0D907D         ; $0D:906D: F0 0E       ;
CODE_0D906F:    CMP #$49                ; $0D:906F: C9 49       ;
CODE_0D9071:    BEQ CODE_0D907D         ; $0D:9071: F0 0A       ;
CODE_0D9073:    INY                     ; $0D:9073: C8          ;
CODE_0D9074:    CMP #$5A                ; $0D:9074: C9 5A       ;
CODE_0D9076:    BEQ CODE_0D907D         ; $0D:9076: F0 05       ;
CODE_0D9078:    CMP #$4A                ; $0D:9078: C9 4A       ;
CODE_0D907A:    BEQ CODE_0D907D         ; $0D:907A: F0 01       ;
CODE_0D907C:    INY                     ; $0D:907C: C8          ;
CODE_0D907D:    TYA                     ; $0D:907D: 98          ;
CODE_0D907E:    LDY $1700               ; $0D:907E: AC 00 17    ;
CODE_0D9081:    INY                     ; $0D:9081: C8          ;
CODE_0D9082:    JSR CODE_0D9094         ; $0D:9082: 20 94 90    ;
CODE_0D9085:    REP #$20                ; $0D:9085: C2 20       ;
CODE_0D9087:    LDA $1700               ; $0D:9087: AD 00 17    ;
CODE_0D908A:    CLC                     ; $0D:908A: 18          ;
CODE_0D908B:    ADC #$0010              ; $0D:908B: 69 10 00    ;
CODE_0D908E:    STA $1700               ; $0D:908E: 8D 00 17    ;
CODE_0D9091:    SEP #$20                ; $0D:9091: E2 20       ;
CODE_0D9093:    RTS                     ; $0D:9093: 60          ;

CODE_0D9094:    STX $00                 ; $0D:9094: 86 00       ;
CODE_0D9096:    STY $01                 ; $0D:9096: 84 01       ;
CODE_0D9098:    ASL A                   ; $0D:9098: 0A          ;
CODE_0D9099:    ASL A                   ; $0D:9099: 0A          ;
CODE_0D909A:    ASL A                   ; $0D:909A: 0A          ;
CODE_0D909B:    TAX                     ; $0D:909B: AA          ;
CODE_0D909C:    LDY #$00                ; $0D:909C: A0 00       ;
CODE_0D909E:    LDA $06                 ; $0D:909E: A5 06       ;
CODE_0D90A0:    CMP #$D0                ; $0D:90A0: C9 D0       ;
CODE_0D90A2:    BCC CODE_0D90A6         ; $0D:90A2: 90 02       ;
CODE_0D90A4:    LDY #$04                ; $0D:90A4: A0 04       ;
CODE_0D90A6:    STY $03                 ; $0D:90A6: 84 03       ;
CODE_0D90A8:    AND #$0F                ; $0D:90A8: 29 0F       ;
CODE_0D90AA:    ASL A                   ; $0D:90AA: 0A          ;
CODE_0D90AB:    STA $04                 ; $0D:90AB: 85 04       ;
CODE_0D90AD:    STZ $05                 ; $0D:90AD: 64 05       ;
CODE_0D90AF:    LDA $02                 ; $0D:90AF: A5 02       ;
CODE_0D90B1:    CLC                     ; $0D:90B1: 18          ;
CODE_0D90B2:    ADC #$20                ; $0D:90B2: 69 20       ;
CODE_0D90B4:    ASL A                   ; $0D:90B4: 0A          ;
CODE_0D90B5:    ROL $05                 ; $0D:90B5: 26 05       ;
CODE_0D90B7:    ASL A                   ; $0D:90B7: 0A          ;
CODE_0D90B8:    ROL $05                 ; $0D:90B8: 26 05       ;
CODE_0D90BA:    ADC $04                 ; $0D:90BA: 65 04       ;
CODE_0D90BC:    STA $04                 ; $0D:90BC: 85 04       ;
CODE_0D90BE:    LDA $05                 ; $0D:90BE: A5 05       ;
CODE_0D90C0:    ADC $03                 ; $0D:90C0: 65 03       ;
CODE_0D90C2:    STA $05                 ; $0D:90C2: 85 05       ;
CODE_0D90C4:    LDY $01                 ; $0D:90C4: A4 01       ;
CODE_0D90C6:    REP #$30                ; $0D:90C6: C2 30       ;
CODE_0D90C8:    TYA                     ; $0D:90C8: 98          ;
CODE_0D90C9:    AND #$00FF              ; $0D:90C9: 29 FF 00    ;
CODE_0D90CC:    TAY                     ; $0D:90CC: A8          ;
CODE_0D90CD:    TXA                     ; $0D:90CD: 8A          ;
CODE_0D90CE:    AND #$00FF              ; $0D:90CE: 29 FF 00    ;
CODE_0D90D1:    TAX                     ; $0D:90D1: AA          ;
CODE_0D90D2:    LDA $04                 ; $0D:90D2: A5 04       ;
CODE_0D90D4:    XBA                     ; $0D:90D4: EB          ;
CODE_0D90D5:    STA $1701,y             ; $0D:90D5: 99 01 17    ;
CODE_0D90D8:    CLC                     ; $0D:90D8: 18          ;
CODE_0D90D9:    ADC #$2000              ; $0D:90D9: 69 00 20    ;
CODE_0D90DC:    STA $1709,y             ; $0D:90DC: 99 09 17    ;
CODE_0D90DF:    LDA #$0300              ; $0D:90DF: A9 00 03    ;
CODE_0D90E2:    STA $1703,y             ; $0D:90E2: 99 03 17    ;
CODE_0D90E5:    STA $170B,y             ; $0D:90E5: 99 0B 17    ;
CODE_0D90E8:    LDA DATA_0D9026,x       ; $0D:90E8: BD 26 90    ;
CODE_0D90EB:    STA $1705,y             ; $0D:90EB: 99 05 17    ;
CODE_0D90EE:    LDA DATA_0D9026+2,x     ; $0D:90EE: BD 28 90    ;
CODE_0D90F1:    STA $1707,y             ; $0D:90F1: 99 07 17    ;
CODE_0D90F4:    LDA DATA_0D9026+4,x     ; $0D:90F4: BD 2A 90    ;
CODE_0D90F7:    STA $170D,y             ; $0D:90F7: 99 0D 17    ;
CODE_0D90FA:    LDA DATA_0D9026+6,x     ; $0D:90FA: BD 2C 90    ;
CODE_0D90FD:    STA $170F,y             ; $0D:90FD: 99 0F 17    ;
CODE_0D9100:    LDA #$FFFF              ; $0D:9100: A9 FF FF    ;
CODE_0D9103:    STA $1711,y             ; $0D:9103: 99 11 17    ;
CODE_0D9106:    SEP #$30                ; $0D:9106: E2 30       ;
CODE_0D9108:    LDX $00                 ; $0D:9108: A6 00       ;
CODE_0D910A:    RTS                     ; $0D:910A: 60          ;

DATA_0D910B:        db $13,$93,$5B,$9B,$91,$92,$94,$94
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $27,$00,$27,$00,$27,$00,$27,$00
                    db $24,$00,$E3,$09,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$E0,$09
                    db $24,$00,$24,$00,$24,$00,$D2,$08
                    db $D0,$08,$D3,$08,$D1,$08,$D4,$08
                    db $24,$00,$D5,$08,$24,$00,$24,$00
                    db $24,$00,$20,$2A,$24,$00,$20,$2A
                    db $24,$00,$81,$28,$24,$00,$20,$2A
                    db $24,$00,$20,$2A,$24,$00,$80,$28
                    db $24,$00,$7F,$18,$7F,$18,$24,$00
                    db $B8,$08,$BA,$08,$B9,$08,$BB,$08
                    db $B8,$08,$BC,$08,$B9,$08,$BD,$08
                    db $BA,$08,$BC,$08,$BB,$08,$BD,$08
                    db $04,$12,$10,$12,$05,$12,$11,$12
                    db $06,$12,$12,$12,$05,$12,$11,$12
                    db $06,$12,$12,$12,$07,$12,$13,$12
                    db $04,$12,$10,$12,$07,$12,$13,$12
                    db $00,$12,$10,$12,$01,$12,$11,$12
                    db $02,$12,$12,$12,$01,$12,$11,$12
                    db $02,$12,$12,$12,$03,$12,$13,$12
                    db $00,$12,$10,$12,$03,$12,$13,$12
                    db $60,$08,$64,$08,$61,$08,$65,$08
                    db $62,$08,$66,$08,$63,$08,$67,$08
                    db $60,$08,$64,$08,$61,$08,$65,$08
                    db $62,$08,$66,$08,$63,$08,$67,$08
                    db $68,$08,$68,$08,$69,$08,$69,$08
                    db $97,$08,$97,$08,$6A,$08,$6A,$08
                    db $64,$88,$60,$88,$65,$88,$61,$88
                    db $66,$88,$62,$88,$67,$88,$63,$88
                    db $4B,$10,$4C,$10,$4D,$10,$4E,$10
                    db $4D,$10,$4F,$10,$4D,$10,$4A,$10
                    db $4D,$10,$4E,$10,$50,$10,$51,$10
                    db $6B,$18,$70,$18,$2C,$18,$2D,$18
                    db $6C,$18,$71,$18,$6D,$18,$72,$18
                    db $6E,$18,$73,$18,$6F,$18,$74,$18
                    db $6C,$38,$71,$38,$6D,$38,$72,$38
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
                    db $14,$12,$16,$12,$15,$12,$17,$12
                    db $BE,$0C,$BE,$0C,$BF,$0C,$BF,$0C
                    db $75,$18,$9F,$18,$76,$18,$9F,$58
                    db $9F,$18,$9F,$18,$9F,$58,$9F,$58
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $27,$0C,$27,$0C,$27,$0C,$27,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
                    db $08,$0A,$18,$0A,$09,$0A,$19,$0A
                    db $0A,$0A,$1A,$0A,$0B,$0A,$1B,$0A
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C
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
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $AB,$0C,$AC,$0C,$AD,$0C,$AE,$0C
                    db $E6,$09,$F6,$09,$E7,$09,$F7,$09
                    db $E8,$09,$F8,$09,$E9,$09,$F9,$09
                    db $E6,$09,$F6,$09,$E9,$09,$F9,$09
                    db $CA,$09,$DA,$09,$CB,$09,$DB,$09
                    db $EA,$09,$FA,$09,$EB,$09,$FB,$09
                    db $C6,$09,$D6,$09,$C7,$09,$D7,$09
                    db $CA,$29,$DA,$29,$CB,$29,$DB,$29
                    db $21,$32,$24,$00,$21,$32,$24,$00
                    db $26,$0E,$28,$0E,$27,$0E,$29,$0E
                    db $2A,$0E,$2C,$0E,$2B,$0E,$2D,$0E
                    db $2A,$0C,$2A,$0C,$40,$0C,$40,$0C
                    db $24,$00,$24,$00,$24,$00,$24,$00
                    db $24,$00,$47,$0C,$24,$00,$47,$0C
                    db $82,$10,$84,$10,$83,$10,$85,$10
                    db $16,$09,$18,$09,$17,$09,$19,$09
                    db $18,$09,$19,$09,$18,$09,$19,$09
                    db $82,$30,$84,$30,$83,$30,$85,$30
                    db $16,$29,$18,$29,$17,$29,$19,$29
                    db $24,$0C,$47,$0C,$24,$0C,$47,$0C
                    db $86,$08,$8A,$08,$87,$08,$8B,$08
                    db $8E,$08,$91,$08,$8F,$08,$92,$08
                    db $24,$00,$2F,$00,$24,$00,$3D,$00
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

CODE_0D9693:    ASL A                   ; $0D:9693: 0A          ;
CODE_0D9694:    TAY                     ; $0D:9694: A8          ;
CODE_0D9695:    PLA                     ; $0D:9695: 68          ;
CODE_0D9696:    STA $04                 ; $0D:9696: 85 04       ;
CODE_0D9698:    PLA                     ; $0D:9698: 68          ;
CODE_0D9699:    STA $05                 ; $0D:9699: 85 05       ;
CODE_0D969B:    INY                     ; $0D:969B: C8          ;
CODE_0D969C:    LDA ($04),y             ; $0D:969C: B1 04       ;
CODE_0D969E:    STA $06                 ; $0D:969E: 85 06       ;
CODE_0D96A0:    INY                     ; $0D:96A0: C8          ;
CODE_0D96A1:    LDA ($04),y             ; $0D:96A1: B1 04       ;
CODE_0D96A3:    STA $07                 ; $0D:96A3: 85 07       ;
CODE_0D96A5:    JMP ($0006)             ; $0D:96A5: 6C 06 00    ;

CODE_0D96A8:    LDA $4212               ; $0D:96A8: AD 12 42    ;
CODE_0D96AB:    LSR A                   ; $0D:96AB: 4A          ;
CODE_0D96AC:    BCS CODE_0D96A8         ; $0D:96AC: B0 FA       ;
CODE_0D96AE:    STZ $4016               ; $0D:96AE: 9C 16 40    ;
CODE_0D96B1:    LDA $701FF4             ; $0D:96B1: AF F4 1F 70 ;
CODE_0D96B5:    TAX                     ; $0D:96B5: AA          ;
CODE_0D96B6:    LDA $4218,x             ; $0D:96B6: BD 18 42    ;
CODE_0D96B9:    STA $0FF8               ; $0D:96B9: 8D F8 0F    ;
CODE_0D96BC:    TAY                     ; $0D:96BC: A8          ;
CODE_0D96BD:    EOR $0FFD               ; $0D:96BD: 4D FD 0F    ;
CODE_0D96C0:    AND $0FF8               ; $0D:96C0: 2D F8 0F    ;
CODE_0D96C3:    STA $0FFA               ; $0D:96C3: 8D FA 0F    ;
CODE_0D96C6:    STY $0FFD               ; $0D:96C6: 8C FD 0F    ;
CODE_0D96C9:    LDA $4219,x             ; $0D:96C9: BD 19 42    ;
CODE_0D96CC:    STA $0FF4               ; $0D:96CC: 8D F4 0F    ;
CODE_0D96CF:    TAY                     ; $0D:96CF: A8          ;
CODE_0D96D0:    EOR $0FFC               ; $0D:96D0: 4D FC 0F    ;
CODE_0D96D3:    AND $0FF4               ; $0D:96D3: 2D F4 0F    ;
CODE_0D96D6:    STA $0FF6               ; $0D:96D6: 8D F6 0F    ;
CODE_0D96D9:    STY $0FFC               ; $0D:96D9: 8C FC 0F    ;
CODE_0D96DC:    RTS                     ; $0D:96DC: 60          ;

CODE_0D96DD:    STZ $00                 ; $0D:96DD: 64 00       ;
CODE_0D96DF:    REP #$20                ; $0D:96DF: C2 20       ;
CODE_0D96E1:    STZ $2102               ; $0D:96E1: 9C 02 21    ;
CODE_0D96E4:    LDA #$0004              ; $0D:96E4: A9 04 00    ;
CODE_0D96E7:    STA $01                 ; $0D:96E7: 85 01       ;
CODE_0D96E9:    LDA #$0008              ; $0D:96E9: A9 08 00    ;
CODE_0D96EC:    STA $03                 ; $0D:96EC: 85 03       ;
CODE_0D96EE:    LDA #$0220              ; $0D:96EE: A9 20 02    ;
CODE_0D96F1:    STA $05                 ; $0D:96F1: 85 05       ;
CODE_0D96F3:    LDX #$01                ; $0D:96F3: A2 01       ;
CODE_0D96F5:    STX $420B               ; $0D:96F5: 8E 0B 42    ;
CODE_0D96F8:    SEP #$20                ; $0D:96F8: E2 20       ;
CODE_0D96FA:    LDA #$80                ; $0D:96FA: A9 80       ;
CODE_0D96FC:    STA $2103               ; $0D:96FC: 8D 03 21    ;
CODE_0D96FF:    STZ $2102               ; $0D:96FF: 9C 02 21    ;
CODE_0D9702:    LDA $0B76               ; $0D:9702: AD 76 0B    ;
CODE_0D9705:    BNE CODE_0D9714         ; $0D:9705: D0 0D       ;
CODE_0D9707:    JSR CODE_0D9755         ; $0D:9707: 20 55 97    ;
CODE_0D970A:    LDA $028C               ; $0D:970A: AD 8C 02    ;
CODE_0D970D:    BNE CODE_0D9751         ; $0D:970D: D0 42       ;
CODE_0D970F:    LDA $028D               ; $0D:970F: AD 8D 02    ;
CODE_0D9712:    BEQ CODE_0D9751         ; $0D:9712: F0 3D       ;
CODE_0D9714:    REP #$20                ; $0D:9714: C2 20       ;
CODE_0D9716:    LDA $028A               ; $0D:9716: AD 8A 02    ;
CODE_0D9719:    STA $2116               ; $0D:9719: 8D 16 21    ;
CODE_0D971C:    LDA #$1801              ; $0D:971C: A9 01 18    ;
CODE_0D971F:    STA $00                 ; $0D:971F: 85 00       ;
CODE_0D9721:    LDA $0285               ; $0D:9721: AD 85 02    ;
CODE_0D9724:    STA $02                 ; $0D:9724: 85 02       ;
CODE_0D9726:    LDY $0287               ; $0D:9726: AC 87 02    ;
CODE_0D9729:    STY $04                 ; $0D:9729: 84 04       ;
CODE_0D972B:    LDA $0288               ; $0D:972B: AD 88 02    ;
CODE_0D972E:    STA $05                 ; $0D:972E: 85 05       ;
CODE_0D9730:    STX $420B               ; $0D:9730: 8E 0B 42    ;
CODE_0D9733:    SEP #$20                ; $0D:9733: E2 20       ;
CODE_0D9735:    LDA $0B76               ; $0D:9735: AD 76 0B    ;
CODE_0D9738:    BEQ CODE_0D9751         ; $0D:9738: F0 17       ;
CODE_0D973A:    DEC $0B76               ; $0D:973A: CE 76 0B    ;
CODE_0D973D:    BEQ CODE_0D9751         ; $0D:973D: F0 12       ;
CODE_0D973F:    LDA $0286               ; $0D:973F: AD 86 02    ;
CODE_0D9742:    CLC                     ; $0D:9742: 18          ;
CODE_0D9743:    ADC #$08                ; $0D:9743: 69 08       ;
CODE_0D9745:    STA $0286               ; $0D:9745: 8D 86 02    ;
CODE_0D9748:    LDA $028B               ; $0D:9748: AD 8B 02    ;
CODE_0D974B:    CLC                     ; $0D:974B: 18          ;
CODE_0D974C:    ADC #$04                ; $0D:974C: 69 04       ;
CODE_0D974E:    STA $028B               ; $0D:974E: 8D 8B 02    ;
CODE_0D9751:    STZ $028C               ; $0D:9751: 9C 8C 02    ;
CODE_0D9754:    RTS                     ; $0D:9754: 60          ;

CODE_0D9755:    LDA $028E               ; $0D:9755: AD 8E 02    ;
CODE_0D9758:    BEQ CODE_0D977B         ; $0D:9758: F0 21       ;
CODE_0D975A:    REP #$20                ; $0D:975A: C2 20       ;
CODE_0D975C:    LDA $0295               ; $0D:975C: AD 95 02    ;
CODE_0D975F:    STA $2116               ; $0D:975F: 8D 16 21    ;
CODE_0D9762:    LDA #$1801              ; $0D:9762: A9 01 18    ;
CODE_0D9765:    STA $00                 ; $0D:9765: 85 00       ;
CODE_0D9767:    LDA $028F               ; $0D:9767: AD 8F 02    ;
CODE_0D976A:    STA $02                 ; $0D:976A: 85 02       ;
CODE_0D976C:    LDY $0291               ; $0D:976C: AC 91 02    ;
CODE_0D976F:    STY $04                 ; $0D:976F: 84 04       ;
CODE_0D9771:    LDA $0293               ; $0D:9771: AD 93 02    ;
CODE_0D9774:    STA $05                 ; $0D:9774: 85 05       ;
CODE_0D9776:    STX $420B               ; $0D:9776: 8E 0B 42    ;
CODE_0D9779:    SEP #$20                ; $0D:9779: E2 20       ;
CODE_0D977B:    RTS                     ; $0D:977B: 60          ;

CODE_0D977C:    REP #$10                ; $0D:977C: C2 10       ;
CODE_0D977E:    STZ $06                 ; $0D:977E: 64 06       ;
CODE_0D9780:    LDY #$0000              ; $0D:9780: A0 00 00    ;
CODE_0D9783:    LDA [$00],y             ; $0D:9783: B7 00       ;
CODE_0D9785:    BPL CODE_0D978A         ; $0D:9785: 10 03       ;
CODE_0D9787:    SEP #$30                ; $0D:9787: E2 30       ;
CODE_0D9789:    RTS                     ; $0D:9789: 60          ;

CODE_0D978A:    STA $04                 ; $0D:978A: 85 04       ;
CODE_0D978C:    INY                     ; $0D:978C: C8          ;
CODE_0D978D:    LDA [$00],y             ; $0D:978D: B7 00       ;
CODE_0D978F:    STA $03                 ; $0D:978F: 85 03       ;
CODE_0D9791:    INY                     ; $0D:9791: C8          ;
CODE_0D9792:    LDA [$00],y             ; $0D:9792: B7 00       ;
CODE_0D9794:    AND #$80                ; $0D:9794: 29 80       ;
CODE_0D9796:    ASL A                   ; $0D:9796: 0A          ;
CODE_0D9797:    ROL A                   ; $0D:9797: 2A          ;
CODE_0D9798:    STA $07                 ; $0D:9798: 85 07       ;
CODE_0D979A:    LDA [$00],y             ; $0D:979A: B7 00       ;
CODE_0D979C:    AND #$40                ; $0D:979C: 29 40       ;
CODE_0D979E:    STA $05                 ; $0D:979E: 85 05       ;
CODE_0D97A0:    LSR A                   ; $0D:97A0: 4A          ;
CODE_0D97A1:    LSR A                   ; $0D:97A1: 4A          ;
CODE_0D97A2:    LSR A                   ; $0D:97A2: 4A          ;
CODE_0D97A3:    ORA #$01                ; $0D:97A3: 09 01       ;
CODE_0D97A5:    STA $4310               ; $0D:97A5: 8D 10 43    ;
CODE_0D97A8:    LDA #$18                ; $0D:97A8: A9 18       ;
CODE_0D97AA:    STA $4311               ; $0D:97AA: 8D 11 43    ;
CODE_0D97AD:    REP #$20                ; $0D:97AD: C2 20       ;
CODE_0D97AF:    LDA $03                 ; $0D:97AF: A5 03       ;
CODE_0D97B1:    STA $2116               ; $0D:97B1: 8D 16 21    ;
CODE_0D97B4:    LDA [$00],y             ; $0D:97B4: B7 00       ;
CODE_0D97B6:    XBA                     ; $0D:97B6: EB          ;
CODE_0D97B7:    AND #$3FFF              ; $0D:97B7: 29 FF 3F    ;
CODE_0D97BA:    TAX                     ; $0D:97BA: AA          ;
CODE_0D97BB:    INX                     ; $0D:97BB: E8          ;
CODE_0D97BC:    STX $4315               ; $0D:97BC: 8E 15 43    ;
CODE_0D97BF:    INY                     ; $0D:97BF: C8          ;
CODE_0D97C0:    INY                     ; $0D:97C0: C8          ;
CODE_0D97C1:    TYA                     ; $0D:97C1: 98          ;
CODE_0D97C2:    CLC                     ; $0D:97C2: 18          ;
CODE_0D97C3:    ADC $00                 ; $0D:97C3: 65 00       ;
CODE_0D97C5:    STA $4312               ; $0D:97C5: 8D 12 43    ;
CODE_0D97C8:    LDA $05                 ; $0D:97C8: A5 05       ;
CODE_0D97CA:    BEQ CODE_0D9800         ; $0D:97CA: F0 34       ;
CODE_0D97CC:    INX                     ; $0D:97CC: E8          ;
CODE_0D97CD:    TXA                     ; $0D:97CD: 8A          ;
CODE_0D97CE:    LSR A                   ; $0D:97CE: 4A          ;
CODE_0D97CF:    TAX                     ; $0D:97CF: AA          ;
CODE_0D97D0:    STX $4315               ; $0D:97D0: 8E 15 43    ;
CODE_0D97D3:    SEP #$20                ; $0D:97D3: E2 20       ;
CODE_0D97D5:    LDA $05                 ; $0D:97D5: A5 05       ;
CODE_0D97D7:    LSR A                   ; $0D:97D7: 4A          ;
CODE_0D97D8:    LSR A                   ; $0D:97D8: 4A          ;
CODE_0D97D9:    LSR A                   ; $0D:97D9: 4A          ;
CODE_0D97DA:    STA $4310               ; $0D:97DA: 8D 10 43    ;
CODE_0D97DD:    LDA $07                 ; $0D:97DD: A5 07       ;
CODE_0D97DF:    STA $2115               ; $0D:97DF: 8D 15 21    ;
CODE_0D97E2:    LDA #$02                ; $0D:97E2: A9 02       ;
CODE_0D97E4:    STA $420B               ; $0D:97E4: 8D 0B 42    ;
CODE_0D97E7:    LDA #$19                ; $0D:97E7: A9 19       ;
CODE_0D97E9:    STA $4311               ; $0D:97E9: 8D 11 43    ;
CODE_0D97EC:    REP #$21                ; $0D:97EC: C2 21       ;
CODE_0D97EE:    TYA                     ; $0D:97EE: 98          ;
CODE_0D97EF:    ADC $00                 ; $0D:97EF: 65 00       ;
CODE_0D97F1:    INC A                   ; $0D:97F1: 1A          ;
CODE_0D97F2:    STA $4312               ; $0D:97F2: 8D 12 43    ;
CODE_0D97F5:    LDA $03                 ; $0D:97F5: A5 03       ;
CODE_0D97F7:    STA $2116               ; $0D:97F7: 8D 16 21    ;
CODE_0D97FA:    STX $4315               ; $0D:97FA: 8E 15 43    ;
CODE_0D97FD:    LDX #$0002              ; $0D:97FD: A2 02 00    ;
CODE_0D9800:    STX $03                 ; $0D:9800: 86 03       ;
CODE_0D9802:    TYA                     ; $0D:9802: 98          ;
CODE_0D9803:    CLC                     ; $0D:9803: 18          ;
CODE_0D9804:    ADC $03                 ; $0D:9804: 65 03       ;
CODE_0D9806:    TAY                     ; $0D:9806: A8          ;
CODE_0D9807:    SEP #$20                ; $0D:9807: E2 20       ;
CODE_0D9809:    LDA $07                 ; $0D:9809: A5 07       ;
CODE_0D980B:    ORA #$80                ; $0D:980B: 09 80       ;
CODE_0D980D:    STA $2115               ; $0D:980D: 8D 15 21    ;
CODE_0D9810:    LDA #$02                ; $0D:9810: A9 02       ;
CODE_0D9812:    STA $420B               ; $0D:9812: 8D 0B 42    ;
CODE_0D9815:    LDA [$00],y             ; $0D:9815: B7 00       ;
CODE_0D9817:    BMI CODE_0D981C         ; $0D:9817: 30 03       ;
CODE_0D9819:    JMP CODE_0D978A         ; $0D:9819: 4C 8A 97    ;

CODE_0D981C:    SEP #$30                ; $0D:981C: E2 30       ;
CODE_0D981E:    RTS                     ; $0D:981E: 60          ;

DATA_0D981F:        db $EF,$00,$06,$00,$62,$00,$06,$00 ;
                    db $62,$00,$06,$00,$6D,$00,$02,$00 ;
                    db $6D,$00,$02,$00,$7A,$00,$03,$00 ;

DATA_0D9837:        db $06,$0C,$0C,$18,$18,$24 ;

CODE_0D983D:    STA $00                 ; $0D:983D: 85 00       ;
CODE_0D983F:    JSR CODE_0D9848         ; $0D:983F: 20 48 98    ;
CODE_0D9842:    LDA $00                 ; $0D:9842: A5 00       ;
CODE_0D9844:    LSR A                   ; $0D:9844: 4A          ;
CODE_0D9845:    LSR A                   ; $0D:9845: 4A          ;
CODE_0D9846:    LSR A                   ; $0D:9846: 4A          ;
CODE_0D9847:    LSR A                   ; $0D:9847: 4A          ;
CODE_0D9848:    INC A                   ; $0D:9848: 1A          ;
CODE_0D9849:    AND #$0F                ; $0D:9849: 29 0F       ;
CODE_0D984B:    CMP #$06                ; $0D:984B: C9 06       ;
CODE_0D984D:    BCS CODE_0D98A9         ; $0D:984D: B0 5A       ;
CODE_0D984F:    PHA                     ; $0D:984F: 48          ;
CODE_0D9850:    ASL A                   ; $0D:9850: 0A          ;
CODE_0D9851:    ASL A                   ; $0D:9851: 0A          ;
CODE_0D9852:    TAY                     ; $0D:9852: A8          ;
CODE_0D9853:    LDA #$58                ; $0D:9853: A9 58       ;
CODE_0D9855:    LDX #$20                ; $0D:9855: A2 20       ;
CODE_0D9857:    CPY #$00                ; $0D:9857: C0 00       ;
CODE_0D9859:    BNE CODE_0D985F         ; $0D:9859: D0 04       ;
CODE_0D985B:    LDA #$02                ; $0D:985B: A9 02       ;
CODE_0D985D:    LDX #$08                ; $0D:985D: A2 08       ;
CODE_0D985F:    STX $F9                 ; $0D:985F: 86 F9       ;
CODE_0D9861:    LDX $1700               ; $0D:9861: AE 00 17    ;
CODE_0D9864:    STA $1702,x             ; $0D:9864: 9D 02 17    ;
CODE_0D9867:    LDA DATA_0D981F,y       ; $0D:9867: B9 1F 98    ;
CODE_0D986A:    STA $1703,x             ; $0D:986A: 9D 03 17    ;
CODE_0D986D:    LDA DATA_0D981F+1,y     ; $0D:986D: B9 20 98    ;
CODE_0D9870:    STA $1704,x             ; $0D:9870: 9D 04 17    ;
CODE_0D9873:    LDA DATA_0D981F+2,y     ; $0D:9873: B9 21 98    ;
CODE_0D9876:    STA $03                 ; $0D:9876: 85 03       ;
CODE_0D9878:    ASL A                   ; $0D:9878: 0A          ;
CODE_0D9879:    DEC A                   ; $0D:9879: 3A          ;
CODE_0D987A:    STA $1705,x             ; $0D:987A: 9D 05 17    ;
CODE_0D987D:    STX $02                 ; $0D:987D: 86 02       ;
CODE_0D987F:    PLA                     ; $0D:987F: 68          ;
CODE_0D9880:    TAX                     ; $0D:9880: AA          ;
CODE_0D9881:    LDA DATA_0D9837,x       ; $0D:9881: BD 37 98    ;
CODE_0D9884:    SEC                     ; $0D:9884: 38          ;
CODE_0D9885:    SBC DATA_0D981F+2,y     ; $0D:9885: F9 21 98    ;
CODE_0D9888:    TAY                     ; $0D:9888: A8          ;
CODE_0D9889:    LDX $02                 ; $0D:9889: A6 02       ;
CODE_0D988B:    LDA $07C8,y             ; $0D:988B: B9 C8 07    ;
CODE_0D988E:    STA $1706,x             ; $0D:988E: 9D 06 17    ;
CODE_0D9891:    LDA $F9                 ; $0D:9891: A5 F9       ;
CODE_0D9893:    STA $1707,x             ; $0D:9893: 9D 07 17    ;
CODE_0D9896:    INX                     ; $0D:9896: E8          ;
CODE_0D9897:    INX                     ; $0D:9897: E8          ;
CODE_0D9898:    INY                     ; $0D:9898: C8          ;
CODE_0D9899:    DEC $03                 ; $0D:9899: C6 03       ;
CODE_0D989B:    BNE CODE_0D988B         ; $0D:989B: D0 EE       ;
CODE_0D989D:    LDA #$FF                ; $0D:989D: A9 FF       ;
CODE_0D989F:    STA $1706,x             ; $0D:989F: 9D 06 17    ;
CODE_0D98A2:    INX                     ; $0D:98A2: E8          ;
CODE_0D98A3:    INX                     ; $0D:98A3: E8          ;
CODE_0D98A4:    INX                     ; $0D:98A4: E8          ;
CODE_0D98A5:    INX                     ; $0D:98A5: E8          ;
CODE_0D98A6:    STX $1700               ; $0D:98A6: 8E 00 17    ;
CODE_0D98A9:    RTS                     ; $0D:98A9: 60          ;

CODE_0D98AA:    LDA $0770               ; $0D:98AA: AD 70 07    ;
CODE_0D98AD:    CMP #$00                ; $0D:98AD: C9 00       ;
CODE_0D98AF:    BEQ CODE_0D98C7         ; $0D:98AF: F0 16       ;
CODE_0D98B1:    LDX #$05                ; $0D:98B1: A2 05       ;
CODE_0D98B3:    LDA $0145,x             ; $0D:98B3: BD 45 01    ;
CODE_0D98B6:    CLC                     ; $0D:98B6: 18          ;
CODE_0D98B7:    ADC $07C8,y             ; $0D:98B7: 79 C8 07    ;
CODE_0D98BA:    BMI CODE_0D98D2         ; $0D:98BA: 30 16       ;
CODE_0D98BC:    CMP #$0A                ; $0D:98BC: C9 0A       ;
CODE_0D98BE:    BCS CODE_0D98D9         ; $0D:98BE: B0 19       ;
CODE_0D98C0:    STA $07C8,y             ; $0D:98C0: 99 C8 07    ;
CODE_0D98C3:    DEY                     ; $0D:98C3: 88          ;
CODE_0D98C4:    DEX                     ; $0D:98C4: CA          ;
CODE_0D98C5:    BPL CODE_0D98B3         ; $0D:98C5: 10 EC       ;
CODE_0D98C7:    LDA #$00                ; $0D:98C7: A9 00       ;
CODE_0D98C9:    LDX #$06                ; $0D:98C9: A2 06       ;
CODE_0D98CB:    STA $0144,x             ; $0D:98CB: 9D 44 01    ;
CODE_0D98CE:    DEX                     ; $0D:98CE: CA          ;
CODE_0D98CF:    BPL CODE_0D98CB         ; $0D:98CF: 10 FA       ;
CODE_0D98D1:    RTS                     ; $0D:98D1: 60          ;

CODE_0D98D2:    DEC $0144,x             ; $0D:98D2: DE 44 01    ;
CODE_0D98D5:    LDA #$09                ; $0D:98D5: A9 09       ;
CODE_0D98D7:    BNE CODE_0D98C0         ; $0D:98D7: D0 E7       ;
CODE_0D98D9:    CPX #$00                ; $0D:98D9: E0 00       ;
CODE_0D98DB:    BNE CODE_0D98E9         ; $0D:98DB: D0 0C       ;
CODE_0D98DD:    LDX #$05                ; $0D:98DD: A2 05       ;
CODE_0D98DF:    LDA #$09                ; $0D:98DF: A9 09       ;
CODE_0D98E1:    STA $07CE,x             ; $0D:98E1: 9D CE 07    ;
CODE_0D98E4:    DEX                     ; $0D:98E4: CA          ;
CODE_0D98E5:    BNE CODE_0D98E1         ; $0D:98E5: D0 FA       ;
CODE_0D98E7:    LDA #$13                ; $0D:98E7: A9 13       ;
CODE_0D98E9:    SEC                     ; $0D:98E9: 38          ;
CODE_0D98EA:    SBC #$0A                ; $0D:98EA: E9 0A       ;
CODE_0D98EC:    INC $0144,x             ; $0D:98EC: FE 44 01    ;
CODE_0D98EF:    JMP CODE_0D98C0         ; $0D:98EF: 4C C0 98    ;

CODE_0D98F2:    PHD                     ; $0D:98F2: 0B          ;
CODE_0D98F3:    LDA #$07                ; $0D:98F3: A9 07       ;
CODE_0D98F5:    XBA                     ; $0D:98F5: EB          ;
CODE_0D98F6:    LDA #$00                ; $0D:98F6: A9 00       ;
CODE_0D98F8:    TCD                     ; $0D:98F8: 5B          ;
CODE_0D98F9:    LDX #$05                ; $0D:98F9: A2 05       ;
CODE_0D98FB:    LDY #$05                ; $0D:98FB: A0 05       ;
CODE_0D98FD:    SEC                     ; $0D:98FD: 38          ;
CODE_0D98FE:    LDA $CE,x               ; $0D:98FE: B5 CE       ;
CODE_0D9900:    SBC $07C8,y             ; $0D:9900: F9 C8 07    ;
CODE_0D9903:    DEX                     ; $0D:9903: CA          ;
CODE_0D9904:    DEY                     ; $0D:9904: 88          ;
CODE_0D9905:    BPL CODE_0D98FE         ; $0D:9905: 10 F7       ;
CODE_0D9907:    BCC CODE_0D9916         ; $0D:9907: 90 0D       ;
CODE_0D9909:    INX                     ; $0D:9909: E8          ;
CODE_0D990A:    INY                     ; $0D:990A: C8          ;
CODE_0D990B:    LDA $CE,x               ; $0D:990B: B5 CE       ;
CODE_0D990D:    STA $07C8,y             ; $0D:990D: 99 C8 07    ;
CODE_0D9910:    INX                     ; $0D:9910: E8          ;
CODE_0D9911:    INY                     ; $0D:9911: C8          ;
CODE_0D9912:    CPY #$06                ; $0D:9912: C0 06       ;
CODE_0D9914:    BCC CODE_0D990B         ; $0D:9914: 90 F5       ;
CODE_0D9916:    PLD                     ; $0D:9916: 2B          ;
CODE_0D9917:    RTS                     ; $0D:9917: 60          ;

DATA_0D9918:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_0D9968:    LDA #$10                ; $0D:9968: A9 10       ;
CODE_0D996A:    STA $07B1               ; $0D:996A: 8D B1 07    ;
CODE_0D996D:    BNE CODE_0D9975         ; $0D:996D: D0 06       ;
CODE_0D996F:    LDA $07B1               ; $0D:996F: AD B1 07    ;
CODE_0D9972:    BEQ CODE_0D9975         ; $0D:9972: F0 01       ;
CODE_0D9974:    RTS                     ; $0D:9974: 60          ;

CODE_0D9975:    INC $0772               ; $0D:9975: EE 72 07    ;
CODE_0D9978:    RTS                     ; $0D:9978: 60          ;

DATA_0D9979:        db $42,$73,$0C,$2B

DATA_0D997D:        db $63,$73,$83

CODE_0D9980:    LDA $0FF6               ; $0D:9980: AD F6 0F    ;
CODE_0D9983:    AND #$0C                ; $0D:9983: 29 0C       ;
CODE_0D9985:    BEQ CODE_0D99A5         ; $0D:9985: F0 1E       ;
CODE_0D9987:    LDY #$01                ; $0D:9987: A0 01       ;
CODE_0D9989:    STY $1603               ; $0D:9989: 8C 03 16    ;
CODE_0D998C:    LDY $0F06               ; $0D:998C: AC 06 0F    ;
CODE_0D998F:    AND #$08                ; $0D:998F: 29 08       ;
CODE_0D9991:    BEQ CODE_0D9999         ; $0D:9991: F0 06       ;
CODE_0D9993:    DEY                     ; $0D:9993: 88          ;
CODE_0D9994:    BPL CODE_0D99A2         ; $0D:9994: 10 0C       ;
CODE_0D9996:    INY                     ; $0D:9996: C8          ;
CODE_0D9997:    BRA CODE_0D999F         ; $0D:9997: 80 06       ;

CODE_0D9999:    INY                     ; $0D:9999: C8          ;
CODE_0D999A:    CPY #$03                ; $0D:999A: C0 03       ;
CODE_0D999C:    BNE CODE_0D99A2         ; $0D:999C: D0 04       ;
CODE_0D999E:    DEY                     ; $0D:999E: 88          ;
CODE_0D999F:    STZ $1603               ; $0D:999F: 9C 03 16    ;
CODE_0D99A2:    STY $0F06               ; $0D:99A2: 8C 06 0F    ;
CODE_0D99A5:    LDA $0F8A               ; $0D:99A5: AD 8A 0F    ;
CODE_0D99A8:    BNE CODE_0D9A11         ; $0D:99A8: D0 67       ;
CODE_0D99AA:    LDA $0FF6               ; $0D:99AA: AD F6 0F    ;
CODE_0D99AD:    AND #$10                ; $0D:99AD: 29 10       ;
CODE_0D99AF:    BNE CODE_0D99F8         ; $0D:99AF: D0 47       ;
CODE_0D99B1:    LDA $0FF6               ; $0D:99B1: AD F6 0F    ;
CODE_0D99B4:    AND #$20                ; $0D:99B4: 29 20       ;
CODE_0D99B6:    BEQ CODE_0D99CA         ; $0D:99B6: F0 12       ;
CODE_0D99B8:    LDA #$01                ; $0D:99B8: A9 01       ;
CODE_0D99BA:    STA $1603               ; $0D:99BA: 8D 03 16    ;
CODE_0D99BD:    INC $0F06               ; $0D:99BD: EE 06 0F    ;
CODE_0D99C0:    LDA $0F06               ; $0D:99C0: AD 06 0F    ;
CODE_0D99C3:    CMP #$03                ; $0D:99C3: C9 03       ;
CODE_0D99C5:    BNE CODE_0D99CA         ; $0D:99C5: D0 03       ;
CODE_0D99C7:    STZ $0F06               ; $0D:99C7: 9C 06 0F    ;
CODE_0D99CA:    LDA $1603               ; $0D:99CA: AD 03 16    ;
CODE_0D99CD:    BEQ CODE_0D99D2         ; $0D:99CD: F0 03       ;
CODE_0D99CF:    STZ $0B78               ; $0D:99CF: 9C 78 0B    ;
CODE_0D99D2:    INC $0B78               ; $0D:99D2: EE 78 0B    ;
CODE_0D99D5:    LDA $0B78               ; $0D:99D5: AD 78 0B    ;
CODE_0D99D8:    AND #$10                ; $0D:99D8: 29 10       ;
CODE_0D99DA:    LSR A                   ; $0D:99DA: 4A          ;
CODE_0D99DB:    LSR A                   ; $0D:99DB: 4A          ;
CODE_0D99DC:    LSR A                   ; $0D:99DC: 4A          ;
CODE_0D99DD:    LSR A                   ; $0D:99DD: 4A          ;
CODE_0D99DE:    ORA #$02                ; $0D:99DE: 09 02       ;
CODE_0D99E0:    STA $0C00               ; $0D:99E0: 8D 00 0C    ;
CODE_0D99E3:    LDY #$03                ; $0D:99E3: A0 03       ;
CODE_0D99E5:    LDA DATA_0D9979,y       ; $0D:99E5: B9 79 99    ;
CODE_0D99E8:    STA $0800,y             ; $0D:99E8: 99 00 08    ;
CODE_0D99EB:    DEY                     ; $0D:99EB: 88          ;
CODE_0D99EC:    BPL CODE_0D99E5         ; $0D:99EC: 10 F7       ;
CODE_0D99EE:    LDY $0F06               ; $0D:99EE: AC 06 0F    ;
CODE_0D99F1:    LDA DATA_0D997D,y       ; $0D:99F1: B9 7D 99    ;
CODE_0D99F4:    STA $0801               ; $0D:99F4: 8D 01 08    ;
CODE_0D99F7:    RTS                     ; $0D:99F7: 60          ;

CODE_0D99F8:    LDA #$20                ; $0D:99F8: A9 20       ;
CODE_0D99FA:    STA $0F8A               ; $0D:99FA: 8D 8A 0F    ;
CODE_0D99FD:    LDA #$43                ; $0D:99FD: A9 43       ;
CODE_0D99FF:    STA $1600               ; $0D:99FF: 8D 00 16    ;
CODE_0D9A02:    LDA #$F3                ; $0D:9A02: A9 F3       ;
CODE_0D9A04:    STA $1602               ; $0D:9A04: 8D 02 16    ;
CODE_0D9A07:    LDA $0F06               ; $0D:9A07: AD 06 0F    ;
CODE_0D9A0A:    BEQ CODE_0D9A11         ; $0D:9A0A: F0 05       ;
CODE_0D9A0C:    LDA #$3B                ; $0D:9A0C: A9 3B       ;
CODE_0D9A0E:    STA $1600               ; $0D:9A0E: 8D 00 16    ;
CODE_0D9A11:    JSR CODE_0D99D2         ; $0D:9A11: 20 D2 99    ;
CODE_0D9A14:    DEC $0F8A               ; $0D:9A14: CE 8A 0F    ;
CODE_0D9A17:    LDA $0F8A               ; $0D:9A17: AD 8A 0F    ;
CODE_0D9A1A:    BEQ CODE_0D9A1D         ; $0D:9A1A: F0 01       ;
CODE_0D9A1C:    RTS                     ; $0D:9A1C: 60          ;

CODE_0D9A1D:    STZ $0B78               ; $0D:9A1D: 9C 78 0B    ;
CODE_0D9A20:    LDY #$04                ; $0D:9A20: A0 04       ;
CODE_0D9A22:    STY $075A               ; $0D:9A22: 8C 5A 07    ;
CODE_0D9A25:    STZ $075E               ; $0D:9A25: 9C 5E 07    ;
CODE_0D9A28:    LDA #$00                ; $0D:9A28: A9 00       ;
CODE_0D9A2A:    LDY #$11                ; $0D:9A2A: A0 11       ;
CODE_0D9A2C:    STA $07CE,y             ; $0D:9A2C: 99 CE 07    ;
CODE_0D9A2F:    DEY                     ; $0D:9A2F: 88          ;
CODE_0D9A30:    BPL CODE_0D9A2C         ; $0D:9A30: 10 FA       ;
CODE_0D9A32:    INC $075D               ; $0D:9A32: EE 5D 07    ;
CODE_0D9A35:    LDA $0F06               ; $0D:9A35: AD 06 0F    ;
CODE_0D9A38:    BEQ CODE_0D9A49         ; $0D:9A38: F0 0F       ;
CODE_0D9A3A:    JSL CODE_0090AC         ; $0D:9A3A: 22 AC 90 00 ;
CODE_0D9A3E:    LDA $0F06               ; $0D:9A3E: AD 06 0F    ;
CODE_0D9A41:    CMP #$01                ; $0D:9A41: C9 01       ;
CODE_0D9A43:    BEQ CODE_0D9A49         ; $0D:9A43: F0 04       ;
CODE_0D9A45:    JML CODE_0080DE         ; $0D:9A45: 5C DE 80 00 ;

CODE_0D9A49:    JMP CODE_0DA009         ; $0D:9A49: 4C 09 A0    ;

CODE_0D9A4C:    LDA $0770               ; $0D:9A4C: AD 70 07    ;
CODE_0D9A4F:    CMP #$03                ; $0D:9A4F: C9 03       ;
CODE_0D9A51:    BEQ CODE_0D9A69         ; $0D:9A51: F0 16       ;
CODE_0D9A53:    LDA $0F07               ; $0D:9A53: AD 07 0F    ;
CODE_0D9A56:    BNE CODE_0D9A60         ; $0D:9A56: D0 08       ;
CODE_0D9A58:    LDA #$1D                ; $0D:9A58: A9 1D       ;
CODE_0D9A5A:    STA $0773               ; $0D:9A5A: 8D 73 07    ;
CODE_0D9A5D:    INC $0F07               ; $0D:9A5D: EE 07 0F    ;
CODE_0D9A60:    LDA #$00                ; $0D:9A60: A9 00       ;
CODE_0D9A62:    STA $0774               ; $0D:9A62: 8D 74 07    ;
CODE_0D9A65:    INC $073C               ; $0D:9A65: EE 3C 07    ;
CODE_0D9A68:    RTS                     ; $0D:9A68: 60          ;

CODE_0D9A69:    LDA #$20                ; $0D:9A69: A9 20       ;
CODE_0D9A6B:    STA $07B0               ; $0D:9A6B: 8D B0 07    ;
CODE_0D9A6E:    LDA #$1E                ; $0D:9A6E: A9 1E       ;
CODE_0D9A70:    STA $0773               ; $0D:9A70: 8D 73 07    ;
CODE_0D9A73:    INC $0772               ; $0D:9A73: EE 72 07    ;
CODE_0D9A76:    RTS                     ; $0D:9A76: 60          ;

DATA_0D9A77:        db $20,$20,$1E,$28,$28,$0D,$04,$70
                    db $70,$60,$90,$90,$0A,$09,$E4,$98
                    db $D0,$18,$18,$18,$22,$22,$0D,$04
                    db $42,$42,$3E,$5D,$5D,$0A,$09,$B4
                    db $68,$A0

CODE_0D9A99:    LDX #$60                ; $0D:9A99: A2 60       ;
CODE_0D9A9B:    LDY #$21                ; $0D:9A9B: A0 21       ;
CODE_0D9A9D:    LDA $0753               ; $0D:9A9D: AD 53 07    ;
CODE_0D9AA0:    BNE CODE_0D9AA6         ; $0D:9AA0: D0 04       ;
CODE_0D9AA2:    LDX #$0E                ; $0D:9AA2: A2 0E       ;
CODE_0D9AA4:    LDY #$10                ; $0D:9AA4: A0 10       ;
CODE_0D9AA6:    STX $B38E               ; $0D:9AA6: 8E 8E B3    ;
CODE_0D9AA9:    LDX #$10                ; $0D:9AA9: A2 10       ;
CODE_0D9AAB:    LDA DATA_0D9A77,y       ; $0D:9AAB: B9 77 9A    ;
CODE_0D9AAE:    STA $0DB1F9,x           ; $0D:9AAE: 9F F9 B1 0D ; INVALID: wtf
CODE_0D9AB2:    DEY                     ; $0D:9AB2: 88          ;
CODE_0D9AB3:    DEX                     ; $0D:9AB3: CA          ;
CODE_0D9AB4:    BPL CODE_0D9AAB         ; $0D:9AB4: 10 F5       ;
CODE_0D9AB6:    RTS                     ; $0D:9AB6: 60          ;

CODE_0D9AB7:    LDA $0749               ; $0D:9AB7: AD 49 07    ;
CODE_0D9ABA:    BNE CODE_0D9AD6         ; $0D:9ABA: D0 1A       ;
CODE_0D9ABC:    LDY $0719               ; $0D:9ABC: AC 19 07    ;
CODE_0D9ABF:    CPY #$0A                ; $0D:9ABF: C0 0A       ;
CODE_0D9AC1:    BCS CODE_0D9AE8         ; $0D:9AC1: B0 25       ;
CODE_0D9AC3:    INY                     ; $0D:9AC3: C8          ;
CODE_0D9AC4:    INY                     ; $0D:9AC4: C8          ;
CODE_0D9AC5:    INY                     ; $0D:9AC5: C8          ;
CODE_0D9AC6:    CPY #$05                ; $0D:9AC6: C0 05       ;
CODE_0D9AC8:    BNE CODE_0D9ACF         ; $0D:9AC8: D0 05       ;
CODE_0D9ACA:    LDA #$04                ; $0D:9ACA: A9 04       ;
CODE_0D9ACC:    STA $00FC               ; $0D:9ACC: 8D FC 00    ;
CODE_0D9ACF:    TYA                     ; $0D:9ACF: 98          ;
CODE_0D9AD0:    CLC                     ; $0D:9AD0: 18          ;
CODE_0D9AD1:    ADC #$0C                ; $0D:9AD1: 69 0C       ;
CODE_0D9AD3:    STA $0773               ; $0D:9AD3: 8D 73 07    ;
CODE_0D9AD6:    LDA $0749               ; $0D:9AD6: AD 49 07    ;
CODE_0D9AD9:    CLC                     ; $0D:9AD9: 18          ;
CODE_0D9ADA:    ADC #$04                ; $0D:9ADA: 69 04       ;
CODE_0D9ADC:    STA $0749               ; $0D:9ADC: 8D 49 07    ;
CODE_0D9ADF:    LDA $0719               ; $0D:9ADF: AD 19 07    ;
CODE_0D9AE2:    ADC #$00                ; $0D:9AE2: 69 00       ;
CODE_0D9AE4:    STA $0719               ; $0D:9AE4: 8D 19 07    ;
CODE_0D9AE7:    RTS                     ; $0D:9AE7: 60          ;

CODE_0D9AE8:    LDA #$0C                ; $0D:9AE8: A9 0C       ;
CODE_0D9AEA:    STA $07B1               ; $0D:9AEA: 8D B1 07    ;
CODE_0D9AED:    INC $0772               ; $0D:9AED: EE 72 07    ;
CODE_0D9AF0:    LDA #$00                ; $0D:9AF0: A9 00       ;
CODE_0D9AF2:    STA $0F27               ; $0D:9AF2: 8D 27 0F    ;
CODE_0D9AF5:    STA $0F28               ; $0D:9AF5: 8D 28 0F    ;
CODE_0D9AF8:    STA $0F29               ; $0D:9AF8: 8D 29 0F    ;
CODE_0D9AFB:    RTS                     ; $0D:9AFB: 60          ;

CODE_0D9AFC:    LDA $07B1               ; $0D:9AFC: AD B1 07    ;
CODE_0D9AFF:    BNE CODE_0D9AFB         ; $0D:9AFF: D0 FA       ;
CODE_0D9B01:    LDA $075A               ; $0D:9B01: AD 5A 07    ;
CODE_0D9B04:    BMI CODE_0D9B20         ; $0D:9B04: 30 1A       ;
CODE_0D9B06:    LDA $0788               ; $0D:9B06: AD 88 07    ;
CODE_0D9B09:    BNE CODE_0D9AFB         ; $0D:9B09: D0 F0       ;
CODE_0D9B0B:    LDA #$30                ; $0D:9B0B: A9 30       ;
CODE_0D9B0D:    STA $0788               ; $0D:9B0D: 8D 88 07    ;
CODE_0D9B10:    LDA #$01                ; $0D:9B10: A9 01       ;
CODE_0D9B12:    STA $1603               ; $0D:9B12: 8D 03 16    ;
CODE_0D9B15:    DEC $075A               ; $0D:9B15: CE 5A 07    ;
CODE_0D9B18:    LDA #$01                ; $0D:9B18: A9 01       ;
CODE_0D9B1A:    STA $0146               ; $0D:9B1A: 8D 46 01    ;
CODE_0D9B1D:    JMP CODE_0DD70E         ; $0D:9B1D: 4C 0E D7    ;

CODE_0D9B20:    LDA #$05                ; $0D:9B20: A9 05       ;
CODE_0D9B22:    STA $0F2D               ; $0D:9B22: 8D 2D 0F    ;
CODE_0D9B25:    LDA #$00                ; $0D:9B25: A9 00       ;
CODE_0D9B27:    STA $0F2C               ; $0D:9B27: 8D 2C 0F    ;
CODE_0D9B2A:    STZ $0F2E               ; $0D:9B2A: 9C 2E 0F    ;
CODE_0D9B2D:    STZ $0F2F               ; $0D:9B2D: 9C 2F 0F    ;
CODE_0D9B30:    BRA CODE_0D9AED         ; $0D:9B30: 80 BB       ;

CODE_0D9B32:    INC $0772               ; $0D:9B32: EE 72 07    ;
CODE_0D9B35:    JSR CODE_0D9AF0         ; $0D:9B35: 20 F0 9A    ;
CODE_0D9B38:    LDA #$60                ; $0D:9B38: A9 60       ;
CODE_0D9B3A:    STA $0F2A               ; $0D:9B3A: 8D 2A 0F    ;
CODE_0D9B3D:    RTS                     ; $0D:9B3D: 60          ;

CODE_0D9B3E:    JSR CODE_0D9C2B         ; $0D:9B3E: 20 2B 9C    ;
CODE_0D9B41:    LDA $0F2D               ; $0D:9B41: AD 2D 0F    ;
CODE_0D9B44:    BEQ CODE_0D9B65         ; $0D:9B44: F0 1F       ;
CODE_0D9B46:    REP #$20                ; $0D:9B46: C2 20       ;
CODE_0D9B48:    LDA $0F2C               ; $0D:9B48: AD 2C 0F    ;
CODE_0D9B4B:    XBA                     ; $0D:9B4B: EB          ;
CODE_0D9B4C:    STA $1702               ; $0D:9B4C: 8D 02 17    ;
CODE_0D9B4F:    LDA #$7E43              ; $0D:9B4F: A9 43 7E    ;
CODE_0D9B52:    STA $1704               ; $0D:9B52: 8D 04 17    ;
CODE_0D9B55:    LDA #$0024              ; $0D:9B55: A9 24 00    ;
CODE_0D9B58:    STA $1706               ; $0D:9B58: 8D 06 17    ;
CODE_0D9B5B:    LDA #$FFFF              ; $0D:9B5B: A9 FF FF    ;
CODE_0D9B5E:    STA $1708               ; $0D:9B5E: 8D 08 17    ;
CODE_0D9B61:    SEP #$20                ; $0D:9B61: E2 20       ;
CODE_0D9B63:    BRA CODE_0D9B8E         ; $0D:9B63: 80 29       ;

CODE_0D9B65:    LDA $0EB8               ; $0D:9B65: AD B8 0E    ;
CODE_0D9B68:    BNE CODE_0D9B84         ; $0D:9B68: D0 1A       ;
CODE_0D9B6A:    INC $0F2E               ; $0D:9B6A: EE 2E 0F    ;
CODE_0D9B6D:    LDA $0F2E               ; $0D:9B6D: AD 2E 0F    ;
CODE_0D9B70:    BNE CODE_0D9B8E         ; $0D:9B70: D0 1C       ;
CODE_0D9B72:    INC $0F2F               ; $0D:9B72: EE 2F 0F    ;
CODE_0D9B75:    LDA $0F2F               ; $0D:9B75: AD 2F 0F    ;
CODE_0D9B78:    CMP #$02                ; $0D:9B78: C9 02       ;
CODE_0D9B7A:    BNE CODE_0D9B8E         ; $0D:9B7A: D0 12       ;
CODE_0D9B7C:    STZ $07FA               ; $0D:9B7C: 9C FA 07    ;
CODE_0D9B7F:    LDA #$01                ; $0D:9B7F: A9 01       ;
CODE_0D9B81:    STA $07FB               ; $0D:9B81: 8D FB 07    ;
CODE_0D9B84:    LDA $075F               ; $0D:9B84: AD 5F 07    ;
CODE_0D9B87:    CMP #$0C                ; $0D:9B87: C9 0C       ;
CODE_0D9B89:    BEQ CODE_0D9B94         ; $0D:9B89: F0 09       ;
CODE_0D9B8B:    JMP CODE_0D9CC7         ; $0D:9B8B: 4C C7 9C    ;

CODE_0D9B8E:    STZ $0EB8               ; $0D:9B8E: 9C B8 0E    ;
CODE_0D9B91:    STZ $0F2D               ; $0D:9B91: 9C 2D 0F    ;
CODE_0D9B94:    RTS                     ; $0D:9B94: 60          ;

DATA_0D9B95:        db $01,$00,$01,$02,$03,$00,$00,$00
                    db $00,$00,$A7,$AB,$AD,$B1,$9B,$9B
                    db $9B,$9B,$01,$05,$0F,$FF,$20,$FF
                    db $10,$30,$0F,$FF,$40,$FF,$03,$01
                    db $03,$01,$0F,$20,$20,$20,$20,$20
                    db $20,$20,$20,$9F,$D2,$01,$00,$00
                    db $9F,$D2,$00

CODE_0D9BC8:    LDA #$07                ; $0D:9BC8: A9 07       ;
CODE_0D9BCA:    STA $9B,x               ; $0D:9BCA: 95 9B       ;
CODE_0D9BCC:    LDA [$9B],y             ; $0D:9BCC: B7 9B       ;
CODE_0D9BCE:    BEQ CODE_0D9BD4         ; $0D:9BCE: F0 04       ;
CODE_0D9BD0:    INC $0F09               ; $0D:9BD0: EE 09 0F    ;
CODE_0D9BD3:    RTS                     ; $0D:9BD3: 60          ;

CODE_0D9BD4:    LDA #$00                ; $0D:9BD4: A9 00       ;
CODE_0D9BD6:    STA $0F09               ; $0D:9BD6: 8D 09 0F    ;
CODE_0D9BD9:    STA $0772               ; $0D:9BD9: 8D 72 07    ;
CODE_0D9BDC:    LDA $075F               ; $0D:9BDC: AD 5F 07    ;
CODE_0D9BDF:    CMP #$0C                ; $0D:9BDF: C9 0C       ;
CODE_0D9BE1:    BEQ CODE_0D9BF6         ; $0D:9BE1: F0 13       ;
CODE_0D9BE3:    LDA $0F2B               ; $0D:9BE3: AD 2B 0F    ;
CODE_0D9BE6:    BEQ CODE_0D9C01         ; $0D:9BE6: F0 19       ;
CODE_0D9BE8:    LDA #$00                ; $0D:9BE8: A9 00       ;
CODE_0D9BEA:    STA $0F08               ; $0D:9BEA: 8D 08 0F    ;
CODE_0D9BED:    STA $075A               ; $0D:9BED: 8D 5A 07    ;
CODE_0D9BF0:    INC $075F               ; $0D:9BF0: EE 5F 07    ;
CODE_0D9BF3:    JMP CODE_0D885C         ; $0D:9BF3: 4C 5C 88    ;

CODE_0D9BF6:    LDA #$00                ; $0D:9BF6: A9 00       ;
CODE_0D9BF8:    STA $0F08               ; $0D:9BF8: 8D 08 0F    ;
CODE_0D9BFB:    STA $0770               ; $0D:9BFB: 8D 70 07    ;
CODE_0D9BFE:    JMP CODE_0D84B6         ; $0D:9BFE: 4C B6 84    ;

CODE_0D9C01:    LDA #$00                ; $0D:9C01: A9 00       ;
CODE_0D9C03:    STA $0F08               ; $0D:9C03: 8D 08 0F    ;
CODE_0D9C06:    STA $075A               ; $0D:9C06: 8D 5A 07    ;
CODE_0D9C09:    STA $0F07               ; $0D:9C09: 8D 07 0F    ;
CODE_0D9C0C:    JMP CODE_0D885C         ; $0D:9C0C: 4C 5C 88    ;

DATA_0D9C0F:        db $50,$B0,$E0,$68,$98,$C8 ;

DATA_0D9C15:        db $80,$50,$68,$80,$98,$B0,$C8 ;

DATA_0D9C1C:        db $E0,$B8,$90,$70,$68,$70,$90 ;

DATA_0D9C23:        db $B8,$38,$48,$60,$80 ;

CODE_0D9C28:    LDY #$B8                ; $0D:9C28: A0 B8       ;
CODE_0D9C2A:    INY                     ; $0D:9C2A: C8          ;
CODE_0D9C2B:    LDA $0F2A               ; $0D:9C2B: AD 2A 0F    ;
CODE_0D9C2E:    BEQ CODE_0D9C34         ; $0D:9C2E: F0 04       ;
CODE_0D9C30:    DEC $0F2A               ; $0D:9C30: CE 2A 0F    ;
CODE_0D9C33:    RTS                     ; $0D:9C33: 60          ;

CODE_0D9C34:    JSR CODE_0D8418         ; $0D:9C34: 20 18 84    ;
CODE_0D9C37:    LDX $0F28               ; $0D:9C37: AE 28 0F    ;
CODE_0D9C3A:    CPX #$07                ; $0D:9C3A: E0 07       ;
CODE_0D9C3C:    BEQ CODE_0D9C50         ; $0D:9C3C: F0 12       ;
CODE_0D9C3E:    LDA $0F27               ; $0D:9C3E: AD 27 0F    ;
CODE_0D9C41:    AND #$1F                ; $0D:9C41: 29 1F       ;
CODE_0D9C43:    BNE CODE_0D9C66         ; $0D:9C43: D0 21       ;
CODE_0D9C45:    INC $0F28               ; $0D:9C45: EE 28 0F    ;
CODE_0D9C48:    LDA #$01                ; $0D:9C48: A9 01       ;
CODE_0D9C4A:    STA $1603               ; $0D:9C4A: 8D 03 16    ;
CODE_0D9C4D:    JMP CODE_0D9C66         ; $0D:9C4D: 4C 66 9C    ;

CODE_0D9C50:    LDA $0F27               ; $0D:9C50: AD 27 0F    ;
CODE_0D9C53:    AND #$1F                ; $0D:9C53: 29 1F       ;
CODE_0D9C55:    BNE CODE_0D9C66         ; $0D:9C55: D0 0F       ;
CODE_0D9C57:    INC $0F29               ; $0D:9C57: EE 29 0F    ;
CODE_0D9C5A:    LDA $0F29               ; $0D:9C5A: AD 29 0F    ;
CODE_0D9C5D:    CMP #$0B                ; $0D:9C5D: C9 0B       ;
CODE_0D9C5F:    BCC CODE_0D9C66         ; $0D:9C5F: 90 05       ;
CODE_0D9C61:    LDA #$04                ; $0D:9C61: A9 04       ;
CODE_0D9C63:    STA $0F29               ; $0D:9C63: 8D 29 0F    ;
CODE_0D9C66:    INC $0F27               ; $0D:9C66: EE 27 0F    ;
CODE_0D9C69:    LDA $075F               ; $0D:9C69: AD 5F 07    ;
CODE_0D9C6C:    PHA                     ; $0D:9C6C: 48          ;
CODE_0D9C6D:    LDA $0F28               ; $0D:9C6D: AD 28 0F    ;
CODE_0D9C70:    PHA                     ; $0D:9C70: 48          ;
CODE_0D9C71:    TAX                     ; $0D:9C71: AA          ;
CODE_0D9C72:    LDA $0F29               ; $0D:9C72: AD 29 0F    ;
CODE_0D9C75:    CMP #$04                ; $0D:9C75: C9 04       ;
CODE_0D9C77:    BCC CODE_0D9C84         ; $0D:9C77: 90 0B       ;
CODE_0D9C79:    SBC #$04                ; $0D:9C79: E9 04       ;
CODE_0D9C7B:    TAY                     ; $0D:9C7B: A8          ;
CODE_0D9C7C:    LDA DATA_0D9C0F,y       ; $0D:9C7C: B9 0F 9C    ;
CODE_0D9C7F:    CMP DATA_0D9C15,x       ; $0D:9C7F: DD 15 9C    ;
CODE_0D9C82:    BEQ CODE_0D9CA9         ; $0D:9C82: F0 25       ;
CODE_0D9C84:    LDY DATA_0D9C15,x       ; $0D:9C84: BC 15 9C    ;
CODE_0D9C87:    STY $0B46               ; $0D:9C87: 8C 46 0B    ;
CODE_0D9C8A:    LDA #$35                ; $0D:9C8A: A9 35       ;
CODE_0D9C8C:    STA $001C               ; $0D:9C8C: 8D 1C 00    ;
CODE_0D9C8F:    LDA DATA_0D9C1C,x       ; $0D:9C8F: BD 1C 9C    ;
CODE_0D9C92:    STA $0238               ; $0D:9C92: 8D 38 02    ;
CODE_0D9C95:    LDA DATA_0D9C23,x       ; $0D:9C95: BD 23 9C    ;
CODE_0D9C98:    STA $03AE               ; $0D:9C98: 8D AE 03    ;
CODE_0D9C9B:    LDX #$00                ; $0D:9C9B: A2 00       ;
CODE_0D9C9D:    STX $075F               ; $0D:9C9D: 8E 5F 07    ;
CODE_0D9CA0:    STX $009E               ; $0D:9CA0: 8E 9E 00    ;
CODE_0D9CA3:    JSR CODE_0DEE40         ; $0D:9CA3: 20 40 EE    ;
CODE_0D9CA6:    DEC $0F4A               ; $0D:9CA6: CE 4A 0F    ;
CODE_0D9CA9:    DEC $0F28               ; $0D:9CA9: CE 28 0F    ;
CODE_0D9CAC:    LDX $0F28               ; $0D:9CAC: AE 28 0F    ;
CODE_0D9CAF:    BNE CODE_0D9C72         ; $0D:9CAF: D0 C1       ;
CODE_0D9CB1:    INC $0F4A               ; $0D:9CB1: EE 4A 0F    ;
CODE_0D9CB4:    PLA                     ; $0D:9CB4: 68          ;
CODE_0D9CB5:    STA $0F28               ; $0D:9CB5: 8D 28 0F    ;
CODE_0D9CB8:    PLA                     ; $0D:9CB8: 68          ;
CODE_0D9CB9:    STA $075F               ; $0D:9CB9: 8D 5F 07    ;
CODE_0D9CBC:    LDA #$30                ; $0D:9CBC: A9 30       ;
CODE_0D9CBE:    STA $0B46               ; $0D:9CBE: 8D 46 0B    ;
CODE_0D9CC1:    LDA #$B8                ; $0D:9CC1: A9 B8       ;
CODE_0D9CC3:    STA $0238               ; $0D:9CC3: 8D 38 02    ;
CODE_0D9CC6:    RTS                     ; $0D:9CC6: 60          ;

CODE_0D9CC7:    JSL CODE_0FFB74         ; $0D:9CC7: 22 74 FB 0F ;
CODE_0D9CCB:    BCS CODE_0D9CCE         ; $0D:9CCB: B0 01       ;
CODE_0D9CCD:    RTS                     ; $0D:9CCD: 60          ;

CODE_0D9CCE:    LDA #$01                ; $0D:9CCE: A9 01       ;
CODE_0D9CD0:    STA $0E1A               ; $0D:9CD0: 8D 1A 0E    ;
CODE_0D9CD3:    JMP CODE_0D9BD4         ; $0D:9CD3: 4C D4 9B    ;

DATA_0D9CD6:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF

DATA_0D9CF0:        db $D0,$00,$18,$30,$48,$60,$78,$90
                    db $A8,$C0,$D8,$D8,$B0,$C0,$40,$44
                    db $48,$50,$54,$60,$68,$70,$78,$80
                    db $88,$00,$08,$10,$18,$18,$FF,$23
                    db $58

CODE_0D9D11:    LDA #$80                ; $0D:9D11: A9 80       ;
CODE_0D9D13:    STA $1201               ; $0D:9D13: 8D 01 12    ;
CODE_0D9D16:    LDA #$FF                ; $0D:9D16: A9 FF       ;
CODE_0D9D18:    STA $001102             ; $0D:9D18: 8F 02 11 00 ;
CODE_0D9D1C:    LDA #$7F                ; $0D:9D1C: A9 7F       ;
CODE_0D9D1E:    STA $001103             ; $0D:9D1E: 8F 03 11 00 ;
CODE_0D9D22:    INC $1200               ; $0D:9D22: EE 00 12    ;
CODE_0D9D25:    LDA #$FF                ; $0D:9D25: A9 FF       ;
CODE_0D9D27:    STA $1702               ; $0D:9D27: 8D 02 17    ;
CODE_0D9D2A:    STA $1703               ; $0D:9D2A: 8D 03 17    ;
CODE_0D9D2D:    LDA #$09                ; $0D:9D2D: A9 09       ;
CODE_0D9D2F:    STA $120D               ; $0D:9D2F: 8D 0D 12    ;
CODE_0D9D32:    LDA #$10                ; $0D:9D32: A9 10       ;
CODE_0D9D34:    STA $120B               ; $0D:9D34: 8D 0B 12    ;
CODE_0D9D37:    LDA #$20                ; $0D:9D37: A9 20       ;
CODE_0D9D39:    STA $120A               ; $0D:9D39: 8D 0A 12    ;
CODE_0D9D3C:    LDA #$20                ; $0D:9D3C: A9 20       ;
CODE_0D9D3E:    STA $0EE0               ; $0D:9D3E: 8D E0 0E    ;
CODE_0D9D41:    LDA #$40                ; $0D:9D41: A9 40       ;
CODE_0D9D43:    STA $0EE1               ; $0D:9D43: 8D E1 0E    ;
CODE_0D9D46:    LDA #$80                ; $0D:9D46: A9 80       ;
CODE_0D9D48:    STA $0EE2               ; $0D:9D48: 8D E2 0E    ;
CODE_0D9D4B:    LDY #$FE                ; $0D:9D4B: A0 FE       ;
CODE_0D9D4D:    LDX #$05                ; $0D:9D4D: A2 05       ;
CODE_0D9D4F:    LDA $07C8,x             ; $0D:9D4F: BD C8 07    ;
CODE_0D9D52:    CMP #$0A                ; $0D:9D52: C9 0A       ;
CODE_0D9D54:    BCS CODE_0D9D62         ; $0D:9D54: B0 0C       ;
CODE_0D9D56:    DEX                     ; $0D:9D56: CA          ;
CODE_0D9D57:    BPL CODE_0D9D4F         ; $0D:9D57: 10 F6       ;
CODE_0D9D59:    LDA $07FF               ; $0D:9D59: AD FF 07    ;
CODE_0D9D5C:    CMP #$A5                ; $0D:9D5C: C9 A5       ;
CODE_0D9D5E:    BNE CODE_0D9D62         ; $0D:9D5E: D0 02       ;
CODE_0D9D60:    LDY #$C7                ; $0D:9D60: A0 C7       ;
CODE_0D9D62:    JSL CODE_0FF733         ; $0D:9D62: 22 33 F7 0F ;
CODE_0D9D66:    LDA #$A5                ; $0D:9D66: A9 A5       ;
CODE_0D9D68:    STA $07FF               ; $0D:9D68: 8D FF 07    ;
CODE_0D9D6B:    STA $07B7               ; $0D:9D6B: 8D B7 07    ;
CODE_0D9D6E:    STZ $0EF6               ; $0D:9D6E: 9C F6 0E    ;
CODE_0D9D71:    STZ $0EF9               ; $0D:9D71: 9C F9 0E    ;
CODE_0D9D74:    STZ $0EF7               ; $0D:9D74: 9C F7 0E    ;
CODE_0D9D77:    STZ $0EF8               ; $0D:9D77: 9C F8 0E    ;
CODE_0D9D7A:    LDY #$6F                ; $0D:9D7A: A0 6F       ;
CODE_0D9D7C:    JSL CODE_0FF733         ; $0D:9D7C: 22 33 F7 0F ;
CODE_0D9D80:    LDA #$18                ; $0D:9D80: A9 18       ;
CODE_0D9D82:    STA $07B2               ; $0D:9D82: 8D B2 07    ;
CODE_0D9D85:    JSL CODE_0EC34C         ; $0D:9D85: 22 4C C3 0E ;
CODE_0D9D89:    JSR CODE_0D9D90         ; $0D:9D89: 20 90 9D    ;
CODE_0D9D8C:    STZ $0E7F               ; $0D:9D8C: 9C 7F 0E    ;
CODE_0D9D8F:    RTS                     ; $0D:9D8F: 60          ;

CODE_0D9D90:    LDY $075F               ; $0D:9D90: AC 5F 07    ;
CODE_0D9D93:    CPY #$0D                ; $0D:9D93: C0 0D       ;
CODE_0D9D95:    BCC CODE_0D9D9B         ; $0D:9D95: 90 04       ;
CODE_0D9D97:    JSL CODE_0EC34C         ; $0D:9D97: 22 4C C3 0E ;
CODE_0D9D9B:    LDY #$4B                ; $0D:9D9B: A0 4B       ;
CODE_0D9D9D:    JSL CODE_0FF733         ; $0D:9D9D: 22 33 F7 0F ;
CODE_0D9DA1:    LDX #$29                ; $0D:9DA1: A2 29       ;
CODE_0D9DA3:    LDA #$00                ; $0D:9DA3: A9 00       ;
CODE_0D9DA5:    STA $0788,x             ; $0D:9DA5: 9D 88 07    ;
CODE_0D9DA8:    DEX                     ; $0D:9DA8: CA          ;
CODE_0D9DA9:    BPL CODE_0D9DA5         ; $0D:9DA9: 10 FA       ;
CODE_0D9DAB:    LDA $075B               ; $0D:9DAB: AD 5B 07    ;
CODE_0D9DAE:    LDY $0752               ; $0D:9DAE: AC 52 07    ;
CODE_0D9DB1:    BEQ CODE_0D9DB6         ; $0D:9DB1: F0 03       ;
CODE_0D9DB3:    LDA $0751               ; $0D:9DB3: AD 51 07    ;
CODE_0D9DB6:    STA $071A               ; $0D:9DB6: 8D 1A 07    ;
CODE_0D9DB9:    STA $0725               ; $0D:9DB9: 8D 25 07    ;
CODE_0D9DBC:    STA $0728               ; $0D:9DBC: 8D 28 07    ;
CODE_0D9DBF:    PHY                     ; $0D:9DBF: 5A          ;
CODE_0D9DC0:    REP #$20                ; $0D:9DC0: C2 20       ;
CODE_0D9DC2:    XBA                     ; $0D:9DC2: EB          ;
CODE_0D9DC3:    AND #$FF00              ; $0D:9DC3: 29 00 FF    ;
CODE_0D9DC6:    STA $42                 ; $0D:9DC6: 85 42       ;
CODE_0D9DC8:    LSR A                   ; $0D:9DC8: 4A          ;
CODE_0D9DC9:    STA $0EFD               ; $0D:9DC9: 8D FD 0E    ;
CODE_0D9DCC:    LSR A                   ; $0D:9DCC: 4A          ;
CODE_0D9DCD:    STA $0EEE               ; $0D:9DCD: 8D EE 0E    ;
CODE_0D9DD0:    SEP #$20                ; $0D:9DD0: E2 20       ;
CODE_0D9DD2:    PLY                     ; $0D:9DD2: 7A          ;
CODE_0D9DD3:    JSR CODE_0DAD3E         ; $0D:9DD3: 20 3E AD    ;
CODE_0D9DD6:    LDY #$00                ; $0D:9DD6: A0 00       ;
CODE_0D9DD8:    AND #$01                ; $0D:9DD8: 29 01       ;
CODE_0D9DDA:    BEQ CODE_0D9DDE         ; $0D:9DDA: F0 02       ;
CODE_0D9DDC:    LDY #$04                ; $0D:9DDC: A0 04       ;
CODE_0D9DDE:    STY $0720               ; $0D:9DDE: 8C 20 07    ;
CODE_0D9DE1:    STZ $0721               ; $0D:9DE1: 9C 21 07    ;
CODE_0D9DE4:    ASL A                   ; $0D:9DE4: 0A          ;
CODE_0D9DE5:    ASL A                   ; $0D:9DE5: 0A          ;
CODE_0D9DE6:    ASL A                   ; $0D:9DE6: 0A          ;
CODE_0D9DE7:    ASL A                   ; $0D:9DE7: 0A          ;
CODE_0D9DE8:    STA $06A0               ; $0D:9DE8: 8D A0 06    ;
CODE_0D9DEB:    LDA #$FF                ; $0D:9DEB: A9 FF       ;
CODE_0D9DED:    STA $1300               ; $0D:9DED: 8D 00 13    ;
CODE_0D9DF0:    STA $1301               ; $0D:9DF0: 8D 01 13    ;
CODE_0D9DF3:    STA $1302               ; $0D:9DF3: 8D 02 13    ;
CODE_0D9DF6:    STA $1303               ; $0D:9DF6: 8D 03 13    ;
CODE_0D9DF9:    STA $1304               ; $0D:9DF9: 8D 04 13    ;
CODE_0D9DFC:    LDA #$0B                ; $0D:9DFC: A9 0B       ;
CODE_0D9DFE:    STA $071E               ; $0D:9DFE: 8D 1E 07    ;
CODE_0D9E01:    JSL CODE_0EC3BD         ; $0D:9E01: 22 BD C3 0E ;
CODE_0D9E05:    LDA $07FB               ; $0D:9E05: AD FB 07    ;
CODE_0D9E08:    BNE CODE_0D9E1A         ; $0D:9E08: D0 10       ;
CODE_0D9E0A:    LDA $075F               ; $0D:9E0A: AD 5F 07    ;
CODE_0D9E0D:    CMP #$03                ; $0D:9E0D: C9 03       ;
CODE_0D9E0F:    BCC CODE_0D9E1D         ; $0D:9E0F: 90 0C       ;
CODE_0D9E11:    BNE CODE_0D9E1A         ; $0D:9E11: D0 07       ;
CODE_0D9E13:    LDA $075C               ; $0D:9E13: AD 5C 07    ;
CODE_0D9E16:    CMP #$03                ; $0D:9E16: C9 03       ;
CODE_0D9E18:    BCC CODE_0D9E1D         ; $0D:9E18: 90 03       ;
CODE_0D9E1A:    INC $06CC               ; $0D:9E1A: EE CC 06    ;
CODE_0D9E1D:    LDA $075B               ; $0D:9E1D: AD 5B 07    ;
CODE_0D9E20:    BEQ CODE_0D9E27         ; $0D:9E20: F0 05       ;
CODE_0D9E22:    LDA #$02                ; $0D:9E22: A9 02       ;
CODE_0D9E24:    STA $0710               ; $0D:9E24: 8D 10 07    ;
CODE_0D9E27:    LDA $DB                 ; $0D:9E27: A5 DB       ;
CODE_0D9E29:    CMP #$07                ; $0D:9E29: C9 07       ;
CODE_0D9E2B:    BEQ CODE_0D9E36         ; $0D:9E2B: F0 09       ;
CODE_0D9E2D:    CMP #$41                ; $0D:9E2D: C9 41       ;
CODE_0D9E2F:    BEQ CODE_0D9E36         ; $0D:9E2F: F0 05       ;
CODE_0D9E31:    LDA #$80                ; $0D:9E31: A9 80       ;
CODE_0D9E33:    STA $1602               ; $0D:9E33: 8D 02 16    ;
CODE_0D9E36:    LDA #$01                ; $0D:9E36: A9 01       ;
CODE_0D9E38:    STA $0E7F               ; $0D:9E38: 8D 7F 0E    ;
CODE_0D9E3B:    INC $0772               ; $0D:9E3B: EE 72 07    ;
CODE_0D9E3E:    RTS                     ; $0D:9E3E: 60          ;

CODE_0D9E3F:    LDA $2142               ; $0D:9E3F: AD 42 21    ;
CODE_0D9E42:    CMP #$15                ; $0D:9E42: C9 15       ;
CODE_0D9E44:    BEQ CODE_0D9E4F         ; $0D:9E44: F0 09       ;
CODE_0D9E46:    JSL CODE_0086B5         ; $0D:9E46: 22 B5 86 00 ;
CODE_0D9E4A:    LDA #$15                ; $0D:9E4A: A9 15       ;
CODE_0D9E4C:    STA $2142               ; $0D:9E4C: 8D 42 21    ;
CODE_0D9E4F:    LDA #$01                ; $0D:9E4F: A9 01       ;
CODE_0D9E51:    STA $0757               ; $0D:9E51: 8D 57 07    ;
CODE_0D9E54:    STA $0754               ; $0D:9E54: 8D 54 07    ;
CODE_0D9E57:    STZ $0E73               ; $0D:9E57: 9C 73 0E    ;
CODE_0D9E5A:    LDA #$02                ; $0D:9E5A: A9 02       ;
CODE_0D9E5C:    STA $0E7F               ; $0D:9E5C: 8D 7F 0E    ;
CODE_0D9E5F:    LDA #$20                ; $0D:9E5F: A9 20       ;
CODE_0D9E61:    TSB $1601               ; $0D:9E61: 0C 01 16    ;
CODE_0D9E64:    LDA #$00                ; $0D:9E64: A9 00       ;
CODE_0D9E66:    STA $1201               ; $0D:9E66: 8D 01 12    ;
CODE_0D9E69:    STA $0774               ; $0D:9E69: 8D 74 07    ;
CODE_0D9E6C:    STA $0F04               ; $0D:9E6C: 8D 04 0F    ;
CODE_0D9E6F:    STA $0F02               ; $0D:9E6F: 8D 02 0F    ;
CODE_0D9E72:    TAY                     ; $0D:9E72: A8          ;
CODE_0D9E73:    STA $0300,y             ; $0D:9E73: 99 00 03    ;
CODE_0D9E76:    INY                     ; $0D:9E76: C8          ;
CODE_0D9E77:    BNE CODE_0D9E73         ; $0D:9E77: D0 FA       ;
CODE_0D9E79:    STA $0759               ; $0D:9E79: 8D 59 07    ;
CODE_0D9E7C:    STA $0769               ; $0D:9E7C: 8D 69 07    ;
CODE_0D9E7F:    STA $0728               ; $0D:9E7F: 8D 28 07    ;
CODE_0D9E82:    LDA #$FF                ; $0D:9E82: A9 FF       ;
CODE_0D9E84:    STA $03A0               ; $0D:9E84: 8D A0 03    ;
CODE_0D9E87:    STA $1702               ; $0D:9E87: 8D 02 17    ;
CODE_0D9E8A:    LDA $071A               ; $0D:9E8A: AD 1A 07    ;
CODE_0D9E8D:    AND #$01                ; $0D:9E8D: 29 01       ;
CODE_0D9E8F:    STA $0F05               ; $0D:9E8F: 8D 05 0F    ;
CODE_0D9E92:    LDA #$38                ; $0D:9E92: A9 38       ;
CODE_0D9E94:    STA $0B43               ; $0D:9E94: 8D 43 0B    ;
CODE_0D9E97:    LDA #$48                ; $0D:9E97: A9 48       ;
CODE_0D9E99:    STA $0B42               ; $0D:9E99: 8D 42 0B    ;
CODE_0D9E9C:    LDA #$58                ; $0D:9E9C: A9 58       ;
CODE_0D9E9E:    STA $0B41               ; $0D:9E9E: 8D 41 0B    ;
CODE_0D9EA1:    LDX #$1C                ; $0D:9EA1: A2 1C       ;
CODE_0D9EA3:    LDA DATA_0D9CF0,x       ; $0D:9EA3: BD F0 9C    ;
CODE_0D9EA6:    STA $0B45,x             ; $0D:9EA6: 9D 45 0B    ;
CODE_0D9EA9:    DEX                     ; $0D:9EA9: CA          ;
CODE_0D9EAA:    BPL CODE_0D9EA3         ; $0D:9EAA: 10 F7       ;
CODE_0D9EAC:    JSR CODE_0DA04E         ; $0D:9EAC: 20 4E A0    ;
CODE_0D9EAF:    INC $0722               ; $0D:9EAF: EE 22 07    ;
CODE_0D9EB2:    INC $0772               ; $0D:9EB2: EE 72 07    ;
CODE_0D9EB5:    RTS                     ; $0D:9EB5: 60          ;

DATA_0D9EB6:        db $28,$18,$38,$28,$08,$00 ;

DATA_0D9EBC:        db $00,$20,$B0,$50,$00,$00,$B0,$B0 ;
                    db $F0 ;

DATA_0D9EC5:        db $2E,$0E,$2E,$2E,$2E,$2E,$2E,$2E ;

DATA_0D9ECD:        db $0E,$04,$03,$02 ;

CODE_0D9ED1:    LDA $071A               ; $0D:9ED1: AD 1A 07    ;
CODE_0D9ED4:    STA $78                 ; $0D:9ED4: 85 78       ;
CODE_0D9ED6:    LDA #$28                ; $0D:9ED6: A9 28       ;
CODE_0D9ED8:    STA $070A               ; $0D:9ED8: 8D 0A 07    ;
CODE_0D9EDB:    LDA #$01                ; $0D:9EDB: A9 01       ;
CODE_0D9EDD:    STA $0202               ; $0D:9EDD: 8D 02 02    ;
CODE_0D9EE0:    STA $BB                 ; $0D:9EE0: 85 BB       ;
CODE_0D9EE2:    LDA #$00                ; $0D:9EE2: A9 00       ;
CODE_0D9EE4:    STA $28                 ; $0D:9EE4: 85 28       ;
CODE_0D9EE6:    DEC $0480               ; $0D:9EE6: CE 80 04    ;
CODE_0D9EE9:    LDY #$00                ; $0D:9EE9: A0 00       ;
CODE_0D9EEB:    STY $075B               ; $0D:9EEB: 8C 5B 07    ;
CODE_0D9EEE:    LDA $5C                 ; $0D:9EEE: A5 5C       ;
CODE_0D9EF0:    BNE CODE_0D9EF3         ; $0D:9EF0: D0 01       ;
CODE_0D9EF2:    INY                     ; $0D:9EF2: C8          ;
CODE_0D9EF3:    STY $0704               ; $0D:9EF3: 8C 04 07    ;
CODE_0D9EF6:    LDX $0710               ; $0D:9EF6: AE 10 07    ;
CODE_0D9EF9:    LDY $0752               ; $0D:9EF9: AC 52 07    ;
CODE_0D9EFC:    BEQ CODE_0D9F05         ; $0D:9EFC: F0 07       ;
CODE_0D9EFE:    CPY #$01                ; $0D:9EFE: C0 01       ;
CODE_0D9F00:    BEQ CODE_0D9F05         ; $0D:9F00: F0 03       ;
CODE_0D9F02:    LDX DATA_0D9EB6+2,y     ; $0D:9F02: BE B8 9E    ;
CODE_0D9F05:    LDA DATA_0D9EB6,y       ; $0D:9F05: B9 B6 9E    ;
CODE_0D9F08:    STA $0219               ; $0D:9F08: 8D 19 02    ;
CODE_0D9F0B:    LDA DATA_0D9EBC,x       ; $0D:9F0B: BD BC 9E    ;
CODE_0D9F0E:    STA $0237               ; $0D:9F0E: 8D 37 02    ;
CODE_0D9F11:    LDA DATA_0D9EC5,x       ; $0D:9F11: BD C5 9E    ;
CODE_0D9F14:    STA $0256               ; $0D:9F14: 8D 56 02    ;
CODE_0D9F17:    LDX #$00                ; $0D:9F17: A2 00       ;
CODE_0D9F19:    JSR CODE_0DE9A9         ; $0D:9F19: 20 A9 E9    ;
CODE_0D9F1C:    JSL CODE_0E98C3         ; $0D:9F1C: 22 C3 98 0E ;
CODE_0D9F20:    LDY $0715               ; $0D:9F20: AC 15 07    ;
CODE_0D9F23:    BEQ CODE_0D9F3F         ; $0D:9F23: F0 1A       ;
CODE_0D9F25:    LDA $0757               ; $0D:9F25: AD 57 07    ;
CODE_0D9F28:    BEQ CODE_0D9F3F         ; $0D:9F28: F0 15       ;
CODE_0D9F2A:    LDA DATA_0D9ECD,y       ; $0D:9F2A: B9 CD 9E    ;
CODE_0D9F2D:    STA $07E9               ; $0D:9F2D: 8D E9 07    ;
CODE_0D9F30:    LDA #$01                ; $0D:9F30: A9 01       ;
CODE_0D9F32:    STA $07EB               ; $0D:9F32: 8D EB 07    ;
CODE_0D9F35:    LSR A                   ; $0D:9F35: 4A          ;
CODE_0D9F36:    STA $07EA               ; $0D:9F36: 8D EA 07    ;
CODE_0D9F39:    STA $0757               ; $0D:9F39: 8D 57 07    ;
CODE_0D9F3C:    STA $07AF               ; $0D:9F3C: 8D AF 07    ;
CODE_0D9F3F:    LDY $0758               ; $0D:9F3F: AC 58 07    ;
CODE_0D9F42:    BEQ CODE_0D9F58         ; $0D:9F42: F0 14       ;
CODE_0D9F44:    LDA #$03                ; $0D:9F44: A9 03       ;
CODE_0D9F46:    STA $28                 ; $0D:9F46: 85 28       ;
CODE_0D9F48:    LDX #$00                ; $0D:9F48: A2 00       ;
CODE_0D9F4A:    JSR CODE_0DBCE2         ; $0D:9F4A: 20 E2 BC    ;
CODE_0D9F4D:    LDA #$F0                ; $0D:9F4D: A9 F0       ;
CODE_0D9F4F:    STA $44                 ; $0D:9F4F: 85 44       ;
CODE_0D9F51:    LDX #$09                ; $0D:9F51: A2 09       ;
CODE_0D9F53:    LDY #$00                ; $0D:9F53: A0 00       ;
CODE_0D9F55:    JSR CODE_0DB7C9         ; $0D:9F55: 20 C9 B7    ;
CODE_0D9F58:    LDY $5C                 ; $0D:9F58: A4 5C       ;
CODE_0D9F5A:    BNE CODE_0D9F5F         ; $0D:9F5A: D0 03       ;
CODE_0D9F5C:    JSR CODE_0DB542         ; $0D:9F5C: 20 42 B5    ;
CODE_0D9F5F:    LDA #$07                ; $0D:9F5F: A9 07       ;
CODE_0D9F61:    STA $0F                 ; $0D:9F61: 85 0F       ;
CODE_0D9F63:    RTS                     ; $0D:9F63: 60          ;

DATA_0D9F64:        db $66,$60,$88,$60,$66,$70,$77,$60
                    db $D6,$00,$77,$80,$70,$B0,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00

CODE_0D9F7E:    LDA #$01                ; $0D:9F7E: A9 01       ;
CODE_0D9F80:    STA $0E7F               ; $0D:9F80: 8D 7F 0E    ;
CODE_0D9F83:    STA $0E67               ; $0D:9F83: 8D 67 0E    ;
CODE_0D9F86:    STZ $0722               ; $0D:9F86: 9C 22 07    ;
CODE_0D9F89:    DEC $075A               ; $0D:9F89: CE 5A 07    ;
CODE_0D9F8C:    BPL CODE_0D9F97         ; $0D:9F8C: 10 09       ;
CODE_0D9F8E:    STZ $0772               ; $0D:9F8E: 9C 72 07    ;
CODE_0D9F91:    LDA #$03                ; $0D:9F91: A9 03       ;
CODE_0D9F93:    STA $0770               ; $0D:9F93: 8D 70 07    ;
CODE_0D9F96:    RTS                     ; $0D:9F96: 60          ;

CODE_0D9F97:    LDA $075F               ; $0D:9F97: AD 5F 07    ;
CODE_0D9F9A:    ASL A                   ; $0D:9F9A: 0A          ;
CODE_0D9F9B:    TAX                     ; $0D:9F9B: AA          ;
CODE_0D9F9C:    LDA $075C               ; $0D:9F9C: AD 5C 07    ;
CODE_0D9F9F:    AND #$02                ; $0D:9F9F: 29 02       ;
CODE_0D9FA1:    BEQ CODE_0D9FA4         ; $0D:9FA1: F0 01       ;
CODE_0D9FA3:    INX                     ; $0D:9FA3: E8          ;
CODE_0D9FA4:    LDY DATA_0D9F64,x       ; $0D:9FA4: BC 64 9F    ;
CODE_0D9FA7:    LDA $075C               ; $0D:9FA7: AD 5C 07    ;
CODE_0D9FAA:    LSR A                   ; $0D:9FAA: 4A          ;
CODE_0D9FAB:    TYA                     ; $0D:9FAB: 98          ;
CODE_0D9FAC:    BCS CODE_0D9FB2         ; $0D:9FAC: B0 04       ;
CODE_0D9FAE:    LSR A                   ; $0D:9FAE: 4A          ;
CODE_0D9FAF:    LSR A                   ; $0D:9FAF: 4A          ;
CODE_0D9FB0:    LSR A                   ; $0D:9FB0: 4A          ;
CODE_0D9FB1:    LSR A                   ; $0D:9FB1: 4A          ;
CODE_0D9FB2:    AND #$0F                ; $0D:9FB2: 29 0F       ;
CODE_0D9FB4:    CMP $071A               ; $0D:9FB4: CD 1A 07    ;
CODE_0D9FB7:    BEQ CODE_0D9FBD         ; $0D:9FB7: F0 04       ;
CODE_0D9FB9:    BCC CODE_0D9FBD         ; $0D:9FB9: 90 02       ;
CODE_0D9FBB:    LDA #$00                ; $0D:9FBB: A9 00       ;
CODE_0D9FBD:    STA $075B               ; $0D:9FBD: 8D 5B 07    ;
CODE_0D9FC0:    JSR CODE_0DA026         ; $0D:9FC0: 20 26 A0    ;
CODE_0D9FC3:    JMP CODE_0DA009         ; $0D:9FC3: 4C 09 A0    ;

CODE_0D9FC6:    LDA $0772               ; $0D:9FC6: AD 72 07    ;
CODE_0D9FC9:    ASL A                   ; $0D:9FC9: 0A          ;
CODE_0D9FCA:    TAX                     ; $0D:9FCA: AA          ;
CODE_0D9FCB:    JMP (PNTR_0D9FCE,x)     ; $0D:9FCB: 7C CE 9F    ;

PNTR_0D9FCE:        dw CODE_0D9FD4
                    dw CODE_0D89BD
                    dw CODE_0D9FEC

CODE_0D9FD4:    STZ $073C               ; $0D:9FD4: 9C 3C 07    ;
CODE_0D9FD7:    STZ $0722               ; $0D:9FD7: 9C 22 07    ;
CODE_0D9FDA:    STZ $0F06               ; $0D:9FDA: 9C 06 0F    ;
CODE_0D9FDD:    STZ $0B78               ; $0D:9FDD: 9C 78 0B    ;
CODE_0D9FE0:    LDA #$0A                ; $0D:9FE0: A9 0A       ;
CODE_0D9FE2:    STA $1602               ; $0D:9FE2: 8D 02 16    ;
CODE_0D9FE5:    INC $0774               ; $0D:9FE5: EE 74 07    ;
CODE_0D9FE8:    INC $0772               ; $0D:9FE8: EE 72 07    ;
CODE_0D9FEB:    RTS                     ; $0D:9FEB: 60          ;

CODE_0D9FEC:    JMP CODE_0D9980         ; $0D:9FEC: 4C 80 99    ;

CODE_0D9FEF:    LDA $07B0               ; $0D:9FEF: AD B0 07    ;
CODE_0D9FF2:    BNE CODE_0DA008         ; $0D:9FF2: D0 14       ;
CODE_0D9FF4:    JSR CODE_0DA026         ; $0D:9FF4: 20 26 A0    ;
CODE_0D9FF7:    BCC CODE_0DA009         ; $0D:9FF7: 90 10       ;
CODE_0D9FF9:    LDA $075F               ; $0D:9FF9: AD 5F 07    ;
CODE_0D9FFC:    STA $07FD               ; $0D:9FFC: 8D FD 07    ;
CODE_0D9FFF:    STZ $0772               ; $0D:9FFF: 9C 72 07    ;
CODE_0DA002:    STZ $07B0               ; $0D:A002: 9C B0 07    ;
CODE_0DA005:    STZ $0770               ; $0D:A005: 9C 70 07    ;
CODE_0DA008:    RTS                     ; $0D:A008: 60          ;

CODE_0DA009:    JSL CODE_0EC34C         ; $0D:A009: 22 4C C3 0E ;
CODE_0DA00D:    LDA #$01                ; $0D:A00D: A9 01       ;
CODE_0DA00F:    STA $0754               ; $0D:A00F: 8D 54 07    ;
CODE_0DA012:    INC $0757               ; $0D:A012: EE 57 07    ;
CODE_0DA015:    STZ $0747               ; $0D:A015: 9C 47 07    ;
CODE_0DA018:    STZ $0756               ; $0D:A018: 9C 56 07    ;
CODE_0DA01B:    STZ $0F                 ; $0D:A01B: 64 0F       ;
CODE_0DA01D:    STZ $0772               ; $0D:A01D: 9C 72 07    ;
CODE_0DA020:    LDA #$01                ; $0D:A020: A9 01       ;
CODE_0DA022:    STA $0770               ; $0D:A022: 8D 70 07    ;
CODE_0DA025:    RTS                     ; $0D:A025: 60          ;

CODE_0DA026:    SEC                     ; $0D:A026: 38          ;
CODE_0DA027:    LDA $077A               ; $0D:A027: AD 7A 07    ;
CODE_0DA02A:    BEQ CODE_0DA04D         ; $0D:A02A: F0 21       ;
CODE_0DA02C:    LDA $0761               ; $0D:A02C: AD 61 07    ;
CODE_0DA02F:    BMI CODE_0DA04D         ; $0D:A02F: 30 1C       ;
CODE_0DA031:    LDA $0753               ; $0D:A031: AD 53 07    ;
CODE_0DA034:    EOR #$01                ; $0D:A034: 49 01       ;
CODE_0DA036:    STA $0753               ; $0D:A036: 8D 53 07    ;
CODE_0DA039:    LDX #$06                ; $0D:A039: A2 06       ;
CODE_0DA03B:    LDA $075A,x             ; $0D:A03B: BD 5A 07    ;
CODE_0DA03E:    PHA                     ; $0D:A03E: 48          ;
CODE_0DA03F:    LDA $0761,x             ; $0D:A03F: BD 61 07    ;
CODE_0DA042:    STA $075A,x             ; $0D:A042: 9D 5A 07    ;
CODE_0DA045:    PLA                     ; $0D:A045: 68          ;
CODE_0DA046:    STA $0761,x             ; $0D:A046: 9D 61 07    ;
CODE_0DA049:    DEX                     ; $0D:A049: CA          ;
CODE_0DA04A:    BPL CODE_0DA03B         ; $0D:A04A: 10 EF       ;
CODE_0DA04C:    CLC                     ; $0D:A04C: 18          ;
CODE_0DA04D:    RTS                     ; $0D:A04D: 60          ;

CODE_0DA04E:    LDA #$FF                ; $0D:A04E: A9 FF       ;
CODE_0DA050:    STA $06C9               ; $0D:A050: 8D C9 06    ;
CODE_0DA053:    RTS                     ; $0D:A053: 60          ;

CODE_0DA054:    LDY $071F               ; $0D:A054: AC 1F 07    ;
CODE_0DA057:    BNE CODE_0DA05E         ; $0D:A057: D0 05       ;
CODE_0DA059:    LDY #$08                ; $0D:A059: A0 08       ;
CODE_0DA05B:    STY $071F               ; $0D:A05B: 8C 1F 07    ;
CODE_0DA05E:    DEY                     ; $0D:A05E: 88          ;
CODE_0DA05F:    TYA                     ; $0D:A05F: 98          ;
CODE_0DA060:    JSR CODE_0DA0BF         ; $0D:A060: 20 BF A0    ;
CODE_0DA063:    DEC $071F               ; $0D:A063: CE 1F 07    ;
CODE_0DA066:    BNE CODE_0DA09D         ; $0D:A066: D0 35       ;
CODE_0DA068:    LDA #$20                ; $0D:A068: A9 20       ;
CODE_0DA06A:    STA $00                 ; $0D:A06A: 85 00       ;
CODE_0DA06C:    LDA $BA                 ; $0D:A06C: A5 BA       ;
CODE_0DA06E:    CMP #$03                ; $0D:A06E: C9 03       ;
CODE_0DA070:    BNE CODE_0DA074         ; $0D:A070: D0 02       ;
CODE_0DA072:    ASL $00                 ; $0D:A072: 06 00       ;
CODE_0DA074:    LDA $0ED1               ; $0D:A074: AD D1 0E    ;
CODE_0DA077:    BNE CODE_0DA09D         ; $0D:A077: D0 24       ;
CODE_0DA079:    LDA $0EFD               ; $0D:A079: AD FD 0E    ;
CODE_0DA07C:    AND $00                 ; $0D:A07C: 25 00       ;
CODE_0DA07E:    BEQ CODE_0DA087         ; $0D:A07E: F0 07       ;
CODE_0DA080:    LDA $0EFC               ; $0D:A080: AD FC 0E    ;
CODE_0DA083:    BEQ CODE_0DA091         ; $0D:A083: F0 0C       ;
CODE_0DA085:    BRA CODE_0DA09D         ; $0D:A085: 80 16       ;

CODE_0DA087:    LDA $0EFC               ; $0D:A087: AD FC 0E    ;
CODE_0DA08A:    BEQ CODE_0DA09D         ; $0D:A08A: F0 11       ;
CODE_0DA08C:    STZ $0EFC               ; $0D:A08C: 9C FC 0E    ;
CODE_0DA08F:    BRA CODE_0DA096         ; $0D:A08F: 80 05       ;

CODE_0DA091:    LDA #$01                ; $0D:A091: A9 01       ;
CODE_0DA093:    STA $0EFC               ; $0D:A093: 8D FC 0E    ;
CODE_0DA096:    JSL CODE_0E9970         ; $0D:A096: 22 70 99 0E ;
CODE_0DA09A:    JSR CODE_0D9024         ; $0D:A09A: 20 24 90    ;
CODE_0DA09D:    LDA $0EEE               ; $0D:A09D: AD EE 0E    ;
CODE_0DA0A0:    AND #$10                ; $0D:A0A0: 29 10       ;
CODE_0DA0A2:    BEQ CODE_0DA0AB         ; $0D:A0A2: F0 07       ;
CODE_0DA0A4:    LDA $0EDD               ; $0D:A0A4: AD DD 0E    ;
CODE_0DA0A7:    BEQ CODE_0DA0B5         ; $0D:A0A7: F0 0C       ;
CODE_0DA0A9:    BRA CODE_0DA0BE         ; $0D:A0A9: 80 13       ;

CODE_0DA0AB:    LDA $0EDD               ; $0D:A0AB: AD DD 0E    ;
CODE_0DA0AE:    BEQ CODE_0DA0BE         ; $0D:A0AE: F0 0E       ;
CODE_0DA0B0:    STZ $0EDD               ; $0D:A0B0: 9C DD 0E    ;
CODE_0DA0B3:    BRA CODE_0DA0BA         ; $0D:A0B3: 80 05       ;

CODE_0DA0B5:    LDA #$01                ; $0D:A0B5: A9 01       ;
CODE_0DA0B7:    STA $0EDD               ; $0D:A0B7: 8D DD 0E    ;
CODE_0DA0BA:    JSL CODE_0E85DD         ; $0D:A0BA: 22 DD 85 0E ;
CODE_0DA0BE:    RTS                     ; $0D:A0BE: 60          ;

CODE_0DA0BF:    ASL A                   ; $0D:A0BF: 0A          ;
CODE_0DA0C0:    TAX                     ; $0D:A0C0: AA          ;
CODE_0DA0C1:    JMP (PNTR_0DA0C4,x)     ; $0D:A0C1: 7C C4 A0    ;

PNTR_0DA0C4:        dw CODE_0DA0D4
                    dw CODE_0D8EF0
                    dw CODE_0D8EF0
                    dw CODE_0DA165
                    dw CODE_0DA0D4
                    dw CODE_0D8EF0
                    dw CODE_0D8EF0
                    dw CODE_0DA165

CODE_0DA0D4:    INC $0726               ; $0D:A0D4: EE 26 07    ;
CODE_0DA0D7:    LDA $0726               ; $0D:A0D7: AD 26 07    ;
CODE_0DA0DA:    AND #$0F                ; $0D:A0DA: 29 0F       ;
CODE_0DA0DC:    BNE CODE_0DA0E4         ; $0D:A0DC: D0 06       ;
CODE_0DA0DE:    STA $0726               ; $0D:A0DE: 8D 26 07    ;
CODE_0DA0E1:    INC $0725               ; $0D:A0E1: EE 25 07    ;
CODE_0DA0E4:    INC $06A0               ; $0D:A0E4: EE A0 06    ;
CODE_0DA0E7:    LDA $06A0               ; $0D:A0E7: AD A0 06    ;
CODE_0DA0EA:    AND #$1F                ; $0D:A0EA: 29 1F       ;
CODE_0DA0EC:    STA $06A0               ; $0D:A0EC: 8D A0 06    ;
CODE_0DA0EF:    RTS                     ; $0D:A0EF: 60          ;

DATA_0DA0F0:        db $00,$30,$60,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$04,$00,$00,$05 ;
                    db $00,$00,$06,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$45,$00 ;
                    db $00,$0B,$0D,$46,$0C,$46 ;

DATA_0DA116:        db $46,$00,$0D,$1A,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$70 ;
                    db $70,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$82,$85 ;

DATA_0DA141:        db $71,$4E,$4A,$63,$00,$00,$00,$18 ;
                    db $01,$18,$07,$18,$0F,$18,$FF,$18 ;
                    db $01,$1F,$07,$1F,$0F,$1F,$81,$1F ;
                    db $01,$00,$8F,$1F,$F1,$1F,$F9,$18 ;
                    db $F1,$18,$FF,$1F ;

CODE_0DA165:    LDA $0728               ; $0D:A165: AD 28 07    ;
CODE_0DA168:    BEQ CODE_0DA16D         ; $0D:A168: F0 03       ;
CODE_0DA16A:    JSR CODE_0DA316         ; $0D:A16A: 20 16 A3    ;
CODE_0DA16D:    LDX #$0C                ; $0D:A16D: A2 0C       ;
CODE_0DA16F:    LDA #$00                ; $0D:A16F: A9 00       ;
CODE_0DA171:    STA $06A1,x             ; $0D:A171: 9D A1 06    ;
CODE_0DA174:    DEX                     ; $0D:A174: CA          ;
CODE_0DA175:    BPL CODE_0DA171         ; $0D:A175: 10 FA       ;
CODE_0DA177:    LDY $0742               ; $0D:A177: AC 42 07    ;
CODE_0DA17A:    BEQ CODE_0DA1BF         ; $0D:A17A: F0 43       ;
CODE_0DA17C:    LDA $0725               ; $0D:A17C: AD 25 07    ;
CODE_0DA17F:    CMP #$03                ; $0D:A17F: C9 03       ;
CODE_0DA181:    BMI CODE_0DA188         ; $0D:A181: 30 05       ;
CODE_0DA183:    SEC                     ; $0D:A183: 38          ;
CODE_0DA184:    SBC #$03                ; $0D:A184: E9 03       ;
CODE_0DA186:    BPL CODE_0DA17F         ; $0D:A186: 10 F7       ;
CODE_0DA188:    ASL A                   ; $0D:A188: 0A          ;
CODE_0DA189:    ASL A                   ; $0D:A189: 0A          ;
CODE_0DA18A:    ASL A                   ; $0D:A18A: 0A          ;
CODE_0DA18B:    ASL A                   ; $0D:A18B: 0A          ;
CODE_0DA18C:    ADC DATA_0DA0F0-1,y     ; $0D:A18C: 79 EF A0    ;
CODE_0DA18F:    ADC $0726               ; $0D:A18F: 6D 26 07    ;
CODE_0DA192:    TAX                     ; $0D:A192: AA          ;
CODE_0DA193:    LDA.l DATA_0FF77A,x     ; $0D:A193: BF 7A F7 0F ;
CODE_0DA197:    BEQ CODE_0DA1BF         ; $0D:A197: F0 26       ;
CODE_0DA199:    PHA                     ; $0D:A199: 48          ;
CODE_0DA19A:    AND #$0F                ; $0D:A19A: 29 0F       ;
CODE_0DA19C:    SEC                     ; $0D:A19C: 38          ;
CODE_0DA19D:    SBC #$01                ; $0D:A19D: E9 01       ;
CODE_0DA19F:    STA $00                 ; $0D:A19F: 85 00       ;
CODE_0DA1A1:    ASL A                   ; $0D:A1A1: 0A          ;
CODE_0DA1A2:    ADC $00                 ; $0D:A1A2: 65 00       ;
CODE_0DA1A4:    TAX                     ; $0D:A1A4: AA          ;
CODE_0DA1A5:    PLA                     ; $0D:A1A5: 68          ;
CODE_0DA1A6:    LSR A                   ; $0D:A1A6: 4A          ;
CODE_0DA1A7:    LSR A                   ; $0D:A1A7: 4A          ;
CODE_0DA1A8:    LSR A                   ; $0D:A1A8: 4A          ;
CODE_0DA1A9:    LSR A                   ; $0D:A1A9: 4A          ;
CODE_0DA1AA:    TAY                     ; $0D:A1AA: A8          ;
CODE_0DA1AB:    LDA #$03                ; $0D:A1AB: A9 03       ;
CODE_0DA1AD:    STA $00                 ; $0D:A1AD: 85 00       ;
CODE_0DA1AF:    LDA DATA_0DA0F0+3,x     ; $0D:A1AF: BD F3 A0    ;
CODE_0DA1B2:    STA $06A1,y             ; $0D:A1B2: 99 A1 06    ;
CODE_0DA1B5:    INX                     ; $0D:A1B5: E8          ;
CODE_0DA1B6:    INY                     ; $0D:A1B6: C8          ;
CODE_0DA1B7:    CPY #$0B                ; $0D:A1B7: C0 0B       ;
CODE_0DA1B9:    BEQ CODE_0DA1BF         ; $0D:A1B9: F0 04       ;
CODE_0DA1BB:    DEC $00                 ; $0D:A1BB: C6 00       ;
CODE_0DA1BD:    BNE CODE_0DA1AF         ; $0D:A1BD: D0 F0       ;
CODE_0DA1BF:    LDX $0741               ; $0D:A1BF: AE 41 07    ;
CODE_0DA1C2:    BEQ CODE_0DA1FD         ; $0D:A1C2: F0 39       ;
CODE_0DA1C4:    LDY DATA_0DA116,x       ; $0D:A1C4: BC 16 A1    ;
CODE_0DA1C7:    LDX #$00                ; $0D:A1C7: A2 00       ;
CODE_0DA1C9:    LDA DATA_0DA116+4,y     ; $0D:A1C9: B9 1A A1    ;
CODE_0DA1CC:    BEQ CODE_0DA1F7         ; $0D:A1CC: F0 29       ;
CODE_0DA1CE:    PHY                     ; $0D:A1CE: 5A          ;
CODE_0DA1CF:    LDY $5C                 ; $0D:A1CF: A4 5C       ;
CODE_0DA1D1:    BNE CODE_0DA1E9         ; $0D:A1D1: D0 16       ;
CODE_0DA1D3:    LDY $DB                 ; $0D:A1D3: A4 DB       ;
CODE_0DA1D5:    CPY #$45                ; $0D:A1D5: C0 45       ;
CODE_0DA1D7:    BEQ CODE_0DA1F3         ; $0D:A1D7: F0 1A       ;
CODE_0DA1D9:    LDY $0EF0               ; $0D:A1D9: AC F0 0E    ;
CODE_0DA1DC:    BNE CODE_0DA1E4         ; $0D:A1DC: D0 06       ;
CODE_0DA1DE:    INC $0EF0               ; $0D:A1DE: EE F0 0E    ;
CODE_0DA1E1:    INC A                   ; $0D:A1E1: 1A          ;
CODE_0DA1E2:    BRA CODE_0DA1F1         ; $0D:A1E2: 80 0D       ;

CODE_0DA1E4:    STZ $0EF0               ; $0D:A1E4: 9C F0 0E    ;
CODE_0DA1E7:    BRA CODE_0DA1F3         ; $0D:A1E7: 80 0A       ;

CODE_0DA1E9:    CPY #$03                ; $0D:A1E9: C0 03       ;
CODE_0DA1EB:    BNE CODE_0DA1F3         ; $0D:A1EB: D0 06       ;
CODE_0DA1ED:    CMP #$86                ; $0D:A1ED: C9 86       ;
CODE_0DA1EF:    BNE CODE_0DA1F3         ; $0D:A1EF: D0 02       ;
CODE_0DA1F1:    INC A                   ; $0D:A1F1: 1A          ;
CODE_0DA1F2:    INC A                   ; $0D:A1F2: 1A          ;
CODE_0DA1F3:    PLY                     ; $0D:A1F3: 7A          ;
CODE_0DA1F4:    STA $06A1,x             ; $0D:A1F4: 9D A1 06    ;
CODE_0DA1F7:    INY                     ; $0D:A1F7: C8          ;
CODE_0DA1F8:    INX                     ; $0D:A1F8: E8          ;
CODE_0DA1F9:    CPX #$0D                ; $0D:A1F9: E0 0D       ;
CODE_0DA1FB:    BNE CODE_0DA1C9         ; $0D:A1FB: D0 CC       ;
CODE_0DA1FD:    STZ $0109               ; $0D:A1FD: 9C 09 01    ;
CODE_0DA200:    STZ $F9                 ; $0D:A200: 64 F9       ;
CODE_0DA202:    LDA $0EE8               ; $0D:A202: AD E8 0E    ;
CODE_0DA205:    STA $0EE9               ; $0D:A205: 8D E9 0E    ;
CODE_0DA208:    INC $0EE8               ; $0D:A208: EE E8 0E    ;
CODE_0DA20B:    LDY $5C                 ; $0D:A20B: A4 5C       ;
CODE_0DA20D:    BNE CODE_0DA219         ; $0D:A20D: D0 0A       ;
CODE_0DA20F:    LDA $DB                 ; $0D:A20F: A5 DB       ;
CODE_0DA211:    CMP #$41                ; $0D:A211: C9 41       ;
CODE_0DA213:    BNE CODE_0DA219         ; $0D:A213: D0 04       ;
CODE_0DA215:    LDA #$63                ; $0D:A215: A9 63       ;
CODE_0DA217:    BRA CODE_0DA223         ; $0D:A217: 80 0A       ;

CODE_0DA219:    LDA DATA_0DA141,y       ; $0D:A219: B9 41 A1    ;
CODE_0DA21C:    LDY $0743               ; $0D:A21C: AC 43 07    ;
CODE_0DA21F:    BEQ CODE_0DA223         ; $0D:A21F: F0 02       ;
CODE_0DA221:    LDA #$86                ; $0D:A221: A9 86       ;
CODE_0DA223:    STA $07                 ; $0D:A223: 85 07       ;
CODE_0DA225:    LDX #$00                ; $0D:A225: A2 00       ;
CODE_0DA227:    LDA $0727               ; $0D:A227: AD 27 07    ;
CODE_0DA22A:    ASL A                   ; $0D:A22A: 0A          ;
CODE_0DA22B:    TAY                     ; $0D:A22B: A8          ;
CODE_0DA22C:    LDA DATA_0DA141+4,y     ; $0D:A22C: B9 45 A1    ;
CODE_0DA22F:    STA $00                 ; $0D:A22F: 85 00       ;
CODE_0DA231:    INY                     ; $0D:A231: C8          ;
CODE_0DA232:    STY $01                 ; $0D:A232: 84 01       ;
CODE_0DA234:    LDA $0743               ; $0D:A234: AD 43 07    ;
CODE_0DA237:    BEQ CODE_0DA243         ; $0D:A237: F0 0A       ;
CODE_0DA239:    CPX #$00                ; $0D:A239: E0 00       ;
CODE_0DA23B:    BEQ CODE_0DA243         ; $0D:A23B: F0 06       ;
CODE_0DA23D:    LDA $00                 ; $0D:A23D: A5 00       ;
CODE_0DA23F:    AND #$08                ; $0D:A23F: 29 08       ;
CODE_0DA241:    STA $00                 ; $0D:A241: 85 00       ;
CODE_0DA243:    LDY #$00                ; $0D:A243: A0 00       ;
CODE_0DA245:    LDA DATA_0DC97F,y       ; $0D:A245: B9 7F C9    ;
CODE_0DA248:    BIT $00                 ; $0D:A248: 24 00       ;
CODE_0DA24A:    BEQ CODE_0DA29C         ; $0D:A24A: F0 50       ;
CODE_0DA24C:    LDA $00DB               ; $0D:A24C: AD DB 00    ;
CODE_0DA24F:    CMP #$09                ; $0D:A24F: C9 09       ;
CODE_0DA251:    BEQ CODE_0DA263         ; $0D:A251: F0 10       ;
CODE_0DA253:    LDA $BA                 ; $0D:A253: A5 BA       ;
CODE_0DA255:    CMP #$03                ; $0D:A255: C9 03       ;
CODE_0DA257:    BNE CODE_0DA263         ; $0D:A257: D0 0A       ;
CODE_0DA259:    LDA $F9                 ; $0D:A259: A5 F9       ;
CODE_0DA25B:    BEQ CODE_0DA263         ; $0D:A25B: F0 06       ;
CODE_0DA25D:    LDA #$66                ; $0D:A25D: A9 66       ;
CODE_0DA25F:    STA $07                 ; $0D:A25F: 85 07       ;
CODE_0DA261:    BRA CODE_0DA265         ; $0D:A261: 80 02       ;

CODE_0DA263:    LDA $07                 ; $0D:A263: A5 07       ;
CODE_0DA265:    STA $06A1,x             ; $0D:A265: 9D A1 06    ;
CODE_0DA268:    LDA $F9                 ; $0D:A268: A5 F9       ;
CODE_0DA26A:    BEQ CODE_0DA280         ; $0D:A26A: F0 14       ;
CODE_0DA26C:    LDA $BA                 ; $0D:A26C: A5 BA       ;
CODE_0DA26E:    CMP #$03                ; $0D:A26E: C9 03       ;
CODE_0DA270:    BNE CODE_0DA280         ; $0D:A270: D0 0E       ;
CODE_0DA272:    LDA $F9                 ; $0D:A272: A5 F9       ;
CODE_0DA274:    INC $F9                 ; $0D:A274: E6 F9       ;
CODE_0DA276:    INC A                   ; $0D:A276: 1A          ;
CODE_0DA277:    BNE CODE_0DA2A3         ; $0D:A277: D0 2A       ;
CODE_0DA279:    INC $06A1,x             ; $0D:A279: FE A1 06    ;
CODE_0DA27C:    INC $07                 ; $0D:A27C: E6 07       ;
CODE_0DA27E:    BRA CODE_0DA2A3         ; $0D:A27E: 80 23       ;

CODE_0DA280:    LDA $BA                 ; $0D:A280: A5 BA       ;
CODE_0DA282:    CMP #$03                ; $0D:A282: C9 03       ;
CODE_0DA284:    BNE CODE_0DA2A3         ; $0D:A284: D0 1D       ;
CODE_0DA286:    LDA $0743               ; $0D:A286: AD 43 07    ;
CODE_0DA289:    BNE CODE_0DA2A3         ; $0D:A289: D0 18       ;
CODE_0DA28B:    LDA $0109               ; $0D:A28B: AD 09 01    ;
CODE_0DA28E:    BNE CODE_0DA2A3         ; $0D:A28E: D0 13       ;
CODE_0DA290:    LDA $0EE9               ; $0D:A290: AD E9 0E    ;
CODE_0DA293:    AND #$01                ; $0D:A293: 29 01       ;
CODE_0DA295:    BNE CODE_0DA2A3         ; $0D:A295: D0 0C       ;
CODE_0DA297:    INC $06A1,x             ; $0D:A297: FE A1 06    ;
CODE_0DA29A:    BRA CODE_0DA2A3         ; $0D:A29A: 80 07       ;

CODE_0DA29C:    LDA #$FE                ; $0D:A29C: A9 FE       ;
CODE_0DA29E:    STA $F9                 ; $0D:A29E: 85 F9       ;
CODE_0DA2A0:    INC $0109               ; $0D:A2A0: EE 09 01    ;
CODE_0DA2A3:    INX                     ; $0D:A2A3: E8          ;
CODE_0DA2A4:    CPX #$0D                ; $0D:A2A4: E0 0D       ;
CODE_0DA2A6:    BEQ CODE_0DA2C5         ; $0D:A2A6: F0 1D       ;
CODE_0DA2A8:    LDA $5C                 ; $0D:A2A8: A5 5C       ;
CODE_0DA2AA:    CMP #$02                ; $0D:A2AA: C9 02       ;
CODE_0DA2AC:    BNE CODE_0DA2B6         ; $0D:A2AC: D0 08       ;
CODE_0DA2AE:    CPX #$0B                ; $0D:A2AE: E0 0B       ;
CODE_0DA2B0:    BNE CODE_0DA2B6         ; $0D:A2B0: D0 04       ;
CODE_0DA2B2:    LDA #$4E                ; $0D:A2B2: A9 4E       ;
CODE_0DA2B4:    STA $07                 ; $0D:A2B4: 85 07       ;
CODE_0DA2B6:    INC $0EE9               ; $0D:A2B6: EE E9 0E    ;
CODE_0DA2B9:    INY                     ; $0D:A2B9: C8          ;
CODE_0DA2BA:    CPY #$08                ; $0D:A2BA: C0 08       ;
CODE_0DA2BC:    BNE CODE_0DA245         ; $0D:A2BC: D0 87       ;
CODE_0DA2BE:    LDY $01                 ; $0D:A2BE: A4 01       ;
CODE_0DA2C0:    BEQ CODE_0DA2C5         ; $0D:A2C0: F0 03       ;
CODE_0DA2C2:    JMP CODE_0DA22C         ; $0D:A2C2: 4C 2C A2    ;

CODE_0DA2C5:    LDA $06AD               ; $0D:A2C5: AD AD 06    ;
CODE_0DA2C8:    CMP #$4E                ; $0D:A2C8: C9 4E       ;
CODE_0DA2CA:    BEQ CODE_0DA2D0         ; $0D:A2CA: F0 04       ;
CODE_0DA2CC:    CMP #$71                ; $0D:A2CC: C9 71       ;
CODE_0DA2CE:    BNE CODE_0DA2D3         ; $0D:A2CE: D0 03       ;
CODE_0DA2D0:    INC $06AD               ; $0D:A2D0: EE AD 06    ;
CODE_0DA2D3:    JSR CODE_0DA316         ; $0D:A2D3: 20 16 A3    ;
CODE_0DA2D6:    LDA $06A0               ; $0D:A2D6: AD A0 06    ;
CODE_0DA2D9:    JSR CODE_0DAA8F         ; $0D:A2D9: 20 8F AA    ;
CODE_0DA2DC:    LDA $06AC               ; $0D:A2DC: AD AC 06    ;
CODE_0DA2DF:    CMP #$70                ; $0D:A2DF: C9 70       ;
CODE_0DA2E1:    BNE CODE_0DA2E6         ; $0D:A2E1: D0 03       ;
CODE_0DA2E3:    STA $06AD               ; $0D:A2E3: 8D AD 06    ;
CODE_0DA2E6:    LDX #$00                ; $0D:A2E6: A2 00       ;
CODE_0DA2E8:    TXY                     ; $0D:A2E8: 9B          ;
CODE_0DA2E9:    STY $00                 ; $0D:A2E9: 84 00       ;
CODE_0DA2EB:    LDA $0EC9               ; $0D:A2EB: AD C9 0E    ;
CODE_0DA2EE:    BNE CODE_0DA311         ; $0D:A2EE: D0 21       ;
CODE_0DA2F0:    LDA $06A1,x             ; $0D:A2F0: BD A1 06    ;
CODE_0DA2F3:    AND #$C0                ; $0D:A2F3: 29 C0       ;
CODE_0DA2F5:    ASL A                   ; $0D:A2F5: 0A          ;
CODE_0DA2F6:    ROL A                   ; $0D:A2F6: 2A          ;
CODE_0DA2F7:    ROL A                   ; $0D:A2F7: 2A          ;
CODE_0DA2F8:    TAY                     ; $0D:A2F8: A8          ;
CODE_0DA2F9:    LDA $06A1,x             ; $0D:A2F9: BD A1 06    ;
CODE_0DA2FC:    CMP DATA_0DA312,y       ; $0D:A2FC: D9 12 A3    ;
CODE_0DA2FF:    BCS CODE_0DA303         ; $0D:A2FF: B0 02       ;
CODE_0DA301:    LDA #$00                ; $0D:A301: A9 00       ;
CODE_0DA303:    LDY $00                 ; $0D:A303: A4 00       ;
CODE_0DA305:    STA ($06),y             ; $0D:A305: 91 06       ;
CODE_0DA307:    TYA                     ; $0D:A307: 98          ;
CODE_0DA308:    CLC                     ; $0D:A308: 18          ;
CODE_0DA309:    ADC #$10                ; $0D:A309: 69 10       ;
CODE_0DA30B:    TAY                     ; $0D:A30B: A8          ;
CODE_0DA30C:    INX                     ; $0D:A30C: E8          ;
CODE_0DA30D:    CPX #$0D                ; $0D:A30D: E0 0D       ;
CODE_0DA30F:    BCC CODE_0DA2E9         ; $0D:A30F: 90 D8       ;
CODE_0DA311:    RTS                     ; $0D:A311: 60          ;

DATA_0DA312:        db $16,$49,$86,$E7

CODE_0DA316:    REP #$10                ; $0D:A316: C2 10       ;
CODE_0DA318:    LDX #$0004              ; $0D:A318: A2 04 00    ;
CODE_0DA31B:    STZ $010B               ; $0D:A31B: 9C 0B 01    ;
CODE_0DA31E:    STX $9E                 ; $0D:A31E: 86 9E       ;
CODE_0DA320:    STZ $0729               ; $0D:A320: 9C 29 07    ;
CODE_0DA323:    LDY $072C               ; $0D:A323: AC 2C 07    ;
CODE_0DA326:    LDA [$FA],y             ; $0D:A326: B7 FA       ;
CODE_0DA328:    CMP #$FD                ; $0D:A328: C9 FD       ;
CODE_0DA32A:    BEQ CODE_0DA38F         ; $0D:A32A: F0 63       ;
CODE_0DA32C:    AND #$0F                ; $0D:A32C: 29 0F       ;
CODE_0DA32E:    CMP #$0F                ; $0D:A32E: C9 0F       ;
CODE_0DA330:    BNE CODE_0DA335         ; $0D:A330: D0 03       ;
CODE_0DA332:    INC $010B               ; $0D:A332: EE 0B 01    ;
CODE_0DA335:    LDA $1300,x             ; $0D:A335: BD 00 13    ;
CODE_0DA338:    BPL CODE_0DA38F         ; $0D:A338: 10 55       ;
CODE_0DA33A:    LDA $010B               ; $0D:A33A: AD 0B 01    ;
CODE_0DA33D:    BEQ CODE_0DA340         ; $0D:A33D: F0 01       ;
CODE_0DA33F:    INY                     ; $0D:A33F: C8          ;
CODE_0DA340:    INY                     ; $0D:A340: C8          ;
CODE_0DA341:    LDA [$FA],y             ; $0D:A341: B7 FA       ;
CODE_0DA343:    ASL A                   ; $0D:A343: 0A          ;
CODE_0DA344:    BCC CODE_0DA351         ; $0D:A344: 90 0B       ;
CODE_0DA346:    LDA $072B               ; $0D:A346: AD 2B 07    ;
CODE_0DA349:    BNE CODE_0DA351         ; $0D:A349: D0 06       ;
CODE_0DA34B:    INC $072B               ; $0D:A34B: EE 2B 07    ;
CODE_0DA34E:    INC $072A               ; $0D:A34E: EE 2A 07    ;
CODE_0DA351:    LDY $072C               ; $0D:A351: AC 2C 07    ;
CODE_0DA354:    LDA [$FA],y             ; $0D:A354: B7 FA       ;
CODE_0DA356:    AND #$0F                ; $0D:A356: 29 0F       ;
CODE_0DA358:    CMP #$0D                ; $0D:A358: C9 0D       ;
CODE_0DA35A:    BNE CODE_0DA37E         ; $0D:A35A: D0 22       ;
CODE_0DA35C:    INY                     ; $0D:A35C: C8          ;
CODE_0DA35D:    LDA [$FA],y             ; $0D:A35D: B7 FA       ;
CODE_0DA35F:    LDY $072C               ; $0D:A35F: AC 2C 07    ;
CODE_0DA362:    AND #$40                ; $0D:A362: 29 40       ;
CODE_0DA364:    BNE CODE_0DA387         ; $0D:A364: D0 21       ;
CODE_0DA366:    LDA $072B               ; $0D:A366: AD 2B 07    ;
CODE_0DA369:    BNE CODE_0DA387         ; $0D:A369: D0 1C       ;
CODE_0DA36B:    LDA $010B               ; $0D:A36B: AD 0B 01    ;
CODE_0DA36E:    BEQ CODE_0DA371         ; $0D:A36E: F0 01       ;
CODE_0DA370:    INY                     ; $0D:A370: C8          ;
CODE_0DA371:    INY                     ; $0D:A371: C8          ;
CODE_0DA372:    LDA [$FA],y             ; $0D:A372: B7 FA       ;
CODE_0DA374:    AND #$1F                ; $0D:A374: 29 1F       ;
CODE_0DA376:    STA $072A               ; $0D:A376: 8D 2A 07    ;
CODE_0DA379:    INC $072B               ; $0D:A379: EE 2B 07    ;
CODE_0DA37C:    BRA CODE_0DA399         ; $0D:A37C: 80 1B       ;

CODE_0DA37E:    CMP #$0E                ; $0D:A37E: C9 0E       ;
CODE_0DA380:    BNE CODE_0DA387         ; $0D:A380: D0 05       ;
CODE_0DA382:    LDA $0728               ; $0D:A382: AD 28 07    ;
CODE_0DA385:    BNE CODE_0DA38F         ; $0D:A385: D0 08       ;
CODE_0DA387:    LDA $072A               ; $0D:A387: AD 2A 07    ;
CODE_0DA38A:    CMP $0725               ; $0D:A38A: CD 25 07    ;
CODE_0DA38D:    BCC CODE_0DA396         ; $0D:A38D: 90 07       ;
CODE_0DA38F:    JSR CODE_0DA3DD         ; $0D:A38F: 20 DD A3    ;
CODE_0DA392:    REP #$10                ; $0D:A392: C2 10       ;
CODE_0DA394:    BRA CODE_0DA39C         ; $0D:A394: 80 06       ;

CODE_0DA396:    INC $0729               ; $0D:A396: EE 29 07    ;
CODE_0DA399:    JSR CODE_0DA3BF         ; $0D:A399: 20 BF A3    ;
CODE_0DA39C:    LDX $9E                 ; $0D:A39C: A6 9E       ;
CODE_0DA39E:    LDA $1300,x             ; $0D:A39E: BD 00 13    ;
CODE_0DA3A1:    BMI CODE_0DA3A6         ; $0D:A3A1: 30 03       ;
CODE_0DA3A3:    DEC $1300,x             ; $0D:A3A3: DE 00 13    ;
CODE_0DA3A6:    DEX                     ; $0D:A3A6: CA          ;
CODE_0DA3A7:    BMI CODE_0DA3AC         ; $0D:A3A7: 30 03       ;
CODE_0DA3A9:    JMP CODE_0DA31B         ; $0D:A3A9: 4C 1B A3    ;

CODE_0DA3AC:    LDA $0729               ; $0D:A3AC: AD 29 07    ;
CODE_0DA3AF:    BEQ CODE_0DA3B4         ; $0D:A3AF: F0 03       ;
CODE_0DA3B1:    JMP CODE_0DA316         ; $0D:A3B1: 4C 16 A3    ;

CODE_0DA3B4:    LDA $0728               ; $0D:A3B4: AD 28 07    ;
CODE_0DA3B7:    BEQ CODE_0DA3BC         ; $0D:A3B7: F0 03       ;
CODE_0DA3B9:    JMP CODE_0DA316         ; $0D:A3B9: 4C 16 A3    ;

CODE_0DA3BC:    SEP #$10                ; $0D:A3BC: E2 10       ;
CODE_0DA3BE:    RTS                     ; $0D:A3BE: 60          ;

CODE_0DA3BF:    REP #$20                ; $0D:A3BF: C2 20       ;
CODE_0DA3C1:    INC $072C               ; $0D:A3C1: EE 2C 07    ;
CODE_0DA3C4:    INC $072C               ; $0D:A3C4: EE 2C 07    ;
CODE_0DA3C7:    LDA $010B               ; $0D:A3C7: AD 0B 01    ;
CODE_0DA3CA:    AND #$00FF              ; $0D:A3CA: 29 FF 00    ;
CODE_0DA3CD:    BEQ CODE_0DA3D2         ; $0D:A3CD: F0 03       ;
CODE_0DA3CF:    INC $072C               ; $0D:A3CF: EE 2C 07    ;
CODE_0DA3D2:    SEP #$20                ; $0D:A3D2: E2 20       ;
CODE_0DA3D4:    LDA #$00                ; $0D:A3D4: A9 00       ;
CODE_0DA3D6:    STA $072B               ; $0D:A3D6: 8D 2B 07    ;
CODE_0DA3D9:    STA $010B               ; $0D:A3D9: 8D 0B 01    ;
CODE_0DA3DC:    RTS                     ; $0D:A3DC: 60          ;

CODE_0DA3DD:    REP #$30                ; $0D:A3DD: C2 30       ;
CODE_0DA3DF:    TXA                     ; $0D:A3DF: 8A          ;
CODE_0DA3E0:    AND #$00FF              ; $0D:A3E0: 29 FF 00    ;
CODE_0DA3E3:    TAX                     ; $0D:A3E3: AA          ;
CODE_0DA3E4:    SEP #$20                ; $0D:A3E4: E2 20       ;
CODE_0DA3E6:    LDA $1300,x             ; $0D:A3E6: BD 00 13    ;
CODE_0DA3E9:    BMI CODE_0DA3F5         ; $0D:A3E9: 30 0A       ;
CODE_0DA3EB:    REP #$20                ; $0D:A3EB: C2 20       ;
CODE_0DA3ED:    TXA                     ; $0D:A3ED: 8A          ;
CODE_0DA3EE:    ASL A                   ; $0D:A3EE: 0A          ;
CODE_0DA3EF:    TAX                     ; $0D:A3EF: AA          ;
CODE_0DA3F0:    LDY $1305,x             ; $0D:A3F0: BC 05 13    ;
CODE_0DA3F3:    SEP #$20                ; $0D:A3F3: E2 20       ;
CODE_0DA3F5:    LDA $0F82               ; $0D:A3F5: AD 82 0F    ;
CODE_0DA3F8:    BEQ CODE_0DA402         ; $0D:A3F8: F0 08       ;
CODE_0DA3FA:    JSL CODE_0E82EE         ; $0D:A3FA: 22 EE 82 0E ;
CODE_0DA3FE:    STZ $0F82               ; $0D:A3FE: 9C 82 0F    ;
CODE_0DA401:    RTS                     ; $0D:A401: 60          ;

CODE_0DA402:    STY $F7                 ; $0D:A402: 84 F7       ;
CODE_0DA404:    STZ $F6                 ; $0D:A404: 64 F6       ;
CODE_0DA406:    STZ $010B               ; $0D:A406: 9C 0B 01    ;
CODE_0DA409:    LDX #$0010              ; $0D:A409: A2 10 00    ;
CODE_0DA40C:    LDA [$FA],y             ; $0D:A40C: B7 FA       ;
CODE_0DA40E:    CMP #$FD                ; $0D:A40E: C9 FD       ;
CODE_0DA410:    BEQ CODE_0DA3BC         ; $0D:A410: F0 AA       ;
CODE_0DA412:    AND #$0F                ; $0D:A412: 29 0F       ;
CODE_0DA414:    CMP #$0F                ; $0D:A414: C9 0F       ;
CODE_0DA416:    BNE CODE_0DA41C         ; $0D:A416: D0 04       ;
CODE_0DA418:    INC $F6                 ; $0D:A418: E6 F6       ;
CODE_0DA41A:    BRA CODE_0DA426         ; $0D:A41A: 80 0A       ;

CODE_0DA41C:    LDX #$0008              ; $0D:A41C: A2 08 00    ;
CODE_0DA41F:    CMP #$0C                ; $0D:A41F: C9 0C       ;
CODE_0DA421:    BEQ CODE_0DA426         ; $0D:A421: F0 03       ;
CODE_0DA423:    LDX #$0000              ; $0D:A423: A2 00 00    ;
CODE_0DA426:    STX $07                 ; $0D:A426: 86 07       ;
CODE_0DA428:    LDX $9E                 ; $0D:A428: A6 9E       ;
CODE_0DA42A:    CMP #$0E                ; $0D:A42A: C9 0E       ;
CODE_0DA42C:    BNE CODE_0DA434         ; $0D:A42C: D0 06       ;
CODE_0DA42E:    STZ $07                 ; $0D:A42E: 64 07       ;
CODE_0DA430:    LDA #$36                ; $0D:A430: A9 36       ;
CODE_0DA432:    BNE CODE_0DA491         ; $0D:A432: D0 5D       ;
CODE_0DA434:    CMP #$0D                ; $0D:A434: C9 0D       ;
CODE_0DA436:    BNE CODE_0DA457         ; $0D:A436: D0 1F       ;
CODE_0DA438:    LDA #$28                ; $0D:A438: A9 28       ;
CODE_0DA43A:    STA $07                 ; $0D:A43A: 85 07       ;
CODE_0DA43C:    LDA $F6                 ; $0D:A43C: A5 F6       ;
CODE_0DA43E:    BEQ CODE_0DA441         ; $0D:A43E: F0 01       ;
CODE_0DA440:    INY                     ; $0D:A440: C8          ;
CODE_0DA441:    INY                     ; $0D:A441: C8          ;
CODE_0DA442:    LDA [$FA],y             ; $0D:A442: B7 FA       ;
CODE_0DA444:    AND #$40                ; $0D:A444: 29 40       ;
CODE_0DA446:    BEQ CODE_0DA4B0         ; $0D:A446: F0 68       ;
CODE_0DA448:    LDA [$FA],y             ; $0D:A448: B7 FA       ;
CODE_0DA44A:    AND #$7F                ; $0D:A44A: 29 7F       ;
CODE_0DA44C:    CMP #$4B                ; $0D:A44C: C9 4B       ;
CODE_0DA44E:    BNE CODE_0DA453         ; $0D:A44E: D0 03       ;
CODE_0DA450:    INC $0745               ; $0D:A450: EE 45 07    ;
CODE_0DA453:    AND #$3F                ; $0D:A453: 29 3F       ;
CODE_0DA455:    BRA CODE_0DA491         ; $0D:A455: 80 3A       ;

CODE_0DA457:    CMP #$0C                ; $0D:A457: C9 0C       ;
CODE_0DA459:    BCS CODE_0DA483         ; $0D:A459: B0 28       ;
CODE_0DA45B:    LDA $F6                 ; $0D:A45B: A5 F6       ;
CODE_0DA45D:    BEQ CODE_0DA460         ; $0D:A45D: F0 01       ;
CODE_0DA45F:    INY                     ; $0D:A45F: C8          ;
CODE_0DA460:    INY                     ; $0D:A460: C8          ;
CODE_0DA461:    LDA [$FA],y             ; $0D:A461: B7 FA       ;
CODE_0DA463:    AND #$70                ; $0D:A463: 29 70       ;
CODE_0DA465:    BNE CODE_0DA471         ; $0D:A465: D0 0A       ;
CODE_0DA467:    LDA #$18                ; $0D:A467: A9 18       ;
CODE_0DA469:    STA $07                 ; $0D:A469: 85 07       ;
CODE_0DA46B:    LDA [$FA],y             ; $0D:A46B: B7 FA       ;
CODE_0DA46D:    AND #$0F                ; $0D:A46D: 29 0F       ;
CODE_0DA46F:    BRA CODE_0DA491         ; $0D:A46F: 80 20       ;

CODE_0DA471:    STA $00                 ; $0D:A471: 85 00       ;
CODE_0DA473:    CMP #$70                ; $0D:A473: C9 70       ;
CODE_0DA475:    BNE CODE_0DA47F         ; $0D:A475: D0 08       ;
CODE_0DA477:    LDA [$FA],y             ; $0D:A477: B7 FA       ;
CODE_0DA479:    AND #$08                ; $0D:A479: 29 08       ;
CODE_0DA47B:    BEQ CODE_0DA47F         ; $0D:A47B: F0 02       ;
CODE_0DA47D:    STZ $00                 ; $0D:A47D: 64 00       ;
CODE_0DA47F:    LDA $00                 ; $0D:A47F: A5 00       ;
CODE_0DA481:    BRA CODE_0DA48D         ; $0D:A481: 80 0A       ;

CODE_0DA483:    LDA $F6                 ; $0D:A483: A5 F6       ;
CODE_0DA485:    BEQ CODE_0DA488         ; $0D:A485: F0 01       ;
CODE_0DA487:    INY                     ; $0D:A487: C8          ;
CODE_0DA488:    INY                     ; $0D:A488: C8          ;
CODE_0DA489:    LDA [$FA],y             ; $0D:A489: B7 FA       ;
CODE_0DA48B:    AND #$70                ; $0D:A48B: 29 70       ;
CODE_0DA48D:    LSR A                   ; $0D:A48D: 4A          ;
CODE_0DA48E:    LSR A                   ; $0D:A48E: 4A          ;
CODE_0DA48F:    LSR A                   ; $0D:A48F: 4A          ;
CODE_0DA490:    LSR A                   ; $0D:A490: 4A          ;
CODE_0DA491:    STA $00                 ; $0D:A491: 85 00       ;
CODE_0DA493:    LDA $1300,x             ; $0D:A493: BD 00 13    ;
CODE_0DA496:    BPL CODE_0DA4F0         ; $0D:A496: 10 58       ;
CODE_0DA498:    LDA $072A               ; $0D:A498: AD 2A 07    ;
CODE_0DA49B:    CMP $0725               ; $0D:A49B: CD 25 07    ;
CODE_0DA49E:    BEQ CODE_0DA4B3         ; $0D:A49E: F0 13       ;
CODE_0DA4A0:    LDY $072C               ; $0D:A4A0: AC 2C 07    ;
CODE_0DA4A3:    LDA [$FA],y             ; $0D:A4A3: B7 FA       ;
CODE_0DA4A5:    AND #$0F                ; $0D:A4A5: 29 0F       ;
CODE_0DA4A7:    CMP #$0E                ; $0D:A4A7: C9 0E       ;
CODE_0DA4A9:    BNE CODE_0DA4B0         ; $0D:A4A9: D0 05       ;
CODE_0DA4AB:    LDA $0728               ; $0D:A4AB: AD 28 07    ;
CODE_0DA4AE:    BNE CODE_0DA4D7         ; $0D:A4AE: D0 27       ;
CODE_0DA4B0:    SEP #$10                ; $0D:A4B0: E2 10       ;
CODE_0DA4B2:    RTS                     ; $0D:A4B2: 60          ;

CODE_0DA4B3:    LDA $0728               ; $0D:A4B3: AD 28 07    ;
CODE_0DA4B6:    BEQ CODE_0DA4C7         ; $0D:A4B6: F0 0F       ;
CODE_0DA4B8:    LDA #$00                ; $0D:A4B8: A9 00       ;
CODE_0DA4BA:    STA $0728               ; $0D:A4BA: 8D 28 07    ;
CODE_0DA4BD:    STA $0729               ; $0D:A4BD: 8D 29 07    ;
CODE_0DA4C0:    STA $9E                 ; $0D:A4C0: 85 9E       ;
CODE_0DA4C2:    STA $9F                 ; $0D:A4C2: 85 9F       ;
CODE_0DA4C4:    SEP #$10                ; $0D:A4C4: E2 10       ;
CODE_0DA4C6:    RTS                     ; $0D:A4C6: 60          ;

CODE_0DA4C7:    LDY $072C               ; $0D:A4C7: AC 2C 07    ;
CODE_0DA4CA:    LDA [$FA],y             ; $0D:A4CA: B7 FA       ;
CODE_0DA4CC:    AND #$F0                ; $0D:A4CC: 29 F0       ;
CODE_0DA4CE:    LSR A                   ; $0D:A4CE: 4A          ;
CODE_0DA4CF:    LSR A                   ; $0D:A4CF: 4A          ;
CODE_0DA4D0:    LSR A                   ; $0D:A4D0: 4A          ;
CODE_0DA4D1:    LSR A                   ; $0D:A4D1: 4A          ;
CODE_0DA4D2:    CMP $0726               ; $0D:A4D2: CD 26 07    ;
CODE_0DA4D5:    BNE CODE_0DA4B0         ; $0D:A4D5: D0 D9       ;
CODE_0DA4D7:    PHX                     ; $0D:A4D7: DA          ;
CODE_0DA4D8:    REP #$20                ; $0D:A4D8: C2 20       ;
CODE_0DA4DA:    TXA                     ; $0D:A4DA: 8A          ;
CODE_0DA4DB:    ASL A                   ; $0D:A4DB: 0A          ;
CODE_0DA4DC:    TAX                     ; $0D:A4DC: AA          ;
CODE_0DA4DD:    LDA $072C               ; $0D:A4DD: AD 2C 07    ;
CODE_0DA4E0:    STA $1305,x             ; $0D:A4E0: 9D 05 13    ;
CODE_0DA4E3:    SEP #$20                ; $0D:A4E3: E2 20       ;
CODE_0DA4E5:    PLX                     ; $0D:A4E5: FA          ;
CODE_0DA4E6:    LDA $F6                 ; $0D:A4E6: A5 F6       ;
CODE_0DA4E8:    BEQ CODE_0DA4ED         ; $0D:A4E8: F0 03       ;
CODE_0DA4EA:    INC $010B               ; $0D:A4EA: EE 0B 01    ;
CODE_0DA4ED:    JSR CODE_0DA3BF         ; $0D:A4ED: 20 BF A3    ;
CODE_0DA4F0:    LDA $F6                 ; $0D:A4F0: A5 F6       ;
CODE_0DA4F2:    BEQ CODE_0DA4FD         ; $0D:A4F2: F0 09       ;
CODE_0DA4F4:    LDY $F7                 ; $0D:A4F4: A4 F7       ;
CODE_0DA4F6:    JSL CODE_0E88C0         ; $0D:A4F6: 22 C0 88 0E ;
CODE_0DA4FA:    SEP #$10                ; $0D:A4FA: E2 10       ;
CODE_0DA4FC:    RTS                     ; $0D:A4FC: 60          ;

CODE_0DA4FD:    SEP #$10                ; $0D:A4FD: E2 10       ;
CODE_0DA4FF:    LDA $00                 ; $0D:A4FF: A5 00       ;
CODE_0DA501:    CLC                     ; $0D:A501: 18          ;
CODE_0DA502:    ADC $07                 ; $0D:A502: 65 07       ;
CODE_0DA504:    ASL A                   ; $0D:A504: 0A          ;
CODE_0DA505:    TAY                     ; $0D:A505: A8          ;
CODE_0DA506:    LDA PNTR_0DA513,y       ; $0D:A506: B9 13 A5    ;
CODE_0DA509:    STA $04                 ; $0D:A509: 85 04       ;
CODE_0DA50B:    LDA PNTR_0DA513+1,y     ; $0D:A50B: B9 14 A5    ;
CODE_0DA50E:    STA $05                 ; $0D:A50E: 85 05       ;
CODE_0DA510:    JMP ($0004)             ; $0D:A510: 6C 04 00    ;

PNTR_0DA513:        dw CODE_0DA76E
                    dw CODE_0DA644
                    dw CODE_0DA8F6
                    dw CODE_0DA904
                    dw CODE_0DA8BD
                    dw CODE_0DA915
                    dw CODE_0DA91C
                    dw CODE_0DA76E
                    dw CODE_0DA9DC
                    dw CODE_0DA6FF
                    dw CODE_0DA843
                    dw CODE_0DA847
                    dw CODE_0DA84B
                    dw CODE_0DA811
                    dw CODE_0DA831
                    dw CODE_0DA835
                    dw CODE_0DA58B
                    dw CODE_0DA58B
                    dw CODE_0DA58B
                    dw CODE_0DA58B
                    dw CODE_0DA58B
                    dw CODE_0DA58B
                    dw CODE_0DA58B
                    dw CODE_0DA58B
                    dw CODE_0DA9AC
                    dw CODE_0DA9AC
                    dw CODE_0DA9AC
                    dw CODE_0DA9AC
                    dw CODE_0DA9A2
                    dw CODE_0DA9AC
                    dw CODE_0DA9AC
                    dw CODE_0DA9B5
                    dw CODE_0DA9B5
                    dw CODE_0DA9B5
                    dw CODE_0DA9B5
                    dw CODE_0DA9B2
                    dw CODE_0DA9B5
                    dw CODE_0DA704
                    dw CODE_0DA8E1
                    dw CODE_0DA967
                    dw CODE_0DA717
                    dw CODE_0DA877
                    dw CODE_0DA8D2
                    dw CODE_0DA8D7
                    dw CODE_0DA8CB
                    dw CODE_0DA5C4
                    dw CODE_0DA611
                    dw CODE_0DA611
                    dw CODE_0DA62F
                    dw CODE_0DA62F
                    dw CODE_0DA62F
                    dw CODE_0DA4C4
                    dw CODE_0DA581
                    dw CODE_0DA586
                    dw CODE_0DA58C

CODE_0DA581:    JSL CODE_0FF2D9         ; $0D:A581: 22 D9 F2 0F ;
CODE_0DA585:    RTS                     ; $0D:A585: 60          ;

CODE_0DA586:    JSL CODE_0FF2FC         ; $0D:A586: 22 FC F2 0F ;
CODE_0DA58A:    RTS                     ; $0D:A58A: 60          ;

CODE_0DA58B:    RTS                     ; $0D:A58B: 60          ;

CODE_0DA58C:    PHX                     ; $0D:A58C: DA          ;
CODE_0DA58D:    REP #$30                ; $0D:A58D: C2 30       ;
CODE_0DA58F:    TXA                     ; $0D:A58F: 8A          ;
CODE_0DA590:    ASL A                   ; $0D:A590: 0A          ;
CODE_0DA591:    TAX                     ; $0D:A591: AA          ;
CODE_0DA592:    LDY $1305,x             ; $0D:A592: BC 05 13    ;
CODE_0DA595:    SEP #$20                ; $0D:A595: E2 20       ;
CODE_0DA597:    INY                     ; $0D:A597: C8          ;
CODE_0DA598:    LDA [$FA],y             ; $0D:A598: B7 FA       ;
CODE_0DA59A:    SEP #$10                ; $0D:A59A: E2 10       ;
CODE_0DA59C:    PLX                     ; $0D:A59C: FA          ;
CODE_0DA59D:    PHA                     ; $0D:A59D: 48          ;
CODE_0DA59E:    AND #$40                ; $0D:A59E: 29 40       ;
CODE_0DA5A0:    BNE CODE_0DA5B4         ; $0D:A5A0: D0 12       ;
CODE_0DA5A2:    PLA                     ; $0D:A5A2: 68          ;
CODE_0DA5A3:    PHA                     ; $0D:A5A3: 48          ;
CODE_0DA5A4:    AND #$0F                ; $0D:A5A4: 29 0F       ;
CODE_0DA5A6:    STA $0727               ; $0D:A5A6: 8D 27 07    ;
CODE_0DA5A9:    PLA                     ; $0D:A5A9: 68          ;
CODE_0DA5AA:    AND #$30                ; $0D:A5AA: 29 30       ;
CODE_0DA5AC:    LSR A                   ; $0D:A5AC: 4A          ;
CODE_0DA5AD:    LSR A                   ; $0D:A5AD: 4A          ;
CODE_0DA5AE:    LSR A                   ; $0D:A5AE: 4A          ;
CODE_0DA5AF:    LSR A                   ; $0D:A5AF: 4A          ;
CODE_0DA5B0:    STA $0742               ; $0D:A5B0: 8D 42 07    ;
CODE_0DA5B3:    RTS                     ; $0D:A5B3: 60          ;

CODE_0DA5B4:    PLA                     ; $0D:A5B4: 68          ;
CODE_0DA5B5:    AND #$07                ; $0D:A5B5: 29 07       ;
CODE_0DA5B7:    CMP #$04                ; $0D:A5B7: C9 04       ;
CODE_0DA5B9:    BCC CODE_0DA5C0         ; $0D:A5B9: 90 05       ;
CODE_0DA5BB:    STA $0744               ; $0D:A5BB: 8D 44 07    ;
CODE_0DA5BE:    LDA #$00                ; $0D:A5BE: A9 00       ;
CODE_0DA5C0:    STA $0741               ; $0D:A5C0: 8D 41 07    ;
CODE_0DA5C3:    RTS                     ; $0D:A5C3: 60          ;

CODE_0DA5C4:    LDX #$80                ; $0D:A5C4: A2 80       ;
CODE_0DA5C6:    LDA $07FB               ; $0D:A5C6: AD FB 07    ;
CODE_0DA5C9:    BNE CODE_0DA5DE         ; $0D:A5C9: D0 13       ;
CODE_0DA5CB:    LDA $075F               ; $0D:A5CB: AD 5F 07    ;
CODE_0DA5CE:    BNE CODE_0DA5E6         ; $0D:A5CE: D0 16       ;
CODE_0DA5D0:    LDY $5C                 ; $0D:A5D0: A4 5C       ;
CODE_0DA5D2:    DEY                     ; $0D:A5D2: 88          ;
CODE_0DA5D3:    BEQ CODE_0DA5DB         ; $0D:A5D3: F0 06       ;
CODE_0DA5D5:    LDA $074F               ; $0D:A5D5: AD 4F 07    ;
CODE_0DA5D8:    BEQ CODE_0DA5DC         ; $0D:A5D8: F0 02       ;
CODE_0DA5DA:    INX                     ; $0D:A5DA: E8          ;
CODE_0DA5DB:    INX                     ; $0D:A5DB: E8          ;
CODE_0DA5DC:    BRA CODE_0DA605         ; $0D:A5DC: 80 27       ;

CODE_0DA5DE:    LDA #$87                ; $0D:A5DE: A9 87       ;
CODE_0DA5E0:    CLC                     ; $0D:A5E0: 18          ;
CODE_0DA5E1:    ADC $075C               ; $0D:A5E1: 6D 5C 07    ;
CODE_0DA5E4:    BNE CODE_0DA606         ; $0D:A5E4: D0 20       ;
CODE_0DA5E6:    LDX #$83                ; $0D:A5E6: A2 83       ;
CODE_0DA5E8:    LDA $075F               ; $0D:A5E8: AD 5F 07    ;
CODE_0DA5EB:    CMP #$02                ; $0D:A5EB: C9 02       ;
CODE_0DA5ED:    BEQ CODE_0DA605         ; $0D:A5ED: F0 16       ;
CODE_0DA5EF:    INX                     ; $0D:A5EF: E8          ;
CODE_0DA5F0:    CMP #$04                ; $0D:A5F0: C9 04       ;
CODE_0DA5F2:    BNE CODE_0DA602         ; $0D:A5F2: D0 0E       ;
CODE_0DA5F4:    LDA $074F               ; $0D:A5F4: AD 4F 07    ;
CODE_0DA5F7:    CMP #$0B                ; $0D:A5F7: C9 0B       ;
CODE_0DA5F9:    BEQ CODE_0DA605         ; $0D:A5F9: F0 0A       ;
CODE_0DA5FB:    LDY $5C                 ; $0D:A5FB: A4 5C       ;
CODE_0DA5FD:    DEY                     ; $0D:A5FD: 88          ;
CODE_0DA5FE:    BEQ CODE_0DA603         ; $0D:A5FE: F0 03       ;
CODE_0DA600:    BRA CODE_0DA604         ; $0D:A600: 80 02       ;

CODE_0DA602:    INX                     ; $0D:A602: E8          ;
CODE_0DA603:    INX                     ; $0D:A603: E8          ;
CODE_0DA604:    INX                     ; $0D:A604: E8          ;
CODE_0DA605:    TXA                     ; $0D:A605: 8A          ;
CODE_0DA606:    STA $06D6               ; $0D:A606: 8D D6 06    ;
CODE_0DA609:    JSR CODE_0D8EB3         ; $0D:A609: 20 B3 8E    ;
CODE_0DA60C:    LDA #$0D                ; $0D:A60C: A9 0D       ;
CODE_0DA60E:    JSR CODE_0DA61A         ; $0D:A60E: 20 1A A6    ;
CODE_0DA611:    LDA $0723               ; $0D:A611: AD 23 07    ;
CODE_0DA614:    EOR #$01                ; $0D:A614: 49 01       ;
CODE_0DA616:    STA $0723               ; $0D:A616: 8D 23 07    ;
CODE_0DA619:    RTS                     ; $0D:A619: 60          ;

CODE_0DA61A:    STA $00                 ; $0D:A61A: 85 00       ;
CODE_0DA61C:    LDA #$00                ; $0D:A61C: A9 00       ;
CODE_0DA61E:    LDX #$08                ; $0D:A61E: A2 08       ;
CODE_0DA620:    LDY $1C,x               ; $0D:A620: B4 1C       ;
CODE_0DA622:    CPY $00                 ; $0D:A622: C4 00       ;
CODE_0DA624:    BNE CODE_0DA628         ; $0D:A624: D0 02       ;
CODE_0DA626:    STA $10,x               ; $0D:A626: 95 10       ;
CODE_0DA628:    DEX                     ; $0D:A628: CA          ;
CODE_0DA629:    BPL CODE_0DA620         ; $0D:A629: 10 F5       ;
CODE_0DA62B:    RTS                     ; $0D:A62B: 60          ;

DATA_0DA62C:        db $14,$17,$18

CODE_0DA62F:    LDX $00                 ; $0D:A62F: A6 00       ;
CODE_0DA631:    LDA DATA_0DA62C-8,x     ; $0D:A631: BD 24 A6    ;
CODE_0DA634:    LDY #$09                ; $0D:A634: A0 09       ;
CODE_0DA636:    DEY                     ; $0D:A636: 88          ;
CODE_0DA637:    BMI CODE_0DA640         ; $0D:A637: 30 07       ;
CODE_0DA639:    CMP $001C,y             ; $0D:A639: D9 1C 00    ;
CODE_0DA63C:    BNE CODE_0DA636         ; $0D:A63C: D0 F8       ;
CODE_0DA63E:    LDA #$00                ; $0D:A63E: A9 00       ;
CODE_0DA640:    STA $06CD               ; $0D:A640: 8D CD 06    ;
CODE_0DA643:    RTS                     ; $0D:A643: 60          ;

CODE_0DA644:    LDA $0733               ; $0D:A644: AD 33 07    ;
CODE_0DA647:    ASL A                   ; $0D:A647: 0A          ;
CODE_0DA648:    TAY                     ; $0D:A648: A8          ;
CODE_0DA649:    LDA PNTR_0DA656,y       ; $0D:A649: B9 56 A6    ;
CODE_0DA64C:    STA $04                 ; $0D:A64C: 85 04       ;
CODE_0DA64E:    LDA PNTR_0DA656+1,y     ; $0D:A64E: B9 57 A6    ;
CODE_0DA651:    STA $05                 ; $0D:A651: 85 05       ;
CODE_0DA653:    JMP ($0004)             ; $0D:A653: 6C 04 00    ;

PNTR_0DA656:        dw CODE_0DA65C
                    dw CODE_0DA6CC
                    dw CODE_0DA92B

CODE_0DA65C:    JSR CODE_0DAA5B         ; $0D:A65C: 20 5B AA    ;
CODE_0DA65F:    STX $0ECA               ; $0D:A65F: 8E CA 0E    ;
CODE_0DA662:    LDA $1300,x             ; $0D:A662: BD 00 13    ;
CODE_0DA665:    BEQ CODE_0DA6C7         ; $0D:A665: F0 60       ;
CODE_0DA667:    BPL CODE_0DA67A         ; $0D:A667: 10 11       ;
CODE_0DA669:    TYA                     ; $0D:A669: 98          ;
CODE_0DA66A:    STA $1300,x             ; $0D:A66A: 9D 00 13    ;
CODE_0DA66D:    LDA $0725               ; $0D:A66D: AD 25 07    ;
CODE_0DA670:    ORA $0726               ; $0D:A670: 0D 26 07    ;
CODE_0DA673:    BEQ CODE_0DA67A         ; $0D:A673: F0 05       ;
CODE_0DA675:    LDA #$1E                ; $0D:A675: A9 1E       ;
CODE_0DA677:    JMP CODE_0DA6F8         ; $0D:A677: 4C F8 A6    ;

CODE_0DA67A:    STA $0ECB               ; $0D:A67A: 8D CB 0E    ;
CODE_0DA67D:    LDX $07                 ; $0D:A67D: A6 07       ;
CODE_0DA67F:    LDA #$1F                ; $0D:A67F: A9 1F       ;
CODE_0DA681:    STA $06A1,x             ; $0D:A681: 9D A1 06    ;
CODE_0DA684:    TXY                     ; $0D:A684: 9B          ;
CODE_0DA685:    INY                     ; $0D:A685: C8          ;
CODE_0DA686:    LDX $0ECA               ; $0D:A686: AE CA 0E    ;
CODE_0DA689:    DEC $0ECB               ; $0D:A689: CE CB 0E    ;
CODE_0DA68C:    BEQ CODE_0DA6A8         ; $0D:A68C: F0 1A       ;
CODE_0DA68E:    LDA $130F,x             ; $0D:A68E: BD 0F 13    ;
CODE_0DA691:    BNE CODE_0DA69F         ; $0D:A691: D0 0C       ;
CODE_0DA693:    INC $130F,x             ; $0D:A693: FE 0F 13    ;
CODE_0DA696:    LDA #$0E                ; $0D:A696: A9 0E       ;
CODE_0DA698:    STA $06A1,y             ; $0D:A698: 99 A1 06    ;
CODE_0DA69B:    LDA #$12                ; $0D:A69B: A9 12       ;
CODE_0DA69D:    BRA CODE_0DA6C3         ; $0D:A69D: 80 24       ;

CODE_0DA69F:    LDA #$0F                ; $0D:A69F: A9 0F       ;
CODE_0DA6A1:    STA $06A1,y             ; $0D:A6A1: 99 A1 06    ;
CODE_0DA6A4:    LDA #$13                ; $0D:A6A4: A9 13       ;
CODE_0DA6A6:    BRA CODE_0DA6C3         ; $0D:A6A6: 80 1B       ;

CODE_0DA6A8:    LDA $130F,x             ; $0D:A6A8: BD 0F 13    ;
CODE_0DA6AB:    BEQ CODE_0DA6B9         ; $0D:A6AB: F0 0C       ;
CODE_0DA6AD:    STZ $130F,x             ; $0D:A6AD: 9E 0F 13    ;
CODE_0DA6B0:    LDA #$10                ; $0D:A6B0: A9 10       ;
CODE_0DA6B2:    STA $06A1,y             ; $0D:A6B2: 99 A1 06    ;
CODE_0DA6B5:    LDA #$14                ; $0D:A6B5: A9 14       ;
CODE_0DA6B7:    BRA CODE_0DA6C3         ; $0D:A6B7: 80 0A       ;

CODE_0DA6B9:    STZ $130F,x             ; $0D:A6B9: 9E 0F 13    ;
CODE_0DA6BC:    LDA #$11                ; $0D:A6BC: A9 11       ;
CODE_0DA6BE:    STA $06A1,y             ; $0D:A6BE: 99 A1 06    ;
CODE_0DA6C1:    LDA #$15                ; $0D:A6C1: A9 15       ;
CODE_0DA6C3:    TYX                     ; $0D:A6C3: BB          ;
CODE_0DA6C4:    JMP CODE_0DA6F2         ; $0D:A6C4: 4C F2 A6    ;

CODE_0DA6C7:    LDA #$20                ; $0D:A6C7: A9 20       ;
CODE_0DA6C9:    JMP CODE_0DA6F8         ; $0D:A6C9: 4C F8 A6    ;

CODE_0DA6CC:    JSR CODE_0DAA4C         ; $0D:A6CC: 20 4C AA    ;
CODE_0DA6CF:    STY $06                 ; $0D:A6CF: 84 06       ;
CODE_0DA6D1:    BCC CODE_0DA6DE         ; $0D:A6D1: 90 0B       ;
CODE_0DA6D3:    LDA $1300,x             ; $0D:A6D3: BD 00 13    ;
CODE_0DA6D6:    LSR A                   ; $0D:A6D6: 4A          ;
CODE_0DA6D7:    STA $1314,x             ; $0D:A6D7: 9D 14 13    ;
CODE_0DA6DA:    LDA #$21                ; $0D:A6DA: A9 21       ;
CODE_0DA6DC:    BRA CODE_0DA6F8         ; $0D:A6DC: 80 1A       ;

CODE_0DA6DE:    LDA #$23                ; $0D:A6DE: A9 23       ;
CODE_0DA6E0:    LDY $1300,x             ; $0D:A6E0: BC 00 13    ;
CODE_0DA6E3:    BEQ CODE_0DA6F8         ; $0D:A6E3: F0 13       ;
CODE_0DA6E5:    LDA $1314,x             ; $0D:A6E5: BD 14 13    ;
CODE_0DA6E8:    STA $06                 ; $0D:A6E8: 85 06       ;
CODE_0DA6EA:    LDX $07                 ; $0D:A6EA: A6 07       ;
CODE_0DA6EC:    LDA #$22                ; $0D:A6EC: A9 22       ;
CODE_0DA6EE:    STA $06A1,x             ; $0D:A6EE: 9D A1 06    ;
CODE_0DA6F1:    RTS                     ; $0D:A6F1: 60          ;

CODE_0DA6F2:    INX                     ; $0D:A6F2: E8          ;
CODE_0DA6F3:    LDY #$0F                ; $0D:A6F3: A0 0F       ;
CODE_0DA6F5:    JMP CODE_0DAA15         ; $0D:A6F5: 4C 15 AA    ;

CODE_0DA6F8:    LDX $07                 ; $0D:A6F8: A6 07       ;
CODE_0DA6FA:    LDY #$00                ; $0D:A6FA: A0 00       ;
CODE_0DA6FC:    JMP CODE_0DAA15         ; $0D:A6FC: 4C 15 AA    ;

CODE_0DA6FF:    JSL CODE_0E88A6         ; $0D:A6FF: 22 A6 88 0E ;
CODE_0DA703:    RTS                     ; $0D:A703: 60          ;

CODE_0DA704:    JSR CODE_0DAA5B         ; $0D:A704: 20 5B AA    ;
CODE_0DA707:    LDY $1300,x             ; $0D:A707: BC 00 13    ;
CODE_0DA70A:    LDX $07                 ; $0D:A70A: A6 07       ;
CODE_0DA70C:    LDA #$76                ; $0D:A70C: A9 76       ;
CODE_0DA70E:    STA $06A1,x             ; $0D:A70E: 9D A1 06    ;
CODE_0DA711:    LDA #$77                ; $0D:A711: A9 77       ;
CODE_0DA713:    STA $06A2,x             ; $0D:A713: 9D A2 06    ;
CODE_0DA716:    RTS                     ; $0D:A716: 60          ;

CODE_0DA717:    LDY #$03                ; $0D:A717: A0 03       ;
CODE_0DA719:    JSR CODE_0DAA4F         ; $0D:A719: 20 4F AA    ;
CODE_0DA71C:    LDY #$0A                ; $0D:A71C: A0 0A       ;
CODE_0DA71E:    DEY                     ; $0D:A71E: 88          ;
CODE_0DA71F:    DEY                     ; $0D:A71F: 88          ;
CODE_0DA720:    STY $05                 ; $0D:A720: 84 05       ;
CODE_0DA722:    LDY $1300,x             ; $0D:A722: BC 00 13    ;
CODE_0DA725:    STY $06                 ; $0D:A725: 84 06       ;
CODE_0DA727:    LDX $05                 ; $0D:A727: A6 05       ;
CODE_0DA729:    INX                     ; $0D:A729: E8          ;
CODE_0DA72A:    LDA DATA_0DA75A,y       ; $0D:A72A: B9 5A A7    ;
CODE_0DA72D:    CMP #$00                ; $0D:A72D: C9 00       ;
CODE_0DA72F:    BEQ CODE_0DA739         ; $0D:A72F: F0 08       ;
CODE_0DA731:    LDX #$00                ; $0D:A731: A2 00       ;
CODE_0DA733:    LDY $05                 ; $0D:A733: A4 05       ;
CODE_0DA735:    JSR CODE_0DAA15         ; $0D:A735: 20 15 AA    ;
CODE_0DA738:    CLC                     ; $0D:A738: 18          ;
CODE_0DA739:    LDY $06                 ; $0D:A739: A4 06       ;
CODE_0DA73B:    LDA DATA_0DA75E,y       ; $0D:A73B: B9 5E A7    ;
CODE_0DA73E:    STA $06A1,x             ; $0D:A73E: 9D A1 06    ;
CODE_0DA741:    LDA DATA_0DA762,y       ; $0D:A741: B9 62 A7    ;
CODE_0DA744:    STA $06A2,x             ; $0D:A744: 9D A2 06    ;
CODE_0DA747:    BCS CODE_0DA759         ; $0D:A747: B0 10       ;
CODE_0DA749:    LDX #$06                ; $0D:A749: A2 06       ;
CODE_0DA74B:    LDA #$00                ; $0D:A74B: A9 00       ;
CODE_0DA74D:    STA $06A1,x             ; $0D:A74D: 9D A1 06    ;
CODE_0DA750:    DEX                     ; $0D:A750: CA          ;
CODE_0DA751:    BPL CODE_0DA74B         ; $0D:A751: 10 F8       ;
CODE_0DA753:    LDA DATA_0DA766,y       ; $0D:A753: B9 66 A7    ;
CODE_0DA756:    STA $06A8               ; $0D:A756: 8D A8 06    ;
CODE_0DA759:    RTS                     ; $0D:A759: 60          ;

DATA_0DA75A:        db $1B,$1A,$00,$00 ;

DATA_0DA75E:        db $1B,$27,$26,$25 ;

DATA_0DA762:        db $1B,$2A,$29,$28 ;

DATA_0DA766:        db $17,$16,$1B,$1A,$19,$18,$1B,$1A ;

CODE_0DA76E:    JSR CODE_0DA7BC         ; $0D:A76E: 20 BC A7    ;
CODE_0DA771:    LDA $00                 ; $0D:A771: A5 00       ;
CODE_0DA773:    BEQ CODE_0DA779         ; $0D:A773: F0 04       ;
CODE_0DA775:    INY                     ; $0D:A775: C8          ;
CODE_0DA776:    INY                     ; $0D:A776: C8          ;
CODE_0DA777:    INY                     ; $0D:A777: C8          ;
CODE_0DA778:    INY                     ; $0D:A778: C8          ;
CODE_0DA779:    TYA                     ; $0D:A779: 98          ;
CODE_0DA77A:    PHA                     ; $0D:A77A: 48          ;
CODE_0DA77B:    LDY $1300,x             ; $0D:A77B: BC 00 13    ;
CODE_0DA77E:    BEQ CODE_0DA7A8         ; $0D:A77E: F0 28       ;
CODE_0DA780:    JSR CODE_0DA7FE         ; $0D:A780: 20 FE A7    ;
CODE_0DA783:    BCS CODE_0DA7A8         ; $0D:A783: B0 23       ;
CODE_0DA785:    JSR CODE_0DAA79         ; $0D:A785: 20 79 AA    ;
CODE_0DA788:    CLC                     ; $0D:A788: 18          ;
CODE_0DA789:    ADC #$08                ; $0D:A789: 69 08       ;
CODE_0DA78B:    STA $021A,x             ; $0D:A78B: 9D 1A 02    ;
CODE_0DA78E:    LDA $0725               ; $0D:A78E: AD 25 07    ;
CODE_0DA791:    ADC #$00                ; $0D:A791: 69 00       ;
CODE_0DA793:    STA $79,x               ; $0D:A793: 95 79       ;
CODE_0DA795:    LDA #$01                ; $0D:A795: A9 01       ;
CODE_0DA797:    STA $BC,x               ; $0D:A797: 95 BC       ;
CODE_0DA799:    STA $10,x               ; $0D:A799: 95 10       ;
CODE_0DA79B:    JSR CODE_0DAA81         ; $0D:A79B: 20 81 AA    ;
CODE_0DA79E:    STA $0238,x             ; $0D:A79E: 9D 38 02    ;
CODE_0DA7A1:    LDA #$0D                ; $0D:A7A1: A9 0D       ;
CODE_0DA7A3:    STA $1C,x               ; $0D:A7A3: 95 1C       ;
CODE_0DA7A5:    JSR CODE_0DCA79         ; $0D:A7A5: 20 79 CA    ;
CODE_0DA7A8:    PLA                     ; $0D:A7A8: 68          ;
CODE_0DA7A9:    TAY                     ; $0D:A7A9: A8          ;
CODE_0DA7AA:    LDX $07                 ; $0D:A7AA: A6 07       ;
CODE_0DA7AC:    LDA DATA_0DA766,y       ; $0D:A7AC: B9 66 A7    ;
CODE_0DA7AF:    STA $06A1,x             ; $0D:A7AF: 9D A1 06    ;
CODE_0DA7B2:    INX                     ; $0D:A7B2: E8          ;
CODE_0DA7B3:    LDA DATA_0DA766+2,y     ; $0D:A7B3: B9 68 A7    ;
CODE_0DA7B6:    LDY $06                 ; $0D:A7B6: A4 06       ;
CODE_0DA7B8:    DEY                     ; $0D:A7B8: 88          ;
CODE_0DA7B9:    JMP CODE_0DAA15         ; $0D:A7B9: 4C 15 AA    ;

CODE_0DA7BC:    LDY #$01                ; $0D:A7BC: A0 01       ;
CODE_0DA7BE:    JSR CODE_0DAA4F         ; $0D:A7BE: 20 4F AA    ;
CODE_0DA7C1:    JSR CODE_0DAA5B         ; $0D:A7C1: 20 5B AA    ;
CODE_0DA7C4:    TYA                     ; $0D:A7C4: 98          ;
CODE_0DA7C5:    AND #$07                ; $0D:A7C5: 29 07       ;
CODE_0DA7C7:    STA $06                 ; $0D:A7C7: 85 06       ;
CODE_0DA7C9:    LDY $1300,x             ; $0D:A7C9: BC 00 13    ;
CODE_0DA7CC:    RTS                     ; $0D:A7CC: 60          ;

CODE_0DA7CD:    STA $001C,x             ; $0D:A7CD: 9D 1C 00    ;
CODE_0DA7D0:    JSR CODE_0DAA79         ; $0D:A7D0: 20 79 AA    ;
CODE_0DA7D3:    CLC                     ; $0D:A7D3: 18          ;
CODE_0DA7D4:    ADC #$08                ; $0D:A7D4: 69 08       ;
CODE_0DA7D6:    STA $021A,x             ; $0D:A7D6: 9D 1A 02    ;
CODE_0DA7D9:    LDA $0725               ; $0D:A7D9: AD 25 07    ;
CODE_0DA7DC:    ADC #$00                ; $0D:A7DC: 69 00       ;
CODE_0DA7DE:    STA $0079,x             ; $0D:A7DE: 9D 79 00    ;
CODE_0DA7E1:    LDA #$01                ; $0D:A7E1: A9 01       ;
CODE_0DA7E3:    STA $BC,x               ; $0D:A7E3: 95 BC       ;
CODE_0DA7E5:    STA $0010,x             ; $0D:A7E5: 9D 10 00    ;
CODE_0DA7E8:    JSR CODE_0DAA81         ; $0D:A7E8: 20 81 AA    ;
CODE_0DA7EB:    STA $0238,x             ; $0D:A7EB: 9D 38 02    ;
CODE_0DA7EE:    JMP CODE_0DCA79         ; $0D:A7EE: 4C 79 CA    ;

CODE_0DA7F1:    LDX #$00                ; $0D:A7F1: A2 00       ;
CODE_0DA7F3:    CLC                     ; $0D:A7F3: 18          ;
CODE_0DA7F4:    LDA $10,x               ; $0D:A7F4: B5 10       ;
CODE_0DA7F6:    BEQ CODE_0DA7FD         ; $0D:A7F6: F0 05       ;
CODE_0DA7F8:    INX                     ; $0D:A7F8: E8          ;
CODE_0DA7F9:    CPX #$08                ; $0D:A7F9: E0 08       ;
CODE_0DA7FB:    BNE CODE_0DA7F3         ; $0D:A7FB: D0 F6       ;
CODE_0DA7FD:    RTS                     ; $0D:A7FD: 60          ;

CODE_0DA7FE:    LDX #$08                ; $0D:A7FE: A2 08       ;
CODE_0DA800:    CLC                     ; $0D:A800: 18          ;
CODE_0DA801:    LDA $10,x               ; $0D:A801: B5 10       ;
CODE_0DA803:    BEQ CODE_0DA80A         ; $0D:A803: F0 05       ;
CODE_0DA805:    DEX                     ; $0D:A805: CA          ;
CODE_0DA806:    CPX #$FF                ; $0D:A806: E0 FF       ;
CODE_0DA808:    BNE CODE_0DA800         ; $0D:A808: D0 F6       ;
CODE_0DA80A:    RTS                     ; $0D:A80A: 60          ;

DATA_0DA80B:        db $80,$81,$81,$82

DATA_0DA80F:        db $84,$85

CODE_0DA811:    JSR CODE_0DAA4C         ; $0D:A811: 20 4C AA    ;
CODE_0DA814:    LDX #$0A                ; $0D:A814: A2 0A       ;
CODE_0DA816:    LDA $5C                 ; $0D:A816: A5 5C       ;
CODE_0DA818:    CMP #$03                ; $0D:A818: C9 03       ;
CODE_0DA81A:    BNE CODE_0DA81D         ; $0D:A81A: D0 01       ;
CODE_0DA81C:    INX                     ; $0D:A81C: E8          ;
CODE_0DA81D:    LDY $5C                 ; $0D:A81D: A4 5C       ;
CODE_0DA81F:    LDA DATA_0DA80B,y       ; $0D:A81F: B9 0B A8    ;
CODE_0DA822:    STA $06A1,x             ; $0D:A822: 9D A1 06    ;
CODE_0DA825:    INX                     ; $0D:A825: E8          ;
CODE_0DA826:    TYA                     ; $0D:A826: 98          ;
CODE_0DA827:    LSR A                   ; $0D:A827: 4A          ;
CODE_0DA828:    TAY                     ; $0D:A828: A8          ;
CODE_0DA829:    LDA DATA_0DA80F,y       ; $0D:A829: B9 0F A8    ;
CODE_0DA82C:    LDY #$01                ; $0D:A82C: A0 01       ;
CODE_0DA82E:    JMP CODE_0DAA15         ; $0D:A82E: 4C 15 AA    ;

CODE_0DA831:    LDA #$03                ; $0D:A831: A9 03       ;
CODE_0DA833:    BRA CODE_0DA837         ; $0D:A833: 80 02       ;

CODE_0DA835:    LDA #$07                ; $0D:A835: A9 07       ;
CODE_0DA837:    PHA                     ; $0D:A837: 48          ;
CODE_0DA838:    JSR CODE_0DAA4C         ; $0D:A838: 20 4C AA    ;
CODE_0DA83B:    PLA                     ; $0D:A83B: 68          ;
CODE_0DA83C:    TAX                     ; $0D:A83C: AA          ;
CODE_0DA83D:    LDA #$E7                ; $0D:A83D: A9 E7       ;
CODE_0DA83F:    STA $06A1,x             ; $0D:A83F: 9D A1 06    ;
CODE_0DA842:    RTS                     ; $0D:A842: 60          ;

CODE_0DA843:    LDA #$06                ; $0D:A843: A9 06       ;
CODE_0DA845:    BRA CODE_0DA84D         ; $0D:A845: 80 06       ;

CODE_0DA847:    LDA #$07                ; $0D:A847: A9 07       ;
CODE_0DA849:    BRA CODE_0DA84D         ; $0D:A849: 80 02       ;

CODE_0DA84B:    LDA #$09                ; $0D:A84B: A9 09       ;
CODE_0DA84D:    PHA                     ; $0D:A84D: 48          ;
CODE_0DA84E:    JSR CODE_0DAA4C         ; $0D:A84E: 20 4C AA    ;
CODE_0DA851:    LDA $1300,x             ; $0D:A851: BD 00 13    ;
CODE_0DA854:    BEQ CODE_0DA866         ; $0D:A854: F0 10       ;
CODE_0DA856:    LDA $130F,x             ; $0D:A856: BD 0F 13    ;
CODE_0DA859:    BNE CODE_0DA862         ; $0D:A859: D0 07       ;
CODE_0DA85B:    INC $130F,x             ; $0D:A85B: FE 0F 13    ;
CODE_0DA85E:    LDA #$08                ; $0D:A85E: A9 08       ;
CODE_0DA860:    BRA CODE_0DA86B         ; $0D:A860: 80 09       ;

CODE_0DA862:    LDA #$07                ; $0D:A862: A9 07       ;
CODE_0DA864:    BRA CODE_0DA86B         ; $0D:A864: 80 05       ;

CODE_0DA866:    STZ $130F,x             ; $0D:A866: 9E 0F 13    ;
CODE_0DA869:    LDA #$09                ; $0D:A869: A9 09       ;
CODE_0DA86B:    PLX                     ; $0D:A86B: FA          ;
CODE_0DA86C:    STA $06A1,x             ; $0D:A86C: 9D A1 06    ;
CODE_0DA86F:    INX                     ; $0D:A86F: E8          ;
CODE_0DA870:    LDY #$00                ; $0D:A870: A0 00       ;
CODE_0DA872:    LDA #$6A                ; $0D:A872: A9 6A       ;
CODE_0DA874:    JMP CODE_0DAA15         ; $0D:A874: 4C 15 AA    ;

CODE_0DA877:    LDA #$2D                ; $0D:A877: A9 2D       ;
CODE_0DA879:    STA $06A1               ; $0D:A879: 8D A1 06    ;
CODE_0DA87C:    LDX #$01                ; $0D:A87C: A2 01       ;
CODE_0DA87E:    LDY #$08                ; $0D:A87E: A0 08       ;
CODE_0DA880:    LDA #$2E                ; $0D:A880: A9 2E       ;
CODE_0DA882:    JSR CODE_0DAA15         ; $0D:A882: 20 15 AA    ;
CODE_0DA885:    LDA #$62                ; $0D:A885: A9 62       ;
CODE_0DA887:    STA $06AB               ; $0D:A887: 8D AB 06    ;
CODE_0DA88A:    JSR CODE_0DAA79         ; $0D:A88A: 20 79 AA    ;
CODE_0DA88D:    CLC                     ; $0D:A88D: 18          ;
CODE_0DA88E:    ADC #$08                ; $0D:A88E: 69 08       ;
CODE_0DA890:    STA $021F               ; $0D:A890: 8D 1F 02    ;
CODE_0DA893:    LDA $0725               ; $0D:A893: AD 25 07    ;
CODE_0DA896:    ADC #$00                ; $0D:A896: 69 00       ;
CODE_0DA898:    STA $7E                 ; $0D:A898: 85 7E       ;
CODE_0DA89A:    LDA #$30                ; $0D:A89A: A9 30       ;
CODE_0DA89C:    STA $023D               ; $0D:A89C: 8D 3D 02    ;
CODE_0DA89F:    LDA #$B0                ; $0D:A89F: A9 B0       ;
CODE_0DA8A1:    STA $010D               ; $0D:A8A1: 8D 0D 01    ;
CODE_0DA8A4:    LDA #$30                ; $0D:A8A4: A9 30       ;
CODE_0DA8A6:    STA $21                 ; $0D:A8A6: 85 21       ;
CODE_0DA8A8:    INC $15                 ; $0D:A8A8: E6 15       ;
CODE_0DA8AA:    LDA #$FF                ; $0D:A8AA: A9 FF       ;
CODE_0DA8AC:    STA $0FB4               ; $0D:A8AC: 8D B4 0F    ;
CODE_0DA8AF:    STA $0FB5               ; $0D:A8AF: 8D B5 0F    ;
CODE_0DA8B2:    STA $0FB6               ; $0D:A8B2: 8D B6 0F    ;
CODE_0DA8B5:    STA $0FB7               ; $0D:A8B5: 8D B7 0F    ;
CODE_0DA8B8:    RTS                     ; $0D:A8B8: 60          ;

DATA_0DA8B9:        db $EB,$EA,$EA,$EA

CODE_0DA8BD:    LDY $5C                 ; $0D:A8BD: A4 5C       ;
CODE_0DA8BF:    LDA DATA_0DA8B9,y       ; $0D:A8BF: B9 B9 A8    ;
CODE_0DA8C2:    JMP CODE_0DA909         ; $0D:A8C2: 4C 09 A9    ;

DATA_0DA8C5:        db $06,$07,$08,$FE,$0A,$87

CODE_0DA8CB:    LDY #$0C                ; $0D:A8CB: A0 0C       ;
CODE_0DA8CD:    JSR CODE_0DAA4F         ; $0D:A8CD: 20 4F AA    ;
CODE_0DA8D0:    BRA CODE_0DA8D7         ; $0D:A8D0: 80 05       ;

CODE_0DA8D2:    LDA #$08                ; $0D:A8D2: A9 08       ;
CODE_0DA8D4:    STA $0773               ; $0D:A8D4: 8D 73 07    ;
CODE_0DA8D7:    LDY $00                 ; $0D:A8D7: A4 00       ;
CODE_0DA8D9:    LDX DATA_0DA8C5-2,y     ; $0D:A8D9: BE C3 A8    ;
CODE_0DA8DC:    LDA DATA_0DA8C5+1,y     ; $0D:A8DC: B9 C6 A8    ;
CODE_0DA8DF:    BRA CODE_0DA8E8         ; $0D:A8DF: 80 07       ;

CODE_0DA8E1:    JSR CODE_0DAA5B         ; $0D:A8E1: 20 5B AA    ;
CODE_0DA8E4:    LDX $07                 ; $0D:A8E4: A6 07       ;
CODE_0DA8E6:    LDA #$FD                ; $0D:A8E6: A9 FD       ;
CODE_0DA8E8:    LDY #$00                ; $0D:A8E8: A0 00       ;
CODE_0DA8EA:    JMP CODE_0DAA15         ; $0D:A8EA: 4C 15 AA    ;

DATA_0DA8ED:        db $70,$62,$62,$68,$2B,$49,$4A,$4A
                    db $86

CODE_0DA8F6:    LDY $5C                 ; $0D:A8F6: A4 5C       ;
CODE_0DA8F8:    LDA $0743               ; $0D:A8F8: AD 43 07    ;
CODE_0DA8FB:    BEQ CODE_0DA8FF         ; $0D:A8FB: F0 02       ;
CODE_0DA8FD:    LDY #$04                ; $0D:A8FD: A0 04       ;
CODE_0DA8FF:    LDA DATA_0DA8ED+4,y     ; $0D:A8FF: B9 F1 A8    ;
CODE_0DA902:    BRA CODE_0DA909         ; $0D:A902: 80 05       ;

CODE_0DA904:    LDY $5C                 ; $0D:A904: A4 5C       ;
CODE_0DA906:    LDA DATA_0DA8ED,y       ; $0D:A906: B9 ED A8    ;
CODE_0DA909:    PHA                     ; $0D:A909: 48          ;
CODE_0DA90A:    JSR CODE_0DAA4C         ; $0D:A90A: 20 4C AA    ;
CODE_0DA90D:    LDX $07                 ; $0D:A90D: A6 07       ;
CODE_0DA90F:    LDY #$00                ; $0D:A90F: A0 00       ;
CODE_0DA911:    PLA                     ; $0D:A911: 68          ;
CODE_0DA912:    JMP CODE_0DAA15         ; $0D:A912: 4C 15 AA    ;

CODE_0DA915:    LDY $5C                 ; $0D:A915: A4 5C       ;
CODE_0DA917:    LDA DATA_0DA8ED+4,y     ; $0D:A917: B9 F1 A8    ;
CODE_0DA91A:    BRA CODE_0DA921         ; $0D:A91A: 80 05       ;

CODE_0DA91C:    LDY $5C                 ; $0D:A91C: A4 5C       ;
CODE_0DA91E:    LDA DATA_0DA8ED,y       ; $0D:A91E: B9 ED A8    ;
CODE_0DA921:    PHA                     ; $0D:A921: 48          ;
CODE_0DA922:    JSR CODE_0DAA5B         ; $0D:A922: 20 5B AA    ;
CODE_0DA925:    PLA                     ; $0D:A925: 68          ;
CODE_0DA926:    LDX $07                 ; $0D:A926: A6 07       ;
CODE_0DA928:    JMP CODE_0DAA15         ; $0D:A928: 4C 15 AA    ;

CODE_0DA92B:    JSR CODE_0DAA5B         ; $0D:A92B: 20 5B AA    ;
CODE_0DA92E:    LDX $07                 ; $0D:A92E: A6 07       ;
CODE_0DA930:    LDA #$6B                ; $0D:A930: A9 6B       ;
CODE_0DA932:    STA $06A1,x             ; $0D:A932: 9D A1 06    ;
CODE_0DA935:    INX                     ; $0D:A935: E8          ;
CODE_0DA936:    DEY                     ; $0D:A936: 88          ;
CODE_0DA937:    BMI CODE_0DA947         ; $0D:A937: 30 0E       ;
CODE_0DA939:    LDA #$6C                ; $0D:A939: A9 6C       ;
CODE_0DA93B:    STA $06A1,x             ; $0D:A93B: 9D A1 06    ;
CODE_0DA93E:    INX                     ; $0D:A93E: E8          ;
CODE_0DA93F:    DEY                     ; $0D:A93F: 88          ;
CODE_0DA940:    BMI CODE_0DA947         ; $0D:A940: 30 05       ;
CODE_0DA942:    LDA #$6D                ; $0D:A942: A9 6D       ;
CODE_0DA944:    JSR CODE_0DAA15         ; $0D:A944: 20 15 AA    ;
CODE_0DA947:    LDX $026A               ; $0D:A947: AE 6A 02    ;
CODE_0DA94A:    JSR CODE_0DAA81         ; $0D:A94A: 20 81 AA    ;
CODE_0DA94D:    STA $0277,x             ; $0D:A94D: 9D 77 02    ;
CODE_0DA950:    LDA $0725               ; $0D:A950: AD 25 07    ;
CODE_0DA953:    STA $026B,x             ; $0D:A953: 9D 6B 02    ;
CODE_0DA956:    JSR CODE_0DAA79         ; $0D:A956: 20 79 AA    ;
CODE_0DA959:    STA $0271,x             ; $0D:A959: 9D 71 02    ;
CODE_0DA95C:    INX                     ; $0D:A95C: E8          ;
CODE_0DA95D:    CPX #$06                ; $0D:A95D: E0 06       ;
CODE_0DA95F:    BCC CODE_0DA963         ; $0D:A95F: 90 02       ;
CODE_0DA961:    LDX #$00                ; $0D:A961: A2 00       ;
CODE_0DA963:    STX $026A               ; $0D:A963: 8E 6A 02    ;
CODE_0DA966:    RTS                     ; $0D:A966: 60          ;

CODE_0DA967:    JSR CODE_0DAA5B         ; $0D:A967: 20 5B AA    ;
CODE_0DA96A:    LDX #$00                ; $0D:A96A: A2 00       ;
CODE_0DA96C:    CLC                     ; $0D:A96C: 18          ;
CODE_0DA96D:    LDA $10,x               ; $0D:A96D: B5 10       ;
CODE_0DA96F:    BEQ CODE_0DA976         ; $0D:A96F: F0 05       ;
CODE_0DA971:    INX                     ; $0D:A971: E8          ;
CODE_0DA972:    CPX #$07                ; $0D:A972: E0 07       ;
CODE_0DA974:    BNE CODE_0DA96C         ; $0D:A974: D0 F6       ;
CODE_0DA976:    JSR CODE_0DAA79         ; $0D:A976: 20 79 AA    ;
CODE_0DA979:    STA $021A,x             ; $0D:A979: 9D 1A 02    ;
CODE_0DA97C:    LDA $0725               ; $0D:A97C: AD 25 07    ;
CODE_0DA97F:    STA $79,x               ; $0D:A97F: 95 79       ;
CODE_0DA981:    JSR CODE_0DAA81         ; $0D:A981: 20 81 AA    ;
CODE_0DA984:    STA $0238,x             ; $0D:A984: 9D 38 02    ;
CODE_0DA987:    STA $5E,x               ; $0D:A987: 95 5E       ;
CODE_0DA989:    LDA #$32                ; $0D:A989: A9 32       ;
CODE_0DA98B:    STA $1C,x               ; $0D:A98B: 95 1C       ;
CODE_0DA98D:    LDY #$01                ; $0D:A98D: A0 01       ;
CODE_0DA98F:    STY $BC,x               ; $0D:A98F: 94 BC       ;
CODE_0DA991:    LDA #$01                ; $0D:A991: A9 01       ;
CODE_0DA993:    STA $10,x               ; $0D:A993: 95 10       ;
CODE_0DA995:    LDX $07                 ; $0D:A995: A6 07       ;
CODE_0DA997:    LDA #$6E                ; $0D:A997: A9 6E       ;
CODE_0DA999:    STA $06A1,x             ; $0D:A999: 9D A1 06    ;
CODE_0DA99C:    LDA #$6F                ; $0D:A99C: A9 6F       ;
CODE_0DA99E:    STA $06A2,x             ; $0D:A99E: 9D A2 06    ;
CODE_0DA9A1:    RTS                     ; $0D:A9A1: 60          ;

CODE_0DA9A2:    LDA $075D               ; $0D:A9A2: AD 5D 07    ;
CODE_0DA9A5:    BEQ CODE_0DA9DB         ; $0D:A9A5: F0 34       ;
CODE_0DA9A7:    STZ $075D               ; $0D:A9A7: 9C 5D 07    ;
CODE_0DA9AA:    BRA CODE_0DA9B5         ; $0D:A9AA: 80 09       ;

CODE_0DA9AC:    JSR CODE_0DA9D5         ; $0D:A9AC: 20 D5 A9    ;
CODE_0DA9AF:    JMP CODE_0DA9C7         ; $0D:A9AF: 4C C7 A9    ;

CODE_0DA9B2:    STZ $06BC               ; $0D:A9B2: 9C BC 06    ;
CODE_0DA9B5:    JSR CODE_0DA9D5         ; $0D:A9B5: 20 D5 A9    ;
CODE_0DA9B8:    STY $07                 ; $0D:A9B8: 84 07       ;
CODE_0DA9BA:    LDA #$00                ; $0D:A9BA: A9 00       ;
CODE_0DA9BC:    LDY $5C                 ; $0D:A9BC: A4 5C       ;
CODE_0DA9BE:    DEY                     ; $0D:A9BE: 88          ;
CODE_0DA9BF:    BEQ CODE_0DA9C3         ; $0D:A9BF: F0 02       ;
CODE_0DA9C1:    LDA #$06                ; $0D:A9C1: A9 06       ;
CODE_0DA9C3:    CLC                     ; $0D:A9C3: 18          ;
CODE_0DA9C4:    ADC $07                 ; $0D:A9C4: 65 07       ;
CODE_0DA9C6:    TAY                     ; $0D:A9C6: A8          ;
CODE_0DA9C7:    LDA DATA_0DBD6E,y       ; $0D:A9C7: B9 6E BD    ;
CODE_0DA9CA:    PHA                     ; $0D:A9CA: 48          ;
CODE_0DA9CB:    JSR CODE_0DAA5B         ; $0D:A9CB: 20 5B AA    ;
CODE_0DA9CE:    LDX $07                 ; $0D:A9CE: A6 07       ;
CODE_0DA9D0:    PLA                     ; $0D:A9D0: 68          ;
CODE_0DA9D1:    STA $06A1,x             ; $0D:A9D1: 9D A1 06    ;
CODE_0DA9D4:    RTS                     ; $0D:A9D4: 60          ;

CODE_0DA9D5:    LDA $00                 ; $0D:A9D5: A5 00       ;
CODE_0DA9D7:    SEC                     ; $0D:A9D7: 38          ;
CODE_0DA9D8:    SBC #$00                ; $0D:A9D8: E9 00       ;
CODE_0DA9DA:    TAY                     ; $0D:A9DA: A8          ;
CODE_0DA9DB:    RTS                     ; $0D:A9DB: 60          ;

CODE_0DA9DC:    JSR CODE_0DAA4C         ; $0D:A9DC: 20 4C AA    ;
CODE_0DA9DF:    BCC CODE_0DAA0D         ; $0D:A9DF: 90 2C       ;
CODE_0DA9E1:    LDA $5C                 ; $0D:A9E1: A5 5C       ;
CODE_0DA9E3:    BNE CODE_0DAA0D         ; $0D:A9E3: D0 28       ;
CODE_0DA9E5:    LDX $026A               ; $0D:A9E5: AE 6A 02    ;
CODE_0DA9E8:    JSR CODE_0DAA79         ; $0D:A9E8: 20 79 AA    ;
CODE_0DA9EB:    SEC                     ; $0D:A9EB: 38          ;
CODE_0DA9EC:    SBC #$10                ; $0D:A9EC: E9 10       ;
CODE_0DA9EE:    STA $0271,x             ; $0D:A9EE: 9D 71 02    ;
CODE_0DA9F1:    LDA $0725               ; $0D:A9F1: AD 25 07    ;
CODE_0DA9F4:    SBC #$00                ; $0D:A9F4: E9 00       ;
CODE_0DA9F6:    STA $026B,x             ; $0D:A9F6: 9D 6B 02    ;
CODE_0DA9F9:    INY                     ; $0D:A9F9: C8          ;
CODE_0DA9FA:    INY                     ; $0D:A9FA: C8          ;
CODE_0DA9FB:    TYA                     ; $0D:A9FB: 98          ;
CODE_0DA9FC:    ASL A                   ; $0D:A9FC: 0A          ;
CODE_0DA9FD:    ASL A                   ; $0D:A9FD: 0A          ;
CODE_0DA9FE:    ASL A                   ; $0D:A9FE: 0A          ;
CODE_0DA9FF:    ASL A                   ; $0D:A9FF: 0A          ;
CODE_0DAA00:    STA $0277,x             ; $0D:AA00: 9D 77 02    ;
CODE_0DAA03:    INX                     ; $0D:AA03: E8          ;
CODE_0DAA04:    CPX #$05                ; $0D:AA04: E0 05       ;
CODE_0DAA06:    BCC CODE_0DAA0A         ; $0D:AA06: 90 02       ;
CODE_0DAA08:    LDX #$00                ; $0D:AA08: A2 00       ;
CODE_0DAA0A:    STX $026A               ; $0D:AA0A: 8E 6A 02    ;
CODE_0DAA0D:    LDX $5C                 ; $0D:AA0D: A6 5C       ;
CODE_0DAA0F:    LDA #$00                ; $0D:AA0F: A9 00       ;
CODE_0DAA11:    LDX #$08                ; $0D:AA11: A2 08       ;
CODE_0DAA13:    LDY #$0F                ; $0D:AA13: A0 0F       ;
CODE_0DAA15:    STY $0735               ; $0D:AA15: 8C 35 07    ;
CODE_0DAA18:    LDY $06A1,x             ; $0D:AA18: BC A1 06    ;
CODE_0DAA1B:    BEQ CODE_0DAA3D         ; $0D:AA1B: F0 20       ;
CODE_0DAA1D:    CPY #$1F                ; $0D:AA1D: C0 1F       ;
CODE_0DAA1F:    BEQ CODE_0DAA40         ; $0D:AA1F: F0 1F       ;
CODE_0DAA21:    CPY #$22                ; $0D:AA21: C0 22       ;
CODE_0DAA23:    BEQ CODE_0DAA40         ; $0D:AA23: F0 1B       ;
CODE_0DAA25:    CPY #$E7                ; $0D:AA25: C0 E7       ;
CODE_0DAA27:    BEQ CODE_0DAA3D         ; $0D:AA27: F0 14       ;
CODE_0DAA29:    CPY #$0F                ; $0D:AA29: C0 0F       ;
CODE_0DAA2B:    BEQ CODE_0DAA40         ; $0D:AA2B: F0 13       ;
CODE_0DAA2D:    CPY #$13                ; $0D:AA2D: C0 13       ;
CODE_0DAA2F:    BEQ CODE_0DAA40         ; $0D:AA2F: F0 0F       ;
CODE_0DAA31:    CPY #$E7                ; $0D:AA31: C0 E7       ;
CODE_0DAA33:    BCS CODE_0DAA40         ; $0D:AA33: B0 0B       ;
CODE_0DAA35:    CPY #$4E                ; $0D:AA35: C0 4E       ;
CODE_0DAA37:    BNE CODE_0DAA3D         ; $0D:AA37: D0 04       ;
CODE_0DAA39:    CMP #$48                ; $0D:AA39: C9 48       ;
CODE_0DAA3B:    BEQ CODE_0DAA40         ; $0D:AA3B: F0 03       ;
CODE_0DAA3D:    STA $06A1,x             ; $0D:AA3D: 9D A1 06    ;
CODE_0DAA40:    INX                     ; $0D:AA40: E8          ;
CODE_0DAA41:    CPX #$0D                ; $0D:AA41: E0 0D       ;
CODE_0DAA43:    BCS CODE_0DAA4B         ; $0D:AA43: B0 06       ;
CODE_0DAA45:    LDY $0735               ; $0D:AA45: AC 35 07    ;
CODE_0DAA48:    DEY                     ; $0D:AA48: 88          ;
CODE_0DAA49:    BPL CODE_0DAA15         ; $0D:AA49: 10 CA       ;
CODE_0DAA4B:    RTS                     ; $0D:AA4B: 60          ;

CODE_0DAA4C:    JSR CODE_0DAA5B         ; $0D:AA4C: 20 5B AA    ;
CODE_0DAA4F:    LDA $1300,x             ; $0D:AA4F: BD 00 13    ;
CODE_0DAA52:    CLC                     ; $0D:AA52: 18          ;
CODE_0DAA53:    BPL CODE_0DAA5A         ; $0D:AA53: 10 05       ;
CODE_0DAA55:    TYA                     ; $0D:AA55: 98          ;
CODE_0DAA56:    STA $1300,x             ; $0D:AA56: 9D 00 13    ;
CODE_0DAA59:    SEC                     ; $0D:AA59: 38          ;
CODE_0DAA5A:    RTS                     ; $0D:AA5A: 60          ;

CODE_0DAA5B:    PHX                     ; $0D:AA5B: DA          ;
CODE_0DAA5C:    REP #$30                ; $0D:AA5C: C2 30       ;
CODE_0DAA5E:    TXA                     ; $0D:AA5E: 8A          ;
CODE_0DAA5F:    AND #$00FF              ; $0D:AA5F: 29 FF 00    ;
CODE_0DAA62:    ASL A                   ; $0D:AA62: 0A          ;
CODE_0DAA63:    TAX                     ; $0D:AA63: AA          ;
CODE_0DAA64:    LDY $1305,x             ; $0D:AA64: BC 05 13    ;
CODE_0DAA67:    SEP #$20                ; $0D:AA67: E2 20       ;
CODE_0DAA69:    LDA [$FA],y             ; $0D:AA69: B7 FA       ;
CODE_0DAA6B:    AND #$0F                ; $0D:AA6B: 29 0F       ;
CODE_0DAA6D:    STA $07                 ; $0D:AA6D: 85 07       ;
CODE_0DAA6F:    INY                     ; $0D:AA6F: C8          ;
CODE_0DAA70:    LDA [$FA],y             ; $0D:AA70: B7 FA       ;
CODE_0DAA72:    AND #$0F                ; $0D:AA72: 29 0F       ;
CODE_0DAA74:    SEP #$10                ; $0D:AA74: E2 10       ;
CODE_0DAA76:    TAY                     ; $0D:AA76: A8          ;
CODE_0DAA77:    PLX                     ; $0D:AA77: FA          ;
CODE_0DAA78:    RTS                     ; $0D:AA78: 60          ;

CODE_0DAA79:    LDA $0726               ; $0D:AA79: AD 26 07    ;
CODE_0DAA7C:    ASL A                   ; $0D:AA7C: 0A          ;
CODE_0DAA7D:    ASL A                   ; $0D:AA7D: 0A          ;
CODE_0DAA7E:    ASL A                   ; $0D:AA7E: 0A          ;
CODE_0DAA7F:    ASL A                   ; $0D:AA7F: 0A          ;
CODE_0DAA80:    RTS                     ; $0D:AA80: 60          ;

CODE_0DAA81:    LDA $07                 ; $0D:AA81: A5 07       ;
CODE_0DAA83:    ASL A                   ; $0D:AA83: 0A          ;
CODE_0DAA84:    ASL A                   ; $0D:AA84: 0A          ;
CODE_0DAA85:    ASL A                   ; $0D:AA85: 0A          ;
CODE_0DAA86:    ASL A                   ; $0D:AA86: 0A          ;
CODE_0DAA87:    CLC                     ; $0D:AA87: 18          ;
CODE_0DAA88:    ADC #$20                ; $0D:AA88: 69 20       ;
CODE_0DAA8A:    RTS                     ; $0D:AA8A: 60          ;

DATA_0DAA8B:        db $00,$D0

DATA_0DAA8D:        db $05,$05

CODE_0DAA8F:    PHA                     ; $0D:AA8F: 48          ;
CODE_0DAA90:    LSR A                   ; $0D:AA90: 4A          ;
CODE_0DAA91:    LSR A                   ; $0D:AA91: 4A          ;
CODE_0DAA92:    LSR A                   ; $0D:AA92: 4A          ;
CODE_0DAA93:    LSR A                   ; $0D:AA93: 4A          ;
CODE_0DAA94:    TAY                     ; $0D:AA94: A8          ;
CODE_0DAA95:    LDA DATA_0DAA8D,y       ; $0D:AA95: B9 8D AA    ;
CODE_0DAA98:    STA $07                 ; $0D:AA98: 85 07       ;
CODE_0DAA9A:    PLA                     ; $0D:AA9A: 68          ;
CODE_0DAA9B:    AND #$0F                ; $0D:AA9B: 29 0F       ;
CODE_0DAA9D:    CLC                     ; $0D:AA9D: 18          ;
CODE_0DAA9E:    ADC DATA_0DAA8B,y       ; $0D:AA9E: 79 8B AA    ;
CODE_0DAAA1:    STA $06                 ; $0D:AAA1: 85 06       ;
CODE_0DAAA3:    RTS                     ; $0D:AAA3: 60          ;

CODE_0DAAA4:    PHB                     ; $0D:AAA4: 8B          ;
CODE_0DAAA5:    PHK                     ; $0D:AAA5: 4B          ;
CODE_0DAAA6:    PLB                     ; $0D:AAA6: AB          ;
CODE_0DAAA7:    JSR CODE_0DAA4C         ; $0D:AAA7: 20 4C AA    ;
CODE_0DAAAA:    PLB                     ; $0D:AAAA: AB          ;
CODE_0DAAAB:    RTL                     ; $0D:AAAB: 6B          ;

CODE_0DAAAC:    PHB                     ; $0D:AAAC: 8B          ;
CODE_0DAAAD:    PHK                     ; $0D:AAAD: 4B          ;
CODE_0DAAAE:    PLB                     ; $0D:AAAE: AB          ;
CODE_0DAAAF:    JSR CODE_0DAA15         ; $0D:AAAF: 20 15 AA    ;
CODE_0DAAB2:    PLB                     ; $0D:AAB2: AB          ;
CODE_0DAAB3:    RTL                     ; $0D:AAB3: 6B          ;

CODE_0DAAB4:    PHB                     ; $0D:AAB4: 8B          ;
CODE_0DAAB5:    PHK                     ; $0D:AAB5: 4B          ;
CODE_0DAAB6:    PLB                     ; $0D:AAB6: AB          ;
CODE_0DAAB7:    JSR CODE_0DAA4F         ; $0D:AAB7: 20 4F AA    ;
CODE_0DAABA:    PLB                     ; $0D:AABA: AB          ;
CODE_0DAABB:    RTL                     ; $0D:AABB: 6B          ;

CODE_0DAABC:    PHB                     ; $0D:AABC: 8B          ;
CODE_0DAABD:    PHK                     ; $0D:AABD: 4B          ;
CODE_0DAABE:    PLB                     ; $0D:AABE: AB          ;
CODE_0DAABF:    JSR CODE_0DAA79         ; $0D:AABF: 20 79 AA    ;
CODE_0DAAC2:    PLB                     ; $0D:AAC2: AB          ;
CODE_0DAAC3:    RTL                     ; $0D:AAC3: 6B          ;

CODE_0DAAC4:    PHB                     ; $0D:AAC4: 8B          ;
CODE_0DAAC5:    PHK                     ; $0D:AAC5: 4B          ;
CODE_0DAAC6:    PLB                     ; $0D:AAC6: AB          ;
CODE_0DAAC7:    JSR CODE_0DA7F1         ; $0D:AAC7: 20 F1 A7    ;
CODE_0DAACA:    PLB                     ; $0D:AACA: AB          ;
CODE_0DAACB:    RTL                     ; $0D:AACB: 6B          ;

CODE_0DAACC:    PHB                     ; $0D:AACC: 8B          ;
CODE_0DAACD:    PHK                     ; $0D:AACD: 4B          ;
CODE_0DAACE:    PLB                     ; $0D:AACE: AB          ;
CODE_0DAACF:    PHA                     ; $0D:AACF: 48          ;
CODE_0DAAD0:    JSR CODE_0DA7BC         ; $0D:AAD0: 20 BC A7    ;
CODE_0DAAD3:    PLA                     ; $0D:AAD3: 68          ;
CODE_0DAAD4:    STA $0007               ; $0D:AAD4: 8D 07 00    ;
CODE_0DAAD7:    TYA                     ; $0D:AAD7: 98          ;
CODE_0DAAD8:    PHA                     ; $0D:AAD8: 48          ;
CODE_0DAAD9:    LDY $1300,x             ; $0D:AAD9: BC 00 13    ;
CODE_0DAADC:    BEQ CODE_0DAB05         ; $0D:AADC: F0 27       ;
CODE_0DAADE:    JSR CODE_0DA7F1         ; $0D:AADE: 20 F1 A7    ;
CODE_0DAAE1:    BCS CODE_0DAB05         ; $0D:AAE1: B0 22       ;
CODE_0DAAE3:    LDA #$04                ; $0D:AAE3: A9 04       ;
CODE_0DAAE5:    JSR CODE_0DA7CD         ; $0D:AAE5: 20 CD A7    ;
CODE_0DAAE8:    LDA $0006               ; $0D:AAE8: AD 06 00    ;
CODE_0DAAEB:    ASL A                   ; $0D:AAEB: 0A          ;
CODE_0DAAEC:    ASL A                   ; $0D:AAEC: 0A          ;
CODE_0DAAED:    ASL A                   ; $0D:AAED: 0A          ;
CODE_0DAAEE:    ASL A                   ; $0D:AAEE: 0A          ;
CODE_0DAAEF:    CLC                     ; $0D:AAEF: 18          ;
CODE_0DAAF0:    ADC $0238,x             ; $0D:AAF0: 7D 38 02    ;
CODE_0DAAF3:    SEC                     ; $0D:AAF3: 38          ;
CODE_0DAAF4:    SBC #$0A                ; $0D:AAF4: E9 0A       ;
CODE_0DAAF6:    STA $0238,x             ; $0D:AAF6: 9D 38 02    ;
CODE_0DAAF9:    STA $043D,x             ; $0D:AAF9: 9D 3D 04    ;
CODE_0DAAFC:    CLC                     ; $0D:AAFC: 18          ;
CODE_0DAAFD:    ADC #$18                ; $0D:AAFD: 69 18       ;
CODE_0DAAFF:    STA $041D,x             ; $0D:AAFF: 9D 1D 04    ;
CODE_0DAB02:    INC $00A1,x             ; $0D:AB02: FE A1 00    ;
CODE_0DAB05:    PLA                     ; $0D:AB05: 68          ;
CODE_0DAB06:    TAY                     ; $0D:AB06: A8          ;
CODE_0DAB07:    PHA                     ; $0D:AB07: 48          ;
CODE_0DAB08:    LDX $0007               ; $0D:AB08: AE 07 00    ;
CODE_0DAB0B:    LDA DATA_0DA766+2,y     ; $0D:AB0B: B9 68 A7    ;
CODE_0DAB0E:    LDY $0006               ; $0D:AB0E: AC 06 00    ;
CODE_0DAB11:    DEY                     ; $0D:AB11: 88          ;
CODE_0DAB12:    JSR CODE_0DAA15         ; $0D:AB12: 20 15 AA    ;
CODE_0DAB15:    PLA                     ; $0D:AB15: 68          ;
CODE_0DAB16:    TAY                     ; $0D:AB16: A8          ;
CODE_0DAB17:    LDA DATA_0DA766,y       ; $0D:AB17: B9 66 A7    ;
CODE_0DAB1A:    STA $06A1,x             ; $0D:AB1A: 9D A1 06    ;
CODE_0DAB1D:    PLB                     ; $0D:AB1D: AB          ;
CODE_0DAB1E:    RTL                     ; $0D:AB1E: 6B          ;

CODE_0DAB1F:    LDA $29,x               ; $0D:AB1F: B5 29       ;
CODE_0DAB21:    BNE CODE_0DAB63         ; $0D:AB21: D0 40       ;
CODE_0DAB23:    LDA $0792,x             ; $0D:AB23: BD 92 07    ;
CODE_0DAB26:    BNE CODE_0DAB63         ; $0D:AB26: D0 3B       ;
CODE_0DAB28:    LDA $00A1,x             ; $0D:AB28: BD A1 00    ;
CODE_0DAB2B:    BNE CODE_0DAB39         ; $0D:AB2B: D0 0C       ;
CODE_0DAB2D:    LDA $5E,x               ; $0D:AB2D: B5 5E       ;
CODE_0DAB2F:    EOR #$FF                ; $0D:AB2F: 49 FF       ;
CODE_0DAB31:    CLC                     ; $0D:AB31: 18          ;
CODE_0DAB32:    ADC #$01                ; $0D:AB32: 69 01       ;
CODE_0DAB34:    STA $5E,x               ; $0D:AB34: 95 5E       ;
CODE_0DAB36:    INC $00A1,x             ; $0D:AB36: FE A1 00    ;
CODE_0DAB39:    LDA $041D,x             ; $0D:AB39: BD 1D 04    ;
CODE_0DAB3C:    LDY $5E,x               ; $0D:AB3C: B4 5E       ;
CODE_0DAB3E:    BPL CODE_0DAB43         ; $0D:AB3E: 10 03       ;
CODE_0DAB40:    LDA $043D,x             ; $0D:AB40: BD 3D 04    ;
CODE_0DAB43:    STA $0000               ; $0D:AB43: 8D 00 00    ;
CODE_0DAB46:    LDA $0747               ; $0D:AB46: AD 47 07    ;
CODE_0DAB49:    BNE CODE_0DAB63         ; $0D:AB49: D0 18       ;
CODE_0DAB4B:    LDA $0238,x             ; $0D:AB4B: BD 38 02    ;
CODE_0DAB4E:    CLC                     ; $0D:AB4E: 18          ;
CODE_0DAB4F:    ADC $5E,x               ; $0D:AB4F: 75 5E       ;
CODE_0DAB51:    STA $0238,x             ; $0D:AB51: 9D 38 02    ;
CODE_0DAB54:    CMP $0000               ; $0D:AB54: CD 00 00    ;
CODE_0DAB57:    BNE CODE_0DAB63         ; $0D:AB57: D0 0A       ;
CODE_0DAB59:    LDA #$00                ; $0D:AB59: A9 00       ;
CODE_0DAB5B:    STA $00A1,x             ; $0D:AB5B: 9D A1 00    ;
CODE_0DAB5E:    LDA #$20                ; $0D:AB5E: A9 20       ;
CODE_0DAB60:    STA $0792,x             ; $0D:AB60: 9D 92 07    ;
CODE_0DAB63:    RTS                     ; $0D:AB63: 60          ;

DATA_0DAB64:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

CODE_0DAB70:    LDA $0772               ; $0D:AB70: AD 72 07    ;
CODE_0DAB73:    ASL A                   ; $0D:AB73: 0A          ;
CODE_0DAB74:    TAX                     ; $0D:AB74: AA          ;
CODE_0DAB75:    JMP (PNTR_0DAB78,x)     ; $0D:AB75: 7C 78 AB    ;

PNTR_0DAB78:        dw CODE_0D9D90
                    dw CODE_0D89BD
                    dw CODE_0D9E5A
                    dw CODE_0DAB99

CODE_0DAB80:    LDA $701FF2             ; $0D:AB80: AF F2 1F 70 ;
CODE_0DAB84:    BNE CODE_0DAB9D         ; $0D:AB84: D0 17       ;
CODE_0DAB86:    LDA $7FFB05             ; $0D:AB86: AF 05 FB 7F ;
CODE_0DAB8A:    BMI CODE_0DAB9D         ; $0D:AB8A: 30 11       ;
CODE_0DAB8C:    JSR CODE_0DAD50         ; $0D:AB8C: 20 50 AD    ;
CODE_0DAB8F:    JSR CODE_0DFDB2         ; $0D:AB8F: 20 B2 FD    ;
CODE_0DAB92:    JSR CODE_0DFD29         ; $0D:AB92: 20 29 FD    ;
CODE_0DAB95:    JSR CODE_0DF700         ; $0D:AB95: 20 00 F7    ;
CODE_0DAB98:    RTS                     ; $0D:AB98: 60          ;

CODE_0DAB99:    JSL CODE_0FD000         ; $0D:AB99: 22 00 D0 0F ;
CODE_0DAB9D:    LDA $28                 ; $0D:AB9D: A5 28       ;
CODE_0DAB9F:    BNE CODE_0DABA1         ; $0D:AB9F: D0 00       ;
CODE_0DABA1:    JSR CODE_0DAD50         ; $0D:ABA1: 20 50 AD    ;
CODE_0DABA4:    LDA $0772               ; $0D:ABA4: AD 72 07    ;
CODE_0DABA7:    CMP #$03                ; $0D:ABA7: C9 03       ;
CODE_0DABA9:    BCS CODE_0DABAC         ; $0D:ABA9: B0 01       ;
CODE_0DABAB:    RTS                     ; $0D:ABAB: 60          ;

CODE_0DABAC:    JSR CODE_0DB42F         ; $0D:ABAC: 20 2F B4    ;
CODE_0DABAF:    LDX #$00                ; $0D:ABAF: A2 00       ;
CODE_0DABB1:    STX $9E                 ; $0D:ABB1: 86 9E       ;
CODE_0DABB3:    LDA $0E67               ; $0D:ABB3: AD 67 0E    ;
CODE_0DABB6:    BEQ CODE_0DABBC         ; $0D:ABB6: F0 04       ;
CODE_0DABB8:    CMP #$7F                ; $0D:ABB8: C9 7F       ;
CODE_0DABBA:    BEQ CODE_0DABDA         ; $0D:ABBA: F0 1E       ;
CODE_0DABBC:    JSR CODE_0DC250         ; $0D:ABBC: 20 50 C2    ;
CODE_0DABBF:    LDA $0E67               ; $0D:ABBF: AD 67 0E    ;
CODE_0DABC2:    BNE CODE_0DABC7         ; $0D:ABC2: D0 03       ;
CODE_0DABC4:    JSR CODE_0D88D5         ; $0D:ABC4: 20 D5 88    ;
CODE_0DABC7:    INX                     ; $0D:ABC7: E8          ;
CODE_0DABC8:    CPX #$0A                ; $0D:ABC8: E0 0A       ;
CODE_0DABCA:    BNE CODE_0DABB1         ; $0D:ABCA: D0 E5       ;
CODE_0DABCC:    JSL CODE_0FE0FB         ; $0D:ABCC: 22 FB E0 0F ;
CODE_0DABD0:    LDA $0E67               ; $0D:ABD0: AD 67 0E    ;
CODE_0DABD3:    BEQ CODE_0DABDA         ; $0D:ABD3: F0 05       ;
CODE_0DABD5:    LDA #$7F                ; $0D:ABD5: A9 7F       ;
CODE_0DABD7:    STA $0E67               ; $0D:ABD7: 8D 67 0E    ;
CODE_0DABDA:    JSR CODE_0DFDB2         ; $0D:ABDA: 20 B2 FD    ;
CODE_0DABDD:    JSR CODE_0DFD29         ; $0D:ABDD: 20 29 FD    ;
CODE_0DABE0:    JSR CODE_0DF700         ; $0D:ABE0: 20 00 F7    ;
CODE_0DABE3:    LDX #$01                ; $0D:ABE3: A2 01       ;
CODE_0DABE5:    STX $9E                 ; $0D:ABE5: 86 9E       ;
CODE_0DABE7:    JSR CODE_0DBE0F         ; $0D:ABE7: 20 0F BE    ;
CODE_0DABEA:    DEX                     ; $0D:ABEA: CA          ;
CODE_0DABEB:    STX $9E                 ; $0D:ABEB: 86 9E       ;
CODE_0DABED:    JSR CODE_0DBE0F         ; $0D:ABED: 20 0F BE    ;
CODE_0DABF0:    JSR CODE_0DBE77         ; $0D:ABF0: 20 77 BE    ;
CODE_0DABF3:    JSR CODE_0DBA8C         ; $0D:ABF3: 20 8C BA    ;
CODE_0DABF6:    JSR CODE_0DB875         ; $0D:ABF6: 20 75 B8    ;
CODE_0DABF9:    JSR CODE_0DB5FA         ; $0D:ABF9: 20 FA B5    ;
CODE_0DABFC:    JSR CODE_0DB6A1         ; $0D:ABFC: 20 A1 B6    ;
CODE_0DABFF:    JSR CODE_0DB58D         ; $0D:ABFF: 20 8D B5    ;
CODE_0DAC02:    JSR CODE_0D9025         ; $0D:AC02: 20 25 90    ;
CODE_0DAC05:    LDA $0F04               ; $0D:AC05: AD 04 0F    ;
CODE_0DAC08:    BEQ CODE_0DAC0E         ; $0D:AC08: F0 04       ;
CODE_0DAC0A:    JSL CODE_0FF257         ; $0D:AC0A: 22 57 F2 0F ;
CODE_0DAC0E:    LDA $BB                 ; $0D:AC0E: A5 BB       ;
CODE_0DAC10:    CMP #$02                ; $0D:AC10: C9 02       ;
CODE_0DAC12:    BPL CODE_0DAC26         ; $0D:AC12: 10 12       ;
CODE_0DAC14:    LDA $07AF               ; $0D:AC14: AD AF 07    ;
CODE_0DAC17:    BEQ CODE_0DAC38         ; $0D:AC17: F0 1F       ;
CODE_0DAC19:    CMP #$04                ; $0D:AC19: C9 04       ;
CODE_0DAC1B:    BNE CODE_0DAC26         ; $0D:AC1B: D0 09       ;
CODE_0DAC1D:    LDA $0787               ; $0D:AC1D: AD 87 07    ;
CODE_0DAC20:    BNE CODE_0DAC26         ; $0D:AC20: D0 04       ;
CODE_0DAC22:    JSL CODE_0FD8F6         ; $0D:AC22: 22 F6 D8 0F ;
CODE_0DAC26:    LDA $09                 ; $0D:AC26: A5 09       ;
CODE_0DAC28:    PHY                     ; $0D:AC28: 5A          ;
CODE_0DAC29:    LDY $07AF               ; $0D:AC29: AC AF 07    ;
CODE_0DAC2C:    CPY #$08                ; $0D:AC2C: C0 08       ;
CODE_0DAC2E:    BCS CODE_0DAC32         ; $0D:AC2E: B0 02       ;
CODE_0DAC30:    LSR A                   ; $0D:AC30: 4A          ;
CODE_0DAC31:    LSR A                   ; $0D:AC31: 4A          ;
CODE_0DAC32:    PLY                     ; $0D:AC32: 7A          ;
CODE_0DAC33:    JSR CODE_0DB018         ; $0D:AC33: 20 18 B0    ;
CODE_0DAC36:    BRA CODE_0DAC4C         ; $0D:AC36: 80 14       ;

CODE_0DAC38:    LDA $0787               ; $0D:AC38: AD 87 07    ;
CODE_0DAC3B:    CMP #$01                ; $0D:AC3B: C9 01       ;
CODE_0DAC3D:    BNE CODE_0DAC49         ; $0D:AC3D: D0 0A       ;
CODE_0DAC3F:    LDA $0F                 ; $0D:AC3F: A5 0F       ;
CODE_0DAC41:    CMP #$0C                ; $0D:AC41: C9 0C       ;
CODE_0DAC43:    BEQ CODE_0DAC49         ; $0D:AC43: F0 04       ;
CODE_0DAC45:    JSL CODE_0E98C3         ; $0D:AC45: 22 C3 98 0E ;
CODE_0DAC49:    JSR CODE_0DB050         ; $0D:AC49: 20 50 B0    ;
CODE_0DAC4C:    LDA $0A                 ; $0D:AC4C: A5 0A       ;
CODE_0DAC4E:    STA $0D                 ; $0D:AC4E: 85 0D       ;
CODE_0DAC50:    STZ $0C                 ; $0D:AC50: 64 0C       ;
CODE_0DAC52:    LDA $0773               ; $0D:AC52: AD 73 07    ;
CODE_0DAC55:    CMP #$06                ; $0D:AC55: C9 06       ;
CODE_0DAC57:    BEQ CODE_0DAC75         ; $0D:AC57: F0 1C       ;
CODE_0DAC59:    LDA $071F               ; $0D:AC59: AD 1F 07    ;
CODE_0DAC5C:    BNE CODE_0DAC72         ; $0D:AC5C: D0 14       ;
CODE_0DAC5E:    LDA $073D               ; $0D:AC5E: AD 3D 07    ;
CODE_0DAC61:    CMP #$20                ; $0D:AC61: C9 20       ;
CODE_0DAC63:    BMI CODE_0DAC75         ; $0D:AC63: 30 10       ;
CODE_0DAC65:    LDA $073D               ; $0D:AC65: AD 3D 07    ;
CODE_0DAC68:    SBC #$20                ; $0D:AC68: E9 20       ;
CODE_0DAC6A:    STA $073D               ; $0D:AC6A: 8D 3D 07    ;
CODE_0DAC6D:    LDA #$00                ; $0D:AC6D: A9 00       ;
CODE_0DAC6F:    STA $1A00               ; $0D:AC6F: 8D 00 1A    ;
CODE_0DAC72:    JSR CODE_0DA054         ; $0D:AC72: 20 54 A0    ;
CODE_0DAC75:    RTS                     ; $0D:AC75: 60          ;

CODE_0DAC76:    LDA $06FF               ; $0D:AC76: AD FF 06    ;
CODE_0DAC79:    CLC                     ; $0D:AC79: 18          ;
CODE_0DAC7A:    ADC $03A1               ; $0D:AC7A: 6D A1 03    ;
CODE_0DAC7D:    STA $06FF               ; $0D:AC7D: 8D FF 06    ;
CODE_0DAC80:    LDA $0723               ; $0D:AC80: AD 23 07    ;
CODE_0DAC83:    BEQ CODE_0DAC88         ; $0D:AC83: F0 03       ;
CODE_0DAC85:    JMP CODE_0DAD02         ; $0D:AC85: 4C 02 AD    ;

CODE_0DAC88:    LDA $0755               ; $0D:AC88: AD 55 07    ;
CODE_0DAC8B:    CMP #$50                ; $0D:AC8B: C9 50       ;
CODE_0DAC8D:    BCC CODE_0DAD02         ; $0D:AC8D: 90 73       ;
CODE_0DAC8F:    LDA $078D               ; $0D:AC8F: AD 8D 07    ;
CODE_0DAC92:    BNE CODE_0DAD02         ; $0D:AC92: D0 6E       ;
CODE_0DAC94:    LDY $06FF               ; $0D:AC94: AC FF 06    ;
CODE_0DAC97:    DEY                     ; $0D:AC97: 88          ;
CODE_0DAC98:    BMI CODE_0DAD02         ; $0D:AC98: 30 68       ;
CODE_0DAC9A:    INY                     ; $0D:AC9A: C8          ;
CODE_0DAC9B:    CPY #$02                ; $0D:AC9B: C0 02       ;
CODE_0DAC9D:    BCC CODE_0DACA0         ; $0D:AC9D: 90 01       ;
CODE_0DAC9F:    DEY                     ; $0D:AC9F: 88          ;
CODE_0DACA0:    LDA $0755               ; $0D:ACA0: AD 55 07    ;
CODE_0DACA3:    CMP #$70                ; $0D:ACA3: C9 70       ;
CODE_0DACA5:    BCC CODE_0DACAA         ; $0D:ACA5: 90 03       ;
CODE_0DACA7:    LDY $06FF               ; $0D:ACA7: AC FF 06    ;
CODE_0DACAA:    LDA $0F01               ; $0D:ACAA: AD 01 0F    ;
CODE_0DACAD:    BNE CODE_0DACAA         ; $0D:ACAD: D0 FB       ;
CODE_0DACAF:    TYA                     ; $0D:ACAF: 98          ;
CODE_0DACB0:    STA $0775               ; $0D:ACB0: 8D 75 07    ;
CODE_0DACB3:    CLC                     ; $0D:ACB3: 18          ;
CODE_0DACB4:    ADC $073D               ; $0D:ACB4: 6D 3D 07    ;
CODE_0DACB7:    STA $073D               ; $0D:ACB7: 8D 3D 07    ;
CODE_0DACBA:    LDA $071C               ; $0D:ACBA: AD 1C 07    ;
CODE_0DACBD:    STA $00                 ; $0D:ACBD: 85 00       ;
CODE_0DACBF:    LDA $071A               ; $0D:ACBF: AD 1A 07    ;
CODE_0DACC2:    STA $01                 ; $0D:ACC2: 85 01       ;
CODE_0DACC4:    REP #$30                ; $0D:ACC4: C2 30       ;
CODE_0DACC6:    TYA                     ; $0D:ACC6: 98          ;
CODE_0DACC7:    AND #$00FF              ; $0D:ACC7: 29 FF 00    ;
CODE_0DACCA:    CLC                     ; $0D:ACCA: 18          ;
CODE_0DACCB:    ADC $00                 ; $0D:ACCB: 65 00       ;
CODE_0DACCD:    STA $00                 ; $0D:ACCD: 85 00       ;
CODE_0DACCF:    LSR A                   ; $0D:ACCF: 4A          ;
CODE_0DACD0:    STA $0EFD               ; $0D:ACD0: 8D FD 0E    ;
CODE_0DACD3:    LSR A                   ; $0D:ACD3: 4A          ;
CODE_0DACD4:    STA $0EEE               ; $0D:ACD4: 8D EE 0E    ;
CODE_0DACD7:    SEP #$30                ; $0D:ACD7: E2 30       ;
CODE_0DACD9:    LDA $00                 ; $0D:ACD9: A5 00       ;
CODE_0DACDB:    STA $071C               ; $0D:ACDB: 8D 1C 07    ;
CODE_0DACDE:    STA $073F               ; $0D:ACDE: 8D 3F 07    ;
CODE_0DACE1:    STA $42                 ; $0D:ACE1: 85 42       ;
CODE_0DACE3:    LDA $01                 ; $0D:ACE3: A5 01       ;
CODE_0DACE5:    STA $071A               ; $0D:ACE5: 8D 1A 07    ;
CODE_0DACE8:    STA $43                 ; $0D:ACE8: 85 43       ;
CODE_0DACEA:    AND #$01                ; $0D:ACEA: 29 01       ;
CODE_0DACEC:    STA $00                 ; $0D:ACEC: 85 00       ;
CODE_0DACEE:    LDA $0778               ; $0D:ACEE: AD 78 07    ;
CODE_0DACF1:    AND #$FE                ; $0D:ACF1: 29 FE       ;
CODE_0DACF3:    ORA $00                 ; $0D:ACF3: 05 00       ;
CODE_0DACF5:    STA $0778               ; $0D:ACF5: 8D 78 07    ;
CODE_0DACF8:    JSR CODE_0DAD3E         ; $0D:ACF8: 20 3E AD    ;
CODE_0DACFB:    LDA #$08                ; $0D:ACFB: A9 08       ;
CODE_0DACFD:    STA $07A1               ; $0D:ACFD: 8D A1 07    ;
CODE_0DAD00:    BRA CODE_0DAD07         ; $0D:AD00: 80 05       ;

CODE_0DAD02:    LDA #$00                ; $0D:AD02: A9 00       ;
CODE_0DAD04:    STA $0775               ; $0D:AD04: 8D 75 07    ;
CODE_0DAD07:    LDX #$00                ; $0D:AD07: A2 00       ;
CODE_0DAD09:    JSR CODE_0DFE34         ; $0D:AD09: 20 34 FE    ;
CODE_0DAD0C:    STA $00                 ; $0D:AD0C: 85 00       ;
CODE_0DAD0E:    LDY #$00                ; $0D:AD0E: A0 00       ;
CODE_0DAD10:    ASL A                   ; $0D:AD10: 0A          ;
CODE_0DAD11:    BCS CODE_0DAD1A         ; $0D:AD11: B0 07       ;
CODE_0DAD13:    INY                     ; $0D:AD13: C8          ;
CODE_0DAD14:    LDA $00                 ; $0D:AD14: A5 00       ;
CODE_0DAD16:    AND #$20                ; $0D:AD16: 29 20       ;
CODE_0DAD18:    BEQ CODE_0DAD34         ; $0D:AD18: F0 1A       ;
CODE_0DAD1A:    LDA $071C,y             ; $0D:AD1A: B9 1C 07    ;
CODE_0DAD1D:    SEC                     ; $0D:AD1D: 38          ;
CODE_0DAD1E:    SBC DATA_0DAD3A,y       ; $0D:AD1E: F9 3A AD    ;
CODE_0DAD21:    STA $0219               ; $0D:AD21: 8D 19 02    ;
CODE_0DAD24:    LDA $071A,y             ; $0D:AD24: B9 1A 07    ;
CODE_0DAD27:    SBC #$00                ; $0D:AD27: E9 00       ;
CODE_0DAD29:    STA $78                 ; $0D:AD29: 85 78       ;
CODE_0DAD2B:    LDA $0C                 ; $0D:AD2B: A5 0C       ;
CODE_0DAD2D:    CMP DATA_0DAD3C,y       ; $0D:AD2D: D9 3C AD    ;
CODE_0DAD30:    BEQ CODE_0DAD34         ; $0D:AD30: F0 02       ;
CODE_0DAD32:    STZ $5D                 ; $0D:AD32: 64 5D       ;
CODE_0DAD34:    LDA #$00                ; $0D:AD34: A9 00       ;
CODE_0DAD36:    STA $03A1               ; $0D:AD36: 8D A1 03    ;
CODE_0DAD39:    RTS                     ; $0D:AD39: 60          ;

DATA_0DAD3A:        db $00,$10

DATA_0DAD3C:        db $01,$02

CODE_0DAD3E:    LDA $071C               ; $0D:AD3E: AD 1C 07    ;
CODE_0DAD41:    CLC                     ; $0D:AD41: 18          ;
CODE_0DAD42:    ADC #$FF                ; $0D:AD42: 69 FF       ;
CODE_0DAD44:    STA $071D               ; $0D:AD44: 8D 1D 07    ;
CODE_0DAD47:    LDA $071A               ; $0D:AD47: AD 1A 07    ;
CODE_0DAD4A:    ADC #$00                ; $0D:AD4A: 69 00       ;
CODE_0DAD4C:    STA $071B               ; $0D:AD4C: 8D 1B 07    ;
CODE_0DAD4F:    RTS                     ; $0D:AD4F: 60          ;

CODE_0DAD50:    LDA $0F                 ; $0D:AD50: A5 0F       ;
CODE_0DAD52:    ASL A                   ; $0D:AD52: 0A          ;
CODE_0DAD53:    TAX                     ; $0D:AD53: AA          ;
CODE_0DAD54:    JMP (PNTR_0DAD57,x)     ; $0D:AD54: 7C 57 AD    ;

PNTR_0DAD57:        dw CODE_0D9ED1
                    dw CODE_0DAF29
                    dw CODE_0DAF7A
                    dw CODE_0DAF4B
                    dw CODE_0DB05B
                    dw CODE_0DB07D
                    dw CODE_0D9F7E
                    dw CODE_0DAD71
                    dw CODE_0DAE1C
                    dw CODE_0DAFC2
                    dw CODE_0DAFD4
                    dw CODE_0DAFF8
                    dw CODE_0DB00E

CODE_0DAD71:    LDA $0752               ; $0D:AD71: AD 52 07    ;
CODE_0DAD74:    CMP #$02                ; $0D:AD74: C9 02       ;
CODE_0DAD76:    BEQ CODE_0DADB1         ; $0D:AD76: F0 39       ;
CODE_0DAD78:    LDA #$00                ; $0D:AD78: A9 00       ;
CODE_0DAD7A:    LDY $0237               ; $0D:AD7A: AC 37 02    ;
CODE_0DAD7D:    CPY #$30                ; $0D:AD7D: C0 30       ;
CODE_0DAD7F:    BCS CODE_0DAD84         ; $0D:AD7F: B0 03       ;
CODE_0DAD81:    JMP CODE_0DAE12         ; $0D:AD81: 4C 12 AE    ;

CODE_0DAD84:    LDA $0710               ; $0D:AD84: AD 10 07    ;
CODE_0DAD87:    CMP #$06                ; $0D:AD87: C9 06       ;
CODE_0DAD89:    BEQ CODE_0DAD8F         ; $0D:AD89: F0 04       ;
CODE_0DAD8B:    CMP #$07                ; $0D:AD8B: C9 07       ;
CODE_0DAD8D:    BNE CODE_0DADFB         ; $0D:AD8D: D0 6C       ;
CODE_0DAD8F:    LDA $0256               ; $0D:AD8F: AD 56 02    ;
CODE_0DAD92:    AND #$F0                ; $0D:AD92: 29 F0       ;
CODE_0DAD94:    BEQ CODE_0DAD9B         ; $0D:AD94: F0 05       ;
CODE_0DAD96:    LDA #$01                ; $0D:AD96: A9 01       ;
CODE_0DAD98:    JMP CODE_0DAE12         ; $0D:AD98: 4C 12 AE    ;

CODE_0DAD9B:    JSR CODE_0DAFAD         ; $0D:AD9B: 20 AD AF    ;
CODE_0DAD9E:    DEC $06DE               ; $0D:AD9E: CE DE 06    ;
CODE_0DADA1:    BNE CODE_0DAE11         ; $0D:ADA1: D0 6E       ;
CODE_0DADA3:    LDA #$01                ; $0D:ADA3: A9 01       ;
CODE_0DADA5:    STA $0E7F               ; $0D:ADA5: 8D 7F 0E    ;
CODE_0DADA8:    STA $0E4F               ; $0D:ADA8: 8D 4F 0E    ;
CODE_0DADAB:    INC $0769               ; $0D:ADAB: EE 69 07    ;
CODE_0DADAE:    JMP CODE_0DB0B0         ; $0D:ADAE: 4C B0 B0    ;

CODE_0DADB1:    LDA $0758               ; $0D:ADB1: AD 58 07    ;
CODE_0DADB4:    BNE CODE_0DADD2         ; $0D:ADB4: D0 1C       ;
CODE_0DADB6:    LDA $0237               ; $0D:ADB6: AD 37 02    ;
CODE_0DADB9:    CMP #$B0                ; $0D:ADB9: C9 B0       ;
CODE_0DADBB:    BNE CODE_0DADC2         ; $0D:ADBB: D0 05       ;
CODE_0DADBD:    LDA #$04                ; $0D:ADBD: A9 04       ;
CODE_0DADBF:    STA $1600               ; $0D:ADBF: 8D 00 16    ;
CODE_0DADC2:    STA $0E4E               ; $0D:ADC2: 8D 4E 0E    ;
CODE_0DADC5:    LDA #$FF                ; $0D:ADC5: A9 FF       ;
CODE_0DADC7:    JSR CODE_0DAF72         ; $0D:ADC7: 20 72 AF    ;
CODE_0DADCA:    LDA $0237               ; $0D:ADCA: AD 37 02    ;
CODE_0DADCD:    CMP #$91                ; $0D:ADCD: C9 91       ;
CODE_0DADCF:    BCC CODE_0DADFB         ; $0D:ADCF: 90 2A       ;
CODE_0DADD1:    RTS                     ; $0D:ADD1: 60          ;

CODE_0DADD2:    LDA $0399               ; $0D:ADD2: AD 99 03    ;
CODE_0DADD5:    CMP #$60                ; $0D:ADD5: C9 60       ;
CODE_0DADD7:    BNE CODE_0DAE11         ; $0D:ADD7: D0 38       ;
CODE_0DADD9:    LDA $0237               ; $0D:ADD9: AD 37 02    ;
CODE_0DADDC:    CMP #$99                ; $0D:ADDC: C9 99       ;
CODE_0DADDE:    LDY #$00                ; $0D:ADDE: A0 00       ;
CODE_0DADE0:    LDA #$01                ; $0D:ADE0: A9 01       ;
CODE_0DADE2:    BCC CODE_0DADEE         ; $0D:ADE2: 90 0A       ;
CODE_0DADE4:    LDA #$03                ; $0D:ADE4: A9 03       ;
CODE_0DADE6:    STA $28                 ; $0D:ADE6: 85 28       ;
CODE_0DADE8:    INY                     ; $0D:ADE8: C8          ;
CODE_0DADE9:    LDA #$08                ; $0D:ADE9: A9 08       ;
CODE_0DADEB:    STA $05B4               ; $0D:ADEB: 8D B4 05    ;
CODE_0DADEE:    STY $0716               ; $0D:ADEE: 8C 16 07    ;
CODE_0DADF1:    JSR CODE_0DAE12         ; $0D:ADF1: 20 12 AE    ;
CODE_0DADF4:    LDA $0219               ; $0D:ADF4: AD 19 02    ;
CODE_0DADF7:    CMP #$48                ; $0D:ADF7: C9 48       ;
CODE_0DADF9:    BCC CODE_0DAE11         ; $0D:ADF9: 90 16       ;
CODE_0DADFB:    STZ $0E4E               ; $0D:ADFB: 9C 4E 0E    ;
CODE_0DADFE:    LDA #$08                ; $0D:ADFE: A9 08       ;
CODE_0DAE00:    STA $0F                 ; $0D:AE00: 85 0F       ;
CODE_0DAE02:    LDA #$01                ; $0D:AE02: A9 01       ;
CODE_0DAE04:    STA $0202               ; $0D:AE04: 8D 02 02    ;
CODE_0DAE07:    LSR A                   ; $0D:AE07: 4A          ;
CODE_0DAE08:    STA $0752               ; $0D:AE08: 8D 52 07    ;
CODE_0DAE0B:    STA $0716               ; $0D:AE0B: 8D 16 07    ;
CODE_0DAE0E:    STA $0758               ; $0D:AE0E: 8D 58 07    ;
CODE_0DAE11:    RTS                     ; $0D:AE11: 60          ;

CODE_0DAE12:    STA $0FF4               ; $0D:AE12: 8D F4 0F    ;
CODE_0DAE15:    LDA #$01                ; $0D:AE15: A9 01       ;
CODE_0DAE17:    STA $0B7A               ; $0D:AE17: 8D 7A 0B    ;
CODE_0DAE1A:    BRA CODE_0DAE1F         ; $0D:AE1A: 80 03       ;

CODE_0DAE1C:    STZ $0B7A               ; $0D:AE1C: 9C 7A 0B    ;
CODE_0DAE1F:    LDA $0F                 ; $0D:AE1F: A5 0F       ;
CODE_0DAE21:    CMP #$0B                ; $0D:AE21: C9 0B       ;
CODE_0DAE23:    BEQ CODE_0DAE5F         ; $0D:AE23: F0 3A       ;
CODE_0DAE25:    LDA $5C                 ; $0D:AE25: A5 5C       ;
CODE_0DAE27:    BNE CODE_0DAE38         ; $0D:AE27: D0 0F       ;
CODE_0DAE29:    LDY $BB                 ; $0D:AE29: A4 BB       ;
CODE_0DAE2B:    DEY                     ; $0D:AE2B: 88          ;
CODE_0DAE2C:    BNE CODE_0DAE35         ; $0D:AE2C: D0 07       ;
CODE_0DAE2E:    LDA $0237               ; $0D:AE2E: AD 37 02    ;
CODE_0DAE31:    CMP #$D0                ; $0D:AE31: C9 D0       ;
CODE_0DAE33:    BCC CODE_0DAE38         ; $0D:AE33: 90 03       ;
CODE_0DAE35:    STZ $0FF4               ; $0D:AE35: 9C F4 0F    ;
CODE_0DAE38:    LDA $0FF4               ; $0D:AE38: AD F4 0F    ;
CODE_0DAE3B:    AND #$C0                ; $0D:AE3B: 29 C0       ;
CODE_0DAE3D:    STA $0A                 ; $0D:AE3D: 85 0A       ;
CODE_0DAE3F:    LDA $0FF4               ; $0D:AE3F: AD F4 0F    ;
CODE_0DAE42:    AND #$03                ; $0D:AE42: 29 03       ;
CODE_0DAE44:    STA $0C                 ; $0D:AE44: 85 0C       ;
CODE_0DAE46:    LDA $0FF4               ; $0D:AE46: AD F4 0F    ;
CODE_0DAE49:    AND #$0C                ; $0D:AE49: 29 0C       ;
CODE_0DAE4B:    STA $0B                 ; $0D:AE4B: 85 0B       ;
CODE_0DAE4D:    AND #$04                ; $0D:AE4D: 29 04       ;
CODE_0DAE4F:    BEQ CODE_0DAE5F         ; $0D:AE4F: F0 0E       ;
CODE_0DAE51:    LDA $28                 ; $0D:AE51: A5 28       ;
CODE_0DAE53:    BNE CODE_0DAE5F         ; $0D:AE53: D0 0A       ;
CODE_0DAE55:    LDY $0C                 ; $0D:AE55: A4 0C       ;
CODE_0DAE57:    BEQ CODE_0DAE5F         ; $0D:AE57: F0 06       ;
CODE_0DAE59:    LDA #$00                ; $0D:AE59: A9 00       ;
CODE_0DAE5B:    STA $0C                 ; $0D:AE5B: 85 0C       ;
CODE_0DAE5D:    STA $0B                 ; $0D:AE5D: 85 0B       ;
CODE_0DAE5F:    LDA $700007             ; $0D:AE5F: AF 07 00 70 ;
CODE_0DAE63:    BEQ CODE_0DAE6B         ; $0D:AE63: F0 06       ;
CODE_0DAE65:    JSL CODE_0FDEFE         ; $0D:AE65: 22 FE DE 0F ;
CODE_0DAE69:    BCC CODE_0DAE6E         ; $0D:AE69: 90 03       ;
CODE_0DAE6B:    JSR CODE_0DB0E5         ; $0D:AE6B: 20 E5 B0    ;
CODE_0DAE6E:    LDY #$01                ; $0D:AE6E: A0 01       ;
CODE_0DAE70:    LDA $0754               ; $0D:AE70: AD 54 07    ;
CODE_0DAE73:    BNE CODE_0DAE7E         ; $0D:AE73: D0 09       ;
CODE_0DAE75:    LDY #$00                ; $0D:AE75: A0 00       ;
CODE_0DAE77:    LDA $0714               ; $0D:AE77: AD 14 07    ;
CODE_0DAE7A:    BEQ CODE_0DAE7E         ; $0D:AE7A: F0 02       ;
CODE_0DAE7C:    LDY #$02                ; $0D:AE7C: A0 02       ;
CODE_0DAE7E:    STY $048F               ; $0D:AE7E: 8C 8F 04    ;
CODE_0DAE81:    LDA #$01                ; $0D:AE81: A9 01       ;
CODE_0DAE83:    LDY $5D                 ; $0D:AE83: A4 5D       ;
CODE_0DAE85:    BEQ CODE_0DAE8C         ; $0D:AE85: F0 05       ;
CODE_0DAE87:    BPL CODE_0DAE8A         ; $0D:AE87: 10 01       ;
CODE_0DAE89:    ASL A                   ; $0D:AE89: 0A          ;
CODE_0DAE8A:    STA $46                 ; $0D:AE8A: 85 46       ;
CODE_0DAE8C:    JSR CODE_0DAC76         ; $0D:AE8C: 20 76 AC    ;
CODE_0DAE8F:    JSR CODE_0DFDB2         ; $0D:AE8F: 20 B2 FD    ;
CODE_0DAE92:    JSR CODE_0DFD29         ; $0D:AE92: 20 29 FD    ;
CODE_0DAE95:    LDX #$00                ; $0D:AE95: A2 00       ;
CODE_0DAE97:    JSR CODE_0DE9A9         ; $0D:AE97: 20 A9 E9    ;
CODE_0DAE9A:    JSR CODE_0DE263         ; $0D:AE9A: 20 63 E2    ;
CODE_0DAE9D:    LDA $0237               ; $0D:AE9D: AD 37 02    ;
CODE_0DAEA0:    CMP #$40                ; $0D:AEA0: C9 40       ;
CODE_0DAEA2:    BCC CODE_0DAECE         ; $0D:AEA2: 90 2A       ;
CODE_0DAEA4:    LDA $0F                 ; $0D:AEA4: A5 0F       ;
CODE_0DAEA6:    CMP #$05                ; $0D:AEA6: C9 05       ;
CODE_0DAEA8:    BEQ CODE_0DAECE         ; $0D:AEA8: F0 24       ;
CODE_0DAEAA:    CMP #$07                ; $0D:AEAA: C9 07       ;
CODE_0DAEAC:    BEQ CODE_0DAECE         ; $0D:AEAC: F0 20       ;
CODE_0DAEAE:    CMP #$04                ; $0D:AEAE: C9 04       ;
CODE_0DAEB0:    BCC CODE_0DAECE         ; $0D:AEB0: 90 1C       ;
CODE_0DAEB2:    LDA $0F                 ; $0D:AEB2: A5 0F       ;
CODE_0DAEB4:    CMP #$0B                ; $0D:AEB4: C9 0B       ;
CODE_0DAEB6:    BNE CODE_0DAEC4         ; $0D:AEB6: D0 0C       ;
CODE_0DAEB8:    STZ $0F04               ; $0D:AEB8: 9C 04 0F    ;
CODE_0DAEBB:    LDA $0256               ; $0D:AEBB: AD 56 02    ;
CODE_0DAEBE:    AND #$CE                ; $0D:AEBE: 29 CE       ;
CODE_0DAEC0:    ORA #$30                ; $0D:AEC0: 09 30       ;
CODE_0DAEC2:    BRA CODE_0DAECB         ; $0D:AEC2: 80 07       ;

CODE_0DAEC4:    LDA $0256               ; $0D:AEC4: AD 56 02    ;
CODE_0DAEC7:    AND #$CE                ; $0D:AEC7: 29 CE       ;
CODE_0DAEC9:    ORA #$20                ; $0D:AEC9: 09 20       ;
CODE_0DAECB:    STA $0256               ; $0D:AECB: 8D 56 02    ;
CODE_0DAECE:    LDA $BB                 ; $0D:AECE: A5 BB       ;
CODE_0DAED0:    CMP #$02                ; $0D:AED0: C9 02       ;
CODE_0DAED2:    BMI CODE_0DAF1C         ; $0D:AED2: 30 48       ;
CODE_0DAED4:    LDX #$01                ; $0D:AED4: A2 01       ;
CODE_0DAED6:    STX $0723               ; $0D:AED6: 8E 23 07    ;
CODE_0DAED9:    LDY #$04                ; $0D:AED9: A0 04       ;
CODE_0DAEDB:    STY $07                 ; $0D:AEDB: 84 07       ;
CODE_0DAEDD:    LDX #$00                ; $0D:AEDD: A2 00       ;
CODE_0DAEDF:    LDY $0759               ; $0D:AEDF: AC 59 07    ;
CODE_0DAEE2:    BNE CODE_0DAEE9         ; $0D:AEE2: D0 05       ;
CODE_0DAEE4:    LDY $0743               ; $0D:AEE4: AC 43 07    ;
CODE_0DAEE7:    BNE CODE_0DAF0C         ; $0D:AEE7: D0 23       ;
CODE_0DAEE9:    INX                     ; $0D:AEE9: E8          ;
CODE_0DAEEA:    LDY $0F                 ; $0D:AEEA: A4 0F       ;
CODE_0DAEEC:    CPY #$0B                ; $0D:AEEC: C0 0B       ;
CODE_0DAEEE:    BEQ CODE_0DAF0C         ; $0D:AEEE: F0 1C       ;
CODE_0DAEF0:    LDY $0712               ; $0D:AEF0: AC 12 07    ;
CODE_0DAEF3:    BNE CODE_0DAF08         ; $0D:AEF3: D0 13       ;
CODE_0DAEF5:    INY                     ; $0D:AEF5: C8          ;
CODE_0DAEF6:    STY $0712               ; $0D:AEF6: 8C 12 07    ;
CODE_0DAEF9:    LDY #$09                ; $0D:AEF9: A0 09       ;
CODE_0DAEFB:    STY $1602               ; $0D:AEFB: 8C 02 16    ;
CODE_0DAEFE:    PHA                     ; $0D:AEFE: 48          ;
CODE_0DAEFF:    LDA #$20                ; $0D:AEFF: A9 20       ;
CODE_0DAF01:    TSB $1601               ; $0D:AF01: 0C 01 16    ;
CODE_0DAF04:    PLA                     ; $0D:AF04: 68          ;
CODE_0DAF05:    STA $0E67               ; $0D:AF05: 8D 67 0E    ;
CODE_0DAF08:    LDY #$06                ; $0D:AF08: A0 06       ;
CODE_0DAF0A:    STY $07                 ; $0D:AF0A: 84 07       ;
CODE_0DAF0C:    CMP $07                 ; $0D:AF0C: C5 07       ;
CODE_0DAF0E:    BMI CODE_0DAF1C         ; $0D:AF0E: 30 0C       ;
CODE_0DAF10:    DEX                     ; $0D:AF10: CA          ;
CODE_0DAF11:    BMI CODE_0DAF1D         ; $0D:AF11: 30 0A       ;
CODE_0DAF13:    LDY $07B1               ; $0D:AF13: AC B1 07    ;
CODE_0DAF16:    BNE CODE_0DAF1C         ; $0D:AF16: D0 04       ;
CODE_0DAF18:    LDA #$06                ; $0D:AF18: A9 06       ;
CODE_0DAF1A:    STA $0F                 ; $0D:AF1A: 85 0F       ;
CODE_0DAF1C:    RTS                     ; $0D:AF1C: 60          ;

CODE_0DAF1D:    LDA #$00                ; $0D:AF1D: A9 00       ;
CODE_0DAF1F:    STA $0758               ; $0D:AF1F: 8D 58 07    ;
CODE_0DAF22:    JSR CODE_0DAF43         ; $0D:AF22: 20 43 AF    ;
CODE_0DAF25:    INC $0752               ; $0D:AF25: EE 52 07    ;
CODE_0DAF28:    RTS                     ; $0D:AF28: 60          ;

CODE_0DAF29:    LDA $BB                 ; $0D:AF29: A5 BB       ;
CODE_0DAF2B:    BNE CODE_0DAF34         ; $0D:AF2B: D0 07       ;
CODE_0DAF2D:    LDA $0237               ; $0D:AF2D: AD 37 02    ;
CODE_0DAF30:    CMP #$E4                ; $0D:AF30: C9 E4       ;
CODE_0DAF32:    BCC CODE_0DAF43         ; $0D:AF32: 90 0F       ;
CODE_0DAF34:    LDA #$08                ; $0D:AF34: A9 08       ;
CODE_0DAF36:    STA $0758               ; $0D:AF36: 8D 58 07    ;
CODE_0DAF39:    STA $0E67               ; $0D:AF39: 8D 67 0E    ;
CODE_0DAF3C:    LDY #$03                ; $0D:AF3C: A0 03       ;
CODE_0DAF3E:    STY $28                 ; $0D:AF3E: 84 28       ;
CODE_0DAF40:    JMP CODE_0DAE12         ; $0D:AF40: 4C 12 AE    ;

CODE_0DAF43:    LDA #$02                ; $0D:AF43: A9 02       ;
CODE_0DAF45:    STA $0752               ; $0D:AF45: 8D 52 07    ;
CODE_0DAF48:    JMP CODE_0DAF8F         ; $0D:AF48: 4C 8F AF    ;

CODE_0DAF4B:    LDA #$01                ; $0D:AF4B: A9 01       ;
CODE_0DAF4D:    STA $0E4F               ; $0D:AF4D: 8D 4F 0E    ;
CODE_0DAF50:    STA $0218               ; $0D:AF50: 8D 18 02    ;
CODE_0DAF53:    LDA $09                 ; $0D:AF53: A5 09       ;
CODE_0DAF55:    LSR A                   ; $0D:AF55: 4A          ;
CODE_0DAF56:    BCC CODE_0DAF5D         ; $0D:AF56: 90 05       ;
CODE_0DAF58:    LDA #$01                ; $0D:AF58: A9 01       ;
CODE_0DAF5A:    JSR CODE_0DAF72         ; $0D:AF5A: 20 72 AF    ;
CODE_0DAF5D:    JSR CODE_0DAC76         ; $0D:AF5D: 20 76 AC    ;
CODE_0DAF60:    LDY #$00                ; $0D:AF60: A0 00       ;
CODE_0DAF62:    LDA $06D6               ; $0D:AF62: AD D6 06    ;
CODE_0DAF65:    BNE CODE_0DAF87         ; $0D:AF65: D0 20       ;
CODE_0DAF67:    INY                     ; $0D:AF67: C8          ;
CODE_0DAF68:    LDA $5C                 ; $0D:AF68: A5 5C       ;
CODE_0DAF6A:    CMP #$03                ; $0D:AF6A: C9 03       ;
CODE_0DAF6C:    BNE CODE_0DAF87         ; $0D:AF6C: D0 19       ;
CODE_0DAF6E:    INY                     ; $0D:AF6E: C8          ;
CODE_0DAF6F:    JMP CODE_0DAF87         ; $0D:AF6F: 4C 87 AF    ;

CODE_0DAF72:    CLC                     ; $0D:AF72: 18          ;
CODE_0DAF73:    ADC $0237               ; $0D:AF73: 6D 37 02    ;
CODE_0DAF76:    STA $0237               ; $0D:AF76: 8D 37 02    ;
CODE_0DAF79:    RTS                     ; $0D:AF79: 60          ;

CODE_0DAF7A:    LDA #$01                ; $0D:AF7A: A9 01       ;
CODE_0DAF7C:    STA $0E4F               ; $0D:AF7C: 8D 4F 0E    ;
CODE_0DAF7F:    STA $0E67               ; $0D:AF7F: 8D 67 0E    ;
CODE_0DAF82:    JSR CODE_0DAFAD         ; $0D:AF82: 20 AD AF    ;
CODE_0DAF85:    LDY #$02                ; $0D:AF85: A0 02       ;
CODE_0DAF87:    DEC $06DE               ; $0D:AF87: CE DE 06    ;
CODE_0DAF8A:    BNE CODE_0DAFAC         ; $0D:AF8A: D0 20       ;
CODE_0DAF8C:    STY $0752               ; $0D:AF8C: 8C 52 07    ;
CODE_0DAF8F:    LDA #$01                ; $0D:AF8F: A9 01       ;
CODE_0DAF91:    STA $0E7F               ; $0D:AF91: 8D 7F 0E    ;
CODE_0DAF94:    STA $0E67               ; $0D:AF94: 8D 67 0E    ;
CODE_0DAF97:    LDA $02FF               ; $0D:AF97: AD FF 02    ;
CODE_0DAF9A:    BEQ CODE_0DAFA4         ; $0D:AF9A: F0 08       ;
CODE_0DAF9C:    LDX #$00                ; $0D:AF9C: A2 00       ;
CODE_0DAF9E:    JSL CODE_0FD4D3         ; $0D:AF9E: 22 D3 D4 0F ;
CODE_0DAFA2:    LDX $9E                 ; $0D:AFA2: A6 9E       ;
CODE_0DAFA4:    LDA #$00                ; $0D:AFA4: A9 00       ;
CODE_0DAFA6:    STA $0772               ; $0D:AFA6: 8D 72 07    ;
CODE_0DAFA9:    STA $0722               ; $0D:AFA9: 8D 22 07    ;
CODE_0DAFAC:    RTS                     ; $0D:AFAC: 60          ;

CODE_0DAFAD:    LDA #$08                ; $0D:AFAD: A9 08       ;
CODE_0DAFAF:    STA $5D                 ; $0D:AFAF: 85 5D       ;
CODE_0DAFB1:    LDY #$01                ; $0D:AFB1: A0 01       ;
CODE_0DAFB3:    LDA $0219               ; $0D:AFB3: AD 19 02    ;
CODE_0DAFB6:    AND #$0F                ; $0D:AFB6: 29 0F       ;
CODE_0DAFB8:    BNE CODE_0DAFBD         ; $0D:AFB8: D0 03       ;
CODE_0DAFBA:    STA $5D                 ; $0D:AFBA: 85 5D       ;
CODE_0DAFBC:    TAY                     ; $0D:AFBC: A8          ;
CODE_0DAFBD:    TYA                     ; $0D:AFBD: 98          ;
CODE_0DAFBE:    JSR CODE_0DAE12         ; $0D:AFBE: 20 12 AE    ;
CODE_0DAFC1:    RTS                     ; $0D:AFC1: 60          ;

CODE_0DAFC2:    LDA $0747               ; $0D:AFC2: AD 47 07    ;
CODE_0DAFC5:    CMP #$F8                ; $0D:AFC5: C9 F8       ;
CODE_0DAFC7:    BNE CODE_0DAFCC         ; $0D:AFC7: D0 03       ;
CODE_0DAFC9:    JMP CODE_0DAFE4         ; $0D:AFC9: 4C E4 AF    ;

CODE_0DAFCC:    CMP #$C4                ; $0D:AFCC: C9 C4       ;
CODE_0DAFCE:    BNE CODE_0DAFD3         ; $0D:AFCE: D0 03       ;
CODE_0DAFD0:    JSR CODE_0DB002         ; $0D:AFD0: 20 02 B0    ;
CODE_0DAFD3:    RTS                     ; $0D:AFD3: 60          ;

CODE_0DAFD4:    LDA $0747               ; $0D:AFD4: AD 47 07    ;
CODE_0DAFD7:    CMP #$F0                ; $0D:AFD7: C9 F0       ;
CODE_0DAFD9:    BCS CODE_0DAFE2         ; $0D:AFD9: B0 07       ;
CODE_0DAFDB:    CMP #$C8                ; $0D:AFDB: C9 C8       ;
CODE_0DAFDD:    BEQ CODE_0DB002         ; $0D:AFDD: F0 23       ;
CODE_0DAFDF:    JMP CODE_0DAE1C         ; $0D:AFDF: 4C 1C AE    ;

CODE_0DAFE2:    BNE CODE_0DAFF7         ; $0D:AFE2: D0 13       ;
CODE_0DAFE4:    LDY $070B               ; $0D:AFE4: AC 0B 07    ;
CODE_0DAFE7:    BNE CODE_0DAFF7         ; $0D:AFE7: D0 0E       ;
CODE_0DAFE9:    STY $070D               ; $0D:AFE9: 8C 0D 07    ;
CODE_0DAFEC:    INC $070B               ; $0D:AFEC: EE 0B 07    ;
CODE_0DAFEF:    LDA $0754               ; $0D:AFEF: AD 54 07    ;
CODE_0DAFF2:    EOR #$01                ; $0D:AFF2: 49 01       ;
CODE_0DAFF4:    STA $0754               ; $0D:AFF4: 8D 54 07    ;
CODE_0DAFF7:    RTS                     ; $0D:AFF7: 60          ;

CODE_0DAFF8:    LDA $0747               ; $0D:AFF8: AD 47 07    ;
CODE_0DAFFB:    CMP #$F0                ; $0D:AFFB: C9 F0       ;
CODE_0DAFFD:    BCS CODE_0DB05A         ; $0D:AFFD: B0 5B       ;
CODE_0DAFFF:    JMP CODE_0DAE1C         ; $0D:AFFF: 4C 1C AE    ;

CODE_0DB002:    STZ $0747               ; $0D:B002: 9C 47 07    ;
CODE_0DB005:    JSL CODE_0E98C3         ; $0D:B005: 22 C3 98 0E ;
CODE_0DB009:    LDA #$08                ; $0D:B009: A9 08       ;
CODE_0DB00B:    STA $0F                 ; $0D:B00B: 85 0F       ;
CODE_0DB00D:    RTS                     ; $0D:B00D: 60          ;

CODE_0DB00E:    LDA $0747               ; $0D:B00E: AD 47 07    ;
CODE_0DB011:    CMP #$C0                ; $0D:B011: C9 C0       ;
CODE_0DB013:    BEQ CODE_0DB04D         ; $0D:B013: F0 38       ;
CODE_0DB015:    EOR #$FF                ; $0D:B015: 49 FF       ;
CODE_0DB017:    ASL A                   ; $0D:B017: 0A          ;
CODE_0DB018:    ASL A                   ; $0D:B018: 0A          ;
CODE_0DB019:    ASL A                   ; $0D:B019: 0A          ;
CODE_0DB01A:    ASL A                   ; $0D:B01A: 0A          ;
CODE_0DB01B:    PHY                     ; $0D:B01B: 5A          ;
CODE_0DB01C:    PHX                     ; $0D:B01C: DA          ;
CODE_0DB01D:    REP #$30                ; $0D:B01D: C2 30       ;
CODE_0DB01F:    AND #$0060              ; $0D:B01F: 29 60 00    ;
CODE_0DB022:    TAX                     ; $0D:B022: AA          ;
CODE_0DB023:    LDA $0753               ; $0D:B023: AD 53 07    ;
CODE_0DB026:    AND #$00FF              ; $0D:B026: 29 FF 00    ;
CODE_0DB029:    BEQ CODE_0DB031         ; $0D:B029: F0 06       ;
CODE_0DB02B:    TXA                     ; $0D:B02B: 8A          ;
CODE_0DB02C:    CLC                     ; $0D:B02C: 18          ;
CODE_0DB02D:    ADC #$0020              ; $0D:B02D: 69 20 00    ;
CODE_0DB030:    TAX                     ; $0D:B030: AA          ;
CODE_0DB031:    LDY #$01E0              ; $0D:B031: A0 E0 01    ;
CODE_0DB034:    LDA DATA_0DC19C,x       ; $0D:B034: BD 9C C1    ;
CODE_0DB037:    STA $1000,y             ; $0D:B037: 99 00 10    ;
CODE_0DB03A:    INX                     ; $0D:B03A: E8          ;
CODE_0DB03B:    INX                     ; $0D:B03B: E8          ;
CODE_0DB03C:    INY                     ; $0D:B03C: C8          ;
CODE_0DB03D:    INY                     ; $0D:B03D: C8          ;
CODE_0DB03E:    CPY #$0200              ; $0D:B03E: C0 00 02    ;
CODE_0DB041:    BNE CODE_0DB034         ; $0D:B041: D0 F1       ;
CODE_0DB043:    SEP #$30                ; $0D:B043: E2 30       ;
CODE_0DB045:    PLX                     ; $0D:B045: FA          ;
CODE_0DB046:    PLY                     ; $0D:B046: 7A          ;
CODE_0DB047:    LDA #$01                ; $0D:B047: A9 01       ;
CODE_0DB049:    STA $1200               ; $0D:B049: 8D 00 12    ;
CODE_0DB04C:    RTS                     ; $0D:B04C: 60          ;

CODE_0DB04D:    JSR CODE_0DB002         ; $0D:B04D: 20 02 B0    ;
CODE_0DB050:    LDA $0256               ; $0D:B050: AD 56 02    ;
CODE_0DB053:    AND #$F1                ; $0D:B053: 29 F1       ;
CODE_0DB055:    ORA #$0E                ; $0D:B055: 09 0E       ;
CODE_0DB057:    STA $0256               ; $0D:B057: 8D 56 02    ;
CODE_0DB05A:    RTS                     ; $0D:B05A: 60          ;

CODE_0DB05B:    LDA $21                 ; $0D:B05B: A5 21       ;
CODE_0DB05D:    CMP #$30                ; $0D:B05D: C9 30       ;
CODE_0DB05F:    BNE CODE_0DB072         ; $0D:B05F: D0 11       ;
CODE_0DB061:    LDA #$00                ; $0D:B061: A9 00       ;
CODE_0DB063:    STA $0713               ; $0D:B063: 8D 13 07    ;
CODE_0DB066:    LDY $0237               ; $0D:B066: AC 37 02    ;
CODE_0DB069:    CPY #$9E                ; $0D:B069: C0 9E       ;
CODE_0DB06B:    BCS CODE_0DB06F         ; $0D:B06B: B0 02       ;
CODE_0DB06D:    LDA #$04                ; $0D:B06D: A9 04       ;
CODE_0DB06F:    JMP CODE_0DAE12         ; $0D:B06F: 4C 12 AE    ;

CODE_0DB072:    INC $0F                 ; $0D:B072: E6 0F       ;
CODE_0DB074:    RTS                     ; $0D:B074: 60          ;

DATA_0DB075:        db $15,$23,$16,$1B,$17,$18,$23,$63

CODE_0DB07D:    JSL CODE_0FD2CD         ; $0D:B07D: 22 CD D2 0F ;
CODE_0DB081:    BEQ CODE_0DB092         ; $0D:B081: F0 0F       ;
CODE_0DB083:    LDA #$01                ; $0D:B083: A9 01       ;
CODE_0DB085:    JSR CODE_0DAE12         ; $0D:B085: 20 12 AE    ;
CODE_0DB088:    LDA $0237               ; $0D:B088: AD 37 02    ;
CODE_0DB08B:    CMP #$AE                ; $0D:B08B: C9 AE       ;
CODE_0DB08D:    BCC CODE_0DB092         ; $0D:B08D: 90 03       ;
CODE_0DB08F:    STZ $0723               ; $0D:B08F: 9C 23 07    ;
CODE_0DB092:    LDA $0746               ; $0D:B092: AD 46 07    ;
CODE_0DB095:    CMP #$05                ; $0D:B095: C9 05       ;
CODE_0DB097:    BNE CODE_0DB0E4         ; $0D:B097: D0 4B       ;
CODE_0DB099:    INC $075C               ; $0D:B099: EE 5C 07    ;
CODE_0DB09C:    LDA $075C               ; $0D:B09C: AD 5C 07    ;
CODE_0DB09F:    CMP #$03                ; $0D:B09F: C9 03       ;
CODE_0DB0A1:    BNE CODE_0DB0B0         ; $0D:B0A1: D0 0D       ;
CODE_0DB0A3:    LDY $075F               ; $0D:B0A3: AC 5F 07    ;
CODE_0DB0A6:    LDA $0748               ; $0D:B0A6: AD 48 07    ;
CODE_0DB0A9:    CMP #$10                ; $0D:B0A9: C9 10       ;
CODE_0DB0AB:    BCC CODE_0DB0B0         ; $0D:B0AB: 90 03       ;
CODE_0DB0AD:    INC $075D               ; $0D:B0AD: EE 5D 07    ;
CODE_0DB0B0:    INC $0760               ; $0D:B0B0: EE 60 07    ;
CODE_0DB0B3:    LDA $075F               ; $0D:B0B3: AD 5F 07    ;
CODE_0DB0B6:    CMP #$08                ; $0D:B0B6: C9 08       ;
CODE_0DB0B8:    BNE CODE_0DB0D7         ; $0D:B0B8: D0 1D       ;
CODE_0DB0BA:    LDA $075C               ; $0D:B0BA: AD 5C 07    ;
CODE_0DB0BD:    CMP #$04                ; $0D:B0BD: C9 04       ;
CODE_0DB0BF:    BNE CODE_0DB0D7         ; $0D:B0BF: D0 16       ;
CODE_0DB0C1:    STZ $075C               ; $0D:B0C1: 9C 5C 07    ;
CODE_0DB0C4:    STZ $0760               ; $0D:B0C4: 9C 60 07    ;
CODE_0DB0C7:    INC $075F               ; $0D:B0C7: EE 5F 07    ;
CODE_0DB0CA:    LDA #$FF                ; $0D:B0CA: A9 FF       ;
CODE_0DB0CC:    STA $07FA               ; $0D:B0CC: 8D FA 07    ;
CODE_0DB0CF:    LDA #$01                ; $0D:B0CF: A9 01       ;
CODE_0DB0D1:    STA $07FB               ; $0D:B0D1: 8D FB 07    ;
CODE_0DB0D4:    STA $076A               ; $0D:B0D4: 8D 6A 07    ;
CODE_0DB0D7:    JSL CODE_0EC34C         ; $0D:B0D7: 22 4C C3 0E ;
CODE_0DB0DB:    INC $0757               ; $0D:B0DB: EE 57 07    ;
CODE_0DB0DE:    JSR CODE_0DAF8F         ; $0D:B0DE: 20 8F AF    ;
CODE_0DB0E1:    STA $075B               ; $0D:B0E1: 8D 5B 07    ;
CODE_0DB0E4:    RTS                     ; $0D:B0E4: 60          ;

CODE_0DB0E5:    LDA #$00                ; $0D:B0E5: A9 00       ;
CODE_0DB0E7:    LDY $0754               ; $0D:B0E7: AC 54 07    ;
CODE_0DB0EA:    BNE CODE_0DB0F4         ; $0D:B0EA: D0 08       ;
CODE_0DB0EC:    LDA $28                 ; $0D:B0EC: A5 28       ;
CODE_0DB0EE:    BNE CODE_0DB0F7         ; $0D:B0EE: D0 07       ;
CODE_0DB0F0:    LDA $0B                 ; $0D:B0F0: A5 0B       ;
CODE_0DB0F2:    AND #$04                ; $0D:B0F2: 29 04       ;
CODE_0DB0F4:    STA $0714               ; $0D:B0F4: 8D 14 07    ;
CODE_0DB0F7:    JSR CODE_0DB236         ; $0D:B0F7: 20 36 B2    ;
CODE_0DB0FA:    LDA $070B               ; $0D:B0FA: AD 0B 07    ;
CODE_0DB0FD:    BNE CODE_0DB117         ; $0D:B0FD: D0 18       ;
CODE_0DB0FF:    LDA $28                 ; $0D:B0FF: A5 28       ;
CODE_0DB101:    CMP #$03                ; $0D:B101: C9 03       ;
CODE_0DB103:    BEQ CODE_0DB10A         ; $0D:B103: F0 05       ;
CODE_0DB105:    LDY #$18                ; $0D:B105: A0 18       ;
CODE_0DB107:    STY $0791               ; $0D:B107: 8C 91 07    ;
CODE_0DB10A:    ASL A                   ; $0D:B10A: 0A          ;
CODE_0DB10B:    TAX                     ; $0D:B10B: AA          ;
CODE_0DB10C:    JMP (PNTR_0DB10F,x)     ; $0D:B10C: 7C 0F B1    ;

PNTR_0DB10F:        dw CODE_0DB118
                    dw CODE_0DB13E
                    dw CODE_0DB135
                    dw CODE_0DB197

CODE_0DB117:    RTS                     ; $0D:B117: 60          ;

CODE_0DB118:    JSR CODE_0DB39D         ; $0D:B118: 20 9D B3    ;
CODE_0DB11B:    LDA $0C                 ; $0D:B11B: A5 0C       ;
CODE_0DB11D:    BEQ CODE_0DB122         ; $0D:B11D: F0 03       ;
CODE_0DB11F:    STA $0202               ; $0D:B11F: 8D 02 02    ;
CODE_0DB122:    JSR CODE_0DB3D8         ; $0D:B122: 20 D8 B3    ;
CODE_0DB125:    JSR CODE_0DBEA7         ; $0D:B125: 20 A7 BE    ;
CODE_0DB128:    STA $06FF               ; $0D:B128: 8D FF 06    ;
CODE_0DB12B:    LDA $0F04               ; $0D:B12B: AD 04 0F    ;
CODE_0DB12E:    BEQ CODE_0DB134         ; $0D:B12E: F0 04       ;
CODE_0DB130:    JSL CODE_0FF1FE         ; $0D:B130: 22 FE F1 0F ;
CODE_0DB134:    RTS                     ; $0D:B134: 60          ;

CODE_0DB135:    LDA $070A               ; $0D:B135: AD 0A 07    ;
CODE_0DB138:    STA $0709               ; $0D:B138: 8D 09 07    ;
CODE_0DB13B:    JMP CODE_0DB177         ; $0D:B13B: 4C 77 B1    ;

CODE_0DB13E:    LDY $A0                 ; $0D:B13E: A4 A0       ;
CODE_0DB140:    BPL CODE_0DB156         ; $0D:B140: 10 14       ;
CODE_0DB142:    LDA $0A                 ; $0D:B142: A5 0A       ;
CODE_0DB144:    AND #$80                ; $0D:B144: 29 80       ;
CODE_0DB146:    AND $0D                 ; $0D:B146: 25 0D       ;
CODE_0DB148:    BNE CODE_0DB15C         ; $0D:B148: D0 12       ;
CODE_0DB14A:    LDA $0708               ; $0D:B14A: AD 08 07    ;
CODE_0DB14D:    SEC                     ; $0D:B14D: 38          ;
CODE_0DB14E:    SBC $0237               ; $0D:B14E: ED 37 02    ;
CODE_0DB151:    CMP $0706               ; $0D:B151: CD 06 07    ;
CODE_0DB154:    BCC CODE_0DB15C         ; $0D:B154: 90 06       ;
CODE_0DB156:    LDA $070A               ; $0D:B156: AD 0A 07    ;
CODE_0DB159:    STA $0709               ; $0D:B159: 8D 09 07    ;
CODE_0DB15C:    LDA $0704               ; $0D:B15C: AD 04 07    ;
CODE_0DB15F:    BEQ CODE_0DB177         ; $0D:B15F: F0 16       ;
CODE_0DB161:    JSR CODE_0DB39D         ; $0D:B161: 20 9D B3    ;
CODE_0DB164:    LDA $0237               ; $0D:B164: AD 37 02    ;
CODE_0DB167:    CMP #$14                ; $0D:B167: C9 14       ;
CODE_0DB169:    BCS CODE_0DB170         ; $0D:B169: B0 05       ;
CODE_0DB16B:    LDA #$18                ; $0D:B16B: A9 18       ;
CODE_0DB16D:    STA $0709               ; $0D:B16D: 8D 09 07    ;
CODE_0DB170:    LDA $0C                 ; $0D:B170: A5 0C       ;
CODE_0DB172:    BEQ CODE_0DB177         ; $0D:B172: F0 03       ;
CODE_0DB174:    STA $0202               ; $0D:B174: 8D 02 02    ;
CODE_0DB177:    LDA $0C                 ; $0D:B177: A5 0C       ;
CODE_0DB179:    BEQ CODE_0DB17E         ; $0D:B179: F0 03       ;
CODE_0DB17B:    JSR CODE_0DB3D8         ; $0D:B17B: 20 D8 B3    ;
CODE_0DB17E:    JSR CODE_0DB125         ; $0D:B17E: 20 25 B1    ;
CODE_0DB181:    LDA $0F                 ; $0D:B181: A5 0F       ;
CODE_0DB183:    CMP #$0B                ; $0D:B183: C9 0B       ;
CODE_0DB185:    BNE CODE_0DB18C         ; $0D:B185: D0 05       ;
CODE_0DB187:    LDA #$28                ; $0D:B187: A9 28       ;
CODE_0DB189:    STA $0709               ; $0D:B189: 8D 09 07    ;
CODE_0DB18C:    JMP CODE_0DBEF0         ; $0D:B18C: 4C F0 BE    ;

DATA_0DB18F:        db $0E,$04,$FC,$F2
DATA_0DB193:        db $00,$00,$FF,$FF

CODE_0DB197:    LDA $041C               ; $0D:B197: AD 1C 04    ;
CODE_0DB19A:    CLC                     ; $0D:B19A: 18          ;
CODE_0DB19B:    ADC $043C               ; $0D:B19B: 6D 3C 04    ;
CODE_0DB19E:    STA $041C               ; $0D:B19E: 8D 1C 04    ;
CODE_0DB1A1:    LDY #$00                ; $0D:B1A1: A0 00       ;
CODE_0DB1A3:    LDA $A0                 ; $0D:B1A3: A5 A0       ;
CODE_0DB1A5:    BPL CODE_0DB1A8         ; $0D:B1A5: 10 01       ;
CODE_0DB1A7:    DEY                     ; $0D:B1A7: 88          ;
CODE_0DB1A8:    STY $00                 ; $0D:B1A8: 84 00       ;
CODE_0DB1AA:    ADC $0237               ; $0D:B1AA: 6D 37 02    ;
CODE_0DB1AD:    STA $0237               ; $0D:B1AD: 8D 37 02    ;
CODE_0DB1B0:    LDA $BB                 ; $0D:B1B0: A5 BB       ;
CODE_0DB1B2:    ADC $00                 ; $0D:B1B2: 65 00       ;
CODE_0DB1B4:    STA $BB                 ; $0D:B1B4: 85 BB       ;
CODE_0DB1B6:    LDA $0C                 ; $0D:B1B6: A5 0C       ;
CODE_0DB1B8:    AND $0480               ; $0D:B1B8: 2D 80 04    ;
CODE_0DB1BB:    BEQ CODE_0DB1F5         ; $0D:B1BB: F0 38       ;
CODE_0DB1BD:    LDY $0791               ; $0D:B1BD: AC 91 07    ;
CODE_0DB1C0:    BNE CODE_0DB1F4         ; $0D:B1C0: D0 32       ;
CODE_0DB1C2:    LDY #$18                ; $0D:B1C2: A0 18       ;
CODE_0DB1C4:    STY $0791               ; $0D:B1C4: 8C 91 07    ;
CODE_0DB1C7:    LDX #$00                ; $0D:B1C7: A2 00       ;
CODE_0DB1C9:    LDY $0202               ; $0D:B1C9: AC 02 02    ;
CODE_0DB1CC:    LSR A                   ; $0D:B1CC: 4A          ;
CODE_0DB1CD:    BCS CODE_0DB1D8         ; $0D:B1CD: B0 09       ;
CODE_0DB1CF:    LDA $03AD               ; $0D:B1CF: AD AD 03    ;
CODE_0DB1D2:    CMP #$10                ; $0D:B1D2: C9 10       ;
CODE_0DB1D4:    BCC CODE_0DB1F4         ; $0D:B1D4: 90 1E       ;
CODE_0DB1D6:    INX                     ; $0D:B1D6: E8          ;
CODE_0DB1D7:    INX                     ; $0D:B1D7: E8          ;
CODE_0DB1D8:    DEY                     ; $0D:B1D8: 88          ;
CODE_0DB1D9:    BEQ CODE_0DB1DC         ; $0D:B1D9: F0 01       ;
CODE_0DB1DB:    INX                     ; $0D:B1DB: E8          ;
CODE_0DB1DC:    LDA $0219               ; $0D:B1DC: AD 19 02    ;
CODE_0DB1DF:    CLC                     ; $0D:B1DF: 18          ;
CODE_0DB1E0:    ADC DATA_0DB18F,x       ; $0D:B1E0: 7D 8F B1    ;
CODE_0DB1E3:    STA $0219               ; $0D:B1E3: 8D 19 02    ;
CODE_0DB1E6:    LDA $78                 ; $0D:B1E6: A5 78       ;
CODE_0DB1E8:    ADC DATA_0DB193,x       ; $0D:B1E8: 7D 93 B1    ;
CODE_0DB1EB:    STA $78                 ; $0D:B1EB: 85 78       ;
CODE_0DB1ED:    LDA $0C                 ; $0D:B1ED: A5 0C       ;
CODE_0DB1EF:    EOR #$03                ; $0D:B1EF: 49 03       ;
CODE_0DB1F1:    STA $0202               ; $0D:B1F1: 8D 02 02    ;
CODE_0DB1F4:    RTS                     ; $0D:B1F4: 60          ;

CODE_0DB1F5:    STA $0791               ; $0D:B1F5: 8D 91 07    ;
CODE_0DB1F8:    RTS                     ; $0D:B1F8: 60          ;

DATA_0DB1F9:        db $20,$20,$1E,$28,$28,$0D,$04 ;

DATA_0DB200:        db $70,$70,$60,$90,$90,$0A,$09 ;

DATA_0DB207:        db $E4,$98,$D0 ;

DATA_0DB20A:        db $18,$18,$18,$22,$22,$0D,$04 ;

DATA_0DB211:        db $42,$42,$3E,$5D,$5D,$0A,$09,$B4 ;
                    db $68,$A0 ;

DATA_0DB21B:        db $FC,$FC,$FC,$FB,$FB,$FE,$FF ;

DATA_0DB222:        db $00,$00,$00,$00,$00,$80,$00 ;

DATA_0DB229:        db $D8,$E8,$F0 ;

DATA_0DB22C:        db $28,$18,$10,$0C ;

DATA_0DB230:        db $00,$FF,$01

DATA_0DB233:        db $00,$20,$FF ;

CODE_0DB236:    LDA $28                 ; $0D:B236: A5 28       ;
CODE_0DB238:    CMP #$03                ; $0D:B238: C9 03       ;
CODE_0DB23A:    BNE CODE_0DB26C         ; $0D:B23A: D0 30       ;
CODE_0DB23C:    LDY #$00                ; $0D:B23C: A0 00       ;
CODE_0DB23E:    LDA $0B                 ; $0D:B23E: A5 0B       ;
CODE_0DB240:    AND $0480               ; $0D:B240: 2D 80 04    ;
CODE_0DB243:    BEQ CODE_0DB258         ; $0D:B243: F0 13       ;
CODE_0DB245:    INY                     ; $0D:B245: C8          ;
CODE_0DB246:    AND #$08                ; $0D:B246: 29 08       ;
CODE_0DB248:    BEQ CODE_0DB257         ; $0D:B248: F0 0D       ;
CODE_0DB24A:    LDA $09                 ; $0D:B24A: A5 09       ;
CODE_0DB24C:    AND #$07                ; $0D:B24C: 29 07       ;
CODE_0DB24E:    BNE CODE_0DB258         ; $0D:B24E: D0 08       ;
CODE_0DB250:    LDA #$30                ; $0D:B250: A9 30       ;
CODE_0DB252:    STA $1600               ; $0D:B252: 8D 00 16    ;
CODE_0DB255:    BRA CODE_0DB258         ; $0D:B255: 80 01       ;

CODE_0DB257:    INY                     ; $0D:B257: C8          ;
CODE_0DB258:    LDX DATA_0DB233,y       ; $0D:B258: BE 33 B2    ;
CODE_0DB25B:    STX $043C               ; $0D:B25B: 8E 3C 04    ;
CODE_0DB25E:    LDA #$08                ; $0D:B25E: A9 08       ;
CODE_0DB260:    LDX DATA_0DB230,y       ; $0D:B260: BE 30 B2    ;
CODE_0DB263:    STX $A0                 ; $0D:B263: 86 A0       ;
CODE_0DB265:    BMI CODE_0DB268         ; $0D:B265: 30 01       ;
CODE_0DB267:    LSR A                   ; $0D:B267: 4A          ;
CODE_0DB268:    STA $070C               ; $0D:B268: 8D 0C 07    ;
CODE_0DB26B:    RTS                     ; $0D:B26B: 60          ;

CODE_0DB26C:    LDA $070E               ; $0D:B26C: AD 0E 07    ;
CODE_0DB26F:    BNE CODE_0DB27B         ; $0D:B26F: D0 0A       ;
CODE_0DB271:    LDA $0A                 ; $0D:B271: A5 0A       ;
CODE_0DB273:    AND #$80                ; $0D:B273: 29 80       ;
CODE_0DB275:    BEQ CODE_0DB27B         ; $0D:B275: F0 04       ;
CODE_0DB277:    AND $0D                 ; $0D:B277: 25 0D       ;
CODE_0DB279:    BEQ CODE_0DB27E         ; $0D:B279: F0 03       ;
CODE_0DB27B:    JMP CODE_0DB327         ; $0D:B27B: 4C 27 B3    ;

CODE_0DB27E:    LDA $28                 ; $0D:B27E: A5 28       ;
CODE_0DB280:    BEQ CODE_0DB293         ; $0D:B280: F0 11       ;
CODE_0DB282:    LDA $0704               ; $0D:B282: AD 04 07    ;
CODE_0DB285:    BEQ CODE_0DB27B         ; $0D:B285: F0 F4       ;
CODE_0DB287:    LDA $078A               ; $0D:B287: AD 8A 07    ;
CODE_0DB28A:    BNE CODE_0DB293         ; $0D:B28A: D0 07       ;
CODE_0DB28C:    LDA $A0                 ; $0D:B28C: A5 A0       ;
CODE_0DB28E:    BPL CODE_0DB293         ; $0D:B28E: 10 03       ;
CODE_0DB290:    JMP CODE_0DB327         ; $0D:B290: 4C 27 B3    ;

CODE_0DB293:    LDA #$20                ; $0D:B293: A9 20       ;
CODE_0DB295:    STA $078A               ; $0D:B295: 8D 8A 07    ;
CODE_0DB298:    LDY #$00                ; $0D:B298: A0 00       ;
CODE_0DB29A:    STY $041C               ; $0D:B29A: 8C 1C 04    ;
CODE_0DB29D:    STY $043C               ; $0D:B29D: 8C 3C 04    ;
CODE_0DB2A0:    LDA $BB                 ; $0D:B2A0: A5 BB       ;
CODE_0DB2A2:    STA $0707               ; $0D:B2A2: 8D 07 07    ;
CODE_0DB2A5:    LDA $0237               ; $0D:B2A5: AD 37 02    ;
CODE_0DB2A8:    STA $0708               ; $0D:B2A8: 8D 08 07    ;
CODE_0DB2AB:    LDA #$01                ; $0D:B2AB: A9 01       ;
CODE_0DB2AD:    STA $28                 ; $0D:B2AD: 85 28       ;
CODE_0DB2AF:    LDA $0700               ; $0D:B2AF: AD 00 07    ;
CODE_0DB2B2:    CMP #$09                ; $0D:B2B2: C9 09       ;
CODE_0DB2B4:    BCC CODE_0DB2C6         ; $0D:B2B4: 90 10       ;
CODE_0DB2B6:    INY                     ; $0D:B2B6: C8          ;
CODE_0DB2B7:    CMP #$10                ; $0D:B2B7: C9 10       ;
CODE_0DB2B9:    BCC CODE_0DB2C6         ; $0D:B2B9: 90 0B       ;
CODE_0DB2BB:    INY                     ; $0D:B2BB: C8          ;
CODE_0DB2BC:    CMP #$19                ; $0D:B2BC: C9 19       ;
CODE_0DB2BE:    BCC CODE_0DB2C6         ; $0D:B2BE: 90 06       ;
CODE_0DB2C0:    INY                     ; $0D:B2C0: C8          ;
CODE_0DB2C1:    CMP #$1C                ; $0D:B2C1: C9 1C       ;
CODE_0DB2C3:    BCC CODE_0DB2C6         ; $0D:B2C3: 90 01       ;
CODE_0DB2C5:    INY                     ; $0D:B2C5: C8          ;
CODE_0DB2C6:    LDA #$01                ; $0D:B2C6: A9 01       ;
CODE_0DB2C8:    STA $0706               ; $0D:B2C8: 8D 06 07    ;
CODE_0DB2CB:    LDA $0704               ; $0D:B2CB: AD 04 07    ;
CODE_0DB2CE:    BEQ CODE_0DB2D8         ; $0D:B2CE: F0 08       ;
CODE_0DB2D0:    LDY #$05                ; $0D:B2D0: A0 05       ;
CODE_0DB2D2:    LDA $027D               ; $0D:B2D2: AD 7D 02    ;
CODE_0DB2D5:    BEQ CODE_0DB2D8         ; $0D:B2D5: F0 01       ;
CODE_0DB2D7:    INY                     ; $0D:B2D7: C8          ;
CODE_0DB2D8:    LDA $0753               ; $0D:B2D8: AD 53 07    ;
CODE_0DB2DB:    BNE CODE_0DB2F6         ; $0D:B2DB: D0 19       ;
CODE_0DB2DD:    LDA DATA_0DB1F9,y       ; $0D:B2DD: B9 F9 B1    ;
CODE_0DB2E0:    STA $0709               ; $0D:B2E0: 8D 09 07    ;
CODE_0DB2E3:    LDA DATA_0DB200,y       ; $0D:B2E3: B9 00 B2    ;
CODE_0DB2E6:    STA $070A               ; $0D:B2E6: 8D 0A 07    ;
CODE_0DB2E9:    LDA DATA_0DB222,y       ; $0D:B2E9: B9 22 B2    ;
CODE_0DB2EC:    STA $043C               ; $0D:B2EC: 8D 3C 04    ;
CODE_0DB2EF:    LDA DATA_0DB21B,y       ; $0D:B2EF: B9 1B B2    ;
CODE_0DB2F2:    STA $A0                 ; $0D:B2F2: 85 A0       ;
CODE_0DB2F4:    BRA CODE_0DB30D         ; $0D:B2F4: 80 17       ;

CODE_0DB2F6:    LDA DATA_0DB20A,y       ; $0D:B2F6: B9 0A B2    ;
CODE_0DB2F9:    STA $0709               ; $0D:B2F9: 8D 09 07    ;
CODE_0DB2FC:    LDA DATA_0DB211,y       ; $0D:B2FC: B9 11 B2    ;
CODE_0DB2FF:    STA $070A               ; $0D:B2FF: 8D 0A 07    ;
CODE_0DB302:    LDA DATA_0DB222,y       ; $0D:B302: B9 22 B2    ;
CODE_0DB305:    STA $043C               ; $0D:B305: 8D 3C 04    ;
CODE_0DB308:    LDA DATA_0DB21B,y       ; $0D:B308: B9 1B B2    ;
CODE_0DB30B:    STA $A0                 ; $0D:B30B: 85 A0       ;
CODE_0DB30D:    LDA $0704               ; $0D:B30D: AD 04 07    ;
CODE_0DB310:    BEQ CODE_0DB322         ; $0D:B310: F0 10       ;
CODE_0DB312:    LDA #$0E                ; $0D:B312: A9 0E       ;
CODE_0DB314:    STA $1600               ; $0D:B314: 8D 00 16    ;
CODE_0DB317:    LDA $0237               ; $0D:B317: AD 37 02    ;
CODE_0DB31A:    CMP #$14                ; $0D:B31A: C9 14       ;
CODE_0DB31C:    BCS CODE_0DB327         ; $0D:B31C: B0 09       ;
CODE_0DB31E:    STZ $A0                 ; $0D:B31E: 64 A0       ;
CODE_0DB320:    BRA CODE_0DB327         ; $0D:B320: 80 05       ;

CODE_0DB322:    LDA #$01                ; $0D:B322: A9 01       ;
CODE_0DB324:    TSB $1601               ; $0D:B324: 0C 01 16    ;
CODE_0DB327:    LDY #$00                ; $0D:B327: A0 00       ;
CODE_0DB329:    STY $00                 ; $0D:B329: 84 00       ;
CODE_0DB32B:    LDA $28                 ; $0D:B32B: A5 28       ;
CODE_0DB32D:    BEQ CODE_0DB338         ; $0D:B32D: F0 09       ;
CODE_0DB32F:    LDA $0700               ; $0D:B32F: AD 00 07    ;
CODE_0DB332:    CMP #$19                ; $0D:B332: C9 19       ;
CODE_0DB334:    BCS CODE_0DB368         ; $0D:B334: B0 32       ;
CODE_0DB336:    BCC CODE_0DB34F         ; $0D:B336: 90 17       ;
CODE_0DB338:    INY                     ; $0D:B338: C8          ;
CODE_0DB339:    LDA $5C                 ; $0D:B339: A5 5C       ;
CODE_0DB33B:    BEQ CODE_0DB34F         ; $0D:B33B: F0 12       ;
CODE_0DB33D:    DEY                     ; $0D:B33D: 88          ;
CODE_0DB33E:    LDA $0C                 ; $0D:B33E: A5 0C       ;
CODE_0DB340:    CMP $46                 ; $0D:B340: C5 46       ;
CODE_0DB342:    BNE CODE_0DB34F         ; $0D:B342: D0 0B       ;
CODE_0DB344:    LDA $0A                 ; $0D:B344: A5 0A       ;
CODE_0DB346:    AND #$40                ; $0D:B346: 29 40       ;
CODE_0DB348:    BNE CODE_0DB363         ; $0D:B348: D0 19       ;
CODE_0DB34A:    LDA $078B               ; $0D:B34A: AD 8B 07    ;
CODE_0DB34D:    BNE CODE_0DB368         ; $0D:B34D: D0 19       ;
CODE_0DB34F:    INY                     ; $0D:B34F: C8          ;
CODE_0DB350:    INC $00                 ; $0D:B350: E6 00       ;
CODE_0DB352:    LDA $0703               ; $0D:B352: AD 03 07    ;
CODE_0DB355:    BNE CODE_0DB35E         ; $0D:B355: D0 07       ;
CODE_0DB357:    LDA $0700               ; $0D:B357: AD 00 07    ;
CODE_0DB35A:    CMP #$21                ; $0D:B35A: C9 21       ;
CODE_0DB35C:    BCC CODE_0DB368         ; $0D:B35C: 90 0A       ;
CODE_0DB35E:    INC $00                 ; $0D:B35E: E6 00       ;
CODE_0DB360:    JMP CODE_0DB368         ; $0D:B360: 4C 68 B3    ;

CODE_0DB363:    LDA #$0A                ; $0D:B363: A9 0A       ;
CODE_0DB365:    STA $078B               ; $0D:B365: 8D 8B 07    ;
CODE_0DB368:    LDA DATA_0DB229,y       ; $0D:B368: B9 29 B2    ;
CODE_0DB36B:    STA $045D               ; $0D:B36B: 8D 5D 04    ;
CODE_0DB36E:    LDA $0F                 ; $0D:B36E: A5 0F       ;
CODE_0DB370:    CMP #$07                ; $0D:B370: C9 07       ;
CODE_0DB372:    BNE CODE_0DB376         ; $0D:B372: D0 02       ;
CODE_0DB374:    LDY #$03                ; $0D:B374: A0 03       ;
CODE_0DB376:    LDA DATA_0DB22C,y       ; $0D:B376: B9 2C B2    ;
CODE_0DB379:    STA $0463               ; $0D:B379: 8D 63 04    ;
CODE_0DB37C:    LDY $00                 ; $0D:B37C: A4 00       ;
CODE_0DB37E:    LDA DATA_0DB207,y       ; $0D:B37E: B9 07 B2    ;
CODE_0DB381:    STA $0702               ; $0D:B381: 8D 02 07    ;
CODE_0DB384:    STZ $0701               ; $0D:B384: 9C 01 07    ;
CODE_0DB387:    LDA $0202               ; $0D:B387: AD 02 02    ;
CODE_0DB38A:    CMP $46                 ; $0D:B38A: C5 46       ;
CODE_0DB38C:    BEQ CODE_0DB399         ; $0D:B38C: F0 0B       ;
CODE_0DB38E:    LDA $0EC2               ; $0D:B38E: AD C2 0E    ;
CODE_0DB391:    BNE CODE_0DB399         ; $0D:B391: D0 06       ;
CODE_0DB393:    ASL $0702               ; $0D:B393: 0E 02 07    ;
CODE_0DB396:    ROL $0701               ; $0D:B396: 2E 01 07    ;
CODE_0DB399:    RTS                     ; $0D:B399: 60          ;

DATA_0DB39A:        db $02,$04,$07

CODE_0DB39D:    LDY #$00                ; $0D:B39D: A0 00       ;
CODE_0DB39F:    LDA $0700               ; $0D:B39F: AD 00 07    ;
CODE_0DB3A2:    CMP #$1C                ; $0D:B3A2: C9 1C       ;
CODE_0DB3A4:    BCS CODE_0DB3BB         ; $0D:B3A4: B0 15       ;
CODE_0DB3A6:    INY                     ; $0D:B3A6: C8          ;
CODE_0DB3A7:    CMP #$0E                ; $0D:B3A7: C9 0E       ;
CODE_0DB3A9:    BCS CODE_0DB3AC         ; $0D:B3A9: B0 01       ;
CODE_0DB3AB:    INY                     ; $0D:B3AB: C8          ;
CODE_0DB3AC:    LDA $0FF4               ; $0D:B3AC: AD F4 0F    ;
CODE_0DB3AF:    AND #$7F                ; $0D:B3AF: 29 7F       ;
CODE_0DB3B1:    BEQ CODE_0DB3D1         ; $0D:B3B1: F0 1E       ;
CODE_0DB3B3:    AND #$03                ; $0D:B3B3: 29 03       ;
CODE_0DB3B5:    CMP $46                 ; $0D:B3B5: C5 46       ;
CODE_0DB3B7:    BNE CODE_0DB3C0         ; $0D:B3B7: D0 07       ;
CODE_0DB3B9:    LDA #$00                ; $0D:B3B9: A9 00       ;
CODE_0DB3BB:    STA $0703               ; $0D:B3BB: 8D 03 07    ;
CODE_0DB3BE:    BRA CODE_0DB3D1         ; $0D:B3BE: 80 11       ;

CODE_0DB3C0:    LDA $0700               ; $0D:B3C0: AD 00 07    ;
CODE_0DB3C3:    CMP #$0B                ; $0D:B3C3: C9 0B       ;
CODE_0DB3C5:    BCS CODE_0DB3D1         ; $0D:B3C5: B0 0A       ;
CODE_0DB3C7:    LDA $0202               ; $0D:B3C7: AD 02 02    ;
CODE_0DB3CA:    STA $46                 ; $0D:B3CA: 85 46       ;
CODE_0DB3CC:    STZ $5D                 ; $0D:B3CC: 64 5D       ;
CODE_0DB3CE:    STZ $0705               ; $0D:B3CE: 9C 05 07    ;
CODE_0DB3D1:    LDA DATA_0DB39A,y       ; $0D:B3D1: B9 9A B3    ;
CODE_0DB3D4:    STA $070C               ; $0D:B3D4: 8D 0C 07    ;
CODE_0DB3D7:    RTS                     ; $0D:B3D7: 60          ;

CODE_0DB3D8:    AND $0480               ; $0D:B3D8: 2D 80 04    ;
CODE_0DB3DB:    CMP #$00                ; $0D:B3DB: C9 00       ;
CODE_0DB3DD:    BNE CODE_0DB3E7         ; $0D:B3DD: D0 08       ;
CODE_0DB3DF:    LDA $5D                 ; $0D:B3DF: A5 5D       ;
CODE_0DB3E1:    BEQ CODE_0DB42B         ; $0D:B3E1: F0 48       ;
CODE_0DB3E3:    BPL CODE_0DB407         ; $0D:B3E3: 10 22       ;
CODE_0DB3E5:    BMI CODE_0DB3EA         ; $0D:B3E5: 30 03       ;
CODE_0DB3E7:    LSR A                   ; $0D:B3E7: 4A          ;
CODE_0DB3E8:    BCC CODE_0DB407         ; $0D:B3E8: 90 1D       ;
CODE_0DB3EA:    LDA $0705               ; $0D:B3EA: AD 05 07    ;
CODE_0DB3ED:    CLC                     ; $0D:B3ED: 18          ;
CODE_0DB3EE:    ADC $0702               ; $0D:B3EE: 6D 02 07    ;
CODE_0DB3F1:    STA $0705               ; $0D:B3F1: 8D 05 07    ;
CODE_0DB3F4:    LDA $5D                 ; $0D:B3F4: A5 5D       ;
CODE_0DB3F6:    ADC $0701               ; $0D:B3F6: 6D 01 07    ;
CODE_0DB3F9:    STA $5D                 ; $0D:B3F9: 85 5D       ;
CODE_0DB3FB:    CMP $0463               ; $0D:B3FB: CD 63 04    ;
CODE_0DB3FE:    BMI CODE_0DB422         ; $0D:B3FE: 30 22       ;
CODE_0DB400:    LDA $0463               ; $0D:B400: AD 63 04    ;
CODE_0DB403:    STA $5D                 ; $0D:B403: 85 5D       ;
CODE_0DB405:    BRA CODE_0DB42B         ; $0D:B405: 80 24       ;

CODE_0DB407:    LDA $0705               ; $0D:B407: AD 05 07    ;
CODE_0DB40A:    SEC                     ; $0D:B40A: 38          ;
CODE_0DB40B:    SBC $0702               ; $0D:B40B: ED 02 07    ;
CODE_0DB40E:    STA $0705               ; $0D:B40E: 8D 05 07    ;
CODE_0DB411:    LDA $5D                 ; $0D:B411: A5 5D       ;
CODE_0DB413:    SBC $0701               ; $0D:B413: ED 01 07    ;
CODE_0DB416:    STA $5D                 ; $0D:B416: 85 5D       ;
CODE_0DB418:    CMP $045D               ; $0D:B418: CD 5D 04    ;
CODE_0DB41B:    BPL CODE_0DB422         ; $0D:B41B: 10 05       ;
CODE_0DB41D:    LDA $045D               ; $0D:B41D: AD 5D 04    ;
CODE_0DB420:    STA $5D                 ; $0D:B420: 85 5D       ;
CODE_0DB422:    CMP #$00                ; $0D:B422: C9 00       ;
CODE_0DB424:    BPL CODE_0DB42B         ; $0D:B424: 10 05       ;
CODE_0DB426:    EOR #$FF                ; $0D:B426: 49 FF       ;
CODE_0DB428:    CLC                     ; $0D:B428: 18          ;
CODE_0DB429:    ADC #$01                ; $0D:B429: 69 01       ;
CODE_0DB42B:    STA $0700               ; $0D:B42B: 8D 00 07    ;
CODE_0DB42E:    RTS                     ; $0D:B42E: 60          ;

CODE_0DB42F:    LDA $0756               ; $0D:B42F: AD 56 07    ;
CODE_0DB432:    CMP #$02                ; $0D:B432: C9 02       ;
CODE_0DB434:    BCC CODE_0DB47A         ; $0D:B434: 90 44       ;
CODE_0DB436:    LDA $0A                 ; $0D:B436: A5 0A       ;
CODE_0DB438:    AND #$40                ; $0D:B438: 29 40       ;
CODE_0DB43A:    BEQ CODE_0DB470         ; $0D:B43A: F0 34       ;
CODE_0DB43C:    AND $0D                 ; $0D:B43C: 25 0D       ;
CODE_0DB43E:    BNE CODE_0DB470         ; $0D:B43E: D0 30       ;
CODE_0DB440:    LDA $06CE               ; $0D:B440: AD CE 06    ;
CODE_0DB443:    AND #$01                ; $0D:B443: 29 01       ;
CODE_0DB445:    TAX                     ; $0D:B445: AA          ;
CODE_0DB446:    LDA $33,x               ; $0D:B446: B5 33       ;
CODE_0DB448:    BNE CODE_0DB470         ; $0D:B448: D0 26       ;
CODE_0DB44A:    LDY $BB                 ; $0D:B44A: A4 BB       ;
CODE_0DB44C:    DEY                     ; $0D:B44C: 88          ;
CODE_0DB44D:    BNE CODE_0DB470         ; $0D:B44D: D0 21       ;
CODE_0DB44F:    LDA $0714               ; $0D:B44F: AD 14 07    ;
CODE_0DB452:    BNE CODE_0DB470         ; $0D:B452: D0 1C       ;
CODE_0DB454:    LDA $28                 ; $0D:B454: A5 28       ;
CODE_0DB456:    CMP #$03                ; $0D:B456: C9 03       ;
CODE_0DB458:    BEQ CODE_0DB470         ; $0D:B458: F0 16       ;
CODE_0DB45A:    LDA #$06                ; $0D:B45A: A9 06       ;
CODE_0DB45C:    STA $1603               ; $0D:B45C: 8D 03 16    ;
CODE_0DB45F:    LDA #$02                ; $0D:B45F: A9 02       ;
CODE_0DB461:    STA $33,x               ; $0D:B461: 95 33       ;
CODE_0DB463:    LDY $070C               ; $0D:B463: AC 0C 07    ;
CODE_0DB466:    STY $0711               ; $0D:B466: 8C 11 07    ;
CODE_0DB469:    DEY                     ; $0D:B469: 88          ;
CODE_0DB46A:    STY $0789               ; $0D:B46A: 8C 89 07    ;
CODE_0DB46D:    INC $06CE               ; $0D:B46D: EE CE 06    ;
CODE_0DB470:    LDX #$00                ; $0D:B470: A2 00       ;
CODE_0DB472:    JSR CODE_0DB495         ; $0D:B472: 20 95 B4    ;
CODE_0DB475:    LDX #$01                ; $0D:B475: A2 01       ;
CODE_0DB477:    JSR CODE_0DB495         ; $0D:B477: 20 95 B4    ;
CODE_0DB47A:    LDA $5C                 ; $0D:B47A: A5 5C       ;
CODE_0DB47C:    BNE CODE_0DB492         ; $0D:B47C: D0 14       ;
CODE_0DB47E:    LDX #$02                ; $0D:B47E: A2 02       ;
CODE_0DB480:    STX $9E                 ; $0D:B480: 86 9E       ;
CODE_0DB482:    JSR CODE_0DB52F         ; $0D:B482: 20 2F B5    ;
CODE_0DB485:    JSR CODE_0DFD30         ; $0D:B485: 20 30 FD    ;
CODE_0DB488:    JSR CODE_0DFDC3         ; $0D:B488: 20 C3 FD    ;
CODE_0DB48B:    JSL CODE_0FEC20         ; $0D:B48B: 22 20 EC 0F ;
CODE_0DB48F:    DEX                     ; $0D:B48F: CA          ;
CODE_0DB490:    BPL CODE_0DB480         ; $0D:B490: 10 EE       ;
CODE_0DB492:    RTS                     ; $0D:B492: 60          ;

DATA_0DB493:        db $40,$C0

CODE_0DB495:    STX $9E                 ; $0D:B495: 86 9E       ;
CODE_0DB497:    LDA $33,x               ; $0D:B497: B5 33       ;
CODE_0DB499:    ASL A                   ; $0D:B499: 0A          ;
CODE_0DB49A:    BCC CODE_0DB49F         ; $0D:B49A: 90 03       ;
CODE_0DB49C:    JMP CODE_0DB529         ; $0D:B49C: 4C 29 B5    ;

CODE_0DB49F:    LDY $33,x               ; $0D:B49F: B4 33       ;
CODE_0DB4A1:    BNE CODE_0DB4A6         ; $0D:B4A1: D0 03       ;
CODE_0DB4A3:    JMP CODE_0DB528         ; $0D:B4A3: 4C 28 B5    ;

CODE_0DB4A6:    DEY                     ; $0D:B4A6: 88          ;
CODE_0DB4A7:    BEQ CODE_0DB4D5         ; $0D:B4A7: F0 2C       ;
CODE_0DB4A9:    LDA $0219               ; $0D:B4A9: AD 19 02    ;
CODE_0DB4AC:    ADC #$04                ; $0D:B4AC: 69 04       ;
CODE_0DB4AE:    STA $0224,x             ; $0D:B4AE: 9D 24 02    ;
CODE_0DB4B1:    LDA $78                 ; $0D:B4B1: A5 78       ;
CODE_0DB4B3:    ADC #$00                ; $0D:B4B3: 69 00       ;
CODE_0DB4B5:    STA $83,x               ; $0D:B4B5: 95 83       ;
CODE_0DB4B7:    LDA $0237               ; $0D:B4B7: AD 37 02    ;
CODE_0DB4BA:    STA $0242,x             ; $0D:B4BA: 9D 42 02    ;
CODE_0DB4BD:    LDA #$01                ; $0D:B4BD: A9 01       ;
CODE_0DB4BF:    STA $C6,x               ; $0D:B4BF: 95 C6       ;
CODE_0DB4C1:    LDY $0202               ; $0D:B4C1: AC 02 02    ;
CODE_0DB4C4:    DEY                     ; $0D:B4C4: 88          ;
CODE_0DB4C5:    LDA DATA_0DB493,y       ; $0D:B4C5: B9 93 B4    ;
CODE_0DB4C8:    STA $68,x               ; $0D:B4C8: 95 68       ;
CODE_0DB4CA:    LDA #$04                ; $0D:B4CA: A9 04       ;
CODE_0DB4CC:    STA $AB,x               ; $0D:B4CC: 95 AB       ;
CODE_0DB4CE:    LDA #$07                ; $0D:B4CE: A9 07       ;
CODE_0DB4D0:    STA $049A,x             ; $0D:B4D0: 9D 9A 04    ;
CODE_0DB4D3:    DEC $33,x               ; $0D:B4D3: D6 33       ;
CODE_0DB4D5:    TXA                     ; $0D:B4D5: 8A          ;
CODE_0DB4D6:    CLC                     ; $0D:B4D6: 18          ;
CODE_0DB4D7:    ADC #$0B                ; $0D:B4D7: 69 0B       ;
CODE_0DB4D9:    TAX                     ; $0D:B4D9: AA          ;
CODE_0DB4DA:    LDA #$50                ; $0D:B4DA: A9 50       ;
CODE_0DB4DC:    STA $00                 ; $0D:B4DC: 85 00       ;
CODE_0DB4DE:    LDA #$03                ; $0D:B4DE: A9 03       ;
CODE_0DB4E0:    STA $02                 ; $0D:B4E0: 85 02       ;
CODE_0DB4E2:    LDA #$00                ; $0D:B4E2: A9 00       ;
CODE_0DB4E4:    JSR CODE_0DBF7E         ; $0D:B4E4: 20 7E BF    ;
CODE_0DB4E7:    JSR CODE_0DBEAD         ; $0D:B4E7: 20 AD BE    ;
CODE_0DB4EA:    LDX $9E                 ; $0D:B4EA: A6 9E       ;
CODE_0DB4EC:    JSR CODE_0DFD39         ; $0D:B4EC: 20 39 FD    ;
CODE_0DB4EF:    JSR CODE_0DFDB9         ; $0D:B4EF: 20 B9 FD    ;
CODE_0DB4F2:    JSR CODE_0DE932         ; $0D:B4F2: 20 32 E9    ;
CODE_0DB4F5:    JSR CODE_0DE8C2         ; $0D:B4F5: 20 C2 E8    ;
CODE_0DB4F8:    LDA $03D2               ; $0D:B4F8: AD D2 03    ;
CODE_0DB4FB:    AND #$FC                ; $0D:B4FB: 29 FC       ;
CODE_0DB4FD:    BEQ CODE_0DB51E         ; $0D:B4FD: F0 1F       ;
CODE_0DB4FF:    AND #$F0                ; $0D:B4FF: 29 F0       ;
CODE_0DB501:    BNE CODE_0DB524         ; $0D:B501: D0 21       ;
CODE_0DB503:    LDA $0068,x             ; $0D:B503: BD 68 00    ;
CODE_0DB506:    BMI CODE_0DB513         ; $0D:B506: 30 0B       ;
CODE_0DB508:    LDA $03D2               ; $0D:B508: AD D2 03    ;
CODE_0DB50B:    AND #$0F                ; $0D:B50B: 29 0F       ;
CODE_0DB50D:    CMP #$0F                ; $0D:B50D: C9 0F       ;
CODE_0DB50F:    BEQ CODE_0DB524         ; $0D:B50F: F0 13       ;
CODE_0DB511:    BRA CODE_0DB521         ; $0D:B511: 80 0E       ;

CODE_0DB513:    LDA $03D2               ; $0D:B513: AD D2 03    ;
CODE_0DB516:    AND #$0C                ; $0D:B516: 29 0C       ;
CODE_0DB518:    CMP #$0C                ; $0D:B518: C9 0C       ;
CODE_0DB51A:    BEQ CODE_0DB524         ; $0D:B51A: F0 08       ;
CODE_0DB51C:    BRA CODE_0DB521         ; $0D:B51C: 80 03       ;

CODE_0DB51E:    JSR CODE_0DDB80         ; $0D:B51E: 20 80 DB    ;
CODE_0DB521:    JMP CODE_0DF433         ; $0D:B521: 4C 33 F4    ;

CODE_0DB524:    LDA #$00                ; $0D:B524: A9 00       ;
CODE_0DB526:    STA $33,x               ; $0D:B526: 95 33       ;
CODE_0DB528:    RTS                     ; $0D:B528: 60          ;

CODE_0DB529:    JSR CODE_0DFD39         ; $0D:B529: 20 39 FD    ;
CODE_0DB52C:    JMP CODE_0DF498         ; $0D:B52C: 4C 98 F4    ;

CODE_0DB52F:    LDA $07B8,x             ; $0D:B52F: BD B8 07    ;
CODE_0DB532:    AND #$01                ; $0D:B532: 29 01       ;
CODE_0DB534:    STA $07                 ; $0D:B534: 85 07       ;
CODE_0DB536:    LDA $0251,x             ; $0D:B536: BD 51 02    ;
CODE_0DB539:    CMP #$F8                ; $0D:B539: C9 F8       ;
CODE_0DB53B:    BNE CODE_0DB56E         ; $0D:B53B: D0 31       ;
CODE_0DB53D:    LDA $079E               ; $0D:B53D: AD 9E 07    ;
CODE_0DB540:    BNE CODE_0DB588         ; $0D:B540: D0 46       ;
CODE_0DB542:    LDY #$00                ; $0D:B542: A0 00       ;
CODE_0DB544:    LDA $0202               ; $0D:B544: AD 02 02    ;
CODE_0DB547:    LSR A                   ; $0D:B547: 4A          ;
CODE_0DB548:    BCC CODE_0DB54C         ; $0D:B548: 90 02       ;
CODE_0DB54A:    LDY #$08                ; $0D:B54A: A0 08       ;
CODE_0DB54C:    TYA                     ; $0D:B54C: 98          ;
CODE_0DB54D:    ADC $0219               ; $0D:B54D: 6D 19 02    ;
CODE_0DB550:    STA $0233,x             ; $0D:B550: 9D 33 02    ;
CODE_0DB553:    LDA $78                 ; $0D:B553: A5 78       ;
CODE_0DB555:    ADC #$00                ; $0D:B555: 69 00       ;
CODE_0DB557:    STA $92,x               ; $0D:B557: 95 92       ;
CODE_0DB559:    LDA $0237               ; $0D:B559: AD 37 02    ;
CODE_0DB55C:    CLC                     ; $0D:B55C: 18          ;
CODE_0DB55D:    ADC #$08                ; $0D:B55D: 69 08       ;
CODE_0DB55F:    STA $0251,x             ; $0D:B55F: 9D 51 02    ;
CODE_0DB562:    LDA #$01                ; $0D:B562: A9 01       ;
CODE_0DB564:    STA $D5,x               ; $0D:B564: 95 D5       ;
CODE_0DB566:    LDY $07                 ; $0D:B566: A4 07       ;
CODE_0DB568:    LDA DATA_0DB58B,y       ; $0D:B568: B9 8B B5    ;
CODE_0DB56B:    STA $079E               ; $0D:B56B: 8D 9E 07    ;
CODE_0DB56E:    LDY $07                 ; $0D:B56E: A4 07       ;
CODE_0DB570:    LDA $0436,x             ; $0D:B570: BD 36 04    ;
CODE_0DB573:    SEC                     ; $0D:B573: 38          ;
CODE_0DB574:    SBC DATA_0DB589,y       ; $0D:B574: F9 89 B5    ;
CODE_0DB577:    STA $0436,x             ; $0D:B577: 9D 36 04    ;
CODE_0DB57A:    LDA $0251,x             ; $0D:B57A: BD 51 02    ;
CODE_0DB57D:    SBC #$00                ; $0D:B57D: E9 00       ;
CODE_0DB57F:    CMP #$20                ; $0D:B57F: C9 20       ;
CODE_0DB581:    BCS CODE_0DB585         ; $0D:B581: B0 02       ;
CODE_0DB583:    LDA #$F8                ; $0D:B583: A9 F8       ;
CODE_0DB585:    STA $0251,x             ; $0D:B585: 9D 51 02    ;
CODE_0DB588:    RTS                     ; $0D:B588: 60          ;

DATA_0DB589:        db $FF,$50

DATA_0DB58B:        db $40,$20

CODE_0DB58D:    LDA $0770               ; $0D:B58D: AD 70 07    ;
CODE_0DB590:    BEQ CODE_0DB5E7         ; $0D:B590: F0 55       ;
CODE_0DB592:    LDA $0F                 ; $0D:B592: A5 0F       ;
CODE_0DB594:    CMP #$08                ; $0D:B594: C9 08       ;
CODE_0DB596:    BCC CODE_0DB5E7         ; $0D:B596: 90 4F       ;
CODE_0DB598:    CMP #$0B                ; $0D:B598: C9 0B       ;
CODE_0DB59A:    BEQ CODE_0DB5E7         ; $0D:B59A: F0 4B       ;
CODE_0DB59C:    LDA $BB                 ; $0D:B59C: A5 BB       ;
CODE_0DB59E:    CMP #$02                ; $0D:B59E: C9 02       ;
CODE_0DB5A0:    BPL CODE_0DB5E7         ; $0D:B5A0: 10 45       ;
CODE_0DB5A2:    LDA $078F               ; $0D:B5A2: AD 8F 07    ;
CODE_0DB5A5:    BNE CODE_0DB5E7         ; $0D:B5A5: D0 40       ;
CODE_0DB5A7:    LDA $07E9               ; $0D:B5A7: AD E9 07    ;
CODE_0DB5AA:    ORA $07EA               ; $0D:B5AA: 0D EA 07    ;
CODE_0DB5AD:    ORA $07EB               ; $0D:B5AD: 0D EB 07    ;
CODE_0DB5B0:    BEQ CODE_0DB5DE         ; $0D:B5B0: F0 2C       ;
CODE_0DB5B2:    LDY $07E9               ; $0D:B5B2: AC E9 07    ;
CODE_0DB5B5:    DEY                     ; $0D:B5B5: 88          ;
CODE_0DB5B6:    BNE CODE_0DB5C5         ; $0D:B5B6: D0 0D       ;
CODE_0DB5B8:    LDA $07EA               ; $0D:B5B8: AD EA 07    ;
CODE_0DB5BB:    ORA $07EB               ; $0D:B5BB: 0D EB 07    ;
CODE_0DB5BE:    BNE CODE_0DB5C5         ; $0D:B5BE: D0 05       ;
CODE_0DB5C0:    LDA #$FF                ; $0D:B5C0: A9 FF       ;
CODE_0DB5C2:    STA $1600               ; $0D:B5C2: 8D 00 16    ;
CODE_0DB5C5:    LDA #$18                ; $0D:B5C5: A9 18       ;
CODE_0DB5C7:    STA $078F               ; $0D:B5C7: 8D 8F 07    ;
CODE_0DB5CA:    LDY #$23                ; $0D:B5CA: A0 23       ;
CODE_0DB5CC:    LDA #$FF                ; $0D:B5CC: A9 FF       ;
CODE_0DB5CE:    STA $014A               ; $0D:B5CE: 8D 4A 01    ;
CODE_0DB5D1:    LDA $0E73               ; $0D:B5D1: AD 73 0E    ;
CODE_0DB5D4:    BNE CODE_0DB5D9         ; $0D:B5D4: D0 03       ;
CODE_0DB5D6:    JSR CODE_0D98AA         ; $0D:B5D6: 20 AA 98    ;
CODE_0DB5D9:    LDA #$A4                ; $0D:B5D9: A9 A4       ;
CODE_0DB5DB:    JMP CODE_0D983D         ; $0D:B5DB: 4C 3D 98    ;

CODE_0DB5DE:    STA $0756               ; $0D:B5DE: 8D 56 07    ;
CODE_0DB5E1:    JSR CODE_0DDE8A         ; $0D:B5E1: 20 8A DE    ;
CODE_0DB5E4:    INC $0759               ; $0D:B5E4: EE 59 07    ;
CODE_0DB5E7:    RTS                     ; $0D:B5E7: 60          ;

CODE_0DB5E8:    LDA $0723               ; $0D:B5E8: AD 23 07    ;
CODE_0DB5EB:    BEQ CODE_0DB5E7         ; $0D:B5EB: F0 FA       ;
CODE_0DB5ED:    LDA $0237               ; $0D:B5ED: AD 37 02    ;
CODE_0DB5F0:    AND $BB                 ; $0D:B5F0: 25 BB       ;
CODE_0DB5F2:    BNE CODE_0DB5E7         ; $0D:B5F2: D0 F3       ;
CODE_0DB5F4:    STA $0723               ; $0D:B5F4: 8D 23 07    ;
CODE_0DB5F7:    JMP CODE_0DCCEA         ; $0D:B5F7: 4C EA CC    ;

CODE_0DB5FA:    LDA $5C                 ; $0D:B5FA: A5 5C       ;
CODE_0DB5FC:    BNE CODE_0DB63B         ; $0D:B5FC: D0 3D       ;
CODE_0DB5FE:    STA $027D               ; $0D:B5FE: 8D 7D 02    ;
CODE_0DB601:    JSL CODE_048378         ; $0D:B601: 22 78 83 04 ;
CODE_0DB605:    LDA $0747               ; $0D:B605: AD 47 07    ;
CODE_0DB608:    BNE CODE_0DB63B         ; $0D:B608: D0 31       ;
CODE_0DB60A:    LDY #$04                ; $0D:B60A: A0 04       ;
CODE_0DB60C:    LDA $0271,y             ; $0D:B60C: B9 71 02    ;
CODE_0DB60F:    CLC                     ; $0D:B60F: 18          ;
CODE_0DB610:    ADC $0277,y             ; $0D:B610: 79 77 02    ;
CODE_0DB613:    STA $02                 ; $0D:B613: 85 02       ;
CODE_0DB615:    LDA $026B,y             ; $0D:B615: B9 6B 02    ;
CODE_0DB618:    BEQ CODE_0DB638         ; $0D:B618: F0 1E       ;
CODE_0DB61A:    ADC #$00                ; $0D:B61A: 69 00       ;
CODE_0DB61C:    STA $01                 ; $0D:B61C: 85 01       ;
CODE_0DB61E:    LDA $0219               ; $0D:B61E: AD 19 02    ;
CODE_0DB621:    SEC                     ; $0D:B621: 38          ;
CODE_0DB622:    SBC $0271,y             ; $0D:B622: F9 71 02    ;
CODE_0DB625:    LDA $78                 ; $0D:B625: A5 78       ;
CODE_0DB627:    SBC $026B,y             ; $0D:B627: F9 6B 02    ;
CODE_0DB62A:    BMI CODE_0DB638         ; $0D:B62A: 30 0C       ;
CODE_0DB62C:    LDA $02                 ; $0D:B62C: A5 02       ;
CODE_0DB62E:    SEC                     ; $0D:B62E: 38          ;
CODE_0DB62F:    SBC $0219               ; $0D:B62F: ED 19 02    ;
CODE_0DB632:    LDA $01                 ; $0D:B632: A5 01       ;
CODE_0DB634:    SBC $78                 ; $0D:B634: E5 78       ;
CODE_0DB636:    BPL CODE_0DB63C         ; $0D:B636: 10 04       ;
CODE_0DB638:    DEY                     ; $0D:B638: 88          ;
CODE_0DB639:    BPL CODE_0DB60C         ; $0D:B639: 10 D1       ;
CODE_0DB63B:    RTS                     ; $0D:B63B: 60          ;

CODE_0DB63C:    LDA $0277,y             ; $0D:B63C: B9 77 02    ;
CODE_0DB63F:    LSR A                   ; $0D:B63F: 4A          ;
CODE_0DB640:    STA $00                 ; $0D:B640: 85 00       ;
CODE_0DB642:    LDA $0271,y             ; $0D:B642: B9 71 02    ;
CODE_0DB645:    CLC                     ; $0D:B645: 18          ;
CODE_0DB646:    ADC $00                 ; $0D:B646: 65 00       ;
CODE_0DB648:    STA $01                 ; $0D:B648: 85 01       ;
CODE_0DB64A:    LDA $026B,y             ; $0D:B64A: B9 6B 02    ;
CODE_0DB64D:    ADC #$00                ; $0D:B64D: 69 00       ;
CODE_0DB64F:    STA $00                 ; $0D:B64F: 85 00       ;
CODE_0DB651:    LDA $09                 ; $0D:B651: A5 09       ;
CODE_0DB653:    LSR A                   ; $0D:B653: 4A          ;
CODE_0DB654:    BCC CODE_0DB687         ; $0D:B654: 90 31       ;
CODE_0DB656:    LDA $01                 ; $0D:B656: A5 01       ;
CODE_0DB658:    SEC                     ; $0D:B658: 38          ;
CODE_0DB659:    SBC $0219               ; $0D:B659: ED 19 02    ;
CODE_0DB65C:    LDA $00                 ; $0D:B65C: A5 00       ;
CODE_0DB65E:    SBC $78                 ; $0D:B65E: E5 78       ;
CODE_0DB660:    BPL CODE_0DB672         ; $0D:B660: 10 10       ;
CODE_0DB662:    LDA $0219               ; $0D:B662: AD 19 02    ;
CODE_0DB665:    SEC                     ; $0D:B665: 38          ;
CODE_0DB666:    SBC #$01                ; $0D:B666: E9 01       ;
CODE_0DB668:    STA $0219               ; $0D:B668: 8D 19 02    ;
CODE_0DB66B:    LDA $78                 ; $0D:B66B: A5 78       ;
CODE_0DB66D:    SBC #$00                ; $0D:B66D: E9 00       ;
CODE_0DB66F:    JMP CODE_0DB685         ; $0D:B66F: 4C 85 B6    ;

CODE_0DB672:    LDA $0480               ; $0D:B672: AD 80 04    ;
CODE_0DB675:    LSR A                   ; $0D:B675: 4A          ;
CODE_0DB676:    BCC CODE_0DB687         ; $0D:B676: 90 0F       ;
CODE_0DB678:    LDA $0219               ; $0D:B678: AD 19 02    ;
CODE_0DB67B:    CLC                     ; $0D:B67B: 18          ;
CODE_0DB67C:    ADC #$01                ; $0D:B67C: 69 01       ;
CODE_0DB67E:    STA $0219               ; $0D:B67E: 8D 19 02    ;
CODE_0DB681:    LDA $78                 ; $0D:B681: A5 78       ;
CODE_0DB683:    ADC #$00                ; $0D:B683: 69 00       ;
CODE_0DB685:    STA $78                 ; $0D:B685: 85 78       ;
CODE_0DB687:    LDA #$10                ; $0D:B687: A9 10       ;
CODE_0DB689:    STA $00                 ; $0D:B689: 85 00       ;
CODE_0DB68B:    LDA #$01                ; $0D:B68B: A9 01       ;
CODE_0DB68D:    STA $027D               ; $0D:B68D: 8D 7D 02    ;
CODE_0DB690:    STA $02                 ; $0D:B690: 85 02       ;
CODE_0DB692:    LSR A                   ; $0D:B692: 4A          ;
CODE_0DB693:    TAX                     ; $0D:B693: AA          ;
CODE_0DB694:    JMP CODE_0DBF7E         ; $0D:B694: 4C 7E BF    ;

DATA_0DB697:        db $05,$02,$08,$04,$01

DATA_0DB69C:        db $03,$03,$04,$04,$04

CODE_0DB6A1:    LDX #$05                ; $0D:B6A1: A2 05       ;
CODE_0DB6A3:    STX $9E                 ; $0D:B6A3: 86 9E       ;
CODE_0DB6A5:    LDA $1C,x               ; $0D:B6A5: B5 1C       ;
CODE_0DB6A7:    CMP #$30                ; $0D:B6A7: C9 30       ;
CODE_0DB6A9:    BEQ CODE_0DB6AC         ; $0D:B6A9: F0 01       ;
CODE_0DB6AB:    RTS                     ; $0D:B6AB: 60          ;

CODE_0DB6AC:    LDA $0F                 ; $0D:B6AC: A5 0F       ;
CODE_0DB6AE:    CMP #$04                ; $0D:B6AE: C9 04       ;
CODE_0DB6B0:    BNE CODE_0DB6E7         ; $0D:B6B0: D0 35       ;
CODE_0DB6B2:    LDA $28                 ; $0D:B6B2: A5 28       ;
CODE_0DB6B4:    CMP #$03                ; $0D:B6B4: C9 03       ;
CODE_0DB6B6:    BNE CODE_0DB6E7         ; $0D:B6B6: D0 2F       ;
CODE_0DB6B8:    LDA $0238,x             ; $0D:B6B8: BD 38 02    ;
CODE_0DB6BB:    CMP #$AA                ; $0D:B6BB: C9 AA       ;
CODE_0DB6BD:    BCS CODE_0DB6EA         ; $0D:B6BD: B0 2B       ;
CODE_0DB6BF:    LDA $0237               ; $0D:B6BF: AD 37 02    ;
CODE_0DB6C2:    CMP #$A2                ; $0D:B6C2: C9 A2       ;
CODE_0DB6C4:    BCS CODE_0DB6EA         ; $0D:B6C4: B0 24       ;
CODE_0DB6C6:    LDA $041D,x             ; $0D:B6C6: BD 1D 04    ;
CODE_0DB6C9:    ADC #$FF                ; $0D:B6C9: 69 FF       ;
CODE_0DB6CB:    STA $041D,x             ; $0D:B6CB: 9D 1D 04    ;
CODE_0DB6CE:    LDA $0238,x             ; $0D:B6CE: BD 38 02    ;
CODE_0DB6D1:    ADC #$01                ; $0D:B6D1: 69 01       ;
CODE_0DB6D3:    STA $0238,x             ; $0D:B6D3: 9D 38 02    ;
CODE_0DB6D6:    LDA $010E               ; $0D:B6D6: AD 0E 01    ;
CODE_0DB6D9:    SEC                     ; $0D:B6D9: 38          ;
CODE_0DB6DA:    SBC #$FF                ; $0D:B6DA: E9 FF       ;
CODE_0DB6DC:    STA $010E               ; $0D:B6DC: 8D 0E 01    ;
CODE_0DB6DF:    LDA $010D               ; $0D:B6DF: AD 0D 01    ;
CODE_0DB6E2:    SBC #$01                ; $0D:B6E2: E9 01       ;
CODE_0DB6E4:    STA $010D               ; $0D:B6E4: 8D 0D 01    ;
CODE_0DB6E7:    JMP CODE_0DB735         ; $0D:B6E7: 4C 35 B7    ;

CODE_0DB6EA:    LDY $010F               ; $0D:B6EA: AC 0F 01    ;
CODE_0DB6ED:    CPY #$05                ; $0D:B6ED: C0 05       ;
CODE_0DB6EF:    BNE CODE_0DB6FD         ; $0D:B6EF: D0 0C       ;
CODE_0DB6F1:    JSL CODE_048596         ; $0D:B6F1: 22 96 85 04 ;Increase lives by one
CODE_0DB6F5:    LDA #$05                ; $0D:B6F5: A9 05       ;
CODE_0DB6F7:    STA $1603               ; $0D:B6F7: 8D 03 16    ;
CODE_0DB6FA:    JMP CODE_0DB709         ; $0D:B6FA: 4C 09 B7    ;

CODE_0DB6FD:    LDA DATA_0DB697,y       ; $0D:B6FD: B9 97 B6    ;
CODE_0DB700:    LDX DATA_0DB69C,y       ; $0D:B700: BE 9C B6    ;
CODE_0DB703:    STA $0145,x             ; $0D:B703: 9D 45 01    ;
CODE_0DB706:    JSR CODE_0DBB27         ; $0D:B706: 20 27 BB    ;
CODE_0DB709:    LDA #$05                ; $0D:B709: A9 05       ;
CODE_0DB70B:    STA $0F                 ; $0D:B70B: 85 0F       ;
CODE_0DB70D:    LDA #$0C                ; $0D:B70D: A9 0C       ;
CODE_0DB70F:    STA $1602               ; $0D:B70F: 8D 02 16    ;
CODE_0DB712:    LDA $0202               ; $0D:B712: AD 02 02    ;
CODE_0DB715:    AND #$02                ; $0D:B715: 29 02       ;
CODE_0DB717:    BNE CODE_0DB71D         ; $0D:B717: D0 04       ;
CODE_0DB719:    LDA #$6E                ; $0D:B719: A9 6E       ;
CODE_0DB71B:    BRA CODE_0DB71F         ; $0D:B71B: 80 02       ;

CODE_0DB71D:    LDA #$60                ; $0D:B71D: A9 60       ;
CODE_0DB71F:    STA $02FD               ; $0D:B71F: 8D FD 02    ;
CODE_0DB722:    LDA $0219               ; $0D:B722: AD 19 02    ;
CODE_0DB725:    STA $03CC               ; $0D:B725: 8D CC 03    ;
CODE_0DB728:    LDA $78                 ; $0D:B728: A5 78       ;
CODE_0DB72A:    STA $03CD               ; $0D:B72A: 8D CD 03    ;
CODE_0DB72D:    LDA #$20                ; $0D:B72D: A9 20       ;
CODE_0DB72F:    STA $03FB               ; $0D:B72F: 8D FB 03    ;
CODE_0DB732:    STA $03FA               ; $0D:B732: 8D FA 03    ;
CODE_0DB735:    JSR CODE_0DFDE1         ; $0D:B735: 20 E1 FD    ;
CODE_0DB738:    JSR CODE_0DFD4F         ; $0D:B738: 20 4F FD    ;
CODE_0DB73B:    JSL CODE_0FFC40         ; $0D:B73B: 22 40 FC 0F ;
CODE_0DB73F:    RTS                     ; $0D:B73F: 60          ;

DATA_0DB740:        db $08,$10,$08,$00

CODE_0DB744:    JSR CODE_0DFDE1         ; $0D:B744: 20 E1 FD    ;
CODE_0DB747:    LDA $0747               ; $0D:B747: AD 47 07    ;
CODE_0DB74A:    BNE CODE_0DB7AD         ; $0D:B74A: D0 61       ;
CODE_0DB74C:    LDA $070E               ; $0D:B74C: AD 0E 07    ;
CODE_0DB74F:    BEQ CODE_0DB7AD         ; $0D:B74F: F0 5C       ;
CODE_0DB751:    TAY                     ; $0D:B751: A8          ;
CODE_0DB752:    DEY                     ; $0D:B752: 88          ;
CODE_0DB753:    TYA                     ; $0D:B753: 98          ;
CODE_0DB754:    AND #$02                ; $0D:B754: 29 02       ;
CODE_0DB756:    BNE CODE_0DB761         ; $0D:B756: D0 09       ;
CODE_0DB758:    INC $0237               ; $0D:B758: EE 37 02    ;
CODE_0DB75B:    INC $0237               ; $0D:B75B: EE 37 02    ;
CODE_0DB75E:    JMP CODE_0DB767         ; $0D:B75E: 4C 67 B7    ;

CODE_0DB761:    DEC $0237               ; $0D:B761: CE 37 02    ;
CODE_0DB764:    DEC $0237               ; $0D:B764: CE 37 02    ;
CODE_0DB767:    LDA $5E,x               ; $0D:B767: B5 5E       ;
CODE_0DB769:    CLC                     ; $0D:B769: 18          ;
CODE_0DB76A:    ADC DATA_0DB740,y       ; $0D:B76A: 79 40 B7    ;
CODE_0DB76D:    STA $0238,x             ; $0D:B76D: 9D 38 02    ;
CODE_0DB770:    CPY #$01                ; $0D:B770: C0 01       ;
CODE_0DB772:    BCC CODE_0DB79C         ; $0D:B772: 90 28       ;
CODE_0DB774:    LDA $0A                 ; $0D:B774: A5 0A       ;
CODE_0DB776:    AND #$80                ; $0D:B776: 29 80       ;
CODE_0DB778:    BEQ CODE_0DB79C         ; $0D:B778: F0 22       ;
CODE_0DB77A:    AND $0D                 ; $0D:B77A: 25 0D       ;
CODE_0DB77C:    BNE CODE_0DB79C         ; $0D:B77C: D0 1E       ;
CODE_0DB77E:    TYA                     ; $0D:B77E: 98          ;
CODE_0DB77F:    PHA                     ; $0D:B77F: 48          ;
CODE_0DB780:    LDA #$F4                ; $0D:B780: A9 F4       ;
CODE_0DB782:    LDY $075F               ; $0D:B782: AC 5F 07    ;
CODE_0DB785:    CPY #$0B                ; $0D:B785: C0 0B       ;
CODE_0DB787:    BEQ CODE_0DB795         ; $0D:B787: F0 0C       ;
CODE_0DB789:    CPY #$01                ; $0D:B789: C0 01       ;
CODE_0DB78B:    BEQ CODE_0DB795         ; $0D:B78B: F0 08       ;
CODE_0DB78D:    CPY #$02                ; $0D:B78D: C0 02       ;
CODE_0DB78F:    BEQ CODE_0DB795         ; $0D:B78F: F0 04       ;
CODE_0DB791:    CPY #$06                ; $0D:B791: C0 06       ;
CODE_0DB793:    BNE CODE_0DB797         ; $0D:B793: D0 02       ;
CODE_0DB795:    LDA #$E0                ; $0D:B795: A9 E0       ;
CODE_0DB797:    STA $06DB               ; $0D:B797: 8D DB 06    ;
CODE_0DB79A:    PLA                     ; $0D:B79A: 68          ;
CODE_0DB79B:    TAY                     ; $0D:B79B: A8          ;
CODE_0DB79C:    CPY #$03                ; $0D:B79C: C0 03       ;
CODE_0DB79E:    BNE CODE_0DB7AD         ; $0D:B79E: D0 0D       ;
CODE_0DB7A0:    LDA $06DB               ; $0D:B7A0: AD DB 06    ;
CODE_0DB7A3:    STA $A0                 ; $0D:B7A3: 85 A0       ;
CODE_0DB7A5:    STZ $070E               ; $0D:B7A5: 9C 0E 07    ;
CODE_0DB7A8:    LDA #$08                ; $0D:B7A8: A9 08       ;
CODE_0DB7AA:    STA $1603               ; $0D:B7AA: 8D 03 16    ;
CODE_0DB7AD:    JSR CODE_0DFD4F         ; $0D:B7AD: 20 4F FD    ;
CODE_0DB7B0:    JSR CODE_0DEE40         ; $0D:B7B0: 20 40 EE    ;
CODE_0DB7B3:    JSR CODE_0DDAFC         ; $0D:B7B3: 20 FC DA    ;
CODE_0DB7B6:    LDA $070E               ; $0D:B7B6: AD 0E 07    ;
CODE_0DB7B9:    BEQ CODE_0DB7C8         ; $0D:B7B9: F0 0D       ;
CODE_0DB7BB:    LDA $078E               ; $0D:B7BB: AD 8E 07    ;
CODE_0DB7BE:    BNE CODE_0DB7C8         ; $0D:B7BE: D0 08       ;
CODE_0DB7C0:    LDA #$04                ; $0D:B7C0: A9 04       ;
CODE_0DB7C2:    STA $078E               ; $0D:B7C2: 8D 8E 07    ;
CODE_0DB7C5:    INC $070E               ; $0D:B7C5: EE 0E 07    ;
CODE_0DB7C8:    RTS                     ; $0D:B7C8: 60          ;

CODE_0DB7C9:    LDA #$2F                ; $0D:B7C9: A9 2F       ;
CODE_0DB7CB:    STA $1C,x               ; $0D:B7CB: 95 1C       ;
CODE_0DB7CD:    LDA #$01                ; $0D:B7CD: A9 01       ;
CODE_0DB7CF:    STA $10,x               ; $0D:B7CF: 95 10       ;
CODE_0DB7D1:    LDA $0085,y             ; $0D:B7D1: B9 85 00    ;
CODE_0DB7D4:    STA $79,x               ; $0D:B7D4: 95 79       ;
CODE_0DB7D6:    LDA $0226,y             ; $0D:B7D6: B9 26 02    ;
CODE_0DB7D9:    STA $021A,x             ; $0D:B7D9: 9D 1A 02    ;
CODE_0DB7DC:    LDA $0244,y             ; $0D:B7DC: B9 44 02    ;
CODE_0DB7DF:    BNE CODE_0DB7E3         ; $0D:B7DF: D0 02       ;
CODE_0DB7E1:    LDA #$F0                ; $0D:B7E1: A9 F0       ;
CODE_0DB7E3:    STA $0238,x             ; $0D:B7E3: 9D 38 02    ;
CODE_0DB7E6:    LDY $0398               ; $0D:B7E6: AC 98 03    ;
CODE_0DB7E9:    BNE CODE_0DB7EE         ; $0D:B7E9: D0 03       ;
CODE_0DB7EB:    STA $039D               ; $0D:B7EB: 8D 9D 03    ;
CODE_0DB7EE:    TXA                     ; $0D:B7EE: 8A          ;
CODE_0DB7EF:    STA $039A,y             ; $0D:B7EF: 99 9A 03    ;
CODE_0DB7F2:    INC $0398               ; $0D:B7F2: EE 98 03    ;
CODE_0DB7F5:    LDA #$03                ; $0D:B7F5: A9 03       ;
CODE_0DB7F7:    STA $1603               ; $0D:B7F7: 8D 03 16    ;
CODE_0DB7FA:    RTS                     ; $0D:B7FA: 60          ;

CODE_0DB7FB:    CPX #$09                ; $0D:B7FB: E0 09       ;
CODE_0DB7FD:    BEQ CODE_0DB800         ; $0D:B7FD: F0 01       ;
CODE_0DB7FF:    RTS                     ; $0D:B7FF: 60          ;

CODE_0DB800:    LDA $0236               ; $0D:B800: AD 36 02    ;
CODE_0DB803:    BNE CODE_0DB809         ; $0D:B803: D0 04       ;
CODE_0DB805:    LDA #$90                ; $0D:B805: A9 90       ;
CODE_0DB807:    BRA CODE_0DB80B         ; $0D:B807: 80 02       ;

CODE_0DB809:    LDA #$60                ; $0D:B809: A9 60       ;
CODE_0DB80B:    CMP $0399               ; $0D:B80B: CD 99 03    ;
CODE_0DB80E:    BEQ CODE_0DB81B         ; $0D:B80E: F0 0B       ;
CODE_0DB810:    LDA $09                 ; $0D:B810: A5 09       ;
CODE_0DB812:    LSR A                   ; $0D:B812: 4A          ;
CODE_0DB813:    BCC CODE_0DB81B         ; $0D:B813: 90 06       ;
CODE_0DB815:    DEC $0241               ; $0D:B815: CE 41 02    ;
CODE_0DB818:    INC $0399               ; $0D:B818: EE 99 03    ;
CODE_0DB81B:    LDA $0399               ; $0D:B81B: AD 99 03    ;
CODE_0DB81E:    CMP #$08                ; $0D:B81E: C9 08       ;
CODE_0DB820:    BCC CODE_0DB86E         ; $0D:B820: 90 4C       ;
CODE_0DB822:    JSR CODE_0DFD4F         ; $0D:B822: 20 4F FD    ;
CODE_0DB825:    JSR CODE_0DFDE1         ; $0D:B825: 20 E1 FD    ;
CODE_0DB828:    LDY #$00                ; $0D:B828: A0 00       ;
CODE_0DB82A:    JSL CODE_0FE8BE         ; $0D:B82A: 22 BE E8 0F ;
CODE_0DB82E:    LDA $03D1               ; $0D:B82E: AD D1 03    ;
CODE_0DB831:    AND #$0F                ; $0D:B831: 29 0F       ;
CODE_0DB833:    CMP #$0F                ; $0D:B833: C9 0F       ;
CODE_0DB835:    BNE CODE_0DB842         ; $0D:B835: D0 0B       ;
CODE_0DB837:    LDX #$09                ; $0D:B837: A2 09       ;
CODE_0DB839:    JSR CODE_0DCCEA         ; $0D:B839: 20 EA CC    ;
CODE_0DB83C:    STA $0398               ; $0D:B83C: 8D 98 03    ;
CODE_0DB83F:    STA $0399               ; $0D:B83F: 8D 99 03    ;
CODE_0DB842:    LDX #$0A                ; $0D:B842: A2 0A       ;
CODE_0DB844:    LDA #$01                ; $0D:B844: A9 01       ;
CODE_0DB846:    LDY #$1B                ; $0D:B846: A0 1B       ;
CODE_0DB848:    JSR CODE_0DEAFF         ; $0D:B848: 20 FF EA    ;
CODE_0DB84B:    LDY $02                 ; $0D:B84B: A4 02       ;
CODE_0DB84D:    CPY #$D0                ; $0D:B84D: C0 D0       ;
CODE_0DB84F:    BCS CODE_0DB86E         ; $0D:B84F: B0 1D       ;
CODE_0DB851:    LDA $0236               ; $0D:B851: AD 36 02    ;
CODE_0DB854:    BNE CODE_0DB859         ; $0D:B854: D0 03       ;
CODE_0DB856:    TYA                     ; $0D:B856: 98          ;
CODE_0DB857:    BMI CODE_0DB86E         ; $0D:B857: 30 15       ;
CODE_0DB859:    LDA ($06),y             ; $0D:B859: B1 06       ;
CODE_0DB85B:    BNE CODE_0DB86E         ; $0D:B85B: D0 11       ;
CODE_0DB85D:    LDA #$2F                ; $0D:B85D: A9 2F       ;
CODE_0DB85F:    STA ($06),y             ; $0D:B85F: 91 06       ;
CODE_0DB861:    TYA                     ; $0D:B861: 98          ;
CODE_0DB862:    BMI CODE_0DB86E         ; $0D:B862: 30 0A       ;
CODE_0DB864:    SEC                     ; $0D:B864: 38          ;
CODE_0DB865:    SBC #$10                ; $0D:B865: E9 10       ;
CODE_0DB867:    BEQ CODE_0DB86E         ; $0D:B867: F0 05       ;
CODE_0DB869:    BMI CODE_0DB86E         ; $0D:B869: 30 03       ;
CODE_0DB86B:    TAY                     ; $0D:B86B: A8          ;
CODE_0DB86C:    BRA CODE_0DB859         ; $0D:B86C: 80 EB       ;

CODE_0DB86E:    LDY $02                 ; $0D:B86E: A4 02       ;
CODE_0DB870:    LDX $9E                 ; $0D:B870: A6 9E       ;
CODE_0DB872:    RTS                     ; $0D:B872: 60          ;

DATA_0DB873:       db $0F,$07

CODE_0DB875:    LDA $5C                 ; $0D:B875: A5 5C       ;
CODE_0DB877:    BEQ CODE_0DB8E8         ; $0D:B877: F0 6F       ;
CODE_0DB879:    LDX #$02                ; $0D:B879: A2 02       ;
CODE_0DB87B:    STX $9E                 ; $0D:B87B: 86 9E       ;
CODE_0DB87D:    LDA $10,x               ; $0D:B87D: B5 10       ;
CODE_0DB87F:    BNE CODE_0DB8D2         ; $0D:B87F: D0 51       ;
CODE_0DB881:    LDA $07B8,x             ; $0D:B881: BD B8 07    ;
CODE_0DB884:    LDY $06CC               ; $0D:B884: AC CC 06    ;
CODE_0DB887:    AND DATA_0DB873,y       ; $0D:B887: 39 73 B8    ;
CODE_0DB88A:    CMP #$06                ; $0D:B88A: C9 06       ;
CODE_0DB88C:    BCS CODE_0DB8D2         ; $0D:B88C: B0 44       ;
CODE_0DB88E:    TAY                     ; $0D:B88E: A8          ;
CODE_0DB88F:    LDA $026B,y             ; $0D:B88F: B9 6B 02    ;
CODE_0DB892:    BEQ CODE_0DB8D2         ; $0D:B892: F0 3E       ;
CODE_0DB894:    LDA $027D,y             ; $0D:B894: B9 7D 02    ;
CODE_0DB897:    BEQ CODE_0DB8A0         ; $0D:B897: F0 07       ;
CODE_0DB899:    SBC #$00                ; $0D:B899: E9 00       ;
CODE_0DB89B:    STA $027D,y             ; $0D:B89B: 99 7D 02    ;
CODE_0DB89E:    BRA CODE_0DB8D2         ; $0D:B89E: 80 32       ;

CODE_0DB8A0:    LDA $0747               ; $0D:B8A0: AD 47 07    ;
CODE_0DB8A3:    BNE CODE_0DB8D2         ; $0D:B8A3: D0 2D       ;
CODE_0DB8A5:    LDA #$0E                ; $0D:B8A5: A9 0E       ;
CODE_0DB8A7:    STA $027D,y             ; $0D:B8A7: 99 7D 02    ;
CODE_0DB8AA:    LDA $026B,y             ; $0D:B8AA: B9 6B 02    ;
CODE_0DB8AD:    STA $79,x               ; $0D:B8AD: 95 79       ;
CODE_0DB8AF:    LDA $0271,y             ; $0D:B8AF: B9 71 02    ;
CODE_0DB8B2:    STA $021A,x             ; $0D:B8B2: 9D 1A 02    ;
CODE_0DB8B5:    LDA $0277,y             ; $0D:B8B5: B9 77 02    ;
CODE_0DB8B8:    SEC                     ; $0D:B8B8: 38          ;
CODE_0DB8B9:    SBC #$08                ; $0D:B8B9: E9 08       ;
CODE_0DB8BB:    STA $0238,x             ; $0D:B8BB: 9D 38 02    ;
CODE_0DB8BE:    LDA #$01                ; $0D:B8BE: A9 01       ;
CODE_0DB8C0:    STA $BC,x               ; $0D:B8C0: 95 BC       ;
CODE_0DB8C2:    STA $10,x               ; $0D:B8C2: 95 10       ;
CODE_0DB8C4:    LSR A                   ; $0D:B8C4: 4A          ;
CODE_0DB8C5:    STA $29,x               ; $0D:B8C5: 95 29       ;
CODE_0DB8C7:    LDA #$09                ; $0D:B8C7: A9 09       ;
CODE_0DB8C9:    STA $0490,x             ; $0D:B8C9: 9D 90 04    ;
CODE_0DB8CC:    LDA #$33                ; $0D:B8CC: A9 33       ;
CODE_0DB8CE:    STA $1C,x               ; $0D:B8CE: 95 1C       ;
CODE_0DB8D0:    BRA CODE_0DB8E5         ; $0D:B8D0: 80 13       ;

CODE_0DB8D2:    LDA $1C,x               ; $0D:B8D2: B5 1C       ;
CODE_0DB8D4:    CMP #$33                ; $0D:B8D4: C9 33       ;
CODE_0DB8D6:    BNE CODE_0DB8E5         ; $0D:B8D6: D0 0D       ;
CODE_0DB8D8:    JSR CODE_0DDAFC         ; $0D:B8D8: 20 FC DA    ;
CODE_0DB8DB:    LDA $10,x               ; $0D:B8DB: B5 10       ;
CODE_0DB8DD:    BEQ CODE_0DB8E5         ; $0D:B8DD: F0 06       ;
CODE_0DB8DF:    JSR CODE_0DFDE1         ; $0D:B8DF: 20 E1 FD    ;
CODE_0DB8E2:    JSR CODE_0DB8EB         ; $0D:B8E2: 20 EB B8    ;
CODE_0DB8E5:    DEX                     ; $0D:B8E5: CA          ;
CODE_0DB8E6:    BPL CODE_0DB87B         ; $0D:B8E6: 10 93       ;
CODE_0DB8E8:    RTS                     ; $0D:B8E8: 60          ;

DATA_0DB8E9:        db $18,$E8

CODE_0DB8EB:    LDA $0747               ; $0D:B8EB: AD 47 07    ;
CODE_0DB8EE:    BNE CODE_0DB943         ; $0D:B8EE: D0 53       ;
CODE_0DB8F0:    LDA $29,x               ; $0D:B8F0: B5 29       ;
CODE_0DB8F2:    BNE CODE_0DB926         ; $0D:B8F2: D0 32       ;
CODE_0DB8F4:    LDA $03D1               ; $0D:B8F4: AD D1 03    ;
CODE_0DB8F7:    AND #$0C                ; $0D:B8F7: 29 0C       ;
CODE_0DB8F9:    CMP #$0C                ; $0D:B8F9: C9 0C       ;
CODE_0DB8FB:    BEQ CODE_0DB952         ; $0D:B8FB: F0 55       ;
CODE_0DB8FD:    LDY #$01                ; $0D:B8FD: A0 01       ;
CODE_0DB8FF:    JSR CODE_0DE828         ; $0D:B8FF: 20 28 E8    ;
CODE_0DB902:    BMI CODE_0DB905         ; $0D:B902: 30 01       ;
CODE_0DB904:    INY                     ; $0D:B904: C8          ;
CODE_0DB905:    STY $47,x               ; $0D:B905: 94 47       ;
CODE_0DB907:    DEY                     ; $0D:B907: 88          ;
CODE_0DB908:    LDA DATA_0DB8E9,y       ; $0D:B908: B9 E9 B8    ;
CODE_0DB90B:    STA $5E,x               ; $0D:B90B: 95 5E       ;
CODE_0DB90D:    LDA $00                 ; $0D:B90D: A5 00       ;
CODE_0DB90F:    ADC #$28                ; $0D:B90F: 69 28       ;
CODE_0DB911:    CMP #$50                ; $0D:B911: C9 50       ;
CODE_0DB913:    BCC CODE_0DB952         ; $0D:B913: 90 3D       ;
CODE_0DB915:    LDA #$01                ; $0D:B915: A9 01       ;
CODE_0DB917:    STA $29,x               ; $0D:B917: 95 29       ;
CODE_0DB919:    LDA #$0A                ; $0D:B919: A9 0A       ;
CODE_0DB91B:    STA $0792,x             ; $0D:B91B: 9D 92 07    ;
CODE_0DB91E:    LDA #$4A                ; $0D:B91E: A9 4A       ;
CODE_0DB920:    STA $1603               ; $0D:B920: 8D 03 16    ;
CODE_0DB923:    JSR CODE_0DC06E         ; $0D:B923: 20 6E C0    ;
CODE_0DB926:    LDA $03D1               ; $0D:B926: AD D1 03    ;
CODE_0DB929:    AND #$F0                ; $0D:B929: 29 F0       ;
CODE_0DB92B:    CMP #$F0                ; $0D:B92B: C9 F0       ;
CODE_0DB92D:    BEQ CODE_0DB952         ; $0D:B92D: F0 23       ;
CODE_0DB92F:    LDA $29,x               ; $0D:B92F: B5 29       ;
CODE_0DB931:    AND #$20                ; $0D:B931: 29 20       ;
CODE_0DB933:    BEQ CODE_0DB938         ; $0D:B933: F0 03       ;
CODE_0DB935:    JSR CODE_0DBF06         ; $0D:B935: 20 06 BF    ;
CODE_0DB938:    LDA $0E67               ; $0D:B938: AD 67 0E    ;
CODE_0DB93B:    BNE CODE_0DB943         ; $0D:B93B: D0 06       ;
CODE_0DB93D:    JSR CODE_0DBEA0         ; $0D:B93D: 20 A0 BE    ;
CODE_0DB940:    JSR CODE_0DBFED         ; $0D:B940: 20 ED BF    ;
CODE_0DB943:    JSR CODE_0DFDE1         ; $0D:B943: 20 E1 FD    ;
CODE_0DB946:    JSR CODE_0DFD4F         ; $0D:B946: 20 4F FD    ;
CODE_0DB949:    JSR CODE_0DE948         ; $0D:B949: 20 48 E9    ;
CODE_0DB94C:    JSR CODE_0DDD7D         ; $0D:B94C: 20 7D DD    ;
CODE_0DB94F:    JMP CODE_0DEE40         ; $0D:B94F: 4C 40 EE    ;

CODE_0DB952:    JSR CODE_0DCCEA         ; $0D:B952: 20 EA CC    ;
CODE_0DB955:    RTS                     ; $0D:B955: 60          ;

DATA_0DB956:        db $04,$04,$04,$05,$05,$05,$06,$06
                    db $06

DATA_0DB95F:        db $10,$F0

CODE_0DB961:    LDA $07B8               ; $0D:B961: AD B8 07    ;
CODE_0DB964:    AND #$07                ; $0D:B964: 29 07       ;
CODE_0DB966:    BNE CODE_0DB96D         ; $0D:B966: D0 05       ;
CODE_0DB968:    LDA $07B8               ; $0D:B968: AD B8 07    ;
CODE_0DB96B:    AND #$08                ; $0D:B96B: 29 08       ;
CODE_0DB96D:    TAY                     ; $0D:B96D: A8          ;
CODE_0DB96E:    LDA $0039,y             ; $0D:B96E: B9 39 00    ;
CODE_0DB971:    BNE CODE_0DB98C         ; $0D:B971: D0 19       ;
CODE_0DB973:    LDX DATA_0DB956,y       ; $0D:B973: BE 56 B9    ;
CODE_0DB976:    LDA $10,x               ; $0D:B976: B5 10       ;
CODE_0DB978:    BNE CODE_0DB98C         ; $0D:B978: D0 12       ;
CODE_0DB97A:    LDX $9E                 ; $0D:B97A: A6 9E       ;
CODE_0DB97C:    TXA                     ; $0D:B97C: 8A          ;
CODE_0DB97D:    STA $06AE,y             ; $0D:B97D: 99 AE 06    ;
CODE_0DB980:    LDA #$90                ; $0D:B980: A9 90       ;
CODE_0DB982:    STA $0039,y             ; $0D:B982: 99 39 00    ;
CODE_0DB985:    LDA #$07                ; $0D:B985: A9 07       ;
CODE_0DB987:    STA $049C,y             ; $0D:B987: 99 9C 04    ;
CODE_0DB98A:    SEC                     ; $0D:B98A: 38          ;
CODE_0DB98B:    RTS                     ; $0D:B98B: 60          ;

CODE_0DB98C:    LDX $9E                 ; $0D:B98C: A6 9E       ;
CODE_0DB98E:    CLC                     ; $0D:B98E: 18          ;
CODE_0DB98F:    RTS                     ; $0D:B98F: 60          ;

CODE_0DB990:    LDA $0747               ; $0D:B990: AD 47 07    ;
CODE_0DB993:    BEQ CODE_0DB998         ; $0D:B993: F0 03       ;
CODE_0DB995:    JMP CODE_0DBA1E         ; $0D:B995: 4C 1E BA    ;

CODE_0DB998:    LDA $39,x               ; $0D:B998: B5 39       ;
CODE_0DB99A:    AND #$7F                ; $0D:B99A: 29 7F       ;
CODE_0DB99C:    LDY $06AE,x             ; $0D:B99C: BC AE 06    ;
CODE_0DB99F:    CMP #$02                ; $0D:B99F: C9 02       ;
CODE_0DB9A1:    BEQ CODE_0DB9C3         ; $0D:B9A1: F0 20       ;
CODE_0DB9A3:    BCS CODE_0DB9D9         ; $0D:B9A3: B0 34       ;
CODE_0DB9A5:    TXA                     ; $0D:B9A5: 8A          ;
CODE_0DB9A6:    CLC                     ; $0D:B9A6: 18          ;
CODE_0DB9A7:    ADC #$11                ; $0D:B9A7: 69 11       ;
CODE_0DB9A9:    TAX                     ; $0D:B9A9: AA          ;
CODE_0DB9AA:    LDA #$10                ; $0D:B9AA: A9 10       ;
CODE_0DB9AC:    STA $00                 ; $0D:B9AC: 85 00       ;
CODE_0DB9AE:    LDA #$0F                ; $0D:B9AE: A9 0F       ;
CODE_0DB9B0:    STA $01                 ; $0D:B9B0: 85 01       ;
CODE_0DB9B2:    LDA #$04                ; $0D:B9B2: A9 04       ;
CODE_0DB9B4:    STA $02                 ; $0D:B9B4: 85 02       ;
CODE_0DB9B6:    LDA #$00                ; $0D:B9B6: A9 00       ;
CODE_0DB9B8:    JSR CODE_0DBF7E         ; $0D:B9B8: 20 7E BF    ;
CODE_0DB9BB:    JSR CODE_0DBEAD         ; $0D:B9BB: 20 AD BE    ;
CODE_0DB9BE:    LDX $9E                 ; $0D:B9BE: A6 9E       ;
CODE_0DB9C0:    JMP CODE_0DBA1B         ; $0D:B9C0: 4C 1B BA    ;

CODE_0DB9C3:    LDA #$FE                ; $0D:B9C3: A9 FE       ;
CODE_0DB9C5:    STA $B1,x               ; $0D:B9C5: 95 B1       ;
CODE_0DB9C7:    LDA $0029,y             ; $0D:B9C7: B9 29 00    ;
CODE_0DB9CA:    AND #$F7                ; $0D:B9CA: 29 F7       ;
CODE_0DB9CC:    STA $0029,y             ; $0D:B9CC: 99 29 00    ;
CODE_0DB9CF:    LDX $47,y               ; $0D:B9CF: B6 47       ;
CODE_0DB9D1:    DEX                     ; $0D:B9D1: CA          ;
CODE_0DB9D2:    LDA DATA_0DB95F,x       ; $0D:B9D2: BD 5F B9    ;
CODE_0DB9D5:    LDX $9E                 ; $0D:B9D5: A6 9E       ;
CODE_0DB9D7:    STA $6E,x               ; $0D:B9D7: 95 6E       ;
CODE_0DB9D9:    DEC $39,x               ; $0D:B9D9: D6 39       ;
CODE_0DB9DB:    LDA $39,x               ; $0D:B9DB: B5 39       ;
CODE_0DB9DD:    CMP #$81                ; $0D:B9DD: C9 81       ;
CODE_0DB9DF:    BNE CODE_0DB9E6         ; $0D:B9DF: D0 05       ;
CODE_0DB9E1:    LDA #$37                ; $0D:B9E1: A9 37       ;
CODE_0DB9E3:    STA $1600               ; $0D:B9E3: 8D 00 16    ;
CODE_0DB9E6:    LDA $001C,y             ; $0D:B9E6: B9 1C 00    ;
CODE_0DB9E9:    CMP #$2D                ; $0D:B9E9: C9 2D       ;
CODE_0DB9EB:    BNE CODE_0DB9F1         ; $0D:B9EB: D0 04       ;
CODE_0DB9ED:    LDA #$08                ; $0D:B9ED: A9 08       ;
CODE_0DB9EF:    BRA CODE_0DB9FE         ; $0D:B9EF: 80 0D       ;

CODE_0DB9F1:    LDA $0047,y             ; $0D:B9F1: B9 47 00    ;
CODE_0DB9F4:    CMP #$02                ; $0D:B9F4: C9 02       ;
CODE_0DB9F6:    BNE CODE_0DB9FC         ; $0D:B9F6: D0 04       ;
CODE_0DB9F8:    LDA #$06                ; $0D:B9F8: A9 06       ;
CODE_0DB9FA:    BRA CODE_0DB9FE         ; $0D:B9FA: 80 02       ;

CODE_0DB9FC:    LDA #$02                ; $0D:B9FC: A9 02       ;
CODE_0DB9FE:    CLC                     ; $0D:B9FE: 18          ;
CODE_0DB9FF:    ADC $021A,y             ; $0D:B9FF: 79 1A 02    ;
CODE_0DBA02:    STA $022A,x             ; $0D:BA02: 9D 2A 02    ;
CODE_0DBA05:    LDA $0079,y             ; $0D:BA05: B9 79 00    ;
CODE_0DBA08:    ADC #$00                ; $0D:BA08: 69 00       ;
CODE_0DBA0A:    STA $89,x               ; $0D:BA0A: 95 89       ;
CODE_0DBA0C:    LDA $0238,y             ; $0D:BA0C: B9 38 02    ;
CODE_0DBA0F:    SEC                     ; $0D:BA0F: 38          ;
CODE_0DBA10:    SBC #$0A                ; $0D:BA10: E9 0A       ;
CODE_0DBA12:    STA $0248,x             ; $0D:BA12: 9D 48 02    ;
CODE_0DBA15:    LDA #$01                ; $0D:BA15: A9 01       ;
CODE_0DBA17:    STA $CC,x               ; $0D:BA17: 95 CC       ;
CODE_0DBA19:    BNE CODE_0DBA1E         ; $0D:BA19: D0 03       ;
CODE_0DBA1B:    JSR CODE_0DDCD9         ; $0D:BA1B: 20 D9 DC    ;
CODE_0DBA1E:    JSR CODE_0DFDCD         ; $0D:BA1E: 20 CD FD    ;
CODE_0DBA21:    JSR CODE_0DFD46         ; $0D:BA21: 20 46 FD    ;
CODE_0DBA24:    JSR CODE_0DE93B         ; $0D:BA24: 20 3B E9    ;
CODE_0DBA27:    JSL CODE_0FEB53         ; $0D:BA27: 22 53 EB 0F ;
CODE_0DBA2B:    RTS                     ; $0D:BA2B: 60          ;

CODE_0DBA2C:    JSR CODE_0DBA7A         ; $0D:BA2C: 20 7A BA    ;
CODE_0DBA2F:    LDA $85,x               ; $0D:BA2F: B5 85       ;
CODE_0DBA31:    STA $0089,y             ; $0D:BA31: 99 89 00    ;
CODE_0DBA34:    LDA $0226,x             ; $0D:BA34: BD 26 02    ;
CODE_0DBA37:    ORA #$05                ; $0D:BA37: 09 05       ;
CODE_0DBA39:    STA $022A,y             ; $0D:BA39: 99 2A 02    ;
CODE_0DBA3C:    LDA $0244,x             ; $0D:BA3C: BD 44 02    ;
CODE_0DBA3F:    SBC #$10                ; $0D:BA3F: E9 10       ;
CODE_0DBA41:    STA $0248,y             ; $0D:BA41: 99 48 02    ;
CODE_0DBA44:    BRA CODE_0DBA61         ; $0D:BA44: 80 1B       ;

CODE_0DBA46:    JSR CODE_0DBA7A         ; $0D:BA46: 20 7A BA    ;
CODE_0DBA49:    LDA $03EC,x             ; $0D:BA49: BD EC 03    ;
CODE_0DBA4C:    STA $0089,y             ; $0D:BA4C: 99 89 00    ;
CODE_0DBA4F:    LDA $06                 ; $0D:BA4F: A5 06       ;
CODE_0DBA51:    ASL A                   ; $0D:BA51: 0A          ;
CODE_0DBA52:    ASL A                   ; $0D:BA52: 0A          ;
CODE_0DBA53:    ASL A                   ; $0D:BA53: 0A          ;
CODE_0DBA54:    ASL A                   ; $0D:BA54: 0A          ;
CODE_0DBA55:    ORA #$05                ; $0D:BA55: 09 05       ;
CODE_0DBA57:    STA $022A,y             ; $0D:BA57: 99 2A 02    ;
CODE_0DBA5A:    LDA $02                 ; $0D:BA5A: A5 02       ;
CODE_0DBA5C:    ADC #$20                ; $0D:BA5C: 69 20       ;
CODE_0DBA5E:    STA $0248,y             ; $0D:BA5E: 99 48 02    ;
CODE_0DBA61:    LDA #$FB                ; $0D:BA61: A9 FB       ;
CODE_0DBA63:    STA $00B1,y             ; $0D:BA63: 99 B1 00    ;
CODE_0DBA66:    LDA #$01                ; $0D:BA66: A9 01       ;
CODE_0DBA68:    STA $00CC,y             ; $0D:BA68: 99 CC 00    ;
CODE_0DBA6B:    STA $0039,y             ; $0D:BA6B: 99 39 00    ;
CODE_0DBA6E:    STA $1603               ; $0D:BA6E: 8D 03 16    ;
CODE_0DBA71:    STX $9E                 ; $0D:BA71: 86 9E       ;
CODE_0DBA73:    JSR CODE_0DBAFF         ; $0D:BA73: 20 FF BA    ;
CODE_0DBA76:    INC $0748               ; $0D:BA76: EE 48 07    ;
CODE_0DBA79:    RTS                     ; $0D:BA79: 60          ;

CODE_0DBA7A:    LDY #$08                ; $0D:BA7A: A0 08       ;
CODE_0DBA7C:    LDA $0039,y             ; $0D:BA7C: B9 39 00    ;
CODE_0DBA7F:    BEQ CODE_0DBA88         ; $0D:BA7F: F0 07       ;
CODE_0DBA81:    DEY                     ; $0D:BA81: 88          ;
CODE_0DBA82:    CPY #$05                ; $0D:BA82: C0 05       ;
CODE_0DBA84:    BNE CODE_0DBA7C         ; $0D:BA84: D0 F6       ;
CODE_0DBA86:    LDY #$08                ; $0D:BA86: A0 08       ;
CODE_0DBA88:    STY $06B7               ; $0D:BA88: 8C B7 06    ;
CODE_0DBA8B:    RTS                     ; $0D:BA8B: 60          ;

CODE_0DBA8C:    LDX #$08                ; $0D:BA8C: A2 08       ;
CODE_0DBA8E:    STX $9E                 ; $0D:BA8E: 86 9E       ;
CODE_0DBA90:    LDA $39,x               ; $0D:BA90: B5 39       ;
CODE_0DBA92:    BEQ CODE_0DBAF5         ; $0D:BA92: F0 61       ;
CODE_0DBA94:    ASL A                   ; $0D:BA94: 0A          ;
CODE_0DBA95:    BCC CODE_0DBA9D         ; $0D:BA95: 90 06       ;
CODE_0DBA97:    JSR CODE_0DB990         ; $0D:BA97: 20 90 B9    ;
CODE_0DBA9A:    JMP CODE_0DBAF5         ; $0D:BA9A: 4C F5 BA    ;

CODE_0DBA9D:    LDY $39,x               ; $0D:BA9D: B4 39       ;
CODE_0DBA9F:    DEY                     ; $0D:BA9F: 88          ;
CODE_0DBAA0:    BEQ CODE_0DBAC1         ; $0D:BAA0: F0 1F       ;
CODE_0DBAA2:    INC $39,x               ; $0D:BAA2: F6 39       ;
CODE_0DBAA4:    LDA $022A,x             ; $0D:BAA4: BD 2A 02    ;
CODE_0DBAA7:    CLC                     ; $0D:BAA7: 18          ;
CODE_0DBAA8:    ADC $0775               ; $0D:BAA8: 6D 75 07    ;
CODE_0DBAAB:    STA $022A,x             ; $0D:BAAB: 9D 2A 02    ;
CODE_0DBAAE:    LDA $89,x               ; $0D:BAAE: B5 89       ;
CODE_0DBAB0:    ADC #$00                ; $0D:BAB0: 69 00       ;
CODE_0DBAB2:    STA $89,x               ; $0D:BAB2: 95 89       ;
CODE_0DBAB4:    LDA $39,x               ; $0D:BAB4: B5 39       ;
CODE_0DBAB6:    CMP #$30                ; $0D:BAB6: C9 30       ;
CODE_0DBAB8:    BNE CODE_0DBAE0         ; $0D:BAB8: D0 26       ;
CODE_0DBABA:    LDA #$00                ; $0D:BABA: A9 00       ;
CODE_0DBABC:    STA $39,x               ; $0D:BABC: 95 39       ;
CODE_0DBABE:    JMP CODE_0DBAF5         ; $0D:BABE: 4C F5 BA    ;

CODE_0DBAC1:    TXA                     ; $0D:BAC1: 8A          ;
CODE_0DBAC2:    CLC                     ; $0D:BAC2: 18          ;
CODE_0DBAC3:    ADC #$11                ; $0D:BAC3: 69 11       ;
CODE_0DBAC5:    TAX                     ; $0D:BAC5: AA          ;
CODE_0DBAC6:    LDA #$50                ; $0D:BAC6: A9 50       ;
CODE_0DBAC8:    STA $00                 ; $0D:BAC8: 85 00       ;
CODE_0DBACA:    LDA #$06                ; $0D:BACA: A9 06       ;
CODE_0DBACC:    STA $02                 ; $0D:BACC: 85 02       ;
CODE_0DBACE:    LSR A                   ; $0D:BACE: 4A          ;
CODE_0DBACF:    STA $01                 ; $0D:BACF: 85 01       ;
CODE_0DBAD1:    LDA #$00                ; $0D:BAD1: A9 00       ;
CODE_0DBAD3:    JSR CODE_0DBF7E         ; $0D:BAD3: 20 7E BF    ;
CODE_0DBAD6:    LDX $9E                 ; $0D:BAD6: A6 9E       ;
CODE_0DBAD8:    LDA $B1,x               ; $0D:BAD8: B5 B1       ;
CODE_0DBADA:    CMP #$05                ; $0D:BADA: C9 05       ;
CODE_0DBADC:    BNE CODE_0DBAE0         ; $0D:BADC: D0 02       ;
CODE_0DBADE:    INC $39,x               ; $0D:BADE: F6 39       ;
CODE_0DBAE0:    LDA $B1,x               ; $0D:BAE0: B5 B1       ;
CODE_0DBAE2:    BNE CODE_0DBAE8         ; $0D:BAE2: D0 04       ;
CODE_0DBAE4:    JSL CODE_0FEACA         ; $0D:BAE4: 22 CA EA 0F ;
CODE_0DBAE8:    JSR CODE_0DFD46         ; $0D:BAE8: 20 46 FD    ;
CODE_0DBAEB:    JSR CODE_0DFDCD         ; $0D:BAEB: 20 CD FD    ;
CODE_0DBAEE:    JSR CODE_0DE93B         ; $0D:BAEE: 20 3B E9    ;
CODE_0DBAF1:    JSL CODE_0FEAEC         ; $0D:BAF1: 22 EC EA 0F ;
CODE_0DBAF5:    DEX                     ; $0D:BAF5: CA          ;
CODE_0DBAF6:    BPL CODE_0DBA8E         ; $0D:BAF6: 10 96       ;
CODE_0DBAF8:    RTS                     ; $0D:BAF8: 60          ;

DATA_0DBAF9:        db $17,$1D

DATA_0DBAFB:        db $0B,$11

DATA_0DBAFD:        db $02,$13

CODE_0DBAFF:    LDA #$01                ; $0D:BAFF: A9 01       ;
CODE_0DBB01:    STA $014A               ; $0D:BB01: 8D 4A 01    ;
CODE_0DBB04:    LDY DATA_0DBAF9         ; $0D:BB04: AC F9 BA    ;
CODE_0DBB07:    JSR CODE_0D98AA         ; $0D:BB07: 20 AA 98    ;
CODE_0DBB0A:    INC $075E               ; $0D:BB0A: EE 5E 07    ;
CODE_0DBB0D:    LDA $075E               ; $0D:BB0D: AD 5E 07    ;
CODE_0DBB10:    CMP #$64                ; $0D:BB10: C9 64       ;
CODE_0DBB12:    BNE CODE_0DBB22         ; $0D:BB12: D0 0E       ;
CODE_0DBB14:    LDA #$00                ; $0D:BB14: A9 00       ;
CODE_0DBB16:    STA $075E               ; $0D:BB16: 8D 5E 07    ;
CODE_0DBB19:    JSL CODE_048596         ; $0D:BB19: 22 96 85 04 ;Increase lives by one
CODE_0DBB1D:    LDA #$05                ; $0D:BB1D: A9 05       ;
CODE_0DBB1F:    STA $1603               ; $0D:BB1F: 8D 03 16    ;
CODE_0DBB22:    LDA #$02                ; $0D:BB22: A9 02       ;
CODE_0DBB24:    STA $0149               ; $0D:BB24: 8D 49 01    ;
CODE_0DBB27:    LDY DATA_0DBAFB         ; $0D:BB27: AC FB BA    ;
CODE_0DBB2A:    JSR CODE_0D98AA         ; $0D:BB2A: 20 AA 98    ;
CODE_0DBB2D:    LDA DATA_0DBAFD         ; $0D:BB2D: AD FD BA    ;
CODE_0DBB30:    JSR CODE_0D983D         ; $0D:BB30: 20 3D 98    ;
CODE_0DBB33:    LDY $1700               ; $0D:BB33: AC 00 17    ;
CODE_0DBB36:    LDA $16F6,y             ; $0D:BB36: B9 F6 16    ;
CODE_0DBB39:    BNE CODE_0DBB49         ; $0D:BB39: D0 0E       ;
CODE_0DBB3B:    LDA #$28                ; $0D:BB3B: A9 28       ;
CODE_0DBB3D:    LDX $16F2,y             ; $0D:BB3D: BE F2 16    ;
CODE_0DBB40:    CPX #$02                ; $0D:BB40: E0 02       ;
CODE_0DBB42:    BNE CODE_0DBB46         ; $0D:BB42: D0 02       ;
CODE_0DBB44:    LDA #$24                ; $0D:BB44: A9 24       ;
CODE_0DBB46:    STA $16F6,y             ; $0D:BB46: 99 F6 16    ;
CODE_0DBB49:    LDX $9E                 ; $0D:BB49: A6 9E       ;
CODE_0DBB4B:    RTS                     ; $0D:BB4B: 60          ;

CODE_0DBB4C:    LDA #$2E                ; $0D:BB4C: A9 2E       ;
CODE_0DBB4E:    STA $25                 ; $0D:BB4E: 85 25       ;
CODE_0DBB50:    LDA $85,x               ; $0D:BB50: B5 85       ;
CODE_0DBB52:    STA $82                 ; $0D:BB52: 85 82       ;
CODE_0DBB54:    LDA $0226,x             ; $0D:BB54: BD 26 02    ;
CODE_0DBB57:    STA $0223               ; $0D:BB57: 8D 23 02    ;
CODE_0DBB5A:    LDA #$01                ; $0D:BB5A: A9 01       ;
CODE_0DBB5C:    STA $C5                 ; $0D:BB5C: 85 C5       ;
CODE_0DBB5E:    LDA $0244,x             ; $0D:BB5E: BD 44 02    ;
CODE_0DBB61:    SEC                     ; $0D:BB61: 38          ;
CODE_0DBB62:    SBC #$08                ; $0D:BB62: E9 08       ;
CODE_0DBB64:    STA $0241               ; $0D:BB64: 8D 41 02    ;
CODE_0DBB67:    LDA #$01                ; $0D:BB67: A9 01       ;
CODE_0DBB69:    STA $32                 ; $0D:BB69: 85 32       ;
CODE_0DBB6B:    STA $19                 ; $0D:BB6B: 85 19       ;
CODE_0DBB6D:    LDA #$03                ; $0D:BB6D: A9 03       ;
CODE_0DBB6F:    STA $0499               ; $0D:BB6F: 8D 99 04    ;
CODE_0DBB72:    LDA $020C               ; $0D:BB72: AD 0C 02    ;
CODE_0DBB75:    CMP #$02                ; $0D:BB75: C9 02       ;
CODE_0DBB77:    BCS CODE_0DBB84         ; $0D:BB77: B0 0B       ;
CODE_0DBB79:    LDA $0756               ; $0D:BB79: AD 56 07    ;
CODE_0DBB7C:    CMP #$02                ; $0D:BB7C: C9 02       ;
CODE_0DBB7E:    BCC CODE_0DBB81         ; $0D:BB7E: 90 01       ;
CODE_0DBB80:    LSR A                   ; $0D:BB80: 4A          ;
CODE_0DBB81:    STA $020C               ; $0D:BB81: 8D 0C 02    ;
CODE_0DBB84:    LDA #$30                ; $0D:BB84: A9 30       ;
CODE_0DBB86:    STA $0260               ; $0D:BB86: 8D 60 02    ;
CODE_0DBB89:    LDA #$02                ; $0D:BB89: A9 02       ;
CODE_0DBB8B:    STA $1603               ; $0D:BB8B: 8D 03 16    ;
CODE_0DBB8E:    RTS                     ; $0D:BB8E: 60          ;

CODE_0DBB8F:    LDX #$09                ; $0D:BB8F: A2 09       ;
CODE_0DBB91:    STX $9E                 ; $0D:BB91: 86 9E       ;
CODE_0DBB93:    LDA $32                 ; $0D:BB93: A5 32       ;
CODE_0DBB95:    BNE CODE_0DBB9A         ; $0D:BB95: D0 03       ;
CODE_0DBB97:    JMP CODE_0DBC46         ; $0D:BB97: 4C 46 BC    ;

CODE_0DBB9A:    ASL A                   ; $0D:BB9A: 0A          ;
CODE_0DBB9B:    BCC CODE_0DBBC9         ; $0D:BB9B: 90 2C       ;
CODE_0DBB9D:    LDA $0747               ; $0D:BB9D: AD 47 07    ;
CODE_0DBBA0:    BNE CODE_0DBBF2         ; $0D:BBA0: D0 50       ;
CODE_0DBBA2:    LDA $020C               ; $0D:BBA2: AD 0C 02    ;
CODE_0DBBA5:    BEQ CODE_0DBBC0         ; $0D:BBA5: F0 19       ;
CODE_0DBBA7:    CMP #$03                ; $0D:BBA7: C9 03       ;
CODE_0DBBA9:    BEQ CODE_0DBBC0         ; $0D:BBA9: F0 15       ;
CODE_0DBBAB:    CMP #$04                ; $0D:BBAB: C9 04       ;
CODE_0DBBAD:    BEQ CODE_0DBBC0         ; $0D:BBAD: F0 11       ;
CODE_0DBBAF:    CMP #$05                ; $0D:BBAF: C9 05       ;
CODE_0DBBB1:    BEQ CODE_0DBBC0         ; $0D:BBB1: F0 0D       ;
CODE_0DBBB3:    CMP #$02                ; $0D:BBB3: C9 02       ;
CODE_0DBBB5:    BNE CODE_0DBBF2         ; $0D:BBB5: D0 3B       ;
CODE_0DBBB7:    JSR CODE_0DCE92         ; $0D:BBB7: 20 92 CE    ;
CODE_0DBBBA:    JSR CODE_0DE84D         ; $0D:BBBA: 20 4D E8    ;
CODE_0DBBBD:    JMP CODE_0DBBF2         ; $0D:BBBD: 4C F2 BB    ;

CODE_0DBBC0:    JSR CODE_0DCE10         ; $0D:BBC0: 20 10 CE    ;
CODE_0DBBC3:    JSR CODE_0DE68D         ; $0D:BBC3: 20 8D E6    ;
CODE_0DBBC6:    JMP CODE_0DBBF2         ; $0D:BBC6: 4C F2 BB    ;

CODE_0DBBC9:    LDA $09                 ; $0D:BBC9: A5 09       ;
CODE_0DBBCB:    AND #$03                ; $0D:BBCB: 29 03       ;
CODE_0DBBCD:    BNE CODE_0DBBE9         ; $0D:BBCD: D0 1A       ;
CODE_0DBBCF:    DEC $0241               ; $0D:BBCF: CE 41 02    ;
CODE_0DBBD2:    LDA $32                 ; $0D:BBD2: A5 32       ;
CODE_0DBBD4:    INC $32                 ; $0D:BBD4: E6 32       ;
CODE_0DBBD6:    CMP #$11                ; $0D:BBD6: C9 11       ;
CODE_0DBBD8:    BCC CODE_0DBBE9         ; $0D:BBD8: 90 0F       ;
CODE_0DBBDA:    LDA #$10                ; $0D:BBDA: A9 10       ;
CODE_0DBBDC:    STA $5E,x               ; $0D:BBDC: 95 5E       ;
CODE_0DBBDE:    LDA #$80                ; $0D:BBDE: A9 80       ;
CODE_0DBBE0:    STA $32                 ; $0D:BBE0: 85 32       ;
CODE_0DBBE2:    ASL A                   ; $0D:BBE2: 0A          ;
CODE_0DBBE3:    STA $0260               ; $0D:BBE3: 8D 60 02    ;
CODE_0DBBE6:    ROL A                   ; $0D:BBE6: 2A          ;
CODE_0DBBE7:    STA $47,x               ; $0D:BBE7: 95 47       ;
CODE_0DBBE9:    LDA $32                 ; $0D:BBE9: A5 32       ;
CODE_0DBBEB:    CMP #$06                ; $0D:BBEB: C9 06       ;
CODE_0DBBED:    BCS CODE_0DBBF2         ; $0D:BBED: B0 03       ;
CODE_0DBBEF:    JMP CODE_0DBC46         ; $0D:BBEF: 4C 46 BC    ;

CODE_0DBBF2:    JMP CODE_0DBC34         ; $0D:BBF2: 4C 34 BC    ;

CODE_0DBBF5:    LDA $79,x               ; $0D:BBF5: B5 79       ;
CODE_0DBBF7:    STA $E9                 ; $0D:BBF7: 85 E9       ;
CODE_0DBBF9:    LDA $021A,x             ; $0D:BBF9: BD 1A 02    ;
CODE_0DBBFC:    STA $E8                 ; $0D:BBFC: 85 E8       ;
CODE_0DBBFE:    REP #$20                ; $0D:BBFE: C2 20       ;
CODE_0DBC00:    LDA $E8                 ; $0D:BC00: A5 E8       ;
CODE_0DBC02:    CMP $42                 ; $0D:BC02: C5 42       ;
CODE_0DBC04:    BCS CODE_0DBC17         ; $0D:BC04: B0 11       ;
CODE_0DBC06:    CLC                     ; $0D:BC06: 18          ;
CODE_0DBC07:    ADC #$000C              ; $0D:BC07: 69 0C 00    ;
CODE_0DBC0A:    STA $E6                 ; $0D:BC0A: 85 E6       ;
CODE_0DBC0C:    SEP #$20                ; $0D:BC0C: E2 20       ;
CODE_0DBC0E:    LDA $E6                 ; $0D:BC0E: A5 E6       ;
CODE_0DBC10:    STA $021A,x             ; $0D:BC10: 9D 1A 02    ;
CODE_0DBC13:    LDA $E7                 ; $0D:BC13: A5 E7       ;
CODE_0DBC15:    STA $79,x               ; $0D:BC15: 95 79       ;
CODE_0DBC17:    SEP #$20                ; $0D:BC17: E2 20       ;
CODE_0DBC19:    JSR CODE_0DFD4F         ; $0D:BC19: 20 4F FD    ;
CODE_0DBC1C:    JSR CODE_0DFDE1         ; $0D:BC1C: 20 E1 FD    ;
CODE_0DBC1F:    JSR CODE_0DE948         ; $0D:BC1F: 20 48 E9    ;
CODE_0DBC22:    JSR CODE_0DEC50         ; $0D:BC22: 20 50 EC    ;
CODE_0DBC25:    JSR CODE_0DDD7D         ; $0D:BC25: 20 7D DD    ;
CODE_0DBC28:    JSR CODE_0DDAFC         ; $0D:BC28: 20 FC DA    ;
CODE_0DBC2B:    LDA $E8                 ; $0D:BC2B: A5 E8       ;
CODE_0DBC2D:    STA $021A,x             ; $0D:BC2D: 9D 1A 02    ;
CODE_0DBC30:    LDA $E9                 ; $0D:BC30: A5 E9       ;
CODE_0DBC32:    STA $79,x               ; $0D:BC32: 95 79       ;
CODE_0DBC34:    JSR CODE_0DFD4F         ; $0D:BC34: 20 4F FD    ;
CODE_0DBC37:    JSR CODE_0DFDE1         ; $0D:BC37: 20 E1 FD    ;
CODE_0DBC3A:    JSR CODE_0DE948         ; $0D:BC3A: 20 48 E9    ;
CODE_0DBC3D:    JSR CODE_0DEC50         ; $0D:BC3D: 20 50 EC    ;
CODE_0DBC40:    JSR CODE_0DDD7D         ; $0D:BC40: 20 7D DD    ;
CODE_0DBC43:    JSR CODE_0DDAFC         ; $0D:BC43: 20 FC DA    ;
CODE_0DBC46:    RTS                     ; $0D:BC46: 60          ;

DATA_0DBC47:        db $04,$12

CODE_0DBC49:    PHA                     ; $0D:BC49: 48          ;
CODE_0DBC4A:    LDA #$11                ; $0D:BC4A: A9 11       ;
CODE_0DBC4C:    LDX $03F0               ; $0D:BC4C: AE F0 03    ;
CODE_0DBC4F:    LDY $0754               ; $0D:BC4F: AC 54 07    ;
CODE_0DBC52:    BNE CODE_0DBC56         ; $0D:BC52: D0 02       ;
CODE_0DBC54:    LDA #$12                ; $0D:BC54: A9 12       ;
CODE_0DBC56:    STA $35,x               ; $0D:BC56: 95 35       ;
CODE_0DBC58:    JSR CODE_0D9061         ; $0D:BC58: 20 61 90    ;
CODE_0DBC5B:    LDX $03F0               ; $0D:BC5B: AE F0 03    ;
CODE_0DBC5E:    LDA $02                 ; $0D:BC5E: A5 02       ;
CODE_0DBC60:    STA $03E6,x             ; $0D:BC60: 9D E6 03    ;
CODE_0DBC63:    TAY                     ; $0D:BC63: A8          ;
CODE_0DBC64:    LDA $06                 ; $0D:BC64: A5 06       ;
CODE_0DBC66:    STA $03E8,x             ; $0D:BC66: 9D E8 03    ;
CODE_0DBC69:    LDA ($06),y             ; $0D:BC69: B1 06       ;
CODE_0DBC6B:    JSR CODE_0DBD83         ; $0D:BC6B: 20 83 BD    ;
CODE_0DBC6E:    STA $00                 ; $0D:BC6E: 85 00       ;
CODE_0DBC70:    LDY $0754               ; $0D:BC70: AC 54 07    ;
CODE_0DBC73:    BNE CODE_0DBC76         ; $0D:BC73: D0 01       ;
CODE_0DBC75:    TYA                     ; $0D:BC75: 98          ;
CODE_0DBC76:    BCC CODE_0DBC9D         ; $0D:BC76: 90 25       ;
CODE_0DBC78:    LDY #$11                ; $0D:BC78: A0 11       ;
CODE_0DBC7A:    STY $35,x               ; $0D:BC7A: 94 35       ;
CODE_0DBC7C:    LDA #$FD                ; $0D:BC7C: A9 FD       ;
CODE_0DBC7E:    LDY $00                 ; $0D:BC7E: A4 00       ;
CODE_0DBC80:    CPY #$54                ; $0D:BC80: C0 54       ;
CODE_0DBC82:    BEQ CODE_0DBC88         ; $0D:BC82: F0 04       ;
CODE_0DBC84:    CPY #$5A                ; $0D:BC84: C0 5A       ;
CODE_0DBC86:    BNE CODE_0DBC9D         ; $0D:BC86: D0 15       ;
CODE_0DBC88:    LDA $06BC               ; $0D:BC88: AD BC 06    ;
CODE_0DBC8B:    BNE CODE_0DBC95         ; $0D:BC8B: D0 08       ;
CODE_0DBC8D:    LDA #$0B                ; $0D:BC8D: A9 0B       ;
CODE_0DBC8F:    STA $07AD               ; $0D:BC8F: 8D AD 07    ;
CODE_0DBC92:    INC $06BC               ; $0D:BC92: EE BC 06    ;
CODE_0DBC95:    LDA $07AD               ; $0D:BC95: AD AD 07    ;
CODE_0DBC98:    BNE CODE_0DBC9C         ; $0D:BC98: D0 02       ;
CODE_0DBC9A:    LDY #$FD                ; $0D:BC9A: A0 FD       ;
CODE_0DBC9C:    TYA                     ; $0D:BC9C: 98          ;
CODE_0DBC9D:    STA $03EA,x             ; $0D:BC9D: 9D EA 03    ;
CODE_0DBCA0:    JSR CODE_0DBCE2         ; $0D:BCA0: 20 E2 BC    ;
CODE_0DBCA3:    LDY $02                 ; $0D:BCA3: A4 02       ;
CODE_0DBCA5:    LDA #$2C                ; $0D:BCA5: A9 2C       ;
CODE_0DBCA7:    STA ($06),y             ; $0D:BCA7: 91 06       ;
CODE_0DBCA9:    LDA #$10                ; $0D:BCA9: A9 10       ;
CODE_0DBCAB:    STA $078C               ; $0D:BCAB: 8D 8C 07    ;
CODE_0DBCAE:    PLA                     ; $0D:BCAE: 68          ;
CODE_0DBCAF:    STA $05                 ; $0D:BCAF: 85 05       ;
CODE_0DBCB1:    LDY #$00                ; $0D:BCB1: A0 00       ;
CODE_0DBCB3:    LDA $0714               ; $0D:BCB3: AD 14 07    ;
CODE_0DBCB6:    BNE CODE_0DBCBD         ; $0D:BCB6: D0 05       ;
CODE_0DBCB8:    LDA $0754               ; $0D:BCB8: AD 54 07    ;
CODE_0DBCBB:    BEQ CODE_0DBCBE         ; $0D:BCBB: F0 01       ;
CODE_0DBCBD:    INY                     ; $0D:BCBD: C8          ;
CODE_0DBCBE:    LDA $0237               ; $0D:BCBE: AD 37 02    ;
CODE_0DBCC1:    CLC                     ; $0D:BCC1: 18          ;
CODE_0DBCC2:    ADC DATA_0DBC47,y       ; $0D:BCC2: 79 47 BC    ;
CODE_0DBCC5:    AND #$F0                ; $0D:BCC5: 29 F0       ;
CODE_0DBCC7:    STA $0244,x             ; $0D:BCC7: 9D 44 02    ;
CODE_0DBCCA:    LDY $35,x               ; $0D:BCCA: B4 35       ;
CODE_0DBCCC:    CPY #$11                ; $0D:BCCC: C0 11       ;
CODE_0DBCCE:    BEQ CODE_0DBCD6         ; $0D:BCCE: F0 06       ;
CODE_0DBCD0:    JSR CODE_0DBD8F         ; $0D:BCD0: 20 8F BD    ;
CODE_0DBCD3:    JMP CODE_0DBCD9         ; $0D:BCD3: 4C D9 BC    ;

CODE_0DBCD6:    JSR CODE_0DBD01         ; $0D:BCD6: 20 01 BD    ;
CODE_0DBCD9:    LDA $03F0               ; $0D:BCD9: AD F0 03    ;
CODE_0DBCDC:    EOR #$01                ; $0D:BCDC: 49 01       ;
CODE_0DBCDE:    STA $03F0               ; $0D:BCDE: 8D F0 03    ;
CODE_0DBCE1:    RTS                     ; $0D:BCE1: 60          ;

CODE_0DBCE2:    LDA $0219               ; $0D:BCE2: AD 19 02    ;
CODE_0DBCE5:    CLC                     ; $0D:BCE5: 18          ;
CODE_0DBCE6:    ADC #$08                ; $0D:BCE6: 69 08       ;
CODE_0DBCE8:    AND #$F0                ; $0D:BCE8: 29 F0       ;
CODE_0DBCEA:    STA $0226,x             ; $0D:BCEA: 9D 26 02    ;
CODE_0DBCED:    STA $0E16               ; $0D:BCED: 8D 16 0E    ;
CODE_0DBCF0:    LDA $78                 ; $0D:BCF0: A5 78       ;
CODE_0DBCF2:    ADC #$00                ; $0D:BCF2: 69 00       ;
CODE_0DBCF4:    STA $85,x               ; $0D:BCF4: 95 85       ;
CODE_0DBCF6:    STA $03EC,x             ; $0D:BCF6: 9D EC 03    ;
CODE_0DBCF9:    STA $0E17               ; $0D:BCF9: 8D 17 0E    ;
CODE_0DBCFC:    LDA $BB                 ; $0D:BCFC: A5 BB       ;
CODE_0DBCFE:    STA $C8,x               ; $0D:BCFE: 95 C8       ;
CODE_0DBD00:    RTS                     ; $0D:BD00: 60          ;

CODE_0DBD01:    JSR CODE_0DBDB4         ; $0D:BD01: 20 B4 BD    ;
CODE_0DBD04:    LDA #$01                ; $0D:BD04: A9 01       ;
CODE_0DBD06:    STA $1600               ; $0D:BD06: 8D 00 16    ;
CODE_0DBD09:    LDA #$00                ; $0D:BD09: A9 00       ;
CODE_0DBD0B:    STA $6A,x               ; $0D:BD0B: 95 6A       ;
CODE_0DBD0D:    STA $0449,x             ; $0D:BD0D: 9D 49 04    ;
CODE_0DBD10:    STA $A0                 ; $0D:BD10: 85 A0       ;
CODE_0DBD12:    LDA #$FE                ; $0D:BD12: A9 FE       ;
CODE_0DBD14:    STA $AD,x               ; $0D:BD14: 95 AD       ;
CODE_0DBD16:    LDA $05                 ; $0D:BD16: A5 05       ;
CODE_0DBD18:    JSR CODE_0DBD83         ; $0D:BD18: 20 83 BD    ;
CODE_0DBD1B:    BCC CODE_0DBD6D         ; $0D:BD1B: 90 50       ;
CODE_0DBD1D:    TYA                     ; $0D:BD1D: 98          ;
CODE_0DBD1E:    CMP #$0D                ; $0D:BD1E: C9 0D       ;
CODE_0DBD20:    BCC CODE_0DBD24         ; $0D:BD20: 90 02       ;
CODE_0DBD22:    SBC #$06                ; $0D:BD22: E9 06       ;
CODE_0DBD24:    ASL A                   ; $0D:BD24: 0A          ;
CODE_0DBD25:    TAY                     ; $0D:BD25: A8          ;
CODE_0DBD26:    LDA PNTR_0DBD33,y       ; $0D:BD26: B9 33 BD    ;
CODE_0DBD29:    STA $04                 ; $0D:BD29: 85 04       ;
CODE_0DBD2B:    LDA PNTR_0DBD33+1,y     ; $0D:BD2B: B9 34 BD    ;
CODE_0DBD2E:    STA $05                 ; $0D:BD2E: 85 05       ;
CODE_0DBD30:    JMP ($0004)             ; $0D:BD30: 6C 04 00    ;

PNTR_0DBD33:        dw CODE_0DBD51
                    dw CODE_0DBD59
                    dw CODE_0DBA2C
                    dw CODE_0DBA2C
                    dw CODE_0DBD5D
                    dw CODE_0DBD59
                    dw CODE_0DBD51
                    dw CODE_0DBD51
                    dw CODE_0DBD59
                    dw CODE_0DBD65
                    dw CODE_0DBD55
                    dw CODE_0DBA2C
                    dw CODE_0DBD5D
                    dw CODE_0DBD65
                    dw CODE_0DBD55

CODE_0DBD51:    LDA #$00                ; $0D:BD51: A9 00       ;
CODE_0DBD53:    BRA CODE_0DBD5F         ; $0D:BD53: 80 0A       ;

CODE_0DBD55:    LDA #$02                ; $0D:BD55: A9 02       ;
CODE_0DBD57:    BRA CODE_0DBD5F         ; $0D:BD57: 80 06       ;

CODE_0DBD59:    LDA #$04                ; $0D:BD59: A9 04       ;
CODE_0DBD5B:    BRA CODE_0DBD5F         ; $0D:BD5B: 80 02       ;

CODE_0DBD5D:    LDA #$03                ; $0D:BD5D: A9 03       ;
CODE_0DBD5F:    STA $020C               ; $0D:BD5F: 8D 0C 02    ;
CODE_0DBD62:    JMP CODE_0DBB4C         ; $0D:BD62: 4C 4C BB    ;

CODE_0DBD65:    LDX #$09                ; $0D:BD65: A2 09       ;
CODE_0DBD67:    LDY $03F0               ; $0D:BD67: AC F0 03    ;
CODE_0DBD6A:    JSR CODE_0DB7C9         ; $0D:BD6A: 20 C9 B7    ;
CODE_0DBD6D:    RTS                     ; $0D:BD6D: 60          ;

DATA_0DBD6E:        db $E8,$E9,$E7,$5C,$5D,$5E,$5F,$50
                    db $51,$52,$53,$54,$55,$56,$57,$58
                    db $59,$5A,$5B,$60,$61

CODE_0DBD83:    LDY #$14                ; $0D:BD83: A0 14       ;
CODE_0DBD85:    CMP DATA_0DBD6E,y       ; $0D:BD85: D9 6E BD    ;
CODE_0DBD88:    BEQ CODE_0DBD8E         ; $0D:BD88: F0 04       ;
CODE_0DBD8A:    DEY                     ; $0D:BD8A: 88          ;
CODE_0DBD8B:    BPL CODE_0DBD85         ; $0D:BD8B: 10 F8       ;
CODE_0DBD8D:    CLC                     ; $0D:BD8D: 18          ;
CODE_0DBD8E:    RTS                     ; $0D:BD8E: 60          ;

CODE_0DBD8F:    JSR CODE_0DBDB4         ; $0D:BD8F: 20 B4 BD    ;
CODE_0DBD92:    LDA #$01                ; $0D:BD92: A9 01       ;
CODE_0DBD94:    STA $03EE,x             ; $0D:BD94: 9D EE 03    ;
CODE_0DBD97:    LDA $1603               ; $0D:BD97: AD 03 16    ;
CODE_0DBD9A:    BNE CODE_0DBDA1         ; $0D:BD9A: D0 05       ;
CODE_0DBD9C:    LDA #$07                ; $0D:BD9C: A9 07       ;
CODE_0DBD9E:    STA $1603               ; $0D:BD9E: 8D 03 16    ;
CODE_0DBDA1:    JSR CODE_0DBDDB         ; $0D:BDA1: 20 DB BD    ;
CODE_0DBDA4:    LDA #$FE                ; $0D:BDA4: A9 FE       ;
CODE_0DBDA6:    STA $A0                 ; $0D:BDA6: 85 A0       ;
CODE_0DBDA8:    LDA #$05                ; $0D:BDA8: A9 05       ;
CODE_0DBDAA:    STA $014A               ; $0D:BDAA: 8D 4A 01    ;
CODE_0DBDAD:    JSR CODE_0DBB27         ; $0D:BDAD: 20 27 BB    ;
CODE_0DBDB0:    LDX $03F0               ; $0D:BDB0: AE F0 03    ;
CODE_0DBDB3:    RTS                     ; $0D:BDB3: 60          ;

CODE_0DBDB4:    LDX $03F0               ; $0D:BDB4: AE F0 03    ;
CODE_0DBDB7:    LDY $02                 ; $0D:BDB7: A4 02       ;
CODE_0DBDB9:    BEQ CODE_0DBDDA         ; $0D:BDB9: F0 1F       ;
CODE_0DBDBB:    TYA                     ; $0D:BDBB: 98          ;
CODE_0DBDBC:    SEC                     ; $0D:BDBC: 38          ;
CODE_0DBDBD:    SBC #$10                ; $0D:BDBD: E9 10       ;
CODE_0DBDBF:    STA $02                 ; $0D:BDBF: 85 02       ;
CODE_0DBDC1:    TAY                     ; $0D:BDC1: A8          ;
CODE_0DBDC2:    LDA ($06),y             ; $0D:BDC2: B1 06       ;
CODE_0DBDC4:    CMP #$EA                ; $0D:BDC4: C9 EA       ;
CODE_0DBDC6:    BNE CODE_0DBDDA         ; $0D:BDC6: D0 12       ;
CODE_0DBDC8:    LDA #$00                ; $0D:BDC8: A9 00       ;
CODE_0DBDCA:    STA ($06),y             ; $0D:BDCA: 91 06       ;
CODE_0DBDCC:    LDA #$01                ; $0D:BDCC: A9 01       ;
CODE_0DBDCE:    STA $1603               ; $0D:BDCE: 8D 03 16    ;
CODE_0DBDD1:    JSR CODE_0D9046         ; $0D:BDD1: 20 46 90    ;
CODE_0DBDD4:    LDX $03F0               ; $0D:BDD4: AE F0 03    ;
CODE_0DBDD7:    JSR CODE_0DBA46         ; $0D:BDD7: 20 46 BA    ;
CODE_0DBDDA:    RTS                     ; $0D:BDDA: 60          ;

CODE_0DBDDB:    LDA $0226,x             ; $0D:BDDB: BD 26 02    ;
CODE_0DBDDE:    STA $03F3,x             ; $0D:BDDE: 9D F3 03    ;
CODE_0DBDE1:    LDA #$F0                ; $0D:BDE1: A9 F0       ;
CODE_0DBDE3:    STA $6A,x               ; $0D:BDE3: 95 6A       ;
CODE_0DBDE5:    STA $6C,x               ; $0D:BDE5: 95 6C       ;
CODE_0DBDE7:    LDA #$FA                ; $0D:BDE7: A9 FA       ;
CODE_0DBDE9:    STA $AD,x               ; $0D:BDE9: 95 AD       ;
CODE_0DBDEB:    LDA #$FC                ; $0D:BDEB: A9 FC       ;
CODE_0DBDED:    STA $AF,x               ; $0D:BDED: 95 AF       ;
CODE_0DBDEF:    LDA #$00                ; $0D:BDEF: A9 00       ;
CODE_0DBDF1:    STA $0449,x             ; $0D:BDF1: 9D 49 04    ;
CODE_0DBDF4:    STA $044B,x             ; $0D:BDF4: 9D 4B 04    ;
CODE_0DBDF7:    LDA $85,x               ; $0D:BDF7: B5 85       ;
CODE_0DBDF9:    STA $87,x               ; $0D:BDF9: 95 87       ;
CODE_0DBDFB:    LDA $0226,x             ; $0D:BDFB: BD 26 02    ;
CODE_0DBDFE:    STA $0228,x             ; $0D:BDFE: 9D 28 02    ;
CODE_0DBE01:    LDA $0244,x             ; $0D:BE01: BD 44 02    ;
CODE_0DBE04:    CLC                     ; $0D:BE04: 18          ;
CODE_0DBE05:    ADC #$08                ; $0D:BE05: 69 08       ;
CODE_0DBE07:    STA $0246,x             ; $0D:BE07: 9D 46 02    ;
CODE_0DBE0A:    LDA #$FA                ; $0D:BE0A: A9 FA       ;
CODE_0DBE0C:    STA $AD,x               ; $0D:BE0C: 95 AD       ;
CODE_0DBE0E:    RTS                     ; $0D:BE0E: 60          ;

CODE_0DBE0F:    LDA $35,x               ; $0D:BE0F: B5 35       ;
CODE_0DBE11:    BEQ CODE_0DBE76         ; $0D:BE11: F0 63       ;
CODE_0DBE13:    AND #$0F                ; $0D:BE13: 29 0F       ;
CODE_0DBE15:    PHA                     ; $0D:BE15: 48          ;
CODE_0DBE16:    TAY                     ; $0D:BE16: A8          ;
CODE_0DBE17:    TXA                     ; $0D:BE17: 8A          ;
CODE_0DBE18:    CLC                     ; $0D:BE18: 18          ;
CODE_0DBE19:    ADC #$0D                ; $0D:BE19: 69 0D       ;
CODE_0DBE1B:    TAX                     ; $0D:BE1B: AA          ;
CODE_0DBE1C:    DEY                     ; $0D:BE1C: 88          ;
CODE_0DBE1D:    BEQ CODE_0DBE55         ; $0D:BE1D: F0 36       ;
CODE_0DBE1F:    JSR CODE_0DBF46         ; $0D:BE1F: 20 46 BF    ;
CODE_0DBE22:    JSR CODE_0DBEAD         ; $0D:BE22: 20 AD BE    ;
CODE_0DBE25:    TXA                     ; $0D:BE25: 8A          ;
CODE_0DBE26:    CLC                     ; $0D:BE26: 18          ;
CODE_0DBE27:    ADC #$02                ; $0D:BE27: 69 02       ;
CODE_0DBE29:    TAX                     ; $0D:BE29: AA          ;
CODE_0DBE2A:    JSR CODE_0DBF46         ; $0D:BE2A: 20 46 BF    ;
CODE_0DBE2D:    JSR CODE_0DBEAD         ; $0D:BE2D: 20 AD BE    ;
CODE_0DBE30:    LDX $9E                 ; $0D:BE30: A6 9E       ;
CODE_0DBE32:    JSR CODE_0DFD56         ; $0D:BE32: 20 56 FD    ;
CODE_0DBE35:    JSR CODE_0DFDE7         ; $0D:BE35: 20 E7 FD    ;
CODE_0DBE38:    JSR CODE_0DF39C         ; $0D:BE38: 20 9C F3    ;
CODE_0DBE3B:    PLA                     ; $0D:BE3B: 68          ;
CODE_0DBE3C:    LDY $C8,x               ; $0D:BE3C: B4 C8       ;
CODE_0DBE3E:    BEQ CODE_0DBE76         ; $0D:BE3E: F0 36       ;
CODE_0DBE40:    PHA                     ; $0D:BE40: 48          ;
CODE_0DBE41:    LDA #$F0                ; $0D:BE41: A9 F0       ;
CODE_0DBE43:    CMP $0246,x             ; $0D:BE43: DD 46 02    ;
CODE_0DBE46:    BCS CODE_0DBE4B         ; $0D:BE46: B0 03       ;
CODE_0DBE48:    STA $0246,x             ; $0D:BE48: 9D 46 02    ;
CODE_0DBE4B:    LDA $0244,x             ; $0D:BE4B: BD 44 02    ;
CODE_0DBE4E:    CMP #$F0                ; $0D:BE4E: C9 F0       ;
CODE_0DBE50:    PLA                     ; $0D:BE50: 68          ;
CODE_0DBE51:    BCC CODE_0DBE76         ; $0D:BE51: 90 23       ;
CODE_0DBE53:    BCS CODE_0DBE74         ; $0D:BE53: B0 1F       ;
CODE_0DBE55:    JSR CODE_0DBF46         ; $0D:BE55: 20 46 BF    ;
CODE_0DBE58:    LDX $9E                 ; $0D:BE58: A6 9E       ;
CODE_0DBE5A:    JSR CODE_0DFD56         ; $0D:BE5A: 20 56 FD    ;
CODE_0DBE5D:    JSR CODE_0DFDE7         ; $0D:BE5D: 20 E7 FD    ;
CODE_0DBE60:    JSR CODE_0DF348         ; $0D:BE60: 20 48 F3    ;
CODE_0DBE63:    PLA                     ; $0D:BE63: 68          ;
CODE_0DBE64:    STA $35,x               ; $0D:BE64: 95 35       ;
CODE_0DBE66:    LDA $0244,x             ; $0D:BE66: BD 44 02    ;
CODE_0DBE69:    AND #$0F                ; $0D:BE69: 29 0F       ;
CODE_0DBE6B:    CMP #$05                ; $0D:BE6B: C9 05       ;
CODE_0DBE6D:    BCS CODE_0DBE76         ; $0D:BE6D: B0 07       ;
CODE_0DBE6F:    LDA #$01                ; $0D:BE6F: A9 01       ;
CODE_0DBE71:    STA $03EE,x             ; $0D:BE71: 9D EE 03    ;
CODE_0DBE74:    STZ $35,x               ; $0D:BE74: 74 35       ;
CODE_0DBE76:    RTS                     ; $0D:BE76: 60          ;

CODE_0DBE77:    LDX #$01                ; $0D:BE77: A2 01       ;
CODE_0DBE79:    STX $9E                 ; $0D:BE79: 86 9E       ;
CODE_0DBE7B:    LDA $03EE,x             ; $0D:BE7B: BD EE 03    ;
CODE_0DBE7E:    BEQ CODE_0DBE9C         ; $0D:BE7E: F0 1C       ;
CODE_0DBE80:    LDA $03E8,x             ; $0D:BE80: BD E8 03    ;
CODE_0DBE83:    STA $06                 ; $0D:BE83: 85 06       ;
CODE_0DBE85:    LDA #$05                ; $0D:BE85: A9 05       ;
CODE_0DBE87:    STA $07                 ; $0D:BE87: 85 07       ;
CODE_0DBE89:    LDA $03E6,x             ; $0D:BE89: BD E6 03    ;
CODE_0DBE8C:    STA $02                 ; $0D:BE8C: 85 02       ;
CODE_0DBE8E:    TAY                     ; $0D:BE8E: A8          ;
CODE_0DBE8F:    LDA $03EA,x             ; $0D:BE8F: BD EA 03    ;
CODE_0DBE92:    STA ($06),y             ; $0D:BE92: 91 06       ;
CODE_0DBE94:    JSR CODE_0D9057         ; $0D:BE94: 20 57 90    ;
CODE_0DBE97:    LDA #$00                ; $0D:BE97: A9 00       ;
CODE_0DBE99:    STA $03EE,x             ; $0D:BE99: 9D EE 03    ;
CODE_0DBE9C:    DEX                     ; $0D:BE9C: CA          ;
CODE_0DBE9D:    BPL CODE_0DBE79         ; $0D:BE9D: 10 DA       ;
CODE_0DBE9F:    RTS                     ; $0D:BE9F: 60          ;

CODE_0DBEA0:    INX                     ; $0D:BEA0: E8          ;
CODE_0DBEA1:    JSR CODE_0DBEAD         ; $0D:BEA1: 20 AD BE    ;
CODE_0DBEA4:    LDX $9E                 ; $0D:BEA4: A6 9E       ;
CODE_0DBEA6:    RTS                     ; $0D:BEA6: 60          ;

CODE_0DBEA7:    LDA $070E               ; $0D:BEA7: AD 0E 07    ;
CODE_0DBEAA:    BNE CODE_0DBEEF         ; $0D:BEAA: D0 43       ;
CODE_0DBEAC:    TAX                     ; $0D:BEAC: AA          ;
CODE_0DBEAD:    LDA $5D,x               ; $0D:BEAD: B5 5D       ;
CODE_0DBEAF:    ASL A                   ; $0D:BEAF: 0A          ;
CODE_0DBEB0:    ASL A                   ; $0D:BEB0: 0A          ;
CODE_0DBEB1:    ASL A                   ; $0D:BEB1: 0A          ;
CODE_0DBEB2:    ASL A                   ; $0D:BEB2: 0A          ;
CODE_0DBEB3:    STA $01                 ; $0D:BEB3: 85 01       ;
CODE_0DBEB5:    LDA $5D,x               ; $0D:BEB5: B5 5D       ;
CODE_0DBEB7:    LSR A                   ; $0D:BEB7: 4A          ;
CODE_0DBEB8:    LSR A                   ; $0D:BEB8: 4A          ;
CODE_0DBEB9:    LSR A                   ; $0D:BEB9: 4A          ;
CODE_0DBEBA:    LSR A                   ; $0D:BEBA: 4A          ;
CODE_0DBEBB:    CMP #$08                ; $0D:BEBB: C9 08       ;
CODE_0DBEBD:    BCC CODE_0DBEC1         ; $0D:BEBD: 90 02       ;
CODE_0DBEBF:    ORA #$F0                ; $0D:BEBF: 09 F0       ;
CODE_0DBEC1:    STA $00                 ; $0D:BEC1: 85 00       ;
CODE_0DBEC3:    STA $0EB6               ; $0D:BEC3: 8D B6 0E    ;
CODE_0DBEC6:    LDY #$00                ; $0D:BEC6: A0 00       ;
CODE_0DBEC8:    CMP #$00                ; $0D:BEC8: C9 00       ;
CODE_0DBECA:    BPL CODE_0DBECD         ; $0D:BECA: 10 01       ;
CODE_0DBECC:    DEY                     ; $0D:BECC: 88          ;
CODE_0DBECD:    STY $02                 ; $0D:BECD: 84 02       ;
CODE_0DBECF:    LDA $0401,x             ; $0D:BECF: BD 01 04    ;
CODE_0DBED2:    CLC                     ; $0D:BED2: 18          ;
CODE_0DBED3:    ADC $01                 ; $0D:BED3: 65 01       ;
CODE_0DBED5:    STA $0401,x             ; $0D:BED5: 9D 01 04    ;
CODE_0DBED8:    LDA #$00                ; $0D:BED8: A9 00       ;
CODE_0DBEDA:    ROL A                   ; $0D:BEDA: 2A          ;
CODE_0DBEDB:    PHA                     ; $0D:BEDB: 48          ;
CODE_0DBEDC:    ROR A                   ; $0D:BEDC: 6A          ;
CODE_0DBEDD:    LDA $0219,x             ; $0D:BEDD: BD 19 02    ;
CODE_0DBEE0:    ADC $00                 ; $0D:BEE0: 65 00       ;
CODE_0DBEE2:    STA $0219,x             ; $0D:BEE2: 9D 19 02    ;
CODE_0DBEE5:    LDA $78,x               ; $0D:BEE5: B5 78       ;
CODE_0DBEE7:    ADC $02                 ; $0D:BEE7: 65 02       ;
CODE_0DBEE9:    STA $78,x               ; $0D:BEE9: 95 78       ;
CODE_0DBEEB:    PLA                     ; $0D:BEEB: 68          ;
CODE_0DBEEC:    CLC                     ; $0D:BEEC: 18          ;
CODE_0DBEED:    ADC $00                 ; $0D:BEED: 65 00       ;
CODE_0DBEEF:    RTS                     ; $0D:BEEF: 60          ;

CODE_0DBEF0:    LDX #$00                ; $0D:BEF0: A2 00       ;
CODE_0DBEF2:    LDA $0747               ; $0D:BEF2: AD 47 07    ;
CODE_0DBEF5:    BNE CODE_0DBEFC         ; $0D:BEF5: D0 05       ;
CODE_0DBEF7:    LDA $070E               ; $0D:BEF7: AD 0E 07    ;
CODE_0DBEFA:    BNE CODE_0DBEEF         ; $0D:BEFA: D0 F3       ;
CODE_0DBEFC:    LDA $0709               ; $0D:BEFC: AD 09 07    ;
CODE_0DBEFF:    STA $00                 ; $0D:BEFF: 85 00       ;
CODE_0DBF01:    LDA #$04                ; $0D:BF01: A9 04       ;
CODE_0DBF03:    JMP CODE_0DBF4F         ; $0D:BF03: 4C 4F BF    ;

CODE_0DBF06:    LDY #$3D                ; $0D:BF06: A0 3D       ;
CODE_0DBF08:    LDA $29,x               ; $0D:BF08: B5 29       ;
CODE_0DBF0A:    CMP #$05                ; $0D:BF0A: C9 05       ;
CODE_0DBF0C:    BNE CODE_0DBF35         ; $0D:BF0C: D0 27       ;
CODE_0DBF0E:    LDY #$20                ; $0D:BF0E: A0 20       ;
CODE_0DBF10:    BRA CODE_0DBF35         ; $0D:BF10: 80 23       ;

CODE_0DBF12:    LDY #$00                ; $0D:BF12: A0 00       ;
CODE_0DBF14:    BRA CODE_0DBF18         ; $0D:BF14: 80 02       ;

CODE_0DBF16:    LDY #$01                ; $0D:BF16: A0 01       ;
CODE_0DBF18:    INX                     ; $0D:BF18: E8          ;
CODE_0DBF19:    LDA #$03                ; $0D:BF19: A9 03       ;
CODE_0DBF1B:    STA $00                 ; $0D:BF1B: 85 00       ;
CODE_0DBF1D:    LDA #$06                ; $0D:BF1D: A9 06       ;
CODE_0DBF1F:    STA $01                 ; $0D:BF1F: 85 01       ;
CODE_0DBF21:    LDA #$02                ; $0D:BF21: A9 02       ;
CODE_0DBF23:    STA $02                 ; $0D:BF23: 85 02       ;
CODE_0DBF25:    TYA                     ; $0D:BF25: 98          ;
CODE_0DBF26:    JMP CODE_0DBF74         ; $0D:BF26: 4C 74 BF    ;

CODE_0DBF29:    LDY #$7F                ; $0D:BF29: A0 7F       ;
CODE_0DBF2B:    BNE CODE_0DBF2F         ; $0D:BF2B: D0 02       ;
CODE_0DBF2D:    LDY #$0F                ; $0D:BF2D: A0 0F       ;
CODE_0DBF2F:    LDA #$02                ; $0D:BF2F: A9 02       ;
CODE_0DBF31:    BNE CODE_0DBF37         ; $0D:BF31: D0 04       ;
CODE_0DBF33:    LDY #$1C                ; $0D:BF33: A0 1C       ;
CODE_0DBF35:    LDA #$03                ; $0D:BF35: A9 03       ;
CODE_0DBF37:    STY $00                 ; $0D:BF37: 84 00       ;
CODE_0DBF39:    INX                     ; $0D:BF39: E8          ;
CODE_0DBF3A:    JSR CODE_0DBF4F         ; $0D:BF3A: 20 4F BF    ;
CODE_0DBF3D:    LDX $9E                 ; $0D:BF3D: A6 9E       ;
CODE_0DBF3F:    RTS                     ; $0D:BF3F: 60          ;

DATA_0DBF40:        db $06,$08

CODE_0DBF42:    LDY #$00                ; $0D:BF42: A0 00       ;
CODE_0DBF44:    BRA CODE_0DBF46         ; $0D:BF44: 80 00       ;

CODE_0DBF46:    LDY #$01                ; $0D:BF46: A0 01       ;
CODE_0DBF48:    LDA #$50                ; $0D:BF48: A9 50       ;
CODE_0DBF4A:    STA $00                 ; $0D:BF4A: 85 00       ;
CODE_0DBF4C:    LDA DATA_0DBF40,y       ; $0D:BF4C: B9 40 BF    ;
CODE_0DBF4F:    STA $02                 ; $0D:BF4F: 85 02       ;
CODE_0DBF51:    LDA #$00                ; $0D:BF51: A9 00       ;
CODE_0DBF53:    JMP CODE_0DBF7E         ; $0D:BF53: 4C 7E BF    ;

CODE_0DBF56:    LDA #$00                ; $0D:BF56: A9 00       ;
CODE_0DBF58:    BRA CODE_0DBF5C         ; $0D:BF58: 80 02       ;

CODE_0DBF5A:    LDA #$01                ; $0D:BF5A: A9 01       ;
CODE_0DBF5C:    PHA                     ; $0D:BF5C: 48          ;
CODE_0DBF5D:    LDY $1C,x               ; $0D:BF5D: B4 1C       ;
CODE_0DBF5F:    INX                     ; $0D:BF5F: E8          ;
CODE_0DBF60:    LDA #$05                ; $0D:BF60: A9 05       ;
CODE_0DBF62:    CPY #$29                ; $0D:BF62: C0 29       ;
CODE_0DBF64:    BNE CODE_0DBF68         ; $0D:BF64: D0 02       ;
CODE_0DBF66:    LDA #$09                ; $0D:BF66: A9 09       ;
CODE_0DBF68:    STA $00                 ; $0D:BF68: 85 00       ;
CODE_0DBF6A:    LDA #$0A                ; $0D:BF6A: A9 0A       ;
CODE_0DBF6C:    STA $01                 ; $0D:BF6C: 85 01       ;
CODE_0DBF6E:    LDA #$03                ; $0D:BF6E: A9 03       ;
CODE_0DBF70:    STA $02                 ; $0D:BF70: 85 02       ;
CODE_0DBF72:    PLA                     ; $0D:BF72: 68          ;
CODE_0DBF73:    TAY                     ; $0D:BF73: A8          ;
CODE_0DBF74:    JSR CODE_0DBF7E         ; $0D:BF74: 20 7E BF    ;
CODE_0DBF77:    LDX $9E                 ; $0D:BF77: A6 9E       ;
CODE_0DBF79:    RTS                     ; $0D:BF79: 60          ;

CODE_0DBF7A:    JSR CODE_0DBF7E         ; $0D:BF7A: 20 7E BF    ;
CODE_0DBF7D:    RTL                     ; $0D:BF7D: 6B          ;

CODE_0DBF7E:    PHA                     ; $0D:BF7E: 48          ;
CODE_0DBF7F:    LDA $041C,x             ; $0D:BF7F: BD 1C 04    ;
CODE_0DBF82:    CLC                     ; $0D:BF82: 18          ;
CODE_0DBF83:    ADC $043C,x             ; $0D:BF83: 7D 3C 04    ;
CODE_0DBF86:    STA $041C,x             ; $0D:BF86: 9D 1C 04    ;
CODE_0DBF89:    LDY #$00                ; $0D:BF89: A0 00       ;
CODE_0DBF8B:    LDA $A0,x               ; $0D:BF8B: B5 A0       ;
CODE_0DBF8D:    BPL CODE_0DBF90         ; $0D:BF8D: 10 01       ;
CODE_0DBF8F:    DEY                     ; $0D:BF8F: 88          ;
CODE_0DBF90:    STY $07                 ; $0D:BF90: 84 07       ;
CODE_0DBF92:    ADC $0237,x             ; $0D:BF92: 7D 37 02    ;
CODE_0DBF95:    STA $0237,x             ; $0D:BF95: 9D 37 02    ;
CODE_0DBF98:    LDA $BB,x               ; $0D:BF98: B5 BB       ;
CODE_0DBF9A:    ADC $07                 ; $0D:BF9A: 65 07       ;
CODE_0DBF9C:    STA $BB,x               ; $0D:BF9C: 95 BB       ;
CODE_0DBF9E:    LDA $043C,x             ; $0D:BF9E: BD 3C 04    ;
CODE_0DBFA1:    CLC                     ; $0D:BFA1: 18          ;
CODE_0DBFA2:    ADC $00                 ; $0D:BFA2: 65 00       ;
CODE_0DBFA4:    STA $043C,x             ; $0D:BFA4: 9D 3C 04    ;
CODE_0DBFA7:    LDA $A0,x               ; $0D:BFA7: B5 A0       ;
CODE_0DBFA9:    ADC #$00                ; $0D:BFA9: 69 00       ;
CODE_0DBFAB:    STA $A0,x               ; $0D:BFAB: 95 A0       ;
CODE_0DBFAD:    CMP $02                 ; $0D:BFAD: C5 02       ;
CODE_0DBFAF:    BMI CODE_0DBFBF         ; $0D:BFAF: 30 0E       ;
CODE_0DBFB1:    LDA $043C,x             ; $0D:BFB1: BD 3C 04    ;
CODE_0DBFB4:    CMP #$80                ; $0D:BFB4: C9 80       ;
CODE_0DBFB6:    BCC CODE_0DBFBF         ; $0D:BFB6: 90 07       ;
CODE_0DBFB8:    LDA $02                 ; $0D:BFB8: A5 02       ;
CODE_0DBFBA:    STA $A0,x               ; $0D:BFBA: 95 A0       ;
CODE_0DBFBC:    STZ $043C,x             ; $0D:BFBC: 9E 3C 04    ;
CODE_0DBFBF:    PLA                     ; $0D:BFBF: 68          ;
CODE_0DBFC0:    BEQ CODE_0DBFEC         ; $0D:BFC0: F0 2A       ;
CODE_0DBFC2:    LDA $02                 ; $0D:BFC2: A5 02       ;
CODE_0DBFC4:    EOR #$FF                ; $0D:BFC4: 49 FF       ;
CODE_0DBFC6:    INC A                   ; $0D:BFC6: 1A          ;
CODE_0DBFC7:    STA $07                 ; $0D:BFC7: 85 07       ;
CODE_0DBFC9:    LDA $043C,x             ; $0D:BFC9: BD 3C 04    ;
CODE_0DBFCC:    SEC                     ; $0D:BFCC: 38          ;
CODE_0DBFCD:    SBC $01                 ; $0D:BFCD: E5 01       ;
CODE_0DBFCF:    STA $043C,x             ; $0D:BFCF: 9D 3C 04    ;
CODE_0DBFD2:    LDA $A0,x               ; $0D:BFD2: B5 A0       ;
CODE_0DBFD4:    SBC #$00                ; $0D:BFD4: E9 00       ;
CODE_0DBFD6:    STA $A0,x               ; $0D:BFD6: 95 A0       ;
CODE_0DBFD8:    CMP $07                 ; $0D:BFD8: C5 07       ;
CODE_0DBFDA:    BPL CODE_0DBFEC         ; $0D:BFDA: 10 10       ;
CODE_0DBFDC:    LDA $043C,x             ; $0D:BFDC: BD 3C 04    ;
CODE_0DBFDF:    CMP #$80                ; $0D:BFDF: C9 80       ;
CODE_0DBFE1:    BCS CODE_0DBFEC         ; $0D:BFE1: B0 09       ;
CODE_0DBFE3:    LDA $07                 ; $0D:BFE3: A5 07       ;
CODE_0DBFE5:    STA $A0,x               ; $0D:BFE5: 95 A0       ;
CODE_0DBFE7:    LDA #$FF                ; $0D:BFE7: A9 FF       ;
CODE_0DBFE9:    STA $043C,x             ; $0D:BFE9: 9D 3C 04    ;
CODE_0DBFEC:    RTS                     ; $0D:BFEC: 60          ;

CODE_0DBFED:    LDA $0E9D,x             ; $0D:BFED: BD 9D 0E    ;
CODE_0DBFF0:    BEQ CODE_0DC054         ; $0D:BFF0: F0 62       ;
CODE_0DBFF2:    INC $0EA2,x             ; $0D:BFF2: FE A2 0E    ;
CODE_0DBFF5:    LDA $0EA2,x             ; $0D:BFF5: BD A2 0E    ;
CODE_0DBFF8:    LSR A                   ; $0D:BFF8: 4A          ;
CODE_0DBFF9:    LSR A                   ; $0D:BFF9: 4A          ;
CODE_0DBFFA:    LSR A                   ; $0D:BFFA: 4A          ;
CODE_0DBFFB:    CMP #$03                ; $0D:BFFB: C9 03       ;
CODE_0DBFFD:    BEQ CODE_0DC055         ; $0D:BFFD: F0 56       ;
CODE_0DBFFF:    ASL A                   ; $0D:BFFF: 0A          ;
CODE_0DC000:    CLC                     ; $0D:C000: 18          ;
CODE_0DC001:    ADC #$40                ; $0D:C001: 69 40       ;
CODE_0DC003:    STA $E4                 ; $0D:C003: 85 E4       ;
CODE_0DC005:    LDA $0EAC,x             ; $0D:C005: BD AC 0E    ;
CODE_0DC008:    STA $E5                 ; $0D:C008: 85 E5       ;
CODE_0DC00A:    LDA $0EA7,x             ; $0D:C00A: BD A7 0E    ;
CODE_0DC00D:    STA $E6                 ; $0D:C00D: 85 E6       ;
CODE_0DC00F:    REP #$20                ; $0D:C00F: C2 20       ;
CODE_0DC011:    LDA $E5                 ; $0D:C011: A5 E5       ;
CODE_0DC013:    SEC                     ; $0D:C013: 38          ;
CODE_0DC014:    SBC $42                 ; $0D:C014: E5 42       ;
CODE_0DC016:    PHA                     ; $0D:C016: 48          ;
CODE_0DC017:    LDA $0EB5               ; $0D:C017: AD B5 0E    ;
CODE_0DC01A:    BMI CODE_0DC023         ; $0D:C01A: 30 07       ;
CODE_0DC01C:    PLA                     ; $0D:C01C: 68          ;
CODE_0DC01D:    CLC                     ; $0D:C01D: 18          ;
CODE_0DC01E:    ADC #$000C              ; $0D:C01E: 69 0C 00    ;
CODE_0DC021:    BRA CODE_0DC028         ; $0D:C021: 80 05       ;

CODE_0DC023:    PLA                     ; $0D:C023: 68          ;
CODE_0DC024:    SEC                     ; $0D:C024: 38          ;
CODE_0DC025:    SBC #$000C              ; $0D:C025: E9 0C 00    ;
CODE_0DC028:    STA $E5                 ; $0D:C028: 85 E5       ;
CODE_0DC02A:    SEP #$20                ; $0D:C02A: E2 20       ;
CODE_0DC02C:    PHY                     ; $0D:C02C: 5A          ;
CODE_0DC02D:    LDY $0B46,x             ; $0D:C02D: BC 46 0B    ;
CODE_0DC030:    LDA $E5                 ; $0D:C030: A5 E5       ;
CODE_0DC032:    STA $0900,y             ; $0D:C032: 99 00 09    ;
CODE_0DC035:    LDA $0EB1,x             ; $0D:C035: BD B1 0E    ;
CODE_0DC038:    STA $0901,y             ; $0D:C038: 99 01 09    ;
CODE_0DC03B:    LDA $E4                 ; $0D:C03B: A5 E4       ;
CODE_0DC03D:    STA $0902,y             ; $0D:C03D: 99 02 09    ;
CODE_0DC040:    LDA #$2D                ; $0D:C040: A9 2D       ;
CODE_0DC042:    STA $0903,y             ; $0D:C042: 99 03 09    ;
CODE_0DC045:    LDA #$02                ; $0D:C045: A9 02       ;
CODE_0DC047:    STA $0D00,y             ; $0D:C047: 99 00 0D    ;
CODE_0DC04A:    LDA $E6                 ; $0D:C04A: A5 E6       ;
CODE_0DC04C:    BEQ CODE_0DC053         ; $0D:C04C: F0 05       ;
CODE_0DC04E:    LDA #$03                ; $0D:C04E: A9 03       ;
CODE_0DC050:    STA $0D00,y             ; $0D:C050: 99 00 0D    ;
CODE_0DC053:    PLY                     ; $0D:C053: 7A          ;
CODE_0DC054:    RTS                     ; $0D:C054: 60          ;

CODE_0DC055:    STZ $0E9D,x             ; $0D:C055: 9E 9D 0E    ;
CODE_0DC058:    TXA                     ; $0D:C058: 8A          ;
CODE_0DC059:    ASL A                   ; $0D:C059: 0A          ;
CODE_0DC05A:    ASL A                   ; $0D:C05A: 0A          ;
CODE_0DC05B:    ASL A                   ; $0D:C05B: 0A          ;
CODE_0DC05C:    STA $E8                 ; $0D:C05C: 85 E8       ;
CODE_0DC05E:    ASL A                   ; $0D:C05E: 0A          ;
CODE_0DC05F:    CLC                     ; $0D:C05F: 18          ;
CODE_0DC060:    ADC $E8                 ; $0D:C060: 65 E8       ;
CODE_0DC062:    PHX                     ; $0D:C062: DA          ;
CODE_0DC063:    TAX                     ; $0D:C063: AA          ;
CODE_0DC064:    LDA #$F0                ; $0D:C064: A9 F0       ;
CODE_0DC066:    STA $0901,x             ; $0D:C066: 9D 01 09    ;
CODE_0DC069:    STZ $0D00,x             ; $0D:C069: 9E 00 0D    ;
CODE_0DC06C:    PLX                     ; $0D:C06C: FA          ;
CODE_0DC06D:    RTS                     ; $0D:C06D: 60          ;

CODE_0DC06E:    STA $0E9D,x             ; $0D:C06E: 9D 9D 0E    ;
CODE_0DC071:    STZ $0EA2,x             ; $0D:C071: 9E A2 0E    ;
CODE_0DC074:    LDA $021A,x             ; $0D:C074: BD 1A 02    ;
CODE_0DC077:    STA $0EAC,x             ; $0D:C077: 9D AC 0E    ;
CODE_0DC07A:    LDA $79,x               ; $0D:C07A: B5 79       ;
CODE_0DC07C:    STA $0EA7,x             ; $0D:C07C: 9D A7 0E    ;
CODE_0DC07F:    LDA $0238,x             ; $0D:C07F: BD 38 02    ;
CODE_0DC082:    CLC                     ; $0D:C082: 18          ;
CODE_0DC083:    ADC #$08                ; $0D:C083: 69 08       ;
CODE_0DC085:    STA $0EB1,x             ; $0D:C085: 9D B1 0E    ;
CODE_0DC088:    RTS                     ; $0D:C088: 60          ;

CODE_0DC089:    LDA $0E7F               ; $0D:C089: AD 7F 0E    ;
CODE_0DC08C:    LSR A                   ; $0D:C08C: 4A          ;
CODE_0DC08D:    BCC CODE_0DC0D4         ; $0D:C08D: 90 45       ;
CODE_0DC08F:    LDA $1201               ; $0D:C08F: AD 01 12    ;
CODE_0DC092:    BMI CODE_0DC0CA         ; $0D:C092: 30 36       ;
CODE_0DC094:    DEC $1201               ; $0D:C094: CE 01 12    ;
CODE_0DC097:    BNE CODE_0DC100         ; $0D:C097: D0 67       ;
CODE_0DC099:    LDA #$80                ; $0D:C099: A9 80       ;
CODE_0DC09B:    STA $2100               ; $0D:C09B: 8D 00 21    ;
CODE_0DC09E:    STA $1201               ; $0D:C09E: 8D 01 12    ;
CODE_0DC0A1:    STZ $420C               ; $0D:C0A1: 9C 0C 42    ;
CODE_0DC0A4:    STZ $1203               ; $0D:C0A4: 9C 03 12    ;
CODE_0DC0A7:    STZ $0B75               ; $0D:C0A7: 9C 75 0B    ;
CODE_0DC0AA:    STZ $1680               ; $0D:C0AA: 9C 80 16    ;
CODE_0DC0AD:    LDA $701FF2             ; $0D:C0AD: AF F2 1F 70 ;
CODE_0DC0B1:    BEQ CODE_0DC0C0         ; $0D:C0B1: F0 0D       ;
CODE_0DC0B3:    LDA $0EC8               ; $0D:C0B3: AD C8 0E    ;
CODE_0DC0B6:    BNE CODE_0DC0BC         ; $0D:C0B6: D0 04       ;
CODE_0DC0B8:    JML CODE_008139         ; $0D:C0B8: 5C 39 81 00 ;

CODE_0DC0BC:    JML CODE_0080DE         ; $0D:C0BC: 5C DE 80 00 ;

CODE_0DC0C0:    JSL CODE_048000         ; $0D:C0C0: 22 00 80 04 ;
CODE_0DC0C4:    JSR CODE_0DC124         ; $0D:C0C4: 20 24 C1    ;
CODE_0DC0C7:    JSR CODE_0DC14F         ; $0D:C0C7: 20 4F C1    ;
CODE_0DC0CA:    STZ $0E7F               ; $0D:C0CA: 9C 7F 0E    ;
CODE_0DC0CD:    LDA #$01                ; $0D:C0CD: A9 01       ;
CODE_0DC0CF:    STA $0774               ; $0D:C0CF: 8D 74 07    ;
CODE_0DC0D2:    BRA CODE_0DC100         ; $0D:C0D2: 80 2C       ;

CODE_0DC0D4:    LDA $0E66               ; $0D:C0D4: AD 66 0E    ;
CODE_0DC0D7:    BNE CODE_0DC0E4         ; $0D:C0D7: D0 0B       ;
CODE_0DC0D9:    LDA $0E                 ; $0D:C0D9: A5 0E       ;
CODE_0DC0DB:    BNE CODE_0DC0E4         ; $0D:C0DB: D0 07       ;
CODE_0DC0DD:    LDA #$01                ; $0D:C0DD: A9 01       ;
CODE_0DC0DF:    STA $0E                 ; $0D:C0DF: 85 0E       ;
CODE_0DC0E1:    JSR CODE_0DAB99         ; $0D:C0E1: 20 99 AB    ;
CODE_0DC0E4:    STZ $0E67               ; $0D:C0E4: 9C 67 0E    ;
CODE_0DC0E7:    LDA $1201               ; $0D:C0E7: AD 01 12    ;
CODE_0DC0EA:    CMP #$0F                ; $0D:C0EA: C9 0F       ;
CODE_0DC0EC:    BEQ CODE_0DC0F8         ; $0D:C0EC: F0 0A       ;
CODE_0DC0EE:    INC $1201               ; $0D:C0EE: EE 01 12    ;
CODE_0DC0F1:    LDA $1201               ; $0D:C0F1: AD 01 12    ;
CODE_0DC0F4:    CMP #$0F                ; $0D:C0F4: C9 0F       ;
CODE_0DC0F6:    BNE CODE_0DC100         ; $0D:C0F6: D0 08       ;
CODE_0DC0F8:    STZ $0E7F               ; $0D:C0F8: 9C 7F 0E    ;
CODE_0DC0FB:    STZ $0774               ; $0D:C0FB: 9C 74 07    ;
CODE_0DC0FE:    STZ $0E                 ; $0D:C0FE: 64 0E       ;
CODE_0DC100:    LDA $0E4F               ; $0D:C100: AD 4F 0E    ;
CODE_0DC103:    BEQ CODE_0DC123         ; $0D:C103: F0 1E       ;
CODE_0DC105:    JSR CODE_0DC124         ; $0D:C105: 20 24 C1    ;
CODE_0DC108:    LDA $1201               ; $0D:C108: AD 01 12    ;
CODE_0DC10B:    EOR #$0F                ; $0D:C10B: 49 0F       ;
CODE_0DC10D:    ASL A                   ; $0D:C10D: 0A          ;
CODE_0DC10E:    ASL A                   ; $0D:C10E: 0A          ;
CODE_0DC10F:    ASL A                   ; $0D:C10F: 0A          ;
CODE_0DC110:    ASL A                   ; $0D:C110: 0A          ;
CODE_0DC111:    ORA #$0F                ; $0D:C111: 09 0F       ;
CODE_0DC113:    STA $0E7E               ; $0D:C113: 8D 7E 0E    ;
CODE_0DC116:    JSR CODE_0DC13D         ; $0D:C116: 20 3D C1    ;
CODE_0DC119:    LDA $1201               ; $0D:C119: AD 01 12    ;
CODE_0DC11C:    CMP #$0F                ; $0D:C11C: C9 0F       ;
CODE_0DC11E:    BNE CODE_0DC123         ; $0D:C11E: D0 03       ;
CODE_0DC120:    STZ $0E4F               ; $0D:C120: 9C 4F 0E    ;
CODE_0DC123:    RTS                     ; $0D:C123: 60          ;

CODE_0DC124:    PHX                     ; $0D:C124: DA          ;
CODE_0DC125:    LDX #$00                ; $0D:C125: A2 00       ;
CODE_0DC127:    LDA #$F0                ; $0D:C127: A9 F0       ;
CODE_0DC129:    STA $0801,x             ; $0D:C129: 9D 01 08    ;
CODE_0DC12C:    STA $0901,x             ; $0D:C12C: 9D 01 09    ;
CODE_0DC12F:    STZ $0C00,x             ; $0D:C12F: 9E 00 0C    ;
CODE_0DC132:    STZ $0D00,x             ; $0D:C132: 9E 00 0D    ;
CODE_0DC135:    INX                     ; $0D:C135: E8          ;
CODE_0DC136:    INX                     ; $0D:C136: E8          ;
CODE_0DC137:    INX                     ; $0D:C137: E8          ;
CODE_0DC138:    INX                     ; $0D:C138: E8          ;
CODE_0DC139:    BNE CODE_0DC129         ; $0D:C139: D0 EE       ;
CODE_0DC13B:    PLX                     ; $0D:C13B: FA          ;
CODE_0DC13C:    RTS                     ; $0D:C13C: 60          ;

CODE_0DC13D:    PHY                     ; $0D:C13D: 5A          ;
CODE_0DC13E:    LDY #$D0                ; $0D:C13E: A0 D0       ;
CODE_0DC140:    LDA #$F0                ; $0D:C140: A9 F0       ;
CODE_0DC142:    STA $0801,y             ; $0D:C142: 99 01 08    ;
CODE_0DC145:    INY                     ; $0D:C145: C8          ;
CODE_0DC146:    INY                     ; $0D:C146: C8          ;
CODE_0DC147:    INY                     ; $0D:C147: C8          ;
CODE_0DC148:    INY                     ; $0D:C148: C8          ;
CODE_0DC149:    CPY #$F0                ; $0D:C149: C0 F0       ;
CODE_0DC14B:    BNE CODE_0DC142         ; $0D:C14B: D0 F5       ;
CODE_0DC14D:    PLY                     ; $0D:C14D: 7A          ;
CODE_0DC14E:    RTS                     ; $0D:C14E: 60          ;

CODE_0DC14F:    JSL CODE_00D52E         ; $0D:C14F: 22 2E D5 00 ;
CODE_0DC153:    STZ $0BA5               ; $0D:C153: 9C A5 0B    ;
CODE_0DC156:    STZ $0F06               ; $0D:C156: 9C 06 0F    ;
CODE_0DC159:    STZ $0EC4               ; $0D:C159: 9C C4 0E    ;
CODE_0DC15C:    LDA $075F               ; $0D:C15C: AD 5F 07    ;
CODE_0DC15F:    CMP #$07                ; $0D:C15F: C9 07       ;
CODE_0DC161:    BEQ CODE_0DC167         ; $0D:C161: F0 04       ;
CODE_0DC163:    CMP #$0C                ; $0D:C163: C9 0C       ;
CODE_0DC165:    BNE CODE_0DC16C         ; $0D:C165: D0 05       ;
CODE_0DC167:    LDA #$01                ; $0D:C167: A9 01       ;
CODE_0DC169:    STA $0EC4               ; $0D:C169: 8D C4 0E    ;
CODE_0DC16C:    STZ $0ED1               ; $0D:C16C: 9C D1 0E    ;
CODE_0DC16F:    STZ $0E40               ; $0D:C16F: 9C 40 0E    ;
CODE_0DC172:    STZ $0E41               ; $0D:C172: 9C 41 0E    ;
CODE_0DC175:    STZ $0E42               ; $0D:C175: 9C 42 0E    ;
CODE_0DC178:    STZ $0EDC               ; $0D:C178: 9C DC 0E    ;
CODE_0DC17B:    STZ $0ECF               ; $0D:C17B: 9C CF 0E    ;
CODE_0DC17E:    LDA #$01                ; $0D:C17E: A9 01       ;
CODE_0DC180:    STA $0ECE               ; $0D:C180: 8D CE 0E    ;
CODE_0DC183:    LDA $0E66               ; $0D:C183: AD 66 0E    ;
CODE_0DC186:    BNE CODE_0DC196         ; $0D:C186: D0 0E       ;
CODE_0DC188:    LDA $0237               ; $0D:C188: AD 37 02    ;
CODE_0DC18B:    STA $03B8               ; $0D:C18B: 8D B8 03    ;
CODE_0DC18E:    LDA $0219               ; $0D:C18E: AD 19 02    ;
CODE_0DC191:    STA $03AD               ; $0D:C191: 8D AD 03    ;
CODE_0DC194:    BRA CODE_0DC199         ; $0D:C194: 80 03       ;

CODE_0DC196:    STZ $0E66               ; $0D:C196: 9C 66 0E    ;
CODE_0DC199:    STZ $0E                 ; $0D:C199: 64 0E       ;
CODE_0DC19B:    RTS                     ; $0D:C19B: 60          ;

DATA_0DC19C:        db $00,$00,$FF,$7F,$63,$0C,$55,$01
                    db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$2F,$15,$14,$00,$19,$0C
                    db $9F,$1C,$2E,$76,$68,$5D,$E6,$44
                    db $BC,$45,$A5,$14,$FF,$7F,$3F,$02
                    db $DB,$01,$36,$01,$BF,$3A,$9C,$2D
                    db $00,$00,$3F,$5B,$76,$69,$F0,$50
                    db $8B,$3C,$36,$01,$DB,$01,$3F,$02
                    db $BC,$45,$FF,$7F,$A5,$14,$92,$00
                    db $98,$00,$9F,$00,$9C,$2D,$BF,$3A
                    db $00,$00,$2F,$15,$95,$2C,$3A,$41
                    db $DF,$55,$1F,$03,$7A,$02,$D5,$01
                    db $BC,$45,$A5,$14,$FF,$7F,$DF,$55
                    db $3A,$41,$95,$2C,$BF,$3A,$9C,$2D
                    db $00,$00,$3F,$5B,$7F,$21,$D9,$14
                    db $53,$04,$00,$02,$E0,$02,$E0,$03
                    db $00,$00,$FF,$7F,$63,$0C,$55,$01
                    db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$2F,$15,$60,$1E,$04,$33
                    db $88,$43,$55,$76,$90,$71,$CA,$58

DATA_0DC23C:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

CODE_0DC250:    BIT $10,x               ; $0D:C250: 34 10       ;
CODE_0DC252:    BMI CODE_0DC267         ; $0D:C252: 30 13       ;
CODE_0DC254:    LDA $10,x               ; $0D:C254: B5 10       ;
CODE_0DC256:    BEQ CODE_0DC25B         ; $0D:C256: F0 03       ;
CODE_0DC258:    JMP CODE_0DCBB0         ; $0D:C258: 4C B0 CB    ;

CODE_0DC25B:    LDA $071F               ; $0D:C25B: AD 1F 07    ;
CODE_0DC25E:    AND #$07                ; $0D:C25E: 29 07       ;
CODE_0DC260:    CMP #$07                ; $0D:C260: C9 07       ;
CODE_0DC262:    BEQ CODE_0DC273         ; $0D:C262: F0 0F       ;
CODE_0DC264:    JMP CODE_0DC2E9         ; $0D:C264: 4C E9 C2    ;

CODE_0DC267:    LDA $10,x               ; $0D:C267: B5 10       ;
CODE_0DC269:    AND #$0F                ; $0D:C269: 29 0F       ;
CODE_0DC26B:    TAY                     ; $0D:C26B: A8          ;
CODE_0DC26C:    LDA $0010,y             ; $0D:C26C: B9 10 00    ;
CODE_0DC26F:    BNE CODE_0DC273         ; $0D:C26F: D0 02       ;
CODE_0DC271:    STA $10,x               ; $0D:C271: 95 10       ;
CODE_0DC273:    RTS                     ; $0D:C273: 60          ;

DATA_0DC274:        db $02,$02,$02,$02,$05,$05,$05,$05 ;
                    db $06,$07,$07,$04 ;

DATA_0DC280:        db $03,$05,$08,$09,$03,$06,$07,$0A ;
                    db $05,$05,$0B,$05 ;

DATA_0DC28C:        db $B0,$B0,$40,$30,$B0,$30,$B0,$B0 ;
                    db $F0,$F0,$B0,$F0 ;

DATA_0DC298:        db $02,$02,$02,$02,$02,$02,$02,$02 ;
                    db $01,$01,$01,$01 ;

CODE_0DC2A4:    LDA $78                 ; $0D:C2A4: A5 78       ;
CODE_0DC2A6:    SEC                     ; $0D:C2A6: 38          ;
CODE_0DC2A7:    SBC #$04                ; $0D:C2A7: E9 04       ;
CODE_0DC2A9:    STA $78                 ; $0D:C2A9: 85 78       ;
CODE_0DC2AB:    LDA $0725               ; $0D:C2AB: AD 25 07    ;
CODE_0DC2AE:    SEC                     ; $0D:C2AE: 38          ;
CODE_0DC2AF:    SBC #$04                ; $0D:C2AF: E9 04       ;
CODE_0DC2B1:    STA $0725               ; $0D:C2B1: 8D 25 07    ;
CODE_0DC2B4:    LDA $071A               ; $0D:C2B4: AD 1A 07    ;
CODE_0DC2B7:    SEC                     ; $0D:C2B7: 38          ;
CODE_0DC2B8:    SBC #$04                ; $0D:C2B8: E9 04       ;
CODE_0DC2BA:    STA $071A               ; $0D:C2BA: 8D 1A 07    ;
CODE_0DC2BD:    LDA $071B               ; $0D:C2BD: AD 1B 07    ;
CODE_0DC2C0:    SEC                     ; $0D:C2C0: 38          ;
CODE_0DC2C1:    SBC #$04                ; $0D:C2C1: E9 04       ;
CODE_0DC2C3:    STA $071B               ; $0D:C2C3: 8D 1B 07    ;
CODE_0DC2C6:    LDA $072A               ; $0D:C2C6: AD 2A 07    ;
CODE_0DC2C9:    SEC                     ; $0D:C2C9: 38          ;
CODE_0DC2CA:    SBC #$04                ; $0D:C2CA: E9 04       ;
CODE_0DC2CC:    STA $072A               ; $0D:C2CC: 8D 2A 07    ;
CODE_0DC2CF:    STZ $073B               ; $0D:C2CF: 9C 3B 07    ;
CODE_0DC2D2:    STZ $072B               ; $0D:C2D2: 9C 2B 07    ;
CODE_0DC2D5:    STZ $0739               ; $0D:C2D5: 9C 39 07    ;
CODE_0DC2D8:    STZ $073A               ; $0D:C2D8: 9C 3A 07    ;
CODE_0DC2DB:    PHX                     ; $0D:C2DB: DA          ;
CODE_0DC2DC:    TYX                     ; $0D:C2DC: BB          ;
CODE_0DC2DD:    LDA.l DATA_0EC4E0,x     ; $0D:C2DD: BF E0 C4 0E ;
CODE_0DC2E1:    STA $072C               ; $0D:C2E1: 8D 2C 07    ;
CODE_0DC2E4:    STZ $0EDB               ; $0D:C2E4: 9C DB 0E    ;
CODE_0DC2E7:    PLX                     ; $0D:C2E7: FA          ;
CODE_0DC2E8:    RTS                     ; $0D:C2E8: 60          ;

CODE_0DC2E9:    LDA $0745               ; $0D:C2E9: AD 45 07    ;
CODE_0DC2EC:    BEQ CODE_0DC354         ; $0D:C2EC: F0 66       ;
CODE_0DC2EE:    LDA $0726               ; $0D:C2EE: AD 26 07    ;
CODE_0DC2F1:    BNE CODE_0DC354         ; $0D:C2F1: D0 61       ;
CODE_0DC2F3:    LDY #$0C                ; $0D:C2F3: A0 0C       ;
CODE_0DC2F5:    DEY                     ; $0D:C2F5: 88          ;
CODE_0DC2F6:    BMI CODE_0DC354         ; $0D:C2F6: 30 5C       ;
CODE_0DC2F8:    LDA $075F               ; $0D:C2F8: AD 5F 07    ;
CODE_0DC2FB:    CMP DATA_0DC274,y       ; $0D:C2FB: D9 74 C2    ;
CODE_0DC2FE:    BNE CODE_0DC2F5         ; $0D:C2FE: D0 F5       ;
CODE_0DC300:    LDA $0725               ; $0D:C300: AD 25 07    ;
CODE_0DC303:    CMP DATA_0DC280,y       ; $0D:C303: D9 80 C2    ;
CODE_0DC306:    BNE CODE_0DC2F5         ; $0D:C306: D0 ED       ;
CODE_0DC308:    LDA $0237               ; $0D:C308: AD 37 02    ;
CODE_0DC30B:    CMP DATA_0DC28C,y       ; $0D:C30B: D9 8C C2    ;
CODE_0DC30E:    BNE CODE_0DC325         ; $0D:C30E: D0 15       ;
CODE_0DC310:    LDA $28                 ; $0D:C310: A5 28       ;
CODE_0DC312:    CMP #$00                ; $0D:C312: C9 00       ;
CODE_0DC314:    BNE CODE_0DC325         ; $0D:C314: D0 0F       ;
CODE_0DC316:    INC $06D9               ; $0D:C316: EE D9 06    ;
CODE_0DC319:    LDA $0EDB               ; $0D:C319: AD DB 0E    ;
CODE_0DC31C:    BNE CODE_0DC332         ; $0D:C31C: D0 14       ;
CODE_0DC31E:    LDA #$29                ; $0D:C31E: A9 29       ;
CODE_0DC320:    STA $1603               ; $0D:C320: 8D 03 16    ;
CODE_0DC323:    BRA CODE_0DC332         ; $0D:C323: 80 0D       ;

CODE_0DC325:    LDA $0EDB               ; $0D:C325: AD DB 0E    ;
CODE_0DC328:    BNE CODE_0DC332         ; $0D:C328: D0 08       ;
CODE_0DC32A:    LDA #$2A                ; $0D:C32A: A9 2A       ;
CODE_0DC32C:    STA $1603               ; $0D:C32C: 8D 03 16    ;
CODE_0DC32F:    STA $0EDB               ; $0D:C32F: 8D DB 0E    ;
CODE_0DC332:    INC $06DA               ; $0D:C332: EE DA 06    ;
CODE_0DC335:    LDA $06DA               ; $0D:C335: AD DA 06    ;
CODE_0DC338:    CMP DATA_0DC298,y       ; $0D:C338: D9 98 C2    ;
CODE_0DC33B:    BNE CODE_0DC351         ; $0D:C33B: D0 14       ;
CODE_0DC33D:    LDA $06D9               ; $0D:C33D: AD D9 06    ;
CODE_0DC340:    CMP DATA_0DC298,y       ; $0D:C340: D9 98 C2    ;
CODE_0DC343:    BEQ CODE_0DC34B         ; $0D:C343: F0 06       ;
CODE_0DC345:    JSR CODE_0DC2A4         ; $0D:C345: 20 A4 C2    ;
CODE_0DC348:    JSR CODE_0DD462         ; $0D:C348: 20 62 D4    ;
CODE_0DC34B:    STZ $06DA               ; $0D:C34B: 9C DA 06    ;
CODE_0DC34E:    STZ $06D9               ; $0D:C34E: 9C D9 06    ;
CODE_0DC351:    STZ $0745               ; $0D:C351: 9C 45 07    ;
CODE_0DC354:    LDA $06CD               ; $0D:C354: AD CD 06    ;
CODE_0DC357:    BEQ CODE_0DC367         ; $0D:C357: F0 0E       ;
CODE_0DC359:    STA $1C,x               ; $0D:C359: 95 1C       ;
CODE_0DC35B:    LDA #$01                ; $0D:C35B: A9 01       ;
CODE_0DC35D:    STA $10,x               ; $0D:C35D: 95 10       ;
CODE_0DC35F:    STZ $29,x               ; $0D:C35F: 74 29       ;
CODE_0DC361:    STZ $06CD               ; $0D:C361: 9C CD 06    ;
CODE_0DC364:    JMP CODE_0DC461         ; $0D:C364: 4C 61 C4    ;

CODE_0DC367:    LDY $0739               ; $0D:C367: AC 39 07    ;
CODE_0DC36A:    LDA [$FD],y             ; $0D:C36A: B7 FD       ;
CODE_0DC36C:    CMP #$FF                ; $0D:C36C: C9 FF       ;
CODE_0DC36E:    BNE CODE_0DC373         ; $0D:C36E: D0 03       ;
CODE_0DC370:    JMP CODE_0DC44D         ; $0D:C370: 4C 4D C4    ;

CODE_0DC373:    AND #$0F                ; $0D:C373: 29 0F       ;
CODE_0DC375:    CMP #$0E                ; $0D:C375: C9 0E       ;
CODE_0DC377:    BEQ CODE_0DC387         ; $0D:C377: F0 0E       ;
CODE_0DC379:    CPX #$05                ; $0D:C379: E0 05       ;
CODE_0DC37B:    BCC CODE_0DC387         ; $0D:C37B: 90 0A       ;
CODE_0DC37D:    INY                     ; $0D:C37D: C8          ;
CODE_0DC37E:    LDA [$FD],y             ; $0D:C37E: B7 FD       ;
CODE_0DC380:    AND #$3F                ; $0D:C380: 29 3F       ;
CODE_0DC382:    CMP #$2E                ; $0D:C382: C9 2E       ;
CODE_0DC384:    BEQ CODE_0DC387         ; $0D:C384: F0 01       ;
CODE_0DC386:    RTS                     ; $0D:C386: 60          ;

CODE_0DC387:    LDA $071D               ; $0D:C387: AD 1D 07    ;
CODE_0DC38A:    CLC                     ; $0D:C38A: 18          ;
CODE_0DC38B:    ADC #$30                ; $0D:C38B: 69 30       ;
CODE_0DC38D:    AND #$F0                ; $0D:C38D: 29 F0       ;
CODE_0DC38F:    STA $07                 ; $0D:C38F: 85 07       ;
CODE_0DC391:    LDA $071B               ; $0D:C391: AD 1B 07    ;
CODE_0DC394:    ADC #$00                ; $0D:C394: 69 00       ;
CODE_0DC396:    STA $06                 ; $0D:C396: 85 06       ;
CODE_0DC398:    LDY $0739               ; $0D:C398: AC 39 07    ;
CODE_0DC39B:    INY                     ; $0D:C39B: C8          ;
CODE_0DC39C:    LDA [$FD],y             ; $0D:C39C: B7 FD       ;
CODE_0DC39E:    ASL A                   ; $0D:C39E: 0A          ;
CODE_0DC39F:    BCC CODE_0DC3AC         ; $0D:C39F: 90 0B       ;
CODE_0DC3A1:    LDA $073B               ; $0D:C3A1: AD 3B 07    ;
CODE_0DC3A4:    BNE CODE_0DC3AC         ; $0D:C3A4: D0 06       ;
CODE_0DC3A6:    INC $073B               ; $0D:C3A6: EE 3B 07    ;
CODE_0DC3A9:    INC $073A               ; $0D:C3A9: EE 3A 07    ;
CODE_0DC3AC:    DEY                     ; $0D:C3AC: 88          ;
CODE_0DC3AD:    LDA [$FD],y             ; $0D:C3AD: B7 FD       ;
CODE_0DC3AF:    AND #$0F                ; $0D:C3AF: 29 0F       ;
CODE_0DC3B1:    CMP #$0F                ; $0D:C3B1: C9 0F       ;
CODE_0DC3B3:    BNE CODE_0DC3CE         ; $0D:C3B3: D0 19       ;
CODE_0DC3B5:    LDA $073B               ; $0D:C3B5: AD 3B 07    ;
CODE_0DC3B8:    BNE CODE_0DC3CE         ; $0D:C3B8: D0 14       ;
CODE_0DC3BA:    INY                     ; $0D:C3BA: C8          ;
CODE_0DC3BB:    LDA [$FD],y             ; $0D:C3BB: B7 FD       ;
CODE_0DC3BD:    AND #$3F                ; $0D:C3BD: 29 3F       ;
CODE_0DC3BF:    STA $073A               ; $0D:C3BF: 8D 3A 07    ;
CODE_0DC3C2:    INC $0739               ; $0D:C3C2: EE 39 07    ;
CODE_0DC3C5:    INC $0739               ; $0D:C3C5: EE 39 07    ;
CODE_0DC3C8:    INC $073B               ; $0D:C3C8: EE 3B 07    ;
CODE_0DC3CB:    JMP CODE_0DC2E9         ; $0D:C3CB: 4C E9 C2    ;

CODE_0DC3CE:    LDA $073A               ; $0D:C3CE: AD 3A 07    ;
CODE_0DC3D1:    STA $79,x               ; $0D:C3D1: 95 79       ;
CODE_0DC3D3:    LDA [$FD],y             ; $0D:C3D3: B7 FD       ;
CODE_0DC3D5:    AND #$F0                ; $0D:C3D5: 29 F0       ;
CODE_0DC3D7:    STA $021A,x             ; $0D:C3D7: 9D 1A 02    ;
CODE_0DC3DA:    CMP $071D               ; $0D:C3DA: CD 1D 07    ;
CODE_0DC3DD:    LDA $79,x               ; $0D:C3DD: B5 79       ;
CODE_0DC3DF:    SBC $071B               ; $0D:C3DF: ED 1B 07    ;
CODE_0DC3E2:    BCS CODE_0DC3EF         ; $0D:C3E2: B0 0B       ;
CODE_0DC3E4:    LDA [$FD],y             ; $0D:C3E4: B7 FD       ;
CODE_0DC3E6:    AND #$0F                ; $0D:C3E6: 29 0F       ;
CODE_0DC3E8:    CMP #$0E                ; $0D:C3E8: C9 0E       ;
CODE_0DC3EA:    BEQ CODE_0DC46A         ; $0D:C3EA: F0 7E       ;
CODE_0DC3EC:    JMP CODE_0DC48D         ; $0D:C3EC: 4C 8D C4    ;

CODE_0DC3EF:    LDA $07                 ; $0D:C3EF: A5 07       ;
CODE_0DC3F1:    CMP $021A,x             ; $0D:C3F1: DD 1A 02    ;
CODE_0DC3F4:    LDA $06                 ; $0D:C3F4: A5 06       ;
CODE_0DC3F6:    SBC $79,x               ; $0D:C3F6: F5 79       ;
CODE_0DC3F8:    BCC CODE_0DC44D         ; $0D:C3F8: 90 53       ;
CODE_0DC3FA:    LDA #$01                ; $0D:C3FA: A9 01       ;
CODE_0DC3FC:    STA $BC,x               ; $0D:C3FC: 95 BC       ;
CODE_0DC3FE:    LDA [$FD],y             ; $0D:C3FE: B7 FD       ;
CODE_0DC400:    ASL A                   ; $0D:C400: 0A          ;
CODE_0DC401:    ASL A                   ; $0D:C401: 0A          ;
CODE_0DC402:    ASL A                   ; $0D:C402: 0A          ;
CODE_0DC403:    ASL A                   ; $0D:C403: 0A          ;
CODE_0DC404:    STA $0238,x             ; $0D:C404: 9D 38 02    ;
CODE_0DC407:    CMP #$E0                ; $0D:C407: C9 E0       ;
CODE_0DC409:    BEQ CODE_0DC46A         ; $0D:C409: F0 5F       ;
CODE_0DC40B:    INY                     ; $0D:C40B: C8          ;
CODE_0DC40C:    LDA [$FD],y             ; $0D:C40C: B7 FD       ;
CODE_0DC40E:    AND #$40                ; $0D:C40E: 29 40       ;
CODE_0DC410:    BEQ CODE_0DC41A         ; $0D:C410: F0 08       ;
CODE_0DC412:    LDA $06CC               ; $0D:C412: AD CC 06    ;
CODE_0DC415:    BNE CODE_0DC41A         ; $0D:C415: D0 03       ;
CODE_0DC417:    JMP CODE_0DC49B         ; $0D:C417: 4C 9B C4    ;

CODE_0DC41A:    LDA [$FD],y             ; $0D:C41A: B7 FD       ;
CODE_0DC41C:    AND #$3F                ; $0D:C41C: 29 3F       ;
CODE_0DC41E:    CMP #$37                ; $0D:C41E: C9 37       ;
CODE_0DC420:    BCC CODE_0DC426         ; $0D:C420: 90 04       ;
CODE_0DC422:    CMP #$3F                ; $0D:C422: C9 3F       ;
CODE_0DC424:    BCC CODE_0DC467         ; $0D:C424: 90 41       ;
CODE_0DC426:    CMP #$06                ; $0D:C426: C9 06       ;
CODE_0DC428:    BNE CODE_0DC431         ; $0D:C428: D0 07       ;
CODE_0DC42A:    LDY $076A               ; $0D:C42A: AC 6A 07    ;
CODE_0DC42D:    BEQ CODE_0DC431         ; $0D:C42D: F0 02       ;
CODE_0DC42F:    LDA #$02                ; $0D:C42F: A9 02       ;
CODE_0DC431:    CMP #$2D                ; $0D:C431: C9 2D       ;
CODE_0DC433:    BNE CODE_0DC438         ; $0D:C433: D0 03       ;
CODE_0DC435:    JSR CODE_0DDB63         ; $0D:C435: 20 63 DB    ;
CODE_0DC438:    CMP #$35                ; $0D:C438: C9 35       ;
CODE_0DC43A:    BNE CODE_0DC43F         ; $0D:C43A: D0 03       ;
CODE_0DC43C:    STZ $0F4A               ; $0D:C43C: 9C 4A 0F    ;
CODE_0DC43F:    STA $1C,x               ; $0D:C43F: 95 1C       ;
CODE_0DC441:    LDA #$01                ; $0D:C441: A9 01       ;
CODE_0DC443:    STA $10,x               ; $0D:C443: 95 10       ;
CODE_0DC445:    JSR CODE_0DC461         ; $0D:C445: 20 61 C4    ;
CODE_0DC448:    LDA $10,x               ; $0D:C448: B5 10       ;
CODE_0DC44A:    BNE CODE_0DC49B         ; $0D:C44A: D0 4F       ;
CODE_0DC44C:    RTS                     ; $0D:C44C: 60          ;

CODE_0DC44D:    LDA $06CB               ; $0D:C44D: AD CB 06    ;
CODE_0DC450:    BNE CODE_0DC45B         ; $0D:C450: D0 09       ;
CODE_0DC452:    LDA $0398               ; $0D:C452: AD 98 03    ;
CODE_0DC455:    CMP #$01                ; $0D:C455: C9 01       ;
CODE_0DC457:    BNE CODE_0DC466         ; $0D:C457: D0 0D       ;
CODE_0DC459:    LDA #$00                ; $0D:C459: A9 00       ;
CODE_0DC45B:    CPX #$09                ; $0D:C45B: E0 09       ;
CODE_0DC45D:    BEQ CODE_0DC461         ; $0D:C45D: F0 02       ;
CODE_0DC45F:    STA $1C,x               ; $0D:C45F: 95 1C       ;
CODE_0DC461:    STZ $29,x               ; $0D:C461: 74 29       ;
CODE_0DC463:    JSR CODE_0DC4B9         ; $0D:C463: 20 B9 C4    ;
CODE_0DC466:    RTS                     ; $0D:C466: 60          ;

CODE_0DC467:    JMP CODE_0DCA0B         ; $0D:C467: 4C 0B CA    ;

CODE_0DC46A:    INY                     ; $0D:C46A: C8          ;
CODE_0DC46B:    INY                     ; $0D:C46B: C8          ;
CODE_0DC46C:    LDA $075F               ; $0D:C46C: AD 5F 07    ;
CODE_0DC46F:    CMP #$08                ; $0D:C46F: C9 08       ;
CODE_0DC471:    BEQ CODE_0DC47D         ; $0D:C471: F0 0A       ;
CODE_0DC473:    LDA [$FD],y             ; $0D:C473: B7 FD       ;
CODE_0DC475:    JSR CODE_0DC4A7         ; $0D:C475: 20 A7 C4    ;
CODE_0DC478:    CMP $075F               ; $0D:C478: CD 5F 07    ;
CODE_0DC47B:    BNE CODE_0DC48B         ; $0D:C47B: D0 0E       ;
CODE_0DC47D:    DEY                     ; $0D:C47D: 88          ;
CODE_0DC47E:    LDA [$FD],y             ; $0D:C47E: B7 FD       ;
CODE_0DC480:    STA $0750               ; $0D:C480: 8D 50 07    ;
CODE_0DC483:    INY                     ; $0D:C483: C8          ;
CODE_0DC484:    LDA [$FD],y             ; $0D:C484: B7 FD       ;
CODE_0DC486:    AND #$1F                ; $0D:C486: 29 1F       ;
CODE_0DC488:    STA $0751               ; $0D:C488: 8D 51 07    ;
CODE_0DC48B:    BRA CODE_0DC498         ; $0D:C48B: 80 0B       ;

CODE_0DC48D:    LDY $0739               ; $0D:C48D: AC 39 07    ;
CODE_0DC490:    LDA [$FD],y             ; $0D:C490: B7 FD       ;
CODE_0DC492:    AND #$0F                ; $0D:C492: 29 0F       ;
CODE_0DC494:    CMP #$0E                ; $0D:C494: C9 0E       ;
CODE_0DC496:    BNE CODE_0DC49B         ; $0D:C496: D0 03       ;
CODE_0DC498:    INC $0739               ; $0D:C498: EE 39 07    ;
CODE_0DC49B:    INC $0739               ; $0D:C49B: EE 39 07    ;
CODE_0DC49E:    INC $0739               ; $0D:C49E: EE 39 07    ;
CODE_0DC4A1:    STZ $073B               ; $0D:C4A1: 9C 3B 07    ;
CODE_0DC4A4:    LDX $9E                 ; $0D:C4A4: A6 9E       ;
CODE_0DC4A6:    RTS                     ; $0D:C4A6: 60          ;

CODE_0DC4A7:    LSR A                   ; $0D:C4A7: 4A          ;
CODE_0DC4A8:    LSR A                   ; $0D:C4A8: 4A          ;
CODE_0DC4A9:    LSR A                   ; $0D:C4A9: 4A          ;
CODE_0DC4AA:    LSR A                   ; $0D:C4AA: 4A          ;
CODE_0DC4AB:    LSR A                   ; $0D:C4AB: 4A          ;
CODE_0DC4AC:    PHA                     ; $0D:C4AC: 48          ;
CODE_0DC4AD:    LDA $07FB               ; $0D:C4AD: AD FB 07    ;
CODE_0DC4B0:    BEQ CODE_0DC4B7         ; $0D:C4B0: F0 05       ;
CODE_0DC4B2:    PLA                     ; $0D:C4B2: 68          ;
CODE_0DC4B3:    CLC                     ; $0D:C4B3: 18          ;
CODE_0DC4B4:    ADC #$09                ; $0D:C4B4: 69 09       ;
CODE_0DC4B6:    PHA                     ; $0D:C4B6: 48          ;
CODE_0DC4B7:    PLA                     ; $0D:C4B7: 68          ;
CODE_0DC4B8:    RTS                     ; $0D:C4B8: 60          ;

CODE_0DC4B9:    LDA $1C,x               ; $0D:C4B9: B5 1C       ;
CODE_0DC4BB:    CMP #$15                ; $0D:C4BB: C9 15       ;
CODE_0DC4BD:    BCS CODE_0DC4CE         ; $0D:C4BD: B0 0F       ;
CODE_0DC4BF:    TAY                     ; $0D:C4BF: A8          ;
CODE_0DC4C0:    LDA $0238,x             ; $0D:C4C0: BD 38 02    ;
CODE_0DC4C3:    ADC #$08                ; $0D:C4C3: 69 08       ;
CODE_0DC4C5:    STA $0238,x             ; $0D:C4C5: 9D 38 02    ;
CODE_0DC4C8:    LDA #$01                ; $0D:C4C8: A9 01       ;
CODE_0DC4CA:    STA $03D9,x             ; $0D:C4CA: 9D D9 03    ;
CODE_0DC4CD:    TYA                     ; $0D:C4CD: 98          ;
CODE_0DC4CE:    ASL A                   ; $0D:C4CE: 0A          ;
CODE_0DC4CF:    TAY                     ; $0D:C4CF: A8          ;
CODE_0DC4D0:    LDA PNTR_0DC4DD,y       ; $0D:C4D0: B9 DD C4    ;
CODE_0DC4D3:    STA $04                 ; $0D:C4D3: 85 04       ;
CODE_0DC4D5:    LDA PNTR_0DC4DD+1,y     ; $0D:C4D5: B9 DE C4    ;
CODE_0DC4D8:    STA $05                 ; $0D:C4D8: 85 05       ;
CODE_0DC4DA:    JMP ($0004)             ; $0D:C4DA: 6C 04 00    ;

PNTR_0DC4DD:        dw CODE_0DC587
                    dw CODE_0DC587
                    dw CODE_0DC587
                    dw CODE_0DC597
                    dw CODE_0DCA79
                    dw CODE_0DC5A1
                    dw CODE_0DC54C
                    dw CODE_0DC5C0
                    dw CODE_0DC5E7
                    dw CODE_0DC54B
                    dw CODE_0DC5F1
                    dw CODE_0DC5F1
                    dw CODE_0DC552
                    dw CODE_0DCA79
                    dw CODE_0DCAFE
                    dw CODE_0DC5C6
                    dw CODE_0DC5BB
                    dw CODE_0DC602
                    dw CODE_0DCAC3
                    dw CODE_0DC54B
                    dw CODE_0DCAC3
                    dw CODE_0DCAC3
                    dw CODE_0DCAC3
                    dw CODE_0DCAC3
                    dw CODE_0DCAE7
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DC6E7
                    dw CODE_0DC6E7
                    dw CODE_0DC6E7
                    dw CODE_0DC6E7
                    dw CODE_0DC6E4
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DCB0C
                    dw CODE_0DCB40
                    dw CODE_0DCB6E
                    dw CODE_0DCB74
                    dw CODE_0DCB39
                    dw CODE_0DCB31
                    dw CODE_0DCB39
                    dw CODE_0DCB7A
                    dw CODE_0DCB86
                    dw CODE_0DC7DE
                    dw CODE_0DBB67
                    dw CODE_0DB7C9
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DC54B
                    dw CODE_0DC56E
                    dw CODE_0DCBAF

CODE_0DC54B:    RTS                     ; $0D:C54B: 60          ;

CODE_0DC54C:    JSR CODE_0DC587         ; $0D:C54C: 20 87 C5    ;
CODE_0DC54F:    JMP CODE_0DC5C2         ; $0D:C54F: 4C C2 C5    ;

CODE_0DC552:    LDA #$D0                ; $0D:C552: A9 D0       ;
CODE_0DC554:    STA $0238,x             ; $0D:C554: 9D 38 02    ;
CODE_0DC557:    LDA #$01                ; $0D:C557: A9 01       ;
CODE_0DC559:    STA $BC,x               ; $0D:C559: 95 BC       ;
CODE_0DC55B:    STA $07A2,x             ; $0D:C55B: 9D A2 07    ;
CODE_0DC55E:    STZ $29,x               ; $0D:C55E: 74 29       ;
CODE_0DC560:    STA $0B00,x             ; $0D:C560: 9D 00 0B    ;
CODE_0DC563:    STZ $0B09,x             ; $0D:C563: 9E 09 0B    ;
CODE_0DC566:    LDA #$27                ; $0D:C566: A9 27       ;
CODE_0DC568:    STA $1603               ; $0D:C568: 8D 03 16    ;
CODE_0DC56B:    JMP CODE_0DC5C2         ; $0D:C56B: 4C C2 C5    ;

CODE_0DC56E:    LDA $075F               ; $0D:C56E: AD 5F 07    ;
CODE_0DC571:    CMP #$07                ; $0D:C571: C9 07       ;
CODE_0DC573:    BEQ CODE_0DC57F         ; $0D:C573: F0 0A       ;
CODE_0DC575:    CMP #$0C                ; $0D:C575: C9 0C       ;
CODE_0DC577:    BEQ CODE_0DC57F         ; $0D:C577: F0 06       ;
CODE_0DC579:    LDA #$B8                ; $0D:C579: A9 B8       ;
CODE_0DC57B:    STA $0238,x             ; $0D:C57B: 9D 38 02    ;
CODE_0DC57E:    RTS                     ; $0D:C57E: 60          ;

CODE_0DC57F:    LDA #$70                ; $0D:C57F: A9 70       ;
CODE_0DC581:    STA $0238,x             ; $0D:C581: 9D 38 02    ;
CODE_0DC584:    RTS                     ; $0D:C584: 60          ;

DATA_0DC585:        db $F8,$F4

CODE_0DC587:    LDY #$01                ; $0D:C587: A0 01       ;
CODE_0DC589:    LDA $076A               ; $0D:C589: AD 6A 07    ;
CODE_0DC58C:    BNE CODE_0DC58F         ; $0D:C58C: D0 01       ;
CODE_0DC58E:    DEY                     ; $0D:C58E: 88          ;
CODE_0DC58F:    LDA DATA_0DC585,y       ; $0D:C58F: B9 85 C5    ;
CODE_0DC592:    STA $5E,x               ; $0D:C592: 95 5E       ;
CODE_0DC594:    JMP CODE_0DC5D8         ; $0D:C594: 4C D8 C5    ;

CODE_0DC597:    JSR CODE_0DC587         ; $0D:C597: 20 87 C5    ;
CODE_0DC59A:    LDA #$01                ; $0D:C59A: A9 01       ;
CODE_0DC59C:    STA $29,x               ; $0D:C59C: 95 29       ;
CODE_0DC59E:    RTS                     ; $0D:C59E: 60          ;

DATA_0DC59F:        db $80,$50

CODE_0DC5A1:    STZ $03A2,x             ; $0D:C5A1: 9E A2 03    ;
CODE_0DC5A4:    STZ $5E,x               ; $0D:C5A4: 74 5E       ;
CODE_0DC5A6:    LDA $075F               ; $0D:C5A6: AD 5F 07    ;
CODE_0DC5A9:    CMP #$06                ; $0D:C5A9: C9 06       ;
CODE_0DC5AB:    BCS CODE_0DC5B6         ; $0D:C5AB: B0 09       ;
CODE_0DC5AD:    LDY $06CC               ; $0D:C5AD: AC CC 06    ;
CODE_0DC5B0:    LDA DATA_0DC59F,y       ; $0D:C5B0: B9 9F C5    ;
CODE_0DC5B3:    STA $07A2,x             ; $0D:C5B3: 9D A2 07    ;
CODE_0DC5B6:    LDA #$0B                ; $0D:C5B6: A9 0B       ;
CODE_0DC5B8:    JMP CODE_0DC5DA         ; $0D:C5B8: 4C DA C5    ;

CODE_0DC5BB:    LDA #$00                ; $0D:C5BB: A9 00       ;
CODE_0DC5BD:    JMP CODE_0DC592         ; $0D:C5BD: 4C 92 C5    ;

CODE_0DC5C0:    STZ $5E,x               ; $0D:C5C0: 74 5E       ;
CODE_0DC5C2:    LDA #$09                ; $0D:C5C2: A9 09       ;
CODE_0DC5C4:    BNE CODE_0DC5DA         ; $0D:C5C4: D0 14       ;
CODE_0DC5C6:    LDY #$30                ; $0D:C5C6: A0 30       ;
CODE_0DC5C8:    LDA $0238,x             ; $0D:C5C8: BD 38 02    ;
CODE_0DC5CB:    STA $0402,x             ; $0D:C5CB: 9D 02 04    ;
CODE_0DC5CE:    BPL CODE_0DC5D2         ; $0D:C5CE: 10 02       ;
CODE_0DC5D0:    LDY #$E0                ; $0D:C5D0: A0 E0       ;
CODE_0DC5D2:    TYA                     ; $0D:C5D2: 98          ;
CODE_0DC5D3:    ADC $0238,x             ; $0D:C5D3: 7D 38 02    ;
CODE_0DC5D6:    STA $5E,x               ; $0D:C5D6: 95 5E       ;
CODE_0DC5D8:    LDA #$03                ; $0D:C5D8: A9 03       ;
CODE_0DC5DA:    STA $0490,x             ; $0D:C5DA: 9D 90 04    ;
CODE_0DC5DD:    LDA #$02                ; $0D:C5DD: A9 02       ;
CODE_0DC5DF:    STA $47,x               ; $0D:C5DF: 95 47       ;
CODE_0DC5E1:    STZ $A1,x               ; $0D:C5E1: 74 A1       ;
CODE_0DC5E3:    STZ $043D,x             ; $0D:C5E3: 9E 3D 04    ;
CODE_0DC5E6:    RTS                     ; $0D:C5E6: 60          ;

CODE_0DC5E7:    LDA #$02                ; $0D:C5E7: A9 02       ;
CODE_0DC5E9:    STA $47,x               ; $0D:C5E9: 95 47       ;
CODE_0DC5EB:    LDA #$09                ; $0D:C5EB: A9 09       ;
CODE_0DC5ED:    STA $0490,x             ; $0D:C5ED: 9D 90 04    ;
CODE_0DC5F0:    RTS                     ; $0D:C5F0: 60          ;

CODE_0DC5F1:    JSR CODE_0DC5C2         ; $0D:C5F1: 20 C2 C5    ;
CODE_0DC5F4:    LDA $07B7,x             ; $0D:C5F4: BD B7 07    ;
CODE_0DC5F7:    AND #$10                ; $0D:C5F7: 29 10       ;
CODE_0DC5F9:    STA $5E,x               ; $0D:C5F9: 95 5E       ;
CODE_0DC5FB:    LDA $0238,x             ; $0D:C5FB: BD 38 02    ;
CODE_0DC5FE:    STA $043D,x             ; $0D:C5FE: 9D 3D 04    ;
CODE_0DC601:    RTS                     ; $0D:C601: 60          ;

CODE_0DC602:    LDA $06CB               ; $0D:C602: AD CB 06    ;
CODE_0DC605:    BNE CODE_0DC610         ; $0D:C605: D0 09       ;
CODE_0DC607:    STZ $06D1               ; $0D:C607: 9C D1 06    ;
CODE_0DC60A:    JSR CODE_0DC5BB         ; $0D:C60A: 20 BB C5    ;
CODE_0DC60D:    JMP CODE_0DCB06         ; $0D:C60D: 4C 06 CB    ;

CODE_0DC610:    JMP CODE_0DCCEA         ; $0D:C610: 4C EA CC    ;

DATA_0DC613:        db $26,$2C,$32,$38 ;

DATA_0DC617:        db $20,$22,$24,$26 ;

DATA_0DC61B:        db $13,$14,$15,$16 ;

CODE_0DC61F:    LDA $079B               ; $0D:C61F: AD 9B 07    ;
CODE_0DC622:    BNE CODE_0DC66C         ; $0D:C622: D0 48       ;
CODE_0DC624:    CPX #$09                ; $0D:C624: E0 09       ;
CODE_0DC626:    BCS CODE_0DC66C         ; $0D:C626: B0 44       ;
CODE_0DC628:    LDA #$80                ; $0D:C628: A9 80       ;
CODE_0DC62A:    STA $079B               ; $0D:C62A: 8D 9B 07    ;
CODE_0DC62D:    LDY #$08                ; $0D:C62D: A0 08       ;
CODE_0DC62F:    LDA $001C,y             ; $0D:C62F: B9 1C 00    ;
CODE_0DC632:    CMP #$11                ; $0D:C632: C9 11       ;
CODE_0DC634:    BEQ CODE_0DC66D         ; $0D:C634: F0 37       ;
CODE_0DC636:    DEY                     ; $0D:C636: 88          ;
CODE_0DC637:    BPL CODE_0DC62F         ; $0D:C637: 10 F6       ;
CODE_0DC639:    INC $06D1               ; $0D:C639: EE D1 06    ;
CODE_0DC63C:    LDA $06D1               ; $0D:C63C: AD D1 06    ;
CODE_0DC63F:    CMP #$03                ; $0D:C63F: C9 03       ;
CODE_0DC641:    BCC CODE_0DC66C         ; $0D:C641: 90 29       ;
CODE_0DC643:    LDX #$08                ; $0D:C643: A2 08       ;
CODE_0DC645:    LDA $10,x               ; $0D:C645: B5 10       ;
CODE_0DC647:    BEQ CODE_0DC64E         ; $0D:C647: F0 05       ;
CODE_0DC649:    DEX                     ; $0D:C649: CA          ;
CODE_0DC64A:    BPL CODE_0DC645         ; $0D:C64A: 10 F9       ;
CODE_0DC64C:    BMI CODE_0DC66A         ; $0D:C64C: 30 1C       ;
CODE_0DC64E:    STZ $29,x               ; $0D:C64E: 74 29       ;
CODE_0DC650:    LDA #$11                ; $0D:C650: A9 11       ;
CODE_0DC652:    STA $1C,x               ; $0D:C652: 95 1C       ;
CODE_0DC654:    JSR CODE_0DC607         ; $0D:C654: 20 07 C6    ;
CODE_0DC657:    LDA #$20                ; $0D:C657: A9 20       ;
CODE_0DC659:    LDY $07FB               ; $0D:C659: AC FB 07    ;
CODE_0DC65C:    BNE CODE_0DC665         ; $0D:C65C: D0 07       ;
CODE_0DC65E:    LDY $075F               ; $0D:C65E: AC 5F 07    ;
CODE_0DC661:    CPY #$06                ; $0D:C661: C0 06       ;
CODE_0DC663:    BCC CODE_0DC667         ; $0D:C663: 90 02       ;
CODE_0DC665:    LDA #$60                ; $0D:C665: A9 60       ;
CODE_0DC667:    JSR CODE_0DC8C9         ; $0D:C667: 20 C9 C8    ;
CODE_0DC66A:    LDX $9E                 ; $0D:C66A: A6 9E       ;
CODE_0DC66C:    RTS                     ; $0D:C66C: 60          ;

CODE_0DC66D:    LDA $0237               ; $0D:C66D: AD 37 02    ;
CODE_0DC670:    CMP #$2C                ; $0D:C670: C9 2C       ;
CODE_0DC672:    BCC CODE_0DC66C         ; $0D:C672: 90 F8       ;
CODE_0DC674:    LDA $0029,y             ; $0D:C674: B9 29 00    ;
CODE_0DC677:    BNE CODE_0DC66C         ; $0D:C677: D0 F3       ;
CODE_0DC679:    LDA $0079,y             ; $0D:C679: B9 79 00    ;
CODE_0DC67C:    STA $79,x               ; $0D:C67C: 95 79       ;
CODE_0DC67E:    LDA $021A,y             ; $0D:C67E: B9 1A 02    ;
CODE_0DC681:    STA $021A,x             ; $0D:C681: 9D 1A 02    ;
CODE_0DC684:    LDA #$01                ; $0D:C684: A9 01       ;
CODE_0DC686:    STA $BC,x               ; $0D:C686: 95 BC       ;
CODE_0DC688:    LDA $0238,y             ; $0D:C688: B9 38 02    ;
CODE_0DC68B:    SEC                     ; $0D:C68B: 38          ;
CODE_0DC68C:    SBC #$08                ; $0D:C68C: E9 08       ;
CODE_0DC68E:    STA $0238,x             ; $0D:C68E: 9D 38 02    ;
CODE_0DC691:    LDA $07B7,x             ; $0D:C691: BD B7 07    ;
CODE_0DC694:    AND #$03                ; $0D:C694: 29 03       ;
CODE_0DC696:    TAY                     ; $0D:C696: A8          ;
CODE_0DC697:    LDA DATA_0DC613,y       ; $0D:C697: B9 13 C6    ;
CODE_0DC69A:    STA $03                 ; $0D:C69A: 85 03       ;
CODE_0DC69C:    LDA DATA_0DC617,y       ; $0D:C69C: B9 17 C6    ;
CODE_0DC69F:    STA $02                 ; $0D:C69F: 85 02       ;
CODE_0DC6A1:    LDA DATA_0DC61B,y       ; $0D:C6A1: B9 1B C6    ;
CODE_0DC6A4:    STA $01                 ; $0D:C6A4: 85 01       ;
CODE_0DC6A6:    LDX $9E                 ; $0D:C6A6: A6 9E       ;
CODE_0DC6A8:    JSR CODE_0DD30E         ; $0D:C6A8: 20 0E D3    ;
CODE_0DC6AB:    LDY $5D                 ; $0D:C6AB: A4 5D       ;
CODE_0DC6AD:    CPY #$08                ; $0D:C6AD: C0 08       ;
CODE_0DC6AF:    BCS CODE_0DC6BF         ; $0D:C6AF: B0 0E       ;
CODE_0DC6B1:    TAY                     ; $0D:C6B1: A8          ;
CODE_0DC6B2:    LDA $07B8,x             ; $0D:C6B2: BD B8 07    ;
CODE_0DC6B5:    AND #$03                ; $0D:C6B5: 29 03       ;
CODE_0DC6B7:    BEQ CODE_0DC6BE         ; $0D:C6B7: F0 05       ;
CODE_0DC6B9:    TYA                     ; $0D:C6B9: 98          ;
CODE_0DC6BA:    EOR #$FF                ; $0D:C6BA: 49 FF       ;
CODE_0DC6BC:    TAY                     ; $0D:C6BC: A8          ;
CODE_0DC6BD:    INY                     ; $0D:C6BD: C8          ;
CODE_0DC6BE:    TYA                     ; $0D:C6BE: 98          ;
CODE_0DC6BF:    JSR CODE_0DC5C2         ; $0D:C6BF: 20 C2 C5    ;
CODE_0DC6C2:    LDY #$02                ; $0D:C6C2: A0 02       ;
CODE_0DC6C4:    STA $5E,x               ; $0D:C6C4: 95 5E       ;
CODE_0DC6C6:    CMP #$00                ; $0D:C6C6: C9 00       ;
CODE_0DC6C8:    BMI CODE_0DC6CB         ; $0D:C6C8: 30 01       ;
CODE_0DC6CA:    DEY                     ; $0D:C6CA: 88          ;
CODE_0DC6CB:    STY $47,x               ; $0D:C6CB: 94 47       ;
CODE_0DC6CD:    LDA #$FD                ; $0D:C6CD: A9 FD       ;
CODE_0DC6CF:    STA $A1,x               ; $0D:C6CF: 95 A1       ;
CODE_0DC6D1:    LDA #$01                ; $0D:C6D1: A9 01       ;
CODE_0DC6D3:    STA $10,x               ; $0D:C6D3: 95 10       ;
CODE_0DC6D5:    LDA #$05                ; $0D:C6D5: A9 05       ;
CODE_0DC6D7:    STA $29,x               ; $0D:C6D7: 95 29       ;
CODE_0DC6D9:    RTS                     ; $0D:C6D9: 60          ;

DATA_0DC6DA:        db $28,$38,$28,$38,$28

DATA_0DC6DF:        db $00,$00,$10,$10,$00

CODE_0DC6E4:    JSR CODE_0DC827         ; $0D:C6E4: 20 27 C8    ;
CODE_0DC6E7:    STZ $5E,x               ; $0D:C6E7: 74 5E       ;
CODE_0DC6E9:    LDA $1C,x               ; $0D:C6E9: B5 1C       ;
CODE_0DC6EB:    SEC                     ; $0D:C6EB: 38          ;
CODE_0DC6EC:    SBC #$1B                ; $0D:C6EC: E9 1B       ;
CODE_0DC6EE:    TAY                     ; $0D:C6EE: A8          ;
CODE_0DC6EF:    LDA DATA_0DC6DA,y       ; $0D:C6EF: B9 DA C6    ;
CODE_0DC6F2:    STA $0388,x             ; $0D:C6F2: 9D 88 03    ;
CODE_0DC6F5:    LDA DATA_0DC6DF,y       ; $0D:C6F5: B9 DF C6    ;
CODE_0DC6F8:    STA $0203,x             ; $0D:C6F8: 9D 03 02    ;
CODE_0DC6FB:    LDA $0238,x             ; $0D:C6FB: BD 38 02    ;
CODE_0DC6FE:    CLC                     ; $0D:C6FE: 18          ;
CODE_0DC6FF:    ADC #$04                ; $0D:C6FF: 69 04       ;
CODE_0DC701:    STA $0238,x             ; $0D:C701: 9D 38 02    ;
CODE_0DC704:    LDA $021A,x             ; $0D:C704: BD 1A 02    ;
CODE_0DC707:    CLC                     ; $0D:C707: 18          ;
CODE_0DC708:    ADC #$04                ; $0D:C708: 69 04       ;
CODE_0DC70A:    STA $021A,x             ; $0D:C70A: 9D 1A 02    ;
CODE_0DC70D:    LDA $79,x               ; $0D:C70D: B5 79       ;
CODE_0DC70F:    ADC #$00                ; $0D:C70F: 69 00       ;
CODE_0DC711:    STA $79,x               ; $0D:C711: 95 79       ;
CODE_0DC713:    JMP CODE_0DCB06         ; $0D:C713: 4C 06 CB    ;

DATA_0DC716:        db $80,$30,$40,$80,$30,$50,$50,$70 ;
                    db $20,$40,$80,$A0,$70,$40,$90,$68 ;

DATA_0DC726:        db $0E,$05,$06,$0E,$1C,$20,$10,$0C ;
                    db $1E,$22,$18,$14 ;

DATA_0DC732:        db $10,$60,$20

CODE_0DC735:    PHA                     ; $0D:C735: 48          ;
CODE_0DC736:    LDA $079B               ; $0D:C736: AD 9B 07    ;
CODE_0DC739:    BNE CODE_0DC6D9         ; $0D:C739: D0 9E       ;
CODE_0DC73B:    JSR CODE_0DC5C2         ; $0D:C73B: 20 C2 C5    ;
CODE_0DC73E:    LDA $07B8,x             ; $0D:C73E: BD B8 07    ;
CODE_0DC741:    AND #$03                ; $0D:C741: 29 03       ;
CODE_0DC743:    TAY                     ; $0D:C743: A8          ;
CODE_0DC744:    LDA DATA_0DC732,y       ; $0D:C744: B9 32 C7    ;
CODE_0DC747:    STA $079B               ; $0D:C747: 8D 9B 07    ;
CODE_0DC74A:    LDY #$03                ; $0D:C74A: A0 03       ;
CODE_0DC74C:    LDA $06CC               ; $0D:C74C: AD CC 06    ;
CODE_0DC74F:    BEQ CODE_0DC752         ; $0D:C74F: F0 01       ;
CODE_0DC751:    INY                     ; $0D:C751: C8          ;
CODE_0DC752:    STY $00                 ; $0D:C752: 84 00       ;
CODE_0DC754:    CPX $00                 ; $0D:C754: E4 00       ;
CODE_0DC756:    BCC CODE_0DC75B         ; $0D:C756: 90 03       ;
CODE_0DC758:    JMP CODE_0DC6D9         ; $0D:C758: 4C D9 C6    ;

CODE_0DC75B:    LDA $07B7,x             ; $0D:C75B: BD B7 07    ;
CODE_0DC75E:    AND #$03                ; $0D:C75E: 29 03       ;
CODE_0DC760:    STA $00                 ; $0D:C760: 85 00       ;
CODE_0DC762:    STA $01                 ; $0D:C762: 85 01       ;
CODE_0DC764:    LDA #$FB                ; $0D:C764: A9 FB       ;
CODE_0DC766:    STA $A1,x               ; $0D:C766: 95 A1       ;
CODE_0DC768:    LDA #$00                ; $0D:C768: A9 00       ;
CODE_0DC76A:    LDY $5D                 ; $0D:C76A: A4 5D       ;
CODE_0DC76C:    BEQ CODE_0DC775         ; $0D:C76C: F0 07       ;
CODE_0DC76E:    LDA #$04                ; $0D:C76E: A9 04       ;
CODE_0DC770:    CPY #$19                ; $0D:C770: C0 19       ;
CODE_0DC772:    BCC CODE_0DC775         ; $0D:C772: 90 01       ;
CODE_0DC774:    ASL A                   ; $0D:C774: 0A          ;
CODE_0DC775:    PHA                     ; $0D:C775: 48          ;
CODE_0DC776:    CLC                     ; $0D:C776: 18          ;
CODE_0DC777:    ADC $00                 ; $0D:C777: 65 00       ;
CODE_0DC779:    STA $00                 ; $0D:C779: 85 00       ;
CODE_0DC77B:    LDA $07B8,x             ; $0D:C77B: BD B8 07    ;
CODE_0DC77E:    AND #$03                ; $0D:C77E: 29 03       ;
CODE_0DC780:    BEQ CODE_0DC789         ; $0D:C780: F0 07       ;
CODE_0DC782:    LDA $07B9,x             ; $0D:C782: BD B9 07    ;
CODE_0DC785:    AND #$0F                ; $0D:C785: 29 0F       ;
CODE_0DC787:    STA $00                 ; $0D:C787: 85 00       ;
CODE_0DC789:    PLA                     ; $0D:C789: 68          ;
CODE_0DC78A:    CLC                     ; $0D:C78A: 18          ;
CODE_0DC78B:    ADC $01                 ; $0D:C78B: 65 01       ;
CODE_0DC78D:    TAY                     ; $0D:C78D: A8          ;
CODE_0DC78E:    LDA DATA_0DC726,y       ; $0D:C78E: B9 26 C7    ;
CODE_0DC791:    STA $5E,x               ; $0D:C791: 95 5E       ;
CODE_0DC793:    LDA #$01                ; $0D:C793: A9 01       ;
CODE_0DC795:    STA $47,x               ; $0D:C795: 95 47       ;
CODE_0DC797:    LDA $5D                 ; $0D:C797: A5 5D       ;
CODE_0DC799:    BNE CODE_0DC7AD         ; $0D:C799: D0 12       ;
CODE_0DC79B:    LDY $00                 ; $0D:C79B: A4 00       ;
CODE_0DC79D:    TYA                     ; $0D:C79D: 98          ;
CODE_0DC79E:    AND #$02                ; $0D:C79E: 29 02       ;
CODE_0DC7A0:    BEQ CODE_0DC7AD         ; $0D:C7A0: F0 0B       ;
CODE_0DC7A2:    LDA $5E,x               ; $0D:C7A2: B5 5E       ;
CODE_0DC7A4:    EOR #$FF                ; $0D:C7A4: 49 FF       ;
CODE_0DC7A6:    CLC                     ; $0D:C7A6: 18          ;
CODE_0DC7A7:    ADC #$01                ; $0D:C7A7: 69 01       ;
CODE_0DC7A9:    STA $5E,x               ; $0D:C7A9: 95 5E       ;
CODE_0DC7AB:    INC $47,x               ; $0D:C7AB: F6 47       ;
CODE_0DC7AD:    TYA                     ; $0D:C7AD: 98          ;
CODE_0DC7AE:    AND #$02                ; $0D:C7AE: 29 02       ;
CODE_0DC7B0:    BEQ CODE_0DC7C2         ; $0D:C7B0: F0 10       ;
CODE_0DC7B2:    LDA $0219               ; $0D:C7B2: AD 19 02    ;
CODE_0DC7B5:    CLC                     ; $0D:C7B5: 18          ;
CODE_0DC7B6:    ADC DATA_0DC716,y       ; $0D:C7B6: 79 16 C7    ;
CODE_0DC7B9:    STA $021A,x             ; $0D:C7B9: 9D 1A 02    ;
CODE_0DC7BC:    LDA $78                 ; $0D:C7BC: A5 78       ;
CODE_0DC7BE:    ADC #$00                ; $0D:C7BE: 69 00       ;
CODE_0DC7C0:    BRA CODE_0DC7D0         ; $0D:C7C0: 80 0E       ;

CODE_0DC7C2:    LDA $0219               ; $0D:C7C2: AD 19 02    ;
CODE_0DC7C5:    SEC                     ; $0D:C7C5: 38          ;
CODE_0DC7C6:    SBC DATA_0DC716,y       ; $0D:C7C6: F9 16 C7    ;
CODE_0DC7C9:    STA $021A,x             ; $0D:C7C9: 9D 1A 02    ;
CODE_0DC7CC:    LDA $78                 ; $0D:C7CC: A5 78       ;
CODE_0DC7CE:    SBC #$00                ; $0D:C7CE: E9 00       ;
CODE_0DC7D0:    STA $79,x               ; $0D:C7D0: 95 79       ;
CODE_0DC7D2:    LDA #$01                ; $0D:C7D2: A9 01       ;
CODE_0DC7D4:    STA $10,x               ; $0D:C7D4: 95 10       ;
CODE_0DC7D6:    STA $BC,x               ; $0D:C7D6: 95 BC       ;
CODE_0DC7D8:    LDA #$F8                ; $0D:C7D8: A9 F8       ;
CODE_0DC7DA:    STA $0238,x             ; $0D:C7DA: 9D 38 02    ;
CODE_0DC7DD:    RTS                     ; $0D:C7DD: 60          ;

CODE_0DC7DE:    LDY #$04                ; $0D:C7DE: A0 04       ;
CODE_0DC7E0:    CPY $009E               ; $0D:C7E0: CC 9E 00    ;
CODE_0DC7E3:    BEQ CODE_0DC7F4         ; $0D:C7E3: F0 0F       ;
CODE_0DC7E5:    LDA $001C,y             ; $0D:C7E5: B9 1C 00    ;
CODE_0DC7E8:    CMP #$2D                ; $0D:C7E8: C9 2D       ;
CODE_0DC7EA:    BNE CODE_0DC7F4         ; $0D:C7EA: D0 08       ;
CODE_0DC7EC:    LDA #$00                ; $0D:C7EC: A9 00       ;
CODE_0DC7EE:    STA $001C,y             ; $0D:C7EE: 99 1C 00    ;
CODE_0DC7F1:    STA $0010,y             ; $0D:C7F1: 99 10 00    ;
CODE_0DC7F4:    DEY                     ; $0D:C7F4: 88          ;
CODE_0DC7F5:    BPL CODE_0DC7E0         ; $0D:C7F5: 10 E9       ;
CODE_0DC7F7:    JSR CODE_0DC827         ; $0D:C7F7: 20 27 C8    ;
CODE_0DC7FA:    STX $0368               ; $0D:C7FA: 8E 68 03    ;
CODE_0DC7FD:    STZ $0363               ; $0D:C7FD: 9C 63 03    ;
CODE_0DC800:    STZ $0369               ; $0D:C800: 9C 69 03    ;
CODE_0DC803:    LDA $021A,x             ; $0D:C803: BD 1A 02    ;
CODE_0DC806:    STA $0366               ; $0D:C806: 8D 66 03    ;
CODE_0DC809:    LDA #$DF                ; $0D:C809: A9 DF       ;
CODE_0DC80B:    STA $079C               ; $0D:C80B: 8D 9C 07    ;
CODE_0DC80E:    STA $47,x               ; $0D:C80E: 95 47       ;
CODE_0DC810:    LDA #$20                ; $0D:C810: A9 20       ;
CODE_0DC812:    STA $0364               ; $0D:C812: 8D 64 03    ;
CODE_0DC815:    STA $0792,x             ; $0D:C815: 9D 92 07    ;
CODE_0DC818:    STA $0257,x             ; $0D:C818: 9D 57 02    ;
CODE_0DC81B:    LDA $1C,x               ; $0D:C81B: B5 1C       ;
CODE_0DC81D:    LDA #$05                ; $0D:C81D: A9 05       ;
CODE_0DC81F:    STA $0283               ; $0D:C81F: 8D 83 02    ;
CODE_0DC822:    LSR A                   ; $0D:C822: 4A          ;
CODE_0DC823:    STA $0365               ; $0D:C823: 8D 65 03    ;
CODE_0DC826:    RTS                     ; $0D:C826: 60          ;

CODE_0DC827:    LDY #$FF                ; $0D:C827: A0 FF       ;
CODE_0DC829:    INY                     ; $0D:C829: C8          ;
CODE_0DC82A:    LDA $0010,y             ; $0D:C82A: B9 10 00    ;
CODE_0DC82D:    BNE CODE_0DC829         ; $0D:C82D: D0 FA       ;
CODE_0DC82F:    STY $06CF               ; $0D:C82F: 8C CF 06    ;
CODE_0DC832:    TXA                     ; $0D:C832: 8A          ;
CODE_0DC833:    ORA #$80                ; $0D:C833: 09 80       ;
CODE_0DC835:    STA $0010,y             ; $0D:C835: 99 10 00    ;
CODE_0DC838:    LDA $79,x               ; $0D:C838: B5 79       ;
CODE_0DC83A:    STA $0079,y             ; $0D:C83A: 99 79 00    ;
CODE_0DC83D:    LDA $021A,x             ; $0D:C83D: BD 1A 02    ;
CODE_0DC840:    STA $021A,y             ; $0D:C840: 99 1A 02    ;
CODE_0DC843:    LDA #$01                ; $0D:C843: A9 01       ;
CODE_0DC845:    STA $10,x               ; $0D:C845: 95 10       ;
CODE_0DC847:    STA $00BC,y             ; $0D:C847: 99 BC 00    ;
CODE_0DC84A:    LDA $0238,x             ; $0D:C84A: BD 38 02    ;
CODE_0DC84D:    STA $0238,y             ; $0D:C84D: 99 38 02    ;
CODE_0DC850:    RTS                     ; $0D:C850: 60          ;

DATA_0DC851:        db $90,$80,$70,$90
DATA_0DC855:        db $FF,$01

CODE_0DC857:    LDA $079B               ; $0D:C857: AD 9B 07    ;
CODE_0DC85A:    BNE CODE_0DC850         ; $0D:C85A: D0 F4       ;
CODE_0DC85C:    STA $043D,x             ; $0D:C85C: 9D 3D 04    ;
CODE_0DC85F:    LDA #$06                ; $0D:C85F: A9 06       ;
CODE_0DC861:    STA $014B               ; $0D:C861: 8D 4B 01    ;
CODE_0DC864:    LDA #$18                ; $0D:C864: A9 18       ;
CODE_0DC866:    STA $0F4C               ; $0D:C866: 8D 4C 0F    ;
CODE_0DC869:    STX $0F4D               ; $0D:C869: 8E 4D 0F    ;
CODE_0DC86C:    LDY $0368               ; $0D:C86C: AC 68 03    ;
CODE_0DC86F:    LDA $001C,y             ; $0D:C86F: B9 1C 00    ;
CODE_0DC872:    CMP #$2D                ; $0D:C872: C9 2D       ;
CODE_0DC874:    BEQ CODE_0DC8C5         ; $0D:C874: F0 4F       ;
CODE_0DC876:    JSR CODE_0DD5EA         ; $0D:C876: 20 EA D5    ;
CODE_0DC879:    CLC                     ; $0D:C879: 18          ;
CODE_0DC87A:    ADC #$20                ; $0D:C87A: 69 20       ;
CODE_0DC87C:    LDY $06CC               ; $0D:C87C: AC CC 06    ;
CODE_0DC87F:    BEQ CODE_0DC884         ; $0D:C87F: F0 03       ;
CODE_0DC881:    SEC                     ; $0D:C881: 38          ;
CODE_0DC882:    SBC #$10                ; $0D:C882: E9 10       ;
CODE_0DC884:    STA $079B               ; $0D:C884: 8D 9B 07    ;
CODE_0DC887:    LDA $07B7,x             ; $0D:C887: BD B7 07    ;
CODE_0DC88A:    AND #$03                ; $0D:C88A: 29 03       ;
CODE_0DC88C:    STA $041D,x             ; $0D:C88C: 9D 1D 04    ;
CODE_0DC88F:    TAY                     ; $0D:C88F: A8          ;
CODE_0DC890:    LDA DATA_0DC851,y       ; $0D:C890: B9 51 C8    ;
CODE_0DC893:    STA $0238,x             ; $0D:C893: 9D 38 02    ;
CODE_0DC896:    LDA $071D               ; $0D:C896: AD 1D 07    ;
CODE_0DC899:    CLC                     ; $0D:C899: 18          ;
CODE_0DC89A:    ADC #$20                ; $0D:C89A: 69 20       ;
CODE_0DC89C:    STA $021A,x             ; $0D:C89C: 9D 1A 02    ;
CODE_0DC89F:    LDA $071B               ; $0D:C89F: AD 1B 07    ;
CODE_0DC8A2:    ADC #$00                ; $0D:C8A2: 69 00       ;
CODE_0DC8A4:    STA $79,x               ; $0D:C8A4: 95 79       ;
CODE_0DC8A6:    STZ $0F4C               ; $0D:C8A6: 9C 4C 0F    ;
CODE_0DC8A9:    STZ $0F4D               ; $0D:C8A9: 9C 4D 0F    ;
CODE_0DC8AC:    STZ $014B               ; $0D:C8AC: 9C 4B 01    ;
CODE_0DC8AF:    LDA #$17                ; $0D:C8AF: A9 17       ;
CODE_0DC8B1:    STA $1603               ; $0D:C8B1: 8D 03 16    ;
CODE_0DC8B4:    LDA #$08                ; $0D:C8B4: A9 08       ;
CODE_0DC8B6:    STA $0490,x             ; $0D:C8B6: 9D 90 04    ;
CODE_0DC8B9:    LDA #$01                ; $0D:C8B9: A9 01       ;
CODE_0DC8BB:    STA $BC,x               ; $0D:C8BB: 95 BC       ;
CODE_0DC8BD:    STA $10,x               ; $0D:C8BD: 95 10       ;
CODE_0DC8BF:    LSR A                   ; $0D:C8BF: 4A          ;
CODE_0DC8C0:    STA $0402,x             ; $0D:C8C0: 9D 02 04    ;
CODE_0DC8C3:    STA $29,x               ; $0D:C8C3: 95 29       ;
CODE_0DC8C5:    STX $0F4E               ; $0D:C8C5: 8E 4E 0F    ;
CODE_0DC8C8:    RTS                     ; $0D:C8C8: 60          ;

CODE_0DC8C9:    STA $0238,x             ; $0D:C8C9: 9D 38 02    ;
CODE_0DC8CC:    LDA $071D               ; $0D:C8CC: AD 1D 07    ;
CODE_0DC8CF:    CLC                     ; $0D:C8CF: 18          ;
CODE_0DC8D0:    ADC #$20                ; $0D:C8D0: 69 20       ;
CODE_0DC8D2:    STA $021A,x             ; $0D:C8D2: 9D 1A 02    ;
CODE_0DC8D5:    LDA $071B               ; $0D:C8D5: AD 1B 07    ;
CODE_0DC8D8:    ADC #$00                ; $0D:C8D8: 69 00       ;
CODE_0DC8DA:    STA $79,x               ; $0D:C8DA: 95 79       ;
CODE_0DC8DC:    BRA CODE_0DC912         ; $0D:C8DC: 80 34       ;

CODE_0DC8DE:    LDA $021A,y             ; $0D:C8DE: B9 1A 02    ;
CODE_0DC8E1:    SEC                     ; $0D:C8E1: 38          ;
CODE_0DC8E2:    SBC #$0E                ; $0D:C8E2: E9 0E       ;
CODE_0DC8E4:    STA $021A,x             ; $0D:C8E4: 9D 1A 02    ;
CODE_0DC8E7:    LDA $0079,y             ; $0D:C8E7: B9 79 00    ;
CODE_0DC8EA:    STA $79,x               ; $0D:C8EA: 95 79       ;
CODE_0DC8EC:    LDA $0238,y             ; $0D:C8EC: B9 38 02    ;
CODE_0DC8EF:    CLC                     ; $0D:C8EF: 18          ;
CODE_0DC8F0:    ADC #$08                ; $0D:C8F0: 69 08       ;
CODE_0DC8F2:    STA $0238,x             ; $0D:C8F2: 9D 38 02    ;
CODE_0DC8F5:    LDA $07B7,x             ; $0D:C8F5: BD B7 07    ;
CODE_0DC8F8:    AND #$03                ; $0D:C8F8: 29 03       ;
CODE_0DC8FA:    STA $041D,x             ; $0D:C8FA: 9D 1D 04    ;
CODE_0DC8FD:    TAY                     ; $0D:C8FD: A8          ;
CODE_0DC8FE:    LDA DATA_0DC851,y       ; $0D:C8FE: B9 51 C8    ;
CODE_0DC901:    LDY #$00                ; $0D:C901: A0 00       ;
CODE_0DC903:    CMP $0238,x             ; $0D:C903: DD 38 02    ;
CODE_0DC906:    BCC CODE_0DC909         ; $0D:C906: 90 01       ;
CODE_0DC908:    INY                     ; $0D:C908: C8          ;
CODE_0DC909:    LDA DATA_0DC855,y       ; $0D:C909: B9 55 C8    ;
CODE_0DC90C:    STA $043D,x             ; $0D:C90C: 9D 3D 04    ;
CODE_0DC90F:    STZ $06CB               ; $0D:C90F: 9C CB 06    ;
CODE_0DC912:    LDA #$08                ; $0D:C912: A9 08       ;
CODE_0DC914:    STA $0490,x             ; $0D:C914: 9D 90 04    ;
CODE_0DC917:    LDA #$01                ; $0D:C917: A9 01       ;
CODE_0DC919:    STA $BC,x               ; $0D:C919: 95 BC       ;
CODE_0DC91B:    STA $10,x               ; $0D:C91B: 95 10       ;
CODE_0DC91D:    LSR A                   ; $0D:C91D: 4A          ;
CODE_0DC91E:    STA $0402,x             ; $0D:C91E: 9D 02 04    ;
CODE_0DC921:    STA $29,x               ; $0D:C921: 95 29       ;
CODE_0DC923:    RTS                     ; $0D:C923: 60          ;

DATA_0DC924:        db $00,$30,$60,$60,$00,$20

DATA_0DC92A:        db $60,$40,$70,$40,$60,$30

CODE_0DC930:    LDA $079B               ; $0D:C930: AD 9B 07    ;
CODE_0DC933:    BNE CODE_0DC97E         ; $0D:C933: D0 49       ;
CODE_0DC935:    LDA #$20                ; $0D:C935: A9 20       ;
CODE_0DC937:    STA $079B               ; $0D:C937: 8D 9B 07    ;
CODE_0DC93A:    DEC $06D7               ; $0D:C93A: CE D7 06    ;
CODE_0DC93D:    LDY #$0A                ; $0D:C93D: A0 0A       ;
CODE_0DC93F:    DEY                     ; $0D:C93F: 88          ;
CODE_0DC940:    LDA $001C,y             ; $0D:C940: B9 1C 00    ;
CODE_0DC943:    CMP #$31                ; $0D:C943: C9 31       ;
CODE_0DC945:    BNE CODE_0DC93F         ; $0D:C945: D0 F8       ;
CODE_0DC947:    LDA $021A,y             ; $0D:C947: B9 1A 02    ;
CODE_0DC94A:    SEC                     ; $0D:C94A: 38          ;
CODE_0DC94B:    SBC #$30                ; $0D:C94B: E9 30       ;
CODE_0DC94D:    PHA                     ; $0D:C94D: 48          ;
CODE_0DC94E:    LDA $0079,y             ; $0D:C94E: B9 79 00    ;
CODE_0DC951:    SBC #$00                ; $0D:C951: E9 00       ;
CODE_0DC953:    STA $00                 ; $0D:C953: 85 00       ;
CODE_0DC955:    LDA $06D7               ; $0D:C955: AD D7 06    ;
CODE_0DC958:    CLC                     ; $0D:C958: 18          ;
CODE_0DC959:    ADC $0029,y             ; $0D:C959: 79 29 00    ;
CODE_0DC95C:    TAY                     ; $0D:C95C: A8          ;
CODE_0DC95D:    PLA                     ; $0D:C95D: 68          ;
CODE_0DC95E:    CLC                     ; $0D:C95E: 18          ;
CODE_0DC95F:    ADC DATA_0DC924,y       ; $0D:C95F: 79 24 C9    ;
CODE_0DC962:    STA $021A,x             ; $0D:C962: 9D 1A 02    ;
CODE_0DC965:    LDA $00                 ; $0D:C965: A5 00       ;
CODE_0DC967:    ADC #$00                ; $0D:C967: 69 00       ;
CODE_0DC969:    STA $79,x               ; $0D:C969: 95 79       ;
CODE_0DC96B:    LDA DATA_0DC92A,y       ; $0D:C96B: B9 2A C9    ;
CODE_0DC96E:    STA $0238,x             ; $0D:C96E: 9D 38 02    ;
CODE_0DC971:    LDA #$01                ; $0D:C971: A9 01       ;
CODE_0DC973:    STA $BC,x               ; $0D:C973: 95 BC       ;
CODE_0DC975:    STA $10,x               ; $0D:C975: 95 10       ;
CODE_0DC977:    LSR A                   ; $0D:C977: 4A          ;
CODE_0DC978:    STA $5E,x               ; $0D:C978: 95 5E       ;
CODE_0DC97A:    LDA #$08                ; $0D:C97A: A9 08       ;
CODE_0DC97C:    STA $A1,x               ; $0D:C97C: 95 A1       ;
CODE_0DC97E:    RTS                     ; $0D:C97E: 60          ;

DATA_0DC97F:        db $01,$02,$04,$08,$10,$20,$40,$80

DATA_0DC987:        db $40,$30,$90,$50,$20,$60,$A0,$70

DATA_0DC98F:        db $0A,$0B

CODE_0DC991:    LDA $079B               ; $0D:C991: AD 9B 07    ;
CODE_0DC994:    BNE CODE_0DCA01         ; $0D:C994: D0 6B       ;
CODE_0DC996:    LDA $5C                 ; $0D:C996: A5 5C       ;
CODE_0DC998:    BNE CODE_0DC9EE         ; $0D:C998: D0 54       ;
CODE_0DC99A:    CPX #$03                ; $0D:C99A: E0 03       ;
CODE_0DC99C:    BCS CODE_0DCA01         ; $0D:C99C: B0 63       ;
CODE_0DC99E:    LDY #$00                ; $0D:C99E: A0 00       ;
CODE_0DC9A0:    LDA $07B7,x             ; $0D:C9A0: BD B7 07    ;
CODE_0DC9A3:    CMP #$AA                ; $0D:C9A3: C9 AA       ;
CODE_0DC9A5:    BCC CODE_0DC9A8         ; $0D:C9A5: 90 01       ;
CODE_0DC9A7:    INY                     ; $0D:C9A7: C8          ;
CODE_0DC9A8:    LDA $075F               ; $0D:C9A8: AD 5F 07    ;
CODE_0DC9AB:    CMP #$01                ; $0D:C9AB: C9 01       ;
CODE_0DC9AD:    BEQ CODE_0DC9B0         ; $0D:C9AD: F0 01       ;
CODE_0DC9AF:    INY                     ; $0D:C9AF: C8          ;
CODE_0DC9B0:    TYA                     ; $0D:C9B0: 98          ;
CODE_0DC9B1:    AND #$01                ; $0D:C9B1: 29 01       ;
CODE_0DC9B3:    TAY                     ; $0D:C9B3: A8          ;
CODE_0DC9B4:    LDA DATA_0DC98F,y       ; $0D:C9B4: B9 8F C9    ;
CODE_0DC9B7:    STA $1C,x               ; $0D:C9B7: 95 1C       ;
CODE_0DC9B9:    LDA $06DD               ; $0D:C9B9: AD DD 06    ;
CODE_0DC9BC:    CMP #$FF                ; $0D:C9BC: C9 FF       ;
CODE_0DC9BE:    BNE CODE_0DC9C3         ; $0D:C9BE: D0 03       ;
CODE_0DC9C0:    STZ $06DD               ; $0D:C9C0: 9C DD 06    ;
CODE_0DC9C3:    LDA $07B7,x             ; $0D:C9C3: BD B7 07    ;
CODE_0DC9C6:    AND #$07                ; $0D:C9C6: 29 07       ;
CODE_0DC9C8:    TAY                     ; $0D:C9C8: A8          ;
CODE_0DC9C9:    LDA DATA_0DC97F,y       ; $0D:C9C9: B9 7F C9    ;
CODE_0DC9CC:    BIT $06DD               ; $0D:C9CC: 2C DD 06    ;
CODE_0DC9CF:    BEQ CODE_0DC9D7         ; $0D:C9CF: F0 06       ;
CODE_0DC9D1:    INY                     ; $0D:C9D1: C8          ;
CODE_0DC9D2:    TYA                     ; $0D:C9D2: 98          ;
CODE_0DC9D3:    AND #$07                ; $0D:C9D3: 29 07       ;
CODE_0DC9D5:    BRA CODE_0DC9C8         ; $0D:C9D5: 80 F1       ;

CODE_0DC9D7:    ORA $06DD               ; $0D:C9D7: 0D DD 06    ;
CODE_0DC9DA:    STA $06DD               ; $0D:C9DA: 8D DD 06    ;
CODE_0DC9DD:    LDA DATA_0DC987,y       ; $0D:C9DD: B9 87 C9    ;
CODE_0DC9E0:    JSR CODE_0DC8C9         ; $0D:C9E0: 20 C9 C8    ;
CODE_0DC9E3:    STA $041D,x             ; $0D:C9E3: 9D 1D 04    ;
CODE_0DC9E6:    LDA #$20                ; $0D:C9E6: A9 20       ;
CODE_0DC9E8:    STA $079B               ; $0D:C9E8: 8D 9B 07    ;
CODE_0DC9EB:    JMP CODE_0DC4B9         ; $0D:C9EB: 4C B9 C4    ;

CODE_0DC9EE:    LDY #$FF                ; $0D:C9EE: A0 FF       ;
CODE_0DC9F0:    INY                     ; $0D:C9F0: C8          ;
CODE_0DC9F1:    CPY #$09                ; $0D:C9F1: C0 09       ;
CODE_0DC9F3:    BCS CODE_0DCA02         ; $0D:C9F3: B0 0D       ;
CODE_0DC9F5:    LDA $0010,y             ; $0D:C9F5: B9 10 00    ;
CODE_0DC9F8:    BEQ CODE_0DC9F0         ; $0D:C9F8: F0 F6       ;
CODE_0DC9FA:    LDA $001C,y             ; $0D:C9FA: B9 1C 00    ;
CODE_0DC9FD:    CMP #$08                ; $0D:C9FD: C9 08       ;
CODE_0DC9FF:    BNE CODE_0DC9F0         ; $0D:C9FF: D0 EF       ;
CODE_0DCA01:    RTS                     ; $0D:CA01: 60          ;

CODE_0DCA02:    LDA #$09                ; $0D:CA02: A9 09       ;
CODE_0DCA04:    STA $1603               ; $0D:CA04: 8D 03 16    ;
CODE_0DCA07:    LDA #$08                ; $0D:CA07: A9 08       ;
CODE_0DCA09:    BNE CODE_0DC9B7         ; $0D:CA09: D0 AC       ;
CODE_0DCA0B:    LDY #$00                ; $0D:CA0B: A0 00       ;
CODE_0DCA0D:    SEC                     ; $0D:CA0D: 38          ;
CODE_0DCA0E:    SBC #$37                ; $0D:CA0E: E9 37       ;
CODE_0DCA10:    PHA                     ; $0D:CA10: 48          ;
CODE_0DCA11:    CMP #$04                ; $0D:CA11: C9 04       ;
CODE_0DCA13:    BCS CODE_0DCA20         ; $0D:CA13: B0 0B       ;
CODE_0DCA15:    PHA                     ; $0D:CA15: 48          ;
CODE_0DCA16:    LDY #$06                ; $0D:CA16: A0 06       ;
CODE_0DCA18:    LDA $076A               ; $0D:CA18: AD 6A 07    ;
CODE_0DCA1B:    BEQ CODE_0DCA1F         ; $0D:CA1B: F0 02       ;
CODE_0DCA1D:    LDY #$02                ; $0D:CA1D: A0 02       ;
CODE_0DCA1F:    PLA                     ; $0D:CA1F: 68          ;
CODE_0DCA20:    STY $01                 ; $0D:CA20: 84 01       ;
CODE_0DCA22:    LDY #$B0                ; $0D:CA22: A0 B0       ;
CODE_0DCA24:    AND #$02                ; $0D:CA24: 29 02       ;
CODE_0DCA26:    BEQ CODE_0DCA2A         ; $0D:CA26: F0 02       ;
CODE_0DCA28:    LDY #$70                ; $0D:CA28: A0 70       ;
CODE_0DCA2A:    STY $00                 ; $0D:CA2A: 84 00       ;
CODE_0DCA2C:    LDA $071B               ; $0D:CA2C: AD 1B 07    ;
CODE_0DCA2F:    STA $02                 ; $0D:CA2F: 85 02       ;
CODE_0DCA31:    LDA $071D               ; $0D:CA31: AD 1D 07    ;
CODE_0DCA34:    STA $03                 ; $0D:CA34: 85 03       ;
CODE_0DCA36:    LDY #$02                ; $0D:CA36: A0 02       ;
CODE_0DCA38:    PLA                     ; $0D:CA38: 68          ;
CODE_0DCA39:    LSR A                   ; $0D:CA39: 4A          ;
CODE_0DCA3A:    BCC CODE_0DCA3D         ; $0D:CA3A: 90 01       ;
CODE_0DCA3C:    INY                     ; $0D:CA3C: C8          ;
CODE_0DCA3D:    STY $06D3               ; $0D:CA3D: 8C D3 06    ;
CODE_0DCA40:    LDX #$FF                ; $0D:CA40: A2 FF       ;
CODE_0DCA42:    INX                     ; $0D:CA42: E8          ;
CODE_0DCA43:    CPX #$09                ; $0D:CA43: E0 09       ;
CODE_0DCA45:    BCS CODE_0DCA76         ; $0D:CA45: B0 2F       ;
CODE_0DCA47:    LDA $10,x               ; $0D:CA47: B5 10       ;
CODE_0DCA49:    BNE CODE_0DCA42         ; $0D:CA49: D0 F7       ;
CODE_0DCA4B:    LDA $01                 ; $0D:CA4B: A5 01       ;
CODE_0DCA4D:    STA $1C,x               ; $0D:CA4D: 95 1C       ;
CODE_0DCA4F:    LDA $02                 ; $0D:CA4F: A5 02       ;
CODE_0DCA51:    STA $79,x               ; $0D:CA51: 95 79       ;
CODE_0DCA53:    LDA $03                 ; $0D:CA53: A5 03       ;
CODE_0DCA55:    STA $021A,x             ; $0D:CA55: 9D 1A 02    ;
CODE_0DCA58:    CLC                     ; $0D:CA58: 18          ;
CODE_0DCA59:    ADC #$18                ; $0D:CA59: 69 18       ;
CODE_0DCA5B:    STA $03                 ; $0D:CA5B: 85 03       ;
CODE_0DCA5D:    LDA $02                 ; $0D:CA5D: A5 02       ;
CODE_0DCA5F:    ADC #$00                ; $0D:CA5F: 69 00       ;
CODE_0DCA61:    STA $02                 ; $0D:CA61: 85 02       ;
CODE_0DCA63:    LDA $00                 ; $0D:CA63: A5 00       ;
CODE_0DCA65:    STA $0238,x             ; $0D:CA65: 9D 38 02    ;
CODE_0DCA68:    LDA #$01                ; $0D:CA68: A9 01       ;
CODE_0DCA6A:    STA $BC,x               ; $0D:CA6A: 95 BC       ;
CODE_0DCA6C:    STA $10,x               ; $0D:CA6C: 95 10       ;
CODE_0DCA6E:    JSR CODE_0DC4B9         ; $0D:CA6E: 20 B9 C4    ;
CODE_0DCA71:    DEC $06D3               ; $0D:CA71: CE D3 06    ;
CODE_0DCA74:    BNE CODE_0DCA40         ; $0D:CA74: D0 CA       ;
CODE_0DCA76:    JMP CODE_0DC49B         ; $0D:CA76: 4C 9B C4    ;

CODE_0DCA79:    LDA #$2C                ; $0D:CA79: A9 2C       ;
CODE_0DCA7B:    STA $0000               ; $0D:CA7B: 8D 00 00    ;
CODE_0DCA7E:    LDA #$13                ; $0D:CA7E: A9 13       ;
CODE_0DCA80:    STA $0001               ; $0D:CA80: 8D 01 00    ;
CODE_0DCA83:    STA $0F25               ; $0D:CA83: 8D 25 0F    ;
CODE_0DCA86:    LDA $07FB               ; $0D:CA86: AD FB 07    ;
CODE_0DCA89:    BNE CODE_0DCAA0         ; $0D:CA89: D0 15       ;
CODE_0DCA8B:    LDA $075F               ; $0D:CA8B: AD 5F 07    ;
CODE_0DCA8E:    CMP #$03                ; $0D:CA8E: C9 03       ;
CODE_0DCA90:    BCS CODE_0DCAA0         ; $0D:CA90: B0 0E       ;
CODE_0DCA92:    DEC $0000               ; $0D:CA92: CE 00 00    ;
CODE_0DCA95:    DEC $0000               ; $0D:CA95: CE 00 00    ;
CODE_0DCA98:    LDA #$21                ; $0D:CA98: A9 21       ;
CODE_0DCA9A:    STA $0001               ; $0D:CA9A: 8D 01 00    ;
CODE_0DCA9D:    STA $0F25               ; $0D:CA9D: 8D 25 0F    ;
CODE_0DCAA0:    LDA $0000               ; $0D:CAA0: AD 00 00    ;
CODE_0DCAA3:    STA $0F24               ; $0D:CAA3: 8D 24 0F    ;
CODE_0DCAA6:    LDA #$01                ; $0D:CAA6: A9 01       ;
CODE_0DCAA8:    STA $5E,x               ; $0D:CAA8: 95 5E       ;
CODE_0DCAAA:    LSR A                   ; $0D:CAAA: 4A          ;
CODE_0DCAAB:    STA $29,x               ; $0D:CAAB: 95 29       ;
CODE_0DCAAD:    STA $00A1,x             ; $0D:CAAD: 9D A1 00    ;
CODE_0DCAB0:    LDA $0238,x             ; $0D:CAB0: BD 38 02    ;
CODE_0DCAB3:    STA $043D,x             ; $0D:CAB3: 9D 3D 04    ;
CODE_0DCAB6:    SEC                     ; $0D:CAB6: 38          ;
CODE_0DCAB7:    SBC #$18                ; $0D:CAB7: E9 18       ;
CODE_0DCAB9:    STA $041D,x             ; $0D:CAB9: 9D 1D 04    ;
CODE_0DCABC:    LDA #$09                ; $0D:CABC: A9 09       ;
CODE_0DCABE:    LDA #$0C                ; $0D:CABE: A9 0C       ;
CODE_0DCAC0:    JMP CODE_0DCB08         ; $0D:CAC0: 4C 08 CB    ;

CODE_0DCAC3:    LDA $1C,x               ; $0D:CAC3: B5 1C       ;
CODE_0DCAC5:    STA $06CB               ; $0D:CAC5: 8D CB 06    ;
CODE_0DCAC8:    SEC                     ; $0D:CAC8: 38          ;
CODE_0DCAC9:    SBC #$12                ; $0D:CAC9: E9 12       ;
CODE_0DCACB:    ASL A                   ; $0D:CACB: 0A          ;
CODE_0DCACC:    TAY                     ; $0D:CACC: A8          ;
CODE_0DCACD:    LDA PNTR_0DCADA,y       ; $0D:CACD: B9 DA CA    ;
CODE_0DCAD0:    STA $04                 ; $0D:CAD0: 85 04       ;
CODE_0DCAD2:    LDA PNTR_0DCADA+1,y     ; $0D:CAD2: B9 DB CA    ;
CODE_0DCAD5:    STA $05                 ; $0D:CAD5: 85 05       ;
CODE_0DCAD7:    JMP ($0004)             ; $0D:CAD7: 6C 04 00    ;

PNTR_0DCADA:        dw CODE_0DC61F
                    dw CODE_0DCAE6
                    dw CODE_0DC736
                    dw CODE_0DC857
                    dw CODE_0DC930
                    dw CODE_0DC991

CODE_0DCAE6:    RTS                     ; $0D:CAE6: 60          ;

CODE_0DCAE7:    LDY #$09                ; $0D:CAE7: A0 09       ;
CODE_0DCAE9:    LDA $001C,y             ; $0D:CAE9: B9 1C 00    ;
CODE_0DCAEC:    CMP #$11                ; $0D:CAEC: C9 11       ;
CODE_0DCAEE:    BNE CODE_0DCAF5         ; $0D:CAEE: D0 05       ;
CODE_0DCAF0:    LDA #$01                ; $0D:CAF0: A9 01       ;
CODE_0DCAF2:    STA $0029,y             ; $0D:CAF2: 99 29 00    ;
CODE_0DCAF5:    DEY                     ; $0D:CAF5: 88          ;
CODE_0DCAF6:    BPL CODE_0DCAE9         ; $0D:CAF6: 10 F1       ;
CODE_0DCAF8:    STZ $06CB               ; $0D:CAF8: 9C CB 06    ;
CODE_0DCAFB:    STZ $10,x               ; $0D:CAFB: 74 10       ;
CODE_0DCAFD:    RTS                     ; $0D:CAFD: 60          ;

CODE_0DCAFE:    LDA #$02                ; $0D:CAFE: A9 02       ;
CODE_0DCB00:    STA $47,x               ; $0D:CB00: 95 47       ;
CODE_0DCB02:    LDA #$F4                ; $0D:CB02: A9 F4       ;
CODE_0DCB04:    STA $5E,x               ; $0D:CB04: 95 5E       ;
CODE_0DCB06:    LDA #$03                ; $0D:CB06: A9 03       ;
CODE_0DCB08:    STA $0490,x             ; $0D:CB08: 9D 90 04    ;
CODE_0DCB0B:    RTS                     ; $0D:CB0B: 60          ;

CODE_0DCB0C:    DEC $0238,x             ; $0D:CB0C: DE 38 02    ;
CODE_0DCB0F:    DEC $0238,x             ; $0D:CB0F: DE 38 02    ;
CODE_0DCB12:    LDY $06CC               ; $0D:CB12: AC CC 06    ;
CODE_0DCB15:    BNE CODE_0DCB1C         ; $0D:CB15: D0 05       ;
CODE_0DCB17:    LDY #$02                ; $0D:CB17: A0 02       ;
CODE_0DCB19:    JSR CODE_0DCB9E         ; $0D:CB19: 20 9E CB    ;
CODE_0DCB1C:    LDY #$FF                ; $0D:CB1C: A0 FF       ;
CODE_0DCB1E:    LDA $03A0               ; $0D:CB1E: AD A0 03    ;
CODE_0DCB21:    STA $29,x               ; $0D:CB21: 95 29       ;
CODE_0DCB23:    BPL CODE_0DCB26         ; $0D:CB23: 10 01       ;
CODE_0DCB25:    TXY                     ; $0D:CB25: 9B          ;
CODE_0DCB26:    STY $03A0               ; $0D:CB26: 8C A0 03    ;
CODE_0DCB29:    LDA #$00                ; $0D:CB29: A9 00       ;
CODE_0DCB2B:    STA $47,x               ; $0D:CB2B: 95 47       ;
CODE_0DCB2D:    TAY                     ; $0D:CB2D: A8          ;
CODE_0DCB2E:    JSR CODE_0DCB9E         ; $0D:CB2E: 20 9E CB    ;
CODE_0DCB31:    LDA #$FF                ; $0D:CB31: A9 FF       ;
CODE_0DCB33:    STA $03A2,x             ; $0D:CB33: 9D A2 03    ;
CODE_0DCB36:    JMP CODE_0DCB58         ; $0D:CB36: 4C 58 CB    ;

CODE_0DCB39:    LDA #$00                ; $0D:CB39: A9 00       ;
CODE_0DCB3B:    STA $5E,x               ; $0D:CB3B: 95 5E       ;
CODE_0DCB3D:    JMP CODE_0DCB58         ; $0D:CB3D: 4C 58 CB    ;

CODE_0DCB40:    LDY #$40                ; $0D:CB40: A0 40       ;
CODE_0DCB42:    LDA $0238,x             ; $0D:CB42: BD 38 02    ;
CODE_0DCB45:    BPL CODE_0DCB4E         ; $0D:CB45: 10 07       ;
CODE_0DCB47:    EOR #$FF                ; $0D:CB47: 49 FF       ;
CODE_0DCB49:    CLC                     ; $0D:CB49: 18          ;
CODE_0DCB4A:    ADC #$01                ; $0D:CB4A: 69 01       ;
CODE_0DCB4C:    LDY #$C0                ; $0D:CB4C: A0 C0       ;
CODE_0DCB4E:    STA $0402,x             ; $0D:CB4E: 9D 02 04    ;
CODE_0DCB51:    TYA                     ; $0D:CB51: 98          ;
CODE_0DCB52:    CLC                     ; $0D:CB52: 18          ;
CODE_0DCB53:    ADC $0238,x             ; $0D:CB53: 7D 38 02    ;
CODE_0DCB56:    STA $5E,x               ; $0D:CB56: 95 5E       ;
CODE_0DCB58:    JSR CODE_0DC5E1         ; $0D:CB58: 20 E1 C5    ;
CODE_0DCB5B:    LDA #$05                ; $0D:CB5B: A9 05       ;
CODE_0DCB5D:    LDY $5C                 ; $0D:CB5D: A4 5C       ;
CODE_0DCB5F:    CPY #$03                ; $0D:CB5F: C0 03       ;
CODE_0DCB61:    BEQ CODE_0DCB6A         ; $0D:CB61: F0 07       ;
CODE_0DCB63:    LDY $06CC               ; $0D:CB63: AC CC 06    ;
CODE_0DCB66:    BNE CODE_0DCB6A         ; $0D:CB66: D0 02       ;
CODE_0DCB68:    LDA #$06                ; $0D:CB68: A9 06       ;
CODE_0DCB6A:    STA $0490,x             ; $0D:CB6A: 9D 90 04    ;
CODE_0DCB6D:    RTS                     ; $0D:CB6D: 60          ;

CODE_0DCB6E:    JSR CODE_0DCB7A         ; $0D:CB6E: 20 7A CB    ;
CODE_0DCB71:    JMP CODE_0DCB77         ; $0D:CB71: 4C 77 CB    ;

CODE_0DCB74:    JSR CODE_0DCB86         ; $0D:CB74: 20 86 CB    ;
CODE_0DCB77:    JMP CODE_0DCB5B         ; $0D:CB77: 4C 5B CB    ;

CODE_0DCB7A:    LDA #$10                ; $0D:CB7A: A9 10       ;
CODE_0DCB7C:    STA $043D,x             ; $0D:CB7C: 9D 3D 04    ;
CODE_0DCB7F:    LDA #$FF                ; $0D:CB7F: A9 FF       ;
CODE_0DCB81:    STA $A1,x               ; $0D:CB81: 95 A1       ;
CODE_0DCB83:    JMP CODE_0DCB8D         ; $0D:CB83: 4C 8D CB    ;

CODE_0DCB86:    LDA #$F0                ; $0D:CB86: A9 F0       ;
CODE_0DCB88:    STA $043D,x             ; $0D:CB88: 9D 3D 04    ;
CODE_0DCB8B:    STZ $A1,x               ; $0D:CB8B: 74 A1       ;
CODE_0DCB8D:    LDY #$01                ; $0D:CB8D: A0 01       ;
CODE_0DCB8F:    JSR CODE_0DCB9E         ; $0D:CB8F: 20 9E CB    ;
CODE_0DCB92:    LDA #$04                ; $0D:CB92: A9 04       ;
CODE_0DCB94:    STA $0490,x             ; $0D:CB94: 9D 90 04    ;
CODE_0DCB97:    RTS                     ; $0D:CB97: 60          ;

DATA_0DCB98:        db $08,$0C,$F8

DATA_0DCB9B:        db $00,$00,$FF

CODE_0DCB9E:    LDA $021A,x             ; $0D:CB9E: BD 1A 02    ;
CODE_0DCBA1:    CLC                     ; $0D:CBA1: 18          ;
CODE_0DCBA2:    ADC DATA_0DCB98,y       ; $0D:CBA2: 79 98 CB    ;
CODE_0DCBA5:    STA $021A,x             ; $0D:CBA5: 9D 1A 02    ;
CODE_0DCBA8:    LDA $79,x               ; $0D:CBA8: B5 79       ;
CODE_0DCBAA:    ADC DATA_0DCB9B,y       ; $0D:CBAA: 79 9B CB    ;
CODE_0DCBAD:    STA $79,x               ; $0D:CBAD: 95 79       ;
CODE_0DCBAF:    RTS                     ; $0D:CBAF: 60          ;

CODE_0DCBB0:    LDX $9E                 ; $0D:CBB0: A6 9E       ;
CODE_0DCBB2:    LDA #$00                ; $0D:CBB2: A9 00       ;
CODE_0DCBB4:    LDY $1C,x               ; $0D:CBB4: B4 1C       ;
CODE_0DCBB6:    CPY #$15                ; $0D:CBB6: C0 15       ;
CODE_0DCBB8:    BCC CODE_0DCBBD         ; $0D:CBB8: 90 03       ;
CODE_0DCBBA:    TYA                     ; $0D:CBBA: 98          ;
CODE_0DCBBB:    SBC #$14                ; $0D:CBBB: E9 14       ;
CODE_0DCBBD:    ASL A                   ; $0D:CBBD: 0A          ;
CODE_0DCBBE:    TAY                     ; $0D:CBBE: A8          ;
CODE_0DCBBF:    LDA PNTR_0DCBCC,y       ; $0D:CBBF: B9 CC CB    ;
CODE_0DCBC2:    STA $04                 ; $0D:CBC2: 85 04       ;
CODE_0DCBC4:    LDA PNTR_0DCBCC+1,y     ; $0D:CBC4: B9 CD CB    ;
CODE_0DCBC7:    STA $05                 ; $0D:CBC7: 85 05       ;
CODE_0DCBC9:    JMP ($0004)             ; $0D:CBC9: 6C 04 00    ;

PNTR_0DCBCC:        dw CODE_0DCC1A
                    dw CODE_0DCC7B
                    dw CODE_0DD652
                    dw CODE_0DCC10
                    dw CODE_0DCC10
                    dw CODE_0DCC10
                    dw CODE_0DCC10
                    dw CODE_0DCC8D
                    dw CODE_0DCC8D
                    dw CODE_0DCC8D
                    dw CODE_0DCC8D
                    dw CODE_0DCC8D
                    dw CODE_0DCC8D
                    dw CODE_0DCC8D
                    dw CODE_0DCC8D
                    dw CODE_0DCC10
                    dw CODE_0DCCAB
                    dw CODE_0DCCAB
                    dw CODE_0DCCAB
                    dw CODE_0DCCAB
                    dw CODE_0DCCAB
                    dw CODE_0DCCAB
                    dw CODE_0DCCAB
                    dw CODE_0DCC93
                    dw CODE_0DCC93
                    dw CODE_0DD448
                    dw CODE_0DBB8F
                    dw CODE_0DB7FB
                    dw CODE_0DCC10
                    dw CODE_0DD6A0
                    dw CODE_0DB744
                    dw CODE_0DCC10
                    dw CODE_0DB5E8
                    dw CODE_0DCC11

CODE_0DCC10:    RTS                     ; $0D:CC10: 60          ;

CODE_0DCC11:    JSR CODE_0DFDE1         ; $0D:CC11: 20 E1 FD    ;
CODE_0DCC14:    JSR CODE_0DFD4F         ; $0D:CC14: 20 4F FD    ;
CODE_0DCC17:    JMP CODE_0DEE40         ; $0D:CC17: 4C 40 EE    ;

CODE_0DCC1A:    LDA #$20                ; $0D:CC1A: A9 20       ;
CODE_0DCC1C:    STA $0257,x             ; $0D:CC1C: 9D 57 02    ;
CODE_0DCC1F:    JSR CODE_0DFDE1         ; $0D:CC1F: 20 E1 FD    ;
CODE_0DCC22:    JSR CODE_0DFD4F         ; $0D:CC22: 20 4F FD    ;
CODE_0DCC25:    JSR CODE_0DEE40         ; $0D:CC25: 20 40 EE    ;
CODE_0DCC28:    JSR CODE_0DE948         ; $0D:CC28: 20 48 E9    ;
CODE_0DCC2B:    JSR CODE_0DE68D         ; $0D:CC2B: 20 8D E6    ;
CODE_0DCC2E:    JSR CODE_0DE003         ; $0D:CC2E: 20 03 E0    ;
CODE_0DCC31:    JSR CODE_0DDD7D         ; $0D:CC31: 20 7D DD    ;
CODE_0DCC34:    LDY $0747               ; $0D:CC34: AC 47 07    ;
CODE_0DCC37:    BNE CODE_0DCC3C         ; $0D:CC37: D0 03       ;
CODE_0DCC39:    JSR CODE_0DCC3F         ; $0D:CC39: 20 3F CC    ;
CODE_0DCC3C:    JMP CODE_0DDAFC         ; $0D:CC3C: 4C FC DA    ;

CODE_0DCC3F:    LDA $1C,x               ; $0D:CC3F: B5 1C       ;
CODE_0DCC41:    ASL A                   ; $0D:CC41: 0A          ;
CODE_0DCC42:    TAY                     ; $0D:CC42: A8          ;
CODE_0DCC43:    LDA PNTR_0DCC50,y       ; $0D:CC43: B9 50 CC    ;
CODE_0DCC46:    STA $04                 ; $0D:CC46: 85 04       ;
CODE_0DCC48:    LDA PNTR_0DCC50+1,y     ; $0D:CC48: B9 51 CC    ;
CODE_0DCC4B:    STA $05                 ; $0D:CC4B: 85 05       ;
CODE_0DCC4D:    JMP ($0004)             ; $0D:CC4D: 6C 04 00    ;

PNTR_0DCC50:        dw CODE_0DCE10
                    dw CODE_0DCE10
                    dw CODE_0DCE10
                    dw CODE_0DCE10
                    dw CODE_0DAB1F
                    dw CODE_0DCD6F
                    dw CODE_0DCE10
                    dw CODE_0DCF25
                    dw CODE_0DCFD5
                    dw CODE_0DCC7A
                    dw CODE_0DCFE9
                    dw CODE_0DCFE9
                    dw CODE_0DCD22
                    dw CODE_0DD780
                    dw CODE_0DCE92
                    dw CODE_0DCE98
                    dw CODE_0DCEC1
                    dw CODE_0DD2CE
                    dw CODE_0DCE10
                    dw CODE_0DCC7A
                    dw CODE_0DD289

CODE_0DCC7A:    RTS                     ; $0D:CC7A: 60          ;

CODE_0DCC7B:    JSR CODE_0DD5FC         ; $0D:CC7B: 20 FC D5    ;
CODE_0DCC7E:    JSR CODE_0DFDE1         ; $0D:CC7E: 20 E1 FD    ;
CODE_0DCC81:    JSR CODE_0DFD4F         ; $0D:CC81: 20 4F FD    ;
CODE_0DCC84:    JSR CODE_0DE948         ; $0D:CC84: 20 48 E9    ;
CODE_0DCC87:    JSR CODE_0DDD7D         ; $0D:CC87: 20 7D DD    ;
CODE_0DCC8A:    JMP CODE_0DDAFC         ; $0D:CC8A: 4C FC DA    ;

CODE_0DCC8D:    JSR CODE_0DD0DF         ; $0D:CC8D: 20 DF D0    ;
CODE_0DCC90:    JMP CODE_0DDAFC         ; $0D:CC90: 4C FC DA    ;

CODE_0DCC93:    JSR CODE_0DFDE1         ; $0D:CC93: 20 E1 FD    ;
CODE_0DCC96:    JSR CODE_0DFD4F         ; $0D:CC96: 20 4F FD    ;
CODE_0DCC99:    JSR CODE_0DE951         ; $0D:CC99: 20 51 E9    ;
CODE_0DCC9C:    JSR CODE_0DE16E         ; $0D:CC9C: 20 6E E1    ;
CODE_0DCC9F:    JSR CODE_0DFD4F         ; $0D:CC9F: 20 4F FD    ;
CODE_0DCCA2:    JSR CODE_0DF5A2         ; $0D:CCA2: 20 A2 F5    ;
CODE_0DCCA5:    JSR CODE_0DDAD1         ; $0D:CCA5: 20 D1 DA    ;
CODE_0DCCA8:    JMP CODE_0DDAFC         ; $0D:CCA8: 4C FC DA    ;

CODE_0DCCAB:    JSR CODE_0DFDE1         ; $0D:CCAB: 20 E1 FD    ;
CODE_0DCCAE:    JSR CODE_0DFD4F         ; $0D:CCAE: 20 4F FD    ;
CODE_0DCCB1:    JSR CODE_0DE980         ; $0D:CCB1: 20 80 E9    ;
CODE_0DCCB4:    JSR CODE_0DE137         ; $0D:CCB4: 20 37 E1    ;
CODE_0DCCB7:    LDA $0747               ; $0D:CCB7: AD 47 07    ;
CODE_0DCCBA:    BNE CODE_0DCCBF         ; $0D:CCBA: D0 03       ;
CODE_0DCCBC:    JSR CODE_0DCCC8         ; $0D:CCBC: 20 C8 CC    ;
CODE_0DCCBF:    JSR CODE_0DFD4F         ; $0D:CCBF: 20 4F FD    ;
CODE_0DCCC2:    JSR CODE_0DEBA6         ; $0D:CCC2: 20 A6 EB    ;
CODE_0DCCC5:    JMP CODE_0DDAFC         ; $0D:CCC5: 4C FC DA    ;

CODE_0DCCC8:    LDA $1C,x               ; $0D:CCC8: B5 1C       ;
CODE_0DCCCA:    SEC                     ; $0D:CCCA: 38          ;
CODE_0DCCCB:    SBC #$24                ; $0D:CCCB: E9 24       ;
CODE_0DCCCD:    ASL A                   ; $0D:CCCD: 0A          ;
CODE_0DCCCE:    TAY                     ; $0D:CCCE: A8          ;
CODE_0DCCCF:    LDA PNTR_0DCCDC,y       ; $0D:CCCF: B9 DC CC    ;
CODE_0DCCD2:    STA $04                 ; $0D:CCD2: 85 04       ;
CODE_0DCCD4:    LDA PNTR_0DCCDC+1,y     ; $0D:CCD4: B9 DD CC    ;
CODE_0DCCD7:    STA $05                 ; $0D:CCD7: 85 05       ;
CODE_0DCCD9:    JMP ($0004)             ; $0D:CCD9: 6C 04 00    ;

PNTR_0DCCDC:        dw CODE_0DD807
                    dw CODE_0DDA4C
                    dw CODE_0DDACB
                    dw CODE_0DDACB
                    dw CODE_0DDA82
                    dw CODE_0DDAAD
                    dw CODE_0DDAB9

CODE_0DCCEA:    STZ $07A2,x             ; $0D:CCEA: 9E A2 07    ;
CODE_0DCCED:    CPX #$09                ; $0D:CCED: E0 09       ;
CODE_0DCCEF:    BNE CODE_0DCD08         ; $0D:CCEF: D0 17       ;
CODE_0DCCF1:    LDA #$F0                ; $0D:CCF1: A9 F0       ;
CODE_0DCCF3:    STA $09E1               ; $0D:CCF3: 8D E1 09    ;
CODE_0DCCF6:    STA $09E5               ; $0D:CCF6: 8D E5 09    ;
CODE_0DCCF9:    STA $09E9               ; $0D:CCF9: 8D E9 09    ;
CODE_0DCCFC:    STA $09ED               ; $0D:CCFC: 8D ED 09    ;
CODE_0DCCFF:    LDA $DB                 ; $0D:CCFF: A5 DB       ;
CODE_0DCD01:    CMP #$22                ; $0D:CD01: C9 22       ;
CODE_0DCD03:    BNE CODE_0DCD08         ; $0D:CD03: D0 03       ;
CODE_0DCD05:    STZ $0743               ; $0D:CD05: 9C 43 07    ;
CODE_0DCD08:    STZ $10,x               ; $0D:CD08: 74 10       ;
CODE_0DCD0A:    STZ $1C,x               ; $0D:CD0A: 74 1C       ;
CODE_0DCD0C:    STZ $29,x               ; $0D:CD0C: 74 29       ;
CODE_0DCD0E:    STZ $0110,x             ; $0D:CD0E: 9E 10 01    ;
CODE_0DCD11:    STZ $012E,x             ; $0D:CD11: 9E 2E 01    ;
CODE_0DCD14:    STZ $0792,x             ; $0D:CD14: 9E 92 07    ;
CODE_0DCD17:    STZ $03A2,x             ; $0D:CD17: 9E A2 03    ;
CODE_0DCD1A:    LDA #$20                ; $0D:CD1A: A9 20       ;
CODE_0DCD1C:    STA $0257,x             ; $0D:CD1C: 9D 57 02    ;
CODE_0DCD1F:    LDA #$00                ; $0D:CD1F: A9 00       ;
CODE_0DCD21:    RTS                     ; $0D:CD21: 60          ;

CODE_0DCD22:    LDA $07A2,x             ; $0D:CD22: BD A2 07    ;
CODE_0DCD25:    BNE CODE_0DCD3D         ; $0D:CD25: D0 16       ;
CODE_0DCD27:    JSR CODE_0DC552         ; $0D:CD27: 20 52 C5    ;
CODE_0DCD2A:    LDA $07B8,x             ; $0D:CD2A: BD B8 07    ;
CODE_0DCD2D:    ORA #$80                ; $0D:CD2D: 09 80       ;
CODE_0DCD2F:    STA $043D,x             ; $0D:CD2F: 9D 3D 04    ;
CODE_0DCD32:    AND #$0F                ; $0D:CD32: 29 0F       ;
CODE_0DCD34:    ORA #$06                ; $0D:CD34: 09 06       ;
CODE_0DCD36:    STA $07A2,x             ; $0D:CD36: 9D A2 07    ;
CODE_0DCD39:    LDA #$F9                ; $0D:CD39: A9 F9       ;
CODE_0DCD3B:    STA $A1,x               ; $0D:CD3B: 95 A1       ;
CODE_0DCD3D:    LDA $00A1,x             ; $0D:CD3D: BD A1 00    ;
CODE_0DCD40:    BMI CODE_0DCD5B         ; $0D:CD40: 30 19       ;
CODE_0DCD42:    LDA $0238,x             ; $0D:CD42: BD 38 02    ;
CODE_0DCD45:    CMP #$C0                ; $0D:CD45: C9 C0       ;
CODE_0DCD47:    BCC CODE_0DCD5B         ; $0D:CD47: 90 12       ;
CODE_0DCD49:    LDA $0B00,x             ; $0D:CD49: BD 00 0B    ;
CODE_0DCD4C:    CMP #$02                ; $0D:CD4C: C9 02       ;
CODE_0DCD4E:    BNE CODE_0DCD5B         ; $0D:CD4E: D0 0B       ;
CODE_0DCD50:    INC $0B00,x             ; $0D:CD50: FE 00 0B    ;
CODE_0DCD53:    STZ $0B09,x             ; $0D:CD53: 9E 09 0B    ;
CODE_0DCD56:    LDA #$27                ; $0D:CD56: A9 27       ;
CODE_0DCD58:    STA $1603               ; $0D:CD58: 8D 03 16    ;
CODE_0DCD5B:    INC $0B09,x             ; $0D:CD5B: FE 09 0B    ;
CODE_0DCD5E:    JSL CODE_0FE40F         ; $0D:CD5E: 22 0F E4 0F ;
CODE_0DCD62:    JMP CODE_0DBF33         ; $0D:CD62: 4C 33 BF    ;

DATA_0DCD65:        db $30,$1C

DATA_0DCD67:        db $00,$E8,$00,$18

DATA_0DCD6B:        db $08,$F8,$0C,$F4

CODE_0DCD6F:    LDA $29,x               ; $0D:CD6F: B5 29       ;
CODE_0DCD71:    AND #$20                ; $0D:CD71: 29 20       ;
CODE_0DCD73:    BEQ CODE_0DCD78         ; $0D:CD73: F0 03       ;
CODE_0DCD75:    JMP CODE_0DCE7E         ; $0D:CD75: 4C 7E CE    ;

CODE_0DCD78:    LDA $020F,x             ; $0D:CD78: BD 0F 02    ;
CODE_0DCD7B:    BEQ CODE_0DCDAB         ; $0D:CD7B: F0 2E       ;
CODE_0DCD7D:    DEC $020F,x             ; $0D:CD7D: DE 0F 02    ;
CODE_0DCD80:    LDA $03D1               ; $0D:CD80: AD D1 03    ;
CODE_0DCD83:    AND #$0C                ; $0D:CD83: 29 0C       ;
CODE_0DCD85:    BNE CODE_0DCDF1         ; $0D:CD85: D0 6A       ;
CODE_0DCD87:    LDA $03A2,x             ; $0D:CD87: BD A2 03    ;
CODE_0DCD8A:    BNE CODE_0DCDA3         ; $0D:CD8A: D0 17       ;
CODE_0DCD8C:    LDY $06CC               ; $0D:CD8C: AC CC 06    ;
CODE_0DCD8F:    LDA DATA_0DCD65,y       ; $0D:CD8F: B9 65 CD    ;
CODE_0DCD92:    STA $03A2,x             ; $0D:CD92: 9D A2 03    ;
CODE_0DCD95:    JSR CODE_0DB961         ; $0D:CD95: 20 61 B9    ;
CODE_0DCD98:    BCC CODE_0DCDA3         ; $0D:CD98: 90 09       ;
CODE_0DCD9A:    LDA $29,x               ; $0D:CD9A: B5 29       ;
CODE_0DCD9C:    ORA #$08                ; $0D:CD9C: 09 08       ;
CODE_0DCD9E:    STA $29,x               ; $0D:CD9E: 95 29       ;
CODE_0DCDA0:    JMP CODE_0DCDF1         ; $0D:CDA0: 4C F1 CD    ;

CODE_0DCDA3:    DEC $03A2,x             ; $0D:CDA3: DE A2 03    ;
CODE_0DCDA6:    JMP CODE_0DCDF1         ; $0D:CDA6: 4C F1 CD    ;

DATA_0DCDA9:        db $20,$37

CODE_0DCDAB:    LDA $29,x               ; $0D:CDAB: B5 29       ;
CODE_0DCDAD:    AND #$07                ; $0D:CDAD: 29 07       ;
CODE_0DCDAF:    CMP #$01                ; $0D:CDAF: C9 01       ;
CODE_0DCDB1:    BEQ CODE_0DCDF1         ; $0D:CDB1: F0 3E       ;
CODE_0DCDB3:    STZ $00                 ; $0D:CDB3: 64 00       ;
CODE_0DCDB5:    LDY #$FA                ; $0D:CDB5: A0 FA       ;
CODE_0DCDB7:    LDA $0238,x             ; $0D:CDB7: BD 38 02    ;
CODE_0DCDBA:    BMI CODE_0DCDCF         ; $0D:CDBA: 30 13       ;
CODE_0DCDBC:    LDY #$FD                ; $0D:CDBC: A0 FD       ;
CODE_0DCDBE:    CMP #$70                ; $0D:CDBE: C9 70       ;
CODE_0DCDC0:    INC $00                 ; $0D:CDC0: E6 00       ;
CODE_0DCDC2:    BCC CODE_0DCDCF         ; $0D:CDC2: 90 0B       ;
CODE_0DCDC4:    DEC $00                 ; $0D:CDC4: C6 00       ;
CODE_0DCDC6:    LDA $07B8,x             ; $0D:CDC6: BD B8 07    ;
CODE_0DCDC9:    AND #$01                ; $0D:CDC9: 29 01       ;
CODE_0DCDCB:    BNE CODE_0DCDCF         ; $0D:CDCB: D0 02       ;
CODE_0DCDCD:    LDY #$FA                ; $0D:CDCD: A0 FA       ;
CODE_0DCDCF:    STY $A1,x               ; $0D:CDCF: 94 A1       ;
CODE_0DCDD1:    LDA $29,x               ; $0D:CDD1: B5 29       ;
CODE_0DCDD3:    ORA #$01                ; $0D:CDD3: 09 01       ;
CODE_0DCDD5:    STA $29,x               ; $0D:CDD5: 95 29       ;
CODE_0DCDD7:    LDA $00                 ; $0D:CDD7: A5 00       ;
CODE_0DCDD9:    AND $07B9,x             ; $0D:CDD9: 3D B9 07    ;
CODE_0DCDDC:    TAY                     ; $0D:CDDC: A8          ;
CODE_0DCDDD:    LDA $06CC               ; $0D:CDDD: AD CC 06    ;
CODE_0DCDE0:    BNE CODE_0DCDE3         ; $0D:CDE0: D0 01       ;
CODE_0DCDE2:    TAY                     ; $0D:CDE2: A8          ;
CODE_0DCDE3:    LDA DATA_0DCDA9,y       ; $0D:CDE3: B9 A9 CD    ;
CODE_0DCDE6:    STA $0792,x             ; $0D:CDE6: 9D 92 07    ;
CODE_0DCDE9:    LDA $07B8,x             ; $0D:CDE9: BD B8 07    ;
CODE_0DCDEC:    ORA #$C0                ; $0D:CDEC: 09 C0       ;
CODE_0DCDEE:    STA $020F,x             ; $0D:CDEE: 9D 0F 02    ;
CODE_0DCDF1:    LDY #$FC                ; $0D:CDF1: A0 FC       ;
CODE_0DCDF3:    LDA $09                 ; $0D:CDF3: A5 09       ;
CODE_0DCDF5:    AND #$40                ; $0D:CDF5: 29 40       ;
CODE_0DCDF7:    BNE CODE_0DCDFB         ; $0D:CDF7: D0 02       ;
CODE_0DCDF9:    LDY #$04                ; $0D:CDF9: A0 04       ;
CODE_0DCDFB:    STY $5E,x               ; $0D:CDFB: 94 5E       ;
CODE_0DCDFD:    LDY #$01                ; $0D:CDFD: A0 01       ;
CODE_0DCDFF:    JSR CODE_0DE828         ; $0D:CDFF: 20 28 E8    ;
CODE_0DCE02:    BMI CODE_0DCE0E         ; $0D:CE02: 30 0A       ;
CODE_0DCE04:    INY                     ; $0D:CE04: C8          ;
CODE_0DCE05:    LDA $07A2,x             ; $0D:CE05: BD A2 07    ;
CODE_0DCE08:    BNE CODE_0DCE0E         ; $0D:CE08: D0 04       ;
CODE_0DCE0A:    LDA #$F8                ; $0D:CE0A: A9 F8       ;
CODE_0DCE0C:    STA $5E,x               ; $0D:CE0C: 95 5E       ;
CODE_0DCE0E:    STY $47,x               ; $0D:CE0E: 94 47       ;
CODE_0DCE10:    LDY #$00                ; $0D:CE10: A0 00       ;
CODE_0DCE12:    LDA $29,x               ; $0D:CE12: B5 29       ;
CODE_0DCE14:    AND #$40                ; $0D:CE14: 29 40       ;
CODE_0DCE16:    BNE CODE_0DCE31         ; $0D:CE16: D0 19       ;
CODE_0DCE18:    LDA $29,x               ; $0D:CE18: B5 29       ;
CODE_0DCE1A:    ASL A                   ; $0D:CE1A: 0A          ;
CODE_0DCE1B:    BCS CODE_0DCE4D         ; $0D:CE1B: B0 30       ;
CODE_0DCE1D:    LDA $29,x               ; $0D:CE1D: B5 29       ;
CODE_0DCE1F:    AND #$20                ; $0D:CE1F: 29 20       ;
CODE_0DCE21:    BNE CODE_0DCE7E         ; $0D:CE21: D0 5B       ;
CODE_0DCE23:    LDA $29,x               ; $0D:CE23: B5 29       ;
CODE_0DCE25:    AND #$07                ; $0D:CE25: 29 07       ;
CODE_0DCE27:    BEQ CODE_0DCE4D         ; $0D:CE27: F0 24       ;
CODE_0DCE29:    CMP #$05                ; $0D:CE29: C9 05       ;
CODE_0DCE2B:    BEQ CODE_0DCE31         ; $0D:CE2B: F0 04       ;
CODE_0DCE2D:    CMP #$03                ; $0D:CE2D: C9 03       ;
CODE_0DCE2F:    BCS CODE_0DCE61         ; $0D:CE2F: B0 30       ;
CODE_0DCE31:    JSR CODE_0DBF06         ; $0D:CE31: 20 06 BF    ;
CODE_0DCE34:    LDY #$00                ; $0D:CE34: A0 00       ;
CODE_0DCE36:    LDA $29,x               ; $0D:CE36: B5 29       ;
CODE_0DCE38:    CMP #$02                ; $0D:CE38: C9 02       ;
CODE_0DCE3A:    BEQ CODE_0DCE48         ; $0D:CE3A: F0 0C       ;
CODE_0DCE3C:    AND #$40                ; $0D:CE3C: 29 40       ;
CODE_0DCE3E:    BEQ CODE_0DCE4D         ; $0D:CE3E: F0 0D       ;
CODE_0DCE40:    LDA $1C,x               ; $0D:CE40: B5 1C       ;
CODE_0DCE42:    CMP #$2E                ; $0D:CE42: C9 2E       ;
CODE_0DCE44:    BEQ CODE_0DCE4D         ; $0D:CE44: F0 07       ;
CODE_0DCE46:    BNE CODE_0DCE4B         ; $0D:CE46: D0 03       ;
CODE_0DCE48:    JMP CODE_0DBEA0         ; $0D:CE48: 4C A0 BE    ;

CODE_0DCE4B:    LDY #$01                ; $0D:CE4B: A0 01       ;
CODE_0DCE4D:    LDA $5E,x               ; $0D:CE4D: B5 5E       ;
CODE_0DCE4F:    PHA                     ; $0D:CE4F: 48          ;
CODE_0DCE50:    BPL CODE_0DCE54         ; $0D:CE50: 10 02       ;
CODE_0DCE52:    INY                     ; $0D:CE52: C8          ;
CODE_0DCE53:    INY                     ; $0D:CE53: C8          ;
CODE_0DCE54:    CLC                     ; $0D:CE54: 18          ;
CODE_0DCE55:    ADC DATA_0DCD67,y       ; $0D:CE55: 79 67 CD    ;
CODE_0DCE58:    STA $5E,x               ; $0D:CE58: 95 5E       ;
CODE_0DCE5A:    JSR CODE_0DBEA0         ; $0D:CE5A: 20 A0 BE    ;
CODE_0DCE5D:    PLA                     ; $0D:CE5D: 68          ;
CODE_0DCE5E:    STA $5E,x               ; $0D:CE5E: 95 5E       ;
CODE_0DCE60:    RTS                     ; $0D:CE60: 60          ;

CODE_0DCE61:    LDA $07A2,x             ; $0D:CE61: BD A2 07    ;
CODE_0DCE64:    BNE CODE_0DCE84         ; $0D:CE64: D0 1E       ;
CODE_0DCE66:    STA $29,x               ; $0D:CE66: 95 29       ;
CODE_0DCE68:    LDA $09                 ; $0D:CE68: A5 09       ;
CODE_0DCE6A:    AND #$01                ; $0D:CE6A: 29 01       ;
CODE_0DCE6C:    TAY                     ; $0D:CE6C: A8          ;
CODE_0DCE6D:    INY                     ; $0D:CE6D: C8          ;
CODE_0DCE6E:    STY $47,x               ; $0D:CE6E: 94 47       ;
CODE_0DCE70:    DEY                     ; $0D:CE70: 88          ;
CODE_0DCE71:    LDA $076A               ; $0D:CE71: AD 6A 07    ;
CODE_0DCE74:    BEQ CODE_0DCE78         ; $0D:CE74: F0 02       ;
CODE_0DCE76:    INY                     ; $0D:CE76: C8          ;
CODE_0DCE77:    INY                     ; $0D:CE77: C8          ;
CODE_0DCE78:    LDA DATA_0DCD6B,y       ; $0D:CE78: B9 6B CD    ;
CODE_0DCE7B:    STA $5E,x               ; $0D:CE7B: 95 5E       ;
CODE_0DCE7D:    RTS                     ; $0D:CE7D: 60          ;

CODE_0DCE7E:    JSR CODE_0DBF06         ; $0D:CE7E: 20 06 BF    ;
CODE_0DCE81:    JMP CODE_0DBEA0         ; $0D:CE81: 4C A0 BE    ;

CODE_0DCE84:    CMP #$0E                ; $0D:CE84: C9 0E       ;
CODE_0DCE86:    BNE CODE_0DCE91         ; $0D:CE86: D0 09       ;
CODE_0DCE88:    LDA $1C,x               ; $0D:CE88: B5 1C       ;
CODE_0DCE8A:    CMP #$06                ; $0D:CE8A: C9 06       ;
CODE_0DCE8C:    BNE CODE_0DCE91         ; $0D:CE8C: D0 03       ;
CODE_0DCE8E:    JSR CODE_0DCCEA         ; $0D:CE8E: 20 EA CC    ;
CODE_0DCE91:    RTS                     ; $0D:CE91: 60          ;

CODE_0DCE92:    JSR CODE_0DBF33         ; $0D:CE92: 20 33 BF    ;
CODE_0DCE95:    JMP CODE_0DBEA0         ; $0D:CE95: 4C A0 BE    ;

CODE_0DCE98:    LDA $A1,x               ; $0D:CE98: B5 A1       ;
CODE_0DCE9A:    ORA $043D,x             ; $0D:CE9A: 1D 3D 04    ;
CODE_0DCE9D:    BNE CODE_0DCEB4         ; $0D:CE9D: D0 15       ;
CODE_0DCE9F:    STA $041D,x             ; $0D:CE9F: 9D 1D 04    ;
CODE_0DCEA2:    LDA $0238,x             ; $0D:CEA2: BD 38 02    ;
CODE_0DCEA5:    CMP $0402,x             ; $0D:CEA5: DD 02 04    ;
CODE_0DCEA8:    BCS CODE_0DCEB4         ; $0D:CEA8: B0 0A       ;
CODE_0DCEAA:    LDA $09                 ; $0D:CEAA: A5 09       ;
CODE_0DCEAC:    AND #$07                ; $0D:CEAC: 29 07       ;
CODE_0DCEAE:    BNE CODE_0DCEB3         ; $0D:CEAE: D0 03       ;
CODE_0DCEB0:    INC $0238,x             ; $0D:CEB0: FE 38 02    ;
CODE_0DCEB3:    RTS                     ; $0D:CEB3: 60          ;

CODE_0DCEB4:    LDA $0238,x             ; $0D:CEB4: BD 38 02    ;
CODE_0DCEB7:    CMP $5E,x               ; $0D:CEB7: D5 5E       ;
CODE_0DCEB9:    BCC CODE_0DCEBE         ; $0D:CEB9: 90 03       ;
CODE_0DCEBB:    JMP CODE_0DBF16         ; $0D:CEBB: 4C 16 BF    ;

CODE_0DCEBE:    JMP CODE_0DBF12         ; $0D:CEBE: 4C 12 BF    ;

CODE_0DCEC1:    JSR CODE_0DCEE3         ; $0D:CEC1: 20 E3 CE    ;
CODE_0DCEC4:    JSR CODE_0DCF04         ; $0D:CEC4: 20 04 CF    ;
CODE_0DCEC7:    LDY #$01                ; $0D:CEC7: A0 01       ;
CODE_0DCEC9:    LDA $09                 ; $0D:CEC9: A5 09       ;
CODE_0DCECB:    AND #$03                ; $0D:CECB: 29 03       ;
CODE_0DCECD:    BNE CODE_0DCEE2         ; $0D:CECD: D0 13       ;
CODE_0DCECF:    LDA $09                 ; $0D:CECF: A5 09       ;
CODE_0DCED1:    AND #$40                ; $0D:CED1: 29 40       ;
CODE_0DCED3:    BNE CODE_0DCED7         ; $0D:CED3: D0 02       ;
CODE_0DCED5:    LDY #$FF                ; $0D:CED5: A0 FF       ;
CODE_0DCED7:    STY $00                 ; $0D:CED7: 84 00       ;
CODE_0DCED9:    LDA $0238,x             ; $0D:CED9: BD 38 02    ;
CODE_0DCEDC:    CLC                     ; $0D:CEDC: 18          ;
CODE_0DCEDD:    ADC $00                 ; $0D:CEDD: 65 00       ;
CODE_0DCEDF:    STA $0238,x             ; $0D:CEDF: 9D 38 02    ;
CODE_0DCEE2:    RTS                     ; $0D:CEE2: 60          ;

CODE_0DCEE3:    LDA #$13                ; $0D:CEE3: A9 13       ;
CODE_0DCEE5:    STA $01                 ; $0D:CEE5: 85 01       ;
CODE_0DCEE7:    LDA $09                 ; $0D:CEE7: A5 09       ;
CODE_0DCEE9:    AND #$03                ; $0D:CEE9: 29 03       ;
CODE_0DCEEB:    BNE CODE_0DCEFA         ; $0D:CEEB: D0 0D       ;
CODE_0DCEED:    LDY $5E,x               ; $0D:CEED: B4 5E       ;
CODE_0DCEEF:    LDA $A1,x               ; $0D:CEEF: B5 A1       ;
CODE_0DCEF1:    LSR A                   ; $0D:CEF1: 4A          ;
CODE_0DCEF2:    BCS CODE_0DCEFE         ; $0D:CEF2: B0 0A       ;
CODE_0DCEF4:    CPY $01                 ; $0D:CEF4: C4 01       ;
CODE_0DCEF6:    BEQ CODE_0DCEFB         ; $0D:CEF6: F0 03       ;
CODE_0DCEF8:    INC $5E,x               ; $0D:CEF8: F6 5E       ;
CODE_0DCEFA:    RTS                     ; $0D:CEFA: 60          ;

CODE_0DCEFB:    INC $A1,x               ; $0D:CEFB: F6 A1       ;
CODE_0DCEFD:    RTS                     ; $0D:CEFD: 60          ;

CODE_0DCEFE:    TYA                     ; $0D:CEFE: 98          ;
CODE_0DCEFF:    BEQ CODE_0DCEFB         ; $0D:CEFF: F0 FA       ;
CODE_0DCF01:    DEC $5E,x               ; $0D:CF01: D6 5E       ;
CODE_0DCF03:    RTS                     ; $0D:CF03: 60          ;

CODE_0DCF04:    LDA $5E,x               ; $0D:CF04: B5 5E       ;
CODE_0DCF06:    PHA                     ; $0D:CF06: 48          ;
CODE_0DCF07:    LDY #$01                ; $0D:CF07: A0 01       ;
CODE_0DCF09:    LDA $A1,x               ; $0D:CF09: B5 A1       ;
CODE_0DCF0B:    AND #$02                ; $0D:CF0B: 29 02       ;
CODE_0DCF0D:    BNE CODE_0DCF18         ; $0D:CF0D: D0 09       ;
CODE_0DCF0F:    LDA $5E,x               ; $0D:CF0F: B5 5E       ;
CODE_0DCF11:    EOR #$FF                ; $0D:CF11: 49 FF       ;
CODE_0DCF13:    INC A                   ; $0D:CF13: 1A          ;
CODE_0DCF14:    STA $5E,x               ; $0D:CF14: 95 5E       ;
CODE_0DCF16:    LDY #$02                ; $0D:CF16: A0 02       ;
CODE_0DCF18:    STY $47,x               ; $0D:CF18: 94 47       ;
CODE_0DCF1A:    JSR CODE_0DBEA0         ; $0D:CF1A: 20 A0 BE    ;
CODE_0DCF1D:    STA $00                 ; $0D:CF1D: 85 00       ;
CODE_0DCF1F:    PLA                     ; $0D:CF1F: 68          ;
CODE_0DCF20:    STA $5E,x               ; $0D:CF20: 95 5E       ;
CODE_0DCF22:    RTS                     ; $0D:CF22: 60          ;

DATA_0DCF23:        db $3F,$03

CODE_0DCF25:    LDA $29,x               ; $0D:CF25: B5 29       ;
CODE_0DCF27:    AND #$20                ; $0D:CF27: 29 20       ;
CODE_0DCF29:    BNE CODE_0DCF7E         ; $0D:CF29: D0 53       ;
CODE_0DCF2B:    LDY $06CC               ; $0D:CF2B: AC CC 06    ;
CODE_0DCF2E:    LDA $07B8,x             ; $0D:CF2E: BD B8 07    ;
CODE_0DCF31:    AND DATA_0DCF23,y       ; $0D:CF31: 39 23 CF    ;
CODE_0DCF34:    BNE CODE_0DCF48         ; $0D:CF34: D0 12       ;
CODE_0DCF36:    TXA                     ; $0D:CF36: 8A          ;
CODE_0DCF37:    LSR A                   ; $0D:CF37: 4A          ;
CODE_0DCF38:    BCC CODE_0DCF3E         ; $0D:CF38: 90 04       ;
CODE_0DCF3A:    LDY $46                 ; $0D:CF3A: A4 46       ;
CODE_0DCF3C:    BCS CODE_0DCF46         ; $0D:CF3C: B0 08       ;
CODE_0DCF3E:    LDY #$02                ; $0D:CF3E: A0 02       ;
CODE_0DCF40:    JSR CODE_0DE828         ; $0D:CF40: 20 28 E8    ;
CODE_0DCF43:    BPL CODE_0DCF46         ; $0D:CF43: 10 01       ;
CODE_0DCF45:    DEY                     ; $0D:CF45: 88          ;
CODE_0DCF46:    STY $47,x               ; $0D:CF46: 94 47       ;
CODE_0DCF48:    JSR CODE_0DCF81         ; $0D:CF48: 20 81 CF    ;
CODE_0DCF4B:    LDA $0238,x             ; $0D:CF4B: BD 38 02    ;
CODE_0DCF4E:    SEC                     ; $0D:CF4E: 38          ;
CODE_0DCF4F:    SBC $043D,x             ; $0D:CF4F: FD 3D 04    ;
CODE_0DCF52:    CMP #$20                ; $0D:CF52: C9 20       ;
CODE_0DCF54:    BCC CODE_0DCF59         ; $0D:CF54: 90 03       ;
CODE_0DCF56:    STA $0238,x             ; $0D:CF56: 9D 38 02    ;
CODE_0DCF59:    LDY $47,x               ; $0D:CF59: B4 47       ;
CODE_0DCF5B:    DEY                     ; $0D:CF5B: 88          ;
CODE_0DCF5C:    BNE CODE_0DCF6E         ; $0D:CF5C: D0 10       ;
CODE_0DCF5E:    LDA $021A,x             ; $0D:CF5E: BD 1A 02    ;
CODE_0DCF61:    CLC                     ; $0D:CF61: 18          ;
CODE_0DCF62:    ADC $5E,x               ; $0D:CF62: 75 5E       ;
CODE_0DCF64:    STA $021A,x             ; $0D:CF64: 9D 1A 02    ;
CODE_0DCF67:    LDA $79,x               ; $0D:CF67: B5 79       ;
CODE_0DCF69:    ADC #$00                ; $0D:CF69: 69 00       ;
CODE_0DCF6B:    STA $79,x               ; $0D:CF6B: 95 79       ;
CODE_0DCF6D:    RTS                     ; $0D:CF6D: 60          ;

CODE_0DCF6E:    LDA $021A,x             ; $0D:CF6E: BD 1A 02    ;
CODE_0DCF71:    SEC                     ; $0D:CF71: 38          ;
CODE_0DCF72:    SBC $5E,x               ; $0D:CF72: F5 5E       ;
CODE_0DCF74:    STA $021A,x             ; $0D:CF74: 9D 1A 02    ;
CODE_0DCF77:    LDA $79,x               ; $0D:CF77: B5 79       ;
CODE_0DCF79:    SBC #$00                ; $0D:CF79: E9 00       ;
CODE_0DCF7B:    STA $79,x               ; $0D:CF7B: 95 79       ;
CODE_0DCF7D:    RTS                     ; $0D:CF7D: 60          ;

CODE_0DCF7E:    JMP CODE_0DBF2D         ; $0D:CF7E: 4C 2D BF    ;

CODE_0DCF81:    LDA $A1,x               ; $0D:CF81: B5 A1       ;
CODE_0DCF83:    AND #$02                ; $0D:CF83: 29 02       ;
CODE_0DCF85:    BNE CODE_0DCFB8         ; $0D:CF85: D0 31       ;
CODE_0DCF87:    LDA $09                 ; $0D:CF87: A5 09       ;
CODE_0DCF89:    AND #$07                ; $0D:CF89: 29 07       ;
CODE_0DCF8B:    PHA                     ; $0D:CF8B: 48          ;
CODE_0DCF8C:    LDA $A1,x               ; $0D:CF8C: B5 A1       ;
CODE_0DCF8E:    LSR A                   ; $0D:CF8E: 4A          ;
CODE_0DCF8F:    BCS CODE_0DCFA3         ; $0D:CF8F: B0 12       ;
CODE_0DCF91:    PLA                     ; $0D:CF91: 68          ;
CODE_0DCF92:    BNE CODE_0DCFA2         ; $0D:CF92: D0 0E       ;
CODE_0DCF94:    INC $043D,x             ; $0D:CF94: FE 3D 04    ;
CODE_0DCF97:    LDA $043D,x             ; $0D:CF97: BD 3D 04    ;
CODE_0DCF9A:    STA $5E,x               ; $0D:CF9A: 95 5E       ;
CODE_0DCF9C:    CMP #$02                ; $0D:CF9C: C9 02       ;
CODE_0DCF9E:    BNE CODE_0DCFA2         ; $0D:CF9E: D0 02       ;
CODE_0DCFA0:    INC $A1,x               ; $0D:CFA0: F6 A1       ;
CODE_0DCFA2:    RTS                     ; $0D:CFA2: 60          ;

CODE_0DCFA3:    PLA                     ; $0D:CFA3: 68          ;
CODE_0DCFA4:    BNE CODE_0DCFB7         ; $0D:CFA4: D0 11       ;
CODE_0DCFA6:    DEC $043D,x             ; $0D:CFA6: DE 3D 04    ;
CODE_0DCFA9:    LDA $043D,x             ; $0D:CFA9: BD 3D 04    ;
CODE_0DCFAC:    STA $5E,x               ; $0D:CFAC: 95 5E       ;
CODE_0DCFAE:    BNE CODE_0DCFB7         ; $0D:CFAE: D0 07       ;
CODE_0DCFB0:    INC $A1,x               ; $0D:CFB0: F6 A1       ;
CODE_0DCFB2:    LDA #$02                ; $0D:CFB2: A9 02       ;
CODE_0DCFB4:    STA $07A2,x             ; $0D:CFB4: 9D A2 07    ;
CODE_0DCFB7:    RTS                     ; $0D:CFB7: 60          ;

CODE_0DCFB8:    LDA $07A2,x             ; $0D:CFB8: BD A2 07    ;
CODE_0DCFBB:    BEQ CODE_0DCFC6         ; $0D:CFBB: F0 09       ;
CODE_0DCFBD:    LDA $09                 ; $0D:CFBD: A5 09       ;
CODE_0DCFBF:    LSR A                   ; $0D:CFBF: 4A          ;
CODE_0DCFC0:    BCS CODE_0DCFC5         ; $0D:CFC0: B0 03       ;
CODE_0DCFC2:    INC $0238,x             ; $0D:CFC2: FE 38 02    ;
CODE_0DCFC5:    RTS                     ; $0D:CFC5: 60          ;

CODE_0DCFC6:    LDA $0238,x             ; $0D:CFC6: BD 38 02    ;
CODE_0DCFC9:    ADC #$10                ; $0D:CFC9: 69 10       ;
CODE_0DCFCB:    CMP $0237               ; $0D:CFCB: CD 37 02    ;
CODE_0DCFCE:    BCC CODE_0DCFBD         ; $0D:CFCE: 90 ED       ;
CODE_0DCFD0:    LDA #$00                ; $0D:CFD0: A9 00       ;
CODE_0DCFD2:    STA $A1,x               ; $0D:CFD2: 95 A1       ;
CODE_0DCFD4:    RTS                     ; $0D:CFD4: 60          ;

CODE_0DCFD5:    LDA $29,x               ; $0D:CFD5: B5 29       ;
CODE_0DCFD7:    AND #$20                ; $0D:CFD7: 29 20       ;
CODE_0DCFD9:    BEQ CODE_0DCFDE         ; $0D:CFD9: F0 03       ;
CODE_0DCFDB:    JMP CODE_0DBF33         ; $0D:CFDB: 4C 33 BF    ;

CODE_0DCFDE:    LDA #$E8                ; $0D:CFDE: A9 E8       ;
CODE_0DCFE0:    STA $5E,x               ; $0D:CFE0: 95 5E       ;
CODE_0DCFE2:    JMP CODE_0DBEA0         ; $0D:CFE2: 4C A0 BE    ;

DATA_0DCFE5:        db $40,$80,$04,$04

CODE_0DCFE9:    LDA $29,x               ; $0D:CFE9: B5 29       ;
CODE_0DCFEB:    AND #$20                ; $0D:CFEB: 29 20       ;
CODE_0DCFED:    BEQ CODE_0DCFF2         ; $0D:CFED: F0 03       ;
CODE_0DCFEF:    JMP CODE_0DBF2D         ; $0D:CFEF: 4C 2D BF    ;

CODE_0DCFF2:    STA $03                 ; $0D:CFF2: 85 03       ;
CODE_0DCFF4:    LDA $1C,x               ; $0D:CFF4: B5 1C       ;
CODE_0DCFF6:    SEC                     ; $0D:CFF6: 38          ;
CODE_0DCFF7:    SBC #$0A                ; $0D:CFF7: E9 0A       ;
CODE_0DCFF9:    TAY                     ; $0D:CFF9: A8          ;
CODE_0DCFFA:    LDA DATA_0DCFE5,y       ; $0D:CFFA: B9 E5 CF    ;
CODE_0DCFFD:    STA $02                 ; $0D:CFFD: 85 02       ;
CODE_0DCFFF:    LDA $0402,x             ; $0D:CFFF: BD 02 04    ;
CODE_0DD002:    SEC                     ; $0D:D002: 38          ;
CODE_0DD003:    SBC $02                 ; $0D:D003: E5 02       ;
CODE_0DD005:    STA $0402,x             ; $0D:D005: 9D 02 04    ;
CODE_0DD008:    LDA $021A,x             ; $0D:D008: BD 1A 02    ;
CODE_0DD00B:    SBC #$00                ; $0D:D00B: E9 00       ;
CODE_0DD00D:    STA $021A,x             ; $0D:D00D: 9D 1A 02    ;
CODE_0DD010:    LDA $79,x               ; $0D:D010: B5 79       ;
CODE_0DD012:    SBC #$00                ; $0D:D012: E9 00       ;
CODE_0DD014:    STA $79,x               ; $0D:D014: 95 79       ;
CODE_0DD016:    LDA #$40                ; $0D:D016: A9 40       ;
CODE_0DD018:    STA $02                 ; $0D:D018: 85 02       ;
CODE_0DD01A:    CPX #$02                ; $0D:D01A: E0 02       ;
CODE_0DD01C:    BCC CODE_0DD069         ; $0D:D01C: 90 4B       ;
CODE_0DD01E:    LDA $5E,x               ; $0D:D01E: B5 5E       ;
CODE_0DD020:    CMP #$10                ; $0D:D020: C9 10       ;
CODE_0DD022:    BCC CODE_0DD03B         ; $0D:D022: 90 17       ;
CODE_0DD024:    LDA $041D,x             ; $0D:D024: BD 1D 04    ;
CODE_0DD027:    CLC                     ; $0D:D027: 18          ;
CODE_0DD028:    ADC $02                 ; $0D:D028: 65 02       ;
CODE_0DD02A:    STA $041D,x             ; $0D:D02A: 9D 1D 04    ;
CODE_0DD02D:    LDA $0238,x             ; $0D:D02D: BD 38 02    ;
CODE_0DD030:    ADC $03                 ; $0D:D030: 65 03       ;
CODE_0DD032:    STA $0238,x             ; $0D:D032: 9D 38 02    ;
CODE_0DD035:    LDA $BC,x               ; $0D:D035: B5 BC       ;
CODE_0DD037:    ADC #$00                ; $0D:D037: 69 00       ;
CODE_0DD039:    BRA CODE_0DD050         ; $0D:D039: 80 15       ;

CODE_0DD03B:    LDA $041D,x             ; $0D:D03B: BD 1D 04    ;
CODE_0DD03E:    SEC                     ; $0D:D03E: 38          ;
CODE_0DD03F:    SBC $02                 ; $0D:D03F: E5 02       ;
CODE_0DD041:    STA $041D,x             ; $0D:D041: 9D 1D 04    ;
CODE_0DD044:    LDA $0238,x             ; $0D:D044: BD 38 02    ;
CODE_0DD047:    SBC $03                 ; $0D:D047: E5 03       ;
CODE_0DD049:    STA $0238,x             ; $0D:D049: 9D 38 02    ;
CODE_0DD04C:    LDA $BC,x               ; $0D:D04C: B5 BC       ;
CODE_0DD04E:    SBC #$00                ; $0D:D04E: E9 00       ;
CODE_0DD050:    STA $BC,x               ; $0D:D050: 95 BC       ;
CODE_0DD052:    LDY #$00                ; $0D:D052: A0 00       ;
CODE_0DD054:    LDA $0238,x             ; $0D:D054: BD 38 02    ;
CODE_0DD057:    SEC                     ; $0D:D057: 38          ;
CODE_0DD058:    SBC $043D,x             ; $0D:D058: FD 3D 04    ;
CODE_0DD05B:    BPL CODE_0DD062         ; $0D:D05B: 10 05       ;
CODE_0DD05D:    LDY #$10                ; $0D:D05D: A0 10       ;
CODE_0DD05F:    EOR #$FF                ; $0D:D05F: 49 FF       ;
CODE_0DD061:    INC A                   ; $0D:D061: 1A          ;
CODE_0DD062:    CMP #$0F                ; $0D:D062: C9 0F       ;
CODE_0DD064:    BCC CODE_0DD069         ; $0D:D064: 90 03       ;
CODE_0DD066:    TYA                     ; $0D:D066: 98          ;
CODE_0DD067:    STA $5E,x               ; $0D:D067: 95 5E       ;
CODE_0DD069:    RTS                     ; $0D:D069: 60          ;

DATA_0DD06A:        db $00,$01,$03,$04,$05,$06,$07,$07 ;
                    db $08,$00,$03,$06,$09,$0B,$0D,$0E ;
                    db $0F,$10,$00,$04,$09,$0D,$10,$13 ;
                    db $16,$17,$18,$00,$06,$0C,$12,$16 ;
                    db $1A,$1D,$1F,$20,$00,$07,$0F,$16 ;
                    db $1C,$21,$25,$27,$28,$00,$09,$12 ;
                    db $1B,$21,$27,$2C,$2F,$30,$00,$0B ;
                    db $15,$1F,$27,$2E,$33,$37,$38,$00 ;
                    db $0C,$18,$24,$2D,$35,$3B,$3E,$40 ;
                    db $00,$0E,$1B,$28,$32,$3B,$42,$46 ;
                    db $48,$00,$0F,$1F,$2D,$38,$42,$4A ;
                    db $4E,$50,$00,$11,$22,$31,$3E,$49 ;
                    db $51,$56,$58 ;

DATA_0DD0CD:        db $01,$03,$02,$00 ;

DATA_0DD0D1:        db $00,$09,$12,$1B,$24,$2D,$36,$3F ;
                    db $48,$51,$5A,$63 ;

DATA_0DD0DD:        db $0C,$18 ;

CODE_0DD0DF:    JSR CODE_0DFDE1         ; $0D:D0DF: 20 E1 FD    ;
CODE_0DD0E2:    LDA $03D1               ; $0D:D0E2: AD D1 03    ;
CODE_0DD0E5:    AND #$08                ; $0D:D0E5: 29 08       ;
CODE_0DD0E7:    BNE CODE_0DD159         ; $0D:D0E7: D0 70       ;
CODE_0DD0E9:    LDA $0747               ; $0D:D0E9: AD 47 07    ;
CODE_0DD0EC:    BNE CODE_0DD0F8         ; $0D:D0EC: D0 0A       ;
CODE_0DD0EE:    LDA $0388,x             ; $0D:D0EE: BD 88 03    ;
CODE_0DD0F1:    JSR CODE_0DD7E4         ; $0D:D0F1: 20 E4 D7    ;
CODE_0DD0F4:    AND #$1F                ; $0D:D0F4: 29 1F       ;
CODE_0DD0F6:    STA $A1,x               ; $0D:D0F6: 95 A1       ;
CODE_0DD0F8:    LDA $A1,x               ; $0D:D0F8: B5 A1       ;
CODE_0DD0FA:    LDY $1C,x               ; $0D:D0FA: B4 1C       ;
CODE_0DD0FC:    CPY #$1F                ; $0D:D0FC: C0 1F       ;
CODE_0DD0FE:    BCC CODE_0DD10B         ; $0D:D0FE: 90 0B       ;
CODE_0DD100:    CMP #$08                ; $0D:D100: C9 08       ;
CODE_0DD102:    BEQ CODE_0DD108         ; $0D:D102: F0 04       ;
CODE_0DD104:    CMP #$18                ; $0D:D104: C9 18       ;
CODE_0DD106:    BNE CODE_0DD10B         ; $0D:D106: D0 03       ;
CODE_0DD108:    INC A                   ; $0D:D108: 1A          ;
CODE_0DD109:    STA $A1,x               ; $0D:D109: 95 A1       ;
CODE_0DD10B:    STA $EF                 ; $0D:D10B: 85 EF       ;
CODE_0DD10D:    JSR CODE_0DFD4F         ; $0D:D10D: 20 4F FD    ;
CODE_0DD110:    JSR CODE_0DD23C         ; $0D:D110: 20 3C D2    ;
CODE_0DD113:    LDY $0B46,x             ; $0D:D113: BC 46 0B    ;
CODE_0DD116:    LDA $03B9               ; $0D:D116: AD B9 03    ;
CODE_0DD119:    STA $0901,y             ; $0D:D119: 99 01 09    ;
CODE_0DD11C:    STA $07                 ; $0D:D11C: 85 07       ;
CODE_0DD11E:    LDA $03AE               ; $0D:D11E: AD AE 03    ;
CODE_0DD121:    STA $0900,y             ; $0D:D121: 99 00 09    ;
CODE_0DD124:    STA $06                 ; $0D:D124: 85 06       ;
CODE_0DD126:    LDA #$01                ; $0D:D126: A9 01       ;
CODE_0DD128:    STA $00                 ; $0D:D128: 85 00       ;
CODE_0DD12A:    JSR CODE_0DD1B5         ; $0D:D12A: 20 B5 D1    ;
CODE_0DD12D:    LDY #$05                ; $0D:D12D: A0 05       ;
CODE_0DD12F:    LDA $1C,x               ; $0D:D12F: B5 1C       ;
CODE_0DD131:    CMP #$1F                ; $0D:D131: C9 1F       ;
CODE_0DD133:    BCC CODE_0DD137         ; $0D:D133: 90 02       ;
CODE_0DD135:    LDY #$0B                ; $0D:D135: A0 0B       ;
CODE_0DD137:    STY $ED                 ; $0D:D137: 84 ED       ;
CODE_0DD139:    STZ $00                 ; $0D:D139: 64 00       ;
CODE_0DD13B:    LDA $EF                 ; $0D:D13B: A5 EF       ;
CODE_0DD13D:    JSR CODE_0DD23C         ; $0D:D13D: 20 3C D2    ;
CODE_0DD140:    JSR CODE_0DD15A         ; $0D:D140: 20 5A D1    ;
CODE_0DD143:    LDA $00                 ; $0D:D143: A5 00       ;
CODE_0DD145:    CMP #$04                ; $0D:D145: C9 04       ;
CODE_0DD147:    BNE CODE_0DD151         ; $0D:D147: D0 08       ;
CODE_0DD149:    LDY $06CF               ; $0D:D149: AC CF 06    ;
CODE_0DD14C:    LDA $0B46,y             ; $0D:D14C: B9 46 0B    ;
CODE_0DD14F:    STA $06                 ; $0D:D14F: 85 06       ;
CODE_0DD151:    INC $00                 ; $0D:D151: E6 00       ;
CODE_0DD153:    LDA $00                 ; $0D:D153: A5 00       ;
CODE_0DD155:    CMP $ED                 ; $0D:D155: C5 ED       ;
CODE_0DD157:    BCC CODE_0DD13B         ; $0D:D157: 90 E2       ;
CODE_0DD159:    RTS                     ; $0D:D159: 60          ;

CODE_0DD15A:    LDA $03                 ; $0D:D15A: A5 03       ;
CODE_0DD15C:    STA $05                 ; $0D:D15C: 85 05       ;
CODE_0DD15E:    LDY $06                 ; $0D:D15E: A4 06       ;
CODE_0DD160:    LDA $01                 ; $0D:D160: A5 01       ;
CODE_0DD162:    LSR $05                 ; $0D:D162: 46 05       ;
CODE_0DD164:    BCS CODE_0DD169         ; $0D:D164: B0 03       ;
CODE_0DD166:    EOR #$FF                ; $0D:D166: 49 FF       ;
CODE_0DD168:    INC A                   ; $0D:D168: 1A          ;
CODE_0DD169:    CLC                     ; $0D:D169: 18          ;
CODE_0DD16A:    ADC $03AE               ; $0D:D16A: 6D AE 03    ;
CODE_0DD16D:    STA $0900,y             ; $0D:D16D: 99 00 09    ;
CODE_0DD170:    STA $06                 ; $0D:D170: 85 06       ;
CODE_0DD172:    CMP $03AE               ; $0D:D172: CD AE 03    ;
CODE_0DD175:    BCS CODE_0DD180         ; $0D:D175: B0 09       ;
CODE_0DD177:    LDA $03AE               ; $0D:D177: AD AE 03    ;
CODE_0DD17A:    SEC                     ; $0D:D17A: 38          ;
CODE_0DD17B:    SBC $06                 ; $0D:D17B: E5 06       ;
CODE_0DD17D:    JMP CODE_0DD184         ; $0D:D17D: 4C 84 D1    ;

CODE_0DD180:    SEC                     ; $0D:D180: 38          ;
CODE_0DD181:    SBC $03AE               ; $0D:D181: ED AE 03    ;
CODE_0DD184:    CMP #$59                ; $0D:D184: C9 59       ;
CODE_0DD186:    BCC CODE_0DD18C         ; $0D:D186: 90 04       ;
CODE_0DD188:    LDA #$F8                ; $0D:D188: A9 F8       ;
CODE_0DD18A:    BNE CODE_0DD1A0         ; $0D:D18A: D0 14       ;
CODE_0DD18C:    LDA $03B9               ; $0D:D18C: AD B9 03    ;
CODE_0DD18F:    CMP #$F8                ; $0D:D18F: C9 F8       ;
CODE_0DD191:    BEQ CODE_0DD1A0         ; $0D:D191: F0 0D       ;
CODE_0DD193:    LDA $02                 ; $0D:D193: A5 02       ;
CODE_0DD195:    LSR $05                 ; $0D:D195: 46 05       ;
CODE_0DD197:    BCS CODE_0DD19C         ; $0D:D197: B0 03       ;
CODE_0DD199:    EOR #$FF                ; $0D:D199: 49 FF       ;
CODE_0DD19B:    INC A                   ; $0D:D19B: 1A          ;
CODE_0DD19C:    CLC                     ; $0D:D19C: 18          ;
CODE_0DD19D:    ADC $03B9               ; $0D:D19D: 6D B9 03    ;
CODE_0DD1A0:    STA $0901,y             ; $0D:D1A0: 99 01 09    ;
CODE_0DD1A3:    STA $07                 ; $0D:D1A3: 85 07       ;
CODE_0DD1A5:    CMP #$F0                ; $0D:D1A5: C9 F0       ;
CODE_0DD1A7:    BCC CODE_0DD1B0         ; $0D:D1A7: 90 07       ;
CODE_0DD1A9:    LDA #$01                ; $0D:D1A9: A9 01       ;
CODE_0DD1AB:    STA $0D00,y             ; $0D:D1AB: 99 00 0D    ;
CODE_0DD1AE:    BRA CODE_0DD1B5         ; $0D:D1AE: 80 05       ;

CODE_0DD1B0:    LDA #$00                ; $0D:D1B0: A9 00       ;
CODE_0DD1B2:    STA $0D00,y             ; $0D:D1B2: 99 00 0D    ;
CODE_0DD1B5:    JSR CODE_0DF47B         ; $0D:D1B5: 20 7B F4    ;
CODE_0DD1B8:    TYA                     ; $0D:D1B8: 98          ;
CODE_0DD1B9:    PHA                     ; $0D:D1B9: 48          ;
CODE_0DD1BA:    LDA $07AF               ; $0D:D1BA: AD AF 07    ;
CODE_0DD1BD:    ORA $0747               ; $0D:D1BD: 0D 47 07    ;
CODE_0DD1C0:    BNE CODE_0DD233         ; $0D:D1C0: D0 71       ;
CODE_0DD1C2:    STA $05                 ; $0D:D1C2: 85 05       ;
CODE_0DD1C4:    LDY $BB                 ; $0D:D1C4: A4 BB       ;
CODE_0DD1C6:    DEY                     ; $0D:D1C6: 88          ;
CODE_0DD1C7:    BNE CODE_0DD233         ; $0D:D1C7: D0 6A       ;
CODE_0DD1C9:    LDY $0237               ; $0D:D1C9: AC 37 02    ;
CODE_0DD1CC:    LDA $0754               ; $0D:D1CC: AD 54 07    ;
CODE_0DD1CF:    BNE CODE_0DD1D6         ; $0D:D1CF: D0 05       ;
CODE_0DD1D1:    LDA $0714               ; $0D:D1D1: AD 14 07    ;
CODE_0DD1D4:    BEQ CODE_0DD1DF         ; $0D:D1D4: F0 09       ;
CODE_0DD1D6:    INC $05                 ; $0D:D1D6: E6 05       ;
CODE_0DD1D8:    INC $05                 ; $0D:D1D8: E6 05       ;
CODE_0DD1DA:    TYA                     ; $0D:D1DA: 98          ;
CODE_0DD1DB:    CLC                     ; $0D:D1DB: 18          ;
CODE_0DD1DC:    ADC #$18                ; $0D:D1DC: 69 18       ;
CODE_0DD1DE:    TAY                     ; $0D:D1DE: A8          ;
CODE_0DD1DF:    TYA                     ; $0D:D1DF: 98          ;
CODE_0DD1E0:    SEC                     ; $0D:D1E0: 38          ;
CODE_0DD1E1:    SBC $07                 ; $0D:D1E1: E5 07       ;
CODE_0DD1E3:    BPL CODE_0DD1E8         ; $0D:D1E3: 10 03       ;
CODE_0DD1E5:    EOR #$FF                ; $0D:D1E5: 49 FF       ;
CODE_0DD1E7:    INC A                   ; $0D:D1E7: 1A          ;
CODE_0DD1E8:    CMP #$08                ; $0D:D1E8: C9 08       ;
CODE_0DD1EA:    BCS CODE_0DD206         ; $0D:D1EA: B0 1A       ;
CODE_0DD1EC:    LDA $06                 ; $0D:D1EC: A5 06       ;
CODE_0DD1EE:    CMP #$F0                ; $0D:D1EE: C9 F0       ;
CODE_0DD1F0:    BCS CODE_0DD206         ; $0D:D1F0: B0 14       ;
CODE_0DD1F2:    LDA $03AD               ; $0D:D1F2: AD AD 03    ;
CODE_0DD1F5:    CLC                     ; $0D:D1F5: 18          ;
CODE_0DD1F6:    ADC #$04                ; $0D:D1F6: 69 04       ;
CODE_0DD1F8:    STA $04                 ; $0D:D1F8: 85 04       ;
CODE_0DD1FA:    SEC                     ; $0D:D1FA: 38          ;
CODE_0DD1FB:    SBC $06                 ; $0D:D1FB: E5 06       ;
CODE_0DD1FD:    BPL CODE_0DD202         ; $0D:D1FD: 10 03       ;
CODE_0DD1FF:    EOR #$FF                ; $0D:D1FF: 49 FF       ;
CODE_0DD201:    INC A                   ; $0D:D201: 1A          ;
CODE_0DD202:    CMP #$08                ; $0D:D202: C9 08       ;
CODE_0DD204:    BCC CODE_0DD21A         ; $0D:D204: 90 14       ;
CODE_0DD206:    LDA $05                 ; $0D:D206: A5 05       ;
CODE_0DD208:    CMP #$02                ; $0D:D208: C9 02       ;
CODE_0DD20A:    BEQ CODE_0DD233         ; $0D:D20A: F0 27       ;
CODE_0DD20C:    LDY $05                 ; $0D:D20C: A4 05       ;
CODE_0DD20E:    LDA $0237               ; $0D:D20E: AD 37 02    ;
CODE_0DD211:    CLC                     ; $0D:D211: 18          ;
CODE_0DD212:    ADC DATA_0DD0DD,y       ; $0D:D212: 79 DD D0    ;
CODE_0DD215:    INC $05                 ; $0D:D215: E6 05       ;
CODE_0DD217:    JMP CODE_0DD1E0         ; $0D:D217: 4C E0 D1    ;

CODE_0DD21A:    LDX #$01                ; $0D:D21A: A2 01       ;
CODE_0DD21C:    LDA $04                 ; $0D:D21C: A5 04       ;
CODE_0DD21E:    CMP $06                 ; $0D:D21E: C5 06       ;
CODE_0DD220:    BCS CODE_0DD223         ; $0D:D220: B0 01       ;
CODE_0DD222:    INX                     ; $0D:D222: E8          ;
CODE_0DD223:    TXA                     ; $0D:D223: 8A          ;
CODE_0DD224:    LDX $9E                 ; $0D:D224: A6 9E       ;
CODE_0DD226:    STA $47,x               ; $0D:D226: 95 47       ;
CODE_0DD228:    LDX #$00                ; $0D:D228: A2 00       ;
CODE_0DD22A:    LDA $00                 ; $0D:D22A: A5 00       ;
CODE_0DD22C:    PHA                     ; $0D:D22C: 48          ;
CODE_0DD22D:    JSR CODE_0DDE82         ; $0D:D22D: 20 82 DE    ;
CODE_0DD230:    PLA                     ; $0D:D230: 68          ;
CODE_0DD231:    STA $00                 ; $0D:D231: 85 00       ;
CODE_0DD233:    PLA                     ; $0D:D233: 68          ;
CODE_0DD234:    CLC                     ; $0D:D234: 18          ;
CODE_0DD235:    ADC #$04                ; $0D:D235: 69 04       ;
CODE_0DD237:    STA $06                 ; $0D:D237: 85 06       ;
CODE_0DD239:    LDX $9E                 ; $0D:D239: A6 9E       ;
CODE_0DD23B:    RTS                     ; $0D:D23B: 60          ;

CODE_0DD23C:    PHA                     ; $0D:D23C: 48          ;
CODE_0DD23D:    AND #$0F                ; $0D:D23D: 29 0F       ;
CODE_0DD23F:    CMP #$09                ; $0D:D23F: C9 09       ;
CODE_0DD241:    BCC CODE_0DD246         ; $0D:D241: 90 03       ;
CODE_0DD243:    EOR #$0F                ; $0D:D243: 49 0F       ;
CODE_0DD245:    INC A                   ; $0D:D245: 1A          ;
CODE_0DD246:    STA $01                 ; $0D:D246: 85 01       ;
CODE_0DD248:    LDY $00                 ; $0D:D248: A4 00       ;
CODE_0DD24A:    LDA DATA_0DD0D1,y       ; $0D:D24A: B9 D1 D0    ;
CODE_0DD24D:    CLC                     ; $0D:D24D: 18          ;
CODE_0DD24E:    ADC $01                 ; $0D:D24E: 65 01       ;
CODE_0DD250:    TAY                     ; $0D:D250: A8          ;
CODE_0DD251:    LDA DATA_0DD06A,y       ; $0D:D251: B9 6A D0    ;
CODE_0DD254:    STA $01                 ; $0D:D254: 85 01       ;
CODE_0DD256:    PLA                     ; $0D:D256: 68          ;
CODE_0DD257:    PHA                     ; $0D:D257: 48          ;
CODE_0DD258:    CLC                     ; $0D:D258: 18          ;
CODE_0DD259:    ADC #$08                ; $0D:D259: 69 08       ;
CODE_0DD25B:    AND #$0F                ; $0D:D25B: 29 0F       ;
CODE_0DD25D:    CMP #$09                ; $0D:D25D: C9 09       ;
CODE_0DD25F:    BCC CODE_0DD264         ; $0D:D25F: 90 03       ;
CODE_0DD261:    EOR #$0F                ; $0D:D261: 49 0F       ;
CODE_0DD263:    INC A                   ; $0D:D263: 1A          ;
CODE_0DD264:    STA $02                 ; $0D:D264: 85 02       ;
CODE_0DD266:    LDY $00                 ; $0D:D266: A4 00       ;
CODE_0DD268:    LDA DATA_0DD0D1,y       ; $0D:D268: B9 D1 D0    ;
CODE_0DD26B:    CLC                     ; $0D:D26B: 18          ;
CODE_0DD26C:    ADC $02                 ; $0D:D26C: 65 02       ;
CODE_0DD26E:    TAY                     ; $0D:D26E: A8          ;
CODE_0DD26F:    LDA DATA_0DD06A,y       ; $0D:D26F: B9 6A D0    ;
CODE_0DD272:    STA $02                 ; $0D:D272: 85 02       ;
CODE_0DD274:    PLA                     ; $0D:D274: 68          ;
CODE_0DD275:    LSR A                   ; $0D:D275: 4A          ;
CODE_0DD276:    LSR A                   ; $0D:D276: 4A          ;
CODE_0DD277:    LSR A                   ; $0D:D277: 4A          ;
CODE_0DD278:    TAY                     ; $0D:D278: A8          ;
CODE_0DD279:    LDA DATA_0DD0CD,y       ; $0D:D279: B9 CD D0    ;
CODE_0DD27C:    STA $03                 ; $0D:D27C: 85 03       ;
CODE_0DD27E:    RTS                     ; $0D:D27E: 60          ;

DATA_0DD27F:        db $F8,$A0,$70,$BD,$00

DATA_0DD284:        db $00,$00,$00,$20,$20

CODE_0DD289:    LDA $29,x               ; $0D:D289: B5 29       ;
CODE_0DD28B:    AND #$20                ; $0D:D28B: 29 20       ;
CODE_0DD28D:    BEQ CODE_0DD297         ; $0D:D28D: F0 08       ;
CODE_0DD28F:    LDA #$20                ; $0D:D28F: A9 20       ;
CODE_0DD291:    STA $0257,x             ; $0D:D291: 9D 57 02    ;
CODE_0DD294:    JMP CODE_0DBF33         ; $0D:D294: 4C 33 BF    ;

CODE_0DD297:    JSR CODE_0DBEA0         ; $0D:D297: 20 A0 BE    ;
CODE_0DD29A:    LDY #$0D                ; $0D:D29A: A0 0D       ;
CODE_0DD29C:    LDA #$05                ; $0D:D29C: A9 05       ;
CODE_0DD29E:    JSR CODE_0DBF37         ; $0D:D29E: 20 37 BF    ;
CODE_0DD2A1:    LDA $043D,x             ; $0D:D2A1: BD 3D 04    ;
CODE_0DD2A4:    LSR A                   ; $0D:D2A4: 4A          ;
CODE_0DD2A5:    LSR A                   ; $0D:D2A5: 4A          ;
CODE_0DD2A6:    LSR A                   ; $0D:D2A6: 4A          ;
CODE_0DD2A7:    LSR A                   ; $0D:D2A7: 4A          ;
CODE_0DD2A8:    TAY                     ; $0D:D2A8: A8          ;
CODE_0DD2A9:    LDA $0238,x             ; $0D:D2A9: BD 38 02    ;
CODE_0DD2AC:    SEC                     ; $0D:D2AC: 38          ;
CODE_0DD2AD:    SBC DATA_0DD27F,y       ; $0D:D2AD: F9 7F D2    ;
CODE_0DD2B0:    BPL CODE_0DD2B5         ; $0D:D2B0: 10 03       ;
CODE_0DD2B2:    EOR #$FF                ; $0D:D2B2: 49 FF       ;
CODE_0DD2B4:    INC A                   ; $0D:D2B4: 1A          ;
CODE_0DD2B5:    CMP #$08                ; $0D:D2B5: C9 08       ;
CODE_0DD2B7:    BCS CODE_0DD2C4         ; $0D:D2B7: B0 0B       ;
CODE_0DD2B9:    LDA $043D,x             ; $0D:D2B9: BD 3D 04    ;
CODE_0DD2BC:    CLC                     ; $0D:D2BC: 18          ;
CODE_0DD2BD:    ADC #$10                ; $0D:D2BD: 69 10       ;
CODE_0DD2BF:    LSR A                   ; $0D:D2BF: 4A          ;
CODE_0DD2C0:    LSR A                   ; $0D:D2C0: 4A          ;
CODE_0DD2C1:    LSR A                   ; $0D:D2C1: 4A          ;
CODE_0DD2C2:    LSR A                   ; $0D:D2C2: 4A          ;
CODE_0DD2C3:    TAY                     ; $0D:D2C3: A8          ;
CODE_0DD2C4:    LDA DATA_0DD284,y       ; $0D:D2C4: B9 84 D2    ;
CODE_0DD2C7:    STA $0257,x             ; $0D:D2C7: 9D 57 02    ;
CODE_0DD2CA:    RTS                     ; $0D:D2CA: 60          ;

DATA_0DD2CB:        db $15,$30,$40

CODE_0DD2CE:    LDA $29,x               ; $0D:D2CE: B5 29       ;
CODE_0DD2D0:    AND #$20                ; $0D:D2D0: 29 20       ;
CODE_0DD2D2:    BEQ CODE_0DD2D7         ; $0D:D2D2: F0 03       ;
CODE_0DD2D4:    JMP CODE_0DBF06         ; $0D:D2D4: 4C 06 BF    ;

CODE_0DD2D7:    LDA $29,x               ; $0D:D2D7: B5 29       ;
CODE_0DD2D9:    BEQ CODE_0DD2E4         ; $0D:D2D9: F0 09       ;
CODE_0DD2DB:    STZ $A1,x               ; $0D:D2DB: 74 A1       ;
CODE_0DD2DD:    STZ $06CB               ; $0D:D2DD: 9C CB 06    ;
CODE_0DD2E0:    LDA #$10                ; $0D:D2E0: A9 10       ;
CODE_0DD2E2:    BNE CODE_0DD2F7         ; $0D:D2E2: D0 13       ;
CODE_0DD2E4:    LDA #$12                ; $0D:D2E4: A9 12       ;
CODE_0DD2E6:    STA $06CB               ; $0D:D2E6: 8D CB 06    ;
CODE_0DD2E9:    LDY #$02                ; $0D:D2E9: A0 02       ;
CODE_0DD2EB:    LDA DATA_0DD2CB,y       ; $0D:D2EB: B9 CB D2    ;
CODE_0DD2EE:    STA $0001,y             ; $0D:D2EE: 99 01 00    ;
CODE_0DD2F1:    DEY                     ; $0D:D2F1: 88          ;
CODE_0DD2F2:    BPL CODE_0DD2EB         ; $0D:D2F2: 10 F7       ;
CODE_0DD2F4:    JSR CODE_0DD30E         ; $0D:D2F4: 20 0E D3    ;
CODE_0DD2F7:    STA $5E,x               ; $0D:D2F7: 95 5E       ;
CODE_0DD2F9:    LDY #$01                ; $0D:D2F9: A0 01       ;
CODE_0DD2FB:    LDA $A1,x               ; $0D:D2FB: B5 A1       ;
CODE_0DD2FD:    AND #$01                ; $0D:D2FD: 29 01       ;
CODE_0DD2FF:    BNE CODE_0DD309         ; $0D:D2FF: D0 08       ;
CODE_0DD301:    LDA $5E,x               ; $0D:D301: B5 5E       ;
CODE_0DD303:    EOR #$FF                ; $0D:D303: 49 FF       ;
CODE_0DD305:    INC A                   ; $0D:D305: 1A          ;
CODE_0DD306:    STA $5E,x               ; $0D:D306: 95 5E       ;
CODE_0DD308:    INY                     ; $0D:D308: C8          ;
CODE_0DD309:    STY $47,x               ; $0D:D309: 94 47       ;
CODE_0DD30B:    JMP CODE_0DBEA0         ; $0D:D30B: 4C A0 BE    ;

CODE_0DD30E:    LDY #$00                ; $0D:D30E: A0 00       ;
CODE_0DD310:    JSR CODE_0DE828         ; $0D:D310: 20 28 E8    ;
CODE_0DD313:    BPL CODE_0DD31D         ; $0D:D313: 10 08       ;
CODE_0DD315:    INY                     ; $0D:D315: C8          ;
CODE_0DD316:    LDA $00                 ; $0D:D316: A5 00       ;
CODE_0DD318:    EOR #$FF                ; $0D:D318: 49 FF       ;
CODE_0DD31A:    INC A                   ; $0D:D31A: 1A          ;
CODE_0DD31B:    STA $00                 ; $0D:D31B: 85 00       ;
CODE_0DD31D:    LDA $00                 ; $0D:D31D: A5 00       ;
CODE_0DD31F:    CMP #$3C                ; $0D:D31F: C9 3C       ;
CODE_0DD321:    BCC CODE_0DD33F         ; $0D:D321: 90 1C       ;
CODE_0DD323:    LDA #$3C                ; $0D:D323: A9 3C       ;
CODE_0DD325:    STA $00                 ; $0D:D325: 85 00       ;
CODE_0DD327:    LDA $1C,x               ; $0D:D327: B5 1C       ;
CODE_0DD329:    CMP #$11                ; $0D:D329: C9 11       ;
CODE_0DD32B:    BNE CODE_0DD33F         ; $0D:D32B: D0 12       ;
CODE_0DD32D:    TYA                     ; $0D:D32D: 98          ;
CODE_0DD32E:    CMP $A1,x               ; $0D:D32E: D5 A1       ;
CODE_0DD330:    BEQ CODE_0DD33F         ; $0D:D330: F0 0D       ;
CODE_0DD332:    LDA $A1,x               ; $0D:D332: B5 A1       ;
CODE_0DD334:    BEQ CODE_0DD33C         ; $0D:D334: F0 06       ;
CODE_0DD336:    DEC $5E,x               ; $0D:D336: D6 5E       ;
CODE_0DD338:    LDA $5E,x               ; $0D:D338: B5 5E       ;
CODE_0DD33A:    BNE CODE_0DD37A         ; $0D:D33A: D0 3E       ;
CODE_0DD33C:    TYA                     ; $0D:D33C: 98          ;
CODE_0DD33D:    STA $A1,x               ; $0D:D33D: 95 A1       ;
CODE_0DD33F:    LDA $00                 ; $0D:D33F: A5 00       ;
CODE_0DD341:    AND #$3C                ; $0D:D341: 29 3C       ;
CODE_0DD343:    LSR A                   ; $0D:D343: 4A          ;
CODE_0DD344:    LSR A                   ; $0D:D344: 4A          ;
CODE_0DD345:    STA $00                 ; $0D:D345: 85 00       ;
CODE_0DD347:    LDY #$00                ; $0D:D347: A0 00       ;
CODE_0DD349:    LDA $5D                 ; $0D:D349: A5 5D       ;
CODE_0DD34B:    BEQ CODE_0DD371         ; $0D:D34B: F0 24       ;
CODE_0DD34D:    LDA $0775               ; $0D:D34D: AD 75 07    ;
CODE_0DD350:    BEQ CODE_0DD371         ; $0D:D350: F0 1F       ;
CODE_0DD352:    INY                     ; $0D:D352: C8          ;
CODE_0DD353:    LDA $5D                 ; $0D:D353: A5 5D       ;
CODE_0DD355:    CMP #$19                ; $0D:D355: C9 19       ;
CODE_0DD357:    BCC CODE_0DD361         ; $0D:D357: 90 08       ;
CODE_0DD359:    LDA $0775               ; $0D:D359: AD 75 07    ;
CODE_0DD35C:    CMP #$02                ; $0D:D35C: C9 02       ;
CODE_0DD35E:    BCC CODE_0DD361         ; $0D:D35E: 90 01       ;
CODE_0DD360:    INY                     ; $0D:D360: C8          ;
CODE_0DD361:    LDA $1C,x               ; $0D:D361: B5 1C       ;
CODE_0DD363:    CMP #$12                ; $0D:D363: C9 12       ;
CODE_0DD365:    BNE CODE_0DD36B         ; $0D:D365: D0 04       ;
CODE_0DD367:    LDA $5D                 ; $0D:D367: A5 5D       ;
CODE_0DD369:    BNE CODE_0DD371         ; $0D:D369: D0 06       ;
CODE_0DD36B:    LDA $A1,x               ; $0D:D36B: B5 A1       ;
CODE_0DD36D:    BNE CODE_0DD371         ; $0D:D36D: D0 02       ;
CODE_0DD36F:    LDY #$00                ; $0D:D36F: A0 00       ;
CODE_0DD371:    LDA $0001,y             ; $0D:D371: B9 01 00    ;
CODE_0DD374:    LDY $00                 ; $0D:D374: A4 00       ;
CODE_0DD376:    DEC A                   ; $0D:D376: 3A          ;
CODE_0DD377:    DEY                     ; $0D:D377: 88          ;
CODE_0DD378:    BPL CODE_0DD376         ; $0D:D378: 10 FC       ;
CODE_0DD37A:    RTS                     ; $0D:D37A: 60          ;

DATA_0DD37B:        db $1A,$58,$98,$96,$94,$92,$90,$8E
                    db $8C,$8A,$88,$86,$84,$82,$80

CODE_0DD38A:    PHX                         ; $0D:D38A: DA          ;
CODE_0DD38B:    LDX $0369               ; $0D:D38B: AE 69 03    ;
CODE_0DD38E:    DEX                     ; $0D:D38E: CA          ;
CODE_0DD38F:    DEX                     ; $0D:D38F: CA          ;
CODE_0DD390:    STX $0334               ; $0D:D390: 8E 34 03    ;
CODE_0DD393:    AND #$80                ; $0D:D393: 29 80       ;
CODE_0DD395:    BEQ CODE_0DD3B8         ; $0D:D395: F0 21       ;
CODE_0DD397:    STZ $030D,x             ; $0D:D397: 9E 0D 03    ;
CODE_0DD39A:    LDA #$01                ; $0D:D39A: A9 01       ;
CODE_0DD39C:    STA $0300,x             ; $0D:D39C: 9D 00 03    ;
CODE_0DD39F:    LDA $04                 ; $0D:D39F: A5 04       ;
CODE_0DD3A1:    AND #$1F                ; $0D:D3A1: 29 1F       ;
CODE_0DD3A3:    ASL A                   ; $0D:D3A3: 0A          ;
CODE_0DD3A4:    ASL A                   ; $0D:D3A4: 0A          ;
CODE_0DD3A5:    ASL A                   ; $0D:D3A5: 0A          ;
CODE_0DD3A6:    STA $E4                 ; $0D:D3A6: 85 E4       ;
CODE_0DD3A8:    LDA #$00                ; $0D:D3A8: A9 00       ;
CODE_0DD3AA:    SEC                     ; $0D:D3AA: 38          ;
CODE_0DD3AB:    SBC $42                 ; $0D:D3AB: E5 42       ;
CODE_0DD3AD:    CLC                     ; $0D:D3AD: 18          ;
CODE_0DD3AE:    ADC $E4                 ; $0D:D3AE: 65 E4       ;
CODE_0DD3B0:    STA $031A,x             ; $0D:D3B0: 9D 1A 03    ;
CODE_0DD3B3:    LDA #$03                ; $0D:D3B3: A9 03       ;
CODE_0DD3B5:    STA $0327,x             ; $0D:D3B5: 9D 27 03    ;
CODE_0DD3B8:    PLX                     ; $0D:D3B8: FA          ;
CODE_0DD3B9:    RTS                     ; $0D:D3B9: 60          ;

CODE_0DD3BA:    LDX $0368               ; $0D:D3BA: AE 68 03    ;
CODE_0DD3BD:    LDA $1C,x               ; $0D:D3BD: B5 1C       ;
CODE_0DD3BF:    CMP #$2D                ; $0D:D3BF: C9 2D       ;
CODE_0DD3C1:    BNE CODE_0DD3D4         ; $0D:D3C1: D0 11       ;
CODE_0DD3C3:    STX $9E                 ; $0D:D3C3: 86 9E       ;
CODE_0DD3C5:    LDA $29,x               ; $0D:D3C5: B5 29       ;
CODE_0DD3C7:    BEQ CODE_0DD3ED         ; $0D:D3C7: F0 24       ;
CODE_0DD3C9:    AND #$40                ; $0D:D3C9: 29 40       ;
CODE_0DD3CB:    BEQ CODE_0DD3D4         ; $0D:D3CB: F0 07       ;
CODE_0DD3CD:    LDA $0238,x             ; $0D:D3CD: BD 38 02    ;
CODE_0DD3D0:    CMP #$E0                ; $0D:D3D0: C9 E0       ;
CODE_0DD3D2:    BCC CODE_0DD3E7         ; $0D:D3D2: 90 13       ;
CODE_0DD3D4:    LDA $0095               ; $0D:D3D4: AD 95 00    ;
CODE_0DD3D7:    BNE CODE_0DD3E1         ; $0D:D3D7: D0 08       ;
CODE_0DD3D9:    LDA #$0B                ; $0D:D3D9: A9 0B       ;
CODE_0DD3DB:    STA $1602               ; $0D:D3DB: 8D 02 16    ;
CODE_0DD3DE:    STA $0095               ; $0D:D3DE: 8D 95 00    ;
CODE_0DD3E1:    INC $0772               ; $0D:D3E1: EE 72 07    ;
CODE_0DD3E4:    JMP CODE_0DD462         ; $0D:D3E4: 4C 62 D4    ;

CODE_0DD3E7:    JSR CODE_0DBF2D         ; $0D:D3E7: 20 2D BF    ;
CODE_0DD3EA:    JMP CODE_0DD56E         ; $0D:D3EA: 4C 6E D5    ;

CODE_0DD3ED:    DEC $0364               ; $0D:D3ED: CE 64 03    ;
CODE_0DD3F0:    BNE CODE_0DD441         ; $0D:D3F0: D0 4F       ;
CODE_0DD3F2:    LDA #$04                ; $0D:D3F2: A9 04       ;
CODE_0DD3F4:    STA $0364               ; $0D:D3F4: 8D 64 03    ;
CODE_0DD3F7:    LDA $0363               ; $0D:D3F7: AD 63 03    ;
CODE_0DD3FA:    EOR #$01                ; $0D:D3FA: 49 01       ;
CODE_0DD3FC:    STA $0363               ; $0D:D3FC: 8D 63 03    ;
CODE_0DD3FF:    LDA #$02                ; $0D:D3FF: A9 02       ;
CODE_0DD401:    STA $05                 ; $0D:D401: 85 05       ;
CODE_0DD403:    LDY $0369               ; $0D:D403: AC 69 03    ;
CODE_0DD406:    LDA DATA_0DD37B,y       ; $0D:D406: B9 7B D3    ;
CODE_0DD409:    STA $04                 ; $0D:D409: 85 04       ;
CODE_0DD40B:    JSR CODE_0DD38A         ; $0D:D40B: 20 8A D3    ;
CODE_0DD40E:    LDY $1700               ; $0D:D40E: AC 00 17    ;
CODE_0DD411:    INY                     ; $0D:D411: C8          ;
CODE_0DD412:    LDX #$18                ; $0D:D412: A2 18       ;
CODE_0DD414:    JSR CODE_0D90C6         ; $0D:D414: 20 C6 90    ;
CODE_0DD417:    LDX $9E                 ; $0D:D417: A6 9E       ;
CODE_0DD419:    JSR CODE_0D9085         ; $0D:D419: 20 85 90    ;
CODE_0DD41C:    LDA #$16                ; $0D:D41C: A9 16       ;
CODE_0DD41E:    STA $1603               ; $0D:D41E: 8D 03 16    ;
CODE_0DD421:    LDA $0369               ; $0D:D421: AD 69 03    ;
CODE_0DD424:    BNE CODE_0DD430         ; $0D:D424: D0 0A       ;
CODE_0DD426:    LDA #$08                ; $0D:D426: A9 08       ;
CODE_0DD428:    STA $014B               ; $0D:D428: 8D 4B 01    ;
CODE_0DD42B:    LDA #$FF                ; $0D:D42B: A9 FF       ;
CODE_0DD42D:    STA $0F4C               ; $0D:D42D: 8D 4C 0F    ;
CODE_0DD430:    INC $0369               ; $0D:D430: EE 69 03    ;
CODE_0DD433:    LDA $0369               ; $0D:D433: AD 69 03    ;
CODE_0DD436:    CMP #$0F                ; $0D:D436: C9 0F       ;
CODE_0DD438:    BNE CODE_0DD441         ; $0D:D438: D0 07       ;
CODE_0DD43A:    JSR CODE_0DC5E1         ; $0D:D43A: 20 E1 C5    ;
CODE_0DD43D:    LDA #$40                ; $0D:D43D: A9 40       ;
CODE_0DD43F:    STA $29,x               ; $0D:D43F: 95 29       ;
CODE_0DD441:    JMP CODE_0DD56E         ; $0D:D441: 4C 6E D5    ;

DATA_0DD444:        db $21,$41,$11,$31

CODE_0DD448:    LDA $29,x               ; $0D:D448: B5 29       ;
CODE_0DD44A:    AND #$20                ; $0D:D44A: 29 20       ;
CODE_0DD44C:    BEQ CODE_0DD470         ; $0D:D44C: F0 22       ;
CODE_0DD44E:    LDA $0238,x             ; $0D:D44E: BD 38 02    ;
CODE_0DD451:    CMP #$E0                ; $0D:D451: C9 E0       ;
CODE_0DD453:    BCC CODE_0DD3E7         ; $0D:D453: 90 92       ;
CODE_0DD455:    LDA $0EC4               ; $0D:D455: AD C4 0E    ;
CODE_0DD458:    BNE CODE_0DD462         ; $0D:D458: D0 08       ;
CODE_0DD45A:    LDA $0201               ; $0D:D45A: AD 01 02    ;
CODE_0DD45D:    CMP #$02                ; $0D:D45D: C9 02       ;
CODE_0DD45F:    BEQ CODE_0DD462         ; $0D:D45F: F0 01       ;
CODE_0DD461:    RTS                     ; $0D:D461: 60          ;

CODE_0DD462:    LDX #$08                ; $0D:D462: A2 08       ;
CODE_0DD464:    JSR CODE_0DCCEA         ; $0D:D464: 20 EA CC    ;
CODE_0DD467:    DEX                     ; $0D:D467: CA          ;
CODE_0DD468:    BPL CODE_0DD464         ; $0D:D468: 10 FA       ;
CODE_0DD46A:    STA $06CB               ; $0D:D46A: 8D CB 06    ;
CODE_0DD46D:    LDX $9E                 ; $0D:D46D: A6 9E       ;
CODE_0DD46F:    RTS                     ; $0D:D46F: 60          ;

CODE_0DD470:    STZ $06CB               ; $0D:D470: 9C CB 06    ;
CODE_0DD473:    LDA $0747               ; $0D:D473: AD 47 07    ;
CODE_0DD476:    BEQ CODE_0DD47B         ; $0D:D476: F0 03       ;
CODE_0DD478:    JMP CODE_0DD52B         ; $0D:D478: 4C 2B D5    ;

CODE_0DD47B:    LDA $0363               ; $0D:D47B: AD 63 03    ;
CODE_0DD47E:    BPL CODE_0DD483         ; $0D:D47E: 10 03       ;
CODE_0DD480:    JMP CODE_0DD500         ; $0D:D480: 4C 00 D5    ;

CODE_0DD483:    DEC $0364               ; $0D:D483: CE 64 03    ;
CODE_0DD486:    BNE CODE_0DD495         ; $0D:D486: D0 0D       ;
CODE_0DD488:    LDA #$20                ; $0D:D488: A9 20       ;
CODE_0DD48A:    STA $0364               ; $0D:D48A: 8D 64 03    ;
CODE_0DD48D:    LDA $0363               ; $0D:D48D: AD 63 03    ;
CODE_0DD490:    EOR #$01                ; $0D:D490: 49 01       ;
CODE_0DD492:    STA $0363               ; $0D:D492: 8D 63 03    ;
CODE_0DD495:    LDA $09                 ; $0D:D495: A5 09       ;
CODE_0DD497:    AND #$0F                ; $0D:D497: 29 0F       ;
CODE_0DD499:    BNE CODE_0DD49F         ; $0D:D499: D0 04       ;
CODE_0DD49B:    LDA #$02                ; $0D:D49B: A9 02       ;
CODE_0DD49D:    STA $47,x               ; $0D:D49D: 95 47       ;
CODE_0DD49F:    LDA $0792,x             ; $0D:D49F: BD 92 07    ;
CODE_0DD4A2:    BEQ CODE_0DD4C1         ; $0D:D4A2: F0 1D       ;
CODE_0DD4A4:    JSR CODE_0DE828         ; $0D:D4A4: 20 28 E8    ;
CODE_0DD4A7:    BPL CODE_0DD4C1         ; $0D:D4A7: 10 18       ;
CODE_0DD4A9:    LDA #$01                ; $0D:D4A9: A9 01       ;
CODE_0DD4AB:    STA $47,x               ; $0D:D4AB: 95 47       ;
CODE_0DD4AD:    LDA #$02                ; $0D:D4AD: A9 02       ;
CODE_0DD4AF:    STA $0365               ; $0D:D4AF: 8D 65 03    ;
CODE_0DD4B2:    LDA #$20                ; $0D:D4B2: A9 20       ;
CODE_0DD4B4:    STA $0792,x             ; $0D:D4B4: 9D 92 07    ;
CODE_0DD4B7:    STA $079C               ; $0D:D4B7: 8D 9C 07    ;
CODE_0DD4BA:    LDA $021A,x             ; $0D:D4BA: BD 1A 02    ;
CODE_0DD4BD:    CMP #$B0                ; $0D:D4BD: C9 B0       ;
CODE_0DD4BF:    BCS CODE_0DD500         ; $0D:D4BF: B0 3F       ;
CODE_0DD4C1:    LDA $09                 ; $0D:D4C1: A5 09       ;
CODE_0DD4C3:    AND #$03                ; $0D:D4C3: 29 03       ;
CODE_0DD4C5:    BNE CODE_0DD500         ; $0D:D4C5: D0 39       ;
CODE_0DD4C7:    LDA $021A,x             ; $0D:D4C7: BD 1A 02    ;
CODE_0DD4CA:    CMP $0366               ; $0D:D4CA: CD 66 03    ;
CODE_0DD4CD:    BNE CODE_0DD4DB         ; $0D:D4CD: D0 0C       ;
CODE_0DD4CF:    LDA $07B7,x             ; $0D:D4CF: BD B7 07    ;
CODE_0DD4D2:    AND #$03                ; $0D:D4D2: 29 03       ;
CODE_0DD4D4:    TAY                     ; $0D:D4D4: A8          ;
CODE_0DD4D5:    LDA DATA_0DD444,y       ; $0D:D4D5: B9 44 D4    ;
CODE_0DD4D8:    STA $06DC               ; $0D:D4D8: 8D DC 06    ;
CODE_0DD4DB:    LDA $021A,x             ; $0D:D4DB: BD 1A 02    ;
CODE_0DD4DE:    CLC                     ; $0D:D4DE: 18          ;
CODE_0DD4DF:    ADC $0365               ; $0D:D4DF: 6D 65 03    ;
CODE_0DD4E2:    STA $021A,x             ; $0D:D4E2: 9D 1A 02    ;
CODE_0DD4E5:    LDY $47,x               ; $0D:D4E5: B4 47       ;
CODE_0DD4E7:    CPY #$01                ; $0D:D4E7: C0 01       ;
CODE_0DD4E9:    BEQ CODE_0DD500         ; $0D:D4E9: F0 15       ;
CODE_0DD4EB:    LDY #$FF                ; $0D:D4EB: A0 FF       ;
CODE_0DD4ED:    SEC                     ; $0D:D4ED: 38          ;
CODE_0DD4EE:    SBC $0366               ; $0D:D4EE: ED 66 03    ;
CODE_0DD4F1:    BPL CODE_0DD4F8         ; $0D:D4F1: 10 05       ;
CODE_0DD4F3:    EOR #$FF                ; $0D:D4F3: 49 FF       ;
CODE_0DD4F5:    INC A                   ; $0D:D4F5: 1A          ;
CODE_0DD4F6:    LDY #$01                ; $0D:D4F6: A0 01       ;
CODE_0DD4F8:    CMP $06DC               ; $0D:D4F8: CD DC 06    ;
CODE_0DD4FB:    BCC CODE_0DD500         ; $0D:D4FB: 90 03       ;
CODE_0DD4FD:    STY $0365               ; $0D:D4FD: 8C 65 03    ;
CODE_0DD500:    LDA $0792,x             ; $0D:D500: BD 92 07    ;
CODE_0DD503:    BNE CODE_0DD52E         ; $0D:D503: D0 29       ;
CODE_0DD505:    JSR CODE_0DBF2D         ; $0D:D505: 20 2D BF    ;
CODE_0DD508:    LDA $075F               ; $0D:D508: AD 5F 07    ;
CODE_0DD50B:    CMP #$05                ; $0D:D50B: C9 05       ;
CODE_0DD50D:    BCC CODE_0DD518         ; $0D:D50D: 90 09       ;
CODE_0DD50F:    LDA $09                 ; $0D:D50F: A5 09       ;
CODE_0DD511:    AND #$03                ; $0D:D511: 29 03       ;
CODE_0DD513:    BNE CODE_0DD518         ; $0D:D513: D0 03       ;
CODE_0DD515:    JSR CODE_0DB961         ; $0D:D515: 20 61 B9    ;
CODE_0DD518:    LDA $0238,x             ; $0D:D518: BD 38 02    ;
CODE_0DD51B:    CMP #$80                ; $0D:D51B: C9 80       ;
CODE_0DD51D:    BCC CODE_0DD53C         ; $0D:D51D: 90 1D       ;
CODE_0DD51F:    LDA $07B7,x             ; $0D:D51F: BD B7 07    ;
CODE_0DD522:    AND #$03                ; $0D:D522: 29 03       ;
CODE_0DD524:    TAY                     ; $0D:D524: A8          ;
CODE_0DD525:    LDA DATA_0DD444,y       ; $0D:D525: B9 44 D4    ;
CODE_0DD528:    STA $0792,x             ; $0D:D528: 9D 92 07    ;
CODE_0DD52B:    JMP CODE_0DD53C         ; $0D:D52B: 4C 3C D5    ;

CODE_0DD52E:    CMP #$01                ; $0D:D52E: C9 01       ;
CODE_0DD530:    BNE CODE_0DD53C         ; $0D:D530: D0 0A       ;
CODE_0DD532:    DEC $0238,x             ; $0D:D532: DE 38 02    ;
CODE_0DD535:    JSR CODE_0DC5E1         ; $0D:D535: 20 E1 C5    ;
CODE_0DD538:    LDA #$FE                ; $0D:D538: A9 FE       ;
CODE_0DD53A:    STA $A1,x               ; $0D:D53A: 95 A1       ;
CODE_0DD53C:    LDA $075F               ; $0D:D53C: AD 5F 07    ;
CODE_0DD53F:    CMP #$07                ; $0D:D53F: C9 07       ;
CODE_0DD541:    BEQ CODE_0DD547         ; $0D:D541: F0 04       ;
CODE_0DD543:    CMP #$05                ; $0D:D543: C9 05       ;
CODE_0DD545:    BCS CODE_0DD56E         ; $0D:D545: B0 27       ;
CODE_0DD547:    LDA $079C               ; $0D:D547: AD 9C 07    ;
CODE_0DD54A:    BNE CODE_0DD56E         ; $0D:D54A: D0 22       ;
CODE_0DD54C:    LDA #$20                ; $0D:D54C: A9 20       ;
CODE_0DD54E:    STA $079C               ; $0D:D54E: 8D 9C 07    ;
CODE_0DD551:    LDA $0363               ; $0D:D551: AD 63 03    ;
CODE_0DD554:    EOR #$80                ; $0D:D554: 49 80       ;
CODE_0DD556:    STA $0363               ; $0D:D556: 8D 63 03    ;
CODE_0DD559:    BMI CODE_0DD53C         ; $0D:D559: 30 E1       ;
CODE_0DD55B:    JSR CODE_0DD5EA         ; $0D:D55B: 20 EA D5    ;
CODE_0DD55E:    LDY $06CC               ; $0D:D55E: AC CC 06    ;
CODE_0DD561:    BEQ CODE_0DD566         ; $0D:D561: F0 03       ;
CODE_0DD563:    SEC                     ; $0D:D563: 38          ;
CODE_0DD564:    SBC #$10                ; $0D:D564: E9 10       ;
CODE_0DD566:    STA $079C               ; $0D:D566: 8D 9C 07    ;
CODE_0DD569:    LDA #$15                ; $0D:D569: A9 15       ;
CODE_0DD56B:    STA $06CB               ; $0D:D56B: 8D CB 06    ;
CODE_0DD56E:    JSR CODE_0DD5C5         ; $0D:D56E: 20 C5 D5    ;
CODE_0DD571:    LDY #$10                ; $0D:D571: A0 10       ;
CODE_0DD573:    LDA $47,x               ; $0D:D573: B5 47       ;
CODE_0DD575:    LSR A                   ; $0D:D575: 4A          ;
CODE_0DD576:    BCC CODE_0DD57A         ; $0D:D576: 90 02       ;
CODE_0DD578:    LDY #$F0                ; $0D:D578: A0 F0       ;
CODE_0DD57A:    TYA                     ; $0D:D57A: 98          ;
CODE_0DD57B:    CLC                     ; $0D:D57B: 18          ;
CODE_0DD57C:    ADC $021A,x             ; $0D:D57C: 7D 1A 02    ;
CODE_0DD57F:    LDY $06CF               ; $0D:D57F: AC CF 06    ;
CODE_0DD582:    STA $021A,y             ; $0D:D582: 99 1A 02    ;
CODE_0DD585:    LDA $0238,x             ; $0D:D585: BD 38 02    ;
CODE_0DD588:    CLC                     ; $0D:D588: 18          ;
CODE_0DD589:    ADC #$08                ; $0D:D589: 69 08       ;
CODE_0DD58B:    STA $0238,y             ; $0D:D58B: 99 38 02    ;
CODE_0DD58E:    LDA $29,x               ; $0D:D58E: B5 29       ;
CODE_0DD590:    STA $0029,y             ; $0D:D590: 99 29 00    ;
CODE_0DD593:    LDA $47,x               ; $0D:D593: B5 47       ;
CODE_0DD595:    STA $0047,y             ; $0D:D595: 99 47 00    ;
CODE_0DD598:    LDA $9E                 ; $0D:D598: A5 9E       ;
CODE_0DD59A:    PHA                     ; $0D:D59A: 48          ;
CODE_0DD59B:    LDX $06CF               ; $0D:D59B: AE CF 06    ;
CODE_0DD59E:    STX $9E                 ; $0D:D59E: 86 9E       ;
CODE_0DD5A0:    LDA $97                 ; $0D:D5A0: A5 97       ;
CODE_0DD5A2:    BNE CODE_0DD5B4         ; $0D:D5A2: D0 10       ;
CODE_0DD5A4:    LDA $0EC4               ; $0D:D5A4: AD C4 0E    ;
CODE_0DD5A7:    BEQ CODE_0DD5AD         ; $0D:D5A7: F0 04       ;
CODE_0DD5A9:    LDA #$05                ; $0D:D5A9: A9 05       ;
CODE_0DD5AB:    BRA CODE_0DD5AF         ; $0D:D5AB: 80 02       ;

CODE_0DD5AD:    LDA #$04                ; $0D:D5AD: A9 04       ;
CODE_0DD5AF:    STA $1602               ; $0D:D5AF: 8D 02 16    ;
CODE_0DD5B2:    STA $97                 ; $0D:D5B2: 85 97       ;
CODE_0DD5B4:    LDA #$2D                ; $0D:D5B4: A9 2D       ;
CODE_0DD5B6:    STA $1C,x               ; $0D:D5B6: 95 1C       ;
CODE_0DD5B8:    LDA #$20                ; $0D:D5B8: A9 20       ;
CODE_0DD5BA:    STA $0257,x             ; $0D:D5BA: 9D 57 02    ;
CODE_0DD5BD:    PLA                     ; $0D:D5BD: 68          ;
CODE_0DD5BE:    STA $9E                 ; $0D:D5BE: 85 9E       ;
CODE_0DD5C0:    TAX                     ; $0D:D5C0: AA          ;
CODE_0DD5C1:    STZ $036A               ; $0D:D5C1: 9C 6A 03    ;
CODE_0DD5C4:    RTS                     ; $0D:D5C4: 60          ;

CODE_0DD5C5:    INC $036A               ; $0D:D5C5: EE 6A 03    ;
CODE_0DD5C8:    JSR CODE_0DCC11         ; $0D:D5C8: 20 11 CC    ;
CODE_0DD5CB:    LDA $29,x               ; $0D:D5CB: B5 29       ;
CODE_0DD5CD:    BNE CODE_0DD5C4         ; $0D:D5CD: D0 F5       ;
CODE_0DD5CF:    LDA #$0A                ; $0D:D5CF: A9 0A       ;
CODE_0DD5D1:    STA $0490,x             ; $0D:D5D1: 9D 90 04    ;
CODE_0DD5D4:    JSR CODE_0DE948         ; $0D:D5D4: 20 48 E9    ;
CODE_0DD5D7:    LDA $0770               ; $0D:D5D7: AD 70 07    ;
CODE_0DD5DA:    CMP #$02                ; $0D:D5DA: C9 02       ;
CODE_0DD5DC:    BEQ CODE_0DD5E1         ; $0D:D5DC: F0 03       ;
CODE_0DD5DE:    JMP CODE_0DDD7D         ; $0D:D5DE: 4C 7D DD    ;

CODE_0DD5E1:    RTS                     ; $0D:D5E1: 60          ;

DATA_0DD5E2:        db $BF,$40,$BF,$BF,$BF,$40,$40,$BF

CODE_0DD5EA:    LDY $0367               ; $0D:D5EA: AC 67 03    ;
CODE_0DD5ED:    INC $0367               ; $0D:D5ED: EE 67 03    ;
CODE_0DD5F0:    LDA $0367               ; $0D:D5F0: AD 67 03    ;
CODE_0DD5F3:    AND #$07                ; $0D:D5F3: 29 07       ;
CODE_0DD5F5:    STA $0367               ; $0D:D5F5: 8D 67 03    ;
CODE_0DD5F8:    LDA DATA_0DD5E2,y       ; $0D:D5F8: B9 E2 D5    ;
CODE_0DD5FB:    RTS                     ; $0D:D5FB: 60          ;

CODE_0DD5FC:    CPX $0F4D               ; $0D:D5FC: EC 4D 0F    ;
CODE_0DD5FF:    BNE CODE_0DD60D         ; $0D:D5FF: D0 0C       ;
CODE_0DD601:    LDA $0F4C               ; $0D:D601: AD 4C 0F    ;
CODE_0DD604:    BEQ CODE_0DD60D         ; $0D:D604: F0 07       ;
CODE_0DD606:    LDA $014B               ; $0D:D606: AD 4B 01    ;
CODE_0DD609:    CMP #$06                ; $0D:D609: C9 06       ;
CODE_0DD60B:    BEQ CODE_0DD651         ; $0D:D60B: F0 44       ;
CODE_0DD60D:    LDA $0747               ; $0D:D60D: AD 47 07    ;
CODE_0DD610:    BNE CODE_0DD646         ; $0D:D610: D0 34       ;
CODE_0DD612:    LDA #$40                ; $0D:D612: A9 40       ;
CODE_0DD614:    LDY $06CC               ; $0D:D614: AC CC 06    ;
CODE_0DD617:    BEQ CODE_0DD61B         ; $0D:D617: F0 02       ;
CODE_0DD619:    LDA #$60                ; $0D:D619: A9 60       ;
CODE_0DD61B:    STA $00                 ; $0D:D61B: 85 00       ;
CODE_0DD61D:    LDA $0402,x             ; $0D:D61D: BD 02 04    ;
CODE_0DD620:    SEC                     ; $0D:D620: 38          ;
CODE_0DD621:    SBC $00                 ; $0D:D621: E5 00       ;
CODE_0DD623:    STA $0402,x             ; $0D:D623: 9D 02 04    ;
CODE_0DD626:    LDA $021A,x             ; $0D:D626: BD 1A 02    ;
CODE_0DD629:    SBC #$01                ; $0D:D629: E9 01       ;
CODE_0DD62B:    STA $021A,x             ; $0D:D62B: 9D 1A 02    ;
CODE_0DD62E:    LDA $79,x               ; $0D:D62E: B5 79       ;
CODE_0DD630:    SBC #$00                ; $0D:D630: E9 00       ;
CODE_0DD632:    STA $79,x               ; $0D:D632: 95 79       ;
CODE_0DD634:    LDY $041D,x             ; $0D:D634: BC 1D 04    ;
CODE_0DD637:    LDA $0238,x             ; $0D:D637: BD 38 02    ;
CODE_0DD63A:    CMP DATA_0DC851,y       ; $0D:D63A: D9 51 C8    ;
CODE_0DD63D:    BEQ CODE_0DD646         ; $0D:D63D: F0 07       ;
CODE_0DD63F:    CLC                     ; $0D:D63F: 18          ;
CODE_0DD640:    ADC $043D,x             ; $0D:D640: 7D 3D 04    ;
CODE_0DD643:    STA $0238,x             ; $0D:D643: 9D 38 02    ;
CODE_0DD646:    JSR CODE_0DFD4F         ; $0D:D646: 20 4F FD    ;
CODE_0DD649:    LDA $29,x               ; $0D:D649: B5 29       ;
CODE_0DD64B:    BNE CODE_0DD5FB         ; $0D:D64B: D0 AE       ;
CODE_0DD64D:    JSL CODE_0FD3E9         ; $0D:D64D: 22 E9 D3 0F ;
CODE_0DD651:    RTS                     ; $0D:D651: 60          ;

CODE_0DD652:    DEC $A1,x               ; $0D:D652: D6 A1       ;
CODE_0DD654:    BNE CODE_0DD66D         ; $0D:D654: D0 17       ;
CODE_0DD656:    LDA #$08                ; $0D:D656: A9 08       ;
CODE_0DD658:    STA $A1,x               ; $0D:D658: 95 A1       ;
CODE_0DD65A:    INC $5E,x               ; $0D:D65A: F6 5E       ;
CODE_0DD65C:    LDA $5E,x               ; $0D:D65C: B5 5E       ;
CODE_0DD65E:    CMP #$01                ; $0D:D65E: C9 01       ;
CODE_0DD660:    BNE CODE_0DD669         ; $0D:D660: D0 07       ;
CODE_0DD662:    LDA #$29                ; $0D:D662: A9 29       ;
CODE_0DD664:    STA $1600               ; $0D:D664: 8D 00 16    ;
CODE_0DD667:    BRA CODE_0DD66D         ; $0D:D667: 80 04       ;

CODE_0DD669:    CMP #$04                ; $0D:D669: C9 04       ;
CODE_0DD66B:    BCS CODE_0DD685         ; $0D:D66B: B0 18       ;
CODE_0DD66D:    JSR CODE_0DFD4F         ; $0D:D66D: 20 4F FD    ;
CODE_0DD670:    LDA $03B9               ; $0D:D670: AD B9 03    ;
CODE_0DD673:    STA $03BA               ; $0D:D673: 8D BA 03    ;
CODE_0DD676:    LDA $03AE               ; $0D:D676: AD AE 03    ;
CODE_0DD679:    STA $03AF               ; $0D:D679: 8D AF 03    ;
CODE_0DD67C:    LDY $0B46,x             ; $0D:D67C: BC 46 0B    ;
CODE_0DD67F:    LDA $5E,x               ; $0D:D67F: B5 5E       ;
CODE_0DD681:    JSR CODE_0DF538         ; $0D:D681: 20 38 F5    ;
CODE_0DD684:    RTS                     ; $0D:D684: 60          ;

CODE_0DD685:    STZ $10,x               ; $0D:D685: 74 10       ;
CODE_0DD687:    LDY $0B46,x             ; $0D:D687: BC 46 0B    ;
CODE_0DD68A:    LDA #$03                ; $0D:D68A: A9 03       ;
CODE_0DD68C:    STA $0D00,y             ; $0D:D68C: 99 00 0D    ;
CODE_0DD68F:    STA $0D04,y             ; $0D:D68F: 99 04 0D    ;
CODE_0DD692:    STA $0D08,y             ; $0D:D692: 99 08 0D    ;
CODE_0DD695:    STA $0D0C,y             ; $0D:D695: 99 0C 0D    ;
CODE_0DD698:    LDA #$05                ; $0D:D698: A9 05       ;
CODE_0DD69A:    STA $0149               ; $0D:D69A: 8D 49 01    ;
CODE_0DD69D:    JMP CODE_0DD70E         ; $0D:D69D: 4C 0E D7    ;

CODE_0DD6A0:    STZ $06CB               ; $0D:D6A0: 9C CB 06    ;
CODE_0DD6A3:    LDA $0746               ; $0D:D6A3: AD 46 07    ;
CODE_0DD6A6:    CMP #$05                ; $0D:D6A6: C9 05       ;
CODE_0DD6A8:    BCS CODE_0DD6E9         ; $0D:D6A8: B0 3F       ;
CODE_0DD6AA:    JSR CODE_0D9693         ; $0D:D6AA: 20 93 96    ;

PNTR_0DD6AD:        dw CODE_0DD6E9
                    dw CODE_0DD6B7
                    dw CODE_0DD6F4
                    dw CODE_0DD71F
                    dw CODE_0DD772

CODE_0DD6B7:    LDA $07EB               ; $0D:D6B7: AD EB 07    ;
CODE_0DD6BA:    CMP $07DF               ; $0D:D6BA: CD DF 07    ;
CODE_0DD6BD:    BNE CODE_0DD6CF         ; $0D:D6BD: D0 10       ;
CODE_0DD6BF:    AND #$01                ; $0D:D6BF: 29 01       ;
CODE_0DD6C1:    BEQ CODE_0DD6C9         ; $0D:D6C1: F0 06       ;
CODE_0DD6C3:    LDY #$03                ; $0D:D6C3: A0 03       ;
CODE_0DD6C5:    LDA #$03                ; $0D:D6C5: A9 03       ;
CODE_0DD6C7:    BNE CODE_0DD6D3         ; $0D:D6C7: D0 0A       ;
CODE_0DD6C9:    LDY #$00                ; $0D:D6C9: A0 00       ;
CODE_0DD6CB:    LDA #$06                ; $0D:D6CB: A9 06       ;
CODE_0DD6CD:    BNE CODE_0DD6D3         ; $0D:D6CD: D0 04       ;
CODE_0DD6CF:    LDY #$00                ; $0D:D6CF: A0 00       ;
CODE_0DD6D1:    LDA #$FF                ; $0D:D6D1: A9 FF       ;
CODE_0DD6D3:    STA $06D7               ; $0D:D6D3: 8D D7 06    ;
CODE_0DD6D6:    STY $29,x               ; $0D:D6D6: 94 29       ;
CODE_0DD6D8:    LDA $2143               ; $0D:D6D8: AD 43 21    ;
CODE_0DD6DB:    AND #$7F                ; $0D:D6DB: 29 7F       ;
CODE_0DD6DD:    CMP #$4B                ; $0D:D6DD: C9 4B       ;
CODE_0DD6DF:    BEQ CODE_0DD6E6         ; $0D:D6DF: F0 05       ;
CODE_0DD6E1:    LDA #$4B                ; $0D:D6E1: A9 4B       ;
CODE_0DD6E3:    STA $1603               ; $0D:D6E3: 8D 03 16    ;
CODE_0DD6E6:    INC $0746               ; $0D:D6E6: EE 46 07    ;
CODE_0DD6E9:    RTS                     ; $0D:D6E9: 60          ;

CODE_0DD6EA:    LDA #$4C                ; $0D:D6EA: A9 4C       ;
CODE_0DD6EC:    STA $1603               ; $0D:D6EC: 8D 03 16    ;
CODE_0DD6EF:    STA $0E1A               ; $0D:D6EF: 8D 1A 0E    ;
CODE_0DD6F2:    BRA CODE_0DD6E6         ; $0D:D6F2: 80 F2       ;

CODE_0DD6F4:    LDA $07E9               ; $0D:D6F4: AD E9 07    ;
CODE_0DD6F7:    ORA $07EA               ; $0D:D6F7: 0D EA 07    ;
CODE_0DD6FA:    ORA $07EB               ; $0D:D6FA: 0D EB 07    ;
CODE_0DD6FD:    BEQ CODE_0DD6EA         ; $0D:D6FD: F0 EB       ;
CODE_0DD6FF:    LDY #$23                ; $0D:D6FF: A0 23       ;
CODE_0DD701:    LDA #$FF                ; $0D:D701: A9 FF       ;
CODE_0DD703:    STA $014A               ; $0D:D703: 8D 4A 01    ;
CODE_0DD706:    JSR CODE_0D98AA         ; $0D:D706: 20 AA 98    ;
CODE_0DD709:    LDA #$05                ; $0D:D709: A9 05       ;
CODE_0DD70B:    STA $014A               ; $0D:D70B: 8D 4A 01    ;
CODE_0DD70E:    LDY #$0B                ; $0D:D70E: A0 0B       ;
CODE_0DD710:    JSR CODE_0D98AA         ; $0D:D710: 20 AA 98    ;
CODE_0DD713:    LDA $0753               ; $0D:D713: AD 53 07    ;
CODE_0DD716:    ASL A                   ; $0D:D716: 0A          ;
CODE_0DD717:    ASL A                   ; $0D:D717: 0A          ;
CODE_0DD718:    ASL A                   ; $0D:D718: 0A          ;
CODE_0DD719:    ASL A                   ; $0D:D719: 0A          ;
CODE_0DD71A:    ORA #$04                ; $0D:D71A: 09 04       ;
CODE_0DD71C:    JMP CODE_0DBB30         ; $0D:D71C: 4C 30 BB    ;

CODE_0DD71F:    LDA #$01                ; $0D:D71F: A9 01       ;
CODE_0DD721:    STA $1B                 ; $0D:D721: 85 1B       ;
CODE_0DD723:    LDA $0238,x             ; $0D:D723: BD 38 02    ;
CODE_0DD726:    CMP #$72                ; $0D:D726: C9 72       ;
CODE_0DD728:    BCC CODE_0DD72F         ; $0D:D728: 90 05       ;
CODE_0DD72A:    DEC $0238,x             ; $0D:D72A: DE 38 02    ;
CODE_0DD72D:    BRA CODE_0DD73B         ; $0D:D72D: 80 0C       ;

CODE_0DD72F:    LDA $06D7               ; $0D:D72F: AD D7 06    ;
CODE_0DD732:    BEQ CODE_0DD766         ; $0D:D732: F0 32       ;
CODE_0DD734:    BMI CODE_0DD766         ; $0D:D734: 30 30       ;
CODE_0DD736:    LDA #$16                ; $0D:D736: A9 16       ;
CODE_0DD738:    STA $06CB               ; $0D:D738: 8D CB 06    ;
CODE_0DD73B:    JSR CODE_0DFD4F         ; $0D:D73B: 20 4F FD    ;
CODE_0DD73E:    LDY $0B46,x             ; $0D:D73E: BC 46 0B    ;
CODE_0DD741:    LDA $03B9               ; $0D:D741: AD B9 03    ;
CODE_0DD744:    STA $0901,y             ; $0D:D744: 99 01 09    ;
CODE_0DD747:    LDA $09                 ; $0D:D747: A5 09       ;
CODE_0DD749:    AND #$18                ; $0D:D749: 29 18       ;
CODE_0DD74B:    LSR A                   ; $0D:D74B: 4A          ;
CODE_0DD74C:    LSR A                   ; $0D:D74C: 4A          ;
CODE_0DD74D:    CLC                     ; $0D:D74D: 18          ;
CODE_0DD74E:    ADC #$04                ; $0D:D74E: 69 04       ;
CODE_0DD750:    STA $0902,y             ; $0D:D750: 99 02 09    ;
CODE_0DD753:    LDA #$0B                ; $0D:D753: A9 0B       ;
CODE_0DD755:    STA $0903,y             ; $0D:D755: 99 03 09    ;
CODE_0DD758:    LDA $03AE               ; $0D:D758: AD AE 03    ;
CODE_0DD75B:    STA $0900,y             ; $0D:D75B: 99 00 09    ;
CODE_0DD75E:    LDA #$02                ; $0D:D75E: A9 02       ;
CODE_0DD760:    STA $0D00,y             ; $0D:D760: 99 00 0D    ;
CODE_0DD763:    LDX $9E                 ; $0D:D763: A6 9E       ;
CODE_0DD765:    RTS                     ; $0D:D765: 60          ;

CODE_0DD766:    JSR CODE_0DD73B         ; $0D:D766: 20 3B D7    ;
CODE_0DD769:    LDA #$06                ; $0D:D769: A9 06       ;
CODE_0DD76B:    STA $07A2,x             ; $0D:D76B: 9D A2 07    ;
CODE_0DD76E:    INC $0746               ; $0D:D76E: EE 46 07    ;
CODE_0DD771:    RTS                     ; $0D:D771: 60          ;

CODE_0DD772:    JSR CODE_0DD73B         ; $0D:D772: 20 3B D7    ;
CODE_0DD775:    LDA $07A2,x             ; $0D:D775: BD A2 07    ;
CODE_0DD778:    BNE CODE_0DD77F         ; $0D:D778: D0 05       ;
CODE_0DD77A:    LDA $07B1               ; $0D:D77A: AD B1 07    ;
CODE_0DD77D:    BEQ CODE_0DD76E         ; $0D:D77D: F0 EF       ;
CODE_0DD77F:    RTS                     ; $0D:D77F: 60          ;

CODE_0DD780:    LDA $29,x               ; $0D:D780: B5 29       ;
CODE_0DD782:    BNE CODE_0DD7DE         ; $0D:D782: D0 5A       ;
CODE_0DD784:    LDA $0792,x             ; $0D:D784: BD 92 07    ;
CODE_0DD787:    BNE CODE_0DD7DE         ; $0D:D787: D0 55       ;
CODE_0DD789:    LDA $A1,x               ; $0D:D789: B5 A1       ;
CODE_0DD78B:    BNE CODE_0DD7AD         ; $0D:D78B: D0 20       ;
CODE_0DD78D:    LDA $5E,x               ; $0D:D78D: B5 5E       ;
CODE_0DD78F:    BMI CODE_0DD7A4         ; $0D:D78F: 30 13       ;
CODE_0DD791:    JSR CODE_0DE828         ; $0D:D791: 20 28 E8    ;
CODE_0DD794:    BPL CODE_0DD79D         ; $0D:D794: 10 07       ;
CODE_0DD796:    LDA $00                 ; $0D:D796: A5 00       ;
CODE_0DD798:    EOR #$FF                ; $0D:D798: 49 FF       ;
CODE_0DD79A:    INC A                   ; $0D:D79A: 1A          ;
CODE_0DD79B:    STA $00                 ; $0D:D79B: 85 00       ;
CODE_0DD79D:    LDA $00                 ; $0D:D79D: A5 00       ;
CODE_0DD79F:    CMP $0F25               ; $0D:D79F: CD 25 0F    ;
CODE_0DD7A2:    BCC CODE_0DD7DE         ; $0D:D7A2: 90 3A       ;
CODE_0DD7A4:    LDA $5E,x               ; $0D:D7A4: B5 5E       ;
CODE_0DD7A6:    EOR #$FF                ; $0D:D7A6: 49 FF       ;
CODE_0DD7A8:    INC A                   ; $0D:D7A8: 1A          ;
CODE_0DD7A9:    STA $5E,x               ; $0D:D7A9: 95 5E       ;
CODE_0DD7AB:    INC $A1,x               ; $0D:D7AB: F6 A1       ;
CODE_0DD7AD:    LDA $043D,x             ; $0D:D7AD: BD 3D 04    ;
CODE_0DD7B0:    LDY $5E,x               ; $0D:D7B0: B4 5E       ;
CODE_0DD7B2:    BPL CODE_0DD7B7         ; $0D:D7B2: 10 03       ;
CODE_0DD7B4:    LDA $041D,x             ; $0D:D7B4: BD 1D 04    ;
CODE_0DD7B7:    STA $00                 ; $0D:D7B7: 85 00       ;
CODE_0DD7B9:    LDA $0F24               ; $0D:D7B9: AD 24 0F    ;
CODE_0DD7BC:    CMP #$2C                ; $0D:D7BC: C9 2C       ;
CODE_0DD7BE:    BEQ CODE_0DD7C5         ; $0D:D7BE: F0 05       ;
CODE_0DD7C0:    LDA $09                 ; $0D:D7C0: A5 09       ;
CODE_0DD7C2:    LSR A                   ; $0D:D7C2: 4A          ;
CODE_0DD7C3:    BCC CODE_0DD7DE         ; $0D:D7C3: 90 19       ;
CODE_0DD7C5:    LDA $0747               ; $0D:D7C5: AD 47 07    ;
CODE_0DD7C8:    BNE CODE_0DD7DE         ; $0D:D7C8: D0 14       ;
CODE_0DD7CA:    LDA $0238,x             ; $0D:D7CA: BD 38 02    ;
CODE_0DD7CD:    CLC                     ; $0D:D7CD: 18          ;
CODE_0DD7CE:    ADC $5E,x               ; $0D:D7CE: 75 5E       ;
CODE_0DD7D0:    STA $0238,x             ; $0D:D7D0: 9D 38 02    ;
CODE_0DD7D3:    CMP $00                 ; $0D:D7D3: C5 00       ;
CODE_0DD7D5:    BNE CODE_0DD7DE         ; $0D:D7D5: D0 07       ;
CODE_0DD7D7:    STZ $A1,x               ; $0D:D7D7: 74 A1       ;
CODE_0DD7D9:    LDA #$40                ; $0D:D7D9: A9 40       ;
CODE_0DD7DB:    STA $0792,x             ; $0D:D7DB: 9D 92 07    ;
CODE_0DD7DE:    LDA #$00                ; $0D:D7DE: A9 00       ;
CODE_0DD7E0:    STA $0257,x             ; $0D:D7E0: 9D 57 02    ;
CODE_0DD7E3:    RTS                     ; $0D:D7E3: 60          ;

CODE_0DD7E4:    STA $07                 ; $0D:D7E4: 85 07       ;
CODE_0DD7E6:    LDA $0203,x             ; $0D:D7E6: BD 03 02    ;
CODE_0DD7E9:    BNE CODE_0DD7F9         ; $0D:D7E9: D0 0E       ;
CODE_0DD7EB:    LDY #$18                ; $0D:D7EB: A0 18       ;
CODE_0DD7ED:    LDA $5E,x               ; $0D:D7ED: B5 5E       ;
CODE_0DD7EF:    CLC                     ; $0D:D7EF: 18          ;
CODE_0DD7F0:    ADC $07                 ; $0D:D7F0: 65 07       ;
CODE_0DD7F2:    STA $5E,x               ; $0D:D7F2: 95 5E       ;
CODE_0DD7F4:    LDA $A1,x               ; $0D:D7F4: B5 A1       ;
CODE_0DD7F6:    ADC #$00                ; $0D:D7F6: 69 00       ;
CODE_0DD7F8:    RTS                     ; $0D:D7F8: 60          ;

CODE_0DD7F9:    LDY #$08                ; $0D:D7F9: A0 08       ;
CODE_0DD7FB:    LDA $5E,x               ; $0D:D7FB: B5 5E       ;
CODE_0DD7FD:    SEC                     ; $0D:D7FD: 38          ;
CODE_0DD7FE:    SBC $07                 ; $0D:D7FE: E5 07       ;
CODE_0DD800:    STA $5E,x               ; $0D:D800: 95 5E       ;
CODE_0DD802:    LDA $A1,x               ; $0D:D802: B5 A1       ;
CODE_0DD804:    SBC #$00                ; $0D:D804: E9 00       ;
CODE_0DD806:    RTS                     ; $0D:D806: 60          ;

CODE_0DD807:    LDA $BC,x               ; $0D:D807: B5 BC       ;
CODE_0DD809:    CMP #$03                ; $0D:D809: C9 03       ;
CODE_0DD80B:    BNE CODE_0DD810         ; $0D:D80B: D0 03       ;
CODE_0DD80D:    JMP CODE_0DCCEA         ; $0D:D80D: 4C EA CC    ;

CODE_0DD810:    LDA $29,x               ; $0D:D810: B5 29       ;
CODE_0DD812:    BPL CODE_0DD815         ; $0D:D812: 10 01       ;
CODE_0DD814:    RTS                     ; $0D:D814: 60          ;

CODE_0DD815:    TAY                     ; $0D:D815: A8          ;
CODE_0DD816:    LDA $001C,y             ; $0D:D816: B9 1C 00    ;
CODE_0DD819:    CMP #$24                ; $0D:D819: C9 24       ;
CODE_0DD81B:    BNE CODE_0DD814         ; $0D:D81B: D0 F7       ;
CODE_0DD81D:    LDA $03A2,x             ; $0D:D81D: BD A2 03    ;
CODE_0DD820:    STA $00                 ; $0D:D820: 85 00       ;
CODE_0DD822:    LDA $47,x               ; $0D:D822: B5 47       ;
CODE_0DD824:    BEQ CODE_0DD829         ; $0D:D824: F0 03       ;
CODE_0DD826:    JMP CODE_0DDA34         ; $0D:D826: 4C 34 DA    ;

CODE_0DD829:    LDA #$2D                ; $0D:D829: A9 2D       ;
CODE_0DD82B:    CMP $0238,x             ; $0D:D82B: DD 38 02    ;
CODE_0DD82E:    BCC CODE_0DD840         ; $0D:D82E: 90 10       ;
CODE_0DD830:    CPY $00                 ; $0D:D830: C4 00       ;
CODE_0DD832:    BEQ CODE_0DD83D         ; $0D:D832: F0 09       ;
CODE_0DD834:    CLC                     ; $0D:D834: 18          ;
CODE_0DD835:    ADC #$02                ; $0D:D835: 69 02       ;
CODE_0DD837:    STA $0238,x             ; $0D:D837: 9D 38 02    ;
CODE_0DD83A:    JMP CODE_0DDA2A         ; $0D:D83A: 4C 2A DA    ;

CODE_0DD83D:    JMP CODE_0DDA11         ; $0D:D83D: 4C 11 DA    ;

CODE_0DD840:    CMP $0238,y             ; $0D:D840: D9 38 02    ;
CODE_0DD843:    BCC CODE_0DD852         ; $0D:D843: 90 0D       ;
CODE_0DD845:    CPX $00                 ; $0D:D845: E4 00       ;
CODE_0DD847:    BEQ CODE_0DD83D         ; $0D:D847: F0 F4       ;
CODE_0DD849:    CLC                     ; $0D:D849: 18          ;
CODE_0DD84A:    ADC #$02                ; $0D:D84A: 69 02       ;
CODE_0DD84C:    STA $0238,y             ; $0D:D84C: 99 38 02    ;
CODE_0DD84F:    JMP CODE_0DDA2A         ; $0D:D84F: 4C 2A DA    ;

CODE_0DD852:    LDA $0238,x             ; $0D:D852: BD 38 02    ;
CODE_0DD855:    PHA                     ; $0D:D855: 48          ;
CODE_0DD856:    LDA $03A2,x             ; $0D:D856: BD A2 03    ;
CODE_0DD859:    BPL CODE_0DD873         ; $0D:D859: 10 18       ;
CODE_0DD85B:    LDA $043D,x             ; $0D:D85B: BD 3D 04    ;
CODE_0DD85E:    CLC                     ; $0D:D85E: 18          ;
CODE_0DD85F:    ADC #$05                ; $0D:D85F: 69 05       ;
CODE_0DD861:    STA $00                 ; $0D:D861: 85 00       ;
CODE_0DD863:    LDA $A1,x               ; $0D:D863: B5 A1       ;
CODE_0DD865:    ADC #$00                ; $0D:D865: 69 00       ;
CODE_0DD867:    BMI CODE_0DD883         ; $0D:D867: 30 1A       ;
CODE_0DD869:    BNE CODE_0DD877         ; $0D:D869: D0 0C       ;
CODE_0DD86B:    LDA $00                 ; $0D:D86B: A5 00       ;
CODE_0DD86D:    CMP #$0B                ; $0D:D86D: C9 0B       ;
CODE_0DD86F:    BCC CODE_0DD87D         ; $0D:D86F: 90 0C       ;
CODE_0DD871:    BCS CODE_0DD877         ; $0D:D871: B0 04       ;
CODE_0DD873:    CMP $9E                 ; $0D:D873: C5 9E       ;
CODE_0DD875:    BEQ CODE_0DD883         ; $0D:D875: F0 0C       ;
CODE_0DD877:    JSR CODE_0DBF5A         ; $0D:D877: 20 5A BF    ;
CODE_0DD87A:    JMP CODE_0DD886         ; $0D:D87A: 4C 86 D8    ;

CODE_0DD87D:    JSR CODE_0DDA2A         ; $0D:D87D: 20 2A DA    ;
CODE_0DD880:    JMP CODE_0DD886         ; $0D:D880: 4C 86 D8    ;

CODE_0DD883:    JSR CODE_0DBF56         ; $0D:D883: 20 56 BF    ;
CODE_0DD886:    LDY $29,x               ; $0D:D886: B4 29       ;
CODE_0DD888:    PLA                     ; $0D:D888: 68          ;
CODE_0DD889:    SEC                     ; $0D:D889: 38          ;
CODE_0DD88A:    SBC $0238,x             ; $0D:D88A: FD 38 02    ;
CODE_0DD88D:    CLC                     ; $0D:D88D: 18          ;
CODE_0DD88E:    ADC $0238,y             ; $0D:D88E: 79 38 02    ;
CODE_0DD891:    STA $0238,y             ; $0D:D891: 99 38 02    ;
CODE_0DD894:    LDA $03A2,x             ; $0D:D894: BD A2 03    ;
CODE_0DD897:    BMI CODE_0DD89D         ; $0D:D897: 30 04       ;
CODE_0DD899:    TAX                     ; $0D:D899: AA          ;
CODE_0DD89A:    JSR CODE_0DE21B         ; $0D:D89A: 20 1B E2    ;
CODE_0DD89D:    LDY $9E                 ; $0D:D89D: A4 9E       ;
CODE_0DD89F:    LDA $00A1,y             ; $0D:D89F: B9 A1 00    ;
CODE_0DD8A2:    ORA $043D,y             ; $0D:D8A2: 19 3D 04    ;
CODE_0DD8A5:    BNE CODE_0DD8AA         ; $0D:D8A5: D0 03       ;
CODE_0DD8A7:    JMP CODE_0DD9B9         ; $0D:D8A7: 4C B9 D9    ;

CODE_0DD8AA:    LDA $00A1,y             ; $0D:D8AA: B9 A1 00    ;
CODE_0DD8AD:    PHA                     ; $0D:D8AD: 48          ;
CODE_0DD8AE:    PHA                     ; $0D:D8AE: 48          ;
CODE_0DD8AF:    PHA                     ; $0D:D8AF: 48          ;
CODE_0DD8B0:    JSR CODE_0DD9BC         ; $0D:D8B0: 20 BC D9    ;
CODE_0DD8B3:    LDA $42                 ; $0D:D8B3: A5 42       ;
CODE_0DD8B5:    LSR A                   ; $0D:D8B5: 4A          ;
CODE_0DD8B6:    LSR A                   ; $0D:D8B6: 4A          ;
CODE_0DD8B7:    LSR A                   ; $0D:D8B7: 4A          ;
CODE_0DD8B8:    STA $F3                 ; $0D:D8B8: 85 F3       ;
CODE_0DD8BA:    LDA $43                 ; $0D:D8BA: A5 43       ;
CODE_0DD8BC:    AND #$01                ; $0D:D8BC: 29 01       ;
CODE_0DD8BE:    ASL A                   ; $0D:D8BE: 0A          ;
CODE_0DD8BF:    ASL A                   ; $0D:D8BF: 0A          ;
CODE_0DD8C0:    ORA #$20                ; $0D:D8C0: 09 20       ;
CODE_0DD8C2:    STA $F4                 ; $0D:D8C2: 85 F4       ;
CODE_0DD8C4:    LDA $F3                 ; $0D:D8C4: A5 F3       ;
CODE_0DD8C6:    CLC                     ; $0D:D8C6: 18          ;
CODE_0DD8C7:    ADC #$1F                ; $0D:D8C7: 69 1F       ;
CODE_0DD8C9:    TAX                     ; $0D:D8C9: AA          ;
CODE_0DD8CA:    AND #$1F                ; $0D:D8CA: 29 1F       ;
CODE_0DD8CC:    STA $F5                 ; $0D:D8CC: 85 F5       ;
CODE_0DD8CE:    TXA                     ; $0D:D8CE: 8A          ;
CODE_0DD8CF:    AND #$20                ; $0D:D8CF: 29 20       ;
CODE_0DD8D1:    BEQ CODE_0DD8D9         ; $0D:D8D1: F0 06       ;
CODE_0DD8D3:    LDA $F4                 ; $0D:D8D3: A5 F4       ;
CODE_0DD8D5:    EOR #$04                ; $0D:D8D5: 49 04       ;
CODE_0DD8D7:    STA $F6                 ; $0D:D8D7: 85 F6       ;
CODE_0DD8D9:    REP #$30                ; $0D:D8D9: C2 30       ;
CODE_0DD8DB:    LDA $00                 ; $0D:D8DB: A5 00       ;
CODE_0DD8DD:    AND #$241F              ; $0D:D8DD: 29 1F 24    ;
CODE_0DD8E0:    CMP $F3                 ; $0D:D8E0: C5 F3       ;
CODE_0DD8E2:    BCS CODE_0DD8EB         ; $0D:D8E2: B0 07       ;
CODE_0DD8E4:    CMP $F5                 ; $0D:D8E4: C5 F5       ;
CODE_0DD8E6:    BCC CODE_0DD8EB         ; $0D:D8E6: 90 03       ;
CODE_0DD8E8:    JMP CODE_0DD944         ; $0D:D8E8: 4C 44 D9    ;

CODE_0DD8EB:    TYA                     ; $0D:D8EB: 98          ;
CODE_0DD8EC:    AND #$00FF              ; $0D:D8EC: 29 FF 00    ;
CODE_0DD8EF:    TAY                     ; $0D:D8EF: A8          ;
CODE_0DD8F0:    LDX $1700               ; $0D:D8F0: AE 00 17    ;
CODE_0DD8F3:    LDA $00                 ; $0D:D8F3: A5 00       ;
CODE_0DD8F5:    AND #$1FFF              ; $0D:D8F5: 29 FF 1F    ;
CODE_0DD8F8:    XBA                     ; $0D:D8F8: EB          ;
CODE_0DD8F9:    STA $1702,x             ; $0D:D8F9: 9D 02 17    ;
CODE_0DD8FC:    LDA #$0300              ; $0D:D8FC: A9 00 03    ;
CODE_0DD8FF:    STA $1704,x             ; $0D:D8FF: 9D 04 17    ;
CODE_0DD902:    LDA $00A1,y             ; $0D:D902: B9 A1 00    ;
CODE_0DD905:    AND #$0080              ; $0D:D905: 29 80 00    ;
CODE_0DD908:    BNE CODE_0DD92D         ; $0D:D908: D0 23       ;
CODE_0DD90A:    LDA $1702,x             ; $0D:D90A: BD 02 17    ;
CODE_0DD90D:    AND #$F003              ; $0D:D90D: 29 03 F0    ;
CODE_0DD910:    CMP #$A000              ; $0D:D910: C9 00 A0    ;
CODE_0DD913:    BEQ CODE_0DD91A         ; $0D:D913: F0 05       ;
CODE_0DD915:    CMP #$B000              ; $0D:D915: C9 00 B0    ;
CODE_0DD918:    BNE CODE_0DD91F         ; $0D:D918: D0 05       ;
CODE_0DD91A:    LDA #$185C              ; $0D:D91A: A9 5C 18    ;
CODE_0DD91D:    BRA CODE_0DD922         ; $0D:D91D: 80 03       ;

CODE_0DD91F:    LDA #$10A2              ; $0D:D91F: A9 A2 10    ;
CODE_0DD922:    STA $1706,x             ; $0D:D922: 9D 06 17    ;
CODE_0DD925:    LDA #$18A3              ; $0D:D925: A9 A3 18    ;
CODE_0DD928:    STA $1708,x             ; $0D:D928: 9D 08 17    ;
CODE_0DD92B:    BRA CODE_0DD936         ; $0D:D92B: 80 09       ;

CODE_0DD92D:    LDA #$0024              ; $0D:D92D: A9 24 00    ;
CODE_0DD930:    STA $1706,x             ; $0D:D930: 9D 06 17    ;
CODE_0DD933:    STA $1708,x             ; $0D:D933: 9D 08 17    ;
CODE_0DD936:    LDA #$FFFF              ; $0D:D936: A9 FF FF    ;
CODE_0DD939:    STA $170A,x             ; $0D:D939: 9D 0A 17    ;
CODE_0DD93C:    TXA                     ; $0D:D93C: 8A          ;
CODE_0DD93D:    CLC                     ; $0D:D93D: 18          ;
CODE_0DD93E:    ADC #$0008              ; $0D:D93E: 69 08 00    ;
CODE_0DD941:    STA $1700               ; $0D:D941: 8D 00 17    ;
CODE_0DD944:    SEP #$30                ; $0D:D944: E2 30       ;
CODE_0DD946:    LDA $0029,y             ; $0D:D946: B9 29 00    ;
CODE_0DD949:    TAY                     ; $0D:D949: A8          ;
CODE_0DD94A:    PLA                     ; $0D:D94A: 68          ;
CODE_0DD94B:    EOR #$FF                ; $0D:D94B: 49 FF       ;
CODE_0DD94D:    JSR CODE_0DD9BC         ; $0D:D94D: 20 BC D9    ;
CODE_0DD950:    REP #$30                ; $0D:D950: C2 30       ;
CODE_0DD952:    LDA $00                 ; $0D:D952: A5 00       ;
CODE_0DD954:    AND #$241F              ; $0D:D954: 29 1F 24    ;
CODE_0DD957:    CMP $F3                 ; $0D:D957: C5 F3       ;
CODE_0DD959:    BCS CODE_0DD962         ; $0D:D959: B0 07       ;
CODE_0DD95B:    CMP $F5                 ; $0D:D95B: C5 F5       ;
CODE_0DD95D:    BCC CODE_0DD962         ; $0D:D95D: 90 03       ;
CODE_0DD95F:    JMP CODE_0DD9B6         ; $0D:D95F: 4C B6 D9    ;

CODE_0DD962:    LDX $1700               ; $0D:D962: AE 00 17    ;
CODE_0DD965:    LDA $00                 ; $0D:D965: A5 00       ;
CODE_0DD967:    AND #$1FFF              ; $0D:D967: 29 FF 1F    ;
CODE_0DD96A:    XBA                     ; $0D:D96A: EB          ;
CODE_0DD96B:    STA $1702,x             ; $0D:D96B: 9D 02 17    ;
CODE_0DD96E:    LDA #$0300              ; $0D:D96E: A9 00 03    ;
CODE_0DD971:    STA $1704,x             ; $0D:D971: 9D 04 17    ;
CODE_0DD974:    PLA                     ; $0D:D974: 68          ;
CODE_0DD975:    AND #$0080              ; $0D:D975: 29 80 00    ;
CODE_0DD978:    BEQ CODE_0DD99D         ; $0D:D978: F0 23       ;
CODE_0DD97A:    LDA #$10A2              ; $0D:D97A: A9 A2 10    ;
CODE_0DD97D:    STA $1706,x             ; $0D:D97D: 9D 06 17    ;
CODE_0DD980:    LDA $1702,x             ; $0D:D980: BD 02 17    ;
CODE_0DD983:    AND #$F003              ; $0D:D983: 29 03 F0    ;
CODE_0DD986:    CMP #$A000              ; $0D:D986: C9 00 A0    ;
CODE_0DD989:    BEQ CODE_0DD990         ; $0D:D989: F0 05       ;
CODE_0DD98B:    CMP #$B000              ; $0D:D98B: C9 00 B0    ;
CODE_0DD98E:    BNE CODE_0DD995         ; $0D:D98E: D0 05       ;
CODE_0DD990:    LDA #$183F              ; $0D:D990: A9 3F 18    ;
CODE_0DD993:    BRA CODE_0DD998         ; $0D:D993: 80 03       ;

CODE_0DD995:    LDA #$18A3              ; $0D:D995: A9 A3 18    ;
CODE_0DD998:    STA $1708,x             ; $0D:D998: 9D 08 17    ;
CODE_0DD99B:    BRA CODE_0DD9A6         ; $0D:D99B: 80 09       ;

CODE_0DD99D:    LDA #$0024              ; $0D:D99D: A9 24 00    ;
CODE_0DD9A0:    STA $1706,x             ; $0D:D9A0: 9D 06 17    ;
CODE_0DD9A3:    STA $1708,x             ; $0D:D9A3: 9D 08 17    ;
CODE_0DD9A6:    LDA #$FFFF              ; $0D:D9A6: A9 FF FF    ;
CODE_0DD9A9:    STA $170A,x             ; $0D:D9A9: 9D 0A 17    ;
CODE_0DD9AC:    TXA                     ; $0D:D9AC: 8A          ;
CODE_0DD9AD:    CLC                     ; $0D:D9AD: 18          ;
CODE_0DD9AE:    ADC #$0008              ; $0D:D9AE: 69 08 00    ;
CODE_0DD9B1:    STA $1700               ; $0D:D9B1: 8D 00 17    ;
CODE_0DD9B4:    BRA CODE_0DD9B7         ; $0D:D9B4: 80 01       ;

CODE_0DD9B6:    PLA                     ; $0D:D9B6: 68          ;
CODE_0DD9B7:    SEP #$30                ; $0D:D9B7: E2 30       ;
CODE_0DD9B9:    LDX $9E                 ; $0D:D9B9: A6 9E       ;
CODE_0DD9BB:    RTS                     ; $0D:D9BB: 60          ;

CODE_0DD9BC:    PHA                     ; $0D:D9BC: 48          ;
CODE_0DD9BD:    LDA $021A,y             ; $0D:D9BD: B9 1A 02    ;
CODE_0DD9C0:    CLC                     ; $0D:D9C0: 18          ;
CODE_0DD9C1:    ADC #$08                ; $0D:D9C1: 69 08       ;
CODE_0DD9C3:    LDX $06CC               ; $0D:D9C3: AE CC 06    ;
CODE_0DD9C6:    BNE CODE_0DD9CB         ; $0D:D9C6: D0 03       ;
CODE_0DD9C8:    CLC                     ; $0D:D9C8: 18          ;
CODE_0DD9C9:    ADC #$10                ; $0D:D9C9: 69 10       ;
CODE_0DD9CB:    PHA                     ; $0D:D9CB: 48          ;
CODE_0DD9CC:    LDA $0079,y             ; $0D:D9CC: B9 79 00    ;
CODE_0DD9CF:    ADC #$00                ; $0D:D9CF: 69 00       ;
CODE_0DD9D1:    STA $02                 ; $0D:D9D1: 85 02       ;
CODE_0DD9D3:    PLA                     ; $0D:D9D3: 68          ;
CODE_0DD9D4:    AND #$F0                ; $0D:D9D4: 29 F0       ;
CODE_0DD9D6:    LSR A                   ; $0D:D9D6: 4A          ;
CODE_0DD9D7:    LSR A                   ; $0D:D9D7: 4A          ;
CODE_0DD9D8:    LSR A                   ; $0D:D9D8: 4A          ;
CODE_0DD9D9:    STA $00                 ; $0D:D9D9: 85 00       ;
CODE_0DD9DB:    LDX $0238,y             ; $0D:D9DB: BE 38 02    ;
CODE_0DD9DE:    PLA                     ; $0D:D9DE: 68          ;
CODE_0DD9DF:    BPL CODE_0DD9E6         ; $0D:D9DF: 10 05       ;
CODE_0DD9E1:    TXA                     ; $0D:D9E1: 8A          ;
CODE_0DD9E2:    CLC                     ; $0D:D9E2: 18          ;
CODE_0DD9E3:    ADC #$08                ; $0D:D9E3: 69 08       ;
CODE_0DD9E5:    TAX                     ; $0D:D9E5: AA          ;
CODE_0DD9E6:    TXA                     ; $0D:D9E6: 8A          ;
CODE_0DD9E7:    ASL A                   ; $0D:D9E7: 0A          ;
CODE_0DD9E8:    ROL A                   ; $0D:D9E8: 2A          ;
CODE_0DD9E9:    PHA                     ; $0D:D9E9: 48          ;
CODE_0DD9EA:    ROL A                   ; $0D:D9EA: 2A          ;
CODE_0DD9EB:    AND #$03                ; $0D:D9EB: 29 03       ;
CODE_0DD9ED:    ORA #$20                ; $0D:D9ED: 09 20       ;
CODE_0DD9EF:    STA $01                 ; $0D:D9EF: 85 01       ;
CODE_0DD9F1:    LDA $02                 ; $0D:D9F1: A5 02       ;
CODE_0DD9F3:    AND #$01                ; $0D:D9F3: 29 01       ;
CODE_0DD9F5:    ASL A                   ; $0D:D9F5: 0A          ;
CODE_0DD9F6:    ASL A                   ; $0D:D9F6: 0A          ;
CODE_0DD9F7:    ORA $01                 ; $0D:D9F7: 05 01       ;
CODE_0DD9F9:    STA $01                 ; $0D:D9F9: 85 01       ;
CODE_0DD9FB:    PLA                     ; $0D:D9FB: 68          ;
CODE_0DD9FC:    AND #$E0                ; $0D:D9FC: 29 E0       ;
CODE_0DD9FE:    CLC                     ; $0D:D9FE: 18          ;
CODE_0DD9FF:    ADC $00                 ; $0D:D9FF: 65 00       ;
CODE_0DDA01:    STA $00                 ; $0D:DA01: 85 00       ;
CODE_0DDA03:    LDA $0238,y             ; $0D:DA03: B9 38 02    ;
CODE_0DDA06:    CMP #$E8                ; $0D:DA06: C9 E8       ;
CODE_0DDA08:    BCC CODE_0DDA10         ; $0D:DA08: 90 06       ;
CODE_0DDA0A:    LDA $00                 ; $0D:DA0A: A5 00       ;
CODE_0DDA0C:    AND #$BF                ; $0D:DA0C: 29 BF       ;
CODE_0DDA0E:    STA $00                 ; $0D:DA0E: 85 00       ;
CODE_0DDA10:    RTS                     ; $0D:DA10: 60          ;

CODE_0DDA11:    TYX                     ; $0D:DA11: BB          ;
CODE_0DDA12:    JSR CODE_0DFDE1         ; $0D:DA12: 20 E1 FD    ;
CODE_0DDA15:    LDA #$06                ; $0D:DA15: A9 06       ;
CODE_0DDA17:    JSR CODE_0DDFC3         ; $0D:DA17: 20 C3 DF    ;
CODE_0DDA1A:    LDA $03AD               ; $0D:DA1A: AD AD 03    ;
CODE_0DDA1D:    STA $011A,x             ; $0D:DA1D: 9D 1A 01    ;
CODE_0DDA20:    LDA $0237               ; $0D:DA20: AD 37 02    ;
CODE_0DDA23:    STA $0124,x             ; $0D:DA23: 9D 24 01    ;
CODE_0DDA26:    LDA #$01                ; $0D:DA26: A9 01       ;
CODE_0DDA28:    STA $47,x               ; $0D:DA28: 95 47       ;
CODE_0DDA2A:    JSR CODE_0DC5E1         ; $0D:DA2A: 20 E1 C5    ;
CODE_0DDA2D:    STA $00A1,y             ; $0D:DA2D: 99 A1 00    ;
CODE_0DDA30:    STA $043D,y             ; $0D:DA30: 99 3D 04    ;
CODE_0DDA33:    RTS                     ; $0D:DA33: 60          ;

CODE_0DDA34:    TYA                     ; $0D:DA34: 98          ;
CODE_0DDA35:    PHA                     ; $0D:DA35: 48          ;
CODE_0DDA36:    JSR CODE_0DBF0E         ; $0D:DA36: 20 0E BF    ;
CODE_0DDA39:    PLA                     ; $0D:DA39: 68          ;
CODE_0DDA3A:    TAX                     ; $0D:DA3A: AA          ;
CODE_0DDA3B:    JSR CODE_0DBF0E         ; $0D:DA3B: 20 0E BF    ;
CODE_0DDA3E:    LDX $9E                 ; $0D:DA3E: A6 9E       ;
CODE_0DDA40:    LDA $03A2,x             ; $0D:DA40: BD A2 03    ;
CODE_0DDA43:    BMI CODE_0DDA49         ; $0D:DA43: 30 04       ;
CODE_0DDA45:    TAX                     ; $0D:DA45: AA          ;
CODE_0DDA46:    JSR CODE_0DE21B         ; $0D:DA46: 20 1B E2    ;
CODE_0DDA49:    LDX $9E                 ; $0D:DA49: A6 9E       ;
CODE_0DDA4B:    RTS                     ; $0D:DA4B: 60          ;

CODE_0DDA4C:    LDA $A1,x               ; $0D:DA4C: B5 A1       ;
CODE_0DDA4E:    ORA $043D,x             ; $0D:DA4E: 1D 3D 04    ;
CODE_0DDA51:    BNE CODE_0DDA69         ; $0D:DA51: D0 16       ;
CODE_0DDA53:    STA $041D,x             ; $0D:DA53: 9D 1D 04    ;
CODE_0DDA56:    LDA $0238,x             ; $0D:DA56: BD 38 02    ;
CODE_0DDA59:    CMP $0402,x             ; $0D:DA59: DD 02 04    ;
CODE_0DDA5C:    BCS CODE_0DDA69         ; $0D:DA5C: B0 0B       ;
CODE_0DDA5E:    LDA $09                 ; $0D:DA5E: A5 09       ;
CODE_0DDA60:    AND #$07                ; $0D:DA60: 29 07       ;
CODE_0DDA62:    BNE CODE_0DDA67         ; $0D:DA62: D0 03       ;
CODE_0DDA64:    INC $0238,x             ; $0D:DA64: FE 38 02    ;
CODE_0DDA67:    BRA CODE_0DDA79         ; $0D:DA67: 80 10       ;

CODE_0DDA69:    LDA $0238,x             ; $0D:DA69: BD 38 02    ;
CODE_0DDA6C:    CMP $5E,x               ; $0D:DA6C: D5 5E       ;
CODE_0DDA6E:    BCC CODE_0DDA76         ; $0D:DA6E: 90 06       ;
CODE_0DDA70:    JSR CODE_0DBF5A         ; $0D:DA70: 20 5A BF    ;
CODE_0DDA73:    JMP CODE_0DDA79         ; $0D:DA73: 4C 79 DA    ;

CODE_0DDA76:    JSR CODE_0DBF56         ; $0D:DA76: 20 56 BF    ;
CODE_0DDA79:    LDA $03A2,x             ; $0D:DA79: BD A2 03    ;
CODE_0DDA7C:    BMI CODE_0DDA81         ; $0D:DA7C: 30 03       ;
CODE_0DDA7E:    JSR CODE_0DE21B         ; $0D:DA7E: 20 1B E2    ;
CODE_0DDA81:    RTS                     ; $0D:DA81: 60          ;

CODE_0DDA82:    LDA #$0E                ; $0D:DA82: A9 0E       ;
CODE_0DDA84:    JSR CODE_0DCEE5         ; $0D:DA84: 20 E5 CE    ;
CODE_0DDA87:    JSR CODE_0DCF04         ; $0D:DA87: 20 04 CF    ;
CODE_0DDA8A:    LDA $03A2,x             ; $0D:DA8A: BD A2 03    ;
CODE_0DDA8D:    BMI CODE_0DDAAC         ; $0D:DA8D: 30 1D       ;
CODE_0DDA8F:    LDA $0219               ; $0D:DA8F: AD 19 02    ;
CODE_0DDA92:    CLC                     ; $0D:DA92: 18          ;
CODE_0DDA93:    ADC $00                 ; $0D:DA93: 65 00       ;
CODE_0DDA95:    STA $0219               ; $0D:DA95: 8D 19 02    ;
CODE_0DDA98:    LDA $78                 ; $0D:DA98: A5 78       ;
CODE_0DDA9A:    LDY $00                 ; $0D:DA9A: A4 00       ;
CODE_0DDA9C:    BMI CODE_0DDAA2         ; $0D:DA9C: 30 04       ;
CODE_0DDA9E:    ADC #$00                ; $0D:DA9E: 69 00       ;
CODE_0DDAA0:    BRA CODE_0DDAA4         ; $0D:DAA0: 80 02       ;

CODE_0DDAA2:    SBC #$00                ; $0D:DAA2: E9 00       ;
CODE_0DDAA4:    STA $78                 ; $0D:DAA4: 85 78       ;
CODE_0DDAA6:    STY $03A1               ; $0D:DAA6: 8C A1 03    ;
CODE_0DDAA9:    JSR CODE_0DE21B         ; $0D:DAA9: 20 1B E2    ;
CODE_0DDAAC:    RTS                     ; $0D:DAAC: 60          ;

CODE_0DDAAD:    LDA $03A2,x             ; $0D:DAAD: BD A2 03    ;
CODE_0DDAB0:    BMI CODE_0DDAB8         ; $0D:DAB0: 30 06       ;
CODE_0DDAB2:    JSR CODE_0DBF29         ; $0D:DAB2: 20 29 BF    ;
CODE_0DDAB5:    JSR CODE_0DE21B         ; $0D:DAB5: 20 1B E2    ;
CODE_0DDAB8:    RTS                     ; $0D:DAB8: 60          ;

CODE_0DDAB9:    JSR CODE_0DBEA0         ; $0D:DAB9: 20 A0 BE    ;
CODE_0DDABC:    STA $00                 ; $0D:DABC: 85 00       ;
CODE_0DDABE:    LDA $03A2,x             ; $0D:DABE: BD A2 03    ;
CODE_0DDAC1:    BMI CODE_0DDACA         ; $0D:DAC1: 30 07       ;
CODE_0DDAC3:    LDA #$10                ; $0D:DAC3: A9 10       ;
CODE_0DDAC5:    STA $5E,x               ; $0D:DAC5: 95 5E       ;
CODE_0DDAC7:    JSR CODE_0DDA8F         ; $0D:DAC7: 20 8F DA    ;
CODE_0DDACA:    RTS                     ; $0D:DACA: 60          ;

CODE_0DDACB:    JSR CODE_0DDAD6         ; $0D:DACB: 20 D6 DA    ;
CODE_0DDACE:    JMP CODE_0DDA79         ; $0D:DACE: 4C 79 DA    ;

CODE_0DDAD1:    JSR CODE_0DDAD6         ; $0D:DAD1: 20 D6 DA    ;
CODE_0DDAD4:    BRA CODE_0DDAEE         ; $0D:DAD4: 80 18       ;

CODE_0DDAD6:    LDA $0747               ; $0D:DAD6: AD 47 07    ;
CODE_0DDAD9:    BNE CODE_0DDAFB         ; $0D:DAD9: D0 20       ;
CODE_0DDADB:    LDA $041D,x             ; $0D:DADB: BD 1D 04    ;
CODE_0DDADE:    CLC                     ; $0D:DADE: 18          ;
CODE_0DDADF:    ADC $043D,x             ; $0D:DADF: 7D 3D 04    ;
CODE_0DDAE2:    STA $041D,x             ; $0D:DAE2: 9D 1D 04    ;
CODE_0DDAE5:    LDA $0238,x             ; $0D:DAE5: BD 38 02    ;
CODE_0DDAE8:    ADC $A1,x               ; $0D:DAE8: 75 A1       ;
CODE_0DDAEA:    STA $0238,x             ; $0D:DAEA: 9D 38 02    ;
CODE_0DDAED:    RTS                     ; $0D:DAED: 60          ;

CODE_0DDAEE:    LDA $03A2,x             ; $0D:DAEE: BD A2 03    ;
CODE_0DDAF1:    BEQ CODE_0DDAFB         ; $0D:DAF1: F0 08       ;
CODE_0DDAF3:    CMP #$FF                ; $0D:DAF3: C9 FF       ;
CODE_0DDAF5:    BNE CODE_0DDAF8         ; $0D:DAF5: D0 01       ;
CODE_0DDAF7:    RTS                     ; $0D:DAF7: 60          ;

CODE_0DDAF8:    JSR CODE_0DE20C         ; $0D:DAF8: 20 0C E2    ;
CODE_0DDAFB:    RTS                     ; $0D:DAFB: 60          ;

CODE_0DDAFC:    LDA $1C,x               ; $0D:DAFC: B5 1C       ;
CODE_0DDAFE:    CMP #$14                ; $0D:DAFE: C9 14       ;
CODE_0DDB00:    BEQ CODE_0DDB62         ; $0D:DB00: F0 60       ;
CODE_0DDB02:    LDA $071C               ; $0D:DB02: AD 1C 07    ;
CODE_0DDB05:    LDY $1C,x               ; $0D:DB05: B4 1C       ;
CODE_0DDB07:    CPY #$05                ; $0D:DB07: C0 05       ;
CODE_0DDB09:    BEQ CODE_0DDB13         ; $0D:DB09: F0 08       ;
CODE_0DDB0B:    CPY #$04                ; $0D:DB0B: C0 04       ;
CODE_0DDB0D:    BEQ CODE_0DDB13         ; $0D:DB0D: F0 04       ;
CODE_0DDB0F:    CPY #$0D                ; $0D:DB0F: C0 0D       ;
CODE_0DDB11:    BNE CODE_0DDB15         ; $0D:DB11: D0 02       ;
CODE_0DDB13:    ADC #$38                ; $0D:DB13: 69 38       ;
CODE_0DDB15:    SBC #$48                ; $0D:DB15: E9 48       ;
CODE_0DDB17:    STA $01                 ; $0D:DB17: 85 01       ;
CODE_0DDB19:    LDA $071A               ; $0D:DB19: AD 1A 07    ;
CODE_0DDB1C:    SBC #$00                ; $0D:DB1C: E9 00       ;
CODE_0DDB1E:    STA $00                 ; $0D:DB1E: 85 00       ;
CODE_0DDB20:    LDA $071D               ; $0D:DB20: AD 1D 07    ;
CODE_0DDB23:    CLC                     ; $0D:DB23: 18          ;
CODE_0DDB24:    ADC #$48                ; $0D:DB24: 69 48       ;
CODE_0DDB26:    STA $03                 ; $0D:DB26: 85 03       ;
CODE_0DDB28:    LDA $071B               ; $0D:DB28: AD 1B 07    ;
CODE_0DDB2B:    ADC #$00                ; $0D:DB2B: 69 00       ;
CODE_0DDB2D:    STA $02                 ; $0D:DB2D: 85 02       ;
CODE_0DDB2F:    LDA $021A,x             ; $0D:DB2F: BD 1A 02    ;
CODE_0DDB32:    CMP $01                 ; $0D:DB32: C5 01       ;
CODE_0DDB34:    LDA $79,x               ; $0D:DB34: B5 79       ;
CODE_0DDB36:    SBC $00                 ; $0D:DB36: E5 00       ;
CODE_0DDB38:    BMI CODE_0DDB5F         ; $0D:DB38: 30 25       ;
CODE_0DDB3A:    LDA $021A,x             ; $0D:DB3A: BD 1A 02    ;
CODE_0DDB3D:    CMP $03                 ; $0D:DB3D: C5 03       ;
CODE_0DDB3F:    LDA $79,x               ; $0D:DB3F: B5 79       ;
CODE_0DDB41:    SBC $02                 ; $0D:DB41: E5 02       ;
CODE_0DDB43:    BMI CODE_0DDB62         ; $0D:DB43: 30 1D       ;
CODE_0DDB45:    LDA $29,x               ; $0D:DB45: B5 29       ;
CODE_0DDB47:    CMP #$05                ; $0D:DB47: C9 05       ;
CODE_0DDB49:    BEQ CODE_0DDB62         ; $0D:DB49: F0 17       ;
CODE_0DDB4B:    CPY #$0D                ; $0D:DB4B: C0 0D       ;
CODE_0DDB4D:    BEQ CODE_0DDB62         ; $0D:DB4D: F0 13       ;
CODE_0DDB4F:    CPY #$04                ; $0D:DB4F: C0 04       ;
CODE_0DDB51:    BEQ CODE_0DDB62         ; $0D:DB51: F0 0F       ;
CODE_0DDB53:    CPY #$30                ; $0D:DB53: C0 30       ;
CODE_0DDB55:    BEQ CODE_0DDB62         ; $0D:DB55: F0 0B       ;
CODE_0DDB57:    CPY #$31                ; $0D:DB57: C0 31       ;
CODE_0DDB59:    BEQ CODE_0DDB62         ; $0D:DB59: F0 07       ;
CODE_0DDB5B:    CPY #$32                ; $0D:DB5B: C0 32       ;
CODE_0DDB5D:    BEQ CODE_0DDB62         ; $0D:DB5D: F0 03       ;
CODE_0DDB5F:    JSR CODE_0DCCEA         ; $0D:DB5F: 20 EA CC    ;
CODE_0DDB62:    RTS                     ; $0D:DB62: 60          ;

CODE_0DDB63:    LDA $0EC4               ; $0D:DB63: AD C4 0E    ;
CODE_0DDB66:    BEQ CODE_0DDB6E         ; $0D:DB66: F0 06       ;
CODE_0DDB68:    INC $0201               ; $0D:DB68: EE 01 02    ;
CODE_0DDB6B:    STZ $0F4C               ; $0D:DB6B: 9C 4C 0F    ;
CODE_0DDB6E:    LDA #$2D                ; $0D:DB6E: A9 2D       ;
CODE_0DDB70:    RTS                     ; $0D:DB70: 60          ;

DATA_0DDB71:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_0DDB80:    LDA $33,x               ; $0D:DB80: B5 33       ;
CODE_0DDB82:    BEQ CODE_0DDBDC         ; $0D:DB82: F0 58       ;
CODE_0DDB84:    ASL A                   ; $0D:DB84: 0A          ;
CODE_0DDB85:    BCS CODE_0DDBDC         ; $0D:DB85: B0 55       ;
CODE_0DDB87:    LDA $09                 ; $0D:DB87: A5 09       ;
CODE_0DDB89:    LSR A                   ; $0D:DB89: 4A          ;
CODE_0DDB8A:    BCS CODE_0DDBDC         ; $0D:DB8A: B0 50       ;
CODE_0DDB8C:    TXA                     ; $0D:DB8C: 8A          ;
CODE_0DDB8D:    ASL A                   ; $0D:DB8D: 0A          ;
CODE_0DDB8E:    ASL A                   ; $0D:DB8E: 0A          ;
CODE_0DDB8F:    CLC                     ; $0D:DB8F: 18          ;
CODE_0DDB90:    ADC #$2C                ; $0D:DB90: 69 2C       ;
CODE_0DDB92:    TAY                     ; $0D:DB92: A8          ;
CODE_0DDB93:    LDX #$08                ; $0D:DB93: A2 08       ;
CODE_0DDB95:    STX $01                 ; $0D:DB95: 86 01       ;
CODE_0DDB97:    TYA                     ; $0D:DB97: 98          ;
CODE_0DDB98:    PHA                     ; $0D:DB98: 48          ;
CODE_0DDB99:    LDA $29,x               ; $0D:DB99: B5 29       ;
CODE_0DDB9B:    AND #$20                ; $0D:DB9B: 29 20       ;
CODE_0DDB9D:    BNE CODE_0DDBD5         ; $0D:DB9D: D0 36       ;
CODE_0DDB9F:    LDA $10,x               ; $0D:DB9F: B5 10       ;
CODE_0DDBA1:    BEQ CODE_0DDBD5         ; $0D:DBA1: F0 32       ;
CODE_0DDBA3:    LDA $1C,x               ; $0D:DBA3: B5 1C       ;
CODE_0DDBA5:    CMP #$24                ; $0D:DBA5: C9 24       ;
CODE_0DDBA7:    BCC CODE_0DDBAD         ; $0D:DBA7: 90 04       ;
CODE_0DDBA9:    CMP #$2B                ; $0D:DBA9: C9 2B       ;
CODE_0DDBAB:    BCC CODE_0DDBD5         ; $0D:DBAB: 90 28       ;
CODE_0DDBAD:    CMP #$06                ; $0D:DBAD: C9 06       ;
CODE_0DDBAF:    BNE CODE_0DDBB7         ; $0D:DBAF: D0 06       ;
CODE_0DDBB1:    LDA $29,x               ; $0D:DBB1: B5 29       ;
CODE_0DDBB3:    CMP #$02                ; $0D:DBB3: C9 02       ;
CODE_0DDBB5:    BCS CODE_0DDBD5         ; $0D:DBB5: B0 1E       ;
CODE_0DDBB7:    LDA $03D9,x             ; $0D:DBB7: BD D9 03    ;
CODE_0DDBBA:    BNE CODE_0DDBD5         ; $0D:DBBA: D0 19       ;
CODE_0DDBBC:    STX $E4                 ; $0D:DBBC: 86 E4       ;
CODE_0DDBBE:    TXA                     ; $0D:DBBE: 8A          ;
CODE_0DDBBF:    ASL A                   ; $0D:DBBF: 0A          ;
CODE_0DDBC0:    ASL A                   ; $0D:DBC0: 0A          ;
CODE_0DDBC1:    CLC                     ; $0D:DBC1: 18          ;
CODE_0DDBC2:    ADC #$04                ; $0D:DBC2: 69 04       ;
CODE_0DDBC4:    TAX                     ; $0D:DBC4: AA          ;
CODE_0DDBC5:    JSR CODE_0DEA35         ; $0D:DBC5: 20 35 EA    ;
CODE_0DDBC8:    LDX $9E                 ; $0D:DBC8: A6 9E       ;
CODE_0DDBCA:    BCC CODE_0DDBD5         ; $0D:DBCA: 90 09       ;
CODE_0DDBCC:    LDA #$80                ; $0D:DBCC: A9 80       ;
CODE_0DDBCE:    STA $33,x               ; $0D:DBCE: 95 33       ;
CODE_0DDBD0:    LDX $01                 ; $0D:DBD0: A6 01       ;
CODE_0DDBD2:    JSR CODE_0DDBEC         ; $0D:DBD2: 20 EC DB    ;
CODE_0DDBD5:    PLA                     ; $0D:DBD5: 68          ;
CODE_0DDBD6:    TAY                     ; $0D:DBD6: A8          ;
CODE_0DDBD7:    LDX $01                 ; $0D:DBD7: A6 01       ;
CODE_0DDBD9:    DEX                     ; $0D:DBD9: CA          ;
CODE_0DDBDA:    BPL CODE_0DDB95         ; $0D:DBDA: 10 B9       ;
CODE_0DDBDC:    LDX $9E                 ; $0D:DBDC: A6 9E       ;
CODE_0DDBDE:    RTS                     ; $0D:DBDE: 60          ;

DATA_0DDBDF:        db $06,$00,$02,$12,$11,$07,$05,$2D
                    db $2D,$01,$0A,$08,$2D

CODE_0DDBEC:    JSR CODE_0DFD4F         ; $0D:DBEC: 20 4F FD    ;
CODE_0DDBEF:    LDA #$03                ; $0D:DBEF: A9 03       ;
CODE_0DDBF1:    STA $1600               ; $0D:DBF1: 8D 00 16    ;
CODE_0DDBF4:    LDX $01                 ; $0D:DBF4: A6 01       ;
CODE_0DDBF6:    LDA $10,x               ; $0D:DBF6: B5 10       ;
CODE_0DDBF8:    BPL CODE_0DDC05         ; $0D:DBF8: 10 0B       ;
CODE_0DDBFA:    AND #$0F                ; $0D:DBFA: 29 0F       ;
CODE_0DDBFC:    TAX                     ; $0D:DBFC: AA          ;
CODE_0DDBFD:    LDA $1C,x               ; $0D:DBFD: B5 1C       ;
CODE_0DDBFF:    CMP #$2D                ; $0D:DBFF: C9 2D       ;
CODE_0DDC01:    BEQ CODE_0DDC12         ; $0D:DC01: F0 0F       ;
CODE_0DDC03:    LDX $01                 ; $0D:DC03: A6 01       ;
CODE_0DDC05:    LDA $1C,x               ; $0D:DC05: B5 1C       ;
CODE_0DDC07:    CMP #$02                ; $0D:DC07: C9 02       ;
CODE_0DDC09:    BNE CODE_0DDC0E         ; $0D:DC09: D0 03       ;
CODE_0DDC0B:    JMP CODE_0DDCD8         ; $0D:DC0B: 4C D8 DC    ;

CODE_0DDC0E:    CMP #$2D                ; $0D:DC0E: C9 2D       ;
CODE_0DDC10:    BNE CODE_0DDC8C         ; $0D:DC10: D0 7A       ;
CODE_0DDC12:    LDA #$08                ; $0D:DC12: A9 08       ;
CODE_0DDC14:    STA $014B               ; $0D:DC14: 8D 4B 01    ;
CODE_0DDC17:    LDA #$18                ; $0D:DC17: A9 18       ;
CODE_0DDC19:    STA $0F4C               ; $0D:DC19: 8D 4C 0F    ;
CODE_0DDC1C:    DEC $0283               ; $0D:DC1C: CE 83 02    ;
CODE_0DDC1F:    BEQ CODE_0DDC36         ; $0D:DC1F: F0 15       ;
CODE_0DDC21:    LDA $0283               ; $0D:DC21: AD 83 02    ;
CODE_0DDC24:    CMP #$01                ; $0D:DC24: C9 01       ;
CODE_0DDC26:    BEQ CODE_0DDC2B         ; $0D:DC26: F0 03       ;
CODE_0DDC28:    JMP CODE_0DDCD8         ; $0D:DC28: 4C D8 DC    ;

CODE_0DDC2B:    STZ $03CA               ; $0D:DC2B: 9C CA 03    ;
CODE_0DDC2E:    LDA #$01                ; $0D:DC2E: A9 01       ;
CODE_0DDC30:    STA $03CB               ; $0D:DC30: 8D CB 03    ;
CODE_0DDC33:    JMP CODE_0DDCD8         ; $0D:DC33: 4C D8 DC    ;

CODE_0DDC36:    LDA #$08                ; $0D:DC36: A9 08       ;
CODE_0DDC38:    STA $014B               ; $0D:DC38: 8D 4B 01    ;
CODE_0DDC3B:    LDA #$FF                ; $0D:DC3B: A9 FF       ;
CODE_0DDC3D:    STA $0F4C               ; $0D:DC3D: 8D 4C 0F    ;
CODE_0DDC40:    JSR CODE_0DC5E1         ; $0D:DC40: 20 E1 C5    ;
CODE_0DDC43:    STA $5E,x               ; $0D:DC43: 95 5E       ;
CODE_0DDC45:    STZ $06CB               ; $0D:DC45: 9C CB 06    ;
CODE_0DDC48:    LDA #$FE                ; $0D:DC48: A9 FE       ;
CODE_0DDC4A:    STA $A1,x               ; $0D:DC4A: 95 A1       ;
CODE_0DDC4C:    LDY $075F               ; $0D:DC4C: AC 5F 07    ;
CODE_0DDC4F:    LDA DATA_0DDBDF,y       ; $0D:DC4F: B9 DF DB    ;
CODE_0DDC52:    STA $1C,x               ; $0D:DC52: 95 1C       ;
CODE_0DDC54:    STX $02FC               ; $0D:DC54: 8E FC 02    ;
CODE_0DDC57:    INC $02FC               ; $0D:DC57: EE FC 02    ;
CODE_0DDC5A:    CMP #$2D                ; $0D:DC5A: C9 2D       ;
CODE_0DDC5C:    BEQ CODE_0DDC7C         ; $0D:DC5C: F0 1E       ;
CODE_0DDC5E:    PHX                     ; $0D:DC5E: DA          ;
CODE_0DDC5F:    LDA $DB                 ; $0D:DC5F: A5 DB       ;
CODE_0DDC61:    CMP #$21                ; $0D:DC61: C9 21       ;
CODE_0DDC63:    BEQ CODE_0DDC7B         ; $0D:DC63: F0 16       ;
CODE_0DDC65:    STX $0077               ; $0D:DC65: 8E 77 00    ;
CODE_0DDC68:    INC $0077               ; $0D:DC68: EE 77 00    ;
CODE_0DDC6B:    LDX #$08                ; $0D:DC6B: A2 08       ;
CODE_0DDC6D:    LDA $1C,x               ; $0D:DC6D: B5 1C       ;
CODE_0DDC6F:    DEX                     ; $0D:DC6F: CA          ;
CODE_0DDC70:    BMI CODE_0DDC7B         ; $0D:DC70: 30 09       ;
CODE_0DDC72:    CMP #$2D                ; $0D:DC72: C9 2D       ;
CODE_0DDC74:    BNE CODE_0DDC6D         ; $0D:DC74: D0 F7       ;
CODE_0DDC76:    INX                     ; $0D:DC76: E8          ;
CODE_0DDC77:    STZ $10,x               ; $0D:DC77: 74 10       ;
CODE_0DDC79:    STZ $1C,x               ; $0D:DC79: 74 1C       ;
CODE_0DDC7B:    PLX                     ; $0D:DC7B: FA          ;
CODE_0DDC7C:    LDA #$20                ; $0D:DC7C: A9 20       ;
CODE_0DDC7E:    CPY #$03                ; $0D:DC7E: C0 03       ;
CODE_0DDC80:    BCS CODE_0DDC84         ; $0D:DC80: B0 02       ;
CODE_0DDC82:    ORA #$03                ; $0D:DC82: 09 03       ;
CODE_0DDC84:    STA $29,x               ; $0D:DC84: 95 29       ;
CODE_0DDC86:    LDX $01                 ; $0D:DC86: A6 01       ;
CODE_0DDC88:    LDA #$09                ; $0D:DC88: A9 09       ;
CODE_0DDC8A:    BNE CODE_0DDCCC         ; $0D:DC8A: D0 40       ;
CODE_0DDC8C:    CMP #$08                ; $0D:DC8C: C9 08       ;
CODE_0DDC8E:    BEQ CODE_0DDCD8         ; $0D:DC8E: F0 48       ;
CODE_0DDC90:    CMP #$0C                ; $0D:DC90: C9 0C       ;
CODE_0DDC92:    BEQ CODE_0DDCD8         ; $0D:DC92: F0 44       ;
CODE_0DDC94:    CMP #$15                ; $0D:DC94: C9 15       ;
CODE_0DDC96:    BCS CODE_0DDCD8         ; $0D:DC96: B0 40       ;
CODE_0DDC98:    LDA $1C,x               ; $0D:DC98: B5 1C       ;
CODE_0DDC9A:    CMP #$04                ; $0D:DC9A: C9 04       ;
CODE_0DDC9C:    BEQ CODE_0DDCA2         ; $0D:DC9C: F0 04       ;
CODE_0DDC9E:    CMP #$0D                ; $0D:DC9E: C9 0D       ;
CODE_0DDCA0:    BNE CODE_0DDCB1         ; $0D:DCA0: D0 0F       ;
CODE_0DDCA2:    TAY                     ; $0D:DCA2: A8          ;
CODE_0DDCA3:    LDA $0238,x             ; $0D:DCA3: BD 38 02    ;
CODE_0DDCA6:    ADC #$18                ; $0D:DCA6: 69 18       ;
CODE_0DDCA8:    CPY #$04                ; $0D:DCA8: C0 04       ;
CODE_0DDCAA:    BNE CODE_0DDCAE         ; $0D:DCAA: D0 02       ;
CODE_0DDCAC:    SBC #$31                ; $0D:DCAC: E9 31       ;
CODE_0DDCAE:    STA $0238,x             ; $0D:DCAE: 9D 38 02    ;
CODE_0DDCB1:    JSR CODE_0DE6E7         ; $0D:DCB1: 20 E7 E6    ;
CODE_0DDCB4:    LDA $29,x               ; $0D:DCB4: B5 29       ;
CODE_0DDCB6:    AND #$1F                ; $0D:DCB6: 29 1F       ;
CODE_0DDCB8:    ORA #$20                ; $0D:DCB8: 09 20       ;
CODE_0DDCBA:    STA $29,x               ; $0D:DCBA: 95 29       ;
CODE_0DDCBC:    LDA #$02                ; $0D:DCBC: A9 02       ;
CODE_0DDCBE:    LDY $1C,x               ; $0D:DCBE: B4 1C       ;
CODE_0DDCC0:    CPY #$05                ; $0D:DCC0: C0 05       ;
CODE_0DDCC2:    BNE CODE_0DDCC6         ; $0D:DCC2: D0 02       ;
CODE_0DDCC4:    LDA #$06                ; $0D:DCC4: A9 06       ;
CODE_0DDCC6:    CPY #$06                ; $0D:DCC6: C0 06       ;
CODE_0DDCC8:    BNE CODE_0DDCCC         ; $0D:DCC8: D0 02       ;
CODE_0DDCCA:    LDA #$01                ; $0D:DCCA: A9 01       ;
CODE_0DDCCC:    JSR CODE_0DDFC3         ; $0D:DCCC: 20 C3 DF    ;
CODE_0DDCCF:    CMP #$03                ; $0D:DCCF: C9 03       ;
CODE_0DDCD1:    BEQ CODE_0DDCD8         ; $0D:DCD1: F0 05       ;
CODE_0DDCD3:    LDA #$03                ; $0D:DCD3: A9 03       ;
CODE_0DDCD5:    STA $1600               ; $0D:DCD5: 8D 00 16    ;
CODE_0DDCD8:    RTS                     ; $0D:DCD8: 60          ;

CODE_0DDCD9:    LDA $09                 ; $0D:DCD9: A5 09       ;
CODE_0DDCDB:    LSR A                   ; $0D:DCDB: 4A          ;
CODE_0DDCDC:    BCC CODE_0DDD17         ; $0D:DCDC: 90 39       ;
CODE_0DDCDE:    LDA $03D0               ; $0D:DCDE: AD D0 03    ;
CODE_0DDCE1:    ORA $0747               ; $0D:DCE1: 0D 47 07    ;
CODE_0DDCE4:    ORA $03D6               ; $0D:DCE4: 0D D6 03    ;
CODE_0DDCE7:    BNE CODE_0DDD17         ; $0D:DCE7: D0 2E       ;
CODE_0DDCE9:    TXA                     ; $0D:DCE9: 8A          ;
CODE_0DDCEA:    ASL A                   ; $0D:DCEA: 0A          ;
CODE_0DDCEB:    ASL A                   ; $0D:DCEB: 0A          ;
CODE_0DDCEC:    CLC                     ; $0D:DCEC: 18          ;
CODE_0DDCED:    ADC #$34                ; $0D:DCED: 69 34       ;
CODE_0DDCEF:    TAY                     ; $0D:DCEF: A8          ;
CODE_0DDCF0:    JSR CODE_0DEA33         ; $0D:DCF0: 20 33 EA    ;
CODE_0DDCF3:    LDX $9E                 ; $0D:DCF3: A6 9E       ;
CODE_0DDCF5:    BCC CODE_0DDD12         ; $0D:DCF5: 90 1B       ;
CODE_0DDCF7:    LDA $06BE,x             ; $0D:DCF7: BD BE 06    ;
CODE_0DDCFA:    BNE CODE_0DDD17         ; $0D:DCFA: D0 1B       ;
CODE_0DDCFC:    LDA #$01                ; $0D:DCFC: A9 01       ;
CODE_0DDCFE:    STA $06BE,x             ; $0D:DCFE: 9D BE 06    ;
CODE_0DDD01:    LDA $6E,x               ; $0D:DD01: B5 6E       ;
CODE_0DDD03:    EOR #$FF                ; $0D:DD03: 49 FF       ;
CODE_0DDD05:    CLC                     ; $0D:DD05: 18          ;
CODE_0DDD06:    ADC #$01                ; $0D:DD06: 69 01       ;
CODE_0DDD08:    STA $6E,x               ; $0D:DD08: 95 6E       ;
CODE_0DDD0A:    LDA $07AF               ; $0D:DD0A: AD AF 07    ;
CODE_0DDD0D:    BNE CODE_0DDD17         ; $0D:DD0D: D0 08       ;
CODE_0DDD0F:    JMP CODE_0DDE82         ; $0D:DD0F: 4C 82 DE    ;

CODE_0DDD12:    LDA #$00                ; $0D:DD12: A9 00       ;
CODE_0DDD14:    STA $06BE,x             ; $0D:DD14: 9D BE 06    ;
CODE_0DDD17:    RTS                     ; $0D:DD17: 60          ;

CODE_0DDD18:    JSR CODE_0DCCED         ; $0D:DD18: 20 ED CC    ;
CODE_0DDD1B:    LDA $020C               ; $0D:DD1B: AD 0C 02    ;
CODE_0DDD1E:    CMP #$04                ; $0D:DD1E: C9 04       ;
CODE_0DDD20:    BNE CODE_0DDD25         ; $0D:DD20: D0 03       ;
CODE_0DDD22:    JMP CODE_0DDE82         ; $0D:DD22: 4C 82 DE    ;

CODE_0DDD25:    LDA #$06                ; $0D:DD25: A9 06       ;
CODE_0DDD27:    JSR CODE_0DDF94         ; $0D:DD27: 20 94 DF    ;
CODE_0DDD2A:    LDA #$0A                ; $0D:DD2A: A9 0A       ;
CODE_0DDD2C:    STA $1600               ; $0D:DD2C: 8D 00 16    ;
CODE_0DDD2F:    LDA $020C               ; $0D:DD2F: AD 0C 02    ;
CODE_0DDD32:    CMP #$02                ; $0D:DD32: C9 02       ;
CODE_0DDD34:    BCC CODE_0DDD45         ; $0D:DD34: 90 0F       ;
CODE_0DDD36:    CMP #$03                ; $0D:DD36: C9 03       ;
CODE_0DDD38:    BEQ CODE_0DDD5F         ; $0D:DD38: F0 25       ;
CODE_0DDD3A:    LDA #$23                ; $0D:DD3A: A9 23       ;
CODE_0DDD3C:    STA $07AF               ; $0D:DD3C: 8D AF 07    ;
CODE_0DDD3F:    LDA #$0D                ; $0D:DD3F: A9 0D       ;
CODE_0DDD41:    STA $1602               ; $0D:DD41: 8D 02 16    ;
CODE_0DDD44:    RTS                     ; $0D:DD44: 60          ;

CODE_0DDD45:    LDA $0756               ; $0D:DD45: AD 56 07    ;
CODE_0DDD48:    BEQ CODE_0DDD6A         ; $0D:DD48: F0 20       ;
CODE_0DDD4A:    CMP #$01                ; $0D:DD4A: C9 01       ;
CODE_0DDD4C:    BNE CODE_0DDD76         ; $0D:DD4C: D0 28       ;
CODE_0DDD4E:    LDX $9E                 ; $0D:DD4E: A6 9E       ;
CODE_0DDD50:    LDA #$02                ; $0D:DD50: A9 02       ;
CODE_0DDD52:    STA $0756               ; $0D:DD52: 8D 56 07    ;
CODE_0DDD55:    JSL CODE_0E98C3         ; $0D:DD55: 22 C3 98 0E ;
CODE_0DDD59:    LDX $9E                 ; $0D:DD59: A6 9E       ;
CODE_0DDD5B:    LDA #$0C                ; $0D:DD5B: A9 0C       ;
CODE_0DDD5D:    BRA CODE_0DDD71         ; $0D:DD5D: 80 12       ;

CODE_0DDD5F:    LDA #$0B                ; $0D:DD5F: A9 0B       ;
CODE_0DDD61:    STA $0110,x             ; $0D:DD61: 9D 10 01    ;
CODE_0DDD64:    LDA #$00                ; $0D:DD64: A9 00       ;
CODE_0DDD66:    STA $1600               ; $0D:DD66: 8D 00 16    ;
CODE_0DDD69:    RTS                     ; $0D:DD69: 60          ;

CODE_0DDD6A:    LDA #$01                ; $0D:DD6A: A9 01       ;
CODE_0DDD6C:    STA $0756               ; $0D:DD6C: 8D 56 07    ;
CODE_0DDD6F:    LDA #$09                ; $0D:DD6F: A9 09       ;
CODE_0DDD71:    LDY #$00                ; $0D:DD71: A0 00       ;
CODE_0DDD73:    JSR CODE_0DDEA4         ; $0D:DD73: 20 A4 DE    ;
CODE_0DDD76:    RTS                     ; $0D:DD76: 60          ;

DATA_0DDD77:        db $18,$E8

DATA_0DDD79:        db $30,$D0

DATA_0DDD7B:        db $08,$F8

CODE_0DDD7D:    LDA $09                 ; $0D:DD7D: A5 09       ;
CODE_0DDD7F:    LSR A                   ; $0D:DD7F: 4A          ;
CODE_0DDD80:    BCS CODE_0DDD76         ; $0D:DD80: B0 F4       ;
CODE_0DDD82:    JSR CODE_0DE247         ; $0D:DD82: 20 47 E2    ;
CODE_0DDD85:    BCS CODE_0DDDBD         ; $0D:DD85: B0 36       ;
CODE_0DDD87:    CPX #$09                ; $0D:DD87: E0 09       ;
CODE_0DDD89:    BNE CODE_0DDD94         ; $0D:DD89: D0 09       ;
CODE_0DDD8B:    LDA $03AE               ; $0D:DD8B: AD AE 03    ;
CODE_0DDD8E:    BPL CODE_0DDD94         ; $0D:DD8E: 10 04       ;
CODE_0DDD90:    CMP #$F4                ; $0D:DD90: C9 F4       ;
CODE_0DDD92:    BCS CODE_0DDD99         ; $0D:DD92: B0 05       ;
CODE_0DDD94:    LDA $03D9,x             ; $0D:DD94: BD D9 03    ;
CODE_0DDD97:    BNE CODE_0DDDBD         ; $0D:DD97: D0 24       ;
CODE_0DDD99:    LDA $0F                 ; $0D:DD99: A5 0F       ;
CODE_0DDD9B:    CMP #$08                ; $0D:DD9B: C9 08       ;
CODE_0DDD9D:    BNE CODE_0DDDBD         ; $0D:DD9D: D0 1E       ;
CODE_0DDD9F:    LDA $29,x               ; $0D:DD9F: B5 29       ;
CODE_0DDDA1:    AND #$20                ; $0D:DDA1: 29 20       ;
CODE_0DDDA3:    BNE CODE_0DDDBD         ; $0D:DDA3: D0 18       ;
CODE_0DDDA5:    LDA $29,x               ; $0D:DDA5: B5 29       ;
CODE_0DDDA7:    AND #$20                ; $0D:DDA7: 29 20       ;
CODE_0DDDA9:    BNE CODE_0DDDBD         ; $0D:DDA9: D0 12       ;
CODE_0DDDAB:    JSR CODE_0DE251         ; $0D:DDAB: 20 51 E2    ;
CODE_0DDDAE:    JSR CODE_0DEA33         ; $0D:DDAE: 20 33 EA    ;
CODE_0DDDB1:    LDX $9E                 ; $0D:DDB1: A6 9E       ;
CODE_0DDDB3:    BCS CODE_0DDDBE         ; $0D:DDB3: B0 09       ;
CODE_0DDDB5:    LDA $0481,x             ; $0D:DDB5: BD 81 04    ;
CODE_0DDDB8:    AND #$FE                ; $0D:DDB8: 29 FE       ;
CODE_0DDDBA:    STA $0481,x             ; $0D:DDBA: 9D 81 04    ;
CODE_0DDDBD:    RTS                     ; $0D:DDBD: 60          ;

CODE_0DDDBE:    LDY $1C,x               ; $0D:DDBE: B4 1C       ;
CODE_0DDDC0:    CPY #$2E                ; $0D:DDC0: C0 2E       ;
CODE_0DDDC2:    BNE CODE_0DDDC7         ; $0D:DDC2: D0 03       ;
CODE_0DDDC4:    JMP CODE_0DDD18         ; $0D:DDC4: 4C 18 DD    ;

CODE_0DDDC7:    LDA $07AF               ; $0D:DDC7: AD AF 07    ;
CODE_0DDDCA:    BEQ CODE_0DDDD2         ; $0D:DDCA: F0 06       ;
CODE_0DDDCC:    JMP CODE_0DDC98         ; $0D:DDCC: 4C 98 DC    ;

DATA_0DDDCF:        db $0A,$06,$04

CODE_0DDDD2:    LDA $0481,x             ; $0D:DDD2: BD 81 04    ;
CODE_0DDDD5:    AND #$01                ; $0D:DDD5: 29 01       ;
CODE_0DDDD7:    ORA $03D9,x             ; $0D:DDD7: 1D D9 03    ;
CODE_0DDDDA:    BNE CODE_0DDE49         ; $0D:DDDA: D0 6D       ;
CODE_0DDDDC:    LDA #$01                ; $0D:DDDC: A9 01       ;
CODE_0DDDDE:    ORA $0481,x             ; $0D:DDDE: 1D 81 04    ;
CODE_0DDDE1:    STA $0481,x             ; $0D:DDE1: 9D 81 04    ;
CODE_0DDDE4:    CPY #$12                ; $0D:DDE4: C0 12       ;
CODE_0DDDE6:    BEQ CODE_0DDE4A         ; $0D:DDE6: F0 62       ;
CODE_0DDDE8:    CPY #$33                ; $0D:DDE8: C0 33       ;
CODE_0DDDEA:    BEQ CODE_0DDE4A         ; $0D:DDEA: F0 5E       ;
CODE_0DDDEC:    CPY #$0D                ; $0D:DDEC: C0 0D       ;
CODE_0DDDEE:    BNE CODE_0DDDF3         ; $0D:DDEE: D0 03       ;
CODE_0DDDF0:    JMP CODE_0DDE82         ; $0D:DDF0: 4C 82 DE    ;

CODE_0DDDF3:    CPY #$04                ; $0D:DDF3: C0 04       ;
CODE_0DDDF5:    BNE CODE_0DDDFA         ; $0D:DDF5: D0 03       ;
CODE_0DDDF7:    JMP CODE_0DDE82         ; $0D:DDF7: 4C 82 DE    ;

CODE_0DDDFA:    CPY #$0C                ; $0D:DDFA: C0 0C       ;
CODE_0DDDFC:    BNE CODE_0DDE01         ; $0D:DDFC: D0 03       ;
CODE_0DDDFE:    JMP CODE_0DDE82         ; $0D:DDFE: 4C 82 DE    ;

CODE_0DDE01:    CPY #$15                ; $0D:DE01: C0 15       ;
CODE_0DDE03:    BCS CODE_0DDE82         ; $0D:DE03: B0 7D       ;
CODE_0DDE05:    LDA $5C                 ; $0D:DE05: A5 5C       ;
CODE_0DDE07:    BEQ CODE_0DDE82         ; $0D:DE07: F0 79       ;
CODE_0DDE09:    LDA $29,x               ; $0D:DE09: B5 29       ;
CODE_0DDE0B:    ASL A                   ; $0D:DE0B: 0A          ;
CODE_0DDE0C:    BCS CODE_0DDE4A         ; $0D:DE0C: B0 3C       ;
CODE_0DDE0E:    LDA $29,x               ; $0D:DE0E: B5 29       ;
CODE_0DDE10:    AND #$07                ; $0D:DE10: 29 07       ;
CODE_0DDE12:    CMP #$02                ; $0D:DE12: C9 02       ;
CODE_0DDE14:    BCC CODE_0DDE4A         ; $0D:DE14: 90 34       ;
CODE_0DDE16:    LDA $1C,x               ; $0D:DE16: B5 1C       ;
CODE_0DDE18:    CMP #$06                ; $0D:DE18: C9 06       ;
CODE_0DDE1A:    BEQ CODE_0DDE49         ; $0D:DE1A: F0 2D       ;
CODE_0DDE1C:    LDA #$03                ; $0D:DE1C: A9 03       ;
CODE_0DDE1E:    STA $1600               ; $0D:DE1E: 8D 00 16    ;
CODE_0DDE21:    JSL CODE_0FE0AC         ; $0D:DE21: 22 AC E0 0F ;
CODE_0DDE25:    STZ $0F40,x             ; $0D:DE25: 9E 40 0F    ;
CODE_0DDE28:    LDA $29,x               ; $0D:DE28: B5 29       ;
CODE_0DDE2A:    ORA #$80                ; $0D:DE2A: 09 80       ;
CODE_0DDE2C:    STA $29,x               ; $0D:DE2C: 95 29       ;
CODE_0DDE2E:    JSR CODE_0DDF88         ; $0D:DE2E: 20 88 DF    ;
CODE_0DDE31:    LDA DATA_0DDD79,y       ; $0D:DE31: B9 79 DD    ;
CODE_0DDE34:    STA $5E,x               ; $0D:DE34: 95 5E       ;
CODE_0DDE36:    LDA #$03                ; $0D:DE36: A9 03       ;
CODE_0DDE38:    CLC                     ; $0D:DE38: 18          ;
CODE_0DDE39:    ADC $0284               ; $0D:DE39: 6D 84 02    ;
CODE_0DDE3C:    LDY $07A2,x             ; $0D:DE3C: BC A2 07    ;
CODE_0DDE3F:    CPY #$03                ; $0D:DE3F: C0 03       ;
CODE_0DDE41:    BCS CODE_0DDE46         ; $0D:DE41: B0 03       ;
CODE_0DDE43:    LDA DATA_0DDDCF,y       ; $0D:DE43: B9 CF DD    ;
CODE_0DDE46:    JSR CODE_0DDFC3         ; $0D:DE46: 20 C3 DF    ;
CODE_0DDE49:    RTS                     ; $0D:DE49: 60          ;

CODE_0DDE4A:    LDY $00A0               ; $0D:DE4A: AC A0 00    ;
CODE_0DDE4D:    DEY                     ; $0D:DE4D: 88          ;
CODE_0DDE4E:    BMI CODE_0DDE53         ; $0D:DE4E: 30 03       ;
CODE_0DDE50:    JMP CODE_0DDEDE         ; $0D:DE50: 4C DE DE    ;

CODE_0DDE53:    LDA $1C,x               ; $0D:DE53: B5 1C       ;
CODE_0DDE55:    CMP #$07                ; $0D:DE55: C9 07       ;
CODE_0DDE57:    BCC CODE_0DDE64         ; $0D:DE57: 90 0B       ;
CODE_0DDE59:    LDA $0237               ; $0D:DE59: AD 37 02    ;
CODE_0DDE5C:    CLC                     ; $0D:DE5C: 18          ;
CODE_0DDE5D:    ADC #$0C                ; $0D:DE5D: 69 0C       ;
CODE_0DDE5F:    CMP $0238,x             ; $0D:DE5F: DD 38 02    ;
CODE_0DDE62:    BCC CODE_0DDEDE         ; $0D:DE62: 90 7A       ;
CODE_0DDE64:    LDA $079D               ; $0D:DE64: AD 9D 07    ;
CODE_0DDE67:    BNE CODE_0DDEDE         ; $0D:DE67: D0 75       ;
CODE_0DDE69:    LDA $07AE               ; $0D:DE69: AD AE 07    ;
CODE_0DDE6C:    BNE CODE_0DDEB1         ; $0D:DE6C: D0 43       ;
CODE_0DDE6E:    LDA $03AD               ; $0D:DE6E: AD AD 03    ;
CODE_0DDE71:    CMP $03AE               ; $0D:DE71: CD AE 03    ;
CODE_0DDE74:    BCC CODE_0DDE79         ; $0D:DE74: 90 03       ;
CODE_0DDE76:    JMP CODE_0DDF79         ; $0D:DE76: 4C 79 DF    ;

CODE_0DDE79:    LDA $47,x               ; $0D:DE79: B5 47       ;
CODE_0DDE7B:    CMP #$01                ; $0D:DE7B: C9 01       ;
CODE_0DDE7D:    BNE CODE_0DDE82         ; $0D:DE7D: D0 03       ;
CODE_0DDE7F:    JMP CODE_0DDF82         ; $0D:DE7F: 4C 82 DF    ;

CODE_0DDE82:    LDA $07AE               ; $0D:DE82: AD AE 07    ;
CODE_0DDE85:    ORA $07AF               ; $0D:DE85: 0D AF 07    ;
CODE_0DDE88:    BNE CODE_0DDEB1         ; $0D:DE88: D0 27       ;
CODE_0DDE8A:    LDX $0756               ; $0D:DE8A: AE 56 07    ;
CODE_0DDE8D:    BEQ CODE_0DDEB4         ; $0D:DE8D: F0 25       ;
CODE_0DDE8F:    STA $0756               ; $0D:DE8F: 8D 56 07    ;
CODE_0DDE92:    LDA #$08                ; $0D:DE92: A9 08       ;
CODE_0DDE94:    STA $07AE               ; $0D:DE94: 8D AE 07    ;
CODE_0DDE97:    LDA #$04                ; $0D:DE97: A9 04       ;
CODE_0DDE99:    STA $1600               ; $0D:DE99: 8D 00 16    ;
CODE_0DDE9C:    JSL CODE_0E98C3         ; $0D:DE9C: 22 C3 98 0E ;
CODE_0DDEA0:    LDA #$0A                ; $0D:DEA0: A9 0A       ;
CODE_0DDEA2:    LDY #$01                ; $0D:DEA2: A0 01       ;
CODE_0DDEA4:    STA $0F                 ; $0D:DEA4: 85 0F       ;
CODE_0DDEA6:    STY $28                 ; $0D:DEA6: 84 28       ;
CODE_0DDEA8:    LDY #$FF                ; $0D:DEA8: A0 FF       ;
CODE_0DDEAA:    STY $0747               ; $0D:DEAA: 8C 47 07    ;
CODE_0DDEAD:    INY                     ; $0D:DEAD: C8          ;
CODE_0DDEAE:    STY $0775               ; $0D:DEAE: 8C 75 07    ;
CODE_0DDEB1:    LDX $9E                 ; $0D:DEB1: A6 9E       ;
CODE_0DDEB3:    RTS                     ; $0D:DEB3: 60          ;

CODE_0DDEB4:    STX $5D                 ; $0D:DEB4: 86 5D       ;
CODE_0DDEB6:    PHX                     ; $0D:DEB6: DA          ;
CODE_0DDEB7:    LDA #$01                ; $0D:DEB7: A9 01       ;
CODE_0DDEB9:    STA $0754               ; $0D:DEB9: 8D 54 07    ;
CODE_0DDEBC:    JSL CODE_0E98C3         ; $0D:DEBC: 22 C3 98 0E ;
CODE_0DDEC0:    PLX                     ; $0D:DEC0: FA          ;
CODE_0DDEC1:    INX                     ; $0D:DEC1: E8          ;
CODE_0DDEC2:    LDA #$20                ; $0D:DEC2: A9 20       ;
CODE_0DDEC4:    TSB $1601               ; $0D:DEC4: 0C 01 16    ;
CODE_0DDEC7:    LDA #$09                ; $0D:DEC7: A9 09       ;
CODE_0DDEC9:    STA $1602               ; $0D:DEC9: 8D 02 16    ;
CODE_0DDECC:    STA $0E67               ; $0D:DECC: 8D 67 0E    ;
CODE_0DDECF:    STA $0723               ; $0D:DECF: 8D 23 07    ;
CODE_0DDED2:    LDA #$FC                ; $0D:DED2: A9 FC       ;
CODE_0DDED4:    STA $A0                 ; $0D:DED4: 85 A0       ;
CODE_0DDED6:    LDA #$0B                ; $0D:DED6: A9 0B       ;
CODE_0DDED8:    BNE CODE_0DDEA2         ; $0D:DED8: D0 C8       ;

DATA_0DDEDA:        db $02,$06,$05,$06

CODE_0DDEDE:    LDA $1C,x               ; $0D:DEDE: B5 1C       ;
CODE_0DDEE0:    CMP #$12                ; $0D:DEE0: C9 12       ;
CODE_0DDEE2:    BEQ CODE_0DDE82         ; $0D:DEE2: F0 9E       ;
CODE_0DDEE4:    LDA #$02                ; $0D:DEE4: A9 02       ;
CODE_0DDEE6:    STA $1600               ; $0D:DEE6: 8D 00 16    ;
CODE_0DDEE9:    LDA $1C,x               ; $0D:DEE9: B5 1C       ;
CODE_0DDEEB:    LDY #$00                ; $0D:DEEB: A0 00       ;
CODE_0DDEED:    CMP #$14                ; $0D:DEED: C9 14       ;
CODE_0DDEEF:    BEQ CODE_0DDF0C         ; $0D:DEEF: F0 1B       ;
CODE_0DDEF1:    CMP #$08                ; $0D:DEF1: C9 08       ;
CODE_0DDEF3:    BEQ CODE_0DDF0C         ; $0D:DEF3: F0 17       ;
CODE_0DDEF5:    CMP #$33                ; $0D:DEF5: C9 33       ;
CODE_0DDEF7:    BEQ CODE_0DDF0C         ; $0D:DEF7: F0 13       ;
CODE_0DDEF9:    CMP #$0C                ; $0D:DEF9: C9 0C       ;
CODE_0DDEFB:    BEQ CODE_0DDF0C         ; $0D:DEFB: F0 0F       ;
CODE_0DDEFD:    INY                     ; $0D:DEFD: C8          ;
CODE_0DDEFE:    CMP #$05                ; $0D:DEFE: C9 05       ;
CODE_0DDF00:    BEQ CODE_0DDF0C         ; $0D:DF00: F0 0A       ;
CODE_0DDF02:    INY                     ; $0D:DF02: C8          ;
CODE_0DDF03:    CMP #$11                ; $0D:DF03: C9 11       ;
CODE_0DDF05:    BEQ CODE_0DDF0C         ; $0D:DF05: F0 05       ;
CODE_0DDF07:    INY                     ; $0D:DF07: C8          ;
CODE_0DDF08:    CMP #$07                ; $0D:DF08: C9 07       ;
CODE_0DDF0A:    BNE CODE_0DDF27         ; $0D:DF0A: D0 1B       ;
CODE_0DDF0C:    LDA DATA_0DDEDA,y       ; $0D:DF0C: B9 DA DE    ;
CODE_0DDF0F:    JSR CODE_0DDFC3         ; $0D:DF0F: 20 C3 DF    ;
CODE_0DDF12:    LDA $47,x               ; $0D:DF12: B5 47       ;
CODE_0DDF14:    PHA                     ; $0D:DF14: 48          ;
CODE_0DDF15:    JSR CODE_0DE706         ; $0D:DF15: 20 06 E7    ;
CODE_0DDF18:    PLA                     ; $0D:DF18: 68          ;
CODE_0DDF19:    STA $47,x               ; $0D:DF19: 95 47       ;
CODE_0DDF1B:    LDA #$20                ; $0D:DF1B: A9 20       ;
CODE_0DDF1D:    STA $29,x               ; $0D:DF1D: 95 29       ;
CODE_0DDF1F:    JSR CODE_0DC5E1         ; $0D:DF1F: 20 E1 C5    ;
CODE_0DDF22:    STZ $5E,x               ; $0D:DF22: 74 5E       ;
CODE_0DDF24:    JMP CODE_0DDF66         ; $0D:DF24: 4C 66 DF    ;

CODE_0DDF27:    CMP #$09                ; $0D:DF27: C9 09       ;
CODE_0DDF29:    BCC CODE_0DDF49         ; $0D:DF29: 90 1E       ;
CODE_0DDF2B:    JSR CODE_0DDF66         ; $0D:DF2B: 20 66 DF    ;
CODE_0DDF2E:    AND #$01                ; $0D:DF2E: 29 01       ;
CODE_0DDF30:    STA $1C,x               ; $0D:DF30: 95 1C       ;
CODE_0DDF32:    LDA #$00                ; $0D:DF32: A9 00       ;
CODE_0DDF34:    STA $29,x               ; $0D:DF34: 95 29       ;
CODE_0DDF36:    LDA #$03                ; $0D:DF36: A9 03       ;
CODE_0DDF38:    JSR CODE_0DDFC3         ; $0D:DF38: 20 C3 DF    ;
CODE_0DDF3B:    JSR CODE_0DC5E1         ; $0D:DF3B: 20 E1 C5    ;
CODE_0DDF3E:    JSR CODE_0DDF88         ; $0D:DF3E: 20 88 DF    ;
CODE_0DDF41:    LDA DATA_0DDD7B,y       ; $0D:DF41: B9 7B DD    ;
CODE_0DDF44:    STA $5E,x               ; $0D:DF44: 95 5E       ;
CODE_0DDF46:    RTS                     ; $0D:DF46: 60          ;

DATA_0DDF47:        db $10,$0B

CODE_0DDF49:    LDA #$04                ; $0D:DF49: A9 04       ;
CODE_0DDF4B:    STA $29,x               ; $0D:DF4B: 95 29       ;
CODE_0DDF4D:    INC $0284               ; $0D:DF4D: EE 84 02    ;
CODE_0DDF50:    LDA $0284               ; $0D:DF50: AD 84 02    ;
CODE_0DDF53:    CLC                     ; $0D:DF53: 18          ;
CODE_0DDF54:    ADC $079D               ; $0D:DF54: 6D 9D 07    ;
CODE_0DDF57:    JSR CODE_0DDFC3         ; $0D:DF57: 20 C3 DF    ;
CODE_0DDF5A:    INC $079D               ; $0D:DF5A: EE 9D 07    ;
CODE_0DDF5D:    LDY $076A               ; $0D:DF5D: AC 6A 07    ;
CODE_0DDF60:    LDA DATA_0DDF47,y       ; $0D:DF60: B9 47 DF    ;
CODE_0DDF63:    STA $07A2,x             ; $0D:DF63: 9D A2 07    ;
CODE_0DDF66:    LDY #$FA                ; $0D:DF66: A0 FA       ;
CODE_0DDF68:    LDA $001C,x             ; $0D:DF68: BD 1C 00    ;
CODE_0DDF6B:    CMP #$0F                ; $0D:DF6B: C9 0F       ;
CODE_0DDF6D:    BEQ CODE_0DDF73         ; $0D:DF6D: F0 04       ;
CODE_0DDF6F:    CMP #$10                ; $0D:DF6F: C9 10       ;
CODE_0DDF71:    BNE CODE_0DDF75         ; $0D:DF71: D0 02       ;
CODE_0DDF73:    LDY #$F8                ; $0D:DF73: A0 F8       ;
CODE_0DDF75:    STY $00A0               ; $0D:DF75: 8C A0 00    ;
CODE_0DDF78:    RTS                     ; $0D:DF78: 60          ;

CODE_0DDF79:    LDA $47,x               ; $0D:DF79: B5 47       ;
CODE_0DDF7B:    CMP #$01                ; $0D:DF7B: C9 01       ;
CODE_0DDF7D:    BNE CODE_0DDF82         ; $0D:DF7D: D0 03       ;
CODE_0DDF7F:    JMP CODE_0DDE82         ; $0D:DF7F: 4C 82 DE    ;

CODE_0DDF82:    JSR CODE_0DE10A         ; $0D:DF82: 20 0A E1    ;
CODE_0DDF85:    JMP CODE_0DDE82         ; $0D:DF85: 4C 82 DE    ;

CODE_0DDF88:    LDY #$01                ; $0D:DF88: A0 01       ;
CODE_0DDF8A:    JSR CODE_0DE828         ; $0D:DF8A: 20 28 E8    ;
CODE_0DDF8D:    BPL CODE_0DDF90         ; $0D:DF8D: 10 01       ;
CODE_0DDF8F:    INY                     ; $0D:DF8F: C8          ;
CODE_0DDF90:    STY $47,x               ; $0D:DF90: 94 47       ;
CODE_0DDF92:    DEY                     ; $0D:DF92: 88          ;
CODE_0DDF93:    RTS                     ; $0D:DF93: 60          ;

CODE_0DDF94:    STA $0110,x             ; $0D:DF94: 9D 10 01    ;
CODE_0DDF97:    LDA #$30                ; $0D:DF97: A9 30       ;
CODE_0DDF99:    STA $0138,x             ; $0D:DF99: 9D 38 01    ;
CODE_0DDF9C:    LDA $0238,x             ; $0D:DF9C: BD 38 02    ;
CODE_0DDF9F:    STA $0124,x             ; $0D:DF9F: 9D 24 01    ;
CODE_0DDFA2:    LDA $03AE               ; $0D:DFA2: AD AE 03    ;
CODE_0DDFA5:    STA $011A,x             ; $0D:DFA5: 9D 1A 01    ;
CODE_0DDFA8:    LDA $021A,x             ; $0D:DFA8: BD 1A 02    ;
CODE_0DDFAB:    STA $ED                 ; $0D:DFAB: 85 ED       ;
CODE_0DDFAD:    LDA $79,x               ; $0D:DFAD: B5 79       ;
CODE_0DDFAF:    STA $EE                 ; $0D:DFAF: 85 EE       ;
CODE_0DDFB1:    PHX                     ; $0D:DFB1: DA          ;
CODE_0DDFB2:    TXA                     ; $0D:DFB2: 8A          ;
CODE_0DDFB3:    ASL A                   ; $0D:DFB3: 0A          ;
CODE_0DDFB4:    TAX                     ; $0D:DFB4: AA          ;
CODE_0DDFB5:    REP #$20                ; $0D:DFB5: C2 20       ;
CODE_0DDFB7:    LDA $ED                 ; $0D:DFB7: A5 ED       ;
CODE_0DDFB9:    SEC                     ; $0D:DFB9: 38          ;
CODE_0DDFBA:    SBC $42                 ; $0D:DFBA: E5 42       ;
CODE_0DDFBC:    STA $0E50,x             ; $0D:DFBC: 9D 50 0E    ;
CODE_0DDFBF:    SEP #$20                ; $0D:DFBF: E2 20       ;
CODE_0DDFC1:    PLX                     ; $0D:DFC1: FA          ;
CODE_0DDFC2:    RTS                     ; $0D:DFC2: 60          ;

CODE_0DDFC3:    CMP $0110,x             ; $0D:DFC3: DD 10 01    ;
CODE_0DDFC6:    BCS CODE_0DDFC9         ; $0D:DFC6: B0 01       ;
CODE_0DDFC8:    RTS                     ; $0D:DFC8: 60          ;

CODE_0DDFC9:    STA $0110,x             ; $0D:DFC9: 9D 10 01    ;
CODE_0DDFCC:    LDA #$30                ; $0D:DFCC: A9 30       ;
CODE_0DDFCE:    STA $0138,x             ; $0D:DFCE: 9D 38 01    ;
CODE_0DDFD1:    LDA $0238,x             ; $0D:DFD1: BD 38 02    ;
CODE_0DDFD4:    STA $0124,x             ; $0D:DFD4: 9D 24 01    ;
CODE_0DDFD7:    PHY                     ; $0D:DFD7: 5A          ;
CODE_0DDFD8:    TXA                     ; $0D:DFD8: 8A          ;
CODE_0DDFD9:    ASL A                   ; $0D:DFD9: 0A          ;
CODE_0DDFDA:    TAY                     ; $0D:DFDA: A8          ;
CODE_0DDFDB:    LDA $021A,x             ; $0D:DFDB: BD 1A 02    ;
CODE_0DDFDE:    STA $E4                 ; $0D:DFDE: 85 E4       ;
CODE_0DDFE0:    LDA $79,x               ; $0D:DFE0: B5 79       ;
CODE_0DDFE2:    STA $E5                 ; $0D:DFE2: 85 E5       ;
CODE_0DDFE4:    REP #$20                ; $0D:DFE4: C2 20       ;
CODE_0DDFE6:    LDA $E4                 ; $0D:DFE6: A5 E4       ;
CODE_0DDFE8:    SEC                     ; $0D:DFE8: 38          ;
CODE_0DDFE9:    SBC $42                 ; $0D:DFE9: E5 42       ;
CODE_0DDFEB:    STA $0E50,y             ; $0D:DFEB: 99 50 0E    ;
CODE_0DDFEE:    SEP #$20                ; $0D:DFEE: E2 20       ;
CODE_0DDFF0:    STA $011A,x             ; $0D:DFF0: 9D 1A 01    ;
CODE_0DDFF3:    PLY                     ; $0D:DFF3: 7A          ;
CODE_0DDFF4:    RTS                     ; $0D:DFF4: 60          ;

DATA_0DDFF5:        db $80,$40,$20,$10,$08,$04,$02 ;

DATA_0DDFFC:        db $7F,$BF,$DF,$EF,$F7,$FB,$FD ;

CODE_0DE003:    LDA $09                 ; $0D:E003: A5 09       ;
CODE_0DE005:    LSR A                   ; $0D:E005: 4A          ;
CODE_0DE006:    BCC CODE_0DDFC2         ; $0D:E006: 90 BA       ;
CODE_0DE008:    LDA $5C                 ; $0D:E008: A5 5C       ;
CODE_0DE00A:    BEQ CODE_0DDFC2         ; $0D:E00A: F0 B6       ;
CODE_0DE00C:    LDA $1C,x               ; $0D:E00C: B5 1C       ;
CODE_0DE00E:    CMP #$15                ; $0D:E00E: C9 15       ;
CODE_0DE010:    BCS CODE_0DE088         ; $0D:E010: B0 76       ;
CODE_0DE012:    CMP #$11                ; $0D:E012: C9 11       ;
CODE_0DE014:    BEQ CODE_0DE088         ; $0D:E014: F0 72       ;
CODE_0DE016:    CMP #$0D                ; $0D:E016: C9 0D       ;
CODE_0DE018:    BEQ CODE_0DE088         ; $0D:E018: F0 6E       ;
CODE_0DE01A:    CMP #$04                ; $0D:E01A: C9 04       ;
CODE_0DE01C:    BEQ CODE_0DE088         ; $0D:E01C: F0 6A       ;
CODE_0DE01E:    LDA $03D9,x             ; $0D:E01E: BD D9 03    ;
CODE_0DE021:    BNE CODE_0DE088         ; $0D:E021: D0 65       ;
CODE_0DE023:    JSR CODE_0DE251         ; $0D:E023: 20 51 E2    ;
CODE_0DE026:    DEX                     ; $0D:E026: CA          ;
CODE_0DE027:    BMI CODE_0DE088         ; $0D:E027: 30 5F       ;
CODE_0DE029:    STX $01                 ; $0D:E029: 86 01       ;
CODE_0DE02B:    TYA                     ; $0D:E02B: 98          ;
CODE_0DE02C:    PHA                     ; $0D:E02C: 48          ;
CODE_0DE02D:    LDA $10,x               ; $0D:E02D: B5 10       ;
CODE_0DE02F:    BEQ CODE_0DE081         ; $0D:E02F: F0 50       ;
CODE_0DE031:    LDA $1C,x               ; $0D:E031: B5 1C       ;
CODE_0DE033:    CMP #$15                ; $0D:E033: C9 15       ;
CODE_0DE035:    BCS CODE_0DE081         ; $0D:E035: B0 4A       ;
CODE_0DE037:    CMP #$11                ; $0D:E037: C9 11       ;
CODE_0DE039:    BEQ CODE_0DE081         ; $0D:E039: F0 46       ;
CODE_0DE03B:    CMP #$0D                ; $0D:E03B: C9 0D       ;
CODE_0DE03D:    BEQ CODE_0DE081         ; $0D:E03D: F0 42       ;
CODE_0DE03F:    CMP #$04                ; $0D:E03F: C9 04       ;
CODE_0DE041:    BEQ CODE_0DE081         ; $0D:E041: F0 3E       ;
CODE_0DE043:    LDA $03D9,x             ; $0D:E043: BD D9 03    ;
CODE_0DE046:    BNE CODE_0DE081         ; $0D:E046: D0 39       ;
CODE_0DE048:    TXA                     ; $0D:E048: 8A          ;
CODE_0DE049:    ASL A                   ; $0D:E049: 0A          ;
CODE_0DE04A:    ASL A                   ; $0D:E04A: 0A          ;
CODE_0DE04B:    CLC                     ; $0D:E04B: 18          ;
CODE_0DE04C:    ADC #$04                ; $0D:E04C: 69 04       ;
CODE_0DE04E:    TAX                     ; $0D:E04E: AA          ;
CODE_0DE04F:    JSR CODE_0DEA35         ; $0D:E04F: 20 35 EA    ;
CODE_0DE052:    LDX $9E                 ; $0D:E052: A6 9E       ;
CODE_0DE054:    LDY $01                 ; $0D:E054: A4 01       ;
CODE_0DE056:    BCC CODE_0DE078         ; $0D:E056: 90 20       ;
CODE_0DE058:    LDA $29,x               ; $0D:E058: B5 29       ;
CODE_0DE05A:    ORA $0029,y             ; $0D:E05A: 19 29 00    ;
CODE_0DE05D:    AND #$80                ; $0D:E05D: 29 80       ;
CODE_0DE05F:    BNE CODE_0DE072         ; $0D:E05F: D0 11       ;
CODE_0DE061:    LDA $0481,y             ; $0D:E061: B9 81 04    ;
CODE_0DE064:    AND DATA_0DDFF5,x       ; $0D:E064: 3D F5 DF    ;
CODE_0DE067:    BNE CODE_0DE081         ; $0D:E067: D0 18       ;
CODE_0DE069:    LDA $0481,y             ; $0D:E069: B9 81 04    ;
CODE_0DE06C:    ORA DATA_0DDFF5,x       ; $0D:E06C: 1D F5 DF    ;
CODE_0DE06F:    STA $0481,y             ; $0D:E06F: 99 81 04    ;
CODE_0DE072:    JSR CODE_0DE08B         ; $0D:E072: 20 8B E0    ;
CODE_0DE075:    JMP CODE_0DE081         ; $0D:E075: 4C 81 E0    ;

CODE_0DE078:    LDA $0481,y             ; $0D:E078: B9 81 04    ;
CODE_0DE07B:    AND DATA_0DDFFC,x       ; $0D:E07B: 3D FC DF    ;
CODE_0DE07E:    STA $0481,y             ; $0D:E07E: 99 81 04    ;
CODE_0DE081:    PLA                     ; $0D:E081: 68          ;
CODE_0DE082:    TAY                     ; $0D:E082: A8          ;
CODE_0DE083:    LDX $01                 ; $0D:E083: A6 01       ;
CODE_0DE085:    DEX                     ; $0D:E085: CA          ;
CODE_0DE086:    BPL CODE_0DE029         ; $0D:E086: 10 A1       ;
CODE_0DE088:    LDX $9E                 ; $0D:E088: A6 9E       ;
CODE_0DE08A:    RTS                     ; $0D:E08A: 60          ;

CODE_0DE08B:    LDA $0029,y             ; $0D:E08B: B9 29 00    ;
CODE_0DE08E:    ORA $29,x               ; $0D:E08E: 15 29       ;
CODE_0DE090:    AND #$20                ; $0D:E090: 29 20       ;
CODE_0DE092:    BNE CODE_0DE0CB         ; $0D:E092: D0 37       ;
CODE_0DE094:    LDA $1C,x               ; $0D:E094: B5 1C       ;
CODE_0DE096:    CMP #$05                ; $0D:E096: C9 05       ;
CODE_0DE098:    BNE CODE_0DE09C         ; $0D:E098: D0 02       ;
CODE_0DE09A:    STZ $29,x               ; $0D:E09A: 74 29       ;
CODE_0DE09C:    LDA $29,x               ; $0D:E09C: B5 29       ;
CODE_0DE09E:    CMP #$06                ; $0D:E09E: C9 06       ;
CODE_0DE0A0:    BCC CODE_0DE0CC         ; $0D:E0A0: 90 2A       ;
CODE_0DE0A2:    LDA $0029,y             ; $0D:E0A2: B9 29 00    ;
CODE_0DE0A5:    ASL A                   ; $0D:E0A5: 0A          ;
CODE_0DE0A6:    BCC CODE_0DE0B2         ; $0D:E0A6: 90 0A       ;
CODE_0DE0A8:    LDA #$06                ; $0D:E0A8: A9 06       ;
CODE_0DE0AA:    JSR CODE_0DDFC3         ; $0D:E0AA: 20 C3 DF    ;
CODE_0DE0AD:    JSR CODE_0DDC98         ; $0D:E0AD: 20 98 DC    ;
CODE_0DE0B0:    LDY $01                 ; $0D:E0B0: A4 01       ;
CODE_0DE0B2:    TYA                     ; $0D:E0B2: 98          ;
CODE_0DE0B3:    TAX                     ; $0D:E0B3: AA          ;
CODE_0DE0B4:    JSR CODE_0DDC98         ; $0D:E0B4: 20 98 DC    ;
CODE_0DE0B7:    LDX $9E                 ; $0D:E0B7: A6 9E       ;
CODE_0DE0B9:    LDA $012E,x             ; $0D:E0B9: BD 2E 01    ;
CODE_0DE0BC:    CLC                     ; $0D:E0BC: 18          ;
CODE_0DE0BD:    ADC #$04                ; $0D:E0BD: 69 04       ;
CODE_0DE0BF:    LDX $01                 ; $0D:E0BF: A6 01       ;
CODE_0DE0C1:    JSR CODE_0DDFC3         ; $0D:E0C1: 20 C3 DF    ;
CODE_0DE0C4:    LDX $9E                 ; $0D:E0C4: A6 9E       ;
CODE_0DE0C6:    INC $012E,x             ; $0D:E0C6: FE 2E 01    ;
CODE_0DE0C9:    BRA CODE_0DE0F3         ; $0D:E0C9: 80 28       ;

CODE_0DE0CB:    RTS                     ; $0D:E0CB: 60          ;

CODE_0DE0CC:    LDA $0029,y             ; $0D:E0CC: B9 29 00    ;
CODE_0DE0CF:    CMP #$06                ; $0D:E0CF: C9 06       ;
CODE_0DE0D1:    BCC CODE_0DE103         ; $0D:E0D1: 90 30       ;
CODE_0DE0D3:    LDA $001C,y             ; $0D:E0D3: B9 1C 00    ;
CODE_0DE0D6:    CMP #$05                ; $0D:E0D6: C9 05       ;
CODE_0DE0D8:    BEQ CODE_0DE0CB         ; $0D:E0D8: F0 F1       ;
CODE_0DE0DA:    JSR CODE_0DDC98         ; $0D:E0DA: 20 98 DC    ;
CODE_0DE0DD:    JSL CODE_0FE0AC         ; $0D:E0DD: 22 AC E0 0F ;
CODE_0DE0E1:    LDY $01                 ; $0D:E0E1: A4 01       ;
CODE_0DE0E3:    LDA $012E,y             ; $0D:E0E3: B9 2E 01    ;
CODE_0DE0E6:    CLC                     ; $0D:E0E6: 18          ;
CODE_0DE0E7:    ADC #$04                ; $0D:E0E7: 69 04       ;
CODE_0DE0E9:    LDX $9E                 ; $0D:E0E9: A6 9E       ;
CODE_0DE0EB:    JSR CODE_0DDFC3         ; $0D:E0EB: 20 C3 DF    ;
CODE_0DE0EE:    LDX $01                 ; $0D:E0EE: A6 01       ;
CODE_0DE0F0:    INC $012E,x             ; $0D:E0F0: FE 2E 01    ;
CODE_0DE0F3:    LDA $012E,x             ; $0D:E0F3: BD 2E 01    ;
CODE_0DE0F6:    CLC                     ; $0D:E0F6: 18          ;
CODE_0DE0F7:    ADC #$12                ; $0D:E0F7: 69 12       ;
CODE_0DE0F9:    CMP #$1A                ; $0D:E0F9: C9 1A       ;
CODE_0DE0FB:    BCC CODE_0DE0FF         ; $0D:E0FB: 90 02       ;
CODE_0DE0FD:    LDA #$00                ; $0D:E0FD: A9 00       ;
CODE_0DE0FF:    STA $1600               ; $0D:E0FF: 8D 00 16    ;
CODE_0DE102:    RTS                     ; $0D:E102: 60          ;

CODE_0DE103:    TYA                     ; $0D:E103: 98          ;
CODE_0DE104:    TAX                     ; $0D:E104: AA          ;
CODE_0DE105:    JSR CODE_0DE10A         ; $0D:E105: 20 0A E1    ;
CODE_0DE108:    LDX $9E                 ; $0D:E108: A6 9E       ;
CODE_0DE10A:    LDA $1C,x               ; $0D:E10A: B5 1C       ;
CODE_0DE10C:    CMP #$0D                ; $0D:E10C: C9 0D       ;
CODE_0DE10E:    BEQ CODE_0DE136         ; $0D:E10E: F0 26       ;
CODE_0DE110:    CMP #$04                ; $0D:E110: C9 04       ;
CODE_0DE112:    BEQ CODE_0DE136         ; $0D:E112: F0 22       ;
CODE_0DE114:    CMP #$11                ; $0D:E114: C9 11       ;
CODE_0DE116:    BEQ CODE_0DE136         ; $0D:E116: F0 1E       ;
CODE_0DE118:    CMP #$05                ; $0D:E118: C9 05       ;
CODE_0DE11A:    BEQ CODE_0DE136         ; $0D:E11A: F0 1A       ;
CODE_0DE11C:    CMP #$12                ; $0D:E11C: C9 12       ;
CODE_0DE11E:    BEQ CODE_0DE128         ; $0D:E11E: F0 08       ;
CODE_0DE120:    CMP #$0E                ; $0D:E120: C9 0E       ;
CODE_0DE122:    BEQ CODE_0DE128         ; $0D:E122: F0 04       ;
CODE_0DE124:    CMP #$07                ; $0D:E124: C9 07       ;
CODE_0DE126:    BCS CODE_0DE136         ; $0D:E126: B0 0E       ;
CODE_0DE128:    LDA $5E,x               ; $0D:E128: B5 5E       ;
CODE_0DE12A:    EOR #$FF                ; $0D:E12A: 49 FF       ;
CODE_0DE12C:    TAY                     ; $0D:E12C: A8          ;
CODE_0DE12D:    INY                     ; $0D:E12D: C8          ;
CODE_0DE12E:    STY $5E,x               ; $0D:E12E: 94 5E       ;
CODE_0DE130:    LDA $47,x               ; $0D:E130: B5 47       ;
CODE_0DE132:    EOR #$03                ; $0D:E132: 49 03       ;
CODE_0DE134:    STA $47,x               ; $0D:E134: 95 47       ;
CODE_0DE136:    RTS                     ; $0D:E136: 60          ;

CODE_0DE137:    LDA #$FF                ; $0D:E137: A9 FF       ;
CODE_0DE139:    STA $03A2,x             ; $0D:E139: 9D A2 03    ;
CODE_0DE13C:    LDA $0747               ; $0D:E13C: AD 47 07    ;
CODE_0DE13F:    BNE CODE_0DE16B         ; $0D:E13F: D0 2A       ;
CODE_0DE141:    LDA $29,x               ; $0D:E141: B5 29       ;
CODE_0DE143:    BMI CODE_0DE16B         ; $0D:E143: 30 26       ;
CODE_0DE145:    LDA $1C,x               ; $0D:E145: B5 1C       ;
CODE_0DE147:    CMP #$24                ; $0D:E147: C9 24       ;
CODE_0DE149:    BNE CODE_0DE151         ; $0D:E149: D0 06       ;
CODE_0DE14B:    LDA $29,x               ; $0D:E14B: B5 29       ;
CODE_0DE14D:    TAX                     ; $0D:E14D: AA          ;
CODE_0DE14E:    JSR CODE_0DE151         ; $0D:E14E: 20 51 E1    ;
CODE_0DE151:    JSR CODE_0DE247         ; $0D:E151: 20 47 E2    ;
CODE_0DE154:    BCS CODE_0DE16B         ; $0D:E154: B0 15       ;
CODE_0DE156:    TXA                     ; $0D:E156: 8A          ;
CODE_0DE157:    JSR CODE_0DE253         ; $0D:E157: 20 53 E2    ;
CODE_0DE15A:    LDA $0238,x             ; $0D:E15A: BD 38 02    ;
CODE_0DE15D:    STA $00                 ; $0D:E15D: 85 00       ;
CODE_0DE15F:    TXA                     ; $0D:E15F: 8A          ;
CODE_0DE160:    PHA                     ; $0D:E160: 48          ;
CODE_0DE161:    JSR CODE_0DEA33         ; $0D:E161: 20 33 EA    ;
CODE_0DE164:    PLA                     ; $0D:E164: 68          ;
CODE_0DE165:    TAX                     ; $0D:E165: AA          ;
CODE_0DE166:    BCC CODE_0DE16B         ; $0D:E166: 90 03       ;
CODE_0DE168:    JSR CODE_0DE1AF         ; $0D:E168: 20 AF E1    ;
CODE_0DE16B:    LDX $9E                 ; $0D:E16B: A6 9E       ;
CODE_0DE16D:    RTS                     ; $0D:E16D: 60          ;

CODE_0DE16E:    LDA $0747               ; $0D:E16E: AD 47 07    ;
CODE_0DE171:    BNE CODE_0DE1AA         ; $0D:E171: D0 37       ;
CODE_0DE173:    STA $03A2,x             ; $0D:E173: 9D A2 03    ;
CODE_0DE176:    JSR CODE_0DE247         ; $0D:E176: 20 47 E2    ;
CODE_0DE179:    BCS CODE_0DE1AA         ; $0D:E179: B0 2F       ;
CODE_0DE17B:    LDA #$02                ; $0D:E17B: A9 02       ;
CODE_0DE17D:    STA $00                 ; $0D:E17D: 85 00       ;
CODE_0DE17F:    LDX $9E                 ; $0D:E17F: A6 9E       ;
CODE_0DE181:    JSR CODE_0DE251         ; $0D:E181: 20 51 E2    ;
CODE_0DE184:    AND #$02                ; $0D:E184: 29 02       ;
CODE_0DE186:    BNE CODE_0DE1AA         ; $0D:E186: D0 22       ;
CODE_0DE188:    LDA $0F9D,y             ; $0D:E188: B9 9D 0F    ;
CODE_0DE18B:    CMP #$20                ; $0D:E18B: C9 20       ;
CODE_0DE18D:    BCC CODE_0DE194         ; $0D:E18D: 90 05       ;
CODE_0DE18F:    JSR CODE_0DEA33         ; $0D:E18F: 20 33 EA    ;
CODE_0DE192:    BCS CODE_0DE1AD         ; $0D:E192: B0 19       ;
CODE_0DE194:    LDA $0F9D,y             ; $0D:E194: B9 9D 0F    ;
CODE_0DE197:    CLC                     ; $0D:E197: 18          ;
CODE_0DE198:    ADC #$80                ; $0D:E198: 69 80       ;
CODE_0DE19A:    STA $0F9D,y             ; $0D:E19A: 99 9D 0F    ;
CODE_0DE19D:    LDA $0F9F,y             ; $0D:E19D: B9 9F 0F    ;
CODE_0DE1A0:    CLC                     ; $0D:E1A0: 18          ;
CODE_0DE1A1:    ADC #$80                ; $0D:E1A1: 69 80       ;
CODE_0DE1A3:    STA $0F9F,y             ; $0D:E1A3: 99 9F 0F    ;
CODE_0DE1A6:    DEC $00                 ; $0D:E1A6: C6 00       ;
CODE_0DE1A8:    BNE CODE_0DE17F         ; $0D:E1A8: D0 D5       ;
CODE_0DE1AA:    LDX $9E                 ; $0D:E1AA: A6 9E       ;
CODE_0DE1AC:    RTS                     ; $0D:E1AC: 60          ;

CODE_0DE1AD:    LDX $9E                 ; $0D:E1AD: A6 9E       ;
CODE_0DE1AF:    LDA $0F9F,y             ; $0D:E1AF: B9 9F 0F    ;
CODE_0DE1B2:    SEC                     ; $0D:E1B2: 38          ;
CODE_0DE1B3:    SBC $0F9D               ; $0D:E1B3: ED 9D 0F    ;
CODE_0DE1B6:    CMP #$04                ; $0D:E1B6: C9 04       ;
CODE_0DE1B8:    BCS CODE_0DE1C2         ; $0D:E1B8: B0 08       ;
CODE_0DE1BA:    LDA $A0                 ; $0D:E1BA: A5 A0       ;
CODE_0DE1BC:    BPL CODE_0DE1C2         ; $0D:E1BC: 10 04       ;
CODE_0DE1BE:    LDA #$01                ; $0D:E1BE: A9 01       ;
CODE_0DE1C0:    STA $A0                 ; $0D:E1C0: 85 A0       ;
CODE_0DE1C2:    LDA $0F9F               ; $0D:E1C2: AD 9F 0F    ;
CODE_0DE1C5:    SEC                     ; $0D:E1C5: 38          ;
CODE_0DE1C6:    SBC $0F9D,y             ; $0D:E1C6: F9 9D 0F    ;
CODE_0DE1C9:    CMP #$06                ; $0D:E1C9: C9 06       ;
CODE_0DE1CB:    BCS CODE_0DE1E8         ; $0D:E1CB: B0 1B       ;
CODE_0DE1CD:    LDA $A0                 ; $0D:E1CD: A5 A0       ;
CODE_0DE1CF:    BMI CODE_0DE1E8         ; $0D:E1CF: 30 17       ;
CODE_0DE1D1:    LDA $00                 ; $0D:E1D1: A5 00       ;
CODE_0DE1D3:    LDY $1C,x               ; $0D:E1D3: B4 1C       ;
CODE_0DE1D5:    CPY #$2B                ; $0D:E1D5: C0 2B       ;
CODE_0DE1D7:    BEQ CODE_0DE1DE         ; $0D:E1D7: F0 05       ;
CODE_0DE1D9:    CPY #$2C                ; $0D:E1D9: C0 2C       ;
CODE_0DE1DB:    BEQ CODE_0DE1DE         ; $0D:E1DB: F0 01       ;
CODE_0DE1DD:    TXA                     ; $0D:E1DD: 8A          ;
CODE_0DE1DE:    LDX $9E                 ; $0D:E1DE: A6 9E       ;
CODE_0DE1E0:    STA $03A2,x             ; $0D:E1E0: 9D A2 03    ;
CODE_0DE1E3:    LDA #$00                ; $0D:E1E3: A9 00       ;
CODE_0DE1E5:    STA $28                 ; $0D:E1E5: 85 28       ;
CODE_0DE1E7:    RTS                     ; $0D:E1E7: 60          ;

CODE_0DE1E8:    LDA #$01                ; $0D:E1E8: A9 01       ;
CODE_0DE1EA:    STA $00                 ; $0D:E1EA: 85 00       ;
CODE_0DE1EC:    LDA $0F9E               ; $0D:E1EC: AD 9E 0F    ;
CODE_0DE1EF:    SEC                     ; $0D:E1EF: 38          ;
CODE_0DE1F0:    SBC $0F9C,y             ; $0D:E1F0: F9 9C 0F    ;
CODE_0DE1F3:    CMP #$08                ; $0D:E1F3: C9 08       ;
CODE_0DE1F5:    BCC CODE_0DE204         ; $0D:E1F5: 90 0D       ;
CODE_0DE1F7:    INC $00                 ; $0D:E1F7: E6 00       ;
CODE_0DE1F9:    LDA $0F9E,y             ; $0D:E1F9: B9 9E 0F    ;
CODE_0DE1FC:    CLC                     ; $0D:E1FC: 18          ;
CODE_0DE1FD:    SBC $0F9C               ; $0D:E1FD: ED 9C 0F    ;
CODE_0DE200:    CMP #$09                ; $0D:E200: C9 09       ;
CODE_0DE202:    BCS CODE_0DE207         ; $0D:E202: B0 03       ;
CODE_0DE204:    JSR CODE_0DE614         ; $0D:E204: 20 14 E6    ;
CODE_0DE207:    LDX $9E                 ; $0D:E207: A6 9E       ;
CODE_0DE209:    RTS                     ; $0D:E209: 60          ;

DATA_0DE20A:        db $80,$00

CODE_0DE20C:    TAY                     ; $0D:E20C: A8          ;
CODE_0DE20D:    LDA $0238,x             ; $0D:E20D: BD 38 02    ;
CODE_0DE210:    CLC                     ; $0D:E210: 18          ;
CODE_0DE211:    ADC DATA_0DE20A-1,y     ; $0D:E211: 79 09 E2    ;
CODE_0DE214:    BNE CODE_0DE21E         ; $0D:E214: D0 08       ;
CODE_0DE216:    LDA #$02                ; $0D:E216: A9 02       ;
CODE_0DE218:    STA $BB                 ; $0D:E218: 85 BB       ;
CODE_0DE21A:    RTS                     ; $0D:E21A: 60          ;

CODE_0DE21B:    LDA $0238,x             ; $0D:E21B: BD 38 02    ;
CODE_0DE21E:    LDY $0F                 ; $0D:E21E: A4 0F       ;
CODE_0DE220:    CPY #$0B                ; $0D:E220: C0 0B       ;
CODE_0DE222:    BEQ CODE_0DE246         ; $0D:E222: F0 22       ;
CODE_0DE224:    LDY $BC,x               ; $0D:E224: B4 BC       ;
CODE_0DE226:    CPY #$01                ; $0D:E226: C0 01       ;
CODE_0DE228:    BNE CODE_0DE246         ; $0D:E228: D0 1C       ;
CODE_0DE22A:    SEC                     ; $0D:E22A: 38          ;
CODE_0DE22B:    SBC #$20                ; $0D:E22B: E9 20       ;
CODE_0DE22D:    STA $0237               ; $0D:E22D: 8D 37 02    ;
CODE_0DE230:    TYA                     ; $0D:E230: 98          ;
CODE_0DE231:    SBC #$00                ; $0D:E231: E9 00       ;
CODE_0DE233:    STA $BB                 ; $0D:E233: 85 BB       ;
CODE_0DE235:    BNE CODE_0DE23F         ; $0D:E235: D0 08       ;
CODE_0DE237:    STZ $03A2,x             ; $0D:E237: 9E A2 03    ;
CODE_0DE23A:    LDA #$01                ; $0D:E23A: A9 01       ;
CODE_0DE23C:    STA $0028               ; $0D:E23C: 8D 28 00    ;
CODE_0DE23F:    LDA #$00                ; $0D:E23F: A9 00       ;
CODE_0DE241:    STA $A0                 ; $0D:E241: 85 A0       ;
CODE_0DE243:    STA $043C               ; $0D:E243: 8D 3C 04    ;
CODE_0DE246:    RTS                     ; $0D:E246: 60          ;

CODE_0DE247:    LDA $03D0               ; $0D:E247: AD D0 03    ;
CODE_0DE24A:    AND #$F0                ; $0D:E24A: 29 F0       ;
CODE_0DE24C:    CLC                     ; $0D:E24C: 18          ;
CODE_0DE24D:    BEQ CODE_0DE250         ; $0D:E24D: F0 01       ;
CODE_0DE24F:    SEC                     ; $0D:E24F: 38          ;
CODE_0DE250:    RTS                     ; $0D:E250: 60          ;

CODE_0DE251:    LDA $9E                 ; $0D:E251: A5 9E       ;
CODE_0DE253:    ASL A                   ; $0D:E253: 0A          ;
CODE_0DE254:    ASL A                   ; $0D:E254: 0A          ;
CODE_0DE255:    CLC                     ; $0D:E255: 18          ;
CODE_0DE256:    ADC #$04                ; $0D:E256: 69 04       ;
CODE_0DE258:    TAY                     ; $0D:E258: A8          ;
CODE_0DE259:    LDA $03D1               ; $0D:E259: AD D1 03    ;
CODE_0DE25C:    AND #$0F                ; $0D:E25C: 29 0F       ;
CODE_0DE25E:    CMP #$0F                ; $0D:E25E: C9 0F       ;
CODE_0DE260:    RTS                     ; $0D:E260: 60          ;

DATA_0DE261:       db $20,$10

CODE_0DE263:    LDA $0716               ; $0D:E263: AD 16 07    ;
CODE_0DE266:    BNE CODE_0DE297         ; $0D:E266: D0 2F       ;
CODE_0DE268:    LDA $0F                 ; $0D:E268: A5 0F       ;
CODE_0DE26A:    CMP #$0B                ; $0D:E26A: C9 0B       ;
CODE_0DE26C:    BEQ CODE_0DE297         ; $0D:E26C: F0 29       ;
CODE_0DE26E:    CMP #$04                ; $0D:E26E: C9 04       ;
CODE_0DE270:    BCC CODE_0DE297         ; $0D:E270: 90 25       ;
CODE_0DE272:    LDA #$01                ; $0D:E272: A9 01       ;
CODE_0DE274:    LDY $0704               ; $0D:E274: AC 04 07    ;
CODE_0DE277:    BNE CODE_0DE283         ; $0D:E277: D0 0A       ;
CODE_0DE279:    LDA $28                 ; $0D:E279: A5 28       ;
CODE_0DE27B:    BEQ CODE_0DE281         ; $0D:E27B: F0 04       ;
CODE_0DE27D:    CMP #$03                ; $0D:E27D: C9 03       ;
CODE_0DE27F:    BNE CODE_0DE285         ; $0D:E27F: D0 04       ;
CODE_0DE281:    LDA #$02                ; $0D:E281: A9 02       ;
CODE_0DE283:    STA $28                 ; $0D:E283: 85 28       ;
CODE_0DE285:    LDA $BB                 ; $0D:E285: A5 BB       ;
CODE_0DE287:    CMP #$01                ; $0D:E287: C9 01       ;
CODE_0DE289:    BNE CODE_0DE297         ; $0D:E289: D0 0C       ;
CODE_0DE28B:    LDA #$FF                ; $0D:E28B: A9 FF       ;
CODE_0DE28D:    STA $0480               ; $0D:E28D: 8D 80 04    ;
CODE_0DE290:    LDA $0237               ; $0D:E290: AD 37 02    ;
CODE_0DE293:    CMP #$CF                ; $0D:E293: C9 CF       ;
CODE_0DE295:    BCC CODE_0DE298         ; $0D:E295: 90 01       ;
CODE_0DE297:    RTS                     ; $0D:E297: 60          ;

CODE_0DE298:    LDY #$02                ; $0D:E298: A0 02       ;
CODE_0DE29A:    LDA $0714               ; $0D:E29A: AD 14 07    ;
CODE_0DE29D:    BNE CODE_0DE2AB         ; $0D:E29D: D0 0C       ;
CODE_0DE29F:    LDA $0754               ; $0D:E29F: AD 54 07    ;
CODE_0DE2A2:    BNE CODE_0DE2AB         ; $0D:E2A2: D0 07       ;
CODE_0DE2A4:    DEY                     ; $0D:E2A4: 88          ;
CODE_0DE2A5:    LDA $0704               ; $0D:E2A5: AD 04 07    ;
CODE_0DE2A8:    BNE CODE_0DE2AB         ; $0D:E2A8: D0 01       ;
CODE_0DE2AA:    DEY                     ; $0D:E2AA: 88          ;
CODE_0DE2AB:    LDA DATA_0DEABB,y       ; $0D:E2AB: B9 BB EA    ;
CODE_0DE2AE:    STA $EB                 ; $0D:E2AE: 85 EB       ;
CODE_0DE2B0:    TAY                     ; $0D:E2B0: A8          ;
CODE_0DE2B1:    LDX $0754               ; $0D:E2B1: AE 54 07    ;
CODE_0DE2B4:    LDA $0714               ; $0D:E2B4: AD 14 07    ;
CODE_0DE2B7:    BEQ CODE_0DE2BA         ; $0D:E2B7: F0 01       ;
CODE_0DE2B9:    INX                     ; $0D:E2B9: E8          ;
CODE_0DE2BA:    LDA $0237               ; $0D:E2BA: AD 37 02    ;
CODE_0DE2BD:    CMP DATA_0DE261,x       ; $0D:E2BD: DD 61 E2    ;
CODE_0DE2C0:    BCC CODE_0DE2FA         ; $0D:E2C0: 90 38       ;
CODE_0DE2C2:    LDA #$01                ; $0D:E2C2: A9 01       ;
CODE_0DE2C4:    STA $E4                 ; $0D:E2C4: 85 E4       ;
CODE_0DE2C6:    JSR CODE_0DEAF7         ; $0D:E2C6: 20 F7 EA    ;
CODE_0DE2C9:    BEQ CODE_0DE2FA         ; $0D:E2C9: F0 2F       ;
CODE_0DE2CB:    JSR CODE_0DE66C         ; $0D:E2CB: 20 6C E6    ;
CODE_0DE2CE:    BCS CODE_0DE323         ; $0D:E2CE: B0 53       ;
CODE_0DE2D0:    LDY $A0                 ; $0D:E2D0: A4 A0       ;
CODE_0DE2D2:    BPL CODE_0DE2FA         ; $0D:E2D2: 10 26       ;
CODE_0DE2D4:    LDY $04                 ; $0D:E2D4: A4 04       ;
CODE_0DE2D6:    CPY #$04                ; $0D:E2D6: C0 04       ;
CODE_0DE2D8:    BCC CODE_0DE2FA         ; $0D:E2D8: 90 20       ;
CODE_0DE2DA:    JSR CODE_0DE65A         ; $0D:E2DA: 20 5A E6    ;
CODE_0DE2DD:    BCS CODE_0DE2ED         ; $0D:E2DD: B0 0E       ;
CODE_0DE2DF:    LDY $5C                 ; $0D:E2DF: A4 5C       ;
CODE_0DE2E1:    BEQ CODE_0DE2F6         ; $0D:E2E1: F0 13       ;
CODE_0DE2E3:    LDY $078C               ; $0D:E2E3: AC 8C 07    ;
CODE_0DE2E6:    BNE CODE_0DE2F6         ; $0D:E2E6: D0 0E       ;
CODE_0DE2E8:    JSR CODE_0DBC49         ; $0D:E2E8: 20 49 BC    ;
CODE_0DE2EB:    BRA CODE_0DE2FA         ; $0D:E2EB: 80 0D       ;

CODE_0DE2ED:    CMP #$2F                ; $0D:E2ED: C9 2F       ;
CODE_0DE2EF:    BEQ CODE_0DE2F6         ; $0D:E2EF: F0 05       ;
CODE_0DE2F1:    LDA #$01                ; $0D:E2F1: A9 01       ;
CODE_0DE2F3:    STA $1600               ; $0D:E2F3: 8D 00 16    ;
CODE_0DE2F6:    LDA #$01                ; $0D:E2F6: A9 01       ;
CODE_0DE2F8:    STA $A0                 ; $0D:E2F8: 85 A0       ;
CODE_0DE2FA:    LDY $EB                 ; $0D:E2FA: A4 EB       ;
CODE_0DE2FC:    LDA $0237               ; $0D:E2FC: AD 37 02    ;
CODE_0DE2FF:    CMP #$CF                ; $0D:E2FF: C9 CF       ;
CODE_0DE301:    BCS CODE_0DE367         ; $0D:E301: B0 64       ;
CODE_0DE303:    STZ $E4                 ; $0D:E303: 64 E4       ;
CODE_0DE305:    JSR CODE_0DEAF6         ; $0D:E305: 20 F6 EA    ;
CODE_0DE308:    JSR CODE_0DE66C         ; $0D:E308: 20 6C E6    ;
CODE_0DE30B:    BCS CODE_0DE323         ; $0D:E30B: B0 16       ;
CODE_0DE30D:    PHA                     ; $0D:E30D: 48          ;
CODE_0DE30E:    STZ $E4                 ; $0D:E30E: 64 E4       ;
CODE_0DE310:    JSR CODE_0DEAF6         ; $0D:E310: 20 F6 EA    ;
CODE_0DE313:    STA $00                 ; $0D:E313: 85 00       ;
CODE_0DE315:    PLA                     ; $0D:E315: 68          ;
CODE_0DE316:    STA $01                 ; $0D:E316: 85 01       ;
CODE_0DE318:    BNE CODE_0DE326         ; $0D:E318: D0 0C       ;
CODE_0DE31A:    LDA $00                 ; $0D:E31A: A5 00       ;
CODE_0DE31C:    BEQ CODE_0DE367         ; $0D:E31C: F0 49       ;
CODE_0DE31E:    JSR CODE_0DE66C         ; $0D:E31E: 20 6C E6    ;
CODE_0DE321:    BCC CODE_0DE326         ; $0D:E321: 90 03       ;
CODE_0DE323:    JMP CODE_0DE420         ; $0D:E323: 4C 20 E4    ;

CODE_0DE326:    JSR CODE_0DE665         ; $0D:E326: 20 65 E6    ;
CODE_0DE329:    BCS CODE_0DE367         ; $0D:E329: B0 3C       ;
CODE_0DE32B:    LDY $A0                 ; $0D:E32B: A4 A0       ;
CODE_0DE32D:    BMI CODE_0DE367         ; $0D:E32D: 30 38       ;
CODE_0DE32F:    CMP #$FE                ; $0D:E32F: C9 FE       ;
CODE_0DE331:    BNE CODE_0DE336         ; $0D:E331: D0 03       ;
CODE_0DE333:    JMP CODE_0DE429         ; $0D:E333: 4C 29 E4    ;

CODE_0DE336:    JSR CODE_0DE55A         ; $0D:E336: 20 5A E5    ;
CODE_0DE339:    BEQ CODE_0DE367         ; $0D:E339: F0 2C       ;
CODE_0DE33B:    LDY $070E               ; $0D:E33B: AC 0E 07    ;
CODE_0DE33E:    BNE CODE_0DE363         ; $0D:E33E: D0 23       ;
CODE_0DE340:    LDY $04                 ; $0D:E340: A4 04       ;
CODE_0DE342:    CPY #$05                ; $0D:E342: C0 05       ;
CODE_0DE344:    BCC CODE_0DE34D         ; $0D:E344: 90 07       ;
CODE_0DE346:    LDA $46                 ; $0D:E346: A5 46       ;
CODE_0DE348:    STA $00                 ; $0D:E348: 85 00       ;
CODE_0DE34A:    JMP CODE_0DE614         ; $0D:E34A: 4C 14 E6    ;

CODE_0DE34D:    JSR CODE_0DE571         ; $0D:E34D: 20 71 E5    ;
CODE_0DE350:    LDA #$F0                ; $0D:E350: A9 F0       ;
CODE_0DE352:    AND $0237               ; $0D:E352: 2D 37 02    ;
CODE_0DE355:    STA $0237               ; $0D:E355: 8D 37 02    ;
CODE_0DE358:    JSR CODE_0DE598         ; $0D:E358: 20 98 E5    ;
CODE_0DE35B:    STZ $A0                 ; $0D:E35B: 64 A0       ;
CODE_0DE35D:    STZ $043C               ; $0D:E35D: 9C 3C 04    ;
CODE_0DE360:    STZ $0284               ; $0D:E360: 9C 84 02    ;
CODE_0DE363:    LDA #$00                ; $0D:E363: A9 00       ;
CODE_0DE365:    STA $28                 ; $0D:E365: 85 28       ;
CODE_0DE367:    LDY $EB                 ; $0D:E367: A4 EB       ;
CODE_0DE369:    INY                     ; $0D:E369: C8          ;
CODE_0DE36A:    INY                     ; $0D:E36A: C8          ;
CODE_0DE36B:    LDA #$02                ; $0D:E36B: A9 02       ;
CODE_0DE36D:    STA $00                 ; $0D:E36D: 85 00       ;
CODE_0DE36F:    INY                     ; $0D:E36F: C8          ;
CODE_0DE370:    STY $EB                 ; $0D:E370: 84 EB       ;
CODE_0DE372:    LDA $0237               ; $0D:E372: AD 37 02    ;
CODE_0DE375:    CMP #$20                ; $0D:E375: C9 20       ;
CODE_0DE377:    BCC CODE_0DE391         ; $0D:E377: 90 18       ;
CODE_0DE379:    CMP #$E4                ; $0D:E379: C9 E4       ;
CODE_0DE37B:    BCS CODE_0DE3AA         ; $0D:E37B: B0 2D       ;
CODE_0DE37D:    STZ $E4                 ; $0D:E37D: 64 E4       ;
CODE_0DE37F:    JSR CODE_0DEAFB         ; $0D:E37F: 20 FB EA    ;
CODE_0DE382:    BEQ CODE_0DE391         ; $0D:E382: F0 0D       ;
CODE_0DE384:    CMP #$25                ; $0D:E384: C9 25       ;
CODE_0DE386:    BEQ CODE_0DE391         ; $0D:E386: F0 09       ;
CODE_0DE388:    CMP #$76                ; $0D:E388: C9 76       ;
CODE_0DE38A:    BEQ CODE_0DE391         ; $0D:E38A: F0 05       ;
CODE_0DE38C:    JSR CODE_0DE665         ; $0D:E38C: 20 65 E6    ;
CODE_0DE38F:    BCC CODE_0DE3AB         ; $0D:E38F: 90 1A       ;
CODE_0DE391:    LDY $EB                 ; $0D:E391: A4 EB       ;
CODE_0DE393:    INY                     ; $0D:E393: C8          ;
CODE_0DE394:    LDA $0237               ; $0D:E394: AD 37 02    ;
CODE_0DE397:    CMP #$08                ; $0D:E397: C9 08       ;
CODE_0DE399:    BCC CODE_0DE3AA         ; $0D:E399: 90 0F       ;
CODE_0DE39B:    CMP #$D0                ; $0D:E39B: C9 D0       ;
CODE_0DE39D:    BCS CODE_0DE3AA         ; $0D:E39D: B0 0B       ;
CODE_0DE39F:    STZ $E4                 ; $0D:E39F: 64 E4       ;
CODE_0DE3A1:    JSR CODE_0DEAFB         ; $0D:E3A1: 20 FB EA    ;
CODE_0DE3A4:    BNE CODE_0DE3AB         ; $0D:E3A4: D0 05       ;
CODE_0DE3A6:    DEC $00                 ; $0D:E3A6: C6 00       ;
CODE_0DE3A8:    BNE CODE_0DE36F         ; $0D:E3A8: D0 C5       ;
CODE_0DE3AA:    RTS                     ; $0D:E3AA: 60          ;

CODE_0DE3AB:    JSR CODE_0DE55A         ; $0D:E3AB: 20 5A E5    ;
CODE_0DE3AE:    BEQ CODE_0DE41D         ; $0D:E3AE: F0 6D       ;
CODE_0DE3B0:    JSR CODE_0DE665         ; $0D:E3B0: 20 65 E6    ;
CODE_0DE3B3:    BCC CODE_0DE3B8         ; $0D:E3B3: 90 03       ;
CODE_0DE3B5:    JMP CODE_0DE47C         ; $0D:E3B5: 4C 7C E4    ;

CODE_0DE3B8:    JSR CODE_0DE66C         ; $0D:E3B8: 20 6C E6    ;
CODE_0DE3BB:    BCS CODE_0DE420         ; $0D:E3BB: B0 63       ;
CODE_0DE3BD:    JSR CODE_0DE58D         ; $0D:E3BD: 20 8D E5    ;
CODE_0DE3C0:    BCC CODE_0DE3CA         ; $0D:E3C0: 90 08       ;
CODE_0DE3C2:    LDA $070E               ; $0D:E3C2: AD 0E 07    ;
CODE_0DE3C5:    BNE CODE_0DE41D         ; $0D:E3C5: D0 56       ;
CODE_0DE3C7:    JMP CODE_0DE41A         ; $0D:E3C7: 4C 1A E4    ;

CODE_0DE3CA:    LDY $28                 ; $0D:E3CA: A4 28       ;
CODE_0DE3CC:    CPY #$00                ; $0D:E3CC: C0 00       ;
CODE_0DE3CE:    BNE CODE_0DE41A         ; $0D:E3CE: D0 4A       ;
CODE_0DE3D0:    LDY $0202               ; $0D:E3D0: AC 02 02    ;
CODE_0DE3D3:    DEY                     ; $0D:E3D3: 88          ;
CODE_0DE3D4:    BNE CODE_0DE41A         ; $0D:E3D4: D0 44       ;
CODE_0DE3D6:    CMP #$77                ; $0D:E3D6: C9 77       ;
CODE_0DE3D8:    BEQ CODE_0DE3DE         ; $0D:E3D8: F0 04       ;
CODE_0DE3DA:    CMP #$28                ; $0D:E3DA: C9 28       ;
CODE_0DE3DC:    BNE CODE_0DE41A         ; $0D:E3DC: D0 3C       ;
CODE_0DE3DE:    LDA $0256               ; $0D:E3DE: AD 56 02    ;
CODE_0DE3E1:    BEQ CODE_0DE3F1         ; $0D:E3E1: F0 0E       ;
CODE_0DE3E3:    LDY $9A                 ; $0D:E3E3: A4 9A       ;
CODE_0DE3E5:    BNE CODE_0DE3F1         ; $0D:E3E5: D0 0A       ;
CODE_0DE3E7:    LDY #$04                ; $0D:E3E7: A0 04       ;
CODE_0DE3E9:    STY $1600               ; $0D:E3E9: 8C 00 16    ;
CODE_0DE3EC:    STY $9A                 ; $0D:E3EC: 84 9A       ;
CODE_0DE3EE:    STZ $07AF               ; $0D:E3EE: 9C AF 07    ;
CODE_0DE3F1:    AND #$CF                ; $0D:E3F1: 29 CF       ;
CODE_0DE3F3:    STA $0256               ; $0D:E3F3: 8D 56 02    ;
CODE_0DE3F6:    LDA $0219               ; $0D:E3F6: AD 19 02    ;
CODE_0DE3F9:    AND #$0F                ; $0D:E3F9: 29 0F       ;
CODE_0DE3FB:    BEQ CODE_0DE40B         ; $0D:E3FB: F0 0E       ;
CODE_0DE3FD:    LDY #$00                ; $0D:E3FD: A0 00       ;
CODE_0DE3FF:    LDA $071A               ; $0D:E3FF: AD 1A 07    ;
CODE_0DE402:    BEQ CODE_0DE405         ; $0D:E402: F0 01       ;
CODE_0DE404:    INY                     ; $0D:E404: C8          ;
CODE_0DE405:    LDA DATA_0DE41E,y       ; $0D:E405: B9 1E E4    ;
CODE_0DE408:    STA $06DE               ; $0D:E408: 8D DE 06    ;
CODE_0DE40B:    LDA $0F                 ; $0D:E40B: A5 0F       ;
CODE_0DE40D:    CMP #$07                ; $0D:E40D: C9 07       ;
CODE_0DE40F:    BEQ CODE_0DE41D         ; $0D:E40F: F0 0C       ;
CODE_0DE411:    CMP #$08                ; $0D:E411: C9 08       ;
CODE_0DE413:    BNE CODE_0DE41D         ; $0D:E413: D0 08       ;
CODE_0DE415:    LDA #$02                ; $0D:E415: A9 02       ;
CODE_0DE417:    STA $0F                 ; $0D:E417: 85 0F       ;
CODE_0DE419:    RTS                     ; $0D:E419: 60          ;

CODE_0DE41A:    JSR CODE_0DE614         ; $0D:E41A: 20 14 E6    ;
CODE_0DE41D:    RTS                     ; $0D:E41D: 60          ;

DATA_0DE41E:        db $34,$34

CODE_0DE420:    JSR CODE_0DE46A         ; $0D:E420: 20 6A E4    ;
CODE_0DE423:    INC $0748               ; $0D:E423: EE 48 07    ;
CODE_0DE426:    JMP CODE_0DBAFF         ; $0D:E426: 4C FF BA    ;

CODE_0DE429:    STZ $0772               ; $0D:E429: 9C 72 07    ;
CODE_0DE42C:    LDA #$02                ; $0D:E42C: A9 02       ;
CODE_0DE42E:    STA $0770               ; $0D:E42E: 8D 70 07    ;
CODE_0DE431:    LDA $2142               ; $0D:E431: AD 42 21    ;
CODE_0DE434:    CMP #$0B                ; $0D:E434: C9 0B       ;
CODE_0DE436:    BEQ CODE_0DE43D         ; $0D:E436: F0 05       ;
CODE_0DE438:    LDA #$F0                ; $0D:E438: A9 F0       ;
CODE_0DE43A:    STA $1602               ; $0D:E43A: 8D 02 16    ;
CODE_0DE43D:    LDA #$18                ; $0D:E43D: A9 18       ;
CODE_0DE43F:    STA $5D                 ; $0D:E43F: 85 5D       ;
CODE_0DE441:    PHX                     ; $0D:E441: DA          ;
CODE_0DE442:    LDX #$00                ; $0D:E442: A2 00       ;
CODE_0DE444:    LDA $1C,x               ; $0D:E444: B5 1C       ;
CODE_0DE446:    CMP #$2D                ; $0D:E446: C9 2D       ;
CODE_0DE448:    BNE CODE_0DE464         ; $0D:E448: D0 1A       ;
CODE_0DE44A:    LDA $10,x               ; $0D:E44A: B5 10       ;
CODE_0DE44C:    CMP #$01                ; $0D:E44C: C9 01       ;
CODE_0DE44E:    BNE CODE_0DE464         ; $0D:E44E: D0 14       ;
CODE_0DE450:    LDA $021A,x             ; $0D:E450: BD 1A 02    ;
CODE_0DE453:    SEC                     ; $0D:E453: 38          ;
CODE_0DE454:    SBC $073F               ; $0D:E454: ED 3F 07    ;
CODE_0DE457:    STA $03AE               ; $0D:E457: 8D AE 03    ;
CODE_0DE45A:    LDA $0238,x             ; $0D:E45A: BD 38 02    ;
CODE_0DE45D:    STA $03B9               ; $0D:E45D: 8D B9 03    ;
CODE_0DE460:    JSL CODE_0FD73D         ; $0D:E460: 22 3D D7 0F ;
CODE_0DE464:    INX                     ; $0D:E464: E8          ;
CODE_0DE465:    CPX #$09                ; $0D:E465: E0 09       ;
CODE_0DE467:    BNE CODE_0DE444         ; $0D:E467: D0 DB       ;
CODE_0DE469:    PLX                     ; $0D:E469: FA          ;
CODE_0DE46A:    LDY $02                 ; $0D:E46A: A4 02       ;
CODE_0DE46C:    LDA #$00                ; $0D:E46C: A9 00       ;
CODE_0DE46E:    STA ($06),y             ; $0D:E46E: 91 06       ;
CODE_0DE470:    JMP CODE_0D9046         ; $0D:E470: 4C 46 90    ;

DATA_0DE473:        db $F9,$07,$FF,$00

DATA_0DE477:        db $18,$22,$50,$68,$90

CODE_0DE47C:    LDY $04                 ; $0D:E47C: A4 04       ;
CODE_0DE47E:    CPY #$06                ; $0D:E47E: C0 06       ;
CODE_0DE480:    BCC CODE_0DE486         ; $0D:E480: 90 04       ;
CODE_0DE482:    CPY #$0A                ; $0D:E482: C0 0A       ;
CODE_0DE484:    BCC CODE_0DE487         ; $0D:E484: 90 01       ;
CODE_0DE486:    RTS                     ; $0D:E486: 60          ;

CODE_0DE487:    CMP #$2D                ; $0D:E487: C9 2D       ;
CODE_0DE489:    BEQ CODE_0DE48F         ; $0D:E489: F0 04       ;
CODE_0DE48B:    CMP #$2E                ; $0D:E48B: C9 2E       ;
CODE_0DE48D:    BNE CODE_0DE4E0         ; $0D:E48D: D0 51       ;
CODE_0DE48F:    LDA $0F                 ; $0D:E48F: A5 0F       ;
CODE_0DE491:    CMP #$05                ; $0D:E491: C9 05       ;
CODE_0DE493:    BEQ CODE_0DE4EF         ; $0D:E493: F0 5A       ;
CODE_0DE495:    INC $0723               ; $0D:E495: EE 23 07    ;
CODE_0DE498:    LDA $0F                 ; $0D:E498: A5 0F       ;
CODE_0DE49A:    CMP #$04                ; $0D:E49A: C9 04       ;
CODE_0DE49C:    BEQ CODE_0DE4DA         ; $0D:E49C: F0 3C       ;
CODE_0DE49E:    LDA #$33                ; $0D:E49E: A9 33       ;
CODE_0DE4A0:    JSR CODE_0DA61A         ; $0D:E4A0: 20 1A A6    ;
CODE_0DE4A3:    JSL CODE_0E877D         ; $0D:E4A3: 22 7D 87 0E ;
CODE_0DE4A7:    LDA #$F0                ; $0D:E4A7: A9 F0       ;
CODE_0DE4A9:    STA $1602               ; $0D:E4A9: 8D 02 16    ;
CODE_0DE4AC:    LDA #$46                ; $0D:E4AC: A9 46       ;
CODE_0DE4AE:    STA $1600               ; $0D:E4AE: 8D 00 16    ;
CODE_0DE4B1:    LSR A                   ; $0D:E4B1: 4A          ;
CODE_0DE4B2:    STA $0713               ; $0D:E4B2: 8D 13 07    ;
CODE_0DE4B5:    LDX #$04                ; $0D:E4B5: A2 04       ;
CODE_0DE4B7:    LDA $0237               ; $0D:E4B7: AD 37 02    ;
CODE_0DE4BA:    STA $070F               ; $0D:E4BA: 8D 0F 07    ;
CODE_0DE4BD:    CMP DATA_0DE477,x       ; $0D:E4BD: DD 77 E4    ;
CODE_0DE4C0:    BCS CODE_0DE4C5         ; $0D:E4C0: B0 03       ;
CODE_0DE4C2:    DEX                     ; $0D:E4C2: CA          ;
CODE_0DE4C3:    BNE CODE_0DE4BD         ; $0D:E4C3: D0 F8       ;
CODE_0DE4C5:    STX $010F               ; $0D:E4C5: 8E 0F 01    ;
CODE_0DE4C8:    LDA $07DE               ; $0D:E4C8: AD DE 07    ;
CODE_0DE4CB:    CMP $07DF               ; $0D:E4CB: CD DF 07    ;
CODE_0DE4CE:    BNE CODE_0DE4DA         ; $0D:E4CE: D0 0A       ;
CODE_0DE4D0:    CMP $07EB               ; $0D:E4D0: CD EB 07    ;
CODE_0DE4D3:    BNE CODE_0DE4DA         ; $0D:E4D3: D0 05       ;
CODE_0DE4D5:    LDA #$05                ; $0D:E4D5: A9 05       ;
CODE_0DE4D7:    STA $010F               ; $0D:E4D7: 8D 0F 01    ;
CODE_0DE4DA:    LDA #$04                ; $0D:E4DA: A9 04       ;
CODE_0DE4DC:    STA $0F                 ; $0D:E4DC: 85 0F       ;
CODE_0DE4DE:    BRA CODE_0DE4EF         ; $0D:E4DE: 80 0F       ;

CODE_0DE4E0:    CMP #$2F                ; $0D:E4E0: C9 2F       ;
CODE_0DE4E2:    BNE CODE_0DE4EF         ; $0D:E4E2: D0 0B       ;
CODE_0DE4E4:    LDA $0237               ; $0D:E4E4: AD 37 02    ;
CODE_0DE4E7:    CMP #$20                ; $0D:E4E7: C9 20       ;
CODE_0DE4E9:    BCS CODE_0DE4EF         ; $0D:E4E9: B0 04       ;
CODE_0DE4EB:    LDA #$01                ; $0D:E4EB: A9 01       ;
CODE_0DE4ED:    STA $0F                 ; $0D:E4ED: 85 0F       ;
CODE_0DE4EF:    LDA #$03                ; $0D:E4EF: A9 03       ;
CODE_0DE4F1:    STA $28                 ; $0D:E4F1: 85 28       ;
CODE_0DE4F3:    STZ $5D                 ; $0D:E4F3: 64 5D       ;
CODE_0DE4F5:    STZ $0705               ; $0D:E4F5: 9C 05 07    ;
CODE_0DE4F8:    LDA $0398               ; $0D:E4F8: AD 98 03    ;
CODE_0DE4FB:    BEQ CODE_0DE52C         ; $0D:E4FB: F0 2F       ;
CODE_0DE4FD:    LDA $03AE               ; $0D:E4FD: AD AE 03    ;
CODE_0DE500:    BPL CODE_0DE52C         ; $0D:E500: 10 2A       ;
CODE_0DE502:    CMP #$F8                ; $0D:E502: C9 F8       ;
CODE_0DE504:    BCC CODE_0DE52C         ; $0D:E504: 90 26       ;
CODE_0DE506:    LDA $0082               ; $0D:E506: AD 82 00    ;
CODE_0DE509:    STA $E5                 ; $0D:E509: 85 E5       ;
CODE_0DE50B:    LDA $0223               ; $0D:E50B: AD 23 02    ;
CODE_0DE50E:    STA $E4                 ; $0D:E50E: 85 E4       ;
CODE_0DE510:    REP #$20                ; $0D:E510: C2 20       ;
CODE_0DE512:    LDA $E4                 ; $0D:E512: A5 E4       ;
CODE_0DE514:    CLC                     ; $0D:E514: 18          ;
CODE_0DE515:    ADC #$0007              ; $0D:E515: 69 07 00    ;
CODE_0DE518:    STA $E4                 ; $0D:E518: 85 E4       ;
CODE_0DE51A:    SEP #$20                ; $0D:E51A: E2 20       ;
CODE_0DE51C:    LDA $E4                 ; $0D:E51C: A5 E4       ;
CODE_0DE51E:    STA $0219               ; $0D:E51E: 8D 19 02    ;
CODE_0DE521:    LDA $E5                 ; $0D:E521: A5 E5       ;
CODE_0DE523:    STA $78                 ; $0D:E523: 85 78       ;
CODE_0DE525:    LDA #$02                ; $0D:E525: A9 02       ;
CODE_0DE527:    STA $0202               ; $0D:E527: 8D 02 02    ;
CODE_0DE52A:    BRA CODE_0DE559         ; $0D:E52A: 80 2D       ;

CODE_0DE52C:    LDA $0219               ; $0D:E52C: AD 19 02    ;
CODE_0DE52F:    SEC                     ; $0D:E52F: 38          ;
CODE_0DE530:    SBC $071C               ; $0D:E530: ED 1C 07    ;
CODE_0DE533:    CMP #$10                ; $0D:E533: C9 10       ;
CODE_0DE535:    BCS CODE_0DE53C         ; $0D:E535: B0 05       ;
CODE_0DE537:    LDA #$02                ; $0D:E537: A9 02       ;
CODE_0DE539:    STA $0202               ; $0D:E539: 8D 02 02    ;
CODE_0DE53C:    LDY $0202               ; $0D:E53C: AC 02 02    ;
CODE_0DE53F:    LDA $06                 ; $0D:E53F: A5 06       ;
CODE_0DE541:    ASL A                   ; $0D:E541: 0A          ;
CODE_0DE542:    ASL A                   ; $0D:E542: 0A          ;
CODE_0DE543:    ASL A                   ; $0D:E543: 0A          ;
CODE_0DE544:    ASL A                   ; $0D:E544: 0A          ;
CODE_0DE545:    CLC                     ; $0D:E545: 18          ;
CODE_0DE546:    ADC DATA_0DE473-1,y     ; $0D:E546: 79 72 E4    ;
CODE_0DE549:    STA $0219               ; $0D:E549: 8D 19 02    ;
CODE_0DE54C:    LDA $06                 ; $0D:E54C: A5 06       ;
CODE_0DE54E:    BNE CODE_0DE559         ; $0D:E54E: D0 09       ;
CODE_0DE550:    LDA $071B               ; $0D:E550: AD 1B 07    ;
CODE_0DE553:    CLC                     ; $0D:E553: 18          ;
CODE_0DE554:    ADC DATA_0DE473+1,y     ; $0D:E554: 79 74 E4    ;
CODE_0DE557:    STA $78                 ; $0D:E557: 85 78       ;
CODE_0DE559:    RTS                     ; $0D:E559: 60          ;

CODE_0DE55A:    CMP #$5C                ; $0D:E55A: C9 5C       ;
CODE_0DE55C:    BEQ CODE_0DE570         ; $0D:E55C: F0 12       ;
CODE_0DE55E:    CMP #$5D                ; $0D:E55E: C9 5D       ;
CODE_0DE560:    BEQ CODE_0DE570         ; $0D:E560: F0 0E       ;
CODE_0DE562:    CMP #$5E                ; $0D:E562: C9 5E       ;
CODE_0DE564:    BEQ CODE_0DE570         ; $0D:E564: F0 0A       ;
CODE_0DE566:    CMP #$60                ; $0D:E566: C9 60       ;
CODE_0DE568:    BEQ CODE_0DE570         ; $0D:E568: F0 06       ;
CODE_0DE56A:    CMP #$61                ; $0D:E56A: C9 61       ;
CODE_0DE56C:    BEQ CODE_0DE570         ; $0D:E56C: F0 02       ;
CODE_0DE56E:    CMP #$5F                ; $0D:E56E: C9 5F       ;
CODE_0DE570:    RTS                     ; $0D:E570: 60          ;

CODE_0DE571:    JSR CODE_0DE58D         ; $0D:E571: 20 8D E5    ;
CODE_0DE574:    BCC CODE_0DE58C         ; $0D:E574: 90 16       ;
CODE_0DE576:    LDA #$70                ; $0D:E576: A9 70       ;
CODE_0DE578:    STA $0709               ; $0D:E578: 8D 09 07    ;
CODE_0DE57B:    STA $070A               ; $0D:E57B: 8D 0A 07    ;
CODE_0DE57E:    LDA #$F9                ; $0D:E57E: A9 F9       ;
CODE_0DE580:    STA $06DB               ; $0D:E580: 8D DB 06    ;
CODE_0DE583:    LDA #$03                ; $0D:E583: A9 03       ;
CODE_0DE585:    STA $078E               ; $0D:E585: 8D 8E 07    ;
CODE_0DE588:    LSR A                   ; $0D:E588: 4A          ;
CODE_0DE589:    STA $070E               ; $0D:E589: 8D 0E 07    ;
CODE_0DE58C:    RTS                     ; $0D:E58C: 60          ;

CODE_0DE58D:    CMP #$6E                ; $0D:E58D: C9 6E       ;
CODE_0DE58F:    BEQ CODE_0DE596         ; $0D:E58F: F0 05       ;
CODE_0DE591:    CMP #$6F                ; $0D:E591: C9 6F       ;
CODE_0DE593:    CLC                     ; $0D:E593: 18          ;
CODE_0DE594:    BNE CODE_0DE597         ; $0D:E594: D0 01       ;
CODE_0DE596:    SEC                     ; $0D:E596: 38          ;
CODE_0DE597:    RTS                     ; $0D:E597: 60          ;

CODE_0DE598:    LDA $0B                 ; $0D:E598: A5 0B       ;
CODE_0DE59A:    AND #$04                ; $0D:E59A: 29 04       ;
CODE_0DE59C:    BEQ CODE_0DE613         ; $0D:E59C: F0 75       ;
CODE_0DE59E:    LDA $00                 ; $0D:E59E: A5 00       ;
CODE_0DE5A0:    CMP #$17                ; $0D:E5A0: C9 17       ;
CODE_0DE5A2:    BNE CODE_0DE613         ; $0D:E5A2: D0 6F       ;
CODE_0DE5A4:    LDA $01                 ; $0D:E5A4: A5 01       ;
CODE_0DE5A6:    CMP #$16                ; $0D:E5A6: C9 16       ;
CODE_0DE5A8:    BNE CODE_0DE613         ; $0D:E5A8: D0 69       ;
CODE_0DE5AA:    LDA #$30                ; $0D:E5AA: A9 30       ;
CODE_0DE5AC:    STA $06DE               ; $0D:E5AC: 8D DE 06    ;
CODE_0DE5AF:    LDA #$03                ; $0D:E5AF: A9 03       ;
CODE_0DE5B1:    STA $0F                 ; $0D:E5B1: 85 0F       ;
CODE_0DE5B3:    LDA #$04                ; $0D:E5B3: A9 04       ;
CODE_0DE5B5:    STA $07AE               ; $0D:E5B5: 8D AE 07    ;
CODE_0DE5B8:    STZ $07AF               ; $0D:E5B8: 9C AF 07    ;
CODE_0DE5BB:    LDA #$00                ; $0D:E5BB: A9 00       ;
CODE_0DE5BD:    STA $0256               ; $0D:E5BD: 8D 56 02    ;
CODE_0DE5C0:    LDA $06D6               ; $0D:E5C0: AD D6 06    ;
CODE_0DE5C3:    BEQ CODE_0DE60D         ; $0D:E5C3: F0 48       ;
CODE_0DE5C5:    AND #$0F                ; $0D:E5C5: 29 0F       ;
CODE_0DE5C7:    TAX                     ; $0D:E5C7: AA          ;
CODE_0DE5C8:    LDA $075F               ; $0D:E5C8: AD 5F 07    ;
CODE_0DE5CB:    CMP #$08                ; $0D:E5CB: C9 08       ;
CODE_0DE5CD:    BCS CODE_0DE5D4         ; $0D:E5CD: B0 05       ;
CODE_0DE5CF:    LDA #$01                ; $0D:E5CF: A9 01       ;
CODE_0DE5D1:    STA $0F2B               ; $0D:E5D1: 8D 2B 0F    ;
CODE_0DE5D4:    LDA DATA_0D8D98,x       ; $0D:E5D4: BD 98 8D    ;
CODE_0DE5D7:    TAY                     ; $0D:E5D7: A8          ;
CODE_0DE5D8:    DEY                     ; $0D:E5D8: 88          ;
CODE_0DE5D9:    STY $075F               ; $0D:E5D9: 8C 5F 07    ;
CODE_0DE5DC:    LDX.w DATA_0EC499,y     ; $0D:E5DC: BE 99 C4    ; ??? leftover code? X immediately gets overwritten.
CODE_0DE5DF:    TYX                     ; $0D:E5DF: BB          ;
CODE_0DE5E0:    LDA.l DATA_0EC499,x     ; $0D:E5E0: BF 99 C4 0E ;
CODE_0DE5E4:    TAX                     ; $0D:E5E4: AA          ;
CODE_0DE5E5:    LDA.l DATA_0EC4A6,x     ; $0D:E5E5: BF A6 C4 0E ;
CODE_0DE5E9:    STA $0750               ; $0D:E5E9: 8D 50 07    ;
CODE_0DE5EC:    LDA #$80                ; $0D:E5EC: A9 80       ;
CODE_0DE5EE:    STA $1602               ; $0D:E5EE: 8D 02 16    ;
CODE_0DE5F1:    LDA #$00                ; $0D:E5F1: A9 00       ;
CODE_0DE5F3:    STA $0751               ; $0D:E5F3: 8D 51 07    ;
CODE_0DE5F6:    STA $0760               ; $0D:E5F6: 8D 60 07    ;
CODE_0DE5F9:    STA $075C               ; $0D:E5F9: 8D 5C 07    ;
CODE_0DE5FC:    STA $0752               ; $0D:E5FC: 8D 52 07    ;
CODE_0DE5FF:    INC $075D               ; $0D:E5FF: EE 5D 07    ;
CODE_0DE602:    INC $0757               ; $0D:E602: EE 57 07    ;
CODE_0DE605:    LDA #$F3                ; $0D:E605: A9 F3       ;
CODE_0DE607:    STA $1602               ; $0D:E607: 8D 02 16    ;
CODE_0DE60A:    STA $0E1A               ; $0D:E60A: 8D 1A 0E    ;
CODE_0DE60D:    LDA #$04                ; $0D:E60D: A9 04       ;
CODE_0DE60F:    STA $1600               ; $0D:E60F: 8D 00 16    ;
CODE_0DE612:    RTS                     ; $0D:E612: 60          ;

CODE_0DE613:    RTS                     ; $0D:E613: 60          ;

CODE_0DE614:    LDA #$00                ; $0D:E614: A9 00       ;
CODE_0DE616:    LDY $5D                 ; $0D:E616: A4 5D       ;
CODE_0DE618:    LDX $00                 ; $0D:E618: A6 00       ;
CODE_0DE61A:    DEX                     ; $0D:E61A: CA          ;
CODE_0DE61B:    BNE CODE_0DE627         ; $0D:E61B: D0 0A       ;
CODE_0DE61D:    INX                     ; $0D:E61D: E8          ;
CODE_0DE61E:    CPY #$00                ; $0D:E61E: C0 00       ;
CODE_0DE620:    BMI CODE_0DE64C         ; $0D:E620: 30 2A       ;
CODE_0DE622:    LDA #$FF                ; $0D:E622: A9 FF       ;
CODE_0DE624:    JMP CODE_0DE62F         ; $0D:E624: 4C 2F E6    ;

CODE_0DE627:    LDX #$02                ; $0D:E627: A2 02       ;
CODE_0DE629:    CPY #$01                ; $0D:E629: C0 01       ;
CODE_0DE62B:    BPL CODE_0DE64C         ; $0D:E62B: 10 1F       ;
CODE_0DE62D:    LDA #$01                ; $0D:E62D: A9 01       ;
CODE_0DE62F:    LDY #$10                ; $0D:E62F: A0 10       ;
CODE_0DE631:    STY $078D               ; $0D:E631: 8C 8D 07    ;
CODE_0DE634:    LDY #$00                ; $0D:E634: A0 00       ;
CODE_0DE636:    STY $5D                 ; $0D:E636: 84 5D       ;
CODE_0DE638:    CMP #$00                ; $0D:E638: C9 00       ;
CODE_0DE63A:    BPL CODE_0DE63D         ; $0D:E63A: 10 01       ;
CODE_0DE63C:    DEY                     ; $0D:E63C: 88          ;
CODE_0DE63D:    STY $00                 ; $0D:E63D: 84 00       ;
CODE_0DE63F:    CLC                     ; $0D:E63F: 18          ;
CODE_0DE640:    ADC $0219               ; $0D:E640: 6D 19 02    ;
CODE_0DE643:    STA $0219               ; $0D:E643: 8D 19 02    ;
CODE_0DE646:    LDA $78                 ; $0D:E646: A5 78       ;
CODE_0DE648:    ADC $00                 ; $0D:E648: 65 00       ;
CODE_0DE64A:    STA $78                 ; $0D:E64A: 85 78       ;
CODE_0DE64C:    TXA                     ; $0D:E64C: 8A          ;
CODE_0DE64D:    EOR #$FF                ; $0D:E64D: 49 FF       ;
CODE_0DE64F:    AND $0480               ; $0D:E64F: 2D 80 04    ;
CODE_0DE652:    STA $0480               ; $0D:E652: 8D 80 04    ;
CODE_0DE655:    RTS                     ; $0D:E655: 60          ;

DATA_0DE656:        db $16,$62,$86,$FD

CODE_0DE65A:    JSR CODE_0DE67C         ; $0D:E65A: 20 7C E6    ;
CODE_0DE65D:    CMP DATA_0DE656,x       ; $0D:E65D: DD 56 E6    ;
CODE_0DE660:    RTS                     ; $0D:E660: 60          ;

DATA_0DE661:        db $2D,$78,$88,$FF

CODE_0DE665:    JSR CODE_0DE67C         ; $0D:E665: 20 7C E6    ;
CODE_0DE668:    CMP DATA_0DE661,x       ; $0D:E668: DD 61 E6    ;
CODE_0DE66B:    RTS                     ; $0D:E66B: 60          ;

CODE_0DE66C:    CMP #$EA                ; $0D:E66C: C9 EA       ;
CODE_0DE66E:    BEQ CODE_0DE676         ; $0D:E66E: F0 06       ;
CODE_0DE670:    CMP #$EB                ; $0D:E670: C9 EB       ;
CODE_0DE672:    BEQ CODE_0DE676         ; $0D:E672: F0 02       ;
CODE_0DE674:    CLC                     ; $0D:E674: 18          ;
CODE_0DE675:    RTS                     ; $0D:E675: 60          ;

CODE_0DE676:    LDA #$01                ; $0D:E676: A9 01       ;
CODE_0DE678:    STA $1603               ; $0D:E678: 8D 03 16    ;
CODE_0DE67B:    RTS                     ; $0D:E67B: 60          ;

CODE_0DE67C:    TAY                     ; $0D:E67C: A8          ;
CODE_0DE67D:    AND #$C0                ; $0D:E67D: 29 C0       ;
CODE_0DE67F:    ASL A                   ; $0D:E67F: 0A          ;
CODE_0DE680:    ROL A                   ; $0D:E680: 2A          ;
CODE_0DE681:    ROL A                   ; $0D:E681: 2A          ;
CODE_0DE682:    TAX                     ; $0D:E682: AA          ;
CODE_0DE683:    TYA                     ; $0D:E683: 98          ;
CODE_0DE684:    RTS                     ; $0D:E684: 60          ;

DATA_0DE685:        db $01,$01,$02,$02,$02,$05

DATA_0DE68B:        db $10,$F0

CODE_0DE68D:    LDA $29,x               ; $0D:E68D: B5 29       ;
CODE_0DE68F:    AND #$20                ; $0D:E68F: 29 20       ;
CODE_0DE691:    BNE CODE_0DE684         ; $0D:E691: D0 F1       ;
CODE_0DE693:    JSR CODE_0DE844         ; $0D:E693: 20 44 E8    ;
CODE_0DE696:    BCC CODE_0DE684         ; $0D:E696: 90 EC       ;
CODE_0DE698:    LDY $1C,x               ; $0D:E698: B4 1C       ;
CODE_0DE69A:    CPY #$12                ; $0D:E69A: C0 12       ;
CODE_0DE69C:    BNE CODE_0DE6A5         ; $0D:E69C: D0 07       ;
CODE_0DE69E:    LDA $0238,x             ; $0D:E69E: BD 38 02    ;
CODE_0DE6A1:    CMP #$25                ; $0D:E6A1: C9 25       ;
CODE_0DE6A3:    BCC CODE_0DE684         ; $0D:E6A3: 90 DF       ;
CODE_0DE6A5:    CPY #$0E                ; $0D:E6A5: C0 0E       ;
CODE_0DE6A7:    BNE CODE_0DE6AC         ; $0D:E6A7: D0 03       ;
CODE_0DE6A9:    JMP CODE_0DE84D         ; $0D:E6A9: 4C 4D E8    ;

CODE_0DE6AC:    CPY #$05                ; $0D:E6AC: C0 05       ;
CODE_0DE6AE:    BNE CODE_0DE6B4         ; $0D:E6AE: D0 04       ;
CODE_0DE6B0:    JMP CODE_0DE86F         ; $0D:E6B0: 4C 6F E8    ;

CODE_0DE6B3:    RTS                     ; $0D:E6B3: 60          ;

CODE_0DE6B4:    CPY #$12                ; $0D:E6B4: C0 12       ;
CODE_0DE6B6:    BEQ CODE_0DE6C4         ; $0D:E6B6: F0 0C       ;
CODE_0DE6B8:    CPY #$2E                ; $0D:E6B8: C0 2E       ;
CODE_0DE6BA:    BEQ CODE_0DE6C4         ; $0D:E6BA: F0 08       ;
CODE_0DE6BC:    CPY #$04                ; $0D:E6BC: C0 04       ;
CODE_0DE6BE:    BEQ CODE_0DE6B3         ; $0D:E6BE: F0 F3       ;
CODE_0DE6C0:    CPY #$07                ; $0D:E6C0: C0 07       ;
CODE_0DE6C2:    BCS CODE_0DE6B3         ; $0D:E6C2: B0 EF       ;
CODE_0DE6C4:    JSR CODE_0DE898         ; $0D:E6C4: 20 98 E8    ;
CODE_0DE6C7:    BNE CODE_0DE6CC         ; $0D:E6C7: D0 03       ;
CODE_0DE6C9:    JMP CODE_0DE7BE         ; $0D:E6C9: 4C BE E7    ;

CODE_0DE6CC:    JSR CODE_0DE89F         ; $0D:E6CC: 20 9F E8    ;
CODE_0DE6CF:    BEQ CODE_0DE6C9         ; $0D:E6CF: F0 F8       ;
CODE_0DE6D1:    CMP #$2C                ; $0D:E6D1: C9 2C       ;
CODE_0DE6D3:    BNE CODE_0DE743         ; $0D:E6D3: D0 6E       ;
CODE_0DE6D5:    LDA $1C,x               ; $0D:E6D5: B5 1C       ;
CODE_0DE6D7:    CMP #$15                ; $0D:E6D7: C9 15       ;
CODE_0DE6D9:    BCS CODE_0DE6E7         ; $0D:E6D9: B0 0C       ;
CODE_0DE6DB:    CMP #$06                ; $0D:E6DB: C9 06       ;
CODE_0DE6DD:    BNE CODE_0DE6E2         ; $0D:E6DD: D0 03       ;
CODE_0DE6DF:    JSR CODE_0DE878         ; $0D:E6DF: 20 78 E8    ;
CODE_0DE6E2:    LDA #$01                ; $0D:E6E2: A9 01       ;
CODE_0DE6E4:    JSR CODE_0DDFC3         ; $0D:E6E4: 20 C3 DF    ;
CODE_0DE6E7:    LDA $001C,x             ; $0D:E6E7: BD 1C 00    ;
CODE_0DE6EA:    CMP #$09                ; $0D:E6EA: C9 09       ;
CODE_0DE6EC:    BCC CODE_0DE706         ; $0D:E6EC: 90 18       ;
CODE_0DE6EE:    CMP #$11                ; $0D:E6EE: C9 11       ;
CODE_0DE6F0:    BCS CODE_0DE706         ; $0D:E6F0: B0 14       ;
CODE_0DE6F2:    CMP #$0D                ; $0D:E6F2: C9 0D       ;
CODE_0DE6F4:    BEQ CODE_0DE706         ; $0D:E6F4: F0 10       ;
CODE_0DE6F6:    CMP #$04                ; $0D:E6F6: C9 04       ;
CODE_0DE6F8:    BEQ CODE_0DE706         ; $0D:E6F8: F0 0C       ;
CODE_0DE6FA:    CMP #$0A                ; $0D:E6FA: C9 0A       ;
CODE_0DE6FC:    BCC CODE_0DE702         ; $0D:E6FC: 90 04       ;
CODE_0DE6FE:    CMP #$0D                ; $0D:E6FE: C9 0D       ;
CODE_0DE700:    BCC CODE_0DE706         ; $0D:E700: 90 04       ;
CODE_0DE702:    AND #$01                ; $0D:E702: 29 01       ;
CODE_0DE704:    STA $1C,x               ; $0D:E704: 95 1C       ;
CODE_0DE706:    CMP #$2E                ; $0D:E706: C9 2E       ;
CODE_0DE708:    BEQ CODE_0DE712         ; $0D:E708: F0 08       ;
CODE_0DE70A:    CMP #$06                ; $0D:E70A: C9 06       ;
CODE_0DE70C:    BEQ CODE_0DE712         ; $0D:E70C: F0 04       ;
CODE_0DE70E:    LDA #$02                ; $0D:E70E: A9 02       ;
CODE_0DE710:    STA $29,x               ; $0D:E710: 95 29       ;
CODE_0DE712:    DEC $0238,x             ; $0D:E712: DE 38 02    ;
CODE_0DE715:    DEC $0238,x             ; $0D:E715: DE 38 02    ;
CODE_0DE718:    LDA $1C,x               ; $0D:E718: B5 1C       ;
CODE_0DE71A:    CMP #$07                ; $0D:E71A: C9 07       ;
CODE_0DE71C:    BEQ CODE_0DE724         ; $0D:E71C: F0 06       ;
CODE_0DE71E:    LDA #$FD                ; $0D:E71E: A9 FD       ;
CODE_0DE720:    LDY $5C                 ; $0D:E720: A4 5C       ;
CODE_0DE722:    BNE CODE_0DE726         ; $0D:E722: D0 02       ;
CODE_0DE724:    LDA #$FF                ; $0D:E724: A9 FF       ;
CODE_0DE726:    STA $A1,x               ; $0D:E726: 95 A1       ;
CODE_0DE728:    LDY #$01                ; $0D:E728: A0 01       ;
CODE_0DE72A:    JSR CODE_0DE828         ; $0D:E72A: 20 28 E8    ;
CODE_0DE72D:    BPL CODE_0DE730         ; $0D:E72D: 10 01       ;
CODE_0DE72F:    INY                     ; $0D:E72F: C8          ;
CODE_0DE730:    LDA $1C,x               ; $0D:E730: B5 1C       ;
CODE_0DE732:    CMP #$33                ; $0D:E732: C9 33       ;
CODE_0DE734:    BEQ CODE_0DE73C         ; $0D:E734: F0 06       ;
CODE_0DE736:    CMP #$08                ; $0D:E736: C9 08       ;
CODE_0DE738:    BEQ CODE_0DE73C         ; $0D:E738: F0 02       ;
CODE_0DE73A:    STY $47,x               ; $0D:E73A: 94 47       ;
CODE_0DE73C:    DEY                     ; $0D:E73C: 88          ;
CODE_0DE73D:    LDA DATA_0DE68B,y       ; $0D:E73D: B9 8B E6    ;
CODE_0DE740:    STA $5E,x               ; $0D:E740: 95 5E       ;
CODE_0DE742:    RTS                     ; $0D:E742: 60          ;

CODE_0DE743:    LDA $04                 ; $0D:E743: A5 04       ;
CODE_0DE745:    SEC                     ; $0D:E745: 38          ;
CODE_0DE746:    SBC #$08                ; $0D:E746: E9 08       ;
CODE_0DE748:    CMP #$05                ; $0D:E748: C9 05       ;
CODE_0DE74A:    BCS CODE_0DE7BE         ; $0D:E74A: B0 72       ;
CODE_0DE74C:    LDA $29,x               ; $0D:E74C: B5 29       ;
CODE_0DE74E:    AND #$40                ; $0D:E74E: 29 40       ;
CODE_0DE750:    BNE CODE_0DE7A9         ; $0D:E750: D0 57       ;
CODE_0DE752:    LDA $29,x               ; $0D:E752: B5 29       ;
CODE_0DE754:    ASL A                   ; $0D:E754: 0A          ;
CODE_0DE755:    BCC CODE_0DE75A         ; $0D:E755: 90 03       ;
CODE_0DE757:    JMP CODE_0DE7D9         ; $0D:E757: 4C D9 E7    ;

CODE_0DE75A:    LDA $29,x               ; $0D:E75A: B5 29       ;
CODE_0DE75C:    BEQ CODE_0DE757         ; $0D:E75C: F0 F9       ;
CODE_0DE75E:    CMP #$05                ; $0D:E75E: C9 05       ;
CODE_0DE760:    BEQ CODE_0DE781         ; $0D:E760: F0 1F       ;
CODE_0DE762:    CMP #$03                ; $0D:E762: C9 03       ;
CODE_0DE764:    BCS CODE_0DE780         ; $0D:E764: B0 1A       ;
CODE_0DE766:    LDA $29,x               ; $0D:E766: B5 29       ;
CODE_0DE768:    CMP #$02                ; $0D:E768: C9 02       ;
CODE_0DE76A:    BNE CODE_0DE781         ; $0D:E76A: D0 15       ;
CODE_0DE76C:    LDA #$10                ; $0D:E76C: A9 10       ;
CODE_0DE76E:    LDY $1C,x               ; $0D:E76E: B4 1C       ;
CODE_0DE770:    CPY #$12                ; $0D:E770: C0 12       ;
CODE_0DE772:    BNE CODE_0DE776         ; $0D:E772: D0 02       ;
CODE_0DE774:    LDA #$00                ; $0D:E774: A9 00       ;
CODE_0DE776:    STA $07A2,x             ; $0D:E776: 9D A2 07    ;
CODE_0DE779:    LDA #$03                ; $0D:E779: A9 03       ;
CODE_0DE77B:    STA $29,x               ; $0D:E77B: 95 29       ;
CODE_0DE77D:    JSR CODE_0DE836         ; $0D:E77D: 20 36 E8    ;
CODE_0DE780:    RTS                     ; $0D:E780: 60          ;

CODE_0DE781:    LDA $1C,x               ; $0D:E781: B5 1C       ;
CODE_0DE783:    CMP #$06                ; $0D:E783: C9 06       ;
CODE_0DE785:    BEQ CODE_0DE7A9         ; $0D:E785: F0 22       ;
CODE_0DE787:    CMP #$12                ; $0D:E787: C9 12       ;
CODE_0DE789:    BNE CODE_0DE799         ; $0D:E789: D0 0E       ;
CODE_0DE78B:    LDA #$01                ; $0D:E78B: A9 01       ;
CODE_0DE78D:    STA $47,x               ; $0D:E78D: 95 47       ;
CODE_0DE78F:    LDA #$08                ; $0D:E78F: A9 08       ;
CODE_0DE791:    STA $5E,x               ; $0D:E791: 95 5E       ;
CODE_0DE793:    LDA $09                 ; $0D:E793: A5 09       ;
CODE_0DE795:    AND #$07                ; $0D:E795: 29 07       ;
CODE_0DE797:    BEQ CODE_0DE7A9         ; $0D:E797: F0 10       ;
CODE_0DE799:    LDY #$01                ; $0D:E799: A0 01       ;
CODE_0DE79B:    JSR CODE_0DE828         ; $0D:E79B: 20 28 E8    ;
CODE_0DE79E:    BPL CODE_0DE7A1         ; $0D:E79E: 10 01       ;
CODE_0DE7A0:    INY                     ; $0D:E7A0: C8          ;
CODE_0DE7A1:    TYA                     ; $0D:E7A1: 98          ;
CODE_0DE7A2:    CMP $47,x               ; $0D:E7A2: D5 47       ;
CODE_0DE7A4:    BNE CODE_0DE7A9         ; $0D:E7A4: D0 03       ;
CODE_0DE7A6:    JSR CODE_0DE800         ; $0D:E7A6: 20 00 E8    ;
CODE_0DE7A9:    JSR CODE_0DE836         ; $0D:E7A9: 20 36 E8    ;
CODE_0DE7AC:    LDA $29,x               ; $0D:E7AC: B5 29       ;
CODE_0DE7AE:    AND #$80                ; $0D:E7AE: 29 80       ;
CODE_0DE7B0:    BNE CODE_0DE7B7         ; $0D:E7B0: D0 05       ;
CODE_0DE7B2:    LDA #$00                ; $0D:E7B2: A9 00       ;
CODE_0DE7B4:    STA $29,x               ; $0D:E7B4: 95 29       ;
CODE_0DE7B6:    RTS                     ; $0D:E7B6: 60          ;

CODE_0DE7B7:    LDA $29,x               ; $0D:E7B7: B5 29       ;
CODE_0DE7B9:    AND #$BF                ; $0D:E7B9: 29 BF       ;
CODE_0DE7BB:    STA $29,x               ; $0D:E7BB: 95 29       ;
CODE_0DE7BD:    RTS                     ; $0D:E7BD: 60          ;

CODE_0DE7BE:    LDA $1C,x               ; $0D:E7BE: B5 1C       ;
CODE_0DE7C0:    CMP #$03                ; $0D:E7C0: C9 03       ;
CODE_0DE7C2:    BNE CODE_0DE7C8         ; $0D:E7C2: D0 04       ;
CODE_0DE7C4:    LDA $29,x               ; $0D:E7C4: B5 29       ;
CODE_0DE7C6:    BEQ CODE_0DE800         ; $0D:E7C6: F0 38       ;
CODE_0DE7C8:    LDA $29,x               ; $0D:E7C8: B5 29       ;
CODE_0DE7CA:    TAY                     ; $0D:E7CA: A8          ;
CODE_0DE7CB:    ASL A                   ; $0D:E7CB: 0A          ;
CODE_0DE7CC:    BCC CODE_0DE7D4         ; $0D:E7CC: 90 06       ;
CODE_0DE7CE:    LDA $29,x               ; $0D:E7CE: B5 29       ;
CODE_0DE7D0:    ORA #$40                ; $0D:E7D0: 09 40       ;
CODE_0DE7D2:    BRA CODE_0DE7D7         ; $0D:E7D2: 80 03       ;

CODE_0DE7D4:    LDA DATA_0DE685,y       ; $0D:E7D4: B9 85 E6    ;
CODE_0DE7D7:    STA $29,x               ; $0D:E7D7: 95 29       ;
CODE_0DE7D9:    LDA $0238,x             ; $0D:E7D9: BD 38 02    ;
CODE_0DE7DC:    CMP #$20                ; $0D:E7DC: C9 20       ;
CODE_0DE7DE:    BCC CODE_0DE7FF         ; $0D:E7DE: 90 1F       ;
CODE_0DE7E0:    LDY #$16                ; $0D:E7E0: A0 16       ;
CODE_0DE7E2:    LDA #$02                ; $0D:E7E2: A9 02       ;
CODE_0DE7E4:    STA $EB                 ; $0D:E7E4: 85 EB       ;
CODE_0DE7E6:    LDA $EB                 ; $0D:E7E6: A5 EB       ;
CODE_0DE7E8:    CMP $47,x               ; $0D:E7E8: D5 47       ;
CODE_0DE7EA:    BNE CODE_0DE7F8         ; $0D:E7EA: D0 0C       ;
CODE_0DE7EC:    LDA #$01                ; $0D:E7EC: A9 01       ;
CODE_0DE7EE:    JSR CODE_0DEA96         ; $0D:E7EE: 20 96 EA    ;
CODE_0DE7F1:    BEQ CODE_0DE7F8         ; $0D:E7F1: F0 05       ;
CODE_0DE7F3:    JSR CODE_0DE89F         ; $0D:E7F3: 20 9F E8    ;
CODE_0DE7F6:    BNE CODE_0DE800         ; $0D:E7F6: D0 08       ;
CODE_0DE7F8:    DEC $EB                 ; $0D:E7F8: C6 EB       ;
CODE_0DE7FA:    INY                     ; $0D:E7FA: C8          ;
CODE_0DE7FB:    CPY #$18                ; $0D:E7FB: C0 18       ;
CODE_0DE7FD:    BCC CODE_0DE7E6         ; $0D:E7FD: 90 E7       ;
CODE_0DE7FF:    RTS                     ; $0D:E7FF: 60          ;

CODE_0DE800:    CPX #$09                ; $0D:E800: E0 09       ;
CODE_0DE802:    BEQ CODE_0DE816         ; $0D:E802: F0 12       ;
CODE_0DE804:    LDA $29,x               ; $0D:E804: B5 29       ;
CODE_0DE806:    ASL A                   ; $0D:E806: 0A          ;
CODE_0DE807:    BCC CODE_0DE816         ; $0D:E807: 90 0D       ;
CODE_0DE809:    CPX #$09                ; $0D:E809: E0 09       ;
CODE_0DE80B:    BEQ CODE_0DE816         ; $0D:E80B: F0 09       ;
CODE_0DE80D:    LDA #$01                ; $0D:E80D: A9 01       ;
CODE_0DE80F:    STA $1600               ; $0D:E80F: 8D 00 16    ;
CODE_0DE812:    JSL CODE_0FE0AC         ; $0D:E812: 22 AC E0 0F ;
CODE_0DE816:    LDA $1C,x               ; $0D:E816: B5 1C       ;
CODE_0DE818:    CMP #$05                ; $0D:E818: C9 05       ;
CODE_0DE81A:    BNE CODE_0DE825         ; $0D:E81A: D0 09       ;
CODE_0DE81C:    LDA #$00                ; $0D:E81C: A9 00       ;
CODE_0DE81E:    STA $00                 ; $0D:E81E: 85 00       ;
CODE_0DE820:    LDY #$FA                ; $0D:E820: A0 FA       ;
CODE_0DE822:    JMP CODE_0DCDCF         ; $0D:E822: 4C CF CD    ;

CODE_0DE825:    JMP CODE_0DE128         ; $0D:E825: 4C 28 E1    ;

CODE_0DE828:    LDA $021A,x             ; $0D:E828: BD 1A 02    ;
CODE_0DE82B:    SEC                     ; $0D:E82B: 38          ;
CODE_0DE82C:    SBC $0219               ; $0D:E82C: ED 19 02    ;
CODE_0DE82F:    STA $00                 ; $0D:E82F: 85 00       ;
CODE_0DE831:    LDA $79,x               ; $0D:E831: B5 79       ;
CODE_0DE833:    SBC $78                 ; $0D:E833: E5 78       ;
CODE_0DE835:    RTS                     ; $0D:E835: 60          ;

CODE_0DE836:    JSR CODE_0DC5E1         ; $0D:E836: 20 E1 C5    ;
CODE_0DE839:    LDA $0238,x             ; $0D:E839: BD 38 02    ;
CODE_0DE83C:    AND #$F0                ; $0D:E83C: 29 F0       ;
CODE_0DE83E:    ORA #$08                ; $0D:E83E: 09 08       ;
CODE_0DE840:    STA $0238,x             ; $0D:E840: 9D 38 02    ;
CODE_0DE843:    RTS                     ; $0D:E843: 60          ;

CODE_0DE844:    LDA $0238,x             ; $0D:E844: BD 38 02    ;
CODE_0DE847:    CLC                     ; $0D:E847: 18          ;
CODE_0DE848:    ADC #$3E                ; $0D:E848: 69 3E       ;
CODE_0DE84A:    CMP #$44                ; $0D:E84A: C9 44       ;
CODE_0DE84C:    RTS                     ; $0D:E84C: 60          ;

CODE_0DE84D:    JSR CODE_0DE844         ; $0D:E84D: 20 44 E8    ;
CODE_0DE850:    BCC CODE_0DE86C         ; $0D:E850: 90 1A       ;
CODE_0DE852:    LDA $A1,x               ; $0D:E852: B5 A1       ;
CODE_0DE854:    CLC                     ; $0D:E854: 18          ;
CODE_0DE855:    ADC #$02                ; $0D:E855: 69 02       ;
CODE_0DE857:    CMP #$03                ; $0D:E857: C9 03       ;
CODE_0DE859:    BCC CODE_0DE86C         ; $0D:E859: 90 11       ;
CODE_0DE85B:    JSR CODE_0DE898         ; $0D:E85B: 20 98 E8    ;
CODE_0DE85E:    BEQ CODE_0DE86C         ; $0D:E85E: F0 0C       ;
CODE_0DE860:    JSR CODE_0DE89F         ; $0D:E860: 20 9F E8    ;
CODE_0DE863:    BEQ CODE_0DE86C         ; $0D:E863: F0 07       ;
CODE_0DE865:    JSR CODE_0DE836         ; $0D:E865: 20 36 E8    ;
CODE_0DE868:    LDA #$FD                ; $0D:E868: A9 FD       ;
CODE_0DE86A:    STA $A1,x               ; $0D:E86A: 95 A1       ;
CODE_0DE86C:    JMP CODE_0DE7D9         ; $0D:E86C: 4C D9 E7    ;

CODE_0DE86F:    JSR CODE_0DE898         ; $0D:E86F: 20 98 E8    ;
CODE_0DE872:    BEQ CODE_0DE891         ; $0D:E872: F0 1D       ;
CODE_0DE874:    CMP #$2C                ; $0D:E874: C9 2C       ;
CODE_0DE876:    BNE CODE_0DE880         ; $0D:E876: D0 08       ;
CODE_0DE878:    JSR CODE_0DDC98         ; $0D:E878: 20 98 DC    ;
CODE_0DE87B:    LDA #$FC                ; $0D:E87B: A9 FC       ;
CODE_0DE87D:    STA $A1,x               ; $0D:E87D: 95 A1       ;
CODE_0DE87F:    RTS                     ; $0D:E87F: 60          ;

CODE_0DE880:    LDA $0792,x             ; $0D:E880: BD 92 07    ;
CODE_0DE883:    BNE CODE_0DE891         ; $0D:E883: D0 0C       ;
CODE_0DE885:    LDA $29,x               ; $0D:E885: B5 29       ;
CODE_0DE887:    AND #$88                ; $0D:E887: 29 88       ;
CODE_0DE889:    STA $29,x               ; $0D:E889: 95 29       ;
CODE_0DE88B:    JSR CODE_0DE836         ; $0D:E88B: 20 36 E8    ;
CODE_0DE88E:    JMP CODE_0DE7D9         ; $0D:E88E: 4C D9 E7    ;

CODE_0DE891:    LDA $29,x               ; $0D:E891: B5 29       ;
CODE_0DE893:    ORA #$01                ; $0D:E893: 09 01       ;
CODE_0DE895:    STA $29,x               ; $0D:E895: 95 29       ;
CODE_0DE897:    RTS                     ; $0D:E897: 60          ;

CODE_0DE898:    LDA #$00                ; $0D:E898: A9 00       ;
CODE_0DE89A:    LDY #$15                ; $0D:E89A: A0 15       ;
CODE_0DE89C:    JMP CODE_0DEA96         ; $0D:E89C: 4C 96 EA    ;

CODE_0DE89F:    CMP #$2F                ; $0D:E89F: C9 2F       ;
CODE_0DE8A1:    BEQ CODE_0DE8C1         ; $0D:E8A1: F0 1E       ;
CODE_0DE8A3:    CMP #$EA                ; $0D:E8A3: C9 EA       ;
CODE_0DE8A5:    BEQ CODE_0DE8C1         ; $0D:E8A5: F0 1A       ;
CODE_0DE8A7:    CMP #$EB                ; $0D:E8A7: C9 EB       ;
CODE_0DE8A9:    BEQ CODE_0DE8C1         ; $0D:E8A9: F0 16       ;
CODE_0DE8AB:    CMP #$5C                ; $0D:E8AB: C9 5C       ;
CODE_0DE8AD:    BEQ CODE_0DE8C1         ; $0D:E8AD: F0 12       ;
CODE_0DE8AF:    CMP #$5D                ; $0D:E8AF: C9 5D       ;
CODE_0DE8B1:    BEQ CODE_0DE8C1         ; $0D:E8B1: F0 0E       ;
CODE_0DE8B3:    CMP #$5E                ; $0D:E8B3: C9 5E       ;
CODE_0DE8B5:    BEQ CODE_0DE8C1         ; $0D:E8B5: F0 0A       ;
CODE_0DE8B7:    CMP #$60                ; $0D:E8B7: C9 60       ;
CODE_0DE8B9:    BEQ CODE_0DE8C1         ; $0D:E8B9: F0 06       ;
CODE_0DE8BB:    CMP #$61                ; $0D:E8BB: C9 61       ;
CODE_0DE8BD:    BEQ CODE_0DE8C1         ; $0D:E8BD: F0 02       ;
CODE_0DE8BF:    CMP #$5F                ; $0D:E8BF: C9 5F       ;
CODE_0DE8C1:    RTS                     ; $0D:E8C1: 60          ;

CODE_0DE8C2:    LDA $0242,x             ; $0D:E8C2: BD 42 02    ;
CODE_0DE8C5:    CMP #$18                ; $0D:E8C5: C9 18       ;
CODE_0DE8C7:    BCC CODE_0DE8EE         ; $0D:E8C7: 90 25       ;
CODE_0DE8C9:    JSR CODE_0DEAAA         ; $0D:E8C9: 20 AA EA    ;
CODE_0DE8CC:    BEQ CODE_0DE8EE         ; $0D:E8CC: F0 20       ;
CODE_0DE8CE:    JSR CODE_0DE89F         ; $0D:E8CE: 20 9F E8    ;
CODE_0DE8D1:    BEQ CODE_0DE8EE         ; $0D:E8D1: F0 1B       ;
CODE_0DE8D3:    LDA $AB,x               ; $0D:E8D3: B5 AB       ;
CODE_0DE8D5:    BMI CODE_0DE8F4         ; $0D:E8D5: 30 1D       ;
CODE_0DE8D7:    LDA $020D,x             ; $0D:E8D7: BD 0D 02    ;
CODE_0DE8DA:    BNE CODE_0DE8F4         ; $0D:E8DA: D0 18       ;
CODE_0DE8DC:    LDA #$FD                ; $0D:E8DC: A9 FD       ;
CODE_0DE8DE:    STA $AB,x               ; $0D:E8DE: 95 AB       ;
CODE_0DE8E0:    LDA #$01                ; $0D:E8E0: A9 01       ;
CODE_0DE8E2:    STA $020D,x             ; $0D:E8E2: 9D 0D 02    ;
CODE_0DE8E5:    LDA $0242,x             ; $0D:E8E5: BD 42 02    ;
CODE_0DE8E8:    AND #$F8                ; $0D:E8E8: 29 F8       ;
CODE_0DE8EA:    STA $0242,x             ; $0D:E8EA: 9D 42 02    ;
CODE_0DE8ED:    RTS                     ; $0D:E8ED: 60          ;

CODE_0DE8EE:    LDA #$00                ; $0D:E8EE: A9 00       ;
CODE_0DE8F0:    STA $020D,x             ; $0D:E8F0: 9D 0D 02    ;
CODE_0DE8F3:    RTS                     ; $0D:E8F3: 60          ;

CODE_0DE8F4:    LDA #$80                ; $0D:E8F4: A9 80       ;
CODE_0DE8F6:    STA $33,x               ; $0D:E8F6: 95 33       ;
CODE_0DE8F8:    LDA #$01                ; $0D:E8F8: A9 01       ;
CODE_0DE8FA:    STA $1600               ; $0D:E8FA: 8D 00 16    ;
CODE_0DE8FD:    RTS                     ; $0D:E8FD: 60          ;

DATA_0DE8FE:        db $02,$08,$0E,$20,$03,$14,$0D,$20
                    db $02,$14,$0E,$20,$02,$09,$0E,$15
                    db $00,$00,$18,$06,$00,$00,$20,$0D
                    db $00,$00,$30,$0D,$00,$00,$08,$08
                    db $06,$04,$0A,$0C,$03,$0E,$0D,$14
                    db $04,$04,$1C,$1C,$04,$04,$0C,$1C
                    db $03,$07,$0D,$16

CODE_0DE932:    TXA                     ; $0D:E932: 8A          ;
CODE_0DE933:    CLC                     ; $0D:E933: 18          ;
CODE_0DE934:    ADC #$0B                ; $0D:E934: 69 0B       ;
CODE_0DE936:    TAX                     ; $0D:E936: AA          ;
CODE_0DE937:    LDY #$02                ; $0D:E937: A0 02       ;
CODE_0DE939:    BNE CODE_0DE942         ; $0D:E939: D0 07       ;
CODE_0DE93B:    TXA                     ; $0D:E93B: 8A          ;
CODE_0DE93C:    CLC                     ; $0D:E93C: 18          ;
CODE_0DE93D:    ADC #$0D                ; $0D:E93D: 69 0D       ;
CODE_0DE93F:    TAX                     ; $0D:E93F: AA          ;
CODE_0DE940:    LDY #$06                ; $0D:E940: A0 06       ;
CODE_0DE942:    JSR CODE_0DE9A9         ; $0D:E942: 20 A9 E9    ;
CODE_0DE945:    JMP CODE_0DE9EB         ; $0D:E945: 4C EB E9    ;

CODE_0DE948:    LDY #$48                ; $0D:E948: A0 48       ;
CODE_0DE94A:    STY $00                 ; $0D:E94A: 84 00       ;
CODE_0DE94C:    LDY #$44                ; $0D:E94C: A0 44       ;
CODE_0DE94E:    JMP CODE_0DE957         ; $0D:E94E: 4C 57 E9    ;

CODE_0DE951:    LDY #$08                ; $0D:E951: A0 08       ;
CODE_0DE953:    STY $00                 ; $0D:E953: 84 00       ;
CODE_0DE955:    LDY #$04                ; $0D:E955: A0 04       ;
CODE_0DE957:    LDA $021A,x             ; $0D:E957: BD 1A 02    ;
CODE_0DE95A:    SEC                     ; $0D:E95A: 38          ;
CODE_0DE95B:    SBC $071C               ; $0D:E95B: ED 1C 07    ;
CODE_0DE95E:    STA $01                 ; $0D:E95E: 85 01       ;
CODE_0DE960:    LDA $79,x               ; $0D:E960: B5 79       ;
CODE_0DE962:    SBC $071A               ; $0D:E962: ED 1A 07    ;
CODE_0DE965:    BMI CODE_0DE96D         ; $0D:E965: 30 06       ;
CODE_0DE967:    ORA $01                 ; $0D:E967: 05 01       ;
CODE_0DE969:    BEQ CODE_0DE96D         ; $0D:E969: F0 02       ;
CODE_0DE96B:    LDY $00                 ; $0D:E96B: A4 00       ;
CODE_0DE96D:    TYA                     ; $0D:E96D: 98          ;
CODE_0DE96E:    AND $03D1               ; $0D:E96E: 2D D1 03    ;
CODE_0DE971:    STA $03D9,x             ; $0D:E971: 9D D9 03    ;
CODE_0DE974:    CPX #$09                ; $0D:E974: E0 09       ;
CODE_0DE976:    BEQ CODE_0DE989         ; $0D:E976: F0 11       ;
CODE_0DE978:    LDA $03D9,x             ; $0D:E978: BD D9 03    ;
CODE_0DE97B:    BNE CODE_0DE996         ; $0D:E97B: D0 19       ;
CODE_0DE97D:    JMP CODE_0DE989         ; $0D:E97D: 4C 89 E9    ;

CODE_0DE980:    INX                     ; $0D:E980: E8          ;
CODE_0DE981:    JSR CODE_0DFE34         ; $0D:E981: 20 34 FE    ;
CODE_0DE984:    DEX                     ; $0D:E984: CA          ;
CODE_0DE985:    CMP #$FE                ; $0D:E985: C9 FE       ;
CODE_0DE987:    BCS CODE_0DE996         ; $0D:E987: B0 0D       ;
CODE_0DE989:    TXA                     ; $0D:E989: 8A          ;
CODE_0DE98A:    CLC                     ; $0D:E98A: 18          ;
CODE_0DE98B:    ADC #$01                ; $0D:E98B: 69 01       ;
CODE_0DE98D:    TAX                     ; $0D:E98D: AA          ;
CODE_0DE98E:    LDY #$01                ; $0D:E98E: A0 01       ;
CODE_0DE990:    JSR CODE_0DE9A9         ; $0D:E990: 20 A9 E9    ;
CODE_0DE993:    JMP CODE_0DE9EB         ; $0D:E993: 4C EB E9    ;

CODE_0DE996:    TXA                     ; $0D:E996: 8A          ;
CODE_0DE997:    ASL A                   ; $0D:E997: 0A          ;
CODE_0DE998:    ASL A                   ; $0D:E998: 0A          ;
CODE_0DE999:    TAY                     ; $0D:E999: A8          ;
CODE_0DE99A:    LDA #$FF                ; $0D:E99A: A9 FF       ;
CODE_0DE99C:    STA $0FA0,y             ; $0D:E99C: 99 A0 0F    ;
CODE_0DE99F:    STA $0FA1,y             ; $0D:E99F: 99 A1 0F    ;
CODE_0DE9A2:    STA $0FA2,y             ; $0D:E9A2: 99 A2 0F    ;
CODE_0DE9A5:    STA $0FA3,y             ; $0D:E9A5: 99 A3 0F    ;
CODE_0DE9A8:    RTS                     ; $0D:E9A8: 60          ;

CODE_0DE9A9:    STX $00                 ; $0D:E9A9: 86 00       ;
CODE_0DE9AB:    LDA $03B8,y             ; $0D:E9AB: B9 B8 03    ;
CODE_0DE9AE:    STA $02                 ; $0D:E9AE: 85 02       ;
CODE_0DE9B0:    LDA $03AD,y             ; $0D:E9B0: B9 AD 03    ;
CODE_0DE9B3:    STA $01                 ; $0D:E9B3: 85 01       ;
CODE_0DE9B5:    TXA                     ; $0D:E9B5: 8A          ;
CODE_0DE9B6:    ASL A                   ; $0D:E9B6: 0A          ;
CODE_0DE9B7:    ASL A                   ; $0D:E9B7: 0A          ;
CODE_0DE9B8:    PHA                     ; $0D:E9B8: 48          ;
CODE_0DE9B9:    TAY                     ; $0D:E9B9: A8          ;
CODE_0DE9BA:    LDA $048F,x             ; $0D:E9BA: BD 8F 04    ;
CODE_0DE9BD:    ASL A                   ; $0D:E9BD: 0A          ;
CODE_0DE9BE:    ASL A                   ; $0D:E9BE: 0A          ;
CODE_0DE9BF:    TAX                     ; $0D:E9BF: AA          ;
CODE_0DE9C0:    LDA $01                 ; $0D:E9C0: A5 01       ;
CODE_0DE9C2:    CLC                     ; $0D:E9C2: 18          ;
CODE_0DE9C3:    ADC DATA_0DE8FE,x       ; $0D:E9C3: 7D FE E8    ;
CODE_0DE9C6:    STA $0F9C,y             ; $0D:E9C6: 99 9C 0F    ;
CODE_0DE9C9:    LDA $01                 ; $0D:E9C9: A5 01       ;
CODE_0DE9CB:    CLC                     ; $0D:E9CB: 18          ;
CODE_0DE9CC:    ADC DATA_0DE8FE+2,x     ; $0D:E9CC: 7D 00 E9    ;
CODE_0DE9CF:    STA $0F9E,y             ; $0D:E9CF: 99 9E 0F    ;
CODE_0DE9D2:    INX                     ; $0D:E9D2: E8          ;
CODE_0DE9D3:    INY                     ; $0D:E9D3: C8          ;
CODE_0DE9D4:    LDA $02                 ; $0D:E9D4: A5 02       ;
CODE_0DE9D6:    CLC                     ; $0D:E9D6: 18          ;
CODE_0DE9D7:    ADC DATA_0DE8FE,x       ; $0D:E9D7: 7D FE E8    ;
CODE_0DE9DA:    STA $0F9C,y             ; $0D:E9DA: 99 9C 0F    ;
CODE_0DE9DD:    LDA $02                 ; $0D:E9DD: A5 02       ;
CODE_0DE9DF:    CLC                     ; $0D:E9DF: 18          ;
CODE_0DE9E0:    ADC DATA_0DE8FE+2,x     ; $0D:E9E0: 7D 00 E9    ;
CODE_0DE9E3:    STA $0F9E,y             ; $0D:E9E3: 99 9E 0F    ;
CODE_0DE9E6:    PLA                     ; $0D:E9E6: 68          ;
CODE_0DE9E7:    TAY                     ; $0D:E9E7: A8          ;
CODE_0DE9E8:    LDX $00                 ; $0D:E9E8: A6 00       ;
CODE_0DE9EA:    RTS                     ; $0D:E9EA: 60          ;

CODE_0DE9EB:    LDA $071C               ; $0D:E9EB: AD 1C 07    ;
CODE_0DE9EE:    CLC                     ; $0D:E9EE: 18          ;
CODE_0DE9EF:    ADC #$80                ; $0D:E9EF: 69 80       ;
CODE_0DE9F1:    STA $02                 ; $0D:E9F1: 85 02       ;
CODE_0DE9F3:    LDA $071A               ; $0D:E9F3: AD 1A 07    ;
CODE_0DE9F6:    ADC #$00                ; $0D:E9F6: 69 00       ;
CODE_0DE9F8:    STA $01                 ; $0D:E9F8: 85 01       ;
CODE_0DE9FA:    LDA $0219,x             ; $0D:E9FA: BD 19 02    ;
CODE_0DE9FD:    CMP $02                 ; $0D:E9FD: C5 02       ;
CODE_0DE9FF:    LDA $78,x               ; $0D:E9FF: B5 78       ;
CODE_0DEA01:    SBC $01                 ; $0D:EA01: E5 01       ;
CODE_0DEA03:    BCC CODE_0DEA1A         ; $0D:EA03: 90 15       ;
CODE_0DEA05:    LDA $0F9E,y             ; $0D:EA05: B9 9E 0F    ;
CODE_0DEA08:    BMI CODE_0DEA17         ; $0D:EA08: 30 0D       ;
CODE_0DEA0A:    LDA #$FF                ; $0D:EA0A: A9 FF       ;
CODE_0DEA0C:    LDX $0F9C,y             ; $0D:EA0C: BE 9C 0F    ;
CODE_0DEA0F:    BMI CODE_0DEA14         ; $0D:EA0F: 30 03       ;
CODE_0DEA11:    STA $0F9C,y             ; $0D:EA11: 99 9C 0F    ;
CODE_0DEA14:    STA $0F9E,y             ; $0D:EA14: 99 9E 0F    ;
CODE_0DEA17:    LDX $9E                 ; $0D:EA17: A6 9E       ;
CODE_0DEA19:    RTS                     ; $0D:EA19: 60          ;

CODE_0DEA1A:    LDA $0F9C,y             ; $0D:EA1A: B9 9C 0F    ;
CODE_0DEA1D:    BPL CODE_0DEA30         ; $0D:EA1D: 10 11       ;
CODE_0DEA1F:    CMP #$A0                ; $0D:EA1F: C9 A0       ;
CODE_0DEA21:    BCC CODE_0DEA30         ; $0D:EA21: 90 0D       ;
CODE_0DEA23:    LDA #$00                ; $0D:EA23: A9 00       ;
CODE_0DEA25:    LDX $0F9E,y             ; $0D:EA25: BE 9E 0F    ;
CODE_0DEA28:    BPL CODE_0DEA2D         ; $0D:EA28: 10 03       ;
CODE_0DEA2A:    STA $0F9E,y             ; $0D:EA2A: 99 9E 0F    ;
CODE_0DEA2D:    STA $0F9C,y             ; $0D:EA2D: 99 9C 0F    ;
CODE_0DEA30:    LDX $9E                 ; $0D:EA30: A6 9E       ;
CODE_0DEA32:    RTS                     ; $0D:EA32: 60          ;

CODE_0DEA33:    LDX #$00                ; $0D:EA33: A2 00       ;
CODE_0DEA35:    STY $06                 ; $0D:EA35: 84 06       ;
CODE_0DEA37:    LDA #$01                ; $0D:EA37: A9 01       ;
CODE_0DEA39:    STA $07                 ; $0D:EA39: 85 07       ;
CODE_0DEA3B:    LDA $0F9C,y             ; $0D:EA3B: B9 9C 0F    ;
CODE_0DEA3E:    CMP $0F9C,x             ; $0D:EA3E: DD 9C 0F    ;
CODE_0DEA41:    BCS CODE_0DEA6D         ; $0D:EA41: B0 2A       ;
CODE_0DEA43:    CMP $0F9E,x             ; $0D:EA43: DD 9E 0F    ;
CODE_0DEA46:    BCC CODE_0DEA5A         ; $0D:EA46: 90 12       ;
CODE_0DEA48:    BEQ CODE_0DEA8C         ; $0D:EA48: F0 42       ;
CODE_0DEA4A:    LDA $0F9E,y             ; $0D:EA4A: B9 9E 0F    ;
CODE_0DEA4D:    CMP $0F9C,y             ; $0D:EA4D: D9 9C 0F    ;
CODE_0DEA50:    BCC CODE_0DEA8C         ; $0D:EA50: 90 3A       ;
CODE_0DEA52:    CMP $0F9C,x             ; $0D:EA52: DD 9C 0F    ;
CODE_0DEA55:    BCS CODE_0DEA8C         ; $0D:EA55: B0 35       ;
CODE_0DEA57:    LDY $06                 ; $0D:EA57: A4 06       ;
CODE_0DEA59:    RTS                     ; $0D:EA59: 60          ;

CODE_0DEA5A:    LDA $0F9E,x             ; $0D:EA5A: BD 9E 0F    ;
CODE_0DEA5D:    CMP $0F9C,x             ; $0D:EA5D: DD 9C 0F    ;
CODE_0DEA60:    BCC CODE_0DEA8C         ; $0D:EA60: 90 2A       ;
CODE_0DEA62:    LDA $0F9E,y             ; $0D:EA62: B9 9E 0F    ;
CODE_0DEA65:    CMP $0F9C,x             ; $0D:EA65: DD 9C 0F    ;
CODE_0DEA68:    BCS CODE_0DEA8C         ; $0D:EA68: B0 22       ;
CODE_0DEA6A:    LDY $06                 ; $0D:EA6A: A4 06       ;
CODE_0DEA6C:    RTS                     ; $0D:EA6C: 60          ;

CODE_0DEA6D:    CMP $0F9C,x             ; $0D:EA6D: DD 9C 0F    ;
CODE_0DEA70:    BEQ CODE_0DEA8C         ; $0D:EA70: F0 1A       ;
CODE_0DEA72:    CMP $0F9E,x             ; $0D:EA72: DD 9E 0F    ;
CODE_0DEA75:    BCC CODE_0DEA8C         ; $0D:EA75: 90 15       ;
CODE_0DEA77:    BEQ CODE_0DEA8C         ; $0D:EA77: F0 13       ;
CODE_0DEA79:    CMP $0F9E,y             ; $0D:EA79: D9 9E 0F    ;
CODE_0DEA7C:    BCC CODE_0DEA88         ; $0D:EA7C: 90 0A       ;
CODE_0DEA7E:    BEQ CODE_0DEA88         ; $0D:EA7E: F0 08       ;
CODE_0DEA80:    LDA $0F9E,y             ; $0D:EA80: B9 9E 0F    ;
CODE_0DEA83:    CMP $0F9C,x             ; $0D:EA83: DD 9C 0F    ;
CODE_0DEA86:    BCS CODE_0DEA8C         ; $0D:EA86: B0 04       ;
CODE_0DEA88:    CLC                     ; $0D:EA88: 18          ;
CODE_0DEA89:    LDY $06                 ; $0D:EA89: A4 06       ;
CODE_0DEA8B:    RTS                     ; $0D:EA8B: 60          ;

CODE_0DEA8C:    INX                     ; $0D:EA8C: E8          ;
CODE_0DEA8D:    INY                     ; $0D:EA8D: C8          ;
CODE_0DEA8E:    DEC $07                 ; $0D:EA8E: C6 07       ;
CODE_0DEA90:    BPL CODE_0DEA3B         ; $0D:EA90: 10 A9       ;
CODE_0DEA92:    SEC                     ; $0D:EA92: 38          ;
CODE_0DEA93:    LDY $06                 ; $0D:EA93: A4 06       ;
CODE_0DEA95:    RTS                     ; $0D:EA95: 60          ;

CODE_0DEA96:    PHA                     ; $0D:EA96: 48          ;
CODE_0DEA97:    TXA                     ; $0D:EA97: 8A          ;
CODE_0DEA98:    CLC                     ; $0D:EA98: 18          ;
CODE_0DEA99:    ADC #$01                ; $0D:EA99: 69 01       ;
CODE_0DEA9B:    TAX                     ; $0D:EA9B: AA          ;
CODE_0DEA9C:    PLA                     ; $0D:EA9C: 68          ;
CODE_0DEA9D:    JMP CODE_0DEAB3         ; $0D:EA9D: 4C B3 EA    ;

CODE_0DEAA0:    TXA                     ; $0D:EAA0: 8A          ;
CODE_0DEAA1:    CLC                     ; $0D:EAA1: 18          ;
CODE_0DEAA2:    ADC #$11                ; $0D:EAA2: 69 11       ;
CODE_0DEAA4:    TAX                     ; $0D:EAA4: AA          ;
CODE_0DEAA5:    LDY #$1B                ; $0D:EAA5: A0 1B       ;
CODE_0DEAA7:    JMP CODE_0DEAB1         ; $0D:EAA7: 4C B1 EA    ;

CODE_0DEAAA:    LDY #$1A                ; $0D:EAAA: A0 1A       ;
CODE_0DEAAC:    TXA                     ; $0D:EAAC: 8A          ;
CODE_0DEAAD:    CLC                     ; $0D:EAAD: 18          ;
CODE_0DEAAE:    ADC #$0B                ; $0D:EAAE: 69 0B       ;
CODE_0DEAB0:    TAX                     ; $0D:EAB0: AA          ;
CODE_0DEAB1:    LDA #$00                ; $0D:EAB1: A9 00       ;
CODE_0DEAB3:    JSR CODE_0DEAFF         ; $0D:EAB3: 20 FF EA    ;
CODE_0DEAB6:    LDX $9E                 ; $0D:EAB6: A6 9E       ;
CODE_0DEAB8:    CMP #$00                ; $0D:EAB8: C9 00       ;
CODE_0DEABA:    RTS                     ; $0D:EABA: 60          ;

DATA_0DEABB:        db $00,$07,$0E ;

DATA_0DEABE:        db $08,$03,$0C,$02,$02,$0D,$0D,$08 ;
                    db $03,$0C,$02,$02,$0D,$0D,$08,$03 ;
                    db $0C,$02,$02,$0D,$0D,$08,$00,$10 ;
                    db $04,$14,$04,$04 ;

DATA_0DEADA:        db $04,$20,$20,$08,$18,$08,$18,$02 ;
                    db $20,$20,$08,$18,$08,$18,$12,$20 ;
                    db $20,$18,$18,$18,$18,$18,$14,$14 ;
                    db $06,$06,$08,$10 ;

CODE_0DEAF6:    INY                     ; $0D:EAF6: C8          ;
CODE_0DEAF7:    LDA #$00                ; $0D:EAF7: A9 00       ;
CODE_0DEAF9:    BRA CODE_0DEAFD         ; $0D:EAF9: 80 02       ;

CODE_0DEAFB:    LDA #$01                ; $0D:EAFB: A9 01       ;
CODE_0DEAFD:    LDX #$00                ; $0D:EAFD: A2 00       ;
CODE_0DEAFF:    PHA                     ; $0D:EAFF: 48          ;
CODE_0DEB00:    STY $04                 ; $0D:EB00: 84 04       ;
CODE_0DEB02:    LDA DATA_0DEABE,y       ; $0D:EB02: B9 BE EA    ;
CODE_0DEB05:    CLC                     ; $0D:EB05: 18          ;
CODE_0DEB06:    ADC $0219,x             ; $0D:EB06: 7D 19 02    ;
CODE_0DEB09:    STA $05                 ; $0D:EB09: 85 05       ;
CODE_0DEB0B:    LDA $78,x               ; $0D:EB0B: B5 78       ;
CODE_0DEB0D:    ADC #$00                ; $0D:EB0D: 69 00       ;
CODE_0DEB0F:    AND #$01                ; $0D:EB0F: 29 01       ;
CODE_0DEB11:    LSR A                   ; $0D:EB11: 4A          ;
CODE_0DEB12:    ORA $05                 ; $0D:EB12: 05 05       ;
CODE_0DEB14:    ROR A                   ; $0D:EB14: 6A          ;
CODE_0DEB15:    LSR A                   ; $0D:EB15: 4A          ;
CODE_0DEB16:    LSR A                   ; $0D:EB16: 4A          ;
CODE_0DEB17:    LSR A                   ; $0D:EB17: 4A          ;
CODE_0DEB18:    JSR CODE_0DAA8F         ; $0D:EB18: 20 8F AA    ;
CODE_0DEB1B:    LDY $04                 ; $0D:EB1B: A4 04       ;
CODE_0DEB1D:    LDA $0237,x             ; $0D:EB1D: BD 37 02    ;
CODE_0DEB20:    CLC                     ; $0D:EB20: 18          ;
CODE_0DEB21:    ADC DATA_0DEADA,y       ; $0D:EB21: 79 DA EA    ;
CODE_0DEB24:    AND #$F0                ; $0D:EB24: 29 F0       ;
CODE_0DEB26:    SEC                     ; $0D:EB26: 38          ;
CODE_0DEB27:    SBC #$20                ; $0D:EB27: E9 20       ;
CODE_0DEB29:    STA $02                 ; $0D:EB29: 85 02       ;
CODE_0DEB2B:    TAY                     ; $0D:EB2B: A8          ;
CODE_0DEB2C:    LDA ($06),y             ; $0D:EB2C: B1 06       ;
CODE_0DEB2E:    STA $03                 ; $0D:EB2E: 85 03       ;
CODE_0DEB30:    LDY $04                 ; $0D:EB30: A4 04       ;
CODE_0DEB32:    PLA                     ; $0D:EB32: 68          ;
CODE_0DEB33:    BNE CODE_0DEB3B         ; $0D:EB33: D0 06       ;
CODE_0DEB35:    LDA $0237,x             ; $0D:EB35: BD 37 02    ;
CODE_0DEB38:    JMP CODE_0DEB3E         ; $0D:EB38: 4C 3E EB    ;

CODE_0DEB3B:    LDA $0219,x             ; $0D:EB3B: BD 19 02    ;
CODE_0DEB3E:    AND #$0F                ; $0D:EB3E: 29 0F       ;
CODE_0DEB40:    STA $04                 ; $0D:EB40: 85 04       ;
CODE_0DEB42:    LDA $E4                 ; $0D:EB42: A5 E4       ;
CODE_0DEB44:    BNE CODE_0DEB52         ; $0D:EB44: D0 0C       ;
CODE_0DEB46:    LDA $03                 ; $0D:EB46: A5 03       ;
CODE_0DEB48:    CMP #$5C                ; $0D:EB48: C9 5C       ;
CODE_0DEB4A:    BCC CODE_0DEB52         ; $0D:EB4A: 90 06       ;
CODE_0DEB4C:    CMP #$62                ; $0D:EB4C: C9 62       ;
CODE_0DEB4E:    BCS CODE_0DEB52         ; $0D:EB4E: B0 02       ;
CODE_0DEB50:    STZ $03                 ; $0D:EB50: 64 03       ;
CODE_0DEB52:    LDA $03                 ; $0D:EB52: A5 03       ;
CODE_0DEB54:    RTS                     ; $0D:EB54: 60          ;

DATA_0DEB55:        db $FF,$FF,$FF

CODE_0DEB58:    LDX #$06                ; $0D:EB58: A2 06       ;
CODE_0DEB5A:    STA $0800,y             ; $0D:EB5A: 99 00 08    ;
CODE_0DEB5D:    CLC                     ; $0D:EB5D: 18          ;
CODE_0DEB5E:    ADC #$08                ; $0D:EB5E: 69 08       ;
CODE_0DEB60:    INY                     ; $0D:EB60: C8          ;
CODE_0DEB61:    INY                     ; $0D:EB61: C8          ;
CODE_0DEB62:    INY                     ; $0D:EB62: C8          ;
CODE_0DEB63:    INY                     ; $0D:EB63: C8          ;
CODE_0DEB64:    DEX                     ; $0D:EB64: CA          ;
CODE_0DEB65:    BNE CODE_0DEB5A         ; $0D:EB65: D0 F3       ;
CODE_0DEB67:    LDY $02                 ; $0D:EB67: A4 02       ;
CODE_0DEB69:    RTS                     ; $0D:EB69: 60          ;

CODE_0DEB6A:    LDX #$06                ; $0D:EB6A: A2 06       ;
CODE_0DEB6C:    STA $0900,y             ; $0D:EB6C: 99 00 09    ;
CODE_0DEB6F:    CLC                     ; $0D:EB6F: 18          ;
CODE_0DEB70:    ADC #$08                ; $0D:EB70: 69 08       ;
CODE_0DEB72:    INY                     ; $0D:EB72: C8          ;
CODE_0DEB73:    INY                     ; $0D:EB73: C8          ;
CODE_0DEB74:    INY                     ; $0D:EB74: C8          ;
CODE_0DEB75:    INY                     ; $0D:EB75: C8          ;
CODE_0DEB76:    DEX                     ; $0D:EB76: CA          ;
CODE_0DEB77:    BNE CODE_0DEB6C         ; $0D:EB77: D0 F3       ;
CODE_0DEB79:    LDY $02                 ; $0D:EB79: A4 02       ;
CODE_0DEB7B:    RTS                     ; $0D:EB7B: 60          ;

CODE_0DEB7C:    LDA #$F0                ; $0D:EB7C: A9 F0       ;
CODE_0DEB7E:    STA $0815,y             ; $0D:EB7E: 99 15 08    ;
CODE_0DEB81:    STA $0811,y             ; $0D:EB81: 99 11 08    ;
CODE_0DEB84:    STA $080D,y             ; $0D:EB84: 99 0D 08    ;
CODE_0DEB87:    STA $0809,y             ; $0D:EB87: 99 09 08    ;
CODE_0DEB8A:    STA $0805,y             ; $0D:EB8A: 99 05 08    ;
CODE_0DEB8D:    STA $0801,y             ; $0D:EB8D: 99 01 08    ;
CODE_0DEB90:    RTS                     ; $0D:EB90: 60          ;

CODE_0DEB91:    LDA #$F0                ; $0D:EB91: A9 F0       ;
CODE_0DEB93:    STA $0915,y             ; $0D:EB93: 99 15 09    ;
CODE_0DEB96:    STA $0911,y             ; $0D:EB96: 99 11 09    ;
CODE_0DEB99:    STA $090D,y             ; $0D:EB99: 99 0D 09    ;
CODE_0DEB9C:    STA $0909,y             ; $0D:EB9C: 99 09 09    ;
CODE_0DEB9F:    STA $0905,y             ; $0D:EB9F: 99 05 09    ;
CODE_0DEBA2:    STA $0901,y             ; $0D:EBA2: 99 01 09    ;
CODE_0DEBA5:    RTS                     ; $0D:EBA5: 60          ;

CODE_0DEBA6:    LDA $0743               ; $0D:EBA6: AD 43 07    ;
CODE_0DEBA9:    BEQ CODE_0DEBAE         ; $0D:EBA9: F0 03       ;
CODE_0DEBAB:    JMP CODE_0DEC32         ; $0D:EBAB: 4C 32 EC    ;

CODE_0DEBAE:    LDY $0B46,x             ; $0D:EBAE: BC 46 0B    ;
CODE_0DEBB1:    STY $02                 ; $0D:EBB1: 84 02       ;
CODE_0DEBB3:    LDA $03AE               ; $0D:EBB3: AD AE 03    ;
CODE_0DEBB6:    JSR CODE_0DEB6A         ; $0D:EBB6: 20 6A EB    ;
CODE_0DEBB9:    LDX $9E                 ; $0D:EBB9: A6 9E       ;
CODE_0DEBBB:    LDA $0238,x             ; $0D:EBBB: BD 38 02    ;
CODE_0DEBBE:    JSR CODE_0DEB99         ; $0D:EBBE: 20 99 EB    ;
CODE_0DEBC1:    LDY $5C                 ; $0D:EBC1: A4 5C       ;
CODE_0DEBC3:    CPY #$03                ; $0D:EBC3: C0 03       ;
CODE_0DEBC5:    BEQ CODE_0DEBCC         ; $0D:EBC5: F0 05       ;
CODE_0DEBC7:    LDY $06CC               ; $0D:EBC7: AC CC 06    ;
CODE_0DEBCA:    BEQ CODE_0DEBCE         ; $0D:EBCA: F0 02       ;
CODE_0DEBCC:    LDA #$F0                ; $0D:EBCC: A9 F0       ;
CODE_0DEBCE:    LDY $0B46,x             ; $0D:EBCE: BC 46 0B    ;
CODE_0DEBD1:    STA $0911,y             ; $0D:EBD1: 99 11 09    ;
CODE_0DEBD4:    STA $0915,y             ; $0D:EBD4: 99 15 09    ;
CODE_0DEBD7:    LDA #$87                ; $0D:EBD7: A9 87       ;
CODE_0DEBD9:    LDX $9E                 ; $0D:EBD9: A6 9E       ;
CODE_0DEBDB:    INY                     ; $0D:EBDB: C8          ;
CODE_0DEBDC:    JSR CODE_0DEB93         ; $0D:EBDC: 20 93 EB    ;
CODE_0DEBDF:    LDA #$2C                ; $0D:EBDF: A9 2C       ;
CODE_0DEBE1:    INY                     ; $0D:EBE1: C8          ;
CODE_0DEBE2:    JSR CODE_0DEB93         ; $0D:EBE2: 20 93 EB    ;
CODE_0DEBE5:    JSR CODE_0DFE34         ; $0D:EBE5: 20 34 FE    ;
CODE_0DEBE8:    LDY $0B46,x             ; $0D:EBE8: BC 46 0B    ;
CODE_0DEBEB:    JSR CODE_0DFEC2         ; $0D:EBEB: 20 C2 FE    ;
CODE_0DEBEE:    JSR CODE_0DFEDB         ; $0D:EBEE: 20 DB FE    ;
CODE_0DEBF1:    PHY                     ; $0D:EBF1: 5A          ;
CODE_0DEBF2:    JSR CODE_0DFF51         ; $0D:EBF2: 20 51 FF    ;
CODE_0DEBF5:    JSR CODE_0DFEDB         ; $0D:EBF5: 20 DB FE    ;
CODE_0DEBF8:    JSR CODE_0DFF51         ; $0D:EBF8: 20 51 FF    ;
CODE_0DEBFB:    JSR CODE_0DFEDB         ; $0D:EBFB: 20 DB FE    ;
CODE_0DEBFE:    JSR CODE_0DFF51         ; $0D:EBFE: 20 51 FF    ;
CODE_0DEC01:    JSR CODE_0DFEDB         ; $0D:EC01: 20 DB FE    ;
CODE_0DEC04:    JSR CODE_0DFF51         ; $0D:EC04: 20 51 FF    ;
CODE_0DEC07:    JSR CODE_0DFEDB         ; $0D:EC07: 20 DB FE    ;
CODE_0DEC0A:    JSR CODE_0DFF51         ; $0D:EC0A: 20 51 FF    ;
CODE_0DEC0D:    JSR CODE_0DFEDB         ; $0D:EC0D: 20 DB FE    ;
CODE_0DEC10:    PLY                     ; $0D:EC10: 7A          ;
CODE_0DEC11:    LDA $03D1               ; $0D:EC11: AD D1 03    ;
CODE_0DEC14:    ASL A                   ; $0D:EC14: 0A          ;
CODE_0DEC15:    BCC CODE_0DEC31         ; $0D:EC15: 90 1A       ;
CODE_0DEC17:    LDA $1C,x               ; $0D:EC17: B5 1C       ;
CODE_0DEC19:    CMP #$27                ; $0D:EC19: C9 27       ;
CODE_0DEC1B:    BEQ CODE_0DEC31         ; $0D:EC1B: F0 14       ;
CODE_0DEC1D:    CMP #$26                ; $0D:EC1D: C9 26       ;
CODE_0DEC1F:    BEQ CODE_0DEC31         ; $0D:EC1F: F0 10       ;
CODE_0DEC21:    LDA $BC,x               ; $0D:EC21: B5 BC       ;
CODE_0DEC23:    CMP #$01                ; $0D:EC23: C9 01       ;
CODE_0DEC25:    BNE CODE_0DEC2E         ; $0D:EC25: D0 07       ;
CODE_0DEC27:    LDA $03B9               ; $0D:EC27: AD B9 03    ;
CODE_0DEC2A:    CMP #$F0                ; $0D:EC2A: C9 F0       ;
CODE_0DEC2C:    BCC CODE_0DEC31         ; $0D:EC2C: 90 03       ;
CODE_0DEC2E:    JSR CODE_0DEB91         ; $0D:EC2E: 20 91 EB    ;
CODE_0DEC31:    RTS                     ; $0D:EC31: 60          ;

CODE_0DEC32:    JSL CODE_0FD4D3         ; $0D:EC32: 22 D3 D4 0F ;
CODE_0DEC36:    RTS                     ; $0D:EC36: 60          ;

DATA_0DEC37:        db $E9,$EA,$78,$79,$D6,$D6,$D9,$D9 ;
                    db $8D,$8D,$E4,$E4,$E9,$EA,$78,$79 ;
                    db $7E,$7F,$85,$86 ;

DATA_0DEC4B:        db $2C,$28,$28,$2A,$2C ;

CODE_0DEC50:    LDA $0B4F               ; $0D:EC50: AD 4F 0B    ;
CODE_0DEC53:    CLC                     ; $0D:EC53: 18          ;
CODE_0DEC54:    ADC #$08                ; $0D:EC54: 69 08       ;
CODE_0DEC56:    TAY                     ; $0D:EC56: A8          ;
CODE_0DEC57:    LDA $03B9               ; $0D:EC57: AD B9 03    ;
CODE_0DEC5A:    CLC                     ; $0D:EC5A: 18          ;
CODE_0DEC5B:    ADC #$08                ; $0D:EC5B: 69 08       ;
CODE_0DEC5D:    STA $02                 ; $0D:EC5D: 85 02       ;
CODE_0DEC5F:    LDA $03AE               ; $0D:EC5F: AD AE 03    ;
CODE_0DEC62:    STA $05                 ; $0D:EC62: 85 05       ;
CODE_0DEC64:    LDX $020C               ; $0D:EC64: AE 0C 02    ;
CODE_0DEC67:    LDA DATA_0DEC4B,x       ; $0D:EC67: BD 4B EC    ;
CODE_0DEC6A:    EOR $0260               ; $0D:EC6A: 4D 60 02    ;
CODE_0DEC6D:    STA $04                 ; $0D:EC6D: 85 04       ;
CODE_0DEC6F:    TXA                     ; $0D:EC6F: 8A          ;
CODE_0DEC70:    PHA                     ; $0D:EC70: 48          ;
CODE_0DEC71:    ASL A                   ; $0D:EC71: 0A          ;
CODE_0DEC72:    ASL A                   ; $0D:EC72: 0A          ;
CODE_0DEC73:    TAX                     ; $0D:EC73: AA          ;
CODE_0DEC74:    LDA #$01                ; $0D:EC74: A9 01       ;
CODE_0DEC76:    STA $07                 ; $0D:EC76: 85 07       ;
CODE_0DEC78:    STA $03                 ; $0D:EC78: 85 03       ;
CODE_0DEC7A:    LDA DATA_0DEC37,x       ; $0D:EC7A: BD 37 EC    ;
CODE_0DEC7D:    STA $00                 ; $0D:EC7D: 85 00       ;
CODE_0DEC7F:    LDA DATA_0DEC37+1,x     ; $0D:EC7F: BD 38 EC    ;
CODE_0DEC82:    JSR CODE_0DF2EF         ; $0D:EC82: 20 EF F2    ;
CODE_0DEC85:    DEC $07                 ; $0D:EC85: C6 07       ;
CODE_0DEC87:    BPL CODE_0DEC7A         ; $0D:EC87: 10 F1       ;
CODE_0DEC89:    LDA $0B4F               ; $0D:EC89: AD 4F 0B    ;
CODE_0DEC8C:    CLC                     ; $0D:EC8C: 18          ;
CODE_0DEC8D:    ADC #$08                ; $0D:EC8D: 69 08       ;
CODE_0DEC8F:    TAY                     ; $0D:EC8F: A8          ;
CODE_0DEC90:    PLA                     ; $0D:EC90: 68          ;
CODE_0DEC91:    BEQ CODE_0DECD3         ; $0D:EC91: F0 40       ;
CODE_0DEC93:    CMP #$03                ; $0D:EC93: C9 03       ;
CODE_0DEC95:    BEQ CODE_0DECD3         ; $0D:EC95: F0 3C       ;
CODE_0DEC97:    CMP #$04                ; $0D:EC97: C9 04       ;
CODE_0DEC99:    BEQ CODE_0DECD3         ; $0D:EC99: F0 38       ;
CODE_0DEC9B:    STA $00                 ; $0D:EC9B: 85 00       ;
CODE_0DEC9D:    LDA $09                 ; $0D:EC9D: A5 09       ;
CODE_0DEC9F:    AND #$06                ; $0D:EC9F: 29 06       ;
CODE_0DECA1:    CMP #$06                ; $0D:ECA1: C9 06       ;
CODE_0DECA3:    BNE CODE_0DECA7         ; $0D:ECA3: D0 02       ;
CODE_0DECA5:    LDA #$0E                ; $0D:ECA5: A9 0E       ;
CODE_0DECA7:    ORA $0260               ; $0D:ECA7: 0D 60 02    ;
CODE_0DECAA:    EOR #$28                ; $0D:ECAA: 49 28       ;
CODE_0DECAC:    STA $0903,y             ; $0D:ECAC: 99 03 09    ;
CODE_0DECAF:    STA $0907,y             ; $0D:ECAF: 99 07 09    ;
CODE_0DECB2:    STA $090B,y             ; $0D:ECB2: 99 0B 09    ;
CODE_0DECB5:    STA $090F,y             ; $0D:ECB5: 99 0F 09    ;
CODE_0DECB8:    LDX $00                 ; $0D:ECB8: A6 00       ;
CODE_0DECBA:    DEX                     ; $0D:ECBA: CA          ;
CODE_0DECBB:    BEQ CODE_0DECC3         ; $0D:ECBB: F0 06       ;
CODE_0DECBD:    STA $090B,y             ; $0D:ECBD: 99 0B 09    ;
CODE_0DECC0:    STA $090F,y             ; $0D:ECC0: 99 0F 09    ;
CODE_0DECC3:    LDA $0907,y             ; $0D:ECC3: B9 07 09    ;
CODE_0DECC6:    ORA #$40                ; $0D:ECC6: 09 40       ;
CODE_0DECC8:    STA $0907,y             ; $0D:ECC8: 99 07 09    ;
CODE_0DECCB:    LDA $090F,y             ; $0D:ECCB: B9 0F 09    ;
CODE_0DECCE:    ORA #$40                ; $0D:ECCE: 09 40       ;
CODE_0DECD0:    STA $090F,y             ; $0D:ECD0: 99 0F 09    ;
CODE_0DECD3:    LDA $0B4F               ; $0D:ECD3: AD 4F 0B    ;
CODE_0DECD6:    CLC                     ; $0D:ECD6: 18          ;
CODE_0DECD7:    ADC #$08                ; $0D:ECD7: 69 08       ;
CODE_0DECD9:    TAY                     ; $0D:ECD9: A8          ;
CODE_0DECDA:    JMP CODE_0DF29F         ; $0D:ECDA: 4C 9F F2    ;

DATA_0DECDD:        db $FC,$FC,$AA,$AB,$AC,$AD,$FC,$FC ;
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
                    db $D7,$D7,$C8,$C9,$D8,$D9,$E8,$E9 ;
                    db $D6,$D7,$E6,$E7,$F8,$F7,$EE,$EF ;
                    db $FE,$FF,$E2,$E3,$DA,$DB,$EA,$EB ;
                    db $FA,$FB,$FC,$FC,$64,$65,$74,$75 ;
                    db $F2,$F2,$F3,$F3,$F2,$F2,$F1,$F1 ;
                    db $F1,$F1,$FC,$FC,$F0,$F0,$FC,$FC ;
                    db $FC,$FC ;

DATA_0DEDDF:        db $0C,$0C,$00,$0C,$C0,$A8,$54,$3C ;
                    db $EA,$18,$48,$48,$CC,$C0,$18,$18 ;
                    db $18,$90,$24,$FF,$48,$9C,$D2,$D8 ;
                    db $F0,$F6,$FC ;

DATA_0DEDFA:        db $0A,$0C,$0A,$0C,$2C,$0A,$02,$08 ;
                    db $0A,$08,$0A,$0C,$08,$2A,$0A,$0C ;
                    db $0A,$0A,$0C,$FF,$0C,$0C,$00,$00 ;
                    db $2C,$2C,$2C ;

DATA_0DEE15:        db $08,$18 ;

DATA_0DEE17:        db $18,$19,$1A,$19,$18 ;

DATA_0DEE1C:        db $00,$00,$00,$00,$00,$00,$06,$06 ;
                    db $06,$06,$06,$06,$0C,$0C,$0C,$0C ;
                    db $0C,$0C ;

DATA_0DEE2E:        db $FC,$FC,$D0,$D0,$D7,$D7,$FC,$FC ;
                    db $7E,$7E,$7F,$7F,$FC,$FC,$E0,$E0 ;
                    db $E1,$E1 ;

CODE_0DEE40:    LDA $1C,x               ; $0D:EE40: B5 1C       ;
CODE_0DEE42:    CMP #$0C                ; $0D:EE42: C9 0C       ;
CODE_0DEE44:    BNE CODE_0DEE4B         ; $0D:EE44: D0 05       ;
CODE_0DEE46:    JSL CODE_0FF913         ; $0D:EE46: 22 13 F9 0F ;
CODE_0DEE4A:    RTS                     ; $0D:EE4A: 60          ;

CODE_0DEE4B:    CMP #$08                ; $0D:EE4B: C9 08       ;
CODE_0DEE4D:    BNE CODE_0DEE5D         ; $0D:EE4D: D0 0E       ;
CODE_0DEE4F:    LDA $BC,x               ; $0D:EE4F: B5 BC       ;
CODE_0DEE51:    CMP #$02                ; $0D:EE51: C9 02       ;
CODE_0DEE53:    BNE CODE_0DEE58         ; $0D:EE53: D0 03       ;
CODE_0DEE55:    JSR CODE_0DCCEA         ; $0D:EE55: 20 EA CC    ;
CODE_0DEE58:    JSL CODE_0FD22A         ; $0D:EE58: 22 2A D2 0F ;
CODE_0DEE5C:    RTS                     ; $0D:EE5C: 60          ;

CODE_0DEE5D:    CMP #$33                ; $0D:EE5D: C9 33       ;
CODE_0DEE5F:    BNE CODE_0DEE6F         ; $0D:EE5F: D0 0E       ;
CODE_0DEE61:    LDA $BC,x               ; $0D:EE61: B5 BC       ;
CODE_0DEE63:    CMP #$02                ; $0D:EE63: C9 02       ;
CODE_0DEE65:    BNE CODE_0DEE6A         ; $0D:EE65: D0 03       ;
CODE_0DEE67:    JSR CODE_0DCCEA         ; $0D:EE67: 20 EA CC    ;
CODE_0DEE6A:    JSL CODE_0FD22A         ; $0D:EE6A: 22 2A D2 0F ;
CODE_0DEE6E:    RTS                     ; $0D:EE6E: 60          ;

CODE_0DEE6F:    CMP #$2D                ; $0D:EE6F: C9 2D       ;
CODE_0DEE71:    BNE CODE_0DEE78         ; $0D:EE71: D0 05       ;
CODE_0DEE73:    JSL CODE_0FD73D         ; $0D:EE73: 22 3D D7 0F ;
CODE_0DEE77:    RTS                     ; $0D:EE77: 60          ;

CODE_0DEE78:    CMP #$35                ; $0D:EE78: C9 35       ;
CODE_0DEE7A:    BNE CODE_0DEE91         ; $0D:EE7A: D0 15       ;
CODE_0DEE7C:    LDA $075F               ; $0D:EE7C: AD 5F 07    ;
CODE_0DEE7F:    CMP #$07                ; $0D:EE7F: C9 07       ;
CODE_0DEE81:    BEQ CODE_0DEE8C         ; $0D:EE81: F0 09       ;
CODE_0DEE83:    CMP #$0C                ; $0D:EE83: C9 0C       ;
CODE_0DEE85:    BEQ CODE_0DEE8C         ; $0D:EE85: F0 05       ;
CODE_0DEE87:    JSL CODE_00D57A         ; $0D:EE87: 22 7A D5 00 ;
CODE_0DEE8B:    RTS                     ; $0D:EE8B: 60          ;

CODE_0DEE8C:    JSL CODE_00C4BB         ; $0D:EE8C: 22 BB C4 00 ;
CODE_0DEE90:    RTS                     ; $0D:EE90: 60          ;

CODE_0DEE91:    LDA #$02                ; $0D:EE91: A9 02       ;
CODE_0DEE93:    LDY $075F               ; $0D:EE93: AC 5F 07    ;
CODE_0DEE96:    CPY #$01                ; $0D:EE96: C0 01       ;
CODE_0DEE98:    BEQ CODE_0DEEA6         ; $0D:EE98: F0 0C       ;
CODE_0DEE9A:    CPY #$02                ; $0D:EE9A: C0 02       ;
CODE_0DEE9C:    BEQ CODE_0DEEA6         ; $0D:EE9C: F0 08       ;
CODE_0DEE9E:    CPY #$06                ; $0D:EE9E: C0 06       ;
CODE_0DEEA0:    BEQ CODE_0DEEA6         ; $0D:EEA0: F0 04       ;
CODE_0DEEA2:    CPY #$0B                ; $0D:EEA2: C0 0B       ;
CODE_0DEEA4:    BNE CODE_0DEEA7         ; $0D:EEA4: D0 01       ;
CODE_0DEEA6:    LSR A                   ; $0D:EEA6: 4A          ;
CODE_0DEEA7:    STA $0F30               ; $0D:EEA7: 8D 30 0F    ;
CODE_0DEEAA:    STA $0F31               ; $0D:EEAA: 8D 31 0F    ;
CODE_0DEEAD:    STA $0F32               ; $0D:EEAD: 8D 32 0F    ;
CODE_0DEEB0:    LDA $0238,x             ; $0D:EEB0: BD 38 02    ;
CODE_0DEEB3:    STA $02                 ; $0D:EEB3: 85 02       ;
CODE_0DEEB5:    LDA $03AE               ; $0D:EEB5: AD AE 03    ;
CODE_0DEEB8:    STA $05                 ; $0D:EEB8: 85 05       ;
CODE_0DEEBA:    LDY $0B46,x             ; $0D:EEBA: BC 46 0B    ;
CODE_0DEEBD:    STY $EB                 ; $0D:EEBD: 84 EB       ;
CODE_0DEEBF:    LDA #$00                ; $0D:EEBF: A9 00       ;
CODE_0DEEC1:    STA $F0                 ; $0D:EEC1: 85 F0       ;
CODE_0DEEC3:    LDA $47,x               ; $0D:EEC3: B5 47       ;
CODE_0DEEC5:    STA $03                 ; $0D:EEC5: 85 03       ;
CODE_0DEEC7:    LDA $0257,x             ; $0D:EEC7: BD 57 02    ;
CODE_0DEECA:    STA $04                 ; $0D:EECA: 85 04       ;
CODE_0DEECC:    LDA $1C,x               ; $0D:EECC: B5 1C       ;
CODE_0DEECE:    CMP #$0D                ; $0D:EECE: C9 0D       ;
CODE_0DEED0:    BNE CODE_0DEEDC         ; $0D:EED0: D0 0A       ;
CODE_0DEED2:    LDY $5E,x               ; $0D:EED2: B4 5E       ;
CODE_0DEED4:    BMI CODE_0DEEDC         ; $0D:EED4: 30 06       ;
CODE_0DEED6:    LDY $0792,x             ; $0D:EED6: BC 92 07    ;
CODE_0DEED9:    BEQ CODE_0DEEDC         ; $0D:EED9: F0 01       ;
CODE_0DEEDB:    RTS                     ; $0D:EEDB: 60          ;

CODE_0DEEDC:    LDA $29,x               ; $0D:EEDC: B5 29       ;
CODE_0DEEDE:    STA $ED                 ; $0D:EEDE: 85 ED       ;
CODE_0DEEE0:    AND #$1F                ; $0D:EEE0: 29 1F       ;
CODE_0DEEE2:    TAY                     ; $0D:EEE2: A8          ;
CODE_0DEEE3:    LDA $1C,x               ; $0D:EEE3: B5 1C       ;
CODE_0DEEE5:    CMP #$35                ; $0D:EEE5: C9 35       ;
CODE_0DEEE7:    BNE CODE_0DEEF1         ; $0D:EEE7: D0 08       ;
CODE_0DEEE9:    LDY #$00                ; $0D:EEE9: A0 00       ;
CODE_0DEEEB:    LDA #$01                ; $0D:EEEB: A9 01       ;
CODE_0DEEED:    STA $03                 ; $0D:EEED: 85 03       ;
CODE_0DEEEF:    LDA #$15                ; $0D:EEEF: A9 15       ;
CODE_0DEEF1:    CMP #$33                ; $0D:EEF1: C9 33       ;
CODE_0DEEF3:    BNE CODE_0DEF08         ; $0D:EEF3: D0 13       ;
CODE_0DEEF5:    DEC $02                 ; $0D:EEF5: C6 02       ;
CODE_0DEEF7:    LDA #$20                ; $0D:EEF7: A9 20       ;
CODE_0DEEF9:    LDY $0792,x             ; $0D:EEF9: BC 92 07    ;
CODE_0DEEFC:    BEQ CODE_0DEF00         ; $0D:EEFC: F0 02       ;
CODE_0DEEFE:    EOR #$30                ; $0D:EEFE: 49 30       ;
CODE_0DEF00:    STA $04                 ; $0D:EF00: 85 04       ;
CODE_0DEF02:    LDY #$00                ; $0D:EF02: A0 00       ;
CODE_0DEF04:    STY $ED                 ; $0D:EF04: 84 ED       ;
CODE_0DEF06:    LDA #$08                ; $0D:EF06: A9 08       ;
CODE_0DEF08:    CMP #$32                ; $0D:EF08: C9 32       ;
CODE_0DEF0A:    BNE CODE_0DEF14         ; $0D:EF0A: D0 08       ;
CODE_0DEF0C:    LDY #$03                ; $0D:EF0C: A0 03       ;
CODE_0DEF0E:    LDX $070E               ; $0D:EF0E: AE 0E 07    ;
CODE_0DEF11:    LDA DATA_0DEE17,x       ; $0D:EF11: BD 17 EE    ;
CODE_0DEF14:    STA $EF                 ; $0D:EF14: 85 EF       ;
CODE_0DEF16:    STY $EC                 ; $0D:EF16: 84 EC       ;
CODE_0DEF18:    LDX $9E                 ; $0D:EF18: A6 9E       ;
CODE_0DEF1A:    CMP #$0C                ; $0D:EF1A: C9 0C       ;
CODE_0DEF1C:    BNE CODE_0DEF24         ; $0D:EF1C: D0 06       ;
CODE_0DEF1E:    LDA $A1,x               ; $0D:EF1E: B5 A1       ;
CODE_0DEF20:    BMI CODE_0DEF24         ; $0D:EF20: 30 02       ;
CODE_0DEF22:    INC $F0                 ; $0D:EF22: E6 F0       ;
CODE_0DEF24:    LDA $036A               ; $0D:EF24: AD 6A 03    ;
CODE_0DEF27:    BEQ CODE_0DEF32         ; $0D:EF27: F0 09       ;
CODE_0DEF29:    LDY #$16                ; $0D:EF29: A0 16       ;
CODE_0DEF2B:    CMP #$01                ; $0D:EF2B: C9 01       ;
CODE_0DEF2D:    BEQ CODE_0DEF30         ; $0D:EF2D: F0 01       ;
CODE_0DEF2F:    INY                     ; $0D:EF2F: C8          ;
CODE_0DEF30:    STY $EF                 ; $0D:EF30: 84 EF       ;
CODE_0DEF32:    LDY $EF                 ; $0D:EF32: A4 EF       ;
CODE_0DEF34:    CPY #$06                ; $0D:EF34: C0 06       ;
CODE_0DEF36:    BNE CODE_0DEF55         ; $0D:EF36: D0 1D       ;
CODE_0DEF38:    LDA $29,x               ; $0D:EF38: B5 29       ;
CODE_0DEF3A:    CMP #$02                ; $0D:EF3A: C9 02       ;
CODE_0DEF3C:    BCC CODE_0DEF42         ; $0D:EF3C: 90 04       ;
CODE_0DEF3E:    LDX #$04                ; $0D:EF3E: A2 04       ;
CODE_0DEF40:    STX $EC                 ; $0D:EF40: 86 EC       ;
CODE_0DEF42:    AND #$20                ; $0D:EF42: 29 20       ;
CODE_0DEF44:    ORA $0747               ; $0D:EF44: 0D 47 07    ;
CODE_0DEF47:    BNE CODE_0DEF55         ; $0D:EF47: D0 0C       ;
CODE_0DEF49:    LDA $09                 ; $0D:EF49: A5 09       ;
CODE_0DEF4B:    AND #$08                ; $0D:EF4B: 29 08       ;
CODE_0DEF4D:    BNE CODE_0DEF55         ; $0D:EF4D: D0 06       ;
CODE_0DEF4F:    LDA $03                 ; $0D:EF4F: A5 03       ;
CODE_0DEF51:    EOR #$03                ; $0D:EF51: 49 03       ;
CODE_0DEF53:    STA $03                 ; $0D:EF53: 85 03       ;
CODE_0DEF55:    CPY #$0D                ; $0D:EF55: C0 0D       ;
CODE_0DEF57:    BNE CODE_0DEF5E         ; $0D:EF57: D0 05       ;
CODE_0DEF59:    LDA $0F24               ; $0D:EF59: AD 24 0F    ;
CODE_0DEF5C:    BRA CODE_0DEF7D         ; $0D:EF5C: 80 1F       ;

CODE_0DEF5E:    LDA DATA_0DEDFA,y       ; $0D:EF5E: B9 FA ED    ;
CODE_0DEF61:    CPY #$14                ; $0D:EF61: C0 14       ;
CODE_0DEF63:    BNE CODE_0DEF69         ; $0D:EF63: D0 04       ;
CODE_0DEF65:    LDA #$3C                ; $0D:EF65: A9 3C       ;
CODE_0DEF67:    BRA CODE_0DEF7F         ; $0D:EF67: 80 16       ;

CODE_0DEF69:    CPY #$16                ; $0D:EF69: C0 16       ;
CODE_0DEF6B:    BEQ CODE_0DEF71         ; $0D:EF6B: F0 04       ;
CODE_0DEF6D:    CPY #$17                ; $0D:EF6D: C0 17       ;
CODE_0DEF6F:    BNE CODE_0DEF7D         ; $0D:EF6F: D0 0C       ;
CODE_0DEF71:    LDA $0201               ; $0D:EF71: AD 01 02    ;
CODE_0DEF74:    LSR A                   ; $0D:EF74: 4A          ;
CODE_0DEF75:    BCC CODE_0DEF7B         ; $0D:EF75: 90 04       ;
CODE_0DEF77:    LDA #$06                ; $0D:EF77: A9 06       ;
CODE_0DEF79:    BRA CODE_0DEF7D         ; $0D:EF79: 80 02       ;

CODE_0DEF7B:    LDA #$00                ; $0D:EF7B: A9 00       ;
CODE_0DEF7D:    EOR $04                 ; $0D:EF7D: 45 04       ;
CODE_0DEF7F:    STA $04                 ; $0D:EF7F: 85 04       ;
CODE_0DEF81:    CPY #$15                ; $0D:EF81: C0 15       ;
CODE_0DEF83:    BNE CODE_0DEF98         ; $0D:EF83: D0 13       ;
CODE_0DEF85:    LDA $075F               ; $0D:EF85: AD 5F 07    ;
CODE_0DEF88:    CMP #$07                ; $0D:EF88: C9 07       ;
CODE_0DEF8A:    BEQ CODE_0DEF90         ; $0D:EF8A: F0 04       ;
CODE_0DEF8C:    CMP #$0C                ; $0D:EF8C: C9 0C       ;
CODE_0DEF8E:    BNE CODE_0DEF98         ; $0D:EF8E: D0 08       ;
CODE_0DEF90:    LDA $04                 ; $0D:EF90: A5 04       ;
CODE_0DEF92:    AND #$F0                ; $0D:EF92: 29 F0       ;
CODE_0DEF94:    ORA #$04                ; $0D:EF94: 09 04       ;
CODE_0DEF96:    STA $04                 ; $0D:EF96: 85 04       ;
CODE_0DEF98:    LDA $0E85               ; $0D:EF98: AD 85 0E    ;
CODE_0DEF9B:    BEQ CODE_0DEFA6         ; $0D:EF9B: F0 09       ;
CODE_0DEF9D:    LDA DATA_0DEDDF,y       ; $0D:EF9D: B9 DF ED    ;
CODE_0DEFA0:    CLC                     ; $0D:EFA0: 18          ;
CODE_0DEFA1:    ADC #$06                ; $0D:EFA1: 69 06       ;
CODE_0DEFA3:    TAX                     ; $0D:EFA3: AA          ;
CODE_0DEFA4:    BRA CODE_0DEFAA         ; $0D:EFA4: 80 04       ;

CODE_0DEFA6:    LDA DATA_0DEDDF,y       ; $0D:EFA6: B9 DF ED    ;
CODE_0DEFA9:    TAX                     ; $0D:EFA9: AA          ;
CODE_0DEFAA:    LDY $EC                 ; $0D:EFAA: A4 EC       ;
CODE_0DEFAC:    LDA $036A               ; $0D:EFAC: AD 6A 03    ;
CODE_0DEFAF:    BEQ CODE_0DEFDF         ; $0D:EFAF: F0 2E       ;
CODE_0DEFB1:    CMP #$01                ; $0D:EFB1: C9 01       ;
CODE_0DEFB3:    BNE CODE_0DEFC7         ; $0D:EFB3: D0 12       ;
CODE_0DEFB5:    LDA $0363               ; $0D:EFB5: AD 63 03    ;
CODE_0DEFB8:    BPL CODE_0DEFBC         ; $0D:EFB8: 10 02       ;
CODE_0DEFBA:    LDX #$DE                ; $0D:EFBA: A2 DE       ;
CODE_0DEFBC:    LDA $ED                 ; $0D:EFBC: A5 ED       ;
CODE_0DEFBE:    AND #$20                ; $0D:EFBE: 29 20       ;
CODE_0DEFC0:    BEQ CODE_0DEFC4         ; $0D:EFC0: F0 02       ;
CODE_0DEFC2:    STX $F0                 ; $0D:EFC2: 86 F0       ;
CODE_0DEFC4:    JMP CODE_0DF0CD         ; $0D:EFC4: 4C CD F0    ;

CODE_0DEFC7:    LDA $0363               ; $0D:EFC7: AD 63 03    ;
CODE_0DEFCA:    AND #$01                ; $0D:EFCA: 29 01       ;
CODE_0DEFCC:    BEQ CODE_0DEFD0         ; $0D:EFCC: F0 02       ;
CODE_0DEFCE:    LDX #$E4                ; $0D:EFCE: A2 E4       ;
CODE_0DEFD0:    LDA $ED                 ; $0D:EFD0: A5 ED       ;
CODE_0DEFD2:    AND #$20                ; $0D:EFD2: 29 20       ;
CODE_0DEFD4:    BEQ CODE_0DEFC4         ; $0D:EFD4: F0 EE       ;
CODE_0DEFD6:    LDA $02                 ; $0D:EFD6: A5 02       ;
CODE_0DEFD8:    SEC                     ; $0D:EFD8: 38          ;
CODE_0DEFD9:    SBC #$10                ; $0D:EFD9: E9 10       ;
CODE_0DEFDB:    STA $02                 ; $0D:EFDB: 85 02       ;
CODE_0DEFDD:    BRA CODE_0DEFC2         ; $0D:EFDD: 80 E3       ;

CODE_0DEFDF:    CPX #$24                ; $0D:EFDF: E0 24       ;
CODE_0DEFE1:    BNE CODE_0DEFF3         ; $0D:EFE1: D0 10       ;
CODE_0DEFE3:    CPY #$05                ; $0D:EFE3: C0 05       ;
CODE_0DEFE5:    BNE CODE_0DEFF1         ; $0D:EFE5: D0 0A       ;
CODE_0DEFE7:    LDX #$30                ; $0D:EFE7: A2 30       ;
CODE_0DEFE9:    LDA #$02                ; $0D:EFE9: A9 02       ;
CODE_0DEFEB:    STA $03                 ; $0D:EFEB: 85 03       ;
CODE_0DEFED:    LDA #$05                ; $0D:EFED: A9 05       ;
CODE_0DEFEF:    STA $EC                 ; $0D:EFEF: 85 EC       ;
CODE_0DEFF1:    BRA CODE_0DF043         ; $0D:EFF1: 80 50       ;

CODE_0DEFF3:    CPX #$90                ; $0D:EFF3: E0 90       ;
CODE_0DEFF5:    BNE CODE_0DF009         ; $0D:EFF5: D0 12       ;
CODE_0DEFF7:    LDA $ED                 ; $0D:EFF7: A5 ED       ;
CODE_0DEFF9:    AND #$20                ; $0D:EFF9: 29 20       ;
CODE_0DEFFB:    BNE CODE_0DF006         ; $0D:EFFB: D0 09       ;
CODE_0DEFFD:    LDA $079B               ; $0D:EFFD: AD 9B 07    ;
CODE_0DF000:    CMP #$10                ; $0D:F000: C9 10       ;
CODE_0DF002:    BCS CODE_0DF006         ; $0D:F002: B0 02       ;
CODE_0DF004:    LDX #$96                ; $0D:F004: A2 96       ;
CODE_0DF006:    JMP CODE_0DF0B3         ; $0D:F006: 4C B3 F0    ;

CODE_0DF009:    LDA $EF                 ; $0D:F009: A5 EF       ;
CODE_0DF00B:    CMP #$04                ; $0D:F00B: C9 04       ;
CODE_0DF00D:    BCS CODE_0DF01F         ; $0D:F00D: B0 10       ;
CODE_0DF00F:    CPY #$02                ; $0D:F00F: C0 02       ;
CODE_0DF011:    BCC CODE_0DF01F         ; $0D:F011: 90 0C       ;
CODE_0DF013:    LDX #$5A                ; $0D:F013: A2 5A       ;
CODE_0DF015:    LDY $EF                 ; $0D:F015: A4 EF       ;
CODE_0DF017:    CPY #$02                ; $0D:F017: C0 02       ;
CODE_0DF019:    BNE CODE_0DF01F         ; $0D:F019: D0 04       ;
CODE_0DF01B:    LDX #$7E                ; $0D:F01B: A2 7E       ;
CODE_0DF01D:    INC $02                 ; $0D:F01D: E6 02       ;
CODE_0DF01F:    LDA $EC                 ; $0D:F01F: A5 EC       ;
CODE_0DF021:    CMP #$04                ; $0D:F021: C9 04       ;
CODE_0DF023:    BNE CODE_0DF043         ; $0D:F023: D0 1E       ;
CODE_0DF025:    LDX #$72                ; $0D:F025: A2 72       ;
CODE_0DF027:    INC $02                 ; $0D:F027: E6 02       ;
CODE_0DF029:    LDY $EF                 ; $0D:F029: A4 EF       ;
CODE_0DF02B:    CPY #$02                ; $0D:F02B: C0 02       ;
CODE_0DF02D:    BEQ CODE_0DF033         ; $0D:F02D: F0 04       ;
CODE_0DF02F:    LDX #$66                ; $0D:F02F: A2 66       ;
CODE_0DF031:    INC $02                 ; $0D:F031: E6 02       ;
CODE_0DF033:    CPY #$06                ; $0D:F033: C0 06       ;
CODE_0DF035:    BNE CODE_0DF043         ; $0D:F035: D0 0C       ;
CODE_0DF037:    LDX #$54                ; $0D:F037: A2 54       ;
CODE_0DF039:    LDA $ED                 ; $0D:F039: A5 ED       ;
CODE_0DF03B:    AND #$20                ; $0D:F03B: 29 20       ;
CODE_0DF03D:    BNE CODE_0DF043         ; $0D:F03D: D0 04       ;
CODE_0DF03F:    LDX #$8A                ; $0D:F03F: A2 8A       ;
CODE_0DF041:    DEC $02                 ; $0D:F041: C6 02       ;
CODE_0DF043:    LDY $9E                 ; $0D:F043: A4 9E       ;
CODE_0DF045:    LDA $EF                 ; $0D:F045: A5 EF       ;
CODE_0DF047:    CMP #$05                ; $0D:F047: C9 05       ;
CODE_0DF049:    BNE CODE_0DF057         ; $0D:F049: D0 0C       ;
CODE_0DF04B:    LDA $ED                 ; $0D:F04B: A5 ED       ;
CODE_0DF04D:    BEQ CODE_0DF072         ; $0D:F04D: F0 23       ;
CODE_0DF04F:    AND #$08                ; $0D:F04F: 29 08       ;
CODE_0DF051:    BEQ CODE_0DF0B3         ; $0D:F051: F0 60       ;
CODE_0DF053:    LDX #$B4                ; $0D:F053: A2 B4       ;
CODE_0DF055:    BNE CODE_0DF072         ; $0D:F055: D0 1B       ;
CODE_0DF057:    CPX #$48                ; $0D:F057: E0 48       ;
CODE_0DF059:    BEQ CODE_0DF072         ; $0D:F059: F0 17       ;
CODE_0DF05B:    LDA $07A2,y             ; $0D:F05B: B9 A2 07    ;
CODE_0DF05E:    CMP #$05                ; $0D:F05E: C9 05       ;
CODE_0DF060:    BCS CODE_0DF0B3         ; $0D:F060: B0 51       ;
CODE_0DF062:    CPX #$3C                ; $0D:F062: E0 3C       ;
CODE_0DF064:    BNE CODE_0DF072         ; $0D:F064: D0 0C       ;
CODE_0DF066:    CMP #$01                ; $0D:F066: C9 01       ;
CODE_0DF068:    BEQ CODE_0DF0B3         ; $0D:F068: F0 49       ;
CODE_0DF06A:    INC $02                 ; $0D:F06A: E6 02       ;
CODE_0DF06C:    INC $02                 ; $0D:F06C: E6 02       ;
CODE_0DF06E:    INC $02                 ; $0D:F06E: E6 02       ;
CODE_0DF070:    BRA CODE_0DF0A5         ; $0D:F070: 80 33       ;

CODE_0DF072:    LDA $EF                 ; $0D:F072: A5 EF       ;
CODE_0DF074:    CMP #$06                ; $0D:F074: C9 06       ;
CODE_0DF076:    BEQ CODE_0DF0B3         ; $0D:F076: F0 3B       ;
CODE_0DF078:    CMP #$08                ; $0D:F078: C9 08       ;
CODE_0DF07A:    BEQ CODE_0DF0B3         ; $0D:F07A: F0 37       ;
CODE_0DF07C:    CMP #$0C                ; $0D:F07C: C9 0C       ;
CODE_0DF07E:    BEQ CODE_0DF0B3         ; $0D:F07E: F0 33       ;
CODE_0DF080:    CMP #$18                ; $0D:F080: C9 18       ;
CODE_0DF082:    BCS CODE_0DF0B3         ; $0D:F082: B0 2F       ;
CODE_0DF084:    LDY #$00                ; $0D:F084: A0 00       ;
CODE_0DF086:    CMP #$15                ; $0D:F086: C9 15       ;
CODE_0DF088:    BNE CODE_0DF09E         ; $0D:F088: D0 14       ;
CODE_0DF08A:    INY                     ; $0D:F08A: C8          ;
CODE_0DF08B:    LDA $075F               ; $0D:F08B: AD 5F 07    ;
CODE_0DF08E:    CMP #$07                ; $0D:F08E: C9 07       ;
CODE_0DF090:    BEQ CODE_0DF0B3         ; $0D:F090: F0 21       ;
CODE_0DF092:    CMP #$0C                ; $0D:F092: C9 0C       ;
CODE_0DF094:    BEQ CODE_0DF0B3         ; $0D:F094: F0 1D       ;
CODE_0DF096:    LDX #$A2                ; $0D:F096: A2 A2       ;
CODE_0DF098:    LDA #$03                ; $0D:F098: A9 03       ;
CODE_0DF09A:    STA $EC                 ; $0D:F09A: 85 EC       ;
CODE_0DF09C:    BNE CODE_0DF0B3         ; $0D:F09C: D0 15       ;
CODE_0DF09E:    LDA $09                 ; $0D:F09E: A5 09       ;
CODE_0DF0A0:    AND DATA_0DEE15,y       ; $0D:F0A0: 39 15 EE    ;
CODE_0DF0A3:    BNE CODE_0DF0B3         ; $0D:F0A3: D0 0E       ;
CODE_0DF0A5:    LDA $ED                 ; $0D:F0A5: A5 ED       ;
CODE_0DF0A7:    AND #$A0                ; $0D:F0A7: 29 A0       ;
CODE_0DF0A9:    ORA $0747               ; $0D:F0A9: 0D 47 07    ;
CODE_0DF0AC:    BNE CODE_0DF0B3         ; $0D:F0AC: D0 05       ;
CODE_0DF0AE:    TXA                     ; $0D:F0AE: 8A          ;
CODE_0DF0AF:    CLC                     ; $0D:F0AF: 18          ;
CODE_0DF0B0:    ADC #$06                ; $0D:F0B0: 69 06       ;
CODE_0DF0B2:    TAX                     ; $0D:F0B2: AA          ;
CODE_0DF0B3:    LDA $00EF               ; $0D:F0B3: AD EF 00    ;
CODE_0DF0B6:    CMP #$04                ; $0D:F0B6: C9 04       ;
CODE_0DF0B8:    BEQ CODE_0DF0C6         ; $0D:F0B8: F0 0C       ;
CODE_0DF0BA:    LDA $ED                 ; $0D:F0BA: A5 ED       ;
CODE_0DF0BC:    AND #$20                ; $0D:F0BC: 29 20       ;
CODE_0DF0BE:    BEQ CODE_0DF0CD         ; $0D:F0BE: F0 0D       ;
CODE_0DF0C0:    LDA $EF                 ; $0D:F0C0: A5 EF       ;
CODE_0DF0C2:    CMP #$04                ; $0D:F0C2: C9 04       ;
CODE_0DF0C4:    BCC CODE_0DF0CD         ; $0D:F0C4: 90 07       ;
CODE_0DF0C6:    LDY #$01                ; $0D:F0C6: A0 01       ;
CODE_0DF0C8:    STY $F0                 ; $0D:F0C8: 84 F0       ;
CODE_0DF0CA:    DEY                     ; $0D:F0CA: 88          ;
CODE_0DF0CB:    STY $EC                 ; $0D:F0CB: 84 EC       ;
CODE_0DF0CD:    LDY $EB                 ; $0D:F0CD: A4 EB       ;
CODE_0DF0CF:    JSL CODE_0FF96C         ; $0D:F0CF: 22 6C F9 0F ;
CODE_0DF0D3:    BCS CODE_0DF0E2         ; $0D:F0D3: B0 0D       ;
CODE_0DF0D5:    JSR CODE_0DF2E7         ; $0D:F0D5: 20 E7 F2    ;
CODE_0DF0D8:    JSR CODE_0DF2E7         ; $0D:F0D8: 20 E7 F2    ;
CODE_0DF0DB:    JSR CODE_0DF2E7         ; $0D:F0DB: 20 E7 F2    ;
CODE_0DF0DE:    JSL CODE_0FFA4D         ; $0D:F0DE: 22 4D FA 0F ;
CODE_0DF0E2:    LDX $9E                 ; $0D:F0E2: A6 9E       ;
CODE_0DF0E4:    LDY $0B46,x             ; $0D:F0E4: BC 46 0B    ;
CODE_0DF0E7:    LDA $1C,x               ; $0D:F0E7: B5 1C       ;
CODE_0DF0E9:    CMP #$0C                ; $0D:F0E9: C9 0C       ;
CODE_0DF0EB:    BNE CODE_0DF128         ; $0D:F0EB: D0 3B       ;
CODE_0DF0ED:    INC $0E1B,x             ; $0D:F0ED: FE 1B 0E    ;
CODE_0DF0F0:    LDA $0E1B,x             ; $0D:F0F0: BD 1B 0E    ;
CODE_0DF0F3:    CMP #$12                ; $0D:F0F3: C9 12       ;
CODE_0DF0F5:    BCC CODE_0DF0FD         ; $0D:F0F5: 90 06       ;
CODE_0DF0F7:    STZ $0E1B,x             ; $0D:F0F7: 9E 1B 0E    ;
CODE_0DF0FA:    LDA $0E1B,x             ; $0D:F0FA: BD 1B 0E    ;
CODE_0DF0FD:    TAX                     ; $0D:F0FD: AA          ;
CODE_0DF0FE:    LDA DATA_0DEE1C,x       ; $0D:F0FE: BD 1C EE    ;
CODE_0DF101:    TAX                     ; $0D:F101: AA          ;
CODE_0DF102:    LDA DATA_0DEE2E,x       ; $0D:F102: BD 2E EE    ;
CODE_0DF105:    STA $0902,y             ; $0D:F105: 99 02 09    ;
CODE_0DF108:    LDA DATA_0DEE2E+1,x     ; $0D:F108: BD 2F EE    ;
CODE_0DF10B:    STA $0906,y             ; $0D:F10B: 99 06 09    ;
CODE_0DF10E:    LDA DATA_0DEE2E+2,x     ; $0D:F10E: BD 30 EE    ;
CODE_0DF111:    STA $090A,y             ; $0D:F111: 99 0A 09    ;
CODE_0DF114:    LDA DATA_0DEE2E+3,x     ; $0D:F114: BD 31 EE    ;
CODE_0DF117:    STA $090E,y             ; $0D:F117: 99 0E 09    ;
CODE_0DF11A:    LDA DATA_0DEE2E+4,x     ; $0D:F11A: BD 32 EE    ;
CODE_0DF11D:    STA $0912,y             ; $0D:F11D: 99 12 09    ;
CODE_0DF120:    LDA DATA_0DEE2E+5,x     ; $0D:F120: BD 33 EE    ;
CODE_0DF123:    STA $0916,y             ; $0D:F123: 99 16 09    ;
CODE_0DF126:    LDX $9E                 ; $0D:F126: A6 9E       ;
CODE_0DF128:    LDA $EF                 ; $0D:F128: A5 EF       ;
CODE_0DF12A:    CMP #$08                ; $0D:F12A: C9 08       ;
CODE_0DF12C:    BNE CODE_0DF131         ; $0D:F12C: D0 03       ;
CODE_0DF12E:    JMP CODE_0DF247         ; $0D:F12E: 4C 47 F2    ;

CODE_0DF131:    LDA $F0                 ; $0D:F131: A5 F0       ;
CODE_0DF133:    BEQ CODE_0DF176         ; $0D:F133: F0 41       ;
CODE_0DF135:    LDA $0903,y             ; $0D:F135: B9 03 09    ;
CODE_0DF138:    ORA #$80                ; $0D:F138: 09 80       ;
CODE_0DF13A:    INY                     ; $0D:F13A: C8          ;
CODE_0DF13B:    INY                     ; $0D:F13B: C8          ;
CODE_0DF13C:    JSR CODE_0DEB93         ; $0D:F13C: 20 93 EB    ;
CODE_0DF13F:    DEY                     ; $0D:F13F: 88          ;
CODE_0DF140:    DEY                     ; $0D:F140: 88          ;
CODE_0DF141:    TYA                     ; $0D:F141: 98          ;
CODE_0DF142:    TAX                     ; $0D:F142: AA          ;
CODE_0DF143:    LDA $EF                 ; $0D:F143: A5 EF       ;
CODE_0DF145:    CMP #$05                ; $0D:F145: C9 05       ;
CODE_0DF147:    BEQ CODE_0DF15A         ; $0D:F147: F0 11       ;
CODE_0DF149:    CMP #$04                ; $0D:F149: C9 04       ;
CODE_0DF14B:    BEQ CODE_0DF15A         ; $0D:F14B: F0 0D       ;
CODE_0DF14D:    CMP #$11                ; $0D:F14D: C9 11       ;
CODE_0DF14F:    BEQ CODE_0DF15A         ; $0D:F14F: F0 09       ;
CODE_0DF151:    CMP #$15                ; $0D:F151: C9 15       ;
CODE_0DF153:    BCS CODE_0DF15A         ; $0D:F153: B0 05       ;
CODE_0DF155:    TXA                     ; $0D:F155: 8A          ;
CODE_0DF156:    CLC                     ; $0D:F156: 18          ;
CODE_0DF157:    ADC #$08                ; $0D:F157: 69 08       ;
CODE_0DF159:    TAX                     ; $0D:F159: AA          ;
CODE_0DF15A:    LDA $0902,x             ; $0D:F15A: BD 02 09    ;
CODE_0DF15D:    PHA                     ; $0D:F15D: 48          ;
CODE_0DF15E:    LDA $0906,x             ; $0D:F15E: BD 06 09    ;
CODE_0DF161:    PHA                     ; $0D:F161: 48          ;
CODE_0DF162:    LDA $0912,y             ; $0D:F162: B9 12 09    ;
CODE_0DF165:    STA $0902,x             ; $0D:F165: 9D 02 09    ;
CODE_0DF168:    LDA $0916,y             ; $0D:F168: B9 16 09    ;
CODE_0DF16B:    STA $0906,x             ; $0D:F16B: 9D 06 09    ;
CODE_0DF16E:    PLA                     ; $0D:F16E: 68          ;
CODE_0DF16F:    STA $0916,y             ; $0D:F16F: 99 16 09    ;
CODE_0DF172:    PLA                     ; $0D:F172: 68          ;
CODE_0DF173:    STA $0912,y             ; $0D:F173: 99 12 09    ;
CODE_0DF176:    LDA $036A               ; $0D:F176: AD 6A 03    ;
CODE_0DF179:    BNE CODE_0DF12E         ; $0D:F179: D0 B3       ;
CODE_0DF17B:    LDA $EF                 ; $0D:F17B: A5 EF       ;
CODE_0DF17D:    LDX $EC                 ; $0D:F17D: A6 EC       ;
CODE_0DF17F:    CMP #$05                ; $0D:F17F: C9 05       ;
CODE_0DF181:    BNE CODE_0DF186         ; $0D:F181: D0 03       ;
CODE_0DF183:    JMP CODE_0DF247         ; $0D:F183: 4C 47 F2    ;

CODE_0DF186:    CMP #$07                ; $0D:F186: C9 07       ;
CODE_0DF188:    BEQ CODE_0DF1A2         ; $0D:F188: F0 18       ;
CODE_0DF18A:    CMP #$0D                ; $0D:F18A: C9 0D       ;
CODE_0DF18C:    BEQ CODE_0DF1A2         ; $0D:F18C: F0 14       ;
CODE_0DF18E:    CMP #$04                ; $0D:F18E: C9 04       ;
CODE_0DF190:    BEQ CODE_0DF1A2         ; $0D:F190: F0 10       ;
CODE_0DF192:    CMP #$0C                ; $0D:F192: C9 0C       ;
CODE_0DF194:    BEQ CODE_0DF1A2         ; $0D:F194: F0 0C       ;
CODE_0DF196:    CMP #$12                ; $0D:F196: C9 12       ;
CODE_0DF198:    BNE CODE_0DF19E         ; $0D:F198: D0 04       ;
CODE_0DF19A:    CPX #$05                ; $0D:F19A: E0 05       ;
CODE_0DF19C:    BNE CODE_0DF1E2         ; $0D:F19C: D0 44       ;
CODE_0DF19E:    CPX #$02                ; $0D:F19E: E0 02       ;
CODE_0DF1A0:    BCC CODE_0DF1E2         ; $0D:F1A0: 90 40       ;
CODE_0DF1A2:    LDA $036A               ; $0D:F1A2: AD 6A 03    ;
CODE_0DF1A5:    BNE CODE_0DF1E2         ; $0D:F1A5: D0 3B       ;
CODE_0DF1A7:    LDA $0F49               ; $0D:F1A7: AD 49 0F    ;
CODE_0DF1AA:    BNE CODE_0DF1E2         ; $0D:F1AA: D0 36       ;
CODE_0DF1AC:    LDA $0903,y             ; $0D:F1AC: B9 03 09    ;
CODE_0DF1AF:    AND #$BE                ; $0D:F1AF: 29 BE       ;
CODE_0DF1B1:    STA $0903,y             ; $0D:F1B1: 99 03 09    ;
CODE_0DF1B4:    STA $090B,y             ; $0D:F1B4: 99 0B 09    ;
CODE_0DF1B7:    STA $0913,y             ; $0D:F1B7: 99 13 09    ;
CODE_0DF1BA:    ORA #$40                ; $0D:F1BA: 09 40       ;
CODE_0DF1BC:    CPX #$05                ; $0D:F1BC: E0 05       ;
CODE_0DF1BE:    BNE CODE_0DF1C2         ; $0D:F1BE: D0 02       ;
CODE_0DF1C0:    ORA #$80                ; $0D:F1C0: 09 80       ;
CODE_0DF1C2:    STA $0907,y             ; $0D:F1C2: 99 07 09    ;
CODE_0DF1C5:    STA $090F,y             ; $0D:F1C5: 99 0F 09    ;
CODE_0DF1C8:    STA $0917,y             ; $0D:F1C8: 99 17 09    ;
CODE_0DF1CB:    CPX #$04                ; $0D:F1CB: E0 04       ;
CODE_0DF1CD:    BNE CODE_0DF1E2         ; $0D:F1CD: D0 13       ;
CODE_0DF1CF:    LDA $090B,y             ; $0D:F1CF: B9 0B 09    ;
CODE_0DF1D2:    ORA #$80                ; $0D:F1D2: 09 80       ;
CODE_0DF1D4:    STA $090B,y             ; $0D:F1D4: 99 0B 09    ;
CODE_0DF1D7:    STA $0913,y             ; $0D:F1D7: 99 13 09    ;
CODE_0DF1DA:    ORA #$40                ; $0D:F1DA: 09 40       ;
CODE_0DF1DC:    STA $090F,y             ; $0D:F1DC: 99 0F 09    ;
CODE_0DF1DF:    STA $0917,y             ; $0D:F1DF: 99 17 09    ;
CODE_0DF1E2:    LDA $EF                 ; $0D:F1E2: A5 EF       ;
CODE_0DF1E4:    CMP #$11                ; $0D:F1E4: C9 11       ;
CODE_0DF1E6:    BNE CODE_0DF21D         ; $0D:F1E6: D0 35       ;
CODE_0DF1E8:    LDA $F0                 ; $0D:F1E8: A5 F0       ;
CODE_0DF1EA:    BNE CODE_0DF20D         ; $0D:F1EA: D0 21       ;
CODE_0DF1EC:    LDA $0913,y             ; $0D:F1EC: B9 13 09    ;
CODE_0DF1EF:    AND #$BF                ; $0D:F1EF: 29 BF       ;
CODE_0DF1F1:    STA $0913,y             ; $0D:F1F1: 99 13 09    ;
CODE_0DF1F4:    LDA $0917,y             ; $0D:F1F4: B9 17 09    ;
CODE_0DF1F7:    ORA #$40                ; $0D:F1F7: 09 40       ;
CODE_0DF1F9:    STA $0917,y             ; $0D:F1F9: 99 17 09    ;
CODE_0DF1FC:    LDX $079B               ; $0D:F1FC: AE 9B 07    ;
CODE_0DF1FF:    CPX #$10                ; $0D:F1FF: E0 10       ;
CODE_0DF201:    BCS CODE_0DF247         ; $0D:F201: B0 44       ;
CODE_0DF203:    STA $090F,y             ; $0D:F203: 99 0F 09    ;
CODE_0DF206:    AND #$BF                ; $0D:F206: 29 BF       ;
CODE_0DF208:    STA $090B,y             ; $0D:F208: 99 0B 09    ;
CODE_0DF20B:    BCC CODE_0DF247         ; $0D:F20B: 90 3A       ;
CODE_0DF20D:    LDA $0903,y             ; $0D:F20D: B9 03 09    ;
CODE_0DF210:    AND #$BF                ; $0D:F210: 29 BF       ;
CODE_0DF212:    STA $0903,y             ; $0D:F212: 99 03 09    ;
CODE_0DF215:    LDA $0907,y             ; $0D:F215: B9 07 09    ;
CODE_0DF218:    ORA #$40                ; $0D:F218: 09 40       ;
CODE_0DF21A:    STA $0907,y             ; $0D:F21A: 99 07 09    ;
CODE_0DF21D:    LDA $EF                 ; $0D:F21D: A5 EF       ;
CODE_0DF21F:    CMP #$18                ; $0D:F21F: C9 18       ;
CODE_0DF221:    BCC CODE_0DF247         ; $0D:F221: 90 24       ;
CODE_0DF223:    LDA $0F30               ; $0D:F223: AD 30 0F    ;
CODE_0DF226:    LSR A                   ; $0D:F226: 4A          ;
CODE_0DF227:    BCC CODE_0DF22D         ; $0D:F227: 90 04       ;
CODE_0DF229:    LDA #$AA                ; $0D:F229: A9 AA       ;
CODE_0DF22B:    BRA CODE_0DF22F         ; $0D:F22B: 80 02       ;

CODE_0DF22D:    LDA #$AC                ; $0D:F22D: A9 AC       ;
CODE_0DF22F:    STA $090B,y             ; $0D:F22F: 99 0B 09    ;
CODE_0DF232:    STA $0913,y             ; $0D:F232: 99 13 09    ;
CODE_0DF235:    ORA #$40                ; $0D:F235: 09 40       ;
CODE_0DF237:    STA $090F,y             ; $0D:F237: 99 0F 09    ;
CODE_0DF23A:    STA $0917,y             ; $0D:F23A: 99 17 09    ;
CODE_0DF23D:    AND #$3F                ; $0D:F23D: 29 3F       ;
CODE_0DF23F:    STA $0903,y             ; $0D:F23F: 99 03 09    ;
CODE_0DF242:    ORA #$40                ; $0D:F242: 09 40       ;
CODE_0DF244:    STA $0907,y             ; $0D:F244: 99 07 09    ;
CODE_0DF247:    LDX $9E                 ; $0D:F247: A6 9E       ;
CODE_0DF249:    LDA $EF                 ; $0D:F249: A5 EF       ;
CODE_0DF24B:    CMP #$0D                ; $0D:F24B: C9 0D       ;
CODE_0DF24D:    BNE CODE_0DF26B         ; $0D:F24D: D0 1C       ;
CODE_0DF24F:    LDA $29,x               ; $0D:F24F: B5 29       ;
CODE_0DF251:    AND #$20                ; $0D:F251: 29 20       ;
CODE_0DF253:    BNE CODE_0DF28B         ; $0D:F253: D0 36       ;
CODE_0DF255:    LDA $0913,y             ; $0D:F255: B9 13 09    ;
CODE_0DF258:    AND #$F0                ; $0D:F258: 29 F0       ;
CODE_0DF25A:    ORA #$08                ; $0D:F25A: 09 08       ;
CODE_0DF25C:    STA $0913,y             ; $0D:F25C: 99 13 09    ;
CODE_0DF25F:    LDA $0917,y             ; $0D:F25F: B9 17 09    ;
CODE_0DF262:    AND #$F0                ; $0D:F262: 29 F0       ;
CODE_0DF264:    ORA #$08                ; $0D:F264: 09 08       ;
CODE_0DF266:    STA $0917,y             ; $0D:F266: 99 17 09    ;
CODE_0DF269:    BRA CODE_0DF29F         ; $0D:F269: 80 34       ;

CODE_0DF26B:    CMP #$04                ; $0D:F26B: C9 04       ;
CODE_0DF26D:    BNE CODE_0DF29F         ; $0D:F26D: D0 30       ;
CODE_0DF26F:    LDA $29,x               ; $0D:F26F: B5 29       ;
CODE_0DF271:    AND #$20                ; $0D:F271: 29 20       ;
CODE_0DF273:    BNE CODE_0DF28B         ; $0D:F273: D0 16       ;
CODE_0DF275:    LDA $0903,y             ; $0D:F275: B9 03 09    ;
CODE_0DF278:    AND #$F0                ; $0D:F278: 29 F0       ;
CODE_0DF27A:    ORA #$08                ; $0D:F27A: 09 08       ;
CODE_0DF27C:    STA $0903,y             ; $0D:F27C: 99 03 09    ;
CODE_0DF27F:    LDA $0907,y             ; $0D:F27F: B9 07 09    ;
CODE_0DF282:    AND #$F0                ; $0D:F282: 29 F0       ;
CODE_0DF284:    ORA #$08                ; $0D:F284: 09 08       ;
CODE_0DF286:    STA $0907,y             ; $0D:F286: 99 07 09    ;
CODE_0DF289:    BRA CODE_0DF29F         ; $0D:F289: 80 14       ;

CODE_0DF28B:    LDA #$F0                ; $0D:F28B: A9 F0       ;
CODE_0DF28D:    STA $0901,y             ; $0D:F28D: 99 01 09    ;
CODE_0DF290:    STA $0905,y             ; $0D:F290: 99 05 09    ;
CODE_0DF293:    STA $0909,y             ; $0D:F293: 99 09 09    ;
CODE_0DF296:    STA $090D,y             ; $0D:F296: 99 0D 09    ;
CODE_0DF299:    STA $0911,y             ; $0D:F299: 99 11 09    ;
CODE_0DF29C:    STA $0915,y             ; $0D:F29C: 99 15 09    ;
CODE_0DF29F:    LDX $9E                 ; $0D:F29F: A6 9E       ;
CODE_0DF2A1:    JSR CODE_0DFEC2         ; $0D:F2A1: 20 C2 FE    ;
CODE_0DF2A4:    STZ $04                 ; $0D:F2A4: 64 04       ;
CODE_0DF2A6:    JSR CODE_0DFEFB         ; $0D:F2A6: 20 FB FE    ;
CODE_0DF2A9:    JSR CODE_0DFF51         ; $0D:F2A9: 20 51 FF    ;
CODE_0DF2AC:    STZ $04                 ; $0D:F2AC: 64 04       ;
CODE_0DF2AE:    JSR CODE_0DFEFB         ; $0D:F2AE: 20 FB FE    ;
CODE_0DF2B1:    DEY                     ; $0D:F2B1: 88          ;
CODE_0DF2B2:    DEY                     ; $0D:F2B2: 88          ;
CODE_0DF2B3:    DEY                     ; $0D:F2B3: 88          ;
CODE_0DF2B4:    DEY                     ; $0D:F2B4: 88          ;
CODE_0DF2B5:    LDA $03D1               ; $0D:F2B5: AD D1 03    ;
CODE_0DF2B8:    LSR A                   ; $0D:F2B8: 4A          ;
CODE_0DF2B9:    LSR A                   ; $0D:F2B9: 4A          ;
CODE_0DF2BA:    LSR A                   ; $0D:F2BA: 4A          ;
CODE_0DF2BB:    LSR A                   ; $0D:F2BB: 4A          ;
CODE_0DF2BC:    LSR A                   ; $0D:F2BC: 4A          ;
CODE_0DF2BD:    LSR A                   ; $0D:F2BD: 4A          ;
CODE_0DF2BE:    PHA                     ; $0D:F2BE: 48          ;
CODE_0DF2BF:    BCC CODE_0DF2C6         ; $0D:F2BF: 90 05       ;
CODE_0DF2C1:    LDA #$10                ; $0D:F2C1: A9 10       ;
CODE_0DF2C3:    JSR CODE_0DF303         ; $0D:F2C3: 20 03 F3    ;
CODE_0DF2C6:    PLA                     ; $0D:F2C6: 68          ;
CODE_0DF2C7:    LSR A                   ; $0D:F2C7: 4A          ;
CODE_0DF2C8:    PHA                     ; $0D:F2C8: 48          ;
CODE_0DF2C9:    BCC CODE_0DF2D0         ; $0D:F2C9: 90 05       ;
CODE_0DF2CB:    LDA #$08                ; $0D:F2CB: A9 08       ;
CODE_0DF2CD:    JSR CODE_0DF303         ; $0D:F2CD: 20 03 F3    ;
CODE_0DF2D0:    PLA                     ; $0D:F2D0: 68          ;
CODE_0DF2D1:    LSR A                   ; $0D:F2D1: 4A          ;
CODE_0DF2D2:    BCC CODE_0DF2E6         ; $0D:F2D2: 90 12       ;
CODE_0DF2D4:    JSR CODE_0DF303         ; $0D:F2D4: 20 03 F3    ;
CODE_0DF2D7:    LDA $1C,x               ; $0D:F2D7: B5 1C       ;
CODE_0DF2D9:    CMP #$0C                ; $0D:F2D9: C9 0C       ;
CODE_0DF2DB:    BEQ CODE_0DF2E6         ; $0D:F2DB: F0 09       ;
CODE_0DF2DD:    LDA $BC,x               ; $0D:F2DD: B5 BC       ;
CODE_0DF2DF:    CMP #$02                ; $0D:F2DF: C9 02       ;
CODE_0DF2E1:    BNE CODE_0DF2E6         ; $0D:F2E1: D0 03       ;
CODE_0DF2E3:    JSR CODE_0DCCEA         ; $0D:F2E3: 20 EA CC    ;
CODE_0DF2E6:    RTS                     ; $0D:F2E6: 60          ;

CODE_0DF2E7:    LDA DATA_0DECDD,x       ; $0D:F2E7: BD DD EC    ;
CODE_0DF2EA:    STA $00                 ; $0D:F2EA: 85 00       ;
CODE_0DF2EC:    LDA DATA_0DECDD+1,x     ; $0D:F2EC: BD DE EC    ;
CODE_0DF2EF:    STA $01                 ; $0D:F2EF: 85 01       ;
CODE_0DF2F1:    LDA $02                 ; $0D:F2F1: A5 02       ;
CODE_0DF2F3:    CMP #$F9                ; $0D:F2F3: C9 F9       ;
CODE_0DF2F5:    BNE CODE_0DF2FB         ; $0D:F2F5: D0 04       ;
CODE_0DF2F7:    LDA #$F0                ; $0D:F2F7: A9 F0       ;
CODE_0DF2F9:    STA $02                 ; $0D:F2F9: 85 02       ;
CODE_0DF2FB:    JMP CODE_0DFFAC         ; $0D:F2FB: 4C AC FF    ;

CODE_0DF2FE:    STA $01                 ; $0D:F2FE: 85 01       ;
CODE_0DF300:    JMP CODE_0DFF64         ; $0D:F300: 4C 64 FF    ;

CODE_0DF303:    STX $9E                 ; $0D:F303: 86 9E       ;
CODE_0DF305:    CPX #$0A                ; $0D:F305: E0 0A       ;
CODE_0DF307:    BNE CODE_0DF30A         ; $0D:F307: D0 01       ;
CODE_0DF309:    DEX                     ; $0D:F309: CA          ;
CODE_0DF30A:    CLC                     ; $0D:F30A: 18          ;
CODE_0DF30B:    ADC $0B46,x             ; $0D:F30B: 7D 46 0B    ;
CODE_0DF30E:    TAY                     ; $0D:F30E: A8          ;
CODE_0DF30F:    LDA #$F0                ; $0D:F30F: A9 F0       ;
CODE_0DF311:    LDX $9E                 ; $0D:F311: A6 9E       ;
CODE_0DF313:    JMP CODE_0DEB9F         ; $0D:F313: 4C 9F EB    ;

CODE_0DF316:    STX $9E                 ; $0D:F316: 86 9E       ;
CODE_0DF318:    CPX #$0A                ; $0D:F318: E0 0A       ;
CODE_0DF31A:    BNE CODE_0DF31D         ; $0D:F31A: D0 01       ;
CODE_0DF31C:    DEX                     ; $0D:F31C: CA          ;
CODE_0DF31D:    CLC                     ; $0D:F31D: 18          ;
CODE_0DF31E:    ADC $0B46,x             ; $0D:F31E: 7D 46 0B    ;
CODE_0DF321:    TAY                     ; $0D:F321: A8          ;
CODE_0DF322:    LDA #$F0                ; $0D:F322: A9 F0       ;
CODE_0DF324:    STA $0901,y             ; $0D:F324: 99 01 09    ;
CODE_0DF327:    STA $0909,y             ; $0D:F327: 99 09 09    ;
CODE_0DF32A:    STA $0911,y             ; $0D:F32A: 99 11 09    ;
CODE_0DF32D:    LDX $9E                 ; $0D:F32D: A6 9E       ;
CODE_0DF32F:    RTS                     ; $0D:F32F: 60          ;

CODE_0DF330:    LDA #$01                ; $0D:F330: A9 01       ;
CODE_0DF332:    STA $0D00,y             ; $0D:F332: 99 00 0D    ;
CODE_0DF335:    STA $0D08,y             ; $0D:F335: 99 08 0D    ;
CODE_0DF338:    STA $0D10,y             ; $0D:F338: 99 10 0D    ;
CODE_0DF33B:    RTS                     ; $0D:F33B: 60          ;

CODE_0DF33C:    LDA #$01                ; $0D:F33C: A9 01       ;
CODE_0DF33E:    STA $0D04,y             ; $0D:F33E: 99 04 0D    ;
CODE_0DF341:    STA $0D0C,y             ; $0D:F341: 99 0C 0D    ;
CODE_0DF344:    STA $0D14,y             ; $0D:F344: 99 14 0D    ;
CODE_0DF347:    RTS                     ; $0D:F347: 60          ;

CODE_0DF348:    LDY $0B51,x             ; $0D:F348: BC 51 0B    ;
CODE_0DF34B:    LDA $03B1               ; $0D:F34B: AD B1 03    ;
CODE_0DF34E:    STA $0800,y             ; $0D:F34E: 99 00 08    ;
CODE_0DF351:    LDA $03BC               ; $0D:F351: AD BC 03    ;
CODE_0DF354:    STA $0801,y             ; $0D:F354: 99 01 08    ;
CODE_0DF357:    LDA #$2B                ; $0D:F357: A9 2B       ;
CODE_0DF359:    STA $0803,y             ; $0D:F359: 99 03 08    ;
CODE_0DF35C:    LDA #$02                ; $0D:F35C: A9 02       ;
CODE_0DF35E:    STA $0C00,y             ; $0D:F35E: 99 00 0C    ;
CODE_0DF361:    LDA $03EA,x             ; $0D:F361: BD EA 03    ;
CODE_0DF364:    CMP #$FD                ; $0D:F364: C9 FD       ;
CODE_0DF366:    BNE CODE_0DF36C         ; $0D:F366: D0 04       ;
CODE_0DF368:    LDA #$00                ; $0D:F368: A9 00       ;
CODE_0DF36A:    BRA CODE_0DF36E         ; $0D:F36A: 80 02       ;

CODE_0DF36C:    LDA #$02                ; $0D:F36C: A9 02       ;
CODE_0DF36E:    STA $0802,y             ; $0D:F36E: 99 02 08    ;
CODE_0DF371:    LDA $85,x               ; $0D:F371: B5 85       ;
CODE_0DF373:    STA $E5                 ; $0D:F373: 85 E5       ;
CODE_0DF375:    LDA $0226,x             ; $0D:F375: BD 26 02    ;
CODE_0DF378:    STA $E4                 ; $0D:F378: 85 E4       ;
CODE_0DF37A:    REP #$20                ; $0D:F37A: C2 20       ;
CODE_0DF37C:    LDA $E4                 ; $0D:F37C: A5 E4       ;
CODE_0DF37E:    SEC                     ; $0D:F37E: 38          ;
CODE_0DF37F:    SBC $42                 ; $0D:F37F: E5 42       ;
CODE_0DF381:    STA $E4                 ; $0D:F381: 85 E4       ;
CODE_0DF383:    SEP #$20                ; $0D:F383: E2 20       ;
CODE_0DF385:    LDA $E5                 ; $0D:F385: A5 E5       ;
CODE_0DF387:    BEQ CODE_0DF38E         ; $0D:F387: F0 05       ;
CODE_0DF389:    LDA #$03                ; $0D:F389: A9 03       ;
CODE_0DF38B:    STA $0C00,y             ; $0D:F38B: 99 00 0C    ;
CODE_0DF38E:    RTS                     ; $0D:F38E: 60          ;

CODE_0DF38F:    AND #$08                ; $0D:F38F: 29 08       ;
CODE_0DF391:    BEQ CODE_0DF39B         ; $0D:F391: F0 08       ;
CODE_0DF393:    LDA #$F0                ; $0D:F393: A9 F0       ;
CODE_0DF395:    STA $0801,y             ; $0D:F395: 99 01 08    ;
CODE_0DF398:    STA $0809,y             ; $0D:F398: 99 09 08    ;
CODE_0DF39B:    RTS                     ; $0D:F39B: 60          ;

CODE_0DF39C:    LDA #$2C                ; $0D:F39C: A9 2C       ;
CODE_0DF39E:    STA $00                 ; $0D:F39E: 85 00       ;
CODE_0DF3A0:    LDA #$75                ; $0D:F3A0: A9 75       ;
CODE_0DF3A2:    LDY $0F                 ; $0D:F3A2: A4 0F       ;
CODE_0DF3A4:    CPY #$05                ; $0D:F3A4: C0 05       ;
CODE_0DF3A6:    BEQ CODE_0DF3AE         ; $0D:F3A6: F0 06       ;
CODE_0DF3A8:    LDA #$2A                ; $0D:F3A8: A9 2A       ;
CODE_0DF3AA:    STA $00                 ; $0D:F3AA: 85 00       ;
CODE_0DF3AC:    LDA #$84                ; $0D:F3AC: A9 84       ;
CODE_0DF3AE:    LDY $0B51,x             ; $0D:F3AE: BC 51 0B    ;
CODE_0DF3B1:    INY                     ; $0D:F3B1: C8          ;
CODE_0DF3B2:    JSR CODE_0DEB84         ; $0D:F3B2: 20 84 EB    ;
CODE_0DF3B5:    LDA $09                 ; $0D:F3B5: A5 09       ;
CODE_0DF3B7:    ASL A                   ; $0D:F3B7: 0A          ;
CODE_0DF3B8:    ASL A                   ; $0D:F3B8: 0A          ;
CODE_0DF3B9:    ASL A                   ; $0D:F3B9: 0A          ;
CODE_0DF3BA:    ASL A                   ; $0D:F3BA: 0A          ;
CODE_0DF3BB:    AND #$C0                ; $0D:F3BB: 29 C0       ;
CODE_0DF3BD:    ORA $00                 ; $0D:F3BD: 05 00       ;
CODE_0DF3BF:    INY                     ; $0D:F3BF: C8          ;
CODE_0DF3C0:    JSR CODE_0DEB84         ; $0D:F3C0: 20 84 EB    ;
CODE_0DF3C3:    DEY                     ; $0D:F3C3: 88          ;
CODE_0DF3C4:    DEY                     ; $0D:F3C4: 88          ;
CODE_0DF3C5:    LDA $03BC               ; $0D:F3C5: AD BC 03    ;
CODE_0DF3C8:    CMP #$F0                ; $0D:F3C8: C9 F0       ;
CODE_0DF3CA:    BCC CODE_0DF3CE         ; $0D:F3CA: 90 02       ;
CODE_0DF3CC:    LDA #$F0                ; $0D:F3CC: A9 F0       ;
CODE_0DF3CE:    JSR CODE_0DEB8A         ; $0D:F3CE: 20 8A EB    ;
CODE_0DF3D1:    LDA $03B1               ; $0D:F3D1: AD B1 03    ;
CODE_0DF3D4:    STA $0800,y             ; $0D:F3D4: 99 00 08    ;
CODE_0DF3D7:    LDA $03F3,x             ; $0D:F3D7: BD F3 03    ;
CODE_0DF3DA:    SEC                     ; $0D:F3DA: 38          ;
CODE_0DF3DB:    SBC $071C               ; $0D:F3DB: ED 1C 07    ;
CODE_0DF3DE:    STA $00                 ; $0D:F3DE: 85 00       ;
CODE_0DF3E0:    SEC                     ; $0D:F3E0: 38          ;
CODE_0DF3E1:    SBC $03B1               ; $0D:F3E1: ED B1 03    ;
CODE_0DF3E4:    ADC $00                 ; $0D:F3E4: 65 00       ;
CODE_0DF3E6:    ADC #$06                ; $0D:F3E6: 69 06       ;
CODE_0DF3E8:    STA $0804,y             ; $0D:F3E8: 99 04 08    ;
CODE_0DF3EB:    LDA $03BD               ; $0D:F3EB: AD BD 03    ;
CODE_0DF3EE:    CMP #$F0                ; $0D:F3EE: C9 F0       ;
CODE_0DF3F0:    BCC CODE_0DF3F4         ; $0D:F3F0: 90 02       ;
CODE_0DF3F2:    LDA #$F0                ; $0D:F3F2: A9 F0       ;
CODE_0DF3F4:    STA $0809,y             ; $0D:F3F4: 99 09 08    ;
CODE_0DF3F7:    STA $080D,y             ; $0D:F3F7: 99 0D 08    ;
CODE_0DF3FA:    LDA $03B2               ; $0D:F3FA: AD B2 03    ;
CODE_0DF3FD:    STA $0808,y             ; $0D:F3FD: 99 08 08    ;
CODE_0DF400:    LDA $00                 ; $0D:F400: A5 00       ;
CODE_0DF402:    SEC                     ; $0D:F402: 38          ;
CODE_0DF403:    SBC $03B2               ; $0D:F403: ED B2 03    ;
CODE_0DF406:    ADC $00                 ; $0D:F406: 65 00       ;
CODE_0DF408:    ADC #$06                ; $0D:F408: 69 06       ;
CODE_0DF40A:    STA $080C,y             ; $0D:F40A: 99 0C 08    ;
CODE_0DF40D:    LDA $03D4               ; $0D:F40D: AD D4 03    ;
CODE_0DF410:    ASL A                   ; $0D:F410: 0A          ;
CODE_0DF411:    BCC CODE_0DF418         ; $0D:F411: 90 05       ;
CODE_0DF413:    LDA #$F0                ; $0D:F413: A9 F0       ;
CODE_0DF415:    JSR CODE_0DEB8A         ; $0D:F415: 20 8A EB    ;
CODE_0DF418:    LDA $03D4               ; $0D:F418: AD D4 03    ;
CODE_0DF41B:    BEQ CODE_0DF425         ; $0D:F41B: F0 08       ;
CODE_0DF41D:    LDA #$01                ; $0D:F41D: A9 01       ;
CODE_0DF41F:    STA $0C00,y             ; $0D:F41F: 99 00 0C    ;
CODE_0DF422:    STA $0C08,y             ; $0D:F422: 99 08 0C    ;
CODE_0DF425:    LDA $03D5               ; $0D:F425: AD D5 03    ;
CODE_0DF428:    BEQ CODE_0DF432         ; $0D:F428: F0 08       ;
CODE_0DF42A:    LDA #$01                ; $0D:F42A: A9 01       ;
CODE_0DF42C:    STA $0C04,y             ; $0D:F42C: 99 04 0C    ;
CODE_0DF42F:    STA $0C0C,y             ; $0D:F42F: 99 0C 0C    ;
CODE_0DF432:    RTS                     ; $0D:F432: 60          ;

CODE_0DF433:    LDY $0B56,x             ; $0D:F433: BC 56 0B    ;
CODE_0DF436:    LDA $03BA               ; $0D:F436: AD BA 03    ;
CODE_0DF439:    STA $0801,y             ; $0D:F439: 99 01 08    ;
CODE_0DF43C:    LDA $03AF               ; $0D:F43C: AD AF 03    ;
CODE_0DF43F:    STA $0800,y             ; $0D:F43F: 99 00 08    ;
CODE_0DF442:    LDA $09                 ; $0D:F442: A5 09       ;
CODE_0DF444:    LSR A                   ; $0D:F444: 4A          ;
CODE_0DF445:    LSR A                   ; $0D:F445: 4A          ;
CODE_0DF446:    PHA                     ; $0D:F446: 48          ;
CODE_0DF447:    AND #$01                ; $0D:F447: 29 01       ;
CODE_0DF449:    EOR #$BE                ; $0D:F449: 49 BE       ;
CODE_0DF44B:    STA $0802,y             ; $0D:F44B: 99 02 08    ;
CODE_0DF44E:    PLA                     ; $0D:F44E: 68          ;
CODE_0DF44F:    LSR A                   ; $0D:F44F: 4A          ;
CODE_0DF450:    LSR A                   ; $0D:F450: 4A          ;
CODE_0DF451:    LDA #$28                ; $0D:F451: A9 28       ;
CODE_0DF453:    BCC CODE_0DF457         ; $0D:F453: 90 02       ;
CODE_0DF455:    ORA #$C0                ; $0D:F455: 09 C0       ;
CODE_0DF457:    STA $0803,y             ; $0D:F457: 99 03 08    ;
CODE_0DF45A:    LDA $0068,x             ; $0D:F45A: BD 68 00    ;
CODE_0DF45D:    BPL CODE_0DF46B         ; $0D:F45D: 10 0C       ;
CODE_0DF45F:    LDA $03AF               ; $0D:F45F: AD AF 03    ;
CODE_0DF462:    CMP #$F8                ; $0D:F462: C9 F8       ;
CODE_0DF464:    BCC CODE_0DF46B         ; $0D:F464: 90 05       ;
CODE_0DF466:    LDA #$01                ; $0D:F466: A9 01       ;
CODE_0DF468:    STA $0C00,y             ; $0D:F468: 99 00 0C    ;
CODE_0DF46B:    RTS                     ; $0D:F46B: 60          ;

CODE_0DF46C:    LDY $0B56,x             ; $0D:F46C: BC 56 0B    ;
CODE_0DF46F:    LDA $03BA               ; $0D:F46F: AD BA 03    ;
CODE_0DF472:    STA $0901,y             ; $0D:F472: 99 01 09    ;
CODE_0DF475:    LDA $03AF               ; $0D:F475: AD AF 03    ;
CODE_0DF478:    STA $0900,y             ; $0D:F478: 99 00 09    ;
CODE_0DF47B:    LDA $09                 ; $0D:F47B: A5 09       ;
CODE_0DF47D:    LSR A                   ; $0D:F47D: 4A          ;
CODE_0DF47E:    LSR A                   ; $0D:F47E: 4A          ;
CODE_0DF47F:    PHA                     ; $0D:F47F: 48          ;
CODE_0DF480:    AND #$01                ; $0D:F480: 29 01       ;
CODE_0DF482:    EOR #$BE                ; $0D:F482: 49 BE       ;
CODE_0DF484:    STA $0902,y             ; $0D:F484: 99 02 09    ;
CODE_0DF487:    PLA                     ; $0D:F487: 68          ;
CODE_0DF488:    LSR A                   ; $0D:F488: 4A          ;
CODE_0DF489:    LSR A                   ; $0D:F489: 4A          ;
CODE_0DF48A:    LDA #$38                ; $0D:F48A: A9 38       ;
CODE_0DF48C:    BCC CODE_0DF490         ; $0D:F48C: 90 02       ;
CODE_0DF48E:    ORA #$C0                ; $0D:F48E: 09 C0       ;
CODE_0DF490:    STA $0903,y             ; $0D:F490: 99 03 09    ;
CODE_0DF493:    RTS                     ; $0D:F493: 60          ;

DATA_0DF494:        db $CC,$CB,$CA,$FC

CODE_0DF498:    LDY $0B51,x             ; $0D:F498: BC 51 0B    ;
CODE_0DF49B:    LDA $0068,x             ; $0D:F49B: BD 68 00    ;
CODE_0DF49E:    BMI CODE_0DF4B7         ; $0D:F49E: 30 17       ;
CODE_0DF4A0:    LDA $03AF               ; $0D:F4A0: AD AF 03    ;
CODE_0DF4A3:    SEC                     ; $0D:F4A3: 38          ;
CODE_0DF4A4:    SBC #$04                ; $0D:F4A4: E9 04       ;
CODE_0DF4A6:    STA $03AF               ; $0D:F4A6: 8D AF 03    ;
CODE_0DF4A9:    CMP #$F8                ; $0D:F4A9: C9 F8       ;
CODE_0DF4AB:    BCC CODE_0DF4D6         ; $0D:F4AB: 90 29       ;
CODE_0DF4AD:    LDA #$01                ; $0D:F4AD: A9 01       ;
CODE_0DF4AF:    STA $0C08,y             ; $0D:F4AF: 99 08 0C    ;
CODE_0DF4B2:    STA $0C0C,y             ; $0D:F4B2: 99 0C 0C    ;
CODE_0DF4B5:    BRA CODE_0DF4D6         ; $0D:F4B5: 80 1F       ;

CODE_0DF4B7:    LDA $03AF               ; $0D:F4B7: AD AF 03    ;
CODE_0DF4BA:    CMP #$F0                ; $0D:F4BA: C9 F0       ;
CODE_0DF4BC:    BCC CODE_0DF4D6         ; $0D:F4BC: 90 18       ;
CODE_0DF4BE:    CMP #$F8                ; $0D:F4BE: C9 F8       ;
CODE_0DF4C0:    BCC CODE_0DF4CC         ; $0D:F4C0: 90 0A       ;
CODE_0DF4C2:    LDA #$01                ; $0D:F4C2: A9 01       ;
CODE_0DF4C4:    STA $0C00,y             ; $0D:F4C4: 99 00 0C    ;
CODE_0DF4C7:    STA $0C04,y             ; $0D:F4C7: 99 04 0C    ;
CODE_0DF4CA:    BRA CODE_0DF4D6         ; $0D:F4CA: 80 0A       ;

CODE_0DF4CC:    LDA #$01                ; $0D:F4CC: A9 01       ;
CODE_0DF4CE:    STA $0C00,y             ; $0D:F4CE: 99 00 0C    ;
CODE_0DF4D1:    STA $0C04,y             ; $0D:F4D1: 99 04 0C    ;
CODE_0DF4D4:    BRA CODE_0DF4AD         ; $0D:F4D4: 80 D7       ;

CODE_0DF4D6:    LDA $33,x               ; $0D:F4D6: B5 33       ;
CODE_0DF4D8:    INC $33,x               ; $0D:F4D8: F6 33       ;
CODE_0DF4DA:    LSR A                   ; $0D:F4DA: 4A          ;
CODE_0DF4DB:    AND #$07                ; $0D:F4DB: 29 07       ;
CODE_0DF4DD:    CMP #$03                ; $0D:F4DD: C9 03       ;
CODE_0DF4DF:    BCS CODE_0DF528         ; $0D:F4DF: B0 47       ;
CODE_0DF4E1:    TAX                     ; $0D:F4E1: AA          ;
CODE_0DF4E2:    LDA DATA_0DF494,x       ; $0D:F4E2: BD 94 F4    ;
CODE_0DF4E5:    INY                     ; $0D:F4E5: C8          ;
CODE_0DF4E6:    JSR CODE_0DEB84         ; $0D:F4E6: 20 84 EB    ;
CODE_0DF4E9:    DEY                     ; $0D:F4E9: 88          ;
CODE_0DF4EA:    LDX $9E                 ; $0D:F4EA: A6 9E       ;
CODE_0DF4EC:    LDA $03BA               ; $0D:F4EC: AD BA 03    ;
CODE_0DF4EF:    SEC                     ; $0D:F4EF: 38          ;
CODE_0DF4F0:    SBC #$04                ; $0D:F4F0: E9 04       ;
CODE_0DF4F2:    STA $0801,y             ; $0D:F4F2: 99 01 08    ;
CODE_0DF4F5:    STA $0809,y             ; $0D:F4F5: 99 09 08    ;
CODE_0DF4F8:    CLC                     ; $0D:F4F8: 18          ;
CODE_0DF4F9:    ADC #$08                ; $0D:F4F9: 69 08       ;
CODE_0DF4FB:    STA $0805,y             ; $0D:F4FB: 99 05 08    ;
CODE_0DF4FE:    STA $080D,y             ; $0D:F4FE: 99 0D 08    ;
CODE_0DF501:    LDA $03AF               ; $0D:F501: AD AF 03    ;
CODE_0DF504:    STA $0800,y             ; $0D:F504: 99 00 08    ;
CODE_0DF507:    STA $0804,y             ; $0D:F507: 99 04 08    ;
CODE_0DF50A:    CLC                     ; $0D:F50A: 18          ;
CODE_0DF50B:    ADC #$08                ; $0D:F50B: 69 08       ;
CODE_0DF50D:    STA $0808,y             ; $0D:F50D: 99 08 08    ;
CODE_0DF510:    STA $080C,y             ; $0D:F510: 99 0C 08    ;
CODE_0DF513:    LDA #$28                ; $0D:F513: A9 28       ;
CODE_0DF515:    STA $0803,y             ; $0D:F515: 99 03 08    ;
CODE_0DF518:    LDA #$A8                ; $0D:F518: A9 A8       ;
CODE_0DF51A:    STA $0807,y             ; $0D:F51A: 99 07 08    ;
CODE_0DF51D:    LDA #$68                ; $0D:F51D: A9 68       ;
CODE_0DF51F:    STA $080B,y             ; $0D:F51F: 99 0B 08    ;
CODE_0DF522:    LDA #$E8                ; $0D:F522: A9 E8       ;
CODE_0DF524:    STA $080F,y             ; $0D:F524: 99 0F 08    ;
CODE_0DF527:    RTS                     ; $0D:F527: 60          ;

CODE_0DF528:    STZ $33,x               ; $0D:F528: 74 33       ;
CODE_0DF52A:    RTS                     ; $0D:F52A: 60          ;

DATA_0DF52B:        db $48,$4A,$4C,$4E

DATA_0DF52F:        db $0C,$08,$0A,$0C,$08,$0A,$0C,$08
                    db $0A

CODE_0DF538:    TAX                     ; $0D:F538: AA          ;
CODE_0DF539:    LDA DATA_0DF52B,x       ; $0D:F539: BD 2B F5    ;
CODE_0DF53C:    INY                     ; $0D:F53C: C8          ;
CODE_0DF53D:    JSR CODE_0DEB99         ; $0D:F53D: 20 99 EB    ;
CODE_0DF540:    DEY                     ; $0D:F540: 88          ;
CODE_0DF541:    LDX $9E                 ; $0D:F541: A6 9E       ;
CODE_0DF543:    LDA $03BA               ; $0D:F543: AD BA 03    ;
CODE_0DF546:    SEC                     ; $0D:F546: 38          ;
CODE_0DF547:    SBC #$10                ; $0D:F547: E9 10       ;
CODE_0DF549:    STA $0901,y             ; $0D:F549: 99 01 09    ;
CODE_0DF54C:    STA $0909,y             ; $0D:F54C: 99 09 09    ;
CODE_0DF54F:    CLC                     ; $0D:F54F: 18          ;
CODE_0DF550:    ADC #$10                ; $0D:F550: 69 10       ;
CODE_0DF552:    STA $0905,y             ; $0D:F552: 99 05 09    ;
CODE_0DF555:    STA $090D,y             ; $0D:F555: 99 0D 09    ;
CODE_0DF558:    LDA $03AF               ; $0D:F558: AD AF 03    ;
CODE_0DF55B:    SEC                     ; $0D:F55B: 38          ;
CODE_0DF55C:    SBC #$08                ; $0D:F55C: E9 08       ;
CODE_0DF55E:    STA $0900,y             ; $0D:F55E: 99 00 09    ;
CODE_0DF561:    STA $0904,y             ; $0D:F561: 99 04 09    ;
CODE_0DF564:    CLC                     ; $0D:F564: 18          ;
CODE_0DF565:    ADC #$10                ; $0D:F565: 69 10       ;
CODE_0DF567:    STA $0908,y             ; $0D:F567: 99 08 09    ;
CODE_0DF56A:    STA $090C,y             ; $0D:F56A: 99 0C 09    ;
CODE_0DF56D:    LDA #$02                ; $0D:F56D: A9 02       ;
CODE_0DF56F:    STA $0D00,y             ; $0D:F56F: 99 00 0D    ;
CODE_0DF572:    STA $0D04,y             ; $0D:F572: 99 04 0D    ;
CODE_0DF575:    STA $0D08,y             ; $0D:F575: 99 08 0D    ;
CODE_0DF578:    STA $0D0C,y             ; $0D:F578: 99 0C 0D    ;
CODE_0DF57B:    PHX                     ; $0D:F57B: DA          ;
CODE_0DF57C:    LDA $A1,x               ; $0D:F57C: B5 A1       ;
CODE_0DF57E:    TAX                     ; $0D:F57E: AA          ;
CODE_0DF57F:    DEX                     ; $0D:F57F: CA          ;
CODE_0DF580:    LDA DATA_0DF52F,x       ; $0D:F580: BD 2F F5    ;
CODE_0DF583:    ORA #$20                ; $0D:F583: 09 20       ;
CODE_0DF585:    STA $0903,y             ; $0D:F585: 99 03 09    ;
CODE_0DF588:    LDA DATA_0DF52F,x       ; $0D:F588: BD 2F F5    ;
CODE_0DF58B:    ORA #$A0                ; $0D:F58B: 09 A0       ;
CODE_0DF58D:    STA $0907,y             ; $0D:F58D: 99 07 09    ;
CODE_0DF590:    LDA DATA_0DF52F,x       ; $0D:F590: BD 2F F5    ;
CODE_0DF593:    ORA #$60                ; $0D:F593: 09 60       ;
CODE_0DF595:    STA $090B,y             ; $0D:F595: 99 0B 09    ;
CODE_0DF598:    LDA DATA_0DF52F,x       ; $0D:F598: BD 2F F5    ;
CODE_0DF59B:    ORA #$E0                ; $0D:F59B: 09 E0       ;
CODE_0DF59D:    STA $090F,y             ; $0D:F59D: 99 0F 09    ;
CODE_0DF5A0:    PLX                     ; $0D:F5A0: FA          ;
CODE_0DF5A1:    RTS                     ; $0D:F5A1: 60          ;

CODE_0DF5A2:    LDY $0B46,x             ; $0D:F5A2: BC 46 0B    ;
CODE_0DF5A5:    LDA #$87                ; $0D:F5A5: A9 87       ;
CODE_0DF5A7:    INY                     ; $0D:F5A7: C8          ;
CODE_0DF5A8:    JSR CODE_0DEB93         ; $0D:F5A8: 20 93 EB    ;
CODE_0DF5AB:    INY                     ; $0D:F5AB: C8          ;
CODE_0DF5AC:    LDA #$2C                ; $0D:F5AC: A9 2C       ;
CODE_0DF5AE:    JSR CODE_0DEB93         ; $0D:F5AE: 20 93 EB    ;
CODE_0DF5B1:    DEY                     ; $0D:F5B1: 88          ;
CODE_0DF5B2:    DEY                     ; $0D:F5B2: 88          ;
CODE_0DF5B3:    LDA $03AE               ; $0D:F5B3: AD AE 03    ;
CODE_0DF5B6:    STA $0900,y             ; $0D:F5B6: 99 00 09    ;
CODE_0DF5B9:    STA $090C,y             ; $0D:F5B9: 99 0C 09    ;
CODE_0DF5BC:    CLC                     ; $0D:F5BC: 18          ;
CODE_0DF5BD:    ADC #$08                ; $0D:F5BD: 69 08       ;
CODE_0DF5BF:    STA $0904,y             ; $0D:F5BF: 99 04 09    ;
CODE_0DF5C2:    STA $0910,y             ; $0D:F5C2: 99 10 09    ;
CODE_0DF5C5:    CLC                     ; $0D:F5C5: 18          ;
CODE_0DF5C6:    ADC #$08                ; $0D:F5C6: 69 08       ;
CODE_0DF5C8:    STA $0908,y             ; $0D:F5C8: 99 08 09    ;
CODE_0DF5CB:    STA $0914,y             ; $0D:F5CB: 99 14 09    ;
CODE_0DF5CE:    LDA $0238,x             ; $0D:F5CE: BD 38 02    ;
CODE_0DF5D1:    TAX                     ; $0D:F5D1: AA          ;
CODE_0DF5D2:    PHA                     ; $0D:F5D2: 48          ;
CODE_0DF5D3:    CPX #$00                ; $0D:F5D3: E0 00       ;
CODE_0DF5D5:    BCS CODE_0DF5D9         ; $0D:F5D5: B0 02       ;
CODE_0DF5D7:    LDA #$F0                ; $0D:F5D7: A9 F0       ;
CODE_0DF5D9:    JSR CODE_0DEB9C         ; $0D:F5D9: 20 9C EB    ;
CODE_0DF5DC:    PLA                     ; $0D:F5DC: 68          ;
CODE_0DF5DD:    CLC                     ; $0D:F5DD: 18          ;
CODE_0DF5DE:    ADC #$80                ; $0D:F5DE: 69 80       ;
CODE_0DF5E0:    TAX                     ; $0D:F5E0: AA          ;
CODE_0DF5E1:    CPX #$00                ; $0D:F5E1: E0 00       ;
CODE_0DF5E3:    BCS CODE_0DF5E7         ; $0D:F5E3: B0 02       ;
CODE_0DF5E5:    LDA #$F0                ; $0D:F5E5: A9 F0       ;
CODE_0DF5E7:    STA $090D,y             ; $0D:F5E7: 99 0D 09    ;
CODE_0DF5EA:    STA $0911,y             ; $0D:F5EA: 99 11 09    ;
CODE_0DF5ED:    STA $0915,y             ; $0D:F5ED: 99 15 09    ;
CODE_0DF5F0:    LDA $03D1               ; $0D:F5F0: AD D1 03    ;
CODE_0DF5F3:    PHA                     ; $0D:F5F3: 48          ;
CODE_0DF5F4:    AND #$08                ; $0D:F5F4: 29 08       ;
CODE_0DF5F6:    BEQ CODE_0DF600         ; $0D:F5F6: F0 08       ;
CODE_0DF5F8:    LDA #$01                ; $0D:F5F8: A9 01       ;
CODE_0DF5FA:    STA $0D00,y             ; $0D:F5FA: 99 00 0D    ;
CODE_0DF5FD:    STA $0D0C,y             ; $0D:F5FD: 99 0C 0D    ;
CODE_0DF600:    PLA                     ; $0D:F600: 68          ;
CODE_0DF601:    PHA                     ; $0D:F601: 48          ;
CODE_0DF602:    AND #$04                ; $0D:F602: 29 04       ;
CODE_0DF604:    BEQ CODE_0DF60E         ; $0D:F604: F0 08       ;
CODE_0DF606:    LDA #$01                ; $0D:F606: A9 01       ;
CODE_0DF608:    STA $0D04,y             ; $0D:F608: 99 04 0D    ;
CODE_0DF60B:    STA $0D10,y             ; $0D:F60B: 99 10 0D    ;
CODE_0DF60E:    PLA                     ; $0D:F60E: 68          ;
CODE_0DF60F:    AND #$02                ; $0D:F60F: 29 02       ;
CODE_0DF611:    BEQ CODE_0DF61B         ; $0D:F611: F0 08       ;
CODE_0DF613:    LDA #$01                ; $0D:F613: A9 01       ;
CODE_0DF615:    STA $0D08,y             ; $0D:F615: 99 08 0D    ;
CODE_0DF618:    STA $0D14,y             ; $0D:F618: 99 14 0D    ;
CODE_0DF61B:    LDX $9E                 ; $0D:F61B: A6 9E       ;
CODE_0DF61D:    RTS                     ; $0D:F61D: 60          ;

DATA_0DF61E:        db $20,$28,$C8,$18,$00,$40,$50,$58 ;
                    db $80,$88,$B8,$78,$60,$A0,$B0,$B8 ;

DATA_0DF62E:        db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $00,$01,$02,$03,$04,$05,$06,$07 ;
                    db $9E,$9F ;

CODE_0DF700:    LDA $0E41               ; $0D:F700: AD 41 0E    ;
CODE_0DF703:    BNE CODE_0DF722         ; $0D:F703: D0 1D       ;
CODE_0DF705:    LDA $06D5               ; $0D:F705: AD D5 06    ;
CODE_0DF708:    CMP #$18                ; $0D:F708: C9 18       ;
CODE_0DF70A:    BEQ CODE_0DF710         ; $0D:F70A: F0 04       ;
CODE_0DF70C:    CMP #$78                ; $0D:F70C: C9 78       ;
CODE_0DF70E:    BNE CODE_0DF726         ; $0D:F70E: D0 16       ;
CODE_0DF710:    INC $0E41               ; $0D:F710: EE 41 0E    ;
CODE_0DF713:    BRA CODE_0DF71F         ; $0D:F713: 80 0A       ;

CODE_0DF715:    LDA $0202               ; $0D:F715: AD 02 02    ;
CODE_0DF718:    AND #$02                ; $0D:F718: 29 02       ;
CODE_0DF71A:    BNE CODE_0DF726         ; $0D:F71A: D0 0A       ;
CODE_0DF71C:    INC $0E41               ; $0D:F71C: EE 41 0E    ;
CODE_0DF71F:    STZ $0E40               ; $0D:F71F: 9C 40 0E    ;
CODE_0DF722:    JSL CODE_0FE5A4         ; $0D:F722: 22 A4 E5 0F ;
CODE_0DF726:    LDA $0F                 ; $0D:F726: A5 0F       ;
CODE_0DF728:    CMP #$03                ; $0D:F728: C9 03       ;
CODE_0DF72A:    BEQ CODE_0DF736         ; $0D:F72A: F0 0A       ;
CODE_0DF72C:    LDA $07AE               ; $0D:F72C: AD AE 07    ;
CODE_0DF72F:    BEQ CODE_0DF736         ; $0D:F72F: F0 05       ;
CODE_0DF731:    LDA $09                 ; $0D:F731: A5 09       ;
CODE_0DF733:    LSR A                   ; $0D:F733: 4A          ;
CODE_0DF734:    BCS CODE_0DF7AC         ; $0D:F734: B0 76       ;
CODE_0DF736:    LDA $0F                 ; $0D:F736: A5 0F       ;
CODE_0DF738:    CMP #$0B                ; $0D:F738: C9 0B       ;
CODE_0DF73A:    BEQ CODE_0DF7B7         ; $0D:F73A: F0 7B       ;
CODE_0DF73C:    LDA $070B               ; $0D:F73C: AD 0B 07    ;
CODE_0DF73F:    BNE CODE_0DF7B2         ; $0D:F73F: D0 71       ;
CODE_0DF741:    LDY $0704               ; $0D:F741: AC 04 07    ;
CODE_0DF744:    BEQ CODE_0DF7AD         ; $0D:F744: F0 67       ;
CODE_0DF746:    LDA $28                 ; $0D:F746: A5 28       ;
CODE_0DF748:    CMP #$00                ; $0D:F748: C9 00       ;
CODE_0DF74A:    BEQ CODE_0DF7AD         ; $0D:F74A: F0 61       ;
CODE_0DF74C:    JSR CODE_0DF7AD         ; $0D:F74C: 20 AD F7    ;
CODE_0DF74F:    TAX                     ; $0D:F74F: AA          ;
CODE_0DF750:    LDY $0B45               ; $0D:F750: AC 45 0B    ;
CODE_0DF753:    LDA $0202               ; $0D:F753: AD 02 02    ;
CODE_0DF756:    LSR A                   ; $0D:F756: 4A          ;
CODE_0DF757:    BCS CODE_0DF75D         ; $0D:F757: B0 04       ;
CODE_0DF759:    INY                     ; $0D:F759: C8          ;
CODE_0DF75A:    INY                     ; $0D:F75A: C8          ;
CODE_0DF75B:    INY                     ; $0D:F75B: C8          ;
CODE_0DF75C:    INY                     ; $0D:F75C: C8          ;
CODE_0DF75D:    LDA $0754               ; $0D:F75D: AD 54 07    ;
CODE_0DF760:    BNE CODE_0DF7AC         ; $0D:F760: D0 4A       ;
CODE_0DF762:    LDA $0028               ; $0D:F762: AD 28 00    ;
CODE_0DF765:    CMP #$03                ; $0D:F765: C9 03       ;
CODE_0DF767:    BEQ CODE_0DF7AC         ; $0D:F767: F0 43       ;
CODE_0DF769:    LDA $000F               ; $0D:F769: AD 0F 00    ;
CODE_0DF76C:    CMP #$0B                ; $0D:F76C: C9 0B       ;
CODE_0DF76E:    BEQ CODE_0DF7AC         ; $0D:F76E: F0 3C       ;
CODE_0DF770:    PHX                     ; $0D:F770: DA          ;
CODE_0DF771:    LDA $0202               ; $0D:F771: AD 02 02    ;
CODE_0DF774:    CMP #$02                ; $0D:F774: C9 02       ;
CODE_0DF776:    BEQ CODE_0DF787         ; $0D:F776: F0 0F       ;
CODE_0DF778:    LDA $0810,y             ; $0D:F778: B9 10 08    ;
CODE_0DF77B:    SEC                     ; $0D:F77B: 38          ;
CODE_0DF77C:    SBC #$08                ; $0D:F77C: E9 08       ;
CODE_0DF77E:    STA $0810,y             ; $0D:F77E: 99 10 08    ;
CODE_0DF781:    BCS CODE_0DF787         ; $0D:F781: B0 04       ;
CODE_0DF783:    LDA #$03                ; $0D:F783: A9 03       ;
CODE_0DF785:    BRA CODE_0DF789         ; $0D:F785: 80 02       ;

CODE_0DF787:    LDA #$02                ; $0D:F787: A9 02       ;
CODE_0DF789:    STA $0C10,y             ; $0D:F789: 99 10 0C    ;
CODE_0DF78C:    LDA $06D5               ; $0D:F78C: AD D5 06    ;
CODE_0DF78F:    SEC                     ; $0D:F78F: 38          ;
CODE_0DF790:    SBC #$28                ; $0D:F790: E9 28       ;
CODE_0DF792:    LSR A                   ; $0D:F792: 4A          ;
CODE_0DF793:    LSR A                   ; $0D:F793: 4A          ;
CODE_0DF794:    CLC                     ; $0D:F794: 18          ;
CODE_0DF795:    ADC #$08                ; $0D:F795: 69 08       ;
CODE_0DF797:    STA $0812,y             ; $0D:F797: 99 12 08    ;
CODE_0DF79A:    LDA $0819,y             ; $0D:F79A: B9 19 08    ;
CODE_0DF79D:    CMP #$F0                ; $0D:F79D: C9 F0       ;
CODE_0DF79F:    BCC CODE_0DF7A6         ; $0D:F79F: 90 05       ;
CODE_0DF7A1:    LDA #$F0                ; $0D:F7A1: A9 F0       ;
CODE_0DF7A3:    STA $0811,y             ; $0D:F7A3: 99 11 08    ;
CODE_0DF7A6:    LDA #$F0                ; $0D:F7A6: A9 F0       ;
CODE_0DF7A8:    STA $0819,y             ; $0D:F7A8: 99 19 08    ;
CODE_0DF7AB:    PLX                     ; $0D:F7AB: FA          ;
CODE_0DF7AC:    RTS                     ; $0D:F7AC: 60          ;

CODE_0DF7AD:    JSR CODE_0DFBB8         ; $0D:F7AD: 20 B8 FB    ;
CODE_0DF7B0:    BRA CODE_0DF7BC         ; $0D:F7B0: 80 0A       ;

CODE_0DF7B2:    JSR CODE_0DFC76         ; $0D:F7B2: 20 76 FC    ;
CODE_0DF7B5:    BRA CODE_0DF7BC         ; $0D:F7B5: 80 05       ;

CODE_0DF7B7:    LDY #$0E                ; $0D:F7B7: A0 0E       ;
CODE_0DF7B9:    LDA DATA_0DF61E,y       ; $0D:F7B9: B9 1E F6    ;
CODE_0DF7BC:    STA $06D5               ; $0D:F7BC: 8D D5 06    ;
CODE_0DF7BF:    LDA $03CE               ; $0D:F7BF: AD CE 03    ;
CODE_0DF7C2:    BNE CODE_0DF7D7         ; $0D:F7C2: D0 13       ;
CODE_0DF7C4:    LDA $0218               ; $0D:F7C4: AD 18 02    ;
CODE_0DF7C7:    BEQ CODE_0DF7DA         ; $0D:F7C7: F0 11       ;
CODE_0DF7C9:    LDA $0754               ; $0D:F7C9: AD 54 07    ;
CODE_0DF7CC:    BNE CODE_0DF7D5         ; $0D:F7CC: D0 07       ;
CODE_0DF7CE:    LDA #$D8                ; $0D:F7CE: A9 D8       ;
CODE_0DF7D0:    STA $06D5               ; $0D:F7D0: 8D D5 06    ;
CODE_0DF7D3:    BRA CODE_0DF7DA         ; $0D:F7D3: 80 05       ;

CODE_0DF7D5:    LDA #$E0                ; $0D:F7D5: A9 E0       ;
CODE_0DF7D7:    STA $06D5               ; $0D:F7D7: 8D D5 06    ;
CODE_0DF7DA:    LDA #$04                ; $0D:F7DA: A9 04       ;
CODE_0DF7DC:    JSR CODE_0DFB6E         ; $0D:F7DC: 20 6E FB    ;
CODE_0DF7DF:    JSR CODE_0DFCAF         ; $0D:F7DF: 20 AF FC    ;
CODE_0DF7E2:    LDA $02                 ; $0D:F7E2: A5 02       ;
CODE_0DF7E4:    CMP #$03                ; $0D:F7E4: C9 03       ;
CODE_0DF7E6:    BNE CODE_0DF802         ; $0D:F7E6: D0 1A       ;
CODE_0DF7E8:    LDA $0219               ; $0D:F7E8: AD 19 02    ;
CODE_0DF7EB:    SEC                     ; $0D:F7EB: 38          ;
CODE_0DF7EC:    SBC $42                 ; $0D:F7EC: E5 42       ;
CODE_0DF7EE:    LDA $78                 ; $0D:F7EE: A5 78       ;
CODE_0DF7F0:    SBC $43                 ; $0D:F7F0: E5 43       ;
CODE_0DF7F2:    BEQ CODE_0DF802         ; $0D:F7F2: F0 0E       ;
CODE_0DF7F4:    LDA #$01                ; $0D:F7F4: A9 01       ;
CODE_0DF7F6:    STA $0CD0               ; $0D:F7F6: 8D D0 0C    ;
CODE_0DF7F9:    STA $0CD8               ; $0D:F7F9: 8D D8 0C    ;
CODE_0DF7FC:    STA $0CE0               ; $0D:F7FC: 8D E0 0C    ;
CODE_0DF7FF:    STA $0CE8               ; $0D:F7FF: 8D E8 0C    ;
CODE_0DF802:    LDA $0711               ; $0D:F802: AD 11 07    ;
CODE_0DF805:    BEQ CODE_0DF832         ; $0D:F805: F0 2B       ;
CODE_0DF807:    LDY #$00                ; $0D:F807: A0 00       ;
CODE_0DF809:    LDA $0789               ; $0D:F809: AD 89 07    ;
CODE_0DF80C:    CMP $0711               ; $0D:F80C: CD 11 07    ;
CODE_0DF80F:    STY $0711               ; $0D:F80F: 8C 11 07    ;
CODE_0DF812:    BCS CODE_0DF832         ; $0D:F812: B0 1E       ;
CODE_0DF814:    STA $0711               ; $0D:F814: 8D 11 07    ;
CODE_0DF817:    LDA $28                 ; $0D:F817: A5 28       ;
CODE_0DF819:    CMP #$01                ; $0D:F819: C9 01       ;
CODE_0DF81B:    BEQ CODE_0DF825         ; $0D:F81B: F0 08       ;
CODE_0DF81D:    LDY #$07                ; $0D:F81D: A0 07       ;
CODE_0DF81F:    LDA DATA_0DF61E,y       ; $0D:F81F: B9 1E F6    ;
CODE_0DF822:    STA $06D5               ; $0D:F822: 8D D5 06    ;
CODE_0DF825:    LDY #$04                ; $0D:F825: A0 04       ;
CODE_0DF827:    LDA $5D                 ; $0D:F827: A5 5D       ;
CODE_0DF829:    ORA $0C                 ; $0D:F829: 05 0C       ;
CODE_0DF82B:    BEQ CODE_0DF82E         ; $0D:F82B: F0 01       ;
CODE_0DF82D:    DEY                     ; $0D:F82D: 88          ;
CODE_0DF82E:    TYA                     ; $0D:F82E: 98          ;
CODE_0DF82F:    JSR CODE_0DFB6E         ; $0D:F82F: 20 6E FB    ;
CODE_0DF832:    LDA $03D0               ; $0D:F832: AD D0 03    ;
CODE_0DF835:    LSR A                   ; $0D:F835: 4A          ;
CODE_0DF836:    LSR A                   ; $0D:F836: 4A          ;
CODE_0DF837:    LSR A                   ; $0D:F837: 4A          ;
CODE_0DF838:    LSR A                   ; $0D:F838: 4A          ;
CODE_0DF839:    STA $00                 ; $0D:F839: 85 00       ;
CODE_0DF83B:    LDX #$03                ; $0D:F83B: A2 03       ;
CODE_0DF83D:    LDA $0B45               ; $0D:F83D: AD 45 0B    ;
CODE_0DF840:    CLC                     ; $0D:F840: 18          ;
CODE_0DF841:    ADC #$18                ; $0D:F841: 69 18       ;
CODE_0DF843:    TAY                     ; $0D:F843: A8          ;
CODE_0DF844:    LDA #$F0                ; $0D:F844: A9 F0       ;
CODE_0DF846:    LSR $00                 ; $0D:F846: 46 00       ;
CODE_0DF848:    BCC CODE_0DF84D         ; $0D:F848: 90 03       ;
CODE_0DF84A:    JSR CODE_0DEB8A         ; $0D:F84A: 20 8A EB    ;
CODE_0DF84D:    TYA                     ; $0D:F84D: 98          ;
CODE_0DF84E:    SEC                     ; $0D:F84E: 38          ;
CODE_0DF84F:    SBC #$08                ; $0D:F84F: E9 08       ;
CODE_0DF851:    TAY                     ; $0D:F851: A8          ;
CODE_0DF852:    DEX                     ; $0D:F852: CA          ;
CODE_0DF853:    BPL CODE_0DF844         ; $0D:F853: 10 EF       ;
CODE_0DF855:    JSR CODE_0DFCCC         ; $0D:F855: 20 CC FC    ;
CODE_0DF858:    RTS                     ; $0D:F858: 60          ;

DATA_0DF859:        db $40,$01,$2E,$60,$FF,$04

CODE_0DF85F:    JSR CODE_0D841C         ; $0D:F85F: 20 1C 84    ;
CODE_0DF862:    LDA #$D0                ; $0D:F862: A9 D0       ;
CODE_0DF864:    STA $06D5               ; $0D:F864: 8D D5 06    ;
CODE_0DF867:    JSL CODE_00C000         ; $0D:F867: 22 00 C0 00 ;
CODE_0DF86B:    LDX #$05                ; $0D:F86B: A2 05       ;
CODE_0DF86D:    LDA DATA_0DF859,x       ; $0D:F86D: BD 59 F8    ;
CODE_0DF870:    STA $02,x               ; $0D:F870: 95 02       ;
CODE_0DF872:    DEX                     ; $0D:F872: CA          ;
CODE_0DF873:    BPL CODE_0DF86D         ; $0D:F873: 10 F8       ;
CODE_0DF875:    LDX #$B8                ; $0D:F875: A2 B8       ;
CODE_0DF877:    LDY #$D0                ; $0D:F877: A0 D0       ;
CODE_0DF879:    JSR CODE_0DFB94         ; $0D:F879: 20 94 FB    ;
CODE_0DF87C:    JSR CODE_0DF883         ; $0D:F87C: 20 83 F8    ;
CODE_0DF87F:    JSR CODE_0D9ED1         ; $0D:F87F: 20 D1 9E    ;
CODE_0DF882:    RTS                     ; $0D:F882: 60          ;

CODE_0DF883:    PHX                     ; $0D:F883: DA          ;
CODE_0DF884:    PHY                     ; $0D:F884: 5A          ;
CODE_0DF885:    LDA #$F0                ; $0D:F885: A9 F0       ;
CODE_0DF887:    STA $0801,y             ; $0D:F887: 99 01 08    ;
CODE_0DF88A:    STA $0901,y             ; $0D:F88A: 99 01 09    ;
CODE_0DF88D:    INY                     ; $0D:F88D: C8          ;
CODE_0DF88E:    BNE CODE_0DF887         ; $0D:F88E: D0 F7       ;
CODE_0DF890:    JSR CODE_0DF999         ; $0D:F890: 20 99 F9    ;
CODE_0DF893:    LDX #$00                ; $0D:F893: A2 00       ;
CODE_0DF895:    LDA #$30                ; $0D:F895: A9 30       ;
CODE_0DF897:    STA $E2                 ; $0D:F897: 85 E2       ;
CODE_0DF899:    JSR CODE_0DF920         ; $0D:F899: 20 20 F9    ;
CODE_0DF89C:    CMP #$02                ; $0D:F89C: C9 02       ;
CODE_0DF89E:    BNE CODE_0DF8D9         ; $0D:F89E: D0 39       ;
CODE_0DF8A0:    LDA $1C,x               ; $0D:F8A0: B5 1C       ;
CODE_0DF8A2:    CMP #$16                ; $0D:F8A2: C9 16       ;
CODE_0DF8A4:    BEQ CODE_0DF8CB         ; $0D:F8A4: F0 25       ;
CODE_0DF8A6:    PHY                     ; $0D:F8A6: 5A          ;
CODE_0DF8A7:    PHX                     ; $0D:F8A7: DA          ;
CODE_0DF8A8:    JSR CODE_0DEE6F         ; $0D:F8A8: 20 6F EE    ;
CODE_0DF8AB:    PLX                     ; $0D:F8AB: FA          ;
CODE_0DF8AC:    LDA $0B46,x             ; $0D:F8AC: BD 46 0B    ;
CODE_0DF8AF:    TAY                     ; $0D:F8AF: A8          ;
CODE_0DF8B0:    LDA #$00                ; $0D:F8B0: A9 00       ;
CODE_0DF8B2:    STA $0D00,y             ; $0D:F8B2: 99 00 0D    ;
CODE_0DF8B5:    STA $0D04,y             ; $0D:F8B5: 99 04 0D    ;
CODE_0DF8B8:    STA $0D08,y             ; $0D:F8B8: 99 08 0D    ;
CODE_0DF8BB:    STA $0D0C,y             ; $0D:F8BB: 99 0C 0D    ;
CODE_0DF8BE:    STA $0D10,y             ; $0D:F8BE: 99 10 0D    ;
CODE_0DF8C1:    STA $0D14,y             ; $0D:F8C1: 99 14 0D    ;
CODE_0DF8C4:    LDA $43                 ; $0D:F8C4: A5 43       ;
CODE_0DF8C6:    STA $79,x               ; $0D:F8C6: 95 79       ;
CODE_0DF8C8:    PLY                     ; $0D:F8C8: 7A          ;
CODE_0DF8C9:    BRA CODE_0DF8D0         ; $0D:F8C9: 80 05       ;

CODE_0DF8CB:    JSR CODE_0DFA84         ; $0D:F8CB: 20 84 FA    ;
CODE_0DF8CE:    BRA CODE_0DF913         ; $0D:F8CE: 80 43       ;

CODE_0DF8D0:    LDA $1C,x               ; $0D:F8D0: B5 1C       ;
CODE_0DF8D2:    CMP #$12                ; $0D:F8D2: C9 12       ;
CODE_0DF8D4:    BNE CODE_0DF8D9         ; $0D:F8D4: D0 03       ;
CODE_0DF8D6:    JSR CODE_0DFA2D         ; $0D:F8D6: 20 2D FA    ;
CODE_0DF8D9:    INY                     ; $0D:F8D9: C8          ;
CODE_0DF8DA:    INX                     ; $0D:F8DA: E8          ;
CODE_0DF8DB:    CPX #$05                ; $0D:F8DB: E0 05       ;
CODE_0DF8DD:    BNE CODE_0DF899         ; $0D:F8DD: D0 BA       ;
CODE_0DF8DF:    LDA $5C                 ; $0D:F8DF: A5 5C       ;
CODE_0DF8E1:    CMP #$03                ; $0D:F8E1: C9 03       ;
CODE_0DF8E3:    BEQ CODE_0DF913         ; $0D:F8E3: F0 2E       ;
CODE_0DF8E5:    LDX #$00                ; $0D:F8E5: A2 00       ;
CODE_0DF8E7:    LDA $0902,x             ; $0D:F8E7: BD 02 09    ;
CODE_0DF8EA:    CMP $0906,x             ; $0D:F8EA: DD 06 09    ;
CODE_0DF8ED:    BNE CODE_0DF901         ; $0D:F8ED: D0 12       ;
CODE_0DF8EF:    LDA $0903,x             ; $0D:F8EF: BD 03 09    ;
CODE_0DF8F2:    AND #$3F                ; $0D:F8F2: 29 3F       ;
CODE_0DF8F4:    STA $0903,x             ; $0D:F8F4: 9D 03 09    ;
CODE_0DF8F7:    LDA $0907,x             ; $0D:F8F7: BD 07 09    ;
CODE_0DF8FA:    ORA #$40                ; $0D:F8FA: 09 40       ;
CODE_0DF8FC:    STA $0907,x             ; $0D:F8FC: 9D 07 09    ;
CODE_0DF8FF:    BRA CODE_0DF907         ; $0D:F8FF: 80 06       ;

CODE_0DF901:    LDA $0907,x             ; $0D:F901: BD 07 09    ;
CODE_0DF904:    STA $0903,x             ; $0D:F904: 9D 03 09    ;
CODE_0DF907:    INX                     ; $0D:F907: E8          ;
CODE_0DF908:    INX                     ; $0D:F908: E8          ;
CODE_0DF909:    INX                     ; $0D:F909: E8          ;
CODE_0DF90A:    INX                     ; $0D:F90A: E8          ;
CODE_0DF90B:    INX                     ; $0D:F90B: E8          ;
CODE_0DF90C:    INX                     ; $0D:F90C: E8          ;
CODE_0DF90D:    INX                     ; $0D:F90D: E8          ;
CODE_0DF90E:    INX                     ; $0D:F90E: E8          ;
CODE_0DF90F:    CPX #$00                ; $0D:F90F: E0 00       ;
CODE_0DF911:    BNE CODE_0DF8E7         ; $0D:F911: D0 D4       ;
CODE_0DF913:    LDX #$04                ; $0D:F913: A2 04       ;
CODE_0DF915:    STZ $1C,x               ; $0D:F915: 74 1C       ;
CODE_0DF917:    DEX                     ; $0D:F917: CA          ;
CODE_0DF918:    BPL CODE_0DF915         ; $0D:F918: 10 FB       ;
CODE_0DF91A:    STZ $0E85               ; $0D:F91A: 9C 85 0E    ;
CODE_0DF91D:    PLY                     ; $0D:F91D: 7A          ;
CODE_0DF91E:    PLX                     ; $0D:F91E: FA          ;
CODE_0DF91F:    RTS                     ; $0D:F91F: 60          ;

CODE_0DF920:    STZ $0E85               ; $0D:F920: 9C 85 0E    ;
CODE_0DF923:    PHX                     ; $0D:F923: DA          ;
CODE_0DF924:    TYX                     ; $0D:F924: BB          ;
CODE_0DF925:    LDA $075F               ; $0D:F925: AD 5F 07    ;
CODE_0DF928:    CMP #$08                ; $0D:F928: C9 08       ;
CODE_0DF92A:    BCC CODE_0DF932         ; $0D:F92A: 90 06       ;
CODE_0DF92C:    LDA.l DATA_0FF8AF,x     ; $0D:F92C: BF AF F8 0F ;
CODE_0DF930:    BRA CODE_0DF936         ; $0D:F930: 80 04       ;

CODE_0DF932:    LDA.l DATA_0FF80A,x     ; $0D:F932: BF 0A F8 0F ;
CODE_0DF936:    PLX                     ; $0D:F936: FA          ;
CODE_0DF937:    CMP #$FF                ; $0D:F937: C9 FF       ;
CODE_0DF939:    BNE CODE_0DF945         ; $0D:F939: D0 0A       ;
CODE_0DF93B:    LDA $E2                 ; $0D:F93B: A5 E2       ;
CODE_0DF93D:    CLC                     ; $0D:F93D: 18          ;
CODE_0DF93E:    ADC #$18                ; $0D:F93E: 69 18       ;
CODE_0DF940:    STA $E2                 ; $0D:F940: 85 E2       ;
CODE_0DF942:    JMP CODE_0DF998         ; $0D:F942: 4C 98 F9    ;

CODE_0DF945:    STZ $00BC,x             ; $0D:F945: 9E BC 00    ;
CODE_0DF948:    STA $1C,x               ; $0D:F948: 95 1C       ;
CODE_0DF94A:    CMP #$0E                ; $0D:F94A: C9 0E       ;
CODE_0DF94C:    BEQ CODE_0DF962         ; $0D:F94C: F0 14       ;
CODE_0DF94E:    CMP #$0F                ; $0D:F94E: C9 0F       ;
CODE_0DF950:    BEQ CODE_0DF962         ; $0D:F950: F0 10       ;
CODE_0DF952:    CMP #$10                ; $0D:F952: C9 10       ;
CODE_0DF954:    BEQ CODE_0DF962         ; $0D:F954: F0 0C       ;
CODE_0DF956:    CMP #$14                ; $0D:F956: C9 14       ;
CODE_0DF958:    BEQ CODE_0DF962         ; $0D:F958: F0 08       ;
CODE_0DF95A:    CMP #$08                ; $0D:F95A: C9 08       ;
CODE_0DF95C:    BEQ CODE_0DF962         ; $0D:F95C: F0 04       ;
CODE_0DF95E:    LDA #$98                ; $0D:F95E: A9 98       ;
CODE_0DF960:    BRA CODE_0DF964         ; $0D:F960: 80 02       ;

CODE_0DF962:    LDA #$88                ; $0D:F962: A9 88       ;
CODE_0DF964:    STA $0238,x             ; $0D:F964: 9D 38 02    ;
CODE_0DF967:    LDA $E2                 ; $0D:F967: A5 E2       ;
CODE_0DF969:    CLC                     ; $0D:F969: 18          ;
CODE_0DF96A:    ADC #$18                ; $0D:F96A: 69 18       ;
CODE_0DF96C:    STA $E2                 ; $0D:F96C: 85 E2       ;
CODE_0DF96E:    STA $03AE               ; $0D:F96E: 8D AE 03    ;
CODE_0DF971:    LDA #$20                ; $0D:F971: A9 20       ;
CODE_0DF973:    STA $0257,x             ; $0D:F973: 9D 57 02    ;
CODE_0DF976:    PHX                     ; $0D:F976: DA          ;
CODE_0DF977:    TYX                     ; $0D:F977: BB          ;
CODE_0DF978:    LDA $075F               ; $0D:F978: AD 5F 07    ;
CODE_0DF97B:    CMP #$08                ; $0D:F97B: C9 08       ;
CODE_0DF97D:    BCC CODE_0DF985         ; $0D:F97D: 90 06       ;
CODE_0DF97F:    LDA.l DATA_0FF8AF,x     ; $0D:F97F: BF AF F8 0F ;
CODE_0DF983:    BRA CODE_0DF989         ; $0D:F983: 80 04       ;

CODE_0DF985:    LDA.l DATA_0FF80A,x     ; $0D:F985: BF 0A F8 0F ;
CODE_0DF989:    PLX                     ; $0D:F989: FA          ;
CODE_0DF98A:    CMP #$05                ; $0D:F98A: C9 05       ;
CODE_0DF98C:    BNE CODE_0DF994         ; $0D:F98C: D0 06       ;
CODE_0DF98E:    STA $0E85               ; $0D:F98E: 8D 85 0E    ;
CODE_0DF991:    JSR CODE_0DFB4C         ; $0D:F991: 20 4C FB    ;
CODE_0DF994:    LDA #$02                ; $0D:F994: A9 02       ;
CODE_0DF996:    STA $47,x               ; $0D:F996: 95 47       ;
CODE_0DF998:    RTS                     ; $0D:F998: 60          ;

CODE_0DF999:    LDA $075F               ; $0D:F999: AD 5F 07    ;
CODE_0DF99C:    ASL A                   ; $0D:F99C: 0A          ;
CODE_0DF99D:    ASL A                   ; $0D:F99D: 0A          ;
CODE_0DF99E:    CLC                     ; $0D:F99E: 18          ;
CODE_0DF99F:    ADC $075F               ; $0D:F99F: 6D 5F 07    ;
CODE_0DF9A2:    CLC                     ; $0D:F9A2: 18          ;
CODE_0DF9A3:    ADC $0760               ; $0D:F9A3: 6D 60 07    ;
CODE_0DF9A6:    TAX                     ; $0D:F9A6: AA          ;
CODE_0DF9A7:    LDA.l DATA_0E8EB3,x     ; $0D:F9A7: BF B3 8E 0E ;
CODE_0DF9AB:    STA $0E22               ; $0D:F9AB: 8D 22 0E    ;
CODE_0DF9AE:    LDA.l DATA_0E8EF4,x     ; $0D:F9AE: BF F4 8E 0E ;
CODE_0DF9B2:    STA $0E21               ; $0D:F9B2: 8D 21 0E    ;
CODE_0DF9B5:    PHA                     ; $0D:F9B5: 48          ;
CODE_0DF9B6:    CMP #$21                ; $0D:F9B6: C9 21       ;
CODE_0DF9B8:    BCC CODE_0DF9C0         ; $0D:F9B8: 90 06       ;
CODE_0DF9BA:    SEC                     ; $0D:F9BA: 38          ;
CODE_0DF9BB:    SBC #$21                ; $0D:F9BB: E9 21       ;
CODE_0DF9BD:    STA $0E21               ; $0D:F9BD: 8D 21 0E    ;
CODE_0DF9C0:    ASL A                   ; $0D:F9C0: 0A          ;
CODE_0DF9C1:    ASL A                   ; $0D:F9C1: 0A          ;
CODE_0DF9C2:    CLC                     ; $0D:F9C2: 18          ;
CODE_0DF9C3:    ADC $0E21               ; $0D:F9C3: 6D 21 0E    ;
CODE_0DF9C6:    TAY                     ; $0D:F9C6: A8          ;
CODE_0DF9C7:    PLA                     ; $0D:F9C7: 68          ;
CODE_0DF9C8:    STA $0E21               ; $0D:F9C8: 8D 21 0E    ;
CODE_0DF9CB:    LDA $071C               ; $0D:F9CB: AD 1C 07    ;
CODE_0DF9CE:    STA $9C                 ; $0D:F9CE: 85 9C       ;
CODE_0DF9D0:    LDA $071A               ; $0D:F9D0: AD 1A 07    ;
CODE_0DF9D3:    STA $9D                 ; $0D:F9D3: 85 9D       ;
CODE_0DF9D5:    INC $9B                 ; $0D:F9D5: E6 9B       ;
CODE_0DF9D7:    STZ $071A               ; $0D:F9D7: 9C 1A 07    ;
CODE_0DF9DA:    STZ $073F               ; $0D:F9DA: 9C 3F 07    ;
CODE_0DF9DD:    STZ $0EFD               ; $0D:F9DD: 9C FD 0E    ;
CODE_0DF9E0:    STZ $0EFE               ; $0D:F9E0: 9C FE 0E    ;
CODE_0DF9E3:    STZ $0EEE               ; $0D:F9E3: 9C EE 0E    ;
CODE_0DF9E6:    STZ $0EEF               ; $0D:F9E6: 9C EF 0E    ;
CODE_0DF9E9:    STZ $210D               ; $0D:F9E9: 9C 0D 21    ;
CODE_0DF9EC:    STZ $210D               ; $0D:F9EC: 9C 0D 21    ;
CODE_0DF9EF:    STZ $210F               ; $0D:F9EF: 9C 0F 21    ;
CODE_0DF9F2:    STZ $210F               ; $0D:F9F2: 9C 0F 21    ;
CODE_0DF9F5:    STZ $2111               ; $0D:F9F5: 9C 11 21    ;
CODE_0DF9F8:    STZ $2111               ; $0D:F9F8: 9C 11 21    ;
CODE_0DF9FB:    RTS                     ; $0D:F9FB: 60          ;

DATA_0DF9FC:        db $DC,$DC,$DD,$DD,$DE,$DE

CODE_0DFA02:    LDA DATA_0DF9FC         ; $0D:FA02: AD FC F9    ;
CODE_0DFA05:    STA $0962               ; $0D:FA05: 8D 62 09    ;
CODE_0DFA08:    LDA DATA_0DF9FC+1       ; $0D:FA08: AD FD F9    ;
CODE_0DFA0B:    STA $0966               ; $0D:FA0B: 8D 66 09    ;
CODE_0DFA0E:    LDA DATA_0DF9FC+2       ; $0D:FA0E: AD FE F9    ;
CODE_0DFA11:    STA $096A               ; $0D:FA11: 8D 6A 09    ;
CODE_0DFA14:    LDA DATA_0DF9FC+3       ; $0D:FA14: AD FF F9    ;
CODE_0DFA17:    STA $096E               ; $0D:FA17: 8D 6E 09    ;
CODE_0DFA1A:    LDA DATA_0DF9FC+4       ; $0D:FA1A: AD 00 FA    ;
CODE_0DFA1D:    STA $0972               ; $0D:FA1D: 8D 72 09    ;
CODE_0DFA20:    LDA DATA_0DF9FC+5       ; $0D:FA20: AD 01 FA    ;
CODE_0DFA23:    STA $0976               ; $0D:FA23: 8D 76 09    ;
CODE_0DFA26:    RTS                     ; $0D:FA26: 60          ;

DATA_0DFA27:        db $B9,$B8,$BB,$BA,$BC,$BC

CODE_0DFA2D:    PHY                     ; $0D:FA2D: 5A          ;
CODE_0DFA2E:    LDA #$03                ; $0D:FA2E: A9 03       ;
CODE_0DFA30:    STA $03                 ; $0D:FA30: 85 03       ;
CODE_0DFA32:    LDA $0238,x             ; $0D:FA32: BD 38 02    ;
CODE_0DFA35:    SEC                     ; $0D:FA35: 38          ;
CODE_0DFA36:    SBC #$28                ; $0D:FA36: E9 28       ;
CODE_0DFA38:    STA $0238,x             ; $0D:FA38: 9D 38 02    ;
CODE_0DFA3B:    STZ $E3                 ; $0D:FA3B: 64 E3       ;
CODE_0DFA3D:    LDY #$00                ; $0D:FA3D: A0 00       ;
CODE_0DFA3F:    LDA $03AE               ; $0D:FA3F: AD AE 03    ;
CODE_0DFA42:    STA $0990,y             ; $0D:FA42: 99 90 09    ;
CODE_0DFA45:    CLC                     ; $0D:FA45: 18          ;
CODE_0DFA46:    ADC #$08                ; $0D:FA46: 69 08       ;
CODE_0DFA48:    STA $0994,y             ; $0D:FA48: 99 94 09    ;
CODE_0DFA4B:    LDA $0238,x             ; $0D:FA4B: BD 38 02    ;
CODE_0DFA4E:    STA $0991,y             ; $0D:FA4E: 99 91 09    ;
CODE_0DFA51:    STA $0995,y             ; $0D:FA51: 99 95 09    ;
CODE_0DFA54:    CLC                     ; $0D:FA54: 18          ;
CODE_0DFA55:    ADC #$08                ; $0D:FA55: 69 08       ;
CODE_0DFA57:    STA $0238,x             ; $0D:FA57: 9D 38 02    ;
CODE_0DFA5A:    LDA #$2A                ; $0D:FA5A: A9 2A       ;
CODE_0DFA5C:    STA $0993,y             ; $0D:FA5C: 99 93 09    ;
CODE_0DFA5F:    STA $0997,y             ; $0D:FA5F: 99 97 09    ;
CODE_0DFA62:    PHX                     ; $0D:FA62: DA          ;
CODE_0DFA63:    LDX $E3                 ; $0D:FA63: A6 E3       ;
CODE_0DFA65:    LDA DATA_0DFA27,x       ; $0D:FA65: BD 27 FA    ;
CODE_0DFA68:    STA $0992,y             ; $0D:FA68: 99 92 09    ;
CODE_0DFA6B:    LDA DATA_0DFA27+1,x     ; $0D:FA6B: BD 28 FA    ;
CODE_0DFA6E:    STA $0996,y             ; $0D:FA6E: 99 96 09    ;
CODE_0DFA71:    INC $E3                 ; $0D:FA71: E6 E3       ;
CODE_0DFA73:    INC $E3                 ; $0D:FA73: E6 E3       ;
CODE_0DFA75:    PLX                     ; $0D:FA75: FA          ;
CODE_0DFA76:    INY                     ; $0D:FA76: C8          ;
CODE_0DFA77:    INY                     ; $0D:FA77: C8          ;
CODE_0DFA78:    INY                     ; $0D:FA78: C8          ;
CODE_0DFA79:    INY                     ; $0D:FA79: C8          ;
CODE_0DFA7A:    INY                     ; $0D:FA7A: C8          ;
CODE_0DFA7B:    INY                     ; $0D:FA7B: C8          ;
CODE_0DFA7C:    INY                     ; $0D:FA7C: C8          ;
CODE_0DFA7D:    INY                     ; $0D:FA7D: C8          ;
CODE_0DFA7E:    DEC $03                 ; $0D:FA7E: C6 03       ;
CODE_0DFA80:    BNE CODE_0DFA3F         ; $0D:FA80: D0 BD       ;
CODE_0DFA82:    PLY                     ; $0D:FA82: 7A          ;
CODE_0DFA83:    RTS                     ; $0D:FA83: 60          ;

CODE_0DFA84:    PHY                     ; $0D:FA84: 5A          ;
CODE_0DFA85:    PHX                     ; $0D:FA85: DA          ;
CODE_0DFA86:    LDA $0238,x             ; $0D:FA86: BD 38 02    ;
CODE_0DFA89:    STA $03B9               ; $0D:FA89: 8D B9 03    ;
CODE_0DFA8C:    SEC                     ; $0D:FA8C: 38          ;
CODE_0DFA8D:    SBC #$08                ; $0D:FA8D: E9 08       ;
CODE_0DFA8F:    STA $03B9               ; $0D:FA8F: 8D B9 03    ;
CODE_0DFA92:    LDA $03AE               ; $0D:FA92: AD AE 03    ;
CODE_0DFA95:    SEC                     ; $0D:FA95: 38          ;
CODE_0DFA96:    SBC #$10                ; $0D:FA96: E9 10       ;
CODE_0DFA98:    STA $03AE               ; $0D:FA98: 8D AE 03    ;
CODE_0DFA9B:    LDY #$90                ; $0D:FA9B: A0 90       ;
CODE_0DFA9D:    LDX #$00                ; $0D:FA9D: A2 00       ;
CODE_0DFA9F:    LDA $03AE               ; $0D:FA9F: AD AE 03    ;
CODE_0DFAA2:    STA $0900,y             ; $0D:FAA2: 99 00 09    ;
CODE_0DFAA5:    STA $0908,y             ; $0D:FAA5: 99 08 09    ;
CODE_0DFAA8:    CLC                     ; $0D:FAA8: 18          ;
CODE_0DFAA9:    ADC #$08                ; $0D:FAA9: 69 08       ;
CODE_0DFAAB:    STA $0910,y             ; $0D:FAAB: 99 10 09    ;
CODE_0DFAAE:    CLC                     ; $0D:FAAE: 18          ;
CODE_0DFAAF:    ADC #$08                ; $0D:FAAF: 69 08       ;
CODE_0DFAB1:    STA $0904,y             ; $0D:FAB1: 99 04 09    ;
CODE_0DFAB4:    STA $090C,y             ; $0D:FAB4: 99 0C 09    ;
CODE_0DFAB7:    STA $0914,y             ; $0D:FAB7: 99 14 09    ;
CODE_0DFABA:    LDA $03B9               ; $0D:FABA: AD B9 03    ;
CODE_0DFABD:    STA $0901,y             ; $0D:FABD: 99 01 09    ;
CODE_0DFAC0:    STA $0905,y             ; $0D:FAC0: 99 05 09    ;
CODE_0DFAC3:    CLC                     ; $0D:FAC3: 18          ;
CODE_0DFAC4:    ADC #$10                ; $0D:FAC4: 69 10       ;
CODE_0DFAC6:    STA $0909,y             ; $0D:FAC6: 99 09 09    ;
CODE_0DFAC9:    STA $090D,y             ; $0D:FAC9: 99 0D 09    ;
CODE_0DFACC:    SEC                     ; $0D:FACC: 38          ;
CODE_0DFACD:    SBC #$18                ; $0D:FACD: E9 18       ;
CODE_0DFACF:    STA $0911,y             ; $0D:FACF: 99 11 09    ;
CODE_0DFAD2:    STA $0915,y             ; $0D:FAD2: 99 15 09    ;
CODE_0DFAD5:    LDA #$00                ; $0D:FAD5: A9 00       ;
CODE_0DFAD7:    STA $0C10,y             ; $0D:FAD7: 99 10 0C    ;
CODE_0DFADA:    STA $0C14,y             ; $0D:FADA: 99 14 0C    ;
CODE_0DFADD:    LDA #$02                ; $0D:FADD: A9 02       ;
CODE_0DFADF:    STA $0D00,y             ; $0D:FADF: 99 00 0D    ;
CODE_0DFAE2:    STA $0D04,y             ; $0D:FAE2: 99 04 0D    ;
CODE_0DFAE5:    STA $0D08,y             ; $0D:FAE5: 99 08 0D    ;
CODE_0DFAE8:    STA $0D0C,y             ; $0D:FAE8: 99 0C 0D    ;
CODE_0DFAEB:    LDA #$61                ; $0D:FAEB: A9 61       ;
CODE_0DFAED:    STA $0903,y             ; $0D:FAED: 99 03 09    ;
CODE_0DFAF0:    STA $0907,y             ; $0D:FAF0: 99 07 09    ;
CODE_0DFAF3:    STA $090B,y             ; $0D:FAF3: 99 0B 09    ;
CODE_0DFAF6:    STA $090F,y             ; $0D:FAF6: 99 0F 09    ;
CODE_0DFAF9:    STA $0913,y             ; $0D:FAF9: 99 13 09    ;
CODE_0DFAFC:    STA $0917,y             ; $0D:FAFC: 99 17 09    ;
CODE_0DFAFF:    LDA #$C5                ; $0D:FAFF: A9 C5       ;
CODE_0DFB01:    STA $0912,y             ; $0D:FB01: 99 12 09    ;
CODE_0DFB04:    LDA #$C4                ; $0D:FB04: A9 C4       ;
CODE_0DFB06:    STA $0916,y             ; $0D:FB06: 99 16 09    ;
CODE_0DFB09:    LDA #$EE                ; $0D:FB09: A9 EE       ;
CODE_0DFB0B:    STA $0902,y             ; $0D:FB0B: 99 02 09    ;
CODE_0DFB0E:    LDA #$C0                ; $0D:FB0E: A9 C0       ;
CODE_0DFB10:    STA $0906,y             ; $0D:FB10: 99 06 09    ;
CODE_0DFB13:    LDA #$E2                ; $0D:FB13: A9 E2       ;
CODE_0DFB15:    STA $090A,y             ; $0D:FB15: 99 0A 09    ;
CODE_0DFB18:    LDA #$E0                ; $0D:FB18: A9 E0       ;
CODE_0DFB1A:    STA $090E,y             ; $0D:FB1A: 99 0E 09    ;
CODE_0DFB1D:    LDA #$70                ; $0D:FB1D: A9 70       ;
CODE_0DFB1F:    STA $09F0               ; $0D:FB1F: 8D F0 09    ;
CODE_0DFB22:    LDA #$78                ; $0D:FB22: A9 78       ;
CODE_0DFB24:    STA $09F4               ; $0D:FB24: 8D F4 09    ;
CODE_0DFB27:    LDA #$98                ; $0D:FB27: A9 98       ;
CODE_0DFB29:    STA $09F1               ; $0D:FB29: 8D F1 09    ;
CODE_0DFB2C:    STA $09F5               ; $0D:FB2C: 8D F5 09    ;
CODE_0DFB2F:    LDA #$86                ; $0D:FB2F: A9 86       ;
CODE_0DFB31:    STA $09F2               ; $0D:FB31: 8D F2 09    ;
CODE_0DFB34:    LDA #$87                ; $0D:FB34: A9 87       ;
CODE_0DFB36:    STA $09F6               ; $0D:FB36: 8D F6 09    ;
CODE_0DFB39:    LDA #$21                ; $0D:FB39: A9 21       ;
CODE_0DFB3B:    STA $09F3               ; $0D:FB3B: 8D F3 09    ;
CODE_0DFB3E:    STA $09F7               ; $0D:FB3E: 8D F7 09    ;
CODE_0DFB41:    LDA #$02                ; $0D:FB41: A9 02       ;
CODE_0DFB43:    STA $0DF0               ; $0D:FB43: 8D F0 0D    ;
CODE_0DFB46:    STA $0DF4               ; $0D:FB46: 8D F4 0D    ;
CODE_0DFB49:    PLX                     ; $0D:FB49: FA          ;
CODE_0DFB4A:    PLY                     ; $0D:FB4A: 7A          ;
CODE_0DFB4B:    RTS                     ; $0D:FB4B: 60          ;

CODE_0DFB4C:    LDA $0238,x             ; $0D:FB4C: BD 38 02    ;
CODE_0DFB4F:    SEC                     ; $0D:FB4F: 38          ;
CODE_0DFB50:    SBC #$0A                ; $0D:FB50: E9 0A       ;
CODE_0DFB52:    STA $0881               ; $0D:FB52: 8D 81 08    ;
CODE_0DFB55:    LDA $03AE               ; $0D:FB55: AD AE 03    ;
CODE_0DFB58:    CLC                     ; $0D:FB58: 18          ;
CODE_0DFB59:    ADC #$03                ; $0D:FB59: 69 03       ;
CODE_0DFB5B:    STA $0880               ; $0D:FB5B: 8D 80 08    ;
CODE_0DFB5E:    LDA #$2A                ; $0D:FB5E: A9 2A       ;
CODE_0DFB60:    STA $0883               ; $0D:FB60: 8D 83 08    ;
CODE_0DFB63:    LDA #$44                ; $0D:FB63: A9 44       ;
CODE_0DFB65:    STA $0882               ; $0D:FB65: 8D 82 08    ;
CODE_0DFB68:    LDA #$02                ; $0D:FB68: A9 02       ;
CODE_0DFB6A:    STA $0C80               ; $0D:FB6A: 8D 80 0C    ;
CODE_0DFB6D:    RTS                     ; $0D:FB6D: 60          ;

CODE_0DFB6E:    STA $07                 ; $0D:FB6E: 85 07       ;
CODE_0DFB70:    LDA $03AD               ; $0D:FB70: AD AD 03    ;
CODE_0DFB73:    STA $0755               ; $0D:FB73: 8D 55 07    ;
CODE_0DFB76:    STA $05                 ; $0D:FB76: 85 05       ;
CODE_0DFB78:    LDA $03B8               ; $0D:FB78: AD B8 03    ;
CODE_0DFB7B:    STA $02                 ; $0D:FB7B: 85 02       ;
CODE_0DFB7D:    LDA $0202               ; $0D:FB7D: AD 02 02    ;
CODE_0DFB80:    STA $03                 ; $0D:FB80: 85 03       ;
CODE_0DFB82:    JSL CODE_00C000         ; $0D:FB82: 22 00 C0 00 ;
CODE_0DFB86:    LDA $06D5               ; $0D:FB86: AD D5 06    ;
CODE_0DFB89:    AND #$07                ; $0D:FB89: 29 07       ;
CODE_0DFB8B:    TAX                     ; $0D:FB8B: AA          ;
CODE_0DFB8C:    LDA $0256               ; $0D:FB8C: AD 56 02    ;
CODE_0DFB8F:    STA $04                 ; $0D:FB8F: 85 04       ;
CODE_0DFB91:    LDY $0B45               ; $0D:FB91: AC 45 0B    ;
CODE_0DFB94:    LDA DATA_0DF62E,x       ; $0D:FB94: BD 2E F6    ;
CODE_0DFB97:    STA $00                 ; $0D:FB97: 85 00       ;
CODE_0DFB99:    LDA DATA_0DF62E+1,x     ; $0D:FB99: BD 2F F6    ;
CODE_0DFB9C:    JSR CODE_0DF2FE         ; $0D:FB9C: 20 FE F2    ;
CODE_0DFB9F:    DEC $07                 ; $0D:FB9F: C6 07       ;
CODE_0DFBA1:    BNE CODE_0DFB94         ; $0D:FBA1: D0 F1       ;
CODE_0DFBA3:    LDA $05                 ; $0D:FBA3: A5 05       ;
CODE_0DFBA5:    CMP #$F8                ; $0D:FBA5: C9 F8       ;
CODE_0DFBA7:    BCC CODE_0DFBB7         ; $0D:FBA7: 90 0E       ;
CODE_0DFBA9:    LDA #$01                ; $0D:FBA9: A9 01       ;
CODE_0DFBAB:    STA $0CD0               ; $0D:FBAB: 8D D0 0C    ;
CODE_0DFBAE:    STA $0CD8               ; $0D:FBAE: 8D D8 0C    ;
CODE_0DFBB1:    STA $0CE0               ; $0D:FBB1: 8D E0 0C    ;
CODE_0DFBB4:    STA $0CE8               ; $0D:FBB4: 8D E8 0C    ;
CODE_0DFBB7:    RTS                     ; $0D:FBB7: 60          ;

CODE_0DFBB8:    LDA $28                 ; $0D:FBB8: A5 28       ;
CODE_0DFBBA:    CMP #$03                ; $0D:FBBA: C9 03       ;
CODE_0DFBBC:    BEQ CODE_0DFC0C         ; $0D:FBBC: F0 4E       ;
CODE_0DFBBE:    CMP #$02                ; $0D:FBBE: C9 02       ;
CODE_0DFBC0:    BEQ CODE_0DFBFE         ; $0D:FBC0: F0 3C       ;
CODE_0DFBC2:    CMP #$01                ; $0D:FBC2: C9 01       ;
CODE_0DFBC4:    BNE CODE_0DFBD6         ; $0D:FBC4: D0 10       ;
CODE_0DFBC6:    LDA $0704               ; $0D:FBC6: AD 04 07    ;
CODE_0DFBC9:    BNE CODE_0DFC17         ; $0D:FBC9: D0 4C       ;
CODE_0DFBCB:    LDY #$06                ; $0D:FBCB: A0 06       ;
CODE_0DFBCD:    LDA $0714               ; $0D:FBCD: AD 14 07    ;
CODE_0DFBD0:    BNE CODE_0DFBF4         ; $0D:FBD0: D0 22       ;
CODE_0DFBD2:    LDY #$00                ; $0D:FBD2: A0 00       ;
CODE_0DFBD4:    BRA CODE_0DFBF4         ; $0D:FBD4: 80 1E       ;

CODE_0DFBD6:    LDY #$06                ; $0D:FBD6: A0 06       ;
CODE_0DFBD8:    LDA $0714               ; $0D:FBD8: AD 14 07    ;
CODE_0DFBDB:    BNE CODE_0DFBF4         ; $0D:FBDB: D0 17       ;
CODE_0DFBDD:    LDY #$02                ; $0D:FBDD: A0 02       ;
CODE_0DFBDF:    LDA $5D                 ; $0D:FBDF: A5 5D       ;
CODE_0DFBE1:    ORA $0C                 ; $0D:FBE1: 05 0C       ;
CODE_0DFBE3:    BEQ CODE_0DFBF4         ; $0D:FBE3: F0 0F       ;
CODE_0DFBE5:    LDA $0700               ; $0D:FBE5: AD 00 07    ;
CODE_0DFBE8:    CMP #$09                ; $0D:FBE8: C9 09       ;
CODE_0DFBEA:    BCC CODE_0DFC05         ; $0D:FBEA: 90 19       ;
CODE_0DFBEC:    LDA $46                 ; $0D:FBEC: A5 46       ;
CODE_0DFBEE:    AND $0202               ; $0D:FBEE: 2D 02 02    ;
CODE_0DFBF1:    BNE CODE_0DFC05         ; $0D:FBF1: D0 12       ;
CODE_0DFBF3:    INY                     ; $0D:FBF3: C8          ;
CODE_0DFBF4:    JSR CODE_0DFC57         ; $0D:FBF4: 20 57 FC    ;
CODE_0DFBF7:    STZ $070D               ; $0D:FBF7: 9C 0D 07    ;
CODE_0DFBFA:    LDA DATA_0DF61E,y       ; $0D:FBFA: B9 1E F6    ;
CODE_0DFBFD:    RTS                     ; $0D:FBFD: 60          ;

CODE_0DFBFE:    LDY #$04                ; $0D:FBFE: A0 04       ;
CODE_0DFC00:    JSR CODE_0DFC57         ; $0D:FC00: 20 57 FC    ;
CODE_0DFC03:    BRA CODE_0DFC29         ; $0D:FC03: 80 24       ;

CODE_0DFC05:    LDY #$04                ; $0D:FC05: A0 04       ;
CODE_0DFC07:    JSR CODE_0DFC57         ; $0D:FC07: 20 57 FC    ;
CODE_0DFC0A:    BRA CODE_0DFC2F         ; $0D:FC0A: 80 23       ;

CODE_0DFC0C:    LDY #$05                ; $0D:FC0C: A0 05       ;
CODE_0DFC0E:    LDA $A0                 ; $0D:FC0E: A5 A0       ;
CODE_0DFC10:    BEQ CODE_0DFBF4         ; $0D:FC10: F0 E2       ;
CODE_0DFC12:    JSR CODE_0DFC57         ; $0D:FC12: 20 57 FC    ;
CODE_0DFC15:    BRA CODE_0DFC33         ; $0D:FC15: 80 1C       ;

CODE_0DFC17:    LDY #$01                ; $0D:FC17: A0 01       ;
CODE_0DFC19:    JSR CODE_0DFC57         ; $0D:FC19: 20 57 FC    ;
CODE_0DFC1C:    LDA $078A               ; $0D:FC1C: AD 8A 07    ;
CODE_0DFC1F:    ORA $070D               ; $0D:FC1F: 0D 0D 07    ;
CODE_0DFC22:    BNE CODE_0DFC2F         ; $0D:FC22: D0 0B       ;
CODE_0DFC24:    LDA $0A                 ; $0D:FC24: A5 0A       ;
CODE_0DFC26:    ASL A                   ; $0D:FC26: 0A          ;
CODE_0DFC27:    BCS CODE_0DFC2F         ; $0D:FC27: B0 06       ;
CODE_0DFC29:    LDA $070D               ; $0D:FC29: AD 0D 07    ;
CODE_0DFC2C:    JMP CODE_0DFC96         ; $0D:FC2C: 4C 96 FC    ;

CODE_0DFC2F:    LDA #$03                ; $0D:FC2F: A9 03       ;
CODE_0DFC31:    BRA CODE_0DFC35         ; $0D:FC31: 80 02       ;

CODE_0DFC33:    LDA #$02                ; $0D:FC33: A9 02       ;
CODE_0DFC35:    STA $00                 ; $0D:FC35: 85 00       ;
CODE_0DFC37:    JSR CODE_0DFC29         ; $0D:FC37: 20 29 FC    ;
CODE_0DFC3A:    PHA                     ; $0D:FC3A: 48          ;
CODE_0DFC3B:    LDA $0789               ; $0D:FC3B: AD 89 07    ;
CODE_0DFC3E:    BNE CODE_0DFC55         ; $0D:FC3E: D0 15       ;
CODE_0DFC40:    LDA $070C               ; $0D:FC40: AD 0C 07    ;
CODE_0DFC43:    STA $0789               ; $0D:FC43: 8D 89 07    ;
CODE_0DFC46:    LDA $070D               ; $0D:FC46: AD 0D 07    ;
CODE_0DFC49:    CLC                     ; $0D:FC49: 18          ;
CODE_0DFC4A:    ADC #$01                ; $0D:FC4A: 69 01       ;
CODE_0DFC4C:    CMP $00                 ; $0D:FC4C: C5 00       ;
CODE_0DFC4E:    BCC CODE_0DFC52         ; $0D:FC4E: 90 02       ;
CODE_0DFC50:    LDA #$00                ; $0D:FC50: A9 00       ;
CODE_0DFC52:    STA $070D               ; $0D:FC52: 8D 0D 07    ;
CODE_0DFC55:    PLA                     ; $0D:FC55: 68          ;
CODE_0DFC56:    RTS                     ; $0D:FC56: 60          ;

CODE_0DFC57:    LDA $0754               ; $0D:FC57: AD 54 07    ;
CODE_0DFC5A:    BEQ CODE_0DFC61         ; $0D:FC5A: F0 05       ;
CODE_0DFC5C:    TYA                     ; $0D:FC5C: 98          ;
CODE_0DFC5D:    CLC                     ; $0D:FC5D: 18          ;
CODE_0DFC5E:    ADC #$08                ; $0D:FC5E: 69 08       ;
CODE_0DFC60:    TAY                     ; $0D:FC60: A8          ;
CODE_0DFC61:    RTS                     ; $0D:FC61: 60          ;

DATA_0DFC62:        db $00,$01,$00,$01,$00,$01,$02,$00
                    db $01,$02,$02,$00,$02,$00,$02,$00
                    db $02,$00,$02,$00

CODE_0DFC76:    LDY $070D               ; $0D:FC76: AC 0D 07    ;
CODE_0DFC79:    LDA $09                 ; $0D:FC79: A5 09       ;
CODE_0DFC7B:    AND #$03                ; $0D:FC7B: 29 03       ;
CODE_0DFC7D:    BNE CODE_0DFC8C         ; $0D:FC7D: D0 0D       ;
CODE_0DFC7F:    INY                     ; $0D:FC7F: C8          ;
CODE_0DFC80:    CPY #$0A                ; $0D:FC80: C0 0A       ;
CODE_0DFC82:    BCC CODE_0DFC89         ; $0D:FC82: 90 05       ;
CODE_0DFC84:    LDY #$00                ; $0D:FC84: A0 00       ;
CODE_0DFC86:    STY $070B               ; $0D:FC86: 8C 0B 07    ;
CODE_0DFC89:    STY $070D               ; $0D:FC89: 8C 0D 07    ;
CODE_0DFC8C:    LDA $0754               ; $0D:FC8C: AD 54 07    ;
CODE_0DFC8F:    BNE CODE_0DFC9D         ; $0D:FC8F: D0 0C       ;
CODE_0DFC91:    LDA DATA_0DFC62,y       ; $0D:FC91: B9 62 FC    ;
CODE_0DFC94:    LDY #$0F                ; $0D:FC94: A0 0F       ;
CODE_0DFC96:    ASL A                   ; $0D:FC96: 0A          ;
CODE_0DFC97:    ASL A                   ; $0D:FC97: 0A          ;
CODE_0DFC98:    ASL A                   ; $0D:FC98: 0A          ;
CODE_0DFC99:    ADC DATA_0DF61E,y       ; $0D:FC99: 79 1E F6    ;
CODE_0DFC9C:    RTS                     ; $0D:FC9C: 60          ;

CODE_0DFC9D:    TYA                     ; $0D:FC9D: 98          ;
CODE_0DFC9E:    CLC                     ; $0D:FC9E: 18          ;
CODE_0DFC9F:    ADC #$0A                ; $0D:FC9F: 69 0A       ;
CODE_0DFCA1:    TAX                     ; $0D:FCA1: AA          ;
CODE_0DFCA2:    LDY #$09                ; $0D:FCA2: A0 09       ;
CODE_0DFCA4:    LDA DATA_0DFC62,x       ; $0D:FCA4: BD 62 FC    ;
CODE_0DFCA7:    BNE CODE_0DFCAB         ; $0D:FCA7: D0 02       ;
CODE_0DFCA9:    LDY #$01                ; $0D:FCA9: A0 01       ;
CODE_0DFCAB:    LDA DATA_0DF61E,y       ; $0D:FCAB: B9 1E F6    ;
CODE_0DFCAE:    RTS                     ; $0D:FCAE: 60          ;

CODE_0DFCAF:    LDY $0B45               ; $0D:FCAF: AC 45 0B    ;
CODE_0DFCB2:    LDA $0F                 ; $0D:FCB2: A5 0F       ;
CODE_0DFCB4:    CMP #$0B                ; $0D:FCB4: C9 0B       ;
CODE_0DFCB6:    BEQ CODE_0DFCCB         ; $0D:FCB6: F0 13       ;
CODE_0DFCB8:    LDA $06D5               ; $0D:FCB8: AD D5 06    ;
CODE_0DFCBB:    CMP #$50                ; $0D:FCBB: C9 50       ;
CODE_0DFCBD:    BEQ CODE_0DFCCB         ; $0D:FCBD: F0 0C       ;
CODE_0DFCBF:    CMP #$B8                ; $0D:FCBF: C9 B8       ;
CODE_0DFCC1:    BEQ CODE_0DFCCB         ; $0D:FCC1: F0 08       ;
CODE_0DFCC3:    CMP #$C0                ; $0D:FCC3: C9 C0       ;
CODE_0DFCC5:    BEQ CODE_0DFCCB         ; $0D:FCC5: F0 04       ;
CODE_0DFCC7:    CMP #$C8                ; $0D:FCC7: C9 C8       ;
CODE_0DFCC9:    BNE CODE_0DFCCB         ; $0D:FCC9: D0 00       ;
CODE_0DFCCB:    RTS                     ; $0D:FCCB: 60          ;

CODE_0DFCCC:    LDA $0E4E               ; $0D:FCCC: AD 4E 0E    ;
CODE_0DFCCF:    BEQ CODE_0DFD28         ; $0D:FCCF: F0 57       ;
CODE_0DFCD1:    LDX #$00                ; $0D:FCD1: A2 00       ;
CODE_0DFCD3:    LDA $08D0,x             ; $0D:FCD3: BD D0 08    ;
CODE_0DFCD6:    STA $09E0,x             ; $0D:FCD6: 9D E0 09    ;
CODE_0DFCD9:    INX                     ; $0D:FCD9: E8          ;
CODE_0DFCDA:    CPX #$20                ; $0D:FCDA: E0 20       ;
CODE_0DFCDC:    BNE CODE_0DFCD3         ; $0D:FCDC: D0 F5       ;
CODE_0DFCDE:    LDA #$F0                ; $0D:FCDE: A9 F0       ;
CODE_0DFCE0:    STA $08D1               ; $0D:FCE0: 8D D1 08    ;
CODE_0DFCE3:    STA $08D5               ; $0D:FCE3: 8D D5 08    ;
CODE_0DFCE6:    STA $08D9               ; $0D:FCE6: 8D D9 08    ;
CODE_0DFCE9:    STA $08DD               ; $0D:FCE9: 8D DD 08    ;
CODE_0DFCEC:    STA $08E1               ; $0D:FCEC: 8D E1 08    ;
CODE_0DFCEF:    STA $08E5               ; $0D:FCEF: 8D E5 08    ;
CODE_0DFCF2:    STA $08E9               ; $0D:FCF2: 8D E9 08    ;
CODE_0DFCF5:    STA $08ED               ; $0D:FCF5: 8D ED 08    ;
CODE_0DFCF8:    LDA $0CD0               ; $0D:FCF8: AD D0 0C    ;
CODE_0DFCFB:    STA $0DE0               ; $0D:FCFB: 8D E0 0D    ;
CODE_0DFCFE:    LDA $0CD4               ; $0D:FCFE: AD D4 0C    ;
CODE_0DFD01:    STA $0DE4               ; $0D:FD01: 8D E4 0D    ;
CODE_0DFD04:    LDA $0CD8               ; $0D:FD04: AD D8 0C    ;
CODE_0DFD07:    STA $0DE8               ; $0D:FD07: 8D E8 0D    ;
CODE_0DFD0A:    LDA $0CDC               ; $0D:FD0A: AD DC 0C    ;
CODE_0DFD0D:    STA $0DEC               ; $0D:FD0D: 8D EC 0D    ;
CODE_0DFD10:    LDA $0CE0               ; $0D:FD10: AD E0 0C    ;
CODE_0DFD13:    STA $0DF0               ; $0D:FD13: 8D F0 0D    ;
CODE_0DFD16:    LDA $0CE4               ; $0D:FD16: AD E4 0C    ;
CODE_0DFD19:    STA $0DF4               ; $0D:FD19: 8D F4 0D    ;
CODE_0DFD1C:    LDA $0CE8               ; $0D:FD1C: AD E8 0C    ;
CODE_0DFD1F:    STA $0DF8               ; $0D:FD1F: 8D F8 0D    ;
CODE_0DFD22:    LDA $0CEC               ; $0D:FD22: AD EC 0C    ;
CODE_0DFD25:    STA $0DFC               ; $0D:FD25: 8D FC 0D    ;
CODE_0DFD28:    RTS                     ; $0D:FD28: 60          ;

CODE_0DFD29:    LDX #$00                ; $0D:FD29: A2 00       ;
CODE_0DFD2B:    LDY #$00                ; $0D:FD2B: A0 00       ;
CODE_0DFD2D:    JMP CODE_0DFD40         ; $0D:FD2D: 4C 40 FD    ;

CODE_0DFD30:    LDY #$01                ; $0D:FD30: A0 01       ;
CODE_0DFD32:    JSR CODE_0DFDDA         ; $0D:FD32: 20 DA FD    ;
CODE_0DFD35:    LDY #$03                ; $0D:FD35: A0 03       ;
CODE_0DFD37:    BRA CODE_0DFD40         ; $0D:FD37: 80 07       ;

CODE_0DFD39:    LDY #$00                ; $0D:FD39: A0 00       ;
CODE_0DFD3B:    JSR CODE_0DFDDA         ; $0D:FD3B: 20 DA FD    ;
CODE_0DFD3E:    LDY #$02                ; $0D:FD3E: A0 02       ;
CODE_0DFD40:    JSR CODE_0DFD6E         ; $0D:FD40: 20 6E FD    ;
CODE_0DFD43:    LDX $9E                 ; $0D:FD43: A6 9E       ;
CODE_0DFD45:    RTS                     ; $0D:FD45: 60          ;

CODE_0DFD46:    LDY #$02                ; $0D:FD46: A0 02       ;
CODE_0DFD48:    JSR CODE_0DFDDA         ; $0D:FD48: 20 DA FD    ;
CODE_0DFD4B:    LDY #$06                ; $0D:FD4B: A0 06       ;
CODE_0DFD4D:    BRA CODE_0DFD40         ; $0D:FD4D: 80 F1       ;

CODE_0DFD4F:    LDA #$01                ; $0D:FD4F: A9 01       ;
CODE_0DFD51:    LDY #$01                ; $0D:FD51: A0 01       ;
CODE_0DFD53:    JMP CODE_0DFD62         ; $0D:FD53: 4C 62 FD    ;

CODE_0DFD56:    LDA #$0D                ; $0D:FD56: A9 0D       ;
CODE_0DFD58:    LDY #$04                ; $0D:FD58: A0 04       ;
CODE_0DFD5A:    JSR CODE_0DFD62         ; $0D:FD5A: 20 62 FD    ;
CODE_0DFD5D:    INX                     ; $0D:FD5D: E8          ;
CODE_0DFD5E:    INX                     ; $0D:FD5E: E8          ;
CODE_0DFD5F:    LDA #$0D                ; $0D:FD5F: A9 0D       ;
CODE_0DFD61:    INY                     ; $0D:FD61: C8          ;
CODE_0DFD62:    STX $00                 ; $0D:FD62: 86 00       ;
CODE_0DFD64:    CLC                     ; $0D:FD64: 18          ;
CODE_0DFD65:    ADC $00                 ; $0D:FD65: 65 00       ;
CODE_0DFD67:    TAX                     ; $0D:FD67: AA          ;
CODE_0DFD68:    JSR CODE_0DFD6E         ; $0D:FD68: 20 6E FD    ;
CODE_0DFD6B:    LDX $9E                 ; $0D:FD6B: A6 9E       ;
CODE_0DFD6D:    RTS                     ; $0D:FD6D: 60          ;

CODE_0DFD6E:    LDA $0237,x             ; $0D:FD6E: BD 37 02    ;
CODE_0DFD71:    STA $03B8,y             ; $0D:FD71: 99 B8 03    ;
CODE_0DFD74:    LDA $0E                 ; $0D:FD74: A5 0E       ;
CODE_0DFD76:    BEQ CODE_0DFD84         ; $0D:FD76: F0 0C       ;
CODE_0DFD78:    LDA $0219               ; $0D:FD78: AD 19 02    ;
CODE_0DFD7B:    BNE CODE_0DFD84         ; $0D:FD7B: D0 07       ;
CODE_0DFD7D:    LDA #$28                ; $0D:FD7D: A9 28       ;
CODE_0DFD7F:    STA $0219               ; $0D:FD7F: 8D 19 02    ;
CODE_0DFD82:    BRA CODE_0DFD96         ; $0D:FD82: 80 12       ;

CODE_0DFD84:    LDA $0219,x             ; $0D:FD84: BD 19 02    ;
CODE_0DFD87:    SEC                     ; $0D:FD87: 38          ;
CODE_0DFD88:    SBC $071C               ; $0D:FD88: ED 1C 07    ;
CODE_0DFD8B:    STA $03AD,y             ; $0D:FD8B: 99 AD 03    ;
CODE_0DFD8E:    LDA $78,x               ; $0D:FD8E: B5 78       ;
CODE_0DFD90:    SBC $071A               ; $0D:FD90: ED 1A 07    ;
CODE_0DFD93:    STA $03C1,y             ; $0D:FD93: 99 C1 03    ;
CODE_0DFD96:    PHY                     ; $0D:FD96: 5A          ;
CODE_0DFD97:    TYA                     ; $0D:FD97: 98          ;
CODE_0DFD98:    ASL A                   ; $0D:FD98: 0A          ;
CODE_0DFD99:    TAY                     ; $0D:FD99: A8          ;
CODE_0DFD9A:    LDA $0219,x             ; $0D:FD9A: BD 19 02    ;
CODE_0DFD9D:    STA $E4                 ; $0D:FD9D: 85 E4       ;
CODE_0DFD9F:    LDA $0078,x             ; $0D:FD9F: BD 78 00    ;
CODE_0DFDA2:    STA $E5                 ; $0D:FDA2: 85 E5       ;
CODE_0DFDA4:    REP #$20                ; $0D:FDA4: C2 20       ;
CODE_0DFDA6:    LDA $E4                 ; $0D:FDA6: A5 E4       ;
CODE_0DFDA8:    SEC                     ; $0D:FDA8: 38          ;
CODE_0DFDA9:    SBC $42                 ; $0D:FDA9: E5 42       ;
CODE_0DFDAB:    STA $0E87,y             ; $0D:FDAB: 99 87 0E    ;
CODE_0DFDAE:    SEP #$20                ; $0D:FDAE: E2 20       ;
CODE_0DFDB0:    PLY                     ; $0D:FDB0: 7A          ;
CODE_0DFDB1:    RTS                     ; $0D:FDB1: 60          ;

CODE_0DFDB2:    LDX #$00                ; $0D:FDB2: A2 00       ;
CODE_0DFDB4:    LDY #$00                ; $0D:FDB4: A0 00       ;
CODE_0DFDB6:    JMP CODE_0DFDF1         ; $0D:FDB6: 4C F1 FD    ;

CODE_0DFDB9:    LDY #$00                ; $0D:FDB9: A0 00       ;
CODE_0DFDBB:    JSR CODE_0DFDDA         ; $0D:FDBB: 20 DA FD    ;
CODE_0DFDBE:    LDY #$02                ; $0D:FDBE: A0 02       ;
CODE_0DFDC0:    JMP CODE_0DFDF1         ; $0D:FDC0: 4C F1 FD    ;

CODE_0DFDC3:    LDY #$01                ; $0D:FDC3: A0 01       ;
CODE_0DFDC5:    JSR CODE_0DFDDA         ; $0D:FDC5: 20 DA FD    ;
CODE_0DFDC8:    LDY #$03                ; $0D:FDC8: A0 03       ;
CODE_0DFDCA:    JMP CODE_0DFDF1         ; $0D:FDCA: 4C F1 FD    ;

CODE_0DFDCD:    LDY #$02                ; $0D:FDCD: A0 02       ;
CODE_0DFDCF:    JSR CODE_0DFDDA         ; $0D:FDCF: 20 DA FD    ;
CODE_0DFDD2:    LDY #$06                ; $0D:FDD2: A0 06       ;
CODE_0DFDD4:    JMP CODE_0DFDF1         ; $0D:FDD4: 4C F1 FD    ;

DATA_0DFDD7:        db $0B,$1A,$11

CODE_0DFDDA:    TXA                     ; $0D:FDDA: 8A          ;
CODE_0DFDDB:    CLC                     ; $0D:FDDB: 18          ;
CODE_0DFDDC:    ADC DATA_0DFDD7,y       ; $0D:FDDC: 79 D7 FD    ;
CODE_0DFDDF:    TAX                     ; $0D:FDDF: AA          ;
CODE_0DFDE0:    RTS                     ; $0D:FDE0: 60          ;

CODE_0DFDE1:    LDA #$01                ; $0D:FDE1: A9 01       ;
CODE_0DFDE3:    LDY #$01                ; $0D:FDE3: A0 01       ;
CODE_0DFDE5:    BRA CODE_0DFDEB         ; $0D:FDE5: 80 04       ;

CODE_0DFDE7:    LDA #$0D                ; $0D:FDE7: A9 0D       ;
CODE_0DFDE9:    LDY #$04                ; $0D:FDE9: A0 04       ;
CODE_0DFDEB:    STX $00                 ; $0D:FDEB: 86 00       ;
CODE_0DFDED:    CLC                     ; $0D:FDED: 18          ;
CODE_0DFDEE:    ADC $00                 ; $0D:FDEE: 65 00       ;
CODE_0DFDF0:    TAX                     ; $0D:FDF0: AA          ;
CODE_0DFDF1:    TYA                     ; $0D:FDF1: 98          ;
CODE_0DFDF2:    PHA                     ; $0D:FDF2: 48          ;
CODE_0DFDF3:    JSR CODE_0DFE15         ; $0D:FDF3: 20 15 FE    ;
CODE_0DFDF6:    ASL A                   ; $0D:FDF6: 0A          ;
CODE_0DFDF7:    ASL A                   ; $0D:FDF7: 0A          ;
CODE_0DFDF8:    ASL A                   ; $0D:FDF8: 0A          ;
CODE_0DFDF9:    ASL A                   ; $0D:FDF9: 0A          ;
CODE_0DFDFA:    ORA $00                 ; $0D:FDFA: 05 00       ;
CODE_0DFDFC:    STA $00                 ; $0D:FDFC: 85 00       ;
CODE_0DFDFE:    PLA                     ; $0D:FDFE: 68          ;
CODE_0DFDFF:    TAY                     ; $0D:FDFF: A8          ;
CODE_0DFE00:    LDA $00                 ; $0D:FE00: A5 00       ;
CODE_0DFE02:    STA $03D0,y             ; $0D:FE02: 99 D0 03    ;
CODE_0DFE05:    LSR A                   ; $0D:FE05: 4A          ;
CODE_0DFE06:    LSR A                   ; $0D:FE06: 4A          ;
CODE_0DFE07:    PHA                     ; $0D:FE07: 48          ;
CODE_0DFE08:    AND #$01                ; $0D:FE08: 29 01       ;
CODE_0DFE0A:    STA $0E08,y             ; $0D:FE0A: 99 08 0E    ;
CODE_0DFE0D:    PLA                     ; $0D:FE0D: 68          ;
CODE_0DFE0E:    LSR A                   ; $0D:FE0E: 4A          ;
CODE_0DFE0F:    STA $0E00,y             ; $0D:FE0F: 99 00 0E    ;
CODE_0DFE12:    LDX $9E                 ; $0D:FE12: A6 9E       ;
CODE_0DFE14:    RTS                     ; $0D:FE14: 60          ;

CODE_0DFE15:    JSR CODE_0DFE34         ; $0D:FE15: 20 34 FE    ;
CODE_0DFE18:    LSR A                   ; $0D:FE18: 4A          ;
CODE_0DFE19:    LSR A                   ; $0D:FE19: 4A          ;
CODE_0DFE1A:    LSR A                   ; $0D:FE1A: 4A          ;
CODE_0DFE1B:    LSR A                   ; $0D:FE1B: 4A          ;
CODE_0DFE1C:    STA $00                 ; $0D:FE1C: 85 00       ;
CODE_0DFE1E:    JMP CODE_0DFE78         ; $0D:FE1E: 4C 78 FE    ;

DATA_0DFE21:        db $7F,$3F,$1F,$0F,$07,$03,$01,$00
                    db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF

DATA_0DFE31:        db $07,$0F,$07

CODE_0DFE34:    STX $04                 ; $0D:FE34: 86 04       ;
CODE_0DFE36:    LDY #$01                ; $0D:FE36: A0 01       ;
CODE_0DFE38:    LDA $071C,y             ; $0D:FE38: B9 1C 07    ;
CODE_0DFE3B:    SEC                     ; $0D:FE3B: 38          ;
CODE_0DFE3C:    SBC $0219,x             ; $0D:FE3C: FD 19 02    ;
CODE_0DFE3F:    STA $07                 ; $0D:FE3F: 85 07       ;
CODE_0DFE41:    LDA $071A,y             ; $0D:FE41: B9 1A 07    ;
CODE_0DFE44:    SBC $78,x               ; $0D:FE44: F5 78       ;
CODE_0DFE46:    LDX DATA_0DFE31,y       ; $0D:FE46: BE 31 FE    ;
CODE_0DFE49:    CMP #$00                ; $0D:FE49: C9 00       ;
CODE_0DFE4B:    BMI CODE_0DFE5D         ; $0D:FE4B: 30 10       ;
CODE_0DFE4D:    LDX DATA_0DFE31+1,y     ; $0D:FE4D: BE 32 FE    ;
CODE_0DFE50:    CMP #$01                ; $0D:FE50: C9 01       ;
CODE_0DFE52:    BPL CODE_0DFE5D         ; $0D:FE52: 10 09       ;
CODE_0DFE54:    LDA #$38                ; $0D:FE54: A9 38       ;
CODE_0DFE56:    STA $06                 ; $0D:FE56: 85 06       ;
CODE_0DFE58:    LDA #$08                ; $0D:FE58: A9 08       ;
CODE_0DFE5A:    JSR CODE_0DFEAD         ; $0D:FE5A: 20 AD FE    ;
CODE_0DFE5D:    LDA DATA_0DFE21,x       ; $0D:FE5D: BD 21 FE    ;
CODE_0DFE60:    LDX $04                 ; $0D:FE60: A6 04       ;
CODE_0DFE62:    CMP #$00                ; $0D:FE62: C9 00       ;
CODE_0DFE64:    BNE CODE_0DFE69         ; $0D:FE64: D0 03       ;
CODE_0DFE66:    DEY                     ; $0D:FE66: 88          ;
CODE_0DFE67:    BPL CODE_0DFE38         ; $0D:FE67: 10 CF       ;
CODE_0DFE69:    RTS                     ; $0D:FE69: 60          ;

DATA_0DFE6A:        db $00,$08,$0C,$0E,$0F,$07,$03,$01 ;
                    db $00 ;

DATA_0DFE73:        db $04,$00,$04 ;

DATA_0DFE76:        db $FF,$00 ;

CODE_0DFE78:    STX $04                 ; $0D:FE78: 86 04       ;
CODE_0DFE7A:    LDY #$01                ; $0D:FE7A: A0 01       ;
CODE_0DFE7C:    LDA DATA_0DFE76,y       ; $0D:FE7C: B9 76 FE    ;
CODE_0DFE7F:    SEC                     ; $0D:FE7F: 38          ;
CODE_0DFE80:    SBC $0237,x             ; $0D:FE80: FD 37 02    ;
CODE_0DFE83:    STA $07                 ; $0D:FE83: 85 07       ;
CODE_0DFE85:    LDA #$01                ; $0D:FE85: A9 01       ;
CODE_0DFE87:    SBC $BB,x               ; $0D:FE87: F5 BB       ;
CODE_0DFE89:    LDX DATA_0DFE73,y       ; $0D:FE89: BE 73 FE    ;
CODE_0DFE8C:    CMP #$00                ; $0D:FE8C: C9 00       ;
CODE_0DFE8E:    BMI CODE_0DFEA0         ; $0D:FE8E: 30 10       ;
CODE_0DFE90:    LDX DATA_0DFE73+1,y     ; $0D:FE90: BE 74 FE    ;
CODE_0DFE93:    CMP #$01                ; $0D:FE93: C9 01       ;
CODE_0DFE95:    BPL CODE_0DFEA0         ; $0D:FE95: 10 09       ;
CODE_0DFE97:    LDA #$20                ; $0D:FE97: A9 20       ;
CODE_0DFE99:    STA $06                 ; $0D:FE99: 85 06       ;
CODE_0DFE9B:    LDA #$04                ; $0D:FE9B: A9 04       ;
CODE_0DFE9D:    JSR CODE_0DFEAD         ; $0D:FE9D: 20 AD FE    ;
CODE_0DFEA0:    LDA DATA_0DFE6A,x       ; $0D:FEA0: BD 6A FE    ;
CODE_0DFEA3:    LDX $04                 ; $0D:FEA3: A6 04       ;
CODE_0DFEA5:    CMP #$00                ; $0D:FEA5: C9 00       ;
CODE_0DFEA7:    BNE CODE_0DFEAC         ; $0D:FEA7: D0 03       ;
CODE_0DFEA9:    DEY                     ; $0D:FEA9: 88          ;
CODE_0DFEAA:    BPL CODE_0DFE7C         ; $0D:FEAA: 10 D0       ;
CODE_0DFEAC:    RTS                     ; $0D:FEAC: 60          ;

CODE_0DFEAD:    STA $05                 ; $0D:FEAD: 85 05       ;
CODE_0DFEAF:    LDA $07                 ; $0D:FEAF: A5 07       ;
CODE_0DFEB1:    CMP $06                 ; $0D:FEB1: C5 06       ;
CODE_0DFEB3:    BCS CODE_0DFEC1         ; $0D:FEB3: B0 0C       ;
CODE_0DFEB5:    LSR A                   ; $0D:FEB5: 4A          ;
CODE_0DFEB6:    LSR A                   ; $0D:FEB6: 4A          ;
CODE_0DFEB7:    LSR A                   ; $0D:FEB7: 4A          ;
CODE_0DFEB8:    AND #$07                ; $0D:FEB8: 29 07       ;
CODE_0DFEBA:    CPY #$01                ; $0D:FEBA: C0 01       ;
CODE_0DFEBC:    BCS CODE_0DFEC0         ; $0D:FEBC: B0 02       ;
CODE_0DFEBE:    ADC $05                 ; $0D:FEBE: 65 05       ;
CODE_0DFEC0:    TAX                     ; $0D:FEC0: AA          ;
CODE_0DFEC1:    RTS                     ; $0D:FEC1: 60          ;

CODE_0DFEC2:    LDA $79,x               ; $0D:FEC2: B5 79       ;
CODE_0DFEC4:    STA $0E15               ; $0D:FEC4: 8D 15 0E    ;
CODE_0DFEC7:    LDA $021A,x             ; $0D:FEC7: BD 1A 02    ;
CODE_0DFECA:    STA $0E14               ; $0D:FECA: 8D 14 0E    ;
CODE_0DFECD:    RTS                     ; $0D:FECD: 60          ;

CODE_0DFECE:    LDA $0E17               ; $0D:FECE: AD 17 0E    ;
CODE_0DFED1:    STA $0E15               ; $0D:FED1: 8D 15 0E    ;
CODE_0DFED4:    LDA $0E16               ; $0D:FED4: AD 16 0E    ;
CODE_0DFED7:    STA $0E14               ; $0D:FED7: 8D 14 0E    ;
CODE_0DFEDA:    RTS                     ; $0D:FEDA: 60          ;

CODE_0DFEDB:    LDA #$06                ; $0D:FEDB: A9 06       ;
CODE_0DFEDD:    STA $04                 ; $0D:FEDD: 85 04       ;
CODE_0DFEDF:    REP #$20                ; $0D:FEDF: C2 20       ;
CODE_0DFEE1:    LDA $0E14               ; $0D:FEE1: AD 14 0E    ;
CODE_0DFEE4:    SEC                     ; $0D:FEE4: 38          ;
CODE_0DFEE5:    SBC $42                 ; $0D:FEE5: E5 42       ;
CODE_0DFEE7:    STA $0E12               ; $0D:FEE7: 8D 12 0E    ;
CODE_0DFEEA:    SEP #$20                ; $0D:FEEA: E2 20       ;
CODE_0DFEEC:    LDA $0E13               ; $0D:FEEC: AD 13 0E    ;
CODE_0DFEEF:    BNE CODE_0DFEF5         ; $0D:FEEF: D0 04       ;
CODE_0DFEF1:    LDA #$00                ; $0D:FEF1: A9 00       ;
CODE_0DFEF3:    BRA CODE_0DFEF7         ; $0D:FEF3: 80 02       ;

CODE_0DFEF5:    LDA #$01                ; $0D:FEF5: A9 01       ;
CODE_0DFEF7:    STA $0D00,y             ; $0D:FEF7: 99 00 0D    ;
CODE_0DFEFA:    RTS                     ; $0D:FEFA: 60          ;

CODE_0DFEFB:    REP #$20                ; $0D:FEFB: C2 20       ;
CODE_0DFEFD:    LDA $0E14               ; $0D:FEFD: AD 14 0E    ;
CODE_0DFF00:    SEC                     ; $0D:FF00: 38          ;
CODE_0DFF01:    SBC $42                 ; $0D:FF01: E5 42       ;
CODE_0DFF03:    STA $0E12               ; $0D:FF03: 8D 12 0E    ;
CODE_0DFF06:    SEP #$20                ; $0D:FF06: E2 20       ;
CODE_0DFF08:    LDA $0E13               ; $0D:FF08: AD 13 0E    ;
CODE_0DFF0B:    BNE CODE_0DFF11         ; $0D:FF0B: D0 04       ;
CODE_0DFF0D:    LDA #$00                ; $0D:FF0D: A9 00       ;
CODE_0DFF0F:    BRA CODE_0DFF13         ; $0D:FF0F: 80 02       ;

CODE_0DFF11:    LDA #$01                ; $0D:FF11: A9 01       ;
CODE_0DFF13:    STA $0D10,y             ; $0D:FF13: 99 10 0D    ;
CODE_0DFF16:    STA $0D08,y             ; $0D:FF16: 99 08 0D    ;
CODE_0DFF19:    STA $0D00,y             ; $0D:FF19: 99 00 0D    ;
CODE_0DFF1C:    RTS                     ; $0D:FF1C: 60          ;

CODE_0DFF1D:    REP #$20                ; $0D:FF1D: C2 20       ;
CODE_0DFF1F:    LDA $0E14               ; $0D:FF1F: AD 14 0E    ;
CODE_0DFF22:    SEC                     ; $0D:FF22: 38          ;
CODE_0DFF23:    SBC $42                 ; $0D:FF23: E5 42       ;
CODE_0DFF25:    STA $0E12               ; $0D:FF25: 8D 12 0E    ;
CODE_0DFF28:    SEP #$20                ; $0D:FF28: E2 20       ;
CODE_0DFF2A:    LDA $0E13               ; $0D:FF2A: AD 13 0E    ;
CODE_0DFF2D:    BNE CODE_0DFF33         ; $0D:FF2D: D0 04       ;
CODE_0DFF2F:    LDA #$00                ; $0D:FF2F: A9 00       ;
CODE_0DFF31:    BRA CODE_0DFF35         ; $0D:FF31: 80 02       ;

CODE_0DFF33:    LDA #$01                ; $0D:FF33: A9 01       ;
CODE_0DFF35:    STA $0C08,y             ; $0D:FF35: 99 08 0C    ;
CODE_0DFF38:    STA $0C00,y             ; $0D:FF38: 99 00 0C    ;
CODE_0DFF3B:    RTS                     ; $0D:FF3B: 60          ;

CODE_0DFF3C:    STA $0C00,y             ; $0D:FF3C: 99 00 0C    ;
CODE_0DFF3F:    STA $0C08,y             ; $0D:FF3F: 99 08 0C    ;
CODE_0DFF42:    RTS                     ; $0D:FF42: 60          ;

CODE_0DFF43:    REP #$20                ; $0D:FF43: C2 20       ;
CODE_0DFF45:    PLA                     ; $0D:FF45: 68          ;
CODE_0DFF46:    CLC                     ; $0D:FF46: 18          ;
CODE_0DFF47:    ADC $04                 ; $0D:FF47: 65 04       ;
CODE_0DFF49:    STA $04                 ; $0D:FF49: 85 04       ;
CODE_0DFF4B:    PHA                     ; $0D:FF4B: 48          ;
CODE_0DFF4C:    SEP #$20                ; $0D:FF4C: E2 20       ;
CODE_0DFF4E:    LDA #$01                ; $0D:FF4E: A9 01       ;
CODE_0DFF50:    RTS                     ; $0D:FF50: 60          ;

CODE_0DFF51:    REP #$20                ; $0D:FF51: C2 20       ;
CODE_0DFF53:    LDA $0E14               ; $0D:FF53: AD 14 0E    ;
CODE_0DFF56:    CLC                     ; $0D:FF56: 18          ;
CODE_0DFF57:    ADC #$0008              ; $0D:FF57: 69 08 00    ;
CODE_0DFF5A:    STA $0E14               ; $0D:FF5A: 8D 14 0E    ;
CODE_0DFF5D:    SEP #$20                ; $0D:FF5D: E2 20       ;
CODE_0DFF5F:    INY                     ; $0D:FF5F: C8          ;
CODE_0DFF60:    INY                     ; $0D:FF60: C8          ;
CODE_0DFF61:    INY                     ; $0D:FF61: C8          ;
CODE_0DFF62:    INY                     ; $0D:FF62: C8          ;
CODE_0DFF63:    RTS                     ; $0D:FF63: 60          ;

CODE_0DFF64:    LDA $03                 ; $0D:FF64: A5 03       ;
CODE_0DFF66:    LSR A                   ; $0D:FF66: 4A          ;
CODE_0DFF67:    LSR A                   ; $0D:FF67: 4A          ;
CODE_0DFF68:    LDA $00                 ; $0D:FF68: A5 00       ;
CODE_0DFF6A:    BCC CODE_0DFF78         ; $0D:FF6A: 90 0C       ;
CODE_0DFF6C:    STA $0806,y             ; $0D:FF6C: 99 06 08    ;
CODE_0DFF6F:    LDA $01                 ; $0D:FF6F: A5 01       ;
CODE_0DFF71:    STA $0802,y             ; $0D:FF71: 99 02 08    ;
CODE_0DFF74:    LDA #$40                ; $0D:FF74: A9 40       ;
CODE_0DFF76:    BNE CODE_0DFF82         ; $0D:FF76: D0 0A       ;
CODE_0DFF78:    STA $0802,y             ; $0D:FF78: 99 02 08    ;
CODE_0DFF7B:    LDA $01                 ; $0D:FF7B: A5 01       ;
CODE_0DFF7D:    STA $0806,y             ; $0D:FF7D: 99 06 08    ;
CODE_0DFF80:    LDA #$00                ; $0D:FF80: A9 00       ;
CODE_0DFF82:    ORA $04                 ; $0D:FF82: 05 04       ;
CODE_0DFF84:    STA $0803,y             ; $0D:FF84: 99 03 08    ;
CODE_0DFF87:    STA $0807,y             ; $0D:FF87: 99 07 08    ;
CODE_0DFF8A:    LDA $02                 ; $0D:FF8A: A5 02       ;
CODE_0DFF8C:    STA $0801,y             ; $0D:FF8C: 99 01 08    ;
CODE_0DFF8F:    STA $0805,y             ; $0D:FF8F: 99 05 08    ;
CODE_0DFF92:    LDA $05                 ; $0D:FF92: A5 05       ;
CODE_0DFF94:    STA $0800,y             ; $0D:FF94: 99 00 08    ;
CODE_0DFF97:    CLC                     ; $0D:FF97: 18          ;
CODE_0DFF98:    ADC #$08                ; $0D:FF98: 69 08       ;
CODE_0DFF9A:    STA $0804,y             ; $0D:FF9A: 99 04 08    ;
CODE_0DFF9D:    LDA $02                 ; $0D:FF9D: A5 02       ;
CODE_0DFF9F:    CLC                     ; $0D:FF9F: 18          ;
CODE_0DFFA0:    ADC #$08                ; $0D:FFA0: 69 08       ;
CODE_0DFFA2:    STA $02                 ; $0D:FFA2: 85 02       ;
CODE_0DFFA4:    TYA                     ; $0D:FFA4: 98          ;
CODE_0DFFA5:    CLC                     ; $0D:FFA5: 18          ;
CODE_0DFFA6:    ADC #$08                ; $0D:FFA6: 69 08       ;
CODE_0DFFA8:    TAY                     ; $0D:FFA8: A8          ;
CODE_0DFFA9:    INX                     ; $0D:FFA9: E8          ;
CODE_0DFFAA:    INX                     ; $0D:FFAA: E8          ;
CODE_0DFFAB:    RTS                     ; $0D:FFAB: 60          ;

CODE_0DFFAC:    LDA $03                 ; $0D:FFAC: A5 03       ;
CODE_0DFFAE:    LSR A                   ; $0D:FFAE: 4A          ;
CODE_0DFFAF:    LSR A                   ; $0D:FFAF: 4A          ;
CODE_0DFFB0:    LDA $00                 ; $0D:FFB0: A5 00       ;
CODE_0DFFB2:    BCC CODE_0DFFC0         ; $0D:FFB2: 90 0C       ;
CODE_0DFFB4:    STA $0906,y             ; $0D:FFB4: 99 06 09    ;
CODE_0DFFB7:    LDA $01                 ; $0D:FFB7: A5 01       ;
CODE_0DFFB9:    STA $0902,y             ; $0D:FFB9: 99 02 09    ;
CODE_0DFFBC:    LDA #$40                ; $0D:FFBC: A9 40       ;
CODE_0DFFBE:    BNE CODE_0DFFCA         ; $0D:FFBE: D0 0A       ;
CODE_0DFFC0:    STA $0902,y             ; $0D:FFC0: 99 02 09    ;
CODE_0DFFC3:    LDA $01                 ; $0D:FFC3: A5 01       ;
CODE_0DFFC5:    STA $0906,y             ; $0D:FFC5: 99 06 09    ;
CODE_0DFFC8:    LDA #$00                ; $0D:FFC8: A9 00       ;
CODE_0DFFCA:    ORA $04                 ; $0D:FFCA: 05 04       ;
CODE_0DFFCC:    STA $0903,y             ; $0D:FFCC: 99 03 09    ;
CODE_0DFFCF:    STA $0907,y             ; $0D:FFCF: 99 07 09    ;
CODE_0DFFD2:    LDA $02                 ; $0D:FFD2: A5 02       ;
CODE_0DFFD4:    STA $0901,y             ; $0D:FFD4: 99 01 09    ;
CODE_0DFFD7:    STA $0905,y             ; $0D:FFD7: 99 05 09    ;
CODE_0DFFDA:    LDA $05                 ; $0D:FFDA: A5 05       ;
CODE_0DFFDC:    STA $0900,y             ; $0D:FFDC: 99 00 09    ;
CODE_0DFFDF:    CLC                     ; $0D:FFDF: 18          ;
CODE_0DFFE0:    ADC #$08                ; $0D:FFE0: 69 08       ;
CODE_0DFFE2:    STA $0904,y             ; $0D:FFE2: 99 04 09    ;
CODE_0DFFE5:    LDA $02                 ; $0D:FFE5: A5 02       ;
CODE_0DFFE7:    CLC                     ; $0D:FFE7: 18          ;
CODE_0DFFE8:    ADC #$08                ; $0D:FFE8: 69 08       ;
CODE_0DFFEA:    STA $02                 ; $0D:FFEA: 85 02       ;
CODE_0DFFEC:    TYA                     ; $0D:FFEC: 98          ;
CODE_0DFFED:    CLC                     ; $0D:FFED: 18          ;
CODE_0DFFEE:    ADC #$08                ; $0D:FFEE: 69 08       ;
CODE_0DFFF0:    TAY                     ; $0D:FFF0: A8          ;
CODE_0DFFF1:    INX                     ; $0D:FFF1: E8          ;
CODE_0DFFF2:    INX                     ; $0D:FFF2: E8          ;
CODE_0DFFF3:    RTS                     ; $0D:FFF3: 60          ;

DATA_0DFFF4:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF
