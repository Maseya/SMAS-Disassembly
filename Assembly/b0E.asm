;Super Mario Bros. - The Lost Levels.

CODE_0E8000:        LDA #$01                  ;
CODE_0E8002:        STA $028C                 ;
CODE_0E8005:        LDA #$03                  ;
CODE_0E8007:        STA $0F0B                 ;
CODE_0E800A:        STZ $028E                 ;
CODE_0E800D:        STZ $0E67                 ;
CODE_0E8010:        LDA $700009               ;
CODE_0E8014:        STA $0E24                 ;
CODE_0E8017:        STA $7FFB01               ;
CODE_0E801B:        LDA $700008               ;
CODE_0E801F:        STA $075F                 ;
CODE_0E8022:        STA $7FFB00               ;
CODE_0E8026:        ASL A                     ;
CODE_0E8027:        ASL A                     ;
CODE_0E8028:        CLC                       ;
CODE_0E8029:        ADC $700009               ;
CODE_0E802D:        TAX                       ;
CODE_0E802E:        LDA.l DATA_0FE06D,x             ;
CODE_0E8032:        STA $700009               ;
CODE_0E8036:        STA $7FFB02               ;
CODE_0E803A:        STA $0760                 ;
CODE_0E803D:        LDA #$03                  ;
CODE_0E803F:        STA $2101                 ;
CODE_0E8042:        LDA #$01                  ;
CODE_0E8044:        STA $2107                 ;
CODE_0E8047:        LDA #$09                  ;
CODE_0E8049:        STA $2108                 ;
CODE_0E804C:        LDA #$59                  ;
CODE_0E804E:        STA $2109                 ;
CODE_0E8051:        STZ $210A                 ;
CODE_0E8054:        LDA #$11                  ;
CODE_0E8056:        STA $210B                 ;
CODE_0E8059:        LDA #$05                  ;
CODE_0E805B:        STA $210C                 ;
CODE_0E805E:        STZ $2133                 ;
CODE_0E8061:        STZ $0770                 ;
CODE_0E8064:        STZ $0772                 ;
CODE_0E8067:        LDA #$00                  ;
CODE_0E8069:        STA $7FFFFF               ;
CODE_0E806D:        STZ $073F                 ;
CODE_0E8070:        STZ $0740                 ;
CODE_0E8073:        STZ $210D                 ;
CODE_0E8076:        STZ $210D                 ;
CODE_0E8079:        STZ $210E                 ;
CODE_0E807C:        STZ $210E                 ;
CODE_0E807F:        STZ $210F                 ;
CODE_0E8082:        STZ $210F                 ;
CODE_0E8085:        STZ $2110                 ;
CODE_0E8088:        STZ $2110                 ;
CODE_0E808B:        STZ $2111                 ;
CODE_0E808E:        STZ $2111                 ;
CODE_0E8091:        STZ $2112                 ;
CODE_0E8094:        STZ $2112                 ;
CODE_0E8097:        LDA #$09                  ;
CODE_0E8099:        STA $120D                 ;
CODE_0E809C:        STZ $0E7E                 ;
CODE_0E809F:        LDA #$10                  ;
CODE_0E80A1:        STA $120B                 ;
CODE_0E80A4:        STZ $120C                 ;
CODE_0E80A7:        STZ $1204                 ;
CODE_0E80AA:        STZ $1205                 ;
CODE_0E80AD:        STZ $1206                 ;
CODE_0E80B0:        STZ $1209                 ;
CODE_0E80B3:        LDA #$20                  ;
CODE_0E80B5:        STA $120A                 ;
CODE_0E80B8:        LDA #$20                  ;
CODE_0E80BA:        STA $0EE0                 ;
CODE_0E80BD:        LDA #$40                  ;
CODE_0E80BF:        STA $0EE1                 ;
CODE_0E80C2:        LDA #$80                  ;
CODE_0E80C4:        STA $0EE2                 ;
CODE_0E80C7:        STZ $1203                 ;
CODE_0E80CA:        LDA #$80                  ;
CODE_0E80CC:        STA $1201                 ;
CODE_0E80CF:        STZ $0154                 ;
CODE_0E80D2:        STZ $15E5                 ;
CODE_0E80D5:        STZ $0E7F                 ;
CODE_0E80D8:        STZ $0776                 ;
CODE_0E80DB:        STA $0722                 ;
CODE_0E80DE:        STZ $0E67                 ;
CODE_0E80E1:        STZ $BA                   ;
CODE_0E80E3:        STZ $0EC9                 ;
CODE_0E80E6:        STZ $0ED6                 ;
CODE_0E80E9:        STZ $0EF9                 ;
CODE_0E80EC:        STZ $0ED4                 ;
CODE_0E80EF:        STZ $1200                 ;
CODE_0E80F2:        STZ $0773                 ;
CODE_0E80F5:        STZ $028D                 ;
CODE_0E80F8:        REP #$20                  ;
CODE_0E80FA:        LDA #$0000                ;
CODE_0E80FD:        STA $001000               ;
CODE_0E8101:        STA $001100               ;
CODE_0E8105:        LDA #$FFFF                ;
CODE_0E8108:        STA $1702                 ;
CODE_0E810B:        STA $7F0002               ;
CODE_0E810F:        STA $7F2002               ;
CODE_0E8113:        PHD                       ;
CODE_0E8114:        LDA #$4300                ; DP: $4300
CODE_0E8117:        TCD                       ;
CODE_0E8118:        LDX #$80                  ;
CODE_0E811A:        STX $2115                 ;
CODE_0E811D:        REP #$20                  ;
CODE_0E811F:        LDA #$1000                ;
CODE_0E8122:        STA $2116                 ;
CODE_0E8125:        LDA #$1801                ;
CODE_0E8128:        STA $00                   ;
CODE_0E812A:        LDA.w #DATA_108000        ; DMA source: DATA_108000
CODE_0E812D:        STA $02                   ;
CODE_0E812F:        LDY.b #DATA_108000>>16    ;
CODE_0E8131:        STY $04                   ;
CODE_0E8133:        LDA #$4000                ; $4000 bytes to transfer
CODE_0E8136:        STA $05                   ;
CODE_0E8138:        LDX #$01                  ;
CODE_0E813A:        STX $420B                 ;
CODE_0E813D:        REP #$20                  ;
CODE_0E813F:        LDA #$6000                ;
CODE_0E8142:        STA $2116                 ;
CODE_0E8145:        LDA.w #DATA_078000        ; DMA source: DATA_078000
CODE_0E8148:        STA $02                   ;
CODE_0E814A:        LDY.b #DATA_078000>>16    ;
CODE_0E814C:        STY $04                   ;
CODE_0E814E:        LDA #$4000                ; $4000 bytes to transfer
CODE_0E8151:        STA $05                   ;
CODE_0E8153:        STX $420B                 ;
CODE_0E8156:        LDA #$5000                ;
CODE_0E8159:        STA $2116                 ;
CODE_0E815C:        LDA.w #DATA_0CF800        ; DMA source: DATA_0CF800
CODE_0E815F:        STA $02                   ;
CODE_0E8161:        LDY.b #DATA_0CF800>>16    ;
CODE_0E8163:        STY $04                   ;
CODE_0E8165:        LDA #$0800                ; $800 bytes to transfer
CODE_0E8168:        STA $05                   ;
CODE_0E816A:        STX $420B                 ;
CODE_0E816D:        PLD                       ;
CODE_0E816E:        SEP #$20                  ;
CODE_0E8170:        RTL                       ;

CODE_0E8171:        LDA $1680                 ;
CODE_0E8174:        BMI CODE_0E819C           ;
CODE_0E8176:        BNE CODE_0E8187           ;
CODE_0E8178:        LDA $0FF6                 ;
CODE_0E817B:        AND #$10                  ;
CODE_0E817D:        BEQ CODE_0E819C           ;
CODE_0E817F:        INC $1680                 ;
CODE_0E8182:        LDA #$43                  ;
CODE_0E8184:        STA $1600                 ;
CODE_0E8187:        DEC $0B9A                 ;
CODE_0E818A:        DEC $0B9A                 ;
CODE_0E818D:        LDA $0B9A                 ;
CODE_0E8190:        BPL CODE_0E819C           ;
CODE_0E8192:        LDA #$0D                  ;
CODE_0E8194:        STA $0772                 ;
CODE_0E8197:        LDA #$01                  ;
CODE_0E8199:        STA $07FC                 ;
CODE_0E819C:        RTL                       ;

CODE_0E819D:        JSL CODE_0FDA18           ;
CODE_0E81A1:        LDA $075F                 ;
CODE_0E81A4:        CMP #$08                  ;
CODE_0E81A6:        BCS CODE_0E81C3           ;
CODE_0E81A8:        LDA #$10                  ;
CODE_0E81AA:        STA $1680                 ;
CODE_0E81AD:        STZ $0760                 ;
CODE_0E81B0:        STZ $075C                 ;
CODE_0E81B3:        LDA $0F2B                 ;
CODE_0E81B6:        BEQ CODE_0E81C0           ;
CODE_0E81B8:        LDA #$01                  ;
CODE_0E81BA:        STA $07FB                 ;
CODE_0E81BD:        INC $075F                 ;
CODE_0E81C0:        INC $075F                 ;
CODE_0E81C3:        LDA #$22                  ;
CODE_0E81C5:        STA $1204                 ;
CODE_0E81C8:        LDA #$02                  ;
CODE_0E81CA:        STA $1205                 ;
CODE_0E81CD:        INC $0772                 ;
CODE_0E81D0:        LDA $077A                 ;
CODE_0E81D3:        BEQ CODE_0E81E2           ;
CODE_0E81D5:        LDA #$02                  ;
CODE_0E81D7:        STA $1208                 ;
CODE_0E81DA:        STZ $0776                 ;
CODE_0E81DD:        LDA #$04                  ;
CODE_0E81DF:        STA $1680                 ;
CODE_0E81E2:        RTL                       ;

CODE_0E81E3:        LDA $2140                 ;
CODE_0E81E6:        BNE CODE_0E81F5           ;
CODE_0E81E8:        LDA #$0A                  ;
CODE_0E81EA:        STA $0772                 ;
CODE_0E81ED:        LDA $1680                 ;
CODE_0E81F0:        ORA #$80                  ;
CODE_0E81F2:        STA $1680                 ;
CODE_0E81F5:        RTL                       ;

CODE_0E81F6:        LDA $0B9A                 ;
CODE_0E81F9:        CMP #$30                  ;
CODE_0E81FB:        BCC CODE_0E81FE           ;
CODE_0E81FD:        RTL                       ;

CODE_0E81FE:        PHB                       ;
CODE_0E81FF:        PHK                       ;
CODE_0E8200:        PLB                       ;
CODE_0E8201:        PHD                       ;
CODE_0E8202:        REP #$30                  ;
CODE_0E8204:        LDA #$0B00                ;
CODE_0E8207:        TCD                       ;
CODE_0E8208:        STZ $84                   ;
CODE_0E820A:        STZ $8E                   ;
CODE_0E820C:        STZ $90                   ;
CODE_0E820E:        STZ $92                   ;
CODE_0E8210:        LDA $9A                   ;
CODE_0E8212:        AND #$00FF                ;
CODE_0E8215:        ASL A                     ;
CODE_0E8216:        TAX                       ;
CODE_0E8217:        LDA.l DATA_009780,x             ;
CODE_0E821B:        STA $94                   ;
CODE_0E821D:        LDA #$0078                ;
CODE_0E8220:        STA $96                   ;
CODE_0E8222:        LDA #$00B0                ;
CODE_0E8225:        STA $98                   ;
CODE_0E8227:        LDA #$0100                ;
CODE_0E822A:        STA $80                   ;
CODE_0E822C:        STA $82                   ;
CODE_0E822E:        LDA $90                   ;
CODE_0E8230:        INC A                     ;
CODE_0E8231:        CMP $9A                   ;
CODE_0E8233:        BCS CODE_0E826B           ;
CODE_0E8235:        LDA $92                   ;
CODE_0E8237:        CLC                       ;
CODE_0E8238:        ADC $94                   ;
CODE_0E823A:        STA $92                   ;
CODE_0E823C:        XBA                       ;
CODE_0E823D:        AND #$00FF                ;
CODE_0E8240:        LSR A                     ;
CODE_0E8241:        SEP #$30                  ;
CODE_0E8243:        TAX                       ;
CODE_0E8244:        LDA.l DATA_0096FF,x             ;
CODE_0E8248:        STA $4202                 ;
CODE_0E824B:        LDA $9A                   ;
CODE_0E824D:        STA $4203                 ;
CODE_0E8250:        NOP                       ;
CODE_0E8251:        NOP                       ;
CODE_0E8252:        NOP                       ;
CODE_0E8253:        NOP                       ;
CODE_0E8254:        LDA $4217                 ;
CODE_0E8257:        STA $88                   ;
CODE_0E8259:        STZ $89                   ;
CODE_0E825B:        REP #$30                  ;
CODE_0E825D:        LDA $88                   ;
CODE_0E825F:        CLC                       ;
CODE_0E8260:        ADC $98                   ;
CODE_0E8262:        STA $82                   ;
CODE_0E8264:        LDA $98                   ;
CODE_0E8266:        SEC                       ;
CODE_0E8267:        SBC $88                   ;
CODE_0E8269:        STA $80                   ;
CODE_0E826B:        LDA $96                   ;
CODE_0E826D:        SEC                       ;
CODE_0E826E:        SBC $90                   ;
CODE_0E8270:        DEC A                     ;
CODE_0E8271:        ASL A                     ;
CODE_0E8272:        STA $84                   ;
CODE_0E8274:        TAX                       ;
CODE_0E8275:        LDA $80                   ;
CODE_0E8277:        TAY                       ;
CODE_0E8278:        BMI CODE_0E8289           ;
CODE_0E827A:        AND #$FF00                ;
CODE_0E827D:        BEQ CODE_0E828C           ;
CODE_0E827F:        CMP #$0100                ;
CODE_0E8282:        BNE CODE_0E8289           ;
CODE_0E8284:        LDY #$00FF                ;
CODE_0E8287:        BRA CODE_0E828C           ;

CODE_0E8289:        LDY #$0000                ;
CODE_0E828C:        TYA                       ;
CODE_0E828D:        AND #$00FF                ;
CODE_0E8290:        STA $86                   ;
CODE_0E8292:        LDA $82                   ;
CODE_0E8294:        TAY                       ;
CODE_0E8295:        AND #$FF00                ;
CODE_0E8298:        BEQ CODE_0E829D           ;
CODE_0E829A:        LDY #$00FF                ;
CODE_0E829D:        TYA                       ;
CODE_0E829E:        AND #$00FF                ;
CODE_0E82A1:        XBA                       ;
CODE_0E82A2:        ORA $86                   ;
CODE_0E82A4:        STA $86                   ;
CODE_0E82A6:        CPX #$01C0                ;
CODE_0E82A9:        BCS CODE_0E82B7           ;
CODE_0E82AB:        CMP #$FFFF                ;
CODE_0E82AE:        BNE CODE_0E82B3           ;
CODE_0E82B0:        LDA #$00FF                ;
CODE_0E82B3:        STA $7FF000,x             ;
CODE_0E82B7:        LDA $96                   ;
CODE_0E82B9:        CLC                       ;
CODE_0E82BA:        ADC $90                   ;
CODE_0E82BC:        DEC A                     ;
CODE_0E82BD:        ASL A                     ;
CODE_0E82BE:        STA $8E                   ;
CODE_0E82C0:        CMP #$01C0                ;
CODE_0E82C3:        BCS CODE_0E82D4           ;
CODE_0E82C5:        TAX                       ;
CODE_0E82C6:        LDA $86                   ;
CODE_0E82C8:        CMP #$FFFF                ;
CODE_0E82CB:        BNE CODE_0E82D0           ;
CODE_0E82CD:        LDA #$00FF                ;
CODE_0E82D0:        STA $7FF000,x             ;
CODE_0E82D4:        INC $90                   ;
CODE_0E82D6:        LDA $84                   ;
CODE_0E82D8:        CMP #$01C0                ;
CODE_0E82DB:        BCC CODE_0E82E4           ;
CODE_0E82DD:        LDA $8E                   ;
CODE_0E82DF:        CMP #$01C0                ;
CODE_0E82E2:        BCS CODE_0E82E7           ;
CODE_0E82E4:        JMP CODE_0E8227           ;

CODE_0E82E7:        SEP #$30                  ;
CODE_0E82E9:        INC $9A                   ;
CODE_0E82EB:        PLD                       ;
CODE_0E82EC:        PLB                       ;
CODE_0E82ED:        RTL                       ;

CODE_0E82EE:        SEP #$10                  ;
CODE_0E82F0:        LDX #$00                  ;
CODE_0E82F2:        STZ $05D0,x               ;
CODE_0E82F5:        STZ $05E0,x               ;
CODE_0E82F8:        STZ $05F0,x               ;
CODE_0E82FB:        STZ $0600,x               ;
CODE_0E82FE:        STZ $0610,x               ;
CODE_0E8301:        STZ $0620,x               ;
CODE_0E8304:        STZ $0630,x               ;
CODE_0E8307:        STZ $0640,x               ;
CODE_0E830A:        STZ $0650,x               ;
CODE_0E830D:        STZ $0660,x               ;
CODE_0E8310:        STZ $0670,x               ;
CODE_0E8313:        STZ $0680,x               ;
CODE_0E8316:        STZ $0690,x               ;
CODE_0E8319:        INX                       ;
CODE_0E831A:        TXA                       ;
CODE_0E831B:        AND #$0F                  ;
CODE_0E831D:        BNE CODE_0E82F2           ;
CODE_0E831F:        LDA #$66                  ;
CODE_0E8321:        STA $0640                 ;
CODE_0E8324:        STA $0641                 ;
CODE_0E8327:        STA $0642                 ;
CODE_0E832A:        STA $0673                 ;
CODE_0E832D:        STA $0674                 ;
CODE_0E8330:        STA $0675                 ;
CODE_0E8333:        STA $0676                 ;
CODE_0E8336:        STA $0649                 ;
CODE_0E8339:        STA $064A                 ;
CODE_0E833C:        STA $064B                 ;
CODE_0E833F:        STA $064C                 ;
CODE_0E8342:        STA $064D                 ;
CODE_0E8345:        STA $064E                 ;
CODE_0E8348:        LDA #$01                  ;
CODE_0E834A:        STA $0EC9                 ;
CODE_0E834D:        RTL                       ;

CODE_0E834E:        STZ $F6                   ;
CODE_0E8350:        REP #$30                  ;
CODE_0E8352:        LDA $0EEC                 ;
CODE_0E8355:        STA $F3                   ;
CODE_0E8357:        STZ $F7                   ;
CODE_0E8359:        LDX $F3                   ;
CODE_0E835B:        SEP #$20                  ;
CODE_0E835D:        LDA.l DATA_0E83D8,x             ;
CODE_0E8361:        CLC                       ;
CODE_0E8362:        ROL A                     ;
CODE_0E8363:        ROL A                     ;
CODE_0E8364:        AND #$01                  ;
CODE_0E8366:        STA $F5                   ;
CODE_0E8368:        LDA.l DATA_0E83D8+1,x             ;
CODE_0E836C:        ASL A                     ;
CODE_0E836D:        REP #$21                  ;
CODE_0E836F:        LDX $F7                   ;
CODE_0E8371:        ADC $F5                   ;
CODE_0E8373:        AND #$00FF                ;
CODE_0E8376:        CMP #$0080                ;
CODE_0E8379:        BCC CODE_0E837E           ;
CODE_0E837B:        ORA #$FF00                ;
CODE_0E837E:        CLC                       ;
CODE_0E837F:        ADC $0EFD                 ;
CODE_0E8382:        CLC                       ;
CODE_0E8383:        ADC #$0008                ;
CODE_0E8386:        STA $7F2000,x             ;
CODE_0E838A:        LDA $F3                   ;
CODE_0E838C:        CLC                       ;
CODE_0E838D:        ADC #$0010                ;
CODE_0E8390:        AND #$01FF                ;
CODE_0E8393:        STA $F3                   ;
CODE_0E8395:        INC $F7                   ;
CODE_0E8397:        INC $F7                   ;
CODE_0E8399:        LDA $F7                   ;
CODE_0E839B:        CMP #$0040                ;
CODE_0E839E:        BNE CODE_0E8359           ;
CODE_0E83A0:        LDA $0EEC                 ;
CODE_0E83A3:        CLC                       ;
CODE_0E83A4:        ADC #$0004                ;
CODE_0E83A7:        AND #$01FF                ;
CODE_0E83AA:        STA $0EEC                 ;
CODE_0E83AD:        SEP #$30                  ;
CODE_0E83AF:        PHB                       ;
CODE_0E83B0:        LDA #$7F                  ;
CODE_0E83B2:        PHA                       ;
CODE_0E83B3:        PLB                       ;
CODE_0E83B4:        REP #$20                  ;
CODE_0E83B6:        LDY #$3E                  ;
CODE_0E83B8:        LDA $2000,y               ;
CODE_0E83BB:        STA $2040,y               ;
CODE_0E83BE:        STA $2080,y               ;
CODE_0E83C1:        STA $20C0,y               ;
CODE_0E83C4:        STA $2100,y               ;
CODE_0E83C7:        STA $2140,y               ;
CODE_0E83CA:        STA $2180,y               ;
CODE_0E83CD:        STA $21C0,y               ;
CODE_0E83D0:        DEY                       ;
CODE_0E83D1:        DEY                       ;
CODE_0E83D2:        BPL CODE_0E83B8           ;
CODE_0E83D4:        SEP #$20                  ;
CODE_0E83D6:        PLB                       ;
CODE_0E83D7:        RTL                       ;

DATA_0E83D8:        db $00,$00,$FA,$FF,$F4,$FF,$EE,$FF
                    db $E7,$FF,$E1,$FF,$DB,$FF,$D5,$FF
                    db $CF,$FF,$C8,$FF,$C2,$FF,$BC,$FF
                    db $B6,$FF,$B0,$FF,$AA,$FF,$A4,$FF
                    db $9F,$FF,$99,$FF,$93,$FF,$8D,$FF
                    db $88,$FF,$82,$FF,$7D,$FF,$78,$FF
                    db $72,$FF,$6D,$FF,$68,$FF,$63,$FF
                    db $5E,$FF,$59,$FF,$55,$FF,$50,$FF
                    db $4B,$FF,$47,$FF,$43,$FF,$3F,$FF
                    db $3B,$FF,$37,$FF,$33,$FF,$2F,$FF
                    db $2C,$FF,$28,$FF,$25,$FF,$22,$FF
                    db $1F,$FF,$1C,$FF,$19,$FF,$16,$FF
                    db $14,$FF,$12,$FF,$0F,$FF,$0D,$FF
                    db $0C,$FF,$0A,$FF,$08,$FF,$07,$FF
                    db $05,$FF,$04,$FF,$03,$FF,$02,$FF
                    db $02,$FF,$01,$FF,$01,$FF,$01,$FF
                    db $01,$FF,$01,$FF,$01,$FF,$01,$FF
                    db $02,$FF,$02,$FF,$03,$FF,$04,$FF
                    db $05,$FF,$07,$FF,$08,$FF,$0A,$FF
                    db $0C,$FF,$0D,$FF,$0F,$FF,$12,$FF
                    db $14,$FF,$16,$FF,$19,$FF,$1C,$FF
                    db $1F,$FF,$22,$FF,$25,$FF,$28,$FF
                    db $2C,$FF,$2F,$FF,$33,$FF,$37,$FF
                    db $3B,$FF,$3F,$FF,$43,$FF,$47,$FF
                    db $4B,$FF,$50,$FF,$55,$FF,$59,$FF
                    db $5E,$FF,$63,$FF,$68,$FF,$6D,$FF
                    db $72,$FF,$78,$FF,$7D,$FF,$82,$FF
                    db $88,$FF,$8D,$FF,$93,$FF,$99,$FF
                    db $9F,$FF,$A4,$FF,$AA,$FF,$B0,$FF
                    db $B6,$FF,$BC,$FF,$C2,$FF,$C8,$FF
                    db $CF,$FF,$D5,$FF,$DB,$FF,$E1,$FF
                    db $E7,$FF,$EE,$FF,$F4,$FF,$FA,$FF
                    db $00,$00,$06,$00,$0C,$00,$12,$00
                    db $19,$00,$1F,$00,$25,$00,$2B,$00
                    db $31,$00,$38,$00,$3E,$00,$44,$00
                    db $4A,$00,$50,$00,$56,$00,$5C,$00
                    db $61,$00,$67,$00,$6D,$00,$73,$00
                    db $78,$00,$7E,$00,$83,$00,$88,$00
                    db $8E,$00,$93,$00,$98,$00,$9D,$00
                    db $A2,$00,$A7,$00,$AB,$00,$B0,$00
                    db $B5,$00,$B9,$00,$BD,$00,$C1,$00
                    db $C5,$00,$C9,$00,$CD,$00,$D1,$00
                    db $D4,$00,$D8,$00,$DB,$00,$DE,$00
                    db $E1,$00,$E4,$00,$E7,$00,$EA,$00
                    db $EC,$00,$EE,$00,$F1,$00,$F3,$00
                    db $F4,$00,$F6,$00,$F8,$00,$F9,$00
                    db $FB,$00,$FC,$00,$FD,$00,$FE,$00
                    db $FE,$00,$FF,$00,$FF,$00,$FF,$00
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00
                    db $FE,$00,$FE,$00,$FD,$00,$FC,$00
                    db $FB,$00,$F9,$00,$F8,$00,$F6,$00
                    db $F4,$00,$F3,$00,$F1,$00,$EE,$00
                    db $EC,$00,$EA,$00,$E7,$00,$E4,$00
                    db $E1,$00,$DE,$00,$DB,$00,$D8,$00
                    db $D4,$00,$D1,$00,$CD,$00,$C9,$00
                    db $C5,$00,$C1,$00,$BD,$00,$B9,$00
                    db $B5,$00,$B0,$00,$AB,$00,$A7,$00
                    db $A2,$00,$9D,$00,$98,$00,$93,$00
                    db $8E,$00,$88,$00,$83,$00,$7E,$00
                    db $78,$00,$73,$00,$6D,$00,$67,$00
                    db $61,$00,$5C,$00,$56,$00,$50,$00
                    db $4A,$00,$44,$00,$3E,$00,$38,$00
                    db $31,$00,$2B,$00,$25,$00,$1F,$00
                    db $19,$00,$12,$00,$0C,$00,$06,$00

CODE_0E85D8:        PHB                       ;
CODE_0E85D9:        PHK                       ;
CODE_0E85DA:        PLB                       ;
CODE_0E85DB:        BRA CODE_0E85E8           ;

CODE_0E85DD:        PHB                       ;
CODE_0E85DE:        PHK                       ;
CODE_0E85DF:        PLB                       ;
CODE_0E85E0:        LDA $0EDC                 ;
CODE_0E85E3:        BEQ CODE_0E8614           ;
CODE_0E85E5:        JSR CODE_0E8706           ;
CODE_0E85E8:        PHX                       ;
CODE_0E85E9:        PHY                       ;
CODE_0E85EA:        LDA $0ED6                 ;
CODE_0E85ED:        AND #$80                  ;
CODE_0E85EF:        STA $0ED6                 ;
CODE_0E85F2:        LDA $5C                   ;
CODE_0E85F4:        BNE CODE_0E8601           ;
CODE_0E85F6:        JSR CODE_0E86B7           ;
CODE_0E85F9:        LDA #$06                  ;
CODE_0E85FB:        STA $0773                 ;
CODE_0E85FE:        JMP CODE_0E860D           ;

CODE_0E8601:        CMP #$01                  ;
CODE_0E8603:        BNE CODE_0E8612           ;
CODE_0E8605:        JSR CODE_0E8616           ;
CODE_0E8608:        LDA #$01                  ;
CODE_0E860A:        STA $0ED4                 ;
CODE_0E860D:        LDA #$01                  ;
CODE_0E860F:        STA $0EDE                 ;
CODE_0E8612:        PLY                       ;
CODE_0E8613:        PLX                       ;
CODE_0E8614:        PLB                       ;
CODE_0E8615:        RTL                       ;

CODE_0E8616:        REP #$30                  ;
CODE_0E8618:        LDA #$000E                ;
CODE_0E861B:        STA $F7                   ;
CODE_0E861D:        LDA $0ED9                 ;
CODE_0E8620:        STA $00                   ;
CODE_0E8622:        LDA $7F2000               ;
CODE_0E8626:        TAX                       ;
CODE_0E8627:        LDA $F3                   ;
CODE_0E8629:        XBA                       ;
CODE_0E862A:        STA $7F2002,x             ;
CODE_0E862E:        INC A                     ;
CODE_0E862F:        STA $7F203C,x             ;
CODE_0E8633:        PHX                       ;
CODE_0E8634:        LDX $00                   ;
CODE_0E8636:        LDA $7F3000,x             ;
CODE_0E863A:        AND #$00FF                ;
CODE_0E863D:        ASL A                     ;
CODE_0E863E:        ASL A                     ;
CODE_0E863F:        ASL A                     ;
CODE_0E8640:        TAY                       ;
CODE_0E8641:        PLX                       ;
CODE_0E8642:        LDA DATA_0EBB6D,y               ;
CODE_0E8645:        STA $7F2004,x             ;
CODE_0E8649:        LDA DATA_0EBB6D+2,y               ;
CODE_0E864C:        STA $7F2006,x             ;
CODE_0E8650:        LDA DATA_0EBB6D+4,y               ;
CODE_0E8653:        STA $7F203E,x             ;
CODE_0E8657:        LDA DATA_0EBB6D+6,y               ;
CODE_0E865A:        STA $7F2040,x             ;
CODE_0E865E:        INX                       ;
CODE_0E865F:        INX                       ;
CODE_0E8660:        INX                       ;
CODE_0E8661:        INX                       ;
CODE_0E8662:        LDA $00                   ;
CODE_0E8664:        CLC                       ;
CODE_0E8665:        ADC #$0010                ;
CODE_0E8668:        STA $00                   ;
CODE_0E866A:        DEC $F7                   ;
CODE_0E866C:        BNE CODE_0E8633           ;
CODE_0E866E:        LDA $7F2000               ;
CODE_0E8672:        TAX                       ;
CODE_0E8673:        LDA #$FFFF                ;
CODE_0E8676:        STA $7F2076,x             ;
CODE_0E867A:        LDA $7F2000               ;
CODE_0E867E:        CLC                       ;
CODE_0E867F:        ADC #$0074                ;
CODE_0E8682:        STA $7F2000               ;
CODE_0E8686:        LDA $0ED9                 ;
CODE_0E8689:        INC A                     ;
CODE_0E868A:        AND #$000F                ;
CODE_0E868D:        BNE CODE_0E869E           ;
CODE_0E868F:        LDA $0ED9                 ;
CODE_0E8692:        AND #$FFF0                ;
CODE_0E8695:        CLC                       ;
CODE_0E8696:        ADC #$00E0                ;
CODE_0E8699:        STA $0ED9                 ;
CODE_0E869C:        BRA CODE_0E86A1           ;

CODE_0E869E:        INC $0ED9                 ;
CODE_0E86A1:        LDA $0ED9                 ;
CODE_0E86A4:        CMP #$0A80                ;
CODE_0E86A7:        BCC CODE_0E86AC           ;
CODE_0E86A9:        STZ $0ED9                 ;
CODE_0E86AC:        LDA $F3                   ;
CODE_0E86AE:        CLC                       ;
CODE_0E86AF:        ADC #$0200                ;
CODE_0E86B2:        STA $F3                   ;
CODE_0E86B4:        SEP #$30                  ;
CODE_0E86B6:        RTS                       ;

CODE_0E86B7:        REP #$30                  ;
CODE_0E86B9:        LDX $1A00                 ;
CODE_0E86BC:        LDA $F3                   ;
CODE_0E86BE:        STA $1A02,x               ;
CODE_0E86C1:        CLC                       ;
CODE_0E86C2:        ADC #$0100                ;
CODE_0E86C5:        STA $1A08,x               ;
CODE_0E86C8:        CLC                       ;
CODE_0E86C9:        ADC #$0100                ;
CODE_0E86CC:        STA $F3                   ;
CODE_0E86CE:        LDA #$0100                ;
CODE_0E86D1:        STA $1A04,x               ;
CODE_0E86D4:        STA $1A0A,x               ;
CODE_0E86D7:        LDA $F3                   ;
CODE_0E86D9:        AND #$0200                ;
CODE_0E86DC:        BNE CODE_0E86E6           ;
CODE_0E86DE:        LDA #$2C2C                ;
CODE_0E86E1:        LDY #$2C2D                ;
CODE_0E86E4:        BRA CODE_0E86EC           ;

CODE_0E86E6:        LDA #$2C2E                ;
CODE_0E86E9:        LDY #$2C2F                ;
CODE_0E86EC:        STA $1A06,x               ;
CODE_0E86EF:        TYA                       ;
CODE_0E86F0:        STA $1A0C,x               ;
CODE_0E86F3:        LDA #$FFFF                ;
CODE_0E86F6:        STA $1A0E,x               ;
CODE_0E86F9:        LDA $1A00                 ;
CODE_0E86FC:        CLC                       ;
CODE_0E86FD:        ADC #$000C                ;
CODE_0E8700:        STA $1A00                 ;
CODE_0E8703:        SEP #$30                  ;
CODE_0E8705:        RTS                       ;

CODE_0E8706:        REP #$30                  ;
CODE_0E8708:        LDA $0EEE                 ;
CODE_0E870B:        CLC                       ;
CODE_0E870C:        ADC #$0120                ;
CODE_0E870F:        XBA                       ;
CODE_0E8710:        STA $F3                   ;
CODE_0E8712:        SEP #$30                  ;
CODE_0E8714:        LDA $F3                   ;
CODE_0E8716:        AND #$01                  ;
CODE_0E8718:        BNE CODE_0E871E           ;
CODE_0E871A:        LDA #$58                  ;
CODE_0E871C:        BRA CODE_0E8720           ;

CODE_0E871E:        LDA #$5C                  ;
CODE_0E8720:        STA $F3                   ;
CODE_0E8722:        LDA $F4                   ;
CODE_0E8724:        LSR A                     ;
CODE_0E8725:        LSR A                     ;
CODE_0E8726:        LSR A                     ;
CODE_0E8727:        CLC                       ;
CODE_0E8728:        ADC #$80                  ;
CODE_0E872A:        STA $F4                   ;
CODE_0E872C:        RTS                       ;

DATA_0E872D:        dw $0000,$0780,$2E62,$2E72 ;
                    dw $2E73,$2E72,$0000,$0780 ;
                    dw $2E63,$2E73,$2E72,$2E73 ;
                    dw $0000,$0780,$2E64,$2E74 ;
                    dw $2E4E,$2E74,$FFFF

DATA_0E8753:        dw $0000,$0780,$2E73,$2E72 ;
                    dw $2E73,$2E72,$0000,$0780 ;
                    dw $2E72,$2E73,$2E72,$2E73 ;
                    dw $0000,$0780,$2E5E,$2E66 ;
                    dw $6E67,$AE66,$FFFF

PNTR_0E8779:        dw DATA_0E872D
                    dw DATA_0E8753

CODE_0E877D:        PHB                       ;
CODE_0E877E:        PHK                       ;
CODE_0E877F:        PLB                       ;
CODE_0E8780:        LDA.b #DATA_0E872D>>16    ;
CODE_0E8782:        STA $F5                   ;
CODE_0E8784:        LDA $0EE6                 ;
CODE_0E8787:        AND #$01                  ;
CODE_0E8789:        ASL A                     ;
CODE_0E878A:        REP #$30                  ;
CODE_0E878C:        AND #$0002                ;
CODE_0E878F:        TAY                       ;
CODE_0E8790:        LDA PNTR_0E8779,y         ;
CODE_0E8793:        STA $F3                   ;
CODE_0E8795:        LDX $1700                 ;
CODE_0E8798:        LDY #$0000                ;
CODE_0E879B:        LDA [$F3],y               ;
CODE_0E879D:        STA $1702,x               ;
CODE_0E87A0:        INY                       ;
CODE_0E87A1:        INY                       ;
CODE_0E87A2:        INX                       ;
CODE_0E87A3:        INX                       ;
CODE_0E87A4:        CMP #$FFFF                ;
CODE_0E87A7:        BNE CODE_0E879B           ;
CODE_0E87A9:        LDX $1700                 ;
CODE_0E87AC:        LDA $0EF4                 ;
CODE_0E87AF:        AND #$0020                ;
CODE_0E87B2:        BEQ CODE_0E87C0           ;
CODE_0E87B4:        LDA $0EF4                 ;
CODE_0E87B7:        AND #$0FDF                ;
CODE_0E87BA:        EOR #$0400                ;
CODE_0E87BD:        STA $0EF4                 ;
CODE_0E87C0:        LDA $0EF4                 ;
CODE_0E87C3:        CLC                       ;
CODE_0E87C4:        ADC #$02C1                ;
CODE_0E87C7:        AND #$0FDF                ;
CODE_0E87CA:        TAY                       ;
CODE_0E87CB:        XBA                       ;
CODE_0E87CC:        STA $1702,x               ;
CODE_0E87CF:        INY                       ;
CODE_0E87D0:        TYA                       ;
CODE_0E87D1:        AND #$0020                ;
CODE_0E87D4:        BEQ CODE_0E87DE           ;
CODE_0E87D6:        TYA                       ;
CODE_0E87D7:        AND #$0FDF                ;
CODE_0E87DA:        EOR #$0400                ;
CODE_0E87DD:        TAY                       ;
CODE_0E87DE:        TYA                       ;
CODE_0E87DF:        XBA                       ;
CODE_0E87E0:        STA $170E,x               ;
CODE_0E87E3:        INY                       ;
CODE_0E87E4:        TYA                       ;
CODE_0E87E5:        XBA                       ;
CODE_0E87E6:        STA $171A,x               ;
CODE_0E87E9:        LDA $1700                 ;
CODE_0E87EC:        CLC                       ;
CODE_0E87ED:        ADC #$0024                ;
CODE_0E87F0:        STA $1700                 ;
CODE_0E87F3:        SEP #$30                  ;
CODE_0E87F5:        STZ $0EE6                 ;
CODE_0E87F8:        LDA #$06                  ;
CODE_0E87FA:        STA $0773                 ;
CODE_0E87FD:        PLB                       ;
CODE_0E87FE:        RTL                       ;

CODE_0E87FF:        LDY $1A00                 ;
CODE_0E8802:        LDA $19F8,y               ;
CODE_0E8805:        CMP #$0024                ;
CODE_0E8808:        BEQ CODE_0E880F           ;
CODE_0E880A:        CMP #$10A4                ;
CODE_0E880D:        BNE CODE_0E884F           ;
CODE_0E880F:        LDA $0ECE                 ;
CODE_0E8812:        AND #$00FF                ;
CODE_0E8815:        BEQ CODE_0E881A           ;
CODE_0E8817:        JMP CODE_0E88A2           ;

CODE_0E881A:        INC $0ECE                 ;
CODE_0E881D:        LDX $1700                 ;
CODE_0E8820:        LDA $0ECC                 ;
CODE_0E8823:        DEC A                     ;
CODE_0E8824:        AND #$041F                ;
CODE_0E8827:        CLC                       ;
CODE_0E8828:        ADC #$0340                ;
CODE_0E882B:        XBA                       ;
CODE_0E882C:        STA $1702,x               ;
CODE_0E882F:        LDA #$0780                ;
CODE_0E8832:        STA $1704,x               ;
CODE_0E8835:        LDA #$0A0D                ;
CODE_0E8838:        STA $1706,x               ;
CODE_0E883B:        LDA #$0A1D                ;
CODE_0E883E:        STA $1708,x               ;
CODE_0E8841:        LDA #$0A0F                ;
CODE_0E8844:        STA $170A,x               ;
CODE_0E8847:        LDA #$0A1F                ;
CODE_0E884A:        STA $170C,x               ;
CODE_0E884D:        BRA CODE_0E8894           ;

CODE_0E884F:        CMP #$0A08                ;
CODE_0E8852:        BNE CODE_0E88A2           ;
CODE_0E8854:        LDA $0ECF                 ;
CODE_0E8857:        AND #$00FF                ;
CODE_0E885A:        BEQ CODE_0E88A2           ;
CODE_0E885C:        STZ $0ECE                 ;
CODE_0E885F:        LDA $43                   ;
CODE_0E8861:        BNE CODE_0E8868           ;
CODE_0E8863:        LDA $0ECC                 ;
CODE_0E8866:        BEQ CODE_0E88A2           ;
CODE_0E8868:        LDX $1700                 ;
CODE_0E886B:        LDA $0ECC                 ;
CODE_0E886E:        CLC                       ;
CODE_0E886F:        ADC #$0340                ;
CODE_0E8872:        XBA                       ;
CODE_0E8873:        STA $1702,x               ;
CODE_0E8876:        LDA #$0780                ;
CODE_0E8879:        STA $1704,x               ;
CODE_0E887C:        LDA #$0A0C                ;
CODE_0E887F:        STA $1706,x               ;
CODE_0E8882:        LDA #$0A1C                ;
CODE_0E8885:        STA $1708,x               ;
CODE_0E8888:        LDA #$0A0E                ;
CODE_0E888B:        STA $170A,x               ;
CODE_0E888E:        LDA #$0A1E                ;
CODE_0E8891:        STA $170C,x               ;
CODE_0E8894:        LDA #$FFFF                ;
CODE_0E8897:        STA $170E,x               ;
CODE_0E889A:        TXA                       ;
CODE_0E889B:        CLC                       ;
CODE_0E889C:        ADC #$000C                ;
CODE_0E889F:        STA $1700                 ;
CODE_0E88A2:        RTL                       ;

DATA_0E88A3:        db $42,$41,$43

CODE_0E88A6:        JSL CODE_0DAAA4           ;
CODE_0E88AA:        LDY #$00                  ;
CODE_0E88AC:        BCS CODE_0E88B5           ;
CODE_0E88AE:        INY                       ;
CODE_0E88AF:        LDA $1300,x               ;
CODE_0E88B2:        BNE CODE_0E88B5           ;
CODE_0E88B4:        INY                       ;
CODE_0E88B5:        PHB                       ;
CODE_0E88B6:        PHK                       ;
CODE_0E88B7:        PLB                       ;
CODE_0E88B8:        LDA DATA_0E88A3,y               ;
CODE_0E88BB:        STA $06A1                 ;
CODE_0E88BE:        PLB                       ;
CODE_0E88BF:        RTL                       ;

CODE_0E88C0:        PHB                       ;
CODE_0E88C1:        PHK                       ;
CODE_0E88C2:        PLB                       ;
CODE_0E88C3:        INY                       ;
CODE_0E88C4:        INY                       ;
CODE_0E88C5:        LDA $FA                   ;
CODE_0E88C7:        STA $F3                   ;
CODE_0E88C9:        LDA $FB                   ;
CODE_0E88CB:        STA $F4                   ;
CODE_0E88CD:        LDA $FC                   ;
CODE_0E88CF:        STA $F5                   ;
CODE_0E88D1:        LDA [$F3],y               ;
CODE_0E88D3:        REP #$20                  ;
CODE_0E88D5:        AND #$007F                ;
CODE_0E88D8:        TAX                       ;
CODE_0E88D9:        SEP #$20                  ;
CODE_0E88DB:        LDA PNTR_0E88EE,x               ;
CODE_0E88DE:        STA $00                   ;
CODE_0E88E0:        LDA PNTR_0E88EE+1,x               ;
CODE_0E88E3:        STA $01                   ;
CODE_0E88E5:        SEP #$10                  ;
CODE_0E88E7:        LDX $9E                   ;
CODE_0E88E9:        LDY $F7                   ;
CODE_0E88EB:        JMP ($0000)               ;

PNTR_0E88EE:        dw CODE_0E89BB
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E89C1
                    dw CODE_0E8970
                    dw CODE_0E896E
                    dw CODE_0E8980
                    dw CODE_0E8990
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E8A4A
                    dw CODE_0E8AF7
                    dw CODE_0E8AFB
                    dw CODE_0E8AFF
                    dw CODE_0E8B11
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E8B5A
                    dw CODE_0E8B7D
                    dw CODE_0E8BB9
                    dw CODE_0E8BDF
                    dw CODE_0E8C01
                    dw CODE_0E8C2A
                    dw CODE_0E8C67
                    dw CODE_0E8CAD
                    dw CODE_0E8CCF
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E8D04
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E89A0
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E89A4
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E
                    dw CODE_0E896E

CODE_0E896E:        PLB                       ;
CODE_0E896F:        RTL                       ;

CODE_0E8970:        JSR CODE_0E8D11           ;
CODE_0E8973:        JSL CODE_0DAAB4           ;
CODE_0E8977:        LDX $07                   ;
CODE_0E8979:        LDA #$00                  ;
CODE_0E897B:        STA $06A1,x               ;
CODE_0E897E:        PLB                       ;
CODE_0E897F:        RTL                       ;

CODE_0E8980:        JSR CODE_0E8D11           ;
CODE_0E8983:        JSL CODE_0DAAB4           ;
CODE_0E8987:        LDX $07                   ;
CODE_0E8989:        LDA #$60                  ;
CODE_0E898B:        STA $06A1,x               ;
CODE_0E898E:        PLB                       ;
CODE_0E898F:        RTL                       ;

CODE_0E8990:        JSR CODE_0E8D11           ;
CODE_0E8993:        JSL CODE_0DAAB4           ;
CODE_0E8997:        LDX $07                   ;
CODE_0E8999:        LDA #$61                  ;
CODE_0E899B:        STA $06A1,x               ;
CODE_0E899E:        PLB                       ;
CODE_0E899F:        RTL                       ;

CODE_0E89A0:        LDA #$01                  ;
CODE_0E89A2:        BNE CODE_0E89A6           ;
CODE_0E89A4:        LDA #$04                  ;
CODE_0E89A6:        JSL CODE_0DAACC           ;
CODE_0E89AA:        LDA #$1C                  ;
CODE_0E89AC:        STA $06A1,x               ;
CODE_0E89AF:        LDA $06A0,x               ;
CODE_0E89B2:        CMP #$1B                  ;
CODE_0E89B4:        BNE CODE_0E89B9           ;
CODE_0E89B6:        INC $06A1,x               ;
CODE_0E89B9:        PLB                       ;
CODE_0E89BA:        RTL                       ;

CODE_0E89BB:        LDX #$00                  ;
CODE_0E89BD:        LDY #$0F                  ;
CODE_0E89BF:        BRA CODE_0E89D4           ;

CODE_0E89C1:        TXA                       ;
CODE_0E89C2:        PHA                       ;
CODE_0E89C3:        LDX #$01                  ;
CODE_0E89C5:        LDY #$0F                  ;
CODE_0E89C7:        LDA #$44                  ;
CODE_0E89C9:        JSL CODE_0DAAAC           ;
CODE_0E89CD:        PLA                       ;
CODE_0E89CE:        TAX                       ;
CODE_0E89CF:        JSR CODE_0E8D11           ;
CODE_0E89D2:        LDX #$01                  ;
CODE_0E89D4:        LDA #$40                  ;
CODE_0E89D6:        JSL CODE_0DAAAC           ;
CODE_0E89DA:        PLB                       ;
CODE_0E89DB:        RTL                       ;

DATA_0E89DC:        db $00,$00,$00,$DF,$C6,$C5,$DE,$00
                    db $00,$00,$00,$00,$00,$D4,$DB,$DA
                    db $D0,$00,$00,$00,$00,$00,$E3,$E2
                    db $C7,$C4,$E1,$E0,$00,$00,$00,$00
                    db $D4,$D3,$CD,$CC,$D1,$D0,$00,$00
                    db $E6,$00,$D9,$D8,$DD,$DC,$D6,$D5
                    db $E5,$E4,$CB,$CA,$C9,$C8,$C7,$C4
                    db $C3,$C2,$C1,$C0,$D4,$D3,$D2,$CD
                    db $CC,$CD,$CC,$D2,$D1,$D0,$D9,$D8
                    db $D7,$DD,$DC,$DD,$DC,$D7,$D6,$D5
                    db $D9,$D8,$D7,$D7,$D7,$D7,$D7,$D7
                    db $D6,$D5,$D9,$D8,$CF,$CE,$CF,$CE
                    db $CF,$CE,$D6,$D5,$D9,$D8,$DD,$DC
                    db $DD,$DC,$DD,$DC,$D6,$D5

CODE_0E8A4A:        JSR CODE_0E8D11           ;
CODE_0E8A4D:        STY $07                   ;
CODE_0E8A4F:        STZ $0EE7                 ;
CODE_0E8A52:        TYA                       ;
CODE_0E8A53:        BNE CODE_0E8A57           ;
CODE_0E8A55:        LDY #$08                  ;
CODE_0E8A57:        INY                       ;
CODE_0E8A58:        JSL CODE_0DAAB4           ;
CODE_0E8A5C:        PHX                       ;
CODE_0E8A5D:        LDY $1300,x               ;
CODE_0E8A60:        LDX $07                   ;
CODE_0E8A62:        LDA #$16                  ;
CODE_0E8A64:        STA $06                   ;
CODE_0E8A66:        LDA DATA_0E89DC,y               ;
CODE_0E8A69:        STA $06A1,x               ;
CODE_0E8A6C:        INX                       ;
CODE_0E8A6D:        LDA $06                   ;
CODE_0E8A6F:        BEQ CODE_0E8A78           ;
CODE_0E8A71:        TYA                       ;
CODE_0E8A72:        CLC                       ;
CODE_0E8A73:        ADC #$0A                  ;
CODE_0E8A75:        TAY                       ;
CODE_0E8A76:        DEC $06                   ;
CODE_0E8A78:        CPX #$0B                  ;
CODE_0E8A7A:        BNE CODE_0E8A66           ;
CODE_0E8A7C:        PLX                       ;
CODE_0E8A7D:        LDA $07                   ;
CODE_0E8A7F:        BEQ CODE_0E8A89           ;
CODE_0E8A81:        LDA $1300,x               ;
CODE_0E8A84:        BNE CODE_0E8A89           ;
CODE_0E8A86:        STZ $06AB                 ;
CODE_0E8A89:        LDA $0725                 ;
CODE_0E8A8C:        BEQ CODE_0E8AC5           ;
CODE_0E8A8E:        LDA $1300,x               ;
CODE_0E8A91:        CMP #$05                  ;
CODE_0E8A93:        BNE CODE_0E8AC5           ;
CODE_0E8A95:        JSL CODE_0DAABC           ;
CODE_0E8A99:        PHA                       ;
CODE_0E8A9A:        JSL CODE_0DAAC4           ;
CODE_0E8A9E:        PLA                       ;
CODE_0E8A9F:        CLC                       ;
CODE_0E8AA0:        ADC #$08                  ;
CODE_0E8AA2:        STA $021A,x               ;
CODE_0E8AA5:        LDA $0725                 ;
CODE_0E8AA8:        ADC #$00                  ;
CODE_0E8AAA:        STA $79,x                 ;
CODE_0E8AAC:        LDA #$01                  ;
CODE_0E8AAE:        STA $BC,x                 ;
CODE_0E8AB0:        STA $10,x                 ;
CODE_0E8AB2:        LDA #$90                  ;
CODE_0E8AB4:        STA $0238,x               ;
CODE_0E8AB7:        LDA #$31                  ;
CODE_0E8AB9:        STA $1C,x                 ;
CODE_0E8ABB:        INC $0EE7                 ;
CODE_0E8ABE:        LDA $07                   ;
CODE_0E8AC0:        BEQ CODE_0E8AC5           ;
CODE_0E8AC2:        INC $0EE7                 ;
CODE_0E8AC5:        LDA $0725                 ;
CODE_0E8AC8:        BEQ CODE_0E8AF5           ;
CODE_0E8ACA:        LDA $06AC                 ;
CODE_0E8ACD:        CMP #$4E                  ;
CODE_0E8ACF:        BEQ CODE_0E8AE5           ;
CODE_0E8AD1:        CMP #$22                  ;
CODE_0E8AD3:        BEQ CODE_0E8AF0           ;
CODE_0E8AD5:        CMP #$70                  ;
CODE_0E8AD7:        BEQ CODE_0E8AE9           ;
CODE_0E8AD9:        CMP #$66                  ;
CODE_0E8ADB:        BEQ CODE_0E8AE1           ;
CODE_0E8ADD:        LDA #$74                  ;
CODE_0E8ADF:        BRA CODE_0E8AF2           ;

CODE_0E8AE1:        LDA #$69                  ;
CODE_0E8AE3:        BRA CODE_0E8AF2           ;

CODE_0E8AE5:        LDA #$FC                  ;
CODE_0E8AE7:        BRA CODE_0E8AF2           ;

CODE_0E8AE9:        LDA #$73                  ;
CODE_0E8AEB:        STA $06AD                 ;
CODE_0E8AEE:        BRA CODE_0E8AF2           ;

CODE_0E8AF0:        LDA #$24                  ;
CODE_0E8AF2:        STA $06AC                 ;
CODE_0E8AF5:        PLB                       ;
CODE_0E8AF6:        RTL                       ;

CODE_0E8AF7:        LDA #$06                  ;
CODE_0E8AF9:        BRA CODE_0E8B01           ;

CODE_0E8AFB:        LDA #$07                  ;
CODE_0E8AFD:        BRA CODE_0E8B01           ;

CODE_0E8AFF:        LDA #$09                  ;
CODE_0E8B01:        PHA                       ;
CODE_0E8B02:        JSR CODE_0E8D11           ;
CODE_0E8B05:        JSL CODE_0DAAB4           ;
CODE_0E8B09:        LDA #$07                  ;
CODE_0E8B0B:        PLX                       ;
CODE_0E8B0C:        STA $06A1,x               ;
CODE_0E8B0F:        PLB                       ;
CODE_0E8B10:        RTL                       ;

CODE_0E8B11:        JSR CODE_0E8D11           ;
CODE_0E8B14:        JSL CODE_0DAAB4           ;
CODE_0E8B18:        LDA $06A1                 ;
CODE_0E8B1B:        STA $F3                   ;
CODE_0E8B1D:        CMP #$63                  ;
CODE_0E8B1F:        BEQ CODE_0E8B24           ;
CODE_0E8B21:        DEC A                     ;
CODE_0E8B22:        BRA CODE_0E8B25           ;

CODE_0E8B24:        INC A                     ;
CODE_0E8B25:        STA $F4                   ;
CODE_0E8B27:        LDA $07                   ;
CODE_0E8B29:        TAY                       ;
CODE_0E8B2A:        AND #$01                  ;
CODE_0E8B2C:        BEQ CODE_0E8B39           ;
CODE_0E8B2E:        LDA $F4                   ;
CODE_0E8B30:        STA $06A1,y               ;
CODE_0E8B33:        DEC $1300,x               ;
CODE_0E8B36:        BMI CODE_0E8B46           ;
CODE_0E8B38:        INY                       ;
CODE_0E8B39:        LDA $F3                   ;
CODE_0E8B3B:        STA $06A1,y               ;
CODE_0E8B3E:        DEC $1300,x               ;
CODE_0E8B41:        BMI CODE_0E8B46           ;
CODE_0E8B43:        INY                       ;
CODE_0E8B44:        BRA CODE_0E8B2E           ;

CODE_0E8B46:        PLB                       ;
CODE_0E8B47:        RTL                       ;

DATA_0E8B48:        db $07,$07,$06,$05,$04,$03,$02,$01
                    db $00

DATA_0E8B51:        db $03,$03,$04,$05,$06,$07,$08,$09
                    db $0A

CODE_0E8B5A:        JSR CODE_0E8D11           ;
CODE_0E8B5D:        JSL CODE_0DAAB4           ;
CODE_0E8B61:        BCC CODE_0E8B68           ;
CODE_0E8B63:        LDA #$09                  ;
CODE_0E8B65:        STA $0734                 ;
CODE_0E8B68:        DEC $0734                 ;
CODE_0E8B6B:        LDY $0734                 ;
CODE_0E8B6E:        LDX DATA_0E8B51,y               ;
CODE_0E8B71:        LDA DATA_0E8B48,y               ;
CODE_0E8B74:        TAY                       ;
CODE_0E8B75:        LDA #$62                  ;
CODE_0E8B77:        JSL CODE_0DAAAC           ;
CODE_0E8B7B:        PLB                       ;
CODE_0E8B7C:        RTL                       ;

CODE_0E8B7D:        JSR CODE_0E8D11           ;
CODE_0E8B80:        JSL CODE_0DAAB4           ;
CODE_0E8B84:        LDY $07                   ;
CODE_0E8B86:        LDA $1300,x               ;
CODE_0E8B89:        BNE CODE_0E8B9E           ;
CODE_0E8B8B:        LDA #$F4                  ;
CODE_0E8B8D:        STA $06A1,y               ;
CODE_0E8B90:        INY                       ;
CODE_0E8B91:        LDA $06A1,y               ;
CODE_0E8B94:        BNE CODE_0E8BA8           ;
CODE_0E8B96:        LDA #$F5                  ;
CODE_0E8B98:        STA $06A1,y               ;
CODE_0E8B9B:        INY                       ;
CODE_0E8B9C:        BRA CODE_0E8BA8           ;

CODE_0E8B9E:        LDA $06A1,y               ;
CODE_0E8BA1:        BNE CODE_0E8BB2           ;
CODE_0E8BA3:        LDA #$F6                  ;
CODE_0E8BA5:        STA $06A1,y               ;
CODE_0E8BA8:        LDA $06A1,y               ;
CODE_0E8BAB:        BNE CODE_0E8BB2           ;
CODE_0E8BAD:        LDA #$F7                  ;
CODE_0E8BAF:        STA $06A1,y               ;
CODE_0E8BB2:        INY                       ;
CODE_0E8BB3:        CPY #$0D                  ;
CODE_0E8BB5:        BNE CODE_0E8BA8           ;
CODE_0E8BB7:        PLB                       ;
CODE_0E8BB8:        RTL                       ;

CODE_0E8BB9:        JSR CODE_0E8D11           ;
CODE_0E8BBC:        JSL CODE_0DAAB4           ;
CODE_0E8BC0:        LDY $07                   ;
CODE_0E8BC2:        LDA #$65                  ;
CODE_0E8BC4:        STA $06A1,y               ;
CODE_0E8BC7:        INY                       ;
CODE_0E8BC8:        INY                       ;
CODE_0E8BC9:        LDA $06A1,y               ;
CODE_0E8BCC:        CMP #$63                  ;
CODE_0E8BCE:        BEQ CODE_0E8BD4           ;
CODE_0E8BD0:        CMP #$64                  ;
CODE_0E8BD2:        BNE CODE_0E8BDD           ;
CODE_0E8BD4:        LDA #$65                  ;
CODE_0E8BD6:        STA $06A1,y               ;
CODE_0E8BD9:        INY                       ;
CODE_0E8BDA:        INY                       ;
CODE_0E8BDB:        BRA CODE_0E8BC9           ;

CODE_0E8BDD:        PLB                       ;
CODE_0E8BDE:        RTL                       ;

CODE_0E8BDF:        JSR CODE_0E8D11           ;
CODE_0E8BE2:        JSL CODE_0DAAB4           ;
CODE_0E8BE6:        LDY $07                   ;
CODE_0E8BE8:        LDA #$F8                  ;
CODE_0E8BEA:        STA $06A1,y               ;
CODE_0E8BED:        INY                       ;
CODE_0E8BEE:        LDA $06A1,y               ;
CODE_0E8BF1:        CMP #$EC                  ;
CODE_0E8BF3:        BEQ CODE_0E8BFF           ;
CODE_0E8BF5:        LDA #$F9                  ;
CODE_0E8BF7:        STA $06A1,y               ;
CODE_0E8BFA:        INY                       ;
CODE_0E8BFB:        CPY #$0D                  ;
CODE_0E8BFD:        BNE CODE_0E8BEE           ;
CODE_0E8BFF:        PLB                       ;
CODE_0E8C00:        RTL                       ;

CODE_0E8C01:        JSR CODE_0E8D11           ;
CODE_0E8C04:        JSL CODE_0DAAB4           ;
CODE_0E8C08:        LDY $07                   ;
CODE_0E8C0A:        LDA $06A1,y               ;
CODE_0E8C0D:        CMP #$FD                  ;
CODE_0E8C0F:        BEQ CODE_0E8C16           ;
CODE_0E8C11:        LDA #$FA                  ;
CODE_0E8C13:        STA $06A1,y               ;
CODE_0E8C16:        INY                       ;
CODE_0E8C17:        LDA $06A1,y               ;
CODE_0E8C1A:        CMP #$F1                  ;
CODE_0E8C1C:        BEQ CODE_0E8C28           ;
CODE_0E8C1E:        LDA #$FB                  ;
CODE_0E8C20:        STA $06A1,y               ;
CODE_0E8C23:        INY                       ;
CODE_0E8C24:        CPY #$0D                  ;
CODE_0E8C26:        BNE CODE_0E8C17           ;
CODE_0E8C28:        PLB                       ;
CODE_0E8C29:        RTL                       ;

CODE_0E8C2A:        JSR CODE_0E8D11           ;
CODE_0E8C2D:        JSL CODE_0DAAB4           ;
CODE_0E8C31:        LDY $07                   ;
CODE_0E8C33:        LDA $1300,x               ;
CODE_0E8C36:        BNE CODE_0E8C4B           ;
CODE_0E8C38:        LDA $06A1,y               ;
CODE_0E8C3B:        CMP #$68                  ;
CODE_0E8C3D:        BEQ CODE_0E8C44           ;
CODE_0E8C3F:        LDA #$02                  ;
CODE_0E8C41:        STA $06A1,y               ;
CODE_0E8C44:        LDA #$EE                  ;
CODE_0E8C46:        STA $06A2,y               ;
CODE_0E8C49:        BRA CODE_0E8C65           ;

CODE_0E8C4B:        LDA $06A1,y               ;
CODE_0E8C4E:        CMP #$66                  ;
CODE_0E8C50:        BNE CODE_0E8C56           ;
CODE_0E8C52:        LDA #$EF                  ;
CODE_0E8C54:        BRA CODE_0E8C58           ;

CODE_0E8C56:        LDA #$EC                  ;
CODE_0E8C58:        STA $06A1,y               ;
CODE_0E8C5B:        LDA #$ED                  ;
CODE_0E8C5D:        STA $06A2,y               ;
CODE_0E8C60:        LDA #$67                  ;
CODE_0E8C62:        STA $06AD                 ;
CODE_0E8C65:        PLB                       ;
CODE_0E8C66:        RTL                       ;

CODE_0E8C67:        JSR CODE_0E8D11           ;
CODE_0E8C6A:        JSL CODE_0DAAB4           ;
CODE_0E8C6E:        LDY $07                   ;
CODE_0E8C70:        LDA $1300,x               ;
CODE_0E8C73:        BNE CODE_0E8C9A           ;
CODE_0E8C75:        LDA $06A1,y               ;
CODE_0E8C78:        CMP #$66                  ;
CODE_0E8C7A:        BNE CODE_0E8C80           ;
CODE_0E8C7C:        LDA #$F3                  ;
CODE_0E8C7E:        BRA CODE_0E8C90           ;

CODE_0E8C80:        LDA #$67                  ;
CODE_0E8C82:        INY                       ;
CODE_0E8C83:        INY                       ;
CODE_0E8C84:        STA $06A1,y               ;
CODE_0E8C87:        INY                       ;
CODE_0E8C88:        CPY #$0D                  ;
CODE_0E8C8A:        BNE CODE_0E8C84           ;
CODE_0E8C8C:        LDY $07                   ;
CODE_0E8C8E:        LDA #$F1                  ;
CODE_0E8C90:        STA $06A1,y               ;
CODE_0E8C93:        LDA #$F2                  ;
CODE_0E8C95:        STA $06A2,y               ;
CODE_0E8C98:        BRA CODE_0E8CAB           ;

CODE_0E8C9A:        LDA $06A1,y               ;
CODE_0E8C9D:        CMP #$68                  ;
CODE_0E8C9F:        BEQ CODE_0E8CA6           ;
CODE_0E8CA1:        LDA #$03                  ;
CODE_0E8CA3:        STA $06A1,y               ;
CODE_0E8CA6:        LDA #$F0                  ;
CODE_0E8CA8:        STA $06A2,y               ;
CODE_0E8CAB:        PLB                       ;
CODE_0E8CAC:        RTL                       ;

CODE_0E8CAD:        JSR CODE_0E8D11           ;
CODE_0E8CB0:        JSL CODE_0DAAB4           ;
CODE_0E8CB4:        LDY $07                   ;
CODE_0E8CB6:        LDA #$70                  ;
CODE_0E8CB8:        STA $06A1,y               ;
CODE_0E8CBB:        INY                       ;
CODE_0E8CBC:        DEC $1300,x               ;
CODE_0E8CBF:        BPL CODE_0E8CB6           ;
CODE_0E8CC1:        PLB                       ;
CODE_0E8CC2:        RTL                       ;

DATA_0E8CC3:        db $1B,$1A,$00,$00

DATA_0E8CC7:        db $1B,$27,$26,$25

DATA_0E8CCB:        db $1B,$2A,$29,$28

CODE_0E8CCF:        LDY #$03                  ;
CODE_0E8CD1:        JSL CODE_0DAAB4           ;
CODE_0E8CD5:        JSR CODE_0E8D11           ;
CODE_0E8CD8:        DEY                       ;
CODE_0E8CD9:        DEY                       ;
CODE_0E8CDA:        STY $05                   ;
CODE_0E8CDC:        LDY $1300,x               ;
CODE_0E8CDF:        STY $06                   ;
CODE_0E8CE1:        LDX $05                   ;
CODE_0E8CE3:        INX                       ;
CODE_0E8CE4:        LDA DATA_0E8CC3,y               ;
CODE_0E8CE7:        CMP #$00                  ;
CODE_0E8CE9:        BEQ CODE_0E8CF4           ;
CODE_0E8CEB:        LDX #$00                  ;
CODE_0E8CED:        LDY $05                   ;
CODE_0E8CEF:        JSL CODE_0DAAAC           ;
CODE_0E8CF3:        CLC                       ;
CODE_0E8CF4:        LDY $06                   ;
CODE_0E8CF6:        LDA DATA_0E8CC7,y               ;
CODE_0E8CF9:        STA $06A1,x               ;
CODE_0E8CFC:        LDA DATA_0E8CCB,y               ;
CODE_0E8CFF:        STA $06A2,x               ;
CODE_0E8D02:        PLB                       ;
CODE_0E8D03:        RTL                       ;

CODE_0E8D04:        JSR CODE_0E8D11           ;
CODE_0E8D07:        LDX #$02                  ;
CODE_0E8D09:        LDA #$78                  ;
CODE_0E8D0B:        JSL CODE_0DAAAC           ;
CODE_0E8D0F:        PLB                       ;
CODE_0E8D10:        RTL                       ;

CODE_0E8D11:        PHX                       ;
CODE_0E8D12:        REP #$30                  ;
CODE_0E8D14:        TXA                       ;
CODE_0E8D15:        ASL A                     ;
CODE_0E8D16:        TAX                       ;
CODE_0E8D17:        SEP #$20                  ;
CODE_0E8D19:        LDY $1305,x               ;
CODE_0E8D1C:        INY                       ;
CODE_0E8D1D:        LDA [$F3],y               ;
CODE_0E8D1F:        LSR A                     ;
CODE_0E8D20:        LSR A                     ;
CODE_0E8D21:        LSR A                     ;
CODE_0E8D22:        LSR A                     ;
CODE_0E8D23:        STA $07                   ;
CODE_0E8D25:        LDA [$F3],y               ;
CODE_0E8D27:        AND #$0F                  ;
CODE_0E8D29:        SEP #$10                  ;
CODE_0E8D2B:        TAY                       ;
CODE_0E8D2C:        PLX                       ;
CODE_0E8D2D:        RTS                       ;

CODE_0E8D2E:        PHB                       ;
CODE_0E8D2F:        PHK                       ;
CODE_0E8D30:        PLB                       ;
CODE_0E8D31:        PHX                       ;
CODE_0E8D32:        REP #$30                  ;
CODE_0E8D34:        LDX #$0000                ;
CODE_0E8D37:        LDY $1A00                 ;
CODE_0E8D3A:        LDA $0753                 ;
CODE_0E8D3D:        AND #$00FF                ;
CODE_0E8D40:        BEQ CODE_0E8D51           ;
CODE_0E8D42:        LDA DATA_0E9B11,x               ;
CODE_0E8D45:        STA $1A02,y               ;
CODE_0E8D48:        INC A                     ;
CODE_0E8D49:        BEQ CODE_0E8D60           ;
CODE_0E8D4B:        INX                       ;
CODE_0E8D4C:        INX                       ;
CODE_0E8D4D:        INY                       ;
CODE_0E8D4E:        INY                       ;
CODE_0E8D4F:        BRA CODE_0E8D42           ;

CODE_0E8D51:        LDA DATA_0E9A9F,x               ;
CODE_0E8D54:        STA $1A02,y               ;
CODE_0E8D57:        INC A                     ;
CODE_0E8D58:        BEQ CODE_0E8D60           ;
CODE_0E8D5A:        INX                       ;
CODE_0E8D5B:        INX                       ;
CODE_0E8D5C:        INY                       ;
CODE_0E8D5D:        INY                       ;
CODE_0E8D5E:        BRA CODE_0E8D51           ;

CODE_0E8D60:        LDX #$0000                ;
CODE_0E8D63:        LDA DATA_0E9BA3,x               ;
CODE_0E8D66:        STA $1A02,y               ;
CODE_0E8D69:        INC A                     ;
CODE_0E8D6A:        BEQ CODE_0E8D72           ;
CODE_0E8D6C:        INX                       ;
CODE_0E8D6D:        INX                       ;
CODE_0E8D6E:        INY                       ;
CODE_0E8D6F:        INY                       ;
CODE_0E8D70:        BRA CODE_0E8D63           ;

CODE_0E8D72:        STY $1A00                 ;
CODE_0E8D75:        LDA #$B487                ;
CODE_0E8D78:        STA $02                   ;
CODE_0E8D7A:        LDX #$00A0                ;
CODE_0E8D7D:        LDY #$0000                ;
CODE_0E8D80:        JSR CODE_0E930F           ;
CODE_0E8D83:        JSR CODE_0E930F           ;
CODE_0E8D86:        JSR CODE_0E930F           ;
CODE_0E8D89:        STZ $0EFD                 ;
CODE_0E8D8C:        STZ $0EEE                 ;
CODE_0E8D8F:        SEP #$30                  ;
CODE_0E8D91:        LDA #$06                  ;
CODE_0E8D93:        STA $0773                 ;
CODE_0E8D96:        STZ $0ED1                 ;
CODE_0E8D99:        STZ $210F                 ;
CODE_0E8D9C:        STZ $210F                 ;
CODE_0E8D9F:        STZ $2111                 ;
CODE_0E8DA2:        STZ $2111                 ;
CODE_0E8DA5:        LDA #$17                  ;
CODE_0E8DA7:        STA $120B                 ;
CODE_0E8DAA:        LDA #$0A                  ;
CODE_0E8DAC:        STA $0099                 ;
CODE_0E8DAF:        LDA #$01                  ;
CODE_0E8DB1:        STA $1200                 ;
CODE_0E8DB4:        JSL CODE_0FF027           ;
CODE_0E8DB8:        LDA #$FF                  ;
CODE_0E8DBA:        STA $0E66                 ;
CODE_0E8DBD:        STZ $0F26                 ;
CODE_0E8DC0:        STZ $0ED2                 ;
CODE_0E8DC3:        STZ $0ED3                 ;
CODE_0E8DC6:        STZ $2110                 ;
CODE_0E8DC9:        STZ $2110                 ;
CODE_0E8DCC:        PLX                       ;
CODE_0E8DCD:        PLB                       ;
CODE_0E8DCE:        RTL                       ;

DATA_0E8DCF:        db $EA,$04,$96,$05,$1C,$0D,$F2,$06 ;
                    db $EA,$04,$EA,$04,$9E,$0B,$F2,$06 ;
                    db $82,$01,$00,$00,$1C,$0D,$F2,$06 ;
                    db $EA,$04,$EA,$04,$1C,$0D,$F2,$06 ;
                    db $82,$01,$96,$05,$1C,$0D,$F2,$06 ;
                    db $76,$00,$00,$00,$1A,$0B,$F2,$06 ;
                    db $EA,$04,$EA,$04,$9E,$0B,$F2,$06 ;
                    db $76,$00,$82,$01,$90,$0A,$D8,$07 ;
                    db $00,$00,$00,$00,$C6,$02,$00,$00 ;
                    db $EA,$04,$96,$05,$1A,$0B,$F2,$06 ;
                    db $EA,$04,$00,$00,$1C,$0D,$F2,$06 ;
                    db $EA,$04,$EA,$04,$9E,$0B,$F2,$06 ;
                    db $76,$00,$76,$00,$48,$03,$D8,$07 ;

DATA_0E8E37:        db $00,$00,$00,$00,$00,$00,$00,$04 ;
                    db $00,$00,$00,$00,$00,$04,$00,$01 ;
                    db $02,$02,$02,$00,$01,$00,$00,$00 ;
                    db $01,$00,$01,$00,$00,$02,$02,$02 ;
                    db $00,$00,$01,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$01,$02 ;
                    db $02,$02,$00,$00,$00,$00,$00,$03 ;
                    db $03,$00,$03,$00,$03,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;

DATA_0E8E7F:        db $02,$03,$0E,$06,$2B,$2B,$2B,$06 ;
                    db $05,$08,$0E,$06,$02,$02,$0E,$06 ;
                    db $05,$03,$0E,$06,$05,$08,$10,$06 ;
                    db $2B,$2B,$2B,$06,$05,$05,$0D,$04 ;
                    db $08,$08,$06,$08,$02,$03,$10,$06 ;
                    db $02,$08,$0E,$06,$2B,$2B,$2B,$06 ;
                    db $05,$05,$0C,$04 ;

DATA_0E8EB3:        db $01,$02,$02,$06,$03,$11,$11,$16 ;
                    db $03,$03,$08,$00,$00,$06,$03,$01 ;
                    db $01,$06,$03,$03,$08,$02,$02,$06 ;
                    db $03,$07,$00,$00,$05,$03,$11,$11 ;
                    db $16,$03,$03,$07,$07,$07,$03,$03 ;
                    db $00,$00,$03,$00,$00,$01,$02,$02 ;
                    db $05,$03,$08,$00,$00,$06,$03,$11 ;
                    db $11,$16,$03,$03,$07,$07,$07,$03 ;
                    db $03 ;

DATA_0E8EF4:        db $01,$02,$02,$03,$04,$05,$06,$07 ;
                    db $08,$08,$09,$0A,$0A,$0B,$0C,$0D ;
                    db $0E,$0F,$10,$10,$11,$12,$12,$13 ;
                    db $14,$15,$16,$16,$17,$18,$19,$1A ;
                    db $1B,$1C,$1C,$1D,$1E,$1F,$20,$20 ;
                    db $21,$22,$23,$24,$24,$25,$26,$26 ;
                    db $27,$28,$29,$2A,$2A,$2B,$2C,$2D ;
                    db $2E,$2F,$30,$30,$31,$32,$33,$34 ;
                    db $34 ;

CODE_0E8F35:        PHB                       ;
CODE_0E8F36:        PHK                       ;
CODE_0E8F37:        PLB                       ;
CODE_0E8F38:        LDY $00DB                 ;
CODE_0E8F3B:        LDA DATA_0E8E37,y               ;
CODE_0E8F3E:        STA $0F26                 ;
CODE_0E8F41:        PLB                       ;
CODE_0E8F42:        RTL                       ;

CODE_0E8F43:        PHB                       ;
CODE_0E8F44:        PHK                       ;
CODE_0E8F45:        PLB                       ;
CODE_0E8F46:        PHX                       ;
CODE_0E8F47:        PHY                       ;
CODE_0E8F48:        LDA $0E1A                 ;
CODE_0E8F4B:        BEQ CODE_0E8F50           ;
CODE_0E8F4D:        STZ $0E1A                 ;
CODE_0E8F50:        JSL CODE_0E8F35           ;
CODE_0E8F54:        LDA #$80                  ;
CODE_0E8F56:        STA $1602                 ;
CODE_0E8F59:        LDY $0E21                 ;
CODE_0E8F5C:        DEY                       ;
CODE_0E8F5D:        LDA DATA_0E8E7F,y               ;
CODE_0E8F60:        AND #$1F                  ;
CODE_0E8F62:        STA $99                   ;
CODE_0E8F64:        LDA #$01                  ;
CODE_0E8F66:        STA $0774                 ;
CODE_0E8F69:        STA $0ED6                 ;
CODE_0E8F6C:        JSL CODE_0FF027           ;
CODE_0E8F70:        STZ $0EF0                 ;
CODE_0E8F73:        STZ $0ECA                 ;
CODE_0E8F76:        STZ $130F                 ;
CODE_0E8F79:        STZ $0EDF                 ;
CODE_0E8F7C:        STZ $0ED1                 ;
CODE_0E8F7F:        STZ $0EC9                 ;
CODE_0E8F82:        STZ $0EDB                 ;
CODE_0E8F85:        STZ $0B9A                 ;
CODE_0E8F88:        STZ $1680                 ;
CODE_0E8F8B:        STZ $0EDC                 ;
CODE_0E8F8E:        JSL CODE_0480EF           ;
CODE_0E8F92:        REP #$30                  ;
CODE_0E8F94:        STZ $0ECB                 ;
CODE_0E8F97:        STZ $1310                 ;
CODE_0E8F9A:        STZ $1312                 ;
CODE_0E8F9D:        LDY $1A00                 ;
CODE_0E8FA0:        LDA #$C709                ;
CODE_0E8FA3:        STA $1A02,y               ;
CODE_0E8FA6:        LDA #$12C0                ;
CODE_0E8FA9:        STA $1A04,y               ;
CODE_0E8FAC:        LDA #$30A2                ;
CODE_0E8FAF:        STA $1A06,y               ;
CODE_0E8FB2:        LDA #$D809                ;
CODE_0E8FB5:        STA $1A08,y               ;
CODE_0E8FB8:        LDA #$12C0                ;
CODE_0E8FBB:        STA $1A0A,y               ;
CODE_0E8FBE:        LDA #$70A2                ;
CODE_0E8FC1:        STA $1A0C,y               ;
CODE_0E8FC4:        LDA #$A809                ;
CODE_0E8FC7:        STA $1A0E,y               ;
CODE_0E8FCA:        LDA #$1E40                ;
CODE_0E8FCD:        STA $1A10,y               ;
CODE_0E8FD0:        LDA #$3078                ;
CODE_0E8FD3:        STA $1A12,y               ;
CODE_0E8FD6:        LDA #$080B                ;
CODE_0E8FD9:        STA $1A14,y               ;
CODE_0E8FDC:        LDA #$1E40                ;
CODE_0E8FDF:        STA $1A16,y               ;
CODE_0E8FE2:        LDA #$B078                ;
CODE_0E8FE5:        STA $1A18,y               ;
CODE_0E8FE8:        TYA                       ;
CODE_0E8FE9:        CLC                       ;
CODE_0E8FEA:        ADC #$0018                ;
CODE_0E8FED:        TAY                       ;
CODE_0E8FEE:        LDX #$0000                ;
CODE_0E8FF1:        LDA DATA_0E9C0F,x               ;
CODE_0E8FF4:        STA $1A02,y               ;
CODE_0E8FF7:        INX                       ;
CODE_0E8FF8:        INX                       ;
CODE_0E8FF9:        INY                       ;
CODE_0E8FFA:        INY                       ;
CODE_0E8FFB:        INC A                     ;
CODE_0E8FFC:        BNE CODE_0E8FF1           ;
CODE_0E8FFE:        DEY                       ;
CODE_0E8FFF:        DEY                       ;
CODE_0E9000:        LDA $0E21                 ;
CODE_0E9003:        DEC A                     ;
CODE_0E9004:        AND #$00FF                ;
CODE_0E9007:        ASL A                     ;
CODE_0E9008:        TAX                       ;
CODE_0E9009:        LDA DATA_0E8DCF,x               ;
CODE_0E900C:        TAX                       ;
CODE_0E900D:        LDA DATA_0E9C4D,x               ;
CODE_0E9010:        STA $1A02,y               ;
CODE_0E9013:        INX                       ;
CODE_0E9014:        INX                       ;
CODE_0E9015:        INY                       ;
CODE_0E9016:        INY                       ;
CODE_0E9017:        INC A                     ;
CODE_0E9018:        BNE CODE_0E900D           ;
CODE_0E901A:        LDA $0E22                 ;
CODE_0E901D:        AND #$00FF                ;
CODE_0E9020:        CMP #$0011                ;
CODE_0E9023:        BNE CODE_0E9037           ;
CODE_0E9025:        DEY                       ;
CODE_0E9026:        DEY                       ;
CODE_0E9027:        LDX #$0000                ;
CODE_0E902A:        LDA DATA_0EABD3,x               ;
CODE_0E902D:        STA $1A02,y               ;
CODE_0E9030:        INX                       ;
CODE_0E9031:        INX                       ;
CODE_0E9032:        INY                       ;
CODE_0E9033:        INY                       ;
CODE_0E9034:        INC A                     ;
CODE_0E9035:        BNE CODE_0E902A           ;
CODE_0E9037:        LDA $0E22                 ;
CODE_0E903A:        AND #$00F0                ;
CODE_0E903D:        BEQ CODE_0E905C           ;
CODE_0E903F:        LDA $0E22                 ;
CODE_0E9042:        AND #$00FF                ;
CODE_0E9045:        CMP #$0016                ;
CODE_0E9048:        BEQ CODE_0E905C           ;
CODE_0E904A:        DEY                       ;
CODE_0E904B:        DEY                       ;
CODE_0E904C:        LDX #$0000                ;
CODE_0E904F:        LDA DATA_0EABFF,x               ;
CODE_0E9052:        STA $1A02,y               ;
CODE_0E9055:        INX                       ;
CODE_0E9056:        INX                       ;
CODE_0E9057:        INY                       ;
CODE_0E9058:        INY                       ;
CODE_0E9059:        INC A                     ;
CODE_0E905A:        BNE CODE_0E904F           ;
CODE_0E905C:        STY $1A00                 ;
CODE_0E905F:        SEP #$30                  ;
CODE_0E9061:        JSR CODE_0E91C1           ;
CODE_0E9064:        DEC $073C                 ;
CODE_0E9067:        LDA #$01                  ;
CODE_0E9069:        STA $1200                 ;
CODE_0E906C:        STZ $1000                 ;
CODE_0E906F:        STZ $1001                 ;
CODE_0E9072:        LDA $0756                 ;
CODE_0E9075:        STA $EB                   ;
CODE_0E9077:        LDA #$01                  ;
CODE_0E9079:        STA $0756                 ;
CODE_0E907C:        LDA $0E22                 ;
CODE_0E907F:        AND #$F0                  ;
CODE_0E9081:        BEQ CODE_0E9085           ;
CODE_0E9083:        LDA #$04                  ;
CODE_0E9085:        STA $0744                 ;
CODE_0E9088:        LDA $0E22                 ;
CODE_0E908B:        CMP #$02                  ;
CODE_0E908D:        BNE CODE_0E9094           ;
CODE_0E908F:        LDA #$03                  ;
CODE_0E9091:        STA $0744                 ;
CODE_0E9094:        LDA $DB                   ;
CODE_0E9096:        CMP #$08                  ;
CODE_0E9098:        BNE CODE_0E909F           ;
CODE_0E909A:        LDA #$01                  ;
CODE_0E909C:        STA $0744                 ;
CODE_0E909F:        JSL CODE_0E98C3           ;
CODE_0E90A3:        DEC $1200                 ;
CODE_0E90A6:        LDA $EB                   ;
CODE_0E90A8:        STA $0756                 ;
CODE_0E90AB:        STZ $0E22                 ;
CODE_0E90AE:        LDA #$17                  ;
CODE_0E90B0:        STA $120B                 ;
CODE_0E90B3:        LDA #$06                  ;
CODE_0E90B5:        STA $0773                 ;
CODE_0E90B8:        STZ $0EDE                 ;
CODE_0E90BB:        STZ $0ED2                 ;
CODE_0E90BE:        STZ $0ED3                 ;
CODE_0E90C1:        STZ $2110                 ;
CODE_0E90C4:        STZ $2110                 ;
CODE_0E90C7:        PLY                       ;
CODE_0E90C8:        PLX                       ;
CODE_0E90C9:        PLB                       ;
CODE_0E90CA:        RTL                       ;

CODE_0E90CB:        LDA $9B                   ;
CODE_0E90CD:        BEQ CODE_0E90EF           ;
CODE_0E90CF:        STZ $9B                   ;
CODE_0E90D1:        LDA $9C                   ;
CODE_0E90D3:        STA $071C                 ;
CODE_0E90D6:        STA $073F                 ;
CODE_0E90D9:        LDA $9D                   ;
CODE_0E90DB:        STA $071A                 ;
CODE_0E90DE:        REP #$20                  ;
CODE_0E90E0:        LDA $9C                   ;
CODE_0E90E2:        LSR A                     ;
CODE_0E90E3:        STA $0EFD                 ;
CODE_0E90E6:        LSR A                     ;
CODE_0E90E7:        STA $0EEE                 ;
CODE_0E90EA:        STA $0ED7                 ;
CODE_0E90ED:        SEP #$20                  ;
CODE_0E90EF:        LDA $0EFE                 ;
CODE_0E90F2:        AND #$01                  ;
CODE_0E90F4:        STA $0EF6                 ;
CODE_0E90F7:        STZ $0EFC                 ;
CODE_0E90FA:        STZ $0EF8                 ;
CODE_0E90FD:        JSL CODE_0F8000           ;
CODE_0E9101:        JSR CODE_0E99E0           ;
CODE_0E9104:        JSR CODE_0E9A06           ;
CODE_0E9107:        JSR CODE_0E9A06           ;
CODE_0E910A:        JSR CODE_0E9A06           ;
CODE_0E910D:        JSR CODE_0E9A06           ;
CODE_0E9110:        JSR CODE_0E9A06           ;
CODE_0E9113:        JSR CODE_0E9A06           ;
CODE_0E9116:        LDA $BA                   ;
CODE_0E9118:        CMP #$03                  ;
CODE_0E911A:        BEQ CODE_0E913F           ;
CODE_0E911C:        JSR CODE_0E9A06           ;
CODE_0E911F:        JSR CODE_0E9A06           ;
CODE_0E9122:        JSR CODE_0E9A06           ;
CODE_0E9125:        JSR CODE_0E9A06           ;
CODE_0E9128:        LDA $0ED1                 ;
CODE_0E912B:        BEQ CODE_0E913F           ;
CODE_0E912D:        JSR CODE_0E9A06           ;
CODE_0E9130:        JSR CODE_0E9A06           ;
CODE_0E9133:        JSR CODE_0E9A06           ;
CODE_0E9136:        JSR CODE_0E9A06           ;
CODE_0E9139:        JSR CODE_0E9A06           ;
CODE_0E913C:        JSR CODE_0E9A06           ;
CODE_0E913F:        RTS                       ;

DATA_0E9140:        db $F8,$00,$20,$F8,$F0,$20,$00

CODE_0E9147:        PHB                       ;
CODE_0E9148:        PHK                       ;
CODE_0E9149:        PLB                       ;
CODE_0E914A:        JSR CODE_0E90CB           ;
CODE_0E914D:        STZ $0ED2                 ;
CODE_0E9150:        STZ $0ED3                 ;
CODE_0E9153:        LDA $5C                   ;
CODE_0E9155:        BEQ CODE_0E9169           ;
CODE_0E9157:        CMP #$01                  ;
CODE_0E9159:        BNE CODE_0E9160           ;
CODE_0E915B:        LDA #$F8                  ;
CODE_0E915D:        STA $0ED2                 ;
CODE_0E9160:        LDA #$06                  ;
CODE_0E9162:        STA $1209                 ;
CODE_0E9165:        LDX #$11                  ;
CODE_0E9167:        BRA CODE_0E9195           ;

CODE_0E9169:        REP #$20                  ;
CODE_0E916B:        LDA #$0F42                ;
CODE_0E916E:        STA $4320                 ;
CODE_0E9171:        LDA.w #DATA_0E9140        ;
CODE_0E9174:        STA $4322                 ;
CODE_0E9177:        LDX.b #DATA_0E9140>>16    ;
CODE_0E9179:        STX $4324                 ;
CODE_0E917C:        LDY #$7F                  ;
CODE_0E917E:        STY $4327                 ;
CODE_0E9181:        SEP #$20                  ;
CODE_0E9183:        STZ $0EEC                 ;
CODE_0E9186:        STZ $0EF3                 ;
CODE_0E9189:        LDA $1203                 ;
CODE_0E918C:        ORA #$04                  ;
CODE_0E918E:        STA $1203                 ;
CODE_0E9191:        LDA #$00                  ;
CODE_0E9193:        LDX #$17                  ;
CODE_0E9195:        STX $120B                 ;
CODE_0E9198:        STA $120C                 ;
CODE_0E919B:        STZ $0ED9                 ;
CODE_0E919E:        LDA #$1F                  ;
CODE_0E91A0:        STA $0EF2                 ;
CODE_0E91A3:        LDA $0ED1                 ;
CODE_0E91A6:        BEQ CODE_0E91BC           ;
CODE_0E91A8:        LDA $0743                 ;
CODE_0E91AB:        BEQ CODE_0E91B2           ;
CODE_0E91AD:        STZ $0ED1                 ;
CODE_0E91B0:        BRA CODE_0E91BC           ;

CODE_0E91B2:        LDA #$AF                  ;
CODE_0E91B4:        STA $0EF2                 ;
CODE_0E91B7:        LDA #$01                  ;
CODE_0E91B9:        STA $0EDE                 ;
CODE_0E91BC:        JSR CODE_0E91C1           ;
CODE_0E91BF:        PLB                       ;
CODE_0E91C0:        RTL                       ;

CODE_0E91C1:        LDA $0E65                 ;
CODE_0E91C4:        BEQ CODE_0E91CD           ;
CODE_0E91C6:        STA $DB                   ;
CODE_0E91C8:        STZ $0E65                 ;
CODE_0E91CB:        BRA CODE_0E91F8           ;

CODE_0E91CD:        LDA $DB                   ;
CODE_0E91CF:        CMP #$17                  ;
CODE_0E91D1:        BEQ CODE_0E91D9           ;
CODE_0E91D3:        CMP #$26                  ;
CODE_0E91D5:        BEQ CODE_0E91D9           ;
CODE_0E91D7:        BRA CODE_0E91F8           ;

CODE_0E91D9:        STA $0E65                 ;
CODE_0E91DC:        LDA $075F                 ;
CODE_0E91DF:        BEQ CODE_0E91EF           ;
CODE_0E91E1:        CMP #$04                  ;
CODE_0E91E3:        BEQ CODE_0E91EF           ;
CODE_0E91E5:        CMP #$09                  ;
CODE_0E91E7:        BEQ CODE_0E91EF           ;
CODE_0E91E9:        LDA #$3E                  ;
CODE_0E91EB:        STA $DB                   ;
CODE_0E91ED:        BRA CODE_0E91F8           ;

CODE_0E91EF:        LDA #$37                  ;
CODE_0E91F1:        STA $DB                   ;
CODE_0E91F3:        LDA #$03                  ;
CODE_0E91F5:        STA $0F26                 ;
CODE_0E91F8:        REP #$30                  ;
CODE_0E91FA:        LDA $DB                   ;
CODE_0E91FC:        AND #$00FF                ;
CODE_0E91FF:        ASL A                     ;
CODE_0E9200:        ASL A                     ;
CODE_0E9201:        ASL A                     ;
CODE_0E9202:        ASL A                     ;
CODE_0E9203:        TAY                       ;
CODE_0E9204:        STY $06                   ;
CODE_0E9206:        STZ $02                   ;
CODE_0E9208:        LDY $06                   ;
CODE_0E920A:        LDA DATA_0E93B8,y               ;
CODE_0E920D:        AND #$00FF                ;
CODE_0E9210:        INY                       ;
CODE_0E9211:        STY $06                   ;
CODE_0E9213:        ASL A                     ;
CODE_0E9214:        TAX                       ;
CODE_0E9215:        LDA DATA_0EACA3,x               ;
CODE_0E9218:        TAY                       ;
CODE_0E9219:        LDX $02                   ;
CODE_0E921B:        LDA #$0007                ;
CODE_0E921E:        STA $04                   ;
CODE_0E9220:        LDA DATA_0EAD27,y               ;
CODE_0E9223:        STA $1000,x               ;
CODE_0E9226:        LDA DATA_0EAD37,y               ;
CODE_0E9229:        STA $1010,x               ;
CODE_0E922C:        INX                       ;
CODE_0E922D:        INX                       ;
CODE_0E922E:        INY                       ;
CODE_0E922F:        INY                       ;
CODE_0E9230:        DEC $04                   ;
CODE_0E9232:        BPL CODE_0E9220           ;
CODE_0E9234:        TXA                       ;
CODE_0E9235:        CLC                       ;
CODE_0E9236:        ADC #$0010                ;
CODE_0E9239:        STA $02                   ;
CODE_0E923B:        CMP #$01E0                ;
CODE_0E923E:        BNE CODE_0E9208           ;
CODE_0E9240:        LDA $02F8                 ;
CODE_0E9243:        BEQ CODE_0E9284           ;
CODE_0E9245:        LDA $0753                 ;
CODE_0E9248:        AND #$00FF                ;
CODE_0E924B:        BEQ CODE_0E9284           ;
CODE_0E924D:        LDY #$0000                ;
CODE_0E9250:        LDX #$00E0                ;
CODE_0E9253:        LDA DATA_0E9264,y               ;
CODE_0E9256:        STA $1000,x               ;
CODE_0E9259:        INX                       ;
CODE_0E925A:        INX                       ;
CODE_0E925B:        INY                       ;
CODE_0E925C:        INY                       ;
CODE_0E925D:        CPY #$0020                ;
CODE_0E9260:        BNE CODE_0E9253           ;
CODE_0E9262:        BRA CODE_0E9284           ;

DATA_0E9264:        db $2F,$77,$FF,$7F,$A5,$14,$F0,$57
                    db $40,$03,$00,$02,$BF,$46,$5D,$36
                    db $BB,$25,$EF,$04,$73,$0D,$7F,$4F
                    db $0F,$7F,$06,$4E,$1E,$00,$12,$00

CODE_0E9284:        LDA $42                   ;
CODE_0E9286:        LSR A                     ;
CODE_0E9287:        LSR A                     ;
CODE_0E9288:        STA $0EEE                 ;
CODE_0E928B:        AND #$FF00                ;
CODE_0E928E:        XBA                       ;
CODE_0E928F:        STA $F3                   ;
CODE_0E9291:        LDA $075F                 ;
CODE_0E9294:        AND #$00FF                ;
CODE_0E9297:        ASL A                     ;
CODE_0E9298:        CMP #$000C                ;
CODE_0E929B:        BCC CODE_0E92A0           ;
CODE_0E929D:        LDA #$0000                ;
CODE_0E92A0:        CLC                       ;
CODE_0E92A1:        ADC $F3                   ;
CODE_0E92A3:        STA $F3                   ;
CODE_0E92A5:        STZ $0ED9                 ;
CODE_0E92A8:        LDA $F3                   ;
CODE_0E92AA:        BEQ CODE_0E92BA           ;
CODE_0E92AC:        LDA $0ED9                 ;
CODE_0E92AF:        CLC                       ;
CODE_0E92B0:        ADC #$00E0                ;
CODE_0E92B3:        STA $0ED9                 ;
CODE_0E92B6:        DEC $F3                   ;
CODE_0E92B8:        BRA CODE_0E92A8           ;

CODE_0E92BA:        LDA $0EEE                 ;
CODE_0E92BD:        AND #$00F0                ;
CODE_0E92C0:        LSR A                     ;
CODE_0E92C1:        LSR A                     ;
CODE_0E92C2:        LSR A                     ;
CODE_0E92C3:        LSR A                     ;
CODE_0E92C4:        CLC                       ;
CODE_0E92C5:        ADC $0ED9                 ;
CODE_0E92C8:        STA $0ED9                 ;
CODE_0E92CB:        CMP #$0A80                ;
CODE_0E92CE:        BCC CODE_0E92D3           ;
CODE_0E92D0:        STZ $0ED9                 ;
CODE_0E92D3:        SEP #$30                  ;
CODE_0E92D5:        JSR CODE_0E9327           ;
CODE_0E92D8:        LDA $0EDC                 ;
CODE_0E92DB:        BEQ CODE_0E9306           ;
CODE_0E92DD:        LDA $0EEF                 ;
CODE_0E92E0:        STA $F3                   ;
CODE_0E92E2:        LDA $0EEE                 ;
CODE_0E92E5:        STA $F4                   ;
CODE_0E92E7:        JSR CODE_0E8714           ;
CODE_0E92EA:        LDA #$13                  ;
CODE_0E92EC:        STA $F5                   ;
CODE_0E92EE:        JSL CODE_0E85D8           ;
CODE_0E92F2:        LDA $F4                   ;
CODE_0E92F4:        CMP #$A0                  ;
CODE_0E92F6:        BCC CODE_0E9302           ;
CODE_0E92F8:        LDA $F3                   ;
CODE_0E92FA:        EOR #$04                  ;
CODE_0E92FC:        STA $F3                   ;
CODE_0E92FE:        LDA #$80                  ;
CODE_0E9300:        STA $F4                   ;
CODE_0E9302:        DEC $F5                   ;
CODE_0E9304:        BNE CODE_0E92EE           ;
CODE_0E9306:        LDA #$01                  ;
CODE_0E9308:        STA $1200                 ;
CODE_0E930B:        INC $073C                 ;
CODE_0E930E:        RTS                       ;

CODE_0E930F:        LDA #$000E                ;
CODE_0E9312:        STA $04                   ;
CODE_0E9314:        LDA #$0010                ;
CODE_0E9317:        STA $00                   ;
CODE_0E9319:        LDA [$02],y               ;
CODE_0E931B:        STA $1000,x               ;
CODE_0E931E:        INY                       ;
CODE_0E931F:        INY                       ;
CODE_0E9320:        INX                       ;
CODE_0E9321:        INX                       ;
CODE_0E9322:        DEC $00                   ;
CODE_0E9324:        BNE CODE_0E9319           ;
CODE_0E9326:        RTS                       ;

CODE_0E9327:        PHB                       ;
CODE_0E9328:        LDA #$7F                  ;
CODE_0E932A:        PHA                       ;
CODE_0E932B:        PLB                       ;
CODE_0E932C:        LDX #$00                  ;
CODE_0E932E:        STZ $3000,x               ;
CODE_0E9331:        STZ $3100,x               ;
CODE_0E9334:        STZ $3200,x               ;
CODE_0E9337:        STZ $3300,x               ;
CODE_0E933A:        STZ $3400,x               ;
CODE_0E933D:        STZ $3500,x               ;
CODE_0E9340:        STZ $3600,x               ;
CODE_0E9343:        STZ $3700,x               ;
CODE_0E9346:        STZ $3800,x               ;
CODE_0E9349:        STZ $3900,x               ;
CODE_0E934C:        STZ $3A00,x               ;
CODE_0E934F:        DEX                       ;
CODE_0E9350:        BNE CODE_0E932E           ;
CODE_0E9352:        PLB                       ;
CODE_0E9353:        PHB                       ;
CODE_0E9354:        PHK                       ;
CODE_0E9355:        PLB                       ;
CODE_0E9356:        LDA #$7F                  ;
CODE_0E9358:        STA $F5                   ;
CODE_0E935A:        STZ $F6                   ;
CODE_0E935C:        REP #$30                  ;
CODE_0E935E:        LDA #$3000                ;
CODE_0E9361:        STA $F3                   ;
CODE_0E9363:        LDY #$0000                ;
CODE_0E9366:        STZ $F8                   ;
CODE_0E9368:        LDX $F8                   ;
CODE_0E936A:        LDA DATA_0EB4E7,x               ;
CODE_0E936D:        CMP #$FFFF                ;
CODE_0E9370:        BEQ CODE_0E93B4           ;
CODE_0E9372:        BPL CODE_0E937E           ;
CODE_0E9374:        PHA                       ;
CODE_0E9375:        LDA $F3                   ;
CODE_0E9377:        CLC                       ;
CODE_0E9378:        ADC #$00E0                ;
CODE_0E937B:        STA $F3                   ;
CODE_0E937D:        PLA                       ;
CODE_0E937E:        PHA                       ;
CODE_0E937F:        AND #$00FF                ;
CODE_0E9382:        TAY                       ;
CODE_0E9383:        PLA                       ;
CODE_0E9384:        ASL A                     ;
CODE_0E9385:        ASL A                     ;
CODE_0E9386:        LDA #$0000                ;
CODE_0E9389:        ROL A                     ;
CODE_0E938A:        STA $F6                   ;
CODE_0E938C:        SEP #$20                  ;
CODE_0E938E:        INX                       ;
CODE_0E938F:        LDA DATA_0EB4E7,x               ;
CODE_0E9392:        AND #$3F                  ;
CODE_0E9394:        STA $F7                   ;
CODE_0E9396:        LDA $F7                   ;
CODE_0E9398:        STA [$F3],y               ;
CODE_0E939A:        LDA $F6                   ;
CODE_0E939C:        BEQ CODE_0E93AC           ;
CODE_0E939E:        TYA                       ;
CODE_0E939F:        AND #$F0                  ;
CODE_0E93A1:        CMP #$D0                  ;
CODE_0E93A3:        BEQ CODE_0E93AC           ;
CODE_0E93A5:        TYA                       ;
CODE_0E93A6:        CLC                       ;
CODE_0E93A7:        ADC #$10                  ;
CODE_0E93A9:        TAY                       ;
CODE_0E93AA:        BRA CODE_0E9396           ;

CODE_0E93AC:        REP #$20                  ;
CODE_0E93AE:        INC $F8                   ;
CODE_0E93B0:        INC $F8                   ;
CODE_0E93B2:        BRA CODE_0E9368           ;

CODE_0E93B4:        SEP #$30                  ;
CODE_0E93B6:        PLB                       ;
CODE_0E93B7:        RTS                       ;

DATA_0E93B8:        db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$2F,$1E,$30
                    db $08,$20,$0A,$3F,$0C,$21,$0E,$0F
                    db $00,$01,$02,$03,$04,$19,$1E,$1A
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$19,$06,$1A
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$1B,$3E,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$1D,$1E,$1F
                    db $08,$20,$0A,$0B,$0C,$21,$0E,$0F
                    db $00,$01,$1B,$1C,$04,$2F,$1E,$30
                    db $08,$20,$0A,$3F,$0C,$21,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$38
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$35,$41,$04,$3D,$06,$2D
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$38
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$38
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$35,$41,$04,$3D,$06,$2D
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$38
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$2B
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$3A,$06,$3B
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$2B
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$19,$06,$1A
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$38
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$29,$3C
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$26,$03,$28,$05,$29,$2A
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$19,$06,$1A
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$3A,$29,$3B
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$38
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$35,$41,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$36,$06,$37
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$2B
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$2B
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$06,$2E
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$05,$31,$07
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$19,$06,$1A
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$13,$14,$04,$15,$06,$16
                    db $08,$17,$0A,$0B,$0C,$18,$0E,$0F
                    db $00,$01,$13,$14,$04,$15,$1E,$16
                    db $08,$17,$0A,$0B,$0C,$18,$0E,$0F
                    db $00,$01,$13,$14,$04,$19,$06,$1A
                    db $08,$17,$0A,$0B,$0C,$18,$0E,$0F
                    db $00,$01,$13,$14,$04,$15,$06,$16
                    db $08,$17,$0A,$0B,$0C,$18,$0E,$0F
                    db $00,$01,$13,$14,$04,$19,$06,$1A
                    db $08,$17,$0A,$0B,$0C,$18,$0E,$0F
                    db $00,$01,$13,$14,$04,$15,$06,$16
                    db $08,$17,$0A,$0B,$0C,$18,$0E,$0F
                    db $00,$01,$13,$14,$04,$19,$06,$1A
                    db $08,$17,$0A,$0B,$0C,$18,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$1B,$03,$04,$39,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F
                    db $00,$01,$02,$03,$04,$10,$11,$12
                    db $08,$09,$0A,$0B,$0C,$0D,$0E,$0F

DATA_0E9828:        db $F8,$7F,$F8,$7F,$00,$00,$00,$00
                    db $08,$39,$F8,$7F,$08,$39,$08,$39

DATA_0E9838:        db $00,$00,$FF,$7F,$63,$0C,$55,$01
                    db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A

DATA_0E9848:        db $00,$00,$2F,$15,$14,$00,$19,$0C
                    db $9F,$1C,$2E,$76,$68,$5D,$E6,$44
                    db $00,$00,$FF,$7F,$63,$0C,$55,$01
                    db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$2F,$15,$60,$1E,$04,$33
                    db $88,$43,$55,$76,$90,$71,$CA,$58
                    db $00,$00,$FF,$7F,$63,$0C,$55,$01
                    db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$2F,$15,$D9,$3E,$5D,$4F
                    db $9F,$63,$9F,$0D,$1D,$00,$15,$00
                    db $00,$00,$FF,$7F,$63,$0C,$55,$01
                    db $1C,$1A,$3E,$1B,$9C,$2D,$BF,$3A
                    db $00,$00,$2F,$15,$D9,$3E,$5D,$4F
                    db $9F,$63,$52,$03,$AD,$02,$08,$02

CODE_0E98B8:        LDA $0E22                 ;
CODE_0E98BB:        BEQ CODE_0E98C0           ;
CODE_0E98BD:        JMP CODE_0E996F           ;

CODE_0E98C0:        INC $073C                 ;
CODE_0E98C3:        PHB                       ;
CODE_0E98C4:        PHK                       ;
CODE_0E98C5:        PLB                       ;
CODE_0E98C6:        PHX                       ;
CODE_0E98C7:        LDA $0744                 ;
CODE_0E98CA:        BNE CODE_0E98CE           ;
CODE_0E98CC:        LDA $BA                   ;
CODE_0E98CE:        REP #$30                  ;
CODE_0E98D0:        AND #$00FF                ;
CODE_0E98D3:        ASL A                     ;
CODE_0E98D4:        TAY                       ;
CODE_0E98D5:        LDA $0743                 ;
CODE_0E98D8:        AND #$00FF                ;
CODE_0E98DB:        BEQ CODE_0E98F2           ;
CODE_0E98DD:        LDA $0744                 ;
CODE_0E98E0:        AND #$0004                ;
CODE_0E98E3:        BNE CODE_0E98F2           ;
CODE_0E98E5:        LDA $075A                 ;
CODE_0E98E8:        AND #$0080                ;
CODE_0E98EB:        BNE CODE_0E98F2           ;
CODE_0E98ED:        LDA #$522A                ;
CODE_0E98F0:        BRA CODE_0E98F5           ;

CODE_0E98F2:        LDA DATA_0E9828,y               ;
CODE_0E98F5:        STA $1000                 ;
CODE_0E98F8:        AND #$001F                ;
CODE_0E98FB:        CLC                       ;
CODE_0E98FC:        ADC #$0020                ;
CODE_0E98FF:        STA $0EE0                 ;
CODE_0E9902:        LDA $1000                 ;
CODE_0E9905:        AND #$03E0                ;
CODE_0E9908:        ASL A                     ;
CODE_0E9909:        ASL A                     ;
CODE_0E990A:        ASL A                     ;
CODE_0E990B:        XBA                       ;
CODE_0E990C:        CLC                       ;
CODE_0E990D:        ADC #$0040                ;
CODE_0E9910:        STA $0EE1                 ;
CODE_0E9913:        LDA $1000                 ;
CODE_0E9916:        AND #$7C00                ;
CODE_0E9919:        LSR A                     ;
CODE_0E991A:        LSR A                     ;
CODE_0E991B:        XBA                       ;
CODE_0E991C:        CLC                       ;
CODE_0E991D:        ADC #$0080                ;
CODE_0E9920:        STA $0EE2                 ;
CODE_0E9923:        STZ $1000                 ;
CODE_0E9926:        BRA CODE_0E9934           ;

CODE_0E9928:        LDA #$00E0                ;
CODE_0E992B:        STA $0EE0                 ;
CODE_0E992E:        STA $0EE1                 ;
CODE_0E9931:        STA $0EE2                 ;
CODE_0E9934:        SEP #$30                  ;
CODE_0E9936:        LDA $0254                 ;
CODE_0E9939:        BNE CODE_0E996D           ;
CODE_0E993B:        LDY #$00                  ;
CODE_0E993D:        LDA $0753                 ;
CODE_0E9940:        BEQ CODE_0E9944           ;
CODE_0E9942:        LDY #$20                  ;
CODE_0E9944:        LDA $0756                 ;
CODE_0E9947:        CMP #$02                  ;
CODE_0E9949:        BNE CODE_0E9950           ;
CODE_0E994B:        TYA                       ;
CODE_0E994C:        CLC                       ;
CODE_0E994D:        ADC #$40                  ;
CODE_0E994F:        TAY                       ;
CODE_0E9950:        REP #$20                  ;
CODE_0E9952:        LDX #$00                  ;
CODE_0E9954:        LDA DATA_0E9838,y               ;
CODE_0E9957:        STA $11E0,x               ;
CODE_0E995A:        LDA DATA_0E9848,y               ;
CODE_0E995D:        STA $11F0,x               ;
CODE_0E9960:        INX                       ;
CODE_0E9961:        INX                       ;
CODE_0E9962:        INY                       ;
CODE_0E9963:        INY                       ;
CODE_0E9964:        CPX #$10                  ;
CODE_0E9966:        BNE CODE_0E9954           ;
CODE_0E9968:        SEP #$20                  ;
CODE_0E996A:        INC $1200                 ;
CODE_0E996D:        PLX                       ;
CODE_0E996E:        PLB                       ;
CODE_0E996F:        RTL                       ;

CODE_0E9970:        PHB                       ;
CODE_0E9971:        PHK                       ;
CODE_0E9972:        PLB                       ;
CODE_0E9973:        PHX                       ;
CODE_0E9974:        PHY                       ;
CODE_0E9975:        PHA                       ;
CODE_0E9976:        LDA $0EFE                 ;
CODE_0E9979:        CMP #$7F                  ;
CODE_0E997B:        BNE CODE_0E9982           ;
CODE_0E997D:        LDA $0ED0                 ;
CODE_0E9980:        BRA CODE_0E9985           ;

CODE_0E9982:        STA $0ED0                 ;
CODE_0E9985:        STA $F3                   ;
CODE_0E9987:        LDA #$20                  ;
CODE_0E9989:        STA $00                   ;
CODE_0E998B:        LDA $BA                   ;
CODE_0E998D:        CMP #$03                  ;
CODE_0E998F:        BNE CODE_0E9993           ;
CODE_0E9991:        ASL $00                   ;
CODE_0E9993:        LDA $0EFD                 ;
CODE_0E9996:        CLC                       ;
CODE_0E9997:        ADC $00                   ;
CODE_0E9999:        AND #$F0                  ;
CODE_0E999B:        LSR A                     ;
CODE_0E999C:        LSR A                     ;
CODE_0E999D:        STA $0EF7                 ;
CODE_0E99A0:        LSR A                     ;
CODE_0E99A1:        STA $00                   ;
CODE_0E99A3:        LDA $00                   ;
CODE_0E99A5:        BNE CODE_0E99BA           ;
CODE_0E99A7:        LDA $0EF6                 ;
CODE_0E99AA:        BEQ CODE_0E99B3           ;
CODE_0E99AC:        STZ $0EF6                 ;
CODE_0E99AF:        LDA #$14                  ;
CODE_0E99B1:        BRA CODE_0E99C6           ;

CODE_0E99B3:        LDA #$10                  ;
CODE_0E99B5:        STA $0EF6                 ;
CODE_0E99B8:        BRA CODE_0E99C6           ;

CODE_0E99BA:        LDA $F3                   ;
CODE_0E99BC:        AND #$01                  ;
CODE_0E99BE:        BEQ CODE_0E99C4           ;
CODE_0E99C0:        LDA #$10                  ;
CODE_0E99C2:        BRA CODE_0E99C6           ;

CODE_0E99C4:        LDA #$14                  ;
CODE_0E99C6:        STA $01                   ;
CODE_0E99C8:        LDA $F3                   ;
CODE_0E99CA:        AND #$0F                  ;
CODE_0E99CC:        LDX $00                   ;
CODE_0E99CE:        BNE CODE_0E99D1           ;
CODE_0E99D0:        INC A                     ;
CODE_0E99D1:        INC A                     ;
CODE_0E99D2:        ASL A                     ;
CODE_0E99D3:        ASL A                     ;
CODE_0E99D4:        ASL A                     ;
CODE_0E99D5:        STA $0EF8                 ;
CODE_0E99D8:        JSR CODE_0E9A06           ;
CODE_0E99DB:        PLA                       ;
CODE_0E99DC:        PLY                       ;
CODE_0E99DD:        PLX                       ;
CODE_0E99DE:        PLB                       ;
CODE_0E99DF:        RTL                       ;

CODE_0E99E0:        LDA $0EFD                 ;
CODE_0E99E3:        AND #$F0                  ;
CODE_0E99E5:        LSR A                     ;
CODE_0E99E6:        LSR A                     ;
CODE_0E99E7:        STA $0EF7                 ;
CODE_0E99EA:        LSR A                     ;
CODE_0E99EB:        STA $00                   ;
CODE_0E99ED:        LDA $0EFE                 ;
CODE_0E99F0:        ASL A                     ;
CODE_0E99F1:        ASL A                     ;
CODE_0E99F2:        ASL A                     ;
CODE_0E99F3:        STA $0EF8                 ;
CODE_0E99F6:        LDA $0EFE                 ;
CODE_0E99F9:        AND #$01                  ;
CODE_0E99FB:        BEQ CODE_0E9A01           ;
CODE_0E99FD:        LDA #$14                  ;
CODE_0E99FF:        BRA CODE_0E9A03           ;

CODE_0E9A01:        LDA #$10                  ;
CODE_0E9A03:        STA $01                   ;
CODE_0E9A05:        RTS                       ;

CODE_0E9A06:        REP #$30                  ;
CODE_0E9A08:        LDA #$0004                ;
CODE_0E9A0B:        STA $0EFA                 ;
CODE_0E9A0E:        LDA $BA                   ;
CODE_0E9A10:        AND #$00FF                ;
CODE_0E9A13:        CMP #$0003                ;
CODE_0E9A16:        BNE CODE_0E9A1B           ;
CODE_0E9A18:        ASL $0EFA                 ;
CODE_0E9A1B:        LDA $7F0000               ;
CODE_0E9A1F:        TAY                       ;
CODE_0E9A20:        LDA $00                   ;
CODE_0E9A22:        AND #$0020                ;
CODE_0E9A25:        BEQ CODE_0E9A32           ;
CODE_0E9A27:        LDA $00                   ;
CODE_0E9A29:        CLC                       ;
CODE_0E9A2A:        ADC #$0400                ;
CODE_0E9A2D:        AND #$16C0                ;
CODE_0E9A30:        STA $00                   ;
CODE_0E9A32:        TYX                       ;
CODE_0E9A33:        LDA $00                   ;
CODE_0E9A35:        SEC                       ;
CODE_0E9A36:        SBC #$0800                ;
CODE_0E9A39:        STA $7F0002,x             ;
CODE_0E9A3D:        LDA #$0020                ;
CODE_0E9A40:        STA $02                   ;
CODE_0E9A42:        TXY                       ;
CODE_0E9A43:        LDA $0EF7                 ;
CODE_0E9A46:        AND #$0040                ;
CODE_0E9A49:        BEQ CODE_0E9A58           ;
CODE_0E9A4B:        LDA #$0800                ;
CODE_0E9A4E:        CLC                       ;
CODE_0E9A4F:        ADC $0EF7                 ;
CODE_0E9A52:        AND #$FF00                ;
CODE_0E9A55:        STA $0EF7                 ;
CODE_0E9A58:        LDX $0EF7                 ;
CODE_0E9A5B:        STX $04                   ;
CODE_0E9A5D:        LDA $7E2000,x             ;
CODE_0E9A61:        TYX                       ;
CODE_0E9A62:        STA $7F0004,x             ;
CODE_0E9A66:        INY                       ;
CODE_0E9A67:        INY                       ;
CODE_0E9A68:        LDA $04                   ;
CODE_0E9A6A:        CLC                       ;
CODE_0E9A6B:        ADC #$0040                ;
CODE_0E9A6E:        STA $04                   ;
CODE_0E9A70:        TAX                       ;
CODE_0E9A71:        DEC $02                   ;
CODE_0E9A73:        BPL CODE_0E9A5D           ;
CODE_0E9A75:        TYX                       ;
CODE_0E9A76:        LDA #$0024                ;
CODE_0E9A79:        STA $7F0000,x             ;
CODE_0E9A7D:        INC $0EF7                 ;
CODE_0E9A80:        INC $0EF7                 ;
CODE_0E9A83:        INC $00                   ;
CODE_0E9A85:        DEC $0EFA                 ;
CODE_0E9A88:        BNE CODE_0E9A20           ;
CODE_0E9A8A:        TYA                       ;
CODE_0E9A8B:        STA $7F0000               ;
CODE_0E9A8F:        TAX                       ;
CODE_0E9A90:        LDA #$FFFF                ;
CODE_0E9A93:        STA $7F0002,x             ;
CODE_0E9A97:        SEP #$30                  ;
CODE_0E9A99:        LDA #$01                  ;
CODE_0E9A9B:        STA $0EF9                 ;
CODE_0E9A9E:        RTS                       ;

DATA_0E9A9F:        db $0A,$8D,$00,$0B,$24,$00,$24,$00 ;
                    db $45,$1E,$46,$1E,$47,$1E,$24,$00 ;
                    db $0A,$AD,$00,$0B,$4A,$1E,$4B,$1E ;
                    db $48,$1E,$49,$1E,$59,$1E,$24,$00 ;
                    db $0A,$CD,$00,$0B,$5A,$1E,$5B,$1E ;
                    db $69,$1E,$6A,$1E,$6F,$1E,$24,$00 ;
                    db $0A,$ED,$00,$0B,$24,$00,$6B,$1E ;
                    db $4C,$1E,$4D,$1E,$4E,$1E,$4F,$1E ;
                    db $0B,$0D,$00,$0B,$24,$00,$24,$00 ;
                    db $5C,$1E,$5D,$1E,$5E,$1E,$5F,$1E ;
                    db $0B,$2D,$00,$0B,$24,$00,$7A,$1E ;
                    db $6C,$1E,$6D,$1E,$6E,$1E,$24,$00 ;
                    db $0B,$4D,$00,$0B,$24,$00,$7B,$1E ;
                    db $7C,$1E,$7D,$1E,$7E,$1E,$24,$00 ;
                    db $FF,$FF ;

DATA_0E9B11:        db $0A,$4D,$00,$0B,$24,$00,$80,$16 ;
                    db $81,$16,$82,$16,$24,$00,$24,$00 ;
                    db $0A,$6D,$00,$0B,$24,$00,$83,$16 ;
                    db $84,$16,$85,$16,$24,$00,$24,$00 ;
                    db $0A,$8D,$00,$0B,$24,$00,$86,$16 ;
                    db $87,$16,$88,$16,$24,$00,$24,$00 ;
                    db $0A,$AD,$00,$0B,$24,$00,$89,$16 ;
                    db $8A,$16,$8B,$16,$8C,$16,$24,$00 ;
                    db $0A,$CD,$00,$0B,$24,$00,$8D,$16 ;
                    db $8E,$16,$8F,$16,$90,$16,$24,$00 ;
                    db $0A,$ED,$00,$0B,$91,$16,$92,$16 ;
                    db $93,$16,$94,$16,$95,$16,$24,$00 ;
                    db $0B,$0D,$00,$0B,$96,$16,$97,$16 ;
                    db $98,$16,$99,$16,$24,$00,$24,$00 ;
                    db $0B,$2D,$00,$0B,$24,$00,$9A,$16 ;
                    db $9B,$16,$9C,$16,$24,$00,$24,$00 ;
                    db $0B,$4D,$00,$0B,$24,$00,$9D,$16 ;
                    db $9E,$16,$9F,$16,$A0,$16,$24,$00 ;
                    db $FF,$FF ;

DATA_0E9BA3:        db $0A,$D3,$00,$09,$40,$1A,$41,$1A ;
                    db $42,$1A,$43,$1A,$44,$1A,$0A,$F3 ;
                    db $00,$11,$50,$1A,$51,$1A,$52,$1A ;
                    db $53,$1A,$54,$1A,$55,$1A,$56,$1A ;
                    db $57,$1A,$58,$1A,$0B,$13,$00,$13 ;
                    db $60,$1A,$61,$1A,$62,$1A,$63,$1A ;
                    db $64,$1A,$65,$1A,$66,$1A,$67,$1A ;
                    db $68,$1A,$FD,$19,$0B,$33,$00,$13 ;
                    db $B2,$1A,$B3,$1A,$B4,$1A,$B5,$1A ;
                    db $B6,$1A,$B7,$1A,$B8,$1A,$B9,$1A ;
                    db $BA,$1A,$79,$1A,$0B,$53,$00,$11 ;
                    db $EA,$19,$EB,$19,$EC,$19,$ED,$19 ;
                    db $EE,$19,$EF,$19,$FA,$19,$FB,$19 ;
                    db $FC,$19,$FF,$FF ;

DATA_0E9C0F:        db $01,$C8,$40,$1E,$24,$00,$01,$E8 ;
                    db $40,$1E,$24,$00,$02,$08,$40,$1E ;
                    db $24,$00,$02,$28,$40,$1E,$24,$00 ;
                    db $02,$48,$40,$1E,$24,$00,$02,$68 ;
                    db $40,$1E,$24,$00,$02,$88,$40,$1E ;
                    db $24,$00,$02,$A8,$40,$1E,$24,$00 ;
                    db $02,$C8,$40,$1E,$24,$00,$02,$E8 ;
                    db $40,$1E,$24,$00,$FF,$FF ;

DATA_0E9C4D:        db $01,$E8,$00,$1F,$EC,$18,$ED,$18 ;
                    db $EE,$18,$EF,$18,$EC,$18,$ED,$18 ;
                    db $EE,$18,$EF,$18,$EC,$18,$ED,$18 ;
                    db $EE,$18,$EF,$18,$EC,$18,$ED,$18 ;
                    db $EE,$18,$EF,$18,$02,$4C,$80,$0B ;
                    db $4A,$1D,$5A,$1D,$4A,$1D,$5A,$1D ;
                    db $82,$10,$84,$10,$02,$4D,$80,$0B ;
                    db $4B,$1D,$5B,$1D,$4B,$1D,$5B,$1D ;
                    db $83,$10,$85,$10,$0A,$08,$40,$1E ;
                    db $00,$19,$0A,$28,$40,$1E,$00,$19 ;
                    db $0A,$48,$40,$1E,$01,$19,$0A,$68 ;
                    db $40,$1E,$01,$19,$0A,$88,$40,$1E ;
                    db $01,$19,$0A,$A8,$40,$1E,$01,$19 ;
                    db $0A,$C8,$40,$1E,$01,$19,$0A,$E8 ;
                    db $40,$1E,$01,$19,$FF,$FF,$09,$CA ;
                    db $00,$09,$DF,$1D,$C3,$1D,$C0,$1D ;
                    db $C1,$1D,$CA,$1D,$09,$EA,$00,$0B ;
                    db $DC,$1D,$D3,$1D,$D0,$1D,$D1,$1D ;
                    db $DA,$1D,$DB,$1D,$0A,$09,$00,$0D ;
                    db $DD,$1D,$E2,$1D,$E3,$1D,$E0,$1D ;
                    db $E1,$1D,$E2,$1D,$F8,$1D,$0A,$29 ;
                    db $00,$0D,$DE,$1D,$F2,$1D,$F3,$1D ;
                    db $F0,$1D,$F1,$1D,$F2,$1D,$F3,$1D ;
                    db $0A,$49,$00,$1B,$E9,$1D,$C6,$1D ;
                    db $C7,$1D,$C4,$1D,$C5,$1D,$C6,$1D ;
                    db $C7,$1D,$E8,$1D,$24,$00,$24,$00 ;
                    db $E9,$1D,$EA,$1D,$EB,$1D,$E8,$1D ;
                    db $0A,$69,$00,$1B,$F9,$1D,$D6,$1D ;
                    db $D7,$1D,$D4,$1D,$D5,$1D,$D6,$1D ;
                    db $D7,$1D,$F8,$1D,$24,$00,$24,$00 ;
                    db $F9,$1D,$FA,$1D,$FB,$1D,$F8,$1D ;
                    db $0A,$89,$00,$1B,$E5,$1D,$E6,$1D ;
                    db $E7,$1D,$E4,$1D,$E5,$1D,$E6,$1D ;
                    db $E7,$1D,$E4,$1D,$24,$00,$24,$00 ;
                    db $E5,$1D,$E6,$1D,$E7,$1D,$E4,$1D ;
                    db $0A,$A9,$00,$1B,$F5,$1D,$F6,$1D ;
                    db $F7,$1D,$F4,$1D,$F5,$1D,$F6,$1D ;
                    db $F7,$1D,$F4,$1D,$24,$00,$24,$00 ;
                    db $F5,$1D,$F6,$1D,$F7,$1D,$F4,$1D ;
                    db $02,$C8,$00,$1F,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$02,$E8,$00,$1F ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $FF,$FF,$09,$CA,$00,$09,$DF,$1D ;
                    db $C3,$1D,$C0,$1D,$C1,$1D,$CA,$1D ;
                    db $09,$EA,$00,$0B,$DC,$1D,$D3,$1D ;
                    db $D0,$1D,$D1,$1D,$DA,$1D,$DB,$1D ;
                    db $0A,$09,$00,$0D,$DD,$1D,$E2,$1D ;
                    db $E3,$1D,$E0,$1D,$E1,$1D,$E2,$1D ;
                    db $F8,$1D,$0A,$29,$00,$0D,$DE,$1D ;
                    db $F2,$1D,$F3,$1D,$F0,$1D,$F1,$1D ;
                    db $F2,$1D,$F3,$1D,$0A,$49,$00,$1B ;
                    db $E9,$1D,$C6,$1D,$C7,$1D,$C4,$1D ;
                    db $C5,$1D,$C6,$1D,$C7,$1D,$E8,$1D ;
                    db $24,$00,$24,$00,$E9,$1D,$EA,$1D ;
                    db $EB,$1D,$E8,$1D,$0A,$69,$00,$1B ;
                    db $F9,$1D,$D6,$1D,$D7,$1D,$D4,$1D ;
                    db $D5,$1D,$D6,$1D,$D7,$1D,$F8,$1D ;
                    db $24,$00,$24,$00,$F9,$1D,$FA,$1D ;
                    db $FB,$1D,$F8,$1D,$0A,$89,$00,$1B ;
                    db $E5,$1D,$E6,$1D,$E7,$1D,$E4,$1D ;
                    db $E5,$1D,$E6,$1D,$E7,$1D,$E4,$1D ;
                    db $24,$00,$24,$00,$E5,$1D,$E6,$1D ;
                    db $E7,$1D,$E4,$1D,$0A,$A9,$00,$1B ;
                    db $F5,$1D,$F6,$1D,$F7,$1D,$F4,$1D ;
                    db $F5,$1D,$F6,$1D,$F7,$1D,$F4,$1D ;
                    db $24,$00,$24,$00,$F5,$1D,$F6,$1D ;
                    db $F7,$1D,$F4,$1D,$02,$0A,$80,$0B ;
                    db $B8,$08,$BA,$08,$BA,$08,$BC,$08 ;
                    db $BE,$0C,$BE,$0C,$02,$0B,$80,$0B ;
                    db $B9,$08,$BB,$08,$BB,$08,$BD,$08 ;
                    db $BF,$0C,$BF,$0C,$02,$92,$00,$07 ;
                    db $14,$12,$15,$12,$14,$12,$15,$12 ;
                    db $02,$B2,$00,$07,$16,$12,$17,$12 ;
                    db $16,$12,$17,$12,$02,$C8,$00,$1F ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $02,$E8,$00,$1F,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$FF,$FF,$02,$0A ;
                    db $80,$0B,$B8,$08,$BA,$08,$BA,$08 ;
                    db $BC,$08,$BE,$0C,$BE,$0C,$02,$0B ;
                    db $80,$0B,$B9,$08,$BB,$08,$BB,$08 ;
                    db $BD,$08,$BF,$0C,$BF,$0C,$02,$92 ;
                    db $00,$07,$14,$12,$15,$12,$14,$12 ;
                    db $15,$12,$02,$B2,$00,$07,$16,$12 ;
                    db $17,$12,$16,$12,$17,$12,$02,$C8 ;
                    db $00,$1F,$CA,$09,$CB,$09,$CA,$09 ;
                    db $CB,$09,$CA,$09,$CB,$09,$CA,$09 ;
                    db $CB,$09,$CA,$09,$CB,$09,$CA,$09 ;
                    db $CB,$09,$CA,$09,$CB,$09,$CA,$09 ;
                    db $CB,$09,$02,$E8,$00,$1F,$DA,$09 ;
                    db $DB,$09,$DA,$09,$DB,$09,$DA,$09 ;
                    db $DB,$09,$DA,$09,$DB,$09,$DA,$09 ;
                    db $DB,$09,$DA,$09,$DB,$09,$DA,$09 ;
                    db $DB,$09,$DA,$09,$DB,$09,$FF,$FF ;
                    db $09,$C8,$00,$1F,$C2,$1D,$C3,$1D ;
                    db $C0,$1D,$C1,$1D,$C2,$1D,$C3,$1D ;
                    db $C0,$1D,$C1,$1D,$C2,$1D,$C3,$1D ;
                    db $C0,$1D,$C1,$1D,$C2,$1D,$C3,$1D ;
                    db $C0,$1D,$C1,$1D,$09,$E8,$00,$1F ;
                    db $D2,$1D,$D3,$1D,$D0,$1D,$D1,$1D ;
                    db $D2,$1D,$D3,$1D,$D0,$1D,$D1,$1D ;
                    db $D2,$1D,$D3,$1D,$D0,$1D,$D1,$1D ;
                    db $D2,$1D,$D3,$1D,$D0,$1D,$D1,$1D ;
                    db $0A,$08,$00,$1F,$E2,$1D,$E1,$1D ;
                    db $E2,$1D,$E1,$1D,$E2,$1D,$E1,$1D ;
                    db $E2,$1D,$E1,$1D,$E2,$1D,$E1,$1D ;
                    db $E2,$1D,$E1,$1D,$E2,$1D,$E1,$1D ;
                    db $E2,$1D,$E1,$1D,$0A,$28,$00,$1F ;
                    db $D2,$1D,$D1,$1D,$E4,$1D,$E5,$1D ;
                    db $D2,$1D,$82,$1D,$83,$1D,$84,$1D ;
                    db $85,$1D,$80,$1D,$81,$1D,$D1,$1D ;
                    db $E4,$1D,$E5,$1D,$D2,$1D,$D1,$1D ;
                    db $0A,$48,$00,$1F,$E2,$1D,$E1,$1D ;
                    db $F4,$1D,$F5,$1D,$E2,$1D,$DC,$1D ;
                    db $DD,$1D,$DE,$1D,$DF,$1D,$90,$1D ;
                    db $91,$1D,$E1,$1D,$F4,$1D,$F5,$1D ;
                    db $E2,$1D,$E1,$1D,$0A,$68,$00,$1F ;
                    db $D2,$1D,$D1,$1D,$D8,$1D,$E8,$1D ;
                    db $D2,$1D,$EC,$1D,$ED,$1D,$EE,$1D ;
                    db $EF,$1D,$A0,$1D,$A1,$1D,$D1,$1D ;
                    db $D8,$1D,$E8,$1D,$D2,$1D,$D1,$1D ;
                    db $0A,$88,$00,$1F,$E2,$1D,$E1,$1D ;
                    db $E2,$1D,$E1,$1D,$E2,$1D,$FC,$1D ;
                    db $FD,$1D,$FE,$1D,$FF,$1D,$B0,$1D ;
                    db $B1,$1D,$E1,$1D,$E2,$1D,$E1,$1D ;
                    db $E2,$1D,$E1,$1D,$0A,$A8,$00,$1F ;
                    db $F0,$1D,$F1,$1D,$F2,$1D,$F3,$1D ;
                    db $F0,$1D,$F1,$1D,$F2,$1D,$F3,$1D ;
                    db $F0,$1D,$F1,$1D,$F2,$1D,$F3,$1D ;
                    db $F0,$1D,$F1,$1D,$F2,$1D,$F3,$1D ;
                    db $02,$0A,$80,$0B,$B8,$08,$BA,$08 ;
                    db $BA,$08,$BC,$08,$BE,$0C,$BE,$0C ;
                    db $02,$0B,$80,$0B,$B9,$08,$BB,$08 ;
                    db $BB,$08,$BD,$08,$BF,$0C,$BF,$0C ;
                    db $02,$92,$00,$07,$14,$12,$15,$12 ;
                    db $14,$12,$15,$12,$02,$B2,$00,$07 ;
                    db $16,$12,$17,$12,$16,$12,$17,$12 ;
                    db $02,$C8,$00,$1F,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$02,$E8,$00,$1F ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $FF,$FF,$01,$EB,$00,$03,$D6,$10 ;
                    db $D7,$10,$02,$0A,$00,$07,$D8,$10 ;
                    db $D9,$10,$DA,$10,$DB,$10,$02,$2A ;
                    db $00,$07,$DC,$10,$DD,$10,$DE,$10 ;
                    db $DF,$10,$02,$53,$00,$07,$01,$15 ;
                    db $02,$15,$03,$15,$04,$15,$02,$72 ;
                    db $00,$0B,$10,$15,$11,$15,$0A,$15 ;
                    db $05,$15,$14,$15,$15,$15,$02,$91 ;
                    db $00,$0D,$06,$15,$16,$15,$0A,$15 ;
                    db $12,$15,$0A,$15,$0A,$15,$0D,$15 ;
                    db $02,$B0,$00,$0F,$06,$15,$16,$15 ;
                    db $0A,$15,$0A,$15,$12,$95,$19,$15 ;
                    db $0A,$15,$1D,$15,$02,$C8,$00,$1F ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $02,$E8,$00,$1F,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$FF,$FF,$01,$C8 ;
                    db $40,$1E,$47,$0C,$01,$CD,$00,$07 ;
                    db $68,$08,$69,$08,$97,$08,$6A,$08 ;
                    db $01,$E8,$80,$0D,$45,$0C,$47,$0C ;
                    db $45,$0C,$47,$0C,$45,$0C,$47,$0C ;
                    db $45,$0C,$01,$E9,$00,$1D,$32,$1D ;
                    db $33,$1D,$30,$1D,$31,$1D,$64,$88 ;
                    db $65,$88,$66,$88,$67,$88,$32,$1D ;
                    db $33,$1D,$30,$1D,$31,$1D,$32,$1D ;
                    db $33,$1D,$30,$1D,$02,$09,$00,$1D ;
                    db $02,$1D,$03,$1D,$00,$1D,$01,$1D ;
                    db $60,$88,$61,$88,$62,$88,$63,$88 ;
                    db $02,$1D,$03,$1D,$48,$1D,$49,$1D ;
                    db $4A,$1D,$4B,$1D,$00,$1D,$02,$29 ;
                    db $00,$1D,$3A,$15,$13,$1D,$10,$1D ;
                    db $11,$1D,$12,$1D,$13,$1D,$10,$1D ;
                    db $11,$1D,$12,$1D,$13,$1D,$58,$1D ;
                    db $59,$1D,$5A,$1D,$5B,$1D,$10,$1D ;
                    db $02,$49,$00,$1D,$22,$1D,$23,$1D ;
                    db $20,$1D,$21,$1D,$22,$1D,$23,$1D ;
                    db $20,$1D,$21,$1D,$22,$1D,$23,$1D ;
                    db $68,$1D,$69,$1D,$6A,$1D,$6B,$1D ;
                    db $20,$1D,$02,$69,$00,$1D,$32,$1D ;
                    db $33,$1D,$1D,$15,$1D,$15,$32,$1D ;
                    db $33,$1D,$30,$1D,$31,$1D,$32,$1D ;
                    db $33,$1D,$78,$1D,$79,$1D,$7A,$1D ;
                    db $7B,$1D,$30,$1D,$02,$89,$00,$1D ;
                    db $02,$1D,$03,$1D,$28,$15,$29,$15 ;
                    db $02,$1D,$03,$1D,$00,$1D,$01,$1D ;
                    db $02,$1D,$03,$1D,$00,$1D,$01,$1D ;
                    db $02,$1D,$03,$1D,$00,$1D,$02,$A9 ;
                    db $00,$1D,$12,$1D,$13,$1D,$10,$1D ;
                    db $11,$1D,$12,$1D,$13,$1D,$10,$1D ;
                    db $11,$1D,$12,$1D,$13,$1D,$10,$1D ;
                    db $11,$1D,$12,$1D,$13,$1D,$10,$1D ;
                    db $02,$C8,$00,$1F,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$02,$E8,$00,$1F ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $FF,$FF,$01,$C8,$00,$1F,$E6,$09 ;
                    db $E7,$09,$E8,$09,$E9,$09,$E6,$09 ;
                    db $E7,$09,$E8,$09,$E9,$09,$E6,$09 ;
                    db $E7,$09,$E8,$09,$E9,$09,$E6,$09 ;
                    db $E7,$09,$E8,$09,$E9,$09,$01,$E8 ;
                    db $00,$1F,$F6,$09,$F7,$09,$F8,$09 ;
                    db $F9,$09,$F6,$09,$F7,$09,$F8,$09 ;
                    db $F9,$09,$F6,$09,$F7,$09,$F8,$09 ;
                    db $F9,$09,$F6,$09,$F7,$09,$F8,$09 ;
                    db $F9,$09,$0A,$08,$40,$1E,$34,$15 ;
                    db $0A,$28,$40,$1E,$34,$15,$0A,$48 ;
                    db $40,$1E,$34,$15,$0A,$68,$40,$1E ;
                    db $34,$15,$0A,$88,$40,$1E,$34,$15 ;
                    db $0A,$A8,$40,$1E,$34,$15,$0A,$CB ;
                    db $40,$18,$34,$15,$0A,$EB,$40,$0E ;
                    db $34,$15,$0A,$0B,$C0,$0E,$36,$15 ;
                    db $0A,$0C,$C0,$0E,$37,$15,$0A,$0D ;
                    db $C0,$0E,$28,$15,$0A,$13,$C0,$0C ;
                    db $36,$15,$0A,$14,$C0,$0C,$37,$15 ;
                    db $0A,$15,$C0,$0C,$28,$15,$02,$C8 ;
                    db $00,$1F,$CA,$09,$CB,$09,$CA,$09 ;
                    db $C3,$09,$24,$00,$24,$00,$24,$00 ;
                    db $24,$00,$C0,$09,$CB,$09,$CA,$09 ;
                    db $C3,$09,$9B,$18,$9C,$18,$9B,$18 ;
                    db $9C,$18,$02,$E8,$00,$1F,$DA,$09 ;
                    db $DB,$09,$DA,$09,$D3,$09,$E0,$18 ;
                    db $E1,$18,$E0,$18,$E1,$18,$D0,$09 ;
                    db $DB,$09,$DA,$09,$D3,$09,$9D,$18 ;
                    db $9E,$18,$9D,$18,$9E,$18,$FF,$FF ;
                    db $09,$C8,$40,$1E,$34,$15,$09,$E8 ;
                    db $40,$1E,$34,$15,$0A,$08,$40,$1E ;
                    db $34,$15,$0A,$28,$40,$1E,$34,$15 ;
                    db $0A,$48,$40,$1E,$34,$15,$0A,$68 ;
                    db $40,$1E,$34,$15,$0A,$88,$40,$1E ;
                    db $34,$15,$0A,$A8,$40,$1E,$34,$15 ;
                    db $0A,$CB,$40,$18,$34,$15,$0A,$EB ;
                    db $40,$0E,$34,$15,$09,$CE,$C0,$09 ;
                    db $36,$15,$09,$CF,$C0,$09,$37,$15 ;
                    db $0A,$6E,$00,$03,$26,$95,$27,$95 ;
                    db $0A,$8D,$00,$07,$24,$95,$16,$95 ;
                    db $17,$95,$18,$95,$0A,$AD,$00,$07 ;
                    db $32,$15,$22,$15,$22,$15,$23,$15 ;
                    db $09,$D2,$00,$0B,$A8,$1D,$A9,$1D ;
                    db $8A,$1D,$8B,$1D,$A9,$5D,$AC,$1D ;
                    db $09,$F2,$00,$0B,$A8,$1D,$B9,$1D ;
                    db $B9,$1D,$B9,$1D,$BA,$1D,$AC,$1D ;
                    db $0A,$12,$00,$0B,$A8,$1D,$89,$1D ;
                    db $8A,$1D,$8B,$1D,$89,$5D,$9C,$1D ;
                    db $0A,$32,$00,$0B,$A8,$1D,$99,$1D ;
                    db $9A,$1D,$9B,$1D,$99,$5D,$AC,$1D ;
                    db $0A,$52,$00,$0B,$A8,$1D,$A9,$1D ;
                    db $8A,$1D,$8B,$1D,$A9,$5D,$AC,$1D ;
                    db $0A,$72,$00,$0B,$B8,$1D,$B9,$1D ;
                    db $B9,$1D,$B9,$1D,$B9,$1D,$BA,$1D ;
                    db $09,$E9,$00,$07,$B0,$1D,$B1,$1D ;
                    db $B1,$5D,$B0,$5D,$0A,$09,$00,$07 ;
                    db $B2,$1D,$E8,$1C,$E9,$1C,$B2,$5D ;
                    db $0A,$29,$00,$07,$B3,$1D,$EA,$1C ;
                    db $EB,$1C,$B3,$5D,$0A,$49,$00,$07 ;
                    db $34,$1D,$8E,$1D,$8F,$1D,$34,$1D ;
                    db $0A,$C8,$00,$1F,$10,$15,$11,$15 ;
                    db $10,$15,$11,$15,$10,$15,$11,$15 ;
                    db $10,$15,$11,$15,$10,$15,$11,$15 ;
                    db $10,$15,$11,$15,$10,$15,$11,$15 ;
                    db $10,$15,$11,$15,$0A,$E8,$00,$1F ;
                    db $20,$15,$21,$15,$20,$15,$21,$15 ;
                    db $20,$15,$21,$15,$20,$15,$21,$15 ;
                    db $20,$15,$21,$15,$20,$15,$21,$15 ;
                    db $20,$15,$21,$15,$20,$15,$21,$15 ;
                    db $02,$C8,$00,$1F,$CA,$09,$CB,$09 ;
                    db $CA,$09,$C3,$09,$24,$00,$24,$00 ;
                    db $24,$00,$24,$00,$C0,$09,$CB,$09 ;
                    db $CA,$09,$C3,$09,$9B,$18,$9C,$18 ;
                    db $9B,$18,$9C,$18,$02,$E8,$00,$1F ;
                    db $DA,$09,$DB,$09,$DA,$09,$D3,$09 ;
                    db $E0,$18,$E1,$18,$E0,$18,$E1,$18 ;
                    db $D0,$09,$DB,$09,$DA,$09,$D3,$09 ;
                    db $9D,$18,$9E,$18,$9D,$18,$9E,$18 ;
                    db $FF,$FF,$02,$08,$00,$0B,$6B,$18 ;
                    db $2C,$18,$6C,$18,$6D,$18,$6E,$18 ;
                    db $6F,$18,$02,$28,$00,$0B,$70,$18 ;
                    db $2D,$18,$71,$18,$72,$18,$73,$18 ;
                    db $74,$18,$02,$4A,$00,$03,$75,$18 ;
                    db $76,$18,$02,$6A,$C0,$09,$9F,$18 ;
                    db $02,$6B,$C0,$09,$9F,$58,$02,$50 ;
                    db $00,$0B,$6B,$18,$2C,$18,$6C,$18 ;
                    db $6D,$18,$6E,$18,$6F,$18,$02,$70 ;
                    db $00,$0B,$70,$18,$2D,$18,$71,$18 ;
                    db $72,$18,$73,$18,$74,$18,$02,$92 ;
                    db $00,$03,$75,$18,$76,$18,$02,$B2 ;
                    db $00,$03,$9F,$18,$9F,$58,$02,$C8 ;
                    db $00,$1F,$6B,$18,$2C,$18,$6C,$18 ;
                    db $6D,$18,$6E,$18,$2C,$18,$6C,$18 ;
                    db $6D,$18,$6E,$18,$2C,$18,$6C,$18 ;
                    db $6D,$18,$6E,$18,$2C,$18,$6C,$18 ;
                    db $6F,$18,$02,$E8,$00,$1F,$70,$18 ;
                    db $2D,$18,$71,$18,$72,$18,$73,$18 ;
                    db $2D,$18,$71,$18,$72,$18,$73,$18 ;
                    db $2D,$18,$71,$18,$72,$18,$73,$18 ;
                    db $2D,$18,$73,$18,$74,$18,$09,$CA ;
                    db $00,$0B,$CA,$1D,$CB,$1D,$CC,$1D ;
                    db $CD,$1D,$CE,$1D,$CF,$1D,$09,$EA ;
                    db $00,$0B,$DA,$1D,$DB,$1D,$DC,$1D ;
                    db $DD,$1D,$DE,$1D,$DF,$1D,$0A,$0C ;
                    db $80,$0B,$F2,$1D,$E2,$1D,$E2,$1D ;
                    db $E2,$1D,$E2,$1D,$E2,$1D,$0A,$0D ;
                    db $80,$0B,$F3,$1D,$E3,$1D,$E3,$1D ;
                    db $E3,$1D,$E3,$1D,$E3,$1D,$09,$F1 ;
                    db $00,$0B,$CA,$1D,$CB,$1D,$CC,$1D ;
                    db $CD,$1D,$CE,$1D,$CF,$1D,$0A,$11 ;
                    db $00,$0B,$DA,$1D,$DB,$1D,$DC,$1D ;
                    db $DD,$1D,$DE,$1D,$DF,$1D,$0A,$33 ;
                    db $80,$0B,$F2,$1D,$E2,$1D,$E2,$1D ;
                    db $E2,$1D,$E2,$1D,$E2,$1D,$0A,$34 ;
                    db $80,$0B,$F3,$1D,$E3,$1D,$E3,$1D ;
                    db $E3,$1D,$E3,$1D,$E3,$1D,$FF,$FF ;
                    db $02,$08,$00,$0B,$6B,$18,$2C,$18 ;
                    db $6C,$18,$6D,$18,$6E,$18,$6F,$18 ;
                    db $02,$28,$00,$0B,$70,$18,$2D,$18 ;
                    db $71,$18,$72,$18,$73,$18,$74,$18 ;
                    db $02,$50,$00,$0B,$6B,$18,$2C,$18 ;
                    db $6C,$18,$6D,$18,$6E,$18,$6F,$18 ;
                    db $02,$70,$00,$0B,$70,$18,$2D,$18 ;
                    db $71,$18,$72,$18,$73,$18,$74,$18 ;
                    db $02,$C8,$00,$1F,$6B,$18,$2C,$18 ;
                    db $6C,$18,$6D,$18,$6E,$18,$2C,$18 ;
                    db $6C,$18,$6D,$18,$6E,$18,$2C,$18 ;
                    db $6C,$18,$6D,$18,$6E,$18,$2C,$18 ;
                    db $6C,$18,$6F,$18,$02,$E8,$00,$1F ;
                    db $70,$18,$2D,$18,$71,$18,$72,$18 ;
                    db $73,$18,$2D,$18,$71,$18,$72,$18 ;
                    db $73,$18,$2D,$18,$71,$18,$72,$18 ;
                    db $73,$18,$2D,$18,$73,$18,$74,$18 ;
                    db $FF,$FF,$02,$C8,$00,$03,$AB,$0C ;
                    db $AD,$0C,$02,$E8,$00,$03,$AC,$0C ;
                    db $AE,$0C,$02,$CA,$40,$1B,$21,$32 ;
                    db $02,$AA,$00,$01,$81,$08,$02,$AB ;
                    db $40,$19,$20,$2A,$0A,$0E,$80,$0F ;
                    db $E0,$1D,$F0,$1D,$C3,$1D,$D3,$1D ;
                    db $E3,$1D,$F3,$1D,$C1,$1D,$E2,$1D ;
                    db $0A,$0F,$80,$0F,$E1,$1D,$F0,$5D ;
                    db $C4,$1D,$D4,$1D,$E4,$1D,$F4,$1D ;
                    db $D0,$1D,$F2,$1D,$0A,$4D,$00,$01 ;
                    db $C2,$1D,$0A,$50,$00,$01,$C5,$1D ;
                    db $0A,$CD,$00,$01,$C0,$1D,$0A,$D0 ;
                    db $00,$01,$D1,$1D,$0A,$54,$80,$0B ;
                    db $CA,$15,$F1,$15,$C6,$15,$D6,$15 ;
                    db $E6,$15,$F6,$15,$0A,$55,$80,$0B ;
                    db $CB,$15,$F1,$55,$C7,$15,$D7,$15 ;
                    db $E7,$15,$F7,$15,$FF,$FF,$02,$09 ;
                    db $00,$13,$4B,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$50,$10,$02,$29 ;
                    db $00,$13,$4C,$10,$4E,$10,$4F,$10 ;
                    db $4A,$10,$4F,$10,$4A,$10,$4F,$10 ;
                    db $4A,$10,$4E,$10,$51,$10,$02,$4D ;
                    db $80,$07,$04,$12,$10,$12,$00,$12 ;
                    db $10,$12,$02,$4E,$80,$07,$07,$12 ;
                    db $13,$12,$03,$12,$13,$12,$02,$C8 ;
                    db $00,$1F,$4B,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $50,$10,$02,$E8,$00,$1F,$4C,$10 ;
                    db $4E,$10,$4F,$10,$4A,$10,$4F,$10 ;
                    db $4A,$10,$4F,$10,$4A,$10,$4F,$10 ;
                    db $4A,$10,$4F,$10,$4A,$10,$4F,$10 ;
                    db $4A,$10,$4E,$10,$51,$10,$09,$EA ;
                    db $00,$01,$C0,$1C,$09,$F6,$00,$01 ;
                    db $C4,$1C,$09,$D5,$00,$01,$C1,$1C ;
                    db $09,$CF,$00,$01,$C6,$1C,$0A,$15 ;
                    db $00,$01,$C2,$1C,$0A,$71,$00,$01 ;
                    db $C5,$1C,$0A,$36,$00,$01,$C5,$1C ;
                    db $0A,$50,$00,$01,$C4,$1C,$0A,$54 ;
                    db $00,$01,$C7,$1C,$0A,$77,$00,$01 ;
                    db $C3,$1C,$0A,$6F,$00,$01,$C4,$1C ;
                    db $0A,$93,$00,$01,$C2,$1C,$0A,$89 ;
                    db $00,$01,$C5,$1C,$0A,$6B,$00,$01 ;
                    db $C1,$1C,$0A,$48,$00,$01,$C0,$1C ;
                    db $FF,$FF,$02,$09,$00,$13,$4B,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $50,$10,$02,$29,$00,$13,$4C,$10 ;
                    db $4E,$10,$4F,$10,$4A,$10,$4F,$10 ;
                    db $4A,$10,$4F,$10,$4A,$10,$4E,$10 ;
                    db $51,$10,$02,$4D,$80,$07,$04,$12 ;
                    db $10,$12,$00,$12,$10,$12,$02,$4E ;
                    db $80,$07,$07,$12,$13,$12,$03,$12 ;
                    db $13,$12,$02,$C8,$00,$1F,$4B,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$50,$10,$02,$E8 ;
                    db $00,$1F,$4C,$10,$4E,$10,$4F,$10 ;
                    db $4A,$10,$4F,$10,$4A,$10,$4F,$10 ;
                    db $4A,$10,$4F,$10,$4A,$10,$4F,$10 ;
                    db $4A,$10,$4F,$10,$4A,$10,$4E,$10 ;
                    db $51,$10,$FF,$FF,$02,$09,$00,$13 ;
                    db $4B,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$50,$10,$02,$29,$00,$13 ;
                    db $4C,$10,$4E,$10,$4F,$10,$4A,$10 ;
                    db $4F,$10,$4A,$10,$4F,$10,$4A,$10 ;
                    db $4E,$10,$51,$10,$02,$4D,$80,$07 ;
                    db $04,$12,$10,$12,$00,$12,$10,$12 ;
                    db $02,$4E,$80,$07,$07,$12,$13,$12 ;
                    db $03,$12,$13,$12,$02,$C8,$00,$1F ;
                    db $4B,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$4D,$10 ;
                    db $4D,$10,$4D,$10,$4D,$10,$50,$10 ;
                    db $02,$E8,$00,$1F,$4C,$10,$4E,$10 ;
                    db $4F,$10,$4A,$10,$4F,$10,$4A,$10 ;
                    db $4F,$10,$4A,$10,$4F,$10,$4A,$10 ;
                    db $4F,$10,$4A,$10,$4F,$10,$4A,$10 ;
                    db $4E,$10,$51,$10,$0A,$68,$00,$1F ;
                    db $D4,$1D,$D5,$1D,$C1,$1D,$C2,$1D ;
                    db $CA,$1C,$CB,$1C,$CA,$1C,$CB,$1C ;
                    db $CA,$1C,$CB,$1C,$CA,$1C,$CB,$1C ;
                    db $C0,$1D,$D1,$1D,$D2,$1D,$D3,$1D ;
                    db $0A,$88,$00,$1F,$E8,$1D,$E9,$1D ;
                    db $EA,$1D,$EB,$1D,$E0,$1D,$E1,$1D ;
                    db $E4,$1D,$E5,$1D,$E0,$1D,$E1,$1D ;
                    db $E4,$1D,$E5,$1D,$E8,$1D,$E9,$1D ;
                    db $EA,$1D,$EB,$1D,$0A,$A8,$00,$1F ;
                    db $F8,$1D,$F9,$1D,$FA,$1D,$FB,$1D ;
                    db $F0,$1D,$F1,$1D,$F4,$1D,$F5,$1D ;
                    db $F0,$1D,$F1,$1D,$F4,$1D,$F5,$1D ;
                    db $F8,$1D,$F9,$1D,$FA,$1D,$FB,$1D ;
                    db $0A,$C8,$00,$1F,$C8,$1D,$C9,$1D ;
                    db $CA,$1D,$CB,$1D,$E2,$1D,$E3,$1D ;
                    db $E6,$1D,$E7,$1D,$E2,$1D,$E3,$1D ;
                    db $E6,$1D,$E7,$1D,$C8,$1D,$C9,$1D ;
                    db $CA,$1D,$CB,$1D,$0A,$E8,$00,$1F ;
                    db $D8,$1D,$D9,$1D,$DA,$1D,$DB,$1D ;
                    db $F2,$1D,$F3,$1D,$F6,$1D,$F7,$1D ;
                    db $F2,$1D,$F3,$1D,$F6,$1D,$F7,$1D ;
                    db $D8,$1D,$D9,$1D,$DA,$1D,$DB,$1D ;
                    db $FF,$FF,$02,$8A,$00,$0B,$14,$12 ;
                    db $15,$12,$14,$12,$15,$12,$14,$12 ;
                    db $15,$12,$02,$AA,$00,$0B,$16,$12 ;
                    db $17,$12,$16,$12,$17,$12,$16,$12 ;
                    db $17,$12,$02,$4C,$80,$07,$B8,$08 ;
                    db $BC,$08,$BE,$0C,$BE,$0C,$02,$4D ;
                    db $80,$07,$B9,$08,$BD,$08,$BF,$0C ;
                    db $BF,$0C,$01,$F3,$00,$03,$D6,$10 ;
                    db $D7,$10,$02,$12,$00,$07,$D8,$10 ;
                    db $D9,$10,$DA,$10,$DB,$10,$02,$32 ;
                    db $00,$07,$DC,$10,$DD,$10,$DE,$10 ;
                    db $DF,$10,$02,$C8,$00,$1F,$08,$0A ;
                    db $09,$0A,$08,$0A,$09,$0A,$08,$0A ;
                    db $09,$0A,$08,$0A,$09,$0A,$08,$0A ;
                    db $09,$0A,$08,$0A,$09,$0A,$08,$0A ;
                    db $09,$0A,$08,$0A,$09,$0A,$02,$E8 ;
                    db $00,$1F,$18,$0A,$19,$0A,$18,$0A ;
                    db $19,$0A,$18,$0A,$19,$0A,$18,$0A ;
                    db $19,$0A,$18,$0A,$19,$0A,$18,$0A ;
                    db $19,$0A,$18,$0A,$19,$0A,$18,$0A ;
                    db $19,$0A,$FF,$FF,$02,$0A,$80,$0B ;
                    db $B8,$08,$BA,$08,$BA,$08,$BC,$08 ;
                    db $BE,$0C,$BE,$0C,$02,$0B,$80,$0B ;
                    db $B9,$08,$BB,$08,$BB,$08,$BD,$08 ;
                    db $BF,$0C,$BF,$0C,$02,$92,$00,$07 ;
                    db $14,$12,$15,$12,$14,$12,$15,$12 ;
                    db $02,$B2,$00,$07,$16,$12,$17,$12 ;
                    db $16,$12,$17,$12,$02,$C8,$00,$1F ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $08,$0A,$09,$0A,$08,$0A,$09,$0A ;
                    db $02,$E8,$00,$1F,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$18,$0A,$19,$0A ;
                    db $18,$0A,$19,$0A,$FF,$FF ;

DATA_0EABD3:        db $01,$EB,$40,$02,$24,$00,$02,$0A ;
                    db $40,$06,$24,$00,$02,$2A,$40,$06 ;
                    db $24,$00,$02,$53,$40,$06,$24,$00 ;
                    db $02,$72,$40,$0A,$24,$00,$02,$91 ;
                    db $40,$0C,$24,$00,$02,$B0,$40,$0E ;
                    db $24,$00,$FF,$FF ;

DATA_0EABFF:        db $09,$EB,$00,$09,$C0,$1C,$24,$00 ;
                    db $C5,$1C,$24,$00,$C3,$1C,$0A,$0C ;
                    db $00,$05,$C2,$1C,$24,$00,$C1,$1C ;
                    db $0A,$29,$00,$01,$C2,$1C,$0A,$4B ;
                    db $00,$01,$C1,$1C,$0A,$14,$00,$01 ;
                    db $C5,$1C,$0A,$53,$00,$07,$C3,$1C ;
                    db $24,$00,$C4,$1C,$24,$00,$0A,$68 ;
                    db $00,$1F,$C6,$15,$C7,$15,$C8,$15 ;
                    db $C9,$15,$CA,$15,$CB,$15,$C6,$1C ;
                    db $CD,$15,$C6,$15,$C7,$15,$C8,$15 ;
                    db $C9,$15,$CA,$15,$CB,$15,$CC,$15 ;
                    db $CD,$15,$0A,$88,$00,$1F,$D6,$15 ;
                    db $D7,$15,$D8,$15,$D9,$15,$DA,$15 ;
                    db $DB,$15,$DC,$15,$DD,$15,$D6,$15 ;
                    db $D7,$15,$D8,$15,$D9,$15,$DA,$15 ;
                    db $DB,$15,$DC,$15,$DD,$15,$0A,$A8 ;
                    db $00,$1F,$E6,$15,$E7,$15,$E8,$15 ;
                    db $E9,$15,$EA,$15,$EB,$15,$EC,$15 ;
                    db $ED,$15,$E6,$15,$E7,$15,$E8,$15 ;
                    db $E9,$15,$EA,$15,$EB,$15,$EC,$15 ;
                    db $ED,$15,$FF,$FF ;

DATA_0EACA3:        db $00,$00,$20,$00,$40,$00,$60,$00 ;
                    db $80,$00,$A0,$00,$C0,$00,$E0,$00 ;
                    db $00,$01,$20,$01,$40,$01,$60,$01 ;
                    db $80,$01,$A0,$01,$C0,$01,$E0,$01 ;
                    db $00,$02,$20,$02,$40,$02,$60,$02 ;
                    db $80,$02,$A0,$02,$C0,$02,$E0,$02 ;
                    db $00,$03,$20,$03,$40,$03,$A0,$03 ;
                    db $E0,$03,$C0,$03,$E0,$03,$20,$04 ;
                    db $60,$03,$80,$03,$E0,$02,$E0,$02 ;
                    db $E0,$02,$E0,$02,$00,$05,$20,$05 ;
                    db $40,$05,$60,$05,$80,$05,$C0,$05 ;
                    db $E0,$05,$00,$06,$20,$06,$40,$06 ;
                    db $60,$06,$40,$07,$80,$07,$A0,$07 ;
                    db $60,$04,$A0,$04,$C0,$04,$E0,$04 ;
                    db $A0,$05,$80,$06,$A0,$06,$C0,$06 ;
                    db $E0,$06,$00,$07,$00,$04,$20,$07 ;
                    db $40,$04,$80,$04 ;

DATA_0EAD27:        db $DD,$42,$FF,$7F,$84,$10,$00,$38 ;
                    db $08,$77,$5F,$03,$59,$02,$00,$38 ;

DATA_0EAD37:        db $08,$77,$FF,$7F,$B9,$73,$35,$63 ;
                    db $08,$77,$FF,$7F,$2B,$72,$C8,$65 ;
                    db $08,$77,$FF,$7F,$84,$10,$DF,$1B ;
                    db $7F,$02,$39,$01,$DA,$1A,$F3,$0D ;
                    db $0D,$05,$7F,$4F,$98,$32,$B1,$15 ;
                    db $FF,$3F,$BF,$45,$D4,$20,$3A,$2D ;
                    db $AF,$7B,$FF,$7F,$84,$10,$F3,$57 ;
                    db $40,$03,$A0,$01,$00,$00,$00,$00 ;
                    db $00,$00,$D0,$04,$54,$05,$D8,$11 ;
                    db $5C,$12,$AA,$2B,$00,$38,$62,$0A ;
                    db $AF,$7B,$FF,$7F,$42,$08,$30,$2B ;
                    db $B8,$14,$3F,$0D,$9F,$02,$5F,$03 ;
                    db $08,$00,$8E,$00,$75,$15,$3A,$1A ;
                    db $5F,$3F,$D6,$5A,$29,$25,$EF,$3D ;
                    db $AF,$7B,$FF,$7F,$84,$10,$B8,$7F ;
                    db $B0,$72,$FC,$32,$56,$22,$CF,$11 ;
                    db $4B,$05,$E6,$09,$AB,$1A,$30,$2B ;
                    db $B4,$3B,$7F,$28,$0E,$00,$15,$00 ;
                    db $AF,$7B,$6D,$37,$84,$10,$A9,$22 ;
                    db $9B,$21,$38,$15,$B4,$04,$70,$04 ;
                    db $0C,$04,$C2,$21,$46,$32,$A9,$3E ;
                    db $0C,$4B,$4E,$53,$C3,$01,$46,$16 ;
                    db $2F,$77,$FF,$7F,$84,$10,$9F,$72 ;
                    db $B8,$51,$B0,$30,$97,$7E,$B0,$6D ;
                    db $EA,$54,$4A,$29,$10,$42,$F7,$5E ;
                    db $7B,$6F,$1F,$57,$1C,$25,$3F,$3E ;
                    db $AF,$7B,$FF,$7F,$84,$10,$8C,$77 ;
                    db $4A,$6F,$08,$67,$C6,$5E,$84,$56 ;
                    db $42,$4E,$C2,$21,$46,$32,$CA,$42 ;
                    db $2D,$4F,$72,$63,$84,$10,$84,$10 ;
                    db $BC,$45,$FF,$7F,$A5,$14,$A5,$01 ;
                    db $49,$02,$CD,$02,$31,$46,$D6,$5A ;
                    db $00,$00,$51,$03,$19,$00,$1F,$01 ;
                    db $1F,$06,$9F,$12,$7A,$01,$13,$01 ;
                    db $BC,$45,$FF,$7F,$A5,$14,$8D,$00 ;
                    db $12,$01,$D9,$19,$9E,$2A,$FF,$36 ;
                    db $00,$00,$FF,$7F,$13,$08,$9B,$2D ;
                    db $5F,$46,$9F,$53,$9F,$1B,$5F,$1A ;
                    db $BC,$45,$FF,$7F,$A5,$14,$3B,$01 ;
                    db $7F,$02,$9F,$17,$35,$01,$5E,$26 ;
                    db $00,$00,$9B,$0C,$35,$01,$1D,$26 ;
                    db $DF,$42,$DF,$6A,$1D,$4A,$FA,$28 ;
                    db $4E,$73,$FF,$7F,$A5,$14,$84,$3D ;
                    db $29,$52,$BF,$27,$BB,$31,$BF,$3A ;
                    db $00,$00,$2F,$15,$5D,$35,$5F,$52 ;
                    db $9B,$16,$9F,$1C,$19,$0C,$19,$0C ;
                    db $BC,$45,$FF,$7F,$A5,$14,$3B,$01 ;
                    db $7F,$02,$9F,$17,$35,$01,$5E,$26 ;
                    db $00,$00,$9B,$0C,$20,$02,$E0,$0E ;
                    db $A0,$23,$DF,$6A,$1D,$4A,$FA,$28 ;
                    db $BC,$45,$FF,$7F,$A5,$14,$03,$02 ;
                    db $0A,$0F,$F1,$2B,$35,$01,$5E,$26 ;
                    db $00,$00,$5F,$3F,$4A,$29,$31,$46 ;
                    db $18,$63,$3A,$1A,$75,$15,$8E,$00 ;
                    db $BC,$45,$FF,$7F,$A5,$14,$55,$00 ;
                    db $3E,$0C,$9F,$3D,$35,$01,$5E,$26 ;
                    db $00,$00,$DF,$42,$25,$40,$D2,$74 ;
                    db $B2,$7E,$1D,$26,$57,$15,$AF,$00 ;
                    db $BC,$45,$FF,$7F,$A5,$14,$11,$01 ;
                    db $B9,$0D,$DD,$22,$9C,$2D,$BF,$3A ;
                    db $00,$00,$00,$00,$EC,$14,$D4,$1D ;
                    db $9A,$36,$BC,$20,$96,$10,$0F,$00 ;
                    db $92,$7F,$FF,$7F,$84,$10,$0C,$5B ;
                    db $8A,$56,$08,$52,$A6,$4D,$44,$49 ;
                    db $E2,$44,$87,$08,$EA,$14,$4D,$21 ;
                    db $8F,$29,$36,$29,$31,$08,$D3,$1C ;
                    db $92,$7F,$FF,$7F,$84,$10,$2B,$72 ;
                    db $C8,$65,$86,$5D,$36,$7F,$B0,$6D ;
                    db $EA,$54,$4A,$29,$10,$42,$F7,$5E ;
                    db $7B,$6F,$FF,$52,$BC,$35,$9C,$46 ;
                    db $92,$7F,$FF,$7F,$00,$00,$1F,$0A ;
                    db $1D,$01,$13,$00,$00,$00,$00,$00 ;
                    db $00,$00,$87,$08,$EA,$14,$4D,$21 ;
                    db $8F,$29,$80,$42,$40,$29,$E0,$35 ;
                    db $2F,$77,$FF,$7F,$84,$10,$F0,$57 ;
                    db $40,$03,$A0,$01,$DF,$1B,$7F,$02 ;
                    db $39,$01,$E1,$3C,$86,$51,$2B,$66 ;
                    db $D0,$7A,$AA,$2B,$00,$38,$62,$0A ;
                    db $2F,$77,$FF,$7F,$84,$10,$00,$00 ;
                    db $00,$00,$00,$00,$DA,$1A,$F3,$0D ;
                    db $0D,$05,$61,$39,$06,$4E,$AB,$62 ;
                    db $50,$77,$D6,$5A,$29,$25,$EF,$3D ;
                    db $2F,$77,$FF,$7F,$00,$00,$4E,$26 ;
                    db $EC,$49,$AA,$41,$68,$39,$26,$31 ;
                    db $E4,$28,$41,$1C,$A3,$28,$06,$35 ;
                    db $48,$3D,$25,$05,$88,$0D,$EB,$19 ;
                    db $2F,$77,$39,$67,$00,$00,$C5,$2C ;
                    db $89,$3D,$CD,$3D,$51,$4E,$F8,$2E ;
                    db $74,$1E,$41,$1C,$A3,$28,$06,$35 ;
                    db $48,$3D,$10,$42,$08,$21,$8C,$31 ;
                    db $BC,$45,$FF,$7F,$A5,$14,$E0,$2C ;
                    db $A3,$41,$48,$56,$ED,$6A,$71,$7F ;
                    db $00,$00,$FF,$7F,$13,$30,$9B,$4D ;
                    db $5F,$62,$9F,$53,$9F,$1B,$5F,$1A ;
                    db $BC,$45,$FF,$7F,$A5,$14,$22,$1E ;
                    db $01,$2F,$E0,$3F,$35,$01,$9F,$1A ;
                    db $00,$00,$50,$77,$4A,$29,$31,$46 ;
                    db $18,$63,$AB,$62,$06,$4E,$61,$39 ;
                    db $2F,$77,$FF,$7F,$84,$10,$1F,$3B ;
                    db $5F,$03,$9F,$02,$D7,$11,$53,$01 ;
                    db $CF,$00,$00,$00,$00,$00,$00,$00 ;
                    db $00,$00,$00,$00,$00,$00,$00,$00 ;
                    db $2F,$77,$FF,$7F,$A5,$14,$BF,$05 ;
                    db $1E,$00,$17,$00,$BF,$46,$5D,$36 ;
                    db $BB,$25,$EF,$04,$73,$0D,$7F,$4F ;
                    db $0F,$7F,$00,$00,$00,$00,$00,$00 ;
                    db $BC,$45,$FF,$7F,$C5,$14,$6D,$25 ;
                    db $12,$3A,$96,$4A,$1A,$5B,$9E,$6B ;
                    db $00,$00,$FF,$7F,$0E,$21,$B7,$35 ;
                    db $79,$4E,$9F,$53,$9F,$1B,$5F,$1A ;
                    db $BC,$45,$FF,$7F,$A5,$14,$22,$1E ;
                    db $01,$2F,$E0,$3F,$35,$01,$9F,$1A ;
                    db $00,$00,$1A,$5B,$4A,$29,$31,$46 ;
                    db $18,$63,$96,$4A,$12,$3A,$6D,$25 ;
                    db $08,$77,$FF,$7F,$84,$10,$F3,$57 ;
                    db $40,$03,$A0,$01,$00,$00,$00,$00 ;
                    db $00,$00,$28,$1D,$AC,$2D,$30,$3E ;
                    db $B4,$4E,$AA,$2B,$00,$38,$62,$0A ;
                    db $08,$77,$EF,$15,$4C,$11,$2E,$01 ;
                    db $EC,$00,$AA,$00,$0A,$09,$63,$1D ;
                    db $21,$15,$64,$08,$A6,$10,$E8,$18 ;
                    db $2A,$21,$6C,$29,$AE,$31,$F0,$39 ;
                    db $08,$77,$FF,$7F,$84,$10,$7F,$09 ;
                    db $5A,$00,$0F,$00,$97,$7E,$B0,$6D ;
                    db $EA,$54,$6D,$25,$12,$3A,$96,$4A ;
                    db $1A,$5B,$1F,$57,$1C,$25,$3F,$3E ;
                    db $08,$77,$FF,$7F,$84,$10,$7F,$09 ;
                    db $5A,$00,$0F,$00,$97,$7E,$B0,$6D ;
                    db $EA,$54,$6D,$25,$12,$3A,$96,$4A ;
                    db $1A,$5B,$D6,$5A,$29,$25,$EF,$3D ;
                    db $08,$77,$FF,$7F,$AD,$3D,$4A,$31 ;
                    db $E7,$24,$F6,$01,$92,$01,$2F,$01 ;
                    db $AC,$00,$64,$08,$A6,$10,$E8,$18 ;
                    db $2A,$21,$6C,$29,$88,$00,$CA,$00 ;
                    db $AF,$7B,$FF,$7F,$42,$08,$30,$2B ;
                    db $B8,$14,$3F,$0D,$9F,$02,$5F,$03 ;
                    db $08,$00,$8E,$00,$75,$15,$3A,$1A ;
                    db $5F,$3F,$7B,$6F,$D6,$5A,$EF,$3D ;
                    db $08,$77,$FF,$7F,$84,$10,$BD,$77 ;
                    db $F7,$5E,$EF,$3D,$DF,$1B,$7F,$02 ;
                    db $39,$01,$92,$04,$17,$0D,$DD,$25 ;
                    db $7F,$3A,$7B,$6F,$00,$38,$94,$52 ;
                    db $08,$39,$FF,$7F,$42,$08,$30,$2B ;
                    db $B8,$14,$3F,$0D,$9F,$02,$5F,$03 ;
                    db $08,$00,$8E,$00,$75,$15,$3A,$1A ;
                    db $5F,$3F,$7B,$6F,$D6,$5A,$EF,$3D ;
                    db $08,$77,$FF,$7F,$84,$10,$BD,$77 ;
                    db $F7,$5E,$EF,$3D,$DF,$1B,$7F,$02 ;
                    db $39,$01,$92,$04,$17,$0D,$DD,$25 ;
                    db $7F,$3A,$7B,$6F,$00,$38,$94,$52 ;
                    db $08,$39,$4B,$4D,$C6,$18,$09,$45 ;
                    db $2D,$4D,$EB,$44,$A9,$3C,$FF,$7F ;
                    db $B9,$73,$C2,$21,$46,$32,$CA,$42 ;
                    db $2D,$4F,$72,$63,$C3,$30,$04,$39 ;
                    db $63,$3C,$7B,$7F,$73,$7E,$6B,$5D ;
                    db $FB,$6F,$F3,$4F,$EB,$2E,$E3,$0D ;
                    db $FF,$3F,$F7,$1E,$52,$0A,$CE,$01 ;
                    db $7F,$6F,$7F,$4E,$77,$2D,$75,$0C ;
                    db $08,$77,$FF,$7F,$84,$10,$F3,$57 ;
                    db $40,$03,$A0,$01,$DF,$1B,$7F,$02 ;
                    db $39,$01,$D0,$04,$54,$05,$D8,$11 ;
                    db $5C,$12,$AA,$2B,$00,$38,$62,$0A ;
                    db $08,$77,$FF,$7F,$84,$10,$00,$00 ;
                    db $00,$00,$00,$00,$DA,$1A,$F3,$0D ;
                    db $0D,$05,$8E,$00,$75,$15,$3A,$1A ;
                    db $5F,$3F,$D6,$5A,$29,$25,$EF,$3D ;
                    db $08,$77,$FF,$7F,$84,$10,$B8,$7F ;
                    db $B0,$72,$FC,$32,$56,$22,$CF,$11 ;
                    db $4B,$05,$D6,$5A,$39,$67,$9C,$73 ;
                    db $FF,$7F,$7F,$28,$0E,$00,$15,$00 ;
                    db $AF,$7B,$FF,$7F,$E7,$1C,$F9,$7F ;
                    db $93,$7F,$0F,$77,$DF,$32,$5B,$22 ;
                    db $D7,$11,$B3,$01,$37,$0A,$BB,$1A ;
                    db $5F,$2F,$3C,$1D,$34,$00,$B8,$0C ;
                    db $AF,$7B,$FF,$7F,$E7,$1C,$FF,$4E ;
                    db $BF,$42,$FF,$53,$9D,$47,$3A,$3B ;
                    db $D7,$2E,$7E,$2E,$DF,$3A,$3F,$47 ;
                    db $9F,$4B,$00,$00,$00,$00,$00,$00 ;
                    db $AF,$7B,$38,$7F,$6D,$21,$BF,$7F ;
                    db $38,$7F,$3B,$5B,$B7,$4A,$33,$3A ;
                    db $AF,$29,$13,$2A,$97,$3A,$1B,$4B ;
                    db $9E,$5B,$B4,$76,$C9,$69,$30,$72 ;
                    db $AF,$7B,$FF,$7F,$84,$10,$96,$2B ;
                    db $13,$17,$9D,$3B,$F8,$12,$74,$0A ;
                    db $F0,$01,$03,$2A,$87,$3A,$0B,$4B ;
                    db $6E,$57,$B3,$6B,$0B,$02,$8F,$02 ;
                    db $AF,$7B,$0F,$13,$C5,$05,$8B,$0A ;
                    db $F8,$01,$72,$01,$0D,$01,$FF,$7F ;
                    db $B9,$73,$C2,$21,$46,$32,$A9,$3E ;
                    db $0C,$4B,$B1,$5F,$89,$05,$29,$0A ;
                    db $AF,$7B,$FF,$7F,$84,$10,$FF,$7F ;
                    db $D9,$6F,$FF,$7F,$7B,$77,$F7,$66 ;
                    db $73,$56,$7F,$4E,$FF,$5E,$7F,$6F ;
                    db $FF,$7F,$72,$63,$D1,$4E,$55,$5F ;
                    db $AF,$7B,$FF,$7F,$83,$08,$F4,$4E ;
                    db $19,$4B,$95,$3A,$11,$2A,$8D,$19 ;
                    db $09,$09,$A7,$10,$2B,$21,$AF,$31 ;
                    db $33,$42,$B7,$52,$EC,$2D,$70,$3E ;
                    db $08,$77,$EF,$15,$4C,$11,$2E,$01 ;
                    db $EC,$00,$AA,$00,$0A,$09,$63,$1D ;
                    db $21,$15,$63,$0C,$A3,$14,$E5,$1C ;
                    db $27,$25,$69,$2D,$AB,$35,$ED,$3D ;
                    db $08,$77,$63,$0C,$E5,$1C,$69,$2D ;
                    db $27,$25,$0B,$1D,$EA,$18,$A8,$10 ;
                    db $66,$08,$63,$0C,$A3,$14,$E5,$1C ;
                    db $27,$25,$69,$2D,$D6,$00,$5A,$01 ;
                    db $92,$7F,$FF,$7F,$42,$08,$31,$46 ;
                    db $EF,$3D,$AD,$35,$6B,$2D,$29,$25 ;
                    db $E7,$1C,$EA,$10,$4D,$1D,$B0,$29 ;
                    db $13,$36,$08,$32,$42,$19,$A5,$25 ;
                    db $92,$7F,$FF,$7F,$F8,$29,$FF,$67 ;
                    db $DF,$4B,$7E,$3B,$1B,$33,$B8,$26 ;
                    db $55,$1A,$79,$2E,$DC,$3A,$3F,$47 ;
                    db $9F,$53,$1F,$4F,$5B,$36,$BE,$42 ;
                    db $92,$7F,$FF,$7F,$F8,$29,$FF,$6B ;
                    db $FC,$5F,$B9,$53,$56,$47,$F3,$3A ;
                    db $90,$2E,$79,$2E,$DC,$3A,$3F,$47 ;
                    db $9F,$53,$1F,$4F,$5B,$36,$BE,$42 ;
                    db $AF,$7B,$FF,$7F,$84,$10,$F9,$29 ;
                    db $75,$19,$98,$1A,$15,$0E,$91,$01 ;
                    db $0D,$01,$4D,$18,$D1,$20,$55,$29 ;
                    db $D9,$31,$5D,$3A,$6E,$00,$F1,$08 ;
                    db $AF,$7B,$D4,$02,$84,$10,$FF,$7F ;
                    db $99,$3E,$15,$2E,$91,$1D,$2E,$09 ;
                    db $AA,$00,$C2,$21,$46,$32,$A9,$3E ;
                    db $0C,$4B,$4E,$53,$39,$67,$9C,$73 ;
                    db $BC,$45,$FF,$7F,$63,$0C,$C0,$40 ;
                    db $65,$55,$E9,$65,$31,$46,$D6,$5A ;
                    db $00,$00,$6D,$76,$12,$00,$1A,$10 ;
                    db $1F,$31,$7A,$36,$D5,$21,$30,$0D ;
                    db $08,$77,$FF,$7F,$84,$10,$BF,$53 ;
                    db $3E,$03,$5C,$02,$5F,$4A,$5F,$31 ;
                    db $1D,$00,$4A,$00,$B2,$04,$1C,$0A ;
                    db $3D,$13,$7F,$67,$7C,$01,$19,$00 ;
                    db $84,$10,$FF,$7F,$CA,$04,$55,$01 ;
                    db $1C,$1A,$3E,$1B,$FF,$2D,$1F,$47 ;
                    db $B5,$56,$73,$11,$42,$12,$29,$33 ;
                    db $9F,$1C,$18,$0C,$E6,$79,$44,$51 ;
                    db $AF,$7B,$FF,$7F,$84,$10,$BF,$53 ;
                    db $3E,$03,$5C,$02,$00,$00,$00,$00 ;
                    db $00,$00,$58,$10,$5F,$01,$1F,$0E ;
                    db $0E,$14,$BF,$02,$7C,$01,$19,$00 ;
                    db $84,$10,$FF,$7F,$63,$0C,$13,$01 ;
                    db $DA,$11,$3E,$1B,$FF,$2D,$1F,$47 ;
                    db $F7,$5E,$2F,$15,$12,$00,$19,$0C ;
                    db $9F,$1C,$2D,$76,$89,$71,$05,$59 ;

DATA_0EB4E7:        db $D0,$04,$B1,$20,$C1,$23,$D1,$14 ;
                    db $92,$04,$A2,$23,$B2,$14,$C2,$47 ;
                    db $83,$20,$93,$14,$A3,$47,$74,$04 ;
                    db $84,$14,$94,$47,$55,$04,$65,$09 ;
                    db $75,$06,$85,$47,$D5,$17,$46,$20 ;
                    db $56,$14,$66,$0C,$76,$14,$86,$47 ;
                    db $C6,$17,$D6,$14,$47,$21,$57,$01 ;
                    db $67,$47,$B7,$10,$C7,$14,$48,$22 ;
                    db $58,$08,$68,$1A,$78,$47,$B8,$13 ;
                    db $59,$15,$69,$1B,$79,$47,$A9,$10 ;
                    db $B9,$14,$4A,$20,$5A,$14,$6A,$47 ;
                    db $AA,$18,$4B,$22,$5B,$08,$6B,$47 ;
                    db $9B,$10,$AB,$14,$5C,$06,$6C,$47 ;
                    db $8C,$17,$9C,$02,$5D,$05,$6D,$08 ;
                    db $7D,$47,$8D,$19,$9D,$03,$AD,$1A ;
                    db $BD,$08,$6E,$22,$7E,$08,$8E,$47 ;
                    db $9E,$19,$AE,$2F,$BE,$11,$CE,$08 ;
                    db $7F,$21,$8F,$47,$CF,$19,$60,$A0 ;
                    db $70,$14,$80,$47,$61,$21,$71,$2C ;
                    db $81,$47,$62,$21,$72,$2D,$82,$47 ;
                    db $63,$05,$73,$08,$83,$1A,$93,$47 ;
                    db $74,$22,$84,$0B,$94,$22,$A4,$08 ;
                    db $B4,$47,$A5,$21,$B5,$47,$A6,$05 ;
                    db $B6,$08,$C6,$47,$B7,$22,$C7,$08 ;
                    db $D7,$07,$18,$20,$28,$29,$C8,$22 ;
                    db $D8,$08,$09,$20,$19,$14,$29,$0C ;
                    db $39,$09,$D9,$05,$0A,$21,$1A,$2C ;
                    db $2A,$07,$3A,$0A,$0B,$21,$1B,$2D ;
                    db $2B,$07,$3B,$0A,$0C,$22,$1C,$08 ;
                    db $2C,$1A,$3C,$2B,$1D,$22,$2D,$0B ;
                    db $D0,$A0,$A1,$20,$B1,$63,$D1,$14 ;
                    db $82,$04,$92,$23,$A2,$14,$B2,$47 ;
                    db $33,$04,$43,$23,$53,$09,$63,$20 ;
                    db $73,$23,$83,$14,$93,$47,$24,$20 ;
                    db $34,$02,$44,$47,$54,$0C,$64,$14 ;
                    db $25,$22,$35,$03,$45,$47,$36,$05 ;
                    db $46,$08,$56,$47,$37,$20,$47,$19 ;
                    db $57,$08,$67,$47,$28,$04,$38,$14 ;
                    db $48,$47,$29,$22,$39,$08,$49,$47 ;
                    db $3A,$05,$4A,$10,$5A,$14,$6A,$47 ;
                    db $8A,$1A,$9A,$10,$AA,$14,$3B,$20 ;
                    db $4B,$14,$5B,$47,$7B,$1A,$8B,$0B ;
                    db $9B,$21,$9C,$10,$3C,$21,$4C,$01 ;
                    db $5C,$47,$7C,$0A,$8C,$00,$9C,$05 ;
                    db $AC,$08,$BC,$1A,$CC,$08,$3D,$05 ;
                    db $4D,$08,$5D,$07,$6D,$1A,$7D,$0B ;
                    db $AD,$22,$BD,$0B,$CD,$06,$DD,$1A ;
                    db $4E,$22,$5E,$24,$6E,$0B,$CE,$05 ;
                    db $DE,$0B,$B0,$84,$C0,$23,$D0,$29 ;
                    db $A1,$20,$B1,$47,$82,$20,$92,$0F ;
                    db $A2,$14,$B2,$47,$13,$20,$23,$09 ;
                    db $73,$04,$83,$02,$93,$47,$04,$20 ;
                    db $14,$14,$24,$07,$34,$29,$74,$15 ;
                    db $84,$03,$94,$47,$05,$21,$15,$01 ;
                    db $25,$07,$35,$0A,$65,$04,$75,$47 ;
                    db $85,$18,$06,$05,$16,$08,$26,$1A ;
                    db $36,$0B,$66,$06,$76,$10,$86,$11 ;
                    db $96,$08,$A6,$47,$17,$22,$27,$0B ;
                    db $67,$21,$77,$18,$87,$47,$58,$20 ;
                    db $68,$14,$78,$19,$88,$08,$98,$47 ;
                    db $A8,$1A,$B8,$08,$39,$04,$49,$0F ;
                    db $59,$14,$69,$47,$89,$11,$99,$1F ;
                    db $A9,$1B,$B9,$19,$C9,$08,$2A,$27 ;
                    db $3A,$28,$4A,$47,$AA,$08,$CA,$13 ;
                    db $3B,$22,$4B,$08,$5B,$47,$6B,$1A ;
                    db $7B,$08,$AB,$11,$BB,$1C,$CB,$08 ;
                    db $4C,$05,$5C,$24,$6C,$0B,$7C,$05 ;
                    db $8C,$08,$9C,$47,$CC,$19,$8D,$22 ;
                    db $9D,$08,$AD,$47,$9E,$05,$AE,$08 ;
                    db $BE,$1A,$CE,$08,$DE,$07,$AF,$22 ;
                    db $BF,$0B,$CF,$05,$DF,$0B,$D0,$A0 ;
                    db $91,$20,$A1,$29,$C1,$20,$D1,$14 ;
                    db $72,$04,$82,$23,$92,$14,$A2,$0C ;
                    db $B2,$0F,$C2,$14,$D2,$07,$43,$20 ;
                    db $53,$09,$63,$20,$73,$14,$83,$47 ;
                    db $34,$04,$44,$14,$54,$0C,$64,$1D ;
                    db $74,$14,$84,$47,$25,$20,$35,$14 ;
                    db $45,$2C,$55,$47,$26,$22,$36,$08 ;
                    db $46,$2D,$56,$47,$37,$05,$47,$08 ;
                    db $57,$47,$97,$17,$A7,$2E,$48,$22 ;
                    db $58,$08,$68,$1A,$78,$47,$88,$10 ;
                    db $98,$14,$A8,$0C,$59,$15,$69,$1B ;
                    db $79,$47,$89,$18,$99,$01,$4A,$20 ;
                    db $5A,$14,$6A,$47,$8A,$19,$9A,$08 ;
                    db $AA,$1A,$4B,$21,$5B,$01,$6B,$47 ;
                    db $9B,$19,$AB,$1B,$4C,$05,$5C,$08 ;
                    db $6C,$47,$5D,$22,$6D,$25,$7D,$28 ;
                    db $8D,$47,$7E,$22,$8E,$08,$9E,$1A ;
                    db $AE,$08,$BE,$07,$CE,$1A,$DE,$08 ;
                    db $8F,$05,$9F,$0B,$AF,$05,$BF,$24 ;
                    db $CF,$0B,$DF,$05,$A1,$84,$B1,$09 ;
                    db $D1,$20,$02,$04,$12,$23,$22,$29 ;
                    db $92,$20,$A2,$14,$B2,$0C,$C2,$0F ;
                    db $D2,$14,$03,$21,$13,$2C,$23,$0A ;
                    db $63,$20,$73,$23,$83,$26,$93,$28 ;
                    db $A3,$01,$B3,$47,$04,$21,$14,$2D ;
                    db $24,$0A,$54,$20,$64,$14,$74,$47 ;
                    db $94,$11,$A4,$08,$05,$05,$15,$24 ;
                    db $25,$0B,$55,$21,$65,$01,$75,$47 ;
                    db $56,$22,$66,$08,$76,$47,$86,$17 ;
                    db $96,$14,$67,$05,$77,$08,$87,$19 ;
                    db $97,$08,$A7,$47,$68,$20,$78,$14 ;
                    db $88,$47,$98,$11,$A8,$08,$59,$04 ;
                    db $69,$14,$79,$2C,$89,$47,$A9,$18 ;
                    db $5A,$22,$6A,$08,$7A,$2D,$8A,$47 ;
                    db $AA,$19,$BA,$08,$6B,$22,$7B,$08 ;
                    db $8B,$47,$BB,$11,$CB,$1B,$DB,$08 ;
                    db $7C,$22,$8C,$08,$9C,$47,$AC,$1A ;
                    db $BC,$08,$DC,$19,$8D,$05,$9D,$24 ;
                    db $AD,$0B,$BD,$05,$CD,$08,$DD,$07 ;
                    db $CE,$22,$DE,$08,$DF,$22,$D0,$A0 ;
                    db $B1,$04,$C1,$0F,$D1,$14,$A2,$20 ;
                    db $B2,$14,$C2,$47,$93,$04,$A3,$47 ;
                    db $94,$21,$A4,$01,$B4,$47,$95,$22 ;
                    db $A5,$08,$B5,$47,$A6,$22,$B6,$08 ;
                    db $C6,$47,$77,$04,$87,$09,$B7,$15 ;
                    db $C7,$08,$D7,$07,$68,$20,$78,$14 ;
                    db $88,$0C,$98,$09,$A8,$20,$B8,$14 ;
                    db $C8,$19,$D8,$08,$49,$20,$59,$0F ;
                    db $69,$14,$79,$47,$99,$0C,$A9,$14 ;
                    db $3A,$04,$4A,$14,$5A,$47,$3B,$06 ;
                    db $4B,$47,$2C,$20,$3C,$14,$4C,$2C ;
                    db $5C,$47,$2D,$22,$3D,$08,$4D,$2D ;
                    db $5D,$47,$7D,$1A,$8D,$08,$3E,$05 ;
                    db $4E,$47,$6E,$1A,$7E,$0B,$8E,$15 ;
                    db $9E,$08,$4F,$22,$5F,$08,$6F,$0C ;
                    db $7F,$23,$8F,$14,$9F,$19,$AF,$08 ;
                    db $BF,$47,$40,$A0,$50,$14,$60,$47 ;
                    db $A0,$19,$B0,$1C,$C0,$08,$D0,$07 ;
                    db $31,$20,$41,$14,$51,$47,$32,$21 ;
                    db $42,$47,$52,$01,$33,$22,$43,$08 ;
                    db $53,$47,$44,$05,$54,$08,$64,$47 ;
                    db $45,$20,$55,$14,$65,$47,$36,$04 ;
                    db $46,$0E,$56,$14,$66,$47,$76,$17 ;
                    db $86,$14,$27,$20,$37,$47,$67,$10 ;
                    db $77,$14,$28,$05,$38,$24,$48,$08 ;
                    db $58,$47,$68,$18,$49,$05,$59,$10 ;
                    db $69,$14,$79,$2C,$89,$47,$5A,$22 ;
                    db $6A,$08,$7A,$2D,$8A,$47,$6B,$05 ;
                    db $7B,$08,$8B,$47,$7C,$22,$8C,$08 ;
                    db $9C,$1A,$AC,$24,$BC,$08,$CC,$47 ;
                    db $8D,$05,$9D,$0B,$BD,$22,$CD,$08 ;
                    db $DD,$07,$CE,$05,$DE,$08,$DF,$22 ;
                    db $D2,$A0,$53,$20,$63,$09,$C3,$04 ;
                    db $D3,$14,$44,$04,$54,$14,$64,$0C ;
                    db $74,$23,$84,$09,$94,$04,$A4,$09 ;
                    db $C4,$05,$D4,$08,$35,$20,$45,$14 ;
                    db $55,$47,$75,$10,$85,$0E,$95,$14 ;
                    db $A5,$0C,$B5,$29,$C5,$20,$D5,$14 ;
                    db $36,$21,$46,$47,$76,$14,$B6,$0C ;
                    db $C6,$14,$27,$20,$37,$47,$57,$01 ;
                    db $28,$05,$38,$08,$48,$47,$A8,$10 ;
                    db $B8,$2E,$39,$22,$49,$08,$59,$1A ;
                    db $69,$08,$79,$47,$99,$17,$A9,$14 ;
                    db $B9,$0C,$4A,$05,$5A,$0B,$6A,$22 ;
                    db $7A,$08,$8A,$17,$9A,$14,$AA,$47 ;
                    db $6B,$04,$7B,$14,$8B,$19,$9B,$08 ;
                    db $AB,$47,$6C,$05,$7C,$24,$8C,$17 ;
                    db $9C,$14,$AC,$47,$7D,$04,$8D,$14 ;
                    db $9D,$47,$7E,$21,$8E,$47,$9E,$2C ;
                    db $7F,$21,$8F,$47,$9F,$2D,$70,$85 ;
                    db $80,$08,$90,$47,$71,$20,$81,$19 ;
                    db $91,$08,$A1,$1A,$B1,$08,$C1,$47 ;
                    db $52,$04,$62,$0F,$72,$14,$82,$47 ;
                    db $92,$19,$A2,$1B,$B2,$19,$C2,$08 ;
                    db $43,$20,$53,$02,$63,$47,$C3,$19 ;
                    db $D3,$08,$44,$05,$54,$03,$64,$47 ;
                    db $D4,$19,$55,$22,$65,$1B,$75,$47 ;
                    db $66,$05,$76,$08,$86,$47,$77,$22 ;
                    db $87,$08,$97,$1A,$A7,$08,$B7,$47 ;
                    db $88,$05,$98,$0B,$A8,$05,$B8,$08 ;
                    db $C8,$47,$B9,$22,$C9,$08,$D9,$07 ;
                    db $CA,$05,$DA,$0B,$20,$84,$30,$23 ;
                    db $40,$09,$11,$20,$21,$14,$31,$07 ;
                    db $41,$0C,$51,$09,$12,$21,$22,$01 ;
                    db $32,$07,$42,$07,$52,$0A,$13,$05 ;
                    db $23,$08,$33,$07,$43,$07,$53,$0B ;
                    db $A3,$04,$B3,$23,$C3,$09,$24,$22 ;
                    db $34,$24,$44,$0B,$94,$20,$A4,$14 ;
                    db $B4,$07,$C4,$17,$D4,$0F,$85,$20 ;
                    db $95,$14,$A5,$47,$C5,$14,$86,$22 ;
                    db $96,$08,$A6,$47,$67,$20,$77,$09 ;
                    db $87,$04,$97,$13,$A7,$47,$58,$20 ;
                    db $68,$14,$78,$0C,$88,$14,$98,$13 ;
                    db $A8,$47,$49,$04,$59,$14,$69,$47 ;
                    db $89,$17,$99,$14,$A9,$2C,$4A,$06 ;
                    db $5A,$47,$8A,$19,$9A,$08,$AA,$2D ;
                    db $3B,$20,$4B,$14,$5B,$47,$9B,$19 ;
                    db $AB,$08,$3C,$21,$4C,$47,$5C,$10 ;
                    db $6C,$2E,$7C,$10,$8C,$14,$9C,$10 ;
                    db $AC,$14,$3D,$05,$4D,$10,$5D,$14 ;
                    db $6D,$0C,$7D,$14,$8D,$47,$9D,$14 ;
                    db $4E,$06,$5E,$47,$6E,$2C,$4F,$05 ;
                    db $5F,$08,$6F,$2D,$7F,$47,$50,$A2 ;
                    db $60,$08,$70,$47,$61,$06,$71,$47 ;
                    db $52,$20,$62,$11,$72,$1F,$82,$08 ;
                    db $92,$47,$53,$21,$63,$47,$83,$19 ;
                    db $93,$1F,$A3,$08,$54,$05,$64,$08 ;
                    db $74,$47,$A4,$19,$B4,$08,$65,$22 ;
                    db $75,$08,$85,$47,$B5,$13,$76,$06 ;
                    db $86,$47,$B6,$11,$C6,$08,$67,$04 ;
                    db $77,$14,$87,$2C,$97,$47,$C7,$19 ;
                    db $D7,$08,$68,$22,$78,$08,$88,$2D ;
                    db $98,$47,$D8,$11,$79,$05,$89,$08 ;
                    db $99,$47,$7A,$20,$8A,$14,$9A,$47 ;
                    db $7B,$22,$8B,$24,$9B,$08,$AB,$47 ;
                    db $9C,$21,$AC,$47,$BC,$1A,$CC,$08 ;
                    db $9D,$22,$AD,$24,$BD,$2B,$CD,$22 ;
                    db $DD,$08,$DE,$05,$FF,$FF ;

DATA_0EBB6D:        db $5C,$08,$5C,$08,$5C,$08,$5C,$08 ;
                    db $55,$08,$56,$08,$55,$08,$56,$48 ;
                    db $54,$08,$53,$08,$55,$08,$56,$08 ;
                    db $55,$08,$56,$48,$54,$48,$53,$08 ;
                    db $5C,$08,$57,$08,$57,$08,$54,$08 ;
                    db $57,$48,$54,$48,$5C,$08,$57,$48 ;
                    db $57,$48,$54,$48,$57,$08,$54,$08 ;
                    db $53,$08,$53,$08,$53,$08,$53,$08 ;
                    db $53,$08,$53,$08,$54,$48,$53,$08 ;
                    db $50,$88,$51,$88,$53,$08,$52,$88 ;
                    db $53,$08,$52,$C8,$53,$08,$52,$88 ;
                    db $53,$08,$52,$C8,$50,$C8,$51,$C8 ;
                    db $53,$08,$54,$88,$53,$08,$53,$08 ;
                    db $54,$C8,$54,$48,$57,$C8,$57,$48 ;
                    db $58,$88,$58,$08,$53,$08,$53,$08 ;
                    db $57,$88,$57,$08,$54,$88,$54,$08 ;
                    db $53,$08,$5B,$08,$5B,$08,$54,$08 ;
                    db $5B,$48,$54,$48,$53,$88,$5B,$48 ;
                    db $53,$08,$54,$88,$54,$48,$53,$08 ;
                    db $5B,$48,$54,$48,$5B,$08,$54,$08 ;
                    db $54,$08,$53,$08,$53,$08,$53,$08 ;
                    db $57,$48,$54,$48,$57,$08,$5B,$48 ;
                    db $57,$48,$5B,$08,$57,$08,$54,$08 ;
                    db $59,$08,$58,$08,$5A,$08,$53,$08 ;
                    db $5A,$48,$53,$08,$5A,$08,$53,$08 ;
                    db $5A,$48,$53,$08,$59,$48,$58,$48 ;
                    db $53,$08,$53,$08,$53,$08,$54,$C8 ;
                    db $54,$C8,$5B,$C8,$5B,$C8,$53,$08 ;
                    db $54,$C8,$54,$48,$5B,$C8,$5B,$48 ;
                    db $5B,$88,$5B,$08,$54,$88,$54,$08 ;
                    db $54,$C8,$53,$08,$54,$88,$53,$08 ;
                    db $53,$08,$53,$08,$58,$C8,$58,$48 ;
                    db $51,$08,$50,$08,$52,$08,$53,$08 ;
                    db $52,$48,$53,$08,$52,$08,$53,$08 ;
                    db $52,$48,$53,$08,$51,$48,$50,$48 ;
                    db $50,$88,$50,$08,$53,$08,$53,$08 ;
                    db $53,$08,$53,$08,$50,$C8,$50,$48 ;
                    db $54,$C8,$5B,$08,$57,$C8,$57,$48 ;
                    db $57,$88,$57,$08,$54,$88,$5B,$48 ;
                    db $5C,$08,$57,$08,$5C,$08,$57,$48 ;
                    db $54,$08,$53,$08,$54,$48,$53,$08 ;
                    db $57,$88,$5C,$08,$54,$88,$57,$88 ;
                    db $54,$C8,$57,$C8,$54,$88,$57,$88 ;
                    db $54,$C8,$57,$C8,$57,$C8,$5C,$08 ;
                    db $53,$08,$53,$08,$55,$08,$56,$08 ;
                    db $55,$08,$56,$48,$53,$08,$53,$08 ;
                    db $58,$88,$59,$88,$53,$08,$5A,$88 ;
                    db $53,$08,$5A,$C8,$58,$C8,$59,$C8 ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;
                    db $FF,$FF,$FF,$FF ;

DATA_0EC301:        db $90,$31,$39,$F1,$BF,$F7,$30,$33 ;
                    db $E7,$A3,$03,$A7,$03,$CD,$41,$0F ;
                    db $F6,$A0,$ED,$47,$FD ;

DATA_0EC316:        db $38,$11,$0F,$F6,$20,$AD,$40,$3D ;
                    db $C7,$FD ;

DATA_0EC320:        db $10,$00,$0B,$13,$5B,$14,$6A,$42 ;
                    db $C7,$12,$C6,$42,$1B,$94,$2A,$42 ;
                    db $53,$13,$62,$41,$97,$17,$A6,$45 ;
                    db $6E,$81,$8F,$F7,$30,$02,$E8,$12 ;
                    db $3A,$68,$7A,$E0,$6A,$F0,$6A,$6D ;
                    db $C5,$00,$6A,$FD ;

CODE_0EC34C:        PHB                       ;
CODE_0EC34D:        PHK                       ;
CODE_0EC34E:        PLB                       ;
CODE_0EC34F:        JSL CODE_0EC374           ;
CODE_0EC353:        STA $0750                 ;
CODE_0EC356:        AND #$60                  ;
CODE_0EC358:        ASL A                     ;
CODE_0EC359:        ROL A                     ;
CODE_0EC35A:        ROL A                     ;
CODE_0EC35B:        ROL A                     ;
CODE_0EC35C:        STA $5C                   ;
CODE_0EC35E:        STA $BA                   ;
CODE_0EC360:        LDA $075F                 ;
CODE_0EC363:        CMP #$07                  ;
CODE_0EC365:        BNE CODE_0EC372           ;
CODE_0EC367:        LDA $0760                 ;
CODE_0EC36A:        CMP #$03                  ;
CODE_0EC36C:        BNE CODE_0EC372           ;
CODE_0EC36E:        LDA #$03                  ;
CODE_0EC370:        STA $BA                   ;
CODE_0EC372:        PLB                       ;
CODE_0EC373:        RTL                       ;

CODE_0EC374:        PHB                       ;
CODE_0EC375:        PHK                       ;
CODE_0EC376:        PLB                       ;
CODE_0EC377:        LDY $075F                 ;
CODE_0EC37A:        CPY #$0D                  ;
CODE_0EC37C:        BCC CODE_0EC389           ;
CODE_0EC37E:        STZ $0760                 ;
CODE_0EC381:        STZ $075C                 ;
CODE_0EC384:        LDY #$00                  ;
CODE_0EC386:        STY $075F                 ;
CODE_0EC389:        LDA DATA_0EC499,y               ;
CODE_0EC38C:        CLC                       ;
CODE_0EC38D:        ADC $0760                 ;
CODE_0EC390:        TAY                       ;
CODE_0EC391:        LDA DATA_0EC4A6,y               ;
CODE_0EC394:        PLB                       ;
CODE_0EC395:        RTL                       ;

CODE_0EC396:        PHA                       ;
CODE_0EC397:        LDA $075F                 ;
CODE_0EC39A:        CMP #$09                  ;
CODE_0EC39C:        BCC CODE_0EC3B5           ;
CODE_0EC39E:        LDA $0750                 ;
CODE_0EC3A1:        AND #$60                  ;
CODE_0EC3A3:        CMP #$20                  ;
CODE_0EC3A5:        BNE CODE_0EC3B5           ;
CODE_0EC3A7:        PLA                       ;
CODE_0EC3A8:        CMP #$1F                  ;
CODE_0EC3AA:        BEQ CODE_0EC3B7           ;
CODE_0EC3AC:        CMP #$1E                  ;
CODE_0EC3AE:        BEQ CODE_0EC3BA           ;
CODE_0EC3B0:        CLC                       ;
CODE_0EC3B1:        ADC #$1D                  ;
CODE_0EC3B3:        BRA CODE_0EC3B6           ;

CODE_0EC3B5:        PLA                       ;
CODE_0EC3B6:        RTS                       ;

CODE_0EC3B7:        LDA #$09                  ;
CODE_0EC3B9:        RTS                       ;

CODE_0EC3BA:        LDA #$1B                  ;
CODE_0EC3BC:        RTS                       ;

CODE_0EC3BD:        PHB                       ;
CODE_0EC3BE:        PHK                       ;
CODE_0EC3BF:        PLB                       ;
CODE_0EC3C0:        LDA $0750                 ;
CODE_0EC3C3:        AND #$60                  ;
CODE_0EC3C5:        ASL A                     ;
CODE_0EC3C6:        ROL A                     ;
CODE_0EC3C7:        ROL A                     ;
CODE_0EC3C8:        ROL A                     ;
CODE_0EC3C9:        STA $5C                   ;
CODE_0EC3CB:        STA $BA                   ;
CODE_0EC3CD:        TAY                       ;
CODE_0EC3CE:        LDA $075F                 ;
CODE_0EC3D1:        CMP #$07                  ;
CODE_0EC3D3:        BNE CODE_0EC3E0           ;
CODE_0EC3D5:        LDA $0760                 ;
CODE_0EC3D8:        CMP #$03                  ;
CODE_0EC3DA:        BNE CODE_0EC3E0           ;
CODE_0EC3DC:        LDA #$03                  ;
CODE_0EC3DE:        STA $BA                   ;
CODE_0EC3E0:        LDA $0750                 ;
CODE_0EC3E3:        AND #$1F                  ;
CODE_0EC3E5:        JSR CODE_0EC396           ;
CODE_0EC3E8:        STA $074F                 ;
CODE_0EC3EB:        LDA DATA_0EC4EC,y         ;
CODE_0EC3EE:        CLC                       ;
CODE_0EC3EF:        ADC $074F                 ;
CODE_0EC3F2:        TAY                       ;
CODE_0EC3F3:        LDA PNTR_0EC4F0,y         ;
CODE_0EC3F6:        STA $FD                   ;
CODE_0EC3F8:        LDA PNTR_0EC537,y         ;
CODE_0EC3FB:        STA $FE                   ;
CODE_0EC3FD:        LDA.b #PNTR_0EC4F0>>16    ;
CODE_0EC3FF:        STA $FF                   ;
CODE_0EC401:        LDY $5C                   ;
CODE_0EC403:        LDA DATA_0EC57E,y         ;
CODE_0EC406:        CLC                       ;
CODE_0EC407:        ADC $074F                 ;
CODE_0EC40A:        TAY                       ;
CODE_0EC40B:        STA $DB                   ;
CODE_0EC40D:        LDA PNTR_0EC582,y         ;
CODE_0EC410:        STA $FA                   ;
CODE_0EC412:        LDA PNTR_0EC5C9,y         ;
CODE_0EC415:        STA $FB                   ;
CODE_0EC417:        LDA.b #PNTR_0EC582>>16    ; TODO: bank byte
CODE_0EC419:        STA $FC                   ;
CODE_0EC41B:        LDY #$00                  ;
CODE_0EC41D:        LDA [$FA],y               ; TODO: this is where you left off
CODE_0EC41F:        PHA                       ;
CODE_0EC420:        AND #$07                  ;
CODE_0EC422:        CMP #$04                  ;
CODE_0EC424:        BCC CODE_0EC42B           ;
CODE_0EC426:        STA $0744                 ;
CODE_0EC429:        LDA #$00                  ;
CODE_0EC42B:        STA $0741                 ;
CODE_0EC42E:        PLA                       ;
CODE_0EC42F:        PHA                       ;
CODE_0EC430:        AND #$38                  ;
CODE_0EC432:        LSR A                     ;
CODE_0EC433:        LSR A                     ;
CODE_0EC434:        LSR A                     ;
CODE_0EC435:        STA $0710                 ;
CODE_0EC438:        PLA                       ;
CODE_0EC439:        AND #$C0                  ;
CODE_0EC43B:        CLC                       ;
CODE_0EC43C:        ROL A                     ;
CODE_0EC43D:        ROL A                     ;
CODE_0EC43E:        ROL A                     ;
CODE_0EC43F:        STA $0715                 ;
CODE_0EC442:        INY                       ;
CODE_0EC443:        LDA [$FA],y               ;
CODE_0EC445:        PHA                       ;
CODE_0EC446:        AND #$0F                  ;
CODE_0EC448:        STA $0727                 ;
CODE_0EC44B:        PLA                       ;
CODE_0EC44C:        PHA                       ;
CODE_0EC44D:        AND #$30                  ;
CODE_0EC44F:        LSR A                     ;
CODE_0EC450:        LSR A                     ;
CODE_0EC451:        LSR A                     ;
CODE_0EC452:        LSR A                     ;
CODE_0EC453:        STA $0742                 ;
CODE_0EC456:        PLA                       ;
CODE_0EC457:        AND #$C0                  ;
CODE_0EC459:        CLC                       ;
CODE_0EC45A:        ROL A                     ;
CODE_0EC45B:        ROL A                     ;
CODE_0EC45C:        ROL A                     ;
CODE_0EC45D:        CMP #$03                  ;
CODE_0EC45F:        BNE CODE_0EC466           ;
CODE_0EC461:        STA $0743                 ;
CODE_0EC464:        LDA #$00                  ;
CODE_0EC466:        STA $0733                 ;
CODE_0EC469:        JSR CODE_0EC47E           ;
CODE_0EC46C:        LDA $FA                   ;
CODE_0EC46E:        CLC                       ;
CODE_0EC46F:        ADC #$02                  ;
CODE_0EC471:        STA $FA                   ;
CODE_0EC473:        LDA $FB                   ;
CODE_0EC475:        ADC #$00                  ;
CODE_0EC477:        STA $FB                   ;
CODE_0EC479:        STZ $0EE8                 ;
CODE_0EC47C:        PLB                       ;
CODE_0EC47D:        RTL                       ;

CODE_0EC47E:        LDA $0743                 ;
CODE_0EC481:        BNE CODE_0EC493           ;
CODE_0EC483:        LDA $DB                   ;
CODE_0EC485:        CMP #$23                  ;
CODE_0EC487:        BEQ CODE_0EC48F           ;
CODE_0EC489:        CMP #$22                  ;
CODE_0EC48B:        BEQ CODE_0EC493           ;
CODE_0EC48D:        BRA CODE_0EC498           ;

CODE_0EC48F:        LDA $42                   ;
CODE_0EC491:        BNE CODE_0EC498           ;
CODE_0EC493:        LDA #$01                  ;
CODE_0EC495:        STA $0236                 ;
CODE_0EC498:        RTS                       ;

;level data of TLL?

DATA_0EC499:        db $00,$05,$09,$0E,$12,$17,$1C,$20
                    db $24,$28,$2D,$32,$36

DATA_0EC4A6:        db $20,$29,$40,$21,$60,$22,$23,$24 ;
                    db $61,$25,$29,$00,$26,$62,$27,$28 ;
                    db $2A,$63,$2B,$29,$43,$2C,$64,$2D ;
                    db $29,$01,$2E,$65,$2F,$30,$31,$66 ;
                    db $32,$35,$36,$67,$38,$06,$68,$07 ;
                    db $20,$3F,$45,$21,$6A,$22,$3F,$08 ;
                    db $23,$6B,$24,$25,$26,$6C,$27,$28 ;
                    db $29,$6D ;

DATA_0EC4E0:        db $15,$15,$6F,$6F,$18,$18,$45,$45 ;
                    db $08,$1A,$83,$08 ;

DATA_0EC4EC:        db $3E,$0E,$37,$00

PNTR_0EC4F0:        db DATA_0EC624
                    db DATA_0EC643
                    db DATA_0EC66A
                    db DATA_0EC67D
                    db DATA_0ED399
                    db DATA_0ED3D2
                    db DATA_0ED3F9
                    db DATA_0ED438
                    db DATA_0EE3CF
                    db DATA_0EE3D9
                    db DATA_0EE66A
                    db DATA_0EE68F
                    db DATA_0EE6B6
                    db DATA_0EE6F7
                    db DATA_0EC6B2
                    db DATA_0EC6D8
                    db DATA_0EC6FB
                    db DATA_0EC724
                    db DATA_0EC75A
                    db DATA_0EC771
                    db DATA_0EC79B
                    db DATA_0EC7C0
                    db DATA_0EC7D7
                    db DATA_0EC301-1
                    db DATA_0EC7F9
                    db DATA_0ED478
                    db DATA_0ED4A9
                    db DATA_0ED4D1
                    db DATA_0ED4F5
                    db DATA_0ED512
                    db DATA_0ED543
                    db DATA_0ED56F
                    db DATA_0ED588
                    db DATA_0EC81C
                    db DATA_0EC301-1
                    db DATA_0ED5B0
                    db DATA_0ED5D3
                    db DATA_0ED5FA
                    db DATA_0EE3DF
                    db DATA_0EE3E3
                    db DATA_0EE3E3
                    db DATA_0EC301-1
                    db DATA_0ED5FB
                    db DATA_0EE726
                    db DATA_0EE761
                    db DATA_0EE770
                    db DATA_0EE79E
                    db DATA_0EE7C3
                    db DATA_0EE7E6
                    db DATA_0EE805
                    db DATA_0EE824
                    db DATA_0EE844
                    db DATA_0EE865
                    db DATA_0EE87C
                    db DATA_0EE88C
                    db DATA_0EC828
                    db DATA_0EC84E
                    db DATA_0EC858
                    db DATA_0ED604
                    db DATA_0ED625
                    db DATA_0EE89B
                    db DATA_0EE8B5
                    db DATA_0EC872
                    db DATA_0ED63F
                    db DATA_0EC898
                    db DATA_0ED66F
                    db DATA_0ED67D
                    db DATA_0EE3E3
                    db DATA_0EE404
                    db DATA_0EE409
                    db DATA_0EE8C9

PNTR_0EC537:        db DATA_0EC624>>8
                    db DATA_0EC643>>8
                    db DATA_0EC66A>>8
                    db DATA_0EC67D>>8
                    db DATA_0ED399>>8
                    db DATA_0ED3D2>>8
                    db DATA_0ED3F9>>8
                    db DATA_0ED438>>8
                    db DATA_0EE3CF>>8
                    db DATA_0EE3D9>>8
                    db DATA_0EE66A>>8
                    db DATA_0EE68F>>8
                    db DATA_0EE6B6>>8
                    db DATA_0EE6F7>>8
                    db DATA_0EC6B2>>8
                    db DATA_0EC6D8>>8
                    db DATA_0EC6FB>>8
                    db DATA_0EC724>>8
                    db DATA_0EC75A>>8
                    db DATA_0EC771>>8
                    db DATA_0EC79B>>8
                    db DATA_0EC7C0>>8
                    db DATA_0EC7D7>>8
                    db DATA_0EC301-1>>8
                    db DATA_0EC7F9>>8
                    db DATA_0ED478>>8
                    db DATA_0ED4A9>>8
                    db DATA_0ED4D1>>8
                    db DATA_0ED4F5>>8
                    db DATA_0ED512>>8
                    db DATA_0ED543>>8
                    db DATA_0ED56F>>8
                    db DATA_0ED588>>8
                    db DATA_0EC81C>>8
                    db DATA_0EC301-1>>8
                    db DATA_0ED5B0>>8
                    db DATA_0ED5D3>>8
                    db DATA_0ED5FA>>8
                    db DATA_0EE3DF>>8
                    db DATA_0EE3E3>>8
                    db DATA_0EE3E3>>8
                    db DATA_0EC301-1>>8
                    db DATA_0ED5FB>>8
                    db DATA_0EE726>>8
                    db DATA_0EE761>>8
                    db DATA_0EE770>>8
                    db DATA_0EE79E>>8
                    db DATA_0EE7C3>>8
                    db DATA_0EE7E6>>8
                    db DATA_0EE805>>8
                    db DATA_0EE824>>8
                    db DATA_0EE844>>8
                    db DATA_0EE865>>8
                    db DATA_0EE87C>>8
                    db DATA_0EE88C>>8
                    db DATA_0EC828>>8
                    db DATA_0EC84E>>8
                    db DATA_0EC858>>8
                    db DATA_0ED604>>8
                    db DATA_0ED625>>8
                    db DATA_0EE89B>>8
                    db DATA_0EE8B5>>8
                    db DATA_0EC872>>8
                    db DATA_0ED63F>>8
                    db DATA_0EC898>>8
                    db DATA_0ED66F>>8
                    db DATA_0ED67D>>8
                    db DATA_0EE3E3>>8
                    db DATA_0EE404>>8
                    db DATA_0EE409>>8
                    db DATA_0EE8C9>>8

DATA_0EC57E:        db $3E,$0E,$37,$00

PNTR_0EC582:        db DATA_0EC8A8
                    db DATA_0EC96A
                    db DATA_0ECA90
                    db DATA_0ECB92
                    db DATA_0ED692
                    db DATA_0ED7F3
                    db DATA_0ED8E8
                    db DATA_0EDA8F
                    db DATA_0EE41A
                    db DATA_0EE4DB
                    db DATA_0EE8ED
                    db DATA_0EE9C6
                    db DATA_0EEB6A
                    db DATA_0EED15
                    db DATA_0ECC84
                    db DATA_0ECCE7
                    db DATA_0ECD3E
                    db DATA_0ECDC1
                    db DATA_0ECE41
                    db DATA_0ECEA3
                    db DATA_0ECF32
                    db DATA_0ECF97
                    db DATA_0ED012
                    db DATA_0EC316
                    db DATA_0ED075
                    db DATA_0EDC06
                    db DATA_0EDCEF
                    db DATA_0EDD53
                    db DATA_0EDDDB
                    db DATA_0EDE4B
                    db DATA_0EDED5
                    db DATA_0EDF36
                    db DATA_0EDFB3
                    db DATA_0ED0C4
                    db DATA_0EC320
                    db DATA_0EE02F
                    db DATA_0EE0A1
                    db DATA_0EE10B
                    db DATA_0EE560
                    db DATA_0EE576
                    db DATA_0EE577
                    db DATA_0EC301
                    db DATA_0EE10C
                    db DATA_0EEE20
                    db DATA_0EEEBA
                    db DATA_0EEF18
                    db DATA_0EEFAB
                    db DATA_0EF00C
                    db DATA_0EF08E
                    db DATA_0EF0EE
                    db DATA_0EF16D
                    db DATA_0EF1F1
                    db DATA_0EF245
                    db DATA_0EF2C0
                    db DATA_0EF2F6
                    db DATA_0ED0DD
                    db DATA_0ED1A2
                    db DATA_0ED1DD
                    db DATA_0EE143
                    db DATA_0EE219
                    db DATA_0EF313
                    db DATA_0EF38D
                    db DATA_0ED22B
                    db DATA_0EE261
                    db DATA_0ED2EA
                    db DATA_0EE332
                    db DATA_0EE37E
                    db DATA_0EE578
                    db DATA_0EE5C4
                    db DATA_0EE619
                    db DATA_0EF3EF

PNTR_0EC5C9:        db DATA_0EC8A8>>8
                    db DATA_0EC96A>>8
                    db DATA_0ECA90>>8
                    db DATA_0ECB92>>8
                    db DATA_0ED692>>8
                    db DATA_0ED7F3>>8
                    db DATA_0ED8E8>>8
                    db DATA_0EDA8F>>8
                    db DATA_0EE41A>>8
                    db DATA_0EE4DB>>8
                    db DATA_0EE8ED>>8
                    db DATA_0EE9C6>>8
                    db DATA_0EEB6A>>8
                    db DATA_0EED15>>8
                    db DATA_0ECC84>>8
                    db DATA_0ECCE7>>8
                    db DATA_0ECD3E>>8
                    db DATA_0ECDC1>>8
                    db DATA_0ECE41>>8
                    db DATA_0ECEA3>>8
                    db DATA_0ECF32>>8
                    db DATA_0ECF97>>8
                    db DATA_0ED012>>8
                    db DATA_0EC316>>8
                    db DATA_0ED075>>8
                    db DATA_0EDC06>>8
                    db DATA_0EDCEF>>8
                    db DATA_0EDD53>>8
                    db DATA_0EDDDB>>8
                    db DATA_0EDE4B>>8
                    db DATA_0EDED5>>8
                    db DATA_0EDF36>>8
                    db DATA_0EDFB3>>8
                    db DATA_0ED0C4>>8
                    db DATA_0EC320>>8
                    db DATA_0EE02F>>8
                    db DATA_0EE0A1>>8
                    db DATA_0EE10B>>8
                    db DATA_0EE560>>8
                    db DATA_0EE576>>8
                    db DATA_0EE577>>8
                    db DATA_0EC301>>8
                    db DATA_0EE10C>>8
                    db DATA_0EEE20>>8
                    db DATA_0EEEBA>>8
                    db DATA_0EEF18>>8
                    db DATA_0EEFAB>>8
                    db DATA_0EF00C>>8
                    db DATA_0EF08E>>8
                    db DATA_0EF0EE>>8
                    db DATA_0EF16D>>8
                    db DATA_0EF1F1>>8
                    db DATA_0EF245>>8
                    db DATA_0EF2C0>>8
                    db DATA_0EF2F6>>8
                    db DATA_0ED0DD>>8
                    db DATA_0ED1A2>>8
                    db DATA_0ED1DD>>8
                    db DATA_0EE143>>8
                    db DATA_0EE219>>8
                    db DATA_0EF313>>8
                    db DATA_0EF38D>>8
                    db DATA_0ED22B>>8
                    db DATA_0EE261>>8
                    db DATA_0ED2EA>>8
                    db DATA_0EE332>>8
                    db DATA_0EE37E>>8
                    db DATA_0EE578>>8
                    db DATA_0EE5C4>>8
                    db DATA_0EE619>>8
                    db DATA_0EF3EF>>8

DATA_0EC610:        db $76,$50,$65,$50,$75,$B0,$00,$00

CODE_0EC618:        LDY #$07                  ;
CODE_0EC61A:        LDA DATA_0EC610,y         ;
CODE_0EC61D:        STA $9F64,y               ; INVALID: ???
CODE_0EC620:        DEY                       ;
CODE_0EC621:        BPL CODE_0EC61A           ;
CODE_0EC623:        RTS                       ;

DATA_0EC624:        db $35,$9D,$55,$9B,$C9,$1B,$59,$9D ;
                    db $45,$9B,$C5,$1B,$26,$80,$45,$1B ;
                    db $B9,$1D,$F0,$15,$59,$9D,$0F,$08 ;
                    db $78,$2D,$96,$28,$90,$B5,$FF ;

DATA_0EC643:        db $74,$80,$F0,$38,$A0,$BB,$40,$BC ;
                    db $8C,$1D,$C9,$9D,$05,$9B,$1C,$0C ;
                    db $59,$1B,$B5,$1D,$2C,$8C,$40,$15 ;
                    db $7C,$1B,$DC,$1D,$6C,$8C,$BC,$0C ;
                    db $78,$AD,$A5,$28,$90,$B5,$FF ;

DATA_0EC66A:        db $0F,$04,$9C,$0C,$0F,$07,$C5,$1B ;
                    db $65,$9D,$49,$9D,$5C,$8C,$78,$2D ;
                    db $90,$B5,$FF ;

DATA_0EC67D:        db $49,$9F,$67,$03,$79,$9D,$A0,$3A ;
                    db $57,$9F,$BB,$1D,$D5,$25,$0F,$05 ;
                    db $18,$1D,$74,$00,$84,$00,$94,$00 ;
                    db $C6,$29,$49,$9D,$DB,$05,$0F,$08 ;
                    db $05,$9B,$09,$1D,$B0,$38,$80,$95 ;
                    db $C0,$3C,$EC,$A8,$CC,$8C,$4A,$9B ;
                    db $78,$2D,$90,$B5,$FF ;

DATA_0EC6B2:        db $07,$8E,$47,$03,$0F,$03,$10,$38 ;
                    db $1B,$80,$53,$06,$77,$0E,$83,$83 ;
                    db $A0,$3D,$90,$3B,$90,$B7,$60,$BC ;
                    db $B7,$0E,$EE,$42,$00,$F7,$80,$6B ;
                    db $83,$1B,$83,$AB,$06,$FF ;

DATA_0EC6D8:        db $96,$A4,$F9,$24,$D3,$83,$3A,$83 ;
                    db $5A,$03,$95,$07,$F4,$0F,$69,$A8 ;
                    db $33,$87,$86,$24,$C9,$24,$4B,$83 ;
                    db $67,$83,$17,$83,$56,$28,$95,$24 ;
                    db $0A,$A4,$FF ;

DATA_0EC6FB:        db $0F,$02,$47,$0E,$87,$0E,$C7,$0E ;
                    db $F7,$0E,$27,$8E,$EE,$42,$25,$0F ;
                    db $06,$AC,$28,$8C,$A8,$4E,$B3,$20 ;
                    db $8B,$8E,$F7,$90,$36,$90,$E5,$8E ;
                    db $32,$8E,$C2,$06,$D2,$06,$E2,$06 ;
                    db $FF ;

DATA_0EC724:        db $15,$8E,$9B,$06,$E0,$37,$80,$BC ;
                    db $0F,$04,$2B,$3B,$AB,$0E,$EB,$0E ;
                    db $0F,$06,$F0,$37,$4B,$8E,$6B,$80 ;
                    db $BB,$3C,$4B,$BB,$EE,$42,$20,$1B ;
                    db $BC,$CB,$00,$AB,$83,$EB,$BB,$0F ;
                    db $0E,$1B,$03,$9B,$37,$D4,$0E,$A3 ;
                    db $86,$B3,$06,$C3,$06,$FF ;

DATA_0EC75A:        db $C0,$BE,$0F,$03,$38,$0E,$15,$8F ;
                    db $AA,$83,$F8,$07,$0F,$07,$96,$10 ;
                    db $0F,$09,$48,$10,$BA,$03,$FF ;

DATA_0EC771:        db $87,$85,$A3,$05,$DB,$83,$FB,$03 ;
                    db $93,$8F,$BB,$03,$CE,$42,$42,$9B ;
                    db $83,$AE,$B3,$40,$DB,$00,$F4,$0F ;
                    db $33,$8F,$74,$0F,$10,$BC,$F5,$0F ;
                    db $2E,$C2,$45,$B7,$03,$F7,$03,$C8 ;
                    db $90,$FF ;

DATA_0EC79B:        db $80,$BE,$83,$03,$92,$10,$4B,$80 ;
                    db $B0,$3C,$07,$80,$B7,$24,$0C,$A4 ;
                    db $96,$A9,$1B,$83,$7B,$24,$B7,$24 ;
                    db $97,$83,$E2,$0F,$A9,$A9,$38,$A9 ;
                    db $0F,$0B,$74,$8F,$FF ;

DATA_0EC7C0:        db $E2,$91,$0F,$03,$42,$11,$0F,$06 ;
                    db $72,$11,$0F,$08,$EE,$02,$60,$02 ;
                    db $91,$EE,$B3,$60,$D3,$86,$FF ;

DATA_0EC7D7:        db $0F,$02,$9B,$02,$AB,$02,$0F,$04 ;
                    db $13,$03,$92,$11,$60,$B7,$00,$BC ;
                    db $00,$BB,$0B,$83,$CB,$03,$7B,$85 ;
                    db $9E,$C2,$60,$E6,$05,$0F,$0C,$62 ;
                    db $10,$FF ;

DATA_0EC7F9:        db $E6,$A9,$57,$A8,$B5,$24,$19,$A4 ;
                    db $76,$28,$A2,$0F,$95,$8F,$9D,$A8 ;
                    db $0F,$07,$09,$29,$55,$24,$8B,$17 ;
                    db $A9,$24,$DB,$83,$04,$A9,$24,$8F ;
                    db $65,$0F,$FF ;

DATA_0EC81C:        db $0A,$AA,$1E,$22,$29,$1E,$25,$49 ;
                    db $2E,$27,$66,$FF ;

DATA_0EC828:        db $0A,$8E,$DE,$B4,$00,$E0,$37,$5B ;
                    db $82,$2B,$A9,$AA,$29,$29,$A9,$A8 ;
                    db $29,$0F,$08,$F0,$3C,$79,$A9,$C5 ;
                    db $26,$CD,$26,$EE,$3B,$01,$67,$B4 ;
                    db $0F,$0C,$2E,$C1,$00,$FF ;

DATA_0EC84E:        db $09,$A9,$19,$A9,$DE,$42,$02,$7B ;
                    db $83,$FF ;

DATA_0EC858:        db $1E,$A0,$0A,$1E,$23,$2B,$1E,$28 ;
                    db $6B,$0F,$03,$1E,$40,$08,$1E,$25 ;
                    db $4E,$0F,$06,$1E,$22,$25,$1E,$25 ;
                    db $45,$FF ;

DATA_0EC872:        db $0F,$01,$2A,$07,$2E,$3B,$41,$E9 ;
                    db $07,$0F,$03,$6B,$07,$F9,$07,$B8 ;
                    db $80,$2A,$87,$4A,$87,$B3,$0F,$84 ;
                    db $87,$47,$83,$87,$07,$0A,$87,$42 ;
                    db $87,$1B,$87,$6B,$03,$FF ;

DATA_0EC898:        db $1E,$A7,$6A,$5B,$82,$74,$07,$D8 ;
                    db $07,$E8,$02,$0F,$04,$26,$07,$FF ;

DATA_0EC8A8:        db $9B,$07,$0F,$52,$32,$0F,$63,$32 ;
                    db $0F,$74,$32,$33,$8E,$4F,$10,$34 ;
                    db $4F,$80,$36,$4E,$0A,$7E,$06,$8F ;
                    db $80,$38,$9F,$80,$36,$9E,$0A,$CE ;
                    db $06,$DF,$80,$38,$E3,$00,$EF,$80 ;
                    db $36,$EE,$0A,$1E,$87,$2F,$20,$34 ;
                    db $2F,$80,$38,$53,$0E,$8F,$10,$34 ;
                    db $8F,$80,$36,$8E,$02,$9C,$00,$AF ;
                    db $B0,$38,$C7,$0E,$D7,$37,$57,$8E ;
                    db $5F,$B0,$36,$6C,$05,$CF,$B0,$38 ;
                    db $DA,$60,$E9,$61,$FF,$A1,$3C,$F8 ;
                    db $62,$FE,$0B,$0F,$20,$B4,$0F,$70 ;
                    db $38,$43,$0E,$C3,$0E,$43,$8E,$B7 ;
                    db $0E,$EE,$09,$EF,$10,$34,$EF,$30 ;
                    db $34,$FE,$0A,$0F,$70,$B6,$3E,$06 ;
                    db $4F,$80,$38,$57,$0E,$6E,$0A,$6F ;
                    db $80,$36,$7E,$06,$8F,$80,$38,$AE ;
                    db $0A,$AF,$80,$36,$BE,$06,$CF,$80 ;
                    db $38,$FE,$07,$0F,$20,$B4,$15,$62 ;
                    db $55,$62,$95,$62,$FF,$20,$34,$FF ;
                    db $80,$36,$FE,$0A,$0D,$C4,$CD,$43 ;
                    db $CE,$09,$DF,$70,$38,$DE,$0B,$DD ;
                    db $42,$EF,$20,$34,$FF,$A1,$3A,$FF ;
                    db $20,$34,$FF,$70,$36,$FE,$02,$5D ;
                    db $C7,$FD ;

DATA_0EC96A:        db $9B,$07,$0F,$52,$32,$0F,$63,$32 ;
                    db $0F,$74,$32,$03,$E2,$0F,$10,$34 ;
                    db $0E,$06,$1E,$0C,$1F,$71,$3C,$2F ;
                    db $40,$38,$7E,$0A,$7F,$40,$36,$8E ;
                    db $05,$9F,$10,$34,$9F,$30,$34,$9F ;
                    db $50,$34,$9F,$70,$34,$9F,$B0,$38 ;
                    db $8E,$82,$8F,$10,$34,$8F,$30,$34 ;
                    db $8F,$50,$34,$8F,$70,$34,$8A,$8E ;
                    db $8F,$B0,$36,$8E,$0A,$EE,$02,$FF ;
                    db $B0,$38,$0A,$E0,$19,$61,$2F,$A1 ;
                    db $3C,$23,$06,$28,$62,$2E,$0B,$3F ;
                    db $10,$34,$3F,$30,$34,$3F,$70,$38 ;
                    db $7F,$70,$36,$7E,$0A,$8F,$12,$28 ;
                    db $87,$30,$8E,$04,$9F,$B0,$38,$A7 ;
                    db $31,$C7,$0E,$D7,$33,$FE,$03,$03 ;
                    db $8E,$0F,$B0,$36,$0E,$0A,$1F,$12 ;
                    db $28,$1E,$04,$2F,$B0,$38,$27,$32 ;
                    db $4E,$0A,$4F,$B0,$36,$57,$0E,$5F ;
                    db $12,$28,$5E,$04,$6F,$B0,$38,$67 ;
                    db $34,$9F,$B0,$36,$9E,$0A,$AF,$12 ;
                    db $28,$AE,$03,$B3,$0E,$BF,$A1,$3C ;
                    db $BF,$B0,$38,$BE,$0B,$CF,$70,$38 ;
                    db $EE,$09,$EF,$10,$34,$EF,$30,$34 ;
                    db $FF,$70,$36,$FE,$0A,$2E,$82,$3F ;
                    db $B0,$38,$7A,$0E,$7F,$B0,$36,$7E ;
                    db $0A,$97,$31,$BE,$04,$CF,$20,$34 ;
                    db $CF,$B0,$38,$DA,$0E,$EE,$0A,$EF ;
                    db $B0,$36,$FF,$12,$28,$FF,$20,$34 ;
                    db $FE,$02,$0F,$B0,$B8,$3F,$B0,$36 ;
                    db $3E,$0A,$7E,$06,$8F,$80,$38,$AF ;
                    db $80,$36,$AE,$0A,$CE,$06,$DF,$80 ;
                    db $38,$FF,$80,$36,$FE,$0A,$0D,$C4 ;
                    db $11,$53,$21,$52,$24,$0B,$51,$52 ;
                    db $61,$52,$CD,$43,$CE,$09,$DF,$70 ;
                    db $38,$DD,$42,$DE,$0B,$EF,$20,$34 ;
                    db $FF,$20,$34,$FF,$A1,$3A,$FF,$70 ;
                    db $36,$FE,$02,$5D,$C7,$FD ;

DATA_0ECA90:        db $5B,$06,$0F,$54,$32,$0F,$65,$32 ;
                    db $0F,$76,$32,$7E,$0A,$7F,$80,$36 ;
                    db $AE,$02,$BF,$B0,$38,$FE,$02,$0D ;
                    db $01,$14,$63,$24,$63,$2F,$B0,$36 ;
                    db $2E,$0A,$6E,$09,$7F,$70,$38,$BF ;
                    db $70,$36,$BE,$0A,$ED,$4B,$E4,$30 ;
                    db $EE,$02,$F3,$64,$FF,$B0,$38,$03 ;
                    db $E4,$13,$64,$23,$64,$33,$64,$43 ;
                    db $64,$53,$64,$5E,$02,$78,$72,$A4 ;
                    db $3D,$A5,$3E,$A6,$3F,$A3,$BE,$A6 ;
                    db $3E,$A9,$32,$E9,$3A,$8F,$B0,$B6 ;
                    db $8E,$0A,$AE,$02,$AF,$B0,$38,$A3 ;
                    db $33,$A6,$33,$A9,$33,$E5,$06,$ED ;
                    db $4B,$F3,$30,$F6,$30,$F9,$30,$FE ;
                    db $02,$0D,$05,$2F,$B0,$36,$3C,$01 ;
                    db $57,$73,$5F,$B0,$38,$6F,$B0,$36 ;
                    db $7C,$02,$93,$30,$A7,$73,$AF,$B0 ;
                    db $38,$BF,$B0,$36,$B3,$37,$CC,$01 ;
                    db $EF,$B0,$38,$07,$83,$17,$03,$27 ;
                    db $03,$37,$03,$64,$3B,$77,$3A,$FF ;
                    db $B0,$36,$0C,$80,$1F,$B0,$38,$34 ;
                    db $36,$35,$37,$36,$38,$37,$38,$9E ;
                    db $02,$BF,$B0,$36,$CC,$02,$C3,$33 ;
                    db $ED,$4B,$FF,$B0,$38,$03,$B7,$07 ;
                    db $37,$83,$37,$87,$37,$DD,$4B,$03 ;
                    db $B5,$07,$35,$5F,$B0,$36,$5E,$0A ;
                    db $8E,$02,$9F,$B0,$38,$AF,$B0,$36 ;
                    db $AE,$0A,$DE,$06,$EF,$80,$38,$FF ;
                    db $80,$36,$FE,$0A,$0D,$C4,$CD,$43 ;
                    db $CE,$09,$DD,$42,$DE,$0B,$DF,$70 ;
                    db $38,$EF,$20,$34,$FF,$20,$34,$FF ;
                    db $A1,$3A,$FF,$70,$36,$FE,$02,$5D ;
                    db $C7,$FD ;

DATA_0ECB92:        db $9B,$07,$0F,$52,$32,$0F,$63,$32 ;
                    db $0F,$74,$32,$4F,$80,$36,$4E,$03 ;
                    db $5C,$02,$8F,$B0,$38,$0C,$F1,$27 ;
                    db $00,$3C,$74,$47,$0E,$EF,$B0,$36 ;
                    db $FC,$00,$FE,$0B,$0F,$70,$B8,$77 ;
                    db $0E,$EE,$09,$EF,$10,$34,$EF,$30 ;
                    db $34,$FF,$70,$36,$FE,$0A,$45,$B2 ;
                    db $55,$0E,$99,$32,$B9,$0E,$FE,$02 ;
                    db $0E,$85,$0F,$B0,$38,$1F,$10,$34 ;
                    db $1F,$30,$34,$1F,$50,$34,$1F,$70 ;
                    db $34,$FF,$20,$34,$FF,$40,$34,$FF ;
                    db $60,$34,$FE,$02,$16,$8E,$2E,$0C ;
                    db $2F,$A1,$3C,$3F,$40,$38,$AF,$40 ;
                    db $36,$AE,$0A,$EE,$05,$FF,$10,$34 ;
                    db $FF,$30,$34,$FF,$50,$34,$FF,$70 ;
                    db $34,$FF,$B0,$38,$1E,$82,$1F,$20 ;
                    db $34,$1F,$40,$34,$1F,$60,$34,$47 ;
                    db $0E,$07,$BD,$C4,$72,$DE,$0A,$DF ;
                    db $B0,$36,$FE,$02,$03,$8E,$07,$0E ;
                    db $0F,$B0,$38,$13,$3C,$17,$3D,$E3 ;
                    db $03,$EE,$0A,$EF,$B0,$36,$F3,$06 ;
                    db $F7,$03,$FE,$02,$04,$BE,$05,$3E ;
                    db $06,$3E,$07,$3E,$0F,$B0,$38,$FE ;
                    db $0A,$F4,$63,$FF,$B0,$36,$38,$E4 ;
                    db $4A,$72,$68,$64,$37,$B0,$9F,$80 ;
                    db $38,$AF,$80,$36,$EF,$80,$38,$FF ;
                    db $80,$36,$0D,$C4,$71,$64,$CD,$43 ;
                    db $CE,$09,$DD,$42,$DE,$0B,$DF,$70 ;
                    db $38,$EF,$20,$34,$FF,$20,$34,$FF ;
                    db $A1,$3A,$FF,$70,$36,$FE,$02,$5D ;
                    db $C7,$FD ;

DATA_0ECC84:        db $50,$31,$0F,$F6,$20,$13,$E4,$23 ;
                    db $24,$27,$23,$37,$07,$66,$61,$AC ;
                    db $74,$C7,$01,$0B,$F1,$77,$73,$B6 ;
                    db $04,$DB,$71,$5C,$82,$83,$2D,$A2 ;
                    db $47,$A7,$0A,$B7,$29,$4F,$F3,$B0 ;
                    db $4E,$01,$5E,$31,$87,$0B,$93,$23 ;
                    db $CC,$06,$E3,$2C,$3A,$E0,$7C,$71 ;
                    db $97,$01,$AC,$73,$E6,$61,$0E,$B1 ;
                    db $B7,$F3,$DC,$02,$D3,$25,$07,$FB ;
                    db $2C,$01,$E7,$73,$2C,$F2,$34,$72 ;
                    db $57,$00,$7C,$02,$39,$F1,$BF,$F7 ;
                    db $30,$33,$E7,$CD,$41,$0F,$F6,$A0 ;
                    db $ED,$47,$FD ;

DATA_0ECCE7:        db $50,$11,$0F,$F6,$20,$FE,$10,$47 ;
                    db $92,$56,$40,$AC,$16,$AF,$F2,$10 ;
                    db $0F,$F5,$90,$73,$16,$82,$44,$EC ;
                    db $48,$BC,$C2,$1C,$B1,$B3,$16,$C2 ;
                    db $44,$86,$C0,$9C,$14,$9F,$F2,$10 ;
                    db $A6,$40,$DF,$F5,$10,$0B,$96,$43 ;
                    db $12,$97,$31,$D3,$12,$03,$92,$27 ;
                    db $14,$63,$00,$C7,$15,$D6,$43,$AC ;
                    db $97,$AF,$F1,$10,$1F,$F6,$90,$64 ;
                    db $13,$E3,$12,$2E,$91,$9D,$41,$AE ;
                    db $42,$BF,$F0,$20,$AD,$C7,$FD ;

DATA_0ECD3E:        db $52,$21,$0F,$F0,$20,$6E,$64,$4F ;
                    db $F2,$B0,$7C,$5F,$7C,$3F,$6F,$F1 ;
                    db $A4,$7C,$58,$7C,$38,$83,$02,$A3 ;
                    db $00,$C3,$02,$F7,$16,$5C,$D6,$CF ;
                    db $F5,$30,$D3,$20,$E3,$0A,$F3,$20 ;
                    db $25,$B5,$2C,$53,$6A,$7A,$8C,$54 ;
                    db $DA,$72,$FC,$50,$0C,$D2,$39,$73 ;
                    db $5C,$54,$AA,$72,$CC,$53,$F7,$16 ;
                    db $33,$83,$40,$06,$5C,$5B,$09,$93 ;
                    db $27,$0F,$3C,$5C,$0A,$B0,$63,$27 ;
                    db $78,$72,$93,$09,$97,$03,$A7,$03 ;
                    db $B7,$22,$47,$81,$5C,$72,$2A,$B0 ;
                    db $28,$0F,$3C,$5F,$58,$31,$B8,$31 ;
                    db $28,$B1,$3C,$5B,$98,$31,$FA,$30 ;
                    db $03,$B2,$20,$04,$7F,$F7,$B0,$F3 ;
                    db $67,$8D,$C1,$8E,$01,$CF,$F6,$20 ;
                    db $BD,$C7,$FD ;

DATA_0ECDC1:        db $54,$11,$0F,$F6,$20,$38,$F2,$AB ;
                    db $71,$0B,$F1,$96,$42,$CE,$10,$1E ;
                    db $91,$29,$61,$3A,$60,$4E,$10,$78 ;
                    db $74,$8E,$11,$06,$C3,$1A,$E0,$1E ;
                    db $10,$5E,$11,$67,$63,$77,$63,$88 ;
                    db $62,$99,$61,$AA,$60,$BE,$10,$0A ;
                    db $F2,$15,$45,$7E,$11,$7A,$31,$9A ;
                    db $E0,$AC,$02,$D9,$61,$D4,$0A,$EC ;
                    db $01,$D6,$C2,$84,$C3,$98,$FA,$D3 ;
                    db $07,$D7,$0B,$E9,$61,$EE,$10,$2E ;
                    db $91,$39,$71,$93,$03,$A6,$03,$BE ;
                    db $10,$E1,$71,$E3,$31,$5E,$91,$69 ;
                    db $61,$E6,$41,$28,$E2,$99,$71,$AE ;
                    db $10,$CE,$11,$BE,$90,$D6,$32,$3E ;
                    db $91,$5F,$F7,$30,$66,$60,$D3,$67 ;
                    db $6D,$C1,$AF,$F6,$20,$9D,$C7,$FD ;

DATA_0ECE41:        db $54,$11,$0F,$F6,$20,$AF,$F2,$30 ;
                    db $D8,$62,$E8,$62,$F8,$62,$FE,$10 ;
                    db $0C,$BE,$F8,$64,$0D,$C8,$2C,$43 ;
                    db $98,$64,$AC,$39,$48,$E4,$6A,$62 ;
                    db $7C,$47,$FA,$62,$3C,$B7,$EA,$62 ;
                    db $FC,$4D,$F6,$02,$03,$80,$06,$02 ;
                    db $13,$02,$DA,$62,$0D,$C8,$0B,$17 ;
                    db $97,$16,$2C,$B1,$33,$43,$6C,$31 ;
                    db $AC,$31,$17,$93,$73,$12,$CC,$31 ;
                    db $1A,$E2,$2C,$4B,$67,$48,$EA,$62 ;
                    db $0D,$CA,$17,$12,$53,$12,$BE,$11 ;
                    db $1D,$C1,$3E,$42,$3F,$F0,$20,$1D ;
                    db $C7,$FD ;

DATA_0ECEA3:        db $52,$B1,$0F,$F0,$20,$6E,$75,$53 ;
                    db $AA,$57,$25,$B7,$0A,$C7,$23,$0C ;
                    db $83,$5C,$72,$87,$01,$C3,$00,$C7 ;
                    db $20,$DC,$65,$0C,$87,$C3,$22,$F3 ;
                    db $03,$03,$A2,$27,$7B,$33,$03,$43 ;
                    db $23,$52,$42,$9C,$06,$A7,$20,$C3 ;
                    db $23,$03,$A2,$0C,$02,$33,$09,$39 ;
                    db $71,$43,$23,$77,$06,$83,$67,$A7 ;
                    db $73,$5C,$82,$AE,$01,$C9,$11,$DE ;
                    db $31,$07,$80,$1C,$71,$7E,$01,$98 ;
                    db $11,$9A,$10,$F3,$04,$16,$F4,$3C ;
                    db $02,$68,$7A,$8C,$01,$A7,$73,$DE ;
                    db $31,$E7,$73,$AC,$83,$09,$8F,$1C ;
                    db $03,$9F,$F7,$30,$13,$E7,$7C,$02 ;
                    db $AD,$41,$EF,$F6,$20,$0D,$0E,$39 ;
                    db $71,$7F,$F7,$30,$F2,$68,$02,$E8 ;
                    db $12,$3A,$1C,$00,$68,$7A,$E0,$6A ;
                    db $F0,$6A,$00,$6A,$6D,$C5,$FD ;

DATA_0ECF32:        db $55,$10,$0B,$1F,$0F,$F6,$20,$D6 ;
                    db $12,$07,$9F,$33,$1A,$FB,$1F,$F7 ;
                    db $94,$53,$94,$71,$71,$CC,$15,$CF ;
                    db $F3,$10,$1F,$F8,$90,$63,$12,$9B ;
                    db $13,$A9,$71,$FB,$17,$09,$F1,$13 ;
                    db $13,$21,$42,$59,$0F,$EB,$13,$33 ;
                    db $93,$40,$06,$8C,$14,$8F,$F7,$10 ;
                    db $93,$40,$CF,$F3,$10,$0B,$94,$57 ;
                    db $15,$07,$93,$19,$F3,$C6,$43,$C7 ;
                    db $13,$D3,$03,$E3,$03,$33,$B0,$4A ;
                    db $72,$55,$46,$73,$31,$A8,$74,$E3 ;
                    db $12,$8E,$91,$AD,$41,$CE,$42,$CF ;
                    db $F0,$20,$BD,$C7,$FD ;

DATA_0ECF97:        db $52,$21,$0F,$F0,$20,$6E,$63,$A9 ;
                    db $F1,$FB,$71,$22,$83,$37,$0B,$36 ;
                    db $50,$39,$51,$B8,$62,$57,$F3,$E8 ;
                    db $02,$F8,$02,$08,$82,$18,$02,$2D ;
                    db $4A,$28,$02,$38,$02,$48,$00,$A8 ;
                    db $0F,$AA,$30,$BC,$5A,$6A,$B0,$4F ;
                    db $F6,$B0,$B7,$04,$9A,$B0,$AC,$71 ;
                    db $C7,$01,$E6,$74,$0D,$09,$46,$02 ;
                    db $56,$00,$6C,$01,$84,$79,$86,$02 ;
                    db $96,$02,$A4,$71,$A6,$02,$B6,$02 ;
                    db $C4,$71,$C6,$02,$D6,$02,$39,$F1 ;
                    db $6C,$00,$77,$02,$A3,$09,$AC,$00 ;
                    db $B8,$72,$DC,$01,$07,$F3,$4C,$00 ;
                    db $6F,$F7,$30,$E3,$03,$E6,$03,$5D ;
                    db $CA,$6C,$00,$7D,$41,$BF,$F6,$20 ;
                    db $8D,$C7,$FD ;

DATA_0ED012:        db $50,$A1,$0F,$F6,$20,$17,$91,$19 ;
                    db $11,$48,$00,$68,$11,$6A,$10,$96 ;
                    db $14,$D8,$0A,$E8,$02,$F8,$02,$DC ;
                    db $81,$6C,$81,$89,$0F,$9C,$00,$C3 ;
                    db $29,$F8,$62,$47,$A7,$C6,$61,$0D ;
                    db $07,$56,$74,$B7,$00,$B9,$11,$CC ;
                    db $76,$ED,$4A,$1C,$80,$37,$01,$3A ;
                    db $10,$DE,$20,$E9,$0B,$EE,$21,$C8 ;
                    db $BC,$9C,$F6,$BC,$00,$CB,$7A,$EB ;
                    db $72,$0C,$82,$39,$71,$B7,$63,$CC ;
                    db $03,$E6,$60,$26,$E0,$4A,$30,$53 ;
                    db $31,$5C,$58,$ED,$41,$2F,$F6,$A0 ;
                    db $1D,$C7,$FD ;

DATA_0ED075:        db $50,$11,$0F,$F6,$20,$FE,$10,$8B ;
                    db $93,$A9,$0F,$14,$C1,$CC,$16,$CF ;
                    db $F1,$10,$2F,$F5,$90,$B7,$14,$C7 ;
                    db $96,$D6,$44,$2B,$92,$39,$0F,$72 ;
                    db $41,$A7,$00,$1B,$95,$97,$13,$6C ;
                    db $95,$6F,$F1,$10,$A2,$40,$BF,$F5 ;
                    db $10,$C2,$40,$0B,$9F,$53,$16,$62 ;
                    db $44,$72,$C2,$9B,$1D,$B7,$E0,$ED ;
                    db $4A,$03,$E0,$8E,$11,$9D,$41,$BE ;
                    db $42,$BF,$F0,$20,$9D,$C7,$FD ;

DATA_0ED0C4:        db $00,$C1,$4C,$00,$03,$CF,$00,$D7 ;
                    db $23,$4D,$07,$AF,$2A,$4C,$03,$CF ;
                    db $3E,$80,$F3,$4A,$BB,$C2,$BD,$C7 ;
                    db $FD ;

DATA_0ED0DD:        db $48,$0F,$0E,$01,$5E,$02,$0A,$B0 ;
                    db $1C,$04,$6A,$30,$7F,$F4,$30,$C6 ;
                    db $64,$D6,$64,$E6,$64,$F6,$64,$FE ;
                    db $00,$F0,$07,$00,$A1,$1E,$02,$47 ;
                    db $73,$7E,$04,$84,$52,$94,$50,$95 ;
                    db $0B,$96,$50,$A4,$52,$AE,$05,$B8 ;
                    db $51,$C8,$51,$CE,$01,$17,$F3,$45 ;
                    db $03,$52,$09,$62,$21,$6F,$F4,$30 ;
                    db $81,$21,$9E,$02,$B6,$64,$C6,$64 ;
                    db $C0,$0C,$D6,$64,$D0,$07,$E6,$64 ;
                    db $E0,$0C,$F0,$07,$FE,$0A,$0D,$06 ;
                    db $0E,$01,$4E,$04,$67,$73,$8E,$02 ;
                    db $B7,$0A,$BC,$03,$C4,$72,$C7,$22 ;
                    db $08,$F2,$2C,$02,$59,$71,$7C,$01 ;
                    db $96,$74,$BC,$01,$D8,$72,$FC,$01 ;
                    db $39,$F1,$4E,$01,$9E,$04,$A7,$52 ;
                    db $B7,$0B,$B8,$51,$C7,$51,$D7,$50 ;
                    db $DE,$02,$3A,$E0,$3E,$0A,$9E,$00 ;
                    db $08,$D4,$18,$54,$28,$54,$48,$54 ;
                    db $6E,$06,$9E,$01,$A8,$52,$AF,$F7 ;
                    db $40,$B8,$52,$C8,$52,$D8,$52,$DE ;
                    db $0F,$4D,$C7,$CE,$01,$DC,$01,$F9 ;
                    db $79,$1C,$82,$48,$72,$7F,$F7,$30 ;
                    db $F2,$68,$01,$E9,$11,$3A,$68,$7A ;
                    db $DE,$0F,$6D,$C5,$FD ;

DATA_0ED1A2:        db $0B,$0F,$0E,$01,$9C,$71,$B7,$00 ;
                    db $BE,$00,$3E,$81,$47,$73,$5E,$00 ;
                    db $63,$42,$8E,$01,$A7,$73,$BE,$00 ;
                    db $7E,$81,$88,$72,$F0,$59,$FE,$00 ;
                    db $00,$D9,$0E,$01,$39,$79,$A7,$03 ;
                    db $AE,$00,$B4,$03,$DE,$0F,$0D,$05 ;
                    db $0E,$02,$68,$7A,$BE,$01,$DE,$0F ;
                    db $6D,$C5,$FD ;

DATA_0ED1DD:        db $08,$8F,$0E,$01,$17,$05,$2E,$02 ;
                    db $30,$07,$37,$03,$3A,$49,$44,$03 ;
                    db $58,$47,$DF,$FA,$40,$6D,$C7,$0E ;
                    db $81,$00,$5A,$2E,$02,$87,$52,$97 ;
                    db $2F,$99,$4F,$0A,$90,$93,$56,$A3 ;
                    db $0B,$A7,$50,$B3,$55,$DF,$FA,$40 ;
                    db $6D,$C7,$0E,$81,$00,$5A,$2E,$00 ;
                    db $3E,$02,$41,$56,$57,$25,$56,$45 ;
                    db $68,$51,$7A,$43,$B7,$0B,$B8,$51 ;
                    db $DF,$FA,$40,$6D,$C7,$FD ;

DATA_0ED22B:        db $41,$01,$03,$B4,$04,$34,$05,$34 ;
                    db $5C,$02,$83,$37,$84,$37,$85,$37 ;
                    db $09,$C2,$0C,$02,$1D,$49,$FA,$60 ;
                    db $09,$E1,$18,$62,$20,$63,$27,$63 ;
                    db $33,$37,$37,$63,$47,$63,$5C,$05 ;
                    db $79,$43,$00,$BF,$08,$3F,$09,$3F ;
                    db $0A,$3F,$35,$52,$46,$48,$91,$53 ;
                    db $D6,$51,$FE,$01,$0C,$83,$6C,$04 ;
                    db $B4,$62,$C4,$62,$D4,$62,$E4,$62 ;
                    db $F4,$62,$18,$D2,$79,$51,$F4,$66 ;
                    db $00,$BF,$0C,$0A,$1D,$49,$31,$55 ;
                    db $56,$41,$77,$41,$98,$41,$C5,$55 ;
                    db $07,$E3,$17,$63,$27,$63,$37,$63 ;
                    db $47,$63,$57,$63,$67,$63,$78,$62 ;
                    db $89,$61,$9A,$60,$BC,$07,$CA,$42 ;
                    db $3A,$B3,$46,$53,$63,$34,$66,$44 ;
                    db $7C,$01,$9A,$33,$B7,$52,$DC,$01 ;
                    db $FA,$32,$05,$D4,$2C,$0D,$43,$37 ;
                    db $47,$35,$B7,$30,$C3,$64,$23,$E4 ;
                    db $29,$45,$33,$64,$43,$64,$53,$64 ;
                    db $63,$64,$73,$64,$9A,$60,$A9,$61 ;
                    db $B8,$62,$C0,$63,$C7,$63,$D0,$64 ;
                    db $D5,$0D,$D7,$63,$E0,$6A,$F0,$6A ;
                    db $00,$EA,$0D,$4A,$7D,$47,$FD ;

DATA_0ED2EA:        db $01,$01,$78,$52,$B5,$55,$DA,$60 ;
                    db $E9,$61,$F8,$62,$00,$E3,$07,$63 ;
                    db $10,$63,$17,$63,$20,$63,$27,$63 ;
                    db $30,$63,$37,$63,$40,$63,$47,$63 ;
                    db $50,$63,$57,$63,$60,$63,$67,$63 ;
                    db $70,$63,$77,$63,$80,$63,$87,$63 ;
                    db $90,$63,$97,$63,$A0,$63,$A7,$63 ;
                    db $B0,$63,$B7,$63,$C0,$63,$C7,$63 ;
                    db $D0,$63,$D7,$63,$E0,$63,$E7,$63 ;
                    db $F0,$63,$F7,$63,$0A,$CF,$36,$49 ;
                    db $62,$43,$00,$E2,$08,$62,$10,$62 ;
                    db $18,$62,$20,$62,$28,$62,$30,$62 ;
                    db $38,$62,$36,$49,$40,$62,$48,$62 ;
                    db $50,$62,$58,$62,$60,$62,$68,$62 ;
                    db $70,$62,$78,$62,$80,$62,$88,$62 ;
                    db $90,$62,$98,$62,$A0,$62,$A8,$62 ;
                    db $B0,$62,$B8,$62,$C0,$62,$C8,$62 ;
                    db $D0,$62,$D8,$62,$E0,$62,$E8,$62 ;
                    db $F0,$62,$F8,$62,$0C,$84,$65,$55 ;
                    db $97,$52,$9A,$32,$A9,$31,$B8,$30 ;
                    db $C7,$63,$D0,$6A,$D5,$0D,$E0,$6A ;
                    db $F0,$6A,$00,$EA,$7D,$47,$FD ;

DATA_0ED399:        db $2A,$A9,$6B,$0C,$CB,$0C,$15,$9C ;
                    db $89,$1C,$CC,$1D,$09,$9D,$F5,$1C ;
                    db $6B,$A9,$AB,$0C,$DB,$29,$48,$9D ;
                    db $9B,$0C,$5B,$8C,$A5,$1C,$49,$9D ;
                    db $79,$1D,$09,$9D,$6B,$0C,$C9,$1F ;
                    db $3B,$8C,$88,$95,$B9,$1C,$19,$9D ;
                    db $30,$CC,$78,$2D,$A6,$28,$90,$B5 ;
                    db $FF ;

DATA_0ED3D2:        db $0F,$02,$09,$1F,$8B,$85,$2B,$8C ;
                    db $E9,$1B,$25,$9D,$0F,$07,$09,$1D ;
                    db $6D,$28,$99,$1B,$B5,$2C,$4B,$8C ;
                    db $09,$9F,$FB,$15,$9D,$A8,$0F,$0C ;
                    db $2B,$0C,$78,$2D,$90,$B5,$FF ;

DATA_0ED3F9:        db $05,$9D,$0D,$A8,$DD,$1D,$07,$AC ;
                    db $54,$2C,$A2,$2C,$F4,$2C,$42,$AC ;
                    db $26,$9D,$D4,$03,$24,$83,$64,$03 ;
                    db $2B,$82,$4B,$02,$7B,$02,$9B,$02 ;
                    db $5B,$82,$7B,$02,$0B,$82,$2B,$02 ;
                    db $C6,$1B,$28,$82,$48,$02,$A6,$1B ;
                    db $7B,$95,$85,$0C,$9D,$9B,$0F,$0E ;
                    db $78,$2D,$7A,$1D,$90,$B5,$FF ;

DATA_0ED438:        db $19,$9B,$99,$1B,$2C,$8C,$59,$1B ;
                    db $C5,$0F,$0E,$83,$E0,$0F,$06,$2E ;
                    db $67,$E7,$0F,$08,$9B,$07,$0E,$83 ;
                    db $E0,$39,$0E,$87,$10,$BD,$28,$59 ;
                    db $9F,$0F,$0F,$34,$0F,$77,$10,$9E ;
                    db $67,$F1,$0F,$12,$0E,$67,$E3,$78 ;
                    db $2D,$0F,$15,$3B,$29,$57,$82,$0F ;
                    db $18,$55,$1D,$78,$2D,$D0,$B5,$FF ;

DATA_0ED478:        db $1B,$82,$4B,$02,$7B,$02,$AB,$02 ;
                    db $0F,$03,$F9,$0E,$D0,$BE,$8E,$C4 ;
                    db $86,$F8,$0E,$C0,$BA,$0F,$0D,$3A ;
                    db $0E,$BB,$02,$30,$B7,$80,$BC,$C0 ;
                    db $BC,$0F,$12,$24,$0F,$54,$0F,$CE ;
                    db $3C,$80,$D3,$0F,$CB,$8E,$F9,$0E ;
                    db $FF ;

DATA_0ED4A9:        db $0A,$AA,$15,$8F,$44,$0F,$4E,$44 ;
                    db $80,$D8,$07,$57,$90,$0F,$06,$67 ;
                    db $24,$8B,$17,$B9,$24,$AB,$97,$16 ;
                    db $87,$2A,$28,$84,$0F,$57,$A9,$A5 ;
                    db $29,$F5,$29,$A7,$A4,$0A,$A4,$FF ;

DATA_0ED4D1:        db $07,$82,$67,$0E,$40,$BD,$E0,$38 ;
                    db $D0,$BC,$6E,$84,$A0,$9B,$05,$0F ;
                    db $06,$BB,$05,$0F,$08,$0B,$0E,$4B ;
                    db $0E,$0F,$0A,$05,$29,$85,$29,$0F ;
                    db $0C,$DD,$28,$FF ;

DATA_0ED4F5:        db $0F,$02,$28,$10,$E6,$03,$D8,$90 ;
                    db $0F,$05,$85,$0F,$78,$83,$C8,$10 ;
                    db $18,$83,$58,$83,$F7,$90,$0F,$0C ;
                    db $43,$0F,$73,$8F,$FF ;

DATA_0ED512:        db $A7,$83,$D7,$03,$0F,$03,$6B,$00 ;
                    db $0F,$06,$E3,$0F,$14,$8F,$3E,$44 ;
                    db $C3,$0B,$80,$87,$05,$AB,$05,$DB ;
                    db $83,$0F,$0B,$07,$05,$13,$0E,$2B ;
                    db $02,$4B,$02,$0F,$10,$0B,$0E,$B0 ;
                    db $37,$90,$BC,$80,$BC,$AE,$44,$C0 ;
                    db $FF ;

DATA_0ED543:        db $0A,$AA,$D5,$8F,$03,$8F,$3E,$44 ;
                    db $C6,$D8,$83,$0F,$06,$A6,$11,$B9 ;
                    db $0E,$39,$9D,$79,$1B,$A6,$11,$E8 ;
                    db $03,$87,$83,$16,$90,$A6,$11,$B9 ;
                    db $1D,$05,$8F,$38,$29,$89,$29,$26 ;
                    db $8F,$46,$29,$FF ;

DATA_0ED56F:        db $0F,$04,$A3,$10,$0F,$09,$E3,$29 ;
                    db $0F,$0D,$55,$24,$A9,$24,$0F,$11 ;
                    db $59,$1D,$A9,$1B,$23,$8F,$15,$9B ;
                    db $FF ;

DATA_0ED588:        db $0F,$01,$DB,$02,$30,$B7,$80,$3B ;
                    db $1B,$8E,$4A,$0E,$EB,$03,$3B,$82 ;
                    db $5B,$02,$E5,$0F,$14,$8F,$44,$0F ;
                    db $5B,$82,$0C,$85,$35,$8F,$06,$85 ;
                    db $E3,$05,$DB,$83,$3E,$84,$E0,$FF ;

DATA_0ED5B0:        db $0F,$02,$0A,$29,$F7,$02,$80,$BC ;
                    db $6B,$82,$7B,$02,$9B,$02,$AB,$02 ;
                    db $39,$8E,$0F,$07,$CE,$35,$EC,$F5 ;
                    db $0F,$FB,$85,$FB,$85,$3E,$C4,$E3 ;
                    db $A7,$02,$FF ;

DATA_0ED5D3:        db $09,$A9,$86,$11,$D5,$10,$A3,$8F ;
                    db $D5,$29,$86,$91,$2B,$83,$58,$03 ;
                    db $5B,$85,$EB,$05,$3E,$BC,$E0,$0F ;
                    db $09,$43,$0F,$74,$0F,$6B,$85,$DB ;
                    db $05,$C6,$A4,$19,$A4,$12,$8F ;

DATA_0ED5FA:        db $FF ;

DATA_0ED5FB:        db $0A,$AA,$2E,$2B,$98,$2E,$36,$E7 ;
                    db $FF ;

DATA_0ED604:        db $0B,$83,$B7,$03,$D7,$03,$0F,$05 ;
                    db $67,$03,$7B,$02,$9B,$02,$80,$B9 ;
                    db $3B,$83,$4E,$B4,$80,$86,$2B,$C9 ;
                    db $2C,$16,$AC,$67,$B4,$DE,$3B,$81 ;
                    db $FF ;

DATA_0ED625:        db $1E,$AF,$CA,$1E,$2C,$85,$0F,$04 ;
                    db $1E,$2D,$A7,$1E,$2F,$CE,$1E,$35 ;
                    db $E5,$0F,$07,$1E,$2B,$87,$1E,$30 ;
                    db $C5,$FF ;

DATA_0ED63F:        db $0F,$01,$2E,$3B,$A1,$5B,$07,$AB ;
                    db $07,$69,$87,$BA,$07,$FB,$87,$65 ;
                    db $A7,$6A,$27,$A6,$A7,$AC,$27,$1B ;
                    db $87,$88,$07,$2B,$83,$7B,$07,$A7 ;
                    db $90,$E5,$83,$14,$A7,$19,$27,$77 ;
                    db $07,$F8,$07,$47,$8F,$B9,$07,$FF ;

DATA_0ED66F:        db $07,$9B,$0A,$07,$B9,$1B,$66,$9B ;
                    db $78,$07,$AE,$67,$E5,$FF ;

DATA_0ED67D:        db $97,$87,$CB,$00,$EE,$2B,$F8,$FE ;
                    db $2D,$AD,$75,$87,$D3,$27,$D9,$27 ;
                    db $0F,$04,$56,$0F,$FF ;

DATA_0ED692:        db $9B,$09,$0F,$52,$32,$0F,$63,$32 ;
                    db $0F,$11,$28,$1F,$11,$28,$2F,$11 ;
                    db $28,$3F,$11,$28,$3E,$03,$3F,$70 ;
                    db $36,$4C,$50,$4E,$07,$5F,$70,$38 ;
                    db $6F,$70,$36,$6E,$03,$7C,$52,$9E ;
                    db $07,$AF,$80,$38,$FE,$0A,$FF,$20 ;
                    db $34,$FF,$80,$36,$7E,$89,$8F,$70 ;
                    db $38,$9F,$70,$36,$9E,$0A,$EE,$09 ;
                    db $FF,$70,$38,$FE,$0B,$0F,$20,$B4 ;
                    db $1F,$20,$34,$13,$0E,$1E,$09,$3F ;
                    db $70,$36,$3E,$0A,$6E,$09,$7F,$70 ;
                    db $38,$87,$0E,$9F,$A1,$3A,$9F,$70 ;
                    db $36,$9E,$02,$C6,$07,$CA,$0E,$F7 ;
                    db $62,$07,$8E,$08,$61,$1F,$B0,$36 ;
                    db $17,$62,$1E,$0A,$4E,$06,$5E,$0A ;
                    db $58,$64,$7E,$06,$88,$64,$8E,$0A ;
                    db $AE,$06,$BF,$80,$38,$BE,$07,$CF ;
                    db $20,$34,$F3,$0E,$1E,$86,$1F,$20 ;
                    db $34,$2F,$80,$36,$2E,$0A,$84,$37 ;
                    db $93,$36,$A2,$45,$1E,$89,$2F,$70 ;
                    db $38,$46,$0E,$6E,$0A,$6F,$70,$36 ;
                    db $A7,$31,$DB,$61,$F7,$60,$1B,$E1 ;
                    db $37,$31,$7E,$09,$8E,$0B,$8F,$70 ;
                    db $38,$9F,$10,$34,$9F,$30,$34,$A3 ;
                    db $0E,$FF,$A1,$3A,$FF,$70,$36,$FE ;
                    db $04,$17,$BB,$47,$0E,$77,$0E,$BE ;
                    db $02,$BF,$20,$34,$CF,$B0,$36,$CE ;
                    db $0A,$07,$8E,$17,$31,$63,$31,$A7 ;
                    db $34,$C7,$0E,$13,$B1,$4E,$09,$5F ;
                    db $70,$38,$1E,$8A,$1F,$70,$36,$7E ;
                    db $02,$8F,$B0,$38,$97,$34,$B7,$0E ;
                    db $CF,$B0,$36,$CE,$0A,$DE,$02,$D8 ;
                    db $61,$EF,$B0,$38,$F7,$62,$FE,$03 ;
                    db $0F,$20,$B4,$07,$34,$17,$0E,$47 ;
                    db $62,$4F,$B0,$36,$4E,$0A,$5E,$03 ;
                    db $5F,$11,$28,$67,$62,$6F,$B0,$38 ;
                    db $77,$34,$B7,$62,$CF,$11,$28,$DA ;
                    db $60,$E9,$61,$F8,$62,$FF,$B0,$36 ;
                    db $FF,$20,$34,$FE,$0A,$0D,$C4,$01 ;
                    db $52,$11,$52,$21,$52,$31,$52,$41 ;
                    db $52,$51,$52,$61,$52,$CD,$43,$CE ;
                    db $09,$DE,$0B,$DD,$42,$DF,$70,$38 ;
                    db $EF,$20,$34,$FF,$20,$34,$FF,$A1 ;
                    db $3A,$FF,$70,$36,$FE,$02,$5D,$C7 ;
                    db $FD ;

DATA_0ED7F3:        db $5B,$09,$0F,$52,$32,$0F,$63,$32 ;
                    db $4F,$70,$36,$4E,$0A,$87,$31,$FE ;
                    db $02,$0F,$B0,$B8,$88,$72,$C7,$33 ;
                    db $0D,$02,$07,$0E,$17,$34,$6E,$0A ;
                    db $6F,$B0,$36,$8E,$02,$9F,$B0,$38 ;
                    db $BF,$F7,$60,$ED,$4B,$B7,$B6,$C3 ;
                    db $35,$1E,$8A,$1F,$B0,$36,$2E,$02 ;
                    db $3F,$B0,$38,$33,$3F,$37,$3F,$88 ;
                    db $F2,$C7,$33,$ED,$4B,$0D,$06,$03 ;
                    db $33,$0F,$F4,$70,$47,$73,$67,$73 ;
                    db $7F,$B0,$36,$87,$65,$97,$65,$9E ;
                    db $0A,$ED,$4B,$F7,$32,$07,$8E,$97 ;
                    db $0E,$AE,$00,$DE,$02,$EF,$00,$34 ;
                    db $EF,$B0,$38,$E3,$35,$E7,$35,$3E ;
                    db $8A,$3F,$B0,$36,$4E,$02,$5F,$B0 ;
                    db $38,$53,$3E,$57,$3E,$07,$8E,$A7 ;
                    db $34,$BF,$F3,$60,$ED,$4B,$2E,$8A ;
                    db $2F,$B0,$36,$FE,$06,$0F,$80,$B8 ;
                    db $2E,$08,$3F,$41,$28,$3F,$10,$34 ;
                    db $3F,$30,$34,$3F,$50,$34,$4F,$41 ;
                    db $28,$5F,$41,$28,$6F,$41,$28,$6F ;
                    db $10,$34,$6F,$30,$34,$6F,$50,$34 ;
                    db $6E,$06,$8F,$71,$3C,$8E,$0C,$9F ;
                    db $40,$38,$BF,$71,$3A,$BF,$40,$36 ;
                    db $BE,$06,$FF,$80,$36,$FE,$0A,$01 ;
                    db $D2,$0D,$44,$11,$52,$21,$52,$31 ;
                    db $52,$41,$52,$42,$0B,$51,$52,$61 ;
                    db $52,$CD,$43,$CE,$09,$DD,$42,$DE ;
                    db $0B,$DF,$70,$38,$EF,$20,$34,$FF ;
                    db $20,$34,$FF,$A1,$3A,$FF,$70,$36 ;
                    db $FE,$02,$5D,$C7,$FD ;

DATA_0ED8E8:        db $58,$09,$0F,$55,$32,$0F,$6D,$32 ;
                    db $0F,$11,$28,$1F,$11,$28,$2F,$11 ;
                    db $28,$3F,$11,$28,$4F,$11,$28,$5F ;
                    db $11,$28,$6F,$11,$28,$7F,$11,$28 ;
                    db $8F,$11,$28,$9F,$11,$28,$AF,$11 ;
                    db $28,$BF,$11,$28,$BF,$20,$34,$DE ;
                    db $0C,$EF,$60,$3C,$EF,$40,$38,$F3 ;
                    db $3D,$03,$8E,$6E,$43,$CE,$0A,$CF ;
                    db $40,$36,$EF,$17,$28,$EF,$20,$34 ;
                    db $EF,$80,$34,$FF,$17,$28,$0F,$17 ;
                    db $A8,$1F,$17,$28,$1E,$05,$2F,$80 ;
                    db $28,$2F,$B0,$38,$3F,$80,$28,$4F ;
                    db $80,$28,$5F,$80,$28,$6F,$80,$28 ;
                    db $6E,$40,$7F,$80,$28,$8F,$80,$28 ;
                    db $9F,$80,$28,$AF,$80,$28,$BE,$01 ;
                    db $BF,$00,$34,$BF,$80,$34,$C7,$06 ;
                    db $DB,$0E,$DE,$00,$1F,$F0,$80,$6F ;
                    db $F0,$00,$BF,$F0,$00,$0F,$F0,$80 ;
                    db $5F,$F0,$00,$7E,$05,$8F,$00,$34 ;
                    db $8F,$B0,$38,$A8,$37,$AF,$80,$34 ;
                    db $BF,$80,$28,$CF,$80,$28,$DF,$80 ;
                    db $28,$EF,$80,$28,$FF,$20,$34,$FF ;
                    db $80,$28,$FE,$02,$0F,$80,$A8,$1F ;
                    db $80,$34,$24,$0E,$34,$30,$3E,$0C ;
                    db $3F,$A1,$3C,$4F,$40,$38,$4E,$43 ;
                    db $AE,$0A,$AF,$40,$36,$BE,$0C,$CF ;
                    db $40,$38,$EE,$0A,$EF,$40,$36,$FE ;
                    db $0C,$0F,$40,$B8,$2E,$0A,$2F,$40 ;
                    db $36,$3E,$0C,$4F,$40,$38,$7E,$02 ;
                    db $7F,$A1,$3A,$7F,$40,$36,$8E,$0E ;
                    db $94,$64,$A4,$64,$B4,$65,$C4,$65 ;
                    db $D4,$65,$E4,$65,$F4,$65,$04,$E5 ;
                    db $14,$65,$24,$65,$34,$65,$44,$65 ;
                    db $54,$65,$64,$65,$74,$65,$84,$65 ;
                    db $94,$65,$A4,$65,$B4,$65,$C4,$65 ;
                    db $D4,$65,$E4,$65,$F4,$65,$0E,$82 ;
                    db $04,$63,$2E,$86,$2F,$A1,$3C,$3F ;
                    db $80,$38,$4E,$0C,$4F,$71,$3C,$5F ;
                    db $40,$38,$9E,$09,$9F,$61,$3A,$9F ;
                    db $40,$36,$C1,$62,$C4,$0E,$EE,$0C ;
                    db $EF,$61,$3C,$FF,$40,$38,$0E,$86 ;
                    db $0F,$71,$3A,$0F,$40,$36,$5E,$0C ;
                    db $5F,$71,$3C,$6F,$40,$38,$7E,$09 ;
                    db $7F,$61,$3A,$7F,$40,$36,$A1,$62 ;
                    db $A4,$0E,$CF,$61,$3C,$DF,$40,$38 ;
                    db $DE,$0C,$FE,$0A,$FF,$40,$36,$28 ;
                    db $B4,$A6,$31,$E8,$34,$8B,$B2,$9B ;
                    db $0E,$FE,$07,$0F,$20,$B4,$0F,$80 ;
                    db $38,$FF,$20,$34,$FF,$80,$36,$FE ;
                    db $0A,$0D,$C4,$CD,$43,$CE,$09,$DD ;
                    db $42,$DE,$0B,$DF,$70,$38,$EF,$20 ;
                    db $34,$FF,$20,$34,$FF,$A1,$3A,$FF ;
                    db $70,$36,$FE,$02,$5D,$C7,$FD ;

DATA_0EDA8F:        db $5B,$03,$05,$34,$06,$35,$07,$36 ;
                    db $6E,$0A,$6F,$10,$34,$6F,$B0,$36 ;
                    db $EE,$02,$FF,$B0,$38,$FE,$05,$0F ;
                    db $20,$B4,$0E,$05,$0D,$01,$17,$0E ;
                    db $97,$0E,$9F,$20,$34,$9E,$02,$C6 ;
                    db $05,$FA,$30,$FE,$0A,$FF,$B0,$36 ;
                    db $4E,$82,$5F,$B0,$38,$57,$0E,$58 ;
                    db $62,$68,$62,$79,$61,$8A,$60,$8E ;
                    db $0A,$8F,$B0,$36,$F5,$31,$F9,$7B ;
                    db $39,$F3,$97,$33,$B5,$71,$39,$F3 ;
                    db $4D,$48,$9E,$02,$AE,$05,$AF,$B0 ;
                    db $38,$BF,$10,$34,$CD,$4A,$ED,$4B ;
                    db $FF,$24,$28,$0E,$81,$0F,$10,$34 ;
                    db $17,$06,$2F,$B0,$36,$39,$73,$5C ;
                    db $02,$85,$65,$8F,$B0,$38,$9F,$B0 ;
                    db $36,$95,$32,$A9,$7B,$CC,$03,$5E ;
                    db $8F,$6D,$47,$FE,$02,$0D,$07,$2F ;
                    db $B0,$36,$39,$73,$4E,$0A,$AE,$02 ;
                    db $BF,$B0,$38,$EC,$71,$07,$81,$17 ;
                    db $02,$2F,$B0,$36,$39,$73,$5F,$B0 ;
                    db $38,$E6,$05,$2F,$B0,$B6,$39,$7B ;
                    db $4E,$0A,$C4,$31,$EB,$61,$FE,$02 ;
                    db $07,$B0,$0F,$B0,$38,$1F,$B0,$36 ;
                    db $1E,$0A,$4E,$06,$5F,$80,$38,$57 ;
                    db $0E,$BE,$02,$BF,$A1,$3A,$BF,$80 ;
                    db $36,$C9,$61,$DA,$60,$ED,$4B,$0E ;
                    db $85,$1F,$10,$34,$0D,$0E,$FF,$20 ;
                    db $34,$FF,$B0,$36,$FE,$0A,$78,$E4 ;
                    db $8E,$06,$9F,$80,$38,$B3,$06,$BF ;
                    db $F7,$40,$EE,$0F,$EF,$80,$36,$FF ;
                    db $10,$34,$6D,$C7,$0E,$82,$0F,$10 ;
                    db $34,$1F,$B0,$38,$2F,$B0,$36,$39 ;
                    db $73,$5F,$B0,$38,$9A,$60,$AF,$A1 ;
                    db $3C,$A9,$61,$AE,$06,$BF,$80,$38 ;
                    db $DF,$80,$36,$DE,$0A,$E7,$03,$EB ;
                    db $79,$F7,$03,$FE,$06,$0F,$80,$B8 ;
                    db $0D,$14,$FF,$80,$36,$FE,$0A,$5E ;
                    db $82,$6F,$B0,$38,$7F,$F6,$60,$9E ;
                    db $0A,$9F,$B0,$36,$F8,$64,$FE,$0B ;
                    db $0F,$20,$B4,$0F,$70,$38,$9F,$A1 ;
                    db $3A,$9F,$70,$36,$9E,$04,$BE,$05 ;
                    db $CF,$40,$34,$BE,$82,$BF,$20,$34 ;
                    db $DA,$60,$E9,$61,$F8,$62,$FF,$B0 ;
                    db $36,$FE,$0A,$0D,$C4,$11,$64,$51 ;
                    db $62,$CD,$43,$CE,$09,$DD,$42,$DE ;
                    db $0B,$DF,$70,$38,$EF,$20,$34,$FF ;
                    db $20,$34,$FE,$02,$5D,$C7,$FD ;

DATA_0EDC06:        db $52,$B1,$0F,$F0,$20,$6E,$75,$CC ;
                    db $73,$A3,$B3,$BF,$F4,$70,$0C,$84 ;
                    db $83,$3F,$8E,$01,$9F,$F4,$70,$AE ;
                    db $31,$EF,$F1,$70,$EC,$01,$2F,$F1 ;
                    db $F0,$2C,$01,$6F,$F1,$70,$6C,$01 ;
                    db $A8,$91,$AA,$10,$77,$FB,$56,$F4 ;
                    db $39,$F1,$BF,$F7,$30,$33,$E7,$43 ;
                    db $04,$47,$03,$6C,$05,$C3,$67,$D3 ;
                    db $67,$E3,$67,$ED,$4C,$FC,$07,$73 ;
                    db $E7,$83,$67,$93,$67,$A3,$67,$BC ;
                    db $08,$43,$E7,$53,$67,$DC,$02,$59 ;
                    db $91,$C3,$33,$D9,$71,$DF,$F2,$70 ;
                    db $2D,$CD,$5B,$71,$9B,$71,$3B,$F1 ;
                    db $A7,$C2,$DB,$71,$0D,$10,$9B,$71 ;
                    db $0A,$B0,$1C,$04,$67,$63,$76,$64 ;
                    db $85,$65,$94,$66,$A3,$67,$B3,$67 ;
                    db $CC,$09,$73,$A3,$87,$22,$B3,$09 ;
                    db $D6,$83,$E3,$03,$00,$EA,$10,$6A ;
                    db $20,$6A,$30,$6A,$40,$6A,$50,$6A ;
                    db $60,$6A,$70,$6A,$80,$6A,$90,$6A ;
                    db $A0,$6A,$B0,$6A,$C0,$6A,$D0,$6A ;
                    db $E0,$6A,$F0,$6A,$00,$EA,$10,$6A ;
                    db $20,$6A,$30,$6A,$40,$6A,$50,$6A ;
                    db $60,$6A,$70,$6A,$80,$6A,$90,$6A ;
                    db $A0,$6A,$B0,$6A,$C0,$6A,$D0,$6A ;
                    db $EC,$01,$03,$F7,$9D,$41,$DF,$F6 ;
                    db $20,$0D,$18,$39,$71,$7F,$F7,$30 ;
                    db $F2,$68,$01,$E9,$11,$39,$68,$7A ;
                    db $E0,$6A,$F0,$6A,$00,$EA,$6D,$45 ;
                    db $FD ;

DATA_0EDCEF:        db $50,$11,$0F,$F6,$20,$DF,$F2,$30 ;
                    db $FE,$10,$0D,$01,$98,$74,$C8,$13 ;
                    db $52,$E1,$63,$31,$61,$79,$C6,$61 ;
                    db $06,$E1,$8B,$71,$AB,$71,$E4,$19 ;
                    db $EB,$19,$60,$86,$C8,$13,$CD,$4B ;
                    db $39,$F3,$98,$13,$17,$F5,$7C,$15 ;
                    db $7F,$F3,$10,$CF,$F5,$10,$D4,$40 ;
                    db $0B,$9A,$23,$16,$32,$44,$A3,$95 ;
                    db $B2,$43,$0D,$0A,$27,$14,$3D,$4A ;
                    db $A4,$40,$BC,$16,$BF,$F3,$10,$C4 ;
                    db $40,$04,$C0,$1F,$F6,$10,$24,$40 ;
                    db $43,$31,$CE,$11,$DD,$41,$FF,$F0 ;
                    db $20,$ED,$C7,$FD ;

DATA_0EDD53:        db $52,$A1,$0F,$F0,$20,$6E,$40,$D6 ;
                    db $61,$E7,$07,$F7,$21,$16,$E1,$34 ;
                    db $63,$47,$21,$54,$04,$67,$0A,$74 ;
                    db $63,$DC,$01,$06,$E1,$17,$26,$86 ;
                    db $61,$66,$C2,$58,$C1,$F7,$03,$04 ;
                    db $F6,$8A,$10,$9C,$04,$E8,$62,$F9 ;
                    db $61,$0A,$E0,$53,$31,$5F,$F3,$70 ;
                    db $7B,$71,$77,$25,$FC,$E2,$17,$AA ;
                    db $23,$00,$3C,$67,$B3,$01,$CC,$63 ;
                    db $DB,$71,$DF,$F3,$70,$FC,$00,$4F ;
                    db $F7,$B0,$CA,$7A,$C5,$31,$EC,$54 ;
                    db $3C,$DC,$5D,$4C,$0F,$F3,$B0,$47 ;
                    db $63,$6B,$F1,$8C,$0A,$39,$F1,$EC ;
                    db $03,$F0,$33,$0F,$F2,$E0,$29,$73 ;
                    db $49,$61,$58,$62,$67,$73,$85,$65 ;
                    db $94,$66,$A3,$77,$AD,$4D,$AE,$01 ;
                    db $4D,$C1,$8F,$F6,$20,$7D,$C7,$FD ;

DATA_0EDDDB:        db $50,$11,$0F,$F6,$20,$AF,$F2,$30 ;
                    db $D8,$62,$DE,$10,$08,$E4,$5A,$62 ;
                    db $6C,$4C,$86,$43,$AD,$48,$3A,$E2 ;
                    db $53,$42,$88,$64,$9C,$36,$08,$E4 ;
                    db $4A,$62,$5C,$4D,$3A,$E2,$9C,$32 ;
                    db $FC,$41,$3C,$B1,$83,$00,$AC,$42 ;
                    db $2A,$E2,$3C,$46,$AA,$62,$BC,$4E ;
                    db $C6,$43,$46,$C3,$AA,$62,$BD,$48 ;
                    db $0B,$96,$47,$07,$C7,$12,$3C,$C2 ;
                    db $9C,$41,$CD,$48,$DC,$32,$4C,$C2 ;
                    db $BC,$32,$1C,$B1,$5A,$62,$6C,$44 ;
                    db $76,$43,$BA,$62,$DC,$32,$5D,$CA ;
                    db $73,$12,$E3,$12,$8E,$91,$9D,$41 ;
                    db $BE,$42,$BF,$F0,$20,$9D,$C7,$FD ;

DATA_0EDE4B:        db $52,$B1,$0F,$F0,$20,$6E,$76,$03 ;
                    db $B1,$09,$71,$0F,$F1,$70,$6F,$F3 ;
                    db $30,$A7,$63,$B7,$34,$BC,$0E,$4D ;
                    db $CC,$03,$A6,$08,$72,$3F,$F2,$70 ;
                    db $6D,$4C,$73,$07,$77,$73,$83,$27 ;
                    db $AC,$00,$BF,$F3,$70,$3C,$80,$9A ;
                    db $30,$AC,$5B,$C6,$3C,$6A,$B0,$75 ;
                    db $10,$96,$74,$B6,$0A,$DA,$30,$E3 ;
                    db $28,$EC,$5B,$ED,$48,$AA,$B0,$33 ;
                    db $B4,$51,$79,$AD,$4A,$DD,$4D,$E3 ;
                    db $2C,$0C,$FA,$73,$07,$B3,$04,$CB ;
                    db $71,$EC,$07,$0D,$0A,$39,$71,$DF ;
                    db $F3,$30,$CA,$B0,$D6,$10,$D7,$30 ;
                    db $DC,$0C,$03,$B1,$AD,$41,$EF,$F6 ;
                    db $20,$ED,$C7,$39,$F1,$0D,$10,$7D ;
                    db $4C,$0D,$13,$A8,$11,$AA,$10,$1C ;
                    db $83,$D7,$7B,$F3,$67,$5D,$CD,$6D ;
                    db $47,$FD ;

DATA_0EDED5:        db $56,$11,$0F,$F6,$20,$DF,$F2,$30 ;
                    db $FE,$11,$0D,$01,$0C,$5F,$03,$80 ;
                    db $0C,$52,$29,$15,$7C,$5B,$23,$B2 ;
                    db $29,$1F,$31,$79,$1C,$DE,$48,$3B ;
                    db $ED,$4B,$39,$F1,$CF,$F3,$B0,$FE ;
                    db $10,$37,$8E,$77,$0E,$9E,$11,$A8 ;
                    db $34,$A9,$34,$AA,$34,$F8,$62,$FE ;
                    db $10,$37,$B6,$DE,$11,$E7,$63,$F8 ;
                    db $62,$09,$E1,$0E,$10,$47,$36,$B7 ;
                    db $0E,$BE,$91,$CA,$32,$EE,$10,$1D ;
                    db $CA,$7E,$11,$83,$77,$9E,$10,$1E ;
                    db $91,$2D,$41,$6F,$F6,$20,$6D,$C7 ;
                    db $FD ;

DATA_0EDF36:        db $57,$11,$0F,$F6,$20,$FE,$10,$4B ;
                    db $92,$59,$0F,$AD,$4C,$D3,$93,$0B ;
                    db $94,$29,$0F,$7B,$93,$99,$0F,$0D ;
                    db $06,$27,$12,$35,$0F,$23,$B1,$57 ;
                    db $75,$A3,$31,$AB,$71,$F7,$75,$23 ;
                    db $B1,$87,$13,$95,$0F,$0D,$0A,$23 ;
                    db $35,$38,$13,$55,$00,$9B,$16,$0B ;
                    db $96,$C7,$75,$3B,$92,$49,$0F,$AD ;
                    db $4C,$29,$92,$52,$40,$6C,$15,$6F ;
                    db $F1,$10,$72,$40,$BF,$F5,$10,$03 ;
                    db $93,$0A,$13,$12,$41,$8B,$12,$99 ;
                    db $0F,$0D,$10,$47,$16,$46,$45,$B3 ;
                    db $32,$13,$B1,$57,$0E,$A7,$0E,$D3 ;
                    db $31,$53,$B1,$A6,$31,$03,$B2,$13 ;
                    db $0E,$8D,$4D,$AE,$11,$BD,$41,$DF ;
                    db $F0,$20,$AD,$C7,$FD ;

DATA_0EDFB3:        db $52,$A1,$0F,$F0,$20,$6E,$65,$57 ;
                    db $F3,$60,$21,$6F,$F2,$60,$AC,$75 ;
                    db $07,$80,$1C,$76,$87,$01,$9C,$70 ;
                    db $B0,$33,$CF,$F6,$60,$57,$E3,$6C ;
                    db $04,$CD,$4C,$9A,$B0,$AC,$0C,$83 ;
                    db $B1,$8F,$F4,$70,$BD,$4D,$F8,$11 ;
                    db $FA,$10,$83,$87,$93,$22,$9F,$F4 ;
                    db $70,$59,$F1,$89,$61,$A9,$61,$BC ;
                    db $0C,$67,$A0,$EB,$71,$77,$87,$7A ;
                    db $10,$86,$51,$95,$52,$A4,$53,$B6 ;
                    db $04,$B3,$24,$26,$85,$4A,$10,$53 ;
                    db $23,$5C,$00,$6F,$F3,$70,$93,$08 ;
                    db $07,$FB,$2C,$04,$33,$30,$74,$76 ;
                    db $EB,$71,$57,$8B,$6C,$02,$96,$74 ;
                    db $E3,$30,$0C,$86,$7D,$41,$BF,$F6 ;
                    db $20,$BD,$C7,$FD ;

DATA_0EE02F:        db $50,$61,$0F,$F6,$20,$BB,$F1,$DC ;
                    db $06,$23,$87,$B5,$71,$B7,$31,$D7 ;
                    db $28,$06,$C5,$67,$08,$0D,$05,$39 ;
                    db $71,$7C,$00,$9E,$62,$B6,$03,$E6 ;
                    db $05,$4E,$E0,$5D,$4C,$59,$0F,$6C ;
                    db $02,$93,$67,$AC,$56,$AD,$4C,$1F ;
                    db $F1,$B0,$3C,$01,$98,$0A,$9E,$20 ;
                    db $A8,$21,$F3,$09,$0E,$A1,$27,$20 ;
                    db $3E,$62,$56,$05,$7D,$4D,$C6,$05 ;
                    db $3E,$E0,$9E,$62,$B6,$05,$1E,$E0 ;
                    db $4C,$00,$6C,$00,$A7,$7B,$E0,$6A ;
                    db $F0,$6A,$00,$EA,$6D,$47,$FE,$10 ;
                    db $0B,$93,$5B,$15,$B7,$12,$03,$91 ;
                    db $AB,$1F,$BD,$41,$FF,$F6,$20,$BD ;
                    db $C7,$FD ;

DATA_0EE0A1:        db $50,$50,$0F,$F6,$20,$0B,$1F,$57 ;
                    db $92,$8B,$12,$D2,$14,$4B,$92,$59 ;
                    db $0F,$0B,$95,$BB,$1F,$BE,$52,$58 ;
                    db $E2,$9E,$50,$97,$05,$BB,$1F,$AE ;
                    db $D2,$B6,$05,$BB,$1F,$DD,$4A,$F6 ;
                    db $06,$2F,$60,$96,$8E,$50,$98,$62 ;
                    db $EB,$11,$07,$F3,$0B,$1D,$2E,$52 ;
                    db $4F,$70,$18,$CE,$50,$EB,$1F,$EE ;
                    db $52,$5E,$D0,$D9,$0F,$AB,$9F,$BE ;
                    db $52,$8E,$D0,$AB,$1D,$AE,$52,$36 ;
                    db $83,$56,$05,$5E,$50,$DC,$15,$DF ;
                    db $F2,$10,$2F,$F5,$90,$C3,$31,$5B ;
                    db $9F,$6D,$41,$8E,$52,$8F,$F0,$20 ;
                    db $8D,$C7 ;

DATA_0EE10B:        db $FD ;

DATA_0EE10C:        db $00,$C1,$4C,$00,$F3,$4F,$FA,$C6 ;
                    db $68,$A0,$69,$20,$6A,$20,$7A,$47 ;
                    db $F8,$20,$F9,$20,$FA,$20,$0A,$CF ;
                    db $B4,$49,$55,$A0,$56,$20,$73,$47 ;
                    db $F5,$20,$F6,$20,$22,$A1,$41,$48 ;
                    db $52,$20,$72,$20,$92,$20,$B2,$20 ;
                    db $FE,$00,$9B,$C2,$AD,$C7,$FD ;

DATA_0EE143:        db $48,$0F,$1E,$01,$27,$06,$5E,$02 ;
                    db $8F,$F3,$60,$8C,$01,$EF,$F7,$60 ;
                    db $1C,$81,$2E,$09,$3C,$63,$73,$01 ;
                    db $8C,$60,$FE,$02,$1E,$8E,$3E,$02 ;
                    db $44,$07,$45,$52,$4E,$0E,$8E,$02 ;
                    db $99,$71,$B5,$24,$B6,$24,$B7,$24 ;
                    db $FE,$02,$07,$87,$17,$22,$37,$52 ;
                    db $37,$0B,$47,$52,$4E,$0A,$57,$52 ;
                    db $5E,$02,$67,$52,$77,$52,$7E,$0A ;
                    db $87,$52,$8E,$02,$96,$46,$97,$52 ;
                    db $A7,$52,$B7,$52,$C7,$52,$D7,$52 ;
                    db $E7,$52,$F7,$52,$FE,$04,$07,$A3 ;
                    db $47,$08,$57,$26,$C7,$0A,$E9,$71 ;
                    db $17,$A7,$97,$08,$9E,$01,$A0,$24 ;
                    db $C6,$74,$F0,$0C,$FE,$04,$0C,$80 ;
                    db $6F,$F2,$30,$98,$62,$A8,$62,$BC ;
                    db $00,$C7,$73,$E7,$73,$FE,$02,$7F ;
                    db $F7,$E0,$8E,$01,$9E,$00,$DE,$02 ;
                    db $F7,$0B,$FE,$0E,$4E,$82,$54,$52 ;
                    db $64,$51,$6E,$00,$74,$09,$9F,$F0 ;
                    db $00,$DF,$F0,$00,$2F,$F0,$80,$4E ;
                    db $02,$59,$47,$CE,$0A,$07,$F5,$68 ;
                    db $54,$7F,$F4,$60,$88,$54,$A8,$54 ;
                    db $AE,$01,$B8,$52,$BF,$F7,$40,$C8 ;
                    db $52,$D8,$52,$E8,$52,$EE,$0F,$4D ;
                    db $C7,$0D,$0D,$0E,$02,$68,$7A,$BE ;
                    db $01,$EE,$0F,$6D,$C5,$FD ;

DATA_0EE219:        db $08,$0F,$0E,$01,$2E,$05,$38,$2C ;
                    db $3A,$4F,$08,$AC,$C7,$0B,$CE,$01 ;
                    db $DF,$FA,$40,$6D,$C7,$0E,$81,$00 ;
                    db $5A,$2E,$02,$B8,$4F,$CF,$F5,$60 ;
                    db $0F,$F5,$E0,$4F,$F5,$60,$8F,$F5 ;
                    db $60,$DF,$FA,$40,$6D,$C7,$0E,$81 ;
                    db $00,$5A,$30,$07,$34,$52,$3E,$02 ;
                    db $42,$47,$44,$47,$46,$27,$C0,$0B ;
                    db $C4,$52,$DF,$FA,$40,$6D,$C7,$FD ;

DATA_0EE261:        db $41,$01,$27,$D3,$79,$51,$C4,$56 ;
                    db $00,$E2,$03,$53,$0C,$0F,$12,$3B ;
                    db $1A,$42,$43,$54,$6D,$49,$83,$53 ;
                    db $99,$53,$C3,$54,$DA,$52,$0C,$84 ;
                    db $09,$53,$53,$64,$63,$31,$67,$34 ;
                    db $86,$41,$8C,$01,$A3,$30,$B3,$64 ;
                    db $CC,$03,$D9,$42,$5C,$84,$A0,$62 ;
                    db $A8,$62,$B0,$62,$B8,$62,$C0,$62 ;
                    db $C8,$62,$D0,$62,$D8,$62,$E0,$62 ;
                    db $E8,$62,$16,$C2,$58,$52,$8C,$04 ;
                    db $A7,$55,$D0,$63,$D7,$63,$E2,$61 ;
                    db $E7,$63,$F2,$61,$F7,$63,$13,$B8 ;
                    db $17,$38,$8C,$03,$1D,$C9,$50,$62 ;
                    db $5C,$0B,$62,$3E,$63,$52,$8A,$52 ;
                    db $93,$54,$AA,$42,$D3,$51,$EA,$41 ;
                    db $03,$D3,$1C,$04,$1A,$52,$33,$55 ;
                    db $73,$44,$77,$44,$16,$D2,$19,$31 ;
                    db $1A,$32,$5C,$0F,$9A,$47,$95,$64 ;
                    db $A5,$64,$B5,$64,$C5,$64,$D5,$64 ;
                    db $E5,$64,$F5,$64,$05,$E4,$40,$61 ;
                    db $42,$35,$56,$34,$5C,$09,$A2,$61 ;
                    db $A6,$61,$B3,$34,$B7,$34,$FC,$08 ;
                    db $0C,$87,$28,$54,$59,$53,$9A,$30 ;
                    db $A9,$61,$B8,$62,$C0,$63,$C7,$63 ;
                    db $D0,$64,$D5,$0D,$D7,$63,$E0,$6A ;
                    db $F0,$6A,$00,$EA,$0D,$4A,$7D,$47 ;
                    db $FD ;

DATA_0EE332:        db $07,$0F,$0F,$10,$34,$0E,$02,$1F ;
                    db $B0,$38,$2F,$B0,$36,$39,$73,$5F ;
                    db $B0,$38,$05,$8E,$2E,$0B,$2F,$A1 ;
                    db $3C,$3F,$70,$38,$3F,$10,$34,$B7 ;
                    db $0E,$64,$8E,$6E,$02,$6F,$10,$34 ;
                    db $6F,$A1,$3A,$6F,$70,$36,$CE,$06 ;
                    db $CF,$A1,$3C,$DF,$80,$38,$DE,$08 ;
                    db $EF,$41,$28,$EF,$20,$34,$E6,$0D ;
                    db $FF,$43,$28,$FF,$70,$34,$0F,$43 ;
                    db $A8,$7D,$47,$FD ;

DATA_0EE37E:        db $01,$01,$77,$39,$A3,$43,$00,$BF ;
                    db $29,$51,$39,$48,$61,$55,$D6,$54 ;
                    db $D2,$44,$0C,$82,$30,$39,$31,$66 ;
                    db $44,$47,$47,$32,$4A,$47,$97,$32 ;
                    db $C1,$66,$CE,$01,$DC,$02,$00,$BF ;
                    db $04,$3F,$05,$3F,$06,$3F,$07,$3F ;
                    db $0C,$0F,$08,$4F,$FE,$01,$27,$D3 ;
                    db $5C,$02,$9A,$60,$A9,$61,$B8,$62 ;
                    db $C7,$63,$D0,$64,$D5,$0D,$D7,$63 ;
                    db $E0,$6A,$F0,$6A,$00,$EA,$7D,$47 ;
                    db $FD ;

DATA_0EE3CF:        db $1F,$01,$0E,$69,$00,$1F,$0B,$78 ;
                    db $2D,$FF ;

DATA_0EE3D9:        db $1F,$01,$1E,$68,$06,$FF ;

DATA_0EE3DF:        db $1E,$05,$00,$FF ;

DATA_0EE3E3:        db $26,$8F,$05,$AC,$46,$0F,$1F,$04 ;
                    db $E8,$10,$38,$90,$66,$11,$FB,$3C ;
                    db $9B,$B7,$CB,$85,$29,$87,$95,$07 ;
                    db $EB,$02,$0B,$82,$96,$0E,$C3,$0E ;
                    db $FF ;

DATA_0EE404:        db $1F,$01,$E6,$11,$FF ;

DATA_0EE409:        db $3B,$86,$7B,$00,$BB,$02,$2B,$8E ;
                    db $7A,$05,$57,$87,$27,$8F,$9A,$0C ;
                    db $FF ;

DATA_0EE41A:        db $55,$31,$0D,$01,$CF,$F3,$30,$FE ;
                    db $39,$0F,$A0,$BC,$0F,$70,$38,$0F ;
                    db $00,$34,$FE,$32,$FF,$A1,$3A,$FF ;
                    db $70,$36,$2E,$82,$34,$3B,$35,$3B ;
                    db $36,$3B,$37,$3B,$F4,$63,$FF,$00 ;
                    db $34,$FE,$31,$29,$8F,$9E,$43,$FE ;
                    db $30,$FF,$B0,$36,$16,$B1,$23,$09 ;
                    db $4E,$31,$4E,$40,$5F,$B0,$38,$D7 ;
                    db $E0,$E6,$61,$FE,$02,$F5,$62,$FA ;
                    db $60,$FF,$B0,$36,$0C,$DF,$0F,$00 ;
                    db $34,$04,$63,$14,$3E,$15,$3E,$16 ;
                    db $3E,$17,$3E,$0C,$DF,$04,$3F,$05 ;
                    db $3F,$06,$3F,$07,$3F,$0C,$D1,$04 ;
                    db $63,$14,$63,$1E,$32,$2F,$B0,$38 ;
                    db $24,$64,$2D,$40,$3F,$00,$34,$34 ;
                    db $64,$4E,$32,$5E,$36,$5E,$42,$6F ;
                    db $A0,$3C,$6F,$80,$38,$6F,$00,$34 ;
                    db $CE,$38,$DF,$10,$34,$0D,$0B,$8E ;
                    db $36,$8E,$40,$8F,$10,$34,$87,$37 ;
                    db $96,$36,$EE,$3A,$EF,$80,$36,$FC ;
                    db $5A,$06,$BD,$07,$3E,$9E,$06,$AF ;
                    db $80,$38,$FF,$A1,$3A,$FF,$80,$36 ;
                    db $FE,$31,$FF,$00,$34,$09,$E1,$1A ;
                    db $60,$6D,$41,$AF,$F6,$20,$8D,$C7 ;
                    db $FD ;

DATA_0EE4DB:        db $00,$F1,$FE,$B5,$0D,$02,$FE,$34 ;
                    db $07,$CF,$CE,$00,$0D,$05,$8D,$47 ;
                    db $FD,$00,$C1,$3F,$B0,$36,$4C,$00 ;
                    db $5F,$B0,$38,$00,$E7,$10,$67,$20 ;
                    db $67,$30,$67,$40,$67,$50,$67,$60 ;
                    db $67,$70,$67,$80,$67,$90,$67,$A0 ;
                    db $67,$B0,$67,$C0,$67,$D0,$67,$E0 ;
                    db $67,$F0,$67,$00,$E7,$0D,$02,$10 ;
                    db $67,$20,$67,$30,$67,$40,$67,$50 ;
                    db $67,$60,$67,$70,$67,$80,$67,$90 ;
                    db $67,$A0,$67,$B0,$67,$C0,$67,$D0 ;
                    db $67,$E0,$67,$F0,$67,$FE,$04,$07 ;
                    db $CF,$00,$63,$10,$63,$20,$63,$30 ;
                    db $63,$40,$63,$50,$63,$60,$63,$70 ;
                    db $63,$80,$63,$90,$63,$A0,$63,$B0 ;
                    db $63,$C0,$63,$CE,$00,$CF,$B0,$36 ;
                    db $0D,$05,$8D,$47,$FD ;

DATA_0EE560:        db $50,$31,$00,$39,$9F,$F8,$30,$EE ;
                    db $01,$12,$B9,$77,$7B,$E0,$6A,$F0 ;
                    db $6A,$00,$6A,$6D,$C7,$FD ;

DATA_0EE576:        db $FD ;

DATA_0EE577:        db $FD ;

DATA_0EE578:        db $00,$A1,$0A,$60,$19,$61,$28,$62 ;
                    db $39,$71,$58,$62,$69,$61,$7A,$60 ;
                    db $7C,$F5,$A5,$11,$FE,$20,$1F,$F0 ;
                    db $80,$5E,$21,$80,$3F,$8F,$F5,$60 ;
                    db $D6,$74,$5E,$A0,$6F,$F6,$60,$9E ;
                    db $21,$C3,$37,$47,$F3,$9E,$20,$FE ;
                    db $21,$0D,$06,$57,$32,$64,$11,$66 ;
                    db $10,$83,$A7,$87,$27,$0D,$09,$1D ;
                    db $4A,$5F,$F8,$30,$6D,$C1,$AF,$F6 ;
                    db $20,$6D,$C7,$FD ;

DATA_0EE5C4:        db $50,$11,$00,$3F,$D7,$73,$FE,$1A ;
                    db $00,$BF,$6F,$F2,$60,$00,$BF,$1F ;
                    db $F5,$60,$BF,$F3,$60,$00,$BF,$C7 ;
                    db $28,$DF,$F1,$60,$00,$BF,$15,$71 ;
                    db $7F,$F2,$60,$9B,$2F,$A8,$72,$FE ;
                    db $10,$69,$F1,$B7,$25,$C5,$71,$33 ;
                    db $AC,$5F,$F1,$70,$8D,$4A,$AA,$14 ;
                    db $D1,$71,$17,$95,$26,$42,$72,$42 ;
                    db $73,$12,$7A,$14,$C6,$14,$D5,$42 ;
                    db $FE,$11,$7F,$F8,$B0,$8D,$C1,$CF ;
                    db $F6,$20,$6D,$C7,$FD ;

DATA_0EE619:        db $57,$00,$0B,$3F,$0B,$BF,$0B,$BF ;
                    db $73,$36,$9A,$30,$A5,$64,$B6,$31 ;
                    db $D4,$61,$0B,$BF,$13,$63,$4A,$60 ;
                    db $53,$66,$A5,$34,$B3,$67,$E5,$65 ;
                    db $F4,$60,$0B,$BF,$14,$60,$53,$67 ;
                    db $67,$32,$C4,$62,$D4,$31,$F3,$61 ;
                    db $FA,$60,$0B,$BF,$04,$30,$09,$61 ;
                    db $14,$65,$63,$65,$6A,$60,$0B,$BF ;
                    db $0F,$F8,$30,$0B,$BF,$1D,$41,$3E ;
                    db $42,$3F,$F0,$20,$0B,$BF,$3D,$47 ;
                    db $FD ;

DATA_0EE66A:        db $2A,$9E,$6B,$0C,$8D,$1C,$EA,$1F ;
                    db $1B,$8C,$E6,$1C,$8C,$9C,$BB,$0C ;
                    db $F3,$83,$9B,$8C,$DB,$0C,$1B,$8C ;
                    db $6B,$0C,$BB,$0C,$0F,$09,$40,$15 ;
                    db $78,$AD,$90,$B5,$FF ;

DATA_0EE68F:        db $0F,$02,$38,$1D,$D9,$1B,$6E,$EB ;
                    db $21,$3A,$A8,$18,$9D,$0F,$07,$18 ;
                    db $1D,$0F,$09,$18,$1D,$0F,$0B,$18 ;
                    db $1D,$7B,$15,$8E,$21,$2E,$B9,$9D ;
                    db $0F,$0E,$78,$2D,$90,$B5,$FF ;

DATA_0EE6B6:        db $05,$9D,$65,$1D,$0D,$A8,$DD,$1D ;
                    db $07,$AC,$54,$2C,$A2,$2C,$F4,$2C ;
                    db $42,$AC,$26,$9D,$D4,$03,$24,$83 ;
                    db $64,$03,$2B,$82,$4B,$02,$7B,$02 ;
                    db $9B,$02,$5B,$82,$7B,$02,$0B,$82 ;
                    db $2B,$02,$C6,$1B,$28,$82,$48,$02 ;
                    db $A6,$1B,$7B,$95,$85,$0C,$9D,$9B ;
                    db $0F,$0E,$78,$2D,$7A,$1D,$90,$B5 ;
                    db $FF ;

DATA_0EE6F7:        db $19,$9F,$99,$1B,$2C,$8C,$59,$1B ;
                    db $C5,$0F,$0F,$04,$09,$29,$BD,$1D ;
                    db $0F,$06,$6E,$2A,$61,$0F,$09,$48 ;
                    db $2D,$46,$87,$79,$07,$8E,$6D,$60 ;
                    db $A5,$07,$B8,$85,$57,$A5,$8C,$8C ;
                    db $76,$9D,$78,$2D,$D0,$B5,$FF ;

DATA_0EE726:        db $07,$83,$37,$03,$6B,$0E,$E0,$3D ;
                    db $20,$BE,$6E,$2B,$00,$A7,$85,$D3 ;
                    db $05,$E7,$83,$24,$83,$27,$03,$49 ;
                    db $00,$59,$00,$10,$BB,$B0,$3B,$6E ;
                    db $C6,$00,$17,$85,$53,$05,$36,$8E ;
                    db $76,$0E,$B6,$0E,$E7,$83,$63,$83 ;
                    db $68,$03,$29,$83,$57,$03,$85,$03 ;
                    db $B5,$29,$FF ;

DATA_0EE761:        db $0F,$04,$66,$07,$0F,$06,$86,$10 ;
                    db $0F,$08,$55,$0F,$E5,$8F,$FF ;

DATA_0EE770:        db $70,$B7,$CA,$00,$66,$80,$0F,$04 ;
                    db $79,$0E,$AB,$0E,$EE,$2B,$20,$EB ;
                    db $80,$40,$BB,$FB,$00,$40,$B7,$CB ;
                    db $0E,$0F,$09,$4B,$00,$76,$00,$D8 ;
                    db $00,$6B,$8E,$73,$06,$83,$06,$C7 ;
                    db $0E,$36,$90,$C5,$06,$FF ;

DATA_0EE79E:        db $84,$8F,$A7,$24,$D3,$0F,$EA,$24 ;
                    db $45,$A9,$D5,$28,$45,$A9,$84,$25 ;
                    db $B4,$8F,$09,$90,$B5,$A8,$5B,$97 ;
                    db $CD,$28,$B5,$A4,$09,$A4,$65,$28 ;
                    db $92,$90,$E3,$83,$FF ;

DATA_0EE7C3:        db $3A,$8E,$5B,$0E,$C3,$8E,$CA,$8E ;
                    db $0B,$8E,$4A,$0E,$DE,$C6,$44,$0F ;
                    db $08,$49,$0E,$EB,$0E,$8A,$90,$AB ;
                    db $85,$0F,$0C,$03,$0F,$2E,$2B,$40 ;
                    db $67,$86,$FF ;

DATA_0EE7E6:        db $15,$8F,$54,$07,$AA,$83,$F8,$07 ;
                    db $0F,$04,$14,$07,$96,$10,$0F,$07 ;
                    db $95,$0F,$9D,$A8,$0B,$97,$09,$A9 ;
                    db $55,$24,$A9,$24,$BB,$17,$FF ;

DATA_0EE805:        db $0F,$03,$A6,$11,$A3,$90,$A6,$91 ;
                    db $0F,$08,$A6,$11,$E3,$A9,$0F,$0D ;
                    db $55,$24,$A9,$24,$0F,$11,$59,$1D ;
                    db $A9,$1B,$23,$8F,$15,$9B,$FF ;

DATA_0EE824:        db $87,$85,$9B,$05,$18,$90,$A4,$8F ;
                    db $6E,$C6,$60,$9B,$02,$D0,$3B,$80 ;
                    db $B8,$03,$8E,$1B,$02,$3B,$02,$0F ;
                    db $08,$03,$10,$F7,$05,$6B,$85,$FF ;

DATA_0EE844:        db $DB,$82,$F3,$03,$10,$B7,$80,$37 ;
                    db $1A,$8E,$4B,$0E,$7A,$0E,$AB,$0E ;
                    db $0F,$05,$F9,$0E,$D0,$BE,$2E,$C6 ;
                    db $62,$D4,$8F,$64,$8F,$7E,$2B,$60 ;
                    db $FF ;

DATA_0EE865:        db $0F,$03,$AB,$05,$1B,$85,$A3,$85 ;
                    db $D7,$05,$0F,$08,$33,$03,$0B,$85 ;
                    db $FB,$85,$8B,$85,$3A,$8E,$FF ;

DATA_0EE87C:        db $0F,$02,$09,$05,$3E,$46,$64,$2B ;
                    db $8E,$58,$0E,$CA,$07,$34,$87,$FF ;

DATA_0EE88C:        db $0A,$AA,$1E,$20,$03,$1E,$22,$27 ;
                    db $2E,$24,$48,$2E,$28,$67,$FF ;

DATA_0EE89B:        db $BB,$A9,$1B,$A9,$69,$29,$B8,$29 ;
                    db $59,$A9,$8D,$A8,$0F,$07,$15,$29 ;
                    db $55,$AC,$6B,$85,$0E,$BE,$01,$67 ;
                    db $34,$FF ;

DATA_0EE8B5:        db $1E,$A0,$09,$1E,$27,$67,$0F,$03 ;
                    db $1E,$28,$68,$0F,$05,$1E,$24,$48 ;
                    db $1E,$6D,$68,$FF ;

DATA_0EE8C9:        db $EE,$BE,$21,$26,$87,$F3,$0E,$66 ;
                    db $87,$CB,$00,$65,$87,$0F,$06,$06 ;
                    db $0E,$97,$07,$CB,$00,$75,$87,$D3 ;
                    db $27,$D9,$27,$0F,$09,$77,$1F,$46 ;
                    db $87,$B1,$0F,$FF ;

DATA_0EE8ED:        db $9B,$87,$0F,$52,$32,$0F,$63,$32 ;
                    db $0F,$74,$32,$EE,$0A,$EF,$10,$34 ;
                    db $EF,$80,$36,$0E,$86,$1F,$80,$38 ;
                    db $28,$0E,$3F,$80,$36,$3E,$0A,$6E ;
                    db $02,$7F,$B0,$38,$8B,$0E,$97,$00 ;
                    db $9F,$B0,$36,$9E,$0A,$CE,$06,$DF ;
                    db $80,$38,$E8,$0E,$FF,$80,$36,$FE ;
                    db $0A,$2E,$86,$3F,$80,$38,$6F,$80 ;
                    db $36,$6E,$0A,$8E,$08,$9F,$10,$34 ;
                    db $9F,$80,$38,$E4,$0E,$1E,$82,$1F ;
                    db $20,$34,$1F,$A1,$3A,$1F,$80,$36 ;
                    db $8A,$0E,$8F,$B0,$36,$8E,$0A,$FE ;
                    db $02,$0F,$B0,$B8,$1A,$60,$2F,$A1 ;
                    db $3C,$29,$61,$2E,$06,$3F,$80,$38 ;
                    db $47,$60,$56,$61,$6F,$71,$3C,$65 ;
                    db $62,$6E,$0C,$7F,$40,$38,$83,$60 ;
                    db $7E,$8A,$7F,$40,$36,$BB,$61,$F9 ;
                    db $63,$27,$E5,$88,$64,$EB,$61,$FE ;
                    db $05,$0F,$20,$B4,$0F,$B0,$38,$68 ;
                    db $10,$0A,$90,$FF,$20,$34,$FE,$02 ;
                    db $3A,$90,$3F,$B0,$36,$3E,$0A,$AE ;
                    db $02,$BF,$B0,$38,$DA,$60,$E9,$61 ;
                    db $F8,$62,$FF,$B0,$36,$FE,$0A,$0D ;
                    db $C4,$A1,$62,$B1,$62,$CD,$43,$CE ;
                    db $09,$DE,$0B,$DD,$42,$DF,$70,$38 ;
                    db $EF,$20,$34,$FF,$A1,$3A,$FF,$20 ;
                    db $34,$FF,$70,$36,$FE,$02,$5D,$C7 ;
                    db $FD ;

DATA_0EE9C6:        db $9B,$09,$0F,$52,$32,$0F,$63,$32 ;
                    db $0F,$11,$28,$1F,$11,$28,$2F,$11 ;
                    db $28,$3F,$11,$28,$3E,$0A,$3F,$70 ;
                    db $36,$41,$3B,$42,$3B,$4F,$11,$28 ;
                    db $5F,$11,$28,$58,$64,$6F,$11,$28 ;
                    db $7F,$11,$28,$7A,$62,$8F,$11,$28 ;
                    db $9F,$11,$28,$AF,$11,$28,$BF,$11 ;
                    db $28,$CF,$11,$28,$C8,$31,$DF,$11 ;
                    db $28,$EF,$11,$28,$FF,$11,$28,$FF ;
                    db $20,$34,$18,$E4,$39,$73,$5E,$09 ;
                    db $5F,$70,$38,$66,$3C,$0E,$82,$0F ;
                    db $A1,$3A,$0F,$70,$36,$28,$07,$36 ;
                    db $0E,$3F,$B0,$36,$3E,$0A,$AE,$02 ;
                    db $AF,$B0,$38,$D7,$0E,$EF,$A1,$3C ;
                    db $FF,$40,$38,$FE,$0C,$FF,$40,$B6 ;
                    db $FE,$0A,$11,$E5,$21,$65,$31,$65 ;
                    db $4E,$0C,$5F,$40,$38,$FE,$02,$FF ;
                    db $A1,$3A,$FF,$40,$36,$16,$8E,$2E ;
                    db $0E,$34,$63,$44,$63,$54,$63,$64 ;
                    db $63,$74,$63,$84,$63,$94,$63,$A4 ;
                    db $63,$B4,$63,$C4,$63,$D4,$63,$E4 ;
                    db $63,$F4,$63,$FE,$02,$18,$FA,$3E ;
                    db $0E,$44,$63,$54,$63,$64,$63,$74 ;
                    db $63,$84,$63,$94,$63,$A4,$63,$B4 ;
                    db $63,$C4,$63,$D4,$63,$E4,$63,$F4 ;
                    db $63,$FE,$02,$16,$8E,$2E,$0E,$34 ;
                    db $63,$44,$63,$54,$63,$64,$63,$74 ;
                    db $63,$84,$63,$94,$63,$A4,$63,$B4 ;
                    db $63,$C4,$63,$D4,$63,$E4,$63,$F4 ;
                    db $63,$FE,$02,$18,$FA,$3E,$0E,$44 ;
                    db $63,$54,$63,$64,$63,$74,$63,$84 ;
                    db $63,$94,$63,$A4,$63,$B4,$63,$C4 ;
                    db $63,$D4,$63,$E4,$63,$F4,$63,$FE ;
                    db $02,$16,$8E,$2E,$0E,$34,$63,$44 ;
                    db $63,$54,$63,$64,$63,$74,$63,$84 ;
                    db $63,$94,$63,$A4,$63,$B4,$63,$C4 ;
                    db $63,$D4,$63,$E4,$63,$F4,$63,$FE ;
                    db $02,$18,$FA,$3E,$0E,$44,$63,$54 ;
                    db $63,$64,$63,$74,$63,$84,$63,$94 ;
                    db $63,$A4,$63,$B4,$63,$C4,$63,$D4 ;
                    db $63,$E4,$63,$F4,$63,$FE,$02,$16 ;
                    db $8E,$2E,$0E,$34,$63,$44,$63,$54 ;
                    db $63,$64,$63,$74,$63,$84,$63,$94 ;
                    db $63,$A4,$63,$B4,$63,$C4,$63,$D4 ;
                    db $63,$E4,$63,$F4,$63,$FE,$02,$18 ;
                    db $FA,$5E,$0A,$5F,$B0,$36,$6E,$02 ;
                    db $7B,$61,$7E,$0A,$B7,$0E,$EE,$07 ;
                    db $FF,$10,$34,$FF,$80,$38,$FE,$8A ;
                    db $FF,$20,$34,$FF,$80,$36,$0D,$C4 ;
                    db $CD,$43,$CE,$09,$DD,$42,$DE,$0B ;
                    db $DF,$70,$38,$EF,$20,$34,$FF,$A1 ;
                    db $3A,$FF,$20,$34,$FF,$70,$36,$FE ;
                    db $02,$5D,$C7,$FD ;

DATA_0EEB6A:        db $58,$09,$0F,$55,$32,$0F,$6D,$32 ;
                    db $0F,$11,$28,$1F,$11,$28,$2F,$11 ;
                    db $28,$3F,$11,$28,$4F,$11,$28,$5F ;
                    db $11,$28,$6F,$11,$28,$7F,$11,$28 ;
                    db $8F,$11,$28,$9F,$11,$28,$AF,$11 ;
                    db $28,$BF,$11,$28,$BF,$20,$34,$DE ;
                    db $0C,$EF,$60,$3C,$EF,$40,$38,$F3 ;
                    db $3D,$03,$8E,$6E,$43,$CE,$0A,$CF ;
                    db $40,$36,$EF,$17,$28,$EF,$20,$34 ;
                    db $EF,$80,$34,$FF,$17,$28,$0F,$17 ;
                    db $A8,$1F,$17,$28,$1E,$05,$2F,$80 ;
                    db $28,$2F,$B0,$38,$3F,$80,$28,$4F ;
                    db $80,$28,$5F,$80,$28,$6F,$80,$28 ;
                    db $6E,$40,$7F,$80,$28,$8F,$80,$28 ;
                    db $9F,$80,$28,$AF,$80,$28,$BE,$01 ;
                    db $BF,$00,$34,$BF,$80,$34,$C7,$06 ;
                    db $DB,$0E,$DE,$00,$1F,$F0,$80,$6F ;
                    db $F0,$00,$BF,$F0,$00,$0F,$F0,$80 ;
                    db $5F,$F0,$00,$7E,$05,$8F,$00,$34 ;
                    db $8F,$B0,$38,$AF,$80,$34,$BF,$80 ;
                    db $28,$CF,$80,$28,$DF,$80,$28,$EF ;
                    db $80,$28,$FF,$20,$34,$FF,$80,$28 ;
                    db $FE,$02,$0F,$80,$A8,$1F,$80,$34 ;
                    db $24,$0E,$34,$30,$3E,$0C,$3F,$A1 ;
                    db $3C,$4F,$40,$38,$4E,$43,$AE,$0A ;
                    db $AF,$40,$36,$BE,$0C,$CF,$40,$38 ;
                    db $EF,$40,$36,$EE,$0A,$FE,$0C,$0F ;
                    db $40,$B8,$2F,$40,$36,$2E,$0A,$3E ;
                    db $0C,$4F,$40,$38,$7F,$A1,$3A,$7F ;
                    db $40,$36,$7E,$02,$8E,$0E,$94,$64 ;
                    db $A4,$64,$B4,$65,$C4,$65,$D4,$65 ;
                    db $E4,$65,$F4,$65,$04,$E5,$14,$65 ;
                    db $24,$65,$34,$65,$44,$65,$54,$65 ;
                    db $64,$65,$74,$65,$84,$65,$94,$65 ;
                    db $A4,$65,$B4,$65,$C4,$65,$D4,$65 ;
                    db $E4,$65,$F4,$65,$0E,$82,$04,$64 ;
                    db $2E,$86,$2F,$A1,$3C,$3F,$80,$38 ;
                    db $4E,$0C,$4F,$71,$3C,$5F,$40,$38 ;
                    db $9E,$09,$9F,$61,$3A,$9F,$40,$36 ;
                    db $A6,$60,$C1,$62,$C4,$0E,$EE,$0C ;
                    db $EF,$61,$3C,$FF,$40,$38,$0E,$86 ;
                    db $1F,$71,$3A,$1F,$40,$36,$5E,$0C ;
                    db $5F,$71,$3C,$6F,$40,$38,$7E,$09 ;
                    db $7F,$61,$3A,$7F,$40,$36,$86,$60 ;
                    db $A1,$62,$A4,$0E,$C6,$60,$CE,$0C ;
                    db $CF,$61,$3C,$DF,$40,$38,$FE,$0A ;
                    db $FF,$40,$36,$28,$B4,$A6,$31,$E8 ;
                    db $34,$8B,$B2,$9B,$0E,$FE,$07,$0F ;
                    db $20,$B4,$0F,$80,$38,$FF,$20,$34 ;
                    db $FF,$80,$36,$FE,$0A,$0D,$C4,$CD ;
                    db $43,$CE,$09,$DD,$42,$DE,$0B,$DF ;
                    db $70,$38,$EF,$20,$34,$FF,$A1,$3A ;
                    db $FF,$20,$34,$FF,$70,$36,$FE,$02 ;
                    db $5D,$C7,$FD ;

DATA_0EED15:        db $5B,$03,$05,$34,$06,$35,$39,$71 ;
                    db $6E,$02,$6F,$10,$34,$AE,$0A,$AF ;
                    db $B0,$36,$FE,$05,$0F,$B0,$B8,$0F ;
                    db $20,$34,$17,$0E,$97,$0E,$9E,$02 ;
                    db $9F,$20,$34,$A6,$06,$FA,$30,$FE ;
                    db $0A,$FF,$B0,$36,$4E,$82,$5F,$B0 ;
                    db $38,$57,$0E,$58,$62,$68,$62,$79 ;
                    db $61,$8A,$60,$8E,$0A,$8F,$B0,$36 ;
                    db $F5,$31,$F9,$73,$39,$F3,$B5,$71 ;
                    db $B7,$31,$4D,$C8,$8A,$62,$9A,$62 ;
                    db $AE,$05,$BB,$0E,$BF,$10,$34,$CD ;
                    db $4A,$FE,$82,$FF,$00,$34,$FE,$01 ;
                    db $77,$FB,$DE,$0F,$DF,$B0,$36,$EF ;
                    db $00,$34,$4E,$82,$6D,$47,$2F,$B0 ;
                    db $B6,$39,$73,$5F,$B0,$38,$0C,$EA ;
                    db $08,$3F,$B3,$00,$CC,$63,$F9,$30 ;
                    db $69,$F9,$EA,$60,$FE,$07,$FF,$A1 ;
                    db $3C,$F9,$61,$0F,$80,$B8,$0F,$20 ;
                    db $34,$DE,$04,$DF,$A1,$3A,$DF,$80 ;
                    db $36,$E9,$61,$EF,$42,$28,$EF,$40 ;
                    db $34,$F4,$61,$FA,$60,$FF,$42,$28 ;
                    db $0F,$42,$A8,$1F,$42,$28,$2F,$42 ;
                    db $28,$3F,$42,$28,$3E,$0A,$3F,$B0 ;
                    db $36,$3F,$20,$34,$7E,$0C,$8F,$40 ;
                    db $38,$7E,$8A,$7F,$40,$36,$8E,$08 ;
                    db $94,$36,$9F,$10,$34,$9F,$80,$38 ;
                    db $9F,$40,$28,$AF,$40,$28,$BF,$40 ;
                    db $28,$CF,$40,$28,$DF,$40,$28,$EF ;
                    db $40,$28,$FF,$40,$28,$FF,$80,$36 ;
                    db $FF,$20,$34,$FE,$0A,$0D,$C4,$61 ;
                    db $64,$71,$64,$81,$64,$CD,$43,$CE ;
                    db $09,$DD,$42,$DE,$0B,$DF,$70,$38 ;
                    db $EF,$20,$34,$FF,$20,$34,$FE,$02 ;
                    db $5D,$C7,$FD ;

DATA_0EEE20:        db $52,$71,$0F,$F0,$20,$6E,$70,$E3 ;
                    db $64,$FC,$61,$FC,$71,$13,$86,$2C ;
                    db $61,$2C,$71,$43,$64,$B2,$22,$B5 ;
                    db $62,$C7,$28,$22,$A2,$52,$09,$56 ;
                    db $61,$6C,$03,$DB,$71,$FC,$03,$F3 ;
                    db $20,$03,$A4,$0F,$F1,$70,$40,$0C ;
                    db $8C,$74,$9C,$66,$D7,$01,$EC,$71 ;
                    db $89,$E1,$B6,$61,$B9,$2A,$C7,$26 ;
                    db $F4,$23,$67,$E2,$E8,$F2,$78,$82 ;
                    db $88,$01,$98,$02,$A8,$02,$B8,$02 ;
                    db $03,$A1,$07,$26,$23,$31,$21,$79 ;
                    db $4B,$71,$43,$22,$CF,$F3,$30,$06 ;
                    db $E4,$16,$2A,$39,$71,$58,$45,$5A ;
                    db $45,$C6,$07,$DC,$04,$3F,$F7,$E0 ;
                    db $3B,$71,$30,$31,$8C,$71,$AC,$01 ;
                    db $E7,$63,$39,$8F,$63,$20,$65,$0B ;
                    db $68,$62,$8C,$00,$0C,$81,$29,$63 ;
                    db $3C,$01,$57,$65,$6C,$01,$85,$67 ;
                    db $9C,$04,$1D,$C1,$5F,$F6,$20,$3D ;
                    db $C7,$FD ;

DATA_0EEEBA:        db $50,$50,$0B,$1F,$0F,$F6,$20,$19 ;
                    db $96,$84,$43,$B7,$1F,$5D,$CC,$6D ;
                    db $48,$E0,$42,$E3,$12,$39,$9C,$56 ;
                    db $43,$47,$9B,$A4,$12,$C1,$06,$ED ;
                    db $4D,$F4,$42,$1B,$98,$B7,$13,$02 ;
                    db $C2,$03,$12,$47,$1F,$AD,$48,$63 ;
                    db $9C,$82,$48,$76,$93,$08,$94,$8E ;
                    db $11,$B0,$03,$C9,$0F,$1D,$C1,$2D ;
                    db $4A,$3F,$F0,$20,$0D,$0E,$0E,$40 ;
                    db $39,$71,$7F,$F7,$30,$F2,$68,$01 ;
                    db $E9,$11,$39,$68,$7A,$E0,$6A,$F0 ;
                    db $6A,$00,$6A,$6D,$C5,$FD ;

DATA_0EEF18:        db $52,$21,$0F,$F0,$20,$6E,$60,$6C ;
                    db $F6,$CA,$30,$DC,$02,$08,$F2,$37 ;
                    db $04,$56,$74,$7C,$00,$DC,$01,$E7 ;
                    db $25,$47,$8B,$49,$20,$6C,$02,$96 ;
                    db $74,$06,$82,$36,$02,$66,$00,$A7 ;
                    db $22,$DC,$02,$0A,$E0,$63,$22,$78 ;
                    db $72,$93,$09,$97,$03,$A3,$25,$A7 ;
                    db $03,$B6,$24,$03,$A2,$5C,$75,$65 ;
                    db $71,$7C,$00,$9C,$00,$63,$A2,$67 ;
                    db $20,$77,$03,$87,$20,$93,$0A,$97 ;
                    db $03,$A3,$22,$A7,$20,$B7,$03,$BC ;
                    db $00,$C7,$20,$DC,$00,$FC,$01,$19 ;
                    db $8F,$1E,$20,$46,$22,$4C,$61,$63 ;
                    db $00,$8E,$21,$D7,$73,$46,$A6,$4C ;
                    db $62,$68,$62,$73,$01,$8C,$62,$D8 ;
                    db $62,$43,$A9,$C7,$73,$EC,$06,$57 ;
                    db $F3,$7C,$00,$B5,$65,$C5,$65,$DC ;
                    db $00,$E3,$67,$7D,$C1,$BF,$F6,$20 ;
                    db $AD,$C7,$FD ;

DATA_0EEFAB:        db $90,$10,$0B,$1B,$0F,$F6,$20,$07 ;
                    db $94,$BC,$14,$BF,$F3,$10,$C7,$40 ;
                    db $FF,$F6,$10,$D1,$80,$C3,$94,$CB ;
                    db $17,$C2,$44,$29,$8F,$77,$31,$0B ;
                    db $96,$76,$32,$C7,$75,$13,$F7,$1B ;
                    db $61,$2B,$61,$4B,$12,$59,$0F,$3B ;
                    db $B0,$3A,$40,$43,$12,$7A,$40,$7B ;
                    db $30,$B5,$41,$B6,$20,$C6,$07,$F3 ;
                    db $13,$6B,$92,$79,$0F,$CC,$15,$CF ;
                    db $F1,$10,$1F,$F5,$90,$C3,$14,$B3 ;
                    db $95,$A3,$95,$4D,$CA,$6B,$61,$7E ;
                    db $11,$8D,$41,$AF,$F0,$20,$8D,$C7 ;
                    db $FD ;

DATA_0EF00C:        db $52,$31,$0F,$F0,$20,$6E,$74,$0D ;
                    db $02,$03,$33,$1F,$F2,$70,$39,$71 ;
                    db $65,$04,$6C,$70,$77,$01,$84,$72 ;
                    db $8C,$72,$B3,$34,$EC,$01,$EF,$F2 ;
                    db $70,$0D,$04,$AC,$67,$CC,$01,$CF ;
                    db $F1,$70,$E7,$22,$17,$88,$23,$00 ;
                    db $27,$23,$3C,$62,$65,$71,$67,$33 ;
                    db $8C,$61,$DC,$01,$08,$FA,$45,$75 ;
                    db $63,$0A,$73,$23,$7C,$02,$8F,$F2 ;
                    db $70,$73,$A9,$9F,$F4,$70,$BF,$F4 ;
                    db $70,$EF,$F3,$70,$39,$F1,$FC,$0A ;
                    db $0D,$0B,$13,$25,$4C,$01,$4F,$F2 ;
                    db $70,$73,$0B,$77,$03,$DC,$08,$23 ;
                    db $A2,$53,$09,$56,$03,$63,$24,$8C ;
                    db $02,$3F,$F3,$B0,$77,$63,$96,$74 ;
                    db $B3,$77,$5D,$C1,$9F,$F6,$20,$8D ;
                    db $C7,$FD ;

DATA_0EF08E:        db $54,$11,$0F,$F6,$20,$CF,$F2,$30 ;
                    db $F8,$62,$FE,$10,$3C,$B2,$BD,$48 ;
                    db $EA,$62,$FC,$4D,$FC,$4D,$17,$C9 ;
                    db $DA,$62,$0B,$97,$B7,$12,$2C,$B1 ;
                    db $33,$43,$6C,$31,$AC,$41,$0B,$98 ;
                    db $AD,$4A,$DB,$30,$27,$B0,$B7,$14 ;
                    db $C6,$42,$C7,$96,$D6,$44,$2B,$92 ;
                    db $39,$0F,$72,$41,$A7,$00,$1B,$95 ;
                    db $97,$13,$6C,$95,$6F,$F1,$10,$A2 ;
                    db $40,$BF,$F5,$10,$C2,$40,$0B,$9A ;
                    db $62,$42,$63,$12,$AD,$4A,$0E,$91 ;
                    db $1D,$41,$5F,$F6,$20,$5D,$C7,$FD ;

DATA_0EF0EE:        db $57,$11,$0F,$F6,$20,$FE,$10,$4B ;
                    db $92,$59,$0F,$AD,$4C,$D3,$93,$0B ;
                    db $94,$29,$0F,$7B,$93,$99,$0F,$0D ;
                    db $06,$27,$12,$35,$0F,$23,$B1,$57 ;
                    db $75,$A3,$31,$AB,$71,$F7,$75,$23 ;
                    db $B1,$87,$13,$95,$0F,$0D,$0A,$23 ;
                    db $35,$38,$13,$55,$00,$9B,$16,$0B ;
                    db $96,$C7,$75,$DD,$4A,$3B,$92,$49 ;
                    db $0F,$AD,$4C,$29,$92,$52,$40,$6C ;
                    db $15,$6F,$F1,$10,$72,$40,$BF,$F5 ;
                    db $10,$03,$93,$0A,$13,$12,$41,$8B ;
                    db $12,$99,$0F,$0D,$10,$47,$16,$46 ;
                    db $45,$B3,$32,$13,$B1,$57,$0E,$A7 ;
                    db $0E,$D3,$31,$53,$B1,$A6,$31,$03 ;
                    db $B2,$13,$0E,$8D,$4D,$AE,$11,$BD ;
                    db $41,$DF,$F0,$20,$AD,$C7,$FD ;

DATA_0EF16D:        db $52,$A1,$0F,$F0,$20,$6E,$65,$04 ;
                    db $A0,$14,$07,$24,$2D,$57,$25,$BC ;
                    db $09,$4C,$80,$6F,$F3,$30,$A5,$11 ;
                    db $A7,$63,$B7,$63,$E7,$20,$35,$A0 ;
                    db $59,$11,$B4,$08,$C0,$04,$05,$82 ;
                    db $15,$02,$25,$02,$3A,$10,$4C,$01 ;
                    db $6C,$79,$95,$79,$73,$A7,$8F,$F4 ;
                    db $70,$F3,$0A,$03,$A0,$93,$08,$97 ;
                    db $73,$E3,$20,$39,$F1,$94,$07,$AA ;
                    db $30,$BC,$5C,$C7,$30,$24,$F2,$27 ;
                    db $31,$8F,$F3,$30,$C6,$10,$C7,$63 ;
                    db $D7,$63,$E7,$63,$F7,$63,$03,$A5 ;
                    db $07,$25,$AA,$10,$03,$BF,$4F,$F4 ;
                    db $70,$6C,$00,$DF,$F4,$70,$FC,$00 ;
                    db $5C,$81,$77,$73,$9D,$4C,$C5,$30 ;
                    db $E3,$30,$7D,$C1,$BD,$4D,$BF,$F6 ;
                    db $20,$AD,$C7,$FD ;

DATA_0EF1F1:        db $55,$A1,$0F,$F6,$20,$9C,$01,$4F ;
                    db $F6,$B0,$B3,$34,$C9,$3F,$13,$BA ;
                    db $A3,$B3,$BF,$F4,$70,$0C,$84,$83 ;
                    db $3F,$9F,$F4,$70,$EF,$F2,$70,$EC ;
                    db $01,$2F,$F2,$F0,$2C,$01,$6F,$F2 ;
                    db $70,$6C,$01,$A8,$91,$AA,$10,$03 ;
                    db $B7,$61,$79,$6F,$F5,$70,$39,$F1 ;
                    db $DB,$71,$03,$A2,$17,$22,$33,$09 ;
                    db $43,$20,$5B,$71,$48,$8F,$4A,$30 ;
                    db $5C,$5C,$A3,$30,$2D,$C1,$6F,$06 ;
                    db $20,$4D,$C7,$FD ;

DATA_0EF245:        db $55,$A1,$0F,$F6,$20,$39,$91,$68 ;
                    db $12,$A7,$12,$AA,$10,$C7,$07,$E8 ;
                    db $12,$19,$91,$6C,$00,$78,$74,$0E ;
                    db $C2,$76,$83,$86,$03,$96,$03,$A6 ;
                    db $03,$B6,$03,$C6,$03,$D6,$03,$E6 ;
                    db $03,$F6,$03,$FE,$40,$29,$91,$73 ;
                    db $29,$77,$53,$8C,$77,$59,$91,$87 ;
                    db $13,$B6,$14,$BA,$10,$E8,$12,$38 ;
                    db $92,$19,$8F,$2C,$00,$33,$67,$4E ;
                    db $42,$68,$03,$2E,$C0,$38,$72,$A8 ;
                    db $11,$AA,$10,$49,$91,$6E,$42,$DE ;
                    db $40,$E7,$22,$0E,$C2,$4E,$C0,$6C ;
                    db $00,$79,$11,$8C,$01,$A7,$13,$BC ;
                    db $01,$D5,$15,$EC,$01,$03,$97,$0E ;
                    db $00,$6E,$01,$9D,$41,$BF,$F0,$20 ;
                    db $AD,$C7,$FD ;

DATA_0EF2C0:        db $10,$21,$39,$F1,$09,$F1,$AD,$4C ;
                    db $7C,$83,$96,$30,$5B,$F1,$C8,$05 ;
                    db $1F,$F7,$B0,$93,$67,$A3,$67,$B3 ;
                    db $67,$BD,$4D,$CC,$08,$54,$FE,$70 ;
                    db $6A,$80,$6A,$90,$6A,$A0,$6A,$B0 ;
                    db $6A,$C0,$6A,$D0,$6A,$E0,$6A,$F0 ;
                    db $6A,$00,$EA,$6D,$47,$FD ;

DATA_0EF2F6:        db $00,$C1,$4C,$00,$02,$C9,$BA,$49 ;
                    db $62,$C9,$A4,$20,$A5,$20,$1A,$C9 ;
                    db $A3,$2C,$B2,$49,$56,$C2,$6E,$00 ;
                    db $95,$41,$AD,$C7,$FD ;

DATA_0EF313:        db $48,$8F,$1E,$01,$4E,$02,$00,$8C ;
                    db $09,$0F,$6E,$0A,$EE,$82,$2E,$80 ;
                    db $30,$20,$7E,$01,$87,$27,$07,$87 ;
                    db $17,$23,$3E,$00,$9E,$05,$5B,$F1 ;
                    db $8B,$71,$BB,$71,$EB,$71,$3E,$82 ;
                    db $7F,$F8,$30,$FE,$0A,$3E,$84,$47 ;
                    db $29,$48,$2E,$AF,$F1,$70,$CB,$71 ;
                    db $E7,$0A,$F7,$23,$2B,$F1,$37,$51 ;
                    db $3E,$00,$6F,$F0,$00,$8E,$04,$DF ;
                    db $F2,$30,$9C,$82,$CA,$12,$DC,$00 ;
                    db $E8,$14,$FC,$00,$FE,$08,$4E,$8A ;
                    db $88,$74,$9E,$01,$A8,$52,$BF,$F7 ;
                    db $40,$B8,$52,$C8,$52,$D8,$52,$E8 ;
                    db $52,$EE,$0F,$4D,$C7,$0D,$0D,$0E ;
                    db $02,$68,$7A,$BE,$01,$EE,$0F,$6D ;
                    db $C5,$FD ;

DATA_0EF38D:        db $08,$0F,$0E,$01,$2E,$05,$38,$20 ;
                    db $3E,$04,$48,$07,$55,$45,$57,$45 ;
                    db $58,$25,$B8,$08,$BE,$05,$C8,$20 ;
                    db $CE,$01,$DF,$FA,$40,$6D,$C7,$0E ;
                    db $81,$00,$5A,$2E,$02,$34,$42,$36 ;
                    db $42,$37,$22,$73,$54,$83,$0B,$87 ;
                    db $20,$93,$54,$90,$07,$B4,$41,$B6 ;
                    db $41,$B7,$21,$DF,$FA,$40,$6D,$C7 ;
                    db $0E,$81,$00,$5A,$14,$56,$24,$56 ;
                    db $2E,$0C,$33,$43,$6E,$09,$8E,$0B ;
                    db $96,$48,$1E,$84,$3E,$05,$4A,$48 ;
                    db $47,$0B,$CE,$01,$DF,$FA,$40,$6D ;
                    db $C7,$FD ;

DATA_0EF3EF:        db $41,$01,$DA,$60,$E9,$61,$F8,$62 ;
                    db $00,$E3,$07,$63,$10,$63,$17,$63 ;
                    db $20,$63,$27,$63,$30,$63,$37,$63 ;
                    db $40,$63,$47,$63,$50,$63,$57,$63 ;
                    db $60,$63,$67,$63,$70,$63,$77,$63 ;
                    db $80,$63,$87,$63,$90,$63,$97,$63 ;
                    db $A0,$63,$A7,$63,$B0,$63,$B7,$63 ;
                    db $C0,$63,$C7,$63,$D0,$63,$D7,$63 ;
                    db $E0,$63,$E7,$63,$F0,$63,$F7,$63 ;
                    db $47,$D3,$8A,$60,$99,$61,$A8,$62 ;
                    db $B7,$63,$C6,$64,$D5,$65,$E4,$66 ;
                    db $ED,$49,$F3,$67,$1A,$CB,$E3,$67 ;
                    db $F3,$67,$00,$BF,$31,$56,$3C,$02 ;
                    db $77,$53,$AC,$02,$B1,$56,$E7,$53 ;
                    db $FE,$01,$77,$B9,$A3,$43,$00,$BF ;
                    db $29,$51,$39,$48,$61,$55,$D2,$44 ;
                    db $D6,$54,$0C,$82,$30,$39,$31,$66 ;
                    db $44,$47,$47,$32,$4A,$47,$97,$32 ;
                    db $C1,$66,$DC,$02,$00,$BF,$0C,$0F ;
                    db $08,$4F,$04,$63,$14,$63,$24,$63 ;
                    db $34,$63,$44,$63,$54,$63,$64,$63 ;
                    db $74,$63,$84,$63,$94,$63,$A4,$63 ;
                    db $B4,$63,$C4,$63,$D4,$63,$E4,$63 ;
                    db $F4,$63,$00,$BF,$75,$60,$FE,$01 ;
                    db $0C,$87,$9A,$60,$A9,$61,$B8,$62 ;
                    db $C7,$63,$D0,$6A,$D5,$0D,$E0,$6A ;
                    db $F0,$6A,$00,$EA,$6D,$4A,$7D,$47 ;
                    db $FD ;

DATA_0EF4C8:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ;empty
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
