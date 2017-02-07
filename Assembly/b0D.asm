;Super Mario Bros. - The Lost Levels.

CODE_0D8000:        JMP CODE_0D800D           ;

CODE_0D8003:        JMP CODE_0D818D           ;

CODE_0D8006:        JMP CODE_0D83A0           ;

CODE_0D8009:        JML CODE_009641           ;

CODE_0D800D:        NOP                       ;
CODE_0D800E:        NOP                       ;
CODE_0D800F:        LDA #$AA                  ;
CODE_0D8011:        STA $702000               ;
CODE_0D8015:        CMP $700000               ;
CODE_0D8019:        BNE CODE_0D8009           ;
CODE_0D801B:        LDA #$55                  ;
CODE_0D801D:        STA $702000               ;
CODE_0D8021:        CMP $700000               ;
CODE_0D8025:        BNE CODE_0D8009           ;
CODE_0D8027:        SEI                       ;
CODE_0D8028:        STZ $4200                 ;
CODE_0D802B:        STZ $420B                 ;
CODE_0D802E:        STZ $420C                 ;
CODE_0D8031:        LDA #$80                  ;
CODE_0D8033:        STA $2100                 ;
CODE_0D8036:        PHK                       ;
CODE_0D8037:        PLB                       ;
CODE_0D8038:        JSL CODE_0E8000           ;
CODE_0D803C:        JSL CODE_0480AE           ;
CODE_0D8040:        JSR CODE_0D841C           ;
CODE_0D8043:        STZ $1608                 ;
CODE_0D8046:        STZ $1609                 ;
CODE_0D8049:        STZ $160F                 ;
CODE_0D804C:        STZ $160E                 ;
CODE_0D804F:        STZ $160A                 ;
CODE_0D8052:        STA $160D                 ;
CODE_0D8055:        LDA #$01                  ;
CODE_0D8057:        STA $160C                 ;
CODE_0D805A:        LDA #$81                  ;
CODE_0D805C:        STA $09                   ;
CODE_0D805E:        STA $4200                 ;
CODE_0D8061:        CLI                       ;
CODE_0D8062:        LDA $0154                 ;
CODE_0D8065:        BEQ CODE_0D8062           ;
CODE_0D8067:        JSR CODE_0D96A8           ;
CODE_0D806A:        LDA $07B7                 ;
CODE_0D806D:        AND #$02                  ;
CODE_0D806F:        STA $07C7                 ;
CODE_0D8072:        LDA $07B8                 ;
CODE_0D8075:        AND #$02                  ;
CODE_0D8077:        EOR $07C7                 ;
CODE_0D807A:        CLC                       ;
CODE_0D807B:        BEQ CODE_0D807E           ;
CODE_0D807D:        SEC                       ;
CODE_0D807E:        ROR $07B7                 ;
CODE_0D8081:        ROR $07B8                 ;
CODE_0D8084:        ROR $07B9                 ;
CODE_0D8087:        ROR $07BA                 ;
CODE_0D808A:        ROR $07BB                 ;
CODE_0D808D:        ROR $07BC                 ;
CODE_0D8090:        ROR $07BD                 ;
CODE_0D8093:        JSL CODE_048163           ;
CODE_0D8097:        LDA $700007               ;
CODE_0D809B:        BEQ CODE_0D80B8           ;
CODE_0D809D:        LDA $0FFA                 ;
CODE_0D80A0:        AND #$20                  ;
CODE_0D80A2:        BEQ CODE_0D80A7           ;
CODE_0D80A4:        INC $15E5                 ;
CODE_0D80A7:        LDA $0FFA                 ;
CODE_0D80AA:        AND #$10                  ;
CODE_0D80AC:        BNE CODE_0D80B8           ;
CODE_0D80AE:        LDA $15E5                 ;
CODE_0D80B1:        AND #$01                  ;
CODE_0D80B3:        BEQ CODE_0D80B8           ;
CODE_0D80B5:        JMP CODE_0D817F           ;

CODE_0D80B8:        LDA $0B76                 ;
CODE_0D80BB:        BNE CODE_0D80C1           ;
CODE_0D80BD:        JSL CODE_0FEFAF           ;
CODE_0D80C1:        JSL CODE_0FD94F           ;
CODE_0D80C5:        JSR CODE_0D98F2           ;
CODE_0D80C8:        LDA $5C                   ;
CODE_0D80CA:        BNE CODE_0D80D0           ;
CODE_0D80CC:        JSL CODE_0E834E           ;
CODE_0D80D0:        LDA $0ED6                 ;
CODE_0D80D3:        BMI CODE_0D80F0           ;
CODE_0D80D5:        BEQ CODE_0D810A           ;
CODE_0D80D7:        LDA $07B0                 ;
CODE_0D80DA:        BEQ CODE_0D810A           ;
CODE_0D80DC:        LDA $0FFA                 ;
CODE_0D80DF:        BMI CODE_0D80E8           ;
CODE_0D80E1:        LDA $0FF6                 ;
CODE_0D80E4:        AND #$90                  ;
CODE_0D80E6:        BEQ CODE_0D810A           ;
CODE_0D80E8:        STZ $07B0                 ;
CODE_0D80EB:        STZ $0ED6                 ;
CODE_0D80EE:        BRA CODE_0D810A           ;

CODE_0D80F0:        LDA $0FFA                 ;
CODE_0D80F3:        ORA $0FF6                 ;
CODE_0D80F6:        AND #$40                  ;
CODE_0D80F8:        BEQ CODE_0D810A           ;
CODE_0D80FA:        LDA $1201                 ;
CODE_0D80FD:        CMP #$0F                  ;
CODE_0D80FF:        BNE CODE_0D810A           ;
CODE_0D8101:        LDA #$80                  ;
CODE_0D8103:        STA $1602                 ;
CODE_0D8106:        JML CODE_0080DE           ;

CODE_0D810A:        LDA $0E7F                 ;
CODE_0D810D:        BEQ CODE_0D8114           ;
CODE_0D810F:        JSR CODE_0DC089           ;
CODE_0D8112:        BRA CODE_0D817F           ;

CODE_0D8114:        LDA $0776                 ;
CODE_0D8117:        LSR A                     ;
CODE_0D8118:        BCS CODE_0D8178           ;
CODE_0D811A:        PHD                       ;
CODE_0D811B:        LDA #$07                  ;
CODE_0D811D:        XBA                       ;
CODE_0D811E:        LDA #$00                  ;
CODE_0D8120:        TCD                       ;
CODE_0D8121:        LDA $47                   ;
CODE_0D8123:        BEQ CODE_0D8129           ;
CODE_0D8125:        DEC $47                   ;
CODE_0D8127:        BNE CODE_0D813E           ;
CODE_0D8129:        LDX #$18                  ;
CODE_0D812B:        DEC $87                   ;
CODE_0D812D:        BPL CODE_0D8135           ;
CODE_0D812F:        LDA #$14                  ;
CODE_0D8131:        STA $87                   ;
CODE_0D8133:        LDX #$2B                  ;
CODE_0D8135:        LDA $88,x                 ;
CODE_0D8137:        BEQ CODE_0D813B           ;
CODE_0D8139:        DEC $88,x                 ;
CODE_0D813B:        DEX                       ;
CODE_0D813C:        BPL CODE_0D8135           ;
CODE_0D813E:        PLD                       ;
CODE_0D813F:        LDA $07B0                 ;
CODE_0D8142:        BNE CODE_0D814C           ;
CODE_0D8144:        LDA $0ED6                 ;
CODE_0D8147:        AND #$80                  ;
CODE_0D8149:        STA $0ED6                 ;
CODE_0D814C:        INC $09                   ;
CODE_0D814E:        INC $0E68                 ;
CODE_0D8151:        LDA $0E68                 ;
CODE_0D8154:        AND #$18                  ;
CODE_0D8156:        CMP #$18                  ;
CODE_0D8158:        BNE CODE_0D815D           ;
CODE_0D815A:        STZ $0E68                 ;
CODE_0D815D:        JSL CODE_0FE26D           ;
CODE_0D8161:        LDA $0722                 ;
CODE_0D8164:        BEQ CODE_0D816E           ;
CODE_0D8166:        LDA $1B                   ;
CODE_0D8168:        LSR A                     ;
CODE_0D8169:        BCS CODE_0D816E           ;
CODE_0D816B:        JSR CODE_0D83EC           ;
CODE_0D816E:        JSR CODE_0D83D8           ;
CODE_0D8171:        LDA $1680                 ;
CODE_0D8174:        BMI CODE_0D8178           ;
CODE_0D8176:        BRA CODE_0D817F           ;

CODE_0D8178:        JSR CODE_0D841C           ;
CODE_0D817B:        JSL CODE_0FDA33           ;
CODE_0D817F:        JSL CODE_0FEBC6           ;
CODE_0D8183:        STZ $0154                 ;
CODE_0D8186:        JMP CODE_0D8062           ;

DATA_0D8189:        db $00,$00,$00,$03

CODE_0D818D:        PHB                       ;
CODE_0D818E:        PHK                       ;
CODE_0D818F:        PLB                       ;
CODE_0D8190:        LDA $4210                 ;
CODE_0D8193:        LDA $1201                 ;
CODE_0D8196:        BNE CODE_0D819A           ;
CODE_0D8198:        LDA #$80                  ;
CODE_0D819A:        STA $2100                 ;
CODE_0D819D:        STZ $420C                 ;
CODE_0D81A0:        LDA $0154                 ;
CODE_0D81A3:        BEQ CODE_0D81A8           ;
CODE_0D81A5:        JMP CODE_0D82EA           ;

CODE_0D81A8:        INC $0154                 ;
CODE_0D81AB:        LDX $0773                 ;
CODE_0D81AE:        LDA $0753                 ;
CODE_0D81B1:        BEQ CODE_0D81C5           ;
CODE_0D81B3:        CPX #$0C                  ;
CODE_0D81B5:        BNE CODE_0D81B9           ;
CODE_0D81B7:        LDX #$1F                  ;
CODE_0D81B9:        CPX #$10                  ;
CODE_0D81BB:        BNE CODE_0D81BF           ;
CODE_0D81BD:        LDX #$20                  ;
CODE_0D81BF:        CPX #$13                  ;
CODE_0D81C1:        BNE CODE_0D81C5           ;
CODE_0D81C3:        LDX #$21                  ;
CODE_0D81C5:        LDA.l DATA_0FF340,x             ;
CODE_0D81C9:        STA $00                   ;
CODE_0D81CB:        LDA.l DATA_0FF362,x             ;
CODE_0D81CF:        STA $01                   ;
CODE_0D81D1:        LDA #$0F                  ;
CODE_0D81D3:        STA $4314                 ;
CODE_0D81D6:        STA $02                   ;
CODE_0D81D8:        JSR CODE_0D977C           ;
CODE_0D81DB:        LDX $0773                 ;
CODE_0D81DE:        CPX #$06                  ;
CODE_0D81E0:        BNE CODE_0D81F8           ;
CODE_0D81E2:        LDA.l DATA_0FF340               ;
CODE_0D81E6:        STA $00                   ;
CODE_0D81E8:        LDA.l DATA_0FF362               ;
CODE_0D81EC:        STA $01                   ;
CODE_0D81EE:        LDA #$0F                  ;
CODE_0D81F0:        STA $4314                 ;
CODE_0D81F3:        STA $02                   ;
CODE_0D81F5:        JSR CODE_0D977C           ;
CODE_0D81F8:        PHD                       ;
CODE_0D81F9:        LDA #$43                  ;
CODE_0D81FB:        XBA                       ;
CODE_0D81FC:        LDA #$00                  ;
CODE_0D81FE:        TCD                       ;
CODE_0D81FF:        REP #$10                  ;
CODE_0D8201:        LDA #$81                  ;
CODE_0D8203:        STA $2115                 ;
CODE_0D8206:        LDY #$1801                ;
CODE_0D8209:        STY $00                   ;
CODE_0D820B:        LDA $0EF9                 ;
CODE_0D820E:        BEQ CODE_0D8243           ;
CODE_0D8210:        LDA #$7F                  ;
CODE_0D8212:        STA $04                   ;
CODE_0D8214:        REP #$20                  ;
CODE_0D8216:        LDY #$0040                ;
CODE_0D8219:        LDX #$0000                ;
CODE_0D821C:        LDA $7F0002,x             ;
CODE_0D8220:        STA $2116                 ;
CODE_0D8223:        TXA                       ;
CODE_0D8224:        CLC                       ;
CODE_0D8225:        ADC #$0004                ;
CODE_0D8228:        STA $02                   ;
CODE_0D822A:        STY $05                   ;
CODE_0D822C:        TXA                       ;
CODE_0D822D:        CLC                       ;
CODE_0D822E:        ADC #$0042                ;
CODE_0D8231:        TAX                       ;
CODE_0D8232:        LDA #$0001                ;
CODE_0D8235:        STA $420B                 ;
CODE_0D8238:        LDA $7F0002,x             ;
CODE_0D823C:        BPL CODE_0D8220           ;
CODE_0D823E:        SEP #$20                  ;
CODE_0D8240:        STZ $0EF9                 ;
CODE_0D8243:        LDA $0ED4                 ;
CODE_0D8246:        BEQ CODE_0D8276           ;
CODE_0D8248:        LDA #$7F                  ;
CODE_0D824A:        STA $04                   ;
CODE_0D824C:        REP #$20                  ;
CODE_0D824E:        LDY #$0038                ;
CODE_0D8251:        LDX #$0000                ;
CODE_0D8254:        LDA $7F2002,x             ;
CODE_0D8258:        STA $2116                 ;
CODE_0D825B:        TXA                       ;
CODE_0D825C:        CLC                       ;
CODE_0D825D:        ADC #$2004                ;
CODE_0D8260:        STA $02                   ;
CODE_0D8262:        STY $05                   ;
CODE_0D8264:        TXA                       ;
CODE_0D8265:        CLC                       ;
CODE_0D8266:        ADC #$003A                ;
CODE_0D8269:        TAX                       ;
CODE_0D826A:        LDA #$0001                ;
CODE_0D826D:        STA $420B                 ;
CODE_0D8270:        LDA $7F2002,x             ;
CODE_0D8274:        BPL CODE_0D8258           ;
CODE_0D8276:        SEP #$30                  ;
CODE_0D8278:        STZ $0ED4                 ;
CODE_0D827B:        LDA #$80                  ;
CODE_0D827D:        STA $2115                 ;
CODE_0D8280:        JSR CODE_0D96DD           ;
CODE_0D8283:        LDA $1200                 ;
CODE_0D8286:        BEQ CODE_0D82B3           ;
CODE_0D8288:        BMI CODE_0D82AE           ;
CODE_0D828A:        REP #$10                  ;
CODE_0D828C:        STZ $2121                 ;
CODE_0D828F:        LDY #$2200                ;
CODE_0D8292:        STY $00                   ;
CODE_0D8294:        LDY #$1000                ;
CODE_0D8297:        STY $02                   ;
CODE_0D8299:        LDA #$00                  ;
CODE_0D829B:        STA $04                   ;
CODE_0D829D:        LDY #$0200                ;
CODE_0D82A0:        STY $05                   ;
CODE_0D82A2:        LDA #$01                  ;
CODE_0D82A4:        STA $420B                 ;
CODE_0D82A7:        SEP #$10                  ;
CODE_0D82A9:        STZ $1200                 ;
CODE_0D82AC:        BRA CODE_0D82B3           ;

CODE_0D82AE:        LDA #$01                  ;
CODE_0D82B0:        STA $1200                 ;
CODE_0D82B3:        PLD                       ;
CODE_0D82B4:        LDY #$00                  ;
CODE_0D82B6:        LDX $0773                 ;
CODE_0D82B9:        CPX #$06                  ;
CODE_0D82BB:        BNE CODE_0D82BF           ;
CODE_0D82BD:        INY                       ;
CODE_0D82BE:        INY                       ;
CODE_0D82BF:        REP #$20                  ;
CODE_0D82C1:        LDA DATA_0D8189,y               ;
CODE_0D82C4:        REP #$10                  ;
CODE_0D82C6:        TAX                       ;
CODE_0D82C7:        STZ $1700,x               ;
CODE_0D82CA:        LDA #$FFFF                ;
CODE_0D82CD:        STA $1702,x               ;
CODE_0D82D0:        LDA #$0000                ;
CODE_0D82D3:        STA $7F0000               ;
CODE_0D82D7:        LDA $5C                   ;
CODE_0D82D9:        AND #$00FF                ;
CODE_0D82DC:        BEQ CODE_0D82E5           ;
CODE_0D82DE:        LDA #$0000                ;
CODE_0D82E1:        STA $7F2000               ;
CODE_0D82E5:        SEP #$30                  ;
CODE_0D82E7:        STZ $0773                 ;
CODE_0D82EA:        LDA $1203                 ;
CODE_0D82ED:        STA $420C                 ;
CODE_0D82F0:        PHD                       ;
CODE_0D82F1:        LDA #$21                  ;
CODE_0D82F3:        XBA                       ;
CODE_0D82F4:        LDA #$00                  ;
CODE_0D82F6:        TCD                       ;
CODE_0D82F7:        LDA $1209                 ;
CODE_0D82FA:        STA $30                   ;
CODE_0D82FC:        LDA $120A                 ;
CODE_0D82FF:        STA $31                   ;
CODE_0D8301:        LDA $1204                 ;
CODE_0D8304:        STA $23                   ;
CODE_0D8306:        LDA $1205                 ;
CODE_0D8309:        STA $24                   ;
CODE_0D830B:        LDA $1206                 ;
CODE_0D830E:        STA $25                   ;
CODE_0D8310:        LDA $120B                 ;
CODE_0D8313:        STA $2C                   ;
CODE_0D8315:        LDA $120C                 ;
CODE_0D8318:        STA $2D                   ;
CODE_0D831A:        LDA $1207                 ;
CODE_0D831D:        STA $2E                   ;
CODE_0D831F:        LDA $1208                 ;
CODE_0D8322:        STA $2F                   ;
CODE_0D8324:        LDA $0EE0                 ;
CODE_0D8327:        STA $32                   ;
CODE_0D8329:        LDA $0EE1                 ;
CODE_0D832C:        STA $32                   ;
CODE_0D832E:        LDA $0EE2                 ;
CODE_0D8331:        STA $32                   ;
CODE_0D8333:        LDA $120D                 ;
CODE_0D8336:        STA $05                   ;
CODE_0D8338:        LDA $0E7E                 ;
CODE_0D833B:        STA $06                   ;
CODE_0D833D:        STZ $11                   ;
CODE_0D833F:        STZ $11                   ;
CODE_0D8341:        LDA $0ED1                 ;
CODE_0D8344:        BEQ CODE_0D8350           ;
CODE_0D8346:        LDA $0EEE                 ;
CODE_0D8349:        STA $0F                   ;
CODE_0D834B:        LDA $0EEF                 ;
CODE_0D834E:        STA $0F                   ;
CODE_0D8350:        LDA $0E7F                 ;
CODE_0D8353:        BNE CODE_0D837F           ;
CODE_0D8355:        LDA $073F                 ;
CODE_0D8358:        STA $0D                   ;
CODE_0D835A:        LDA $071A                 ;
CODE_0D835D:        STA $0D                   ;
CODE_0D835F:        LDA $0ED1                 ;
CODE_0D8362:        BNE CODE_0D836E           ;
CODE_0D8364:        LDA $0EFD                 ;
CODE_0D8367:        STA $0F                   ;
CODE_0D8369:        LDA $0EFE                 ;
CODE_0D836C:        STA $0F                   ;
CODE_0D836E:        LDA $0740                 ;
CODE_0D8371:        STA $0E                   ;
CODE_0D8373:        STZ $0E                   ;
CODE_0D8375:        LDA $0ED2                 ;
CODE_0D8378:        STA $10                   ;
CODE_0D837A:        LDA $0ED3                 ;
CODE_0D837D:        STA $10                   ;
CODE_0D837F:        PLD                       ;
CODE_0D8380:        LDX #$81                  ;
CODE_0D8382:        LDA $0EDE                 ;
CODE_0D8385:        BEQ CODE_0D839B           ;
CODE_0D8387:        LDA $4211                 ;
CODE_0D838A:        LDA $0EF2                 ;
CODE_0D838D:        STA $4209                 ;
CODE_0D8390:        STZ $420A                 ;
CODE_0D8393:        STZ $4207                 ;
CODE_0D8396:        STZ $4208                 ;
CODE_0D8399:        LDX #$A1                  ;
CODE_0D839B:        STX $4200                 ;
CODE_0D839E:        PLB                       ;
CODE_0D839F:        RTL                       ;

CODE_0D83A0:        PHB                       ;
CODE_0D83A1:        PHK                       ;
CODE_0D83A2:        PLB                       ;
CODE_0D83A3:        LDA $4211                 ;
CODE_0D83A6:        BPL CODE_0D83D6           ;
CODE_0D83A8:        LDA $0EDE                 ;
CODE_0D83AB:        BEQ CODE_0D83D6           ;
CODE_0D83AD:        LDA $0ED1                 ;
CODE_0D83B0:        BEQ CODE_0D83C5           ;
CODE_0D83B2:        BIT $4212                 ;
CODE_0D83B5:        BVC CODE_0D83B2           ;
CODE_0D83B7:        LDA $0EFD                 ;
CODE_0D83BA:        STA $210F                 ;
CODE_0D83BD:        LDA $0EFE                 ;
CODE_0D83C0:        STA $210F                 ;
CODE_0D83C3:        BRA CODE_0D83D6           ;

CODE_0D83C5:        BIT $4212                 ;
CODE_0D83C8:        BVC CODE_0D83C5           ;
CODE_0D83CA:        LDA $0EEE                 ;
CODE_0D83CD:        STA $2111                 ;
CODE_0D83D0:        LDA $0EEF                 ;
CODE_0D83D3:        STA $2111                 ;
CODE_0D83D6:        PLB                       ;
CODE_0D83D7:        RTL                       ;

CODE_0D83D8:        LDA $0770                 ;
CODE_0D83DB:        ASL A                     ;
CODE_0D83DC:        TAX                       ;
CODE_0D83DD:        JMP (PNTR_0D83E0,x)       ;

PNTR_0D83E0:        dw CODE_0D84B6
                    dw CODE_0DAB70
                    dw CODE_0D8667
                    dw CODE_0D9FC6

CODE_0D83E8:        JSR CODE_0D8421           ;
CODE_0D83EB:        RTL                       ;

CODE_0D83EC:        PHD                       ;
CODE_0D83ED:        LDA #$0B                  ;
CODE_0D83EF:        XBA                       ;
CODE_0D83F0:        LDA #$00                  ;
CODE_0D83F2:        TCD                       ;
CODE_0D83F3:        LDA #$90                  ;
CODE_0D83F5:        STA $62                   ;
CODE_0D83F7:        LDA #$94                  ;
CODE_0D83F9:        STA $63                   ;
CODE_0D83FB:        LDA #$98                  ;
CODE_0D83FD:        STA $64                   ;
CODE_0D83FF:        LDA #$9C                  ;
CODE_0D8401:        STA $65                   ;
CODE_0D8403:        LDA #$A0                  ;
CODE_0D8405:        STA $66                   ;
CODE_0D8407:        LDA #$A4                  ;
CODE_0D8409:        STA $67                   ;
CODE_0D840B:        LDA #$A8                  ;
CODE_0D840D:        STA $68                   ;
CODE_0D840F:        LDA #$AC                  ;
CODE_0D8411:        STA $69                   ;
CODE_0D8413:        LDA #$58                  ;
CODE_0D8415:        STA $6A                   ;
CODE_0D8417:        PLD                       ;
CODE_0D8418:        LDA $96                   ;
CODE_0D841A:        BNE CODE_0D845E           ;
CODE_0D841C:        LDA $0E67                 ;
CODE_0D841F:        BNE CODE_0D8495           ;
CODE_0D8421:        LDX #$00                  ;
CODE_0D8423:        LDA #$F0                  ;
CODE_0D8425:        STA $0801,x               ;
CODE_0D8428:        STA $0841,x               ;
CODE_0D842B:        STA $0881,x               ;
CODE_0D842E:        STA $08C1,x               ;
CODE_0D8431:        STA $0901,x               ;
CODE_0D8434:        STA $0941,x               ;
CODE_0D8437:        STA $0981,x               ;
CODE_0D843A:        STA $09C1,x               ;
CODE_0D843D:        STZ $0C00,x               ;
CODE_0D8440:        STZ $0C40,x               ;
CODE_0D8443:        STZ $0C80,x               ;
CODE_0D8446:        STZ $0CC0,x               ;
CODE_0D8449:        STZ $0D00,x               ;
CODE_0D844C:        STZ $0D40,x               ;
CODE_0D844F:        STZ $0D80,x               ;
CODE_0D8452:        STZ $0DC0,x               ;
CODE_0D8455:        INX                       ;
CODE_0D8456:        INX                       ;
CODE_0D8457:        INX                       ;
CODE_0D8458:        INX                       ;
CODE_0D8459:        CPX #$40                  ;
CODE_0D845B:        BNE CODE_0D8425           ;
CODE_0D845D:        RTS                       ;

CODE_0D845E:        LDX #$00                  ;
CODE_0D8460:        LDA #$F0                  ;
CODE_0D8462:        STA $0841,x               ;
CODE_0D8465:        STA $0881,x               ;
CODE_0D8468:        STA $08C1,x               ;
CODE_0D846B:        STA $0901,x               ;
CODE_0D846E:        STA $0941,x               ;
CODE_0D8471:        STA $0981,x               ;
CODE_0D8474:        STA $09C1,x               ;
CODE_0D8477:        STZ $0C40,x               ;
CODE_0D847A:        STZ $0C80,x               ;
CODE_0D847D:        STZ $0CC0,x               ;
CODE_0D8480:        STZ $0D00,x               ;
CODE_0D8483:        STZ $0D40,x               ;
CODE_0D8486:        STZ $0D80,x               ;
CODE_0D8489:        STZ $0DC0,x               ;
CODE_0D848C:        INX                       ;
CODE_0D848D:        INX                       ;
CODE_0D848E:        INX                       ;
CODE_0D848F:        INX                       ;
CODE_0D8490:        CPX #$40                  ;
CODE_0D8492:        BNE CODE_0D8462           ;
CODE_0D8494:        RTS                       ;

CODE_0D8495:        LDA #$F0                  ;
CODE_0D8497:        STA $0851                 ;
CODE_0D849A:        STA $0855                 ;
CODE_0D849D:        STA $08B1                 ;
CODE_0D84A0:        STA $08B5                 ;
CODE_0D84A3:        STA $08B9                 ;
CODE_0D84A6:        STA $08BD                 ;
CODE_0D84A9:        STA $08C1                 ;
CODE_0D84AC:        STA $08C5                 ;
CODE_0D84AF:        STA $08C9                 ;
CODE_0D84B2:        STA $08CD                 ;
CODE_0D84B5:        RTS                       ;

CODE_0D84B6:        LDA $0772                 ;
CODE_0D84B9:        ASL A                     ;
CODE_0D84BA:        TAX                       ;
CODE_0D84BB:        JSR (PNTR_0D84D5,x)       ;
CODE_0D84BE:        LDA $701FF2               ;
CODE_0D84C2:        BEQ CODE_0D84D1           ;
CODE_0D84C4:        STZ $1600                 ;
CODE_0D84C7:        STZ $1601                 ;
CODE_0D84CA:        STZ $1602                 ;
CODE_0D84CD:        STZ $1603                 ;
CODE_0D84D0:        RTS                       ;

CODE_0D84D1:        STZ $1602                 ;
CODE_0D84D4:        RTS                       ;

PNTR_0D84D5:        dw CODE_0D9D11            ;
                    dw CODE_0D89BD            ;
                    dw CODE_0D9E3F            ;
                    dw CODE_0D84DD            ;

CODE_0D84DD:        LDA $0FF4                 ;
CODE_0D84E0:        AND #$10                  ;
CODE_0D84E2:        BEQ CODE_0D8558           ;
CODE_0D84E4:        LDA $077A                 ;
CODE_0D84E7:        STA $0EC2                 ;
CODE_0D84EA:        STA $0753                 ;
CODE_0D84ED:        STZ $077A                 ;
CODE_0D84F0:        STZ $0F08                 ;
CODE_0D84F3:        STZ $0F09                 ;
CODE_0D84F6:        STZ $07FB                 ;
CODE_0D84F9:        LDA $700008               ;
CODE_0D84FD:        STA $075F                 ;
CODE_0D8500:        LDA $700009               ;
CODE_0D8504:        STA $0760                 ;
CODE_0D8507:        LDA $0E24                 ;
CODE_0D850A:        STA $075C                 ;
CODE_0D850D:        JSL CODE_0FD051           ;
CODE_0D8511:        LDA $075F                 ;
CODE_0D8514:        CMP #$09                  ;
CODE_0D8516:        BCC CODE_0D851B           ;
CODE_0D8518:        INC $07FB                 ;
CODE_0D851B:        LDA #$00                  ;
CODE_0D851D:        STA $7FFB05               ;
CODE_0D8521:        JMP CODE_0D85FE           ;

CODE_0D8524:        LDA #$00                  ;
CODE_0D8526:        STA $701FE8               ;
CODE_0D852A:        STA $701FE9               ;
CODE_0D852E:        STA $701FEA               ;
CODE_0D8532:        STA $701FEB               ;
CODE_0D8536:        STA $701FEC               ;
CODE_0D853A:        STA $701FED               ;
CODE_0D853E:        STA $07C8                 ;
CODE_0D8541:        STA $07C9                 ;
CODE_0D8544:        STA $07CA                 ;
CODE_0D8547:        STA $07CB                 ;
CODE_0D854A:        STA $07CC                 ;
CODE_0D854D:        STA $07CD                 ;
CODE_0D8550:        LDA #$08                  ;
CODE_0D8552:        STA $1600                 ;
CODE_0D8555:        JMP CODE_0D85EC           ;

CODE_0D8558:        JSL CODE_0FFB49           ;
CODE_0D855C:        LDA $701FF2               ;
CODE_0D8560:        BNE CODE_0D8582           ;
CODE_0D8562:        LDA $0FF8                 ;
CODE_0D8565:        CMP #$B0                  ;
CODE_0D8567:        BNE CODE_0D8570           ;
CODE_0D8569:        LDA $0FF4                 ;
CODE_0D856C:        CMP #$80                  ;
CODE_0D856E:        BEQ CODE_0D8524           ;
CODE_0D8570:        LDA $7FFB05               ;
CODE_0D8574:        BMI CODE_0D857B           ;
CODE_0D8576:        LDA #$40                  ;
CODE_0D8578:        STA $07B2                 ;
CODE_0D857B:        LDA $0FF6                 ;
CODE_0D857E:        AND #$2C                  ;
CODE_0D8580:        BNE CODE_0D858F           ;
CODE_0D8582:        LDX $07B2                 ;
CODE_0D8585:        BNE CODE_0D85CF           ;
CODE_0D8587:        JSL CODE_0FF70F           ;
CODE_0D858B:        BCC CODE_0D85D2           ;
CODE_0D858D:        BCS CODE_0D85EC           ;
CODE_0D858F:        LDA $07B2                 ;
CODE_0D8592:        BEQ CODE_0D85EC           ;
CODE_0D8594:        LDA #$18                  ;
CODE_0D8596:        STA $07B2                 ;
CODE_0D8599:        LDA $0009                 ;
CODE_0D859C:        AND #$FE                  ;
CODE_0D859E:        STA $0009                 ;
CODE_0D85A1:        LDA $701FF2               ;
CODE_0D85A5:        BNE CODE_0D85CF           ;
CODE_0D85A7:        LDA $0FF6                 ;
CODE_0D85AA:        BIT #$20                  ;
CODE_0D85AC:        BEQ CODE_0D85B5           ;
CODE_0D85AE:        LDA $077A                 ;
CODE_0D85B1:        EOR #$01                  ;
CODE_0D85B3:        BRA CODE_0D85C3           ;

CODE_0D85B5:        AND #$0C                  ;
CODE_0D85B7:        BEQ CODE_0D85CB           ;
CODE_0D85B9:        EOR #$08                  ;
CODE_0D85BB:        LSR A                     ;
CODE_0D85BC:        LSR A                     ;
CODE_0D85BD:        LSR A                     ;
CODE_0D85BE:        CMP $077A                 ;
CODE_0D85C1:        BEQ CODE_0D85CB           ;
CODE_0D85C3:        STA $077A                 ;
CODE_0D85C6:        LDA #$01                  ;
CODE_0D85C8:        STA $1603                 ;
CODE_0D85CB:        JSL CODE_0FF317           ;
CODE_0D85CF:        STZ $0FF4                 ;
CODE_0D85D2:        LDA $1603                 ;
CODE_0D85D5:        PHA                       ;
CODE_0D85D6:        JSR CODE_0DAB80           ;
CODE_0D85D9:        STZ $1600                 ;
CODE_0D85DC:        STZ $1601                 ;
CODE_0D85DF:        PLA                       ;
CODE_0D85E0:        STA $1603                 ;
CODE_0D85E3:        LDA $0F                   ;
CODE_0D85E5:        CMP #$06                  ;
CODE_0D85E7:        BNE CODE_0D8656           ;
CODE_0D85E9:        STZ $0EC8                 ;
CODE_0D85EC:        STZ $0770                 ;
CODE_0D85EF:        STZ $0772                 ;
CODE_0D85F2:        STZ $0722                 ;
CODE_0D85F5:        LDA #$01                  ;
CODE_0D85F7:        STA $0E7F                 ;
CODE_0D85FA:        INC $0774                 ;
CODE_0D85FD:        RTS                       ;

CODE_0D85FE:        LDY $07B2                 ;
CODE_0D8601:        BEQ CODE_0D85EC           ;
CODE_0D8603:        ASL A                     ;
CODE_0D8604:        BCC CODE_0D860B           ;
CODE_0D8606:        LDA #$09                  ;
CODE_0D8608:        JSR CODE_0D8663           ;
CODE_0D860B:        LDA #$29                  ;
CODE_0D860D:        STA $1603                 ;
CODE_0D8610:        LDA #$01                  ;
CODE_0D8612:        STA $0E67                 ;
CODE_0D8615:        STA $0BA5                 ;
CODE_0D8618:        JSR CODE_0DF700           ;
CODE_0D861B:        JSL CODE_0EC34C           ;
CODE_0D861F:        INC $075D                 ;
CODE_0D8622:        INC $0764                 ;
CODE_0D8625:        INC $0757                 ;
CODE_0D8628:        INC $0770                 ;
CODE_0D862B:        LDA $07FB                 ;
CODE_0D862E:        STA $076A                 ;
CODE_0D8631:        STZ $0772                 ;
CODE_0D8634:        STZ $07B2                 ;
CODE_0D8637:        LDX #$0B                  ;
CODE_0D8639:        STZ $07DA,x               ;
CODE_0D863C:        DEX                       ;
CODE_0D863D:        BPL CODE_0D8639           ;
CODE_0D863F:        PHX                       ;
CODE_0D8640:        STZ $E4                   ;
CODE_0D8642:        LDA $075E                 ;
CODE_0D8645:        JSR CODE_0D8657           ;
CODE_0D8648:        STA $07DF                 ;
CODE_0D864B:        LDA $E4                   ;
CODE_0D864D:        STA $07DE                 ;
CODE_0D8650:        LDA #$01                  ;
CODE_0D8652:        STA $0E1A                 ;
CODE_0D8655:        PLX                       ;
CODE_0D8656:        RTS                       ;

CODE_0D8657:        CMP #$0A                  ;
CODE_0D8659:        BCC CODE_0D8662           ;
CODE_0D865B:        INC $E4                   ;
CODE_0D865D:        SEC                       ;
CODE_0D865E:        SBC #$0A                  ;
CODE_0D8660:        BRA CODE_0D8657           ;

CODE_0D8662:        RTS                       ;

CODE_0D8663:        STA $075F                 ;
CODE_0D8666:        RTS                       ;

CODE_0D8667:        JSR CODE_0D867C           ;
CODE_0D866A:        LDA $0772                 ;
CODE_0D866D:        BEQ CODE_0D8676           ;
CODE_0D866F:        LDX #$00                  ;
CODE_0D8671:        STX $9E                   ;
CODE_0D8673:        JSR CODE_0DC250           ;
CODE_0D8676:        JSR CODE_0DFD29           ;
CODE_0D8679:        JMP CODE_0DF700           ;

CODE_0D867C:        LDA $0EC4                 ;
CODE_0D867F:        BNE CODE_0D8695           ;
CODE_0D8681:        LDA $0772                 ;
CODE_0D8684:        JSR CODE_0D9693           ;Some sort of executeptr routine

PNTR_0D8687:        dw CODE_0DD3BA
                    dw CODE_0D8773
                    dw CODE_0D878B
                    dw CODE_0D87FA
                    dw CODE_0D8810
                    dw CODE_0D8734
                    dw CODE_0D8857

CODE_0D8695:        LDA $0772                 ;
CODE_0D8698:        JSR CODE_0D9693           ;Same case as above

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

CODE_0D86B9:        LDA $0754                 ;
CODE_0D86BC:        BEQ CODE_0D86C6           ;
CODE_0D86BE:        JSL CODE_00C62D           ;
CODE_0D86C2:        INC $0772                 ;
CODE_0D86C5:        RTS                       ;

CODE_0D86C6:        INC $0772                 ;
CODE_0D86C9:        INC $0772                 ;
CODE_0D86CC:        RTS                       ;

CODE_0D86CD:        STZ $0FF4                 ;
CODE_0D86D0:        STZ $0FF6                 ;
CODE_0D86D3:        STZ $0FF5                 ;
CODE_0D86D6:        STZ $0FF7                 ;
CODE_0D86D9:        STZ $0FF8                 ;
CODE_0D86DC:        STZ $0FF9                 ;
CODE_0D86DF:        STZ $0FFA                 ;
CODE_0D86E2:        STZ $0FFB                 ;
CODE_0D86E5:        LDA #$02                  ;
CODE_0D86E7:        STA $078F                 ;
CODE_0D86EA:        JSR CODE_0DAB99           ;
CODE_0D86ED:        LDA $0754                 ;
CODE_0D86F0:        BNE CODE_0D86F5           ;
CODE_0D86F2:        INC $0772                 ;
CODE_0D86F5:        RTS                       ;

CODE_0D86F6:        INC $0772                 ;
CODE_0D86F9:        INC $0F87                 ;
CODE_0D86FC:        RTS                       ;

CODE_0D86FD:        JSL CODE_00C45F           ;
CODE_0D8701:        LDA $0F87                 ;
CODE_0D8704:        CMP #$06                  ;
CODE_0D8706:        BCC CODE_0D870B           ;
CODE_0D8708:        INC $0772                 ;
CODE_0D870B:        RTS                       ;

CODE_0D870C:        LDA #$10                  ;
CODE_0D870E:        STA $1602                 ;
CODE_0D8711:        JSL CODE_00C060           ;
CODE_0D8715:        JSL CODE_0FD9F9           ;
CODE_0D8719:        INC $0772                 ;
CODE_0D871C:        RTS                       ;

CODE_0D871D:        JSL CODE_00C68B           ;
CODE_0D8721:        RTS                       ;

CODE_0D8722:        INC $0772                 ;
CODE_0D8725:        RTS                       ;

CODE_0D8726:        INC $0772                 ;
CODE_0D8729:        RTS                       ;

CODE_0D872A:        JSL CODE_0E819D           ;
CODE_0D872E:        RTS                       ;

CODE_0D872F:        JSL CODE_0E81E3           ;
CODE_0D8733:        RTS                       ;

CODE_0D8734:        LDA $07B1                 ;
CODE_0D8737:        CMP #$06                  ;
CODE_0D8739:        BCS CODE_0D876C           ;
CODE_0D873B:        LDA $2143                 ;
CODE_0D873E:        AND #$7F                  ;
CODE_0D8740:        CMP #$4B                  ;
CODE_0D8742:        BEQ CODE_0D8749           ;
CODE_0D8744:        LDA #$4B                  ;
CODE_0D8746:        STA $1603                 ;
CODE_0D8749:        JSR CODE_0DD6FF           ;
CODE_0D874C:        LDA $07E9                 ;
CODE_0D874F:        ORA $07EA                 ;
CODE_0D8752:        ORA $07EB                 ;
CODE_0D8755:        BNE CODE_0D876C           ;
CODE_0D8757:        LDA #$4C                  ;
CODE_0D8759:        STA $1603                 ;
CODE_0D875C:        STA $0E1A                 ;
CODE_0D875F:        LDA #$30                  ;
CODE_0D8761:        STA $0788                 ;
CODE_0D8764:        LDA #$06                  ;
CODE_0D8766:        STA $07B1                 ;
CODE_0D8769:        INC $0772                 ;
CODE_0D876C:        RTS                       ;

CODE_0D876D:        JSL CODE_00C654           ;
CODE_0D8771:        BRA CODE_0D877C           ;

CODE_0D8773:        LDA $0B76                 ;
CODE_0D8776:        BEQ CODE_0D8786           ;
CODE_0D8778:        JSL CODE_00D507           ;
CODE_0D877C:        LDX $071B                 ;
CODE_0D877F:        INX                       ;
CODE_0D8780:        STX $0203                 ;
CODE_0D8783:        JMP CODE_0D8BD0           ;

CODE_0D8786:        JSL CODE_00D4CA           ;
CODE_0D878A:        RTS                       ;

CODE_0D878B:        LDA $96                   ;
CODE_0D878D:        BEQ CODE_0D8790           ;
CODE_0D878F:        RTS                       ;

CODE_0D8790:        LDA $0F82                 ;
CODE_0D8793:        BEQ CODE_0D8799           ;
CODE_0D8795:        JSL CODE_00C555           ;
CODE_0D8799:        LDY #$00                  ;
CODE_0D879B:        STY $0204                 ;
CODE_0D879E:        LDA $78                   ;
CODE_0D87A0:        CMP $0203                 ;
CODE_0D87A3:        BNE CODE_0D87CD           ;
CODE_0D87A5:        LDA $075F                 ;
CODE_0D87A8:        CMP #$07                  ;
CODE_0D87AA:        BEQ CODE_0D87B0           ;
CODE_0D87AC:        CMP #$0C                  ;
CODE_0D87AE:        BNE CODE_0D87B9           ;
CODE_0D87B0:        INC $0204                 ;
CODE_0D87B3:        JSL CODE_00C3DA           ;
CODE_0D87B7:        BRA CODE_0D87D1           ;

CODE_0D87B9:        CMP #$02                  ;
CODE_0D87BB:        BNE CODE_0D87C6           ;
CODE_0D87BD:        LDA $0219                 ;
CODE_0D87C0:        CMP #$44                  ;
CODE_0D87C2:        BCS CODE_0D87D1           ;
CODE_0D87C4:        BRA CODE_0D87CD           ;

CODE_0D87C6:        LDA $0219                 ;
CODE_0D87C9:        CMP #$54                  ;
CODE_0D87CB:        BCS CODE_0D87D1           ;
CODE_0D87CD:        INC $0204                 ;
CODE_0D87D0:        INY                       ;
CODE_0D87D1:        TYA                       ;
CODE_0D87D2:        JSR CODE_0DAE12           ;
CODE_0D87D5:        LDA $071A                 ;
CODE_0D87D8:        CMP $0203                 ;
CODE_0D87DB:        BEQ CODE_0D87F4           ;
CODE_0D87DD:        LDA $0768                 ;
CODE_0D87E0:        CLC                       ;
CODE_0D87E1:        ADC #$80                  ;
CODE_0D87E3:        STA $0768                 ;
CODE_0D87E6:        LDA #$01                  ;
CODE_0D87E8:        ADC #$00                  ;
CODE_0D87EA:        TAY                       ;
CODE_0D87EB:        JSR CODE_0DACAA           ;
CODE_0D87EE:        JSR CODE_0DAC52           ;
CODE_0D87F1:        INC $0204                 ;
CODE_0D87F4:        LDA $0204                 ;
CODE_0D87F7:        BEQ CODE_0D8853           ;
CODE_0D87F9:        RTS                       ;

CODE_0D87FA:        INC $0F7F                 ;
CODE_0D87FD:        LDA $0F7F                 ;
CODE_0D8800:        CMP #$70                  ;
CODE_0D8802:        BNE CODE_0D880F           ;
CODE_0D8804:        LDA #$01                  ;
CODE_0D8806:        STA $0F7E                 ;
CODE_0D8809:        STZ $0F7F                 ;
CODE_0D880C:        INC $0772                 ;
CODE_0D880F:        RTS                       ;

CODE_0D8810:        LDA $0749                 ;
CODE_0D8813:        BNE CODE_0D8834           ;
CODE_0D8815:        LDA $0719                 ;
CODE_0D8818:        BEQ CODE_0D8822           ;
CODE_0D881A:        CMP #$08                  ;
CODE_0D881C:        BCS CODE_0D8834           ;
CODE_0D881E:        CMP #$01                  ;
CODE_0D8820:        BCC CODE_0D8834           ;
CODE_0D8822:        TAY                       ;
CODE_0D8823:        BEQ CODE_0D882D           ;
CODE_0D8825:        CPY #$03                  ;
CODE_0D8827:        BCS CODE_0D8847           ;
CODE_0D8829:        CPY #$02                  ;
CODE_0D882B:        BCS CODE_0D8834           ;
CODE_0D882D:        TYA                       ;
CODE_0D882E:        CLC                       ;
CODE_0D882F:        ADC #$0C                  ;
CODE_0D8831:        STA $0773                 ;
CODE_0D8834:        LDA $0749                 ;
CODE_0D8837:        CLC                       ;
CODE_0D8838:        ADC #$04                  ;
CODE_0D883A:        STA $0749                 ;
CODE_0D883D:        LDA $0719                 ;
CODE_0D8840:        ADC #$00                  ;
CODE_0D8842:        STA $0719                 ;
CODE_0D8845:        CMP #$06                  ;
CODE_0D8847:        BCC CODE_0D8856           ;
CODE_0D8849:        LDA #$06                  ;
CODE_0D884B:        LDA #$08                  ;
CODE_0D884D:        STA $07B1                 ;
CODE_0D8850:        STA $0E67                 ;
CODE_0D8853:        INC $0772                 ;
CODE_0D8856:        RTS                       ;

CODE_0D8857:        LDA $07B1                 ;
CODE_0D885A:        BNE CODE_0D8898           ;
CODE_0D885C:        STZ $0760                 ;
CODE_0D885F:        STZ $075C                 ;
CODE_0D8862:        STZ $0772                 ;
CODE_0D8865:        LDA $1680                 ;
CODE_0D8868:        CMP #$90                  ;
CODE_0D886A:        BEQ CODE_0D888C           ;
CODE_0D886C:        LDA $075F                 ;
CODE_0D886F:        CLC                       ;
CODE_0D8870:        ADC #$01                  ;
CODE_0D8872:        CMP #$0C                  ;
CODE_0D8874:        BCC CODE_0D8878           ;
CODE_0D8876:        LDA #$0C                  ;
CODE_0D8878:        CMP #$08                  ;
CODE_0D887A:        BNE CODE_0D8889           ;
CODE_0D887C:        LDA $0F2B                 ;
CODE_0D887F:        BEQ CODE_0D8889           ;
CODE_0D8881:        LDA #$01                  ;
CODE_0D8883:        STA $07FB                 ;
CODE_0D8886:        INC $075F                 ;
CODE_0D8889:        INC $075F                 ;
CODE_0D888C:        JSL CODE_0EC34C           ;
CODE_0D8890:        INC $0757                 ;
CODE_0D8893:        LDA #$01                  ;
CODE_0D8895:        STA $0770                 ;
CODE_0D8898:        RTS                       ;

CODE_0D8899:        LDA $0FF4                 ;
CODE_0D889C:        ORA $0FF5                 ;
CODE_0D889F:        AND #$40                  ;
CODE_0D88A1:        BEQ CODE_0D88B0           ;
CODE_0D88A3:        LDA #$01                  ;
CODE_0D88A5:        STA $07FB                 ;
CODE_0D88A8:        LDA #$FF                  ;
CODE_0D88AA:        STA $075A                 ;
CODE_0D88AD:        JSR CODE_0D9FF4           ;
CODE_0D88B0:        RTS                       ;

DATA_0D88B1:        db $FF,$FF,$F6,$FB,$F7,$FB,$F8,$FB ;
                    db $F9,$FB,$FA,$FB,$F6,$0E,$F7,$0E ;
                    db $F8,$0E,$F9,$0E,$FA,$0E,$FD,$FE ;

DATA_0D88C9:        db $FF,$41,$42,$44,$45,$48,$31,$32 ;
                    db $34,$35,$38,$00 ;

CODE_0D88D5:        LDA $0110,x               ;
CODE_0D88D8:        BEQ CODE_0D8898           ;
CODE_0D88DA:        CMP #$0B                  ;
CODE_0D88DC:        BCC CODE_0D88EA           ;
CODE_0D88DE:        LDA #$0B                  ;
CODE_0D88E0:        STA $0110,x               ;
CODE_0D88E3:        CPX #$09                  ;
CODE_0D88E5:        BEQ CODE_0D88EA           ;
CODE_0D88E7:        STA $0284                 ;
CODE_0D88EA:        TAY                       ;
CODE_0D88EB:        LDA $0138,x               ;
CODE_0D88EE:        BNE CODE_0D88F4           ;
CODE_0D88F0:        STA $0110,x               ;
CODE_0D88F3:        RTS                       ;

CODE_0D88F4:        DEC $0138,x               ;
CODE_0D88F7:        CMP #$2B                  ;
CODE_0D88F9:        BNE CODE_0D891B           ;
CODE_0D88FB:        CPY #$0B                  ;
CODE_0D88FD:        BNE CODE_0D8908           ;
CODE_0D88FF:        JSL CODE_048596           ;Increase lives by one
CODE_0D8903:        LDA #$05                  ;
CODE_0D8905:        STA $1603                 ;
CODE_0D8908:        LDA DATA_0D88C9,y               ;
CODE_0D890B:        LSR A                     ;
CODE_0D890C:        LSR A                     ;
CODE_0D890D:        LSR A                     ;
CODE_0D890E:        LSR A                     ;
CODE_0D890F:        TAX                       ;
CODE_0D8910:        LDA DATA_0D88C9,y               ;
CODE_0D8913:        AND #$0F                  ;
CODE_0D8915:        STA $0145,x               ;
CODE_0D8918:        JSR CODE_0DBB27           ;
CODE_0D891B:        LDX $9E                   ;
CODE_0D891D:        LDY $0B58                 ;
CODE_0D8920:        LDA $0801,y               ;
CODE_0D8923:        CMP #$F0                  ;
CODE_0D8925:        BEQ CODE_0D8936           ;
CODE_0D8927:        INY                       ;
CODE_0D8928:        INY                       ;
CODE_0D8929:        INY                       ;
CODE_0D892A:        INY                       ;
CODE_0D892B:        INY                       ;
CODE_0D892C:        INY                       ;
CODE_0D892D:        INY                       ;
CODE_0D892E:        INY                       ;
CODE_0D892F:        CPY #$90                  ;
CODE_0D8931:        BNE CODE_0D8920           ;
CODE_0D8933:        LDY $0B58                 ;
CODE_0D8936:        LDA $0124,x               ;
CODE_0D8939:        CMP #$18                  ;
CODE_0D893B:        BCC CODE_0D8942           ;
CODE_0D893D:        SBC #$01                  ;
CODE_0D893F:        STA $0124,x               ;
CODE_0D8942:        LDA $0124,x               ;
CODE_0D8945:        JSR CODE_0DEB8A           ;
CODE_0D8948:        STX $E0                   ;
CODE_0D894A:        TXA                       ;
CODE_0D894B:        ASL A                     ;
CODE_0D894C:        TAX                       ;
CODE_0D894D:        REP #$20                  ;
CODE_0D894F:        LDA $0E50,x               ;
CODE_0D8952:        STA $E2                   ;
CODE_0D8954:        CLC                       ;
CODE_0D8955:        ADC #$0008                ;
CODE_0D8958:        STA $DE                   ;
CODE_0D895A:        SEP #$20                  ;
CODE_0D895C:        LDX $E0                   ;
CODE_0D895E:        STZ $DD                   ;
CODE_0D8960:        LDA $E3                   ;
CODE_0D8962:        BEQ CODE_0D896A           ;
CODE_0D8964:        LDA $DD                   ;
CODE_0D8966:        ORA #$01                  ;
CODE_0D8968:        STA $DD                   ;
CODE_0D896A:        LDA $DD                   ;
CODE_0D896C:        STA $0C00,y               ;
CODE_0D896F:        LDA $0110,x               ;
CODE_0D8972:        CMP #$06                  ;
CODE_0D8974:        BCS CODE_0D897A           ;
CODE_0D8976:        STZ $DD                   ;
CODE_0D8978:        BRA CODE_0D8982           ;

CODE_0D897A:        CMP #$0B                  ;
CODE_0D897C:        BEQ CODE_0D8976           ;
CODE_0D897E:        LDA #$02                  ;
CODE_0D8980:        STA $DD                   ;
CODE_0D8982:        LDA $DF                   ;
CODE_0D8984:        BEQ CODE_0D898C           ;
CODE_0D8986:        LDA $DD                   ;
CODE_0D8988:        ORA #$01                  ;
CODE_0D898A:        STA $DD                   ;
CODE_0D898C:        LDA $DD                   ;
CODE_0D898E:        STA $0C04,y               ;
CODE_0D8991:        LDA $E2                   ;
CODE_0D8993:        STA $0800,y               ;
CODE_0D8996:        LDA $DE                   ;
CODE_0D8998:        STA $0804,y               ;
CODE_0D899B:        LDA $0110,x               ;
CODE_0D899E:        ASL A                     ;
CODE_0D899F:        TAX                       ;
CODE_0D89A0:        LDA DATA_0D88B1,x               ;
CODE_0D89A3:        STA $0802,y               ;
CODE_0D89A6:        LDA DATA_0D88B1+1,x               ;
CODE_0D89A9:        STA $0806,y               ;
CODE_0D89AC:        TAX                       ;
CODE_0D89AD:        LDA #$32                  ;
CODE_0D89AF:        STA $0803,y               ;
CODE_0D89B2:        CPX #$0E                  ;
CODE_0D89B4:        BNE CODE_0D89B7           ;
CODE_0D89B6:        INC A                     ;
CODE_0D89B7:        STA $0807,y               ;
CODE_0D89BA:        LDX $9E                   ;
CODE_0D89BC:        RTS                       ;

CODE_0D89BD:        LDA $073C                 ;
CODE_0D89C0:        ASL A                     ;
CODE_0D89C1:        TAX                       ;
CODE_0D89C2:        JMP (PNTR_0D89C5,x)       ;

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

CODE_0D89E5:        LDA $0770                 ;
CODE_0D89E8:        BEQ CODE_0D8A20           ;
CODE_0D89EA:        LDX #$03                  ;
CODE_0D89EC:        BRA CODE_0D8A18           ;

CODE_0D89EE:        LDA $0744                 ;
CODE_0D89F1:        PHA                       ;
CODE_0D89F2:        LDA $0756                 ;
CODE_0D89F5:        PHA                       ;
CODE_0D89F6:        STZ $0756                 ;
CODE_0D89F9:        LDA #$02                  ;
CODE_0D89FB:        STA $0744                 ;
CODE_0D89FE:        JSL CODE_0E98C3           ;
CODE_0D8A02:        PLA                       ;
CODE_0D8A03:        STA $0756                 ;
CODE_0D8A06:        PLA                       ;
CODE_0D8A07:        STA $0744                 ;
CODE_0D8A0A:        JMP CODE_0D8BC7           ;

CODE_0D8A0D:        LDA $5C                   ;
CODE_0D8A0F:        JSL CODE_0FD8F6           ;
CODE_0D8A13:        JSL CODE_0E9147           ;
CODE_0D8A17:        RTS                       ;

CODE_0D8A18:        STZ $0773                 ;
CODE_0D8A1B:        LDA #$01                  ;
CODE_0D8A1D:        STA $1200                 ;
CODE_0D8A20:        JMP CODE_0D8BC7           ;

CODE_0D8A23:        JSL CODE_0E98B8           ;
CODE_0D8A27:        RTS                       ;

CODE_0D8A28:        INC $073C                 ;
CODE_0D8A2B:        RTS                       ;

CODE_0D8A2C:        STA $0773                 ;
CODE_0D8A2F:        JMP CODE_0D8BC7           ;

CODE_0D8A32:        LDA #$00                  ;
CODE_0D8A34:        JSR CODE_0D8DBF           ;
CODE_0D8A37:        LDA $0753                 ;
CODE_0D8A3A:        BEQ CODE_0D8A53           ;
CODE_0D8A3C:        LDA #$15                  ;
CODE_0D8A3E:        STA $1706                 ;
CODE_0D8A41:        LDA #$1E                  ;
CODE_0D8A43:        STA $1708                 ;
CODE_0D8A46:        LDA #$12                  ;
CODE_0D8A48:        STA $170A                 ;
CODE_0D8A4B:        STA $170E                 ;
CODE_0D8A4E:        LDA #$10                  ;
CODE_0D8A50:        STA $170C                 ;
CODE_0D8A53:        JMP CODE_0D8BC7           ;

CODE_0D8A56:        JSR CODE_0DBB2D           ;
CODE_0D8A59:        REP #$30                  ;
CODE_0D8A5B:        LDX $1700                 ;
CODE_0D8A5E:        LDA #$7358                ;
CODE_0D8A61:        STA $1702,x               ;
CODE_0D8A64:        LDA #$0500                ;
CODE_0D8A67:        STA $1704,x               ;
CODE_0D8A6A:        SEP #$20                  ;
CODE_0D8A6C:        LDA $075F                 ;
CODE_0D8A6F:        INC A                     ;
CODE_0D8A70:        STA $1706,x               ;
CODE_0D8A73:        LDA #$20                  ;
CODE_0D8A75:        STA $1707,x               ;
CODE_0D8A78:        STA $1709,x               ;
CODE_0D8A7B:        STA $170B,x               ;
CODE_0D8A7E:        LDA #$24                  ;
CODE_0D8A80:        STA $1708,x               ;
CODE_0D8A83:        LDA $075C                 ;
CODE_0D8A86:        INC A                     ;
CODE_0D8A87:        STA $170A,x               ;
CODE_0D8A8A:        LDA #$FF                  ;
CODE_0D8A8C:        STA $170C,x               ;
CODE_0D8A8F:        LDA $0770                 ;
CODE_0D8A92:        BNE CODE_0D8AB0           ;
CODE_0D8A94:        LDA $701FF2               ;
CODE_0D8A98:        BNE CODE_0D8AB0           ;
CODE_0D8A9A:        LDA $7FFB05               ;
CODE_0D8A9E:        BMI CODE_0D8AB0           ;
CODE_0D8AA0:        LDA $7FFB00               ;
CODE_0D8AA4:        INC A                     ;
CODE_0D8AA5:        STA $1706,x               ;
CODE_0D8AA8:        LDA $7FFB01               ;
CODE_0D8AAC:        INC A                     ;
CODE_0D8AAD:        STA $170A,x               ;
CODE_0D8AB0:        REP #$20                  ;
CODE_0D8AB2:        TXA                       ;
CODE_0D8AB3:        CLC                       ;
CODE_0D8AB4:        ADC #$000A                ;
CODE_0D8AB7:        STA $1700                 ;
CODE_0D8ABA:        SEP #$30                  ;
CODE_0D8ABC:        JMP CODE_0D8BC7           ;

CODE_0D8ABF:        LDA $0759                 ;
CODE_0D8AC2:        BEQ CODE_0D8ADA           ;
CODE_0D8AC4:        STZ $0759                 ;
CODE_0D8AC7:        LDY #$00                  ;
CODE_0D8AC9:        JSR CODE_0D841C           ;
CODE_0D8ACC:        JSL CODE_0E8D2E           ;
CODE_0D8AD0:        LDA #$01                  ;
CODE_0D8AD2:        STA $0ED6                 ;
CODE_0D8AD5:        LDA #$02                  ;
CODE_0D8AD7:        JMP CODE_0D8B02           ;

CODE_0D8ADA:        INC $073C                 ;
CODE_0D8ADD:        JMP CODE_0D8BC7           ;

CODE_0D8AE0:        LDA $0770                 ;
CODE_0D8AE3:        BEQ CODE_0D8B2E           ;
CODE_0D8AE5:        CMP #$03                  ;
CODE_0D8AE7:        BEQ CODE_0D8B34           ;
CODE_0D8AE9:        LDA $0752                 ;
CODE_0D8AEC:        BNE CODE_0D8B2E           ;
CODE_0D8AEE:        LDY $5C                   ;
CODE_0D8AF0:        CPY #$03                  ;
CODE_0D8AF2:        BEQ CODE_0D8AF9           ;
CODE_0D8AF4:        LDA $0769                 ;
CODE_0D8AF7:        BNE CODE_0D8B2E           ;
CODE_0D8AF9:        JSR CODE_0DF85F           ;
CODE_0D8AFC:        JSL CODE_0E8F43           ;
CODE_0D8B00:        LDA #$01                  ;
CODE_0D8B02:        JSR CODE_0D8DBF           ;
CODE_0D8B05:        JSR CODE_0D8EE7           ;
CODE_0D8B08:        STZ $1204                 ;
CODE_0D8B0B:        STZ $1205                 ;
CODE_0D8B0E:        STZ $1206                 ;
CODE_0D8B11:        STZ $1209                 ;
CODE_0D8B14:        LDA #$20                  ;
CODE_0D8B16:        STA $120A                 ;
CODE_0D8B19:        STZ $1203                 ;
CODE_0D8B1C:        LDA #$02                  ;
CODE_0D8B1E:        STA $0E7F                 ;
CODE_0D8B21:        STZ $0E4F                 ;
CODE_0D8B24:        STZ $1201                 ;
CODE_0D8B27:        STZ $0E7E                 ;
CODE_0D8B2A:        STZ $0774                 ;
CODE_0D8B2D:        RTS                       ;

CODE_0D8B2E:        LDA #$09                  ;
CODE_0D8B30:        STA $073C                 ;
CODE_0D8B33:        RTS                       ;

CODE_0D8B34:        STZ $1204                 ;
CODE_0D8B37:        STZ $1205                 ;
CODE_0D8B3A:        STZ $1206                 ;
CODE_0D8B3D:        STZ $1209                 ;
CODE_0D8B40:        LDA #$20                  ;
CODE_0D8B42:        STA $120A                 ;
CODE_0D8B45:        STZ $1203                 ;
CODE_0D8B48:        LDA $0774                 ;
CODE_0D8B4B:        BEQ CODE_0D8B5F           ;
CODE_0D8B4D:        STZ $0E4F                 ;
CODE_0D8B50:        STZ $0774                 ;
CODE_0D8B53:        STZ $1201                 ;
CODE_0D8B56:        LDA #$02                  ;
CODE_0D8B58:        STA $0E7F                 ;
CODE_0D8B5B:        JSL CODE_0E8D2E           ;
CODE_0D8B5F:        JSR CODE_0D99CA           ;
CODE_0D8B62:        LDA #$09                  ;
CODE_0D8B64:        STA $07B0                 ;
CODE_0D8B67:        LDA #$03                  ;
CODE_0D8B69:        JSR CODE_0D8DBF           ;
CODE_0D8B6C:        JMP CODE_0D8BD0           ;

CODE_0D8B6F:        LDA $0774                 ;
CODE_0D8B72:        BEQ CODE_0D8B7A           ;
CODE_0D8B74:        CMP #$01                  ;
CODE_0D8B76:        BEQ CODE_0D8B87           ;
CODE_0D8B78:        BRA CODE_0D8B84           ;

CODE_0D8B7A:        LDA #$01                  ;
CODE_0D8B7C:        STA $0E7F                 ;
CODE_0D8B7F:        STZ $0E4F                 ;
CODE_0D8B82:        BRA CODE_0D8B9C           ;

CODE_0D8B84:        INC $0774                 ;
CODE_0D8B87:        JSR CODE_0DA054           ;
CODE_0D8B8A:        LDA $071F                 ;
CODE_0D8B8D:        BNE CODE_0D8B87           ;
CODE_0D8B8F:        DEC $071E                 ;
CODE_0D8B92:        BPL CODE_0D8B97           ;
CODE_0D8B94:        INC $073C                 ;
CODE_0D8B97:        LDA #$06                  ;
CODE_0D8B99:        STA $0773                 ;
CODE_0D8B9C:        RTS                       ;

CODE_0D8B9D:        LDA $0770                 ;
CODE_0D8BA0:        BNE CODE_0D8BD0           ;
CODE_0D8BA2:        JSL CODE_0FE893           ;
CODE_0D8BA6:        STZ $0EC2                 ;
CODE_0D8BA9:        LDA #$80                  ;
CODE_0D8BAB:        STA $0ED6                 ;
CODE_0D8BAE:        LDA #$05                  ;
CODE_0D8BB0:        JMP CODE_0D8A2C           ;

CODE_0D8BB3:        LDA $0770                 ;
CODE_0D8BB6:        BNE CODE_0D8BD0           ;
CODE_0D8BB8:        LDX #$00                  ;
CODE_0D8BBA:        STA $0300,x               ;
CODE_0D8BBD:        STA $0400,x               ;
CODE_0D8BC0:        DEX                       ;
CODE_0D8BC1:        BNE CODE_0D8BBA           ;
CODE_0D8BC3:        JSL CODE_0FF317           ;
CODE_0D8BC7:        INC $073C                 ;
CODE_0D8BCA:        RTS                       ;

CODE_0D8BCB:        LDA #$FA                  ;
CODE_0D8BCD:        JSR CODE_0DBB30           ;
CODE_0D8BD0:        INC $0772                 ;
CODE_0D8BD3:        RTS                       ;

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

CODE_0D8DB7:        LDA $077A                 ;
CODE_0D8DBA:        BEQ CODE_0D8DD4           ;
CODE_0D8DBC:        INY                       ;
CODE_0D8DBD:        BRA CODE_0D8DD4           ;

CODE_0D8DBF:        PHA                       ;
CODE_0D8DC0:        ASL A                     ;
CODE_0D8DC1:        TAY                       ;
CODE_0D8DC2:        BEQ CODE_0D8DB7           ;
CODE_0D8DC4:        CPY #$04                  ;
CODE_0D8DC6:        BCC CODE_0D8DD4           ;
CODE_0D8DC8:        CPY #$08                  ;
CODE_0D8DCA:        BCC CODE_0D8DCE           ;
CODE_0D8DCC:        LDY #$08                  ;
CODE_0D8DCE:        LDA $077A                 ;
CODE_0D8DD1:        BNE CODE_0D8DD4           ;
CODE_0D8DD3:        INY                       ;
CODE_0D8DD4:        STY $F3                   ;
CODE_0D8DD6:        LDX DATA_0D8DA3,y               ;
CODE_0D8DD9:        LDA $075F                 ;
CODE_0D8DDC:        CMP #$08                  ;
CODE_0D8DDE:        BNE CODE_0D8DEA           ;
CODE_0D8DE0:        CPY #$07                  ;
CODE_0D8DE2:        BNE CODE_0D8DEA           ;
CODE_0D8DE4:        DEY                       ;
CODE_0D8DE5:        LDX DATA_0D8DA3,y               ;
CODE_0D8DE8:        STY $F3                   ;
CODE_0D8DEA:        REP #$30                  ;
CODE_0D8DEC:        LDA DATA_0D8DAD,y               ;
CODE_0D8DEF:        AND #$00FF                ;
CODE_0D8DF2:        XBA                       ;
CODE_0D8DF3:        STA $DE                   ;
CODE_0D8DF5:        TXA                       ;
CODE_0D8DF6:        AND #$00FF                ;
CODE_0D8DF9:        ORA $DE                   ;
CODE_0D8DFB:        TAX                       ;
CODE_0D8DFC:        LDY #$0000                ;
CODE_0D8DFF:        SEP #$20                  ;
CODE_0D8E01:        LDA DATA_0D8BD4,x               ;
CODE_0D8E04:        CMP #$FF                  ;
CODE_0D8E06:        BEQ CODE_0D8E0F           ;
CODE_0D8E08:        STA $1702,y               ;
CODE_0D8E0B:        INX                       ;
CODE_0D8E0C:        INY                       ;
CODE_0D8E0D:        BRA CODE_0D8E01           ;

CODE_0D8E0F:        LDA #$FF                  ;
CODE_0D8E11:        STA $1702,y               ;
CODE_0D8E14:        SEP #$10                  ;
CODE_0D8E16:        PLA                       ;
CODE_0D8E17:        TAX                       ;
CODE_0D8E18:        CMP #$04                  ;
CODE_0D8E1A:        BCC CODE_0D8E1F           ;
CODE_0D8E1C:        JMP CODE_0D8EB3           ;

CODE_0D8E1F:        DEX                       ;
CODE_0D8E20:        BNE CODE_0D8E68           ;
CODE_0D8E22:        LDA $075A                 ;
CODE_0D8E25:        INC A                     ;
CODE_0D8E26:        CMP #$0A                  ;
CODE_0D8E28:        BCC CODE_0D8E56           ;
CODE_0D8E2A:        STZ $E4                   ;
CODE_0D8E2C:        STZ $E5                   ;
CODE_0D8E2E:        SEC                       ;
CODE_0D8E2F:        SBC #$64                  ;
CODE_0D8E31:        BCC CODE_0D8E37           ;
CODE_0D8E33:        INC $E4                   ;
CODE_0D8E35:        BRA CODE_0D8E2E           ;

CODE_0D8E37:        CLC                       ;
CODE_0D8E38:        ADC #$64                  ;
CODE_0D8E3A:        SEC                       ;
CODE_0D8E3B:        SBC #$0A                  ;
CODE_0D8E3D:        BCC CODE_0D8E43           ;
CODE_0D8E3F:        INC $E5                   ;
CODE_0D8E41:        BRA CODE_0D8E3A           ;

CODE_0D8E43:        CLC                       ;
CODE_0D8E44:        ADC #$0A                  ;
CODE_0D8E46:        STA $E6                   ;
CODE_0D8E48:        LDY $E4                   ;
CODE_0D8E4A:        BEQ CODE_0D8E4F           ;
CODE_0D8E4C:        STY $170E                 ;
CODE_0D8E4F:        LDA $E5                   ;
CODE_0D8E51:        STA $1710                 ;
CODE_0D8E54:        LDA $E6                   ;
CODE_0D8E56:        STA $1712                 ;
CODE_0D8E59:        LDY $075F                 ;
CODE_0D8E5C:        INY                       ;
CODE_0D8E5D:        STY $172C                 ;
CODE_0D8E60:        LDY $075C                 ;
CODE_0D8E63:        INY                       ;
CODE_0D8E64:        STY $1730                 ;
CODE_0D8E67:        RTS                       ;

CODE_0D8E68:        LDA $077A                 ;
CODE_0D8E6B:        BEQ CODE_0D8EB2           ;
CODE_0D8E6D:        LDA $0753                 ;
CODE_0D8E70:        DEX                       ;
CODE_0D8E71:        BNE CODE_0D8E89           ;
CODE_0D8E73:        LDY $0770                 ;
CODE_0D8E76:        CPY #$03                  ;
CODE_0D8E78:        BEQ CODE_0D8E89           ;
CODE_0D8E7A:        LDA $0761                 ;
CODE_0D8E7D:        BMI CODE_0D8E86           ;
CODE_0D8E7F:        LDA $0753                 ;
CODE_0D8E82:        EOR #$01                  ;
CODE_0D8E84:        BRA CODE_0D8E89           ;

CODE_0D8E86:        LDA $0753                 ;
CODE_0D8E89:        LSR A                     ;
CODE_0D8E8A:        BCC CODE_0D8EB2           ;
CODE_0D8E8C:        LDY #$09                  ;
CODE_0D8E8E:        LDA $F3                   ;
CODE_0D8E90:        CMP #$04                  ;
CODE_0D8E92:        BEQ CODE_0D8E98           ;
CODE_0D8E94:        CMP #$06                  ;
CODE_0D8E96:        BNE CODE_0D8EA9           ;
CODE_0D8E98:        LDA DATA_0D8D7A,y               ;
CODE_0D8E9B:        STA $1706,y               ;
CODE_0D8E9E:        LDA DATA_0D8D84,y               ;
CODE_0D8EA1:        STA $1714,y               ;
CODE_0D8EA4:        DEY                       ;
CODE_0D8EA5:        BPL CODE_0D8E98           ;
CODE_0D8EA7:        BRA CODE_0D8EB2           ;

CODE_0D8EA9:        LDA DATA_0D8D8E,y               ;
CODE_0D8EAC:        STA $1706,y               ;
CODE_0D8EAF:        DEY                       ;
CODE_0D8EB0:        BPL CODE_0D8EA9           ;
CODE_0D8EB2:        RTS                       ;

CODE_0D8EB3:        PHA                       ;
CODE_0D8EB4:        LDY $1700                 ;
CODE_0D8EB7:        PHX                       ;
CODE_0D8EB8:        LDX #$00                  ;
CODE_0D8EBA:        LDA DATA_0D8D39,x               ;
CODE_0D8EBD:        STA $1702,y               ;
CODE_0D8EC0:        INX                       ;
CODE_0D8EC1:        INY                       ;
CODE_0D8EC2:        CMP #$FF                  ;
CODE_0D8EC4:        BNE CODE_0D8EBA           ;
CODE_0D8EC6:        PLX                       ;
CODE_0D8EC7:        PLA                       ;
CODE_0D8EC8:        SEC                       ;
CODE_0D8EC9:        SBC #$80                  ;
CODE_0D8ECB:        TAX                       ;
CODE_0D8ECC:        STY $1700                 ;
CODE_0D8ECF:        LDA DATA_0D8D98,x               ;
CODE_0D8ED2:        STA $16F9,y               ;
CODE_0D8ED5:        RTS                       ;

CODE_0D8ED6:        LDA $07B0                 ;
CODE_0D8ED9:        BNE CODE_0D8EEF           ;
CODE_0D8EDB:        LDA $0770                 ;
CODE_0D8EDE:        CMP #$03                  ;
CODE_0D8EE0:        BEQ CODE_0D8EE7           ;
CODE_0D8EE2:        LDA #$01                  ;
CODE_0D8EE4:        STA $0E7F                 ;
CODE_0D8EE7:        LDA #$07                  ;
CODE_0D8EE9:        STA $07B0                 ;
CODE_0D8EEC:        INC $073C                 ;
CODE_0D8EEF:        RTS                       ;

CODE_0D8EF0:        LDA $0EC9                 ;
CODE_0D8EF3:        BNE CODE_0D8EEF           ;
CODE_0D8EF5:        REP #$30                  ;
CODE_0D8EF7:        LDY $1A00                 ;
CODE_0D8EFA:        STY $00                   ;
CODE_0D8EFC:        LDA $0720                 ;
CODE_0D8EFF:        STA $1A02,y               ;
CODE_0D8F02:        XBA                       ;
CODE_0D8F03:        STA $0ECC                 ;
CODE_0D8F06:        LDA #$3D80                ;
CODE_0D8F09:        STA $1A04,y               ;
CODE_0D8F0C:        LDA #$0024                ;
CODE_0D8F0F:        STA $1A06,y               ;
CODE_0D8F12:        STA $1A08,y               ;
CODE_0D8F15:        STA $1A0A,y               ;
CODE_0D8F18:        STA $1A0C,y               ;
CODE_0D8F1B:        SEP #$30                  ;
CODE_0D8F1D:        LDX #$00                  ;
CODE_0D8F1F:        LDA $0EE7                 ;
CODE_0D8F22:        BEQ CODE_0D8F34           ;
CODE_0D8F24:        STA $0EE6                 ;
CODE_0D8F27:        LDA $0720                 ;
CODE_0D8F2A:        STA $0EF5                 ;
CODE_0D8F2D:        LDA $0721                 ;
CODE_0D8F30:        INC A                     ;
CODE_0D8F31:        STA $0EF4                 ;
CODE_0D8F34:        STX $02                   ;
CODE_0D8F36:        LDA $06A1,x               ;
CODE_0D8F39:        AND #$C0                  ;
CODE_0D8F3B:        ASL A                     ;
CODE_0D8F3C:        ROL A                     ;
CODE_0D8F3D:        ROL A                     ;
CODE_0D8F3E:        TAY                       ;
CODE_0D8F3F:        LDA DATA_0D910B,y               ;
CODE_0D8F42:        STA $06                   ;
CODE_0D8F44:        LDA DATA_0D910B+4,y               ;
CODE_0D8F47:        STA $07                   ;
CODE_0D8F49:        REP #$30                  ;
CODE_0D8F4B:        TXA                       ;
CODE_0D8F4C:        AND #$00FF                ;
CODE_0D8F4F:        TAX                       ;
CODE_0D8F50:        LDA $06A1,x               ;
CODE_0D8F53:        AND #$003F                ;
CODE_0D8F56:        ASL A                     ;
CODE_0D8F57:        ASL A                     ;
CODE_0D8F58:        ASL A                     ;
CODE_0D8F59:        STA $03                   ;
CODE_0D8F5B:        LDA $071F                 ;
CODE_0D8F5E:        AND #$0001                ;
CODE_0D8F61:        EOR #$0001                ;
CODE_0D8F64:        ASL A                     ;
CODE_0D8F65:        ASL A                     ;
CODE_0D8F66:        ADC $03                   ;
CODE_0D8F68:        TAY                       ;
CODE_0D8F69:        LDX $00                   ;
CODE_0D8F6B:        LDA ($06),y               ;
CODE_0D8F6D:        STA $1A0E,x               ;
CODE_0D8F70:        INY                       ;
CODE_0D8F71:        INY                       ;
CODE_0D8F72:        LDA ($06),y               ;
CODE_0D8F74:        STA $1A10,x               ;
CODE_0D8F77:        INC $00                   ;
CODE_0D8F79:        INC $00                   ;
CODE_0D8F7B:        INC $00                   ;
CODE_0D8F7D:        INC $00                   ;
CODE_0D8F7F:        SEP #$30                  ;
CODE_0D8F81:        LDX $02                   ;
CODE_0D8F83:        INX                       ;
CODE_0D8F84:        CPX #$0D                  ;
CODE_0D8F86:        BCS CODE_0D8F8B           ;
CODE_0D8F88:        JMP CODE_0D8F34           ;

CODE_0D8F8B:        REP #$30                  ;
CODE_0D8F8D:        LDY $1A00                 ;
CODE_0D8F90:        LDA $1A0E,y               ;
CODE_0D8F93:        CMP #$18A2                ;
CODE_0D8F96:        BEQ CODE_0D8F9D           ;
CODE_0D8F98:        CMP #$18A3                ;
CODE_0D8F9B:        BNE CODE_0D8FA9           ;
CODE_0D8F9D:        STA $1A06,y               ;
CODE_0D8FA0:        STA $1A08,y               ;
CODE_0D8FA3:        STA $1A0A,y               ;
CODE_0D8FA6:        STA $1A0C,y               ;
CODE_0D8FA9:        LDA $00                   ;
CODE_0D8FAB:        CLC                       ;
CODE_0D8FAC:        ADC #$000E                ;
CODE_0D8FAF:        TAY                       ;
CODE_0D8FB0:        LDA #$FFFF                ;
CODE_0D8FB3:        STA $1A02,y               ;
CODE_0D8FB6:        STY $1A00                 ;
CODE_0D8FB9:        LDA $0743                 ;
CODE_0D8FBC:        AND #$00FF                ;
CODE_0D8FBF:        BNE CODE_0D9007           ;
CODE_0D8FC1:        LDA $5C                   ;
CODE_0D8FC3:        AND #$00FF                ;
CODE_0D8FC6:        BEQ CODE_0D9007           ;
CODE_0D8FC8:        CMP #$0003                ;
CODE_0D8FCB:        BEQ CODE_0D9007           ;
CODE_0D8FCD:        LDA $19F8,y               ;
CODE_0D8FD0:        CMP #$086A                ;
CODE_0D8FD3:        BEQ CODE_0D8FDA           ;
CODE_0D8FD5:        CMP #$0863                ;
CODE_0D8FD8:        BNE CODE_0D8FDD           ;
CODE_0D8FDA:        INC $0ECE                 ;
CODE_0D8FDD:        LDA $19F8,y               ;
CODE_0D8FE0:        CMP #$0024                ;
CODE_0D8FE3:        BEQ CODE_0D8FFA           ;
CODE_0D8FE5:        CMP #$10A4                ;
CODE_0D8FE8:        BEQ CODE_0D8FFA           ;
CODE_0D8FEA:        CMP #$0A08                ;
CODE_0D8FED:        BNE CODE_0D9003           ;
CODE_0D8FEF:        LDA $0ECE                 ;
CODE_0D8FF2:        AND #$FF00                ;
CODE_0D8FF5:        STA $0ECE                 ;
CODE_0D8FF8:        BRA CODE_0D9003           ;

CODE_0D8FFA:        LDA $0ECE                 ;
CODE_0D8FFD:        ORA #$0100                ;
CODE_0D9000:        STA $0ECE                 ;
CODE_0D9003:        JSL CODE_0E87FF           ;
CODE_0D9007:        SEP #$30                  ;
CODE_0D9009:        INC $0721                 ;
CODE_0D900C:        LDA $0721                 ;
CODE_0D900F:        AND #$1F                  ;
CODE_0D9011:        BNE CODE_0D901E           ;
CODE_0D9013:        STZ $0721                 ;
CODE_0D9016:        LDA $0720                 ;
CODE_0D9019:        EOR #$04                  ;
CODE_0D901B:        STA $0720                 ;
CODE_0D901E:        LDA #$06                  ;
CODE_0D9020:        STA $0773                 ;
CODE_0D9023:        RTS                       ;

CODE_0D9024:        RTS                       ;

CODE_0D9025:        RTS                       ;

DATA_0D9026:        db $45,$0C,$45,$0C,$47,$0C,$47,$0C
                    db $47,$0C,$47,$0C,$47,$0C,$47,$0C
                    db $57,$0C,$58,$0C,$59,$0C,$5A,$0C
                    db $24,$00,$24,$00,$24,$00,$24,$00

CODE_0D9046:        LDY $1700                 ;
CODE_0D9049:        INY                       ;
CODE_0D904A:        LDA #$03                  ;
CODE_0D904C:        JSR CODE_0D9094           ;
CODE_0D904F:        LDA #$06                  ;
CODE_0D9051:        STA $0773                 ;
CODE_0D9054:        JMP CODE_0D9085           ;

CODE_0D9057:        JSR CODE_0D9063           ;
CODE_0D905A:        INC $03F2                 ;
CODE_0D905D:        DEC $03EE,x               ;
CODE_0D9060:        RTS                       ;

CODE_0D9061:        LDA #$00                  ;
CODE_0D9063:        LDY #$03                  ;
CODE_0D9065:        CMP #$00                  ;
CODE_0D9067:        BEQ CODE_0D907D           ;
CODE_0D9069:        LDY #$00                  ;
CODE_0D906B:        CMP #$54                  ;
CODE_0D906D:        BEQ CODE_0D907D           ;
CODE_0D906F:        CMP #$49                  ;
CODE_0D9071:        BEQ CODE_0D907D           ;
CODE_0D9073:        INY                       ;
CODE_0D9074:        CMP #$5A                  ;
CODE_0D9076:        BEQ CODE_0D907D           ;
CODE_0D9078:        CMP #$4A                  ;
CODE_0D907A:        BEQ CODE_0D907D           ;
CODE_0D907C:        INY                       ;
CODE_0D907D:        TYA                       ;
CODE_0D907E:        LDY $1700                 ;
CODE_0D9081:        INY                       ;
CODE_0D9082:        JSR CODE_0D9094           ;
CODE_0D9085:        REP #$20                  ;
CODE_0D9087:        LDA $1700                 ;
CODE_0D908A:        CLC                       ;
CODE_0D908B:        ADC #$0010                ;
CODE_0D908E:        STA $1700                 ;
CODE_0D9091:        SEP #$20                  ;
CODE_0D9093:        RTS                       ;

CODE_0D9094:        STX $00                   ;
CODE_0D9096:        STY $01                   ;
CODE_0D9098:        ASL A                     ;
CODE_0D9099:        ASL A                     ;
CODE_0D909A:        ASL A                     ;
CODE_0D909B:        TAX                       ;
CODE_0D909C:        LDY #$00                  ;
CODE_0D909E:        LDA $06                   ;
CODE_0D90A0:        CMP #$D0                  ;
CODE_0D90A2:        BCC CODE_0D90A6           ;
CODE_0D90A4:        LDY #$04                  ;
CODE_0D90A6:        STY $03                   ;
CODE_0D90A8:        AND #$0F                  ;
CODE_0D90AA:        ASL A                     ;
CODE_0D90AB:        STA $04                   ;
CODE_0D90AD:        STZ $05                   ;
CODE_0D90AF:        LDA $02                   ;
CODE_0D90B1:        CLC                       ;
CODE_0D90B2:        ADC #$20                  ;
CODE_0D90B4:        ASL A                     ;
CODE_0D90B5:        ROL $05                   ;
CODE_0D90B7:        ASL A                     ;
CODE_0D90B8:        ROL $05                   ;
CODE_0D90BA:        ADC $04                   ;
CODE_0D90BC:        STA $04                   ;
CODE_0D90BE:        LDA $05                   ;
CODE_0D90C0:        ADC $03                   ;
CODE_0D90C2:        STA $05                   ;
CODE_0D90C4:        LDY $01                   ;
CODE_0D90C6:        REP #$30                  ;
CODE_0D90C8:        TYA                       ;
CODE_0D90C9:        AND #$00FF                ;
CODE_0D90CC:        TAY                       ;
CODE_0D90CD:        TXA                       ;
CODE_0D90CE:        AND #$00FF                ;
CODE_0D90D1:        TAX                       ;
CODE_0D90D2:        LDA $04                   ;
CODE_0D90D4:        XBA                       ;
CODE_0D90D5:        STA $1701,y               ;
CODE_0D90D8:        CLC                       ;
CODE_0D90D9:        ADC #$2000                ;
CODE_0D90DC:        STA $1709,y               ;
CODE_0D90DF:        LDA #$0300                ;
CODE_0D90E2:        STA $1703,y               ;
CODE_0D90E5:        STA $170B,y               ;
CODE_0D90E8:        LDA DATA_0D9026,x               ;
CODE_0D90EB:        STA $1705,y               ;
CODE_0D90EE:        LDA DATA_0D9026+2,x               ;
CODE_0D90F1:        STA $1707,y               ;
CODE_0D90F4:        LDA DATA_0D9026+4,x               ;
CODE_0D90F7:        STA $170D,y               ;
CODE_0D90FA:        LDA DATA_0D9026+6,x               ;
CODE_0D90FD:        STA $170F,y               ;
CODE_0D9100:        LDA #$FFFF                ;
CODE_0D9103:        STA $1711,y               ;
CODE_0D9106:        SEP #$30                  ;
CODE_0D9108:        LDX $00                   ;
CODE_0D910A:        RTS                       ;

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

CODE_0D9693:        ASL A                     ;
CODE_0D9694:        TAY                       ;
CODE_0D9695:        PLA                       ;
CODE_0D9696:        STA $04                   ;
CODE_0D9698:        PLA                       ;
CODE_0D9699:        STA $05                   ;
CODE_0D969B:        INY                       ;
CODE_0D969C:        LDA ($04),y               ;
CODE_0D969E:        STA $06                   ;
CODE_0D96A0:        INY                       ;
CODE_0D96A1:        LDA ($04),y               ;
CODE_0D96A3:        STA $07                   ;
CODE_0D96A5:        JMP ($0006)               ;

CODE_0D96A8:        LDA $4212                 ;
CODE_0D96AB:        LSR A                     ;
CODE_0D96AC:        BCS CODE_0D96A8           ;
CODE_0D96AE:        STZ $4016                 ;
CODE_0D96B1:        LDA $701FF4               ;
CODE_0D96B5:        TAX                       ;
CODE_0D96B6:        LDA $4218,x               ;
CODE_0D96B9:        STA $0FF8                 ;
CODE_0D96BC:        TAY                       ;
CODE_0D96BD:        EOR $0FFD                 ;
CODE_0D96C0:        AND $0FF8                 ;
CODE_0D96C3:        STA $0FFA                 ;
CODE_0D96C6:        STY $0FFD                 ;
CODE_0D96C9:        LDA $4219,x               ;
CODE_0D96CC:        STA $0FF4                 ;
CODE_0D96CF:        TAY                       ;
CODE_0D96D0:        EOR $0FFC                 ;
CODE_0D96D3:        AND $0FF4                 ;
CODE_0D96D6:        STA $0FF6                 ;
CODE_0D96D9:        STY $0FFC                 ;
CODE_0D96DC:        RTS                       ;

CODE_0D96DD:        STZ $00                   ;
CODE_0D96DF:        REP #$20                  ;
CODE_0D96E1:        STZ $2102                 ;
CODE_0D96E4:        LDA #$0004                ;
CODE_0D96E7:        STA $01                   ;
CODE_0D96E9:        LDA #$0008                ;
CODE_0D96EC:        STA $03                   ;
CODE_0D96EE:        LDA #$0220                ;
CODE_0D96F1:        STA $05                   ;
CODE_0D96F3:        LDX #$01                  ;
CODE_0D96F5:        STX $420B                 ;
CODE_0D96F8:        SEP #$20                  ;
CODE_0D96FA:        LDA #$80                  ;
CODE_0D96FC:        STA $2103                 ;
CODE_0D96FF:        STZ $2102                 ;
CODE_0D9702:        LDA $0B76                 ;
CODE_0D9705:        BNE CODE_0D9714           ;
CODE_0D9707:        JSR CODE_0D9755           ;
CODE_0D970A:        LDA $028C                 ;
CODE_0D970D:        BNE CODE_0D9751           ;
CODE_0D970F:        LDA $028D                 ;
CODE_0D9712:        BEQ CODE_0D9751           ;
CODE_0D9714:        REP #$20                  ;
CODE_0D9716:        LDA $028A                 ;
CODE_0D9719:        STA $2116                 ;
CODE_0D971C:        LDA #$1801                ;
CODE_0D971F:        STA $00                   ;
CODE_0D9721:        LDA $0285                 ;
CODE_0D9724:        STA $02                   ;
CODE_0D9726:        LDY $0287                 ;
CODE_0D9729:        STY $04                   ;
CODE_0D972B:        LDA $0288                 ;
CODE_0D972E:        STA $05                   ;
CODE_0D9730:        STX $420B                 ;
CODE_0D9733:        SEP #$20                  ;
CODE_0D9735:        LDA $0B76                 ;
CODE_0D9738:        BEQ CODE_0D9751           ;
CODE_0D973A:        DEC $0B76                 ;
CODE_0D973D:        BEQ CODE_0D9751           ;
CODE_0D973F:        LDA $0286                 ;
CODE_0D9742:        CLC                       ;
CODE_0D9743:        ADC #$08                  ;
CODE_0D9745:        STA $0286                 ;
CODE_0D9748:        LDA $028B                 ;
CODE_0D974B:        CLC                       ;
CODE_0D974C:        ADC #$04                  ;
CODE_0D974E:        STA $028B                 ;
CODE_0D9751:        STZ $028C                 ;
CODE_0D9754:        RTS                       ;

CODE_0D9755:        LDA $028E                 ;
CODE_0D9758:        BEQ CODE_0D977B           ;
CODE_0D975A:        REP #$20                  ;
CODE_0D975C:        LDA $0295                 ;
CODE_0D975F:        STA $2116                 ;
CODE_0D9762:        LDA #$1801                ;
CODE_0D9765:        STA $00                   ;
CODE_0D9767:        LDA $028F                 ;
CODE_0D976A:        STA $02                   ;
CODE_0D976C:        LDY $0291                 ;
CODE_0D976F:        STY $04                   ;
CODE_0D9771:        LDA $0293                 ;
CODE_0D9774:        STA $05                   ;
CODE_0D9776:        STX $420B                 ;
CODE_0D9779:        SEP #$20                  ;
CODE_0D977B:        RTS                       ;

CODE_0D977C:        REP #$10                  ;
CODE_0D977E:        STZ $06                   ;
CODE_0D9780:        LDY #$0000                ;
CODE_0D9783:        LDA [$00],y               ;
CODE_0D9785:        BPL CODE_0D978A           ;
CODE_0D9787:        SEP #$30                  ;
CODE_0D9789:        RTS                       ;

CODE_0D978A:        STA $04                   ;
CODE_0D978C:        INY                       ;
CODE_0D978D:        LDA [$00],y               ;
CODE_0D978F:        STA $03                   ;
CODE_0D9791:        INY                       ;
CODE_0D9792:        LDA [$00],y               ;
CODE_0D9794:        AND #$80                  ;
CODE_0D9796:        ASL A                     ;
CODE_0D9797:        ROL A                     ;
CODE_0D9798:        STA $07                   ;
CODE_0D979A:        LDA [$00],y               ;
CODE_0D979C:        AND #$40                  ;
CODE_0D979E:        STA $05                   ;
CODE_0D97A0:        LSR A                     ;
CODE_0D97A1:        LSR A                     ;
CODE_0D97A2:        LSR A                     ;
CODE_0D97A3:        ORA #$01                  ;
CODE_0D97A5:        STA $4310                 ;
CODE_0D97A8:        LDA #$18                  ;
CODE_0D97AA:        STA $4311                 ;
CODE_0D97AD:        REP #$20                  ;
CODE_0D97AF:        LDA $03                   ;
CODE_0D97B1:        STA $2116                 ;
CODE_0D97B4:        LDA [$00],y               ;
CODE_0D97B6:        XBA                       ;
CODE_0D97B7:        AND #$3FFF                ;
CODE_0D97BA:        TAX                       ;
CODE_0D97BB:        INX                       ;
CODE_0D97BC:        STX $4315                 ;
CODE_0D97BF:        INY                       ;
CODE_0D97C0:        INY                       ;
CODE_0D97C1:        TYA                       ;
CODE_0D97C2:        CLC                       ;
CODE_0D97C3:        ADC $00                   ;
CODE_0D97C5:        STA $4312                 ;
CODE_0D97C8:        LDA $05                   ;
CODE_0D97CA:        BEQ CODE_0D9800           ;
CODE_0D97CC:        INX                       ;
CODE_0D97CD:        TXA                       ;
CODE_0D97CE:        LSR A                     ;
CODE_0D97CF:        TAX                       ;
CODE_0D97D0:        STX $4315                 ;
CODE_0D97D3:        SEP #$20                  ;
CODE_0D97D5:        LDA $05                   ;
CODE_0D97D7:        LSR A                     ;
CODE_0D97D8:        LSR A                     ;
CODE_0D97D9:        LSR A                     ;
CODE_0D97DA:        STA $4310                 ;
CODE_0D97DD:        LDA $07                   ;
CODE_0D97DF:        STA $2115                 ;
CODE_0D97E2:        LDA #$02                  ;
CODE_0D97E4:        STA $420B                 ;
CODE_0D97E7:        LDA #$19                  ;
CODE_0D97E9:        STA $4311                 ;
CODE_0D97EC:        REP #$21                  ;
CODE_0D97EE:        TYA                       ;
CODE_0D97EF:        ADC $00                   ;
CODE_0D97F1:        INC A                     ;
CODE_0D97F2:        STA $4312                 ;
CODE_0D97F5:        LDA $03                   ;
CODE_0D97F7:        STA $2116                 ;
CODE_0D97FA:        STX $4315                 ;
CODE_0D97FD:        LDX #$0002                ;
CODE_0D9800:        STX $03                   ;
CODE_0D9802:        TYA                       ;
CODE_0D9803:        CLC                       ;
CODE_0D9804:        ADC $03                   ;
CODE_0D9806:        TAY                       ;
CODE_0D9807:        SEP #$20                  ;
CODE_0D9809:        LDA $07                   ;
CODE_0D980B:        ORA #$80                  ;
CODE_0D980D:        STA $2115                 ;
CODE_0D9810:        LDA #$02                  ;
CODE_0D9812:        STA $420B                 ;
CODE_0D9815:        LDA [$00],y               ;
CODE_0D9817:        BMI CODE_0D981C           ;
CODE_0D9819:        JMP CODE_0D978A           ;

CODE_0D981C:        SEP #$30                  ;
CODE_0D981E:        RTS                       ;

DATA_0D981F:        db $EF,$00,$06,$00,$62,$00,$06,$00 ;
                    db $62,$00,$06,$00,$6D,$00,$02,$00 ;
                    db $6D,$00,$02,$00,$7A,$00,$03,$00 ;

DATA_0D9837:        db $06,$0C,$0C,$18,$18,$24 ;

CODE_0D983D:        STA $00
CODE_0D983F:        JSR CODE_0D9848           ;
CODE_0D9842:        LDA $00                   ;
CODE_0D9844:        LSR A                     ;
CODE_0D9845:        LSR A                     ;
CODE_0D9846:        LSR A                     ;
CODE_0D9847:        LSR A                     ;
CODE_0D9848:        INC A                     ;
CODE_0D9849:        AND #$0F                  ;
CODE_0D984B:        CMP #$06                  ;
CODE_0D984D:        BCS CODE_0D98A9           ;
CODE_0D984F:        PHA                       ;
CODE_0D9850:        ASL A                     ;
CODE_0D9851:        ASL A                     ;
CODE_0D9852:        TAY                       ;
CODE_0D9853:        LDA #$58                  ;
CODE_0D9855:        LDX #$20                  ;
CODE_0D9857:        CPY #$00                  ;
CODE_0D9859:        BNE CODE_0D985F           ;
CODE_0D985B:        LDA #$02                  ;
CODE_0D985D:        LDX #$08                  ;
CODE_0D985F:        STX $F9                   ;
CODE_0D9861:        LDX $1700                 ;
CODE_0D9864:        STA $1702,x               ;
CODE_0D9867:        LDA DATA_0D981F,y               ;
CODE_0D986A:        STA $1703,x               ;
CODE_0D986D:        LDA DATA_0D981F+1,y               ;
CODE_0D9870:        STA $1704,x               ;
CODE_0D9873:        LDA DATA_0D981F+2,y               ;
CODE_0D9876:        STA $03                   ;
CODE_0D9878:        ASL A                     ;
CODE_0D9879:        DEC A                     ;
CODE_0D987A:        STA $1705,x               ;
CODE_0D987D:        STX $02                   ;
CODE_0D987F:        PLA                       ;
CODE_0D9880:        TAX                       ;
CODE_0D9881:        LDA DATA_0D9837,x               ;
CODE_0D9884:        SEC                       ;
CODE_0D9885:        SBC DATA_0D981F+2,y               ;
CODE_0D9888:        TAY                       ;
CODE_0D9889:        LDX $02                   ;
CODE_0D988B:        LDA $07C8,y               ;
CODE_0D988E:        STA $1706,x               ;
CODE_0D9891:        LDA $F9                   ;
CODE_0D9893:        STA $1707,x               ;
CODE_0D9896:        INX                       ;
CODE_0D9897:        INX                       ;
CODE_0D9898:        INY                       ;
CODE_0D9899:        DEC $03                   ;
CODE_0D989B:        BNE CODE_0D988B           ;
CODE_0D989D:        LDA #$FF                  ;
CODE_0D989F:        STA $1706,x               ;
CODE_0D98A2:        INX                       ;
CODE_0D98A3:        INX                       ;
CODE_0D98A4:        INX                       ;
CODE_0D98A5:        INX                       ;
CODE_0D98A6:        STX $1700                 ;
CODE_0D98A9:        RTS                       ;

CODE_0D98AA:        LDA $0770                 ;
CODE_0D98AD:        CMP #$00                  ;
CODE_0D98AF:        BEQ CODE_0D98C7           ;
CODE_0D98B1:        LDX #$05                  ;
CODE_0D98B3:        LDA $0145,x               ;
CODE_0D98B6:        CLC                       ;
CODE_0D98B7:        ADC $07C8,y               ;
CODE_0D98BA:        BMI CODE_0D98D2           ;
CODE_0D98BC:        CMP #$0A                  ;
CODE_0D98BE:        BCS CODE_0D98D9           ;
CODE_0D98C0:        STA $07C8,y               ;
CODE_0D98C3:        DEY                       ;
CODE_0D98C4:        DEX                       ;
CODE_0D98C5:        BPL CODE_0D98B3           ;
CODE_0D98C7:        LDA #$00                  ;
CODE_0D98C9:        LDX #$06                  ;
CODE_0D98CB:        STA $0144,x               ;
CODE_0D98CE:        DEX                       ;
CODE_0D98CF:        BPL CODE_0D98CB           ;
CODE_0D98D1:        RTS                       ;

CODE_0D98D2:        DEC $0144,x               ;
CODE_0D98D5:        LDA #$09                  ;
CODE_0D98D7:        BNE CODE_0D98C0           ;
CODE_0D98D9:        CPX #$00                  ;
CODE_0D98DB:        BNE CODE_0D98E9           ;
CODE_0D98DD:        LDX #$05                  ;
CODE_0D98DF:        LDA #$09                  ;
CODE_0D98E1:        STA $07CE,x               ;
CODE_0D98E4:        DEX                       ;
CODE_0D98E5:        BNE CODE_0D98E1           ;
CODE_0D98E7:        LDA #$13                  ;
CODE_0D98E9:        SEC                       ;
CODE_0D98EA:        SBC #$0A                  ;
CODE_0D98EC:        INC $0144,x               ;
CODE_0D98EF:        JMP CODE_0D98C0           ;

CODE_0D98F2:        PHD                       ;
CODE_0D98F3:        LDA #$07                  ;
CODE_0D98F5:        XBA                       ;
CODE_0D98F6:        LDA #$00                  ;
CODE_0D98F8:        TCD                       ;
CODE_0D98F9:        LDX #$05                  ;
CODE_0D98FB:        LDY #$05                  ;
CODE_0D98FD:        SEC                       ;
CODE_0D98FE:        LDA $CE,x                 ;
CODE_0D9900:        SBC $07C8,y               ;
CODE_0D9903:        DEX                       ;
CODE_0D9904:        DEY                       ;
CODE_0D9905:        BPL CODE_0D98FE           ;
CODE_0D9907:        BCC CODE_0D9916           ;
CODE_0D9909:        INX                       ;
CODE_0D990A:        INY                       ;
CODE_0D990B:        LDA $CE,x                 ;
CODE_0D990D:        STA $07C8,y               ;
CODE_0D9910:        INX                       ;
CODE_0D9911:        INY                       ;
CODE_0D9912:        CPY #$06                  ;
CODE_0D9914:        BCC CODE_0D990B           ;
CODE_0D9916:        PLD                       ;
CODE_0D9917:        RTS                       ;

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

CODE_0D9968:        LDA #$10                  ;
CODE_0D996A:        STA $07B1                 ;
CODE_0D996D:        BNE CODE_0D9975           ;
CODE_0D996F:        LDA $07B1                 ;
CODE_0D9972:        BEQ CODE_0D9975           ;
CODE_0D9974:        RTS                       ;

CODE_0D9975:        INC $0772                 ;
CODE_0D9978:        RTS                       ;

DATA_0D9979:        db $42,$73,$0C,$2B

DATA_0D997D:        db $63,$73,$83

CODE_0D9980:        LDA $0FF6                 ;
CODE_0D9983:        AND #$0C                  ;
CODE_0D9985:        BEQ CODE_0D99A5           ;
CODE_0D9987:        LDY #$01                  ;
CODE_0D9989:        STY $1603                 ;
CODE_0D998C:        LDY $0F06                 ;
CODE_0D998F:        AND #$08                  ;
CODE_0D9991:        BEQ CODE_0D9999           ;
CODE_0D9993:        DEY                       ;
CODE_0D9994:        BPL CODE_0D99A2           ;
CODE_0D9996:        INY                       ;
CODE_0D9997:        BRA CODE_0D999F           ;

CODE_0D9999:        INY                       ;
CODE_0D999A:        CPY #$03                  ;
CODE_0D999C:        BNE CODE_0D99A2           ;
CODE_0D999E:        DEY                       ;
CODE_0D999F:        STZ $1603                 ;
CODE_0D99A2:        STY $0F06                 ;
CODE_0D99A5:        LDA $0F8A                 ;
CODE_0D99A8:        BNE CODE_0D9A11           ;
CODE_0D99AA:        LDA $0FF6                 ;
CODE_0D99AD:        AND #$10                  ;
CODE_0D99AF:        BNE CODE_0D99F8           ;
CODE_0D99B1:        LDA $0FF6                 ;
CODE_0D99B4:        AND #$20                  ;
CODE_0D99B6:        BEQ CODE_0D99CA           ;
CODE_0D99B8:        LDA #$01                  ;
CODE_0D99BA:        STA $1603                 ;
CODE_0D99BD:        INC $0F06                 ;
CODE_0D99C0:        LDA $0F06                 ;
CODE_0D99C3:        CMP #$03                  ;
CODE_0D99C5:        BNE CODE_0D99CA           ;
CODE_0D99C7:        STZ $0F06                 ;
CODE_0D99CA:        LDA $1603                 ;
CODE_0D99CD:        BEQ CODE_0D99D2           ;
CODE_0D99CF:        STZ $0B78                 ;
CODE_0D99D2:        INC $0B78                 ;
CODE_0D99D5:        LDA $0B78                 ;
CODE_0D99D8:        AND #$10                  ;
CODE_0D99DA:        LSR A                     ;
CODE_0D99DB:        LSR A                     ;
CODE_0D99DC:        LSR A                     ;
CODE_0D99DD:        LSR A                     ;
CODE_0D99DE:        ORA #$02                  ;
CODE_0D99E0:        STA $0C00                 ;
CODE_0D99E3:        LDY #$03                  ;
CODE_0D99E5:        LDA DATA_0D9979,y               ;
CODE_0D99E8:        STA $0800,y               ;
CODE_0D99EB:        DEY                       ;
CODE_0D99EC:        BPL CODE_0D99E5           ;
CODE_0D99EE:        LDY $0F06                 ;
CODE_0D99F1:        LDA DATA_0D997D,y               ;
CODE_0D99F4:        STA $0801                 ;
CODE_0D99F7:        RTS                       ;

CODE_0D99F8:        LDA #$20                  ;
CODE_0D99FA:        STA $0F8A                 ;
CODE_0D99FD:        LDA #$43                  ;
CODE_0D99FF:        STA $1600                 ;
CODE_0D9A02:        LDA #$F3                  ;
CODE_0D9A04:        STA $1602                 ;
CODE_0D9A07:        LDA $0F06                 ;
CODE_0D9A0A:        BEQ CODE_0D9A11           ;
CODE_0D9A0C:        LDA #$3B                  ;
CODE_0D9A0E:        STA $1600                 ;
CODE_0D9A11:        JSR CODE_0D99D2           ;
CODE_0D9A14:        DEC $0F8A                 ;
CODE_0D9A17:        LDA $0F8A                 ;
CODE_0D9A1A:        BEQ CODE_0D9A1D           ;
CODE_0D9A1C:        RTS                       ;

CODE_0D9A1D:        STZ $0B78                 ;
CODE_0D9A20:        LDY #$04                  ;
CODE_0D9A22:        STY $075A                 ;
CODE_0D9A25:        STZ $075E                 ;
CODE_0D9A28:        LDA #$00                  ;
CODE_0D9A2A:        LDY #$11                  ;
CODE_0D9A2C:        STA $07CE,y               ;
CODE_0D9A2F:        DEY                       ;
CODE_0D9A30:        BPL CODE_0D9A2C           ;
CODE_0D9A32:        INC $075D                 ;
CODE_0D9A35:        LDA $0F06                 ;
CODE_0D9A38:        BEQ CODE_0D9A49           ;
CODE_0D9A3A:        JSL CODE_0090AC           ;
CODE_0D9A3E:        LDA $0F06                 ;
CODE_0D9A41:        CMP #$01                  ;
CODE_0D9A43:        BEQ CODE_0D9A49           ;
CODE_0D9A45:        JML CODE_0080DE           ;

CODE_0D9A49:        JMP CODE_0DA009           ;

CODE_0D9A4C:        LDA $0770                 ;
CODE_0D9A4F:        CMP #$03                  ;
CODE_0D9A51:        BEQ CODE_0D9A69           ;
CODE_0D9A53:        LDA $0F07                 ;
CODE_0D9A56:        BNE CODE_0D9A60           ;
CODE_0D9A58:        LDA #$1D                  ;
CODE_0D9A5A:        STA $0773                 ;
CODE_0D9A5D:        INC $0F07                 ;
CODE_0D9A60:        LDA #$00                  ;
CODE_0D9A62:        STA $0774                 ;
CODE_0D9A65:        INC $073C                 ;
CODE_0D9A68:        RTS                       ;

CODE_0D9A69:        LDA #$20                  ;
CODE_0D9A6B:        STA $07B0                 ;
CODE_0D9A6E:        LDA #$1E                  ;
CODE_0D9A70:        STA $0773                 ;
CODE_0D9A73:        INC $0772                 ;
CODE_0D9A76:        RTS                       ;

DATA_0D9A77:        db $20,$20,$1E,$28,$28,$0D,$04,$70
                    db $70,$60,$90,$90,$0A,$09,$E4,$98
                    db $D0,$18,$18,$18,$22,$22,$0D,$04
                    db $42,$42,$3E,$5D,$5D,$0A,$09,$B4
                    db $68,$A0

CODE_0D9A99:        LDX #$60                  ;
CODE_0D9A9B:        LDY #$21                  ;
CODE_0D9A9D:        LDA $0753                 ;
CODE_0D9AA0:        BNE CODE_0D9AA6           ;
CODE_0D9AA2:        LDX #$0E                  ;
CODE_0D9AA4:        LDY #$10                  ;
CODE_0D9AA6:        STX $B38E                 ;
CODE_0D9AA9:        LDX #$10                  ;
CODE_0D9AAB:        LDA DATA_0D9A77,y               ;
CODE_0D9AAE:        STA $0DB1F9,x             ;
CODE_0D9AB2:        DEY                       ;
CODE_0D9AB3:        DEX                       ;
CODE_0D9AB4:        BPL CODE_0D9AAB           ;
CODE_0D9AB6:        RTS                       ;

CODE_0D9AB7:        LDA $0749                 ;
CODE_0D9ABA:        BNE CODE_0D9AD6           ;
CODE_0D9ABC:        LDY $0719                 ;
CODE_0D9ABF:        CPY #$0A                  ;
CODE_0D9AC1:        BCS CODE_0D9AE8           ;
CODE_0D9AC3:        INY                       ;
CODE_0D9AC4:        INY                       ;
CODE_0D9AC5:        INY                       ;
CODE_0D9AC6:        CPY #$05                  ;
CODE_0D9AC8:        BNE CODE_0D9ACF           ;
CODE_0D9ACA:        LDA #$04                  ;
CODE_0D9ACC:        STA $00FC                 ;
CODE_0D9ACF:        TYA                       ;
CODE_0D9AD0:        CLC                       ;
CODE_0D9AD1:        ADC #$0C                  ;
CODE_0D9AD3:        STA $0773                 ;
CODE_0D9AD6:        LDA $0749                 ;
CODE_0D9AD9:        CLC                       ;
CODE_0D9ADA:        ADC #$04                  ;
CODE_0D9ADC:        STA $0749                 ;
CODE_0D9ADF:        LDA $0719                 ;
CODE_0D9AE2:        ADC #$00                  ;
CODE_0D9AE4:        STA $0719                 ;
CODE_0D9AE7:        RTS                       ;

CODE_0D9AE8:        LDA #$0C                  ;
CODE_0D9AEA:        STA $07B1                 ;
CODE_0D9AED:        INC $0772                 ;
CODE_0D9AF0:        LDA #$00                  ;
CODE_0D9AF2:        STA $0F27                 ;
CODE_0D9AF5:        STA $0F28                 ;
CODE_0D9AF8:        STA $0F29                 ;
CODE_0D9AFB:        RTS                       ;

CODE_0D9AFC:        LDA $07B1                 ;
CODE_0D9AFF:        BNE CODE_0D9AFB           ;
CODE_0D9B01:        LDA $075A                 ;
CODE_0D9B04:        BMI CODE_0D9B20           ;
CODE_0D9B06:        LDA $0788                 ;
CODE_0D9B09:        BNE CODE_0D9AFB           ;
CODE_0D9B0B:        LDA #$30                  ;
CODE_0D9B0D:        STA $0788                 ;
CODE_0D9B10:        LDA #$01                  ;
CODE_0D9B12:        STA $1603                 ;
CODE_0D9B15:        DEC $075A                 ;
CODE_0D9B18:        LDA #$01                  ;
CODE_0D9B1A:        STA $0146                 ;
CODE_0D9B1D:        JMP CODE_0DD70E           ;

CODE_0D9B20:        LDA #$05                  ;
CODE_0D9B22:        STA $0F2D                 ;
CODE_0D9B25:        LDA #$00                  ;
CODE_0D9B27:        STA $0F2C                 ;
CODE_0D9B2A:        STZ $0F2E                 ;
CODE_0D9B2D:        STZ $0F2F                 ;
CODE_0D9B30:        BRA CODE_0D9AED           ;

CODE_0D9B32:        INC $0772                 ;
CODE_0D9B35:        JSR CODE_0D9AF0           ;
CODE_0D9B38:        LDA #$60                  ;
CODE_0D9B3A:        STA $0F2A                 ;
CODE_0D9B3D:        RTS                       ;

CODE_0D9B3E:        JSR CODE_0D9C2B           ;
CODE_0D9B41:        LDA $0F2D                 ;
CODE_0D9B44:        BEQ CODE_0D9B65           ;
CODE_0D9B46:        REP #$20                  ;
CODE_0D9B48:        LDA $0F2C                 ;
CODE_0D9B4B:        XBA                       ;
CODE_0D9B4C:        STA $1702                 ;
CODE_0D9B4F:        LDA #$7E43                ;
CODE_0D9B52:        STA $1704                 ;
CODE_0D9B55:        LDA #$0024                ;
CODE_0D9B58:        STA $1706                 ;
CODE_0D9B5B:        LDA #$FFFF                ;
CODE_0D9B5E:        STA $1708                 ;
CODE_0D9B61:        SEP #$20                  ;
CODE_0D9B63:        BRA CODE_0D9B8E           ;

CODE_0D9B65:        LDA $0EB8                 ;
CODE_0D9B68:        BNE CODE_0D9B84           ;
CODE_0D9B6A:        INC $0F2E                 ;
CODE_0D9B6D:        LDA $0F2E                 ;
CODE_0D9B70:        BNE CODE_0D9B8E           ;
CODE_0D9B72:        INC $0F2F                 ;
CODE_0D9B75:        LDA $0F2F                 ;
CODE_0D9B78:        CMP #$02                  ;
CODE_0D9B7A:        BNE CODE_0D9B8E           ;
CODE_0D9B7C:        STZ $07FA                 ;
CODE_0D9B7F:        LDA #$01                  ;
CODE_0D9B81:        STA $07FB                 ;
CODE_0D9B84:        LDA $075F                 ;
CODE_0D9B87:        CMP #$0C                  ;
CODE_0D9B89:        BEQ CODE_0D9B94           ;
CODE_0D9B8B:        JMP CODE_0D9CC7           ;

CODE_0D9B8E:        STZ $0EB8                 ;
CODE_0D9B91:        STZ $0F2D                 ;
CODE_0D9B94:        RTS                       ;

DATA_0D9B95:        db $01,$00,$01,$02,$03,$00,$00,$00
                    db $00,$00,$A7,$AB,$AD,$B1,$9B,$9B
                    db $9B,$9B,$01,$05,$0F,$FF,$20,$FF
                    db $10,$30,$0F,$FF,$40,$FF,$03,$01
                    db $03,$01,$0F,$20,$20,$20,$20,$20
                    db $20,$20,$20,$9F,$D2,$01,$00,$00
                    db $9F,$D2,$00

CODE_0D9BC8:        LDA #$07                  ;
CODE_0D9BCA:        STA $9B,x                 ;
CODE_0D9BCC:        LDA [$9B],y               ;
CODE_0D9BCE:        BEQ CODE_0D9BD4           ;
CODE_0D9BD0:        INC $0F09                 ;
CODE_0D9BD3:        RTS                       ;

CODE_0D9BD4:        LDA #$00                  ;
CODE_0D9BD6:        STA $0F09                 ;
CODE_0D9BD9:        STA $0772                 ;
CODE_0D9BDC:        LDA $075F                 ;
CODE_0D9BDF:        CMP #$0C                  ;
CODE_0D9BE1:        BEQ CODE_0D9BF6           ;
CODE_0D9BE3:        LDA $0F2B                 ;
CODE_0D9BE6:        BEQ CODE_0D9C01           ;
CODE_0D9BE8:        LDA #$00                  ;
CODE_0D9BEA:        STA $0F08                 ;
CODE_0D9BED:        STA $075A                 ;
CODE_0D9BF0:        INC $075F                 ;
CODE_0D9BF3:        JMP CODE_0D885C           ;

CODE_0D9BF6:        LDA #$00                  ;
CODE_0D9BF8:        STA $0F08                 ;
CODE_0D9BFB:        STA $0770                 ;
CODE_0D9BFE:        JMP CODE_0D84B6           ;

CODE_0D9C01:        LDA #$00                  ;
CODE_0D9C03:        STA $0F08                 ;
CODE_0D9C06:        STA $075A                 ;
CODE_0D9C09:        STA $0F07                 ;
CODE_0D9C0C:        JMP CODE_0D885C           ;

DATA_0D9C0F:        db $50,$B0,$E0,$68,$98,$C8 ;

DATA_0D9C15:        db $80,$50,$68,$80,$98,$B0,$C8 ;

DATA_0D9C1C:        db $E0,$B8,$90,$70,$68,$70,$90 ;

DATA_0D9C23:        db $B8,$38,$48,$60,$80 ;

CODE_0D9C28:        LDY #$B8                  ;
CODE_0D9C2A:        INY                       ;
CODE_0D9C2B:        LDA $0F2A                 ;
CODE_0D9C2E:        BEQ CODE_0D9C34           ;
CODE_0D9C30:        DEC $0F2A                 ;
CODE_0D9C33:        RTS                       ;

CODE_0D9C34:        JSR CODE_0D8418           ;
CODE_0D9C37:        LDX $0F28                 ;
CODE_0D9C3A:        CPX #$07                  ;
CODE_0D9C3C:        BEQ CODE_0D9C50           ;
CODE_0D9C3E:        LDA $0F27                 ;
CODE_0D9C41:        AND #$1F                  ;
CODE_0D9C43:        BNE CODE_0D9C66           ;
CODE_0D9C45:        INC $0F28                 ;
CODE_0D9C48:        LDA #$01                  ;
CODE_0D9C4A:        STA $1603                 ;
CODE_0D9C4D:        JMP CODE_0D9C66           ;

CODE_0D9C50:        LDA $0F27                 ;
CODE_0D9C53:        AND #$1F                  ;
CODE_0D9C55:        BNE CODE_0D9C66           ;
CODE_0D9C57:        INC $0F29                 ;
CODE_0D9C5A:        LDA $0F29                 ;
CODE_0D9C5D:        CMP #$0B                  ;
CODE_0D9C5F:        BCC CODE_0D9C66           ;
CODE_0D9C61:        LDA #$04                  ;
CODE_0D9C63:        STA $0F29                 ;
CODE_0D9C66:        INC $0F27                 ;
CODE_0D9C69:        LDA $075F                 ;
CODE_0D9C6C:        PHA                       ;
CODE_0D9C6D:        LDA $0F28                 ;
CODE_0D9C70:        PHA                       ;
CODE_0D9C71:        TAX                       ;
CODE_0D9C72:        LDA $0F29                 ;
CODE_0D9C75:        CMP #$04                  ;
CODE_0D9C77:        BCC CODE_0D9C84           ;
CODE_0D9C79:        SBC #$04                  ;
CODE_0D9C7B:        TAY                       ;
CODE_0D9C7C:        LDA DATA_0D9C0F,y               ;
CODE_0D9C7F:        CMP DATA_0D9C15,x               ;
CODE_0D9C82:        BEQ CODE_0D9CA9           ;
CODE_0D9C84:        LDY DATA_0D9C15,x               ;
CODE_0D9C87:        STY $0B46                 ;
CODE_0D9C8A:        LDA #$35                  ;
CODE_0D9C8C:        STA $001C                 ;
CODE_0D9C8F:        LDA DATA_0D9C1C,x               ;
CODE_0D9C92:        STA $0238                 ;
CODE_0D9C95:        LDA DATA_0D9C23,x               ;
CODE_0D9C98:        STA $03AE                 ;
CODE_0D9C9B:        LDX #$00                  ;
CODE_0D9C9D:        STX $075F                 ;
CODE_0D9CA0:        STX $009E                 ;
CODE_0D9CA3:        JSR CODE_0DEE40           ;
CODE_0D9CA6:        DEC $0F4A                 ;
CODE_0D9CA9:        DEC $0F28                 ;
CODE_0D9CAC:        LDX $0F28                 ;
CODE_0D9CAF:        BNE CODE_0D9C72           ;
CODE_0D9CB1:        INC $0F4A                 ;
CODE_0D9CB4:        PLA                       ;
CODE_0D9CB5:        STA $0F28                 ;
CODE_0D9CB8:        PLA                       ;
CODE_0D9CB9:        STA $075F                 ;
CODE_0D9CBC:        LDA #$30                  ;
CODE_0D9CBE:        STA $0B46                 ;
CODE_0D9CC1:        LDA #$B8                  ;
CODE_0D9CC3:        STA $0238                 ;
CODE_0D9CC6:        RTS                       ;

CODE_0D9CC7:        JSL CODE_0FFB74           ;
CODE_0D9CCB:        BCS CODE_0D9CCE           ;
CODE_0D9CCD:        RTS                       ;

CODE_0D9CCE:        LDA #$01                  ;
CODE_0D9CD0:        STA $0E1A                 ;
CODE_0D9CD3:        JMP CODE_0D9BD4           ;

DATA_0D9CD6:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF

DATA_0D9CF0:        db $D0,$00,$18,$30,$48,$60,$78,$90
                    db $A8,$C0,$D8,$D8,$B0,$C0,$40,$44
                    db $48,$50,$54,$60,$68,$70,$78,$80
                    db $88,$00,$08,$10,$18,$18,$FF,$23
                    db $58

CODE_0D9D11:        LDA #$80                  ;
CODE_0D9D13:        STA $1201                 ;
CODE_0D9D16:        LDA #$FF                  ;
CODE_0D9D18:        STA $001102               ;
CODE_0D9D1C:        LDA #$7F                  ;
CODE_0D9D1E:        STA $001103               ;
CODE_0D9D22:        INC $1200                 ;
CODE_0D9D25:        LDA #$FF                  ;
CODE_0D9D27:        STA $1702                 ;
CODE_0D9D2A:        STA $1703                 ;
CODE_0D9D2D:        LDA #$09                  ;
CODE_0D9D2F:        STA $120D                 ;
CODE_0D9D32:        LDA #$10                  ;
CODE_0D9D34:        STA $120B                 ;
CODE_0D9D37:        LDA #$20                  ;
CODE_0D9D39:        STA $120A                 ;
CODE_0D9D3C:        LDA #$20                  ;
CODE_0D9D3E:        STA $0EE0                 ;
CODE_0D9D41:        LDA #$40                  ;
CODE_0D9D43:        STA $0EE1                 ;
CODE_0D9D46:        LDA #$80                  ;
CODE_0D9D48:        STA $0EE2                 ;
CODE_0D9D4B:        LDY #$FE                  ;
CODE_0D9D4D:        LDX #$05                  ;
CODE_0D9D4F:        LDA $07C8,x               ;
CODE_0D9D52:        CMP #$0A                  ;
CODE_0D9D54:        BCS CODE_0D9D62           ;
CODE_0D9D56:        DEX                       ;
CODE_0D9D57:        BPL CODE_0D9D4F           ;
CODE_0D9D59:        LDA $07FF                 ;
CODE_0D9D5C:        CMP #$A5                  ;
CODE_0D9D5E:        BNE CODE_0D9D62           ;
CODE_0D9D60:        LDY #$C7                  ;
CODE_0D9D62:        JSL CODE_0FF733           ;
CODE_0D9D66:        LDA #$A5                  ;
CODE_0D9D68:        STA $07FF                 ;
CODE_0D9D6B:        STA $07B7                 ;
CODE_0D9D6E:        STZ $0EF6                 ;
CODE_0D9D71:        STZ $0EF9                 ;
CODE_0D9D74:        STZ $0EF7                 ;
CODE_0D9D77:        STZ $0EF8                 ;
CODE_0D9D7A:        LDY #$6F                  ;
CODE_0D9D7C:        JSL CODE_0FF733           ;
CODE_0D9D80:        LDA #$18                  ;
CODE_0D9D82:        STA $07B2                 ;
CODE_0D9D85:        JSL CODE_0EC34C           ;
CODE_0D9D89:        JSR CODE_0D9D90           ;
CODE_0D9D8C:        STZ $0E7F                 ;
CODE_0D9D8F:        RTS                       ;

CODE_0D9D90:        LDY $075F                 ;
CODE_0D9D93:        CPY #$0D                  ;
CODE_0D9D95:        BCC CODE_0D9D9B           ;
CODE_0D9D97:        JSL CODE_0EC34C           ;
CODE_0D9D9B:        LDY #$4B                  ;
CODE_0D9D9D:        JSL CODE_0FF733           ;
CODE_0D9DA1:        LDX #$29                  ;
CODE_0D9DA3:        LDA #$00                  ;
CODE_0D9DA5:        STA $0788,x               ;
CODE_0D9DA8:        DEX                       ;
CODE_0D9DA9:        BPL CODE_0D9DA5           ;
CODE_0D9DAB:        LDA $075B                 ;
CODE_0D9DAE:        LDY $0752                 ;
CODE_0D9DB1:        BEQ CODE_0D9DB6           ;
CODE_0D9DB3:        LDA $0751                 ;
CODE_0D9DB6:        STA $071A                 ;
CODE_0D9DB9:        STA $0725                 ;
CODE_0D9DBC:        STA $0728                 ;
CODE_0D9DBF:        PHY                       ;
CODE_0D9DC0:        REP #$20                  ;
CODE_0D9DC2:        XBA                       ;
CODE_0D9DC3:        AND #$FF00                ;
CODE_0D9DC6:        STA $42                   ;
CODE_0D9DC8:        LSR A                     ;
CODE_0D9DC9:        STA $0EFD                 ;
CODE_0D9DCC:        LSR A                     ;
CODE_0D9DCD:        STA $0EEE                 ;
CODE_0D9DD0:        SEP #$20                  ;
CODE_0D9DD2:        PLY                       ;
CODE_0D9DD3:        JSR CODE_0DAD3E           ;
CODE_0D9DD6:        LDY #$00                  ;
CODE_0D9DD8:        AND #$01                  ;
CODE_0D9DDA:        BEQ CODE_0D9DDE           ;
CODE_0D9DDC:        LDY #$04                  ;
CODE_0D9DDE:        STY $0720                 ;
CODE_0D9DE1:        STZ $0721                 ;
CODE_0D9DE4:        ASL A                     ;
CODE_0D9DE5:        ASL A                     ;
CODE_0D9DE6:        ASL A                     ;
CODE_0D9DE7:        ASL A                     ;
CODE_0D9DE8:        STA $06A0                 ;
CODE_0D9DEB:        LDA #$FF                  ;
CODE_0D9DED:        STA $1300                 ;
CODE_0D9DF0:        STA $1301                 ;
CODE_0D9DF3:        STA $1302                 ;
CODE_0D9DF6:        STA $1303                 ;
CODE_0D9DF9:        STA $1304                 ;
CODE_0D9DFC:        LDA #$0B                  ;
CODE_0D9DFE:        STA $071E                 ;
CODE_0D9E01:        JSL CODE_0EC3BD           ;
CODE_0D9E05:        LDA $07FB                 ;
CODE_0D9E08:        BNE CODE_0D9E1A           ;
CODE_0D9E0A:        LDA $075F                 ;
CODE_0D9E0D:        CMP #$03                  ;
CODE_0D9E0F:        BCC CODE_0D9E1D           ;
CODE_0D9E11:        BNE CODE_0D9E1A           ;
CODE_0D9E13:        LDA $075C                 ;
CODE_0D9E16:        CMP #$03                  ;
CODE_0D9E18:        BCC CODE_0D9E1D           ;
CODE_0D9E1A:        INC $06CC                 ;
CODE_0D9E1D:        LDA $075B                 ;
CODE_0D9E20:        BEQ CODE_0D9E27           ;
CODE_0D9E22:        LDA #$02                  ;
CODE_0D9E24:        STA $0710                 ;
CODE_0D9E27:        LDA $DB                   ;
CODE_0D9E29:        CMP #$07                  ;
CODE_0D9E2B:        BEQ CODE_0D9E36           ;
CODE_0D9E2D:        CMP #$41                  ;
CODE_0D9E2F:        BEQ CODE_0D9E36           ;
CODE_0D9E31:        LDA #$80                  ;
CODE_0D9E33:        STA $1602                 ;
CODE_0D9E36:        LDA #$01                  ;
CODE_0D9E38:        STA $0E7F                 ;
CODE_0D9E3B:        INC $0772                 ;
CODE_0D9E3E:        RTS                       ;

CODE_0D9E3F:        LDA $2142                 ;
CODE_0D9E42:        CMP #$15                  ;
CODE_0D9E44:        BEQ CODE_0D9E4F           ;
CODE_0D9E46:        JSL CODE_0086B5           ;
CODE_0D9E4A:        LDA #$15                  ;
CODE_0D9E4C:        STA $2142                 ;
CODE_0D9E4F:        LDA #$01                  ;
CODE_0D9E51:        STA $0757                 ;
CODE_0D9E54:        STA $0754                 ;
CODE_0D9E57:        STZ $0E73                 ;
CODE_0D9E5A:        LDA #$02                  ;
CODE_0D9E5C:        STA $0E7F                 ;
CODE_0D9E5F:        LDA #$20                  ;
CODE_0D9E61:        TSB $1601                 ;
CODE_0D9E64:        LDA #$00                  ;
CODE_0D9E66:        STA $1201                 ;
CODE_0D9E69:        STA $0774                 ;
CODE_0D9E6C:        STA $0F04                 ;
CODE_0D9E6F:        STA $0F02                 ;
CODE_0D9E72:        TAY                       ;
CODE_0D9E73:        STA $0300,y               ;
CODE_0D9E76:        INY                       ;
CODE_0D9E77:        BNE CODE_0D9E73           ;
CODE_0D9E79:        STA $0759                 ;
CODE_0D9E7C:        STA $0769                 ;
CODE_0D9E7F:        STA $0728                 ;
CODE_0D9E82:        LDA #$FF                  ;
CODE_0D9E84:        STA $03A0                 ;
CODE_0D9E87:        STA $1702                 ;
CODE_0D9E8A:        LDA $071A                 ;
CODE_0D9E8D:        AND #$01                  ;
CODE_0D9E8F:        STA $0F05                 ;
CODE_0D9E92:        LDA #$38                  ;
CODE_0D9E94:        STA $0B43                 ;
CODE_0D9E97:        LDA #$48                  ;
CODE_0D9E99:        STA $0B42                 ;
CODE_0D9E9C:        LDA #$58                  ;
CODE_0D9E9E:        STA $0B41                 ;
CODE_0D9EA1:        LDX #$1C                  ;
CODE_0D9EA3:        LDA DATA_0D9CF0,x               ;
CODE_0D9EA6:        STA $0B45,x               ;
CODE_0D9EA9:        DEX                       ;
CODE_0D9EAA:        BPL CODE_0D9EA3           ;
CODE_0D9EAC:        JSR CODE_0DA04E           ;
CODE_0D9EAF:        INC $0722                 ;
CODE_0D9EB2:        INC $0772                 ;
CODE_0D9EB5:        RTS                       ;

DATA_0D9EB6:        db $28,$18,$38,$28,$08,$00 ;

DATA_0D9EBC:        db $00,$20,$B0,$50,$00,$00,$B0,$B0 ;
                    db $F0 ;

DATA_0D9EC5:        db $2E,$0E,$2E,$2E,$2E,$2E,$2E,$2E ;

DATA_0D9ECD:        db $0E,$04,$03,$02 ;

CODE_0D9ED1:        LDA $071A                 ;
CODE_0D9ED4:        STA $78                   ;
CODE_0D9ED6:        LDA #$28                  ;
CODE_0D9ED8:        STA $070A                 ;
CODE_0D9EDB:        LDA #$01                  ;
CODE_0D9EDD:        STA $0202                 ;
CODE_0D9EE0:        STA $BB                   ;
CODE_0D9EE2:        LDA #$00                  ;
CODE_0D9EE4:        STA $28                   ;
CODE_0D9EE6:        DEC $0480                 ;
CODE_0D9EE9:        LDY #$00                  ;
CODE_0D9EEB:        STY $075B                 ;
CODE_0D9EEE:        LDA $5C                   ;
CODE_0D9EF0:        BNE CODE_0D9EF3           ;
CODE_0D9EF2:        INY                       ;
CODE_0D9EF3:        STY $0704                 ;
CODE_0D9EF6:        LDX $0710                 ;
CODE_0D9EF9:        LDY $0752                 ;
CODE_0D9EFC:        BEQ CODE_0D9F05           ;
CODE_0D9EFE:        CPY #$01                  ;
CODE_0D9F00:        BEQ CODE_0D9F05           ;
CODE_0D9F02:        LDX DATA_0D9EB6+2,y               ;
CODE_0D9F05:        LDA DATA_0D9EB6,y               ;
CODE_0D9F08:        STA $0219                 ;
CODE_0D9F0B:        LDA DATA_0D9EBC,x               ;
CODE_0D9F0E:        STA $0237                 ;
CODE_0D9F11:        LDA DATA_0D9EC5,x               ;
CODE_0D9F14:        STA $0256                 ;
CODE_0D9F17:        LDX #$00                  ;
CODE_0D9F19:        JSR CODE_0DE9A9           ;
CODE_0D9F1C:        JSL CODE_0E98C3           ;
CODE_0D9F20:        LDY $0715                 ;
CODE_0D9F23:        BEQ CODE_0D9F3F           ;
CODE_0D9F25:        LDA $0757                 ;
CODE_0D9F28:        BEQ CODE_0D9F3F           ;
CODE_0D9F2A:        LDA DATA_0D9ECD,y               ;
CODE_0D9F2D:        STA $07E9                 ;
CODE_0D9F30:        LDA #$01                  ;
CODE_0D9F32:        STA $07EB                 ;
CODE_0D9F35:        LSR A                     ;
CODE_0D9F36:        STA $07EA                 ;
CODE_0D9F39:        STA $0757                 ;
CODE_0D9F3C:        STA $07AF                 ;
CODE_0D9F3F:        LDY $0758                 ;
CODE_0D9F42:        BEQ CODE_0D9F58           ;
CODE_0D9F44:        LDA #$03                  ;
CODE_0D9F46:        STA $28                   ;
CODE_0D9F48:        LDX #$00                  ;
CODE_0D9F4A:        JSR CODE_0DBCE2           ;
CODE_0D9F4D:        LDA #$F0                  ;
CODE_0D9F4F:        STA $44                   ;
CODE_0D9F51:        LDX #$09                  ;
CODE_0D9F53:        LDY #$00                  ;
CODE_0D9F55:        JSR CODE_0DB7C9           ;
CODE_0D9F58:        LDY $5C                   ;
CODE_0D9F5A:        BNE CODE_0D9F5F           ;
CODE_0D9F5C:        JSR CODE_0DB542           ;
CODE_0D9F5F:        LDA #$07                  ;
CODE_0D9F61:        STA $0F                   ;
CODE_0D9F63:        RTS                       ;

DATA_0D9F64:        db $66,$60,$88,$60,$66,$70,$77,$60
                    db $D6,$00,$77,$80,$70,$B0,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00

CODE_0D9F7E:        LDA #$01                  ;
CODE_0D9F80:        STA $0E7F                 ;
CODE_0D9F83:        STA $0E67                 ;
CODE_0D9F86:        STZ $0722                 ;
CODE_0D9F89:        DEC $075A                 ;
CODE_0D9F8C:        BPL CODE_0D9F97           ;
CODE_0D9F8E:        STZ $0772                 ;
CODE_0D9F91:        LDA #$03                  ;
CODE_0D9F93:        STA $0770                 ;
CODE_0D9F96:        RTS                       ;

CODE_0D9F97:        LDA $075F                 ;
CODE_0D9F9A:        ASL A                     ;
CODE_0D9F9B:        TAX                       ;
CODE_0D9F9C:        LDA $075C                 ;
CODE_0D9F9F:        AND #$02                  ;
CODE_0D9FA1:        BEQ CODE_0D9FA4           ;
CODE_0D9FA3:        INX                       ;
CODE_0D9FA4:        LDY DATA_0D9F64,x               ;
CODE_0D9FA7:        LDA $075C                 ;
CODE_0D9FAA:        LSR A                     ;
CODE_0D9FAB:        TYA                       ;
CODE_0D9FAC:        BCS CODE_0D9FB2           ;
CODE_0D9FAE:        LSR A                     ;
CODE_0D9FAF:        LSR A                     ;
CODE_0D9FB0:        LSR A                     ;
CODE_0D9FB1:        LSR A                     ;
CODE_0D9FB2:        AND #$0F                  ;
CODE_0D9FB4:        CMP $071A                 ;
CODE_0D9FB7:        BEQ CODE_0D9FBD           ;
CODE_0D9FB9:        BCC CODE_0D9FBD           ;
CODE_0D9FBB:        LDA #$00                  ;
CODE_0D9FBD:        STA $075B                 ;
CODE_0D9FC0:        JSR CODE_0DA026           ;
CODE_0D9FC3:        JMP CODE_0DA009           ;

CODE_0D9FC6:        LDA $0772                 ;
CODE_0D9FC9:        ASL A                     ;
CODE_0D9FCA:        TAX                       ;
CODE_0D9FCB:        JMP (PNTR_0D9FCE,x)       ;

PNTR_0D9FCE:        dw CODE_0D9FD4
                    dw CODE_0D89BD
                    dw CODE_0D9FEC

CODE_0D9FD4:        STZ $073C                 ;
CODE_0D9FD7:        STZ $0722                 ;
CODE_0D9FDA:        STZ $0F06                 ;
CODE_0D9FDD:        STZ $0B78                 ;
CODE_0D9FE0:        LDA #$0A                  ;
CODE_0D9FE2:        STA $1602                 ;
CODE_0D9FE5:        INC $0774                 ;
CODE_0D9FE8:        INC $0772                 ;
CODE_0D9FEB:        RTS                       ;

CODE_0D9FEC:        JMP CODE_0D9980           ;

CODE_0D9FEF:        LDA $07B0                 ;
CODE_0D9FF2:        BNE CODE_0DA008           ;
CODE_0D9FF4:        JSR CODE_0DA026           ;
CODE_0D9FF7:        BCC CODE_0DA009           ;
CODE_0D9FF9:        LDA $075F                 ;
CODE_0D9FFC:        STA $07FD                 ;
CODE_0D9FFF:        STZ $0772                 ;
CODE_0DA002:        STZ $07B0                 ;
CODE_0DA005:        STZ $0770                 ;
CODE_0DA008:        RTS                       ;

CODE_0DA009:        JSL CODE_0EC34C           ;
CODE_0DA00D:        LDA #$01                  ;
CODE_0DA00F:        STA $0754                 ;
CODE_0DA012:        INC $0757                 ;
CODE_0DA015:        STZ $0747                 ;
CODE_0DA018:        STZ $0756                 ;
CODE_0DA01B:        STZ $0F                   ;
CODE_0DA01D:        STZ $0772                 ;
CODE_0DA020:        LDA #$01                  ;
CODE_0DA022:        STA $0770                 ;
CODE_0DA025:        RTS                       ;

CODE_0DA026:        SEC                       ;
CODE_0DA027:        LDA $077A                 ;
CODE_0DA02A:        BEQ CODE_0DA04D           ;
CODE_0DA02C:        LDA $0761                 ;
CODE_0DA02F:        BMI CODE_0DA04D           ;
CODE_0DA031:        LDA $0753                 ;
CODE_0DA034:        EOR #$01                  ;
CODE_0DA036:        STA $0753                 ;
CODE_0DA039:        LDX #$06                  ;
CODE_0DA03B:        LDA $075A,x               ;
CODE_0DA03E:        PHA                       ;
CODE_0DA03F:        LDA $0761,x               ;
CODE_0DA042:        STA $075A,x               ;
CODE_0DA045:        PLA                       ;
CODE_0DA046:        STA $0761,x               ;
CODE_0DA049:        DEX                       ;
CODE_0DA04A:        BPL CODE_0DA03B           ;
CODE_0DA04C:        CLC                       ;
CODE_0DA04D:        RTS                       ;

CODE_0DA04E:        LDA #$FF                  ;
CODE_0DA050:        STA $06C9                 ;
CODE_0DA053:        RTS                       ;

CODE_0DA054:        LDY $071F                 ;
CODE_0DA057:        BNE CODE_0DA05E           ;
CODE_0DA059:        LDY #$08                  ;
CODE_0DA05B:        STY $071F                 ;
CODE_0DA05E:        DEY                       ;
CODE_0DA05F:        TYA                       ;
CODE_0DA060:        JSR CODE_0DA0BF           ;
CODE_0DA063:        DEC $071F                 ;
CODE_0DA066:        BNE CODE_0DA09D           ;
CODE_0DA068:        LDA #$20                  ;
CODE_0DA06A:        STA $00                   ;
CODE_0DA06C:        LDA $BA                   ;
CODE_0DA06E:        CMP #$03                  ;
CODE_0DA070:        BNE CODE_0DA074           ;
CODE_0DA072:        ASL $00                   ;
CODE_0DA074:        LDA $0ED1                 ;
CODE_0DA077:        BNE CODE_0DA09D           ;
CODE_0DA079:        LDA $0EFD                 ;
CODE_0DA07C:        AND $00                   ;
CODE_0DA07E:        BEQ CODE_0DA087           ;
CODE_0DA080:        LDA $0EFC                 ;
CODE_0DA083:        BEQ CODE_0DA091           ;
CODE_0DA085:        BRA CODE_0DA09D           ;

CODE_0DA087:        LDA $0EFC                 ;
CODE_0DA08A:        BEQ CODE_0DA09D           ;
CODE_0DA08C:        STZ $0EFC                 ;
CODE_0DA08F:        BRA CODE_0DA096           ;

CODE_0DA091:        LDA #$01                  ;
CODE_0DA093:        STA $0EFC                 ;
CODE_0DA096:        JSL CODE_0E9970           ;
CODE_0DA09A:        JSR CODE_0D9024           ;
CODE_0DA09D:        LDA $0EEE                 ;
CODE_0DA0A0:        AND #$10                  ;
CODE_0DA0A2:        BEQ CODE_0DA0AB           ;
CODE_0DA0A4:        LDA $0EDD                 ;
CODE_0DA0A7:        BEQ CODE_0DA0B5           ;
CODE_0DA0A9:        BRA CODE_0DA0BE           ;

CODE_0DA0AB:        LDA $0EDD                 ;
CODE_0DA0AE:        BEQ CODE_0DA0BE           ;
CODE_0DA0B0:        STZ $0EDD                 ;
CODE_0DA0B3:        BRA CODE_0DA0BA           ;

CODE_0DA0B5:        LDA #$01                  ;
CODE_0DA0B7:        STA $0EDD                 ;
CODE_0DA0BA:        JSL CODE_0E85DD           ;
CODE_0DA0BE:        RTS                       ;

CODE_0DA0BF:        ASL A                     ;
CODE_0DA0C0:        TAX                       ;
CODE_0DA0C1:        JMP (PNTR_0DA0C4,x)       ;

PNTR_0DA0C4:        dw CODE_0DA0D4
                    dw CODE_0D8EF0
                    dw CODE_0D8EF0
                    dw CODE_0DA165
                    dw CODE_0DA0D4
                    dw CODE_0D8EF0
                    dw CODE_0D8EF0
                    dw CODE_0DA165

CODE_0DA0D4:        INC $0726                 ;
CODE_0DA0D7:        LDA $0726                 ;
CODE_0DA0DA:        AND #$0F                  ;
CODE_0DA0DC:        BNE CODE_0DA0E4           ;
CODE_0DA0DE:        STA $0726                 ;
CODE_0DA0E1:        INC $0725                 ;
CODE_0DA0E4:        INC $06A0                 ;
CODE_0DA0E7:        LDA $06A0                 ;
CODE_0DA0EA:        AND #$1F                  ;
CODE_0DA0EC:        STA $06A0                 ;
CODE_0DA0EF:        RTS                       ;

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

CODE_0DA165:        LDA $0728                 ;
CODE_0DA168:        BEQ CODE_0DA16D           ;
CODE_0DA16A:        JSR CODE_0DA316           ;
CODE_0DA16D:        LDX #$0C                  ;
CODE_0DA16F:        LDA #$00                  ;
CODE_0DA171:        STA $06A1,x               ;
CODE_0DA174:        DEX                       ;
CODE_0DA175:        BPL CODE_0DA171           ;
CODE_0DA177:        LDY $0742                 ;
CODE_0DA17A:        BEQ CODE_0DA1BF           ;
CODE_0DA17C:        LDA $0725                 ;
CODE_0DA17F:        CMP #$03                  ;
CODE_0DA181:        BMI CODE_0DA188           ;
CODE_0DA183:        SEC                       ;
CODE_0DA184:        SBC #$03                  ;
CODE_0DA186:        BPL CODE_0DA17F           ;
CODE_0DA188:        ASL A                     ;
CODE_0DA189:        ASL A                     ;
CODE_0DA18A:        ASL A                     ;
CODE_0DA18B:        ASL A                     ;
CODE_0DA18C:        ADC DATA_0DA0F0-1,y               ;
CODE_0DA18F:        ADC $0726                 ;
CODE_0DA192:        TAX                       ;
CODE_0DA193:        LDA.l DATA_0FF77A,x             ;
CODE_0DA197:        BEQ CODE_0DA1BF           ;
CODE_0DA199:        PHA                       ;
CODE_0DA19A:        AND #$0F                  ;
CODE_0DA19C:        SEC                       ;
CODE_0DA19D:        SBC #$01                  ;
CODE_0DA19F:        STA $00                   ;
CODE_0DA1A1:        ASL A                     ;
CODE_0DA1A2:        ADC $00                   ;
CODE_0DA1A4:        TAX                       ;
CODE_0DA1A5:        PLA                       ;
CODE_0DA1A6:        LSR A                     ;
CODE_0DA1A7:        LSR A                     ;
CODE_0DA1A8:        LSR A                     ;
CODE_0DA1A9:        LSR A                     ;
CODE_0DA1AA:        TAY                       ;
CODE_0DA1AB:        LDA #$03                  ;
CODE_0DA1AD:        STA $00                   ;
CODE_0DA1AF:        LDA DATA_0DA0F0+3,x               ;
CODE_0DA1B2:        STA $06A1,y               ;
CODE_0DA1B5:        INX                       ;
CODE_0DA1B6:        INY                       ;
CODE_0DA1B7:        CPY #$0B                  ;
CODE_0DA1B9:        BEQ CODE_0DA1BF           ;
CODE_0DA1BB:        DEC $00                   ;
CODE_0DA1BD:        BNE CODE_0DA1AF           ;
CODE_0DA1BF:        LDX $0741                 ;
CODE_0DA1C2:        BEQ CODE_0DA1FD           ;
CODE_0DA1C4:        LDY DATA_0DA116,x               ;
CODE_0DA1C7:        LDX #$00                  ;
CODE_0DA1C9:        LDA DATA_0DA116+4,y               ;
CODE_0DA1CC:        BEQ CODE_0DA1F7           ;
CODE_0DA1CE:        PHY                       ;
CODE_0DA1CF:        LDY $5C                   ;
CODE_0DA1D1:        BNE CODE_0DA1E9           ;
CODE_0DA1D3:        LDY $DB                   ;
CODE_0DA1D5:        CPY #$45                  ;
CODE_0DA1D7:        BEQ CODE_0DA1F3           ;
CODE_0DA1D9:        LDY $0EF0                 ;
CODE_0DA1DC:        BNE CODE_0DA1E4           ;
CODE_0DA1DE:        INC $0EF0                 ;
CODE_0DA1E1:        INC A                     ;
CODE_0DA1E2:        BRA CODE_0DA1F1           ;

CODE_0DA1E4:        STZ $0EF0                 ;
CODE_0DA1E7:        BRA CODE_0DA1F3           ;

CODE_0DA1E9:        CPY #$03                  ;
CODE_0DA1EB:        BNE CODE_0DA1F3           ;
CODE_0DA1ED:        CMP #$86                  ;
CODE_0DA1EF:        BNE CODE_0DA1F3           ;
CODE_0DA1F1:        INC A                     ;
CODE_0DA1F2:        INC A                     ;
CODE_0DA1F3:        PLY                       ;
CODE_0DA1F4:        STA $06A1,x               ;
CODE_0DA1F7:        INY                       ;
CODE_0DA1F8:        INX                       ;
CODE_0DA1F9:        CPX #$0D                  ;
CODE_0DA1FB:        BNE CODE_0DA1C9           ;
CODE_0DA1FD:        STZ $0109                 ;
CODE_0DA200:        STZ $F9                   ;
CODE_0DA202:        LDA $0EE8                 ;
CODE_0DA205:        STA $0EE9                 ;
CODE_0DA208:        INC $0EE8                 ;
CODE_0DA20B:        LDY $5C                   ;
CODE_0DA20D:        BNE CODE_0DA219           ;
CODE_0DA20F:        LDA $DB                   ;
CODE_0DA211:        CMP #$41                  ;
CODE_0DA213:        BNE CODE_0DA219           ;
CODE_0DA215:        LDA #$63                  ;
CODE_0DA217:        BRA CODE_0DA223           ;

CODE_0DA219:        LDA DATA_0DA141,y               ;
CODE_0DA21C:        LDY $0743                 ;
CODE_0DA21F:        BEQ CODE_0DA223           ;
CODE_0DA221:        LDA #$86                  ;
CODE_0DA223:        STA $07                   ;
CODE_0DA225:        LDX #$00                  ;
CODE_0DA227:        LDA $0727                 ;
CODE_0DA22A:        ASL A                     ;
CODE_0DA22B:        TAY                       ;
CODE_0DA22C:        LDA DATA_0DA141+4,y               ;
CODE_0DA22F:        STA $00                   ;
CODE_0DA231:        INY                       ;
CODE_0DA232:        STY $01                   ;
CODE_0DA234:        LDA $0743                 ;
CODE_0DA237:        BEQ CODE_0DA243           ;
CODE_0DA239:        CPX #$00                  ;
CODE_0DA23B:        BEQ CODE_0DA243           ;
CODE_0DA23D:        LDA $00                   ;
CODE_0DA23F:        AND #$08                  ;
CODE_0DA241:        STA $00                   ;
CODE_0DA243:        LDY #$00                  ;
CODE_0DA245:        LDA DATA_0DC97F,y               ;
CODE_0DA248:        BIT $00                   ;
CODE_0DA24A:        BEQ CODE_0DA29C           ;
CODE_0DA24C:        LDA $00DB                 ;
CODE_0DA24F:        CMP #$09                  ;
CODE_0DA251:        BEQ CODE_0DA263           ;
CODE_0DA253:        LDA $BA                   ;
CODE_0DA255:        CMP #$03                  ;
CODE_0DA257:        BNE CODE_0DA263           ;
CODE_0DA259:        LDA $F9                   ;
CODE_0DA25B:        BEQ CODE_0DA263           ;
CODE_0DA25D:        LDA #$66                  ;
CODE_0DA25F:        STA $07                   ;
CODE_0DA261:        BRA CODE_0DA265           ;

CODE_0DA263:        LDA $07                   ;
CODE_0DA265:        STA $06A1,x               ;
CODE_0DA268:        LDA $F9                   ;
CODE_0DA26A:        BEQ CODE_0DA280           ;
CODE_0DA26C:        LDA $BA                   ;
CODE_0DA26E:        CMP #$03                  ;
CODE_0DA270:        BNE CODE_0DA280           ;
CODE_0DA272:        LDA $F9                   ;
CODE_0DA274:        INC $F9                   ;
CODE_0DA276:        INC A                     ;
CODE_0DA277:        BNE CODE_0DA2A3           ;
CODE_0DA279:        INC $06A1,x               ;
CODE_0DA27C:        INC $07                   ;
CODE_0DA27E:        BRA CODE_0DA2A3           ;

CODE_0DA280:        LDA $BA                   ;
CODE_0DA282:        CMP #$03                  ;
CODE_0DA284:        BNE CODE_0DA2A3           ;
CODE_0DA286:        LDA $0743                 ;
CODE_0DA289:        BNE CODE_0DA2A3           ;
CODE_0DA28B:        LDA $0109                 ;
CODE_0DA28E:        BNE CODE_0DA2A3           ;
CODE_0DA290:        LDA $0EE9                 ;
CODE_0DA293:        AND #$01                  ;
CODE_0DA295:        BNE CODE_0DA2A3           ;
CODE_0DA297:        INC $06A1,x               ;
CODE_0DA29A:        BRA CODE_0DA2A3           ;

CODE_0DA29C:        LDA #$FE                  ;
CODE_0DA29E:        STA $F9                   ;
CODE_0DA2A0:        INC $0109                 ;
CODE_0DA2A3:        INX                       ;
CODE_0DA2A4:        CPX #$0D                  ;
CODE_0DA2A6:        BEQ CODE_0DA2C5           ;
CODE_0DA2A8:        LDA $5C                   ;
CODE_0DA2AA:        CMP #$02                  ;
CODE_0DA2AC:        BNE CODE_0DA2B6           ;
CODE_0DA2AE:        CPX #$0B                  ;
CODE_0DA2B0:        BNE CODE_0DA2B6           ;
CODE_0DA2B2:        LDA #$4E                  ;
CODE_0DA2B4:        STA $07                   ;
CODE_0DA2B6:        INC $0EE9                 ;
CODE_0DA2B9:        INY                       ;
CODE_0DA2BA:        CPY #$08                  ;
CODE_0DA2BC:        BNE CODE_0DA245           ;
CODE_0DA2BE:        LDY $01                   ;
CODE_0DA2C0:        BEQ CODE_0DA2C5           ;
CODE_0DA2C2:        JMP CODE_0DA22C           ;

CODE_0DA2C5:        LDA $06AD                 ;
CODE_0DA2C8:        CMP #$4E                  ;
CODE_0DA2CA:        BEQ CODE_0DA2D0           ;
CODE_0DA2CC:        CMP #$71                  ;
CODE_0DA2CE:        BNE CODE_0DA2D3           ;
CODE_0DA2D0:        INC $06AD                 ;
CODE_0DA2D3:        JSR CODE_0DA316           ;
CODE_0DA2D6:        LDA $06A0                 ;
CODE_0DA2D9:        JSR CODE_0DAA8F           ;
CODE_0DA2DC:        LDA $06AC                 ;
CODE_0DA2DF:        CMP #$70                  ;
CODE_0DA2E1:        BNE CODE_0DA2E6           ;
CODE_0DA2E3:        STA $06AD                 ;
CODE_0DA2E6:        LDX #$00                  ;
CODE_0DA2E8:        TXY                       ;
CODE_0DA2E9:        STY $00                   ;
CODE_0DA2EB:        LDA $0EC9                 ;
CODE_0DA2EE:        BNE CODE_0DA311           ;
CODE_0DA2F0:        LDA $06A1,x               ;
CODE_0DA2F3:        AND #$C0                  ;
CODE_0DA2F5:        ASL A                     ;
CODE_0DA2F6:        ROL A                     ;
CODE_0DA2F7:        ROL A                     ;
CODE_0DA2F8:        TAY                       ;
CODE_0DA2F9:        LDA $06A1,x               ;
CODE_0DA2FC:        CMP DATA_0DA312,y               ;
CODE_0DA2FF:        BCS CODE_0DA303           ;
CODE_0DA301:        LDA #$00                  ;
CODE_0DA303:        LDY $00                   ;
CODE_0DA305:        STA ($06),y               ;
CODE_0DA307:        TYA                       ;
CODE_0DA308:        CLC                       ;
CODE_0DA309:        ADC #$10                  ;
CODE_0DA30B:        TAY                       ;
CODE_0DA30C:        INX                       ;
CODE_0DA30D:        CPX #$0D                  ;
CODE_0DA30F:        BCC CODE_0DA2E9           ;
CODE_0DA311:        RTS                       ;

DATA_0DA312:        db $16,$49,$86,$E7

CODE_0DA316:        REP #$10                  ;
CODE_0DA318:        LDX #$0004                ;
CODE_0DA31B:        STZ $010B                 ;
CODE_0DA31E:        STX $9E                   ;
CODE_0DA320:        STZ $0729                 ;
CODE_0DA323:        LDY $072C                 ;
CODE_0DA326:        LDA [$FA],y               ;
CODE_0DA328:        CMP #$FD                  ;
CODE_0DA32A:        BEQ CODE_0DA38F           ;
CODE_0DA32C:        AND #$0F                  ;
CODE_0DA32E:        CMP #$0F                  ;
CODE_0DA330:        BNE CODE_0DA335           ;
CODE_0DA332:        INC $010B                 ;
CODE_0DA335:        LDA $1300,x               ;
CODE_0DA338:        BPL CODE_0DA38F           ;
CODE_0DA33A:        LDA $010B                 ;
CODE_0DA33D:        BEQ CODE_0DA340           ;
CODE_0DA33F:        INY                       ;
CODE_0DA340:        INY                       ;
CODE_0DA341:        LDA [$FA],y               ;
CODE_0DA343:        ASL A                     ;
CODE_0DA344:        BCC CODE_0DA351           ;
CODE_0DA346:        LDA $072B                 ;
CODE_0DA349:        BNE CODE_0DA351           ;
CODE_0DA34B:        INC $072B                 ;
CODE_0DA34E:        INC $072A                 ;
CODE_0DA351:        LDY $072C                 ;
CODE_0DA354:        LDA [$FA],y               ;
CODE_0DA356:        AND #$0F                  ;
CODE_0DA358:        CMP #$0D                  ;
CODE_0DA35A:        BNE CODE_0DA37E           ;
CODE_0DA35C:        INY                       ;
CODE_0DA35D:        LDA [$FA],y               ;
CODE_0DA35F:        LDY $072C                 ;
CODE_0DA362:        AND #$40                  ;
CODE_0DA364:        BNE CODE_0DA387           ;
CODE_0DA366:        LDA $072B                 ;
CODE_0DA369:        BNE CODE_0DA387           ;
CODE_0DA36B:        LDA $010B                 ;
CODE_0DA36E:        BEQ CODE_0DA371           ;
CODE_0DA370:        INY                       ;
CODE_0DA371:        INY                       ;
CODE_0DA372:        LDA [$FA],y               ;
CODE_0DA374:        AND #$1F                  ;
CODE_0DA376:        STA $072A                 ;
CODE_0DA379:        INC $072B                 ;
CODE_0DA37C:        BRA CODE_0DA399           ;

CODE_0DA37E:        CMP #$0E                  ;
CODE_0DA380:        BNE CODE_0DA387           ;
CODE_0DA382:        LDA $0728                 ;
CODE_0DA385:        BNE CODE_0DA38F           ;
CODE_0DA387:        LDA $072A                 ;
CODE_0DA38A:        CMP $0725                 ;
CODE_0DA38D:        BCC CODE_0DA396           ;
CODE_0DA38F:        JSR CODE_0DA3DD           ;
CODE_0DA392:        REP #$10                  ;
CODE_0DA394:        BRA CODE_0DA39C           ;

CODE_0DA396:        INC $0729                 ;
CODE_0DA399:        JSR CODE_0DA3BF           ;
CODE_0DA39C:        LDX $9E                   ;
CODE_0DA39E:        LDA $1300,x               ;
CODE_0DA3A1:        BMI CODE_0DA3A6           ;
CODE_0DA3A3:        DEC $1300,x               ;
CODE_0DA3A6:        DEX                       ;
CODE_0DA3A7:        BMI CODE_0DA3AC           ;
CODE_0DA3A9:        JMP CODE_0DA31B           ;

CODE_0DA3AC:        LDA $0729                 ;
CODE_0DA3AF:        BEQ CODE_0DA3B4           ;
CODE_0DA3B1:        JMP CODE_0DA316           ;

CODE_0DA3B4:        LDA $0728                 ;
CODE_0DA3B7:        BEQ CODE_0DA3BC           ;
CODE_0DA3B9:        JMP CODE_0DA316           ;

CODE_0DA3BC:        SEP #$10                  ;
CODE_0DA3BE:        RTS                       ;

CODE_0DA3BF:        REP #$20                  ;
CODE_0DA3C1:        INC $072C                 ;
CODE_0DA3C4:        INC $072C                 ;
CODE_0DA3C7:        LDA $010B                 ;
CODE_0DA3CA:        AND #$00FF                ;
CODE_0DA3CD:        BEQ CODE_0DA3D2           ;
CODE_0DA3CF:        INC $072C                 ;
CODE_0DA3D2:        SEP #$20                  ;
CODE_0DA3D4:        LDA #$00                  ;
CODE_0DA3D6:        STA $072B                 ;
CODE_0DA3D9:        STA $010B                 ;
CODE_0DA3DC:        RTS                       ;

CODE_0DA3DD:        REP #$30                  ;
CODE_0DA3DF:        TXA                       ;
CODE_0DA3E0:        AND #$00FF                ;
CODE_0DA3E3:        TAX                       ;
CODE_0DA3E4:        SEP #$20                  ;
CODE_0DA3E6:        LDA $1300,x               ;
CODE_0DA3E9:        BMI CODE_0DA3F5           ;
CODE_0DA3EB:        REP #$20                  ;
CODE_0DA3ED:        TXA                       ;
CODE_0DA3EE:        ASL A                     ;
CODE_0DA3EF:        TAX                       ;
CODE_0DA3F0:        LDY $1305,x               ;
CODE_0DA3F3:        SEP #$20                  ;
CODE_0DA3F5:        LDA $0F82                 ;
CODE_0DA3F8:        BEQ CODE_0DA402           ;
CODE_0DA3FA:        JSL CODE_0E82EE           ;
CODE_0DA3FE:        STZ $0F82                 ;
CODE_0DA401:        RTS                       ;

CODE_0DA402:        STY $F7                   ;
CODE_0DA404:        STZ $F6                   ;
CODE_0DA406:        STZ $010B                 ;
CODE_0DA409:        LDX #$0010                ;
CODE_0DA40C:        LDA [$FA],y               ;
CODE_0DA40E:        CMP #$FD                  ;
CODE_0DA410:        BEQ CODE_0DA3BC           ;
CODE_0DA412:        AND #$0F                  ;
CODE_0DA414:        CMP #$0F                  ;
CODE_0DA416:        BNE CODE_0DA41C           ;
CODE_0DA418:        INC $F6                   ;
CODE_0DA41A:        BRA CODE_0DA426           ;

CODE_0DA41C:        LDX #$0008                ;
CODE_0DA41F:        CMP #$0C                  ;
CODE_0DA421:        BEQ CODE_0DA426           ;
CODE_0DA423:        LDX #$0000                ;
CODE_0DA426:        STX $07                   ;
CODE_0DA428:        LDX $9E                   ;
CODE_0DA42A:        CMP #$0E                  ;
CODE_0DA42C:        BNE CODE_0DA434           ;
CODE_0DA42E:        STZ $07                   ;
CODE_0DA430:        LDA #$36                  ;
CODE_0DA432:        BNE CODE_0DA491           ;
CODE_0DA434:        CMP #$0D                  ;
CODE_0DA436:        BNE CODE_0DA457           ;
CODE_0DA438:        LDA #$28                  ;
CODE_0DA43A:        STA $07                   ;
CODE_0DA43C:        LDA $F6                   ;
CODE_0DA43E:        BEQ CODE_0DA441           ;
CODE_0DA440:        INY                       ;
CODE_0DA441:        INY                       ;
CODE_0DA442:        LDA [$FA],y               ;
CODE_0DA444:        AND #$40                  ;
CODE_0DA446:        BEQ CODE_0DA4B0           ;
CODE_0DA448:        LDA [$FA],y               ;
CODE_0DA44A:        AND #$7F                  ;
CODE_0DA44C:        CMP #$4B                  ;
CODE_0DA44E:        BNE CODE_0DA453           ;
CODE_0DA450:        INC $0745                 ;
CODE_0DA453:        AND #$3F                  ;
CODE_0DA455:        BRA CODE_0DA491           ;

CODE_0DA457:        CMP #$0C                  ;
CODE_0DA459:        BCS CODE_0DA483           ;
CODE_0DA45B:        LDA $F6                   ;
CODE_0DA45D:        BEQ CODE_0DA460           ;
CODE_0DA45F:        INY                       ;
CODE_0DA460:        INY                       ;
CODE_0DA461:        LDA [$FA],y               ;
CODE_0DA463:        AND #$70                  ;
CODE_0DA465:        BNE CODE_0DA471           ;
CODE_0DA467:        LDA #$18                  ;
CODE_0DA469:        STA $07                   ;
CODE_0DA46B:        LDA [$FA],y               ;
CODE_0DA46D:        AND #$0F                  ;
CODE_0DA46F:        BRA CODE_0DA491           ;

CODE_0DA471:        STA $00                   ;
CODE_0DA473:        CMP #$70                  ;
CODE_0DA475:        BNE CODE_0DA47F           ;
CODE_0DA477:        LDA [$FA],y               ;
CODE_0DA479:        AND #$08                  ;
CODE_0DA47B:        BEQ CODE_0DA47F           ;
CODE_0DA47D:        STZ $00                   ;
CODE_0DA47F:        LDA $00                   ;
CODE_0DA481:        BRA CODE_0DA48D           ;

CODE_0DA483:        LDA $F6                   ;
CODE_0DA485:        BEQ CODE_0DA488           ;
CODE_0DA487:        INY                       ;
CODE_0DA488:        INY                       ;
CODE_0DA489:        LDA [$FA],y               ;
CODE_0DA48B:        AND #$70                  ;
CODE_0DA48D:        LSR A                     ;
CODE_0DA48E:        LSR A                     ;
CODE_0DA48F:        LSR A                     ;
CODE_0DA490:        LSR A                     ;
CODE_0DA491:        STA $00                   ;
CODE_0DA493:        LDA $1300,x               ;
CODE_0DA496:        BPL CODE_0DA4F0           ;
CODE_0DA498:        LDA $072A                 ;
CODE_0DA49B:        CMP $0725                 ;
CODE_0DA49E:        BEQ CODE_0DA4B3           ;
CODE_0DA4A0:        LDY $072C                 ;
CODE_0DA4A3:        LDA [$FA],y               ;
CODE_0DA4A5:        AND #$0F                  ;
CODE_0DA4A7:        CMP #$0E                  ;
CODE_0DA4A9:        BNE CODE_0DA4B0           ;
CODE_0DA4AB:        LDA $0728                 ;
CODE_0DA4AE:        BNE CODE_0DA4D7           ;
CODE_0DA4B0:        SEP #$10                  ;
CODE_0DA4B2:        RTS                       ;

CODE_0DA4B3:        LDA $0728                 ;
CODE_0DA4B6:        BEQ CODE_0DA4C7           ;
CODE_0DA4B8:        LDA #$00                  ;
CODE_0DA4BA:        STA $0728                 ;
CODE_0DA4BD:        STA $0729                 ;
CODE_0DA4C0:        STA $9E                   ;
CODE_0DA4C2:        STA $9F                   ;
CODE_0DA4C4:        SEP #$10                  ;
CODE_0DA4C6:        RTS                       ;

CODE_0DA4C7:        LDY $072C                 ;
CODE_0DA4CA:        LDA [$FA],y               ;
CODE_0DA4CC:        AND #$F0                  ;
CODE_0DA4CE:        LSR A                     ;
CODE_0DA4CF:        LSR A                     ;
CODE_0DA4D0:        LSR A                     ;
CODE_0DA4D1:        LSR A                     ;
CODE_0DA4D2:        CMP $0726                 ;
CODE_0DA4D5:        BNE CODE_0DA4B0           ;
CODE_0DA4D7:        PHX                       ;
CODE_0DA4D8:        REP #$20                  ;
CODE_0DA4DA:        TXA                       ;
CODE_0DA4DB:        ASL A                     ;
CODE_0DA4DC:        TAX                       ;
CODE_0DA4DD:        LDA $072C                 ;
CODE_0DA4E0:        STA $1305,x               ;
CODE_0DA4E3:        SEP #$20                  ;
CODE_0DA4E5:        PLX                       ;
CODE_0DA4E6:        LDA $F6                   ;
CODE_0DA4E8:        BEQ CODE_0DA4ED           ;
CODE_0DA4EA:        INC $010B                 ;
CODE_0DA4ED:        JSR CODE_0DA3BF           ;
CODE_0DA4F0:        LDA $F6                   ;
CODE_0DA4F2:        BEQ CODE_0DA4FD           ;
CODE_0DA4F4:        LDY $F7                   ;
CODE_0DA4F6:        JSL CODE_0E88C0           ;
CODE_0DA4FA:        SEP #$10                  ;
CODE_0DA4FC:        RTS                       ;

CODE_0DA4FD:        SEP #$10                  ;
CODE_0DA4FF:        LDA $00                   ;
CODE_0DA501:        CLC                       ;
CODE_0DA502:        ADC $07                   ;
CODE_0DA504:        ASL A                     ;
CODE_0DA505:        TAY                       ;
CODE_0DA506:        LDA PNTR_0DA513,y               ;
CODE_0DA509:        STA $04                   ;
CODE_0DA50B:        LDA PNTR_0DA513+1,y               ;
CODE_0DA50E:        STA $05                   ;
CODE_0DA510:        JMP ($0004)               ;

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

CODE_0DA581:        JSL CODE_0FF2D9
CODE_0DA585:        RTS        

CODE_0DA586:        JSL CODE_0FF2FC           ;
CODE_0DA58A:        RTS                       ;

CODE_0DA58B:        RTS                       ;

CODE_0DA58C:        PHX                       ;
CODE_0DA58D:        REP #$30                  ;
CODE_0DA58F:        TXA                       ;
CODE_0DA590:        ASL A                     ;
CODE_0DA591:        TAX                       ;
CODE_0DA592:        LDY $1305,x               ;
CODE_0DA595:        SEP #$20                  ;
CODE_0DA597:        INY                       ;
CODE_0DA598:        LDA [$FA],y               ;
CODE_0DA59A:        SEP #$10                  ;
CODE_0DA59C:        PLX                       ;
CODE_0DA59D:        PHA                       ;
CODE_0DA59E:        AND #$40                  ;
CODE_0DA5A0:        BNE CODE_0DA5B4           ;
CODE_0DA5A2:        PLA                       ;
CODE_0DA5A3:        PHA                       ;
CODE_0DA5A4:        AND #$0F                  ;
CODE_0DA5A6:        STA $0727                 ;
CODE_0DA5A9:        PLA                       ;
CODE_0DA5AA:        AND #$30                  ;
CODE_0DA5AC:        LSR A                     ;
CODE_0DA5AD:        LSR A                     ;
CODE_0DA5AE:        LSR A                     ;
CODE_0DA5AF:        LSR A                     ;
CODE_0DA5B0:        STA $0742                 ;
CODE_0DA5B3:        RTS                       ;

CODE_0DA5B4:        PLA                       ;
CODE_0DA5B5:        AND #$07                  ;
CODE_0DA5B7:        CMP #$04                  ;
CODE_0DA5B9:        BCC CODE_0DA5C0           ;
CODE_0DA5BB:        STA $0744                 ;
CODE_0DA5BE:        LDA #$00                  ;
CODE_0DA5C0:        STA $0741                 ;
CODE_0DA5C3:        RTS                       ;

CODE_0DA5C4:        LDX #$80                  ;
CODE_0DA5C6:        LDA $07FB                 ;
CODE_0DA5C9:        BNE CODE_0DA5DE           ;
CODE_0DA5CB:        LDA $075F                 ;
CODE_0DA5CE:        BNE CODE_0DA5E6           ;
CODE_0DA5D0:        LDY $5C                   ;
CODE_0DA5D2:        DEY                       ;
CODE_0DA5D3:        BEQ CODE_0DA5DB           ;
CODE_0DA5D5:        LDA $074F                 ;
CODE_0DA5D8:        BEQ CODE_0DA5DC           ;
CODE_0DA5DA:        INX                       ;
CODE_0DA5DB:        INX                       ;
CODE_0DA5DC:        BRA CODE_0DA605           ;

CODE_0DA5DE:        LDA #$87                  ;
CODE_0DA5E0:        CLC                       ;
CODE_0DA5E1:        ADC $075C                 ;
CODE_0DA5E4:        BNE CODE_0DA606           ;
CODE_0DA5E6:        LDX #$83                  ;
CODE_0DA5E8:        LDA $075F                 ;
CODE_0DA5EB:        CMP #$02                  ;
CODE_0DA5ED:        BEQ CODE_0DA605           ;
CODE_0DA5EF:        INX                       ;
CODE_0DA5F0:        CMP #$04                  ;
CODE_0DA5F2:        BNE CODE_0DA602           ;
CODE_0DA5F4:        LDA $074F                 ;
CODE_0DA5F7:        CMP #$0B                  ;
CODE_0DA5F9:        BEQ CODE_0DA605           ;
CODE_0DA5FB:        LDY $5C                   ;
CODE_0DA5FD:        DEY                       ;
CODE_0DA5FE:        BEQ CODE_0DA603           ;
CODE_0DA600:        BRA CODE_0DA604           ;

CODE_0DA602:        INX                       ;
CODE_0DA603:        INX                       ;
CODE_0DA604:        INX                       ;
CODE_0DA605:        TXA                       ;
CODE_0DA606:        STA $06D6                 ;
CODE_0DA609:        JSR CODE_0D8EB3           ;
CODE_0DA60C:        LDA #$0D                  ;
CODE_0DA60E:        JSR CODE_0DA61A           ;
CODE_0DA611:        LDA $0723                 ;
CODE_0DA614:        EOR #$01                  ;
CODE_0DA616:        STA $0723                 ;
CODE_0DA619:        RTS                       ;

CODE_0DA61A:        STA $00                   ;
CODE_0DA61C:        LDA #$00                  ;
CODE_0DA61E:        LDX #$08                  ;
CODE_0DA620:        LDY $1C,x                 ;
CODE_0DA622:        CPY $00                   ;
CODE_0DA624:        BNE CODE_0DA628           ;
CODE_0DA626:        STA $10,x                 ;
CODE_0DA628:        DEX                       ;
CODE_0DA629:        BPL CODE_0DA620           ;
CODE_0DA62B:        RTS                       ;

DATA_0DA62C:        db $14,$17,$18

CODE_0DA62F:        LDX $00                   ;
CODE_0DA631:        LDA DATA_0DA62C-8,x               ;
CODE_0DA634:        LDY #$09                  ;
CODE_0DA636:        DEY                       ;
CODE_0DA637:        BMI CODE_0DA640           ;
CODE_0DA639:        CMP $001C,y               ;
CODE_0DA63C:        BNE CODE_0DA636           ;
CODE_0DA63E:        LDA #$00                  ;
CODE_0DA640:        STA $06CD                 ;
CODE_0DA643:        RTS                       ;

CODE_0DA644:        LDA $0733                 ;
CODE_0DA647:        ASL A                     ;
CODE_0DA648:        TAY                       ;
CODE_0DA649:        LDA PNTR_0DA656,y               ;
CODE_0DA64C:        STA $04                   ;
CODE_0DA64E:        LDA PNTR_0DA656+1,y               ;
CODE_0DA651:        STA $05                   ;
CODE_0DA653:        JMP ($0004)               ;

PNTR_0DA656:        dw CODE_0DA65C
                    dw CODE_0DA6CC
                    dw CODE_0DA92B

CODE_0DA65C:        JSR CODE_0DAA5B           ;
CODE_0DA65F:        STX $0ECA                 ;
CODE_0DA662:        LDA $1300,x               ;
CODE_0DA665:        BEQ CODE_0DA6C7           ;
CODE_0DA667:        BPL CODE_0DA67A           ;
CODE_0DA669:        TYA                       ;
CODE_0DA66A:        STA $1300,x               ;
CODE_0DA66D:        LDA $0725                 ;
CODE_0DA670:        ORA $0726                 ;
CODE_0DA673:        BEQ CODE_0DA67A           ;
CODE_0DA675:        LDA #$1E                  ;
CODE_0DA677:        JMP CODE_0DA6F8           ;

CODE_0DA67A:        STA $0ECB                 ;
CODE_0DA67D:        LDX $07                   ;
CODE_0DA67F:        LDA #$1F                  ;
CODE_0DA681:        STA $06A1,x               ;
CODE_0DA684:        TXY                       ;
CODE_0DA685:        INY                       ;
CODE_0DA686:        LDX $0ECA                 ;
CODE_0DA689:        DEC $0ECB                 ;
CODE_0DA68C:        BEQ CODE_0DA6A8           ;
CODE_0DA68E:        LDA $130F,x               ;
CODE_0DA691:        BNE CODE_0DA69F           ;
CODE_0DA693:        INC $130F,x               ;
CODE_0DA696:        LDA #$0E                  ;
CODE_0DA698:        STA $06A1,y               ;
CODE_0DA69B:        LDA #$12                  ;
CODE_0DA69D:        BRA CODE_0DA6C3           ;

CODE_0DA69F:        LDA #$0F                  ;
CODE_0DA6A1:        STA $06A1,y               ;
CODE_0DA6A4:        LDA #$13                  ;
CODE_0DA6A6:        BRA CODE_0DA6C3           ;

CODE_0DA6A8:        LDA $130F,x               ;
CODE_0DA6AB:        BEQ CODE_0DA6B9           ;
CODE_0DA6AD:        STZ $130F,x               ;
CODE_0DA6B0:        LDA #$10                  ;
CODE_0DA6B2:        STA $06A1,y               ;
CODE_0DA6B5:        LDA #$14                  ;
CODE_0DA6B7:        BRA CODE_0DA6C3           ;

CODE_0DA6B9:        STZ $130F,x               ;
CODE_0DA6BC:        LDA #$11                  ;
CODE_0DA6BE:        STA $06A1,y               ;
CODE_0DA6C1:        LDA #$15                  ;
CODE_0DA6C3:        TYX                       ;
CODE_0DA6C4:        JMP CODE_0DA6F2           ;

CODE_0DA6C7:        LDA #$20                  ;
CODE_0DA6C9:        JMP CODE_0DA6F8           ;

CODE_0DA6CC:        JSR CODE_0DAA4C           ;
CODE_0DA6CF:        STY $06                   ;
CODE_0DA6D1:        BCC CODE_0DA6DE           ;
CODE_0DA6D3:        LDA $1300,x               ;
CODE_0DA6D6:        LSR A                     ;
CODE_0DA6D7:        STA $1314,x               ;
CODE_0DA6DA:        LDA #$21                  ;
CODE_0DA6DC:        BRA CODE_0DA6F8           ;

CODE_0DA6DE:        LDA #$23                  ;
CODE_0DA6E0:        LDY $1300,x               ;
CODE_0DA6E3:        BEQ CODE_0DA6F8           ;
CODE_0DA6E5:        LDA $1314,x               ;
CODE_0DA6E8:        STA $06                   ;
CODE_0DA6EA:        LDX $07                   ;
CODE_0DA6EC:        LDA #$22                  ;
CODE_0DA6EE:        STA $06A1,x               ;
CODE_0DA6F1:        RTS                       ;

CODE_0DA6F2:        INX                       ;
CODE_0DA6F3:        LDY #$0F                  ;
CODE_0DA6F5:        JMP CODE_0DAA15           ;

CODE_0DA6F8:        LDX $07                   ;
CODE_0DA6FA:        LDY #$00                  ;
CODE_0DA6FC:        JMP CODE_0DAA15           ;

CODE_0DA6FF:        JSL CODE_0E88A6           ;
CODE_0DA703:        RTS                       ;

CODE_0DA704:        JSR CODE_0DAA5B           ;
CODE_0DA707:        LDY $1300,x               ;
CODE_0DA70A:        LDX $07                   ;
CODE_0DA70C:        LDA #$76                  ;
CODE_0DA70E:        STA $06A1,x               ;
CODE_0DA711:        LDA #$77                  ;
CODE_0DA713:        STA $06A2,x               ;
CODE_0DA716:        RTS                       ;

CODE_0DA717:        LDY #$03                  ;
CODE_0DA719:        JSR CODE_0DAA4F           ;
CODE_0DA71C:        LDY #$0A                  ;
CODE_0DA71E:        DEY                       ;
CODE_0DA71F:        DEY                       ;
CODE_0DA720:        STY $05                   ;
CODE_0DA722:        LDY $1300,x               ;
CODE_0DA725:        STY $06                   ;
CODE_0DA727:        LDX $05                   ;
CODE_0DA729:        INX                       ;
CODE_0DA72A:        LDA DATA_0DA75A,y               ;
CODE_0DA72D:        CMP #$00                  ;
CODE_0DA72F:        BEQ CODE_0DA739           ;
CODE_0DA731:        LDX #$00                  ;
CODE_0DA733:        LDY $05                   ;
CODE_0DA735:        JSR CODE_0DAA15           ;
CODE_0DA738:        CLC                       ;
CODE_0DA739:        LDY $06                   ;
CODE_0DA73B:        LDA DATA_0DA75E,y               ;
CODE_0DA73E:        STA $06A1,x               ;
CODE_0DA741:        LDA DATA_0DA762,y               ;
CODE_0DA744:        STA $06A2,x               ;
CODE_0DA747:        BCS CODE_0DA759           ;
CODE_0DA749:        LDX #$06                  ;
CODE_0DA74B:        LDA #$00                  ;
CODE_0DA74D:        STA $06A1,x               ;
CODE_0DA750:        DEX                       ;
CODE_0DA751:        BPL CODE_0DA74B           ;
CODE_0DA753:        LDA DATA_0DA766,y               ;
CODE_0DA756:        STA $06A8                 ;
CODE_0DA759:        RTS                       ;

DATA_0DA75A:        db $1B,$1A,$00,$00 ;

DATA_0DA75E:        db $1B,$27,$26,$25 ;

DATA_0DA762:        db $1B,$2A,$29,$28 ;

DATA_0DA766:        db $17,$16,$1B,$1A,$19,$18,$1B,$1A ;

CODE_0DA76E:        JSR CODE_0DA7BC           ;
CODE_0DA771:        LDA $00                   ;
CODE_0DA773:        BEQ CODE_0DA779           ;
CODE_0DA775:        INY                       ;
CODE_0DA776:        INY                       ;
CODE_0DA777:        INY                       ;
CODE_0DA778:        INY                       ;
CODE_0DA779:        TYA                       ;
CODE_0DA77A:        PHA                       ;
CODE_0DA77B:        LDY $1300,x               ;
CODE_0DA77E:        BEQ CODE_0DA7A8           ;
CODE_0DA780:        JSR CODE_0DA7FE           ;
CODE_0DA783:        BCS CODE_0DA7A8           ;
CODE_0DA785:        JSR CODE_0DAA79           ;
CODE_0DA788:        CLC                       ;
CODE_0DA789:        ADC #$08                  ;
CODE_0DA78B:        STA $021A,x               ;
CODE_0DA78E:        LDA $0725                 ;
CODE_0DA791:        ADC #$00                  ;
CODE_0DA793:        STA $79,x                 ;
CODE_0DA795:        LDA #$01                  ;
CODE_0DA797:        STA $BC,x                 ;
CODE_0DA799:        STA $10,x                 ;
CODE_0DA79B:        JSR CODE_0DAA81           ;
CODE_0DA79E:        STA $0238,x               ;
CODE_0DA7A1:        LDA #$0D                  ;
CODE_0DA7A3:        STA $1C,x                 ;
CODE_0DA7A5:        JSR CODE_0DCA79           ;
CODE_0DA7A8:        PLA                       ;
CODE_0DA7A9:        TAY                       ;
CODE_0DA7AA:        LDX $07                   ;
CODE_0DA7AC:        LDA DATA_0DA766,y               ;
CODE_0DA7AF:        STA $06A1,x               ;
CODE_0DA7B2:        INX                       ;
CODE_0DA7B3:        LDA DATA_0DA766+2,y               ;
CODE_0DA7B6:        LDY $06                   ;
CODE_0DA7B8:        DEY                       ;
CODE_0DA7B9:        JMP CODE_0DAA15           ;

CODE_0DA7BC:        LDY #$01                  ;
CODE_0DA7BE:        JSR CODE_0DAA4F           ;
CODE_0DA7C1:        JSR CODE_0DAA5B           ;
CODE_0DA7C4:        TYA                       ;
CODE_0DA7C5:        AND #$07                  ;
CODE_0DA7C7:        STA $06                   ;
CODE_0DA7C9:        LDY $1300,x               ;
CODE_0DA7CC:        RTS                       ;

CODE_0DA7CD:        STA $001C,x               ;
CODE_0DA7D0:        JSR CODE_0DAA79           ;
CODE_0DA7D3:        CLC                       ;
CODE_0DA7D4:        ADC #$08                  ;
CODE_0DA7D6:        STA $021A,x               ;
CODE_0DA7D9:        LDA $0725                 ;
CODE_0DA7DC:        ADC #$00                  ;
CODE_0DA7DE:        STA $0079,x               ;
CODE_0DA7E1:        LDA #$01                  ;
CODE_0DA7E3:        STA $BC,x                 ;
CODE_0DA7E5:        STA $0010,x               ;
CODE_0DA7E8:        JSR CODE_0DAA81           ;
CODE_0DA7EB:        STA $0238,x               ;
CODE_0DA7EE:        JMP CODE_0DCA79           ;

CODE_0DA7F1:        LDX #$00                  ;
CODE_0DA7F3:        CLC                       ;
CODE_0DA7F4:        LDA $10,x                 ;
CODE_0DA7F6:        BEQ CODE_0DA7FD           ;
CODE_0DA7F8:        INX                       ;
CODE_0DA7F9:        CPX #$08                  ;
CODE_0DA7FB:        BNE CODE_0DA7F3           ;
CODE_0DA7FD:        RTS                       ;

CODE_0DA7FE:        LDX #$08                  ;
CODE_0DA800:        CLC                       ;
CODE_0DA801:        LDA $10,x                 ;
CODE_0DA803:        BEQ CODE_0DA80A           ;
CODE_0DA805:        DEX                       ;
CODE_0DA806:        CPX #$FF                  ;
CODE_0DA808:        BNE CODE_0DA800           ;
CODE_0DA80A:        RTS                       ;

DATA_0DA80B:        db $80,$81,$81,$82

DATA_0DA80F:        db $84,$85

CODE_0DA811:        JSR CODE_0DAA4C           ;
CODE_0DA814:        LDX #$0A                  ;
CODE_0DA816:        LDA $5C                   ;
CODE_0DA818:        CMP #$03                  ;
CODE_0DA81A:        BNE CODE_0DA81D           ;
CODE_0DA81C:        INX                       ;
CODE_0DA81D:        LDY $5C                   ;
CODE_0DA81F:        LDA DATA_0DA80B,y               ;
CODE_0DA822:        STA $06A1,x               ;
CODE_0DA825:        INX                       ;
CODE_0DA826:        TYA                       ;
CODE_0DA827:        LSR A                     ;
CODE_0DA828:        TAY                       ;
CODE_0DA829:        LDA DATA_0DA80F,y               ;
CODE_0DA82C:        LDY #$01                  ;
CODE_0DA82E:        JMP CODE_0DAA15           ;

CODE_0DA831:        LDA #$03                  ;
CODE_0DA833:        BRA CODE_0DA837           ;

CODE_0DA835:        LDA #$07                  ;
CODE_0DA837:        PHA                       ;
CODE_0DA838:        JSR CODE_0DAA4C           ;
CODE_0DA83B:        PLA                       ;
CODE_0DA83C:        TAX                       ;
CODE_0DA83D:        LDA #$E7                  ;
CODE_0DA83F:        STA $06A1,x               ;
CODE_0DA842:        RTS                       ;

CODE_0DA843:        LDA #$06                  ;
CODE_0DA845:        BRA CODE_0DA84D           ;

CODE_0DA847:        LDA #$07                  ;
CODE_0DA849:        BRA CODE_0DA84D           ;

CODE_0DA84B:        LDA #$09                  ;
CODE_0DA84D:        PHA                       ;
CODE_0DA84E:        JSR CODE_0DAA4C           ;
CODE_0DA851:        LDA $1300,x               ;
CODE_0DA854:        BEQ CODE_0DA866           ;
CODE_0DA856:        LDA $130F,x               ;
CODE_0DA859:        BNE CODE_0DA862           ;
CODE_0DA85B:        INC $130F,x               ;
CODE_0DA85E:        LDA #$08                  ;
CODE_0DA860:        BRA CODE_0DA86B           ;

CODE_0DA862:        LDA #$07                  ;
CODE_0DA864:        BRA CODE_0DA86B           ;

CODE_0DA866:        STZ $130F,x               ;
CODE_0DA869:        LDA #$09                  ;
CODE_0DA86B:        PLX                       ;
CODE_0DA86C:        STA $06A1,x               ;
CODE_0DA86F:        INX                       ;
CODE_0DA870:        LDY #$00                  ;
CODE_0DA872:        LDA #$6A                  ;
CODE_0DA874:        JMP CODE_0DAA15           ;

CODE_0DA877:        LDA #$2D                  ;
CODE_0DA879:        STA $06A1                 ;
CODE_0DA87C:        LDX #$01                  ;
CODE_0DA87E:        LDY #$08                  ;
CODE_0DA880:        LDA #$2E                  ;
CODE_0DA882:        JSR CODE_0DAA15           ;
CODE_0DA885:        LDA #$62                  ;
CODE_0DA887:        STA $06AB                 ;
CODE_0DA88A:        JSR CODE_0DAA79           ;
CODE_0DA88D:        CLC                       ;
CODE_0DA88E:        ADC #$08                  ;
CODE_0DA890:        STA $021F                 ;
CODE_0DA893:        LDA $0725                 ;
CODE_0DA896:        ADC #$00                  ;
CODE_0DA898:        STA $7E                   ;
CODE_0DA89A:        LDA #$30                  ;
CODE_0DA89C:        STA $023D                 ;
CODE_0DA89F:        LDA #$B0                  ;
CODE_0DA8A1:        STA $010D                 ;
CODE_0DA8A4:        LDA #$30                  ;
CODE_0DA8A6:        STA $21                   ;
CODE_0DA8A8:        INC $15                   ;
CODE_0DA8AA:        LDA #$FF                  ;
CODE_0DA8AC:        STA $0FB4                 ;
CODE_0DA8AF:        STA $0FB5                 ;
CODE_0DA8B2:        STA $0FB6                 ;
CODE_0DA8B5:        STA $0FB7                 ;
CODE_0DA8B8:        RTS                       ;

DATA_0DA8B9:        db $EB,$EA,$EA,$EA

CODE_0DA8BD:        LDY $5C                   ;
CODE_0DA8BF:        LDA DATA_0DA8B9,y               ;
CODE_0DA8C2:        JMP CODE_0DA909           ;

DATA_0DA8C5:        db $06,$07,$08,$FE,$0A,$87

CODE_0DA8CB:        LDY #$0C                  ;
CODE_0DA8CD:        JSR CODE_0DAA4F           ;
CODE_0DA8D0:        BRA CODE_0DA8D7           ;

CODE_0DA8D2:        LDA #$08                  ;
CODE_0DA8D4:        STA $0773                 ;
CODE_0DA8D7:        LDY $00                   ;
CODE_0DA8D9:        LDX DATA_0DA8C5-2,y               ;
CODE_0DA8DC:        LDA DATA_0DA8C5+1,y               ;
CODE_0DA8DF:        BRA CODE_0DA8E8           ;

CODE_0DA8E1:        JSR CODE_0DAA5B           ;
CODE_0DA8E4:        LDX $07                   ;
CODE_0DA8E6:        LDA #$FD                  ;
CODE_0DA8E8:        LDY #$00                  ;
CODE_0DA8EA:        JMP CODE_0DAA15           ;

DATA_0DA8ED:        db $70,$62,$62,$68,$2B,$49,$4A,$4A
                    db $86

CODE_0DA8F6:        LDY $5C
CODE_0DA8F8:        LDA $0743
CODE_0DA8FB:        BEQ CODE_0DA8FF           ;
CODE_0DA8FD:        LDY #$04                  ;
CODE_0DA8FF:        LDA DATA_0DA8ED+4,y               ;
CODE_0DA902:        BRA CODE_0DA909           ;

CODE_0DA904:        LDY $5C                   ;
CODE_0DA906:        LDA DATA_0DA8ED,y               ;
CODE_0DA909:        PHA                       ;
CODE_0DA90A:        JSR CODE_0DAA4C           ;
CODE_0DA90D:        LDX $07                   ;
CODE_0DA90F:        LDY #$00                  ;
CODE_0DA911:        PLA                       ;
CODE_0DA912:        JMP CODE_0DAA15           ;

CODE_0DA915:        LDY $5C                   ;
CODE_0DA917:        LDA DATA_0DA8ED+4,y               ;
CODE_0DA91A:        BRA CODE_0DA921           ;

CODE_0DA91C:        LDY $5C                   ;
CODE_0DA91E:        LDA DATA_0DA8ED,y               ;
CODE_0DA921:        PHA                       ;
CODE_0DA922:        JSR CODE_0DAA5B           ;
CODE_0DA925:        PLA                       ;
CODE_0DA926:        LDX $07                   ;
CODE_0DA928:        JMP CODE_0DAA15           ;

CODE_0DA92B:        JSR CODE_0DAA5B           ;
CODE_0DA92E:        LDX $07                   ;
CODE_0DA930:        LDA #$6B                  ;
CODE_0DA932:        STA $06A1,x               ;
CODE_0DA935:        INX                       ;
CODE_0DA936:        DEY                       ;
CODE_0DA937:        BMI CODE_0DA947           ;
CODE_0DA939:        LDA #$6C                  ;
CODE_0DA93B:        STA $06A1,x               ;
CODE_0DA93E:        INX                       ;
CODE_0DA93F:        DEY                       ;
CODE_0DA940:        BMI CODE_0DA947           ;
CODE_0DA942:        LDA #$6D                  ;
CODE_0DA944:        JSR CODE_0DAA15           ;
CODE_0DA947:        LDX $026A                 ;
CODE_0DA94A:        JSR CODE_0DAA81           ;
CODE_0DA94D:        STA $0277,x               ;
CODE_0DA950:        LDA $0725                 ;
CODE_0DA953:        STA $026B,x               ;
CODE_0DA956:        JSR CODE_0DAA79           ;
CODE_0DA959:        STA $0271,x               ;
CODE_0DA95C:        INX                       ;
CODE_0DA95D:        CPX #$06                  ;
CODE_0DA95F:        BCC CODE_0DA963           ;
CODE_0DA961:        LDX #$00                  ;
CODE_0DA963:        STX $026A                 ;
CODE_0DA966:        RTS                       ;

CODE_0DA967:        JSR CODE_0DAA5B           ;
CODE_0DA96A:        LDX #$00                  ;
CODE_0DA96C:        CLC                       ;
CODE_0DA96D:        LDA $10,x                 ;
CODE_0DA96F:        BEQ CODE_0DA976           ;
CODE_0DA971:        INX                       ;
CODE_0DA972:        CPX #$07                  ;
CODE_0DA974:        BNE CODE_0DA96C           ;
CODE_0DA976:        JSR CODE_0DAA79           ;
CODE_0DA979:        STA $021A,x               ;
CODE_0DA97C:        LDA $0725                 ;
CODE_0DA97F:        STA $79,x                 ;
CODE_0DA981:        JSR CODE_0DAA81           ;
CODE_0DA984:        STA $0238,x               ;
CODE_0DA987:        STA $5E,x                 ;
CODE_0DA989:        LDA #$32                  ;
CODE_0DA98B:        STA $1C,x                 ;
CODE_0DA98D:        LDY #$01                  ;
CODE_0DA98F:        STY $BC,x                 ;
CODE_0DA991:        LDA #$01                  ;
CODE_0DA993:        STA $10,x                 ;
CODE_0DA995:        LDX $07                   ;
CODE_0DA997:        LDA #$6E                  ;
CODE_0DA999:        STA $06A1,x               ;
CODE_0DA99C:        LDA #$6F                  ;
CODE_0DA99E:        STA $06A2,x               ;
CODE_0DA9A1:        RTS                       ;

CODE_0DA9A2:        LDA $075D                 ;
CODE_0DA9A5:        BEQ CODE_0DA9DB           ;
CODE_0DA9A7:        STZ $075D                 ;
CODE_0DA9AA:        BRA CODE_0DA9B5           ;

CODE_0DA9AC:        JSR CODE_0DA9D5           ;
CODE_0DA9AF:        JMP CODE_0DA9C7           ;

CODE_0DA9B2:        STZ $06BC                 ;
CODE_0DA9B5:        JSR CODE_0DA9D5           ;
CODE_0DA9B8:        STY $07                   ;
CODE_0DA9BA:        LDA #$00                  ;
CODE_0DA9BC:        LDY $5C                   ;
CODE_0DA9BE:        DEY                       ;
CODE_0DA9BF:        BEQ CODE_0DA9C3           ;
CODE_0DA9C1:        LDA #$06                  ;
CODE_0DA9C3:        CLC                       ;
CODE_0DA9C4:        ADC $07                   ;
CODE_0DA9C6:        TAY                       ;
CODE_0DA9C7:        LDA DATA_0DBD6E,y               ;
CODE_0DA9CA:        PHA                       ;
CODE_0DA9CB:        JSR CODE_0DAA5B           ;
CODE_0DA9CE:        LDX $07                   ;
CODE_0DA9D0:        PLA                       ;
CODE_0DA9D1:        STA $06A1,x               ;
CODE_0DA9D4:        RTS                       ;

CODE_0DA9D5:        LDA $00                   ;
CODE_0DA9D7:        SEC                       ;
CODE_0DA9D8:        SBC #$00                  ;
CODE_0DA9DA:        TAY                       ;
CODE_0DA9DB:        RTS                       ;

CODE_0DA9DC:        JSR CODE_0DAA4C           ;
CODE_0DA9DF:        BCC CODE_0DAA0D           ;
CODE_0DA9E1:        LDA $5C                   ;
CODE_0DA9E3:        BNE CODE_0DAA0D           ;
CODE_0DA9E5:        LDX $026A                 ;
CODE_0DA9E8:        JSR CODE_0DAA79           ;
CODE_0DA9EB:        SEC                       ;
CODE_0DA9EC:        SBC #$10                  ;
CODE_0DA9EE:        STA $0271,x               ;
CODE_0DA9F1:        LDA $0725                 ;
CODE_0DA9F4:        SBC #$00                  ;
CODE_0DA9F6:        STA $026B,x               ;
CODE_0DA9F9:        INY                       ;
CODE_0DA9FA:        INY                       ;
CODE_0DA9FB:        TYA                       ;
CODE_0DA9FC:        ASL A                     ;
CODE_0DA9FD:        ASL A                     ;
CODE_0DA9FE:        ASL A                     ;
CODE_0DA9FF:        ASL A                     ;
CODE_0DAA00:        STA $0277,x               ;
CODE_0DAA03:        INX                       ;
CODE_0DAA04:        CPX #$05                  ;
CODE_0DAA06:        BCC CODE_0DAA0A           ;
CODE_0DAA08:        LDX #$00                  ;
CODE_0DAA0A:        STX $026A                 ;
CODE_0DAA0D:        LDX $5C                   ;
CODE_0DAA0F:        LDA #$00                  ;
CODE_0DAA11:        LDX #$08                  ;
CODE_0DAA13:        LDY #$0F                  ;
CODE_0DAA15:        STY $0735                 ;
CODE_0DAA18:        LDY $06A1,x               ;
CODE_0DAA1B:        BEQ CODE_0DAA3D           ;
CODE_0DAA1D:        CPY #$1F                  ;
CODE_0DAA1F:        BEQ CODE_0DAA40           ;
CODE_0DAA21:        CPY #$22                  ;
CODE_0DAA23:        BEQ CODE_0DAA40           ;
CODE_0DAA25:        CPY #$E7                  ;
CODE_0DAA27:        BEQ CODE_0DAA3D           ;
CODE_0DAA29:        CPY #$0F                  ;
CODE_0DAA2B:        BEQ CODE_0DAA40           ;
CODE_0DAA2D:        CPY #$13                  ;
CODE_0DAA2F:        BEQ CODE_0DAA40           ;
CODE_0DAA31:        CPY #$E7                  ;
CODE_0DAA33:        BCS CODE_0DAA40           ;
CODE_0DAA35:        CPY #$4E                  ;
CODE_0DAA37:        BNE CODE_0DAA3D           ;
CODE_0DAA39:        CMP #$48                  ;
CODE_0DAA3B:        BEQ CODE_0DAA40           ;
CODE_0DAA3D:        STA $06A1,x               ;
CODE_0DAA40:        INX                       ;
CODE_0DAA41:        CPX #$0D                  ;
CODE_0DAA43:        BCS CODE_0DAA4B           ;
CODE_0DAA45:        LDY $0735                 ;
CODE_0DAA48:        DEY                       ;
CODE_0DAA49:        BPL CODE_0DAA15           ;
CODE_0DAA4B:        RTS                       ;

CODE_0DAA4C:        JSR CODE_0DAA5B           ;
CODE_0DAA4F:        LDA $1300,x               ;
CODE_0DAA52:        CLC                       ;
CODE_0DAA53:        BPL CODE_0DAA5A           ;
CODE_0DAA55:        TYA                       ;
CODE_0DAA56:        STA $1300,x               ;
CODE_0DAA59:        SEC                       ;
CODE_0DAA5A:        RTS                       ;

CODE_0DAA5B:        PHX                       ;
CODE_0DAA5C:        REP #$30                  ;
CODE_0DAA5E:        TXA                       ;
CODE_0DAA5F:        AND #$00FF                ;
CODE_0DAA62:        ASL A                     ;
CODE_0DAA63:        TAX                       ;
CODE_0DAA64:        LDY $1305,x               ;
CODE_0DAA67:        SEP #$20                  ;
CODE_0DAA69:        LDA [$FA],y               ;
CODE_0DAA6B:        AND #$0F                  ;
CODE_0DAA6D:        STA $07                   ;
CODE_0DAA6F:        INY                       ;
CODE_0DAA70:        LDA [$FA],y               ;
CODE_0DAA72:        AND #$0F                  ;
CODE_0DAA74:        SEP #$10                  ;
CODE_0DAA76:        TAY                       ;
CODE_0DAA77:        PLX                       ;
CODE_0DAA78:        RTS                       ;

CODE_0DAA79:        LDA $0726                 ;
CODE_0DAA7C:        ASL A                     ;
CODE_0DAA7D:        ASL A                     ;
CODE_0DAA7E:        ASL A                     ;
CODE_0DAA7F:        ASL A                     ;
CODE_0DAA80:        RTS                       ;

CODE_0DAA81:        LDA $07                   ;
CODE_0DAA83:        ASL A                     ;
CODE_0DAA84:        ASL A                     ;
CODE_0DAA85:        ASL A                     ;
CODE_0DAA86:        ASL A                     ;
CODE_0DAA87:        CLC                       ;
CODE_0DAA88:        ADC #$20                  ;
CODE_0DAA8A:        RTS                       ;

DATA_0DAA8B:        db $00,$D0

DATA_0DAA8D:        db $05,$05

CODE_0DAA8F:        PHA                       ;
CODE_0DAA90:        LSR A                     ;
CODE_0DAA91:        LSR A                     ;
CODE_0DAA92:        LSR A                     ;
CODE_0DAA93:        LSR A                     ;
CODE_0DAA94:        TAY                       ;
CODE_0DAA95:        LDA DATA_0DAA8D,y               ;
CODE_0DAA98:        STA $07                   ;
CODE_0DAA9A:        PLA                       ;
CODE_0DAA9B:        AND #$0F                  ;
CODE_0DAA9D:        CLC                       ;
CODE_0DAA9E:        ADC DATA_0DAA8B,y               ;
CODE_0DAAA1:        STA $06                   ;
CODE_0DAAA3:        RTS                       ;

CODE_0DAAA4:        PHB                       ;
CODE_0DAAA5:        PHK                       ;
CODE_0DAAA6:        PLB                       ;
CODE_0DAAA7:        JSR CODE_0DAA4C           ;
CODE_0DAAAA:        PLB                       ;
CODE_0DAAAB:        RTL                       ;

CODE_0DAAAC:        PHB                       ;
CODE_0DAAAD:        PHK                       ;
CODE_0DAAAE:        PLB                       ;
CODE_0DAAAF:        JSR CODE_0DAA15           ;
CODE_0DAAB2:        PLB                       ;
CODE_0DAAB3:        RTL                       ;

CODE_0DAAB4:        PHB                       ;
CODE_0DAAB5:        PHK                       ;
CODE_0DAAB6:        PLB                       ;
CODE_0DAAB7:        JSR CODE_0DAA4F           ;
CODE_0DAABA:        PLB                       ;
CODE_0DAABB:        RTL                       ;

CODE_0DAABC:        PHB                       ;
CODE_0DAABD:        PHK                       ;
CODE_0DAABE:        PLB                       ;
CODE_0DAABF:        JSR CODE_0DAA79           ;
CODE_0DAAC2:        PLB                       ;
CODE_0DAAC3:        RTL                       ;

CODE_0DAAC4:        PHB                       ;
CODE_0DAAC5:        PHK                       ;
CODE_0DAAC6:        PLB                       ;
CODE_0DAAC7:        JSR CODE_0DA7F1           ;
CODE_0DAACA:        PLB                       ;
CODE_0DAACB:        RTL                       ;

CODE_0DAACC:        PHB                       ;
CODE_0DAACD:        PHK                       ;
CODE_0DAACE:        PLB                       ;
CODE_0DAACF:        PHA                       ;
CODE_0DAAD0:        JSR CODE_0DA7BC           ;
CODE_0DAAD3:        PLA                       ;
CODE_0DAAD4:        STA $0007                 ;
CODE_0DAAD7:        TYA                       ;
CODE_0DAAD8:        PHA                       ;
CODE_0DAAD9:        LDY $1300,x               ;
CODE_0DAADC:        BEQ CODE_0DAB05           ;
CODE_0DAADE:        JSR CODE_0DA7F1           ;
CODE_0DAAE1:        BCS CODE_0DAB05           ;
CODE_0DAAE3:        LDA #$04                  ;
CODE_0DAAE5:        JSR CODE_0DA7CD           ;
CODE_0DAAE8:        LDA $0006                 ;
CODE_0DAAEB:        ASL A                     ;
CODE_0DAAEC:        ASL A                     ;
CODE_0DAAED:        ASL A                     ;
CODE_0DAAEE:        ASL A                     ;
CODE_0DAAEF:        CLC                       ;
CODE_0DAAF0:        ADC $0238,x               ;
CODE_0DAAF3:        SEC                       ;
CODE_0DAAF4:        SBC #$0A                  ;
CODE_0DAAF6:        STA $0238,x               ;
CODE_0DAAF9:        STA $043D,x               ;
CODE_0DAAFC:        CLC                       ;
CODE_0DAAFD:        ADC #$18                  ;
CODE_0DAAFF:        STA $041D,x               ;
CODE_0DAB02:        INC $00A1,x               ;
CODE_0DAB05:        PLA                       ;
CODE_0DAB06:        TAY                       ;
CODE_0DAB07:        PHA                       ;
CODE_0DAB08:        LDX $0007                 ;
CODE_0DAB0B:        LDA DATA_0DA766+2,y               ;
CODE_0DAB0E:        LDY $0006                 ;
CODE_0DAB11:        DEY                       ;
CODE_0DAB12:        JSR CODE_0DAA15           ;
CODE_0DAB15:        PLA                       ;
CODE_0DAB16:        TAY                       ;
CODE_0DAB17:        LDA DATA_0DA766,y               ;
CODE_0DAB1A:        STA $06A1,x               ;
CODE_0DAB1D:        PLB                       ;
CODE_0DAB1E:        RTL                       ;

CODE_0DAB1F:        LDA $29,x                 ;
CODE_0DAB21:        BNE CODE_0DAB63           ;
CODE_0DAB23:        LDA $0792,x               ;
CODE_0DAB26:        BNE CODE_0DAB63           ;
CODE_0DAB28:        LDA $00A1,x               ;
CODE_0DAB2B:        BNE CODE_0DAB39           ;
CODE_0DAB2D:        LDA $5E,x                 ;
CODE_0DAB2F:        EOR #$FF                  ;
CODE_0DAB31:        CLC                       ;
CODE_0DAB32:        ADC #$01                  ;
CODE_0DAB34:        STA $5E,x                 ;
CODE_0DAB36:        INC $00A1,x               ;
CODE_0DAB39:        LDA $041D,x               ;
CODE_0DAB3C:        LDY $5E,x                 ;
CODE_0DAB3E:        BPL CODE_0DAB43           ;
CODE_0DAB40:        LDA $043D,x               ;
CODE_0DAB43:        STA $0000                 ;
CODE_0DAB46:        LDA $0747                 ;
CODE_0DAB49:        BNE CODE_0DAB63           ;
CODE_0DAB4B:        LDA $0238,x               ;
CODE_0DAB4E:        CLC                       ;
CODE_0DAB4F:        ADC $5E,x                 ;
CODE_0DAB51:        STA $0238,x               ;
CODE_0DAB54:        CMP $0000                 ;
CODE_0DAB57:        BNE CODE_0DAB63           ;
CODE_0DAB59:        LDA #$00                  ;
CODE_0DAB5B:        STA $00A1,x               ;
CODE_0DAB5E:        LDA #$20                  ;
CODE_0DAB60:        STA $0792,x               ;
CODE_0DAB63:        RTS                       ;

DATA_0DAB64:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

CODE_0DAB70:        LDA $0772                 ;
CODE_0DAB73:        ASL A                     ;
CODE_0DAB74:        TAX                       ;
CODE_0DAB75:        JMP (PNTR_0DAB78,x)       ;

PNTR_0DAB78:        dw CODE_0D9D90
                    dw CODE_0D89BD
                    dw CODE_0D9E5A
                    dw CODE_0DAB99

CODE_0DAB80:        LDA $701FF2               ;
CODE_0DAB84:        BNE CODE_0DAB9D           ;
CODE_0DAB86:        LDA $7FFB05               ;
CODE_0DAB8A:        BMI CODE_0DAB9D           ;
CODE_0DAB8C:        JSR CODE_0DAD50           ;
CODE_0DAB8F:        JSR CODE_0DFDB2           ;
CODE_0DAB92:        JSR CODE_0DFD29           ;
CODE_0DAB95:        JSR CODE_0DF700           ;
CODE_0DAB98:        RTS                       ;

CODE_0DAB99:        JSL CODE_0FD000           ;
CODE_0DAB9D:        LDA $28                   ;
CODE_0DAB9F:        BNE CODE_0DABA1           ;
CODE_0DABA1:        JSR CODE_0DAD50           ;
CODE_0DABA4:        LDA $0772                 ;
CODE_0DABA7:        CMP #$03                  ;
CODE_0DABA9:        BCS CODE_0DABAC           ;
CODE_0DABAB:        RTS                       ;

CODE_0DABAC:        JSR CODE_0DB42F           ;
CODE_0DABAF:        LDX #$00                  ;
CODE_0DABB1:        STX $9E                   ;
CODE_0DABB3:        LDA $0E67                 ;
CODE_0DABB6:        BEQ CODE_0DABBC           ;
CODE_0DABB8:        CMP #$7F                  ;
CODE_0DABBA:        BEQ CODE_0DABDA           ;
CODE_0DABBC:        JSR CODE_0DC250           ;
CODE_0DABBF:        LDA $0E67                 ;
CODE_0DABC2:        BNE CODE_0DABC7           ;
CODE_0DABC4:        JSR CODE_0D88D5           ;
CODE_0DABC7:        INX                       ;
CODE_0DABC8:        CPX #$0A                  ;
CODE_0DABCA:        BNE CODE_0DABB1           ;
CODE_0DABCC:        JSL CODE_0FE0FB           ;
CODE_0DABD0:        LDA $0E67                 ;
CODE_0DABD3:        BEQ CODE_0DABDA           ;
CODE_0DABD5:        LDA #$7F                  ;
CODE_0DABD7:        STA $0E67                 ;
CODE_0DABDA:        JSR CODE_0DFDB2           ;
CODE_0DABDD:        JSR CODE_0DFD29           ;
CODE_0DABE0:        JSR CODE_0DF700           ;
CODE_0DABE3:        LDX #$01                  ;
CODE_0DABE5:        STX $9E                   ;
CODE_0DABE7:        JSR CODE_0DBE0F           ;
CODE_0DABEA:        DEX                       ;
CODE_0DABEB:        STX $9E                   ;
CODE_0DABED:        JSR CODE_0DBE0F           ;
CODE_0DABF0:        JSR CODE_0DBE77           ;
CODE_0DABF3:        JSR CODE_0DBA8C           ;
CODE_0DABF6:        JSR CODE_0DB875           ;
CODE_0DABF9:        JSR CODE_0DB5FA           ;
CODE_0DABFC:        JSR CODE_0DB6A1           ;
CODE_0DABFF:        JSR CODE_0DB58D           ;
CODE_0DAC02:        JSR CODE_0D9025           ;
CODE_0DAC05:        LDA $0F04                 ;
CODE_0DAC08:        BEQ CODE_0DAC0E           ;
CODE_0DAC0A:        JSL CODE_0FF257           ;
CODE_0DAC0E:        LDA $BB                   ;
CODE_0DAC10:        CMP #$02                  ;
CODE_0DAC12:        BPL CODE_0DAC26           ;
CODE_0DAC14:        LDA $07AF                 ;
CODE_0DAC17:        BEQ CODE_0DAC38           ;
CODE_0DAC19:        CMP #$04                  ;
CODE_0DAC1B:        BNE CODE_0DAC26           ;
CODE_0DAC1D:        LDA $0787                 ;
CODE_0DAC20:        BNE CODE_0DAC26           ;
CODE_0DAC22:        JSL CODE_0FD8F6           ;
CODE_0DAC26:        LDA $09                   ;
CODE_0DAC28:        PHY                       ;
CODE_0DAC29:        LDY $07AF                 ;
CODE_0DAC2C:        CPY #$08                  ;
CODE_0DAC2E:        BCS CODE_0DAC32           ;
CODE_0DAC30:        LSR A                     ;
CODE_0DAC31:        LSR A                     ;
CODE_0DAC32:        PLY                       ;
CODE_0DAC33:        JSR CODE_0DB018           ;
CODE_0DAC36:        BRA CODE_0DAC4C           ;

CODE_0DAC38:        LDA $0787                 ;
CODE_0DAC3B:        CMP #$01                  ;
CODE_0DAC3D:        BNE CODE_0DAC49           ;
CODE_0DAC3F:        LDA $0F                   ;
CODE_0DAC41:        CMP #$0C                  ;
CODE_0DAC43:        BEQ CODE_0DAC49           ;
CODE_0DAC45:        JSL CODE_0E98C3           ;
CODE_0DAC49:        JSR CODE_0DB050           ;
CODE_0DAC4C:        LDA $0A                   ;
CODE_0DAC4E:        STA $0D                   ;
CODE_0DAC50:        STZ $0C                   ;
CODE_0DAC52:        LDA $0773                 ;
CODE_0DAC55:        CMP #$06                  ;
CODE_0DAC57:        BEQ CODE_0DAC75           ;
CODE_0DAC59:        LDA $071F                 ;
CODE_0DAC5C:        BNE CODE_0DAC72           ;
CODE_0DAC5E:        LDA $073D                 ;
CODE_0DAC61:        CMP #$20                  ;
CODE_0DAC63:        BMI CODE_0DAC75           ;
CODE_0DAC65:        LDA $073D                 ;
CODE_0DAC68:        SBC #$20                  ;
CODE_0DAC6A:        STA $073D                 ;
CODE_0DAC6D:        LDA #$00                  ;
CODE_0DAC6F:        STA $1A00                 ;
CODE_0DAC72:        JSR CODE_0DA054           ;
CODE_0DAC75:        RTS                       ;

CODE_0DAC76:        LDA $06FF                 ;
CODE_0DAC79:        CLC                       ;
CODE_0DAC7A:        ADC $03A1                 ;
CODE_0DAC7D:        STA $06FF                 ;
CODE_0DAC80:        LDA $0723                 ;
CODE_0DAC83:        BEQ CODE_0DAC88           ;
CODE_0DAC85:        JMP CODE_0DAD02           ;

CODE_0DAC88:        LDA $0755                 ;
CODE_0DAC8B:        CMP #$50                  ;
CODE_0DAC8D:        BCC CODE_0DAD02           ;
CODE_0DAC8F:        LDA $078D                 ;
CODE_0DAC92:        BNE CODE_0DAD02           ;
CODE_0DAC94:        LDY $06FF                 ;
CODE_0DAC97:        DEY                       ;
CODE_0DAC98:        BMI CODE_0DAD02           ;
CODE_0DAC9A:        INY                       ;
CODE_0DAC9B:        CPY #$02                  ;
CODE_0DAC9D:        BCC CODE_0DACA0           ;
CODE_0DAC9F:        DEY                       ;
CODE_0DACA0:        LDA $0755                 ;
CODE_0DACA3:        CMP #$70                  ;
CODE_0DACA5:        BCC CODE_0DACAA           ;
CODE_0DACA7:        LDY $06FF                 ;
CODE_0DACAA:        LDA $0F01                 ;
CODE_0DACAD:        BNE CODE_0DACAA           ;
CODE_0DACAF:        TYA                       ;
CODE_0DACB0:        STA $0775                 ;
CODE_0DACB3:        CLC                       ;
CODE_0DACB4:        ADC $073D                 ;
CODE_0DACB7:        STA $073D                 ;
CODE_0DACBA:        LDA $071C                 ;
CODE_0DACBD:        STA $00                   ;
CODE_0DACBF:        LDA $071A                 ;
CODE_0DACC2:        STA $01                   ;
CODE_0DACC4:        REP #$30                  ;
CODE_0DACC6:        TYA                       ;
CODE_0DACC7:        AND #$00FF                ;
CODE_0DACCA:        CLC                       ;
CODE_0DACCB:        ADC $00                   ;
CODE_0DACCD:        STA $00                   ;
CODE_0DACCF:        LSR A                     ;
CODE_0DACD0:        STA $0EFD                 ;
CODE_0DACD3:        LSR A                     ;
CODE_0DACD4:        STA $0EEE                 ;
CODE_0DACD7:        SEP #$30                  ;
CODE_0DACD9:        LDA $00                   ;
CODE_0DACDB:        STA $071C                 ;
CODE_0DACDE:        STA $073F                 ;
CODE_0DACE1:        STA $42                   ;
CODE_0DACE3:        LDA $01                   ;
CODE_0DACE5:        STA $071A                 ;
CODE_0DACE8:        STA $43                   ;
CODE_0DACEA:        AND #$01                  ;
CODE_0DACEC:        STA $00                   ;
CODE_0DACEE:        LDA $0778                 ;
CODE_0DACF1:        AND #$FE                  ;
CODE_0DACF3:        ORA $00                   ;
CODE_0DACF5:        STA $0778                 ;
CODE_0DACF8:        JSR CODE_0DAD3E           ;
CODE_0DACFB:        LDA #$08                  ;
CODE_0DACFD:        STA $07A1                 ;
CODE_0DAD00:        BRA CODE_0DAD07           ;

CODE_0DAD02:        LDA #$00                  ;
CODE_0DAD04:        STA $0775                 ;
CODE_0DAD07:        LDX #$00                  ;
CODE_0DAD09:        JSR CODE_0DFE34           ;
CODE_0DAD0C:        STA $00                   ;
CODE_0DAD0E:        LDY #$00                  ;
CODE_0DAD10:        ASL A                     ;
CODE_0DAD11:        BCS CODE_0DAD1A           ;
CODE_0DAD13:        INY                       ;
CODE_0DAD14:        LDA $00                   ;
CODE_0DAD16:        AND #$20                  ;
CODE_0DAD18:        BEQ CODE_0DAD34           ;
CODE_0DAD1A:        LDA $071C,y               ;
CODE_0DAD1D:        SEC                       ;
CODE_0DAD1E:        SBC DATA_0DAD3A,y               ;
CODE_0DAD21:        STA $0219                 ;
CODE_0DAD24:        LDA $071A,y               ;
CODE_0DAD27:        SBC #$00                  ;
CODE_0DAD29:        STA $78                   ;
CODE_0DAD2B:        LDA $0C                   ;
CODE_0DAD2D:        CMP DATA_0DAD3C,y               ;
CODE_0DAD30:        BEQ CODE_0DAD34           ;
CODE_0DAD32:        STZ $5D                   ;
CODE_0DAD34:        LDA #$00                  ;
CODE_0DAD36:        STA $03A1                 ;
CODE_0DAD39:        RTS                       ;

DATA_0DAD3A:        db $00,$10

DATA_0DAD3C:        db $01,$02

CODE_0DAD3E:        LDA $071C                 ;
CODE_0DAD41:        CLC                       ;
CODE_0DAD42:        ADC #$FF                  ;
CODE_0DAD44:        STA $071D                 ;
CODE_0DAD47:        LDA $071A                 ;
CODE_0DAD4A:        ADC #$00                  ;
CODE_0DAD4C:        STA $071B                 ;
CODE_0DAD4F:        RTS                       ;

CODE_0DAD50:        LDA $0F                   ;
CODE_0DAD52:        ASL A                     ;
CODE_0DAD53:        TAX                       ;
CODE_0DAD54:        JMP (PNTR_0DAD57,x)       ;

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

CODE_0DAD71:        LDA $0752                 ;
CODE_0DAD74:        CMP #$02                  ;
CODE_0DAD76:        BEQ CODE_0DADB1           ;
CODE_0DAD78:        LDA #$00                  ;
CODE_0DAD7A:        LDY $0237                 ;
CODE_0DAD7D:        CPY #$30                  ;
CODE_0DAD7F:        BCS CODE_0DAD84           ;
CODE_0DAD81:        JMP CODE_0DAE12           ;

CODE_0DAD84:        LDA $0710                 ;
CODE_0DAD87:        CMP #$06                  ;
CODE_0DAD89:        BEQ CODE_0DAD8F           ;
CODE_0DAD8B:        CMP #$07                  ;
CODE_0DAD8D:        BNE CODE_0DADFB           ;
CODE_0DAD8F:        LDA $0256                 ;
CODE_0DAD92:        AND #$F0                  ;
CODE_0DAD94:        BEQ CODE_0DAD9B           ;
CODE_0DAD96:        LDA #$01                  ;
CODE_0DAD98:        JMP CODE_0DAE12           ;

CODE_0DAD9B:        JSR CODE_0DAFAD           ;
CODE_0DAD9E:        DEC $06DE                 ;
CODE_0DADA1:        BNE CODE_0DAE11           ;
CODE_0DADA3:        LDA #$01                  ;
CODE_0DADA5:        STA $0E7F                 ;
CODE_0DADA8:        STA $0E4F                 ;
CODE_0DADAB:        INC $0769                 ;
CODE_0DADAE:        JMP CODE_0DB0B0           ;

CODE_0DADB1:        LDA $0758                 ;
CODE_0DADB4:        BNE CODE_0DADD2           ;
CODE_0DADB6:        LDA $0237                 ;
CODE_0DADB9:        CMP #$B0                  ;
CODE_0DADBB:        BNE CODE_0DADC2           ;
CODE_0DADBD:        LDA #$04                  ;
CODE_0DADBF:        STA $1600                 ;
CODE_0DADC2:        STA $0E4E                 ;
CODE_0DADC5:        LDA #$FF                  ;
CODE_0DADC7:        JSR CODE_0DAF72           ;
CODE_0DADCA:        LDA $0237                 ;
CODE_0DADCD:        CMP #$91                  ;
CODE_0DADCF:        BCC CODE_0DADFB           ;
CODE_0DADD1:        RTS                       ;

CODE_0DADD2:        LDA $0399                 ;
CODE_0DADD5:        CMP #$60                  ;
CODE_0DADD7:        BNE CODE_0DAE11           ;
CODE_0DADD9:        LDA $0237                 ;
CODE_0DADDC:        CMP #$99                  ;
CODE_0DADDE:        LDY #$00                  ;
CODE_0DADE0:        LDA #$01                  ;
CODE_0DADE2:        BCC CODE_0DADEE           ;
CODE_0DADE4:        LDA #$03                  ;
CODE_0DADE6:        STA $28                   ;
CODE_0DADE8:        INY                       ;
CODE_0DADE9:        LDA #$08                  ;
CODE_0DADEB:        STA $05B4                 ;
CODE_0DADEE:        STY $0716                 ;
CODE_0DADF1:        JSR CODE_0DAE12           ;
CODE_0DADF4:        LDA $0219                 ;
CODE_0DADF7:        CMP #$48                  ;
CODE_0DADF9:        BCC CODE_0DAE11           ;
CODE_0DADFB:        STZ $0E4E                 ;
CODE_0DADFE:        LDA #$08                  ;
CODE_0DAE00:        STA $0F                   ;
CODE_0DAE02:        LDA #$01                  ;
CODE_0DAE04:        STA $0202                 ;
CODE_0DAE07:        LSR A                     ;
CODE_0DAE08:        STA $0752                 ;
CODE_0DAE0B:        STA $0716                 ;
CODE_0DAE0E:        STA $0758                 ;
CODE_0DAE11:        RTS                       ;

CODE_0DAE12:        STA $0FF4                 ;
CODE_0DAE15:        LDA #$01                  ;
CODE_0DAE17:        STA $0B7A                 ;
CODE_0DAE1A:        BRA CODE_0DAE1F           ;

CODE_0DAE1C:        STZ $0B7A                 ;
CODE_0DAE1F:        LDA $0F                   ;
CODE_0DAE21:        CMP #$0B                  ;
CODE_0DAE23:        BEQ CODE_0DAE5F           ;
CODE_0DAE25:        LDA $5C                   ;
CODE_0DAE27:        BNE CODE_0DAE38           ;
CODE_0DAE29:        LDY $BB                   ;
CODE_0DAE2B:        DEY                       ;
CODE_0DAE2C:        BNE CODE_0DAE35           ;
CODE_0DAE2E:        LDA $0237                 ;
CODE_0DAE31:        CMP #$D0                  ;
CODE_0DAE33:        BCC CODE_0DAE38           ;
CODE_0DAE35:        STZ $0FF4                 ;
CODE_0DAE38:        LDA $0FF4                 ;
CODE_0DAE3B:        AND #$C0                  ;
CODE_0DAE3D:        STA $0A                   ;
CODE_0DAE3F:        LDA $0FF4                 ;
CODE_0DAE42:        AND #$03                  ;
CODE_0DAE44:        STA $0C                   ;
CODE_0DAE46:        LDA $0FF4                 ;
CODE_0DAE49:        AND #$0C                  ;
CODE_0DAE4B:        STA $0B                   ;
CODE_0DAE4D:        AND #$04                  ;
CODE_0DAE4F:        BEQ CODE_0DAE5F           ;
CODE_0DAE51:        LDA $28                   ;
CODE_0DAE53:        BNE CODE_0DAE5F           ;
CODE_0DAE55:        LDY $0C                   ;
CODE_0DAE57:        BEQ CODE_0DAE5F           ;
CODE_0DAE59:        LDA #$00                  ;
CODE_0DAE5B:        STA $0C                   ;
CODE_0DAE5D:        STA $0B                   ;
CODE_0DAE5F:        LDA $700007               ;
CODE_0DAE63:        BEQ CODE_0DAE6B           ;
CODE_0DAE65:        JSL CODE_0FDEFE           ;
CODE_0DAE69:        BCC CODE_0DAE6E           ;
CODE_0DAE6B:        JSR CODE_0DB0E5           ;
CODE_0DAE6E:        LDY #$01                  ;
CODE_0DAE70:        LDA $0754                 ;
CODE_0DAE73:        BNE CODE_0DAE7E           ;
CODE_0DAE75:        LDY #$00                  ;
CODE_0DAE77:        LDA $0714                 ;
CODE_0DAE7A:        BEQ CODE_0DAE7E           ;
CODE_0DAE7C:        LDY #$02                  ;
CODE_0DAE7E:        STY $048F                 ;
CODE_0DAE81:        LDA #$01                  ;
CODE_0DAE83:        LDY $5D                   ;
CODE_0DAE85:        BEQ CODE_0DAE8C           ;
CODE_0DAE87:        BPL CODE_0DAE8A           ;
CODE_0DAE89:        ASL A                     ;
CODE_0DAE8A:        STA $46                   ;
CODE_0DAE8C:        JSR CODE_0DAC76           ;
CODE_0DAE8F:        JSR CODE_0DFDB2           ;
CODE_0DAE92:        JSR CODE_0DFD29           ;
CODE_0DAE95:        LDX #$00                  ;
CODE_0DAE97:        JSR CODE_0DE9A9           ;
CODE_0DAE9A:        JSR CODE_0DE263           ;
CODE_0DAE9D:        LDA $0237                 ;
CODE_0DAEA0:        CMP #$40                  ;
CODE_0DAEA2:        BCC CODE_0DAECE           ;
CODE_0DAEA4:        LDA $0F                   ;
CODE_0DAEA6:        CMP #$05                  ;
CODE_0DAEA8:        BEQ CODE_0DAECE           ;
CODE_0DAEAA:        CMP #$07                  ;
CODE_0DAEAC:        BEQ CODE_0DAECE           ;
CODE_0DAEAE:        CMP #$04                  ;
CODE_0DAEB0:        BCC CODE_0DAECE           ;
CODE_0DAEB2:        LDA $0F                   ;
CODE_0DAEB4:        CMP #$0B                  ;
CODE_0DAEB6:        BNE CODE_0DAEC4           ;
CODE_0DAEB8:        STZ $0F04                 ;
CODE_0DAEBB:        LDA $0256                 ;
CODE_0DAEBE:        AND #$CE                  ;
CODE_0DAEC0:        ORA #$30                  ;
CODE_0DAEC2:        BRA CODE_0DAECB           ;

CODE_0DAEC4:        LDA $0256                 ;
CODE_0DAEC7:        AND #$CE                  ;
CODE_0DAEC9:        ORA #$20                  ;
CODE_0DAECB:        STA $0256                 ;
CODE_0DAECE:        LDA $BB                   ;
CODE_0DAED0:        CMP #$02                  ;
CODE_0DAED2:        BMI CODE_0DAF1C           ;
CODE_0DAED4:        LDX #$01                  ;
CODE_0DAED6:        STX $0723                 ;
CODE_0DAED9:        LDY #$04                  ;
CODE_0DAEDB:        STY $07                   ;
CODE_0DAEDD:        LDX #$00                  ;
CODE_0DAEDF:        LDY $0759                 ;
CODE_0DAEE2:        BNE CODE_0DAEE9           ;
CODE_0DAEE4:        LDY $0743                 ;
CODE_0DAEE7:        BNE CODE_0DAF0C           ;
CODE_0DAEE9:        INX                       ;
CODE_0DAEEA:        LDY $0F                   ;
CODE_0DAEEC:        CPY #$0B                  ;
CODE_0DAEEE:        BEQ CODE_0DAF0C           ;
CODE_0DAEF0:        LDY $0712                 ;
CODE_0DAEF3:        BNE CODE_0DAF08           ;
CODE_0DAEF5:        INY                       ;
CODE_0DAEF6:        STY $0712                 ;
CODE_0DAEF9:        LDY #$09                  ;
CODE_0DAEFB:        STY $1602                 ;
CODE_0DAEFE:        PHA                       ;
CODE_0DAEFF:        LDA #$20                  ;
CODE_0DAF01:        TSB $1601                 ;
CODE_0DAF04:        PLA                       ;
CODE_0DAF05:        STA $0E67                 ;
CODE_0DAF08:        LDY #$06                  ;
CODE_0DAF0A:        STY $07                   ;
CODE_0DAF0C:        CMP $07                   ;
CODE_0DAF0E:        BMI CODE_0DAF1C           ;
CODE_0DAF10:        DEX                       ;
CODE_0DAF11:        BMI CODE_0DAF1D           ;
CODE_0DAF13:        LDY $07B1                 ;
CODE_0DAF16:        BNE CODE_0DAF1C           ;
CODE_0DAF18:        LDA #$06                  ;
CODE_0DAF1A:        STA $0F                   ;
CODE_0DAF1C:        RTS                       ;

CODE_0DAF1D:        LDA #$00                  ;
CODE_0DAF1F:        STA $0758                 ;
CODE_0DAF22:        JSR CODE_0DAF43           ;
CODE_0DAF25:        INC $0752                 ;
CODE_0DAF28:        RTS                       ;

CODE_0DAF29:        LDA $BB                   ;
CODE_0DAF2B:        BNE CODE_0DAF34           ;
CODE_0DAF2D:        LDA $0237                 ;
CODE_0DAF30:        CMP #$E4                  ;
CODE_0DAF32:        BCC CODE_0DAF43           ;
CODE_0DAF34:        LDA #$08                  ;
CODE_0DAF36:        STA $0758                 ;
CODE_0DAF39:        STA $0E67                 ;
CODE_0DAF3C:        LDY #$03                  ;
CODE_0DAF3E:        STY $28                   ;
CODE_0DAF40:        JMP CODE_0DAE12           ;

CODE_0DAF43:        LDA #$02                  ;
CODE_0DAF45:        STA $0752                 ;
CODE_0DAF48:        JMP CODE_0DAF8F           ;

CODE_0DAF4B:        LDA #$01                  ;
CODE_0DAF4D:        STA $0E4F                 ;
CODE_0DAF50:        STA $0218                 ;
CODE_0DAF53:        LDA $09                   ;
CODE_0DAF55:        LSR A                     ;
CODE_0DAF56:        BCC CODE_0DAF5D           ;
CODE_0DAF58:        LDA #$01                  ;
CODE_0DAF5A:        JSR CODE_0DAF72           ;
CODE_0DAF5D:        JSR CODE_0DAC76           ;
CODE_0DAF60:        LDY #$00                  ;
CODE_0DAF62:        LDA $06D6                 ;
CODE_0DAF65:        BNE CODE_0DAF87           ;
CODE_0DAF67:        INY                       ;
CODE_0DAF68:        LDA $5C                   ;
CODE_0DAF6A:        CMP #$03                  ;
CODE_0DAF6C:        BNE CODE_0DAF87           ;
CODE_0DAF6E:        INY                       ;
CODE_0DAF6F:        JMP CODE_0DAF87           ;

CODE_0DAF72:        CLC                       ;
CODE_0DAF73:        ADC $0237                 ;
CODE_0DAF76:        STA $0237                 ;
CODE_0DAF79:        RTS                       ;

CODE_0DAF7A:        LDA #$01                  ;
CODE_0DAF7C:        STA $0E4F                 ;
CODE_0DAF7F:        STA $0E67                 ;
CODE_0DAF82:        JSR CODE_0DAFAD           ;
CODE_0DAF85:        LDY #$02                  ;
CODE_0DAF87:        DEC $06DE                 ;
CODE_0DAF8A:        BNE CODE_0DAFAC           ;
CODE_0DAF8C:        STY $0752                 ;
CODE_0DAF8F:        LDA #$01                  ;
CODE_0DAF91:        STA $0E7F                 ;
CODE_0DAF94:        STA $0E67                 ;
CODE_0DAF97:        LDA $02FF                 ;
CODE_0DAF9A:        BEQ CODE_0DAFA4           ;
CODE_0DAF9C:        LDX #$00                  ;
CODE_0DAF9E:        JSL CODE_0FD4D3           ;
CODE_0DAFA2:        LDX $9E                   ;
CODE_0DAFA4:        LDA #$00                  ;
CODE_0DAFA6:        STA $0772                 ;
CODE_0DAFA9:        STA $0722                 ;
CODE_0DAFAC:        RTS                       ;

CODE_0DAFAD:        LDA #$08                  ;
CODE_0DAFAF:        STA $5D                   ;
CODE_0DAFB1:        LDY #$01                  ;
CODE_0DAFB3:        LDA $0219                 ;
CODE_0DAFB6:        AND #$0F                  ;
CODE_0DAFB8:        BNE CODE_0DAFBD           ;
CODE_0DAFBA:        STA $5D                   ;
CODE_0DAFBC:        TAY                       ;
CODE_0DAFBD:        TYA                       ;
CODE_0DAFBE:        JSR CODE_0DAE12           ;
CODE_0DAFC1:        RTS                       ;

CODE_0DAFC2:        LDA $0747                 ;
CODE_0DAFC5:        CMP #$F8                  ;
CODE_0DAFC7:        BNE CODE_0DAFCC           ;
CODE_0DAFC9:        JMP CODE_0DAFE4           ;

CODE_0DAFCC:        CMP #$C4                  ;
CODE_0DAFCE:        BNE CODE_0DAFD3           ;
CODE_0DAFD0:        JSR CODE_0DB002           ;
CODE_0DAFD3:        RTS                       ;

CODE_0DAFD4:        LDA $0747                 ;
CODE_0DAFD7:        CMP #$F0                  ;
CODE_0DAFD9:        BCS CODE_0DAFE2           ;
CODE_0DAFDB:        CMP #$C8                  ;
CODE_0DAFDD:        BEQ CODE_0DB002           ;
CODE_0DAFDF:        JMP CODE_0DAE1C           ;

CODE_0DAFE2:        BNE CODE_0DAFF7           ;
CODE_0DAFE4:        LDY $070B                 ;
CODE_0DAFE7:        BNE CODE_0DAFF7           ;
CODE_0DAFE9:        STY $070D                 ;
CODE_0DAFEC:        INC $070B                 ;
CODE_0DAFEF:        LDA $0754                 ;
CODE_0DAFF2:        EOR #$01                  ;
CODE_0DAFF4:        STA $0754                 ;
CODE_0DAFF7:        RTS                       ;

CODE_0DAFF8:        LDA $0747                 ;
CODE_0DAFFB:        CMP #$F0                  ;
CODE_0DAFFD:        BCS CODE_0DB05A           ;
CODE_0DAFFF:        JMP CODE_0DAE1C           ;

CODE_0DB002:        STZ $0747                 ;
CODE_0DB005:        JSL CODE_0E98C3           ;
CODE_0DB009:        LDA #$08                  ;
CODE_0DB00B:        STA $0F                   ;
CODE_0DB00D:        RTS                       ;

CODE_0DB00E:        LDA $0747                 ;
CODE_0DB011:        CMP #$C0                  ;
CODE_0DB013:        BEQ CODE_0DB04D           ;
CODE_0DB015:        EOR #$FF                  ;
CODE_0DB017:        ASL A                     ;
CODE_0DB018:        ASL A                     ;
CODE_0DB019:        ASL A                     ;
CODE_0DB01A:        ASL A                     ;
CODE_0DB01B:        PHY                       ;
CODE_0DB01C:        PHX                       ;
CODE_0DB01D:        REP #$30                  ;
CODE_0DB01F:        AND #$0060                ;
CODE_0DB022:        TAX                       ;
CODE_0DB023:        LDA $0753                 ;
CODE_0DB026:        AND #$00FF                ;
CODE_0DB029:        BEQ CODE_0DB031           ;
CODE_0DB02B:        TXA                       ;
CODE_0DB02C:        CLC                       ;
CODE_0DB02D:        ADC #$0020                ;
CODE_0DB030:        TAX                       ;
CODE_0DB031:        LDY #$01E0                ;
CODE_0DB034:        LDA DATA_0DC19C,x               ;
CODE_0DB037:        STA $1000,y               ;
CODE_0DB03A:        INX                       ;
CODE_0DB03B:        INX                       ;
CODE_0DB03C:        INY                       ;
CODE_0DB03D:        INY                       ;
CODE_0DB03E:        CPY #$0200                ;
CODE_0DB041:        BNE CODE_0DB034           ;
CODE_0DB043:        SEP #$30                  ;
CODE_0DB045:        PLX                       ;
CODE_0DB046:        PLY                       ;
CODE_0DB047:        LDA #$01                  ;
CODE_0DB049:        STA $1200                 ;
CODE_0DB04C:        RTS                       ;

CODE_0DB04D:        JSR CODE_0DB002           ;
CODE_0DB050:        LDA $0256                 ;
CODE_0DB053:        AND #$F1                  ;
CODE_0DB055:        ORA #$0E                  ;
CODE_0DB057:        STA $0256                 ;
CODE_0DB05A:        RTS                       ;

CODE_0DB05B:        LDA $21                   ;
CODE_0DB05D:        CMP #$30                  ;
CODE_0DB05F:        BNE CODE_0DB072           ;
CODE_0DB061:        LDA #$00                  ;
CODE_0DB063:        STA $0713                 ;
CODE_0DB066:        LDY $0237                 ;
CODE_0DB069:        CPY #$9E                  ;
CODE_0DB06B:        BCS CODE_0DB06F           ;
CODE_0DB06D:        LDA #$04                  ;
CODE_0DB06F:        JMP CODE_0DAE12           ;

CODE_0DB072:        INC $0F                   ;
CODE_0DB074:        RTS                       ;

DATA_0DB075:        db $15,$23,$16,$1B,$17,$18,$23,$63

CODE_0DB07D:        JSL CODE_0FD2CD           ;
CODE_0DB081:        BEQ CODE_0DB092           ;
CODE_0DB083:        LDA #$01                  ;
CODE_0DB085:        JSR CODE_0DAE12           ;
CODE_0DB088:        LDA $0237                 ;
CODE_0DB08B:        CMP #$AE                  ;
CODE_0DB08D:        BCC CODE_0DB092           ;
CODE_0DB08F:        STZ $0723                 ;
CODE_0DB092:        LDA $0746                 ;
CODE_0DB095:        CMP #$05                  ;
CODE_0DB097:        BNE CODE_0DB0E4           ;
CODE_0DB099:        INC $075C                 ;
CODE_0DB09C:        LDA $075C                 ;
CODE_0DB09F:        CMP #$03                  ;
CODE_0DB0A1:        BNE CODE_0DB0B0           ;
CODE_0DB0A3:        LDY $075F                 ;
CODE_0DB0A6:        LDA $0748                 ;
CODE_0DB0A9:        CMP #$10                  ;
CODE_0DB0AB:        BCC CODE_0DB0B0           ;
CODE_0DB0AD:        INC $075D                 ;
CODE_0DB0B0:        INC $0760                 ;
CODE_0DB0B3:        LDA $075F                 ;
CODE_0DB0B6:        CMP #$08                  ;
CODE_0DB0B8:        BNE CODE_0DB0D7           ;
CODE_0DB0BA:        LDA $075C                 ;
CODE_0DB0BD:        CMP #$04                  ;
CODE_0DB0BF:        BNE CODE_0DB0D7           ;
CODE_0DB0C1:        STZ $075C                 ;
CODE_0DB0C4:        STZ $0760                 ;
CODE_0DB0C7:        INC $075F                 ;
CODE_0DB0CA:        LDA #$FF                  ;
CODE_0DB0CC:        STA $07FA                 ;
CODE_0DB0CF:        LDA #$01                  ;
CODE_0DB0D1:        STA $07FB                 ;
CODE_0DB0D4:        STA $076A                 ;
CODE_0DB0D7:        JSL CODE_0EC34C           ;
CODE_0DB0DB:        INC $0757                 ;
CODE_0DB0DE:        JSR CODE_0DAF8F           ;
CODE_0DB0E1:        STA $075B                 ;
CODE_0DB0E4:        RTS                       ;

CODE_0DB0E5:        LDA #$00                  ;
CODE_0DB0E7:        LDY $0754                 ;
CODE_0DB0EA:        BNE CODE_0DB0F4           ;
CODE_0DB0EC:        LDA $28                   ;
CODE_0DB0EE:        BNE CODE_0DB0F7           ;
CODE_0DB0F0:        LDA $0B                   ;
CODE_0DB0F2:        AND #$04                  ;
CODE_0DB0F4:        STA $0714                 ;
CODE_0DB0F7:        JSR CODE_0DB236           ;
CODE_0DB0FA:        LDA $070B                 ;
CODE_0DB0FD:        BNE CODE_0DB117           ;
CODE_0DB0FF:        LDA $28                   ;
CODE_0DB101:        CMP #$03                  ;
CODE_0DB103:        BEQ CODE_0DB10A           ;
CODE_0DB105:        LDY #$18                  ;
CODE_0DB107:        STY $0791                 ;
CODE_0DB10A:        ASL A                     ;
CODE_0DB10B:        TAX                       ;
CODE_0DB10C:        JMP (PNTR_0DB10F,x)       ;

PNTR_0DB10F:        dw CODE_0DB118
                    dw CODE_0DB13E
                    dw CODE_0DB135
                    dw CODE_0DB197

CODE_0DB117:        RTS                       ;

CODE_0DB118:        JSR CODE_0DB39D           ;
CODE_0DB11B:        LDA $0C                   ;
CODE_0DB11D:        BEQ CODE_0DB122           ;
CODE_0DB11F:        STA $0202                 ;
CODE_0DB122:        JSR CODE_0DB3D8           ;
CODE_0DB125:        JSR CODE_0DBEA7           ;
CODE_0DB128:        STA $06FF                 ;
CODE_0DB12B:        LDA $0F04                 ;
CODE_0DB12E:        BEQ CODE_0DB134           ;
CODE_0DB130:        JSL CODE_0FF1FE           ;
CODE_0DB134:        RTS                       ;

CODE_0DB135:        LDA $070A                 ;
CODE_0DB138:        STA $0709                 ;
CODE_0DB13B:        JMP CODE_0DB177           ;

CODE_0DB13E:        LDY $A0                   ;
CODE_0DB140:        BPL CODE_0DB156           ;
CODE_0DB142:        LDA $0A                   ;
CODE_0DB144:        AND #$80                  ;
CODE_0DB146:        AND $0D                   ;
CODE_0DB148:        BNE CODE_0DB15C           ;
CODE_0DB14A:        LDA $0708                 ;
CODE_0DB14D:        SEC                       ;
CODE_0DB14E:        SBC $0237                 ;
CODE_0DB151:        CMP $0706                 ;
CODE_0DB154:        BCC CODE_0DB15C           ;
CODE_0DB156:        LDA $070A                 ;
CODE_0DB159:        STA $0709                 ;
CODE_0DB15C:        LDA $0704                 ;
CODE_0DB15F:        BEQ CODE_0DB177           ;
CODE_0DB161:        JSR CODE_0DB39D           ;
CODE_0DB164:        LDA $0237                 ;
CODE_0DB167:        CMP #$14                  ;
CODE_0DB169:        BCS CODE_0DB170           ;
CODE_0DB16B:        LDA #$18                  ;
CODE_0DB16D:        STA $0709                 ;
CODE_0DB170:        LDA $0C                   ;
CODE_0DB172:        BEQ CODE_0DB177           ;
CODE_0DB174:        STA $0202                 ;
CODE_0DB177:        LDA $0C                   ;
CODE_0DB179:        BEQ CODE_0DB17E           ;
CODE_0DB17B:        JSR CODE_0DB3D8           ;
CODE_0DB17E:        JSR CODE_0DB125           ;
CODE_0DB181:        LDA $0F                   ;
CODE_0DB183:        CMP #$0B                  ;
CODE_0DB185:        BNE CODE_0DB18C           ;
CODE_0DB187:        LDA #$28                  ;
CODE_0DB189:        STA $0709                 ;
CODE_0DB18C:        JMP CODE_0DBEF0           ;

DATA_0DB18F:        db $0E,$04,$FC,$F2
DATA_0DB193:        db $00,$00,$FF,$FF

CODE_0DB197:        LDA $041C                 ;
CODE_0DB19A:        CLC                       ;
CODE_0DB19B:        ADC $043C                 ;
CODE_0DB19E:        STA $041C                 ;
CODE_0DB1A1:        LDY #$00                  ;
CODE_0DB1A3:        LDA $A0                   ;
CODE_0DB1A5:        BPL CODE_0DB1A8           ;
CODE_0DB1A7:        DEY                       ;
CODE_0DB1A8:        STY $00                   ;
CODE_0DB1AA:        ADC $0237                 ;
CODE_0DB1AD:        STA $0237                 ;
CODE_0DB1B0:        LDA $BB                   ;
CODE_0DB1B2:        ADC $00                   ;
CODE_0DB1B4:        STA $BB                   ;
CODE_0DB1B6:        LDA $0C                   ;
CODE_0DB1B8:        AND $0480                 ;
CODE_0DB1BB:        BEQ CODE_0DB1F5           ;
CODE_0DB1BD:        LDY $0791                 ;
CODE_0DB1C0:        BNE CODE_0DB1F4           ;
CODE_0DB1C2:        LDY #$18                  ;
CODE_0DB1C4:        STY $0791                 ;
CODE_0DB1C7:        LDX #$00                  ;
CODE_0DB1C9:        LDY $0202                 ;
CODE_0DB1CC:        LSR A                     ;
CODE_0DB1CD:        BCS CODE_0DB1D8           ;
CODE_0DB1CF:        LDA $03AD                 ;
CODE_0DB1D2:        CMP #$10                  ;
CODE_0DB1D4:        BCC CODE_0DB1F4           ;
CODE_0DB1D6:        INX                       ;
CODE_0DB1D7:        INX                       ;
CODE_0DB1D8:        DEY                       ;
CODE_0DB1D9:        BEQ CODE_0DB1DC           ;
CODE_0DB1DB:        INX                       ;
CODE_0DB1DC:        LDA $0219                 ;
CODE_0DB1DF:        CLC                       ;
CODE_0DB1E0:        ADC DATA_0DB18F,x               ;
CODE_0DB1E3:        STA $0219                 ;
CODE_0DB1E6:        LDA $78                   ;
CODE_0DB1E8:        ADC DATA_0DB193,x               ;
CODE_0DB1EB:        STA $78                   ;
CODE_0DB1ED:        LDA $0C                   ;
CODE_0DB1EF:        EOR #$03                  ;
CODE_0DB1F1:        STA $0202                 ;
CODE_0DB1F4:        RTS                       ;

CODE_0DB1F5:        STA $0791                 ;
CODE_0DB1F8:        RTS                       ;

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

CODE_0DB236:        LDA $28                   ;
CODE_0DB238:        CMP #$03                  ;
CODE_0DB23A:        BNE CODE_0DB26C           ;
CODE_0DB23C:        LDY #$00                  ;
CODE_0DB23E:        LDA $0B                   ;
CODE_0DB240:        AND $0480                 ;
CODE_0DB243:        BEQ CODE_0DB258           ;
CODE_0DB245:        INY                       ;
CODE_0DB246:        AND #$08                  ;
CODE_0DB248:        BEQ CODE_0DB257           ;
CODE_0DB24A:        LDA $09                   ;
CODE_0DB24C:        AND #$07                  ;
CODE_0DB24E:        BNE CODE_0DB258           ;
CODE_0DB250:        LDA #$30                  ;
CODE_0DB252:        STA $1600                 ;
CODE_0DB255:        BRA CODE_0DB258           ;

CODE_0DB257:        INY                       ;
CODE_0DB258:        LDX DATA_0DB233,y               ;
CODE_0DB25B:        STX $043C                 ;
CODE_0DB25E:        LDA #$08                  ;
CODE_0DB260:        LDX DATA_0DB230,y               ;
CODE_0DB263:        STX $A0                   ;
CODE_0DB265:        BMI CODE_0DB268           ;
CODE_0DB267:        LSR A                     ;
CODE_0DB268:        STA $070C                 ;
CODE_0DB26B:        RTS                       ;

CODE_0DB26C:        LDA $070E                 ;
CODE_0DB26F:        BNE CODE_0DB27B           ;
CODE_0DB271:        LDA $0A                   ;
CODE_0DB273:        AND #$80                  ;
CODE_0DB275:        BEQ CODE_0DB27B           ;
CODE_0DB277:        AND $0D                   ;
CODE_0DB279:        BEQ CODE_0DB27E           ;
CODE_0DB27B:        JMP CODE_0DB327           ;

CODE_0DB27E:        LDA $28                   ;
CODE_0DB280:        BEQ CODE_0DB293           ;
CODE_0DB282:        LDA $0704                 ;
CODE_0DB285:        BEQ CODE_0DB27B           ;
CODE_0DB287:        LDA $078A                 ;
CODE_0DB28A:        BNE CODE_0DB293           ;
CODE_0DB28C:        LDA $A0                   ;
CODE_0DB28E:        BPL CODE_0DB293           ;
CODE_0DB290:        JMP CODE_0DB327           ;

CODE_0DB293:        LDA #$20                  ;
CODE_0DB295:        STA $078A                 ;
CODE_0DB298:        LDY #$00                  ;
CODE_0DB29A:        STY $041C                 ;
CODE_0DB29D:        STY $043C                 ;
CODE_0DB2A0:        LDA $BB                   ;
CODE_0DB2A2:        STA $0707                 ;
CODE_0DB2A5:        LDA $0237                 ;
CODE_0DB2A8:        STA $0708                 ;
CODE_0DB2AB:        LDA #$01                  ;
CODE_0DB2AD:        STA $28                   ;
CODE_0DB2AF:        LDA $0700                 ;
CODE_0DB2B2:        CMP #$09                  ;
CODE_0DB2B4:        BCC CODE_0DB2C6           ;
CODE_0DB2B6:        INY                       ;
CODE_0DB2B7:        CMP #$10                  ;
CODE_0DB2B9:        BCC CODE_0DB2C6           ;
CODE_0DB2BB:        INY                       ;
CODE_0DB2BC:        CMP #$19                  ;
CODE_0DB2BE:        BCC CODE_0DB2C6           ;
CODE_0DB2C0:        INY                       ;
CODE_0DB2C1:        CMP #$1C                  ;
CODE_0DB2C3:        BCC CODE_0DB2C6           ;
CODE_0DB2C5:        INY                       ;
CODE_0DB2C6:        LDA #$01                  ;
CODE_0DB2C8:        STA $0706                 ;
CODE_0DB2CB:        LDA $0704                 ;
CODE_0DB2CE:        BEQ CODE_0DB2D8           ;
CODE_0DB2D0:        LDY #$05                  ;
CODE_0DB2D2:        LDA $027D                 ;
CODE_0DB2D5:        BEQ CODE_0DB2D8           ;
CODE_0DB2D7:        INY                       ;
CODE_0DB2D8:        LDA $0753                 ;
CODE_0DB2DB:        BNE CODE_0DB2F6           ;
CODE_0DB2DD:        LDA DATA_0DB1F9,y               ;
CODE_0DB2E0:        STA $0709                 ;
CODE_0DB2E3:        LDA DATA_0DB200,y               ;
CODE_0DB2E6:        STA $070A                 ;
CODE_0DB2E9:        LDA DATA_0DB222,y               ;
CODE_0DB2EC:        STA $043C                 ;
CODE_0DB2EF:        LDA DATA_0DB21B,y               ;
CODE_0DB2F2:        STA $A0                   ;
CODE_0DB2F4:        BRA CODE_0DB30D           ;

CODE_0DB2F6:        LDA DATA_0DB20A,y               ;
CODE_0DB2F9:        STA $0709                 ;
CODE_0DB2FC:        LDA DATA_0DB211,y               ;
CODE_0DB2FF:        STA $070A                 ;
CODE_0DB302:        LDA DATA_0DB222,y               ;
CODE_0DB305:        STA $043C                 ;
CODE_0DB308:        LDA DATA_0DB21B,y               ;
CODE_0DB30B:        STA $A0                   ;
CODE_0DB30D:        LDA $0704                 ;
CODE_0DB310:        BEQ CODE_0DB322           ;
CODE_0DB312:        LDA #$0E                  ;
CODE_0DB314:        STA $1600                 ;
CODE_0DB317:        LDA $0237                 ;
CODE_0DB31A:        CMP #$14                  ;
CODE_0DB31C:        BCS CODE_0DB327           ;
CODE_0DB31E:        STZ $A0                   ;
CODE_0DB320:        BRA CODE_0DB327           ;

CODE_0DB322:        LDA #$01                  ;
CODE_0DB324:        TSB $1601                 ;
CODE_0DB327:        LDY #$00                  ;
CODE_0DB329:        STY $00                   ;
CODE_0DB32B:        LDA $28                   ;
CODE_0DB32D:        BEQ CODE_0DB338           ;
CODE_0DB32F:        LDA $0700                 ;
CODE_0DB332:        CMP #$19                  ;
CODE_0DB334:        BCS CODE_0DB368           ;
CODE_0DB336:        BCC CODE_0DB34F           ;
CODE_0DB338:        INY                       ;
CODE_0DB339:        LDA $5C                   ;
CODE_0DB33B:        BEQ CODE_0DB34F           ;
CODE_0DB33D:        DEY                       ;
CODE_0DB33E:        LDA $0C                   ;
CODE_0DB340:        CMP $46                   ;
CODE_0DB342:        BNE CODE_0DB34F           ;
CODE_0DB344:        LDA $0A                   ;
CODE_0DB346:        AND #$40                  ;
CODE_0DB348:        BNE CODE_0DB363           ;
CODE_0DB34A:        LDA $078B                 ;
CODE_0DB34D:        BNE CODE_0DB368           ;
CODE_0DB34F:        INY                       ;
CODE_0DB350:        INC $00                   ;
CODE_0DB352:        LDA $0703                 ;
CODE_0DB355:        BNE CODE_0DB35E           ;
CODE_0DB357:        LDA $0700                 ;
CODE_0DB35A:        CMP #$21                  ;
CODE_0DB35C:        BCC CODE_0DB368           ;
CODE_0DB35E:        INC $00                   ;
CODE_0DB360:        JMP CODE_0DB368           ;

CODE_0DB363:        LDA #$0A                  ;
CODE_0DB365:        STA $078B                 ;
CODE_0DB368:        LDA DATA_0DB229,y               ;
CODE_0DB36B:        STA $045D                 ;
CODE_0DB36E:        LDA $0F                   ;
CODE_0DB370:        CMP #$07                  ;
CODE_0DB372:        BNE CODE_0DB376           ;
CODE_0DB374:        LDY #$03                  ;
CODE_0DB376:        LDA DATA_0DB22C,y               ;
CODE_0DB379:        STA $0463                 ;
CODE_0DB37C:        LDY $00                   ;
CODE_0DB37E:        LDA DATA_0DB207,y               ;
CODE_0DB381:        STA $0702                 ;
CODE_0DB384:        STZ $0701                 ;
CODE_0DB387:        LDA $0202                 ;
CODE_0DB38A:        CMP $46                   ;
CODE_0DB38C:        BEQ CODE_0DB399           ;
CODE_0DB38E:        LDA $0EC2                 ;
CODE_0DB391:        BNE CODE_0DB399           ;
CODE_0DB393:        ASL $0702                 ;
CODE_0DB396:        ROL $0701                 ;
CODE_0DB399:        RTS                       ;

DATA_0DB39A:        db $02,$04,$07

CODE_0DB39D:        LDY #$00                  ;
CODE_0DB39F:        LDA $0700                 ;
CODE_0DB3A2:        CMP #$1C                  ;
CODE_0DB3A4:        BCS CODE_0DB3BB           ;
CODE_0DB3A6:        INY                       ;
CODE_0DB3A7:        CMP #$0E                  ;
CODE_0DB3A9:        BCS CODE_0DB3AC           ;
CODE_0DB3AB:        INY                       ;
CODE_0DB3AC:        LDA $0FF4                 ;
CODE_0DB3AF:        AND #$7F                  ;
CODE_0DB3B1:        BEQ CODE_0DB3D1           ;
CODE_0DB3B3:        AND #$03                  ;
CODE_0DB3B5:        CMP $46                   ;
CODE_0DB3B7:        BNE CODE_0DB3C0           ;
CODE_0DB3B9:        LDA #$00                  ;
CODE_0DB3BB:        STA $0703                 ;
CODE_0DB3BE:        BRA CODE_0DB3D1           ;

CODE_0DB3C0:        LDA $0700                 ;
CODE_0DB3C3:        CMP #$0B                  ;
CODE_0DB3C5:        BCS CODE_0DB3D1           ;
CODE_0DB3C7:        LDA $0202                 ;
CODE_0DB3CA:        STA $46                   ;
CODE_0DB3CC:        STZ $5D                   ;
CODE_0DB3CE:        STZ $0705                 ;
CODE_0DB3D1:        LDA DATA_0DB39A,y               ;
CODE_0DB3D4:        STA $070C                 ;
CODE_0DB3D7:        RTS                       ;

CODE_0DB3D8:        AND $0480                 ;
CODE_0DB3DB:        CMP #$00                  ;
CODE_0DB3DD:        BNE CODE_0DB3E7           ;
CODE_0DB3DF:        LDA $5D                   ;
CODE_0DB3E1:        BEQ CODE_0DB42B           ;
CODE_0DB3E3:        BPL CODE_0DB407           ;
CODE_0DB3E5:        BMI CODE_0DB3EA           ;
CODE_0DB3E7:        LSR A                     ;
CODE_0DB3E8:        BCC CODE_0DB407           ;
CODE_0DB3EA:        LDA $0705                 ;
CODE_0DB3ED:        CLC                       ;
CODE_0DB3EE:        ADC $0702                 ;
CODE_0DB3F1:        STA $0705                 ;
CODE_0DB3F4:        LDA $5D                   ;
CODE_0DB3F6:        ADC $0701                 ;
CODE_0DB3F9:        STA $5D                   ;
CODE_0DB3FB:        CMP $0463                 ;
CODE_0DB3FE:        BMI CODE_0DB422           ;
CODE_0DB400:        LDA $0463                 ;
CODE_0DB403:        STA $5D                   ;
CODE_0DB405:        BRA CODE_0DB42B           ;

CODE_0DB407:        LDA $0705                 ;
CODE_0DB40A:        SEC                       ;
CODE_0DB40B:        SBC $0702                 ;
CODE_0DB40E:        STA $0705                 ;
CODE_0DB411:        LDA $5D                   ;
CODE_0DB413:        SBC $0701                 ;
CODE_0DB416:        STA $5D                   ;
CODE_0DB418:        CMP $045D                 ;
CODE_0DB41B:        BPL CODE_0DB422           ;
CODE_0DB41D:        LDA $045D                 ;
CODE_0DB420:        STA $5D                   ;
CODE_0DB422:        CMP #$00                  ;
CODE_0DB424:        BPL CODE_0DB42B           ;
CODE_0DB426:        EOR #$FF                  ;
CODE_0DB428:        CLC                       ;
CODE_0DB429:        ADC #$01                  ;
CODE_0DB42B:        STA $0700                 ;
CODE_0DB42E:        RTS                       ;

CODE_0DB42F:        LDA $0756                 ;
CODE_0DB432:        CMP #$02                  ;
CODE_0DB434:        BCC CODE_0DB47A           ;
CODE_0DB436:        LDA $0A                   ;
CODE_0DB438:        AND #$40                  ;
CODE_0DB43A:        BEQ CODE_0DB470           ;
CODE_0DB43C:        AND $0D                   ;
CODE_0DB43E:        BNE CODE_0DB470           ;
CODE_0DB440:        LDA $06CE                 ;
CODE_0DB443:        AND #$01                  ;
CODE_0DB445:        TAX                       ;
CODE_0DB446:        LDA $33,x                 ;
CODE_0DB448:        BNE CODE_0DB470           ;
CODE_0DB44A:        LDY $BB                   ;
CODE_0DB44C:        DEY                       ;
CODE_0DB44D:        BNE CODE_0DB470           ;
CODE_0DB44F:        LDA $0714                 ;
CODE_0DB452:        BNE CODE_0DB470           ;
CODE_0DB454:        LDA $28                   ;
CODE_0DB456:        CMP #$03                  ;
CODE_0DB458:        BEQ CODE_0DB470           ;
CODE_0DB45A:        LDA #$06                  ;
CODE_0DB45C:        STA $1603                 ;
CODE_0DB45F:        LDA #$02                  ;
CODE_0DB461:        STA $33,x                 ;
CODE_0DB463:        LDY $070C                 ;
CODE_0DB466:        STY $0711                 ;
CODE_0DB469:        DEY                       ;
CODE_0DB46A:        STY $0789                 ;
CODE_0DB46D:        INC $06CE                 ;
CODE_0DB470:        LDX #$00                  ;
CODE_0DB472:        JSR CODE_0DB495           ;
CODE_0DB475:        LDX #$01                  ;
CODE_0DB477:        JSR CODE_0DB495           ;
CODE_0DB47A:        LDA $5C                   ;
CODE_0DB47C:        BNE CODE_0DB492           ;
CODE_0DB47E:        LDX #$02                  ;
CODE_0DB480:        STX $9E                   ;
CODE_0DB482:        JSR CODE_0DB52F           ;
CODE_0DB485:        JSR CODE_0DFD30           ;
CODE_0DB488:        JSR CODE_0DFDC3           ;
CODE_0DB48B:        JSL CODE_0FEC20           ;
CODE_0DB48F:        DEX                       ;
CODE_0DB490:        BPL CODE_0DB480           ;
CODE_0DB492:        RTS                       ;

DATA_0DB493:        db $40,$C0

CODE_0DB495:        STX $9E
CODE_0DB497:        LDA $33,x                 ;
CODE_0DB499:        ASL A                     ;
CODE_0DB49A:        BCC CODE_0DB49F           ;
CODE_0DB49C:        JMP CODE_0DB529           ;

CODE_0DB49F:        LDY $33,x                 ;
CODE_0DB4A1:        BNE CODE_0DB4A6           ;
CODE_0DB4A3:        JMP CODE_0DB528           ;

CODE_0DB4A6:        DEY                       ;
CODE_0DB4A7:        BEQ CODE_0DB4D5           ;
CODE_0DB4A9:        LDA $0219                 ;
CODE_0DB4AC:        ADC #$04                  ;
CODE_0DB4AE:        STA $0224,x               ;
CODE_0DB4B1:        LDA $78                   ;
CODE_0DB4B3:        ADC #$00                  ;
CODE_0DB4B5:        STA $83,x                 ;
CODE_0DB4B7:        LDA $0237                 ;
CODE_0DB4BA:        STA $0242,x               ;
CODE_0DB4BD:        LDA #$01                  ;
CODE_0DB4BF:        STA $C6,x                 ;
CODE_0DB4C1:        LDY $0202                 ;
CODE_0DB4C4:        DEY                       ;
CODE_0DB4C5:        LDA DATA_0DB493,y               ;
CODE_0DB4C8:        STA $68,x                 ;
CODE_0DB4CA:        LDA #$04                  ;
CODE_0DB4CC:        STA $AB,x                 ;
CODE_0DB4CE:        LDA #$07                  ;
CODE_0DB4D0:        STA $049A,x               ;
CODE_0DB4D3:        DEC $33,x                 ;
CODE_0DB4D5:        TXA                       ;
CODE_0DB4D6:        CLC                       ;
CODE_0DB4D7:        ADC #$0B                  ;
CODE_0DB4D9:        TAX                       ;
CODE_0DB4DA:        LDA #$50                  ;
CODE_0DB4DC:        STA $00                   ;
CODE_0DB4DE:        LDA #$03                  ;
CODE_0DB4E0:        STA $02                   ;
CODE_0DB4E2:        LDA #$00                  ;
CODE_0DB4E4:        JSR CODE_0DBF7E           ;
CODE_0DB4E7:        JSR CODE_0DBEAD           ;
CODE_0DB4EA:        LDX $9E                   ;
CODE_0DB4EC:        JSR CODE_0DFD39           ;
CODE_0DB4EF:        JSR CODE_0DFDB9           ;
CODE_0DB4F2:        JSR CODE_0DE932           ;
CODE_0DB4F5:        JSR CODE_0DE8C2           ;
CODE_0DB4F8:        LDA $03D2                 ;
CODE_0DB4FB:        AND #$FC                  ;
CODE_0DB4FD:        BEQ CODE_0DB51E           ;
CODE_0DB4FF:        AND #$F0                  ;
CODE_0DB501:        BNE CODE_0DB524           ;
CODE_0DB503:        LDA $0068,x               ;
CODE_0DB506:        BMI CODE_0DB513           ;
CODE_0DB508:        LDA $03D2                 ;
CODE_0DB50B:        AND #$0F                  ;
CODE_0DB50D:        CMP #$0F                  ;
CODE_0DB50F:        BEQ CODE_0DB524           ;
CODE_0DB511:        BRA CODE_0DB521           ;

CODE_0DB513:        LDA $03D2                 ;
CODE_0DB516:        AND #$0C                  ;
CODE_0DB518:        CMP #$0C                  ;
CODE_0DB51A:        BEQ CODE_0DB524           ;
CODE_0DB51C:        BRA CODE_0DB521           ;

CODE_0DB51E:        JSR CODE_0DDB80           ;
CODE_0DB521:        JMP CODE_0DF433           ;

CODE_0DB524:        LDA #$00                  ;
CODE_0DB526:        STA $33,x                 ;
CODE_0DB528:        RTS                       ;

CODE_0DB529:        JSR CODE_0DFD39           ;
CODE_0DB52C:        JMP CODE_0DF498           ;

CODE_0DB52F:        LDA $07B8,x               ;
CODE_0DB532:        AND #$01                  ;
CODE_0DB534:        STA $07                   ;
CODE_0DB536:        LDA $0251,x               ;
CODE_0DB539:        CMP #$F8                  ;
CODE_0DB53B:        BNE CODE_0DB56E           ;
CODE_0DB53D:        LDA $079E                 ;
CODE_0DB540:        BNE CODE_0DB588           ;
CODE_0DB542:        LDY #$00                  ;
CODE_0DB544:        LDA $0202                 ;
CODE_0DB547:        LSR A                     ;
CODE_0DB548:        BCC CODE_0DB54C           ;
CODE_0DB54A:        LDY #$08                  ;
CODE_0DB54C:        TYA                       ;
CODE_0DB54D:        ADC $0219                 ;
CODE_0DB550:        STA $0233,x               ;
CODE_0DB553:        LDA $78                   ;
CODE_0DB555:        ADC #$00                  ;
CODE_0DB557:        STA $92,x                 ;
CODE_0DB559:        LDA $0237                 ;
CODE_0DB55C:        CLC                       ;
CODE_0DB55D:        ADC #$08                  ;
CODE_0DB55F:        STA $0251,x               ;
CODE_0DB562:        LDA #$01                  ;
CODE_0DB564:        STA $D5,x                 ;
CODE_0DB566:        LDY $07                   ;
CODE_0DB568:        LDA DATA_0DB58B,y               ;
CODE_0DB56B:        STA $079E                 ;
CODE_0DB56E:        LDY $07                   ;
CODE_0DB570:        LDA $0436,x               ;
CODE_0DB573:        SEC                       ;
CODE_0DB574:        SBC DATA_0DB589,y               ;
CODE_0DB577:        STA $0436,x               ;
CODE_0DB57A:        LDA $0251,x               ;
CODE_0DB57D:        SBC #$00                  ;
CODE_0DB57F:        CMP #$20                  ;
CODE_0DB581:        BCS CODE_0DB585           ;
CODE_0DB583:        LDA #$F8                  ;
CODE_0DB585:        STA $0251,x               ;
CODE_0DB588:        RTS                       ;

DATA_0DB589:        db $FF,$50

DATA_0DB58B:        db $40,$20

CODE_0DB58D:        LDA $0770                 ;
CODE_0DB590:        BEQ CODE_0DB5E7           ;
CODE_0DB592:        LDA $0F                   ;
CODE_0DB594:        CMP #$08                  ;
CODE_0DB596:        BCC CODE_0DB5E7           ;
CODE_0DB598:        CMP #$0B                  ;
CODE_0DB59A:        BEQ CODE_0DB5E7           ;
CODE_0DB59C:        LDA $BB                   ;
CODE_0DB59E:        CMP #$02                  ;
CODE_0DB5A0:        BPL CODE_0DB5E7           ;
CODE_0DB5A2:        LDA $078F                 ;
CODE_0DB5A5:        BNE CODE_0DB5E7           ;
CODE_0DB5A7:        LDA $07E9                 ;
CODE_0DB5AA:        ORA $07EA                 ;
CODE_0DB5AD:        ORA $07EB                 ;
CODE_0DB5B0:        BEQ CODE_0DB5DE           ;
CODE_0DB5B2:        LDY $07E9                 ;
CODE_0DB5B5:        DEY                       ;
CODE_0DB5B6:        BNE CODE_0DB5C5           ;
CODE_0DB5B8:        LDA $07EA                 ;
CODE_0DB5BB:        ORA $07EB                 ;
CODE_0DB5BE:        BNE CODE_0DB5C5           ;
CODE_0DB5C0:        LDA #$FF                  ;
CODE_0DB5C2:        STA $1600                 ;
CODE_0DB5C5:        LDA #$18                  ;
CODE_0DB5C7:        STA $078F                 ;
CODE_0DB5CA:        LDY #$23                  ;
CODE_0DB5CC:        LDA #$FF                  ;
CODE_0DB5CE:        STA $014A                 ;
CODE_0DB5D1:        LDA $0E73                 ;
CODE_0DB5D4:        BNE CODE_0DB5D9           ;
CODE_0DB5D6:        JSR CODE_0D98AA           ;
CODE_0DB5D9:        LDA #$A4                  ;
CODE_0DB5DB:        JMP CODE_0D983D           ;

CODE_0DB5DE:        STA $0756                 ;
CODE_0DB5E1:        JSR CODE_0DDE8A           ;
CODE_0DB5E4:        INC $0759                 ;
CODE_0DB5E7:        RTS                       ;

CODE_0DB5E8:        LDA $0723                 ;
CODE_0DB5EB:        BEQ CODE_0DB5E7           ;
CODE_0DB5ED:        LDA $0237                 ;
CODE_0DB5F0:        AND $BB                   ;
CODE_0DB5F2:        BNE CODE_0DB5E7           ;
CODE_0DB5F4:        STA $0723                 ;
CODE_0DB5F7:        JMP CODE_0DCCEA           ;

CODE_0DB5FA:        LDA $5C                   ;
CODE_0DB5FC:        BNE CODE_0DB63B           ;
CODE_0DB5FE:        STA $027D                 ;
CODE_0DB601:        JSL CODE_048378           ;
CODE_0DB605:        LDA $0747                 ;
CODE_0DB608:        BNE CODE_0DB63B           ;
CODE_0DB60A:        LDY #$04                  ;
CODE_0DB60C:        LDA $0271,y               ;
CODE_0DB60F:        CLC                       ;
CODE_0DB610:        ADC $0277,y               ;
CODE_0DB613:        STA $02                   ;
CODE_0DB615:        LDA $026B,y               ;
CODE_0DB618:        BEQ CODE_0DB638           ;
CODE_0DB61A:        ADC #$00                  ;
CODE_0DB61C:        STA $01                   ;
CODE_0DB61E:        LDA $0219                 ;
CODE_0DB621:        SEC                       ;
CODE_0DB622:        SBC $0271,y               ;
CODE_0DB625:        LDA $78                   ;
CODE_0DB627:        SBC $026B,y               ;
CODE_0DB62A:        BMI CODE_0DB638           ;
CODE_0DB62C:        LDA $02                   ;
CODE_0DB62E:        SEC                       ;
CODE_0DB62F:        SBC $0219                 ;
CODE_0DB632:        LDA $01                   ;
CODE_0DB634:        SBC $78                   ;
CODE_0DB636:        BPL CODE_0DB63C           ;
CODE_0DB638:        DEY                       ;
CODE_0DB639:        BPL CODE_0DB60C           ;
CODE_0DB63B:        RTS                       ;

CODE_0DB63C:        LDA $0277,y               ;
CODE_0DB63F:        LSR A                     ;
CODE_0DB640:        STA $00                   ;
CODE_0DB642:        LDA $0271,y               ;
CODE_0DB645:        CLC                       ;
CODE_0DB646:        ADC $00                   ;
CODE_0DB648:        STA $01                   ;
CODE_0DB64A:        LDA $026B,y               ;
CODE_0DB64D:        ADC #$00                  ;
CODE_0DB64F:        STA $00                   ;
CODE_0DB651:        LDA $09                   ;
CODE_0DB653:        LSR A                     ;
CODE_0DB654:        BCC CODE_0DB687           ;
CODE_0DB656:        LDA $01                   ;
CODE_0DB658:        SEC                       ;
CODE_0DB659:        SBC $0219                 ;
CODE_0DB65C:        LDA $00                   ;
CODE_0DB65E:        SBC $78                   ;
CODE_0DB660:        BPL CODE_0DB672           ;
CODE_0DB662:        LDA $0219                 ;
CODE_0DB665:        SEC                       ;
CODE_0DB666:        SBC #$01                  ;
CODE_0DB668:        STA $0219                 ;
CODE_0DB66B:        LDA $78                   ;
CODE_0DB66D:        SBC #$00                  ;
CODE_0DB66F:        JMP CODE_0DB685           ;

CODE_0DB672:        LDA $0480                 ;
CODE_0DB675:        LSR A                     ;
CODE_0DB676:        BCC CODE_0DB687           ;
CODE_0DB678:        LDA $0219                 ;
CODE_0DB67B:        CLC                       ;
CODE_0DB67C:        ADC #$01                  ;
CODE_0DB67E:        STA $0219                 ;
CODE_0DB681:        LDA $78                   ;
CODE_0DB683:        ADC #$00                  ;
CODE_0DB685:        STA $78                   ;
CODE_0DB687:        LDA #$10                  ;
CODE_0DB689:        STA $00                   ;
CODE_0DB68B:        LDA #$01                  ;
CODE_0DB68D:        STA $027D                 ;
CODE_0DB690:        STA $02                   ;
CODE_0DB692:        LSR A                     ;
CODE_0DB693:        TAX                       ;
CODE_0DB694:        JMP CODE_0DBF7E           ;

DATA_0DB697:        db $05,$02,$08,$04,$01

DATA_0DB69C:        db $03,$03,$04,$04,$04

CODE_0DB6A1:        LDX #$05                  ;
CODE_0DB6A3:        STX $9E                   ;
CODE_0DB6A5:        LDA $1C,x                 ;
CODE_0DB6A7:        CMP #$30                  ;
CODE_0DB6A9:        BEQ CODE_0DB6AC           ;
CODE_0DB6AB:        RTS                       ;

CODE_0DB6AC:        LDA $0F                   ;
CODE_0DB6AE:        CMP #$04                  ;
CODE_0DB6B0:        BNE CODE_0DB6E7           ;
CODE_0DB6B2:        LDA $28                   ;
CODE_0DB6B4:        CMP #$03                  ;
CODE_0DB6B6:        BNE CODE_0DB6E7           ;
CODE_0DB6B8:        LDA $0238,x               ;
CODE_0DB6BB:        CMP #$AA                  ;
CODE_0DB6BD:        BCS CODE_0DB6EA           ;
CODE_0DB6BF:        LDA $0237                 ;
CODE_0DB6C2:        CMP #$A2                  ;
CODE_0DB6C4:        BCS CODE_0DB6EA           ;
CODE_0DB6C6:        LDA $041D,x               ;
CODE_0DB6C9:        ADC #$FF                  ;
CODE_0DB6CB:        STA $041D,x               ;
CODE_0DB6CE:        LDA $0238,x               ;
CODE_0DB6D1:        ADC #$01                  ;
CODE_0DB6D3:        STA $0238,x               ;
CODE_0DB6D6:        LDA $010E                 ;
CODE_0DB6D9:        SEC                       ;
CODE_0DB6DA:        SBC #$FF                  ;
CODE_0DB6DC:        STA $010E                 ;
CODE_0DB6DF:        LDA $010D                 ;
CODE_0DB6E2:        SBC #$01                  ;
CODE_0DB6E4:        STA $010D                 ;
CODE_0DB6E7:        JMP CODE_0DB735           ;

CODE_0DB6EA:        LDY $010F                 ;
CODE_0DB6ED:        CPY #$05                  ;
CODE_0DB6EF:        BNE CODE_0DB6FD           ;
CODE_0DB6F1:        JSL CODE_048596           ;Increase lives by one
CODE_0DB6F5:        LDA #$05                  ;
CODE_0DB6F7:        STA $1603                 ;
CODE_0DB6FA:        JMP CODE_0DB709           ;

CODE_0DB6FD:        LDA DATA_0DB697,y               ;
CODE_0DB700:        LDX DATA_0DB69C,y               ;
CODE_0DB703:        STA $0145,x               ;
CODE_0DB706:        JSR CODE_0DBB27           ;
CODE_0DB709:        LDA #$05                  ;
CODE_0DB70B:        STA $0F                   ;
CODE_0DB70D:        LDA #$0C                  ;
CODE_0DB70F:        STA $1602                 ;
CODE_0DB712:        LDA $0202                 ;
CODE_0DB715:        AND #$02                  ;
CODE_0DB717:        BNE CODE_0DB71D           ;
CODE_0DB719:        LDA #$6E                  ;
CODE_0DB71B:        BRA CODE_0DB71F           ;

CODE_0DB71D:        LDA #$60                  ;
CODE_0DB71F:        STA $02FD                 ;
CODE_0DB722:        LDA $0219                 ;
CODE_0DB725:        STA $03CC                 ;
CODE_0DB728:        LDA $78                   ;
CODE_0DB72A:        STA $03CD                 ;
CODE_0DB72D:        LDA #$20                  ;
CODE_0DB72F:        STA $03FB                 ;
CODE_0DB732:        STA $03FA                 ;
CODE_0DB735:        JSR CODE_0DFDE1           ;
CODE_0DB738:        JSR CODE_0DFD4F           ;
CODE_0DB73B:        JSL CODE_0FFC40           ;
CODE_0DB73F:        RTS                       ;

DATA_0DB740:        db $08,$10,$08,$00

CODE_0DB744:        JSR CODE_0DFDE1           ;
CODE_0DB747:        LDA $0747                 ;
CODE_0DB74A:        BNE CODE_0DB7AD           ;
CODE_0DB74C:        LDA $070E                 ;
CODE_0DB74F:        BEQ CODE_0DB7AD           ;
CODE_0DB751:        TAY                       ;
CODE_0DB752:        DEY                       ;
CODE_0DB753:        TYA                       ;
CODE_0DB754:        AND #$02                  ;
CODE_0DB756:        BNE CODE_0DB761           ;
CODE_0DB758:        INC $0237                 ;
CODE_0DB75B:        INC $0237                 ;
CODE_0DB75E:        JMP CODE_0DB767           ;

CODE_0DB761:        DEC $0237                 ;
CODE_0DB764:        DEC $0237                 ;
CODE_0DB767:        LDA $5E,x                 ;
CODE_0DB769:        CLC                       ;
CODE_0DB76A:        ADC DATA_0DB740,y               ;
CODE_0DB76D:        STA $0238,x               ;
CODE_0DB770:        CPY #$01                  ;
CODE_0DB772:        BCC CODE_0DB79C           ;
CODE_0DB774:        LDA $0A                   ;
CODE_0DB776:        AND #$80                  ;
CODE_0DB778:        BEQ CODE_0DB79C           ;
CODE_0DB77A:        AND $0D                   ;
CODE_0DB77C:        BNE CODE_0DB79C           ;
CODE_0DB77E:        TYA                       ;
CODE_0DB77F:        PHA                       ;
CODE_0DB780:        LDA #$F4                  ;
CODE_0DB782:        LDY $075F                 ;
CODE_0DB785:        CPY #$0B                  ;
CODE_0DB787:        BEQ CODE_0DB795           ;
CODE_0DB789:        CPY #$01                  ;
CODE_0DB78B:        BEQ CODE_0DB795           ;
CODE_0DB78D:        CPY #$02                  ;
CODE_0DB78F:        BEQ CODE_0DB795           ;
CODE_0DB791:        CPY #$06                  ;
CODE_0DB793:        BNE CODE_0DB797           ;
CODE_0DB795:        LDA #$E0                  ;
CODE_0DB797:        STA $06DB                 ;
CODE_0DB79A:        PLA                       ;
CODE_0DB79B:        TAY                       ;
CODE_0DB79C:        CPY #$03                  ;
CODE_0DB79E:        BNE CODE_0DB7AD           ;
CODE_0DB7A0:        LDA $06DB                 ;
CODE_0DB7A3:        STA $A0                   ;
CODE_0DB7A5:        STZ $070E                 ;
CODE_0DB7A8:        LDA #$08                  ;
CODE_0DB7AA:        STA $1603                 ;
CODE_0DB7AD:        JSR CODE_0DFD4F           ;
CODE_0DB7B0:        JSR CODE_0DEE40           ;
CODE_0DB7B3:        JSR CODE_0DDAFC           ;
CODE_0DB7B6:        LDA $070E                 ;
CODE_0DB7B9:        BEQ CODE_0DB7C8           ;
CODE_0DB7BB:        LDA $078E                 ;
CODE_0DB7BE:        BNE CODE_0DB7C8           ;
CODE_0DB7C0:        LDA #$04                  ;
CODE_0DB7C2:        STA $078E                 ;
CODE_0DB7C5:        INC $070E                 ;
CODE_0DB7C8:        RTS                       ;

CODE_0DB7C9:        LDA #$2F                  ;
CODE_0DB7CB:        STA $1C,x                 ;
CODE_0DB7CD:        LDA #$01                  ;
CODE_0DB7CF:        STA $10,x                 ;
CODE_0DB7D1:        LDA $0085,y               ;
CODE_0DB7D4:        STA $79,x                 ;
CODE_0DB7D6:        LDA $0226,y               ;
CODE_0DB7D9:        STA $021A,x               ;
CODE_0DB7DC:        LDA $0244,y               ;
CODE_0DB7DF:        BNE CODE_0DB7E3           ;
CODE_0DB7E1:        LDA #$F0                  ;
CODE_0DB7E3:        STA $0238,x               ;
CODE_0DB7E6:        LDY $0398                 ;
CODE_0DB7E9:        BNE CODE_0DB7EE           ;
CODE_0DB7EB:        STA $039D                 ;
CODE_0DB7EE:        TXA                       ;
CODE_0DB7EF:        STA $039A,y               ;
CODE_0DB7F2:        INC $0398                 ;
CODE_0DB7F5:        LDA #$03                  ;
CODE_0DB7F7:        STA $1603                 ;
CODE_0DB7FA:        RTS                       ;

CODE_0DB7FB:        CPX #$09                  ;
CODE_0DB7FD:        BEQ CODE_0DB800           ;
CODE_0DB7FF:        RTS                       ;

CODE_0DB800:        LDA $0236                 ;
CODE_0DB803:        BNE CODE_0DB809           ;
CODE_0DB805:        LDA #$90                  ;
CODE_0DB807:        BRA CODE_0DB80B           ;

CODE_0DB809:        LDA #$60                  ;
CODE_0DB80B:        CMP $0399                 ;
CODE_0DB80E:        BEQ CODE_0DB81B           ;
CODE_0DB810:        LDA $09                   ;
CODE_0DB812:        LSR A                     ;
CODE_0DB813:        BCC CODE_0DB81B           ;
CODE_0DB815:        DEC $0241                 ;
CODE_0DB818:        INC $0399                 ;
CODE_0DB81B:        LDA $0399                 ;
CODE_0DB81E:        CMP #$08                  ;
CODE_0DB820:        BCC CODE_0DB86E           ;
CODE_0DB822:        JSR CODE_0DFD4F           ;
CODE_0DB825:        JSR CODE_0DFDE1           ;
CODE_0DB828:        LDY #$00                  ;
CODE_0DB82A:        JSL CODE_0FE8BE           ;
CODE_0DB82E:        LDA $03D1                 ;
CODE_0DB831:        AND #$0F                  ;
CODE_0DB833:        CMP #$0F                  ;
CODE_0DB835:        BNE CODE_0DB842           ;
CODE_0DB837:        LDX #$09                  ;
CODE_0DB839:        JSR CODE_0DCCEA           ;
CODE_0DB83C:        STA $0398                 ;
CODE_0DB83F:        STA $0399                 ;
CODE_0DB842:        LDX #$0A                  ;
CODE_0DB844:        LDA #$01                  ;
CODE_0DB846:        LDY #$1B                  ;
CODE_0DB848:        JSR CODE_0DEAFF           ;
CODE_0DB84B:        LDY $02                   ;
CODE_0DB84D:        CPY #$D0                  ;
CODE_0DB84F:        BCS CODE_0DB86E           ;
CODE_0DB851:        LDA $0236                 ;
CODE_0DB854:        BNE CODE_0DB859           ;
CODE_0DB856:        TYA                       ;
CODE_0DB857:        BMI CODE_0DB86E           ;
CODE_0DB859:        LDA ($06),y               ;
CODE_0DB85B:        BNE CODE_0DB86E           ;
CODE_0DB85D:        LDA #$2F                  ;
CODE_0DB85F:        STA ($06),y               ;
CODE_0DB861:        TYA                       ;
CODE_0DB862:        BMI CODE_0DB86E           ;
CODE_0DB864:        SEC                       ;
CODE_0DB865:        SBC #$10                  ;
CODE_0DB867:        BEQ CODE_0DB86E           ;
CODE_0DB869:        BMI CODE_0DB86E           ;
CODE_0DB86B:        TAY                       ;
CODE_0DB86C:        BRA CODE_0DB859           ;

CODE_0DB86E:        LDY $02                   ;
CODE_0DB870:        LDX $9E                   ;
CODE_0DB872:        RTS                       ;

DATA_0DB873:       db $0F,$07

CODE_0DB875:        LDA $5C
CODE_0DB877:        BEQ CODE_0DB8E8           ;
CODE_0DB879:        LDX #$02                  ;
CODE_0DB87B:        STX $9E                   ;
CODE_0DB87D:        LDA $10,x                 ;
CODE_0DB87F:        BNE CODE_0DB8D2           ;
CODE_0DB881:        LDA $07B8,x               ;
CODE_0DB884:        LDY $06CC                 ;
CODE_0DB887:        AND DATA_0DB873,y               ;
CODE_0DB88A:        CMP #$06                  ;
CODE_0DB88C:        BCS CODE_0DB8D2           ;
CODE_0DB88E:        TAY                       ;
CODE_0DB88F:        LDA $026B,y               ;
CODE_0DB892:        BEQ CODE_0DB8D2           ;
CODE_0DB894:        LDA $027D,y               ;
CODE_0DB897:        BEQ CODE_0DB8A0           ;
CODE_0DB899:        SBC #$00                  ;
CODE_0DB89B:        STA $027D,y               ;
CODE_0DB89E:        BRA CODE_0DB8D2           ;

CODE_0DB8A0:        LDA $0747                 ;
CODE_0DB8A3:        BNE CODE_0DB8D2           ;
CODE_0DB8A5:        LDA #$0E                  ;
CODE_0DB8A7:        STA $027D,y               ;
CODE_0DB8AA:        LDA $026B,y               ;
CODE_0DB8AD:        STA $79,x                 ;
CODE_0DB8AF:        LDA $0271,y               ;
CODE_0DB8B2:        STA $021A,x               ;
CODE_0DB8B5:        LDA $0277,y               ;
CODE_0DB8B8:        SEC                       ;
CODE_0DB8B9:        SBC #$08                  ;
CODE_0DB8BB:        STA $0238,x               ;
CODE_0DB8BE:        LDA #$01                  ;
CODE_0DB8C0:        STA $BC,x                 ;
CODE_0DB8C2:        STA $10,x                 ;
CODE_0DB8C4:        LSR A                     ;
CODE_0DB8C5:        STA $29,x                 ;
CODE_0DB8C7:        LDA #$09                  ;
CODE_0DB8C9:        STA $0490,x               ;
CODE_0DB8CC:        LDA #$33                  ;
CODE_0DB8CE:        STA $1C,x                 ;
CODE_0DB8D0:        BRA CODE_0DB8E5           ;

CODE_0DB8D2:        LDA $1C,x                 ;
CODE_0DB8D4:        CMP #$33                  ;
CODE_0DB8D6:        BNE CODE_0DB8E5           ;
CODE_0DB8D8:        JSR CODE_0DDAFC           ;
CODE_0DB8DB:        LDA $10,x                 ;
CODE_0DB8DD:        BEQ CODE_0DB8E5           ;
CODE_0DB8DF:        JSR CODE_0DFDE1           ;
CODE_0DB8E2:        JSR CODE_0DB8EB           ;
CODE_0DB8E5:        DEX                       ;
CODE_0DB8E6:        BPL CODE_0DB87B           ;
CODE_0DB8E8:        RTS                       ;

DATA_0DB8E9:        db $18,$E8

CODE_0DB8EB:        LDA $0747                 ;
CODE_0DB8EE:        BNE CODE_0DB943           ;
CODE_0DB8F0:        LDA $29,x                 ;
CODE_0DB8F2:        BNE CODE_0DB926           ;
CODE_0DB8F4:        LDA $03D1                 ;
CODE_0DB8F7:        AND #$0C                  ;
CODE_0DB8F9:        CMP #$0C                  ;
CODE_0DB8FB:        BEQ CODE_0DB952           ;
CODE_0DB8FD:        LDY #$01                  ;
CODE_0DB8FF:        JSR CODE_0DE828           ;
CODE_0DB902:        BMI CODE_0DB905           ;
CODE_0DB904:        INY                       ;
CODE_0DB905:        STY $47,x                 ;
CODE_0DB907:        DEY                       ;
CODE_0DB908:        LDA DATA_0DB8E9,y               ;
CODE_0DB90B:        STA $5E,x                 ;
CODE_0DB90D:        LDA $00                   ;
CODE_0DB90F:        ADC #$28                  ;
CODE_0DB911:        CMP #$50                  ;
CODE_0DB913:        BCC CODE_0DB952           ;
CODE_0DB915:        LDA #$01                  ;
CODE_0DB917:        STA $29,x                 ;
CODE_0DB919:        LDA #$0A                  ;
CODE_0DB91B:        STA $0792,x               ;
CODE_0DB91E:        LDA #$4A                  ;
CODE_0DB920:        STA $1603                 ;
CODE_0DB923:        JSR CODE_0DC06E           ;
CODE_0DB926:        LDA $03D1                 ;
CODE_0DB929:        AND #$F0                  ;
CODE_0DB92B:        CMP #$F0                  ;
CODE_0DB92D:        BEQ CODE_0DB952           ;
CODE_0DB92F:        LDA $29,x                 ;
CODE_0DB931:        AND #$20                  ;
CODE_0DB933:        BEQ CODE_0DB938           ;
CODE_0DB935:        JSR CODE_0DBF06           ;
CODE_0DB938:        LDA $0E67                 ;
CODE_0DB93B:        BNE CODE_0DB943           ;
CODE_0DB93D:        JSR CODE_0DBEA0           ;
CODE_0DB940:        JSR CODE_0DBFED           ;
CODE_0DB943:        JSR CODE_0DFDE1           ;
CODE_0DB946:        JSR CODE_0DFD4F           ;
CODE_0DB949:        JSR CODE_0DE948           ;
CODE_0DB94C:        JSR CODE_0DDD7D           ;
CODE_0DB94F:        JMP CODE_0DEE40           ;

CODE_0DB952:        JSR CODE_0DCCEA           ;
CODE_0DB955:        RTS                       ;

DATA_0DB956:        db $04,$04,$04,$05,$05,$05,$06,$06
                    db $06

DATA_0DB95F:        db $10,$F0

CODE_0DB961:        LDA $07B8                 ;
CODE_0DB964:        AND #$07                  ;
CODE_0DB966:        BNE CODE_0DB96D           ;
CODE_0DB968:        LDA $07B8                 ;
CODE_0DB96B:        AND #$08                  ;
CODE_0DB96D:        TAY                       ;
CODE_0DB96E:        LDA $0039,y               ;
CODE_0DB971:        BNE CODE_0DB98C           ;
CODE_0DB973:        LDX DATA_0DB956,y               ;
CODE_0DB976:        LDA $10,x                 ;
CODE_0DB978:        BNE CODE_0DB98C           ;
CODE_0DB97A:        LDX $9E                   ;
CODE_0DB97C:        TXA                       ;
CODE_0DB97D:        STA $06AE,y               ;
CODE_0DB980:        LDA #$90                  ;
CODE_0DB982:        STA $0039,y               ;
CODE_0DB985:        LDA #$07                  ;
CODE_0DB987:        STA $049C,y               ;
CODE_0DB98A:        SEC                       ;
CODE_0DB98B:        RTS                       ;

CODE_0DB98C:        LDX $9E                   ;
CODE_0DB98E:        CLC                       ;
CODE_0DB98F:        RTS                       ;

CODE_0DB990:        LDA $0747                 ;
CODE_0DB993:        BEQ CODE_0DB998           ;
CODE_0DB995:        JMP CODE_0DBA1E           ;

CODE_0DB998:        LDA $39,x                 ;
CODE_0DB99A:        AND #$7F                  ;
CODE_0DB99C:        LDY $06AE,x               ;
CODE_0DB99F:        CMP #$02                  ;
CODE_0DB9A1:        BEQ CODE_0DB9C3           ;
CODE_0DB9A3:        BCS CODE_0DB9D9           ;
CODE_0DB9A5:        TXA                       ;
CODE_0DB9A6:        CLC                       ;
CODE_0DB9A7:        ADC #$11                  ;
CODE_0DB9A9:        TAX                       ;
CODE_0DB9AA:        LDA #$10                  ;
CODE_0DB9AC:        STA $00                   ;
CODE_0DB9AE:        LDA #$0F                  ;
CODE_0DB9B0:        STA $01                   ;
CODE_0DB9B2:        LDA #$04                  ;
CODE_0DB9B4:        STA $02                   ;
CODE_0DB9B6:        LDA #$00                  ;
CODE_0DB9B8:        JSR CODE_0DBF7E           ;
CODE_0DB9BB:        JSR CODE_0DBEAD           ;
CODE_0DB9BE:        LDX $9E                   ;
CODE_0DB9C0:        JMP CODE_0DBA1B           ;

CODE_0DB9C3:        LDA #$FE                  ;
CODE_0DB9C5:        STA $B1,x                 ;
CODE_0DB9C7:        LDA $0029,y               ;
CODE_0DB9CA:        AND #$F7                  ;
CODE_0DB9CC:        STA $0029,y               ;
CODE_0DB9CF:        LDX $47,y                 ;
CODE_0DB9D1:        DEX                       ;
CODE_0DB9D2:        LDA DATA_0DB95F,x               ;
CODE_0DB9D5:        LDX $9E                   ;
CODE_0DB9D7:        STA $6E,x                 ;
CODE_0DB9D9:        DEC $39,x                 ;
CODE_0DB9DB:        LDA $39,x                 ;
CODE_0DB9DD:        CMP #$81                  ;
CODE_0DB9DF:        BNE CODE_0DB9E6           ;
CODE_0DB9E1:        LDA #$37                  ;
CODE_0DB9E3:        STA $1600                 ;
CODE_0DB9E6:        LDA $001C,y               ;
CODE_0DB9E9:        CMP #$2D                  ;
CODE_0DB9EB:        BNE CODE_0DB9F1           ;
CODE_0DB9ED:        LDA #$08                  ;
CODE_0DB9EF:        BRA CODE_0DB9FE           ;

CODE_0DB9F1:        LDA $0047,y               ;
CODE_0DB9F4:        CMP #$02                  ;
CODE_0DB9F6:        BNE CODE_0DB9FC           ;
CODE_0DB9F8:        LDA #$06                  ;
CODE_0DB9FA:        BRA CODE_0DB9FE           ;

CODE_0DB9FC:        LDA #$02                  ;
CODE_0DB9FE:        CLC                       ;
CODE_0DB9FF:        ADC $021A,y               ;
CODE_0DBA02:        STA $022A,x               ;
CODE_0DBA05:        LDA $0079,y               ;
CODE_0DBA08:        ADC #$00                  ;
CODE_0DBA0A:        STA $89,x                 ;
CODE_0DBA0C:        LDA $0238,y               ;
CODE_0DBA0F:        SEC                       ;
CODE_0DBA10:        SBC #$0A                  ;
CODE_0DBA12:        STA $0248,x               ;
CODE_0DBA15:        LDA #$01                  ;
CODE_0DBA17:        STA $CC,x                 ;
CODE_0DBA19:        BNE CODE_0DBA1E           ;
CODE_0DBA1B:        JSR CODE_0DDCD9           ;
CODE_0DBA1E:        JSR CODE_0DFDCD           ;
CODE_0DBA21:        JSR CODE_0DFD46           ;
CODE_0DBA24:        JSR CODE_0DE93B           ;
CODE_0DBA27:        JSL CODE_0FEB53           ;
CODE_0DBA2B:        RTS                       ;

CODE_0DBA2C:        JSR CODE_0DBA7A           ;
CODE_0DBA2F:        LDA $85,x                 ;
CODE_0DBA31:        STA $0089,y               ;
CODE_0DBA34:        LDA $0226,x               ;
CODE_0DBA37:        ORA #$05                  ;
CODE_0DBA39:        STA $022A,y               ;
CODE_0DBA3C:        LDA $0244,x               ;
CODE_0DBA3F:        SBC #$10                  ;
CODE_0DBA41:        STA $0248,y               ;
CODE_0DBA44:        BRA CODE_0DBA61           ;

CODE_0DBA46:        JSR CODE_0DBA7A           ;
CODE_0DBA49:        LDA $03EC,x               ;
CODE_0DBA4C:        STA $0089,y               ;
CODE_0DBA4F:        LDA $06                   ;
CODE_0DBA51:        ASL A                     ;
CODE_0DBA52:        ASL A                     ;
CODE_0DBA53:        ASL A                     ;
CODE_0DBA54:        ASL A                     ;
CODE_0DBA55:        ORA #$05                  ;
CODE_0DBA57:        STA $022A,y               ;
CODE_0DBA5A:        LDA $02                   ;
CODE_0DBA5C:        ADC #$20                  ;
CODE_0DBA5E:        STA $0248,y               ;
CODE_0DBA61:        LDA #$FB                  ;
CODE_0DBA63:        STA $00B1,y               ;
CODE_0DBA66:        LDA #$01                  ;
CODE_0DBA68:        STA $00CC,y               ;
CODE_0DBA6B:        STA $0039,y               ;
CODE_0DBA6E:        STA $1603                 ;
CODE_0DBA71:        STX $9E                   ;
CODE_0DBA73:        JSR CODE_0DBAFF           ;
CODE_0DBA76:        INC $0748                 ;
CODE_0DBA79:        RTS                       ;

CODE_0DBA7A:        LDY #$08                  ;
CODE_0DBA7C:        LDA $0039,y               ;
CODE_0DBA7F:        BEQ CODE_0DBA88           ;
CODE_0DBA81:        DEY                       ;
CODE_0DBA82:        CPY #$05                  ;
CODE_0DBA84:        BNE CODE_0DBA7C           ;
CODE_0DBA86:        LDY #$08                  ;
CODE_0DBA88:        STY $06B7                 ;
CODE_0DBA8B:        RTS                       ;

CODE_0DBA8C:        LDX #$08                  ;
CODE_0DBA8E:        STX $9E                   ;
CODE_0DBA90:        LDA $39,x                 ;
CODE_0DBA92:        BEQ CODE_0DBAF5           ;
CODE_0DBA94:        ASL A                     ;
CODE_0DBA95:        BCC CODE_0DBA9D           ;
CODE_0DBA97:        JSR CODE_0DB990           ;
CODE_0DBA9A:        JMP CODE_0DBAF5           ;

CODE_0DBA9D:        LDY $39,x                 ;
CODE_0DBA9F:        DEY                       ;
CODE_0DBAA0:        BEQ CODE_0DBAC1           ;
CODE_0DBAA2:        INC $39,x                 ;
CODE_0DBAA4:        LDA $022A,x               ;
CODE_0DBAA7:        CLC                       ;
CODE_0DBAA8:        ADC $0775                 ;
CODE_0DBAAB:        STA $022A,x               ;
CODE_0DBAAE:        LDA $89,x                 ;
CODE_0DBAB0:        ADC #$00                  ;
CODE_0DBAB2:        STA $89,x                 ;
CODE_0DBAB4:        LDA $39,x                 ;
CODE_0DBAB6:        CMP #$30                  ;
CODE_0DBAB8:        BNE CODE_0DBAE0           ;
CODE_0DBABA:        LDA #$00                  ;
CODE_0DBABC:        STA $39,x                 ;
CODE_0DBABE:        JMP CODE_0DBAF5           ;

CODE_0DBAC1:        TXA                       ;
CODE_0DBAC2:        CLC                       ;
CODE_0DBAC3:        ADC #$11                  ;
CODE_0DBAC5:        TAX                       ;
CODE_0DBAC6:        LDA #$50                  ;
CODE_0DBAC8:        STA $00                   ;
CODE_0DBACA:        LDA #$06                  ;
CODE_0DBACC:        STA $02                   ;
CODE_0DBACE:        LSR A                     ;
CODE_0DBACF:        STA $01                   ;
CODE_0DBAD1:        LDA #$00                  ;
CODE_0DBAD3:        JSR CODE_0DBF7E           ;
CODE_0DBAD6:        LDX $9E                   ;
CODE_0DBAD8:        LDA $B1,x                 ;
CODE_0DBADA:        CMP #$05                  ;
CODE_0DBADC:        BNE CODE_0DBAE0           ;
CODE_0DBADE:        INC $39,x                 ;
CODE_0DBAE0:        LDA $B1,x                 ;
CODE_0DBAE2:        BNE CODE_0DBAE8           ;
CODE_0DBAE4:        JSL CODE_0FEACA           ;
CODE_0DBAE8:        JSR CODE_0DFD46           ;
CODE_0DBAEB:        JSR CODE_0DFDCD           ;
CODE_0DBAEE:        JSR CODE_0DE93B           ;
CODE_0DBAF1:        JSL CODE_0FEAEC           ;
CODE_0DBAF5:        DEX                       ;
CODE_0DBAF6:        BPL CODE_0DBA8E           ;
CODE_0DBAF8:        RTS                       ;

DATA_0DBAF9:        db $17,$1D

DATA_0DBAFB:        db $0B,$11

DATA_0DBAFD:        db $02,$13

CODE_0DBAFF:        LDA #$01                  ;
CODE_0DBB01:        STA $014A                 ;
CODE_0DBB04:        LDY DATA_0DBAF9                 ;
CODE_0DBB07:        JSR CODE_0D98AA           ;
CODE_0DBB0A:        INC $075E                 ;
CODE_0DBB0D:        LDA $075E                 ;
CODE_0DBB10:        CMP #$64                  ;
CODE_0DBB12:        BNE CODE_0DBB22           ;
CODE_0DBB14:        LDA #$00                  ;
CODE_0DBB16:        STA $075E                 ;
CODE_0DBB19:        JSL CODE_048596           ;Increase lives by one
CODE_0DBB1D:        LDA #$05                  ;
CODE_0DBB1F:        STA $1603                 ;
CODE_0DBB22:        LDA #$02                  ;
CODE_0DBB24:        STA $0149                 ;
CODE_0DBB27:        LDY DATA_0DBAFB                 ;
CODE_0DBB2A:        JSR CODE_0D98AA           ;
CODE_0DBB2D:        LDA DATA_0DBAFD                 ;
CODE_0DBB30:        JSR CODE_0D983D           ;
CODE_0DBB33:        LDY $1700                 ;
CODE_0DBB36:        LDA $16F6,y               ;
CODE_0DBB39:        BNE CODE_0DBB49           ;
CODE_0DBB3B:        LDA #$28                  ;
CODE_0DBB3D:        LDX $16F2,y               ;
CODE_0DBB40:        CPX #$02                  ;
CODE_0DBB42:        BNE CODE_0DBB46           ;
CODE_0DBB44:        LDA #$24                  ;
CODE_0DBB46:        STA $16F6,y               ;
CODE_0DBB49:        LDX $9E                   ;
CODE_0DBB4B:        RTS                       ;

CODE_0DBB4C:        LDA #$2E                  ;
CODE_0DBB4E:        STA $25                   ;
CODE_0DBB50:        LDA $85,x                 ;
CODE_0DBB52:        STA $82                   ;
CODE_0DBB54:        LDA $0226,x               ;
CODE_0DBB57:        STA $0223                 ;
CODE_0DBB5A:        LDA #$01                  ;
CODE_0DBB5C:        STA $C5                   ;
CODE_0DBB5E:        LDA $0244,x               ;
CODE_0DBB61:        SEC                       ;
CODE_0DBB62:        SBC #$08                  ;
CODE_0DBB64:        STA $0241                 ;
CODE_0DBB67:        LDA #$01                  ;
CODE_0DBB69:        STA $32                   ;
CODE_0DBB6B:        STA $19                   ;
CODE_0DBB6D:        LDA #$03                  ;
CODE_0DBB6F:        STA $0499                 ;
CODE_0DBB72:        LDA $020C                 ;
CODE_0DBB75:        CMP #$02                  ;
CODE_0DBB77:        BCS CODE_0DBB84           ;
CODE_0DBB79:        LDA $0756                 ;
CODE_0DBB7C:        CMP #$02                  ;
CODE_0DBB7E:        BCC CODE_0DBB81           ;
CODE_0DBB80:        LSR A                     ;
CODE_0DBB81:        STA $020C                 ;
CODE_0DBB84:        LDA #$30                  ;
CODE_0DBB86:        STA $0260                 ;
CODE_0DBB89:        LDA #$02                  ;
CODE_0DBB8B:        STA $1603                 ;
CODE_0DBB8E:        RTS                       ;

CODE_0DBB8F:        LDX #$09                  ;
CODE_0DBB91:        STX $9E                   ;
CODE_0DBB93:        LDA $32                   ;
CODE_0DBB95:        BNE CODE_0DBB9A           ;
CODE_0DBB97:        JMP CODE_0DBC46           ;

CODE_0DBB9A:        ASL A                     ;
CODE_0DBB9B:        BCC CODE_0DBBC9           ;
CODE_0DBB9D:        LDA $0747                 ;
CODE_0DBBA0:        BNE CODE_0DBBF2           ;
CODE_0DBBA2:        LDA $020C                 ;
CODE_0DBBA5:        BEQ CODE_0DBBC0           ;
CODE_0DBBA7:        CMP #$03                  ;
CODE_0DBBA9:        BEQ CODE_0DBBC0           ;
CODE_0DBBAB:        CMP #$04                  ;
CODE_0DBBAD:        BEQ CODE_0DBBC0           ;
CODE_0DBBAF:        CMP #$05                  ;
CODE_0DBBB1:        BEQ CODE_0DBBC0           ;
CODE_0DBBB3:        CMP #$02                  ;
CODE_0DBBB5:        BNE CODE_0DBBF2           ;
CODE_0DBBB7:        JSR CODE_0DCE92           ;
CODE_0DBBBA:        JSR CODE_0DE84D           ;
CODE_0DBBBD:        JMP CODE_0DBBF2           ;

CODE_0DBBC0:        JSR CODE_0DCE10           ;
CODE_0DBBC3:        JSR CODE_0DE68D           ;
CODE_0DBBC6:        JMP CODE_0DBBF2           ;

CODE_0DBBC9:        LDA $09                   ;
CODE_0DBBCB:        AND #$03                  ;
CODE_0DBBCD:        BNE CODE_0DBBE9           ;
CODE_0DBBCF:        DEC $0241                 ;
CODE_0DBBD2:        LDA $32                   ;
CODE_0DBBD4:        INC $32                   ;
CODE_0DBBD6:        CMP #$11                  ;
CODE_0DBBD8:        BCC CODE_0DBBE9           ;
CODE_0DBBDA:        LDA #$10                  ;
CODE_0DBBDC:        STA $5E,x                 ;
CODE_0DBBDE:        LDA #$80                  ;
CODE_0DBBE0:        STA $32                   ;
CODE_0DBBE2:        ASL A                     ;
CODE_0DBBE3:        STA $0260                 ;
CODE_0DBBE6:        ROL A                     ;
CODE_0DBBE7:        STA $47,x                 ;
CODE_0DBBE9:        LDA $32                   ;
CODE_0DBBEB:        CMP #$06                  ;
CODE_0DBBED:        BCS CODE_0DBBF2           ;
CODE_0DBBEF:        JMP CODE_0DBC46           ;

CODE_0DBBF2:        JMP CODE_0DBC34           ;

CODE_0DBBF5:        LDA $79,x                 ;
CODE_0DBBF7:        STA $E9                   ;
CODE_0DBBF9:        LDA $021A,x               ;
CODE_0DBBFC:        STA $E8                   ;
CODE_0DBBFE:        REP #$20                  ;
CODE_0DBC00:        LDA $E8                   ;
CODE_0DBC02:        CMP $42                   ;
CODE_0DBC04:        BCS CODE_0DBC17           ;
CODE_0DBC06:        CLC                       ;
CODE_0DBC07:        ADC #$000C                ;
CODE_0DBC0A:        STA $E6                   ;
CODE_0DBC0C:        SEP #$20                  ;
CODE_0DBC0E:        LDA $E6                   ;
CODE_0DBC10:        STA $021A,x               ;
CODE_0DBC13:        LDA $E7                   ;
CODE_0DBC15:        STA $79,x                 ;
CODE_0DBC17:        SEP #$20                  ;
CODE_0DBC19:        JSR CODE_0DFD4F           ;
CODE_0DBC1C:        JSR CODE_0DFDE1           ;
CODE_0DBC1F:        JSR CODE_0DE948           ;
CODE_0DBC22:        JSR CODE_0DEC50           ;
CODE_0DBC25:        JSR CODE_0DDD7D           ;
CODE_0DBC28:        JSR CODE_0DDAFC           ;
CODE_0DBC2B:        LDA $E8                   ;
CODE_0DBC2D:        STA $021A,x               ;
CODE_0DBC30:        LDA $E9                   ;
CODE_0DBC32:        STA $79,x                 ;
CODE_0DBC34:        JSR CODE_0DFD4F           ;
CODE_0DBC37:        JSR CODE_0DFDE1           ;
CODE_0DBC3A:        JSR CODE_0DE948           ;
CODE_0DBC3D:        JSR CODE_0DEC50           ;
CODE_0DBC40:        JSR CODE_0DDD7D           ;
CODE_0DBC43:        JSR CODE_0DDAFC           ;
CODE_0DBC46:        RTS                       ;

DATA_0DBC47:        db $04,$12

CODE_0DBC49:        PHA                       ;
CODE_0DBC4A:        LDA #$11                  ;
CODE_0DBC4C:        LDX $03F0                 ;
CODE_0DBC4F:        LDY $0754                 ;
CODE_0DBC52:        BNE CODE_0DBC56           ;
CODE_0DBC54:        LDA #$12                  ;
CODE_0DBC56:        STA $35,x                 ;
CODE_0DBC58:        JSR CODE_0D9061           ;
CODE_0DBC5B:        LDX $03F0                 ;
CODE_0DBC5E:        LDA $02                   ;
CODE_0DBC60:        STA $03E6,x               ;
CODE_0DBC63:        TAY                       ;
CODE_0DBC64:        LDA $06                   ;
CODE_0DBC66:        STA $03E8,x               ;
CODE_0DBC69:        LDA ($06),y               ;
CODE_0DBC6B:        JSR CODE_0DBD83           ;
CODE_0DBC6E:        STA $00                   ;
CODE_0DBC70:        LDY $0754                 ;
CODE_0DBC73:        BNE CODE_0DBC76           ;
CODE_0DBC75:        TYA                       ;
CODE_0DBC76:        BCC CODE_0DBC9D           ;
CODE_0DBC78:        LDY #$11                  ;
CODE_0DBC7A:        STY $35,x                 ;
CODE_0DBC7C:        LDA #$FD                  ;
CODE_0DBC7E:        LDY $00                   ;
CODE_0DBC80:        CPY #$54                  ;
CODE_0DBC82:        BEQ CODE_0DBC88           ;
CODE_0DBC84:        CPY #$5A                  ;
CODE_0DBC86:        BNE CODE_0DBC9D           ;
CODE_0DBC88:        LDA $06BC                 ;
CODE_0DBC8B:        BNE CODE_0DBC95           ;
CODE_0DBC8D:        LDA #$0B                  ;
CODE_0DBC8F:        STA $07AD                 ;
CODE_0DBC92:        INC $06BC                 ;
CODE_0DBC95:        LDA $07AD                 ;
CODE_0DBC98:        BNE CODE_0DBC9C           ;
CODE_0DBC9A:        LDY #$FD                  ;
CODE_0DBC9C:        TYA                       ;
CODE_0DBC9D:        STA $03EA,x               ;
CODE_0DBCA0:        JSR CODE_0DBCE2           ;
CODE_0DBCA3:        LDY $02                   ;
CODE_0DBCA5:        LDA #$2C                  ;
CODE_0DBCA7:        STA ($06),y               ;
CODE_0DBCA9:        LDA #$10                  ;
CODE_0DBCAB:        STA $078C                 ;
CODE_0DBCAE:        PLA                       ;
CODE_0DBCAF:        STA $05                   ;
CODE_0DBCB1:        LDY #$00                  ;
CODE_0DBCB3:        LDA $0714                 ;
CODE_0DBCB6:        BNE CODE_0DBCBD           ;
CODE_0DBCB8:        LDA $0754                 ;
CODE_0DBCBB:        BEQ CODE_0DBCBE           ;
CODE_0DBCBD:        INY                       ;
CODE_0DBCBE:        LDA $0237                 ;
CODE_0DBCC1:        CLC                       ;
CODE_0DBCC2:        ADC DATA_0DBC47,y               ;
CODE_0DBCC5:        AND #$F0                  ;
CODE_0DBCC7:        STA $0244,x               ;
CODE_0DBCCA:        LDY $35,x                 ;
CODE_0DBCCC:        CPY #$11                  ;
CODE_0DBCCE:        BEQ CODE_0DBCD6           ;
CODE_0DBCD0:        JSR CODE_0DBD8F           ;
CODE_0DBCD3:        JMP CODE_0DBCD9           ;

CODE_0DBCD6:        JSR CODE_0DBD01           ;
CODE_0DBCD9:        LDA $03F0                 ;
CODE_0DBCDC:        EOR #$01                  ;
CODE_0DBCDE:        STA $03F0                 ;
CODE_0DBCE1:        RTS                       ;

CODE_0DBCE2:        LDA $0219                 ;
CODE_0DBCE5:        CLC                       ;
CODE_0DBCE6:        ADC #$08                  ;
CODE_0DBCE8:        AND #$F0                  ;
CODE_0DBCEA:        STA $0226,x               ;
CODE_0DBCED:        STA $0E16                 ;
CODE_0DBCF0:        LDA $78                   ;
CODE_0DBCF2:        ADC #$00                  ;
CODE_0DBCF4:        STA $85,x                 ;
CODE_0DBCF6:        STA $03EC,x               ;
CODE_0DBCF9:        STA $0E17                 ;
CODE_0DBCFC:        LDA $BB                   ;
CODE_0DBCFE:        STA $C8,x                 ;
CODE_0DBD00:        RTS                       ;

CODE_0DBD01:        JSR CODE_0DBDB4           ;
CODE_0DBD04:        LDA #$01                  ;
CODE_0DBD06:        STA $1600                 ;
CODE_0DBD09:        LDA #$00                  ;
CODE_0DBD0B:        STA $6A,x                 ;
CODE_0DBD0D:        STA $0449,x               ;
CODE_0DBD10:        STA $A0                   ;
CODE_0DBD12:        LDA #$FE                  ;
CODE_0DBD14:        STA $AD,x                 ;
CODE_0DBD16:        LDA $05                   ;
CODE_0DBD18:        JSR CODE_0DBD83           ;
CODE_0DBD1B:        BCC CODE_0DBD6D           ;
CODE_0DBD1D:        TYA                       ;
CODE_0DBD1E:        CMP #$0D                  ;
CODE_0DBD20:        BCC CODE_0DBD24           ;
CODE_0DBD22:        SBC #$06                  ;
CODE_0DBD24:        ASL A                     ;
CODE_0DBD25:        TAY                       ;
CODE_0DBD26:        LDA PNTR_0DBD33,y               ;
CODE_0DBD29:        STA $04                   ;
CODE_0DBD2B:        LDA PNTR_0DBD33+1,y               ;
CODE_0DBD2E:        STA $05                   ;
CODE_0DBD30:        JMP ($0004)               ;

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

CODE_0DBD51:        LDA #$00                  ;
CODE_0DBD53:        BRA CODE_0DBD5F           ;

CODE_0DBD55:        LDA #$02                  ;
CODE_0DBD57:        BRA CODE_0DBD5F           ;

CODE_0DBD59:        LDA #$04                  ;
CODE_0DBD5B:        BRA CODE_0DBD5F           ;

CODE_0DBD5D:        LDA #$03                  ;
CODE_0DBD5F:        STA $020C                 ;
CODE_0DBD62:        JMP CODE_0DBB4C           ;

CODE_0DBD65:        LDX #$09                  ;
CODE_0DBD67:        LDY $03F0                 ;
CODE_0DBD6A:        JSR CODE_0DB7C9           ;
CODE_0DBD6D:        RTS                       ;

DATA_0DBD6E:        db $E8,$E9,$E7,$5C,$5D,$5E,$5F,$50
                    db $51,$52,$53,$54,$55,$56,$57,$58
                    db $59,$5A,$5B,$60,$61

CODE_0DBD83:        LDY #$14                  ;
CODE_0DBD85:        CMP DATA_0DBD6E,y               ;
CODE_0DBD88:        BEQ CODE_0DBD8E           ;
CODE_0DBD8A:        DEY                       ;
CODE_0DBD8B:        BPL CODE_0DBD85           ;
CODE_0DBD8D:        CLC                       ;
CODE_0DBD8E:        RTS                       ;

CODE_0DBD8F:        JSR CODE_0DBDB4           ;
CODE_0DBD92:        LDA #$01                  ;
CODE_0DBD94:        STA $03EE,x               ;
CODE_0DBD97:        LDA $1603                 ;
CODE_0DBD9A:        BNE CODE_0DBDA1           ;
CODE_0DBD9C:        LDA #$07                  ;
CODE_0DBD9E:        STA $1603                 ;
CODE_0DBDA1:        JSR CODE_0DBDDB           ;
CODE_0DBDA4:        LDA #$FE                  ;
CODE_0DBDA6:        STA $A0                   ;
CODE_0DBDA8:        LDA #$05                  ;
CODE_0DBDAA:        STA $014A                 ;
CODE_0DBDAD:        JSR CODE_0DBB27           ;
CODE_0DBDB0:        LDX $03F0                 ;
CODE_0DBDB3:        RTS                       ;

CODE_0DBDB4:        LDX $03F0                 ;
CODE_0DBDB7:        LDY $02                   ;
CODE_0DBDB9:        BEQ CODE_0DBDDA           ;
CODE_0DBDBB:        TYA                       ;
CODE_0DBDBC:        SEC                       ;
CODE_0DBDBD:        SBC #$10                  ;
CODE_0DBDBF:        STA $02                   ;
CODE_0DBDC1:        TAY                       ;
CODE_0DBDC2:        LDA ($06),y               ;
CODE_0DBDC4:        CMP #$EA                  ;
CODE_0DBDC6:        BNE CODE_0DBDDA           ;
CODE_0DBDC8:        LDA #$00                  ;
CODE_0DBDCA:        STA ($06),y               ;
CODE_0DBDCC:        LDA #$01                  ;
CODE_0DBDCE:        STA $1603                 ;
CODE_0DBDD1:        JSR CODE_0D9046           ;
CODE_0DBDD4:        LDX $03F0                 ;
CODE_0DBDD7:        JSR CODE_0DBA46           ;
CODE_0DBDDA:        RTS                       ;

CODE_0DBDDB:        LDA $0226,x               ;
CODE_0DBDDE:        STA $03F3,x               ;
CODE_0DBDE1:        LDA #$F0                  ;
CODE_0DBDE3:        STA $6A,x                 ;
CODE_0DBDE5:        STA $6C,x                 ;
CODE_0DBDE7:        LDA #$FA                  ;
CODE_0DBDE9:        STA $AD,x                 ;
CODE_0DBDEB:        LDA #$FC                  ;
CODE_0DBDED:        STA $AF,x                 ;
CODE_0DBDEF:        LDA #$00                  ;
CODE_0DBDF1:        STA $0449,x               ;
CODE_0DBDF4:        STA $044B,x               ;
CODE_0DBDF7:        LDA $85,x                 ;
CODE_0DBDF9:        STA $87,x                 ;
CODE_0DBDFB:        LDA $0226,x               ;
CODE_0DBDFE:        STA $0228,x               ;
CODE_0DBE01:        LDA $0244,x               ;
CODE_0DBE04:        CLC                       ;
CODE_0DBE05:        ADC #$08                  ;
CODE_0DBE07:        STA $0246,x               ;
CODE_0DBE0A:        LDA #$FA                  ;
CODE_0DBE0C:        STA $AD,x                 ;
CODE_0DBE0E:        RTS                       ;

CODE_0DBE0F:        LDA $35,x                 ;
CODE_0DBE11:        BEQ CODE_0DBE76           ;
CODE_0DBE13:        AND #$0F                  ;
CODE_0DBE15:        PHA                       ;
CODE_0DBE16:        TAY                       ;
CODE_0DBE17:        TXA                       ;
CODE_0DBE18:        CLC                       ;
CODE_0DBE19:        ADC #$0D                  ;
CODE_0DBE1B:        TAX                       ;
CODE_0DBE1C:        DEY                       ;
CODE_0DBE1D:        BEQ CODE_0DBE55           ;
CODE_0DBE1F:        JSR CODE_0DBF46           ;
CODE_0DBE22:        JSR CODE_0DBEAD           ;
CODE_0DBE25:        TXA                       ;
CODE_0DBE26:        CLC                       ;
CODE_0DBE27:        ADC #$02                  ;
CODE_0DBE29:        TAX                       ;
CODE_0DBE2A:        JSR CODE_0DBF46           ;
CODE_0DBE2D:        JSR CODE_0DBEAD           ;
CODE_0DBE30:        LDX $9E                   ;
CODE_0DBE32:        JSR CODE_0DFD56           ;
CODE_0DBE35:        JSR CODE_0DFDE7           ;
CODE_0DBE38:        JSR CODE_0DF39C           ;
CODE_0DBE3B:        PLA                       ;
CODE_0DBE3C:        LDY $C8,x                 ;
CODE_0DBE3E:        BEQ CODE_0DBE76           ;
CODE_0DBE40:        PHA                       ;
CODE_0DBE41:        LDA #$F0                  ;
CODE_0DBE43:        CMP $0246,x               ;
CODE_0DBE46:        BCS CODE_0DBE4B           ;
CODE_0DBE48:        STA $0246,x               ;
CODE_0DBE4B:        LDA $0244,x               ;
CODE_0DBE4E:        CMP #$F0                  ;
CODE_0DBE50:        PLA                       ;
CODE_0DBE51:        BCC CODE_0DBE76           ;
CODE_0DBE53:        BCS CODE_0DBE74           ;
CODE_0DBE55:        JSR CODE_0DBF46           ;
CODE_0DBE58:        LDX $9E                   ;
CODE_0DBE5A:        JSR CODE_0DFD56           ;
CODE_0DBE5D:        JSR CODE_0DFDE7           ;
CODE_0DBE60:        JSR CODE_0DF348           ;
CODE_0DBE63:        PLA                       ;
CODE_0DBE64:        STA $35,x                 ;
CODE_0DBE66:        LDA $0244,x               ;
CODE_0DBE69:        AND #$0F                  ;
CODE_0DBE6B:        CMP #$05                  ;
CODE_0DBE6D:        BCS CODE_0DBE76           ;
CODE_0DBE6F:        LDA #$01                  ;
CODE_0DBE71:        STA $03EE,x               ;
CODE_0DBE74:        STZ $35,x                 ;
CODE_0DBE76:        RTS                       ;

CODE_0DBE77:        LDX #$01                  ;
CODE_0DBE79:        STX $9E                   ;
CODE_0DBE7B:        LDA $03EE,x               ;
CODE_0DBE7E:        BEQ CODE_0DBE9C           ;
CODE_0DBE80:        LDA $03E8,x               ;
CODE_0DBE83:        STA $06                   ;
CODE_0DBE85:        LDA #$05                  ;
CODE_0DBE87:        STA $07                   ;
CODE_0DBE89:        LDA $03E6,x               ;
CODE_0DBE8C:        STA $02                   ;
CODE_0DBE8E:        TAY                       ;
CODE_0DBE8F:        LDA $03EA,x               ;
CODE_0DBE92:        STA ($06),y               ;
CODE_0DBE94:        JSR CODE_0D9057           ;
CODE_0DBE97:        LDA #$00                  ;
CODE_0DBE99:        STA $03EE,x               ;
CODE_0DBE9C:        DEX                       ;
CODE_0DBE9D:        BPL CODE_0DBE79           ;
CODE_0DBE9F:        RTS                       ;

CODE_0DBEA0:        INX                       ;
CODE_0DBEA1:        JSR CODE_0DBEAD           ;
CODE_0DBEA4:        LDX $9E                   ;
CODE_0DBEA6:        RTS                       ;

CODE_0DBEA7:        LDA $070E                 ;
CODE_0DBEAA:        BNE CODE_0DBEEF           ;
CODE_0DBEAC:        TAX                       ;
CODE_0DBEAD:        LDA $5D,x                 ;
CODE_0DBEAF:        ASL A                     ;
CODE_0DBEB0:        ASL A                     ;
CODE_0DBEB1:        ASL A                     ;
CODE_0DBEB2:        ASL A                     ;
CODE_0DBEB3:        STA $01                   ;
CODE_0DBEB5:        LDA $5D,x                 ;
CODE_0DBEB7:        LSR A                     ;
CODE_0DBEB8:        LSR A                     ;
CODE_0DBEB9:        LSR A                     ;
CODE_0DBEBA:        LSR A                     ;
CODE_0DBEBB:        CMP #$08                  ;
CODE_0DBEBD:        BCC CODE_0DBEC1           ;
CODE_0DBEBF:        ORA #$F0                  ;
CODE_0DBEC1:        STA $00                   ;
CODE_0DBEC3:        STA $0EB6                 ;
CODE_0DBEC6:        LDY #$00                  ;
CODE_0DBEC8:        CMP #$00                  ;
CODE_0DBECA:        BPL CODE_0DBECD           ;
CODE_0DBECC:        DEY                       ;
CODE_0DBECD:        STY $02                   ;
CODE_0DBECF:        LDA $0401,x               ;
CODE_0DBED2:        CLC                       ;
CODE_0DBED3:        ADC $01                   ;
CODE_0DBED5:        STA $0401,x               ;
CODE_0DBED8:        LDA #$00                  ;
CODE_0DBEDA:        ROL A                     ;
CODE_0DBEDB:        PHA                       ;
CODE_0DBEDC:        ROR A                     ;
CODE_0DBEDD:        LDA $0219,x               ;
CODE_0DBEE0:        ADC $00                   ;
CODE_0DBEE2:        STA $0219,x               ;
CODE_0DBEE5:        LDA $78,x                 ;
CODE_0DBEE7:        ADC $02                   ;
CODE_0DBEE9:        STA $78,x                 ;
CODE_0DBEEB:        PLA                       ;
CODE_0DBEEC:        CLC                       ;
CODE_0DBEED:        ADC $00                   ;
CODE_0DBEEF:        RTS                       ;

CODE_0DBEF0:        LDX #$00                  ;
CODE_0DBEF2:        LDA $0747                 ;
CODE_0DBEF5:        BNE CODE_0DBEFC           ;
CODE_0DBEF7:        LDA $070E                 ;
CODE_0DBEFA:        BNE CODE_0DBEEF           ;
CODE_0DBEFC:        LDA $0709                 ;
CODE_0DBEFF:        STA $00                   ;
CODE_0DBF01:        LDA #$04                  ;
CODE_0DBF03:        JMP CODE_0DBF4F           ;

CODE_0DBF06:        LDY #$3D                  ;
CODE_0DBF08:        LDA $29,x                 ;
CODE_0DBF0A:        CMP #$05                  ;
CODE_0DBF0C:        BNE CODE_0DBF35           ;
CODE_0DBF0E:        LDY #$20                  ;
CODE_0DBF10:        BRA CODE_0DBF35           ;

CODE_0DBF12:        LDY #$00                  ;
CODE_0DBF14:        BRA CODE_0DBF18           ;

CODE_0DBF16:        LDY #$01                  ;
CODE_0DBF18:        INX                       ;
CODE_0DBF19:        LDA #$03                  ;
CODE_0DBF1B:        STA $00                   ;
CODE_0DBF1D:        LDA #$06                  ;
CODE_0DBF1F:        STA $01                   ;
CODE_0DBF21:        LDA #$02                  ;
CODE_0DBF23:        STA $02                   ;
CODE_0DBF25:        TYA                       ;
CODE_0DBF26:        JMP CODE_0DBF74           ;

CODE_0DBF29:        LDY #$7F                  ;
CODE_0DBF2B:        BNE CODE_0DBF2F           ;
CODE_0DBF2D:        LDY #$0F                  ;
CODE_0DBF2F:        LDA #$02                  ;
CODE_0DBF31:        BNE CODE_0DBF37           ;
CODE_0DBF33:        LDY #$1C                  ;
CODE_0DBF35:        LDA #$03                  ;
CODE_0DBF37:        STY $00                   ;
CODE_0DBF39:        INX                       ;
CODE_0DBF3A:        JSR CODE_0DBF4F           ;
CODE_0DBF3D:        LDX $9E                   ;
CODE_0DBF3F:        RTS                       ;

DATA_0DBF40:        db $06,$08

CODE_0DBF42:        LDY #$00                  ;
CODE_0DBF44:        BRA CODE_0DBF46           ;

CODE_0DBF46:        LDY #$01                  ;
CODE_0DBF48:        LDA #$50                  ;
CODE_0DBF4A:        STA $00                   ;
CODE_0DBF4C:        LDA DATA_0DBF40,y               ;
CODE_0DBF4F:        STA $02                   ;
CODE_0DBF51:        LDA #$00                  ;
CODE_0DBF53:        JMP CODE_0DBF7E           ;

CODE_0DBF56:        LDA #$00                  ;
CODE_0DBF58:        BRA CODE_0DBF5C           ;

CODE_0DBF5A:        LDA #$01                  ;
CODE_0DBF5C:        PHA                       ;
CODE_0DBF5D:        LDY $1C,x                 ;
CODE_0DBF5F:        INX                       ;
CODE_0DBF60:        LDA #$05                  ;
CODE_0DBF62:        CPY #$29                  ;
CODE_0DBF64:        BNE CODE_0DBF68           ;
CODE_0DBF66:        LDA #$09                  ;
CODE_0DBF68:        STA $00                   ;
CODE_0DBF6A:        LDA #$0A                  ;
CODE_0DBF6C:        STA $01                   ;
CODE_0DBF6E:        LDA #$03                  ;
CODE_0DBF70:        STA $02                   ;
CODE_0DBF72:        PLA                       ;
CODE_0DBF73:        TAY                       ;
CODE_0DBF74:        JSR CODE_0DBF7E           ;
CODE_0DBF77:        LDX $9E                   ;
CODE_0DBF79:        RTS                       ;

CODE_0DBF7A:        JSR CODE_0DBF7E           ;
CODE_0DBF7D:        RTL                       ;

CODE_0DBF7E:        PHA                       ;
CODE_0DBF7F:        LDA $041C,x               ;
CODE_0DBF82:        CLC                       ;
CODE_0DBF83:        ADC $043C,x               ;
CODE_0DBF86:        STA $041C,x               ;
CODE_0DBF89:        LDY #$00                  ;
CODE_0DBF8B:        LDA $A0,x                 ;
CODE_0DBF8D:        BPL CODE_0DBF90           ;
CODE_0DBF8F:        DEY                       ;
CODE_0DBF90:        STY $07                   ;
CODE_0DBF92:        ADC $0237,x               ;
CODE_0DBF95:        STA $0237,x               ;
CODE_0DBF98:        LDA $BB,x                 ;
CODE_0DBF9A:        ADC $07                   ;
CODE_0DBF9C:        STA $BB,x                 ;
CODE_0DBF9E:        LDA $043C,x               ;
CODE_0DBFA1:        CLC                       ;
CODE_0DBFA2:        ADC $00                   ;
CODE_0DBFA4:        STA $043C,x               ;
CODE_0DBFA7:        LDA $A0,x                 ;
CODE_0DBFA9:        ADC #$00                  ;
CODE_0DBFAB:        STA $A0,x                 ;
CODE_0DBFAD:        CMP $02                   ;
CODE_0DBFAF:        BMI CODE_0DBFBF           ;
CODE_0DBFB1:        LDA $043C,x               ;
CODE_0DBFB4:        CMP #$80                  ;
CODE_0DBFB6:        BCC CODE_0DBFBF           ;
CODE_0DBFB8:        LDA $02                   ;
CODE_0DBFBA:        STA $A0,x                 ;
CODE_0DBFBC:        STZ $043C,x               ;
CODE_0DBFBF:        PLA                       ;
CODE_0DBFC0:        BEQ CODE_0DBFEC           ;
CODE_0DBFC2:        LDA $02                   ;
CODE_0DBFC4:        EOR #$FF                  ;
CODE_0DBFC6:        INC A                     ;
CODE_0DBFC7:        STA $07                   ;
CODE_0DBFC9:        LDA $043C,x               ;
CODE_0DBFCC:        SEC                       ;
CODE_0DBFCD:        SBC $01                   ;
CODE_0DBFCF:        STA $043C,x               ;
CODE_0DBFD2:        LDA $A0,x                 ;
CODE_0DBFD4:        SBC #$00                  ;
CODE_0DBFD6:        STA $A0,x                 ;
CODE_0DBFD8:        CMP $07                   ;
CODE_0DBFDA:        BPL CODE_0DBFEC           ;
CODE_0DBFDC:        LDA $043C,x               ;
CODE_0DBFDF:        CMP #$80                  ;
CODE_0DBFE1:        BCS CODE_0DBFEC           ;
CODE_0DBFE3:        LDA $07                   ;
CODE_0DBFE5:        STA $A0,x                 ;
CODE_0DBFE7:        LDA #$FF                  ;
CODE_0DBFE9:        STA $043C,x               ;
CODE_0DBFEC:        RTS                       ;

CODE_0DBFED:        LDA $0E9D,x               ;
CODE_0DBFF0:        BEQ CODE_0DC054           ;
CODE_0DBFF2:        INC $0EA2,x               ;
CODE_0DBFF5:        LDA $0EA2,x               ;
CODE_0DBFF8:        LSR A                     ;
CODE_0DBFF9:        LSR A                     ;
CODE_0DBFFA:        LSR A                     ;
CODE_0DBFFB:        CMP #$03                  ;
CODE_0DBFFD:        BEQ CODE_0DC055           ;
CODE_0DBFFF:        ASL A                     ;
CODE_0DC000:        CLC                       ;
CODE_0DC001:        ADC #$40                  ;
CODE_0DC003:        STA $E4                   ;
CODE_0DC005:        LDA $0EAC,x               ;
CODE_0DC008:        STA $E5                   ;
CODE_0DC00A:        LDA $0EA7,x               ;
CODE_0DC00D:        STA $E6                   ;
CODE_0DC00F:        REP #$20                  ;
CODE_0DC011:        LDA $E5                   ;
CODE_0DC013:        SEC                       ;
CODE_0DC014:        SBC $42                   ;
CODE_0DC016:        PHA                       ;
CODE_0DC017:        LDA $0EB5                 ;
CODE_0DC01A:        BMI CODE_0DC023           ;
CODE_0DC01C:        PLA                       ;
CODE_0DC01D:        CLC                       ;
CODE_0DC01E:        ADC #$000C                ;
CODE_0DC021:        BRA CODE_0DC028           ;

CODE_0DC023:        PLA                       ;
CODE_0DC024:        SEC                       ;
CODE_0DC025:        SBC #$000C                ;
CODE_0DC028:        STA $E5                   ;
CODE_0DC02A:        SEP #$20                  ;
CODE_0DC02C:        PHY                       ;
CODE_0DC02D:        LDY $0B46,x               ;
CODE_0DC030:        LDA $E5                   ;
CODE_0DC032:        STA $0900,y               ;
CODE_0DC035:        LDA $0EB1,x               ;
CODE_0DC038:        STA $0901,y               ;
CODE_0DC03B:        LDA $E4                   ;
CODE_0DC03D:        STA $0902,y               ;
CODE_0DC040:        LDA #$2D                  ;
CODE_0DC042:        STA $0903,y               ;
CODE_0DC045:        LDA #$02                  ;
CODE_0DC047:        STA $0D00,y               ;
CODE_0DC04A:        LDA $E6                   ;
CODE_0DC04C:        BEQ CODE_0DC053           ;
CODE_0DC04E:        LDA #$03                  ;
CODE_0DC050:        STA $0D00,y               ;
CODE_0DC053:        PLY                       ;
CODE_0DC054:        RTS                       ;

CODE_0DC055:        STZ $0E9D,x               ;
CODE_0DC058:        TXA                       ;
CODE_0DC059:        ASL A                     ;
CODE_0DC05A:        ASL A                     ;
CODE_0DC05B:        ASL A                     ;
CODE_0DC05C:        STA $E8                   ;
CODE_0DC05E:        ASL A                     ;
CODE_0DC05F:        CLC                       ;
CODE_0DC060:        ADC $E8                   ;
CODE_0DC062:        PHX                       ;
CODE_0DC063:        TAX                       ;
CODE_0DC064:        LDA #$F0                  ;
CODE_0DC066:        STA $0901,x               ;
CODE_0DC069:        STZ $0D00,x               ;
CODE_0DC06C:        PLX                       ;
CODE_0DC06D:        RTS                       ;

CODE_0DC06E:        STA $0E9D,x               ;
CODE_0DC071:        STZ $0EA2,x               ;
CODE_0DC074:        LDA $021A,x               ;
CODE_0DC077:        STA $0EAC,x               ;
CODE_0DC07A:        LDA $79,x                 ;
CODE_0DC07C:        STA $0EA7,x               ;
CODE_0DC07F:        LDA $0238,x               ;
CODE_0DC082:        CLC                       ;
CODE_0DC083:        ADC #$08                  ;
CODE_0DC085:        STA $0EB1,x               ;
CODE_0DC088:        RTS                       ;

CODE_0DC089:        LDA $0E7F                 ;
CODE_0DC08C:        LSR A                     ;
CODE_0DC08D:        BCC CODE_0DC0D4           ;
CODE_0DC08F:        LDA $1201                 ;
CODE_0DC092:        BMI CODE_0DC0CA           ;
CODE_0DC094:        DEC $1201                 ;
CODE_0DC097:        BNE CODE_0DC100           ;
CODE_0DC099:        LDA #$80                  ;
CODE_0DC09B:        STA $2100                 ;
CODE_0DC09E:        STA $1201                 ;
CODE_0DC0A1:        STZ $420C                 ;
CODE_0DC0A4:        STZ $1203                 ;
CODE_0DC0A7:        STZ $0B75                 ;
CODE_0DC0AA:        STZ $1680                 ;
CODE_0DC0AD:        LDA $701FF2               ;
CODE_0DC0B1:        BEQ CODE_0DC0C0           ;
CODE_0DC0B3:        LDA $0EC8                 ;
CODE_0DC0B6:        BNE CODE_0DC0BC           ;
CODE_0DC0B8:        JML CODE_008139           ;

CODE_0DC0BC:        JML CODE_0080DE           ;

CODE_0DC0C0:        JSL CODE_048000           ;
CODE_0DC0C4:        JSR CODE_0DC124           ;
CODE_0DC0C7:        JSR CODE_0DC14F           ;
CODE_0DC0CA:        STZ $0E7F                 ;
CODE_0DC0CD:        LDA #$01                  ;
CODE_0DC0CF:        STA $0774                 ;
CODE_0DC0D2:        BRA CODE_0DC100           ;

CODE_0DC0D4:        LDA $0E66                 ;
CODE_0DC0D7:        BNE CODE_0DC0E4           ;
CODE_0DC0D9:        LDA $0E                   ;
CODE_0DC0DB:        BNE CODE_0DC0E4           ;
CODE_0DC0DD:        LDA #$01                  ;
CODE_0DC0DF:        STA $0E                   ;
CODE_0DC0E1:        JSR CODE_0DAB99           ;
CODE_0DC0E4:        STZ $0E67                 ;
CODE_0DC0E7:        LDA $1201                 ;
CODE_0DC0EA:        CMP #$0F                  ;
CODE_0DC0EC:        BEQ CODE_0DC0F8           ;
CODE_0DC0EE:        INC $1201                 ;
CODE_0DC0F1:        LDA $1201                 ;
CODE_0DC0F4:        CMP #$0F                  ;
CODE_0DC0F6:        BNE CODE_0DC100           ;
CODE_0DC0F8:        STZ $0E7F                 ;
CODE_0DC0FB:        STZ $0774                 ;
CODE_0DC0FE:        STZ $0E                   ;
CODE_0DC100:        LDA $0E4F                 ;
CODE_0DC103:        BEQ CODE_0DC123           ;
CODE_0DC105:        JSR CODE_0DC124           ;
CODE_0DC108:        LDA $1201                 ;
CODE_0DC10B:        EOR #$0F                  ;
CODE_0DC10D:        ASL A                     ;
CODE_0DC10E:        ASL A                     ;
CODE_0DC10F:        ASL A                     ;
CODE_0DC110:        ASL A                     ;
CODE_0DC111:        ORA #$0F                  ;
CODE_0DC113:        STA $0E7E                 ;
CODE_0DC116:        JSR CODE_0DC13D           ;
CODE_0DC119:        LDA $1201                 ;
CODE_0DC11C:        CMP #$0F                  ;
CODE_0DC11E:        BNE CODE_0DC123           ;
CODE_0DC120:        STZ $0E4F                 ;
CODE_0DC123:        RTS                       ;

CODE_0DC124:        PHX                       ;
CODE_0DC125:        LDX #$00                  ;
CODE_0DC127:        LDA #$F0                  ;
CODE_0DC129:        STA $0801,x               ;
CODE_0DC12C:        STA $0901,x               ;
CODE_0DC12F:        STZ $0C00,x               ;
CODE_0DC132:        STZ $0D00,x               ;
CODE_0DC135:        INX                       ;
CODE_0DC136:        INX                       ;
CODE_0DC137:        INX                       ;
CODE_0DC138:        INX                       ;
CODE_0DC139:        BNE CODE_0DC129           ;
CODE_0DC13B:        PLX                       ;
CODE_0DC13C:        RTS                       ;

CODE_0DC13D:        PHY                       ;
CODE_0DC13E:        LDY #$D0                  ;
CODE_0DC140:        LDA #$F0                  ;
CODE_0DC142:        STA $0801,y               ;
CODE_0DC145:        INY                       ;
CODE_0DC146:        INY                       ;
CODE_0DC147:        INY                       ;
CODE_0DC148:        INY                       ;
CODE_0DC149:        CPY #$F0                  ;
CODE_0DC14B:        BNE CODE_0DC142           ;
CODE_0DC14D:        PLY                       ;
CODE_0DC14E:        RTS                       ;

CODE_0DC14F:        JSL CODE_00D52E           ;
CODE_0DC153:        STZ $0BA5                 ;
CODE_0DC156:        STZ $0F06                 ;
CODE_0DC159:        STZ $0EC4                 ;
CODE_0DC15C:        LDA $075F                 ;
CODE_0DC15F:        CMP #$07                  ;
CODE_0DC161:        BEQ CODE_0DC167           ;
CODE_0DC163:        CMP #$0C                  ;
CODE_0DC165:        BNE CODE_0DC16C           ;
CODE_0DC167:        LDA #$01                  ;
CODE_0DC169:        STA $0EC4                 ;
CODE_0DC16C:        STZ $0ED1                 ;
CODE_0DC16F:        STZ $0E40                 ;
CODE_0DC172:        STZ $0E41                 ;
CODE_0DC175:        STZ $0E42                 ;
CODE_0DC178:        STZ $0EDC                 ;
CODE_0DC17B:        STZ $0ECF                 ;
CODE_0DC17E:        LDA #$01                  ;
CODE_0DC180:        STA $0ECE                 ;
CODE_0DC183:        LDA $0E66                 ;
CODE_0DC186:        BNE CODE_0DC196           ;
CODE_0DC188:        LDA $0237                 ;
CODE_0DC18B:        STA $03B8                 ;
CODE_0DC18E:        LDA $0219                 ;
CODE_0DC191:        STA $03AD                 ;
CODE_0DC194:        BRA CODE_0DC199           ;

CODE_0DC196:        STZ $0E66                 ;
CODE_0DC199:        STZ $0E                   ;
CODE_0DC19B:        RTS                       ;

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

CODE_0DC250:        BIT $10,x                 ;
CODE_0DC252:        BMI CODE_0DC267           ;
CODE_0DC254:        LDA $10,x                 ;
CODE_0DC256:        BEQ CODE_0DC25B           ;
CODE_0DC258:        JMP CODE_0DCBB0           ;

CODE_0DC25B:        LDA $071F                 ;
CODE_0DC25E:        AND #$07                  ;
CODE_0DC260:        CMP #$07                  ;
CODE_0DC262:        BEQ CODE_0DC273           ;
CODE_0DC264:        JMP CODE_0DC2E9           ;

CODE_0DC267:        LDA $10,x                 ;
CODE_0DC269:        AND #$0F                  ;
CODE_0DC26B:        TAY                       ;
CODE_0DC26C:        LDA $0010,y               ;
CODE_0DC26F:        BNE CODE_0DC273           ;
CODE_0DC271:        STA $10,x                 ;
CODE_0DC273:        RTS                       ;

DATA_0DC274:        db $02,$02,$02,$02,$05,$05,$05,$05 ;
                    db $06,$07,$07,$04 ;

DATA_0DC280:        db $03,$05,$08,$09,$03,$06,$07,$0A ;
                    db $05,$05,$0B,$05 ;

DATA_0DC28C:        db $B0,$B0,$40,$30,$B0,$30,$B0,$B0 ;
                    db $F0,$F0,$B0,$F0 ;

DATA_0DC298:        db $02,$02,$02,$02,$02,$02,$02,$02 ;
                    db $01,$01,$01,$01 ;

CODE_0DC2A4:        LDA $78                   ;
CODE_0DC2A6:        SEC                       ;
CODE_0DC2A7:        SBC #$04                  ;
CODE_0DC2A9:        STA $78                   ;
CODE_0DC2AB:        LDA $0725                 ;
CODE_0DC2AE:        SEC                       ;
CODE_0DC2AF:        SBC #$04                  ;
CODE_0DC2B1:        STA $0725                 ;
CODE_0DC2B4:        LDA $071A                 ;
CODE_0DC2B7:        SEC                       ;
CODE_0DC2B8:        SBC #$04                  ;
CODE_0DC2BA:        STA $071A                 ;
CODE_0DC2BD:        LDA $071B                 ;
CODE_0DC2C0:        SEC                       ;
CODE_0DC2C1:        SBC #$04                  ;
CODE_0DC2C3:        STA $071B                 ;
CODE_0DC2C6:        LDA $072A                 ;
CODE_0DC2C9:        SEC                       ;
CODE_0DC2CA:        SBC #$04                  ;
CODE_0DC2CC:        STA $072A                 ;
CODE_0DC2CF:        STZ $073B                 ;
CODE_0DC2D2:        STZ $072B                 ;
CODE_0DC2D5:        STZ $0739                 ;
CODE_0DC2D8:        STZ $073A                 ;
CODE_0DC2DB:        PHX                       ;
CODE_0DC2DC:        TYX                       ;
CODE_0DC2DD:        LDA.l DATA_0EC4E0,x             ;
CODE_0DC2E1:        STA $072C                 ;
CODE_0DC2E4:        STZ $0EDB                 ;
CODE_0DC2E7:        PLX                       ;
CODE_0DC2E8:        RTS                       ;

CODE_0DC2E9:        LDA $0745                 ;
CODE_0DC2EC:        BEQ CODE_0DC354           ;
CODE_0DC2EE:        LDA $0726                 ;
CODE_0DC2F1:        BNE CODE_0DC354           ;
CODE_0DC2F3:        LDY #$0C                  ;
CODE_0DC2F5:        DEY                       ;
CODE_0DC2F6:        BMI CODE_0DC354           ;
CODE_0DC2F8:        LDA $075F                 ;
CODE_0DC2FB:        CMP DATA_0DC274,y               ;
CODE_0DC2FE:        BNE CODE_0DC2F5           ;
CODE_0DC300:        LDA $0725                 ;
CODE_0DC303:        CMP DATA_0DC280,y               ;
CODE_0DC306:        BNE CODE_0DC2F5           ;
CODE_0DC308:        LDA $0237                 ;
CODE_0DC30B:        CMP DATA_0DC28C,y               ;
CODE_0DC30E:        BNE CODE_0DC325           ;
CODE_0DC310:        LDA $28                   ;
CODE_0DC312:        CMP #$00                  ;
CODE_0DC314:        BNE CODE_0DC325           ;
CODE_0DC316:        INC $06D9                 ;
CODE_0DC319:        LDA $0EDB                 ;
CODE_0DC31C:        BNE CODE_0DC332           ;
CODE_0DC31E:        LDA #$29                  ;
CODE_0DC320:        STA $1603                 ;
CODE_0DC323:        BRA CODE_0DC332           ;

CODE_0DC325:        LDA $0EDB                 ;
CODE_0DC328:        BNE CODE_0DC332           ;
CODE_0DC32A:        LDA #$2A                  ;
CODE_0DC32C:        STA $1603                 ;
CODE_0DC32F:        STA $0EDB                 ;
CODE_0DC332:        INC $06DA                 ;
CODE_0DC335:        LDA $06DA                 ;
CODE_0DC338:        CMP DATA_0DC298,y               ;
CODE_0DC33B:        BNE CODE_0DC351           ;
CODE_0DC33D:        LDA $06D9                 ;
CODE_0DC340:        CMP DATA_0DC298,y               ;
CODE_0DC343:        BEQ CODE_0DC34B           ;
CODE_0DC345:        JSR CODE_0DC2A4           ;
CODE_0DC348:        JSR CODE_0DD462           ;
CODE_0DC34B:        STZ $06DA                 ;
CODE_0DC34E:        STZ $06D9                 ;
CODE_0DC351:        STZ $0745                 ;
CODE_0DC354:        LDA $06CD                 ;
CODE_0DC357:        BEQ CODE_0DC367           ;
CODE_0DC359:        STA $1C,x                 ;
CODE_0DC35B:        LDA #$01                  ;
CODE_0DC35D:        STA $10,x                 ;
CODE_0DC35F:        STZ $29,x                 ;
CODE_0DC361:        STZ $06CD                 ;
CODE_0DC364:        JMP CODE_0DC461           ;

CODE_0DC367:        LDY $0739                 ;
CODE_0DC36A:        LDA [$FD],y               ;
CODE_0DC36C:        CMP #$FF                  ;
CODE_0DC36E:        BNE CODE_0DC373           ;
CODE_0DC370:        JMP CODE_0DC44D           ;

CODE_0DC373:        AND #$0F                  ;
CODE_0DC375:        CMP #$0E                  ;
CODE_0DC377:        BEQ CODE_0DC387           ;
CODE_0DC379:        CPX #$05                  ;
CODE_0DC37B:        BCC CODE_0DC387           ;
CODE_0DC37D:        INY                       ;
CODE_0DC37E:        LDA [$FD],y               ;
CODE_0DC380:        AND #$3F                  ;
CODE_0DC382:        CMP #$2E                  ;
CODE_0DC384:        BEQ CODE_0DC387           ;
CODE_0DC386:        RTS                       ;

CODE_0DC387:        LDA $071D                 ;
CODE_0DC38A:        CLC                       ;
CODE_0DC38B:        ADC #$30                  ;
CODE_0DC38D:        AND #$F0                  ;
CODE_0DC38F:        STA $07                   ;
CODE_0DC391:        LDA $071B                 ;
CODE_0DC394:        ADC #$00                  ;
CODE_0DC396:        STA $06                   ;
CODE_0DC398:        LDY $0739                 ;
CODE_0DC39B:        INY                       ;
CODE_0DC39C:        LDA [$FD],y               ;
CODE_0DC39E:        ASL A                     ;
CODE_0DC39F:        BCC CODE_0DC3AC           ;
CODE_0DC3A1:        LDA $073B                 ;
CODE_0DC3A4:        BNE CODE_0DC3AC           ;
CODE_0DC3A6:        INC $073B                 ;
CODE_0DC3A9:        INC $073A                 ;
CODE_0DC3AC:        DEY                       ;
CODE_0DC3AD:        LDA [$FD],y               ;
CODE_0DC3AF:        AND #$0F                  ;
CODE_0DC3B1:        CMP #$0F                  ;
CODE_0DC3B3:        BNE CODE_0DC3CE           ;
CODE_0DC3B5:        LDA $073B                 ;
CODE_0DC3B8:        BNE CODE_0DC3CE           ;
CODE_0DC3BA:        INY                       ;
CODE_0DC3BB:        LDA [$FD],y               ;
CODE_0DC3BD:        AND #$3F                  ;
CODE_0DC3BF:        STA $073A                 ;
CODE_0DC3C2:        INC $0739                 ;
CODE_0DC3C5:        INC $0739                 ;
CODE_0DC3C8:        INC $073B                 ;
CODE_0DC3CB:        JMP CODE_0DC2E9           ;

CODE_0DC3CE:        LDA $073A                 ;
CODE_0DC3D1:        STA $79,x                 ;
CODE_0DC3D3:        LDA [$FD],y               ;
CODE_0DC3D5:        AND #$F0                  ;
CODE_0DC3D7:        STA $021A,x               ;
CODE_0DC3DA:        CMP $071D                 ;
CODE_0DC3DD:        LDA $79,x                 ;
CODE_0DC3DF:        SBC $071B                 ;
CODE_0DC3E2:        BCS CODE_0DC3EF           ;
CODE_0DC3E4:        LDA [$FD],y               ;
CODE_0DC3E6:        AND #$0F                  ;
CODE_0DC3E8:        CMP #$0E                  ;
CODE_0DC3EA:        BEQ CODE_0DC46A           ;
CODE_0DC3EC:        JMP CODE_0DC48D           ;

CODE_0DC3EF:        LDA $07                   ;
CODE_0DC3F1:        CMP $021A,x               ;
CODE_0DC3F4:        LDA $06                   ;
CODE_0DC3F6:        SBC $79,x                 ;
CODE_0DC3F8:        BCC CODE_0DC44D           ;
CODE_0DC3FA:        LDA #$01                  ;
CODE_0DC3FC:        STA $BC,x                 ;
CODE_0DC3FE:        LDA [$FD],y               ;
CODE_0DC400:        ASL A                     ;
CODE_0DC401:        ASL A                     ;
CODE_0DC402:        ASL A                     ;
CODE_0DC403:        ASL A                     ;
CODE_0DC404:        STA $0238,x               ;
CODE_0DC407:        CMP #$E0                  ;
CODE_0DC409:        BEQ CODE_0DC46A           ;
CODE_0DC40B:        INY                       ;
CODE_0DC40C:        LDA [$FD],y               ;
CODE_0DC40E:        AND #$40                  ;
CODE_0DC410:        BEQ CODE_0DC41A           ;
CODE_0DC412:        LDA $06CC                 ;
CODE_0DC415:        BNE CODE_0DC41A           ;
CODE_0DC417:        JMP CODE_0DC49B           ;

CODE_0DC41A:        LDA [$FD],y               ;
CODE_0DC41C:        AND #$3F                  ;
CODE_0DC41E:        CMP #$37                  ;
CODE_0DC420:        BCC CODE_0DC426           ;
CODE_0DC422:        CMP #$3F                  ;
CODE_0DC424:        BCC CODE_0DC467           ;
CODE_0DC426:        CMP #$06                  ;
CODE_0DC428:        BNE CODE_0DC431           ;
CODE_0DC42A:        LDY $076A                 ;
CODE_0DC42D:        BEQ CODE_0DC431           ;
CODE_0DC42F:        LDA #$02                  ;
CODE_0DC431:        CMP #$2D                  ;
CODE_0DC433:        BNE CODE_0DC438           ;
CODE_0DC435:        JSR CODE_0DDB63           ;
CODE_0DC438:        CMP #$35                  ;
CODE_0DC43A:        BNE CODE_0DC43F           ;
CODE_0DC43C:        STZ $0F4A                 ;
CODE_0DC43F:        STA $1C,x                 ;
CODE_0DC441:        LDA #$01                  ;
CODE_0DC443:        STA $10,x                 ;
CODE_0DC445:        JSR CODE_0DC461           ;
CODE_0DC448:        LDA $10,x                 ;
CODE_0DC44A:        BNE CODE_0DC49B           ;
CODE_0DC44C:        RTS                       ;

CODE_0DC44D:        LDA $06CB                 ;
CODE_0DC450:        BNE CODE_0DC45B           ;
CODE_0DC452:        LDA $0398                 ;
CODE_0DC455:        CMP #$01                  ;
CODE_0DC457:        BNE CODE_0DC466           ;
CODE_0DC459:        LDA #$00                  ;
CODE_0DC45B:        CPX #$09                  ;
CODE_0DC45D:        BEQ CODE_0DC461           ;
CODE_0DC45F:        STA $1C,x                 ;
CODE_0DC461:        STZ $29,x                 ;
CODE_0DC463:        JSR CODE_0DC4B9           ;
CODE_0DC466:        RTS                       ;

CODE_0DC467:        JMP CODE_0DCA0B           ;

CODE_0DC46A:        INY                       ;
CODE_0DC46B:        INY                       ;
CODE_0DC46C:        LDA $075F                 ;
CODE_0DC46F:        CMP #$08                  ;
CODE_0DC471:        BEQ CODE_0DC47D           ;
CODE_0DC473:        LDA [$FD],y               ;
CODE_0DC475:        JSR CODE_0DC4A7           ;
CODE_0DC478:        CMP $075F                 ;
CODE_0DC47B:        BNE CODE_0DC48B           ;
CODE_0DC47D:        DEY                       ;
CODE_0DC47E:        LDA [$FD],y               ;
CODE_0DC480:        STA $0750                 ;
CODE_0DC483:        INY                       ;
CODE_0DC484:        LDA [$FD],y               ;
CODE_0DC486:        AND #$1F                  ;
CODE_0DC488:        STA $0751                 ;
CODE_0DC48B:        BRA CODE_0DC498           ;

CODE_0DC48D:        LDY $0739                 ;
CODE_0DC490:        LDA [$FD],y               ;
CODE_0DC492:        AND #$0F                  ;
CODE_0DC494:        CMP #$0E                  ;
CODE_0DC496:        BNE CODE_0DC49B           ;
CODE_0DC498:        INC $0739                 ;
CODE_0DC49B:        INC $0739                 ;
CODE_0DC49E:        INC $0739                 ;
CODE_0DC4A1:        STZ $073B                 ;
CODE_0DC4A4:        LDX $9E                   ;
CODE_0DC4A6:        RTS                       ;

CODE_0DC4A7:        LSR A                     ;
CODE_0DC4A8:        LSR A                     ;
CODE_0DC4A9:        LSR A                     ;
CODE_0DC4AA:        LSR A                     ;
CODE_0DC4AB:        LSR A                     ;
CODE_0DC4AC:        PHA                       ;
CODE_0DC4AD:        LDA $07FB                 ;
CODE_0DC4B0:        BEQ CODE_0DC4B7           ;
CODE_0DC4B2:        PLA                       ;
CODE_0DC4B3:        CLC                       ;
CODE_0DC4B4:        ADC #$09                  ;
CODE_0DC4B6:        PHA                       ;
CODE_0DC4B7:        PLA                       ;
CODE_0DC4B8:        RTS                       ;

CODE_0DC4B9:        LDA $1C,x                 ;
CODE_0DC4BB:        CMP #$15                  ;
CODE_0DC4BD:        BCS CODE_0DC4CE           ;
CODE_0DC4BF:        TAY                       ;
CODE_0DC4C0:        LDA $0238,x               ;
CODE_0DC4C3:        ADC #$08                  ;
CODE_0DC4C5:        STA $0238,x               ;
CODE_0DC4C8:        LDA #$01                  ;
CODE_0DC4CA:        STA $03D9,x               ;
CODE_0DC4CD:        TYA                       ;
CODE_0DC4CE:        ASL A                     ;
CODE_0DC4CF:        TAY                       ;
CODE_0DC4D0:        LDA PNTR_0DC4DD,y               ;
CODE_0DC4D3:        STA $04                   ;
CODE_0DC4D5:        LDA PNTR_0DC4DD+1,y               ;
CODE_0DC4D8:        STA $05                   ;
CODE_0DC4DA:        JMP ($0004)               ;

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

CODE_0DC54B:        RTS                       ;

CODE_0DC54C:        JSR CODE_0DC587           ;
CODE_0DC54F:        JMP CODE_0DC5C2           ;

CODE_0DC552:        LDA #$D0                  ;
CODE_0DC554:        STA $0238,x               ;
CODE_0DC557:        LDA #$01                  ;
CODE_0DC559:        STA $BC,x                 ;
CODE_0DC55B:        STA $07A2,x               ;
CODE_0DC55E:        STZ $29,x                 ;
CODE_0DC560:        STA $0B00,x               ;
CODE_0DC563:        STZ $0B09,x               ;
CODE_0DC566:        LDA #$27                  ;
CODE_0DC568:        STA $1603                 ;
CODE_0DC56B:        JMP CODE_0DC5C2           ;

CODE_0DC56E:        LDA $075F                 ;
CODE_0DC571:        CMP #$07                  ;
CODE_0DC573:        BEQ CODE_0DC57F           ;
CODE_0DC575:        CMP #$0C                  ;
CODE_0DC577:        BEQ CODE_0DC57F           ;
CODE_0DC579:        LDA #$B8                  ;
CODE_0DC57B:        STA $0238,x               ;
CODE_0DC57E:        RTS                       ;

CODE_0DC57F:        LDA #$70                  ;
CODE_0DC581:        STA $0238,x               ;
CODE_0DC584:        RTS                       ;

DATA_0DC585:        db $F8,$F4

CODE_0DC587:        LDY #$01                  ;
CODE_0DC589:        LDA $076A                 ;
CODE_0DC58C:        BNE CODE_0DC58F           ;
CODE_0DC58E:        DEY                       ;
CODE_0DC58F:        LDA DATA_0DC585,y               ;
CODE_0DC592:        STA $5E,x                 ;
CODE_0DC594:        JMP CODE_0DC5D8           ;

CODE_0DC597:        JSR CODE_0DC587           ;
CODE_0DC59A:        LDA #$01                  ;
CODE_0DC59C:        STA $29,x                 ;
CODE_0DC59E:        RTS                       ;

DATA_0DC59F:        db $80,$50

CODE_0DC5A1:        STZ $03A2,x               ;
CODE_0DC5A4:        STZ $5E,x                 ;
CODE_0DC5A6:        LDA $075F                 ;
CODE_0DC5A9:        CMP #$06                  ;
CODE_0DC5AB:        BCS CODE_0DC5B6           ;
CODE_0DC5AD:        LDY $06CC                 ;
CODE_0DC5B0:        LDA DATA_0DC59F,y               ;
CODE_0DC5B3:        STA $07A2,x               ;
CODE_0DC5B6:        LDA #$0B                  ;
CODE_0DC5B8:        JMP CODE_0DC5DA           ;

CODE_0DC5BB:        LDA #$00                  ;
CODE_0DC5BD:        JMP CODE_0DC592           ;

CODE_0DC5C0:        STZ $5E,x                 ;
CODE_0DC5C2:        LDA #$09                  ;
CODE_0DC5C4:        BNE CODE_0DC5DA           ;
CODE_0DC5C6:        LDY #$30                  ;
CODE_0DC5C8:        LDA $0238,x               ;
CODE_0DC5CB:        STA $0402,x               ;
CODE_0DC5CE:        BPL CODE_0DC5D2           ;
CODE_0DC5D0:        LDY #$E0                  ;
CODE_0DC5D2:        TYA                       ;
CODE_0DC5D3:        ADC $0238,x               ;
CODE_0DC5D6:        STA $5E,x                 ;
CODE_0DC5D8:        LDA #$03                  ;
CODE_0DC5DA:        STA $0490,x               ;
CODE_0DC5DD:        LDA #$02                  ;
CODE_0DC5DF:        STA $47,x                 ;
CODE_0DC5E1:        STZ $A1,x                 ;
CODE_0DC5E3:        STZ $043D,x               ;
CODE_0DC5E6:        RTS                       ;

CODE_0DC5E7:        LDA #$02                  ;
CODE_0DC5E9:        STA $47,x                 ;
CODE_0DC5EB:        LDA #$09                  ;
CODE_0DC5ED:        STA $0490,x               ;
CODE_0DC5F0:        RTS                       ;

CODE_0DC5F1:        JSR CODE_0DC5C2           ;
CODE_0DC5F4:        LDA $07B7,x               ;
CODE_0DC5F7:        AND #$10                  ;
CODE_0DC5F9:        STA $5E,x                 ;
CODE_0DC5FB:        LDA $0238,x               ;
CODE_0DC5FE:        STA $043D,x               ;
CODE_0DC601:        RTS                       ;

CODE_0DC602:        LDA $06CB                 ;
CODE_0DC605:        BNE CODE_0DC610           ;
CODE_0DC607:        STZ $06D1                 ;
CODE_0DC60A:        JSR CODE_0DC5BB           ;
CODE_0DC60D:        JMP CODE_0DCB06           ;

CODE_0DC610:        JMP CODE_0DCCEA           ;

DATA_0DC613:        db $26,$2C,$32,$38 ;

DATA_0DC617:        db $20,$22,$24,$26 ;

DATA_0DC61B:        db $13,$14,$15,$16 ;

CODE_0DC61F:        LDA $079B                 ;
CODE_0DC622:        BNE CODE_0DC66C           ;
CODE_0DC624:        CPX #$09                  ;
CODE_0DC626:        BCS CODE_0DC66C           ;
CODE_0DC628:        LDA #$80                  ;
CODE_0DC62A:        STA $079B                 ;
CODE_0DC62D:        LDY #$08                  ;
CODE_0DC62F:        LDA $001C,y               ;
CODE_0DC632:        CMP #$11                  ;
CODE_0DC634:        BEQ CODE_0DC66D           ;
CODE_0DC636:        DEY                       ;
CODE_0DC637:        BPL CODE_0DC62F           ;
CODE_0DC639:        INC $06D1                 ;
CODE_0DC63C:        LDA $06D1                 ;
CODE_0DC63F:        CMP #$03                  ;
CODE_0DC641:        BCC CODE_0DC66C           ;
CODE_0DC643:        LDX #$08                  ;
CODE_0DC645:        LDA $10,x                 ;
CODE_0DC647:        BEQ CODE_0DC64E           ;
CODE_0DC649:        DEX                       ;
CODE_0DC64A:        BPL CODE_0DC645           ;
CODE_0DC64C:        BMI CODE_0DC66A           ;
CODE_0DC64E:        STZ $29,x                 ;
CODE_0DC650:        LDA #$11                  ;
CODE_0DC652:        STA $1C,x                 ;
CODE_0DC654:        JSR CODE_0DC607           ;
CODE_0DC657:        LDA #$20                  ;
CODE_0DC659:        LDY $07FB                 ;
CODE_0DC65C:        BNE CODE_0DC665           ;
CODE_0DC65E:        LDY $075F                 ;
CODE_0DC661:        CPY #$06                  ;
CODE_0DC663:        BCC CODE_0DC667           ;
CODE_0DC665:        LDA #$60                  ;
CODE_0DC667:        JSR CODE_0DC8C9           ;
CODE_0DC66A:        LDX $9E                   ;
CODE_0DC66C:        RTS                       ;

CODE_0DC66D:        LDA $0237                 ;
CODE_0DC670:        CMP #$2C                  ;
CODE_0DC672:        BCC CODE_0DC66C           ;
CODE_0DC674:        LDA $0029,y               ;
CODE_0DC677:        BNE CODE_0DC66C           ;
CODE_0DC679:        LDA $0079,y               ;
CODE_0DC67C:        STA $79,x                 ;
CODE_0DC67E:        LDA $021A,y               ;
CODE_0DC681:        STA $021A,x               ;
CODE_0DC684:        LDA #$01                  ;
CODE_0DC686:        STA $BC,x                 ;
CODE_0DC688:        LDA $0238,y               ;
CODE_0DC68B:        SEC                       ;
CODE_0DC68C:        SBC #$08                  ;
CODE_0DC68E:        STA $0238,x               ;
CODE_0DC691:        LDA $07B7,x               ;
CODE_0DC694:        AND #$03                  ;
CODE_0DC696:        TAY                       ;
CODE_0DC697:        LDA DATA_0DC613,y               ;
CODE_0DC69A:        STA $03                   ;
CODE_0DC69C:        LDA DATA_0DC617,y               ;
CODE_0DC69F:        STA $02                   ;
CODE_0DC6A1:        LDA DATA_0DC61B,y               ;
CODE_0DC6A4:        STA $01                   ;
CODE_0DC6A6:        LDX $9E                   ;
CODE_0DC6A8:        JSR CODE_0DD30E           ;
CODE_0DC6AB:        LDY $5D                   ;
CODE_0DC6AD:        CPY #$08                  ;
CODE_0DC6AF:        BCS CODE_0DC6BF           ;
CODE_0DC6B1:        TAY                       ;
CODE_0DC6B2:        LDA $07B8,x               ;
CODE_0DC6B5:        AND #$03                  ;
CODE_0DC6B7:        BEQ CODE_0DC6BE           ;
CODE_0DC6B9:        TYA                       ;
CODE_0DC6BA:        EOR #$FF                  ;
CODE_0DC6BC:        TAY                       ;
CODE_0DC6BD:        INY                       ;
CODE_0DC6BE:        TYA                       ;
CODE_0DC6BF:        JSR CODE_0DC5C2           ;
CODE_0DC6C2:        LDY #$02                  ;
CODE_0DC6C4:        STA $5E,x                 ;
CODE_0DC6C6:        CMP #$00                  ;
CODE_0DC6C8:        BMI CODE_0DC6CB           ;
CODE_0DC6CA:        DEY                       ;
CODE_0DC6CB:        STY $47,x                 ;
CODE_0DC6CD:        LDA #$FD                  ;
CODE_0DC6CF:        STA $A1,x                 ;
CODE_0DC6D1:        LDA #$01                  ;
CODE_0DC6D3:        STA $10,x                 ;
CODE_0DC6D5:        LDA #$05                  ;
CODE_0DC6D7:        STA $29,x                 ;
CODE_0DC6D9:        RTS                       ;

DATA_0DC6DA:        db $28,$38,$28,$38,$28

DATA_0DC6DF:        db $00,$00,$10,$10,$00

CODE_0DC6E4:        JSR CODE_0DC827           ;
CODE_0DC6E7:        STZ $5E,x                 ;
CODE_0DC6E9:        LDA $1C,x                 ;
CODE_0DC6EB:        SEC                       ;
CODE_0DC6EC:        SBC #$1B                  ;
CODE_0DC6EE:        TAY                       ;
CODE_0DC6EF:        LDA DATA_0DC6DA,y               ;
CODE_0DC6F2:        STA $0388,x               ;
CODE_0DC6F5:        LDA DATA_0DC6DF,y               ;
CODE_0DC6F8:        STA $0203,x               ;
CODE_0DC6FB:        LDA $0238,x               ;
CODE_0DC6FE:        CLC                       ;
CODE_0DC6FF:        ADC #$04                  ;
CODE_0DC701:        STA $0238,x               ;
CODE_0DC704:        LDA $021A,x               ;
CODE_0DC707:        CLC                       ;
CODE_0DC708:        ADC #$04                  ;
CODE_0DC70A:        STA $021A,x               ;
CODE_0DC70D:        LDA $79,x                 ;
CODE_0DC70F:        ADC #$00                  ;
CODE_0DC711:        STA $79,x                 ;
CODE_0DC713:        JMP CODE_0DCB06           ;

DATA_0DC716:        db $80,$30,$40,$80,$30,$50,$50,$70 ;
                    db $20,$40,$80,$A0,$70,$40,$90,$68 ;

DATA_0DC726:        db $0E,$05,$06,$0E,$1C,$20,$10,$0C ;
                    db $1E,$22,$18,$14 ;

DATA_0DC732:        db $10,$60,$20

CODE_0DC735:        PHA                       ;
CODE_0DC736:        LDA $079B                 ;
CODE_0DC739:        BNE CODE_0DC6D9           ;
CODE_0DC73B:        JSR CODE_0DC5C2           ;
CODE_0DC73E:        LDA $07B8,x               ;
CODE_0DC741:        AND #$03                  ;
CODE_0DC743:        TAY                       ;
CODE_0DC744:        LDA DATA_0DC732,y               ;
CODE_0DC747:        STA $079B                 ;
CODE_0DC74A:        LDY #$03                  ;
CODE_0DC74C:        LDA $06CC                 ;
CODE_0DC74F:        BEQ CODE_0DC752           ;
CODE_0DC751:        INY                       ;
CODE_0DC752:        STY $00                   ;
CODE_0DC754:        CPX $00                   ;
CODE_0DC756:        BCC CODE_0DC75B           ;
CODE_0DC758:        JMP CODE_0DC6D9           ;

CODE_0DC75B:        LDA $07B7,x               ;
CODE_0DC75E:        AND #$03                  ;
CODE_0DC760:        STA $00                   ;
CODE_0DC762:        STA $01                   ;
CODE_0DC764:        LDA #$FB                  ;
CODE_0DC766:        STA $A1,x                 ;
CODE_0DC768:        LDA #$00                  ;
CODE_0DC76A:        LDY $5D                   ;
CODE_0DC76C:        BEQ CODE_0DC775           ;
CODE_0DC76E:        LDA #$04                  ;
CODE_0DC770:        CPY #$19                  ;
CODE_0DC772:        BCC CODE_0DC775           ;
CODE_0DC774:        ASL A                     ;
CODE_0DC775:        PHA                       ;
CODE_0DC776:        CLC                       ;
CODE_0DC777:        ADC $00                   ;
CODE_0DC779:        STA $00                   ;
CODE_0DC77B:        LDA $07B8,x               ;
CODE_0DC77E:        AND #$03                  ;
CODE_0DC780:        BEQ CODE_0DC789           ;
CODE_0DC782:        LDA $07B9,x               ;
CODE_0DC785:        AND #$0F                  ;
CODE_0DC787:        STA $00                   ;
CODE_0DC789:        PLA                       ;
CODE_0DC78A:        CLC                       ;
CODE_0DC78B:        ADC $01                   ;
CODE_0DC78D:        TAY                       ;
CODE_0DC78E:        LDA DATA_0DC726,y               ;
CODE_0DC791:        STA $5E,x                 ;
CODE_0DC793:        LDA #$01                  ;
CODE_0DC795:        STA $47,x                 ;
CODE_0DC797:        LDA $5D                   ;
CODE_0DC799:        BNE CODE_0DC7AD           ;
CODE_0DC79B:        LDY $00                   ;
CODE_0DC79D:        TYA                       ;
CODE_0DC79E:        AND #$02                  ;
CODE_0DC7A0:        BEQ CODE_0DC7AD           ;
CODE_0DC7A2:        LDA $5E,x                 ;
CODE_0DC7A4:        EOR #$FF                  ;
CODE_0DC7A6:        CLC                       ;
CODE_0DC7A7:        ADC #$01                  ;
CODE_0DC7A9:        STA $5E,x                 ;
CODE_0DC7AB:        INC $47,x                 ;
CODE_0DC7AD:        TYA                       ;
CODE_0DC7AE:        AND #$02                  ;
CODE_0DC7B0:        BEQ CODE_0DC7C2           ;
CODE_0DC7B2:        LDA $0219                 ;
CODE_0DC7B5:        CLC                       ;
CODE_0DC7B6:        ADC DATA_0DC716,y               ;
CODE_0DC7B9:        STA $021A,x               ;
CODE_0DC7BC:        LDA $78                   ;
CODE_0DC7BE:        ADC #$00                  ;
CODE_0DC7C0:        BRA CODE_0DC7D0           ;

CODE_0DC7C2:        LDA $0219                 ;
CODE_0DC7C5:        SEC                       ;
CODE_0DC7C6:        SBC DATA_0DC716,y               ;
CODE_0DC7C9:        STA $021A,x               ;
CODE_0DC7CC:        LDA $78                   ;
CODE_0DC7CE:        SBC #$00                  ;
CODE_0DC7D0:        STA $79,x                 ;
CODE_0DC7D2:        LDA #$01                  ;
CODE_0DC7D4:        STA $10,x                 ;
CODE_0DC7D6:        STA $BC,x                 ;
CODE_0DC7D8:        LDA #$F8                  ;
CODE_0DC7DA:        STA $0238,x               ;
CODE_0DC7DD:        RTS                       ;

CODE_0DC7DE:        LDY #$04                  ;
CODE_0DC7E0:        CPY $009E                 ;
CODE_0DC7E3:        BEQ CODE_0DC7F4           ;
CODE_0DC7E5:        LDA $001C,y               ;
CODE_0DC7E8:        CMP #$2D                  ;
CODE_0DC7EA:        BNE CODE_0DC7F4           ;
CODE_0DC7EC:        LDA #$00                  ;
CODE_0DC7EE:        STA $001C,y               ;
CODE_0DC7F1:        STA $0010,y               ;
CODE_0DC7F4:        DEY                       ;
CODE_0DC7F5:        BPL CODE_0DC7E0           ;
CODE_0DC7F7:        JSR CODE_0DC827           ;
CODE_0DC7FA:        STX $0368                 ;
CODE_0DC7FD:        STZ $0363                 ;
CODE_0DC800:        STZ $0369                 ;
CODE_0DC803:        LDA $021A,x               ;
CODE_0DC806:        STA $0366                 ;
CODE_0DC809:        LDA #$DF                  ;
CODE_0DC80B:        STA $079C                 ;
CODE_0DC80E:        STA $47,x                 ;
CODE_0DC810:        LDA #$20                  ;
CODE_0DC812:        STA $0364                 ;
CODE_0DC815:        STA $0792,x               ;
CODE_0DC818:        STA $0257,x               ;
CODE_0DC81B:        LDA $1C,x                 ;
CODE_0DC81D:        LDA #$05                  ;
CODE_0DC81F:        STA $0283                 ;
CODE_0DC822:        LSR A                     ;
CODE_0DC823:        STA $0365                 ;
CODE_0DC826:        RTS                       ;

CODE_0DC827:        LDY #$FF                  ;
CODE_0DC829:        INY                       ;
CODE_0DC82A:        LDA $0010,y               ;
CODE_0DC82D:        BNE CODE_0DC829           ;
CODE_0DC82F:        STY $06CF                 ;
CODE_0DC832:        TXA                       ;
CODE_0DC833:        ORA #$80                  ;
CODE_0DC835:        STA $0010,y               ;
CODE_0DC838:        LDA $79,x                 ;
CODE_0DC83A:        STA $0079,y               ;
CODE_0DC83D:        LDA $021A,x               ;
CODE_0DC840:        STA $021A,y               ;
CODE_0DC843:        LDA #$01                  ;
CODE_0DC845:        STA $10,x                 ;
CODE_0DC847:        STA $00BC,y               ;
CODE_0DC84A:        LDA $0238,x               ;
CODE_0DC84D:        STA $0238,y               ;
CODE_0DC850:        RTS                       ;

DATA_0DC851:        db $90,$80,$70,$90
DATA_0DC855:        db $FF,$01

CODE_0DC857:        LDA $079B                 ;
CODE_0DC85A:        BNE CODE_0DC850           ;
CODE_0DC85C:        STA $043D,x               ;
CODE_0DC85F:        LDA #$06                  ;
CODE_0DC861:        STA $014B                 ;
CODE_0DC864:        LDA #$18                  ;
CODE_0DC866:        STA $0F4C                 ;
CODE_0DC869:        STX $0F4D                 ;
CODE_0DC86C:        LDY $0368                 ;
CODE_0DC86F:        LDA $001C,y               ;
CODE_0DC872:        CMP #$2D                  ;
CODE_0DC874:        BEQ CODE_0DC8C5           ;
CODE_0DC876:        JSR CODE_0DD5EA           ;
CODE_0DC879:        CLC                       ;
CODE_0DC87A:        ADC #$20                  ;
CODE_0DC87C:        LDY $06CC                 ;
CODE_0DC87F:        BEQ CODE_0DC884           ;
CODE_0DC881:        SEC                       ;
CODE_0DC882:        SBC #$10                  ;
CODE_0DC884:        STA $079B                 ;
CODE_0DC887:        LDA $07B7,x               ;
CODE_0DC88A:        AND #$03                  ;
CODE_0DC88C:        STA $041D,x               ;
CODE_0DC88F:        TAY                       ;
CODE_0DC890:        LDA DATA_0DC851,y               ;
CODE_0DC893:        STA $0238,x               ;
CODE_0DC896:        LDA $071D                 ;
CODE_0DC899:        CLC                       ;
CODE_0DC89A:        ADC #$20                  ;
CODE_0DC89C:        STA $021A,x               ;
CODE_0DC89F:        LDA $071B                 ;
CODE_0DC8A2:        ADC #$00                  ;
CODE_0DC8A4:        STA $79,x                 ;
CODE_0DC8A6:        STZ $0F4C                 ;
CODE_0DC8A9:        STZ $0F4D                 ;
CODE_0DC8AC:        STZ $014B                 ;
CODE_0DC8AF:        LDA #$17                  ;
CODE_0DC8B1:        STA $1603                 ;
CODE_0DC8B4:        LDA #$08                  ;
CODE_0DC8B6:        STA $0490,x               ;
CODE_0DC8B9:        LDA #$01                  ;
CODE_0DC8BB:        STA $BC,x                 ;
CODE_0DC8BD:        STA $10,x                 ;
CODE_0DC8BF:        LSR A                     ;
CODE_0DC8C0:        STA $0402,x               ;
CODE_0DC8C3:        STA $29,x                 ;
CODE_0DC8C5:        STX $0F4E                 ;
CODE_0DC8C8:        RTS                       ;

CODE_0DC8C9:        STA $0238,x               ;
CODE_0DC8CC:        LDA $071D                 ;
CODE_0DC8CF:        CLC                       ;
CODE_0DC8D0:        ADC #$20                  ;
CODE_0DC8D2:        STA $021A,x               ;
CODE_0DC8D5:        LDA $071B                 ;
CODE_0DC8D8:        ADC #$00                  ;
CODE_0DC8DA:        STA $79,x                 ;
CODE_0DC8DC:        BRA CODE_0DC912           ;

CODE_0DC8DE:        LDA $021A,y               ;
CODE_0DC8E1:        SEC                       ;
CODE_0DC8E2:        SBC #$0E                  ;
CODE_0DC8E4:        STA $021A,x               ;
CODE_0DC8E7:        LDA $0079,y               ;
CODE_0DC8EA:        STA $79,x                 ;
CODE_0DC8EC:        LDA $0238,y               ;
CODE_0DC8EF:        CLC                       ;
CODE_0DC8F0:        ADC #$08                  ;
CODE_0DC8F2:        STA $0238,x               ;
CODE_0DC8F5:        LDA $07B7,x               ;
CODE_0DC8F8:        AND #$03                  ;
CODE_0DC8FA:        STA $041D,x               ;
CODE_0DC8FD:        TAY                       ;
CODE_0DC8FE:        LDA DATA_0DC851,y               ;
CODE_0DC901:        LDY #$00                  ;
CODE_0DC903:        CMP $0238,x               ;
CODE_0DC906:        BCC CODE_0DC909           ;
CODE_0DC908:        INY                       ;
CODE_0DC909:        LDA DATA_0DC855,y               ;
CODE_0DC90C:        STA $043D,x               ;
CODE_0DC90F:        STZ $06CB                 ;
CODE_0DC912:        LDA #$08                  ;
CODE_0DC914:        STA $0490,x               ;
CODE_0DC917:        LDA #$01                  ;
CODE_0DC919:        STA $BC,x                 ;
CODE_0DC91B:        STA $10,x                 ;
CODE_0DC91D:        LSR A                     ;
CODE_0DC91E:        STA $0402,x               ;
CODE_0DC921:        STA $29,x                 ;
CODE_0DC923:        RTS                       ;

DATA_0DC924:        db $00,$30,$60,$60,$00,$20

DATA_0DC92A:        db $60,$40,$70,$40,$60,$30

CODE_0DC930:        LDA $079B                 ;
CODE_0DC933:        BNE CODE_0DC97E           ;
CODE_0DC935:        LDA #$20                  ;
CODE_0DC937:        STA $079B                 ;
CODE_0DC93A:        DEC $06D7                 ;
CODE_0DC93D:        LDY #$0A                  ;
CODE_0DC93F:        DEY                       ;
CODE_0DC940:        LDA $001C,y               ;
CODE_0DC943:        CMP #$31                  ;
CODE_0DC945:        BNE CODE_0DC93F           ;
CODE_0DC947:        LDA $021A,y               ;
CODE_0DC94A:        SEC                       ;
CODE_0DC94B:        SBC #$30                  ;
CODE_0DC94D:        PHA                       ;
CODE_0DC94E:        LDA $0079,y               ;
CODE_0DC951:        SBC #$00                  ;
CODE_0DC953:        STA $00                   ;
CODE_0DC955:        LDA $06D7                 ;
CODE_0DC958:        CLC                       ;
CODE_0DC959:        ADC $0029,y               ;
CODE_0DC95C:        TAY                       ;
CODE_0DC95D:        PLA                       ;
CODE_0DC95E:        CLC                       ;
CODE_0DC95F:        ADC DATA_0DC924,y               ;
CODE_0DC962:        STA $021A,x               ;
CODE_0DC965:        LDA $00                   ;
CODE_0DC967:        ADC #$00                  ;
CODE_0DC969:        STA $79,x                 ;
CODE_0DC96B:        LDA DATA_0DC92A,y               ;
CODE_0DC96E:        STA $0238,x               ;
CODE_0DC971:        LDA #$01                  ;
CODE_0DC973:        STA $BC,x                 ;
CODE_0DC975:        STA $10,x                 ;
CODE_0DC977:        LSR A                     ;
CODE_0DC978:        STA $5E,x                 ;
CODE_0DC97A:        LDA #$08                  ;
CODE_0DC97C:        STA $A1,x                 ;
CODE_0DC97E:        RTS                       ;

DATA_0DC97F:        db $01,$02,$04,$08,$10,$20,$40,$80

DATA_0DC987:        db $40,$30,$90,$50,$20,$60,$A0,$70

DATA_0DC98F:        db $0A,$0B

CODE_0DC991:        LDA $079B                 ;
CODE_0DC994:        BNE CODE_0DCA01           ;
CODE_0DC996:        LDA $5C                   ;
CODE_0DC998:        BNE CODE_0DC9EE           ;
CODE_0DC99A:        CPX #$03                  ;
CODE_0DC99C:        BCS CODE_0DCA01           ;
CODE_0DC99E:        LDY #$00                  ;
CODE_0DC9A0:        LDA $07B7,x               ;
CODE_0DC9A3:        CMP #$AA                  ;
CODE_0DC9A5:        BCC CODE_0DC9A8           ;
CODE_0DC9A7:        INY                       ;
CODE_0DC9A8:        LDA $075F                 ;
CODE_0DC9AB:        CMP #$01                  ;
CODE_0DC9AD:        BEQ CODE_0DC9B0           ;
CODE_0DC9AF:        INY                       ;
CODE_0DC9B0:        TYA                       ;
CODE_0DC9B1:        AND #$01                  ;
CODE_0DC9B3:        TAY                       ;
CODE_0DC9B4:        LDA DATA_0DC98F,y               ;
CODE_0DC9B7:        STA $1C,x                 ;
CODE_0DC9B9:        LDA $06DD                 ;
CODE_0DC9BC:        CMP #$FF                  ;
CODE_0DC9BE:        BNE CODE_0DC9C3           ;
CODE_0DC9C0:        STZ $06DD                 ;
CODE_0DC9C3:        LDA $07B7,x               ;
CODE_0DC9C6:        AND #$07                  ;
CODE_0DC9C8:        TAY                       ;
CODE_0DC9C9:        LDA DATA_0DC97F,y               ;
CODE_0DC9CC:        BIT $06DD                 ;
CODE_0DC9CF:        BEQ CODE_0DC9D7           ;
CODE_0DC9D1:        INY                       ;
CODE_0DC9D2:        TYA                       ;
CODE_0DC9D3:        AND #$07                  ;
CODE_0DC9D5:        BRA CODE_0DC9C8           ;

CODE_0DC9D7:        ORA $06DD                 ;
CODE_0DC9DA:        STA $06DD                 ;
CODE_0DC9DD:        LDA DATA_0DC987,y               ;
CODE_0DC9E0:        JSR CODE_0DC8C9           ;
CODE_0DC9E3:        STA $041D,x               ;
CODE_0DC9E6:        LDA #$20                  ;
CODE_0DC9E8:        STA $079B                 ;
CODE_0DC9EB:        JMP CODE_0DC4B9           ;

CODE_0DC9EE:        LDY #$FF                  ;
CODE_0DC9F0:        INY                       ;
CODE_0DC9F1:        CPY #$09                  ;
CODE_0DC9F3:        BCS CODE_0DCA02           ;
CODE_0DC9F5:        LDA $0010,y               ;
CODE_0DC9F8:        BEQ CODE_0DC9F0           ;
CODE_0DC9FA:        LDA $001C,y               ;
CODE_0DC9FD:        CMP #$08                  ;
CODE_0DC9FF:        BNE CODE_0DC9F0           ;
CODE_0DCA01:        RTS                       ;

CODE_0DCA02:        LDA #$09                  ;
CODE_0DCA04:        STA $1603                 ;
CODE_0DCA07:        LDA #$08                  ;
CODE_0DCA09:        BNE CODE_0DC9B7           ;
CODE_0DCA0B:        LDY #$00                  ;
CODE_0DCA0D:        SEC                       ;
CODE_0DCA0E:        SBC #$37                  ;
CODE_0DCA10:        PHA                       ;
CODE_0DCA11:        CMP #$04                  ;
CODE_0DCA13:        BCS CODE_0DCA20           ;
CODE_0DCA15:        PHA                       ;
CODE_0DCA16:        LDY #$06                  ;
CODE_0DCA18:        LDA $076A                 ;
CODE_0DCA1B:        BEQ CODE_0DCA1F           ;
CODE_0DCA1D:        LDY #$02                  ;
CODE_0DCA1F:        PLA                       ;
CODE_0DCA20:        STY $01                   ;
CODE_0DCA22:        LDY #$B0                  ;
CODE_0DCA24:        AND #$02                  ;
CODE_0DCA26:        BEQ CODE_0DCA2A           ;
CODE_0DCA28:        LDY #$70                  ;
CODE_0DCA2A:        STY $00                   ;
CODE_0DCA2C:        LDA $071B                 ;
CODE_0DCA2F:        STA $02                   ;
CODE_0DCA31:        LDA $071D                 ;
CODE_0DCA34:        STA $03                   ;
CODE_0DCA36:        LDY #$02                  ;
CODE_0DCA38:        PLA                       ;
CODE_0DCA39:        LSR A                     ;
CODE_0DCA3A:        BCC CODE_0DCA3D           ;
CODE_0DCA3C:        INY                       ;
CODE_0DCA3D:        STY $06D3                 ;
CODE_0DCA40:        LDX #$FF                  ;
CODE_0DCA42:        INX                       ;
CODE_0DCA43:        CPX #$09                  ;
CODE_0DCA45:        BCS CODE_0DCA76           ;
CODE_0DCA47:        LDA $10,x                 ;
CODE_0DCA49:        BNE CODE_0DCA42           ;
CODE_0DCA4B:        LDA $01                   ;
CODE_0DCA4D:        STA $1C,x                 ;
CODE_0DCA4F:        LDA $02                   ;
CODE_0DCA51:        STA $79,x                 ;
CODE_0DCA53:        LDA $03                   ;
CODE_0DCA55:        STA $021A,x               ;
CODE_0DCA58:        CLC                       ;
CODE_0DCA59:        ADC #$18                  ;
CODE_0DCA5B:        STA $03                   ;
CODE_0DCA5D:        LDA $02                   ;
CODE_0DCA5F:        ADC #$00                  ;
CODE_0DCA61:        STA $02                   ;
CODE_0DCA63:        LDA $00                   ;
CODE_0DCA65:        STA $0238,x               ;
CODE_0DCA68:        LDA #$01                  ;
CODE_0DCA6A:        STA $BC,x                 ;
CODE_0DCA6C:        STA $10,x                 ;
CODE_0DCA6E:        JSR CODE_0DC4B9           ;
CODE_0DCA71:        DEC $06D3                 ;
CODE_0DCA74:        BNE CODE_0DCA40           ;
CODE_0DCA76:        JMP CODE_0DC49B           ;

CODE_0DCA79:        LDA #$2C                  ;
CODE_0DCA7B:        STA $0000                 ;
CODE_0DCA7E:        LDA #$13                  ;
CODE_0DCA80:        STA $0001                 ;
CODE_0DCA83:        STA $0F25                 ;
CODE_0DCA86:        LDA $07FB                 ;
CODE_0DCA89:        BNE CODE_0DCAA0           ;
CODE_0DCA8B:        LDA $075F                 ;
CODE_0DCA8E:        CMP #$03                  ;
CODE_0DCA90:        BCS CODE_0DCAA0           ;
CODE_0DCA92:        DEC $0000                 ;
CODE_0DCA95:        DEC $0000                 ;
CODE_0DCA98:        LDA #$21                  ;
CODE_0DCA9A:        STA $0001                 ;
CODE_0DCA9D:        STA $0F25                 ;
CODE_0DCAA0:        LDA $0000                 ;
CODE_0DCAA3:        STA $0F24                 ;
CODE_0DCAA6:        LDA #$01                  ;
CODE_0DCAA8:        STA $5E,x                 ;
CODE_0DCAAA:        LSR A                     ;
CODE_0DCAAB:        STA $29,x                 ;
CODE_0DCAAD:        STA $00A1,x               ;
CODE_0DCAB0:        LDA $0238,x               ;
CODE_0DCAB3:        STA $043D,x               ;
CODE_0DCAB6:        SEC                       ;
CODE_0DCAB7:        SBC #$18                  ;
CODE_0DCAB9:        STA $041D,x               ;
CODE_0DCABC:        LDA #$09                  ;
CODE_0DCABE:        LDA #$0C                  ;
CODE_0DCAC0:        JMP CODE_0DCB08           ;

CODE_0DCAC3:        LDA $1C,x                 ;
CODE_0DCAC5:        STA $06CB                 ;
CODE_0DCAC8:        SEC                       ;
CODE_0DCAC9:        SBC #$12                  ;
CODE_0DCACB:        ASL A                     ;
CODE_0DCACC:        TAY                       ;
CODE_0DCACD:        LDA PNTR_0DCADA,y               ;
CODE_0DCAD0:        STA $04                   ;
CODE_0DCAD2:        LDA PNTR_0DCADA+1,y               ;
CODE_0DCAD5:        STA $05                   ;
CODE_0DCAD7:        JMP ($0004)               ;

PNTR_0DCADA:        dw CODE_0DC61F
                    dw CODE_0DCAE6
                    dw CODE_0DC736
                    dw CODE_0DC857
                    dw CODE_0DC930
                    dw CODE_0DC991

CODE_0DCAE6:        RTS                       ;

CODE_0DCAE7:        LDY #$09                  ;
CODE_0DCAE9:        LDA $001C,y               ;
CODE_0DCAEC:        CMP #$11                  ;
CODE_0DCAEE:        BNE CODE_0DCAF5           ;
CODE_0DCAF0:        LDA #$01                  ;
CODE_0DCAF2:        STA $0029,y               ;
CODE_0DCAF5:        DEY                       ;
CODE_0DCAF6:        BPL CODE_0DCAE9           ;
CODE_0DCAF8:        STZ $06CB                 ;
CODE_0DCAFB:        STZ $10,x                 ;
CODE_0DCAFD:        RTS                       ;

CODE_0DCAFE:        LDA #$02                  ;
CODE_0DCB00:        STA $47,x                 ;
CODE_0DCB02:        LDA #$F4                  ;
CODE_0DCB04:        STA $5E,x                 ;
CODE_0DCB06:        LDA #$03                  ;
CODE_0DCB08:        STA $0490,x               ;
CODE_0DCB0B:        RTS                       ;

CODE_0DCB0C:        DEC $0238,x               ;
CODE_0DCB0F:        DEC $0238,x               ;
CODE_0DCB12:        LDY $06CC                 ;
CODE_0DCB15:        BNE CODE_0DCB1C           ;
CODE_0DCB17:        LDY #$02                  ;
CODE_0DCB19:        JSR CODE_0DCB9E           ;
CODE_0DCB1C:        LDY #$FF                  ;
CODE_0DCB1E:        LDA $03A0                 ;
CODE_0DCB21:        STA $29,x                 ;
CODE_0DCB23:        BPL CODE_0DCB26           ;
CODE_0DCB25:        TXY                       ;
CODE_0DCB26:        STY $03A0                 ;
CODE_0DCB29:        LDA #$00                  ;
CODE_0DCB2B:        STA $47,x                 ;
CODE_0DCB2D:        TAY                       ;
CODE_0DCB2E:        JSR CODE_0DCB9E           ;
CODE_0DCB31:        LDA #$FF                  ;
CODE_0DCB33:        STA $03A2,x               ;
CODE_0DCB36:        JMP CODE_0DCB58           ;

CODE_0DCB39:        LDA #$00                  ;
CODE_0DCB3B:        STA $5E,x                 ;
CODE_0DCB3D:        JMP CODE_0DCB58           ;

CODE_0DCB40:        LDY #$40                  ;
CODE_0DCB42:        LDA $0238,x               ;
CODE_0DCB45:        BPL CODE_0DCB4E           ;
CODE_0DCB47:        EOR #$FF                  ;
CODE_0DCB49:        CLC                       ;
CODE_0DCB4A:        ADC #$01                  ;
CODE_0DCB4C:        LDY #$C0                  ;
CODE_0DCB4E:        STA $0402,x               ;
CODE_0DCB51:        TYA                       ;
CODE_0DCB52:        CLC                       ;
CODE_0DCB53:        ADC $0238,x               ;
CODE_0DCB56:        STA $5E,x                 ;
CODE_0DCB58:        JSR CODE_0DC5E1           ;
CODE_0DCB5B:        LDA #$05                  ;
CODE_0DCB5D:        LDY $5C                   ;
CODE_0DCB5F:        CPY #$03                  ;
CODE_0DCB61:        BEQ CODE_0DCB6A           ;
CODE_0DCB63:        LDY $06CC                 ;
CODE_0DCB66:        BNE CODE_0DCB6A           ;
CODE_0DCB68:        LDA #$06                  ;
CODE_0DCB6A:        STA $0490,x               ;
CODE_0DCB6D:        RTS                       ;

CODE_0DCB6E:        JSR CODE_0DCB7A           ;
CODE_0DCB71:        JMP CODE_0DCB77           ;

CODE_0DCB74:        JSR CODE_0DCB86           ;
CODE_0DCB77:        JMP CODE_0DCB5B           ;

CODE_0DCB7A:        LDA #$10                  ;
CODE_0DCB7C:        STA $043D,x               ;
CODE_0DCB7F:        LDA #$FF                  ;
CODE_0DCB81:        STA $A1,x                 ;
CODE_0DCB83:        JMP CODE_0DCB8D           ;

CODE_0DCB86:        LDA #$F0                  ;
CODE_0DCB88:        STA $043D,x               ;
CODE_0DCB8B:        STZ $A1,x                 ;
CODE_0DCB8D:        LDY #$01                  ;
CODE_0DCB8F:        JSR CODE_0DCB9E           ;
CODE_0DCB92:        LDA #$04                  ;
CODE_0DCB94:        STA $0490,x               ;
CODE_0DCB97:        RTS                       ;

DATA_0DCB98:        db $08,$0C,$F8

DATA_0DCB9B:        db $00,$00,$FF

CODE_0DCB9E:        LDA $021A,x               ;
CODE_0DCBA1:        CLC                       ;
CODE_0DCBA2:        ADC DATA_0DCB98,y               ;
CODE_0DCBA5:        STA $021A,x               ;
CODE_0DCBA8:        LDA $79,x                 ;
CODE_0DCBAA:        ADC DATA_0DCB9B,y               ;
CODE_0DCBAD:        STA $79,x                 ;
CODE_0DCBAF:        RTS                       ;

CODE_0DCBB0:        LDX $9E                   ;
CODE_0DCBB2:        LDA #$00                  ;
CODE_0DCBB4:        LDY $1C,x                 ;
CODE_0DCBB6:        CPY #$15                  ;
CODE_0DCBB8:        BCC CODE_0DCBBD           ;
CODE_0DCBBA:        TYA                       ;
CODE_0DCBBB:        SBC #$14                  ;
CODE_0DCBBD:        ASL A                     ;
CODE_0DCBBE:        TAY                       ;
CODE_0DCBBF:        LDA PNTR_0DCBCC,y               ;
CODE_0DCBC2:        STA $04                   ;
CODE_0DCBC4:        LDA PNTR_0DCBCC+1,y               ;
CODE_0DCBC7:        STA $05                   ;
CODE_0DCBC9:        JMP ($0004)               ;

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

CODE_0DCC10:        RTS                       ;

CODE_0DCC11:        JSR CODE_0DFDE1           ;
CODE_0DCC14:        JSR CODE_0DFD4F           ;
CODE_0DCC17:        JMP CODE_0DEE40           ;

CODE_0DCC1A:        LDA #$20                  ;
CODE_0DCC1C:        STA $0257,x               ;
CODE_0DCC1F:        JSR CODE_0DFDE1           ;
CODE_0DCC22:        JSR CODE_0DFD4F           ;
CODE_0DCC25:        JSR CODE_0DEE40           ;
CODE_0DCC28:        JSR CODE_0DE948           ;
CODE_0DCC2B:        JSR CODE_0DE68D           ;
CODE_0DCC2E:        JSR CODE_0DE003           ;
CODE_0DCC31:        JSR CODE_0DDD7D           ;
CODE_0DCC34:        LDY $0747                 ;
CODE_0DCC37:        BNE CODE_0DCC3C           ;
CODE_0DCC39:        JSR CODE_0DCC3F           ;
CODE_0DCC3C:        JMP CODE_0DDAFC           ;

CODE_0DCC3F:        LDA $1C,x                 ;
CODE_0DCC41:        ASL A                     ;
CODE_0DCC42:        TAY                       ;
CODE_0DCC43:        LDA PNTR_0DCC50,y               ;
CODE_0DCC46:        STA $04                   ;
CODE_0DCC48:        LDA PNTR_0DCC50+1,y               ;
CODE_0DCC4B:        STA $05                   ;
CODE_0DCC4D:        JMP ($0004)               ;

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

CODE_0DCC7A:        RTS                       ;

CODE_0DCC7B:        JSR CODE_0DD5FC           ;
CODE_0DCC7E:        JSR CODE_0DFDE1           ;
CODE_0DCC81:        JSR CODE_0DFD4F           ;
CODE_0DCC84:        JSR CODE_0DE948           ;
CODE_0DCC87:        JSR CODE_0DDD7D           ;
CODE_0DCC8A:        JMP CODE_0DDAFC           ;

CODE_0DCC8D:        JSR CODE_0DD0DF           ;
CODE_0DCC90:        JMP CODE_0DDAFC           ;

CODE_0DCC93:        JSR CODE_0DFDE1           ;
CODE_0DCC96:        JSR CODE_0DFD4F           ;
CODE_0DCC99:        JSR CODE_0DE951           ;
CODE_0DCC9C:        JSR CODE_0DE16E           ;
CODE_0DCC9F:        JSR CODE_0DFD4F           ;
CODE_0DCCA2:        JSR CODE_0DF5A2           ;
CODE_0DCCA5:        JSR CODE_0DDAD1           ;
CODE_0DCCA8:        JMP CODE_0DDAFC           ;

CODE_0DCCAB:        JSR CODE_0DFDE1           ;
CODE_0DCCAE:        JSR CODE_0DFD4F           ;
CODE_0DCCB1:        JSR CODE_0DE980           ;
CODE_0DCCB4:        JSR CODE_0DE137           ;
CODE_0DCCB7:        LDA $0747                 ;
CODE_0DCCBA:        BNE CODE_0DCCBF           ;
CODE_0DCCBC:        JSR CODE_0DCCC8           ;
CODE_0DCCBF:        JSR CODE_0DFD4F           ;
CODE_0DCCC2:        JSR CODE_0DEBA6           ;
CODE_0DCCC5:        JMP CODE_0DDAFC           ;

CODE_0DCCC8:        LDA $1C,x                 ;
CODE_0DCCCA:        SEC                       ;
CODE_0DCCCB:        SBC #$24                  ;
CODE_0DCCCD:        ASL A                     ;
CODE_0DCCCE:        TAY                       ;
CODE_0DCCCF:        LDA PNTR_0DCCDC,y               ;
CODE_0DCCD2:        STA $04                   ;
CODE_0DCCD4:        LDA PNTR_0DCCDC+1,y               ;
CODE_0DCCD7:        STA $05                   ;
CODE_0DCCD9:        JMP ($0004)               ;

PNTR_0DCCDC:        dw CODE_0DD807
                    dw CODE_0DDA4C
                    dw CODE_0DDACB
                    dw CODE_0DDACB
                    dw CODE_0DDA82
                    dw CODE_0DDAAD
                    dw CODE_0DDAB9

CODE_0DCCEA:        STZ $07A2,x
CODE_0DCCED:        CPX #$09                  ;
CODE_0DCCEF:        BNE CODE_0DCD08           ;
CODE_0DCCF1:        LDA #$F0                  ;
CODE_0DCCF3:        STA $09E1                 ;
CODE_0DCCF6:        STA $09E5                 ;
CODE_0DCCF9:        STA $09E9                 ;
CODE_0DCCFC:        STA $09ED                 ;
CODE_0DCCFF:        LDA $DB                   ;
CODE_0DCD01:        CMP #$22                  ;
CODE_0DCD03:        BNE CODE_0DCD08           ;
CODE_0DCD05:        STZ $0743                 ;
CODE_0DCD08:        STZ $10,x                 ;
CODE_0DCD0A:        STZ $1C,x                 ;
CODE_0DCD0C:        STZ $29,x                 ;
CODE_0DCD0E:        STZ $0110,x               ;
CODE_0DCD11:        STZ $012E,x               ;
CODE_0DCD14:        STZ $0792,x               ;
CODE_0DCD17:        STZ $03A2,x               ;
CODE_0DCD1A:        LDA #$20                  ;
CODE_0DCD1C:        STA $0257,x               ;
CODE_0DCD1F:        LDA #$00                  ;
CODE_0DCD21:        RTS                       ;

CODE_0DCD22:        LDA $07A2,x               ;
CODE_0DCD25:        BNE CODE_0DCD3D           ;
CODE_0DCD27:        JSR CODE_0DC552           ;
CODE_0DCD2A:        LDA $07B8,x               ;
CODE_0DCD2D:        ORA #$80                  ;
CODE_0DCD2F:        STA $043D,x               ;
CODE_0DCD32:        AND #$0F                  ;
CODE_0DCD34:        ORA #$06                  ;
CODE_0DCD36:        STA $07A2,x               ;
CODE_0DCD39:        LDA #$F9                  ;
CODE_0DCD3B:        STA $A1,x                 ;
CODE_0DCD3D:        LDA $00A1,x               ;
CODE_0DCD40:        BMI CODE_0DCD5B           ;
CODE_0DCD42:        LDA $0238,x               ;
CODE_0DCD45:        CMP #$C0                  ;
CODE_0DCD47:        BCC CODE_0DCD5B           ;
CODE_0DCD49:        LDA $0B00,x               ;
CODE_0DCD4C:        CMP #$02                  ;
CODE_0DCD4E:        BNE CODE_0DCD5B           ;
CODE_0DCD50:        INC $0B00,x               ;
CODE_0DCD53:        STZ $0B09,x               ;
CODE_0DCD56:        LDA #$27                  ;
CODE_0DCD58:        STA $1603                 ;
CODE_0DCD5B:        INC $0B09,x               ;
CODE_0DCD5E:        JSL CODE_0FE40F           ;
CODE_0DCD62:        JMP CODE_0DBF33           ;

DATA_0DCD65:        db $30,$1C

DATA_0DCD67:        db $00,$E8,$00,$18

DATA_0DCD6B:        db $08,$F8,$0C,$F4

CODE_0DCD6F:        LDA $29,x                 ;
CODE_0DCD71:        AND #$20                  ;
CODE_0DCD73:        BEQ CODE_0DCD78           ;
CODE_0DCD75:        JMP CODE_0DCE7E           ;

CODE_0DCD78:        LDA $020F,x               ;
CODE_0DCD7B:        BEQ CODE_0DCDAB           ;
CODE_0DCD7D:        DEC $020F,x               ;
CODE_0DCD80:        LDA $03D1                 ;
CODE_0DCD83:        AND #$0C                  ;
CODE_0DCD85:        BNE CODE_0DCDF1           ;
CODE_0DCD87:        LDA $03A2,x               ;
CODE_0DCD8A:        BNE CODE_0DCDA3           ;
CODE_0DCD8C:        LDY $06CC                 ;
CODE_0DCD8F:        LDA DATA_0DCD65,y               ;
CODE_0DCD92:        STA $03A2,x               ;
CODE_0DCD95:        JSR CODE_0DB961           ;
CODE_0DCD98:        BCC CODE_0DCDA3           ;
CODE_0DCD9A:        LDA $29,x                 ;
CODE_0DCD9C:        ORA #$08                  ;
CODE_0DCD9E:        STA $29,x                 ;
CODE_0DCDA0:        JMP CODE_0DCDF1           ;

CODE_0DCDA3:        DEC $03A2,x               ;
CODE_0DCDA6:        JMP CODE_0DCDF1           ;

DATA_0DCDA9:        db $20,$37

CODE_0DCDAB:        LDA $29,x                 ;
CODE_0DCDAD:        AND #$07                  ;
CODE_0DCDAF:        CMP #$01                  ;
CODE_0DCDB1:        BEQ CODE_0DCDF1           ;
CODE_0DCDB3:        STZ $00                   ;
CODE_0DCDB5:        LDY #$FA                  ;
CODE_0DCDB7:        LDA $0238,x               ;
CODE_0DCDBA:        BMI CODE_0DCDCF           ;
CODE_0DCDBC:        LDY #$FD                  ;
CODE_0DCDBE:        CMP #$70                  ;
CODE_0DCDC0:        INC $00                   ;
CODE_0DCDC2:        BCC CODE_0DCDCF           ;
CODE_0DCDC4:        DEC $00                   ;
CODE_0DCDC6:        LDA $07B8,x               ;
CODE_0DCDC9:        AND #$01                  ;
CODE_0DCDCB:        BNE CODE_0DCDCF           ;
CODE_0DCDCD:        LDY #$FA                  ;
CODE_0DCDCF:        STY $A1,x                 ;
CODE_0DCDD1:        LDA $29,x                 ;
CODE_0DCDD3:        ORA #$01                  ;
CODE_0DCDD5:        STA $29,x                 ;
CODE_0DCDD7:        LDA $00                   ;
CODE_0DCDD9:        AND $07B9,x               ;
CODE_0DCDDC:        TAY                       ;
CODE_0DCDDD:        LDA $06CC                 ;
CODE_0DCDE0:        BNE CODE_0DCDE3           ;
CODE_0DCDE2:        TAY                       ;
CODE_0DCDE3:        LDA DATA_0DCDA9,y               ;
CODE_0DCDE6:        STA $0792,x               ;
CODE_0DCDE9:        LDA $07B8,x               ;
CODE_0DCDEC:        ORA #$C0                  ;
CODE_0DCDEE:        STA $020F,x               ;
CODE_0DCDF1:        LDY #$FC                  ;
CODE_0DCDF3:        LDA $09                   ;
CODE_0DCDF5:        AND #$40                  ;
CODE_0DCDF7:        BNE CODE_0DCDFB           ;
CODE_0DCDF9:        LDY #$04                  ;
CODE_0DCDFB:        STY $5E,x                 ;
CODE_0DCDFD:        LDY #$01                  ;
CODE_0DCDFF:        JSR CODE_0DE828           ;
CODE_0DCE02:        BMI CODE_0DCE0E           ;
CODE_0DCE04:        INY                       ;
CODE_0DCE05:        LDA $07A2,x               ;
CODE_0DCE08:        BNE CODE_0DCE0E           ;
CODE_0DCE0A:        LDA #$F8                  ;
CODE_0DCE0C:        STA $5E,x                 ;
CODE_0DCE0E:        STY $47,x                 ;
CODE_0DCE10:        LDY #$00                  ;
CODE_0DCE12:        LDA $29,x                 ;
CODE_0DCE14:        AND #$40                  ;
CODE_0DCE16:        BNE CODE_0DCE31           ;
CODE_0DCE18:        LDA $29,x                 ;
CODE_0DCE1A:        ASL A                     ;
CODE_0DCE1B:        BCS CODE_0DCE4D           ;
CODE_0DCE1D:        LDA $29,x                 ;
CODE_0DCE1F:        AND #$20                  ;
CODE_0DCE21:        BNE CODE_0DCE7E           ;
CODE_0DCE23:        LDA $29,x                 ;
CODE_0DCE25:        AND #$07                  ;
CODE_0DCE27:        BEQ CODE_0DCE4D           ;
CODE_0DCE29:        CMP #$05                  ;
CODE_0DCE2B:        BEQ CODE_0DCE31           ;
CODE_0DCE2D:        CMP #$03                  ;
CODE_0DCE2F:        BCS CODE_0DCE61           ;
CODE_0DCE31:        JSR CODE_0DBF06           ;
CODE_0DCE34:        LDY #$00                  ;
CODE_0DCE36:        LDA $29,x                 ;
CODE_0DCE38:        CMP #$02                  ;
CODE_0DCE3A:        BEQ CODE_0DCE48           ;
CODE_0DCE3C:        AND #$40                  ;
CODE_0DCE3E:        BEQ CODE_0DCE4D           ;
CODE_0DCE40:        LDA $1C,x                 ;
CODE_0DCE42:        CMP #$2E                  ;
CODE_0DCE44:        BEQ CODE_0DCE4D           ;
CODE_0DCE46:        BNE CODE_0DCE4B           ;
CODE_0DCE48:        JMP CODE_0DBEA0           ;

CODE_0DCE4B:        LDY #$01                  ;
CODE_0DCE4D:        LDA $5E,x                 ;
CODE_0DCE4F:        PHA                       ;
CODE_0DCE50:        BPL CODE_0DCE54           ;
CODE_0DCE52:        INY                       ;
CODE_0DCE53:        INY                       ;
CODE_0DCE54:        CLC                       ;
CODE_0DCE55:        ADC DATA_0DCD67,y               ;
CODE_0DCE58:        STA $5E,x                 ;
CODE_0DCE5A:        JSR CODE_0DBEA0           ;
CODE_0DCE5D:        PLA                       ;
CODE_0DCE5E:        STA $5E,x                 ;
CODE_0DCE60:        RTS                       ;

CODE_0DCE61:        LDA $07A2,x               ;
CODE_0DCE64:        BNE CODE_0DCE84           ;
CODE_0DCE66:        STA $29,x                 ;
CODE_0DCE68:        LDA $09                   ;
CODE_0DCE6A:        AND #$01                  ;
CODE_0DCE6C:        TAY                       ;
CODE_0DCE6D:        INY                       ;
CODE_0DCE6E:        STY $47,x                 ;
CODE_0DCE70:        DEY                       ;
CODE_0DCE71:        LDA $076A                 ;
CODE_0DCE74:        BEQ CODE_0DCE78           ;
CODE_0DCE76:        INY                       ;
CODE_0DCE77:        INY                       ;
CODE_0DCE78:        LDA DATA_0DCD6B,y               ;
CODE_0DCE7B:        STA $5E,x                 ;
CODE_0DCE7D:        RTS                       ;

CODE_0DCE7E:        JSR CODE_0DBF06           ;
CODE_0DCE81:        JMP CODE_0DBEA0           ;

CODE_0DCE84:        CMP #$0E                  ;
CODE_0DCE86:        BNE CODE_0DCE91           ;
CODE_0DCE88:        LDA $1C,x                 ;
CODE_0DCE8A:        CMP #$06                  ;
CODE_0DCE8C:        BNE CODE_0DCE91           ;
CODE_0DCE8E:        JSR CODE_0DCCEA           ;
CODE_0DCE91:        RTS                       ;

CODE_0DCE92:        JSR CODE_0DBF33           ;
CODE_0DCE95:        JMP CODE_0DBEA0           ;

CODE_0DCE98:        LDA $A1,x                 ;
CODE_0DCE9A:        ORA $043D,x               ;
CODE_0DCE9D:        BNE CODE_0DCEB4           ;
CODE_0DCE9F:        STA $041D,x               ;
CODE_0DCEA2:        LDA $0238,x               ;
CODE_0DCEA5:        CMP $0402,x               ;
CODE_0DCEA8:        BCS CODE_0DCEB4           ;
CODE_0DCEAA:        LDA $09                   ;
CODE_0DCEAC:        AND #$07                  ;
CODE_0DCEAE:        BNE CODE_0DCEB3           ;
CODE_0DCEB0:        INC $0238,x               ;
CODE_0DCEB3:        RTS                       ;

CODE_0DCEB4:        LDA $0238,x               ;
CODE_0DCEB7:        CMP $5E,x                 ;
CODE_0DCEB9:        BCC CODE_0DCEBE           ;
CODE_0DCEBB:        JMP CODE_0DBF16           ;

CODE_0DCEBE:        JMP CODE_0DBF12           ;

CODE_0DCEC1:        JSR CODE_0DCEE3           ;
CODE_0DCEC4:        JSR CODE_0DCF04           ;
CODE_0DCEC7:        LDY #$01                  ;
CODE_0DCEC9:        LDA $09                   ;
CODE_0DCECB:        AND #$03                  ;
CODE_0DCECD:        BNE CODE_0DCEE2           ;
CODE_0DCECF:        LDA $09                   ;
CODE_0DCED1:        AND #$40                  ;
CODE_0DCED3:        BNE CODE_0DCED7           ;
CODE_0DCED5:        LDY #$FF                  ;
CODE_0DCED7:        STY $00                   ;
CODE_0DCED9:        LDA $0238,x               ;
CODE_0DCEDC:        CLC                       ;
CODE_0DCEDD:        ADC $00                   ;
CODE_0DCEDF:        STA $0238,x               ;
CODE_0DCEE2:        RTS                       ;

CODE_0DCEE3:        LDA #$13                  ;
CODE_0DCEE5:        STA $01                   ;
CODE_0DCEE7:        LDA $09                   ;
CODE_0DCEE9:        AND #$03                  ;
CODE_0DCEEB:        BNE CODE_0DCEFA           ;
CODE_0DCEED:        LDY $5E,x                 ;
CODE_0DCEEF:        LDA $A1,x                 ;
CODE_0DCEF1:        LSR A                     ;
CODE_0DCEF2:        BCS CODE_0DCEFE           ;
CODE_0DCEF4:        CPY $01                   ;
CODE_0DCEF6:        BEQ CODE_0DCEFB           ;
CODE_0DCEF8:        INC $5E,x                 ;
CODE_0DCEFA:        RTS                       ;

CODE_0DCEFB:        INC $A1,x                 ;
CODE_0DCEFD:        RTS                       ;

CODE_0DCEFE:        TYA                       ;
CODE_0DCEFF:        BEQ CODE_0DCEFB           ;
CODE_0DCF01:        DEC $5E,x                 ;
CODE_0DCF03:        RTS                       ;

CODE_0DCF04:        LDA $5E,x                 ;
CODE_0DCF06:        PHA                       ;
CODE_0DCF07:        LDY #$01                  ;
CODE_0DCF09:        LDA $A1,x                 ;
CODE_0DCF0B:        AND #$02                  ;
CODE_0DCF0D:        BNE CODE_0DCF18           ;
CODE_0DCF0F:        LDA $5E,x                 ;
CODE_0DCF11:        EOR #$FF                  ;
CODE_0DCF13:        INC A                     ;
CODE_0DCF14:        STA $5E,x                 ;
CODE_0DCF16:        LDY #$02                  ;
CODE_0DCF18:        STY $47,x                 ;
CODE_0DCF1A:        JSR CODE_0DBEA0           ;
CODE_0DCF1D:        STA $00                   ;
CODE_0DCF1F:        PLA                       ;
CODE_0DCF20:        STA $5E,x                 ;
CODE_0DCF22:        RTS                       ;

DATA_0DCF23:        db $3F,$03

CODE_0DCF25:        LDA $29,x                 ;
CODE_0DCF27:        AND #$20                  ;
CODE_0DCF29:        BNE CODE_0DCF7E           ;
CODE_0DCF2B:        LDY $06CC                 ;
CODE_0DCF2E:        LDA $07B8,x               ;
CODE_0DCF31:        AND DATA_0DCF23,y               ;
CODE_0DCF34:        BNE CODE_0DCF48           ;
CODE_0DCF36:        TXA                       ;
CODE_0DCF37:        LSR A                     ;
CODE_0DCF38:        BCC CODE_0DCF3E           ;
CODE_0DCF3A:        LDY $46                   ;
CODE_0DCF3C:        BCS CODE_0DCF46           ;
CODE_0DCF3E:        LDY #$02                  ;
CODE_0DCF40:        JSR CODE_0DE828           ;
CODE_0DCF43:        BPL CODE_0DCF46           ;
CODE_0DCF45:        DEY                       ;
CODE_0DCF46:        STY $47,x                 ;
CODE_0DCF48:        JSR CODE_0DCF81           ;
CODE_0DCF4B:        LDA $0238,x               ;
CODE_0DCF4E:        SEC                       ;
CODE_0DCF4F:        SBC $043D,x               ;
CODE_0DCF52:        CMP #$20                  ;
CODE_0DCF54:        BCC CODE_0DCF59           ;
CODE_0DCF56:        STA $0238,x               ;
CODE_0DCF59:        LDY $47,x                 ;
CODE_0DCF5B:        DEY                       ;
CODE_0DCF5C:        BNE CODE_0DCF6E           ;
CODE_0DCF5E:        LDA $021A,x               ;
CODE_0DCF61:        CLC                       ;
CODE_0DCF62:        ADC $5E,x                 ;
CODE_0DCF64:        STA $021A,x               ;
CODE_0DCF67:        LDA $79,x                 ;
CODE_0DCF69:        ADC #$00                  ;
CODE_0DCF6B:        STA $79,x                 ;
CODE_0DCF6D:        RTS                       ;

CODE_0DCF6E:        LDA $021A,x               ;
CODE_0DCF71:        SEC                       ;
CODE_0DCF72:        SBC $5E,x                 ;
CODE_0DCF74:        STA $021A,x               ;
CODE_0DCF77:        LDA $79,x                 ;
CODE_0DCF79:        SBC #$00                  ;
CODE_0DCF7B:        STA $79,x                 ;
CODE_0DCF7D:        RTS                       ;

CODE_0DCF7E:        JMP CODE_0DBF2D           ;

CODE_0DCF81:        LDA $A1,x                 ;
CODE_0DCF83:        AND #$02                  ;
CODE_0DCF85:        BNE CODE_0DCFB8           ;
CODE_0DCF87:        LDA $09                   ;
CODE_0DCF89:        AND #$07                  ;
CODE_0DCF8B:        PHA                       ;
CODE_0DCF8C:        LDA $A1,x                 ;
CODE_0DCF8E:        LSR A                     ;
CODE_0DCF8F:        BCS CODE_0DCFA3           ;
CODE_0DCF91:        PLA                       ;
CODE_0DCF92:        BNE CODE_0DCFA2           ;
CODE_0DCF94:        INC $043D,x               ;
CODE_0DCF97:        LDA $043D,x               ;
CODE_0DCF9A:        STA $5E,x                 ;
CODE_0DCF9C:        CMP #$02                  ;
CODE_0DCF9E:        BNE CODE_0DCFA2           ;
CODE_0DCFA0:        INC $A1,x                 ;
CODE_0DCFA2:        RTS                       ;

CODE_0DCFA3:        PLA                    
CODE_0DCFA4:        BNE CODE_0DCFB7           ;
CODE_0DCFA6:        DEC $043D,x               ;
CODE_0DCFA9:        LDA $043D,x               ;
CODE_0DCFAC:        STA $5E,x                 ;
CODE_0DCFAE:        BNE CODE_0DCFB7           ;
CODE_0DCFB0:        INC $A1,x                 ;
CODE_0DCFB2:        LDA #$02                  ;
CODE_0DCFB4:        STA $07A2,x               ;
CODE_0DCFB7:        RTS                       ;

CODE_0DCFB8:        LDA $07A2,x               ;
CODE_0DCFBB:        BEQ CODE_0DCFC6           ;
CODE_0DCFBD:        LDA $09                   ;
CODE_0DCFBF:        LSR A                     ;
CODE_0DCFC0:        BCS CODE_0DCFC5           ;
CODE_0DCFC2:        INC $0238,x               ;
CODE_0DCFC5:        RTS                       ;

CODE_0DCFC6:        LDA $0238,x               ;
CODE_0DCFC9:        ADC #$10                  ;
CODE_0DCFCB:        CMP $0237                 ;
CODE_0DCFCE:        BCC CODE_0DCFBD           ;
CODE_0DCFD0:        LDA #$00                  ;
CODE_0DCFD2:        STA $A1,x                 ;
CODE_0DCFD4:        RTS                       ;

CODE_0DCFD5:        LDA $29,x                 ;
CODE_0DCFD7:        AND #$20                  ;
CODE_0DCFD9:        BEQ CODE_0DCFDE           ;
CODE_0DCFDB:        JMP CODE_0DBF33           ;

CODE_0DCFDE:        LDA #$E8                  ;
CODE_0DCFE0:        STA $5E,x                 ;
CODE_0DCFE2:        JMP CODE_0DBEA0           ;

DATA_0DCFE5:        db $40,$80,$04,$04

CODE_0DCFE9:        LDA $29,x                 ;
CODE_0DCFEB:        AND #$20                  ;
CODE_0DCFED:        BEQ CODE_0DCFF2           ;
CODE_0DCFEF:        JMP CODE_0DBF2D           ;

CODE_0DCFF2:        STA $03                   ;
CODE_0DCFF4:        LDA $1C,x                 ;
CODE_0DCFF6:        SEC                       ;
CODE_0DCFF7:        SBC #$0A                  ;
CODE_0DCFF9:        TAY                       ;
CODE_0DCFFA:        LDA DATA_0DCFE5,y               ;
CODE_0DCFFD:        STA $02                   ;
CODE_0DCFFF:        LDA $0402,x               ;
CODE_0DD002:        SEC                       ;
CODE_0DD003:        SBC $02                   ;
CODE_0DD005:        STA $0402,x               ;
CODE_0DD008:        LDA $021A,x               ;
CODE_0DD00B:        SBC #$00                  ;
CODE_0DD00D:        STA $021A,x               ;
CODE_0DD010:        LDA $79,x                 ;
CODE_0DD012:        SBC #$00                  ;
CODE_0DD014:        STA $79,x                 ;
CODE_0DD016:        LDA #$40                  ;
CODE_0DD018:        STA $02                   ;
CODE_0DD01A:        CPX #$02                  ;
CODE_0DD01C:        BCC CODE_0DD069           ;
CODE_0DD01E:        LDA $5E,x                 ;
CODE_0DD020:        CMP #$10                  ;
CODE_0DD022:        BCC CODE_0DD03B           ;
CODE_0DD024:        LDA $041D,x               ;
CODE_0DD027:        CLC                       ;
CODE_0DD028:        ADC $02                   ;
CODE_0DD02A:        STA $041D,x               ;
CODE_0DD02D:        LDA $0238,x               ;
CODE_0DD030:        ADC $03                   ;
CODE_0DD032:        STA $0238,x               ;
CODE_0DD035:        LDA $BC,x                 ;
CODE_0DD037:        ADC #$00                  ;
CODE_0DD039:        BRA CODE_0DD050           ;

CODE_0DD03B:        LDA $041D,x               ;
CODE_0DD03E:        SEC                       ;
CODE_0DD03F:        SBC $02                   ;
CODE_0DD041:        STA $041D,x               ;
CODE_0DD044:        LDA $0238,x               ;
CODE_0DD047:        SBC $03                   ;
CODE_0DD049:        STA $0238,x               ;
CODE_0DD04C:        LDA $BC,x                 ;
CODE_0DD04E:        SBC #$00                  ;
CODE_0DD050:        STA $BC,x                 ;
CODE_0DD052:        LDY #$00                  ;
CODE_0DD054:        LDA $0238,x               ;
CODE_0DD057:        SEC                       ;
CODE_0DD058:        SBC $043D,x               ;
CODE_0DD05B:        BPL CODE_0DD062           ;
CODE_0DD05D:        LDY #$10                  ;
CODE_0DD05F:        EOR #$FF                  ;
CODE_0DD061:        INC A                     ;
CODE_0DD062:        CMP #$0F                  ;
CODE_0DD064:        BCC CODE_0DD069           ;
CODE_0DD066:        TYA                       ;
CODE_0DD067:        STA $5E,x                 ;
CODE_0DD069:        RTS                       ;

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

CODE_0DD0DF:        JSR CODE_0DFDE1           ;
CODE_0DD0E2:        LDA $03D1                 ;
CODE_0DD0E5:        AND #$08                  ;
CODE_0DD0E7:        BNE CODE_0DD159           ;
CODE_0DD0E9:        LDA $0747                 ;
CODE_0DD0EC:        BNE CODE_0DD0F8           ;
CODE_0DD0EE:        LDA $0388,x               ;
CODE_0DD0F1:        JSR CODE_0DD7E4           ;
CODE_0DD0F4:        AND #$1F                  ;
CODE_0DD0F6:        STA $A1,x                 ;
CODE_0DD0F8:        LDA $A1,x                 ;
CODE_0DD0FA:        LDY $1C,x                 ;
CODE_0DD0FC:        CPY #$1F                  ;
CODE_0DD0FE:        BCC CODE_0DD10B           ;
CODE_0DD100:        CMP #$08                  ;
CODE_0DD102:        BEQ CODE_0DD108           ;
CODE_0DD104:        CMP #$18                  ;
CODE_0DD106:        BNE CODE_0DD10B           ;
CODE_0DD108:        INC A                     ;
CODE_0DD109:        STA $A1,x                 ;
CODE_0DD10B:        STA $EF                   ;
CODE_0DD10D:        JSR CODE_0DFD4F           ;
CODE_0DD110:        JSR CODE_0DD23C           ;
CODE_0DD113:        LDY $0B46,x               ;
CODE_0DD116:        LDA $03B9                 ;
CODE_0DD119:        STA $0901,y               ;
CODE_0DD11C:        STA $07                   ;
CODE_0DD11E:        LDA $03AE                 ;
CODE_0DD121:        STA $0900,y               ;
CODE_0DD124:        STA $06                   ;
CODE_0DD126:        LDA #$01                  ;
CODE_0DD128:        STA $00                   ;
CODE_0DD12A:        JSR CODE_0DD1B5           ;
CODE_0DD12D:        LDY #$05                  ;
CODE_0DD12F:        LDA $1C,x                 ;
CODE_0DD131:        CMP #$1F                  ;
CODE_0DD133:        BCC CODE_0DD137           ;
CODE_0DD135:        LDY #$0B                  ;
CODE_0DD137:        STY $ED                   ;
CODE_0DD139:        STZ $00                   ;
CODE_0DD13B:        LDA $EF                   ;
CODE_0DD13D:        JSR CODE_0DD23C           ;
CODE_0DD140:        JSR CODE_0DD15A           ;
CODE_0DD143:        LDA $00                   ;
CODE_0DD145:        CMP #$04                  ;
CODE_0DD147:        BNE CODE_0DD151           ;
CODE_0DD149:        LDY $06CF                 ;
CODE_0DD14C:        LDA $0B46,y               ;
CODE_0DD14F:        STA $06                   ;
CODE_0DD151:        INC $00                   ;
CODE_0DD153:        LDA $00                   ;
CODE_0DD155:        CMP $ED                   ;
CODE_0DD157:        BCC CODE_0DD13B           ;
CODE_0DD159:        RTS                       ;

CODE_0DD15A:        LDA $03                   ;
CODE_0DD15C:        STA $05                   ;
CODE_0DD15E:        LDY $06                   ;
CODE_0DD160:        LDA $01                   ;
CODE_0DD162:        LSR $05                   ;
CODE_0DD164:        BCS CODE_0DD169           ;
CODE_0DD166:        EOR #$FF                  ;
CODE_0DD168:        INC A                     ;
CODE_0DD169:        CLC                       ;
CODE_0DD16A:        ADC $03AE                 ;
CODE_0DD16D:        STA $0900,y               ;
CODE_0DD170:        STA $06                   ;
CODE_0DD172:        CMP $03AE                 ;
CODE_0DD175:        BCS CODE_0DD180           ;
CODE_0DD177:        LDA $03AE                 ;
CODE_0DD17A:        SEC                       ;
CODE_0DD17B:        SBC $06                   ;
CODE_0DD17D:        JMP CODE_0DD184           ;

CODE_0DD180:        SEC                       ;
CODE_0DD181:        SBC $03AE                 ;
CODE_0DD184:        CMP #$59                  ;
CODE_0DD186:        BCC CODE_0DD18C           ;
CODE_0DD188:        LDA #$F8                  ;
CODE_0DD18A:        BNE CODE_0DD1A0           ;
CODE_0DD18C:        LDA $03B9                 ;
CODE_0DD18F:        CMP #$F8                  ;
CODE_0DD191:        BEQ CODE_0DD1A0           ;
CODE_0DD193:        LDA $02                   ;
CODE_0DD195:        LSR $05                   ;
CODE_0DD197:        BCS CODE_0DD19C           ;
CODE_0DD199:        EOR #$FF                  ;
CODE_0DD19B:        INC A                     ;
CODE_0DD19C:        CLC                       ;
CODE_0DD19D:        ADC $03B9                 ;
CODE_0DD1A0:        STA $0901,y               ;
CODE_0DD1A3:        STA $07                   ;
CODE_0DD1A5:        CMP #$F0                  ;
CODE_0DD1A7:        BCC CODE_0DD1B0           ;
CODE_0DD1A9:        LDA #$01                  ;
CODE_0DD1AB:        STA $0D00,y               ;
CODE_0DD1AE:        BRA CODE_0DD1B5           ;

CODE_0DD1B0:        LDA #$00                  ;
CODE_0DD1B2:        STA $0D00,y               ;
CODE_0DD1B5:        JSR CODE_0DF47B           ;
CODE_0DD1B8:        TYA                       ;
CODE_0DD1B9:        PHA                       ;
CODE_0DD1BA:        LDA $07AF                 ;
CODE_0DD1BD:        ORA $0747                 ;
CODE_0DD1C0:        BNE CODE_0DD233           ;
CODE_0DD1C2:        STA $05                   ;
CODE_0DD1C4:        LDY $BB                   ;
CODE_0DD1C6:        DEY                       ;
CODE_0DD1C7:        BNE CODE_0DD233           ;
CODE_0DD1C9:        LDY $0237                 ;
CODE_0DD1CC:        LDA $0754                 ;
CODE_0DD1CF:        BNE CODE_0DD1D6           ;
CODE_0DD1D1:        LDA $0714                 ;
CODE_0DD1D4:        BEQ CODE_0DD1DF           ;
CODE_0DD1D6:        INC $05                   ;
CODE_0DD1D8:        INC $05                   ;
CODE_0DD1DA:        TYA                       ;
CODE_0DD1DB:        CLC                       ;
CODE_0DD1DC:        ADC #$18                  ;
CODE_0DD1DE:        TAY                       ;
CODE_0DD1DF:        TYA                       ;
CODE_0DD1E0:        SEC                       ;
CODE_0DD1E1:        SBC $07                   ;
CODE_0DD1E3:        BPL CODE_0DD1E8           ;
CODE_0DD1E5:        EOR #$FF                  ;
CODE_0DD1E7:        INC A                     ;
CODE_0DD1E8:        CMP #$08                  ;
CODE_0DD1EA:        BCS CODE_0DD206           ;
CODE_0DD1EC:        LDA $06                   ;
CODE_0DD1EE:        CMP #$F0                  ;
CODE_0DD1F0:        BCS CODE_0DD206           ;
CODE_0DD1F2:        LDA $03AD                 ;
CODE_0DD1F5:        CLC                       ;
CODE_0DD1F6:        ADC #$04                  ;
CODE_0DD1F8:        STA $04                   ;
CODE_0DD1FA:        SEC                       ;
CODE_0DD1FB:        SBC $06                   ;
CODE_0DD1FD:        BPL CODE_0DD202           ;
CODE_0DD1FF:        EOR #$FF                  ;
CODE_0DD201:        INC A                     ;
CODE_0DD202:        CMP #$08                  ;
CODE_0DD204:        BCC CODE_0DD21A           ;
CODE_0DD206:        LDA $05                   ;
CODE_0DD208:        CMP #$02                  ;
CODE_0DD20A:        BEQ CODE_0DD233           ;
CODE_0DD20C:        LDY $05                   ;
CODE_0DD20E:        LDA $0237                 ;
CODE_0DD211:        CLC                       ;
CODE_0DD212:        ADC DATA_0DD0DD,y               ;
CODE_0DD215:        INC $05                   ;
CODE_0DD217:        JMP CODE_0DD1E0           ;

CODE_0DD21A:        LDX #$01                  ;
CODE_0DD21C:        LDA $04                   ;
CODE_0DD21E:        CMP $06                   ;
CODE_0DD220:        BCS CODE_0DD223           ;
CODE_0DD222:        INX                       ;
CODE_0DD223:        TXA                       ;
CODE_0DD224:        LDX $9E                   ;
CODE_0DD226:        STA $47,x                 ;
CODE_0DD228:        LDX #$00                  ;
CODE_0DD22A:        LDA $00                   ;
CODE_0DD22C:        PHA                       ;
CODE_0DD22D:        JSR CODE_0DDE82           ;
CODE_0DD230:        PLA                       ;
CODE_0DD231:        STA $00                   ;
CODE_0DD233:        PLA                       ;
CODE_0DD234:        CLC                       ;
CODE_0DD235:        ADC #$04                  ;
CODE_0DD237:        STA $06                   ;
CODE_0DD239:        LDX $9E                   ;
CODE_0DD23B:        RTS                       ;

CODE_0DD23C:        PHA                       ;
CODE_0DD23D:        AND #$0F                  ;
CODE_0DD23F:        CMP #$09                  ;
CODE_0DD241:        BCC CODE_0DD246           ;
CODE_0DD243:        EOR #$0F                  ;
CODE_0DD245:        INC A                     ;
CODE_0DD246:        STA $01                   ;
CODE_0DD248:        LDY $00                   ;
CODE_0DD24A:        LDA DATA_0DD0D1,y               ;
CODE_0DD24D:        CLC                       ;
CODE_0DD24E:        ADC $01                   ;
CODE_0DD250:        TAY                       ;
CODE_0DD251:        LDA DATA_0DD06A,y               ;
CODE_0DD254:        STA $01                   ;
CODE_0DD256:        PLA                       ;
CODE_0DD257:        PHA                       ;
CODE_0DD258:        CLC                       ;
CODE_0DD259:        ADC #$08                  ;
CODE_0DD25B:        AND #$0F                  ;
CODE_0DD25D:        CMP #$09                  ;
CODE_0DD25F:        BCC CODE_0DD264           ;
CODE_0DD261:        EOR #$0F                  ;
CODE_0DD263:        INC A                     ;
CODE_0DD264:        STA $02                   ;
CODE_0DD266:        LDY $00                   ;
CODE_0DD268:        LDA DATA_0DD0D1,y               ;
CODE_0DD26B:        CLC                       ;
CODE_0DD26C:        ADC $02                   ;
CODE_0DD26E:        TAY                       ;
CODE_0DD26F:        LDA DATA_0DD06A,y               ;
CODE_0DD272:        STA $02                   ;
CODE_0DD274:        PLA                       ;
CODE_0DD275:        LSR A                     ;
CODE_0DD276:        LSR A                     ;
CODE_0DD277:        LSR A                     ;
CODE_0DD278:        TAY                       ;
CODE_0DD279:        LDA DATA_0DD0CD,y               ;
CODE_0DD27C:        STA $03                   ;
CODE_0DD27E:        RTS                       ;

DATA_0DD27F:        db $F8,$A0,$70,$BD,$00

DATA_0DD284:        db $00,$00,$00,$20,$20

CODE_0DD289:        LDA $29,x                 ;
CODE_0DD28B:        AND #$20                  ;
CODE_0DD28D:        BEQ CODE_0DD297           ;
CODE_0DD28F:        LDA #$20                  ;
CODE_0DD291:        STA $0257,x               ;
CODE_0DD294:        JMP CODE_0DBF33           ;

CODE_0DD297:        JSR CODE_0DBEA0           ;
CODE_0DD29A:        LDY #$0D                  ;
CODE_0DD29C:        LDA #$05                  ;
CODE_0DD29E:        JSR CODE_0DBF37           ;
CODE_0DD2A1:        LDA $043D,x               ;
CODE_0DD2A4:        LSR A                     ;
CODE_0DD2A5:        LSR A                     ;
CODE_0DD2A6:        LSR A                     ;
CODE_0DD2A7:        LSR A                     ;
CODE_0DD2A8:        TAY                       ;
CODE_0DD2A9:        LDA $0238,x               ;
CODE_0DD2AC:        SEC                       ;
CODE_0DD2AD:        SBC DATA_0DD27F,y               ;
CODE_0DD2B0:        BPL CODE_0DD2B5           ;
CODE_0DD2B2:        EOR #$FF                  ;
CODE_0DD2B4:        INC A                     ;
CODE_0DD2B5:        CMP #$08                  ;
CODE_0DD2B7:        BCS CODE_0DD2C4           ;
CODE_0DD2B9:        LDA $043D,x               ;
CODE_0DD2BC:        CLC                       ;
CODE_0DD2BD:        ADC #$10                  ;
CODE_0DD2BF:        LSR A                     ;
CODE_0DD2C0:        LSR A                     ;
CODE_0DD2C1:        LSR A                     ;
CODE_0DD2C2:        LSR A                     ;
CODE_0DD2C3:        TAY                       ;
CODE_0DD2C4:        LDA DATA_0DD284,y               ;
CODE_0DD2C7:        STA $0257,x               ;
CODE_0DD2CA:        RTS                       ;

DATA_0DD2CB:        db $15,$30,$40

CODE_0DD2CE:        LDA $29,x                 ;
CODE_0DD2D0:        AND #$20                  ;
CODE_0DD2D2:        BEQ CODE_0DD2D7           ;
CODE_0DD2D4:        JMP CODE_0DBF06           ;

CODE_0DD2D7:        LDA $29,x                 ;
CODE_0DD2D9:        BEQ CODE_0DD2E4           ;
CODE_0DD2DB:        STZ $A1,x                 ;
CODE_0DD2DD:        STZ $06CB                 ;
CODE_0DD2E0:        LDA #$10                  ;
CODE_0DD2E2:        BNE CODE_0DD2F7           ;
CODE_0DD2E4:        LDA #$12                  ;
CODE_0DD2E6:        STA $06CB                 ;
CODE_0DD2E9:        LDY #$02                  ;
CODE_0DD2EB:        LDA DATA_0DD2CB,y               ;
CODE_0DD2EE:        STA $0001,y               ;
CODE_0DD2F1:        DEY                       ;
CODE_0DD2F2:        BPL CODE_0DD2EB           ;
CODE_0DD2F4:        JSR CODE_0DD30E           ;
CODE_0DD2F7:        STA $5E,x                 ;
CODE_0DD2F9:        LDY #$01                  ;
CODE_0DD2FB:        LDA $A1,x                 ;
CODE_0DD2FD:        AND #$01                  ;
CODE_0DD2FF:        BNE CODE_0DD309           ;
CODE_0DD301:        LDA $5E,x                 ;
CODE_0DD303:        EOR #$FF                  ;
CODE_0DD305:        INC A                     ;
CODE_0DD306:        STA $5E,x                 ;
CODE_0DD308:        INY                       ;
CODE_0DD309:        STY $47,x                 ;
CODE_0DD30B:        JMP CODE_0DBEA0           ;

CODE_0DD30E:        LDY #$00                  ;
CODE_0DD310:        JSR CODE_0DE828           ;
CODE_0DD313:        BPL CODE_0DD31D           ;
CODE_0DD315:        INY                       ;
CODE_0DD316:        LDA $00                   ;
CODE_0DD318:        EOR #$FF                  ;
CODE_0DD31A:        INC A                     ;
CODE_0DD31B:        STA $00                   ;
CODE_0DD31D:        LDA $00                   ;
CODE_0DD31F:        CMP #$3C                  ;
CODE_0DD321:        BCC CODE_0DD33F           ;
CODE_0DD323:        LDA #$3C                  ;
CODE_0DD325:        STA $00                   ;
CODE_0DD327:        LDA $1C,x                 ;
CODE_0DD329:        CMP #$11                  ;
CODE_0DD32B:        BNE CODE_0DD33F           ;
CODE_0DD32D:        TYA                       ;
CODE_0DD32E:        CMP $A1,x                 ;
CODE_0DD330:        BEQ CODE_0DD33F           ;
CODE_0DD332:        LDA $A1,x                 ;
CODE_0DD334:        BEQ CODE_0DD33C           ;
CODE_0DD336:        DEC $5E,x                 ;
CODE_0DD338:        LDA $5E,x                 ;
CODE_0DD33A:        BNE CODE_0DD37A           ;
CODE_0DD33C:        TYA                       ;
CODE_0DD33D:        STA $A1,x                 ;
CODE_0DD33F:        LDA $00                   ;
CODE_0DD341:        AND #$3C                  ;
CODE_0DD343:        LSR A                     ;
CODE_0DD344:        LSR A                     ;
CODE_0DD345:        STA $00                   ;
CODE_0DD347:        LDY #$00                  ;
CODE_0DD349:        LDA $5D                   ;
CODE_0DD34B:        BEQ CODE_0DD371           ;
CODE_0DD34D:        LDA $0775                 ;
CODE_0DD350:        BEQ CODE_0DD371           ;
CODE_0DD352:        INY                       ;
CODE_0DD353:        LDA $5D                   ;
CODE_0DD355:        CMP #$19                  ;
CODE_0DD357:        BCC CODE_0DD361           ;
CODE_0DD359:        LDA $0775                 ;
CODE_0DD35C:        CMP #$02                  ;
CODE_0DD35E:        BCC CODE_0DD361           ;
CODE_0DD360:        INY                       ;
CODE_0DD361:        LDA $1C,x                 ;
CODE_0DD363:        CMP #$12                  ;
CODE_0DD365:        BNE CODE_0DD36B           ;
CODE_0DD367:        LDA $5D                   ;
CODE_0DD369:        BNE CODE_0DD371           ;
CODE_0DD36B:        LDA $A1,x                 ;
CODE_0DD36D:        BNE CODE_0DD371           ;
CODE_0DD36F:        LDY #$00                  ;
CODE_0DD371:        LDA $0001,y               ;
CODE_0DD374:        LDY $00                   ;
CODE_0DD376:        DEC A                     ;
CODE_0DD377:        DEY                       ;
CODE_0DD378:        BPL CODE_0DD376           ;
CODE_0DD37A:        RTS                       ;

DATA_0DD37B:        db $1A,$58,$98,$96,$94,$92,$90,$8E
                    db $8C,$8A,$88,$86,$84,$82,$80

CODE_0DD38A:        PHX                     
CODE_0DD38B:        LDX $0369                 ;
CODE_0DD38E:        DEX                       ;
CODE_0DD38F:        DEX                       ;
CODE_0DD390:        STX $0334                 ;
CODE_0DD393:        AND #$80                  ;
CODE_0DD395:        BEQ CODE_0DD3B8           ;
CODE_0DD397:        STZ $030D,x               ;
CODE_0DD39A:        LDA #$01                  ;
CODE_0DD39C:        STA $0300,x               ;
CODE_0DD39F:        LDA $04                   ;
CODE_0DD3A1:        AND #$1F                  ;
CODE_0DD3A3:        ASL A                     ;
CODE_0DD3A4:        ASL A                     ;
CODE_0DD3A5:        ASL A                     ;
CODE_0DD3A6:        STA $E4                   ;
CODE_0DD3A8:        LDA #$00                  ;
CODE_0DD3AA:        SEC                       ;
CODE_0DD3AB:        SBC $42                   ;
CODE_0DD3AD:        CLC                       ;
CODE_0DD3AE:        ADC $E4                   ;
CODE_0DD3B0:        STA $031A,x               ;
CODE_0DD3B3:        LDA #$03                  ;
CODE_0DD3B5:        STA $0327,x               ;
CODE_0DD3B8:        PLX                       ;
CODE_0DD3B9:        RTS                       ;

CODE_0DD3BA:        LDX $0368                 ;
CODE_0DD3BD:        LDA $1C,x                 ;
CODE_0DD3BF:        CMP #$2D                  ;
CODE_0DD3C1:        BNE CODE_0DD3D4           ;
CODE_0DD3C3:        STX $9E                   ;
CODE_0DD3C5:        LDA $29,x                 ;
CODE_0DD3C7:        BEQ CODE_0DD3ED           ;
CODE_0DD3C9:        AND #$40                  ;
CODE_0DD3CB:        BEQ CODE_0DD3D4           ;
CODE_0DD3CD:        LDA $0238,x               ;
CODE_0DD3D0:        CMP #$E0                  ;
CODE_0DD3D2:        BCC CODE_0DD3E7           ;
CODE_0DD3D4:        LDA $0095                 ;
CODE_0DD3D7:        BNE CODE_0DD3E1           ;
CODE_0DD3D9:        LDA #$0B                  ;
CODE_0DD3DB:        STA $1602                 ;
CODE_0DD3DE:        STA $0095                 ;
CODE_0DD3E1:        INC $0772                 ;
CODE_0DD3E4:        JMP CODE_0DD462           ;

CODE_0DD3E7:        JSR CODE_0DBF2D           ;
CODE_0DD3EA:        JMP CODE_0DD56E           ;

CODE_0DD3ED:        DEC $0364                 ;
CODE_0DD3F0:        BNE CODE_0DD441           ;
CODE_0DD3F2:        LDA #$04                  ;
CODE_0DD3F4:        STA $0364                 ;
CODE_0DD3F7:        LDA $0363                 ;
CODE_0DD3FA:        EOR #$01                  ;
CODE_0DD3FC:        STA $0363                 ;
CODE_0DD3FF:        LDA #$02                  ;
CODE_0DD401:        STA $05                   ;
CODE_0DD403:        LDY $0369                 ;
CODE_0DD406:        LDA DATA_0DD37B,y               ;
CODE_0DD409:        STA $04                   ;
CODE_0DD40B:        JSR CODE_0DD38A           ;
CODE_0DD40E:        LDY $1700                 ;
CODE_0DD411:        INY                       ;
CODE_0DD412:        LDX #$18                  ;
CODE_0DD414:        JSR CODE_0D90C6           ;
CODE_0DD417:        LDX $9E                   ;
CODE_0DD419:        JSR CODE_0D9085           ;
CODE_0DD41C:        LDA #$16                  ;
CODE_0DD41E:        STA $1603                 ;
CODE_0DD421:        LDA $0369                 ;
CODE_0DD424:        BNE CODE_0DD430           ;
CODE_0DD426:        LDA #$08                  ;
CODE_0DD428:        STA $014B                 ;
CODE_0DD42B:        LDA #$FF                  ;
CODE_0DD42D:        STA $0F4C                 ;
CODE_0DD430:        INC $0369                 ;
CODE_0DD433:        LDA $0369                 ;
CODE_0DD436:        CMP #$0F                  ;
CODE_0DD438:        BNE CODE_0DD441           ;
CODE_0DD43A:        JSR CODE_0DC5E1           ;
CODE_0DD43D:        LDA #$40                  ;
CODE_0DD43F:        STA $29,x                 ;
CODE_0DD441:        JMP CODE_0DD56E           ;

DATA_0DD444:        db $21,$41,$11,$31

CODE_0DD448:        LDA $29,x                 ;
CODE_0DD44A:        AND #$20                  ;
CODE_0DD44C:        BEQ CODE_0DD470           ;
CODE_0DD44E:        LDA $0238,x               ;
CODE_0DD451:        CMP #$E0                  ;
CODE_0DD453:        BCC CODE_0DD3E7           ;
CODE_0DD455:        LDA $0EC4                 ;
CODE_0DD458:        BNE CODE_0DD462           ;
CODE_0DD45A:        LDA $0201                 ;
CODE_0DD45D:        CMP #$02                  ;
CODE_0DD45F:        BEQ CODE_0DD462           ;
CODE_0DD461:        RTS                       ;

CODE_0DD462:        LDX #$08                  ;
CODE_0DD464:        JSR CODE_0DCCEA           ;
CODE_0DD467:        DEX                       ;
CODE_0DD468:        BPL CODE_0DD464           ;
CODE_0DD46A:        STA $06CB                 ;
CODE_0DD46D:        LDX $9E                   ;
CODE_0DD46F:        RTS                       ;

CODE_0DD470:        STZ $06CB                 ;
CODE_0DD473:        LDA $0747                 ;
CODE_0DD476:        BEQ CODE_0DD47B           ;
CODE_0DD478:        JMP CODE_0DD52B           ;

CODE_0DD47B:        LDA $0363                 ;
CODE_0DD47E:        BPL CODE_0DD483           ;
CODE_0DD480:        JMP CODE_0DD500           ;

CODE_0DD483:        DEC $0364                 ;
CODE_0DD486:        BNE CODE_0DD495           ;
CODE_0DD488:        LDA #$20                  ;
CODE_0DD48A:        STA $0364                 ;
CODE_0DD48D:        LDA $0363                 ;
CODE_0DD490:        EOR #$01                  ;
CODE_0DD492:        STA $0363                 ;
CODE_0DD495:        LDA $09                   ;
CODE_0DD497:        AND #$0F                  ;
CODE_0DD499:        BNE CODE_0DD49F           ;
CODE_0DD49B:        LDA #$02                  ;
CODE_0DD49D:        STA $47,x                 ;
CODE_0DD49F:        LDA $0792,x               ;
CODE_0DD4A2:        BEQ CODE_0DD4C1           ;
CODE_0DD4A4:        JSR CODE_0DE828           ;
CODE_0DD4A7:        BPL CODE_0DD4C1           ;
CODE_0DD4A9:        LDA #$01                  ;
CODE_0DD4AB:        STA $47,x                 ;
CODE_0DD4AD:        LDA #$02                  ;
CODE_0DD4AF:        STA $0365                 ;
CODE_0DD4B2:        LDA #$20                  ;
CODE_0DD4B4:        STA $0792,x               ;
CODE_0DD4B7:        STA $079C                 ;
CODE_0DD4BA:        LDA $021A,x               ;
CODE_0DD4BD:        CMP #$B0                  ;
CODE_0DD4BF:        BCS CODE_0DD500           ;
CODE_0DD4C1:        LDA $09                   ;
CODE_0DD4C3:        AND #$03                  ;
CODE_0DD4C5:        BNE CODE_0DD500           ;
CODE_0DD4C7:        LDA $021A,x               ;
CODE_0DD4CA:        CMP $0366                 ;
CODE_0DD4CD:        BNE CODE_0DD4DB           ;
CODE_0DD4CF:        LDA $07B7,x               ;
CODE_0DD4D2:        AND #$03                  ;
CODE_0DD4D4:        TAY                       ;
CODE_0DD4D5:        LDA DATA_0DD444,y               ;
CODE_0DD4D8:        STA $06DC                 ;
CODE_0DD4DB:        LDA $021A,x               ;
CODE_0DD4DE:        CLC                       ;
CODE_0DD4DF:        ADC $0365                 ;
CODE_0DD4E2:        STA $021A,x               ;
CODE_0DD4E5:        LDY $47,x                 ;
CODE_0DD4E7:        CPY #$01                  ;
CODE_0DD4E9:        BEQ CODE_0DD500           ;
CODE_0DD4EB:        LDY #$FF                  ;
CODE_0DD4ED:        SEC                       ;
CODE_0DD4EE:        SBC $0366                 ;
CODE_0DD4F1:        BPL CODE_0DD4F8           ;
CODE_0DD4F3:        EOR #$FF                  ;
CODE_0DD4F5:        INC A                     ;
CODE_0DD4F6:        LDY #$01                  ;
CODE_0DD4F8:        CMP $06DC                 ;
CODE_0DD4FB:        BCC CODE_0DD500           ;
CODE_0DD4FD:        STY $0365                 ;
CODE_0DD500:        LDA $0792,x               ;
CODE_0DD503:        BNE CODE_0DD52E           ;
CODE_0DD505:        JSR CODE_0DBF2D           ;
CODE_0DD508:        LDA $075F                 ;
CODE_0DD50B:        CMP #$05                  ;
CODE_0DD50D:        BCC CODE_0DD518           ;
CODE_0DD50F:        LDA $09                   ;
CODE_0DD511:        AND #$03                  ;
CODE_0DD513:        BNE CODE_0DD518           ;
CODE_0DD515:        JSR CODE_0DB961           ;
CODE_0DD518:        LDA $0238,x               ;
CODE_0DD51B:        CMP #$80                  ;
CODE_0DD51D:        BCC CODE_0DD53C           ;
CODE_0DD51F:        LDA $07B7,x               ;
CODE_0DD522:        AND #$03                  ;
CODE_0DD524:        TAY                       ;
CODE_0DD525:        LDA DATA_0DD444,y               ;
CODE_0DD528:        STA $0792,x               ;
CODE_0DD52B:        JMP CODE_0DD53C           ;

CODE_0DD52E:        CMP #$01                  ;
CODE_0DD530:        BNE CODE_0DD53C           ;
CODE_0DD532:        DEC $0238,x               ;
CODE_0DD535:        JSR CODE_0DC5E1           ;
CODE_0DD538:        LDA #$FE                  ;
CODE_0DD53A:        STA $A1,x                 ;
CODE_0DD53C:        LDA $075F                 ;
CODE_0DD53F:        CMP #$07                  ;
CODE_0DD541:        BEQ CODE_0DD547           ;
CODE_0DD543:        CMP #$05                  ;
CODE_0DD545:        BCS CODE_0DD56E           ;
CODE_0DD547:        LDA $079C                 ;
CODE_0DD54A:        BNE CODE_0DD56E           ;
CODE_0DD54C:        LDA #$20                  ;
CODE_0DD54E:        STA $079C                 ;
CODE_0DD551:        LDA $0363                 ;
CODE_0DD554:        EOR #$80                  ;
CODE_0DD556:        STA $0363                 ;
CODE_0DD559:        BMI CODE_0DD53C           ;
CODE_0DD55B:        JSR CODE_0DD5EA           ;
CODE_0DD55E:        LDY $06CC                 ;
CODE_0DD561:        BEQ CODE_0DD566           ;
CODE_0DD563:        SEC                       ;
CODE_0DD564:        SBC #$10                  ;
CODE_0DD566:        STA $079C                 ;
CODE_0DD569:        LDA #$15                  ;
CODE_0DD56B:        STA $06CB                 ;
CODE_0DD56E:        JSR CODE_0DD5C5           ;
CODE_0DD571:        LDY #$10                  ;
CODE_0DD573:        LDA $47,x                 ;
CODE_0DD575:        LSR A                     ;
CODE_0DD576:        BCC CODE_0DD57A           ;
CODE_0DD578:        LDY #$F0                  ;
CODE_0DD57A:        TYA                       ;
CODE_0DD57B:        CLC                       ;
CODE_0DD57C:        ADC $021A,x               ;
CODE_0DD57F:        LDY $06CF                 ;
CODE_0DD582:        STA $021A,y               ;
CODE_0DD585:        LDA $0238,x               ;
CODE_0DD588:        CLC                       ;
CODE_0DD589:        ADC #$08                  ;
CODE_0DD58B:        STA $0238,y               ;
CODE_0DD58E:        LDA $29,x                 ;
CODE_0DD590:        STA $0029,y               ;
CODE_0DD593:        LDA $47,x                 ;
CODE_0DD595:        STA $0047,y               ;
CODE_0DD598:        LDA $9E                   ;
CODE_0DD59A:        PHA                       ;
CODE_0DD59B:        LDX $06CF                 ;
CODE_0DD59E:        STX $9E                   ;
CODE_0DD5A0:        LDA $97                   ;
CODE_0DD5A2:        BNE CODE_0DD5B4           ;
CODE_0DD5A4:        LDA $0EC4                 ;
CODE_0DD5A7:        BEQ CODE_0DD5AD           ;
CODE_0DD5A9:        LDA #$05                  ;
CODE_0DD5AB:        BRA CODE_0DD5AF           ;

CODE_0DD5AD:        LDA #$04                  ;
CODE_0DD5AF:        STA $1602                 ;
CODE_0DD5B2:        STA $97                   ;
CODE_0DD5B4:        LDA #$2D                  ;
CODE_0DD5B6:        STA $1C,x                 ;
CODE_0DD5B8:        LDA #$20                  ;
CODE_0DD5BA:        STA $0257,x               ;
CODE_0DD5BD:        PLA                       ;
CODE_0DD5BE:        STA $9E                   ;
CODE_0DD5C0:        TAX                       ;
CODE_0DD5C1:        STZ $036A                 ;
CODE_0DD5C4:        RTS                       ;

CODE_0DD5C5:        INC $036A                 ;
CODE_0DD5C8:        JSR CODE_0DCC11           ;
CODE_0DD5CB:        LDA $29,x                 ;
CODE_0DD5CD:        BNE CODE_0DD5C4           ;
CODE_0DD5CF:        LDA #$0A                  ;
CODE_0DD5D1:        STA $0490,x               ;
CODE_0DD5D4:        JSR CODE_0DE948           ;
CODE_0DD5D7:        LDA $0770                 ;
CODE_0DD5DA:        CMP #$02                  ;
CODE_0DD5DC:        BEQ CODE_0DD5E1           ;
CODE_0DD5DE:        JMP CODE_0DDD7D           ;

CODE_0DD5E1:        RTS                       ;

DATA_0DD5E2:        db $BF,$40,$BF,$BF,$BF,$40,$40,$BF

CODE_0DD5EA:        LDY $0367                 ;
CODE_0DD5ED:        INC $0367                 ;
CODE_0DD5F0:        LDA $0367                 ;
CODE_0DD5F3:        AND #$07                  ;
CODE_0DD5F5:        STA $0367                 ;
CODE_0DD5F8:        LDA DATA_0DD5E2,y               ;
CODE_0DD5FB:        RTS                       ;

CODE_0DD5FC:        CPX $0F4D                 ;
CODE_0DD5FF:        BNE CODE_0DD60D           ;
CODE_0DD601:        LDA $0F4C                 ;
CODE_0DD604:        BEQ CODE_0DD60D           ;
CODE_0DD606:        LDA $014B                 ;
CODE_0DD609:        CMP #$06                  ;
CODE_0DD60B:        BEQ CODE_0DD651           ;
CODE_0DD60D:        LDA $0747                 ;
CODE_0DD610:        BNE CODE_0DD646           ;
CODE_0DD612:        LDA #$40                  ;
CODE_0DD614:        LDY $06CC                 ;
CODE_0DD617:        BEQ CODE_0DD61B           ;
CODE_0DD619:        LDA #$60                  ;
CODE_0DD61B:        STA $00                   ;
CODE_0DD61D:        LDA $0402,x               ;
CODE_0DD620:        SEC                       ;
CODE_0DD621:        SBC $00                   ;
CODE_0DD623:        STA $0402,x               ;
CODE_0DD626:        LDA $021A,x               ;
CODE_0DD629:        SBC #$01                  ;
CODE_0DD62B:        STA $021A,x               ;
CODE_0DD62E:        LDA $79,x                 ;
CODE_0DD630:        SBC #$00                  ;
CODE_0DD632:        STA $79,x                 ;
CODE_0DD634:        LDY $041D,x               ;
CODE_0DD637:        LDA $0238,x               ;
CODE_0DD63A:        CMP DATA_0DC851,y               ;
CODE_0DD63D:        BEQ CODE_0DD646           ;
CODE_0DD63F:        CLC                       ;
CODE_0DD640:        ADC $043D,x               ;
CODE_0DD643:        STA $0238,x               ;
CODE_0DD646:        JSR CODE_0DFD4F           ;
CODE_0DD649:        LDA $29,x                 ;
CODE_0DD64B:        BNE CODE_0DD5FB           ;
CODE_0DD64D:        JSL CODE_0FD3E9           ;
CODE_0DD651:        RTS                       ;

CODE_0DD652:        DEC $A1,x                 ;
CODE_0DD654:        BNE CODE_0DD66D           ;
CODE_0DD656:        LDA #$08                  ;
CODE_0DD658:        STA $A1,x                 ;
CODE_0DD65A:        INC $5E,x                 ;
CODE_0DD65C:        LDA $5E,x                 ;
CODE_0DD65E:        CMP #$01                  ;
CODE_0DD660:        BNE CODE_0DD669           ;
CODE_0DD662:        LDA #$29                  ;
CODE_0DD664:        STA $1600                 ;
CODE_0DD667:        BRA CODE_0DD66D           ;

CODE_0DD669:        CMP #$04                  ;
CODE_0DD66B:        BCS CODE_0DD685           ;
CODE_0DD66D:        JSR CODE_0DFD4F           ;
CODE_0DD670:        LDA $03B9                 ;
CODE_0DD673:        STA $03BA                 ;
CODE_0DD676:        LDA $03AE                 ;
CODE_0DD679:        STA $03AF                 ;
CODE_0DD67C:        LDY $0B46,x               ;
CODE_0DD67F:        LDA $5E,x                 ;
CODE_0DD681:        JSR CODE_0DF538           ;
CODE_0DD684:        RTS                       ;

CODE_0DD685:        STZ $10,x                 ;
CODE_0DD687:        LDY $0B46,x               ;
CODE_0DD68A:        LDA #$03                  ;
CODE_0DD68C:        STA $0D00,y               ;
CODE_0DD68F:        STA $0D04,y               ;
CODE_0DD692:        STA $0D08,y               ;
CODE_0DD695:        STA $0D0C,y               ;
CODE_0DD698:        LDA #$05                  ;
CODE_0DD69A:        STA $0149                 ;
CODE_0DD69D:        JMP CODE_0DD70E           ;

CODE_0DD6A0:        STZ $06CB                 ;
CODE_0DD6A3:        LDA $0746                 ;
CODE_0DD6A6:        CMP #$05                  ;
CODE_0DD6A8:        BCS CODE_0DD6E9           ;
CODE_0DD6AA:        JSR CODE_0D9693           ;

PNTR_0DD6AD:        dw CODE_0DD6E9
                    dw CODE_0DD6B7
                    dw CODE_0DD6F4
                    dw CODE_0DD71F
                    dw CODE_0DD772

CODE_0DD6B7:        LDA $07EB                 ;
CODE_0DD6BA:        CMP $07DF                 ;
CODE_0DD6BD:        BNE CODE_0DD6CF           ;
CODE_0DD6BF:        AND #$01                  ;
CODE_0DD6C1:        BEQ CODE_0DD6C9           ;
CODE_0DD6C3:        LDY #$03                  ;
CODE_0DD6C5:        LDA #$03                  ;
CODE_0DD6C7:        BNE CODE_0DD6D3           ;
CODE_0DD6C9:        LDY #$00                  ;
CODE_0DD6CB:        LDA #$06                  ;
CODE_0DD6CD:        BNE CODE_0DD6D3           ;
CODE_0DD6CF:        LDY #$00                  ;
CODE_0DD6D1:        LDA #$FF                  ;
CODE_0DD6D3:        STA $06D7                 ;
CODE_0DD6D6:        STY $29,x                 ;
CODE_0DD6D8:        LDA $2143                 ;
CODE_0DD6DB:        AND #$7F                  ;
CODE_0DD6DD:        CMP #$4B                  ;
CODE_0DD6DF:        BEQ CODE_0DD6E6           ;
CODE_0DD6E1:        LDA #$4B                  ;
CODE_0DD6E3:        STA $1603                 ;
CODE_0DD6E6:        INC $0746                 ;
CODE_0DD6E9:        RTS                       ;

CODE_0DD6EA:        LDA #$4C                  ;
CODE_0DD6EC:        STA $1603                 ;
CODE_0DD6EF:        STA $0E1A                 ;
CODE_0DD6F2:        BRA CODE_0DD6E6           ;

CODE_0DD6F4:        LDA $07E9                 ;
CODE_0DD6F7:        ORA $07EA                 ;
CODE_0DD6FA:        ORA $07EB                 ;
CODE_0DD6FD:        BEQ CODE_0DD6EA           ;
CODE_0DD6FF:        LDY #$23                  ;
CODE_0DD701:        LDA #$FF                  ;
CODE_0DD703:        STA $014A                 ;
CODE_0DD706:        JSR CODE_0D98AA           ;
CODE_0DD709:        LDA #$05                  ;
CODE_0DD70B:        STA $014A                 ;
CODE_0DD70E:        LDY #$0B                  ;
CODE_0DD710:        JSR CODE_0D98AA           ;
CODE_0DD713:        LDA $0753                 ;
CODE_0DD716:        ASL A                     ;
CODE_0DD717:        ASL A                     ;
CODE_0DD718:        ASL A                     ;
CODE_0DD719:        ASL A                     ;
CODE_0DD71A:        ORA #$04                  ;
CODE_0DD71C:        JMP CODE_0DBB30           ;

CODE_0DD71F:        LDA #$01                  ;
CODE_0DD721:        STA $1B                   ;
CODE_0DD723:        LDA $0238,x               ;
CODE_0DD726:        CMP #$72                  ;
CODE_0DD728:        BCC CODE_0DD72F           ;
CODE_0DD72A:        DEC $0238,x               ;
CODE_0DD72D:        BRA CODE_0DD73B           ;

CODE_0DD72F:        LDA $06D7                 ;
CODE_0DD732:        BEQ CODE_0DD766           ;
CODE_0DD734:        BMI CODE_0DD766           ;
CODE_0DD736:        LDA #$16                  ;
CODE_0DD738:        STA $06CB                 ;
CODE_0DD73B:        JSR CODE_0DFD4F           ;
CODE_0DD73E:        LDY $0B46,x               ;
CODE_0DD741:        LDA $03B9                 ;
CODE_0DD744:        STA $0901,y               ;
CODE_0DD747:        LDA $09                   ;
CODE_0DD749:        AND #$18                  ;
CODE_0DD74B:        LSR A                     ;
CODE_0DD74C:        LSR A                     ;
CODE_0DD74D:        CLC                       ;
CODE_0DD74E:        ADC #$04                  ;
CODE_0DD750:        STA $0902,y               ;
CODE_0DD753:        LDA #$0B                  ;
CODE_0DD755:        STA $0903,y               ;
CODE_0DD758:        LDA $03AE                 ;
CODE_0DD75B:        STA $0900,y               ;
CODE_0DD75E:        LDA #$02                  ;
CODE_0DD760:        STA $0D00,y               ;
CODE_0DD763:        LDX $9E                   ;
CODE_0DD765:        RTS                       ;

CODE_0DD766:        JSR CODE_0DD73B           ;
CODE_0DD769:        LDA #$06                  ;
CODE_0DD76B:        STA $07A2,x               ;
CODE_0DD76E:        INC $0746                 ;
CODE_0DD771:        RTS                       ;

CODE_0DD772:        JSR CODE_0DD73B           ;
CODE_0DD775:        LDA $07A2,x               ;
CODE_0DD778:        BNE CODE_0DD77F           ;
CODE_0DD77A:        LDA $07B1                 ;
CODE_0DD77D:        BEQ CODE_0DD76E           ;
CODE_0DD77F:        RTS                       ;

CODE_0DD780:        LDA $29,x                 ;
CODE_0DD782:        BNE CODE_0DD7DE           ;
CODE_0DD784:        LDA $0792,x               ;
CODE_0DD787:        BNE CODE_0DD7DE           ;
CODE_0DD789:        LDA $A1,x                 ;
CODE_0DD78B:        BNE CODE_0DD7AD           ;
CODE_0DD78D:        LDA $5E,x                 ;
CODE_0DD78F:        BMI CODE_0DD7A4           ;
CODE_0DD791:        JSR CODE_0DE828           ;
CODE_0DD794:        BPL CODE_0DD79D           ;
CODE_0DD796:        LDA $00                   ;
CODE_0DD798:        EOR #$FF                  ;
CODE_0DD79A:        INC A                     ;
CODE_0DD79B:        STA $00                   ;
CODE_0DD79D:        LDA $00                   ;
CODE_0DD79F:        CMP $0F25                 ;
CODE_0DD7A2:        BCC CODE_0DD7DE           ;
CODE_0DD7A4:        LDA $5E,x                 ;
CODE_0DD7A6:        EOR #$FF                  ;
CODE_0DD7A8:        INC A                     ;
CODE_0DD7A9:        STA $5E,x                 ;
CODE_0DD7AB:        INC $A1,x                 ;
CODE_0DD7AD:        LDA $043D,x               ;
CODE_0DD7B0:        LDY $5E,x                 ;
CODE_0DD7B2:        BPL CODE_0DD7B7           ;
CODE_0DD7B4:        LDA $041D,x               ;
CODE_0DD7B7:        STA $00                   ;
CODE_0DD7B9:        LDA $0F24                 ;
CODE_0DD7BC:        CMP #$2C                  ;
CODE_0DD7BE:        BEQ CODE_0DD7C5           ;
CODE_0DD7C0:        LDA $09                   ;
CODE_0DD7C2:        LSR A                     ;
CODE_0DD7C3:        BCC CODE_0DD7DE           ;
CODE_0DD7C5:        LDA $0747                 ;
CODE_0DD7C8:        BNE CODE_0DD7DE           ;
CODE_0DD7CA:        LDA $0238,x               ;
CODE_0DD7CD:        CLC                       ;
CODE_0DD7CE:        ADC $5E,x                 ;
CODE_0DD7D0:        STA $0238,x               ;
CODE_0DD7D3:        CMP $00                   ;
CODE_0DD7D5:        BNE CODE_0DD7DE           ;
CODE_0DD7D7:        STZ $A1,x                 ;
CODE_0DD7D9:        LDA #$40                  ;
CODE_0DD7DB:        STA $0792,x               ;
CODE_0DD7DE:        LDA #$00                  ;
CODE_0DD7E0:        STA $0257,x               ;
CODE_0DD7E3:        RTS                       ;

CODE_0DD7E4:        STA $07                   ;
CODE_0DD7E6:        LDA $0203,x               ;
CODE_0DD7E9:        BNE CODE_0DD7F9           ;
CODE_0DD7EB:        LDY #$18                  ;
CODE_0DD7ED:        LDA $5E,x                 ;
CODE_0DD7EF:        CLC                       ;
CODE_0DD7F0:        ADC $07                   ;
CODE_0DD7F2:        STA $5E,x                 ;
CODE_0DD7F4:        LDA $A1,x                 ;
CODE_0DD7F6:        ADC #$00                  ;
CODE_0DD7F8:        RTS                       ;

CODE_0DD7F9:        LDY #$08                  ;
CODE_0DD7FB:        LDA $5E,x                 ;
CODE_0DD7FD:        SEC                       ;
CODE_0DD7FE:        SBC $07                   ;
CODE_0DD800:        STA $5E,x                 ;
CODE_0DD802:        LDA $A1,x                 ;
CODE_0DD804:        SBC #$00                  ;
CODE_0DD806:        RTS                       ;

CODE_0DD807:        LDA $BC,x                 ;
CODE_0DD809:        CMP #$03                  ;
CODE_0DD80B:        BNE CODE_0DD810           ;
CODE_0DD80D:        JMP CODE_0DCCEA           ;

CODE_0DD810:        LDA $29,x                 ;
CODE_0DD812:        BPL CODE_0DD815           ;
CODE_0DD814:        RTS                       ;

CODE_0DD815:        TAY                       ;
CODE_0DD816:        LDA $001C,y               ;
CODE_0DD819:        CMP #$24                  ;
CODE_0DD81B:        BNE CODE_0DD814           ;
CODE_0DD81D:        LDA $03A2,x               ;
CODE_0DD820:        STA $00                   ;
CODE_0DD822:        LDA $47,x                 ;
CODE_0DD824:        BEQ CODE_0DD829           ;
CODE_0DD826:        JMP CODE_0DDA34           ;

CODE_0DD829:        LDA #$2D                  ;
CODE_0DD82B:        CMP $0238,x               ;
CODE_0DD82E:        BCC CODE_0DD840           ;
CODE_0DD830:        CPY $00                   ;
CODE_0DD832:        BEQ CODE_0DD83D           ;
CODE_0DD834:        CLC                       ;
CODE_0DD835:        ADC #$02                  ;
CODE_0DD837:        STA $0238,x               ;
CODE_0DD83A:        JMP CODE_0DDA2A           ;

CODE_0DD83D:        JMP CODE_0DDA11           ;

CODE_0DD840:        CMP $0238,y               ;
CODE_0DD843:        BCC CODE_0DD852           ;
CODE_0DD845:        CPX $00                   ;
CODE_0DD847:        BEQ CODE_0DD83D           ;
CODE_0DD849:        CLC                       ;
CODE_0DD84A:        ADC #$02                  ;
CODE_0DD84C:        STA $0238,y               ;
CODE_0DD84F:        JMP CODE_0DDA2A           ;

CODE_0DD852:        LDA $0238,x               ;
CODE_0DD855:        PHA                       ;
CODE_0DD856:        LDA $03A2,x               ;
CODE_0DD859:        BPL CODE_0DD873           ;
CODE_0DD85B:        LDA $043D,x               ;
CODE_0DD85E:        CLC                       ;
CODE_0DD85F:        ADC #$05                  ;
CODE_0DD861:        STA $00                   ;
CODE_0DD863:        LDA $A1,x                 ;
CODE_0DD865:        ADC #$00                  ;
CODE_0DD867:        BMI CODE_0DD883           ;
CODE_0DD869:        BNE CODE_0DD877           ;
CODE_0DD86B:        LDA $00                   ;
CODE_0DD86D:        CMP #$0B                  ;
CODE_0DD86F:        BCC CODE_0DD87D           ;
CODE_0DD871:        BCS CODE_0DD877           ;
CODE_0DD873:        CMP $9E                   ;
CODE_0DD875:        BEQ CODE_0DD883           ;
CODE_0DD877:        JSR CODE_0DBF5A           ;
CODE_0DD87A:        JMP CODE_0DD886           ;

CODE_0DD87D:        JSR CODE_0DDA2A           ;
CODE_0DD880:        JMP CODE_0DD886           ;

CODE_0DD883:        JSR CODE_0DBF56           ;
CODE_0DD886:        LDY $29,x                 ;
CODE_0DD888:        PLA                       ;
CODE_0DD889:        SEC                       ;
CODE_0DD88A:        SBC $0238,x               ;
CODE_0DD88D:        CLC                       ;
CODE_0DD88E:        ADC $0238,y               ;
CODE_0DD891:        STA $0238,y               ;
CODE_0DD894:        LDA $03A2,x               ;
CODE_0DD897:        BMI CODE_0DD89D           ;
CODE_0DD899:        TAX                       ;
CODE_0DD89A:        JSR CODE_0DE21B           ;
CODE_0DD89D:        LDY $9E                   ;
CODE_0DD89F:        LDA $00A1,y               ;
CODE_0DD8A2:        ORA $043D,y               ;
CODE_0DD8A5:        BNE CODE_0DD8AA           ;
CODE_0DD8A7:        JMP CODE_0DD9B9           ;

CODE_0DD8AA:        LDA $00A1,y               ;
CODE_0DD8AD:        PHA                       ;
CODE_0DD8AE:        PHA                       ;
CODE_0DD8AF:        PHA                       ;
CODE_0DD8B0:        JSR CODE_0DD9BC           ;
CODE_0DD8B3:        LDA $42                   ;
CODE_0DD8B5:        LSR A                     ;
CODE_0DD8B6:        LSR A                     ;
CODE_0DD8B7:        LSR A                     ;
CODE_0DD8B8:        STA $F3                   ;
CODE_0DD8BA:        LDA $43                   ;
CODE_0DD8BC:        AND #$01                  ;
CODE_0DD8BE:        ASL A                     ;
CODE_0DD8BF:        ASL A                     ;
CODE_0DD8C0:        ORA #$20                  ;
CODE_0DD8C2:        STA $F4                   ;
CODE_0DD8C4:        LDA $F3                   ;
CODE_0DD8C6:        CLC                       ;
CODE_0DD8C7:        ADC #$1F                  ;
CODE_0DD8C9:        TAX                       ;
CODE_0DD8CA:        AND #$1F                  ;
CODE_0DD8CC:        STA $F5                   ;
CODE_0DD8CE:        TXA                       ;
CODE_0DD8CF:        AND #$20                  ;
CODE_0DD8D1:        BEQ CODE_0DD8D9           ;
CODE_0DD8D3:        LDA $F4                   ;
CODE_0DD8D5:        EOR #$04                  ;
CODE_0DD8D7:        STA $F6                   ;
CODE_0DD8D9:        REP #$30                  ;
CODE_0DD8DB:        LDA $00                   ;
CODE_0DD8DD:        AND #$241F                ;
CODE_0DD8E0:        CMP $F3                   ;
CODE_0DD8E2:        BCS CODE_0DD8EB           ;
CODE_0DD8E4:        CMP $F5                   ;
CODE_0DD8E6:        BCC CODE_0DD8EB           ;
CODE_0DD8E8:        JMP CODE_0DD944           ;

CODE_0DD8EB:        TYA                       ;
CODE_0DD8EC:        AND #$00FF                ;
CODE_0DD8EF:        TAY                       ;
CODE_0DD8F0:        LDX $1700                 ;
CODE_0DD8F3:        LDA $00                   ;
CODE_0DD8F5:        AND #$1FFF                ;
CODE_0DD8F8:        XBA                       ;
CODE_0DD8F9:        STA $1702,x               ;
CODE_0DD8FC:        LDA #$0300                ;
CODE_0DD8FF:        STA $1704,x               ;
CODE_0DD902:        LDA $00A1,y               ;
CODE_0DD905:        AND #$0080                ;
CODE_0DD908:        BNE CODE_0DD92D           ;
CODE_0DD90A:        LDA $1702,x               ;
CODE_0DD90D:        AND #$F003                ;
CODE_0DD910:        CMP #$A000                ;
CODE_0DD913:        BEQ CODE_0DD91A           ;
CODE_0DD915:        CMP #$B000                ;
CODE_0DD918:        BNE CODE_0DD91F           ;
CODE_0DD91A:        LDA #$185C                ;
CODE_0DD91D:        BRA CODE_0DD922           ;

CODE_0DD91F:        LDA #$10A2                ;
CODE_0DD922:        STA $1706,x               ;
CODE_0DD925:        LDA #$18A3                ;
CODE_0DD928:        STA $1708,x               ;
CODE_0DD92B:        BRA CODE_0DD936           ;

CODE_0DD92D:        LDA #$0024                ;
CODE_0DD930:        STA $1706,x               ;
CODE_0DD933:        STA $1708,x               ;
CODE_0DD936:        LDA #$FFFF                ;
CODE_0DD939:        STA $170A,x               ;
CODE_0DD93C:        TXA                       ;
CODE_0DD93D:        CLC                       ;
CODE_0DD93E:        ADC #$0008                ;
CODE_0DD941:        STA $1700                 ;
CODE_0DD944:        SEP #$30                  ;
CODE_0DD946:        LDA $0029,y               ;
CODE_0DD949:        TAY                       ;
CODE_0DD94A:        PLA                       ;
CODE_0DD94B:        EOR #$FF                  ;
CODE_0DD94D:        JSR CODE_0DD9BC           ;
CODE_0DD950:        REP #$30                  ;
CODE_0DD952:        LDA $00                   ;
CODE_0DD954:        AND #$241F                ;
CODE_0DD957:        CMP $F3                   ;
CODE_0DD959:        BCS CODE_0DD962           ;
CODE_0DD95B:        CMP $F5                   ;
CODE_0DD95D:        BCC CODE_0DD962           ;
CODE_0DD95F:        JMP CODE_0DD9B6           ;

CODE_0DD962:        LDX $1700                 ;
CODE_0DD965:        LDA $00                   ;
CODE_0DD967:        AND #$1FFF                ;
CODE_0DD96A:        XBA                       ;
CODE_0DD96B:        STA $1702,x               ;
CODE_0DD96E:        LDA #$0300                ;
CODE_0DD971:        STA $1704,x               ;
CODE_0DD974:        PLA                       ;
CODE_0DD975:        AND #$0080                ;
CODE_0DD978:        BEQ CODE_0DD99D           ;
CODE_0DD97A:        LDA #$10A2                ;
CODE_0DD97D:        STA $1706,x               ;
CODE_0DD980:        LDA $1702,x               ;
CODE_0DD983:        AND #$F003                ;
CODE_0DD986:        CMP #$A000                ;
CODE_0DD989:        BEQ CODE_0DD990           ;
CODE_0DD98B:        CMP #$B000                ;
CODE_0DD98E:        BNE CODE_0DD995           ;
CODE_0DD990:        LDA #$183F                ;
CODE_0DD993:        BRA CODE_0DD998           ;

CODE_0DD995:        LDA #$18A3                ;
CODE_0DD998:        STA $1708,x               ;
CODE_0DD99B:        BRA CODE_0DD9A6           ;

CODE_0DD99D:        LDA #$0024                ;
CODE_0DD9A0:        STA $1706,x               ;
CODE_0DD9A3:        STA $1708,x               ;
CODE_0DD9A6:        LDA #$FFFF                ;
CODE_0DD9A9:        STA $170A,x               ;
CODE_0DD9AC:        TXA                       ;
CODE_0DD9AD:        CLC                       ;
CODE_0DD9AE:        ADC #$0008                ;
CODE_0DD9B1:        STA $1700                 ;
CODE_0DD9B4:        BRA CODE_0DD9B7           ;

CODE_0DD9B6:        PLA                       ;
CODE_0DD9B7:        SEP #$30                  ;
CODE_0DD9B9:        LDX $9E                   ;
CODE_0DD9BB:        RTS                       ;

CODE_0DD9BC:        PHA                       ;
CODE_0DD9BD:        LDA $021A,y               ;
CODE_0DD9C0:        CLC                       ;
CODE_0DD9C1:        ADC #$08                  ;
CODE_0DD9C3:        LDX $06CC                 ;
CODE_0DD9C6:        BNE CODE_0DD9CB           ;
CODE_0DD9C8:        CLC                       ;
CODE_0DD9C9:        ADC #$10                  ;
CODE_0DD9CB:        PHA                       ;
CODE_0DD9CC:        LDA $0079,y               ;
CODE_0DD9CF:        ADC #$00                  ;
CODE_0DD9D1:        STA $02                   ;
CODE_0DD9D3:        PLA                       ;
CODE_0DD9D4:        AND #$F0                  ;
CODE_0DD9D6:        LSR A                     ;
CODE_0DD9D7:        LSR A                     ;
CODE_0DD9D8:        LSR A                     ;
CODE_0DD9D9:        STA $00                   ;
CODE_0DD9DB:        LDX $0238,y               ;
CODE_0DD9DE:        PLA                       ;
CODE_0DD9DF:        BPL CODE_0DD9E6           ;
CODE_0DD9E1:        TXA                       ;
CODE_0DD9E2:        CLC                       ;
CODE_0DD9E3:        ADC #$08                  ;
CODE_0DD9E5:        TAX                       ;
CODE_0DD9E6:        TXA                       ;
CODE_0DD9E7:        ASL A                     ;
CODE_0DD9E8:        ROL A                     ;
CODE_0DD9E9:        PHA                       ;
CODE_0DD9EA:        ROL A                     ;
CODE_0DD9EB:        AND #$03                  ;
CODE_0DD9ED:        ORA #$20                  ;
CODE_0DD9EF:        STA $01                   ;
CODE_0DD9F1:        LDA $02                   ;
CODE_0DD9F3:        AND #$01                  ;
CODE_0DD9F5:        ASL A                     ;
CODE_0DD9F6:        ASL A                     ;
CODE_0DD9F7:        ORA $01                   ;
CODE_0DD9F9:        STA $01                   ;
CODE_0DD9FB:        PLA                       ;
CODE_0DD9FC:        AND #$E0                  ;
CODE_0DD9FE:        CLC                       ;
CODE_0DD9FF:        ADC $00                   ;
CODE_0DDA01:        STA $00                   ;
CODE_0DDA03:        LDA $0238,y               ;
CODE_0DDA06:        CMP #$E8                  ;
CODE_0DDA08:        BCC CODE_0DDA10           ;
CODE_0DDA0A:        LDA $00                   ;
CODE_0DDA0C:        AND #$BF                  ;
CODE_0DDA0E:        STA $00                   ;
CODE_0DDA10:        RTS                       ;

CODE_0DDA11:        TYX                       ;
CODE_0DDA12:        JSR CODE_0DFDE1           ;
CODE_0DDA15:        LDA #$06                  ;
CODE_0DDA17:        JSR CODE_0DDFC3           ;
CODE_0DDA1A:        LDA $03AD                 ;
CODE_0DDA1D:        STA $011A,x               ;
CODE_0DDA20:        LDA $0237                 ;
CODE_0DDA23:        STA $0124,x               ;
CODE_0DDA26:        LDA #$01                  ;
CODE_0DDA28:        STA $47,x                 ;
CODE_0DDA2A:        JSR CODE_0DC5E1           ;
CODE_0DDA2D:        STA $00A1,y               ;
CODE_0DDA30:        STA $043D,y               ;
CODE_0DDA33:        RTS                       ;

CODE_0DDA34:        TYA                       ;
CODE_0DDA35:        PHA                       ;
CODE_0DDA36:        JSR CODE_0DBF0E           ;
CODE_0DDA39:        PLA                       ;
CODE_0DDA3A:        TAX                       ;
CODE_0DDA3B:        JSR CODE_0DBF0E           ;
CODE_0DDA3E:        LDX $9E                   ;
CODE_0DDA40:        LDA $03A2,x               ;
CODE_0DDA43:        BMI CODE_0DDA49           ;
CODE_0DDA45:        TAX                       ;
CODE_0DDA46:        JSR CODE_0DE21B           ;
CODE_0DDA49:        LDX $9E                   ;
CODE_0DDA4B:        RTS                       ;

CODE_0DDA4C:        LDA $A1,x                 ;
CODE_0DDA4E:        ORA $043D,x               ;
CODE_0DDA51:        BNE CODE_0DDA69           ;
CODE_0DDA53:        STA $041D,x               ;
CODE_0DDA56:        LDA $0238,x               ;
CODE_0DDA59:        CMP $0402,x               ;
CODE_0DDA5C:        BCS CODE_0DDA69           ;
CODE_0DDA5E:        LDA $09                   ;
CODE_0DDA60:        AND #$07                  ;
CODE_0DDA62:        BNE CODE_0DDA67           ;
CODE_0DDA64:        INC $0238,x               ;
CODE_0DDA67:        BRA CODE_0DDA79           ;

CODE_0DDA69:        LDA $0238,x               ;
CODE_0DDA6C:        CMP $5E,x                 ;
CODE_0DDA6E:        BCC CODE_0DDA76           ;
CODE_0DDA70:        JSR CODE_0DBF5A           ;
CODE_0DDA73:        JMP CODE_0DDA79           ;

CODE_0DDA76:        JSR CODE_0DBF56           ;
CODE_0DDA79:        LDA $03A2,x               ;
CODE_0DDA7C:        BMI CODE_0DDA81           ;
CODE_0DDA7E:        JSR CODE_0DE21B           ;
CODE_0DDA81:        RTS                       ;

CODE_0DDA82:        LDA #$0E                  ;
CODE_0DDA84:        JSR CODE_0DCEE5           ;
CODE_0DDA87:        JSR CODE_0DCF04           ;
CODE_0DDA8A:        LDA $03A2,x               ;
CODE_0DDA8D:        BMI CODE_0DDAAC           ;
CODE_0DDA8F:        LDA $0219                 ;
CODE_0DDA92:        CLC                       ;
CODE_0DDA93:        ADC $00                   ;
CODE_0DDA95:        STA $0219                 ;
CODE_0DDA98:        LDA $78                   ;
CODE_0DDA9A:        LDY $00                   ;
CODE_0DDA9C:        BMI CODE_0DDAA2           ;
CODE_0DDA9E:        ADC #$00                  ;
CODE_0DDAA0:        BRA CODE_0DDAA4           ;

CODE_0DDAA2:        SBC #$00                  ;
CODE_0DDAA4:        STA $78                   ;
CODE_0DDAA6:        STY $03A1                 ;
CODE_0DDAA9:        JSR CODE_0DE21B           ;
CODE_0DDAAC:        RTS                       ;

CODE_0DDAAD:        LDA $03A2,x               ;
CODE_0DDAB0:        BMI CODE_0DDAB8           ;
CODE_0DDAB2:        JSR CODE_0DBF29           ;
CODE_0DDAB5:        JSR CODE_0DE21B           ;
CODE_0DDAB8:        RTS                       ;

CODE_0DDAB9:        JSR CODE_0DBEA0           ;
CODE_0DDABC:        STA $00                   ;
CODE_0DDABE:        LDA $03A2,x               ;
CODE_0DDAC1:        BMI CODE_0DDACA           ;
CODE_0DDAC3:        LDA #$10                  ;
CODE_0DDAC5:        STA $5E,x                 ;
CODE_0DDAC7:        JSR CODE_0DDA8F           ;
CODE_0DDACA:        RTS                       ;

CODE_0DDACB:        JSR CODE_0DDAD6           ;
CODE_0DDACE:        JMP CODE_0DDA79           ;

CODE_0DDAD1:        JSR CODE_0DDAD6           ;
CODE_0DDAD4:        BRA CODE_0DDAEE           ;

CODE_0DDAD6:        LDA $0747                 ;
CODE_0DDAD9:        BNE CODE_0DDAFB           ;
CODE_0DDADB:        LDA $041D,x               ;
CODE_0DDADE:        CLC                       ;
CODE_0DDADF:        ADC $043D,x               ;
CODE_0DDAE2:        STA $041D,x               ;
CODE_0DDAE5:        LDA $0238,x               ;
CODE_0DDAE8:        ADC $A1,x                 ;
CODE_0DDAEA:        STA $0238,x               ;
CODE_0DDAED:        RTS                       ;

CODE_0DDAEE:        LDA $03A2,x               ;
CODE_0DDAF1:        BEQ CODE_0DDAFB           ;
CODE_0DDAF3:        CMP #$FF                  ;
CODE_0DDAF5:        BNE CODE_0DDAF8           ;
CODE_0DDAF7:        RTS                       ;

CODE_0DDAF8:        JSR CODE_0DE20C           ;
CODE_0DDAFB:        RTS                       ;

CODE_0DDAFC:        LDA $1C,x                 ;
CODE_0DDAFE:        CMP #$14                  ;
CODE_0DDB00:        BEQ CODE_0DDB62           ;
CODE_0DDB02:        LDA $071C                 ;
CODE_0DDB05:        LDY $1C,x                 ;
CODE_0DDB07:        CPY #$05                  ;
CODE_0DDB09:        BEQ CODE_0DDB13           ;
CODE_0DDB0B:        CPY #$04                  ;
CODE_0DDB0D:        BEQ CODE_0DDB13           ;
CODE_0DDB0F:        CPY #$0D                  ;
CODE_0DDB11:        BNE CODE_0DDB15           ;
CODE_0DDB13:        ADC #$38                  ;
CODE_0DDB15:        SBC #$48                  ;
CODE_0DDB17:        STA $01                   ;
CODE_0DDB19:        LDA $071A                 ;
CODE_0DDB1C:        SBC #$00                  ;
CODE_0DDB1E:        STA $00                   ;
CODE_0DDB20:        LDA $071D                 ;
CODE_0DDB23:        CLC                       ;
CODE_0DDB24:        ADC #$48                  ;
CODE_0DDB26:        STA $03                   ;
CODE_0DDB28:        LDA $071B                 ;
CODE_0DDB2B:        ADC #$00                  ;
CODE_0DDB2D:        STA $02                   ;
CODE_0DDB2F:        LDA $021A,x               ;
CODE_0DDB32:        CMP $01                   ;
CODE_0DDB34:        LDA $79,x                 ;
CODE_0DDB36:        SBC $00                   ;
CODE_0DDB38:        BMI CODE_0DDB5F           ;
CODE_0DDB3A:        LDA $021A,x               ;
CODE_0DDB3D:        CMP $03                   ;
CODE_0DDB3F:        LDA $79,x                 ;
CODE_0DDB41:        SBC $02                   ;
CODE_0DDB43:        BMI CODE_0DDB62           ;
CODE_0DDB45:        LDA $29,x                 ;
CODE_0DDB47:        CMP #$05                  ;
CODE_0DDB49:        BEQ CODE_0DDB62           ;
CODE_0DDB4B:        CPY #$0D                  ;
CODE_0DDB4D:        BEQ CODE_0DDB62           ;
CODE_0DDB4F:        CPY #$04                  ;
CODE_0DDB51:        BEQ CODE_0DDB62           ;
CODE_0DDB53:        CPY #$30                  ;
CODE_0DDB55:        BEQ CODE_0DDB62           ;
CODE_0DDB57:        CPY #$31                  ;
CODE_0DDB59:        BEQ CODE_0DDB62           ;
CODE_0DDB5B:        CPY #$32                  ;
CODE_0DDB5D:        BEQ CODE_0DDB62           ;
CODE_0DDB5F:        JSR CODE_0DCCEA           ;
CODE_0DDB62:        RTS                       ;

CODE_0DDB63:        LDA $0EC4                 ;
CODE_0DDB66:        BEQ CODE_0DDB6E           ;
CODE_0DDB68:        INC $0201                 ;
CODE_0DDB6B:        STZ $0F4C                 ;
CODE_0DDB6E:        LDA #$2D                  ;
CODE_0DDB70:        RTS                       ;

DATA_0DDB71:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_0DDB80:        LDA $33,x                 ;
CODE_0DDB82:        BEQ CODE_0DDBDC           ;
CODE_0DDB84:        ASL A                     ;
CODE_0DDB85:        BCS CODE_0DDBDC           ;
CODE_0DDB87:        LDA $09                   ;
CODE_0DDB89:        LSR A                     ;
CODE_0DDB8A:        BCS CODE_0DDBDC           ;
CODE_0DDB8C:        TXA                       ;
CODE_0DDB8D:        ASL A                     ;
CODE_0DDB8E:        ASL A                     ;
CODE_0DDB8F:        CLC                       ;
CODE_0DDB90:        ADC #$2C                  ;
CODE_0DDB92:        TAY                       ;
CODE_0DDB93:        LDX #$08                  ;
CODE_0DDB95:        STX $01                   ;
CODE_0DDB97:        TYA                       ;
CODE_0DDB98:        PHA                       ;
CODE_0DDB99:        LDA $29,x                 ;
CODE_0DDB9B:        AND #$20                  ;
CODE_0DDB9D:        BNE CODE_0DDBD5           ;
CODE_0DDB9F:        LDA $10,x                 ;
CODE_0DDBA1:        BEQ CODE_0DDBD5           ;
CODE_0DDBA3:        LDA $1C,x                 ;
CODE_0DDBA5:        CMP #$24                  ;
CODE_0DDBA7:        BCC CODE_0DDBAD           ;
CODE_0DDBA9:        CMP #$2B                  ;
CODE_0DDBAB:        BCC CODE_0DDBD5           ;
CODE_0DDBAD:        CMP #$06                  ;
CODE_0DDBAF:        BNE CODE_0DDBB7           ;
CODE_0DDBB1:        LDA $29,x                 ;
CODE_0DDBB3:        CMP #$02                  ;
CODE_0DDBB5:        BCS CODE_0DDBD5           ;
CODE_0DDBB7:        LDA $03D9,x               ;
CODE_0DDBBA:        BNE CODE_0DDBD5           ;
CODE_0DDBBC:        STX $E4                   ;
CODE_0DDBBE:        TXA                       ;
CODE_0DDBBF:        ASL A                     ;
CODE_0DDBC0:        ASL A                     ;
CODE_0DDBC1:        CLC                       ;
CODE_0DDBC2:        ADC #$04                  ;
CODE_0DDBC4:        TAX                       ;
CODE_0DDBC5:        JSR CODE_0DEA35           ;
CODE_0DDBC8:        LDX $9E                   ;
CODE_0DDBCA:        BCC CODE_0DDBD5           ;
CODE_0DDBCC:        LDA #$80                  ;
CODE_0DDBCE:        STA $33,x                 ;
CODE_0DDBD0:        LDX $01                   ;
CODE_0DDBD2:        JSR CODE_0DDBEC           ;
CODE_0DDBD5:        PLA                       ;
CODE_0DDBD6:        TAY                       ;
CODE_0DDBD7:        LDX $01                   ;
CODE_0DDBD9:        DEX                       ;
CODE_0DDBDA:        BPL CODE_0DDB95           ;
CODE_0DDBDC:        LDX $9E                   ;
CODE_0DDBDE:        RTS                       ;

DATA_0DDBDF:        db $06,$00,$02,$12,$11,$07,$05,$2D
                    db $2D,$01,$0A,$08,$2D

CODE_0DDBEC:        JSR CODE_0DFD4F
CODE_0DDBEF:        LDA #$03                  ;
CODE_0DDBF1:        STA $1600                 ;
CODE_0DDBF4:        LDX $01                   ;
CODE_0DDBF6:        LDA $10,x                 ;
CODE_0DDBF8:        BPL CODE_0DDC05           ;
CODE_0DDBFA:        AND #$0F                  ;
CODE_0DDBFC:        TAX                       ;
CODE_0DDBFD:        LDA $1C,x                 ;
CODE_0DDBFF:        CMP #$2D                  ;
CODE_0DDC01:        BEQ CODE_0DDC12           ;
CODE_0DDC03:        LDX $01                   ;
CODE_0DDC05:        LDA $1C,x                 ;
CODE_0DDC07:        CMP #$02                  ;
CODE_0DDC09:        BNE CODE_0DDC0E           ;
CODE_0DDC0B:        JMP CODE_0DDCD8           ;

CODE_0DDC0E:        CMP #$2D                  ;
CODE_0DDC10:        BNE CODE_0DDC8C           ;
CODE_0DDC12:        LDA #$08                  ;
CODE_0DDC14:        STA $014B                 ;
CODE_0DDC17:        LDA #$18                  ;
CODE_0DDC19:        STA $0F4C                 ;
CODE_0DDC1C:        DEC $0283                 ;
CODE_0DDC1F:        BEQ CODE_0DDC36           ;
CODE_0DDC21:        LDA $0283                 ;
CODE_0DDC24:        CMP #$01                  ;
CODE_0DDC26:        BEQ CODE_0DDC2B           ;
CODE_0DDC28:        JMP CODE_0DDCD8           ;

CODE_0DDC2B:        STZ $03CA                 ;
CODE_0DDC2E:        LDA #$01                  ;
CODE_0DDC30:        STA $03CB                 ;
CODE_0DDC33:        JMP CODE_0DDCD8           ;

CODE_0DDC36:        LDA #$08                  ;
CODE_0DDC38:        STA $014B                 ;
CODE_0DDC3B:        LDA #$FF                  ;
CODE_0DDC3D:        STA $0F4C                 ;
CODE_0DDC40:        JSR CODE_0DC5E1           ;
CODE_0DDC43:        STA $5E,x                 ;
CODE_0DDC45:        STZ $06CB                 ;
CODE_0DDC48:        LDA #$FE                  ;
CODE_0DDC4A:        STA $A1,x                 ;
CODE_0DDC4C:        LDY $075F                 ;
CODE_0DDC4F:        LDA DATA_0DDBDF,y               ;
CODE_0DDC52:        STA $1C,x                 ;
CODE_0DDC54:        STX $02FC                 ;
CODE_0DDC57:        INC $02FC                 ;
CODE_0DDC5A:        CMP #$2D                  ;
CODE_0DDC5C:        BEQ CODE_0DDC7C           ;
CODE_0DDC5E:        PHX                       ;
CODE_0DDC5F:        LDA $DB                   ;
CODE_0DDC61:        CMP #$21                  ;
CODE_0DDC63:        BEQ CODE_0DDC7B           ;
CODE_0DDC65:        STX $0077                 ;
CODE_0DDC68:        INC $0077                 ;
CODE_0DDC6B:        LDX #$08                  ;
CODE_0DDC6D:        LDA $1C,x                 ;
CODE_0DDC6F:        DEX                       ;
CODE_0DDC70:        BMI CODE_0DDC7B           ;
CODE_0DDC72:        CMP #$2D                  ;
CODE_0DDC74:        BNE CODE_0DDC6D           ;
CODE_0DDC76:        INX                       ;
CODE_0DDC77:        STZ $10,x                 ;
CODE_0DDC79:        STZ $1C,x                 ;
CODE_0DDC7B:        PLX                       ;
CODE_0DDC7C:        LDA #$20                  ;
CODE_0DDC7E:        CPY #$03                  ;
CODE_0DDC80:        BCS CODE_0DDC84           ;
CODE_0DDC82:        ORA #$03                  ;
CODE_0DDC84:        STA $29,x                 ;
CODE_0DDC86:        LDX $01                   ;
CODE_0DDC88:        LDA #$09                  ;
CODE_0DDC8A:        BNE CODE_0DDCCC           ;
CODE_0DDC8C:        CMP #$08                  ;
CODE_0DDC8E:        BEQ CODE_0DDCD8           ;
CODE_0DDC90:        CMP #$0C                  ;
CODE_0DDC92:        BEQ CODE_0DDCD8           ;
CODE_0DDC94:        CMP #$15                  ;
CODE_0DDC96:        BCS CODE_0DDCD8           ;
CODE_0DDC98:        LDA $1C,x                 ;
CODE_0DDC9A:        CMP #$04                  ;
CODE_0DDC9C:        BEQ CODE_0DDCA2           ;
CODE_0DDC9E:        CMP #$0D                  ;
CODE_0DDCA0:        BNE CODE_0DDCB1           ;
CODE_0DDCA2:        TAY                       ;
CODE_0DDCA3:        LDA $0238,x               ;
CODE_0DDCA6:        ADC #$18                  ;
CODE_0DDCA8:        CPY #$04                  ;
CODE_0DDCAA:        BNE CODE_0DDCAE           ;
CODE_0DDCAC:        SBC #$31                  ;
CODE_0DDCAE:        STA $0238,x               ;
CODE_0DDCB1:        JSR CODE_0DE6E7           ;
CODE_0DDCB4:        LDA $29,x                 ;
CODE_0DDCB6:        AND #$1F                  ;
CODE_0DDCB8:        ORA #$20                  ;
CODE_0DDCBA:        STA $29,x                 ;
CODE_0DDCBC:        LDA #$02                  ;
CODE_0DDCBE:        LDY $1C,x                 ;
CODE_0DDCC0:        CPY #$05                  ;
CODE_0DDCC2:        BNE CODE_0DDCC6           ;
CODE_0DDCC4:        LDA #$06                  ;
CODE_0DDCC6:        CPY #$06                  ;
CODE_0DDCC8:        BNE CODE_0DDCCC           ;
CODE_0DDCCA:        LDA #$01                  ;
CODE_0DDCCC:        JSR CODE_0DDFC3           ;
CODE_0DDCCF:        CMP #$03                  ;
CODE_0DDCD1:        BEQ CODE_0DDCD8           ;
CODE_0DDCD3:        LDA #$03                  ;
CODE_0DDCD5:        STA $1600                 ;
CODE_0DDCD8:        RTS                       ;

CODE_0DDCD9:        LDA $09                   ;
CODE_0DDCDB:        LSR A                     ;
CODE_0DDCDC:        BCC CODE_0DDD17           ;
CODE_0DDCDE:        LDA $03D0                 ;
CODE_0DDCE1:        ORA $0747                 ;
CODE_0DDCE4:        ORA $03D6                 ;
CODE_0DDCE7:        BNE CODE_0DDD17           ;
CODE_0DDCE9:        TXA                       ;
CODE_0DDCEA:        ASL A                     ;
CODE_0DDCEB:        ASL A                     ;
CODE_0DDCEC:        CLC                       ;
CODE_0DDCED:        ADC #$34                  ;
CODE_0DDCEF:        TAY                       ;
CODE_0DDCF0:        JSR CODE_0DEA33           ;
CODE_0DDCF3:        LDX $9E                   ;
CODE_0DDCF5:        BCC CODE_0DDD12           ;
CODE_0DDCF7:        LDA $06BE,x               ;
CODE_0DDCFA:        BNE CODE_0DDD17           ;
CODE_0DDCFC:        LDA #$01                  ;
CODE_0DDCFE:        STA $06BE,x               ;
CODE_0DDD01:        LDA $6E,x                 ;
CODE_0DDD03:        EOR #$FF                  ;
CODE_0DDD05:        CLC                       ;
CODE_0DDD06:        ADC #$01                  ;
CODE_0DDD08:        STA $6E,x                 ;
CODE_0DDD0A:        LDA $07AF                 ;
CODE_0DDD0D:        BNE CODE_0DDD17           ;
CODE_0DDD0F:        JMP CODE_0DDE82           ;

CODE_0DDD12:        LDA #$00                  ;
CODE_0DDD14:        STA $06BE,x               ;
CODE_0DDD17:        RTS                       ;

CODE_0DDD18:        JSR CODE_0DCCED           ;
CODE_0DDD1B:        LDA $020C                 ;
CODE_0DDD1E:        CMP #$04                  ;
CODE_0DDD20:        BNE CODE_0DDD25           ;
CODE_0DDD22:        JMP CODE_0DDE82           ;

CODE_0DDD25:        LDA #$06                  ;
CODE_0DDD27:        JSR CODE_0DDF94           ;
CODE_0DDD2A:        LDA #$0A                  ;
CODE_0DDD2C:        STA $1600                 ;
CODE_0DDD2F:        LDA $020C                 ;
CODE_0DDD32:        CMP #$02                  ;
CODE_0DDD34:        BCC CODE_0DDD45           ;
CODE_0DDD36:        CMP #$03                  ;
CODE_0DDD38:        BEQ CODE_0DDD5F           ;
CODE_0DDD3A:        LDA #$23                  ;
CODE_0DDD3C:        STA $07AF                 ;
CODE_0DDD3F:        LDA #$0D                  ;
CODE_0DDD41:        STA $1602                 ;
CODE_0DDD44:        RTS                       ;

CODE_0DDD45:        LDA $0756                 ;
CODE_0DDD48:        BEQ CODE_0DDD6A           ;
CODE_0DDD4A:        CMP #$01                  ;
CODE_0DDD4C:        BNE CODE_0DDD76           ;
CODE_0DDD4E:        LDX $9E                   ;
CODE_0DDD50:        LDA #$02                  ;
CODE_0DDD52:        STA $0756                 ;
CODE_0DDD55:        JSL CODE_0E98C3           ;
CODE_0DDD59:        LDX $9E                   ;
CODE_0DDD5B:        LDA #$0C                  ;
CODE_0DDD5D:        BRA CODE_0DDD71           ;

CODE_0DDD5F:        LDA #$0B                  ;
CODE_0DDD61:        STA $0110,x               ;
CODE_0DDD64:        LDA #$00                  ;
CODE_0DDD66:        STA $1600                 ;
CODE_0DDD69:        RTS                       ;

CODE_0DDD6A:        LDA #$01                  ;
CODE_0DDD6C:        STA $0756                 ;
CODE_0DDD6F:        LDA #$09                  ;
CODE_0DDD71:        LDY #$00                  ;
CODE_0DDD73:        JSR CODE_0DDEA4           ;
CODE_0DDD76:        RTS                       ;

DATA_0DDD77:        db $18,$E8

DATA_0DDD79:        db $30,$D0

DATA_0DDD7B:        db $08,$F8

CODE_0DDD7D:        LDA $09                   ;
CODE_0DDD7F:        LSR A                     ;
CODE_0DDD80:        BCS CODE_0DDD76           ;
CODE_0DDD82:        JSR CODE_0DE247           ;
CODE_0DDD85:        BCS CODE_0DDDBD           ;
CODE_0DDD87:        CPX #$09                  ;
CODE_0DDD89:        BNE CODE_0DDD94           ;
CODE_0DDD8B:        LDA $03AE                 ;
CODE_0DDD8E:        BPL CODE_0DDD94           ;
CODE_0DDD90:        CMP #$F4                  ;
CODE_0DDD92:        BCS CODE_0DDD99           ;
CODE_0DDD94:        LDA $03D9,x               ;
CODE_0DDD97:        BNE CODE_0DDDBD           ;
CODE_0DDD99:        LDA $0F                   ;
CODE_0DDD9B:        CMP #$08                  ;
CODE_0DDD9D:        BNE CODE_0DDDBD           ;
CODE_0DDD9F:        LDA $29,x                 ;
CODE_0DDDA1:        AND #$20                  ;
CODE_0DDDA3:        BNE CODE_0DDDBD           ;
CODE_0DDDA5:        LDA $29,x                 ;
CODE_0DDDA7:        AND #$20                  ;
CODE_0DDDA9:        BNE CODE_0DDDBD           ;
CODE_0DDDAB:        JSR CODE_0DE251           ;
CODE_0DDDAE:        JSR CODE_0DEA33           ;
CODE_0DDDB1:        LDX $9E                   ;
CODE_0DDDB3:        BCS CODE_0DDDBE           ;
CODE_0DDDB5:        LDA $0481,x               ;
CODE_0DDDB8:        AND #$FE                  ;
CODE_0DDDBA:        STA $0481,x               ;
CODE_0DDDBD:        RTS                       ;

CODE_0DDDBE:        LDY $1C,x                 ;
CODE_0DDDC0:        CPY #$2E                  ;
CODE_0DDDC2:        BNE CODE_0DDDC7           ;
CODE_0DDDC4:        JMP CODE_0DDD18           ;

CODE_0DDDC7:        LDA $07AF                 ;
CODE_0DDDCA:        BEQ CODE_0DDDD2           ;
CODE_0DDDCC:        JMP CODE_0DDC98           ;

DATA_0DDDCF:        db $0A,$06,$04

CODE_0DDDD2:        LDA $0481,x               ;
CODE_0DDDD5:        AND #$01                  ;
CODE_0DDDD7:        ORA $03D9,x               ;
CODE_0DDDDA:        BNE CODE_0DDE49           ;
CODE_0DDDDC:        LDA #$01                  ;
CODE_0DDDDE:        ORA $0481,x               ;
CODE_0DDDE1:        STA $0481,x               ;
CODE_0DDDE4:        CPY #$12                  ;
CODE_0DDDE6:        BEQ CODE_0DDE4A           ;
CODE_0DDDE8:        CPY #$33                  ;
CODE_0DDDEA:        BEQ CODE_0DDE4A           ;
CODE_0DDDEC:        CPY #$0D                  ;
CODE_0DDDEE:        BNE CODE_0DDDF3           ;
CODE_0DDDF0:        JMP CODE_0DDE82           ;

CODE_0DDDF3:        CPY #$04                  ;
CODE_0DDDF5:        BNE CODE_0DDDFA           ;
CODE_0DDDF7:        JMP CODE_0DDE82           ;

CODE_0DDDFA:        CPY #$0C                  ;
CODE_0DDDFC:        BNE CODE_0DDE01           ;
CODE_0DDDFE:        JMP CODE_0DDE82           ;

CODE_0DDE01:        CPY #$15                  ;
CODE_0DDE03:        BCS CODE_0DDE82           ;
CODE_0DDE05:        LDA $5C                   ;
CODE_0DDE07:        BEQ CODE_0DDE82           ;
CODE_0DDE09:        LDA $29,x                 ;
CODE_0DDE0B:        ASL A                     ;
CODE_0DDE0C:        BCS CODE_0DDE4A           ;
CODE_0DDE0E:        LDA $29,x                 ;
CODE_0DDE10:        AND #$07                  ;
CODE_0DDE12:        CMP #$02                  ;
CODE_0DDE14:        BCC CODE_0DDE4A           ;
CODE_0DDE16:        LDA $1C,x                 ;
CODE_0DDE18:        CMP #$06                  ;
CODE_0DDE1A:        BEQ CODE_0DDE49           ;
CODE_0DDE1C:        LDA #$03                  ;
CODE_0DDE1E:        STA $1600                 ;
CODE_0DDE21:        JSL CODE_0FE0AC           ;
CODE_0DDE25:        STZ $0F40,x               ;
CODE_0DDE28:        LDA $29,x                 ;
CODE_0DDE2A:        ORA #$80                  ;
CODE_0DDE2C:        STA $29,x                 ;
CODE_0DDE2E:        JSR CODE_0DDF88           ;
CODE_0DDE31:        LDA DATA_0DDD79,y               ;
CODE_0DDE34:        STA $5E,x                 ;
CODE_0DDE36:        LDA #$03                  ;
CODE_0DDE38:        CLC                       ;
CODE_0DDE39:        ADC $0284                 ;
CODE_0DDE3C:        LDY $07A2,x               ;
CODE_0DDE3F:        CPY #$03                  ;
CODE_0DDE41:        BCS CODE_0DDE46           ;
CODE_0DDE43:        LDA DATA_0DDDCF,y               ;
CODE_0DDE46:        JSR CODE_0DDFC3           ;
CODE_0DDE49:        RTS                       ;

CODE_0DDE4A:        LDY $00A0                 ;
CODE_0DDE4D:        DEY                       ;
CODE_0DDE4E:        BMI CODE_0DDE53           ;
CODE_0DDE50:        JMP CODE_0DDEDE           ;

CODE_0DDE53:        LDA $1C,x                 ;
CODE_0DDE55:        CMP #$07                  ;
CODE_0DDE57:        BCC CODE_0DDE64           ;
CODE_0DDE59:        LDA $0237                 ;
CODE_0DDE5C:        CLC                       ;
CODE_0DDE5D:        ADC #$0C                  ;
CODE_0DDE5F:        CMP $0238,x               ;
CODE_0DDE62:        BCC CODE_0DDEDE           ;
CODE_0DDE64:        LDA $079D                 ;
CODE_0DDE67:        BNE CODE_0DDEDE           ;
CODE_0DDE69:        LDA $07AE                 ;
CODE_0DDE6C:        BNE CODE_0DDEB1           ;
CODE_0DDE6E:        LDA $03AD                 ;
CODE_0DDE71:        CMP $03AE                 ;
CODE_0DDE74:        BCC CODE_0DDE79           ;
CODE_0DDE76:        JMP CODE_0DDF79           ;

CODE_0DDE79:        LDA $47,x                 ;
CODE_0DDE7B:        CMP #$01                  ;
CODE_0DDE7D:        BNE CODE_0DDE82           ;
CODE_0DDE7F:        JMP CODE_0DDF82           ;

CODE_0DDE82:        LDA $07AE                 ;
CODE_0DDE85:        ORA $07AF                 ;
CODE_0DDE88:        BNE CODE_0DDEB1           ;
CODE_0DDE8A:        LDX $0756                 ;
CODE_0DDE8D:        BEQ CODE_0DDEB4           ;
CODE_0DDE8F:        STA $0756                 ;
CODE_0DDE92:        LDA #$08                  ;
CODE_0DDE94:        STA $07AE                 ;
CODE_0DDE97:        LDA #$04                  ;
CODE_0DDE99:        STA $1600                 ;
CODE_0DDE9C:        JSL CODE_0E98C3           ;
CODE_0DDEA0:        LDA #$0A                  ;
CODE_0DDEA2:        LDY #$01                  ;
CODE_0DDEA4:        STA $0F                   ;
CODE_0DDEA6:        STY $28                   ;
CODE_0DDEA8:        LDY #$FF                  ;
CODE_0DDEAA:        STY $0747                 ;
CODE_0DDEAD:        INY                       ;
CODE_0DDEAE:        STY $0775                 ;
CODE_0DDEB1:        LDX $9E                   ;
CODE_0DDEB3:        RTS                       ;

CODE_0DDEB4:        STX $5D                   ;
CODE_0DDEB6:        PHX                       ;
CODE_0DDEB7:        LDA #$01                  ;
CODE_0DDEB9:        STA $0754                 ;
CODE_0DDEBC:        JSL CODE_0E98C3           ;
CODE_0DDEC0:        PLX                       ;
CODE_0DDEC1:        INX                       ;
CODE_0DDEC2:        LDA #$20                  ;
CODE_0DDEC4:        TSB $1601                 ;
CODE_0DDEC7:        LDA #$09                  ;
CODE_0DDEC9:        STA $1602                 ;
CODE_0DDECC:        STA $0E67                 ;
CODE_0DDECF:        STA $0723                 ;
CODE_0DDED2:        LDA #$FC                  ;
CODE_0DDED4:        STA $A0                   ;
CODE_0DDED6:        LDA #$0B                  ;
CODE_0DDED8:        BNE CODE_0DDEA2           ;

DATA_0DDEDA:        db $02,$06,$05,$06

CODE_0DDEDE:        LDA $1C,x                 ;
CODE_0DDEE0:        CMP #$12                  ;
CODE_0DDEE2:        BEQ CODE_0DDE82           ;
CODE_0DDEE4:        LDA #$02                  ;
CODE_0DDEE6:        STA $1600                 ;
CODE_0DDEE9:        LDA $1C,x                 ;
CODE_0DDEEB:        LDY #$00                  ;
CODE_0DDEED:        CMP #$14                  ;
CODE_0DDEEF:        BEQ CODE_0DDF0C           ;
CODE_0DDEF1:        CMP #$08                  ;
CODE_0DDEF3:        BEQ CODE_0DDF0C           ;
CODE_0DDEF5:        CMP #$33                  ;
CODE_0DDEF7:        BEQ CODE_0DDF0C           ;
CODE_0DDEF9:        CMP #$0C                  ;
CODE_0DDEFB:        BEQ CODE_0DDF0C           ;
CODE_0DDEFD:        INY                       ;
CODE_0DDEFE:        CMP #$05                  ;
CODE_0DDF00:        BEQ CODE_0DDF0C           ;
CODE_0DDF02:        INY                       ;
CODE_0DDF03:        CMP #$11                  ;
CODE_0DDF05:        BEQ CODE_0DDF0C           ;
CODE_0DDF07:        INY                       ;
CODE_0DDF08:        CMP #$07                  ;
CODE_0DDF0A:        BNE CODE_0DDF27           ;
CODE_0DDF0C:        LDA DATA_0DDEDA,y               ;
CODE_0DDF0F:        JSR CODE_0DDFC3           ;
CODE_0DDF12:        LDA $47,x                 ;
CODE_0DDF14:        PHA                       ;
CODE_0DDF15:        JSR CODE_0DE706           ;
CODE_0DDF18:        PLA                       ;
CODE_0DDF19:        STA $47,x                 ;
CODE_0DDF1B:        LDA #$20                  ;
CODE_0DDF1D:        STA $29,x                 ;
CODE_0DDF1F:        JSR CODE_0DC5E1           ;
CODE_0DDF22:        STZ $5E,x                 ;
CODE_0DDF24:        JMP CODE_0DDF66           ;

CODE_0DDF27:        CMP #$09                  ;
CODE_0DDF29:        BCC CODE_0DDF49           ;
CODE_0DDF2B:        JSR CODE_0DDF66           ;
CODE_0DDF2E:        AND #$01                  ;
CODE_0DDF30:        STA $1C,x                 ;
CODE_0DDF32:        LDA #$00                  ;
CODE_0DDF34:        STA $29,x                 ;
CODE_0DDF36:        LDA #$03                  ;
CODE_0DDF38:        JSR CODE_0DDFC3           ;
CODE_0DDF3B:        JSR CODE_0DC5E1           ;
CODE_0DDF3E:        JSR CODE_0DDF88           ;
CODE_0DDF41:        LDA DATA_0DDD7B,y               ;
CODE_0DDF44:        STA $5E,x                 ;
CODE_0DDF46:        RTS                       ;

DATA_0DDF47:        db $10,$0B

CODE_0DDF49:        LDA #$04                  ;
CODE_0DDF4B:        STA $29,x                 ;
CODE_0DDF4D:        INC $0284                 ;
CODE_0DDF50:        LDA $0284                 ;
CODE_0DDF53:        CLC                       ;
CODE_0DDF54:        ADC $079D                 ;
CODE_0DDF57:        JSR CODE_0DDFC3           ;
CODE_0DDF5A:        INC $079D                 ;
CODE_0DDF5D:        LDY $076A                 ;
CODE_0DDF60:        LDA DATA_0DDF47,y               ;
CODE_0DDF63:        STA $07A2,x               ;
CODE_0DDF66:        LDY #$FA                  ;
CODE_0DDF68:        LDA $001C,x               ;
CODE_0DDF6B:        CMP #$0F                  ;
CODE_0DDF6D:        BEQ CODE_0DDF73           ;
CODE_0DDF6F:        CMP #$10                  ;
CODE_0DDF71:        BNE CODE_0DDF75           ;
CODE_0DDF73:        LDY #$F8                  ;
CODE_0DDF75:        STY $00A0                 ;
CODE_0DDF78:        RTS                       ;

CODE_0DDF79:        LDA $47,x                 ;
CODE_0DDF7B:        CMP #$01                  ;
CODE_0DDF7D:        BNE CODE_0DDF82           ;
CODE_0DDF7F:        JMP CODE_0DDE82           ;

CODE_0DDF82:        JSR CODE_0DE10A           ;
CODE_0DDF85:        JMP CODE_0DDE82           ;

CODE_0DDF88:        LDY #$01                  ;
CODE_0DDF8A:        JSR CODE_0DE828           ;
CODE_0DDF8D:        BPL CODE_0DDF90           ;
CODE_0DDF8F:        INY                       ;
CODE_0DDF90:        STY $47,x                 ;
CODE_0DDF92:        DEY                       ;
CODE_0DDF93:        RTS                       ;

CODE_0DDF94:        STA $0110,x               ;
CODE_0DDF97:        LDA #$30                  ;
CODE_0DDF99:        STA $0138,x               ;
CODE_0DDF9C:        LDA $0238,x               ;
CODE_0DDF9F:        STA $0124,x               ;
CODE_0DDFA2:        LDA $03AE                 ;
CODE_0DDFA5:        STA $011A,x               ;
CODE_0DDFA8:        LDA $021A,x               ;
CODE_0DDFAB:        STA $ED                   ;
CODE_0DDFAD:        LDA $79,x                 ;
CODE_0DDFAF:        STA $EE                   ;
CODE_0DDFB1:        PHX                       ;
CODE_0DDFB2:        TXA                       ;
CODE_0DDFB3:        ASL A                     ;
CODE_0DDFB4:        TAX                       ;
CODE_0DDFB5:        REP #$20                  ;
CODE_0DDFB7:        LDA $ED                   ;
CODE_0DDFB9:        SEC                       ;
CODE_0DDFBA:        SBC $42                   ;
CODE_0DDFBC:        STA $0E50,x               ;
CODE_0DDFBF:        SEP #$20                  ;
CODE_0DDFC1:        PLX                       ;
CODE_0DDFC2:        RTS                       ;

CODE_0DDFC3:        CMP $0110,x               ;
CODE_0DDFC6:        BCS CODE_0DDFC9           ;
CODE_0DDFC8:        RTS                       ;

CODE_0DDFC9:        STA $0110,x               ;
CODE_0DDFCC:        LDA #$30                  ;
CODE_0DDFCE:        STA $0138,x               ;
CODE_0DDFD1:        LDA $0238,x               ;
CODE_0DDFD4:        STA $0124,x               ;
CODE_0DDFD7:        PHY                       ;
CODE_0DDFD8:        TXA                       ;
CODE_0DDFD9:        ASL A                     ;
CODE_0DDFDA:        TAY                       ;
CODE_0DDFDB:        LDA $021A,x               ;
CODE_0DDFDE:        STA $E4                   ;
CODE_0DDFE0:        LDA $79,x                 ;
CODE_0DDFE2:        STA $E5                   ;
CODE_0DDFE4:        REP #$20                  ;
CODE_0DDFE6:        LDA $E4                   ;
CODE_0DDFE8:        SEC                       ;
CODE_0DDFE9:        SBC $42                   ;
CODE_0DDFEB:        STA $0E50,y               ;
CODE_0DDFEE:        SEP #$20                  ;
CODE_0DDFF0:        STA $011A,x               ;
CODE_0DDFF3:        PLY                       ;
CODE_0DDFF4:        RTS                       ;

DATA_0DDFF5:        db $80,$40,$20,$10,$08,$04,$02 ;

DATA_0DDFFC:        db $7F,$BF,$DF,$EF,$F7,$FB,$FD ;

CODE_0DE003:        LDA $09                   ;
CODE_0DE005:        LSR A                     ;
CODE_0DE006:        BCC CODE_0DDFC2           ;
CODE_0DE008:        LDA $5C                   ;
CODE_0DE00A:        BEQ CODE_0DDFC2           ;
CODE_0DE00C:        LDA $1C,x                 ;
CODE_0DE00E:        CMP #$15                  ;
CODE_0DE010:        BCS CODE_0DE088           ;
CODE_0DE012:        CMP #$11                  ;
CODE_0DE014:        BEQ CODE_0DE088           ;
CODE_0DE016:        CMP #$0D                  ;
CODE_0DE018:        BEQ CODE_0DE088           ;
CODE_0DE01A:        CMP #$04                  ;
CODE_0DE01C:        BEQ CODE_0DE088           ;
CODE_0DE01E:        LDA $03D9,x               ;
CODE_0DE021:        BNE CODE_0DE088           ;
CODE_0DE023:        JSR CODE_0DE251           ;
CODE_0DE026:        DEX                       ;
CODE_0DE027:        BMI CODE_0DE088           ;
CODE_0DE029:        STX $01                   ;
CODE_0DE02B:        TYA                       ;
CODE_0DE02C:        PHA                       ;
CODE_0DE02D:        LDA $10,x                 ;
CODE_0DE02F:        BEQ CODE_0DE081           ;
CODE_0DE031:        LDA $1C,x                 ;
CODE_0DE033:        CMP #$15                  ;
CODE_0DE035:        BCS CODE_0DE081           ;
CODE_0DE037:        CMP #$11                  ;
CODE_0DE039:        BEQ CODE_0DE081           ;
CODE_0DE03B:        CMP #$0D                  ;
CODE_0DE03D:        BEQ CODE_0DE081           ;
CODE_0DE03F:        CMP #$04                  ;
CODE_0DE041:        BEQ CODE_0DE081           ;
CODE_0DE043:        LDA $03D9,x               ;
CODE_0DE046:        BNE CODE_0DE081           ;
CODE_0DE048:        TXA                       ;
CODE_0DE049:        ASL A                     ;
CODE_0DE04A:        ASL A                     ;
CODE_0DE04B:        CLC                       ;
CODE_0DE04C:        ADC #$04                  ;
CODE_0DE04E:        TAX                       ;
CODE_0DE04F:        JSR CODE_0DEA35           ;
CODE_0DE052:        LDX $9E                   ;
CODE_0DE054:        LDY $01                   ;
CODE_0DE056:        BCC CODE_0DE078           ;
CODE_0DE058:        LDA $29,x                 ;
CODE_0DE05A:        ORA $0029,y               ;
CODE_0DE05D:        AND #$80                  ;
CODE_0DE05F:        BNE CODE_0DE072           ;
CODE_0DE061:        LDA $0481,y               ;
CODE_0DE064:        AND DATA_0DDFF5,x               ;
CODE_0DE067:        BNE CODE_0DE081           ;
CODE_0DE069:        LDA $0481,y               ;
CODE_0DE06C:        ORA DATA_0DDFF5,x               ;
CODE_0DE06F:        STA $0481,y               ;
CODE_0DE072:        JSR CODE_0DE08B           ;
CODE_0DE075:        JMP CODE_0DE081           ;

CODE_0DE078:        LDA $0481,y               ;
CODE_0DE07B:        AND DATA_0DDFFC,x               ;
CODE_0DE07E:        STA $0481,y               ;
CODE_0DE081:        PLA                       ;
CODE_0DE082:        TAY                       ;
CODE_0DE083:        LDX $01                   ;
CODE_0DE085:        DEX                       ;
CODE_0DE086:        BPL CODE_0DE029           ;
CODE_0DE088:        LDX $9E                   ;
CODE_0DE08A:        RTS                       ;

CODE_0DE08B:        LDA $0029,y               ;
CODE_0DE08E:        ORA $29,x                 ;
CODE_0DE090:        AND #$20                  ;
CODE_0DE092:        BNE CODE_0DE0CB           ;
CODE_0DE094:        LDA $1C,x                 ;
CODE_0DE096:        CMP #$05                  ;
CODE_0DE098:        BNE CODE_0DE09C           ;
CODE_0DE09A:        STZ $29,x                 ;
CODE_0DE09C:        LDA $29,x                 ;
CODE_0DE09E:        CMP #$06                  ;
CODE_0DE0A0:        BCC CODE_0DE0CC           ;
CODE_0DE0A2:        LDA $0029,y               ;
CODE_0DE0A5:        ASL A                     ;
CODE_0DE0A6:        BCC CODE_0DE0B2           ;
CODE_0DE0A8:        LDA #$06                  ;
CODE_0DE0AA:        JSR CODE_0DDFC3           ;
CODE_0DE0AD:        JSR CODE_0DDC98           ;
CODE_0DE0B0:        LDY $01                   ;
CODE_0DE0B2:        TYA                       ;
CODE_0DE0B3:        TAX                       ;
CODE_0DE0B4:        JSR CODE_0DDC98           ;
CODE_0DE0B7:        LDX $9E                   ;
CODE_0DE0B9:        LDA $012E,x               ;
CODE_0DE0BC:        CLC                       ;
CODE_0DE0BD:        ADC #$04                  ;
CODE_0DE0BF:        LDX $01                   ;
CODE_0DE0C1:        JSR CODE_0DDFC3           ;
CODE_0DE0C4:        LDX $9E                   ;
CODE_0DE0C6:        INC $012E,x               ;
CODE_0DE0C9:        BRA CODE_0DE0F3           ;

CODE_0DE0CB:        RTS                       ;

CODE_0DE0CC:        LDA $0029,y               ;
CODE_0DE0CF:        CMP #$06                  ;
CODE_0DE0D1:        BCC CODE_0DE103           ;
CODE_0DE0D3:        LDA $001C,y               ;
CODE_0DE0D6:        CMP #$05                  ;
CODE_0DE0D8:        BEQ CODE_0DE0CB           ;
CODE_0DE0DA:        JSR CODE_0DDC98           ;
CODE_0DE0DD:        JSL CODE_0FE0AC           ;
CODE_0DE0E1:        LDY $01                   ;
CODE_0DE0E3:        LDA $012E,y               ;
CODE_0DE0E6:        CLC                       ;
CODE_0DE0E7:        ADC #$04                  ;
CODE_0DE0E9:        LDX $9E                   ;
CODE_0DE0EB:        JSR CODE_0DDFC3           ;
CODE_0DE0EE:        LDX $01                   ;
CODE_0DE0F0:        INC $012E,x               ;
CODE_0DE0F3:        LDA $012E,x               ;
CODE_0DE0F6:        CLC                       ;
CODE_0DE0F7:        ADC #$12                  ;
CODE_0DE0F9:        CMP #$1A                  ;
CODE_0DE0FB:        BCC CODE_0DE0FF           ;
CODE_0DE0FD:        LDA #$00                  ;
CODE_0DE0FF:        STA $1600                 ;
CODE_0DE102:        RTS                       ;

CODE_0DE103:        TYA                       ;
CODE_0DE104:        TAX                       ;
CODE_0DE105:        JSR CODE_0DE10A           ;
CODE_0DE108:        LDX $9E                   ;
CODE_0DE10A:        LDA $1C,x                 ;
CODE_0DE10C:        CMP #$0D                  ;
CODE_0DE10E:        BEQ CODE_0DE136           ;
CODE_0DE110:        CMP #$04                  ;
CODE_0DE112:        BEQ CODE_0DE136           ;
CODE_0DE114:        CMP #$11                  ;
CODE_0DE116:        BEQ CODE_0DE136           ;
CODE_0DE118:        CMP #$05                  ;
CODE_0DE11A:        BEQ CODE_0DE136           ;
CODE_0DE11C:        CMP #$12                  ;
CODE_0DE11E:        BEQ CODE_0DE128           ;
CODE_0DE120:        CMP #$0E                  ;
CODE_0DE122:        BEQ CODE_0DE128           ;
CODE_0DE124:        CMP #$07                  ;
CODE_0DE126:        BCS CODE_0DE136           ;
CODE_0DE128:        LDA $5E,x                 ;
CODE_0DE12A:        EOR #$FF                  ;
CODE_0DE12C:        TAY                       ;
CODE_0DE12D:        INY                       ;
CODE_0DE12E:        STY $5E,x                 ;
CODE_0DE130:        LDA $47,x                 ;
CODE_0DE132:        EOR #$03                  ;
CODE_0DE134:        STA $47,x                 ;
CODE_0DE136:        RTS                       ;

CODE_0DE137:        LDA #$FF                  ;
CODE_0DE139:        STA $03A2,x               ;
CODE_0DE13C:        LDA $0747                 ;
CODE_0DE13F:        BNE CODE_0DE16B           ;
CODE_0DE141:        LDA $29,x                 ;
CODE_0DE143:        BMI CODE_0DE16B           ;
CODE_0DE145:        LDA $1C,x                 ;
CODE_0DE147:        CMP #$24                  ;
CODE_0DE149:        BNE CODE_0DE151           ;
CODE_0DE14B:        LDA $29,x                 ;
CODE_0DE14D:        TAX                       ;
CODE_0DE14E:        JSR CODE_0DE151           ;
CODE_0DE151:        JSR CODE_0DE247           ;
CODE_0DE154:        BCS CODE_0DE16B           ;
CODE_0DE156:        TXA                       ;
CODE_0DE157:        JSR CODE_0DE253           ;
CODE_0DE15A:        LDA $0238,x               ;
CODE_0DE15D:        STA $00                   ;
CODE_0DE15F:        TXA                       ;
CODE_0DE160:        PHA                       ;
CODE_0DE161:        JSR CODE_0DEA33           ;
CODE_0DE164:        PLA                       ;
CODE_0DE165:        TAX                       ;
CODE_0DE166:        BCC CODE_0DE16B           ;
CODE_0DE168:        JSR CODE_0DE1AF           ;
CODE_0DE16B:        LDX $9E                   ;
CODE_0DE16D:        RTS                       ;

CODE_0DE16E:        LDA $0747                 ;
CODE_0DE171:        BNE CODE_0DE1AA           ;
CODE_0DE173:        STA $03A2,x               ;
CODE_0DE176:        JSR CODE_0DE247           ;
CODE_0DE179:        BCS CODE_0DE1AA           ;
CODE_0DE17B:        LDA #$02                  ;
CODE_0DE17D:        STA $00                   ;
CODE_0DE17F:        LDX $9E                   ;
CODE_0DE181:        JSR CODE_0DE251           ;
CODE_0DE184:        AND #$02                  ;
CODE_0DE186:        BNE CODE_0DE1AA           ;
CODE_0DE188:        LDA $0F9D,y               ;
CODE_0DE18B:        CMP #$20                  ;
CODE_0DE18D:        BCC CODE_0DE194           ;
CODE_0DE18F:        JSR CODE_0DEA33           ;
CODE_0DE192:        BCS CODE_0DE1AD           ;
CODE_0DE194:        LDA $0F9D,y               ;
CODE_0DE197:        CLC                       ;
CODE_0DE198:        ADC #$80                  ;
CODE_0DE19A:        STA $0F9D,y               ;
CODE_0DE19D:        LDA $0F9F,y               ;
CODE_0DE1A0:        CLC                       ;
CODE_0DE1A1:        ADC #$80                  ;
CODE_0DE1A3:        STA $0F9F,y               ;
CODE_0DE1A6:        DEC $00                   ;
CODE_0DE1A8:        BNE CODE_0DE17F           ;
CODE_0DE1AA:        LDX $9E                   ;
CODE_0DE1AC:        RTS                       ;

CODE_0DE1AD:        LDX $9E                   ;
CODE_0DE1AF:        LDA $0F9F,y               ;
CODE_0DE1B2:        SEC                       ;
CODE_0DE1B3:        SBC $0F9D                 ;
CODE_0DE1B6:        CMP #$04                  ;
CODE_0DE1B8:        BCS CODE_0DE1C2           ;
CODE_0DE1BA:        LDA $A0                   ;
CODE_0DE1BC:        BPL CODE_0DE1C2           ;
CODE_0DE1BE:        LDA #$01                  ;
CODE_0DE1C0:        STA $A0                   ;
CODE_0DE1C2:        LDA $0F9F                 ;
CODE_0DE1C5:        SEC                       ;
CODE_0DE1C6:        SBC $0F9D,y               ;
CODE_0DE1C9:        CMP #$06                  ;
CODE_0DE1CB:        BCS CODE_0DE1E8           ;
CODE_0DE1CD:        LDA $A0                   ;
CODE_0DE1CF:        BMI CODE_0DE1E8           ;
CODE_0DE1D1:        LDA $00                   ;
CODE_0DE1D3:        LDY $1C,x                 ;
CODE_0DE1D5:        CPY #$2B                  ;
CODE_0DE1D7:        BEQ CODE_0DE1DE           ;
CODE_0DE1D9:        CPY #$2C                  ;
CODE_0DE1DB:        BEQ CODE_0DE1DE           ;
CODE_0DE1DD:        TXA                       ;
CODE_0DE1DE:        LDX $9E                   ;
CODE_0DE1E0:        STA $03A2,x               ;
CODE_0DE1E3:        LDA #$00                  ;
CODE_0DE1E5:        STA $28                   ;
CODE_0DE1E7:        RTS                       ;

CODE_0DE1E8:        LDA #$01                  ;
CODE_0DE1EA:        STA $00                   ;
CODE_0DE1EC:        LDA $0F9E                 ;
CODE_0DE1EF:        SEC                       ;
CODE_0DE1F0:        SBC $0F9C,y               ;
CODE_0DE1F3:        CMP #$08                  ;
CODE_0DE1F5:        BCC CODE_0DE204           ;
CODE_0DE1F7:        INC $00                   ;
CODE_0DE1F9:        LDA $0F9E,y               ;
CODE_0DE1FC:        CLC                       ;
CODE_0DE1FD:        SBC $0F9C                 ;
CODE_0DE200:        CMP #$09                  ;
CODE_0DE202:        BCS CODE_0DE207           ;
CODE_0DE204:        JSR CODE_0DE614           ;
CODE_0DE207:        LDX $9E                   ;
CODE_0DE209:        RTS                       ;

DATA_0DE20A:        db $80,$00

CODE_0DE20C:        TAY                       ;
CODE_0DE20D:        LDA $0238,x               ;
CODE_0DE210:        CLC                       ;
CODE_0DE211:        ADC DATA_0DE20A-1,y               ;
CODE_0DE214:        BNE CODE_0DE21E           ;
CODE_0DE216:        LDA #$02                  ;
CODE_0DE218:        STA $BB                   ;
CODE_0DE21A:        RTS                       ;

CODE_0DE21B:        LDA $0238,x               ;
CODE_0DE21E:        LDY $0F                   ;
CODE_0DE220:        CPY #$0B                  ;
CODE_0DE222:        BEQ CODE_0DE246           ;
CODE_0DE224:        LDY $BC,x                 ;
CODE_0DE226:        CPY #$01                  ;
CODE_0DE228:        BNE CODE_0DE246           ;
CODE_0DE22A:        SEC                       ;
CODE_0DE22B:        SBC #$20                  ;
CODE_0DE22D:        STA $0237                 ;
CODE_0DE230:        TYA                       ;
CODE_0DE231:        SBC #$00                  ;
CODE_0DE233:        STA $BB                   ;
CODE_0DE235:        BNE CODE_0DE23F           ;
CODE_0DE237:        STZ $03A2,x               ;
CODE_0DE23A:        LDA #$01                  ;
CODE_0DE23C:        STA $0028                 ;
CODE_0DE23F:        LDA #$00                  ;
CODE_0DE241:        STA $A0                   ;
CODE_0DE243:        STA $043C                 ;
CODE_0DE246:        RTS                       ;

CODE_0DE247:        LDA $03D0                 ;
CODE_0DE24A:        AND #$F0                  ;
CODE_0DE24C:        CLC                       ;
CODE_0DE24D:        BEQ CODE_0DE250           ;
CODE_0DE24F:        SEC                       ;
CODE_0DE250:        RTS                       ;

CODE_0DE251:        LDA $9E                   ;
CODE_0DE253:        ASL A                     ;
CODE_0DE254:        ASL A                     ;
CODE_0DE255:        CLC                       ;
CODE_0DE256:        ADC #$04                  ;
CODE_0DE258:        TAY                       ;
CODE_0DE259:        LDA $03D1                 ;
CODE_0DE25C:        AND #$0F                  ;
CODE_0DE25E:        CMP #$0F                  ;
CODE_0DE260:        RTS                       ;

DATA_0DE261:       db $20,$10

CODE_0DE263:        LDA $0716
CODE_0DE266:        BNE CODE_0DE297           ;
CODE_0DE268:        LDA $0F                   ;
CODE_0DE26A:        CMP #$0B                  ;
CODE_0DE26C:        BEQ CODE_0DE297           ;
CODE_0DE26E:        CMP #$04                  ;
CODE_0DE270:        BCC CODE_0DE297           ;
CODE_0DE272:        LDA #$01                  ;
CODE_0DE274:        LDY $0704                 ;
CODE_0DE277:        BNE CODE_0DE283           ;
CODE_0DE279:        LDA $28                   ;
CODE_0DE27B:        BEQ CODE_0DE281           ;
CODE_0DE27D:        CMP #$03                  ;
CODE_0DE27F:        BNE CODE_0DE285           ;
CODE_0DE281:        LDA #$02                  ;
CODE_0DE283:        STA $28                   ;
CODE_0DE285:        LDA $BB                   ;
CODE_0DE287:        CMP #$01                  ;
CODE_0DE289:        BNE CODE_0DE297           ;
CODE_0DE28B:        LDA #$FF                  ;
CODE_0DE28D:        STA $0480                 ;
CODE_0DE290:        LDA $0237                 ;
CODE_0DE293:        CMP #$CF                  ;
CODE_0DE295:        BCC CODE_0DE298           ;
CODE_0DE297:        RTS                       ;

CODE_0DE298:        LDY #$02                  ;
CODE_0DE29A:        LDA $0714                 ;
CODE_0DE29D:        BNE CODE_0DE2AB           ;
CODE_0DE29F:        LDA $0754                 ;
CODE_0DE2A2:        BNE CODE_0DE2AB           ;
CODE_0DE2A4:        DEY                       ;
CODE_0DE2A5:        LDA $0704                 ;
CODE_0DE2A8:        BNE CODE_0DE2AB           ;
CODE_0DE2AA:        DEY                       ;
CODE_0DE2AB:        LDA DATA_0DEABB,y               ;
CODE_0DE2AE:        STA $EB                   ;
CODE_0DE2B0:        TAY                       ;
CODE_0DE2B1:        LDX $0754                 ;
CODE_0DE2B4:        LDA $0714                 ;
CODE_0DE2B7:        BEQ CODE_0DE2BA           ;
CODE_0DE2B9:        INX                       ;
CODE_0DE2BA:        LDA $0237                 ;
CODE_0DE2BD:        CMP DATA_0DE261,x               ;
CODE_0DE2C0:        BCC CODE_0DE2FA           ;
CODE_0DE2C2:        LDA #$01                  ;
CODE_0DE2C4:        STA $E4                   ;
CODE_0DE2C6:        JSR CODE_0DEAF7           ;
CODE_0DE2C9:        BEQ CODE_0DE2FA           ;
CODE_0DE2CB:        JSR CODE_0DE66C           ;
CODE_0DE2CE:        BCS CODE_0DE323           ;
CODE_0DE2D0:        LDY $A0                   ;
CODE_0DE2D2:        BPL CODE_0DE2FA           ;
CODE_0DE2D4:        LDY $04                   ;
CODE_0DE2D6:        CPY #$04                  ;
CODE_0DE2D8:        BCC CODE_0DE2FA           ;
CODE_0DE2DA:        JSR CODE_0DE65A           ;
CODE_0DE2DD:        BCS CODE_0DE2ED           ;
CODE_0DE2DF:        LDY $5C                   ;
CODE_0DE2E1:        BEQ CODE_0DE2F6           ;
CODE_0DE2E3:        LDY $078C                 ;
CODE_0DE2E6:        BNE CODE_0DE2F6           ;
CODE_0DE2E8:        JSR CODE_0DBC49           ;
CODE_0DE2EB:        BRA CODE_0DE2FA           ;

CODE_0DE2ED:        CMP #$2F                  ;
CODE_0DE2EF:        BEQ CODE_0DE2F6           ;
CODE_0DE2F1:        LDA #$01                  ;
CODE_0DE2F3:        STA $1600                 ;
CODE_0DE2F6:        LDA #$01                  ;
CODE_0DE2F8:        STA $A0                   ;
CODE_0DE2FA:        LDY $EB                   ;
CODE_0DE2FC:        LDA $0237                 ;
CODE_0DE2FF:        CMP #$CF                  ;
CODE_0DE301:        BCS CODE_0DE367           ;
CODE_0DE303:        STZ $E4                   ;
CODE_0DE305:        JSR CODE_0DEAF6           ;
CODE_0DE308:        JSR CODE_0DE66C           ;
CODE_0DE30B:        BCS CODE_0DE323           ;
CODE_0DE30D:        PHA                       ;
CODE_0DE30E:        STZ $E4                   ;
CODE_0DE310:        JSR CODE_0DEAF6           ;
CODE_0DE313:        STA $00                   ;
CODE_0DE315:        PLA                       ;
CODE_0DE316:        STA $01                   ;
CODE_0DE318:        BNE CODE_0DE326           ;
CODE_0DE31A:        LDA $00                   ;
CODE_0DE31C:        BEQ CODE_0DE367           ;
CODE_0DE31E:        JSR CODE_0DE66C           ;
CODE_0DE321:        BCC CODE_0DE326           ;
CODE_0DE323:        JMP CODE_0DE420           ;

CODE_0DE326:        JSR CODE_0DE665           ;
CODE_0DE329:        BCS CODE_0DE367           ;
CODE_0DE32B:        LDY $A0                   ;
CODE_0DE32D:        BMI CODE_0DE367           ;
CODE_0DE32F:        CMP #$FE                  ;
CODE_0DE331:        BNE CODE_0DE336           ;
CODE_0DE333:        JMP CODE_0DE429           ;

CODE_0DE336:        JSR CODE_0DE55A           ;
CODE_0DE339:        BEQ CODE_0DE367           ;
CODE_0DE33B:        LDY $070E                 ;
CODE_0DE33E:        BNE CODE_0DE363           ;
CODE_0DE340:        LDY $04                   ;
CODE_0DE342:        CPY #$05                  ;
CODE_0DE344:        BCC CODE_0DE34D           ;
CODE_0DE346:        LDA $46                   ;
CODE_0DE348:        STA $00                   ;
CODE_0DE34A:        JMP CODE_0DE614           ;

CODE_0DE34D:        JSR CODE_0DE571           ;
CODE_0DE350:        LDA #$F0                  ;
CODE_0DE352:        AND $0237                 ;
CODE_0DE355:        STA $0237                 ;
CODE_0DE358:        JSR CODE_0DE598           ;
CODE_0DE35B:        STZ $A0                   ;
CODE_0DE35D:        STZ $043C                 ;
CODE_0DE360:        STZ $0284                 ;
CODE_0DE363:        LDA #$00                  ;
CODE_0DE365:        STA $28                   ;
CODE_0DE367:        LDY $EB                   ;
CODE_0DE369:        INY                       ;
CODE_0DE36A:        INY                       ;
CODE_0DE36B:        LDA #$02                  ;
CODE_0DE36D:        STA $00                   ;
CODE_0DE36F:        INY                       ;
CODE_0DE370:        STY $EB                   ;
CODE_0DE372:        LDA $0237                 ;
CODE_0DE375:        CMP #$20                  ;
CODE_0DE377:        BCC CODE_0DE391           ;
CODE_0DE379:        CMP #$E4                  ;
CODE_0DE37B:        BCS CODE_0DE3AA           ;
CODE_0DE37D:        STZ $E4                   ;
CODE_0DE37F:        JSR CODE_0DEAFB           ;
CODE_0DE382:        BEQ CODE_0DE391           ;
CODE_0DE384:        CMP #$25                  ;
CODE_0DE386:        BEQ CODE_0DE391           ;
CODE_0DE388:        CMP #$76                  ;
CODE_0DE38A:        BEQ CODE_0DE391           ;
CODE_0DE38C:        JSR CODE_0DE665           ;
CODE_0DE38F:        BCC CODE_0DE3AB           ;
CODE_0DE391:        LDY $EB                   ;
CODE_0DE393:        INY                       ;
CODE_0DE394:        LDA $0237                 ;
CODE_0DE397:        CMP #$08                  ;
CODE_0DE399:        BCC CODE_0DE3AA           ;
CODE_0DE39B:        CMP #$D0                  ;
CODE_0DE39D:        BCS CODE_0DE3AA           ;
CODE_0DE39F:        STZ $E4                   ;
CODE_0DE3A1:        JSR CODE_0DEAFB           ;
CODE_0DE3A4:        BNE CODE_0DE3AB           ;
CODE_0DE3A6:        DEC $00                   ;
CODE_0DE3A8:        BNE CODE_0DE36F           ;
CODE_0DE3AA:        RTS                       ;

CODE_0DE3AB:        JSR CODE_0DE55A           ;
CODE_0DE3AE:        BEQ CODE_0DE41D           ;
CODE_0DE3B0:        JSR CODE_0DE665           ;
CODE_0DE3B3:        BCC CODE_0DE3B8           ;
CODE_0DE3B5:        JMP CODE_0DE47C           ;

CODE_0DE3B8:        JSR CODE_0DE66C           ;
CODE_0DE3BB:        BCS CODE_0DE420           ;
CODE_0DE3BD:        JSR CODE_0DE58D           ;
CODE_0DE3C0:        BCC CODE_0DE3CA           ;
CODE_0DE3C2:        LDA $070E                 ;
CODE_0DE3C5:        BNE CODE_0DE41D           ;
CODE_0DE3C7:        JMP CODE_0DE41A           ;

CODE_0DE3CA:        LDY $28                   ;
CODE_0DE3CC:        CPY #$00                  ;
CODE_0DE3CE:        BNE CODE_0DE41A           ;
CODE_0DE3D0:        LDY $0202                 ;
CODE_0DE3D3:        DEY                       ;
CODE_0DE3D4:        BNE CODE_0DE41A           ;
CODE_0DE3D6:        CMP #$77                  ;
CODE_0DE3D8:        BEQ CODE_0DE3DE           ;
CODE_0DE3DA:        CMP #$28                  ;
CODE_0DE3DC:        BNE CODE_0DE41A           ;
CODE_0DE3DE:        LDA $0256                 ;
CODE_0DE3E1:        BEQ CODE_0DE3F1           ;
CODE_0DE3E3:        LDY $9A                   ;
CODE_0DE3E5:        BNE CODE_0DE3F1           ;
CODE_0DE3E7:        LDY #$04                  ;
CODE_0DE3E9:        STY $1600                 ;
CODE_0DE3EC:        STY $9A                   ;
CODE_0DE3EE:        STZ $07AF                 ;
CODE_0DE3F1:        AND #$CF                  ;
CODE_0DE3F3:        STA $0256                 ;
CODE_0DE3F6:        LDA $0219                 ;
CODE_0DE3F9:        AND #$0F                  ;
CODE_0DE3FB:        BEQ CODE_0DE40B           ;
CODE_0DE3FD:        LDY #$00                  ;
CODE_0DE3FF:        LDA $071A                 ;
CODE_0DE402:        BEQ CODE_0DE405           ;
CODE_0DE404:        INY                       ;
CODE_0DE405:        LDA DATA_0DE41E,y               ;
CODE_0DE408:        STA $06DE                 ;
CODE_0DE40B:        LDA $0F                   ;
CODE_0DE40D:        CMP #$07                  ;
CODE_0DE40F:        BEQ CODE_0DE41D           ;
CODE_0DE411:        CMP #$08                  ;
CODE_0DE413:        BNE CODE_0DE41D           ;
CODE_0DE415:        LDA #$02                  ;
CODE_0DE417:        STA $0F                   ;
CODE_0DE419:        RTS                       ;

CODE_0DE41A:        JSR CODE_0DE614           ;
CODE_0DE41D:        RTS                       ;

DATA_0DE41E:        db $34,$34

CODE_0DE420:        JSR CODE_0DE46A           ;
CODE_0DE423:        INC $0748                 ;
CODE_0DE426:        JMP CODE_0DBAFF           ;

CODE_0DE429:        STZ $0772                 ;
CODE_0DE42C:        LDA #$02                  ;
CODE_0DE42E:        STA $0770                 ;
CODE_0DE431:        LDA $2142                 ;
CODE_0DE434:        CMP #$0B                  ;
CODE_0DE436:        BEQ CODE_0DE43D           ;
CODE_0DE438:        LDA #$F0                  ;
CODE_0DE43A:        STA $1602                 ;
CODE_0DE43D:        LDA #$18                  ;
CODE_0DE43F:        STA $5D                   ;
CODE_0DE441:        PHX                       ;
CODE_0DE442:        LDX #$00                  ;
CODE_0DE444:        LDA $1C,x                 ;
CODE_0DE446:        CMP #$2D                  ;
CODE_0DE448:        BNE CODE_0DE464           ;
CODE_0DE44A:        LDA $10,x                 ;
CODE_0DE44C:        CMP #$01                  ;
CODE_0DE44E:        BNE CODE_0DE464           ;
CODE_0DE450:        LDA $021A,x               ;
CODE_0DE453:        SEC                       ;
CODE_0DE454:        SBC $073F                 ;
CODE_0DE457:        STA $03AE                 ;
CODE_0DE45A:        LDA $0238,x               ;
CODE_0DE45D:        STA $03B9                 ;
CODE_0DE460:        JSL CODE_0FD73D           ;
CODE_0DE464:        INX                       ;
CODE_0DE465:        CPX #$09                  ;
CODE_0DE467:        BNE CODE_0DE444           ;
CODE_0DE469:        PLX                       ;
CODE_0DE46A:        LDY $02                   ;
CODE_0DE46C:        LDA #$00                  ;
CODE_0DE46E:        STA ($06),y               ;
CODE_0DE470:        JMP CODE_0D9046           ;

DATA_0DE473:        db $F9,$07,$FF,$00

DATA_0DE477:        db $18,$22,$50,$68,$90

CODE_0DE47C:        LDY $04                   ;
CODE_0DE47E:        CPY #$06                  ;
CODE_0DE480:        BCC CODE_0DE486           ;
CODE_0DE482:        CPY #$0A                  ;
CODE_0DE484:        BCC CODE_0DE487           ;
CODE_0DE486:        RTS                       ;

CODE_0DE487:        CMP #$2D                  ;
CODE_0DE489:        BEQ CODE_0DE48F           ;
CODE_0DE48B:        CMP #$2E                  ;
CODE_0DE48D:        BNE CODE_0DE4E0           ;
CODE_0DE48F:        LDA $0F                   ;
CODE_0DE491:        CMP #$05                  ;
CODE_0DE493:        BEQ CODE_0DE4EF           ;
CODE_0DE495:        INC $0723                 ;
CODE_0DE498:        LDA $0F                   ;
CODE_0DE49A:        CMP #$04                  ;
CODE_0DE49C:        BEQ CODE_0DE4DA           ;
CODE_0DE49E:        LDA #$33                  ;
CODE_0DE4A0:        JSR CODE_0DA61A           ;
CODE_0DE4A3:        JSL CODE_0E877D           ;
CODE_0DE4A7:        LDA #$F0                  ;
CODE_0DE4A9:        STA $1602                 ;
CODE_0DE4AC:        LDA #$46                  ;
CODE_0DE4AE:        STA $1600                 ;
CODE_0DE4B1:        LSR A                     ;
CODE_0DE4B2:        STA $0713                 ;
CODE_0DE4B5:        LDX #$04                  ;
CODE_0DE4B7:        LDA $0237                 ;
CODE_0DE4BA:        STA $070F                 ;
CODE_0DE4BD:        CMP DATA_0DE477,x               ;
CODE_0DE4C0:        BCS CODE_0DE4C5           ;
CODE_0DE4C2:        DEX                       ;
CODE_0DE4C3:        BNE CODE_0DE4BD           ;
CODE_0DE4C5:        STX $010F                 ;
CODE_0DE4C8:        LDA $07DE                 ;
CODE_0DE4CB:        CMP $07DF                 ;
CODE_0DE4CE:        BNE CODE_0DE4DA           ;
CODE_0DE4D0:        CMP $07EB                 ;
CODE_0DE4D3:        BNE CODE_0DE4DA           ;
CODE_0DE4D5:        LDA #$05                  ;
CODE_0DE4D7:        STA $010F                 ;
CODE_0DE4DA:        LDA #$04                  ;
CODE_0DE4DC:        STA $0F                   ;
CODE_0DE4DE:        BRA CODE_0DE4EF           ;

CODE_0DE4E0:        CMP #$2F                  ;
CODE_0DE4E2:        BNE CODE_0DE4EF           ;
CODE_0DE4E4:        LDA $0237                 ;
CODE_0DE4E7:        CMP #$20                  ;
CODE_0DE4E9:        BCS CODE_0DE4EF           ;
CODE_0DE4EB:        LDA #$01                  ;
CODE_0DE4ED:        STA $0F                   ;
CODE_0DE4EF:        LDA #$03                  ;
CODE_0DE4F1:        STA $28                   ;
CODE_0DE4F3:        STZ $5D                   ;
CODE_0DE4F5:        STZ $0705                 ;
CODE_0DE4F8:        LDA $0398                 ;
CODE_0DE4FB:        BEQ CODE_0DE52C           ;
CODE_0DE4FD:        LDA $03AE                 ;
CODE_0DE500:        BPL CODE_0DE52C           ;
CODE_0DE502:        CMP #$F8                  ;
CODE_0DE504:        BCC CODE_0DE52C           ;
CODE_0DE506:        LDA $0082                 ;
CODE_0DE509:        STA $E5                   ;
CODE_0DE50B:        LDA $0223                 ;
CODE_0DE50E:        STA $E4                   ;
CODE_0DE510:        REP #$20                  ;
CODE_0DE512:        LDA $E4                   ;
CODE_0DE514:        CLC                       ;
CODE_0DE515:        ADC #$0007                ;
CODE_0DE518:        STA $E4                   ;
CODE_0DE51A:        SEP #$20                  ;
CODE_0DE51C:        LDA $E4                   ;
CODE_0DE51E:        STA $0219                 ;
CODE_0DE521:        LDA $E5                   ;
CODE_0DE523:        STA $78                   ;
CODE_0DE525:        LDA #$02                  ;
CODE_0DE527:        STA $0202                 ;
CODE_0DE52A:        BRA CODE_0DE559           ;

CODE_0DE52C:        LDA $0219                 ;
CODE_0DE52F:        SEC                       ;
CODE_0DE530:        SBC $071C                 ;
CODE_0DE533:        CMP #$10                  ;
CODE_0DE535:        BCS CODE_0DE53C           ;
CODE_0DE537:        LDA #$02                  ;
CODE_0DE539:        STA $0202                 ;
CODE_0DE53C:        LDY $0202                 ;
CODE_0DE53F:        LDA $06                   ;
CODE_0DE541:        ASL A                     ;
CODE_0DE542:        ASL A                     ;
CODE_0DE543:        ASL A                     ;
CODE_0DE544:        ASL A                     ;
CODE_0DE545:        CLC                       ;
CODE_0DE546:        ADC DATA_0DE473-1,y               ;
CODE_0DE549:        STA $0219                 ;
CODE_0DE54C:        LDA $06                   ;
CODE_0DE54E:        BNE CODE_0DE559           ;
CODE_0DE550:        LDA $071B                 ;
CODE_0DE553:        CLC                       ;
CODE_0DE554:        ADC DATA_0DE473+1,y               ;
CODE_0DE557:        STA $78                   ;
CODE_0DE559:        RTS                       ;

CODE_0DE55A:        CMP #$5C                  ;
CODE_0DE55C:        BEQ CODE_0DE570           ;
CODE_0DE55E:        CMP #$5D                  ;
CODE_0DE560:        BEQ CODE_0DE570           ;
CODE_0DE562:        CMP #$5E                  ;
CODE_0DE564:        BEQ CODE_0DE570           ;
CODE_0DE566:        CMP #$60                  ;
CODE_0DE568:        BEQ CODE_0DE570           ;
CODE_0DE56A:        CMP #$61                  ;
CODE_0DE56C:        BEQ CODE_0DE570           ;
CODE_0DE56E:        CMP #$5F                  ;
CODE_0DE570:        RTS                       ;

CODE_0DE571:        JSR CODE_0DE58D           ;
CODE_0DE574:        BCC CODE_0DE58C           ;
CODE_0DE576:        LDA #$70                  ;
CODE_0DE578:        STA $0709                 ;
CODE_0DE57B:        STA $070A                 ;
CODE_0DE57E:        LDA #$F9                  ;
CODE_0DE580:        STA $06DB                 ;
CODE_0DE583:        LDA #$03                  ;
CODE_0DE585:        STA $078E                 ;
CODE_0DE588:        LSR A                     ;
CODE_0DE589:        STA $070E                 ;
CODE_0DE58C:        RTS                       ;

CODE_0DE58D:        CMP #$6E                  ;
CODE_0DE58F:        BEQ CODE_0DE596           ;
CODE_0DE591:        CMP #$6F                  ;
CODE_0DE593:        CLC                       ;
CODE_0DE594:        BNE CODE_0DE597           ;
CODE_0DE596:        SEC                       ;
CODE_0DE597:        RTS                       ;

CODE_0DE598:        LDA $0B                   ;
CODE_0DE59A:        AND #$04                  ;
CODE_0DE59C:        BEQ CODE_0DE613           ;
CODE_0DE59E:        LDA $00                   ;
CODE_0DE5A0:        CMP #$17                  ;
CODE_0DE5A2:        BNE CODE_0DE613           ;
CODE_0DE5A4:        LDA $01                   ;
CODE_0DE5A6:        CMP #$16                  ;
CODE_0DE5A8:        BNE CODE_0DE613           ;
CODE_0DE5AA:        LDA #$30                  ;
CODE_0DE5AC:        STA $06DE                 ;
CODE_0DE5AF:        LDA #$03                  ;
CODE_0DE5B1:        STA $0F                   ;
CODE_0DE5B3:        LDA #$04                  ;
CODE_0DE5B5:        STA $07AE                 ;
CODE_0DE5B8:        STZ $07AF                 ;
CODE_0DE5BB:        LDA #$00                  ;
CODE_0DE5BD:        STA $0256                 ;
CODE_0DE5C0:        LDA $06D6                 ;
CODE_0DE5C3:        BEQ CODE_0DE60D           ;
CODE_0DE5C5:        AND #$0F                  ;
CODE_0DE5C7:        TAX                       ;
CODE_0DE5C8:        LDA $075F                 ;
CODE_0DE5CB:        CMP #$08                  ;
CODE_0DE5CD:        BCS CODE_0DE5D4           ;
CODE_0DE5CF:        LDA #$01                  ;
CODE_0DE5D1:        STA $0F2B                 ;
CODE_0DE5D4:        LDA DATA_0D8D98,x         ;
CODE_0DE5D7:        TAY                       ;
CODE_0DE5D8:        DEY                       ;
CODE_0DE5D9:        STY $075F                 ;
CODE_0DE5DC:        LDX.w DATA_0EC499,y       ; ??? leftover code? X immediately gets overwritten.
CODE_0DE5DF:        TYX                       ;
CODE_0DE5E0:        LDA.l DATA_0EC499,x       ;
CODE_0DE5E4:        TAX                       ;
CODE_0DE5E5:        LDA.l DATA_0EC4A6,x       ;
CODE_0DE5E9:        STA $0750                 ;
CODE_0DE5EC:        LDA #$80                  ;
CODE_0DE5EE:        STA $1602                 ;
CODE_0DE5F1:        LDA #$00                  ;
CODE_0DE5F3:        STA $0751                 ;
CODE_0DE5F6:        STA $0760                 ;
CODE_0DE5F9:        STA $075C                 ;
CODE_0DE5FC:        STA $0752                 ;
CODE_0DE5FF:        INC $075D                 ;
CODE_0DE602:        INC $0757                 ;
CODE_0DE605:        LDA #$F3                  ;
CODE_0DE607:        STA $1602                 ;
CODE_0DE60A:        STA $0E1A                 ;
CODE_0DE60D:        LDA #$04                  ;
CODE_0DE60F:        STA $1600                 ;
CODE_0DE612:        RTS                       ;

CODE_0DE613:        RTS                       ;

CODE_0DE614:        LDA #$00                  ;
CODE_0DE616:        LDY $5D                   ;
CODE_0DE618:        LDX $00                   ;
CODE_0DE61A:        DEX                       ;
CODE_0DE61B:        BNE CODE_0DE627           ;
CODE_0DE61D:        INX                       ;
CODE_0DE61E:        CPY #$00                  ;
CODE_0DE620:        BMI CODE_0DE64C           ;
CODE_0DE622:        LDA #$FF                  ;
CODE_0DE624:        JMP CODE_0DE62F           ;

CODE_0DE627:        LDX #$02                  ;
CODE_0DE629:        CPY #$01                  ;
CODE_0DE62B:        BPL CODE_0DE64C           ;
CODE_0DE62D:        LDA #$01                  ;
CODE_0DE62F:        LDY #$10                  ;
CODE_0DE631:        STY $078D                 ;
CODE_0DE634:        LDY #$00                  ;
CODE_0DE636:        STY $5D                   ;
CODE_0DE638:        CMP #$00                  ;
CODE_0DE63A:        BPL CODE_0DE63D           ;
CODE_0DE63C:        DEY                       ;
CODE_0DE63D:        STY $00                   ;
CODE_0DE63F:        CLC                       ;
CODE_0DE640:        ADC $0219                 ;
CODE_0DE643:        STA $0219                 ;
CODE_0DE646:        LDA $78                   ;
CODE_0DE648:        ADC $00                   ;
CODE_0DE64A:        STA $78                   ;
CODE_0DE64C:        TXA                       ;
CODE_0DE64D:        EOR #$FF                  ;
CODE_0DE64F:        AND $0480                 ;
CODE_0DE652:        STA $0480                 ;
CODE_0DE655:        RTS                       ;

DATA_0DE656:        db $16,$62,$86,$FD

CODE_0DE65A:        JSR CODE_0DE67C           ;
CODE_0DE65D:        CMP DATA_0DE656,x               ;
CODE_0DE660:        RTS                       ;

DATA_0DE661:        db $2D,$78,$88,$FF

CODE_0DE665:        JSR CODE_0DE67C 
CODE_0DE668:        CMP DATA_0DE661,x               ;
CODE_0DE66B:        RTS                       ;

CODE_0DE66C:        CMP #$EA                  ;
CODE_0DE66E:        BEQ CODE_0DE676           ;
CODE_0DE670:        CMP #$EB                  ;
CODE_0DE672:        BEQ CODE_0DE676           ;
CODE_0DE674:        CLC                       ;
CODE_0DE675:        RTS                       ;

CODE_0DE676:        LDA #$01                  ;
CODE_0DE678:        STA $1603                 ;
CODE_0DE67B:        RTS                       ;

CODE_0DE67C:        TAY                       ;
CODE_0DE67D:        AND #$C0                  ;
CODE_0DE67F:        ASL A                     ;
CODE_0DE680:        ROL A                     ;
CODE_0DE681:        ROL A                     ;
CODE_0DE682:        TAX                       ;
CODE_0DE683:        TYA                       ;
CODE_0DE684:        RTS                       ;

DATA_0DE685:        db $01,$01,$02,$02,$02,$05

DATA_0DE68B:        db $10,$F0

CODE_0DE68D:        LDA $29,x                 ;
CODE_0DE68F:        AND #$20                  ;
CODE_0DE691:        BNE CODE_0DE684           ;
CODE_0DE693:        JSR CODE_0DE844           ;
CODE_0DE696:        BCC CODE_0DE684           ;
CODE_0DE698:        LDY $1C,x                 ;
CODE_0DE69A:        CPY #$12                  ;
CODE_0DE69C:        BNE CODE_0DE6A5           ;
CODE_0DE69E:        LDA $0238,x               ;
CODE_0DE6A1:        CMP #$25                  ;
CODE_0DE6A3:        BCC CODE_0DE684           ;
CODE_0DE6A5:        CPY #$0E                  ;
CODE_0DE6A7:        BNE CODE_0DE6AC           ;
CODE_0DE6A9:        JMP CODE_0DE84D           ;

CODE_0DE6AC:        CPY #$05                  ;
CODE_0DE6AE:        BNE CODE_0DE6B4           ;
CODE_0DE6B0:        JMP CODE_0DE86F           ;

CODE_0DE6B3:        RTS                       ;

CODE_0DE6B4:        CPY #$12                  ;
CODE_0DE6B6:        BEQ CODE_0DE6C4           ;
CODE_0DE6B8:        CPY #$2E                  ;
CODE_0DE6BA:        BEQ CODE_0DE6C4           ;
CODE_0DE6BC:        CPY #$04                  ;
CODE_0DE6BE:        BEQ CODE_0DE6B3           ;
CODE_0DE6C0:        CPY #$07                  ;
CODE_0DE6C2:        BCS CODE_0DE6B3           ;
CODE_0DE6C4:        JSR CODE_0DE898           ;
CODE_0DE6C7:        BNE CODE_0DE6CC           ;
CODE_0DE6C9:        JMP CODE_0DE7BE           ;

CODE_0DE6CC:        JSR CODE_0DE89F           ;
CODE_0DE6CF:        BEQ CODE_0DE6C9           ;
CODE_0DE6D1:        CMP #$2C                  ;
CODE_0DE6D3:        BNE CODE_0DE743           ;
CODE_0DE6D5:        LDA $1C,x                 ;
CODE_0DE6D7:        CMP #$15                  ;
CODE_0DE6D9:        BCS CODE_0DE6E7           ;
CODE_0DE6DB:        CMP #$06                  ;
CODE_0DE6DD:        BNE CODE_0DE6E2           ;
CODE_0DE6DF:        JSR CODE_0DE878           ;
CODE_0DE6E2:        LDA #$01                  ;
CODE_0DE6E4:        JSR CODE_0DDFC3           ;
CODE_0DE6E7:        LDA $001C,x               ;
CODE_0DE6EA:        CMP #$09                  ;
CODE_0DE6EC:        BCC CODE_0DE706           ;
CODE_0DE6EE:        CMP #$11                  ;
CODE_0DE6F0:        BCS CODE_0DE706           ;
CODE_0DE6F2:        CMP #$0D                  ;
CODE_0DE6F4:        BEQ CODE_0DE706           ;
CODE_0DE6F6:        CMP #$04                  ;
CODE_0DE6F8:        BEQ CODE_0DE706           ;
CODE_0DE6FA:        CMP #$0A                  ;
CODE_0DE6FC:        BCC CODE_0DE702           ;
CODE_0DE6FE:        CMP #$0D                  ;
CODE_0DE700:        BCC CODE_0DE706           ;
CODE_0DE702:        AND #$01                  ;
CODE_0DE704:        STA $1C,x                 ;
CODE_0DE706:        CMP #$2E                  ;
CODE_0DE708:        BEQ CODE_0DE712           ;
CODE_0DE70A:        CMP #$06                  ;
CODE_0DE70C:        BEQ CODE_0DE712           ;
CODE_0DE70E:        LDA #$02                  ;
CODE_0DE710:        STA $29,x                 ;
CODE_0DE712:        DEC $0238,x               ;
CODE_0DE715:        DEC $0238,x               ;
CODE_0DE718:        LDA $1C,x                 ;
CODE_0DE71A:        CMP #$07                  ;
CODE_0DE71C:        BEQ CODE_0DE724           ;
CODE_0DE71E:        LDA #$FD                  ;
CODE_0DE720:        LDY $5C                   ;
CODE_0DE722:        BNE CODE_0DE726           ;
CODE_0DE724:        LDA #$FF                  ;
CODE_0DE726:        STA $A1,x                 ;
CODE_0DE728:        LDY #$01                  ;
CODE_0DE72A:        JSR CODE_0DE828           ;
CODE_0DE72D:        BPL CODE_0DE730           ;
CODE_0DE72F:        INY                       ;
CODE_0DE730:        LDA $1C,x                 ;
CODE_0DE732:        CMP #$33                  ;
CODE_0DE734:        BEQ CODE_0DE73C           ;
CODE_0DE736:        CMP #$08                  ;
CODE_0DE738:        BEQ CODE_0DE73C           ;
CODE_0DE73A:        STY $47,x                 ;
CODE_0DE73C:        DEY                       ;
CODE_0DE73D:        LDA DATA_0DE68B,y               ;
CODE_0DE740:        STA $5E,x                 ;
CODE_0DE742:        RTS                       ;

CODE_0DE743:        LDA $04                   ;
CODE_0DE745:        SEC                       ;
CODE_0DE746:        SBC #$08                  ;
CODE_0DE748:        CMP #$05                  ;
CODE_0DE74A:        BCS CODE_0DE7BE           ;
CODE_0DE74C:        LDA $29,x                 ;
CODE_0DE74E:        AND #$40                  ;
CODE_0DE750:        BNE CODE_0DE7A9           ;
CODE_0DE752:        LDA $29,x                 ;
CODE_0DE754:        ASL A                     ;
CODE_0DE755:        BCC CODE_0DE75A           ;
CODE_0DE757:        JMP CODE_0DE7D9           ;

CODE_0DE75A:        LDA $29,x                 ;
CODE_0DE75C:        BEQ CODE_0DE757           ;
CODE_0DE75E:        CMP #$05                  ;
CODE_0DE760:        BEQ CODE_0DE781           ;
CODE_0DE762:        CMP #$03                  ;
CODE_0DE764:        BCS CODE_0DE780           ;
CODE_0DE766:        LDA $29,x                 ;
CODE_0DE768:        CMP #$02                  ;
CODE_0DE76A:        BNE CODE_0DE781           ;
CODE_0DE76C:        LDA #$10                  ;
CODE_0DE76E:        LDY $1C,x                 ;
CODE_0DE770:        CPY #$12                  ;
CODE_0DE772:        BNE CODE_0DE776           ;
CODE_0DE774:        LDA #$00                  ;
CODE_0DE776:        STA $07A2,x               ;
CODE_0DE779:        LDA #$03                  ;
CODE_0DE77B:        STA $29,x                 ;
CODE_0DE77D:        JSR CODE_0DE836           ;
CODE_0DE780:        RTS                       ;

CODE_0DE781:        LDA $1C,x                 ;
CODE_0DE783:        CMP #$06                  ;
CODE_0DE785:        BEQ CODE_0DE7A9           ;
CODE_0DE787:        CMP #$12                  ;
CODE_0DE789:        BNE CODE_0DE799           ;
CODE_0DE78B:        LDA #$01                  ;
CODE_0DE78D:        STA $47,x                 ;
CODE_0DE78F:        LDA #$08                  ;
CODE_0DE791:        STA $5E,x                 ;
CODE_0DE793:        LDA $09                   ;
CODE_0DE795:        AND #$07                  ;
CODE_0DE797:        BEQ CODE_0DE7A9           ;
CODE_0DE799:        LDY #$01                  ;
CODE_0DE79B:        JSR CODE_0DE828           ;
CODE_0DE79E:        BPL CODE_0DE7A1           ;
CODE_0DE7A0:        INY                       ;
CODE_0DE7A1:        TYA                       ;
CODE_0DE7A2:        CMP $47,x                 ;
CODE_0DE7A4:        BNE CODE_0DE7A9           ;
CODE_0DE7A6:        JSR CODE_0DE800           ;
CODE_0DE7A9:        JSR CODE_0DE836           ;
CODE_0DE7AC:        LDA $29,x                 ;
CODE_0DE7AE:        AND #$80                  ;
CODE_0DE7B0:        BNE CODE_0DE7B7           ;
CODE_0DE7B2:        LDA #$00                  ;
CODE_0DE7B4:        STA $29,x                 ;
CODE_0DE7B6:        RTS                       ;

CODE_0DE7B7:        LDA $29,x                 ;
CODE_0DE7B9:        AND #$BF                  ;
CODE_0DE7BB:        STA $29,x                 ;
CODE_0DE7BD:        RTS                       ;

CODE_0DE7BE:        LDA $1C,x                 ;
CODE_0DE7C0:        CMP #$03                  ;
CODE_0DE7C2:        BNE CODE_0DE7C8           ;
CODE_0DE7C4:        LDA $29,x                 ;
CODE_0DE7C6:        BEQ CODE_0DE800           ;
CODE_0DE7C8:        LDA $29,x                 ;
CODE_0DE7CA:        TAY                       ;
CODE_0DE7CB:        ASL A                     ;
CODE_0DE7CC:        BCC CODE_0DE7D4           ;
CODE_0DE7CE:        LDA $29,x                 ;
CODE_0DE7D0:        ORA #$40                  ;
CODE_0DE7D2:        BRA CODE_0DE7D7           ;

CODE_0DE7D4:        LDA DATA_0DE685,y               ;
CODE_0DE7D7:        STA $29,x                 ;
CODE_0DE7D9:        LDA $0238,x               ;
CODE_0DE7DC:        CMP #$20                  ;
CODE_0DE7DE:        BCC CODE_0DE7FF           ;
CODE_0DE7E0:        LDY #$16                  ;
CODE_0DE7E2:        LDA #$02                  ;
CODE_0DE7E4:        STA $EB                   ;
CODE_0DE7E6:        LDA $EB                   ;
CODE_0DE7E8:        CMP $47,x                 ;
CODE_0DE7EA:        BNE CODE_0DE7F8           ;
CODE_0DE7EC:        LDA #$01                  ;
CODE_0DE7EE:        JSR CODE_0DEA96           ;
CODE_0DE7F1:        BEQ CODE_0DE7F8           ;
CODE_0DE7F3:        JSR CODE_0DE89F           ;
CODE_0DE7F6:        BNE CODE_0DE800           ;
CODE_0DE7F8:        DEC $EB                   ;
CODE_0DE7FA:        INY                       ;
CODE_0DE7FB:        CPY #$18                  ;
CODE_0DE7FD:        BCC CODE_0DE7E6           ;
CODE_0DE7FF:        RTS                       ;

CODE_0DE800:        CPX #$09                  ;
CODE_0DE802:        BEQ CODE_0DE816           ;
CODE_0DE804:        LDA $29,x                 ;
CODE_0DE806:        ASL A                     ;
CODE_0DE807:        BCC CODE_0DE816           ;
CODE_0DE809:        CPX #$09                  ;
CODE_0DE80B:        BEQ CODE_0DE816           ;
CODE_0DE80D:        LDA #$01                  ;
CODE_0DE80F:        STA $1600                 ;
CODE_0DE812:        JSL CODE_0FE0AC           ;
CODE_0DE816:        LDA $1C,x                 ;
CODE_0DE818:        CMP #$05                  ;
CODE_0DE81A:        BNE CODE_0DE825           ;
CODE_0DE81C:        LDA #$00                  ;
CODE_0DE81E:        STA $00                   ;
CODE_0DE820:        LDY #$FA                  ;
CODE_0DE822:        JMP CODE_0DCDCF           ;

CODE_0DE825:        JMP CODE_0DE128           ;

CODE_0DE828:        LDA $021A,x               ;
CODE_0DE82B:        SEC                       ;
CODE_0DE82C:        SBC $0219                 ;
CODE_0DE82F:        STA $00                   ;
CODE_0DE831:        LDA $79,x                 ;
CODE_0DE833:        SBC $78                   ;
CODE_0DE835:        RTS                       ;

CODE_0DE836:        JSR CODE_0DC5E1           ;
CODE_0DE839:        LDA $0238,x               ;
CODE_0DE83C:        AND #$F0                  ;
CODE_0DE83E:        ORA #$08                  ;
CODE_0DE840:        STA $0238,x               ;
CODE_0DE843:        RTS                       ;

CODE_0DE844:        LDA $0238,x               ;
CODE_0DE847:        CLC                       ;
CODE_0DE848:        ADC #$3E                  ;
CODE_0DE84A:        CMP #$44                  ;
CODE_0DE84C:        RTS                       ;

CODE_0DE84D:        JSR CODE_0DE844           ;
CODE_0DE850:        BCC CODE_0DE86C           ;
CODE_0DE852:        LDA $A1,x                 ;
CODE_0DE854:        CLC                       ;
CODE_0DE855:        ADC #$02                  ;
CODE_0DE857:        CMP #$03                  ;
CODE_0DE859:        BCC CODE_0DE86C           ;
CODE_0DE85B:        JSR CODE_0DE898           ;
CODE_0DE85E:        BEQ CODE_0DE86C           ;
CODE_0DE860:        JSR CODE_0DE89F           ;
CODE_0DE863:        BEQ CODE_0DE86C           ;
CODE_0DE865:        JSR CODE_0DE836           ;
CODE_0DE868:        LDA #$FD                  ;
CODE_0DE86A:        STA $A1,x                 ;
CODE_0DE86C:        JMP CODE_0DE7D9           ;

CODE_0DE86F:        JSR CODE_0DE898           ;
CODE_0DE872:        BEQ CODE_0DE891           ;
CODE_0DE874:        CMP #$2C                  ;
CODE_0DE876:        BNE CODE_0DE880           ;
CODE_0DE878:        JSR CODE_0DDC98           ;
CODE_0DE87B:        LDA #$FC                  ;
CODE_0DE87D:        STA $A1,x                 ;
CODE_0DE87F:        RTS                       ;

CODE_0DE880:        LDA $0792,x               ;
CODE_0DE883:        BNE CODE_0DE891           ;
CODE_0DE885:        LDA $29,x                 ;
CODE_0DE887:        AND #$88                  ;
CODE_0DE889:        STA $29,x                 ;
CODE_0DE88B:        JSR CODE_0DE836           ;
CODE_0DE88E:        JMP CODE_0DE7D9           ;

CODE_0DE891:        LDA $29,x                 ;
CODE_0DE893:        ORA #$01                  ;
CODE_0DE895:        STA $29,x                 ;
CODE_0DE897:        RTS                       ;

CODE_0DE898:        LDA #$00                  ;
CODE_0DE89A:        LDY #$15                  ;
CODE_0DE89C:        JMP CODE_0DEA96           ;

CODE_0DE89F:        CMP #$2F                  ;
CODE_0DE8A1:        BEQ CODE_0DE8C1           ;
CODE_0DE8A3:        CMP #$EA                  ;
CODE_0DE8A5:        BEQ CODE_0DE8C1           ;
CODE_0DE8A7:        CMP #$EB                  ;
CODE_0DE8A9:        BEQ CODE_0DE8C1           ;
CODE_0DE8AB:        CMP #$5C                  ;
CODE_0DE8AD:        BEQ CODE_0DE8C1           ;
CODE_0DE8AF:        CMP #$5D                  ;
CODE_0DE8B1:        BEQ CODE_0DE8C1           ;
CODE_0DE8B3:        CMP #$5E                  ;
CODE_0DE8B5:        BEQ CODE_0DE8C1           ;
CODE_0DE8B7:        CMP #$60                  ;
CODE_0DE8B9:        BEQ CODE_0DE8C1           ;
CODE_0DE8BB:        CMP #$61                  ;
CODE_0DE8BD:        BEQ CODE_0DE8C1           ;
CODE_0DE8BF:        CMP #$5F                  ;
CODE_0DE8C1:        RTS                       ;

CODE_0DE8C2:        LDA $0242,x               ;
CODE_0DE8C5:        CMP #$18                  ;
CODE_0DE8C7:        BCC CODE_0DE8EE           ;
CODE_0DE8C9:        JSR CODE_0DEAAA           ;
CODE_0DE8CC:        BEQ CODE_0DE8EE           ;
CODE_0DE8CE:        JSR CODE_0DE89F           ;
CODE_0DE8D1:        BEQ CODE_0DE8EE           ;
CODE_0DE8D3:        LDA $AB,x                 ;
CODE_0DE8D5:        BMI CODE_0DE8F4           ;
CODE_0DE8D7:        LDA $020D,x               ;
CODE_0DE8DA:        BNE CODE_0DE8F4           ;
CODE_0DE8DC:        LDA #$FD                  ;
CODE_0DE8DE:        STA $AB,x                 ;
CODE_0DE8E0:        LDA #$01                  ;
CODE_0DE8E2:        STA $020D,x               ;
CODE_0DE8E5:        LDA $0242,x               ;
CODE_0DE8E8:        AND #$F8                  ;
CODE_0DE8EA:        STA $0242,x               ;
CODE_0DE8ED:        RTS                       ;

CODE_0DE8EE:        LDA #$00                  ;
CODE_0DE8F0:        STA $020D,x               ;
CODE_0DE8F3:        RTS                       ;

CODE_0DE8F4:        LDA #$80                  ;
CODE_0DE8F6:        STA $33,x                 ;
CODE_0DE8F8:        LDA #$01                  ;
CODE_0DE8FA:        STA $1600                 ;
CODE_0DE8FD:        RTS                       ;

DATA_0DE8FE:        db $02,$08,$0E,$20,$03,$14,$0D,$20
                    db $02,$14,$0E,$20,$02,$09,$0E,$15
                    db $00,$00,$18,$06,$00,$00,$20,$0D
                    db $00,$00,$30,$0D,$00,$00,$08,$08
                    db $06,$04,$0A,$0C,$03,$0E,$0D,$14
                    db $04,$04,$1C,$1C,$04,$04,$0C,$1C
                    db $03,$07,$0D,$16

CODE_0DE932:        TXA                       ;
CODE_0DE933:        CLC                       ;
CODE_0DE934:        ADC #$0B                  ;
CODE_0DE936:        TAX                       ;
CODE_0DE937:        LDY #$02                  ;
CODE_0DE939:        BNE CODE_0DE942           ;
CODE_0DE93B:        TXA                       ;
CODE_0DE93C:        CLC                       ;
CODE_0DE93D:        ADC #$0D                  ;
CODE_0DE93F:        TAX                       ;
CODE_0DE940:        LDY #$06                  ;
CODE_0DE942:        JSR CODE_0DE9A9           ;
CODE_0DE945:        JMP CODE_0DE9EB           ;

CODE_0DE948:        LDY #$48                  ;
CODE_0DE94A:        STY $00                   ;
CODE_0DE94C:        LDY #$44                  ;
CODE_0DE94E:        JMP CODE_0DE957           ;

CODE_0DE951:        LDY #$08                  ;
CODE_0DE953:        STY $00                   ;
CODE_0DE955:        LDY #$04                  ;
CODE_0DE957:        LDA $021A,x               ;
CODE_0DE95A:        SEC                       ;
CODE_0DE95B:        SBC $071C                 ;
CODE_0DE95E:        STA $01                   ;
CODE_0DE960:        LDA $79,x                 ;
CODE_0DE962:        SBC $071A                 ;
CODE_0DE965:        BMI CODE_0DE96D           ;
CODE_0DE967:        ORA $01                   ;
CODE_0DE969:        BEQ CODE_0DE96D           ;
CODE_0DE96B:        LDY $00                   ;
CODE_0DE96D:        TYA                       ;
CODE_0DE96E:        AND $03D1                 ;
CODE_0DE971:        STA $03D9,x               ;
CODE_0DE974:        CPX #$09                  ;
CODE_0DE976:        BEQ CODE_0DE989           ;
CODE_0DE978:        LDA $03D9,x               ;
CODE_0DE97B:        BNE CODE_0DE996           ;
CODE_0DE97D:        JMP CODE_0DE989           ;

CODE_0DE980:        INX                       ;
CODE_0DE981:        JSR CODE_0DFE34           ;
CODE_0DE984:        DEX                       ;
CODE_0DE985:        CMP #$FE                  ;
CODE_0DE987:        BCS CODE_0DE996           ;
CODE_0DE989:        TXA                       ;
CODE_0DE98A:        CLC                       ;
CODE_0DE98B:        ADC #$01                  ;
CODE_0DE98D:        TAX                       ;
CODE_0DE98E:        LDY #$01                  ;
CODE_0DE990:        JSR CODE_0DE9A9           ;
CODE_0DE993:        JMP CODE_0DE9EB           ;

CODE_0DE996:        TXA                       ;
CODE_0DE997:        ASL A                     ;
CODE_0DE998:        ASL A                     ;
CODE_0DE999:        TAY                       ;
CODE_0DE99A:        LDA #$FF                  ;
CODE_0DE99C:        STA $0FA0,y               ;
CODE_0DE99F:        STA $0FA1,y               ;
CODE_0DE9A2:        STA $0FA2,y               ;
CODE_0DE9A5:        STA $0FA3,y               ;
CODE_0DE9A8:        RTS                       ;

CODE_0DE9A9:        STX $00                   ;
CODE_0DE9AB:        LDA $03B8,y               ;
CODE_0DE9AE:        STA $02                   ;
CODE_0DE9B0:        LDA $03AD,y               ;
CODE_0DE9B3:        STA $01                   ;
CODE_0DE9B5:        TXA                       ;
CODE_0DE9B6:        ASL A                     ;
CODE_0DE9B7:        ASL A                     ;
CODE_0DE9B8:        PHA                       ;
CODE_0DE9B9:        TAY                       ;
CODE_0DE9BA:        LDA $048F,x               ;
CODE_0DE9BD:        ASL A                     ;
CODE_0DE9BE:        ASL A                     ;
CODE_0DE9BF:        TAX                       ;
CODE_0DE9C0:        LDA $01                   ;
CODE_0DE9C2:        CLC                       ;
CODE_0DE9C3:        ADC DATA_0DE8FE,x               ;
CODE_0DE9C6:        STA $0F9C,y               ;
CODE_0DE9C9:        LDA $01                   ;
CODE_0DE9CB:        CLC                       ;
CODE_0DE9CC:        ADC DATA_0DE8FE+2,x               ;
CODE_0DE9CF:        STA $0F9E,y               ;
CODE_0DE9D2:        INX                       ;
CODE_0DE9D3:        INY                       ;
CODE_0DE9D4:        LDA $02                   ;
CODE_0DE9D6:        CLC                       ;
CODE_0DE9D7:        ADC DATA_0DE8FE,x               ;
CODE_0DE9DA:        STA $0F9C,y               ;
CODE_0DE9DD:        LDA $02                   ;
CODE_0DE9DF:        CLC                       ;
CODE_0DE9E0:        ADC DATA_0DE8FE+2,x               ;
CODE_0DE9E3:        STA $0F9E,y               ;
CODE_0DE9E6:        PLA                       ;
CODE_0DE9E7:        TAY                       ;
CODE_0DE9E8:        LDX $00                   ;
CODE_0DE9EA:        RTS                       ;

CODE_0DE9EB:        LDA $071C                 ;
CODE_0DE9EE:        CLC                       ;
CODE_0DE9EF:        ADC #$80                  ;
CODE_0DE9F1:        STA $02                   ;
CODE_0DE9F3:        LDA $071A                 ;
CODE_0DE9F6:        ADC #$00                  ;
CODE_0DE9F8:        STA $01                   ;
CODE_0DE9FA:        LDA $0219,x               ;
CODE_0DE9FD:        CMP $02                   ;
CODE_0DE9FF:        LDA $78,x                 ;
CODE_0DEA01:        SBC $01                   ;
CODE_0DEA03:        BCC CODE_0DEA1A           ;
CODE_0DEA05:        LDA $0F9E,y               ;
CODE_0DEA08:        BMI CODE_0DEA17           ;
CODE_0DEA0A:        LDA #$FF                  ;
CODE_0DEA0C:        LDX $0F9C,y               ;
CODE_0DEA0F:        BMI CODE_0DEA14           ;
CODE_0DEA11:        STA $0F9C,y               ;
CODE_0DEA14:        STA $0F9E,y               ;
CODE_0DEA17:        LDX $9E                   ;
CODE_0DEA19:        RTS                       ;

CODE_0DEA1A:        LDA $0F9C,y               ;
CODE_0DEA1D:        BPL CODE_0DEA30           ;
CODE_0DEA1F:        CMP #$A0                  ;
CODE_0DEA21:        BCC CODE_0DEA30           ;
CODE_0DEA23:        LDA #$00                  ;
CODE_0DEA25:        LDX $0F9E,y               ;
CODE_0DEA28:        BPL CODE_0DEA2D           ;
CODE_0DEA2A:        STA $0F9E,y               ;
CODE_0DEA2D:        STA $0F9C,y               ;
CODE_0DEA30:        LDX $9E                   ;
CODE_0DEA32:        RTS                       ;

CODE_0DEA33:        LDX #$00                  ;
CODE_0DEA35:        STY $06                   ;
CODE_0DEA37:        LDA #$01                  ;
CODE_0DEA39:        STA $07                   ;
CODE_0DEA3B:        LDA $0F9C,y               ;
CODE_0DEA3E:        CMP $0F9C,x               ;
CODE_0DEA41:        BCS CODE_0DEA6D           ;
CODE_0DEA43:        CMP $0F9E,x               ;
CODE_0DEA46:        BCC CODE_0DEA5A           ;
CODE_0DEA48:        BEQ CODE_0DEA8C           ;
CODE_0DEA4A:        LDA $0F9E,y               ;
CODE_0DEA4D:        CMP $0F9C,y               ;
CODE_0DEA50:        BCC CODE_0DEA8C           ;
CODE_0DEA52:        CMP $0F9C,x               ;
CODE_0DEA55:        BCS CODE_0DEA8C           ;
CODE_0DEA57:        LDY $06                   ;
CODE_0DEA59:        RTS                       ;

CODE_0DEA5A:        LDA $0F9E,x               ;
CODE_0DEA5D:        CMP $0F9C,x               ;
CODE_0DEA60:        BCC CODE_0DEA8C           ;
CODE_0DEA62:        LDA $0F9E,y               ;
CODE_0DEA65:        CMP $0F9C,x               ;
CODE_0DEA68:        BCS CODE_0DEA8C           ;
CODE_0DEA6A:        LDY $06                   ;
CODE_0DEA6C:        RTS                       ;

CODE_0DEA6D:        CMP $0F9C,x               ;
CODE_0DEA70:        BEQ CODE_0DEA8C           ;
CODE_0DEA72:        CMP $0F9E,x               ;
CODE_0DEA75:        BCC CODE_0DEA8C           ;
CODE_0DEA77:        BEQ CODE_0DEA8C           ;
CODE_0DEA79:        CMP $0F9E,y               ;
CODE_0DEA7C:        BCC CODE_0DEA88           ;
CODE_0DEA7E:        BEQ CODE_0DEA88           ;
CODE_0DEA80:        LDA $0F9E,y               ;
CODE_0DEA83:        CMP $0F9C,x               ;
CODE_0DEA86:        BCS CODE_0DEA8C           ;
CODE_0DEA88:        CLC                       ;
CODE_0DEA89:        LDY $06                   ;
CODE_0DEA8B:        RTS                       ;

CODE_0DEA8C:        INX                       ;
CODE_0DEA8D:        INY                       ;
CODE_0DEA8E:        DEC $07                   ;
CODE_0DEA90:        BPL CODE_0DEA3B           ;
CODE_0DEA92:        SEC                       ;
CODE_0DEA93:        LDY $06                   ;
CODE_0DEA95:        RTS                       ;

CODE_0DEA96:        PHA                       ;
CODE_0DEA97:        TXA                       ;
CODE_0DEA98:        CLC                       ;
CODE_0DEA99:        ADC #$01                  ;
CODE_0DEA9B:        TAX                       ;
CODE_0DEA9C:        PLA                       ;
CODE_0DEA9D:        JMP CODE_0DEAB3           ;

CODE_0DEAA0:        TXA                       ;
CODE_0DEAA1:        CLC                       ;
CODE_0DEAA2:        ADC #$11                  ;
CODE_0DEAA4:        TAX                       ;
CODE_0DEAA5:        LDY #$1B                  ;
CODE_0DEAA7:        JMP CODE_0DEAB1           ;

CODE_0DEAAA:        LDY #$1A                  ;
CODE_0DEAAC:        TXA                       ;
CODE_0DEAAD:        CLC                       ;
CODE_0DEAAE:        ADC #$0B                  ;
CODE_0DEAB0:        TAX                       ;
CODE_0DEAB1:        LDA #$00                  ;
CODE_0DEAB3:        JSR CODE_0DEAFF           ;
CODE_0DEAB6:        LDX $9E                   ;
CODE_0DEAB8:        CMP #$00                  ;
CODE_0DEABA:        RTS                       ;

DATA_0DEABB:        db $00,$07,$0E ;

DATA_0DEABE:        db $08,$03,$0C,$02,$02,$0D,$0D,$08 ;
                    db $03,$0C,$02,$02,$0D,$0D,$08,$03 ;
                    db $0C,$02,$02,$0D,$0D,$08,$00,$10 ;
                    db $04,$14,$04,$04 ;

DATA_0DEADA:        db $04,$20,$20,$08,$18,$08,$18,$02 ;
                    db $20,$20,$08,$18,$08,$18,$12,$20 ;
                    db $20,$18,$18,$18,$18,$18,$14,$14 ;
                    db $06,$06,$08,$10 ;

CODE_0DEAF6:        INY                       ;
CODE_0DEAF7:        LDA #$00                  ;
CODE_0DEAF9:        BRA CODE_0DEAFD           ;

CODE_0DEAFB:        LDA #$01                  ;
CODE_0DEAFD:        LDX #$00                  ;
CODE_0DEAFF:        PHA                       ;
CODE_0DEB00:        STY $04                   ;
CODE_0DEB02:        LDA DATA_0DEABE,y               ;
CODE_0DEB05:        CLC                       ;
CODE_0DEB06:        ADC $0219,x               ;
CODE_0DEB09:        STA $05                   ;
CODE_0DEB0B:        LDA $78,x                 ;
CODE_0DEB0D:        ADC #$00                  ;
CODE_0DEB0F:        AND #$01                  ;
CODE_0DEB11:        LSR A                     ;
CODE_0DEB12:        ORA $05                   ;
CODE_0DEB14:        ROR A                     ;
CODE_0DEB15:        LSR A                     ;
CODE_0DEB16:        LSR A                     ;
CODE_0DEB17:        LSR A                     ;
CODE_0DEB18:        JSR CODE_0DAA8F           ;
CODE_0DEB1B:        LDY $04                   ;
CODE_0DEB1D:        LDA $0237,x               ;
CODE_0DEB20:        CLC                       ;
CODE_0DEB21:        ADC DATA_0DEADA,y               ;
CODE_0DEB24:        AND #$F0                  ;
CODE_0DEB26:        SEC                       ;
CODE_0DEB27:        SBC #$20                  ;
CODE_0DEB29:        STA $02                   ;
CODE_0DEB2B:        TAY                       ;
CODE_0DEB2C:        LDA ($06),y               ;
CODE_0DEB2E:        STA $03                   ;
CODE_0DEB30:        LDY $04                   ;
CODE_0DEB32:        PLA                       ;
CODE_0DEB33:        BNE CODE_0DEB3B           ;
CODE_0DEB35:        LDA $0237,x               ;
CODE_0DEB38:        JMP CODE_0DEB3E           ;

CODE_0DEB3B:        LDA $0219,x               ;
CODE_0DEB3E:        AND #$0F                  ;
CODE_0DEB40:        STA $04                   ;
CODE_0DEB42:        LDA $E4                   ;
CODE_0DEB44:        BNE CODE_0DEB52           ;
CODE_0DEB46:        LDA $03                   ;
CODE_0DEB48:        CMP #$5C                  ;
CODE_0DEB4A:        BCC CODE_0DEB52           ;
CODE_0DEB4C:        CMP #$62                  ;
CODE_0DEB4E:        BCS CODE_0DEB52           ;
CODE_0DEB50:        STZ $03                   ;
CODE_0DEB52:        LDA $03                   ;
CODE_0DEB54:        RTS                       ;

DATA_0DEB55:        db $FF,$FF,$FF

CODE_0DEB58:        LDX #$06                  ;
CODE_0DEB5A:        STA $0800,y               ;
CODE_0DEB5D:        CLC                       ;
CODE_0DEB5E:        ADC #$08                  ;
CODE_0DEB60:        INY                       ;
CODE_0DEB61:        INY                       ;
CODE_0DEB62:        INY                       ;
CODE_0DEB63:        INY                       ;
CODE_0DEB64:        DEX                       ;
CODE_0DEB65:        BNE CODE_0DEB5A           ;
CODE_0DEB67:        LDY $02                   ;
CODE_0DEB69:        RTS                       ;

CODE_0DEB6A:        LDX #$06                  ;
CODE_0DEB6C:        STA $0900,y               ;
CODE_0DEB6F:        CLC                       ;
CODE_0DEB70:        ADC #$08                  ;
CODE_0DEB72:        INY                       ;
CODE_0DEB73:        INY                       ;
CODE_0DEB74:        INY                       ;
CODE_0DEB75:        INY                       ;
CODE_0DEB76:        DEX                       ;
CODE_0DEB77:        BNE CODE_0DEB6C           ;
CODE_0DEB79:        LDY $02                   ;
CODE_0DEB7B:        RTS                       ;

CODE_0DEB7C:        LDA #$F0                  ;
CODE_0DEB7E:        STA $0815,y               ;
CODE_0DEB81:        STA $0811,y               ;
CODE_0DEB84:        STA $080D,y               ;
CODE_0DEB87:        STA $0809,y               ;
CODE_0DEB8A:        STA $0805,y               ;
CODE_0DEB8D:        STA $0801,y               ;
CODE_0DEB90:        RTS                       ;

CODE_0DEB91:        LDA #$F0                  ;
CODE_0DEB93:        STA $0915,y               ;
CODE_0DEB96:        STA $0911,y               ;
CODE_0DEB99:        STA $090D,y               ;
CODE_0DEB9C:        STA $0909,y               ;
CODE_0DEB9F:        STA $0905,y               ;
CODE_0DEBA2:        STA $0901,y               ;
CODE_0DEBA5:        RTS                       ;

CODE_0DEBA6:        LDA $0743                 ;
CODE_0DEBA9:        BEQ CODE_0DEBAE           ;
CODE_0DEBAB:        JMP CODE_0DEC32           ;

CODE_0DEBAE:        LDY $0B46,x               ;
CODE_0DEBB1:        STY $02                   ;
CODE_0DEBB3:        LDA $03AE                 ;
CODE_0DEBB6:        JSR CODE_0DEB6A           ;
CODE_0DEBB9:        LDX $9E                   ;
CODE_0DEBBB:        LDA $0238,x               ;
CODE_0DEBBE:        JSR CODE_0DEB99           ;
CODE_0DEBC1:        LDY $5C                   ;
CODE_0DEBC3:        CPY #$03                  ;
CODE_0DEBC5:        BEQ CODE_0DEBCC           ;
CODE_0DEBC7:        LDY $06CC                 ;
CODE_0DEBCA:        BEQ CODE_0DEBCE           ;
CODE_0DEBCC:        LDA #$F0                  ;
CODE_0DEBCE:        LDY $0B46,x               ;
CODE_0DEBD1:        STA $0911,y               ;
CODE_0DEBD4:        STA $0915,y               ;
CODE_0DEBD7:        LDA #$87                  ;
CODE_0DEBD9:        LDX $9E                   ;
CODE_0DEBDB:        INY                       ;
CODE_0DEBDC:        JSR CODE_0DEB93           ;
CODE_0DEBDF:        LDA #$2C                  ;
CODE_0DEBE1:        INY                       ;
CODE_0DEBE2:        JSR CODE_0DEB93           ;
CODE_0DEBE5:        JSR CODE_0DFE34           ;
CODE_0DEBE8:        LDY $0B46,x               ;
CODE_0DEBEB:        JSR CODE_0DFEC2           ;
CODE_0DEBEE:        JSR CODE_0DFEDB           ;
CODE_0DEBF1:        PHY                       ;
CODE_0DEBF2:        JSR CODE_0DFF51           ;
CODE_0DEBF5:        JSR CODE_0DFEDB           ;
CODE_0DEBF8:        JSR CODE_0DFF51           ;
CODE_0DEBFB:        JSR CODE_0DFEDB           ;
CODE_0DEBFE:        JSR CODE_0DFF51           ;
CODE_0DEC01:        JSR CODE_0DFEDB           ;
CODE_0DEC04:        JSR CODE_0DFF51           ;
CODE_0DEC07:        JSR CODE_0DFEDB           ;
CODE_0DEC0A:        JSR CODE_0DFF51           ;
CODE_0DEC0D:        JSR CODE_0DFEDB           ;
CODE_0DEC10:        PLY                       ;
CODE_0DEC11:        LDA $03D1                 ;
CODE_0DEC14:        ASL A                     ;
CODE_0DEC15:        BCC CODE_0DEC31           ;
CODE_0DEC17:        LDA $1C,x                 ;
CODE_0DEC19:        CMP #$27                  ;
CODE_0DEC1B:        BEQ CODE_0DEC31           ;
CODE_0DEC1D:        CMP #$26                  ;
CODE_0DEC1F:        BEQ CODE_0DEC31           ;
CODE_0DEC21:        LDA $BC,x                 ;
CODE_0DEC23:        CMP #$01                  ;
CODE_0DEC25:        BNE CODE_0DEC2E           ;
CODE_0DEC27:        LDA $03B9                 ;
CODE_0DEC2A:        CMP #$F0                  ;
CODE_0DEC2C:        BCC CODE_0DEC31           ;
CODE_0DEC2E:        JSR CODE_0DEB91           ;
CODE_0DEC31:        RTS                       ;

CODE_0DEC32:        JSL CODE_0FD4D3           ;
CODE_0DEC36:        RTS                       ;

DATA_0DEC37:        db $E9,$EA,$78,$79,$D6,$D6,$D9,$D9 ;
                    db $8D,$8D,$E4,$E4,$E9,$EA,$78,$79 ;
                    db $7E,$7F,$85,$86 ;

DATA_0DEC4B:        db $2C,$28,$28,$2A,$2C ;

CODE_0DEC50:        LDA $0B4F
CODE_0DEC53:        CLC                       ;
CODE_0DEC54:        ADC #$08                  ;
CODE_0DEC56:        TAY                       ;
CODE_0DEC57:        LDA $03B9                 ;
CODE_0DEC5A:        CLC                       ;
CODE_0DEC5B:        ADC #$08                  ;
CODE_0DEC5D:        STA $02                   ;
CODE_0DEC5F:        LDA $03AE                 ;
CODE_0DEC62:        STA $05                   ;
CODE_0DEC64:        LDX $020C                 ;
CODE_0DEC67:        LDA DATA_0DEC4B,x               ;
CODE_0DEC6A:        EOR $0260                 ;
CODE_0DEC6D:        STA $04                   ;
CODE_0DEC6F:        TXA                       ;
CODE_0DEC70:        PHA                       ;
CODE_0DEC71:        ASL A                     ;
CODE_0DEC72:        ASL A                     ;
CODE_0DEC73:        TAX                       ;
CODE_0DEC74:        LDA #$01                  ;
CODE_0DEC76:        STA $07                   ;
CODE_0DEC78:        STA $03                   ;
CODE_0DEC7A:        LDA DATA_0DEC37,x               ;
CODE_0DEC7D:        STA $00                   ;
CODE_0DEC7F:        LDA DATA_0DEC37+1,x               ;
CODE_0DEC82:        JSR CODE_0DF2EF           ;
CODE_0DEC85:        DEC $07                   ;
CODE_0DEC87:        BPL CODE_0DEC7A           ;
CODE_0DEC89:        LDA $0B4F                 ;
CODE_0DEC8C:        CLC                       ;
CODE_0DEC8D:        ADC #$08                  ;
CODE_0DEC8F:        TAY                       ;
CODE_0DEC90:        PLA                       ;
CODE_0DEC91:        BEQ CODE_0DECD3           ;
CODE_0DEC93:        CMP #$03                  ;
CODE_0DEC95:        BEQ CODE_0DECD3           ;
CODE_0DEC97:        CMP #$04                  ;
CODE_0DEC99:        BEQ CODE_0DECD3           ;
CODE_0DEC9B:        STA $00                   ;
CODE_0DEC9D:        LDA $09                   ;
CODE_0DEC9F:        AND #$06                  ;
CODE_0DECA1:        CMP #$06                  ;
CODE_0DECA3:        BNE CODE_0DECA7           ;
CODE_0DECA5:        LDA #$0E                  ;
CODE_0DECA7:        ORA $0260                 ;
CODE_0DECAA:        EOR #$28                  ;
CODE_0DECAC:        STA $0903,y               ;
CODE_0DECAF:        STA $0907,y               ;
CODE_0DECB2:        STA $090B,y               ;
CODE_0DECB5:        STA $090F,y               ;
CODE_0DECB8:        LDX $00                   ;
CODE_0DECBA:        DEX                       ;
CODE_0DECBB:        BEQ CODE_0DECC3           ;
CODE_0DECBD:        STA $090B,y               ;
CODE_0DECC0:        STA $090F,y               ;
CODE_0DECC3:        LDA $0907,y               ;
CODE_0DECC6:        ORA #$40                  ;
CODE_0DECC8:        STA $0907,y               ;
CODE_0DECCB:        LDA $090F,y               ;
CODE_0DECCE:        ORA #$40                  ;
CODE_0DECD0:        STA $090F,y               ;
CODE_0DECD3:        LDA $0B4F                 ;
CODE_0DECD6:        CLC                       ;
CODE_0DECD7:        ADC #$08                  ;
CODE_0DECD9:        TAY                       ;
CODE_0DECDA:        JMP CODE_0DF29F           ;

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

CODE_0DEE40:        LDA $1C,x                 ;
CODE_0DEE42:        CMP #$0C                  ;
CODE_0DEE44:        BNE CODE_0DEE4B           ;
CODE_0DEE46:        JSL CODE_0FF913           ;
CODE_0DEE4A:        RTS                       ;

CODE_0DEE4B:        CMP #$08                  ;
CODE_0DEE4D:        BNE CODE_0DEE5D           ;
CODE_0DEE4F:        LDA $BC,x                 ;
CODE_0DEE51:        CMP #$02                  ;
CODE_0DEE53:        BNE CODE_0DEE58           ;
CODE_0DEE55:        JSR CODE_0DCCEA           ;
CODE_0DEE58:        JSL CODE_0FD22A           ;
CODE_0DEE5C:        RTS                       ;

CODE_0DEE5D:        CMP #$33                  ;
CODE_0DEE5F:        BNE CODE_0DEE6F           ;
CODE_0DEE61:        LDA $BC,x                 ;
CODE_0DEE63:        CMP #$02                  ;
CODE_0DEE65:        BNE CODE_0DEE6A           ;
CODE_0DEE67:        JSR CODE_0DCCEA           ;
CODE_0DEE6A:        JSL CODE_0FD22A           ;
CODE_0DEE6E:        RTS                       ;

CODE_0DEE6F:        CMP #$2D                  ;
CODE_0DEE71:        BNE CODE_0DEE78           ;
CODE_0DEE73:        JSL CODE_0FD73D           ;
CODE_0DEE77:        RTS                       ;

CODE_0DEE78:        CMP #$35                  ;
CODE_0DEE7A:        BNE CODE_0DEE91           ;
CODE_0DEE7C:        LDA $075F                 ;
CODE_0DEE7F:        CMP #$07                  ;
CODE_0DEE81:        BEQ CODE_0DEE8C           ;
CODE_0DEE83:        CMP #$0C                  ;
CODE_0DEE85:        BEQ CODE_0DEE8C           ;
CODE_0DEE87:        JSL CODE_00D57A           ;
CODE_0DEE8B:        RTS                       ;

CODE_0DEE8C:        JSL CODE_00C4BB           ;
CODE_0DEE90:        RTS                       ;

CODE_0DEE91:        LDA #$02                  ;
CODE_0DEE93:        LDY $075F                 ;
CODE_0DEE96:        CPY #$01                  ;
CODE_0DEE98:        BEQ CODE_0DEEA6           ;
CODE_0DEE9A:        CPY #$02                  ;
CODE_0DEE9C:        BEQ CODE_0DEEA6           ;
CODE_0DEE9E:        CPY #$06                  ;
CODE_0DEEA0:        BEQ CODE_0DEEA6           ;
CODE_0DEEA2:        CPY #$0B                  ;
CODE_0DEEA4:        BNE CODE_0DEEA7           ;
CODE_0DEEA6:        LSR A                     ;
CODE_0DEEA7:        STA $0F30                 ;
CODE_0DEEAA:        STA $0F31                 ;
CODE_0DEEAD:        STA $0F32                 ;
CODE_0DEEB0:        LDA $0238,x               ;
CODE_0DEEB3:        STA $02                   ;
CODE_0DEEB5:        LDA $03AE                 ;
CODE_0DEEB8:        STA $05                   ;
CODE_0DEEBA:        LDY $0B46,x               ;
CODE_0DEEBD:        STY $EB                   ;
CODE_0DEEBF:        LDA #$00                  ;
CODE_0DEEC1:        STA $F0                   ;
CODE_0DEEC3:        LDA $47,x                 ;
CODE_0DEEC5:        STA $03                   ;
CODE_0DEEC7:        LDA $0257,x               ;
CODE_0DEECA:        STA $04                   ;
CODE_0DEECC:        LDA $1C,x                 ;
CODE_0DEECE:        CMP #$0D                  ;
CODE_0DEED0:        BNE CODE_0DEEDC           ;
CODE_0DEED2:        LDY $5E,x                 ;
CODE_0DEED4:        BMI CODE_0DEEDC           ;
CODE_0DEED6:        LDY $0792,x               ;
CODE_0DEED9:        BEQ CODE_0DEEDC           ;
CODE_0DEEDB:        RTS                       ;

CODE_0DEEDC:        LDA $29,x                 ;
CODE_0DEEDE:        STA $ED                   ;
CODE_0DEEE0:        AND #$1F                  ;
CODE_0DEEE2:        TAY                       ;
CODE_0DEEE3:        LDA $1C,x                 ;
CODE_0DEEE5:        CMP #$35                  ;
CODE_0DEEE7:        BNE CODE_0DEEF1           ;
CODE_0DEEE9:        LDY #$00                  ;
CODE_0DEEEB:        LDA #$01                  ;
CODE_0DEEED:        STA $03                   ;
CODE_0DEEEF:        LDA #$15                  ;
CODE_0DEEF1:        CMP #$33                  ;
CODE_0DEEF3:        BNE CODE_0DEF08           ;
CODE_0DEEF5:        DEC $02                   ;
CODE_0DEEF7:        LDA #$20                  ;
CODE_0DEEF9:        LDY $0792,x               ;
CODE_0DEEFC:        BEQ CODE_0DEF00           ;
CODE_0DEEFE:        EOR #$30                  ;
CODE_0DEF00:        STA $04                   ;
CODE_0DEF02:        LDY #$00                  ;
CODE_0DEF04:        STY $ED                   ;
CODE_0DEF06:        LDA #$08                  ;
CODE_0DEF08:        CMP #$32                  ;
CODE_0DEF0A:        BNE CODE_0DEF14           ;
CODE_0DEF0C:        LDY #$03                  ;
CODE_0DEF0E:        LDX $070E                 ;
CODE_0DEF11:        LDA DATA_0DEE17,x               ;
CODE_0DEF14:        STA $EF                   ;
CODE_0DEF16:        STY $EC                   ;
CODE_0DEF18:        LDX $9E                   ;
CODE_0DEF1A:        CMP #$0C                  ;
CODE_0DEF1C:        BNE CODE_0DEF24           ;
CODE_0DEF1E:        LDA $A1,x                 ;
CODE_0DEF20:        BMI CODE_0DEF24           ;
CODE_0DEF22:        INC $F0                   ;
CODE_0DEF24:        LDA $036A                 ;
CODE_0DEF27:        BEQ CODE_0DEF32           ;
CODE_0DEF29:        LDY #$16                  ;
CODE_0DEF2B:        CMP #$01                  ;
CODE_0DEF2D:        BEQ CODE_0DEF30           ;
CODE_0DEF2F:        INY                       ;
CODE_0DEF30:        STY $EF                   ;
CODE_0DEF32:        LDY $EF                   ;
CODE_0DEF34:        CPY #$06                  ;
CODE_0DEF36:        BNE CODE_0DEF55           ;
CODE_0DEF38:        LDA $29,x                 ;
CODE_0DEF3A:        CMP #$02                  ;
CODE_0DEF3C:        BCC CODE_0DEF42           ;
CODE_0DEF3E:        LDX #$04                  ;
CODE_0DEF40:        STX $EC                   ;
CODE_0DEF42:        AND #$20                  ;
CODE_0DEF44:        ORA $0747                 ;
CODE_0DEF47:        BNE CODE_0DEF55           ;
CODE_0DEF49:        LDA $09                   ;
CODE_0DEF4B:        AND #$08                  ;
CODE_0DEF4D:        BNE CODE_0DEF55           ;
CODE_0DEF4F:        LDA $03                   ;
CODE_0DEF51:        EOR #$03                  ;
CODE_0DEF53:        STA $03                   ;
CODE_0DEF55:        CPY #$0D                  ;
CODE_0DEF57:        BNE CODE_0DEF5E           ;
CODE_0DEF59:        LDA $0F24                 ;
CODE_0DEF5C:        BRA CODE_0DEF7D           ;

CODE_0DEF5E:        LDA DATA_0DEDFA,y               ;
CODE_0DEF61:        CPY #$14                  ;
CODE_0DEF63:        BNE CODE_0DEF69           ;
CODE_0DEF65:        LDA #$3C                  ;
CODE_0DEF67:        BRA CODE_0DEF7F           ;

CODE_0DEF69:        CPY #$16                  ;
CODE_0DEF6B:        BEQ CODE_0DEF71           ;
CODE_0DEF6D:        CPY #$17                  ;
CODE_0DEF6F:        BNE CODE_0DEF7D           ;
CODE_0DEF71:        LDA $0201                 ;
CODE_0DEF74:        LSR A                     ;
CODE_0DEF75:        BCC CODE_0DEF7B           ;
CODE_0DEF77:        LDA #$06                  ;
CODE_0DEF79:        BRA CODE_0DEF7D           ;

CODE_0DEF7B:        LDA #$00                  ;
CODE_0DEF7D:        EOR $04                   ;
CODE_0DEF7F:        STA $04                   ;
CODE_0DEF81:        CPY #$15                  ;
CODE_0DEF83:        BNE CODE_0DEF98           ;
CODE_0DEF85:        LDA $075F                 ;
CODE_0DEF88:        CMP #$07                  ;
CODE_0DEF8A:        BEQ CODE_0DEF90           ;
CODE_0DEF8C:        CMP #$0C                  ;
CODE_0DEF8E:        BNE CODE_0DEF98           ;
CODE_0DEF90:        LDA $04                   ;
CODE_0DEF92:        AND #$F0                  ;
CODE_0DEF94:        ORA #$04                  ;
CODE_0DEF96:        STA $04                   ;
CODE_0DEF98:        LDA $0E85                 ;
CODE_0DEF9B:        BEQ CODE_0DEFA6           ;
CODE_0DEF9D:        LDA DATA_0DEDDF,y               ;
CODE_0DEFA0:        CLC                       ;
CODE_0DEFA1:        ADC #$06                  ;
CODE_0DEFA3:        TAX                       ;
CODE_0DEFA4:        BRA CODE_0DEFAA           ;

CODE_0DEFA6:        LDA DATA_0DEDDF,y               ;
CODE_0DEFA9:        TAX                       ;
CODE_0DEFAA:        LDY $EC                   ;
CODE_0DEFAC:        LDA $036A                 ;
CODE_0DEFAF:        BEQ CODE_0DEFDF           ;
CODE_0DEFB1:        CMP #$01                  ;
CODE_0DEFB3:        BNE CODE_0DEFC7           ;
CODE_0DEFB5:        LDA $0363                 ;
CODE_0DEFB8:        BPL CODE_0DEFBC           ;
CODE_0DEFBA:        LDX #$DE                  ;
CODE_0DEFBC:        LDA $ED                   ;
CODE_0DEFBE:        AND #$20                  ;
CODE_0DEFC0:        BEQ CODE_0DEFC4           ;
CODE_0DEFC2:        STX $F0                   ;
CODE_0DEFC4:        JMP CODE_0DF0CD           ;

CODE_0DEFC7:        LDA $0363                 ;
CODE_0DEFCA:        AND #$01                  ;
CODE_0DEFCC:        BEQ CODE_0DEFD0           ;
CODE_0DEFCE:        LDX #$E4                  ;
CODE_0DEFD0:        LDA $ED                   ;
CODE_0DEFD2:        AND #$20                  ;
CODE_0DEFD4:        BEQ CODE_0DEFC4           ;
CODE_0DEFD6:        LDA $02                   ;
CODE_0DEFD8:        SEC                       ;
CODE_0DEFD9:        SBC #$10                  ;
CODE_0DEFDB:        STA $02                   ;
CODE_0DEFDD:        BRA CODE_0DEFC2           ;

CODE_0DEFDF:        CPX #$24                  ;
CODE_0DEFE1:        BNE CODE_0DEFF3           ;
CODE_0DEFE3:        CPY #$05                  ;
CODE_0DEFE5:        BNE CODE_0DEFF1           ;
CODE_0DEFE7:        LDX #$30                  ;
CODE_0DEFE9:        LDA #$02                  ;
CODE_0DEFEB:        STA $03                   ;
CODE_0DEFED:        LDA #$05                  ;
CODE_0DEFEF:        STA $EC                   ;
CODE_0DEFF1:        BRA CODE_0DF043           ;

CODE_0DEFF3:        CPX #$90                  ;
CODE_0DEFF5:        BNE CODE_0DF009           ;
CODE_0DEFF7:        LDA $ED                   ;
CODE_0DEFF9:        AND #$20                  ;
CODE_0DEFFB:        BNE CODE_0DF006           ;
CODE_0DEFFD:        LDA $079B                 ;
CODE_0DF000:        CMP #$10                  ;
CODE_0DF002:        BCS CODE_0DF006           ;
CODE_0DF004:        LDX #$96                  ;
CODE_0DF006:        JMP CODE_0DF0B3           ;

CODE_0DF009:        LDA $EF                   ;
CODE_0DF00B:        CMP #$04                  ;
CODE_0DF00D:        BCS CODE_0DF01F           ;
CODE_0DF00F:        CPY #$02                  ;
CODE_0DF011:        BCC CODE_0DF01F           ;
CODE_0DF013:        LDX #$5A                  ;
CODE_0DF015:        LDY $EF                   ;
CODE_0DF017:        CPY #$02                  ;
CODE_0DF019:        BNE CODE_0DF01F           ;
CODE_0DF01B:        LDX #$7E                  ;
CODE_0DF01D:        INC $02                   ;
CODE_0DF01F:        LDA $EC                   ;
CODE_0DF021:        CMP #$04                  ;
CODE_0DF023:        BNE CODE_0DF043           ;
CODE_0DF025:        LDX #$72                  ;
CODE_0DF027:        INC $02                   ;
CODE_0DF029:        LDY $EF                   ;
CODE_0DF02B:        CPY #$02                  ;
CODE_0DF02D:        BEQ CODE_0DF033           ;
CODE_0DF02F:        LDX #$66                  ;
CODE_0DF031:        INC $02                   ;
CODE_0DF033:        CPY #$06                  ;
CODE_0DF035:        BNE CODE_0DF043           ;
CODE_0DF037:        LDX #$54                  ;
CODE_0DF039:        LDA $ED                   ;
CODE_0DF03B:        AND #$20                  ;
CODE_0DF03D:        BNE CODE_0DF043           ;
CODE_0DF03F:        LDX #$8A                  ;
CODE_0DF041:        DEC $02                   ;
CODE_0DF043:        LDY $9E                   ;
CODE_0DF045:        LDA $EF                   ;
CODE_0DF047:        CMP #$05                  ;
CODE_0DF049:        BNE CODE_0DF057           ;
CODE_0DF04B:        LDA $ED                   ;
CODE_0DF04D:        BEQ CODE_0DF072           ;
CODE_0DF04F:        AND #$08                  ;
CODE_0DF051:        BEQ CODE_0DF0B3           ;
CODE_0DF053:        LDX #$B4                  ;
CODE_0DF055:        BNE CODE_0DF072           ;
CODE_0DF057:        CPX #$48                  ;
CODE_0DF059:        BEQ CODE_0DF072           ;
CODE_0DF05B:        LDA $07A2,y               ;
CODE_0DF05E:        CMP #$05                  ;
CODE_0DF060:        BCS CODE_0DF0B3           ;
CODE_0DF062:        CPX #$3C                  ;
CODE_0DF064:        BNE CODE_0DF072           ;
CODE_0DF066:        CMP #$01                  ;
CODE_0DF068:        BEQ CODE_0DF0B3           ;
CODE_0DF06A:        INC $02                   ;
CODE_0DF06C:        INC $02                   ;
CODE_0DF06E:        INC $02                   ;
CODE_0DF070:        BRA CODE_0DF0A5           ;

CODE_0DF072:        LDA $EF                   ;
CODE_0DF074:        CMP #$06                  ;
CODE_0DF076:        BEQ CODE_0DF0B3           ;
CODE_0DF078:        CMP #$08                  ;
CODE_0DF07A:        BEQ CODE_0DF0B3           ;
CODE_0DF07C:        CMP #$0C                  ;
CODE_0DF07E:        BEQ CODE_0DF0B3           ;
CODE_0DF080:        CMP #$18                  ;
CODE_0DF082:        BCS CODE_0DF0B3           ;
CODE_0DF084:        LDY #$00                  ;
CODE_0DF086:        CMP #$15                  ;
CODE_0DF088:        BNE CODE_0DF09E           ;
CODE_0DF08A:        INY                       ;
CODE_0DF08B:        LDA $075F                 ;
CODE_0DF08E:        CMP #$07                  ;
CODE_0DF090:        BEQ CODE_0DF0B3           ;
CODE_0DF092:        CMP #$0C                  ;
CODE_0DF094:        BEQ CODE_0DF0B3           ;
CODE_0DF096:        LDX #$A2                  ;
CODE_0DF098:        LDA #$03                  ;
CODE_0DF09A:        STA $EC                   ;
CODE_0DF09C:        BNE CODE_0DF0B3           ;
CODE_0DF09E:        LDA $09                   ;
CODE_0DF0A0:        AND DATA_0DEE15,y               ;
CODE_0DF0A3:        BNE CODE_0DF0B3           ;
CODE_0DF0A5:        LDA $ED                   ;
CODE_0DF0A7:        AND #$A0                  ;
CODE_0DF0A9:        ORA $0747                 ;
CODE_0DF0AC:        BNE CODE_0DF0B3           ;
CODE_0DF0AE:        TXA                       ;
CODE_0DF0AF:        CLC                       ;
CODE_0DF0B0:        ADC #$06                  ;
CODE_0DF0B2:        TAX                       ;
CODE_0DF0B3:        LDA $00EF                 ;
CODE_0DF0B6:        CMP #$04                  ;
CODE_0DF0B8:        BEQ CODE_0DF0C6           ;
CODE_0DF0BA:        LDA $ED                   ;
CODE_0DF0BC:        AND #$20                  ;
CODE_0DF0BE:        BEQ CODE_0DF0CD           ;
CODE_0DF0C0:        LDA $EF                   ;
CODE_0DF0C2:        CMP #$04                  ;
CODE_0DF0C4:        BCC CODE_0DF0CD           ;
CODE_0DF0C6:        LDY #$01                  ;
CODE_0DF0C8:        STY $F0                   ;
CODE_0DF0CA:        DEY                       ;
CODE_0DF0CB:        STY $EC                   ;
CODE_0DF0CD:        LDY $EB                   ;
CODE_0DF0CF:        JSL CODE_0FF96C           ;
CODE_0DF0D3:        BCS CODE_0DF0E2           ;
CODE_0DF0D5:        JSR CODE_0DF2E7           ;
CODE_0DF0D8:        JSR CODE_0DF2E7           ;
CODE_0DF0DB:        JSR CODE_0DF2E7           ;
CODE_0DF0DE:        JSL CODE_0FFA4D           ;
CODE_0DF0E2:        LDX $9E                   ;
CODE_0DF0E4:        LDY $0B46,x               ;
CODE_0DF0E7:        LDA $1C,x                 ;
CODE_0DF0E9:        CMP #$0C                  ;
CODE_0DF0EB:        BNE CODE_0DF128           ;
CODE_0DF0ED:        INC $0E1B,x               ;
CODE_0DF0F0:        LDA $0E1B,x               ;
CODE_0DF0F3:        CMP #$12                  ;
CODE_0DF0F5:        BCC CODE_0DF0FD           ;
CODE_0DF0F7:        STZ $0E1B,x               ;
CODE_0DF0FA:        LDA $0E1B,x               ;
CODE_0DF0FD:        TAX                       ;
CODE_0DF0FE:        LDA DATA_0DEE1C,x               ;
CODE_0DF101:        TAX                       ;
CODE_0DF102:        LDA DATA_0DEE2E,x               ;
CODE_0DF105:        STA $0902,y               ;
CODE_0DF108:        LDA DATA_0DEE2E+1,x               ;
CODE_0DF10B:        STA $0906,y               ;
CODE_0DF10E:        LDA DATA_0DEE2E+2,x               ;
CODE_0DF111:        STA $090A,y               ;
CODE_0DF114:        LDA DATA_0DEE2E+3,x               ;
CODE_0DF117:        STA $090E,y               ;
CODE_0DF11A:        LDA DATA_0DEE2E+4,x               ;
CODE_0DF11D:        STA $0912,y               ;
CODE_0DF120:        LDA DATA_0DEE2E+5,x               ;
CODE_0DF123:        STA $0916,y               ;
CODE_0DF126:        LDX $9E                   ;
CODE_0DF128:        LDA $EF                   ;
CODE_0DF12A:        CMP #$08                  ;
CODE_0DF12C:        BNE CODE_0DF131           ;
CODE_0DF12E:        JMP CODE_0DF247           ;

CODE_0DF131:        LDA $F0                   ;
CODE_0DF133:        BEQ CODE_0DF176           ;
CODE_0DF135:        LDA $0903,y               ;
CODE_0DF138:        ORA #$80                  ;
CODE_0DF13A:        INY                       ;
CODE_0DF13B:        INY                       ;
CODE_0DF13C:        JSR CODE_0DEB93           ;
CODE_0DF13F:        DEY                       ;
CODE_0DF140:        DEY                       ;
CODE_0DF141:        TYA                       ;
CODE_0DF142:        TAX                       ;
CODE_0DF143:        LDA $EF                   ;
CODE_0DF145:        CMP #$05                  ;
CODE_0DF147:        BEQ CODE_0DF15A           ;
CODE_0DF149:        CMP #$04                  ;
CODE_0DF14B:        BEQ CODE_0DF15A           ;
CODE_0DF14D:        CMP #$11                  ;
CODE_0DF14F:        BEQ CODE_0DF15A           ;
CODE_0DF151:        CMP #$15                  ;
CODE_0DF153:        BCS CODE_0DF15A           ;
CODE_0DF155:        TXA                       ;
CODE_0DF156:        CLC                       ;
CODE_0DF157:        ADC #$08                  ;
CODE_0DF159:        TAX                       ;
CODE_0DF15A:        LDA $0902,x               ;
CODE_0DF15D:        PHA                       ;
CODE_0DF15E:        LDA $0906,x               ;
CODE_0DF161:        PHA                       ;
CODE_0DF162:        LDA $0912,y               ;
CODE_0DF165:        STA $0902,x               ;
CODE_0DF168:        LDA $0916,y               ;
CODE_0DF16B:        STA $0906,x               ;
CODE_0DF16E:        PLA                       ;
CODE_0DF16F:        STA $0916,y               ;
CODE_0DF172:        PLA                       ;
CODE_0DF173:        STA $0912,y               ;
CODE_0DF176:        LDA $036A                 ;
CODE_0DF179:        BNE CODE_0DF12E           ;
CODE_0DF17B:        LDA $EF                   ;
CODE_0DF17D:        LDX $EC                   ;
CODE_0DF17F:        CMP #$05                  ;
CODE_0DF181:        BNE CODE_0DF186           ;
CODE_0DF183:        JMP CODE_0DF247           ;

CODE_0DF186:        CMP #$07                  ;
CODE_0DF188:        BEQ CODE_0DF1A2           ;
CODE_0DF18A:        CMP #$0D                  ;
CODE_0DF18C:        BEQ CODE_0DF1A2           ;
CODE_0DF18E:        CMP #$04                  ;
CODE_0DF190:        BEQ CODE_0DF1A2           ;
CODE_0DF192:        CMP #$0C                  ;
CODE_0DF194:        BEQ CODE_0DF1A2           ;
CODE_0DF196:        CMP #$12                  ;
CODE_0DF198:        BNE CODE_0DF19E           ;
CODE_0DF19A:        CPX #$05                  ;
CODE_0DF19C:        BNE CODE_0DF1E2           ;
CODE_0DF19E:        CPX #$02                  ;
CODE_0DF1A0:        BCC CODE_0DF1E2           ;
CODE_0DF1A2:        LDA $036A                 ;
CODE_0DF1A5:        BNE CODE_0DF1E2           ;
CODE_0DF1A7:        LDA $0F49                 ;
CODE_0DF1AA:        BNE CODE_0DF1E2           ;
CODE_0DF1AC:        LDA $0903,y               ;
CODE_0DF1AF:        AND #$BE                  ;
CODE_0DF1B1:        STA $0903,y               ;
CODE_0DF1B4:        STA $090B,y               ;
CODE_0DF1B7:        STA $0913,y               ;
CODE_0DF1BA:        ORA #$40                  ;
CODE_0DF1BC:        CPX #$05                  ;
CODE_0DF1BE:        BNE CODE_0DF1C2           ;
CODE_0DF1C0:        ORA #$80                  ;
CODE_0DF1C2:        STA $0907,y               ;
CODE_0DF1C5:        STA $090F,y               ;
CODE_0DF1C8:        STA $0917,y               ;
CODE_0DF1CB:        CPX #$04                  ;
CODE_0DF1CD:        BNE CODE_0DF1E2           ;
CODE_0DF1CF:        LDA $090B,y               ;
CODE_0DF1D2:        ORA #$80                  ;
CODE_0DF1D4:        STA $090B,y               ;
CODE_0DF1D7:        STA $0913,y               ;
CODE_0DF1DA:        ORA #$40                  ;
CODE_0DF1DC:        STA $090F,y               ;
CODE_0DF1DF:        STA $0917,y               ;
CODE_0DF1E2:        LDA $EF                   ;
CODE_0DF1E4:        CMP #$11                  ;
CODE_0DF1E6:        BNE CODE_0DF21D           ;
CODE_0DF1E8:        LDA $F0                   ;
CODE_0DF1EA:        BNE CODE_0DF20D           ;
CODE_0DF1EC:        LDA $0913,y               ;
CODE_0DF1EF:        AND #$BF                  ;
CODE_0DF1F1:        STA $0913,y               ;
CODE_0DF1F4:        LDA $0917,y               ;
CODE_0DF1F7:        ORA #$40                  ;
CODE_0DF1F9:        STA $0917,y               ;
CODE_0DF1FC:        LDX $079B                 ;
CODE_0DF1FF:        CPX #$10                  ;
CODE_0DF201:        BCS CODE_0DF247           ;
CODE_0DF203:        STA $090F,y               ;
CODE_0DF206:        AND #$BF                  ;
CODE_0DF208:        STA $090B,y               ;
CODE_0DF20B:        BCC CODE_0DF247           ;
CODE_0DF20D:        LDA $0903,y               ;
CODE_0DF210:        AND #$BF                  ;
CODE_0DF212:        STA $0903,y               ;
CODE_0DF215:        LDA $0907,y               ;
CODE_0DF218:        ORA #$40                  ;
CODE_0DF21A:        STA $0907,y               ;
CODE_0DF21D:        LDA $EF                   ;
CODE_0DF21F:        CMP #$18                  ;
CODE_0DF221:        BCC CODE_0DF247           ;
CODE_0DF223:        LDA $0F30                 ;
CODE_0DF226:        LSR A                     ;
CODE_0DF227:        BCC CODE_0DF22D           ;
CODE_0DF229:        LDA #$AA                  ;
CODE_0DF22B:        BRA CODE_0DF22F           ;

CODE_0DF22D:        LDA #$AC                  ;
CODE_0DF22F:        STA $090B,y               ;
CODE_0DF232:        STA $0913,y               ;
CODE_0DF235:        ORA #$40                  ;
CODE_0DF237:        STA $090F,y               ;
CODE_0DF23A:        STA $0917,y               ;
CODE_0DF23D:        AND #$3F                  ;
CODE_0DF23F:        STA $0903,y               ;
CODE_0DF242:        ORA #$40                  ;
CODE_0DF244:        STA $0907,y               ;
CODE_0DF247:        LDX $9E                   ;
CODE_0DF249:        LDA $EF                   ;
CODE_0DF24B:        CMP #$0D                  ;
CODE_0DF24D:        BNE CODE_0DF26B           ;
CODE_0DF24F:        LDA $29,x                 ;
CODE_0DF251:        AND #$20                  ;
CODE_0DF253:        BNE CODE_0DF28B           ;
CODE_0DF255:        LDA $0913,y               ;
CODE_0DF258:        AND #$F0                  ;
CODE_0DF25A:        ORA #$08                  ;
CODE_0DF25C:        STA $0913,y               ;
CODE_0DF25F:        LDA $0917,y               ;
CODE_0DF262:        AND #$F0                  ;
CODE_0DF264:        ORA #$08                  ;
CODE_0DF266:        STA $0917,y               ;
CODE_0DF269:        BRA CODE_0DF29F           ;

CODE_0DF26B:        CMP #$04                  ;
CODE_0DF26D:        BNE CODE_0DF29F           ;
CODE_0DF26F:        LDA $29,x                 ;
CODE_0DF271:        AND #$20                  ;
CODE_0DF273:        BNE CODE_0DF28B           ;
CODE_0DF275:        LDA $0903,y               ;
CODE_0DF278:        AND #$F0                  ;
CODE_0DF27A:        ORA #$08                  ;
CODE_0DF27C:        STA $0903,y               ;
CODE_0DF27F:        LDA $0907,y               ;
CODE_0DF282:        AND #$F0                  ;
CODE_0DF284:        ORA #$08                  ;
CODE_0DF286:        STA $0907,y               ;
CODE_0DF289:        BRA CODE_0DF29F           ;

CODE_0DF28B:        LDA #$F0                  ;
CODE_0DF28D:        STA $0901,y               ;
CODE_0DF290:        STA $0905,y               ;
CODE_0DF293:        STA $0909,y               ;
CODE_0DF296:        STA $090D,y               ;
CODE_0DF299:        STA $0911,y               ;
CODE_0DF29C:        STA $0915,y               ;
CODE_0DF29F:        LDX $9E                   ;
CODE_0DF2A1:        JSR CODE_0DFEC2           ;
CODE_0DF2A4:        STZ $04                   ;
CODE_0DF2A6:        JSR CODE_0DFEFB           ;
CODE_0DF2A9:        JSR CODE_0DFF51           ;
CODE_0DF2AC:        STZ $04                   ;
CODE_0DF2AE:        JSR CODE_0DFEFB           ;
CODE_0DF2B1:        DEY                       ;
CODE_0DF2B2:        DEY                       ;
CODE_0DF2B3:        DEY                       ;
CODE_0DF2B4:        DEY                       ;
CODE_0DF2B5:        LDA $03D1                 ;
CODE_0DF2B8:        LSR A                     ;
CODE_0DF2B9:        LSR A                     ;
CODE_0DF2BA:        LSR A                     ;
CODE_0DF2BB:        LSR A                     ;
CODE_0DF2BC:        LSR A                     ;
CODE_0DF2BD:        LSR A                     ;
CODE_0DF2BE:        PHA                       ;
CODE_0DF2BF:        BCC CODE_0DF2C6           ;
CODE_0DF2C1:        LDA #$10                  ;
CODE_0DF2C3:        JSR CODE_0DF303           ;
CODE_0DF2C6:        PLA                       ;
CODE_0DF2C7:        LSR A                     ;
CODE_0DF2C8:        PHA                       ;
CODE_0DF2C9:        BCC CODE_0DF2D0           ;
CODE_0DF2CB:        LDA #$08                  ;
CODE_0DF2CD:        JSR CODE_0DF303           ;
CODE_0DF2D0:        PLA                       ;
CODE_0DF2D1:        LSR A                     ;
CODE_0DF2D2:        BCC CODE_0DF2E6           ;
CODE_0DF2D4:        JSR CODE_0DF303           ;
CODE_0DF2D7:        LDA $1C,x                 ;
CODE_0DF2D9:        CMP #$0C                  ;
CODE_0DF2DB:        BEQ CODE_0DF2E6           ;
CODE_0DF2DD:        LDA $BC,x                 ;
CODE_0DF2DF:        CMP #$02                  ;
CODE_0DF2E1:        BNE CODE_0DF2E6           ;
CODE_0DF2E3:        JSR CODE_0DCCEA           ;
CODE_0DF2E6:        RTS                       ;

CODE_0DF2E7:        LDA DATA_0DECDD,x               ;
CODE_0DF2EA:        STA $00                   ;
CODE_0DF2EC:        LDA DATA_0DECDD+1,x               ;
CODE_0DF2EF:        STA $01                   ;
CODE_0DF2F1:        LDA $02                   ;
CODE_0DF2F3:        CMP #$F9                  ;
CODE_0DF2F5:        BNE CODE_0DF2FB           ;
CODE_0DF2F7:        LDA #$F0                  ;
CODE_0DF2F9:        STA $02                   ;
CODE_0DF2FB:        JMP CODE_0DFFAC           ;

CODE_0DF2FE:        STA $01                   ;
CODE_0DF300:        JMP CODE_0DFF64           ;

CODE_0DF303:        STX $9E                   ;
CODE_0DF305:        CPX #$0A                  ;
CODE_0DF307:        BNE CODE_0DF30A           ;
CODE_0DF309:        DEX                       ;
CODE_0DF30A:        CLC                       ;
CODE_0DF30B:        ADC $0B46,x               ;
CODE_0DF30E:        TAY                       ;
CODE_0DF30F:        LDA #$F0                  ;
CODE_0DF311:        LDX $9E                   ;
CODE_0DF313:        JMP CODE_0DEB9F           ;

CODE_0DF316:        STX $9E                   ;
CODE_0DF318:        CPX #$0A                  ;
CODE_0DF31A:        BNE CODE_0DF31D           ;
CODE_0DF31C:        DEX                       ;
CODE_0DF31D:        CLC                       ;
CODE_0DF31E:        ADC $0B46,x               ;
CODE_0DF321:        TAY                       ;
CODE_0DF322:        LDA #$F0                  ;
CODE_0DF324:        STA $0901,y               ;
CODE_0DF327:        STA $0909,y               ;
CODE_0DF32A:        STA $0911,y               ;
CODE_0DF32D:        LDX $9E                   ;
CODE_0DF32F:        RTS                       ;

CODE_0DF330:        LDA #$01                  ;
CODE_0DF332:        STA $0D00,y               ;
CODE_0DF335:        STA $0D08,y               ;
CODE_0DF338:        STA $0D10,y               ;
CODE_0DF33B:        RTS                       ;

CODE_0DF33C:        LDA #$01                  ;
CODE_0DF33E:        STA $0D04,y               ;
CODE_0DF341:        STA $0D0C,y               ;
CODE_0DF344:        STA $0D14,y               ;
CODE_0DF347:        RTS                       ;

CODE_0DF348:        LDY $0B51,x               ;
CODE_0DF34B:        LDA $03B1                 ;
CODE_0DF34E:        STA $0800,y               ;
CODE_0DF351:        LDA $03BC                 ;
CODE_0DF354:        STA $0801,y               ;
CODE_0DF357:        LDA #$2B                  ;
CODE_0DF359:        STA $0803,y               ;
CODE_0DF35C:        LDA #$02                  ;
CODE_0DF35E:        STA $0C00,y               ;
CODE_0DF361:        LDA $03EA,x               ;
CODE_0DF364:        CMP #$FD                  ;
CODE_0DF366:        BNE CODE_0DF36C           ;
CODE_0DF368:        LDA #$00                  ;
CODE_0DF36A:        BRA CODE_0DF36E           ;

CODE_0DF36C:        LDA #$02                  ;
CODE_0DF36E:        STA $0802,y               ;
CODE_0DF371:        LDA $85,x                 ;
CODE_0DF373:        STA $E5                   ;
CODE_0DF375:        LDA $0226,x               ;
CODE_0DF378:        STA $E4                   ;
CODE_0DF37A:        REP #$20                  ;
CODE_0DF37C:        LDA $E4                   ;
CODE_0DF37E:        SEC                       ;
CODE_0DF37F:        SBC $42                   ;
CODE_0DF381:        STA $E4                   ;
CODE_0DF383:        SEP #$20                  ;
CODE_0DF385:        LDA $E5                   ;
CODE_0DF387:        BEQ CODE_0DF38E           ;
CODE_0DF389:        LDA #$03                  ;
CODE_0DF38B:        STA $0C00,y               ;
CODE_0DF38E:        RTS                       ;

CODE_0DF38F:        AND #$08                  ;
CODE_0DF391:        BEQ CODE_0DF39B           ;
CODE_0DF393:        LDA #$F0                  ;
CODE_0DF395:        STA $0801,y               ;
CODE_0DF398:        STA $0809,y               ;
CODE_0DF39B:        RTS                       ;

CODE_0DF39C:        LDA #$2C                  ;
CODE_0DF39E:        STA $00                   ;
CODE_0DF3A0:        LDA #$75                  ;
CODE_0DF3A2:        LDY $0F                   ;
CODE_0DF3A4:        CPY #$05                  ;
CODE_0DF3A6:        BEQ CODE_0DF3AE           ;
CODE_0DF3A8:        LDA #$2A                  ;
CODE_0DF3AA:        STA $00                   ;
CODE_0DF3AC:        LDA #$84                  ;
CODE_0DF3AE:        LDY $0B51,x               ;
CODE_0DF3B1:        INY                       ;
CODE_0DF3B2:        JSR CODE_0DEB84           ;
CODE_0DF3B5:        LDA $09                   ;
CODE_0DF3B7:        ASL A                     ;
CODE_0DF3B8:        ASL A                     ;
CODE_0DF3B9:        ASL A                     ;
CODE_0DF3BA:        ASL A                     ;
CODE_0DF3BB:        AND #$C0                  ;
CODE_0DF3BD:        ORA $00                   ;
CODE_0DF3BF:        INY                       ;
CODE_0DF3C0:        JSR CODE_0DEB84           ;
CODE_0DF3C3:        DEY                       ;
CODE_0DF3C4:        DEY                       ;
CODE_0DF3C5:        LDA $03BC                 ;
CODE_0DF3C8:        CMP #$F0                  ;
CODE_0DF3CA:        BCC CODE_0DF3CE           ;
CODE_0DF3CC:        LDA #$F0                  ;
CODE_0DF3CE:        JSR CODE_0DEB8A           ;
CODE_0DF3D1:        LDA $03B1                 ;
CODE_0DF3D4:        STA $0800,y               ;
CODE_0DF3D7:        LDA $03F3,x               ;
CODE_0DF3DA:        SEC                       ;
CODE_0DF3DB:        SBC $071C                 ;
CODE_0DF3DE:        STA $00                   ;
CODE_0DF3E0:        SEC                       ;
CODE_0DF3E1:        SBC $03B1                 ;
CODE_0DF3E4:        ADC $00                   ;
CODE_0DF3E6:        ADC #$06                  ;
CODE_0DF3E8:        STA $0804,y               ;
CODE_0DF3EB:        LDA $03BD                 ;
CODE_0DF3EE:        CMP #$F0                  ;
CODE_0DF3F0:        BCC CODE_0DF3F4           ;
CODE_0DF3F2:        LDA #$F0                  ;
CODE_0DF3F4:        STA $0809,y               ;
CODE_0DF3F7:        STA $080D,y               ;
CODE_0DF3FA:        LDA $03B2                 ;
CODE_0DF3FD:        STA $0808,y               ;
CODE_0DF400:        LDA $00                   ;
CODE_0DF402:        SEC                       ;
CODE_0DF403:        SBC $03B2                 ;
CODE_0DF406:        ADC $00                   ;
CODE_0DF408:        ADC #$06                  ;
CODE_0DF40A:        STA $080C,y               ;
CODE_0DF40D:        LDA $03D4                 ;
CODE_0DF410:        ASL A                     ;
CODE_0DF411:        BCC CODE_0DF418           ;
CODE_0DF413:        LDA #$F0                  ;
CODE_0DF415:        JSR CODE_0DEB8A           ;
CODE_0DF418:        LDA $03D4                 ;
CODE_0DF41B:        BEQ CODE_0DF425           ;
CODE_0DF41D:        LDA #$01                  ;
CODE_0DF41F:        STA $0C00,y               ;
CODE_0DF422:        STA $0C08,y               ;
CODE_0DF425:        LDA $03D5                 ;
CODE_0DF428:        BEQ CODE_0DF432           ;
CODE_0DF42A:        LDA #$01                  ;
CODE_0DF42C:        STA $0C04,y               ;
CODE_0DF42F:        STA $0C0C,y               ;
CODE_0DF432:        RTS                       ;

CODE_0DF433:        LDY $0B56,x               ;
CODE_0DF436:        LDA $03BA                 ;
CODE_0DF439:        STA $0801,y               ;
CODE_0DF43C:        LDA $03AF                 ;
CODE_0DF43F:        STA $0800,y               ;
CODE_0DF442:        LDA $09                   ;
CODE_0DF444:        LSR A                     ;
CODE_0DF445:        LSR A                     ;
CODE_0DF446:        PHA                       ;
CODE_0DF447:        AND #$01                  ;
CODE_0DF449:        EOR #$BE                  ;
CODE_0DF44B:        STA $0802,y               ;
CODE_0DF44E:        PLA                       ;
CODE_0DF44F:        LSR A                     ;
CODE_0DF450:        LSR A                     ;
CODE_0DF451:        LDA #$28                  ;
CODE_0DF453:        BCC CODE_0DF457           ;
CODE_0DF455:        ORA #$C0                  ;
CODE_0DF457:        STA $0803,y               ;
CODE_0DF45A:        LDA $0068,x               ;
CODE_0DF45D:        BPL CODE_0DF46B           ;
CODE_0DF45F:        LDA $03AF                 ;
CODE_0DF462:        CMP #$F8                  ;
CODE_0DF464:        BCC CODE_0DF46B           ;
CODE_0DF466:        LDA #$01                  ;
CODE_0DF468:        STA $0C00,y               ;
CODE_0DF46B:        RTS                       ;

CODE_0DF46C:        LDY $0B56,x               ;
CODE_0DF46F:        LDA $03BA                 ;
CODE_0DF472:        STA $0901,y               ;
CODE_0DF475:        LDA $03AF                 ;
CODE_0DF478:        STA $0900,y               ;
CODE_0DF47B:        LDA $09                   ;
CODE_0DF47D:        LSR A                     ;
CODE_0DF47E:        LSR A                     ;
CODE_0DF47F:        PHA                       ;
CODE_0DF480:        AND #$01                  ;
CODE_0DF482:        EOR #$BE                  ;
CODE_0DF484:        STA $0902,y               ;
CODE_0DF487:        PLA                       ;
CODE_0DF488:        LSR A                     ;
CODE_0DF489:        LSR A                     ;
CODE_0DF48A:        LDA #$38                  ;
CODE_0DF48C:        BCC CODE_0DF490           ;
CODE_0DF48E:        ORA #$C0                  ;
CODE_0DF490:        STA $0903,y               ;
CODE_0DF493:        RTS                       ;

DATA_0DF494:        db $CC,$CB,$CA,$FC

CODE_0DF498:        LDY $0B51,x
CODE_0DF49B:        LDA $0068,x               ;
CODE_0DF49E:        BMI CODE_0DF4B7           ;
CODE_0DF4A0:        LDA $03AF                 ;
CODE_0DF4A3:        SEC                       ;
CODE_0DF4A4:        SBC #$04                  ;
CODE_0DF4A6:        STA $03AF                 ;
CODE_0DF4A9:        CMP #$F8                  ;
CODE_0DF4AB:        BCC CODE_0DF4D6           ;
CODE_0DF4AD:        LDA #$01                  ;
CODE_0DF4AF:        STA $0C08,y               ;
CODE_0DF4B2:        STA $0C0C,y               ;
CODE_0DF4B5:        BRA CODE_0DF4D6           ;

CODE_0DF4B7:        LDA $03AF                 ;
CODE_0DF4BA:        CMP #$F0                  ;
CODE_0DF4BC:        BCC CODE_0DF4D6           ;
CODE_0DF4BE:        CMP #$F8                  ;
CODE_0DF4C0:        BCC CODE_0DF4CC           ;
CODE_0DF4C2:        LDA #$01                  ;
CODE_0DF4C4:        STA $0C00,y               ;
CODE_0DF4C7:        STA $0C04,y               ;
CODE_0DF4CA:        BRA CODE_0DF4D6           ;

CODE_0DF4CC:        LDA #$01                  ;
CODE_0DF4CE:        STA $0C00,y               ;
CODE_0DF4D1:        STA $0C04,y               ;
CODE_0DF4D4:        BRA CODE_0DF4AD           ;

CODE_0DF4D6:        LDA $33,x                 ;
CODE_0DF4D8:        INC $33,x                 ;
CODE_0DF4DA:        LSR A                     ;
CODE_0DF4DB:        AND #$07                  ;
CODE_0DF4DD:        CMP #$03                  ;
CODE_0DF4DF:        BCS CODE_0DF528           ;
CODE_0DF4E1:        TAX                       ;
CODE_0DF4E2:        LDA DATA_0DF494,x               ;
CODE_0DF4E5:        INY                       ;
CODE_0DF4E6:        JSR CODE_0DEB84           ;
CODE_0DF4E9:        DEY                       ;
CODE_0DF4EA:        LDX $9E                   ;
CODE_0DF4EC:        LDA $03BA                 ;
CODE_0DF4EF:        SEC                       ;
CODE_0DF4F0:        SBC #$04                  ;
CODE_0DF4F2:        STA $0801,y               ;
CODE_0DF4F5:        STA $0809,y               ;
CODE_0DF4F8:        CLC                       ;
CODE_0DF4F9:        ADC #$08                  ;
CODE_0DF4FB:        STA $0805,y               ;
CODE_0DF4FE:        STA $080D,y               ;
CODE_0DF501:        LDA $03AF                 ;
CODE_0DF504:        STA $0800,y               ;
CODE_0DF507:        STA $0804,y               ;
CODE_0DF50A:        CLC                       ;
CODE_0DF50B:        ADC #$08                  ;
CODE_0DF50D:        STA $0808,y               ;
CODE_0DF510:        STA $080C,y               ;
CODE_0DF513:        LDA #$28                  ;
CODE_0DF515:        STA $0803,y               ;
CODE_0DF518:        LDA #$A8                  ;
CODE_0DF51A:        STA $0807,y               ;
CODE_0DF51D:        LDA #$68                  ;
CODE_0DF51F:        STA $080B,y               ;
CODE_0DF522:        LDA #$E8                  ;
CODE_0DF524:        STA $080F,y               ;
CODE_0DF527:        RTS                       ;

CODE_0DF528:        STZ $33,x                 ;
CODE_0DF52A:        RTS                       ;

DATA_0DF52B:        db $48,$4A,$4C,$4E

DATA_0DF52F:        db $0C,$08,$0A,$0C,$08,$0A,$0C,$08
                    db $0A

CODE_0DF538:        TAX                       ;
CODE_0DF539:        LDA DATA_0DF52B,x               ;
CODE_0DF53C:        INY                       ;
CODE_0DF53D:        JSR CODE_0DEB99           ;
CODE_0DF540:        DEY                       ;
CODE_0DF541:        LDX $9E                   ;
CODE_0DF543:        LDA $03BA                 ;
CODE_0DF546:        SEC                       ;
CODE_0DF547:        SBC #$10                  ;
CODE_0DF549:        STA $0901,y               ;
CODE_0DF54C:        STA $0909,y               ;
CODE_0DF54F:        CLC                       ;
CODE_0DF550:        ADC #$10                  ;
CODE_0DF552:        STA $0905,y               ;
CODE_0DF555:        STA $090D,y               ;
CODE_0DF558:        LDA $03AF                 ;
CODE_0DF55B:        SEC                       ;
CODE_0DF55C:        SBC #$08                  ;
CODE_0DF55E:        STA $0900,y               ;
CODE_0DF561:        STA $0904,y               ;
CODE_0DF564:        CLC                       ;
CODE_0DF565:        ADC #$10                  ;
CODE_0DF567:        STA $0908,y               ;
CODE_0DF56A:        STA $090C,y               ;
CODE_0DF56D:        LDA #$02                  ;
CODE_0DF56F:        STA $0D00,y               ;
CODE_0DF572:        STA $0D04,y               ;
CODE_0DF575:        STA $0D08,y               ;
CODE_0DF578:        STA $0D0C,y               ;
CODE_0DF57B:        PHX                       ;
CODE_0DF57C:        LDA $A1,x                 ;
CODE_0DF57E:        TAX                       ;
CODE_0DF57F:        DEX                       ;
CODE_0DF580:        LDA DATA_0DF52F,x               ;
CODE_0DF583:        ORA #$20                  ;
CODE_0DF585:        STA $0903,y               ;
CODE_0DF588:        LDA DATA_0DF52F,x               ;
CODE_0DF58B:        ORA #$A0                  ;
CODE_0DF58D:        STA $0907,y               ;
CODE_0DF590:        LDA DATA_0DF52F,x               ;
CODE_0DF593:        ORA #$60                  ;
CODE_0DF595:        STA $090B,y               ;
CODE_0DF598:        LDA DATA_0DF52F,x               ;
CODE_0DF59B:        ORA #$E0                  ;
CODE_0DF59D:        STA $090F,y               ;
CODE_0DF5A0:        PLX                       ;
CODE_0DF5A1:        RTS                       ;

CODE_0DF5A2:        LDY $0B46,x               ;
CODE_0DF5A5:        LDA #$87                  ;
CODE_0DF5A7:        INY                       ;
CODE_0DF5A8:        JSR CODE_0DEB93           ;
CODE_0DF5AB:        INY                       ;
CODE_0DF5AC:        LDA #$2C                  ;
CODE_0DF5AE:        JSR CODE_0DEB93           ;
CODE_0DF5B1:        DEY                       ;
CODE_0DF5B2:        DEY                       ;
CODE_0DF5B3:        LDA $03AE                 ;
CODE_0DF5B6:        STA $0900,y               ;
CODE_0DF5B9:        STA $090C,y               ;
CODE_0DF5BC:        CLC                       ;
CODE_0DF5BD:        ADC #$08                  ;
CODE_0DF5BF:        STA $0904,y               ;
CODE_0DF5C2:        STA $0910,y               ;
CODE_0DF5C5:        CLC                       ;
CODE_0DF5C6:        ADC #$08                  ;
CODE_0DF5C8:        STA $0908,y               ;
CODE_0DF5CB:        STA $0914,y               ;
CODE_0DF5CE:        LDA $0238,x               ;
CODE_0DF5D1:        TAX                       ;
CODE_0DF5D2:        PHA                       ;
CODE_0DF5D3:        CPX #$00                  ;
CODE_0DF5D5:        BCS CODE_0DF5D9           ;
CODE_0DF5D7:        LDA #$F0                  ;
CODE_0DF5D9:        JSR CODE_0DEB9C           ;
CODE_0DF5DC:        PLA                       ;
CODE_0DF5DD:        CLC                       ;
CODE_0DF5DE:        ADC #$80                  ;
CODE_0DF5E0:        TAX                       ;
CODE_0DF5E1:        CPX #$00                  ;
CODE_0DF5E3:        BCS CODE_0DF5E7           ;
CODE_0DF5E5:        LDA #$F0                  ;
CODE_0DF5E7:        STA $090D,y               ;
CODE_0DF5EA:        STA $0911,y               ;
CODE_0DF5ED:        STA $0915,y               ;
CODE_0DF5F0:        LDA $03D1                 ;
CODE_0DF5F3:        PHA                       ;
CODE_0DF5F4:        AND #$08                  ;
CODE_0DF5F6:        BEQ CODE_0DF600           ;
CODE_0DF5F8:        LDA #$01                  ;
CODE_0DF5FA:        STA $0D00,y               ;
CODE_0DF5FD:        STA $0D0C,y               ;
CODE_0DF600:        PLA                       ;
CODE_0DF601:        PHA                       ;
CODE_0DF602:        AND #$04                  ;
CODE_0DF604:        BEQ CODE_0DF60E           ;
CODE_0DF606:        LDA #$01                  ;
CODE_0DF608:        STA $0D04,y               ;
CODE_0DF60B:        STA $0D10,y               ;
CODE_0DF60E:        PLA                       ;
CODE_0DF60F:        AND #$02                  ;
CODE_0DF611:        BEQ CODE_0DF61B           ;
CODE_0DF613:        LDA #$01                  ;
CODE_0DF615:        STA $0D08,y               ;
CODE_0DF618:        STA $0D14,y               ;
CODE_0DF61B:        LDX $9E                   ;
CODE_0DF61D:        RTS                       ;

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

CODE_0DF700:        LDA $0E41                 ;
CODE_0DF703:        BNE CODE_0DF722           ;
CODE_0DF705:        LDA $06D5                 ;
CODE_0DF708:        CMP #$18                  ;
CODE_0DF70A:        BEQ CODE_0DF710           ;
CODE_0DF70C:        CMP #$78                  ;
CODE_0DF70E:        BNE CODE_0DF726           ;
CODE_0DF710:        INC $0E41                 ;
CODE_0DF713:        BRA CODE_0DF71F           ;

CODE_0DF715:        LDA $0202                 ;
CODE_0DF718:        AND #$02                  ;
CODE_0DF71A:        BNE CODE_0DF726           ;
CODE_0DF71C:        INC $0E41                 ;
CODE_0DF71F:        STZ $0E40                 ;
CODE_0DF722:        JSL CODE_0FE5A4           ;
CODE_0DF726:        LDA $0F                   ;
CODE_0DF728:        CMP #$03                  ;
CODE_0DF72A:        BEQ CODE_0DF736           ;
CODE_0DF72C:        LDA $07AE                 ;
CODE_0DF72F:        BEQ CODE_0DF736           ;
CODE_0DF731:        LDA $09                   ;
CODE_0DF733:        LSR A                     ;
CODE_0DF734:        BCS CODE_0DF7AC           ;
CODE_0DF736:        LDA $0F                   ;
CODE_0DF738:        CMP #$0B                  ;
CODE_0DF73A:        BEQ CODE_0DF7B7           ;
CODE_0DF73C:        LDA $070B                 ;
CODE_0DF73F:        BNE CODE_0DF7B2           ;
CODE_0DF741:        LDY $0704                 ;
CODE_0DF744:        BEQ CODE_0DF7AD           ;
CODE_0DF746:        LDA $28                   ;
CODE_0DF748:        CMP #$00                  ;
CODE_0DF74A:        BEQ CODE_0DF7AD           ;
CODE_0DF74C:        JSR CODE_0DF7AD           ;
CODE_0DF74F:        TAX                       ;
CODE_0DF750:        LDY $0B45                 ;
CODE_0DF753:        LDA $0202                 ;
CODE_0DF756:        LSR A                     ;
CODE_0DF757:        BCS CODE_0DF75D           ;
CODE_0DF759:        INY                       ;
CODE_0DF75A:        INY                       ;
CODE_0DF75B:        INY                       ;
CODE_0DF75C:        INY                       ;
CODE_0DF75D:        LDA $0754                 ;
CODE_0DF760:        BNE CODE_0DF7AC           ;
CODE_0DF762:        LDA $0028                 ;
CODE_0DF765:        CMP #$03                  ;
CODE_0DF767:        BEQ CODE_0DF7AC           ;
CODE_0DF769:        LDA $000F                 ;
CODE_0DF76C:        CMP #$0B                  ;
CODE_0DF76E:        BEQ CODE_0DF7AC           ;
CODE_0DF770:        PHX                       ;
CODE_0DF771:        LDA $0202                 ;
CODE_0DF774:        CMP #$02                  ;
CODE_0DF776:        BEQ CODE_0DF787           ;
CODE_0DF778:        LDA $0810,y               ;
CODE_0DF77B:        SEC                       ;
CODE_0DF77C:        SBC #$08                  ;
CODE_0DF77E:        STA $0810,y               ;
CODE_0DF781:        BCS CODE_0DF787           ;
CODE_0DF783:        LDA #$03                  ;
CODE_0DF785:        BRA CODE_0DF789           ;

CODE_0DF787:        LDA #$02                  ;
CODE_0DF789:        STA $0C10,y               ;
CODE_0DF78C:        LDA $06D5                 ;
CODE_0DF78F:        SEC                       ;
CODE_0DF790:        SBC #$28                  ;
CODE_0DF792:        LSR A                     ;
CODE_0DF793:        LSR A                     ;
CODE_0DF794:        CLC                       ;
CODE_0DF795:        ADC #$08                  ;
CODE_0DF797:        STA $0812,y               ;
CODE_0DF79A:        LDA $0819,y               ;
CODE_0DF79D:        CMP #$F0                  ;
CODE_0DF79F:        BCC CODE_0DF7A6           ;
CODE_0DF7A1:        LDA #$F0                  ;
CODE_0DF7A3:        STA $0811,y               ;
CODE_0DF7A6:        LDA #$F0                  ;
CODE_0DF7A8:        STA $0819,y               ;
CODE_0DF7AB:        PLX                       ;
CODE_0DF7AC:        RTS                       ;

CODE_0DF7AD:        JSR CODE_0DFBB8           ;
CODE_0DF7B0:        BRA CODE_0DF7BC           ;

CODE_0DF7B2:        JSR CODE_0DFC76           ;
CODE_0DF7B5:        BRA CODE_0DF7BC           ;

CODE_0DF7B7:        LDY #$0E                  ;
CODE_0DF7B9:        LDA DATA_0DF61E,y               ;
CODE_0DF7BC:        STA $06D5                 ;
CODE_0DF7BF:        LDA $03CE                 ;
CODE_0DF7C2:        BNE CODE_0DF7D7           ;
CODE_0DF7C4:        LDA $0218                 ;
CODE_0DF7C7:        BEQ CODE_0DF7DA           ;
CODE_0DF7C9:        LDA $0754                 ;
CODE_0DF7CC:        BNE CODE_0DF7D5           ;
CODE_0DF7CE:        LDA #$D8                  ;
CODE_0DF7D0:        STA $06D5                 ;
CODE_0DF7D3:        BRA CODE_0DF7DA           ;

CODE_0DF7D5:        LDA #$E0                  ;
CODE_0DF7D7:        STA $06D5                 ;
CODE_0DF7DA:        LDA #$04                  ;
CODE_0DF7DC:        JSR CODE_0DFB6E           ;
CODE_0DF7DF:        JSR CODE_0DFCAF           ;
CODE_0DF7E2:        LDA $02                   ;
CODE_0DF7E4:        CMP #$03                  ;
CODE_0DF7E6:        BNE CODE_0DF802           ;
CODE_0DF7E8:        LDA $0219                 ;
CODE_0DF7EB:        SEC                       ;
CODE_0DF7EC:        SBC $42                   ;
CODE_0DF7EE:        LDA $78                   ;
CODE_0DF7F0:        SBC $43                   ;
CODE_0DF7F2:        BEQ CODE_0DF802           ;
CODE_0DF7F4:        LDA #$01                  ;
CODE_0DF7F6:        STA $0CD0                 ;
CODE_0DF7F9:        STA $0CD8                 ;
CODE_0DF7FC:        STA $0CE0                 ;
CODE_0DF7FF:        STA $0CE8                 ;
CODE_0DF802:        LDA $0711                 ;
CODE_0DF805:        BEQ CODE_0DF832           ;
CODE_0DF807:        LDY #$00                  ;
CODE_0DF809:        LDA $0789                 ;
CODE_0DF80C:        CMP $0711                 ;
CODE_0DF80F:        STY $0711                 ;
CODE_0DF812:        BCS CODE_0DF832           ;
CODE_0DF814:        STA $0711                 ;
CODE_0DF817:        LDA $28                   ;
CODE_0DF819:        CMP #$01                  ;
CODE_0DF81B:        BEQ CODE_0DF825           ;
CODE_0DF81D:        LDY #$07                  ;
CODE_0DF81F:        LDA DATA_0DF61E,y               ;
CODE_0DF822:        STA $06D5                 ;
CODE_0DF825:        LDY #$04                  ;
CODE_0DF827:        LDA $5D                   ;
CODE_0DF829:        ORA $0C                   ;
CODE_0DF82B:        BEQ CODE_0DF82E           ;
CODE_0DF82D:        DEY                       ;
CODE_0DF82E:        TYA                       ;
CODE_0DF82F:        JSR CODE_0DFB6E           ;
CODE_0DF832:        LDA $03D0                 ;
CODE_0DF835:        LSR A                     ;
CODE_0DF836:        LSR A                     ;
CODE_0DF837:        LSR A                     ;
CODE_0DF838:        LSR A                     ;
CODE_0DF839:        STA $00                   ;
CODE_0DF83B:        LDX #$03                  ;
CODE_0DF83D:        LDA $0B45                 ;
CODE_0DF840:        CLC                       ;
CODE_0DF841:        ADC #$18                  ;
CODE_0DF843:        TAY                       ;
CODE_0DF844:        LDA #$F0                  ;
CODE_0DF846:        LSR $00                   ;
CODE_0DF848:        BCC CODE_0DF84D           ;
CODE_0DF84A:        JSR CODE_0DEB8A           ;
CODE_0DF84D:        TYA                       ;
CODE_0DF84E:        SEC                       ;
CODE_0DF84F:        SBC #$08                  ;
CODE_0DF851:        TAY                       ;
CODE_0DF852:        DEX                       ;
CODE_0DF853:        BPL CODE_0DF844           ;
CODE_0DF855:        JSR CODE_0DFCCC           ;
CODE_0DF858:        RTS                       ;

DATA_0DF859:        db $40,$01,$2E,$60,$FF,$04

CODE_0DF85F:        JSR CODE_0D841C           ;
CODE_0DF862:        LDA #$D0                  ;
CODE_0DF864:        STA $06D5                 ;
CODE_0DF867:        JSL CODE_00C000           ;
CODE_0DF86B:        LDX #$05                  ;
CODE_0DF86D:        LDA DATA_0DF859,x               ;
CODE_0DF870:        STA $02,x                 ;
CODE_0DF872:        DEX                       ;
CODE_0DF873:        BPL CODE_0DF86D           ;
CODE_0DF875:        LDX #$B8                  ;
CODE_0DF877:        LDY #$D0                  ;
CODE_0DF879:        JSR CODE_0DFB94           ;
CODE_0DF87C:        JSR CODE_0DF883           ;
CODE_0DF87F:        JSR CODE_0D9ED1           ;
CODE_0DF882:        RTS                       ;

CODE_0DF883:        PHX                       ;
CODE_0DF884:        PHY                       ;
CODE_0DF885:        LDA #$F0                  ;
CODE_0DF887:        STA $0801,y               ;
CODE_0DF88A:        STA $0901,y               ;
CODE_0DF88D:        INY                       ;
CODE_0DF88E:        BNE CODE_0DF887           ;
CODE_0DF890:        JSR CODE_0DF999           ;
CODE_0DF893:        LDX #$00                  ;
CODE_0DF895:        LDA #$30                  ;
CODE_0DF897:        STA $E2                   ;
CODE_0DF899:        JSR CODE_0DF920           ;
CODE_0DF89C:        CMP #$02                  ;
CODE_0DF89E:        BNE CODE_0DF8D9           ;
CODE_0DF8A0:        LDA $1C,x                 ;
CODE_0DF8A2:        CMP #$16                  ;
CODE_0DF8A4:        BEQ CODE_0DF8CB           ;
CODE_0DF8A6:        PHY                       ;
CODE_0DF8A7:        PHX                       ;
CODE_0DF8A8:        JSR CODE_0DEE6F           ;
CODE_0DF8AB:        PLX                       ;
CODE_0DF8AC:        LDA $0B46,x               ;
CODE_0DF8AF:        TAY                       ;
CODE_0DF8B0:        LDA #$00                  ;
CODE_0DF8B2:        STA $0D00,y               ;
CODE_0DF8B5:        STA $0D04,y               ;
CODE_0DF8B8:        STA $0D08,y               ;
CODE_0DF8BB:        STA $0D0C,y               ;
CODE_0DF8BE:        STA $0D10,y               ;
CODE_0DF8C1:        STA $0D14,y               ;
CODE_0DF8C4:        LDA $43                   ;
CODE_0DF8C6:        STA $79,x                 ;
CODE_0DF8C8:        PLY                       ;
CODE_0DF8C9:        BRA CODE_0DF8D0           ;

CODE_0DF8CB:        JSR CODE_0DFA84           ;
CODE_0DF8CE:        BRA CODE_0DF913           ;

CODE_0DF8D0:        LDA $1C,x                 ;
CODE_0DF8D2:        CMP #$12                  ;
CODE_0DF8D4:        BNE CODE_0DF8D9           ;
CODE_0DF8D6:        JSR CODE_0DFA2D           ;
CODE_0DF8D9:        INY                       ;
CODE_0DF8DA:        INX                       ;
CODE_0DF8DB:        CPX #$05                  ;
CODE_0DF8DD:        BNE CODE_0DF899           ;
CODE_0DF8DF:        LDA $5C                   ;
CODE_0DF8E1:        CMP #$03                  ;
CODE_0DF8E3:        BEQ CODE_0DF913           ;
CODE_0DF8E5:        LDX #$00                  ;
CODE_0DF8E7:        LDA $0902,x               ;
CODE_0DF8EA:        CMP $0906,x               ;
CODE_0DF8ED:        BNE CODE_0DF901           ;
CODE_0DF8EF:        LDA $0903,x               ;
CODE_0DF8F2:        AND #$3F                  ;
CODE_0DF8F4:        STA $0903,x               ;
CODE_0DF8F7:        LDA $0907,x               ;
CODE_0DF8FA:        ORA #$40                  ;
CODE_0DF8FC:        STA $0907,x               ;
CODE_0DF8FF:        BRA CODE_0DF907           ;

CODE_0DF901:        LDA $0907,x               ;
CODE_0DF904:        STA $0903,x               ;
CODE_0DF907:        INX                       ;
CODE_0DF908:        INX                       ;
CODE_0DF909:        INX                       ;
CODE_0DF90A:        INX                       ;
CODE_0DF90B:        INX                       ;
CODE_0DF90C:        INX                       ;
CODE_0DF90D:        INX                       ;
CODE_0DF90E:        INX                       ;
CODE_0DF90F:        CPX #$00                  ;
CODE_0DF911:        BNE CODE_0DF8E7           ;
CODE_0DF913:        LDX #$04                  ;
CODE_0DF915:        STZ $1C,x                 ;
CODE_0DF917:        DEX                       ;
CODE_0DF918:        BPL CODE_0DF915           ;
CODE_0DF91A:        STZ $0E85                 ;
CODE_0DF91D:        PLY                       ;
CODE_0DF91E:        PLX                       ;
CODE_0DF91F:        RTS                       ;

CODE_0DF920:        STZ $0E85                 ;
CODE_0DF923:        PHX                       ;
CODE_0DF924:        TYX                       ;
CODE_0DF925:        LDA $075F                 ;
CODE_0DF928:        CMP #$08                  ;
CODE_0DF92A:        BCC CODE_0DF932           ;
CODE_0DF92C:        LDA.l DATA_0FF8AF,x             ;
CODE_0DF930:        BRA CODE_0DF936           ;

CODE_0DF932:        LDA.l DATA_0FF80A,x             ;
CODE_0DF936:        PLX                       ;
CODE_0DF937:        CMP #$FF                  ;
CODE_0DF939:        BNE CODE_0DF945           ;
CODE_0DF93B:        LDA $E2                   ;
CODE_0DF93D:        CLC                       ;
CODE_0DF93E:        ADC #$18                  ;
CODE_0DF940:        STA $E2                   ;
CODE_0DF942:        JMP CODE_0DF998           ;

CODE_0DF945:        STZ $00BC,x               ;
CODE_0DF948:        STA $1C,x                 ;
CODE_0DF94A:        CMP #$0E                  ;
CODE_0DF94C:        BEQ CODE_0DF962           ;
CODE_0DF94E:        CMP #$0F                  ;
CODE_0DF950:        BEQ CODE_0DF962           ;
CODE_0DF952:        CMP #$10                  ;
CODE_0DF954:        BEQ CODE_0DF962           ;
CODE_0DF956:        CMP #$14                  ;
CODE_0DF958:        BEQ CODE_0DF962           ;
CODE_0DF95A:        CMP #$08                  ;
CODE_0DF95C:        BEQ CODE_0DF962           ;
CODE_0DF95E:        LDA #$98                  ;
CODE_0DF960:        BRA CODE_0DF964           ;

CODE_0DF962:        LDA #$88                  ;
CODE_0DF964:        STA $0238,x               ;
CODE_0DF967:        LDA $E2                   ;
CODE_0DF969:        CLC                       ;
CODE_0DF96A:        ADC #$18                  ;
CODE_0DF96C:        STA $E2                   ;
CODE_0DF96E:        STA $03AE                 ;
CODE_0DF971:        LDA #$20                  ;
CODE_0DF973:        STA $0257,x               ;
CODE_0DF976:        PHX                       ;
CODE_0DF977:        TYX                       ;
CODE_0DF978:        LDA $075F                 ;
CODE_0DF97B:        CMP #$08                  ;
CODE_0DF97D:        BCC CODE_0DF985           ;
CODE_0DF97F:        LDA.l DATA_0FF8AF,x             ;
CODE_0DF983:        BRA CODE_0DF989           ;

CODE_0DF985:        LDA.l DATA_0FF80A,x             ;
CODE_0DF989:        PLX                       ;
CODE_0DF98A:        CMP #$05                  ;
CODE_0DF98C:        BNE CODE_0DF994           ;
CODE_0DF98E:        STA $0E85                 ;
CODE_0DF991:        JSR CODE_0DFB4C           ;
CODE_0DF994:        LDA #$02                  ;
CODE_0DF996:        STA $47,x                 ;
CODE_0DF998:        RTS                       ;

CODE_0DF999:        LDA $075F                 ;
CODE_0DF99C:        ASL A                     ;
CODE_0DF99D:        ASL A                     ;
CODE_0DF99E:        CLC                       ;
CODE_0DF99F:        ADC $075F                 ;
CODE_0DF9A2:        CLC                       ;
CODE_0DF9A3:        ADC $0760                 ;
CODE_0DF9A6:        TAX                       ;
CODE_0DF9A7:        LDA.l DATA_0E8EB3,x             ;
CODE_0DF9AB:        STA $0E22                 ;
CODE_0DF9AE:        LDA.l DATA_0E8EF4,x             ;
CODE_0DF9B2:        STA $0E21                 ;
CODE_0DF9B5:        PHA                       ;
CODE_0DF9B6:        CMP #$21                  ;
CODE_0DF9B8:        BCC CODE_0DF9C0           ;
CODE_0DF9BA:        SEC                       ;
CODE_0DF9BB:        SBC #$21                  ;
CODE_0DF9BD:        STA $0E21                 ;
CODE_0DF9C0:        ASL A                     ;
CODE_0DF9C1:        ASL A                     ;
CODE_0DF9C2:        CLC                       ;
CODE_0DF9C3:        ADC $0E21                 ;
CODE_0DF9C6:        TAY                       ;
CODE_0DF9C7:        PLA                       ;
CODE_0DF9C8:        STA $0E21                 ;
CODE_0DF9CB:        LDA $071C                 ;
CODE_0DF9CE:        STA $9C                   ;
CODE_0DF9D0:        LDA $071A                 ;
CODE_0DF9D3:        STA $9D                   ;
CODE_0DF9D5:        INC $9B                   ;
CODE_0DF9D7:        STZ $071A                 ;
CODE_0DF9DA:        STZ $073F                 ;
CODE_0DF9DD:        STZ $0EFD                 ;
CODE_0DF9E0:        STZ $0EFE                 ;
CODE_0DF9E3:        STZ $0EEE                 ;
CODE_0DF9E6:        STZ $0EEF                 ;
CODE_0DF9E9:        STZ $210D                 ;
CODE_0DF9EC:        STZ $210D                 ;
CODE_0DF9EF:        STZ $210F                 ;
CODE_0DF9F2:        STZ $210F                 ;
CODE_0DF9F5:        STZ $2111                 ;
CODE_0DF9F8:        STZ $2111                 ;
CODE_0DF9FB:        RTS                       ;

DATA_0DF9FC:        db $DC,$DC,$DD,$DD,$DE,$DE

CODE_0DFA02:        LDA DATA_0DF9FC                 ;
CODE_0DFA05:        STA $0962                 ;
CODE_0DFA08:        LDA DATA_0DF9FC+1                 ;
CODE_0DFA0B:        STA $0966                 ;
CODE_0DFA0E:        LDA DATA_0DF9FC+2                 ;
CODE_0DFA11:        STA $096A                 ;
CODE_0DFA14:        LDA DATA_0DF9FC+3                 ;
CODE_0DFA17:        STA $096E                 ;
CODE_0DFA1A:        LDA DATA_0DF9FC+4                 ;
CODE_0DFA1D:        STA $0972                 ;
CODE_0DFA20:        LDA DATA_0DF9FC+5                 ;
CODE_0DFA23:        STA $0976                 ;
CODE_0DFA26:        RTS                       ;

DATA_0DFA27:        db $B9,$B8,$BB,$BA,$BC,$BC

CODE_0DFA2D:        PHY                       ;
CODE_0DFA2E:        LDA #$03                  ;
CODE_0DFA30:        STA $03                   ;
CODE_0DFA32:        LDA $0238,x               ;
CODE_0DFA35:        SEC                       ;
CODE_0DFA36:        SBC #$28                  ;
CODE_0DFA38:        STA $0238,x               ;
CODE_0DFA3B:        STZ $E3                   ;
CODE_0DFA3D:        LDY #$00                  ;
CODE_0DFA3F:        LDA $03AE                 ;
CODE_0DFA42:        STA $0990,y               ;
CODE_0DFA45:        CLC                       ;
CODE_0DFA46:        ADC #$08                  ;
CODE_0DFA48:        STA $0994,y               ;
CODE_0DFA4B:        LDA $0238,x               ;
CODE_0DFA4E:        STA $0991,y               ;
CODE_0DFA51:        STA $0995,y               ;
CODE_0DFA54:        CLC                       ;
CODE_0DFA55:        ADC #$08                  ;
CODE_0DFA57:        STA $0238,x               ;
CODE_0DFA5A:        LDA #$2A                  ;
CODE_0DFA5C:        STA $0993,y               ;
CODE_0DFA5F:        STA $0997,y               ;
CODE_0DFA62:        PHX                       ;
CODE_0DFA63:        LDX $E3                   ;
CODE_0DFA65:        LDA DATA_0DFA27,x               ;
CODE_0DFA68:        STA $0992,y               ;
CODE_0DFA6B:        LDA DATA_0DFA27+1,x               ;
CODE_0DFA6E:        STA $0996,y               ;
CODE_0DFA71:        INC $E3                   ;
CODE_0DFA73:        INC $E3                   ;
CODE_0DFA75:        PLX                       ;
CODE_0DFA76:        INY                       ;
CODE_0DFA77:        INY                       ;
CODE_0DFA78:        INY                       ;
CODE_0DFA79:        INY                       ;
CODE_0DFA7A:        INY                       ;
CODE_0DFA7B:        INY                       ;
CODE_0DFA7C:        INY                       ;
CODE_0DFA7D:        INY                       ;
CODE_0DFA7E:        DEC $03                   ;
CODE_0DFA80:        BNE CODE_0DFA3F           ;
CODE_0DFA82:        PLY                       ;
CODE_0DFA83:        RTS                       ;

CODE_0DFA84:        PHY                       ;
CODE_0DFA85:        PHX                       ;
CODE_0DFA86:        LDA $0238,x               ;
CODE_0DFA89:        STA $03B9                 ;
CODE_0DFA8C:        SEC                       ;
CODE_0DFA8D:        SBC #$08                  ;
CODE_0DFA8F:        STA $03B9                 ;
CODE_0DFA92:        LDA $03AE                 ;
CODE_0DFA95:        SEC                       ;
CODE_0DFA96:        SBC #$10                  ;
CODE_0DFA98:        STA $03AE                 ;
CODE_0DFA9B:        LDY #$90                  ;
CODE_0DFA9D:        LDX #$00                  ;
CODE_0DFA9F:        LDA $03AE                 ;
CODE_0DFAA2:        STA $0900,y               ;
CODE_0DFAA5:        STA $0908,y               ;
CODE_0DFAA8:        CLC                       ;
CODE_0DFAA9:        ADC #$08                  ;
CODE_0DFAAB:        STA $0910,y               ;
CODE_0DFAAE:        CLC                       ;
CODE_0DFAAF:        ADC #$08                  ;
CODE_0DFAB1:        STA $0904,y               ;
CODE_0DFAB4:        STA $090C,y               ;
CODE_0DFAB7:        STA $0914,y               ;
CODE_0DFABA:        LDA $03B9                 ;
CODE_0DFABD:        STA $0901,y               ;
CODE_0DFAC0:        STA $0905,y               ;
CODE_0DFAC3:        CLC                       ;
CODE_0DFAC4:        ADC #$10                  ;
CODE_0DFAC6:        STA $0909,y               ;
CODE_0DFAC9:        STA $090D,y               ;
CODE_0DFACC:        SEC                       ;
CODE_0DFACD:        SBC #$18                  ;
CODE_0DFACF:        STA $0911,y               ;
CODE_0DFAD2:        STA $0915,y               ;
CODE_0DFAD5:        LDA #$00                  ;
CODE_0DFAD7:        STA $0C10,y               ;
CODE_0DFADA:        STA $0C14,y               ;
CODE_0DFADD:        LDA #$02                  ;
CODE_0DFADF:        STA $0D00,y               ;
CODE_0DFAE2:        STA $0D04,y               ;
CODE_0DFAE5:        STA $0D08,y               ;
CODE_0DFAE8:        STA $0D0C,y               ;
CODE_0DFAEB:        LDA #$61                  ;
CODE_0DFAED:        STA $0903,y               ;
CODE_0DFAF0:        STA $0907,y               ;
CODE_0DFAF3:        STA $090B,y               ;
CODE_0DFAF6:        STA $090F,y               ;
CODE_0DFAF9:        STA $0913,y               ;
CODE_0DFAFC:        STA $0917,y               ;
CODE_0DFAFF:        LDA #$C5                  ;
CODE_0DFB01:        STA $0912,y               ;
CODE_0DFB04:        LDA #$C4                  ;
CODE_0DFB06:        STA $0916,y               ;
CODE_0DFB09:        LDA #$EE                  ;
CODE_0DFB0B:        STA $0902,y               ;
CODE_0DFB0E:        LDA #$C0                  ;
CODE_0DFB10:        STA $0906,y               ;
CODE_0DFB13:        LDA #$E2                  ;
CODE_0DFB15:        STA $090A,y               ;
CODE_0DFB18:        LDA #$E0                  ;
CODE_0DFB1A:        STA $090E,y               ;
CODE_0DFB1D:        LDA #$70                  ;
CODE_0DFB1F:        STA $09F0                 ;
CODE_0DFB22:        LDA #$78                  ;
CODE_0DFB24:        STA $09F4                 ;
CODE_0DFB27:        LDA #$98                  ;
CODE_0DFB29:        STA $09F1                 ;
CODE_0DFB2C:        STA $09F5                 ;
CODE_0DFB2F:        LDA #$86                  ;
CODE_0DFB31:        STA $09F2                 ;
CODE_0DFB34:        LDA #$87                  ;
CODE_0DFB36:        STA $09F6                 ;
CODE_0DFB39:        LDA #$21                  ;
CODE_0DFB3B:        STA $09F3                 ;
CODE_0DFB3E:        STA $09F7                 ;
CODE_0DFB41:        LDA #$02                  ;
CODE_0DFB43:        STA $0DF0                 ;
CODE_0DFB46:        STA $0DF4                 ;
CODE_0DFB49:        PLX                       ;
CODE_0DFB4A:        PLY                       ;
CODE_0DFB4B:        RTS                       ;

CODE_0DFB4C:        LDA $0238,x               ;
CODE_0DFB4F:        SEC                       ;
CODE_0DFB50:        SBC #$0A                  ;
CODE_0DFB52:        STA $0881                 ;
CODE_0DFB55:        LDA $03AE                 ;
CODE_0DFB58:        CLC                       ;
CODE_0DFB59:        ADC #$03                  ;
CODE_0DFB5B:        STA $0880                 ;
CODE_0DFB5E:        LDA #$2A                  ;
CODE_0DFB60:        STA $0883                 ;
CODE_0DFB63:        LDA #$44                  ;
CODE_0DFB65:        STA $0882                 ;
CODE_0DFB68:        LDA #$02                  ;
CODE_0DFB6A:        STA $0C80                 ;
CODE_0DFB6D:        RTS                       ;

CODE_0DFB6E:        STA $07                   ;
CODE_0DFB70:        LDA $03AD                 ;
CODE_0DFB73:        STA $0755                 ;
CODE_0DFB76:        STA $05                   ;
CODE_0DFB78:        LDA $03B8                 ;
CODE_0DFB7B:        STA $02                   ;
CODE_0DFB7D:        LDA $0202                 ;
CODE_0DFB80:        STA $03                   ;
CODE_0DFB82:        JSL CODE_00C000           ;
CODE_0DFB86:        LDA $06D5                 ;
CODE_0DFB89:        AND #$07                  ;
CODE_0DFB8B:        TAX                       ;
CODE_0DFB8C:        LDA $0256                 ;
CODE_0DFB8F:        STA $04                   ;
CODE_0DFB91:        LDY $0B45                 ;
CODE_0DFB94:        LDA DATA_0DF62E,x               ;
CODE_0DFB97:        STA $00                   ;
CODE_0DFB99:        LDA DATA_0DF62E+1,x               ;
CODE_0DFB9C:        JSR CODE_0DF2FE           ;
CODE_0DFB9F:        DEC $07                   ;
CODE_0DFBA1:        BNE CODE_0DFB94           ;
CODE_0DFBA3:        LDA $05                   ;
CODE_0DFBA5:        CMP #$F8                  ;
CODE_0DFBA7:        BCC CODE_0DFBB7           ;
CODE_0DFBA9:        LDA #$01                  ;
CODE_0DFBAB:        STA $0CD0                 ;
CODE_0DFBAE:        STA $0CD8                 ;
CODE_0DFBB1:        STA $0CE0                 ;
CODE_0DFBB4:        STA $0CE8                 ;
CODE_0DFBB7:        RTS                       ;

CODE_0DFBB8:        LDA $28                   ;
CODE_0DFBBA:        CMP #$03                  ;
CODE_0DFBBC:        BEQ CODE_0DFC0C           ;
CODE_0DFBBE:        CMP #$02                  ;
CODE_0DFBC0:        BEQ CODE_0DFBFE           ;
CODE_0DFBC2:        CMP #$01                  ;
CODE_0DFBC4:        BNE CODE_0DFBD6           ;
CODE_0DFBC6:        LDA $0704                 ;
CODE_0DFBC9:        BNE CODE_0DFC17           ;
CODE_0DFBCB:        LDY #$06                  ;
CODE_0DFBCD:        LDA $0714                 ;
CODE_0DFBD0:        BNE CODE_0DFBF4           ;
CODE_0DFBD2:        LDY #$00                  ;
CODE_0DFBD4:        BRA CODE_0DFBF4           ;

CODE_0DFBD6:        LDY #$06                  ;
CODE_0DFBD8:        LDA $0714                 ;
CODE_0DFBDB:        BNE CODE_0DFBF4           ;
CODE_0DFBDD:        LDY #$02                  ;
CODE_0DFBDF:        LDA $5D                   ;
CODE_0DFBE1:        ORA $0C                   ;
CODE_0DFBE3:        BEQ CODE_0DFBF4           ;
CODE_0DFBE5:        LDA $0700                 ;
CODE_0DFBE8:        CMP #$09                  ;
CODE_0DFBEA:        BCC CODE_0DFC05           ;
CODE_0DFBEC:        LDA $46                   ;
CODE_0DFBEE:        AND $0202                 ;
CODE_0DFBF1:        BNE CODE_0DFC05           ;
CODE_0DFBF3:        INY                       ;
CODE_0DFBF4:        JSR CODE_0DFC57           ;
CODE_0DFBF7:        STZ $070D                 ;
CODE_0DFBFA:        LDA DATA_0DF61E,y               ;
CODE_0DFBFD:        RTS                       ;

CODE_0DFBFE:        LDY #$04                  ;
CODE_0DFC00:        JSR CODE_0DFC57           ;
CODE_0DFC03:        BRA CODE_0DFC29           ;

CODE_0DFC05:        LDY #$04                  ;
CODE_0DFC07:        JSR CODE_0DFC57           ;
CODE_0DFC0A:        BRA CODE_0DFC2F           ;

CODE_0DFC0C:        LDY #$05                  ;
CODE_0DFC0E:        LDA $A0                   ;
CODE_0DFC10:        BEQ CODE_0DFBF4           ;
CODE_0DFC12:        JSR CODE_0DFC57           ;
CODE_0DFC15:        BRA CODE_0DFC33           ;

CODE_0DFC17:        LDY #$01                  ;
CODE_0DFC19:        JSR CODE_0DFC57           ;
CODE_0DFC1C:        LDA $078A                 ;
CODE_0DFC1F:        ORA $070D                 ;
CODE_0DFC22:        BNE CODE_0DFC2F           ;
CODE_0DFC24:        LDA $0A                   ;
CODE_0DFC26:        ASL A                     ;
CODE_0DFC27:        BCS CODE_0DFC2F           ;
CODE_0DFC29:        LDA $070D                 ;
CODE_0DFC2C:        JMP CODE_0DFC96           ;

CODE_0DFC2F:        LDA #$03                  ;
CODE_0DFC31:        BRA CODE_0DFC35           ;

CODE_0DFC33:        LDA #$02                  ;
CODE_0DFC35:        STA $00                   ;
CODE_0DFC37:        JSR CODE_0DFC29           ;
CODE_0DFC3A:        PHA                       ;
CODE_0DFC3B:        LDA $0789                 ;
CODE_0DFC3E:        BNE CODE_0DFC55           ;
CODE_0DFC40:        LDA $070C                 ;
CODE_0DFC43:        STA $0789                 ;
CODE_0DFC46:        LDA $070D                 ;
CODE_0DFC49:        CLC                       ;
CODE_0DFC4A:        ADC #$01                  ;
CODE_0DFC4C:        CMP $00                   ;
CODE_0DFC4E:        BCC CODE_0DFC52           ;
CODE_0DFC50:        LDA #$00                  ;
CODE_0DFC52:        STA $070D                 ;
CODE_0DFC55:        PLA                       ;
CODE_0DFC56:        RTS                       ;

CODE_0DFC57:        LDA $0754                 ;
CODE_0DFC5A:        BEQ CODE_0DFC61           ;
CODE_0DFC5C:        TYA                       ;
CODE_0DFC5D:        CLC                       ;
CODE_0DFC5E:        ADC #$08                  ;
CODE_0DFC60:        TAY                       ;
CODE_0DFC61:        RTS                       ;

DATA_0DFC62:        db $00,$01,$00,$01,$00,$01,$02,$00
                    db $01,$02,$02,$00,$02,$00,$02,$00
                    db $02,$00,$02,$00

CODE_0DFC76:        LDY $070D                 ;
CODE_0DFC79:        LDA $09                   ;
CODE_0DFC7B:        AND #$03                  ;
CODE_0DFC7D:        BNE CODE_0DFC8C           ;
CODE_0DFC7F:        INY                       ;
CODE_0DFC80:        CPY #$0A                  ;
CODE_0DFC82:        BCC CODE_0DFC89           ;
CODE_0DFC84:        LDY #$00                  ;
CODE_0DFC86:        STY $070B                 ;
CODE_0DFC89:        STY $070D                 ;
CODE_0DFC8C:        LDA $0754                 ;
CODE_0DFC8F:        BNE CODE_0DFC9D           ;
CODE_0DFC91:        LDA DATA_0DFC62,y               ;
CODE_0DFC94:        LDY #$0F                  ;
CODE_0DFC96:        ASL A                     ;
CODE_0DFC97:        ASL A                     ;
CODE_0DFC98:        ASL A                     ;
CODE_0DFC99:        ADC DATA_0DF61E,y               ;
CODE_0DFC9C:        RTS                       ;

CODE_0DFC9D:        TYA                       ;
CODE_0DFC9E:        CLC                       ;
CODE_0DFC9F:        ADC #$0A                  ;
CODE_0DFCA1:        TAX                       ;
CODE_0DFCA2:        LDY #$09                  ;
CODE_0DFCA4:        LDA DATA_0DFC62,x               ;
CODE_0DFCA7:        BNE CODE_0DFCAB           ;
CODE_0DFCA9:        LDY #$01                  ;
CODE_0DFCAB:        LDA DATA_0DF61E,y               ;
CODE_0DFCAE:        RTS                       ;

CODE_0DFCAF:        LDY $0B45                 ;
CODE_0DFCB2:        LDA $0F                   ;
CODE_0DFCB4:        CMP #$0B                  ;
CODE_0DFCB6:        BEQ CODE_0DFCCB           ;
CODE_0DFCB8:        LDA $06D5                 ;
CODE_0DFCBB:        CMP #$50                  ;
CODE_0DFCBD:        BEQ CODE_0DFCCB           ;
CODE_0DFCBF:        CMP #$B8                  ;
CODE_0DFCC1:        BEQ CODE_0DFCCB           ;
CODE_0DFCC3:        CMP #$C0                  ;
CODE_0DFCC5:        BEQ CODE_0DFCCB           ;
CODE_0DFCC7:        CMP #$C8                  ;
CODE_0DFCC9:        BNE CODE_0DFCCB           ;
CODE_0DFCCB:        RTS                       ;

CODE_0DFCCC:        LDA $0E4E                 ;
CODE_0DFCCF:        BEQ CODE_0DFD28           ;
CODE_0DFCD1:        LDX #$00                  ;
CODE_0DFCD3:        LDA $08D0,x               ;
CODE_0DFCD6:        STA $09E0,x               ;
CODE_0DFCD9:        INX                       ;
CODE_0DFCDA:        CPX #$20                  ;
CODE_0DFCDC:        BNE CODE_0DFCD3           ;
CODE_0DFCDE:        LDA #$F0                  ;
CODE_0DFCE0:        STA $08D1                 ;
CODE_0DFCE3:        STA $08D5                 ;
CODE_0DFCE6:        STA $08D9                 ;
CODE_0DFCE9:        STA $08DD                 ;
CODE_0DFCEC:        STA $08E1                 ;
CODE_0DFCEF:        STA $08E5                 ;
CODE_0DFCF2:        STA $08E9                 ;
CODE_0DFCF5:        STA $08ED                 ;
CODE_0DFCF8:        LDA $0CD0                 ;
CODE_0DFCFB:        STA $0DE0                 ;
CODE_0DFCFE:        LDA $0CD4                 ;
CODE_0DFD01:        STA $0DE4                 ;
CODE_0DFD04:        LDA $0CD8                 ;
CODE_0DFD07:        STA $0DE8                 ;
CODE_0DFD0A:        LDA $0CDC                 ;
CODE_0DFD0D:        STA $0DEC                 ;
CODE_0DFD10:        LDA $0CE0                 ;
CODE_0DFD13:        STA $0DF0                 ;
CODE_0DFD16:        LDA $0CE4                 ;
CODE_0DFD19:        STA $0DF4                 ;
CODE_0DFD1C:        LDA $0CE8                 ;
CODE_0DFD1F:        STA $0DF8                 ;
CODE_0DFD22:        LDA $0CEC                 ;
CODE_0DFD25:        STA $0DFC                 ;
CODE_0DFD28:        RTS                       ;

CODE_0DFD29:        LDX #$00                  ;
CODE_0DFD2B:        LDY #$00                  ;
CODE_0DFD2D:        JMP CODE_0DFD40           ;

CODE_0DFD30:        LDY #$01                  ;
CODE_0DFD32:        JSR CODE_0DFDDA           ;
CODE_0DFD35:        LDY #$03                  ;
CODE_0DFD37:        BRA CODE_0DFD40           ;

CODE_0DFD39:        LDY #$00                  ;
CODE_0DFD3B:        JSR CODE_0DFDDA           ;
CODE_0DFD3E:        LDY #$02                  ;
CODE_0DFD40:        JSR CODE_0DFD6E           ;
CODE_0DFD43:        LDX $9E                   ;
CODE_0DFD45:        RTS                       ;

CODE_0DFD46:        LDY #$02                  ;
CODE_0DFD48:        JSR CODE_0DFDDA           ;
CODE_0DFD4B:        LDY #$06                  ;
CODE_0DFD4D:        BRA CODE_0DFD40           ;

CODE_0DFD4F:        LDA #$01                  ;
CODE_0DFD51:        LDY #$01                  ;
CODE_0DFD53:        JMP CODE_0DFD62           ;

CODE_0DFD56:        LDA #$0D                  ;
CODE_0DFD58:        LDY #$04                  ;
CODE_0DFD5A:        JSR CODE_0DFD62           ;
CODE_0DFD5D:        INX                       ;
CODE_0DFD5E:        INX                       ;
CODE_0DFD5F:        LDA #$0D                  ;
CODE_0DFD61:        INY                       ;
CODE_0DFD62:        STX $00                   ;
CODE_0DFD64:        CLC                       ;
CODE_0DFD65:        ADC $00                   ;
CODE_0DFD67:        TAX                       ;
CODE_0DFD68:        JSR CODE_0DFD6E           ;
CODE_0DFD6B:        LDX $9E                   ;
CODE_0DFD6D:        RTS                       ;

CODE_0DFD6E:        LDA $0237,x               ;
CODE_0DFD71:        STA $03B8,y               ;
CODE_0DFD74:        LDA $0E                   ;
CODE_0DFD76:        BEQ CODE_0DFD84           ;
CODE_0DFD78:        LDA $0219                 ;
CODE_0DFD7B:        BNE CODE_0DFD84           ;
CODE_0DFD7D:        LDA #$28                  ;
CODE_0DFD7F:        STA $0219                 ;
CODE_0DFD82:        BRA CODE_0DFD96           ;

CODE_0DFD84:        LDA $0219,x               ;
CODE_0DFD87:        SEC                       ;
CODE_0DFD88:        SBC $071C                 ;
CODE_0DFD8B:        STA $03AD,y               ;
CODE_0DFD8E:        LDA $78,x                 ;
CODE_0DFD90:        SBC $071A                 ;
CODE_0DFD93:        STA $03C1,y               ;
CODE_0DFD96:        PHY                       ;
CODE_0DFD97:        TYA                       ;
CODE_0DFD98:        ASL A                     ;
CODE_0DFD99:        TAY                       ;
CODE_0DFD9A:        LDA $0219,x               ;
CODE_0DFD9D:        STA $E4                   ;
CODE_0DFD9F:        LDA $0078,x               ;
CODE_0DFDA2:        STA $E5                   ;
CODE_0DFDA4:        REP #$20                  ;
CODE_0DFDA6:        LDA $E4                   ;
CODE_0DFDA8:        SEC                       ;
CODE_0DFDA9:        SBC $42                   ;
CODE_0DFDAB:        STA $0E87,y               ;
CODE_0DFDAE:        SEP #$20                  ;
CODE_0DFDB0:        PLY                       ;
CODE_0DFDB1:        RTS                       ;

CODE_0DFDB2:        LDX #$00                  ;
CODE_0DFDB4:        LDY #$00                  ;
CODE_0DFDB6:        JMP CODE_0DFDF1           ;

CODE_0DFDB9:        LDY #$00                  ;
CODE_0DFDBB:        JSR CODE_0DFDDA           ;
CODE_0DFDBE:        LDY #$02                  ;
CODE_0DFDC0:        JMP CODE_0DFDF1           ;

CODE_0DFDC3:        LDY #$01                  ;
CODE_0DFDC5:        JSR CODE_0DFDDA           ;
CODE_0DFDC8:        LDY #$03                  ;
CODE_0DFDCA:        JMP CODE_0DFDF1           ;

CODE_0DFDCD:        LDY #$02                  ;
CODE_0DFDCF:        JSR CODE_0DFDDA           ;
CODE_0DFDD2:        LDY #$06                  ;
CODE_0DFDD4:        JMP CODE_0DFDF1           ;

DATA_0DFDD7:        db $0B,$1A,$11

CODE_0DFDDA:        TXA                       ;
CODE_0DFDDB:        CLC                       ;
CODE_0DFDDC:        ADC DATA_0DFDD7,y               ;
CODE_0DFDDF:        TAX                       ;
CODE_0DFDE0:        RTS                       ;

CODE_0DFDE1:        LDA #$01                  ;
CODE_0DFDE3:        LDY #$01                  ;
CODE_0DFDE5:        BRA CODE_0DFDEB           ;

CODE_0DFDE7:        LDA #$0D                  ;
CODE_0DFDE9:        LDY #$04                  ;
CODE_0DFDEB:        STX $00                   ;
CODE_0DFDED:        CLC                       ;
CODE_0DFDEE:        ADC $00                   ;
CODE_0DFDF0:        TAX                       ;
CODE_0DFDF1:        TYA                       ;
CODE_0DFDF2:        PHA                       ;
CODE_0DFDF3:        JSR CODE_0DFE15           ;
CODE_0DFDF6:        ASL A                     ;
CODE_0DFDF7:        ASL A                     ;
CODE_0DFDF8:        ASL A                     ;
CODE_0DFDF9:        ASL A                     ;
CODE_0DFDFA:        ORA $00                   ;
CODE_0DFDFC:        STA $00                   ;
CODE_0DFDFE:        PLA                       ;
CODE_0DFDFF:        TAY                       ;
CODE_0DFE00:        LDA $00                   ;
CODE_0DFE02:        STA $03D0,y               ;
CODE_0DFE05:        LSR A                     ;
CODE_0DFE06:        LSR A                     ;
CODE_0DFE07:        PHA                       ;
CODE_0DFE08:        AND #$01                  ;
CODE_0DFE0A:        STA $0E08,y               ;
CODE_0DFE0D:        PLA                       ;
CODE_0DFE0E:        LSR A                     ;
CODE_0DFE0F:        STA $0E00,y               ;
CODE_0DFE12:        LDX $9E                   ;
CODE_0DFE14:        RTS                       ;

CODE_0DFE15:        JSR CODE_0DFE34           ;
CODE_0DFE18:        LSR A                     ;
CODE_0DFE19:        LSR A                     ;
CODE_0DFE1A:        LSR A                     ;
CODE_0DFE1B:        LSR A                     ;
CODE_0DFE1C:        STA $00                   ;
CODE_0DFE1E:        JMP CODE_0DFE78           ;

DATA_0DFE21:        db $7F,$3F,$1F,$0F,$07,$03,$01,$00
                    db $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF

DATA_0DFE31:        db $07,$0F,$07

CODE_0DFE34:        STX $04
CODE_0DFE36:        LDY #$01                  ;
CODE_0DFE38:        LDA $071C,y               ;
CODE_0DFE3B:        SEC                       ;
CODE_0DFE3C:        SBC $0219,x               ;
CODE_0DFE3F:        STA $07                   ;
CODE_0DFE41:        LDA $071A,y               ;
CODE_0DFE44:        SBC $78,x                 ;
CODE_0DFE46:        LDX DATA_0DFE31,y               ;
CODE_0DFE49:        CMP #$00                  ;
CODE_0DFE4B:        BMI CODE_0DFE5D           ;
CODE_0DFE4D:        LDX DATA_0DFE31+1,y               ;
CODE_0DFE50:        CMP #$01                  ;
CODE_0DFE52:        BPL CODE_0DFE5D           ;
CODE_0DFE54:        LDA #$38                  ;
CODE_0DFE56:        STA $06                   ;
CODE_0DFE58:        LDA #$08                  ;
CODE_0DFE5A:        JSR CODE_0DFEAD           ;
CODE_0DFE5D:        LDA DATA_0DFE21,x               ;
CODE_0DFE60:        LDX $04                   ;
CODE_0DFE62:        CMP #$00                  ;
CODE_0DFE64:        BNE CODE_0DFE69           ;
CODE_0DFE66:        DEY                       ;
CODE_0DFE67:        BPL CODE_0DFE38           ;
CODE_0DFE69:        RTS                       ;

DATA_0DFE6A:        db $00,$08,$0C,$0E,$0F,$07,$03,$01 ;
                    db $00 ;

DATA_0DFE73:        db $04,$00,$04 ;

DATA_0DFE76:        db $FF,$00 ;

CODE_0DFE78:        STX $04
CODE_0DFE7A:        LDY #$01                  ;
CODE_0DFE7C:        LDA DATA_0DFE76,y               ;
CODE_0DFE7F:        SEC                       ;
CODE_0DFE80:        SBC $0237,x               ;
CODE_0DFE83:        STA $07                   ;
CODE_0DFE85:        LDA #$01                  ;
CODE_0DFE87:        SBC $BB,x                 ;
CODE_0DFE89:        LDX DATA_0DFE73,y               ;
CODE_0DFE8C:        CMP #$00                  ;
CODE_0DFE8E:        BMI CODE_0DFEA0           ;
CODE_0DFE90:        LDX DATA_0DFE73+1,y               ;
CODE_0DFE93:        CMP #$01                  ;
CODE_0DFE95:        BPL CODE_0DFEA0           ;
CODE_0DFE97:        LDA #$20                  ;
CODE_0DFE99:        STA $06                   ;
CODE_0DFE9B:        LDA #$04                  ;
CODE_0DFE9D:        JSR CODE_0DFEAD           ;
CODE_0DFEA0:        LDA DATA_0DFE6A,x               ;
CODE_0DFEA3:        LDX $04                   ;
CODE_0DFEA5:        CMP #$00                  ;
CODE_0DFEA7:        BNE CODE_0DFEAC           ;
CODE_0DFEA9:        DEY                       ;
CODE_0DFEAA:        BPL CODE_0DFE7C           ;
CODE_0DFEAC:        RTS                       ;

CODE_0DFEAD:        STA $05                   ;
CODE_0DFEAF:        LDA $07                   ;
CODE_0DFEB1:        CMP $06                   ;
CODE_0DFEB3:        BCS CODE_0DFEC1           ;
CODE_0DFEB5:        LSR A                     ;
CODE_0DFEB6:        LSR A                     ;
CODE_0DFEB7:        LSR A                     ;
CODE_0DFEB8:        AND #$07                  ;
CODE_0DFEBA:        CPY #$01                  ;
CODE_0DFEBC:        BCS CODE_0DFEC0           ;
CODE_0DFEBE:        ADC $05                   ;
CODE_0DFEC0:        TAX                       ;
CODE_0DFEC1:        RTS                       ;

CODE_0DFEC2:        LDA $79,x                 ;
CODE_0DFEC4:        STA $0E15                 ;
CODE_0DFEC7:        LDA $021A,x               ;
CODE_0DFECA:        STA $0E14                 ;
CODE_0DFECD:        RTS                       ;

CODE_0DFECE:        LDA $0E17                 ;
CODE_0DFED1:        STA $0E15                 ;
CODE_0DFED4:        LDA $0E16                 ;
CODE_0DFED7:        STA $0E14                 ;
CODE_0DFEDA:        RTS                       ;

CODE_0DFEDB:        LDA #$06                  ;
CODE_0DFEDD:        STA $04                   ;
CODE_0DFEDF:        REP #$20                  ;
CODE_0DFEE1:        LDA $0E14                 ;
CODE_0DFEE4:        SEC                       ;
CODE_0DFEE5:        SBC $42                   ;
CODE_0DFEE7:        STA $0E12                 ;
CODE_0DFEEA:        SEP #$20                  ;
CODE_0DFEEC:        LDA $0E13                 ;
CODE_0DFEEF:        BNE CODE_0DFEF5           ;
CODE_0DFEF1:        LDA #$00                  ;
CODE_0DFEF3:        BRA CODE_0DFEF7           ;

CODE_0DFEF5:        LDA #$01                  ;
CODE_0DFEF7:        STA $0D00,y               ;
CODE_0DFEFA:        RTS                       ;

CODE_0DFEFB:        REP #$20                  ;
CODE_0DFEFD:        LDA $0E14                 ;
CODE_0DFF00:        SEC                       ;
CODE_0DFF01:        SBC $42                   ;
CODE_0DFF03:        STA $0E12                 ;
CODE_0DFF06:        SEP #$20                  ;
CODE_0DFF08:        LDA $0E13                 ;
CODE_0DFF0B:        BNE CODE_0DFF11           ;
CODE_0DFF0D:        LDA #$00                  ;
CODE_0DFF0F:        BRA CODE_0DFF13           ;

CODE_0DFF11:        LDA #$01                  ;
CODE_0DFF13:        STA $0D10,y               ;
CODE_0DFF16:        STA $0D08,y               ;
CODE_0DFF19:        STA $0D00,y               ;
CODE_0DFF1C:        RTS                       ;

CODE_0DFF1D:        REP #$20                  ;
CODE_0DFF1F:        LDA $0E14                 ;
CODE_0DFF22:        SEC                       ;
CODE_0DFF23:        SBC $42                   ;
CODE_0DFF25:        STA $0E12                 ;
CODE_0DFF28:        SEP #$20                  ;
CODE_0DFF2A:        LDA $0E13                 ;
CODE_0DFF2D:        BNE CODE_0DFF33           ;
CODE_0DFF2F:        LDA #$00                  ;
CODE_0DFF31:        BRA CODE_0DFF35           ;

CODE_0DFF33:        LDA #$01                  ;
CODE_0DFF35:        STA $0C08,y               ;
CODE_0DFF38:        STA $0C00,y               ;
CODE_0DFF3B:        RTS                       ;

CODE_0DFF3C:        STA $0C00,y               ;
CODE_0DFF3F:        STA $0C08,y               ;
CODE_0DFF42:        RTS                       ;

CODE_0DFF43:        REP #$20                  ;
CODE_0DFF45:        PLA                       ;
CODE_0DFF46:        CLC                       ;
CODE_0DFF47:        ADC $04                   ;
CODE_0DFF49:        STA $04                   ;
CODE_0DFF4B:        PHA                       ;
CODE_0DFF4C:        SEP #$20                  ;
CODE_0DFF4E:        LDA #$01                  ;
CODE_0DFF50:        RTS                       ;

CODE_0DFF51:        REP #$20                  ;
CODE_0DFF53:        LDA $0E14                 ;
CODE_0DFF56:        CLC                       ;
CODE_0DFF57:        ADC #$0008                ;
CODE_0DFF5A:        STA $0E14                 ;
CODE_0DFF5D:        SEP #$20                  ;
CODE_0DFF5F:        INY                       ;
CODE_0DFF60:        INY                       ;
CODE_0DFF61:        INY                       ;
CODE_0DFF62:        INY                       ;
CODE_0DFF63:        RTS                       ;

CODE_0DFF64:        LDA $03                   ;
CODE_0DFF66:        LSR A                     ;
CODE_0DFF67:        LSR A                     ;
CODE_0DFF68:        LDA $00                   ;
CODE_0DFF6A:        BCC CODE_0DFF78           ;
CODE_0DFF6C:        STA $0806,y               ;
CODE_0DFF6F:        LDA $01                   ;
CODE_0DFF71:        STA $0802,y               ;
CODE_0DFF74:        LDA #$40                  ;
CODE_0DFF76:        BNE CODE_0DFF82           ;
CODE_0DFF78:        STA $0802,y               ;
CODE_0DFF7B:        LDA $01                   ;
CODE_0DFF7D:        STA $0806,y               ;
CODE_0DFF80:        LDA #$00                  ;
CODE_0DFF82:        ORA $04                   ;
CODE_0DFF84:        STA $0803,y               ;
CODE_0DFF87:        STA $0807,y               ;
CODE_0DFF8A:        LDA $02                   ;
CODE_0DFF8C:        STA $0801,y               ;
CODE_0DFF8F:        STA $0805,y               ;
CODE_0DFF92:        LDA $05                   ;
CODE_0DFF94:        STA $0800,y               ;
CODE_0DFF97:        CLC                       ;
CODE_0DFF98:        ADC #$08                  ;
CODE_0DFF9A:        STA $0804,y               ;
CODE_0DFF9D:        LDA $02                   ;
CODE_0DFF9F:        CLC                       ;
CODE_0DFFA0:        ADC #$08                  ;
CODE_0DFFA2:        STA $02                   ;
CODE_0DFFA4:        TYA                       ;
CODE_0DFFA5:        CLC                       ;
CODE_0DFFA6:        ADC #$08                  ;
CODE_0DFFA8:        TAY                       ;
CODE_0DFFA9:        INX                       ;
CODE_0DFFAA:        INX                       ;
CODE_0DFFAB:        RTS                       ;

CODE_0DFFAC:        LDA $03                   ;
CODE_0DFFAE:        LSR A                     ;
CODE_0DFFAF:        LSR A                     ;
CODE_0DFFB0:        LDA $00                   ;
CODE_0DFFB2:        BCC CODE_0DFFC0           ;
CODE_0DFFB4:        STA $0906,y               ;
CODE_0DFFB7:        LDA $01                   ;
CODE_0DFFB9:        STA $0902,y               ;
CODE_0DFFBC:        LDA #$40                  ;
CODE_0DFFBE:        BNE CODE_0DFFCA           ;
CODE_0DFFC0:        STA $0902,y               ;
CODE_0DFFC3:        LDA $01                   ;
CODE_0DFFC5:        STA $0906,y               ;
CODE_0DFFC8:        LDA #$00                  ;
CODE_0DFFCA:        ORA $04                   ;
CODE_0DFFCC:        STA $0903,y               ;
CODE_0DFFCF:        STA $0907,y               ;
CODE_0DFFD2:        LDA $02                   ;
CODE_0DFFD4:        STA $0901,y               ;
CODE_0DFFD7:        STA $0905,y               ;
CODE_0DFFDA:        LDA $05                   ;
CODE_0DFFDC:        STA $0900,y               ;
CODE_0DFFDF:        CLC                       ;
CODE_0DFFE0:        ADC #$08                  ;
CODE_0DFFE2:        STA $0904,y               ;
CODE_0DFFE5:        LDA $02                   ;
CODE_0DFFE7:        CLC                       ;
CODE_0DFFE8:        ADC #$08                  ;
CODE_0DFFEA:        STA $02                   ;
CODE_0DFFEC:        TYA                       ;
CODE_0DFFED:        CLC                       ;
CODE_0DFFEE:        ADC #$08                  ;
CODE_0DFFF0:        TAY                       ;
CODE_0DFFF1:        INX                       ;
CODE_0DFFF2:        INX                       ;
CODE_0DFFF3:        RTS                       ;

DATA_0DFFF4:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF
