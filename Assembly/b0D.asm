;Super Mario Bros. - The Lost Levels.

CODE_0D8000:        4C 0D 80      JMP CODE_0D800D           ;

CODE_0D8003:        4C 8D 81      JMP CODE_0D818D           ;

CODE_0D8006:        4C A0 83      JMP CODE_0D83A0           ;

CODE_0D8009:        5C 41 96 00   JML CODE_009641           ;

CODE_0D800D:        EA            NOP                       ;
CODE_0D800E:        EA            NOP                       ;
CODE_0D800F:        A9 AA         LDA #$AA                  ;
CODE_0D8011:        8F 00 20 70   STA $702000               ;
CODE_0D8015:        CF 00 00 70   CMP $700000               ;
CODE_0D8019:        D0 EE         BNE CODE_0D8009           ;
CODE_0D801B:        A9 55         LDA #$55                  ;
CODE_0D801D:        8F 00 20 70   STA $702000               ;
CODE_0D8021:        CF 00 00 70   CMP $700000               ;
CODE_0D8025:        D0 E2         BNE CODE_0D8009           ;
CODE_0D8027:        78            SEI                       ;
CODE_0D8028:        9C 00 42      STZ $4200                 ;
CODE_0D802B:        9C 0B 42      STZ $420B                 ;
CODE_0D802E:        9C 0C 42      STZ $420C                 ;
CODE_0D8031:        A9 80         LDA #$80                  ;
CODE_0D8033:        8D 00 21      STA $2100                 ;
CODE_0D8036:        4B            PHK                       ;
CODE_0D8037:        AB            PLB                       ;
CODE_0D8038:        22 00 80 0E   JSL CODE_0E8000           ;
CODE_0D803C:        22 AE 80 04   JSL CODE_0480AE           ;
CODE_0D8040:        20 1C 84      JSR CODE_0D841C           ;
CODE_0D8043:        9C 08 16      STZ $1608                 ;
CODE_0D8046:        9C 09 16      STZ $1609                 ;
CODE_0D8049:        9C 0F 16      STZ $160F                 ;
CODE_0D804C:        9C 0E 16      STZ $160E                 ;
CODE_0D804F:        9C 0A 16      STZ $160A                 ;
CODE_0D8052:        8D 0D 16      STA $160D                 ;
CODE_0D8055:        A9 01         LDA #$01                  ;
CODE_0D8057:        8D 0C 16      STA $160C                 ;
CODE_0D805A:        A9 81         LDA #$81                  ;
CODE_0D805C:        85 09         STA $09                   ;
CODE_0D805E:        8D 00 42      STA $4200                 ;
CODE_0D8061:        58            CLI                       ;
CODE_0D8062:        AD 54 01      LDA $0154                 ;
CODE_0D8065:        F0 FB         BEQ CODE_0D8062           ;
CODE_0D8067:        20 A8 96      JSR CODE_0D96A8           ;
CODE_0D806A:        AD B7 07      LDA $07B7                 ;
CODE_0D806D:        29 02         AND #$02                  ;
CODE_0D806F:        8D C7 07      STA $07C7                 ;
CODE_0D8072:        AD B8 07      LDA $07B8                 ;
CODE_0D8075:        29 02         AND #$02                  ;
CODE_0D8077:        4D C7 07      EOR $07C7                 ;
CODE_0D807A:        18            CLC                       ;
CODE_0D807B:        F0 01         BEQ CODE_0D807E           ;
CODE_0D807D:        38            SEC                       ;
CODE_0D807E:        6E B7 07      ROR $07B7                 ;
CODE_0D8081:        6E B8 07      ROR $07B8                 ;
CODE_0D8084:        6E B9 07      ROR $07B9                 ;
CODE_0D8087:        6E BA 07      ROR $07BA                 ;
CODE_0D808A:        6E BB 07      ROR $07BB                 ;
CODE_0D808D:        6E BC 07      ROR $07BC                 ;
CODE_0D8090:        6E BD 07      ROR $07BD                 ;
CODE_0D8093:        22 63 81 04   JSL CODE_048163           ;
CODE_0D8097:        AF 07 00 70   LDA $700007               ;
CODE_0D809B:        F0 1B         BEQ CODE_0D80B8           ;
CODE_0D809D:        AD FA 0F      LDA $0FFA                 ;
CODE_0D80A0:        29 20         AND #$20                  ;
CODE_0D80A2:        F0 03         BEQ CODE_0D80A7           ;
CODE_0D80A4:        EE E5 15      INC $15E5                 ;
CODE_0D80A7:        AD FA 0F      LDA $0FFA                 ;
CODE_0D80AA:        29 10         AND #$10                  ;
CODE_0D80AC:        D0 0A         BNE CODE_0D80B8           ;
CODE_0D80AE:        AD E5 15      LDA $15E5                 ;
CODE_0D80B1:        29 01         AND #$01                  ;
CODE_0D80B3:        F0 03         BEQ CODE_0D80B8           ;
CODE_0D80B5:        4C 7F 81      JMP CODE_0D817F           ;

CODE_0D80B8:        AD 76 0B      LDA $0B76                 ;
CODE_0D80BB:        D0 04         BNE CODE_0D80C1           ;
CODE_0D80BD:        22 AF EF 0F   JSL CODE_0FEFAF           ;
CODE_0D80C1:        22 4F D9 0F   JSL CODE_0FD94F           ;
CODE_0D80C5:        20 F2 98      JSR CODE_0D98F2           ;
CODE_0D80C8:        A5 5C         LDA $5C                   ;
CODE_0D80CA:        D0 04         BNE CODE_0D80D0           ;
CODE_0D80CC:        22 4E 83 0E   JSL CODE_0E834E           ;
CODE_0D80D0:        AD D6 0E      LDA $0ED6                 ;
CODE_0D80D3:        30 1B         BMI CODE_0D80F0           ;
CODE_0D80D5:        F0 33         BEQ CODE_0D810A           ;
CODE_0D80D7:        AD B0 07      LDA $07B0                 ;
CODE_0D80DA:        F0 2E         BEQ CODE_0D810A           ;
CODE_0D80DC:        AD FA 0F      LDA $0FFA                 ;
CODE_0D80DF:        30 07         BMI CODE_0D80E8           ;
CODE_0D80E1:        AD F6 0F      LDA $0FF6                 ;
CODE_0D80E4:        29 90         AND #$90                  ;
CODE_0D80E6:        F0 22         BEQ CODE_0D810A           ;
CODE_0D80E8:        9C B0 07      STZ $07B0                 ;
CODE_0D80EB:        9C D6 0E      STZ $0ED6                 ;
CODE_0D80EE:        80 1A         BRA CODE_0D810A           ;

CODE_0D80F0:        AD FA 0F      LDA $0FFA                 ;
CODE_0D80F3:        0D F6 0F      ORA $0FF6                 ;
CODE_0D80F6:        29 40         AND #$40                  ;
CODE_0D80F8:        F0 10         BEQ CODE_0D810A           ;
CODE_0D80FA:        AD 01 12      LDA $1201                 ;
CODE_0D80FD:        C9 0F         CMP #$0F                  ;
CODE_0D80FF:        D0 09         BNE CODE_0D810A           ;
CODE_0D8101:        A9 80         LDA #$80                  ;
CODE_0D8103:        8D 02 16      STA $1602                 ;
CODE_0D8106:        5C DE 80 00   JML CODE_0080DE           ;

CODE_0D810A:        AD 7F 0E      LDA $0E7F                 ;
CODE_0D810D:        F0 05         BEQ CODE_0D8114           ;
CODE_0D810F:        20 89 C0      JSR CODE_0DC089           ;
CODE_0D8112:        80 6B         BRA CODE_0D817F           ;

CODE_0D8114:        AD 76 07      LDA $0776                 ;
CODE_0D8117:        4A            LSR A                     ;
CODE_0D8118:        B0 5E         BCS CODE_0D8178           ;
CODE_0D811A:        0B            PHD                       ;
CODE_0D811B:        A9 07         LDA #$07                  ;
CODE_0D811D:        EB            XBA                       ;
CODE_0D811E:        A9 00         LDA #$00                  ;
CODE_0D8120:        5B            TCD                       ;
CODE_0D8121:        A5 47         LDA $47                   ;
CODE_0D8123:        F0 04         BEQ CODE_0D8129           ;
CODE_0D8125:        C6 47         DEC $47                   ;
CODE_0D8127:        D0 15         BNE CODE_0D813E           ;
CODE_0D8129:        A2 18         LDX #$18                  ;
CODE_0D812B:        C6 87         DEC $87                   ;
CODE_0D812D:        10 06         BPL CODE_0D8135           ;
CODE_0D812F:        A9 14         LDA #$14                  ;
CODE_0D8131:        85 87         STA $87                   ;
CODE_0D8133:        A2 2B         LDX #$2B                  ;
CODE_0D8135:        B5 88         LDA $88,x                 ;
CODE_0D8137:        F0 02         BEQ CODE_0D813B           ;
CODE_0D8139:        D6 88         DEC $88,x                 ;
CODE_0D813B:        CA            DEX                       ;
CODE_0D813C:        10 F7         BPL CODE_0D8135           ;
CODE_0D813E:        2B            PLD                       ;
CODE_0D813F:        AD B0 07      LDA $07B0                 ;
CODE_0D8142:        D0 08         BNE CODE_0D814C           ;
CODE_0D8144:        AD D6 0E      LDA $0ED6                 ;
CODE_0D8147:        29 80         AND #$80                  ;
CODE_0D8149:        8D D6 0E      STA $0ED6                 ;
CODE_0D814C:        E6 09         INC $09                   ;
CODE_0D814E:        EE 68 0E      INC $0E68                 ;
CODE_0D8151:        AD 68 0E      LDA $0E68                 ;
CODE_0D8154:        29 18         AND #$18                  ;
CODE_0D8156:        C9 18         CMP #$18                  ;
CODE_0D8158:        D0 03         BNE CODE_0D815D           ;
CODE_0D815A:        9C 68 0E      STZ $0E68                 ;
CODE_0D815D:        22 6D E2 0F   JSL CODE_0FE26D           ;
CODE_0D8161:        AD 22 07      LDA $0722                 ;
CODE_0D8164:        F0 08         BEQ CODE_0D816E           ;
CODE_0D8166:        A5 1B         LDA $1B                   ;
CODE_0D8168:        4A            LSR A                     ;
CODE_0D8169:        B0 03         BCS CODE_0D816E           ;
CODE_0D816B:        20 EC 83      JSR CODE_0D83EC           ;
CODE_0D816E:        20 D8 83      JSR CODE_0D83D8           ;
CODE_0D8171:        AD 80 16      LDA $1680                 ;
CODE_0D8174:        30 02         BMI CODE_0D8178           ;
CODE_0D8176:        80 07         BRA CODE_0D817F           ;

CODE_0D8178:        20 1C 84      JSR CODE_0D841C           ;
CODE_0D817B:        22 33 DA 0F   JSL CODE_0FDA33           ;
CODE_0D817F:        22 C6 EB 0F   JSL CODE_0FEBC6           ;
CODE_0D8183:        9C 54 01      STZ $0154                 ;
CODE_0D8186:        4C 62 80      JMP CODE_0D8062           ;

DATA_0D8189:        db $00,$00,$00,$03

CODE_0D818D:        8B            PHB                       ;
CODE_0D818E:        4B            PHK                       ;
CODE_0D818F:        AB            PLB                       ;
CODE_0D8190:        AD 10 42      LDA $4210                 ;
CODE_0D8193:        AD 01 12      LDA $1201                 ;
CODE_0D8196:        D0 02         BNE CODE_0D819A           ;
CODE_0D8198:        A9 80         LDA #$80                  ;
CODE_0D819A:        8D 00 21      STA $2100                 ;
CODE_0D819D:        9C 0C 42      STZ $420C                 ;
CODE_0D81A0:        AD 54 01      LDA $0154                 ;
CODE_0D81A3:        F0 03         BEQ CODE_0D81A8           ;
CODE_0D81A5:        4C EA 82      JMP CODE_0D82EA           ;

CODE_0D81A8:        EE 54 01      INC $0154                 ;
CODE_0D81AB:        AE 73 07      LDX $0773                 ;
CODE_0D81AE:        AD 53 07      LDA $0753                 ;
CODE_0D81B1:        F0 12         BEQ CODE_0D81C5           ;
CODE_0D81B3:        E0 0C         CPX #$0C                  ;
CODE_0D81B5:        D0 02         BNE CODE_0D81B9           ;
CODE_0D81B7:        A2 1F         LDX #$1F                  ;
CODE_0D81B9:        E0 10         CPX #$10                  ;
CODE_0D81BB:        D0 02         BNE CODE_0D81BF           ;
CODE_0D81BD:        A2 20         LDX #$20                  ;
CODE_0D81BF:        E0 13         CPX #$13                  ;
CODE_0D81C1:        D0 02         BNE CODE_0D81C5           ;
CODE_0D81C3:        A2 21         LDX #$21                  ;
CODE_0D81C5:        BF 40 F3 0F   LDA.l DATA_0FF340,x       ;
CODE_0D81C9:        85 00         STA $00                   ;
CODE_0D81CB:        BF 62 F3 0F   LDA.l DATA_0FF362,x       ;
CODE_0D81CF:        85 01         STA $01                   ;
CODE_0D81D1:        A9 0F         LDA.b #DATA_0FF340>>16    ;
CODE_0D81D3:        8D 14 43      STA $4314                 ;
CODE_0D81D6:        85 02         STA $02                   ;
CODE_0D81D8:        20 7C 97      JSR CODE_0D977C           ;
CODE_0D81DB:        AE 73 07      LDX $0773                 ;
CODE_0D81DE:        E0 06         CPX #$06                  ;
CODE_0D81E0:        D0 16         BNE CODE_0D81F8           ;
CODE_0D81E2:        AF 40 F3 0F   LDA.l DATA_0FF340               ;
CODE_0D81E6:        85 00         STA $00                   ;
CODE_0D81E8:        AF 62 F3 0F   LDA.l DATA_0FF362               ;
CODE_0D81EC:        85 01         STA $01                   ;
CODE_0D81EE:        A9 0F         LDA.b #DATA_0FF340>>16                  ;
CODE_0D81F0:        8D 14 43      STA $4314                 ;
CODE_0D81F3:        85 02         STA $02                   ;
CODE_0D81F5:        20 7C 97      JSR CODE_0D977C           ;
CODE_0D81F8:        0B            PHD                       ;
CODE_0D81F9:        A9 43         LDA #$43                  ;
CODE_0D81FB:        EB            XBA                       ; DP: $4300
CODE_0D81FC:        A9 00         LDA #$00                  ;
CODE_0D81FE:        5B            TCD                       ; TODO: DMA source
CODE_0D81FF:        C2 10         REP #$10                  ;
CODE_0D8201:        A9 81         LDA #$81                  ;
CODE_0D8203:        8D 15 21      STA $2115                 ;
CODE_0D8206:        A0 01 18      LDY #$1801                ;
CODE_0D8209:        84 00         STY $00                   ;
CODE_0D820B:        AD F9 0E      LDA $0EF9                 ;
CODE_0D820E:        F0 33         BEQ CODE_0D8243           ;
CODE_0D8210:        A9 7F         LDA #$7F                  ;
CODE_0D8212:        85 04         STA $04                   ;
CODE_0D8214:        C2 20         REP #$20                  ;
CODE_0D8216:        A0 40 00      LDY #$0040                ;
CODE_0D8219:        A2 00 00      LDX #$0000                ;
CODE_0D821C:        BF 02 00 7F   LDA $7F0002,x             ;
CODE_0D8220:        8D 16 21      STA $2116                 ;
CODE_0D8223:        8A            TXA                       ;
CODE_0D8224:        18            CLC                       ;
CODE_0D8225:        69 04 00      ADC #$0004                ;
CODE_0D8228:        85 02         STA $02                   ;
CODE_0D822A:        84 05         STY $05                   ;
CODE_0D822C:        8A            TXA                       ;
CODE_0D822D:        18            CLC                       ;
CODE_0D822E:        69 42 00      ADC #$0042                ;
CODE_0D8231:        AA            TAX                       ;
CODE_0D8232:        A9 01 00      LDA #$0001                ;
CODE_0D8235:        8D 0B 42      STA $420B                 ;
CODE_0D8238:        BF 02 00 7F   LDA $7F0002,x             ;
CODE_0D823C:        10 E2         BPL CODE_0D8220           ;
CODE_0D823E:        E2 20         SEP #$20                  ;
CODE_0D8240:        9C F9 0E      STZ $0EF9                 ;
CODE_0D8243:        AD D4 0E      LDA $0ED4                 ;
CODE_0D8246:        F0 2E         BEQ CODE_0D8276           ;
CODE_0D8248:        A9 7F         LDA #$7F                  ;
CODE_0D824A:        85 04         STA $04                   ;
CODE_0D824C:        C2 20         REP #$20                  ;
CODE_0D824E:        A0 38 00      LDY #$0038                ;
CODE_0D8251:        A2 00 00      LDX #$0000                ;
CODE_0D8254:        BF 02 20 7F   LDA $7F2002,x             ;
CODE_0D8258:        8D 16 21      STA $2116                 ;
CODE_0D825B:        8A            TXA                       ;
CODE_0D825C:        18            CLC                       ;
CODE_0D825D:        69 04 20      ADC #$2004                ;
CODE_0D8260:        85 02         STA $02                   ;
CODE_0D8262:        84 05         STY $05                   ;
CODE_0D8264:        8A            TXA                       ;
CODE_0D8265:        18            CLC                       ;
CODE_0D8266:        69 3A 00      ADC #$003A                ;
CODE_0D8269:        AA            TAX                       ;
CODE_0D826A:        A9 01 00      LDA #$0001                ;
CODE_0D826D:        8D 0B 42      STA $420B                 ;
CODE_0D8270:        BF 02 20 7F   LDA $7F2002,x             ;
CODE_0D8274:        10 E2         BPL CODE_0D8258           ;
CODE_0D8276:        E2 30         SEP #$30                  ;
CODE_0D8278:        9C D4 0E      STZ $0ED4                 ;
CODE_0D827B:        A9 80         LDA #$80                  ;
CODE_0D827D:        8D 15 21      STA $2115                 ;
CODE_0D8280:        20 DD 96      JSR CODE_0D96DD           ;
CODE_0D8283:        AD 00 12      LDA $1200                 ;
CODE_0D8286:        F0 2B         BEQ CODE_0D82B3           ;
CODE_0D8288:        30 24         BMI CODE_0D82AE           ;
CODE_0D828A:        C2 10         REP #$10                  ;
CODE_0D828C:        9C 21 21      STZ $2121                 ;
CODE_0D828F:        A0 00 22      LDY #$2200                ;
CODE_0D8292:        84 00         STY $00                   ;
CODE_0D8294:        A0 00 10      LDY #$1000                ;
CODE_0D8297:        84 02         STY $02                   ;
CODE_0D8299:        A9 00         LDA #$00                  ;
CODE_0D829B:        85 04         STA $04                   ;
CODE_0D829D:        A0 00 02      LDY #$0200                ;
CODE_0D82A0:        84 05         STY $05                   ;
CODE_0D82A2:        A9 01         LDA #$01                  ;
CODE_0D82A4:        8D 0B 42      STA $420B                 ;
CODE_0D82A7:        E2 10         SEP #$10                  ;
CODE_0D82A9:        9C 00 12      STZ $1200                 ;
CODE_0D82AC:        80 05         BRA CODE_0D82B3           ;

CODE_0D82AE:        A9 01         LDA #$01                  ;
CODE_0D82B0:        8D 00 12      STA $1200                 ;
CODE_0D82B3:        2B            PLD                       ;
CODE_0D82B4:        A0 00         LDY #$00                  ;
CODE_0D82B6:        AE 73 07      LDX $0773                 ;
CODE_0D82B9:        E0 06         CPX #$06                  ;
CODE_0D82BB:        D0 02         BNE CODE_0D82BF           ;
CODE_0D82BD:        C8            INY                       ;
CODE_0D82BE:        C8            INY                       ;
CODE_0D82BF:        C2 20         REP #$20                  ;
CODE_0D82C1:        B9 89 81      LDA DATA_0D8189,y               ;
CODE_0D82C4:        C2 10         REP #$10                  ;
CODE_0D82C6:        AA            TAX                       ;
CODE_0D82C7:        9E 00 17      STZ $1700,x               ;
CODE_0D82CA:        A9 FF FF      LDA #$FFFF                ;
CODE_0D82CD:        9D 02 17      STA $1702,x               ;
CODE_0D82D0:        A9 00 00      LDA #$0000                ;
CODE_0D82D3:        8F 00 00 7F   STA $7F0000               ;
CODE_0D82D7:        A5 5C         LDA $5C                   ;
CODE_0D82D9:        29 FF 00      AND #$00FF                ;
CODE_0D82DC:        F0 07         BEQ CODE_0D82E5           ;
CODE_0D82DE:        A9 00 00      LDA #$0000                ;
CODE_0D82E1:        8F 00 20 7F   STA $7F2000               ;
CODE_0D82E5:        E2 30         SEP #$30                  ;
CODE_0D82E7:        9C 73 07      STZ $0773                 ;
CODE_0D82EA:        AD 03 12      LDA $1203                 ;
CODE_0D82ED:        8D 0C 42      STA $420C                 ;
CODE_0D82F0:        0B            PHD                       ;
CODE_0D82F1:        A9 21         LDA #$21                  ;
CODE_0D82F3:        EB            XBA                       ;
CODE_0D82F4:        A9 00         LDA #$00                  ;
CODE_0D82F6:        5B            TCD                       ;
CODE_0D82F7:        AD 09 12      LDA $1209                 ;
CODE_0D82FA:        85 30         STA $30                   ;
CODE_0D82FC:        AD 0A 12      LDA $120A                 ;
CODE_0D82FF:        85 31         STA $31                   ;
CODE_0D8301:        AD 04 12      LDA $1204                 ;
CODE_0D8304:        85 23         STA $23                   ;
CODE_0D8306:        AD 05 12      LDA $1205                 ;
CODE_0D8309:        85 24         STA $24                   ;
CODE_0D830B:        AD 06 12      LDA $1206                 ;
CODE_0D830E:        85 25         STA $25                   ;
CODE_0D8310:        AD 0B 12      LDA $120B                 ;
CODE_0D8313:        85 2C         STA $2C                   ;
CODE_0D8315:        AD 0C 12      LDA $120C                 ;
CODE_0D8318:        85 2D         STA $2D                   ;
CODE_0D831A:        AD 07 12      LDA $1207                 ;
CODE_0D831D:        85 2E         STA $2E                   ;
CODE_0D831F:        AD 08 12      LDA $1208                 ;
CODE_0D8322:        85 2F         STA $2F                   ;
CODE_0D8324:        AD E0 0E      LDA $0EE0                 ;
CODE_0D8327:        85 32         STA $32                   ;
CODE_0D8329:        AD E1 0E      LDA $0EE1                 ;
CODE_0D832C:        85 32         STA $32                   ;
CODE_0D832E:        AD E2 0E      LDA $0EE2                 ;
CODE_0D8331:        85 32         STA $32                   ;
CODE_0D8333:        AD 0D 12      LDA $120D                 ;
CODE_0D8336:        85 05         STA $05                   ;
CODE_0D8338:        AD 7E 0E      LDA $0E7E                 ;
CODE_0D833B:        85 06         STA $06                   ;
CODE_0D833D:        64 11         STZ $11                   ;
CODE_0D833F:        64 11         STZ $11                   ;
CODE_0D8341:        AD D1 0E      LDA $0ED1                 ;
CODE_0D8344:        F0 0A         BEQ CODE_0D8350           ;
CODE_0D8346:        AD EE 0E      LDA $0EEE                 ;
CODE_0D8349:        85 0F         STA $0F                   ;
CODE_0D834B:        AD EF 0E      LDA $0EEF                 ;
CODE_0D834E:        85 0F         STA $0F                   ;
CODE_0D8350:        AD 7F 0E      LDA $0E7F                 ;
CODE_0D8353:        D0 2A         BNE CODE_0D837F           ;
CODE_0D8355:        AD 3F 07      LDA $073F                 ;
CODE_0D8358:        85 0D         STA $0D                   ;
CODE_0D835A:        AD 1A 07      LDA $071A                 ;
CODE_0D835D:        85 0D         STA $0D                   ;
CODE_0D835F:        AD D1 0E      LDA $0ED1                 ;
CODE_0D8362:        D0 0A         BNE CODE_0D836E           ;
CODE_0D8364:        AD FD 0E      LDA $0EFD                 ;
CODE_0D8367:        85 0F         STA $0F                   ;
CODE_0D8369:        AD FE 0E      LDA $0EFE                 ;
CODE_0D836C:        85 0F         STA $0F                   ;
CODE_0D836E:        AD 40 07      LDA $0740                 ;
CODE_0D8371:        85 0E         STA $0E                   ;
CODE_0D8373:        64 0E         STZ $0E                   ;
CODE_0D8375:        AD D2 0E      LDA $0ED2                 ;
CODE_0D8378:        85 10         STA $10                   ;
CODE_0D837A:        AD D3 0E      LDA $0ED3                 ;
CODE_0D837D:        85 10         STA $10                   ;
CODE_0D837F:        2B            PLD                       ;
CODE_0D8380:        A2 81         LDX #$81                  ;
CODE_0D8382:        AD DE 0E      LDA $0EDE                 ;
CODE_0D8385:        F0 14         BEQ CODE_0D839B           ;
CODE_0D8387:        AD 11 42      LDA $4211                 ;
CODE_0D838A:        AD F2 0E      LDA $0EF2                 ;
CODE_0D838D:        8D 09 42      STA $4209                 ;
CODE_0D8390:        9C 0A 42      STZ $420A                 ;
CODE_0D8393:        9C 07 42      STZ $4207                 ;
CODE_0D8396:        9C 08 42      STZ $4208                 ;
CODE_0D8399:        A2 A1         LDX #$A1                  ;
CODE_0D839B:        8E 00 42      STX $4200                 ;
CODE_0D839E:        AB            PLB                       ;
CODE_0D839F:        6B            RTL                       ;

CODE_0D83A0:        8B            PHB                       ;
CODE_0D83A1:        4B            PHK                       ;
CODE_0D83A2:        AB            PLB                       ;
CODE_0D83A3:        AD 11 42      LDA $4211                 ;
CODE_0D83A6:        10 2E         BPL CODE_0D83D6           ;
CODE_0D83A8:        AD DE 0E      LDA $0EDE                 ;
CODE_0D83AB:        F0 29         BEQ CODE_0D83D6           ;
CODE_0D83AD:        AD D1 0E      LDA $0ED1                 ;
CODE_0D83B0:        F0 13         BEQ CODE_0D83C5           ;
CODE_0D83B2:        2C 12 42      BIT $4212                 ;
CODE_0D83B5:        50 FB         BVC CODE_0D83B2           ;
CODE_0D83B7:        AD FD 0E      LDA $0EFD                 ;
CODE_0D83BA:        8D 0F 21      STA $210F                 ;
CODE_0D83BD:        AD FE 0E      LDA $0EFE                 ;
CODE_0D83C0:        8D 0F 21      STA $210F                 ;
CODE_0D83C3:        80 11         BRA CODE_0D83D6           ;

CODE_0D83C5:        2C 12 42      BIT $4212                 ;
CODE_0D83C8:        50 FB         BVC CODE_0D83C5           ;
CODE_0D83CA:        AD EE 0E      LDA $0EEE                 ;
CODE_0D83CD:        8D 11 21      STA $2111                 ;
CODE_0D83D0:        AD EF 0E      LDA $0EEF                 ;
CODE_0D83D3:        8D 11 21      STA $2111                 ;
CODE_0D83D6:        AB            PLB                       ;
CODE_0D83D7:        6B            RTL                       ;

CODE_0D83D8:        AD 70 07      LDA $0770                 ;
CODE_0D83DB:        0A            ASL A                     ;
CODE_0D83DC:        AA            TAX                       ;
CODE_0D83DD:        7C E0 83      JMP (PNTR_0D83E0,x)       ;

PNTR_0D83E0:        dw CODE_0D84B6
                    dw CODE_0DAB70
                    dw CODE_0D8667
                    dw CODE_0D9FC6

CODE_0D83E8:        20 21 84      JSR CODE_0D8421           ;
CODE_0D83EB:        6B            RTL                       ;

CODE_0D83EC:        0B            PHD                       ;
CODE_0D83ED:        A9 0B         LDA #$0B                  ;
CODE_0D83EF:        EB            XBA                       ;
CODE_0D83F0:        A9 00         LDA #$00                  ;
CODE_0D83F2:        5B            TCD                       ;
CODE_0D83F3:        A9 90         LDA #$90                  ;
CODE_0D83F5:        85 62         STA $62                   ;
CODE_0D83F7:        A9 94         LDA #$94                  ;
CODE_0D83F9:        85 63         STA $63                   ;
CODE_0D83FB:        A9 98         LDA #$98                  ;
CODE_0D83FD:        85 64         STA $64                   ;
CODE_0D83FF:        A9 9C         LDA #$9C                  ;
CODE_0D8401:        85 65         STA $65                   ;
CODE_0D8403:        A9 A0         LDA #$A0                  ;
CODE_0D8405:        85 66         STA $66                   ;
CODE_0D8407:        A9 A4         LDA #$A4                  ;
CODE_0D8409:        85 67         STA $67                   ;
CODE_0D840B:        A9 A8         LDA #$A8                  ;
CODE_0D840D:        85 68         STA $68                   ;
CODE_0D840F:        A9 AC         LDA #$AC                  ;
CODE_0D8411:        85 69         STA $69                   ;
CODE_0D8413:        A9 58         LDA #$58                  ;
CODE_0D8415:        85 6A         STA $6A                   ;
CODE_0D8417:        2B            PLD                       ;
CODE_0D8418:        A5 96         LDA $96                   ;
CODE_0D841A:        D0 42         BNE CODE_0D845E           ;
CODE_0D841C:        AD 67 0E      LDA $0E67                 ;
CODE_0D841F:        D0 74         BNE CODE_0D8495           ;
CODE_0D8421:        A2 00         LDX #$00                  ;
CODE_0D8423:        A9 F0         LDA #$F0                  ;
CODE_0D8425:        9D 01 08      STA $0801,x               ;
CODE_0D8428:        9D 41 08      STA $0841,x               ;
CODE_0D842B:        9D 81 08      STA $0881,x               ;
CODE_0D842E:        9D C1 08      STA $08C1,x               ;
CODE_0D8431:        9D 01 09      STA $0901,x               ;
CODE_0D8434:        9D 41 09      STA $0941,x               ;
CODE_0D8437:        9D 81 09      STA $0981,x               ;
CODE_0D843A:        9D C1 09      STA $09C1,x               ;
CODE_0D843D:        9E 00 0C      STZ $0C00,x               ;
CODE_0D8440:        9E 40 0C      STZ $0C40,x               ;
CODE_0D8443:        9E 80 0C      STZ $0C80,x               ;
CODE_0D8446:        9E C0 0C      STZ $0CC0,x               ;
CODE_0D8449:        9E 00 0D      STZ $0D00,x               ;
CODE_0D844C:        9E 40 0D      STZ $0D40,x               ;
CODE_0D844F:        9E 80 0D      STZ $0D80,x               ;
CODE_0D8452:        9E C0 0D      STZ $0DC0,x               ;
CODE_0D8455:        E8            INX                       ;
CODE_0D8456:        E8            INX                       ;
CODE_0D8457:        E8            INX                       ;
CODE_0D8458:        E8            INX                       ;
CODE_0D8459:        E0 40         CPX #$40                  ;
CODE_0D845B:        D0 C8         BNE CODE_0D8425           ;
CODE_0D845D:        60            RTS                       ;

CODE_0D845E:        A2 00         LDX #$00                  ;
CODE_0D8460:        A9 F0         LDA #$F0                  ;
CODE_0D8462:        9D 41 08      STA $0841,x               ;
CODE_0D8465:        9D 81 08      STA $0881,x               ;
CODE_0D8468:        9D C1 08      STA $08C1,x               ;
CODE_0D846B:        9D 01 09      STA $0901,x               ;
CODE_0D846E:        9D 41 09      STA $0941,x               ;
CODE_0D8471:        9D 81 09      STA $0981,x               ;
CODE_0D8474:        9D C1 09      STA $09C1,x               ;
CODE_0D8477:        9E 40 0C      STZ $0C40,x               ;
CODE_0D847A:        9E 80 0C      STZ $0C80,x               ;
CODE_0D847D:        9E C0 0C      STZ $0CC0,x               ;
CODE_0D8480:        9E 00 0D      STZ $0D00,x               ;
CODE_0D8483:        9E 40 0D      STZ $0D40,x               ;
CODE_0D8486:        9E 80 0D      STZ $0D80,x               ;
CODE_0D8489:        9E C0 0D      STZ $0DC0,x               ;
CODE_0D848C:        E8            INX                       ;
CODE_0D848D:        E8            INX                       ;
CODE_0D848E:        E8            INX                       ;
CODE_0D848F:        E8            INX                       ;
CODE_0D8490:        E0 40         CPX #$40                  ;
CODE_0D8492:        D0 CE         BNE CODE_0D8462           ;
CODE_0D8494:        60            RTS                       ;

CODE_0D8495:        A9 F0         LDA #$F0                  ;
CODE_0D8497:        8D 51 08      STA $0851                 ;
CODE_0D849A:        8D 55 08      STA $0855                 ;
CODE_0D849D:        8D B1 08      STA $08B1                 ;
CODE_0D84A0:        8D B5 08      STA $08B5                 ;
CODE_0D84A3:        8D B9 08      STA $08B9                 ;
CODE_0D84A6:        8D BD 08      STA $08BD                 ;
CODE_0D84A9:        8D C1 08      STA $08C1                 ;
CODE_0D84AC:        8D C5 08      STA $08C5                 ;
CODE_0D84AF:        8D C9 08      STA $08C9                 ;
CODE_0D84B2:        8D CD 08      STA $08CD                 ;
CODE_0D84B5:        60            RTS                       ;

CODE_0D84B6:        AD 72 07      LDA $0772                 ;
CODE_0D84B9:        0A            ASL A                     ;
CODE_0D84BA:        AA            TAX                       ;
CODE_0D84BB:        FC D5 84      JSR (PNTR_0D84D5,x)       ;
CODE_0D84BE:        AF F2 1F 70   LDA $701FF2               ;
CODE_0D84C2:        F0 0D         BEQ CODE_0D84D1           ;
CODE_0D84C4:        9C 00 16      STZ $1600                 ;
CODE_0D84C7:        9C 01 16      STZ $1601                 ;
CODE_0D84CA:        9C 02 16      STZ $1602                 ;
CODE_0D84CD:        9C 03 16      STZ $1603                 ;
CODE_0D84D0:        60            RTS                       ;

CODE_0D84D1:        9C 02 16      STZ $1602                 ;
CODE_0D84D4:        60            RTS                       ;

PNTR_0D84D5:        dw CODE_0D9D11            ;
                    dw CODE_0D89BD            ;
                    dw CODE_0D9E3F            ;
                    dw CODE_0D84DD            ;

CODE_0D84DD:        AD F4 0F      LDA $0FF4                 ;
CODE_0D84E0:        29 10         AND #$10                  ;
CODE_0D84E2:        F0 74         BEQ CODE_0D8558           ;
CODE_0D84E4:        AD 7A 07      LDA $077A                 ;
CODE_0D84E7:        8D C2 0E      STA $0EC2                 ;
CODE_0D84EA:        8D 53 07      STA $0753                 ;
CODE_0D84ED:        9C 7A 07      STZ $077A                 ;
CODE_0D84F0:        9C 08 0F      STZ $0F08                 ;
CODE_0D84F3:        9C 09 0F      STZ $0F09                 ;
CODE_0D84F6:        9C FB 07      STZ $07FB                 ;
CODE_0D84F9:        AF 08 00 70   LDA $700008               ;
CODE_0D84FD:        8D 5F 07      STA $075F                 ;
CODE_0D8500:        AF 09 00 70   LDA $700009               ;
CODE_0D8504:        8D 60 07      STA $0760                 ;
CODE_0D8507:        AD 24 0E      LDA $0E24                 ;
CODE_0D850A:        8D 5C 07      STA $075C                 ;
CODE_0D850D:        22 51 D0 0F   JSL CODE_0FD051           ;
CODE_0D8511:        AD 5F 07      LDA $075F                 ;
CODE_0D8514:        C9 09         CMP #$09                  ;
CODE_0D8516:        90 03         BCC CODE_0D851B           ;
CODE_0D8518:        EE FB 07      INC $07FB                 ;
CODE_0D851B:        A9 00         LDA #$00                  ;
CODE_0D851D:        8F 05 FB 7F   STA $7FFB05               ;
CODE_0D8521:        4C FE 85      JMP CODE_0D85FE           ;

CODE_0D8524:        A9 00         LDA #$00                  ;
CODE_0D8526:        8F E8 1F 70   STA $701FE8               ;
CODE_0D852A:        8F E9 1F 70   STA $701FE9               ;
CODE_0D852E:        8F EA 1F 70   STA $701FEA               ;
CODE_0D8532:        8F EB 1F 70   STA $701FEB               ;
CODE_0D8536:        8F EC 1F 70   STA $701FEC               ;
CODE_0D853A:        8F ED 1F 70   STA $701FED               ;
CODE_0D853E:        8D C8 07      STA $07C8                 ;
CODE_0D8541:        8D C9 07      STA $07C9                 ;
CODE_0D8544:        8D CA 07      STA $07CA                 ;
CODE_0D8547:        8D CB 07      STA $07CB                 ;
CODE_0D854A:        8D CC 07      STA $07CC                 ;
CODE_0D854D:        8D CD 07      STA $07CD                 ;
CODE_0D8550:        A9 08         LDA #$08                  ;
CODE_0D8552:        8D 00 16      STA $1600                 ;
CODE_0D8555:        4C EC 85      JMP CODE_0D85EC           ;

CODE_0D8558:        22 49 FB 0F   JSL CODE_0FFB49           ;
CODE_0D855C:        AF F2 1F 70   LDA $701FF2               ;
CODE_0D8560:        D0 20         BNE CODE_0D8582           ;
CODE_0D8562:        AD F8 0F      LDA $0FF8                 ;
CODE_0D8565:        C9 B0         CMP #$B0                  ;
CODE_0D8567:        D0 07         BNE CODE_0D8570           ;
CODE_0D8569:        AD F4 0F      LDA $0FF4                 ;
CODE_0D856C:        C9 80         CMP #$80                  ;
CODE_0D856E:        F0 B4         BEQ CODE_0D8524           ;
CODE_0D8570:        AF 05 FB 7F   LDA $7FFB05               ;
CODE_0D8574:        30 05         BMI CODE_0D857B           ;
CODE_0D8576:        A9 40         LDA #$40                  ;
CODE_0D8578:        8D B2 07      STA $07B2                 ;
CODE_0D857B:        AD F6 0F      LDA $0FF6                 ;
CODE_0D857E:        29 2C         AND #$2C                  ;
CODE_0D8580:        D0 0D         BNE CODE_0D858F           ;
CODE_0D8582:        AE B2 07      LDX $07B2                 ;
CODE_0D8585:        D0 48         BNE CODE_0D85CF           ;
CODE_0D8587:        22 0F F7 0F   JSL CODE_0FF70F           ;
CODE_0D858B:        90 45         BCC CODE_0D85D2           ;
CODE_0D858D:        B0 5D         BCS CODE_0D85EC           ;
CODE_0D858F:        AD B2 07      LDA $07B2                 ;
CODE_0D8592:        F0 58         BEQ CODE_0D85EC           ;
CODE_0D8594:        A9 18         LDA #$18                  ;
CODE_0D8596:        8D B2 07      STA $07B2                 ;
CODE_0D8599:        AD 09 00      LDA $0009                 ;
CODE_0D859C:        29 FE         AND #$FE                  ;
CODE_0D859E:        8D 09 00      STA $0009                 ;
CODE_0D85A1:        AF F2 1F 70   LDA $701FF2               ;
CODE_0D85A5:        D0 28         BNE CODE_0D85CF           ;
CODE_0D85A7:        AD F6 0F      LDA $0FF6                 ;
CODE_0D85AA:        89 20         BIT #$20                  ;
CODE_0D85AC:        F0 07         BEQ CODE_0D85B5           ;
CODE_0D85AE:        AD 7A 07      LDA $077A                 ;
CODE_0D85B1:        49 01         EOR #$01                  ;
CODE_0D85B3:        80 0E         BRA CODE_0D85C3           ;

CODE_0D85B5:        29 0C         AND #$0C                  ;
CODE_0D85B7:        F0 12         BEQ CODE_0D85CB           ;
CODE_0D85B9:        49 08         EOR #$08                  ;
CODE_0D85BB:        4A            LSR A                     ;
CODE_0D85BC:        4A            LSR A                     ;
CODE_0D85BD:        4A            LSR A                     ;
CODE_0D85BE:        CD 7A 07      CMP $077A                 ;
CODE_0D85C1:        F0 08         BEQ CODE_0D85CB           ;
CODE_0D85C3:        8D 7A 07      STA $077A                 ;
CODE_0D85C6:        A9 01         LDA #$01                  ;
CODE_0D85C8:        8D 03 16      STA $1603                 ;
CODE_0D85CB:        22 17 F3 0F   JSL CODE_0FF317           ;
CODE_0D85CF:        9C F4 0F      STZ $0FF4                 ;
CODE_0D85D2:        AD 03 16      LDA $1603                 ;
CODE_0D85D5:        48            PHA                       ;
CODE_0D85D6:        20 80 AB      JSR CODE_0DAB80           ;
CODE_0D85D9:        9C 00 16      STZ $1600                 ;
CODE_0D85DC:        9C 01 16      STZ $1601                 ;
CODE_0D85DF:        68            PLA                       ;
CODE_0D85E0:        8D 03 16      STA $1603                 ;
CODE_0D85E3:        A5 0F         LDA $0F                   ;
CODE_0D85E5:        C9 06         CMP #$06                  ;
CODE_0D85E7:        D0 6D         BNE CODE_0D8656           ;
CODE_0D85E9:        9C C8 0E      STZ $0EC8                 ;
CODE_0D85EC:        9C 70 07      STZ $0770                 ;
CODE_0D85EF:        9C 72 07      STZ $0772                 ;
CODE_0D85F2:        9C 22 07      STZ $0722                 ;
CODE_0D85F5:        A9 01         LDA #$01                  ;
CODE_0D85F7:        8D 7F 0E      STA $0E7F                 ;
CODE_0D85FA:        EE 74 07      INC $0774                 ;
CODE_0D85FD:        60            RTS                       ;

CODE_0D85FE:        AC B2 07      LDY $07B2                 ;
CODE_0D8601:        F0 E9         BEQ CODE_0D85EC           ;
CODE_0D8603:        0A            ASL A                     ;
CODE_0D8604:        90 05         BCC CODE_0D860B           ;
CODE_0D8606:        A9 09         LDA #$09                  ;
CODE_0D8608:        20 63 86      JSR CODE_0D8663           ;
CODE_0D860B:        A9 29         LDA #$29                  ;
CODE_0D860D:        8D 03 16      STA $1603                 ;
CODE_0D8610:        A9 01         LDA #$01                  ;
CODE_0D8612:        8D 67 0E      STA $0E67                 ;
CODE_0D8615:        8D A5 0B      STA $0BA5                 ;
CODE_0D8618:        20 00 F7      JSR CODE_0DF700           ;
CODE_0D861B:        22 4C C3 0E   JSL CODE_0EC34C           ;
CODE_0D861F:        EE 5D 07      INC $075D                 ;
CODE_0D8622:        EE 64 07      INC $0764                 ;
CODE_0D8625:        EE 57 07      INC $0757                 ;
CODE_0D8628:        EE 70 07      INC $0770                 ;
CODE_0D862B:        AD FB 07      LDA $07FB                 ;
CODE_0D862E:        8D 6A 07      STA $076A                 ;
CODE_0D8631:        9C 72 07      STZ $0772                 ;
CODE_0D8634:        9C B2 07      STZ $07B2                 ;
CODE_0D8637:        A2 0B         LDX #$0B                  ;
CODE_0D8639:        9E DA 07      STZ $07DA,x               ;
CODE_0D863C:        CA            DEX                       ;
CODE_0D863D:        10 FA         BPL CODE_0D8639           ;
CODE_0D863F:        DA            PHX                       ;
CODE_0D8640:        64 E4         STZ $E4                   ;
CODE_0D8642:        AD 5E 07      LDA $075E                 ;
CODE_0D8645:        20 57 86      JSR CODE_0D8657           ;
CODE_0D8648:        8D DF 07      STA $07DF                 ;
CODE_0D864B:        A5 E4         LDA $E4                   ;
CODE_0D864D:        8D DE 07      STA $07DE                 ;
CODE_0D8650:        A9 01         LDA #$01                  ;
CODE_0D8652:        8D 1A 0E      STA $0E1A                 ;
CODE_0D8655:        FA            PLX                       ;
CODE_0D8656:        60            RTS                       ;

CODE_0D8657:        C9 0A         CMP #$0A                  ;
CODE_0D8659:        90 07         BCC CODE_0D8662           ;
CODE_0D865B:        E6 E4         INC $E4                   ;
CODE_0D865D:        38            SEC                       ;
CODE_0D865E:        E9 0A         SBC #$0A                  ;
CODE_0D8660:        80 F5         BRA CODE_0D8657           ;

CODE_0D8662:        60            RTS                       ;

CODE_0D8663:        8D 5F 07      STA $075F                 ;
CODE_0D8666:        60            RTS                       ;

CODE_0D8667:        20 7C 86      JSR CODE_0D867C           ;
CODE_0D866A:        AD 72 07      LDA $0772                 ;
CODE_0D866D:        F0 07         BEQ CODE_0D8676           ;
CODE_0D866F:        A2 00         LDX #$00                  ;
CODE_0D8671:        86 9E         STX $9E                   ;
CODE_0D8673:        20 50 C2      JSR CODE_0DC250           ;
CODE_0D8676:        20 29 FD      JSR CODE_0DFD29           ;
CODE_0D8679:        4C 00 F7      JMP CODE_0DF700           ;

CODE_0D867C:        AD C4 0E      LDA $0EC4                 ;
CODE_0D867F:        D0 14         BNE CODE_0D8695           ;
CODE_0D8681:        AD 72 07      LDA $0772                 ;
CODE_0D8684:        20 93 96      JSR CODE_0D9693           ;Some sort of executeptr routine

PNTR_0D8687:        dw CODE_0DD3BA
                    dw CODE_0D8773
                    dw CODE_0D878B
                    dw CODE_0D87FA
                    dw CODE_0D8810
                    dw CODE_0D8734
                    dw CODE_0D8857

CODE_0D8695:        AD 72 07      LDA $0772                 ;
CODE_0D8698:        20 93 96      JSR CODE_0D9693           ;Same case as above

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

CODE_0D86B9:        AD 54 07      LDA $0754                 ;
CODE_0D86BC:        F0 08         BEQ CODE_0D86C6           ;
CODE_0D86BE:        22 2D C6 00   JSL CODE_00C62D           ;
CODE_0D86C2:        EE 72 07      INC $0772                 ;
CODE_0D86C5:        60            RTS                       ;

CODE_0D86C6:        EE 72 07      INC $0772                 ;
CODE_0D86C9:        EE 72 07      INC $0772                 ;
CODE_0D86CC:        60            RTS                       ;

CODE_0D86CD:        9C F4 0F      STZ $0FF4                 ;
CODE_0D86D0:        9C F6 0F      STZ $0FF6                 ;
CODE_0D86D3:        9C F5 0F      STZ $0FF5                 ;
CODE_0D86D6:        9C F7 0F      STZ $0FF7                 ;
CODE_0D86D9:        9C F8 0F      STZ $0FF8                 ;
CODE_0D86DC:        9C F9 0F      STZ $0FF9                 ;
CODE_0D86DF:        9C FA 0F      STZ $0FFA                 ;
CODE_0D86E2:        9C FB 0F      STZ $0FFB                 ;
CODE_0D86E5:        A9 02         LDA #$02                  ;
CODE_0D86E7:        8D 8F 07      STA $078F                 ;
CODE_0D86EA:        20 99 AB      JSR CODE_0DAB99           ;
CODE_0D86ED:        AD 54 07      LDA $0754                 ;
CODE_0D86F0:        D0 03         BNE CODE_0D86F5           ;
CODE_0D86F2:        EE 72 07      INC $0772                 ;
CODE_0D86F5:        60            RTS                       ;

CODE_0D86F6:        EE 72 07      INC $0772                 ;
CODE_0D86F9:        EE 87 0F      INC $0F87                 ;
CODE_0D86FC:        60            RTS                       ;

CODE_0D86FD:        22 5F C4 00   JSL CODE_00C45F           ;
CODE_0D8701:        AD 87 0F      LDA $0F87                 ;
CODE_0D8704:        C9 06         CMP #$06                  ;
CODE_0D8706:        90 03         BCC CODE_0D870B           ;
CODE_0D8708:        EE 72 07      INC $0772                 ;
CODE_0D870B:        60            RTS                       ;

CODE_0D870C:        A9 10         LDA #$10                  ;
CODE_0D870E:        8D 02 16      STA $1602                 ;
CODE_0D8711:        22 60 C0 00   JSL CODE_00C060           ;
CODE_0D8715:        22 F9 D9 0F   JSL CODE_0FD9F9           ;
CODE_0D8719:        EE 72 07      INC $0772                 ;
CODE_0D871C:        60            RTS                       ;

CODE_0D871D:        22 8B C6 00   JSL CODE_00C68B           ;
CODE_0D8721:        60            RTS                       ;

CODE_0D8722:        EE 72 07      INC $0772                 ;
CODE_0D8725:        60            RTS                       ;

CODE_0D8726:        EE 72 07      INC $0772                 ;
CODE_0D8729:        60            RTS                       ;

CODE_0D872A:        22 9D 81 0E   JSL CODE_0E819D           ;
CODE_0D872E:        60            RTS                       ;

CODE_0D872F:        22 E3 81 0E   JSL CODE_0E81E3           ;
CODE_0D8733:        60            RTS                       ;

CODE_0D8734:        AD B1 07      LDA $07B1                 ;
CODE_0D8737:        C9 06         CMP #$06                  ;
CODE_0D8739:        B0 31         BCS CODE_0D876C           ;
CODE_0D873B:        AD 43 21      LDA $2143                 ;
CODE_0D873E:        29 7F         AND #$7F                  ;
CODE_0D8740:        C9 4B         CMP #$4B                  ;
CODE_0D8742:        F0 05         BEQ CODE_0D8749           ;
CODE_0D8744:        A9 4B         LDA #$4B                  ;
CODE_0D8746:        8D 03 16      STA $1603                 ;
CODE_0D8749:        20 FF D6      JSR CODE_0DD6FF           ;
CODE_0D874C:        AD E9 07      LDA $07E9                 ;
CODE_0D874F:        0D EA 07      ORA $07EA                 ;
CODE_0D8752:        0D EB 07      ORA $07EB                 ;
CODE_0D8755:        D0 15         BNE CODE_0D876C           ;
CODE_0D8757:        A9 4C         LDA #$4C                  ;
CODE_0D8759:        8D 03 16      STA $1603                 ;
CODE_0D875C:        8D 1A 0E      STA $0E1A                 ;
CODE_0D875F:        A9 30         LDA #$30                  ;
CODE_0D8761:        8D 88 07      STA $0788                 ;
CODE_0D8764:        A9 06         LDA #$06                  ;
CODE_0D8766:        8D B1 07      STA $07B1                 ;
CODE_0D8769:        EE 72 07      INC $0772                 ;
CODE_0D876C:        60            RTS                       ;

CODE_0D876D:        22 54 C6 00   JSL CODE_00C654           ;
CODE_0D8771:        80 09         BRA CODE_0D877C           ;

CODE_0D8773:        AD 76 0B      LDA $0B76                 ;
CODE_0D8776:        F0 0E         BEQ CODE_0D8786           ;
CODE_0D8778:        22 07 D5 00   JSL CODE_00D507           ;
CODE_0D877C:        AE 1B 07      LDX $071B                 ;
CODE_0D877F:        E8            INX                       ;
CODE_0D8780:        8E 03 02      STX $0203                 ;
CODE_0D8783:        4C D0 8B      JMP CODE_0D8BD0           ;

CODE_0D8786:        22 CA D4 00   JSL CODE_00D4CA           ;
CODE_0D878A:        60            RTS                       ;

CODE_0D878B:        A5 96         LDA $96                   ;
CODE_0D878D:        F0 01         BEQ CODE_0D8790           ;
CODE_0D878F:        60            RTS                       ;

CODE_0D8790:        AD 82 0F      LDA $0F82                 ;
CODE_0D8793:        F0 04         BEQ CODE_0D8799           ;
CODE_0D8795:        22 55 C5 00   JSL CODE_00C555           ;
CODE_0D8799:        A0 00         LDY #$00                  ;
CODE_0D879B:        8C 04 02      STY $0204                 ;
CODE_0D879E:        A5 78         LDA $78                   ;
CODE_0D87A0:        CD 03 02      CMP $0203                 ;
CODE_0D87A3:        D0 28         BNE CODE_0D87CD           ;
CODE_0D87A5:        AD 5F 07      LDA $075F                 ;
CODE_0D87A8:        C9 07         CMP #$07                  ;
CODE_0D87AA:        F0 04         BEQ CODE_0D87B0           ;
CODE_0D87AC:        C9 0C         CMP #$0C                  ;
CODE_0D87AE:        D0 09         BNE CODE_0D87B9           ;
CODE_0D87B0:        EE 04 02      INC $0204                 ;
CODE_0D87B3:        22 DA C3 00   JSL CODE_00C3DA           ;
CODE_0D87B7:        80 18         BRA CODE_0D87D1           ;

CODE_0D87B9:        C9 02         CMP #$02                  ;
CODE_0D87BB:        D0 09         BNE CODE_0D87C6           ;
CODE_0D87BD:        AD 19 02      LDA $0219                 ;
CODE_0D87C0:        C9 44         CMP #$44                  ;
CODE_0D87C2:        B0 0D         BCS CODE_0D87D1           ;
CODE_0D87C4:        80 07         BRA CODE_0D87CD           ;

CODE_0D87C6:        AD 19 02      LDA $0219                 ;
CODE_0D87C9:        C9 54         CMP #$54                  ;
CODE_0D87CB:        B0 04         BCS CODE_0D87D1           ;
CODE_0D87CD:        EE 04 02      INC $0204                 ;
CODE_0D87D0:        C8            INY                       ;
CODE_0D87D1:        98            TYA                       ;
CODE_0D87D2:        20 12 AE      JSR CODE_0DAE12           ;
CODE_0D87D5:        AD 1A 07      LDA $071A                 ;
CODE_0D87D8:        CD 03 02      CMP $0203                 ;
CODE_0D87DB:        F0 17         BEQ CODE_0D87F4           ;
CODE_0D87DD:        AD 68 07      LDA $0768                 ;
CODE_0D87E0:        18            CLC                       ;
CODE_0D87E1:        69 80         ADC #$80                  ;
CODE_0D87E3:        8D 68 07      STA $0768                 ;
CODE_0D87E6:        A9 01         LDA #$01                  ;
CODE_0D87E8:        69 00         ADC #$00                  ;
CODE_0D87EA:        A8            TAY                       ;
CODE_0D87EB:        20 AA AC      JSR CODE_0DACAA           ;
CODE_0D87EE:        20 52 AC      JSR CODE_0DAC52           ;
CODE_0D87F1:        EE 04 02      INC $0204                 ;
CODE_0D87F4:        AD 04 02      LDA $0204                 ;
CODE_0D87F7:        F0 5A         BEQ CODE_0D8853           ;
CODE_0D87F9:        60            RTS                       ;

CODE_0D87FA:        EE 7F 0F      INC $0F7F                 ;
CODE_0D87FD:        AD 7F 0F      LDA $0F7F                 ;
CODE_0D8800:        C9 70         CMP #$70                  ;
CODE_0D8802:        D0 0B         BNE CODE_0D880F           ;
CODE_0D8804:        A9 01         LDA #$01                  ;
CODE_0D8806:        8D 7E 0F      STA $0F7E                 ;
CODE_0D8809:        9C 7F 0F      STZ $0F7F                 ;
CODE_0D880C:        EE 72 07      INC $0772                 ;
CODE_0D880F:        60            RTS                       ;

CODE_0D8810:        AD 49 07      LDA $0749                 ;
CODE_0D8813:        D0 1F         BNE CODE_0D8834           ;
CODE_0D8815:        AD 19 07      LDA $0719                 ;
CODE_0D8818:        F0 08         BEQ CODE_0D8822           ;
CODE_0D881A:        C9 08         CMP #$08                  ;
CODE_0D881C:        B0 16         BCS CODE_0D8834           ;
CODE_0D881E:        C9 01         CMP #$01                  ;
CODE_0D8820:        90 12         BCC CODE_0D8834           ;
CODE_0D8822:        A8            TAY                       ;
CODE_0D8823:        F0 08         BEQ CODE_0D882D           ;
CODE_0D8825:        C0 03         CPY #$03                  ;
CODE_0D8827:        B0 1E         BCS CODE_0D8847           ;
CODE_0D8829:        C0 02         CPY #$02                  ;
CODE_0D882B:        B0 07         BCS CODE_0D8834           ;
CODE_0D882D:        98            TYA                       ;
CODE_0D882E:        18            CLC                       ;
CODE_0D882F:        69 0C         ADC #$0C                  ;
CODE_0D8831:        8D 73 07      STA $0773                 ;
CODE_0D8834:        AD 49 07      LDA $0749                 ;
CODE_0D8837:        18            CLC                       ;
CODE_0D8838:        69 04         ADC #$04                  ;
CODE_0D883A:        8D 49 07      STA $0749                 ;
CODE_0D883D:        AD 19 07      LDA $0719                 ;
CODE_0D8840:        69 00         ADC #$00                  ;
CODE_0D8842:        8D 19 07      STA $0719                 ;
CODE_0D8845:        C9 06         CMP #$06                  ;
CODE_0D8847:        90 0D         BCC CODE_0D8856           ;
CODE_0D8849:        A9 06         LDA #$06                  ;
CODE_0D884B:        A9 08         LDA #$08                  ;
CODE_0D884D:        8D B1 07      STA $07B1                 ;
CODE_0D8850:        8D 67 0E      STA $0E67                 ;
CODE_0D8853:        EE 72 07      INC $0772                 ;
CODE_0D8856:        60            RTS                       ;

CODE_0D8857:        AD B1 07      LDA $07B1                 ;
CODE_0D885A:        D0 3C         BNE CODE_0D8898           ;
CODE_0D885C:        9C 60 07      STZ $0760                 ;
CODE_0D885F:        9C 5C 07      STZ $075C                 ;
CODE_0D8862:        9C 72 07      STZ $0772                 ;
CODE_0D8865:        AD 80 16      LDA $1680                 ;
CODE_0D8868:        C9 90         CMP #$90                  ;
CODE_0D886A:        F0 20         BEQ CODE_0D888C           ;
CODE_0D886C:        AD 5F 07      LDA $075F                 ;
CODE_0D886F:        18            CLC                       ;
CODE_0D8870:        69 01         ADC #$01                  ;
CODE_0D8872:        C9 0C         CMP #$0C                  ;
CODE_0D8874:        90 02         BCC CODE_0D8878           ;
CODE_0D8876:        A9 0C         LDA #$0C                  ;
CODE_0D8878:        C9 08         CMP #$08                  ;
CODE_0D887A:        D0 0D         BNE CODE_0D8889           ;
CODE_0D887C:        AD 2B 0F      LDA $0F2B                 ;
CODE_0D887F:        F0 08         BEQ CODE_0D8889           ;
CODE_0D8881:        A9 01         LDA #$01                  ;
CODE_0D8883:        8D FB 07      STA $07FB                 ;
CODE_0D8886:        EE 5F 07      INC $075F                 ;
CODE_0D8889:        EE 5F 07      INC $075F                 ;
CODE_0D888C:        22 4C C3 0E   JSL CODE_0EC34C           ;
CODE_0D8890:        EE 57 07      INC $0757                 ;
CODE_0D8893:        A9 01         LDA #$01                  ;
CODE_0D8895:        8D 70 07      STA $0770                 ;
CODE_0D8898:        60            RTS                       ;

CODE_0D8899:        AD F4 0F      LDA $0FF4                 ;
CODE_0D889C:        0D F5 0F      ORA $0FF5                 ;
CODE_0D889F:        29 40         AND #$40                  ;
CODE_0D88A1:        F0 0D         BEQ CODE_0D88B0           ;
CODE_0D88A3:        A9 01         LDA #$01                  ;
CODE_0D88A5:        8D FB 07      STA $07FB                 ;
CODE_0D88A8:        A9 FF         LDA #$FF                  ;
CODE_0D88AA:        8D 5A 07      STA $075A                 ;
CODE_0D88AD:        20 F4 9F      JSR CODE_0D9FF4           ;
CODE_0D88B0:        60            RTS                       ;

DATA_0D88B1:        db $FF,$FF,$F6,$FB,$F7,$FB,$F8,$FB ;
                    db $F9,$FB,$FA,$FB,$F6,$0E,$F7,$0E ;
                    db $F8,$0E,$F9,$0E,$FA,$0E,$FD,$FE ;

DATA_0D88C9:        db $FF,$41,$42,$44,$45,$48,$31,$32 ;
                    db $34,$35,$38,$00 ;

CODE_0D88D5:        BD 10 01      LDA $0110,x               ;
CODE_0D88D8:        F0 BE         BEQ CODE_0D8898           ;
CODE_0D88DA:        C9 0B         CMP #$0B                  ;
CODE_0D88DC:        90 0C         BCC CODE_0D88EA           ;
CODE_0D88DE:        A9 0B         LDA #$0B                  ;
CODE_0D88E0:        9D 10 01      STA $0110,x               ;
CODE_0D88E3:        E0 09         CPX #$09                  ;
CODE_0D88E5:        F0 03         BEQ CODE_0D88EA           ;
CODE_0D88E7:        8D 84 02      STA $0284                 ;
CODE_0D88EA:        A8            TAY                       ;
CODE_0D88EB:        BD 38 01      LDA $0138,x               ;
CODE_0D88EE:        D0 04         BNE CODE_0D88F4           ;
CODE_0D88F0:        9D 10 01      STA $0110,x               ;
CODE_0D88F3:        60            RTS                       ;

CODE_0D88F4:        DE 38 01      DEC $0138,x               ;
CODE_0D88F7:        C9 2B         CMP #$2B                  ;
CODE_0D88F9:        D0 20         BNE CODE_0D891B           ;
CODE_0D88FB:        C0 0B         CPY #$0B                  ;
CODE_0D88FD:        D0 09         BNE CODE_0D8908           ;
CODE_0D88FF:        22 96 85 04   JSL CODE_048596           ;Increase lives by one
CODE_0D8903:        A9 05         LDA #$05                  ;
CODE_0D8905:        8D 03 16      STA $1603                 ;
CODE_0D8908:        B9 C9 88      LDA DATA_0D88C9,y               ;
CODE_0D890B:        4A            LSR A                     ;
CODE_0D890C:        4A            LSR A                     ;
CODE_0D890D:        4A            LSR A                     ;
CODE_0D890E:        4A            LSR A                     ;
CODE_0D890F:        AA            TAX                       ;
CODE_0D8910:        B9 C9 88      LDA DATA_0D88C9,y               ;
CODE_0D8913:        29 0F         AND #$0F                  ;
CODE_0D8915:        9D 45 01      STA $0145,x               ;
CODE_0D8918:        20 27 BB      JSR CODE_0DBB27           ;
CODE_0D891B:        A6 9E         LDX $9E                   ;
CODE_0D891D:        AC 58 0B      LDY $0B58                 ;
CODE_0D8920:        B9 01 08      LDA $0801,y               ;
CODE_0D8923:        C9 F0         CMP #$F0                  ;
CODE_0D8925:        F0 0F         BEQ CODE_0D8936           ;
CODE_0D8927:        C8            INY                       ;
CODE_0D8928:        C8            INY                       ;
CODE_0D8929:        C8            INY                       ;
CODE_0D892A:        C8            INY                       ;
CODE_0D892B:        C8            INY                       ;
CODE_0D892C:        C8            INY                       ;
CODE_0D892D:        C8            INY                       ;
CODE_0D892E:        C8            INY                       ;
CODE_0D892F:        C0 90         CPY #$90                  ;
CODE_0D8931:        D0 ED         BNE CODE_0D8920           ;
CODE_0D8933:        AC 58 0B      LDY $0B58                 ;
CODE_0D8936:        BD 24 01      LDA $0124,x               ;
CODE_0D8939:        C9 18         CMP #$18                  ;
CODE_0D893B:        90 05         BCC CODE_0D8942           ;
CODE_0D893D:        E9 01         SBC #$01                  ;
CODE_0D893F:        9D 24 01      STA $0124,x               ;
CODE_0D8942:        BD 24 01      LDA $0124,x               ;
CODE_0D8945:        20 8A EB      JSR CODE_0DEB8A           ;
CODE_0D8948:        86 E0         STX $E0                   ;
CODE_0D894A:        8A            TXA                       ;
CODE_0D894B:        0A            ASL A                     ;
CODE_0D894C:        AA            TAX                       ;
CODE_0D894D:        C2 20         REP #$20                  ;
CODE_0D894F:        BD 50 0E      LDA $0E50,x               ;
CODE_0D8952:        85 E2         STA $E2                   ;
CODE_0D8954:        18            CLC                       ;
CODE_0D8955:        69 08 00      ADC #$0008                ;
CODE_0D8958:        85 DE         STA $DE                   ;
CODE_0D895A:        E2 20         SEP #$20                  ;
CODE_0D895C:        A6 E0         LDX $E0                   ;
CODE_0D895E:        64 DD         STZ $DD                   ;
CODE_0D8960:        A5 E3         LDA $E3                   ;
CODE_0D8962:        F0 06         BEQ CODE_0D896A           ;
CODE_0D8964:        A5 DD         LDA $DD                   ;
CODE_0D8966:        09 01         ORA #$01                  ;
CODE_0D8968:        85 DD         STA $DD                   ;
CODE_0D896A:        A5 DD         LDA $DD                   ;
CODE_0D896C:        99 00 0C      STA $0C00,y               ;
CODE_0D896F:        BD 10 01      LDA $0110,x               ;
CODE_0D8972:        C9 06         CMP #$06                  ;
CODE_0D8974:        B0 04         BCS CODE_0D897A           ;
CODE_0D8976:        64 DD         STZ $DD                   ;
CODE_0D8978:        80 08         BRA CODE_0D8982           ;

CODE_0D897A:        C9 0B         CMP #$0B                  ;
CODE_0D897C:        F0 F8         BEQ CODE_0D8976           ;
CODE_0D897E:        A9 02         LDA #$02                  ;
CODE_0D8980:        85 DD         STA $DD                   ;
CODE_0D8982:        A5 DF         LDA $DF                   ;
CODE_0D8984:        F0 06         BEQ CODE_0D898C           ;
CODE_0D8986:        A5 DD         LDA $DD                   ;
CODE_0D8988:        09 01         ORA #$01                  ;
CODE_0D898A:        85 DD         STA $DD                   ;
CODE_0D898C:        A5 DD         LDA $DD                   ;
CODE_0D898E:        99 04 0C      STA $0C04,y               ;
CODE_0D8991:        A5 E2         LDA $E2                   ;
CODE_0D8993:        99 00 08      STA $0800,y               ;
CODE_0D8996:        A5 DE         LDA $DE                   ;
CODE_0D8998:        99 04 08      STA $0804,y               ;
CODE_0D899B:        BD 10 01      LDA $0110,x               ;
CODE_0D899E:        0A            ASL A                     ;
CODE_0D899F:        AA            TAX                       ;
CODE_0D89A0:        BD B1 88      LDA DATA_0D88B1,x               ;
CODE_0D89A3:        99 02 08      STA $0802,y               ;
CODE_0D89A6:        BD B2 88      LDA DATA_0D88B1+1,x               ;
CODE_0D89A9:        99 06 08      STA $0806,y               ;
CODE_0D89AC:        AA            TAX                       ;
CODE_0D89AD:        A9 32         LDA #$32                  ;
CODE_0D89AF:        99 03 08      STA $0803,y               ;
CODE_0D89B2:        E0 0E         CPX #$0E                  ;
CODE_0D89B4:        D0 01         BNE CODE_0D89B7           ;
CODE_0D89B6:        1A            INC A                     ;
CODE_0D89B7:        99 07 08      STA $0807,y               ;
CODE_0D89BA:        A6 9E         LDX $9E                   ;
CODE_0D89BC:        60            RTS                       ;

CODE_0D89BD:        AD 3C 07      LDA $073C                 ;
CODE_0D89C0:        0A            ASL A                     ;
CODE_0D89C1:        AA            TAX                       ;
CODE_0D89C2:        7C C5 89      JMP (PNTR_0D89C5,x)       ;

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

CODE_0D89E5:        AD 70 07      LDA $0770                 ;
CODE_0D89E8:        F0 36         BEQ CODE_0D8A20           ;
CODE_0D89EA:        A2 03         LDX #$03                  ;
CODE_0D89EC:        80 2A         BRA CODE_0D8A18           ;

CODE_0D89EE:        AD 44 07      LDA $0744                 ;
CODE_0D89F1:        48            PHA                       ;
CODE_0D89F2:        AD 56 07      LDA $0756                 ;
CODE_0D89F5:        48            PHA                       ;
CODE_0D89F6:        9C 56 07      STZ $0756                 ;
CODE_0D89F9:        A9 02         LDA #$02                  ;
CODE_0D89FB:        8D 44 07      STA $0744                 ;
CODE_0D89FE:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0D8A02:        68            PLA                       ;
CODE_0D8A03:        8D 56 07      STA $0756                 ;
CODE_0D8A06:        68            PLA                       ;
CODE_0D8A07:        8D 44 07      STA $0744                 ;
CODE_0D8A0A:        4C C7 8B      JMP CODE_0D8BC7           ;

CODE_0D8A0D:        A5 5C         LDA $5C                   ;
CODE_0D8A0F:        22 F6 D8 0F   JSL CODE_0FD8F6           ;
CODE_0D8A13:        22 47 91 0E   JSL CODE_0E9147           ;
CODE_0D8A17:        60            RTS                       ;

CODE_0D8A18:        9C 73 07      STZ $0773                 ;
CODE_0D8A1B:        A9 01         LDA #$01                  ;
CODE_0D8A1D:        8D 00 12      STA $1200                 ;
CODE_0D8A20:        4C C7 8B      JMP CODE_0D8BC7           ;

CODE_0D8A23:        22 B8 98 0E   JSL CODE_0E98B8           ;
CODE_0D8A27:        60            RTS                       ;

CODE_0D8A28:        EE 3C 07      INC $073C                 ;
CODE_0D8A2B:        60            RTS                       ;

CODE_0D8A2C:        8D 73 07      STA $0773                 ;
CODE_0D8A2F:        4C C7 8B      JMP CODE_0D8BC7           ;

CODE_0D8A32:        A9 00         LDA #$00                  ;
CODE_0D8A34:        20 BF 8D      JSR CODE_0D8DBF           ;
CODE_0D8A37:        AD 53 07      LDA $0753                 ;
CODE_0D8A3A:        F0 17         BEQ CODE_0D8A53           ;
CODE_0D8A3C:        A9 15         LDA #$15                  ;
CODE_0D8A3E:        8D 06 17      STA $1706                 ;
CODE_0D8A41:        A9 1E         LDA #$1E                  ;
CODE_0D8A43:        8D 08 17      STA $1708                 ;
CODE_0D8A46:        A9 12         LDA #$12                  ;
CODE_0D8A48:        8D 0A 17      STA $170A                 ;
CODE_0D8A4B:        8D 0E 17      STA $170E                 ;
CODE_0D8A4E:        A9 10         LDA #$10                  ;
CODE_0D8A50:        8D 0C 17      STA $170C                 ;
CODE_0D8A53:        4C C7 8B      JMP CODE_0D8BC7           ;

CODE_0D8A56:        20 2D BB      JSR CODE_0DBB2D           ;
CODE_0D8A59:        C2 30         REP #$30                  ;
CODE_0D8A5B:        AE 00 17      LDX $1700                 ;
CODE_0D8A5E:        A9 58 73      LDA #$7358                ;
CODE_0D8A61:        9D 02 17      STA $1702,x               ;
CODE_0D8A64:        A9 00 05      LDA #$0500                ;
CODE_0D8A67:        9D 04 17      STA $1704,x               ;
CODE_0D8A6A:        E2 20         SEP #$20                  ;
CODE_0D8A6C:        AD 5F 07      LDA $075F                 ;
CODE_0D8A6F:        1A            INC A                     ;
CODE_0D8A70:        9D 06 17      STA $1706,x               ;
CODE_0D8A73:        A9 20         LDA #$20                  ;
CODE_0D8A75:        9D 07 17      STA $1707,x               ;
CODE_0D8A78:        9D 09 17      STA $1709,x               ;
CODE_0D8A7B:        9D 0B 17      STA $170B,x               ;
CODE_0D8A7E:        A9 24         LDA #$24                  ;
CODE_0D8A80:        9D 08 17      STA $1708,x               ;
CODE_0D8A83:        AD 5C 07      LDA $075C                 ;
CODE_0D8A86:        1A            INC A                     ;
CODE_0D8A87:        9D 0A 17      STA $170A,x               ;
CODE_0D8A8A:        A9 FF         LDA #$FF                  ;
CODE_0D8A8C:        9D 0C 17      STA $170C,x               ;
CODE_0D8A8F:        AD 70 07      LDA $0770                 ;
CODE_0D8A92:        D0 1C         BNE CODE_0D8AB0           ;
CODE_0D8A94:        AF F2 1F 70   LDA $701FF2               ;
CODE_0D8A98:        D0 16         BNE CODE_0D8AB0           ;
CODE_0D8A9A:        AF 05 FB 7F   LDA $7FFB05               ;
CODE_0D8A9E:        30 10         BMI CODE_0D8AB0           ;
CODE_0D8AA0:        AF 00 FB 7F   LDA $7FFB00               ;
CODE_0D8AA4:        1A            INC A                     ;
CODE_0D8AA5:        9D 06 17      STA $1706,x               ;
CODE_0D8AA8:        AF 01 FB 7F   LDA $7FFB01               ;
CODE_0D8AAC:        1A            INC A                     ;
CODE_0D8AAD:        9D 0A 17      STA $170A,x               ;
CODE_0D8AB0:        C2 20         REP #$20                  ;
CODE_0D8AB2:        8A            TXA                       ;
CODE_0D8AB3:        18            CLC                       ;
CODE_0D8AB4:        69 0A 00      ADC #$000A                ;
CODE_0D8AB7:        8D 00 17      STA $1700                 ;
CODE_0D8ABA:        E2 30         SEP #$30                  ;
CODE_0D8ABC:        4C C7 8B      JMP CODE_0D8BC7           ;

CODE_0D8ABF:        AD 59 07      LDA $0759                 ;
CODE_0D8AC2:        F0 16         BEQ CODE_0D8ADA           ;
CODE_0D8AC4:        9C 59 07      STZ $0759                 ;
CODE_0D8AC7:        A0 00         LDY #$00                  ;
CODE_0D8AC9:        20 1C 84      JSR CODE_0D841C           ;
CODE_0D8ACC:        22 2E 8D 0E   JSL CODE_0E8D2E           ;
CODE_0D8AD0:        A9 01         LDA #$01                  ;
CODE_0D8AD2:        8D D6 0E      STA $0ED6                 ;
CODE_0D8AD5:        A9 02         LDA #$02                  ;
CODE_0D8AD7:        4C 02 8B      JMP CODE_0D8B02           ;

CODE_0D8ADA:        EE 3C 07      INC $073C                 ;
CODE_0D8ADD:        4C C7 8B      JMP CODE_0D8BC7           ;

CODE_0D8AE0:        AD 70 07      LDA $0770                 ;
CODE_0D8AE3:        F0 49         BEQ CODE_0D8B2E           ;
CODE_0D8AE5:        C9 03         CMP #$03                  ;
CODE_0D8AE7:        F0 4B         BEQ CODE_0D8B34           ;
CODE_0D8AE9:        AD 52 07      LDA $0752                 ;
CODE_0D8AEC:        D0 40         BNE CODE_0D8B2E           ;
CODE_0D8AEE:        A4 5C         LDY $5C                   ;
CODE_0D8AF0:        C0 03         CPY #$03                  ;
CODE_0D8AF2:        F0 05         BEQ CODE_0D8AF9           ;
CODE_0D8AF4:        AD 69 07      LDA $0769                 ;
CODE_0D8AF7:        D0 35         BNE CODE_0D8B2E           ;
CODE_0D8AF9:        20 5F F8      JSR CODE_0DF85F           ;
CODE_0D8AFC:        22 43 8F 0E   JSL CODE_0E8F43           ;
CODE_0D8B00:        A9 01         LDA #$01                  ;
CODE_0D8B02:        20 BF 8D      JSR CODE_0D8DBF           ;
CODE_0D8B05:        20 E7 8E      JSR CODE_0D8EE7           ;
CODE_0D8B08:        9C 04 12      STZ $1204                 ;
CODE_0D8B0B:        9C 05 12      STZ $1205                 ;
CODE_0D8B0E:        9C 06 12      STZ $1206                 ;
CODE_0D8B11:        9C 09 12      STZ $1209                 ;
CODE_0D8B14:        A9 20         LDA #$20                  ;
CODE_0D8B16:        8D 0A 12      STA $120A                 ;
CODE_0D8B19:        9C 03 12      STZ $1203                 ;
CODE_0D8B1C:        A9 02         LDA #$02                  ;
CODE_0D8B1E:        8D 7F 0E      STA $0E7F                 ;
CODE_0D8B21:        9C 4F 0E      STZ $0E4F                 ;
CODE_0D8B24:        9C 01 12      STZ $1201                 ;
CODE_0D8B27:        9C 7E 0E      STZ $0E7E                 ;
CODE_0D8B2A:        9C 74 07      STZ $0774                 ;
CODE_0D8B2D:        60            RTS                       ;

CODE_0D8B2E:        A9 09         LDA #$09                  ;
CODE_0D8B30:        8D 3C 07      STA $073C                 ;
CODE_0D8B33:        60            RTS                       ;

CODE_0D8B34:        9C 04 12      STZ $1204                 ;
CODE_0D8B37:        9C 05 12      STZ $1205                 ;
CODE_0D8B3A:        9C 06 12      STZ $1206                 ;
CODE_0D8B3D:        9C 09 12      STZ $1209                 ;
CODE_0D8B40:        A9 20         LDA #$20                  ;
CODE_0D8B42:        8D 0A 12      STA $120A                 ;
CODE_0D8B45:        9C 03 12      STZ $1203                 ;
CODE_0D8B48:        AD 74 07      LDA $0774                 ;
CODE_0D8B4B:        F0 12         BEQ CODE_0D8B5F           ;
CODE_0D8B4D:        9C 4F 0E      STZ $0E4F                 ;
CODE_0D8B50:        9C 74 07      STZ $0774                 ;
CODE_0D8B53:        9C 01 12      STZ $1201                 ;
CODE_0D8B56:        A9 02         LDA #$02                  ;
CODE_0D8B58:        8D 7F 0E      STA $0E7F                 ;
CODE_0D8B5B:        22 2E 8D 0E   JSL CODE_0E8D2E           ;
CODE_0D8B5F:        20 CA 99      JSR CODE_0D99CA           ;
CODE_0D8B62:        A9 09         LDA #$09                  ;
CODE_0D8B64:        8D B0 07      STA $07B0                 ;
CODE_0D8B67:        A9 03         LDA #$03                  ;
CODE_0D8B69:        20 BF 8D      JSR CODE_0D8DBF           ;
CODE_0D8B6C:        4C D0 8B      JMP CODE_0D8BD0           ;

CODE_0D8B6F:        AD 74 07      LDA $0774                 ;
CODE_0D8B72:        F0 06         BEQ CODE_0D8B7A           ;
CODE_0D8B74:        C9 01         CMP #$01                  ;
CODE_0D8B76:        F0 0F         BEQ CODE_0D8B87           ;
CODE_0D8B78:        80 0A         BRA CODE_0D8B84           ;

CODE_0D8B7A:        A9 01         LDA #$01                  ;
CODE_0D8B7C:        8D 7F 0E      STA $0E7F                 ;
CODE_0D8B7F:        9C 4F 0E      STZ $0E4F                 ;
CODE_0D8B82:        80 18         BRA CODE_0D8B9C           ;

CODE_0D8B84:        EE 74 07      INC $0774                 ;
CODE_0D8B87:        20 54 A0      JSR CODE_0DA054           ;
CODE_0D8B8A:        AD 1F 07      LDA $071F                 ;
CODE_0D8B8D:        D0 F8         BNE CODE_0D8B87           ;
CODE_0D8B8F:        CE 1E 07      DEC $071E                 ;
CODE_0D8B92:        10 03         BPL CODE_0D8B97           ;
CODE_0D8B94:        EE 3C 07      INC $073C                 ;
CODE_0D8B97:        A9 06         LDA #$06                  ;
CODE_0D8B99:        8D 73 07      STA $0773                 ;
CODE_0D8B9C:        60            RTS                       ;

CODE_0D8B9D:        AD 70 07      LDA $0770                 ;
CODE_0D8BA0:        D0 2E         BNE CODE_0D8BD0           ;
CODE_0D8BA2:        22 93 E8 0F   JSL CODE_0FE893           ;
CODE_0D8BA6:        9C C2 0E      STZ $0EC2                 ;
CODE_0D8BA9:        A9 80         LDA #$80                  ;
CODE_0D8BAB:        8D D6 0E      STA $0ED6                 ;
CODE_0D8BAE:        A9 05         LDA #$05                  ;
CODE_0D8BB0:        4C 2C 8A      JMP CODE_0D8A2C           ;

CODE_0D8BB3:        AD 70 07      LDA $0770                 ;
CODE_0D8BB6:        D0 18         BNE CODE_0D8BD0           ;
CODE_0D8BB8:        A2 00         LDX #$00                  ;
CODE_0D8BBA:        9D 00 03      STA $0300,x               ;
CODE_0D8BBD:        9D 00 04      STA $0400,x               ;
CODE_0D8BC0:        CA            DEX                       ;
CODE_0D8BC1:        D0 F7         BNE CODE_0D8BBA           ;
CODE_0D8BC3:        22 17 F3 0F   JSL CODE_0FF317           ;
CODE_0D8BC7:        EE 3C 07      INC $073C                 ;
CODE_0D8BCA:        60            RTS                       ;

CODE_0D8BCB:        A9 FA         LDA #$FA                  ;
CODE_0D8BCD:        20 30 BB      JSR CODE_0DBB30           ;
CODE_0D8BD0:        EE 72 07      INC $0772                 ;
CODE_0D8BD3:        60            RTS                       ;

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

CODE_0D8DB7:        AD 7A 07      LDA $077A                 ;
CODE_0D8DBA:        F0 18         BEQ CODE_0D8DD4           ;
CODE_0D8DBC:        C8            INY                       ;
CODE_0D8DBD:        80 15         BRA CODE_0D8DD4           ;

CODE_0D8DBF:        48            PHA                       ;
CODE_0D8DC0:        0A            ASL A                     ;
CODE_0D8DC1:        A8            TAY                       ;
CODE_0D8DC2:        F0 F3         BEQ CODE_0D8DB7           ;
CODE_0D8DC4:        C0 04         CPY #$04                  ;
CODE_0D8DC6:        90 0C         BCC CODE_0D8DD4           ;
CODE_0D8DC8:        C0 08         CPY #$08                  ;
CODE_0D8DCA:        90 02         BCC CODE_0D8DCE           ;
CODE_0D8DCC:        A0 08         LDY #$08                  ;
CODE_0D8DCE:        AD 7A 07      LDA $077A                 ;
CODE_0D8DD1:        D0 01         BNE CODE_0D8DD4           ;
CODE_0D8DD3:        C8            INY                       ;
CODE_0D8DD4:        84 F3         STY $F3                   ;
CODE_0D8DD6:        BE A3 8D      LDX DATA_0D8DA3,y               ;
CODE_0D8DD9:        AD 5F 07      LDA $075F                 ;
CODE_0D8DDC:        C9 08         CMP #$08                  ;
CODE_0D8DDE:        D0 0A         BNE CODE_0D8DEA           ;
CODE_0D8DE0:        C0 07         CPY #$07                  ;
CODE_0D8DE2:        D0 06         BNE CODE_0D8DEA           ;
CODE_0D8DE4:        88            DEY                       ;
CODE_0D8DE5:        BE A3 8D      LDX DATA_0D8DA3,y               ;
CODE_0D8DE8:        84 F3         STY $F3                   ;
CODE_0D8DEA:        C2 30         REP #$30                  ;
CODE_0D8DEC:        B9 AD 8D      LDA DATA_0D8DAD,y               ;
CODE_0D8DEF:        29 FF 00      AND #$00FF                ;
CODE_0D8DF2:        EB            XBA                       ;
CODE_0D8DF3:        85 DE         STA $DE                   ;
CODE_0D8DF5:        8A            TXA                       ;
CODE_0D8DF6:        29 FF 00      AND #$00FF                ;
CODE_0D8DF9:        05 DE         ORA $DE                   ;
CODE_0D8DFB:        AA            TAX                       ;
CODE_0D8DFC:        A0 00 00      LDY #$0000                ;
CODE_0D8DFF:        E2 20         SEP #$20                  ;
CODE_0D8E01:        BD D4 8B      LDA DATA_0D8BD4,x               ;
CODE_0D8E04:        C9 FF         CMP #$FF                  ;
CODE_0D8E06:        F0 07         BEQ CODE_0D8E0F           ;
CODE_0D8E08:        99 02 17      STA $1702,y               ;
CODE_0D8E0B:        E8            INX                       ;
CODE_0D8E0C:        C8            INY                       ;
CODE_0D8E0D:        80 F2         BRA CODE_0D8E01           ;

CODE_0D8E0F:        A9 FF         LDA #$FF                  ;
CODE_0D8E11:        99 02 17      STA $1702,y               ;
CODE_0D8E14:        E2 10         SEP #$10                  ;
CODE_0D8E16:        68            PLA                       ;
CODE_0D8E17:        AA            TAX                       ;
CODE_0D8E18:        C9 04         CMP #$04                  ;
CODE_0D8E1A:        90 03         BCC CODE_0D8E1F           ;
CODE_0D8E1C:        4C B3 8E      JMP CODE_0D8EB3           ;

CODE_0D8E1F:        CA            DEX                       ;
CODE_0D8E20:        D0 46         BNE CODE_0D8E68           ;
CODE_0D8E22:        AD 5A 07      LDA $075A                 ;
CODE_0D8E25:        1A            INC A                     ;
CODE_0D8E26:        C9 0A         CMP #$0A                  ;
CODE_0D8E28:        90 2C         BCC CODE_0D8E56           ;
CODE_0D8E2A:        64 E4         STZ $E4                   ;
CODE_0D8E2C:        64 E5         STZ $E5                   ;
CODE_0D8E2E:        38            SEC                       ;
CODE_0D8E2F:        E9 64         SBC #$64                  ;
CODE_0D8E31:        90 04         BCC CODE_0D8E37           ;
CODE_0D8E33:        E6 E4         INC $E4                   ;
CODE_0D8E35:        80 F7         BRA CODE_0D8E2E           ;

CODE_0D8E37:        18            CLC                       ;
CODE_0D8E38:        69 64         ADC #$64                  ;
CODE_0D8E3A:        38            SEC                       ;
CODE_0D8E3B:        E9 0A         SBC #$0A                  ;
CODE_0D8E3D:        90 04         BCC CODE_0D8E43           ;
CODE_0D8E3F:        E6 E5         INC $E5                   ;
CODE_0D8E41:        80 F7         BRA CODE_0D8E3A           ;

CODE_0D8E43:        18            CLC                       ;
CODE_0D8E44:        69 0A         ADC #$0A                  ;
CODE_0D8E46:        85 E6         STA $E6                   ;
CODE_0D8E48:        A4 E4         LDY $E4                   ;
CODE_0D8E4A:        F0 03         BEQ CODE_0D8E4F           ;
CODE_0D8E4C:        8C 0E 17      STY $170E                 ;
CODE_0D8E4F:        A5 E5         LDA $E5                   ;
CODE_0D8E51:        8D 10 17      STA $1710                 ;
CODE_0D8E54:        A5 E6         LDA $E6                   ;
CODE_0D8E56:        8D 12 17      STA $1712                 ;
CODE_0D8E59:        AC 5F 07      LDY $075F                 ;
CODE_0D8E5C:        C8            INY                       ;
CODE_0D8E5D:        8C 2C 17      STY $172C                 ;
CODE_0D8E60:        AC 5C 07      LDY $075C                 ;
CODE_0D8E63:        C8            INY                       ;
CODE_0D8E64:        8C 30 17      STY $1730                 ;
CODE_0D8E67:        60            RTS                       ;

CODE_0D8E68:        AD 7A 07      LDA $077A                 ;
CODE_0D8E6B:        F0 45         BEQ CODE_0D8EB2           ;
CODE_0D8E6D:        AD 53 07      LDA $0753                 ;
CODE_0D8E70:        CA            DEX                       ;
CODE_0D8E71:        D0 16         BNE CODE_0D8E89           ;
CODE_0D8E73:        AC 70 07      LDY $0770                 ;
CODE_0D8E76:        C0 03         CPY #$03                  ;
CODE_0D8E78:        F0 0F         BEQ CODE_0D8E89           ;
CODE_0D8E7A:        AD 61 07      LDA $0761                 ;
CODE_0D8E7D:        30 07         BMI CODE_0D8E86           ;
CODE_0D8E7F:        AD 53 07      LDA $0753                 ;
CODE_0D8E82:        49 01         EOR #$01                  ;
CODE_0D8E84:        80 03         BRA CODE_0D8E89           ;

CODE_0D8E86:        AD 53 07      LDA $0753                 ;
CODE_0D8E89:        4A            LSR A                     ;
CODE_0D8E8A:        90 26         BCC CODE_0D8EB2           ;
CODE_0D8E8C:        A0 09         LDY #$09                  ;
CODE_0D8E8E:        A5 F3         LDA $F3                   ;
CODE_0D8E90:        C9 04         CMP #$04                  ;
CODE_0D8E92:        F0 04         BEQ CODE_0D8E98           ;
CODE_0D8E94:        C9 06         CMP #$06                  ;
CODE_0D8E96:        D0 11         BNE CODE_0D8EA9           ;
CODE_0D8E98:        B9 7A 8D      LDA DATA_0D8D7A,y               ;
CODE_0D8E9B:        99 06 17      STA $1706,y               ;
CODE_0D8E9E:        B9 84 8D      LDA DATA_0D8D84,y               ;
CODE_0D8EA1:        99 14 17      STA $1714,y               ;
CODE_0D8EA4:        88            DEY                       ;
CODE_0D8EA5:        10 F1         BPL CODE_0D8E98           ;
CODE_0D8EA7:        80 09         BRA CODE_0D8EB2           ;

CODE_0D8EA9:        B9 8E 8D      LDA DATA_0D8D8E,y               ;
CODE_0D8EAC:        99 06 17      STA $1706,y               ;
CODE_0D8EAF:        88            DEY                       ;
CODE_0D8EB0:        10 F7         BPL CODE_0D8EA9           ;
CODE_0D8EB2:        60            RTS                       ;

CODE_0D8EB3:        48            PHA                       ;
CODE_0D8EB4:        AC 00 17      LDY $1700                 ;
CODE_0D8EB7:        DA            PHX                       ;
CODE_0D8EB8:        A2 00         LDX #$00                  ;
CODE_0D8EBA:        BD 39 8D      LDA DATA_0D8D39,x               ;
CODE_0D8EBD:        99 02 17      STA $1702,y               ;
CODE_0D8EC0:        E8            INX                       ;
CODE_0D8EC1:        C8            INY                       ;
CODE_0D8EC2:        C9 FF         CMP #$FF                  ;
CODE_0D8EC4:        D0 F4         BNE CODE_0D8EBA           ;
CODE_0D8EC6:        FA            PLX                       ;
CODE_0D8EC7:        68            PLA                       ;
CODE_0D8EC8:        38            SEC                       ;
CODE_0D8EC9:        E9 80         SBC #$80                  ;
CODE_0D8ECB:        AA            TAX                       ;
CODE_0D8ECC:        8C 00 17      STY $1700                 ;
CODE_0D8ECF:        BD 98 8D      LDA DATA_0D8D98,x               ;
CODE_0D8ED2:        99 F9 16      STA $16F9,y               ;
CODE_0D8ED5:        60            RTS                       ;

CODE_0D8ED6:        AD B0 07      LDA $07B0                 ;
CODE_0D8ED9:        D0 14         BNE CODE_0D8EEF           ;
CODE_0D8EDB:        AD 70 07      LDA $0770                 ;
CODE_0D8EDE:        C9 03         CMP #$03                  ;
CODE_0D8EE0:        F0 05         BEQ CODE_0D8EE7           ;
CODE_0D8EE2:        A9 01         LDA #$01                  ;
CODE_0D8EE4:        8D 7F 0E      STA $0E7F                 ;
CODE_0D8EE7:        A9 07         LDA #$07                  ;
CODE_0D8EE9:        8D B0 07      STA $07B0                 ;
CODE_0D8EEC:        EE 3C 07      INC $073C                 ;
CODE_0D8EEF:        60            RTS                       ;

CODE_0D8EF0:        AD C9 0E      LDA $0EC9                 ;
CODE_0D8EF3:        D0 FA         BNE CODE_0D8EEF           ;
CODE_0D8EF5:        C2 30         REP #$30                  ;
CODE_0D8EF7:        AC 00 1A      LDY $1A00                 ;
CODE_0D8EFA:        84 00         STY $00                   ;
CODE_0D8EFC:        AD 20 07      LDA $0720                 ;
CODE_0D8EFF:        99 02 1A      STA $1A02,y               ;
CODE_0D8F02:        EB            XBA                       ;
CODE_0D8F03:        8D CC 0E      STA $0ECC                 ;
CODE_0D8F06:        A9 80 3D      LDA #$3D80                ;
CODE_0D8F09:        99 04 1A      STA $1A04,y               ;
CODE_0D8F0C:        A9 24 00      LDA #$0024                ;
CODE_0D8F0F:        99 06 1A      STA $1A06,y               ;
CODE_0D8F12:        99 08 1A      STA $1A08,y               ;
CODE_0D8F15:        99 0A 1A      STA $1A0A,y               ;
CODE_0D8F18:        99 0C 1A      STA $1A0C,y               ;
CODE_0D8F1B:        E2 30         SEP #$30                  ;
CODE_0D8F1D:        A2 00         LDX #$00                  ;
CODE_0D8F1F:        AD E7 0E      LDA $0EE7                 ;
CODE_0D8F22:        F0 10         BEQ CODE_0D8F34           ;
CODE_0D8F24:        8D E6 0E      STA $0EE6                 ;
CODE_0D8F27:        AD 20 07      LDA $0720                 ;
CODE_0D8F2A:        8D F5 0E      STA $0EF5                 ;
CODE_0D8F2D:        AD 21 07      LDA $0721                 ;
CODE_0D8F30:        1A            INC A                     ;
CODE_0D8F31:        8D F4 0E      STA $0EF4                 ;
CODE_0D8F34:        86 02         STX $02                   ;
CODE_0D8F36:        BD A1 06      LDA $06A1,x               ;
CODE_0D8F39:        29 C0         AND #$C0                  ;
CODE_0D8F3B:        0A            ASL A                     ;
CODE_0D8F3C:        2A            ROL A                     ;
CODE_0D8F3D:        2A            ROL A                     ;
CODE_0D8F3E:        A8            TAY                       ;
CODE_0D8F3F:        B9 0B 91      LDA DATA_0D910B,y               ;
CODE_0D8F42:        85 06         STA $06                   ;
CODE_0D8F44:        B9 0F 91      LDA DATA_0D910B+4,y               ;
CODE_0D8F47:        85 07         STA $07                   ;
CODE_0D8F49:        C2 30         REP #$30                  ;
CODE_0D8F4B:        8A            TXA                       ;
CODE_0D8F4C:        29 FF 00      AND #$00FF                ;
CODE_0D8F4F:        AA            TAX                       ;
CODE_0D8F50:        BD A1 06      LDA $06A1,x               ;
CODE_0D8F53:        29 3F 00      AND #$003F                ;
CODE_0D8F56:        0A            ASL A                     ;
CODE_0D8F57:        0A            ASL A                     ;
CODE_0D8F58:        0A            ASL A                     ;
CODE_0D8F59:        85 03         STA $03                   ;
CODE_0D8F5B:        AD 1F 07      LDA $071F                 ;
CODE_0D8F5E:        29 01 00      AND #$0001                ;
CODE_0D8F61:        49 01 00      EOR #$0001                ;
CODE_0D8F64:        0A            ASL A                     ;
CODE_0D8F65:        0A            ASL A                     ;
CODE_0D8F66:        65 03         ADC $03                   ;
CODE_0D8F68:        A8            TAY                       ;
CODE_0D8F69:        A6 00         LDX $00                   ;
CODE_0D8F6B:        B1 06         LDA ($06),y               ;
CODE_0D8F6D:        9D 0E 1A      STA $1A0E,x               ;
CODE_0D8F70:        C8            INY                       ;
CODE_0D8F71:        C8            INY                       ;
CODE_0D8F72:        B1 06         LDA ($06),y               ;
CODE_0D8F74:        9D 10 1A      STA $1A10,x               ;
CODE_0D8F77:        E6 00         INC $00                   ;
CODE_0D8F79:        E6 00         INC $00                   ;
CODE_0D8F7B:        E6 00         INC $00                   ;
CODE_0D8F7D:        E6 00         INC $00                   ;
CODE_0D8F7F:        E2 30         SEP #$30                  ;
CODE_0D8F81:        A6 02         LDX $02                   ;
CODE_0D8F83:        E8            INX                       ;
CODE_0D8F84:        E0 0D         CPX #$0D                  ;
CODE_0D8F86:        B0 03         BCS CODE_0D8F8B           ;
CODE_0D8F88:        4C 34 8F      JMP CODE_0D8F34           ;

CODE_0D8F8B:        C2 30         REP #$30                  ;
CODE_0D8F8D:        AC 00 1A      LDY $1A00                 ;
CODE_0D8F90:        B9 0E 1A      LDA $1A0E,y               ;
CODE_0D8F93:        C9 A2 18      CMP #$18A2                ;
CODE_0D8F96:        F0 05         BEQ CODE_0D8F9D           ;
CODE_0D8F98:        C9 A3 18      CMP #$18A3                ;
CODE_0D8F9B:        D0 0C         BNE CODE_0D8FA9           ;
CODE_0D8F9D:        99 06 1A      STA $1A06,y               ;
CODE_0D8FA0:        99 08 1A      STA $1A08,y               ;
CODE_0D8FA3:        99 0A 1A      STA $1A0A,y               ;
CODE_0D8FA6:        99 0C 1A      STA $1A0C,y               ;
CODE_0D8FA9:        A5 00         LDA $00                   ;
CODE_0D8FAB:        18            CLC                       ;
CODE_0D8FAC:        69 0E 00      ADC #$000E                ;
CODE_0D8FAF:        A8            TAY                       ;
CODE_0D8FB0:        A9 FF FF      LDA #$FFFF                ;
CODE_0D8FB3:        99 02 1A      STA $1A02,y               ;
CODE_0D8FB6:        8C 00 1A      STY $1A00                 ;
CODE_0D8FB9:        AD 43 07      LDA $0743                 ;
CODE_0D8FBC:        29 FF 00      AND #$00FF                ;
CODE_0D8FBF:        D0 46         BNE CODE_0D9007           ;
CODE_0D8FC1:        A5 5C         LDA $5C                   ;
CODE_0D8FC3:        29 FF 00      AND #$00FF                ;
CODE_0D8FC6:        F0 3F         BEQ CODE_0D9007           ;
CODE_0D8FC8:        C9 03 00      CMP #$0003                ;
CODE_0D8FCB:        F0 3A         BEQ CODE_0D9007           ;
CODE_0D8FCD:        B9 F8 19      LDA $19F8,y               ;
CODE_0D8FD0:        C9 6A 08      CMP #$086A                ;
CODE_0D8FD3:        F0 05         BEQ CODE_0D8FDA           ;
CODE_0D8FD5:        C9 63 08      CMP #$0863                ;
CODE_0D8FD8:        D0 03         BNE CODE_0D8FDD           ;
CODE_0D8FDA:        EE CE 0E      INC $0ECE                 ;
CODE_0D8FDD:        B9 F8 19      LDA $19F8,y               ;
CODE_0D8FE0:        C9 24 00      CMP #$0024                ;
CODE_0D8FE3:        F0 15         BEQ CODE_0D8FFA           ;
CODE_0D8FE5:        C9 A4 10      CMP #$10A4                ;
CODE_0D8FE8:        F0 10         BEQ CODE_0D8FFA           ;
CODE_0D8FEA:        C9 08 0A      CMP #$0A08                ;
CODE_0D8FED:        D0 14         BNE CODE_0D9003           ;
CODE_0D8FEF:        AD CE 0E      LDA $0ECE                 ;
CODE_0D8FF2:        29 00 FF      AND #$FF00                ;
CODE_0D8FF5:        8D CE 0E      STA $0ECE                 ;
CODE_0D8FF8:        80 09         BRA CODE_0D9003           ;

CODE_0D8FFA:        AD CE 0E      LDA $0ECE                 ;
CODE_0D8FFD:        09 00 01      ORA #$0100                ;
CODE_0D9000:        8D CE 0E      STA $0ECE                 ;
CODE_0D9003:        22 FF 87 0E   JSL CODE_0E87FF           ;
CODE_0D9007:        E2 30         SEP #$30                  ;
CODE_0D9009:        EE 21 07      INC $0721                 ;
CODE_0D900C:        AD 21 07      LDA $0721                 ;
CODE_0D900F:        29 1F         AND #$1F                  ;
CODE_0D9011:        D0 0B         BNE CODE_0D901E           ;
CODE_0D9013:        9C 21 07      STZ $0721                 ;
CODE_0D9016:        AD 20 07      LDA $0720                 ;
CODE_0D9019:        49 04         EOR #$04                  ;
CODE_0D901B:        8D 20 07      STA $0720                 ;
CODE_0D901E:        A9 06         LDA #$06                  ;
CODE_0D9020:        8D 73 07      STA $0773                 ;
CODE_0D9023:        60            RTS                       ;

CODE_0D9024:        60            RTS                       ;

CODE_0D9025:        60            RTS                       ;

DATA_0D9026:        db $45,$0C,$45,$0C,$47,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $57,$0C,$58,$0C,$59,$0C,$5A,$0C
                    db $24,$00,$24,$00,$24,$00,$24,$00

CODE_0D9046:        AC 00 17      LDY $1700                 ;
CODE_0D9049:        C8            INY                       ;
CODE_0D904A:        A9 03         LDA #$03                  ;
CODE_0D904C:        20 94 90      JSR CODE_0D9094           ;
CODE_0D904F:        A9 06         LDA #$06                  ;
CODE_0D9051:        8D 73 07      STA $0773                 ;
CODE_0D9054:        4C 85 90      JMP CODE_0D9085           ;

CODE_0D9057:        20 63 90      JSR CODE_0D9063           ;
CODE_0D905A:        EE F2 03      INC $03F2                 ;
CODE_0D905D:        DE EE 03      DEC $03EE,x               ;
CODE_0D9060:        60            RTS                       ;

CODE_0D9061:        A9 00         LDA #$00                  ;
CODE_0D9063:        A0 03         LDY #$03                  ;
CODE_0D9065:        C9 00         CMP #$00                  ;
CODE_0D9067:        F0 14         BEQ CODE_0D907D           ;
CODE_0D9069:        A0 00         LDY #$00                  ;
CODE_0D906B:        C9 54         CMP #$54                  ;
CODE_0D906D:        F0 0E         BEQ CODE_0D907D           ;
CODE_0D906F:        C9 49         CMP #$49                  ;
CODE_0D9071:        F0 0A         BEQ CODE_0D907D           ;
CODE_0D9073:        C8            INY                       ;
CODE_0D9074:        C9 5A         CMP #$5A                  ;
CODE_0D9076:        F0 05         BEQ CODE_0D907D           ;
CODE_0D9078:        C9 4A         CMP #$4A                  ;
CODE_0D907A:        F0 01         BEQ CODE_0D907D           ;
CODE_0D907C:        C8            INY                       ;
CODE_0D907D:        98            TYA                       ;
CODE_0D907E:        AC 00 17      LDY $1700                 ;
CODE_0D9081:        C8            INY                       ;
CODE_0D9082:        20 94 90      JSR CODE_0D9094           ;
CODE_0D9085:        C2 20         REP #$20                  ;
CODE_0D9087:        AD 00 17      LDA $1700                 ;
CODE_0D908A:        18            CLC                       ;
CODE_0D908B:        69 10 00      ADC #$0010                ;
CODE_0D908E:        8D 00 17      STA $1700                 ;
CODE_0D9091:        E2 20         SEP #$20                  ;
CODE_0D9093:        60            RTS                       ;

CODE_0D9094:        86 00         STX $00                   ;
CODE_0D9096:        84 01         STY $01                   ;
CODE_0D9098:        0A            ASL A                     ;
CODE_0D9099:        0A            ASL A                     ;
CODE_0D909A:        0A            ASL A                     ;
CODE_0D909B:        AA            TAX                       ;
CODE_0D909C:        A0 00         LDY #$00                  ;
CODE_0D909E:        A5 06         LDA $06                   ;
CODE_0D90A0:        C9 D0         CMP #$D0                  ;
CODE_0D90A2:        90 02         BCC CODE_0D90A6           ;
CODE_0D90A4:        A0 04         LDY #$04                  ;
CODE_0D90A6:        84 03         STY $03                   ;
CODE_0D90A8:        29 0F         AND #$0F                  ;
CODE_0D90AA:        0A            ASL A                     ;
CODE_0D90AB:        85 04         STA $04                   ;
CODE_0D90AD:        64 05         STZ $05                   ;
CODE_0D90AF:        A5 02         LDA $02                   ;
CODE_0D90B1:        18            CLC                       ;
CODE_0D90B2:        69 20         ADC #$20                  ;
CODE_0D90B4:        0A            ASL A                     ;
CODE_0D90B5:        26 05         ROL $05                   ;
CODE_0D90B7:        0A            ASL A                     ;
CODE_0D90B8:        26 05         ROL $05                   ;
CODE_0D90BA:        65 04         ADC $04                   ;
CODE_0D90BC:        85 04         STA $04                   ;
CODE_0D90BE:        A5 05         LDA $05                   ;
CODE_0D90C0:        65 03         ADC $03                   ;
CODE_0D90C2:        85 05         STA $05                   ;
CODE_0D90C4:        A4 01         LDY $01                   ;
CODE_0D90C6:        C2 30         REP #$30                  ;
CODE_0D90C8:        98            TYA                       ;
CODE_0D90C9:        29 FF 00      AND #$00FF                ;
CODE_0D90CC:        A8            TAY                       ;
CODE_0D90CD:        8A            TXA                       ;
CODE_0D90CE:        29 FF 00      AND #$00FF                ;
CODE_0D90D1:        AA            TAX                       ;
CODE_0D90D2:        A5 04         LDA $04                   ;
CODE_0D90D4:        EB            XBA                       ;
CODE_0D90D5:        99 01 17      STA $1701,y               ;
CODE_0D90D8:        18            CLC                       ;
CODE_0D90D9:        69 00 20      ADC #$2000                ;
CODE_0D90DC:        99 09 17      STA $1709,y               ;
CODE_0D90DF:        A9 00 03      LDA #$0300                ;
CODE_0D90E2:        99 03 17      STA $1703,y               ;
CODE_0D90E5:        99 0B 17      STA $170B,y               ;
CODE_0D90E8:        BD 26 90      LDA DATA_0D9026,x               ;
CODE_0D90EB:        99 05 17      STA $1705,y               ;
CODE_0D90EE:        BD 28 90      LDA DATA_0D9026+2,x               ;
CODE_0D90F1:        99 07 17      STA $1707,y               ;
CODE_0D90F4:        BD 2A 90      LDA DATA_0D9026+4,x               ;
CODE_0D90F7:        99 0D 17      STA $170D,y               ;
CODE_0D90FA:        BD 2C 90      LDA DATA_0D9026+6,x               ;
CODE_0D90FD:        99 0F 17      STA $170F,y               ;
CODE_0D9100:        A9 FF FF      LDA #$FFFF                ;
CODE_0D9103:        99 11 17      STA $1711,y               ;
CODE_0D9106:        E2 30         SEP #$30                  ;
CODE_0D9108:        A6 00         LDX $00                   ;
CODE_0D910A:        60            RTS                       ;

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

CODE_0D9693:        0A            ASL A                     ;
CODE_0D9694:        A8            TAY                       ;
CODE_0D9695:        68            PLA                       ;
CODE_0D9696:        85 04         STA $04                   ;
CODE_0D9698:        68            PLA                       ;
CODE_0D9699:        85 05         STA $05                   ;
CODE_0D969B:        C8            INY                       ;
CODE_0D969C:        B1 04         LDA ($04),y               ;
CODE_0D969E:        85 06         STA $06                   ;
CODE_0D96A0:        C8            INY                       ;
CODE_0D96A1:        B1 04         LDA ($04),y               ;
CODE_0D96A3:        85 07         STA $07                   ;
CODE_0D96A5:        6C 06 00      JMP ($0006)               ;

CODE_0D96A8:        AD 12 42      LDA $4212                 ;
CODE_0D96AB:        4A            LSR A                     ;
CODE_0D96AC:        B0 FA         BCS CODE_0D96A8           ;
CODE_0D96AE:        9C 16 40      STZ $4016                 ;
CODE_0D96B1:        AF F4 1F 70   LDA $701FF4               ;
CODE_0D96B5:        AA            TAX                       ;
CODE_0D96B6:        BD 18 42      LDA $4218,x               ;
CODE_0D96B9:        8D F8 0F      STA $0FF8                 ;
CODE_0D96BC:        A8            TAY                       ;
CODE_0D96BD:        4D FD 0F      EOR $0FFD                 ;
CODE_0D96C0:        2D F8 0F      AND $0FF8                 ;
CODE_0D96C3:        8D FA 0F      STA $0FFA                 ;
CODE_0D96C6:        8C FD 0F      STY $0FFD                 ;
CODE_0D96C9:        BD 19 42      LDA $4219,x               ;
CODE_0D96CC:        8D F4 0F      STA $0FF4                 ;
CODE_0D96CF:        A8            TAY                       ;
CODE_0D96D0:        4D FC 0F      EOR $0FFC                 ;
CODE_0D96D3:        2D F4 0F      AND $0FF4                 ;
CODE_0D96D6:        8D F6 0F      STA $0FF6                 ;
CODE_0D96D9:        8C FC 0F      STY $0FFC                 ;
CODE_0D96DC:        60            RTS                       ;

CODE_0D96DD:        64 00         STZ $00                   ;
CODE_0D96DF:        C2 20         REP #$20                  ;
CODE_0D96E1:        9C 02 21      STZ $2102                 ;
CODE_0D96E4:        A9 04 00      LDA #$0004                ;
CODE_0D96E7:        85 01         STA $01                   ;
CODE_0D96E9:        A9 08 00      LDA #$0008                ;
CODE_0D96EC:        85 03         STA $03                   ;
CODE_0D96EE:        A9 20 02      LDA #$0220                ;
CODE_0D96F1:        85 05         STA $05                   ;
CODE_0D96F3:        A2 01         LDX #$01                  ;
CODE_0D96F5:        8E 0B 42      STX $420B                 ;
CODE_0D96F8:        E2 20         SEP #$20                  ;
CODE_0D96FA:        A9 80         LDA #$80                  ;
CODE_0D96FC:        8D 03 21      STA $2103                 ;
CODE_0D96FF:        9C 02 21      STZ $2102                 ;
CODE_0D9702:        AD 76 0B      LDA $0B76                 ;
CODE_0D9705:        D0 0D         BNE CODE_0D9714           ;
CODE_0D9707:        20 55 97      JSR CODE_0D9755           ;
CODE_0D970A:        AD 8C 02      LDA $028C                 ;
CODE_0D970D:        D0 42         BNE CODE_0D9751           ;
CODE_0D970F:        AD 8D 02      LDA $028D                 ;
CODE_0D9712:        F0 3D         BEQ CODE_0D9751           ;
CODE_0D9714:        C2 20         REP #$20                  ;
CODE_0D9716:        AD 8A 02      LDA $028A                 ;
CODE_0D9719:        8D 16 21      STA $2116                 ;
CODE_0D971C:        A9 01 18      LDA #$1801                ;
CODE_0D971F:        85 00         STA $00                   ;
CODE_0D9721:        AD 85 02      LDA $0285                 ;
CODE_0D9724:        85 02         STA $02                   ;
CODE_0D9726:        AC 87 02      LDY $0287                 ;
CODE_0D9729:        84 04         STY $04                   ;
CODE_0D972B:        AD 88 02      LDA $0288                 ;
CODE_0D972E:        85 05         STA $05                   ;
CODE_0D9730:        8E 0B 42      STX $420B                 ;
CODE_0D9733:        E2 20         SEP #$20                  ;
CODE_0D9735:        AD 76 0B      LDA $0B76                 ;
CODE_0D9738:        F0 17         BEQ CODE_0D9751           ;
CODE_0D973A:        CE 76 0B      DEC $0B76                 ;
CODE_0D973D:        F0 12         BEQ CODE_0D9751           ;
CODE_0D973F:        AD 86 02      LDA $0286                 ;
CODE_0D9742:        18            CLC                       ;
CODE_0D9743:        69 08         ADC #$08                  ;
CODE_0D9745:        8D 86 02      STA $0286                 ;
CODE_0D9748:        AD 8B 02      LDA $028B                 ;
CODE_0D974B:        18            CLC                       ;
CODE_0D974C:        69 04         ADC #$04                  ;
CODE_0D974E:        8D 8B 02      STA $028B                 ;
CODE_0D9751:        9C 8C 02      STZ $028C                 ;
CODE_0D9754:        60            RTS                       ;

CODE_0D9755:        AD 8E 02      LDA $028E                 ;
CODE_0D9758:        F0 21         BEQ CODE_0D977B           ;
CODE_0D975A:        C2 20         REP #$20                  ;
CODE_0D975C:        AD 95 02      LDA $0295                 ;
CODE_0D975F:        8D 16 21      STA $2116                 ;
CODE_0D9762:        A9 01 18      LDA #$1801                ;
CODE_0D9765:        85 00         STA $00                   ;
CODE_0D9767:        AD 8F 02      LDA $028F                 ;
CODE_0D976A:        85 02         STA $02                   ;
CODE_0D976C:        AC 91 02      LDY $0291                 ;
CODE_0D976F:        84 04         STY $04                   ;
CODE_0D9771:        AD 93 02      LDA $0293                 ;
CODE_0D9774:        85 05         STA $05                   ;
CODE_0D9776:        8E 0B 42      STX $420B                 ;
CODE_0D9779:        E2 20         SEP #$20                  ;
CODE_0D977B:        60            RTS                       ;

CODE_0D977C:        C2 10         REP #$10                  ;
CODE_0D977E:        64 06         STZ $06                   ;
CODE_0D9780:        A0 00 00      LDY #$0000                ;
CODE_0D9783:        B7 00         LDA [$00],y               ;
CODE_0D9785:        10 03         BPL CODE_0D978A           ;
CODE_0D9787:        E2 30         SEP #$30                  ;
CODE_0D9789:        60            RTS                       ;

CODE_0D978A:        85 04         STA $04                   ;
CODE_0D978C:        C8            INY                       ;
CODE_0D978D:        B7 00         LDA [$00],y               ;
CODE_0D978F:        85 03         STA $03                   ;
CODE_0D9791:        C8            INY                       ;
CODE_0D9792:        B7 00         LDA [$00],y               ;
CODE_0D9794:        29 80         AND #$80                  ;
CODE_0D9796:        0A            ASL A                     ;
CODE_0D9797:        2A            ROL A                     ;
CODE_0D9798:        85 07         STA $07                   ;
CODE_0D979A:        B7 00         LDA [$00],y               ;
CODE_0D979C:        29 40         AND #$40                  ;
CODE_0D979E:        85 05         STA $05                   ;
CODE_0D97A0:        4A            LSR A                     ;
CODE_0D97A1:        4A            LSR A                     ;
CODE_0D97A2:        4A            LSR A                     ;
CODE_0D97A3:        09 01         ORA #$01                  ;
CODE_0D97A5:        8D 10 43      STA $4310                 ;
CODE_0D97A8:        A9 18         LDA #$18                  ;
CODE_0D97AA:        8D 11 43      STA $4311                 ;
CODE_0D97AD:        C2 20         REP #$20                  ;
CODE_0D97AF:        A5 03         LDA $03                   ;
CODE_0D97B1:        8D 16 21      STA $2116                 ;
CODE_0D97B4:        B7 00         LDA [$00],y               ;
CODE_0D97B6:        EB            XBA                       ;
CODE_0D97B7:        29 FF 3F      AND #$3FFF                ;
CODE_0D97BA:        AA            TAX                       ;
CODE_0D97BB:        E8            INX                       ;
CODE_0D97BC:        8E 15 43      STX $4315                 ;
CODE_0D97BF:        C8            INY                       ;
CODE_0D97C0:        C8            INY                       ;
CODE_0D97C1:        98            TYA                       ;
CODE_0D97C2:        18            CLC                       ;
CODE_0D97C3:        65 00         ADC $00                   ;
CODE_0D97C5:        8D 12 43      STA $4312                 ;
CODE_0D97C8:        A5 05         LDA $05                   ;
CODE_0D97CA:        F0 34         BEQ CODE_0D9800           ;
CODE_0D97CC:        E8            INX                       ;
CODE_0D97CD:        8A            TXA                       ;
CODE_0D97CE:        4A            LSR A                     ;
CODE_0D97CF:        AA            TAX                       ;
CODE_0D97D0:        8E 15 43      STX $4315                 ;
CODE_0D97D3:        E2 20         SEP #$20                  ;
CODE_0D97D5:        A5 05         LDA $05                   ;
CODE_0D97D7:        4A            LSR A                     ;
CODE_0D97D8:        4A            LSR A                     ;
CODE_0D97D9:        4A            LSR A                     ;
CODE_0D97DA:        8D 10 43      STA $4310                 ;
CODE_0D97DD:        A5 07         LDA $07                   ;
CODE_0D97DF:        8D 15 21      STA $2115                 ;
CODE_0D97E2:        A9 02         LDA #$02                  ;
CODE_0D97E4:        8D 0B 42      STA $420B                 ;
CODE_0D97E7:        A9 19         LDA #$19                  ;
CODE_0D97E9:        8D 11 43      STA $4311                 ;
CODE_0D97EC:        C2 21         REP #$21                  ;
CODE_0D97EE:        98            TYA                       ;
CODE_0D97EF:        65 00         ADC $00                   ;
CODE_0D97F1:        1A            INC A                     ;
CODE_0D97F2:        8D 12 43      STA $4312                 ;
CODE_0D97F5:        A5 03         LDA $03                   ;
CODE_0D97F7:        8D 16 21      STA $2116                 ;
CODE_0D97FA:        8E 15 43      STX $4315                 ;
CODE_0D97FD:        A2 02 00      LDX #$0002                ;
CODE_0D9800:        86 03         STX $03                   ;
CODE_0D9802:        98            TYA                       ;
CODE_0D9803:        18            CLC                       ;
CODE_0D9804:        65 03         ADC $03                   ;
CODE_0D9806:        A8            TAY                       ;
CODE_0D9807:        E2 20         SEP #$20                  ;
CODE_0D9809:        A5 07         LDA $07                   ;
CODE_0D980B:        09 80         ORA #$80                  ;
CODE_0D980D:        8D 15 21      STA $2115                 ;
CODE_0D9810:        A9 02         LDA #$02                  ;
CODE_0D9812:        8D 0B 42      STA $420B                 ;
CODE_0D9815:        B7 00         LDA [$00],y               ;
CODE_0D9817:        30 03         BMI CODE_0D981C           ;
CODE_0D9819:        4C 8A 97      JMP CODE_0D978A           ;

CODE_0D981C:        E2 30         SEP #$30                  ;
CODE_0D981E:        60            RTS                       ;

DATA_0D981F:        db $EF,$00,$06,$00,$62,$00,$06,$00 ;
                    db $62,$00,$06,$00,$6D,$00,$02,$00 ;
                    db $6D,$00,$02,$00,$7A,$00,$03,$00 ;

DATA_0D9837:        db $06,$0C,$0C,$18,$18,$24 ;

CODE_0D983D:        85 00         STA $00
CODE_0D983F:        20 48 98      JSR CODE_0D9848           ;
CODE_0D9842:        A5 00         LDA $00                   ;
CODE_0D9844:        4A            LSR A                     ;
CODE_0D9845:        4A            LSR A                     ;
CODE_0D9846:        4A            LSR A                     ;
CODE_0D9847:        4A            LSR A                     ;
CODE_0D9848:        1A            INC A                     ;
CODE_0D9849:        29 0F         AND #$0F                  ;
CODE_0D984B:        C9 06         CMP #$06                  ;
CODE_0D984D:        B0 5A         BCS CODE_0D98A9           ;
CODE_0D984F:        48            PHA                       ;
CODE_0D9850:        0A            ASL A                     ;
CODE_0D9851:        0A            ASL A                     ;
CODE_0D9852:        A8            TAY                       ;
CODE_0D9853:        A9 58         LDA #$58                  ;
CODE_0D9855:        A2 20         LDX #$20                  ;
CODE_0D9857:        C0 00         CPY #$00                  ;
CODE_0D9859:        D0 04         BNE CODE_0D985F           ;
CODE_0D985B:        A9 02         LDA #$02                  ;
CODE_0D985D:        A2 08         LDX #$08                  ;
CODE_0D985F:        86 F9         STX $F9                   ;
CODE_0D9861:        AE 00 17      LDX $1700                 ;
CODE_0D9864:        9D 02 17      STA $1702,x               ;
CODE_0D9867:        B9 1F 98      LDA DATA_0D981F,y               ;
CODE_0D986A:        9D 03 17      STA $1703,x               ;
CODE_0D986D:        B9 20 98      LDA DATA_0D981F+1,y               ;
CODE_0D9870:        9D 04 17      STA $1704,x               ;
CODE_0D9873:        B9 21 98      LDA DATA_0D981F+2,y               ;
CODE_0D9876:        85 03         STA $03                   ;
CODE_0D9878:        0A            ASL A                     ;
CODE_0D9879:        3A            DEC A                     ;
CODE_0D987A:        9D 05 17      STA $1705,x               ;
CODE_0D987D:        86 02         STX $02                   ;
CODE_0D987F:        68            PLA                       ;
CODE_0D9880:        AA            TAX                       ;
CODE_0D9881:        BD 37 98      LDA DATA_0D9837,x               ;
CODE_0D9884:        38            SEC                       ;
CODE_0D9885:        F9 21 98      SBC DATA_0D981F+2,y               ;
CODE_0D9888:        A8            TAY                       ;
CODE_0D9889:        A6 02         LDX $02                   ;
CODE_0D988B:        B9 C8 07      LDA $07C8,y               ;
CODE_0D988E:        9D 06 17      STA $1706,x               ;
CODE_0D9891:        A5 F9         LDA $F9                   ;
CODE_0D9893:        9D 07 17      STA $1707,x               ;
CODE_0D9896:        E8            INX                       ;
CODE_0D9897:        E8            INX                       ;
CODE_0D9898:        C8            INY                       ;
CODE_0D9899:        C6 03         DEC $03                   ;
CODE_0D989B:        D0 EE         BNE CODE_0D988B           ;
CODE_0D989D:        A9 FF         LDA #$FF                  ;
CODE_0D989F:        9D 06 17      STA $1706,x               ;
CODE_0D98A2:        E8            INX                       ;
CODE_0D98A3:        E8            INX                       ;
CODE_0D98A4:        E8            INX                       ;
CODE_0D98A5:        E8            INX                       ;
CODE_0D98A6:        8E 00 17      STX $1700                 ;
CODE_0D98A9:        60            RTS                       ;

CODE_0D98AA:        AD 70 07      LDA $0770                 ;
CODE_0D98AD:        C9 00         CMP #$00                  ;
CODE_0D98AF:        F0 16         BEQ CODE_0D98C7           ;
CODE_0D98B1:        A2 05         LDX #$05                  ;
CODE_0D98B3:        BD 45 01      LDA $0145,x               ;
CODE_0D98B6:        18            CLC                       ;
CODE_0D98B7:        79 C8 07      ADC $07C8,y               ;
CODE_0D98BA:        30 16         BMI CODE_0D98D2           ;
CODE_0D98BC:        C9 0A         CMP #$0A                  ;
CODE_0D98BE:        B0 19         BCS CODE_0D98D9           ;
CODE_0D98C0:        99 C8 07      STA $07C8,y               ;
CODE_0D98C3:        88            DEY                       ;
CODE_0D98C4:        CA            DEX                       ;
CODE_0D98C5:        10 EC         BPL CODE_0D98B3           ;
CODE_0D98C7:        A9 00         LDA #$00                  ;
CODE_0D98C9:        A2 06         LDX #$06                  ;
CODE_0D98CB:        9D 44 01      STA $0144,x               ;
CODE_0D98CE:        CA            DEX                       ;
CODE_0D98CF:        10 FA         BPL CODE_0D98CB           ;
CODE_0D98D1:        60            RTS                       ;

CODE_0D98D2:        DE 44 01      DEC $0144,x               ;
CODE_0D98D5:        A9 09         LDA #$09                  ;
CODE_0D98D7:        D0 E7         BNE CODE_0D98C0           ;
CODE_0D98D9:        E0 00         CPX #$00                  ;
CODE_0D98DB:        D0 0C         BNE CODE_0D98E9           ;
CODE_0D98DD:        A2 05         LDX #$05                  ;
CODE_0D98DF:        A9 09         LDA #$09                  ;
CODE_0D98E1:        9D CE 07      STA $07CE,x               ;
CODE_0D98E4:        CA            DEX                       ;
CODE_0D98E5:        D0 FA         BNE CODE_0D98E1           ;
CODE_0D98E7:        A9 13         LDA #$13                  ;
CODE_0D98E9:        38            SEC                       ;
CODE_0D98EA:        E9 0A         SBC #$0A                  ;
CODE_0D98EC:        FE 44 01      INC $0144,x               ;
CODE_0D98EF:        4C C0 98      JMP CODE_0D98C0           ;

CODE_0D98F2:        0B            PHD                       ;
CODE_0D98F3:        A9 07         LDA #$07                  ;
CODE_0D98F5:        EB            XBA                       ;
CODE_0D98F6:        A9 00         LDA #$00                  ;
CODE_0D98F8:        5B            TCD                       ;
CODE_0D98F9:        A2 05         LDX #$05                  ;
CODE_0D98FB:        A0 05         LDY #$05                  ;
CODE_0D98FD:        38            SEC                       ;
CODE_0D98FE:        B5 CE         LDA $CE,x                 ;
CODE_0D9900:        F9 C8 07      SBC $07C8,y               ;
CODE_0D9903:        CA            DEX                       ;
CODE_0D9904:        88            DEY                       ;
CODE_0D9905:        10 F7         BPL CODE_0D98FE           ;
CODE_0D9907:        90 0D         BCC CODE_0D9916           ;
CODE_0D9909:        E8            INX                       ;
CODE_0D990A:        C8            INY                       ;
CODE_0D990B:        B5 CE         LDA $CE,x                 ;
CODE_0D990D:        99 C8 07      STA $07C8,y               ;
CODE_0D9910:        E8            INX                       ;
CODE_0D9911:        C8            INY                       ;
CODE_0D9912:        C0 06         CPY #$06                  ;
CODE_0D9914:        90 F5         BCC CODE_0D990B           ;
CODE_0D9916:        2B            PLD                       ;
CODE_0D9917:        60            RTS                       ;

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

CODE_0D9968:        A9 10         LDA #$10                  ;
CODE_0D996A:        8D B1 07      STA $07B1                 ;
CODE_0D996D:        D0 06         BNE CODE_0D9975           ;
CODE_0D996F:        AD B1 07      LDA $07B1                 ;
CODE_0D9972:        F0 01         BEQ CODE_0D9975           ;
CODE_0D9974:        60            RTS                       ;

CODE_0D9975:        EE 72 07      INC $0772                 ;
CODE_0D9978:        60            RTS                       ;

DATA_0D9979:        db $42,$73,$0C,$2B

DATA_0D997D:        db $63,$73,$83

CODE_0D9980:        AD F6 0F      LDA $0FF6                 ;
CODE_0D9983:        29 0C         AND #$0C                  ;
CODE_0D9985:        F0 1E         BEQ CODE_0D99A5           ;
CODE_0D9987:        A0 01         LDY #$01                  ;
CODE_0D9989:        8C 03 16      STY $1603                 ;
CODE_0D998C:        AC 06 0F      LDY $0F06                 ;
CODE_0D998F:        29 08         AND #$08                  ;
CODE_0D9991:        F0 06         BEQ CODE_0D9999           ;
CODE_0D9993:        88            DEY                       ;
CODE_0D9994:        10 0C         BPL CODE_0D99A2           ;
CODE_0D9996:        C8            INY                       ;
CODE_0D9997:        80 06         BRA CODE_0D999F           ;

CODE_0D9999:        C8            INY                       ;
CODE_0D999A:        C0 03         CPY #$03                  ;
CODE_0D999C:        D0 04         BNE CODE_0D99A2           ;
CODE_0D999E:        88            DEY                       ;
CODE_0D999F:        9C 03 16      STZ $1603                 ;
CODE_0D99A2:        8C 06 0F      STY $0F06                 ;
CODE_0D99A5:        AD 8A 0F      LDA $0F8A                 ;
CODE_0D99A8:        D0 67         BNE CODE_0D9A11           ;
CODE_0D99AA:        AD F6 0F      LDA $0FF6                 ;
CODE_0D99AD:        29 10         AND #$10                  ;
CODE_0D99AF:        D0 47         BNE CODE_0D99F8           ;
CODE_0D99B1:        AD F6 0F      LDA $0FF6                 ;
CODE_0D99B4:        29 20         AND #$20                  ;
CODE_0D99B6:        F0 12         BEQ CODE_0D99CA           ;
CODE_0D99B8:        A9 01         LDA #$01                  ;
CODE_0D99BA:        8D 03 16      STA $1603                 ;
CODE_0D99BD:        EE 06 0F      INC $0F06                 ;
CODE_0D99C0:        AD 06 0F      LDA $0F06                 ;
CODE_0D99C3:        C9 03         CMP #$03                  ;
CODE_0D99C5:        D0 03         BNE CODE_0D99CA           ;
CODE_0D99C7:        9C 06 0F      STZ $0F06                 ;
CODE_0D99CA:        AD 03 16      LDA $1603                 ;
CODE_0D99CD:        F0 03         BEQ CODE_0D99D2           ;
CODE_0D99CF:        9C 78 0B      STZ $0B78                 ;
CODE_0D99D2:        EE 78 0B      INC $0B78                 ;
CODE_0D99D5:        AD 78 0B      LDA $0B78                 ;
CODE_0D99D8:        29 10         AND #$10                  ;
CODE_0D99DA:        4A            LSR A                     ;
CODE_0D99DB:        4A            LSR A                     ;
CODE_0D99DC:        4A            LSR A                     ;
CODE_0D99DD:        4A            LSR A                     ;
CODE_0D99DE:        09 02         ORA #$02                  ;
CODE_0D99E0:        8D 00 0C      STA $0C00                 ;
CODE_0D99E3:        A0 03         LDY #$03                  ;
CODE_0D99E5:        B9 79 99      LDA DATA_0D9979,y               ;
CODE_0D99E8:        99 00 08      STA $0800,y               ;
CODE_0D99EB:        88            DEY                       ;
CODE_0D99EC:        10 F7         BPL CODE_0D99E5           ;
CODE_0D99EE:        AC 06 0F      LDY $0F06                 ;
CODE_0D99F1:        B9 7D 99      LDA DATA_0D997D,y               ;
CODE_0D99F4:        8D 01 08      STA $0801                 ;
CODE_0D99F7:        60            RTS                       ;

CODE_0D99F8:        A9 20         LDA #$20                  ;
CODE_0D99FA:        8D 8A 0F      STA $0F8A                 ;
CODE_0D99FD:        A9 43         LDA #$43                  ;
CODE_0D99FF:        8D 00 16      STA $1600                 ;
CODE_0D9A02:        A9 F3         LDA #$F3                  ;
CODE_0D9A04:        8D 02 16      STA $1602                 ;
CODE_0D9A07:        AD 06 0F      LDA $0F06                 ;
CODE_0D9A0A:        F0 05         BEQ CODE_0D9A11           ;
CODE_0D9A0C:        A9 3B         LDA #$3B                  ;
CODE_0D9A0E:        8D 00 16      STA $1600                 ;
CODE_0D9A11:        20 D2 99      JSR CODE_0D99D2           ;
CODE_0D9A14:        CE 8A 0F      DEC $0F8A                 ;
CODE_0D9A17:        AD 8A 0F      LDA $0F8A                 ;
CODE_0D9A1A:        F0 01         BEQ CODE_0D9A1D           ;
CODE_0D9A1C:        60            RTS                       ;

CODE_0D9A1D:        9C 78 0B      STZ $0B78                 ;
CODE_0D9A20:        A0 04         LDY #$04                  ;
CODE_0D9A22:        8C 5A 07      STY $075A                 ;
CODE_0D9A25:        9C 5E 07      STZ $075E                 ;
CODE_0D9A28:        A9 00         LDA #$00                  ;
CODE_0D9A2A:        A0 11         LDY #$11                  ;
CODE_0D9A2C:        99 CE 07      STA $07CE,y               ;
CODE_0D9A2F:        88            DEY                       ;
CODE_0D9A30:        10 FA         BPL CODE_0D9A2C           ;
CODE_0D9A32:        EE 5D 07      INC $075D                 ;
CODE_0D9A35:        AD 06 0F      LDA $0F06                 ;
CODE_0D9A38:        F0 0F         BEQ CODE_0D9A49           ;
CODE_0D9A3A:        22 AC 90 00   JSL CODE_0090AC           ;
CODE_0D9A3E:        AD 06 0F      LDA $0F06                 ;
CODE_0D9A41:        C9 01         CMP #$01                  ;
CODE_0D9A43:        F0 04         BEQ CODE_0D9A49           ;
CODE_0D9A45:        5C DE 80 00   JML CODE_0080DE           ;

CODE_0D9A49:        4C 09 A0      JMP CODE_0DA009           ;

CODE_0D9A4C:        AD 70 07      LDA $0770                 ;
CODE_0D9A4F:        C9 03         CMP #$03                  ;
CODE_0D9A51:        F0 16         BEQ CODE_0D9A69           ;
CODE_0D9A53:        AD 07 0F      LDA $0F07                 ;
CODE_0D9A56:        D0 08         BNE CODE_0D9A60           ;
CODE_0D9A58:        A9 1D         LDA #$1D                  ;
CODE_0D9A5A:        8D 73 07      STA $0773                 ;
CODE_0D9A5D:        EE 07 0F      INC $0F07                 ;
CODE_0D9A60:        A9 00         LDA #$00                  ;
CODE_0D9A62:        8D 74 07      STA $0774                 ;
CODE_0D9A65:        EE 3C 07      INC $073C                 ;
CODE_0D9A68:        60            RTS                       ;

CODE_0D9A69:        A9 20         LDA #$20                  ;
CODE_0D9A6B:        8D B0 07      STA $07B0                 ;
CODE_0D9A6E:        A9 1E         LDA #$1E                  ;
CODE_0D9A70:        8D 73 07      STA $0773                 ;
CODE_0D9A73:        EE 72 07      INC $0772                 ;
CODE_0D9A76:        60            RTS                       ;

DATA_0D9A77:        db $20,$20,$1E,$28,$28,$0D,$04,$70
                    db $70,$60,$90,$90,$0A,$09,$E4,$98
                    db $D0,$18,$18,$18,$22,$22,$0D,$04
                    db $42,$42,$3E,$5D,$5D,$0A,$09,$B4
                    db $68,$A0

CODE_0D9A99:        A2 60         LDX #$60                  ;
CODE_0D9A9B:        A0 21         LDY #$21                  ;
CODE_0D9A9D:        AD 53 07      LDA $0753                 ;
CODE_0D9AA0:        D0 04         BNE CODE_0D9AA6           ;
CODE_0D9AA2:        A2 0E         LDX #$0E                  ;
CODE_0D9AA4:        A0 10         LDY #$10                  ;
CODE_0D9AA6:        8E 8E B3      STX $B38E                 ;
CODE_0D9AA9:        A2 10         LDX #$10                  ;
CODE_0D9AAB:        B9 77 9A      LDA DATA_0D9A77,y         ;
CODE_0D9AAE:        9F F9 B1 0D   STA $0DB1F9,x             ; INVALID: wtf
CODE_0D9AB2:        88            DEY                       ;
CODE_0D9AB3:        CA            DEX                       ;
CODE_0D9AB4:        10 F5         BPL CODE_0D9AAB           ;
CODE_0D9AB6:        60            RTS                       ;

CODE_0D9AB7:        AD 49 07      LDA $0749                 ;
CODE_0D9ABA:        D0 1A         BNE CODE_0D9AD6           ;
CODE_0D9ABC:        AC 19 07      LDY $0719                 ;
CODE_0D9ABF:        C0 0A         CPY #$0A                  ;
CODE_0D9AC1:        B0 25         BCS CODE_0D9AE8           ;
CODE_0D9AC3:        C8            INY                       ;
CODE_0D9AC4:        C8            INY                       ;
CODE_0D9AC5:        C8            INY                       ;
CODE_0D9AC6:        C0 05         CPY #$05                  ;
CODE_0D9AC8:        D0 05         BNE CODE_0D9ACF           ;
CODE_0D9ACA:        A9 04         LDA #$04                  ;
CODE_0D9ACC:        8D FC 00      STA $00FC                 ;
CODE_0D9ACF:        98            TYA                       ;
CODE_0D9AD0:        18            CLC                       ;
CODE_0D9AD1:        69 0C         ADC #$0C                  ;
CODE_0D9AD3:        8D 73 07      STA $0773                 ;
CODE_0D9AD6:        AD 49 07      LDA $0749                 ;
CODE_0D9AD9:        18            CLC                       ;
CODE_0D9ADA:        69 04         ADC #$04                  ;
CODE_0D9ADC:        8D 49 07      STA $0749                 ;
CODE_0D9ADF:        AD 19 07      LDA $0719                 ;
CODE_0D9AE2:        69 00         ADC #$00                  ;
CODE_0D9AE4:        8D 19 07      STA $0719                 ;
CODE_0D9AE7:        60            RTS                       ;

CODE_0D9AE8:        A9 0C         LDA #$0C                  ;
CODE_0D9AEA:        8D B1 07      STA $07B1                 ;
CODE_0D9AED:        EE 72 07      INC $0772                 ;
CODE_0D9AF0:        A9 00         LDA #$00                  ;
CODE_0D9AF2:        8D 27 0F      STA $0F27                 ;
CODE_0D9AF5:        8D 28 0F      STA $0F28                 ;
CODE_0D9AF8:        8D 29 0F      STA $0F29                 ;
CODE_0D9AFB:        60            RTS                       ;

CODE_0D9AFC:        AD B1 07      LDA $07B1                 ;
CODE_0D9AFF:        D0 FA         BNE CODE_0D9AFB           ;
CODE_0D9B01:        AD 5A 07      LDA $075A                 ;
CODE_0D9B04:        30 1A         BMI CODE_0D9B20           ;
CODE_0D9B06:        AD 88 07      LDA $0788                 ;
CODE_0D9B09:        D0 F0         BNE CODE_0D9AFB           ;
CODE_0D9B0B:        A9 30         LDA #$30                  ;
CODE_0D9B0D:        8D 88 07      STA $0788                 ;
CODE_0D9B10:        A9 01         LDA #$01                  ;
CODE_0D9B12:        8D 03 16      STA $1603                 ;
CODE_0D9B15:        CE 5A 07      DEC $075A                 ;
CODE_0D9B18:        A9 01         LDA #$01                  ;
CODE_0D9B1A:        8D 46 01      STA $0146                 ;
CODE_0D9B1D:        4C 0E D7      JMP CODE_0DD70E           ;

CODE_0D9B20:        A9 05         LDA #$05                  ;
CODE_0D9B22:        8D 2D 0F      STA $0F2D                 ;
CODE_0D9B25:        A9 00         LDA #$00                  ;
CODE_0D9B27:        8D 2C 0F      STA $0F2C                 ;
CODE_0D9B2A:        9C 2E 0F      STZ $0F2E                 ;
CODE_0D9B2D:        9C 2F 0F      STZ $0F2F                 ;
CODE_0D9B30:        80 BB         BRA CODE_0D9AED           ;

CODE_0D9B32:        EE 72 07      INC $0772                 ;
CODE_0D9B35:        20 F0 9A      JSR CODE_0D9AF0           ;
CODE_0D9B38:        A9 60         LDA #$60                  ;
CODE_0D9B3A:        8D 2A 0F      STA $0F2A                 ;
CODE_0D9B3D:        60            RTS                       ;

CODE_0D9B3E:        20 2B 9C      JSR CODE_0D9C2B           ;
CODE_0D9B41:        AD 2D 0F      LDA $0F2D                 ;
CODE_0D9B44:        F0 1F         BEQ CODE_0D9B65           ;
CODE_0D9B46:        C2 20         REP #$20                  ;
CODE_0D9B48:        AD 2C 0F      LDA $0F2C                 ;
CODE_0D9B4B:        EB            XBA                       ;
CODE_0D9B4C:        8D 02 17      STA $1702                 ;
CODE_0D9B4F:        A9 43 7E      LDA #$7E43                ;
CODE_0D9B52:        8D 04 17      STA $1704                 ;
CODE_0D9B55:        A9 24 00      LDA #$0024                ;
CODE_0D9B58:        8D 06 17      STA $1706                 ;
CODE_0D9B5B:        A9 FF FF      LDA #$FFFF                ;
CODE_0D9B5E:        8D 08 17      STA $1708                 ;
CODE_0D9B61:        E2 20         SEP #$20                  ;
CODE_0D9B63:        80 29         BRA CODE_0D9B8E           ;

CODE_0D9B65:        AD B8 0E      LDA $0EB8                 ;
CODE_0D9B68:        D0 1A         BNE CODE_0D9B84           ;
CODE_0D9B6A:        EE 2E 0F      INC $0F2E                 ;
CODE_0D9B6D:        AD 2E 0F      LDA $0F2E                 ;
CODE_0D9B70:        D0 1C         BNE CODE_0D9B8E           ;
CODE_0D9B72:        EE 2F 0F      INC $0F2F                 ;
CODE_0D9B75:        AD 2F 0F      LDA $0F2F                 ;
CODE_0D9B78:        C9 02         CMP #$02                  ;
CODE_0D9B7A:        D0 12         BNE CODE_0D9B8E           ;
CODE_0D9B7C:        9C FA 07      STZ $07FA                 ;
CODE_0D9B7F:        A9 01         LDA #$01                  ;
CODE_0D9B81:        8D FB 07      STA $07FB                 ;
CODE_0D9B84:        AD 5F 07      LDA $075F                 ;
CODE_0D9B87:        C9 0C         CMP #$0C                  ;
CODE_0D9B89:        F0 09         BEQ CODE_0D9B94           ;
CODE_0D9B8B:        4C C7 9C      JMP CODE_0D9CC7           ;

CODE_0D9B8E:        9C B8 0E      STZ $0EB8                 ;
CODE_0D9B91:        9C 2D 0F      STZ $0F2D                 ;
CODE_0D9B94:        60            RTS                       ;

DATA_0D9B95:        db $01,$00,$01,$02,$03,$00,$00,$00
                    db $00,$00,$A7,$AB,$AD,$B1,$9B,$9B
                    db $9B,$9B,$01,$05,$0F,$FF,$20,$FF
                    db $10,$30,$0F,$FF,$40,$FF,$03,$01
                    db $03,$01,$0F,$20,$20,$20,$20,$20
                    db $20,$20,$20,$9F,$D2,$01,$00,$00
                    db $9F,$D2,$00

CODE_0D9BC8:        A9 07         LDA #$07                  ;
CODE_0D9BCA:        95 9B         STA $9B,x                 ;
CODE_0D9BCC:        B7 9B         LDA [$9B],y               ;
CODE_0D9BCE:        F0 04         BEQ CODE_0D9BD4           ;
CODE_0D9BD0:        EE 09 0F      INC $0F09                 ;
CODE_0D9BD3:        60            RTS                       ;

CODE_0D9BD4:        A9 00         LDA #$00                  ;
CODE_0D9BD6:        8D 09 0F      STA $0F09                 ;
CODE_0D9BD9:        8D 72 07      STA $0772                 ;
CODE_0D9BDC:        AD 5F 07      LDA $075F                 ;
CODE_0D9BDF:        C9 0C         CMP #$0C                  ;
CODE_0D9BE1:        F0 13         BEQ CODE_0D9BF6           ;
CODE_0D9BE3:        AD 2B 0F      LDA $0F2B                 ;
CODE_0D9BE6:        F0 19         BEQ CODE_0D9C01           ;
CODE_0D9BE8:        A9 00         LDA #$00                  ;
CODE_0D9BEA:        8D 08 0F      STA $0F08                 ;
CODE_0D9BED:        8D 5A 07      STA $075A                 ;
CODE_0D9BF0:        EE 5F 07      INC $075F                 ;
CODE_0D9BF3:        4C 5C 88      JMP CODE_0D885C           ;

CODE_0D9BF6:        A9 00         LDA #$00                  ;
CODE_0D9BF8:        8D 08 0F      STA $0F08                 ;
CODE_0D9BFB:        8D 70 07      STA $0770                 ;
CODE_0D9BFE:        4C B6 84      JMP CODE_0D84B6           ;

CODE_0D9C01:        A9 00         LDA #$00                  ;
CODE_0D9C03:        8D 08 0F      STA $0F08                 ;
CODE_0D9C06:        8D 5A 07      STA $075A                 ;
CODE_0D9C09:        8D 07 0F      STA $0F07                 ;
CODE_0D9C0C:        4C 5C 88      JMP CODE_0D885C           ;

DATA_0D9C0F:        db $50,$B0,$E0,$68,$98,$C8 ;

DATA_0D9C15:        db $80,$50,$68,$80,$98,$B0,$C8 ;

DATA_0D9C1C:        db $E0,$B8,$90,$70,$68,$70,$90 ;

DATA_0D9C23:        db $B8,$38,$48,$60,$80 ;

CODE_0D9C28:        A0 B8         LDY #$B8                  ;
CODE_0D9C2A:        C8            INY                       ;
CODE_0D9C2B:        AD 2A 0F      LDA $0F2A                 ;
CODE_0D9C2E:        F0 04         BEQ CODE_0D9C34           ;
CODE_0D9C30:        CE 2A 0F      DEC $0F2A                 ;
CODE_0D9C33:        60            RTS                       ;

CODE_0D9C34:        20 18 84      JSR CODE_0D8418           ;
CODE_0D9C37:        AE 28 0F      LDX $0F28                 ;
CODE_0D9C3A:        E0 07         CPX #$07                  ;
CODE_0D9C3C:        F0 12         BEQ CODE_0D9C50           ;
CODE_0D9C3E:        AD 27 0F      LDA $0F27                 ;
CODE_0D9C41:        29 1F         AND #$1F                  ;
CODE_0D9C43:        D0 21         BNE CODE_0D9C66           ;
CODE_0D9C45:        EE 28 0F      INC $0F28                 ;
CODE_0D9C48:        A9 01         LDA #$01                  ;
CODE_0D9C4A:        8D 03 16      STA $1603                 ;
CODE_0D9C4D:        4C 66 9C      JMP CODE_0D9C66           ;

CODE_0D9C50:        AD 27 0F      LDA $0F27                 ;
CODE_0D9C53:        29 1F         AND #$1F                  ;
CODE_0D9C55:        D0 0F         BNE CODE_0D9C66           ;
CODE_0D9C57:        EE 29 0F      INC $0F29                 ;
CODE_0D9C5A:        AD 29 0F      LDA $0F29                 ;
CODE_0D9C5D:        C9 0B         CMP #$0B                  ;
CODE_0D9C5F:        90 05         BCC CODE_0D9C66           ;
CODE_0D9C61:        A9 04         LDA #$04                  ;
CODE_0D9C63:        8D 29 0F      STA $0F29                 ;
CODE_0D9C66:        EE 27 0F      INC $0F27                 ;
CODE_0D9C69:        AD 5F 07      LDA $075F                 ;
CODE_0D9C6C:        48            PHA                       ;
CODE_0D9C6D:        AD 28 0F      LDA $0F28                 ;
CODE_0D9C70:        48            PHA                       ;
CODE_0D9C71:        AA            TAX                       ;
CODE_0D9C72:        AD 29 0F      LDA $0F29                 ;
CODE_0D9C75:        C9 04         CMP #$04                  ;
CODE_0D9C77:        90 0B         BCC CODE_0D9C84           ;
CODE_0D9C79:        E9 04         SBC #$04                  ;
CODE_0D9C7B:        A8            TAY                       ;
CODE_0D9C7C:        B9 0F 9C      LDA DATA_0D9C0F,y               ;
CODE_0D9C7F:        DD 15 9C      CMP DATA_0D9C15,x               ;
CODE_0D9C82:        F0 25         BEQ CODE_0D9CA9           ;
CODE_0D9C84:        BC 15 9C      LDY DATA_0D9C15,x               ;
CODE_0D9C87:        8C 46 0B      STY $0B46                 ;
CODE_0D9C8A:        A9 35         LDA #$35                  ;
CODE_0D9C8C:        8D 1C 00      STA $001C                 ;
CODE_0D9C8F:        BD 1C 9C      LDA DATA_0D9C1C,x               ;
CODE_0D9C92:        8D 38 02      STA $0238                 ;
CODE_0D9C95:        BD 23 9C      LDA DATA_0D9C23,x               ;
CODE_0D9C98:        8D AE 03      STA $03AE                 ;
CODE_0D9C9B:        A2 00         LDX #$00                  ;
CODE_0D9C9D:        8E 5F 07      STX $075F                 ;
CODE_0D9CA0:        8E 9E 00      STX $009E                 ;
CODE_0D9CA3:        20 40 EE      JSR CODE_0DEE40           ;
CODE_0D9CA6:        CE 4A 0F      DEC $0F4A                 ;
CODE_0D9CA9:        CE 28 0F      DEC $0F28                 ;
CODE_0D9CAC:        AE 28 0F      LDX $0F28                 ;
CODE_0D9CAF:        D0 C1         BNE CODE_0D9C72           ;
CODE_0D9CB1:        EE 4A 0F      INC $0F4A                 ;
CODE_0D9CB4:        68            PLA                       ;
CODE_0D9CB5:        8D 28 0F      STA $0F28                 ;
CODE_0D9CB8:        68            PLA                       ;
CODE_0D9CB9:        8D 5F 07      STA $075F                 ;
CODE_0D9CBC:        A9 30         LDA #$30                  ;
CODE_0D9CBE:        8D 46 0B      STA $0B46                 ;
CODE_0D9CC1:        A9 B8         LDA #$B8                  ;
CODE_0D9CC3:        8D 38 02      STA $0238                 ;
CODE_0D9CC6:        60            RTS                       ;

CODE_0D9CC7:        22 74 FB 0F   JSL CODE_0FFB74           ;
CODE_0D9CCB:        B0 01         BCS CODE_0D9CCE           ;
CODE_0D9CCD:        60            RTS                       ;

CODE_0D9CCE:        A9 01         LDA #$01                  ;
CODE_0D9CD0:        8D 1A 0E      STA $0E1A                 ;
CODE_0D9CD3:        4C D4 9B      JMP CODE_0D9BD4           ;

DATA_0D9CD6:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF

DATA_0D9CF0:        db $D0,$00,$18,$30,$48,$60,$78,$90
                    db $A8,$C0,$D8,$D8,$B0,$C0,$40,$44
                    db $48,$50,$54,$60,$68,$70,$78,$80
                    db $88,$00,$08,$10,$18,$18,$FF,$23
                    db $58

CODE_0D9D11:        A9 80         LDA #$80                  ;
CODE_0D9D13:        8D 01 12      STA $1201                 ;
CODE_0D9D16:        A9 FF         LDA #$FF                  ;
CODE_0D9D18:        8F 02 11 00   STA $001102               ;
CODE_0D9D1C:        A9 7F         LDA #$7F                  ;
CODE_0D9D1E:        8F 03 11 00   STA $001103               ;
CODE_0D9D22:        EE 00 12      INC $1200                 ;
CODE_0D9D25:        A9 FF         LDA #$FF                  ;
CODE_0D9D27:        8D 02 17      STA $1702                 ;
CODE_0D9D2A:        8D 03 17      STA $1703                 ;
CODE_0D9D2D:        A9 09         LDA #$09                  ;
CODE_0D9D2F:        8D 0D 12      STA $120D                 ;
CODE_0D9D32:        A9 10         LDA #$10                  ;
CODE_0D9D34:        8D 0B 12      STA $120B                 ;
CODE_0D9D37:        A9 20         LDA #$20                  ;
CODE_0D9D39:        8D 0A 12      STA $120A                 ;
CODE_0D9D3C:        A9 20         LDA #$20                  ;
CODE_0D9D3E:        8D E0 0E      STA $0EE0                 ;
CODE_0D9D41:        A9 40         LDA #$40                  ;
CODE_0D9D43:        8D E1 0E      STA $0EE1                 ;
CODE_0D9D46:        A9 80         LDA #$80                  ;
CODE_0D9D48:        8D E2 0E      STA $0EE2                 ;
CODE_0D9D4B:        A0 FE         LDY #$FE                  ;
CODE_0D9D4D:        A2 05         LDX #$05                  ;
CODE_0D9D4F:        BD C8 07      LDA $07C8,x               ;
CODE_0D9D52:        C9 0A         CMP #$0A                  ;
CODE_0D9D54:        B0 0C         BCS CODE_0D9D62           ;
CODE_0D9D56:        CA            DEX                       ;
CODE_0D9D57:        10 F6         BPL CODE_0D9D4F           ;
CODE_0D9D59:        AD FF 07      LDA $07FF                 ;
CODE_0D9D5C:        C9 A5         CMP #$A5                  ;
CODE_0D9D5E:        D0 02         BNE CODE_0D9D62           ;
CODE_0D9D60:        A0 C7         LDY #$C7                  ;
CODE_0D9D62:        22 33 F7 0F   JSL CODE_0FF733           ;
CODE_0D9D66:        A9 A5         LDA #$A5                  ;
CODE_0D9D68:        8D FF 07      STA $07FF                 ;
CODE_0D9D6B:        8D B7 07      STA $07B7                 ;
CODE_0D9D6E:        9C F6 0E      STZ $0EF6                 ;
CODE_0D9D71:        9C F9 0E      STZ $0EF9                 ;
CODE_0D9D74:        9C F7 0E      STZ $0EF7                 ;
CODE_0D9D77:        9C F8 0E      STZ $0EF8                 ;
CODE_0D9D7A:        A0 6F         LDY #$6F                  ;
CODE_0D9D7C:        22 33 F7 0F   JSL CODE_0FF733           ;
CODE_0D9D80:        A9 18         LDA #$18                  ;
CODE_0D9D82:        8D B2 07      STA $07B2                 ;
CODE_0D9D85:        22 4C C3 0E   JSL CODE_0EC34C           ;
CODE_0D9D89:        20 90 9D      JSR CODE_0D9D90           ;
CODE_0D9D8C:        9C 7F 0E      STZ $0E7F                 ;
CODE_0D9D8F:        60            RTS                       ;

CODE_0D9D90:        AC 5F 07      LDY $075F                 ;
CODE_0D9D93:        C0 0D         CPY #$0D                  ;
CODE_0D9D95:        90 04         BCC CODE_0D9D9B           ;
CODE_0D9D97:        22 4C C3 0E   JSL CODE_0EC34C           ;
CODE_0D9D9B:        A0 4B         LDY #$4B                  ;
CODE_0D9D9D:        22 33 F7 0F   JSL CODE_0FF733           ;
CODE_0D9DA1:        A2 29         LDX #$29                  ;
CODE_0D9DA3:        A9 00         LDA #$00                  ;
CODE_0D9DA5:        9D 88 07      STA $0788,x               ;
CODE_0D9DA8:        CA            DEX                       ;
CODE_0D9DA9:        10 FA         BPL CODE_0D9DA5           ;
CODE_0D9DAB:        AD 5B 07      LDA $075B                 ;
CODE_0D9DAE:        AC 52 07      LDY $0752                 ;
CODE_0D9DB1:        F0 03         BEQ CODE_0D9DB6           ;
CODE_0D9DB3:        AD 51 07      LDA $0751                 ;
CODE_0D9DB6:        8D 1A 07      STA $071A                 ;
CODE_0D9DB9:        8D 25 07      STA $0725                 ;
CODE_0D9DBC:        8D 28 07      STA $0728                 ;
CODE_0D9DBF:        5A            PHY                       ;
CODE_0D9DC0:        C2 20         REP #$20                  ;
CODE_0D9DC2:        EB            XBA                       ;
CODE_0D9DC3:        29 00 FF      AND #$FF00                ;
CODE_0D9DC6:        85 42         STA $42                   ;
CODE_0D9DC8:        4A            LSR A                     ;
CODE_0D9DC9:        8D FD 0E      STA $0EFD                 ;
CODE_0D9DCC:        4A            LSR A                     ;
CODE_0D9DCD:        8D EE 0E      STA $0EEE                 ;
CODE_0D9DD0:        E2 20         SEP #$20                  ;
CODE_0D9DD2:        7A            PLY                       ;
CODE_0D9DD3:        20 3E AD      JSR CODE_0DAD3E           ;
CODE_0D9DD6:        A0 00         LDY #$00                  ;
CODE_0D9DD8:        29 01         AND #$01                  ;
CODE_0D9DDA:        F0 02         BEQ CODE_0D9DDE           ;
CODE_0D9DDC:        A0 04         LDY #$04                  ;
CODE_0D9DDE:        8C 20 07      STY $0720                 ;
CODE_0D9DE1:        9C 21 07      STZ $0721                 ;
CODE_0D9DE4:        0A            ASL A                     ;
CODE_0D9DE5:        0A            ASL A                     ;
CODE_0D9DE6:        0A            ASL A                     ;
CODE_0D9DE7:        0A            ASL A                     ;
CODE_0D9DE8:        8D A0 06      STA $06A0                 ;
CODE_0D9DEB:        A9 FF         LDA #$FF                  ;
CODE_0D9DED:        8D 00 13      STA $1300                 ;
CODE_0D9DF0:        8D 01 13      STA $1301                 ;
CODE_0D9DF3:        8D 02 13      STA $1302                 ;
CODE_0D9DF6:        8D 03 13      STA $1303                 ;
CODE_0D9DF9:        8D 04 13      STA $1304                 ;
CODE_0D9DFC:        A9 0B         LDA #$0B                  ;
CODE_0D9DFE:        8D 1E 07      STA $071E                 ;
CODE_0D9E01:        22 BD C3 0E   JSL CODE_0EC3BD           ;
CODE_0D9E05:        AD FB 07      LDA $07FB                 ;
CODE_0D9E08:        D0 10         BNE CODE_0D9E1A           ;
CODE_0D9E0A:        AD 5F 07      LDA $075F                 ;
CODE_0D9E0D:        C9 03         CMP #$03                  ;
CODE_0D9E0F:        90 0C         BCC CODE_0D9E1D           ;
CODE_0D9E11:        D0 07         BNE CODE_0D9E1A           ;
CODE_0D9E13:        AD 5C 07      LDA $075C                 ;
CODE_0D9E16:        C9 03         CMP #$03                  ;
CODE_0D9E18:        90 03         BCC CODE_0D9E1D           ;
CODE_0D9E1A:        EE CC 06      INC $06CC                 ;
CODE_0D9E1D:        AD 5B 07      LDA $075B                 ;
CODE_0D9E20:        F0 05         BEQ CODE_0D9E27           ;
CODE_0D9E22:        A9 02         LDA #$02                  ;
CODE_0D9E24:        8D 10 07      STA $0710                 ;
CODE_0D9E27:        A5 DB         LDA $DB                   ;
CODE_0D9E29:        C9 07         CMP #$07                  ;
CODE_0D9E2B:        F0 09         BEQ CODE_0D9E36           ;
CODE_0D9E2D:        C9 41         CMP #$41                  ;
CODE_0D9E2F:        F0 05         BEQ CODE_0D9E36           ;
CODE_0D9E31:        A9 80         LDA #$80                  ;
CODE_0D9E33:        8D 02 16      STA $1602                 ;
CODE_0D9E36:        A9 01         LDA #$01                  ;
CODE_0D9E38:        8D 7F 0E      STA $0E7F                 ;
CODE_0D9E3B:        EE 72 07      INC $0772                 ;
CODE_0D9E3E:        60            RTS                       ;

CODE_0D9E3F:        AD 42 21      LDA $2142                 ;
CODE_0D9E42:        C9 15         CMP #$15                  ;
CODE_0D9E44:        F0 09         BEQ CODE_0D9E4F           ;
CODE_0D9E46:        22 B5 86 00   JSL CODE_0086B5           ;
CODE_0D9E4A:        A9 15         LDA #$15                  ;
CODE_0D9E4C:        8D 42 21      STA $2142                 ;
CODE_0D9E4F:        A9 01         LDA #$01                  ;
CODE_0D9E51:        8D 57 07      STA $0757                 ;
CODE_0D9E54:        8D 54 07      STA $0754                 ;
CODE_0D9E57:        9C 73 0E      STZ $0E73                 ;
CODE_0D9E5A:        A9 02         LDA #$02                  ;
CODE_0D9E5C:        8D 7F 0E      STA $0E7F                 ;
CODE_0D9E5F:        A9 20         LDA #$20                  ;
CODE_0D9E61:        0C 01 16      TSB $1601                 ;
CODE_0D9E64:        A9 00         LDA #$00                  ;
CODE_0D9E66:        8D 01 12      STA $1201                 ;
CODE_0D9E69:        8D 74 07      STA $0774                 ;
CODE_0D9E6C:        8D 04 0F      STA $0F04                 ;
CODE_0D9E6F:        8D 02 0F      STA $0F02                 ;
CODE_0D9E72:        A8            TAY                       ;
CODE_0D9E73:        99 00 03      STA $0300,y               ;
CODE_0D9E76:        C8            INY                       ;
CODE_0D9E77:        D0 FA         BNE CODE_0D9E73           ;
CODE_0D9E79:        8D 59 07      STA $0759                 ;
CODE_0D9E7C:        8D 69 07      STA $0769                 ;
CODE_0D9E7F:        8D 28 07      STA $0728                 ;
CODE_0D9E82:        A9 FF         LDA #$FF                  ;
CODE_0D9E84:        8D A0 03      STA $03A0                 ;
CODE_0D9E87:        8D 02 17      STA $1702                 ;
CODE_0D9E8A:        AD 1A 07      LDA $071A                 ;
CODE_0D9E8D:        29 01         AND #$01                  ;
CODE_0D9E8F:        8D 05 0F      STA $0F05                 ;
CODE_0D9E92:        A9 38         LDA #$38                  ;
CODE_0D9E94:        8D 43 0B      STA $0B43                 ;
CODE_0D9E97:        A9 48         LDA #$48                  ;
CODE_0D9E99:        8D 42 0B      STA $0B42                 ;
CODE_0D9E9C:        A9 58         LDA #$58                  ;
CODE_0D9E9E:        8D 41 0B      STA $0B41                 ;
CODE_0D9EA1:        A2 1C         LDX #$1C                  ;
CODE_0D9EA3:        BD F0 9C      LDA DATA_0D9CF0,x               ;
CODE_0D9EA6:        9D 45 0B      STA $0B45,x               ;
CODE_0D9EA9:        CA            DEX                       ;
CODE_0D9EAA:        10 F7         BPL CODE_0D9EA3           ;
CODE_0D9EAC:        20 4E A0      JSR CODE_0DA04E           ;
CODE_0D9EAF:        EE 22 07      INC $0722                 ;
CODE_0D9EB2:        EE 72 07      INC $0772                 ;
CODE_0D9EB5:        60            RTS                       ;

DATA_0D9EB6:        db $28,$18,$38,$28,$08,$00 ;

DATA_0D9EBC:        db $00,$20,$B0,$50,$00,$00,$B0,$B0 ;
                    db $F0 ;

DATA_0D9EC5:        db $2E,$0E,$2E,$2E,$2E,$2E,$2E,$2E ;

DATA_0D9ECD:        db $0E,$04,$03,$02 ;

CODE_0D9ED1:        AD 1A 07      LDA $071A                 ;
CODE_0D9ED4:        85 78         STA $78                   ;
CODE_0D9ED6:        A9 28         LDA #$28                  ;
CODE_0D9ED8:        8D 0A 07      STA $070A                 ;
CODE_0D9EDB:        A9 01         LDA #$01                  ;
CODE_0D9EDD:        8D 02 02      STA $0202                 ;
CODE_0D9EE0:        85 BB         STA $BB                   ;
CODE_0D9EE2:        A9 00         LDA #$00                  ;
CODE_0D9EE4:        85 28         STA $28                   ;
CODE_0D9EE6:        CE 80 04      DEC $0480                 ;
CODE_0D9EE9:        A0 00         LDY #$00                  ;
CODE_0D9EEB:        8C 5B 07      STY $075B                 ;
CODE_0D9EEE:        A5 5C         LDA $5C                   ;
CODE_0D9EF0:        D0 01         BNE CODE_0D9EF3           ;
CODE_0D9EF2:        C8            INY                       ;
CODE_0D9EF3:        8C 04 07      STY $0704                 ;
CODE_0D9EF6:        AE 10 07      LDX $0710                 ;
CODE_0D9EF9:        AC 52 07      LDY $0752                 ;
CODE_0D9EFC:        F0 07         BEQ CODE_0D9F05           ;
CODE_0D9EFE:        C0 01         CPY #$01                  ;
CODE_0D9F00:        F0 03         BEQ CODE_0D9F05           ;
CODE_0D9F02:        BE B8 9E      LDX DATA_0D9EB6+2,y               ;
CODE_0D9F05:        B9 B6 9E      LDA DATA_0D9EB6,y               ;
CODE_0D9F08:        8D 19 02      STA $0219                 ;
CODE_0D9F0B:        BD BC 9E      LDA DATA_0D9EBC,x               ;
CODE_0D9F0E:        8D 37 02      STA $0237                 ;
CODE_0D9F11:        BD C5 9E      LDA DATA_0D9EC5,x               ;
CODE_0D9F14:        8D 56 02      STA $0256                 ;
CODE_0D9F17:        A2 00         LDX #$00                  ;
CODE_0D9F19:        20 A9 E9      JSR CODE_0DE9A9           ;
CODE_0D9F1C:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0D9F20:        AC 15 07      LDY $0715                 ;
CODE_0D9F23:        F0 1A         BEQ CODE_0D9F3F           ;
CODE_0D9F25:        AD 57 07      LDA $0757                 ;
CODE_0D9F28:        F0 15         BEQ CODE_0D9F3F           ;
CODE_0D9F2A:        B9 CD 9E      LDA DATA_0D9ECD,y               ;
CODE_0D9F2D:        8D E9 07      STA $07E9                 ;
CODE_0D9F30:        A9 01         LDA #$01                  ;
CODE_0D9F32:        8D EB 07      STA $07EB                 ;
CODE_0D9F35:        4A            LSR A                     ;
CODE_0D9F36:        8D EA 07      STA $07EA                 ;
CODE_0D9F39:        8D 57 07      STA $0757                 ;
CODE_0D9F3C:        8D AF 07      STA $07AF                 ;
CODE_0D9F3F:        AC 58 07      LDY $0758                 ;
CODE_0D9F42:        F0 14         BEQ CODE_0D9F58           ;
CODE_0D9F44:        A9 03         LDA #$03                  ;
CODE_0D9F46:        85 28         STA $28                   ;
CODE_0D9F48:        A2 00         LDX #$00                  ;
CODE_0D9F4A:        20 E2 BC      JSR CODE_0DBCE2           ;
CODE_0D9F4D:        A9 F0         LDA #$F0                  ;
CODE_0D9F4F:        85 44         STA $44                   ;
CODE_0D9F51:        A2 09         LDX #$09                  ;
CODE_0D9F53:        A0 00         LDY #$00                  ;
CODE_0D9F55:        20 C9 B7      JSR CODE_0DB7C9           ;
CODE_0D9F58:        A4 5C         LDY $5C                   ;
CODE_0D9F5A:        D0 03         BNE CODE_0D9F5F           ;
CODE_0D9F5C:        20 42 B5      JSR CODE_0DB542           ;
CODE_0D9F5F:        A9 07         LDA #$07                  ;
CODE_0D9F61:        85 0F         STA $0F                   ;
CODE_0D9F63:        60            RTS                       ;

DATA_0D9F64:        db $66,$60,$88,$60,$66,$70,$77,$60
                    db $D6,$00,$77,$80,$70,$B0,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00

CODE_0D9F7E:        A9 01         LDA #$01                  ;
CODE_0D9F80:        8D 7F 0E      STA $0E7F                 ;
CODE_0D9F83:        8D 67 0E      STA $0E67                 ;
CODE_0D9F86:        9C 22 07      STZ $0722                 ;
CODE_0D9F89:        CE 5A 07      DEC $075A                 ;
CODE_0D9F8C:        10 09         BPL CODE_0D9F97           ;
CODE_0D9F8E:        9C 72 07      STZ $0772                 ;
CODE_0D9F91:        A9 03         LDA #$03                  ;
CODE_0D9F93:        8D 70 07      STA $0770                 ;
CODE_0D9F96:        60            RTS                       ;

CODE_0D9F97:        AD 5F 07      LDA $075F                 ;
CODE_0D9F9A:        0A            ASL A                     ;
CODE_0D9F9B:        AA            TAX                       ;
CODE_0D9F9C:        AD 5C 07      LDA $075C                 ;
CODE_0D9F9F:        29 02         AND #$02                  ;
CODE_0D9FA1:        F0 01         BEQ CODE_0D9FA4           ;
CODE_0D9FA3:        E8            INX                       ;
CODE_0D9FA4:        BC 64 9F      LDY DATA_0D9F64,x               ;
CODE_0D9FA7:        AD 5C 07      LDA $075C                 ;
CODE_0D9FAA:        4A            LSR A                     ;
CODE_0D9FAB:        98            TYA                       ;
CODE_0D9FAC:        B0 04         BCS CODE_0D9FB2           ;
CODE_0D9FAE:        4A            LSR A                     ;
CODE_0D9FAF:        4A            LSR A                     ;
CODE_0D9FB0:        4A            LSR A                     ;
CODE_0D9FB1:        4A            LSR A                     ;
CODE_0D9FB2:        29 0F         AND #$0F                  ;
CODE_0D9FB4:        CD 1A 07      CMP $071A                 ;
CODE_0D9FB7:        F0 04         BEQ CODE_0D9FBD           ;
CODE_0D9FB9:        90 02         BCC CODE_0D9FBD           ;
CODE_0D9FBB:        A9 00         LDA #$00                  ;
CODE_0D9FBD:        8D 5B 07      STA $075B                 ;
CODE_0D9FC0:        20 26 A0      JSR CODE_0DA026           ;
CODE_0D9FC3:        4C 09 A0      JMP CODE_0DA009           ;

CODE_0D9FC6:        AD 72 07      LDA $0772                 ;
CODE_0D9FC9:        0A            ASL A                     ;
CODE_0D9FCA:        AA            TAX                       ;
CODE_0D9FCB:        7C CE 9F      JMP (PNTR_0D9FCE,x)       ;

PNTR_0D9FCE:        dw CODE_0D9FD4
                    dw CODE_0D89BD
                    dw CODE_0D9FEC

CODE_0D9FD4:        9C 3C 07      STZ $073C                 ;
CODE_0D9FD7:        9C 22 07      STZ $0722                 ;
CODE_0D9FDA:        9C 06 0F      STZ $0F06                 ;
CODE_0D9FDD:        9C 78 0B      STZ $0B78                 ;
CODE_0D9FE0:        A9 0A         LDA #$0A                  ;
CODE_0D9FE2:        8D 02 16      STA $1602                 ;
CODE_0D9FE5:        EE 74 07      INC $0774                 ;
CODE_0D9FE8:        EE 72 07      INC $0772                 ;
CODE_0D9FEB:        60            RTS                       ;

CODE_0D9FEC:        4C 80 99      JMP CODE_0D9980           ;

CODE_0D9FEF:        AD B0 07      LDA $07B0                 ;
CODE_0D9FF2:        D0 14         BNE CODE_0DA008           ;
CODE_0D9FF4:        20 26 A0      JSR CODE_0DA026           ;
CODE_0D9FF7:        90 10         BCC CODE_0DA009           ;
CODE_0D9FF9:        AD 5F 07      LDA $075F                 ;
CODE_0D9FFC:        8D FD 07      STA $07FD                 ;
CODE_0D9FFF:        9C 72 07      STZ $0772                 ;
CODE_0DA002:        9C B0 07      STZ $07B0                 ;
CODE_0DA005:        9C 70 07      STZ $0770                 ;
CODE_0DA008:        60            RTS                       ;

CODE_0DA009:        22 4C C3 0E   JSL CODE_0EC34C           ;
CODE_0DA00D:        A9 01         LDA #$01                  ;
CODE_0DA00F:        8D 54 07      STA $0754                 ;
CODE_0DA012:        EE 57 07      INC $0757                 ;
CODE_0DA015:        9C 47 07      STZ $0747                 ;
CODE_0DA018:        9C 56 07      STZ $0756                 ;
CODE_0DA01B:        64 0F         STZ $0F                   ;
CODE_0DA01D:        9C 72 07      STZ $0772                 ;
CODE_0DA020:        A9 01         LDA #$01                  ;
CODE_0DA022:        8D 70 07      STA $0770                 ;
CODE_0DA025:        60            RTS                       ;

CODE_0DA026:        38            SEC                       ;
CODE_0DA027:        AD 7A 07      LDA $077A                 ;
CODE_0DA02A:        F0 21         BEQ CODE_0DA04D           ;
CODE_0DA02C:        AD 61 07      LDA $0761                 ;
CODE_0DA02F:        30 1C         BMI CODE_0DA04D           ;
CODE_0DA031:        AD 53 07      LDA $0753                 ;
CODE_0DA034:        49 01         EOR #$01                  ;
CODE_0DA036:        8D 53 07      STA $0753                 ;
CODE_0DA039:        A2 06         LDX #$06                  ;
CODE_0DA03B:        BD 5A 07      LDA $075A,x               ;
CODE_0DA03E:        48            PHA                       ;
CODE_0DA03F:        BD 61 07      LDA $0761,x               ;
CODE_0DA042:        9D 5A 07      STA $075A,x               ;
CODE_0DA045:        68            PLA                       ;
CODE_0DA046:        9D 61 07      STA $0761,x               ;
CODE_0DA049:        CA            DEX                       ;
CODE_0DA04A:        10 EF         BPL CODE_0DA03B           ;
CODE_0DA04C:        18            CLC                       ;
CODE_0DA04D:        60            RTS                       ;

CODE_0DA04E:        A9 FF         LDA #$FF                  ;
CODE_0DA050:        8D C9 06      STA $06C9                 ;
CODE_0DA053:        60            RTS                       ;

CODE_0DA054:        AC 1F 07      LDY $071F                 ;
CODE_0DA057:        D0 05         BNE CODE_0DA05E           ;
CODE_0DA059:        A0 08         LDY #$08                  ;
CODE_0DA05B:        8C 1F 07      STY $071F                 ;
CODE_0DA05E:        88            DEY                       ;
CODE_0DA05F:        98            TYA                       ;
CODE_0DA060:        20 BF A0      JSR CODE_0DA0BF           ;
CODE_0DA063:        CE 1F 07      DEC $071F                 ;
CODE_0DA066:        D0 35         BNE CODE_0DA09D           ;
CODE_0DA068:        A9 20         LDA #$20                  ;
CODE_0DA06A:        85 00         STA $00                   ;
CODE_0DA06C:        A5 BA         LDA $BA                   ;
CODE_0DA06E:        C9 03         CMP #$03                  ;
CODE_0DA070:        D0 02         BNE CODE_0DA074           ;
CODE_0DA072:        06 00         ASL $00                   ;
CODE_0DA074:        AD D1 0E      LDA $0ED1                 ;
CODE_0DA077:        D0 24         BNE CODE_0DA09D           ;
CODE_0DA079:        AD FD 0E      LDA $0EFD                 ;
CODE_0DA07C:        25 00         AND $00                   ;
CODE_0DA07E:        F0 07         BEQ CODE_0DA087           ;
CODE_0DA080:        AD FC 0E      LDA $0EFC                 ;
CODE_0DA083:        F0 0C         BEQ CODE_0DA091           ;
CODE_0DA085:        80 16         BRA CODE_0DA09D           ;

CODE_0DA087:        AD FC 0E      LDA $0EFC                 ;
CODE_0DA08A:        F0 11         BEQ CODE_0DA09D           ;
CODE_0DA08C:        9C FC 0E      STZ $0EFC                 ;
CODE_0DA08F:        80 05         BRA CODE_0DA096           ;

CODE_0DA091:        A9 01         LDA #$01                  ;
CODE_0DA093:        8D FC 0E      STA $0EFC                 ;
CODE_0DA096:        22 70 99 0E   JSL CODE_0E9970           ;
CODE_0DA09A:        20 24 90      JSR CODE_0D9024           ;
CODE_0DA09D:        AD EE 0E      LDA $0EEE                 ;
CODE_0DA0A0:        29 10         AND #$10                  ;
CODE_0DA0A2:        F0 07         BEQ CODE_0DA0AB           ;
CODE_0DA0A4:        AD DD 0E      LDA $0EDD                 ;
CODE_0DA0A7:        F0 0C         BEQ CODE_0DA0B5           ;
CODE_0DA0A9:        80 13         BRA CODE_0DA0BE           ;

CODE_0DA0AB:        AD DD 0E      LDA $0EDD                 ;
CODE_0DA0AE:        F0 0E         BEQ CODE_0DA0BE           ;
CODE_0DA0B0:        9C DD 0E      STZ $0EDD                 ;
CODE_0DA0B3:        80 05         BRA CODE_0DA0BA           ;

CODE_0DA0B5:        A9 01         LDA #$01                  ;
CODE_0DA0B7:        8D DD 0E      STA $0EDD                 ;
CODE_0DA0BA:        22 DD 85 0E   JSL CODE_0E85DD           ;
CODE_0DA0BE:        60            RTS                       ;

CODE_0DA0BF:        0A            ASL A                     ;
CODE_0DA0C0:        AA            TAX                       ;
CODE_0DA0C1:        7C C4 A0      JMP (PNTR_0DA0C4,x)       ;

PNTR_0DA0C4:        dw CODE_0DA0D4
                    dw CODE_0D8EF0
                    dw CODE_0D8EF0
                    dw CODE_0DA165
                    dw CODE_0DA0D4
                    dw CODE_0D8EF0
                    dw CODE_0D8EF0
                    dw CODE_0DA165

CODE_0DA0D4:        EE 26 07      INC $0726                 ;
CODE_0DA0D7:        AD 26 07      LDA $0726                 ;
CODE_0DA0DA:        29 0F         AND #$0F                  ;
CODE_0DA0DC:        D0 06         BNE CODE_0DA0E4           ;
CODE_0DA0DE:        8D 26 07      STA $0726                 ;
CODE_0DA0E1:        EE 25 07      INC $0725                 ;
CODE_0DA0E4:        EE A0 06      INC $06A0                 ;
CODE_0DA0E7:        AD A0 06      LDA $06A0                 ;
CODE_0DA0EA:        29 1F         AND #$1F                  ;
CODE_0DA0EC:        8D A0 06      STA $06A0                 ;
CODE_0DA0EF:        60            RTS                       ;

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

CODE_0DA165:        AD 28 07      LDA $0728                 ;
CODE_0DA168:        F0 03         BEQ CODE_0DA16D           ;
CODE_0DA16A:        20 16 A3      JSR CODE_0DA316           ;
CODE_0DA16D:        A2 0C         LDX #$0C                  ;
CODE_0DA16F:        A9 00         LDA #$00                  ;
CODE_0DA171:        9D A1 06      STA $06A1,x               ;
CODE_0DA174:        CA            DEX                       ;
CODE_0DA175:        10 FA         BPL CODE_0DA171           ;
CODE_0DA177:        AC 42 07      LDY $0742                 ;
CODE_0DA17A:        F0 43         BEQ CODE_0DA1BF           ;
CODE_0DA17C:        AD 25 07      LDA $0725                 ;
CODE_0DA17F:        C9 03         CMP #$03                  ;
CODE_0DA181:        30 05         BMI CODE_0DA188           ;
CODE_0DA183:        38            SEC                       ;
CODE_0DA184:        E9 03         SBC #$03                  ;
CODE_0DA186:        10 F7         BPL CODE_0DA17F           ;
CODE_0DA188:        0A            ASL A                     ;
CODE_0DA189:        0A            ASL A                     ;
CODE_0DA18A:        0A            ASL A                     ;
CODE_0DA18B:        0A            ASL A                     ;
CODE_0DA18C:        79 EF A0      ADC DATA_0DA0F0-1,y               ;
CODE_0DA18F:        6D 26 07      ADC $0726                 ;
CODE_0DA192:        AA            TAX                       ;
CODE_0DA193:        BF 7A F7 0F   LDA.l DATA_0FF77A,x             ;
CODE_0DA197:        F0 26         BEQ CODE_0DA1BF           ;
CODE_0DA199:        48            PHA                       ;
CODE_0DA19A:        29 0F         AND #$0F                  ;
CODE_0DA19C:        38            SEC                       ;
CODE_0DA19D:        E9 01         SBC #$01                  ;
CODE_0DA19F:        85 00         STA $00                   ;
CODE_0DA1A1:        0A            ASL A                     ;
CODE_0DA1A2:        65 00         ADC $00                   ;
CODE_0DA1A4:        AA            TAX                       ;
CODE_0DA1A5:        68            PLA                       ;
CODE_0DA1A6:        4A            LSR A                     ;
CODE_0DA1A7:        4A            LSR A                     ;
CODE_0DA1A8:        4A            LSR A                     ;
CODE_0DA1A9:        4A            LSR A                     ;
CODE_0DA1AA:        A8            TAY                       ;
CODE_0DA1AB:        A9 03         LDA #$03                  ;
CODE_0DA1AD:        85 00         STA $00                   ;
CODE_0DA1AF:        BD F3 A0      LDA DATA_0DA0F0+3,x               ;
CODE_0DA1B2:        99 A1 06      STA $06A1,y               ;
CODE_0DA1B5:        E8            INX                       ;
CODE_0DA1B6:        C8            INY                       ;
CODE_0DA1B7:        C0 0B         CPY #$0B                  ;
CODE_0DA1B9:        F0 04         BEQ CODE_0DA1BF           ;
CODE_0DA1BB:        C6 00         DEC $00                   ;
CODE_0DA1BD:        D0 F0         BNE CODE_0DA1AF           ;
CODE_0DA1BF:        AE 41 07      LDX $0741                 ;
CODE_0DA1C2:        F0 39         BEQ CODE_0DA1FD           ;
CODE_0DA1C4:        BC 16 A1      LDY DATA_0DA116,x               ;
CODE_0DA1C7:        A2 00         LDX #$00                  ;
CODE_0DA1C9:        B9 1A A1      LDA DATA_0DA116+4,y               ;
CODE_0DA1CC:        F0 29         BEQ CODE_0DA1F7           ;
CODE_0DA1CE:        5A            PHY                       ;
CODE_0DA1CF:        A4 5C         LDY $5C                   ;
CODE_0DA1D1:        D0 16         BNE CODE_0DA1E9           ;
CODE_0DA1D3:        A4 DB         LDY $DB                   ;
CODE_0DA1D5:        C0 45         CPY #$45                  ;
CODE_0DA1D7:        F0 1A         BEQ CODE_0DA1F3           ;
CODE_0DA1D9:        AC F0 0E      LDY $0EF0                 ;
CODE_0DA1DC:        D0 06         BNE CODE_0DA1E4           ;
CODE_0DA1DE:        EE F0 0E      INC $0EF0                 ;
CODE_0DA1E1:        1A            INC A                     ;
CODE_0DA1E2:        80 0D         BRA CODE_0DA1F1           ;

CODE_0DA1E4:        9C F0 0E      STZ $0EF0                 ;
CODE_0DA1E7:        80 0A         BRA CODE_0DA1F3           ;

CODE_0DA1E9:        C0 03         CPY #$03                  ;
CODE_0DA1EB:        D0 06         BNE CODE_0DA1F3           ;
CODE_0DA1ED:        C9 86         CMP #$86                  ;
CODE_0DA1EF:        D0 02         BNE CODE_0DA1F3           ;
CODE_0DA1F1:        1A            INC A                     ;
CODE_0DA1F2:        1A            INC A                     ;
CODE_0DA1F3:        7A            PLY                       ;
CODE_0DA1F4:        9D A1 06      STA $06A1,x               ;
CODE_0DA1F7:        C8            INY                       ;
CODE_0DA1F8:        E8            INX                       ;
CODE_0DA1F9:        E0 0D         CPX #$0D                  ;
CODE_0DA1FB:        D0 CC         BNE CODE_0DA1C9           ;
CODE_0DA1FD:        9C 09 01      STZ $0109                 ;
CODE_0DA200:        64 F9         STZ $F9                   ;
CODE_0DA202:        AD E8 0E      LDA $0EE8                 ;
CODE_0DA205:        8D E9 0E      STA $0EE9                 ;
CODE_0DA208:        EE E8 0E      INC $0EE8                 ;
CODE_0DA20B:        A4 5C         LDY $5C                   ;
CODE_0DA20D:        D0 0A         BNE CODE_0DA219           ;
CODE_0DA20F:        A5 DB         LDA $DB                   ;
CODE_0DA211:        C9 41         CMP #$41                  ;
CODE_0DA213:        D0 04         BNE CODE_0DA219           ;
CODE_0DA215:        A9 63         LDA #$63                  ;
CODE_0DA217:        80 0A         BRA CODE_0DA223           ;

CODE_0DA219:        B9 41 A1      LDA DATA_0DA141,y               ;
CODE_0DA21C:        AC 43 07      LDY $0743                 ;
CODE_0DA21F:        F0 02         BEQ CODE_0DA223           ;
CODE_0DA221:        A9 86         LDA #$86                  ;
CODE_0DA223:        85 07         STA $07                   ;
CODE_0DA225:        A2 00         LDX #$00                  ;
CODE_0DA227:        AD 27 07      LDA $0727                 ;
CODE_0DA22A:        0A            ASL A                     ;
CODE_0DA22B:        A8            TAY                       ;
CODE_0DA22C:        B9 45 A1      LDA DATA_0DA141+4,y               ;
CODE_0DA22F:        85 00         STA $00                   ;
CODE_0DA231:        C8            INY                       ;
CODE_0DA232:        84 01         STY $01                   ;
CODE_0DA234:        AD 43 07      LDA $0743                 ;
CODE_0DA237:        F0 0A         BEQ CODE_0DA243           ;
CODE_0DA239:        E0 00         CPX #$00                  ;
CODE_0DA23B:        F0 06         BEQ CODE_0DA243           ;
CODE_0DA23D:        A5 00         LDA $00                   ;
CODE_0DA23F:        29 08         AND #$08                  ;
CODE_0DA241:        85 00         STA $00                   ;
CODE_0DA243:        A0 00         LDY #$00                  ;
CODE_0DA245:        B9 7F C9      LDA DATA_0DC97F,y               ;
CODE_0DA248:        24 00         BIT $00                   ;
CODE_0DA24A:        F0 50         BEQ CODE_0DA29C           ;
CODE_0DA24C:        AD DB 00      LDA $00DB                 ;
CODE_0DA24F:        C9 09         CMP #$09                  ;
CODE_0DA251:        F0 10         BEQ CODE_0DA263           ;
CODE_0DA253:        A5 BA         LDA $BA                   ;
CODE_0DA255:        C9 03         CMP #$03                  ;
CODE_0DA257:        D0 0A         BNE CODE_0DA263           ;
CODE_0DA259:        A5 F9         LDA $F9                   ;
CODE_0DA25B:        F0 06         BEQ CODE_0DA263           ;
CODE_0DA25D:        A9 66         LDA #$66                  ;
CODE_0DA25F:        85 07         STA $07                   ;
CODE_0DA261:        80 02         BRA CODE_0DA265           ;

CODE_0DA263:        A5 07         LDA $07                   ;
CODE_0DA265:        9D A1 06      STA $06A1,x               ;
CODE_0DA268:        A5 F9         LDA $F9                   ;
CODE_0DA26A:        F0 14         BEQ CODE_0DA280           ;
CODE_0DA26C:        A5 BA         LDA $BA                   ;
CODE_0DA26E:        C9 03         CMP #$03                  ;
CODE_0DA270:        D0 0E         BNE CODE_0DA280           ;
CODE_0DA272:        A5 F9         LDA $F9                   ;
CODE_0DA274:        E6 F9         INC $F9                   ;
CODE_0DA276:        1A            INC A                     ;
CODE_0DA277:        D0 2A         BNE CODE_0DA2A3           ;
CODE_0DA279:        FE A1 06      INC $06A1,x               ;
CODE_0DA27C:        E6 07         INC $07                   ;
CODE_0DA27E:        80 23         BRA CODE_0DA2A3           ;

CODE_0DA280:        A5 BA         LDA $BA                   ;
CODE_0DA282:        C9 03         CMP #$03                  ;
CODE_0DA284:        D0 1D         BNE CODE_0DA2A3           ;
CODE_0DA286:        AD 43 07      LDA $0743                 ;
CODE_0DA289:        D0 18         BNE CODE_0DA2A3           ;
CODE_0DA28B:        AD 09 01      LDA $0109                 ;
CODE_0DA28E:        D0 13         BNE CODE_0DA2A3           ;
CODE_0DA290:        AD E9 0E      LDA $0EE9                 ;
CODE_0DA293:        29 01         AND #$01                  ;
CODE_0DA295:        D0 0C         BNE CODE_0DA2A3           ;
CODE_0DA297:        FE A1 06      INC $06A1,x               ;
CODE_0DA29A:        80 07         BRA CODE_0DA2A3           ;

CODE_0DA29C:        A9 FE         LDA #$FE                  ;
CODE_0DA29E:        85 F9         STA $F9                   ;
CODE_0DA2A0:        EE 09 01      INC $0109                 ;
CODE_0DA2A3:        E8            INX                       ;
CODE_0DA2A4:        E0 0D         CPX #$0D                  ;
CODE_0DA2A6:        F0 1D         BEQ CODE_0DA2C5           ;
CODE_0DA2A8:        A5 5C         LDA $5C                   ;
CODE_0DA2AA:        C9 02         CMP #$02                  ;
CODE_0DA2AC:        D0 08         BNE CODE_0DA2B6           ;
CODE_0DA2AE:        E0 0B         CPX #$0B                  ;
CODE_0DA2B0:        D0 04         BNE CODE_0DA2B6           ;
CODE_0DA2B2:        A9 4E         LDA #$4E                  ;
CODE_0DA2B4:        85 07         STA $07                   ;
CODE_0DA2B6:        EE E9 0E      INC $0EE9                 ;
CODE_0DA2B9:        C8            INY                       ;
CODE_0DA2BA:        C0 08         CPY #$08                  ;
CODE_0DA2BC:        D0 87         BNE CODE_0DA245           ;
CODE_0DA2BE:        A4 01         LDY $01                   ;
CODE_0DA2C0:        F0 03         BEQ CODE_0DA2C5           ;
CODE_0DA2C2:        4C 2C A2      JMP CODE_0DA22C           ;

CODE_0DA2C5:        AD AD 06      LDA $06AD                 ;
CODE_0DA2C8:        C9 4E         CMP #$4E                  ;
CODE_0DA2CA:        F0 04         BEQ CODE_0DA2D0           ;
CODE_0DA2CC:        C9 71         CMP #$71                  ;
CODE_0DA2CE:        D0 03         BNE CODE_0DA2D3           ;
CODE_0DA2D0:        EE AD 06      INC $06AD                 ;
CODE_0DA2D3:        20 16 A3      JSR CODE_0DA316           ;
CODE_0DA2D6:        AD A0 06      LDA $06A0                 ;
CODE_0DA2D9:        20 8F AA      JSR CODE_0DAA8F           ;
CODE_0DA2DC:        AD AC 06      LDA $06AC                 ;
CODE_0DA2DF:        C9 70         CMP #$70                  ;
CODE_0DA2E1:        D0 03         BNE CODE_0DA2E6           ;
CODE_0DA2E3:        8D AD 06      STA $06AD                 ;
CODE_0DA2E6:        A2 00         LDX #$00                  ;
CODE_0DA2E8:        9B            TXY                       ;
CODE_0DA2E9:        84 00         STY $00                   ;
CODE_0DA2EB:        AD C9 0E      LDA $0EC9                 ;
CODE_0DA2EE:        D0 21         BNE CODE_0DA311           ;
CODE_0DA2F0:        BD A1 06      LDA $06A1,x               ;
CODE_0DA2F3:        29 C0         AND #$C0                  ;
CODE_0DA2F5:        0A            ASL A                     ;
CODE_0DA2F6:        2A            ROL A                     ;
CODE_0DA2F7:        2A            ROL A                     ;
CODE_0DA2F8:        A8            TAY                       ;
CODE_0DA2F9:        BD A1 06      LDA $06A1,x               ;
CODE_0DA2FC:        D9 12 A3      CMP DATA_0DA312,y               ;
CODE_0DA2FF:        B0 02         BCS CODE_0DA303           ;
CODE_0DA301:        A9 00         LDA #$00                  ;
CODE_0DA303:        A4 00         LDY $00                   ;
CODE_0DA305:        91 06         STA ($06),y               ;
CODE_0DA307:        98            TYA                       ;
CODE_0DA308:        18            CLC                       ;
CODE_0DA309:        69 10         ADC #$10                  ;
CODE_0DA30B:        A8            TAY                       ;
CODE_0DA30C:        E8            INX                       ;
CODE_0DA30D:        E0 0D         CPX #$0D                  ;
CODE_0DA30F:        90 D8         BCC CODE_0DA2E9           ;
CODE_0DA311:        60            RTS                       ;

DATA_0DA312:        db $16,$49,$86,$E7

CODE_0DA316:        C2 10         REP #$10                  ;
CODE_0DA318:        A2 04 00      LDX #$0004                ;
CODE_0DA31B:        9C 0B 01      STZ $010B                 ;
CODE_0DA31E:        86 9E         STX $9E                   ;
CODE_0DA320:        9C 29 07      STZ $0729                 ;
CODE_0DA323:        AC 2C 07      LDY $072C                 ;
CODE_0DA326:        B7 FA         LDA [$FA],y               ;
CODE_0DA328:        C9 FD         CMP #$FD                  ;
CODE_0DA32A:        F0 63         BEQ CODE_0DA38F           ;
CODE_0DA32C:        29 0F         AND #$0F                  ;
CODE_0DA32E:        C9 0F         CMP #$0F                  ;
CODE_0DA330:        D0 03         BNE CODE_0DA335           ;
CODE_0DA332:        EE 0B 01      INC $010B                 ;
CODE_0DA335:        BD 00 13      LDA $1300,x               ;
CODE_0DA338:        10 55         BPL CODE_0DA38F           ;
CODE_0DA33A:        AD 0B 01      LDA $010B                 ;
CODE_0DA33D:        F0 01         BEQ CODE_0DA340           ;
CODE_0DA33F:        C8            INY                       ;
CODE_0DA340:        C8            INY                       ;
CODE_0DA341:        B7 FA         LDA [$FA],y               ;
CODE_0DA343:        0A            ASL A                     ;
CODE_0DA344:        90 0B         BCC CODE_0DA351           ;
CODE_0DA346:        AD 2B 07      LDA $072B                 ;
CODE_0DA349:        D0 06         BNE CODE_0DA351           ;
CODE_0DA34B:        EE 2B 07      INC $072B                 ;
CODE_0DA34E:        EE 2A 07      INC $072A                 ;
CODE_0DA351:        AC 2C 07      LDY $072C                 ;
CODE_0DA354:        B7 FA         LDA [$FA],y               ;
CODE_0DA356:        29 0F         AND #$0F                  ;
CODE_0DA358:        C9 0D         CMP #$0D                  ;
CODE_0DA35A:        D0 22         BNE CODE_0DA37E           ;
CODE_0DA35C:        C8            INY                       ;
CODE_0DA35D:        B7 FA         LDA [$FA],y               ;
CODE_0DA35F:        AC 2C 07      LDY $072C                 ;
CODE_0DA362:        29 40         AND #$40                  ;
CODE_0DA364:        D0 21         BNE CODE_0DA387           ;
CODE_0DA366:        AD 2B 07      LDA $072B                 ;
CODE_0DA369:        D0 1C         BNE CODE_0DA387           ;
CODE_0DA36B:        AD 0B 01      LDA $010B                 ;
CODE_0DA36E:        F0 01         BEQ CODE_0DA371           ;
CODE_0DA370:        C8            INY                       ;
CODE_0DA371:        C8            INY                       ;
CODE_0DA372:        B7 FA         LDA [$FA],y               ;
CODE_0DA374:        29 1F         AND #$1F                  ;
CODE_0DA376:        8D 2A 07      STA $072A                 ;
CODE_0DA379:        EE 2B 07      INC $072B                 ;
CODE_0DA37C:        80 1B         BRA CODE_0DA399           ;

CODE_0DA37E:        C9 0E         CMP #$0E                  ;
CODE_0DA380:        D0 05         BNE CODE_0DA387           ;
CODE_0DA382:        AD 28 07      LDA $0728                 ;
CODE_0DA385:        D0 08         BNE CODE_0DA38F           ;
CODE_0DA387:        AD 2A 07      LDA $072A                 ;
CODE_0DA38A:        CD 25 07      CMP $0725                 ;
CODE_0DA38D:        90 07         BCC CODE_0DA396           ;
CODE_0DA38F:        20 DD A3      JSR CODE_0DA3DD           ;
CODE_0DA392:        C2 10         REP #$10                  ;
CODE_0DA394:        80 06         BRA CODE_0DA39C           ;

CODE_0DA396:        EE 29 07      INC $0729                 ;
CODE_0DA399:        20 BF A3      JSR CODE_0DA3BF           ;
CODE_0DA39C:        A6 9E         LDX $9E                   ;
CODE_0DA39E:        BD 00 13      LDA $1300,x               ;
CODE_0DA3A1:        30 03         BMI CODE_0DA3A6           ;
CODE_0DA3A3:        DE 00 13      DEC $1300,x               ;
CODE_0DA3A6:        CA            DEX                       ;
CODE_0DA3A7:        30 03         BMI CODE_0DA3AC           ;
CODE_0DA3A9:        4C 1B A3      JMP CODE_0DA31B           ;

CODE_0DA3AC:        AD 29 07      LDA $0729                 ;
CODE_0DA3AF:        F0 03         BEQ CODE_0DA3B4           ;
CODE_0DA3B1:        4C 16 A3      JMP CODE_0DA316           ;

CODE_0DA3B4:        AD 28 07      LDA $0728                 ;
CODE_0DA3B7:        F0 03         BEQ CODE_0DA3BC           ;
CODE_0DA3B9:        4C 16 A3      JMP CODE_0DA316           ;

CODE_0DA3BC:        E2 10         SEP #$10                  ;
CODE_0DA3BE:        60            RTS                       ;

CODE_0DA3BF:        C2 20         REP #$20                  ;
CODE_0DA3C1:        EE 2C 07      INC $072C                 ;
CODE_0DA3C4:        EE 2C 07      INC $072C                 ;
CODE_0DA3C7:        AD 0B 01      LDA $010B                 ;
CODE_0DA3CA:        29 FF 00      AND #$00FF                ;
CODE_0DA3CD:        F0 03         BEQ CODE_0DA3D2           ;
CODE_0DA3CF:        EE 2C 07      INC $072C                 ;
CODE_0DA3D2:        E2 20         SEP #$20                  ;
CODE_0DA3D4:        A9 00         LDA #$00                  ;
CODE_0DA3D6:        8D 2B 07      STA $072B                 ;
CODE_0DA3D9:        8D 0B 01      STA $010B                 ;
CODE_0DA3DC:        60            RTS                       ;

CODE_0DA3DD:        C2 30         REP #$30                  ;
CODE_0DA3DF:        8A            TXA                       ;
CODE_0DA3E0:        29 FF 00      AND #$00FF                ;
CODE_0DA3E3:        AA            TAX                       ;
CODE_0DA3E4:        E2 20         SEP #$20                  ;
CODE_0DA3E6:        BD 00 13      LDA $1300,x               ;
CODE_0DA3E9:        30 0A         BMI CODE_0DA3F5           ;
CODE_0DA3EB:        C2 20         REP #$20                  ;
CODE_0DA3ED:        8A            TXA                       ;
CODE_0DA3EE:        0A            ASL A                     ;
CODE_0DA3EF:        AA            TAX                       ;
CODE_0DA3F0:        BC 05 13      LDY $1305,x               ;
CODE_0DA3F3:        E2 20         SEP #$20                  ;
CODE_0DA3F5:        AD 82 0F      LDA $0F82                 ;
CODE_0DA3F8:        F0 08         BEQ CODE_0DA402           ;
CODE_0DA3FA:        22 EE 82 0E   JSL CODE_0E82EE           ;
CODE_0DA3FE:        9C 82 0F      STZ $0F82                 ;
CODE_0DA401:        60            RTS                       ;

CODE_0DA402:        84 F7         STY $F7                   ;
CODE_0DA404:        64 F6         STZ $F6                   ;
CODE_0DA406:        9C 0B 01      STZ $010B                 ;
CODE_0DA409:        A2 10 00      LDX #$0010                ;
CODE_0DA40C:        B7 FA         LDA [$FA],y               ;
CODE_0DA40E:        C9 FD         CMP #$FD                  ;
CODE_0DA410:        F0 AA         BEQ CODE_0DA3BC           ;
CODE_0DA412:        29 0F         AND #$0F                  ;
CODE_0DA414:        C9 0F         CMP #$0F                  ;
CODE_0DA416:        D0 04         BNE CODE_0DA41C           ;
CODE_0DA418:        E6 F6         INC $F6                   ;
CODE_0DA41A:        80 0A         BRA CODE_0DA426           ;

CODE_0DA41C:        A2 08 00      LDX #$0008                ;
CODE_0DA41F:        C9 0C         CMP #$0C                  ;
CODE_0DA421:        F0 03         BEQ CODE_0DA426           ;
CODE_0DA423:        A2 00 00      LDX #$0000                ;
CODE_0DA426:        86 07         STX $07                   ;
CODE_0DA428:        A6 9E         LDX $9E                   ;
CODE_0DA42A:        C9 0E         CMP #$0E                  ;
CODE_0DA42C:        D0 06         BNE CODE_0DA434           ;
CODE_0DA42E:        64 07         STZ $07                   ;
CODE_0DA430:        A9 36         LDA #$36                  ;
CODE_0DA432:        D0 5D         BNE CODE_0DA491           ;
CODE_0DA434:        C9 0D         CMP #$0D                  ;
CODE_0DA436:        D0 1F         BNE CODE_0DA457           ;
CODE_0DA438:        A9 28         LDA #$28                  ;
CODE_0DA43A:        85 07         STA $07                   ;
CODE_0DA43C:        A5 F6         LDA $F6                   ;
CODE_0DA43E:        F0 01         BEQ CODE_0DA441           ;
CODE_0DA440:        C8            INY                       ;
CODE_0DA441:        C8            INY                       ;
CODE_0DA442:        B7 FA         LDA [$FA],y               ;
CODE_0DA444:        29 40         AND #$40                  ;
CODE_0DA446:        F0 68         BEQ CODE_0DA4B0           ;
CODE_0DA448:        B7 FA         LDA [$FA],y               ;
CODE_0DA44A:        29 7F         AND #$7F                  ;
CODE_0DA44C:        C9 4B         CMP #$4B                  ;
CODE_0DA44E:        D0 03         BNE CODE_0DA453           ;
CODE_0DA450:        EE 45 07      INC $0745                 ;
CODE_0DA453:        29 3F         AND #$3F                  ;
CODE_0DA455:        80 3A         BRA CODE_0DA491           ;

CODE_0DA457:        C9 0C         CMP #$0C                  ;
CODE_0DA459:        B0 28         BCS CODE_0DA483           ;
CODE_0DA45B:        A5 F6         LDA $F6                   ;
CODE_0DA45D:        F0 01         BEQ CODE_0DA460           ;
CODE_0DA45F:        C8            INY                       ;
CODE_0DA460:        C8            INY                       ;
CODE_0DA461:        B7 FA         LDA [$FA],y               ;
CODE_0DA463:        29 70         AND #$70                  ;
CODE_0DA465:        D0 0A         BNE CODE_0DA471           ;
CODE_0DA467:        A9 18         LDA #$18                  ;
CODE_0DA469:        85 07         STA $07                   ;
CODE_0DA46B:        B7 FA         LDA [$FA],y               ;
CODE_0DA46D:        29 0F         AND #$0F                  ;
CODE_0DA46F:        80 20         BRA CODE_0DA491           ;

CODE_0DA471:        85 00         STA $00                   ;
CODE_0DA473:        C9 70         CMP #$70                  ;
CODE_0DA475:        D0 08         BNE CODE_0DA47F           ;
CODE_0DA477:        B7 FA         LDA [$FA],y               ;
CODE_0DA479:        29 08         AND #$08                  ;
CODE_0DA47B:        F0 02         BEQ CODE_0DA47F           ;
CODE_0DA47D:        64 00         STZ $00                   ;
CODE_0DA47F:        A5 00         LDA $00                   ;
CODE_0DA481:        80 0A         BRA CODE_0DA48D           ;

CODE_0DA483:        A5 F6         LDA $F6                   ;
CODE_0DA485:        F0 01         BEQ CODE_0DA488           ;
CODE_0DA487:        C8            INY                       ;
CODE_0DA488:        C8            INY                       ;
CODE_0DA489:        B7 FA         LDA [$FA],y               ;
CODE_0DA48B:        29 70         AND #$70                  ;
CODE_0DA48D:        4A            LSR A                     ;
CODE_0DA48E:        4A            LSR A                     ;
CODE_0DA48F:        4A            LSR A                     ;
CODE_0DA490:        4A            LSR A                     ;
CODE_0DA491:        85 00         STA $00                   ;
CODE_0DA493:        BD 00 13      LDA $1300,x               ;
CODE_0DA496:        10 58         BPL CODE_0DA4F0           ;
CODE_0DA498:        AD 2A 07      LDA $072A                 ;
CODE_0DA49B:        CD 25 07      CMP $0725                 ;
CODE_0DA49E:        F0 13         BEQ CODE_0DA4B3           ;
CODE_0DA4A0:        AC 2C 07      LDY $072C                 ;
CODE_0DA4A3:        B7 FA         LDA [$FA],y               ;
CODE_0DA4A5:        29 0F         AND #$0F                  ;
CODE_0DA4A7:        C9 0E         CMP #$0E                  ;
CODE_0DA4A9:        D0 05         BNE CODE_0DA4B0           ;
CODE_0DA4AB:        AD 28 07      LDA $0728                 ;
CODE_0DA4AE:        D0 27         BNE CODE_0DA4D7           ;
CODE_0DA4B0:        E2 10         SEP #$10                  ;
CODE_0DA4B2:        60            RTS                       ;

CODE_0DA4B3:        AD 28 07      LDA $0728                 ;
CODE_0DA4B6:        F0 0F         BEQ CODE_0DA4C7           ;
CODE_0DA4B8:        A9 00         LDA #$00                  ;
CODE_0DA4BA:        8D 28 07      STA $0728                 ;
CODE_0DA4BD:        8D 29 07      STA $0729                 ;
CODE_0DA4C0:        85 9E         STA $9E                   ;
CODE_0DA4C2:        85 9F         STA $9F                   ;
CODE_0DA4C4:        E2 10         SEP #$10                  ;
CODE_0DA4C6:        60            RTS                       ;

CODE_0DA4C7:        AC 2C 07      LDY $072C                 ;
CODE_0DA4CA:        B7 FA         LDA [$FA],y               ;
CODE_0DA4CC:        29 F0         AND #$F0                  ;
CODE_0DA4CE:        4A            LSR A                     ;
CODE_0DA4CF:        4A            LSR A                     ;
CODE_0DA4D0:        4A            LSR A                     ;
CODE_0DA4D1:        4A            LSR A                     ;
CODE_0DA4D2:        CD 26 07      CMP $0726                 ;
CODE_0DA4D5:        D0 D9         BNE CODE_0DA4B0           ;
CODE_0DA4D7:        DA            PHX                       ;
CODE_0DA4D8:        C2 20         REP #$20                  ;
CODE_0DA4DA:        8A            TXA                       ;
CODE_0DA4DB:        0A            ASL A                     ;
CODE_0DA4DC:        AA            TAX                       ;
CODE_0DA4DD:        AD 2C 07      LDA $072C                 ;
CODE_0DA4E0:        9D 05 13      STA $1305,x               ;
CODE_0DA4E3:        E2 20         SEP #$20                  ;
CODE_0DA4E5:        FA            PLX                       ;
CODE_0DA4E6:        A5 F6         LDA $F6                   ;
CODE_0DA4E8:        F0 03         BEQ CODE_0DA4ED           ;
CODE_0DA4EA:        EE 0B 01      INC $010B                 ;
CODE_0DA4ED:        20 BF A3      JSR CODE_0DA3BF           ;
CODE_0DA4F0:        A5 F6         LDA $F6                   ;
CODE_0DA4F2:        F0 09         BEQ CODE_0DA4FD           ;
CODE_0DA4F4:        A4 F7         LDY $F7                   ;
CODE_0DA4F6:        22 C0 88 0E   JSL CODE_0E88C0           ;
CODE_0DA4FA:        E2 10         SEP #$10                  ;
CODE_0DA4FC:        60            RTS                       ;

CODE_0DA4FD:        E2 10         SEP #$10                  ;
CODE_0DA4FF:        A5 00         LDA $00                   ;
CODE_0DA501:        18            CLC                       ;
CODE_0DA502:        65 07         ADC $07                   ;
CODE_0DA504:        0A            ASL A                     ;
CODE_0DA505:        A8            TAY                       ;
CODE_0DA506:        B9 13 A5      LDA PNTR_0DA513,y               ;
CODE_0DA509:        85 04         STA $04                   ;
CODE_0DA50B:        B9 14 A5      LDA PNTR_0DA513+1,y               ;
CODE_0DA50E:        85 05         STA $05                   ;
CODE_0DA510:        6C 04 00      JMP ($0004)               ;

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

CODE_0DA581:        22 D9 F2 0F   JSL CODE_0FF2D9
CODE_0DA585:        60            RTS        

CODE_0DA586:        22 FC F2 0F   JSL CODE_0FF2FC           ;
CODE_0DA58A:        60            RTS                       ;

CODE_0DA58B:        60            RTS                       ;

CODE_0DA58C:        DA            PHX                       ;
CODE_0DA58D:        C2 30         REP #$30                  ;
CODE_0DA58F:        8A            TXA                       ;
CODE_0DA590:        0A            ASL A                     ;
CODE_0DA591:        AA            TAX                       ;
CODE_0DA592:        BC 05 13      LDY $1305,x               ;
CODE_0DA595:        E2 20         SEP #$20                  ;
CODE_0DA597:        C8            INY                       ;
CODE_0DA598:        B7 FA         LDA [$FA],y               ;
CODE_0DA59A:        E2 10         SEP #$10                  ;
CODE_0DA59C:        FA            PLX                       ;
CODE_0DA59D:        48            PHA                       ;
CODE_0DA59E:        29 40         AND #$40                  ;
CODE_0DA5A0:        D0 12         BNE CODE_0DA5B4           ;
CODE_0DA5A2:        68            PLA                       ;
CODE_0DA5A3:        48            PHA                       ;
CODE_0DA5A4:        29 0F         AND #$0F                  ;
CODE_0DA5A6:        8D 27 07      STA $0727                 ;
CODE_0DA5A9:        68            PLA                       ;
CODE_0DA5AA:        29 30         AND #$30                  ;
CODE_0DA5AC:        4A            LSR A                     ;
CODE_0DA5AD:        4A            LSR A                     ;
CODE_0DA5AE:        4A            LSR A                     ;
CODE_0DA5AF:        4A            LSR A                     ;
CODE_0DA5B0:        8D 42 07      STA $0742                 ;
CODE_0DA5B3:        60            RTS                       ;

CODE_0DA5B4:        68            PLA                       ;
CODE_0DA5B5:        29 07         AND #$07                  ;
CODE_0DA5B7:        C9 04         CMP #$04                  ;
CODE_0DA5B9:        90 05         BCC CODE_0DA5C0           ;
CODE_0DA5BB:        8D 44 07      STA $0744                 ;
CODE_0DA5BE:        A9 00         LDA #$00                  ;
CODE_0DA5C0:        8D 41 07      STA $0741                 ;
CODE_0DA5C3:        60            RTS                       ;

CODE_0DA5C4:        A2 80         LDX #$80                  ;
CODE_0DA5C6:        AD FB 07      LDA $07FB                 ;
CODE_0DA5C9:        D0 13         BNE CODE_0DA5DE           ;
CODE_0DA5CB:        AD 5F 07      LDA $075F                 ;
CODE_0DA5CE:        D0 16         BNE CODE_0DA5E6           ;
CODE_0DA5D0:        A4 5C         LDY $5C                   ;
CODE_0DA5D2:        88            DEY                       ;
CODE_0DA5D3:        F0 06         BEQ CODE_0DA5DB           ;
CODE_0DA5D5:        AD 4F 07      LDA $074F                 ;
CODE_0DA5D8:        F0 02         BEQ CODE_0DA5DC           ;
CODE_0DA5DA:        E8            INX                       ;
CODE_0DA5DB:        E8            INX                       ;
CODE_0DA5DC:        80 27         BRA CODE_0DA605           ;

CODE_0DA5DE:        A9 87         LDA #$87                  ;
CODE_0DA5E0:        18            CLC                       ;
CODE_0DA5E1:        6D 5C 07      ADC $075C                 ;
CODE_0DA5E4:        D0 20         BNE CODE_0DA606           ;
CODE_0DA5E6:        A2 83         LDX #$83                  ;
CODE_0DA5E8:        AD 5F 07      LDA $075F                 ;
CODE_0DA5EB:        C9 02         CMP #$02                  ;
CODE_0DA5ED:        F0 16         BEQ CODE_0DA605           ;
CODE_0DA5EF:        E8            INX                       ;
CODE_0DA5F0:        C9 04         CMP #$04                  ;
CODE_0DA5F2:        D0 0E         BNE CODE_0DA602           ;
CODE_0DA5F4:        AD 4F 07      LDA $074F                 ;
CODE_0DA5F7:        C9 0B         CMP #$0B                  ;
CODE_0DA5F9:        F0 0A         BEQ CODE_0DA605           ;
CODE_0DA5FB:        A4 5C         LDY $5C                   ;
CODE_0DA5FD:        88            DEY                       ;
CODE_0DA5FE:        F0 03         BEQ CODE_0DA603           ;
CODE_0DA600:        80 02         BRA CODE_0DA604           ;

CODE_0DA602:        E8            INX                       ;
CODE_0DA603:        E8            INX                       ;
CODE_0DA604:        E8            INX                       ;
CODE_0DA605:        8A            TXA                       ;
CODE_0DA606:        8D D6 06      STA $06D6                 ;
CODE_0DA609:        20 B3 8E      JSR CODE_0D8EB3           ;
CODE_0DA60C:        A9 0D         LDA #$0D                  ;
CODE_0DA60E:        20 1A A6      JSR CODE_0DA61A           ;
CODE_0DA611:        AD 23 07      LDA $0723                 ;
CODE_0DA614:        49 01         EOR #$01                  ;
CODE_0DA616:        8D 23 07      STA $0723                 ;
CODE_0DA619:        60            RTS                       ;

CODE_0DA61A:        85 00         STA $00                   ;
CODE_0DA61C:        A9 00         LDA #$00                  ;
CODE_0DA61E:        A2 08         LDX #$08                  ;
CODE_0DA620:        B4 1C         LDY $1C,x                 ;
CODE_0DA622:        C4 00         CPY $00                   ;
CODE_0DA624:        D0 02         BNE CODE_0DA628           ;
CODE_0DA626:        95 10         STA $10,x                 ;
CODE_0DA628:        CA            DEX                       ;
CODE_0DA629:        10 F5         BPL CODE_0DA620           ;
CODE_0DA62B:        60            RTS                       ;

DATA_0DA62C:        db $14,$17,$18

CODE_0DA62F:        A6 00         LDX $00                   ;
CODE_0DA631:        BD 24 A6      LDA DATA_0DA62C-8,x               ;
CODE_0DA634:        A0 09         LDY #$09                  ;
CODE_0DA636:        88            DEY                       ;
CODE_0DA637:        30 07         BMI CODE_0DA640           ;
CODE_0DA639:        D9 1C 00      CMP $001C,y               ;
CODE_0DA63C:        D0 F8         BNE CODE_0DA636           ;
CODE_0DA63E:        A9 00         LDA #$00                  ;
CODE_0DA640:        8D CD 06      STA $06CD                 ;
CODE_0DA643:        60            RTS                       ;

CODE_0DA644:        AD 33 07      LDA $0733                 ;
CODE_0DA647:        0A            ASL A                     ;
CODE_0DA648:        A8            TAY                       ;
CODE_0DA649:        B9 56 A6      LDA PNTR_0DA656,y               ;
CODE_0DA64C:        85 04         STA $04                   ;
CODE_0DA64E:        B9 57 A6      LDA PNTR_0DA656+1,y               ;
CODE_0DA651:        85 05         STA $05                   ;
CODE_0DA653:        6C 04 00      JMP ($0004)               ;

PNTR_0DA656:        dw CODE_0DA65C
                    dw CODE_0DA6CC
                    dw CODE_0DA92B

CODE_0DA65C:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA65F:        8E CA 0E      STX $0ECA                 ;
CODE_0DA662:        BD 00 13      LDA $1300,x               ;
CODE_0DA665:        F0 60         BEQ CODE_0DA6C7           ;
CODE_0DA667:        10 11         BPL CODE_0DA67A           ;
CODE_0DA669:        98            TYA                       ;
CODE_0DA66A:        9D 00 13      STA $1300,x               ;
CODE_0DA66D:        AD 25 07      LDA $0725                 ;
CODE_0DA670:        0D 26 07      ORA $0726                 ;
CODE_0DA673:        F0 05         BEQ CODE_0DA67A           ;
CODE_0DA675:        A9 1E         LDA #$1E                  ;
CODE_0DA677:        4C F8 A6      JMP CODE_0DA6F8           ;

CODE_0DA67A:        8D CB 0E      STA $0ECB                 ;
CODE_0DA67D:        A6 07         LDX $07                   ;
CODE_0DA67F:        A9 1F         LDA #$1F                  ;
CODE_0DA681:        9D A1 06      STA $06A1,x               ;
CODE_0DA684:        9B            TXY                       ;
CODE_0DA685:        C8            INY                       ;
CODE_0DA686:        AE CA 0E      LDX $0ECA                 ;
CODE_0DA689:        CE CB 0E      DEC $0ECB                 ;
CODE_0DA68C:        F0 1A         BEQ CODE_0DA6A8           ;
CODE_0DA68E:        BD 0F 13      LDA $130F,x               ;
CODE_0DA691:        D0 0C         BNE CODE_0DA69F           ;
CODE_0DA693:        FE 0F 13      INC $130F,x               ;
CODE_0DA696:        A9 0E         LDA #$0E                  ;
CODE_0DA698:        99 A1 06      STA $06A1,y               ;
CODE_0DA69B:        A9 12         LDA #$12                  ;
CODE_0DA69D:        80 24         BRA CODE_0DA6C3           ;

CODE_0DA69F:        A9 0F         LDA #$0F                  ;
CODE_0DA6A1:        99 A1 06      STA $06A1,y               ;
CODE_0DA6A4:        A9 13         LDA #$13                  ;
CODE_0DA6A6:        80 1B         BRA CODE_0DA6C3           ;

CODE_0DA6A8:        BD 0F 13      LDA $130F,x               ;
CODE_0DA6AB:        F0 0C         BEQ CODE_0DA6B9           ;
CODE_0DA6AD:        9E 0F 13      STZ $130F,x               ;
CODE_0DA6B0:        A9 10         LDA #$10                  ;
CODE_0DA6B2:        99 A1 06      STA $06A1,y               ;
CODE_0DA6B5:        A9 14         LDA #$14                  ;
CODE_0DA6B7:        80 0A         BRA CODE_0DA6C3           ;

CODE_0DA6B9:        9E 0F 13      STZ $130F,x               ;
CODE_0DA6BC:        A9 11         LDA #$11                  ;
CODE_0DA6BE:        99 A1 06      STA $06A1,y               ;
CODE_0DA6C1:        A9 15         LDA #$15                  ;
CODE_0DA6C3:        BB            TYX                       ;
CODE_0DA6C4:        4C F2 A6      JMP CODE_0DA6F2           ;

CODE_0DA6C7:        A9 20         LDA #$20                  ;
CODE_0DA6C9:        4C F8 A6      JMP CODE_0DA6F8           ;

CODE_0DA6CC:        20 4C AA      JSR CODE_0DAA4C           ;
CODE_0DA6CF:        84 06         STY $06                   ;
CODE_0DA6D1:        90 0B         BCC CODE_0DA6DE           ;
CODE_0DA6D3:        BD 00 13      LDA $1300,x               ;
CODE_0DA6D6:        4A            LSR A                     ;
CODE_0DA6D7:        9D 14 13      STA $1314,x               ;
CODE_0DA6DA:        A9 21         LDA #$21                  ;
CODE_0DA6DC:        80 1A         BRA CODE_0DA6F8           ;

CODE_0DA6DE:        A9 23         LDA #$23                  ;
CODE_0DA6E0:        BC 00 13      LDY $1300,x               ;
CODE_0DA6E3:        F0 13         BEQ CODE_0DA6F8           ;
CODE_0DA6E5:        BD 14 13      LDA $1314,x               ;
CODE_0DA6E8:        85 06         STA $06                   ;
CODE_0DA6EA:        A6 07         LDX $07                   ;
CODE_0DA6EC:        A9 22         LDA #$22                  ;
CODE_0DA6EE:        9D A1 06      STA $06A1,x               ;
CODE_0DA6F1:        60            RTS                       ;

CODE_0DA6F2:        E8            INX                       ;
CODE_0DA6F3:        A0 0F         LDY #$0F                  ;
CODE_0DA6F5:        4C 15 AA      JMP CODE_0DAA15           ;

CODE_0DA6F8:        A6 07         LDX $07                   ;
CODE_0DA6FA:        A0 00         LDY #$00                  ;
CODE_0DA6FC:        4C 15 AA      JMP CODE_0DAA15           ;

CODE_0DA6FF:        22 A6 88 0E   JSL CODE_0E88A6           ;
CODE_0DA703:        60            RTS                       ;

CODE_0DA704:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA707:        BC 00 13      LDY $1300,x               ;
CODE_0DA70A:        A6 07         LDX $07                   ;
CODE_0DA70C:        A9 76         LDA #$76                  ;
CODE_0DA70E:        9D A1 06      STA $06A1,x               ;
CODE_0DA711:        A9 77         LDA #$77                  ;
CODE_0DA713:        9D A2 06      STA $06A2,x               ;
CODE_0DA716:        60            RTS                       ;

CODE_0DA717:        A0 03         LDY #$03                  ;
CODE_0DA719:        20 4F AA      JSR CODE_0DAA4F           ;
CODE_0DA71C:        A0 0A         LDY #$0A                  ;
CODE_0DA71E:        88            DEY                       ;
CODE_0DA71F:        88            DEY                       ;
CODE_0DA720:        84 05         STY $05                   ;
CODE_0DA722:        BC 00 13      LDY $1300,x               ;
CODE_0DA725:        84 06         STY $06                   ;
CODE_0DA727:        A6 05         LDX $05                   ;
CODE_0DA729:        E8            INX                       ;
CODE_0DA72A:        B9 5A A7      LDA DATA_0DA75A,y               ;
CODE_0DA72D:        C9 00         CMP #$00                  ;
CODE_0DA72F:        F0 08         BEQ CODE_0DA739           ;
CODE_0DA731:        A2 00         LDX #$00                  ;
CODE_0DA733:        A4 05         LDY $05                   ;
CODE_0DA735:        20 15 AA      JSR CODE_0DAA15           ;
CODE_0DA738:        18            CLC                       ;
CODE_0DA739:        A4 06         LDY $06                   ;
CODE_0DA73B:        B9 5E A7      LDA DATA_0DA75E,y               ;
CODE_0DA73E:        9D A1 06      STA $06A1,x               ;
CODE_0DA741:        B9 62 A7      LDA DATA_0DA762,y               ;
CODE_0DA744:        9D A2 06      STA $06A2,x               ;
CODE_0DA747:        B0 10         BCS CODE_0DA759           ;
CODE_0DA749:        A2 06         LDX #$06                  ;
CODE_0DA74B:        A9 00         LDA #$00                  ;
CODE_0DA74D:        9D A1 06      STA $06A1,x               ;
CODE_0DA750:        CA            DEX                       ;
CODE_0DA751:        10 F8         BPL CODE_0DA74B           ;
CODE_0DA753:        B9 66 A7      LDA DATA_0DA766,y               ;
CODE_0DA756:        8D A8 06      STA $06A8                 ;
CODE_0DA759:        60            RTS                       ;

DATA_0DA75A:        db $1B,$1A,$00,$00 ;

DATA_0DA75E:        db $1B,$27,$26,$25 ;

DATA_0DA762:        db $1B,$2A,$29,$28 ;

DATA_0DA766:        db $17,$16,$1B,$1A,$19,$18,$1B,$1A ;

CODE_0DA76E:        20 BC A7      JSR CODE_0DA7BC           ;
CODE_0DA771:        A5 00         LDA $00                   ;
CODE_0DA773:        F0 04         BEQ CODE_0DA779           ;
CODE_0DA775:        C8            INY                       ;
CODE_0DA776:        C8            INY                       ;
CODE_0DA777:        C8            INY                       ;
CODE_0DA778:        C8            INY                       ;
CODE_0DA779:        98            TYA                       ;
CODE_0DA77A:        48            PHA                       ;
CODE_0DA77B:        BC 00 13      LDY $1300,x               ;
CODE_0DA77E:        F0 28         BEQ CODE_0DA7A8           ;
CODE_0DA780:        20 FE A7      JSR CODE_0DA7FE           ;
CODE_0DA783:        B0 23         BCS CODE_0DA7A8           ;
CODE_0DA785:        20 79 AA      JSR CODE_0DAA79           ;
CODE_0DA788:        18            CLC                       ;
CODE_0DA789:        69 08         ADC #$08                  ;
CODE_0DA78B:        9D 1A 02      STA $021A,x               ;
CODE_0DA78E:        AD 25 07      LDA $0725                 ;
CODE_0DA791:        69 00         ADC #$00                  ;
CODE_0DA793:        95 79         STA $79,x                 ;
CODE_0DA795:        A9 01         LDA #$01                  ;
CODE_0DA797:        95 BC         STA $BC,x                 ;
CODE_0DA799:        95 10         STA $10,x                 ;
CODE_0DA79B:        20 81 AA      JSR CODE_0DAA81           ;
CODE_0DA79E:        9D 38 02      STA $0238,x               ;
CODE_0DA7A1:        A9 0D         LDA #$0D                  ;
CODE_0DA7A3:        95 1C         STA $1C,x                 ;
CODE_0DA7A5:        20 79 CA      JSR CODE_0DCA79           ;
CODE_0DA7A8:        68            PLA                       ;
CODE_0DA7A9:        A8            TAY                       ;
CODE_0DA7AA:        A6 07         LDX $07                   ;
CODE_0DA7AC:        B9 66 A7      LDA DATA_0DA766,y               ;
CODE_0DA7AF:        9D A1 06      STA $06A1,x               ;
CODE_0DA7B2:        E8            INX                       ;
CODE_0DA7B3:        B9 68 A7      LDA DATA_0DA766+2,y               ;
CODE_0DA7B6:        A4 06         LDY $06                   ;
CODE_0DA7B8:        88            DEY                       ;
CODE_0DA7B9:        4C 15 AA      JMP CODE_0DAA15           ;

CODE_0DA7BC:        A0 01         LDY #$01                  ;
CODE_0DA7BE:        20 4F AA      JSR CODE_0DAA4F           ;
CODE_0DA7C1:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA7C4:        98            TYA                       ;
CODE_0DA7C5:        29 07         AND #$07                  ;
CODE_0DA7C7:        85 06         STA $06                   ;
CODE_0DA7C9:        BC 00 13      LDY $1300,x               ;
CODE_0DA7CC:        60            RTS                       ;

CODE_0DA7CD:        9D 1C 00      STA $001C,x               ;
CODE_0DA7D0:        20 79 AA      JSR CODE_0DAA79           ;
CODE_0DA7D3:        18            CLC                       ;
CODE_0DA7D4:        69 08         ADC #$08                  ;
CODE_0DA7D6:        9D 1A 02      STA $021A,x               ;
CODE_0DA7D9:        AD 25 07      LDA $0725                 ;
CODE_0DA7DC:        69 00         ADC #$00                  ;
CODE_0DA7DE:        9D 79 00      STA $0079,x               ;
CODE_0DA7E1:        A9 01         LDA #$01                  ;
CODE_0DA7E3:        95 BC         STA $BC,x                 ;
CODE_0DA7E5:        9D 10 00      STA $0010,x               ;
CODE_0DA7E8:        20 81 AA      JSR CODE_0DAA81           ;
CODE_0DA7EB:        9D 38 02      STA $0238,x               ;
CODE_0DA7EE:        4C 79 CA      JMP CODE_0DCA79           ;

CODE_0DA7F1:        A2 00         LDX #$00                  ;
CODE_0DA7F3:        18            CLC                       ;
CODE_0DA7F4:        B5 10         LDA $10,x                 ;
CODE_0DA7F6:        F0 05         BEQ CODE_0DA7FD           ;
CODE_0DA7F8:        E8            INX                       ;
CODE_0DA7F9:        E0 08         CPX #$08                  ;
CODE_0DA7FB:        D0 F6         BNE CODE_0DA7F3           ;
CODE_0DA7FD:        60            RTS                       ;

CODE_0DA7FE:        A2 08         LDX #$08                  ;
CODE_0DA800:        18            CLC                       ;
CODE_0DA801:        B5 10         LDA $10,x                 ;
CODE_0DA803:        F0 05         BEQ CODE_0DA80A           ;
CODE_0DA805:        CA            DEX                       ;
CODE_0DA806:        E0 FF         CPX #$FF                  ;
CODE_0DA808:        D0 F6         BNE CODE_0DA800           ;
CODE_0DA80A:        60            RTS                       ;

DATA_0DA80B:        db $80,$81,$81,$82

DATA_0DA80F:        db $84,$85

CODE_0DA811:        20 4C AA      JSR CODE_0DAA4C           ;
CODE_0DA814:        A2 0A         LDX #$0A                  ;
CODE_0DA816:        A5 5C         LDA $5C                   ;
CODE_0DA818:        C9 03         CMP #$03                  ;
CODE_0DA81A:        D0 01         BNE CODE_0DA81D           ;
CODE_0DA81C:        E8            INX                       ;
CODE_0DA81D:        A4 5C         LDY $5C                   ;
CODE_0DA81F:        B9 0B A8      LDA DATA_0DA80B,y               ;
CODE_0DA822:        9D A1 06      STA $06A1,x               ;
CODE_0DA825:        E8            INX                       ;
CODE_0DA826:        98            TYA                       ;
CODE_0DA827:        4A            LSR A                     ;
CODE_0DA828:        A8            TAY                       ;
CODE_0DA829:        B9 0F A8      LDA DATA_0DA80F,y               ;
CODE_0DA82C:        A0 01         LDY #$01                  ;
CODE_0DA82E:        4C 15 AA      JMP CODE_0DAA15           ;

CODE_0DA831:        A9 03         LDA #$03                  ;
CODE_0DA833:        80 02         BRA CODE_0DA837           ;

CODE_0DA835:        A9 07         LDA #$07                  ;
CODE_0DA837:        48            PHA                       ;
CODE_0DA838:        20 4C AA      JSR CODE_0DAA4C           ;
CODE_0DA83B:        68            PLA                       ;
CODE_0DA83C:        AA            TAX                       ;
CODE_0DA83D:        A9 E7         LDA #$E7                  ;
CODE_0DA83F:        9D A1 06      STA $06A1,x               ;
CODE_0DA842:        60            RTS                       ;

CODE_0DA843:        A9 06         LDA #$06                  ;
CODE_0DA845:        80 06         BRA CODE_0DA84D           ;

CODE_0DA847:        A9 07         LDA #$07                  ;
CODE_0DA849:        80 02         BRA CODE_0DA84D           ;

CODE_0DA84B:        A9 09         LDA #$09                  ;
CODE_0DA84D:        48            PHA                       ;
CODE_0DA84E:        20 4C AA      JSR CODE_0DAA4C           ;
CODE_0DA851:        BD 00 13      LDA $1300,x               ;
CODE_0DA854:        F0 10         BEQ CODE_0DA866           ;
CODE_0DA856:        BD 0F 13      LDA $130F,x               ;
CODE_0DA859:        D0 07         BNE CODE_0DA862           ;
CODE_0DA85B:        FE 0F 13      INC $130F,x               ;
CODE_0DA85E:        A9 08         LDA #$08                  ;
CODE_0DA860:        80 09         BRA CODE_0DA86B           ;

CODE_0DA862:        A9 07         LDA #$07                  ;
CODE_0DA864:        80 05         BRA CODE_0DA86B           ;

CODE_0DA866:        9E 0F 13      STZ $130F,x               ;
CODE_0DA869:        A9 09         LDA #$09                  ;
CODE_0DA86B:        FA            PLX                       ;
CODE_0DA86C:        9D A1 06      STA $06A1,x               ;
CODE_0DA86F:        E8            INX                       ;
CODE_0DA870:        A0 00         LDY #$00                  ;
CODE_0DA872:        A9 6A         LDA #$6A                  ;
CODE_0DA874:        4C 15 AA      JMP CODE_0DAA15           ;

CODE_0DA877:        A9 2D         LDA #$2D                  ;
CODE_0DA879:        8D A1 06      STA $06A1                 ;
CODE_0DA87C:        A2 01         LDX #$01                  ;
CODE_0DA87E:        A0 08         LDY #$08                  ;
CODE_0DA880:        A9 2E         LDA #$2E                  ;
CODE_0DA882:        20 15 AA      JSR CODE_0DAA15           ;
CODE_0DA885:        A9 62         LDA #$62                  ;
CODE_0DA887:        8D AB 06      STA $06AB                 ;
CODE_0DA88A:        20 79 AA      JSR CODE_0DAA79           ;
CODE_0DA88D:        18            CLC                       ;
CODE_0DA88E:        69 08         ADC #$08                  ;
CODE_0DA890:        8D 1F 02      STA $021F                 ;
CODE_0DA893:        AD 25 07      LDA $0725                 ;
CODE_0DA896:        69 00         ADC #$00                  ;
CODE_0DA898:        85 7E         STA $7E                   ;
CODE_0DA89A:        A9 30         LDA #$30                  ;
CODE_0DA89C:        8D 3D 02      STA $023D                 ;
CODE_0DA89F:        A9 B0         LDA #$B0                  ;
CODE_0DA8A1:        8D 0D 01      STA $010D                 ;
CODE_0DA8A4:        A9 30         LDA #$30                  ;
CODE_0DA8A6:        85 21         STA $21                   ;
CODE_0DA8A8:        E6 15         INC $15                   ;
CODE_0DA8AA:        A9 FF         LDA #$FF                  ;
CODE_0DA8AC:        8D B4 0F      STA $0FB4                 ;
CODE_0DA8AF:        8D B5 0F      STA $0FB5                 ;
CODE_0DA8B2:        8D B6 0F      STA $0FB6                 ;
CODE_0DA8B5:        8D B7 0F      STA $0FB7                 ;
CODE_0DA8B8:        60            RTS                       ;

DATA_0DA8B9:        db $EB,$EA,$EA,$EA

CODE_0DA8BD:        A4 5C         LDY $5C                   ;
CODE_0DA8BF:        B9 B9 A8      LDA DATA_0DA8B9,y               ;
CODE_0DA8C2:        4C 09 A9      JMP CODE_0DA909           ;

DATA_0DA8C5:        db $06,$07,$08,$FE,$0A,$87

CODE_0DA8CB:        A0 0C         LDY #$0C                  ;
CODE_0DA8CD:        20 4F AA      JSR CODE_0DAA4F           ;
CODE_0DA8D0:        80 05         BRA CODE_0DA8D7           ;

CODE_0DA8D2:        A9 08         LDA #$08                  ;
CODE_0DA8D4:        8D 73 07      STA $0773                 ;
CODE_0DA8D7:        A4 00         LDY $00                   ;
CODE_0DA8D9:        BE C3 A8      LDX DATA_0DA8C5-2,y               ;
CODE_0DA8DC:        B9 C6 A8      LDA DATA_0DA8C5+1,y               ;
CODE_0DA8DF:        80 07         BRA CODE_0DA8E8           ;

CODE_0DA8E1:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA8E4:        A6 07         LDX $07                   ;
CODE_0DA8E6:        A9 FD         LDA #$FD                  ;
CODE_0DA8E8:        A0 00         LDY #$00                  ;
CODE_0DA8EA:        4C 15 AA      JMP CODE_0DAA15           ;

DATA_0DA8ED:        db $70,$62,$62,$68,$2B,$49,$4A,$4A
                    db $86

CODE_0DA8F6:        A4 5C         LDY $5C
CODE_0DA8F8:        AD 43 07      LDA $0743
CODE_0DA8FB:        F0 02         BEQ CODE_0DA8FF           ;
CODE_0DA8FD:        A0 04         LDY #$04                  ;
CODE_0DA8FF:        B9 F1 A8      LDA DATA_0DA8ED+4,y               ;
CODE_0DA902:        80 05         BRA CODE_0DA909           ;

CODE_0DA904:        A4 5C         LDY $5C                   ;
CODE_0DA906:        B9 ED A8      LDA DATA_0DA8ED,y               ;
CODE_0DA909:        48            PHA                       ;
CODE_0DA90A:        20 4C AA      JSR CODE_0DAA4C           ;
CODE_0DA90D:        A6 07         LDX $07                   ;
CODE_0DA90F:        A0 00         LDY #$00                  ;
CODE_0DA911:        68            PLA                       ;
CODE_0DA912:        4C 15 AA      JMP CODE_0DAA15           ;

CODE_0DA915:        A4 5C         LDY $5C                   ;
CODE_0DA917:        B9 F1 A8      LDA DATA_0DA8ED+4,y               ;
CODE_0DA91A:        80 05         BRA CODE_0DA921           ;

CODE_0DA91C:        A4 5C         LDY $5C                   ;
CODE_0DA91E:        B9 ED A8      LDA DATA_0DA8ED,y               ;
CODE_0DA921:        48            PHA                       ;
CODE_0DA922:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA925:        68            PLA                       ;
CODE_0DA926:        A6 07         LDX $07                   ;
CODE_0DA928:        4C 15 AA      JMP CODE_0DAA15           ;

CODE_0DA92B:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA92E:        A6 07         LDX $07                   ;
CODE_0DA930:        A9 6B         LDA #$6B                  ;
CODE_0DA932:        9D A1 06      STA $06A1,x               ;
CODE_0DA935:        E8            INX                       ;
CODE_0DA936:        88            DEY                       ;
CODE_0DA937:        30 0E         BMI CODE_0DA947           ;
CODE_0DA939:        A9 6C         LDA #$6C                  ;
CODE_0DA93B:        9D A1 06      STA $06A1,x               ;
CODE_0DA93E:        E8            INX                       ;
CODE_0DA93F:        88            DEY                       ;
CODE_0DA940:        30 05         BMI CODE_0DA947           ;
CODE_0DA942:        A9 6D         LDA #$6D                  ;
CODE_0DA944:        20 15 AA      JSR CODE_0DAA15           ;
CODE_0DA947:        AE 6A 02      LDX $026A                 ;
CODE_0DA94A:        20 81 AA      JSR CODE_0DAA81           ;
CODE_0DA94D:        9D 77 02      STA $0277,x               ;
CODE_0DA950:        AD 25 07      LDA $0725                 ;
CODE_0DA953:        9D 6B 02      STA $026B,x               ;
CODE_0DA956:        20 79 AA      JSR CODE_0DAA79           ;
CODE_0DA959:        9D 71 02      STA $0271,x               ;
CODE_0DA95C:        E8            INX                       ;
CODE_0DA95D:        E0 06         CPX #$06                  ;
CODE_0DA95F:        90 02         BCC CODE_0DA963           ;
CODE_0DA961:        A2 00         LDX #$00                  ;
CODE_0DA963:        8E 6A 02      STX $026A                 ;
CODE_0DA966:        60            RTS                       ;

CODE_0DA967:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA96A:        A2 00         LDX #$00                  ;
CODE_0DA96C:        18            CLC                       ;
CODE_0DA96D:        B5 10         LDA $10,x                 ;
CODE_0DA96F:        F0 05         BEQ CODE_0DA976           ;
CODE_0DA971:        E8            INX                       ;
CODE_0DA972:        E0 07         CPX #$07                  ;
CODE_0DA974:        D0 F6         BNE CODE_0DA96C           ;
CODE_0DA976:        20 79 AA      JSR CODE_0DAA79           ;
CODE_0DA979:        9D 1A 02      STA $021A,x               ;
CODE_0DA97C:        AD 25 07      LDA $0725                 ;
CODE_0DA97F:        95 79         STA $79,x                 ;
CODE_0DA981:        20 81 AA      JSR CODE_0DAA81           ;
CODE_0DA984:        9D 38 02      STA $0238,x               ;
CODE_0DA987:        95 5E         STA $5E,x                 ;
CODE_0DA989:        A9 32         LDA #$32                  ;
CODE_0DA98B:        95 1C         STA $1C,x                 ;
CODE_0DA98D:        A0 01         LDY #$01                  ;
CODE_0DA98F:        94 BC         STY $BC,x                 ;
CODE_0DA991:        A9 01         LDA #$01                  ;
CODE_0DA993:        95 10         STA $10,x                 ;
CODE_0DA995:        A6 07         LDX $07                   ;
CODE_0DA997:        A9 6E         LDA #$6E                  ;
CODE_0DA999:        9D A1 06      STA $06A1,x               ;
CODE_0DA99C:        A9 6F         LDA #$6F                  ;
CODE_0DA99E:        9D A2 06      STA $06A2,x               ;
CODE_0DA9A1:        60            RTS                       ;

CODE_0DA9A2:        AD 5D 07      LDA $075D                 ;
CODE_0DA9A5:        F0 34         BEQ CODE_0DA9DB           ;
CODE_0DA9A7:        9C 5D 07      STZ $075D                 ;
CODE_0DA9AA:        80 09         BRA CODE_0DA9B5           ;

CODE_0DA9AC:        20 D5 A9      JSR CODE_0DA9D5           ;
CODE_0DA9AF:        4C C7 A9      JMP CODE_0DA9C7           ;

CODE_0DA9B2:        9C BC 06      STZ $06BC                 ;
CODE_0DA9B5:        20 D5 A9      JSR CODE_0DA9D5           ;
CODE_0DA9B8:        84 07         STY $07                   ;
CODE_0DA9BA:        A9 00         LDA #$00                  ;
CODE_0DA9BC:        A4 5C         LDY $5C                   ;
CODE_0DA9BE:        88            DEY                       ;
CODE_0DA9BF:        F0 02         BEQ CODE_0DA9C3           ;
CODE_0DA9C1:        A9 06         LDA #$06                  ;
CODE_0DA9C3:        18            CLC                       ;
CODE_0DA9C4:        65 07         ADC $07                   ;
CODE_0DA9C6:        A8            TAY                       ;
CODE_0DA9C7:        B9 6E BD      LDA DATA_0DBD6E,y               ;
CODE_0DA9CA:        48            PHA                       ;
CODE_0DA9CB:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DA9CE:        A6 07         LDX $07                   ;
CODE_0DA9D0:        68            PLA                       ;
CODE_0DA9D1:        9D A1 06      STA $06A1,x               ;
CODE_0DA9D4:        60            RTS                       ;

CODE_0DA9D5:        A5 00         LDA $00                   ;
CODE_0DA9D7:        38            SEC                       ;
CODE_0DA9D8:        E9 00         SBC #$00                  ;
CODE_0DA9DA:        A8            TAY                       ;
CODE_0DA9DB:        60            RTS                       ;

CODE_0DA9DC:        20 4C AA      JSR CODE_0DAA4C           ;
CODE_0DA9DF:        90 2C         BCC CODE_0DAA0D           ;
CODE_0DA9E1:        A5 5C         LDA $5C                   ;
CODE_0DA9E3:        D0 28         BNE CODE_0DAA0D           ;
CODE_0DA9E5:        AE 6A 02      LDX $026A                 ;
CODE_0DA9E8:        20 79 AA      JSR CODE_0DAA79           ;
CODE_0DA9EB:        38            SEC                       ;
CODE_0DA9EC:        E9 10         SBC #$10                  ;
CODE_0DA9EE:        9D 71 02      STA $0271,x               ;
CODE_0DA9F1:        AD 25 07      LDA $0725                 ;
CODE_0DA9F4:        E9 00         SBC #$00                  ;
CODE_0DA9F6:        9D 6B 02      STA $026B,x               ;
CODE_0DA9F9:        C8            INY                       ;
CODE_0DA9FA:        C8            INY                       ;
CODE_0DA9FB:        98            TYA                       ;
CODE_0DA9FC:        0A            ASL A                     ;
CODE_0DA9FD:        0A            ASL A                     ;
CODE_0DA9FE:        0A            ASL A                     ;
CODE_0DA9FF:        0A            ASL A                     ;
CODE_0DAA00:        9D 77 02      STA $0277,x               ;
CODE_0DAA03:        E8            INX                       ;
CODE_0DAA04:        E0 05         CPX #$05                  ;
CODE_0DAA06:        90 02         BCC CODE_0DAA0A           ;
CODE_0DAA08:        A2 00         LDX #$00                  ;
CODE_0DAA0A:        8E 6A 02      STX $026A                 ;
CODE_0DAA0D:        A6 5C         LDX $5C                   ;
CODE_0DAA0F:        A9 00         LDA #$00                  ;
CODE_0DAA11:        A2 08         LDX #$08                  ;
CODE_0DAA13:        A0 0F         LDY #$0F                  ;
CODE_0DAA15:        8C 35 07      STY $0735                 ;
CODE_0DAA18:        BC A1 06      LDY $06A1,x               ;
CODE_0DAA1B:        F0 20         BEQ CODE_0DAA3D           ;
CODE_0DAA1D:        C0 1F         CPY #$1F                  ;
CODE_0DAA1F:        F0 1F         BEQ CODE_0DAA40           ;
CODE_0DAA21:        C0 22         CPY #$22                  ;
CODE_0DAA23:        F0 1B         BEQ CODE_0DAA40           ;
CODE_0DAA25:        C0 E7         CPY #$E7                  ;
CODE_0DAA27:        F0 14         BEQ CODE_0DAA3D           ;
CODE_0DAA29:        C0 0F         CPY #$0F                  ;
CODE_0DAA2B:        F0 13         BEQ CODE_0DAA40           ;
CODE_0DAA2D:        C0 13         CPY #$13                  ;
CODE_0DAA2F:        F0 0F         BEQ CODE_0DAA40           ;
CODE_0DAA31:        C0 E7         CPY #$E7                  ;
CODE_0DAA33:        B0 0B         BCS CODE_0DAA40           ;
CODE_0DAA35:        C0 4E         CPY #$4E                  ;
CODE_0DAA37:        D0 04         BNE CODE_0DAA3D           ;
CODE_0DAA39:        C9 48         CMP #$48                  ;
CODE_0DAA3B:        F0 03         BEQ CODE_0DAA40           ;
CODE_0DAA3D:        9D A1 06      STA $06A1,x               ;
CODE_0DAA40:        E8            INX                       ;
CODE_0DAA41:        E0 0D         CPX #$0D                  ;
CODE_0DAA43:        B0 06         BCS CODE_0DAA4B           ;
CODE_0DAA45:        AC 35 07      LDY $0735                 ;
CODE_0DAA48:        88            DEY                       ;
CODE_0DAA49:        10 CA         BPL CODE_0DAA15           ;
CODE_0DAA4B:        60            RTS                       ;

CODE_0DAA4C:        20 5B AA      JSR CODE_0DAA5B           ;
CODE_0DAA4F:        BD 00 13      LDA $1300,x               ;
CODE_0DAA52:        18            CLC                       ;
CODE_0DAA53:        10 05         BPL CODE_0DAA5A           ;
CODE_0DAA55:        98            TYA                       ;
CODE_0DAA56:        9D 00 13      STA $1300,x               ;
CODE_0DAA59:        38            SEC                       ;
CODE_0DAA5A:        60            RTS                       ;

CODE_0DAA5B:        DA            PHX                       ;
CODE_0DAA5C:        C2 30         REP #$30                  ;
CODE_0DAA5E:        8A            TXA                       ;
CODE_0DAA5F:        29 FF 00      AND #$00FF                ;
CODE_0DAA62:        0A            ASL A                     ;
CODE_0DAA63:        AA            TAX                       ;
CODE_0DAA64:        BC 05 13      LDY $1305,x               ;
CODE_0DAA67:        E2 20         SEP #$20                  ;
CODE_0DAA69:        B7 FA         LDA [$FA],y               ;
CODE_0DAA6B:        29 0F         AND #$0F                  ;
CODE_0DAA6D:        85 07         STA $07                   ;
CODE_0DAA6F:        C8            INY                       ;
CODE_0DAA70:        B7 FA         LDA [$FA],y               ;
CODE_0DAA72:        29 0F         AND #$0F                  ;
CODE_0DAA74:        E2 10         SEP #$10                  ;
CODE_0DAA76:        A8            TAY                       ;
CODE_0DAA77:        FA            PLX                       ;
CODE_0DAA78:        60            RTS                       ;

CODE_0DAA79:        AD 26 07      LDA $0726                 ;
CODE_0DAA7C:        0A            ASL A                     ;
CODE_0DAA7D:        0A            ASL A                     ;
CODE_0DAA7E:        0A            ASL A                     ;
CODE_0DAA7F:        0A            ASL A                     ;
CODE_0DAA80:        60            RTS                       ;

CODE_0DAA81:        A5 07         LDA $07                   ;
CODE_0DAA83:        0A            ASL A                     ;
CODE_0DAA84:        0A            ASL A                     ;
CODE_0DAA85:        0A            ASL A                     ;
CODE_0DAA86:        0A            ASL A                     ;
CODE_0DAA87:        18            CLC                       ;
CODE_0DAA88:        69 20         ADC #$20                  ;
CODE_0DAA8A:        60            RTS                       ;

DATA_0DAA8B:        db $00,$D0

DATA_0DAA8D:        db $05,$05

CODE_0DAA8F:        48            PHA                       ;
CODE_0DAA90:        4A            LSR A                     ;
CODE_0DAA91:        4A            LSR A                     ;
CODE_0DAA92:        4A            LSR A                     ;
CODE_0DAA93:        4A            LSR A                     ;
CODE_0DAA94:        A8            TAY                       ;
CODE_0DAA95:        B9 8D AA      LDA DATA_0DAA8D,y               ;
CODE_0DAA98:        85 07         STA $07                   ;
CODE_0DAA9A:        68            PLA                       ;
CODE_0DAA9B:        29 0F         AND #$0F                  ;
CODE_0DAA9D:        18            CLC                       ;
CODE_0DAA9E:        79 8B AA      ADC DATA_0DAA8B,y               ;
CODE_0DAAA1:        85 06         STA $06                   ;
CODE_0DAAA3:        60            RTS                       ;

CODE_0DAAA4:        8B            PHB                       ;
CODE_0DAAA5:        4B            PHK                       ;
CODE_0DAAA6:        AB            PLB                       ;
CODE_0DAAA7:        20 4C AA      JSR CODE_0DAA4C           ;
CODE_0DAAAA:        AB            PLB                       ;
CODE_0DAAAB:        6B            RTL                       ;

CODE_0DAAAC:        8B            PHB                       ;
CODE_0DAAAD:        4B            PHK                       ;
CODE_0DAAAE:        AB            PLB                       ;
CODE_0DAAAF:        20 15 AA      JSR CODE_0DAA15           ;
CODE_0DAAB2:        AB            PLB                       ;
CODE_0DAAB3:        6B            RTL                       ;

CODE_0DAAB4:        8B            PHB                       ;
CODE_0DAAB5:        4B            PHK                       ;
CODE_0DAAB6:        AB            PLB                       ;
CODE_0DAAB7:        20 4F AA      JSR CODE_0DAA4F           ;
CODE_0DAABA:        AB            PLB                       ;
CODE_0DAABB:        6B            RTL                       ;

CODE_0DAABC:        8B            PHB                       ;
CODE_0DAABD:        4B            PHK                       ;
CODE_0DAABE:        AB            PLB                       ;
CODE_0DAABF:        20 79 AA      JSR CODE_0DAA79           ;
CODE_0DAAC2:        AB            PLB                       ;
CODE_0DAAC3:        6B            RTL                       ;

CODE_0DAAC4:        8B            PHB                       ;
CODE_0DAAC5:        4B            PHK                       ;
CODE_0DAAC6:        AB            PLB                       ;
CODE_0DAAC7:        20 F1 A7      JSR CODE_0DA7F1           ;
CODE_0DAACA:        AB            PLB                       ;
CODE_0DAACB:        6B            RTL                       ;

CODE_0DAACC:        8B            PHB                       ;
CODE_0DAACD:        4B            PHK                       ;
CODE_0DAACE:        AB            PLB                       ;
CODE_0DAACF:        48            PHA                       ;
CODE_0DAAD0:        20 BC A7      JSR CODE_0DA7BC           ;
CODE_0DAAD3:        68            PLA                       ;
CODE_0DAAD4:        8D 07 00      STA $0007                 ;
CODE_0DAAD7:        98            TYA                       ;
CODE_0DAAD8:        48            PHA                       ;
CODE_0DAAD9:        BC 00 13      LDY $1300,x               ;
CODE_0DAADC:        F0 27         BEQ CODE_0DAB05           ;
CODE_0DAADE:        20 F1 A7      JSR CODE_0DA7F1           ;
CODE_0DAAE1:        B0 22         BCS CODE_0DAB05           ;
CODE_0DAAE3:        A9 04         LDA #$04                  ;
CODE_0DAAE5:        20 CD A7      JSR CODE_0DA7CD           ;
CODE_0DAAE8:        AD 06 00      LDA $0006                 ;
CODE_0DAAEB:        0A            ASL A                     ;
CODE_0DAAEC:        0A            ASL A                     ;
CODE_0DAAED:        0A            ASL A                     ;
CODE_0DAAEE:        0A            ASL A                     ;
CODE_0DAAEF:        18            CLC                       ;
CODE_0DAAF0:        7D 38 02      ADC $0238,x               ;
CODE_0DAAF3:        38            SEC                       ;
CODE_0DAAF4:        E9 0A         SBC #$0A                  ;
CODE_0DAAF6:        9D 38 02      STA $0238,x               ;
CODE_0DAAF9:        9D 3D 04      STA $043D,x               ;
CODE_0DAAFC:        18            CLC                       ;
CODE_0DAAFD:        69 18         ADC #$18                  ;
CODE_0DAAFF:        9D 1D 04      STA $041D,x               ;
CODE_0DAB02:        FE A1 00      INC $00A1,x               ;
CODE_0DAB05:        68            PLA                       ;
CODE_0DAB06:        A8            TAY                       ;
CODE_0DAB07:        48            PHA                       ;
CODE_0DAB08:        AE 07 00      LDX $0007                 ;
CODE_0DAB0B:        B9 68 A7      LDA DATA_0DA766+2,y               ;
CODE_0DAB0E:        AC 06 00      LDY $0006                 ;
CODE_0DAB11:        88            DEY                       ;
CODE_0DAB12:        20 15 AA      JSR CODE_0DAA15           ;
CODE_0DAB15:        68            PLA                       ;
CODE_0DAB16:        A8            TAY                       ;
CODE_0DAB17:        B9 66 A7      LDA DATA_0DA766,y               ;
CODE_0DAB1A:        9D A1 06      STA $06A1,x               ;
CODE_0DAB1D:        AB            PLB                       ;
CODE_0DAB1E:        6B            RTL                       ;

CODE_0DAB1F:        B5 29         LDA $29,x                 ;
CODE_0DAB21:        D0 40         BNE CODE_0DAB63           ;
CODE_0DAB23:        BD 92 07      LDA $0792,x               ;
CODE_0DAB26:        D0 3B         BNE CODE_0DAB63           ;
CODE_0DAB28:        BD A1 00      LDA $00A1,x               ;
CODE_0DAB2B:        D0 0C         BNE CODE_0DAB39           ;
CODE_0DAB2D:        B5 5E         LDA $5E,x                 ;
CODE_0DAB2F:        49 FF         EOR #$FF                  ;
CODE_0DAB31:        18            CLC                       ;
CODE_0DAB32:        69 01         ADC #$01                  ;
CODE_0DAB34:        95 5E         STA $5E,x                 ;
CODE_0DAB36:        FE A1 00      INC $00A1,x               ;
CODE_0DAB39:        BD 1D 04      LDA $041D,x               ;
CODE_0DAB3C:        B4 5E         LDY $5E,x                 ;
CODE_0DAB3E:        10 03         BPL CODE_0DAB43           ;
CODE_0DAB40:        BD 3D 04      LDA $043D,x               ;
CODE_0DAB43:        8D 00 00      STA $0000                 ;
CODE_0DAB46:        AD 47 07      LDA $0747                 ;
CODE_0DAB49:        D0 18         BNE CODE_0DAB63           ;
CODE_0DAB4B:        BD 38 02      LDA $0238,x               ;
CODE_0DAB4E:        18            CLC                       ;
CODE_0DAB4F:        75 5E         ADC $5E,x                 ;
CODE_0DAB51:        9D 38 02      STA $0238,x               ;
CODE_0DAB54:        CD 00 00      CMP $0000                 ;
CODE_0DAB57:        D0 0A         BNE CODE_0DAB63           ;
CODE_0DAB59:        A9 00         LDA #$00                  ;
CODE_0DAB5B:        9D A1 00      STA $00A1,x               ;
CODE_0DAB5E:        A9 20         LDA #$20                  ;
CODE_0DAB60:        9D 92 07      STA $0792,x               ;
CODE_0DAB63:        60            RTS                       ;

DATA_0DAB64:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

CODE_0DAB70:        AD 72 07      LDA $0772                 ;
CODE_0DAB73:        0A            ASL A                     ;
CODE_0DAB74:        AA            TAX                       ;
CODE_0DAB75:        7C 78 AB      JMP (PNTR_0DAB78,x)       ;

PNTR_0DAB78:        dw CODE_0D9D90
                    dw CODE_0D89BD
                    dw CODE_0D9E5A
                    dw CODE_0DAB99

CODE_0DAB80:        AF F2 1F 70   LDA $701FF2               ;
CODE_0DAB84:        D0 17         BNE CODE_0DAB9D           ;
CODE_0DAB86:        AF 05 FB 7F   LDA $7FFB05               ;
CODE_0DAB8A:        30 11         BMI CODE_0DAB9D           ;
CODE_0DAB8C:        20 50 AD      JSR CODE_0DAD50           ;
CODE_0DAB8F:        20 B2 FD      JSR CODE_0DFDB2           ;
CODE_0DAB92:        20 29 FD      JSR CODE_0DFD29           ;
CODE_0DAB95:        20 00 F7      JSR CODE_0DF700           ;
CODE_0DAB98:        60            RTS                       ;

CODE_0DAB99:        22 00 D0 0F   JSL CODE_0FD000           ;
CODE_0DAB9D:        A5 28         LDA $28                   ;
CODE_0DAB9F:        D0 00         BNE CODE_0DABA1           ;
CODE_0DABA1:        20 50 AD      JSR CODE_0DAD50           ;
CODE_0DABA4:        AD 72 07      LDA $0772                 ;
CODE_0DABA7:        C9 03         CMP #$03                  ;
CODE_0DABA9:        B0 01         BCS CODE_0DABAC           ;
CODE_0DABAB:        60            RTS                       ;

CODE_0DABAC:        20 2F B4      JSR CODE_0DB42F           ;
CODE_0DABAF:        A2 00         LDX #$00                  ;
CODE_0DABB1:        86 9E         STX $9E                   ;
CODE_0DABB3:        AD 67 0E      LDA $0E67                 ;
CODE_0DABB6:        F0 04         BEQ CODE_0DABBC           ;
CODE_0DABB8:        C9 7F         CMP #$7F                  ;
CODE_0DABBA:        F0 1E         BEQ CODE_0DABDA           ;
CODE_0DABBC:        20 50 C2      JSR CODE_0DC250           ;
CODE_0DABBF:        AD 67 0E      LDA $0E67                 ;
CODE_0DABC2:        D0 03         BNE CODE_0DABC7           ;
CODE_0DABC4:        20 D5 88      JSR CODE_0D88D5           ;
CODE_0DABC7:        E8            INX                       ;
CODE_0DABC8:        E0 0A         CPX #$0A                  ;
CODE_0DABCA:        D0 E5         BNE CODE_0DABB1           ;
CODE_0DABCC:        22 FB E0 0F   JSL CODE_0FE0FB           ;
CODE_0DABD0:        AD 67 0E      LDA $0E67                 ;
CODE_0DABD3:        F0 05         BEQ CODE_0DABDA           ;
CODE_0DABD5:        A9 7F         LDA #$7F                  ;
CODE_0DABD7:        8D 67 0E      STA $0E67                 ;
CODE_0DABDA:        20 B2 FD      JSR CODE_0DFDB2           ;
CODE_0DABDD:        20 29 FD      JSR CODE_0DFD29           ;
CODE_0DABE0:        20 00 F7      JSR CODE_0DF700           ;
CODE_0DABE3:        A2 01         LDX #$01                  ;
CODE_0DABE5:        86 9E         STX $9E                   ;
CODE_0DABE7:        20 0F BE      JSR CODE_0DBE0F           ;
CODE_0DABEA:        CA            DEX                       ;
CODE_0DABEB:        86 9E         STX $9E                   ;
CODE_0DABED:        20 0F BE      JSR CODE_0DBE0F           ;
CODE_0DABF0:        20 77 BE      JSR CODE_0DBE77           ;
CODE_0DABF3:        20 8C BA      JSR CODE_0DBA8C           ;
CODE_0DABF6:        20 75 B8      JSR CODE_0DB875           ;
CODE_0DABF9:        20 FA B5      JSR CODE_0DB5FA           ;
CODE_0DABFC:        20 A1 B6      JSR CODE_0DB6A1           ;
CODE_0DABFF:        20 8D B5      JSR CODE_0DB58D           ;
CODE_0DAC02:        20 25 90      JSR CODE_0D9025           ;
CODE_0DAC05:        AD 04 0F      LDA $0F04                 ;
CODE_0DAC08:        F0 04         BEQ CODE_0DAC0E           ;
CODE_0DAC0A:        22 57 F2 0F   JSL CODE_0FF257           ;
CODE_0DAC0E:        A5 BB         LDA $BB                   ;
CODE_0DAC10:        C9 02         CMP #$02                  ;
CODE_0DAC12:        10 12         BPL CODE_0DAC26           ;
CODE_0DAC14:        AD AF 07      LDA $07AF                 ;
CODE_0DAC17:        F0 1F         BEQ CODE_0DAC38           ;
CODE_0DAC19:        C9 04         CMP #$04                  ;
CODE_0DAC1B:        D0 09         BNE CODE_0DAC26           ;
CODE_0DAC1D:        AD 87 07      LDA $0787                 ;
CODE_0DAC20:        D0 04         BNE CODE_0DAC26           ;
CODE_0DAC22:        22 F6 D8 0F   JSL CODE_0FD8F6           ;
CODE_0DAC26:        A5 09         LDA $09                   ;
CODE_0DAC28:        5A            PHY                       ;
CODE_0DAC29:        AC AF 07      LDY $07AF                 ;
CODE_0DAC2C:        C0 08         CPY #$08                  ;
CODE_0DAC2E:        B0 02         BCS CODE_0DAC32           ;
CODE_0DAC30:        4A            LSR A                     ;
CODE_0DAC31:        4A            LSR A                     ;
CODE_0DAC32:        7A            PLY                       ;
CODE_0DAC33:        20 18 B0      JSR CODE_0DB018           ;
CODE_0DAC36:        80 14         BRA CODE_0DAC4C           ;

CODE_0DAC38:        AD 87 07      LDA $0787                 ;
CODE_0DAC3B:        C9 01         CMP #$01                  ;
CODE_0DAC3D:        D0 0A         BNE CODE_0DAC49           ;
CODE_0DAC3F:        A5 0F         LDA $0F                   ;
CODE_0DAC41:        C9 0C         CMP #$0C                  ;
CODE_0DAC43:        F0 04         BEQ CODE_0DAC49           ;
CODE_0DAC45:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0DAC49:        20 50 B0      JSR CODE_0DB050           ;
CODE_0DAC4C:        A5 0A         LDA $0A                   ;
CODE_0DAC4E:        85 0D         STA $0D                   ;
CODE_0DAC50:        64 0C         STZ $0C                   ;
CODE_0DAC52:        AD 73 07      LDA $0773                 ;
CODE_0DAC55:        C9 06         CMP #$06                  ;
CODE_0DAC57:        F0 1C         BEQ CODE_0DAC75           ;
CODE_0DAC59:        AD 1F 07      LDA $071F                 ;
CODE_0DAC5C:        D0 14         BNE CODE_0DAC72           ;
CODE_0DAC5E:        AD 3D 07      LDA $073D                 ;
CODE_0DAC61:        C9 20         CMP #$20                  ;
CODE_0DAC63:        30 10         BMI CODE_0DAC75           ;
CODE_0DAC65:        AD 3D 07      LDA $073D                 ;
CODE_0DAC68:        E9 20         SBC #$20                  ;
CODE_0DAC6A:        8D 3D 07      STA $073D                 ;
CODE_0DAC6D:        A9 00         LDA #$00                  ;
CODE_0DAC6F:        8D 00 1A      STA $1A00                 ;
CODE_0DAC72:        20 54 A0      JSR CODE_0DA054           ;
CODE_0DAC75:        60            RTS                       ;

CODE_0DAC76:        AD FF 06      LDA $06FF                 ;
CODE_0DAC79:        18            CLC                       ;
CODE_0DAC7A:        6D A1 03      ADC $03A1                 ;
CODE_0DAC7D:        8D FF 06      STA $06FF                 ;
CODE_0DAC80:        AD 23 07      LDA $0723                 ;
CODE_0DAC83:        F0 03         BEQ CODE_0DAC88           ;
CODE_0DAC85:        4C 02 AD      JMP CODE_0DAD02           ;

CODE_0DAC88:        AD 55 07      LDA $0755                 ;
CODE_0DAC8B:        C9 50         CMP #$50                  ;
CODE_0DAC8D:        90 73         BCC CODE_0DAD02           ;
CODE_0DAC8F:        AD 8D 07      LDA $078D                 ;
CODE_0DAC92:        D0 6E         BNE CODE_0DAD02           ;
CODE_0DAC94:        AC FF 06      LDY $06FF                 ;
CODE_0DAC97:        88            DEY                       ;
CODE_0DAC98:        30 68         BMI CODE_0DAD02           ;
CODE_0DAC9A:        C8            INY                       ;
CODE_0DAC9B:        C0 02         CPY #$02                  ;
CODE_0DAC9D:        90 01         BCC CODE_0DACA0           ;
CODE_0DAC9F:        88            DEY                       ;
CODE_0DACA0:        AD 55 07      LDA $0755                 ;
CODE_0DACA3:        C9 70         CMP #$70                  ;
CODE_0DACA5:        90 03         BCC CODE_0DACAA           ;
CODE_0DACA7:        AC FF 06      LDY $06FF                 ;
CODE_0DACAA:        AD 01 0F      LDA $0F01                 ;
CODE_0DACAD:        D0 FB         BNE CODE_0DACAA           ;
CODE_0DACAF:        98            TYA                       ;
CODE_0DACB0:        8D 75 07      STA $0775                 ;
CODE_0DACB3:        18            CLC                       ;
CODE_0DACB4:        6D 3D 07      ADC $073D                 ;
CODE_0DACB7:        8D 3D 07      STA $073D                 ;
CODE_0DACBA:        AD 1C 07      LDA $071C                 ;
CODE_0DACBD:        85 00         STA $00                   ;
CODE_0DACBF:        AD 1A 07      LDA $071A                 ;
CODE_0DACC2:        85 01         STA $01                   ;
CODE_0DACC4:        C2 30         REP #$30                  ;
CODE_0DACC6:        98            TYA                       ;
CODE_0DACC7:        29 FF 00      AND #$00FF                ;
CODE_0DACCA:        18            CLC                       ;
CODE_0DACCB:        65 00         ADC $00                   ;
CODE_0DACCD:        85 00         STA $00                   ;
CODE_0DACCF:        4A            LSR A                     ;
CODE_0DACD0:        8D FD 0E      STA $0EFD                 ;
CODE_0DACD3:        4A            LSR A                     ;
CODE_0DACD4:        8D EE 0E      STA $0EEE                 ;
CODE_0DACD7:        E2 30         SEP #$30                  ;
CODE_0DACD9:        A5 00         LDA $00                   ;
CODE_0DACDB:        8D 1C 07      STA $071C                 ;
CODE_0DACDE:        8D 3F 07      STA $073F                 ;
CODE_0DACE1:        85 42         STA $42                   ;
CODE_0DACE3:        A5 01         LDA $01                   ;
CODE_0DACE5:        8D 1A 07      STA $071A                 ;
CODE_0DACE8:        85 43         STA $43                   ;
CODE_0DACEA:        29 01         AND #$01                  ;
CODE_0DACEC:        85 00         STA $00                   ;
CODE_0DACEE:        AD 78 07      LDA $0778                 ;
CODE_0DACF1:        29 FE         AND #$FE                  ;
CODE_0DACF3:        05 00         ORA $00                   ;
CODE_0DACF5:        8D 78 07      STA $0778                 ;
CODE_0DACF8:        20 3E AD      JSR CODE_0DAD3E           ;
CODE_0DACFB:        A9 08         LDA #$08                  ;
CODE_0DACFD:        8D A1 07      STA $07A1                 ;
CODE_0DAD00:        80 05         BRA CODE_0DAD07           ;

CODE_0DAD02:        A9 00         LDA #$00                  ;
CODE_0DAD04:        8D 75 07      STA $0775                 ;
CODE_0DAD07:        A2 00         LDX #$00                  ;
CODE_0DAD09:        20 34 FE      JSR CODE_0DFE34           ;
CODE_0DAD0C:        85 00         STA $00                   ;
CODE_0DAD0E:        A0 00         LDY #$00                  ;
CODE_0DAD10:        0A            ASL A                     ;
CODE_0DAD11:        B0 07         BCS CODE_0DAD1A           ;
CODE_0DAD13:        C8            INY                       ;
CODE_0DAD14:        A5 00         LDA $00                   ;
CODE_0DAD16:        29 20         AND #$20                  ;
CODE_0DAD18:        F0 1A         BEQ CODE_0DAD34           ;
CODE_0DAD1A:        B9 1C 07      LDA $071C,y               ;
CODE_0DAD1D:        38            SEC                       ;
CODE_0DAD1E:        F9 3A AD      SBC DATA_0DAD3A,y               ;
CODE_0DAD21:        8D 19 02      STA $0219                 ;
CODE_0DAD24:        B9 1A 07      LDA $071A,y               ;
CODE_0DAD27:        E9 00         SBC #$00                  ;
CODE_0DAD29:        85 78         STA $78                   ;
CODE_0DAD2B:        A5 0C         LDA $0C                   ;
CODE_0DAD2D:        D9 3C AD      CMP DATA_0DAD3C,y               ;
CODE_0DAD30:        F0 02         BEQ CODE_0DAD34           ;
CODE_0DAD32:        64 5D         STZ $5D                   ;
CODE_0DAD34:        A9 00         LDA #$00                  ;
CODE_0DAD36:        8D A1 03      STA $03A1                 ;
CODE_0DAD39:        60            RTS                       ;

DATA_0DAD3A:        db $00,$10

DATA_0DAD3C:        db $01,$02

CODE_0DAD3E:        AD 1C 07      LDA $071C                 ;
CODE_0DAD41:        18            CLC                       ;
CODE_0DAD42:        69 FF         ADC #$FF                  ;
CODE_0DAD44:        8D 1D 07      STA $071D                 ;
CODE_0DAD47:        AD 1A 07      LDA $071A                 ;
CODE_0DAD4A:        69 00         ADC #$00                  ;
CODE_0DAD4C:        8D 1B 07      STA $071B                 ;
CODE_0DAD4F:        60            RTS                       ;

CODE_0DAD50:        A5 0F         LDA $0F                   ;
CODE_0DAD52:        0A            ASL A                     ;
CODE_0DAD53:        AA            TAX                       ;
CODE_0DAD54:        7C 57 AD      JMP (PNTR_0DAD57,x)       ;

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

CODE_0DAD71:        AD 52 07      LDA $0752                 ;
CODE_0DAD74:        C9 02         CMP #$02                  ;
CODE_0DAD76:        F0 39         BEQ CODE_0DADB1           ;
CODE_0DAD78:        A9 00         LDA #$00                  ;
CODE_0DAD7A:        AC 37 02      LDY $0237                 ;
CODE_0DAD7D:        C0 30         CPY #$30                  ;
CODE_0DAD7F:        B0 03         BCS CODE_0DAD84           ;
CODE_0DAD81:        4C 12 AE      JMP CODE_0DAE12           ;

CODE_0DAD84:        AD 10 07      LDA $0710                 ;
CODE_0DAD87:        C9 06         CMP #$06                  ;
CODE_0DAD89:        F0 04         BEQ CODE_0DAD8F           ;
CODE_0DAD8B:        C9 07         CMP #$07                  ;
CODE_0DAD8D:        D0 6C         BNE CODE_0DADFB           ;
CODE_0DAD8F:        AD 56 02      LDA $0256                 ;
CODE_0DAD92:        29 F0         AND #$F0                  ;
CODE_0DAD94:        F0 05         BEQ CODE_0DAD9B           ;
CODE_0DAD96:        A9 01         LDA #$01                  ;
CODE_0DAD98:        4C 12 AE      JMP CODE_0DAE12           ;

CODE_0DAD9B:        20 AD AF      JSR CODE_0DAFAD           ;
CODE_0DAD9E:        CE DE 06      DEC $06DE                 ;
CODE_0DADA1:        D0 6E         BNE CODE_0DAE11           ;
CODE_0DADA3:        A9 01         LDA #$01                  ;
CODE_0DADA5:        8D 7F 0E      STA $0E7F                 ;
CODE_0DADA8:        8D 4F 0E      STA $0E4F                 ;
CODE_0DADAB:        EE 69 07      INC $0769                 ;
CODE_0DADAE:        4C B0 B0      JMP CODE_0DB0B0           ;

CODE_0DADB1:        AD 58 07      LDA $0758                 ;
CODE_0DADB4:        D0 1C         BNE CODE_0DADD2           ;
CODE_0DADB6:        AD 37 02      LDA $0237                 ;
CODE_0DADB9:        C9 B0         CMP #$B0                  ;
CODE_0DADBB:        D0 05         BNE CODE_0DADC2           ;
CODE_0DADBD:        A9 04         LDA #$04                  ;
CODE_0DADBF:        8D 00 16      STA $1600                 ;
CODE_0DADC2:        8D 4E 0E      STA $0E4E                 ;
CODE_0DADC5:        A9 FF         LDA #$FF                  ;
CODE_0DADC7:        20 72 AF      JSR CODE_0DAF72           ;
CODE_0DADCA:        AD 37 02      LDA $0237                 ;
CODE_0DADCD:        C9 91         CMP #$91                  ;
CODE_0DADCF:        90 2A         BCC CODE_0DADFB           ;
CODE_0DADD1:        60            RTS                       ;

CODE_0DADD2:        AD 99 03      LDA $0399                 ;
CODE_0DADD5:        C9 60         CMP #$60                  ;
CODE_0DADD7:        D0 38         BNE CODE_0DAE11           ;
CODE_0DADD9:        AD 37 02      LDA $0237                 ;
CODE_0DADDC:        C9 99         CMP #$99                  ;
CODE_0DADDE:        A0 00         LDY #$00                  ;
CODE_0DADE0:        A9 01         LDA #$01                  ;
CODE_0DADE2:        90 0A         BCC CODE_0DADEE           ;
CODE_0DADE4:        A9 03         LDA #$03                  ;
CODE_0DADE6:        85 28         STA $28                   ;
CODE_0DADE8:        C8            INY                       ;
CODE_0DADE9:        A9 08         LDA #$08                  ;
CODE_0DADEB:        8D B4 05      STA $05B4                 ;
CODE_0DADEE:        8C 16 07      STY $0716                 ;
CODE_0DADF1:        20 12 AE      JSR CODE_0DAE12           ;
CODE_0DADF4:        AD 19 02      LDA $0219                 ;
CODE_0DADF7:        C9 48         CMP #$48                  ;
CODE_0DADF9:        90 16         BCC CODE_0DAE11           ;
CODE_0DADFB:        9C 4E 0E      STZ $0E4E                 ;
CODE_0DADFE:        A9 08         LDA #$08                  ;
CODE_0DAE00:        85 0F         STA $0F                   ;
CODE_0DAE02:        A9 01         LDA #$01                  ;
CODE_0DAE04:        8D 02 02      STA $0202                 ;
CODE_0DAE07:        4A            LSR A                     ;
CODE_0DAE08:        8D 52 07      STA $0752                 ;
CODE_0DAE0B:        8D 16 07      STA $0716                 ;
CODE_0DAE0E:        8D 58 07      STA $0758                 ;
CODE_0DAE11:        60            RTS                       ;

CODE_0DAE12:        8D F4 0F      STA $0FF4                 ;
CODE_0DAE15:        A9 01         LDA #$01                  ;
CODE_0DAE17:        8D 7A 0B      STA $0B7A                 ;
CODE_0DAE1A:        80 03         BRA CODE_0DAE1F           ;

CODE_0DAE1C:        9C 7A 0B      STZ $0B7A                 ;
CODE_0DAE1F:        A5 0F         LDA $0F                   ;
CODE_0DAE21:        C9 0B         CMP #$0B                  ;
CODE_0DAE23:        F0 3A         BEQ CODE_0DAE5F           ;
CODE_0DAE25:        A5 5C         LDA $5C                   ;
CODE_0DAE27:        D0 0F         BNE CODE_0DAE38           ;
CODE_0DAE29:        A4 BB         LDY $BB                   ;
CODE_0DAE2B:        88            DEY                       ;
CODE_0DAE2C:        D0 07         BNE CODE_0DAE35           ;
CODE_0DAE2E:        AD 37 02      LDA $0237                 ;
CODE_0DAE31:        C9 D0         CMP #$D0                  ;
CODE_0DAE33:        90 03         BCC CODE_0DAE38           ;
CODE_0DAE35:        9C F4 0F      STZ $0FF4                 ;
CODE_0DAE38:        AD F4 0F      LDA $0FF4                 ;
CODE_0DAE3B:        29 C0         AND #$C0                  ;
CODE_0DAE3D:        85 0A         STA $0A                   ;
CODE_0DAE3F:        AD F4 0F      LDA $0FF4                 ;
CODE_0DAE42:        29 03         AND #$03                  ;
CODE_0DAE44:        85 0C         STA $0C                   ;
CODE_0DAE46:        AD F4 0F      LDA $0FF4                 ;
CODE_0DAE49:        29 0C         AND #$0C                  ;
CODE_0DAE4B:        85 0B         STA $0B                   ;
CODE_0DAE4D:        29 04         AND #$04                  ;
CODE_0DAE4F:        F0 0E         BEQ CODE_0DAE5F           ;
CODE_0DAE51:        A5 28         LDA $28                   ;
CODE_0DAE53:        D0 0A         BNE CODE_0DAE5F           ;
CODE_0DAE55:        A4 0C         LDY $0C                   ;
CODE_0DAE57:        F0 06         BEQ CODE_0DAE5F           ;
CODE_0DAE59:        A9 00         LDA #$00                  ;
CODE_0DAE5B:        85 0C         STA $0C                   ;
CODE_0DAE5D:        85 0B         STA $0B                   ;
CODE_0DAE5F:        AF 07 00 70   LDA $700007               ;
CODE_0DAE63:        F0 06         BEQ CODE_0DAE6B           ;
CODE_0DAE65:        22 FE DE 0F   JSL CODE_0FDEFE           ;
CODE_0DAE69:        90 03         BCC CODE_0DAE6E           ;
CODE_0DAE6B:        20 E5 B0      JSR CODE_0DB0E5           ;
CODE_0DAE6E:        A0 01         LDY #$01                  ;
CODE_0DAE70:        AD 54 07      LDA $0754                 ;
CODE_0DAE73:        D0 09         BNE CODE_0DAE7E           ;
CODE_0DAE75:        A0 00         LDY #$00                  ;
CODE_0DAE77:        AD 14 07      LDA $0714                 ;
CODE_0DAE7A:        F0 02         BEQ CODE_0DAE7E           ;
CODE_0DAE7C:        A0 02         LDY #$02                  ;
CODE_0DAE7E:        8C 8F 04      STY $048F                 ;
CODE_0DAE81:        A9 01         LDA #$01                  ;
CODE_0DAE83:        A4 5D         LDY $5D                   ;
CODE_0DAE85:        F0 05         BEQ CODE_0DAE8C           ;
CODE_0DAE87:        10 01         BPL CODE_0DAE8A           ;
CODE_0DAE89:        0A            ASL A                     ;
CODE_0DAE8A:        85 46         STA $46                   ;
CODE_0DAE8C:        20 76 AC      JSR CODE_0DAC76           ;
CODE_0DAE8F:        20 B2 FD      JSR CODE_0DFDB2           ;
CODE_0DAE92:        20 29 FD      JSR CODE_0DFD29           ;
CODE_0DAE95:        A2 00         LDX #$00                  ;
CODE_0DAE97:        20 A9 E9      JSR CODE_0DE9A9           ;
CODE_0DAE9A:        20 63 E2      JSR CODE_0DE263           ;
CODE_0DAE9D:        AD 37 02      LDA $0237                 ;
CODE_0DAEA0:        C9 40         CMP #$40                  ;
CODE_0DAEA2:        90 2A         BCC CODE_0DAECE           ;
CODE_0DAEA4:        A5 0F         LDA $0F                   ;
CODE_0DAEA6:        C9 05         CMP #$05                  ;
CODE_0DAEA8:        F0 24         BEQ CODE_0DAECE           ;
CODE_0DAEAA:        C9 07         CMP #$07                  ;
CODE_0DAEAC:        F0 20         BEQ CODE_0DAECE           ;
CODE_0DAEAE:        C9 04         CMP #$04                  ;
CODE_0DAEB0:        90 1C         BCC CODE_0DAECE           ;
CODE_0DAEB2:        A5 0F         LDA $0F                   ;
CODE_0DAEB4:        C9 0B         CMP #$0B                  ;
CODE_0DAEB6:        D0 0C         BNE CODE_0DAEC4           ;
CODE_0DAEB8:        9C 04 0F      STZ $0F04                 ;
CODE_0DAEBB:        AD 56 02      LDA $0256                 ;
CODE_0DAEBE:        29 CE         AND #$CE                  ;
CODE_0DAEC0:        09 30         ORA #$30                  ;
CODE_0DAEC2:        80 07         BRA CODE_0DAECB           ;

CODE_0DAEC4:        AD 56 02      LDA $0256                 ;
CODE_0DAEC7:        29 CE         AND #$CE                  ;
CODE_0DAEC9:        09 20         ORA #$20                  ;
CODE_0DAECB:        8D 56 02      STA $0256                 ;
CODE_0DAECE:        A5 BB         LDA $BB                   ;
CODE_0DAED0:        C9 02         CMP #$02                  ;
CODE_0DAED2:        30 48         BMI CODE_0DAF1C           ;
CODE_0DAED4:        A2 01         LDX #$01                  ;
CODE_0DAED6:        8E 23 07      STX $0723                 ;
CODE_0DAED9:        A0 04         LDY #$04                  ;
CODE_0DAEDB:        84 07         STY $07                   ;
CODE_0DAEDD:        A2 00         LDX #$00                  ;
CODE_0DAEDF:        AC 59 07      LDY $0759                 ;
CODE_0DAEE2:        D0 05         BNE CODE_0DAEE9           ;
CODE_0DAEE4:        AC 43 07      LDY $0743                 ;
CODE_0DAEE7:        D0 23         BNE CODE_0DAF0C           ;
CODE_0DAEE9:        E8            INX                       ;
CODE_0DAEEA:        A4 0F         LDY $0F                   ;
CODE_0DAEEC:        C0 0B         CPY #$0B                  ;
CODE_0DAEEE:        F0 1C         BEQ CODE_0DAF0C           ;
CODE_0DAEF0:        AC 12 07      LDY $0712                 ;
CODE_0DAEF3:        D0 13         BNE CODE_0DAF08           ;
CODE_0DAEF5:        C8            INY                       ;
CODE_0DAEF6:        8C 12 07      STY $0712                 ;
CODE_0DAEF9:        A0 09         LDY #$09                  ;
CODE_0DAEFB:        8C 02 16      STY $1602                 ;
CODE_0DAEFE:        48            PHA                       ;
CODE_0DAEFF:        A9 20         LDA #$20                  ;
CODE_0DAF01:        0C 01 16      TSB $1601                 ;
CODE_0DAF04:        68            PLA                       ;
CODE_0DAF05:        8D 67 0E      STA $0E67                 ;
CODE_0DAF08:        A0 06         LDY #$06                  ;
CODE_0DAF0A:        84 07         STY $07                   ;
CODE_0DAF0C:        C5 07         CMP $07                   ;
CODE_0DAF0E:        30 0C         BMI CODE_0DAF1C           ;
CODE_0DAF10:        CA            DEX                       ;
CODE_0DAF11:        30 0A         BMI CODE_0DAF1D           ;
CODE_0DAF13:        AC B1 07      LDY $07B1                 ;
CODE_0DAF16:        D0 04         BNE CODE_0DAF1C           ;
CODE_0DAF18:        A9 06         LDA #$06                  ;
CODE_0DAF1A:        85 0F         STA $0F                   ;
CODE_0DAF1C:        60            RTS                       ;

CODE_0DAF1D:        A9 00         LDA #$00                  ;
CODE_0DAF1F:        8D 58 07      STA $0758                 ;
CODE_0DAF22:        20 43 AF      JSR CODE_0DAF43           ;
CODE_0DAF25:        EE 52 07      INC $0752                 ;
CODE_0DAF28:        60            RTS                       ;

CODE_0DAF29:        A5 BB         LDA $BB                   ;
CODE_0DAF2B:        D0 07         BNE CODE_0DAF34           ;
CODE_0DAF2D:        AD 37 02      LDA $0237                 ;
CODE_0DAF30:        C9 E4         CMP #$E4                  ;
CODE_0DAF32:        90 0F         BCC CODE_0DAF43           ;
CODE_0DAF34:        A9 08         LDA #$08                  ;
CODE_0DAF36:        8D 58 07      STA $0758                 ;
CODE_0DAF39:        8D 67 0E      STA $0E67                 ;
CODE_0DAF3C:        A0 03         LDY #$03                  ;
CODE_0DAF3E:        84 28         STY $28                   ;
CODE_0DAF40:        4C 12 AE      JMP CODE_0DAE12           ;

CODE_0DAF43:        A9 02         LDA #$02                  ;
CODE_0DAF45:        8D 52 07      STA $0752                 ;
CODE_0DAF48:        4C 8F AF      JMP CODE_0DAF8F           ;

CODE_0DAF4B:        A9 01         LDA #$01                  ;
CODE_0DAF4D:        8D 4F 0E      STA $0E4F                 ;
CODE_0DAF50:        8D 18 02      STA $0218                 ;
CODE_0DAF53:        A5 09         LDA $09                   ;
CODE_0DAF55:        4A            LSR A                     ;
CODE_0DAF56:        90 05         BCC CODE_0DAF5D           ;
CODE_0DAF58:        A9 01         LDA #$01                  ;
CODE_0DAF5A:        20 72 AF      JSR CODE_0DAF72           ;
CODE_0DAF5D:        20 76 AC      JSR CODE_0DAC76           ;
CODE_0DAF60:        A0 00         LDY #$00                  ;
CODE_0DAF62:        AD D6 06      LDA $06D6                 ;
CODE_0DAF65:        D0 20         BNE CODE_0DAF87           ;
CODE_0DAF67:        C8            INY                       ;
CODE_0DAF68:        A5 5C         LDA $5C                   ;
CODE_0DAF6A:        C9 03         CMP #$03                  ;
CODE_0DAF6C:        D0 19         BNE CODE_0DAF87           ;
CODE_0DAF6E:        C8            INY                       ;
CODE_0DAF6F:        4C 87 AF      JMP CODE_0DAF87           ;

CODE_0DAF72:        18            CLC                       ;
CODE_0DAF73:        6D 37 02      ADC $0237                 ;
CODE_0DAF76:        8D 37 02      STA $0237                 ;
CODE_0DAF79:        60            RTS                       ;

CODE_0DAF7A:        A9 01         LDA #$01                  ;
CODE_0DAF7C:        8D 4F 0E      STA $0E4F                 ;
CODE_0DAF7F:        8D 67 0E      STA $0E67                 ;
CODE_0DAF82:        20 AD AF      JSR CODE_0DAFAD           ;
CODE_0DAF85:        A0 02         LDY #$02                  ;
CODE_0DAF87:        CE DE 06      DEC $06DE                 ;
CODE_0DAF8A:        D0 20         BNE CODE_0DAFAC           ;
CODE_0DAF8C:        8C 52 07      STY $0752                 ;
CODE_0DAF8F:        A9 01         LDA #$01                  ;
CODE_0DAF91:        8D 7F 0E      STA $0E7F                 ;
CODE_0DAF94:        8D 67 0E      STA $0E67                 ;
CODE_0DAF97:        AD FF 02      LDA $02FF                 ;
CODE_0DAF9A:        F0 08         BEQ CODE_0DAFA4           ;
CODE_0DAF9C:        A2 00         LDX #$00                  ;
CODE_0DAF9E:        22 D3 D4 0F   JSL CODE_0FD4D3           ;
CODE_0DAFA2:        A6 9E         LDX $9E                   ;
CODE_0DAFA4:        A9 00         LDA #$00                  ;
CODE_0DAFA6:        8D 72 07      STA $0772                 ;
CODE_0DAFA9:        8D 22 07      STA $0722                 ;
CODE_0DAFAC:        60            RTS                       ;

CODE_0DAFAD:        A9 08         LDA #$08                  ;
CODE_0DAFAF:        85 5D         STA $5D                   ;
CODE_0DAFB1:        A0 01         LDY #$01                  ;
CODE_0DAFB3:        AD 19 02      LDA $0219                 ;
CODE_0DAFB6:        29 0F         AND #$0F                  ;
CODE_0DAFB8:        D0 03         BNE CODE_0DAFBD           ;
CODE_0DAFBA:        85 5D         STA $5D                   ;
CODE_0DAFBC:        A8            TAY                       ;
CODE_0DAFBD:        98            TYA                       ;
CODE_0DAFBE:        20 12 AE      JSR CODE_0DAE12           ;
CODE_0DAFC1:        60            RTS                       ;

CODE_0DAFC2:        AD 47 07      LDA $0747                 ;
CODE_0DAFC5:        C9 F8         CMP #$F8                  ;
CODE_0DAFC7:        D0 03         BNE CODE_0DAFCC           ;
CODE_0DAFC9:        4C E4 AF      JMP CODE_0DAFE4           ;

CODE_0DAFCC:        C9 C4         CMP #$C4                  ;
CODE_0DAFCE:        D0 03         BNE CODE_0DAFD3           ;
CODE_0DAFD0:        20 02 B0      JSR CODE_0DB002           ;
CODE_0DAFD3:        60            RTS                       ;

CODE_0DAFD4:        AD 47 07      LDA $0747                 ;
CODE_0DAFD7:        C9 F0         CMP #$F0                  ;
CODE_0DAFD9:        B0 07         BCS CODE_0DAFE2           ;
CODE_0DAFDB:        C9 C8         CMP #$C8                  ;
CODE_0DAFDD:        F0 23         BEQ CODE_0DB002           ;
CODE_0DAFDF:        4C 1C AE      JMP CODE_0DAE1C           ;

CODE_0DAFE2:        D0 13         BNE CODE_0DAFF7           ;
CODE_0DAFE4:        AC 0B 07      LDY $070B                 ;
CODE_0DAFE7:        D0 0E         BNE CODE_0DAFF7           ;
CODE_0DAFE9:        8C 0D 07      STY $070D                 ;
CODE_0DAFEC:        EE 0B 07      INC $070B                 ;
CODE_0DAFEF:        AD 54 07      LDA $0754                 ;
CODE_0DAFF2:        49 01         EOR #$01                  ;
CODE_0DAFF4:        8D 54 07      STA $0754                 ;
CODE_0DAFF7:        60            RTS                       ;

CODE_0DAFF8:        AD 47 07      LDA $0747                 ;
CODE_0DAFFB:        C9 F0         CMP #$F0                  ;
CODE_0DAFFD:        B0 5B         BCS CODE_0DB05A           ;
CODE_0DAFFF:        4C 1C AE      JMP CODE_0DAE1C           ;

CODE_0DB002:        9C 47 07      STZ $0747                 ;
CODE_0DB005:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0DB009:        A9 08         LDA #$08                  ;
CODE_0DB00B:        85 0F         STA $0F                   ;
CODE_0DB00D:        60            RTS                       ;

CODE_0DB00E:        AD 47 07      LDA $0747                 ;
CODE_0DB011:        C9 C0         CMP #$C0                  ;
CODE_0DB013:        F0 38         BEQ CODE_0DB04D           ;
CODE_0DB015:        49 FF         EOR #$FF                  ;
CODE_0DB017:        0A            ASL A                     ;
CODE_0DB018:        0A            ASL A                     ;
CODE_0DB019:        0A            ASL A                     ;
CODE_0DB01A:        0A            ASL A                     ;
CODE_0DB01B:        5A            PHY                       ;
CODE_0DB01C:        DA            PHX                       ;
CODE_0DB01D:        C2 30         REP #$30                  ;
CODE_0DB01F:        29 60 00      AND #$0060                ;
CODE_0DB022:        AA            TAX                       ;
CODE_0DB023:        AD 53 07      LDA $0753                 ;
CODE_0DB026:        29 FF 00      AND #$00FF                ;
CODE_0DB029:        F0 06         BEQ CODE_0DB031           ;
CODE_0DB02B:        8A            TXA                       ;
CODE_0DB02C:        18            CLC                       ;
CODE_0DB02D:        69 20 00      ADC #$0020                ;
CODE_0DB030:        AA            TAX                       ;
CODE_0DB031:        A0 E0 01      LDY #$01E0                ;
CODE_0DB034:        BD 9C C1      LDA DATA_0DC19C,x               ;
CODE_0DB037:        99 00 10      STA $1000,y               ;
CODE_0DB03A:        E8            INX                       ;
CODE_0DB03B:        E8            INX                       ;
CODE_0DB03C:        C8            INY                       ;
CODE_0DB03D:        C8            INY                       ;
CODE_0DB03E:        C0 00 02      CPY #$0200                ;
CODE_0DB041:        D0 F1         BNE CODE_0DB034           ;
CODE_0DB043:        E2 30         SEP #$30                  ;
CODE_0DB045:        FA            PLX                       ;
CODE_0DB046:        7A            PLY                       ;
CODE_0DB047:        A9 01         LDA #$01                  ;
CODE_0DB049:        8D 00 12      STA $1200                 ;
CODE_0DB04C:        60            RTS                       ;

CODE_0DB04D:        20 02 B0      JSR CODE_0DB002           ;
CODE_0DB050:        AD 56 02      LDA $0256                 ;
CODE_0DB053:        29 F1         AND #$F1                  ;
CODE_0DB055:        09 0E         ORA #$0E                  ;
CODE_0DB057:        8D 56 02      STA $0256                 ;
CODE_0DB05A:        60            RTS                       ;

CODE_0DB05B:        A5 21         LDA $21                   ;
CODE_0DB05D:        C9 30         CMP #$30                  ;
CODE_0DB05F:        D0 11         BNE CODE_0DB072           ;
CODE_0DB061:        A9 00         LDA #$00                  ;
CODE_0DB063:        8D 13 07      STA $0713                 ;
CODE_0DB066:        AC 37 02      LDY $0237                 ;
CODE_0DB069:        C0 9E         CPY #$9E                  ;
CODE_0DB06B:        B0 02         BCS CODE_0DB06F           ;
CODE_0DB06D:        A9 04         LDA #$04                  ;
CODE_0DB06F:        4C 12 AE      JMP CODE_0DAE12           ;

CODE_0DB072:        E6 0F         INC $0F                   ;
CODE_0DB074:        60            RTS                       ;

DATA_0DB075:        db $15,$23,$16,$1B,$17,$18,$23,$63

CODE_0DB07D:        22 CD D2 0F   JSL CODE_0FD2CD           ;
CODE_0DB081:        F0 0F         BEQ CODE_0DB092           ;
CODE_0DB083:        A9 01         LDA #$01                  ;
CODE_0DB085:        20 12 AE      JSR CODE_0DAE12           ;
CODE_0DB088:        AD 37 02      LDA $0237                 ;
CODE_0DB08B:        C9 AE         CMP #$AE                  ;
CODE_0DB08D:        90 03         BCC CODE_0DB092           ;
CODE_0DB08F:        9C 23 07      STZ $0723                 ;
CODE_0DB092:        AD 46 07      LDA $0746                 ;
CODE_0DB095:        C9 05         CMP #$05                  ;
CODE_0DB097:        D0 4B         BNE CODE_0DB0E4           ;
CODE_0DB099:        EE 5C 07      INC $075C                 ;
CODE_0DB09C:        AD 5C 07      LDA $075C                 ;
CODE_0DB09F:        C9 03         CMP #$03                  ;
CODE_0DB0A1:        D0 0D         BNE CODE_0DB0B0           ;
CODE_0DB0A3:        AC 5F 07      LDY $075F                 ;
CODE_0DB0A6:        AD 48 07      LDA $0748                 ;
CODE_0DB0A9:        C9 10         CMP #$10                  ;
CODE_0DB0AB:        90 03         BCC CODE_0DB0B0           ;
CODE_0DB0AD:        EE 5D 07      INC $075D                 ;
CODE_0DB0B0:        EE 60 07      INC $0760                 ;
CODE_0DB0B3:        AD 5F 07      LDA $075F                 ;
CODE_0DB0B6:        C9 08         CMP #$08                  ;
CODE_0DB0B8:        D0 1D         BNE CODE_0DB0D7           ;
CODE_0DB0BA:        AD 5C 07      LDA $075C                 ;
CODE_0DB0BD:        C9 04         CMP #$04                  ;
CODE_0DB0BF:        D0 16         BNE CODE_0DB0D7           ;
CODE_0DB0C1:        9C 5C 07      STZ $075C                 ;
CODE_0DB0C4:        9C 60 07      STZ $0760                 ;
CODE_0DB0C7:        EE 5F 07      INC $075F                 ;
CODE_0DB0CA:        A9 FF         LDA #$FF                  ;
CODE_0DB0CC:        8D FA 07      STA $07FA                 ;
CODE_0DB0CF:        A9 01         LDA #$01                  ;
CODE_0DB0D1:        8D FB 07      STA $07FB                 ;
CODE_0DB0D4:        8D 6A 07      STA $076A                 ;
CODE_0DB0D7:        22 4C C3 0E   JSL CODE_0EC34C           ;
CODE_0DB0DB:        EE 57 07      INC $0757                 ;
CODE_0DB0DE:        20 8F AF      JSR CODE_0DAF8F           ;
CODE_0DB0E1:        8D 5B 07      STA $075B                 ;
CODE_0DB0E4:        60            RTS                       ;

CODE_0DB0E5:        A9 00         LDA #$00                  ;
CODE_0DB0E7:        AC 54 07      LDY $0754                 ;
CODE_0DB0EA:        D0 08         BNE CODE_0DB0F4           ;
CODE_0DB0EC:        A5 28         LDA $28                   ;
CODE_0DB0EE:        D0 07         BNE CODE_0DB0F7           ;
CODE_0DB0F0:        A5 0B         LDA $0B                   ;
CODE_0DB0F2:        29 04         AND #$04                  ;
CODE_0DB0F4:        8D 14 07      STA $0714                 ;
CODE_0DB0F7:        20 36 B2      JSR CODE_0DB236           ;
CODE_0DB0FA:        AD 0B 07      LDA $070B                 ;
CODE_0DB0FD:        D0 18         BNE CODE_0DB117           ;
CODE_0DB0FF:        A5 28         LDA $28                   ;
CODE_0DB101:        C9 03         CMP #$03                  ;
CODE_0DB103:        F0 05         BEQ CODE_0DB10A           ;
CODE_0DB105:        A0 18         LDY #$18                  ;
CODE_0DB107:        8C 91 07      STY $0791                 ;
CODE_0DB10A:        0A            ASL A                     ;
CODE_0DB10B:        AA            TAX                       ;
CODE_0DB10C:        7C 0F B1      JMP (PNTR_0DB10F,x)       ;

PNTR_0DB10F:        dw CODE_0DB118
                    dw CODE_0DB13E
                    dw CODE_0DB135
                    dw CODE_0DB197

CODE_0DB117:        60            RTS                       ;

CODE_0DB118:        20 9D B3      JSR CODE_0DB39D           ;
CODE_0DB11B:        A5 0C         LDA $0C                   ;
CODE_0DB11D:        F0 03         BEQ CODE_0DB122           ;
CODE_0DB11F:        8D 02 02      STA $0202                 ;
CODE_0DB122:        20 D8 B3      JSR CODE_0DB3D8           ;
CODE_0DB125:        20 A7 BE      JSR CODE_0DBEA7           ;
CODE_0DB128:        8D FF 06      STA $06FF                 ;
CODE_0DB12B:        AD 04 0F      LDA $0F04                 ;
CODE_0DB12E:        F0 04         BEQ CODE_0DB134           ;
CODE_0DB130:        22 FE F1 0F   JSL CODE_0FF1FE           ;
CODE_0DB134:        60            RTS                       ;

CODE_0DB135:        AD 0A 07      LDA $070A                 ;
CODE_0DB138:        8D 09 07      STA $0709                 ;
CODE_0DB13B:        4C 77 B1      JMP CODE_0DB177           ;

CODE_0DB13E:        A4 A0         LDY $A0                   ;
CODE_0DB140:        10 14         BPL CODE_0DB156           ;
CODE_0DB142:        A5 0A         LDA $0A                   ;
CODE_0DB144:        29 80         AND #$80                  ;
CODE_0DB146:        25 0D         AND $0D                   ;
CODE_0DB148:        D0 12         BNE CODE_0DB15C           ;
CODE_0DB14A:        AD 08 07      LDA $0708                 ;
CODE_0DB14D:        38            SEC                       ;
CODE_0DB14E:        ED 37 02      SBC $0237                 ;
CODE_0DB151:        CD 06 07      CMP $0706                 ;
CODE_0DB154:        90 06         BCC CODE_0DB15C           ;
CODE_0DB156:        AD 0A 07      LDA $070A                 ;
CODE_0DB159:        8D 09 07      STA $0709                 ;
CODE_0DB15C:        AD 04 07      LDA $0704                 ;
CODE_0DB15F:        F0 16         BEQ CODE_0DB177           ;
CODE_0DB161:        20 9D B3      JSR CODE_0DB39D           ;
CODE_0DB164:        AD 37 02      LDA $0237                 ;
CODE_0DB167:        C9 14         CMP #$14                  ;
CODE_0DB169:        B0 05         BCS CODE_0DB170           ;
CODE_0DB16B:        A9 18         LDA #$18                  ;
CODE_0DB16D:        8D 09 07      STA $0709                 ;
CODE_0DB170:        A5 0C         LDA $0C                   ;
CODE_0DB172:        F0 03         BEQ CODE_0DB177           ;
CODE_0DB174:        8D 02 02      STA $0202                 ;
CODE_0DB177:        A5 0C         LDA $0C                   ;
CODE_0DB179:        F0 03         BEQ CODE_0DB17E           ;
CODE_0DB17B:        20 D8 B3      JSR CODE_0DB3D8           ;
CODE_0DB17E:        20 25 B1      JSR CODE_0DB125           ;
CODE_0DB181:        A5 0F         LDA $0F                   ;
CODE_0DB183:        C9 0B         CMP #$0B                  ;
CODE_0DB185:        D0 05         BNE CODE_0DB18C           ;
CODE_0DB187:        A9 28         LDA #$28                  ;
CODE_0DB189:        8D 09 07      STA $0709                 ;
CODE_0DB18C:        4C F0 BE      JMP CODE_0DBEF0           ;

DATA_0DB18F:        db $0E,$04,$FC,$F2
DATA_0DB193:        db $00,$00,$FF,$FF

CODE_0DB197:        AD 1C 04      LDA $041C                 ;
CODE_0DB19A:        18            CLC                       ;
CODE_0DB19B:        6D 3C 04      ADC $043C                 ;
CODE_0DB19E:        8D 1C 04      STA $041C                 ;
CODE_0DB1A1:        A0 00         LDY #$00                  ;
CODE_0DB1A3:        A5 A0         LDA $A0                   ;
CODE_0DB1A5:        10 01         BPL CODE_0DB1A8           ;
CODE_0DB1A7:        88            DEY                       ;
CODE_0DB1A8:        84 00         STY $00                   ;
CODE_0DB1AA:        6D 37 02      ADC $0237                 ;
CODE_0DB1AD:        8D 37 02      STA $0237                 ;
CODE_0DB1B0:        A5 BB         LDA $BB                   ;
CODE_0DB1B2:        65 00         ADC $00                   ;
CODE_0DB1B4:        85 BB         STA $BB                   ;
CODE_0DB1B6:        A5 0C         LDA $0C                   ;
CODE_0DB1B8:        2D 80 04      AND $0480                 ;
CODE_0DB1BB:        F0 38         BEQ CODE_0DB1F5           ;
CODE_0DB1BD:        AC 91 07      LDY $0791                 ;
CODE_0DB1C0:        D0 32         BNE CODE_0DB1F4           ;
CODE_0DB1C2:        A0 18         LDY #$18                  ;
CODE_0DB1C4:        8C 91 07      STY $0791                 ;
CODE_0DB1C7:        A2 00         LDX #$00                  ;
CODE_0DB1C9:        AC 02 02      LDY $0202                 ;
CODE_0DB1CC:        4A            LSR A                     ;
CODE_0DB1CD:        B0 09         BCS CODE_0DB1D8           ;
CODE_0DB1CF:        AD AD 03      LDA $03AD                 ;
CODE_0DB1D2:        C9 10         CMP #$10                  ;
CODE_0DB1D4:        90 1E         BCC CODE_0DB1F4           ;
CODE_0DB1D6:        E8            INX                       ;
CODE_0DB1D7:        E8            INX                       ;
CODE_0DB1D8:        88            DEY                       ;
CODE_0DB1D9:        F0 01         BEQ CODE_0DB1DC           ;
CODE_0DB1DB:        E8            INX                       ;
CODE_0DB1DC:        AD 19 02      LDA $0219                 ;
CODE_0DB1DF:        18            CLC                       ;
CODE_0DB1E0:        7D 8F B1      ADC DATA_0DB18F,x               ;
CODE_0DB1E3:        8D 19 02      STA $0219                 ;
CODE_0DB1E6:        A5 78         LDA $78                   ;
CODE_0DB1E8:        7D 93 B1      ADC DATA_0DB193,x               ;
CODE_0DB1EB:        85 78         STA $78                   ;
CODE_0DB1ED:        A5 0C         LDA $0C                   ;
CODE_0DB1EF:        49 03         EOR #$03                  ;
CODE_0DB1F1:        8D 02 02      STA $0202                 ;
CODE_0DB1F4:        60            RTS                       ;

CODE_0DB1F5:        8D 91 07      STA $0791                 ;
CODE_0DB1F8:        60            RTS                       ;

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

CODE_0DB236:        A5 28         LDA $28                   ;
CODE_0DB238:        C9 03         CMP #$03                  ;
CODE_0DB23A:        D0 30         BNE CODE_0DB26C           ;
CODE_0DB23C:        A0 00         LDY #$00                  ;
CODE_0DB23E:        A5 0B         LDA $0B                   ;
CODE_0DB240:        2D 80 04      AND $0480                 ;
CODE_0DB243:        F0 13         BEQ CODE_0DB258           ;
CODE_0DB245:        C8            INY                       ;
CODE_0DB246:        29 08         AND #$08                  ;
CODE_0DB248:        F0 0D         BEQ CODE_0DB257           ;
CODE_0DB24A:        A5 09         LDA $09                   ;
CODE_0DB24C:        29 07         AND #$07                  ;
CODE_0DB24E:        D0 08         BNE CODE_0DB258           ;
CODE_0DB250:        A9 30         LDA #$30                  ;
CODE_0DB252:        8D 00 16      STA $1600                 ;
CODE_0DB255:        80 01         BRA CODE_0DB258           ;

CODE_0DB257:        C8            INY                       ;
CODE_0DB258:        BE 33 B2      LDX DATA_0DB233,y               ;
CODE_0DB25B:        8E 3C 04      STX $043C                 ;
CODE_0DB25E:        A9 08         LDA #$08                  ;
CODE_0DB260:        BE 30 B2      LDX DATA_0DB230,y               ;
CODE_0DB263:        86 A0         STX $A0                   ;
CODE_0DB265:        30 01         BMI CODE_0DB268           ;
CODE_0DB267:        4A            LSR A                     ;
CODE_0DB268:        8D 0C 07      STA $070C                 ;
CODE_0DB26B:        60            RTS                       ;

CODE_0DB26C:        AD 0E 07      LDA $070E                 ;
CODE_0DB26F:        D0 0A         BNE CODE_0DB27B           ;
CODE_0DB271:        A5 0A         LDA $0A                   ;
CODE_0DB273:        29 80         AND #$80                  ;
CODE_0DB275:        F0 04         BEQ CODE_0DB27B           ;
CODE_0DB277:        25 0D         AND $0D                   ;
CODE_0DB279:        F0 03         BEQ CODE_0DB27E           ;
CODE_0DB27B:        4C 27 B3      JMP CODE_0DB327           ;

CODE_0DB27E:        A5 28         LDA $28                   ;
CODE_0DB280:        F0 11         BEQ CODE_0DB293           ;
CODE_0DB282:        AD 04 07      LDA $0704                 ;
CODE_0DB285:        F0 F4         BEQ CODE_0DB27B           ;
CODE_0DB287:        AD 8A 07      LDA $078A                 ;
CODE_0DB28A:        D0 07         BNE CODE_0DB293           ;
CODE_0DB28C:        A5 A0         LDA $A0                   ;
CODE_0DB28E:        10 03         BPL CODE_0DB293           ;
CODE_0DB290:        4C 27 B3      JMP CODE_0DB327           ;

CODE_0DB293:        A9 20         LDA #$20                  ;
CODE_0DB295:        8D 8A 07      STA $078A                 ;
CODE_0DB298:        A0 00         LDY #$00                  ;
CODE_0DB29A:        8C 1C 04      STY $041C                 ;
CODE_0DB29D:        8C 3C 04      STY $043C                 ;
CODE_0DB2A0:        A5 BB         LDA $BB                   ;
CODE_0DB2A2:        8D 07 07      STA $0707                 ;
CODE_0DB2A5:        AD 37 02      LDA $0237                 ;
CODE_0DB2A8:        8D 08 07      STA $0708                 ;
CODE_0DB2AB:        A9 01         LDA #$01                  ;
CODE_0DB2AD:        85 28         STA $28                   ;
CODE_0DB2AF:        AD 00 07      LDA $0700                 ;
CODE_0DB2B2:        C9 09         CMP #$09                  ;
CODE_0DB2B4:        90 10         BCC CODE_0DB2C6           ;
CODE_0DB2B6:        C8            INY                       ;
CODE_0DB2B7:        C9 10         CMP #$10                  ;
CODE_0DB2B9:        90 0B         BCC CODE_0DB2C6           ;
CODE_0DB2BB:        C8            INY                       ;
CODE_0DB2BC:        C9 19         CMP #$19                  ;
CODE_0DB2BE:        90 06         BCC CODE_0DB2C6           ;
CODE_0DB2C0:        C8            INY                       ;
CODE_0DB2C1:        C9 1C         CMP #$1C                  ;
CODE_0DB2C3:        90 01         BCC CODE_0DB2C6           ;
CODE_0DB2C5:        C8            INY                       ;
CODE_0DB2C6:        A9 01         LDA #$01                  ;
CODE_0DB2C8:        8D 06 07      STA $0706                 ;
CODE_0DB2CB:        AD 04 07      LDA $0704                 ;
CODE_0DB2CE:        F0 08         BEQ CODE_0DB2D8           ;
CODE_0DB2D0:        A0 05         LDY #$05                  ;
CODE_0DB2D2:        AD 7D 02      LDA $027D                 ;
CODE_0DB2D5:        F0 01         BEQ CODE_0DB2D8           ;
CODE_0DB2D7:        C8            INY                       ;
CODE_0DB2D8:        AD 53 07      LDA $0753                 ;
CODE_0DB2DB:        D0 19         BNE CODE_0DB2F6           ;
CODE_0DB2DD:        B9 F9 B1      LDA DATA_0DB1F9,y               ;
CODE_0DB2E0:        8D 09 07      STA $0709                 ;
CODE_0DB2E3:        B9 00 B2      LDA DATA_0DB200,y               ;
CODE_0DB2E6:        8D 0A 07      STA $070A                 ;
CODE_0DB2E9:        B9 22 B2      LDA DATA_0DB222,y               ;
CODE_0DB2EC:        8D 3C 04      STA $043C                 ;
CODE_0DB2EF:        B9 1B B2      LDA DATA_0DB21B,y               ;
CODE_0DB2F2:        85 A0         STA $A0                   ;
CODE_0DB2F4:        80 17         BRA CODE_0DB30D           ;

CODE_0DB2F6:        B9 0A B2      LDA DATA_0DB20A,y               ;
CODE_0DB2F9:        8D 09 07      STA $0709                 ;
CODE_0DB2FC:        B9 11 B2      LDA DATA_0DB211,y               ;
CODE_0DB2FF:        8D 0A 07      STA $070A                 ;
CODE_0DB302:        B9 22 B2      LDA DATA_0DB222,y               ;
CODE_0DB305:        8D 3C 04      STA $043C                 ;
CODE_0DB308:        B9 1B B2      LDA DATA_0DB21B,y               ;
CODE_0DB30B:        85 A0         STA $A0                   ;
CODE_0DB30D:        AD 04 07      LDA $0704                 ;
CODE_0DB310:        F0 10         BEQ CODE_0DB322           ;
CODE_0DB312:        A9 0E         LDA #$0E                  ;
CODE_0DB314:        8D 00 16      STA $1600                 ;
CODE_0DB317:        AD 37 02      LDA $0237                 ;
CODE_0DB31A:        C9 14         CMP #$14                  ;
CODE_0DB31C:        B0 09         BCS CODE_0DB327           ;
CODE_0DB31E:        64 A0         STZ $A0                   ;
CODE_0DB320:        80 05         BRA CODE_0DB327           ;

CODE_0DB322:        A9 01         LDA #$01                  ;
CODE_0DB324:        0C 01 16      TSB $1601                 ;
CODE_0DB327:        A0 00         LDY #$00                  ;
CODE_0DB329:        84 00         STY $00                   ;
CODE_0DB32B:        A5 28         LDA $28                   ;
CODE_0DB32D:        F0 09         BEQ CODE_0DB338           ;
CODE_0DB32F:        AD 00 07      LDA $0700                 ;
CODE_0DB332:        C9 19         CMP #$19                  ;
CODE_0DB334:        B0 32         BCS CODE_0DB368           ;
CODE_0DB336:        90 17         BCC CODE_0DB34F           ;
CODE_0DB338:        C8            INY                       ;
CODE_0DB339:        A5 5C         LDA $5C                   ;
CODE_0DB33B:        F0 12         BEQ CODE_0DB34F           ;
CODE_0DB33D:        88            DEY                       ;
CODE_0DB33E:        A5 0C         LDA $0C                   ;
CODE_0DB340:        C5 46         CMP $46                   ;
CODE_0DB342:        D0 0B         BNE CODE_0DB34F           ;
CODE_0DB344:        A5 0A         LDA $0A                   ;
CODE_0DB346:        29 40         AND #$40                  ;
CODE_0DB348:        D0 19         BNE CODE_0DB363           ;
CODE_0DB34A:        AD 8B 07      LDA $078B                 ;
CODE_0DB34D:        D0 19         BNE CODE_0DB368           ;
CODE_0DB34F:        C8            INY                       ;
CODE_0DB350:        E6 00         INC $00                   ;
CODE_0DB352:        AD 03 07      LDA $0703                 ;
CODE_0DB355:        D0 07         BNE CODE_0DB35E           ;
CODE_0DB357:        AD 00 07      LDA $0700                 ;
CODE_0DB35A:        C9 21         CMP #$21                  ;
CODE_0DB35C:        90 0A         BCC CODE_0DB368           ;
CODE_0DB35E:        E6 00         INC $00                   ;
CODE_0DB360:        4C 68 B3      JMP CODE_0DB368           ;

CODE_0DB363:        A9 0A         LDA #$0A                  ;
CODE_0DB365:        8D 8B 07      STA $078B                 ;
CODE_0DB368:        B9 29 B2      LDA DATA_0DB229,y               ;
CODE_0DB36B:        8D 5D 04      STA $045D                 ;
CODE_0DB36E:        A5 0F         LDA $0F                   ;
CODE_0DB370:        C9 07         CMP #$07                  ;
CODE_0DB372:        D0 02         BNE CODE_0DB376           ;
CODE_0DB374:        A0 03         LDY #$03                  ;
CODE_0DB376:        B9 2C B2      LDA DATA_0DB22C,y               ;
CODE_0DB379:        8D 63 04      STA $0463                 ;
CODE_0DB37C:        A4 00         LDY $00                   ;
CODE_0DB37E:        B9 07 B2      LDA DATA_0DB207,y               ;
CODE_0DB381:        8D 02 07      STA $0702                 ;
CODE_0DB384:        9C 01 07      STZ $0701                 ;
CODE_0DB387:        AD 02 02      LDA $0202                 ;
CODE_0DB38A:        C5 46         CMP $46                   ;
CODE_0DB38C:        F0 0B         BEQ CODE_0DB399           ;
CODE_0DB38E:        AD C2 0E      LDA $0EC2                 ;
CODE_0DB391:        D0 06         BNE CODE_0DB399           ;
CODE_0DB393:        0E 02 07      ASL $0702                 ;
CODE_0DB396:        2E 01 07      ROL $0701                 ;
CODE_0DB399:        60            RTS                       ;

DATA_0DB39A:        db $02,$04,$07

CODE_0DB39D:        A0 00         LDY #$00                  ;
CODE_0DB39F:        AD 00 07      LDA $0700                 ;
CODE_0DB3A2:        C9 1C         CMP #$1C                  ;
CODE_0DB3A4:        B0 15         BCS CODE_0DB3BB           ;
CODE_0DB3A6:        C8            INY                       ;
CODE_0DB3A7:        C9 0E         CMP #$0E                  ;
CODE_0DB3A9:        B0 01         BCS CODE_0DB3AC           ;
CODE_0DB3AB:        C8            INY                       ;
CODE_0DB3AC:        AD F4 0F      LDA $0FF4                 ;
CODE_0DB3AF:        29 7F         AND #$7F                  ;
CODE_0DB3B1:        F0 1E         BEQ CODE_0DB3D1           ;
CODE_0DB3B3:        29 03         AND #$03                  ;
CODE_0DB3B5:        C5 46         CMP $46                   ;
CODE_0DB3B7:        D0 07         BNE CODE_0DB3C0           ;
CODE_0DB3B9:        A9 00         LDA #$00                  ;
CODE_0DB3BB:        8D 03 07      STA $0703                 ;
CODE_0DB3BE:        80 11         BRA CODE_0DB3D1           ;

CODE_0DB3C0:        AD 00 07      LDA $0700                 ;
CODE_0DB3C3:        C9 0B         CMP #$0B                  ;
CODE_0DB3C5:        B0 0A         BCS CODE_0DB3D1           ;
CODE_0DB3C7:        AD 02 02      LDA $0202                 ;
CODE_0DB3CA:        85 46         STA $46                   ;
CODE_0DB3CC:        64 5D         STZ $5D                   ;
CODE_0DB3CE:        9C 05 07      STZ $0705                 ;
CODE_0DB3D1:        B9 9A B3      LDA DATA_0DB39A,y               ;
CODE_0DB3D4:        8D 0C 07      STA $070C                 ;
CODE_0DB3D7:        60            RTS                       ;

CODE_0DB3D8:        2D 80 04      AND $0480                 ;
CODE_0DB3DB:        C9 00         CMP #$00                  ;
CODE_0DB3DD:        D0 08         BNE CODE_0DB3E7           ;
CODE_0DB3DF:        A5 5D         LDA $5D                   ;
CODE_0DB3E1:        F0 48         BEQ CODE_0DB42B           ;
CODE_0DB3E3:        10 22         BPL CODE_0DB407           ;
CODE_0DB3E5:        30 03         BMI CODE_0DB3EA           ;
CODE_0DB3E7:        4A            LSR A                     ;
CODE_0DB3E8:        90 1D         BCC CODE_0DB407           ;
CODE_0DB3EA:        AD 05 07      LDA $0705                 ;
CODE_0DB3ED:        18            CLC                       ;
CODE_0DB3EE:        6D 02 07      ADC $0702                 ;
CODE_0DB3F1:        8D 05 07      STA $0705                 ;
CODE_0DB3F4:        A5 5D         LDA $5D                   ;
CODE_0DB3F6:        6D 01 07      ADC $0701                 ;
CODE_0DB3F9:        85 5D         STA $5D                   ;
CODE_0DB3FB:        CD 63 04      CMP $0463                 ;
CODE_0DB3FE:        30 22         BMI CODE_0DB422           ;
CODE_0DB400:        AD 63 04      LDA $0463                 ;
CODE_0DB403:        85 5D         STA $5D                   ;
CODE_0DB405:        80 24         BRA CODE_0DB42B           ;

CODE_0DB407:        AD 05 07      LDA $0705                 ;
CODE_0DB40A:        38            SEC                       ;
CODE_0DB40B:        ED 02 07      SBC $0702                 ;
CODE_0DB40E:        8D 05 07      STA $0705                 ;
CODE_0DB411:        A5 5D         LDA $5D                   ;
CODE_0DB413:        ED 01 07      SBC $0701                 ;
CODE_0DB416:        85 5D         STA $5D                   ;
CODE_0DB418:        CD 5D 04      CMP $045D                 ;
CODE_0DB41B:        10 05         BPL CODE_0DB422           ;
CODE_0DB41D:        AD 5D 04      LDA $045D                 ;
CODE_0DB420:        85 5D         STA $5D                   ;
CODE_0DB422:        C9 00         CMP #$00                  ;
CODE_0DB424:        10 05         BPL CODE_0DB42B           ;
CODE_0DB426:        49 FF         EOR #$FF                  ;
CODE_0DB428:        18            CLC                       ;
CODE_0DB429:        69 01         ADC #$01                  ;
CODE_0DB42B:        8D 00 07      STA $0700                 ;
CODE_0DB42E:        60            RTS                       ;

CODE_0DB42F:        AD 56 07      LDA $0756                 ;
CODE_0DB432:        C9 02         CMP #$02                  ;
CODE_0DB434:        90 44         BCC CODE_0DB47A           ;
CODE_0DB436:        A5 0A         LDA $0A                   ;
CODE_0DB438:        29 40         AND #$40                  ;
CODE_0DB43A:        F0 34         BEQ CODE_0DB470           ;
CODE_0DB43C:        25 0D         AND $0D                   ;
CODE_0DB43E:        D0 30         BNE CODE_0DB470           ;
CODE_0DB440:        AD CE 06      LDA $06CE                 ;
CODE_0DB443:        29 01         AND #$01                  ;
CODE_0DB445:        AA            TAX                       ;
CODE_0DB446:        B5 33         LDA $33,x                 ;
CODE_0DB448:        D0 26         BNE CODE_0DB470           ;
CODE_0DB44A:        A4 BB         LDY $BB                   ;
CODE_0DB44C:        88            DEY                       ;
CODE_0DB44D:        D0 21         BNE CODE_0DB470           ;
CODE_0DB44F:        AD 14 07      LDA $0714                 ;
CODE_0DB452:        D0 1C         BNE CODE_0DB470           ;
CODE_0DB454:        A5 28         LDA $28                   ;
CODE_0DB456:        C9 03         CMP #$03                  ;
CODE_0DB458:        F0 16         BEQ CODE_0DB470           ;
CODE_0DB45A:        A9 06         LDA #$06                  ;
CODE_0DB45C:        8D 03 16      STA $1603                 ;
CODE_0DB45F:        A9 02         LDA #$02                  ;
CODE_0DB461:        95 33         STA $33,x                 ;
CODE_0DB463:        AC 0C 07      LDY $070C                 ;
CODE_0DB466:        8C 11 07      STY $0711                 ;
CODE_0DB469:        88            DEY                       ;
CODE_0DB46A:        8C 89 07      STY $0789                 ;
CODE_0DB46D:        EE CE 06      INC $06CE                 ;
CODE_0DB470:        A2 00         LDX #$00                  ;
CODE_0DB472:        20 95 B4      JSR CODE_0DB495           ;
CODE_0DB475:        A2 01         LDX #$01                  ;
CODE_0DB477:        20 95 B4      JSR CODE_0DB495           ;
CODE_0DB47A:        A5 5C         LDA $5C                   ;
CODE_0DB47C:        D0 14         BNE CODE_0DB492           ;
CODE_0DB47E:        A2 02         LDX #$02                  ;
CODE_0DB480:        86 9E         STX $9E                   ;
CODE_0DB482:        20 2F B5      JSR CODE_0DB52F           ;
CODE_0DB485:        20 30 FD      JSR CODE_0DFD30           ;
CODE_0DB488:        20 C3 FD      JSR CODE_0DFDC3           ;
CODE_0DB48B:        22 20 EC 0F   JSL CODE_0FEC20           ;
CODE_0DB48F:        CA            DEX                       ;
CODE_0DB490:        10 EE         BPL CODE_0DB480           ;
CODE_0DB492:        60            RTS                       ;

DATA_0DB493:        db $40,$C0

CODE_0DB495:        86 9E         STX $9E
CODE_0DB497:        B5 33         LDA $33,x                 ;
CODE_0DB499:        0A            ASL A                     ;
CODE_0DB49A:        90 03         BCC CODE_0DB49F           ;
CODE_0DB49C:        4C 29 B5      JMP CODE_0DB529           ;

CODE_0DB49F:        B4 33         LDY $33,x                 ;
CODE_0DB4A1:        D0 03         BNE CODE_0DB4A6           ;
CODE_0DB4A3:        4C 28 B5      JMP CODE_0DB528           ;

CODE_0DB4A6:        88            DEY                       ;
CODE_0DB4A7:        F0 2C         BEQ CODE_0DB4D5           ;
CODE_0DB4A9:        AD 19 02      LDA $0219                 ;
CODE_0DB4AC:        69 04         ADC #$04                  ;
CODE_0DB4AE:        9D 24 02      STA $0224,x               ;
CODE_0DB4B1:        A5 78         LDA $78                   ;
CODE_0DB4B3:        69 00         ADC #$00                  ;
CODE_0DB4B5:        95 83         STA $83,x                 ;
CODE_0DB4B7:        AD 37 02      LDA $0237                 ;
CODE_0DB4BA:        9D 42 02      STA $0242,x               ;
CODE_0DB4BD:        A9 01         LDA #$01                  ;
CODE_0DB4BF:        95 C6         STA $C6,x                 ;
CODE_0DB4C1:        AC 02 02      LDY $0202                 ;
CODE_0DB4C4:        88            DEY                       ;
CODE_0DB4C5:        B9 93 B4      LDA DATA_0DB493,y               ;
CODE_0DB4C8:        95 68         STA $68,x                 ;
CODE_0DB4CA:        A9 04         LDA #$04                  ;
CODE_0DB4CC:        95 AB         STA $AB,x                 ;
CODE_0DB4CE:        A9 07         LDA #$07                  ;
CODE_0DB4D0:        9D 9A 04      STA $049A,x               ;
CODE_0DB4D3:        D6 33         DEC $33,x                 ;
CODE_0DB4D5:        8A            TXA                       ;
CODE_0DB4D6:        18            CLC                       ;
CODE_0DB4D7:        69 0B         ADC #$0B                  ;
CODE_0DB4D9:        AA            TAX                       ;
CODE_0DB4DA:        A9 50         LDA #$50                  ;
CODE_0DB4DC:        85 00         STA $00                   ;
CODE_0DB4DE:        A9 03         LDA #$03                  ;
CODE_0DB4E0:        85 02         STA $02                   ;
CODE_0DB4E2:        A9 00         LDA #$00                  ;
CODE_0DB4E4:        20 7E BF      JSR CODE_0DBF7E           ;
CODE_0DB4E7:        20 AD BE      JSR CODE_0DBEAD           ;
CODE_0DB4EA:        A6 9E         LDX $9E                   ;
CODE_0DB4EC:        20 39 FD      JSR CODE_0DFD39           ;
CODE_0DB4EF:        20 B9 FD      JSR CODE_0DFDB9           ;
CODE_0DB4F2:        20 32 E9      JSR CODE_0DE932           ;
CODE_0DB4F5:        20 C2 E8      JSR CODE_0DE8C2           ;
CODE_0DB4F8:        AD D2 03      LDA $03D2                 ;
CODE_0DB4FB:        29 FC         AND #$FC                  ;
CODE_0DB4FD:        F0 1F         BEQ CODE_0DB51E           ;
CODE_0DB4FF:        29 F0         AND #$F0                  ;
CODE_0DB501:        D0 21         BNE CODE_0DB524           ;
CODE_0DB503:        BD 68 00      LDA $0068,x               ;
CODE_0DB506:        30 0B         BMI CODE_0DB513           ;
CODE_0DB508:        AD D2 03      LDA $03D2                 ;
CODE_0DB50B:        29 0F         AND #$0F                  ;
CODE_0DB50D:        C9 0F         CMP #$0F                  ;
CODE_0DB50F:        F0 13         BEQ CODE_0DB524           ;
CODE_0DB511:        80 0E         BRA CODE_0DB521           ;

CODE_0DB513:        AD D2 03      LDA $03D2                 ;
CODE_0DB516:        29 0C         AND #$0C                  ;
CODE_0DB518:        C9 0C         CMP #$0C                  ;
CODE_0DB51A:        F0 08         BEQ CODE_0DB524           ;
CODE_0DB51C:        80 03         BRA CODE_0DB521           ;

CODE_0DB51E:        20 80 DB      JSR CODE_0DDB80           ;
CODE_0DB521:        4C 33 F4      JMP CODE_0DF433           ;

CODE_0DB524:        A9 00         LDA #$00                  ;
CODE_0DB526:        95 33         STA $33,x                 ;
CODE_0DB528:        60            RTS                       ;

CODE_0DB529:        20 39 FD      JSR CODE_0DFD39           ;
CODE_0DB52C:        4C 98 F4      JMP CODE_0DF498           ;

CODE_0DB52F:        BD B8 07      LDA $07B8,x               ;
CODE_0DB532:        29 01         AND #$01                  ;
CODE_0DB534:        85 07         STA $07                   ;
CODE_0DB536:        BD 51 02      LDA $0251,x               ;
CODE_0DB539:        C9 F8         CMP #$F8                  ;
CODE_0DB53B:        D0 31         BNE CODE_0DB56E           ;
CODE_0DB53D:        AD 9E 07      LDA $079E                 ;
CODE_0DB540:        D0 46         BNE CODE_0DB588           ;
CODE_0DB542:        A0 00         LDY #$00                  ;
CODE_0DB544:        AD 02 02      LDA $0202                 ;
CODE_0DB547:        4A            LSR A                     ;
CODE_0DB548:        90 02         BCC CODE_0DB54C           ;
CODE_0DB54A:        A0 08         LDY #$08                  ;
CODE_0DB54C:        98            TYA                       ;
CODE_0DB54D:        6D 19 02      ADC $0219                 ;
CODE_0DB550:        9D 33 02      STA $0233,x               ;
CODE_0DB553:        A5 78         LDA $78                   ;
CODE_0DB555:        69 00         ADC #$00                  ;
CODE_0DB557:        95 92         STA $92,x                 ;
CODE_0DB559:        AD 37 02      LDA $0237                 ;
CODE_0DB55C:        18            CLC                       ;
CODE_0DB55D:        69 08         ADC #$08                  ;
CODE_0DB55F:        9D 51 02      STA $0251,x               ;
CODE_0DB562:        A9 01         LDA #$01                  ;
CODE_0DB564:        95 D5         STA $D5,x                 ;
CODE_0DB566:        A4 07         LDY $07                   ;
CODE_0DB568:        B9 8B B5      LDA DATA_0DB58B,y               ;
CODE_0DB56B:        8D 9E 07      STA $079E                 ;
CODE_0DB56E:        A4 07         LDY $07                   ;
CODE_0DB570:        BD 36 04      LDA $0436,x               ;
CODE_0DB573:        38            SEC                       ;
CODE_0DB574:        F9 89 B5      SBC DATA_0DB589,y               ;
CODE_0DB577:        9D 36 04      STA $0436,x               ;
CODE_0DB57A:        BD 51 02      LDA $0251,x               ;
CODE_0DB57D:        E9 00         SBC #$00                  ;
CODE_0DB57F:        C9 20         CMP #$20                  ;
CODE_0DB581:        B0 02         BCS CODE_0DB585           ;
CODE_0DB583:        A9 F8         LDA #$F8                  ;
CODE_0DB585:        9D 51 02      STA $0251,x               ;
CODE_0DB588:        60            RTS                       ;

DATA_0DB589:        db $FF,$50

DATA_0DB58B:        db $40,$20

CODE_0DB58D:        AD 70 07      LDA $0770                 ;
CODE_0DB590:        F0 55         BEQ CODE_0DB5E7           ;
CODE_0DB592:        A5 0F         LDA $0F                   ;
CODE_0DB594:        C9 08         CMP #$08                  ;
CODE_0DB596:        90 4F         BCC CODE_0DB5E7           ;
CODE_0DB598:        C9 0B         CMP #$0B                  ;
CODE_0DB59A:        F0 4B         BEQ CODE_0DB5E7           ;
CODE_0DB59C:        A5 BB         LDA $BB                   ;
CODE_0DB59E:        C9 02         CMP #$02                  ;
CODE_0DB5A0:        10 45         BPL CODE_0DB5E7           ;
CODE_0DB5A2:        AD 8F 07      LDA $078F                 ;
CODE_0DB5A5:        D0 40         BNE CODE_0DB5E7           ;
CODE_0DB5A7:        AD E9 07      LDA $07E9                 ;
CODE_0DB5AA:        0D EA 07      ORA $07EA                 ;
CODE_0DB5AD:        0D EB 07      ORA $07EB                 ;
CODE_0DB5B0:        F0 2C         BEQ CODE_0DB5DE           ;
CODE_0DB5B2:        AC E9 07      LDY $07E9                 ;
CODE_0DB5B5:        88            DEY                       ;
CODE_0DB5B6:        D0 0D         BNE CODE_0DB5C5           ;
CODE_0DB5B8:        AD EA 07      LDA $07EA                 ;
CODE_0DB5BB:        0D EB 07      ORA $07EB                 ;
CODE_0DB5BE:        D0 05         BNE CODE_0DB5C5           ;
CODE_0DB5C0:        A9 FF         LDA #$FF                  ;
CODE_0DB5C2:        8D 00 16      STA $1600                 ;
CODE_0DB5C5:        A9 18         LDA #$18                  ;
CODE_0DB5C7:        8D 8F 07      STA $078F                 ;
CODE_0DB5CA:        A0 23         LDY #$23                  ;
CODE_0DB5CC:        A9 FF         LDA #$FF                  ;
CODE_0DB5CE:        8D 4A 01      STA $014A                 ;
CODE_0DB5D1:        AD 73 0E      LDA $0E73                 ;
CODE_0DB5D4:        D0 03         BNE CODE_0DB5D9           ;
CODE_0DB5D6:        20 AA 98      JSR CODE_0D98AA           ;
CODE_0DB5D9:        A9 A4         LDA #$A4                  ;
CODE_0DB5DB:        4C 3D 98      JMP CODE_0D983D           ;

CODE_0DB5DE:        8D 56 07      STA $0756                 ;
CODE_0DB5E1:        20 8A DE      JSR CODE_0DDE8A           ;
CODE_0DB5E4:        EE 59 07      INC $0759                 ;
CODE_0DB5E7:        60            RTS                       ;

CODE_0DB5E8:        AD 23 07      LDA $0723                 ;
CODE_0DB5EB:        F0 FA         BEQ CODE_0DB5E7           ;
CODE_0DB5ED:        AD 37 02      LDA $0237                 ;
CODE_0DB5F0:        25 BB         AND $BB                   ;
CODE_0DB5F2:        D0 F3         BNE CODE_0DB5E7           ;
CODE_0DB5F4:        8D 23 07      STA $0723                 ;
CODE_0DB5F7:        4C EA CC      JMP CODE_0DCCEA           ;

CODE_0DB5FA:        A5 5C         LDA $5C                   ;
CODE_0DB5FC:        D0 3D         BNE CODE_0DB63B           ;
CODE_0DB5FE:        8D 7D 02      STA $027D                 ;
CODE_0DB601:        22 78 83 04   JSL CODE_048378           ;
CODE_0DB605:        AD 47 07      LDA $0747                 ;
CODE_0DB608:        D0 31         BNE CODE_0DB63B           ;
CODE_0DB60A:        A0 04         LDY #$04                  ;
CODE_0DB60C:        B9 71 02      LDA $0271,y               ;
CODE_0DB60F:        18            CLC                       ;
CODE_0DB610:        79 77 02      ADC $0277,y               ;
CODE_0DB613:        85 02         STA $02                   ;
CODE_0DB615:        B9 6B 02      LDA $026B,y               ;
CODE_0DB618:        F0 1E         BEQ CODE_0DB638           ;
CODE_0DB61A:        69 00         ADC #$00                  ;
CODE_0DB61C:        85 01         STA $01                   ;
CODE_0DB61E:        AD 19 02      LDA $0219                 ;
CODE_0DB621:        38            SEC                       ;
CODE_0DB622:        F9 71 02      SBC $0271,y               ;
CODE_0DB625:        A5 78         LDA $78                   ;
CODE_0DB627:        F9 6B 02      SBC $026B,y               ;
CODE_0DB62A:        30 0C         BMI CODE_0DB638           ;
CODE_0DB62C:        A5 02         LDA $02                   ;
CODE_0DB62E:        38            SEC                       ;
CODE_0DB62F:        ED 19 02      SBC $0219                 ;
CODE_0DB632:        A5 01         LDA $01                   ;
CODE_0DB634:        E5 78         SBC $78                   ;
CODE_0DB636:        10 04         BPL CODE_0DB63C           ;
CODE_0DB638:        88            DEY                       ;
CODE_0DB639:        10 D1         BPL CODE_0DB60C           ;
CODE_0DB63B:        60            RTS                       ;

CODE_0DB63C:        B9 77 02      LDA $0277,y               ;
CODE_0DB63F:        4A            LSR A                     ;
CODE_0DB640:        85 00         STA $00                   ;
CODE_0DB642:        B9 71 02      LDA $0271,y               ;
CODE_0DB645:        18            CLC                       ;
CODE_0DB646:        65 00         ADC $00                   ;
CODE_0DB648:        85 01         STA $01                   ;
CODE_0DB64A:        B9 6B 02      LDA $026B,y               ;
CODE_0DB64D:        69 00         ADC #$00                  ;
CODE_0DB64F:        85 00         STA $00                   ;
CODE_0DB651:        A5 09         LDA $09                   ;
CODE_0DB653:        4A            LSR A                     ;
CODE_0DB654:        90 31         BCC CODE_0DB687           ;
CODE_0DB656:        A5 01         LDA $01                   ;
CODE_0DB658:        38            SEC                       ;
CODE_0DB659:        ED 19 02      SBC $0219                 ;
CODE_0DB65C:        A5 00         LDA $00                   ;
CODE_0DB65E:        E5 78         SBC $78                   ;
CODE_0DB660:        10 10         BPL CODE_0DB672           ;
CODE_0DB662:        AD 19 02      LDA $0219                 ;
CODE_0DB665:        38            SEC                       ;
CODE_0DB666:        E9 01         SBC #$01                  ;
CODE_0DB668:        8D 19 02      STA $0219                 ;
CODE_0DB66B:        A5 78         LDA $78                   ;
CODE_0DB66D:        E9 00         SBC #$00                  ;
CODE_0DB66F:        4C 85 B6      JMP CODE_0DB685           ;

CODE_0DB672:        AD 80 04      LDA $0480                 ;
CODE_0DB675:        4A            LSR A                     ;
CODE_0DB676:        90 0F         BCC CODE_0DB687           ;
CODE_0DB678:        AD 19 02      LDA $0219                 ;
CODE_0DB67B:        18            CLC                       ;
CODE_0DB67C:        69 01         ADC #$01                  ;
CODE_0DB67E:        8D 19 02      STA $0219                 ;
CODE_0DB681:        A5 78         LDA $78                   ;
CODE_0DB683:        69 00         ADC #$00                  ;
CODE_0DB685:        85 78         STA $78                   ;
CODE_0DB687:        A9 10         LDA #$10                  ;
CODE_0DB689:        85 00         STA $00                   ;
CODE_0DB68B:        A9 01         LDA #$01                  ;
CODE_0DB68D:        8D 7D 02      STA $027D                 ;
CODE_0DB690:        85 02         STA $02                   ;
CODE_0DB692:        4A            LSR A                     ;
CODE_0DB693:        AA            TAX                       ;
CODE_0DB694:        4C 7E BF      JMP CODE_0DBF7E           ;

DATA_0DB697:        db $05,$02,$08,$04,$01

DATA_0DB69C:        db $03,$03,$04,$04,$04

CODE_0DB6A1:        A2 05         LDX #$05                  ;
CODE_0DB6A3:        86 9E         STX $9E                   ;
CODE_0DB6A5:        B5 1C         LDA $1C,x                 ;
CODE_0DB6A7:        C9 30         CMP #$30                  ;
CODE_0DB6A9:        F0 01         BEQ CODE_0DB6AC           ;
CODE_0DB6AB:        60            RTS                       ;

CODE_0DB6AC:        A5 0F         LDA $0F                   ;
CODE_0DB6AE:        C9 04         CMP #$04                  ;
CODE_0DB6B0:        D0 35         BNE CODE_0DB6E7           ;
CODE_0DB6B2:        A5 28         LDA $28                   ;
CODE_0DB6B4:        C9 03         CMP #$03                  ;
CODE_0DB6B6:        D0 2F         BNE CODE_0DB6E7           ;
CODE_0DB6B8:        BD 38 02      LDA $0238,x               ;
CODE_0DB6BB:        C9 AA         CMP #$AA                  ;
CODE_0DB6BD:        B0 2B         BCS CODE_0DB6EA           ;
CODE_0DB6BF:        AD 37 02      LDA $0237                 ;
CODE_0DB6C2:        C9 A2         CMP #$A2                  ;
CODE_0DB6C4:        B0 24         BCS CODE_0DB6EA           ;
CODE_0DB6C6:        BD 1D 04      LDA $041D,x               ;
CODE_0DB6C9:        69 FF         ADC #$FF                  ;
CODE_0DB6CB:        9D 1D 04      STA $041D,x               ;
CODE_0DB6CE:        BD 38 02      LDA $0238,x               ;
CODE_0DB6D1:        69 01         ADC #$01                  ;
CODE_0DB6D3:        9D 38 02      STA $0238,x               ;
CODE_0DB6D6:        AD 0E 01      LDA $010E                 ;
CODE_0DB6D9:        38            SEC                       ;
CODE_0DB6DA:        E9 FF         SBC #$FF                  ;
CODE_0DB6DC:        8D 0E 01      STA $010E                 ;
CODE_0DB6DF:        AD 0D 01      LDA $010D                 ;
CODE_0DB6E2:        E9 01         SBC #$01                  ;
CODE_0DB6E4:        8D 0D 01      STA $010D                 ;
CODE_0DB6E7:        4C 35 B7      JMP CODE_0DB735           ;

CODE_0DB6EA:        AC 0F 01      LDY $010F                 ;
CODE_0DB6ED:        C0 05         CPY #$05                  ;
CODE_0DB6EF:        D0 0C         BNE CODE_0DB6FD           ;
CODE_0DB6F1:        22 96 85 04   JSL CODE_048596           ;Increase lives by one
CODE_0DB6F5:        A9 05         LDA #$05                  ;
CODE_0DB6F7:        8D 03 16      STA $1603                 ;
CODE_0DB6FA:        4C 09 B7      JMP CODE_0DB709           ;

CODE_0DB6FD:        B9 97 B6      LDA DATA_0DB697,y               ;
CODE_0DB700:        BE 9C B6      LDX DATA_0DB69C,y               ;
CODE_0DB703:        9D 45 01      STA $0145,x               ;
CODE_0DB706:        20 27 BB      JSR CODE_0DBB27           ;
CODE_0DB709:        A9 05         LDA #$05                  ;
CODE_0DB70B:        85 0F         STA $0F                   ;
CODE_0DB70D:        A9 0C         LDA #$0C                  ;
CODE_0DB70F:        8D 02 16      STA $1602                 ;
CODE_0DB712:        AD 02 02      LDA $0202                 ;
CODE_0DB715:        29 02         AND #$02                  ;
CODE_0DB717:        D0 04         BNE CODE_0DB71D           ;
CODE_0DB719:        A9 6E         LDA #$6E                  ;
CODE_0DB71B:        80 02         BRA CODE_0DB71F           ;

CODE_0DB71D:        A9 60         LDA #$60                  ;
CODE_0DB71F:        8D FD 02      STA $02FD                 ;
CODE_0DB722:        AD 19 02      LDA $0219                 ;
CODE_0DB725:        8D CC 03      STA $03CC                 ;
CODE_0DB728:        A5 78         LDA $78                   ;
CODE_0DB72A:        8D CD 03      STA $03CD                 ;
CODE_0DB72D:        A9 20         LDA #$20                  ;
CODE_0DB72F:        8D FB 03      STA $03FB                 ;
CODE_0DB732:        8D FA 03      STA $03FA                 ;
CODE_0DB735:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DB738:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DB73B:        22 40 FC 0F   JSL CODE_0FFC40           ;
CODE_0DB73F:        60            RTS                       ;

DATA_0DB740:        db $08,$10,$08,$00

CODE_0DB744:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DB747:        AD 47 07      LDA $0747                 ;
CODE_0DB74A:        D0 61         BNE CODE_0DB7AD           ;
CODE_0DB74C:        AD 0E 07      LDA $070E                 ;
CODE_0DB74F:        F0 5C         BEQ CODE_0DB7AD           ;
CODE_0DB751:        A8            TAY                       ;
CODE_0DB752:        88            DEY                       ;
CODE_0DB753:        98            TYA                       ;
CODE_0DB754:        29 02         AND #$02                  ;
CODE_0DB756:        D0 09         BNE CODE_0DB761           ;
CODE_0DB758:        EE 37 02      INC $0237                 ;
CODE_0DB75B:        EE 37 02      INC $0237                 ;
CODE_0DB75E:        4C 67 B7      JMP CODE_0DB767           ;

CODE_0DB761:        CE 37 02      DEC $0237                 ;
CODE_0DB764:        CE 37 02      DEC $0237                 ;
CODE_0DB767:        B5 5E         LDA $5E,x                 ;
CODE_0DB769:        18            CLC                       ;
CODE_0DB76A:        79 40 B7      ADC DATA_0DB740,y               ;
CODE_0DB76D:        9D 38 02      STA $0238,x               ;
CODE_0DB770:        C0 01         CPY #$01                  ;
CODE_0DB772:        90 28         BCC CODE_0DB79C           ;
CODE_0DB774:        A5 0A         LDA $0A                   ;
CODE_0DB776:        29 80         AND #$80                  ;
CODE_0DB778:        F0 22         BEQ CODE_0DB79C           ;
CODE_0DB77A:        25 0D         AND $0D                   ;
CODE_0DB77C:        D0 1E         BNE CODE_0DB79C           ;
CODE_0DB77E:        98            TYA                       ;
CODE_0DB77F:        48            PHA                       ;
CODE_0DB780:        A9 F4         LDA #$F4                  ;
CODE_0DB782:        AC 5F 07      LDY $075F                 ;
CODE_0DB785:        C0 0B         CPY #$0B                  ;
CODE_0DB787:        F0 0C         BEQ CODE_0DB795           ;
CODE_0DB789:        C0 01         CPY #$01                  ;
CODE_0DB78B:        F0 08         BEQ CODE_0DB795           ;
CODE_0DB78D:        C0 02         CPY #$02                  ;
CODE_0DB78F:        F0 04         BEQ CODE_0DB795           ;
CODE_0DB791:        C0 06         CPY #$06                  ;
CODE_0DB793:        D0 02         BNE CODE_0DB797           ;
CODE_0DB795:        A9 E0         LDA #$E0                  ;
CODE_0DB797:        8D DB 06      STA $06DB                 ;
CODE_0DB79A:        68            PLA                       ;
CODE_0DB79B:        A8            TAY                       ;
CODE_0DB79C:        C0 03         CPY #$03                  ;
CODE_0DB79E:        D0 0D         BNE CODE_0DB7AD           ;
CODE_0DB7A0:        AD DB 06      LDA $06DB                 ;
CODE_0DB7A3:        85 A0         STA $A0                   ;
CODE_0DB7A5:        9C 0E 07      STZ $070E                 ;
CODE_0DB7A8:        A9 08         LDA #$08                  ;
CODE_0DB7AA:        8D 03 16      STA $1603                 ;
CODE_0DB7AD:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DB7B0:        20 40 EE      JSR CODE_0DEE40           ;
CODE_0DB7B3:        20 FC DA      JSR CODE_0DDAFC           ;
CODE_0DB7B6:        AD 0E 07      LDA $070E                 ;
CODE_0DB7B9:        F0 0D         BEQ CODE_0DB7C8           ;
CODE_0DB7BB:        AD 8E 07      LDA $078E                 ;
CODE_0DB7BE:        D0 08         BNE CODE_0DB7C8           ;
CODE_0DB7C0:        A9 04         LDA #$04                  ;
CODE_0DB7C2:        8D 8E 07      STA $078E                 ;
CODE_0DB7C5:        EE 0E 07      INC $070E                 ;
CODE_0DB7C8:        60            RTS                       ;

CODE_0DB7C9:        A9 2F         LDA #$2F                  ;
CODE_0DB7CB:        95 1C         STA $1C,x                 ;
CODE_0DB7CD:        A9 01         LDA #$01                  ;
CODE_0DB7CF:        95 10         STA $10,x                 ;
CODE_0DB7D1:        B9 85 00      LDA $0085,y               ;
CODE_0DB7D4:        95 79         STA $79,x                 ;
CODE_0DB7D6:        B9 26 02      LDA $0226,y               ;
CODE_0DB7D9:        9D 1A 02      STA $021A,x               ;
CODE_0DB7DC:        B9 44 02      LDA $0244,y               ;
CODE_0DB7DF:        D0 02         BNE CODE_0DB7E3           ;
CODE_0DB7E1:        A9 F0         LDA #$F0                  ;
CODE_0DB7E3:        9D 38 02      STA $0238,x               ;
CODE_0DB7E6:        AC 98 03      LDY $0398                 ;
CODE_0DB7E9:        D0 03         BNE CODE_0DB7EE           ;
CODE_0DB7EB:        8D 9D 03      STA $039D                 ;
CODE_0DB7EE:        8A            TXA                       ;
CODE_0DB7EF:        99 9A 03      STA $039A,y               ;
CODE_0DB7F2:        EE 98 03      INC $0398                 ;
CODE_0DB7F5:        A9 03         LDA #$03                  ;
CODE_0DB7F7:        8D 03 16      STA $1603                 ;
CODE_0DB7FA:        60            RTS                       ;

CODE_0DB7FB:        E0 09         CPX #$09                  ;
CODE_0DB7FD:        F0 01         BEQ CODE_0DB800           ;
CODE_0DB7FF:        60            RTS                       ;

CODE_0DB800:        AD 36 02      LDA $0236                 ;
CODE_0DB803:        D0 04         BNE CODE_0DB809           ;
CODE_0DB805:        A9 90         LDA #$90                  ;
CODE_0DB807:        80 02         BRA CODE_0DB80B           ;

CODE_0DB809:        A9 60         LDA #$60                  ;
CODE_0DB80B:        CD 99 03      CMP $0399                 ;
CODE_0DB80E:        F0 0B         BEQ CODE_0DB81B           ;
CODE_0DB810:        A5 09         LDA $09                   ;
CODE_0DB812:        4A            LSR A                     ;
CODE_0DB813:        90 06         BCC CODE_0DB81B           ;
CODE_0DB815:        CE 41 02      DEC $0241                 ;
CODE_0DB818:        EE 99 03      INC $0399                 ;
CODE_0DB81B:        AD 99 03      LDA $0399                 ;
CODE_0DB81E:        C9 08         CMP #$08                  ;
CODE_0DB820:        90 4C         BCC CODE_0DB86E           ;
CODE_0DB822:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DB825:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DB828:        A0 00         LDY #$00                  ;
CODE_0DB82A:        22 BE E8 0F   JSL CODE_0FE8BE           ;
CODE_0DB82E:        AD D1 03      LDA $03D1                 ;
CODE_0DB831:        29 0F         AND #$0F                  ;
CODE_0DB833:        C9 0F         CMP #$0F                  ;
CODE_0DB835:        D0 0B         BNE CODE_0DB842           ;
CODE_0DB837:        A2 09         LDX #$09                  ;
CODE_0DB839:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DB83C:        8D 98 03      STA $0398                 ;
CODE_0DB83F:        8D 99 03      STA $0399                 ;
CODE_0DB842:        A2 0A         LDX #$0A                  ;
CODE_0DB844:        A9 01         LDA #$01                  ;
CODE_0DB846:        A0 1B         LDY #$1B                  ;
CODE_0DB848:        20 FF EA      JSR CODE_0DEAFF           ;
CODE_0DB84B:        A4 02         LDY $02                   ;
CODE_0DB84D:        C0 D0         CPY #$D0                  ;
CODE_0DB84F:        B0 1D         BCS CODE_0DB86E           ;
CODE_0DB851:        AD 36 02      LDA $0236                 ;
CODE_0DB854:        D0 03         BNE CODE_0DB859           ;
CODE_0DB856:        98            TYA                       ;
CODE_0DB857:        30 15         BMI CODE_0DB86E           ;
CODE_0DB859:        B1 06         LDA ($06),y               ;
CODE_0DB85B:        D0 11         BNE CODE_0DB86E           ;
CODE_0DB85D:        A9 2F         LDA #$2F                  ;
CODE_0DB85F:        91 06         STA ($06),y               ;
CODE_0DB861:        98            TYA                       ;
CODE_0DB862:        30 0A         BMI CODE_0DB86E           ;
CODE_0DB864:        38            SEC                       ;
CODE_0DB865:        E9 10         SBC #$10                  ;
CODE_0DB867:        F0 05         BEQ CODE_0DB86E           ;
CODE_0DB869:        30 03         BMI CODE_0DB86E           ;
CODE_0DB86B:        A8            TAY                       ;
CODE_0DB86C:        80 EB         BRA CODE_0DB859           ;

CODE_0DB86E:        A4 02         LDY $02                   ;
CODE_0DB870:        A6 9E         LDX $9E                   ;
CODE_0DB872:        60            RTS                       ;

DATA_0DB873:       db $0F,$07

CODE_0DB875:        A5 5C         LDA $5C
CODE_0DB877:        F0 6F         BEQ CODE_0DB8E8           ;
CODE_0DB879:        A2 02         LDX #$02                  ;
CODE_0DB87B:        86 9E         STX $9E                   ;
CODE_0DB87D:        B5 10         LDA $10,x                 ;
CODE_0DB87F:        D0 51         BNE CODE_0DB8D2           ;
CODE_0DB881:        BD B8 07      LDA $07B8,x               ;
CODE_0DB884:        AC CC 06      LDY $06CC                 ;
CODE_0DB887:        39 73 B8      AND DATA_0DB873,y               ;
CODE_0DB88A:        C9 06         CMP #$06                  ;
CODE_0DB88C:        B0 44         BCS CODE_0DB8D2           ;
CODE_0DB88E:        A8            TAY                       ;
CODE_0DB88F:        B9 6B 02      LDA $026B,y               ;
CODE_0DB892:        F0 3E         BEQ CODE_0DB8D2           ;
CODE_0DB894:        B9 7D 02      LDA $027D,y               ;
CODE_0DB897:        F0 07         BEQ CODE_0DB8A0           ;
CODE_0DB899:        E9 00         SBC #$00                  ;
CODE_0DB89B:        99 7D 02      STA $027D,y               ;
CODE_0DB89E:        80 32         BRA CODE_0DB8D2           ;

CODE_0DB8A0:        AD 47 07      LDA $0747                 ;
CODE_0DB8A3:        D0 2D         BNE CODE_0DB8D2           ;
CODE_0DB8A5:        A9 0E         LDA #$0E                  ;
CODE_0DB8A7:        99 7D 02      STA $027D,y               ;
CODE_0DB8AA:        B9 6B 02      LDA $026B,y               ;
CODE_0DB8AD:        95 79         STA $79,x                 ;
CODE_0DB8AF:        B9 71 02      LDA $0271,y               ;
CODE_0DB8B2:        9D 1A 02      STA $021A,x               ;
CODE_0DB8B5:        B9 77 02      LDA $0277,y               ;
CODE_0DB8B8:        38            SEC                       ;
CODE_0DB8B9:        E9 08         SBC #$08                  ;
CODE_0DB8BB:        9D 38 02      STA $0238,x               ;
CODE_0DB8BE:        A9 01         LDA #$01                  ;
CODE_0DB8C0:        95 BC         STA $BC,x                 ;
CODE_0DB8C2:        95 10         STA $10,x                 ;
CODE_0DB8C4:        4A            LSR A                     ;
CODE_0DB8C5:        95 29         STA $29,x                 ;
CODE_0DB8C7:        A9 09         LDA #$09                  ;
CODE_0DB8C9:        9D 90 04      STA $0490,x               ;
CODE_0DB8CC:        A9 33         LDA #$33                  ;
CODE_0DB8CE:        95 1C         STA $1C,x                 ;
CODE_0DB8D0:        80 13         BRA CODE_0DB8E5           ;

CODE_0DB8D2:        B5 1C         LDA $1C,x                 ;
CODE_0DB8D4:        C9 33         CMP #$33                  ;
CODE_0DB8D6:        D0 0D         BNE CODE_0DB8E5           ;
CODE_0DB8D8:        20 FC DA      JSR CODE_0DDAFC           ;
CODE_0DB8DB:        B5 10         LDA $10,x                 ;
CODE_0DB8DD:        F0 06         BEQ CODE_0DB8E5           ;
CODE_0DB8DF:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DB8E2:        20 EB B8      JSR CODE_0DB8EB           ;
CODE_0DB8E5:        CA            DEX                       ;
CODE_0DB8E6:        10 93         BPL CODE_0DB87B           ;
CODE_0DB8E8:        60            RTS                       ;

DATA_0DB8E9:        db $18,$E8

CODE_0DB8EB:        AD 47 07      LDA $0747                 ;
CODE_0DB8EE:        D0 53         BNE CODE_0DB943           ;
CODE_0DB8F0:        B5 29         LDA $29,x                 ;
CODE_0DB8F2:        D0 32         BNE CODE_0DB926           ;
CODE_0DB8F4:        AD D1 03      LDA $03D1                 ;
CODE_0DB8F7:        29 0C         AND #$0C                  ;
CODE_0DB8F9:        C9 0C         CMP #$0C                  ;
CODE_0DB8FB:        F0 55         BEQ CODE_0DB952           ;
CODE_0DB8FD:        A0 01         LDY #$01                  ;
CODE_0DB8FF:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DB902:        30 01         BMI CODE_0DB905           ;
CODE_0DB904:        C8            INY                       ;
CODE_0DB905:        94 47         STY $47,x                 ;
CODE_0DB907:        88            DEY                       ;
CODE_0DB908:        B9 E9 B8      LDA DATA_0DB8E9,y               ;
CODE_0DB90B:        95 5E         STA $5E,x                 ;
CODE_0DB90D:        A5 00         LDA $00                   ;
CODE_0DB90F:        69 28         ADC #$28                  ;
CODE_0DB911:        C9 50         CMP #$50                  ;
CODE_0DB913:        90 3D         BCC CODE_0DB952           ;
CODE_0DB915:        A9 01         LDA #$01                  ;
CODE_0DB917:        95 29         STA $29,x                 ;
CODE_0DB919:        A9 0A         LDA #$0A                  ;
CODE_0DB91B:        9D 92 07      STA $0792,x               ;
CODE_0DB91E:        A9 4A         LDA #$4A                  ;
CODE_0DB920:        8D 03 16      STA $1603                 ;
CODE_0DB923:        20 6E C0      JSR CODE_0DC06E           ;
CODE_0DB926:        AD D1 03      LDA $03D1                 ;
CODE_0DB929:        29 F0         AND #$F0                  ;
CODE_0DB92B:        C9 F0         CMP #$F0                  ;
CODE_0DB92D:        F0 23         BEQ CODE_0DB952           ;
CODE_0DB92F:        B5 29         LDA $29,x                 ;
CODE_0DB931:        29 20         AND #$20                  ;
CODE_0DB933:        F0 03         BEQ CODE_0DB938           ;
CODE_0DB935:        20 06 BF      JSR CODE_0DBF06           ;
CODE_0DB938:        AD 67 0E      LDA $0E67                 ;
CODE_0DB93B:        D0 06         BNE CODE_0DB943           ;
CODE_0DB93D:        20 A0 BE      JSR CODE_0DBEA0           ;
CODE_0DB940:        20 ED BF      JSR CODE_0DBFED           ;
CODE_0DB943:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DB946:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DB949:        20 48 E9      JSR CODE_0DE948           ;
CODE_0DB94C:        20 7D DD      JSR CODE_0DDD7D           ;
CODE_0DB94F:        4C 40 EE      JMP CODE_0DEE40           ;

CODE_0DB952:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DB955:        60            RTS                       ;

DATA_0DB956:        db $04,$04,$04,$05,$05,$05,$06,$06
                    db $06

DATA_0DB95F:        db $10,$F0

CODE_0DB961:        AD B8 07      LDA $07B8                 ;
CODE_0DB964:        29 07         AND #$07                  ;
CODE_0DB966:        D0 05         BNE CODE_0DB96D           ;
CODE_0DB968:        AD B8 07      LDA $07B8                 ;
CODE_0DB96B:        29 08         AND #$08                  ;
CODE_0DB96D:        A8            TAY                       ;
CODE_0DB96E:        B9 39 00      LDA $0039,y               ;
CODE_0DB971:        D0 19         BNE CODE_0DB98C           ;
CODE_0DB973:        BE 56 B9      LDX DATA_0DB956,y               ;
CODE_0DB976:        B5 10         LDA $10,x                 ;
CODE_0DB978:        D0 12         BNE CODE_0DB98C           ;
CODE_0DB97A:        A6 9E         LDX $9E                   ;
CODE_0DB97C:        8A            TXA                       ;
CODE_0DB97D:        99 AE 06      STA $06AE,y               ;
CODE_0DB980:        A9 90         LDA #$90                  ;
CODE_0DB982:        99 39 00      STA $0039,y               ;
CODE_0DB985:        A9 07         LDA #$07                  ;
CODE_0DB987:        99 9C 04      STA $049C,y               ;
CODE_0DB98A:        38            SEC                       ;
CODE_0DB98B:        60            RTS                       ;

CODE_0DB98C:        A6 9E         LDX $9E                   ;
CODE_0DB98E:        18            CLC                       ;
CODE_0DB98F:        60            RTS                       ;

CODE_0DB990:        AD 47 07      LDA $0747                 ;
CODE_0DB993:        F0 03         BEQ CODE_0DB998           ;
CODE_0DB995:        4C 1E BA      JMP CODE_0DBA1E           ;

CODE_0DB998:        B5 39         LDA $39,x                 ;
CODE_0DB99A:        29 7F         AND #$7F                  ;
CODE_0DB99C:        BC AE 06      LDY $06AE,x               ;
CODE_0DB99F:        C9 02         CMP #$02                  ;
CODE_0DB9A1:        F0 20         BEQ CODE_0DB9C3           ;
CODE_0DB9A3:        B0 34         BCS CODE_0DB9D9           ;
CODE_0DB9A5:        8A            TXA                       ;
CODE_0DB9A6:        18            CLC                       ;
CODE_0DB9A7:        69 11         ADC #$11                  ;
CODE_0DB9A9:        AA            TAX                       ;
CODE_0DB9AA:        A9 10         LDA #$10                  ;
CODE_0DB9AC:        85 00         STA $00                   ;
CODE_0DB9AE:        A9 0F         LDA #$0F                  ;
CODE_0DB9B0:        85 01         STA $01                   ;
CODE_0DB9B2:        A9 04         LDA #$04                  ;
CODE_0DB9B4:        85 02         STA $02                   ;
CODE_0DB9B6:        A9 00         LDA #$00                  ;
CODE_0DB9B8:        20 7E BF      JSR CODE_0DBF7E           ;
CODE_0DB9BB:        20 AD BE      JSR CODE_0DBEAD           ;
CODE_0DB9BE:        A6 9E         LDX $9E                   ;
CODE_0DB9C0:        4C 1B BA      JMP CODE_0DBA1B           ;

CODE_0DB9C3:        A9 FE         LDA #$FE                  ;
CODE_0DB9C5:        95 B1         STA $B1,x                 ;
CODE_0DB9C7:        B9 29 00      LDA $0029,y               ;
CODE_0DB9CA:        29 F7         AND #$F7                  ;
CODE_0DB9CC:        99 29 00      STA $0029,y               ;
CODE_0DB9CF:        B6 47         LDX $47,y                 ;
CODE_0DB9D1:        CA            DEX                       ;
CODE_0DB9D2:        BD 5F B9      LDA DATA_0DB95F,x               ;
CODE_0DB9D5:        A6 9E         LDX $9E                   ;
CODE_0DB9D7:        95 6E         STA $6E,x                 ;
CODE_0DB9D9:        D6 39         DEC $39,x                 ;
CODE_0DB9DB:        B5 39         LDA $39,x                 ;
CODE_0DB9DD:        C9 81         CMP #$81                  ;
CODE_0DB9DF:        D0 05         BNE CODE_0DB9E6           ;
CODE_0DB9E1:        A9 37         LDA #$37                  ;
CODE_0DB9E3:        8D 00 16      STA $1600                 ;
CODE_0DB9E6:        B9 1C 00      LDA $001C,y               ;
CODE_0DB9E9:        C9 2D         CMP #$2D                  ;
CODE_0DB9EB:        D0 04         BNE CODE_0DB9F1           ;
CODE_0DB9ED:        A9 08         LDA #$08                  ;
CODE_0DB9EF:        80 0D         BRA CODE_0DB9FE           ;

CODE_0DB9F1:        B9 47 00      LDA $0047,y               ;
CODE_0DB9F4:        C9 02         CMP #$02                  ;
CODE_0DB9F6:        D0 04         BNE CODE_0DB9FC           ;
CODE_0DB9F8:        A9 06         LDA #$06                  ;
CODE_0DB9FA:        80 02         BRA CODE_0DB9FE           ;

CODE_0DB9FC:        A9 02         LDA #$02                  ;
CODE_0DB9FE:        18            CLC                       ;
CODE_0DB9FF:        79 1A 02      ADC $021A,y               ;
CODE_0DBA02:        9D 2A 02      STA $022A,x               ;
CODE_0DBA05:        B9 79 00      LDA $0079,y               ;
CODE_0DBA08:        69 00         ADC #$00                  ;
CODE_0DBA0A:        95 89         STA $89,x                 ;
CODE_0DBA0C:        B9 38 02      LDA $0238,y               ;
CODE_0DBA0F:        38            SEC                       ;
CODE_0DBA10:        E9 0A         SBC #$0A                  ;
CODE_0DBA12:        9D 48 02      STA $0248,x               ;
CODE_0DBA15:        A9 01         LDA #$01                  ;
CODE_0DBA17:        95 CC         STA $CC,x                 ;
CODE_0DBA19:        D0 03         BNE CODE_0DBA1E           ;
CODE_0DBA1B:        20 D9 DC      JSR CODE_0DDCD9           ;
CODE_0DBA1E:        20 CD FD      JSR CODE_0DFDCD           ;
CODE_0DBA21:        20 46 FD      JSR CODE_0DFD46           ;
CODE_0DBA24:        20 3B E9      JSR CODE_0DE93B           ;
CODE_0DBA27:        22 53 EB 0F   JSL CODE_0FEB53           ;
CODE_0DBA2B:        60            RTS                       ;

CODE_0DBA2C:        20 7A BA      JSR CODE_0DBA7A           ;
CODE_0DBA2F:        B5 85         LDA $85,x                 ;
CODE_0DBA31:        99 89 00      STA $0089,y               ;
CODE_0DBA34:        BD 26 02      LDA $0226,x               ;
CODE_0DBA37:        09 05         ORA #$05                  ;
CODE_0DBA39:        99 2A 02      STA $022A,y               ;
CODE_0DBA3C:        BD 44 02      LDA $0244,x               ;
CODE_0DBA3F:        E9 10         SBC #$10                  ;
CODE_0DBA41:        99 48 02      STA $0248,y               ;
CODE_0DBA44:        80 1B         BRA CODE_0DBA61           ;

CODE_0DBA46:        20 7A BA      JSR CODE_0DBA7A           ;
CODE_0DBA49:        BD EC 03      LDA $03EC,x               ;
CODE_0DBA4C:        99 89 00      STA $0089,y               ;
CODE_0DBA4F:        A5 06         LDA $06                   ;
CODE_0DBA51:        0A            ASL A                     ;
CODE_0DBA52:        0A            ASL A                     ;
CODE_0DBA53:        0A            ASL A                     ;
CODE_0DBA54:        0A            ASL A                     ;
CODE_0DBA55:        09 05         ORA #$05                  ;
CODE_0DBA57:        99 2A 02      STA $022A,y               ;
CODE_0DBA5A:        A5 02         LDA $02                   ;
CODE_0DBA5C:        69 20         ADC #$20                  ;
CODE_0DBA5E:        99 48 02      STA $0248,y               ;
CODE_0DBA61:        A9 FB         LDA #$FB                  ;
CODE_0DBA63:        99 B1 00      STA $00B1,y               ;
CODE_0DBA66:        A9 01         LDA #$01                  ;
CODE_0DBA68:        99 CC 00      STA $00CC,y               ;
CODE_0DBA6B:        99 39 00      STA $0039,y               ;
CODE_0DBA6E:        8D 03 16      STA $1603                 ;
CODE_0DBA71:        86 9E         STX $9E                   ;
CODE_0DBA73:        20 FF BA      JSR CODE_0DBAFF           ;
CODE_0DBA76:        EE 48 07      INC $0748                 ;
CODE_0DBA79:        60            RTS                       ;

CODE_0DBA7A:        A0 08         LDY #$08                  ;
CODE_0DBA7C:        B9 39 00      LDA $0039,y               ;
CODE_0DBA7F:        F0 07         BEQ CODE_0DBA88           ;
CODE_0DBA81:        88            DEY                       ;
CODE_0DBA82:        C0 05         CPY #$05                  ;
CODE_0DBA84:        D0 F6         BNE CODE_0DBA7C           ;
CODE_0DBA86:        A0 08         LDY #$08                  ;
CODE_0DBA88:        8C B7 06      STY $06B7                 ;
CODE_0DBA8B:        60            RTS                       ;

CODE_0DBA8C:        A2 08         LDX #$08                  ;
CODE_0DBA8E:        86 9E         STX $9E                   ;
CODE_0DBA90:        B5 39         LDA $39,x                 ;
CODE_0DBA92:        F0 61         BEQ CODE_0DBAF5           ;
CODE_0DBA94:        0A            ASL A                     ;
CODE_0DBA95:        90 06         BCC CODE_0DBA9D           ;
CODE_0DBA97:        20 90 B9      JSR CODE_0DB990           ;
CODE_0DBA9A:        4C F5 BA      JMP CODE_0DBAF5           ;

CODE_0DBA9D:        B4 39         LDY $39,x                 ;
CODE_0DBA9F:        88            DEY                       ;
CODE_0DBAA0:        F0 1F         BEQ CODE_0DBAC1           ;
CODE_0DBAA2:        F6 39         INC $39,x                 ;
CODE_0DBAA4:        BD 2A 02      LDA $022A,x               ;
CODE_0DBAA7:        18            CLC                       ;
CODE_0DBAA8:        6D 75 07      ADC $0775                 ;
CODE_0DBAAB:        9D 2A 02      STA $022A,x               ;
CODE_0DBAAE:        B5 89         LDA $89,x                 ;
CODE_0DBAB0:        69 00         ADC #$00                  ;
CODE_0DBAB2:        95 89         STA $89,x                 ;
CODE_0DBAB4:        B5 39         LDA $39,x                 ;
CODE_0DBAB6:        C9 30         CMP #$30                  ;
CODE_0DBAB8:        D0 26         BNE CODE_0DBAE0           ;
CODE_0DBABA:        A9 00         LDA #$00                  ;
CODE_0DBABC:        95 39         STA $39,x                 ;
CODE_0DBABE:        4C F5 BA      JMP CODE_0DBAF5           ;

CODE_0DBAC1:        8A            TXA                       ;
CODE_0DBAC2:        18            CLC                       ;
CODE_0DBAC3:        69 11         ADC #$11                  ;
CODE_0DBAC5:        AA            TAX                       ;
CODE_0DBAC6:        A9 50         LDA #$50                  ;
CODE_0DBAC8:        85 00         STA $00                   ;
CODE_0DBACA:        A9 06         LDA #$06                  ;
CODE_0DBACC:        85 02         STA $02                   ;
CODE_0DBACE:        4A            LSR A                     ;
CODE_0DBACF:        85 01         STA $01                   ;
CODE_0DBAD1:        A9 00         LDA #$00                  ;
CODE_0DBAD3:        20 7E BF      JSR CODE_0DBF7E           ;
CODE_0DBAD6:        A6 9E         LDX $9E                   ;
CODE_0DBAD8:        B5 B1         LDA $B1,x                 ;
CODE_0DBADA:        C9 05         CMP #$05                  ;
CODE_0DBADC:        D0 02         BNE CODE_0DBAE0           ;
CODE_0DBADE:        F6 39         INC $39,x                 ;
CODE_0DBAE0:        B5 B1         LDA $B1,x                 ;
CODE_0DBAE2:        D0 04         BNE CODE_0DBAE8           ;
CODE_0DBAE4:        22 CA EA 0F   JSL CODE_0FEACA           ;
CODE_0DBAE8:        20 46 FD      JSR CODE_0DFD46           ;
CODE_0DBAEB:        20 CD FD      JSR CODE_0DFDCD           ;
CODE_0DBAEE:        20 3B E9      JSR CODE_0DE93B           ;
CODE_0DBAF1:        22 EC EA 0F   JSL CODE_0FEAEC           ;
CODE_0DBAF5:        CA            DEX                       ;
CODE_0DBAF6:        10 96         BPL CODE_0DBA8E           ;
CODE_0DBAF8:        60            RTS                       ;

DATA_0DBAF9:        db $17,$1D

DATA_0DBAFB:        db $0B,$11

DATA_0DBAFD:        db $02,$13

CODE_0DBAFF:        A9 01         LDA #$01                  ;
CODE_0DBB01:        8D 4A 01      STA $014A                 ;
CODE_0DBB04:        AC F9 BA      LDY DATA_0DBAF9                 ;
CODE_0DBB07:        20 AA 98      JSR CODE_0D98AA           ;
CODE_0DBB0A:        EE 5E 07      INC $075E                 ;
CODE_0DBB0D:        AD 5E 07      LDA $075E                 ;
CODE_0DBB10:        C9 64         CMP #$64                  ;
CODE_0DBB12:        D0 0E         BNE CODE_0DBB22           ;
CODE_0DBB14:        A9 00         LDA #$00                  ;
CODE_0DBB16:        8D 5E 07      STA $075E                 ;
CODE_0DBB19:        22 96 85 04   JSL CODE_048596           ;Increase lives by one
CODE_0DBB1D:        A9 05         LDA #$05                  ;
CODE_0DBB1F:        8D 03 16      STA $1603                 ;
CODE_0DBB22:        A9 02         LDA #$02                  ;
CODE_0DBB24:        8D 49 01      STA $0149                 ;
CODE_0DBB27:        AC FB BA      LDY DATA_0DBAFB                 ;
CODE_0DBB2A:        20 AA 98      JSR CODE_0D98AA           ;
CODE_0DBB2D:        AD FD BA      LDA DATA_0DBAFD                 ;
CODE_0DBB30:        20 3D 98      JSR CODE_0D983D           ;
CODE_0DBB33:        AC 00 17      LDY $1700                 ;
CODE_0DBB36:        B9 F6 16      LDA $16F6,y               ;
CODE_0DBB39:        D0 0E         BNE CODE_0DBB49           ;
CODE_0DBB3B:        A9 28         LDA #$28                  ;
CODE_0DBB3D:        BE F2 16      LDX $16F2,y               ;
CODE_0DBB40:        E0 02         CPX #$02                  ;
CODE_0DBB42:        D0 02         BNE CODE_0DBB46           ;
CODE_0DBB44:        A9 24         LDA #$24                  ;
CODE_0DBB46:        99 F6 16      STA $16F6,y               ;
CODE_0DBB49:        A6 9E         LDX $9E                   ;
CODE_0DBB4B:        60            RTS                       ;

CODE_0DBB4C:        A9 2E         LDA #$2E                  ;
CODE_0DBB4E:        85 25         STA $25                   ;
CODE_0DBB50:        B5 85         LDA $85,x                 ;
CODE_0DBB52:        85 82         STA $82                   ;
CODE_0DBB54:        BD 26 02      LDA $0226,x               ;
CODE_0DBB57:        8D 23 02      STA $0223                 ;
CODE_0DBB5A:        A9 01         LDA #$01                  ;
CODE_0DBB5C:        85 C5         STA $C5                   ;
CODE_0DBB5E:        BD 44 02      LDA $0244,x               ;
CODE_0DBB61:        38            SEC                       ;
CODE_0DBB62:        E9 08         SBC #$08                  ;
CODE_0DBB64:        8D 41 02      STA $0241                 ;
CODE_0DBB67:        A9 01         LDA #$01                  ;
CODE_0DBB69:        85 32         STA $32                   ;
CODE_0DBB6B:        85 19         STA $19                   ;
CODE_0DBB6D:        A9 03         LDA #$03                  ;
CODE_0DBB6F:        8D 99 04      STA $0499                 ;
CODE_0DBB72:        AD 0C 02      LDA $020C                 ;
CODE_0DBB75:        C9 02         CMP #$02                  ;
CODE_0DBB77:        B0 0B         BCS CODE_0DBB84           ;
CODE_0DBB79:        AD 56 07      LDA $0756                 ;
CODE_0DBB7C:        C9 02         CMP #$02                  ;
CODE_0DBB7E:        90 01         BCC CODE_0DBB81           ;
CODE_0DBB80:        4A            LSR A                     ;
CODE_0DBB81:        8D 0C 02      STA $020C                 ;
CODE_0DBB84:        A9 30         LDA #$30                  ;
CODE_0DBB86:        8D 60 02      STA $0260                 ;
CODE_0DBB89:        A9 02         LDA #$02                  ;
CODE_0DBB8B:        8D 03 16      STA $1603                 ;
CODE_0DBB8E:        60            RTS                       ;

CODE_0DBB8F:        A2 09         LDX #$09                  ;
CODE_0DBB91:        86 9E         STX $9E                   ;
CODE_0DBB93:        A5 32         LDA $32                   ;
CODE_0DBB95:        D0 03         BNE CODE_0DBB9A           ;
CODE_0DBB97:        4C 46 BC      JMP CODE_0DBC46           ;

CODE_0DBB9A:        0A            ASL A                     ;
CODE_0DBB9B:        90 2C         BCC CODE_0DBBC9           ;
CODE_0DBB9D:        AD 47 07      LDA $0747                 ;
CODE_0DBBA0:        D0 50         BNE CODE_0DBBF2           ;
CODE_0DBBA2:        AD 0C 02      LDA $020C                 ;
CODE_0DBBA5:        F0 19         BEQ CODE_0DBBC0           ;
CODE_0DBBA7:        C9 03         CMP #$03                  ;
CODE_0DBBA9:        F0 15         BEQ CODE_0DBBC0           ;
CODE_0DBBAB:        C9 04         CMP #$04                  ;
CODE_0DBBAD:        F0 11         BEQ CODE_0DBBC0           ;
CODE_0DBBAF:        C9 05         CMP #$05                  ;
CODE_0DBBB1:        F0 0D         BEQ CODE_0DBBC0           ;
CODE_0DBBB3:        C9 02         CMP #$02                  ;
CODE_0DBBB5:        D0 3B         BNE CODE_0DBBF2           ;
CODE_0DBBB7:        20 92 CE      JSR CODE_0DCE92           ;
CODE_0DBBBA:        20 4D E8      JSR CODE_0DE84D           ;
CODE_0DBBBD:        4C F2 BB      JMP CODE_0DBBF2           ;

CODE_0DBBC0:        20 10 CE      JSR CODE_0DCE10           ;
CODE_0DBBC3:        20 8D E6      JSR CODE_0DE68D           ;
CODE_0DBBC6:        4C F2 BB      JMP CODE_0DBBF2           ;

CODE_0DBBC9:        A5 09         LDA $09                   ;
CODE_0DBBCB:        29 03         AND #$03                  ;
CODE_0DBBCD:        D0 1A         BNE CODE_0DBBE9           ;
CODE_0DBBCF:        CE 41 02      DEC $0241                 ;
CODE_0DBBD2:        A5 32         LDA $32                   ;
CODE_0DBBD4:        E6 32         INC $32                   ;
CODE_0DBBD6:        C9 11         CMP #$11                  ;
CODE_0DBBD8:        90 0F         BCC CODE_0DBBE9           ;
CODE_0DBBDA:        A9 10         LDA #$10                  ;
CODE_0DBBDC:        95 5E         STA $5E,x                 ;
CODE_0DBBDE:        A9 80         LDA #$80                  ;
CODE_0DBBE0:        85 32         STA $32                   ;
CODE_0DBBE2:        0A            ASL A                     ;
CODE_0DBBE3:        8D 60 02      STA $0260                 ;
CODE_0DBBE6:        2A            ROL A                     ;
CODE_0DBBE7:        95 47         STA $47,x                 ;
CODE_0DBBE9:        A5 32         LDA $32                   ;
CODE_0DBBEB:        C9 06         CMP #$06                  ;
CODE_0DBBED:        B0 03         BCS CODE_0DBBF2           ;
CODE_0DBBEF:        4C 46 BC      JMP CODE_0DBC46           ;

CODE_0DBBF2:        4C 34 BC      JMP CODE_0DBC34           ;

CODE_0DBBF5:        B5 79         LDA $79,x                 ;
CODE_0DBBF7:        85 E9         STA $E9                   ;
CODE_0DBBF9:        BD 1A 02      LDA $021A,x               ;
CODE_0DBBFC:        85 E8         STA $E8                   ;
CODE_0DBBFE:        C2 20         REP #$20                  ;
CODE_0DBC00:        A5 E8         LDA $E8                   ;
CODE_0DBC02:        C5 42         CMP $42                   ;
CODE_0DBC04:        B0 11         BCS CODE_0DBC17           ;
CODE_0DBC06:        18            CLC                       ;
CODE_0DBC07:        69 0C 00      ADC #$000C                ;
CODE_0DBC0A:        85 E6         STA $E6                   ;
CODE_0DBC0C:        E2 20         SEP #$20                  ;
CODE_0DBC0E:        A5 E6         LDA $E6                   ;
CODE_0DBC10:        9D 1A 02      STA $021A,x               ;
CODE_0DBC13:        A5 E7         LDA $E7                   ;
CODE_0DBC15:        95 79         STA $79,x                 ;
CODE_0DBC17:        E2 20         SEP #$20                  ;
CODE_0DBC19:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DBC1C:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DBC1F:        20 48 E9      JSR CODE_0DE948           ;
CODE_0DBC22:        20 50 EC      JSR CODE_0DEC50           ;
CODE_0DBC25:        20 7D DD      JSR CODE_0DDD7D           ;
CODE_0DBC28:        20 FC DA      JSR CODE_0DDAFC           ;
CODE_0DBC2B:        A5 E8         LDA $E8                   ;
CODE_0DBC2D:        9D 1A 02      STA $021A,x               ;
CODE_0DBC30:        A5 E9         LDA $E9                   ;
CODE_0DBC32:        95 79         STA $79,x                 ;
CODE_0DBC34:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DBC37:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DBC3A:        20 48 E9      JSR CODE_0DE948           ;
CODE_0DBC3D:        20 50 EC      JSR CODE_0DEC50           ;
CODE_0DBC40:        20 7D DD      JSR CODE_0DDD7D           ;
CODE_0DBC43:        20 FC DA      JSR CODE_0DDAFC           ;
CODE_0DBC46:        60            RTS                       ;

DATA_0DBC47:        db $04,$12

CODE_0DBC49:        48            PHA                       ;
CODE_0DBC4A:        A9 11         LDA #$11                  ;
CODE_0DBC4C:        AE F0 03      LDX $03F0                 ;
CODE_0DBC4F:        AC 54 07      LDY $0754                 ;
CODE_0DBC52:        D0 02         BNE CODE_0DBC56           ;
CODE_0DBC54:        A9 12         LDA #$12                  ;
CODE_0DBC56:        95 35         STA $35,x                 ;
CODE_0DBC58:        20 61 90      JSR CODE_0D9061           ;
CODE_0DBC5B:        AE F0 03      LDX $03F0                 ;
CODE_0DBC5E:        A5 02         LDA $02                   ;
CODE_0DBC60:        9D E6 03      STA $03E6,x               ;
CODE_0DBC63:        A8            TAY                       ;
CODE_0DBC64:        A5 06         LDA $06                   ;
CODE_0DBC66:        9D E8 03      STA $03E8,x               ;
CODE_0DBC69:        B1 06         LDA ($06),y               ;
CODE_0DBC6B:        20 83 BD      JSR CODE_0DBD83           ;
CODE_0DBC6E:        85 00         STA $00                   ;
CODE_0DBC70:        AC 54 07      LDY $0754                 ;
CODE_0DBC73:        D0 01         BNE CODE_0DBC76           ;
CODE_0DBC75:        98            TYA                       ;
CODE_0DBC76:        90 25         BCC CODE_0DBC9D           ;
CODE_0DBC78:        A0 11         LDY #$11                  ;
CODE_0DBC7A:        94 35         STY $35,x                 ;
CODE_0DBC7C:        A9 FD         LDA #$FD                  ;
CODE_0DBC7E:        A4 00         LDY $00                   ;
CODE_0DBC80:        C0 54         CPY #$54                  ;
CODE_0DBC82:        F0 04         BEQ CODE_0DBC88           ;
CODE_0DBC84:        C0 5A         CPY #$5A                  ;
CODE_0DBC86:        D0 15         BNE CODE_0DBC9D           ;
CODE_0DBC88:        AD BC 06      LDA $06BC                 ;
CODE_0DBC8B:        D0 08         BNE CODE_0DBC95           ;
CODE_0DBC8D:        A9 0B         LDA #$0B                  ;
CODE_0DBC8F:        8D AD 07      STA $07AD                 ;
CODE_0DBC92:        EE BC 06      INC $06BC                 ;
CODE_0DBC95:        AD AD 07      LDA $07AD                 ;
CODE_0DBC98:        D0 02         BNE CODE_0DBC9C           ;
CODE_0DBC9A:        A0 FD         LDY #$FD                  ;
CODE_0DBC9C:        98            TYA                       ;
CODE_0DBC9D:        9D EA 03      STA $03EA,x               ;
CODE_0DBCA0:        20 E2 BC      JSR CODE_0DBCE2           ;
CODE_0DBCA3:        A4 02         LDY $02                   ;
CODE_0DBCA5:        A9 2C         LDA #$2C                  ;
CODE_0DBCA7:        91 06         STA ($06),y               ;
CODE_0DBCA9:        A9 10         LDA #$10                  ;
CODE_0DBCAB:        8D 8C 07      STA $078C                 ;
CODE_0DBCAE:        68            PLA                       ;
CODE_0DBCAF:        85 05         STA $05                   ;
CODE_0DBCB1:        A0 00         LDY #$00                  ;
CODE_0DBCB3:        AD 14 07      LDA $0714                 ;
CODE_0DBCB6:        D0 05         BNE CODE_0DBCBD           ;
CODE_0DBCB8:        AD 54 07      LDA $0754                 ;
CODE_0DBCBB:        F0 01         BEQ CODE_0DBCBE           ;
CODE_0DBCBD:        C8            INY                       ;
CODE_0DBCBE:        AD 37 02      LDA $0237                 ;
CODE_0DBCC1:        18            CLC                       ;
CODE_0DBCC2:        79 47 BC      ADC DATA_0DBC47,y               ;
CODE_0DBCC5:        29 F0         AND #$F0                  ;
CODE_0DBCC7:        9D 44 02      STA $0244,x               ;
CODE_0DBCCA:        B4 35         LDY $35,x                 ;
CODE_0DBCCC:        C0 11         CPY #$11                  ;
CODE_0DBCCE:        F0 06         BEQ CODE_0DBCD6           ;
CODE_0DBCD0:        20 8F BD      JSR CODE_0DBD8F           ;
CODE_0DBCD3:        4C D9 BC      JMP CODE_0DBCD9           ;

CODE_0DBCD6:        20 01 BD      JSR CODE_0DBD01           ;
CODE_0DBCD9:        AD F0 03      LDA $03F0                 ;
CODE_0DBCDC:        49 01         EOR #$01                  ;
CODE_0DBCDE:        8D F0 03      STA $03F0                 ;
CODE_0DBCE1:        60            RTS                       ;

CODE_0DBCE2:        AD 19 02      LDA $0219                 ;
CODE_0DBCE5:        18            CLC                       ;
CODE_0DBCE6:        69 08         ADC #$08                  ;
CODE_0DBCE8:        29 F0         AND #$F0                  ;
CODE_0DBCEA:        9D 26 02      STA $0226,x               ;
CODE_0DBCED:        8D 16 0E      STA $0E16                 ;
CODE_0DBCF0:        A5 78         LDA $78                   ;
CODE_0DBCF2:        69 00         ADC #$00                  ;
CODE_0DBCF4:        95 85         STA $85,x                 ;
CODE_0DBCF6:        9D EC 03      STA $03EC,x               ;
CODE_0DBCF9:        8D 17 0E      STA $0E17                 ;
CODE_0DBCFC:        A5 BB         LDA $BB                   ;
CODE_0DBCFE:        95 C8         STA $C8,x                 ;
CODE_0DBD00:        60            RTS                       ;

CODE_0DBD01:        20 B4 BD      JSR CODE_0DBDB4           ;
CODE_0DBD04:        A9 01         LDA #$01                  ;
CODE_0DBD06:        8D 00 16      STA $1600                 ;
CODE_0DBD09:        A9 00         LDA #$00                  ;
CODE_0DBD0B:        95 6A         STA $6A,x                 ;
CODE_0DBD0D:        9D 49 04      STA $0449,x               ;
CODE_0DBD10:        85 A0         STA $A0                   ;
CODE_0DBD12:        A9 FE         LDA #$FE                  ;
CODE_0DBD14:        95 AD         STA $AD,x                 ;
CODE_0DBD16:        A5 05         LDA $05                   ;
CODE_0DBD18:        20 83 BD      JSR CODE_0DBD83           ;
CODE_0DBD1B:        90 50         BCC CODE_0DBD6D           ;
CODE_0DBD1D:        98            TYA                       ;
CODE_0DBD1E:        C9 0D         CMP #$0D                  ;
CODE_0DBD20:        90 02         BCC CODE_0DBD24           ;
CODE_0DBD22:        E9 06         SBC #$06                  ;
CODE_0DBD24:        0A            ASL A                     ;
CODE_0DBD25:        A8            TAY                       ;
CODE_0DBD26:        B9 33 BD      LDA PNTR_0DBD33,y               ;
CODE_0DBD29:        85 04         STA $04                   ;
CODE_0DBD2B:        B9 34 BD      LDA PNTR_0DBD33+1,y               ;
CODE_0DBD2E:        85 05         STA $05                   ;
CODE_0DBD30:        6C 04 00      JMP ($0004)               ;

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

CODE_0DBD51:        A9 00         LDA #$00                  ;
CODE_0DBD53:        80 0A         BRA CODE_0DBD5F           ;

CODE_0DBD55:        A9 02         LDA #$02                  ;
CODE_0DBD57:        80 06         BRA CODE_0DBD5F           ;

CODE_0DBD59:        A9 04         LDA #$04                  ;
CODE_0DBD5B:        80 02         BRA CODE_0DBD5F           ;

CODE_0DBD5D:        A9 03         LDA #$03                  ;
CODE_0DBD5F:        8D 0C 02      STA $020C                 ;
CODE_0DBD62:        4C 4C BB      JMP CODE_0DBB4C           ;

CODE_0DBD65:        A2 09         LDX #$09                  ;
CODE_0DBD67:        AC F0 03      LDY $03F0                 ;
CODE_0DBD6A:        20 C9 B7      JSR CODE_0DB7C9           ;
CODE_0DBD6D:        60            RTS                       ;

DATA_0DBD6E:        db $E8,$E9,$E7,$5C,$5D,$5E,$5F,$50
                    db $51,$52,$53,$54,$55,$56,$57,$58
                    db $59,$5A,$5B,$60,$61

CODE_0DBD83:        A0 14         LDY #$14                  ;
CODE_0DBD85:        D9 6E BD      CMP DATA_0DBD6E,y               ;
CODE_0DBD88:        F0 04         BEQ CODE_0DBD8E           ;
CODE_0DBD8A:        88            DEY                       ;
CODE_0DBD8B:        10 F8         BPL CODE_0DBD85           ;
CODE_0DBD8D:        18            CLC                       ;
CODE_0DBD8E:        60            RTS                       ;

CODE_0DBD8F:        20 B4 BD      JSR CODE_0DBDB4           ;
CODE_0DBD92:        A9 01         LDA #$01                  ;
CODE_0DBD94:        9D EE 03      STA $03EE,x               ;
CODE_0DBD97:        AD 03 16      LDA $1603                 ;
CODE_0DBD9A:        D0 05         BNE CODE_0DBDA1           ;
CODE_0DBD9C:        A9 07         LDA #$07                  ;
CODE_0DBD9E:        8D 03 16      STA $1603                 ;
CODE_0DBDA1:        20 DB BD      JSR CODE_0DBDDB           ;
CODE_0DBDA4:        A9 FE         LDA #$FE                  ;
CODE_0DBDA6:        85 A0         STA $A0                   ;
CODE_0DBDA8:        A9 05         LDA #$05                  ;
CODE_0DBDAA:        8D 4A 01      STA $014A                 ;
CODE_0DBDAD:        20 27 BB      JSR CODE_0DBB27           ;
CODE_0DBDB0:        AE F0 03      LDX $03F0                 ;
CODE_0DBDB3:        60            RTS                       ;

CODE_0DBDB4:        AE F0 03      LDX $03F0                 ;
CODE_0DBDB7:        A4 02         LDY $02                   ;
CODE_0DBDB9:        F0 1F         BEQ CODE_0DBDDA           ;
CODE_0DBDBB:        98            TYA                       ;
CODE_0DBDBC:        38            SEC                       ;
CODE_0DBDBD:        E9 10         SBC #$10                  ;
CODE_0DBDBF:        85 02         STA $02                   ;
CODE_0DBDC1:        A8            TAY                       ;
CODE_0DBDC2:        B1 06         LDA ($06),y               ;
CODE_0DBDC4:        C9 EA         CMP #$EA                  ;
CODE_0DBDC6:        D0 12         BNE CODE_0DBDDA           ;
CODE_0DBDC8:        A9 00         LDA #$00                  ;
CODE_0DBDCA:        91 06         STA ($06),y               ;
CODE_0DBDCC:        A9 01         LDA #$01                  ;
CODE_0DBDCE:        8D 03 16      STA $1603                 ;
CODE_0DBDD1:        20 46 90      JSR CODE_0D9046           ;
CODE_0DBDD4:        AE F0 03      LDX $03F0                 ;
CODE_0DBDD7:        20 46 BA      JSR CODE_0DBA46           ;
CODE_0DBDDA:        60            RTS                       ;

CODE_0DBDDB:        BD 26 02      LDA $0226,x               ;
CODE_0DBDDE:        9D F3 03      STA $03F3,x               ;
CODE_0DBDE1:        A9 F0         LDA #$F0                  ;
CODE_0DBDE3:        95 6A         STA $6A,x                 ;
CODE_0DBDE5:        95 6C         STA $6C,x                 ;
CODE_0DBDE7:        A9 FA         LDA #$FA                  ;
CODE_0DBDE9:        95 AD         STA $AD,x                 ;
CODE_0DBDEB:        A9 FC         LDA #$FC                  ;
CODE_0DBDED:        95 AF         STA $AF,x                 ;
CODE_0DBDEF:        A9 00         LDA #$00                  ;
CODE_0DBDF1:        9D 49 04      STA $0449,x               ;
CODE_0DBDF4:        9D 4B 04      STA $044B,x               ;
CODE_0DBDF7:        B5 85         LDA $85,x                 ;
CODE_0DBDF9:        95 87         STA $87,x                 ;
CODE_0DBDFB:        BD 26 02      LDA $0226,x               ;
CODE_0DBDFE:        9D 28 02      STA $0228,x               ;
CODE_0DBE01:        BD 44 02      LDA $0244,x               ;
CODE_0DBE04:        18            CLC                       ;
CODE_0DBE05:        69 08         ADC #$08                  ;
CODE_0DBE07:        9D 46 02      STA $0246,x               ;
CODE_0DBE0A:        A9 FA         LDA #$FA                  ;
CODE_0DBE0C:        95 AD         STA $AD,x                 ;
CODE_0DBE0E:        60            RTS                       ;

CODE_0DBE0F:        B5 35         LDA $35,x                 ;
CODE_0DBE11:        F0 63         BEQ CODE_0DBE76           ;
CODE_0DBE13:        29 0F         AND #$0F                  ;
CODE_0DBE15:        48            PHA                       ;
CODE_0DBE16:        A8            TAY                       ;
CODE_0DBE17:        8A            TXA                       ;
CODE_0DBE18:        18            CLC                       ;
CODE_0DBE19:        69 0D         ADC #$0D                  ;
CODE_0DBE1B:        AA            TAX                       ;
CODE_0DBE1C:        88            DEY                       ;
CODE_0DBE1D:        F0 36         BEQ CODE_0DBE55           ;
CODE_0DBE1F:        20 46 BF      JSR CODE_0DBF46           ;
CODE_0DBE22:        20 AD BE      JSR CODE_0DBEAD           ;
CODE_0DBE25:        8A            TXA                       ;
CODE_0DBE26:        18            CLC                       ;
CODE_0DBE27:        69 02         ADC #$02                  ;
CODE_0DBE29:        AA            TAX                       ;
CODE_0DBE2A:        20 46 BF      JSR CODE_0DBF46           ;
CODE_0DBE2D:        20 AD BE      JSR CODE_0DBEAD           ;
CODE_0DBE30:        A6 9E         LDX $9E                   ;
CODE_0DBE32:        20 56 FD      JSR CODE_0DFD56           ;
CODE_0DBE35:        20 E7 FD      JSR CODE_0DFDE7           ;
CODE_0DBE38:        20 9C F3      JSR CODE_0DF39C           ;
CODE_0DBE3B:        68            PLA                       ;
CODE_0DBE3C:        B4 C8         LDY $C8,x                 ;
CODE_0DBE3E:        F0 36         BEQ CODE_0DBE76           ;
CODE_0DBE40:        48            PHA                       ;
CODE_0DBE41:        A9 F0         LDA #$F0                  ;
CODE_0DBE43:        DD 46 02      CMP $0246,x               ;
CODE_0DBE46:        B0 03         BCS CODE_0DBE4B           ;
CODE_0DBE48:        9D 46 02      STA $0246,x               ;
CODE_0DBE4B:        BD 44 02      LDA $0244,x               ;
CODE_0DBE4E:        C9 F0         CMP #$F0                  ;
CODE_0DBE50:        68            PLA                       ;
CODE_0DBE51:        90 23         BCC CODE_0DBE76           ;
CODE_0DBE53:        B0 1F         BCS CODE_0DBE74           ;
CODE_0DBE55:        20 46 BF      JSR CODE_0DBF46           ;
CODE_0DBE58:        A6 9E         LDX $9E                   ;
CODE_0DBE5A:        20 56 FD      JSR CODE_0DFD56           ;
CODE_0DBE5D:        20 E7 FD      JSR CODE_0DFDE7           ;
CODE_0DBE60:        20 48 F3      JSR CODE_0DF348           ;
CODE_0DBE63:        68            PLA                       ;
CODE_0DBE64:        95 35         STA $35,x                 ;
CODE_0DBE66:        BD 44 02      LDA $0244,x               ;
CODE_0DBE69:        29 0F         AND #$0F                  ;
CODE_0DBE6B:        C9 05         CMP #$05                  ;
CODE_0DBE6D:        B0 07         BCS CODE_0DBE76           ;
CODE_0DBE6F:        A9 01         LDA #$01                  ;
CODE_0DBE71:        9D EE 03      STA $03EE,x               ;
CODE_0DBE74:        74 35         STZ $35,x                 ;
CODE_0DBE76:        60            RTS                       ;

CODE_0DBE77:        A2 01         LDX #$01                  ;
CODE_0DBE79:        86 9E         STX $9E                   ;
CODE_0DBE7B:        BD EE 03      LDA $03EE,x               ;
CODE_0DBE7E:        F0 1C         BEQ CODE_0DBE9C           ;
CODE_0DBE80:        BD E8 03      LDA $03E8,x               ;
CODE_0DBE83:        85 06         STA $06                   ;
CODE_0DBE85:        A9 05         LDA #$05                  ;
CODE_0DBE87:        85 07         STA $07                   ;
CODE_0DBE89:        BD E6 03      LDA $03E6,x               ;
CODE_0DBE8C:        85 02         STA $02                   ;
CODE_0DBE8E:        A8            TAY                       ;
CODE_0DBE8F:        BD EA 03      LDA $03EA,x               ;
CODE_0DBE92:        91 06         STA ($06),y               ;
CODE_0DBE94:        20 57 90      JSR CODE_0D9057           ;
CODE_0DBE97:        A9 00         LDA #$00                  ;
CODE_0DBE99:        9D EE 03      STA $03EE,x               ;
CODE_0DBE9C:        CA            DEX                       ;
CODE_0DBE9D:        10 DA         BPL CODE_0DBE79           ;
CODE_0DBE9F:        60            RTS                       ;

CODE_0DBEA0:        E8            INX                       ;
CODE_0DBEA1:        20 AD BE      JSR CODE_0DBEAD           ;
CODE_0DBEA4:        A6 9E         LDX $9E                   ;
CODE_0DBEA6:        60            RTS                       ;

CODE_0DBEA7:        AD 0E 07      LDA $070E                 ;
CODE_0DBEAA:        D0 43         BNE CODE_0DBEEF           ;
CODE_0DBEAC:        AA            TAX                       ;
CODE_0DBEAD:        B5 5D         LDA $5D,x                 ;
CODE_0DBEAF:        0A            ASL A                     ;
CODE_0DBEB0:        0A            ASL A                     ;
CODE_0DBEB1:        0A            ASL A                     ;
CODE_0DBEB2:        0A            ASL A                     ;
CODE_0DBEB3:        85 01         STA $01                   ;
CODE_0DBEB5:        B5 5D         LDA $5D,x                 ;
CODE_0DBEB7:        4A            LSR A                     ;
CODE_0DBEB8:        4A            LSR A                     ;
CODE_0DBEB9:        4A            LSR A                     ;
CODE_0DBEBA:        4A            LSR A                     ;
CODE_0DBEBB:        C9 08         CMP #$08                  ;
CODE_0DBEBD:        90 02         BCC CODE_0DBEC1           ;
CODE_0DBEBF:        09 F0         ORA #$F0                  ;
CODE_0DBEC1:        85 00         STA $00                   ;
CODE_0DBEC3:        8D B6 0E      STA $0EB6                 ;
CODE_0DBEC6:        A0 00         LDY #$00                  ;
CODE_0DBEC8:        C9 00         CMP #$00                  ;
CODE_0DBECA:        10 01         BPL CODE_0DBECD           ;
CODE_0DBECC:        88            DEY                       ;
CODE_0DBECD:        84 02         STY $02                   ;
CODE_0DBECF:        BD 01 04      LDA $0401,x               ;
CODE_0DBED2:        18            CLC                       ;
CODE_0DBED3:        65 01         ADC $01                   ;
CODE_0DBED5:        9D 01 04      STA $0401,x               ;
CODE_0DBED8:        A9 00         LDA #$00                  ;
CODE_0DBEDA:        2A            ROL A                     ;
CODE_0DBEDB:        48            PHA                       ;
CODE_0DBEDC:        6A            ROR A                     ;
CODE_0DBEDD:        BD 19 02      LDA $0219,x               ;
CODE_0DBEE0:        65 00         ADC $00                   ;
CODE_0DBEE2:        9D 19 02      STA $0219,x               ;
CODE_0DBEE5:        B5 78         LDA $78,x                 ;
CODE_0DBEE7:        65 02         ADC $02                   ;
CODE_0DBEE9:        95 78         STA $78,x                 ;
CODE_0DBEEB:        68            PLA                       ;
CODE_0DBEEC:        18            CLC                       ;
CODE_0DBEED:        65 00         ADC $00                   ;
CODE_0DBEEF:        60            RTS                       ;

CODE_0DBEF0:        A2 00         LDX #$00                  ;
CODE_0DBEF2:        AD 47 07      LDA $0747                 ;
CODE_0DBEF5:        D0 05         BNE CODE_0DBEFC           ;
CODE_0DBEF7:        AD 0E 07      LDA $070E                 ;
CODE_0DBEFA:        D0 F3         BNE CODE_0DBEEF           ;
CODE_0DBEFC:        AD 09 07      LDA $0709                 ;
CODE_0DBEFF:        85 00         STA $00                   ;
CODE_0DBF01:        A9 04         LDA #$04                  ;
CODE_0DBF03:        4C 4F BF      JMP CODE_0DBF4F           ;

CODE_0DBF06:        A0 3D         LDY #$3D                  ;
CODE_0DBF08:        B5 29         LDA $29,x                 ;
CODE_0DBF0A:        C9 05         CMP #$05                  ;
CODE_0DBF0C:        D0 27         BNE CODE_0DBF35           ;
CODE_0DBF0E:        A0 20         LDY #$20                  ;
CODE_0DBF10:        80 23         BRA CODE_0DBF35           ;

CODE_0DBF12:        A0 00         LDY #$00                  ;
CODE_0DBF14:        80 02         BRA CODE_0DBF18           ;

CODE_0DBF16:        A0 01         LDY #$01                  ;
CODE_0DBF18:        E8            INX                       ;
CODE_0DBF19:        A9 03         LDA #$03                  ;
CODE_0DBF1B:        85 00         STA $00                   ;
CODE_0DBF1D:        A9 06         LDA #$06                  ;
CODE_0DBF1F:        85 01         STA $01                   ;
CODE_0DBF21:        A9 02         LDA #$02                  ;
CODE_0DBF23:        85 02         STA $02                   ;
CODE_0DBF25:        98            TYA                       ;
CODE_0DBF26:        4C 74 BF      JMP CODE_0DBF74           ;

CODE_0DBF29:        A0 7F         LDY #$7F                  ;
CODE_0DBF2B:        D0 02         BNE CODE_0DBF2F           ;
CODE_0DBF2D:        A0 0F         LDY #$0F                  ;
CODE_0DBF2F:        A9 02         LDA #$02                  ;
CODE_0DBF31:        D0 04         BNE CODE_0DBF37           ;
CODE_0DBF33:        A0 1C         LDY #$1C                  ;
CODE_0DBF35:        A9 03         LDA #$03                  ;
CODE_0DBF37:        84 00         STY $00                   ;
CODE_0DBF39:        E8            INX                       ;
CODE_0DBF3A:        20 4F BF      JSR CODE_0DBF4F           ;
CODE_0DBF3D:        A6 9E         LDX $9E                   ;
CODE_0DBF3F:        60            RTS                       ;

DATA_0DBF40:        db $06,$08

CODE_0DBF42:        A0 00         LDY #$00                  ;
CODE_0DBF44:        80 00         BRA CODE_0DBF46           ;

CODE_0DBF46:        A0 01         LDY #$01                  ;
CODE_0DBF48:        A9 50         LDA #$50                  ;
CODE_0DBF4A:        85 00         STA $00                   ;
CODE_0DBF4C:        B9 40 BF      LDA DATA_0DBF40,y               ;
CODE_0DBF4F:        85 02         STA $02                   ;
CODE_0DBF51:        A9 00         LDA #$00                  ;
CODE_0DBF53:        4C 7E BF      JMP CODE_0DBF7E           ;

CODE_0DBF56:        A9 00         LDA #$00                  ;
CODE_0DBF58:        80 02         BRA CODE_0DBF5C           ;

CODE_0DBF5A:        A9 01         LDA #$01                  ;
CODE_0DBF5C:        48            PHA                       ;
CODE_0DBF5D:        B4 1C         LDY $1C,x                 ;
CODE_0DBF5F:        E8            INX                       ;
CODE_0DBF60:        A9 05         LDA #$05                  ;
CODE_0DBF62:        C0 29         CPY #$29                  ;
CODE_0DBF64:        D0 02         BNE CODE_0DBF68           ;
CODE_0DBF66:        A9 09         LDA #$09                  ;
CODE_0DBF68:        85 00         STA $00                   ;
CODE_0DBF6A:        A9 0A         LDA #$0A                  ;
CODE_0DBF6C:        85 01         STA $01                   ;
CODE_0DBF6E:        A9 03         LDA #$03                  ;
CODE_0DBF70:        85 02         STA $02                   ;
CODE_0DBF72:        68            PLA                       ;
CODE_0DBF73:        A8            TAY                       ;
CODE_0DBF74:        20 7E BF      JSR CODE_0DBF7E           ;
CODE_0DBF77:        A6 9E         LDX $9E                   ;
CODE_0DBF79:        60            RTS                       ;

CODE_0DBF7A:        20 7E BF      JSR CODE_0DBF7E           ;
CODE_0DBF7D:        6B            RTL                       ;

CODE_0DBF7E:        48            PHA                       ;
CODE_0DBF7F:        BD 1C 04      LDA $041C,x               ;
CODE_0DBF82:        18            CLC                       ;
CODE_0DBF83:        7D 3C 04      ADC $043C,x               ;
CODE_0DBF86:        9D 1C 04      STA $041C,x               ;
CODE_0DBF89:        A0 00         LDY #$00                  ;
CODE_0DBF8B:        B5 A0         LDA $A0,x                 ;
CODE_0DBF8D:        10 01         BPL CODE_0DBF90           ;
CODE_0DBF8F:        88            DEY                       ;
CODE_0DBF90:        84 07         STY $07                   ;
CODE_0DBF92:        7D 37 02      ADC $0237,x               ;
CODE_0DBF95:        9D 37 02      STA $0237,x               ;
CODE_0DBF98:        B5 BB         LDA $BB,x                 ;
CODE_0DBF9A:        65 07         ADC $07                   ;
CODE_0DBF9C:        95 BB         STA $BB,x                 ;
CODE_0DBF9E:        BD 3C 04      LDA $043C,x               ;
CODE_0DBFA1:        18            CLC                       ;
CODE_0DBFA2:        65 00         ADC $00                   ;
CODE_0DBFA4:        9D 3C 04      STA $043C,x               ;
CODE_0DBFA7:        B5 A0         LDA $A0,x                 ;
CODE_0DBFA9:        69 00         ADC #$00                  ;
CODE_0DBFAB:        95 A0         STA $A0,x                 ;
CODE_0DBFAD:        C5 02         CMP $02                   ;
CODE_0DBFAF:        30 0E         BMI CODE_0DBFBF           ;
CODE_0DBFB1:        BD 3C 04      LDA $043C,x               ;
CODE_0DBFB4:        C9 80         CMP #$80                  ;
CODE_0DBFB6:        90 07         BCC CODE_0DBFBF           ;
CODE_0DBFB8:        A5 02         LDA $02                   ;
CODE_0DBFBA:        95 A0         STA $A0,x                 ;
CODE_0DBFBC:        9E 3C 04      STZ $043C,x               ;
CODE_0DBFBF:        68            PLA                       ;
CODE_0DBFC0:        F0 2A         BEQ CODE_0DBFEC           ;
CODE_0DBFC2:        A5 02         LDA $02                   ;
CODE_0DBFC4:        49 FF         EOR #$FF                  ;
CODE_0DBFC6:        1A            INC A                     ;
CODE_0DBFC7:        85 07         STA $07                   ;
CODE_0DBFC9:        BD 3C 04      LDA $043C,x               ;
CODE_0DBFCC:        38            SEC                       ;
CODE_0DBFCD:        E5 01         SBC $01                   ;
CODE_0DBFCF:        9D 3C 04      STA $043C,x               ;
CODE_0DBFD2:        B5 A0         LDA $A0,x                 ;
CODE_0DBFD4:        E9 00         SBC #$00                  ;
CODE_0DBFD6:        95 A0         STA $A0,x                 ;
CODE_0DBFD8:        C5 07         CMP $07                   ;
CODE_0DBFDA:        10 10         BPL CODE_0DBFEC           ;
CODE_0DBFDC:        BD 3C 04      LDA $043C,x               ;
CODE_0DBFDF:        C9 80         CMP #$80                  ;
CODE_0DBFE1:        B0 09         BCS CODE_0DBFEC           ;
CODE_0DBFE3:        A5 07         LDA $07                   ;
CODE_0DBFE5:        95 A0         STA $A0,x                 ;
CODE_0DBFE7:        A9 FF         LDA #$FF                  ;
CODE_0DBFE9:        9D 3C 04      STA $043C,x               ;
CODE_0DBFEC:        60            RTS                       ;

CODE_0DBFED:        BD 9D 0E      LDA $0E9D,x               ;
CODE_0DBFF0:        F0 62         BEQ CODE_0DC054           ;
CODE_0DBFF2:        FE A2 0E      INC $0EA2,x               ;
CODE_0DBFF5:        BD A2 0E      LDA $0EA2,x               ;
CODE_0DBFF8:        4A            LSR A                     ;
CODE_0DBFF9:        4A            LSR A                     ;
CODE_0DBFFA:        4A            LSR A                     ;
CODE_0DBFFB:        C9 03         CMP #$03                  ;
CODE_0DBFFD:        F0 56         BEQ CODE_0DC055           ;
CODE_0DBFFF:        0A            ASL A                     ;
CODE_0DC000:        18            CLC                       ;
CODE_0DC001:        69 40         ADC #$40                  ;
CODE_0DC003:        85 E4         STA $E4                   ;
CODE_0DC005:        BD AC 0E      LDA $0EAC,x               ;
CODE_0DC008:        85 E5         STA $E5                   ;
CODE_0DC00A:        BD A7 0E      LDA $0EA7,x               ;
CODE_0DC00D:        85 E6         STA $E6                   ;
CODE_0DC00F:        C2 20         REP #$20                  ;
CODE_0DC011:        A5 E5         LDA $E5                   ;
CODE_0DC013:        38            SEC                       ;
CODE_0DC014:        E5 42         SBC $42                   ;
CODE_0DC016:        48            PHA                       ;
CODE_0DC017:        AD B5 0E      LDA $0EB5                 ;
CODE_0DC01A:        30 07         BMI CODE_0DC023           ;
CODE_0DC01C:        68            PLA                       ;
CODE_0DC01D:        18            CLC                       ;
CODE_0DC01E:        69 0C 00      ADC #$000C                ;
CODE_0DC021:        80 05         BRA CODE_0DC028           ;

CODE_0DC023:        68            PLA                       ;
CODE_0DC024:        38            SEC                       ;
CODE_0DC025:        E9 0C 00      SBC #$000C                ;
CODE_0DC028:        85 E5         STA $E5                   ;
CODE_0DC02A:        E2 20         SEP #$20                  ;
CODE_0DC02C:        5A            PHY                       ;
CODE_0DC02D:        BC 46 0B      LDY $0B46,x               ;
CODE_0DC030:        A5 E5         LDA $E5                   ;
CODE_0DC032:        99 00 09      STA $0900,y               ;
CODE_0DC035:        BD B1 0E      LDA $0EB1,x               ;
CODE_0DC038:        99 01 09      STA $0901,y               ;
CODE_0DC03B:        A5 E4         LDA $E4                   ;
CODE_0DC03D:        99 02 09      STA $0902,y               ;
CODE_0DC040:        A9 2D         LDA #$2D                  ;
CODE_0DC042:        99 03 09      STA $0903,y               ;
CODE_0DC045:        A9 02         LDA #$02                  ;
CODE_0DC047:        99 00 0D      STA $0D00,y               ;
CODE_0DC04A:        A5 E6         LDA $E6                   ;
CODE_0DC04C:        F0 05         BEQ CODE_0DC053           ;
CODE_0DC04E:        A9 03         LDA #$03                  ;
CODE_0DC050:        99 00 0D      STA $0D00,y               ;
CODE_0DC053:        7A            PLY                       ;
CODE_0DC054:        60            RTS                       ;

CODE_0DC055:        9E 9D 0E      STZ $0E9D,x               ;
CODE_0DC058:        8A            TXA                       ;
CODE_0DC059:        0A            ASL A                     ;
CODE_0DC05A:        0A            ASL A                     ;
CODE_0DC05B:        0A            ASL A                     ;
CODE_0DC05C:        85 E8         STA $E8                   ;
CODE_0DC05E:        0A            ASL A                     ;
CODE_0DC05F:        18            CLC                       ;
CODE_0DC060:        65 E8         ADC $E8                   ;
CODE_0DC062:        DA            PHX                       ;
CODE_0DC063:        AA            TAX                       ;
CODE_0DC064:        A9 F0         LDA #$F0                  ;
CODE_0DC066:        9D 01 09      STA $0901,x               ;
CODE_0DC069:        9E 00 0D      STZ $0D00,x               ;
CODE_0DC06C:        FA            PLX                       ;
CODE_0DC06D:        60            RTS                       ;

CODE_0DC06E:        9D 9D 0E      STA $0E9D,x               ;
CODE_0DC071:        9E A2 0E      STZ $0EA2,x               ;
CODE_0DC074:        BD 1A 02      LDA $021A,x               ;
CODE_0DC077:        9D AC 0E      STA $0EAC,x               ;
CODE_0DC07A:        B5 79         LDA $79,x                 ;
CODE_0DC07C:        9D A7 0E      STA $0EA7,x               ;
CODE_0DC07F:        BD 38 02      LDA $0238,x               ;
CODE_0DC082:        18            CLC                       ;
CODE_0DC083:        69 08         ADC #$08                  ;
CODE_0DC085:        9D B1 0E      STA $0EB1,x               ;
CODE_0DC088:        60            RTS                       ;

CODE_0DC089:        AD 7F 0E      LDA $0E7F                 ;
CODE_0DC08C:        4A            LSR A                     ;
CODE_0DC08D:        90 45         BCC CODE_0DC0D4           ;
CODE_0DC08F:        AD 01 12      LDA $1201                 ;
CODE_0DC092:        30 36         BMI CODE_0DC0CA           ;
CODE_0DC094:        CE 01 12      DEC $1201                 ;
CODE_0DC097:        D0 67         BNE CODE_0DC100           ;
CODE_0DC099:        A9 80         LDA #$80                  ;
CODE_0DC09B:        8D 00 21      STA $2100                 ;
CODE_0DC09E:        8D 01 12      STA $1201                 ;
CODE_0DC0A1:        9C 0C 42      STZ $420C                 ;
CODE_0DC0A4:        9C 03 12      STZ $1203                 ;
CODE_0DC0A7:        9C 75 0B      STZ $0B75                 ;
CODE_0DC0AA:        9C 80 16      STZ $1680                 ;
CODE_0DC0AD:        AF F2 1F 70   LDA $701FF2               ;
CODE_0DC0B1:        F0 0D         BEQ CODE_0DC0C0           ;
CODE_0DC0B3:        AD C8 0E      LDA $0EC8                 ;
CODE_0DC0B6:        D0 04         BNE CODE_0DC0BC           ;
CODE_0DC0B8:        5C 39 81 00   JML CODE_008139           ;

CODE_0DC0BC:        5C DE 80 00   JML CODE_0080DE           ;

CODE_0DC0C0:        22 00 80 04   JSL CODE_048000           ;
CODE_0DC0C4:        20 24 C1      JSR CODE_0DC124           ;
CODE_0DC0C7:        20 4F C1      JSR CODE_0DC14F           ;
CODE_0DC0CA:        9C 7F 0E      STZ $0E7F                 ;
CODE_0DC0CD:        A9 01         LDA #$01                  ;
CODE_0DC0CF:        8D 74 07      STA $0774                 ;
CODE_0DC0D2:        80 2C         BRA CODE_0DC100           ;

CODE_0DC0D4:        AD 66 0E      LDA $0E66                 ;
CODE_0DC0D7:        D0 0B         BNE CODE_0DC0E4           ;
CODE_0DC0D9:        A5 0E         LDA $0E                   ;
CODE_0DC0DB:        D0 07         BNE CODE_0DC0E4           ;
CODE_0DC0DD:        A9 01         LDA #$01                  ;
CODE_0DC0DF:        85 0E         STA $0E                   ;
CODE_0DC0E1:        20 99 AB      JSR CODE_0DAB99           ;
CODE_0DC0E4:        9C 67 0E      STZ $0E67                 ;
CODE_0DC0E7:        AD 01 12      LDA $1201                 ;
CODE_0DC0EA:        C9 0F         CMP #$0F                  ;
CODE_0DC0EC:        F0 0A         BEQ CODE_0DC0F8           ;
CODE_0DC0EE:        EE 01 12      INC $1201                 ;
CODE_0DC0F1:        AD 01 12      LDA $1201                 ;
CODE_0DC0F4:        C9 0F         CMP #$0F                  ;
CODE_0DC0F6:        D0 08         BNE CODE_0DC100           ;
CODE_0DC0F8:        9C 7F 0E      STZ $0E7F                 ;
CODE_0DC0FB:        9C 74 07      STZ $0774                 ;
CODE_0DC0FE:        64 0E         STZ $0E                   ;
CODE_0DC100:        AD 4F 0E      LDA $0E4F                 ;
CODE_0DC103:        F0 1E         BEQ CODE_0DC123           ;
CODE_0DC105:        20 24 C1      JSR CODE_0DC124           ;
CODE_0DC108:        AD 01 12      LDA $1201                 ;
CODE_0DC10B:        49 0F         EOR #$0F                  ;
CODE_0DC10D:        0A            ASL A                     ;
CODE_0DC10E:        0A            ASL A                     ;
CODE_0DC10F:        0A            ASL A                     ;
CODE_0DC110:        0A            ASL A                     ;
CODE_0DC111:        09 0F         ORA #$0F                  ;
CODE_0DC113:        8D 7E 0E      STA $0E7E                 ;
CODE_0DC116:        20 3D C1      JSR CODE_0DC13D           ;
CODE_0DC119:        AD 01 12      LDA $1201                 ;
CODE_0DC11C:        C9 0F         CMP #$0F                  ;
CODE_0DC11E:        D0 03         BNE CODE_0DC123           ;
CODE_0DC120:        9C 4F 0E      STZ $0E4F                 ;
CODE_0DC123:        60            RTS                       ;

CODE_0DC124:        DA            PHX                       ;
CODE_0DC125:        A2 00         LDX #$00                  ;
CODE_0DC127:        A9 F0         LDA #$F0                  ;
CODE_0DC129:        9D 01 08      STA $0801,x               ;
CODE_0DC12C:        9D 01 09      STA $0901,x               ;
CODE_0DC12F:        9E 00 0C      STZ $0C00,x               ;
CODE_0DC132:        9E 00 0D      STZ $0D00,x               ;
CODE_0DC135:        E8            INX                       ;
CODE_0DC136:        E8            INX                       ;
CODE_0DC137:        E8            INX                       ;
CODE_0DC138:        E8            INX                       ;
CODE_0DC139:        D0 EE         BNE CODE_0DC129           ;
CODE_0DC13B:        FA            PLX                       ;
CODE_0DC13C:        60            RTS                       ;

CODE_0DC13D:        5A            PHY                       ;
CODE_0DC13E:        A0 D0         LDY #$D0                  ;
CODE_0DC140:        A9 F0         LDA #$F0                  ;
CODE_0DC142:        99 01 08      STA $0801,y               ;
CODE_0DC145:        C8            INY                       ;
CODE_0DC146:        C8            INY                       ;
CODE_0DC147:        C8            INY                       ;
CODE_0DC148:        C8            INY                       ;
CODE_0DC149:        C0 F0         CPY #$F0                  ;
CODE_0DC14B:        D0 F5         BNE CODE_0DC142           ;
CODE_0DC14D:        7A            PLY                       ;
CODE_0DC14E:        60            RTS                       ;

CODE_0DC14F:        22 2E D5 00   JSL CODE_00D52E           ;
CODE_0DC153:        9C A5 0B      STZ $0BA5                 ;
CODE_0DC156:        9C 06 0F      STZ $0F06                 ;
CODE_0DC159:        9C C4 0E      STZ $0EC4                 ;
CODE_0DC15C:        AD 5F 07      LDA $075F                 ;
CODE_0DC15F:        C9 07         CMP #$07                  ;
CODE_0DC161:        F0 04         BEQ CODE_0DC167           ;
CODE_0DC163:        C9 0C         CMP #$0C                  ;
CODE_0DC165:        D0 05         BNE CODE_0DC16C           ;
CODE_0DC167:        A9 01         LDA #$01                  ;
CODE_0DC169:        8D C4 0E      STA $0EC4                 ;
CODE_0DC16C:        9C D1 0E      STZ $0ED1                 ;
CODE_0DC16F:        9C 40 0E      STZ $0E40                 ;
CODE_0DC172:        9C 41 0E      STZ $0E41                 ;
CODE_0DC175:        9C 42 0E      STZ $0E42                 ;
CODE_0DC178:        9C DC 0E      STZ $0EDC                 ;
CODE_0DC17B:        9C CF 0E      STZ $0ECF                 ;
CODE_0DC17E:        A9 01         LDA #$01                  ;
CODE_0DC180:        8D CE 0E      STA $0ECE                 ;
CODE_0DC183:        AD 66 0E      LDA $0E66                 ;
CODE_0DC186:        D0 0E         BNE CODE_0DC196           ;
CODE_0DC188:        AD 37 02      LDA $0237                 ;
CODE_0DC18B:        8D B8 03      STA $03B8                 ;
CODE_0DC18E:        AD 19 02      LDA $0219                 ;
CODE_0DC191:        8D AD 03      STA $03AD                 ;
CODE_0DC194:        80 03         BRA CODE_0DC199           ;

CODE_0DC196:        9C 66 0E      STZ $0E66                 ;
CODE_0DC199:        64 0E         STZ $0E                   ;
CODE_0DC19B:        60            RTS                       ;

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

CODE_0DC250:        34 10         BIT $10,x                 ;
CODE_0DC252:        30 13         BMI CODE_0DC267           ;
CODE_0DC254:        B5 10         LDA $10,x                 ;
CODE_0DC256:        F0 03         BEQ CODE_0DC25B           ;
CODE_0DC258:        4C B0 CB      JMP CODE_0DCBB0           ;

CODE_0DC25B:        AD 1F 07      LDA $071F                 ;
CODE_0DC25E:        29 07         AND #$07                  ;
CODE_0DC260:        C9 07         CMP #$07                  ;
CODE_0DC262:        F0 0F         BEQ CODE_0DC273           ;
CODE_0DC264:        4C E9 C2      JMP CODE_0DC2E9           ;

CODE_0DC267:        B5 10         LDA $10,x                 ;
CODE_0DC269:        29 0F         AND #$0F                  ;
CODE_0DC26B:        A8            TAY                       ;
CODE_0DC26C:        B9 10 00      LDA $0010,y               ;
CODE_0DC26F:        D0 02         BNE CODE_0DC273           ;
CODE_0DC271:        95 10         STA $10,x                 ;
CODE_0DC273:        60            RTS                       ;

DATA_0DC274:        db $02,$02,$02,$02,$05,$05,$05,$05 ;
                    db $06,$07,$07,$04 ;

DATA_0DC280:        db $03,$05,$08,$09,$03,$06,$07,$0A ;
                    db $05,$05,$0B,$05 ;

DATA_0DC28C:        db $B0,$B0,$40,$30,$B0,$30,$B0,$B0 ;
                    db $F0,$F0,$B0,$F0 ;

DATA_0DC298:        db $02,$02,$02,$02,$02,$02,$02,$02 ;
                    db $01,$01,$01,$01 ;

CODE_0DC2A4:        A5 78         LDA $78                   ;
CODE_0DC2A6:        38            SEC                       ;
CODE_0DC2A7:        E9 04         SBC #$04                  ;
CODE_0DC2A9:        85 78         STA $78                   ;
CODE_0DC2AB:        AD 25 07      LDA $0725                 ;
CODE_0DC2AE:        38            SEC                       ;
CODE_0DC2AF:        E9 04         SBC #$04                  ;
CODE_0DC2B1:        8D 25 07      STA $0725                 ;
CODE_0DC2B4:        AD 1A 07      LDA $071A                 ;
CODE_0DC2B7:        38            SEC                       ;
CODE_0DC2B8:        E9 04         SBC #$04                  ;
CODE_0DC2BA:        8D 1A 07      STA $071A                 ;
CODE_0DC2BD:        AD 1B 07      LDA $071B                 ;
CODE_0DC2C0:        38            SEC                       ;
CODE_0DC2C1:        E9 04         SBC #$04                  ;
CODE_0DC2C3:        8D 1B 07      STA $071B                 ;
CODE_0DC2C6:        AD 2A 07      LDA $072A                 ;
CODE_0DC2C9:        38            SEC                       ;
CODE_0DC2CA:        E9 04         SBC #$04                  ;
CODE_0DC2CC:        8D 2A 07      STA $072A                 ;
CODE_0DC2CF:        9C 3B 07      STZ $073B                 ;
CODE_0DC2D2:        9C 2B 07      STZ $072B                 ;
CODE_0DC2D5:        9C 39 07      STZ $0739                 ;
CODE_0DC2D8:        9C 3A 07      STZ $073A                 ;
CODE_0DC2DB:        DA            PHX                       ;
CODE_0DC2DC:        BB            TYX                       ;
CODE_0DC2DD:        BF E0 C4 0E   LDA.l DATA_0EC4E0,x             ;
CODE_0DC2E1:        8D 2C 07      STA $072C                 ;
CODE_0DC2E4:        9C DB 0E      STZ $0EDB                 ;
CODE_0DC2E7:        FA            PLX                       ;
CODE_0DC2E8:        60            RTS                       ;

CODE_0DC2E9:        AD 45 07      LDA $0745                 ;
CODE_0DC2EC:        F0 66         BEQ CODE_0DC354           ;
CODE_0DC2EE:        AD 26 07      LDA $0726                 ;
CODE_0DC2F1:        D0 61         BNE CODE_0DC354           ;
CODE_0DC2F3:        A0 0C         LDY #$0C                  ;
CODE_0DC2F5:        88            DEY                       ;
CODE_0DC2F6:        30 5C         BMI CODE_0DC354           ;
CODE_0DC2F8:        AD 5F 07      LDA $075F                 ;
CODE_0DC2FB:        D9 74 C2      CMP DATA_0DC274,y               ;
CODE_0DC2FE:        D0 F5         BNE CODE_0DC2F5           ;
CODE_0DC300:        AD 25 07      LDA $0725                 ;
CODE_0DC303:        D9 80 C2      CMP DATA_0DC280,y               ;
CODE_0DC306:        D0 ED         BNE CODE_0DC2F5           ;
CODE_0DC308:        AD 37 02      LDA $0237                 ;
CODE_0DC30B:        D9 8C C2      CMP DATA_0DC28C,y               ;
CODE_0DC30E:        D0 15         BNE CODE_0DC325           ;
CODE_0DC310:        A5 28         LDA $28                   ;
CODE_0DC312:        C9 00         CMP #$00                  ;
CODE_0DC314:        D0 0F         BNE CODE_0DC325           ;
CODE_0DC316:        EE D9 06      INC $06D9                 ;
CODE_0DC319:        AD DB 0E      LDA $0EDB                 ;
CODE_0DC31C:        D0 14         BNE CODE_0DC332           ;
CODE_0DC31E:        A9 29         LDA #$29                  ;
CODE_0DC320:        8D 03 16      STA $1603                 ;
CODE_0DC323:        80 0D         BRA CODE_0DC332           ;

CODE_0DC325:        AD DB 0E      LDA $0EDB                 ;
CODE_0DC328:        D0 08         BNE CODE_0DC332           ;
CODE_0DC32A:        A9 2A         LDA #$2A                  ;
CODE_0DC32C:        8D 03 16      STA $1603                 ;
CODE_0DC32F:        8D DB 0E      STA $0EDB                 ;
CODE_0DC332:        EE DA 06      INC $06DA                 ;
CODE_0DC335:        AD DA 06      LDA $06DA                 ;
CODE_0DC338:        D9 98 C2      CMP DATA_0DC298,y               ;
CODE_0DC33B:        D0 14         BNE CODE_0DC351           ;
CODE_0DC33D:        AD D9 06      LDA $06D9                 ;
CODE_0DC340:        D9 98 C2      CMP DATA_0DC298,y               ;
CODE_0DC343:        F0 06         BEQ CODE_0DC34B           ;
CODE_0DC345:        20 A4 C2      JSR CODE_0DC2A4           ;
CODE_0DC348:        20 62 D4      JSR CODE_0DD462           ;
CODE_0DC34B:        9C DA 06      STZ $06DA                 ;
CODE_0DC34E:        9C D9 06      STZ $06D9                 ;
CODE_0DC351:        9C 45 07      STZ $0745                 ;
CODE_0DC354:        AD CD 06      LDA $06CD                 ;
CODE_0DC357:        F0 0E         BEQ CODE_0DC367           ;
CODE_0DC359:        95 1C         STA $1C,x                 ;
CODE_0DC35B:        A9 01         LDA #$01                  ;
CODE_0DC35D:        95 10         STA $10,x                 ;
CODE_0DC35F:        74 29         STZ $29,x                 ;
CODE_0DC361:        9C CD 06      STZ $06CD                 ;
CODE_0DC364:        4C 61 C4      JMP CODE_0DC461           ;

CODE_0DC367:        AC 39 07      LDY $0739                 ;
CODE_0DC36A:        B7 FD         LDA [$FD],y               ;
CODE_0DC36C:        C9 FF         CMP #$FF                  ;
CODE_0DC36E:        D0 03         BNE CODE_0DC373           ;
CODE_0DC370:        4C 4D C4      JMP CODE_0DC44D           ;

CODE_0DC373:        29 0F         AND #$0F                  ;
CODE_0DC375:        C9 0E         CMP #$0E                  ;
CODE_0DC377:        F0 0E         BEQ CODE_0DC387           ;
CODE_0DC379:        E0 05         CPX #$05                  ;
CODE_0DC37B:        90 0A         BCC CODE_0DC387           ;
CODE_0DC37D:        C8            INY                       ;
CODE_0DC37E:        B7 FD         LDA [$FD],y               ;
CODE_0DC380:        29 3F         AND #$3F                  ;
CODE_0DC382:        C9 2E         CMP #$2E                  ;
CODE_0DC384:        F0 01         BEQ CODE_0DC387           ;
CODE_0DC386:        60            RTS                       ;

CODE_0DC387:        AD 1D 07      LDA $071D                 ;
CODE_0DC38A:        18            CLC                       ;
CODE_0DC38B:        69 30         ADC #$30                  ;
CODE_0DC38D:        29 F0         AND #$F0                  ;
CODE_0DC38F:        85 07         STA $07                   ;
CODE_0DC391:        AD 1B 07      LDA $071B                 ;
CODE_0DC394:        69 00         ADC #$00                  ;
CODE_0DC396:        85 06         STA $06                   ;
CODE_0DC398:        AC 39 07      LDY $0739                 ;
CODE_0DC39B:        C8            INY                       ;
CODE_0DC39C:        B7 FD         LDA [$FD],y               ;
CODE_0DC39E:        0A            ASL A                     ;
CODE_0DC39F:        90 0B         BCC CODE_0DC3AC           ;
CODE_0DC3A1:        AD 3B 07      LDA $073B                 ;
CODE_0DC3A4:        D0 06         BNE CODE_0DC3AC           ;
CODE_0DC3A6:        EE 3B 07      INC $073B                 ;
CODE_0DC3A9:        EE 3A 07      INC $073A                 ;
CODE_0DC3AC:        88            DEY                       ;
CODE_0DC3AD:        B7 FD         LDA [$FD],y               ;
CODE_0DC3AF:        29 0F         AND #$0F                  ;
CODE_0DC3B1:        C9 0F         CMP #$0F                  ;
CODE_0DC3B3:        D0 19         BNE CODE_0DC3CE           ;
CODE_0DC3B5:        AD 3B 07      LDA $073B                 ;
CODE_0DC3B8:        D0 14         BNE CODE_0DC3CE           ;
CODE_0DC3BA:        C8            INY                       ;
CODE_0DC3BB:        B7 FD         LDA [$FD],y               ;
CODE_0DC3BD:        29 3F         AND #$3F                  ;
CODE_0DC3BF:        8D 3A 07      STA $073A                 ;
CODE_0DC3C2:        EE 39 07      INC $0739                 ;
CODE_0DC3C5:        EE 39 07      INC $0739                 ;
CODE_0DC3C8:        EE 3B 07      INC $073B                 ;
CODE_0DC3CB:        4C E9 C2      JMP CODE_0DC2E9           ;

CODE_0DC3CE:        AD 3A 07      LDA $073A                 ;
CODE_0DC3D1:        95 79         STA $79,x                 ;
CODE_0DC3D3:        B7 FD         LDA [$FD],y               ;
CODE_0DC3D5:        29 F0         AND #$F0                  ;
CODE_0DC3D7:        9D 1A 02      STA $021A,x               ;
CODE_0DC3DA:        CD 1D 07      CMP $071D                 ;
CODE_0DC3DD:        B5 79         LDA $79,x                 ;
CODE_0DC3DF:        ED 1B 07      SBC $071B                 ;
CODE_0DC3E2:        B0 0B         BCS CODE_0DC3EF           ;
CODE_0DC3E4:        B7 FD         LDA [$FD],y               ;
CODE_0DC3E6:        29 0F         AND #$0F                  ;
CODE_0DC3E8:        C9 0E         CMP #$0E                  ;
CODE_0DC3EA:        F0 7E         BEQ CODE_0DC46A           ;
CODE_0DC3EC:        4C 8D C4      JMP CODE_0DC48D           ;

CODE_0DC3EF:        A5 07         LDA $07                   ;
CODE_0DC3F1:        DD 1A 02      CMP $021A,x               ;
CODE_0DC3F4:        A5 06         LDA $06                   ;
CODE_0DC3F6:        F5 79         SBC $79,x                 ;
CODE_0DC3F8:        90 53         BCC CODE_0DC44D           ;
CODE_0DC3FA:        A9 01         LDA #$01                  ;
CODE_0DC3FC:        95 BC         STA $BC,x                 ;
CODE_0DC3FE:        B7 FD         LDA [$FD],y               ;
CODE_0DC400:        0A            ASL A                     ;
CODE_0DC401:        0A            ASL A                     ;
CODE_0DC402:        0A            ASL A                     ;
CODE_0DC403:        0A            ASL A                     ;
CODE_0DC404:        9D 38 02      STA $0238,x               ;
CODE_0DC407:        C9 E0         CMP #$E0                  ;
CODE_0DC409:        F0 5F         BEQ CODE_0DC46A           ;
CODE_0DC40B:        C8            INY                       ;
CODE_0DC40C:        B7 FD         LDA [$FD],y               ;
CODE_0DC40E:        29 40         AND #$40                  ;
CODE_0DC410:        F0 08         BEQ CODE_0DC41A           ;
CODE_0DC412:        AD CC 06      LDA $06CC                 ;
CODE_0DC415:        D0 03         BNE CODE_0DC41A           ;
CODE_0DC417:        4C 9B C4      JMP CODE_0DC49B           ;

CODE_0DC41A:        B7 FD         LDA [$FD],y               ;
CODE_0DC41C:        29 3F         AND #$3F                  ;
CODE_0DC41E:        C9 37         CMP #$37                  ;
CODE_0DC420:        90 04         BCC CODE_0DC426           ;
CODE_0DC422:        C9 3F         CMP #$3F                  ;
CODE_0DC424:        90 41         BCC CODE_0DC467           ;
CODE_0DC426:        C9 06         CMP #$06                  ;
CODE_0DC428:        D0 07         BNE CODE_0DC431           ;
CODE_0DC42A:        AC 6A 07      LDY $076A                 ;
CODE_0DC42D:        F0 02         BEQ CODE_0DC431           ;
CODE_0DC42F:        A9 02         LDA #$02                  ;
CODE_0DC431:        C9 2D         CMP #$2D                  ;
CODE_0DC433:        D0 03         BNE CODE_0DC438           ;
CODE_0DC435:        20 63 DB      JSR CODE_0DDB63           ;
CODE_0DC438:        C9 35         CMP #$35                  ;
CODE_0DC43A:        D0 03         BNE CODE_0DC43F           ;
CODE_0DC43C:        9C 4A 0F      STZ $0F4A                 ;
CODE_0DC43F:        95 1C         STA $1C,x                 ;
CODE_0DC441:        A9 01         LDA #$01                  ;
CODE_0DC443:        95 10         STA $10,x                 ;
CODE_0DC445:        20 61 C4      JSR CODE_0DC461           ;
CODE_0DC448:        B5 10         LDA $10,x                 ;
CODE_0DC44A:        D0 4F         BNE CODE_0DC49B           ;
CODE_0DC44C:        60            RTS                       ;

CODE_0DC44D:        AD CB 06      LDA $06CB                 ;
CODE_0DC450:        D0 09         BNE CODE_0DC45B           ;
CODE_0DC452:        AD 98 03      LDA $0398                 ;
CODE_0DC455:        C9 01         CMP #$01                  ;
CODE_0DC457:        D0 0D         BNE CODE_0DC466           ;
CODE_0DC459:        A9 00         LDA #$00                  ;
CODE_0DC45B:        E0 09         CPX #$09                  ;
CODE_0DC45D:        F0 02         BEQ CODE_0DC461           ;
CODE_0DC45F:        95 1C         STA $1C,x                 ;
CODE_0DC461:        74 29         STZ $29,x                 ;
CODE_0DC463:        20 B9 C4      JSR CODE_0DC4B9           ;
CODE_0DC466:        60            RTS                       ;

CODE_0DC467:        4C 0B CA      JMP CODE_0DCA0B           ;

CODE_0DC46A:        C8            INY                       ;
CODE_0DC46B:        C8            INY                       ;
CODE_0DC46C:        AD 5F 07      LDA $075F                 ;
CODE_0DC46F:        C9 08         CMP #$08                  ;
CODE_0DC471:        F0 0A         BEQ CODE_0DC47D           ;
CODE_0DC473:        B7 FD         LDA [$FD],y               ;
CODE_0DC475:        20 A7 C4      JSR CODE_0DC4A7           ;
CODE_0DC478:        CD 5F 07      CMP $075F                 ;
CODE_0DC47B:        D0 0E         BNE CODE_0DC48B           ;
CODE_0DC47D:        88            DEY                       ;
CODE_0DC47E:        B7 FD         LDA [$FD],y               ;
CODE_0DC480:        8D 50 07      STA $0750                 ;
CODE_0DC483:        C8            INY                       ;
CODE_0DC484:        B7 FD         LDA [$FD],y               ;
CODE_0DC486:        29 1F         AND #$1F                  ;
CODE_0DC488:        8D 51 07      STA $0751                 ;
CODE_0DC48B:        80 0B         BRA CODE_0DC498           ;

CODE_0DC48D:        AC 39 07      LDY $0739                 ;
CODE_0DC490:        B7 FD         LDA [$FD],y               ;
CODE_0DC492:        29 0F         AND #$0F                  ;
CODE_0DC494:        C9 0E         CMP #$0E                  ;
CODE_0DC496:        D0 03         BNE CODE_0DC49B           ;
CODE_0DC498:        EE 39 07      INC $0739                 ;
CODE_0DC49B:        EE 39 07      INC $0739                 ;
CODE_0DC49E:        EE 39 07      INC $0739                 ;
CODE_0DC4A1:        9C 3B 07      STZ $073B                 ;
CODE_0DC4A4:        A6 9E         LDX $9E                   ;
CODE_0DC4A6:        60            RTS                       ;

CODE_0DC4A7:        4A            LSR A                     ;
CODE_0DC4A8:        4A            LSR A                     ;
CODE_0DC4A9:        4A            LSR A                     ;
CODE_0DC4AA:        4A            LSR A                     ;
CODE_0DC4AB:        4A            LSR A                     ;
CODE_0DC4AC:        48            PHA                       ;
CODE_0DC4AD:        AD FB 07      LDA $07FB                 ;
CODE_0DC4B0:        F0 05         BEQ CODE_0DC4B7           ;
CODE_0DC4B2:        68            PLA                       ;
CODE_0DC4B3:        18            CLC                       ;
CODE_0DC4B4:        69 09         ADC #$09                  ;
CODE_0DC4B6:        48            PHA                       ;
CODE_0DC4B7:        68            PLA                       ;
CODE_0DC4B8:        60            RTS                       ;

CODE_0DC4B9:        B5 1C         LDA $1C,x                 ;
CODE_0DC4BB:        C9 15         CMP #$15                  ;
CODE_0DC4BD:        B0 0F         BCS CODE_0DC4CE           ;
CODE_0DC4BF:        A8            TAY                       ;
CODE_0DC4C0:        BD 38 02      LDA $0238,x               ;
CODE_0DC4C3:        69 08         ADC #$08                  ;
CODE_0DC4C5:        9D 38 02      STA $0238,x               ;
CODE_0DC4C8:        A9 01         LDA #$01                  ;
CODE_0DC4CA:        9D D9 03      STA $03D9,x               ;
CODE_0DC4CD:        98            TYA                       ;
CODE_0DC4CE:        0A            ASL A                     ;
CODE_0DC4CF:        A8            TAY                       ;
CODE_0DC4D0:        B9 DD C4      LDA PNTR_0DC4DD,y               ;
CODE_0DC4D3:        85 04         STA $04                   ;
CODE_0DC4D5:        B9 DE C4      LDA PNTR_0DC4DD+1,y               ;
CODE_0DC4D8:        85 05         STA $05                   ;
CODE_0DC4DA:        6C 04 00      JMP ($0004)               ;

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

CODE_0DC54B:        60            RTS                       ;

CODE_0DC54C:        20 87 C5      JSR CODE_0DC587           ;
CODE_0DC54F:        4C C2 C5      JMP CODE_0DC5C2           ;

CODE_0DC552:        A9 D0         LDA #$D0                  ;
CODE_0DC554:        9D 38 02      STA $0238,x               ;
CODE_0DC557:        A9 01         LDA #$01                  ;
CODE_0DC559:        95 BC         STA $BC,x                 ;
CODE_0DC55B:        9D A2 07      STA $07A2,x               ;
CODE_0DC55E:        74 29         STZ $29,x                 ;
CODE_0DC560:        9D 00 0B      STA $0B00,x               ;
CODE_0DC563:        9E 09 0B      STZ $0B09,x               ;
CODE_0DC566:        A9 27         LDA #$27                  ;
CODE_0DC568:        8D 03 16      STA $1603                 ;
CODE_0DC56B:        4C C2 C5      JMP CODE_0DC5C2           ;

CODE_0DC56E:        AD 5F 07      LDA $075F                 ;
CODE_0DC571:        C9 07         CMP #$07                  ;
CODE_0DC573:        F0 0A         BEQ CODE_0DC57F           ;
CODE_0DC575:        C9 0C         CMP #$0C                  ;
CODE_0DC577:        F0 06         BEQ CODE_0DC57F           ;
CODE_0DC579:        A9 B8         LDA #$B8                  ;
CODE_0DC57B:        9D 38 02      STA $0238,x               ;
CODE_0DC57E:        60            RTS                       ;

CODE_0DC57F:        A9 70         LDA #$70                  ;
CODE_0DC581:        9D 38 02      STA $0238,x               ;
CODE_0DC584:        60            RTS                       ;

DATA_0DC585:        db $F8,$F4

CODE_0DC587:        A0 01         LDY #$01                  ;
CODE_0DC589:        AD 6A 07      LDA $076A                 ;
CODE_0DC58C:        D0 01         BNE CODE_0DC58F           ;
CODE_0DC58E:        88            DEY                       ;
CODE_0DC58F:        B9 85 C5      LDA DATA_0DC585,y               ;
CODE_0DC592:        95 5E         STA $5E,x                 ;
CODE_0DC594:        4C D8 C5      JMP CODE_0DC5D8           ;

CODE_0DC597:        20 87 C5      JSR CODE_0DC587           ;
CODE_0DC59A:        A9 01         LDA #$01                  ;
CODE_0DC59C:        95 29         STA $29,x                 ;
CODE_0DC59E:        60            RTS                       ;

DATA_0DC59F:        db $80,$50

CODE_0DC5A1:        9E A2 03      STZ $03A2,x               ;
CODE_0DC5A4:        74 5E         STZ $5E,x                 ;
CODE_0DC5A6:        AD 5F 07      LDA $075F                 ;
CODE_0DC5A9:        C9 06         CMP #$06                  ;
CODE_0DC5AB:        B0 09         BCS CODE_0DC5B6           ;
CODE_0DC5AD:        AC CC 06      LDY $06CC                 ;
CODE_0DC5B0:        B9 9F C5      LDA DATA_0DC59F,y               ;
CODE_0DC5B3:        9D A2 07      STA $07A2,x               ;
CODE_0DC5B6:        A9 0B         LDA #$0B                  ;
CODE_0DC5B8:        4C DA C5      JMP CODE_0DC5DA           ;

CODE_0DC5BB:        A9 00         LDA #$00                  ;
CODE_0DC5BD:        4C 92 C5      JMP CODE_0DC592           ;

CODE_0DC5C0:        74 5E         STZ $5E,x                 ;
CODE_0DC5C2:        A9 09         LDA #$09                  ;
CODE_0DC5C4:        D0 14         BNE CODE_0DC5DA           ;
CODE_0DC5C6:        A0 30         LDY #$30                  ;
CODE_0DC5C8:        BD 38 02      LDA $0238,x               ;
CODE_0DC5CB:        9D 02 04      STA $0402,x               ;
CODE_0DC5CE:        10 02         BPL CODE_0DC5D2           ;
CODE_0DC5D0:        A0 E0         LDY #$E0                  ;
CODE_0DC5D2:        98            TYA                       ;
CODE_0DC5D3:        7D 38 02      ADC $0238,x               ;
CODE_0DC5D6:        95 5E         STA $5E,x                 ;
CODE_0DC5D8:        A9 03         LDA #$03                  ;
CODE_0DC5DA:        9D 90 04      STA $0490,x               ;
CODE_0DC5DD:        A9 02         LDA #$02                  ;
CODE_0DC5DF:        95 47         STA $47,x                 ;
CODE_0DC5E1:        74 A1         STZ $A1,x                 ;
CODE_0DC5E3:        9E 3D 04      STZ $043D,x               ;
CODE_0DC5E6:        60            RTS                       ;

CODE_0DC5E7:        A9 02         LDA #$02                  ;
CODE_0DC5E9:        95 47         STA $47,x                 ;
CODE_0DC5EB:        A9 09         LDA #$09                  ;
CODE_0DC5ED:        9D 90 04      STA $0490,x               ;
CODE_0DC5F0:        60            RTS                       ;

CODE_0DC5F1:        20 C2 C5      JSR CODE_0DC5C2           ;
CODE_0DC5F4:        BD B7 07      LDA $07B7,x               ;
CODE_0DC5F7:        29 10         AND #$10                  ;
CODE_0DC5F9:        95 5E         STA $5E,x                 ;
CODE_0DC5FB:        BD 38 02      LDA $0238,x               ;
CODE_0DC5FE:        9D 3D 04      STA $043D,x               ;
CODE_0DC601:        60            RTS                       ;

CODE_0DC602:        AD CB 06      LDA $06CB                 ;
CODE_0DC605:        D0 09         BNE CODE_0DC610           ;
CODE_0DC607:        9C D1 06      STZ $06D1                 ;
CODE_0DC60A:        20 BB C5      JSR CODE_0DC5BB           ;
CODE_0DC60D:        4C 06 CB      JMP CODE_0DCB06           ;

CODE_0DC610:        4C EA CC      JMP CODE_0DCCEA           ;

DATA_0DC613:        db $26,$2C,$32,$38 ;

DATA_0DC617:        db $20,$22,$24,$26 ;

DATA_0DC61B:        db $13,$14,$15,$16 ;

CODE_0DC61F:        AD 9B 07      LDA $079B                 ;
CODE_0DC622:        D0 48         BNE CODE_0DC66C           ;
CODE_0DC624:        E0 09         CPX #$09                  ;
CODE_0DC626:        B0 44         BCS CODE_0DC66C           ;
CODE_0DC628:        A9 80         LDA #$80                  ;
CODE_0DC62A:        8D 9B 07      STA $079B                 ;
CODE_0DC62D:        A0 08         LDY #$08                  ;
CODE_0DC62F:        B9 1C 00      LDA $001C,y               ;
CODE_0DC632:        C9 11         CMP #$11                  ;
CODE_0DC634:        F0 37         BEQ CODE_0DC66D           ;
CODE_0DC636:        88            DEY                       ;
CODE_0DC637:        10 F6         BPL CODE_0DC62F           ;
CODE_0DC639:        EE D1 06      INC $06D1                 ;
CODE_0DC63C:        AD D1 06      LDA $06D1                 ;
CODE_0DC63F:        C9 03         CMP #$03                  ;
CODE_0DC641:        90 29         BCC CODE_0DC66C           ;
CODE_0DC643:        A2 08         LDX #$08                  ;
CODE_0DC645:        B5 10         LDA $10,x                 ;
CODE_0DC647:        F0 05         BEQ CODE_0DC64E           ;
CODE_0DC649:        CA            DEX                       ;
CODE_0DC64A:        10 F9         BPL CODE_0DC645           ;
CODE_0DC64C:        30 1C         BMI CODE_0DC66A           ;
CODE_0DC64E:        74 29         STZ $29,x                 ;
CODE_0DC650:        A9 11         LDA #$11                  ;
CODE_0DC652:        95 1C         STA $1C,x                 ;
CODE_0DC654:        20 07 C6      JSR CODE_0DC607           ;
CODE_0DC657:        A9 20         LDA #$20                  ;
CODE_0DC659:        AC FB 07      LDY $07FB                 ;
CODE_0DC65C:        D0 07         BNE CODE_0DC665           ;
CODE_0DC65E:        AC 5F 07      LDY $075F                 ;
CODE_0DC661:        C0 06         CPY #$06                  ;
CODE_0DC663:        90 02         BCC CODE_0DC667           ;
CODE_0DC665:        A9 60         LDA #$60                  ;
CODE_0DC667:        20 C9 C8      JSR CODE_0DC8C9           ;
CODE_0DC66A:        A6 9E         LDX $9E                   ;
CODE_0DC66C:        60            RTS                       ;

CODE_0DC66D:        AD 37 02      LDA $0237                 ;
CODE_0DC670:        C9 2C         CMP #$2C                  ;
CODE_0DC672:        90 F8         BCC CODE_0DC66C           ;
CODE_0DC674:        B9 29 00      LDA $0029,y               ;
CODE_0DC677:        D0 F3         BNE CODE_0DC66C           ;
CODE_0DC679:        B9 79 00      LDA $0079,y               ;
CODE_0DC67C:        95 79         STA $79,x                 ;
CODE_0DC67E:        B9 1A 02      LDA $021A,y               ;
CODE_0DC681:        9D 1A 02      STA $021A,x               ;
CODE_0DC684:        A9 01         LDA #$01                  ;
CODE_0DC686:        95 BC         STA $BC,x                 ;
CODE_0DC688:        B9 38 02      LDA $0238,y               ;
CODE_0DC68B:        38            SEC                       ;
CODE_0DC68C:        E9 08         SBC #$08                  ;
CODE_0DC68E:        9D 38 02      STA $0238,x               ;
CODE_0DC691:        BD B7 07      LDA $07B7,x               ;
CODE_0DC694:        29 03         AND #$03                  ;
CODE_0DC696:        A8            TAY                       ;
CODE_0DC697:        B9 13 C6      LDA DATA_0DC613,y               ;
CODE_0DC69A:        85 03         STA $03                   ;
CODE_0DC69C:        B9 17 C6      LDA DATA_0DC617,y               ;
CODE_0DC69F:        85 02         STA $02                   ;
CODE_0DC6A1:        B9 1B C6      LDA DATA_0DC61B,y               ;
CODE_0DC6A4:        85 01         STA $01                   ;
CODE_0DC6A6:        A6 9E         LDX $9E                   ;
CODE_0DC6A8:        20 0E D3      JSR CODE_0DD30E           ;
CODE_0DC6AB:        A4 5D         LDY $5D                   ;
CODE_0DC6AD:        C0 08         CPY #$08                  ;
CODE_0DC6AF:        B0 0E         BCS CODE_0DC6BF           ;
CODE_0DC6B1:        A8            TAY                       ;
CODE_0DC6B2:        BD B8 07      LDA $07B8,x               ;
CODE_0DC6B5:        29 03         AND #$03                  ;
CODE_0DC6B7:        F0 05         BEQ CODE_0DC6BE           ;
CODE_0DC6B9:        98            TYA                       ;
CODE_0DC6BA:        49 FF         EOR #$FF                  ;
CODE_0DC6BC:        A8            TAY                       ;
CODE_0DC6BD:        C8            INY                       ;
CODE_0DC6BE:        98            TYA                       ;
CODE_0DC6BF:        20 C2 C5      JSR CODE_0DC5C2           ;
CODE_0DC6C2:        A0 02         LDY #$02                  ;
CODE_0DC6C4:        95 5E         STA $5E,x                 ;
CODE_0DC6C6:        C9 00         CMP #$00                  ;
CODE_0DC6C8:        30 01         BMI CODE_0DC6CB           ;
CODE_0DC6CA:        88            DEY                       ;
CODE_0DC6CB:        94 47         STY $47,x                 ;
CODE_0DC6CD:        A9 FD         LDA #$FD                  ;
CODE_0DC6CF:        95 A1         STA $A1,x                 ;
CODE_0DC6D1:        A9 01         LDA #$01                  ;
CODE_0DC6D3:        95 10         STA $10,x                 ;
CODE_0DC6D5:        A9 05         LDA #$05                  ;
CODE_0DC6D7:        95 29         STA $29,x                 ;
CODE_0DC6D9:        60            RTS                       ;

DATA_0DC6DA:        db $28,$38,$28,$38,$28

DATA_0DC6DF:        db $00,$00,$10,$10,$00

CODE_0DC6E4:        20 27 C8      JSR CODE_0DC827           ;
CODE_0DC6E7:        74 5E         STZ $5E,x                 ;
CODE_0DC6E9:        B5 1C         LDA $1C,x                 ;
CODE_0DC6EB:        38            SEC                       ;
CODE_0DC6EC:        E9 1B         SBC #$1B                  ;
CODE_0DC6EE:        A8            TAY                       ;
CODE_0DC6EF:        B9 DA C6      LDA DATA_0DC6DA,y               ;
CODE_0DC6F2:        9D 88 03      STA $0388,x               ;
CODE_0DC6F5:        B9 DF C6      LDA DATA_0DC6DF,y               ;
CODE_0DC6F8:        9D 03 02      STA $0203,x               ;
CODE_0DC6FB:        BD 38 02      LDA $0238,x               ;
CODE_0DC6FE:        18            CLC                       ;
CODE_0DC6FF:        69 04         ADC #$04                  ;
CODE_0DC701:        9D 38 02      STA $0238,x               ;
CODE_0DC704:        BD 1A 02      LDA $021A,x               ;
CODE_0DC707:        18            CLC                       ;
CODE_0DC708:        69 04         ADC #$04                  ;
CODE_0DC70A:        9D 1A 02      STA $021A,x               ;
CODE_0DC70D:        B5 79         LDA $79,x                 ;
CODE_0DC70F:        69 00         ADC #$00                  ;
CODE_0DC711:        95 79         STA $79,x                 ;
CODE_0DC713:        4C 06 CB      JMP CODE_0DCB06           ;

DATA_0DC716:        db $80,$30,$40,$80,$30,$50,$50,$70 ;
                    db $20,$40,$80,$A0,$70,$40,$90,$68 ;

DATA_0DC726:        db $0E,$05,$06,$0E,$1C,$20,$10,$0C ;
                    db $1E,$22,$18,$14 ;

DATA_0DC732:        db $10,$60,$20

CODE_0DC735:        48            PHA                       ;
CODE_0DC736:        AD 9B 07      LDA $079B                 ;
CODE_0DC739:        D0 9E         BNE CODE_0DC6D9           ;
CODE_0DC73B:        20 C2 C5      JSR CODE_0DC5C2           ;
CODE_0DC73E:        BD B8 07      LDA $07B8,x               ;
CODE_0DC741:        29 03         AND #$03                  ;
CODE_0DC743:        A8            TAY                       ;
CODE_0DC744:        B9 32 C7      LDA DATA_0DC732,y               ;
CODE_0DC747:        8D 9B 07      STA $079B                 ;
CODE_0DC74A:        A0 03         LDY #$03                  ;
CODE_0DC74C:        AD CC 06      LDA $06CC                 ;
CODE_0DC74F:        F0 01         BEQ CODE_0DC752           ;
CODE_0DC751:        C8            INY                       ;
CODE_0DC752:        84 00         STY $00                   ;
CODE_0DC754:        E4 00         CPX $00                   ;
CODE_0DC756:        90 03         BCC CODE_0DC75B           ;
CODE_0DC758:        4C D9 C6      JMP CODE_0DC6D9           ;

CODE_0DC75B:        BD B7 07      LDA $07B7,x               ;
CODE_0DC75E:        29 03         AND #$03                  ;
CODE_0DC760:        85 00         STA $00                   ;
CODE_0DC762:        85 01         STA $01                   ;
CODE_0DC764:        A9 FB         LDA #$FB                  ;
CODE_0DC766:        95 A1         STA $A1,x                 ;
CODE_0DC768:        A9 00         LDA #$00                  ;
CODE_0DC76A:        A4 5D         LDY $5D                   ;
CODE_0DC76C:        F0 07         BEQ CODE_0DC775           ;
CODE_0DC76E:        A9 04         LDA #$04                  ;
CODE_0DC770:        C0 19         CPY #$19                  ;
CODE_0DC772:        90 01         BCC CODE_0DC775           ;
CODE_0DC774:        0A            ASL A                     ;
CODE_0DC775:        48            PHA                       ;
CODE_0DC776:        18            CLC                       ;
CODE_0DC777:        65 00         ADC $00                   ;
CODE_0DC779:        85 00         STA $00                   ;
CODE_0DC77B:        BD B8 07      LDA $07B8,x               ;
CODE_0DC77E:        29 03         AND #$03                  ;
CODE_0DC780:        F0 07         BEQ CODE_0DC789           ;
CODE_0DC782:        BD B9 07      LDA $07B9,x               ;
CODE_0DC785:        29 0F         AND #$0F                  ;
CODE_0DC787:        85 00         STA $00                   ;
CODE_0DC789:        68            PLA                       ;
CODE_0DC78A:        18            CLC                       ;
CODE_0DC78B:        65 01         ADC $01                   ;
CODE_0DC78D:        A8            TAY                       ;
CODE_0DC78E:        B9 26 C7      LDA DATA_0DC726,y               ;
CODE_0DC791:        95 5E         STA $5E,x                 ;
CODE_0DC793:        A9 01         LDA #$01                  ;
CODE_0DC795:        95 47         STA $47,x                 ;
CODE_0DC797:        A5 5D         LDA $5D                   ;
CODE_0DC799:        D0 12         BNE CODE_0DC7AD           ;
CODE_0DC79B:        A4 00         LDY $00                   ;
CODE_0DC79D:        98            TYA                       ;
CODE_0DC79E:        29 02         AND #$02                  ;
CODE_0DC7A0:        F0 0B         BEQ CODE_0DC7AD           ;
CODE_0DC7A2:        B5 5E         LDA $5E,x                 ;
CODE_0DC7A4:        49 FF         EOR #$FF                  ;
CODE_0DC7A6:        18            CLC                       ;
CODE_0DC7A7:        69 01         ADC #$01                  ;
CODE_0DC7A9:        95 5E         STA $5E,x                 ;
CODE_0DC7AB:        F6 47         INC $47,x                 ;
CODE_0DC7AD:        98            TYA                       ;
CODE_0DC7AE:        29 02         AND #$02                  ;
CODE_0DC7B0:        F0 10         BEQ CODE_0DC7C2           ;
CODE_0DC7B2:        AD 19 02      LDA $0219                 ;
CODE_0DC7B5:        18            CLC                       ;
CODE_0DC7B6:        79 16 C7      ADC DATA_0DC716,y               ;
CODE_0DC7B9:        9D 1A 02      STA $021A,x               ;
CODE_0DC7BC:        A5 78         LDA $78                   ;
CODE_0DC7BE:        69 00         ADC #$00                  ;
CODE_0DC7C0:        80 0E         BRA CODE_0DC7D0           ;

CODE_0DC7C2:        AD 19 02      LDA $0219                 ;
CODE_0DC7C5:        38            SEC                       ;
CODE_0DC7C6:        F9 16 C7      SBC DATA_0DC716,y               ;
CODE_0DC7C9:        9D 1A 02      STA $021A,x               ;
CODE_0DC7CC:        A5 78         LDA $78                   ;
CODE_0DC7CE:        E9 00         SBC #$00                  ;
CODE_0DC7D0:        95 79         STA $79,x                 ;
CODE_0DC7D2:        A9 01         LDA #$01                  ;
CODE_0DC7D4:        95 10         STA $10,x                 ;
CODE_0DC7D6:        95 BC         STA $BC,x                 ;
CODE_0DC7D8:        A9 F8         LDA #$F8                  ;
CODE_0DC7DA:        9D 38 02      STA $0238,x               ;
CODE_0DC7DD:        60            RTS                       ;

CODE_0DC7DE:        A0 04         LDY #$04                  ;
CODE_0DC7E0:        CC 9E 00      CPY $009E                 ;
CODE_0DC7E3:        F0 0F         BEQ CODE_0DC7F4           ;
CODE_0DC7E5:        B9 1C 00      LDA $001C,y               ;
CODE_0DC7E8:        C9 2D         CMP #$2D                  ;
CODE_0DC7EA:        D0 08         BNE CODE_0DC7F4           ;
CODE_0DC7EC:        A9 00         LDA #$00                  ;
CODE_0DC7EE:        99 1C 00      STA $001C,y               ;
CODE_0DC7F1:        99 10 00      STA $0010,y               ;
CODE_0DC7F4:        88            DEY                       ;
CODE_0DC7F5:        10 E9         BPL CODE_0DC7E0           ;
CODE_0DC7F7:        20 27 C8      JSR CODE_0DC827           ;
CODE_0DC7FA:        8E 68 03      STX $0368                 ;
CODE_0DC7FD:        9C 63 03      STZ $0363                 ;
CODE_0DC800:        9C 69 03      STZ $0369                 ;
CODE_0DC803:        BD 1A 02      LDA $021A,x               ;
CODE_0DC806:        8D 66 03      STA $0366                 ;
CODE_0DC809:        A9 DF         LDA #$DF                  ;
CODE_0DC80B:        8D 9C 07      STA $079C                 ;
CODE_0DC80E:        95 47         STA $47,x                 ;
CODE_0DC810:        A9 20         LDA #$20                  ;
CODE_0DC812:        8D 64 03      STA $0364                 ;
CODE_0DC815:        9D 92 07      STA $0792,x               ;
CODE_0DC818:        9D 57 02      STA $0257,x               ;
CODE_0DC81B:        B5 1C         LDA $1C,x                 ;
CODE_0DC81D:        A9 05         LDA #$05                  ;
CODE_0DC81F:        8D 83 02      STA $0283                 ;
CODE_0DC822:        4A            LSR A                     ;
CODE_0DC823:        8D 65 03      STA $0365                 ;
CODE_0DC826:        60            RTS                       ;

CODE_0DC827:        A0 FF         LDY #$FF                  ;
CODE_0DC829:        C8            INY                       ;
CODE_0DC82A:        B9 10 00      LDA $0010,y               ;
CODE_0DC82D:        D0 FA         BNE CODE_0DC829           ;
CODE_0DC82F:        8C CF 06      STY $06CF                 ;
CODE_0DC832:        8A            TXA                       ;
CODE_0DC833:        09 80         ORA #$80                  ;
CODE_0DC835:        99 10 00      STA $0010,y               ;
CODE_0DC838:        B5 79         LDA $79,x                 ;
CODE_0DC83A:        99 79 00      STA $0079,y               ;
CODE_0DC83D:        BD 1A 02      LDA $021A,x               ;
CODE_0DC840:        99 1A 02      STA $021A,y               ;
CODE_0DC843:        A9 01         LDA #$01                  ;
CODE_0DC845:        95 10         STA $10,x                 ;
CODE_0DC847:        99 BC 00      STA $00BC,y               ;
CODE_0DC84A:        BD 38 02      LDA $0238,x               ;
CODE_0DC84D:        99 38 02      STA $0238,y               ;
CODE_0DC850:        60            RTS                       ;

DATA_0DC851:        db $90,$80,$70,$90
DATA_0DC855:        db $FF,$01

CODE_0DC857:        AD 9B 07      LDA $079B                 ;
CODE_0DC85A:        D0 F4         BNE CODE_0DC850           ;
CODE_0DC85C:        9D 3D 04      STA $043D,x               ;
CODE_0DC85F:        A9 06         LDA #$06                  ;
CODE_0DC861:        8D 4B 01      STA $014B                 ;
CODE_0DC864:        A9 18         LDA #$18                  ;
CODE_0DC866:        8D 4C 0F      STA $0F4C                 ;
CODE_0DC869:        8E 4D 0F      STX $0F4D                 ;
CODE_0DC86C:        AC 68 03      LDY $0368                 ;
CODE_0DC86F:        B9 1C 00      LDA $001C,y               ;
CODE_0DC872:        C9 2D         CMP #$2D                  ;
CODE_0DC874:        F0 4F         BEQ CODE_0DC8C5           ;
CODE_0DC876:        20 EA D5      JSR CODE_0DD5EA           ;
CODE_0DC879:        18            CLC                       ;
CODE_0DC87A:        69 20         ADC #$20                  ;
CODE_0DC87C:        AC CC 06      LDY $06CC                 ;
CODE_0DC87F:        F0 03         BEQ CODE_0DC884           ;
CODE_0DC881:        38            SEC                       ;
CODE_0DC882:        E9 10         SBC #$10                  ;
CODE_0DC884:        8D 9B 07      STA $079B                 ;
CODE_0DC887:        BD B7 07      LDA $07B7,x               ;
CODE_0DC88A:        29 03         AND #$03                  ;
CODE_0DC88C:        9D 1D 04      STA $041D,x               ;
CODE_0DC88F:        A8            TAY                       ;
CODE_0DC890:        B9 51 C8      LDA DATA_0DC851,y               ;
CODE_0DC893:        9D 38 02      STA $0238,x               ;
CODE_0DC896:        AD 1D 07      LDA $071D                 ;
CODE_0DC899:        18            CLC                       ;
CODE_0DC89A:        69 20         ADC #$20                  ;
CODE_0DC89C:        9D 1A 02      STA $021A,x               ;
CODE_0DC89F:        AD 1B 07      LDA $071B                 ;
CODE_0DC8A2:        69 00         ADC #$00                  ;
CODE_0DC8A4:        95 79         STA $79,x                 ;
CODE_0DC8A6:        9C 4C 0F      STZ $0F4C                 ;
CODE_0DC8A9:        9C 4D 0F      STZ $0F4D                 ;
CODE_0DC8AC:        9C 4B 01      STZ $014B                 ;
CODE_0DC8AF:        A9 17         LDA #$17                  ;
CODE_0DC8B1:        8D 03 16      STA $1603                 ;
CODE_0DC8B4:        A9 08         LDA #$08                  ;
CODE_0DC8B6:        9D 90 04      STA $0490,x               ;
CODE_0DC8B9:        A9 01         LDA #$01                  ;
CODE_0DC8BB:        95 BC         STA $BC,x                 ;
CODE_0DC8BD:        95 10         STA $10,x                 ;
CODE_0DC8BF:        4A            LSR A                     ;
CODE_0DC8C0:        9D 02 04      STA $0402,x               ;
CODE_0DC8C3:        95 29         STA $29,x                 ;
CODE_0DC8C5:        8E 4E 0F      STX $0F4E                 ;
CODE_0DC8C8:        60            RTS                       ;

CODE_0DC8C9:        9D 38 02      STA $0238,x               ;
CODE_0DC8CC:        AD 1D 07      LDA $071D                 ;
CODE_0DC8CF:        18            CLC                       ;
CODE_0DC8D0:        69 20         ADC #$20                  ;
CODE_0DC8D2:        9D 1A 02      STA $021A,x               ;
CODE_0DC8D5:        AD 1B 07      LDA $071B                 ;
CODE_0DC8D8:        69 00         ADC #$00                  ;
CODE_0DC8DA:        95 79         STA $79,x                 ;
CODE_0DC8DC:        80 34         BRA CODE_0DC912           ;

CODE_0DC8DE:        B9 1A 02      LDA $021A,y               ;
CODE_0DC8E1:        38            SEC                       ;
CODE_0DC8E2:        E9 0E         SBC #$0E                  ;
CODE_0DC8E4:        9D 1A 02      STA $021A,x               ;
CODE_0DC8E7:        B9 79 00      LDA $0079,y               ;
CODE_0DC8EA:        95 79         STA $79,x                 ;
CODE_0DC8EC:        B9 38 02      LDA $0238,y               ;
CODE_0DC8EF:        18            CLC                       ;
CODE_0DC8F0:        69 08         ADC #$08                  ;
CODE_0DC8F2:        9D 38 02      STA $0238,x               ;
CODE_0DC8F5:        BD B7 07      LDA $07B7,x               ;
CODE_0DC8F8:        29 03         AND #$03                  ;
CODE_0DC8FA:        9D 1D 04      STA $041D,x               ;
CODE_0DC8FD:        A8            TAY                       ;
CODE_0DC8FE:        B9 51 C8      LDA DATA_0DC851,y               ;
CODE_0DC901:        A0 00         LDY #$00                  ;
CODE_0DC903:        DD 38 02      CMP $0238,x               ;
CODE_0DC906:        90 01         BCC CODE_0DC909           ;
CODE_0DC908:        C8            INY                       ;
CODE_0DC909:        B9 55 C8      LDA DATA_0DC855,y               ;
CODE_0DC90C:        9D 3D 04      STA $043D,x               ;
CODE_0DC90F:        9C CB 06      STZ $06CB                 ;
CODE_0DC912:        A9 08         LDA #$08                  ;
CODE_0DC914:        9D 90 04      STA $0490,x               ;
CODE_0DC917:        A9 01         LDA #$01                  ;
CODE_0DC919:        95 BC         STA $BC,x                 ;
CODE_0DC91B:        95 10         STA $10,x                 ;
CODE_0DC91D:        4A            LSR A                     ;
CODE_0DC91E:        9D 02 04      STA $0402,x               ;
CODE_0DC921:        95 29         STA $29,x                 ;
CODE_0DC923:        60            RTS                       ;

DATA_0DC924:        db $00,$30,$60,$60,$00,$20

DATA_0DC92A:        db $60,$40,$70,$40,$60,$30

CODE_0DC930:        AD 9B 07      LDA $079B                 ;
CODE_0DC933:        D0 49         BNE CODE_0DC97E           ;
CODE_0DC935:        A9 20         LDA #$20                  ;
CODE_0DC937:        8D 9B 07      STA $079B                 ;
CODE_0DC93A:        CE D7 06      DEC $06D7                 ;
CODE_0DC93D:        A0 0A         LDY #$0A                  ;
CODE_0DC93F:        88            DEY                       ;
CODE_0DC940:        B9 1C 00      LDA $001C,y               ;
CODE_0DC943:        C9 31         CMP #$31                  ;
CODE_0DC945:        D0 F8         BNE CODE_0DC93F           ;
CODE_0DC947:        B9 1A 02      LDA $021A,y               ;
CODE_0DC94A:        38            SEC                       ;
CODE_0DC94B:        E9 30         SBC #$30                  ;
CODE_0DC94D:        48            PHA                       ;
CODE_0DC94E:        B9 79 00      LDA $0079,y               ;
CODE_0DC951:        E9 00         SBC #$00                  ;
CODE_0DC953:        85 00         STA $00                   ;
CODE_0DC955:        AD D7 06      LDA $06D7                 ;
CODE_0DC958:        18            CLC                       ;
CODE_0DC959:        79 29 00      ADC $0029,y               ;
CODE_0DC95C:        A8            TAY                       ;
CODE_0DC95D:        68            PLA                       ;
CODE_0DC95E:        18            CLC                       ;
CODE_0DC95F:        79 24 C9      ADC DATA_0DC924,y               ;
CODE_0DC962:        9D 1A 02      STA $021A,x               ;
CODE_0DC965:        A5 00         LDA $00                   ;
CODE_0DC967:        69 00         ADC #$00                  ;
CODE_0DC969:        95 79         STA $79,x                 ;
CODE_0DC96B:        B9 2A C9      LDA DATA_0DC92A,y               ;
CODE_0DC96E:        9D 38 02      STA $0238,x               ;
CODE_0DC971:        A9 01         LDA #$01                  ;
CODE_0DC973:        95 BC         STA $BC,x                 ;
CODE_0DC975:        95 10         STA $10,x                 ;
CODE_0DC977:        4A            LSR A                     ;
CODE_0DC978:        95 5E         STA $5E,x                 ;
CODE_0DC97A:        A9 08         LDA #$08                  ;
CODE_0DC97C:        95 A1         STA $A1,x                 ;
CODE_0DC97E:        60            RTS                       ;

DATA_0DC97F:        db $01,$02,$04,$08,$10,$20,$40,$80

DATA_0DC987:        db $40,$30,$90,$50,$20,$60,$A0,$70

DATA_0DC98F:        db $0A,$0B

CODE_0DC991:        AD 9B 07      LDA $079B                 ;
CODE_0DC994:        D0 6B         BNE CODE_0DCA01           ;
CODE_0DC996:        A5 5C         LDA $5C                   ;
CODE_0DC998:        D0 54         BNE CODE_0DC9EE           ;
CODE_0DC99A:        E0 03         CPX #$03                  ;
CODE_0DC99C:        B0 63         BCS CODE_0DCA01           ;
CODE_0DC99E:        A0 00         LDY #$00                  ;
CODE_0DC9A0:        BD B7 07      LDA $07B7,x               ;
CODE_0DC9A3:        C9 AA         CMP #$AA                  ;
CODE_0DC9A5:        90 01         BCC CODE_0DC9A8           ;
CODE_0DC9A7:        C8            INY                       ;
CODE_0DC9A8:        AD 5F 07      LDA $075F                 ;
CODE_0DC9AB:        C9 01         CMP #$01                  ;
CODE_0DC9AD:        F0 01         BEQ CODE_0DC9B0           ;
CODE_0DC9AF:        C8            INY                       ;
CODE_0DC9B0:        98            TYA                       ;
CODE_0DC9B1:        29 01         AND #$01                  ;
CODE_0DC9B3:        A8            TAY                       ;
CODE_0DC9B4:        B9 8F C9      LDA DATA_0DC98F,y               ;
CODE_0DC9B7:        95 1C         STA $1C,x                 ;
CODE_0DC9B9:        AD DD 06      LDA $06DD                 ;
CODE_0DC9BC:        C9 FF         CMP #$FF                  ;
CODE_0DC9BE:        D0 03         BNE CODE_0DC9C3           ;
CODE_0DC9C0:        9C DD 06      STZ $06DD                 ;
CODE_0DC9C3:        BD B7 07      LDA $07B7,x               ;
CODE_0DC9C6:        29 07         AND #$07                  ;
CODE_0DC9C8:        A8            TAY                       ;
CODE_0DC9C9:        B9 7F C9      LDA DATA_0DC97F,y               ;
CODE_0DC9CC:        2C DD 06      BIT $06DD                 ;
CODE_0DC9CF:        F0 06         BEQ CODE_0DC9D7           ;
CODE_0DC9D1:        C8            INY                       ;
CODE_0DC9D2:        98            TYA                       ;
CODE_0DC9D3:        29 07         AND #$07                  ;
CODE_0DC9D5:        80 F1         BRA CODE_0DC9C8           ;

CODE_0DC9D7:        0D DD 06      ORA $06DD                 ;
CODE_0DC9DA:        8D DD 06      STA $06DD                 ;
CODE_0DC9DD:        B9 87 C9      LDA DATA_0DC987,y               ;
CODE_0DC9E0:        20 C9 C8      JSR CODE_0DC8C9           ;
CODE_0DC9E3:        9D 1D 04      STA $041D,x               ;
CODE_0DC9E6:        A9 20         LDA #$20                  ;
CODE_0DC9E8:        8D 9B 07      STA $079B                 ;
CODE_0DC9EB:        4C B9 C4      JMP CODE_0DC4B9           ;

CODE_0DC9EE:        A0 FF         LDY #$FF                  ;
CODE_0DC9F0:        C8            INY                       ;
CODE_0DC9F1:        C0 09         CPY #$09                  ;
CODE_0DC9F3:        B0 0D         BCS CODE_0DCA02           ;
CODE_0DC9F5:        B9 10 00      LDA $0010,y               ;
CODE_0DC9F8:        F0 F6         BEQ CODE_0DC9F0           ;
CODE_0DC9FA:        B9 1C 00      LDA $001C,y               ;
CODE_0DC9FD:        C9 08         CMP #$08                  ;
CODE_0DC9FF:        D0 EF         BNE CODE_0DC9F0           ;
CODE_0DCA01:        60            RTS                       ;

CODE_0DCA02:        A9 09         LDA #$09                  ;
CODE_0DCA04:        8D 03 16      STA $1603                 ;
CODE_0DCA07:        A9 08         LDA #$08                  ;
CODE_0DCA09:        D0 AC         BNE CODE_0DC9B7           ;
CODE_0DCA0B:        A0 00         LDY #$00                  ;
CODE_0DCA0D:        38            SEC                       ;
CODE_0DCA0E:        E9 37         SBC #$37                  ;
CODE_0DCA10:        48            PHA                       ;
CODE_0DCA11:        C9 04         CMP #$04                  ;
CODE_0DCA13:        B0 0B         BCS CODE_0DCA20           ;
CODE_0DCA15:        48            PHA                       ;
CODE_0DCA16:        A0 06         LDY #$06                  ;
CODE_0DCA18:        AD 6A 07      LDA $076A                 ;
CODE_0DCA1B:        F0 02         BEQ CODE_0DCA1F           ;
CODE_0DCA1D:        A0 02         LDY #$02                  ;
CODE_0DCA1F:        68            PLA                       ;
CODE_0DCA20:        84 01         STY $01                   ;
CODE_0DCA22:        A0 B0         LDY #$B0                  ;
CODE_0DCA24:        29 02         AND #$02                  ;
CODE_0DCA26:        F0 02         BEQ CODE_0DCA2A           ;
CODE_0DCA28:        A0 70         LDY #$70                  ;
CODE_0DCA2A:        84 00         STY $00                   ;
CODE_0DCA2C:        AD 1B 07      LDA $071B                 ;
CODE_0DCA2F:        85 02         STA $02                   ;
CODE_0DCA31:        AD 1D 07      LDA $071D                 ;
CODE_0DCA34:        85 03         STA $03                   ;
CODE_0DCA36:        A0 02         LDY #$02                  ;
CODE_0DCA38:        68            PLA                       ;
CODE_0DCA39:        4A            LSR A                     ;
CODE_0DCA3A:        90 01         BCC CODE_0DCA3D           ;
CODE_0DCA3C:        C8            INY                       ;
CODE_0DCA3D:        8C D3 06      STY $06D3                 ;
CODE_0DCA40:        A2 FF         LDX #$FF                  ;
CODE_0DCA42:        E8            INX                       ;
CODE_0DCA43:        E0 09         CPX #$09                  ;
CODE_0DCA45:        B0 2F         BCS CODE_0DCA76           ;
CODE_0DCA47:        B5 10         LDA $10,x                 ;
CODE_0DCA49:        D0 F7         BNE CODE_0DCA42           ;
CODE_0DCA4B:        A5 01         LDA $01                   ;
CODE_0DCA4D:        95 1C         STA $1C,x                 ;
CODE_0DCA4F:        A5 02         LDA $02                   ;
CODE_0DCA51:        95 79         STA $79,x                 ;
CODE_0DCA53:        A5 03         LDA $03                   ;
CODE_0DCA55:        9D 1A 02      STA $021A,x               ;
CODE_0DCA58:        18            CLC                       ;
CODE_0DCA59:        69 18         ADC #$18                  ;
CODE_0DCA5B:        85 03         STA $03                   ;
CODE_0DCA5D:        A5 02         LDA $02                   ;
CODE_0DCA5F:        69 00         ADC #$00                  ;
CODE_0DCA61:        85 02         STA $02                   ;
CODE_0DCA63:        A5 00         LDA $00                   ;
CODE_0DCA65:        9D 38 02      STA $0238,x               ;
CODE_0DCA68:        A9 01         LDA #$01                  ;
CODE_0DCA6A:        95 BC         STA $BC,x                 ;
CODE_0DCA6C:        95 10         STA $10,x                 ;
CODE_0DCA6E:        20 B9 C4      JSR CODE_0DC4B9           ;
CODE_0DCA71:        CE D3 06      DEC $06D3                 ;
CODE_0DCA74:        D0 CA         BNE CODE_0DCA40           ;
CODE_0DCA76:        4C 9B C4      JMP CODE_0DC49B           ;

CODE_0DCA79:        A9 2C         LDA #$2C                  ;
CODE_0DCA7B:        8D 00 00      STA $0000                 ;
CODE_0DCA7E:        A9 13         LDA #$13                  ;
CODE_0DCA80:        8D 01 00      STA $0001                 ;
CODE_0DCA83:        8D 25 0F      STA $0F25                 ;
CODE_0DCA86:        AD FB 07      LDA $07FB                 ;
CODE_0DCA89:        D0 15         BNE CODE_0DCAA0           ;
CODE_0DCA8B:        AD 5F 07      LDA $075F                 ;
CODE_0DCA8E:        C9 03         CMP #$03                  ;
CODE_0DCA90:        B0 0E         BCS CODE_0DCAA0           ;
CODE_0DCA92:        CE 00 00      DEC $0000                 ;
CODE_0DCA95:        CE 00 00      DEC $0000                 ;
CODE_0DCA98:        A9 21         LDA #$21                  ;
CODE_0DCA9A:        8D 01 00      STA $0001                 ;
CODE_0DCA9D:        8D 25 0F      STA $0F25                 ;
CODE_0DCAA0:        AD 00 00      LDA $0000                 ;
CODE_0DCAA3:        8D 24 0F      STA $0F24                 ;
CODE_0DCAA6:        A9 01         LDA #$01                  ;
CODE_0DCAA8:        95 5E         STA $5E,x                 ;
CODE_0DCAAA:        4A            LSR A                     ;
CODE_0DCAAB:        95 29         STA $29,x                 ;
CODE_0DCAAD:        9D A1 00      STA $00A1,x               ;
CODE_0DCAB0:        BD 38 02      LDA $0238,x               ;
CODE_0DCAB3:        9D 3D 04      STA $043D,x               ;
CODE_0DCAB6:        38            SEC                       ;
CODE_0DCAB7:        E9 18         SBC #$18                  ;
CODE_0DCAB9:        9D 1D 04      STA $041D,x               ;
CODE_0DCABC:        A9 09         LDA #$09                  ;
CODE_0DCABE:        A9 0C         LDA #$0C                  ;
CODE_0DCAC0:        4C 08 CB      JMP CODE_0DCB08           ;

CODE_0DCAC3:        B5 1C         LDA $1C,x                 ;
CODE_0DCAC5:        8D CB 06      STA $06CB                 ;
CODE_0DCAC8:        38            SEC                       ;
CODE_0DCAC9:        E9 12         SBC #$12                  ;
CODE_0DCACB:        0A            ASL A                     ;
CODE_0DCACC:        A8            TAY                       ;
CODE_0DCACD:        B9 DA CA      LDA PNTR_0DCADA,y               ;
CODE_0DCAD0:        85 04         STA $04                   ;
CODE_0DCAD2:        B9 DB CA      LDA PNTR_0DCADA+1,y               ;
CODE_0DCAD5:        85 05         STA $05                   ;
CODE_0DCAD7:        6C 04 00      JMP ($0004)               ;

PNTR_0DCADA:        dw CODE_0DC61F
                    dw CODE_0DCAE6
                    dw CODE_0DC736
                    dw CODE_0DC857
                    dw CODE_0DC930
                    dw CODE_0DC991

CODE_0DCAE6:        60            RTS                       ;

CODE_0DCAE7:        A0 09         LDY #$09                  ;
CODE_0DCAE9:        B9 1C 00      LDA $001C,y               ;
CODE_0DCAEC:        C9 11         CMP #$11                  ;
CODE_0DCAEE:        D0 05         BNE CODE_0DCAF5           ;
CODE_0DCAF0:        A9 01         LDA #$01                  ;
CODE_0DCAF2:        99 29 00      STA $0029,y               ;
CODE_0DCAF5:        88            DEY                       ;
CODE_0DCAF6:        10 F1         BPL CODE_0DCAE9           ;
CODE_0DCAF8:        9C CB 06      STZ $06CB                 ;
CODE_0DCAFB:        74 10         STZ $10,x                 ;
CODE_0DCAFD:        60            RTS                       ;

CODE_0DCAFE:        A9 02         LDA #$02                  ;
CODE_0DCB00:        95 47         STA $47,x                 ;
CODE_0DCB02:        A9 F4         LDA #$F4                  ;
CODE_0DCB04:        95 5E         STA $5E,x                 ;
CODE_0DCB06:        A9 03         LDA #$03                  ;
CODE_0DCB08:        9D 90 04      STA $0490,x               ;
CODE_0DCB0B:        60            RTS                       ;

CODE_0DCB0C:        DE 38 02      DEC $0238,x               ;
CODE_0DCB0F:        DE 38 02      DEC $0238,x               ;
CODE_0DCB12:        AC CC 06      LDY $06CC                 ;
CODE_0DCB15:        D0 05         BNE CODE_0DCB1C           ;
CODE_0DCB17:        A0 02         LDY #$02                  ;
CODE_0DCB19:        20 9E CB      JSR CODE_0DCB9E           ;
CODE_0DCB1C:        A0 FF         LDY #$FF                  ;
CODE_0DCB1E:        AD A0 03      LDA $03A0                 ;
CODE_0DCB21:        95 29         STA $29,x                 ;
CODE_0DCB23:        10 01         BPL CODE_0DCB26           ;
CODE_0DCB25:        9B            TXY                       ;
CODE_0DCB26:        8C A0 03      STY $03A0                 ;
CODE_0DCB29:        A9 00         LDA #$00                  ;
CODE_0DCB2B:        95 47         STA $47,x                 ;
CODE_0DCB2D:        A8            TAY                       ;
CODE_0DCB2E:        20 9E CB      JSR CODE_0DCB9E           ;
CODE_0DCB31:        A9 FF         LDA #$FF                  ;
CODE_0DCB33:        9D A2 03      STA $03A2,x               ;
CODE_0DCB36:        4C 58 CB      JMP CODE_0DCB58           ;

CODE_0DCB39:        A9 00         LDA #$00                  ;
CODE_0DCB3B:        95 5E         STA $5E,x                 ;
CODE_0DCB3D:        4C 58 CB      JMP CODE_0DCB58           ;

CODE_0DCB40:        A0 40         LDY #$40                  ;
CODE_0DCB42:        BD 38 02      LDA $0238,x               ;
CODE_0DCB45:        10 07         BPL CODE_0DCB4E           ;
CODE_0DCB47:        49 FF         EOR #$FF                  ;
CODE_0DCB49:        18            CLC                       ;
CODE_0DCB4A:        69 01         ADC #$01                  ;
CODE_0DCB4C:        A0 C0         LDY #$C0                  ;
CODE_0DCB4E:        9D 02 04      STA $0402,x               ;
CODE_0DCB51:        98            TYA                       ;
CODE_0DCB52:        18            CLC                       ;
CODE_0DCB53:        7D 38 02      ADC $0238,x               ;
CODE_0DCB56:        95 5E         STA $5E,x                 ;
CODE_0DCB58:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DCB5B:        A9 05         LDA #$05                  ;
CODE_0DCB5D:        A4 5C         LDY $5C                   ;
CODE_0DCB5F:        C0 03         CPY #$03                  ;
CODE_0DCB61:        F0 07         BEQ CODE_0DCB6A           ;
CODE_0DCB63:        AC CC 06      LDY $06CC                 ;
CODE_0DCB66:        D0 02         BNE CODE_0DCB6A           ;
CODE_0DCB68:        A9 06         LDA #$06                  ;
CODE_0DCB6A:        9D 90 04      STA $0490,x               ;
CODE_0DCB6D:        60            RTS                       ;

CODE_0DCB6E:        20 7A CB      JSR CODE_0DCB7A           ;
CODE_0DCB71:        4C 77 CB      JMP CODE_0DCB77           ;

CODE_0DCB74:        20 86 CB      JSR CODE_0DCB86           ;
CODE_0DCB77:        4C 5B CB      JMP CODE_0DCB5B           ;

CODE_0DCB7A:        A9 10         LDA #$10                  ;
CODE_0DCB7C:        9D 3D 04      STA $043D,x               ;
CODE_0DCB7F:        A9 FF         LDA #$FF                  ;
CODE_0DCB81:        95 A1         STA $A1,x                 ;
CODE_0DCB83:        4C 8D CB      JMP CODE_0DCB8D           ;

CODE_0DCB86:        A9 F0         LDA #$F0                  ;
CODE_0DCB88:        9D 3D 04      STA $043D,x               ;
CODE_0DCB8B:        74 A1         STZ $A1,x                 ;
CODE_0DCB8D:        A0 01         LDY #$01                  ;
CODE_0DCB8F:        20 9E CB      JSR CODE_0DCB9E           ;
CODE_0DCB92:        A9 04         LDA #$04                  ;
CODE_0DCB94:        9D 90 04      STA $0490,x               ;
CODE_0DCB97:        60            RTS                       ;

DATA_0DCB98:        db $08,$0C,$F8

DATA_0DCB9B:        db $00,$00,$FF

CODE_0DCB9E:        BD 1A 02      LDA $021A,x               ;
CODE_0DCBA1:        18            CLC                       ;
CODE_0DCBA2:        79 98 CB      ADC DATA_0DCB98,y               ;
CODE_0DCBA5:        9D 1A 02      STA $021A,x               ;
CODE_0DCBA8:        B5 79         LDA $79,x                 ;
CODE_0DCBAA:        79 9B CB      ADC DATA_0DCB9B,y               ;
CODE_0DCBAD:        95 79         STA $79,x                 ;
CODE_0DCBAF:        60            RTS                       ;

CODE_0DCBB0:        A6 9E         LDX $9E                   ;
CODE_0DCBB2:        A9 00         LDA #$00                  ;
CODE_0DCBB4:        B4 1C         LDY $1C,x                 ;
CODE_0DCBB6:        C0 15         CPY #$15                  ;
CODE_0DCBB8:        90 03         BCC CODE_0DCBBD           ;
CODE_0DCBBA:        98            TYA                       ;
CODE_0DCBBB:        E9 14         SBC #$14                  ;
CODE_0DCBBD:        0A            ASL A                     ;
CODE_0DCBBE:        A8            TAY                       ;
CODE_0DCBBF:        B9 CC CB      LDA PNTR_0DCBCC,y               ;
CODE_0DCBC2:        85 04         STA $04                   ;
CODE_0DCBC4:        B9 CD CB      LDA PNTR_0DCBCC+1,y               ;
CODE_0DCBC7:        85 05         STA $05                   ;
CODE_0DCBC9:        6C 04 00      JMP ($0004)               ;

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

CODE_0DCC10:        60            RTS                       ;

CODE_0DCC11:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DCC14:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DCC17:        4C 40 EE      JMP CODE_0DEE40           ;

CODE_0DCC1A:        A9 20         LDA #$20                  ;
CODE_0DCC1C:        9D 57 02      STA $0257,x               ;
CODE_0DCC1F:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DCC22:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DCC25:        20 40 EE      JSR CODE_0DEE40           ;
CODE_0DCC28:        20 48 E9      JSR CODE_0DE948           ;
CODE_0DCC2B:        20 8D E6      JSR CODE_0DE68D           ;
CODE_0DCC2E:        20 03 E0      JSR CODE_0DE003           ;
CODE_0DCC31:        20 7D DD      JSR CODE_0DDD7D           ;
CODE_0DCC34:        AC 47 07      LDY $0747                 ;
CODE_0DCC37:        D0 03         BNE CODE_0DCC3C           ;
CODE_0DCC39:        20 3F CC      JSR CODE_0DCC3F           ;
CODE_0DCC3C:        4C FC DA      JMP CODE_0DDAFC           ;

CODE_0DCC3F:        B5 1C         LDA $1C,x                 ;
CODE_0DCC41:        0A            ASL A                     ;
CODE_0DCC42:        A8            TAY                       ;
CODE_0DCC43:        B9 50 CC      LDA PNTR_0DCC50,y               ;
CODE_0DCC46:        85 04         STA $04                   ;
CODE_0DCC48:        B9 51 CC      LDA PNTR_0DCC50+1,y               ;
CODE_0DCC4B:        85 05         STA $05                   ;
CODE_0DCC4D:        6C 04 00      JMP ($0004)               ;

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

CODE_0DCC7A:        60            RTS                       ;

CODE_0DCC7B:        20 FC D5      JSR CODE_0DD5FC           ;
CODE_0DCC7E:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DCC81:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DCC84:        20 48 E9      JSR CODE_0DE948           ;
CODE_0DCC87:        20 7D DD      JSR CODE_0DDD7D           ;
CODE_0DCC8A:        4C FC DA      JMP CODE_0DDAFC           ;

CODE_0DCC8D:        20 DF D0      JSR CODE_0DD0DF           ;
CODE_0DCC90:        4C FC DA      JMP CODE_0DDAFC           ;

CODE_0DCC93:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DCC96:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DCC99:        20 51 E9      JSR CODE_0DE951           ;
CODE_0DCC9C:        20 6E E1      JSR CODE_0DE16E           ;
CODE_0DCC9F:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DCCA2:        20 A2 F5      JSR CODE_0DF5A2           ;
CODE_0DCCA5:        20 D1 DA      JSR CODE_0DDAD1           ;
CODE_0DCCA8:        4C FC DA      JMP CODE_0DDAFC           ;

CODE_0DCCAB:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DCCAE:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DCCB1:        20 80 E9      JSR CODE_0DE980           ;
CODE_0DCCB4:        20 37 E1      JSR CODE_0DE137           ;
CODE_0DCCB7:        AD 47 07      LDA $0747                 ;
CODE_0DCCBA:        D0 03         BNE CODE_0DCCBF           ;
CODE_0DCCBC:        20 C8 CC      JSR CODE_0DCCC8           ;
CODE_0DCCBF:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DCCC2:        20 A6 EB      JSR CODE_0DEBA6           ;
CODE_0DCCC5:        4C FC DA      JMP CODE_0DDAFC           ;

CODE_0DCCC8:        B5 1C         LDA $1C,x                 ;
CODE_0DCCCA:        38            SEC                       ;
CODE_0DCCCB:        E9 24         SBC #$24                  ;
CODE_0DCCCD:        0A            ASL A                     ;
CODE_0DCCCE:        A8            TAY                       ;
CODE_0DCCCF:        B9 DC CC      LDA PNTR_0DCCDC,y               ;
CODE_0DCCD2:        85 04         STA $04                   ;
CODE_0DCCD4:        B9 DD CC      LDA PNTR_0DCCDC+1,y               ;
CODE_0DCCD7:        85 05         STA $05                   ;
CODE_0DCCD9:        6C 04 00      JMP ($0004)               ;

PNTR_0DCCDC:        dw CODE_0DD807
                    dw CODE_0DDA4C
                    dw CODE_0DDACB
                    dw CODE_0DDACB
                    dw CODE_0DDA82
                    dw CODE_0DDAAD
                    dw CODE_0DDAB9

CODE_0DCCEA:        9E A2 07      STZ $07A2,x
CODE_0DCCED:        E0 09         CPX #$09                  ;
CODE_0DCCEF:        D0 17         BNE CODE_0DCD08           ;
CODE_0DCCF1:        A9 F0         LDA #$F0                  ;
CODE_0DCCF3:        8D E1 09      STA $09E1                 ;
CODE_0DCCF6:        8D E5 09      STA $09E5                 ;
CODE_0DCCF9:        8D E9 09      STA $09E9                 ;
CODE_0DCCFC:        8D ED 09      STA $09ED                 ;
CODE_0DCCFF:        A5 DB         LDA $DB                   ;
CODE_0DCD01:        C9 22         CMP #$22                  ;
CODE_0DCD03:        D0 03         BNE CODE_0DCD08           ;
CODE_0DCD05:        9C 43 07      STZ $0743                 ;
CODE_0DCD08:        74 10         STZ $10,x                 ;
CODE_0DCD0A:        74 1C         STZ $1C,x                 ;
CODE_0DCD0C:        74 29         STZ $29,x                 ;
CODE_0DCD0E:        9E 10 01      STZ $0110,x               ;
CODE_0DCD11:        9E 2E 01      STZ $012E,x               ;
CODE_0DCD14:        9E 92 07      STZ $0792,x               ;
CODE_0DCD17:        9E A2 03      STZ $03A2,x               ;
CODE_0DCD1A:        A9 20         LDA #$20                  ;
CODE_0DCD1C:        9D 57 02      STA $0257,x               ;
CODE_0DCD1F:        A9 00         LDA #$00                  ;
CODE_0DCD21:        60            RTS                       ;

CODE_0DCD22:        BD A2 07      LDA $07A2,x               ;
CODE_0DCD25:        D0 16         BNE CODE_0DCD3D           ;
CODE_0DCD27:        20 52 C5      JSR CODE_0DC552           ;
CODE_0DCD2A:        BD B8 07      LDA $07B8,x               ;
CODE_0DCD2D:        09 80         ORA #$80                  ;
CODE_0DCD2F:        9D 3D 04      STA $043D,x               ;
CODE_0DCD32:        29 0F         AND #$0F                  ;
CODE_0DCD34:        09 06         ORA #$06                  ;
CODE_0DCD36:        9D A2 07      STA $07A2,x               ;
CODE_0DCD39:        A9 F9         LDA #$F9                  ;
CODE_0DCD3B:        95 A1         STA $A1,x                 ;
CODE_0DCD3D:        BD A1 00      LDA $00A1,x               ;
CODE_0DCD40:        30 19         BMI CODE_0DCD5B           ;
CODE_0DCD42:        BD 38 02      LDA $0238,x               ;
CODE_0DCD45:        C9 C0         CMP #$C0                  ;
CODE_0DCD47:        90 12         BCC CODE_0DCD5B           ;
CODE_0DCD49:        BD 00 0B      LDA $0B00,x               ;
CODE_0DCD4C:        C9 02         CMP #$02                  ;
CODE_0DCD4E:        D0 0B         BNE CODE_0DCD5B           ;
CODE_0DCD50:        FE 00 0B      INC $0B00,x               ;
CODE_0DCD53:        9E 09 0B      STZ $0B09,x               ;
CODE_0DCD56:        A9 27         LDA #$27                  ;
CODE_0DCD58:        8D 03 16      STA $1603                 ;
CODE_0DCD5B:        FE 09 0B      INC $0B09,x               ;
CODE_0DCD5E:        22 0F E4 0F   JSL CODE_0FE40F           ;
CODE_0DCD62:        4C 33 BF      JMP CODE_0DBF33           ;

DATA_0DCD65:        db $30,$1C

DATA_0DCD67:        db $00,$E8,$00,$18

DATA_0DCD6B:        db $08,$F8,$0C,$F4

CODE_0DCD6F:        B5 29         LDA $29,x                 ;
CODE_0DCD71:        29 20         AND #$20                  ;
CODE_0DCD73:        F0 03         BEQ CODE_0DCD78           ;
CODE_0DCD75:        4C 7E CE      JMP CODE_0DCE7E           ;

CODE_0DCD78:        BD 0F 02      LDA $020F,x               ;
CODE_0DCD7B:        F0 2E         BEQ CODE_0DCDAB           ;
CODE_0DCD7D:        DE 0F 02      DEC $020F,x               ;
CODE_0DCD80:        AD D1 03      LDA $03D1                 ;
CODE_0DCD83:        29 0C         AND #$0C                  ;
CODE_0DCD85:        D0 6A         BNE CODE_0DCDF1           ;
CODE_0DCD87:        BD A2 03      LDA $03A2,x               ;
CODE_0DCD8A:        D0 17         BNE CODE_0DCDA3           ;
CODE_0DCD8C:        AC CC 06      LDY $06CC                 ;
CODE_0DCD8F:        B9 65 CD      LDA DATA_0DCD65,y               ;
CODE_0DCD92:        9D A2 03      STA $03A2,x               ;
CODE_0DCD95:        20 61 B9      JSR CODE_0DB961           ;
CODE_0DCD98:        90 09         BCC CODE_0DCDA3           ;
CODE_0DCD9A:        B5 29         LDA $29,x                 ;
CODE_0DCD9C:        09 08         ORA #$08                  ;
CODE_0DCD9E:        95 29         STA $29,x                 ;
CODE_0DCDA0:        4C F1 CD      JMP CODE_0DCDF1           ;

CODE_0DCDA3:        DE A2 03      DEC $03A2,x               ;
CODE_0DCDA6:        4C F1 CD      JMP CODE_0DCDF1           ;

DATA_0DCDA9:        db $20,$37

CODE_0DCDAB:        B5 29         LDA $29,x                 ;
CODE_0DCDAD:        29 07         AND #$07                  ;
CODE_0DCDAF:        C9 01         CMP #$01                  ;
CODE_0DCDB1:        F0 3E         BEQ CODE_0DCDF1           ;
CODE_0DCDB3:        64 00         STZ $00                   ;
CODE_0DCDB5:        A0 FA         LDY #$FA                  ;
CODE_0DCDB7:        BD 38 02      LDA $0238,x               ;
CODE_0DCDBA:        30 13         BMI CODE_0DCDCF           ;
CODE_0DCDBC:        A0 FD         LDY #$FD                  ;
CODE_0DCDBE:        C9 70         CMP #$70                  ;
CODE_0DCDC0:        E6 00         INC $00                   ;
CODE_0DCDC2:        90 0B         BCC CODE_0DCDCF           ;
CODE_0DCDC4:        C6 00         DEC $00                   ;
CODE_0DCDC6:        BD B8 07      LDA $07B8,x               ;
CODE_0DCDC9:        29 01         AND #$01                  ;
CODE_0DCDCB:        D0 02         BNE CODE_0DCDCF           ;
CODE_0DCDCD:        A0 FA         LDY #$FA                  ;
CODE_0DCDCF:        94 A1         STY $A1,x                 ;
CODE_0DCDD1:        B5 29         LDA $29,x                 ;
CODE_0DCDD3:        09 01         ORA #$01                  ;
CODE_0DCDD5:        95 29         STA $29,x                 ;
CODE_0DCDD7:        A5 00         LDA $00                   ;
CODE_0DCDD9:        3D B9 07      AND $07B9,x               ;
CODE_0DCDDC:        A8            TAY                       ;
CODE_0DCDDD:        AD CC 06      LDA $06CC                 ;
CODE_0DCDE0:        D0 01         BNE CODE_0DCDE3           ;
CODE_0DCDE2:        A8            TAY                       ;
CODE_0DCDE3:        B9 A9 CD      LDA DATA_0DCDA9,y               ;
CODE_0DCDE6:        9D 92 07      STA $0792,x               ;
CODE_0DCDE9:        BD B8 07      LDA $07B8,x               ;
CODE_0DCDEC:        09 C0         ORA #$C0                  ;
CODE_0DCDEE:        9D 0F 02      STA $020F,x               ;
CODE_0DCDF1:        A0 FC         LDY #$FC                  ;
CODE_0DCDF3:        A5 09         LDA $09                   ;
CODE_0DCDF5:        29 40         AND #$40                  ;
CODE_0DCDF7:        D0 02         BNE CODE_0DCDFB           ;
CODE_0DCDF9:        A0 04         LDY #$04                  ;
CODE_0DCDFB:        94 5E         STY $5E,x                 ;
CODE_0DCDFD:        A0 01         LDY #$01                  ;
CODE_0DCDFF:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DCE02:        30 0A         BMI CODE_0DCE0E           ;
CODE_0DCE04:        C8            INY                       ;
CODE_0DCE05:        BD A2 07      LDA $07A2,x               ;
CODE_0DCE08:        D0 04         BNE CODE_0DCE0E           ;
CODE_0DCE0A:        A9 F8         LDA #$F8                  ;
CODE_0DCE0C:        95 5E         STA $5E,x                 ;
CODE_0DCE0E:        94 47         STY $47,x                 ;
CODE_0DCE10:        A0 00         LDY #$00                  ;
CODE_0DCE12:        B5 29         LDA $29,x                 ;
CODE_0DCE14:        29 40         AND #$40                  ;
CODE_0DCE16:        D0 19         BNE CODE_0DCE31           ;
CODE_0DCE18:        B5 29         LDA $29,x                 ;
CODE_0DCE1A:        0A            ASL A                     ;
CODE_0DCE1B:        B0 30         BCS CODE_0DCE4D           ;
CODE_0DCE1D:        B5 29         LDA $29,x                 ;
CODE_0DCE1F:        29 20         AND #$20                  ;
CODE_0DCE21:        D0 5B         BNE CODE_0DCE7E           ;
CODE_0DCE23:        B5 29         LDA $29,x                 ;
CODE_0DCE25:        29 07         AND #$07                  ;
CODE_0DCE27:        F0 24         BEQ CODE_0DCE4D           ;
CODE_0DCE29:        C9 05         CMP #$05                  ;
CODE_0DCE2B:        F0 04         BEQ CODE_0DCE31           ;
CODE_0DCE2D:        C9 03         CMP #$03                  ;
CODE_0DCE2F:        B0 30         BCS CODE_0DCE61           ;
CODE_0DCE31:        20 06 BF      JSR CODE_0DBF06           ;
CODE_0DCE34:        A0 00         LDY #$00                  ;
CODE_0DCE36:        B5 29         LDA $29,x                 ;
CODE_0DCE38:        C9 02         CMP #$02                  ;
CODE_0DCE3A:        F0 0C         BEQ CODE_0DCE48           ;
CODE_0DCE3C:        29 40         AND #$40                  ;
CODE_0DCE3E:        F0 0D         BEQ CODE_0DCE4D           ;
CODE_0DCE40:        B5 1C         LDA $1C,x                 ;
CODE_0DCE42:        C9 2E         CMP #$2E                  ;
CODE_0DCE44:        F0 07         BEQ CODE_0DCE4D           ;
CODE_0DCE46:        D0 03         BNE CODE_0DCE4B           ;
CODE_0DCE48:        4C A0 BE      JMP CODE_0DBEA0           ;

CODE_0DCE4B:        A0 01         LDY #$01                  ;
CODE_0DCE4D:        B5 5E         LDA $5E,x                 ;
CODE_0DCE4F:        48            PHA                       ;
CODE_0DCE50:        10 02         BPL CODE_0DCE54           ;
CODE_0DCE52:        C8            INY                       ;
CODE_0DCE53:        C8            INY                       ;
CODE_0DCE54:        18            CLC                       ;
CODE_0DCE55:        79 67 CD      ADC DATA_0DCD67,y               ;
CODE_0DCE58:        95 5E         STA $5E,x                 ;
CODE_0DCE5A:        20 A0 BE      JSR CODE_0DBEA0           ;
CODE_0DCE5D:        68            PLA                       ;
CODE_0DCE5E:        95 5E         STA $5E,x                 ;
CODE_0DCE60:        60            RTS                       ;

CODE_0DCE61:        BD A2 07      LDA $07A2,x               ;
CODE_0DCE64:        D0 1E         BNE CODE_0DCE84           ;
CODE_0DCE66:        95 29         STA $29,x                 ;
CODE_0DCE68:        A5 09         LDA $09                   ;
CODE_0DCE6A:        29 01         AND #$01                  ;
CODE_0DCE6C:        A8            TAY                       ;
CODE_0DCE6D:        C8            INY                       ;
CODE_0DCE6E:        94 47         STY $47,x                 ;
CODE_0DCE70:        88            DEY                       ;
CODE_0DCE71:        AD 6A 07      LDA $076A                 ;
CODE_0DCE74:        F0 02         BEQ CODE_0DCE78           ;
CODE_0DCE76:        C8            INY                       ;
CODE_0DCE77:        C8            INY                       ;
CODE_0DCE78:        B9 6B CD      LDA DATA_0DCD6B,y               ;
CODE_0DCE7B:        95 5E         STA $5E,x                 ;
CODE_0DCE7D:        60            RTS                       ;

CODE_0DCE7E:        20 06 BF      JSR CODE_0DBF06           ;
CODE_0DCE81:        4C A0 BE      JMP CODE_0DBEA0           ;

CODE_0DCE84:        C9 0E         CMP #$0E                  ;
CODE_0DCE86:        D0 09         BNE CODE_0DCE91           ;
CODE_0DCE88:        B5 1C         LDA $1C,x                 ;
CODE_0DCE8A:        C9 06         CMP #$06                  ;
CODE_0DCE8C:        D0 03         BNE CODE_0DCE91           ;
CODE_0DCE8E:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DCE91:        60            RTS                       ;

CODE_0DCE92:        20 33 BF      JSR CODE_0DBF33           ;
CODE_0DCE95:        4C A0 BE      JMP CODE_0DBEA0           ;

CODE_0DCE98:        B5 A1         LDA $A1,x                 ;
CODE_0DCE9A:        1D 3D 04      ORA $043D,x               ;
CODE_0DCE9D:        D0 15         BNE CODE_0DCEB4           ;
CODE_0DCE9F:        9D 1D 04      STA $041D,x               ;
CODE_0DCEA2:        BD 38 02      LDA $0238,x               ;
CODE_0DCEA5:        DD 02 04      CMP $0402,x               ;
CODE_0DCEA8:        B0 0A         BCS CODE_0DCEB4           ;
CODE_0DCEAA:        A5 09         LDA $09                   ;
CODE_0DCEAC:        29 07         AND #$07                  ;
CODE_0DCEAE:        D0 03         BNE CODE_0DCEB3           ;
CODE_0DCEB0:        FE 38 02      INC $0238,x               ;
CODE_0DCEB3:        60            RTS                       ;

CODE_0DCEB4:        BD 38 02      LDA $0238,x               ;
CODE_0DCEB7:        D5 5E         CMP $5E,x                 ;
CODE_0DCEB9:        90 03         BCC CODE_0DCEBE           ;
CODE_0DCEBB:        4C 16 BF      JMP CODE_0DBF16           ;

CODE_0DCEBE:        4C 12 BF      JMP CODE_0DBF12           ;

CODE_0DCEC1:        20 E3 CE      JSR CODE_0DCEE3           ;
CODE_0DCEC4:        20 04 CF      JSR CODE_0DCF04           ;
CODE_0DCEC7:        A0 01         LDY #$01                  ;
CODE_0DCEC9:        A5 09         LDA $09                   ;
CODE_0DCECB:        29 03         AND #$03                  ;
CODE_0DCECD:        D0 13         BNE CODE_0DCEE2           ;
CODE_0DCECF:        A5 09         LDA $09                   ;
CODE_0DCED1:        29 40         AND #$40                  ;
CODE_0DCED3:        D0 02         BNE CODE_0DCED7           ;
CODE_0DCED5:        A0 FF         LDY #$FF                  ;
CODE_0DCED7:        84 00         STY $00                   ;
CODE_0DCED9:        BD 38 02      LDA $0238,x               ;
CODE_0DCEDC:        18            CLC                       ;
CODE_0DCEDD:        65 00         ADC $00                   ;
CODE_0DCEDF:        9D 38 02      STA $0238,x               ;
CODE_0DCEE2:        60            RTS                       ;

CODE_0DCEE3:        A9 13         LDA #$13                  ;
CODE_0DCEE5:        85 01         STA $01                   ;
CODE_0DCEE7:        A5 09         LDA $09                   ;
CODE_0DCEE9:        29 03         AND #$03                  ;
CODE_0DCEEB:        D0 0D         BNE CODE_0DCEFA           ;
CODE_0DCEED:        B4 5E         LDY $5E,x                 ;
CODE_0DCEEF:        B5 A1         LDA $A1,x                 ;
CODE_0DCEF1:        4A            LSR A                     ;
CODE_0DCEF2:        B0 0A         BCS CODE_0DCEFE           ;
CODE_0DCEF4:        C4 01         CPY $01                   ;
CODE_0DCEF6:        F0 03         BEQ CODE_0DCEFB           ;
CODE_0DCEF8:        F6 5E         INC $5E,x                 ;
CODE_0DCEFA:        60            RTS                       ;

CODE_0DCEFB:        F6 A1         INC $A1,x                 ;
CODE_0DCEFD:        60            RTS                       ;

CODE_0DCEFE:        98            TYA                       ;
CODE_0DCEFF:        F0 FA         BEQ CODE_0DCEFB           ;
CODE_0DCF01:        D6 5E         DEC $5E,x                 ;
CODE_0DCF03:        60            RTS                       ;

CODE_0DCF04:        B5 5E         LDA $5E,x                 ;
CODE_0DCF06:        48            PHA                       ;
CODE_0DCF07:        A0 01         LDY #$01                  ;
CODE_0DCF09:        B5 A1         LDA $A1,x                 ;
CODE_0DCF0B:        29 02         AND #$02                  ;
CODE_0DCF0D:        D0 09         BNE CODE_0DCF18           ;
CODE_0DCF0F:        B5 5E         LDA $5E,x                 ;
CODE_0DCF11:        49 FF         EOR #$FF                  ;
CODE_0DCF13:        1A            INC A                     ;
CODE_0DCF14:        95 5E         STA $5E,x                 ;
CODE_0DCF16:        A0 02         LDY #$02                  ;
CODE_0DCF18:        94 47         STY $47,x                 ;
CODE_0DCF1A:        20 A0 BE      JSR CODE_0DBEA0           ;
CODE_0DCF1D:        85 00         STA $00                   ;
CODE_0DCF1F:        68            PLA                       ;
CODE_0DCF20:        95 5E         STA $5E,x                 ;
CODE_0DCF22:        60            RTS                       ;

DATA_0DCF23:        db $3F,$03

CODE_0DCF25:        B5 29         LDA $29,x                 ;
CODE_0DCF27:        29 20         AND #$20                  ;
CODE_0DCF29:        D0 53         BNE CODE_0DCF7E           ;
CODE_0DCF2B:        AC CC 06      LDY $06CC                 ;
CODE_0DCF2E:        BD B8 07      LDA $07B8,x               ;
CODE_0DCF31:        39 23 CF      AND DATA_0DCF23,y               ;
CODE_0DCF34:        D0 12         BNE CODE_0DCF48           ;
CODE_0DCF36:        8A            TXA                       ;
CODE_0DCF37:        4A            LSR A                     ;
CODE_0DCF38:        90 04         BCC CODE_0DCF3E           ;
CODE_0DCF3A:        A4 46         LDY $46                   ;
CODE_0DCF3C:        B0 08         BCS CODE_0DCF46           ;
CODE_0DCF3E:        A0 02         LDY #$02                  ;
CODE_0DCF40:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DCF43:        10 01         BPL CODE_0DCF46           ;
CODE_0DCF45:        88            DEY                       ;
CODE_0DCF46:        94 47         STY $47,x                 ;
CODE_0DCF48:        20 81 CF      JSR CODE_0DCF81           ;
CODE_0DCF4B:        BD 38 02      LDA $0238,x               ;
CODE_0DCF4E:        38            SEC                       ;
CODE_0DCF4F:        FD 3D 04      SBC $043D,x               ;
CODE_0DCF52:        C9 20         CMP #$20                  ;
CODE_0DCF54:        90 03         BCC CODE_0DCF59           ;
CODE_0DCF56:        9D 38 02      STA $0238,x               ;
CODE_0DCF59:        B4 47         LDY $47,x                 ;
CODE_0DCF5B:        88            DEY                       ;
CODE_0DCF5C:        D0 10         BNE CODE_0DCF6E           ;
CODE_0DCF5E:        BD 1A 02      LDA $021A,x               ;
CODE_0DCF61:        18            CLC                       ;
CODE_0DCF62:        75 5E         ADC $5E,x                 ;
CODE_0DCF64:        9D 1A 02      STA $021A,x               ;
CODE_0DCF67:        B5 79         LDA $79,x                 ;
CODE_0DCF69:        69 00         ADC #$00                  ;
CODE_0DCF6B:        95 79         STA $79,x                 ;
CODE_0DCF6D:        60            RTS                       ;

CODE_0DCF6E:        BD 1A 02      LDA $021A,x               ;
CODE_0DCF71:        38            SEC                       ;
CODE_0DCF72:        F5 5E         SBC $5E,x                 ;
CODE_0DCF74:        9D 1A 02      STA $021A,x               ;
CODE_0DCF77:        B5 79         LDA $79,x                 ;
CODE_0DCF79:        E9 00         SBC #$00                  ;
CODE_0DCF7B:        95 79         STA $79,x                 ;
CODE_0DCF7D:        60            RTS                       ;

CODE_0DCF7E:        4C 2D BF      JMP CODE_0DBF2D           ;

CODE_0DCF81:        B5 A1         LDA $A1,x                 ;
CODE_0DCF83:        29 02         AND #$02                  ;
CODE_0DCF85:        D0 31         BNE CODE_0DCFB8           ;
CODE_0DCF87:        A5 09         LDA $09                   ;
CODE_0DCF89:        29 07         AND #$07                  ;
CODE_0DCF8B:        48            PHA                       ;
CODE_0DCF8C:        B5 A1         LDA $A1,x                 ;
CODE_0DCF8E:        4A            LSR A                     ;
CODE_0DCF8F:        B0 12         BCS CODE_0DCFA3           ;
CODE_0DCF91:        68            PLA                       ;
CODE_0DCF92:        D0 0E         BNE CODE_0DCFA2           ;
CODE_0DCF94:        FE 3D 04      INC $043D,x               ;
CODE_0DCF97:        BD 3D 04      LDA $043D,x               ;
CODE_0DCF9A:        95 5E         STA $5E,x                 ;
CODE_0DCF9C:        C9 02         CMP #$02                  ;
CODE_0DCF9E:        D0 02         BNE CODE_0DCFA2           ;
CODE_0DCFA0:        F6 A1         INC $A1,x                 ;
CODE_0DCFA2:        60            RTS                       ;

CODE_0DCFA3:        68            PLA                    
CODE_0DCFA4:        D0 11         BNE CODE_0DCFB7           ;
CODE_0DCFA6:        DE 3D 04      DEC $043D,x               ;
CODE_0DCFA9:        BD 3D 04      LDA $043D,x               ;
CODE_0DCFAC:        95 5E         STA $5E,x                 ;
CODE_0DCFAE:        D0 07         BNE CODE_0DCFB7           ;
CODE_0DCFB0:        F6 A1         INC $A1,x                 ;
CODE_0DCFB2:        A9 02         LDA #$02                  ;
CODE_0DCFB4:        9D A2 07      STA $07A2,x               ;
CODE_0DCFB7:        60            RTS                       ;

CODE_0DCFB8:        BD A2 07      LDA $07A2,x               ;
CODE_0DCFBB:        F0 09         BEQ CODE_0DCFC6           ;
CODE_0DCFBD:        A5 09         LDA $09                   ;
CODE_0DCFBF:        4A            LSR A                     ;
CODE_0DCFC0:        B0 03         BCS CODE_0DCFC5           ;
CODE_0DCFC2:        FE 38 02      INC $0238,x               ;
CODE_0DCFC5:        60            RTS                       ;

CODE_0DCFC6:        BD 38 02      LDA $0238,x               ;
CODE_0DCFC9:        69 10         ADC #$10                  ;
CODE_0DCFCB:        CD 37 02      CMP $0237                 ;
CODE_0DCFCE:        90 ED         BCC CODE_0DCFBD           ;
CODE_0DCFD0:        A9 00         LDA #$00                  ;
CODE_0DCFD2:        95 A1         STA $A1,x                 ;
CODE_0DCFD4:        60            RTS                       ;

CODE_0DCFD5:        B5 29         LDA $29,x                 ;
CODE_0DCFD7:        29 20         AND #$20                  ;
CODE_0DCFD9:        F0 03         BEQ CODE_0DCFDE           ;
CODE_0DCFDB:        4C 33 BF      JMP CODE_0DBF33           ;

CODE_0DCFDE:        A9 E8         LDA #$E8                  ;
CODE_0DCFE0:        95 5E         STA $5E,x                 ;
CODE_0DCFE2:        4C A0 BE      JMP CODE_0DBEA0           ;

DATA_0DCFE5:        db $40,$80,$04,$04

CODE_0DCFE9:        B5 29         LDA $29,x                 ;
CODE_0DCFEB:        29 20         AND #$20                  ;
CODE_0DCFED:        F0 03         BEQ CODE_0DCFF2           ;
CODE_0DCFEF:        4C 2D BF      JMP CODE_0DBF2D           ;

CODE_0DCFF2:        85 03         STA $03                   ;
CODE_0DCFF4:        B5 1C         LDA $1C,x                 ;
CODE_0DCFF6:        38            SEC                       ;
CODE_0DCFF7:        E9 0A         SBC #$0A                  ;
CODE_0DCFF9:        A8            TAY                       ;
CODE_0DCFFA:        B9 E5 CF      LDA DATA_0DCFE5,y               ;
CODE_0DCFFD:        85 02         STA $02                   ;
CODE_0DCFFF:        BD 02 04      LDA $0402,x               ;
CODE_0DD002:        38            SEC                       ;
CODE_0DD003:        E5 02         SBC $02                   ;
CODE_0DD005:        9D 02 04      STA $0402,x               ;
CODE_0DD008:        BD 1A 02      LDA $021A,x               ;
CODE_0DD00B:        E9 00         SBC #$00                  ;
CODE_0DD00D:        9D 1A 02      STA $021A,x               ;
CODE_0DD010:        B5 79         LDA $79,x                 ;
CODE_0DD012:        E9 00         SBC #$00                  ;
CODE_0DD014:        95 79         STA $79,x                 ;
CODE_0DD016:        A9 40         LDA #$40                  ;
CODE_0DD018:        85 02         STA $02                   ;
CODE_0DD01A:        E0 02         CPX #$02                  ;
CODE_0DD01C:        90 4B         BCC CODE_0DD069           ;
CODE_0DD01E:        B5 5E         LDA $5E,x                 ;
CODE_0DD020:        C9 10         CMP #$10                  ;
CODE_0DD022:        90 17         BCC CODE_0DD03B           ;
CODE_0DD024:        BD 1D 04      LDA $041D,x               ;
CODE_0DD027:        18            CLC                       ;
CODE_0DD028:        65 02         ADC $02                   ;
CODE_0DD02A:        9D 1D 04      STA $041D,x               ;
CODE_0DD02D:        BD 38 02      LDA $0238,x               ;
CODE_0DD030:        65 03         ADC $03                   ;
CODE_0DD032:        9D 38 02      STA $0238,x               ;
CODE_0DD035:        B5 BC         LDA $BC,x                 ;
CODE_0DD037:        69 00         ADC #$00                  ;
CODE_0DD039:        80 15         BRA CODE_0DD050           ;

CODE_0DD03B:        BD 1D 04      LDA $041D,x               ;
CODE_0DD03E:        38            SEC                       ;
CODE_0DD03F:        E5 02         SBC $02                   ;
CODE_0DD041:        9D 1D 04      STA $041D,x               ;
CODE_0DD044:        BD 38 02      LDA $0238,x               ;
CODE_0DD047:        E5 03         SBC $03                   ;
CODE_0DD049:        9D 38 02      STA $0238,x               ;
CODE_0DD04C:        B5 BC         LDA $BC,x                 ;
CODE_0DD04E:        E9 00         SBC #$00                  ;
CODE_0DD050:        95 BC         STA $BC,x                 ;
CODE_0DD052:        A0 00         LDY #$00                  ;
CODE_0DD054:        BD 38 02      LDA $0238,x               ;
CODE_0DD057:        38            SEC                       ;
CODE_0DD058:        FD 3D 04      SBC $043D,x               ;
CODE_0DD05B:        10 05         BPL CODE_0DD062           ;
CODE_0DD05D:        A0 10         LDY #$10                  ;
CODE_0DD05F:        49 FF         EOR #$FF                  ;
CODE_0DD061:        1A            INC A                     ;
CODE_0DD062:        C9 0F         CMP #$0F                  ;
CODE_0DD064:        90 03         BCC CODE_0DD069           ;
CODE_0DD066:        98            TYA                       ;
CODE_0DD067:        95 5E         STA $5E,x                 ;
CODE_0DD069:        60            RTS                       ;

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

CODE_0DD0DF:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DD0E2:        AD D1 03      LDA $03D1                 ;
CODE_0DD0E5:        29 08         AND #$08                  ;
CODE_0DD0E7:        D0 70         BNE CODE_0DD159           ;
CODE_0DD0E9:        AD 47 07      LDA $0747                 ;
CODE_0DD0EC:        D0 0A         BNE CODE_0DD0F8           ;
CODE_0DD0EE:        BD 88 03      LDA $0388,x               ;
CODE_0DD0F1:        20 E4 D7      JSR CODE_0DD7E4           ;
CODE_0DD0F4:        29 1F         AND #$1F                  ;
CODE_0DD0F6:        95 A1         STA $A1,x                 ;
CODE_0DD0F8:        B5 A1         LDA $A1,x                 ;
CODE_0DD0FA:        B4 1C         LDY $1C,x                 ;
CODE_0DD0FC:        C0 1F         CPY #$1F                  ;
CODE_0DD0FE:        90 0B         BCC CODE_0DD10B           ;
CODE_0DD100:        C9 08         CMP #$08                  ;
CODE_0DD102:        F0 04         BEQ CODE_0DD108           ;
CODE_0DD104:        C9 18         CMP #$18                  ;
CODE_0DD106:        D0 03         BNE CODE_0DD10B           ;
CODE_0DD108:        1A            INC A                     ;
CODE_0DD109:        95 A1         STA $A1,x                 ;
CODE_0DD10B:        85 EF         STA $EF                   ;
CODE_0DD10D:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DD110:        20 3C D2      JSR CODE_0DD23C           ;
CODE_0DD113:        BC 46 0B      LDY $0B46,x               ;
CODE_0DD116:        AD B9 03      LDA $03B9                 ;
CODE_0DD119:        99 01 09      STA $0901,y               ;
CODE_0DD11C:        85 07         STA $07                   ;
CODE_0DD11E:        AD AE 03      LDA $03AE                 ;
CODE_0DD121:        99 00 09      STA $0900,y               ;
CODE_0DD124:        85 06         STA $06                   ;
CODE_0DD126:        A9 01         LDA #$01                  ;
CODE_0DD128:        85 00         STA $00                   ;
CODE_0DD12A:        20 B5 D1      JSR CODE_0DD1B5           ;
CODE_0DD12D:        A0 05         LDY #$05                  ;
CODE_0DD12F:        B5 1C         LDA $1C,x                 ;
CODE_0DD131:        C9 1F         CMP #$1F                  ;
CODE_0DD133:        90 02         BCC CODE_0DD137           ;
CODE_0DD135:        A0 0B         LDY #$0B                  ;
CODE_0DD137:        84 ED         STY $ED                   ;
CODE_0DD139:        64 00         STZ $00                   ;
CODE_0DD13B:        A5 EF         LDA $EF                   ;
CODE_0DD13D:        20 3C D2      JSR CODE_0DD23C           ;
CODE_0DD140:        20 5A D1      JSR CODE_0DD15A           ;
CODE_0DD143:        A5 00         LDA $00                   ;
CODE_0DD145:        C9 04         CMP #$04                  ;
CODE_0DD147:        D0 08         BNE CODE_0DD151           ;
CODE_0DD149:        AC CF 06      LDY $06CF                 ;
CODE_0DD14C:        B9 46 0B      LDA $0B46,y               ;
CODE_0DD14F:        85 06         STA $06                   ;
CODE_0DD151:        E6 00         INC $00                   ;
CODE_0DD153:        A5 00         LDA $00                   ;
CODE_0DD155:        C5 ED         CMP $ED                   ;
CODE_0DD157:        90 E2         BCC CODE_0DD13B           ;
CODE_0DD159:        60            RTS                       ;

CODE_0DD15A:        A5 03         LDA $03                   ;
CODE_0DD15C:        85 05         STA $05                   ;
CODE_0DD15E:        A4 06         LDY $06                   ;
CODE_0DD160:        A5 01         LDA $01                   ;
CODE_0DD162:        46 05         LSR $05                   ;
CODE_0DD164:        B0 03         BCS CODE_0DD169           ;
CODE_0DD166:        49 FF         EOR #$FF                  ;
CODE_0DD168:        1A            INC A                     ;
CODE_0DD169:        18            CLC                       ;
CODE_0DD16A:        6D AE 03      ADC $03AE                 ;
CODE_0DD16D:        99 00 09      STA $0900,y               ;
CODE_0DD170:        85 06         STA $06                   ;
CODE_0DD172:        CD AE 03      CMP $03AE                 ;
CODE_0DD175:        B0 09         BCS CODE_0DD180           ;
CODE_0DD177:        AD AE 03      LDA $03AE                 ;
CODE_0DD17A:        38            SEC                       ;
CODE_0DD17B:        E5 06         SBC $06                   ;
CODE_0DD17D:        4C 84 D1      JMP CODE_0DD184           ;

CODE_0DD180:        38            SEC                       ;
CODE_0DD181:        ED AE 03      SBC $03AE                 ;
CODE_0DD184:        C9 59         CMP #$59                  ;
CODE_0DD186:        90 04         BCC CODE_0DD18C           ;
CODE_0DD188:        A9 F8         LDA #$F8                  ;
CODE_0DD18A:        D0 14         BNE CODE_0DD1A0           ;
CODE_0DD18C:        AD B9 03      LDA $03B9                 ;
CODE_0DD18F:        C9 F8         CMP #$F8                  ;
CODE_0DD191:        F0 0D         BEQ CODE_0DD1A0           ;
CODE_0DD193:        A5 02         LDA $02                   ;
CODE_0DD195:        46 05         LSR $05                   ;
CODE_0DD197:        B0 03         BCS CODE_0DD19C           ;
CODE_0DD199:        49 FF         EOR #$FF                  ;
CODE_0DD19B:        1A            INC A                     ;
CODE_0DD19C:        18            CLC                       ;
CODE_0DD19D:        6D B9 03      ADC $03B9                 ;
CODE_0DD1A0:        99 01 09      STA $0901,y               ;
CODE_0DD1A3:        85 07         STA $07                   ;
CODE_0DD1A5:        C9 F0         CMP #$F0                  ;
CODE_0DD1A7:        90 07         BCC CODE_0DD1B0           ;
CODE_0DD1A9:        A9 01         LDA #$01                  ;
CODE_0DD1AB:        99 00 0D      STA $0D00,y               ;
CODE_0DD1AE:        80 05         BRA CODE_0DD1B5           ;

CODE_0DD1B0:        A9 00         LDA #$00                  ;
CODE_0DD1B2:        99 00 0D      STA $0D00,y               ;
CODE_0DD1B5:        20 7B F4      JSR CODE_0DF47B           ;
CODE_0DD1B8:        98            TYA                       ;
CODE_0DD1B9:        48            PHA                       ;
CODE_0DD1BA:        AD AF 07      LDA $07AF                 ;
CODE_0DD1BD:        0D 47 07      ORA $0747                 ;
CODE_0DD1C0:        D0 71         BNE CODE_0DD233           ;
CODE_0DD1C2:        85 05         STA $05                   ;
CODE_0DD1C4:        A4 BB         LDY $BB                   ;
CODE_0DD1C6:        88            DEY                       ;
CODE_0DD1C7:        D0 6A         BNE CODE_0DD233           ;
CODE_0DD1C9:        AC 37 02      LDY $0237                 ;
CODE_0DD1CC:        AD 54 07      LDA $0754                 ;
CODE_0DD1CF:        D0 05         BNE CODE_0DD1D6           ;
CODE_0DD1D1:        AD 14 07      LDA $0714                 ;
CODE_0DD1D4:        F0 09         BEQ CODE_0DD1DF           ;
CODE_0DD1D6:        E6 05         INC $05                   ;
CODE_0DD1D8:        E6 05         INC $05                   ;
CODE_0DD1DA:        98            TYA                       ;
CODE_0DD1DB:        18            CLC                       ;
CODE_0DD1DC:        69 18         ADC #$18                  ;
CODE_0DD1DE:        A8            TAY                       ;
CODE_0DD1DF:        98            TYA                       ;
CODE_0DD1E0:        38            SEC                       ;
CODE_0DD1E1:        E5 07         SBC $07                   ;
CODE_0DD1E3:        10 03         BPL CODE_0DD1E8           ;
CODE_0DD1E5:        49 FF         EOR #$FF                  ;
CODE_0DD1E7:        1A            INC A                     ;
CODE_0DD1E8:        C9 08         CMP #$08                  ;
CODE_0DD1EA:        B0 1A         BCS CODE_0DD206           ;
CODE_0DD1EC:        A5 06         LDA $06                   ;
CODE_0DD1EE:        C9 F0         CMP #$F0                  ;
CODE_0DD1F0:        B0 14         BCS CODE_0DD206           ;
CODE_0DD1F2:        AD AD 03      LDA $03AD                 ;
CODE_0DD1F5:        18            CLC                       ;
CODE_0DD1F6:        69 04         ADC #$04                  ;
CODE_0DD1F8:        85 04         STA $04                   ;
CODE_0DD1FA:        38            SEC                       ;
CODE_0DD1FB:        E5 06         SBC $06                   ;
CODE_0DD1FD:        10 03         BPL CODE_0DD202           ;
CODE_0DD1FF:        49 FF         EOR #$FF                  ;
CODE_0DD201:        1A            INC A                     ;
CODE_0DD202:        C9 08         CMP #$08                  ;
CODE_0DD204:        90 14         BCC CODE_0DD21A           ;
CODE_0DD206:        A5 05         LDA $05                   ;
CODE_0DD208:        C9 02         CMP #$02                  ;
CODE_0DD20A:        F0 27         BEQ CODE_0DD233           ;
CODE_0DD20C:        A4 05         LDY $05                   ;
CODE_0DD20E:        AD 37 02      LDA $0237                 ;
CODE_0DD211:        18            CLC                       ;
CODE_0DD212:        79 DD D0      ADC DATA_0DD0DD,y               ;
CODE_0DD215:        E6 05         INC $05                   ;
CODE_0DD217:        4C E0 D1      JMP CODE_0DD1E0           ;

CODE_0DD21A:        A2 01         LDX #$01                  ;
CODE_0DD21C:        A5 04         LDA $04                   ;
CODE_0DD21E:        C5 06         CMP $06                   ;
CODE_0DD220:        B0 01         BCS CODE_0DD223           ;
CODE_0DD222:        E8            INX                       ;
CODE_0DD223:        8A            TXA                       ;
CODE_0DD224:        A6 9E         LDX $9E                   ;
CODE_0DD226:        95 47         STA $47,x                 ;
CODE_0DD228:        A2 00         LDX #$00                  ;
CODE_0DD22A:        A5 00         LDA $00                   ;
CODE_0DD22C:        48            PHA                       ;
CODE_0DD22D:        20 82 DE      JSR CODE_0DDE82           ;
CODE_0DD230:        68            PLA                       ;
CODE_0DD231:        85 00         STA $00                   ;
CODE_0DD233:        68            PLA                       ;
CODE_0DD234:        18            CLC                       ;
CODE_0DD235:        69 04         ADC #$04                  ;
CODE_0DD237:        85 06         STA $06                   ;
CODE_0DD239:        A6 9E         LDX $9E                   ;
CODE_0DD23B:        60            RTS                       ;

CODE_0DD23C:        48            PHA                       ;
CODE_0DD23D:        29 0F         AND #$0F                  ;
CODE_0DD23F:        C9 09         CMP #$09                  ;
CODE_0DD241:        90 03         BCC CODE_0DD246           ;
CODE_0DD243:        49 0F         EOR #$0F                  ;
CODE_0DD245:        1A            INC A                     ;
CODE_0DD246:        85 01         STA $01                   ;
CODE_0DD248:        A4 00         LDY $00                   ;
CODE_0DD24A:        B9 D1 D0      LDA DATA_0DD0D1,y               ;
CODE_0DD24D:        18            CLC                       ;
CODE_0DD24E:        65 01         ADC $01                   ;
CODE_0DD250:        A8            TAY                       ;
CODE_0DD251:        B9 6A D0      LDA DATA_0DD06A,y               ;
CODE_0DD254:        85 01         STA $01                   ;
CODE_0DD256:        68            PLA                       ;
CODE_0DD257:        48            PHA                       ;
CODE_0DD258:        18            CLC                       ;
CODE_0DD259:        69 08         ADC #$08                  ;
CODE_0DD25B:        29 0F         AND #$0F                  ;
CODE_0DD25D:        C9 09         CMP #$09                  ;
CODE_0DD25F:        90 03         BCC CODE_0DD264           ;
CODE_0DD261:        49 0F         EOR #$0F                  ;
CODE_0DD263:        1A            INC A                     ;
CODE_0DD264:        85 02         STA $02                   ;
CODE_0DD266:        A4 00         LDY $00                   ;
CODE_0DD268:        B9 D1 D0      LDA DATA_0DD0D1,y               ;
CODE_0DD26B:        18            CLC                       ;
CODE_0DD26C:        65 02         ADC $02                   ;
CODE_0DD26E:        A8            TAY                       ;
CODE_0DD26F:        B9 6A D0      LDA DATA_0DD06A,y               ;
CODE_0DD272:        85 02         STA $02                   ;
CODE_0DD274:        68            PLA                       ;
CODE_0DD275:        4A            LSR A                     ;
CODE_0DD276:        4A            LSR A                     ;
CODE_0DD277:        4A            LSR A                     ;
CODE_0DD278:        A8            TAY                       ;
CODE_0DD279:        B9 CD D0      LDA DATA_0DD0CD,y               ;
CODE_0DD27C:        85 03         STA $03                   ;
CODE_0DD27E:        60            RTS                       ;

DATA_0DD27F:        db $F8,$A0,$70,$BD,$00

DATA_0DD284:        db $00,$00,$00,$20,$20

CODE_0DD289:        B5 29         LDA $29,x                 ;
CODE_0DD28B:        29 20         AND #$20                  ;
CODE_0DD28D:        F0 08         BEQ CODE_0DD297           ;
CODE_0DD28F:        A9 20         LDA #$20                  ;
CODE_0DD291:        9D 57 02      STA $0257,x               ;
CODE_0DD294:        4C 33 BF      JMP CODE_0DBF33           ;

CODE_0DD297:        20 A0 BE      JSR CODE_0DBEA0           ;
CODE_0DD29A:        A0 0D         LDY #$0D                  ;
CODE_0DD29C:        A9 05         LDA #$05                  ;
CODE_0DD29E:        20 37 BF      JSR CODE_0DBF37           ;
CODE_0DD2A1:        BD 3D 04      LDA $043D,x               ;
CODE_0DD2A4:        4A            LSR A                     ;
CODE_0DD2A5:        4A            LSR A                     ;
CODE_0DD2A6:        4A            LSR A                     ;
CODE_0DD2A7:        4A            LSR A                     ;
CODE_0DD2A8:        A8            TAY                       ;
CODE_0DD2A9:        BD 38 02      LDA $0238,x               ;
CODE_0DD2AC:        38            SEC                       ;
CODE_0DD2AD:        F9 7F D2      SBC DATA_0DD27F,y               ;
CODE_0DD2B0:        10 03         BPL CODE_0DD2B5           ;
CODE_0DD2B2:        49 FF         EOR #$FF                  ;
CODE_0DD2B4:        1A            INC A                     ;
CODE_0DD2B5:        C9 08         CMP #$08                  ;
CODE_0DD2B7:        B0 0B         BCS CODE_0DD2C4           ;
CODE_0DD2B9:        BD 3D 04      LDA $043D,x               ;
CODE_0DD2BC:        18            CLC                       ;
CODE_0DD2BD:        69 10         ADC #$10                  ;
CODE_0DD2BF:        4A            LSR A                     ;
CODE_0DD2C0:        4A            LSR A                     ;
CODE_0DD2C1:        4A            LSR A                     ;
CODE_0DD2C2:        4A            LSR A                     ;
CODE_0DD2C3:        A8            TAY                       ;
CODE_0DD2C4:        B9 84 D2      LDA DATA_0DD284,y               ;
CODE_0DD2C7:        9D 57 02      STA $0257,x               ;
CODE_0DD2CA:        60            RTS                       ;

DATA_0DD2CB:        db $15,$30,$40

CODE_0DD2CE:        B5 29         LDA $29,x                 ;
CODE_0DD2D0:        29 20         AND #$20                  ;
CODE_0DD2D2:        F0 03         BEQ CODE_0DD2D7           ;
CODE_0DD2D4:        4C 06 BF      JMP CODE_0DBF06           ;

CODE_0DD2D7:        B5 29         LDA $29,x                 ;
CODE_0DD2D9:        F0 09         BEQ CODE_0DD2E4           ;
CODE_0DD2DB:        74 A1         STZ $A1,x                 ;
CODE_0DD2DD:        9C CB 06      STZ $06CB                 ;
CODE_0DD2E0:        A9 10         LDA #$10                  ;
CODE_0DD2E2:        D0 13         BNE CODE_0DD2F7           ;
CODE_0DD2E4:        A9 12         LDA #$12                  ;
CODE_0DD2E6:        8D CB 06      STA $06CB                 ;
CODE_0DD2E9:        A0 02         LDY #$02                  ;
CODE_0DD2EB:        B9 CB D2      LDA DATA_0DD2CB,y               ;
CODE_0DD2EE:        99 01 00      STA $0001,y               ;
CODE_0DD2F1:        88            DEY                       ;
CODE_0DD2F2:        10 F7         BPL CODE_0DD2EB           ;
CODE_0DD2F4:        20 0E D3      JSR CODE_0DD30E           ;
CODE_0DD2F7:        95 5E         STA $5E,x                 ;
CODE_0DD2F9:        A0 01         LDY #$01                  ;
CODE_0DD2FB:        B5 A1         LDA $A1,x                 ;
CODE_0DD2FD:        29 01         AND #$01                  ;
CODE_0DD2FF:        D0 08         BNE CODE_0DD309           ;
CODE_0DD301:        B5 5E         LDA $5E,x                 ;
CODE_0DD303:        49 FF         EOR #$FF                  ;
CODE_0DD305:        1A            INC A                     ;
CODE_0DD306:        95 5E         STA $5E,x                 ;
CODE_0DD308:        C8            INY                       ;
CODE_0DD309:        94 47         STY $47,x                 ;
CODE_0DD30B:        4C A0 BE      JMP CODE_0DBEA0           ;

CODE_0DD30E:        A0 00         LDY #$00                  ;
CODE_0DD310:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DD313:        10 08         BPL CODE_0DD31D           ;
CODE_0DD315:        C8            INY                       ;
CODE_0DD316:        A5 00         LDA $00                   ;
CODE_0DD318:        49 FF         EOR #$FF                  ;
CODE_0DD31A:        1A            INC A                     ;
CODE_0DD31B:        85 00         STA $00                   ;
CODE_0DD31D:        A5 00         LDA $00                   ;
CODE_0DD31F:        C9 3C         CMP #$3C                  ;
CODE_0DD321:        90 1C         BCC CODE_0DD33F           ;
CODE_0DD323:        A9 3C         LDA #$3C                  ;
CODE_0DD325:        85 00         STA $00                   ;
CODE_0DD327:        B5 1C         LDA $1C,x                 ;
CODE_0DD329:        C9 11         CMP #$11                  ;
CODE_0DD32B:        D0 12         BNE CODE_0DD33F           ;
CODE_0DD32D:        98            TYA                       ;
CODE_0DD32E:        D5 A1         CMP $A1,x                 ;
CODE_0DD330:        F0 0D         BEQ CODE_0DD33F           ;
CODE_0DD332:        B5 A1         LDA $A1,x                 ;
CODE_0DD334:        F0 06         BEQ CODE_0DD33C           ;
CODE_0DD336:        D6 5E         DEC $5E,x                 ;
CODE_0DD338:        B5 5E         LDA $5E,x                 ;
CODE_0DD33A:        D0 3E         BNE CODE_0DD37A           ;
CODE_0DD33C:        98            TYA                       ;
CODE_0DD33D:        95 A1         STA $A1,x                 ;
CODE_0DD33F:        A5 00         LDA $00                   ;
CODE_0DD341:        29 3C         AND #$3C                  ;
CODE_0DD343:        4A            LSR A                     ;
CODE_0DD344:        4A            LSR A                     ;
CODE_0DD345:        85 00         STA $00                   ;
CODE_0DD347:        A0 00         LDY #$00                  ;
CODE_0DD349:        A5 5D         LDA $5D                   ;
CODE_0DD34B:        F0 24         BEQ CODE_0DD371           ;
CODE_0DD34D:        AD 75 07      LDA $0775                 ;
CODE_0DD350:        F0 1F         BEQ CODE_0DD371           ;
CODE_0DD352:        C8            INY                       ;
CODE_0DD353:        A5 5D         LDA $5D                   ;
CODE_0DD355:        C9 19         CMP #$19                  ;
CODE_0DD357:        90 08         BCC CODE_0DD361           ;
CODE_0DD359:        AD 75 07      LDA $0775                 ;
CODE_0DD35C:        C9 02         CMP #$02                  ;
CODE_0DD35E:        90 01         BCC CODE_0DD361           ;
CODE_0DD360:        C8            INY                       ;
CODE_0DD361:        B5 1C         LDA $1C,x                 ;
CODE_0DD363:        C9 12         CMP #$12                  ;
CODE_0DD365:        D0 04         BNE CODE_0DD36B           ;
CODE_0DD367:        A5 5D         LDA $5D                   ;
CODE_0DD369:        D0 06         BNE CODE_0DD371           ;
CODE_0DD36B:        B5 A1         LDA $A1,x                 ;
CODE_0DD36D:        D0 02         BNE CODE_0DD371           ;
CODE_0DD36F:        A0 00         LDY #$00                  ;
CODE_0DD371:        B9 01 00      LDA $0001,y               ;
CODE_0DD374:        A4 00         LDY $00                   ;
CODE_0DD376:        3A            DEC A                     ;
CODE_0DD377:        88            DEY                       ;
CODE_0DD378:        10 FC         BPL CODE_0DD376           ;
CODE_0DD37A:        60            RTS                       ;

DATA_0DD37B:        db $1A,$58,$98,$96,$94,$92,$90,$8E
                    db $8C,$8A,$88,$86,$84,$82,$80

CODE_0DD38A:        DA            PHX                     
CODE_0DD38B:        AE 69 03      LDX $0369                 ;
CODE_0DD38E:        CA            DEX                       ;
CODE_0DD38F:        CA            DEX                       ;
CODE_0DD390:        8E 34 03      STX $0334                 ;
CODE_0DD393:        29 80         AND #$80                  ;
CODE_0DD395:        F0 21         BEQ CODE_0DD3B8           ;
CODE_0DD397:        9E 0D 03      STZ $030D,x               ;
CODE_0DD39A:        A9 01         LDA #$01                  ;
CODE_0DD39C:        9D 00 03      STA $0300,x               ;
CODE_0DD39F:        A5 04         LDA $04                   ;
CODE_0DD3A1:        29 1F         AND #$1F                  ;
CODE_0DD3A3:        0A            ASL A                     ;
CODE_0DD3A4:        0A            ASL A                     ;
CODE_0DD3A5:        0A            ASL A                     ;
CODE_0DD3A6:        85 E4         STA $E4                   ;
CODE_0DD3A8:        A9 00         LDA #$00                  ;
CODE_0DD3AA:        38            SEC                       ;
CODE_0DD3AB:        E5 42         SBC $42                   ;
CODE_0DD3AD:        18            CLC                       ;
CODE_0DD3AE:        65 E4         ADC $E4                   ;
CODE_0DD3B0:        9D 1A 03      STA $031A,x               ;
CODE_0DD3B3:        A9 03         LDA #$03                  ;
CODE_0DD3B5:        9D 27 03      STA $0327,x               ;
CODE_0DD3B8:        FA            PLX                       ;
CODE_0DD3B9:        60            RTS                       ;

CODE_0DD3BA:        AE 68 03      LDX $0368                 ;
CODE_0DD3BD:        B5 1C         LDA $1C,x                 ;
CODE_0DD3BF:        C9 2D         CMP #$2D                  ;
CODE_0DD3C1:        D0 11         BNE CODE_0DD3D4           ;
CODE_0DD3C3:        86 9E         STX $9E                   ;
CODE_0DD3C5:        B5 29         LDA $29,x                 ;
CODE_0DD3C7:        F0 24         BEQ CODE_0DD3ED           ;
CODE_0DD3C9:        29 40         AND #$40                  ;
CODE_0DD3CB:        F0 07         BEQ CODE_0DD3D4           ;
CODE_0DD3CD:        BD 38 02      LDA $0238,x               ;
CODE_0DD3D0:        C9 E0         CMP #$E0                  ;
CODE_0DD3D2:        90 13         BCC CODE_0DD3E7           ;
CODE_0DD3D4:        AD 95 00      LDA $0095                 ;
CODE_0DD3D7:        D0 08         BNE CODE_0DD3E1           ;
CODE_0DD3D9:        A9 0B         LDA #$0B                  ;
CODE_0DD3DB:        8D 02 16      STA $1602                 ;
CODE_0DD3DE:        8D 95 00      STA $0095                 ;
CODE_0DD3E1:        EE 72 07      INC $0772                 ;
CODE_0DD3E4:        4C 62 D4      JMP CODE_0DD462           ;

CODE_0DD3E7:        20 2D BF      JSR CODE_0DBF2D           ;
CODE_0DD3EA:        4C 6E D5      JMP CODE_0DD56E           ;

CODE_0DD3ED:        CE 64 03      DEC $0364                 ;
CODE_0DD3F0:        D0 4F         BNE CODE_0DD441           ;
CODE_0DD3F2:        A9 04         LDA #$04                  ;
CODE_0DD3F4:        8D 64 03      STA $0364                 ;
CODE_0DD3F7:        AD 63 03      LDA $0363                 ;
CODE_0DD3FA:        49 01         EOR #$01                  ;
CODE_0DD3FC:        8D 63 03      STA $0363                 ;
CODE_0DD3FF:        A9 02         LDA #$02                  ;
CODE_0DD401:        85 05         STA $05                   ;
CODE_0DD403:        AC 69 03      LDY $0369                 ;
CODE_0DD406:        B9 7B D3      LDA DATA_0DD37B,y               ;
CODE_0DD409:        85 04         STA $04                   ;
CODE_0DD40B:        20 8A D3      JSR CODE_0DD38A           ;
CODE_0DD40E:        AC 00 17      LDY $1700                 ;
CODE_0DD411:        C8            INY                       ;
CODE_0DD412:        A2 18         LDX #$18                  ;
CODE_0DD414:        20 C6 90      JSR CODE_0D90C6           ;
CODE_0DD417:        A6 9E         LDX $9E                   ;
CODE_0DD419:        20 85 90      JSR CODE_0D9085           ;
CODE_0DD41C:        A9 16         LDA #$16                  ;
CODE_0DD41E:        8D 03 16      STA $1603                 ;
CODE_0DD421:        AD 69 03      LDA $0369                 ;
CODE_0DD424:        D0 0A         BNE CODE_0DD430           ;
CODE_0DD426:        A9 08         LDA #$08                  ;
CODE_0DD428:        8D 4B 01      STA $014B                 ;
CODE_0DD42B:        A9 FF         LDA #$FF                  ;
CODE_0DD42D:        8D 4C 0F      STA $0F4C                 ;
CODE_0DD430:        EE 69 03      INC $0369                 ;
CODE_0DD433:        AD 69 03      LDA $0369                 ;
CODE_0DD436:        C9 0F         CMP #$0F                  ;
CODE_0DD438:        D0 07         BNE CODE_0DD441           ;
CODE_0DD43A:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DD43D:        A9 40         LDA #$40                  ;
CODE_0DD43F:        95 29         STA $29,x                 ;
CODE_0DD441:        4C 6E D5      JMP CODE_0DD56E           ;

DATA_0DD444:        db $21,$41,$11,$31

CODE_0DD448:        B5 29         LDA $29,x                 ;
CODE_0DD44A:        29 20         AND #$20                  ;
CODE_0DD44C:        F0 22         BEQ CODE_0DD470           ;
CODE_0DD44E:        BD 38 02      LDA $0238,x               ;
CODE_0DD451:        C9 E0         CMP #$E0                  ;
CODE_0DD453:        90 92         BCC CODE_0DD3E7           ;
CODE_0DD455:        AD C4 0E      LDA $0EC4                 ;
CODE_0DD458:        D0 08         BNE CODE_0DD462           ;
CODE_0DD45A:        AD 01 02      LDA $0201                 ;
CODE_0DD45D:        C9 02         CMP #$02                  ;
CODE_0DD45F:        F0 01         BEQ CODE_0DD462           ;
CODE_0DD461:        60            RTS                       ;

CODE_0DD462:        A2 08         LDX #$08                  ;
CODE_0DD464:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DD467:        CA            DEX                       ;
CODE_0DD468:        10 FA         BPL CODE_0DD464           ;
CODE_0DD46A:        8D CB 06      STA $06CB                 ;
CODE_0DD46D:        A6 9E         LDX $9E                   ;
CODE_0DD46F:        60            RTS                       ;

CODE_0DD470:        9C CB 06      STZ $06CB                 ;
CODE_0DD473:        AD 47 07      LDA $0747                 ;
CODE_0DD476:        F0 03         BEQ CODE_0DD47B           ;
CODE_0DD478:        4C 2B D5      JMP CODE_0DD52B           ;

CODE_0DD47B:        AD 63 03      LDA $0363                 ;
CODE_0DD47E:        10 03         BPL CODE_0DD483           ;
CODE_0DD480:        4C 00 D5      JMP CODE_0DD500           ;

CODE_0DD483:        CE 64 03      DEC $0364                 ;
CODE_0DD486:        D0 0D         BNE CODE_0DD495           ;
CODE_0DD488:        A9 20         LDA #$20                  ;
CODE_0DD48A:        8D 64 03      STA $0364                 ;
CODE_0DD48D:        AD 63 03      LDA $0363                 ;
CODE_0DD490:        49 01         EOR #$01                  ;
CODE_0DD492:        8D 63 03      STA $0363                 ;
CODE_0DD495:        A5 09         LDA $09                   ;
CODE_0DD497:        29 0F         AND #$0F                  ;
CODE_0DD499:        D0 04         BNE CODE_0DD49F           ;
CODE_0DD49B:        A9 02         LDA #$02                  ;
CODE_0DD49D:        95 47         STA $47,x                 ;
CODE_0DD49F:        BD 92 07      LDA $0792,x               ;
CODE_0DD4A2:        F0 1D         BEQ CODE_0DD4C1           ;
CODE_0DD4A4:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DD4A7:        10 18         BPL CODE_0DD4C1           ;
CODE_0DD4A9:        A9 01         LDA #$01                  ;
CODE_0DD4AB:        95 47         STA $47,x                 ;
CODE_0DD4AD:        A9 02         LDA #$02                  ;
CODE_0DD4AF:        8D 65 03      STA $0365                 ;
CODE_0DD4B2:        A9 20         LDA #$20                  ;
CODE_0DD4B4:        9D 92 07      STA $0792,x               ;
CODE_0DD4B7:        8D 9C 07      STA $079C                 ;
CODE_0DD4BA:        BD 1A 02      LDA $021A,x               ;
CODE_0DD4BD:        C9 B0         CMP #$B0                  ;
CODE_0DD4BF:        B0 3F         BCS CODE_0DD500           ;
CODE_0DD4C1:        A5 09         LDA $09                   ;
CODE_0DD4C3:        29 03         AND #$03                  ;
CODE_0DD4C5:        D0 39         BNE CODE_0DD500           ;
CODE_0DD4C7:        BD 1A 02      LDA $021A,x               ;
CODE_0DD4CA:        CD 66 03      CMP $0366                 ;
CODE_0DD4CD:        D0 0C         BNE CODE_0DD4DB           ;
CODE_0DD4CF:        BD B7 07      LDA $07B7,x               ;
CODE_0DD4D2:        29 03         AND #$03                  ;
CODE_0DD4D4:        A8            TAY                       ;
CODE_0DD4D5:        B9 44 D4      LDA DATA_0DD444,y               ;
CODE_0DD4D8:        8D DC 06      STA $06DC                 ;
CODE_0DD4DB:        BD 1A 02      LDA $021A,x               ;
CODE_0DD4DE:        18            CLC                       ;
CODE_0DD4DF:        6D 65 03      ADC $0365                 ;
CODE_0DD4E2:        9D 1A 02      STA $021A,x               ;
CODE_0DD4E5:        B4 47         LDY $47,x                 ;
CODE_0DD4E7:        C0 01         CPY #$01                  ;
CODE_0DD4E9:        F0 15         BEQ CODE_0DD500           ;
CODE_0DD4EB:        A0 FF         LDY #$FF                  ;
CODE_0DD4ED:        38            SEC                       ;
CODE_0DD4EE:        ED 66 03      SBC $0366                 ;
CODE_0DD4F1:        10 05         BPL CODE_0DD4F8           ;
CODE_0DD4F3:        49 FF         EOR #$FF                  ;
CODE_0DD4F5:        1A            INC A                     ;
CODE_0DD4F6:        A0 01         LDY #$01                  ;
CODE_0DD4F8:        CD DC 06      CMP $06DC                 ;
CODE_0DD4FB:        90 03         BCC CODE_0DD500           ;
CODE_0DD4FD:        8C 65 03      STY $0365                 ;
CODE_0DD500:        BD 92 07      LDA $0792,x               ;
CODE_0DD503:        D0 29         BNE CODE_0DD52E           ;
CODE_0DD505:        20 2D BF      JSR CODE_0DBF2D           ;
CODE_0DD508:        AD 5F 07      LDA $075F                 ;
CODE_0DD50B:        C9 05         CMP #$05                  ;
CODE_0DD50D:        90 09         BCC CODE_0DD518           ;
CODE_0DD50F:        A5 09         LDA $09                   ;
CODE_0DD511:        29 03         AND #$03                  ;
CODE_0DD513:        D0 03         BNE CODE_0DD518           ;
CODE_0DD515:        20 61 B9      JSR CODE_0DB961           ;
CODE_0DD518:        BD 38 02      LDA $0238,x               ;
CODE_0DD51B:        C9 80         CMP #$80                  ;
CODE_0DD51D:        90 1D         BCC CODE_0DD53C           ;
CODE_0DD51F:        BD B7 07      LDA $07B7,x               ;
CODE_0DD522:        29 03         AND #$03                  ;
CODE_0DD524:        A8            TAY                       ;
CODE_0DD525:        B9 44 D4      LDA DATA_0DD444,y               ;
CODE_0DD528:        9D 92 07      STA $0792,x               ;
CODE_0DD52B:        4C 3C D5      JMP CODE_0DD53C           ;

CODE_0DD52E:        C9 01         CMP #$01                  ;
CODE_0DD530:        D0 0A         BNE CODE_0DD53C           ;
CODE_0DD532:        DE 38 02      DEC $0238,x               ;
CODE_0DD535:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DD538:        A9 FE         LDA #$FE                  ;
CODE_0DD53A:        95 A1         STA $A1,x                 ;
CODE_0DD53C:        AD 5F 07      LDA $075F                 ;
CODE_0DD53F:        C9 07         CMP #$07                  ;
CODE_0DD541:        F0 04         BEQ CODE_0DD547           ;
CODE_0DD543:        C9 05         CMP #$05                  ;
CODE_0DD545:        B0 27         BCS CODE_0DD56E           ;
CODE_0DD547:        AD 9C 07      LDA $079C                 ;
CODE_0DD54A:        D0 22         BNE CODE_0DD56E           ;
CODE_0DD54C:        A9 20         LDA #$20                  ;
CODE_0DD54E:        8D 9C 07      STA $079C                 ;
CODE_0DD551:        AD 63 03      LDA $0363                 ;
CODE_0DD554:        49 80         EOR #$80                  ;
CODE_0DD556:        8D 63 03      STA $0363                 ;
CODE_0DD559:        30 E1         BMI CODE_0DD53C           ;
CODE_0DD55B:        20 EA D5      JSR CODE_0DD5EA           ;
CODE_0DD55E:        AC CC 06      LDY $06CC                 ;
CODE_0DD561:        F0 03         BEQ CODE_0DD566           ;
CODE_0DD563:        38            SEC                       ;
CODE_0DD564:        E9 10         SBC #$10                  ;
CODE_0DD566:        8D 9C 07      STA $079C                 ;
CODE_0DD569:        A9 15         LDA #$15                  ;
CODE_0DD56B:        8D CB 06      STA $06CB                 ;
CODE_0DD56E:        20 C5 D5      JSR CODE_0DD5C5           ;
CODE_0DD571:        A0 10         LDY #$10                  ;
CODE_0DD573:        B5 47         LDA $47,x                 ;
CODE_0DD575:        4A            LSR A                     ;
CODE_0DD576:        90 02         BCC CODE_0DD57A           ;
CODE_0DD578:        A0 F0         LDY #$F0                  ;
CODE_0DD57A:        98            TYA                       ;
CODE_0DD57B:        18            CLC                       ;
CODE_0DD57C:        7D 1A 02      ADC $021A,x               ;
CODE_0DD57F:        AC CF 06      LDY $06CF                 ;
CODE_0DD582:        99 1A 02      STA $021A,y               ;
CODE_0DD585:        BD 38 02      LDA $0238,x               ;
CODE_0DD588:        18            CLC                       ;
CODE_0DD589:        69 08         ADC #$08                  ;
CODE_0DD58B:        99 38 02      STA $0238,y               ;
CODE_0DD58E:        B5 29         LDA $29,x                 ;
CODE_0DD590:        99 29 00      STA $0029,y               ;
CODE_0DD593:        B5 47         LDA $47,x                 ;
CODE_0DD595:        99 47 00      STA $0047,y               ;
CODE_0DD598:        A5 9E         LDA $9E                   ;
CODE_0DD59A:        48            PHA                       ;
CODE_0DD59B:        AE CF 06      LDX $06CF                 ;
CODE_0DD59E:        86 9E         STX $9E                   ;
CODE_0DD5A0:        A5 97         LDA $97                   ;
CODE_0DD5A2:        D0 10         BNE CODE_0DD5B4           ;
CODE_0DD5A4:        AD C4 0E      LDA $0EC4                 ;
CODE_0DD5A7:        F0 04         BEQ CODE_0DD5AD           ;
CODE_0DD5A9:        A9 05         LDA #$05                  ;
CODE_0DD5AB:        80 02         BRA CODE_0DD5AF           ;

CODE_0DD5AD:        A9 04         LDA #$04                  ;
CODE_0DD5AF:        8D 02 16      STA $1602                 ;
CODE_0DD5B2:        85 97         STA $97                   ;
CODE_0DD5B4:        A9 2D         LDA #$2D                  ;
CODE_0DD5B6:        95 1C         STA $1C,x                 ;
CODE_0DD5B8:        A9 20         LDA #$20                  ;
CODE_0DD5BA:        9D 57 02      STA $0257,x               ;
CODE_0DD5BD:        68            PLA                       ;
CODE_0DD5BE:        85 9E         STA $9E                   ;
CODE_0DD5C0:        AA            TAX                       ;
CODE_0DD5C1:        9C 6A 03      STZ $036A                 ;
CODE_0DD5C4:        60            RTS                       ;

CODE_0DD5C5:        EE 6A 03      INC $036A                 ;
CODE_0DD5C8:        20 11 CC      JSR CODE_0DCC11           ;
CODE_0DD5CB:        B5 29         LDA $29,x                 ;
CODE_0DD5CD:        D0 F5         BNE CODE_0DD5C4           ;
CODE_0DD5CF:        A9 0A         LDA #$0A                  ;
CODE_0DD5D1:        9D 90 04      STA $0490,x               ;
CODE_0DD5D4:        20 48 E9      JSR CODE_0DE948           ;
CODE_0DD5D7:        AD 70 07      LDA $0770                 ;
CODE_0DD5DA:        C9 02         CMP #$02                  ;
CODE_0DD5DC:        F0 03         BEQ CODE_0DD5E1           ;
CODE_0DD5DE:        4C 7D DD      JMP CODE_0DDD7D           ;

CODE_0DD5E1:        60            RTS                       ;

DATA_0DD5E2:        db $BF,$40,$BF,$BF,$BF,$40,$40,$BF

CODE_0DD5EA:        AC 67 03      LDY $0367                 ;
CODE_0DD5ED:        EE 67 03      INC $0367                 ;
CODE_0DD5F0:        AD 67 03      LDA $0367                 ;
CODE_0DD5F3:        29 07         AND #$07                  ;
CODE_0DD5F5:        8D 67 03      STA $0367                 ;
CODE_0DD5F8:        B9 E2 D5      LDA DATA_0DD5E2,y               ;
CODE_0DD5FB:        60            RTS                       ;

CODE_0DD5FC:        EC 4D 0F      CPX $0F4D                 ;
CODE_0DD5FF:        D0 0C         BNE CODE_0DD60D           ;
CODE_0DD601:        AD 4C 0F      LDA $0F4C                 ;
CODE_0DD604:        F0 07         BEQ CODE_0DD60D           ;
CODE_0DD606:        AD 4B 01      LDA $014B                 ;
CODE_0DD609:        C9 06         CMP #$06                  ;
CODE_0DD60B:        F0 44         BEQ CODE_0DD651           ;
CODE_0DD60D:        AD 47 07      LDA $0747                 ;
CODE_0DD610:        D0 34         BNE CODE_0DD646           ;
CODE_0DD612:        A9 40         LDA #$40                  ;
CODE_0DD614:        AC CC 06      LDY $06CC                 ;
CODE_0DD617:        F0 02         BEQ CODE_0DD61B           ;
CODE_0DD619:        A9 60         LDA #$60                  ;
CODE_0DD61B:        85 00         STA $00                   ;
CODE_0DD61D:        BD 02 04      LDA $0402,x               ;
CODE_0DD620:        38            SEC                       ;
CODE_0DD621:        E5 00         SBC $00                   ;
CODE_0DD623:        9D 02 04      STA $0402,x               ;
CODE_0DD626:        BD 1A 02      LDA $021A,x               ;
CODE_0DD629:        E9 01         SBC #$01                  ;
CODE_0DD62B:        9D 1A 02      STA $021A,x               ;
CODE_0DD62E:        B5 79         LDA $79,x                 ;
CODE_0DD630:        E9 00         SBC #$00                  ;
CODE_0DD632:        95 79         STA $79,x                 ;
CODE_0DD634:        BC 1D 04      LDY $041D,x               ;
CODE_0DD637:        BD 38 02      LDA $0238,x               ;
CODE_0DD63A:        D9 51 C8      CMP DATA_0DC851,y               ;
CODE_0DD63D:        F0 07         BEQ CODE_0DD646           ;
CODE_0DD63F:        18            CLC                       ;
CODE_0DD640:        7D 3D 04      ADC $043D,x               ;
CODE_0DD643:        9D 38 02      STA $0238,x               ;
CODE_0DD646:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DD649:        B5 29         LDA $29,x                 ;
CODE_0DD64B:        D0 AE         BNE CODE_0DD5FB           ;
CODE_0DD64D:        22 E9 D3 0F   JSL CODE_0FD3E9           ;
CODE_0DD651:        60            RTS                       ;

CODE_0DD652:        D6 A1         DEC $A1,x                 ;
CODE_0DD654:        D0 17         BNE CODE_0DD66D           ;
CODE_0DD656:        A9 08         LDA #$08                  ;
CODE_0DD658:        95 A1         STA $A1,x                 ;
CODE_0DD65A:        F6 5E         INC $5E,x                 ;
CODE_0DD65C:        B5 5E         LDA $5E,x                 ;
CODE_0DD65E:        C9 01         CMP #$01                  ;
CODE_0DD660:        D0 07         BNE CODE_0DD669           ;
CODE_0DD662:        A9 29         LDA #$29                  ;
CODE_0DD664:        8D 00 16      STA $1600                 ;
CODE_0DD667:        80 04         BRA CODE_0DD66D           ;

CODE_0DD669:        C9 04         CMP #$04                  ;
CODE_0DD66B:        B0 18         BCS CODE_0DD685           ;
CODE_0DD66D:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DD670:        AD B9 03      LDA $03B9                 ;
CODE_0DD673:        8D BA 03      STA $03BA                 ;
CODE_0DD676:        AD AE 03      LDA $03AE                 ;
CODE_0DD679:        8D AF 03      STA $03AF                 ;
CODE_0DD67C:        BC 46 0B      LDY $0B46,x               ;
CODE_0DD67F:        B5 5E         LDA $5E,x                 ;
CODE_0DD681:        20 38 F5      JSR CODE_0DF538           ;
CODE_0DD684:        60            RTS                       ;

CODE_0DD685:        74 10         STZ $10,x                 ;
CODE_0DD687:        BC 46 0B      LDY $0B46,x               ;
CODE_0DD68A:        A9 03         LDA #$03                  ;
CODE_0DD68C:        99 00 0D      STA $0D00,y               ;
CODE_0DD68F:        99 04 0D      STA $0D04,y               ;
CODE_0DD692:        99 08 0D      STA $0D08,y               ;
CODE_0DD695:        99 0C 0D      STA $0D0C,y               ;
CODE_0DD698:        A9 05         LDA #$05                  ;
CODE_0DD69A:        8D 49 01      STA $0149                 ;
CODE_0DD69D:        4C 0E D7      JMP CODE_0DD70E           ;

CODE_0DD6A0:        9C CB 06      STZ $06CB                 ;
CODE_0DD6A3:        AD 46 07      LDA $0746                 ;
CODE_0DD6A6:        C9 05         CMP #$05                  ;
CODE_0DD6A8:        B0 3F         BCS CODE_0DD6E9           ;
CODE_0DD6AA:        20 93 96      JSR CODE_0D9693           ;

PNTR_0DD6AD:        dw CODE_0DD6E9
                    dw CODE_0DD6B7
                    dw CODE_0DD6F4
                    dw CODE_0DD71F
                    dw CODE_0DD772

CODE_0DD6B7:        AD EB 07      LDA $07EB                 ;
CODE_0DD6BA:        CD DF 07      CMP $07DF                 ;
CODE_0DD6BD:        D0 10         BNE CODE_0DD6CF           ;
CODE_0DD6BF:        29 01         AND #$01                  ;
CODE_0DD6C1:        F0 06         BEQ CODE_0DD6C9           ;
CODE_0DD6C3:        A0 03         LDY #$03                  ;
CODE_0DD6C5:        A9 03         LDA #$03                  ;
CODE_0DD6C7:        D0 0A         BNE CODE_0DD6D3           ;
CODE_0DD6C9:        A0 00         LDY #$00                  ;
CODE_0DD6CB:        A9 06         LDA #$06                  ;
CODE_0DD6CD:        D0 04         BNE CODE_0DD6D3           ;
CODE_0DD6CF:        A0 00         LDY #$00                  ;
CODE_0DD6D1:        A9 FF         LDA #$FF                  ;
CODE_0DD6D3:        8D D7 06      STA $06D7                 ;
CODE_0DD6D6:        94 29         STY $29,x                 ;
CODE_0DD6D8:        AD 43 21      LDA $2143                 ;
CODE_0DD6DB:        29 7F         AND #$7F                  ;
CODE_0DD6DD:        C9 4B         CMP #$4B                  ;
CODE_0DD6DF:        F0 05         BEQ CODE_0DD6E6           ;
CODE_0DD6E1:        A9 4B         LDA #$4B                  ;
CODE_0DD6E3:        8D 03 16      STA $1603                 ;
CODE_0DD6E6:        EE 46 07      INC $0746                 ;
CODE_0DD6E9:        60            RTS                       ;

CODE_0DD6EA:        A9 4C         LDA #$4C                  ;
CODE_0DD6EC:        8D 03 16      STA $1603                 ;
CODE_0DD6EF:        8D 1A 0E      STA $0E1A                 ;
CODE_0DD6F2:        80 F2         BRA CODE_0DD6E6           ;

CODE_0DD6F4:        AD E9 07      LDA $07E9                 ;
CODE_0DD6F7:        0D EA 07      ORA $07EA                 ;
CODE_0DD6FA:        0D EB 07      ORA $07EB                 ;
CODE_0DD6FD:        F0 EB         BEQ CODE_0DD6EA           ;
CODE_0DD6FF:        A0 23         LDY #$23                  ;
CODE_0DD701:        A9 FF         LDA #$FF                  ;
CODE_0DD703:        8D 4A 01      STA $014A                 ;
CODE_0DD706:        20 AA 98      JSR CODE_0D98AA           ;
CODE_0DD709:        A9 05         LDA #$05                  ;
CODE_0DD70B:        8D 4A 01      STA $014A                 ;
CODE_0DD70E:        A0 0B         LDY #$0B                  ;
CODE_0DD710:        20 AA 98      JSR CODE_0D98AA           ;
CODE_0DD713:        AD 53 07      LDA $0753                 ;
CODE_0DD716:        0A            ASL A                     ;
CODE_0DD717:        0A            ASL A                     ;
CODE_0DD718:        0A            ASL A                     ;
CODE_0DD719:        0A            ASL A                     ;
CODE_0DD71A:        09 04         ORA #$04                  ;
CODE_0DD71C:        4C 30 BB      JMP CODE_0DBB30           ;

CODE_0DD71F:        A9 01         LDA #$01                  ;
CODE_0DD721:        85 1B         STA $1B                   ;
CODE_0DD723:        BD 38 02      LDA $0238,x               ;
CODE_0DD726:        C9 72         CMP #$72                  ;
CODE_0DD728:        90 05         BCC CODE_0DD72F           ;
CODE_0DD72A:        DE 38 02      DEC $0238,x               ;
CODE_0DD72D:        80 0C         BRA CODE_0DD73B           ;

CODE_0DD72F:        AD D7 06      LDA $06D7                 ;
CODE_0DD732:        F0 32         BEQ CODE_0DD766           ;
CODE_0DD734:        30 30         BMI CODE_0DD766           ;
CODE_0DD736:        A9 16         LDA #$16                  ;
CODE_0DD738:        8D CB 06      STA $06CB                 ;
CODE_0DD73B:        20 4F FD      JSR CODE_0DFD4F           ;
CODE_0DD73E:        BC 46 0B      LDY $0B46,x               ;
CODE_0DD741:        AD B9 03      LDA $03B9                 ;
CODE_0DD744:        99 01 09      STA $0901,y               ;
CODE_0DD747:        A5 09         LDA $09                   ;
CODE_0DD749:        29 18         AND #$18                  ;
CODE_0DD74B:        4A            LSR A                     ;
CODE_0DD74C:        4A            LSR A                     ;
CODE_0DD74D:        18            CLC                       ;
CODE_0DD74E:        69 04         ADC #$04                  ;
CODE_0DD750:        99 02 09      STA $0902,y               ;
CODE_0DD753:        A9 0B         LDA #$0B                  ;
CODE_0DD755:        99 03 09      STA $0903,y               ;
CODE_0DD758:        AD AE 03      LDA $03AE                 ;
CODE_0DD75B:        99 00 09      STA $0900,y               ;
CODE_0DD75E:        A9 02         LDA #$02                  ;
CODE_0DD760:        99 00 0D      STA $0D00,y               ;
CODE_0DD763:        A6 9E         LDX $9E                   ;
CODE_0DD765:        60            RTS                       ;

CODE_0DD766:        20 3B D7      JSR CODE_0DD73B           ;
CODE_0DD769:        A9 06         LDA #$06                  ;
CODE_0DD76B:        9D A2 07      STA $07A2,x               ;
CODE_0DD76E:        EE 46 07      INC $0746                 ;
CODE_0DD771:        60            RTS                       ;

CODE_0DD772:        20 3B D7      JSR CODE_0DD73B           ;
CODE_0DD775:        BD A2 07      LDA $07A2,x               ;
CODE_0DD778:        D0 05         BNE CODE_0DD77F           ;
CODE_0DD77A:        AD B1 07      LDA $07B1                 ;
CODE_0DD77D:        F0 EF         BEQ CODE_0DD76E           ;
CODE_0DD77F:        60            RTS                       ;

CODE_0DD780:        B5 29         LDA $29,x                 ;
CODE_0DD782:        D0 5A         BNE CODE_0DD7DE           ;
CODE_0DD784:        BD 92 07      LDA $0792,x               ;
CODE_0DD787:        D0 55         BNE CODE_0DD7DE           ;
CODE_0DD789:        B5 A1         LDA $A1,x                 ;
CODE_0DD78B:        D0 20         BNE CODE_0DD7AD           ;
CODE_0DD78D:        B5 5E         LDA $5E,x                 ;
CODE_0DD78F:        30 13         BMI CODE_0DD7A4           ;
CODE_0DD791:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DD794:        10 07         BPL CODE_0DD79D           ;
CODE_0DD796:        A5 00         LDA $00                   ;
CODE_0DD798:        49 FF         EOR #$FF                  ;
CODE_0DD79A:        1A            INC A                     ;
CODE_0DD79B:        85 00         STA $00                   ;
CODE_0DD79D:        A5 00         LDA $00                   ;
CODE_0DD79F:        CD 25 0F      CMP $0F25                 ;
CODE_0DD7A2:        90 3A         BCC CODE_0DD7DE           ;
CODE_0DD7A4:        B5 5E         LDA $5E,x                 ;
CODE_0DD7A6:        49 FF         EOR #$FF                  ;
CODE_0DD7A8:        1A            INC A                     ;
CODE_0DD7A9:        95 5E         STA $5E,x                 ;
CODE_0DD7AB:        F6 A1         INC $A1,x                 ;
CODE_0DD7AD:        BD 3D 04      LDA $043D,x               ;
CODE_0DD7B0:        B4 5E         LDY $5E,x                 ;
CODE_0DD7B2:        10 03         BPL CODE_0DD7B7           ;
CODE_0DD7B4:        BD 1D 04      LDA $041D,x               ;
CODE_0DD7B7:        85 00         STA $00                   ;
CODE_0DD7B9:        AD 24 0F      LDA $0F24                 ;
CODE_0DD7BC:        C9 2C         CMP #$2C                  ;
CODE_0DD7BE:        F0 05         BEQ CODE_0DD7C5           ;
CODE_0DD7C0:        A5 09         LDA $09                   ;
CODE_0DD7C2:        4A            LSR A                     ;
CODE_0DD7C3:        90 19         BCC CODE_0DD7DE           ;
CODE_0DD7C5:        AD 47 07      LDA $0747                 ;
CODE_0DD7C8:        D0 14         BNE CODE_0DD7DE           ;
CODE_0DD7CA:        BD 38 02      LDA $0238,x               ;
CODE_0DD7CD:        18            CLC                       ;
CODE_0DD7CE:        75 5E         ADC $5E,x                 ;
CODE_0DD7D0:        9D 38 02      STA $0238,x               ;
CODE_0DD7D3:        C5 00         CMP $00                   ;
CODE_0DD7D5:        D0 07         BNE CODE_0DD7DE           ;
CODE_0DD7D7:        74 A1         STZ $A1,x                 ;
CODE_0DD7D9:        A9 40         LDA #$40                  ;
CODE_0DD7DB:        9D 92 07      STA $0792,x               ;
CODE_0DD7DE:        A9 00         LDA #$00                  ;
CODE_0DD7E0:        9D 57 02      STA $0257,x               ;
CODE_0DD7E3:        60            RTS                       ;

CODE_0DD7E4:        85 07         STA $07                   ;
CODE_0DD7E6:        BD 03 02      LDA $0203,x               ;
CODE_0DD7E9:        D0 0E         BNE CODE_0DD7F9           ;
CODE_0DD7EB:        A0 18         LDY #$18                  ;
CODE_0DD7ED:        B5 5E         LDA $5E,x                 ;
CODE_0DD7EF:        18            CLC                       ;
CODE_0DD7F0:        65 07         ADC $07                   ;
CODE_0DD7F2:        95 5E         STA $5E,x                 ;
CODE_0DD7F4:        B5 A1         LDA $A1,x                 ;
CODE_0DD7F6:        69 00         ADC #$00                  ;
CODE_0DD7F8:        60            RTS                       ;

CODE_0DD7F9:        A0 08         LDY #$08                  ;
CODE_0DD7FB:        B5 5E         LDA $5E,x                 ;
CODE_0DD7FD:        38            SEC                       ;
CODE_0DD7FE:        E5 07         SBC $07                   ;
CODE_0DD800:        95 5E         STA $5E,x                 ;
CODE_0DD802:        B5 A1         LDA $A1,x                 ;
CODE_0DD804:        E9 00         SBC #$00                  ;
CODE_0DD806:        60            RTS                       ;

CODE_0DD807:        B5 BC         LDA $BC,x                 ;
CODE_0DD809:        C9 03         CMP #$03                  ;
CODE_0DD80B:        D0 03         BNE CODE_0DD810           ;
CODE_0DD80D:        4C EA CC      JMP CODE_0DCCEA           ;

CODE_0DD810:        B5 29         LDA $29,x                 ;
CODE_0DD812:        10 01         BPL CODE_0DD815           ;
CODE_0DD814:        60            RTS                       ;

CODE_0DD815:        A8            TAY                       ;
CODE_0DD816:        B9 1C 00      LDA $001C,y               ;
CODE_0DD819:        C9 24         CMP #$24                  ;
CODE_0DD81B:        D0 F7         BNE CODE_0DD814           ;
CODE_0DD81D:        BD A2 03      LDA $03A2,x               ;
CODE_0DD820:        85 00         STA $00                   ;
CODE_0DD822:        B5 47         LDA $47,x                 ;
CODE_0DD824:        F0 03         BEQ CODE_0DD829           ;
CODE_0DD826:        4C 34 DA      JMP CODE_0DDA34           ;

CODE_0DD829:        A9 2D         LDA #$2D                  ;
CODE_0DD82B:        DD 38 02      CMP $0238,x               ;
CODE_0DD82E:        90 10         BCC CODE_0DD840           ;
CODE_0DD830:        C4 00         CPY $00                   ;
CODE_0DD832:        F0 09         BEQ CODE_0DD83D           ;
CODE_0DD834:        18            CLC                       ;
CODE_0DD835:        69 02         ADC #$02                  ;
CODE_0DD837:        9D 38 02      STA $0238,x               ;
CODE_0DD83A:        4C 2A DA      JMP CODE_0DDA2A           ;

CODE_0DD83D:        4C 11 DA      JMP CODE_0DDA11           ;

CODE_0DD840:        D9 38 02      CMP $0238,y               ;
CODE_0DD843:        90 0D         BCC CODE_0DD852           ;
CODE_0DD845:        E4 00         CPX $00                   ;
CODE_0DD847:        F0 F4         BEQ CODE_0DD83D           ;
CODE_0DD849:        18            CLC                       ;
CODE_0DD84A:        69 02         ADC #$02                  ;
CODE_0DD84C:        99 38 02      STA $0238,y               ;
CODE_0DD84F:        4C 2A DA      JMP CODE_0DDA2A           ;

CODE_0DD852:        BD 38 02      LDA $0238,x               ;
CODE_0DD855:        48            PHA                       ;
CODE_0DD856:        BD A2 03      LDA $03A2,x               ;
CODE_0DD859:        10 18         BPL CODE_0DD873           ;
CODE_0DD85B:        BD 3D 04      LDA $043D,x               ;
CODE_0DD85E:        18            CLC                       ;
CODE_0DD85F:        69 05         ADC #$05                  ;
CODE_0DD861:        85 00         STA $00                   ;
CODE_0DD863:        B5 A1         LDA $A1,x                 ;
CODE_0DD865:        69 00         ADC #$00                  ;
CODE_0DD867:        30 1A         BMI CODE_0DD883           ;
CODE_0DD869:        D0 0C         BNE CODE_0DD877           ;
CODE_0DD86B:        A5 00         LDA $00                   ;
CODE_0DD86D:        C9 0B         CMP #$0B                  ;
CODE_0DD86F:        90 0C         BCC CODE_0DD87D           ;
CODE_0DD871:        B0 04         BCS CODE_0DD877           ;
CODE_0DD873:        C5 9E         CMP $9E                   ;
CODE_0DD875:        F0 0C         BEQ CODE_0DD883           ;
CODE_0DD877:        20 5A BF      JSR CODE_0DBF5A           ;
CODE_0DD87A:        4C 86 D8      JMP CODE_0DD886           ;

CODE_0DD87D:        20 2A DA      JSR CODE_0DDA2A           ;
CODE_0DD880:        4C 86 D8      JMP CODE_0DD886           ;

CODE_0DD883:        20 56 BF      JSR CODE_0DBF56           ;
CODE_0DD886:        B4 29         LDY $29,x                 ;
CODE_0DD888:        68            PLA                       ;
CODE_0DD889:        38            SEC                       ;
CODE_0DD88A:        FD 38 02      SBC $0238,x               ;
CODE_0DD88D:        18            CLC                       ;
CODE_0DD88E:        79 38 02      ADC $0238,y               ;
CODE_0DD891:        99 38 02      STA $0238,y               ;
CODE_0DD894:        BD A2 03      LDA $03A2,x               ;
CODE_0DD897:        30 04         BMI CODE_0DD89D           ;
CODE_0DD899:        AA            TAX                       ;
CODE_0DD89A:        20 1B E2      JSR CODE_0DE21B           ;
CODE_0DD89D:        A4 9E         LDY $9E                   ;
CODE_0DD89F:        B9 A1 00      LDA $00A1,y               ;
CODE_0DD8A2:        19 3D 04      ORA $043D,y               ;
CODE_0DD8A5:        D0 03         BNE CODE_0DD8AA           ;
CODE_0DD8A7:        4C B9 D9      JMP CODE_0DD9B9           ;

CODE_0DD8AA:        B9 A1 00      LDA $00A1,y               ;
CODE_0DD8AD:        48            PHA                       ;
CODE_0DD8AE:        48            PHA                       ;
CODE_0DD8AF:        48            PHA                       ;
CODE_0DD8B0:        20 BC D9      JSR CODE_0DD9BC           ;
CODE_0DD8B3:        A5 42         LDA $42                   ;
CODE_0DD8B5:        4A            LSR A                     ;
CODE_0DD8B6:        4A            LSR A                     ;
CODE_0DD8B7:        4A            LSR A                     ;
CODE_0DD8B8:        85 F3         STA $F3                   ;
CODE_0DD8BA:        A5 43         LDA $43                   ;
CODE_0DD8BC:        29 01         AND #$01                  ;
CODE_0DD8BE:        0A            ASL A                     ;
CODE_0DD8BF:        0A            ASL A                     ;
CODE_0DD8C0:        09 20         ORA #$20                  ;
CODE_0DD8C2:        85 F4         STA $F4                   ;
CODE_0DD8C4:        A5 F3         LDA $F3                   ;
CODE_0DD8C6:        18            CLC                       ;
CODE_0DD8C7:        69 1F         ADC #$1F                  ;
CODE_0DD8C9:        AA            TAX                       ;
CODE_0DD8CA:        29 1F         AND #$1F                  ;
CODE_0DD8CC:        85 F5         STA $F5                   ;
CODE_0DD8CE:        8A            TXA                       ;
CODE_0DD8CF:        29 20         AND #$20                  ;
CODE_0DD8D1:        F0 06         BEQ CODE_0DD8D9           ;
CODE_0DD8D3:        A5 F4         LDA $F4                   ;
CODE_0DD8D5:        49 04         EOR #$04                  ;
CODE_0DD8D7:        85 F6         STA $F6                   ;
CODE_0DD8D9:        C2 30         REP #$30                  ;
CODE_0DD8DB:        A5 00         LDA $00                   ;
CODE_0DD8DD:        29 1F 24      AND #$241F                ;
CODE_0DD8E0:        C5 F3         CMP $F3                   ;
CODE_0DD8E2:        B0 07         BCS CODE_0DD8EB           ;
CODE_0DD8E4:        C5 F5         CMP $F5                   ;
CODE_0DD8E6:        90 03         BCC CODE_0DD8EB           ;
CODE_0DD8E8:        4C 44 D9      JMP CODE_0DD944           ;

CODE_0DD8EB:        98            TYA                       ;
CODE_0DD8EC:        29 FF 00      AND #$00FF                ;
CODE_0DD8EF:        A8            TAY                       ;
CODE_0DD8F0:        AE 00 17      LDX $1700                 ;
CODE_0DD8F3:        A5 00         LDA $00                   ;
CODE_0DD8F5:        29 FF 1F      AND #$1FFF                ;
CODE_0DD8F8:        EB            XBA                       ;
CODE_0DD8F9:        9D 02 17      STA $1702,x               ;
CODE_0DD8FC:        A9 00 03      LDA #$0300                ;
CODE_0DD8FF:        9D 04 17      STA $1704,x               ;
CODE_0DD902:        B9 A1 00      LDA $00A1,y               ;
CODE_0DD905:        29 80 00      AND #$0080                ;
CODE_0DD908:        D0 23         BNE CODE_0DD92D           ;
CODE_0DD90A:        BD 02 17      LDA $1702,x               ;
CODE_0DD90D:        29 03 F0      AND #$F003                ;
CODE_0DD910:        C9 00 A0      CMP #$A000                ;
CODE_0DD913:        F0 05         BEQ CODE_0DD91A           ;
CODE_0DD915:        C9 00 B0      CMP #$B000                ;
CODE_0DD918:        D0 05         BNE CODE_0DD91F           ;
CODE_0DD91A:        A9 5C 18      LDA #$185C                ;
CODE_0DD91D:        80 03         BRA CODE_0DD922           ;

CODE_0DD91F:        A9 A2 10      LDA #$10A2                ;
CODE_0DD922:        9D 06 17      STA $1706,x               ;
CODE_0DD925:        A9 A3 18      LDA #$18A3                ;
CODE_0DD928:        9D 08 17      STA $1708,x               ;
CODE_0DD92B:        80 09         BRA CODE_0DD936           ;

CODE_0DD92D:        A9 24 00      LDA #$0024                ;
CODE_0DD930:        9D 06 17      STA $1706,x               ;
CODE_0DD933:        9D 08 17      STA $1708,x               ;
CODE_0DD936:        A9 FF FF      LDA #$FFFF                ;
CODE_0DD939:        9D 0A 17      STA $170A,x               ;
CODE_0DD93C:        8A            TXA                       ;
CODE_0DD93D:        18            CLC                       ;
CODE_0DD93E:        69 08 00      ADC #$0008                ;
CODE_0DD941:        8D 00 17      STA $1700                 ;
CODE_0DD944:        E2 30         SEP #$30                  ;
CODE_0DD946:        B9 29 00      LDA $0029,y               ;
CODE_0DD949:        A8            TAY                       ;
CODE_0DD94A:        68            PLA                       ;
CODE_0DD94B:        49 FF         EOR #$FF                  ;
CODE_0DD94D:        20 BC D9      JSR CODE_0DD9BC           ;
CODE_0DD950:        C2 30         REP #$30                  ;
CODE_0DD952:        A5 00         LDA $00                   ;
CODE_0DD954:        29 1F 24      AND #$241F                ;
CODE_0DD957:        C5 F3         CMP $F3                   ;
CODE_0DD959:        B0 07         BCS CODE_0DD962           ;
CODE_0DD95B:        C5 F5         CMP $F5                   ;
CODE_0DD95D:        90 03         BCC CODE_0DD962           ;
CODE_0DD95F:        4C B6 D9      JMP CODE_0DD9B6           ;

CODE_0DD962:        AE 00 17      LDX $1700                 ;
CODE_0DD965:        A5 00         LDA $00                   ;
CODE_0DD967:        29 FF 1F      AND #$1FFF                ;
CODE_0DD96A:        EB            XBA                       ;
CODE_0DD96B:        9D 02 17      STA $1702,x               ;
CODE_0DD96E:        A9 00 03      LDA #$0300                ;
CODE_0DD971:        9D 04 17      STA $1704,x               ;
CODE_0DD974:        68            PLA                       ;
CODE_0DD975:        29 80 00      AND #$0080                ;
CODE_0DD978:        F0 23         BEQ CODE_0DD99D           ;
CODE_0DD97A:        A9 A2 10      LDA #$10A2                ;
CODE_0DD97D:        9D 06 17      STA $1706,x               ;
CODE_0DD980:        BD 02 17      LDA $1702,x               ;
CODE_0DD983:        29 03 F0      AND #$F003                ;
CODE_0DD986:        C9 00 A0      CMP #$A000                ;
CODE_0DD989:        F0 05         BEQ CODE_0DD990           ;
CODE_0DD98B:        C9 00 B0      CMP #$B000                ;
CODE_0DD98E:        D0 05         BNE CODE_0DD995           ;
CODE_0DD990:        A9 3F 18      LDA #$183F                ;
CODE_0DD993:        80 03         BRA CODE_0DD998           ;

CODE_0DD995:        A9 A3 18      LDA #$18A3                ;
CODE_0DD998:        9D 08 17      STA $1708,x               ;
CODE_0DD99B:        80 09         BRA CODE_0DD9A6           ;

CODE_0DD99D:        A9 24 00      LDA #$0024                ;
CODE_0DD9A0:        9D 06 17      STA $1706,x               ;
CODE_0DD9A3:        9D 08 17      STA $1708,x               ;
CODE_0DD9A6:        A9 FF FF      LDA #$FFFF                ;
CODE_0DD9A9:        9D 0A 17      STA $170A,x               ;
CODE_0DD9AC:        8A            TXA                       ;
CODE_0DD9AD:        18            CLC                       ;
CODE_0DD9AE:        69 08 00      ADC #$0008                ;
CODE_0DD9B1:        8D 00 17      STA $1700                 ;
CODE_0DD9B4:        80 01         BRA CODE_0DD9B7           ;

CODE_0DD9B6:        68            PLA                       ;
CODE_0DD9B7:        E2 30         SEP #$30                  ;
CODE_0DD9B9:        A6 9E         LDX $9E                   ;
CODE_0DD9BB:        60            RTS                       ;

CODE_0DD9BC:        48            PHA                       ;
CODE_0DD9BD:        B9 1A 02      LDA $021A,y               ;
CODE_0DD9C0:        18            CLC                       ;
CODE_0DD9C1:        69 08         ADC #$08                  ;
CODE_0DD9C3:        AE CC 06      LDX $06CC                 ;
CODE_0DD9C6:        D0 03         BNE CODE_0DD9CB           ;
CODE_0DD9C8:        18            CLC                       ;
CODE_0DD9C9:        69 10         ADC #$10                  ;
CODE_0DD9CB:        48            PHA                       ;
CODE_0DD9CC:        B9 79 00      LDA $0079,y               ;
CODE_0DD9CF:        69 00         ADC #$00                  ;
CODE_0DD9D1:        85 02         STA $02                   ;
CODE_0DD9D3:        68            PLA                       ;
CODE_0DD9D4:        29 F0         AND #$F0                  ;
CODE_0DD9D6:        4A            LSR A                     ;
CODE_0DD9D7:        4A            LSR A                     ;
CODE_0DD9D8:        4A            LSR A                     ;
CODE_0DD9D9:        85 00         STA $00                   ;
CODE_0DD9DB:        BE 38 02      LDX $0238,y               ;
CODE_0DD9DE:        68            PLA                       ;
CODE_0DD9DF:        10 05         BPL CODE_0DD9E6           ;
CODE_0DD9E1:        8A            TXA                       ;
CODE_0DD9E2:        18            CLC                       ;
CODE_0DD9E3:        69 08         ADC #$08                  ;
CODE_0DD9E5:        AA            TAX                       ;
CODE_0DD9E6:        8A            TXA                       ;
CODE_0DD9E7:        0A            ASL A                     ;
CODE_0DD9E8:        2A            ROL A                     ;
CODE_0DD9E9:        48            PHA                       ;
CODE_0DD9EA:        2A            ROL A                     ;
CODE_0DD9EB:        29 03         AND #$03                  ;
CODE_0DD9ED:        09 20         ORA #$20                  ;
CODE_0DD9EF:        85 01         STA $01                   ;
CODE_0DD9F1:        A5 02         LDA $02                   ;
CODE_0DD9F3:        29 01         AND #$01                  ;
CODE_0DD9F5:        0A            ASL A                     ;
CODE_0DD9F6:        0A            ASL A                     ;
CODE_0DD9F7:        05 01         ORA $01                   ;
CODE_0DD9F9:        85 01         STA $01                   ;
CODE_0DD9FB:        68            PLA                       ;
CODE_0DD9FC:        29 E0         AND #$E0                  ;
CODE_0DD9FE:        18            CLC                       ;
CODE_0DD9FF:        65 00         ADC $00                   ;
CODE_0DDA01:        85 00         STA $00                   ;
CODE_0DDA03:        B9 38 02      LDA $0238,y               ;
CODE_0DDA06:        C9 E8         CMP #$E8                  ;
CODE_0DDA08:        90 06         BCC CODE_0DDA10           ;
CODE_0DDA0A:        A5 00         LDA $00                   ;
CODE_0DDA0C:        29 BF         AND #$BF                  ;
CODE_0DDA0E:        85 00         STA $00                   ;
CODE_0DDA10:        60            RTS                       ;

CODE_0DDA11:        BB            TYX                       ;
CODE_0DDA12:        20 E1 FD      JSR CODE_0DFDE1           ;
CODE_0DDA15:        A9 06         LDA #$06                  ;
CODE_0DDA17:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DDA1A:        AD AD 03      LDA $03AD                 ;
CODE_0DDA1D:        9D 1A 01      STA $011A,x               ;
CODE_0DDA20:        AD 37 02      LDA $0237                 ;
CODE_0DDA23:        9D 24 01      STA $0124,x               ;
CODE_0DDA26:        A9 01         LDA #$01                  ;
CODE_0DDA28:        95 47         STA $47,x                 ;
CODE_0DDA2A:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DDA2D:        99 A1 00      STA $00A1,y               ;
CODE_0DDA30:        99 3D 04      STA $043D,y               ;
CODE_0DDA33:        60            RTS                       ;

CODE_0DDA34:        98            TYA                       ;
CODE_0DDA35:        48            PHA                       ;
CODE_0DDA36:        20 0E BF      JSR CODE_0DBF0E           ;
CODE_0DDA39:        68            PLA                       ;
CODE_0DDA3A:        AA            TAX                       ;
CODE_0DDA3B:        20 0E BF      JSR CODE_0DBF0E           ;
CODE_0DDA3E:        A6 9E         LDX $9E                   ;
CODE_0DDA40:        BD A2 03      LDA $03A2,x               ;
CODE_0DDA43:        30 04         BMI CODE_0DDA49           ;
CODE_0DDA45:        AA            TAX                       ;
CODE_0DDA46:        20 1B E2      JSR CODE_0DE21B           ;
CODE_0DDA49:        A6 9E         LDX $9E                   ;
CODE_0DDA4B:        60            RTS                       ;

CODE_0DDA4C:        B5 A1         LDA $A1,x                 ;
CODE_0DDA4E:        1D 3D 04      ORA $043D,x               ;
CODE_0DDA51:        D0 16         BNE CODE_0DDA69           ;
CODE_0DDA53:        9D 1D 04      STA $041D,x               ;
CODE_0DDA56:        BD 38 02      LDA $0238,x               ;
CODE_0DDA59:        DD 02 04      CMP $0402,x               ;
CODE_0DDA5C:        B0 0B         BCS CODE_0DDA69           ;
CODE_0DDA5E:        A5 09         LDA $09                   ;
CODE_0DDA60:        29 07         AND #$07                  ;
CODE_0DDA62:        D0 03         BNE CODE_0DDA67           ;
CODE_0DDA64:        FE 38 02      INC $0238,x               ;
CODE_0DDA67:        80 10         BRA CODE_0DDA79           ;

CODE_0DDA69:        BD 38 02      LDA $0238,x               ;
CODE_0DDA6C:        D5 5E         CMP $5E,x                 ;
CODE_0DDA6E:        90 06         BCC CODE_0DDA76           ;
CODE_0DDA70:        20 5A BF      JSR CODE_0DBF5A           ;
CODE_0DDA73:        4C 79 DA      JMP CODE_0DDA79           ;

CODE_0DDA76:        20 56 BF      JSR CODE_0DBF56           ;
CODE_0DDA79:        BD A2 03      LDA $03A2,x               ;
CODE_0DDA7C:        30 03         BMI CODE_0DDA81           ;
CODE_0DDA7E:        20 1B E2      JSR CODE_0DE21B           ;
CODE_0DDA81:        60            RTS                       ;

CODE_0DDA82:        A9 0E         LDA #$0E                  ;
CODE_0DDA84:        20 E5 CE      JSR CODE_0DCEE5           ;
CODE_0DDA87:        20 04 CF      JSR CODE_0DCF04           ;
CODE_0DDA8A:        BD A2 03      LDA $03A2,x               ;
CODE_0DDA8D:        30 1D         BMI CODE_0DDAAC           ;
CODE_0DDA8F:        AD 19 02      LDA $0219                 ;
CODE_0DDA92:        18            CLC                       ;
CODE_0DDA93:        65 00         ADC $00                   ;
CODE_0DDA95:        8D 19 02      STA $0219                 ;
CODE_0DDA98:        A5 78         LDA $78                   ;
CODE_0DDA9A:        A4 00         LDY $00                   ;
CODE_0DDA9C:        30 04         BMI CODE_0DDAA2           ;
CODE_0DDA9E:        69 00         ADC #$00                  ;
CODE_0DDAA0:        80 02         BRA CODE_0DDAA4           ;

CODE_0DDAA2:        E9 00         SBC #$00                  ;
CODE_0DDAA4:        85 78         STA $78                   ;
CODE_0DDAA6:        8C A1 03      STY $03A1                 ;
CODE_0DDAA9:        20 1B E2      JSR CODE_0DE21B           ;
CODE_0DDAAC:        60            RTS                       ;

CODE_0DDAAD:        BD A2 03      LDA $03A2,x               ;
CODE_0DDAB0:        30 06         BMI CODE_0DDAB8           ;
CODE_0DDAB2:        20 29 BF      JSR CODE_0DBF29           ;
CODE_0DDAB5:        20 1B E2      JSR CODE_0DE21B           ;
CODE_0DDAB8:        60            RTS                       ;

CODE_0DDAB9:        20 A0 BE      JSR CODE_0DBEA0           ;
CODE_0DDABC:        85 00         STA $00                   ;
CODE_0DDABE:        BD A2 03      LDA $03A2,x               ;
CODE_0DDAC1:        30 07         BMI CODE_0DDACA           ;
CODE_0DDAC3:        A9 10         LDA #$10                  ;
CODE_0DDAC5:        95 5E         STA $5E,x                 ;
CODE_0DDAC7:        20 8F DA      JSR CODE_0DDA8F           ;
CODE_0DDACA:        60            RTS                       ;

CODE_0DDACB:        20 D6 DA      JSR CODE_0DDAD6           ;
CODE_0DDACE:        4C 79 DA      JMP CODE_0DDA79           ;

CODE_0DDAD1:        20 D6 DA      JSR CODE_0DDAD6           ;
CODE_0DDAD4:        80 18         BRA CODE_0DDAEE           ;

CODE_0DDAD6:        AD 47 07      LDA $0747                 ;
CODE_0DDAD9:        D0 20         BNE CODE_0DDAFB           ;
CODE_0DDADB:        BD 1D 04      LDA $041D,x               ;
CODE_0DDADE:        18            CLC                       ;
CODE_0DDADF:        7D 3D 04      ADC $043D,x               ;
CODE_0DDAE2:        9D 1D 04      STA $041D,x               ;
CODE_0DDAE5:        BD 38 02      LDA $0238,x               ;
CODE_0DDAE8:        75 A1         ADC $A1,x                 ;
CODE_0DDAEA:        9D 38 02      STA $0238,x               ;
CODE_0DDAED:        60            RTS                       ;

CODE_0DDAEE:        BD A2 03      LDA $03A2,x               ;
CODE_0DDAF1:        F0 08         BEQ CODE_0DDAFB           ;
CODE_0DDAF3:        C9 FF         CMP #$FF                  ;
CODE_0DDAF5:        D0 01         BNE CODE_0DDAF8           ;
CODE_0DDAF7:        60            RTS                       ;

CODE_0DDAF8:        20 0C E2      JSR CODE_0DE20C           ;
CODE_0DDAFB:        60            RTS                       ;

CODE_0DDAFC:        B5 1C         LDA $1C,x                 ;
CODE_0DDAFE:        C9 14         CMP #$14                  ;
CODE_0DDB00:        F0 60         BEQ CODE_0DDB62           ;
CODE_0DDB02:        AD 1C 07      LDA $071C                 ;
CODE_0DDB05:        B4 1C         LDY $1C,x                 ;
CODE_0DDB07:        C0 05         CPY #$05                  ;
CODE_0DDB09:        F0 08         BEQ CODE_0DDB13           ;
CODE_0DDB0B:        C0 04         CPY #$04                  ;
CODE_0DDB0D:        F0 04         BEQ CODE_0DDB13           ;
CODE_0DDB0F:        C0 0D         CPY #$0D                  ;
CODE_0DDB11:        D0 02         BNE CODE_0DDB15           ;
CODE_0DDB13:        69 38         ADC #$38                  ;
CODE_0DDB15:        E9 48         SBC #$48                  ;
CODE_0DDB17:        85 01         STA $01                   ;
CODE_0DDB19:        AD 1A 07      LDA $071A                 ;
CODE_0DDB1C:        E9 00         SBC #$00                  ;
CODE_0DDB1E:        85 00         STA $00                   ;
CODE_0DDB20:        AD 1D 07      LDA $071D                 ;
CODE_0DDB23:        18            CLC                       ;
CODE_0DDB24:        69 48         ADC #$48                  ;
CODE_0DDB26:        85 03         STA $03                   ;
CODE_0DDB28:        AD 1B 07      LDA $071B                 ;
CODE_0DDB2B:        69 00         ADC #$00                  ;
CODE_0DDB2D:        85 02         STA $02                   ;
CODE_0DDB2F:        BD 1A 02      LDA $021A,x               ;
CODE_0DDB32:        C5 01         CMP $01                   ;
CODE_0DDB34:        B5 79         LDA $79,x                 ;
CODE_0DDB36:        E5 00         SBC $00                   ;
CODE_0DDB38:        30 25         BMI CODE_0DDB5F           ;
CODE_0DDB3A:        BD 1A 02      LDA $021A,x               ;
CODE_0DDB3D:        C5 03         CMP $03                   ;
CODE_0DDB3F:        B5 79         LDA $79,x                 ;
CODE_0DDB41:        E5 02         SBC $02                   ;
CODE_0DDB43:        30 1D         BMI CODE_0DDB62           ;
CODE_0DDB45:        B5 29         LDA $29,x                 ;
CODE_0DDB47:        C9 05         CMP #$05                  ;
CODE_0DDB49:        F0 17         BEQ CODE_0DDB62           ;
CODE_0DDB4B:        C0 0D         CPY #$0D                  ;
CODE_0DDB4D:        F0 13         BEQ CODE_0DDB62           ;
CODE_0DDB4F:        C0 04         CPY #$04                  ;
CODE_0DDB51:        F0 0F         BEQ CODE_0DDB62           ;
CODE_0DDB53:        C0 30         CPY #$30                  ;
CODE_0DDB55:        F0 0B         BEQ CODE_0DDB62           ;
CODE_0DDB57:        C0 31         CPY #$31                  ;
CODE_0DDB59:        F0 07         BEQ CODE_0DDB62           ;
CODE_0DDB5B:        C0 32         CPY #$32                  ;
CODE_0DDB5D:        F0 03         BEQ CODE_0DDB62           ;
CODE_0DDB5F:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DDB62:        60            RTS                       ;

CODE_0DDB63:        AD C4 0E      LDA $0EC4                 ;
CODE_0DDB66:        F0 06         BEQ CODE_0DDB6E           ;
CODE_0DDB68:        EE 01 02      INC $0201                 ;
CODE_0DDB6B:        9C 4C 0F      STZ $0F4C                 ;
CODE_0DDB6E:        A9 2D         LDA #$2D                  ;
CODE_0DDB70:        60            RTS                       ;

DATA_0DDB71:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_0DDB80:        B5 33         LDA $33,x                 ;
CODE_0DDB82:        F0 58         BEQ CODE_0DDBDC           ;
CODE_0DDB84:        0A            ASL A                     ;
CODE_0DDB85:        B0 55         BCS CODE_0DDBDC           ;
CODE_0DDB87:        A5 09         LDA $09                   ;
CODE_0DDB89:        4A            LSR A                     ;
CODE_0DDB8A:        B0 50         BCS CODE_0DDBDC           ;
CODE_0DDB8C:        8A            TXA                       ;
CODE_0DDB8D:        0A            ASL A                     ;
CODE_0DDB8E:        0A            ASL A                     ;
CODE_0DDB8F:        18            CLC                       ;
CODE_0DDB90:        69 2C         ADC #$2C                  ;
CODE_0DDB92:        A8            TAY                       ;
CODE_0DDB93:        A2 08         LDX #$08                  ;
CODE_0DDB95:        86 01         STX $01                   ;
CODE_0DDB97:        98            TYA                       ;
CODE_0DDB98:        48            PHA                       ;
CODE_0DDB99:        B5 29         LDA $29,x                 ;
CODE_0DDB9B:        29 20         AND #$20                  ;
CODE_0DDB9D:        D0 36         BNE CODE_0DDBD5           ;
CODE_0DDB9F:        B5 10         LDA $10,x                 ;
CODE_0DDBA1:        F0 32         BEQ CODE_0DDBD5           ;
CODE_0DDBA3:        B5 1C         LDA $1C,x                 ;
CODE_0DDBA5:        C9 24         CMP #$24                  ;
CODE_0DDBA7:        90 04         BCC CODE_0DDBAD           ;
CODE_0DDBA9:        C9 2B         CMP #$2B                  ;
CODE_0DDBAB:        90 28         BCC CODE_0DDBD5           ;
CODE_0DDBAD:        C9 06         CMP #$06                  ;
CODE_0DDBAF:        D0 06         BNE CODE_0DDBB7           ;
CODE_0DDBB1:        B5 29         LDA $29,x                 ;
CODE_0DDBB3:        C9 02         CMP #$02                  ;
CODE_0DDBB5:        B0 1E         BCS CODE_0DDBD5           ;
CODE_0DDBB7:        BD D9 03      LDA $03D9,x               ;
CODE_0DDBBA:        D0 19         BNE CODE_0DDBD5           ;
CODE_0DDBBC:        86 E4         STX $E4                   ;
CODE_0DDBBE:        8A            TXA                       ;
CODE_0DDBBF:        0A            ASL A                     ;
CODE_0DDBC0:        0A            ASL A                     ;
CODE_0DDBC1:        18            CLC                       ;
CODE_0DDBC2:        69 04         ADC #$04                  ;
CODE_0DDBC4:        AA            TAX                       ;
CODE_0DDBC5:        20 35 EA      JSR CODE_0DEA35           ;
CODE_0DDBC8:        A6 9E         LDX $9E                   ;
CODE_0DDBCA:        90 09         BCC CODE_0DDBD5           ;
CODE_0DDBCC:        A9 80         LDA #$80                  ;
CODE_0DDBCE:        95 33         STA $33,x                 ;
CODE_0DDBD0:        A6 01         LDX $01                   ;
CODE_0DDBD2:        20 EC DB      JSR CODE_0DDBEC           ;
CODE_0DDBD5:        68            PLA                       ;
CODE_0DDBD6:        A8            TAY                       ;
CODE_0DDBD7:        A6 01         LDX $01                   ;
CODE_0DDBD9:        CA            DEX                       ;
CODE_0DDBDA:        10 B9         BPL CODE_0DDB95           ;
CODE_0DDBDC:        A6 9E         LDX $9E                   ;
CODE_0DDBDE:        60            RTS                       ;

DATA_0DDBDF:        db $06,$00,$02,$12,$11,$07,$05,$2D
                    db $2D,$01,$0A,$08,$2D

CODE_0DDBEC:        20 4F FD      JSR CODE_0DFD4F
CODE_0DDBEF:        A9 03         LDA #$03                  ;
CODE_0DDBF1:        8D 00 16      STA $1600                 ;
CODE_0DDBF4:        A6 01         LDX $01                   ;
CODE_0DDBF6:        B5 10         LDA $10,x                 ;
CODE_0DDBF8:        10 0B         BPL CODE_0DDC05           ;
CODE_0DDBFA:        29 0F         AND #$0F                  ;
CODE_0DDBFC:        AA            TAX                       ;
CODE_0DDBFD:        B5 1C         LDA $1C,x                 ;
CODE_0DDBFF:        C9 2D         CMP #$2D                  ;
CODE_0DDC01:        F0 0F         BEQ CODE_0DDC12           ;
CODE_0DDC03:        A6 01         LDX $01                   ;
CODE_0DDC05:        B5 1C         LDA $1C,x                 ;
CODE_0DDC07:        C9 02         CMP #$02                  ;
CODE_0DDC09:        D0 03         BNE CODE_0DDC0E           ;
CODE_0DDC0B:        4C D8 DC      JMP CODE_0DDCD8           ;

CODE_0DDC0E:        C9 2D         CMP #$2D                  ;
CODE_0DDC10:        D0 7A         BNE CODE_0DDC8C           ;
CODE_0DDC12:        A9 08         LDA #$08                  ;
CODE_0DDC14:        8D 4B 01      STA $014B                 ;
CODE_0DDC17:        A9 18         LDA #$18                  ;
CODE_0DDC19:        8D 4C 0F      STA $0F4C                 ;
CODE_0DDC1C:        CE 83 02      DEC $0283                 ;
CODE_0DDC1F:        F0 15         BEQ CODE_0DDC36           ;
CODE_0DDC21:        AD 83 02      LDA $0283                 ;
CODE_0DDC24:        C9 01         CMP #$01                  ;
CODE_0DDC26:        F0 03         BEQ CODE_0DDC2B           ;
CODE_0DDC28:        4C D8 DC      JMP CODE_0DDCD8           ;

CODE_0DDC2B:        9C CA 03      STZ $03CA                 ;
CODE_0DDC2E:        A9 01         LDA #$01                  ;
CODE_0DDC30:        8D CB 03      STA $03CB                 ;
CODE_0DDC33:        4C D8 DC      JMP CODE_0DDCD8           ;

CODE_0DDC36:        A9 08         LDA #$08                  ;
CODE_0DDC38:        8D 4B 01      STA $014B                 ;
CODE_0DDC3B:        A9 FF         LDA #$FF                  ;
CODE_0DDC3D:        8D 4C 0F      STA $0F4C                 ;
CODE_0DDC40:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DDC43:        95 5E         STA $5E,x                 ;
CODE_0DDC45:        9C CB 06      STZ $06CB                 ;
CODE_0DDC48:        A9 FE         LDA #$FE                  ;
CODE_0DDC4A:        95 A1         STA $A1,x                 ;
CODE_0DDC4C:        AC 5F 07      LDY $075F                 ;
CODE_0DDC4F:        B9 DF DB      LDA DATA_0DDBDF,y               ;
CODE_0DDC52:        95 1C         STA $1C,x                 ;
CODE_0DDC54:        8E FC 02      STX $02FC                 ;
CODE_0DDC57:        EE FC 02      INC $02FC                 ;
CODE_0DDC5A:        C9 2D         CMP #$2D                  ;
CODE_0DDC5C:        F0 1E         BEQ CODE_0DDC7C           ;
CODE_0DDC5E:        DA            PHX                       ;
CODE_0DDC5F:        A5 DB         LDA $DB                   ;
CODE_0DDC61:        C9 21         CMP #$21                  ;
CODE_0DDC63:        F0 16         BEQ CODE_0DDC7B           ;
CODE_0DDC65:        8E 77 00      STX $0077                 ;
CODE_0DDC68:        EE 77 00      INC $0077                 ;
CODE_0DDC6B:        A2 08         LDX #$08                  ;
CODE_0DDC6D:        B5 1C         LDA $1C,x                 ;
CODE_0DDC6F:        CA            DEX                       ;
CODE_0DDC70:        30 09         BMI CODE_0DDC7B           ;
CODE_0DDC72:        C9 2D         CMP #$2D                  ;
CODE_0DDC74:        D0 F7         BNE CODE_0DDC6D           ;
CODE_0DDC76:        E8            INX                       ;
CODE_0DDC77:        74 10         STZ $10,x                 ;
CODE_0DDC79:        74 1C         STZ $1C,x                 ;
CODE_0DDC7B:        FA            PLX                       ;
CODE_0DDC7C:        A9 20         LDA #$20                  ;
CODE_0DDC7E:        C0 03         CPY #$03                  ;
CODE_0DDC80:        B0 02         BCS CODE_0DDC84           ;
CODE_0DDC82:        09 03         ORA #$03                  ;
CODE_0DDC84:        95 29         STA $29,x                 ;
CODE_0DDC86:        A6 01         LDX $01                   ;
CODE_0DDC88:        A9 09         LDA #$09                  ;
CODE_0DDC8A:        D0 40         BNE CODE_0DDCCC           ;
CODE_0DDC8C:        C9 08         CMP #$08                  ;
CODE_0DDC8E:        F0 48         BEQ CODE_0DDCD8           ;
CODE_0DDC90:        C9 0C         CMP #$0C                  ;
CODE_0DDC92:        F0 44         BEQ CODE_0DDCD8           ;
CODE_0DDC94:        C9 15         CMP #$15                  ;
CODE_0DDC96:        B0 40         BCS CODE_0DDCD8           ;
CODE_0DDC98:        B5 1C         LDA $1C,x                 ;
CODE_0DDC9A:        C9 04         CMP #$04                  ;
CODE_0DDC9C:        F0 04         BEQ CODE_0DDCA2           ;
CODE_0DDC9E:        C9 0D         CMP #$0D                  ;
CODE_0DDCA0:        D0 0F         BNE CODE_0DDCB1           ;
CODE_0DDCA2:        A8            TAY                       ;
CODE_0DDCA3:        BD 38 02      LDA $0238,x               ;
CODE_0DDCA6:        69 18         ADC #$18                  ;
CODE_0DDCA8:        C0 04         CPY #$04                  ;
CODE_0DDCAA:        D0 02         BNE CODE_0DDCAE           ;
CODE_0DDCAC:        E9 31         SBC #$31                  ;
CODE_0DDCAE:        9D 38 02      STA $0238,x               ;
CODE_0DDCB1:        20 E7 E6      JSR CODE_0DE6E7           ;
CODE_0DDCB4:        B5 29         LDA $29,x                 ;
CODE_0DDCB6:        29 1F         AND #$1F                  ;
CODE_0DDCB8:        09 20         ORA #$20                  ;
CODE_0DDCBA:        95 29         STA $29,x                 ;
CODE_0DDCBC:        A9 02         LDA #$02                  ;
CODE_0DDCBE:        B4 1C         LDY $1C,x                 ;
CODE_0DDCC0:        C0 05         CPY #$05                  ;
CODE_0DDCC2:        D0 02         BNE CODE_0DDCC6           ;
CODE_0DDCC4:        A9 06         LDA #$06                  ;
CODE_0DDCC6:        C0 06         CPY #$06                  ;
CODE_0DDCC8:        D0 02         BNE CODE_0DDCCC           ;
CODE_0DDCCA:        A9 01         LDA #$01                  ;
CODE_0DDCCC:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DDCCF:        C9 03         CMP #$03                  ;
CODE_0DDCD1:        F0 05         BEQ CODE_0DDCD8           ;
CODE_0DDCD3:        A9 03         LDA #$03                  ;
CODE_0DDCD5:        8D 00 16      STA $1600                 ;
CODE_0DDCD8:        60            RTS                       ;

CODE_0DDCD9:        A5 09         LDA $09                   ;
CODE_0DDCDB:        4A            LSR A                     ;
CODE_0DDCDC:        90 39         BCC CODE_0DDD17           ;
CODE_0DDCDE:        AD D0 03      LDA $03D0                 ;
CODE_0DDCE1:        0D 47 07      ORA $0747                 ;
CODE_0DDCE4:        0D D6 03      ORA $03D6                 ;
CODE_0DDCE7:        D0 2E         BNE CODE_0DDD17           ;
CODE_0DDCE9:        8A            TXA                       ;
CODE_0DDCEA:        0A            ASL A                     ;
CODE_0DDCEB:        0A            ASL A                     ;
CODE_0DDCEC:        18            CLC                       ;
CODE_0DDCED:        69 34         ADC #$34                  ;
CODE_0DDCEF:        A8            TAY                       ;
CODE_0DDCF0:        20 33 EA      JSR CODE_0DEA33           ;
CODE_0DDCF3:        A6 9E         LDX $9E                   ;
CODE_0DDCF5:        90 1B         BCC CODE_0DDD12           ;
CODE_0DDCF7:        BD BE 06      LDA $06BE,x               ;
CODE_0DDCFA:        D0 1B         BNE CODE_0DDD17           ;
CODE_0DDCFC:        A9 01         LDA #$01                  ;
CODE_0DDCFE:        9D BE 06      STA $06BE,x               ;
CODE_0DDD01:        B5 6E         LDA $6E,x                 ;
CODE_0DDD03:        49 FF         EOR #$FF                  ;
CODE_0DDD05:        18            CLC                       ;
CODE_0DDD06:        69 01         ADC #$01                  ;
CODE_0DDD08:        95 6E         STA $6E,x                 ;
CODE_0DDD0A:        AD AF 07      LDA $07AF                 ;
CODE_0DDD0D:        D0 08         BNE CODE_0DDD17           ;
CODE_0DDD0F:        4C 82 DE      JMP CODE_0DDE82           ;

CODE_0DDD12:        A9 00         LDA #$00                  ;
CODE_0DDD14:        9D BE 06      STA $06BE,x               ;
CODE_0DDD17:        60            RTS                       ;

CODE_0DDD18:        20 ED CC      JSR CODE_0DCCED           ;
CODE_0DDD1B:        AD 0C 02      LDA $020C                 ;
CODE_0DDD1E:        C9 04         CMP #$04                  ;
CODE_0DDD20:        D0 03         BNE CODE_0DDD25           ;
CODE_0DDD22:        4C 82 DE      JMP CODE_0DDE82           ;

CODE_0DDD25:        A9 06         LDA #$06                  ;
CODE_0DDD27:        20 94 DF      JSR CODE_0DDF94           ;
CODE_0DDD2A:        A9 0A         LDA #$0A                  ;
CODE_0DDD2C:        8D 00 16      STA $1600                 ;
CODE_0DDD2F:        AD 0C 02      LDA $020C                 ;
CODE_0DDD32:        C9 02         CMP #$02                  ;
CODE_0DDD34:        90 0F         BCC CODE_0DDD45           ;
CODE_0DDD36:        C9 03         CMP #$03                  ;
CODE_0DDD38:        F0 25         BEQ CODE_0DDD5F           ;
CODE_0DDD3A:        A9 23         LDA #$23                  ;
CODE_0DDD3C:        8D AF 07      STA $07AF                 ;
CODE_0DDD3F:        A9 0D         LDA #$0D                  ;
CODE_0DDD41:        8D 02 16      STA $1602                 ;
CODE_0DDD44:        60            RTS                       ;

CODE_0DDD45:        AD 56 07      LDA $0756                 ;
CODE_0DDD48:        F0 20         BEQ CODE_0DDD6A           ;
CODE_0DDD4A:        C9 01         CMP #$01                  ;
CODE_0DDD4C:        D0 28         BNE CODE_0DDD76           ;
CODE_0DDD4E:        A6 9E         LDX $9E                   ;
CODE_0DDD50:        A9 02         LDA #$02                  ;
CODE_0DDD52:        8D 56 07      STA $0756                 ;
CODE_0DDD55:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0DDD59:        A6 9E         LDX $9E                   ;
CODE_0DDD5B:        A9 0C         LDA #$0C                  ;
CODE_0DDD5D:        80 12         BRA CODE_0DDD71           ;

CODE_0DDD5F:        A9 0B         LDA #$0B                  ;
CODE_0DDD61:        9D 10 01      STA $0110,x               ;
CODE_0DDD64:        A9 00         LDA #$00                  ;
CODE_0DDD66:        8D 00 16      STA $1600                 ;
CODE_0DDD69:        60            RTS                       ;

CODE_0DDD6A:        A9 01         LDA #$01                  ;
CODE_0DDD6C:        8D 56 07      STA $0756                 ;
CODE_0DDD6F:        A9 09         LDA #$09                  ;
CODE_0DDD71:        A0 00         LDY #$00                  ;
CODE_0DDD73:        20 A4 DE      JSR CODE_0DDEA4           ;
CODE_0DDD76:        60            RTS                       ;

DATA_0DDD77:        db $18,$E8

DATA_0DDD79:        db $30,$D0

DATA_0DDD7B:        db $08,$F8

CODE_0DDD7D:        A5 09         LDA $09                   ;
CODE_0DDD7F:        4A            LSR A                     ;
CODE_0DDD80:        B0 F4         BCS CODE_0DDD76           ;
CODE_0DDD82:        20 47 E2      JSR CODE_0DE247           ;
CODE_0DDD85:        B0 36         BCS CODE_0DDDBD           ;
CODE_0DDD87:        E0 09         CPX #$09                  ;
CODE_0DDD89:        D0 09         BNE CODE_0DDD94           ;
CODE_0DDD8B:        AD AE 03      LDA $03AE                 ;
CODE_0DDD8E:        10 04         BPL CODE_0DDD94           ;
CODE_0DDD90:        C9 F4         CMP #$F4                  ;
CODE_0DDD92:        B0 05         BCS CODE_0DDD99           ;
CODE_0DDD94:        BD D9 03      LDA $03D9,x               ;
CODE_0DDD97:        D0 24         BNE CODE_0DDDBD           ;
CODE_0DDD99:        A5 0F         LDA $0F                   ;
CODE_0DDD9B:        C9 08         CMP #$08                  ;
CODE_0DDD9D:        D0 1E         BNE CODE_0DDDBD           ;
CODE_0DDD9F:        B5 29         LDA $29,x                 ;
CODE_0DDDA1:        29 20         AND #$20                  ;
CODE_0DDDA3:        D0 18         BNE CODE_0DDDBD           ;
CODE_0DDDA5:        B5 29         LDA $29,x                 ;
CODE_0DDDA7:        29 20         AND #$20                  ;
CODE_0DDDA9:        D0 12         BNE CODE_0DDDBD           ;
CODE_0DDDAB:        20 51 E2      JSR CODE_0DE251           ;
CODE_0DDDAE:        20 33 EA      JSR CODE_0DEA33           ;
CODE_0DDDB1:        A6 9E         LDX $9E                   ;
CODE_0DDDB3:        B0 09         BCS CODE_0DDDBE           ;
CODE_0DDDB5:        BD 81 04      LDA $0481,x               ;
CODE_0DDDB8:        29 FE         AND #$FE                  ;
CODE_0DDDBA:        9D 81 04      STA $0481,x               ;
CODE_0DDDBD:        60            RTS                       ;

CODE_0DDDBE:        B4 1C         LDY $1C,x                 ;
CODE_0DDDC0:        C0 2E         CPY #$2E                  ;
CODE_0DDDC2:        D0 03         BNE CODE_0DDDC7           ;
CODE_0DDDC4:        4C 18 DD      JMP CODE_0DDD18           ;

CODE_0DDDC7:        AD AF 07      LDA $07AF                 ;
CODE_0DDDCA:        F0 06         BEQ CODE_0DDDD2           ;
CODE_0DDDCC:        4C 98 DC      JMP CODE_0DDC98           ;

DATA_0DDDCF:        db $0A,$06,$04

CODE_0DDDD2:        BD 81 04      LDA $0481,x               ;
CODE_0DDDD5:        29 01         AND #$01                  ;
CODE_0DDDD7:        1D D9 03      ORA $03D9,x               ;
CODE_0DDDDA:        D0 6D         BNE CODE_0DDE49           ;
CODE_0DDDDC:        A9 01         LDA #$01                  ;
CODE_0DDDDE:        1D 81 04      ORA $0481,x               ;
CODE_0DDDE1:        9D 81 04      STA $0481,x               ;
CODE_0DDDE4:        C0 12         CPY #$12                  ;
CODE_0DDDE6:        F0 62         BEQ CODE_0DDE4A           ;
CODE_0DDDE8:        C0 33         CPY #$33                  ;
CODE_0DDDEA:        F0 5E         BEQ CODE_0DDE4A           ;
CODE_0DDDEC:        C0 0D         CPY #$0D                  ;
CODE_0DDDEE:        D0 03         BNE CODE_0DDDF3           ;
CODE_0DDDF0:        4C 82 DE      JMP CODE_0DDE82           ;

CODE_0DDDF3:        C0 04         CPY #$04                  ;
CODE_0DDDF5:        D0 03         BNE CODE_0DDDFA           ;
CODE_0DDDF7:        4C 82 DE      JMP CODE_0DDE82           ;

CODE_0DDDFA:        C0 0C         CPY #$0C                  ;
CODE_0DDDFC:        D0 03         BNE CODE_0DDE01           ;
CODE_0DDDFE:        4C 82 DE      JMP CODE_0DDE82           ;

CODE_0DDE01:        C0 15         CPY #$15                  ;
CODE_0DDE03:        B0 7D         BCS CODE_0DDE82           ;
CODE_0DDE05:        A5 5C         LDA $5C                   ;
CODE_0DDE07:        F0 79         BEQ CODE_0DDE82           ;
CODE_0DDE09:        B5 29         LDA $29,x                 ;
CODE_0DDE0B:        0A            ASL A                     ;
CODE_0DDE0C:        B0 3C         BCS CODE_0DDE4A           ;
CODE_0DDE0E:        B5 29         LDA $29,x                 ;
CODE_0DDE10:        29 07         AND #$07                  ;
CODE_0DDE12:        C9 02         CMP #$02                  ;
CODE_0DDE14:        90 34         BCC CODE_0DDE4A           ;
CODE_0DDE16:        B5 1C         LDA $1C,x                 ;
CODE_0DDE18:        C9 06         CMP #$06                  ;
CODE_0DDE1A:        F0 2D         BEQ CODE_0DDE49           ;
CODE_0DDE1C:        A9 03         LDA #$03                  ;
CODE_0DDE1E:        8D 00 16      STA $1600                 ;
CODE_0DDE21:        22 AC E0 0F   JSL CODE_0FE0AC           ;
CODE_0DDE25:        9E 40 0F      STZ $0F40,x               ;
CODE_0DDE28:        B5 29         LDA $29,x                 ;
CODE_0DDE2A:        09 80         ORA #$80                  ;
CODE_0DDE2C:        95 29         STA $29,x                 ;
CODE_0DDE2E:        20 88 DF      JSR CODE_0DDF88           ;
CODE_0DDE31:        B9 79 DD      LDA DATA_0DDD79,y               ;
CODE_0DDE34:        95 5E         STA $5E,x                 ;
CODE_0DDE36:        A9 03         LDA #$03                  ;
CODE_0DDE38:        18            CLC                       ;
CODE_0DDE39:        6D 84 02      ADC $0284                 ;
CODE_0DDE3C:        BC A2 07      LDY $07A2,x               ;
CODE_0DDE3F:        C0 03         CPY #$03                  ;
CODE_0DDE41:        B0 03         BCS CODE_0DDE46           ;
CODE_0DDE43:        B9 CF DD      LDA DATA_0DDDCF,y               ;
CODE_0DDE46:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DDE49:        60            RTS                       ;

CODE_0DDE4A:        AC A0 00      LDY $00A0                 ;
CODE_0DDE4D:        88            DEY                       ;
CODE_0DDE4E:        30 03         BMI CODE_0DDE53           ;
CODE_0DDE50:        4C DE DE      JMP CODE_0DDEDE           ;

CODE_0DDE53:        B5 1C         LDA $1C,x                 ;
CODE_0DDE55:        C9 07         CMP #$07                  ;
CODE_0DDE57:        90 0B         BCC CODE_0DDE64           ;
CODE_0DDE59:        AD 37 02      LDA $0237                 ;
CODE_0DDE5C:        18            CLC                       ;
CODE_0DDE5D:        69 0C         ADC #$0C                  ;
CODE_0DDE5F:        DD 38 02      CMP $0238,x               ;
CODE_0DDE62:        90 7A         BCC CODE_0DDEDE           ;
CODE_0DDE64:        AD 9D 07      LDA $079D                 ;
CODE_0DDE67:        D0 75         BNE CODE_0DDEDE           ;
CODE_0DDE69:        AD AE 07      LDA $07AE                 ;
CODE_0DDE6C:        D0 43         BNE CODE_0DDEB1           ;
CODE_0DDE6E:        AD AD 03      LDA $03AD                 ;
CODE_0DDE71:        CD AE 03      CMP $03AE                 ;
CODE_0DDE74:        90 03         BCC CODE_0DDE79           ;
CODE_0DDE76:        4C 79 DF      JMP CODE_0DDF79           ;

CODE_0DDE79:        B5 47         LDA $47,x                 ;
CODE_0DDE7B:        C9 01         CMP #$01                  ;
CODE_0DDE7D:        D0 03         BNE CODE_0DDE82           ;
CODE_0DDE7F:        4C 82 DF      JMP CODE_0DDF82           ;

CODE_0DDE82:        AD AE 07      LDA $07AE                 ;
CODE_0DDE85:        0D AF 07      ORA $07AF                 ;
CODE_0DDE88:        D0 27         BNE CODE_0DDEB1           ;
CODE_0DDE8A:        AE 56 07      LDX $0756                 ;
CODE_0DDE8D:        F0 25         BEQ CODE_0DDEB4           ;
CODE_0DDE8F:        8D 56 07      STA $0756                 ;
CODE_0DDE92:        A9 08         LDA #$08                  ;
CODE_0DDE94:        8D AE 07      STA $07AE                 ;
CODE_0DDE97:        A9 04         LDA #$04                  ;
CODE_0DDE99:        8D 00 16      STA $1600                 ;
CODE_0DDE9C:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0DDEA0:        A9 0A         LDA #$0A                  ;
CODE_0DDEA2:        A0 01         LDY #$01                  ;
CODE_0DDEA4:        85 0F         STA $0F                   ;
CODE_0DDEA6:        84 28         STY $28                   ;
CODE_0DDEA8:        A0 FF         LDY #$FF                  ;
CODE_0DDEAA:        8C 47 07      STY $0747                 ;
CODE_0DDEAD:        C8            INY                       ;
CODE_0DDEAE:        8C 75 07      STY $0775                 ;
CODE_0DDEB1:        A6 9E         LDX $9E                   ;
CODE_0DDEB3:        60            RTS                       ;

CODE_0DDEB4:        86 5D         STX $5D                   ;
CODE_0DDEB6:        DA            PHX                       ;
CODE_0DDEB7:        A9 01         LDA #$01                  ;
CODE_0DDEB9:        8D 54 07      STA $0754                 ;
CODE_0DDEBC:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0DDEC0:        FA            PLX                       ;
CODE_0DDEC1:        E8            INX                       ;
CODE_0DDEC2:        A9 20         LDA #$20                  ;
CODE_0DDEC4:        0C 01 16      TSB $1601                 ;
CODE_0DDEC7:        A9 09         LDA #$09                  ;
CODE_0DDEC9:        8D 02 16      STA $1602                 ;
CODE_0DDECC:        8D 67 0E      STA $0E67                 ;
CODE_0DDECF:        8D 23 07      STA $0723                 ;
CODE_0DDED2:        A9 FC         LDA #$FC                  ;
CODE_0DDED4:        85 A0         STA $A0                   ;
CODE_0DDED6:        A9 0B         LDA #$0B                  ;
CODE_0DDED8:        D0 C8         BNE CODE_0DDEA2           ;

DATA_0DDEDA:        db $02,$06,$05,$06

CODE_0DDEDE:        B5 1C         LDA $1C,x                 ;
CODE_0DDEE0:        C9 12         CMP #$12                  ;
CODE_0DDEE2:        F0 9E         BEQ CODE_0DDE82           ;
CODE_0DDEE4:        A9 02         LDA #$02                  ;
CODE_0DDEE6:        8D 00 16      STA $1600                 ;
CODE_0DDEE9:        B5 1C         LDA $1C,x                 ;
CODE_0DDEEB:        A0 00         LDY #$00                  ;
CODE_0DDEED:        C9 14         CMP #$14                  ;
CODE_0DDEEF:        F0 1B         BEQ CODE_0DDF0C           ;
CODE_0DDEF1:        C9 08         CMP #$08                  ;
CODE_0DDEF3:        F0 17         BEQ CODE_0DDF0C           ;
CODE_0DDEF5:        C9 33         CMP #$33                  ;
CODE_0DDEF7:        F0 13         BEQ CODE_0DDF0C           ;
CODE_0DDEF9:        C9 0C         CMP #$0C                  ;
CODE_0DDEFB:        F0 0F         BEQ CODE_0DDF0C           ;
CODE_0DDEFD:        C8            INY                       ;
CODE_0DDEFE:        C9 05         CMP #$05                  ;
CODE_0DDF00:        F0 0A         BEQ CODE_0DDF0C           ;
CODE_0DDF02:        C8            INY                       ;
CODE_0DDF03:        C9 11         CMP #$11                  ;
CODE_0DDF05:        F0 05         BEQ CODE_0DDF0C           ;
CODE_0DDF07:        C8            INY                       ;
CODE_0DDF08:        C9 07         CMP #$07                  ;
CODE_0DDF0A:        D0 1B         BNE CODE_0DDF27           ;
CODE_0DDF0C:        B9 DA DE      LDA DATA_0DDEDA,y               ;
CODE_0DDF0F:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DDF12:        B5 47         LDA $47,x                 ;
CODE_0DDF14:        48            PHA                       ;
CODE_0DDF15:        20 06 E7      JSR CODE_0DE706           ;
CODE_0DDF18:        68            PLA                       ;
CODE_0DDF19:        95 47         STA $47,x                 ;
CODE_0DDF1B:        A9 20         LDA #$20                  ;
CODE_0DDF1D:        95 29         STA $29,x                 ;
CODE_0DDF1F:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DDF22:        74 5E         STZ $5E,x                 ;
CODE_0DDF24:        4C 66 DF      JMP CODE_0DDF66           ;

CODE_0DDF27:        C9 09         CMP #$09                  ;
CODE_0DDF29:        90 1E         BCC CODE_0DDF49           ;
CODE_0DDF2B:        20 66 DF      JSR CODE_0DDF66           ;
CODE_0DDF2E:        29 01         AND #$01                  ;
CODE_0DDF30:        95 1C         STA $1C,x                 ;
CODE_0DDF32:        A9 00         LDA #$00                  ;
CODE_0DDF34:        95 29         STA $29,x                 ;
CODE_0DDF36:        A9 03         LDA #$03                  ;
CODE_0DDF38:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DDF3B:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DDF3E:        20 88 DF      JSR CODE_0DDF88           ;
CODE_0DDF41:        B9 7B DD      LDA DATA_0DDD7B,y               ;
CODE_0DDF44:        95 5E         STA $5E,x                 ;
CODE_0DDF46:        60            RTS                       ;

DATA_0DDF47:        db $10,$0B

CODE_0DDF49:        A9 04         LDA #$04                  ;
CODE_0DDF4B:        95 29         STA $29,x                 ;
CODE_0DDF4D:        EE 84 02      INC $0284                 ;
CODE_0DDF50:        AD 84 02      LDA $0284                 ;
CODE_0DDF53:        18            CLC                       ;
CODE_0DDF54:        6D 9D 07      ADC $079D                 ;
CODE_0DDF57:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DDF5A:        EE 9D 07      INC $079D                 ;
CODE_0DDF5D:        AC 6A 07      LDY $076A                 ;
CODE_0DDF60:        B9 47 DF      LDA DATA_0DDF47,y               ;
CODE_0DDF63:        9D A2 07      STA $07A2,x               ;
CODE_0DDF66:        A0 FA         LDY #$FA                  ;
CODE_0DDF68:        BD 1C 00      LDA $001C,x               ;
CODE_0DDF6B:        C9 0F         CMP #$0F                  ;
CODE_0DDF6D:        F0 04         BEQ CODE_0DDF73           ;
CODE_0DDF6F:        C9 10         CMP #$10                  ;
CODE_0DDF71:        D0 02         BNE CODE_0DDF75           ;
CODE_0DDF73:        A0 F8         LDY #$F8                  ;
CODE_0DDF75:        8C A0 00      STY $00A0                 ;
CODE_0DDF78:        60            RTS                       ;

CODE_0DDF79:        B5 47         LDA $47,x                 ;
CODE_0DDF7B:        C9 01         CMP #$01                  ;
CODE_0DDF7D:        D0 03         BNE CODE_0DDF82           ;
CODE_0DDF7F:        4C 82 DE      JMP CODE_0DDE82           ;

CODE_0DDF82:        20 0A E1      JSR CODE_0DE10A           ;
CODE_0DDF85:        4C 82 DE      JMP CODE_0DDE82           ;

CODE_0DDF88:        A0 01         LDY #$01                  ;
CODE_0DDF8A:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DDF8D:        10 01         BPL CODE_0DDF90           ;
CODE_0DDF8F:        C8            INY                       ;
CODE_0DDF90:        94 47         STY $47,x                 ;
CODE_0DDF92:        88            DEY                       ;
CODE_0DDF93:        60            RTS                       ;

CODE_0DDF94:        9D 10 01      STA $0110,x               ;
CODE_0DDF97:        A9 30         LDA #$30                  ;
CODE_0DDF99:        9D 38 01      STA $0138,x               ;
CODE_0DDF9C:        BD 38 02      LDA $0238,x               ;
CODE_0DDF9F:        9D 24 01      STA $0124,x               ;
CODE_0DDFA2:        AD AE 03      LDA $03AE                 ;
CODE_0DDFA5:        9D 1A 01      STA $011A,x               ;
CODE_0DDFA8:        BD 1A 02      LDA $021A,x               ;
CODE_0DDFAB:        85 ED         STA $ED                   ;
CODE_0DDFAD:        B5 79         LDA $79,x                 ;
CODE_0DDFAF:        85 EE         STA $EE                   ;
CODE_0DDFB1:        DA            PHX                       ;
CODE_0DDFB2:        8A            TXA                       ;
CODE_0DDFB3:        0A            ASL A                     ;
CODE_0DDFB4:        AA            TAX                       ;
CODE_0DDFB5:        C2 20         REP #$20                  ;
CODE_0DDFB7:        A5 ED         LDA $ED                   ;
CODE_0DDFB9:        38            SEC                       ;
CODE_0DDFBA:        E5 42         SBC $42                   ;
CODE_0DDFBC:        9D 50 0E      STA $0E50,x               ;
CODE_0DDFBF:        E2 20         SEP #$20                  ;
CODE_0DDFC1:        FA            PLX                       ;
CODE_0DDFC2:        60            RTS                       ;

CODE_0DDFC3:        DD 10 01      CMP $0110,x               ;
CODE_0DDFC6:        B0 01         BCS CODE_0DDFC9           ;
CODE_0DDFC8:        60            RTS                       ;

CODE_0DDFC9:        9D 10 01      STA $0110,x               ;
CODE_0DDFCC:        A9 30         LDA #$30                  ;
CODE_0DDFCE:        9D 38 01      STA $0138,x               ;
CODE_0DDFD1:        BD 38 02      LDA $0238,x               ;
CODE_0DDFD4:        9D 24 01      STA $0124,x               ;
CODE_0DDFD7:        5A            PHY                       ;
CODE_0DDFD8:        8A            TXA                       ;
CODE_0DDFD9:        0A            ASL A                     ;
CODE_0DDFDA:        A8            TAY                       ;
CODE_0DDFDB:        BD 1A 02      LDA $021A,x               ;
CODE_0DDFDE:        85 E4         STA $E4                   ;
CODE_0DDFE0:        B5 79         LDA $79,x                 ;
CODE_0DDFE2:        85 E5         STA $E5                   ;
CODE_0DDFE4:        C2 20         REP #$20                  ;
CODE_0DDFE6:        A5 E4         LDA $E4                   ;
CODE_0DDFE8:        38            SEC                       ;
CODE_0DDFE9:        E5 42         SBC $42                   ;
CODE_0DDFEB:        99 50 0E      STA $0E50,y               ;
CODE_0DDFEE:        E2 20         SEP #$20                  ;
CODE_0DDFF0:        9D 1A 01      STA $011A,x               ;
CODE_0DDFF3:        7A            PLY                       ;
CODE_0DDFF4:        60            RTS                       ;

DATA_0DDFF5:        db $80,$40,$20,$10,$08,$04,$02 ;

DATA_0DDFFC:        db $7F,$BF,$DF,$EF,$F7,$FB,$FD ;

CODE_0DE003:        A5 09         LDA $09                   ;
CODE_0DE005:        4A            LSR A                     ;
CODE_0DE006:        90 BA         BCC CODE_0DDFC2           ;
CODE_0DE008:        A5 5C         LDA $5C                   ;
CODE_0DE00A:        F0 B6         BEQ CODE_0DDFC2           ;
CODE_0DE00C:        B5 1C         LDA $1C,x                 ;
CODE_0DE00E:        C9 15         CMP #$15                  ;
CODE_0DE010:        B0 76         BCS CODE_0DE088           ;
CODE_0DE012:        C9 11         CMP #$11                  ;
CODE_0DE014:        F0 72         BEQ CODE_0DE088           ;
CODE_0DE016:        C9 0D         CMP #$0D                  ;
CODE_0DE018:        F0 6E         BEQ CODE_0DE088           ;
CODE_0DE01A:        C9 04         CMP #$04                  ;
CODE_0DE01C:        F0 6A         BEQ CODE_0DE088           ;
CODE_0DE01E:        BD D9 03      LDA $03D9,x               ;
CODE_0DE021:        D0 65         BNE CODE_0DE088           ;
CODE_0DE023:        20 51 E2      JSR CODE_0DE251           ;
CODE_0DE026:        CA            DEX                       ;
CODE_0DE027:        30 5F         BMI CODE_0DE088           ;
CODE_0DE029:        86 01         STX $01                   ;
CODE_0DE02B:        98            TYA                       ;
CODE_0DE02C:        48            PHA                       ;
CODE_0DE02D:        B5 10         LDA $10,x                 ;
CODE_0DE02F:        F0 50         BEQ CODE_0DE081           ;
CODE_0DE031:        B5 1C         LDA $1C,x                 ;
CODE_0DE033:        C9 15         CMP #$15                  ;
CODE_0DE035:        B0 4A         BCS CODE_0DE081           ;
CODE_0DE037:        C9 11         CMP #$11                  ;
CODE_0DE039:        F0 46         BEQ CODE_0DE081           ;
CODE_0DE03B:        C9 0D         CMP #$0D                  ;
CODE_0DE03D:        F0 42         BEQ CODE_0DE081           ;
CODE_0DE03F:        C9 04         CMP #$04                  ;
CODE_0DE041:        F0 3E         BEQ CODE_0DE081           ;
CODE_0DE043:        BD D9 03      LDA $03D9,x               ;
CODE_0DE046:        D0 39         BNE CODE_0DE081           ;
CODE_0DE048:        8A            TXA                       ;
CODE_0DE049:        0A            ASL A                     ;
CODE_0DE04A:        0A            ASL A                     ;
CODE_0DE04B:        18            CLC                       ;
CODE_0DE04C:        69 04         ADC #$04                  ;
CODE_0DE04E:        AA            TAX                       ;
CODE_0DE04F:        20 35 EA      JSR CODE_0DEA35           ;
CODE_0DE052:        A6 9E         LDX $9E                   ;
CODE_0DE054:        A4 01         LDY $01                   ;
CODE_0DE056:        90 20         BCC CODE_0DE078           ;
CODE_0DE058:        B5 29         LDA $29,x                 ;
CODE_0DE05A:        19 29 00      ORA $0029,y               ;
CODE_0DE05D:        29 80         AND #$80                  ;
CODE_0DE05F:        D0 11         BNE CODE_0DE072           ;
CODE_0DE061:        B9 81 04      LDA $0481,y               ;
CODE_0DE064:        3D F5 DF      AND DATA_0DDFF5,x               ;
CODE_0DE067:        D0 18         BNE CODE_0DE081           ;
CODE_0DE069:        B9 81 04      LDA $0481,y               ;
CODE_0DE06C:        1D F5 DF      ORA DATA_0DDFF5,x               ;
CODE_0DE06F:        99 81 04      STA $0481,y               ;
CODE_0DE072:        20 8B E0      JSR CODE_0DE08B           ;
CODE_0DE075:        4C 81 E0      JMP CODE_0DE081           ;

CODE_0DE078:        B9 81 04      LDA $0481,y               ;
CODE_0DE07B:        3D FC DF      AND DATA_0DDFFC,x               ;
CODE_0DE07E:        99 81 04      STA $0481,y               ;
CODE_0DE081:        68            PLA                       ;
CODE_0DE082:        A8            TAY                       ;
CODE_0DE083:        A6 01         LDX $01                   ;
CODE_0DE085:        CA            DEX                       ;
CODE_0DE086:        10 A1         BPL CODE_0DE029           ;
CODE_0DE088:        A6 9E         LDX $9E                   ;
CODE_0DE08A:        60            RTS                       ;

CODE_0DE08B:        B9 29 00      LDA $0029,y               ;
CODE_0DE08E:        15 29         ORA $29,x                 ;
CODE_0DE090:        29 20         AND #$20                  ;
CODE_0DE092:        D0 37         BNE CODE_0DE0CB           ;
CODE_0DE094:        B5 1C         LDA $1C,x                 ;
CODE_0DE096:        C9 05         CMP #$05                  ;
CODE_0DE098:        D0 02         BNE CODE_0DE09C           ;
CODE_0DE09A:        74 29         STZ $29,x                 ;
CODE_0DE09C:        B5 29         LDA $29,x                 ;
CODE_0DE09E:        C9 06         CMP #$06                  ;
CODE_0DE0A0:        90 2A         BCC CODE_0DE0CC           ;
CODE_0DE0A2:        B9 29 00      LDA $0029,y               ;
CODE_0DE0A5:        0A            ASL A                     ;
CODE_0DE0A6:        90 0A         BCC CODE_0DE0B2           ;
CODE_0DE0A8:        A9 06         LDA #$06                  ;
CODE_0DE0AA:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DE0AD:        20 98 DC      JSR CODE_0DDC98           ;
CODE_0DE0B0:        A4 01         LDY $01                   ;
CODE_0DE0B2:        98            TYA                       ;
CODE_0DE0B3:        AA            TAX                       ;
CODE_0DE0B4:        20 98 DC      JSR CODE_0DDC98           ;
CODE_0DE0B7:        A6 9E         LDX $9E                   ;
CODE_0DE0B9:        BD 2E 01      LDA $012E,x               ;
CODE_0DE0BC:        18            CLC                       ;
CODE_0DE0BD:        69 04         ADC #$04                  ;
CODE_0DE0BF:        A6 01         LDX $01                   ;
CODE_0DE0C1:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DE0C4:        A6 9E         LDX $9E                   ;
CODE_0DE0C6:        FE 2E 01      INC $012E,x               ;
CODE_0DE0C9:        80 28         BRA CODE_0DE0F3           ;

CODE_0DE0CB:        60            RTS                       ;

CODE_0DE0CC:        B9 29 00      LDA $0029,y               ;
CODE_0DE0CF:        C9 06         CMP #$06                  ;
CODE_0DE0D1:        90 30         BCC CODE_0DE103           ;
CODE_0DE0D3:        B9 1C 00      LDA $001C,y               ;
CODE_0DE0D6:        C9 05         CMP #$05                  ;
CODE_0DE0D8:        F0 F1         BEQ CODE_0DE0CB           ;
CODE_0DE0DA:        20 98 DC      JSR CODE_0DDC98           ;
CODE_0DE0DD:        22 AC E0 0F   JSL CODE_0FE0AC           ;
CODE_0DE0E1:        A4 01         LDY $01                   ;
CODE_0DE0E3:        B9 2E 01      LDA $012E,y               ;
CODE_0DE0E6:        18            CLC                       ;
CODE_0DE0E7:        69 04         ADC #$04                  ;
CODE_0DE0E9:        A6 9E         LDX $9E                   ;
CODE_0DE0EB:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DE0EE:        A6 01         LDX $01                   ;
CODE_0DE0F0:        FE 2E 01      INC $012E,x               ;
CODE_0DE0F3:        BD 2E 01      LDA $012E,x               ;
CODE_0DE0F6:        18            CLC                       ;
CODE_0DE0F7:        69 12         ADC #$12                  ;
CODE_0DE0F9:        C9 1A         CMP #$1A                  ;
CODE_0DE0FB:        90 02         BCC CODE_0DE0FF           ;
CODE_0DE0FD:        A9 00         LDA #$00                  ;
CODE_0DE0FF:        8D 00 16      STA $1600                 ;
CODE_0DE102:        60            RTS                       ;

CODE_0DE103:        98            TYA                       ;
CODE_0DE104:        AA            TAX                       ;
CODE_0DE105:        20 0A E1      JSR CODE_0DE10A           ;
CODE_0DE108:        A6 9E         LDX $9E                   ;
CODE_0DE10A:        B5 1C         LDA $1C,x                 ;
CODE_0DE10C:        C9 0D         CMP #$0D                  ;
CODE_0DE10E:        F0 26         BEQ CODE_0DE136           ;
CODE_0DE110:        C9 04         CMP #$04                  ;
CODE_0DE112:        F0 22         BEQ CODE_0DE136           ;
CODE_0DE114:        C9 11         CMP #$11                  ;
CODE_0DE116:        F0 1E         BEQ CODE_0DE136           ;
CODE_0DE118:        C9 05         CMP #$05                  ;
CODE_0DE11A:        F0 1A         BEQ CODE_0DE136           ;
CODE_0DE11C:        C9 12         CMP #$12                  ;
CODE_0DE11E:        F0 08         BEQ CODE_0DE128           ;
CODE_0DE120:        C9 0E         CMP #$0E                  ;
CODE_0DE122:        F0 04         BEQ CODE_0DE128           ;
CODE_0DE124:        C9 07         CMP #$07                  ;
CODE_0DE126:        B0 0E         BCS CODE_0DE136           ;
CODE_0DE128:        B5 5E         LDA $5E,x                 ;
CODE_0DE12A:        49 FF         EOR #$FF                  ;
CODE_0DE12C:        A8            TAY                       ;
CODE_0DE12D:        C8            INY                       ;
CODE_0DE12E:        94 5E         STY $5E,x                 ;
CODE_0DE130:        B5 47         LDA $47,x                 ;
CODE_0DE132:        49 03         EOR #$03                  ;
CODE_0DE134:        95 47         STA $47,x                 ;
CODE_0DE136:        60            RTS                       ;

CODE_0DE137:        A9 FF         LDA #$FF                  ;
CODE_0DE139:        9D A2 03      STA $03A2,x               ;
CODE_0DE13C:        AD 47 07      LDA $0747                 ;
CODE_0DE13F:        D0 2A         BNE CODE_0DE16B           ;
CODE_0DE141:        B5 29         LDA $29,x                 ;
CODE_0DE143:        30 26         BMI CODE_0DE16B           ;
CODE_0DE145:        B5 1C         LDA $1C,x                 ;
CODE_0DE147:        C9 24         CMP #$24                  ;
CODE_0DE149:        D0 06         BNE CODE_0DE151           ;
CODE_0DE14B:        B5 29         LDA $29,x                 ;
CODE_0DE14D:        AA            TAX                       ;
CODE_0DE14E:        20 51 E1      JSR CODE_0DE151           ;
CODE_0DE151:        20 47 E2      JSR CODE_0DE247           ;
CODE_0DE154:        B0 15         BCS CODE_0DE16B           ;
CODE_0DE156:        8A            TXA                       ;
CODE_0DE157:        20 53 E2      JSR CODE_0DE253           ;
CODE_0DE15A:        BD 38 02      LDA $0238,x               ;
CODE_0DE15D:        85 00         STA $00                   ;
CODE_0DE15F:        8A            TXA                       ;
CODE_0DE160:        48            PHA                       ;
CODE_0DE161:        20 33 EA      JSR CODE_0DEA33           ;
CODE_0DE164:        68            PLA                       ;
CODE_0DE165:        AA            TAX                       ;
CODE_0DE166:        90 03         BCC CODE_0DE16B           ;
CODE_0DE168:        20 AF E1      JSR CODE_0DE1AF           ;
CODE_0DE16B:        A6 9E         LDX $9E                   ;
CODE_0DE16D:        60            RTS                       ;

CODE_0DE16E:        AD 47 07      LDA $0747                 ;
CODE_0DE171:        D0 37         BNE CODE_0DE1AA           ;
CODE_0DE173:        9D A2 03      STA $03A2,x               ;
CODE_0DE176:        20 47 E2      JSR CODE_0DE247           ;
CODE_0DE179:        B0 2F         BCS CODE_0DE1AA           ;
CODE_0DE17B:        A9 02         LDA #$02                  ;
CODE_0DE17D:        85 00         STA $00                   ;
CODE_0DE17F:        A6 9E         LDX $9E                   ;
CODE_0DE181:        20 51 E2      JSR CODE_0DE251           ;
CODE_0DE184:        29 02         AND #$02                  ;
CODE_0DE186:        D0 22         BNE CODE_0DE1AA           ;
CODE_0DE188:        B9 9D 0F      LDA $0F9D,y               ;
CODE_0DE18B:        C9 20         CMP #$20                  ;
CODE_0DE18D:        90 05         BCC CODE_0DE194           ;
CODE_0DE18F:        20 33 EA      JSR CODE_0DEA33           ;
CODE_0DE192:        B0 19         BCS CODE_0DE1AD           ;
CODE_0DE194:        B9 9D 0F      LDA $0F9D,y               ;
CODE_0DE197:        18            CLC                       ;
CODE_0DE198:        69 80         ADC #$80                  ;
CODE_0DE19A:        99 9D 0F      STA $0F9D,y               ;
CODE_0DE19D:        B9 9F 0F      LDA $0F9F,y               ;
CODE_0DE1A0:        18            CLC                       ;
CODE_0DE1A1:        69 80         ADC #$80                  ;
CODE_0DE1A3:        99 9F 0F      STA $0F9F,y               ;
CODE_0DE1A6:        C6 00         DEC $00                   ;
CODE_0DE1A8:        D0 D5         BNE CODE_0DE17F           ;
CODE_0DE1AA:        A6 9E         LDX $9E                   ;
CODE_0DE1AC:        60            RTS                       ;

CODE_0DE1AD:        A6 9E         LDX $9E                   ;
CODE_0DE1AF:        B9 9F 0F      LDA $0F9F,y               ;
CODE_0DE1B2:        38            SEC                       ;
CODE_0DE1B3:        ED 9D 0F      SBC $0F9D                 ;
CODE_0DE1B6:        C9 04         CMP #$04                  ;
CODE_0DE1B8:        B0 08         BCS CODE_0DE1C2           ;
CODE_0DE1BA:        A5 A0         LDA $A0                   ;
CODE_0DE1BC:        10 04         BPL CODE_0DE1C2           ;
CODE_0DE1BE:        A9 01         LDA #$01                  ;
CODE_0DE1C0:        85 A0         STA $A0                   ;
CODE_0DE1C2:        AD 9F 0F      LDA $0F9F                 ;
CODE_0DE1C5:        38            SEC                       ;
CODE_0DE1C6:        F9 9D 0F      SBC $0F9D,y               ;
CODE_0DE1C9:        C9 06         CMP #$06                  ;
CODE_0DE1CB:        B0 1B         BCS CODE_0DE1E8           ;
CODE_0DE1CD:        A5 A0         LDA $A0                   ;
CODE_0DE1CF:        30 17         BMI CODE_0DE1E8           ;
CODE_0DE1D1:        A5 00         LDA $00                   ;
CODE_0DE1D3:        B4 1C         LDY $1C,x                 ;
CODE_0DE1D5:        C0 2B         CPY #$2B                  ;
CODE_0DE1D7:        F0 05         BEQ CODE_0DE1DE           ;
CODE_0DE1D9:        C0 2C         CPY #$2C                  ;
CODE_0DE1DB:        F0 01         BEQ CODE_0DE1DE           ;
CODE_0DE1DD:        8A            TXA                       ;
CODE_0DE1DE:        A6 9E         LDX $9E                   ;
CODE_0DE1E0:        9D A2 03      STA $03A2,x               ;
CODE_0DE1E3:        A9 00         LDA #$00                  ;
CODE_0DE1E5:        85 28         STA $28                   ;
CODE_0DE1E7:        60            RTS                       ;

CODE_0DE1E8:        A9 01         LDA #$01                  ;
CODE_0DE1EA:        85 00         STA $00                   ;
CODE_0DE1EC:        AD 9E 0F      LDA $0F9E                 ;
CODE_0DE1EF:        38            SEC                       ;
CODE_0DE1F0:        F9 9C 0F      SBC $0F9C,y               ;
CODE_0DE1F3:        C9 08         CMP #$08                  ;
CODE_0DE1F5:        90 0D         BCC CODE_0DE204           ;
CODE_0DE1F7:        E6 00         INC $00                   ;
CODE_0DE1F9:        B9 9E 0F      LDA $0F9E,y               ;
CODE_0DE1FC:        18            CLC                       ;
CODE_0DE1FD:        ED 9C 0F      SBC $0F9C                 ;
CODE_0DE200:        C9 09         CMP #$09                  ;
CODE_0DE202:        B0 03         BCS CODE_0DE207           ;
CODE_0DE204:        20 14 E6      JSR CODE_0DE614           ;
CODE_0DE207:        A6 9E         LDX $9E                   ;
CODE_0DE209:        60            RTS                       ;

DATA_0DE20A:        db $80,$00

CODE_0DE20C:        A8            TAY                       ;
CODE_0DE20D:        BD 38 02      LDA $0238,x               ;
CODE_0DE210:        18            CLC                       ;
CODE_0DE211:        79 09 E2      ADC DATA_0DE20A-1,y               ;
CODE_0DE214:        D0 08         BNE CODE_0DE21E           ;
CODE_0DE216:        A9 02         LDA #$02                  ;
CODE_0DE218:        85 BB         STA $BB                   ;
CODE_0DE21A:        60            RTS                       ;

CODE_0DE21B:        BD 38 02      LDA $0238,x               ;
CODE_0DE21E:        A4 0F         LDY $0F                   ;
CODE_0DE220:        C0 0B         CPY #$0B                  ;
CODE_0DE222:        F0 22         BEQ CODE_0DE246           ;
CODE_0DE224:        B4 BC         LDY $BC,x                 ;
CODE_0DE226:        C0 01         CPY #$01                  ;
CODE_0DE228:        D0 1C         BNE CODE_0DE246           ;
CODE_0DE22A:        38            SEC                       ;
CODE_0DE22B:        E9 20         SBC #$20                  ;
CODE_0DE22D:        8D 37 02      STA $0237                 ;
CODE_0DE230:        98            TYA                       ;
CODE_0DE231:        E9 00         SBC #$00                  ;
CODE_0DE233:        85 BB         STA $BB                   ;
CODE_0DE235:        D0 08         BNE CODE_0DE23F           ;
CODE_0DE237:        9E A2 03      STZ $03A2,x               ;
CODE_0DE23A:        A9 01         LDA #$01                  ;
CODE_0DE23C:        8D 28 00      STA $0028                 ;
CODE_0DE23F:        A9 00         LDA #$00                  ;
CODE_0DE241:        85 A0         STA $A0                   ;
CODE_0DE243:        8D 3C 04      STA $043C                 ;
CODE_0DE246:        60            RTS                       ;

CODE_0DE247:        AD D0 03      LDA $03D0                 ;
CODE_0DE24A:        29 F0         AND #$F0                  ;
CODE_0DE24C:        18            CLC                       ;
CODE_0DE24D:        F0 01         BEQ CODE_0DE250           ;
CODE_0DE24F:        38            SEC                       ;
CODE_0DE250:        60            RTS                       ;

CODE_0DE251:        A5 9E         LDA $9E                   ;
CODE_0DE253:        0A            ASL A                     ;
CODE_0DE254:        0A            ASL A                     ;
CODE_0DE255:        18            CLC                       ;
CODE_0DE256:        69 04         ADC #$04                  ;
CODE_0DE258:        A8            TAY                       ;
CODE_0DE259:        AD D1 03      LDA $03D1                 ;
CODE_0DE25C:        29 0F         AND #$0F                  ;
CODE_0DE25E:        C9 0F         CMP #$0F                  ;
CODE_0DE260:        60            RTS                       ;

DATA_0DE261:       db $20,$10

CODE_0DE263:        AD 16 07      LDA $0716
CODE_0DE266:        D0 2F         BNE CODE_0DE297           ;
CODE_0DE268:        A5 0F         LDA $0F                   ;
CODE_0DE26A:        C9 0B         CMP #$0B                  ;
CODE_0DE26C:        F0 29         BEQ CODE_0DE297           ;
CODE_0DE26E:        C9 04         CMP #$04                  ;
CODE_0DE270:        90 25         BCC CODE_0DE297           ;
CODE_0DE272:        A9 01         LDA #$01                  ;
CODE_0DE274:        AC 04 07      LDY $0704                 ;
CODE_0DE277:        D0 0A         BNE CODE_0DE283           ;
CODE_0DE279:        A5 28         LDA $28                   ;
CODE_0DE27B:        F0 04         BEQ CODE_0DE281           ;
CODE_0DE27D:        C9 03         CMP #$03                  ;
CODE_0DE27F:        D0 04         BNE CODE_0DE285           ;
CODE_0DE281:        A9 02         LDA #$02                  ;
CODE_0DE283:        85 28         STA $28                   ;
CODE_0DE285:        A5 BB         LDA $BB                   ;
CODE_0DE287:        C9 01         CMP #$01                  ;
CODE_0DE289:        D0 0C         BNE CODE_0DE297           ;
CODE_0DE28B:        A9 FF         LDA #$FF                  ;
CODE_0DE28D:        8D 80 04      STA $0480                 ;
CODE_0DE290:        AD 37 02      LDA $0237                 ;
CODE_0DE293:        C9 CF         CMP #$CF                  ;
CODE_0DE295:        90 01         BCC CODE_0DE298           ;
CODE_0DE297:        60            RTS                       ;

CODE_0DE298:        A0 02         LDY #$02                  ;
CODE_0DE29A:        AD 14 07      LDA $0714                 ;
CODE_0DE29D:        D0 0C         BNE CODE_0DE2AB           ;
CODE_0DE29F:        AD 54 07      LDA $0754                 ;
CODE_0DE2A2:        D0 07         BNE CODE_0DE2AB           ;
CODE_0DE2A4:        88            DEY                       ;
CODE_0DE2A5:        AD 04 07      LDA $0704                 ;
CODE_0DE2A8:        D0 01         BNE CODE_0DE2AB           ;
CODE_0DE2AA:        88            DEY                       ;
CODE_0DE2AB:        B9 BB EA      LDA DATA_0DEABB,y               ;
CODE_0DE2AE:        85 EB         STA $EB                   ;
CODE_0DE2B0:        A8            TAY                       ;
CODE_0DE2B1:        AE 54 07      LDX $0754                 ;
CODE_0DE2B4:        AD 14 07      LDA $0714                 ;
CODE_0DE2B7:        F0 01         BEQ CODE_0DE2BA           ;
CODE_0DE2B9:        E8            INX                       ;
CODE_0DE2BA:        AD 37 02      LDA $0237                 ;
CODE_0DE2BD:        DD 61 E2      CMP DATA_0DE261,x               ;
CODE_0DE2C0:        90 38         BCC CODE_0DE2FA           ;
CODE_0DE2C2:        A9 01         LDA #$01                  ;
CODE_0DE2C4:        85 E4         STA $E4                   ;
CODE_0DE2C6:        20 F7 EA      JSR CODE_0DEAF7           ;
CODE_0DE2C9:        F0 2F         BEQ CODE_0DE2FA           ;
CODE_0DE2CB:        20 6C E6      JSR CODE_0DE66C           ;
CODE_0DE2CE:        B0 53         BCS CODE_0DE323           ;
CODE_0DE2D0:        A4 A0         LDY $A0                   ;
CODE_0DE2D2:        10 26         BPL CODE_0DE2FA           ;
CODE_0DE2D4:        A4 04         LDY $04                   ;
CODE_0DE2D6:        C0 04         CPY #$04                  ;
CODE_0DE2D8:        90 20         BCC CODE_0DE2FA           ;
CODE_0DE2DA:        20 5A E6      JSR CODE_0DE65A           ;
CODE_0DE2DD:        B0 0E         BCS CODE_0DE2ED           ;
CODE_0DE2DF:        A4 5C         LDY $5C                   ;
CODE_0DE2E1:        F0 13         BEQ CODE_0DE2F6           ;
CODE_0DE2E3:        AC 8C 07      LDY $078C                 ;
CODE_0DE2E6:        D0 0E         BNE CODE_0DE2F6           ;
CODE_0DE2E8:        20 49 BC      JSR CODE_0DBC49           ;
CODE_0DE2EB:        80 0D         BRA CODE_0DE2FA           ;

CODE_0DE2ED:        C9 2F         CMP #$2F                  ;
CODE_0DE2EF:        F0 05         BEQ CODE_0DE2F6           ;
CODE_0DE2F1:        A9 01         LDA #$01                  ;
CODE_0DE2F3:        8D 00 16      STA $1600                 ;
CODE_0DE2F6:        A9 01         LDA #$01                  ;
CODE_0DE2F8:        85 A0         STA $A0                   ;
CODE_0DE2FA:        A4 EB         LDY $EB                   ;
CODE_0DE2FC:        AD 37 02      LDA $0237                 ;
CODE_0DE2FF:        C9 CF         CMP #$CF                  ;
CODE_0DE301:        B0 64         BCS CODE_0DE367           ;
CODE_0DE303:        64 E4         STZ $E4                   ;
CODE_0DE305:        20 F6 EA      JSR CODE_0DEAF6           ;
CODE_0DE308:        20 6C E6      JSR CODE_0DE66C           ;
CODE_0DE30B:        B0 16         BCS CODE_0DE323           ;
CODE_0DE30D:        48            PHA                       ;
CODE_0DE30E:        64 E4         STZ $E4                   ;
CODE_0DE310:        20 F6 EA      JSR CODE_0DEAF6           ;
CODE_0DE313:        85 00         STA $00                   ;
CODE_0DE315:        68            PLA                       ;
CODE_0DE316:        85 01         STA $01                   ;
CODE_0DE318:        D0 0C         BNE CODE_0DE326           ;
CODE_0DE31A:        A5 00         LDA $00                   ;
CODE_0DE31C:        F0 49         BEQ CODE_0DE367           ;
CODE_0DE31E:        20 6C E6      JSR CODE_0DE66C           ;
CODE_0DE321:        90 03         BCC CODE_0DE326           ;
CODE_0DE323:        4C 20 E4      JMP CODE_0DE420           ;

CODE_0DE326:        20 65 E6      JSR CODE_0DE665           ;
CODE_0DE329:        B0 3C         BCS CODE_0DE367           ;
CODE_0DE32B:        A4 A0         LDY $A0                   ;
CODE_0DE32D:        30 38         BMI CODE_0DE367           ;
CODE_0DE32F:        C9 FE         CMP #$FE                  ;
CODE_0DE331:        D0 03         BNE CODE_0DE336           ;
CODE_0DE333:        4C 29 E4      JMP CODE_0DE429           ;

CODE_0DE336:        20 5A E5      JSR CODE_0DE55A           ;
CODE_0DE339:        F0 2C         BEQ CODE_0DE367           ;
CODE_0DE33B:        AC 0E 07      LDY $070E                 ;
CODE_0DE33E:        D0 23         BNE CODE_0DE363           ;
CODE_0DE340:        A4 04         LDY $04                   ;
CODE_0DE342:        C0 05         CPY #$05                  ;
CODE_0DE344:        90 07         BCC CODE_0DE34D           ;
CODE_0DE346:        A5 46         LDA $46                   ;
CODE_0DE348:        85 00         STA $00                   ;
CODE_0DE34A:        4C 14 E6      JMP CODE_0DE614           ;

CODE_0DE34D:        20 71 E5      JSR CODE_0DE571           ;
CODE_0DE350:        A9 F0         LDA #$F0                  ;
CODE_0DE352:        2D 37 02      AND $0237                 ;
CODE_0DE355:        8D 37 02      STA $0237                 ;
CODE_0DE358:        20 98 E5      JSR CODE_0DE598           ;
CODE_0DE35B:        64 A0         STZ $A0                   ;
CODE_0DE35D:        9C 3C 04      STZ $043C                 ;
CODE_0DE360:        9C 84 02      STZ $0284                 ;
CODE_0DE363:        A9 00         LDA #$00                  ;
CODE_0DE365:        85 28         STA $28                   ;
CODE_0DE367:        A4 EB         LDY $EB                   ;
CODE_0DE369:        C8            INY                       ;
CODE_0DE36A:        C8            INY                       ;
CODE_0DE36B:        A9 02         LDA #$02                  ;
CODE_0DE36D:        85 00         STA $00                   ;
CODE_0DE36F:        C8            INY                       ;
CODE_0DE370:        84 EB         STY $EB                   ;
CODE_0DE372:        AD 37 02      LDA $0237                 ;
CODE_0DE375:        C9 20         CMP #$20                  ;
CODE_0DE377:        90 18         BCC CODE_0DE391           ;
CODE_0DE379:        C9 E4         CMP #$E4                  ;
CODE_0DE37B:        B0 2D         BCS CODE_0DE3AA           ;
CODE_0DE37D:        64 E4         STZ $E4                   ;
CODE_0DE37F:        20 FB EA      JSR CODE_0DEAFB           ;
CODE_0DE382:        F0 0D         BEQ CODE_0DE391           ;
CODE_0DE384:        C9 25         CMP #$25                  ;
CODE_0DE386:        F0 09         BEQ CODE_0DE391           ;
CODE_0DE388:        C9 76         CMP #$76                  ;
CODE_0DE38A:        F0 05         BEQ CODE_0DE391           ;
CODE_0DE38C:        20 65 E6      JSR CODE_0DE665           ;
CODE_0DE38F:        90 1A         BCC CODE_0DE3AB           ;
CODE_0DE391:        A4 EB         LDY $EB                   ;
CODE_0DE393:        C8            INY                       ;
CODE_0DE394:        AD 37 02      LDA $0237                 ;
CODE_0DE397:        C9 08         CMP #$08                  ;
CODE_0DE399:        90 0F         BCC CODE_0DE3AA           ;
CODE_0DE39B:        C9 D0         CMP #$D0                  ;
CODE_0DE39D:        B0 0B         BCS CODE_0DE3AA           ;
CODE_0DE39F:        64 E4         STZ $E4                   ;
CODE_0DE3A1:        20 FB EA      JSR CODE_0DEAFB           ;
CODE_0DE3A4:        D0 05         BNE CODE_0DE3AB           ;
CODE_0DE3A6:        C6 00         DEC $00                   ;
CODE_0DE3A8:        D0 C5         BNE CODE_0DE36F           ;
CODE_0DE3AA:        60            RTS                       ;

CODE_0DE3AB:        20 5A E5      JSR CODE_0DE55A           ;
CODE_0DE3AE:        F0 6D         BEQ CODE_0DE41D           ;
CODE_0DE3B0:        20 65 E6      JSR CODE_0DE665           ;
CODE_0DE3B3:        90 03         BCC CODE_0DE3B8           ;
CODE_0DE3B5:        4C 7C E4      JMP CODE_0DE47C           ;

CODE_0DE3B8:        20 6C E6      JSR CODE_0DE66C           ;
CODE_0DE3BB:        B0 63         BCS CODE_0DE420           ;
CODE_0DE3BD:        20 8D E5      JSR CODE_0DE58D           ;
CODE_0DE3C0:        90 08         BCC CODE_0DE3CA           ;
CODE_0DE3C2:        AD 0E 07      LDA $070E                 ;
CODE_0DE3C5:        D0 56         BNE CODE_0DE41D           ;
CODE_0DE3C7:        4C 1A E4      JMP CODE_0DE41A           ;

CODE_0DE3CA:        A4 28         LDY $28                   ;
CODE_0DE3CC:        C0 00         CPY #$00                  ;
CODE_0DE3CE:        D0 4A         BNE CODE_0DE41A           ;
CODE_0DE3D0:        AC 02 02      LDY $0202                 ;
CODE_0DE3D3:        88            DEY                       ;
CODE_0DE3D4:        D0 44         BNE CODE_0DE41A           ;
CODE_0DE3D6:        C9 77         CMP #$77                  ;
CODE_0DE3D8:        F0 04         BEQ CODE_0DE3DE           ;
CODE_0DE3DA:        C9 28         CMP #$28                  ;
CODE_0DE3DC:        D0 3C         BNE CODE_0DE41A           ;
CODE_0DE3DE:        AD 56 02      LDA $0256                 ;
CODE_0DE3E1:        F0 0E         BEQ CODE_0DE3F1           ;
CODE_0DE3E3:        A4 9A         LDY $9A                   ;
CODE_0DE3E5:        D0 0A         BNE CODE_0DE3F1           ;
CODE_0DE3E7:        A0 04         LDY #$04                  ;
CODE_0DE3E9:        8C 00 16      STY $1600                 ;
CODE_0DE3EC:        84 9A         STY $9A                   ;
CODE_0DE3EE:        9C AF 07      STZ $07AF                 ;
CODE_0DE3F1:        29 CF         AND #$CF                  ;
CODE_0DE3F3:        8D 56 02      STA $0256                 ;
CODE_0DE3F6:        AD 19 02      LDA $0219                 ;
CODE_0DE3F9:        29 0F         AND #$0F                  ;
CODE_0DE3FB:        F0 0E         BEQ CODE_0DE40B           ;
CODE_0DE3FD:        A0 00         LDY #$00                  ;
CODE_0DE3FF:        AD 1A 07      LDA $071A                 ;
CODE_0DE402:        F0 01         BEQ CODE_0DE405           ;
CODE_0DE404:        C8            INY                       ;
CODE_0DE405:        B9 1E E4      LDA DATA_0DE41E,y               ;
CODE_0DE408:        8D DE 06      STA $06DE                 ;
CODE_0DE40B:        A5 0F         LDA $0F                   ;
CODE_0DE40D:        C9 07         CMP #$07                  ;
CODE_0DE40F:        F0 0C         BEQ CODE_0DE41D           ;
CODE_0DE411:        C9 08         CMP #$08                  ;
CODE_0DE413:        D0 08         BNE CODE_0DE41D           ;
CODE_0DE415:        A9 02         LDA #$02                  ;
CODE_0DE417:        85 0F         STA $0F                   ;
CODE_0DE419:        60            RTS                       ;

CODE_0DE41A:        20 14 E6      JSR CODE_0DE614           ;
CODE_0DE41D:        60            RTS                       ;

DATA_0DE41E:        db $34,$34

CODE_0DE420:        20 6A E4      JSR CODE_0DE46A           ;
CODE_0DE423:        EE 48 07      INC $0748                 ;
CODE_0DE426:        4C FF BA      JMP CODE_0DBAFF           ;

CODE_0DE429:        9C 72 07      STZ $0772                 ;
CODE_0DE42C:        A9 02         LDA #$02                  ;
CODE_0DE42E:        8D 70 07      STA $0770                 ;
CODE_0DE431:        AD 42 21      LDA $2142                 ;
CODE_0DE434:        C9 0B         CMP #$0B                  ;
CODE_0DE436:        F0 05         BEQ CODE_0DE43D           ;
CODE_0DE438:        A9 F0         LDA #$F0                  ;
CODE_0DE43A:        8D 02 16      STA $1602                 ;
CODE_0DE43D:        A9 18         LDA #$18                  ;
CODE_0DE43F:        85 5D         STA $5D                   ;
CODE_0DE441:        DA            PHX                       ;
CODE_0DE442:        A2 00         LDX #$00                  ;
CODE_0DE444:        B5 1C         LDA $1C,x                 ;
CODE_0DE446:        C9 2D         CMP #$2D                  ;
CODE_0DE448:        D0 1A         BNE CODE_0DE464           ;
CODE_0DE44A:        B5 10         LDA $10,x                 ;
CODE_0DE44C:        C9 01         CMP #$01                  ;
CODE_0DE44E:        D0 14         BNE CODE_0DE464           ;
CODE_0DE450:        BD 1A 02      LDA $021A,x               ;
CODE_0DE453:        38            SEC                       ;
CODE_0DE454:        ED 3F 07      SBC $073F                 ;
CODE_0DE457:        8D AE 03      STA $03AE                 ;
CODE_0DE45A:        BD 38 02      LDA $0238,x               ;
CODE_0DE45D:        8D B9 03      STA $03B9                 ;
CODE_0DE460:        22 3D D7 0F   JSL CODE_0FD73D           ;
CODE_0DE464:        E8            INX                       ;
CODE_0DE465:        E0 09         CPX #$09                  ;
CODE_0DE467:        D0 DB         BNE CODE_0DE444           ;
CODE_0DE469:        FA            PLX                       ;
CODE_0DE46A:        A4 02         LDY $02                   ;
CODE_0DE46C:        A9 00         LDA #$00                  ;
CODE_0DE46E:        91 06         STA ($06),y               ;
CODE_0DE470:        4C 46 90      JMP CODE_0D9046           ;

DATA_0DE473:        db $F9,$07,$FF,$00

DATA_0DE477:        db $18,$22,$50,$68,$90

CODE_0DE47C:        A4 04         LDY $04                   ;
CODE_0DE47E:        C0 06         CPY #$06                  ;
CODE_0DE480:        90 04         BCC CODE_0DE486           ;
CODE_0DE482:        C0 0A         CPY #$0A                  ;
CODE_0DE484:        90 01         BCC CODE_0DE487           ;
CODE_0DE486:        60            RTS                       ;

CODE_0DE487:        C9 2D         CMP #$2D                  ;
CODE_0DE489:        F0 04         BEQ CODE_0DE48F           ;
CODE_0DE48B:        C9 2E         CMP #$2E                  ;
CODE_0DE48D:        D0 51         BNE CODE_0DE4E0           ;
CODE_0DE48F:        A5 0F         LDA $0F                   ;
CODE_0DE491:        C9 05         CMP #$05                  ;
CODE_0DE493:        F0 5A         BEQ CODE_0DE4EF           ;
CODE_0DE495:        EE 23 07      INC $0723                 ;
CODE_0DE498:        A5 0F         LDA $0F                   ;
CODE_0DE49A:        C9 04         CMP #$04                  ;
CODE_0DE49C:        F0 3C         BEQ CODE_0DE4DA           ;
CODE_0DE49E:        A9 33         LDA #$33                  ;
CODE_0DE4A0:        20 1A A6      JSR CODE_0DA61A           ;
CODE_0DE4A3:        22 7D 87 0E   JSL CODE_0E877D           ;
CODE_0DE4A7:        A9 F0         LDA #$F0                  ;
CODE_0DE4A9:        8D 02 16      STA $1602                 ;
CODE_0DE4AC:        A9 46         LDA #$46                  ;
CODE_0DE4AE:        8D 00 16      STA $1600                 ;
CODE_0DE4B1:        4A            LSR A                     ;
CODE_0DE4B2:        8D 13 07      STA $0713                 ;
CODE_0DE4B5:        A2 04         LDX #$04                  ;
CODE_0DE4B7:        AD 37 02      LDA $0237                 ;
CODE_0DE4BA:        8D 0F 07      STA $070F                 ;
CODE_0DE4BD:        DD 77 E4      CMP DATA_0DE477,x               ;
CODE_0DE4C0:        B0 03         BCS CODE_0DE4C5           ;
CODE_0DE4C2:        CA            DEX                       ;
CODE_0DE4C3:        D0 F8         BNE CODE_0DE4BD           ;
CODE_0DE4C5:        8E 0F 01      STX $010F                 ;
CODE_0DE4C8:        AD DE 07      LDA $07DE                 ;
CODE_0DE4CB:        CD DF 07      CMP $07DF                 ;
CODE_0DE4CE:        D0 0A         BNE CODE_0DE4DA           ;
CODE_0DE4D0:        CD EB 07      CMP $07EB                 ;
CODE_0DE4D3:        D0 05         BNE CODE_0DE4DA           ;
CODE_0DE4D5:        A9 05         LDA #$05                  ;
CODE_0DE4D7:        8D 0F 01      STA $010F                 ;
CODE_0DE4DA:        A9 04         LDA #$04                  ;
CODE_0DE4DC:        85 0F         STA $0F                   ;
CODE_0DE4DE:        80 0F         BRA CODE_0DE4EF           ;

CODE_0DE4E0:        C9 2F         CMP #$2F                  ;
CODE_0DE4E2:        D0 0B         BNE CODE_0DE4EF           ;
CODE_0DE4E4:        AD 37 02      LDA $0237                 ;
CODE_0DE4E7:        C9 20         CMP #$20                  ;
CODE_0DE4E9:        B0 04         BCS CODE_0DE4EF           ;
CODE_0DE4EB:        A9 01         LDA #$01                  ;
CODE_0DE4ED:        85 0F         STA $0F                   ;
CODE_0DE4EF:        A9 03         LDA #$03                  ;
CODE_0DE4F1:        85 28         STA $28                   ;
CODE_0DE4F3:        64 5D         STZ $5D                   ;
CODE_0DE4F5:        9C 05 07      STZ $0705                 ;
CODE_0DE4F8:        AD 98 03      LDA $0398                 ;
CODE_0DE4FB:        F0 2F         BEQ CODE_0DE52C           ;
CODE_0DE4FD:        AD AE 03      LDA $03AE                 ;
CODE_0DE500:        10 2A         BPL CODE_0DE52C           ;
CODE_0DE502:        C9 F8         CMP #$F8                  ;
CODE_0DE504:        90 26         BCC CODE_0DE52C           ;
CODE_0DE506:        AD 82 00      LDA $0082                 ;
CODE_0DE509:        85 E5         STA $E5                   ;
CODE_0DE50B:        AD 23 02      LDA $0223                 ;
CODE_0DE50E:        85 E4         STA $E4                   ;
CODE_0DE510:        C2 20         REP #$20                  ;
CODE_0DE512:        A5 E4         LDA $E4                   ;
CODE_0DE514:        18            CLC                       ;
CODE_0DE515:        69 07 00      ADC #$0007                ;
CODE_0DE518:        85 E4         STA $E4                   ;
CODE_0DE51A:        E2 20         SEP #$20                  ;
CODE_0DE51C:        A5 E4         LDA $E4                   ;
CODE_0DE51E:        8D 19 02      STA $0219                 ;
CODE_0DE521:        A5 E5         LDA $E5                   ;
CODE_0DE523:        85 78         STA $78                   ;
CODE_0DE525:        A9 02         LDA #$02                  ;
CODE_0DE527:        8D 02 02      STA $0202                 ;
CODE_0DE52A:        80 2D         BRA CODE_0DE559           ;

CODE_0DE52C:        AD 19 02      LDA $0219                 ;
CODE_0DE52F:        38            SEC                       ;
CODE_0DE530:        ED 1C 07      SBC $071C                 ;
CODE_0DE533:        C9 10         CMP #$10                  ;
CODE_0DE535:        B0 05         BCS CODE_0DE53C           ;
CODE_0DE537:        A9 02         LDA #$02                  ;
CODE_0DE539:        8D 02 02      STA $0202                 ;
CODE_0DE53C:        AC 02 02      LDY $0202                 ;
CODE_0DE53F:        A5 06         LDA $06                   ;
CODE_0DE541:        0A            ASL A                     ;
CODE_0DE542:        0A            ASL A                     ;
CODE_0DE543:        0A            ASL A                     ;
CODE_0DE544:        0A            ASL A                     ;
CODE_0DE545:        18            CLC                       ;
CODE_0DE546:        79 72 E4      ADC DATA_0DE473-1,y               ;
CODE_0DE549:        8D 19 02      STA $0219                 ;
CODE_0DE54C:        A5 06         LDA $06                   ;
CODE_0DE54E:        D0 09         BNE CODE_0DE559           ;
CODE_0DE550:        AD 1B 07      LDA $071B                 ;
CODE_0DE553:        18            CLC                       ;
CODE_0DE554:        79 74 E4      ADC DATA_0DE473+1,y               ;
CODE_0DE557:        85 78         STA $78                   ;
CODE_0DE559:        60            RTS                       ;

CODE_0DE55A:        C9 5C         CMP #$5C                  ;
CODE_0DE55C:        F0 12         BEQ CODE_0DE570           ;
CODE_0DE55E:        C9 5D         CMP #$5D                  ;
CODE_0DE560:        F0 0E         BEQ CODE_0DE570           ;
CODE_0DE562:        C9 5E         CMP #$5E                  ;
CODE_0DE564:        F0 0A         BEQ CODE_0DE570           ;
CODE_0DE566:        C9 60         CMP #$60                  ;
CODE_0DE568:        F0 06         BEQ CODE_0DE570           ;
CODE_0DE56A:        C9 61         CMP #$61                  ;
CODE_0DE56C:        F0 02         BEQ CODE_0DE570           ;
CODE_0DE56E:        C9 5F         CMP #$5F                  ;
CODE_0DE570:        60            RTS                       ;

CODE_0DE571:        20 8D E5      JSR CODE_0DE58D           ;
CODE_0DE574:        90 16         BCC CODE_0DE58C           ;
CODE_0DE576:        A9 70         LDA #$70                  ;
CODE_0DE578:        8D 09 07      STA $0709                 ;
CODE_0DE57B:        8D 0A 07      STA $070A                 ;
CODE_0DE57E:        A9 F9         LDA #$F9                  ;
CODE_0DE580:        8D DB 06      STA $06DB                 ;
CODE_0DE583:        A9 03         LDA #$03                  ;
CODE_0DE585:        8D 8E 07      STA $078E                 ;
CODE_0DE588:        4A            LSR A                     ;
CODE_0DE589:        8D 0E 07      STA $070E                 ;
CODE_0DE58C:        60            RTS                       ;

CODE_0DE58D:        C9 6E         CMP #$6E                  ;
CODE_0DE58F:        F0 05         BEQ CODE_0DE596           ;
CODE_0DE591:        C9 6F         CMP #$6F                  ;
CODE_0DE593:        18            CLC                       ;
CODE_0DE594:        D0 01         BNE CODE_0DE597           ;
CODE_0DE596:        38            SEC                       ;
CODE_0DE597:        60            RTS                       ;

CODE_0DE598:        A5 0B         LDA $0B                   ;
CODE_0DE59A:        29 04         AND #$04                  ;
CODE_0DE59C:        F0 75         BEQ CODE_0DE613           ;
CODE_0DE59E:        A5 00         LDA $00                   ;
CODE_0DE5A0:        C9 17         CMP #$17                  ;
CODE_0DE5A2:        D0 6F         BNE CODE_0DE613           ;
CODE_0DE5A4:        A5 01         LDA $01                   ;
CODE_0DE5A6:        C9 16         CMP #$16                  ;
CODE_0DE5A8:        D0 69         BNE CODE_0DE613           ;
CODE_0DE5AA:        A9 30         LDA #$30                  ;
CODE_0DE5AC:        8D DE 06      STA $06DE                 ;
CODE_0DE5AF:        A9 03         LDA #$03                  ;
CODE_0DE5B1:        85 0F         STA $0F                   ;
CODE_0DE5B3:        A9 04         LDA #$04                  ;
CODE_0DE5B5:        8D AE 07      STA $07AE                 ;
CODE_0DE5B8:        9C AF 07      STZ $07AF                 ;
CODE_0DE5BB:        A9 00         LDA #$00                  ;
CODE_0DE5BD:        8D 56 02      STA $0256                 ;
CODE_0DE5C0:        AD D6 06      LDA $06D6                 ;
CODE_0DE5C3:        F0 48         BEQ CODE_0DE60D           ;
CODE_0DE5C5:        29 0F         AND #$0F                  ;
CODE_0DE5C7:        AA            TAX                       ;
CODE_0DE5C8:        AD 5F 07      LDA $075F                 ;
CODE_0DE5CB:        C9 08         CMP #$08                  ;
CODE_0DE5CD:        B0 05         BCS CODE_0DE5D4           ;
CODE_0DE5CF:        A9 01         LDA #$01                  ;
CODE_0DE5D1:        8D 2B 0F      STA $0F2B                 ;
CODE_0DE5D4:        BD 98 8D      LDA DATA_0D8D98,x         ;
CODE_0DE5D7:        A8            TAY                       ;
CODE_0DE5D8:        88            DEY                       ;
CODE_0DE5D9:        8C 5F 07      STY $075F                 ;
CODE_0DE5DC:        BE 99 C4      LDX.w DATA_0EC499,y       ; ??? leftover code? X immediately gets overwritten.
CODE_0DE5DF:        BB            TYX                       ;
CODE_0DE5E0:        BF 99 C4 0E   LDA.l DATA_0EC499,x       ;
CODE_0DE5E4:        AA            TAX                       ;
CODE_0DE5E5:        BF A6 C4 0E   LDA.l DATA_0EC4A6,x       ;
CODE_0DE5E9:        8D 50 07      STA $0750                 ;
CODE_0DE5EC:        A9 80         LDA #$80                  ;
CODE_0DE5EE:        8D 02 16      STA $1602                 ;
CODE_0DE5F1:        A9 00         LDA #$00                  ;
CODE_0DE5F3:        8D 51 07      STA $0751                 ;
CODE_0DE5F6:        8D 60 07      STA $0760                 ;
CODE_0DE5F9:        8D 5C 07      STA $075C                 ;
CODE_0DE5FC:        8D 52 07      STA $0752                 ;
CODE_0DE5FF:        EE 5D 07      INC $075D                 ;
CODE_0DE602:        EE 57 07      INC $0757                 ;
CODE_0DE605:        A9 F3         LDA #$F3                  ;
CODE_0DE607:        8D 02 16      STA $1602                 ;
CODE_0DE60A:        8D 1A 0E      STA $0E1A                 ;
CODE_0DE60D:        A9 04         LDA #$04                  ;
CODE_0DE60F:        8D 00 16      STA $1600                 ;
CODE_0DE612:        60            RTS                       ;

CODE_0DE613:        60            RTS                       ;

CODE_0DE614:        A9 00         LDA #$00                  ;
CODE_0DE616:        A4 5D         LDY $5D                   ;
CODE_0DE618:        A6 00         LDX $00                   ;
CODE_0DE61A:        CA            DEX                       ;
CODE_0DE61B:        D0 0A         BNE CODE_0DE627           ;
CODE_0DE61D:        E8            INX                       ;
CODE_0DE61E:        C0 00         CPY #$00                  ;
CODE_0DE620:        30 2A         BMI CODE_0DE64C           ;
CODE_0DE622:        A9 FF         LDA #$FF                  ;
CODE_0DE624:        4C 2F E6      JMP CODE_0DE62F           ;

CODE_0DE627:        A2 02         LDX #$02                  ;
CODE_0DE629:        C0 01         CPY #$01                  ;
CODE_0DE62B:        10 1F         BPL CODE_0DE64C           ;
CODE_0DE62D:        A9 01         LDA #$01                  ;
CODE_0DE62F:        A0 10         LDY #$10                  ;
CODE_0DE631:        8C 8D 07      STY $078D                 ;
CODE_0DE634:        A0 00         LDY #$00                  ;
CODE_0DE636:        84 5D         STY $5D                   ;
CODE_0DE638:        C9 00         CMP #$00                  ;
CODE_0DE63A:        10 01         BPL CODE_0DE63D           ;
CODE_0DE63C:        88            DEY                       ;
CODE_0DE63D:        84 00         STY $00                   ;
CODE_0DE63F:        18            CLC                       ;
CODE_0DE640:        6D 19 02      ADC $0219                 ;
CODE_0DE643:        8D 19 02      STA $0219                 ;
CODE_0DE646:        A5 78         LDA $78                   ;
CODE_0DE648:        65 00         ADC $00                   ;
CODE_0DE64A:        85 78         STA $78                   ;
CODE_0DE64C:        8A            TXA                       ;
CODE_0DE64D:        49 FF         EOR #$FF                  ;
CODE_0DE64F:        2D 80 04      AND $0480                 ;
CODE_0DE652:        8D 80 04      STA $0480                 ;
CODE_0DE655:        60            RTS                       ;

DATA_0DE656:        db $16,$62,$86,$FD

CODE_0DE65A:        20 7C E6      JSR CODE_0DE67C           ;
CODE_0DE65D:        DD 56 E6      CMP DATA_0DE656,x               ;
CODE_0DE660:        60            RTS                       ;

DATA_0DE661:        db $2D,$78,$88,$FF

CODE_0DE665:        20 7C E6      JSR CODE_0DE67C 
CODE_0DE668:        DD 61 E6      CMP DATA_0DE661,x               ;
CODE_0DE66B:        60            RTS                       ;

CODE_0DE66C:        C9 EA         CMP #$EA                  ;
CODE_0DE66E:        F0 06         BEQ CODE_0DE676           ;
CODE_0DE670:        C9 EB         CMP #$EB                  ;
CODE_0DE672:        F0 02         BEQ CODE_0DE676           ;
CODE_0DE674:        18            CLC                       ;
CODE_0DE675:        60            RTS                       ;

CODE_0DE676:        A9 01         LDA #$01                  ;
CODE_0DE678:        8D 03 16      STA $1603                 ;
CODE_0DE67B:        60            RTS                       ;

CODE_0DE67C:        A8            TAY                       ;
CODE_0DE67D:        29 C0         AND #$C0                  ;
CODE_0DE67F:        0A            ASL A                     ;
CODE_0DE680:        2A            ROL A                     ;
CODE_0DE681:        2A            ROL A                     ;
CODE_0DE682:        AA            TAX                       ;
CODE_0DE683:        98            TYA                       ;
CODE_0DE684:        60            RTS                       ;

DATA_0DE685:        db $01,$01,$02,$02,$02,$05

DATA_0DE68B:        db $10,$F0

CODE_0DE68D:        B5 29         LDA $29,x                 ;
CODE_0DE68F:        29 20         AND #$20                  ;
CODE_0DE691:        D0 F1         BNE CODE_0DE684           ;
CODE_0DE693:        20 44 E8      JSR CODE_0DE844           ;
CODE_0DE696:        90 EC         BCC CODE_0DE684           ;
CODE_0DE698:        B4 1C         LDY $1C,x                 ;
CODE_0DE69A:        C0 12         CPY #$12                  ;
CODE_0DE69C:        D0 07         BNE CODE_0DE6A5           ;
CODE_0DE69E:        BD 38 02      LDA $0238,x               ;
CODE_0DE6A1:        C9 25         CMP #$25                  ;
CODE_0DE6A3:        90 DF         BCC CODE_0DE684           ;
CODE_0DE6A5:        C0 0E         CPY #$0E                  ;
CODE_0DE6A7:        D0 03         BNE CODE_0DE6AC           ;
CODE_0DE6A9:        4C 4D E8      JMP CODE_0DE84D           ;

CODE_0DE6AC:        C0 05         CPY #$05                  ;
CODE_0DE6AE:        D0 04         BNE CODE_0DE6B4           ;
CODE_0DE6B0:        4C 6F E8      JMP CODE_0DE86F           ;

CODE_0DE6B3:        60            RTS                       ;

CODE_0DE6B4:        C0 12         CPY #$12                  ;
CODE_0DE6B6:        F0 0C         BEQ CODE_0DE6C4           ;
CODE_0DE6B8:        C0 2E         CPY #$2E                  ;
CODE_0DE6BA:        F0 08         BEQ CODE_0DE6C4           ;
CODE_0DE6BC:        C0 04         CPY #$04                  ;
CODE_0DE6BE:        F0 F3         BEQ CODE_0DE6B3           ;
CODE_0DE6C0:        C0 07         CPY #$07                  ;
CODE_0DE6C2:        B0 EF         BCS CODE_0DE6B3           ;
CODE_0DE6C4:        20 98 E8      JSR CODE_0DE898           ;
CODE_0DE6C7:        D0 03         BNE CODE_0DE6CC           ;
CODE_0DE6C9:        4C BE E7      JMP CODE_0DE7BE           ;

CODE_0DE6CC:        20 9F E8      JSR CODE_0DE89F           ;
CODE_0DE6CF:        F0 F8         BEQ CODE_0DE6C9           ;
CODE_0DE6D1:        C9 2C         CMP #$2C                  ;
CODE_0DE6D3:        D0 6E         BNE CODE_0DE743           ;
CODE_0DE6D5:        B5 1C         LDA $1C,x                 ;
CODE_0DE6D7:        C9 15         CMP #$15                  ;
CODE_0DE6D9:        B0 0C         BCS CODE_0DE6E7           ;
CODE_0DE6DB:        C9 06         CMP #$06                  ;
CODE_0DE6DD:        D0 03         BNE CODE_0DE6E2           ;
CODE_0DE6DF:        20 78 E8      JSR CODE_0DE878           ;
CODE_0DE6E2:        A9 01         LDA #$01                  ;
CODE_0DE6E4:        20 C3 DF      JSR CODE_0DDFC3           ;
CODE_0DE6E7:        BD 1C 00      LDA $001C,x               ;
CODE_0DE6EA:        C9 09         CMP #$09                  ;
CODE_0DE6EC:        90 18         BCC CODE_0DE706           ;
CODE_0DE6EE:        C9 11         CMP #$11                  ;
CODE_0DE6F0:        B0 14         BCS CODE_0DE706           ;
CODE_0DE6F2:        C9 0D         CMP #$0D                  ;
CODE_0DE6F4:        F0 10         BEQ CODE_0DE706           ;
CODE_0DE6F6:        C9 04         CMP #$04                  ;
CODE_0DE6F8:        F0 0C         BEQ CODE_0DE706           ;
CODE_0DE6FA:        C9 0A         CMP #$0A                  ;
CODE_0DE6FC:        90 04         BCC CODE_0DE702           ;
CODE_0DE6FE:        C9 0D         CMP #$0D                  ;
CODE_0DE700:        90 04         BCC CODE_0DE706           ;
CODE_0DE702:        29 01         AND #$01                  ;
CODE_0DE704:        95 1C         STA $1C,x                 ;
CODE_0DE706:        C9 2E         CMP #$2E                  ;
CODE_0DE708:        F0 08         BEQ CODE_0DE712           ;
CODE_0DE70A:        C9 06         CMP #$06                  ;
CODE_0DE70C:        F0 04         BEQ CODE_0DE712           ;
CODE_0DE70E:        A9 02         LDA #$02                  ;
CODE_0DE710:        95 29         STA $29,x                 ;
CODE_0DE712:        DE 38 02      DEC $0238,x               ;
CODE_0DE715:        DE 38 02      DEC $0238,x               ;
CODE_0DE718:        B5 1C         LDA $1C,x                 ;
CODE_0DE71A:        C9 07         CMP #$07                  ;
CODE_0DE71C:        F0 06         BEQ CODE_0DE724           ;
CODE_0DE71E:        A9 FD         LDA #$FD                  ;
CODE_0DE720:        A4 5C         LDY $5C                   ;
CODE_0DE722:        D0 02         BNE CODE_0DE726           ;
CODE_0DE724:        A9 FF         LDA #$FF                  ;
CODE_0DE726:        95 A1         STA $A1,x                 ;
CODE_0DE728:        A0 01         LDY #$01                  ;
CODE_0DE72A:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DE72D:        10 01         BPL CODE_0DE730           ;
CODE_0DE72F:        C8            INY                       ;
CODE_0DE730:        B5 1C         LDA $1C,x                 ;
CODE_0DE732:        C9 33         CMP #$33                  ;
CODE_0DE734:        F0 06         BEQ CODE_0DE73C           ;
CODE_0DE736:        C9 08         CMP #$08                  ;
CODE_0DE738:        F0 02         BEQ CODE_0DE73C           ;
CODE_0DE73A:        94 47         STY $47,x                 ;
CODE_0DE73C:        88            DEY                       ;
CODE_0DE73D:        B9 8B E6      LDA DATA_0DE68B,y               ;
CODE_0DE740:        95 5E         STA $5E,x                 ;
CODE_0DE742:        60            RTS                       ;

CODE_0DE743:        A5 04         LDA $04                   ;
CODE_0DE745:        38            SEC                       ;
CODE_0DE746:        E9 08         SBC #$08                  ;
CODE_0DE748:        C9 05         CMP #$05                  ;
CODE_0DE74A:        B0 72         BCS CODE_0DE7BE           ;
CODE_0DE74C:        B5 29         LDA $29,x                 ;
CODE_0DE74E:        29 40         AND #$40                  ;
CODE_0DE750:        D0 57         BNE CODE_0DE7A9           ;
CODE_0DE752:        B5 29         LDA $29,x                 ;
CODE_0DE754:        0A            ASL A                     ;
CODE_0DE755:        90 03         BCC CODE_0DE75A           ;
CODE_0DE757:        4C D9 E7      JMP CODE_0DE7D9           ;

CODE_0DE75A:        B5 29         LDA $29,x                 ;
CODE_0DE75C:        F0 F9         BEQ CODE_0DE757           ;
CODE_0DE75E:        C9 05         CMP #$05                  ;
CODE_0DE760:        F0 1F         BEQ CODE_0DE781           ;
CODE_0DE762:        C9 03         CMP #$03                  ;
CODE_0DE764:        B0 1A         BCS CODE_0DE780           ;
CODE_0DE766:        B5 29         LDA $29,x                 ;
CODE_0DE768:        C9 02         CMP #$02                  ;
CODE_0DE76A:        D0 15         BNE CODE_0DE781           ;
CODE_0DE76C:        A9 10         LDA #$10                  ;
CODE_0DE76E:        B4 1C         LDY $1C,x                 ;
CODE_0DE770:        C0 12         CPY #$12                  ;
CODE_0DE772:        D0 02         BNE CODE_0DE776           ;
CODE_0DE774:        A9 00         LDA #$00                  ;
CODE_0DE776:        9D A2 07      STA $07A2,x               ;
CODE_0DE779:        A9 03         LDA #$03                  ;
CODE_0DE77B:        95 29         STA $29,x                 ;
CODE_0DE77D:        20 36 E8      JSR CODE_0DE836           ;
CODE_0DE780:        60            RTS                       ;

CODE_0DE781:        B5 1C         LDA $1C,x                 ;
CODE_0DE783:        C9 06         CMP #$06                  ;
CODE_0DE785:        F0 22         BEQ CODE_0DE7A9           ;
CODE_0DE787:        C9 12         CMP #$12                  ;
CODE_0DE789:        D0 0E         BNE CODE_0DE799           ;
CODE_0DE78B:        A9 01         LDA #$01                  ;
CODE_0DE78D:        95 47         STA $47,x                 ;
CODE_0DE78F:        A9 08         LDA #$08                  ;
CODE_0DE791:        95 5E         STA $5E,x                 ;
CODE_0DE793:        A5 09         LDA $09                   ;
CODE_0DE795:        29 07         AND #$07                  ;
CODE_0DE797:        F0 10         BEQ CODE_0DE7A9           ;
CODE_0DE799:        A0 01         LDY #$01                  ;
CODE_0DE79B:        20 28 E8      JSR CODE_0DE828           ;
CODE_0DE79E:        10 01         BPL CODE_0DE7A1           ;
CODE_0DE7A0:        C8            INY                       ;
CODE_0DE7A1:        98            TYA                       ;
CODE_0DE7A2:        D5 47         CMP $47,x                 ;
CODE_0DE7A4:        D0 03         BNE CODE_0DE7A9           ;
CODE_0DE7A6:        20 00 E8      JSR CODE_0DE800           ;
CODE_0DE7A9:        20 36 E8      JSR CODE_0DE836           ;
CODE_0DE7AC:        B5 29         LDA $29,x                 ;
CODE_0DE7AE:        29 80         AND #$80                  ;
CODE_0DE7B0:        D0 05         BNE CODE_0DE7B7           ;
CODE_0DE7B2:        A9 00         LDA #$00                  ;
CODE_0DE7B4:        95 29         STA $29,x                 ;
CODE_0DE7B6:        60            RTS                       ;

CODE_0DE7B7:        B5 29         LDA $29,x                 ;
CODE_0DE7B9:        29 BF         AND #$BF                  ;
CODE_0DE7BB:        95 29         STA $29,x                 ;
CODE_0DE7BD:        60            RTS                       ;

CODE_0DE7BE:        B5 1C         LDA $1C,x                 ;
CODE_0DE7C0:        C9 03         CMP #$03                  ;
CODE_0DE7C2:        D0 04         BNE CODE_0DE7C8           ;
CODE_0DE7C4:        B5 29         LDA $29,x                 ;
CODE_0DE7C6:        F0 38         BEQ CODE_0DE800           ;
CODE_0DE7C8:        B5 29         LDA $29,x                 ;
CODE_0DE7CA:        A8            TAY                       ;
CODE_0DE7CB:        0A            ASL A                     ;
CODE_0DE7CC:        90 06         BCC CODE_0DE7D4           ;
CODE_0DE7CE:        B5 29         LDA $29,x                 ;
CODE_0DE7D0:        09 40         ORA #$40                  ;
CODE_0DE7D2:        80 03         BRA CODE_0DE7D7           ;

CODE_0DE7D4:        B9 85 E6      LDA DATA_0DE685,y               ;
CODE_0DE7D7:        95 29         STA $29,x                 ;
CODE_0DE7D9:        BD 38 02      LDA $0238,x               ;
CODE_0DE7DC:        C9 20         CMP #$20                  ;
CODE_0DE7DE:        90 1F         BCC CODE_0DE7FF           ;
CODE_0DE7E0:        A0 16         LDY #$16                  ;
CODE_0DE7E2:        A9 02         LDA #$02                  ;
CODE_0DE7E4:        85 EB         STA $EB                   ;
CODE_0DE7E6:        A5 EB         LDA $EB                   ;
CODE_0DE7E8:        D5 47         CMP $47,x                 ;
CODE_0DE7EA:        D0 0C         BNE CODE_0DE7F8           ;
CODE_0DE7EC:        A9 01         LDA #$01                  ;
CODE_0DE7EE:        20 96 EA      JSR CODE_0DEA96           ;
CODE_0DE7F1:        F0 05         BEQ CODE_0DE7F8           ;
CODE_0DE7F3:        20 9F E8      JSR CODE_0DE89F           ;
CODE_0DE7F6:        D0 08         BNE CODE_0DE800           ;
CODE_0DE7F8:        C6 EB         DEC $EB                   ;
CODE_0DE7FA:        C8            INY                       ;
CODE_0DE7FB:        C0 18         CPY #$18                  ;
CODE_0DE7FD:        90 E7         BCC CODE_0DE7E6           ;
CODE_0DE7FF:        60            RTS                       ;

CODE_0DE800:        E0 09         CPX #$09                  ;
CODE_0DE802:        F0 12         BEQ CODE_0DE816           ;
CODE_0DE804:        B5 29         LDA $29,x                 ;
CODE_0DE806:        0A            ASL A                     ;
CODE_0DE807:        90 0D         BCC CODE_0DE816           ;
CODE_0DE809:        E0 09         CPX #$09                  ;
CODE_0DE80B:        F0 09         BEQ CODE_0DE816           ;
CODE_0DE80D:        A9 01         LDA #$01                  ;
CODE_0DE80F:        8D 00 16      STA $1600                 ;
CODE_0DE812:        22 AC E0 0F   JSL CODE_0FE0AC           ;
CODE_0DE816:        B5 1C         LDA $1C,x                 ;
CODE_0DE818:        C9 05         CMP #$05                  ;
CODE_0DE81A:        D0 09         BNE CODE_0DE825           ;
CODE_0DE81C:        A9 00         LDA #$00                  ;
CODE_0DE81E:        85 00         STA $00                   ;
CODE_0DE820:        A0 FA         LDY #$FA                  ;
CODE_0DE822:        4C CF CD      JMP CODE_0DCDCF           ;

CODE_0DE825:        4C 28 E1      JMP CODE_0DE128           ;

CODE_0DE828:        BD 1A 02      LDA $021A,x               ;
CODE_0DE82B:        38            SEC                       ;
CODE_0DE82C:        ED 19 02      SBC $0219                 ;
CODE_0DE82F:        85 00         STA $00                   ;
CODE_0DE831:        B5 79         LDA $79,x                 ;
CODE_0DE833:        E5 78         SBC $78                   ;
CODE_0DE835:        60            RTS                       ;

CODE_0DE836:        20 E1 C5      JSR CODE_0DC5E1           ;
CODE_0DE839:        BD 38 02      LDA $0238,x               ;
CODE_0DE83C:        29 F0         AND #$F0                  ;
CODE_0DE83E:        09 08         ORA #$08                  ;
CODE_0DE840:        9D 38 02      STA $0238,x               ;
CODE_0DE843:        60            RTS                       ;

CODE_0DE844:        BD 38 02      LDA $0238,x               ;
CODE_0DE847:        18            CLC                       ;
CODE_0DE848:        69 3E         ADC #$3E                  ;
CODE_0DE84A:        C9 44         CMP #$44                  ;
CODE_0DE84C:        60            RTS                       ;

CODE_0DE84D:        20 44 E8      JSR CODE_0DE844           ;
CODE_0DE850:        90 1A         BCC CODE_0DE86C           ;
CODE_0DE852:        B5 A1         LDA $A1,x                 ;
CODE_0DE854:        18            CLC                       ;
CODE_0DE855:        69 02         ADC #$02                  ;
CODE_0DE857:        C9 03         CMP #$03                  ;
CODE_0DE859:        90 11         BCC CODE_0DE86C           ;
CODE_0DE85B:        20 98 E8      JSR CODE_0DE898           ;
CODE_0DE85E:        F0 0C         BEQ CODE_0DE86C           ;
CODE_0DE860:        20 9F E8      JSR CODE_0DE89F           ;
CODE_0DE863:        F0 07         BEQ CODE_0DE86C           ;
CODE_0DE865:        20 36 E8      JSR CODE_0DE836           ;
CODE_0DE868:        A9 FD         LDA #$FD                  ;
CODE_0DE86A:        95 A1         STA $A1,x                 ;
CODE_0DE86C:        4C D9 E7      JMP CODE_0DE7D9           ;

CODE_0DE86F:        20 98 E8      JSR CODE_0DE898           ;
CODE_0DE872:        F0 1D         BEQ CODE_0DE891           ;
CODE_0DE874:        C9 2C         CMP #$2C                  ;
CODE_0DE876:        D0 08         BNE CODE_0DE880           ;
CODE_0DE878:        20 98 DC      JSR CODE_0DDC98           ;
CODE_0DE87B:        A9 FC         LDA #$FC                  ;
CODE_0DE87D:        95 A1         STA $A1,x                 ;
CODE_0DE87F:        60            RTS                       ;

CODE_0DE880:        BD 92 07      LDA $0792,x               ;
CODE_0DE883:        D0 0C         BNE CODE_0DE891           ;
CODE_0DE885:        B5 29         LDA $29,x                 ;
CODE_0DE887:        29 88         AND #$88                  ;
CODE_0DE889:        95 29         STA $29,x                 ;
CODE_0DE88B:        20 36 E8      JSR CODE_0DE836           ;
CODE_0DE88E:        4C D9 E7      JMP CODE_0DE7D9           ;

CODE_0DE891:        B5 29         LDA $29,x                 ;
CODE_0DE893:        09 01         ORA #$01                  ;
CODE_0DE895:        95 29         STA $29,x                 ;
CODE_0DE897:        60            RTS                       ;

CODE_0DE898:        A9 00         LDA #$00                  ;
CODE_0DE89A:        A0 15         LDY #$15                  ;
CODE_0DE89C:        4C 96 EA      JMP CODE_0DEA96           ;

CODE_0DE89F:        C9 2F         CMP #$2F                  ;
CODE_0DE8A1:        F0 1E         BEQ CODE_0DE8C1           ;
CODE_0DE8A3:        C9 EA         CMP #$EA                  ;
CODE_0DE8A5:        F0 1A         BEQ CODE_0DE8C1           ;
CODE_0DE8A7:        C9 EB         CMP #$EB                  ;
CODE_0DE8A9:        F0 16         BEQ CODE_0DE8C1           ;
CODE_0DE8AB:        C9 5C         CMP #$5C                  ;
CODE_0DE8AD:        F0 12         BEQ CODE_0DE8C1           ;
CODE_0DE8AF:        C9 5D         CMP #$5D                  ;
CODE_0DE8B1:        F0 0E         BEQ CODE_0DE8C1           ;
CODE_0DE8B3:        C9 5E         CMP #$5E                  ;
CODE_0DE8B5:        F0 0A         BEQ CODE_0DE8C1           ;
CODE_0DE8B7:        C9 60         CMP #$60                  ;
CODE_0DE8B9:        F0 06         BEQ CODE_0DE8C1           ;
CODE_0DE8BB:        C9 61         CMP #$61                  ;
CODE_0DE8BD:        F0 02         BEQ CODE_0DE8C1           ;
CODE_0DE8BF:        C9 5F         CMP #$5F                  ;
CODE_0DE8C1:        60            RTS                       ;

CODE_0DE8C2:        BD 42 02      LDA $0242,x               ;
CODE_0DE8C5:        C9 18         CMP #$18                  ;
CODE_0DE8C7:        90 25         BCC CODE_0DE8EE           ;
CODE_0DE8C9:        20 AA EA      JSR CODE_0DEAAA           ;
CODE_0DE8CC:        F0 20         BEQ CODE_0DE8EE           ;
CODE_0DE8CE:        20 9F E8      JSR CODE_0DE89F           ;
CODE_0DE8D1:        F0 1B         BEQ CODE_0DE8EE           ;
CODE_0DE8D3:        B5 AB         LDA $AB,x                 ;
CODE_0DE8D5:        30 1D         BMI CODE_0DE8F4           ;
CODE_0DE8D7:        BD 0D 02      LDA $020D,x               ;
CODE_0DE8DA:        D0 18         BNE CODE_0DE8F4           ;
CODE_0DE8DC:        A9 FD         LDA #$FD                  ;
CODE_0DE8DE:        95 AB         STA $AB,x                 ;
CODE_0DE8E0:        A9 01         LDA #$01                  ;
CODE_0DE8E2:        9D 0D 02      STA $020D,x               ;
CODE_0DE8E5:        BD 42 02      LDA $0242,x               ;
CODE_0DE8E8:        29 F8         AND #$F8                  ;
CODE_0DE8EA:        9D 42 02      STA $0242,x               ;
CODE_0DE8ED:        60            RTS                       ;

CODE_0DE8EE:        A9 00         LDA #$00                  ;
CODE_0DE8F0:        9D 0D 02      STA $020D,x               ;
CODE_0DE8F3:        60            RTS                       ;

CODE_0DE8F4:        A9 80         LDA #$80                  ;
CODE_0DE8F6:        95 33         STA $33,x                 ;
CODE_0DE8F8:        A9 01         LDA #$01                  ;
CODE_0DE8FA:        8D 00 16      STA $1600                 ;
CODE_0DE8FD:        60            RTS                       ;

DATA_0DE8FE:        db $02,$08,$0E,$20,$03,$14,$0D,$20
                    db $02,$14,$0E,$20,$02,$09,$0E,$15
                    db $00,$00,$18,$06,$00,$00,$20,$0D
                    db $00,$00,$30,$0D,$00,$00,$08,$08
                    db $06,$04,$0A,$0C,$03,$0E,$0D,$14
                    db $04,$04,$1C,$1C,$04,$04,$0C,$1C
                    db $03,$07,$0D,$16

CODE_0DE932:        8A            TXA                       ;
CODE_0DE933:        18            CLC                       ;
CODE_0DE934:        69 0B         ADC #$0B                  ;
CODE_0DE936:        AA            TAX                       ;
CODE_0DE937:        A0 02         LDY #$02                  ;
CODE_0DE939:        D0 07         BNE CODE_0DE942           ;
CODE_0DE93B:        8A            TXA                       ;
CODE_0DE93C:        18            CLC                       ;
CODE_0DE93D:        69 0D         ADC #$0D                  ;
CODE_0DE93F:        AA            TAX                       ;
CODE_0DE940:        A0 06         LDY #$06                  ;
CODE_0DE942:        20 A9 E9      JSR CODE_0DE9A9           ;
CODE_0DE945:        4C EB E9      JMP CODE_0DE9EB           ;

CODE_0DE948:        A0 48         LDY #$48                  ;
CODE_0DE94A:        84 00         STY $00                   ;
CODE_0DE94C:        A0 44         LDY #$44                  ;
CODE_0DE94E:        4C 57 E9      JMP CODE_0DE957           ;

CODE_0DE951:        A0 08         LDY #$08                  ;
CODE_0DE953:        84 00         STY $00                   ;
CODE_0DE955:        A0 04         LDY #$04                  ;
CODE_0DE957:        BD 1A 02      LDA $021A,x               ;
CODE_0DE95A:        38            SEC                       ;
CODE_0DE95B:        ED 1C 07      SBC $071C                 ;
CODE_0DE95E:        85 01         STA $01                   ;
CODE_0DE960:        B5 79         LDA $79,x                 ;
CODE_0DE962:        ED 1A 07      SBC $071A                 ;
CODE_0DE965:        30 06         BMI CODE_0DE96D           ;
CODE_0DE967:        05 01         ORA $01                   ;
CODE_0DE969:        F0 02         BEQ CODE_0DE96D           ;
CODE_0DE96B:        A4 00         LDY $00                   ;
CODE_0DE96D:        98            TYA                       ;
CODE_0DE96E:        2D D1 03      AND $03D1                 ;
CODE_0DE971:        9D D9 03      STA $03D9,x               ;
CODE_0DE974:        E0 09         CPX #$09                  ;
CODE_0DE976:        F0 11         BEQ CODE_0DE989           ;
CODE_0DE978:        BD D9 03      LDA $03D9,x               ;
CODE_0DE97B:        D0 19         BNE CODE_0DE996           ;
CODE_0DE97D:        4C 89 E9      JMP CODE_0DE989           ;

CODE_0DE980:        E8            INX                       ;
CODE_0DE981:        20 34 FE      JSR CODE_0DFE34           ;
CODE_0DE984:        CA            DEX                       ;
CODE_0DE985:        C9 FE         CMP #$FE                  ;
CODE_0DE987:        B0 0D         BCS CODE_0DE996           ;
CODE_0DE989:        8A            TXA                       ;
CODE_0DE98A:        18            CLC                       ;
CODE_0DE98B:        69 01         ADC #$01                  ;
CODE_0DE98D:        AA            TAX                       ;
CODE_0DE98E:        A0 01         LDY #$01                  ;
CODE_0DE990:        20 A9 E9      JSR CODE_0DE9A9           ;
CODE_0DE993:        4C EB E9      JMP CODE_0DE9EB           ;

CODE_0DE996:        8A            TXA                       ;
CODE_0DE997:        0A            ASL A                     ;
CODE_0DE998:        0A            ASL A                     ;
CODE_0DE999:        A8            TAY                       ;
CODE_0DE99A:        A9 FF         LDA #$FF                  ;
CODE_0DE99C:        99 A0 0F      STA $0FA0,y               ;
CODE_0DE99F:        99 A1 0F      STA $0FA1,y               ;
CODE_0DE9A2:        99 A2 0F      STA $0FA2,y               ;
CODE_0DE9A5:        99 A3 0F      STA $0FA3,y               ;
CODE_0DE9A8:        60            RTS                       ;

CODE_0DE9A9:        86 00         STX $00                   ;
CODE_0DE9AB:        B9 B8 03      LDA $03B8,y               ;
CODE_0DE9AE:        85 02         STA $02                   ;
CODE_0DE9B0:        B9 AD 03      LDA $03AD,y               ;
CODE_0DE9B3:        85 01         STA $01                   ;
CODE_0DE9B5:        8A            TXA                       ;
CODE_0DE9B6:        0A            ASL A                     ;
CODE_0DE9B7:        0A            ASL A                     ;
CODE_0DE9B8:        48            PHA                       ;
CODE_0DE9B9:        A8            TAY                       ;
CODE_0DE9BA:        BD 8F 04      LDA $048F,x               ;
CODE_0DE9BD:        0A            ASL A                     ;
CODE_0DE9BE:        0A            ASL A                     ;
CODE_0DE9BF:        AA            TAX                       ;
CODE_0DE9C0:        A5 01         LDA $01                   ;
CODE_0DE9C2:        18            CLC                       ;
CODE_0DE9C3:        7D FE E8      ADC DATA_0DE8FE,x               ;
CODE_0DE9C6:        99 9C 0F      STA $0F9C,y               ;
CODE_0DE9C9:        A5 01         LDA $01                   ;
CODE_0DE9CB:        18            CLC                       ;
CODE_0DE9CC:        7D 00 E9      ADC DATA_0DE8FE+2,x               ;
CODE_0DE9CF:        99 9E 0F      STA $0F9E,y               ;
CODE_0DE9D2:        E8            INX                       ;
CODE_0DE9D3:        C8            INY                       ;
CODE_0DE9D4:        A5 02         LDA $02                   ;
CODE_0DE9D6:        18            CLC                       ;
CODE_0DE9D7:        7D FE E8      ADC DATA_0DE8FE,x               ;
CODE_0DE9DA:        99 9C 0F      STA $0F9C,y               ;
CODE_0DE9DD:        A5 02         LDA $02                   ;
CODE_0DE9DF:        18            CLC                       ;
CODE_0DE9E0:        7D 00 E9      ADC DATA_0DE8FE+2,x               ;
CODE_0DE9E3:        99 9E 0F      STA $0F9E,y               ;
CODE_0DE9E6:        68            PLA                       ;
CODE_0DE9E7:        A8            TAY                       ;
CODE_0DE9E8:        A6 00         LDX $00                   ;
CODE_0DE9EA:        60            RTS                       ;

CODE_0DE9EB:        AD 1C 07      LDA $071C                 ;
CODE_0DE9EE:        18            CLC                       ;
CODE_0DE9EF:        69 80         ADC #$80                  ;
CODE_0DE9F1:        85 02         STA $02                   ;
CODE_0DE9F3:        AD 1A 07      LDA $071A                 ;
CODE_0DE9F6:        69 00         ADC #$00                  ;
CODE_0DE9F8:        85 01         STA $01                   ;
CODE_0DE9FA:        BD 19 02      LDA $0219,x               ;
CODE_0DE9FD:        C5 02         CMP $02                   ;
CODE_0DE9FF:        B5 78         LDA $78,x                 ;
CODE_0DEA01:        E5 01         SBC $01                   ;
CODE_0DEA03:        90 15         BCC CODE_0DEA1A           ;
CODE_0DEA05:        B9 9E 0F      LDA $0F9E,y               ;
CODE_0DEA08:        30 0D         BMI CODE_0DEA17           ;
CODE_0DEA0A:        A9 FF         LDA #$FF                  ;
CODE_0DEA0C:        BE 9C 0F      LDX $0F9C,y               ;
CODE_0DEA0F:        30 03         BMI CODE_0DEA14           ;
CODE_0DEA11:        99 9C 0F      STA $0F9C,y               ;
CODE_0DEA14:        99 9E 0F      STA $0F9E,y               ;
CODE_0DEA17:        A6 9E         LDX $9E                   ;
CODE_0DEA19:        60            RTS                       ;

CODE_0DEA1A:        B9 9C 0F      LDA $0F9C,y               ;
CODE_0DEA1D:        10 11         BPL CODE_0DEA30           ;
CODE_0DEA1F:        C9 A0         CMP #$A0                  ;
CODE_0DEA21:        90 0D         BCC CODE_0DEA30           ;
CODE_0DEA23:        A9 00         LDA #$00                  ;
CODE_0DEA25:        BE 9E 0F      LDX $0F9E,y               ;
CODE_0DEA28:        10 03         BPL CODE_0DEA2D           ;
CODE_0DEA2A:        99 9E 0F      STA $0F9E,y               ;
CODE_0DEA2D:        99 9C 0F      STA $0F9C,y               ;
CODE_0DEA30:        A6 9E         LDX $9E                   ;
CODE_0DEA32:        60            RTS                       ;

CODE_0DEA33:        A2 00         LDX #$00                  ;
CODE_0DEA35:        84 06         STY $06                   ;
CODE_0DEA37:        A9 01         LDA #$01                  ;
CODE_0DEA39:        85 07         STA $07                   ;
CODE_0DEA3B:        B9 9C 0F      LDA $0F9C,y               ;
CODE_0DEA3E:        DD 9C 0F      CMP $0F9C,x               ;
CODE_0DEA41:        B0 2A         BCS CODE_0DEA6D           ;
CODE_0DEA43:        DD 9E 0F      CMP $0F9E,x               ;
CODE_0DEA46:        90 12         BCC CODE_0DEA5A           ;
CODE_0DEA48:        F0 42         BEQ CODE_0DEA8C           ;
CODE_0DEA4A:        B9 9E 0F      LDA $0F9E,y               ;
CODE_0DEA4D:        D9 9C 0F      CMP $0F9C,y               ;
CODE_0DEA50:        90 3A         BCC CODE_0DEA8C           ;
CODE_0DEA52:        DD 9C 0F      CMP $0F9C,x               ;
CODE_0DEA55:        B0 35         BCS CODE_0DEA8C           ;
CODE_0DEA57:        A4 06         LDY $06                   ;
CODE_0DEA59:        60            RTS                       ;

CODE_0DEA5A:        BD 9E 0F      LDA $0F9E,x               ;
CODE_0DEA5D:        DD 9C 0F      CMP $0F9C,x               ;
CODE_0DEA60:        90 2A         BCC CODE_0DEA8C           ;
CODE_0DEA62:        B9 9E 0F      LDA $0F9E,y               ;
CODE_0DEA65:        DD 9C 0F      CMP $0F9C,x               ;
CODE_0DEA68:        B0 22         BCS CODE_0DEA8C           ;
CODE_0DEA6A:        A4 06         LDY $06                   ;
CODE_0DEA6C:        60            RTS                       ;

CODE_0DEA6D:        DD 9C 0F      CMP $0F9C,x               ;
CODE_0DEA70:        F0 1A         BEQ CODE_0DEA8C           ;
CODE_0DEA72:        DD 9E 0F      CMP $0F9E,x               ;
CODE_0DEA75:        90 15         BCC CODE_0DEA8C           ;
CODE_0DEA77:        F0 13         BEQ CODE_0DEA8C           ;
CODE_0DEA79:        D9 9E 0F      CMP $0F9E,y               ;
CODE_0DEA7C:        90 0A         BCC CODE_0DEA88           ;
CODE_0DEA7E:        F0 08         BEQ CODE_0DEA88           ;
CODE_0DEA80:        B9 9E 0F      LDA $0F9E,y               ;
CODE_0DEA83:        DD 9C 0F      CMP $0F9C,x               ;
CODE_0DEA86:        B0 04         BCS CODE_0DEA8C           ;
CODE_0DEA88:        18            CLC                       ;
CODE_0DEA89:        A4 06         LDY $06                   ;
CODE_0DEA8B:        60            RTS                       ;

CODE_0DEA8C:        E8            INX                       ;
CODE_0DEA8D:        C8            INY                       ;
CODE_0DEA8E:        C6 07         DEC $07                   ;
CODE_0DEA90:        10 A9         BPL CODE_0DEA3B           ;
CODE_0DEA92:        38            SEC                       ;
CODE_0DEA93:        A4 06         LDY $06                   ;
CODE_0DEA95:        60            RTS                       ;

CODE_0DEA96:        48            PHA                       ;
CODE_0DEA97:        8A            TXA                       ;
CODE_0DEA98:        18            CLC                       ;
CODE_0DEA99:        69 01         ADC #$01                  ;
CODE_0DEA9B:        AA            TAX                       ;
CODE_0DEA9C:        68            PLA                       ;
CODE_0DEA9D:        4C B3 EA      JMP CODE_0DEAB3           ;

CODE_0DEAA0:        8A            TXA                       ;
CODE_0DEAA1:        18            CLC                       ;
CODE_0DEAA2:        69 11         ADC #$11                  ;
CODE_0DEAA4:        AA            TAX                       ;
CODE_0DEAA5:        A0 1B         LDY #$1B                  ;
CODE_0DEAA7:        4C B1 EA      JMP CODE_0DEAB1           ;

CODE_0DEAAA:        A0 1A         LDY #$1A                  ;
CODE_0DEAAC:        8A            TXA                       ;
CODE_0DEAAD:        18            CLC                       ;
CODE_0DEAAE:        69 0B         ADC #$0B                  ;
CODE_0DEAB0:        AA            TAX                       ;
CODE_0DEAB1:        A9 00         LDA #$00                  ;
CODE_0DEAB3:        20 FF EA      JSR CODE_0DEAFF           ;
CODE_0DEAB6:        A6 9E         LDX $9E                   ;
CODE_0DEAB8:        C9 00         CMP #$00                  ;
CODE_0DEABA:        60            RTS                       ;

DATA_0DEABB:        db $00,$07,$0E ;

DATA_0DEABE:        db $08,$03,$0C,$02,$02,$0D,$0D,$08 ;
                    db $03,$0C,$02,$02,$0D,$0D,$08,$03 ;
                    db $0C,$02,$02,$0D,$0D,$08,$00,$10 ;
                    db $04,$14,$04,$04 ;

DATA_0DEADA:        db $04,$20,$20,$08,$18,$08,$18,$02 ;
                    db $20,$20,$08,$18,$08,$18,$12,$20 ;
                    db $20,$18,$18,$18,$18,$18,$14,$14 ;
                    db $06,$06,$08,$10 ;

CODE_0DEAF6:        C8            INY                       ;
CODE_0DEAF7:        A9 00         LDA #$00                  ;
CODE_0DEAF9:        80 02         BRA CODE_0DEAFD           ;

CODE_0DEAFB:        A9 01         LDA #$01                  ;
CODE_0DEAFD:        A2 00         LDX #$00                  ;
CODE_0DEAFF:        48            PHA                       ;
CODE_0DEB00:        84 04         STY $04                   ;
CODE_0DEB02:        B9 BE EA      LDA DATA_0DEABE,y               ;
CODE_0DEB05:        18            CLC                       ;
CODE_0DEB06:        7D 19 02      ADC $0219,x               ;
CODE_0DEB09:        85 05         STA $05                   ;
CODE_0DEB0B:        B5 78         LDA $78,x                 ;
CODE_0DEB0D:        69 00         ADC #$00                  ;
CODE_0DEB0F:        29 01         AND #$01                  ;
CODE_0DEB11:        4A            LSR A                     ;
CODE_0DEB12:        05 05         ORA $05                   ;
CODE_0DEB14:        6A            ROR A                     ;
CODE_0DEB15:        4A            LSR A                     ;
CODE_0DEB16:        4A            LSR A                     ;
CODE_0DEB17:        4A            LSR A                     ;
CODE_0DEB18:        20 8F AA      JSR CODE_0DAA8F           ;
CODE_0DEB1B:        A4 04         LDY $04                   ;
CODE_0DEB1D:        BD 37 02      LDA $0237,x               ;
CODE_0DEB20:        18            CLC                       ;
CODE_0DEB21:        79 DA EA      ADC DATA_0DEADA,y               ;
CODE_0DEB24:        29 F0         AND #$F0                  ;
CODE_0DEB26:        38            SEC                       ;
CODE_0DEB27:        E9 20         SBC #$20                  ;
CODE_0DEB29:        85 02         STA $02                   ;
CODE_0DEB2B:        A8            TAY                       ;
CODE_0DEB2C:        B1 06         LDA ($06),y               ;
CODE_0DEB2E:        85 03         STA $03                   ;
CODE_0DEB30:        A4 04         LDY $04                   ;
CODE_0DEB32:        68            PLA                       ;
CODE_0DEB33:        D0 06         BNE CODE_0DEB3B           ;
CODE_0DEB35:        BD 37 02      LDA $0237,x               ;
CODE_0DEB38:        4C 3E EB      JMP CODE_0DEB3E           ;

CODE_0DEB3B:        BD 19 02      LDA $0219,x               ;
CODE_0DEB3E:        29 0F         AND #$0F                  ;
CODE_0DEB40:        85 04         STA $04                   ;
CODE_0DEB42:        A5 E4         LDA $E4                   ;
CODE_0DEB44:        D0 0C         BNE CODE_0DEB52           ;
CODE_0DEB46:        A5 03         LDA $03                   ;
CODE_0DEB48:        C9 5C         CMP #$5C                  ;
CODE_0DEB4A:        90 06         BCC CODE_0DEB52           ;
CODE_0DEB4C:        C9 62         CMP #$62                  ;
CODE_0DEB4E:        B0 02         BCS CODE_0DEB52           ;
CODE_0DEB50:        64 03         STZ $03                   ;
CODE_0DEB52:        A5 03         LDA $03                   ;
CODE_0DEB54:        60            RTS                       ;

DATA_0DEB55:        db $FF,$FF,$FF

CODE_0DEB58:        A2 06         LDX #$06                  ;
CODE_0DEB5A:        99 00 08      STA $0800,y               ;
CODE_0DEB5D:        18            CLC                       ;
CODE_0DEB5E:        69 08         ADC #$08                  ;
CODE_0DEB60:        C8            INY                       ;
CODE_0DEB61:        C8            INY                       ;
CODE_0DEB62:        C8            INY                       ;
CODE_0DEB63:        C8            INY                       ;
CODE_0DEB64:        CA            DEX                       ;
CODE_0DEB65:        D0 F3         BNE CODE_0DEB5A           ;
CODE_0DEB67:        A4 02         LDY $02                   ;
CODE_0DEB69:        60            RTS                       ;

CODE_0DEB6A:        A2 06         LDX #$06                  ;
CODE_0DEB6C:        99 00 09      STA $0900,y               ;
CODE_0DEB6F:        18            CLC                       ;
CODE_0DEB70:        69 08         ADC #$08                  ;
CODE_0DEB72:        C8            INY                       ;
CODE_0DEB73:        C8            INY                       ;
CODE_0DEB74:        C8            INY                       ;
CODE_0DEB75:        C8            INY                       ;
CODE_0DEB76:        CA            DEX                       ;
CODE_0DEB77:        D0 F3         BNE CODE_0DEB6C           ;
CODE_0DEB79:        A4 02         LDY $02                   ;
CODE_0DEB7B:        60            RTS                       ;

CODE_0DEB7C:        A9 F0         LDA #$F0                  ;
CODE_0DEB7E:        99 15 08      STA $0815,y               ;
CODE_0DEB81:        99 11 08      STA $0811,y               ;
CODE_0DEB84:        99 0D 08      STA $080D,y               ;
CODE_0DEB87:        99 09 08      STA $0809,y               ;
CODE_0DEB8A:        99 05 08      STA $0805,y               ;
CODE_0DEB8D:        99 01 08      STA $0801,y               ;
CODE_0DEB90:        60            RTS                       ;

CODE_0DEB91:        A9 F0         LDA #$F0                  ;
CODE_0DEB93:        99 15 09      STA $0915,y               ;
CODE_0DEB96:        99 11 09      STA $0911,y               ;
CODE_0DEB99:        99 0D 09      STA $090D,y               ;
CODE_0DEB9C:        99 09 09      STA $0909,y               ;
CODE_0DEB9F:        99 05 09      STA $0905,y               ;
CODE_0DEBA2:        99 01 09      STA $0901,y               ;
CODE_0DEBA5:        60            RTS                       ;

CODE_0DEBA6:        AD 43 07      LDA $0743                 ;
CODE_0DEBA9:        F0 03         BEQ CODE_0DEBAE           ;
CODE_0DEBAB:        4C 32 EC      JMP CODE_0DEC32           ;

CODE_0DEBAE:        BC 46 0B      LDY $0B46,x               ;
CODE_0DEBB1:        84 02         STY $02                   ;
CODE_0DEBB3:        AD AE 03      LDA $03AE                 ;
CODE_0DEBB6:        20 6A EB      JSR CODE_0DEB6A           ;
CODE_0DEBB9:        A6 9E         LDX $9E                   ;
CODE_0DEBBB:        BD 38 02      LDA $0238,x               ;
CODE_0DEBBE:        20 99 EB      JSR CODE_0DEB99           ;
CODE_0DEBC1:        A4 5C         LDY $5C                   ;
CODE_0DEBC3:        C0 03         CPY #$03                  ;
CODE_0DEBC5:        F0 05         BEQ CODE_0DEBCC           ;
CODE_0DEBC7:        AC CC 06      LDY $06CC                 ;
CODE_0DEBCA:        F0 02         BEQ CODE_0DEBCE           ;
CODE_0DEBCC:        A9 F0         LDA #$F0                  ;
CODE_0DEBCE:        BC 46 0B      LDY $0B46,x               ;
CODE_0DEBD1:        99 11 09      STA $0911,y               ;
CODE_0DEBD4:        99 15 09      STA $0915,y               ;
CODE_0DEBD7:        A9 87         LDA #$87                  ;
CODE_0DEBD9:        A6 9E         LDX $9E                   ;
CODE_0DEBDB:        C8            INY                       ;
CODE_0DEBDC:        20 93 EB      JSR CODE_0DEB93           ;
CODE_0DEBDF:        A9 2C         LDA #$2C                  ;
CODE_0DEBE1:        C8            INY                       ;
CODE_0DEBE2:        20 93 EB      JSR CODE_0DEB93           ;
CODE_0DEBE5:        20 34 FE      JSR CODE_0DFE34           ;
CODE_0DEBE8:        BC 46 0B      LDY $0B46,x               ;
CODE_0DEBEB:        20 C2 FE      JSR CODE_0DFEC2           ;
CODE_0DEBEE:        20 DB FE      JSR CODE_0DFEDB           ;
CODE_0DEBF1:        5A            PHY                       ;
CODE_0DEBF2:        20 51 FF      JSR CODE_0DFF51           ;
CODE_0DEBF5:        20 DB FE      JSR CODE_0DFEDB           ;
CODE_0DEBF8:        20 51 FF      JSR CODE_0DFF51           ;
CODE_0DEBFB:        20 DB FE      JSR CODE_0DFEDB           ;
CODE_0DEBFE:        20 51 FF      JSR CODE_0DFF51           ;
CODE_0DEC01:        20 DB FE      JSR CODE_0DFEDB           ;
CODE_0DEC04:        20 51 FF      JSR CODE_0DFF51           ;
CODE_0DEC07:        20 DB FE      JSR CODE_0DFEDB           ;
CODE_0DEC0A:        20 51 FF      JSR CODE_0DFF51           ;
CODE_0DEC0D:        20 DB FE      JSR CODE_0DFEDB           ;
CODE_0DEC10:        7A            PLY                       ;
CODE_0DEC11:        AD D1 03      LDA $03D1                 ;
CODE_0DEC14:        0A            ASL A                     ;
CODE_0DEC15:        90 1A         BCC CODE_0DEC31           ;
CODE_0DEC17:        B5 1C         LDA $1C,x                 ;
CODE_0DEC19:        C9 27         CMP #$27                  ;
CODE_0DEC1B:        F0 14         BEQ CODE_0DEC31           ;
CODE_0DEC1D:        C9 26         CMP #$26                  ;
CODE_0DEC1F:        F0 10         BEQ CODE_0DEC31           ;
CODE_0DEC21:        B5 BC         LDA $BC,x                 ;
CODE_0DEC23:        C9 01         CMP #$01                  ;
CODE_0DEC25:        D0 07         BNE CODE_0DEC2E           ;
CODE_0DEC27:        AD B9 03      LDA $03B9                 ;
CODE_0DEC2A:        C9 F0         CMP #$F0                  ;
CODE_0DEC2C:        90 03         BCC CODE_0DEC31           ;
CODE_0DEC2E:        20 91 EB      JSR CODE_0DEB91           ;
CODE_0DEC31:        60            RTS                       ;

CODE_0DEC32:        22 D3 D4 0F   JSL CODE_0FD4D3           ;
CODE_0DEC36:        60            RTS                       ;

DATA_0DEC37:        db $E9,$EA,$78,$79,$D6,$D6,$D9,$D9 ;
                    db $8D,$8D,$E4,$E4,$E9,$EA,$78,$79 ;
                    db $7E,$7F,$85,$86 ;

DATA_0DEC4B:        db $2C,$28,$28,$2A,$2C ;

CODE_0DEC50:        AD 4F 0B      LDA $0B4F
CODE_0DEC53:        18            CLC                       ;
CODE_0DEC54:        69 08         ADC #$08                  ;
CODE_0DEC56:        A8            TAY                       ;
CODE_0DEC57:        AD B9 03      LDA $03B9                 ;
CODE_0DEC5A:        18            CLC                       ;
CODE_0DEC5B:        69 08         ADC #$08                  ;
CODE_0DEC5D:        85 02         STA $02                   ;
CODE_0DEC5F:        AD AE 03      LDA $03AE                 ;
CODE_0DEC62:        85 05         STA $05                   ;
CODE_0DEC64:        AE 0C 02      LDX $020C                 ;
CODE_0DEC67:        BD 4B EC      LDA DATA_0DEC4B,x               ;
CODE_0DEC6A:        4D 60 02      EOR $0260                 ;
CODE_0DEC6D:        85 04         STA $04                   ;
CODE_0DEC6F:        8A            TXA                       ;
CODE_0DEC70:        48            PHA                       ;
CODE_0DEC71:        0A            ASL A                     ;
CODE_0DEC72:        0A            ASL A                     ;
CODE_0DEC73:        AA            TAX                       ;
CODE_0DEC74:        A9 01         LDA #$01                  ;
CODE_0DEC76:        85 07         STA $07                   ;
CODE_0DEC78:        85 03         STA $03                   ;
CODE_0DEC7A:        BD 37 EC      LDA DATA_0DEC37,x               ;
CODE_0DEC7D:        85 00         STA $00                   ;
CODE_0DEC7F:        BD 38 EC      LDA DATA_0DEC37+1,x               ;
CODE_0DEC82:        20 EF F2      JSR CODE_0DF2EF           ;
CODE_0DEC85:        C6 07         DEC $07                   ;
CODE_0DEC87:        10 F1         BPL CODE_0DEC7A           ;
CODE_0DEC89:        AD 4F 0B      LDA $0B4F                 ;
CODE_0DEC8C:        18            CLC                       ;
CODE_0DEC8D:        69 08         ADC #$08                  ;
CODE_0DEC8F:        A8            TAY                       ;
CODE_0DEC90:        68            PLA                       ;
CODE_0DEC91:        F0 40         BEQ CODE_0DECD3           ;
CODE_0DEC93:        C9 03         CMP #$03                  ;
CODE_0DEC95:        F0 3C         BEQ CODE_0DECD3           ;
CODE_0DEC97:        C9 04         CMP #$04                  ;
CODE_0DEC99:        F0 38         BEQ CODE_0DECD3           ;
CODE_0DEC9B:        85 00         STA $00                   ;
CODE_0DEC9D:        A5 09         LDA $09                   ;
CODE_0DEC9F:        29 06         AND #$06                  ;
CODE_0DECA1:        C9 06         CMP #$06                  ;
CODE_0DECA3:        D0 02         BNE CODE_0DECA7           ;
CODE_0DECA5:        A9 0E         LDA #$0E                  ;
CODE_0DECA7:        0D 60 02      ORA $0260                 ;
CODE_0DECAA:        49 28         EOR #$28                  ;
CODE_0DECAC:        99 03 09      STA $0903,y               ;
CODE_0DECAF:        99 07 09      STA $0907,y               ;
CODE_0DECB2:        99 0B 09      STA $090B,y               ;
CODE_0DECB5:        99 0F 09      STA $090F,y               ;
CODE_0DECB8:        A6 00         LDX $00                   ;
CODE_0DECBA:        CA            DEX                       ;
CODE_0DECBB:        F0 06         BEQ CODE_0DECC3           ;
CODE_0DECBD:        99 0B 09      STA $090B,y               ;
CODE_0DECC0:        99 0F 09      STA $090F,y               ;
CODE_0DECC3:        B9 07 09      LDA $0907,y               ;
CODE_0DECC6:        09 40         ORA #$40                  ;
CODE_0DECC8:        99 07 09      STA $0907,y               ;
CODE_0DECCB:        B9 0F 09      LDA $090F,y               ;
CODE_0DECCE:        09 40         ORA #$40                  ;
CODE_0DECD0:        99 0F 09      STA $090F,y               ;
CODE_0DECD3:        AD 4F 0B      LDA $0B4F                 ;
CODE_0DECD6:        18            CLC                       ;
CODE_0DECD7:        69 08         ADC #$08                  ;
CODE_0DECD9:        A8            TAY                       ;
CODE_0DECDA:        4C 9F F2      JMP CODE_0DF29F           ;

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

CODE_0DEE40:        B5 1C         LDA $1C,x                 ;
CODE_0DEE42:        C9 0C         CMP #$0C                  ;
CODE_0DEE44:        D0 05         BNE CODE_0DEE4B           ;
CODE_0DEE46:        22 13 F9 0F   JSL CODE_0FF913           ;
CODE_0DEE4A:        60            RTS                       ;

CODE_0DEE4B:        C9 08         CMP #$08                  ;
CODE_0DEE4D:        D0 0E         BNE CODE_0DEE5D           ;
CODE_0DEE4F:        B5 BC         LDA $BC,x                 ;
CODE_0DEE51:        C9 02         CMP #$02                  ;
CODE_0DEE53:        D0 03         BNE CODE_0DEE58           ;
CODE_0DEE55:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DEE58:        22 2A D2 0F   JSL CODE_0FD22A           ;
CODE_0DEE5C:        60            RTS                       ;

CODE_0DEE5D:        C9 33         CMP #$33                  ;
CODE_0DEE5F:        D0 0E         BNE CODE_0DEE6F           ;
CODE_0DEE61:        B5 BC         LDA $BC,x                 ;
CODE_0DEE63:        C9 02         CMP #$02                  ;
CODE_0DEE65:        D0 03         BNE CODE_0DEE6A           ;
CODE_0DEE67:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DEE6A:        22 2A D2 0F   JSL CODE_0FD22A           ;
CODE_0DEE6E:        60            RTS                       ;

CODE_0DEE6F:        C9 2D         CMP #$2D                  ;
CODE_0DEE71:        D0 05         BNE CODE_0DEE78           ;
CODE_0DEE73:        22 3D D7 0F   JSL CODE_0FD73D           ;
CODE_0DEE77:        60            RTS                       ;

CODE_0DEE78:        C9 35         CMP #$35                  ;
CODE_0DEE7A:        D0 15         BNE CODE_0DEE91           ;
CODE_0DEE7C:        AD 5F 07      LDA $075F                 ;
CODE_0DEE7F:        C9 07         CMP #$07                  ;
CODE_0DEE81:        F0 09         BEQ CODE_0DEE8C           ;
CODE_0DEE83:        C9 0C         CMP #$0C                  ;
CODE_0DEE85:        F0 05         BEQ CODE_0DEE8C           ;
CODE_0DEE87:        22 7A D5 00   JSL CODE_00D57A           ;
CODE_0DEE8B:        60            RTS                       ;

CODE_0DEE8C:        22 BB C4 00   JSL CODE_00C4BB           ;
CODE_0DEE90:        60            RTS                       ;

CODE_0DEE91:        A9 02         LDA #$02                  ;
CODE_0DEE93:        AC 5F 07      LDY $075F                 ;
CODE_0DEE96:        C0 01         CPY #$01                  ;
CODE_0DEE98:        F0 0C         BEQ CODE_0DEEA6           ;
CODE_0DEE9A:        C0 02         CPY #$02                  ;
CODE_0DEE9C:        F0 08         BEQ CODE_0DEEA6           ;
CODE_0DEE9E:        C0 06         CPY #$06                  ;
CODE_0DEEA0:        F0 04         BEQ CODE_0DEEA6           ;
CODE_0DEEA2:        C0 0B         CPY #$0B                  ;
CODE_0DEEA4:        D0 01         BNE CODE_0DEEA7           ;
CODE_0DEEA6:        4A            LSR A                     ;
CODE_0DEEA7:        8D 30 0F      STA $0F30                 ;
CODE_0DEEAA:        8D 31 0F      STA $0F31                 ;
CODE_0DEEAD:        8D 32 0F      STA $0F32                 ;
CODE_0DEEB0:        BD 38 02      LDA $0238,x               ;
CODE_0DEEB3:        85 02         STA $02                   ;
CODE_0DEEB5:        AD AE 03      LDA $03AE                 ;
CODE_0DEEB8:        85 05         STA $05                   ;
CODE_0DEEBA:        BC 46 0B      LDY $0B46,x               ;
CODE_0DEEBD:        84 EB         STY $EB                   ;
CODE_0DEEBF:        A9 00         LDA #$00                  ;
CODE_0DEEC1:        85 F0         STA $F0                   ;
CODE_0DEEC3:        B5 47         LDA $47,x                 ;
CODE_0DEEC5:        85 03         STA $03                   ;
CODE_0DEEC7:        BD 57 02      LDA $0257,x               ;
CODE_0DEECA:        85 04         STA $04                   ;
CODE_0DEECC:        B5 1C         LDA $1C,x                 ;
CODE_0DEECE:        C9 0D         CMP #$0D                  ;
CODE_0DEED0:        D0 0A         BNE CODE_0DEEDC           ;
CODE_0DEED2:        B4 5E         LDY $5E,x                 ;
CODE_0DEED4:        30 06         BMI CODE_0DEEDC           ;
CODE_0DEED6:        BC 92 07      LDY $0792,x               ;
CODE_0DEED9:        F0 01         BEQ CODE_0DEEDC           ;
CODE_0DEEDB:        60            RTS                       ;

CODE_0DEEDC:        B5 29         LDA $29,x                 ;
CODE_0DEEDE:        85 ED         STA $ED                   ;
CODE_0DEEE0:        29 1F         AND #$1F                  ;
CODE_0DEEE2:        A8            TAY                       ;
CODE_0DEEE3:        B5 1C         LDA $1C,x                 ;
CODE_0DEEE5:        C9 35         CMP #$35                  ;
CODE_0DEEE7:        D0 08         BNE CODE_0DEEF1           ;
CODE_0DEEE9:        A0 00         LDY #$00                  ;
CODE_0DEEEB:        A9 01         LDA #$01                  ;
CODE_0DEEED:        85 03         STA $03                   ;
CODE_0DEEEF:        A9 15         LDA #$15                  ;
CODE_0DEEF1:        C9 33         CMP #$33                  ;
CODE_0DEEF3:        D0 13         BNE CODE_0DEF08           ;
CODE_0DEEF5:        C6 02         DEC $02                   ;
CODE_0DEEF7:        A9 20         LDA #$20                  ;
CODE_0DEEF9:        BC 92 07      LDY $0792,x               ;
CODE_0DEEFC:        F0 02         BEQ CODE_0DEF00           ;
CODE_0DEEFE:        49 30         EOR #$30                  ;
CODE_0DEF00:        85 04         STA $04                   ;
CODE_0DEF02:        A0 00         LDY #$00                  ;
CODE_0DEF04:        84 ED         STY $ED                   ;
CODE_0DEF06:        A9 08         LDA #$08                  ;
CODE_0DEF08:        C9 32         CMP #$32                  ;
CODE_0DEF0A:        D0 08         BNE CODE_0DEF14           ;
CODE_0DEF0C:        A0 03         LDY #$03                  ;
CODE_0DEF0E:        AE 0E 07      LDX $070E                 ;
CODE_0DEF11:        BD 17 EE      LDA DATA_0DEE17,x               ;
CODE_0DEF14:        85 EF         STA $EF                   ;
CODE_0DEF16:        84 EC         STY $EC                   ;
CODE_0DEF18:        A6 9E         LDX $9E                   ;
CODE_0DEF1A:        C9 0C         CMP #$0C                  ;
CODE_0DEF1C:        D0 06         BNE CODE_0DEF24           ;
CODE_0DEF1E:        B5 A1         LDA $A1,x                 ;
CODE_0DEF20:        30 02         BMI CODE_0DEF24           ;
CODE_0DEF22:        E6 F0         INC $F0                   ;
CODE_0DEF24:        AD 6A 03      LDA $036A                 ;
CODE_0DEF27:        F0 09         BEQ CODE_0DEF32           ;
CODE_0DEF29:        A0 16         LDY #$16                  ;
CODE_0DEF2B:        C9 01         CMP #$01                  ;
CODE_0DEF2D:        F0 01         BEQ CODE_0DEF30           ;
CODE_0DEF2F:        C8            INY                       ;
CODE_0DEF30:        84 EF         STY $EF                   ;
CODE_0DEF32:        A4 EF         LDY $EF                   ;
CODE_0DEF34:        C0 06         CPY #$06                  ;
CODE_0DEF36:        D0 1D         BNE CODE_0DEF55           ;
CODE_0DEF38:        B5 29         LDA $29,x                 ;
CODE_0DEF3A:        C9 02         CMP #$02                  ;
CODE_0DEF3C:        90 04         BCC CODE_0DEF42           ;
CODE_0DEF3E:        A2 04         LDX #$04                  ;
CODE_0DEF40:        86 EC         STX $EC                   ;
CODE_0DEF42:        29 20         AND #$20                  ;
CODE_0DEF44:        0D 47 07      ORA $0747                 ;
CODE_0DEF47:        D0 0C         BNE CODE_0DEF55           ;
CODE_0DEF49:        A5 09         LDA $09                   ;
CODE_0DEF4B:        29 08         AND #$08                  ;
CODE_0DEF4D:        D0 06         BNE CODE_0DEF55           ;
CODE_0DEF4F:        A5 03         LDA $03                   ;
CODE_0DEF51:        49 03         EOR #$03                  ;
CODE_0DEF53:        85 03         STA $03                   ;
CODE_0DEF55:        C0 0D         CPY #$0D                  ;
CODE_0DEF57:        D0 05         BNE CODE_0DEF5E           ;
CODE_0DEF59:        AD 24 0F      LDA $0F24                 ;
CODE_0DEF5C:        80 1F         BRA CODE_0DEF7D           ;

CODE_0DEF5E:        B9 FA ED      LDA DATA_0DEDFA,y               ;
CODE_0DEF61:        C0 14         CPY #$14                  ;
CODE_0DEF63:        D0 04         BNE CODE_0DEF69           ;
CODE_0DEF65:        A9 3C         LDA #$3C                  ;
CODE_0DEF67:        80 16         BRA CODE_0DEF7F           ;

CODE_0DEF69:        C0 16         CPY #$16                  ;
CODE_0DEF6B:        F0 04         BEQ CODE_0DEF71           ;
CODE_0DEF6D:        C0 17         CPY #$17                  ;
CODE_0DEF6F:        D0 0C         BNE CODE_0DEF7D           ;
CODE_0DEF71:        AD 01 02      LDA $0201                 ;
CODE_0DEF74:        4A            LSR A                     ;
CODE_0DEF75:        90 04         BCC CODE_0DEF7B           ;
CODE_0DEF77:        A9 06         LDA #$06                  ;
CODE_0DEF79:        80 02         BRA CODE_0DEF7D           ;

CODE_0DEF7B:        A9 00         LDA #$00                  ;
CODE_0DEF7D:        45 04         EOR $04                   ;
CODE_0DEF7F:        85 04         STA $04                   ;
CODE_0DEF81:        C0 15         CPY #$15                  ;
CODE_0DEF83:        D0 13         BNE CODE_0DEF98           ;
CODE_0DEF85:        AD 5F 07      LDA $075F                 ;
CODE_0DEF88:        C9 07         CMP #$07                  ;
CODE_0DEF8A:        F0 04         BEQ CODE_0DEF90           ;
CODE_0DEF8C:        C9 0C         CMP #$0C                  ;
CODE_0DEF8E:        D0 08         BNE CODE_0DEF98           ;
CODE_0DEF90:        A5 04         LDA $04                   ;
CODE_0DEF92:        29 F0         AND #$F0                  ;
CODE_0DEF94:        09 04         ORA #$04                  ;
CODE_0DEF96:        85 04         STA $04                   ;
CODE_0DEF98:        AD 85 0E      LDA $0E85                 ;
CODE_0DEF9B:        F0 09         BEQ CODE_0DEFA6           ;
CODE_0DEF9D:        B9 DF ED      LDA DATA_0DEDDF,y               ;
CODE_0DEFA0:        18            CLC                       ;
CODE_0DEFA1:        69 06         ADC #$06                  ;
CODE_0DEFA3:        AA            TAX                       ;
CODE_0DEFA4:        80 04         BRA CODE_0DEFAA           ;

CODE_0DEFA6:        B9 DF ED      LDA DATA_0DEDDF,y               ;
CODE_0DEFA9:        AA            TAX                       ;
CODE_0DEFAA:        A4 EC         LDY $EC                   ;
CODE_0DEFAC:        AD 6A 03      LDA $036A                 ;
CODE_0DEFAF:        F0 2E         BEQ CODE_0DEFDF           ;
CODE_0DEFB1:        C9 01         CMP #$01                  ;
CODE_0DEFB3:        D0 12         BNE CODE_0DEFC7           ;
CODE_0DEFB5:        AD 63 03      LDA $0363                 ;
CODE_0DEFB8:        10 02         BPL CODE_0DEFBC           ;
CODE_0DEFBA:        A2 DE         LDX #$DE                  ;
CODE_0DEFBC:        A5 ED         LDA $ED                   ;
CODE_0DEFBE:        29 20         AND #$20                  ;
CODE_0DEFC0:        F0 02         BEQ CODE_0DEFC4           ;
CODE_0DEFC2:        86 F0         STX $F0                   ;
CODE_0DEFC4:        4C CD F0      JMP CODE_0DF0CD           ;

CODE_0DEFC7:        AD 63 03      LDA $0363                 ;
CODE_0DEFCA:        29 01         AND #$01                  ;
CODE_0DEFCC:        F0 02         BEQ CODE_0DEFD0           ;
CODE_0DEFCE:        A2 E4         LDX #$E4                  ;
CODE_0DEFD0:        A5 ED         LDA $ED                   ;
CODE_0DEFD2:        29 20         AND #$20                  ;
CODE_0DEFD4:        F0 EE         BEQ CODE_0DEFC4           ;
CODE_0DEFD6:        A5 02         LDA $02                   ;
CODE_0DEFD8:        38            SEC                       ;
CODE_0DEFD9:        E9 10         SBC #$10                  ;
CODE_0DEFDB:        85 02         STA $02                   ;
CODE_0DEFDD:        80 E3         BRA CODE_0DEFC2           ;

CODE_0DEFDF:        E0 24         CPX #$24                  ;
CODE_0DEFE1:        D0 10         BNE CODE_0DEFF3           ;
CODE_0DEFE3:        C0 05         CPY #$05                  ;
CODE_0DEFE5:        D0 0A         BNE CODE_0DEFF1           ;
CODE_0DEFE7:        A2 30         LDX #$30                  ;
CODE_0DEFE9:        A9 02         LDA #$02                  ;
CODE_0DEFEB:        85 03         STA $03                   ;
CODE_0DEFED:        A9 05         LDA #$05                  ;
CODE_0DEFEF:        85 EC         STA $EC                   ;
CODE_0DEFF1:        80 50         BRA CODE_0DF043           ;

CODE_0DEFF3:        E0 90         CPX #$90                  ;
CODE_0DEFF5:        D0 12         BNE CODE_0DF009           ;
CODE_0DEFF7:        A5 ED         LDA $ED                   ;
CODE_0DEFF9:        29 20         AND #$20                  ;
CODE_0DEFFB:        D0 09         BNE CODE_0DF006           ;
CODE_0DEFFD:        AD 9B 07      LDA $079B                 ;
CODE_0DF000:        C9 10         CMP #$10                  ;
CODE_0DF002:        B0 02         BCS CODE_0DF006           ;
CODE_0DF004:        A2 96         LDX #$96                  ;
CODE_0DF006:        4C B3 F0      JMP CODE_0DF0B3           ;

CODE_0DF009:        A5 EF         LDA $EF                   ;
CODE_0DF00B:        C9 04         CMP #$04                  ;
CODE_0DF00D:        B0 10         BCS CODE_0DF01F           ;
CODE_0DF00F:        C0 02         CPY #$02                  ;
CODE_0DF011:        90 0C         BCC CODE_0DF01F           ;
CODE_0DF013:        A2 5A         LDX #$5A                  ;
CODE_0DF015:        A4 EF         LDY $EF                   ;
CODE_0DF017:        C0 02         CPY #$02                  ;
CODE_0DF019:        D0 04         BNE CODE_0DF01F           ;
CODE_0DF01B:        A2 7E         LDX #$7E                  ;
CODE_0DF01D:        E6 02         INC $02                   ;
CODE_0DF01F:        A5 EC         LDA $EC                   ;
CODE_0DF021:        C9 04         CMP #$04                  ;
CODE_0DF023:        D0 1E         BNE CODE_0DF043           ;
CODE_0DF025:        A2 72         LDX #$72                  ;
CODE_0DF027:        E6 02         INC $02                   ;
CODE_0DF029:        A4 EF         LDY $EF                   ;
CODE_0DF02B:        C0 02         CPY #$02                  ;
CODE_0DF02D:        F0 04         BEQ CODE_0DF033           ;
CODE_0DF02F:        A2 66         LDX #$66                  ;
CODE_0DF031:        E6 02         INC $02                   ;
CODE_0DF033:        C0 06         CPY #$06                  ;
CODE_0DF035:        D0 0C         BNE CODE_0DF043           ;
CODE_0DF037:        A2 54         LDX #$54                  ;
CODE_0DF039:        A5 ED         LDA $ED                   ;
CODE_0DF03B:        29 20         AND #$20                  ;
CODE_0DF03D:        D0 04         BNE CODE_0DF043           ;
CODE_0DF03F:        A2 8A         LDX #$8A                  ;
CODE_0DF041:        C6 02         DEC $02                   ;
CODE_0DF043:        A4 9E         LDY $9E                   ;
CODE_0DF045:        A5 EF         LDA $EF                   ;
CODE_0DF047:        C9 05         CMP #$05                  ;
CODE_0DF049:        D0 0C         BNE CODE_0DF057           ;
CODE_0DF04B:        A5 ED         LDA $ED                   ;
CODE_0DF04D:        F0 23         BEQ CODE_0DF072           ;
CODE_0DF04F:        29 08         AND #$08                  ;
CODE_0DF051:        F0 60         BEQ CODE_0DF0B3           ;
CODE_0DF053:        A2 B4         LDX #$B4                  ;
CODE_0DF055:        D0 1B         BNE CODE_0DF072           ;
CODE_0DF057:        E0 48         CPX #$48                  ;
CODE_0DF059:        F0 17         BEQ CODE_0DF072           ;
CODE_0DF05B:        B9 A2 07      LDA $07A2,y               ;
CODE_0DF05E:        C9 05         CMP #$05                  ;
CODE_0DF060:        B0 51         BCS CODE_0DF0B3           ;
CODE_0DF062:        E0 3C         CPX #$3C                  ;
CODE_0DF064:        D0 0C         BNE CODE_0DF072           ;
CODE_0DF066:        C9 01         CMP #$01                  ;
CODE_0DF068:        F0 49         BEQ CODE_0DF0B3           ;
CODE_0DF06A:        E6 02         INC $02                   ;
CODE_0DF06C:        E6 02         INC $02                   ;
CODE_0DF06E:        E6 02         INC $02                   ;
CODE_0DF070:        80 33         BRA CODE_0DF0A5           ;

CODE_0DF072:        A5 EF         LDA $EF                   ;
CODE_0DF074:        C9 06         CMP #$06                  ;
CODE_0DF076:        F0 3B         BEQ CODE_0DF0B3           ;
CODE_0DF078:        C9 08         CMP #$08                  ;
CODE_0DF07A:        F0 37         BEQ CODE_0DF0B3           ;
CODE_0DF07C:        C9 0C         CMP #$0C                  ;
CODE_0DF07E:        F0 33         BEQ CODE_0DF0B3           ;
CODE_0DF080:        C9 18         CMP #$18                  ;
CODE_0DF082:        B0 2F         BCS CODE_0DF0B3           ;
CODE_0DF084:        A0 00         LDY #$00                  ;
CODE_0DF086:        C9 15         CMP #$15                  ;
CODE_0DF088:        D0 14         BNE CODE_0DF09E           ;
CODE_0DF08A:        C8            INY                       ;
CODE_0DF08B:        AD 5F 07      LDA $075F                 ;
CODE_0DF08E:        C9 07         CMP #$07                  ;
CODE_0DF090:        F0 21         BEQ CODE_0DF0B3           ;
CODE_0DF092:        C9 0C         CMP #$0C                  ;
CODE_0DF094:        F0 1D         BEQ CODE_0DF0B3           ;
CODE_0DF096:        A2 A2         LDX #$A2                  ;
CODE_0DF098:        A9 03         LDA #$03                  ;
CODE_0DF09A:        85 EC         STA $EC                   ;
CODE_0DF09C:        D0 15         BNE CODE_0DF0B3           ;
CODE_0DF09E:        A5 09         LDA $09                   ;
CODE_0DF0A0:        39 15 EE      AND DATA_0DEE15,y               ;
CODE_0DF0A3:        D0 0E         BNE CODE_0DF0B3           ;
CODE_0DF0A5:        A5 ED         LDA $ED                   ;
CODE_0DF0A7:        29 A0         AND #$A0                  ;
CODE_0DF0A9:        0D 47 07      ORA $0747                 ;
CODE_0DF0AC:        D0 05         BNE CODE_0DF0B3           ;
CODE_0DF0AE:        8A            TXA                       ;
CODE_0DF0AF:        18            CLC                       ;
CODE_0DF0B0:        69 06         ADC #$06                  ;
CODE_0DF0B2:        AA            TAX                       ;
CODE_0DF0B3:        AD EF 00      LDA $00EF                 ;
CODE_0DF0B6:        C9 04         CMP #$04                  ;
CODE_0DF0B8:        F0 0C         BEQ CODE_0DF0C6           ;
CODE_0DF0BA:        A5 ED         LDA $ED                   ;
CODE_0DF0BC:        29 20         AND #$20                  ;
CODE_0DF0BE:        F0 0D         BEQ CODE_0DF0CD           ;
CODE_0DF0C0:        A5 EF         LDA $EF                   ;
CODE_0DF0C2:        C9 04         CMP #$04                  ;
CODE_0DF0C4:        90 07         BCC CODE_0DF0CD           ;
CODE_0DF0C6:        A0 01         LDY #$01                  ;
CODE_0DF0C8:        84 F0         STY $F0                   ;
CODE_0DF0CA:        88            DEY                       ;
CODE_0DF0CB:        84 EC         STY $EC                   ;
CODE_0DF0CD:        A4 EB         LDY $EB                   ;
CODE_0DF0CF:        22 6C F9 0F   JSL CODE_0FF96C           ;
CODE_0DF0D3:        B0 0D         BCS CODE_0DF0E2           ;
CODE_0DF0D5:        20 E7 F2      JSR CODE_0DF2E7           ;
CODE_0DF0D8:        20 E7 F2      JSR CODE_0DF2E7           ;
CODE_0DF0DB:        20 E7 F2      JSR CODE_0DF2E7           ;
CODE_0DF0DE:        22 4D FA 0F   JSL CODE_0FFA4D           ;
CODE_0DF0E2:        A6 9E         LDX $9E                   ;
CODE_0DF0E4:        BC 46 0B      LDY $0B46,x               ;
CODE_0DF0E7:        B5 1C         LDA $1C,x                 ;
CODE_0DF0E9:        C9 0C         CMP #$0C                  ;
CODE_0DF0EB:        D0 3B         BNE CODE_0DF128           ;
CODE_0DF0ED:        FE 1B 0E      INC $0E1B,x               ;
CODE_0DF0F0:        BD 1B 0E      LDA $0E1B,x               ;
CODE_0DF0F3:        C9 12         CMP #$12                  ;
CODE_0DF0F5:        90 06         BCC CODE_0DF0FD           ;
CODE_0DF0F7:        9E 1B 0E      STZ $0E1B,x               ;
CODE_0DF0FA:        BD 1B 0E      LDA $0E1B,x               ;
CODE_0DF0FD:        AA            TAX                       ;
CODE_0DF0FE:        BD 1C EE      LDA DATA_0DEE1C,x               ;
CODE_0DF101:        AA            TAX                       ;
CODE_0DF102:        BD 2E EE      LDA DATA_0DEE2E,x               ;
CODE_0DF105:        99 02 09      STA $0902,y               ;
CODE_0DF108:        BD 2F EE      LDA DATA_0DEE2E+1,x               ;
CODE_0DF10B:        99 06 09      STA $0906,y               ;
CODE_0DF10E:        BD 30 EE      LDA DATA_0DEE2E+2,x               ;
CODE_0DF111:        99 0A 09      STA $090A,y               ;
CODE_0DF114:        BD 31 EE      LDA DATA_0DEE2E+3,x               ;
CODE_0DF117:        99 0E 09      STA $090E,y               ;
CODE_0DF11A:        BD 32 EE      LDA DATA_0DEE2E+4,x               ;
CODE_0DF11D:        99 12 09      STA $0912,y               ;
CODE_0DF120:        BD 33 EE      LDA DATA_0DEE2E+5,x               ;
CODE_0DF123:        99 16 09      STA $0916,y               ;
CODE_0DF126:        A6 9E         LDX $9E                   ;
CODE_0DF128:        A5 EF         LDA $EF                   ;
CODE_0DF12A:        C9 08         CMP #$08                  ;
CODE_0DF12C:        D0 03         BNE CODE_0DF131           ;
CODE_0DF12E:        4C 47 F2      JMP CODE_0DF247           ;

CODE_0DF131:        A5 F0         LDA $F0                   ;
CODE_0DF133:        F0 41         BEQ CODE_0DF176           ;
CODE_0DF135:        B9 03 09      LDA $0903,y               ;
CODE_0DF138:        09 80         ORA #$80                  ;
CODE_0DF13A:        C8            INY                       ;
CODE_0DF13B:        C8            INY                       ;
CODE_0DF13C:        20 93 EB      JSR CODE_0DEB93           ;
CODE_0DF13F:        88            DEY                       ;
CODE_0DF140:        88            DEY                       ;
CODE_0DF141:        98            TYA                       ;
CODE_0DF142:        AA            TAX                       ;
CODE_0DF143:        A5 EF         LDA $EF                   ;
CODE_0DF145:        C9 05         CMP #$05                  ;
CODE_0DF147:        F0 11         BEQ CODE_0DF15A           ;
CODE_0DF149:        C9 04         CMP #$04                  ;
CODE_0DF14B:        F0 0D         BEQ CODE_0DF15A           ;
CODE_0DF14D:        C9 11         CMP #$11                  ;
CODE_0DF14F:        F0 09         BEQ CODE_0DF15A           ;
CODE_0DF151:        C9 15         CMP #$15                  ;
CODE_0DF153:        B0 05         BCS CODE_0DF15A           ;
CODE_0DF155:        8A            TXA                       ;
CODE_0DF156:        18            CLC                       ;
CODE_0DF157:        69 08         ADC #$08                  ;
CODE_0DF159:        AA            TAX                       ;
CODE_0DF15A:        BD 02 09      LDA $0902,x               ;
CODE_0DF15D:        48            PHA                       ;
CODE_0DF15E:        BD 06 09      LDA $0906,x               ;
CODE_0DF161:        48            PHA                       ;
CODE_0DF162:        B9 12 09      LDA $0912,y               ;
CODE_0DF165:        9D 02 09      STA $0902,x               ;
CODE_0DF168:        B9 16 09      LDA $0916,y               ;
CODE_0DF16B:        9D 06 09      STA $0906,x               ;
CODE_0DF16E:        68            PLA                       ;
CODE_0DF16F:        99 16 09      STA $0916,y               ;
CODE_0DF172:        68            PLA                       ;
CODE_0DF173:        99 12 09      STA $0912,y               ;
CODE_0DF176:        AD 6A 03      LDA $036A                 ;
CODE_0DF179:        D0 B3         BNE CODE_0DF12E           ;
CODE_0DF17B:        A5 EF         LDA $EF                   ;
CODE_0DF17D:        A6 EC         LDX $EC                   ;
CODE_0DF17F:        C9 05         CMP #$05                  ;
CODE_0DF181:        D0 03         BNE CODE_0DF186           ;
CODE_0DF183:        4C 47 F2      JMP CODE_0DF247           ;

CODE_0DF186:        C9 07         CMP #$07                  ;
CODE_0DF188:        F0 18         BEQ CODE_0DF1A2           ;
CODE_0DF18A:        C9 0D         CMP #$0D                  ;
CODE_0DF18C:        F0 14         BEQ CODE_0DF1A2           ;
CODE_0DF18E:        C9 04         CMP #$04                  ;
CODE_0DF190:        F0 10         BEQ CODE_0DF1A2           ;
CODE_0DF192:        C9 0C         CMP #$0C                  ;
CODE_0DF194:        F0 0C         BEQ CODE_0DF1A2           ;
CODE_0DF196:        C9 12         CMP #$12                  ;
CODE_0DF198:        D0 04         BNE CODE_0DF19E           ;
CODE_0DF19A:        E0 05         CPX #$05                  ;
CODE_0DF19C:        D0 44         BNE CODE_0DF1E2           ;
CODE_0DF19E:        E0 02         CPX #$02                  ;
CODE_0DF1A0:        90 40         BCC CODE_0DF1E2           ;
CODE_0DF1A2:        AD 6A 03      LDA $036A                 ;
CODE_0DF1A5:        D0 3B         BNE CODE_0DF1E2           ;
CODE_0DF1A7:        AD 49 0F      LDA $0F49                 ;
CODE_0DF1AA:        D0 36         BNE CODE_0DF1E2           ;
CODE_0DF1AC:        B9 03 09      LDA $0903,y               ;
CODE_0DF1AF:        29 BE         AND #$BE                  ;
CODE_0DF1B1:        99 03 09      STA $0903,y               ;
CODE_0DF1B4:        99 0B 09      STA $090B,y               ;
CODE_0DF1B7:        99 13 09      STA $0913,y               ;
CODE_0DF1BA:        09 40         ORA #$40                  ;
CODE_0DF1BC:        E0 05         CPX #$05                  ;
CODE_0DF1BE:        D0 02         BNE CODE_0DF1C2           ;
CODE_0DF1C0:        09 80         ORA #$80                  ;
CODE_0DF1C2:        99 07 09      STA $0907,y               ;
CODE_0DF1C5:        99 0F 09      STA $090F,y               ;
CODE_0DF1C8:        99 17 09      STA $0917,y               ;
CODE_0DF1CB:        E0 04         CPX #$04                  ;
CODE_0DF1CD:        D0 13         BNE CODE_0DF1E2           ;
CODE_0DF1CF:        B9 0B 09      LDA $090B,y               ;
CODE_0DF1D2:        09 80         ORA #$80                  ;
CODE_0DF1D4:        99 0B 09      STA $090B,y               ;
CODE_0DF1D7:        99 13 09      STA $0913,y               ;
CODE_0DF1DA:        09 40         ORA #$40                  ;
CODE_0DF1DC:        99 0F 09      STA $090F,y               ;
CODE_0DF1DF:        99 17 09      STA $0917,y               ;
CODE_0DF1E2:        A5 EF         LDA $EF                   ;
CODE_0DF1E4:        C9 11         CMP #$11                  ;
CODE_0DF1E6:        D0 35         BNE CODE_0DF21D           ;
CODE_0DF1E8:        A5 F0         LDA $F0                   ;
CODE_0DF1EA:        D0 21         BNE CODE_0DF20D           ;
CODE_0DF1EC:        B9 13 09      LDA $0913,y               ;
CODE_0DF1EF:        29 BF         AND #$BF                  ;
CODE_0DF1F1:        99 13 09      STA $0913,y               ;
CODE_0DF1F4:        B9 17 09      LDA $0917,y               ;
CODE_0DF1F7:        09 40         ORA #$40                  ;
CODE_0DF1F9:        99 17 09      STA $0917,y               ;
CODE_0DF1FC:        AE 9B 07      LDX $079B                 ;
CODE_0DF1FF:        E0 10         CPX #$10                  ;
CODE_0DF201:        B0 44         BCS CODE_0DF247           ;
CODE_0DF203:        99 0F 09      STA $090F,y               ;
CODE_0DF206:        29 BF         AND #$BF                  ;
CODE_0DF208:        99 0B 09      STA $090B,y               ;
CODE_0DF20B:        90 3A         BCC CODE_0DF247           ;
CODE_0DF20D:        B9 03 09      LDA $0903,y               ;
CODE_0DF210:        29 BF         AND #$BF                  ;
CODE_0DF212:        99 03 09      STA $0903,y               ;
CODE_0DF215:        B9 07 09      LDA $0907,y               ;
CODE_0DF218:        09 40         ORA #$40                  ;
CODE_0DF21A:        99 07 09      STA $0907,y               ;
CODE_0DF21D:        A5 EF         LDA $EF                   ;
CODE_0DF21F:        C9 18         CMP #$18                  ;
CODE_0DF221:        90 24         BCC CODE_0DF247           ;
CODE_0DF223:        AD 30 0F      LDA $0F30                 ;
CODE_0DF226:        4A            LSR A                     ;
CODE_0DF227:        90 04         BCC CODE_0DF22D           ;
CODE_0DF229:        A9 AA         LDA #$AA                  ;
CODE_0DF22B:        80 02         BRA CODE_0DF22F           ;

CODE_0DF22D:        A9 AC         LDA #$AC                  ;
CODE_0DF22F:        99 0B 09      STA $090B,y               ;
CODE_0DF232:        99 13 09      STA $0913,y               ;
CODE_0DF235:        09 40         ORA #$40                  ;
CODE_0DF237:        99 0F 09      STA $090F,y               ;
CODE_0DF23A:        99 17 09      STA $0917,y               ;
CODE_0DF23D:        29 3F         AND #$3F                  ;
CODE_0DF23F:        99 03 09      STA $0903,y               ;
CODE_0DF242:        09 40         ORA #$40                  ;
CODE_0DF244:        99 07 09      STA $0907,y               ;
CODE_0DF247:        A6 9E         LDX $9E                   ;
CODE_0DF249:        A5 EF         LDA $EF                   ;
CODE_0DF24B:        C9 0D         CMP #$0D                  ;
CODE_0DF24D:        D0 1C         BNE CODE_0DF26B           ;
CODE_0DF24F:        B5 29         LDA $29,x                 ;
CODE_0DF251:        29 20         AND #$20                  ;
CODE_0DF253:        D0 36         BNE CODE_0DF28B           ;
CODE_0DF255:        B9 13 09      LDA $0913,y               ;
CODE_0DF258:        29 F0         AND #$F0                  ;
CODE_0DF25A:        09 08         ORA #$08                  ;
CODE_0DF25C:        99 13 09      STA $0913,y               ;
CODE_0DF25F:        B9 17 09      LDA $0917,y               ;
CODE_0DF262:        29 F0         AND #$F0                  ;
CODE_0DF264:        09 08         ORA #$08                  ;
CODE_0DF266:        99 17 09      STA $0917,y               ;
CODE_0DF269:        80 34         BRA CODE_0DF29F           ;

CODE_0DF26B:        C9 04         CMP #$04                  ;
CODE_0DF26D:        D0 30         BNE CODE_0DF29F           ;
CODE_0DF26F:        B5 29         LDA $29,x                 ;
CODE_0DF271:        29 20         AND #$20                  ;
CODE_0DF273:        D0 16         BNE CODE_0DF28B           ;
CODE_0DF275:        B9 03 09      LDA $0903,y               ;
CODE_0DF278:        29 F0         AND #$F0                  ;
CODE_0DF27A:        09 08         ORA #$08                  ;
CODE_0DF27C:        99 03 09      STA $0903,y               ;
CODE_0DF27F:        B9 07 09      LDA $0907,y               ;
CODE_0DF282:        29 F0         AND #$F0                  ;
CODE_0DF284:        09 08         ORA #$08                  ;
CODE_0DF286:        99 07 09      STA $0907,y               ;
CODE_0DF289:        80 14         BRA CODE_0DF29F           ;

CODE_0DF28B:        A9 F0         LDA #$F0                  ;
CODE_0DF28D:        99 01 09      STA $0901,y               ;
CODE_0DF290:        99 05 09      STA $0905,y               ;
CODE_0DF293:        99 09 09      STA $0909,y               ;
CODE_0DF296:        99 0D 09      STA $090D,y               ;
CODE_0DF299:        99 11 09      STA $0911,y               ;
CODE_0DF29C:        99 15 09      STA $0915,y               ;
CODE_0DF29F:        A6 9E         LDX $9E                   ;
CODE_0DF2A1:        20 C2 FE      JSR CODE_0DFEC2           ;
CODE_0DF2A4:        64 04         STZ $04                   ;
CODE_0DF2A6:        20 FB FE      JSR CODE_0DFEFB           ;
CODE_0DF2A9:        20 51 FF      JSR CODE_0DFF51           ;
CODE_0DF2AC:        64 04         STZ $04                   ;
CODE_0DF2AE:        20 FB FE      JSR CODE_0DFEFB           ;
CODE_0DF2B1:        88            DEY                       ;
CODE_0DF2B2:        88            DEY                       ;
CODE_0DF2B3:        88            DEY                       ;
CODE_0DF2B4:        88            DEY                       ;
CODE_0DF2B5:        AD D1 03      LDA $03D1                 ;
CODE_0DF2B8:        4A            LSR A                     ;
CODE_0DF2B9:        4A            LSR A                     ;
CODE_0DF2BA:        4A            LSR A                     ;
CODE_0DF2BB:        4A            LSR A                     ;
CODE_0DF2BC:        4A            LSR A                     ;
CODE_0DF2BD:        4A            LSR A                     ;
CODE_0DF2BE:        48            PHA                       ;
CODE_0DF2BF:        90 05         BCC CODE_0DF2C6           ;
CODE_0DF2C1:        A9 10         LDA #$10                  ;
CODE_0DF2C3:        20 03 F3      JSR CODE_0DF303           ;
CODE_0DF2C6:        68            PLA                       ;
CODE_0DF2C7:        4A            LSR A                     ;
CODE_0DF2C8:        48            PHA                       ;
CODE_0DF2C9:        90 05         BCC CODE_0DF2D0           ;
CODE_0DF2CB:        A9 08         LDA #$08                  ;
CODE_0DF2CD:        20 03 F3      JSR CODE_0DF303           ;
CODE_0DF2D0:        68            PLA                       ;
CODE_0DF2D1:        4A            LSR A                     ;
CODE_0DF2D2:        90 12         BCC CODE_0DF2E6           ;
CODE_0DF2D4:        20 03 F3      JSR CODE_0DF303           ;
CODE_0DF2D7:        B5 1C         LDA $1C,x                 ;
CODE_0DF2D9:        C9 0C         CMP #$0C                  ;
CODE_0DF2DB:        F0 09         BEQ CODE_0DF2E6           ;
CODE_0DF2DD:        B5 BC         LDA $BC,x                 ;
CODE_0DF2DF:        C9 02         CMP #$02                  ;
CODE_0DF2E1:        D0 03         BNE CODE_0DF2E6           ;
CODE_0DF2E3:        20 EA CC      JSR CODE_0DCCEA           ;
CODE_0DF2E6:        60            RTS                       ;

CODE_0DF2E7:        BD DD EC      LDA DATA_0DECDD,x               ;
CODE_0DF2EA:        85 00         STA $00                   ;
CODE_0DF2EC:        BD DE EC      LDA DATA_0DECDD+1,x               ;
CODE_0DF2EF:        85 01         STA $01                   ;
CODE_0DF2F1:        A5 02         LDA $02                   ;
CODE_0DF2F3:        C9 F9         CMP #$F9                  ;
CODE_0DF2F5:        D0 04         BNE CODE_0DF2FB           ;
CODE_0DF2F7:        A9 F0         LDA #$F0                  ;
CODE_0DF2F9:        85 02         STA $02                   ;
CODE_0DF2FB:        4C AC FF      JMP CODE_0DFFAC           ;

CODE_0DF2FE:        85 01         STA $01                   ;
CODE_0DF300:        4C 64 FF      JMP CODE_0DFF64           ;

CODE_0DF303:        86 9E         STX $9E                   ;
CODE_0DF305:        E0 0A         CPX #$0A                  ;
CODE_0DF307:        D0 01         BNE CODE_0DF30A           ;
CODE_0DF309:        CA            DEX                       ;
CODE_0DF30A:        18            CLC                       ;
CODE_0DF30B:        7D 46 0B      ADC $0B46,x               ;
CODE_0DF30E:        A8            TAY                       ;
CODE_0DF30F:        A9 F0         LDA #$F0                  ;
CODE_0DF311:        A6 9E         LDX $9E                   ;
CODE_0DF313:        4C 9F EB      JMP CODE_0DEB9F           ;

CODE_0DF316:        86 9E         STX $9E                   ;
CODE_0DF318:        E0 0A         CPX #$0A                  ;
CODE_0DF31A:        D0 01         BNE CODE_0DF31D           ;
CODE_0DF31C:        CA            DEX                       ;
CODE_0DF31D:        18            CLC                       ;
CODE_0DF31E:        7D 46 0B      ADC $0B46,x               ;
CODE_0DF321:        A8            TAY                       ;
CODE_0DF322:        A9 F0         LDA #$F0                  ;
CODE_0DF324:        99 01 09      STA $0901,y               ;
CODE_0DF327:        99 09 09      STA $0909,y               ;
CODE_0DF32A:        99 11 09      STA $0911,y               ;
CODE_0DF32D:        A6 9E         LDX $9E                   ;
CODE_0DF32F:        60            RTS                       ;

CODE_0DF330:        A9 01         LDA #$01                  ;
CODE_0DF332:        99 00 0D      STA $0D00,y               ;
CODE_0DF335:        99 08 0D      STA $0D08,y               ;
CODE_0DF338:        99 10 0D      STA $0D10,y               ;
CODE_0DF33B:        60            RTS                       ;

CODE_0DF33C:        A9 01         LDA #$01                  ;
CODE_0DF33E:        99 04 0D      STA $0D04,y               ;
CODE_0DF341:        99 0C 0D      STA $0D0C,y               ;
CODE_0DF344:        99 14 0D      STA $0D14,y               ;
CODE_0DF347:        60            RTS                       ;

CODE_0DF348:        BC 51 0B      LDY $0B51,x               ;
CODE_0DF34B:        AD B1 03      LDA $03B1                 ;
CODE_0DF34E:        99 00 08      STA $0800,y               ;
CODE_0DF351:        AD BC 03      LDA $03BC                 ;
CODE_0DF354:        99 01 08      STA $0801,y               ;
CODE_0DF357:        A9 2B         LDA #$2B                  ;
CODE_0DF359:        99 03 08      STA $0803,y               ;
CODE_0DF35C:        A9 02         LDA #$02                  ;
CODE_0DF35E:        99 00 0C      STA $0C00,y               ;
CODE_0DF361:        BD EA 03      LDA $03EA,x               ;
CODE_0DF364:        C9 FD         CMP #$FD                  ;
CODE_0DF366:        D0 04         BNE CODE_0DF36C           ;
CODE_0DF368:        A9 00         LDA #$00                  ;
CODE_0DF36A:        80 02         BRA CODE_0DF36E           ;

CODE_0DF36C:        A9 02         LDA #$02                  ;
CODE_0DF36E:        99 02 08      STA $0802,y               ;
CODE_0DF371:        B5 85         LDA $85,x                 ;
CODE_0DF373:        85 E5         STA $E5                   ;
CODE_0DF375:        BD 26 02      LDA $0226,x               ;
CODE_0DF378:        85 E4         STA $E4                   ;
CODE_0DF37A:        C2 20         REP #$20                  ;
CODE_0DF37C:        A5 E4         LDA $E4                   ;
CODE_0DF37E:        38            SEC                       ;
CODE_0DF37F:        E5 42         SBC $42                   ;
CODE_0DF381:        85 E4         STA $E4                   ;
CODE_0DF383:        E2 20         SEP #$20                  ;
CODE_0DF385:        A5 E5         LDA $E5                   ;
CODE_0DF387:        F0 05         BEQ CODE_0DF38E           ;
CODE_0DF389:        A9 03         LDA #$03                  ;
CODE_0DF38B:        99 00 0C      STA $0C00,y               ;
CODE_0DF38E:        60            RTS                       ;

CODE_0DF38F:        29 08         AND #$08                  ;
CODE_0DF391:        F0 08         BEQ CODE_0DF39B           ;
CODE_0DF393:        A9 F0         LDA #$F0                  ;
CODE_0DF395:        99 01 08      STA $0801,y               ;
CODE_0DF398:        99 09 08      STA $0809,y               ;
CODE_0DF39B:        60            RTS                       ;

CODE_0DF39C:        A9 2C         LDA #$2C                  ;
CODE_0DF39E:        85 00         STA $00                   ;
CODE_0DF3A0:        A9 75         LDA #$75                  ;
CODE_0DF3A2:        A4 0F         LDY $0F                   ;
CODE_0DF3A4:        C0 05         CPY #$05                  ;
CODE_0DF3A6:        F0 06         BEQ CODE_0DF3AE           ;
CODE_0DF3A8:        A9 2A         LDA #$2A                  ;
CODE_0DF3AA:        85 00         STA $00                   ;
CODE_0DF3AC:        A9 84         LDA #$84                  ;
CODE_0DF3AE:        BC 51 0B      LDY $0B51,x               ;
CODE_0DF3B1:        C8            INY                       ;
CODE_0DF3B2:        20 84 EB      JSR CODE_0DEB84           ;
CODE_0DF3B5:        A5 09         LDA $09                   ;
CODE_0DF3B7:        0A            ASL A                     ;
CODE_0DF3B8:        0A            ASL A                     ;
CODE_0DF3B9:        0A            ASL A                     ;
CODE_0DF3BA:        0A            ASL A                     ;
CODE_0DF3BB:        29 C0         AND #$C0                  ;
CODE_0DF3BD:        05 00         ORA $00                   ;
CODE_0DF3BF:        C8            INY                       ;
CODE_0DF3C0:        20 84 EB      JSR CODE_0DEB84           ;
CODE_0DF3C3:        88            DEY                       ;
CODE_0DF3C4:        88            DEY                       ;
CODE_0DF3C5:        AD BC 03      LDA $03BC                 ;
CODE_0DF3C8:        C9 F0         CMP #$F0                  ;
CODE_0DF3CA:        90 02         BCC CODE_0DF3CE           ;
CODE_0DF3CC:        A9 F0         LDA #$F0                  ;
CODE_0DF3CE:        20 8A EB      JSR CODE_0DEB8A           ;
CODE_0DF3D1:        AD B1 03      LDA $03B1                 ;
CODE_0DF3D4:        99 00 08      STA $0800,y               ;
CODE_0DF3D7:        BD F3 03      LDA $03F3,x               ;
CODE_0DF3DA:        38            SEC                       ;
CODE_0DF3DB:        ED 1C 07      SBC $071C                 ;
CODE_0DF3DE:        85 00         STA $00                   ;
CODE_0DF3E0:        38            SEC                       ;
CODE_0DF3E1:        ED B1 03      SBC $03B1                 ;
CODE_0DF3E4:        65 00         ADC $00                   ;
CODE_0DF3E6:        69 06         ADC #$06                  ;
CODE_0DF3E8:        99 04 08      STA $0804,y               ;
CODE_0DF3EB:        AD BD 03      LDA $03BD                 ;
CODE_0DF3EE:        C9 F0         CMP #$F0                  ;
CODE_0DF3F0:        90 02         BCC CODE_0DF3F4           ;
CODE_0DF3F2:        A9 F0         LDA #$F0                  ;
CODE_0DF3F4:        99 09 08      STA $0809,y               ;
CODE_0DF3F7:        99 0D 08      STA $080D,y               ;
CODE_0DF3FA:        AD B2 03      LDA $03B2                 ;
CODE_0DF3FD:        99 08 08      STA $0808,y               ;
CODE_0DF400:        A5 00         LDA $00                   ;
CODE_0DF402:        38            SEC                       ;
CODE_0DF403:        ED B2 03      SBC $03B2                 ;
CODE_0DF406:        65 00         ADC $00                   ;
CODE_0DF408:        69 06         ADC #$06                  ;
CODE_0DF40A:        99 0C 08      STA $080C,y               ;
CODE_0DF40D:        AD D4 03      LDA $03D4                 ;
CODE_0DF410:        0A            ASL A                     ;
CODE_0DF411:        90 05         BCC CODE_0DF418           ;
CODE_0DF413:        A9 F0         LDA #$F0                  ;
CODE_0DF415:        20 8A EB      JSR CODE_0DEB8A           ;
CODE_0DF418:        AD D4 03      LDA $03D4                 ;
CODE_0DF41B:        F0 08         BEQ CODE_0DF425           ;
CODE_0DF41D:        A9 01         LDA #$01                  ;
CODE_0DF41F:        99 00 0C      STA $0C00,y               ;
CODE_0DF422:        99 08 0C      STA $0C08,y               ;
CODE_0DF425:        AD D5 03      LDA $03D5                 ;
CODE_0DF428:        F0 08         BEQ CODE_0DF432           ;
CODE_0DF42A:        A9 01         LDA #$01                  ;
CODE_0DF42C:        99 04 0C      STA $0C04,y               ;
CODE_0DF42F:        99 0C 0C      STA $0C0C,y               ;
CODE_0DF432:        60            RTS                       ;

CODE_0DF433:        BC 56 0B      LDY $0B56,x               ;
CODE_0DF436:        AD BA 03      LDA $03BA                 ;
CODE_0DF439:        99 01 08      STA $0801,y               ;
CODE_0DF43C:        AD AF 03      LDA $03AF                 ;
CODE_0DF43F:        99 00 08      STA $0800,y               ;
CODE_0DF442:        A5 09         LDA $09                   ;
CODE_0DF444:        4A            LSR A                     ;
CODE_0DF445:        4A            LSR A                     ;
CODE_0DF446:        48            PHA                       ;
CODE_0DF447:        29 01         AND #$01                  ;
CODE_0DF449:        49 BE         EOR #$BE                  ;
CODE_0DF44B:        99 02 08      STA $0802,y               ;
CODE_0DF44E:        68            PLA                       ;
CODE_0DF44F:        4A            LSR A                     ;
CODE_0DF450:        4A            LSR A                     ;
CODE_0DF451:        A9 28         LDA #$28                  ;
CODE_0DF453:        90 02         BCC CODE_0DF457           ;
CODE_0DF455:        09 C0         ORA #$C0                  ;
CODE_0DF457:        99 03 08      STA $0803,y               ;
CODE_0DF45A:        BD 68 00      LDA $0068,x               ;
CODE_0DF45D:        10 0C         BPL CODE_0DF46B           ;
CODE_0DF45F:        AD AF 03      LDA $03AF                 ;
CODE_0DF462:        C9 F8         CMP #$F8                  ;
CODE_0DF464:        90 05         BCC CODE_0DF46B           ;
CODE_0DF466:        A9 01         LDA #$01                  ;
CODE_0DF468:        99 00 0C      STA $0C00,y               ;
CODE_0DF46B:        60            RTS                       ;

CODE_0DF46C:        BC 56 0B      LDY $0B56,x               ;
CODE_0DF46F:        AD BA 03      LDA $03BA                 ;
CODE_0DF472:        99 01 09      STA $0901,y               ;
CODE_0DF475:        AD AF 03      LDA $03AF                 ;
CODE_0DF478:        99 00 09      STA $0900,y               ;
CODE_0DF47B:        A5 09         LDA $09                   ;
CODE_0DF47D:        4A            LSR A                     ;
CODE_0DF47E:        4A            LSR A                     ;
CODE_0DF47F:        48            PHA                       ;
CODE_0DF480:        29 01         AND #$01                  ;
CODE_0DF482:        49 BE         EOR #$BE                  ;
CODE_0DF484:        99 02 09      STA $0902,y               ;
CODE_0DF487:        68            PLA                       ;
CODE_0DF488:        4A            LSR A                     ;
CODE_0DF489:        4A            LSR A                     ;
CODE_0DF48A:        A9 38         LDA #$38                  ;
CODE_0DF48C:        90 02         BCC CODE_0DF490           ;
CODE_0DF48E:        09 C0         ORA #$C0                  ;
CODE_0DF490:        99 03 09      STA $0903,y               ;
CODE_0DF493:        60            RTS                       ;

DATA_0DF494:        db $CC,$CB,$CA,$FC

CODE_0DF498:        BC 51 0B      LDY $0B51,x
CODE_0DF49B:        BD 68 00      LDA $0068,x               ;
CODE_0DF49E:        30 17         BMI CODE_0DF4B7           ;
CODE_0DF4A0:        AD AF 03      LDA $03AF                 ;
CODE_0DF4A3:        38            SEC                       ;
CODE_0DF4A4:        E9 04         SBC #$04                  ;
CODE_0DF4A6:        8D AF 03      STA $03AF                 ;
CODE_0DF4A9:        C9 F8         CMP #$F8                  ;
CODE_0DF4AB:        90 29         BCC CODE_0DF4D6           ;
CODE_0DF4AD:        A9 01         LDA #$01                  ;
CODE_0DF4AF:        99 08 0C      STA $0C08,y               ;
CODE_0DF4B2:        99 0C 0C      STA $0C0C,y               ;
CODE_0DF4B5:        80 1F         BRA CODE_0DF4D6           ;

CODE_0DF4B7:        AD AF 03      LDA $03AF                 ;
CODE_0DF4BA:        C9 F0         CMP #$F0                  ;
CODE_0DF4BC:        90 18         BCC CODE_0DF4D6           ;
CODE_0DF4BE:        C9 F8         CMP #$F8                  ;
CODE_0DF4C0:        90 0A         BCC CODE_0DF4CC           ;
CODE_0DF4C2:        A9 01         LDA #$01                  ;
CODE_0DF4C4:        99 00 0C      STA $0C00,y               ;
CODE_0DF4C7:        99 04 0C      STA $0C04,y               ;
CODE_0DF4CA:        80 0A         BRA CODE_0DF4D6           ;

CODE_0DF4CC:        A9 01         LDA #$01                  ;
CODE_0DF4CE:        99 00 0C      STA $0C00,y               ;
CODE_0DF4D1:        99 04 0C      STA $0C04,y               ;
CODE_0DF4D4:        80 D7         BRA CODE_0DF4AD           ;

CODE_0DF4D6:        B5 33         LDA $33,x                 ;
CODE_0DF4D8:        F6 33         INC $33,x                 ;
CODE_0DF4DA:        4A            LSR A                     ;
CODE_0DF4DB:        29 07         AND #$07                  ;
CODE_0DF4DD:        C9 03         CMP #$03                  ;
CODE_0DF4DF:        B0 47         BCS CODE_0DF528           ;
CODE_0DF4E1:        AA            TAX                       ;
CODE_0DF4E2:        BD 94 F4      LDA DATA_0DF494,x               ;
CODE_0DF4E5:        C8            INY                       ;
CODE_0DF4E6:        20 84 EB      JSR CODE_0DEB84           ;
CODE_0DF4E9:        88            DEY                       ;
CODE_0DF4EA:        A6 9E         LDX $9E                   ;
CODE_0DF4EC:        AD BA 03      LDA $03BA                 ;
CODE_0DF4EF:        38            SEC                       ;
CODE_0DF4F0:        E9 04         SBC #$04                  ;
CODE_0DF4F2:        99 01 08      STA $0801,y               ;
CODE_0DF4F5:        99 09 08      STA $0809,y               ;
CODE_0DF4F8:        18            CLC                       ;
CODE_0DF4F9:        69 08         ADC #$08                  ;
CODE_0DF4FB:        99 05 08      STA $0805,y               ;
CODE_0DF4FE:        99 0D 08      STA $080D,y               ;
CODE_0DF501:        AD AF 03      LDA $03AF                 ;
CODE_0DF504:        99 00 08      STA $0800,y               ;
CODE_0DF507:        99 04 08      STA $0804,y               ;
CODE_0DF50A:        18            CLC                       ;
CODE_0DF50B:        69 08         ADC #$08                  ;
CODE_0DF50D:        99 08 08      STA $0808,y               ;
CODE_0DF510:        99 0C 08      STA $080C,y               ;
CODE_0DF513:        A9 28         LDA #$28                  ;
CODE_0DF515:        99 03 08      STA $0803,y               ;
CODE_0DF518:        A9 A8         LDA #$A8                  ;
CODE_0DF51A:        99 07 08      STA $0807,y               ;
CODE_0DF51D:        A9 68         LDA #$68                  ;
CODE_0DF51F:        99 0B 08      STA $080B,y               ;
CODE_0DF522:        A9 E8         LDA #$E8                  ;
CODE_0DF524:        99 0F 08      STA $080F,y               ;
CODE_0DF527:        60            RTS                       ;

CODE_0DF528:        74 33         STZ $33,x                 ;
CODE_0DF52A:        60            RTS                       ;

DATA_0DF52B:        db $48,$4A,$4C,$4E

DATA_0DF52F:        db $0C,$08,$0A,$0C,$08,$0A,$0C,$08
                    db $0A

CODE_0DF538:        AA            TAX                       ;
CODE_0DF539:        BD 2B F5      LDA DATA_0DF52B,x               ;
CODE_0DF53C:        C8            INY                       ;
CODE_0DF53D:        20 99 EB      JSR CODE_0DEB99           ;
CODE_0DF540:        88            DEY                       ;
CODE_0DF541:        A6 9E         LDX $9E                   ;
CODE_0DF543:        AD BA 03      LDA $03BA                 ;
CODE_0DF546:        38            SEC                       ;
CODE_0DF547:        E9 10         SBC #$10                  ;
CODE_0DF549:        99 01 09      STA $0901,y               ;
CODE_0DF54C:        99 09 09      STA $0909,y               ;
CODE_0DF54F:        18            CLC                       ;
CODE_0DF550:        69 10         ADC #$10                  ;
CODE_0DF552:        99 05 09      STA $0905,y               ;
CODE_0DF555:        99 0D 09      STA $090D,y               ;
CODE_0DF558:        AD AF 03      LDA $03AF                 ;
CODE_0DF55B:        38            SEC                       ;
CODE_0DF55C:        E9 08         SBC #$08                  ;
CODE_0DF55E:        99 00 09      STA $0900,y               ;
CODE_0DF561:        99 04 09      STA $0904,y               ;
CODE_0DF564:        18            CLC                       ;
CODE_0DF565:        69 10         ADC #$10                  ;
CODE_0DF567:        99 08 09      STA $0908,y               ;
CODE_0DF56A:        99 0C 09      STA $090C,y               ;
CODE_0DF56D:        A9 02         LDA #$02                  ;
CODE_0DF56F:        99 00 0D      STA $0D00,y               ;
CODE_0DF572:        99 04 0D      STA $0D04,y               ;
CODE_0DF575:        99 08 0D      STA $0D08,y               ;
CODE_0DF578:        99 0C 0D      STA $0D0C,y               ;
CODE_0DF57B:        DA            PHX                       ;
CODE_0DF57C:        B5 A1         LDA $A1,x                 ;
CODE_0DF57E:        AA            TAX                       ;
CODE_0DF57F:        CA            DEX                       ;
CODE_0DF580:        BD 2F F5      LDA DATA_0DF52F,x               ;
CODE_0DF583:        09 20         ORA #$20                  ;
CODE_0DF585:        99 03 09      STA $0903,y               ;
CODE_0DF588:        BD 2F F5      LDA DATA_0DF52F,x               ;
CODE_0DF58B:        09 A0         ORA #$A0                  ;
CODE_0DF58D:        99 07 09      STA $0907,y               ;
CODE_0DF590:        BD 2F F5      LDA DATA_0DF52F,x               ;
CODE_0DF593:        09 60         ORA #$60                  ;
CODE_0DF595:        99 0B 09      STA $090B,y               ;
CODE_0DF598:        BD 2F F5      LDA DATA_0DF52F,x               ;
CODE_0DF59B:        09 E0         ORA #$E0                  ;
CODE_0DF59D:        99 0F 09      STA $090F,y               ;
CODE_0DF5A0:        FA            PLX                       ;
CODE_0DF5A1:        60            RTS                       ;

CODE_0DF5A2:        BC 46 0B      LDY $0B46,x               ;
CODE_0DF5A5:        A9 87         LDA #$87                  ;
CODE_0DF5A7:        C8            INY                       ;
CODE_0DF5A8:        20 93 EB      JSR CODE_0DEB93           ;
CODE_0DF5AB:        C8            INY                       ;
CODE_0DF5AC:        A9 2C         LDA #$2C                  ;
CODE_0DF5AE:        20 93 EB      JSR CODE_0DEB93           ;
CODE_0DF5B1:        88            DEY                       ;
CODE_0DF5B2:        88            DEY                       ;
CODE_0DF5B3:        AD AE 03      LDA $03AE                 ;
CODE_0DF5B6:        99 00 09      STA $0900,y               ;
CODE_0DF5B9:        99 0C 09      STA $090C,y               ;
CODE_0DF5BC:        18            CLC                       ;
CODE_0DF5BD:        69 08         ADC #$08                  ;
CODE_0DF5BF:        99 04 09      STA $0904,y               ;
CODE_0DF5C2:        99 10 09      STA $0910,y               ;
CODE_0DF5C5:        18            CLC                       ;
CODE_0DF5C6:        69 08         ADC #$08                  ;
CODE_0DF5C8:        99 08 09      STA $0908,y               ;
CODE_0DF5CB:        99 14 09      STA $0914,y               ;
CODE_0DF5CE:        BD 38 02      LDA $0238,x               ;
CODE_0DF5D1:        AA            TAX                       ;
CODE_0DF5D2:        48            PHA                       ;
CODE_0DF5D3:        E0 00         CPX #$00                  ;
CODE_0DF5D5:        B0 02         BCS CODE_0DF5D9           ;
CODE_0DF5D7:        A9 F0         LDA #$F0                  ;
CODE_0DF5D9:        20 9C EB      JSR CODE_0DEB9C           ;
CODE_0DF5DC:        68            PLA                       ;
CODE_0DF5DD:        18            CLC                       ;
CODE_0DF5DE:        69 80         ADC #$80                  ;
CODE_0DF5E0:        AA            TAX                       ;
CODE_0DF5E1:        E0 00         CPX #$00                  ;
CODE_0DF5E3:        B0 02         BCS CODE_0DF5E7           ;
CODE_0DF5E5:        A9 F0         LDA #$F0                  ;
CODE_0DF5E7:        99 0D 09      STA $090D,y               ;
CODE_0DF5EA:        99 11 09      STA $0911,y               ;
CODE_0DF5ED:        99 15 09      STA $0915,y               ;
CODE_0DF5F0:        AD D1 03      LDA $03D1                 ;
CODE_0DF5F3:        48            PHA                       ;
CODE_0DF5F4:        29 08         AND #$08                  ;
CODE_0DF5F6:        F0 08         BEQ CODE_0DF600           ;
CODE_0DF5F8:        A9 01         LDA #$01                  ;
CODE_0DF5FA:        99 00 0D      STA $0D00,y               ;
CODE_0DF5FD:        99 0C 0D      STA $0D0C,y               ;
CODE_0DF600:        68            PLA                       ;
CODE_0DF601:        48            PHA                       ;
CODE_0DF602:        29 04         AND #$04                  ;
CODE_0DF604:        F0 08         BEQ CODE_0DF60E           ;
CODE_0DF606:        A9 01         LDA #$01                  ;
CODE_0DF608:        99 04 0D      STA $0D04,y               ;
CODE_0DF60B:        99 10 0D      STA $0D10,y               ;
CODE_0DF60E:        68            PLA                       ;
CODE_0DF60F:        29 02         AND #$02                  ;
CODE_0DF611:        F0 08         BEQ CODE_0DF61B           ;
CODE_0DF613:        A9 01         LDA #$01                  ;
CODE_0DF615:        99 08 0D      STA $0D08,y               ;
CODE_0DF618:        99 14 0D      STA $0D14,y               ;
CODE_0DF61B:        A6 9E         LDX $9E                   ;
CODE_0DF61D:        60            RTS                       ;

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

CODE_0DF700:        AD 41 0E      LDA $0E41                 ;
CODE_0DF703:        D0 1D         BNE CODE_0DF722           ;
CODE_0DF705:        AD D5 06      LDA $06D5                 ;
CODE_0DF708:        C9 18         CMP #$18                  ;
CODE_0DF70A:        F0 04         BEQ CODE_0DF710           ;
CODE_0DF70C:        C9 78         CMP #$78                  ;
CODE_0DF70E:        D0 16         BNE CODE_0DF726           ;
CODE_0DF710:        EE 41 0E      INC $0E41                 ;
CODE_0DF713:        80 0A         BRA CODE_0DF71F           ;

CODE_0DF715:        AD 02 02      LDA $0202                 ;
CODE_0DF718:        29 02         AND #$02                  ;
CODE_0DF71A:        D0 0A         BNE CODE_0DF726           ;
CODE_0DF71C:        EE 41 0E      INC $0E41                 ;
CODE_0DF71F:        9C 40 0E      STZ $0E40                 ;
CODE_0DF722:        22 A4 E5 0F   JSL CODE_0FE5A4           ;
CODE_0DF726:        A5 0F         LDA $0F                   ;
CODE_0DF728:        C9 03         CMP #$03                  ;
CODE_0DF72A:        F0 0A         BEQ CODE_0DF736           ;
CODE_0DF72C:        AD AE 07      LDA $07AE                 ;
CODE_0DF72F:        F0 05         BEQ CODE_0DF736           ;
CODE_0DF731:        A5 09         LDA $09                   ;
CODE_0DF733:        4A            LSR A                     ;
CODE_0DF734:        B0 76         BCS CODE_0DF7AC           ;
CODE_0DF736:        A5 0F         LDA $0F                   ;
CODE_0DF738:        C9 0B         CMP #$0B                  ;
CODE_0DF73A:        F0 7B         BEQ CODE_0DF7B7           ;
CODE_0DF73C:        AD 0B 07      LDA $070B                 ;
CODE_0DF73F:        D0 71         BNE CODE_0DF7B2           ;
CODE_0DF741:        AC 04 07      LDY $0704                 ;
CODE_0DF744:        F0 67         BEQ CODE_0DF7AD           ;
CODE_0DF746:        A5 28         LDA $28                   ;
CODE_0DF748:        C9 00         CMP #$00                  ;
CODE_0DF74A:        F0 61         BEQ CODE_0DF7AD           ;
CODE_0DF74C:        20 AD F7      JSR CODE_0DF7AD           ;
CODE_0DF74F:        AA            TAX                       ;
CODE_0DF750:        AC 45 0B      LDY $0B45                 ;
CODE_0DF753:        AD 02 02      LDA $0202                 ;
CODE_0DF756:        4A            LSR A                     ;
CODE_0DF757:        B0 04         BCS CODE_0DF75D           ;
CODE_0DF759:        C8            INY                       ;
CODE_0DF75A:        C8            INY                       ;
CODE_0DF75B:        C8            INY                       ;
CODE_0DF75C:        C8            INY                       ;
CODE_0DF75D:        AD 54 07      LDA $0754                 ;
CODE_0DF760:        D0 4A         BNE CODE_0DF7AC           ;
CODE_0DF762:        AD 28 00      LDA $0028                 ;
CODE_0DF765:        C9 03         CMP #$03                  ;
CODE_0DF767:        F0 43         BEQ CODE_0DF7AC           ;
CODE_0DF769:        AD 0F 00      LDA $000F                 ;
CODE_0DF76C:        C9 0B         CMP #$0B                  ;
CODE_0DF76E:        F0 3C         BEQ CODE_0DF7AC           ;
CODE_0DF770:        DA            PHX                       ;
CODE_0DF771:        AD 02 02      LDA $0202                 ;
CODE_0DF774:        C9 02         CMP #$02                  ;
CODE_0DF776:        F0 0F         BEQ CODE_0DF787           ;
CODE_0DF778:        B9 10 08      LDA $0810,y               ;
CODE_0DF77B:        38            SEC                       ;
CODE_0DF77C:        E9 08         SBC #$08                  ;
CODE_0DF77E:        99 10 08      STA $0810,y               ;
CODE_0DF781:        B0 04         BCS CODE_0DF787           ;
CODE_0DF783:        A9 03         LDA #$03                  ;
CODE_0DF785:        80 02         BRA CODE_0DF789           ;

CODE_0DF787:        A9 02         LDA #$02                  ;
CODE_0DF789:        99 10 0C      STA $0C10,y               ;
CODE_0DF78C:        AD D5 06      LDA $06D5                 ;
CODE_0DF78F:        38            SEC                       ;
CODE_0DF790:        E9 28         SBC #$28                  ;
CODE_0DF792:        4A            LSR A                     ;
CODE_0DF793:        4A            LSR A                     ;
CODE_0DF794:        18            CLC                       ;
CODE_0DF795:        69 08         ADC #$08                  ;
CODE_0DF797:        99 12 08      STA $0812,y               ;
CODE_0DF79A:        B9 19 08      LDA $0819,y               ;
CODE_0DF79D:        C9 F0         CMP #$F0                  ;
CODE_0DF79F:        90 05         BCC CODE_0DF7A6           ;
CODE_0DF7A1:        A9 F0         LDA #$F0                  ;
CODE_0DF7A3:        99 11 08      STA $0811,y               ;
CODE_0DF7A6:        A9 F0         LDA #$F0                  ;
CODE_0DF7A8:        99 19 08      STA $0819,y               ;
CODE_0DF7AB:        FA            PLX                       ;
CODE_0DF7AC:        60            RTS                       ;

CODE_0DF7AD:        20 B8 FB      JSR CODE_0DFBB8           ;
CODE_0DF7B0:        80 0A         BRA CODE_0DF7BC           ;

CODE_0DF7B2:        20 76 FC      JSR CODE_0DFC76           ;
CODE_0DF7B5:        80 05         BRA CODE_0DF7BC           ;

CODE_0DF7B7:        A0 0E         LDY #$0E                  ;
CODE_0DF7B9:        B9 1E F6      LDA DATA_0DF61E,y               ;
CODE_0DF7BC:        8D D5 06      STA $06D5                 ;
CODE_0DF7BF:        AD CE 03      LDA $03CE                 ;
CODE_0DF7C2:        D0 13         BNE CODE_0DF7D7           ;
CODE_0DF7C4:        AD 18 02      LDA $0218                 ;
CODE_0DF7C7:        F0 11         BEQ CODE_0DF7DA           ;
CODE_0DF7C9:        AD 54 07      LDA $0754                 ;
CODE_0DF7CC:        D0 07         BNE CODE_0DF7D5           ;
CODE_0DF7CE:        A9 D8         LDA #$D8                  ;
CODE_0DF7D0:        8D D5 06      STA $06D5                 ;
CODE_0DF7D3:        80 05         BRA CODE_0DF7DA           ;

CODE_0DF7D5:        A9 E0         LDA #$E0                  ;
CODE_0DF7D7:        8D D5 06      STA $06D5                 ;
CODE_0DF7DA:        A9 04         LDA #$04                  ;
CODE_0DF7DC:        20 6E FB      JSR CODE_0DFB6E           ;
CODE_0DF7DF:        20 AF FC      JSR CODE_0DFCAF           ;
CODE_0DF7E2:        A5 02         LDA $02                   ;
CODE_0DF7E4:        C9 03         CMP #$03                  ;
CODE_0DF7E6:        D0 1A         BNE CODE_0DF802           ;
CODE_0DF7E8:        AD 19 02      LDA $0219                 ;
CODE_0DF7EB:        38            SEC                       ;
CODE_0DF7EC:        E5 42         SBC $42                   ;
CODE_0DF7EE:        A5 78         LDA $78                   ;
CODE_0DF7F0:        E5 43         SBC $43                   ;
CODE_0DF7F2:        F0 0E         BEQ CODE_0DF802           ;
CODE_0DF7F4:        A9 01         LDA #$01                  ;
CODE_0DF7F6:        8D D0 0C      STA $0CD0                 ;
CODE_0DF7F9:        8D D8 0C      STA $0CD8                 ;
CODE_0DF7FC:        8D E0 0C      STA $0CE0                 ;
CODE_0DF7FF:        8D E8 0C      STA $0CE8                 ;
CODE_0DF802:        AD 11 07      LDA $0711                 ;
CODE_0DF805:        F0 2B         BEQ CODE_0DF832           ;
CODE_0DF807:        A0 00         LDY #$00                  ;
CODE_0DF809:        AD 89 07      LDA $0789                 ;
CODE_0DF80C:        CD 11 07      CMP $0711                 ;
CODE_0DF80F:        8C 11 07      STY $0711                 ;
CODE_0DF812:        B0 1E         BCS CODE_0DF832           ;
CODE_0DF814:        8D 11 07      STA $0711                 ;
CODE_0DF817:        A5 28         LDA $28                   ;
CODE_0DF819:        C9 01         CMP #$01                  ;
CODE_0DF81B:        F0 08         BEQ CODE_0DF825           ;
CODE_0DF81D:        A0 07         LDY #$07                  ;
CODE_0DF81F:        B9 1E F6      LDA DATA_0DF61E,y               ;
CODE_0DF822:        8D D5 06      STA $06D5                 ;
CODE_0DF825:        A0 04         LDY #$04                  ;
CODE_0DF827:        A5 5D         LDA $5D                   ;
CODE_0DF829:        05 0C         ORA $0C                   ;
CODE_0DF82B:        F0 01         BEQ CODE_0DF82E           ;
CODE_0DF82D:        88            DEY                       ;
CODE_0DF82E:        98            TYA                       ;
CODE_0DF82F:        20 6E FB      JSR CODE_0DFB6E           ;
CODE_0DF832:        AD D0 03      LDA $03D0                 ;
CODE_0DF835:        4A            LSR A                     ;
CODE_0DF836:        4A            LSR A                     ;
CODE_0DF837:        4A            LSR A                     ;
CODE_0DF838:        4A            LSR A                     ;
CODE_0DF839:        85 00         STA $00                   ;
CODE_0DF83B:        A2 03         LDX #$03                  ;
CODE_0DF83D:        AD 45 0B      LDA $0B45                 ;
CODE_0DF840:        18            CLC                       ;
CODE_0DF841:        69 18         ADC #$18                  ;
CODE_0DF843:        A8            TAY                       ;
CODE_0DF844:        A9 F0         LDA #$F0                  ;
CODE_0DF846:        46 00         LSR $00                   ;
CODE_0DF848:        90 03         BCC CODE_0DF84D           ;
CODE_0DF84A:        20 8A EB      JSR CODE_0DEB8A           ;
CODE_0DF84D:        98            TYA                       ;
CODE_0DF84E:        38            SEC                       ;
CODE_0DF84F:        E9 08         SBC #$08                  ;
CODE_0DF851:        A8            TAY                       ;
CODE_0DF852:        CA            DEX                       ;
CODE_0DF853:        10 EF         BPL CODE_0DF844           ;
CODE_0DF855:        20 CC FC      JSR CODE_0DFCCC           ;
CODE_0DF858:        60            RTS                       ;

DATA_0DF859:        db $40,$01,$2E,$60,$FF,$04

CODE_0DF85F:        20 1C 84      JSR CODE_0D841C           ;
CODE_0DF862:        A9 D0         LDA #$D0                  ;
CODE_0DF864:        8D D5 06      STA $06D5                 ;
CODE_0DF867:        22 00 C0 00   JSL CODE_00C000           ;
CODE_0DF86B:        A2 05         LDX #$05                  ;
CODE_0DF86D:        BD 59 F8      LDA DATA_0DF859,x               ;
CODE_0DF870:        95 02         STA $02,x                 ;
CODE_0DF872:        CA            DEX                       ;
CODE_0DF873:        10 F8         BPL CODE_0DF86D           ;
CODE_0DF875:        A2 B8         LDX #$B8                  ;
CODE_0DF877:        A0 D0         LDY #$D0                  ;
CODE_0DF879:        20 94 FB      JSR CODE_0DFB94           ;
CODE_0DF87C:        20 83 F8      JSR CODE_0DF883           ;
CODE_0DF87F:        20 D1 9E      JSR CODE_0D9ED1           ;
CODE_0DF882:        60            RTS                       ;

CODE_0DF883:        DA            PHX                       ;
CODE_0DF884:        5A            PHY                       ;
CODE_0DF885:        A9 F0         LDA #$F0                  ;
CODE_0DF887:        99 01 08      STA $0801,y               ;
CODE_0DF88A:        99 01 09      STA $0901,y               ;
CODE_0DF88D:        C8            INY                       ;
CODE_0DF88E:        D0 F7         BNE CODE_0DF887           ;
CODE_0DF890:        20 99 F9      JSR CODE_0DF999           ;
CODE_0DF893:        A2 00         LDX #$00                  ;
CODE_0DF895:        A9 30         LDA #$30                  ;
CODE_0DF897:        85 E2         STA $E2                   ;
CODE_0DF899:        20 20 F9      JSR CODE_0DF920           ;
CODE_0DF89C:        C9 02         CMP #$02                  ;
CODE_0DF89E:        D0 39         BNE CODE_0DF8D9           ;
CODE_0DF8A0:        B5 1C         LDA $1C,x                 ;
CODE_0DF8A2:        C9 16         CMP #$16                  ;
CODE_0DF8A4:        F0 25         BEQ CODE_0DF8CB           ;
CODE_0DF8A6:        5A            PHY                       ;
CODE_0DF8A7:        DA            PHX                       ;
CODE_0DF8A8:        20 6F EE      JSR CODE_0DEE6F           ;
CODE_0DF8AB:        FA            PLX                       ;
CODE_0DF8AC:        BD 46 0B      LDA $0B46,x               ;
CODE_0DF8AF:        A8            TAY                       ;
CODE_0DF8B0:        A9 00         LDA #$00                  ;
CODE_0DF8B2:        99 00 0D      STA $0D00,y               ;
CODE_0DF8B5:        99 04 0D      STA $0D04,y               ;
CODE_0DF8B8:        99 08 0D      STA $0D08,y               ;
CODE_0DF8BB:        99 0C 0D      STA $0D0C,y               ;
CODE_0DF8BE:        99 10 0D      STA $0D10,y               ;
CODE_0DF8C1:        99 14 0D      STA $0D14,y               ;
CODE_0DF8C4:        A5 43         LDA $43                   ;
CODE_0DF8C6:        95 79         STA $79,x                 ;
CODE_0DF8C8:        7A            PLY                       ;
CODE_0DF8C9:        80 05         BRA CODE_0DF8D0           ;

CODE_0DF8CB:        20 84 FA      JSR CODE_0DFA84           ;
CODE_0DF8CE:        80 43         BRA CODE_0DF913           ;

CODE_0DF8D0:        B5 1C         LDA $1C,x                 ;
CODE_0DF8D2:        C9 12         CMP #$12                  ;
CODE_0DF8D4:        D0 03         BNE CODE_0DF8D9           ;
CODE_0DF8D6:        20 2D FA      JSR CODE_0DFA2D           ;
CODE_0DF8D9:        C8            INY                       ;
CODE_0DF8DA:        E8            INX                       ;
CODE_0DF8DB:        E0 05         CPX #$05                  ;
CODE_0DF8DD:        D0 BA         BNE CODE_0DF899           ;
CODE_0DF8DF:        A5 5C         LDA $5C                   ;
CODE_0DF8E1:        C9 03         CMP #$03                  ;
CODE_0DF8E3:        F0 2E         BEQ CODE_0DF913           ;
CODE_0DF8E5:        A2 00         LDX #$00                  ;
CODE_0DF8E7:        BD 02 09      LDA $0902,x               ;
CODE_0DF8EA:        DD 06 09      CMP $0906,x               ;
CODE_0DF8ED:        D0 12         BNE CODE_0DF901           ;
CODE_0DF8EF:        BD 03 09      LDA $0903,x               ;
CODE_0DF8F2:        29 3F         AND #$3F                  ;
CODE_0DF8F4:        9D 03 09      STA $0903,x               ;
CODE_0DF8F7:        BD 07 09      LDA $0907,x               ;
CODE_0DF8FA:        09 40         ORA #$40                  ;
CODE_0DF8FC:        9D 07 09      STA $0907,x               ;
CODE_0DF8FF:        80 06         BRA CODE_0DF907           ;

CODE_0DF901:        BD 07 09      LDA $0907,x               ;
CODE_0DF904:        9D 03 09      STA $0903,x               ;
CODE_0DF907:        E8            INX                       ;
CODE_0DF908:        E8            INX                       ;
CODE_0DF909:        E8            INX                       ;
CODE_0DF90A:        E8            INX                       ;
CODE_0DF90B:        E8            INX                       ;
CODE_0DF90C:        E8            INX                       ;
CODE_0DF90D:        E8            INX                       ;
CODE_0DF90E:        E8            INX                       ;
CODE_0DF90F:        E0 00         CPX #$00                  ;
CODE_0DF911:        D0 D4         BNE CODE_0DF8E7           ;
CODE_0DF913:        A2 04         LDX #$04                  ;
CODE_0DF915:        74 1C         STZ $1C,x                 ;
CODE_0DF917:        CA            DEX                       ;
CODE_0DF918:        10 FB         BPL CODE_0DF915           ;
CODE_0DF91A:        9C 85 0E      STZ $0E85                 ;
CODE_0DF91D:        7A            PLY                       ;
CODE_0DF91E:        FA            PLX                       ;
CODE_0DF91F:        60            RTS                       ;

CODE_0DF920:        9C 85 0E      STZ $0E85                 ;
CODE_0DF923:        DA            PHX                       ;
CODE_0DF924:        BB            TYX                       ;
CODE_0DF925:        AD 5F 07      LDA $075F                 ;
CODE_0DF928:        C9 08         CMP #$08                  ;
CODE_0DF92A:        90 06         BCC CODE_0DF932           ;
CODE_0DF92C:        BF AF F8 0F   LDA.l DATA_0FF8AF,x             ;
CODE_0DF930:        80 04         BRA CODE_0DF936           ;

CODE_0DF932:        BF 0A F8 0F   LDA.l DATA_0FF80A,x             ;
CODE_0DF936:        FA            PLX                       ;
CODE_0DF937:        C9 FF         CMP #$FF                  ;
CODE_0DF939:        D0 0A         BNE CODE_0DF945           ;
CODE_0DF93B:        A5 E2         LDA $E2                   ;
CODE_0DF93D:        18            CLC                       ;
CODE_0DF93E:        69 18         ADC #$18                  ;
CODE_0DF940:        85 E2         STA $E2                   ;
CODE_0DF942:        4C 98 F9      JMP CODE_0DF998           ;

CODE_0DF945:        9E BC 00      STZ $00BC,x               ;
CODE_0DF948:        95 1C         STA $1C,x                 ;
CODE_0DF94A:        C9 0E         CMP #$0E                  ;
CODE_0DF94C:        F0 14         BEQ CODE_0DF962           ;
CODE_0DF94E:        C9 0F         CMP #$0F                  ;
CODE_0DF950:        F0 10         BEQ CODE_0DF962           ;
CODE_0DF952:        C9 10         CMP #$10                  ;
CODE_0DF954:        F0 0C         BEQ CODE_0DF962           ;
CODE_0DF956:        C9 14         CMP #$14                  ;
CODE_0DF958:        F0 08         BEQ CODE_0DF962           ;
CODE_0DF95A:        C9 08         CMP #$08                  ;
CODE_0DF95C:        F0 04         BEQ CODE_0DF962           ;
CODE_0DF95E:        A9 98         LDA #$98                  ;
CODE_0DF960:        80 02         BRA CODE_0DF964           ;

CODE_0DF962:        A9 88         LDA #$88                  ;
CODE_0DF964:        9D 38 02      STA $0238,x               ;
CODE_0DF967:        A5 E2         LDA $E2                   ;
CODE_0DF969:        18            CLC                       ;
CODE_0DF96A:        69 18         ADC #$18                  ;
CODE_0DF96C:        85 E2         STA $E2                   ;
CODE_0DF96E:        8D AE 03      STA $03AE                 ;
CODE_0DF971:        A9 20         LDA #$20                  ;
CODE_0DF973:        9D 57 02      STA $0257,x               ;
CODE_0DF976:        DA            PHX                       ;
CODE_0DF977:        BB            TYX                       ;
CODE_0DF978:        AD 5F 07      LDA $075F                 ;
CODE_0DF97B:        C9 08         CMP #$08                  ;
CODE_0DF97D:        90 06         BCC CODE_0DF985           ;
CODE_0DF97F:        BF AF F8 0F   LDA.l DATA_0FF8AF,x             ;
CODE_0DF983:        80 04         BRA CODE_0DF989           ;

CODE_0DF985:        BF 0A F8 0F   LDA.l DATA_0FF80A,x             ;
CODE_0DF989:        FA            PLX                       ;
CODE_0DF98A:        C9 05         CMP #$05                  ;
CODE_0DF98C:        D0 06         BNE CODE_0DF994           ;
CODE_0DF98E:        8D 85 0E      STA $0E85                 ;
CODE_0DF991:        20 4C FB      JSR CODE_0DFB4C           ;
CODE_0DF994:        A9 02         LDA #$02                  ;
CODE_0DF996:        95 47         STA $47,x                 ;
CODE_0DF998:        60            RTS                       ;

CODE_0DF999:        AD 5F 07      LDA $075F                 ;
CODE_0DF99C:        0A            ASL A                     ;
CODE_0DF99D:        0A            ASL A                     ;
CODE_0DF99E:        18            CLC                       ;
CODE_0DF99F:        6D 5F 07      ADC $075F                 ;
CODE_0DF9A2:        18            CLC                       ;
CODE_0DF9A3:        6D 60 07      ADC $0760                 ;
CODE_0DF9A6:        AA            TAX                       ;
CODE_0DF9A7:        BF B3 8E 0E   LDA.l DATA_0E8EB3,x             ;
CODE_0DF9AB:        8D 22 0E      STA $0E22                 ;
CODE_0DF9AE:        BF F4 8E 0E   LDA.l DATA_0E8EF4,x             ;
CODE_0DF9B2:        8D 21 0E      STA $0E21                 ;
CODE_0DF9B5:        48            PHA                       ;
CODE_0DF9B6:        C9 21         CMP #$21                  ;
CODE_0DF9B8:        90 06         BCC CODE_0DF9C0           ;
CODE_0DF9BA:        38            SEC                       ;
CODE_0DF9BB:        E9 21         SBC #$21                  ;
CODE_0DF9BD:        8D 21 0E      STA $0E21                 ;
CODE_0DF9C0:        0A            ASL A                     ;
CODE_0DF9C1:        0A            ASL A                     ;
CODE_0DF9C2:        18            CLC                       ;
CODE_0DF9C3:        6D 21 0E      ADC $0E21                 ;
CODE_0DF9C6:        A8            TAY                       ;
CODE_0DF9C7:        68            PLA                       ;
CODE_0DF9C8:        8D 21 0E      STA $0E21                 ;
CODE_0DF9CB:        AD 1C 07      LDA $071C                 ;
CODE_0DF9CE:        85 9C         STA $9C                   ;
CODE_0DF9D0:        AD 1A 07      LDA $071A                 ;
CODE_0DF9D3:        85 9D         STA $9D                   ;
CODE_0DF9D5:        E6 9B         INC $9B                   ;
CODE_0DF9D7:        9C 1A 07      STZ $071A                 ;
CODE_0DF9DA:        9C 3F 07      STZ $073F                 ;
CODE_0DF9DD:        9C FD 0E      STZ $0EFD                 ;
CODE_0DF9E0:        9C FE 0E      STZ $0EFE                 ;
CODE_0DF9E3:        9C EE 0E      STZ $0EEE                 ;
CODE_0DF9E6:        9C EF 0E      STZ $0EEF                 ;
CODE_0DF9E9:        9C 0D 21      STZ $210D                 ;
CODE_0DF9EC:        9C 0D 21      STZ $210D                 ;
CODE_0DF9EF:        9C 0F 21      STZ $210F                 ;
CODE_0DF9F2:        9C 0F 21      STZ $210F                 ;
CODE_0DF9F5:        9C 11 21      STZ $2111                 ;
CODE_0DF9F8:        9C 11 21      STZ $2111                 ;
CODE_0DF9FB:        60            RTS                       ;

DATA_0DF9FC:        db $DC,$DC,$DD,$DD,$DE,$DE

CODE_0DFA02:        AD FC F9      LDA DATA_0DF9FC                 ;
CODE_0DFA05:        8D 62 09      STA $0962                 ;
CODE_0DFA08:        AD FD F9      LDA DATA_0DF9FC+1                 ;
CODE_0DFA0B:        8D 66 09      STA $0966                 ;
CODE_0DFA0E:        AD FE F9      LDA DATA_0DF9FC+2                 ;
CODE_0DFA11:        8D 6A 09      STA $096A                 ;
CODE_0DFA14:        AD FF F9      LDA DATA_0DF9FC+3                 ;
CODE_0DFA17:        8D 6E 09      STA $096E                 ;
CODE_0DFA1A:        AD 00 FA      LDA DATA_0DF9FC+4                 ;
CODE_0DFA1D:        8D 72 09      STA $0972                 ;
CODE_0DFA20:        AD 01 FA      LDA DATA_0DF9FC+5                 ;
CODE_0DFA23:        8D 76 09      STA $0976                 ;
CODE_0DFA26:        60            RTS                       ;

DATA_0DFA27:        db $B9,$B8,$BB,$BA,$BC,$BC

CODE_0DFA2D:        5A            PHY                       ;
CODE_0DFA2E:        A9 03         LDA #$03                  ;
CODE_0DFA30:        85 03         STA $03                   ;
CODE_0DFA32:        BD 38 02      LDA $0238,x               ;
CODE_0DFA35:        38            SEC                       ;
CODE_0DFA36:        E9 28         SBC #$28                  ;
CODE_0DFA38:        9D 38 02      STA $0238,x               ;
CODE_0DFA3B:        64 E3         STZ $E3                   ;
CODE_0DFA3D:        A0 00         LDY #$00                  ;
CODE_0DFA3F:        AD AE 03      LDA $03AE                 ;
CODE_0DFA42:        99 90 09      STA $0990,y               ;
CODE_0DFA45:        18            CLC                       ;
CODE_0DFA46:        69 08         ADC #$08                  ;
CODE_0DFA48:        99 94 09      STA $0994,y               ;
CODE_0DFA4B:        BD 38 02      LDA $0238,x               ;
CODE_0DFA4E:        99 91 09      STA $0991,y               ;
CODE_0DFA51:        99 95 09      STA $0995,y               ;
CODE_0DFA54:        18            CLC                       ;
CODE_0DFA55:        69 08         ADC #$08                  ;
CODE_0DFA57:        9D 38 02      STA $0238,x               ;
CODE_0DFA5A:        A9 2A         LDA #$2A                  ;
CODE_0DFA5C:        99 93 09      STA $0993,y               ;
CODE_0DFA5F:        99 97 09      STA $0997,y               ;
CODE_0DFA62:        DA            PHX                       ;
CODE_0DFA63:        A6 E3         LDX $E3                   ;
CODE_0DFA65:        BD 27 FA      LDA DATA_0DFA27,x               ;
CODE_0DFA68:        99 92 09      STA $0992,y               ;
CODE_0DFA6B:        BD 28 FA      LDA DATA_0DFA27+1,x               ;
CODE_0DFA6E:        99 96 09      STA $0996,y               ;
CODE_0DFA71:        E6 E3         INC $E3                   ;
CODE_0DFA73:        E6 E3         INC $E3                   ;
CODE_0DFA75:        FA            PLX                       ;
CODE_0DFA76:        C8            INY                       ;
CODE_0DFA77:        C8            INY                       ;
CODE_0DFA78:        C8            INY                       ;
CODE_0DFA79:        C8            INY                       ;
CODE_0DFA7A:        C8            INY                       ;
CODE_0DFA7B:        C8            INY                       ;
CODE_0DFA7C:        C8            INY                       ;
CODE_0DFA7D:        C8            INY                       ;
CODE_0DFA7E:        C6 03         DEC $03                   ;
CODE_0DFA80:        D0 BD         BNE CODE_0DFA3F           ;
CODE_0DFA82:        7A            PLY                       ;
CODE_0DFA83:        60            RTS                       ;

CODE_0DFA84:        5A            PHY                       ;
CODE_0DFA85:        DA            PHX                       ;
CODE_0DFA86:        BD 38 02      LDA $0238,x               ;
CODE_0DFA89:        8D B9 03      STA $03B9                 ;
CODE_0DFA8C:        38            SEC                       ;
CODE_0DFA8D:        E9 08         SBC #$08                  ;
CODE_0DFA8F:        8D B9 03      STA $03B9                 ;
CODE_0DFA92:        AD AE 03      LDA $03AE                 ;
CODE_0DFA95:        38            SEC                       ;
CODE_0DFA96:        E9 10         SBC #$10                  ;
CODE_0DFA98:        8D AE 03      STA $03AE                 ;
CODE_0DFA9B:        A0 90         LDY #$90                  ;
CODE_0DFA9D:        A2 00         LDX #$00                  ;
CODE_0DFA9F:        AD AE 03      LDA $03AE                 ;
CODE_0DFAA2:        99 00 09      STA $0900,y               ;
CODE_0DFAA5:        99 08 09      STA $0908,y               ;
CODE_0DFAA8:        18            CLC                       ;
CODE_0DFAA9:        69 08         ADC #$08                  ;
CODE_0DFAAB:        99 10 09      STA $0910,y               ;
CODE_0DFAAE:        18            CLC                       ;
CODE_0DFAAF:        69 08         ADC #$08                  ;
CODE_0DFAB1:        99 04 09      STA $0904,y               ;
CODE_0DFAB4:        99 0C 09      STA $090C,y               ;
CODE_0DFAB7:        99 14 09      STA $0914,y               ;
CODE_0DFABA:        AD B9 03      LDA $03B9                 ;
CODE_0DFABD:        99 01 09      STA $0901,y               ;
CODE_0DFAC0:        99 05 09      STA $0905,y               ;
CODE_0DFAC3:        18            CLC                       ;
CODE_0DFAC4:        69 10         ADC #$10                  ;
CODE_0DFAC6:        99 09 09      STA $0909,y               ;
CODE_0DFAC9:        99 0D 09      STA $090D,y               ;
CODE_0DFACC:        38            SEC                       ;
CODE_0DFACD:        E9 18         SBC #$18                  ;
CODE_0DFACF:        99 11 09      STA $0911,y               ;
CODE_0DFAD2:        99 15 09      STA $0915,y               ;
CODE_0DFAD5:        A9 00         LDA #$00                  ;
CODE_0DFAD7:        99 10 0C      STA $0C10,y               ;
CODE_0DFADA:        99 14 0C      STA $0C14,y               ;
CODE_0DFADD:        A9 02         LDA #$02                  ;
CODE_0DFADF:        99 00 0D      STA $0D00,y               ;
CODE_0DFAE2:        99 04 0D      STA $0D04,y               ;
CODE_0DFAE5:        99 08 0D      STA $0D08,y               ;
CODE_0DFAE8:        99 0C 0D      STA $0D0C,y               ;
CODE_0DFAEB:        A9 61         LDA #$61                  ;
CODE_0DFAED:        99 03 09      STA $0903,y               ;
CODE_0DFAF0:        99 07 09      STA $0907,y               ;
CODE_0DFAF3:        99 0B 09      STA $090B,y               ;
CODE_0DFAF6:        99 0F 09      STA $090F,y               ;
CODE_0DFAF9:        99 13 09      STA $0913,y               ;
CODE_0DFAFC:        99 17 09      STA $0917,y               ;
CODE_0DFAFF:        A9 C5         LDA #$C5                  ;
CODE_0DFB01:        99 12 09      STA $0912,y               ;
CODE_0DFB04:        A9 C4         LDA #$C4                  ;
CODE_0DFB06:        99 16 09      STA $0916,y               ;
CODE_0DFB09:        A9 EE         LDA #$EE                  ;
CODE_0DFB0B:        99 02 09      STA $0902,y               ;
CODE_0DFB0E:        A9 C0         LDA #$C0                  ;
CODE_0DFB10:        99 06 09      STA $0906,y               ;
CODE_0DFB13:        A9 E2         LDA #$E2                  ;
CODE_0DFB15:        99 0A 09      STA $090A,y               ;
CODE_0DFB18:        A9 E0         LDA #$E0                  ;
CODE_0DFB1A:        99 0E 09      STA $090E,y               ;
CODE_0DFB1D:        A9 70         LDA #$70                  ;
CODE_0DFB1F:        8D F0 09      STA $09F0                 ;
CODE_0DFB22:        A9 78         LDA #$78                  ;
CODE_0DFB24:        8D F4 09      STA $09F4                 ;
CODE_0DFB27:        A9 98         LDA #$98                  ;
CODE_0DFB29:        8D F1 09      STA $09F1                 ;
CODE_0DFB2C:        8D F5 09      STA $09F5                 ;
CODE_0DFB2F:        A9 86         LDA #$86                  ;
CODE_0DFB31:        8D F2 09      STA $09F2                 ;
CODE_0DFB34:        A9 87         LDA #$87                  ;
CODE_0DFB36:        8D F6 09      STA $09F6                 ;
CODE_0DFB39:        A9 21         LDA #$21                  ;
CODE_0DFB3B:        8D F3 09      STA $09F3                 ;
CODE_0DFB3E:        8D F7 09      STA $09F7                 ;
CODE_0DFB41:        A9 02         LDA #$02                  ;
CODE_0DFB43:        8D F0 0D      STA $0DF0                 ;
CODE_0DFB46:        8D F4 0D      STA $0DF4                 ;
CODE_0DFB49:        FA            PLX                       ;
CODE_0DFB4A:        7A            PLY                       ;
CODE_0DFB4B:        60            RTS                       ;

CODE_0DFB4C:        BD 38 02      LDA $0238,x               ;
CODE_0DFB4F:        38            SEC                       ;
CODE_0DFB50:        E9 0A         SBC #$0A                  ;
CODE_0DFB52:        8D 81 08      STA $0881                 ;
CODE_0DFB55:        AD AE 03      LDA $03AE                 ;
CODE_0DFB58:        18            CLC                       ;
CODE_0DFB59:        69 03         ADC #$03                  ;
CODE_0DFB5B:        8D 80 08      STA $0880                 ;
CODE_0DFB5E:        A9 2A         LDA #$2A                  ;
CODE_0DFB60:        8D 83 08      STA $0883                 ;
CODE_0DFB63:        A9 44         LDA #$44                  ;
CODE_0DFB65:        8D 82 08      STA $0882                 ;
CODE_0DFB68:        A9 02         LDA #$02                  ;
CODE_0DFB6A:        8D 80 0C      STA $0C80                 ;
CODE_0DFB6D:        60            RTS                       ;

CODE_0DFB6E:        85 07         STA $07                   ;
CODE_0DFB70:        AD AD 03      LDA $03AD                 ;
CODE_0DFB73:        8D 55 07      STA $0755                 ;
CODE_0DFB76:        85 05         STA $05                   ;
CODE_0DFB78:        AD B8 03      LDA $03B8                 ;
CODE_0DFB7B:        85 02         STA $02                   ;
CODE_0DFB7D:        AD 02 02      LDA $0202                 ;
CODE_0DFB80:        85 03         STA $03                   ;
CODE_0DFB82:        22 00 C0 00   JSL CODE_00C000           ;
CODE_0DFB86:        AD D5 06      LDA $06D5                 ;
CODE_0DFB89:        29 07         AND #$07                  ;
CODE_0DFB8B:        AA            TAX                       ;
CODE_0DFB8C:        AD 56 02      LDA $0256                 ;
CODE_0DFB8F:        85 04         STA $04                   ;
CODE_0DFB91:        AC 45 0B      LDY $0B45                 ;
CODE_0DFB94:        BD 2E F6      LDA DATA_0DF62E,x               ;
CODE_0DFB97:        85 00         STA $00                   ;
CODE_0DFB99:        BD 2F F6      LDA DATA_0DF62E+1,x               ;
CODE_0DFB9C:        20 FE F2      JSR CODE_0DF2FE           ;
CODE_0DFB9F:        C6 07         DEC $07                   ;
CODE_0DFBA1:        D0 F1         BNE CODE_0DFB94           ;
CODE_0DFBA3:        A5 05         LDA $05                   ;
CODE_0DFBA5:        C9 F8         CMP #$F8                  ;
CODE_0DFBA7:        90 0E         BCC CODE_0DFBB7           ;
CODE_0DFBA9:        A9 01         LDA #$01                  ;
CODE_0DFBAB:        8D D0 0C      STA $0CD0                 ;
CODE_0DFBAE:        8D D8 0C      STA $0CD8                 ;
CODE_0DFBB1:        8D E0 0C      STA $0CE0                 ;
CODE_0DFBB4:        8D E8 0C      STA $0CE8                 ;
CODE_0DFBB7:        60            RTS                       ;

CODE_0DFBB8:        A5 28         LDA $28                   ;
CODE_0DFBBA:        C9 03         CMP #$03                  ;
CODE_0DFBBC:        F0 4E         BEQ CODE_0DFC0C           ;
CODE_0DFBBE:        C9 02         CMP #$02                  ;
CODE_0DFBC0:        F0 3C         BEQ CODE_0DFBFE           ;
CODE_0DFBC2:        C9 01         CMP #$01                  ;
CODE_0DFBC4:        D0 10         BNE CODE_0DFBD6           ;
CODE_0DFBC6:        AD 04 07      LDA $0704                 ;
CODE_0DFBC9:        D0 4C         BNE CODE_0DFC17           ;
CODE_0DFBCB:        A0 06         LDY #$06                  ;
CODE_0DFBCD:        AD 14 07      LDA $0714                 ;
CODE_0DFBD0:        D0 22         BNE CODE_0DFBF4           ;
CODE_0DFBD2:        A0 00         LDY #$00                  ;
CODE_0DFBD4:        80 1E         BRA CODE_0DFBF4           ;

CODE_0DFBD6:        A0 06         LDY #$06                  ;
CODE_0DFBD8:        AD 14 07      LDA $0714                 ;
CODE_0DFBDB:        D0 17         BNE CODE_0DFBF4           ;
CODE_0DFBDD:        A0 02         LDY #$02                  ;
CODE_0DFBDF:        A5 5D         LDA $5D                   ;
CODE_0DFBE1:        05 0C         ORA $0C                   ;
CODE_0DFBE3:        F0 0F         BEQ CODE_0DFBF4           ;
CODE_0DFBE5:        AD 00 07      LDA $0700                 ;
CODE_0DFBE8:        C9 09         CMP #$09                  ;
CODE_0DFBEA:        90 19         BCC CODE_0DFC05           ;
CODE_0DFBEC:        A5 46         LDA $46                   ;
CODE_0DFBEE:        2D 02 02      AND $0202                 ;
CODE_0DFBF1:        D0 12         BNE CODE_0DFC05           ;
CODE_0DFBF3:        C8            INY                       ;
CODE_0DFBF4:        20 57 FC      JSR CODE_0DFC57           ;
CODE_0DFBF7:        9C 0D 07      STZ $070D                 ;
CODE_0DFBFA:        B9 1E F6      LDA DATA_0DF61E,y               ;
CODE_0DFBFD:        60            RTS                       ;

CODE_0DFBFE:        A0 04         LDY #$04                  ;
CODE_0DFC00:        20 57 FC      JSR CODE_0DFC57           ;
CODE_0DFC03:        80 24         BRA CODE_0DFC29           ;

CODE_0DFC05:        A0 04         LDY #$04                  ;
CODE_0DFC07:        20 57 FC      JSR CODE_0DFC57           ;
CODE_0DFC0A:        80 23         BRA CODE_0DFC2F           ;

CODE_0DFC0C:        A0 05         LDY #$05                  ;
CODE_0DFC0E:        A5 A0         LDA $A0                   ;
CODE_0DFC10:        F0 E2         BEQ CODE_0DFBF4           ;
CODE_0DFC12:        20 57 FC      JSR CODE_0DFC57           ;
CODE_0DFC15:        80 1C         BRA CODE_0DFC33           ;

CODE_0DFC17:        A0 01         LDY #$01                  ;
CODE_0DFC19:        20 57 FC      JSR CODE_0DFC57           ;
CODE_0DFC1C:        AD 8A 07      LDA $078A                 ;
CODE_0DFC1F:        0D 0D 07      ORA $070D                 ;
CODE_0DFC22:        D0 0B         BNE CODE_0DFC2F           ;
CODE_0DFC24:        A5 0A         LDA $0A                   ;
CODE_0DFC26:        0A            ASL A                     ;
CODE_0DFC27:        B0 06         BCS CODE_0DFC2F           ;
CODE_0DFC29:        AD 0D 07      LDA $070D                 ;
CODE_0DFC2C:        4C 96 FC      JMP CODE_0DFC96           ;

CODE_0DFC2F:        A9 03         LDA #$03                  ;
CODE_0DFC31:        80 02         BRA CODE_0DFC35           ;

CODE_0DFC33:        A9 02         LDA #$02                  ;
CODE_0DFC35:        85 00         STA $00                   ;
CODE_0DFC37:        20 29 FC      JSR CODE_0DFC29           ;
CODE_0DFC3A:        48            PHA                       ;
CODE_0DFC3B:        AD 89 07      LDA $0789                 ;
CODE_0DFC3E:        D0 15         BNE CODE_0DFC55           ;
CODE_0DFC40:        AD 0C 07      LDA $070C                 ;
CODE_0DFC43:        8D 89 07      STA $0789                 ;
CODE_0DFC46:        AD 0D 07      LDA $070D                 ;
CODE_0DFC49:        18            CLC                       ;
CODE_0DFC4A:        69 01         ADC #$01                  ;
CODE_0DFC4C:        C5 00         CMP $00                   ;
CODE_0DFC4E:        90 02         BCC CODE_0DFC52           ;
CODE_0DFC50:        A9 00         LDA #$00                  ;
CODE_0DFC52:        8D 0D 07      STA $070D                 ;
CODE_0DFC55:        68            PLA                       ;
CODE_0DFC56:        60            RTS                       ;

CODE_0DFC57:        AD 54 07      LDA $0754                 ;
CODE_0DFC5A:        F0 05         BEQ CODE_0DFC61           ;
CODE_0DFC5C:        98            TYA                       ;
CODE_0DFC5D:        18            CLC                       ;
CODE_0DFC5E:        69 08         ADC #$08                  ;
CODE_0DFC60:        A8            TAY                       ;
CODE_0DFC61:        60            RTS                       ;

DATA_0DFC62:        db $00,$01,$00,$01,$00,$01,$02,$00
                    db $01,$02,$02,$00,$02,$00,$02,$00
                    db $02,$00,$02,$00

CODE_0DFC76:        AC 0D 07      LDY $070D                 ;
CODE_0DFC79:        A5 09         LDA $09                   ;
CODE_0DFC7B:        29 03         AND #$03                  ;
CODE_0DFC7D:        D0 0D         BNE CODE_0DFC8C           ;
CODE_0DFC7F:        C8            INY                       ;
CODE_0DFC80:        C0 0A         CPY #$0A                  ;
CODE_0DFC82:        90 05         BCC CODE_0DFC89           ;
CODE_0DFC84:        A0 00         LDY #$00                  ;
CODE_0DFC86:        8C 0B 07      STY $070B                 ;
CODE_0DFC89:        8C 0D 07      STY $070D                 ;
CODE_0DFC8C:        AD 54 07      LDA $0754                 ;
CODE_0DFC8F:        D0 0C         BNE CODE_0DFC9D           ;
CODE_0DFC91:        B9 62 FC      LDA DATA_0DFC62,y               ;
CODE_0DFC94:        A0 0F         LDY #$0F                  ;
CODE_0DFC96:        0A            ASL A                     ;
CODE_0DFC97:        0A            ASL A                     ;
CODE_0DFC98:        0A            ASL A                     ;
CODE_0DFC99:        79 1E F6      ADC DATA_0DF61E,y               ;
CODE_0DFC9C:        60            RTS                       ;

CODE_0DFC9D:        98            TYA                       ;
CODE_0DFC9E:        18            CLC                       ;
CODE_0DFC9F:        69 0A         ADC #$0A                  ;
CODE_0DFCA1:        AA            TAX                       ;
CODE_0DFCA2:        A0 09         LDY #$09                  ;
CODE_0DFCA4:        BD 62 FC      LDA DATA_0DFC62,x               ;
CODE_0DFCA7:        D0 02         BNE CODE_0DFCAB           ;
CODE_0DFCA9:        A0 01         LDY #$01                  ;
CODE_0DFCAB:        B9 1E F6      LDA DATA_0DF61E,y               ;
CODE_0DFCAE:        60            RTS                       ;

CODE_0DFCAF:        AC 45 0B      LDY $0B45                 ;
CODE_0DFCB2:        A5 0F         LDA $0F                   ;
CODE_0DFCB4:        C9 0B         CMP #$0B                  ;
CODE_0DFCB6:        F0 13         BEQ CODE_0DFCCB           ;
CODE_0DFCB8:        AD D5 06      LDA $06D5                 ;
CODE_0DFCBB:        C9 50         CMP #$50                  ;
CODE_0DFCBD:        F0 0C         BEQ CODE_0DFCCB           ;
CODE_0DFCBF:        C9 B8         CMP #$B8                  ;
CODE_0DFCC1:        F0 08         BEQ CODE_0DFCCB           ;
CODE_0DFCC3:        C9 C0         CMP #$C0                  ;
CODE_0DFCC5:        F0 04         BEQ CODE_0DFCCB           ;
CODE_0DFCC7:        C9 C8         CMP #$C8                  ;
CODE_0DFCC9:        D0 00         BNE CODE_0DFCCB           ;
CODE_0DFCCB:        60            RTS                       ;

CODE_0DFCCC:        AD 4E 0E      LDA $0E4E                 ;
CODE_0DFCCF:        F0 57         BEQ CODE_0DFD28           ;
CODE_0DFCD1:        A2 00         LDX #$00                  ;
CODE_0DFCD3:        BD D0 08      LDA $08D0,x               ;
CODE_0DFCD6:        9D E0 09      STA $09E0,x               ;
CODE_0DFCD9:        E8            INX                       ;
CODE_0DFCDA:        E0 20         CPX #$20                  ;
CODE_0DFCDC:        D0 F5         BNE CODE_0DFCD3           ;
CODE_0DFCDE:        A9 F0         LDA #$F0                  ;
CODE_0DFCE0:        8D D1 08      STA $08D1                 ;
CODE_0DFCE3:        8D D5 08      STA $08D5                 ;
CODE_0DFCE6:        8D D9 08      STA $08D9                 ;
CODE_0DFCE9:        8D DD 08      STA $08DD                 ;
CODE_0DFCEC:        8D E1 08      STA $08E1                 ;
CODE_0DFCEF:        8D E5 08      STA $08E5                 ;
CODE_0DFCF2:        8D E9 08      STA $08E9                 ;
CODE_0DFCF5:        8D ED 08      STA $08ED                 ;
CODE_0DFCF8:        AD D0 0C      LDA $0CD0                 ;
CODE_0DFCFB:        8D E0 0D      STA $0DE0                 ;
CODE_0DFCFE:        AD D4 0C      LDA $0CD4                 ;
CODE_0DFD01:        8D E4 0D      STA $0DE4                 ;
CODE_0DFD04:        AD D8 0C      LDA $0CD8                 ;
CODE_0DFD07:        8D E8 0D      STA $0DE8                 ;
CODE_0DFD0A:        AD DC 0C      LDA $0CDC                 ;
CODE_0DFD0D:        8D EC 0D      STA $0DEC                 ;
CODE_0DFD10:        AD E0 0C      LDA $0CE0                 ;
CODE_0DFD13:        8D F0 0D      STA $0DF0                 ;
CODE_0DFD16:        AD E4 0C      LDA $0CE4                 ;
CODE_0DFD19:        8D F4 0D      STA $0DF4                 ;
CODE_0DFD1C:        AD E8 0C      LDA $0CE8                 ;
CODE_0DFD1F:        8D F8 0D      STA $0DF8                 ;
CODE_0DFD22:        AD EC 0C      LDA $0CEC                 ;
CODE_0DFD25:        8D FC 0D      STA $0DFC                 ;
CODE_0DFD28:        60            RTS                       ;

CODE_0DFD29:        A2 00         LDX #$00                  ;
CODE_0DFD2B:        A0 00         LDY #$00                  ;
CODE_0DFD2D:        4C 40 FD      JMP CODE_0DFD40           ;

CODE_0DFD30:        A0 01         LDY #$01                  ;
CODE_0DFD32:        20 DA FD      JSR CODE_0DFDDA           ;
CODE_0DFD35:        A0 03         LDY #$03                  ;
CODE_0DFD37:        80 07         BRA CODE_0DFD40           ;

CODE_0DFD39:        A0 00         LDY #$00                  ;
CODE_0DFD3B:        20 DA FD      JSR CODE_0DFDDA           ;
CODE_0DFD3E:        A0 02         LDY #$02                  ;
CODE_0DFD40:        20 6E FD      JSR CODE_0DFD6E           ;
CODE_0DFD43:        A6 9E         LDX $9E                   ;
CODE_0DFD45:        60            RTS                       ;

CODE_0DFD46:        A0 02         LDY #$02                  ;
CODE_0DFD48:        20 DA FD      JSR CODE_0DFDDA           ;
CODE_0DFD4B:        A0 06         LDY #$06                  ;
CODE_0DFD4D:        80 F1         BRA CODE_0DFD40           ;

CODE_0DFD4F:        A9 01         LDA #$01                  ;
CODE_0DFD51:        A0 01         LDY #$01                  ;
CODE_0DFD53:        4C 62 FD      JMP CODE_0DFD62           ;

CODE_0DFD56:        A9 0D         LDA #$0D                  ;
CODE_0DFD58:        A0 04         LDY #$04                  ;
CODE_0DFD5A:        20 62 FD      JSR CODE_0DFD62           ;
CODE_0DFD5D:        E8            INX                       ;
CODE_0DFD5E:        E8            INX                       ;
CODE_0DFD5F:        A9 0D         LDA #$0D                  ;
CODE_0DFD61:        C8            INY                       ;
CODE_0DFD62:        86 00         STX $00                   ;
CODE_0DFD64:        18            CLC                       ;
CODE_0DFD65:        65 00         ADC $00                   ;
CODE_0DFD67:        AA            TAX                       ;
CODE_0DFD68:        20 6E FD      JSR CODE_0DFD6E           ;
CODE_0DFD6B:        A6 9E         LDX $9E                   ;
CODE_0DFD6D:        60            RTS                       ;

CODE_0DFD6E:        BD 37 02      LDA $0237,x               ;
CODE_0DFD71:        99 B8 03      STA $03B8,y               ;
CODE_0DFD74:        A5 0E         LDA $0E                   ;
CODE_0DFD76:        F0 0C         BEQ CODE_0DFD84           ;
CODE_0DFD78:        AD 19 02      LDA $0219                 ;
CODE_0DFD7B:        D0 07         BNE CODE_0DFD84           ;
CODE_0DFD7D:        A9 28         LDA #$28                  ;
CODE_0DFD7F:        8D 19 02      STA $0219                 ;
CODE_0DFD82:        80 12         BRA CODE_0DFD96           ;

CODE_0DFD84:        BD 19 02      LDA $0219,x               ;
CODE_0DFD87:        38            SEC                       ;
CODE_0DFD88:        ED 1C 07      SBC $071C                 ;
CODE_0DFD8B:        99 AD 03      STA $03AD,y               ;
CODE_0DFD8E:        B5 78         LDA $78,x                 ;
CODE_0DFD90:        ED 1A 07      SBC $071A                 ;
CODE_0DFD93:        99 C1 03      STA $03C1,y               ;
CODE_0DFD96:        5A            PHY                       ;
CODE_0DFD97:        98            TYA                       ;
CODE_0DFD98:        0A            ASL A                     ;
CODE_0DFD99:        A8            TAY                       ;
CODE_0DFD9A:        BD 19 02      LDA $0219,x               ;
CODE_0DFD9D:        85 E4         STA $E4                   ;
CODE_0DFD9F:        BD 78 00      LDA $0078,x               ;
CODE_0DFDA2:        85 E5         STA $E5                   ;
CODE_0DFDA4:        C2 20         REP #$20                  ;
CODE_0DFDA6:        A5 E4         LDA $E4                   ;
CODE_0DFDA8:        38            SEC                       ;
CODE_0DFDA9:        E5 42         SBC $42                   ;
CODE_0DFDAB:        99 87 0E      STA $0E87,y               ;
CODE_0DFDAE:        E2 20         SEP #$20                  ;
CODE_0DFDB0:        7A            PLY                       ;
CODE_0DFDB1:        60            RTS                       ;

CODE_0DFDB2:        A2 00         LDX #$00                  ;
CODE_0DFDB4:        A0 00         LDY #$00                  ;
CODE_0DFDB6:        4C F1 FD      JMP CODE_0DFDF1           ;

CODE_0DFDB9:        A0 00         LDY #$00                  ;
CODE_0DFDBB:        20 DA FD      JSR CODE_0DFDDA           ;
CODE_0DFDBE:        A0 02         LDY #$02                  ;
CODE_0DFDC0:        4C F1 FD      JMP CODE_0DFDF1           ;

CODE_0DFDC3:        A0 01         LDY #$01                  ;
CODE_0DFDC5:        20 DA FD      JSR CODE_0DFDDA           ;
CODE_0DFDC8:        A0 03         LDY #$03                  ;
CODE_0DFDCA:        4C F1 FD      JMP CODE_0DFDF1           ;

CODE_0DFDCD:        A0 02         LDY #$02                  ;
CODE_0DFDCF:        20 DA FD      JSR CODE_0DFDDA           ;
CODE_0DFDD2:        A0 06         LDY #$06                  ;
CODE_0DFDD4:        4C F1 FD      JMP CODE_0DFDF1           ;

DATA_0DFDD7:        db $0B,$1A,$11

CODE_0DFDDA:        8A            TXA                       ;
CODE_0DFDDB:        18            CLC                       ;
CODE_0DFDDC:        79 D7 FD      ADC DATA_0DFDD7,y               ;
CODE_0DFDDF:        AA            TAX                       ;
CODE_0DFDE0:        60            RTS                       ;

CODE_0DFDE1:        A9 01         LDA #$01                  ;
CODE_0DFDE3:        A0 01         LDY #$01                  ;
CODE_0DFDE5:        80 04         BRA CODE_0DFDEB           ;

CODE_0DFDE7:        A9 0D         LDA #$0D                  ;
CODE_0DFDE9:        A0 04         LDY #$04                  ;
CODE_0DFDEB:        86 00         STX $00                   ;
CODE_0DFDED:        18            CLC                       ;
CODE_0DFDEE:        65 00         ADC $00                   ;
CODE_0DFDF0:        AA            TAX                       ;
CODE_0DFDF1:        98            TYA                       ;
CODE_0DFDF2:        48            PHA                       ;
CODE_0DFDF3:        20 15 FE      JSR CODE_0DFE15           ;
CODE_0DFDF6:        0A            ASL A                     ;
CODE_0DFDF7:        0A            ASL A                     ;
CODE_0DFDF8:        0A            ASL A                     ;
CODE_0DFDF9:        0A            ASL A                     ;
CODE_0DFDFA:        05 00         ORA $00                   ;
CODE_0DFDFC:        85 00         STA $00                   ;
CODE_0DFDFE:        68            PLA                       ;
CODE_0DFDFF:        A8            TAY                       ;
CODE_0DFE00:        A5 00         LDA $00                   ;
CODE_0DFE02:        99 D0 03      STA $03D0,y               ;
CODE_0DFE05:        4A            LSR A                     ;
CODE_0DFE06:        4A            LSR A                     ;
CODE_0DFE07:        48            PHA                       ;
CODE_0DFE08:        29 01         AND #$01                  ;
CODE_0DFE0A:        99 08 0E      STA $0E08,y               ;
CODE_0DFE0D:        68            PLA                       ;
CODE_0DFE0E:        4A            LSR A                     ;
CODE_0DFE0F:        99 00 0E      STA $0E00,y               ;
CODE_0DFE12:        A6 9E         LDX $9E                   ;
CODE_0DFE14:        60            RTS                       ;

CODE_0DFE15:        20 34 FE      JSR CODE_0DFE34           ;
CODE_0DFE18:        4A            LSR A                     ;
CODE_0DFE19:        4A            LSR A                     ;
CODE_0DFE1A:        4A            LSR A                     ;
CODE_0DFE1B:        4A            LSR A                     ;
CODE_0DFE1C:        85 00         STA $00                   ;
CODE_0DFE1E:        4C 78 FE      JMP CODE_0DFE78           ;

DATA_0DFE21:        db $7F,$3F,$1F,$0F,$07,$03,$01,$00
                    db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF

DATA_0DFE31:        db $07,$0F,$07

CODE_0DFE34:        86 04         STX $04
CODE_0DFE36:        A0 01         LDY #$01                  ;
CODE_0DFE38:        B9 1C 07      LDA $071C,y               ;
CODE_0DFE3B:        38            SEC                       ;
CODE_0DFE3C:        FD 19 02      SBC $0219,x               ;
CODE_0DFE3F:        85 07         STA $07                   ;
CODE_0DFE41:        B9 1A 07      LDA $071A,y               ;
CODE_0DFE44:        F5 78         SBC $78,x                 ;
CODE_0DFE46:        BE 31 FE      LDX DATA_0DFE31,y               ;
CODE_0DFE49:        C9 00         CMP #$00                  ;
CODE_0DFE4B:        30 10         BMI CODE_0DFE5D           ;
CODE_0DFE4D:        BE 32 FE      LDX DATA_0DFE31+1,y               ;
CODE_0DFE50:        C9 01         CMP #$01                  ;
CODE_0DFE52:        10 09         BPL CODE_0DFE5D           ;
CODE_0DFE54:        A9 38         LDA #$38                  ;
CODE_0DFE56:        85 06         STA $06                   ;
CODE_0DFE58:        A9 08         LDA #$08                  ;
CODE_0DFE5A:        20 AD FE      JSR CODE_0DFEAD           ;
CODE_0DFE5D:        BD 21 FE      LDA DATA_0DFE21,x               ;
CODE_0DFE60:        A6 04         LDX $04                   ;
CODE_0DFE62:        C9 00         CMP #$00                  ;
CODE_0DFE64:        D0 03         BNE CODE_0DFE69           ;
CODE_0DFE66:        88            DEY                       ;
CODE_0DFE67:        10 CF         BPL CODE_0DFE38           ;
CODE_0DFE69:        60            RTS                       ;

DATA_0DFE6A:        db $00,$08,$0C,$0E,$0F,$07,$03,$01 ;
                    db $00 ;

DATA_0DFE73:        db $04,$00,$04 ;

DATA_0DFE76:        db $FF,$00 ;

CODE_0DFE78:        86 04         STX $04
CODE_0DFE7A:        A0 01         LDY #$01                  ;
CODE_0DFE7C:        B9 76 FE      LDA DATA_0DFE76,y               ;
CODE_0DFE7F:        38            SEC                       ;
CODE_0DFE80:        FD 37 02      SBC $0237,x               ;
CODE_0DFE83:        85 07         STA $07                   ;
CODE_0DFE85:        A9 01         LDA #$01                  ;
CODE_0DFE87:        F5 BB         SBC $BB,x                 ;
CODE_0DFE89:        BE 73 FE      LDX DATA_0DFE73,y               ;
CODE_0DFE8C:        C9 00         CMP #$00                  ;
CODE_0DFE8E:        30 10         BMI CODE_0DFEA0           ;
CODE_0DFE90:        BE 74 FE      LDX DATA_0DFE73+1,y               ;
CODE_0DFE93:        C9 01         CMP #$01                  ;
CODE_0DFE95:        10 09         BPL CODE_0DFEA0           ;
CODE_0DFE97:        A9 20         LDA #$20                  ;
CODE_0DFE99:        85 06         STA $06                   ;
CODE_0DFE9B:        A9 04         LDA #$04                  ;
CODE_0DFE9D:        20 AD FE      JSR CODE_0DFEAD           ;
CODE_0DFEA0:        BD 6A FE      LDA DATA_0DFE6A,x               ;
CODE_0DFEA3:        A6 04         LDX $04                   ;
CODE_0DFEA5:        C9 00         CMP #$00                  ;
CODE_0DFEA7:        D0 03         BNE CODE_0DFEAC           ;
CODE_0DFEA9:        88            DEY                       ;
CODE_0DFEAA:        10 D0         BPL CODE_0DFE7C           ;
CODE_0DFEAC:        60            RTS                       ;

CODE_0DFEAD:        85 05         STA $05                   ;
CODE_0DFEAF:        A5 07         LDA $07                   ;
CODE_0DFEB1:        C5 06         CMP $06                   ;
CODE_0DFEB3:        B0 0C         BCS CODE_0DFEC1           ;
CODE_0DFEB5:        4A            LSR A                     ;
CODE_0DFEB6:        4A            LSR A                     ;
CODE_0DFEB7:        4A            LSR A                     ;
CODE_0DFEB8:        29 07         AND #$07                  ;
CODE_0DFEBA:        C0 01         CPY #$01                  ;
CODE_0DFEBC:        B0 02         BCS CODE_0DFEC0           ;
CODE_0DFEBE:        65 05         ADC $05                   ;
CODE_0DFEC0:        AA            TAX                       ;
CODE_0DFEC1:        60            RTS                       ;

CODE_0DFEC2:        B5 79         LDA $79,x                 ;
CODE_0DFEC4:        8D 15 0E      STA $0E15                 ;
CODE_0DFEC7:        BD 1A 02      LDA $021A,x               ;
CODE_0DFECA:        8D 14 0E      STA $0E14                 ;
CODE_0DFECD:        60            RTS                       ;

CODE_0DFECE:        AD 17 0E      LDA $0E17                 ;
CODE_0DFED1:        8D 15 0E      STA $0E15                 ;
CODE_0DFED4:        AD 16 0E      LDA $0E16                 ;
CODE_0DFED7:        8D 14 0E      STA $0E14                 ;
CODE_0DFEDA:        60            RTS                       ;

CODE_0DFEDB:        A9 06         LDA #$06                  ;
CODE_0DFEDD:        85 04         STA $04                   ;
CODE_0DFEDF:        C2 20         REP #$20                  ;
CODE_0DFEE1:        AD 14 0E      LDA $0E14                 ;
CODE_0DFEE4:        38            SEC                       ;
CODE_0DFEE5:        E5 42         SBC $42                   ;
CODE_0DFEE7:        8D 12 0E      STA $0E12                 ;
CODE_0DFEEA:        E2 20         SEP #$20                  ;
CODE_0DFEEC:        AD 13 0E      LDA $0E13                 ;
CODE_0DFEEF:        D0 04         BNE CODE_0DFEF5           ;
CODE_0DFEF1:        A9 00         LDA #$00                  ;
CODE_0DFEF3:        80 02         BRA CODE_0DFEF7           ;

CODE_0DFEF5:        A9 01         LDA #$01                  ;
CODE_0DFEF7:        99 00 0D      STA $0D00,y               ;
CODE_0DFEFA:        60            RTS                       ;

CODE_0DFEFB:        C2 20         REP #$20                  ;
CODE_0DFEFD:        AD 14 0E      LDA $0E14                 ;
CODE_0DFF00:        38            SEC                       ;
CODE_0DFF01:        E5 42         SBC $42                   ;
CODE_0DFF03:        8D 12 0E      STA $0E12                 ;
CODE_0DFF06:        E2 20         SEP #$20                  ;
CODE_0DFF08:        AD 13 0E      LDA $0E13                 ;
CODE_0DFF0B:        D0 04         BNE CODE_0DFF11           ;
CODE_0DFF0D:        A9 00         LDA #$00                  ;
CODE_0DFF0F:        80 02         BRA CODE_0DFF13           ;

CODE_0DFF11:        A9 01         LDA #$01                  ;
CODE_0DFF13:        99 10 0D      STA $0D10,y               ;
CODE_0DFF16:        99 08 0D      STA $0D08,y               ;
CODE_0DFF19:        99 00 0D      STA $0D00,y               ;
CODE_0DFF1C:        60            RTS                       ;

CODE_0DFF1D:        C2 20         REP #$20                  ;
CODE_0DFF1F:        AD 14 0E      LDA $0E14                 ;
CODE_0DFF22:        38            SEC                       ;
CODE_0DFF23:        E5 42         SBC $42                   ;
CODE_0DFF25:        8D 12 0E      STA $0E12                 ;
CODE_0DFF28:        E2 20         SEP #$20                  ;
CODE_0DFF2A:        AD 13 0E      LDA $0E13                 ;
CODE_0DFF2D:        D0 04         BNE CODE_0DFF33           ;
CODE_0DFF2F:        A9 00         LDA #$00                  ;
CODE_0DFF31:        80 02         BRA CODE_0DFF35           ;

CODE_0DFF33:        A9 01         LDA #$01                  ;
CODE_0DFF35:        99 08 0C      STA $0C08,y               ;
CODE_0DFF38:        99 00 0C      STA $0C00,y               ;
CODE_0DFF3B:        60            RTS                       ;

CODE_0DFF3C:        99 00 0C      STA $0C00,y               ;
CODE_0DFF3F:        99 08 0C      STA $0C08,y               ;
CODE_0DFF42:        60            RTS                       ;

CODE_0DFF43:        C2 20         REP #$20                  ;
CODE_0DFF45:        68            PLA                       ;
CODE_0DFF46:        18            CLC                       ;
CODE_0DFF47:        65 04         ADC $04                   ;
CODE_0DFF49:        85 04         STA $04                   ;
CODE_0DFF4B:        48            PHA                       ;
CODE_0DFF4C:        E2 20         SEP #$20                  ;
CODE_0DFF4E:        A9 01         LDA #$01                  ;
CODE_0DFF50:        60            RTS                       ;

CODE_0DFF51:        C2 20         REP #$20                  ;
CODE_0DFF53:        AD 14 0E      LDA $0E14                 ;
CODE_0DFF56:        18            CLC                       ;
CODE_0DFF57:        69 08 00      ADC #$0008                ;
CODE_0DFF5A:        8D 14 0E      STA $0E14                 ;
CODE_0DFF5D:        E2 20         SEP #$20                  ;
CODE_0DFF5F:        C8            INY                       ;
CODE_0DFF60:        C8            INY                       ;
CODE_0DFF61:        C8            INY                       ;
CODE_0DFF62:        C8            INY                       ;
CODE_0DFF63:        60            RTS                       ;

CODE_0DFF64:        A5 03         LDA $03                   ;
CODE_0DFF66:        4A            LSR A                     ;
CODE_0DFF67:        4A            LSR A                     ;
CODE_0DFF68:        A5 00         LDA $00                   ;
CODE_0DFF6A:        90 0C         BCC CODE_0DFF78           ;
CODE_0DFF6C:        99 06 08      STA $0806,y               ;
CODE_0DFF6F:        A5 01         LDA $01                   ;
CODE_0DFF71:        99 02 08      STA $0802,y               ;
CODE_0DFF74:        A9 40         LDA #$40                  ;
CODE_0DFF76:        D0 0A         BNE CODE_0DFF82           ;
CODE_0DFF78:        99 02 08      STA $0802,y               ;
CODE_0DFF7B:        A5 01         LDA $01                   ;
CODE_0DFF7D:        99 06 08      STA $0806,y               ;
CODE_0DFF80:        A9 00         LDA #$00                  ;
CODE_0DFF82:        05 04         ORA $04                   ;
CODE_0DFF84:        99 03 08      STA $0803,y               ;
CODE_0DFF87:        99 07 08      STA $0807,y               ;
CODE_0DFF8A:        A5 02         LDA $02                   ;
CODE_0DFF8C:        99 01 08      STA $0801,y               ;
CODE_0DFF8F:        99 05 08      STA $0805,y               ;
CODE_0DFF92:        A5 05         LDA $05                   ;
CODE_0DFF94:        99 00 08      STA $0800,y               ;
CODE_0DFF97:        18            CLC                       ;
CODE_0DFF98:        69 08         ADC #$08                  ;
CODE_0DFF9A:        99 04 08      STA $0804,y               ;
CODE_0DFF9D:        A5 02         LDA $02                   ;
CODE_0DFF9F:        18            CLC                       ;
CODE_0DFFA0:        69 08         ADC #$08                  ;
CODE_0DFFA2:        85 02         STA $02                   ;
CODE_0DFFA4:        98            TYA                       ;
CODE_0DFFA5:        18            CLC                       ;
CODE_0DFFA6:        69 08         ADC #$08                  ;
CODE_0DFFA8:        A8            TAY                       ;
CODE_0DFFA9:        E8            INX                       ;
CODE_0DFFAA:        E8            INX                       ;
CODE_0DFFAB:        60            RTS                       ;

CODE_0DFFAC:        A5 03         LDA $03                   ;
CODE_0DFFAE:        4A            LSR A                     ;
CODE_0DFFAF:        4A            LSR A                     ;
CODE_0DFFB0:        A5 00         LDA $00                   ;
CODE_0DFFB2:        90 0C         BCC CODE_0DFFC0           ;
CODE_0DFFB4:        99 06 09      STA $0906,y               ;
CODE_0DFFB7:        A5 01         LDA $01                   ;
CODE_0DFFB9:        99 02 09      STA $0902,y               ;
CODE_0DFFBC:        A9 40         LDA #$40                  ;
CODE_0DFFBE:        D0 0A         BNE CODE_0DFFCA           ;
CODE_0DFFC0:        99 02 09      STA $0902,y               ;
CODE_0DFFC3:        A5 01         LDA $01                   ;
CODE_0DFFC5:        99 06 09      STA $0906,y               ;
CODE_0DFFC8:        A9 00         LDA #$00                  ;
CODE_0DFFCA:        05 04         ORA $04                   ;
CODE_0DFFCC:        99 03 09      STA $0903,y               ;
CODE_0DFFCF:        99 07 09      STA $0907,y               ;
CODE_0DFFD2:        A5 02         LDA $02                   ;
CODE_0DFFD4:        99 01 09      STA $0901,y               ;
CODE_0DFFD7:        99 05 09      STA $0905,y               ;
CODE_0DFFDA:        A5 05         LDA $05                   ;
CODE_0DFFDC:        99 00 09      STA $0900,y               ;
CODE_0DFFDF:        18            CLC                       ;
CODE_0DFFE0:        69 08         ADC #$08                  ;
CODE_0DFFE2:        99 04 09      STA $0904,y               ;
CODE_0DFFE5:        A5 02         LDA $02                   ;
CODE_0DFFE7:        18            CLC                       ;
CODE_0DFFE8:        69 08         ADC #$08                  ;
CODE_0DFFEA:        85 02         STA $02                   ;
CODE_0DFFEC:        98            TYA                       ;
CODE_0DFFED:        18            CLC                       ;
CODE_0DFFEE:        69 08         ADC #$08                  ;
CODE_0DFFF0:        A8            TAY                       ;
CODE_0DFFF1:        E8            INX                       ;
CODE_0DFFF2:        E8            INX                       ;
CODE_0DFFF3:        60            RTS                       ;

DATA_0DFFF4:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF
