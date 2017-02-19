;Super Mario Bros. - The Lost Levels.

CODE_0E8000:        A9 01         LDA #$01                  ;
CODE_0E8002:        8D 8C 02      STA $028C                 ;
CODE_0E8005:        A9 03         LDA #$03                  ;
CODE_0E8007:        8D 0B 0F      STA $0F0B                 ;
CODE_0E800A:        9C 8E 02      STZ $028E                 ;
CODE_0E800D:        9C 67 0E      STZ $0E67                 ;
CODE_0E8010:        AF 09 00 70   LDA $700009               ;
CODE_0E8014:        8D 24 0E      STA $0E24                 ;
CODE_0E8017:        8F 01 FB 7F   STA $7FFB01               ;
CODE_0E801B:        AF 08 00 70   LDA $700008               ;
CODE_0E801F:        8D 5F 07      STA $075F                 ;
CODE_0E8022:        8F 00 FB 7F   STA $7FFB00               ;
CODE_0E8026:        0A            ASL A                     ;
CODE_0E8027:        0A            ASL A                     ;
CODE_0E8028:        18            CLC                       ;
CODE_0E8029:        6F 09 00 70   ADC $700009               ;
CODE_0E802D:        AA            TAX                       ;
CODE_0E802E:        BF 6D E0 0F   LDA.l DATA_0FE06D,x             ;
CODE_0E8032:        8F 09 00 70   STA $700009               ;
CODE_0E8036:        8F 02 FB 7F   STA $7FFB02               ;
CODE_0E803A:        8D 60 07      STA $0760                 ;
CODE_0E803D:        A9 03         LDA #$03                  ;
CODE_0E803F:        8D 01 21      STA $2101                 ;
CODE_0E8042:        A9 01         LDA #$01                  ;
CODE_0E8044:        8D 07 21      STA $2107                 ;
CODE_0E8047:        A9 09         LDA #$09                  ;
CODE_0E8049:        8D 08 21      STA $2108                 ;
CODE_0E804C:        A9 59         LDA #$59                  ;
CODE_0E804E:        8D 09 21      STA $2109                 ;
CODE_0E8051:        9C 0A 21      STZ $210A                 ;
CODE_0E8054:        A9 11         LDA #$11                  ;
CODE_0E8056:        8D 0B 21      STA $210B                 ;
CODE_0E8059:        A9 05         LDA #$05                  ;
CODE_0E805B:        8D 0C 21      STA $210C                 ;
CODE_0E805E:        9C 33 21      STZ $2133                 ;
CODE_0E8061:        9C 70 07      STZ $0770                 ;
CODE_0E8064:        9C 72 07      STZ $0772                 ;
CODE_0E8067:        A9 00         LDA #$00                  ;
CODE_0E8069:        8F FF FF 7F   STA $7FFFFF               ;
CODE_0E806D:        9C 3F 07      STZ $073F                 ;
CODE_0E8070:        9C 40 07      STZ $0740                 ;
CODE_0E8073:        9C 0D 21      STZ $210D                 ;
CODE_0E8076:        9C 0D 21      STZ $210D                 ;
CODE_0E8079:        9C 0E 21      STZ $210E                 ;
CODE_0E807C:        9C 0E 21      STZ $210E                 ;
CODE_0E807F:        9C 0F 21      STZ $210F                 ;
CODE_0E8082:        9C 0F 21      STZ $210F                 ;
CODE_0E8085:        9C 10 21      STZ $2110                 ;
CODE_0E8088:        9C 10 21      STZ $2110                 ;
CODE_0E808B:        9C 11 21      STZ $2111                 ;
CODE_0E808E:        9C 11 21      STZ $2111                 ;
CODE_0E8091:        9C 12 21      STZ $2112                 ;
CODE_0E8094:        9C 12 21      STZ $2112                 ;
CODE_0E8097:        A9 09         LDA #$09                  ;
CODE_0E8099:        8D 0D 12      STA $120D                 ;
CODE_0E809C:        9C 7E 0E      STZ $0E7E                 ;
CODE_0E809F:        A9 10         LDA #$10                  ;
CODE_0E80A1:        8D 0B 12      STA $120B                 ;
CODE_0E80A4:        9C 0C 12      STZ $120C                 ;
CODE_0E80A7:        9C 04 12      STZ $1204                 ;
CODE_0E80AA:        9C 05 12      STZ $1205                 ;
CODE_0E80AD:        9C 06 12      STZ $1206                 ;
CODE_0E80B0:        9C 09 12      STZ $1209                 ;
CODE_0E80B3:        A9 20         LDA #$20                  ;
CODE_0E80B5:        8D 0A 12      STA $120A                 ;
CODE_0E80B8:        A9 20         LDA #$20                  ;
CODE_0E80BA:        8D E0 0E      STA $0EE0                 ;
CODE_0E80BD:        A9 40         LDA #$40                  ;
CODE_0E80BF:        8D E1 0E      STA $0EE1                 ;
CODE_0E80C2:        A9 80         LDA #$80                  ;
CODE_0E80C4:        8D E2 0E      STA $0EE2                 ;
CODE_0E80C7:        9C 03 12      STZ $1203                 ;
CODE_0E80CA:        A9 80         LDA #$80                  ;
CODE_0E80CC:        8D 01 12      STA $1201                 ;
CODE_0E80CF:        9C 54 01      STZ $0154                 ;
CODE_0E80D2:        9C E5 15      STZ $15E5                 ;
CODE_0E80D5:        9C 7F 0E      STZ $0E7F                 ;
CODE_0E80D8:        9C 76 07      STZ $0776                 ;
CODE_0E80DB:        8D 22 07      STA $0722                 ;
CODE_0E80DE:        9C 67 0E      STZ $0E67                 ;
CODE_0E80E1:        64 BA         STZ $BA                   ;
CODE_0E80E3:        9C C9 0E      STZ $0EC9                 ;
CODE_0E80E6:        9C D6 0E      STZ $0ED6                 ;
CODE_0E80E9:        9C F9 0E      STZ $0EF9                 ;
CODE_0E80EC:        9C D4 0E      STZ $0ED4                 ;
CODE_0E80EF:        9C 00 12      STZ $1200                 ;
CODE_0E80F2:        9C 73 07      STZ $0773                 ;
CODE_0E80F5:        9C 8D 02      STZ $028D                 ;
CODE_0E80F8:        C2 20         REP #$20                  ;
CODE_0E80FA:        A9 00 00      LDA #$0000                ;
CODE_0E80FD:        8F 00 10 00   STA $001000               ;
CODE_0E8101:        8F 00 11 00   STA $001100               ;
CODE_0E8105:        A9 FF FF      LDA #$FFFF                ;
CODE_0E8108:        8D 02 17      STA $1702                 ;
CODE_0E810B:        8F 02 00 7F   STA $7F0002               ;
CODE_0E810F:        8F 02 20 7F   STA $7F2002               ;
CODE_0E8113:        0B            PHD                       ;
CODE_0E8114:        A9 00 43      LDA #$4300                ; DP: $4300
CODE_0E8117:        5B            TCD                       ;
CODE_0E8118:        A2 80         LDX #$80                  ;
CODE_0E811A:        8E 15 21      STX $2115                 ;
CODE_0E811D:        C2 20         REP #$20                  ;
CODE_0E811F:        A9 00 10      LDA #$1000                ;
CODE_0E8122:        8D 16 21      STA $2116                 ;
CODE_0E8125:        A9 01 18      LDA #$1801                ;
CODE_0E8128:        85 00         STA $00                   ;
CODE_0E812A:        A9 00 80      LDA.w #DATA_108000        ; DMA source: DATA_108000
CODE_0E812D:        85 02         STA $02                   ;
CODE_0E812F:        A0 10         LDY.b #DATA_108000>>16    ;
CODE_0E8131:        84 04         STY $04                   ;
CODE_0E8133:        A9 00 40      LDA #$4000                ; $4000 bytes to transfer
CODE_0E8136:        85 05         STA $05                   ;
CODE_0E8138:        A2 01         LDX #$01                  ;
CODE_0E813A:        8E 0B 42      STX $420B                 ;
CODE_0E813D:        C2 20         REP #$20                  ;
CODE_0E813F:        A9 00 60      LDA #$6000                ;
CODE_0E8142:        8D 16 21      STA $2116                 ;
CODE_0E8145:        A9 00 80      LDA.w #DATA_078000        ; DMA source: DATA_078000
CODE_0E8148:        85 02         STA $02                   ;
CODE_0E814A:        A0 07         LDY.b #DATA_078000>>16    ;
CODE_0E814C:        84 04         STY $04                   ;
CODE_0E814E:        A9 00 40      LDA #$4000                ; $4000 bytes to transfer
CODE_0E8151:        85 05         STA $05                   ;
CODE_0E8153:        8E 0B 42      STX $420B                 ;
CODE_0E8156:        A9 00 50      LDA #$5000                ;
CODE_0E8159:        8D 16 21      STA $2116                 ;
CODE_0E815C:        A9 00 F8      LDA.w #DATA_0CF800        ; DMA source: DATA_0CF800
CODE_0E815F:        85 02         STA $02                   ;
CODE_0E8161:        A0 0C         LDY.b #DATA_0CF800>>16    ;
CODE_0E8163:        84 04         STY $04                   ;
CODE_0E8165:        A9 00 08      LDA #$0800                ; $800 bytes to transfer
CODE_0E8168:        85 05         STA $05                   ;
CODE_0E816A:        8E 0B 42      STX $420B                 ;
CODE_0E816D:        2B            PLD                       ;
CODE_0E816E:        E2 20         SEP #$20                  ;
CODE_0E8170:        6B            RTL                       ;

CODE_0E8171:        AD 80 16      LDA $1680                 ;
CODE_0E8174:        30 26         BMI CODE_0E819C           ;
CODE_0E8176:        D0 0F         BNE CODE_0E8187           ;
CODE_0E8178:        AD F6 0F      LDA $0FF6                 ;
CODE_0E817B:        29 10         AND #$10                  ;
CODE_0E817D:        F0 1D         BEQ CODE_0E819C           ;
CODE_0E817F:        EE 80 16      INC $1680                 ;
CODE_0E8182:        A9 43         LDA #$43                  ;
CODE_0E8184:        8D 00 16      STA $1600                 ;
CODE_0E8187:        CE 9A 0B      DEC $0B9A                 ;
CODE_0E818A:        CE 9A 0B      DEC $0B9A                 ;
CODE_0E818D:        AD 9A 0B      LDA $0B9A                 ;
CODE_0E8190:        10 0A         BPL CODE_0E819C           ;
CODE_0E8192:        A9 0D         LDA #$0D                  ;
CODE_0E8194:        8D 72 07      STA $0772                 ;
CODE_0E8197:        A9 01         LDA #$01                  ;
CODE_0E8199:        8D FC 07      STA $07FC                 ;
CODE_0E819C:        6B            RTL                       ;

CODE_0E819D:        22 18 DA 0F   JSL CODE_0FDA18           ;
CODE_0E81A1:        AD 5F 07      LDA $075F                 ;
CODE_0E81A4:        C9 08         CMP #$08                  ;
CODE_0E81A6:        B0 1B         BCS CODE_0E81C3           ;
CODE_0E81A8:        A9 10         LDA #$10                  ;
CODE_0E81AA:        8D 80 16      STA $1680                 ;
CODE_0E81AD:        9C 60 07      STZ $0760                 ;
CODE_0E81B0:        9C 5C 07      STZ $075C                 ;
CODE_0E81B3:        AD 2B 0F      LDA $0F2B                 ;
CODE_0E81B6:        F0 08         BEQ CODE_0E81C0           ;
CODE_0E81B8:        A9 01         LDA #$01                  ;
CODE_0E81BA:        8D FB 07      STA $07FB                 ;
CODE_0E81BD:        EE 5F 07      INC $075F                 ;
CODE_0E81C0:        EE 5F 07      INC $075F                 ;
CODE_0E81C3:        A9 22         LDA #$22                  ;
CODE_0E81C5:        8D 04 12      STA $1204                 ;
CODE_0E81C8:        A9 02         LDA #$02                  ;
CODE_0E81CA:        8D 05 12      STA $1205                 ;
CODE_0E81CD:        EE 72 07      INC $0772                 ;
CODE_0E81D0:        AD 7A 07      LDA $077A                 ;
CODE_0E81D3:        F0 0D         BEQ CODE_0E81E2           ;
CODE_0E81D5:        A9 02         LDA #$02                  ;
CODE_0E81D7:        8D 08 12      STA $1208                 ;
CODE_0E81DA:        9C 76 07      STZ $0776                 ;
CODE_0E81DD:        A9 04         LDA #$04                  ;
CODE_0E81DF:        8D 80 16      STA $1680                 ;
CODE_0E81E2:        6B            RTL                       ;

CODE_0E81E3:        AD 40 21      LDA $2140                 ;
CODE_0E81E6:        D0 0D         BNE CODE_0E81F5           ;
CODE_0E81E8:        A9 0A         LDA #$0A                  ;
CODE_0E81EA:        8D 72 07      STA $0772                 ;
CODE_0E81ED:        AD 80 16      LDA $1680                 ;
CODE_0E81F0:        09 80         ORA #$80                  ;
CODE_0E81F2:        8D 80 16      STA $1680                 ;
CODE_0E81F5:        6B            RTL                       ;

CODE_0E81F6:        AD 9A 0B      LDA $0B9A                 ;
CODE_0E81F9:        C9 30         CMP #$30                  ;
CODE_0E81FB:        90 01         BCC CODE_0E81FE           ;
CODE_0E81FD:        6B            RTL                       ;

CODE_0E81FE:        8B            PHB                       ;
CODE_0E81FF:        4B            PHK                       ;
CODE_0E8200:        AB            PLB                       ;
CODE_0E8201:        0B            PHD                       ;
CODE_0E8202:        C2 30         REP #$30                  ;
CODE_0E8204:        A9 00 0B      LDA #$0B00                ;
CODE_0E8207:        5B            TCD                       ;
CODE_0E8208:        64 84         STZ $84                   ;
CODE_0E820A:        64 8E         STZ $8E                   ;
CODE_0E820C:        64 90         STZ $90                   ;
CODE_0E820E:        64 92         STZ $92                   ;
CODE_0E8210:        A5 9A         LDA $9A                   ;
CODE_0E8212:        29 FF 00      AND #$00FF                ;
CODE_0E8215:        0A            ASL A                     ;
CODE_0E8216:        AA            TAX                       ;
CODE_0E8217:        BF 80 97 00   LDA.l DATA_009780,x             ;
CODE_0E821B:        85 94         STA $94                   ;
CODE_0E821D:        A9 78 00      LDA #$0078                ;
CODE_0E8220:        85 96         STA $96                   ;
CODE_0E8222:        A9 B0 00      LDA #$00B0                ;
CODE_0E8225:        85 98         STA $98                   ;
CODE_0E8227:        A9 00 01      LDA #$0100                ;
CODE_0E822A:        85 80         STA $80                   ;
CODE_0E822C:        85 82         STA $82                   ;
CODE_0E822E:        A5 90         LDA $90                   ;
CODE_0E8230:        1A            INC A                     ;
CODE_0E8231:        C5 9A         CMP $9A                   ;
CODE_0E8233:        B0 36         BCS CODE_0E826B           ;
CODE_0E8235:        A5 92         LDA $92                   ;
CODE_0E8237:        18            CLC                       ;
CODE_0E8238:        65 94         ADC $94                   ;
CODE_0E823A:        85 92         STA $92                   ;
CODE_0E823C:        EB            XBA                       ;
CODE_0E823D:        29 FF 00      AND #$00FF                ;
CODE_0E8240:        4A            LSR A                     ;
CODE_0E8241:        E2 30         SEP #$30                  ;
CODE_0E8243:        AA            TAX                       ;
CODE_0E8244:        BF FF 96 00   LDA.l DATA_0096FF,x             ;
CODE_0E8248:        8D 02 42      STA $4202                 ;
CODE_0E824B:        A5 9A         LDA $9A                   ;
CODE_0E824D:        8D 03 42      STA $4203                 ;
CODE_0E8250:        EA            NOP                       ;
CODE_0E8251:        EA            NOP                       ;
CODE_0E8252:        EA            NOP                       ;
CODE_0E8253:        EA            NOP                       ;
CODE_0E8254:        AD 17 42      LDA $4217                 ;
CODE_0E8257:        85 88         STA $88                   ;
CODE_0E8259:        64 89         STZ $89                   ;
CODE_0E825B:        C2 30         REP #$30                  ;
CODE_0E825D:        A5 88         LDA $88                   ;
CODE_0E825F:        18            CLC                       ;
CODE_0E8260:        65 98         ADC $98                   ;
CODE_0E8262:        85 82         STA $82                   ;
CODE_0E8264:        A5 98         LDA $98                   ;
CODE_0E8266:        38            SEC                       ;
CODE_0E8267:        E5 88         SBC $88                   ;
CODE_0E8269:        85 80         STA $80                   ;
CODE_0E826B:        A5 96         LDA $96                   ;
CODE_0E826D:        38            SEC                       ;
CODE_0E826E:        E5 90         SBC $90                   ;
CODE_0E8270:        3A            DEC A                     ;
CODE_0E8271:        0A            ASL A                     ;
CODE_0E8272:        85 84         STA $84                   ;
CODE_0E8274:        AA            TAX                       ;
CODE_0E8275:        A5 80         LDA $80                   ;
CODE_0E8277:        A8            TAY                       ;
CODE_0E8278:        30 0F         BMI CODE_0E8289           ;
CODE_0E827A:        29 00 FF      AND #$FF00                ;
CODE_0E827D:        F0 0D         BEQ CODE_0E828C           ;
CODE_0E827F:        C9 00 01      CMP #$0100                ;
CODE_0E8282:        D0 05         BNE CODE_0E8289           ;
CODE_0E8284:        A0 FF 00      LDY #$00FF                ;
CODE_0E8287:        80 03         BRA CODE_0E828C           ;

CODE_0E8289:        A0 00 00      LDY #$0000                ;
CODE_0E828C:        98            TYA                       ;
CODE_0E828D:        29 FF 00      AND #$00FF                ;
CODE_0E8290:        85 86         STA $86                   ;
CODE_0E8292:        A5 82         LDA $82                   ;
CODE_0E8294:        A8            TAY                       ;
CODE_0E8295:        29 00 FF      AND #$FF00                ;
CODE_0E8298:        F0 03         BEQ CODE_0E829D           ;
CODE_0E829A:        A0 FF 00      LDY #$00FF                ;
CODE_0E829D:        98            TYA                       ;
CODE_0E829E:        29 FF 00      AND #$00FF                ;
CODE_0E82A1:        EB            XBA                       ;
CODE_0E82A2:        05 86         ORA $86                   ;
CODE_0E82A4:        85 86         STA $86                   ;
CODE_0E82A6:        E0 C0 01      CPX #$01C0                ;
CODE_0E82A9:        B0 0C         BCS CODE_0E82B7           ;
CODE_0E82AB:        C9 FF FF      CMP #$FFFF                ;
CODE_0E82AE:        D0 03         BNE CODE_0E82B3           ;
CODE_0E82B0:        A9 FF 00      LDA #$00FF                ;
CODE_0E82B3:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0E82B7:        A5 96         LDA $96                   ;
CODE_0E82B9:        18            CLC                       ;
CODE_0E82BA:        65 90         ADC $90                   ;
CODE_0E82BC:        3A            DEC A                     ;
CODE_0E82BD:        0A            ASL A                     ;
CODE_0E82BE:        85 8E         STA $8E                   ;
CODE_0E82C0:        C9 C0 01      CMP #$01C0                ;
CODE_0E82C3:        B0 0F         BCS CODE_0E82D4           ;
CODE_0E82C5:        AA            TAX                       ;
CODE_0E82C6:        A5 86         LDA $86                   ;
CODE_0E82C8:        C9 FF FF      CMP #$FFFF                ;
CODE_0E82CB:        D0 03         BNE CODE_0E82D0           ;
CODE_0E82CD:        A9 FF 00      LDA #$00FF                ;
CODE_0E82D0:        9F 00 F0 7F   STA $7FF000,x             ;
CODE_0E82D4:        E6 90         INC $90                   ;
CODE_0E82D6:        A5 84         LDA $84                   ;
CODE_0E82D8:        C9 C0 01      CMP #$01C0                ;
CODE_0E82DB:        90 07         BCC CODE_0E82E4           ;
CODE_0E82DD:        A5 8E         LDA $8E                   ;
CODE_0E82DF:        C9 C0 01      CMP #$01C0                ;
CODE_0E82E2:        B0 03         BCS CODE_0E82E7           ;
CODE_0E82E4:        4C 27 82      JMP CODE_0E8227           ;

CODE_0E82E7:        E2 30         SEP #$30                  ;
CODE_0E82E9:        E6 9A         INC $9A                   ;
CODE_0E82EB:        2B            PLD                       ;
CODE_0E82EC:        AB            PLB                       ;
CODE_0E82ED:        6B            RTL                       ;

CODE_0E82EE:        E2 10         SEP #$10                  ;
CODE_0E82F0:        A2 00         LDX #$00                  ;
CODE_0E82F2:        9E D0 05      STZ $05D0,x               ;
CODE_0E82F5:        9E E0 05      STZ $05E0,x               ;
CODE_0E82F8:        9E F0 05      STZ $05F0,x               ;
CODE_0E82FB:        9E 00 06      STZ $0600,x               ;
CODE_0E82FE:        9E 10 06      STZ $0610,x               ;
CODE_0E8301:        9E 20 06      STZ $0620,x               ;
CODE_0E8304:        9E 30 06      STZ $0630,x               ;
CODE_0E8307:        9E 40 06      STZ $0640,x               ;
CODE_0E830A:        9E 50 06      STZ $0650,x               ;
CODE_0E830D:        9E 60 06      STZ $0660,x               ;
CODE_0E8310:        9E 70 06      STZ $0670,x               ;
CODE_0E8313:        9E 80 06      STZ $0680,x               ;
CODE_0E8316:        9E 90 06      STZ $0690,x               ;
CODE_0E8319:        E8            INX                       ;
CODE_0E831A:        8A            TXA                       ;
CODE_0E831B:        29 0F         AND #$0F                  ;
CODE_0E831D:        D0 D3         BNE CODE_0E82F2           ;
CODE_0E831F:        A9 66         LDA #$66                  ;
CODE_0E8321:        8D 40 06      STA $0640                 ;
CODE_0E8324:        8D 41 06      STA $0641                 ;
CODE_0E8327:        8D 42 06      STA $0642                 ;
CODE_0E832A:        8D 73 06      STA $0673                 ;
CODE_0E832D:        8D 74 06      STA $0674                 ;
CODE_0E8330:        8D 75 06      STA $0675                 ;
CODE_0E8333:        8D 76 06      STA $0676                 ;
CODE_0E8336:        8D 49 06      STA $0649                 ;
CODE_0E8339:        8D 4A 06      STA $064A                 ;
CODE_0E833C:        8D 4B 06      STA $064B                 ;
CODE_0E833F:        8D 4C 06      STA $064C                 ;
CODE_0E8342:        8D 4D 06      STA $064D                 ;
CODE_0E8345:        8D 4E 06      STA $064E                 ;
CODE_0E8348:        A9 01         LDA #$01                  ;
CODE_0E834A:        8D C9 0E      STA $0EC9                 ;
CODE_0E834D:        6B            RTL                       ;

CODE_0E834E:        64 F6         STZ $F6                   ;
CODE_0E8350:        C2 30         REP #$30                  ;
CODE_0E8352:        AD EC 0E      LDA $0EEC                 ;
CODE_0E8355:        85 F3         STA $F3                   ;
CODE_0E8357:        64 F7         STZ $F7                   ;
CODE_0E8359:        A6 F3         LDX $F3                   ;
CODE_0E835B:        E2 20         SEP #$20                  ;
CODE_0E835D:        BF D8 83 0E   LDA.l DATA_0E83D8,x             ;
CODE_0E8361:        18            CLC                       ;
CODE_0E8362:        2A            ROL A                     ;
CODE_0E8363:        2A            ROL A                     ;
CODE_0E8364:        29 01         AND #$01                  ;
CODE_0E8366:        85 F5         STA $F5                   ;
CODE_0E8368:        BF D9 83 0E   LDA.l DATA_0E83D8+1,x             ;
CODE_0E836C:        0A            ASL A                     ;
CODE_0E836D:        C2 21         REP #$21                  ;
CODE_0E836F:        A6 F7         LDX $F7                   ;
CODE_0E8371:        65 F5         ADC $F5                   ;
CODE_0E8373:        29 FF 00      AND #$00FF                ;
CODE_0E8376:        C9 80 00      CMP #$0080                ;
CODE_0E8379:        90 03         BCC CODE_0E837E           ;
CODE_0E837B:        09 00 FF      ORA #$FF00                ;
CODE_0E837E:        18            CLC                       ;
CODE_0E837F:        6D FD 0E      ADC $0EFD                 ;
CODE_0E8382:        18            CLC                       ;
CODE_0E8383:        69 08 00      ADC #$0008                ;
CODE_0E8386:        9F 00 20 7F   STA $7F2000,x             ;
CODE_0E838A:        A5 F3         LDA $F3                   ;
CODE_0E838C:        18            CLC                       ;
CODE_0E838D:        69 10 00      ADC #$0010                ;
CODE_0E8390:        29 FF 01      AND #$01FF                ;
CODE_0E8393:        85 F3         STA $F3                   ;
CODE_0E8395:        E6 F7         INC $F7                   ;
CODE_0E8397:        E6 F7         INC $F7                   ;
CODE_0E8399:        A5 F7         LDA $F7                   ;
CODE_0E839B:        C9 40 00      CMP #$0040                ;
CODE_0E839E:        D0 B9         BNE CODE_0E8359           ;
CODE_0E83A0:        AD EC 0E      LDA $0EEC                 ;
CODE_0E83A3:        18            CLC                       ;
CODE_0E83A4:        69 04 00      ADC #$0004                ;
CODE_0E83A7:        29 FF 01      AND #$01FF                ;
CODE_0E83AA:        8D EC 0E      STA $0EEC                 ;
CODE_0E83AD:        E2 30         SEP #$30                  ;
CODE_0E83AF:        8B            PHB                       ;
CODE_0E83B0:        A9 7F         LDA #$7F                  ;
CODE_0E83B2:        48            PHA                       ;
CODE_0E83B3:        AB            PLB                       ;
CODE_0E83B4:        C2 20         REP #$20                  ;
CODE_0E83B6:        A0 3E         LDY #$3E                  ;
CODE_0E83B8:        B9 00 20      LDA $2000,y               ;
CODE_0E83BB:        99 40 20      STA $2040,y               ;
CODE_0E83BE:        99 80 20      STA $2080,y               ;
CODE_0E83C1:        99 C0 20      STA $20C0,y               ;
CODE_0E83C4:        99 00 21      STA $2100,y               ;
CODE_0E83C7:        99 40 21      STA $2140,y               ;
CODE_0E83CA:        99 80 21      STA $2180,y               ;
CODE_0E83CD:        99 C0 21      STA $21C0,y               ;
CODE_0E83D0:        88            DEY                       ;
CODE_0E83D1:        88            DEY                       ;
CODE_0E83D2:        10 E4         BPL CODE_0E83B8           ;
CODE_0E83D4:        E2 20         SEP #$20                  ;
CODE_0E83D6:        AB            PLB                       ;
CODE_0E83D7:        6B            RTL                       ;

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

CODE_0E85D8:        8B            PHB                       ;
CODE_0E85D9:        4B            PHK                       ;
CODE_0E85DA:        AB            PLB                       ;
CODE_0E85DB:        80 0B         BRA CODE_0E85E8           ;

CODE_0E85DD:        8B            PHB                       ;
CODE_0E85DE:        4B            PHK                       ;
CODE_0E85DF:        AB            PLB                       ;
CODE_0E85E0:        AD DC 0E      LDA $0EDC                 ;
CODE_0E85E3:        F0 2F         BEQ CODE_0E8614           ;
CODE_0E85E5:        20 06 87      JSR CODE_0E8706           ;
CODE_0E85E8:        DA            PHX                       ;
CODE_0E85E9:        5A            PHY                       ;
CODE_0E85EA:        AD D6 0E      LDA $0ED6                 ;
CODE_0E85ED:        29 80         AND #$80                  ;
CODE_0E85EF:        8D D6 0E      STA $0ED6                 ;
CODE_0E85F2:        A5 5C         LDA $5C                   ;
CODE_0E85F4:        D0 0B         BNE CODE_0E8601           ;
CODE_0E85F6:        20 B7 86      JSR CODE_0E86B7           ;
CODE_0E85F9:        A9 06         LDA #$06                  ;
CODE_0E85FB:        8D 73 07      STA $0773                 ;
CODE_0E85FE:        4C 0D 86      JMP CODE_0E860D           ;

CODE_0E8601:        C9 01         CMP #$01                  ;
CODE_0E8603:        D0 0D         BNE CODE_0E8612           ;
CODE_0E8605:        20 16 86      JSR CODE_0E8616           ;
CODE_0E8608:        A9 01         LDA #$01                  ;
CODE_0E860A:        8D D4 0E      STA $0ED4                 ;
CODE_0E860D:        A9 01         LDA #$01                  ;
CODE_0E860F:        8D DE 0E      STA $0EDE                 ;
CODE_0E8612:        7A            PLY                       ;
CODE_0E8613:        FA            PLX                       ;
CODE_0E8614:        AB            PLB                       ;
CODE_0E8615:        6B            RTL                       ;

CODE_0E8616:        C2 30         REP #$30                  ;
CODE_0E8618:        A9 0E 00      LDA #$000E                ;
CODE_0E861B:        85 F7         STA $F7                   ;
CODE_0E861D:        AD D9 0E      LDA $0ED9                 ;
CODE_0E8620:        85 00         STA $00                   ;
CODE_0E8622:        AF 00 20 7F   LDA $7F2000               ;
CODE_0E8626:        AA            TAX                       ;
CODE_0E8627:        A5 F3         LDA $F3                   ;
CODE_0E8629:        EB            XBA                       ;
CODE_0E862A:        9F 02 20 7F   STA $7F2002,x             ;
CODE_0E862E:        1A            INC A                     ;
CODE_0E862F:        9F 3C 20 7F   STA $7F203C,x             ;
CODE_0E8633:        DA            PHX                       ;
CODE_0E8634:        A6 00         LDX $00                   ;
CODE_0E8636:        BF 00 30 7F   LDA $7F3000,x             ;
CODE_0E863A:        29 FF 00      AND #$00FF                ;
CODE_0E863D:        0A            ASL A                     ;
CODE_0E863E:        0A            ASL A                     ;
CODE_0E863F:        0A            ASL A                     ;
CODE_0E8640:        A8            TAY                       ;
CODE_0E8641:        FA            PLX                       ;
CODE_0E8642:        B9 6D BB      LDA DATA_0EBB6D,y               ;
CODE_0E8645:        9F 04 20 7F   STA $7F2004,x             ;
CODE_0E8649:        B9 6F BB      LDA DATA_0EBB6D+2,y               ;
CODE_0E864C:        9F 06 20 7F   STA $7F2006,x             ;
CODE_0E8650:        B9 71 BB      LDA DATA_0EBB6D+4,y               ;
CODE_0E8653:        9F 3E 20 7F   STA $7F203E,x             ;
CODE_0E8657:        B9 73 BB      LDA DATA_0EBB6D+6,y               ;
CODE_0E865A:        9F 40 20 7F   STA $7F2040,x             ;
CODE_0E865E:        E8            INX                       ;
CODE_0E865F:        E8            INX                       ;
CODE_0E8660:        E8            INX                       ;
CODE_0E8661:        E8            INX                       ;
CODE_0E8662:        A5 00         LDA $00                   ;
CODE_0E8664:        18            CLC                       ;
CODE_0E8665:        69 10 00      ADC #$0010                ;
CODE_0E8668:        85 00         STA $00                   ;
CODE_0E866A:        C6 F7         DEC $F7                   ;
CODE_0E866C:        D0 C5         BNE CODE_0E8633           ;
CODE_0E866E:        AF 00 20 7F   LDA $7F2000               ;
CODE_0E8672:        AA            TAX                       ;
CODE_0E8673:        A9 FF FF      LDA #$FFFF                ;
CODE_0E8676:        9F 76 20 7F   STA $7F2076,x             ;
CODE_0E867A:        AF 00 20 7F   LDA $7F2000               ;
CODE_0E867E:        18            CLC                       ;
CODE_0E867F:        69 74 00      ADC #$0074                ;
CODE_0E8682:        8F 00 20 7F   STA $7F2000               ;
CODE_0E8686:        AD D9 0E      LDA $0ED9                 ;
CODE_0E8689:        1A            INC A                     ;
CODE_0E868A:        29 0F 00      AND #$000F                ;
CODE_0E868D:        D0 0F         BNE CODE_0E869E           ;
CODE_0E868F:        AD D9 0E      LDA $0ED9                 ;
CODE_0E8692:        29 F0 FF      AND #$FFF0                ;
CODE_0E8695:        18            CLC                       ;
CODE_0E8696:        69 E0 00      ADC #$00E0                ;
CODE_0E8699:        8D D9 0E      STA $0ED9                 ;
CODE_0E869C:        80 03         BRA CODE_0E86A1           ;

CODE_0E869E:        EE D9 0E      INC $0ED9                 ;
CODE_0E86A1:        AD D9 0E      LDA $0ED9                 ;
CODE_0E86A4:        C9 80 0A      CMP #$0A80                ;
CODE_0E86A7:        90 03         BCC CODE_0E86AC           ;
CODE_0E86A9:        9C D9 0E      STZ $0ED9                 ;
CODE_0E86AC:        A5 F3         LDA $F3                   ;
CODE_0E86AE:        18            CLC                       ;
CODE_0E86AF:        69 00 02      ADC #$0200                ;
CODE_0E86B2:        85 F3         STA $F3                   ;
CODE_0E86B4:        E2 30         SEP #$30                  ;
CODE_0E86B6:        60            RTS                       ;

CODE_0E86B7:        C2 30         REP #$30                  ;
CODE_0E86B9:        AE 00 1A      LDX $1A00                 ;
CODE_0E86BC:        A5 F3         LDA $F3                   ;
CODE_0E86BE:        9D 02 1A      STA $1A02,x               ;
CODE_0E86C1:        18            CLC                       ;
CODE_0E86C2:        69 00 01      ADC #$0100                ;
CODE_0E86C5:        9D 08 1A      STA $1A08,x               ;
CODE_0E86C8:        18            CLC                       ;
CODE_0E86C9:        69 00 01      ADC #$0100                ;
CODE_0E86CC:        85 F3         STA $F3                   ;
CODE_0E86CE:        A9 00 01      LDA #$0100                ;
CODE_0E86D1:        9D 04 1A      STA $1A04,x               ;
CODE_0E86D4:        9D 0A 1A      STA $1A0A,x               ;
CODE_0E86D7:        A5 F3         LDA $F3                   ;
CODE_0E86D9:        29 00 02      AND #$0200                ;
CODE_0E86DC:        D0 08         BNE CODE_0E86E6           ;
CODE_0E86DE:        A9 2C 2C      LDA #$2C2C                ;
CODE_0E86E1:        A0 2D 2C      LDY #$2C2D                ;
CODE_0E86E4:        80 06         BRA CODE_0E86EC           ;

CODE_0E86E6:        A9 2E 2C      LDA #$2C2E                ;
CODE_0E86E9:        A0 2F 2C      LDY #$2C2F                ;
CODE_0E86EC:        9D 06 1A      STA $1A06,x               ;
CODE_0E86EF:        98            TYA                       ;
CODE_0E86F0:        9D 0C 1A      STA $1A0C,x               ;
CODE_0E86F3:        A9 FF FF      LDA #$FFFF                ;
CODE_0E86F6:        9D 0E 1A      STA $1A0E,x               ;
CODE_0E86F9:        AD 00 1A      LDA $1A00                 ;
CODE_0E86FC:        18            CLC                       ;
CODE_0E86FD:        69 0C 00      ADC #$000C                ;
CODE_0E8700:        8D 00 1A      STA $1A00                 ;
CODE_0E8703:        E2 30         SEP #$30                  ;
CODE_0E8705:        60            RTS                       ;

CODE_0E8706:        C2 30         REP #$30                  ;
CODE_0E8708:        AD EE 0E      LDA $0EEE                 ;
CODE_0E870B:        18            CLC                       ;
CODE_0E870C:        69 20 01      ADC #$0120                ;
CODE_0E870F:        EB            XBA                       ;
CODE_0E8710:        85 F3         STA $F3                   ;
CODE_0E8712:        E2 30         SEP #$30                  ;
CODE_0E8714:        A5 F3         LDA $F3                   ;
CODE_0E8716:        29 01         AND #$01                  ;
CODE_0E8718:        D0 04         BNE CODE_0E871E           ;
CODE_0E871A:        A9 58         LDA #$58                  ;
CODE_0E871C:        80 02         BRA CODE_0E8720           ;

CODE_0E871E:        A9 5C         LDA #$5C                  ;
CODE_0E8720:        85 F3         STA $F3                   ;
CODE_0E8722:        A5 F4         LDA $F4                   ;
CODE_0E8724:        4A            LSR A                     ;
CODE_0E8725:        4A            LSR A                     ;
CODE_0E8726:        4A            LSR A                     ;
CODE_0E8727:        18            CLC                       ;
CODE_0E8728:        69 80         ADC #$80                  ;
CODE_0E872A:        85 F4         STA $F4                   ;
CODE_0E872C:        60            RTS                       ;

DATA_0E872D:        db $00,$00,$80,$07,$62,$2E,$72,$2E
                    db $73,$2E,$72,$2E,$00,$00,$80,$07
                    db $63,$2E,$73,$2E,$72,$2E,$73,$2E
                    db $00,$00,$80,$07,$64,$2E,$74,$2E
                    db $4E,$2E,$74,$2E,$FF,$FF,$00,$00
                    db $80,$07,$73,$2E,$72,$2E,$73,$2E
                    db $72,$2E,$00,$00,$80,$07,$72,$2E
                    db $73,$2E,$72,$2E,$73,$2E,$00,$00
                    db $80,$07,$5E,$2E,$66,$2E,$67,$6E
                    db $66,$AE,$FF,$FF

DATA_0E8779:        db $2D,$87,$53,$87

CODE_0E877D:        8B            PHB                       ;
CODE_0E877E:        4B            PHK                       ;
CODE_0E877F:        AB            PLB                       ;
CODE_0E8780:        A9 0E         LDA #$0E                  ;
CODE_0E8782:        85 F5         STA $F5                   ;
CODE_0E8784:        AD E6 0E      LDA $0EE6                 ;
CODE_0E8787:        29 01         AND #$01                  ;
CODE_0E8789:        0A            ASL A                     ;
CODE_0E878A:        C2 30         REP #$30                  ;
CODE_0E878C:        29 02 00      AND #$0002                ;
CODE_0E878F:        A8            TAY                       ;
CODE_0E8790:        B9 79 87      LDA DATA_0E8779,y               ;
CODE_0E8793:        85 F3         STA $F3                   ;
CODE_0E8795:        AE 00 17      LDX $1700                 ;
CODE_0E8798:        A0 00 00      LDY #$0000                ;
CODE_0E879B:        B7 F3         LDA [$F3],y               ;
CODE_0E879D:        9D 02 17      STA $1702,x               ;
CODE_0E87A0:        C8            INY                       ;
CODE_0E87A1:        C8            INY                       ;
CODE_0E87A2:        E8            INX                       ;
CODE_0E87A3:        E8            INX                       ;
CODE_0E87A4:        C9 FF FF      CMP #$FFFF                ;
CODE_0E87A7:        D0 F2         BNE CODE_0E879B           ;
CODE_0E87A9:        AE 00 17      LDX $1700                 ;
CODE_0E87AC:        AD F4 0E      LDA $0EF4                 ;
CODE_0E87AF:        29 20 00      AND #$0020                ;
CODE_0E87B2:        F0 0C         BEQ CODE_0E87C0           ;
CODE_0E87B4:        AD F4 0E      LDA $0EF4                 ;
CODE_0E87B7:        29 DF 0F      AND #$0FDF                ;
CODE_0E87BA:        49 00 04      EOR #$0400                ;
CODE_0E87BD:        8D F4 0E      STA $0EF4                 ;
CODE_0E87C0:        AD F4 0E      LDA $0EF4                 ;
CODE_0E87C3:        18            CLC                       ;
CODE_0E87C4:        69 C1 02      ADC #$02C1                ;
CODE_0E87C7:        29 DF 0F      AND #$0FDF                ;
CODE_0E87CA:        A8            TAY                       ;
CODE_0E87CB:        EB            XBA                       ;
CODE_0E87CC:        9D 02 17      STA $1702,x               ;
CODE_0E87CF:        C8            INY                       ;
CODE_0E87D0:        98            TYA                       ;
CODE_0E87D1:        29 20 00      AND #$0020                ;
CODE_0E87D4:        F0 08         BEQ CODE_0E87DE           ;
CODE_0E87D6:        98            TYA                       ;
CODE_0E87D7:        29 DF 0F      AND #$0FDF                ;
CODE_0E87DA:        49 00 04      EOR #$0400                ;
CODE_0E87DD:        A8            TAY                       ;
CODE_0E87DE:        98            TYA                       ;
CODE_0E87DF:        EB            XBA                       ;
CODE_0E87E0:        9D 0E 17      STA $170E,x               ;
CODE_0E87E3:        C8            INY                       ;
CODE_0E87E4:        98            TYA                       ;
CODE_0E87E5:        EB            XBA                       ;
CODE_0E87E6:        9D 1A 17      STA $171A,x               ;
CODE_0E87E9:        AD 00 17      LDA $1700                 ;
CODE_0E87EC:        18            CLC                       ;
CODE_0E87ED:        69 24 00      ADC #$0024                ;
CODE_0E87F0:        8D 00 17      STA $1700                 ;
CODE_0E87F3:        E2 30         SEP #$30                  ;
CODE_0E87F5:        9C E6 0E      STZ $0EE6                 ;
CODE_0E87F8:        A9 06         LDA #$06                  ;
CODE_0E87FA:        8D 73 07      STA $0773                 ;
CODE_0E87FD:        AB            PLB                       ;
CODE_0E87FE:        6B            RTL                       ;

CODE_0E87FF:        AC 00 1A      LDY $1A00                 ;
CODE_0E8802:        B9 F8 19      LDA $19F8,y               ;
CODE_0E8805:        C9 24 00      CMP #$0024                ;
CODE_0E8808:        F0 05         BEQ CODE_0E880F           ;
CODE_0E880A:        C9 A4 10      CMP #$10A4                ;
CODE_0E880D:        D0 40         BNE CODE_0E884F           ;
CODE_0E880F:        AD CE 0E      LDA $0ECE                 ;
CODE_0E8812:        29 FF 00      AND #$00FF                ;
CODE_0E8815:        F0 03         BEQ CODE_0E881A           ;
CODE_0E8817:        4C A2 88      JMP CODE_0E88A2           ;

CODE_0E881A:        EE CE 0E      INC $0ECE                 ;
CODE_0E881D:        AE 00 17      LDX $1700                 ;
CODE_0E8820:        AD CC 0E      LDA $0ECC                 ;
CODE_0E8823:        3A            DEC A                     ;
CODE_0E8824:        29 1F 04      AND #$041F                ;
CODE_0E8827:        18            CLC                       ;
CODE_0E8828:        69 40 03      ADC #$0340                ;
CODE_0E882B:        EB            XBA                       ;
CODE_0E882C:        9D 02 17      STA $1702,x               ;
CODE_0E882F:        A9 80 07      LDA #$0780                ;
CODE_0E8832:        9D 04 17      STA $1704,x               ;
CODE_0E8835:        A9 0D 0A      LDA #$0A0D                ;
CODE_0E8838:        9D 06 17      STA $1706,x               ;
CODE_0E883B:        A9 1D 0A      LDA #$0A1D                ;
CODE_0E883E:        9D 08 17      STA $1708,x               ;
CODE_0E8841:        A9 0F 0A      LDA #$0A0F                ;
CODE_0E8844:        9D 0A 17      STA $170A,x               ;
CODE_0E8847:        A9 1F 0A      LDA #$0A1F                ;
CODE_0E884A:        9D 0C 17      STA $170C,x               ;
CODE_0E884D:        80 45         BRA CODE_0E8894           ;

CODE_0E884F:        C9 08 0A      CMP #$0A08                ;
CODE_0E8852:        D0 4E         BNE CODE_0E88A2           ;
CODE_0E8854:        AD CF 0E      LDA $0ECF                 ;
CODE_0E8857:        29 FF 00      AND #$00FF                ;
CODE_0E885A:        F0 46         BEQ CODE_0E88A2           ;
CODE_0E885C:        9C CE 0E      STZ $0ECE                 ;
CODE_0E885F:        A5 43         LDA $43                   ;
CODE_0E8861:        D0 05         BNE CODE_0E8868           ;
CODE_0E8863:        AD CC 0E      LDA $0ECC                 ;
CODE_0E8866:        F0 3A         BEQ CODE_0E88A2           ;
CODE_0E8868:        AE 00 17      LDX $1700                 ;
CODE_0E886B:        AD CC 0E      LDA $0ECC                 ;
CODE_0E886E:        18            CLC                       ;
CODE_0E886F:        69 40 03      ADC #$0340                ;
CODE_0E8872:        EB            XBA                       ;
CODE_0E8873:        9D 02 17      STA $1702,x               ;
CODE_0E8876:        A9 80 07      LDA #$0780                ;
CODE_0E8879:        9D 04 17      STA $1704,x               ;
CODE_0E887C:        A9 0C 0A      LDA #$0A0C                ;
CODE_0E887F:        9D 06 17      STA $1706,x               ;
CODE_0E8882:        A9 1C 0A      LDA #$0A1C                ;
CODE_0E8885:        9D 08 17      STA $1708,x               ;
CODE_0E8888:        A9 0E 0A      LDA #$0A0E                ;
CODE_0E888B:        9D 0A 17      STA $170A,x               ;
CODE_0E888E:        A9 1E 0A      LDA #$0A1E                ;
CODE_0E8891:        9D 0C 17      STA $170C,x               ;
CODE_0E8894:        A9 FF FF      LDA #$FFFF                ;
CODE_0E8897:        9D 0E 17      STA $170E,x               ;
CODE_0E889A:        8A            TXA                       ;
CODE_0E889B:        18            CLC                       ;
CODE_0E889C:        69 0C 00      ADC #$000C                ;
CODE_0E889F:        8D 00 17      STA $1700                 ;
CODE_0E88A2:        6B            RTL                       ;

DATA_0E88A3:        db $42,$41,$43

CODE_0E88A6:        22 A4 AA 0D   JSL CODE_0DAAA4           ;
CODE_0E88AA:        A0 00         LDY #$00                  ;
CODE_0E88AC:        B0 07         BCS CODE_0E88B5           ;
CODE_0E88AE:        C8            INY                       ;
CODE_0E88AF:        BD 00 13      LDA $1300,x               ;
CODE_0E88B2:        D0 01         BNE CODE_0E88B5           ;
CODE_0E88B4:        C8            INY                       ;
CODE_0E88B5:        8B            PHB                       ;
CODE_0E88B6:        4B            PHK                       ;
CODE_0E88B7:        AB            PLB                       ;
CODE_0E88B8:        B9 A3 88      LDA DATA_0E88A3,y               ;
CODE_0E88BB:        8D A1 06      STA $06A1                 ;
CODE_0E88BE:        AB            PLB                       ;
CODE_0E88BF:        6B            RTL                       ;

CODE_0E88C0:        8B            PHB                       ;
CODE_0E88C1:        4B            PHK                       ;
CODE_0E88C2:        AB            PLB                       ;
CODE_0E88C3:        C8            INY                       ;
CODE_0E88C4:        C8            INY                       ;
CODE_0E88C5:        A5 FA         LDA $FA                   ;
CODE_0E88C7:        85 F3         STA $F3                   ;
CODE_0E88C9:        A5 FB         LDA $FB                   ;
CODE_0E88CB:        85 F4         STA $F4                   ;
CODE_0E88CD:        A5 FC         LDA $FC                   ;
CODE_0E88CF:        85 F5         STA $F5                   ;
CODE_0E88D1:        B7 F3         LDA [$F3],y               ;
CODE_0E88D3:        C2 20         REP #$20                  ;
CODE_0E88D5:        29 7F 00      AND #$007F                ;
CODE_0E88D8:        AA            TAX                       ;
CODE_0E88D9:        E2 20         SEP #$20                  ;
CODE_0E88DB:        BD EE 88      LDA PNTR_0E88EE,x               ;
CODE_0E88DE:        85 00         STA $00                   ;
CODE_0E88E0:        BD EF 88      LDA PNTR_0E88EE+1,x               ;
CODE_0E88E3:        85 01         STA $01                   ;
CODE_0E88E5:        E2 10         SEP #$10                  ;
CODE_0E88E7:        A6 9E         LDX $9E                   ;
CODE_0E88E9:        A4 F7         LDY $F7                   ;
CODE_0E88EB:        6C 00 00      JMP ($0000)               ;

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

CODE_0E896E:        AB            PLB                       ;
CODE_0E896F:        6B            RTL                       ;

CODE_0E8970:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8973:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8977:        A6 07         LDX $07                   ;
CODE_0E8979:        A9 00         LDA #$00                  ;
CODE_0E897B:        9D A1 06      STA $06A1,x               ;
CODE_0E897E:        AB            PLB                       ;
CODE_0E897F:        6B            RTL                       ;

CODE_0E8980:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8983:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8987:        A6 07         LDX $07                   ;
CODE_0E8989:        A9 60         LDA #$60                  ;
CODE_0E898B:        9D A1 06      STA $06A1,x               ;
CODE_0E898E:        AB            PLB                       ;
CODE_0E898F:        6B            RTL                       ;

CODE_0E8990:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8993:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8997:        A6 07         LDX $07                   ;
CODE_0E8999:        A9 61         LDA #$61                  ;
CODE_0E899B:        9D A1 06      STA $06A1,x               ;
CODE_0E899E:        AB            PLB                       ;
CODE_0E899F:        6B            RTL                       ;

CODE_0E89A0:        A9 01         LDA #$01                  ;
CODE_0E89A2:        D0 02         BNE CODE_0E89A6           ;
CODE_0E89A4:        A9 04         LDA #$04                  ;
CODE_0E89A6:        22 CC AA 0D   JSL CODE_0DAACC           ;
CODE_0E89AA:        A9 1C         LDA #$1C                  ;
CODE_0E89AC:        9D A1 06      STA $06A1,x               ;
CODE_0E89AF:        BD A0 06      LDA $06A0,x               ;
CODE_0E89B2:        C9 1B         CMP #$1B                  ;
CODE_0E89B4:        D0 03         BNE CODE_0E89B9           ;
CODE_0E89B6:        FE A1 06      INC $06A1,x               ;
CODE_0E89B9:        AB            PLB                       ;
CODE_0E89BA:        6B            RTL                       ;

CODE_0E89BB:        A2 00         LDX #$00                  ;
CODE_0E89BD:        A0 0F         LDY #$0F                  ;
CODE_0E89BF:        80 13         BRA CODE_0E89D4           ;

CODE_0E89C1:        8A            TXA                       ;
CODE_0E89C2:        48            PHA                       ;
CODE_0E89C3:        A2 01         LDX #$01                  ;
CODE_0E89C5:        A0 0F         LDY #$0F                  ;
CODE_0E89C7:        A9 44         LDA #$44                  ;
CODE_0E89C9:        22 AC AA 0D   JSL CODE_0DAAAC           ;
CODE_0E89CD:        68            PLA                       ;
CODE_0E89CE:        AA            TAX                       ;
CODE_0E89CF:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E89D2:        A2 01         LDX #$01                  ;
CODE_0E89D4:        A9 40         LDA #$40                  ;
CODE_0E89D6:        22 AC AA 0D   JSL CODE_0DAAAC           ;
CODE_0E89DA:        AB            PLB                       ;
CODE_0E89DB:        6B            RTL                       ;

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

CODE_0E8A4A:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8A4D:        84 07         STY $07                   ;
CODE_0E8A4F:        9C E7 0E      STZ $0EE7                 ;
CODE_0E8A52:        98            TYA                       ;
CODE_0E8A53:        D0 02         BNE CODE_0E8A57           ;
CODE_0E8A55:        A0 08         LDY #$08                  ;
CODE_0E8A57:        C8            INY                       ;
CODE_0E8A58:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8A5C:        DA            PHX                       ;
CODE_0E8A5D:        BC 00 13      LDY $1300,x               ;
CODE_0E8A60:        A6 07         LDX $07                   ;
CODE_0E8A62:        A9 16         LDA #$16                  ;
CODE_0E8A64:        85 06         STA $06                   ;
CODE_0E8A66:        B9 DC 89      LDA DATA_0E89DC,y               ;
CODE_0E8A69:        9D A1 06      STA $06A1,x               ;
CODE_0E8A6C:        E8            INX                       ;
CODE_0E8A6D:        A5 06         LDA $06                   ;
CODE_0E8A6F:        F0 07         BEQ CODE_0E8A78           ;
CODE_0E8A71:        98            TYA                       ;
CODE_0E8A72:        18            CLC                       ;
CODE_0E8A73:        69 0A         ADC #$0A                  ;
CODE_0E8A75:        A8            TAY                       ;
CODE_0E8A76:        C6 06         DEC $06                   ;
CODE_0E8A78:        E0 0B         CPX #$0B                  ;
CODE_0E8A7A:        D0 EA         BNE CODE_0E8A66           ;
CODE_0E8A7C:        FA            PLX                       ;
CODE_0E8A7D:        A5 07         LDA $07                   ;
CODE_0E8A7F:        F0 08         BEQ CODE_0E8A89           ;
CODE_0E8A81:        BD 00 13      LDA $1300,x               ;
CODE_0E8A84:        D0 03         BNE CODE_0E8A89           ;
CODE_0E8A86:        9C AB 06      STZ $06AB                 ;
CODE_0E8A89:        AD 25 07      LDA $0725                 ;
CODE_0E8A8C:        F0 37         BEQ CODE_0E8AC5           ;
CODE_0E8A8E:        BD 00 13      LDA $1300,x               ;
CODE_0E8A91:        C9 05         CMP #$05                  ;
CODE_0E8A93:        D0 30         BNE CODE_0E8AC5           ;
CODE_0E8A95:        22 BC AA 0D   JSL CODE_0DAABC           ;
CODE_0E8A99:        48            PHA                       ;
CODE_0E8A9A:        22 C4 AA 0D   JSL CODE_0DAAC4           ;
CODE_0E8A9E:        68            PLA                       ;
CODE_0E8A9F:        18            CLC                       ;
CODE_0E8AA0:        69 08         ADC #$08                  ;
CODE_0E8AA2:        9D 1A 02      STA $021A,x               ;
CODE_0E8AA5:        AD 25 07      LDA $0725                 ;
CODE_0E8AA8:        69 00         ADC #$00                  ;
CODE_0E8AAA:        95 79         STA $79,x                 ;
CODE_0E8AAC:        A9 01         LDA #$01                  ;
CODE_0E8AAE:        95 BC         STA $BC,x                 ;
CODE_0E8AB0:        95 10         STA $10,x                 ;
CODE_0E8AB2:        A9 90         LDA #$90                  ;
CODE_0E8AB4:        9D 38 02      STA $0238,x               ;
CODE_0E8AB7:        A9 31         LDA #$31                  ;
CODE_0E8AB9:        95 1C         STA $1C,x                 ;
CODE_0E8ABB:        EE E7 0E      INC $0EE7                 ;
CODE_0E8ABE:        A5 07         LDA $07                   ;
CODE_0E8AC0:        F0 03         BEQ CODE_0E8AC5           ;
CODE_0E8AC2:        EE E7 0E      INC $0EE7                 ;
CODE_0E8AC5:        AD 25 07      LDA $0725                 ;
CODE_0E8AC8:        F0 2B         BEQ CODE_0E8AF5           ;
CODE_0E8ACA:        AD AC 06      LDA $06AC                 ;
CODE_0E8ACD:        C9 4E         CMP #$4E                  ;
CODE_0E8ACF:        F0 14         BEQ CODE_0E8AE5           ;
CODE_0E8AD1:        C9 22         CMP #$22                  ;
CODE_0E8AD3:        F0 1B         BEQ CODE_0E8AF0           ;
CODE_0E8AD5:        C9 70         CMP #$70                  ;
CODE_0E8AD7:        F0 10         BEQ CODE_0E8AE9           ;
CODE_0E8AD9:        C9 66         CMP #$66                  ;
CODE_0E8ADB:        F0 04         BEQ CODE_0E8AE1           ;
CODE_0E8ADD:        A9 74         LDA #$74                  ;
CODE_0E8ADF:        80 11         BRA CODE_0E8AF2           ;

CODE_0E8AE1:        A9 69         LDA #$69                  ;
CODE_0E8AE3:        80 0D         BRA CODE_0E8AF2           ;

CODE_0E8AE5:        A9 FC         LDA #$FC                  ;
CODE_0E8AE7:        80 09         BRA CODE_0E8AF2           ;

CODE_0E8AE9:        A9 73         LDA #$73                  ;
CODE_0E8AEB:        8D AD 06      STA $06AD                 ;
CODE_0E8AEE:        80 02         BRA CODE_0E8AF2           ;

CODE_0E8AF0:        A9 24         LDA #$24                  ;
CODE_0E8AF2:        8D AC 06      STA $06AC                 ;
CODE_0E8AF5:        AB            PLB                       ;
CODE_0E8AF6:        6B            RTL                       ;

CODE_0E8AF7:        A9 06         LDA #$06                  ;
CODE_0E8AF9:        80 06         BRA CODE_0E8B01           ;

CODE_0E8AFB:        A9 07         LDA #$07                  ;
CODE_0E8AFD:        80 02         BRA CODE_0E8B01           ;

CODE_0E8AFF:        A9 09         LDA #$09                  ;
CODE_0E8B01:        48            PHA                       ;
CODE_0E8B02:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8B05:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8B09:        A9 07         LDA #$07                  ;
CODE_0E8B0B:        FA            PLX                       ;
CODE_0E8B0C:        9D A1 06      STA $06A1,x               ;
CODE_0E8B0F:        AB            PLB                       ;
CODE_0E8B10:        6B            RTL                       ;

CODE_0E8B11:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8B14:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8B18:        AD A1 06      LDA $06A1                 ;
CODE_0E8B1B:        85 F3         STA $F3                   ;
CODE_0E8B1D:        C9 63         CMP #$63                  ;
CODE_0E8B1F:        F0 03         BEQ CODE_0E8B24           ;
CODE_0E8B21:        3A            DEC A                     ;
CODE_0E8B22:        80 01         BRA CODE_0E8B25           ;

CODE_0E8B24:        1A            INC A                     ;
CODE_0E8B25:        85 F4         STA $F4                   ;
CODE_0E8B27:        A5 07         LDA $07                   ;
CODE_0E8B29:        A8            TAY                       ;
CODE_0E8B2A:        29 01         AND #$01                  ;
CODE_0E8B2C:        F0 0B         BEQ CODE_0E8B39           ;
CODE_0E8B2E:        A5 F4         LDA $F4                   ;
CODE_0E8B30:        99 A1 06      STA $06A1,y               ;
CODE_0E8B33:        DE 00 13      DEC $1300,x               ;
CODE_0E8B36:        30 0E         BMI CODE_0E8B46           ;
CODE_0E8B38:        C8            INY                       ;
CODE_0E8B39:        A5 F3         LDA $F3                   ;
CODE_0E8B3B:        99 A1 06      STA $06A1,y               ;
CODE_0E8B3E:        DE 00 13      DEC $1300,x               ;
CODE_0E8B41:        30 03         BMI CODE_0E8B46           ;
CODE_0E8B43:        C8            INY                       ;
CODE_0E8B44:        80 E8         BRA CODE_0E8B2E           ;

CODE_0E8B46:        AB            PLB                       ;
CODE_0E8B47:        6B            RTL                       ;

DATA_0E8B48:        db $07,$07,$06,$05,$04,$03,$02,$01
                    db $00

DATA_0E8B51:        db $03,$03,$04,$05,$06,$07,$08,$09
                    db $0A

CODE_0E8B5A:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8B5D:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8B61:        90 05         BCC CODE_0E8B68           ;
CODE_0E8B63:        A9 09         LDA #$09                  ;
CODE_0E8B65:        8D 34 07      STA $0734                 ;
CODE_0E8B68:        CE 34 07      DEC $0734                 ;
CODE_0E8B6B:        AC 34 07      LDY $0734                 ;
CODE_0E8B6E:        BE 51 8B      LDX DATA_0E8B51,y               ;
CODE_0E8B71:        B9 48 8B      LDA DATA_0E8B48,y               ;
CODE_0E8B74:        A8            TAY                       ;
CODE_0E8B75:        A9 62         LDA #$62                  ;
CODE_0E8B77:        22 AC AA 0D   JSL CODE_0DAAAC           ;
CODE_0E8B7B:        AB            PLB                       ;
CODE_0E8B7C:        6B            RTL                       ;

CODE_0E8B7D:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8B80:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8B84:        A4 07         LDY $07                   ;
CODE_0E8B86:        BD 00 13      LDA $1300,x               ;
CODE_0E8B89:        D0 13         BNE CODE_0E8B9E           ;
CODE_0E8B8B:        A9 F4         LDA #$F4                  ;
CODE_0E8B8D:        99 A1 06      STA $06A1,y               ;
CODE_0E8B90:        C8            INY                       ;
CODE_0E8B91:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8B94:        D0 12         BNE CODE_0E8BA8           ;
CODE_0E8B96:        A9 F5         LDA #$F5                  ;
CODE_0E8B98:        99 A1 06      STA $06A1,y               ;
CODE_0E8B9B:        C8            INY                       ;
CODE_0E8B9C:        80 0A         BRA CODE_0E8BA8           ;

CODE_0E8B9E:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8BA1:        D0 0F         BNE CODE_0E8BB2           ;
CODE_0E8BA3:        A9 F6         LDA #$F6                  ;
CODE_0E8BA5:        99 A1 06      STA $06A1,y               ;
CODE_0E8BA8:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8BAB:        D0 05         BNE CODE_0E8BB2           ;
CODE_0E8BAD:        A9 F7         LDA #$F7                  ;
CODE_0E8BAF:        99 A1 06      STA $06A1,y               ;
CODE_0E8BB2:        C8            INY                       ;
CODE_0E8BB3:        C0 0D         CPY #$0D                  ;
CODE_0E8BB5:        D0 F1         BNE CODE_0E8BA8           ;
CODE_0E8BB7:        AB            PLB                       ;
CODE_0E8BB8:        6B            RTL                       ;

CODE_0E8BB9:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8BBC:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8BC0:        A4 07         LDY $07                   ;
CODE_0E8BC2:        A9 65         LDA #$65                  ;
CODE_0E8BC4:        99 A1 06      STA $06A1,y               ;
CODE_0E8BC7:        C8            INY                       ;
CODE_0E8BC8:        C8            INY                       ;
CODE_0E8BC9:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8BCC:        C9 63         CMP #$63                  ;
CODE_0E8BCE:        F0 04         BEQ CODE_0E8BD4           ;
CODE_0E8BD0:        C9 64         CMP #$64                  ;
CODE_0E8BD2:        D0 09         BNE CODE_0E8BDD           ;
CODE_0E8BD4:        A9 65         LDA #$65                  ;
CODE_0E8BD6:        99 A1 06      STA $06A1,y               ;
CODE_0E8BD9:        C8            INY                       ;
CODE_0E8BDA:        C8            INY                       ;
CODE_0E8BDB:        80 EC         BRA CODE_0E8BC9           ;

CODE_0E8BDD:        AB            PLB                       ;
CODE_0E8BDE:        6B            RTL                       ;

CODE_0E8BDF:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8BE2:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8BE6:        A4 07         LDY $07                   ;
CODE_0E8BE8:        A9 F8         LDA #$F8                  ;
CODE_0E8BEA:        99 A1 06      STA $06A1,y               ;
CODE_0E8BED:        C8            INY                       ;
CODE_0E8BEE:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8BF1:        C9 EC         CMP #$EC                  ;
CODE_0E8BF3:        F0 0A         BEQ CODE_0E8BFF           ;
CODE_0E8BF5:        A9 F9         LDA #$F9                  ;
CODE_0E8BF7:        99 A1 06      STA $06A1,y               ;
CODE_0E8BFA:        C8            INY                       ;
CODE_0E8BFB:        C0 0D         CPY #$0D                  ;
CODE_0E8BFD:        D0 EF         BNE CODE_0E8BEE           ;
CODE_0E8BFF:        AB            PLB                       ;
CODE_0E8C00:        6B            RTL                       ;

CODE_0E8C01:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8C04:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8C08:        A4 07         LDY $07                   ;
CODE_0E8C0A:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8C0D:        C9 FD         CMP #$FD                  ;
CODE_0E8C0F:        F0 05         BEQ CODE_0E8C16           ;
CODE_0E8C11:        A9 FA         LDA #$FA                  ;
CODE_0E8C13:        99 A1 06      STA $06A1,y               ;
CODE_0E8C16:        C8            INY                       ;
CODE_0E8C17:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8C1A:        C9 F1         CMP #$F1                  ;
CODE_0E8C1C:        F0 0A         BEQ CODE_0E8C28           ;
CODE_0E8C1E:        A9 FB         LDA #$FB                  ;
CODE_0E8C20:        99 A1 06      STA $06A1,y               ;
CODE_0E8C23:        C8            INY                       ;
CODE_0E8C24:        C0 0D         CPY #$0D                  ;
CODE_0E8C26:        D0 EF         BNE CODE_0E8C17           ;
CODE_0E8C28:        AB            PLB                       ;
CODE_0E8C29:        6B            RTL                       ;

CODE_0E8C2A:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8C2D:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8C31:        A4 07         LDY $07                   ;
CODE_0E8C33:        BD 00 13      LDA $1300,x               ;
CODE_0E8C36:        D0 13         BNE CODE_0E8C4B           ;
CODE_0E8C38:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8C3B:        C9 68         CMP #$68                  ;
CODE_0E8C3D:        F0 05         BEQ CODE_0E8C44           ;
CODE_0E8C3F:        A9 02         LDA #$02                  ;
CODE_0E8C41:        99 A1 06      STA $06A1,y               ;
CODE_0E8C44:        A9 EE         LDA #$EE                  ;
CODE_0E8C46:        99 A2 06      STA $06A2,y               ;
CODE_0E8C49:        80 1A         BRA CODE_0E8C65           ;

CODE_0E8C4B:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8C4E:        C9 66         CMP #$66                  ;
CODE_0E8C50:        D0 04         BNE CODE_0E8C56           ;
CODE_0E8C52:        A9 EF         LDA #$EF                  ;
CODE_0E8C54:        80 02         BRA CODE_0E8C58           ;

CODE_0E8C56:        A9 EC         LDA #$EC                  ;
CODE_0E8C58:        99 A1 06      STA $06A1,y               ;
CODE_0E8C5B:        A9 ED         LDA #$ED                  ;
CODE_0E8C5D:        99 A2 06      STA $06A2,y               ;
CODE_0E8C60:        A9 67         LDA #$67                  ;
CODE_0E8C62:        8D AD 06      STA $06AD                 ;
CODE_0E8C65:        AB            PLB                       ;
CODE_0E8C66:        6B            RTL                       ;

CODE_0E8C67:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8C6A:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8C6E:        A4 07         LDY $07                   ;
CODE_0E8C70:        BD 00 13      LDA $1300,x               ;
CODE_0E8C73:        D0 25         BNE CODE_0E8C9A           ;
CODE_0E8C75:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8C78:        C9 66         CMP #$66                  ;
CODE_0E8C7A:        D0 04         BNE CODE_0E8C80           ;
CODE_0E8C7C:        A9 F3         LDA #$F3                  ;
CODE_0E8C7E:        80 10         BRA CODE_0E8C90           ;

CODE_0E8C80:        A9 67         LDA #$67                  ;
CODE_0E8C82:        C8            INY                       ;
CODE_0E8C83:        C8            INY                       ;
CODE_0E8C84:        99 A1 06      STA $06A1,y               ;
CODE_0E8C87:        C8            INY                       ;
CODE_0E8C88:        C0 0D         CPY #$0D                  ;
CODE_0E8C8A:        D0 F8         BNE CODE_0E8C84           ;
CODE_0E8C8C:        A4 07         LDY $07                   ;
CODE_0E8C8E:        A9 F1         LDA #$F1                  ;
CODE_0E8C90:        99 A1 06      STA $06A1,y               ;
CODE_0E8C93:        A9 F2         LDA #$F2                  ;
CODE_0E8C95:        99 A2 06      STA $06A2,y               ;
CODE_0E8C98:        80 11         BRA CODE_0E8CAB           ;

CODE_0E8C9A:        B9 A1 06      LDA $06A1,y               ;
CODE_0E8C9D:        C9 68         CMP #$68                  ;
CODE_0E8C9F:        F0 05         BEQ CODE_0E8CA6           ;
CODE_0E8CA1:        A9 03         LDA #$03                  ;
CODE_0E8CA3:        99 A1 06      STA $06A1,y               ;
CODE_0E8CA6:        A9 F0         LDA #$F0                  ;
CODE_0E8CA8:        99 A2 06      STA $06A2,y               ;
CODE_0E8CAB:        AB            PLB                       ;
CODE_0E8CAC:        6B            RTL                       ;

CODE_0E8CAD:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8CB0:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8CB4:        A4 07         LDY $07                   ;
CODE_0E8CB6:        A9 70         LDA #$70                  ;
CODE_0E8CB8:        99 A1 06      STA $06A1,y               ;
CODE_0E8CBB:        C8            INY                       ;
CODE_0E8CBC:        DE 00 13      DEC $1300,x               ;
CODE_0E8CBF:        10 F5         BPL CODE_0E8CB6           ;
CODE_0E8CC1:        AB            PLB                       ;
CODE_0E8CC2:        6B            RTL                       ;

DATA_0E8CC3:        db $1B,$1A,$00,$00

DATA_0E8CC7:        db $1B,$27,$26,$25

DATA_0E8CCB:        db $1B,$2A,$29,$28

CODE_0E8CCF:        A0 03         LDY #$03                  ;
CODE_0E8CD1:        22 B4 AA 0D   JSL CODE_0DAAB4           ;
CODE_0E8CD5:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8CD8:        88            DEY                       ;
CODE_0E8CD9:        88            DEY                       ;
CODE_0E8CDA:        84 05         STY $05                   ;
CODE_0E8CDC:        BC 00 13      LDY $1300,x               ;
CODE_0E8CDF:        84 06         STY $06                   ;
CODE_0E8CE1:        A6 05         LDX $05                   ;
CODE_0E8CE3:        E8            INX                       ;
CODE_0E8CE4:        B9 C3 8C      LDA DATA_0E8CC3,y               ;
CODE_0E8CE7:        C9 00         CMP #$00                  ;
CODE_0E8CE9:        F0 09         BEQ CODE_0E8CF4           ;
CODE_0E8CEB:        A2 00         LDX #$00                  ;
CODE_0E8CED:        A4 05         LDY $05                   ;
CODE_0E8CEF:        22 AC AA 0D   JSL CODE_0DAAAC           ;
CODE_0E8CF3:        18            CLC                       ;
CODE_0E8CF4:        A4 06         LDY $06                   ;
CODE_0E8CF6:        B9 C7 8C      LDA DATA_0E8CC7,y               ;
CODE_0E8CF9:        9D A1 06      STA $06A1,x               ;
CODE_0E8CFC:        B9 CB 8C      LDA DATA_0E8CCB,y               ;
CODE_0E8CFF:        9D A2 06      STA $06A2,x               ;
CODE_0E8D02:        AB            PLB                       ;
CODE_0E8D03:        6B            RTL                       ;

CODE_0E8D04:        20 11 8D      JSR CODE_0E8D11           ;
CODE_0E8D07:        A2 02         LDX #$02                  ;
CODE_0E8D09:        A9 78         LDA #$78                  ;
CODE_0E8D0B:        22 AC AA 0D   JSL CODE_0DAAAC           ;
CODE_0E8D0F:        AB            PLB                       ;
CODE_0E8D10:        6B            RTL                       ;

CODE_0E8D11:        DA            PHX                       ;
CODE_0E8D12:        C2 30         REP #$30                  ;
CODE_0E8D14:        8A            TXA                       ;
CODE_0E8D15:        0A            ASL A                     ;
CODE_0E8D16:        AA            TAX                       ;
CODE_0E8D17:        E2 20         SEP #$20                  ;
CODE_0E8D19:        BC 05 13      LDY $1305,x               ;
CODE_0E8D1C:        C8            INY                       ;
CODE_0E8D1D:        B7 F3         LDA [$F3],y               ;
CODE_0E8D1F:        4A            LSR A                     ;
CODE_0E8D20:        4A            LSR A                     ;
CODE_0E8D21:        4A            LSR A                     ;
CODE_0E8D22:        4A            LSR A                     ;
CODE_0E8D23:        85 07         STA $07                   ;
CODE_0E8D25:        B7 F3         LDA [$F3],y               ;
CODE_0E8D27:        29 0F         AND #$0F                  ;
CODE_0E8D29:        E2 10         SEP #$10                  ;
CODE_0E8D2B:        A8            TAY                       ;
CODE_0E8D2C:        FA            PLX                       ;
CODE_0E8D2D:        60            RTS                       ;

CODE_0E8D2E:        8B            PHB                       ;
CODE_0E8D2F:        4B            PHK                       ;
CODE_0E8D30:        AB            PLB                       ;
CODE_0E8D31:        DA            PHX                       ;
CODE_0E8D32:        C2 30         REP #$30                  ;
CODE_0E8D34:        A2 00 00      LDX #$0000                ;
CODE_0E8D37:        AC 00 1A      LDY $1A00                 ;
CODE_0E8D3A:        AD 53 07      LDA $0753                 ;
CODE_0E8D3D:        29 FF 00      AND #$00FF                ;
CODE_0E8D40:        F0 0F         BEQ CODE_0E8D51           ;
CODE_0E8D42:        BD 11 9B      LDA DATA_0E9B11,x               ;
CODE_0E8D45:        99 02 1A      STA $1A02,y               ;
CODE_0E8D48:        1A            INC A                     ;
CODE_0E8D49:        F0 15         BEQ CODE_0E8D60           ;
CODE_0E8D4B:        E8            INX                       ;
CODE_0E8D4C:        E8            INX                       ;
CODE_0E8D4D:        C8            INY                       ;
CODE_0E8D4E:        C8            INY                       ;
CODE_0E8D4F:        80 F1         BRA CODE_0E8D42           ;

CODE_0E8D51:        BD 9F 9A      LDA DATA_0E9A9F,x               ;
CODE_0E8D54:        99 02 1A      STA $1A02,y               ;
CODE_0E8D57:        1A            INC A                     ;
CODE_0E8D58:        F0 06         BEQ CODE_0E8D60           ;
CODE_0E8D5A:        E8            INX                       ;
CODE_0E8D5B:        E8            INX                       ;
CODE_0E8D5C:        C8            INY                       ;
CODE_0E8D5D:        C8            INY                       ;
CODE_0E8D5E:        80 F1         BRA CODE_0E8D51           ;

CODE_0E8D60:        A2 00 00      LDX #$0000                ;
CODE_0E8D63:        BD A3 9B      LDA DATA_0E9BA3,x               ;
CODE_0E8D66:        99 02 1A      STA $1A02,y               ;
CODE_0E8D69:        1A            INC A                     ;
CODE_0E8D6A:        F0 06         BEQ CODE_0E8D72           ;
CODE_0E8D6C:        E8            INX                       ;
CODE_0E8D6D:        E8            INX                       ;
CODE_0E8D6E:        C8            INY                       ;
CODE_0E8D6F:        C8            INY                       ;
CODE_0E8D70:        80 F1         BRA CODE_0E8D63           ;

CODE_0E8D72:        8C 00 1A      STY $1A00                 ;
CODE_0E8D75:        A9 87 B4      LDA #$B487                ;
CODE_0E8D78:        85 02         STA $02                   ;
CODE_0E8D7A:        A2 A0 00      LDX #$00A0                ;
CODE_0E8D7D:        A0 00 00      LDY #$0000                ;
CODE_0E8D80:        20 0F 93      JSR CODE_0E930F           ;
CODE_0E8D83:        20 0F 93      JSR CODE_0E930F           ;
CODE_0E8D86:        20 0F 93      JSR CODE_0E930F           ;
CODE_0E8D89:        9C FD 0E      STZ $0EFD                 ;
CODE_0E8D8C:        9C EE 0E      STZ $0EEE                 ;
CODE_0E8D8F:        E2 30         SEP #$30                  ;
CODE_0E8D91:        A9 06         LDA #$06                  ;
CODE_0E8D93:        8D 73 07      STA $0773                 ;
CODE_0E8D96:        9C D1 0E      STZ $0ED1                 ;
CODE_0E8D99:        9C 0F 21      STZ $210F                 ;
CODE_0E8D9C:        9C 0F 21      STZ $210F                 ;
CODE_0E8D9F:        9C 11 21      STZ $2111                 ;
CODE_0E8DA2:        9C 11 21      STZ $2111                 ;
CODE_0E8DA5:        A9 17         LDA #$17                  ;
CODE_0E8DA7:        8D 0B 12      STA $120B                 ;
CODE_0E8DAA:        A9 0A         LDA #$0A                  ;
CODE_0E8DAC:        8D 99 00      STA $0099                 ;
CODE_0E8DAF:        A9 01         LDA #$01                  ;
CODE_0E8DB1:        8D 00 12      STA $1200                 ;
CODE_0E8DB4:        22 27 F0 0F   JSL CODE_0FF027           ;
CODE_0E8DB8:        A9 FF         LDA #$FF                  ;
CODE_0E8DBA:        8D 66 0E      STA $0E66                 ;
CODE_0E8DBD:        9C 26 0F      STZ $0F26                 ;
CODE_0E8DC0:        9C D2 0E      STZ $0ED2                 ;
CODE_0E8DC3:        9C D3 0E      STZ $0ED3                 ;
CODE_0E8DC6:        9C 10 21      STZ $2110                 ;
CODE_0E8DC9:        9C 10 21      STZ $2110                 ;
CODE_0E8DCC:        FA            PLX                       ;
CODE_0E8DCD:        AB            PLB                       ;
CODE_0E8DCE:        6B            RTL                       ;

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

CODE_0E8F35:        8B            PHB                       ;
CODE_0E8F36:        4B            PHK                       ;
CODE_0E8F37:        AB            PLB                       ;
CODE_0E8F38:        AC DB 00      LDY $00DB                 ;
CODE_0E8F3B:        B9 37 8E      LDA DATA_0E8E37,y               ;
CODE_0E8F3E:        8D 26 0F      STA $0F26                 ;
CODE_0E8F41:        AB            PLB                       ;
CODE_0E8F42:        6B            RTL                       ;

CODE_0E8F43:        8B            PHB                       ;
CODE_0E8F44:        4B            PHK                       ;
CODE_0E8F45:        AB            PLB                       ;
CODE_0E8F46:        DA            PHX                       ;
CODE_0E8F47:        5A            PHY                       ;
CODE_0E8F48:        AD 1A 0E      LDA $0E1A                 ;
CODE_0E8F4B:        F0 03         BEQ CODE_0E8F50           ;
CODE_0E8F4D:        9C 1A 0E      STZ $0E1A                 ;
CODE_0E8F50:        22 35 8F 0E   JSL CODE_0E8F35           ;
CODE_0E8F54:        A9 80         LDA #$80                  ;
CODE_0E8F56:        8D 02 16      STA $1602                 ;
CODE_0E8F59:        AC 21 0E      LDY $0E21                 ;
CODE_0E8F5C:        88            DEY                       ;
CODE_0E8F5D:        B9 7F 8E      LDA DATA_0E8E7F,y               ;
CODE_0E8F60:        29 1F         AND #$1F                  ;
CODE_0E8F62:        85 99         STA $99                   ;
CODE_0E8F64:        A9 01         LDA #$01                  ;
CODE_0E8F66:        8D 74 07      STA $0774                 ;
CODE_0E8F69:        8D D6 0E      STA $0ED6                 ;
CODE_0E8F6C:        22 27 F0 0F   JSL CODE_0FF027           ;
CODE_0E8F70:        9C F0 0E      STZ $0EF0                 ;
CODE_0E8F73:        9C CA 0E      STZ $0ECA                 ;
CODE_0E8F76:        9C 0F 13      STZ $130F                 ;
CODE_0E8F79:        9C DF 0E      STZ $0EDF                 ;
CODE_0E8F7C:        9C D1 0E      STZ $0ED1                 ;
CODE_0E8F7F:        9C C9 0E      STZ $0EC9                 ;
CODE_0E8F82:        9C DB 0E      STZ $0EDB                 ;
CODE_0E8F85:        9C 9A 0B      STZ $0B9A                 ;
CODE_0E8F88:        9C 80 16      STZ $1680                 ;
CODE_0E8F8B:        9C DC 0E      STZ $0EDC                 ;
CODE_0E8F8E:        22 EF 80 04   JSL CODE_0480EF           ;
CODE_0E8F92:        C2 30         REP #$30                  ;
CODE_0E8F94:        9C CB 0E      STZ $0ECB                 ;
CODE_0E8F97:        9C 10 13      STZ $1310                 ;
CODE_0E8F9A:        9C 12 13      STZ $1312                 ;
CODE_0E8F9D:        AC 00 1A      LDY $1A00                 ;
CODE_0E8FA0:        A9 09 C7      LDA #$C709                ;
CODE_0E8FA3:        99 02 1A      STA $1A02,y               ;
CODE_0E8FA6:        A9 C0 12      LDA #$12C0                ;
CODE_0E8FA9:        99 04 1A      STA $1A04,y               ;
CODE_0E8FAC:        A9 A2 30      LDA #$30A2                ;
CODE_0E8FAF:        99 06 1A      STA $1A06,y               ;
CODE_0E8FB2:        A9 09 D8      LDA #$D809                ;
CODE_0E8FB5:        99 08 1A      STA $1A08,y               ;
CODE_0E8FB8:        A9 C0 12      LDA #$12C0                ;
CODE_0E8FBB:        99 0A 1A      STA $1A0A,y               ;
CODE_0E8FBE:        A9 A2 70      LDA #$70A2                ;
CODE_0E8FC1:        99 0C 1A      STA $1A0C,y               ;
CODE_0E8FC4:        A9 09 A8      LDA #$A809                ;
CODE_0E8FC7:        99 0E 1A      STA $1A0E,y               ;
CODE_0E8FCA:        A9 40 1E      LDA #$1E40                ;
CODE_0E8FCD:        99 10 1A      STA $1A10,y               ;
CODE_0E8FD0:        A9 78 30      LDA #$3078                ;
CODE_0E8FD3:        99 12 1A      STA $1A12,y               ;
CODE_0E8FD6:        A9 0B 08      LDA #$080B                ;
CODE_0E8FD9:        99 14 1A      STA $1A14,y               ;
CODE_0E8FDC:        A9 40 1E      LDA #$1E40                ;
CODE_0E8FDF:        99 16 1A      STA $1A16,y               ;
CODE_0E8FE2:        A9 78 B0      LDA #$B078                ;
CODE_0E8FE5:        99 18 1A      STA $1A18,y               ;
CODE_0E8FE8:        98            TYA                       ;
CODE_0E8FE9:        18            CLC                       ;
CODE_0E8FEA:        69 18 00      ADC #$0018                ;
CODE_0E8FED:        A8            TAY                       ;
CODE_0E8FEE:        A2 00 00      LDX #$0000                ;
CODE_0E8FF1:        BD 0F 9C      LDA DATA_0E9C0F,x               ;
CODE_0E8FF4:        99 02 1A      STA $1A02,y               ;
CODE_0E8FF7:        E8            INX                       ;
CODE_0E8FF8:        E8            INX                       ;
CODE_0E8FF9:        C8            INY                       ;
CODE_0E8FFA:        C8            INY                       ;
CODE_0E8FFB:        1A            INC A                     ;
CODE_0E8FFC:        D0 F3         BNE CODE_0E8FF1           ;
CODE_0E8FFE:        88            DEY                       ;
CODE_0E8FFF:        88            DEY                       ;
CODE_0E9000:        AD 21 0E      LDA $0E21                 ;
CODE_0E9003:        3A            DEC A                     ;
CODE_0E9004:        29 FF 00      AND #$00FF                ;
CODE_0E9007:        0A            ASL A                     ;
CODE_0E9008:        AA            TAX                       ;
CODE_0E9009:        BD CF 8D      LDA DATA_0E8DCF,x               ;
CODE_0E900C:        AA            TAX                       ;
CODE_0E900D:        BD 4D 9C      LDA DATA_0E9C4D,x               ;
CODE_0E9010:        99 02 1A      STA $1A02,y               ;
CODE_0E9013:        E8            INX                       ;
CODE_0E9014:        E8            INX                       ;
CODE_0E9015:        C8            INY                       ;
CODE_0E9016:        C8            INY                       ;
CODE_0E9017:        1A            INC A                     ;
CODE_0E9018:        D0 F3         BNE CODE_0E900D           ;
CODE_0E901A:        AD 22 0E      LDA $0E22                 ;
CODE_0E901D:        29 FF 00      AND #$00FF                ;
CODE_0E9020:        C9 11 00      CMP #$0011                ;
CODE_0E9023:        D0 12         BNE CODE_0E9037           ;
CODE_0E9025:        88            DEY                       ;
CODE_0E9026:        88            DEY                       ;
CODE_0E9027:        A2 00 00      LDX #$0000                ;
CODE_0E902A:        BD D3 AB      LDA DATA_0EABD3,x               ;
CODE_0E902D:        99 02 1A      STA $1A02,y               ;
CODE_0E9030:        E8            INX                       ;
CODE_0E9031:        E8            INX                       ;
CODE_0E9032:        C8            INY                       ;
CODE_0E9033:        C8            INY                       ;
CODE_0E9034:        1A            INC A                     ;
CODE_0E9035:        D0 F3         BNE CODE_0E902A           ;
CODE_0E9037:        AD 22 0E      LDA $0E22                 ;
CODE_0E903A:        29 F0 00      AND #$00F0                ;
CODE_0E903D:        F0 1D         BEQ CODE_0E905C           ;
CODE_0E903F:        AD 22 0E      LDA $0E22                 ;
CODE_0E9042:        29 FF 00      AND #$00FF                ;
CODE_0E9045:        C9 16 00      CMP #$0016                ;
CODE_0E9048:        F0 12         BEQ CODE_0E905C           ;
CODE_0E904A:        88            DEY                       ;
CODE_0E904B:        88            DEY                       ;
CODE_0E904C:        A2 00 00      LDX #$0000                ;
CODE_0E904F:        BD FF AB      LDA DATA_0EABFF,x               ;
CODE_0E9052:        99 02 1A      STA $1A02,y               ;
CODE_0E9055:        E8            INX                       ;
CODE_0E9056:        E8            INX                       ;
CODE_0E9057:        C8            INY                       ;
CODE_0E9058:        C8            INY                       ;
CODE_0E9059:        1A            INC A                     ;
CODE_0E905A:        D0 F3         BNE CODE_0E904F           ;
CODE_0E905C:        8C 00 1A      STY $1A00                 ;
CODE_0E905F:        E2 30         SEP #$30                  ;
CODE_0E9061:        20 C1 91      JSR CODE_0E91C1           ;
CODE_0E9064:        CE 3C 07      DEC $073C                 ;
CODE_0E9067:        A9 01         LDA #$01                  ;
CODE_0E9069:        8D 00 12      STA $1200                 ;
CODE_0E906C:        9C 00 10      STZ $1000                 ;
CODE_0E906F:        9C 01 10      STZ $1001                 ;
CODE_0E9072:        AD 56 07      LDA $0756                 ;
CODE_0E9075:        85 EB         STA $EB                   ;
CODE_0E9077:        A9 01         LDA #$01                  ;
CODE_0E9079:        8D 56 07      STA $0756                 ;
CODE_0E907C:        AD 22 0E      LDA $0E22                 ;
CODE_0E907F:        29 F0         AND #$F0                  ;
CODE_0E9081:        F0 02         BEQ CODE_0E9085           ;
CODE_0E9083:        A9 04         LDA #$04                  ;
CODE_0E9085:        8D 44 07      STA $0744                 ;
CODE_0E9088:        AD 22 0E      LDA $0E22                 ;
CODE_0E908B:        C9 02         CMP #$02                  ;
CODE_0E908D:        D0 05         BNE CODE_0E9094           ;
CODE_0E908F:        A9 03         LDA #$03                  ;
CODE_0E9091:        8D 44 07      STA $0744                 ;
CODE_0E9094:        A5 DB         LDA $DB                   ;
CODE_0E9096:        C9 08         CMP #$08                  ;
CODE_0E9098:        D0 05         BNE CODE_0E909F           ;
CODE_0E909A:        A9 01         LDA #$01                  ;
CODE_0E909C:        8D 44 07      STA $0744                 ;
CODE_0E909F:        22 C3 98 0E   JSL CODE_0E98C3           ;
CODE_0E90A3:        CE 00 12      DEC $1200                 ;
CODE_0E90A6:        A5 EB         LDA $EB                   ;
CODE_0E90A8:        8D 56 07      STA $0756                 ;
CODE_0E90AB:        9C 22 0E      STZ $0E22                 ;
CODE_0E90AE:        A9 17         LDA #$17                  ;
CODE_0E90B0:        8D 0B 12      STA $120B                 ;
CODE_0E90B3:        A9 06         LDA #$06                  ;
CODE_0E90B5:        8D 73 07      STA $0773                 ;
CODE_0E90B8:        9C DE 0E      STZ $0EDE                 ;
CODE_0E90BB:        9C D2 0E      STZ $0ED2                 ;
CODE_0E90BE:        9C D3 0E      STZ $0ED3                 ;
CODE_0E90C1:        9C 10 21      STZ $2110                 ;
CODE_0E90C4:        9C 10 21      STZ $2110                 ;
CODE_0E90C7:        7A            PLY                       ;
CODE_0E90C8:        FA            PLX                       ;
CODE_0E90C9:        AB            PLB                       ;
CODE_0E90CA:        6B            RTL                       ;

CODE_0E90CB:        A5 9B         LDA $9B                   ;
CODE_0E90CD:        F0 20         BEQ CODE_0E90EF           ;
CODE_0E90CF:        64 9B         STZ $9B                   ;
CODE_0E90D1:        A5 9C         LDA $9C                   ;
CODE_0E90D3:        8D 1C 07      STA $071C                 ;
CODE_0E90D6:        8D 3F 07      STA $073F                 ;
CODE_0E90D9:        A5 9D         LDA $9D                   ;
CODE_0E90DB:        8D 1A 07      STA $071A                 ;
CODE_0E90DE:        C2 20         REP #$20                  ;
CODE_0E90E0:        A5 9C         LDA $9C                   ;
CODE_0E90E2:        4A            LSR A                     ;
CODE_0E90E3:        8D FD 0E      STA $0EFD                 ;
CODE_0E90E6:        4A            LSR A                     ;
CODE_0E90E7:        8D EE 0E      STA $0EEE                 ;
CODE_0E90EA:        8D D7 0E      STA $0ED7                 ;
CODE_0E90ED:        E2 20         SEP #$20                  ;
CODE_0E90EF:        AD FE 0E      LDA $0EFE                 ;
CODE_0E90F2:        29 01         AND #$01                  ;
CODE_0E90F4:        8D F6 0E      STA $0EF6                 ;
CODE_0E90F7:        9C FC 0E      STZ $0EFC                 ;
CODE_0E90FA:        9C F8 0E      STZ $0EF8                 ;
CODE_0E90FD:        22 00 80 0F   JSL CODE_0F8000           ;
CODE_0E9101:        20 E0 99      JSR CODE_0E99E0           ;
CODE_0E9104:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9107:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E910A:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E910D:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9110:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9113:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9116:        A5 BA         LDA $BA                   ;
CODE_0E9118:        C9 03         CMP #$03                  ;
CODE_0E911A:        F0 23         BEQ CODE_0E913F           ;
CODE_0E911C:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E911F:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9122:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9125:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9128:        AD D1 0E      LDA $0ED1                 ;
CODE_0E912B:        F0 12         BEQ CODE_0E913F           ;
CODE_0E912D:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9130:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9133:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9136:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E9139:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E913C:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E913F:        60            RTS                       ;

DATA_0E9140:        db $F8,$00,$20,$F8,$F0,$20,$00

CODE_0E9147:        8B            PHB                       ;
CODE_0E9148:        4B            PHK                       ;
CODE_0E9149:        AB            PLB                       ;
CODE_0E914A:        20 CB 90      JSR CODE_0E90CB           ;
CODE_0E914D:        9C D2 0E      STZ $0ED2                 ;
CODE_0E9150:        9C D3 0E      STZ $0ED3                 ;
CODE_0E9153:        A5 5C         LDA $5C                   ;
CODE_0E9155:        F0 12         BEQ CODE_0E9169           ;
CODE_0E9157:        C9 01         CMP #$01                  ;
CODE_0E9159:        D0 05         BNE CODE_0E9160           ;
CODE_0E915B:        A9 F8         LDA #$F8                  ;
CODE_0E915D:        8D D2 0E      STA $0ED2                 ;
CODE_0E9160:        A9 06         LDA #$06                  ;
CODE_0E9162:        8D 09 12      STA $1209                 ;
CODE_0E9165:        A2 11         LDX #$11                  ;
CODE_0E9167:        80 2C         BRA CODE_0E9195           ;

CODE_0E9169:        C2 20         REP #$20                  ;
CODE_0E916B:        A9 42 0F      LDA #$0F42                ;
CODE_0E916E:        8D 20 43      STA $4320                 ;
CODE_0E9171:        A9 40 91      LDA.w #DATA_0E9140        ;
CODE_0E9174:        8D 22 43      STA $4322                 ;
CODE_0E9177:        A2 0E         LDX.b #DATA_0E9140>>16    ;
CODE_0E9179:        8E 24 43      STX $4324                 ;
CODE_0E917C:        A0 7F         LDY #$7F                  ;
CODE_0E917E:        8C 27 43      STY $4327                 ;
CODE_0E9181:        E2 20         SEP #$20                  ;
CODE_0E9183:        9C EC 0E      STZ $0EEC                 ;
CODE_0E9186:        9C F3 0E      STZ $0EF3                 ;
CODE_0E9189:        AD 03 12      LDA $1203                 ;
CODE_0E918C:        09 04         ORA #$04                  ;
CODE_0E918E:        8D 03 12      STA $1203                 ;
CODE_0E9191:        A9 00         LDA #$00                  ;
CODE_0E9193:        A2 17         LDX #$17                  ;
CODE_0E9195:        8E 0B 12      STX $120B                 ;
CODE_0E9198:        8D 0C 12      STA $120C                 ;
CODE_0E919B:        9C D9 0E      STZ $0ED9                 ;
CODE_0E919E:        A9 1F         LDA #$1F                  ;
CODE_0E91A0:        8D F2 0E      STA $0EF2                 ;
CODE_0E91A3:        AD D1 0E      LDA $0ED1                 ;
CODE_0E91A6:        F0 14         BEQ CODE_0E91BC           ;
CODE_0E91A8:        AD 43 07      LDA $0743                 ;
CODE_0E91AB:        F0 05         BEQ CODE_0E91B2           ;
CODE_0E91AD:        9C D1 0E      STZ $0ED1                 ;
CODE_0E91B0:        80 0A         BRA CODE_0E91BC           ;

CODE_0E91B2:        A9 AF         LDA #$AF                  ;
CODE_0E91B4:        8D F2 0E      STA $0EF2                 ;
CODE_0E91B7:        A9 01         LDA #$01                  ;
CODE_0E91B9:        8D DE 0E      STA $0EDE                 ;
CODE_0E91BC:        20 C1 91      JSR CODE_0E91C1           ;
CODE_0E91BF:        AB            PLB                       ;
CODE_0E91C0:        6B            RTL                       ;

CODE_0E91C1:        AD 65 0E      LDA $0E65                 ;
CODE_0E91C4:        F0 07         BEQ CODE_0E91CD           ;
CODE_0E91C6:        85 DB         STA $DB                   ;
CODE_0E91C8:        9C 65 0E      STZ $0E65                 ;
CODE_0E91CB:        80 2B         BRA CODE_0E91F8           ;

CODE_0E91CD:        A5 DB         LDA $DB                   ;
CODE_0E91CF:        C9 17         CMP #$17                  ;
CODE_0E91D1:        F0 06         BEQ CODE_0E91D9           ;
CODE_0E91D3:        C9 26         CMP #$26                  ;
CODE_0E91D5:        F0 02         BEQ CODE_0E91D9           ;
CODE_0E91D7:        80 1F         BRA CODE_0E91F8           ;

CODE_0E91D9:        8D 65 0E      STA $0E65                 ;
CODE_0E91DC:        AD 5F 07      LDA $075F                 ;
CODE_0E91DF:        F0 0E         BEQ CODE_0E91EF           ;
CODE_0E91E1:        C9 04         CMP #$04                  ;
CODE_0E91E3:        F0 0A         BEQ CODE_0E91EF           ;
CODE_0E91E5:        C9 09         CMP #$09                  ;
CODE_0E91E7:        F0 06         BEQ CODE_0E91EF           ;
CODE_0E91E9:        A9 3E         LDA #$3E                  ;
CODE_0E91EB:        85 DB         STA $DB                   ;
CODE_0E91ED:        80 09         BRA CODE_0E91F8           ;

CODE_0E91EF:        A9 37         LDA #$37                  ;
CODE_0E91F1:        85 DB         STA $DB                   ;
CODE_0E91F3:        A9 03         LDA #$03                  ;
CODE_0E91F5:        8D 26 0F      STA $0F26                 ;
CODE_0E91F8:        C2 30         REP #$30                  ;
CODE_0E91FA:        A5 DB         LDA $DB                   ;
CODE_0E91FC:        29 FF 00      AND #$00FF                ;
CODE_0E91FF:        0A            ASL A                     ;
CODE_0E9200:        0A            ASL A                     ;
CODE_0E9201:        0A            ASL A                     ;
CODE_0E9202:        0A            ASL A                     ;
CODE_0E9203:        A8            TAY                       ;
CODE_0E9204:        84 06         STY $06                   ;
CODE_0E9206:        64 02         STZ $02                   ;
CODE_0E9208:        A4 06         LDY $06                   ;
CODE_0E920A:        B9 B8 93      LDA DATA_0E93B8,y               ;
CODE_0E920D:        29 FF 00      AND #$00FF                ;
CODE_0E9210:        C8            INY                       ;
CODE_0E9211:        84 06         STY $06                   ;
CODE_0E9213:        0A            ASL A                     ;
CODE_0E9214:        AA            TAX                       ;
CODE_0E9215:        BD A3 AC      LDA DATA_0EACA3,x               ;
CODE_0E9218:        A8            TAY                       ;
CODE_0E9219:        A6 02         LDX $02                   ;
CODE_0E921B:        A9 07 00      LDA #$0007                ;
CODE_0E921E:        85 04         STA $04                   ;
CODE_0E9220:        B9 27 AD      LDA DATA_0EAD27,y               ;
CODE_0E9223:        9D 00 10      STA $1000,x               ;
CODE_0E9226:        B9 37 AD      LDA DATA_0EAD37,y               ;
CODE_0E9229:        9D 10 10      STA $1010,x               ;
CODE_0E922C:        E8            INX                       ;
CODE_0E922D:        E8            INX                       ;
CODE_0E922E:        C8            INY                       ;
CODE_0E922F:        C8            INY                       ;
CODE_0E9230:        C6 04         DEC $04                   ;
CODE_0E9232:        10 EC         BPL CODE_0E9220           ;
CODE_0E9234:        8A            TXA                       ;
CODE_0E9235:        18            CLC                       ;
CODE_0E9236:        69 10 00      ADC #$0010                ;
CODE_0E9239:        85 02         STA $02                   ;
CODE_0E923B:        C9 E0 01      CMP #$01E0                ;
CODE_0E923E:        D0 C8         BNE CODE_0E9208           ;
CODE_0E9240:        AD F8 02      LDA $02F8                 ;
CODE_0E9243:        F0 3F         BEQ CODE_0E9284           ;
CODE_0E9245:        AD 53 07      LDA $0753                 ;
CODE_0E9248:        29 FF 00      AND #$00FF                ;
CODE_0E924B:        F0 37         BEQ CODE_0E9284           ;
CODE_0E924D:        A0 00 00      LDY #$0000                ;
CODE_0E9250:        A2 E0 00      LDX #$00E0                ;
CODE_0E9253:        B9 64 92      LDA DATA_0E9264,y               ;
CODE_0E9256:        9D 00 10      STA $1000,x               ;
CODE_0E9259:        E8            INX                       ;
CODE_0E925A:        E8            INX                       ;
CODE_0E925B:        C8            INY                       ;
CODE_0E925C:        C8            INY                       ;
CODE_0E925D:        C0 20 00      CPY #$0020                ;
CODE_0E9260:        D0 F1         BNE CODE_0E9253           ;
CODE_0E9262:        80 20         BRA CODE_0E9284           ;

DATA_0E9264:        db $2F,$77,$FF,$7F,$A5,$14,$F0,$57
                    db $40,$03,$00,$02,$BF,$46,$5D,$36
                    db $BB,$25,$EF,$04,$73,$0D,$7F,$4F
                    db $0F,$7F,$06,$4E,$1E,$00,$12,$00

CODE_0E9284:        A5 42         LDA $42                   ;
CODE_0E9286:        4A            LSR A                     ;
CODE_0E9287:        4A            LSR A                     ;
CODE_0E9288:        8D EE 0E      STA $0EEE                 ;
CODE_0E928B:        29 00 FF      AND #$FF00                ;
CODE_0E928E:        EB            XBA                       ;
CODE_0E928F:        85 F3         STA $F3                   ;
CODE_0E9291:        AD 5F 07      LDA $075F                 ;
CODE_0E9294:        29 FF 00      AND #$00FF                ;
CODE_0E9297:        0A            ASL A                     ;
CODE_0E9298:        C9 0C 00      CMP #$000C                ;
CODE_0E929B:        90 03         BCC CODE_0E92A0           ;
CODE_0E929D:        A9 00 00      LDA #$0000                ;
CODE_0E92A0:        18            CLC                       ;
CODE_0E92A1:        65 F3         ADC $F3                   ;
CODE_0E92A3:        85 F3         STA $F3                   ;
CODE_0E92A5:        9C D9 0E      STZ $0ED9                 ;
CODE_0E92A8:        A5 F3         LDA $F3                   ;
CODE_0E92AA:        F0 0E         BEQ CODE_0E92BA           ;
CODE_0E92AC:        AD D9 0E      LDA $0ED9                 ;
CODE_0E92AF:        18            CLC                       ;
CODE_0E92B0:        69 E0 00      ADC #$00E0                ;
CODE_0E92B3:        8D D9 0E      STA $0ED9                 ;
CODE_0E92B6:        C6 F3         DEC $F3                   ;
CODE_0E92B8:        80 EE         BRA CODE_0E92A8           ;

CODE_0E92BA:        AD EE 0E      LDA $0EEE                 ;
CODE_0E92BD:        29 F0 00      AND #$00F0                ;
CODE_0E92C0:        4A            LSR A                     ;
CODE_0E92C1:        4A            LSR A                     ;
CODE_0E92C2:        4A            LSR A                     ;
CODE_0E92C3:        4A            LSR A                     ;
CODE_0E92C4:        18            CLC                       ;
CODE_0E92C5:        6D D9 0E      ADC $0ED9                 ;
CODE_0E92C8:        8D D9 0E      STA $0ED9                 ;
CODE_0E92CB:        C9 80 0A      CMP #$0A80                ;
CODE_0E92CE:        90 03         BCC CODE_0E92D3           ;
CODE_0E92D0:        9C D9 0E      STZ $0ED9                 ;
CODE_0E92D3:        E2 30         SEP #$30                  ;
CODE_0E92D5:        20 27 93      JSR CODE_0E9327           ;
CODE_0E92D8:        AD DC 0E      LDA $0EDC                 ;
CODE_0E92DB:        F0 29         BEQ CODE_0E9306           ;
CODE_0E92DD:        AD EF 0E      LDA $0EEF                 ;
CODE_0E92E0:        85 F3         STA $F3                   ;
CODE_0E92E2:        AD EE 0E      LDA $0EEE                 ;
CODE_0E92E5:        85 F4         STA $F4                   ;
CODE_0E92E7:        20 14 87      JSR CODE_0E8714           ;
CODE_0E92EA:        A9 13         LDA #$13                  ;
CODE_0E92EC:        85 F5         STA $F5                   ;
CODE_0E92EE:        22 D8 85 0E   JSL CODE_0E85D8           ;
CODE_0E92F2:        A5 F4         LDA $F4                   ;
CODE_0E92F4:        C9 A0         CMP #$A0                  ;
CODE_0E92F6:        90 0A         BCC CODE_0E9302           ;
CODE_0E92F8:        A5 F3         LDA $F3                   ;
CODE_0E92FA:        49 04         EOR #$04                  ;
CODE_0E92FC:        85 F3         STA $F3                   ;
CODE_0E92FE:        A9 80         LDA #$80                  ;
CODE_0E9300:        85 F4         STA $F4                   ;
CODE_0E9302:        C6 F5         DEC $F5                   ;
CODE_0E9304:        D0 E8         BNE CODE_0E92EE           ;
CODE_0E9306:        A9 01         LDA #$01                  ;
CODE_0E9308:        8D 00 12      STA $1200                 ;
CODE_0E930B:        EE 3C 07      INC $073C                 ;
CODE_0E930E:        60            RTS                       ;

CODE_0E930F:        A9 0E 00      LDA #$000E                ;
CODE_0E9312:        85 04         STA $04                   ;
CODE_0E9314:        A9 10 00      LDA #$0010                ;
CODE_0E9317:        85 00         STA $00                   ;
CODE_0E9319:        B7 02         LDA [$02],y               ;
CODE_0E931B:        9D 00 10      STA $1000,x               ;
CODE_0E931E:        C8            INY                       ;
CODE_0E931F:        C8            INY                       ;
CODE_0E9320:        E8            INX                       ;
CODE_0E9321:        E8            INX                       ;
CODE_0E9322:        C6 00         DEC $00                   ;
CODE_0E9324:        D0 F3         BNE CODE_0E9319           ;
CODE_0E9326:        60            RTS                       ;

CODE_0E9327:        8B            PHB                       ;
CODE_0E9328:        A9 7F         LDA #$7F                  ;
CODE_0E932A:        48            PHA                       ;
CODE_0E932B:        AB            PLB                       ;
CODE_0E932C:        A2 00         LDX #$00                  ;
CODE_0E932E:        9E 00 30      STZ $3000,x               ;
CODE_0E9331:        9E 00 31      STZ $3100,x               ;
CODE_0E9334:        9E 00 32      STZ $3200,x               ;
CODE_0E9337:        9E 00 33      STZ $3300,x               ;
CODE_0E933A:        9E 00 34      STZ $3400,x               ;
CODE_0E933D:        9E 00 35      STZ $3500,x               ;
CODE_0E9340:        9E 00 36      STZ $3600,x               ;
CODE_0E9343:        9E 00 37      STZ $3700,x               ;
CODE_0E9346:        9E 00 38      STZ $3800,x               ;
CODE_0E9349:        9E 00 39      STZ $3900,x               ;
CODE_0E934C:        9E 00 3A      STZ $3A00,x               ;
CODE_0E934F:        CA            DEX                       ;
CODE_0E9350:        D0 DC         BNE CODE_0E932E           ;
CODE_0E9352:        AB            PLB                       ;
CODE_0E9353:        8B            PHB                       ;
CODE_0E9354:        4B            PHK                       ;
CODE_0E9355:        AB            PLB                       ;
CODE_0E9356:        A9 7F         LDA #$7F                  ;
CODE_0E9358:        85 F5         STA $F5                   ;
CODE_0E935A:        64 F6         STZ $F6                   ;
CODE_0E935C:        C2 30         REP #$30                  ;
CODE_0E935E:        A9 00 30      LDA #$3000                ;
CODE_0E9361:        85 F3         STA $F3                   ;
CODE_0E9363:        A0 00 00      LDY #$0000                ;
CODE_0E9366:        64 F8         STZ $F8                   ;
CODE_0E9368:        A6 F8         LDX $F8                   ;
CODE_0E936A:        BD E7 B4      LDA DATA_0EB4E7,x               ;
CODE_0E936D:        C9 FF FF      CMP #$FFFF                ;
CODE_0E9370:        F0 42         BEQ CODE_0E93B4           ;
CODE_0E9372:        10 0A         BPL CODE_0E937E           ;
CODE_0E9374:        48            PHA                       ;
CODE_0E9375:        A5 F3         LDA $F3                   ;
CODE_0E9377:        18            CLC                       ;
CODE_0E9378:        69 E0 00      ADC #$00E0                ;
CODE_0E937B:        85 F3         STA $F3                   ;
CODE_0E937D:        68            PLA                       ;
CODE_0E937E:        48            PHA                       ;
CODE_0E937F:        29 FF 00      AND #$00FF                ;
CODE_0E9382:        A8            TAY                       ;
CODE_0E9383:        68            PLA                       ;
CODE_0E9384:        0A            ASL A                     ;
CODE_0E9385:        0A            ASL A                     ;
CODE_0E9386:        A9 00 00      LDA #$0000                ;
CODE_0E9389:        2A            ROL A                     ;
CODE_0E938A:        85 F6         STA $F6                   ;
CODE_0E938C:        E2 20         SEP #$20                  ;
CODE_0E938E:        E8            INX                       ;
CODE_0E938F:        BD E7 B4      LDA DATA_0EB4E7,x               ;
CODE_0E9392:        29 3F         AND #$3F                  ;
CODE_0E9394:        85 F7         STA $F7                   ;
CODE_0E9396:        A5 F7         LDA $F7                   ;
CODE_0E9398:        97 F3         STA [$F3],y               ;
CODE_0E939A:        A5 F6         LDA $F6                   ;
CODE_0E939C:        F0 0E         BEQ CODE_0E93AC           ;
CODE_0E939E:        98            TYA                       ;
CODE_0E939F:        29 F0         AND #$F0                  ;
CODE_0E93A1:        C9 D0         CMP #$D0                  ;
CODE_0E93A3:        F0 07         BEQ CODE_0E93AC           ;
CODE_0E93A5:        98            TYA                       ;
CODE_0E93A6:        18            CLC                       ;
CODE_0E93A7:        69 10         ADC #$10                  ;
CODE_0E93A9:        A8            TAY                       ;
CODE_0E93AA:        80 EA         BRA CODE_0E9396           ;

CODE_0E93AC:        C2 20         REP #$20                  ;
CODE_0E93AE:        E6 F8         INC $F8                   ;
CODE_0E93B0:        E6 F8         INC $F8                   ;
CODE_0E93B2:        80 B4         BRA CODE_0E9368           ;

CODE_0E93B4:        E2 30         SEP #$30                  ;
CODE_0E93B6:        AB            PLB                       ;
CODE_0E93B7:        60            RTS                       ;

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

CODE_0E98B8:        AD 22 0E      LDA $0E22                 ;
CODE_0E98BB:        F0 03         BEQ CODE_0E98C0           ;
CODE_0E98BD:        4C 6F 99      JMP CODE_0E996F           ;

CODE_0E98C0:        EE 3C 07      INC $073C                 ;
CODE_0E98C3:        8B            PHB                       ;
CODE_0E98C4:        4B            PHK                       ;
CODE_0E98C5:        AB            PLB                       ;
CODE_0E98C6:        DA            PHX                       ;
CODE_0E98C7:        AD 44 07      LDA $0744                 ;
CODE_0E98CA:        D0 02         BNE CODE_0E98CE           ;
CODE_0E98CC:        A5 BA         LDA $BA                   ;
CODE_0E98CE:        C2 30         REP #$30                  ;
CODE_0E98D0:        29 FF 00      AND #$00FF                ;
CODE_0E98D3:        0A            ASL A                     ;
CODE_0E98D4:        A8            TAY                       ;
CODE_0E98D5:        AD 43 07      LDA $0743                 ;
CODE_0E98D8:        29 FF 00      AND #$00FF                ;
CODE_0E98DB:        F0 15         BEQ CODE_0E98F2           ;
CODE_0E98DD:        AD 44 07      LDA $0744                 ;
CODE_0E98E0:        29 04 00      AND #$0004                ;
CODE_0E98E3:        D0 0D         BNE CODE_0E98F2           ;
CODE_0E98E5:        AD 5A 07      LDA $075A                 ;
CODE_0E98E8:        29 80 00      AND #$0080                ;
CODE_0E98EB:        D0 05         BNE CODE_0E98F2           ;
CODE_0E98ED:        A9 2A 52      LDA #$522A                ;
CODE_0E98F0:        80 03         BRA CODE_0E98F5           ;

CODE_0E98F2:        B9 28 98      LDA DATA_0E9828,y               ;
CODE_0E98F5:        8D 00 10      STA $1000                 ;
CODE_0E98F8:        29 1F 00      AND #$001F                ;
CODE_0E98FB:        18            CLC                       ;
CODE_0E98FC:        69 20 00      ADC #$0020                ;
CODE_0E98FF:        8D E0 0E      STA $0EE0                 ;
CODE_0E9902:        AD 00 10      LDA $1000                 ;
CODE_0E9905:        29 E0 03      AND #$03E0                ;
CODE_0E9908:        0A            ASL A                     ;
CODE_0E9909:        0A            ASL A                     ;
CODE_0E990A:        0A            ASL A                     ;
CODE_0E990B:        EB            XBA                       ;
CODE_0E990C:        18            CLC                       ;
CODE_0E990D:        69 40 00      ADC #$0040                ;
CODE_0E9910:        8D E1 0E      STA $0EE1                 ;
CODE_0E9913:        AD 00 10      LDA $1000                 ;
CODE_0E9916:        29 00 7C      AND #$7C00                ;
CODE_0E9919:        4A            LSR A                     ;
CODE_0E991A:        4A            LSR A                     ;
CODE_0E991B:        EB            XBA                       ;
CODE_0E991C:        18            CLC                       ;
CODE_0E991D:        69 80 00      ADC #$0080                ;
CODE_0E9920:        8D E2 0E      STA $0EE2                 ;
CODE_0E9923:        9C 00 10      STZ $1000                 ;
CODE_0E9926:        80 0C         BRA CODE_0E9934           ;

CODE_0E9928:        A9 E0 00      LDA #$00E0                ;
CODE_0E992B:        8D E0 0E      STA $0EE0                 ;
CODE_0E992E:        8D E1 0E      STA $0EE1                 ;
CODE_0E9931:        8D E2 0E      STA $0EE2                 ;
CODE_0E9934:        E2 30         SEP #$30                  ;
CODE_0E9936:        AD 54 02      LDA $0254                 ;
CODE_0E9939:        D0 32         BNE CODE_0E996D           ;
CODE_0E993B:        A0 00         LDY #$00                  ;
CODE_0E993D:        AD 53 07      LDA $0753                 ;
CODE_0E9940:        F0 02         BEQ CODE_0E9944           ;
CODE_0E9942:        A0 20         LDY #$20                  ;
CODE_0E9944:        AD 56 07      LDA $0756                 ;
CODE_0E9947:        C9 02         CMP #$02                  ;
CODE_0E9949:        D0 05         BNE CODE_0E9950           ;
CODE_0E994B:        98            TYA                       ;
CODE_0E994C:        18            CLC                       ;
CODE_0E994D:        69 40         ADC #$40                  ;
CODE_0E994F:        A8            TAY                       ;
CODE_0E9950:        C2 20         REP #$20                  ;
CODE_0E9952:        A2 00         LDX #$00                  ;
CODE_0E9954:        B9 38 98      LDA DATA_0E9838,y               ;
CODE_0E9957:        9D E0 11      STA $11E0,x               ;
CODE_0E995A:        B9 48 98      LDA DATA_0E9848,y               ;
CODE_0E995D:        9D F0 11      STA $11F0,x               ;
CODE_0E9960:        E8            INX                       ;
CODE_0E9961:        E8            INX                       ;
CODE_0E9962:        C8            INY                       ;
CODE_0E9963:        C8            INY                       ;
CODE_0E9964:        E0 10         CPX #$10                  ;
CODE_0E9966:        D0 EC         BNE CODE_0E9954           ;
CODE_0E9968:        E2 20         SEP #$20                  ;
CODE_0E996A:        EE 00 12      INC $1200                 ;
CODE_0E996D:        FA            PLX                       ;
CODE_0E996E:        AB            PLB                       ;
CODE_0E996F:        6B            RTL                       ;

CODE_0E9970:        8B            PHB                       ;
CODE_0E9971:        4B            PHK                       ;
CODE_0E9972:        AB            PLB                       ;
CODE_0E9973:        DA            PHX                       ;
CODE_0E9974:        5A            PHY                       ;
CODE_0E9975:        48            PHA                       ;
CODE_0E9976:        AD FE 0E      LDA $0EFE                 ;
CODE_0E9979:        C9 7F         CMP #$7F                  ;
CODE_0E997B:        D0 05         BNE CODE_0E9982           ;
CODE_0E997D:        AD D0 0E      LDA $0ED0                 ;
CODE_0E9980:        80 03         BRA CODE_0E9985           ;

CODE_0E9982:        8D D0 0E      STA $0ED0                 ;
CODE_0E9985:        85 F3         STA $F3                   ;
CODE_0E9987:        A9 20         LDA #$20                  ;
CODE_0E9989:        85 00         STA $00                   ;
CODE_0E998B:        A5 BA         LDA $BA                   ;
CODE_0E998D:        C9 03         CMP #$03                  ;
CODE_0E998F:        D0 02         BNE CODE_0E9993           ;
CODE_0E9991:        06 00         ASL $00                   ;
CODE_0E9993:        AD FD 0E      LDA $0EFD                 ;
CODE_0E9996:        18            CLC                       ;
CODE_0E9997:        65 00         ADC $00                   ;
CODE_0E9999:        29 F0         AND #$F0                  ;
CODE_0E999B:        4A            LSR A                     ;
CODE_0E999C:        4A            LSR A                     ;
CODE_0E999D:        8D F7 0E      STA $0EF7                 ;
CODE_0E99A0:        4A            LSR A                     ;
CODE_0E99A1:        85 00         STA $00                   ;
CODE_0E99A3:        A5 00         LDA $00                   ;
CODE_0E99A5:        D0 13         BNE CODE_0E99BA           ;
CODE_0E99A7:        AD F6 0E      LDA $0EF6                 ;
CODE_0E99AA:        F0 07         BEQ CODE_0E99B3           ;
CODE_0E99AC:        9C F6 0E      STZ $0EF6                 ;
CODE_0E99AF:        A9 14         LDA #$14                  ;
CODE_0E99B1:        80 13         BRA CODE_0E99C6           ;

CODE_0E99B3:        A9 10         LDA #$10                  ;
CODE_0E99B5:        8D F6 0E      STA $0EF6                 ;
CODE_0E99B8:        80 0C         BRA CODE_0E99C6           ;

CODE_0E99BA:        A5 F3         LDA $F3                   ;
CODE_0E99BC:        29 01         AND #$01                  ;
CODE_0E99BE:        F0 04         BEQ CODE_0E99C4           ;
CODE_0E99C0:        A9 10         LDA #$10                  ;
CODE_0E99C2:        80 02         BRA CODE_0E99C6           ;

CODE_0E99C4:        A9 14         LDA #$14                  ;
CODE_0E99C6:        85 01         STA $01                   ;
CODE_0E99C8:        A5 F3         LDA $F3                   ;
CODE_0E99CA:        29 0F         AND #$0F                  ;
CODE_0E99CC:        A6 00         LDX $00                   ;
CODE_0E99CE:        D0 01         BNE CODE_0E99D1           ;
CODE_0E99D0:        1A            INC A                     ;
CODE_0E99D1:        1A            INC A                     ;
CODE_0E99D2:        0A            ASL A                     ;
CODE_0E99D3:        0A            ASL A                     ;
CODE_0E99D4:        0A            ASL A                     ;
CODE_0E99D5:        8D F8 0E      STA $0EF8                 ;
CODE_0E99D8:        20 06 9A      JSR CODE_0E9A06           ;
CODE_0E99DB:        68            PLA                       ;
CODE_0E99DC:        7A            PLY                       ;
CODE_0E99DD:        FA            PLX                       ;
CODE_0E99DE:        AB            PLB                       ;
CODE_0E99DF:        6B            RTL                       ;

CODE_0E99E0:        AD FD 0E      LDA $0EFD                 ;
CODE_0E99E3:        29 F0         AND #$F0                  ;
CODE_0E99E5:        4A            LSR A                     ;
CODE_0E99E6:        4A            LSR A                     ;
CODE_0E99E7:        8D F7 0E      STA $0EF7                 ;
CODE_0E99EA:        4A            LSR A                     ;
CODE_0E99EB:        85 00         STA $00                   ;
CODE_0E99ED:        AD FE 0E      LDA $0EFE                 ;
CODE_0E99F0:        0A            ASL A                     ;
CODE_0E99F1:        0A            ASL A                     ;
CODE_0E99F2:        0A            ASL A                     ;
CODE_0E99F3:        8D F8 0E      STA $0EF8                 ;
CODE_0E99F6:        AD FE 0E      LDA $0EFE                 ;
CODE_0E99F9:        29 01         AND #$01                  ;
CODE_0E99FB:        F0 04         BEQ CODE_0E9A01           ;
CODE_0E99FD:        A9 14         LDA #$14                  ;
CODE_0E99FF:        80 02         BRA CODE_0E9A03           ;

CODE_0E9A01:        A9 10         LDA #$10                  ;
CODE_0E9A03:        85 01         STA $01                   ;
CODE_0E9A05:        60            RTS                       ;

CODE_0E9A06:        C2 30         REP #$30                  ;
CODE_0E9A08:        A9 04 00      LDA #$0004                ;
CODE_0E9A0B:        8D FA 0E      STA $0EFA                 ;
CODE_0E9A0E:        A5 BA         LDA $BA                   ;
CODE_0E9A10:        29 FF 00      AND #$00FF                ;
CODE_0E9A13:        C9 03 00      CMP #$0003                ;
CODE_0E9A16:        D0 03         BNE CODE_0E9A1B           ;
CODE_0E9A18:        0E FA 0E      ASL $0EFA                 ;
CODE_0E9A1B:        AF 00 00 7F   LDA $7F0000               ;
CODE_0E9A1F:        A8            TAY                       ;
CODE_0E9A20:        A5 00         LDA $00                   ;
CODE_0E9A22:        29 20 00      AND #$0020                ;
CODE_0E9A25:        F0 0B         BEQ CODE_0E9A32           ;
CODE_0E9A27:        A5 00         LDA $00                   ;
CODE_0E9A29:        18            CLC                       ;
CODE_0E9A2A:        69 00 04      ADC #$0400                ;
CODE_0E9A2D:        29 C0 16      AND #$16C0                ;
CODE_0E9A30:        85 00         STA $00                   ;
CODE_0E9A32:        BB            TYX                       ;
CODE_0E9A33:        A5 00         LDA $00                   ;
CODE_0E9A35:        38            SEC                       ;
CODE_0E9A36:        E9 00 08      SBC #$0800                ;
CODE_0E9A39:        9F 02 00 7F   STA $7F0002,x             ;
CODE_0E9A3D:        A9 20 00      LDA #$0020                ;
CODE_0E9A40:        85 02         STA $02                   ;
CODE_0E9A42:        9B            TXY                       ;
CODE_0E9A43:        AD F7 0E      LDA $0EF7                 ;
CODE_0E9A46:        29 40 00      AND #$0040                ;
CODE_0E9A49:        F0 0D         BEQ CODE_0E9A58           ;
CODE_0E9A4B:        A9 00 08      LDA #$0800                ;
CODE_0E9A4E:        18            CLC                       ;
CODE_0E9A4F:        6D F7 0E      ADC $0EF7                 ;
CODE_0E9A52:        29 00 FF      AND #$FF00                ;
CODE_0E9A55:        8D F7 0E      STA $0EF7                 ;
CODE_0E9A58:        AE F7 0E      LDX $0EF7                 ;
CODE_0E9A5B:        86 04         STX $04                   ;
CODE_0E9A5D:        BF 00 20 7E   LDA $7E2000,x             ;
CODE_0E9A61:        BB            TYX                       ;
CODE_0E9A62:        9F 04 00 7F   STA $7F0004,x             ;
CODE_0E9A66:        C8            INY                       ;
CODE_0E9A67:        C8            INY                       ;
CODE_0E9A68:        A5 04         LDA $04                   ;
CODE_0E9A6A:        18            CLC                       ;
CODE_0E9A6B:        69 40 00      ADC #$0040                ;
CODE_0E9A6E:        85 04         STA $04                   ;
CODE_0E9A70:        AA            TAX                       ;
CODE_0E9A71:        C6 02         DEC $02                   ;
CODE_0E9A73:        10 E8         BPL CODE_0E9A5D           ;
CODE_0E9A75:        BB            TYX                       ;
CODE_0E9A76:        A9 24 00      LDA #$0024                ;
CODE_0E9A79:        9F 00 00 7F   STA $7F0000,x             ;
CODE_0E9A7D:        EE F7 0E      INC $0EF7                 ;
CODE_0E9A80:        EE F7 0E      INC $0EF7                 ;
CODE_0E9A83:        E6 00         INC $00                   ;
CODE_0E9A85:        CE FA 0E      DEC $0EFA                 ;
CODE_0E9A88:        D0 96         BNE CODE_0E9A20           ;
CODE_0E9A8A:        98            TYA                       ;
CODE_0E9A8B:        8F 00 00 7F   STA $7F0000               ;
CODE_0E9A8F:        AA            TAX                       ;
CODE_0E9A90:        A9 FF FF      LDA #$FFFF                ;
CODE_0E9A93:        9F 02 00 7F   STA $7F0002,x             ;
CODE_0E9A97:        E2 30         SEP #$30                  ;
CODE_0E9A99:        A9 01         LDA #$01                  ;
CODE_0E9A9B:        8D F9 0E      STA $0EF9                 ;
CODE_0E9A9E:        60            RTS                       ;

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

DATA_0EC301:        db $90,$31,$39,$F1,$BF,$F7,$30,$33
                    db $E7,$A3,$03,$A7,$03,$CD,$41,$0F
                    db $F6,$A0,$ED,$47,$FD,$38,$11,$0F
                    db $F6,$20,$AD,$40,$3D,$C7,$FD,$10
                    db $00,$0B,$13,$5B,$14,$6A,$42,$C7
                    db $12,$C6,$42,$1B,$94,$2A,$42,$53
                    db $13,$62,$41,$97,$17,$A6,$45,$6E
                    db $81,$8F,$F7,$30,$02,$E8,$12,$3A
                    db $68,$7A,$E0,$6A,$F0,$6A,$6D,$C5
                    db $00,$6A,$FD

CODE_0EC34C:        8B            PHB                       ;
CODE_0EC34D:        4B            PHK                       ;
CODE_0EC34E:        AB            PLB                       ;
CODE_0EC34F:        22 74 C3 0E   JSL CODE_0EC374           ;
CODE_0EC353:        8D 50 07      STA $0750                 ;
CODE_0EC356:        29 60         AND #$60                  ;
CODE_0EC358:        0A            ASL A                     ;
CODE_0EC359:        2A            ROL A                     ;
CODE_0EC35A:        2A            ROL A                     ;
CODE_0EC35B:        2A            ROL A                     ;
CODE_0EC35C:        85 5C         STA $5C                   ;
CODE_0EC35E:        85 BA         STA $BA                   ;
CODE_0EC360:        AD 5F 07      LDA $075F                 ;
CODE_0EC363:        C9 07         CMP #$07                  ;
CODE_0EC365:        D0 0B         BNE CODE_0EC372           ;
CODE_0EC367:        AD 60 07      LDA $0760                 ;
CODE_0EC36A:        C9 03         CMP #$03                  ;
CODE_0EC36C:        D0 04         BNE CODE_0EC372           ;
CODE_0EC36E:        A9 03         LDA #$03                  ;
CODE_0EC370:        85 BA         STA $BA                   ;
CODE_0EC372:        AB            PLB                       ;
CODE_0EC373:        6B            RTL                       ;

CODE_0EC374:        8B            PHB                       ;
CODE_0EC375:        4B            PHK                       ;
CODE_0EC376:        AB            PLB                       ;
CODE_0EC377:        AC 5F 07      LDY $075F                 ;
CODE_0EC37A:        C0 0D         CPY #$0D                  ;
CODE_0EC37C:        90 0B         BCC CODE_0EC389           ;
CODE_0EC37E:        9C 60 07      STZ $0760                 ;
CODE_0EC381:        9C 5C 07      STZ $075C                 ;
CODE_0EC384:        A0 00         LDY #$00                  ;
CODE_0EC386:        8C 5F 07      STY $075F                 ;
CODE_0EC389:        B9 99 C4      LDA DATA_0EC499,y               ;
CODE_0EC38C:        18            CLC                       ;
CODE_0EC38D:        6D 60 07      ADC $0760                 ;
CODE_0EC390:        A8            TAY                       ;
CODE_0EC391:        B9 A6 C4      LDA DATA_0EC4A6,y               ;
CODE_0EC394:        AB            PLB                       ;
CODE_0EC395:        6B            RTL                       ;

CODE_0EC396:        48            PHA                       ;
CODE_0EC397:        AD 5F 07      LDA $075F                 ;
CODE_0EC39A:        C9 09         CMP #$09                  ;
CODE_0EC39C:        90 17         BCC CODE_0EC3B5           ;
CODE_0EC39E:        AD 50 07      LDA $0750                 ;
CODE_0EC3A1:        29 60         AND #$60                  ;
CODE_0EC3A3:        C9 20         CMP #$20                  ;
CODE_0EC3A5:        D0 0E         BNE CODE_0EC3B5           ;
CODE_0EC3A7:        68            PLA                       ;
CODE_0EC3A8:        C9 1F         CMP #$1F                  ;
CODE_0EC3AA:        F0 0B         BEQ CODE_0EC3B7           ;
CODE_0EC3AC:        C9 1E         CMP #$1E                  ;
CODE_0EC3AE:        F0 0A         BEQ CODE_0EC3BA           ;
CODE_0EC3B0:        18            CLC                       ;
CODE_0EC3B1:        69 1D         ADC #$1D                  ;
CODE_0EC3B3:        80 01         BRA CODE_0EC3B6           ;

CODE_0EC3B5:        68            PLA                       ;
CODE_0EC3B6:        60            RTS                       ;

CODE_0EC3B7:        A9 09         LDA #$09                  ;
CODE_0EC3B9:        60            RTS                       ;

CODE_0EC3BA:        A9 1B         LDA #$1B                  ;
CODE_0EC3BC:        60            RTS                       ;

CODE_0EC3BD:        8B            PHB                       ;
CODE_0EC3BE:        4B            PHK                       ;
CODE_0EC3BF:        AB            PLB                       ;
CODE_0EC3C0:        AD 50 07      LDA $0750                 ;
CODE_0EC3C3:        29 60         AND #$60                  ;
CODE_0EC3C5:        0A            ASL A                     ;
CODE_0EC3C6:        2A            ROL A                     ;
CODE_0EC3C7:        2A            ROL A                     ;
CODE_0EC3C8:        2A            ROL A                     ;
CODE_0EC3C9:        85 5C         STA $5C                   ;
CODE_0EC3CB:        85 BA         STA $BA                   ;
CODE_0EC3CD:        A8            TAY                       ;
CODE_0EC3CE:        AD 5F 07      LDA $075F                 ;
CODE_0EC3D1:        C9 07         CMP #$07                  ;
CODE_0EC3D3:        D0 0B         BNE CODE_0EC3E0           ;
CODE_0EC3D5:        AD 60 07      LDA $0760                 ;
CODE_0EC3D8:        C9 03         CMP #$03                  ;
CODE_0EC3DA:        D0 04         BNE CODE_0EC3E0           ;
CODE_0EC3DC:        A9 03         LDA #$03                  ;
CODE_0EC3DE:        85 BA         STA $BA                   ;
CODE_0EC3E0:        AD 50 07      LDA $0750                 ;
CODE_0EC3E3:        29 1F         AND #$1F                  ;
CODE_0EC3E5:        20 96 C3      JSR CODE_0EC396           ;
CODE_0EC3E8:        8D 4F 07      STA $074F                 ;
CODE_0EC3EB:        B9 EC C4      LDA DATA_0EC4EC,y               ;
CODE_0EC3EE:        18            CLC                       ;
CODE_0EC3EF:        6D 4F 07      ADC $074F                 ;
CODE_0EC3F2:        A8            TAY                       ;
CODE_0EC3F3:        B9 F0 C4      LDA DATA_0EC4F0,y               ;
CODE_0EC3F6:        85 FD         STA $FD                   ;
CODE_0EC3F8:        B9 37 C5      LDA DATA_0EC537,y               ;
CODE_0EC3FB:        85 FE         STA $FE                   ;
CODE_0EC3FD:        A9 0E         LDA #$0E                  ;
CODE_0EC3FF:        85 FF         STA $FF                   ;
CODE_0EC401:        A4 5C         LDY $5C                   ;
CODE_0EC403:        B9 7E C5      LDA DATA_0EC57E,y               ;
CODE_0EC406:        18            CLC                       ;
CODE_0EC407:        6D 4F 07      ADC $074F                 ;
CODE_0EC40A:        A8            TAY                       ;
CODE_0EC40B:        85 DB         STA $DB                   ;
CODE_0EC40D:        B9 82 C5      LDA DATA_0EC582,y               ;
CODE_0EC410:        85 FA         STA $FA                   ;
CODE_0EC412:        B9 C9 C5      LDA DATA_0EC5C9,y               ;
CODE_0EC415:        85 FB         STA $FB                   ;
CODE_0EC417:        A9 0E         LDA #$0E                  ;
CODE_0EC419:        85 FC         STA $FC                   ;
CODE_0EC41B:        A0 00         LDY #$00                  ;
CODE_0EC41D:        B7 FA         LDA [$FA],y               ;
CODE_0EC41F:        48            PHA                       ;
CODE_0EC420:        29 07         AND #$07                  ;
CODE_0EC422:        C9 04         CMP #$04                  ;
CODE_0EC424:        90 05         BCC CODE_0EC42B           ;
CODE_0EC426:        8D 44 07      STA $0744                 ;
CODE_0EC429:        A9 00         LDA #$00                  ;
CODE_0EC42B:        8D 41 07      STA $0741                 ;
CODE_0EC42E:        68            PLA                       ;
CODE_0EC42F:        48            PHA                       ;
CODE_0EC430:        29 38         AND #$38                  ;
CODE_0EC432:        4A            LSR A                     ;
CODE_0EC433:        4A            LSR A                     ;
CODE_0EC434:        4A            LSR A                     ;
CODE_0EC435:        8D 10 07      STA $0710                 ;
CODE_0EC438:        68            PLA                       ;
CODE_0EC439:        29 C0         AND #$C0                  ;
CODE_0EC43B:        18            CLC                       ;
CODE_0EC43C:        2A            ROL A                     ;
CODE_0EC43D:        2A            ROL A                     ;
CODE_0EC43E:        2A            ROL A                     ;
CODE_0EC43F:        8D 15 07      STA $0715                 ;
CODE_0EC442:        C8            INY                       ;
CODE_0EC443:        B7 FA         LDA [$FA],y               ;
CODE_0EC445:        48            PHA                       ;
CODE_0EC446:        29 0F         AND #$0F                  ;
CODE_0EC448:        8D 27 07      STA $0727                 ;
CODE_0EC44B:        68            PLA                       ;
CODE_0EC44C:        48            PHA                       ;
CODE_0EC44D:        29 30         AND #$30                  ;
CODE_0EC44F:        4A            LSR A                     ;
CODE_0EC450:        4A            LSR A                     ;
CODE_0EC451:        4A            LSR A                     ;
CODE_0EC452:        4A            LSR A                     ;
CODE_0EC453:        8D 42 07      STA $0742                 ;
CODE_0EC456:        68            PLA                       ;
CODE_0EC457:        29 C0         AND #$C0                  ;
CODE_0EC459:        18            CLC                       ;
CODE_0EC45A:        2A            ROL A                     ;
CODE_0EC45B:        2A            ROL A                     ;
CODE_0EC45C:        2A            ROL A                     ;
CODE_0EC45D:        C9 03         CMP #$03                  ;
CODE_0EC45F:        D0 05         BNE CODE_0EC466           ;
CODE_0EC461:        8D 43 07      STA $0743                 ;
CODE_0EC464:        A9 00         LDA #$00                  ;
CODE_0EC466:        8D 33 07      STA $0733                 ;
CODE_0EC469:        20 7E C4      JSR CODE_0EC47E           ;
CODE_0EC46C:        A5 FA         LDA $FA                   ;
CODE_0EC46E:        18            CLC                       ;
CODE_0EC46F:        69 02         ADC #$02                  ;
CODE_0EC471:        85 FA         STA $FA                   ;
CODE_0EC473:        A5 FB         LDA $FB                   ;
CODE_0EC475:        69 00         ADC #$00                  ;
CODE_0EC477:        85 FB         STA $FB                   ;
CODE_0EC479:        9C E8 0E      STZ $0EE8                 ;
CODE_0EC47C:        AB            PLB                       ;
CODE_0EC47D:        6B            RTL                       ;

CODE_0EC47E:        AD 43 07      LDA $0743                 ;
CODE_0EC481:        D0 10         BNE CODE_0EC493           ;
CODE_0EC483:        A5 DB         LDA $DB                   ;
CODE_0EC485:        C9 23         CMP #$23                  ;
CODE_0EC487:        F0 06         BEQ CODE_0EC48F           ;
CODE_0EC489:        C9 22         CMP #$22                  ;
CODE_0EC48B:        F0 06         BEQ CODE_0EC493           ;
CODE_0EC48D:        80 09         BRA CODE_0EC498           ;

CODE_0EC48F:        A5 42         LDA $42                   ;
CODE_0EC491:        D0 05         BNE CODE_0EC498           ;
CODE_0EC493:        A9 01         LDA #$01                  ;
CODE_0EC495:        8D 36 02      STA $0236                 ;
CODE_0EC498:        60            RTS                       ;

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

DATA_0EC4F0:        db $24,$43,$6A,$7D,$99,$D2,$F9,$38
                    db $CF,$D9,$6A,$8F,$B6,$F7,$B2,$D8
                    db $FB,$24,$5A,$71,$9B,$C0,$D7,$00
                    db $F9,$78,$A9,$D1,$F5,$12,$43,$6F
                    db $88,$1C,$00,$B0,$D3,$FA,$DF,$E3
                    db $E3,$00,$FB,$26,$61,$70,$9E,$C3
                    db $E6,$05,$24,$44,$65,$7C,$8C,$28
                    db $4E,$58,$04,$25,$9B,$B5,$72,$3F
                    db $98,$6F,$7D,$E3,$04,$09,$C9

DATA_0EC537:        db $C6,$C6,$C6,$C6,$D3,$D3,$D3,$D4
                    db $E3,$E3,$E6,$E6,$E6,$E6,$C6,$C6
                    db $C6,$C7,$C7,$C7,$C7,$C7,$C7,$C3
                    db $C7,$D4,$D4,$D4,$D4,$D5,$D5,$D5
                    db $D5,$C8,$C3,$D5,$D5,$D5,$E3,$E3
                    db $E3,$C3,$D5,$E7,$E7,$E7,$E7,$E7
                    db $E7,$E8,$E8,$E8,$E8,$E8,$E8,$C8
                    db $C8,$C8,$D6,$D6,$E8,$E8,$C8,$D6
                    db $C8,$D6,$D6,$E3,$E4,$E4,$E8

DATA_0EC57E:        db $3E,$0E,$37,$00

DATA_0EC582:        db $A8,$6A,$90,$92,$92,$F3,$E8,$8F
                    db $1A,$DB,$ED,$C6,$6A,$15,$84,$E7
                    db $3E,$C1,$41,$A3,$32,$97,$12,$16
                    db $75,$06,$EF,$53,$DB,$4B,$D5,$36
                    db $B3,$C4,$20,$2F,$A1,$0B,$60,$76
                    db $77,$01,$0C,$20,$BA,$18,$AB,$0C
                    db $8E,$EE,$6D,$F1,$45,$C0,$F6,$DD
                    db $A2,$DD,$43,$19,$13,$8D,$2B,$61
                    db $EA,$32,$7E,$78,$C4,$19,$EF

DATA_0EC5C9:        db $C8,$C9,$CA,$CB,$D6,$D7,$D8,$DA
                    db $E4,$E4,$E8,$E9,$EB,$ED,$CC,$CC
                    db $CD,$CD,$CE,$CE,$CF,$CF,$D0,$C3
                    db $D0,$DC,$DC,$DD,$DD,$DE,$DE,$DF
                    db $DF,$D0,$C3,$E0,$E0,$E1,$E5,$E5
                    db $E5,$C3,$E1,$EE,$EE,$EF,$EF,$F0
                    db $F0,$F0,$F1,$F1,$F2,$F2,$F2,$D0
                    db $D1,$D1,$E1,$E2,$F3,$F3,$D2,$E2
                    db $D2,$E3,$E3,$E5,$E5,$E6,$F3

DATA_0EC610:        db $76,$50,$65,$50,$75,$B0,$00,$00

CODE_0EC618:        A0 07         LDY #$07                  ;
CODE_0EC61A:        B9 10 C6      LDA DATA_0EC610,y         ;
CODE_0EC61D:        99 64 9F      STA $9F64,y               ; ???
CODE_0EC620:        88            DEY                       ;
CODE_0EC621:        10 F7         BPL CODE_0EC61A           ;
CODE_0EC623:        60            RTS                       ;

DATA_0EC624:        db $35,$9D,$55,$9B,$C9,$1B,$59,$9D ;Note to self: look into this table sometime.
                    db $45,$9B,$C5,$1B,$26,$80,$45,$1B
                    db $B9,$1D,$F0,$15,$59,$9D,$0F,$08
                    db $78,$2D,$96,$28,$90,$B5,$FF,$74
                    db $80,$F0,$38,$A0,$BB,$40,$BC,$8C
                    db $1D,$C9,$9D,$05,$9B,$1C,$0C,$59
                    db $1B,$B5,$1D,$2C,$8C,$40,$15,$7C
                    db $1B,$DC,$1D,$6C,$8C,$BC,$0C,$78
                    db $AD,$A5,$28,$90,$B5,$FF,$0F,$04
                    db $9C,$0C,$0F,$07,$C5,$1B,$65,$9D
                    db $49,$9D,$5C,$8C,$78,$2D,$90,$B5
                    db $FF,$49,$9F,$67,$03,$79,$9D,$A0
                    db $3A,$57,$9F,$BB,$1D,$D5,$25,$0F
                    db $05,$18,$1D,$74,$00,$84,$00,$94
                    db $00,$C6,$29,$49,$9D,$DB,$05,$0F
                    db $08,$05,$9B,$09,$1D,$B0,$38,$80
                    db $95,$C0,$3C,$EC,$A8,$CC,$8C,$4A
                    db $9B,$78,$2D,$90,$B5,$FF,$07,$8E
                    db $47,$03,$0F,$03,$10,$38,$1B,$80
                    db $53,$06,$77,$0E,$83,$83,$A0,$3D
                    db $90,$3B,$90,$B7,$60,$BC,$B7,$0E
                    db $EE,$42,$00,$F7,$80,$6B,$83,$1B
                    db $83,$AB,$06,$FF,$96,$A4,$F9,$24
                    db $D3,$83,$3A,$83,$5A,$03,$95,$07
                    db $F4,$0F,$69,$A8,$33,$87,$86,$24
                    db $C9,$24,$4B,$83,$67,$83,$17,$83
                    db $56,$28,$95,$24,$0A,$A4,$FF,$0F
                    db $02,$47,$0E,$87,$0E,$C7,$0E,$F7
                    db $0E,$27,$8E,$EE,$42,$25,$0F,$06
                    db $AC,$28,$8C,$A8,$4E,$B3,$20,$8B
                    db $8E,$F7,$90,$36,$90,$E5,$8E,$32
                    db $8E,$C2,$06,$D2,$06,$E2,$06,$FF
                    db $15,$8E,$9B,$06,$E0,$37,$80,$BC
                    db $0F,$04,$2B,$3B,$AB,$0E,$EB,$0E
                    db $0F,$06,$F0,$37,$4B,$8E,$6B,$80
                    db $BB,$3C,$4B,$BB,$EE,$42,$20,$1B
                    db $BC,$CB,$00,$AB,$83,$EB,$BB,$0F
                    db $0E,$1B,$03,$9B,$37,$D4,$0E,$A3
                    db $86,$B3,$06,$C3,$06,$FF,$C0,$BE
                    db $0F,$03,$38,$0E,$15,$8F,$AA,$83
                    db $F8,$07,$0F,$07,$96,$10,$0F,$09
                    db $48,$10,$BA,$03,$FF,$87,$85,$A3
                    db $05,$DB,$83,$FB,$03,$93,$8F,$BB
                    db $03,$CE,$42,$42,$9B,$83,$AE,$B3
                    db $40,$DB,$00,$F4,$0F,$33,$8F,$74
                    db $0F,$10,$BC,$F5,$0F,$2E,$C2,$45
                    db $B7,$03,$F7,$03,$C8,$90,$FF,$80
                    db $BE,$83,$03,$92,$10,$4B,$80,$B0
                    db $3C,$07,$80,$B7,$24,$0C,$A4,$96
                    db $A9,$1B,$83,$7B,$24,$B7,$24,$97
                    db $83,$E2,$0F,$A9,$A9,$38,$A9,$0F
                    db $0B,$74,$8F,$FF,$E2,$91,$0F,$03
                    db $42,$11,$0F,$06,$72,$11,$0F,$08
                    db $EE,$02,$60,$02,$91,$EE,$B3,$60
                    db $D3,$86,$FF,$0F,$02,$9B,$02,$AB
                    db $02,$0F,$04,$13,$03,$92,$11,$60
                    db $B7,$00,$BC,$00,$BB,$0B,$83,$CB
                    db $03,$7B,$85,$9E,$C2,$60,$E6,$05
                    db $0F,$0C,$62,$10,$FF,$E6,$A9,$57
                    db $A8,$B5,$24,$19,$A4,$76,$28,$A2
                    db $0F,$95,$8F,$9D,$A8,$0F,$07,$09
                    db $29,$55,$24,$8B,$17,$A9,$24,$DB
                    db $83,$04,$A9,$24,$8F,$65,$0F,$FF
                    db $0A,$AA,$1E,$22,$29,$1E,$25,$49
                    db $2E,$27,$66,$FF,$0A,$8E,$DE,$B4
                    db $00,$E0,$37,$5B,$82,$2B,$A9,$AA
                    db $29,$29,$A9,$A8,$29,$0F,$08,$F0
                    db $3C,$79,$A9,$C5,$26,$CD,$26,$EE
                    db $3B,$01,$67,$B4,$0F,$0C,$2E,$C1
                    db $00,$FF,$09,$A9,$19,$A9,$DE,$42
                    db $02,$7B,$83,$FF,$1E,$A0,$0A,$1E
                    db $23,$2B,$1E,$28,$6B,$0F,$03,$1E
                    db $40,$08,$1E,$25,$4E,$0F,$06,$1E
                    db $22,$25,$1E,$25,$45,$FF,$0F,$01
                    db $2A,$07,$2E,$3B,$41,$E9,$07,$0F
                    db $03,$6B,$07,$F9,$07,$B8,$80,$2A
                    db $87,$4A,$87,$B3,$0F,$84,$87,$47
                    db $83,$87,$07,$0A,$87,$42,$87,$1B
                    db $87,$6B,$03,$FF,$1E,$A7,$6A,$5B
                    db $82,$74,$07,$D8,$07,$E8,$02,$0F
                    db $04,$26,$07,$FF,$9B,$07,$0F,$52
                    db $32,$0F,$63,$32,$0F,$74,$32,$33
                    db $8E,$4F,$10,$34,$4F,$80,$36,$4E
                    db $0A,$7E,$06,$8F,$80,$38,$9F,$80
                    db $36,$9E,$0A,$CE,$06,$DF,$80,$38
                    db $E3,$00,$EF,$80,$36,$EE,$0A,$1E
                    db $87,$2F,$20,$34,$2F,$80,$38,$53
                    db $0E,$8F,$10,$34,$8F,$80,$36,$8E
                    db $02,$9C,$00,$AF,$B0,$38,$C7,$0E
                    db $D7,$37,$57,$8E,$5F,$B0,$36,$6C
                    db $05,$CF,$B0,$38,$DA,$60,$E9,$61
                    db $FF,$A1,$3C,$F8,$62,$FE,$0B,$0F
                    db $20,$B4,$0F,$70,$38,$43,$0E,$C3
                    db $0E,$43,$8E,$B7,$0E,$EE,$09,$EF
                    db $10,$34,$EF,$30,$34,$FE,$0A,$0F
                    db $70,$B6,$3E,$06,$4F,$80,$38,$57
                    db $0E,$6E,$0A,$6F,$80,$36,$7E,$06
                    db $8F,$80,$38,$AE,$0A,$AF,$80,$36
                    db $BE,$06,$CF,$80,$38,$FE,$07,$0F
                    db $20,$B4,$15,$62,$55,$62,$95,$62
                    db $FF,$20,$34,$FF,$80,$36,$FE,$0A
                    db $0D,$C4,$CD,$43,$CE,$09,$DF,$70
                    db $38,$DE,$0B,$DD,$42,$EF,$20,$34
                    db $FF,$A1,$3A,$FF,$20,$34,$FF,$70
                    db $36,$FE,$02,$5D,$C7,$FD,$9B,$07
                    db $0F,$52,$32,$0F,$63,$32,$0F,$74
                    db $32,$03,$E2,$0F,$10,$34,$0E,$06
                    db $1E,$0C,$1F,$71,$3C,$2F,$40,$38
                    db $7E,$0A,$7F,$40,$36,$8E,$05,$9F
                    db $10,$34,$9F,$30,$34,$9F,$50,$34
                    db $9F,$70,$34,$9F,$B0,$38,$8E,$82
                    db $8F,$10,$34,$8F,$30,$34,$8F,$50
                    db $34,$8F,$70,$34,$8A,$8E,$8F,$B0
                    db $36,$8E,$0A,$EE,$02,$FF,$B0,$38
                    db $0A,$E0,$19,$61,$2F,$A1,$3C,$23
                    db $06,$28,$62,$2E,$0B,$3F,$10,$34
                    db $3F,$30,$34,$3F,$70,$38,$7F,$70
                    db $36,$7E,$0A,$8F,$12,$28,$87,$30
                    db $8E,$04,$9F,$B0,$38,$A7,$31,$C7
                    db $0E,$D7,$33,$FE,$03,$03,$8E,$0F
                    db $B0,$36,$0E,$0A,$1F,$12,$28,$1E
                    db $04,$2F,$B0,$38,$27,$32,$4E,$0A
                    db $4F,$B0,$36,$57,$0E,$5F,$12,$28
                    db $5E,$04,$6F,$B0,$38,$67,$34,$9F
                    db $B0,$36,$9E,$0A,$AF,$12,$28,$AE
                    db $03,$B3,$0E,$BF,$A1,$3C,$BF,$B0
                    db $38,$BE,$0B,$CF,$70,$38,$EE,$09
                    db $EF,$10,$34,$EF,$30,$34,$FF,$70
                    db $36,$FE,$0A,$2E,$82,$3F,$B0,$38
                    db $7A,$0E,$7F,$B0,$36,$7E,$0A,$97
                    db $31,$BE,$04,$CF,$20,$34,$CF,$B0
                    db $38,$DA,$0E,$EE,$0A,$EF,$B0,$36
                    db $FF,$12,$28,$FF,$20,$34,$FE,$02
                    db $0F,$B0,$B8,$3F,$B0,$36,$3E,$0A
                    db $7E,$06,$8F,$80,$38,$AF,$80,$36
                    db $AE,$0A,$CE,$06,$DF,$80,$38,$FF
                    db $80,$36,$FE,$0A,$0D,$C4,$11,$53
                    db $21,$52,$24,$0B,$51,$52,$61,$52
                    db $CD,$43,$CE,$09,$DF,$70,$38,$DD
                    db $42,$DE,$0B,$EF,$20,$34,$FF,$20
                    db $34,$FF,$A1,$3A,$FF,$70,$36,$FE
                    db $02,$5D,$C7,$FD,$5B,$06,$0F,$54
                    db $32,$0F,$65,$32,$0F,$76,$32,$7E
                    db $0A,$7F,$80,$36,$AE,$02,$BF,$B0
                    db $38,$FE,$02,$0D,$01,$14,$63,$24
                    db $63,$2F,$B0,$36,$2E,$0A,$6E,$09
                    db $7F,$70,$38,$BF,$70,$36,$BE,$0A
                    db $ED,$4B,$E4,$30,$EE,$02,$F3,$64
                    db $FF,$B0,$38,$03,$E4,$13,$64,$23
                    db $64,$33,$64,$43,$64,$53,$64,$5E
                    db $02,$78,$72,$A4,$3D,$A5,$3E,$A6
                    db $3F,$A3,$BE,$A6,$3E,$A9,$32,$E9
                    db $3A,$8F,$B0,$B6,$8E,$0A,$AE,$02
                    db $AF,$B0,$38,$A3,$33,$A6,$33,$A9
                    db $33,$E5,$06,$ED,$4B,$F3,$30,$F6
                    db $30,$F9,$30,$FE,$02,$0D,$05,$2F
                    db $B0,$36,$3C,$01,$57,$73,$5F,$B0
                    db $38,$6F,$B0,$36,$7C,$02,$93,$30
                    db $A7,$73,$AF,$B0,$38,$BF,$B0,$36
                    db $B3,$37,$CC,$01,$EF,$B0,$38,$07
                    db $83,$17,$03,$27,$03,$37,$03,$64
                    db $3B,$77,$3A,$FF,$B0,$36,$0C,$80
                    db $1F,$B0,$38,$34,$36,$35,$37,$36
                    db $38,$37,$38,$9E,$02,$BF,$B0,$36
                    db $CC,$02,$C3,$33,$ED,$4B,$FF,$B0
                    db $38,$03,$B7,$07,$37,$83,$37,$87
                    db $37,$DD,$4B,$03,$B5,$07,$35,$5F
                    db $B0,$36,$5E,$0A,$8E,$02,$9F,$B0
                    db $38,$AF,$B0,$36,$AE,$0A,$DE,$06
                    db $EF,$80,$38,$FF,$80,$36,$FE,$0A
                    db $0D,$C4,$CD,$43,$CE,$09,$DD,$42
                    db $DE,$0B,$DF,$70,$38,$EF,$20,$34
                    db $FF,$20,$34,$FF,$A1,$3A,$FF,$70
                    db $36,$FE,$02,$5D,$C7,$FD,$9B,$07
                    db $0F,$52,$32,$0F,$63,$32,$0F,$74
                    db $32,$4F,$80,$36,$4E,$03,$5C,$02
                    db $8F,$B0,$38,$0C,$F1,$27,$00,$3C
                    db $74,$47,$0E,$EF,$B0,$36,$FC,$00
                    db $FE,$0B,$0F,$70,$B8,$77,$0E,$EE
                    db $09,$EF,$10,$34,$EF,$30,$34,$FF
                    db $70,$36,$FE,$0A,$45,$B2,$55,$0E
                    db $99,$32,$B9,$0E,$FE,$02,$0E,$85
                    db $0F,$B0,$38,$1F,$10,$34,$1F,$30
                    db $34,$1F,$50,$34,$1F,$70,$34,$FF
                    db $20,$34,$FF,$40,$34,$FF,$60,$34
                    db $FE,$02,$16,$8E,$2E,$0C,$2F,$A1
                    db $3C,$3F,$40,$38,$AF,$40,$36,$AE
                    db $0A,$EE,$05,$FF,$10,$34,$FF,$30
                    db $34,$FF,$50,$34,$FF,$70,$34,$FF
                    db $B0,$38,$1E,$82,$1F,$20,$34,$1F
                    db $40,$34,$1F,$60,$34,$47,$0E,$07
                    db $BD,$C4,$72,$DE,$0A,$DF,$B0,$36
                    db $FE,$02,$03,$8E,$07,$0E,$0F,$B0
                    db $38,$13,$3C,$17,$3D,$E3,$03,$EE
                    db $0A,$EF,$B0,$36,$F3,$06,$F7,$03
                    db $FE,$02,$04,$BE,$05,$3E,$06,$3E
                    db $07,$3E,$0F,$B0,$38,$FE,$0A,$F4
                    db $63,$FF,$B0,$36,$38,$E4,$4A,$72
                    db $68,$64,$37,$B0,$9F,$80,$38,$AF
                    db $80,$36,$EF,$80,$38,$FF,$80,$36
                    db $0D,$C4,$71,$64,$CD,$43,$CE,$09
                    db $DD,$42,$DE,$0B,$DF,$70,$38,$EF
                    db $20,$34,$FF,$20,$34,$FF,$A1,$3A
                    db $FF,$70,$36,$FE,$02,$5D,$C7,$FD
                    db $50,$31,$0F,$F6,$20,$13,$E4,$23
                    db $24,$27,$23,$37,$07,$66,$61,$AC
                    db $74,$C7,$01,$0B,$F1,$77,$73,$B6
                    db $04,$DB,$71,$5C,$82,$83,$2D,$A2
                    db $47,$A7,$0A,$B7,$29,$4F,$F3,$B0
                    db $4E,$01,$5E,$31,$87,$0B,$93,$23
                    db $CC,$06,$E3,$2C,$3A,$E0,$7C,$71
                    db $97,$01,$AC,$73,$E6,$61,$0E,$B1
                    db $B7,$F3,$DC,$02,$D3,$25,$07,$FB
                    db $2C,$01,$E7,$73,$2C,$F2,$34,$72
                    db $57,$00,$7C,$02,$39,$F1,$BF,$F7
                    db $30,$33,$E7,$CD,$41,$0F,$F6,$A0
                    db $ED,$47,$FD,$50,$11,$0F,$F6,$20
                    db $FE,$10,$47,$92,$56,$40,$AC,$16
                    db $AF,$F2,$10,$0F,$F5,$90,$73,$16
                    db $82,$44,$EC,$48,$BC,$C2,$1C,$B1
                    db $B3,$16,$C2,$44,$86,$C0,$9C,$14
                    db $9F,$F2,$10,$A6,$40,$DF,$F5,$10
                    db $0B,$96,$43,$12,$97,$31,$D3,$12
                    db $03,$92,$27,$14,$63,$00,$C7,$15
                    db $D6,$43,$AC,$97,$AF,$F1,$10,$1F
                    db $F6,$90,$64,$13,$E3,$12,$2E,$91
                    db $9D,$41,$AE,$42,$BF,$F0,$20,$AD
                    db $C7,$FD,$52,$21,$0F,$F0,$20,$6E
                    db $64,$4F,$F2,$B0,$7C,$5F,$7C,$3F
                    db $6F,$F1,$A4,$7C,$58,$7C,$38,$83
                    db $02,$A3,$00,$C3,$02,$F7,$16,$5C
                    db $D6,$CF,$F5,$30,$D3,$20,$E3,$0A
                    db $F3,$20,$25,$B5,$2C,$53,$6A,$7A
                    db $8C,$54,$DA,$72,$FC,$50,$0C,$D2
                    db $39,$73,$5C,$54,$AA,$72,$CC,$53
                    db $F7,$16,$33,$83,$40,$06,$5C,$5B
                    db $09,$93,$27,$0F,$3C,$5C,$0A,$B0
                    db $63,$27,$78,$72,$93,$09,$97,$03
                    db $A7,$03,$B7,$22,$47,$81,$5C,$72
                    db $2A,$B0,$28,$0F,$3C,$5F,$58,$31
                    db $B8,$31,$28,$B1,$3C,$5B,$98,$31
                    db $FA,$30,$03,$B2,$20,$04,$7F,$F7
                    db $B0,$F3,$67,$8D,$C1,$8E,$01,$CF
                    db $F6,$20,$BD,$C7,$FD,$54,$11,$0F
                    db $F6,$20,$38,$F2,$AB,$71,$0B,$F1
                    db $96,$42,$CE,$10,$1E,$91,$29,$61
                    db $3A,$60,$4E,$10,$78,$74,$8E,$11
                    db $06,$C3,$1A,$E0,$1E,$10,$5E,$11
                    db $67,$63,$77,$63,$88,$62,$99,$61
                    db $AA,$60,$BE,$10,$0A,$F2,$15,$45
                    db $7E,$11,$7A,$31,$9A,$E0,$AC,$02
                    db $D9,$61,$D4,$0A,$EC,$01,$D6,$C2
                    db $84,$C3,$98,$FA,$D3,$07,$D7,$0B
                    db $E9,$61,$EE,$10,$2E,$91,$39,$71
                    db $93,$03,$A6,$03,$BE,$10,$E1,$71
                    db $E3,$31,$5E,$91,$69,$61,$E6,$41
                    db $28,$E2,$99,$71,$AE,$10,$CE,$11
                    db $BE,$90,$D6,$32,$3E,$91,$5F,$F7
                    db $30,$66,$60,$D3,$67,$6D,$C1,$AF
                    db $F6,$20,$9D,$C7,$FD,$54,$11,$0F
                    db $F6,$20,$AF,$F2,$30,$D8,$62,$E8
                    db $62,$F8,$62,$FE,$10,$0C,$BE,$F8
                    db $64,$0D,$C8,$2C,$43,$98,$64,$AC
                    db $39,$48,$E4,$6A,$62,$7C,$47,$FA
                    db $62,$3C,$B7,$EA,$62,$FC,$4D,$F6
                    db $02,$03,$80,$06,$02,$13,$02,$DA
                    db $62,$0D,$C8,$0B,$17,$97,$16,$2C
                    db $B1,$33,$43,$6C,$31,$AC,$31,$17
                    db $93,$73,$12,$CC,$31,$1A,$E2,$2C
                    db $4B,$67,$48,$EA,$62,$0D,$CA,$17
                    db $12,$53,$12,$BE,$11,$1D,$C1,$3E
                    db $42,$3F,$F0,$20,$1D,$C7,$FD,$52
                    db $B1,$0F,$F0,$20,$6E,$75,$53,$AA
                    db $57,$25,$B7,$0A,$C7,$23,$0C,$83
                    db $5C,$72,$87,$01,$C3,$00,$C7,$20
                    db $DC,$65,$0C,$87,$C3,$22,$F3,$03
                    db $03,$A2,$27,$7B,$33,$03,$43,$23
                    db $52,$42,$9C,$06,$A7,$20,$C3,$23
                    db $03,$A2,$0C,$02,$33,$09,$39,$71
                    db $43,$23,$77,$06,$83,$67,$A7,$73
                    db $5C,$82,$AE,$01,$C9,$11,$DE,$31
                    db $07,$80,$1C,$71,$7E,$01,$98,$11
                    db $9A,$10,$F3,$04,$16,$F4,$3C,$02
                    db $68,$7A,$8C,$01,$A7,$73,$DE,$31
                    db $E7,$73,$AC,$83,$09,$8F,$1C,$03
                    db $9F,$F7,$30,$13,$E7,$7C,$02,$AD
                    db $41,$EF,$F6,$20,$0D,$0E,$39,$71
                    db $7F,$F7,$30,$F2,$68,$02,$E8,$12
                    db $3A,$1C,$00,$68,$7A,$E0,$6A,$F0
                    db $6A,$00,$6A,$6D,$C5,$FD,$55,$10
                    db $0B,$1F,$0F,$F6,$20,$D6,$12,$07
                    db $9F,$33,$1A,$FB,$1F,$F7,$94,$53
                    db $94,$71,$71,$CC,$15,$CF,$F3,$10
                    db $1F,$F8,$90,$63,$12,$9B,$13,$A9
                    db $71,$FB,$17,$09,$F1,$13,$13,$21
                    db $42,$59,$0F,$EB,$13,$33,$93,$40
                    db $06,$8C,$14,$8F,$F7,$10,$93,$40
                    db $CF,$F3,$10,$0B,$94,$57,$15,$07
                    db $93,$19,$F3,$C6,$43,$C7,$13,$D3
                    db $03,$E3,$03,$33,$B0,$4A,$72,$55
                    db $46,$73,$31,$A8,$74,$E3,$12,$8E
                    db $91,$AD,$41,$CE,$42,$CF,$F0,$20
                    db $BD,$C7,$FD,$52,$21,$0F,$F0,$20
                    db $6E,$63,$A9,$F1,$FB,$71,$22,$83
                    db $37,$0B,$36,$50,$39,$51,$B8,$62
                    db $57,$F3,$E8,$02,$F8,$02,$08,$82
                    db $18,$02,$2D,$4A,$28,$02,$38,$02
                    db $48,$00,$A8,$0F,$AA,$30,$BC,$5A
                    db $6A,$B0,$4F,$F6,$B0,$B7,$04,$9A
                    db $B0,$AC,$71,$C7,$01,$E6,$74,$0D
                    db $09,$46,$02,$56,$00,$6C,$01,$84
                    db $79,$86,$02,$96,$02,$A4,$71,$A6
                    db $02,$B6,$02,$C4,$71,$C6,$02,$D6
                    db $02,$39,$F1,$6C,$00,$77,$02,$A3
                    db $09,$AC,$00,$B8,$72,$DC,$01,$07
                    db $F3,$4C,$00,$6F,$F7,$30,$E3,$03
                    db $E6,$03,$5D,$CA,$6C,$00,$7D,$41
                    db $BF,$F6,$20,$8D,$C7,$FD,$50,$A1
                    db $0F,$F6,$20,$17,$91,$19,$11,$48
                    db $00,$68,$11,$6A,$10,$96,$14,$D8
                    db $0A,$E8,$02,$F8,$02,$DC,$81,$6C
                    db $81,$89,$0F,$9C,$00,$C3,$29,$F8
                    db $62,$47,$A7,$C6,$61,$0D,$07,$56
                    db $74,$B7,$00,$B9,$11,$CC,$76,$ED
                    db $4A,$1C,$80,$37,$01,$3A,$10,$DE
                    db $20,$E9,$0B,$EE,$21,$C8,$BC,$9C
                    db $F6,$BC,$00,$CB,$7A,$EB,$72,$0C
                    db $82,$39,$71,$B7,$63,$CC,$03,$E6
                    db $60,$26,$E0,$4A,$30,$53,$31,$5C
                    db $58,$ED,$41,$2F,$F6,$A0,$1D,$C7
                    db $FD,$50,$11,$0F,$F6,$20,$FE,$10
                    db $8B,$93,$A9,$0F,$14,$C1,$CC,$16
                    db $CF,$F1,$10,$2F,$F5,$90,$B7,$14
                    db $C7,$96,$D6,$44,$2B,$92,$39,$0F
                    db $72,$41,$A7,$00,$1B,$95,$97,$13
                    db $6C,$95,$6F,$F1,$10,$A2,$40,$BF
                    db $F5,$10,$C2,$40,$0B,$9F,$53,$16
                    db $62,$44,$72,$C2,$9B,$1D,$B7,$E0
                    db $ED,$4A,$03,$E0,$8E,$11,$9D,$41
                    db $BE,$42,$BF,$F0,$20,$9D,$C7,$FD
                    db $00,$C1,$4C,$00,$03,$CF,$00,$D7
                    db $23,$4D,$07,$AF,$2A,$4C,$03,$CF
                    db $3E,$80,$F3,$4A,$BB,$C2,$BD,$C7
                    db $FD,$48,$0F,$0E,$01,$5E,$02,$0A
                    db $B0,$1C,$04,$6A,$30,$7F,$F4,$30
                    db $C6,$64,$D6,$64,$E6,$64,$F6,$64
                    db $FE,$00,$F0,$07,$00,$A1,$1E,$02
                    db $47,$73,$7E,$04,$84,$52,$94,$50
                    db $95,$0B,$96,$50,$A4,$52,$AE,$05
                    db $B8,$51,$C8,$51,$CE,$01,$17,$F3
                    db $45,$03,$52,$09,$62,$21,$6F,$F4
                    db $30,$81,$21,$9E,$02,$B6,$64,$C6
                    db $64,$C0,$0C,$D6,$64,$D0,$07,$E6
                    db $64,$E0,$0C,$F0,$07,$FE,$0A,$0D
                    db $06,$0E,$01,$4E,$04,$67,$73,$8E
                    db $02,$B7,$0A,$BC,$03,$C4,$72,$C7
                    db $22,$08,$F2,$2C,$02,$59,$71,$7C
                    db $01,$96,$74,$BC,$01,$D8,$72,$FC
                    db $01,$39,$F1,$4E,$01,$9E,$04,$A7
                    db $52,$B7,$0B,$B8,$51,$C7,$51,$D7
                    db $50,$DE,$02,$3A,$E0,$3E,$0A,$9E
                    db $00,$08,$D4,$18,$54,$28,$54,$48
                    db $54,$6E,$06,$9E,$01,$A8,$52,$AF
                    db $F7,$40,$B8,$52,$C8,$52,$D8,$52
                    db $DE,$0F,$4D,$C7,$CE,$01,$DC,$01
                    db $F9,$79,$1C,$82,$48,$72,$7F,$F7
                    db $30,$F2,$68,$01,$E9,$11,$3A,$68
                    db $7A,$DE,$0F,$6D,$C5,$FD,$0B,$0F
                    db $0E,$01,$9C,$71,$B7,$00,$BE,$00
                    db $3E,$81,$47,$73,$5E,$00,$63,$42
                    db $8E,$01,$A7,$73,$BE,$00,$7E,$81
                    db $88,$72,$F0,$59,$FE,$00,$00,$D9
                    db $0E,$01,$39,$79,$A7,$03,$AE,$00
                    db $B4,$03,$DE,$0F,$0D,$05,$0E,$02
                    db $68,$7A,$BE,$01,$DE,$0F,$6D,$C5
                    db $FD,$08,$8F,$0E,$01,$17,$05,$2E
                    db $02,$30,$07,$37,$03,$3A,$49,$44
                    db $03,$58,$47,$DF,$FA,$40,$6D,$C7
                    db $0E,$81,$00,$5A,$2E,$02,$87,$52
                    db $97,$2F,$99,$4F,$0A,$90,$93,$56
                    db $A3,$0B,$A7,$50,$B3,$55,$DF,$FA
                    db $40,$6D,$C7,$0E,$81,$00,$5A,$2E
                    db $00,$3E,$02,$41,$56,$57,$25,$56
                    db $45,$68,$51,$7A,$43,$B7,$0B,$B8
                    db $51,$DF,$FA,$40,$6D,$C7,$FD,$41
                    db $01,$03,$B4,$04,$34,$05,$34,$5C
                    db $02,$83,$37,$84,$37,$85,$37,$09
                    db $C2,$0C,$02,$1D,$49,$FA,$60,$09
                    db $E1,$18,$62,$20,$63,$27,$63,$33
                    db $37,$37,$63,$47,$63,$5C,$05,$79
                    db $43,$00,$BF,$08,$3F,$09,$3F,$0A
                    db $3F,$35,$52,$46,$48,$91,$53,$D6
                    db $51,$FE,$01,$0C,$83,$6C,$04,$B4
                    db $62,$C4,$62,$D4,$62,$E4,$62,$F4
                    db $62,$18,$D2,$79,$51,$F4,$66,$00
                    db $BF,$0C,$0A,$1D,$49,$31,$55,$56
                    db $41,$77,$41,$98,$41,$C5,$55,$07
                    db $E3,$17,$63,$27,$63,$37,$63,$47
                    db $63,$57,$63,$67,$63,$78,$62,$89
                    db $61,$9A,$60,$BC,$07,$CA,$42,$3A
                    db $B3,$46,$53,$63,$34,$66,$44,$7C
                    db $01,$9A,$33,$B7,$52,$DC,$01,$FA
                    db $32,$05,$D4,$2C,$0D,$43,$37,$47
                    db $35,$B7,$30,$C3,$64,$23,$E4,$29
                    db $45,$33,$64,$43,$64,$53,$64,$63
                    db $64,$73,$64,$9A,$60,$A9,$61,$B8
                    db $62,$C0,$63,$C7,$63,$D0,$64,$D5
                    db $0D,$D7,$63,$E0,$6A,$F0,$6A,$00
                    db $EA,$0D,$4A,$7D,$47,$FD,$01,$01
                    db $78,$52,$B5,$55,$DA,$60,$E9,$61
                    db $F8,$62,$00,$E3,$07,$63,$10,$63
                    db $17,$63,$20,$63,$27,$63,$30,$63
                    db $37,$63,$40,$63,$47,$63,$50,$63
                    db $57,$63,$60,$63,$67,$63,$70,$63
                    db $77,$63,$80,$63,$87,$63,$90,$63
                    db $97,$63,$A0,$63,$A7,$63,$B0,$63
                    db $B7,$63,$C0,$63,$C7,$63,$D0,$63
                    db $D7,$63,$E0,$63,$E7,$63,$F0,$63
                    db $F7,$63,$0A,$CF,$36,$49,$62,$43
                    db $00,$E2,$08,$62,$10,$62,$18,$62
                    db $20,$62,$28,$62,$30,$62,$38,$62
                    db $36,$49,$40,$62,$48,$62,$50,$62
                    db $58,$62,$60,$62,$68,$62,$70,$62
                    db $78,$62,$80,$62,$88,$62,$90,$62
                    db $98,$62,$A0,$62,$A8,$62,$B0,$62
                    db $B8,$62,$C0,$62,$C8,$62,$D0,$62
                    db $D8,$62,$E0,$62,$E8,$62,$F0,$62
                    db $F8,$62,$0C,$84,$65,$55,$97,$52
                    db $9A,$32,$A9,$31,$B8,$30,$C7,$63
                    db $D0,$6A,$D5,$0D,$E0,$6A,$F0,$6A
                    db $00,$EA,$7D,$47,$FD,$2A,$A9,$6B
                    db $0C,$CB,$0C,$15,$9C,$89,$1C,$CC
                    db $1D,$09,$9D,$F5,$1C,$6B,$A9,$AB
                    db $0C,$DB,$29,$48,$9D,$9B,$0C,$5B
                    db $8C,$A5,$1C,$49,$9D,$79,$1D,$09
                    db $9D,$6B,$0C,$C9,$1F,$3B,$8C,$88
                    db $95,$B9,$1C,$19,$9D,$30,$CC,$78
                    db $2D,$A6,$28,$90,$B5,$FF,$0F,$02
                    db $09,$1F,$8B,$85,$2B,$8C,$E9,$1B
                    db $25,$9D,$0F,$07,$09,$1D,$6D,$28
                    db $99,$1B,$B5,$2C,$4B,$8C,$09,$9F
                    db $FB,$15,$9D,$A8,$0F,$0C,$2B,$0C
                    db $78,$2D,$90,$B5,$FF,$05,$9D,$0D
                    db $A8,$DD,$1D,$07,$AC,$54,$2C,$A2
                    db $2C,$F4,$2C,$42,$AC,$26,$9D,$D4
                    db $03,$24,$83,$64,$03,$2B,$82,$4B
                    db $02,$7B,$02,$9B,$02,$5B,$82,$7B
                    db $02,$0B,$82,$2B,$02,$C6,$1B,$28
                    db $82,$48,$02,$A6,$1B,$7B,$95,$85
                    db $0C,$9D,$9B,$0F,$0E,$78,$2D,$7A
                    db $1D,$90,$B5,$FF,$19,$9B,$99,$1B
                    db $2C,$8C,$59,$1B,$C5,$0F,$0E,$83
                    db $E0,$0F,$06,$2E,$67,$E7,$0F,$08
                    db $9B,$07,$0E,$83,$E0,$39,$0E,$87
                    db $10,$BD,$28,$59,$9F,$0F,$0F,$34
                    db $0F,$77,$10,$9E,$67,$F1,$0F,$12
                    db $0E,$67,$E3,$78,$2D,$0F,$15,$3B
                    db $29,$57,$82,$0F,$18,$55,$1D,$78
                    db $2D,$D0,$B5,$FF,$1B,$82,$4B,$02
                    db $7B,$02,$AB,$02,$0F,$03,$F9,$0E
                    db $D0,$BE,$8E,$C4,$86,$F8,$0E,$C0
                    db $BA,$0F,$0D,$3A,$0E,$BB,$02,$30
                    db $B7,$80,$BC,$C0,$BC,$0F,$12,$24
                    db $0F,$54,$0F,$CE,$3C,$80,$D3,$0F
                    db $CB,$8E,$F9,$0E,$FF,$0A,$AA,$15
                    db $8F,$44,$0F,$4E,$44,$80,$D8,$07
                    db $57,$90,$0F,$06,$67,$24,$8B,$17
                    db $B9,$24,$AB,$97,$16,$87,$2A,$28
                    db $84,$0F,$57,$A9,$A5,$29,$F5,$29
                    db $A7,$A4,$0A,$A4,$FF,$07,$82,$67
                    db $0E,$40,$BD,$E0,$38,$D0,$BC,$6E
                    db $84,$A0,$9B,$05,$0F,$06,$BB,$05
                    db $0F,$08,$0B,$0E,$4B,$0E,$0F,$0A
                    db $05,$29,$85,$29,$0F,$0C,$DD,$28
                    db $FF,$0F,$02,$28,$10,$E6,$03,$D8
                    db $90,$0F,$05,$85,$0F,$78,$83,$C8
                    db $10,$18,$83,$58,$83,$F7,$90,$0F
                    db $0C,$43,$0F,$73,$8F,$FF,$A7,$83
                    db $D7,$03,$0F,$03,$6B,$00,$0F,$06
                    db $E3,$0F,$14,$8F,$3E,$44,$C3,$0B
                    db $80,$87,$05,$AB,$05,$DB,$83,$0F
                    db $0B,$07,$05,$13,$0E,$2B,$02,$4B
                    db $02,$0F,$10,$0B,$0E,$B0,$37,$90
                    db $BC,$80,$BC,$AE,$44,$C0,$FF,$0A
                    db $AA,$D5,$8F,$03,$8F,$3E,$44,$C6
                    db $D8,$83,$0F,$06,$A6,$11,$B9,$0E
                    db $39,$9D,$79,$1B,$A6,$11,$E8,$03
                    db $87,$83,$16,$90,$A6,$11,$B9,$1D
                    db $05,$8F,$38,$29,$89,$29,$26,$8F
                    db $46,$29,$FF,$0F,$04,$A3,$10,$0F
                    db $09,$E3,$29,$0F,$0D,$55,$24,$A9
                    db $24,$0F,$11,$59,$1D,$A9,$1B,$23
                    db $8F,$15,$9B,$FF,$0F,$01,$DB,$02
                    db $30,$B7,$80,$3B,$1B,$8E,$4A,$0E
                    db $EB,$03,$3B,$82,$5B,$02,$E5,$0F
                    db $14,$8F,$44,$0F,$5B,$82,$0C,$85
                    db $35,$8F,$06,$85,$E3,$05,$DB,$83
                    db $3E,$84,$E0,$FF,$0F,$02,$0A,$29
                    db $F7,$02,$80,$BC,$6B,$82,$7B,$02
                    db $9B,$02,$AB,$02,$39,$8E,$0F,$07
                    db $CE,$35,$EC,$F5,$0F,$FB,$85,$FB
                    db $85,$3E,$C4,$E3,$A7,$02,$FF,$09
                    db $A9,$86,$11,$D5,$10,$A3,$8F,$D5
                    db $29,$86,$91,$2B,$83,$58,$03,$5B
                    db $85,$EB,$05,$3E,$BC,$E0,$0F,$09
                    db $43,$0F,$74,$0F,$6B,$85,$DB,$05
                    db $C6,$A4,$19,$A4,$12,$8F,$FF,$0A
                    db $AA,$2E,$2B,$98,$2E,$36,$E7,$FF
                    db $0B,$83,$B7,$03,$D7,$03,$0F,$05
                    db $67,$03,$7B,$02,$9B,$02,$80,$B9
                    db $3B,$83,$4E,$B4,$80,$86,$2B,$C9
                    db $2C,$16,$AC,$67,$B4,$DE,$3B,$81
                    db $FF,$1E,$AF,$CA,$1E,$2C,$85,$0F
                    db $04,$1E,$2D,$A7,$1E,$2F,$CE,$1E
                    db $35,$E5,$0F,$07,$1E,$2B,$87,$1E
                    db $30,$C5,$FF,$0F,$01,$2E,$3B,$A1
                    db $5B,$07,$AB,$07,$69,$87,$BA,$07
                    db $FB,$87,$65,$A7,$6A,$27,$A6,$A7
                    db $AC,$27,$1B,$87,$88,$07,$2B,$83
                    db $7B,$07,$A7,$90,$E5,$83,$14,$A7
                    db $19,$27,$77,$07,$F8,$07,$47,$8F
                    db $B9,$07,$FF,$07,$9B,$0A,$07,$B9
                    db $1B,$66,$9B,$78,$07,$AE,$67,$E5
                    db $FF,$97,$87,$CB,$00,$EE,$2B,$F8
                    db $FE,$2D,$AD,$75,$87,$D3,$27,$D9
                    db $27,$0F,$04,$56,$0F,$FF,$9B,$09
                    db $0F,$52,$32,$0F,$63,$32,$0F,$11
                    db $28,$1F,$11,$28,$2F,$11,$28,$3F
                    db $11,$28,$3E,$03,$3F,$70,$36,$4C
                    db $50,$4E,$07,$5F,$70,$38,$6F,$70
                    db $36,$6E,$03,$7C,$52,$9E,$07,$AF
                    db $80,$38,$FE,$0A,$FF,$20,$34,$FF
                    db $80,$36,$7E,$89,$8F,$70,$38,$9F
                    db $70,$36,$9E,$0A,$EE,$09,$FF,$70
                    db $38,$FE,$0B,$0F,$20,$B4,$1F,$20
                    db $34,$13,$0E,$1E,$09,$3F,$70,$36
                    db $3E,$0A,$6E,$09,$7F,$70,$38,$87
                    db $0E,$9F,$A1,$3A,$9F,$70,$36,$9E
                    db $02,$C6,$07,$CA,$0E,$F7,$62,$07
                    db $8E,$08,$61,$1F,$B0,$36,$17,$62
                    db $1E,$0A,$4E,$06,$5E,$0A,$58,$64
                    db $7E,$06,$88,$64,$8E,$0A,$AE,$06
                    db $BF,$80,$38,$BE,$07,$CF,$20,$34
                    db $F3,$0E,$1E,$86,$1F,$20,$34,$2F
                    db $80,$36,$2E,$0A,$84,$37,$93,$36
                    db $A2,$45,$1E,$89,$2F,$70,$38,$46
                    db $0E,$6E,$0A,$6F,$70,$36,$A7,$31
                    db $DB,$61,$F7,$60,$1B,$E1,$37,$31
                    db $7E,$09,$8E,$0B,$8F,$70,$38,$9F
                    db $10,$34,$9F,$30,$34,$A3,$0E,$FF
                    db $A1,$3A,$FF,$70,$36,$FE,$04,$17
                    db $BB,$47,$0E,$77,$0E,$BE,$02,$BF
                    db $20,$34,$CF,$B0,$36,$CE,$0A,$07
                    db $8E,$17,$31,$63,$31,$A7,$34,$C7
                    db $0E,$13,$B1,$4E,$09,$5F,$70,$38
                    db $1E,$8A,$1F,$70,$36,$7E,$02,$8F
                    db $B0,$38,$97,$34,$B7,$0E,$CF,$B0
                    db $36,$CE,$0A,$DE,$02,$D8,$61,$EF
                    db $B0,$38,$F7,$62,$FE,$03,$0F,$20
                    db $B4,$07,$34,$17,$0E,$47,$62,$4F
                    db $B0,$36,$4E,$0A,$5E,$03,$5F,$11
                    db $28,$67,$62,$6F,$B0,$38,$77,$34
                    db $B7,$62,$CF,$11,$28,$DA,$60,$E9
                    db $61,$F8,$62,$FF,$B0,$36,$FF,$20
                    db $34,$FE,$0A,$0D,$C4,$01,$52,$11
                    db $52,$21,$52,$31,$52,$41,$52,$51
                    db $52,$61,$52,$CD,$43,$CE,$09,$DE
                    db $0B,$DD,$42,$DF,$70,$38,$EF,$20
                    db $34,$FF,$20,$34,$FF,$A1,$3A,$FF
                    db $70,$36,$FE,$02,$5D,$C7,$FD,$5B
                    db $09,$0F,$52,$32,$0F,$63,$32,$4F
                    db $70,$36,$4E,$0A,$87,$31,$FE,$02
                    db $0F,$B0,$B8,$88,$72,$C7,$33,$0D
                    db $02,$07,$0E,$17,$34,$6E,$0A,$6F
                    db $B0,$36,$8E,$02,$9F,$B0,$38,$BF
                    db $F7,$60,$ED,$4B,$B7,$B6,$C3,$35
                    db $1E,$8A,$1F,$B0,$36,$2E,$02,$3F
                    db $B0,$38,$33,$3F,$37,$3F,$88,$F2
                    db $C7,$33,$ED,$4B,$0D,$06,$03,$33
                    db $0F,$F4,$70,$47,$73,$67,$73,$7F
                    db $B0,$36,$87,$65,$97,$65,$9E,$0A
                    db $ED,$4B,$F7,$32,$07,$8E,$97,$0E
                    db $AE,$00,$DE,$02,$EF,$00,$34,$EF
                    db $B0,$38,$E3,$35,$E7,$35,$3E,$8A
                    db $3F,$B0,$36,$4E,$02,$5F,$B0,$38
                    db $53,$3E,$57,$3E,$07,$8E,$A7,$34
                    db $BF,$F3,$60,$ED,$4B,$2E,$8A,$2F
                    db $B0,$36,$FE,$06,$0F,$80,$B8,$2E
                    db $08,$3F,$41,$28,$3F,$10,$34,$3F
                    db $30,$34,$3F,$50,$34,$4F,$41,$28
                    db $5F,$41,$28,$6F,$41,$28,$6F,$10
                    db $34,$6F,$30,$34,$6F,$50,$34,$6E
                    db $06,$8F,$71,$3C,$8E,$0C,$9F,$40
                    db $38,$BF,$71,$3A,$BF,$40,$36,$BE
                    db $06,$FF,$80,$36,$FE,$0A,$01,$D2
                    db $0D,$44,$11,$52,$21,$52,$31,$52
                    db $41,$52,$42,$0B,$51,$52,$61,$52
                    db $CD,$43,$CE,$09,$DD,$42,$DE,$0B
                    db $DF,$70,$38,$EF,$20,$34,$FF,$20
                    db $34,$FF,$A1,$3A,$FF,$70,$36,$FE
                    db $02,$5D,$C7,$FD,$58,$09,$0F,$55
                    db $32,$0F,$6D,$32,$0F,$11,$28,$1F
                    db $11,$28,$2F,$11,$28,$3F,$11,$28
                    db $4F,$11,$28,$5F,$11,$28,$6F,$11
                    db $28,$7F,$11,$28,$8F,$11,$28,$9F
                    db $11,$28,$AF,$11,$28,$BF,$11,$28
                    db $BF,$20,$34,$DE,$0C,$EF,$60,$3C
                    db $EF,$40,$38,$F3,$3D,$03,$8E,$6E
                    db $43,$CE,$0A,$CF,$40,$36,$EF,$17
                    db $28,$EF,$20,$34,$EF,$80,$34,$FF
                    db $17,$28,$0F,$17,$A8,$1F,$17,$28
                    db $1E,$05,$2F,$80,$28,$2F,$B0,$38
                    db $3F,$80,$28,$4F,$80,$28,$5F,$80
                    db $28,$6F,$80,$28,$6E,$40,$7F,$80
                    db $28,$8F,$80,$28,$9F,$80,$28,$AF
                    db $80,$28,$BE,$01,$BF,$00,$34,$BF
                    db $80,$34,$C7,$06,$DB,$0E,$DE,$00
                    db $1F,$F0,$80,$6F,$F0,$00,$BF,$F0
                    db $00,$0F,$F0,$80,$5F,$F0,$00,$7E
                    db $05,$8F,$00,$34,$8F,$B0,$38,$A8
                    db $37,$AF,$80,$34,$BF,$80,$28,$CF
                    db $80,$28,$DF,$80,$28,$EF,$80,$28
                    db $FF,$20,$34,$FF,$80,$28,$FE,$02
                    db $0F,$80,$A8,$1F,$80,$34,$24,$0E
                    db $34,$30,$3E,$0C,$3F,$A1,$3C,$4F
                    db $40,$38,$4E,$43,$AE,$0A,$AF,$40
                    db $36,$BE,$0C,$CF,$40,$38,$EE,$0A
                    db $EF,$40,$36,$FE,$0C,$0F,$40,$B8
                    db $2E,$0A,$2F,$40,$36,$3E,$0C,$4F
                    db $40,$38,$7E,$02,$7F,$A1,$3A,$7F
                    db $40,$36,$8E,$0E,$94,$64,$A4,$64
                    db $B4,$65,$C4,$65,$D4,$65,$E4,$65
                    db $F4,$65,$04,$E5,$14,$65,$24,$65
                    db $34,$65,$44,$65,$54,$65,$64,$65
                    db $74,$65,$84,$65,$94,$65,$A4,$65
                    db $B4,$65,$C4,$65,$D4,$65,$E4,$65
                    db $F4,$65,$0E,$82,$04,$63,$2E,$86
                    db $2F,$A1,$3C,$3F,$80,$38,$4E,$0C
                    db $4F,$71,$3C,$5F,$40,$38,$9E,$09
                    db $9F,$61,$3A,$9F,$40,$36,$C1,$62
                    db $C4,$0E,$EE,$0C,$EF,$61,$3C,$FF
                    db $40,$38,$0E,$86,$0F,$71,$3A,$0F
                    db $40,$36,$5E,$0C,$5F,$71,$3C,$6F
                    db $40,$38,$7E,$09,$7F,$61,$3A,$7F
                    db $40,$36,$A1,$62,$A4,$0E,$CF,$61
                    db $3C,$DF,$40,$38,$DE,$0C,$FE,$0A
                    db $FF,$40,$36,$28,$B4,$A6,$31,$E8
                    db $34,$8B,$B2,$9B,$0E,$FE,$07,$0F
                    db $20,$B4,$0F,$80,$38,$FF,$20,$34
                    db $FF,$80,$36,$FE,$0A,$0D,$C4,$CD
                    db $43,$CE,$09,$DD,$42,$DE,$0B,$DF
                    db $70,$38,$EF,$20,$34,$FF,$20,$34
                    db $FF,$A1,$3A,$FF,$70,$36,$FE,$02
                    db $5D,$C7,$FD,$5B,$03,$05,$34,$06
                    db $35,$07,$36,$6E,$0A,$6F,$10,$34
                    db $6F,$B0,$36,$EE,$02,$FF,$B0,$38
                    db $FE,$05,$0F,$20,$B4,$0E,$05,$0D
                    db $01,$17,$0E,$97,$0E,$9F,$20,$34
                    db $9E,$02,$C6,$05,$FA,$30,$FE,$0A
                    db $FF,$B0,$36,$4E,$82,$5F,$B0,$38
                    db $57,$0E,$58,$62,$68,$62,$79,$61
                    db $8A,$60,$8E,$0A,$8F,$B0,$36,$F5
                    db $31,$F9,$7B,$39,$F3,$97,$33,$B5
                    db $71,$39,$F3,$4D,$48,$9E,$02,$AE
                    db $05,$AF,$B0,$38,$BF,$10,$34,$CD
                    db $4A,$ED,$4B,$FF,$24,$28,$0E,$81
                    db $0F,$10,$34,$17,$06,$2F,$B0,$36
                    db $39,$73,$5C,$02,$85,$65,$8F,$B0
                    db $38,$9F,$B0,$36,$95,$32,$A9,$7B
                    db $CC,$03,$5E,$8F,$6D,$47,$FE,$02
                    db $0D,$07,$2F,$B0,$36,$39,$73,$4E
                    db $0A,$AE,$02,$BF,$B0,$38,$EC,$71
                    db $07,$81,$17,$02,$2F,$B0,$36,$39
                    db $73,$5F,$B0,$38,$E6,$05,$2F,$B0
                    db $B6,$39,$7B,$4E,$0A,$C4,$31,$EB
                    db $61,$FE,$02,$07,$B0,$0F,$B0,$38
                    db $1F,$B0,$36,$1E,$0A,$4E,$06,$5F
                    db $80,$38,$57,$0E,$BE,$02,$BF,$A1
                    db $3A,$BF,$80,$36,$C9,$61,$DA,$60
                    db $ED,$4B,$0E,$85,$1F,$10,$34,$0D
                    db $0E,$FF,$20,$34,$FF,$B0,$36,$FE
                    db $0A,$78,$E4,$8E,$06,$9F,$80,$38
                    db $B3,$06,$BF,$F7,$40,$EE,$0F,$EF
                    db $80,$36,$FF,$10,$34,$6D,$C7,$0E
                    db $82,$0F,$10,$34,$1F,$B0,$38,$2F
                    db $B0,$36,$39,$73,$5F,$B0,$38,$9A
                    db $60,$AF,$A1,$3C,$A9,$61,$AE,$06
                    db $BF,$80,$38,$DF,$80,$36,$DE,$0A
                    db $E7,$03,$EB,$79,$F7,$03,$FE,$06
                    db $0F,$80,$B8,$0D,$14,$FF,$80,$36
                    db $FE,$0A,$5E,$82,$6F,$B0,$38,$7F
                    db $F6,$60,$9E,$0A,$9F,$B0,$36,$F8
                    db $64,$FE,$0B,$0F,$20,$B4,$0F,$70
                    db $38,$9F,$A1,$3A,$9F,$70,$36,$9E
                    db $04,$BE,$05,$CF,$40,$34,$BE,$82
                    db $BF,$20,$34,$DA,$60,$E9,$61,$F8
                    db $62,$FF,$B0,$36,$FE,$0A,$0D,$C4
                    db $11,$64,$51,$62,$CD,$43,$CE,$09
                    db $DD,$42,$DE,$0B,$DF,$70,$38,$EF
                    db $20,$34,$FF,$20,$34,$FE,$02,$5D
                    db $C7,$FD,$52,$B1,$0F,$F0,$20,$6E
                    db $75,$CC,$73,$A3,$B3,$BF,$F4,$70
                    db $0C,$84,$83,$3F,$8E,$01,$9F,$F4
                    db $70,$AE,$31,$EF,$F1,$70,$EC,$01
                    db $2F,$F1,$F0,$2C,$01,$6F,$F1,$70
                    db $6C,$01,$A8,$91,$AA,$10,$77,$FB
                    db $56,$F4,$39,$F1,$BF,$F7,$30,$33
                    db $E7,$43,$04,$47,$03,$6C,$05,$C3
                    db $67,$D3,$67,$E3,$67,$ED,$4C,$FC
                    db $07,$73,$E7,$83,$67,$93,$67,$A3
                    db $67,$BC,$08,$43,$E7,$53,$67,$DC
                    db $02,$59,$91,$C3,$33,$D9,$71,$DF
                    db $F2,$70,$2D,$CD,$5B,$71,$9B,$71
                    db $3B,$F1,$A7,$C2,$DB,$71,$0D,$10
                    db $9B,$71,$0A,$B0,$1C,$04,$67,$63
                    db $76,$64,$85,$65,$94,$66,$A3,$67
                    db $B3,$67,$CC,$09,$73,$A3,$87,$22
                    db $B3,$09,$D6,$83,$E3,$03,$00,$EA
                    db $10,$6A,$20,$6A,$30,$6A,$40,$6A
                    db $50,$6A,$60,$6A,$70,$6A,$80,$6A
                    db $90,$6A,$A0,$6A,$B0,$6A,$C0,$6A
                    db $D0,$6A,$E0,$6A,$F0,$6A,$00,$EA
                    db $10,$6A,$20,$6A,$30,$6A,$40,$6A
                    db $50,$6A,$60,$6A,$70,$6A,$80,$6A
                    db $90,$6A,$A0,$6A,$B0,$6A,$C0,$6A
                    db $D0,$6A,$EC,$01,$03,$F7,$9D,$41
                    db $DF,$F6,$20,$0D,$18,$39,$71,$7F
                    db $F7,$30,$F2,$68,$01,$E9,$11,$39
                    db $68,$7A,$E0,$6A,$F0,$6A,$00,$EA
                    db $6D,$45,$FD,$50,$11,$0F,$F6,$20
                    db $DF,$F2,$30,$FE,$10,$0D,$01,$98
                    db $74,$C8,$13,$52,$E1,$63,$31,$61
                    db $79,$C6,$61,$06,$E1,$8B,$71,$AB
                    db $71,$E4,$19,$EB,$19,$60,$86,$C8
                    db $13,$CD,$4B,$39,$F3,$98,$13,$17
                    db $F5,$7C,$15,$7F,$F3,$10,$CF,$F5
                    db $10,$D4,$40,$0B,$9A,$23,$16,$32
                    db $44,$A3,$95,$B2,$43,$0D,$0A,$27
                    db $14,$3D,$4A,$A4,$40,$BC,$16,$BF
                    db $F3,$10,$C4,$40,$04,$C0,$1F,$F6
                    db $10,$24,$40,$43,$31,$CE,$11,$DD
                    db $41,$FF,$F0,$20,$ED,$C7,$FD,$52
                    db $A1,$0F,$F0,$20,$6E,$40,$D6,$61
                    db $E7,$07,$F7,$21,$16,$E1,$34,$63
                    db $47,$21,$54,$04,$67,$0A,$74,$63
                    db $DC,$01,$06,$E1,$17,$26,$86,$61
                    db $66,$C2,$58,$C1,$F7,$03,$04,$F6
                    db $8A,$10,$9C,$04,$E8,$62,$F9,$61
                    db $0A,$E0,$53,$31,$5F,$F3,$70,$7B
                    db $71,$77,$25,$FC,$E2,$17,$AA,$23
                    db $00,$3C,$67,$B3,$01,$CC,$63,$DB
                    db $71,$DF,$F3,$70,$FC,$00,$4F,$F7
                    db $B0,$CA,$7A,$C5,$31,$EC,$54,$3C
                    db $DC,$5D,$4C,$0F,$F3,$B0,$47,$63
                    db $6B,$F1,$8C,$0A,$39,$F1,$EC,$03
                    db $F0,$33,$0F,$F2,$E0,$29,$73,$49
                    db $61,$58,$62,$67,$73,$85,$65,$94
                    db $66,$A3,$77,$AD,$4D,$AE,$01,$4D
                    db $C1,$8F,$F6,$20,$7D,$C7,$FD,$50
                    db $11,$0F,$F6,$20,$AF,$F2,$30,$D8
                    db $62,$DE,$10,$08,$E4,$5A,$62,$6C
                    db $4C,$86,$43,$AD,$48,$3A,$E2,$53
                    db $42,$88,$64,$9C,$36,$08,$E4,$4A
                    db $62,$5C,$4D,$3A,$E2,$9C,$32,$FC
                    db $41,$3C,$B1,$83,$00,$AC,$42,$2A
                    db $E2,$3C,$46,$AA,$62,$BC,$4E,$C6
                    db $43,$46,$C3,$AA,$62,$BD,$48,$0B
                    db $96,$47,$07,$C7,$12,$3C,$C2,$9C
                    db $41,$CD,$48,$DC,$32,$4C,$C2,$BC
                    db $32,$1C,$B1,$5A,$62,$6C,$44,$76
                    db $43,$BA,$62,$DC,$32,$5D,$CA,$73
                    db $12,$E3,$12,$8E,$91,$9D,$41,$BE
                    db $42,$BF,$F0,$20,$9D,$C7,$FD,$52
                    db $B1,$0F,$F0,$20,$6E,$76,$03,$B1
                    db $09,$71,$0F,$F1,$70,$6F,$F3,$30
                    db $A7,$63,$B7,$34,$BC,$0E,$4D,$CC
                    db $03,$A6,$08,$72,$3F,$F2,$70,$6D
                    db $4C,$73,$07,$77,$73,$83,$27,$AC
                    db $00,$BF,$F3,$70,$3C,$80,$9A,$30
                    db $AC,$5B,$C6,$3C,$6A,$B0,$75,$10
                    db $96,$74,$B6,$0A,$DA,$30,$E3,$28
                    db $EC,$5B,$ED,$48,$AA,$B0,$33,$B4
                    db $51,$79,$AD,$4A,$DD,$4D,$E3,$2C
                    db $0C,$FA,$73,$07,$B3,$04,$CB,$71
                    db $EC,$07,$0D,$0A,$39,$71,$DF,$F3
                    db $30,$CA,$B0,$D6,$10,$D7,$30,$DC
                    db $0C,$03,$B1,$AD,$41,$EF,$F6,$20
                    db $ED,$C7,$39,$F1,$0D,$10,$7D,$4C
                    db $0D,$13,$A8,$11,$AA,$10,$1C,$83
                    db $D7,$7B,$F3,$67,$5D,$CD,$6D,$47
                    db $FD,$56,$11,$0F,$F6,$20,$DF,$F2
                    db $30,$FE,$11,$0D,$01,$0C,$5F,$03
                    db $80,$0C,$52,$29,$15,$7C,$5B,$23
                    db $B2,$29,$1F,$31,$79,$1C,$DE,$48
                    db $3B,$ED,$4B,$39,$F1,$CF,$F3,$B0
                    db $FE,$10,$37,$8E,$77,$0E,$9E,$11
                    db $A8,$34,$A9,$34,$AA,$34,$F8,$62
                    db $FE,$10,$37,$B6,$DE,$11,$E7,$63
                    db $F8,$62,$09,$E1,$0E,$10,$47,$36
                    db $B7,$0E,$BE,$91,$CA,$32,$EE,$10
                    db $1D,$CA,$7E,$11,$83,$77,$9E,$10
                    db $1E,$91,$2D,$41,$6F,$F6,$20,$6D
                    db $C7,$FD,$57,$11,$0F,$F6,$20,$FE
                    db $10,$4B,$92,$59,$0F,$AD,$4C,$D3
                    db $93,$0B,$94,$29,$0F,$7B,$93,$99
                    db $0F,$0D,$06,$27,$12,$35,$0F,$23
                    db $B1,$57,$75,$A3,$31,$AB,$71,$F7
                    db $75,$23,$B1,$87,$13,$95,$0F,$0D
                    db $0A,$23,$35,$38,$13,$55,$00,$9B
                    db $16,$0B,$96,$C7,$75,$3B,$92,$49
                    db $0F,$AD,$4C,$29,$92,$52,$40,$6C
                    db $15,$6F,$F1,$10,$72,$40,$BF,$F5
                    db $10,$03,$93,$0A,$13,$12,$41,$8B
                    db $12,$99,$0F,$0D,$10,$47,$16,$46
                    db $45,$B3,$32,$13,$B1,$57,$0E,$A7
                    db $0E,$D3,$31,$53,$B1,$A6,$31,$03
                    db $B2,$13,$0E,$8D,$4D,$AE,$11,$BD
                    db $41,$DF,$F0,$20,$AD,$C7,$FD,$52
                    db $A1,$0F,$F0,$20,$6E,$65,$57,$F3
                    db $60,$21,$6F,$F2,$60,$AC,$75,$07
                    db $80,$1C,$76,$87,$01,$9C,$70,$B0
                    db $33,$CF,$F6,$60,$57,$E3,$6C,$04
                    db $CD,$4C,$9A,$B0,$AC,$0C,$83,$B1
                    db $8F,$F4,$70,$BD,$4D,$F8,$11,$FA
                    db $10,$83,$87,$93,$22,$9F,$F4,$70
                    db $59,$F1,$89,$61,$A9,$61,$BC,$0C
                    db $67,$A0,$EB,$71,$77,$87,$7A,$10
                    db $86,$51,$95,$52,$A4,$53,$B6,$04
                    db $B3,$24,$26,$85,$4A,$10,$53,$23
                    db $5C,$00,$6F,$F3,$70,$93,$08,$07
                    db $FB,$2C,$04,$33,$30,$74,$76,$EB
                    db $71,$57,$8B,$6C,$02,$96,$74,$E3
                    db $30,$0C,$86,$7D,$41,$BF,$F6,$20
                    db $BD,$C7,$FD,$50,$61,$0F,$F6,$20
                    db $BB,$F1,$DC,$06,$23,$87,$B5,$71
                    db $B7,$31,$D7,$28,$06,$C5,$67,$08
                    db $0D,$05,$39,$71,$7C,$00,$9E,$62
                    db $B6,$03,$E6,$05,$4E,$E0,$5D,$4C
                    db $59,$0F,$6C,$02,$93,$67,$AC,$56
                    db $AD,$4C,$1F,$F1,$B0,$3C,$01,$98
                    db $0A,$9E,$20,$A8,$21,$F3,$09,$0E
                    db $A1,$27,$20,$3E,$62,$56,$05,$7D
                    db $4D,$C6,$05,$3E,$E0,$9E,$62,$B6
                    db $05,$1E,$E0,$4C,$00,$6C,$00,$A7
                    db $7B,$E0,$6A,$F0,$6A,$00,$EA,$6D
                    db $47,$FE,$10,$0B,$93,$5B,$15,$B7
                    db $12,$03,$91,$AB,$1F,$BD,$41,$FF
                    db $F6,$20,$BD,$C7,$FD,$50,$50,$0F
                    db $F6,$20,$0B,$1F,$57,$92,$8B,$12
                    db $D2,$14,$4B,$92,$59,$0F,$0B,$95
                    db $BB,$1F,$BE,$52,$58,$E2,$9E,$50
                    db $97,$05,$BB,$1F,$AE,$D2,$B6,$05
                    db $BB,$1F,$DD,$4A,$F6,$06,$2F,$60
                    db $96,$8E,$50,$98,$62,$EB,$11,$07
                    db $F3,$0B,$1D,$2E,$52,$4F,$70,$18
                    db $CE,$50,$EB,$1F,$EE,$52,$5E,$D0
                    db $D9,$0F,$AB,$9F,$BE,$52,$8E,$D0
                    db $AB,$1D,$AE,$52,$36,$83,$56,$05
                    db $5E,$50,$DC,$15,$DF,$F2,$10,$2F
                    db $F5,$90,$C3,$31,$5B,$9F,$6D,$41
                    db $8E,$52,$8F,$F0,$20,$8D,$C7,$FD
                    db $00,$C1,$4C,$00,$F3,$4F,$FA,$C6
                    db $68,$A0,$69,$20,$6A,$20,$7A,$47
                    db $F8,$20,$F9,$20,$FA,$20,$0A,$CF
                    db $B4,$49,$55,$A0,$56,$20,$73,$47
                    db $F5,$20,$F6,$20,$22,$A1,$41,$48
                    db $52,$20,$72,$20,$92,$20,$B2,$20
                    db $FE,$00,$9B,$C2,$AD,$C7,$FD,$48
                    db $0F,$1E,$01,$27,$06,$5E,$02,$8F
                    db $F3,$60,$8C,$01,$EF,$F7,$60,$1C
                    db $81,$2E,$09,$3C,$63,$73,$01,$8C
                    db $60,$FE,$02,$1E,$8E,$3E,$02,$44
                    db $07,$45,$52,$4E,$0E,$8E,$02,$99
                    db $71,$B5,$24,$B6,$24,$B7,$24,$FE
                    db $02,$07,$87,$17,$22,$37,$52,$37
                    db $0B,$47,$52,$4E,$0A,$57,$52,$5E
                    db $02,$67,$52,$77,$52,$7E,$0A,$87
                    db $52,$8E,$02,$96,$46,$97,$52,$A7
                    db $52,$B7,$52,$C7,$52,$D7,$52,$E7
                    db $52,$F7,$52,$FE,$04,$07,$A3,$47
                    db $08,$57,$26,$C7,$0A,$E9,$71,$17
                    db $A7,$97,$08,$9E,$01,$A0,$24,$C6
                    db $74,$F0,$0C,$FE,$04,$0C,$80,$6F
                    db $F2,$30,$98,$62,$A8,$62,$BC,$00
                    db $C7,$73,$E7,$73,$FE,$02,$7F,$F7
                    db $E0,$8E,$01,$9E,$00,$DE,$02,$F7
                    db $0B,$FE,$0E,$4E,$82,$54,$52,$64
                    db $51,$6E,$00,$74,$09,$9F,$F0,$00
                    db $DF,$F0,$00,$2F,$F0,$80,$4E,$02
                    db $59,$47,$CE,$0A,$07,$F5,$68,$54
                    db $7F,$F4,$60,$88,$54,$A8,$54,$AE
                    db $01,$B8,$52,$BF,$F7,$40,$C8,$52
                    db $D8,$52,$E8,$52,$EE,$0F,$4D,$C7
                    db $0D,$0D,$0E,$02,$68,$7A,$BE,$01
                    db $EE,$0F,$6D,$C5,$FD,$08,$0F,$0E
                    db $01,$2E,$05,$38,$2C,$3A,$4F,$08
                    db $AC,$C7,$0B,$CE,$01,$DF,$FA,$40
                    db $6D,$C7,$0E,$81,$00,$5A,$2E,$02
                    db $B8,$4F,$CF,$F5,$60,$0F,$F5,$E0
                    db $4F,$F5,$60,$8F,$F5,$60,$DF,$FA
                    db $40,$6D,$C7,$0E,$81,$00,$5A,$30
                    db $07,$34,$52,$3E,$02,$42,$47,$44
                    db $47,$46,$27,$C0,$0B,$C4,$52,$DF
                    db $FA,$40,$6D,$C7,$FD,$41,$01,$27
                    db $D3,$79,$51,$C4,$56,$00,$E2,$03
                    db $53,$0C,$0F,$12,$3B,$1A,$42,$43
                    db $54,$6D,$49,$83,$53,$99,$53,$C3
                    db $54,$DA,$52,$0C,$84,$09,$53,$53
                    db $64,$63,$31,$67,$34,$86,$41,$8C
                    db $01,$A3,$30,$B3,$64,$CC,$03,$D9
                    db $42,$5C,$84,$A0,$62,$A8,$62,$B0
                    db $62,$B8,$62,$C0,$62,$C8,$62,$D0
                    db $62,$D8,$62,$E0,$62,$E8,$62,$16
                    db $C2,$58,$52,$8C,$04,$A7,$55,$D0
                    db $63,$D7,$63,$E2,$61,$E7,$63,$F2
                    db $61,$F7,$63,$13,$B8,$17,$38,$8C
                    db $03,$1D,$C9,$50,$62,$5C,$0B,$62
                    db $3E,$63,$52,$8A,$52,$93,$54,$AA
                    db $42,$D3,$51,$EA,$41,$03,$D3,$1C
                    db $04,$1A,$52,$33,$55,$73,$44,$77
                    db $44,$16,$D2,$19,$31,$1A,$32,$5C
                    db $0F,$9A,$47,$95,$64,$A5,$64,$B5
                    db $64,$C5,$64,$D5,$64,$E5,$64,$F5
                    db $64,$05,$E4,$40,$61,$42,$35,$56
                    db $34,$5C,$09,$A2,$61,$A6,$61,$B3
                    db $34,$B7,$34,$FC,$08,$0C,$87,$28
                    db $54,$59,$53,$9A,$30,$A9,$61,$B8
                    db $62,$C0,$63,$C7,$63,$D0,$64,$D5
                    db $0D,$D7,$63,$E0,$6A,$F0,$6A,$00
                    db $EA,$0D,$4A,$7D,$47,$FD,$07,$0F
                    db $0F,$10,$34,$0E,$02,$1F,$B0,$38
                    db $2F,$B0,$36,$39,$73,$5F,$B0,$38
                    db $05,$8E,$2E,$0B,$2F,$A1,$3C,$3F
                    db $70,$38,$3F,$10,$34,$B7,$0E,$64
                    db $8E,$6E,$02,$6F,$10,$34,$6F,$A1
                    db $3A,$6F,$70,$36,$CE,$06,$CF,$A1
                    db $3C,$DF,$80,$38,$DE,$08,$EF,$41
                    db $28,$EF,$20,$34,$E6,$0D,$FF,$43
                    db $28,$FF,$70,$34,$0F,$43,$A8,$7D
                    db $47,$FD,$01,$01,$77,$39,$A3,$43
                    db $00,$BF,$29,$51,$39,$48,$61,$55
                    db $D6,$54,$D2,$44,$0C,$82,$30,$39
                    db $31,$66,$44,$47,$47,$32,$4A,$47
                    db $97,$32,$C1,$66,$CE,$01,$DC,$02
                    db $00,$BF,$04,$3F,$05,$3F,$06,$3F
                    db $07,$3F,$0C,$0F,$08,$4F,$FE,$01
                    db $27,$D3,$5C,$02,$9A,$60,$A9,$61
                    db $B8,$62,$C7,$63,$D0,$64,$D5,$0D
                    db $D7,$63,$E0,$6A,$F0,$6A,$00,$EA
                    db $7D,$47,$FD,$1F,$01,$0E,$69,$00
                    db $1F,$0B,$78,$2D,$FF,$1F,$01,$1E
                    db $68,$06,$FF,$1E,$05,$00,$FF,$26
                    db $8F,$05,$AC,$46,$0F,$1F,$04,$E8
                    db $10,$38,$90,$66,$11,$FB,$3C,$9B
                    db $B7,$CB,$85,$29,$87,$95,$07,$EB
                    db $02,$0B,$82,$96,$0E,$C3,$0E,$FF
                    db $1F,$01,$E6,$11,$FF,$3B,$86,$7B
                    db $00,$BB,$02,$2B,$8E,$7A,$05,$57
                    db $87,$27,$8F,$9A,$0C,$FF,$55,$31
                    db $0D,$01,$CF,$F3,$30,$FE,$39,$0F
                    db $A0,$BC,$0F,$70,$38,$0F,$00,$34
                    db $FE,$32,$FF,$A1,$3A,$FF,$70,$36
                    db $2E,$82,$34,$3B,$35,$3B,$36,$3B
                    db $37,$3B,$F4,$63,$FF,$00,$34,$FE
                    db $31,$29,$8F,$9E,$43,$FE,$30,$FF
                    db $B0,$36,$16,$B1,$23,$09,$4E,$31
                    db $4E,$40,$5F,$B0,$38,$D7,$E0,$E6
                    db $61,$FE,$02,$F5,$62,$FA,$60,$FF
                    db $B0,$36,$0C,$DF,$0F,$00,$34,$04
                    db $63,$14,$3E,$15,$3E,$16,$3E,$17
                    db $3E,$0C,$DF,$04,$3F,$05,$3F,$06
                    db $3F,$07,$3F,$0C,$D1,$04,$63,$14
                    db $63,$1E,$32,$2F,$B0,$38,$24,$64
                    db $2D,$40,$3F,$00,$34,$34,$64,$4E
                    db $32,$5E,$36,$5E,$42,$6F,$A0,$3C
                    db $6F,$80,$38,$6F,$00,$34,$CE,$38
                    db $DF,$10,$34,$0D,$0B,$8E,$36,$8E
                    db $40,$8F,$10,$34,$87,$37,$96,$36
                    db $EE,$3A,$EF,$80,$36,$FC,$5A,$06
                    db $BD,$07,$3E,$9E,$06,$AF,$80,$38
                    db $FF,$A1,$3A,$FF,$80,$36,$FE,$31
                    db $FF,$00,$34,$09,$E1,$1A,$60,$6D
                    db $41,$AF,$F6,$20,$8D,$C7,$FD,$00
                    db $F1,$FE,$B5,$0D,$02,$FE,$34,$07
                    db $CF,$CE,$00,$0D,$05,$8D,$47,$FD
                    db $00,$C1,$3F,$B0,$36,$4C,$00,$5F
                    db $B0,$38,$00,$E7,$10,$67,$20,$67
                    db $30,$67,$40,$67,$50,$67,$60,$67
                    db $70,$67,$80,$67,$90,$67,$A0,$67
                    db $B0,$67,$C0,$67,$D0,$67,$E0,$67
                    db $F0,$67,$00,$E7,$0D,$02,$10,$67
                    db $20,$67,$30,$67,$40,$67,$50,$67
                    db $60,$67,$70,$67,$80,$67,$90,$67
                    db $A0,$67,$B0,$67,$C0,$67,$D0,$67
                    db $E0,$67,$F0,$67,$FE,$04,$07,$CF
                    db $00,$63,$10,$63,$20,$63,$30,$63
                    db $40,$63,$50,$63,$60,$63,$70,$63
                    db $80,$63,$90,$63,$A0,$63,$B0,$63
                    db $C0,$63,$CE,$00,$CF,$B0,$36,$0D
                    db $05,$8D,$47,$FD,$50,$31,$00,$39
                    db $9F,$F8,$30,$EE,$01,$12,$B9,$77
                    db $7B,$E0,$6A,$F0,$6A,$00,$6A,$6D
                    db $C7,$FD,$FD,$FD,$00,$A1,$0A,$60
                    db $19,$61,$28,$62,$39,$71,$58,$62
                    db $69,$61,$7A,$60,$7C,$F5,$A5,$11
                    db $FE,$20,$1F,$F0,$80,$5E,$21,$80
                    db $3F,$8F,$F5,$60,$D6,$74,$5E,$A0
                    db $6F,$F6,$60,$9E,$21,$C3,$37,$47
                    db $F3,$9E,$20,$FE,$21,$0D,$06,$57
                    db $32,$64,$11,$66,$10,$83,$A7,$87
                    db $27,$0D,$09,$1D,$4A,$5F,$F8,$30
                    db $6D,$C1,$AF,$F6,$20,$6D,$C7,$FD
                    db $50,$11,$00,$3F,$D7,$73,$FE,$1A
                    db $00,$BF,$6F,$F2,$60,$00,$BF,$1F
                    db $F5,$60,$BF,$F3,$60,$00,$BF,$C7
                    db $28,$DF,$F1,$60,$00,$BF,$15,$71
                    db $7F,$F2,$60,$9B,$2F,$A8,$72,$FE
                    db $10,$69,$F1,$B7,$25,$C5,$71,$33
                    db $AC,$5F,$F1,$70,$8D,$4A,$AA,$14
                    db $D1,$71,$17,$95,$26,$42,$72,$42
                    db $73,$12,$7A,$14,$C6,$14,$D5,$42
                    db $FE,$11,$7F,$F8,$B0,$8D,$C1,$CF
                    db $F6,$20,$6D,$C7,$FD,$57,$00,$0B
                    db $3F,$0B,$BF,$0B,$BF,$73,$36,$9A
                    db $30,$A5,$64,$B6,$31,$D4,$61,$0B
                    db $BF,$13,$63,$4A,$60,$53,$66,$A5
                    db $34,$B3,$67,$E5,$65,$F4,$60,$0B
                    db $BF,$14,$60,$53,$67,$67,$32,$C4
                    db $62,$D4,$31,$F3,$61,$FA,$60,$0B
                    db $BF,$04,$30,$09,$61,$14,$65,$63
                    db $65,$6A,$60,$0B,$BF,$0F,$F8,$30
                    db $0B,$BF,$1D,$41,$3E,$42,$3F,$F0
                    db $20,$0B,$BF,$3D,$47,$FD,$2A,$9E
                    db $6B,$0C,$8D,$1C,$EA,$1F,$1B,$8C
                    db $E6,$1C,$8C,$9C,$BB,$0C,$F3,$83
                    db $9B,$8C,$DB,$0C,$1B,$8C,$6B,$0C
                    db $BB,$0C,$0F,$09,$40,$15,$78,$AD
                    db $90,$B5,$FF,$0F,$02,$38,$1D,$D9
                    db $1B,$6E,$EB,$21,$3A,$A8,$18,$9D
                    db $0F,$07,$18,$1D,$0F,$09,$18,$1D
                    db $0F,$0B,$18,$1D,$7B,$15,$8E,$21
                    db $2E,$B9,$9D,$0F,$0E,$78,$2D,$90
                    db $B5,$FF,$05,$9D,$65,$1D,$0D,$A8
                    db $DD,$1D,$07,$AC,$54,$2C,$A2,$2C
                    db $F4,$2C,$42,$AC,$26,$9D,$D4,$03
                    db $24,$83,$64,$03,$2B,$82,$4B,$02
                    db $7B,$02,$9B,$02,$5B,$82,$7B,$02
                    db $0B,$82,$2B,$02,$C6,$1B,$28,$82
                    db $48,$02,$A6,$1B,$7B,$95,$85,$0C
                    db $9D,$9B,$0F,$0E,$78,$2D,$7A,$1D
                    db $90,$B5,$FF,$19,$9F,$99,$1B,$2C
                    db $8C,$59,$1B,$C5,$0F,$0F,$04,$09
                    db $29,$BD,$1D,$0F,$06,$6E,$2A,$61
                    db $0F,$09,$48,$2D,$46,$87,$79,$07
                    db $8E,$6D,$60,$A5,$07,$B8,$85,$57
                    db $A5,$8C,$8C,$76,$9D,$78,$2D,$D0
                    db $B5,$FF,$07,$83,$37,$03,$6B,$0E
                    db $E0,$3D,$20,$BE,$6E,$2B,$00,$A7
                    db $85,$D3,$05,$E7,$83,$24,$83,$27
                    db $03,$49,$00,$59,$00,$10,$BB,$B0
                    db $3B,$6E,$C6,$00,$17,$85,$53,$05
                    db $36,$8E,$76,$0E,$B6,$0E,$E7,$83
                    db $63,$83,$68,$03,$29,$83,$57,$03
                    db $85,$03,$B5,$29,$FF,$0F,$04,$66
                    db $07,$0F,$06,$86,$10,$0F,$08,$55
                    db $0F,$E5,$8F,$FF,$70,$B7,$CA,$00
                    db $66,$80,$0F,$04,$79,$0E,$AB,$0E
                    db $EE,$2B,$20,$EB,$80,$40,$BB,$FB
                    db $00,$40,$B7,$CB,$0E,$0F,$09,$4B
                    db $00,$76,$00,$D8,$00,$6B,$8E,$73
                    db $06,$83,$06,$C7,$0E,$36,$90,$C5
                    db $06,$FF,$84,$8F,$A7,$24,$D3,$0F
                    db $EA,$24,$45,$A9,$D5,$28,$45,$A9
                    db $84,$25,$B4,$8F,$09,$90,$B5,$A8
                    db $5B,$97,$CD,$28,$B5,$A4,$09,$A4
                    db $65,$28,$92,$90,$E3,$83,$FF,$3A
                    db $8E,$5B,$0E,$C3,$8E,$CA,$8E,$0B
                    db $8E,$4A,$0E,$DE,$C6,$44,$0F,$08
                    db $49,$0E,$EB,$0E,$8A,$90,$AB,$85
                    db $0F,$0C,$03,$0F,$2E,$2B,$40,$67
                    db $86,$FF,$15,$8F,$54,$07,$AA,$83
                    db $F8,$07,$0F,$04,$14,$07,$96,$10
                    db $0F,$07,$95,$0F,$9D,$A8,$0B,$97
                    db $09,$A9,$55,$24,$A9,$24,$BB,$17
                    db $FF,$0F,$03,$A6,$11,$A3,$90,$A6
                    db $91,$0F,$08,$A6,$11,$E3,$A9,$0F
                    db $0D,$55,$24,$A9,$24,$0F,$11,$59
                    db $1D,$A9,$1B,$23,$8F,$15,$9B,$FF
                    db $87,$85,$9B,$05,$18,$90,$A4,$8F
                    db $6E,$C6,$60,$9B,$02,$D0,$3B,$80
                    db $B8,$03,$8E,$1B,$02,$3B,$02,$0F
                    db $08,$03,$10,$F7,$05,$6B,$85,$FF
                    db $DB,$82,$F3,$03,$10,$B7,$80,$37
                    db $1A,$8E,$4B,$0E,$7A,$0E,$AB,$0E
                    db $0F,$05,$F9,$0E,$D0,$BE,$2E,$C6
                    db $62,$D4,$8F,$64,$8F,$7E,$2B,$60
                    db $FF,$0F,$03,$AB,$05,$1B,$85,$A3
                    db $85,$D7,$05,$0F,$08,$33,$03,$0B
                    db $85,$FB,$85,$8B,$85,$3A,$8E,$FF
                    db $0F,$02,$09,$05,$3E,$46,$64,$2B
                    db $8E,$58,$0E,$CA,$07,$34,$87,$FF
                    db $0A,$AA,$1E,$20,$03,$1E,$22,$27
                    db $2E,$24,$48,$2E,$28,$67,$FF,$BB
                    db $A9,$1B,$A9,$69,$29,$B8,$29,$59
                    db $A9,$8D,$A8,$0F,$07,$15,$29,$55
                    db $AC,$6B,$85,$0E,$BE,$01,$67,$34
                    db $FF,$1E,$A0,$09,$1E,$27,$67,$0F
                    db $03,$1E,$28,$68,$0F,$05,$1E,$24
                    db $48,$1E,$6D,$68,$FF,$EE,$BE,$21
                    db $26,$87,$F3,$0E,$66,$87,$CB,$00
                    db $65,$87,$0F,$06,$06,$0E,$97,$07
                    db $CB,$00,$75,$87,$D3,$27,$D9,$27
                    db $0F,$09,$77,$1F,$46,$87,$B1,$0F
                    db $FF,$9B,$87,$0F,$52,$32,$0F,$63
                    db $32,$0F,$74,$32,$EE,$0A,$EF,$10
                    db $34,$EF,$80,$36,$0E,$86,$1F,$80
                    db $38,$28,$0E,$3F,$80,$36,$3E,$0A
                    db $6E,$02,$7F,$B0,$38,$8B,$0E,$97
                    db $00,$9F,$B0,$36,$9E,$0A,$CE,$06
                    db $DF,$80,$38,$E8,$0E,$FF,$80,$36
                    db $FE,$0A,$2E,$86,$3F,$80,$38,$6F
                    db $80,$36,$6E,$0A,$8E,$08,$9F,$10
                    db $34,$9F,$80,$38,$E4,$0E,$1E,$82
                    db $1F,$20,$34,$1F,$A1,$3A,$1F,$80
                    db $36,$8A,$0E,$8F,$B0,$36,$8E,$0A
                    db $FE,$02,$0F,$B0,$B8,$1A,$60,$2F
                    db $A1,$3C,$29,$61,$2E,$06,$3F,$80
                    db $38,$47,$60,$56,$61,$6F,$71,$3C
                    db $65,$62,$6E,$0C,$7F,$40,$38,$83
                    db $60,$7E,$8A,$7F,$40,$36,$BB,$61
                    db $F9,$63,$27,$E5,$88,$64,$EB,$61
                    db $FE,$05,$0F,$20,$B4,$0F,$B0,$38
                    db $68,$10,$0A,$90,$FF,$20,$34,$FE
                    db $02,$3A,$90,$3F,$B0,$36,$3E,$0A
                    db $AE,$02,$BF,$B0,$38,$DA,$60,$E9
                    db $61,$F8,$62,$FF,$B0,$36,$FE,$0A
                    db $0D,$C4,$A1,$62,$B1,$62,$CD,$43
                    db $CE,$09,$DE,$0B,$DD,$42,$DF,$70
                    db $38,$EF,$20,$34,$FF,$A1,$3A,$FF
                    db $20,$34,$FF,$70,$36,$FE,$02,$5D
                    db $C7,$FD,$9B,$09,$0F,$52,$32,$0F
                    db $63,$32,$0F,$11,$28,$1F,$11,$28
                    db $2F,$11,$28,$3F,$11,$28,$3E,$0A
                    db $3F,$70,$36,$41,$3B,$42,$3B,$4F
                    db $11,$28,$5F,$11,$28,$58,$64,$6F
                    db $11,$28,$7F,$11,$28,$7A,$62,$8F
                    db $11,$28,$9F,$11,$28,$AF,$11,$28
                    db $BF,$11,$28,$CF,$11,$28,$C8,$31
                    db $DF,$11,$28,$EF,$11,$28,$FF,$11
                    db $28,$FF,$20,$34,$18,$E4,$39,$73
                    db $5E,$09,$5F,$70,$38,$66,$3C,$0E
                    db $82,$0F,$A1,$3A,$0F,$70,$36,$28
                    db $07,$36,$0E,$3F,$B0,$36,$3E,$0A
                    db $AE,$02,$AF,$B0,$38,$D7,$0E,$EF
                    db $A1,$3C,$FF,$40,$38,$FE,$0C,$FF
                    db $40,$B6,$FE,$0A,$11,$E5,$21,$65
                    db $31,$65,$4E,$0C,$5F,$40,$38,$FE
                    db $02,$FF,$A1,$3A,$FF,$40,$36,$16
                    db $8E,$2E,$0E,$34,$63,$44,$63,$54
                    db $63,$64,$63,$74,$63,$84,$63,$94
                    db $63,$A4,$63,$B4,$63,$C4,$63,$D4
                    db $63,$E4,$63,$F4,$63,$FE,$02,$18
                    db $FA,$3E,$0E,$44,$63,$54,$63,$64
                    db $63,$74,$63,$84,$63,$94,$63,$A4
                    db $63,$B4,$63,$C4,$63,$D4,$63,$E4
                    db $63,$F4,$63,$FE,$02,$16,$8E,$2E
                    db $0E,$34,$63,$44,$63,$54,$63,$64
                    db $63,$74,$63,$84,$63,$94,$63,$A4
                    db $63,$B4,$63,$C4,$63,$D4,$63,$E4
                    db $63,$F4,$63,$FE,$02,$18,$FA,$3E
                    db $0E,$44,$63,$54,$63,$64,$63,$74
                    db $63,$84,$63,$94,$63,$A4,$63,$B4
                    db $63,$C4,$63,$D4,$63,$E4,$63,$F4
                    db $63,$FE,$02,$16,$8E,$2E,$0E,$34
                    db $63,$44,$63,$54,$63,$64,$63,$74
                    db $63,$84,$63,$94,$63,$A4,$63,$B4
                    db $63,$C4,$63,$D4,$63,$E4,$63,$F4
                    db $63,$FE,$02,$18,$FA,$3E,$0E,$44
                    db $63,$54,$63,$64,$63,$74,$63,$84
                    db $63,$94,$63,$A4,$63,$B4,$63,$C4
                    db $63,$D4,$63,$E4,$63,$F4,$63,$FE
                    db $02,$16,$8E,$2E,$0E,$34,$63,$44
                    db $63,$54,$63,$64,$63,$74,$63,$84
                    db $63,$94,$63,$A4,$63,$B4,$63,$C4
                    db $63,$D4,$63,$E4,$63,$F4,$63,$FE
                    db $02,$18,$FA,$5E,$0A,$5F,$B0,$36
                    db $6E,$02,$7B,$61,$7E,$0A,$B7,$0E
                    db $EE,$07,$FF,$10,$34,$FF,$80,$38
                    db $FE,$8A,$FF,$20,$34,$FF,$80,$36
                    db $0D,$C4,$CD,$43,$CE,$09,$DD,$42
                    db $DE,$0B,$DF,$70,$38,$EF,$20,$34
                    db $FF,$A1,$3A,$FF,$20,$34,$FF,$70
                    db $36,$FE,$02,$5D,$C7,$FD,$58,$09
                    db $0F,$55,$32,$0F,$6D,$32,$0F,$11
                    db $28,$1F,$11,$28,$2F,$11,$28,$3F
                    db $11,$28,$4F,$11,$28,$5F,$11,$28
                    db $6F,$11,$28,$7F,$11,$28,$8F,$11
                    db $28,$9F,$11,$28,$AF,$11,$28,$BF
                    db $11,$28,$BF,$20,$34,$DE,$0C,$EF
                    db $60,$3C,$EF,$40,$38,$F3,$3D,$03
                    db $8E,$6E,$43,$CE,$0A,$CF,$40,$36
                    db $EF,$17,$28,$EF,$20,$34,$EF,$80
                    db $34,$FF,$17,$28,$0F,$17,$A8,$1F
                    db $17,$28,$1E,$05,$2F,$80,$28,$2F
                    db $B0,$38,$3F,$80,$28,$4F,$80,$28
                    db $5F,$80,$28,$6F,$80,$28,$6E,$40
                    db $7F,$80,$28,$8F,$80,$28,$9F,$80
                    db $28,$AF,$80,$28,$BE,$01,$BF,$00
                    db $34,$BF,$80,$34,$C7,$06,$DB,$0E
                    db $DE,$00,$1F,$F0,$80,$6F,$F0,$00
                    db $BF,$F0,$00,$0F,$F0,$80,$5F,$F0
                    db $00,$7E,$05,$8F,$00,$34,$8F,$B0
                    db $38,$AF,$80,$34,$BF,$80,$28,$CF
                    db $80,$28,$DF,$80,$28,$EF,$80,$28
                    db $FF,$20,$34,$FF,$80,$28,$FE,$02
                    db $0F,$80,$A8,$1F,$80,$34,$24,$0E
                    db $34,$30,$3E,$0C,$3F,$A1,$3C,$4F
                    db $40,$38,$4E,$43,$AE,$0A,$AF,$40
                    db $36,$BE,$0C,$CF,$40,$38,$EF,$40
                    db $36,$EE,$0A,$FE,$0C,$0F,$40,$B8
                    db $2F,$40,$36,$2E,$0A,$3E,$0C,$4F
                    db $40,$38,$7F,$A1,$3A,$7F,$40,$36
                    db $7E,$02,$8E,$0E,$94,$64,$A4,$64
                    db $B4,$65,$C4,$65,$D4,$65,$E4,$65
                    db $F4,$65,$04,$E5,$14,$65,$24,$65
                    db $34,$65,$44,$65,$54,$65,$64,$65
                    db $74,$65,$84,$65,$94,$65,$A4,$65
                    db $B4,$65,$C4,$65,$D4,$65,$E4,$65
                    db $F4,$65,$0E,$82,$04,$64,$2E,$86
                    db $2F,$A1,$3C,$3F,$80,$38,$4E,$0C
                    db $4F,$71,$3C,$5F,$40,$38,$9E,$09
                    db $9F,$61,$3A,$9F,$40,$36,$A6,$60
                    db $C1,$62,$C4,$0E,$EE,$0C,$EF,$61
                    db $3C,$FF,$40,$38,$0E,$86,$1F,$71
                    db $3A,$1F,$40,$36,$5E,$0C,$5F,$71
                    db $3C,$6F,$40,$38,$7E,$09,$7F,$61
                    db $3A,$7F,$40,$36,$86,$60,$A1,$62
                    db $A4,$0E,$C6,$60,$CE,$0C,$CF,$61
                    db $3C,$DF,$40,$38,$FE,$0A,$FF,$40
                    db $36,$28,$B4,$A6,$31,$E8,$34,$8B
                    db $B2,$9B,$0E,$FE,$07,$0F,$20,$B4
                    db $0F,$80,$38,$FF,$20,$34,$FF,$80
                    db $36,$FE,$0A,$0D,$C4,$CD,$43,$CE
                    db $09,$DD,$42,$DE,$0B,$DF,$70,$38
                    db $EF,$20,$34,$FF,$A1,$3A,$FF,$20
                    db $34,$FF,$70,$36,$FE,$02,$5D,$C7
                    db $FD,$5B,$03,$05,$34,$06,$35,$39
                    db $71,$6E,$02,$6F,$10,$34,$AE,$0A
                    db $AF,$B0,$36,$FE,$05,$0F,$B0,$B8
                    db $0F,$20,$34,$17,$0E,$97,$0E,$9E
                    db $02,$9F,$20,$34,$A6,$06,$FA,$30
                    db $FE,$0A,$FF,$B0,$36,$4E,$82,$5F
                    db $B0,$38,$57,$0E,$58,$62,$68,$62
                    db $79,$61,$8A,$60,$8E,$0A,$8F,$B0
                    db $36,$F5,$31,$F9,$73,$39,$F3,$B5
                    db $71,$B7,$31,$4D,$C8,$8A,$62,$9A
                    db $62,$AE,$05,$BB,$0E,$BF,$10,$34
                    db $CD,$4A,$FE,$82,$FF,$00,$34,$FE
                    db $01,$77,$FB,$DE,$0F,$DF,$B0,$36
                    db $EF,$00,$34,$4E,$82,$6D,$47,$2F
                    db $B0,$B6,$39,$73,$5F,$B0,$38,$0C
                    db $EA,$08,$3F,$B3,$00,$CC,$63,$F9
                    db $30,$69,$F9,$EA,$60,$FE,$07,$FF
                    db $A1,$3C,$F9,$61,$0F,$80,$B8,$0F
                    db $20,$34,$DE,$04,$DF,$A1,$3A,$DF
                    db $80,$36,$E9,$61,$EF,$42,$28,$EF
                    db $40,$34,$F4,$61,$FA,$60,$FF,$42
                    db $28,$0F,$42,$A8,$1F,$42,$28,$2F
                    db $42,$28,$3F,$42,$28,$3E,$0A,$3F
                    db $B0,$36,$3F,$20,$34,$7E,$0C,$8F
                    db $40,$38,$7E,$8A,$7F,$40,$36,$8E
                    db $08,$94,$36,$9F,$10,$34,$9F,$80
                    db $38,$9F,$40,$28,$AF,$40,$28,$BF
                    db $40,$28,$CF,$40,$28,$DF,$40,$28
                    db $EF,$40,$28,$FF,$40,$28,$FF,$80
                    db $36,$FF,$20,$34,$FE,$0A,$0D,$C4
                    db $61,$64,$71,$64,$81,$64,$CD,$43
                    db $CE,$09,$DD,$42,$DE,$0B,$DF,$70
                    db $38,$EF,$20,$34,$FF,$20,$34,$FE
                    db $02,$5D,$C7,$FD,$52,$71,$0F,$F0
                    db $20,$6E,$70,$E3,$64,$FC,$61,$FC
                    db $71,$13,$86,$2C,$61,$2C,$71,$43
                    db $64,$B2,$22,$B5,$62,$C7,$28,$22
                    db $A2,$52,$09,$56,$61,$6C,$03,$DB
                    db $71,$FC,$03,$F3,$20,$03,$A4,$0F
                    db $F1,$70,$40,$0C,$8C,$74,$9C,$66
                    db $D7,$01,$EC,$71,$89,$E1,$B6,$61
                    db $B9,$2A,$C7,$26,$F4,$23,$67,$E2
                    db $E8,$F2,$78,$82,$88,$01,$98,$02
                    db $A8,$02,$B8,$02,$03,$A1,$07,$26
                    db $23,$31,$21,$79,$4B,$71,$43,$22
                    db $CF,$F3,$30,$06,$E4,$16,$2A,$39
                    db $71,$58,$45,$5A,$45,$C6,$07,$DC
                    db $04,$3F,$F7,$E0,$3B,$71,$30,$31
                    db $8C,$71,$AC,$01,$E7,$63,$39,$8F
                    db $63,$20,$65,$0B,$68,$62,$8C,$00
                    db $0C,$81,$29,$63,$3C,$01,$57,$65
                    db $6C,$01,$85,$67,$9C,$04,$1D,$C1
                    db $5F,$F6,$20,$3D,$C7,$FD,$50,$50
                    db $0B,$1F,$0F,$F6,$20,$19,$96,$84
                    db $43,$B7,$1F,$5D,$CC,$6D,$48,$E0
                    db $42,$E3,$12,$39,$9C,$56,$43,$47
                    db $9B,$A4,$12,$C1,$06,$ED,$4D,$F4
                    db $42,$1B,$98,$B7,$13,$02,$C2,$03
                    db $12,$47,$1F,$AD,$48,$63,$9C,$82
                    db $48,$76,$93,$08,$94,$8E,$11,$B0
                    db $03,$C9,$0F,$1D,$C1,$2D,$4A,$3F
                    db $F0,$20,$0D,$0E,$0E,$40,$39,$71
                    db $7F,$F7,$30,$F2,$68,$01,$E9,$11
                    db $39,$68,$7A,$E0,$6A,$F0,$6A,$00
                    db $6A,$6D,$C5,$FD,$52,$21,$0F,$F0
                    db $20,$6E,$60,$6C,$F6,$CA,$30,$DC
                    db $02,$08,$F2,$37,$04,$56,$74,$7C
                    db $00,$DC,$01,$E7,$25,$47,$8B,$49
                    db $20,$6C,$02,$96,$74,$06,$82,$36
                    db $02,$66,$00,$A7,$22,$DC,$02,$0A
                    db $E0,$63,$22,$78,$72,$93,$09,$97
                    db $03,$A3,$25,$A7,$03,$B6,$24,$03
                    db $A2,$5C,$75,$65,$71,$7C,$00,$9C
                    db $00,$63,$A2,$67,$20,$77,$03,$87
                    db $20,$93,$0A,$97,$03,$A3,$22,$A7
                    db $20,$B7,$03,$BC,$00,$C7,$20,$DC
                    db $00,$FC,$01,$19,$8F,$1E,$20,$46
                    db $22,$4C,$61,$63,$00,$8E,$21,$D7
                    db $73,$46,$A6,$4C,$62,$68,$62,$73
                    db $01,$8C,$62,$D8,$62,$43,$A9,$C7
                    db $73,$EC,$06,$57,$F3,$7C,$00,$B5
                    db $65,$C5,$65,$DC,$00,$E3,$67,$7D
                    db $C1,$BF,$F6,$20,$AD,$C7,$FD,$90
                    db $10,$0B,$1B,$0F,$F6,$20,$07,$94
                    db $BC,$14,$BF,$F3,$10,$C7,$40,$FF
                    db $F6,$10,$D1,$80,$C3,$94,$CB,$17
                    db $C2,$44,$29,$8F,$77,$31,$0B,$96
                    db $76,$32,$C7,$75,$13,$F7,$1B,$61
                    db $2B,$61,$4B,$12,$59,$0F,$3B,$B0
                    db $3A,$40,$43,$12,$7A,$40,$7B,$30
                    db $B5,$41,$B6,$20,$C6,$07,$F3,$13
                    db $6B,$92,$79,$0F,$CC,$15,$CF,$F1
                    db $10,$1F,$F5,$90,$C3,$14,$B3,$95
                    db $A3,$95,$4D,$CA,$6B,$61,$7E,$11
                    db $8D,$41,$AF,$F0,$20,$8D,$C7,$FD
                    db $52,$31,$0F,$F0,$20,$6E,$74,$0D
                    db $02,$03,$33,$1F,$F2,$70,$39,$71
                    db $65,$04,$6C,$70,$77,$01,$84,$72
                    db $8C,$72,$B3,$34,$EC,$01,$EF,$F2
                    db $70,$0D,$04,$AC,$67,$CC,$01,$CF
                    db $F1,$70,$E7,$22,$17,$88,$23,$00
                    db $27,$23,$3C,$62,$65,$71,$67,$33
                    db $8C,$61,$DC,$01,$08,$FA,$45,$75
                    db $63,$0A,$73,$23,$7C,$02,$8F,$F2
                    db $70,$73,$A9,$9F,$F4,$70,$BF,$F4
                    db $70,$EF,$F3,$70,$39,$F1,$FC,$0A
                    db $0D,$0B,$13,$25,$4C,$01,$4F,$F2
                    db $70,$73,$0B,$77,$03,$DC,$08,$23
                    db $A2,$53,$09,$56,$03,$63,$24,$8C
                    db $02,$3F,$F3,$B0,$77,$63,$96,$74
                    db $B3,$77,$5D,$C1,$9F,$F6,$20,$8D
                    db $C7,$FD,$54,$11,$0F,$F6,$20,$CF
                    db $F2,$30,$F8,$62,$FE,$10,$3C,$B2
                    db $BD,$48,$EA,$62,$FC,$4D,$FC,$4D
                    db $17,$C9,$DA,$62,$0B,$97,$B7,$12
                    db $2C,$B1,$33,$43,$6C,$31,$AC,$41
                    db $0B,$98,$AD,$4A,$DB,$30,$27,$B0
                    db $B7,$14,$C6,$42,$C7,$96,$D6,$44
                    db $2B,$92,$39,$0F,$72,$41,$A7,$00
                    db $1B,$95,$97,$13,$6C,$95,$6F,$F1
                    db $10,$A2,$40,$BF,$F5,$10,$C2,$40
                    db $0B,$9A,$62,$42,$63,$12,$AD,$4A
                    db $0E,$91,$1D,$41,$5F,$F6,$20,$5D
                    db $C7,$FD,$57,$11,$0F,$F6,$20,$FE
                    db $10,$4B,$92,$59,$0F,$AD,$4C,$D3
                    db $93,$0B,$94,$29,$0F,$7B,$93,$99
                    db $0F,$0D,$06,$27,$12,$35,$0F,$23
                    db $B1,$57,$75,$A3,$31,$AB,$71,$F7
                    db $75,$23,$B1,$87,$13,$95,$0F,$0D
                    db $0A,$23,$35,$38,$13,$55,$00,$9B
                    db $16,$0B,$96,$C7,$75,$DD,$4A,$3B
                    db $92,$49,$0F,$AD,$4C,$29,$92,$52
                    db $40,$6C,$15,$6F,$F1,$10,$72,$40
                    db $BF,$F5,$10,$03,$93,$0A,$13,$12
                    db $41,$8B,$12,$99,$0F,$0D,$10,$47
                    db $16,$46,$45,$B3,$32,$13,$B1,$57
                    db $0E,$A7,$0E,$D3,$31,$53,$B1,$A6
                    db $31,$03,$B2,$13,$0E,$8D,$4D,$AE
                    db $11,$BD,$41,$DF,$F0,$20,$AD,$C7
                    db $FD,$52,$A1,$0F,$F0,$20,$6E,$65
                    db $04,$A0,$14,$07,$24,$2D,$57,$25
                    db $BC,$09,$4C,$80,$6F,$F3,$30,$A5
                    db $11,$A7,$63,$B7,$63,$E7,$20,$35
                    db $A0,$59,$11,$B4,$08,$C0,$04,$05
                    db $82,$15,$02,$25,$02,$3A,$10,$4C
                    db $01,$6C,$79,$95,$79,$73,$A7,$8F
                    db $F4,$70,$F3,$0A,$03,$A0,$93,$08
                    db $97,$73,$E3,$20,$39,$F1,$94,$07
                    db $AA,$30,$BC,$5C,$C7,$30,$24,$F2
                    db $27,$31,$8F,$F3,$30,$C6,$10,$C7
                    db $63,$D7,$63,$E7,$63,$F7,$63,$03
                    db $A5,$07,$25,$AA,$10,$03,$BF,$4F
                    db $F4,$70,$6C,$00,$DF,$F4,$70,$FC
                    db $00,$5C,$81,$77,$73,$9D,$4C,$C5
                    db $30,$E3,$30,$7D,$C1,$BD,$4D,$BF
                    db $F6,$20,$AD,$C7,$FD,$55,$A1,$0F
                    db $F6,$20,$9C,$01,$4F,$F6,$B0,$B3
                    db $34,$C9,$3F,$13,$BA,$A3,$B3,$BF
                    db $F4,$70,$0C,$84,$83,$3F,$9F,$F4
                    db $70,$EF,$F2,$70,$EC,$01,$2F,$F2
                    db $F0,$2C,$01,$6F,$F2,$70,$6C,$01
                    db $A8,$91,$AA,$10,$03,$B7,$61,$79
                    db $6F,$F5,$70,$39,$F1,$DB,$71,$03
                    db $A2,$17,$22,$33,$09,$43,$20,$5B
                    db $71,$48,$8F,$4A,$30,$5C,$5C,$A3
                    db $30,$2D,$C1,$6F,$06,$20,$4D,$C7
                    db $FD,$55,$A1,$0F,$F6,$20,$39,$91
                    db $68,$12,$A7,$12,$AA,$10,$C7,$07
                    db $E8,$12,$19,$91,$6C,$00,$78,$74
                    db $0E,$C2,$76,$83,$86,$03,$96,$03
                    db $A6,$03,$B6,$03,$C6,$03,$D6,$03
                    db $E6,$03,$F6,$03,$FE,$40,$29,$91
                    db $73,$29,$77,$53,$8C,$77,$59,$91
                    db $87,$13,$B6,$14,$BA,$10,$E8,$12
                    db $38,$92,$19,$8F,$2C,$00,$33,$67
                    db $4E,$42,$68,$03,$2E,$C0,$38,$72
                    db $A8,$11,$AA,$10,$49,$91,$6E,$42
                    db $DE,$40,$E7,$22,$0E,$C2,$4E,$C0
                    db $6C,$00,$79,$11,$8C,$01,$A7,$13
                    db $BC,$01,$D5,$15,$EC,$01,$03,$97
                    db $0E,$00,$6E,$01,$9D,$41,$BF,$F0
                    db $20,$AD,$C7,$FD,$10,$21,$39,$F1
                    db $09,$F1,$AD,$4C,$7C,$83,$96,$30
                    db $5B,$F1,$C8,$05,$1F,$F7,$B0,$93
                    db $67,$A3,$67,$B3,$67,$BD,$4D,$CC
                    db $08,$54,$FE,$70,$6A,$80,$6A,$90
                    db $6A,$A0,$6A,$B0,$6A,$C0,$6A,$D0
                    db $6A,$E0,$6A,$F0,$6A,$00,$EA,$6D
                    db $47,$FD,$00,$C1,$4C,$00,$02,$C9
                    db $BA,$49,$62,$C9,$A4,$20,$A5,$20
                    db $1A,$C9,$A3,$2C,$B2,$49,$56,$C2
                    db $6E,$00,$95,$41,$AD,$C7,$FD,$48
                    db $8F,$1E,$01,$4E,$02,$00,$8C,$09
                    db $0F,$6E,$0A,$EE,$82,$2E,$80,$30
                    db $20,$7E,$01,$87,$27,$07,$87,$17
                    db $23,$3E,$00,$9E,$05,$5B,$F1,$8B
                    db $71,$BB,$71,$EB,$71,$3E,$82,$7F
                    db $F8,$30,$FE,$0A,$3E,$84,$47,$29
                    db $48,$2E,$AF,$F1,$70,$CB,$71,$E7
                    db $0A,$F7,$23,$2B,$F1,$37,$51,$3E
                    db $00,$6F,$F0,$00,$8E,$04,$DF,$F2
                    db $30,$9C,$82,$CA,$12,$DC,$00,$E8
                    db $14,$FC,$00,$FE,$08,$4E,$8A,$88
                    db $74,$9E,$01,$A8,$52,$BF,$F7,$40
                    db $B8,$52,$C8,$52,$D8,$52,$E8,$52
                    db $EE,$0F,$4D,$C7,$0D,$0D,$0E,$02
                    db $68,$7A,$BE,$01,$EE,$0F,$6D,$C5
                    db $FD,$08,$0F,$0E,$01,$2E,$05,$38
                    db $20,$3E,$04,$48,$07,$55,$45,$57
                    db $45,$58,$25,$B8,$08,$BE,$05,$C8
                    db $20,$CE,$01,$DF,$FA,$40,$6D,$C7
                    db $0E,$81,$00,$5A,$2E,$02,$34,$42
                    db $36,$42,$37,$22,$73,$54,$83,$0B
                    db $87,$20,$93,$54,$90,$07,$B4,$41
                    db $B6,$41,$B7,$21,$DF,$FA,$40,$6D
                    db $C7,$0E,$81,$00,$5A,$14,$56,$24
                    db $56,$2E,$0C,$33,$43,$6E,$09,$8E
                    db $0B,$96,$48,$1E,$84,$3E,$05,$4A
                    db $48,$47,$0B,$CE,$01,$DF,$FA,$40
                    db $6D,$C7,$FD,$41,$01,$DA,$60,$E9
                    db $61,$F8,$62,$00,$E3,$07,$63,$10
                    db $63,$17,$63,$20,$63,$27,$63,$30
                    db $63,$37,$63,$40,$63,$47,$63,$50
                    db $63,$57,$63,$60,$63,$67,$63,$70
                    db $63,$77,$63,$80,$63,$87,$63,$90
                    db $63,$97,$63,$A0,$63,$A7,$63,$B0
                    db $63,$B7,$63,$C0,$63,$C7,$63,$D0
                    db $63,$D7,$63,$E0,$63,$E7,$63,$F0
                    db $63,$F7,$63,$47,$D3,$8A,$60,$99
                    db $61,$A8,$62,$B7,$63,$C6,$64,$D5
                    db $65,$E4,$66,$ED,$49,$F3,$67,$1A
                    db $CB,$E3,$67,$F3,$67,$00,$BF,$31
                    db $56,$3C,$02,$77,$53,$AC,$02,$B1
                    db $56,$E7,$53,$FE,$01,$77,$B9,$A3
                    db $43,$00,$BF,$29,$51,$39,$48,$61
                    db $55,$D2,$44,$D6,$54,$0C,$82,$30
                    db $39,$31,$66,$44,$47,$47,$32,$4A
                    db $47,$97,$32,$C1,$66,$DC,$02,$00
                    db $BF,$0C,$0F,$08,$4F,$04,$63,$14
                    db $63,$24,$63,$34,$63,$44,$63,$54
                    db $63,$64,$63,$74,$63,$84,$63,$94
                    db $63,$A4,$63,$B4,$63,$C4,$63,$D4
                    db $63,$E4,$63,$F4,$63,$00,$BF,$75
                    db $60,$FE,$01,$0C,$87,$9A,$60,$A9
                    db $61,$B8,$62,$C7,$63,$D0,$6A,$D5
                    db $0D,$E0,$6A,$F0,$6A,$00,$EA,$6D
                    db $4A,$7D,$47,$FD

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
