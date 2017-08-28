;Super Mario Bros. 3

CODE_298000:    LDA $5F,x                   ; $29:8000: B5 5F       ;
CODE_298002:    CLC                         ; $29:8002: 18          ;
CODE_298003:    ADC #$08                    ; $29:8003: 69 08       ;
CODE_298005:    STA $5F,x                   ; $29:8005: 95 5F       ;
CODE_298007:    LDA $71,x                   ; $29:8007: B5 71       ;
CODE_298009:    STA $68,x                   ; $29:8009: 95 68       ;
CODE_29800B:    LDA $56,x                   ; $29:800B: B5 56       ;
CODE_29800D:    STA $4D,x                   ; $29:800D: 95 4D       ;
CODE_29800F:    RTL                         ; $29:800F: 6B          ;

CODE_298010:    LDA $0691,x                 ; $29:8010: BD 91 06    ;
CODE_298013:    BEQ CODE_298018             ; $29:8013: F0 03       ;
CODE_298015:    DEC $0691,x                 ; $29:8015: DE 91 06    ;
CODE_298018:    LDA $0518,x                 ; $29:8018: BD 18 05    ;
CODE_29801B:    BNE CODE_298066             ; $29:801B: D0 49       ;
CODE_29801D:    LDA $0691,x                 ; $29:801D: BD 91 06    ;
CODE_298020:    BNE CODE_298066             ; $29:8020: D0 44       ;
CODE_298022:    LDY $9E,x                   ; $29:8022: B4 9E       ;
CODE_298024:    BPL CODE_298066             ; $29:8024: 10 40       ;
CODE_298026:    CPY #$E0                    ; $29:8026: C0 E0       ;
CODE_298028:    BCS CODE_298066                     ; $29:8028: B0 3C       ;
CODE_29802A:    LDA #$04                    ; $29:802A: A9 04       ;
CODE_29802C:    STA $0691,x                 ; $29:802C: 9D 91 06    ;
CODE_29802F:    JSL CODE_278A72             ; $29:802F: 22 72 8A 27 ;
CODE_298033:    LDA $2137                   ; $29:8033: AD 37 21    ;
CODE_298036:    LDA $213C                   ; $29:8036: AD 3C 21    ;
CODE_298039:    AND #$07                    ; $29:8039: 29 07       ;
CODE_29803B:    CLC                         ; $29:803B: 18          ;
CODE_29803C:    ADC $5F,x                   ; $29:803C: 75 5F       ;
CODE_29803E:    STA $05C9,y                 ; $29:803E: 99 C9 05    ;
CODE_298041:    LDA $44,x                   ; $29:8041: B5 44       ;
CODE_298043:    ADC #$00                    ; $29:8043: 69 00       ;
CODE_298045:    STA $00E2,y                 ; $29:8045: 99 E2 00    ;
CODE_298048:    LDA $71,x                   ; $29:8048: B5 71       ;
CODE_29804A:    CLC                         ; $29:804A: 18          ;
CODE_29804B:    ADC #$0E                    ; $29:804B: 69 0E       ;
CODE_29804D:    STA $05BF,y                 ; $29:804D: 99 BF 05    ;
CODE_298050:    LDA $56,x                   ; $29:8050: B5 56       ;
CODE_298052:    ADC #$00                    ; $29:8052: 69 00       ;
CODE_298054:    STA $1FD7,y                 ; $29:8054: 99 D7 1F    ;
CODE_298057:    LDA #$00                    ; $29:8057: A9 00       ;
CODE_298059:    STA $06BD,y                 ; $29:8059: 99 BD 06    ;
CODE_29805C:    LDA #$04                    ; $29:805C: A9 04       ;
CODE_29805E:    STA $06D1,y                 ; $29:805E: 99 D1 06    ;
CODE_298061:    LDA #$17                    ; $29:8061: A9 17       ;
CODE_298063:    STA $1FC8,y                 ; $29:8063: 99 C8 1F    ;
CODE_298066:    LDA $0518,x                 ; $29:8066: BD 18 05    ;
CODE_298069:    BEQ CODE_2980B6             ; $29:8069: F0 4B       ;
CODE_29806B:    STA $0651,x                 ; $29:806B: 9D 51 06    ;
CODE_29806E:    CMP #$01                    ; $29:806E: C9 01       ;
CODE_298070:    BNE CODE_2980B5             ; $29:8070: D0 43       ;
CODE_298072:    LDA #$27                    ; $29:8072: A9 27       ;
CODE_298074:    STA $1203                   ; $29:8074: 8D 03 12    ;
CODE_298077:    JSL CODE_27A27C             ; $29:8077: 22 7C A2 27 ;
CODE_29807B:    LDY #$08                    ; $29:807B: A0 08       ;
CODE_29807D:    JSL CODE_278A74             ; $29:807D: 22 74 8A 27 ;
CODE_298081:    LDA $5F,x                   ; $29:8081: B5 5F       ;
CODE_298083:    STA $05C9,y                 ; $29:8083: 99 C9 05    ;
CODE_298086:    LDA $44,x                   ; $29:8086: B5 44       ;
CODE_298088:    STA $00E2,y                 ; $29:8088: 99 E2 00    ;
CODE_29808B:    LDA $0518,x                 ; $29:808B: BD 18 05    ;
CODE_29808E:    BEQ CODE_29809C             ; $29:808E: F0 0C       ;
CODE_298090:    LDA $71,x                   ; $29:8090: B5 71       ;
CODE_298092:    STA $05BF,y                 ; $29:8092: 99 BF 05    ;
CODE_298095:    LDA $56,x                   ; $29:8095: B5 56       ;
CODE_298097:    STA $1FD7,y                 ; $29:8097: 99 D7 1F    ;
CODE_29809A:    BRA CODE_2980AB             ; $29:809A: 80 0F       ;

CODE_29809C:    LDA $71,x                   ; $29:809C: B5 71       ;
CODE_29809E:    CLC                         ; $29:809E: 18          ;
CODE_29809F:    ADC #$04                    ; $29:809F: 69 04       ;
CODE_2980A1:    STA $05BF,y                 ; $29:80A1: 99 BF 05    ;
CODE_2980A4:    LDA $56,x                   ; $29:80A4: B5 56       ;
CODE_2980A6:    ADC #$00                    ; $29:80A6: 69 00       ;
CODE_2980A8:    STA $1FD7,y                 ; $29:80A8: 99 D7 1F    ;
CODE_2980AB:    LDA #$18                    ; $29:80AB: A9 18       ;
CODE_2980AD:    STA $1FC8,y                 ; $29:80AD: 99 C8 1F    ;
CODE_2980B0:    LDA #$18                    ; $29:80B0: A9 18       ;
CODE_2980B2:    STA $06D1,y                 ; $29:80B2: 99 D1 06    ;
CODE_2980B5:    RTL                         ; $29:80B5: 6B          ;

CODE_2980B6:    LDA $9C                     ; $29:80B6: A5 9C       ;
CODE_2980B8:    BEQ CODE_2980BD             ; $29:80B8: F0 03       ;
CODE_2980BA:    JMP CODE_298143             ; $29:80BA: 4C 43 81    ;

CODE_2980BD:    JSL CODE_279B6F             ; $29:80BD: 22 6F 9B 27 ;
CODE_2980C1:    LDA #$00                    ; $29:80C1: A9 00       ;
CODE_2980C3:    LDY $9E,x                   ; $29:80C3: B4 9E       ;
CODE_2980C5:    BMI CODE_2980C9             ; $29:80C5: 30 02       ;
CODE_2980C7:    LDA #$80                    ; $29:80C7: A9 80       ;
CODE_2980C9:    STA $0679,x                 ; $29:80C9: 9D 79 06    ;
CODE_2980CC:    LDA $15                     ; $29:80CC: A5 15       ;
CODE_2980CE:    AND #$03                    ; $29:80CE: 29 03       ;
CODE_2980D0:    BNE CODE_2980E1             ; $29:80D0: D0 0F       ;
CODE_2980D2:    INC $0669,x                 ; $29:80D2: FE 69 06    ;
CODE_2980D5:    LDA $0669,x                 ; $29:80D5: BD 69 06    ;
CODE_2980D8:    CMP #$03                    ; $29:80D8: C9 03       ;
CODE_2980DA:    BNE CODE_2980E1             ; $29:80DA: D0 05       ;
CODE_2980DC:    LDA #$00                    ; $29:80DC: A9 00       ;
CODE_2980DE:    STA $0669,x                 ; $29:80DE: 9D 69 06    ;
CODE_2980E1:    LDA $9E,x                   ; $29:80E1: B5 9E       ;
CODE_2980E3:    BMI CODE_298129             ; $29:80E3: 30 44       ;
CODE_2980E5:    JSL CODE_278B93             ; $29:80E5: 22 93 8B 27 ;
CODE_2980E9:    LDA $1F76                   ; $29:80E9: AD 76 1F    ;
CODE_2980EC:    CMP #$94                    ; $29:80EC: C9 94       ;
CODE_2980EE:    BNE CODE_298129             ; $29:80EE: D0 39       ;
CODE_2980F0:    LDA $71,x                   ; $29:80F0: B5 71       ;
CODE_2980F2:    SEC                         ; $29:80F2: 38          ;
CODE_2980F3:    SBC $68,x                   ; $29:80F3: F5 68       ;
CODE_2980F5:    STA $00                     ; $29:80F5: 85 00       ;
CODE_2980F7:    LDA $56,x                   ; $29:80F7: B5 56       ;
CODE_2980F9:    SBC $4D,x                   ; $29:80F9: F5 4D       ;
CODE_2980FB:    LSR A                       ; $29:80FB: 4A          ;
CODE_2980FC:    ROR $00                     ; $29:80FC: 66 00       ;
CODE_2980FE:    LDA $00                     ; $29:80FE: A5 00       ;
CODE_298100:    LSR A                       ; $29:8100: 4A          ;
CODE_298101:    LSR A                       ; $29:8101: 4A          ;
CODE_298102:    LSR A                       ; $29:8102: 4A          ;
CODE_298103:    TAY                         ; $29:8103: A8          ;
CODE_298104:    LDA.w DATA_21C548,y                 ; $29:8104: B9 48 C5    ;
CODE_298107:    BMI CODE_29810E             ; $29:8107: 30 05       ;
CODE_298109:    STA $06A6,x                 ; $29:8109: 9D A6 06    ;
CODE_29810C:    LDA #$80                    ; $29:810C: A9 80       ;
CODE_29810E:    STA $9E,x                   ; $29:810E: 95 9E       ;
CODE_298110:    LDA $71,x                   ; $29:8110: B5 71       ;
CODE_298112:    PHA                         ; $29:8112: 48          ;
CODE_298113:    SBC #$04                    ; $29:8113: E9 04       ;
CODE_298115:    STA $71,x                   ; $29:8115: 95 71       ;
CODE_298117:    JSL CODE_298077             ; $29:8117: 22 77 80 29 ;
CODE_29811B:    PLA                         ; $29:811B: 68          ;
CODE_29811C:    STA $71,x                   ; $29:811C: 95 71       ;
CODE_29811E:    LDA $0783,x                 ; $29:811E: BD 83 07    ;
CODE_298121:    AND #$3F                    ; $29:8121: 29 3F       ;
CODE_298123:    ORA #$40                    ; $29:8123: 09 40       ;
CODE_298125:    STA $0518,x                 ; $29:8125: 9D 18 05    ;
CODE_298128:    RTL                         ; $29:8128: 6B          ;

CODE_298129:    JSL CODE_27A7E4             ; $29:8129: 22 E4 A7 27 ;
CODE_29812D:    LDA $06A6,x                 ; $29:812D: BD A6 06    ;
CODE_298130:    BNE CODE_29813F             ; $29:8130: D0 0D       ;
CODE_298132:    LDA $9E,x                   ; $29:8132: B5 9E       ;
CODE_298134:    BMI CODE_29813A             ; $29:8134: 30 04       ;
CODE_298136:    CMP #$70                    ; $29:8136: C9 70       ;
CODE_298138:    BCS CODE_29813F                     ; $29:8138: B0 05       ;
CODE_29813A:    CLC                         ; $29:813A: 18          ;
CODE_29813B:    ADC #$02                    ; $29:813B: 69 02       ;
CODE_29813D:    STA $9E,x                   ; $29:813D: 95 9E       ;
CODE_29813F:    JSL CODE_279BC3             ; $29:813F: 22 C3 9B 27 ;
CODE_298143:    JSL CODE_279EDD             ; $29:8143: 22 DD 9E 27 ;
CODE_298147:    RTL                         ; $29:8147: 6B          ;

CODE_298148:    JSL CODE_27A837             ; $29:8148: 22 37 A8 27 ;
CODE_29814C:    LDA.w DATA_21C55E,y                 ; $29:814C: B9 5E C5    ;
CODE_29814F:    STA $8C,x                   ; $29:814F: 95 8C       ;
CODE_298151:    RTL                         ; $29:8151: 6B          ;

CODE_298152:    LDA $0565                   ; $29:8152: AD 65 05    ;
CODE_298155:    LSR A                       ; $29:8155: 4A          ;
CODE_298156:    LSR A                       ; $29:8156: 4A          ;
CODE_298157:    AND #$03                    ; $29:8157: 29 03       ;
CODE_298159:    STA $0669,x                 ; $29:8159: 9D 69 06    ;
CODE_29815C:    TAY                         ; $29:815C: A8          ;
CODE_29815D:    LDA.w DATA_21C560,y                 ; $29:815D: B9 60 C5    ;
CODE_298160:    STA $1FE9,x                 ; $29:8160: 9D E9 1F    ;
CODE_298163:    JSL CODE_279EBB             ; $29:8163: 22 BB 9E 27 ;
CODE_298167:    LDA $0802,y                 ; $29:8167: B9 02 08    ;
CODE_29816A:    AND #$3F                    ; $29:816A: 29 3F       ;
CODE_29816C:    STA $0802,y                 ; $29:816C: 99 02 08    ;
CODE_29816F:    ORA #$C0                    ; $29:816F: 09 C0       ;
CODE_298171:    STA $0806,y                 ; $29:8171: 99 06 08    ;
CODE_298174:    LDA $0661,x                 ; $29:8174: BD 61 06    ;
CODE_298177:    CMP #$02                    ; $29:8177: C9 02       ;
CODE_298179:    BNE CODE_2981AE             ; $29:8179: D0 33       ;
CODE_29817B:    LDA $9C                     ; $29:817B: A5 9C       ;
CODE_29817D:    BNE CODE_2981AE             ; $29:817D: D0 2F       ;
CODE_29817F:    LDA $15                     ; $29:817F: A5 15       ;
CODE_298181:    LSR A                       ; $29:8181: 4A          ;
CODE_298182:    NOP                         ; $29:8182: EA          ;
CODE_298183:    NOP                         ; $29:8183: EA          ;
CODE_298184:    AND #$01                    ; $29:8184: 29 01       ;
CODE_298186:    STA $0669,x                 ; $29:8186: 9D 69 06    ;
CODE_298189:    JSL CODE_279BC3             ; $29:8189: 22 C3 9B 27 ;
CODE_29818D:    JSL CODE_279B6F             ; $29:818D: 22 6F 9B 27 ;
CODE_298191:    JSL CODE_27983B             ; $29:8191: 22 3B 98 27 ;
CODE_298195:    LDA $A7,x                   ; $29:8195: B5 A7       ;
CODE_298197:    AND #$04                    ; $29:8197: 29 04       ;
CODE_298199:    BEQ CODE_2981B3             ; $29:8199: F0 18       ;
CODE_29819B:    JSL CODE_278B67             ; $29:819B: 22 67 8B 27 ;
CODE_29819F:    LDA $0518,x                 ; $29:819F: BD 18 05    ;
CODE_2981A2:    BNE CODE_2981AE             ; $29:81A2: D0 0A       ;
CODE_2981A4:    LDA $07B5                   ; $29:81A4: AD B5 07    ;
CODE_2981A7:    CMP $4D,x                   ; $29:81A7: D5 4D       ;
CODE_2981A9:    BEQ CODE_2981AE             ; $29:81A9: F0 03       ;
CODE_2981AB:    JSR CODE_2981B9             ; $29:81AB: 20 B9 81    ;
CODE_2981AE:    LDA $07B5                   ; $29:81AE: AD B5 07    ;
CODE_2981B1:    STA $4D,x                   ; $29:81B1: 95 4D       ;
CODE_2981B3:    LDA $A7,x                   ; $29:81B3: B5 A7       ;
CODE_2981B5:    AND #$03                    ; $29:81B5: 29 03       ;
CODE_2981B7:    BEQ CODE_2981CA             ; $29:81B7: F0 11       ;
CODE_2981B9:    LDA #$20                    ; $29:81B9: A9 20       ;
CODE_2981BB:    STA $0518,x                 ; $29:81BB: 9D 18 05    ;
CODE_2981BE:    JSL CODE_279905             ; $29:81BE: 22 05 99 27 ;
CODE_2981C2:    JSL CODE_27A7EF             ; $29:81C2: 22 EF A7 27 ;
CODE_2981C6:    JSL CODE_27A7EF             ; $29:81C6: 22 EF A7 27 ;
CODE_2981CA:    RTL                         ; $29:81CA: 6B          ;

CODE_2981CB:    JSL CODE_279BC3             ; $29:81CB: 22 C3 9B 27 ;
CODE_2981CF:    JSR CODE_2981E6             ; $29:81CF: 20 E6 81    ;
CODE_2981D2:    LDA $0661,x                 ; $29:81D2: BD 61 06    ;
CODE_2981D5:    CMP #$02                    ; $29:81D5: C9 02       ;
CODE_2981D7:    BNE CODE_2981CA             ; $29:81D7: D0 F1       ;
CODE_2981D9:    LDA $9C                     ; $29:81D9: A5 9C       ;
CODE_2981DB:    BNE CODE_2981CA             ; $29:81DB: D0 ED       ;
CODE_2981DD:    JSL CODE_27A7EF             ; $29:81DD: 22 EF A7 27 ;
CODE_2981E1:    JSL CODE_279B6F             ; $29:81E1: 22 6F 9B 27 ;
CODE_2981E5:    RTL                         ; $29:81E5: 6B          ;

CODE_2981E6:    LDA #$00                    ; $29:81E6: A9 00       ;
CODE_2981E8:    STA $0669,x                 ; $29:81E8: 9D 69 06    ;
CODE_2981EB:    STA $0679,x                 ; $29:81EB: 9D 79 06    ;
CODE_2981EE:    LDA $0651,x                 ; $29:81EE: BD 51 06    ;
CODE_2981F1:    STA $1CEF                   ; $29:81F1: 8D EF 1C    ;
CODE_2981F4:    LDA $5F,x                   ; $29:81F4: B5 5F       ;
CODE_2981F6:    PHA                         ; $29:81F6: 48          ;
CODE_2981F7:    CLC                         ; $29:81F7: 18          ;
CODE_2981F8:    ADC #$08                    ; $29:81F8: 69 08       ;
CODE_2981FA:    STA $5F,x                   ; $29:81FA: 95 5F       ;
CODE_2981FC:    LDA $44,x                   ; $29:81FC: B5 44       ;
CODE_2981FE:    PHA                         ; $29:81FE: 48          ;
CODE_2981FF:    ADC #$00                    ; $29:81FF: 69 00       ;
CODE_298201:    STA $44,x                   ; $29:8201: 95 44       ;
CODE_298203:    ASL $0651,x                 ; $29:8203: 1E 51 06    ;
CODE_298206:    JSL CODE_279F51             ; $29:8206: 22 51 9F 27 ;
CODE_29820A:    PLA                         ; $29:820A: 68          ;
CODE_29820B:    STA $44,x                   ; $29:820B: 95 44       ;
CODE_29820D:    PLA                         ; $29:820D: 68          ;
CODE_29820E:    STA $5F,x                   ; $29:820E: 95 5F       ;
CODE_298210:    JSL CODE_279DC2             ; $29:8210: 22 C2 9D 27 ;
CODE_298214:    LDA $0681,x                 ; $29:8214: BD 81 06    ;
CODE_298217:    BEQ CODE_29821C             ; $29:8217: F0 03       ;
CODE_298219:    BRL CODE_2982BE             ; $29:8219: 82 A2 00    ;

CODE_29821C:    REP #$10                    ; $29:821C: C2 10       ;
CODE_29821E:    LDA $83,x                   ; $29:821E: B5 83       ;
CODE_298220:    STA $00                     ; $29:8220: 85 00       ;
CODE_298222:    LDY $C6,x                   ; $29:8222: B4 C6       ;
CODE_298224:    LDA $1CEF                   ; $29:8224: AD EF 1C    ;
CODE_298227:    BMI CODE_298237             ; $29:8227: 30 0E       ;
CODE_298229:    LDA $00                     ; $29:8229: A5 00       ;
CODE_29822B:    CLC                         ; $29:822B: 18          ;
CODE_29822C:    ADC #$08                    ; $29:822C: 69 08       ;
CODE_29822E:    STA $0811,y                 ; $29:822E: 99 11 08    ;
CODE_298231:    CLC                         ; $29:8231: 18          ;
CODE_298232:    ADC #$08                    ; $29:8232: 69 08       ;
CODE_298234:    STA $0819,y                 ; $29:8234: 99 19 08    ;
CODE_298237:    LDA $1CEF                   ; $29:8237: AD EF 1C    ;
CODE_29823A:    AND #$10                    ; $29:823A: 29 10       ;
CODE_29823C:    BNE CODE_29824C             ; $29:823C: D0 0E       ;
CODE_29823E:    LDA $00                     ; $29:823E: A5 00       ;
CODE_298240:    CLC                         ; $29:8240: 18          ;
CODE_298241:    ADC #$08                    ; $29:8241: 69 08       ;
CODE_298243:    STA $0815,y                 ; $29:8243: 99 15 08    ;
CODE_298246:    CLC                         ; $29:8246: 18          ;
CODE_298247:    ADC #$08                    ; $29:8247: 69 08       ;
CODE_298249:    STA $081D,y                 ; $29:8249: 99 1D 08    ;
CODE_29824C:    LDA #$2A                    ; $29:824C: A9 2A       ;
CODE_29824E:    STA $0803,y                 ; $29:824E: 99 03 08    ;
CODE_298251:    STA $0807,y                 ; $29:8251: 99 07 08    ;
CODE_298254:    STA $080B,y                 ; $29:8254: 99 0B 08    ;
CODE_298257:    STA $080F,y                 ; $29:8257: 99 0F 08    ;
CODE_29825A:    LDA #$B8                    ; $29:825A: A9 B8       ;
CODE_29825C:    STA $0802,y                 ; $29:825C: 99 02 08    ;
CODE_29825F:    INC A                       ; $29:825F: 1A          ;
CODE_298260:    STA $080A,y                 ; $29:8260: 99 0A 08    ;
CODE_298263:    INC A                       ; $29:8263: 1A          ;
CODE_298264:    STA $0806,y                 ; $29:8264: 99 06 08    ;
CODE_298267:    INC A                       ; $29:8267: 1A          ;
CODE_298268:    STA $080E,y                 ; $29:8268: 99 0E 08    ;
CODE_29826B:    LDA #$92                    ; $29:826B: A9 92       ;
CODE_29826D:    STA $0812,y                 ; $29:826D: 99 12 08    ;
CODE_298270:    INC A                       ; $29:8270: 1A          ;
CODE_298271:    STA $081A,y                 ; $29:8271: 99 1A 08    ;
CODE_298274:    LDA #$9A                    ; $29:8274: A9 9A       ;
CODE_298276:    STA $0816,y                 ; $29:8276: 99 16 08    ;
CODE_298279:    INC A                       ; $29:8279: 1A          ;
CODE_29827A:    STA $081E,y                 ; $29:827A: 99 1E 08    ;
CODE_29827D:    LDA #$2A                    ; $29:827D: A9 2A       ;
CODE_29827F:    STA $0813,y                 ; $29:827F: 99 13 08    ;
CODE_298282:    STA $0817,y                 ; $29:8282: 99 17 08    ;
CODE_298285:    STA $081B,y                 ; $29:8285: 99 1B 08    ;
CODE_298288:    STA $081F,y                 ; $29:8288: 99 1F 08    ;
CODE_29828B:    REP #$20                    ; $29:828B: C2 20       ;
CODE_29828D:    LDA $9B                     ; $29:828D: A5 9B       ;
CODE_29828F:    AND #$00FF                  ; $29:828F: 29 FF 00    ;
CODE_298292:    TAX                         ; $29:8292: AA          ;
CODE_298293:    SEP #$20                    ; $29:8293: E2 20       ;
CODE_298295:    LDA $7A,x                   ; $29:8295: B5 7A       ;
CODE_298297:    STA $0810,y                 ; $29:8297: 99 10 08    ;
CODE_29829A:    STA $0818,y                 ; $29:829A: 99 18 08    ;
CODE_29829D:    CLC                         ; $29:829D: 18          ;
CODE_29829E:    ADC #$18                    ; $29:829E: 69 18       ;
CODE_2982A0:    STA $0814,y                 ; $29:82A0: 99 14 08    ;
CODE_2982A3:    STA $081C,y                 ; $29:82A3: 99 1C 08    ;
CODE_2982A6:    REP #$20                    ; $29:82A6: C2 20       ;
CODE_2982A8:    TYA                         ; $29:82A8: 98          ;
CODE_2982A9:    LSR A                       ; $29:82A9: 4A          ;
CODE_2982AA:    LSR A                       ; $29:82AA: 4A          ;
CODE_2982AB:    TAY                         ; $29:82AB: A8          ;
CODE_2982AC:    SEP #$20                    ; $29:82AC: E2 20       ;
CODE_2982AE:    LDA #$00                    ; $29:82AE: A9 00       ;
CODE_2982B0:    STA $0A24,y                 ; $29:82B0: 99 24 0A    ;
CODE_2982B3:    STA $0A25,y                 ; $29:82B3: 99 25 0A    ;
CODE_2982B6:    STA $0A26,y                 ; $29:82B6: 99 26 0A    ;
CODE_2982B9:    STA $0A27,y                 ; $29:82B9: 99 27 0A    ;
CODE_2982BC:    SEP #$10                    ; $29:82BC: E2 10       ;
CODE_2982BE:    RTS                         ; $29:82BE: 60          ;

CODE_2982BF:    LDA $71,x                   ; $29:82BF: B5 71       ;
CODE_2982C1:    CLC                         ; $29:82C1: 18          ;
CODE_2982C2:    ADC #$0F                    ; $29:82C2: 69 0F       ;
CODE_2982C4:    STA $71,x                   ; $29:82C4: 95 71       ;
CODE_2982C6:    LDA $56,x                   ; $29:82C6: B5 56       ;
CODE_2982C8:    ADC #$00                    ; $29:82C8: 69 00       ;
CODE_2982CA:    STA $56,x                   ; $29:82CA: 95 56       ;
CODE_2982CC:    RTL                         ; $29:82CC: 6B          ;

CODE_2982CD:    DEC $71,x                   ; $29:82CD: D6 71       ;
CODE_2982CF:    LDA $71,x                   ; $29:82CF: B5 71       ;
CODE_2982D1:    CMP #$FF                    ; $29:82D1: C9 FF       ;
CODE_2982D3:    BNE CODE_2982D7             ; $29:82D3: D0 02       ;
CODE_2982D5:    DEC $56,x                   ; $29:82D5: D6 56       ;
CODE_2982D7:    RTL                         ; $29:82D7: 6B          ;

CODE_2982D8:    JSL CODE_279BC3             ; $29:82D8: 22 C3 9B 27 ;
CODE_2982DC:    LDA $9C                     ; $29:82DC: A5 9C       ;
CODE_2982DE:    BNE CODE_298301             ; $29:82DE: D0 21       ;
CODE_2982E0:    LDA $0518,x                 ; $29:82E0: BD 18 05    ;
CODE_2982E3:    BNE CODE_298301             ; $29:82E3: D0 1C       ;
CODE_2982E5:    INC $4D,x                   ; $29:82E5: F6 4D       ;
CODE_2982E7:    LDA $4D,x                   ; $29:82E7: B5 4D       ;
CODE_2982E9:    CMP #$06                    ; $29:82E9: C9 06       ;
CODE_2982EB:    BCC CODE_2982EF             ; $29:82EB: 90 02       ;
CODE_2982ED:    LDA #$00                    ; $29:82ED: A9 00       ;
CODE_2982EF:    STA $4D,x                   ; $29:82EF: 95 4D       ;
CODE_2982F1:    TAY                         ; $29:82F1: A8          ;
CODE_2982F2:    LDA.w DATA_21C597,y                 ; $29:82F2: B9 97 C5    ;
CODE_2982F5:    STA $0518,x                 ; $29:82F5: 9D 18 05    ;
CODE_2982F8:    CPY #$03                    ; $29:82F8: C0 03       ;
CODE_2982FA:    BNE CODE_298301             ; $29:82FA: D0 05       ;
CODE_2982FC:    LDA #$17                    ; $29:82FC: A9 17       ;
CODE_2982FE:    STA $1203                   ; $29:82FE: 8D 03 12    ;
CODE_298301:    LDA $0671,x                 ; $29:8301: BD 71 06    ;
CODE_298304:    CMP #$9D                    ; $29:8304: C9 9D       ;
CODE_298306:    BEQ CODE_298310             ; $29:8306: F0 08       ;
CODE_298308:    CMP #$B2                    ; $29:8308: C9 B2       ;
CODE_29830A:    BEQ CODE_29837E             ; $29:830A: F0 72       ;
CODE_29830C:    JSR CODE_2983F7             ; $29:830C: 20 F7 83    ;
CODE_29830F:    RTL                         ; $29:830F: 6B          ;

CODE_298310:    LDA $5F,x                   ; $29:8310: B5 5F       ;
CODE_298312:    PHA                         ; $29:8312: 48          ;
CODE_298313:    LDY $4D,x                   ; $29:8313: B4 4D       ;
CODE_298315:    BEQ CODE_29837A             ; $29:8315: F0 63       ;
CODE_298317:    LDA $0565                   ; $29:8317: AD 65 05    ;
CODE_29831A:    LSR A                       ; $29:831A: 4A          ;
CODE_29831B:    CPY #$03                    ; $29:831B: C0 03       ;
CODE_29831D:    BEQ CODE_298322             ; $29:831D: F0 03       ;
CODE_29831F:    LSR A                       ; $29:831F: 4A          ;
CODE_298320:    LSR A                       ; $29:8320: 4A          ;
CODE_298321:    LSR A                       ; $29:8321: 4A          ;
CODE_298322:    LSR A                       ; $29:8322: 4A          ;
CODE_298323:    LDA #$00                    ; $29:8323: A9 00       ;
CODE_298325:    BCC CODE_298329             ; $29:8325: 90 02       ;
CODE_298327:    LDA #$40                    ; $29:8327: A9 40       ;
CODE_298329:    STA $0679,x                 ; $29:8329: 9D 79 06    ;
CODE_29832C:    CPY #$03                    ; $29:832C: C0 03       ;
CODE_29832E:    BEQ CODE_29833E             ; $29:832E: F0 0E       ;
CODE_298330:    LDA #$04                    ; $29:8330: A9 04       ;
CODE_298332:    LDY $0679,x                 ; $29:8332: BC 79 06    ;
CODE_298335:    BEQ CODE_298339             ; $29:8335: F0 02       ;
CODE_298337:    LDA #$FC                    ; $29:8337: A9 FC       ;
CODE_298339:    CLC                         ; $29:8339: 18          ;
CODE_29833A:    ADC $5F,x                   ; $29:833A: 75 5F       ;
CODE_29833C:    STA $5F,x                   ; $29:833C: 95 5F       ;
CODE_29833E:    LDY $4D,x                   ; $29:833E: B4 4D       ;
CODE_298340:    LDA.w DATA_21C59D,y                 ; $29:8340: B9 9D C5    ;
CODE_298343:    PHA                         ; $29:8343: 48          ;
CODE_298344:    STA $0669,x                 ; $29:8344: 9D 69 06    ;
CODE_298347:    JSL CODE_279F51             ; $29:8347: 22 51 9F 27 ;
CODE_29834B:    PLA                         ; $29:834B: 68          ;
CODE_29834C:    CLC                         ; $29:834C: 18          ;
CODE_29834D:    ADC #$06                    ; $29:834D: 69 06       ;
CODE_29834F:    STA $0669,x                 ; $29:834F: 9D 69 06    ;
CODE_298352:    LDA $71,x                   ; $29:8352: B5 71       ;
CODE_298354:    PHA                         ; $29:8354: 48          ;
CODE_298355:    SEC                         ; $29:8355: 38          ;
CODE_298356:    SBC #$10                    ; $29:8356: E9 10       ;
CODE_298358:    STA $71,x                   ; $29:8358: 95 71       ;
CODE_29835A:    LDA $56,x                   ; $29:835A: B5 56       ;
CODE_29835C:    PHA                         ; $29:835C: 48          ;
CODE_29835D:    SBC #$00                    ; $29:835D: E9 00       ;
CODE_29835F:    STA $56,x                   ; $29:835F: 95 56       ;
CODE_298361:    REP #$20                    ; $29:8361: C2 20       ;
CODE_298363:    LDA $C6,x                   ; $29:8363: B5 C6       ;
CODE_298365:    CLC                         ; $29:8365: 18          ;
CODE_298366:    ADC #$0010                  ; $29:8366: 69 10 00    ;
CODE_298369:    STA $C6,x                   ; $29:8369: 95 C6       ;
CODE_29836B:    SEP #$20                    ; $29:836B: E2 20       ;
CODE_29836D:    JSL CODE_279EBB             ; $29:836D: 22 BB 9E 27 ;
CODE_298371:    PLA                         ; $29:8371: 68          ;
CODE_298372:    STA $56,x                   ; $29:8372: 95 56       ;
CODE_298374:    PLA                         ; $29:8374: 68          ;
CODE_298375:    STA $71,x                   ; $29:8375: 95 71       ;
CODE_298377:    JSR CODE_2984EA             ; $29:8377: 20 EA 84    ;
CODE_29837A:    PLA                         ; $29:837A: 68          ;
CODE_29837B:    STA $5F,x                   ; $29:837B: 95 5F       ;
CODE_29837D:    RTL                         ; $29:837D: 6B          ;

CODE_29837E:    LDA #$80                    ; $29:837E: A9 80       ;
CODE_298380:    STA $0679,x                 ; $29:8380: 9D 79 06    ;
CODE_298383:    LDA $5F,x                   ; $29:8383: B5 5F       ;
CODE_298385:    PHA                         ; $29:8385: 48          ;
CODE_298386:    LDY $4D,x                   ; $29:8386: B4 4D       ;
CODE_298388:    BEQ CODE_2983F3             ; $29:8388: F0 69       ;
CODE_29838A:    LDA $0565                   ; $29:838A: AD 65 05    ;
CODE_29838D:    LSR A                       ; $29:838D: 4A          ;
CODE_29838E:    CPY #$03                    ; $29:838E: C0 03       ;
CODE_298390:    BEQ CODE_298395             ; $29:8390: F0 03       ;
CODE_298392:    LSR A                       ; $29:8392: 4A          ;
CODE_298393:    LSR A                       ; $29:8393: 4A          ;
CODE_298394:    LSR A                       ; $29:8394: 4A          ;
CODE_298395:    LSR A                       ; $29:8395: 4A          ;
CODE_298396:    LDA #$80                    ; $29:8396: A9 80       ;
CODE_298398:    BCC CODE_29839C             ; $29:8398: 90 02       ;
CODE_29839A:    LDA #$C0                    ; $29:839A: A9 C0       ;
CODE_29839C:    STA $0679,x                 ; $29:839C: 9D 79 06    ;
CODE_29839F:    CPY #$03                    ; $29:839F: C0 03       ;
CODE_2983A1:    BEQ CODE_2983B3             ; $29:83A1: F0 10       ;
CODE_2983A3:    LDA $0679,x                 ; $29:83A3: BD 79 06    ;
CODE_2983A6:    ASL A                       ; $29:83A6: 0A          ;
CODE_2983A7:    ASL A                       ; $29:83A7: 0A          ;
CODE_2983A8:    LDA #$04                    ; $29:83A8: A9 04       ;
CODE_2983AA:    BCC CODE_2983AE             ; $29:83AA: 90 02       ;
CODE_2983AC:    LDA #$FC                    ; $29:83AC: A9 FC       ;
CODE_2983AE:    CLC                         ; $29:83AE: 18          ;
CODE_2983AF:    ADC $5F,x                   ; $29:83AF: 75 5F       ;
CODE_2983B1:    STA $5F,x                   ; $29:83B1: 95 5F       ;
CODE_2983B3:    LDY $4D,x                   ; $29:83B3: B4 4D       ;
CODE_2983B5:    LDA.w DATA_21C59D,y                 ; $29:83B5: B9 9D C5    ;
CODE_2983B8:    PHA                         ; $29:83B8: 48          ;
CODE_2983B9:    STA $0669,x                 ; $29:83B9: 9D 69 06    ;
CODE_2983BC:    JSL CODE_279F51             ; $29:83BC: 22 51 9F 27 ;
CODE_2983C0:    PLA                         ; $29:83C0: 68          ;
CODE_2983C1:    CLC                         ; $29:83C1: 18          ;
CODE_2983C2:    ADC #$06                    ; $29:83C2: 69 06       ;
CODE_2983C4:    STA $0669,x                 ; $29:83C4: 9D 69 06    ;
CODE_2983C7:    LDA $71,x                   ; $29:83C7: B5 71       ;
CODE_2983C9:    PHA                         ; $29:83C9: 48          ;
CODE_2983CA:    CLC                         ; $29:83CA: 18          ;
CODE_2983CB:    ADC #$20                    ; $29:83CB: 69 20       ;
CODE_2983CD:    STA $71,x                   ; $29:83CD: 95 71       ;
CODE_2983CF:    LDA $56,x                   ; $29:83CF: B5 56       ;
CODE_2983D1:    PHA                         ; $29:83D1: 48          ;
CODE_2983D2:    ADC #$00                    ; $29:83D2: 69 00       ;
CODE_2983D4:    STA $56,x                   ; $29:83D4: 95 56       ;
CODE_2983D6:    REP #$20                    ; $29:83D6: C2 20       ;
CODE_2983D8:    LDA $C6,x                   ; $29:83D8: B5 C6       ;
CODE_2983DA:    CLC                         ; $29:83DA: 18          ;
CODE_2983DB:    ADC #$0010                  ; $29:83DB: 69 10 00    ;
CODE_2983DE:    STA $C6,x                   ; $29:83DE: 95 C6       ;
CODE_2983E0:    SEP #$20                    ; $29:83E0: E2 20       ;
CODE_2983E2:    JSL CODE_279EBB             ; $29:83E2: 22 BB 9E 27 ;
CODE_2983E6:    PLA                         ; $29:83E6: 68          ;
CODE_2983E7:    STA $56,x                   ; $29:83E7: 95 56       ;
CODE_2983E9:    PLA                         ; $29:83E9: 68          ;
CODE_2983EA:    STA $71,x                   ; $29:83EA: 95 71       ;
CODE_2983EC:    JSL CODE_279DC2             ; $29:83EC: 22 C2 9D 27 ;
CODE_2983F0:    JSR CODE_2984EA             ; $29:83F0: 20 EA 84    ;
CODE_2983F3:    PLA                         ; $29:83F3: 68          ;
CODE_2983F4:    STA $5F,x                   ; $29:83F4: 95 5F       ;
CODE_2983F6:    RTL                         ; $29:83F6: 6B          ;

CODE_2983F7:    STZ $0F                     ; $29:83F7: 64 0F       ;
CODE_2983F9:    LDY $4D,x                   ; $29:83F9: B4 4D       ;
CODE_2983FB:    BNE CODE_2983FE             ; $29:83FB: D0 01       ;
CODE_2983FD:    RTS                         ; $29:83FD: 60          ;

CODE_2983FE:    LDA.w DATA_21C59D,y                 ; $29:83FE: B9 9D C5    ;
CODE_298401:    STA $0669,x                 ; $29:8401: 9D 69 06    ;
CODE_298404:    JSL CODE_279DC2             ; $29:8404: 22 C2 9D 27 ;
CODE_298408:    LDA $83,x                   ; $29:8408: B5 83       ;
CODE_29840A:    SEC                         ; $29:840A: 38          ;
CODE_29840B:    SBC #$01                    ; $29:840B: E9 01       ;
CODE_29840D:    STA $00                     ; $29:840D: 85 00       ;
CODE_29840F:    LDA $7A,x                   ; $29:840F: B5 7A       ;
CODE_298411:    STA $01                     ; $29:8411: 85 01       ;
CODE_298413:    LDA $01                     ; $29:8413: A5 01       ;
CODE_298415:    JSL CODE_2989AB             ; $29:8415: 22 AB 89 29 ;
CODE_298419:    BCC CODE_29841E             ; $29:8419: 90 03       ;
CODE_29841B:    BRL CODE_2984D8             ; $29:841B: 82 BA 00    ;

CODE_29841E:    REP #$30                    ; $29:841E: C2 30       ;
CODE_298420:    LDA $0F                     ; $29:8420: A5 0F       ;
CODE_298422:    AND #$00FF                  ; $29:8422: 29 FF 00    ;
CODE_298425:    ASL A                       ; $29:8425: 0A          ;
CODE_298426:    ASL A                       ; $29:8426: 0A          ;
CODE_298427:    ASL A                       ; $29:8427: 0A          ;
CODE_298428:    ADC $C6,x                   ; $29:8428: 75 C6       ;
CODE_29842A:    TAY                         ; $29:842A: A8          ;
CODE_29842B:    SEP #$20                    ; $29:842B: E2 20       ;
CODE_29842D:    LDA $00                     ; $29:842D: A5 00       ;
CODE_29842F:    STA $0801,y                 ; $29:842F: 99 01 08    ;
CODE_298432:    CLC                         ; $29:8432: 18          ;
CODE_298433:    ADC #$08                    ; $29:8433: 69 08       ;
CODE_298435:    STA $0805,y                 ; $29:8435: 99 05 08    ;
CODE_298438:    LDA $01                     ; $29:8438: A5 01       ;
CODE_29843A:    STA $0800,y                 ; $29:843A: 99 00 08    ;
CODE_29843D:    STA $0804,y                 ; $29:843D: 99 04 08    ;
CODE_298440:    LDA $0565                   ; $29:8440: AD 65 05    ;
CODE_298443:    STA $02                     ; $29:8443: 85 02       ;
CODE_298445:    LDA $4D,x                   ; $29:8445: B5 4D       ;
CODE_298447:    LSR $02                     ; $29:8447: 46 02       ;
CODE_298449:    CMP #$03                    ; $29:8449: C9 03       ;
CODE_29844B:    BEQ CODE_298453             ; $29:844B: F0 06       ;
CODE_29844D:    LSR $02                     ; $29:844D: 46 02       ;
CODE_29844F:    LSR $02                     ; $29:844F: 46 02       ;
CODE_298451:    LSR $02                     ; $29:8451: 46 02       ;
CODE_298453:    LSR $02                     ; $29:8453: 46 02       ;
CODE_298455:    PHP                         ; $29:8455: 08          ;
CODE_298456:    REP #$20                    ; $29:8456: C2 20       ;
CODE_298458:    LDA $0671,x                 ; $29:8458: BD 71 06    ;
CODE_29845B:    AND #$00FF                  ; $29:845B: 29 FF 00    ;
CODE_29845E:    TAX                         ; $29:845E: AA          ;
CODE_29845F:    SEP #$20                    ; $29:845F: E2 20       ;
CODE_298461:    LDA #$22                    ; $29:8461: A9 22       ;
CODE_298463:    CPX #$00B1                  ; $29:8463: E0 B1 00    ;
CODE_298466:    BNE CODE_29846A             ; $29:8466: D0 02       ;
CODE_298468:    LDA #$62                    ; $29:8468: A9 62       ;
CODE_29846A:    PLP                         ; $29:846A: 28          ;
CODE_29846B:    BCC CODE_29846F             ; $29:846B: 90 02       ;
CODE_29846D:    ORA #$A2                    ; $29:846D: 09 A2       ;
CODE_29846F:    STA $0803,y                 ; $29:846F: 99 03 08    ;
CODE_298472:    STA $0807,y                 ; $29:8472: 99 07 08    ;
CODE_298475:    REP #$20                    ; $29:8475: C2 20       ;
CODE_298477:    LDA $9B                     ; $29:8477: A5 9B       ;
CODE_298479:    AND #$00FF                  ; $29:8479: 29 FF 00    ;
CODE_29847C:    TAX                         ; $29:847C: AA          ;
CODE_29847D:    SEP #$20                    ; $29:847D: E2 20       ;
CODE_29847F:    LDA $0F                     ; $29:847F: A5 0F       ;
CODE_298481:    STA $D8                     ; $29:8481: 85 D8       ;
CODE_298483:    STZ $D9                     ; $29:8483: 64 D9       ;
CODE_298485:    LDA $0671,x                 ; $29:8485: BD 71 06    ;
CODE_298488:    CMP #$B1                    ; $29:8488: C9 B1       ;
CODE_29848A:    BNE CODE_298493             ; $29:848A: D0 07       ;
CODE_29848C:    LDA #$05                    ; $29:848C: A9 05       ;
CODE_29848E:    SEC                         ; $29:848E: 38          ;
CODE_29848F:    SBC $0F                     ; $29:848F: E5 0F       ;
CODE_298491:    STA $D8                     ; $29:8491: 85 D8       ;
CODE_298493:    REP #$20                    ; $29:8493: C2 20       ;
CODE_298495:    LDA $0669,x                 ; $29:8495: BD 69 06    ;
CODE_298498:    AND #$00FF                  ; $29:8498: 29 FF 00    ;
CODE_29849B:    ASL A                       ; $29:849B: 0A          ;
CODE_29849C:    ASL A                       ; $29:849C: 0A          ;
CODE_29849D:    ASL A                       ; $29:849D: 0A          ;
CODE_29849E:    ADC $D8                     ; $29:849E: 65 D8       ;
CODE_2984A0:    TAX                         ; $29:84A0: AA          ;
CODE_2984A1:    SEP #$20                    ; $29:84A1: E2 20       ;
CODE_2984A3:    LDA.w DATA_21C5A3,x                 ; $29:84A3: BD A3 C5    ;
CODE_2984A6:    STA $0802,y                 ; $29:84A6: 99 02 08    ;
CODE_2984A9:    INC A                       ; $29:84A9: 1A          ;
CODE_2984AA:    STA $0806,y                 ; $29:84AA: 99 06 08    ;
CODE_2984AD:    LDA $0803,y                 ; $29:84AD: B9 03 08    ;
CODE_2984B0:    AND #$80                    ; $29:84B0: 29 80       ;
CODE_2984B2:    BEQ CODE_2984C2             ; $29:84B2: F0 0E       ;
CODE_2984B4:    LDA $0802,y                 ; $29:84B4: B9 02 08    ;
CODE_2984B7:    PHA                         ; $29:84B7: 48          ;
CODE_2984B8:    LDA $0806,y                 ; $29:84B8: B9 06 08    ;
CODE_2984BB:    STA $0802,y                 ; $29:84BB: 99 02 08    ;
CODE_2984BE:    PLA                         ; $29:84BE: 68          ;
CODE_2984BF:    STA $0806,y                 ; $29:84BF: 99 06 08    ;
CODE_2984C2:    REP #$20                    ; $29:84C2: C2 20       ;
CODE_2984C4:    TYA                         ; $29:84C4: 98          ;
CODE_2984C5:    LSR A                       ; $29:84C5: 4A          ;
CODE_2984C6:    LSR A                       ; $29:84C6: 4A          ;
CODE_2984C7:    TAY                         ; $29:84C7: A8          ;
CODE_2984C8:    SEP #$20                    ; $29:84C8: E2 20       ;
CODE_2984CA:    LDA $DB                     ; $29:84CA: A5 DB       ;
CODE_2984CC:    AND #$01                    ; $29:84CC: 29 01       ;
CODE_2984CE:    STA $0A20,y                 ; $29:84CE: 99 20 0A    ;
CODE_2984D1:    STA $0A21,y                 ; $29:84D1: 99 21 0A    ;
CODE_2984D4:    SEP #$10                    ; $29:84D4: E2 10       ;
CODE_2984D6:    LDX $9B                     ; $29:84D6: A6 9B       ;
CODE_2984D8:    LDA $01                     ; $29:84D8: A5 01       ;
CODE_2984DA:    CLC                         ; $29:84DA: 18          ;
CODE_2984DB:    ADC #$08                    ; $29:84DB: 69 08       ;
CODE_2984DD:    STA $01                     ; $29:84DD: 85 01       ;
CODE_2984DF:    INC $0F                     ; $29:84DF: E6 0F       ;
CODE_2984E1:    LDA $0F                     ; $29:84E1: A5 0F       ;
CODE_2984E3:    CMP #$06                    ; $29:84E3: C9 06       ;
CODE_2984E5:    BEQ CODE_2984EA             ; $29:84E5: F0 03       ;
CODE_2984E7:    BRL CODE_298413             ; $29:84E7: 82 29 FF    ;

CODE_2984EA:    LDA $4D,x                   ; $29:84EA: B5 4D       ;
CODE_2984EC:    CMP #$03                    ; $29:84EC: C9 03       ;
CODE_2984EE:    BNE CODE_2984F4             ; $29:84EE: D0 04       ;
CODE_2984F0:    JSL CODE_279B6F             ; $29:84F0: 22 6F 9B 27 ;
CODE_2984F4:    RTS                         ; $29:84F4: 60          ;

CODE_2984F5:    LDY #$21                    ; $29:84F5: A0 21       ;
CODE_2984F7:    LDA #$10                    ; $29:84F7: A9 10       ;
CODE_2984F9:    BNE CODE_2984FF             ; $29:84F9: D0 04       ;
CODE_2984FB:    LDY #$19                    ; $29:84FB: A0 19       ;
CODE_2984FD:    LDA #$08                    ; $29:84FD: A9 08       ;
CODE_2984FF:    CLC                         ; $29:84FF: 18          ;
CODE_298500:    ADC $71,x                   ; $29:8500: 75 71       ;
CODE_298502:    STA $71,x                   ; $29:8502: 95 71       ;
CODE_298504:    LDA #$80                    ; $29:8504: A9 80       ;
CODE_298506:    STA $0679,x                 ; $29:8506: 9D 79 06    ;
CODE_298509:    BNE CODE_298511             ; $29:8509: D0 06       ;
CODE_29850B:    LDY #$21                    ; $29:850B: A0 21       ;
CODE_29850D:    BNE CODE_298511             ; $29:850D: D0 02       ;
CODE_29850F:    LDY #$19                    ; $29:850F: A0 19       ;
CODE_298511:    LDA $71,x                   ; $29:8511: B5 71       ;
CODE_298513:    STA $68,x                   ; $29:8513: 95 68       ;
CODE_298515:    TYA                         ; $29:8515: 98          ;
CODE_298516:    STA $077B,x                 ; $29:8516: 9D 7B 07    ;
CODE_298519:    SEC                         ; $29:8519: 38          ;
CODE_29851A:    SBC #$10                    ; $29:851A: E9 10       ;
CODE_29851C:    STA $0689,x                 ; $29:851C: 9D 89 06    ;
CODE_29851F:    LDA $56,x                   ; $29:851F: B5 56       ;
CODE_298521:    STA $1021,x                 ; $29:8521: 9D 21 10    ;
CODE_298524:    LDA $5F,x                   ; $29:8524: B5 5F       ;
CODE_298526:    CLC                         ; $29:8526: 18          ;
CODE_298527:    ADC #$08                    ; $29:8527: 69 08       ;
CODE_298529:    STA $5F,x                   ; $29:8529: 95 5F       ;
CODE_29852B:    RTL                         ; $29:852B: 6B          ;

CODE_29852C:    JSL CODE_279BC3             ; $29:852C: 22 C3 9B 27 ;
CODE_298530:    LDA $4D,x                   ; $29:8530: B5 4D       ;
CODE_298532:    LDY $0679,x                 ; $29:8532: BC 79 06    ;
CODE_298535:    BPL CODE_29853A             ; $29:8535: 10 03       ;
CODE_298537:    CLC                         ; $29:8537: 18          ;
CODE_298538:    ADC #$02                    ; $29:8538: 69 02       ;
CODE_29853A:    AND #$03                    ; $29:853A: 29 03       ;
CODE_29853C:    BNE CODE_29854A             ; $29:853C: D0 0C       ;
CODE_29853E:    JSL CODE_279DC2             ; $29:853E: 22 C2 9D 27 ;
CODE_298542:    LDA #$01                    ; $29:8542: A9 01       ;
CODE_298544:    STA $0651,x                 ; $29:8544: 9D 51 06    ;
CODE_298547:    JMP CODE_298747             ; $29:8547: 4C 47 87    ;

CODE_29854A:    JSL CODE_27A837             ; $29:854A: 22 37 A8 27 ;
CODE_29854E:    LDA $0679,x                 ; $29:854E: BD 79 06    ;
CODE_298551:    AND #$BF                    ; $29:8551: 29 BF       ;
CODE_298553:    ORA.w DATA_21C5C3,y                 ; $29:8553: 19 C3 C5    ;
CODE_298556:    STA $0679,x                 ; $29:8556: 9D 79 06    ;
CODE_298559:    REP #$20                    ; $29:8559: C2 20       ;
CODE_29855B:    LDA $C6,x                   ; $29:855B: B5 C6       ;
CODE_29855D:    CLC                         ; $29:855D: 18          ;
CODE_29855E:    ADC #$0010                  ; $29:855E: 69 10 00    ;
CODE_298561:    STA $C6,x                   ; $29:8561: 95 C6       ;
CODE_298563:    SEP #$20                    ; $29:8563: E2 20       ;
CODE_298565:    LDA $1FD2,x                 ; $29:8565: BD D2 1F    ;
CODE_298568:    LSR A                       ; $29:8568: 4A          ;
CODE_298569:    LSR A                       ; $29:8569: 4A          ;
CODE_29856A:    LSR A                       ; $29:856A: 4A          ;
CODE_29856B:    AND #$01                    ; $29:856B: 29 01       ;
CODE_29856D:    STA $0669,x                 ; $29:856D: 9D 69 06    ;
CODE_298570:    LDA $0671,x                 ; $29:8570: BD 71 06    ;
CODE_298573:    SEC                         ; $29:8573: 38          ;
CODE_298574:    SBC #$A0                    ; $29:8574: E9 A0       ;
CODE_298576:    TAY                         ; $29:8576: A8          ;
CODE_298577:    LDA.w DATA_21C5BB,y                 ; $29:8577: B9 BB C5    ;
CODE_29857A:    STA $0691,x                 ; $29:857A: 9D 91 06    ;
CODE_29857D:    AND #$01                    ; $29:857D: 29 01       ;
CODE_29857F:    STA $01                     ; $29:857F: 85 01       ;
CODE_298581:    LDA $68,x                   ; $29:8581: B5 68       ;
CODE_298583:    SEC                         ; $29:8583: 38          ;
CODE_298584:    SBC $71,x                   ; $29:8584: F5 71       ;
CODE_298586:    LDY $01                     ; $29:8586: A4 01       ;
CODE_298588:    BEQ CODE_298591             ; $29:8588: F0 07       ;
CODE_29858A:    CMP $0689,x                 ; $29:858A: DD 89 06    ;
CODE_29858D:    BCC CODE_29859B             ; $29:858D: 90 0C       ;
CODE_29858F:    BCS CODE_298595                     ; $29:858F: B0 04       ;
CODE_298591:    CMP #$11                    ; $29:8591: C9 11       ;
CODE_298593:    BCS CODE_29859B                     ; $29:8593: B0 06       ;
CODE_298595:    INC $0669,x                 ; $29:8595: FE 69 06    ;
CODE_298598:    INC $0669,x                 ; $29:8598: FE 69 06    ;
CODE_29859B:    JSL CODE_279F51             ; $29:859B: 22 51 9F 27 ;
CODE_29859F:    JSL CODE_27A848             ; $29:859F: 22 48 A8 27 ;
CODE_2985A3:    STY $00                     ; $29:85A3: 84 00       ;
CODE_2985A5:    STZ $01                     ; $29:85A5: 64 01       ;
CODE_2985A7:    REP #$10                    ; $29:85A7: C2 10       ;
CODE_2985A9:    LDY $C6,x                   ; $29:85A9: B4 C6       ;
CODE_2985AB:    LDA $0691,x                 ; $29:85AB: BD 91 06    ;
CODE_2985AE:    BMI CODE_2985E0             ; $29:85AE: 30 30       ;
CODE_2985B0:    LDA $0679,x                 ; $29:85B0: BD 79 06    ;
CODE_2985B3:    BMI CODE_2985CA             ; $29:85B3: 30 15       ;
CODE_2985B5:    LDA $07F3,y                 ; $29:85B5: B9 F3 07    ;
CODE_2985B8:    AND #$BF                    ; $29:85B8: 29 BF       ;
CODE_2985BA:    STA $07F3,y                 ; $29:85BA: 99 F3 07    ;
CODE_2985BD:    STA $07FB,y                 ; $29:85BD: 99 FB 07    ;
CODE_2985C0:    ORA #$40                    ; $29:85C0: 09 40       ;
CODE_2985C2:    STA $07F7,y                 ; $29:85C2: 99 F7 07    ;
CODE_2985C5:    STA $07FF,y                 ; $29:85C5: 99 FF 07    ;
CODE_2985C8:    BNE CODE_29861F             ; $29:85C8: D0 55       ;
CODE_2985CA:    LDA $0803,y                 ; $29:85CA: B9 03 08    ;
CODE_2985CD:    AND #$BF                    ; $29:85CD: 29 BF       ;
CODE_2985CF:    STA $0803,y                 ; $29:85CF: 99 03 08    ;
CODE_2985D2:    STA $080B,y                 ; $29:85D2: 99 0B 08    ;
CODE_2985D5:    ORA #$40                    ; $29:85D5: 09 40       ;
CODE_2985D7:    STA $0807,y                 ; $29:85D7: 99 07 08    ;
CODE_2985DA:    STA $080F,y                 ; $29:85DA: 99 0F 08    ;
CODE_2985DD:    BRL CODE_29866B             ; $29:85DD: 82 8B 00    ;

CODE_2985E0:    LDA $0679,x                 ; $29:85E0: BD 79 06    ;
CODE_2985E3:    BMI CODE_298631             ; $29:85E3: 30 4C       ;
CODE_2985E5:    LDX $00                     ; $29:85E5: A6 00       ;
CODE_2985E7:    LDA $07F3,y                 ; $29:85E7: B9 F3 07    ;
CODE_2985EA:    AND #$7F                    ; $29:85EA: 29 7F       ;
CODE_2985EC:    ORA.w DATA_21C5C5,x                 ; $29:85EC: 1D C5 C5    ;
CODE_2985EF:    AND #$CF                    ; $29:85EF: 29 CF       ;
CODE_2985F1:    ORA #$20                    ; $29:85F1: 09 20       ;
CODE_2985F3:    STA $07F3,y                 ; $29:85F3: 99 F3 07    ;
CODE_2985F6:    STA $07F7,y                 ; $29:85F6: 99 F7 07    ;
CODE_2985F9:    STA $07FB,y                 ; $29:85F9: 99 FB 07    ;
CODE_2985FC:    STA $07FF,y                 ; $29:85FC: 99 FF 07    ;
CODE_2985FF:    AND #$80                    ; $29:85FF: 29 80       ;
CODE_298601:    BEQ CODE_29861F             ; $29:8601: F0 1C       ;
CODE_298603:    LDA $07F2,y                 ; $29:8603: B9 F2 07    ;
CODE_298606:    PHA                         ; $29:8606: 48          ;
CODE_298607:    LDA $07FA,y                 ; $29:8607: B9 FA 07    ;
CODE_29860A:    STA $07F2,y                 ; $29:860A: 99 F2 07    ;
CODE_29860D:    PLA                         ; $29:860D: 68          ;
CODE_29860E:    STA $07FA,y                 ; $29:860E: 99 FA 07    ;
CODE_298611:    LDA $07F6,y                 ; $29:8611: B9 F6 07    ;
CODE_298614:    PHA                         ; $29:8614: 48          ;
CODE_298615:    LDA $07FE,y                 ; $29:8615: B9 FE 07    ;
CODE_298618:    STA $07F6,y                 ; $29:8618: 99 F6 07    ;
CODE_29861B:    PLA                         ; $29:861B: 68          ;
CODE_29861C:    STA $07FE,y                 ; $29:861C: 99 FE 07    ;
CODE_29861F:    LDA #$24                    ; $29:861F: A9 24       ;
CODE_298621:    STA $0803,y                 ; $29:8621: 99 03 08    ;
CODE_298624:    STA $080B,y                 ; $29:8624: 99 0B 08    ;
CODE_298627:    LDA #$64                    ; $29:8627: A9 64       ;
CODE_298629:    STA $0807,y                 ; $29:8629: 99 07 08    ;
CODE_29862C:    STA $080F,y                 ; $29:862C: 99 0F 08    ;
CODE_29862F:    BRA CODE_29867B             ; $29:862F: 80 4A       ;

CODE_298631:    LDX $00                     ; $29:8631: A6 00       ;
CODE_298633:    LDA $0803,y                 ; $29:8633: B9 03 08    ;
CODE_298636:    AND #$7F                    ; $29:8636: 29 7F       ;
CODE_298638:    ORA.w DATA_21C5C5,x                 ; $29:8638: 1D C5 C5    ;
CODE_29863B:    AND #$CF                    ; $29:863B: 29 CF       ;
CODE_29863D:    ORA #$10                    ; $29:863D: 09 10       ;
CODE_29863F:    STA $0803,y                 ; $29:863F: 99 03 08    ;
CODE_298642:    STA $0807,y                 ; $29:8642: 99 07 08    ;
CODE_298645:    STA $080B,y                 ; $29:8645: 99 0B 08    ;
CODE_298648:    STA $080F,y                 ; $29:8648: 99 0F 08    ;
CODE_29864B:    AND #$80                    ; $29:864B: 29 80       ;
CODE_29864D:    BNE CODE_29866B             ; $29:864D: D0 1C       ;
CODE_29864F:    LDA $0802,y                 ; $29:864F: B9 02 08    ;
CODE_298652:    PHA                         ; $29:8652: 48          ;
CODE_298653:    LDA $080A,y                 ; $29:8653: B9 0A 08    ;
CODE_298656:    STA $0802,y                 ; $29:8656: 99 02 08    ;
CODE_298659:    PLA                         ; $29:8659: 68          ;
CODE_29865A:    STA $080A,y                 ; $29:865A: 99 0A 08    ;
CODE_29865D:    LDA $0806,y                 ; $29:865D: B9 06 08    ;
CODE_298660:    PHA                         ; $29:8660: 48          ;
CODE_298661:    LDA $080E,y                 ; $29:8661: B9 0E 08    ;
CODE_298664:    STA $0806,y                 ; $29:8664: 99 06 08    ;
CODE_298667:    PLA                         ; $29:8667: 68          ;
CODE_298668:    STA $080E,y                 ; $29:8668: 99 0E 08    ;
CODE_29866B:    LDA #$A4                    ; $29:866B: A9 A4       ;
CODE_29866D:    STA $07F3,y                 ; $29:866D: 99 F3 07    ;
CODE_298670:    STA $07FB,y                 ; $29:8670: 99 FB 07    ;
CODE_298673:    LDA #$E4                    ; $29:8673: A9 E4       ;
CODE_298675:    STA $07F7,y                 ; $29:8675: 99 F7 07    ;
CODE_298678:    STA $07FF,y                 ; $29:8678: 99 FF 07    ;
CODE_29867B:    REP #$20                    ; $29:867B: C2 20       ;
CODE_29867D:    LDA $9B                     ; $29:867D: A5 9B       ;
CODE_29867F:    AND #$00FF                  ; $29:867F: 29 FF 00    ;
CODE_298682:    TAX                         ; $29:8682: AA          ;
CODE_298683:    SEP #$20                    ; $29:8683: E2 20       ;
CODE_298685:    LDA #$01                    ; $29:8685: A9 01       ;
CODE_298687:    STA $00                     ; $29:8687: 85 00       ;
CODE_298689:    STZ $01                     ; $29:8689: 64 01       ;
CODE_29868B:    LDA #$FF                    ; $29:868B: A9 FF       ;
CODE_29868D:    STA $DC                     ; $29:868D: 85 DC       ;
CODE_29868F:    STA $DD                     ; $29:868F: 85 DD       ;
CODE_298691:    LDA $0691,x                 ; $29:8691: BD 91 06    ;
CODE_298694:    AND #$01                    ; $29:8694: 29 01       ;
CODE_298696:    BEQ CODE_2986A1             ; $29:8696: F0 09       ;
CODE_298698:    LDA $0689,x                 ; $29:8698: BD 89 06    ;
CODE_29869B:    STA $00                     ; $29:869B: 85 00       ;
CODE_29869D:    LDA #$F4                    ; $29:869D: A9 F4       ;
CODE_29869F:    STA $DC                     ; $29:869F: 85 DC       ;
CODE_2986A1:    LDA $0425                   ; $29:86A1: AD 25 04    ;
CODE_2986A4:    BEQ CODE_2986AA             ; $29:86A4: F0 04       ;
CODE_2986A6:    LDA #$F9                    ; $29:86A6: A9 F9       ;
CODE_2986A8:    STA $DC                     ; $29:86A8: 85 DC       ;
CODE_2986AA:    LDA $0543                   ; $29:86AA: AD 43 05    ;
CODE_2986AD:    STA $D8                     ; $29:86AD: 85 D8       ;
CODE_2986AF:    LDA $0542                   ; $29:86AF: AD 42 05    ;
CODE_2986B2:    STA $D9                     ; $29:86B2: 85 D9       ;
CODE_2986B4:    LDA $1021,x                 ; $29:86B4: BD 21 10    ;
CODE_2986B7:    XBA                         ; $29:86B7: EB          ;
CODE_2986B8:    LDA $68,x                   ; $29:86B8: B5 68       ;
CODE_2986BA:    REP #$20                    ; $29:86BA: C2 20       ;
CODE_2986BC:    SEC                         ; $29:86BC: 38          ;
CODE_2986BD:    SBC $00                     ; $29:86BD: E5 00       ;
CODE_2986BF:    SEC                         ; $29:86BF: 38          ;
CODE_2986C0:    SBC $D8                     ; $29:86C0: E5 D8       ;
CODE_2986C2:    STA $DA                     ; $29:86C2: 85 DA       ;
CODE_2986C4:    CLC                         ; $29:86C4: 18          ;
CODE_2986C5:    ADC #$0008                  ; $29:86C5: 69 08 00    ;
CODE_2986C8:    STA $D8                     ; $29:86C8: 85 D8       ;
CODE_2986CA:    LDA $DA                     ; $29:86CA: A5 DA       ;
CODE_2986CC:    CMP #$00F0                  ; $29:86CC: C9 F0 00    ;
CODE_2986CF:    BCC CODE_2986D5             ; $29:86CF: 90 04       ;
CODE_2986D1:    CMP $DC                     ; $29:86D1: C5 DC       ;
CODE_2986D3:    BCC CODE_2986DF             ; $29:86D3: 90 0A       ;
CODE_2986D5:    SEP #$20                    ; $29:86D5: E2 20       ;
CODE_2986D7:    STA $07E1,y                 ; $29:86D7: 99 E1 07    ;
CODE_2986DA:    STA $07E9,y                 ; $29:86DA: 99 E9 07    ;
CODE_2986DD:    REP #$20                    ; $29:86DD: C2 20       ;
CODE_2986DF:    LDA $D8                     ; $29:86DF: A5 D8       ;
CODE_2986E1:    CMP #$00F0                  ; $29:86E1: C9 F0 00    ;
CODE_2986E4:    BCC CODE_2986EA             ; $29:86E4: 90 04       ;
CODE_2986E6:    CMP $DC                     ; $29:86E6: C5 DC       ;
CODE_2986E8:    BCC CODE_2986F2             ; $29:86E8: 90 08       ;
CODE_2986EA:    SEP #$20                    ; $29:86EA: E2 20       ;
CODE_2986EC:    STA $07E5,y                 ; $29:86EC: 99 E5 07    ;
CODE_2986EF:    STA $07ED,y                 ; $29:86EF: 99 ED 07    ;
CODE_2986F2:    SEP #$20                    ; $29:86F2: E2 20       ;
CODE_2986F4:    LDA #$76                    ; $29:86F4: A9 76       ;
CODE_2986F6:    STA $07E2,y                 ; $29:86F6: 99 E2 07    ;
CODE_2986F9:    STA $07EA,y                 ; $29:86F9: 99 EA 07    ;
CODE_2986FC:    STA $07E6,y                 ; $29:86FC: 99 E6 07    ;
CODE_2986FF:    STA $07EE,y                 ; $29:86FF: 99 EE 07    ;
CODE_298702:    LDA #$12                    ; $29:8702: A9 12       ;
CODE_298704:    STA $07E3,y                 ; $29:8704: 99 E3 07    ;
CODE_298707:    STA $07E7,y                 ; $29:8707: 99 E7 07    ;
CODE_29870A:    STA $07EB,y                 ; $29:870A: 99 EB 07    ;
CODE_29870D:    STA $07EF,y                 ; $29:870D: 99 EF 07    ;
CODE_298710:    LDA $5F,x                   ; $29:8710: B5 5F       ;
CODE_298712:    SEC                         ; $29:8712: 38          ;
CODE_298713:    SBC $0210                   ; $29:8713: ED 10 02    ;
CODE_298716:    STA $07E0,y                 ; $29:8716: 99 E0 07    ;
CODE_298719:    STA $07E4,y                 ; $29:8719: 99 E4 07    ;
CODE_29871C:    CLC                         ; $29:871C: 18          ;
CODE_29871D:    ADC #$08                    ; $29:871D: 69 08       ;
CODE_29871F:    STA $07E8,y                 ; $29:871F: 99 E8 07    ;
CODE_298722:    STA $07EC,y                 ; $29:8722: 99 EC 07    ;
CODE_298725:    PHY                         ; $29:8725: 5A          ;
CODE_298726:    REP #$20                    ; $29:8726: C2 20       ;
CODE_298728:    TYA                         ; $29:8728: 98          ;
CODE_298729:    LSR A                       ; $29:8729: 4A          ;
CODE_29872A:    LSR A                       ; $29:872A: 4A          ;
CODE_29872B:    TAY                         ; $29:872B: A8          ;
CODE_29872C:    SEP #$20                    ; $29:872C: E2 20       ;
CODE_29872E:    LDA $0651,x                 ; $29:872E: BD 51 06    ;
CODE_298731:    ROL A                       ; $29:8731: 2A          ;
CODE_298732:    ROL A                       ; $29:8732: 2A          ;
CODE_298733:    PHP                         ; $29:8733: 08          ;
CODE_298734:    AND #$01                    ; $29:8734: 29 01       ;
CODE_298736:    STA $0A18,y                 ; $29:8736: 99 18 0A    ;
CODE_298739:    STA $0A19,y                 ; $29:8739: 99 19 0A    ;
CODE_29873C:    PLP                         ; $29:873C: 28          ;
CODE_29873D:    ROL A                       ; $29:873D: 2A          ;
CODE_29873E:    AND #$01                    ; $29:873E: 29 01       ;
CODE_298740:    STA $0A1A,y                 ; $29:8740: 99 1A 0A    ;
CODE_298743:    STA $0A1B,y                 ; $29:8743: 99 1B 0A    ;
CODE_298746:    PLY                         ; $29:8746: 7A          ;
CODE_298747:    SEP #$10                    ; $29:8747: E2 10       ;
CODE_298749:    LDA $9C                     ; $29:8749: A5 9C       ;
CODE_29874B:    BNE CODE_298750             ; $29:874B: D0 03       ;
CODE_29874D:    JSR CODE_298751             ; $29:874D: 20 51 87    ;
CODE_298750:    RTL                         ; $29:8750: 6B          ;

CODE_298751:    JSL CODE_279B6F             ; $29:8751: 22 6F 9B 27 ;
CODE_298755:    INC $1FD2,x                 ; $29:8755: FE D2 1F    ;
CODE_298758:    LDA $4D,x                   ; $29:8758: B5 4D       ;
CODE_29875A:    AND #$03                    ; $29:875A: 29 03       ;
CODE_29875C:    JSL CODE_20FB1F         ; $29:875C: 22 1F FB 20 ; ExecutePtrShort

PNTR_298760:        dw CODE_2987F6
                    dw CODE_298768
                    dw CODE_2987A2
                    dw CODE_298783

CODE_298768:    LDA $68,x               ; $29:8768: B5 68       ;
CODE_29876A:    SEC                         ; $29:876A: 38          ;
CODE_29876B:    SBC $077B,x                 ; $29:876B: FD 7B 07    ;
CODE_29876E:    PHA                         ; $29:876E: 48          ;
CODE_29876F:    LDA $1021,x                 ; $29:876F: BD 21 10    ;
CODE_298772:    SBC #$00                    ; $29:8772: E9 00       ;
CODE_298774:    STA $00                     ; $29:8774: 85 00       ;
CODE_298776:    PLA                         ; $29:8776: 68          ;
CODE_298777:    CMP $71,x                   ; $29:8777: D5 71       ;
CODE_298779:    LDA $00                     ; $29:8779: A5 00       ;
CODE_29877B:    SBC $56,x                   ; $29:877B: F5 56       ;
CODE_29877D:    BCS CODE_2987E6                     ; $29:877D: B0 67       ;
CODE_29877F:    LDA #$F0                    ; $29:877F: A9 F0       ;
CODE_298781:    BNE CODE_29879B             ; $29:8781: D0 18       ;
CODE_298783:    LDA $71,x                   ; $29:8783: B5 71       ;
CODE_298785:    CLC                         ; $29:8785: 18          ;
CODE_298786:    ADC #$01                    ; $29:8786: 69 01       ;
CODE_298788:    PHA                         ; $29:8788: 48          ;
CODE_298789:    LDA $56,x                   ; $29:8789: B5 56       ;
CODE_29878B:    ADC #$00                    ; $29:878B: 69 00       ;
CODE_29878D:    STA $00                     ; $29:878D: 85 00       ;
CODE_29878F:    PLA                         ; $29:878F: 68          ;
CODE_298790:    CMP $68,x                   ; $29:8790: D5 68       ;
CODE_298792:    LDA $00                     ; $29:8792: A5 00       ;
CODE_298794:    SBC $1021,x                 ; $29:8794: FD 21 10    ;
CODE_298797:    BCS CODE_2987E6         ; $29:8797: B0 4D       ;
CODE_298799:    LDA #$10                    ; $29:8799: A9 10       ;
CODE_29879B:    STA $9E,x                   ; $29:879B: 95 9E       ;
CODE_29879D:    JSL CODE_27A7E4             ; $29:879D: 22 E4 A7 27 ;
CODE_2987A1:    RTS                         ; $29:87A1: 60          ;

CODE_2987A2:    LDA $0691,x                 ; $29:87A2: BD 91 06    ;
CODE_2987A5:    BPL CODE_2987C9             ; $29:87A5: 10 22       ;
CODE_2987A7:    LDA $0679,x                 ; $29:87A7: BD 79 06    ;
CODE_2987AA:    BMI CODE_2987C9             ; $29:87AA: 30 1D       ;
CODE_2987AC:    LDA #$00                    ; $29:87AC: A9 00       ;
CODE_2987AE:    STA $1FD2,x                 ; $29:87AE: 9D D2 1F    ;
CODE_2987B1:    LDA $0518,x                 ; $29:87B1: BD 18 05    ;
CODE_2987B4:    LDY $0727                   ; $29:87B4: AC 27 07    ;
CODE_2987B7:    BNE CODE_2987BE             ; $29:87B7: D0 05       ;
CODE_2987B9:    CMP #$28                    ; $29:87B9: C9 28       ;
CODE_2987BB:    BEQ CODE_2987C6             ; $29:87BB: F0 09       ;
CODE_2987BD:    TYA                         ; $29:87BD: 98          ;
CODE_2987BE:    CMP #$10                    ; $29:87BE: C9 10       ;
CODE_2987C0:    BEQ CODE_2987C6             ; $29:87C0: F0 04       ;
CODE_2987C2:    CMP #$40                    ; $29:87C2: C9 40       ;
CODE_2987C4:    BNE CODE_2987C9             ; $29:87C4: D0 03       ;
CODE_2987C6:    JSR CODE_29883B             ; $29:87C6: 20 3B 88    ;
CODE_2987C9:    LDA $0518,x                 ; $29:87C9: BD 18 05    ;
CODE_2987CC:    BNE CODE_29883A             ; $29:87CC: D0 6C       ;
CODE_2987CE:    LDA $0679,x                 ; $29:87CE: BD 79 06    ;
CODE_2987D1:    BPL CODE_2987E6             ; $29:87D1: 10 13       ;
CODE_2987D3:    LDA $0691,x                 ; $29:87D3: BD 91 06    ;
CODE_2987D6:    LSR A                       ; $29:87D6: 4A          ;
CODE_2987D7:    BCS CODE_2987E6                     ; $29:87D7: B0 0D       ;
CODE_2987D9:    JSL CODE_27A837             ; $29:87D9: 22 37 A8 27 ;
CODE_2987DD:    LDA $0F                     ; $29:87DD: A5 0F       ;
CODE_2987DF:    CLC                         ; $29:87DF: 18          ;
CODE_2987E0:    ADC #$1B                    ; $29:87E0: 69 1B       ;
CODE_2987E2:    CMP #$37                    ; $29:87E2: C9 37       ;
CODE_2987E4:    BCC CODE_2987F5             ; $29:87E4: 90 0F       ;
CODE_2987E6:    INC $4D,x                   ; $29:87E6: F6 4D       ;
CODE_2987E8:    LDA #$30                    ; $29:87E8: A9 30       ;
CODE_2987EA:    LDY $0671,x                 ; $29:87EA: BC 71 06    ;
CODE_2987ED:    CPY #$A4                    ; $29:87ED: C0 A4       ;
CODE_2987EF:    BCC CODE_2987F2             ; $29:87EF: 90 01       ;
CODE_2987F1:    ASL A                       ; $29:87F1: 0A          ;
CODE_2987F2:    STA $0518,x                 ; $29:87F2: 9D 18 05    ;
CODE_2987F5:    RTS                         ; $29:87F5: 60          ;

CODE_2987F6:    LDA $0691,x                 ; $29:87F6: BD 91 06    ;
CODE_2987F9:    BPL CODE_29881D             ; $29:87F9: 10 22       ;
CODE_2987FB:    LDA $0679,x                 ; $29:87FB: BD 79 06    ;
CODE_2987FE:    BPL CODE_29881D             ; $29:87FE: 10 1D       ;
CODE_298800:    LDA #$00                    ; $29:8800: A9 00       ;
CODE_298802:    STA $1FD2,x                 ; $29:8802: 9D D2 1F    ;
CODE_298805:    LDA $0518,x                 ; $29:8805: BD 18 05    ;
CODE_298808:    LDY $0727                   ; $29:8808: AC 27 07    ;
CODE_29880B:    BNE CODE_298812             ; $29:880B: D0 05       ;
CODE_29880D:    CMP #$28                    ; $29:880D: C9 28       ;
CODE_29880F:    BEQ CODE_29881A             ; $29:880F: F0 09       ;
CODE_298811:    TYA                         ; $29:8811: 98          ;
CODE_298812:    CMP #$10                    ; $29:8812: C9 10       ;
CODE_298814:    BEQ CODE_29881A             ; $29:8814: F0 04       ;
CODE_298816:    CMP #$40                    ; $29:8816: C9 40       ;
CODE_298818:    BNE CODE_29881D             ; $29:8818: D0 03       ;
CODE_29881A:    JSR CODE_29883B             ; $29:881A: 20 3B 88    ;
CODE_29881D:    LDA $0518,x                 ; $29:881D: BD 18 05    ;
CODE_298820:    BNE CODE_29883A             ; $29:8820: D0 18       ;
CODE_298822:    LDA $0679,x                 ; $29:8822: BD 79 06    ;
CODE_298825:    BMI CODE_2987E6             ; $29:8825: 30 BF       ;
CODE_298827:    LDA $0691,x                 ; $29:8827: BD 91 06    ;
CODE_29882A:    LSR A                       ; $29:882A: 4A          ;
CODE_29882B:    BCS CODE_2987E6                     ; $29:882B: B0 B9       ;
CODE_29882D:    JSL CODE_27A837             ; $29:882D: 22 37 A8 27 ;
CODE_298831:    LDA $0F                     ; $29:8831: A5 0F       ;
CODE_298833:    CLC                         ; $29:8833: 18          ;
CODE_298834:    ADC #$1B                    ; $29:8834: 69 1B       ;
CODE_298836:    CMP #$37                    ; $29:8836: C9 37       ;
CODE_298838:    BCS CODE_2987E6                     ; $29:8838: B0 AC       ;
CODE_29883A:    RTS                         ; $29:883A: 60          ;

CODE_29883B:    LDY #$00                    ; $29:883B: A0 00       ;
CODE_29883D:    LDA $0679,x                 ; $29:883D: BD 79 06    ;
CODE_298840:    BPL CODE_298844             ; $29:8840: 10 02       ;
CODE_298842:    LDY #$10                    ; $29:8842: A0 10       ;
CODE_298844:    STY $00                     ; $29:8844: 84 00       ;
CODE_298846:    LDY #$03                    ; $29:8846: A0 03       ;
CODE_298848:    JSL CODE_278A74             ; $29:8848: 22 74 8A 27 ;
CODE_29884C:    BNE CODE_29883A             ; $29:884C: D0 EC       ;
CODE_29884E:    LDA $5F,x                   ; $29:884E: B5 5F       ;
CODE_298850:    CLC                         ; $29:8850: 18          ;
CODE_298851:    ADC #$03                    ; $29:8851: 69 03       ;
CODE_298853:    STA $05C9,y                 ; $29:8853: 99 C9 05    ;
CODE_298856:    LDA $44,x                   ; $29:8856: B5 44       ;
CODE_298858:    ADC #$00                    ; $29:8858: 69 00       ;
CODE_29885A:    STA $00E2,y                 ; $29:885A: 99 E2 00    ;
CODE_29885D:    LDA $71,x                   ; $29:885D: B5 71       ;
CODE_29885F:    CLC                         ; $29:885F: 18          ;
CODE_298860:    ADC $00                     ; $29:8860: 65 00       ;
CODE_298862:    STA $05BF,y                 ; $29:8862: 99 BF 05    ;
CODE_298865:    LDA $56,x                   ; $29:8865: B5 56       ;
CODE_298867:    ADC #$00                    ; $29:8867: 69 00       ;
CODE_298869:    STA $1FD7,y                 ; $29:8869: 99 D7 1F    ;
CODE_29886C:    LDA #$05                    ; $29:886C: A9 05       ;
CODE_29886E:    STA $1FC8,y                 ; $29:886E: 99 C8 1F    ;
CODE_298871:    STY $00                     ; $29:8871: 84 00       ;
CODE_298873:    JSL CODE_27A848             ; $29:8873: 22 48 A8 27 ;
CODE_298877:    STY $05                     ; $29:8877: 84 05       ;
CODE_298879:    JSL CODE_27A837             ; $29:8879: 22 37 A8 27 ;
CODE_29887D:    STY $06                     ; $29:887D: 84 06       ;
CODE_29887F:    LDX #$00                    ; $29:887F: A2 00       ;
CODE_298881:    LDA $0F                     ; $29:8881: A5 0F       ;
CODE_298883:    CLC                         ; $29:8883: 18          ;
CODE_298884:    ADC #$50                    ; $29:8884: 69 50       ;
CODE_298886:    CMP #$A0                    ; $29:8886: C9 A0       ;
CODE_298888:    BCC CODE_29888B             ; $29:8888: 90 01       ;
CODE_29888A:    INX                         ; $29:888A: E8          ;
CODE_29888B:    LDY $00                     ; $29:888B: A4 00       ;
CODE_29888D:    LDA.w DATA_21C5C7,x                 ; $29:888D: BD C7 C5    ;
CODE_298890:    LSR $05                     ; $29:8890: 46 05       ;
CODE_298892:    BCC CODE_298898             ; $29:8892: 90 04       ;
CODE_298894:    JSL CODE_27A859         ; $29:8894: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_298898:    STA $05D3,y                 ; $29:8898: 99 D3 05    ;
CODE_29889B:    LDA.w DATA_21C5C9,x                 ; $29:889B: BD C9 C5    ;
CODE_29889E:    LSR $06                     ; $29:889E: 46 06       ;
CODE_2988A0:    BCC CODE_2988A6             ; $29:88A0: 90 04       ;
CODE_2988A2:    JSL CODE_27A859         ; $29:88A2: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_2988A6:    STA $05DD,y                 ; $29:88A6: 99 DD 05    ;
CODE_2988A9:    LDA #$00                    ; $29:88A9: A9 00       ;
CODE_2988AB:    STA $05AB,y                 ; $29:88AB: 99 AB 05    ;
CODE_2988AE:    STA $05A1,y                 ; $29:88AE: 99 A1 05    ;
CODE_2988B1:    LDX $9B                     ; $29:88B1: A6 9B       ;
CODE_2988B3:    RTS                         ; $29:88B3: 60          ;

CODE_2988B4:    LDA $71,x                   ; $29:88B4: B5 71       ;
CODE_2988B6:    CLC                         ; $29:88B6: 18          ;
CODE_2988B7:    ADC #$03                    ; $29:88B7: 69 03       ;
CODE_2988B9:    STA $71,x                   ; $29:88B9: 95 71       ;
CODE_2988BB:    RTL                         ; $29:88BB: 6B          ;

CODE_2988BC:    JSL CODE_279BC3             ; $29:88BC: 22 C3 9B 27 ;
CODE_2988C0:    LDA $0681,x                 ; $29:88C0: BD 81 06    ;
CODE_2988C3:    BNE CODE_2988BB             ; $29:88C3: D0 F6       ;
CODE_2988C5:    JSL CODE_279DC2             ; $29:88C5: 22 C2 9D 27 ;
CODE_2988C9:    LDA $83,x                   ; $29:88C9: B5 83       ;
CODE_2988CB:    STA $00                     ; $29:88CB: 85 00       ;
CODE_2988CD:    LDA $44,x                   ; $29:88CD: B5 44       ;
CODE_2988CF:    XBA                         ; $29:88CF: EB          ;
CODE_2988D0:    LDA $5F,x                   ; $29:88D0: B5 5F       ;
CODE_2988D2:    REP #$30                    ; $29:88D2: C2 30       ;
CODE_2988D4:    SEC                         ; $29:88D4: 38          ;
CODE_2988D5:    SBC $0210                   ; $29:88D5: ED 10 02    ;
CODE_2988D8:    STA $D8                     ; $29:88D8: 85 D8       ;
CODE_2988DA:    STA $DA                     ; $29:88DA: 85 DA       ;
CODE_2988DC:    SEP #$20                    ; $29:88DC: E2 20       ;
CODE_2988DE:    LDY $C6,x                   ; $29:88DE: B4 C6       ;
CODE_2988E0:    LDA $7A,x                   ; $29:88E0: B5 7A       ;
CODE_2988E2:    STA $0800,y                 ; $29:88E2: 99 00 08    ;
CODE_2988E5:    STA $0808,y                 ; $29:88E5: 99 08 08    ;
CODE_2988E8:    STA $0804,y                 ; $29:88E8: 99 04 08    ;
CODE_2988EB:    STA $080C,y                 ; $29:88EB: 99 0C 08    ;
CODE_2988EE:    LDA #$D0                    ; $29:88EE: A9 D0       ;
CODE_2988F0:    STA $0802,y                 ; $29:88F0: 99 02 08    ;
CODE_2988F3:    INC A                       ; $29:88F3: 1A          ;
CODE_2988F4:    STA $080A,y                 ; $29:88F4: 99 0A 08    ;
CODE_2988F7:    LDA #$D2                    ; $29:88F7: A9 D2       ;
CODE_2988F9:    STA $0806,y                 ; $29:88F9: 99 06 08    ;
CODE_2988FC:    INC A                       ; $29:88FC: 1A          ;
CODE_2988FD:    STA $080E,y                 ; $29:88FD: 99 0E 08    ;
CODE_298900:    LDA #$2C                    ; $29:8900: A9 2C       ;
CODE_298902:    STA $02                     ; $29:8902: 85 02       ;
CODE_298904:    LDX #$0000                  ; $29:8904: A2 00 00    ;
CODE_298907:    LDA $0565                   ; $29:8907: AD 65 05    ;
CODE_29890A:    AND #$02                    ; $29:890A: 29 02       ;
CODE_29890C:    BEQ CODE_298913             ; $29:890C: F0 05       ;
CODE_29890E:    LDA #$AC                    ; $29:890E: A9 AC       ;
CODE_298910:    STA $02                     ; $29:8910: 85 02       ;
CODE_298912:    INX                         ; $29:8912: E8          ;
CODE_298913:    LDA $0565                   ; $29:8913: AD 65 05    ;
CODE_298916:    LSR A                       ; $29:8916: 4A          ;
CODE_298917:    LSR A                       ; $29:8917: 4A          ;
CODE_298918:    LSR A                       ; $29:8918: 4A          ;
CODE_298919:    LDA $02                     ; $29:8919: A5 02       ;
CODE_29891B:    STA $0807,y                 ; $29:891B: 99 07 08    ;
CODE_29891E:    STA $0803,y                 ; $29:891E: 99 03 08    ;
CODE_298921:    STA $080B,y                 ; $29:8921: 99 0B 08    ;
CODE_298924:    STA $080F,y                 ; $29:8924: 99 0F 08    ;
CODE_298927:    BCC CODE_298949             ; $29:8927: 90 20       ;
CODE_298929:    ORA #$40                    ; $29:8929: 09 40       ;
CODE_29892B:    STA $0803,y                 ; $29:892B: 99 03 08    ;
CODE_29892E:    STA $080B,y                 ; $29:892E: 99 0B 08    ;
CODE_298931:    LDA $0800,y                 ; $29:8931: B9 00 08    ;
CODE_298934:    CLC                         ; $29:8934: 18          ;
CODE_298935:    ADC #$02                    ; $29:8935: 69 02       ;
CODE_298937:    STA $0800,y                 ; $29:8937: 99 00 08    ;
CODE_29893A:    STA $0808,y                 ; $29:893A: 99 08 08    ;
CODE_29893D:    REP #$20                    ; $29:893D: C2 20       ;
CODE_29893F:    LDA $D8                     ; $29:893F: A5 D8       ;
CODE_298941:    CLC                         ; $29:8941: 18          ;
CODE_298942:    ADC #$0002                  ; $29:8942: 69 02 00    ;
CODE_298945:    STA $D8                     ; $29:8945: 85 D8       ;
CODE_298947:    SEP #$20                    ; $29:8947: E2 20       ;
CODE_298949:    LDA $0803,y                 ; $29:8949: B9 03 08    ;
CODE_29894C:    AND #$80                    ; $29:894C: 29 80       ;
CODE_29894E:    BEQ CODE_29896C             ; $29:894E: F0 1C       ;
CODE_298950:    LDA $0802,y                 ; $29:8950: B9 02 08    ;
CODE_298953:    PHA                         ; $29:8953: 48          ;
CODE_298954:    LDA $080A,y                 ; $29:8954: B9 0A 08    ;
CODE_298957:    STA $0802,y                 ; $29:8957: 99 02 08    ;
CODE_29895A:    PLA                         ; $29:895A: 68          ;
CODE_29895B:    STA $080A,y                 ; $29:895B: 99 0A 08    ;
CODE_29895E:    LDA $0806,y                 ; $29:895E: B9 06 08    ;
CODE_298961:    PHA                         ; $29:8961: 48          ;
CODE_298962:    LDA $080E,y                 ; $29:8962: B9 0E 08    ;
CODE_298965:    STA $0806,y                 ; $29:8965: 99 06 08    ;
CODE_298968:    PLA                         ; $29:8968: 68          ;
CODE_298969:    STA $080E,y                 ; $29:8969: 99 0E 08    ;
CODE_29896C:    LDA $00                     ; $29:896C: A5 00       ;
CODE_29896E:    CLC                         ; $29:896E: 18          ;
CODE_29896F:    ADC.w DATA_21C5CB,x                 ; $29:896F: 7D CB C5    ;
CODE_298972:    STA $0801,y                 ; $29:8972: 99 01 08    ;
CODE_298975:    CLC                         ; $29:8975: 18          ;
CODE_298976:    ADC #$08                    ; $29:8976: 69 08       ;
CODE_298978:    STA $0809,y                 ; $29:8978: 99 09 08    ;
CODE_29897B:    LDA $00                     ; $29:897B: A5 00       ;
CODE_29897D:    CLC                         ; $29:897D: 18          ;
CODE_29897E:    ADC.w DATA_21C5CD,x                 ; $29:897E: 7D CD C5    ;
CODE_298981:    STA $0805,y                 ; $29:8981: 99 05 08    ;
CODE_298984:    CLC                         ; $29:8984: 18          ;
CODE_298985:    ADC #$08                    ; $29:8985: 69 08       ;
CODE_298987:    STA $080D,y                 ; $29:8987: 99 0D 08    ;
CODE_29898A:    REP #$20                    ; $29:898A: C2 20       ;
CODE_29898C:    TYA                         ; $29:898C: 98          ;
CODE_29898D:    LSR A                       ; $29:898D: 4A          ;
CODE_29898E:    LSR A                       ; $29:898E: 4A          ;
CODE_29898F:    TAY                         ; $29:898F: A8          ;
CODE_298990:    SEP #$20                    ; $29:8990: E2 20       ;
CODE_298992:    LDA $D9                     ; $29:8992: A5 D9       ;
CODE_298994:    AND #$01                    ; $29:8994: 29 01       ;
CODE_298996:    STA $0A20,y                 ; $29:8996: 99 20 0A    ;
CODE_298999:    STA $0A22,y                 ; $29:8999: 99 22 0A    ;
CODE_29899C:    LDA $DB                     ; $29:899C: A5 DB       ;
CODE_29899E:    AND #$01                    ; $29:899E: 29 01       ;
CODE_2989A0:    STA $0A21,y                 ; $29:89A0: 99 21 0A    ;
CODE_2989A3:    STA $0A23,y                 ; $29:89A3: 99 23 0A    ;
CODE_2989A6:    SEP #$10                    ; $29:89A6: E2 10       ;
CODE_2989A8:    LDX $9B                     ; $29:89A8: A6 9B       ;
CODE_2989AA:    RTL                         ; $29:89AA: 6B          ;

CODE_2989AB:    STX $03                     ; $29:89AB: 86 03       ;
CODE_2989AD:    STY $02                     ; $29:89AD: 84 02       ;
CODE_2989AF:    STA $01                     ; $29:89AF: 85 01       ;
CODE_2989B1:    LDX $9B                     ; $29:89B1: A6 9B       ;
CODE_2989B3:    LDA $0681,x                 ; $29:89B3: BD 81 06    ;
CODE_2989B6:    BNE CODE_2989E0             ; $29:89B6: D0 28       ;
CODE_2989B8:    LDA $01                     ; $29:89B8: A5 01       ;
CODE_2989BA:    SEC                         ; $29:89BA: 38          ;
CODE_2989BB:    SBC $7A,x                   ; $29:89BB: F5 7A       ;
CODE_2989BD:    STA $DA                     ; $29:89BD: 85 DA       ;
CODE_2989BF:    STZ $DB                     ; $29:89BF: 64 DB       ;
CODE_2989C1:    LDA $5F,x                   ; $29:89C1: B5 5F       ;
CODE_2989C3:    STA $DC                     ; $29:89C3: 85 DC       ;
CODE_2989C5:    LDA $44,x                   ; $29:89C5: B5 44       ;
CODE_2989C7:    STA $DD                     ; $29:89C7: 85 DD       ;
CODE_2989C9:    REP #$20                    ; $29:89C9: C2 20       ;
CODE_2989CB:    LDA $DC                     ; $29:89CB: A5 DC       ;
CODE_2989CD:    CLC                         ; $29:89CD: 18          ;
CODE_2989CE:    ADC $DA                     ; $29:89CE: 65 DA       ;
CODE_2989D0:    SEC                         ; $29:89D0: 38          ;
CODE_2989D1:    SBC $0210                   ; $29:89D1: ED 10 02    ;
CODE_2989D4:    STA $DA                     ; $29:89D4: 85 DA       ;
CODE_2989D6:    CMP #$0100                  ; $29:89D6: C9 00 01    ;
CODE_2989D9:    BCC CODE_2989E5             ; $29:89D9: 90 0A       ;
CODE_2989DB:    CMP #$FFE0                  ; $29:89DB: C9 E0 FF    ;
CODE_2989DE:    BCS CODE_2989E5                     ; $29:89DE: B0 05       ;
CODE_2989E0:    SEP #$20                    ; $29:89E0: E2 20       ;
CODE_2989E2:    SEC                         ; $29:89E2: 38          ;
CODE_2989E3:    BRA CODE_2989E8             ; $29:89E3: 80 03       ;

CODE_2989E5:    SEP #$20                    ; $29:89E5: E2 20       ;
CODE_2989E7:    CLC                         ; $29:89E7: 18          ;
CODE_2989E8:    LDY $02                     ; $29:89E8: A4 02       ;
CODE_2989EA:    LDA $01                     ; $29:89EA: A5 01       ;
CODE_2989EC:    LDX $03                     ; $29:89EC: A6 03       ;
CODE_2989EE:    RTL                         ; $29:89EE: 6B          ;

CODE_2989EF:    DEC $71,x                   ; $29:89EF: D6 71       ;
CODE_2989F1:    LDY $71,x                   ; $29:89F1: B4 71       ;
CODE_2989F3:    INY                         ; $29:89F3: C8          ;
CODE_2989F4:    BNE CODE_2989F8             ; $29:89F4: D0 02       ;
CODE_2989F6:    DEC $56,x                   ; $29:89F6: D6 56       ;
CODE_2989F8:    RTL                         ; $29:89F8: 6B          ;

CODE_2989F9:    INC $4D,x                   ; $29:89F9: F6 4D       ;
CODE_2989FB:    JSL CODE_27A837             ; $29:89FB: 22 37 A8 27 ;
CODE_2989FF:    LDA.w DATA_21C5CF,y                 ; $29:89FF: B9 CF C5    ;
CODE_298A02:    STA $0679,x                 ; $29:8A02: 9D 79 06    ;
CODE_298A05:    RTL                         ; $29:8A05: 6B          ;

CODE_298A06:    LDA $0661,x                 ; $29:8A06: BD 61 06    ;
CODE_298A09:    CMP #$02                    ; $29:8A09: C9 02       ;
CODE_298A0B:    BEQ CODE_298A11             ; $29:8A0B: F0 04       ;
CODE_298A0D:    JSR CODE_298BF2             ; $29:8A0D: 20 F2 8B    ;
CODE_298A10:    RTL                         ; $29:8A10: 6B          ;

CODE_298A11:    LDA $0679,x                 ; $29:8A11: BD 79 06    ;
CODE_298A14:    AND #$40                    ; $29:8A14: 29 40       ;
CODE_298A16:    ORA #$10                    ; $29:8A16: 09 10       ;
CODE_298A18:    STA $0679,x                 ; $29:8A18: 9D 79 06    ;
CODE_298A1B:    JSL CODE_279BC3             ; $29:8A1B: 22 C3 9B 27 ;
CODE_298A1F:    LDA $44,x                   ; $29:8A1F: B5 44       ;
CODE_298A21:    XBA                         ; $29:8A21: EB          ;
CODE_298A22:    LDA $5F,x                   ; $29:8A22: B5 5F       ;
CODE_298A24:    REP #$20                    ; $29:8A24: C2 20       ;
CODE_298A26:    SEC                         ; $29:8A26: 38          ;
CODE_298A27:    SBC $0210                   ; $29:8A27: ED 10 02    ;
CODE_298A2A:    BPL CODE_298A30             ; $29:8A2A: 10 04       ;
CODE_298A2C:    EOR #$FFFF                  ; $29:8A2C: 49 FF FF    ;
CODE_298A2F:    INC A                       ; $29:8A2F: 1A          ;
CODE_298A30:    CMP #$0140                  ; $29:8A30: C9 40 01    ;
CODE_298A33:    BCS CODE_298A9D                     ; $29:8A33: B0 68       ;
CODE_298A35:    LDA $C6,x                   ; $29:8A35: B5 C6       ;
CODE_298A37:    CLC                         ; $29:8A37: 18          ;
CODE_298A38:    ADC #$0010                  ; $29:8A38: 69 10 00    ;
CODE_298A3B:    STA $C6,x                   ; $29:8A3B: 95 C6       ;
CODE_298A3D:    SEP #$20                    ; $29:8A3D: E2 20       ;
CODE_298A3F:    JSL CODE_279EBB             ; $29:8A3F: 22 BB 9E 27 ;
CODE_298A43:    LDA $0669,x                 ; $29:8A43: BD 69 06    ;
CODE_298A46:    CMP #$01                    ; $29:8A46: C9 01       ;
CODE_298A48:    BNE CODE_298A9D             ; $29:8A48: D0 53       ;
CODE_298A4A:    JSL CODE_27A85F             ; $29:8A4A: 22 5F A8 27 ;
CODE_298A4E:    BNE CODE_298A9D             ; $29:8A4E: D0 4D       ;
CODE_298A50:    REP #$10                    ; $29:8A50: C2 10       ;
CODE_298A52:    LDY $C6,x                   ; $29:8A52: B4 C6       ;
CODE_298A54:    LDA $83,x                   ; $29:8A54: B5 83       ;
CODE_298A56:    SEC                         ; $29:8A56: 38          ;
CODE_298A57:    SBC #$08                    ; $29:8A57: E9 08       ;
CODE_298A59:    STA $07F1,y                 ; $29:8A59: 99 F1 07    ;
CODE_298A5C:    CLC                         ; $29:8A5C: 18          ;
CODE_298A5D:    ADC #$08                    ; $29:8A5D: 69 08       ;
CODE_298A5F:    STA $07F5,y                 ; $29:8A5F: 99 F5 07    ;
CODE_298A62:    LDA $0679,x                 ; $29:8A62: BD 79 06    ;
CODE_298A65:    ASL A                       ; $29:8A65: 0A          ;
CODE_298A66:    ASL A                       ; $29:8A66: 0A          ;
CODE_298A67:    LDA #$00                    ; $29:8A67: A9 00       ;
CODE_298A69:    BCS CODE_298A6D                     ; $29:8A69: B0 02       ;
CODE_298A6B:    LDA #$08                    ; $29:8A6B: A9 08       ;
CODE_298A6D:    CLC                         ; $29:8A6D: 18          ;
CODE_298A6E:    ADC $7A,x                   ; $29:8A6E: 75 7A       ;
CODE_298A70:    STA $07F0,y                 ; $29:8A70: 99 F0 07    ;
CODE_298A73:    STA $07F4,y                 ; $29:8A73: 99 F4 07    ;
CODE_298A76:    LDA #$F2                    ; $29:8A76: A9 F2       ;
CODE_298A78:    STA $07F2,y                 ; $29:8A78: 99 F2 07    ;
CODE_298A7B:    INC A                       ; $29:8A7B: 1A          ;
CODE_298A7C:    STA $07F6,y                 ; $29:8A7C: 99 F6 07    ;
CODE_298A7F:    LDA #$20                    ; $29:8A7F: A9 20       ;
CODE_298A81:    STA $07F3,y                 ; $29:8A81: 99 F3 07    ;
CODE_298A84:    STA $07F7,y                 ; $29:8A84: 99 F7 07    ;
CODE_298A87:    PHY                         ; $29:8A87: 5A          ;
CODE_298A88:    REP #$20                    ; $29:8A88: C2 20       ;
CODE_298A8A:    TYA                         ; $29:8A8A: 98          ;
CODE_298A8B:    SEC                         ; $29:8A8B: 38          ;
CODE_298A8C:    SBC #$0010                  ; $29:8A8C: E9 10 00    ;
CODE_298A8F:    LSR A                       ; $29:8A8F: 4A          ;
CODE_298A90:    LSR A                       ; $29:8A90: 4A          ;
CODE_298A91:    TAY                         ; $29:8A91: A8          ;
CODE_298A92:    SEP #$20                    ; $29:8A92: E2 20       ;
CODE_298A94:    LDA #$00                    ; $29:8A94: A9 00       ;
CODE_298A96:    STA $0A20,y                 ; $29:8A96: 99 20 0A    ;
CODE_298A99:    STA $0A21,y                 ; $29:8A99: 99 21 0A    ;
CODE_298A9C:    PLY                         ; $29:8A9C: 7A          ;
CODE_298A9D:    SEP #$30                    ; $29:8A9D: E2 30       ;
CODE_298A9F:    LDA $9C                     ; $29:8A9F: A5 9C       ;
CODE_298AA1:    BNE CODE_298AA9             ; $29:8AA1: D0 06       ;
CODE_298AA3:    JSR CODE_298B58             ; $29:8AA3: 20 58 8B    ;
CODE_298AA6:    JSR CODE_298AAA             ; $29:8AA6: 20 AA 8A    ;
CODE_298AA9:    RTL                         ; $29:8AA9: 6B          ;

CODE_298AAA:    LDA $68,x                   ; $29:8AAA: B5 68       ;
CODE_298AAC:    JSL CODE_20FB1F         ; $29:8AAC: 22 1F FB 20 ; ExecutePtrShort

PNTR_298AB0:        dw CODE_298ABE
                    dw CODE_298AD7
                    dw CODE_298AE7
                    dw CODE_298AFC
                    dw CODE_298B04
                    dw CODE_298B22
                    dw CODE_298B47

CODE_298ABE:    LDA $0518,x                 ; $29:8ABE: BD 18 05    ;
CODE_298AC1:    BNE CODE_298AE6             ; $29:8AC1: D0 23       ;
CODE_298AC3:    JSL CODE_2989FB             ; $29:8AC3: 22 FB 89 29 ;
CODE_298AC7:    LDA $71,x                   ; $29:8AC7: B5 71       ;
CODE_298AC9:    CLC                         ; $29:8AC9: 18          ;
CODE_298ACA:    ADC #$08                    ; $29:8ACA: 69 08       ;
CODE_298ACC:    AND #$F0                    ; $29:8ACC: 29 F0       ;
CODE_298ACE:    SEC                         ; $29:8ACE: 38          ;
CODE_298ACF:    SBC #$06                    ; $29:8ACF: E9 06       ;
CODE_298AD1:    STA $71,x                   ; $29:8AD1: 95 71       ;
CODE_298AD3:    BCS CODE_298AD7                     ; $29:8AD3: B0 02       ;
CODE_298AD5:    DEC $56,x                   ; $29:8AD5: D6 56       ;
CODE_298AD7:    LDA $0518,x                 ; $29:8AD7: BD 18 05    ;
CODE_298ADA:    BNE CODE_298AE6             ; $29:8ADA: D0 0A       ;
CODE_298ADC:    INC $68,x                   ; $29:8ADC: F6 68       ;
CODE_298ADE:    LDY $68,x                   ; $29:8ADE: B4 68       ;
CODE_298AE0:    LDA.w DATA_21C5D1,y                 ; $29:8AE0: B9 D1 C5    ;
CODE_298AE3:    STA $0518,x                 ; $29:8AE3: 9D 18 05    ;
CODE_298AE6:    RTS                         ; $29:8AE6: 60          ;

CODE_298AE7:    LDA #$00                    ; $29:8AE7: A9 00       ;
CODE_298AE9:    JSR CODE_298AFE             ; $29:8AE9: 20 FE 8A    ;
CODE_298AEC:    LDA $0518,x                 ; $29:8AEC: BD 18 05    ;
CODE_298AEF:    LSR A                       ; $29:8AEF: 4A          ;
CODE_298AF0:    BCS CODE_298AFB                     ; $29:8AF0: B0 09       ;
CODE_298AF2:    DEC $71,x                   ; $29:8AF2: D6 71       ;
CODE_298AF4:    LDY $71,x                   ; $29:8AF4: B4 71       ;
CODE_298AF6:    INY                         ; $29:8AF6: C8          ;
CODE_298AF7:    BNE CODE_298AFB             ; $29:8AF7: D0 02       ;
CODE_298AF9:    DEC $56,x                   ; $29:8AF9: D6 56       ;
CODE_298AFB:    RTS                         ; $29:8AFB: 60          ;

CODE_298AFC:    LDA #$01                    ; $29:8AFC: A9 01       ;
CODE_298AFE:    STA $0669,x                 ; $29:8AFE: 9D 69 06    ;
CODE_298B01:    JMP CODE_298AD7             ; $29:8B01: 4C D7 8A    ;

CODE_298B04:    LDA #$02                    ; $29:8B04: A9 02       ;
CODE_298B06:    JSR CODE_298AFE             ; $29:8B06: 20 FE 8A    ;
CODE_298B09:    LDA $0518,x                 ; $29:8B09: BD 18 05    ;
CODE_298B0C:    CMP #$1F                    ; $29:8B0C: C9 1F       ;
CODE_298B0E:    BNE CODE_298B21             ; $29:8B0E: D0 11       ;
CODE_298B10:    LDA $0681,x                 ; $29:8B10: BD 81 06    ;
CODE_298B13:    BNE CODE_298B21             ; $29:8B13: D0 0C       ;
CODE_298B15:    LDA $0651,x                 ; $29:8B15: BD 51 06    ;
CODE_298B18:    AND #$C0                    ; $29:8B18: 29 C0       ;
CODE_298B1A:    CMP #$C0                    ; $29:8B1A: C9 C0       ;
CODE_298B1C:    BEQ CODE_298B21             ; $29:8B1C: F0 03       ;
CODE_298B1E:    JSR CODE_298BA4             ; $29:8B1E: 20 A4 8B    ;
CODE_298B21:    RTS                         ; $29:8B21: 60          ;

CODE_298B22:    LDA $0518,x                 ; $29:8B22: BD 18 05    ;
CODE_298B25:    BNE CODE_298B3B             ; $29:8B25: D0 14       ;
CODE_298B27:    LDA $4D,x                   ; $29:8B27: B5 4D       ;
CODE_298B29:    BNE CODE_298B31             ; $29:8B29: D0 06       ;
CODE_298B2B:    LDA #$00                    ; $29:8B2B: A9 00       ;
CODE_298B2D:    STA $0661,x                 ; $29:8B2D: 9D 61 06    ;
CODE_298B30:    RTS                         ; $29:8B30: 60          ;

CODE_298B31:    LDA #$00                    ; $29:8B31: A9 00       ;
CODE_298B33:    STA $68,x                   ; $29:8B33: 95 68       ;
CODE_298B35:    LDA #$40                    ; $29:8B35: A9 40       ;
CODE_298B37:    STA $0518,x                 ; $29:8B37: 9D 18 05    ;
CODE_298B3A:    RTS                         ; $29:8B3A: 60          ;

CODE_298B3B:    INC $71,x                   ; $29:8B3B: F6 71       ;
CODE_298B3D:    BNE CODE_298B41             ; $29:8B3D: D0 02       ;
CODE_298B3F:    INC $56,x                   ; $29:8B3F: F6 56       ;
CODE_298B41:    LDA #$00                    ; $29:8B41: A9 00       ;
CODE_298B43:    STA $0669,x                 ; $29:8B43: 9D 69 06    ;
CODE_298B46:    RTS                         ; $29:8B46: 60          ;

CODE_298B47:    LDA $0518,x                 ; $29:8B47: BD 18 05    ;
CODE_298B4A:    BNE CODE_298B52             ; $29:8B4A: D0 06       ;
CODE_298B4C:    LDA #$06                    ; $29:8B4C: A9 06       ;
CODE_298B4E:    STA $0661,x                 ; $29:8B4E: 9D 61 06    ;
CODE_298B51:    RTS                         ; $29:8B51: 60          ;

CODE_298B52:    LDA #$03                    ; $29:8B52: A9 03       ;
CODE_298B54:    STA $0669,x                 ; $29:8B54: 9D 69 06    ;
CODE_298B57:    RTS                         ; $29:8B57: 60          ;

CODE_298B58:    LDA $68,x                   ; $29:8B58: B5 68       ;
CODE_298B5A:    CMP #$06                    ; $29:8B5A: C9 06       ;
CODE_298B5C:    BEQ CODE_298BA3             ; $29:8B5C: F0 45       ;
CODE_298B5E:    INC $05F4                   ; $29:8B5E: EE F4 05    ;
CODE_298B61:    JSL CODE_279B6B             ; $29:8B61: 22 6B 9B 27 ;
CODE_298B65:    DEC $05F4                   ; $29:8B65: CE F4 05    ;
CODE_298B68:    LDA $0797,x                 ; $29:8B68: BD 97 07    ;
CODE_298B6B:    BEQ CODE_298BA3             ; $29:8B6B: F0 36       ;
CODE_298B6D:    LDA $9D                     ; $29:8B6D: A5 9D       ;
CODE_298B6F:    BMI CODE_298BA3             ; $29:8B6F: 30 32       ;
CODE_298B71:    CMP #$10                    ; $29:8B71: C9 10       ;
CODE_298B73:    BCS CODE_298B87                     ; $29:8B73: B0 12       ;
CODE_298B75:    LDA #$00                    ; $29:8B75: A9 00       ;
CODE_298B77:    STA $A6                     ; $29:8B77: 85 A6       ;
CODE_298B79:    LDA $71,x                   ; $29:8B79: B5 71       ;
CODE_298B7B:    SEC                         ; $29:8B7B: 38          ;
CODE_298B7C:    SBC #$1F                    ; $29:8B7C: E9 1F       ;
CODE_298B7E:    STA $70                     ; $29:8B7E: 85 70       ;
CODE_298B80:    LDA $56,x                   ; $29:8B80: B5 56       ;
CODE_298B82:    SBC #$00                    ; $29:8B82: E9 00       ;
CODE_298B84:    STA $55                     ; $29:8B84: 85 55       ;
CODE_298B86:    RTS                         ; $29:8B86: 60          ;

CODE_298B87:    LDA #$06                    ; $29:8B87: A9 06       ;
CODE_298B89:    STA $68,x                   ; $29:8B89: 95 68       ;
CODE_298B8B:    LDA #$0C                    ; $29:8B8B: A9 0C       ;
CODE_298B8D:    STA $0518,x                 ; $29:8B8D: 9D 18 05    ;
CODE_298B90:    LDA #$D0                    ; $29:8B90: A9 D0       ;
CODE_298B92:    STA $9D                     ; $29:8B92: 85 9D       ;
CODE_298B94:    LDA #$03                    ; $29:8B94: A9 03       ;
CODE_298B96:    STA $1200                   ; $29:8B96: 8D 00 12    ;
CODE_298B99:    LDA $05F4                   ; $29:8B99: AD F4 05    ;
CODE_298B9C:    INC $05F4                   ; $29:8B9C: EE F4 05    ;
CODE_298B9F:    JSL CODE_278A8A             ; $29:8B9F: 22 8A 8A 27 ;
CODE_298BA3:    RTS                         ; $29:8BA3: 60          ;

CODE_298BA4:    JSL CODE_278A72             ; $29:8BA4: 22 72 8A 27 ;
CODE_298BA8:    LDA $71,x                   ; $29:8BA8: B5 71       ;
CODE_298BAA:    SEC                         ; $29:8BAA: 38          ;
CODE_298BAB:    SBC #$08                    ; $29:8BAB: E9 08       ;
CODE_298BAD:    STA $05BF,y                 ; $29:8BAD: 99 BF 05    ;
CODE_298BB0:    LDA $56,x                   ; $29:8BB0: B5 56       ;
CODE_298BB2:    SBC #$00                    ; $29:8BB2: E9 00       ;
CODE_298BB4:    STA $1FD7,y                 ; $29:8BB4: 99 D7 1F    ;
CODE_298BB7:    LDA $5F,x                   ; $29:8BB7: B5 5F       ;
CODE_298BB9:    STA $05C9,y                 ; $29:8BB9: 99 C9 05    ;
CODE_298BBC:    LDA $44,x                   ; $29:8BBC: B5 44       ;
CODE_298BBE:    STA $00E2,y                 ; $29:8BBE: 99 E2 00    ;
CODE_298BC1:    LDA $1A0E                   ; $29:8BC1: AD 0E 1A    ;
CODE_298BC4:    CMP #$0E                    ; $29:8BC4: C9 0E       ;
CODE_298BC6:    LDA #$10                    ; $29:8BC6: A9 10       ;
CODE_298BC8:    BCC CODE_298BCC             ; $29:8BC8: 90 02       ;
CODE_298BCA:    LDA #$18                    ; $29:8BCA: A9 18       ;
CODE_298BCC:    STA $02                     ; $29:8BCC: 85 02       ;
CODE_298BCE:    LDA $0679,x                 ; $29:8BCE: BD 79 06    ;
CODE_298BD1:    ASL A                       ; $29:8BD1: 0A          ;
CODE_298BD2:    ASL A                       ; $29:8BD2: 0A          ;
CODE_298BD3:    STY $00                     ; $29:8BD3: 84 00       ;
CODE_298BD5:    LDA $02                     ; $29:8BD5: A5 02       ;
CODE_298BD7:    BCS CODE_298BDB                     ; $29:8BD7: B0 02       ;
CODE_298BD9:    LDA #$F0                    ; $29:8BD9: A9 F0       ;
CODE_298BDB:    STA $05DD,y                 ; $29:8BDB: 99 DD 05    ;
CODE_298BDE:    LDA $0783,x                 ; $29:8BDE: BD 83 07    ;
CODE_298BE1:    AND #$07                    ; $29:8BE1: 29 07       ;
CODE_298BE3:    TAY                         ; $29:8BE3: A8          ;
CODE_298BE4:    LDA.w DATA_21C5D7,y                 ; $29:8BE4: B9 D7 C5    ;
CODE_298BE7:    LDY $00                     ; $29:8BE7: A4 00       ;
CODE_298BE9:    STA $05D3,y                 ; $29:8BE9: 99 D3 05    ;
CODE_298BEC:    LDA #$0A                    ; $29:8BEC: A9 0A       ;
CODE_298BEE:    STA $1FC8,y                 ; $29:8BEE: 99 C8 1F    ;
CODE_298BF1:    RTS                         ; $29:8BF1: 60          ;

CODE_298BF2:    LDY #$02                    ; $29:8BF2: A0 02       ;
CODE_298BF4:    LDA $0565                   ; $29:8BF4: AD 65 05    ;
CODE_298BF7:    AND #$10                    ; $29:8BF7: 29 10       ;
CODE_298BF9:    BEQ CODE_298BFC             ; $29:8BF9: F0 01       ;
CODE_298BFB:    INY                         ; $29:8BFB: C8          ;
CODE_298BFC:    TYA                         ; $29:8BFC: 98          ;
CODE_298BFD:    STA $0669,x                 ; $29:8BFD: 9D 69 06    ;
CODE_298C00:    LDA #$10                    ; $29:8C00: A9 10       ;
CODE_298C02:    STA $0679,x                 ; $29:8C02: 9D 79 06    ;
CODE_298C05:    JSL CODE_279EE1             ; $29:8C05: 22 E1 9E 27 ;
CODE_298C09:    RTS                         ; $29:8C09: 60          ;

CODE_298C0A:    LDA $71,x                   ; $29:8C0A: B5 71       ;
CODE_298C0C:    SEC                         ; $29:8C0C: 38          ;
CODE_298C0D:    SBC #$01                    ; $29:8C0D: E9 01       ;
CODE_298C0F:    STA $71,x                   ; $29:8C0F: 95 71       ;
CODE_298C11:    LDA $56,x                   ; $29:8C11: B5 56       ;
CODE_298C13:    SBC #$00                    ; $29:8C13: E9 00       ;
CODE_298C15:    STA $56,x                   ; $29:8C15: 95 56       ;
CODE_298C17:    RTL                         ; $29:8C17: 6B          ;

CODE_298C18:    JSL CODE_279BC3             ; $29:8C18: 22 C3 9B 27 ;
CODE_298C1C:    JSL CODE_279EBB             ; $29:8C1C: 22 BB 9E 27 ;
CODE_298C20:    LDA $0651,x                 ; $29:8C20: BD 51 06    ;
CODE_298C23:    PHA                         ; $29:8C23: 48          ;
CODE_298C24:    ASL A                       ; $29:8C24: 0A          ;
CODE_298C25:    ASL A                       ; $29:8C25: 0A          ;
CODE_298C26:    STA $0651,x                 ; $29:8C26: 9D 51 06    ;
CODE_298C29:    LDA $5F,x                   ; $29:8C29: B5 5F       ;
CODE_298C2B:    PHA                         ; $29:8C2B: 48          ;
CODE_298C2C:    CLC                         ; $29:8C2C: 18          ;
CODE_298C2D:    ADC #$10                    ; $29:8C2D: 69 10       ;
CODE_298C2F:    STA $5F,x                   ; $29:8C2F: 95 5F       ;
CODE_298C31:    LDA $44,x                   ; $29:8C31: B5 44       ;
CODE_298C33:    PHA                         ; $29:8C33: 48          ;
CODE_298C34:    ADC #$00                    ; $29:8C34: 69 00       ;
CODE_298C36:    STA $44,x                   ; $29:8C36: 95 44       ;
CODE_298C38:    REP #$20                    ; $29:8C38: C2 20       ;
CODE_298C3A:    LDA $C6,x                   ; $29:8C3A: B5 C6       ;
CODE_298C3C:    CLC                         ; $29:8C3C: 18          ;
CODE_298C3D:    ADC #$0010                  ; $29:8C3D: 69 10 00    ;
CODE_298C40:    STA $C6,x                   ; $29:8C40: 95 C6       ;
CODE_298C42:    SEP #$20                    ; $29:8C42: E2 20       ;
CODE_298C44:    JSL CODE_279EBB             ; $29:8C44: 22 BB 9E 27 ;
CODE_298C48:    PLA                         ; $29:8C48: 68          ;
CODE_298C49:    STA $44,x                   ; $29:8C49: 95 44       ;
CODE_298C4B:    PLA                         ; $29:8C4B: 68          ;
CODE_298C4C:    STA $5F,x                   ; $29:8C4C: 95 5F       ;
CODE_298C4E:    PLA                         ; $29:8C4E: 68          ;
CODE_298C4F:    STA $0651,x                 ; $29:8C4F: 9D 51 06    ;
CODE_298C52:    JSL CODE_279DC2             ; $29:8C52: 22 C2 9D 27 ;
CODE_298C56:    LDA $9C                     ; $29:8C56: A5 9C       ;
CODE_298C58:    BNE CODE_298C17             ; $29:8C58: D0 BD       ;
CODE_298C5A:    LDA $8C,x                   ; $29:8C5A: B5 8C       ;
CODE_298C5C:    BEQ CODE_298C84             ; $29:8C5C: F0 26       ;
CODE_298C5E:    BPL CODE_298C64             ; $29:8C5E: 10 04       ;
CODE_298C60:    JSL CODE_27A859         ; $29:8C60: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_298C64:    ASL A                       ; $29:8C64: 0A          ;
CODE_298C65:    ASL A                       ; $29:8C65: 0A          ;
CODE_298C66:    ASL A                       ; $29:8C66: 0A          ;
CODE_298C67:    ASL A                       ; $29:8C67: 0A          ;
CODE_298C68:    ADC #$60                    ; $29:8C68: 69 60       ;
CODE_298C6A:    ADC $1021,x                 ; $29:8C6A: 7D 21 10    ;
CODE_298C6D:    STA $1021,x                 ; $29:8C6D: 9D 21 10    ;
CODE_298C70:    BCC CODE_298C84             ; $29:8C70: 90 12       ;
CODE_298C72:    LDA $8C,x                   ; $29:8C72: B5 8C       ;
CODE_298C74:    ASL A                       ; $29:8C74: 0A          ;
CODE_298C75:    LDA #$01                    ; $29:8C75: A9 01       ;
CODE_298C77:    BCC CODE_298C7B             ; $29:8C77: 90 02       ;
CODE_298C79:    LDA #$FF                    ; $29:8C79: A9 FF       ;
CODE_298C7B:    CLC                         ; $29:8C7B: 18          ;
CODE_298C7C:    ADC $0669,x                 ; $29:8C7C: 7D 69 06    ;
CODE_298C7F:    AND #$03                    ; $29:8C7F: 29 03       ;
CODE_298C81:    STA $0669,x                 ; $29:8C81: 9D 69 06    ;
CODE_298C84:    LDA $68,x                   ; $29:8C84: B5 68       ;
CODE_298C86:    BEQ CODE_298C8C             ; $29:8C86: F0 04       ;
CODE_298C88:    JSR CODE_298D18             ; $29:8C88: 20 18 8D    ;
CODE_298C8B:    RTL                         ; $29:8C8B: 6B          ;

CODE_298C8C:    LDA $15                     ; $29:8C8C: A5 15       ;
CODE_298C8E:    AND #$07                    ; $29:8C8E: 29 07       ;
CODE_298C90:    BNE CODE_298C9E             ; $29:8C90: D0 0C       ;
CODE_298C92:    LDA $8C,x                   ; $29:8C92: B5 8C       ;
CODE_298C94:    BEQ CODE_298C9E             ; $29:8C94: F0 08       ;
CODE_298C96:    BPL CODE_298C9C             ; $29:8C96: 10 04       ;
CODE_298C98:    INC $8C,x                   ; $29:8C98: F6 8C       ;
CODE_298C9A:    INC $8C,x                   ; $29:8C9A: F6 8C       ;
CODE_298C9C:    DEC $8C,x                   ; $29:8C9C: D6 8C       ;
CODE_298C9E:    JSR CODE_298D1D             ; $29:8C9E: 20 1D 8D    ;
CODE_298CA1:    JSL CODE_278B93             ; $29:8CA1: 22 93 8B 27 ;
CODE_298CA5:    LDA $1F77                   ; $29:8CA5: AD 77 1F    ;
CODE_298CA8:    CMP #$9D                    ; $29:8CA8: C9 9D       ;
CODE_298CAA:    BNE CODE_298CB2             ; $29:8CAA: D0 06       ;
CODE_298CAC:    LDA #$00                    ; $29:8CAC: A9 00       ;
CODE_298CAE:    STA $8C,x                   ; $29:8CAE: 95 8C       ;
CODE_298CB0:    INC $A7,x                   ; $29:8CB0: F6 A7       ;
CODE_298CB2:    JSL CODE_298D58             ; $29:8CB2: 22 58 8D 29 ;
CODE_298CB6:    JSL CODE_27A7EF             ; $29:8CB6: 22 EF A7 27 ;
CODE_298CBA:    LDA $8C,x                   ; $29:8CBA: B5 8C       ;
CODE_298CBC:    BEQ CODE_298CC3             ; $29:8CBC: F0 05       ;
CODE_298CBE:    LDA $0518,x                 ; $29:8CBE: BD 18 05    ;
CODE_298CC1:    BNE CODE_298D17             ; $29:8CC1: D0 54       ;
CODE_298CC3:    JSL CODE_279DC2             ; $29:8CC3: 22 C2 9D 27 ;
CODE_298CC7:    JSL CODE_27A312             ; $29:8CC7: 22 12 A3 27 ;
CODE_298CCB:    BCC CODE_298D17             ; $29:8CCB: 90 4A       ;
CODE_298CCD:    LDA $82                     ; $29:8CCD: A5 82       ;
CODE_298CCF:    ADC #$17                    ; $29:8CCF: 69 17       ;
CODE_298CD1:    CMP $83,x                   ; $29:8CD1: D5 83       ;
CODE_298CD3:    BCS CODE_298CF7                     ; $29:8CD3: B0 22       ;
CODE_298CD5:    LDA $9D                     ; $29:8CD5: A5 9D       ;
CODE_298CD7:    BMI CODE_298CF6             ; $29:8CD7: 30 1D       ;
CODE_298CD9:    LDA $A7,x                   ; $29:8CD9: B5 A7       ;
CODE_298CDB:    BNE CODE_298CE1             ; $29:8CDB: D0 04       ;
CODE_298CDD:    LDA #$05                    ; $29:8CDD: A9 05       ;
CODE_298CDF:    STA $8C,x                   ; $29:8CDF: 95 8C       ;
CODE_298CE1:    LDA #$10                    ; $29:8CE1: A9 10       ;
CODE_298CE3:    STA $0518,x                 ; $29:8CE3: 9D 18 05    ;
CODE_298CE6:    STA $101F                   ; $29:8CE6: 8D 1F 10    ;
CODE_298CE9:    LDA #$00                    ; $29:8CE9: A9 00       ;
CODE_298CEB:    STA $9D                     ; $29:8CEB: 85 9D       ;
CODE_298CED:    STA $A6                     ; $29:8CED: 85 A6       ;
CODE_298CEF:    LDA $71,x                   ; $29:8CEF: B5 71       ;
CODE_298CF1:    SEC                         ; $29:8CF1: 38          ;
CODE_298CF2:    SBC #$1E                    ; $29:8CF2: E9 1E       ;
CODE_298CF4:    STA $70                     ; $29:8CF4: 85 70       ;
CODE_298CF6:    RTL                         ; $29:8CF6: 6B          ;

CODE_298CF7:    LDA #$FC                    ; $29:8CF7: A9 FC       ;
CODE_298CF9:    LDY $BB                     ; $29:8CF9: A4 BB       ;
CODE_298CFB:    BNE CODE_298CFF             ; $29:8CFB: D0 02       ;
CODE_298CFD:    LDA #$0C                    ; $29:8CFD: A9 0C       ;
CODE_298CFF:    CLC                         ; $29:8CFF: 18          ;
CODE_298D00:    ADC $82                     ; $29:8D00: 65 82       ;
CODE_298D02:    CMP $83,x                   ; $29:8D02: D5 83       ;
CODE_298D04:    BCC CODE_298D13             ; $29:8D04: 90 0D       ;
CODE_298D06:    LDA $9D                     ; $29:8D06: A5 9D       ;
CODE_298D08:    BPL CODE_298D12             ; $29:8D08: 10 08       ;
CODE_298D0A:    LDA #$FB                    ; $29:8D0A: A9 FB       ;
CODE_298D0C:    STA $8C,x                   ; $29:8D0C: 95 8C       ;
CODE_298D0E:    LDA #$10                    ; $29:8D0E: A9 10       ;
CODE_298D10:    STA $9D                     ; $29:8D10: 85 9D       ;
CODE_298D12:    RTL                         ; $29:8D12: 6B          ;

CODE_298D13:    LDA #$00                    ; $29:8D13: A9 00       ;
CODE_298D15:    STA $8B                     ; $29:8D15: 85 8B       ;
CODE_298D17:    RTL                         ; $29:8D17: 6B          ;

CODE_298D18:    JSL CODE_27983B             ; $29:8D18: 22 3B 98 27 ;
CODE_298D1C:    RTS                         ; $29:8D1C: 60          ;

CODE_298D1D:    LDA #$E2                    ; $29:8D1D: A9 E2       ;
CODE_298D1F:    LDY $8C,x                   ; $29:8D1F: B4 8C       ;
CODE_298D21:    BEQ CODE_298D57             ; $29:8D21: F0 34       ;
CODE_298D23:    BPL CODE_298D27             ; $29:8D23: 10 02       ;
CODE_298D25:    LDA #$1E                    ; $29:8D25: A9 1E       ;
CODE_298D27:    LDY #$00                    ; $29:8D27: A0 00       ;
CODE_298D29:    CMP #$00                    ; $29:8D29: C9 00       ;
CODE_298D2B:    BPL CODE_298D2E             ; $29:8D2B: 10 01       ;
CODE_298D2D:    DEY                         ; $29:8D2D: 88          ;
CODE_298D2E:    STA $00                     ; $29:8D2E: 85 00       ;
CODE_298D30:    LDA $5F,x                   ; $29:8D30: B5 5F       ;
CODE_298D32:    PHA                         ; $29:8D32: 48          ;
CODE_298D33:    CLC                         ; $29:8D33: 18          ;
CODE_298D34:    ADC $00                     ; $29:8D34: 65 00       ;
CODE_298D36:    STA $5F,x                   ; $29:8D36: 95 5F       ;
CODE_298D38:    LDA $44,x                   ; $29:8D38: B5 44       ;
CODE_298D3A:    PHA                         ; $29:8D3A: 48          ;
CODE_298D3B:    TYA                         ; $29:8D3B: 98          ;
CODE_298D3C:    ADC $44,x                   ; $29:8D3C: 75 44       ;
CODE_298D3E:    STA $44,x                   ; $29:8D3E: 95 44       ;
CODE_298D40:    JSL CODE_278B93             ; $29:8D40: 22 93 8B 27 ;
CODE_298D44:    PLA                         ; $29:8D44: 68          ;
CODE_298D45:    STA $44,x                   ; $29:8D45: 95 44       ;
CODE_298D47:    PLA                         ; $29:8D47: 68          ;
CODE_298D48:    STA $5F,x                   ; $29:8D48: 95 5F       ;
CODE_298D4A:    LDA $1F77                   ; $29:8D4A: AD 77 1F    ;
CODE_298D4D:    CMP #$9D                    ; $29:8D4D: C9 9D       ;
CODE_298D4F:    BEQ CODE_298D57             ; $29:8D4F: F0 06       ;
CODE_298D51:    CMP #$81                    ; $29:8D51: C9 81       ;
CODE_298D53:    BEQ CODE_298D57             ; $29:8D53: F0 02       ;
CODE_298D55:    INC $68,x                   ; $29:8D55: F6 68       ;
CODE_298D57:    RTS                         ; $29:8D57: 60          ;

CODE_298D58:    LDA $0681,x                 ; $29:8D58: BD 81 06    ;
CODE_298D5B:    BNE CODE_298DCE             ; $29:8D5B: D0 71       ;
CODE_298D5D:    LDA $0651,x                 ; $29:8D5D: BD 51 06    ;
CODE_298D60:    AND #$C0                    ; $29:8D60: 29 C0       ;
CODE_298D62:    CMP #$C0                    ; $29:8D62: C9 C0       ;
CODE_298D64:    BEQ CODE_298DCE             ; $29:8D64: F0 68       ;
CODE_298D66:    JSL CODE_27A439             ; $29:8D66: 22 39 A4 27 ;
CODE_298D6A:    TXA                         ; $29:8D6A: 8A          ;
CODE_298D6B:    BEQ CODE_298DCE             ; $29:8D6B: F0 61       ;
CODE_298D6D:    DEX                         ; $29:8D6D: CA          ;
CODE_298D6E:    LDA $0661,x                 ; $29:8D6E: BD 61 06    ;
CODE_298D71:    CMP #$02                    ; $29:8D71: C9 02       ;
CODE_298D73:    BNE CODE_298DC9             ; $29:8D73: D0 54       ;
CODE_298D75:    LDA $0671,x                 ; $29:8D75: BD 71 06    ;
CODE_298D78:    CMP #$AE                    ; $29:8D78: C9 AE       ;
CODE_298D7A:    BNE CODE_298DC9             ; $29:8D7A: D0 4D       ;
CODE_298D7C:    LDA $0681,x                 ; $29:8D7C: BD 81 06    ;
CODE_298D7F:    BNE CODE_298DC9             ; $29:8D7F: D0 48       ;
CODE_298D81:    LDA $0651,x                 ; $29:8D81: BD 51 06    ;
CODE_298D84:    AND #$C0                    ; $29:8D84: 29 C0       ;
CODE_298D86:    CMP #$C0                    ; $29:8D86: C9 C0       ;
CODE_298D88:    BEQ CODE_298DC9             ; $29:8D88: F0 3F       ;
CODE_298D8A:    JSL CODE_279DC2             ; $29:8D8A: 22 C2 9D 27 ;
CODE_298D8E:    JSL CODE_27A413             ; $29:8D8E: 22 13 A4 27 ;
CODE_298D92:    JSL CODE_27A45F             ; $29:8D92: 22 5F A4 27 ;
CODE_298D96:    BCC CODE_298DC9             ; $29:8D96: 90 31       ;
CODE_298D98:    LDY $9B                     ; $29:8D98: A4 9B       ;
CODE_298D9A:    LDA $5F,x                   ; $29:8D9A: B5 5F       ;
CODE_298D9C:    SEC                         ; $29:8D9C: 38          ;
CODE_298D9D:    SBC $005F,y                 ; $29:8D9D: F9 5F 00    ;
CODE_298DA0:    PHA                         ; $29:8DA0: 48          ;
CODE_298DA1:    LDA $44,x                   ; $29:8DA1: B5 44       ;
CODE_298DA3:    SBC $0044,y                 ; $29:8DA3: F9 44 00    ;
CODE_298DA6:    STA $00                     ; $29:8DA6: 85 00       ;
CODE_298DA8:    ROL $01                     ; $29:8DA8: 26 01       ;
CODE_298DAA:    PLA                         ; $29:8DAA: 68          ;
CODE_298DAB:    ADC #$80                    ; $29:8DAB: 69 80       ;
CODE_298DAD:    LDA $00                     ; $29:8DAD: A5 00       ;
CODE_298DAF:    ADC #$00                    ; $29:8DAF: 69 00       ;
CODE_298DB1:    BNE CODE_298DC9             ; $29:8DB1: D0 16       ;
CODE_298DB3:    LSR $01                     ; $29:8DB3: 46 01       ;
CODE_298DB5:    LDA #$FF                    ; $29:8DB5: A9 FF       ;
CODE_298DB7:    BCS CODE_298DBB                     ; $29:8DB7: B0 02       ;
CODE_298DB9:    LDA #$01                    ; $29:8DB9: A9 01       ;
CODE_298DBB:    STX $0F                     ; $29:8DBB: 86 0F       ;
CODE_298DBD:    LDX $9B                     ; $29:8DBD: A6 9B       ;
CODE_298DBF:    STA $8C,x                   ; $29:8DBF: 95 8C       ;
CODE_298DC1:    PHA                         ; $29:8DC1: 48          ;
CODE_298DC2:    LDX $0F                     ; $29:8DC2: A6 0F       ;
CODE_298DC4:    PLA                         ; $29:8DC4: 68          ;
CODE_298DC5:    EOR #$FF                    ; $29:8DC5: 49 FF       ;
CODE_298DC7:    STA $8C,x                   ; $29:8DC7: 95 8C       ;
CODE_298DC9:    DEX                         ; $29:8DC9: CA          ;
CODE_298DCA:    BPL CODE_298D6E             ; $29:8DCA: 10 A2       ;
CODE_298DCC:    LDX $9B                     ; $29:8DCC: A6 9B       ;
CODE_298DCE:    RTL                         ; $29:8DCE: 6B          ;

CODE_298DCF:    LDA $0661,x                 ; $29:8DCF: BD 61 06    ;
CODE_298DD2:    CMP #$02                    ; $29:8DD2: C9 02       ;
CODE_298DD4:    BEQ CODE_298DDF             ; $29:8DD4: F0 09       ;
CODE_298DD6:    LDA #$01                    ; $29:8DD6: A9 01       ;
CODE_298DD8:    STA $0669,x                 ; $29:8DD8: 9D 69 06    ;
CODE_298DDB:    JSR CODE_298F21             ; $29:8DDB: 20 21 8F    ;
CODE_298DDE:    RTL                         ; $29:8DDE: 6B          ;

CODE_298DDF:    JSL CODE_279BC3             ; $29:8DDF: 22 C3 9B 27 ;
CODE_298DE3:    LDA $1021,x                 ; $29:8DE3: BD 21 10    ;
CODE_298DE6:    BEQ CODE_298DEC             ; $29:8DE6: F0 04       ;
CODE_298DE8:    JSL CODE_279B6F             ; $29:8DE8: 22 6F 9B 27 ;
CODE_298DEC:    LDA $9C                     ; $29:8DEC: A5 9C       ;
CODE_298DEE:    BNE CODE_298E04             ; $29:8DEE: D0 14       ;
CODE_298DF0:    LDY #$00                    ; $29:8DF0: A0 00       ;
CODE_298DF2:    BNE CODE_298E0B             ; $29:8DF2: D0 17       ;
CODE_298DF4:    LDA $0781                   ; $29:8DF4: AD 81 07    ;
CODE_298DF7:    BPL CODE_298DFA             ; $29:8DF7: 10 01       ;
CODE_298DF9:    DEY                         ; $29:8DF9: 88          ;
CODE_298DFA:    CLC                         ; $29:8DFA: 18          ;
CODE_298DFB:    ADC $5F,x                   ; $29:8DFB: 75 5F       ;
CODE_298DFD:    STA $5F,x                   ; $29:8DFD: 95 5F       ;
CODE_298DFF:    TYA                         ; $29:8DFF: 98          ;
CODE_298E00:    ADC $44,x                   ; $29:8E00: 75 44       ;
CODE_298E02:    STA $44,x                   ; $29:8E02: 95 44       ;
CODE_298E04:    JSR CODE_298F21             ; $29:8E04: 20 21 8F    ;
CODE_298E07:    LDA $9C                     ; $29:8E07: A5 9C       ;
CODE_298E09:    BNE CODE_298E1B             ; $29:8E09: D0 10       ;
CODE_298E0B:    LDY #$00                    ; $29:8E0B: A0 00       ;
CODE_298E0D:    LDA $15                     ; $29:8E0D: A5 15       ;
CODE_298E0F:    AND #$0C                    ; $29:8E0F: 29 0C       ;
CODE_298E11:    BEQ CODE_298E14             ; $29:8E11: F0 01       ;
CODE_298E13:    INY                         ; $29:8E13: C8          ;
CODE_298E14:    TYA                         ; $29:8E14: 98          ;
CODE_298E15:    STA $0669,x                 ; $29:8E15: 9D 69 06    ;
CODE_298E18:    JSR CODE_298E1C             ; $29:8E18: 20 1C 8E    ;
CODE_298E1B:    RTL                         ; $29:8E1B: 6B          ;

CODE_298E1C:    LDA $1021,x                 ; $29:8E1C: BD 21 10    ;
CODE_298E1F:    JSL CODE_20FB1F         ; $29:8E1F: 22 1F FB 20 ; ExecutePtrShort

PNTR_298E23:        dw CODE_298E31
                    dw CODE_298E46
                    dw CODE_298ED9
                    dw CODE_298E76
                    dw CODE_298E5F
                    dw CODE_298ED9
                    dw CODE_298EAA

CODE_298E31:    LDA #$00                ; $29:8E31: A9 00       ;
CODE_298E33:    STA $0669,x                 ; $29:8E33: 9D 69 06    ;
CODE_298E36:    LDA $44,x                   ; $29:8E36: B5 44       ;
CODE_298E38:    CMP #$05                    ; $29:8E38: C9 05       ;
CODE_298E3A:    BNE CODE_298E45             ; $29:8E3A: D0 09       ;
CODE_298E3C:    LDA $5F,x                   ; $29:8E3C: B5 5F       ;
CODE_298E3E:    CMP #$B0                    ; $29:8E3E: C9 B0       ;
CODE_298E40:    BCC CODE_298E45             ; $29:8E40: 90 03       ;
CODE_298E42:    JSR CODE_298EBE             ; $29:8E42: 20 BE 8E    ;
CODE_298E45:    RTS                         ; $29:8E45: 60          ;

CODE_298E46:    JSR CODE_298EEA             ; $29:8E46: 20 EA 8E    ;
CODE_298E49:    LDA $0518,x                 ; $29:8E49: BD 18 05    ;
CODE_298E4C:    BNE CODE_298E5E             ; $29:8E4C: D0 10       ;
CODE_298E4E:    INC $1021,x                 ; $29:8E4E: FE 21 10    ;
CODE_298E51:    LDA #$40                    ; $29:8E51: A9 40       ;
CODE_298E53:    STA $9E,x                   ; $29:8E53: 95 9E       ;
CODE_298E55:    LDA #$14                    ; $29:8E55: A9 14       ;
CODE_298E57:    STA $8C,x                   ; $29:8E57: 95 8C       ;
CODE_298E59:    LDA #$10                    ; $29:8E59: A9 10       ;
CODE_298E5B:    STA $0518,x                 ; $29:8E5B: 9D 18 05    ;
CODE_298E5E:    RTS                         ; $29:8E5E: 60          ;

CODE_298E5F:    JSR CODE_298EEA             ; $29:8E5F: 20 EA 8E    ;
CODE_298E62:    LDA $0518,x                 ; $29:8E62: BD 18 05    ;
CODE_298E65:    BNE CODE_298E75             ; $29:8E65: D0 0E       ;
CODE_298E67:    INC $1021,x                 ; $29:8E67: FE 21 10    ;
CODE_298E6A:    LDA #$40                    ; $29:8E6A: A9 40       ;
CODE_298E6C:    STA $9E,x                   ; $29:8E6C: 95 9E       ;
CODE_298E6E:    LDA #$EC                    ; $29:8E6E: A9 EC       ;
CODE_298E70:    STA $8C,x                   ; $29:8E70: 95 8C       ;
CODE_298E72:    JMP CODE_298E59             ; $29:8E72: 4C 59 8E    ;

CODE_298E75:    RTS                         ; $29:8E75: 60          ;

CODE_298E76:    JSL CODE_27A7EF             ; $29:8E76: 22 EF A7 27 ;
CODE_298E7A:    JSL CODE_27A7E4             ; $29:8E7A: 22 E4 A7 27 ;
CODE_298E7E:    DEC $9E,x                   ; $29:8E7E: D6 9E       ;
CODE_298E80:    LDA $71,x                   ; $29:8E80: B5 71       ;
CODE_298E82:    CMP #$10                    ; $29:8E82: C9 10       ;
CODE_298E84:    BCS CODE_298EA9                     ; $29:8E84: B0 23       ;
CODE_298E86:    LDA #$10                    ; $29:8E86: A9 10       ;
CODE_298E88:    STA $71,x                   ; $29:8E88: 95 71       ;
CODE_298E8A:    INC $1021,x                 ; $29:8E8A: FE 21 10    ;
CODE_298E8D:    LDA #$01                    ; $29:8E8D: A9 01       ;
CODE_298E8F:    STA $077B,x                 ; $29:8E8F: 9D 7B 07    ;
CODE_298E92:    STA $0776,x                 ; $29:8E92: 9D 76 07    ;
CODE_298E95:    LDA #$00                    ; $29:8E95: A9 00       ;
CODE_298E97:    STA $8C,x                   ; $29:8E97: 95 8C       ;
CODE_298E99:    LDA #$C0                    ; $29:8E99: A9 C0       ;
CODE_298E9B:    STA $9E,x                   ; $29:8E9B: 95 9E       ;
CODE_298E9D:    LDA $0783,x                 ; $29:8E9D: BD 83 07    ;
CODE_298EA0:    AND #$03                    ; $29:8EA0: 29 03       ;
CODE_298EA2:    TAY                         ; $29:8EA2: A8          ;
CODE_298EA3:    LDA.w DATA_21C5EF,y                 ; $29:8EA3: B9 EF C5    ;
CODE_298EA6:    STA $0518,x                 ; $29:8EA6: 9D 18 05    ;
CODE_298EA9:    RTS                         ; $29:8EA9: 60          ;

CODE_298EAA:    JSL CODE_27A7EF             ; $29:8EAA: 22 EF A7 27 ;
CODE_298EAE:    JSL CODE_27A7E4             ; $29:8EAE: 22 E4 A7 27 ;
CODE_298EB2:    DEC $9E,x                   ; $29:8EB2: D6 9E       ;
CODE_298EB4:    LDA $71,x                   ; $29:8EB4: B5 71       ;
CODE_298EB6:    CMP #$10                    ; $29:8EB6: C9 10       ;
CODE_298EB8:    BCS CODE_298ED8                     ; $29:8EB8: B0 1E       ;
CODE_298EBA:    LDA #$10                    ; $29:8EBA: A9 10       ;
CODE_298EBC:    STA $71,x                   ; $29:8EBC: 95 71       ;
CODE_298EBE:    LDA #$01                    ; $29:8EBE: A9 01       ;
CODE_298EC0:    STA $1021,x                 ; $29:8EC0: 9D 21 10    ;
CODE_298EC3:    LDA #$01                    ; $29:8EC3: A9 01       ;
CODE_298EC5:    STA $077B,x                 ; $29:8EC5: 9D 7B 07    ;
CODE_298EC8:    LDA #$00                    ; $29:8EC8: A9 00       ;
CODE_298ECA:    STA $0776,x                 ; $29:8ECA: 9D 76 07    ;
CODE_298ECD:    LDA #$00                    ; $29:8ECD: A9 00       ;
CODE_298ECF:    STA $8C,x                   ; $29:8ECF: 95 8C       ;
CODE_298ED1:    LDA #$C0                    ; $29:8ED1: A9 C0       ;
CODE_298ED3:    STA $9E,x                   ; $29:8ED3: 95 9E       ;
CODE_298ED5:    JMP CODE_298E9D             ; $29:8ED5: 4C 9D 8E    ;

CODE_298ED8:    RTS                         ; $29:8ED8: 60          ;

CODE_298ED9:    LDA $0518,x                 ; $29:8ED9: BD 18 05    ;
CODE_298EDC:    BNE CODE_298EE9             ; $29:8EDC: D0 0B       ;
CODE_298EDE:    INC $1021,x                 ; $29:8EDE: FE 21 10    ;
CODE_298EE1:    LDY $1021,x                 ; $29:8EE1: BC 21 10    ;
CODE_298EE4:    LDA #$20                    ; $29:8EE4: A9 20       ;
CODE_298EE6:    STA $0518,x                 ; $29:8EE6: 9D 18 05    ;
CODE_298EE9:    RTS                         ; $29:8EE9: 60          ;

CODE_298EEA:    JSL CODE_27A7EF             ; $29:8EEA: 22 EF A7 27 ;
CODE_298EEE:    JSL CODE_27A7E4             ; $29:8EEE: 22 E4 A7 27 ;
CODE_298EF2:    LDA $0776,x                 ; $29:8EF2: BD 76 07    ;
CODE_298EF5:    AND #$01                    ; $29:8EF5: 29 01       ;
CODE_298EF7:    TAY                         ; $29:8EF7: A8          ;
CODE_298EF8:    LDA $8C,x                   ; $29:8EF8: B5 8C       ;
CODE_298EFA:    CMP.w DATA_21C5EB,y                 ; $29:8EFA: D9 EB C5    ;
CODE_298EFD:    BNE CODE_298F03             ; $29:8EFD: D0 04       ;
CODE_298EFF:    INC $0776,x                 ; $29:8EFF: FE 76 07    ;
CODE_298F02:    INY                         ; $29:8F02: C8          ;
CODE_298F03:    CLC                         ; $29:8F03: 18          ;
CODE_298F04:    ADC.w DATA_21C5E7,y                 ; $29:8F04: 79 E7 C5    ;
CODE_298F07:    STA $8C,x                   ; $29:8F07: 95 8C       ;
CODE_298F09:    LDA $077B,x                 ; $29:8F09: BD 7B 07    ;
CODE_298F0C:    AND #$01                    ; $29:8F0C: 29 01       ;
CODE_298F0E:    TAY                         ; $29:8F0E: A8          ;
CODE_298F0F:    LDA $9E,x                   ; $29:8F0F: B5 9E       ;
CODE_298F11:    CMP.w DATA_21C5EB,y                 ; $29:8F11: D9 EB C5    ;
CODE_298F14:    BNE CODE_298F1A             ; $29:8F14: D0 04       ;
CODE_298F16:    INC $077B,x                 ; $29:8F16: FE 7B 07    ;
CODE_298F19:    INY                         ; $29:8F19: C8          ;
CODE_298F1A:    CLC                         ; $29:8F1A: 18          ;
CODE_298F1B:    ADC.w DATA_21C5E7,y                 ; $29:8F1B: 79 E7 C5    ;
CODE_298F1E:    STA $9E,x                   ; $29:8F1E: 95 9E       ;
CODE_298F20:    RTS                         ; $29:8F20: 60          ;

CODE_298F21:    LDA $0679,x                 ; $29:8F21: BD 79 06    ;
CODE_298F24:    AND #$CF                    ; $29:8F24: 29 CF       ;
CODE_298F26:    ORA #$20                    ; $29:8F26: 09 20       ;
CODE_298F28:    LDY $1021,x                 ; $29:8F28: BC 21 10    ;
CODE_298F2B:    BNE CODE_298F31             ; $29:8F2B: D0 04       ;
CODE_298F2D:    AND #$CF                    ; $29:8F2D: 29 CF       ;
CODE_298F2F:    ORA #$10                    ; $29:8F2F: 09 10       ;
CODE_298F31:    STA $0679,x                 ; $29:8F31: 9D 79 06    ;
CODE_298F34:    LDA $0651,x                 ; $29:8F34: BD 51 06    ;
CODE_298F37:    STA $1CEF                   ; $29:8F37: 8D EF 1C    ;
CODE_298F3A:    LDA $5F,x                   ; $29:8F3A: B5 5F       ;
CODE_298F3C:    PHA                         ; $29:8F3C: 48          ;
CODE_298F3D:    CLC                         ; $29:8F3D: 18          ;
CODE_298F3E:    ADC #$08                    ; $29:8F3E: 69 08       ;
CODE_298F40:    STA $5F,x                   ; $29:8F40: 95 5F       ;
CODE_298F42:    LDA $44,x                   ; $29:8F42: B5 44       ;
CODE_298F44:    PHA                         ; $29:8F44: 48          ;
CODE_298F45:    ADC #$00                    ; $29:8F45: 69 00       ;
CODE_298F47:    STA $44,x                   ; $29:8F47: 95 44       ;
CODE_298F49:    ASL $0651,x                 ; $29:8F49: 1E 51 06    ;
CODE_298F4C:    JSL CODE_279EE1             ; $29:8F4C: 22 E1 9E 27 ;
CODE_298F50:    PLA                         ; $29:8F50: 68          ;
CODE_298F51:    STA $44,x                   ; $29:8F51: 95 44       ;
CODE_298F53:    PLA                         ; $29:8F53: 68          ;
CODE_298F54:    STA $5F,x                   ; $29:8F54: 95 5F       ;
CODE_298F56:    JSL CODE_279DC2             ; $29:8F56: 22 C2 9D 27 ;
CODE_298F5A:    LDA $C6,x                   ; $29:8F5A: B5 C6       ;
CODE_298F5C:    STA $D8                     ; $29:8F5C: 85 D8       ;
CODE_298F5E:    LDA $C7,x                   ; $29:8F5E: B5 C7       ;
CODE_298F60:    STA $D9                     ; $29:8F60: 85 D9       ;
CODE_298F62:    LDA $0681,x                 ; $29:8F62: BD 81 06    ;
CODE_298F65:    BNE CODE_298F20             ; $29:8F65: D0 B9       ;
CODE_298F67:    LDA $83,x                   ; $29:8F67: B5 83       ;
CODE_298F69:    STA $00                     ; $29:8F69: 85 00       ;
CODE_298F6B:    LDA $0669,x                 ; $29:8F6B: BD 69 06    ;
CODE_298F6E:    TAX                         ; $29:8F6E: AA          ;
CODE_298F6F:    REP #$10                    ; $29:8F6F: C2 10       ;
CODE_298F71:    LDY $D8                     ; $29:8F71: A4 D8       ;
CODE_298F73:    LDA $1CEF                   ; $29:8F73: AD EF 1C    ;
CODE_298F76:    BMI CODE_298F87             ; $29:8F76: 30 0F       ;
CODE_298F78:    LDA $00                     ; $29:8F78: A5 00       ;
CODE_298F7A:    CLC                         ; $29:8F7A: 18          ;
CODE_298F7B:    ADC.w DATA_21C5F5,x                 ; $29:8F7B: 7D F5 C5    ;
CODE_298F7E:    STA $0811,y                 ; $29:8F7E: 99 11 08    ;
CODE_298F81:    CLC                         ; $29:8F81: 18          ;
CODE_298F82:    ADC #$08                    ; $29:8F82: 69 08       ;
CODE_298F84:    STA $0819,y                 ; $29:8F84: 99 19 08    ;
CODE_298F87:    LDA $1CEF                   ; $29:8F87: AD EF 1C    ;
CODE_298F8A:    AND #$10                    ; $29:8F8A: 29 10       ;
CODE_298F8C:    BNE CODE_298F9D             ; $29:8F8C: D0 0F       ;
CODE_298F8E:    LDA $00                     ; $29:8F8E: A5 00       ;
CODE_298F90:    CLC                         ; $29:8F90: 18          ;
CODE_298F91:    ADC.w DATA_21C5F5,x                 ; $29:8F91: 7D F5 C5    ;
CODE_298F94:    STA $0815,y                 ; $29:8F94: 99 15 08    ;
CODE_298F97:    CLC                         ; $29:8F97: 18          ;
CODE_298F98:    ADC #$08                    ; $29:8F98: 69 08       ;
CODE_298F9A:    STA $081D,y                 ; $29:8F9A: 99 1D 08    ;
CODE_298F9D:    LDA.w DATA_21C5F3,x                 ; $29:8F9D: BD F3 C5    ;
CODE_298FA0:    STA $0812,y                 ; $29:8FA0: 99 12 08    ;
CODE_298FA3:    STA $0816,y                 ; $29:8FA3: 99 16 08    ;
CODE_298FA6:    INC A                       ; $29:8FA6: 1A          ;
CODE_298FA7:    STA $081A,y                 ; $29:8FA7: 99 1A 08    ;
CODE_298FAA:    STA $081E,y                 ; $29:8FAA: 99 1E 08    ;
CODE_298FAD:    LDA $0803,y                 ; $29:8FAD: B9 03 08    ;
CODE_298FB0:    AND #$7F                    ; $29:8FB0: 29 7F       ;
CODE_298FB2:    STA $0E                     ; $29:8FB2: 85 0E       ;
CODE_298FB4:    STA $0813,y                 ; $29:8FB4: 99 13 08    ;
CODE_298FB7:    STA $081B,y                 ; $29:8FB7: 99 1B 08    ;
CODE_298FBA:    LDA $0807,y                 ; $29:8FBA: B9 07 08    ;
CODE_298FBD:    AND #$7F                    ; $29:8FBD: 29 7F       ;
CODE_298FBF:    STA $0F                     ; $29:8FBF: 85 0F       ;
CODE_298FC1:    STA $0817,y                 ; $29:8FC1: 99 17 08    ;
CODE_298FC4:    STA $081F,y                 ; $29:8FC4: 99 1F 08    ;
CODE_298FC7:    REP #$20                    ; $29:8FC7: C2 20       ;
CODE_298FC9:    LDA $9B                     ; $29:8FC9: A5 9B       ;
CODE_298FCB:    AND #$00FF                  ; $29:8FCB: 29 FF 00    ;
CODE_298FCE:    TAX                         ; $29:8FCE: AA          ;
CODE_298FCF:    SEP #$20                    ; $29:8FCF: E2 20       ;
CODE_298FD1:    LDA $7A,x                   ; $29:8FD1: B5 7A       ;
CODE_298FD3:    STA $01                     ; $29:8FD3: 85 01       ;
CODE_298FD5:    STA $0810,y                 ; $29:8FD5: 99 10 08    ;
CODE_298FD8:    STA $0818,y                 ; $29:8FD8: 99 18 08    ;
CODE_298FDB:    CLC                         ; $29:8FDB: 18          ;
CODE_298FDC:    ADC #$18                    ; $29:8FDC: 69 18       ;
CODE_298FDE:    STA $0814,y                 ; $29:8FDE: 99 14 08    ;
CODE_298FE1:    STA $081C,y                 ; $29:8FE1: 99 1C 08    ;
CODE_298FE4:    REP #$20                    ; $29:8FE4: C2 20       ;
CODE_298FE6:    TYA                         ; $29:8FE6: 98          ;
CODE_298FE7:    LSR A                       ; $29:8FE7: 4A          ;
CODE_298FE8:    LSR A                       ; $29:8FE8: 4A          ;
CODE_298FE9:    TAY                         ; $29:8FE9: A8          ;
CODE_298FEA:    SEP #$20                    ; $29:8FEA: E2 20       ;
CODE_298FEC:    LDA #$00                    ; $29:8FEC: A9 00       ;
CODE_298FEE:    STA $0A24,y                 ; $29:8FEE: 99 24 0A    ;
CODE_298FF1:    STA $0A25,y                 ; $29:8FF1: 99 25 0A    ;
CODE_298FF4:    STA $0A26,y                 ; $29:8FF4: 99 26 0A    ;
CODE_298FF7:    STA $0A27,y                 ; $29:8FF7: 99 27 0A    ;
CODE_298FFA:    SEP #$10                    ; $29:8FFA: E2 10       ;
CODE_298FFC:    LDA $0669,x                 ; $29:8FFC: BD 69 06    ;
CODE_298FFF:    BEQ CODE_299076             ; $29:8FFF: F0 75       ;
CODE_299001:    JSL CODE_27A19D             ; $29:9001: 22 9D A1 27 ;
CODE_299005:    REP #$10                    ; $29:9005: C2 10       ;
CODE_299007:    LDY $C6,x                   ; $29:9007: B4 C6       ;
CODE_299009:    LDA $00                     ; $29:9009: A5 00       ;
CODE_29900B:    CLC                         ; $29:900B: 18          ;
CODE_29900C:    ADC #$10                    ; $29:900C: 69 10       ;
CODE_29900E:    STA $0801,y                 ; $29:900E: 99 01 08    ;
CODE_299011:    CLC                         ; $29:9011: 18          ;
CODE_299012:    ADC #$08                    ; $29:9012: 69 08       ;
CODE_299014:    STA $0805,y                 ; $29:9014: 99 05 08    ;
CODE_299017:    LDA $01                     ; $29:9017: A5 01       ;
CODE_299019:    STA $0800,y                 ; $29:9019: 99 00 08    ;
CODE_29901C:    STA $0804,y                 ; $29:901C: 99 04 08    ;
CODE_29901F:    LDA $0E                     ; $29:901F: A5 0E       ;
CODE_299021:    ORA #$80                    ; $29:9021: 09 80       ;
CODE_299023:    STA $0803,y                 ; $29:9023: 99 03 08    ;
CODE_299026:    STA $0807,y                 ; $29:9026: 99 07 08    ;
CODE_299029:    LDA #$B0                    ; $29:9029: A9 B0       ;
CODE_29902B:    STA $0802,y                 ; $29:902B: 99 02 08    ;
CODE_29902E:    INC A                       ; $29:902E: 1A          ;
CODE_29902F:    STA $0806,y                 ; $29:902F: 99 06 08    ;
CODE_299032:    LDA $00                     ; $29:9032: A5 00       ;
CODE_299034:    CLC                         ; $29:9034: 18          ;
CODE_299035:    ADC #$10                    ; $29:9035: 69 10       ;
CODE_299037:    STA $0809,y                 ; $29:9037: 99 09 08    ;
CODE_29903A:    CLC                         ; $29:903A: 18          ;
CODE_29903B:    ADC #$08                    ; $29:903B: 69 08       ;
CODE_29903D:    STA $080D,y                 ; $29:903D: 99 0D 08    ;
CODE_299040:    LDA $01                     ; $29:9040: A5 01       ;
CODE_299042:    CLC                         ; $29:9042: 18          ;
CODE_299043:    ADC #$18                    ; $29:9043: 69 18       ;
CODE_299045:    STA $0808,y                 ; $29:9045: 99 08 08    ;
CODE_299048:    STA $080C,y                 ; $29:9048: 99 0C 08    ;
CODE_29904B:    LDA $0F                     ; $29:904B: A5 0F       ;
CODE_29904D:    ORA #$80                    ; $29:904D: 09 80       ;
CODE_29904F:    STA $080B,y                 ; $29:904F: 99 0B 08    ;
CODE_299052:    STA $080F,y                 ; $29:9052: 99 0F 08    ;
CODE_299055:    LDA #$B0                    ; $29:9055: A9 B0       ;
CODE_299057:    STA $080A,y                 ; $29:9057: 99 0A 08    ;
CODE_29905A:    INC A                       ; $29:905A: 1A          ;
CODE_29905B:    STA $080E,y                 ; $29:905B: 99 0E 08    ;
CODE_29905E:    REP #$20                    ; $29:905E: C2 20       ;
CODE_299060:    TYA                         ; $29:9060: 98          ;
CODE_299061:    LSR A                       ; $29:9061: 4A          ;
CODE_299062:    LSR A                       ; $29:9062: 4A          ;
CODE_299063:    TAY                         ; $29:9063: A8          ;
CODE_299064:    SEP #$20                    ; $29:9064: E2 20       ;
CODE_299066:    LDA #$00                    ; $29:9066: A9 00       ;
CODE_299068:    STA $0A20,y                 ; $29:9068: 99 20 0A    ;
CODE_29906B:    STA $0A21,y                 ; $29:906B: 99 21 0A    ;
CODE_29906E:    STA $0A22,y                 ; $29:906E: 99 22 0A    ;
CODE_299071:    STA $0A23,y                 ; $29:9071: 99 23 0A    ;
CODE_299074:    SEP #$10                    ; $29:9074: E2 10       ;
CODE_299076:    RTS                         ; $29:9076: 60          ;

CODE_299077:    JSR CODE_29915E             ; $29:9077: 20 5E 91    ;
CODE_29907A:    LDA $83,x                   ; $29:907A: B5 83       ;
CODE_29907C:    CMP #$C8                    ; $29:907C: C9 C8       ;
CODE_29907E:    BCC CODE_299086             ; $29:907E: 90 06       ;
CODE_299080:    LDA #$00                    ; $29:9080: A9 00       ;
CODE_299082:    STA $0661,x                 ; $29:9082: 9D 61 06    ;
CODE_299085:    RTL                         ; $29:9085: 6B          ;

CODE_299086:    LDA $9C                     ; $29:9086: A5 9C       ;
CODE_299088:    BNE CODE_299085             ; $29:9088: D0 FB       ;
CODE_29908A:    LDA $0565                   ; $29:908A: AD 65 05    ;
CODE_29908D:    AND #$03                    ; $29:908D: 29 03       ;
CODE_29908F:    BNE CODE_299095             ; $29:908F: D0 04       ;
CODE_299091:    DEC $68,x                   ; $29:9091: D6 68       ;
CODE_299093:    BEQ CODE_299080             ; $29:9093: F0 EB       ;
CODE_299095:    JSL CODE_279BC3             ; $29:9095: 22 C3 9B 27 ;
CODE_299099:    LDY $4D,x                   ; $29:9099: B4 4D       ;
CODE_29909B:    LDA.w DATA_21C5F7,y                 ; $29:909B: B9 F7 C5    ;
CODE_29909E:    STA $8C,x                   ; $29:909E: 95 8C       ;
CODE_2990A0:    LDA.w DATA_21C5FB,y                 ; $29:90A0: B9 FB C5    ;
CODE_2990A3:    STA $9E,x                   ; $29:90A3: 95 9E       ;
CODE_2990A5:    JSL CODE_27A7E4             ; $29:90A5: 22 E4 A7 27 ;
CODE_2990A9:    JSL CODE_27A7EF             ; $29:90A9: 22 EF A7 27 ;
CODE_2990AD:    LDA #$00                    ; $29:90AD: A9 00       ;
CODE_2990AF:    STA $44,x                   ; $29:90AF: 95 44       ;
CODE_2990B1:    JSL CODE_27A312             ; $29:90B1: 22 12 A3 27 ;
CODE_2990B5:    BCC CODE_29912B             ; $29:90B5: 90 74       ;
CODE_2990B7:    LDA $82                     ; $29:90B7: A5 82       ;
CODE_2990B9:    CLC                         ; $29:90B9: 18          ;
CODE_2990BA:    ADC #$18                    ; $29:90BA: 69 18       ;
CODE_2990BC:    CMP $83,x                   ; $29:90BC: D5 83       ;
CODE_2990BE:    BCS CODE_29912C                     ; $29:90BE: B0 6C       ;
CODE_2990C0:    LDA $9D                     ; $29:90C0: A5 9D       ;
CODE_2990C2:    BMI CODE_29912B             ; $29:90C2: 30 67       ;
CODE_2990C4:    LDY $0671,x                 ; $29:90C4: BC 71 06    ;
CODE_2990C7:    CPY #$A9                    ; $29:90C7: C0 A9       ;
CODE_2990C9:    BNE CODE_2990E2             ; $29:90C9: D0 17       ;
CODE_2990CB:    CMP #$10                    ; $29:90CB: C9 10       ;
CODE_2990CD:    BCC CODE_2990E2             ; $29:90CD: 90 13       ;
CODE_2990CF:    LDA #$23                    ; $29:90CF: A9 23       ;
CODE_2990D1:    STA $1203                   ; $29:90D1: 8D 03 12    ;
CODE_2990D4:    LDA #$08                    ; $29:90D4: A9 08       ;
CODE_2990D6:    STA $0518,x                 ; $29:90D6: 9D 18 05    ;
CODE_2990D9:    LDA $4D,x                   ; $29:90D9: B5 4D       ;
CODE_2990DB:    CLC                         ; $29:90DB: 18          ;
CODE_2990DC:    ADC #$01                    ; $29:90DC: 69 01       ;
CODE_2990DE:    AND #$03                    ; $29:90DE: 29 03       ;
CODE_2990E0:    STA $4D,x                   ; $29:90E0: 95 4D       ;
CODE_2990E2:    STZ $9D                     ; $29:90E2: 64 9D       ;
CODE_2990E4:    STZ $A6                     ; $29:90E4: 64 A6       ;
CODE_2990E6:    LDA #$01                    ; $29:90E6: A9 01       ;
CODE_2990E8:    STA $07BD                   ; $29:90E8: 8D BD 07    ;
CODE_2990EB:    LDA $71,x                   ; $29:90EB: B5 71       ;
CODE_2990ED:    SEC                         ; $29:90ED: 38          ;
CODE_2990EE:    SBC #$1F                    ; $29:90EE: E9 1F       ;
CODE_2990F0:    STA $70                     ; $29:90F0: 85 70       ;
CODE_2990F2:    LDA $56,x                   ; $29:90F2: B5 56       ;
CODE_2990F4:    SBC #$00                    ; $29:90F4: E9 00       ;
CODE_2990F6:    STA $55                     ; $29:90F6: 85 55       ;
CODE_2990F8:    LDY #$00                    ; $29:90F8: A0 00       ;
CODE_2990FA:    LDA $074D                   ; $29:90FA: AD 4D 07    ;
CODE_2990FD:    BPL CODE_299100             ; $29:90FD: 10 01       ;
CODE_2990FF:    DEY                         ; $29:90FF: 88          ;
CODE_299100:    CLC                         ; $29:9100: 18          ;
CODE_299101:    ADC $5E                     ; $29:9101: 65 5E       ;
CODE_299103:    STA $5E                     ; $29:9103: 85 5E       ;
CODE_299105:    TYA                         ; $29:9105: 98          ;
CODE_299106:    ADC $43                     ; $29:9106: 65 43       ;
CODE_299108:    STA $43                     ; $29:9108: 85 43       ;
CODE_29910A:    JSR CODE_299282             ; $29:910A: 20 82 92    ;
CODE_29910D:    BCC CODE_29912B             ; $29:910D: 90 1C       ;
CODE_29910F:    STA $00                     ; $29:910F: 85 00       ;
CODE_299111:    LDA #$00                    ; $29:9111: A9 00       ;
CODE_299113:    STA $0661,x                 ; $29:9113: 9D 61 06    ;
CODE_299116:    LDY $0560                   ; $29:9116: AC 60 05    ;
CODE_299119:    LDA.w DATA_21AF3A,y                 ; $29:9119: B9 3A AF    ;
CODE_29911C:    CMP #$FF                    ; $29:911C: C9 FF       ;
CODE_29911E:    BEQ CODE_29912B             ; $29:911E: F0 0B       ;
CODE_299120:    SEC                         ; $29:9120: 38          ;
CODE_299121:    SBC $00                     ; $29:9121: E5 00       ;
CODE_299123:    CMP #$02                    ; $29:9123: C9 02       ;
CODE_299125:    BCS CODE_29912B                     ; $29:9125: B0 04       ;
CODE_299127:    JSL CODE_27A4C6             ; $29:9127: 22 C6 A4 27 ;
CODE_29912B:    RTL                         ; $29:912B: 6B          ;

CODE_29912C:    LDA #$F8                    ; $29:912C: A9 F8       ;
CODE_29912E:    LDY $BB                     ; $29:912E: A4 BB       ;
CODE_299130:    BNE CODE_299134             ; $29:9130: D0 02       ;
CODE_299132:    LDA #$08                    ; $29:9132: A9 08       ;
CODE_299134:    CLC                         ; $29:9134: 18          ;
CODE_299135:    ADC $82                     ; $29:9135: 65 82       ;
CODE_299137:    CMP $83,x                   ; $29:9137: D5 83       ;
CODE_299139:    BCC CODE_299144             ; $29:9139: 90 09       ;
CODE_29913B:    LDA $9D                     ; $29:913B: A5 9D       ;
CODE_29913D:    BPL CODE_299143             ; $29:913D: 10 04       ;
CODE_29913F:    LDA #$10                    ; $29:913F: A9 10       ;
CODE_299141:    STA $9D                     ; $29:9141: 85 9D       ;
CODE_299143:    RTL                         ; $29:9143: 6B          ;

CODE_299144:    LDA $8C,x                   ; $29:9144: B5 8C       ;
CODE_299146:    BEQ CODE_299159             ; $29:9146: F0 11       ;
CODE_299148:    LDA $5E                     ; $29:9148: A5 5E       ;
CODE_29914A:    SEC                         ; $29:914A: 38          ;
CODE_29914B:    SBC $5F,x                   ; $29:914B: F5 5F       ;
CODE_29914D:    EOR $8C,x                   ; $29:914D: 55 8C       ;
CODE_29914F:    BMI CODE_299156             ; $29:914F: 30 05       ;
CODE_299151:    LDA $8C,x                   ; $29:9151: B5 8C       ;
CODE_299153:    STA $8B                     ; $29:9153: 85 8B       ;
CODE_299155:    RTL                         ; $29:9155: 6B          ;

CODE_299156:    STZ $8B                     ; $29:9156: 64 8B       ;
CODE_299158:    RTL                         ; $29:9158: 6B          ;

CODE_299159:    JSL CODE_299912             ; $29:9159: 22 12 99 29 ;
CODE_29915D:    RTL                         ; $29:915D: 6B          ;

CODE_29915E:    JSL CODE_279DC2             ; $29:915E: 22 C2 9D 27 ;
CODE_299162:    LDA #$00                    ; $29:9162: A9 00       ;
CODE_299164:    STA $0651,x                 ; $29:9164: 9D 51 06    ;
CODE_299167:    LDA $68,x                   ; $29:9167: B5 68       ;
CODE_299169:    CMP #$20                    ; $29:9169: C9 20       ;
CODE_29916B:    BCS CODE_29917C                     ; $29:916B: B0 0F       ;
CODE_29916D:    LSR A                       ; $29:916D: 4A          ;
CODE_29916E:    LSR A                       ; $29:916E: 4A          ;
CODE_29916F:    LSR A                       ; $29:916F: 4A          ;
CODE_299170:    TAY                         ; $29:9170: A8          ;
CODE_299171:    LDA $0565                   ; $29:9171: AD 65 05    ;
CODE_299174:    AND.w DATA_21C618,y                 ; $29:9174: 39 18 C6    ;
CODE_299177:    BNE CODE_29917C             ; $29:9177: D0 03       ;
CODE_299179:    BRL CODE_29922A             ; $29:9179: 82 AE 00    ;

CODE_29917C:    LDA $7A,x                   ; $29:917C: B5 7A       ;
CODE_29917E:    STA $01                     ; $29:917E: 85 01       ;
CODE_299180:    LDY $4D,x                   ; $29:9180: B4 4D       ;
CODE_299182:    LDA $0518,x                 ; $29:9182: BD 18 05    ;
CODE_299185:    BEQ CODE_299189             ; $29:9185: F0 02       ;
CODE_299187:    LDY #$04                    ; $29:9187: A0 04       ;
CODE_299189:    STY $02                     ; $29:9189: 84 02       ;
CODE_29918B:    STZ $03                     ; $29:918B: 64 03       ;
CODE_29918D:    LDA $C6,x                   ; $29:918D: B5 C6       ;
CODE_29918F:    STA $DA                     ; $29:918F: 85 DA       ;
CODE_299191:    LDA $C7,x                   ; $29:9191: B5 C7       ;
CODE_299193:    STA $DB                     ; $29:9193: 85 DB       ;
CODE_299195:    JSL CODE_27A19D             ; $29:9195: 22 9D A1 27 ;
CODE_299199:    LDA $C6,x                   ; $29:9199: B5 C6       ;
CODE_29919B:    STA $DC                     ; $29:919B: 85 DC       ;
CODE_29919D:    LDA $C7,x                   ; $29:919D: B5 C7       ;
CODE_29919F:    STA $DD                     ; $29:919F: 85 DD       ;
CODE_2991A1:    REP #$10                    ; $29:91A1: C2 10       ;
CODE_2991A3:    LDY $DA                     ; $29:91A3: A4 DA       ;
CODE_2991A5:    STZ $D8                     ; $29:91A5: 64 D8       ;
CODE_2991A7:    STZ $D9                     ; $29:91A7: 64 D9       ;
CODE_2991A9:    LDA $83,x                   ; $29:91A9: B5 83       ;
CODE_2991AB:    STA $0801,y                 ; $29:91AB: 99 01 08    ;
CODE_2991AE:    CLC                         ; $29:91AE: 18          ;
CODE_2991AF:    ADC #$08                    ; $29:91AF: 69 08       ;
CODE_2991B1:    STA $0805,y                 ; $29:91B1: 99 05 08    ;
CODE_2991B4:    LDA $01                     ; $29:91B4: A5 01       ;
CODE_2991B6:    STA $0800,y                 ; $29:91B6: 99 00 08    ;
CODE_2991B9:    STA $0804,y                 ; $29:91B9: 99 04 08    ;
CODE_2991BC:    CLC                         ; $29:91BC: 18          ;
CODE_2991BD:    ADC #$08                    ; $29:91BD: 69 08       ;
CODE_2991BF:    STA $01                     ; $29:91BF: 85 01       ;
CODE_2991C1:    REP #$20                    ; $29:91C1: C2 20       ;
CODE_2991C3:    LDA $02                     ; $29:91C3: A5 02       ;
CODE_2991C5:    ASL A                       ; $29:91C5: 0A          ;
CODE_2991C6:    ASL A                       ; $29:91C6: 0A          ;
CODE_2991C7:    ADC $D8                     ; $29:91C7: 65 D8       ;
CODE_2991C9:    TAX                         ; $29:91C9: AA          ;
CODE_2991CA:    SEP #$20                    ; $29:91CA: E2 20       ;
CODE_2991CC:    LDA.w DATA_21C5FF,x                 ; $29:91CC: BD FF C5    ;
CODE_2991CF:    STA $0802,y                 ; $29:91CF: 99 02 08    ;
CODE_2991D2:    INC A                       ; $29:91D2: 1A          ;
CODE_2991D3:    STA $0806,y                 ; $29:91D3: 99 06 08    ;
CODE_2991D6:    LDX $02                     ; $29:91D6: A6 02       ;
CODE_2991D8:    LDA.w DATA_21C613,x                 ; $29:91D8: BD 13 C6    ;
CODE_2991DB:    CPX #$0004                  ; $29:91DB: E0 04 00    ;
CODE_2991DE:    BNE CODE_2991E9             ; $29:91DE: D0 09       ;
CODE_2991E0:    LDX $D8                     ; $29:91E0: A6 D8       ;
CODE_2991E2:    CPX #$0002                  ; $29:91E2: E0 02 00    ;
CODE_2991E5:    BNE CODE_2991E9             ; $29:91E5: D0 02       ;
CODE_2991E7:    LDA #$44                    ; $29:91E7: A9 44       ;
CODE_2991E9:    ORA #$20                    ; $29:91E9: 09 20       ;
CODE_2991EB:    STA $0803,y                 ; $29:91EB: 99 03 08    ;
CODE_2991EE:    STA $0807,y                 ; $29:91EE: 99 07 08    ;
CODE_2991F1:    PHY                         ; $29:91F1: 5A          ;
CODE_2991F2:    REP #$20                    ; $29:91F2: C2 20       ;
CODE_2991F4:    TYA                         ; $29:91F4: 98          ;
CODE_2991F5:    LSR A                       ; $29:91F5: 4A          ;
CODE_2991F6:    LSR A                       ; $29:91F6: 4A          ;
CODE_2991F7:    TAY                         ; $29:91F7: A8          ;
CODE_2991F8:    SEP #$20                    ; $29:91F8: E2 20       ;
CODE_2991FA:    LDA #$00                    ; $29:91FA: A9 00       ;
CODE_2991FC:    STA $0A20,y                 ; $29:91FC: 99 20 0A    ;
CODE_2991FF:    STA $0A21,y                 ; $29:91FF: 99 21 0A    ;
CODE_299202:    PLY                         ; $29:9202: 7A          ;
CODE_299203:    PHY                         ; $29:9203: 5A          ;
CODE_299204:    JSR CODE_29922B             ; $29:9204: 20 2B 92    ;
CODE_299207:    PLY                         ; $29:9207: 7A          ;
CODE_299208:    REP #$20                    ; $29:9208: C2 20       ;
CODE_29920A:    TYA                         ; $29:920A: 98          ;
CODE_29920B:    CLC                         ; $29:920B: 18          ;
CODE_29920C:    ADC #$0008                  ; $29:920C: 69 08 00    ;
CODE_29920F:    TAY                         ; $29:920F: A8          ;
CODE_299210:    LDA $DC                     ; $29:9210: A5 DC       ;
CODE_299212:    CLC                         ; $29:9212: 18          ;
CODE_299213:    ADC #$0008                  ; $29:9213: 69 08 00    ;
CODE_299216:    STA $DC                     ; $29:9216: 85 DC       ;
CODE_299218:    LDA $9B                     ; $29:9218: A5 9B       ;
CODE_29921A:    AND #$00FF                  ; $29:921A: 29 FF 00    ;
CODE_29921D:    TAX                         ; $29:921D: AA          ;
CODE_29921E:    SEP #$20                    ; $29:921E: E2 20       ;
CODE_299220:    INC $D8                     ; $29:9220: E6 D8       ;
CODE_299222:    LDA $D8                     ; $29:9222: A5 D8       ;
CODE_299224:    CMP #$04                    ; $29:9224: C9 04       ;
CODE_299226:    BNE CODE_2991A9             ; $29:9226: D0 81       ;
CODE_299228:    SEP #$10                    ; $29:9228: E2 10       ;
CODE_29922A:    RTS                         ; $29:922A: 60          ;

CODE_29922B:    LDA $0425                   ; $29:922B: AD 25 04    ;
CODE_29922E:    BEQ CODE_29922A             ; $29:922E: F0 FA       ;
CODE_299230:    LDA $0800,y                 ; $29:9230: B9 00 08    ;
CODE_299233:    CMP #$F8                    ; $29:9233: C9 F8       ;
CODE_299235:    BCC CODE_29922A             ; $29:9235: 90 F3       ;
CODE_299237:    LDX $DC                     ; $29:9237: A6 DC       ;
CODE_299239:    LDA $0800,y                 ; $29:9239: B9 00 08    ;
CODE_29923C:    STA $0800,x                 ; $29:923C: 9D 00 08    ;
CODE_29923F:    STA $0804,x                 ; $29:923F: 9D 04 08    ;
CODE_299242:    LDA $0801,y                 ; $29:9242: B9 01 08    ;
CODE_299245:    STA $0801,x                 ; $29:9245: 9D 01 08    ;
CODE_299248:    LDA $0805,y                 ; $29:9248: B9 05 08    ;
CODE_29924B:    STA $0805,x                 ; $29:924B: 9D 05 08    ;
CODE_29924E:    LDA $0802,y                 ; $29:924E: B9 02 08    ;
CODE_299251:    STA $0802,x                 ; $29:9251: 9D 02 08    ;
CODE_299254:    LDA $0806,y                 ; $29:9254: B9 06 08    ;
CODE_299257:    STA $0806,x                 ; $29:9257: 9D 06 08    ;
CODE_29925A:    LDA $0803,y                 ; $29:925A: B9 03 08    ;
CODE_29925D:    STA $0803,x                 ; $29:925D: 9D 03 08    ;
CODE_299260:    LDA $0807,y                 ; $29:9260: B9 07 08    ;
CODE_299263:    STA $0807,x                 ; $29:9263: 9D 07 08    ;
CODE_299266:    REP #$20                    ; $29:9266: C2 20       ;
CODE_299268:    TYA                         ; $29:9268: 98          ;
CODE_299269:    LSR A                       ; $29:9269: 4A          ;
CODE_29926A:    LSR A                       ; $29:926A: 4A          ;
CODE_29926B:    TAY                         ; $29:926B: A8          ;
CODE_29926C:    TXA                         ; $29:926C: 8A          ;
CODE_29926D:    LSR A                       ; $29:926D: 4A          ;
CODE_29926E:    LSR A                       ; $29:926E: 4A          ;
CODE_29926F:    TAX                         ; $29:926F: AA          ;
CODE_299270:    SEP #$20                    ; $29:9270: E2 20       ;
CODE_299272:    LDA #$00                    ; $29:9272: A9 00       ;
CODE_299274:    STA $0A20,x                 ; $29:9274: 9D 20 0A    ;
CODE_299277:    STA $0A21,x                 ; $29:9277: 9D 21 0A    ;
CODE_29927A:    INC A                       ; $29:927A: 1A          ;
CODE_29927B:    STA $0A20,y                 ; $29:927B: 99 20 0A    ;
CODE_29927E:    STA $0A21,y                 ; $29:927E: 99 21 0A    ;
CODE_299281:    RTS                         ; $29:9281: 60          ;

CODE_299282:    LDA #$06                    ; $29:9282: A9 06       ;
CODE_299284:    LDY $056F                   ; $29:9284: AC 6F 05    ;
CODE_299287:    BNE CODE_29928D             ; $29:9287: D0 04       ;
CODE_299289:    LDY $BB                     ; $29:9289: A4 BB       ;
CODE_29928B:    BNE CODE_29928F             ; $29:928B: D0 02       ;
CODE_29928D:    LDA #$12                    ; $29:928D: A9 12       ;
CODE_29928F:    ADC $70                     ; $29:928F: 65 70       ;
CODE_299291:    AND #$F0                    ; $29:9291: 29 F0       ;
CODE_299293:    STA $02                     ; $29:9293: 85 02       ;
CODE_299295:    LDA $55                     ; $29:9295: A5 55       ;
CODE_299297:    ADC #$00                    ; $29:9297: 69 00       ;
CODE_299299:    CMP #$10                    ; $29:9299: C9 10       ;
CODE_29929B:    BCS CODE_2992C6                     ; $29:929B: B0 29       ;
CODE_29929D:    ADC #$20                    ; $29:929D: 69 20       ;
CODE_29929F:    STA $01                     ; $29:929F: 85 01       ;
CODE_2992A1:    STA $D9                     ; $29:92A1: 85 D9       ;
CODE_2992A3:    LDA $5E                     ; $29:92A3: A5 5E       ;
CODE_2992A5:    CLC                         ; $29:92A5: 18          ;
CODE_2992A6:    ADC #$08                    ; $29:92A6: 69 08       ;
CODE_2992A8:    LSR A                       ; $29:92A8: 4A          ;
CODE_2992A9:    LSR A                       ; $29:92A9: 4A          ;
CODE_2992AA:    LSR A                       ; $29:92AA: 4A          ;
CODE_2992AB:    LSR A                       ; $29:92AB: 4A          ;
CODE_2992AC:    ORA $02                     ; $29:92AC: 05 02       ;
CODE_2992AE:    STA $00                     ; $29:92AE: 85 00       ;
CODE_2992B0:    STA $D8                     ; $29:92B0: 85 D8       ;
CODE_2992B2:    LDA #$7E                    ; $29:92B2: A9 7E       ;
CODE_2992B4:    STA $DA                     ; $29:92B4: 85 DA       ;
CODE_2992B6:    LDY #$00                    ; $29:92B6: A0 00       ;
CODE_2992B8:    LDA [$D8],y                 ; $29:92B8: B7 D8       ;
CODE_2992BA:    PHA                         ; $29:92BA: 48          ;
CODE_2992BB:    ASL A                       ; $29:92BB: 0A          ;
CODE_2992BC:    ROL A                       ; $29:92BC: 2A          ;
CODE_2992BD:    ROL A                       ; $29:92BD: 2A          ;
CODE_2992BE:    AND #$03                    ; $29:92BE: 29 03       ;
CODE_2992C0:    TAY                         ; $29:92C0: A8          ;
CODE_2992C1:    PLA                         ; $29:92C1: 68          ;
CODE_2992C2:    CMP $1E9A,y                 ; $29:92C2: D9 9A 1E    ;
CODE_2992C5:    RTS                         ; $29:92C5: 60          ;

CODE_2992C6:    CLC                         ; $29:92C6: 18          ;
CODE_2992C7:    RTS                         ; $29:92C7: 60          ;

CODE_2992C8:    LDA #$00                    ; $29:92C8: A9 00       ;
CODE_2992CA:    LDY $8C,x                   ; $29:92CA: B4 8C       ;
CODE_2992CC:    BMI CODE_2992D0             ; $29:92CC: 30 02       ;
CODE_2992CE:    LDA #$40                    ; $29:92CE: A9 40       ;
CODE_2992D0:    STA $0679,x                 ; $29:92D0: 9D 79 06    ;
CODE_2992D3:    RTS                         ; $29:92D3: 60          ;

CODE_2992D4:    JSL CODE_27A837             ; $29:92D4: 22 37 A8 27 ;
CODE_2992D8:    LDA.w DATA_21C61C,y                 ; $29:92D8: B9 1C C6    ;
CODE_2992DB:    STA $8C,x                   ; $29:92DB: 95 8C       ;
CODE_2992DD:    RTL                         ; $29:92DD: 6B          ;

CODE_2992DE:    LDA $8C,x                   ; $29:92DE: B5 8C       ;
CODE_2992E0:    BPL CODE_2992E6             ; $29:92E0: 10 04       ;
CODE_2992E2:    JSL CODE_27A859         ; $29:92E2: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_2992E6:    CMP #$10                    ; $29:92E6: C9 10       ;
CODE_2992E8:    LDA #$01                    ; $29:92E8: A9 01       ;
CODE_2992EA:    BCC CODE_2992EE             ; $29:92EA: 90 02       ;
CODE_2992EC:    ADC #$00                    ; $29:92EC: 69 00       ;
CODE_2992EE:    STA $1FE9,x                 ; $29:92EE: 9D E9 1F    ;
CODE_2992F1:    JSL CODE_279BC3             ; $29:92F1: 22 C3 9B 27 ;
CODE_2992F5:    JSR CODE_2992C8             ; $29:92F5: 20 C8 92    ;
CODE_2992F8:    LDA $1FD2,x                 ; $29:92F8: BD D2 1F    ;
CODE_2992FB:    LSR A                       ; $29:92FB: 4A          ;
CODE_2992FC:    LSR A                       ; $29:92FC: 4A          ;
CODE_2992FD:    LSR A                       ; $29:92FD: 4A          ;
CODE_2992FE:    AND #$01                    ; $29:92FE: 29 01       ;
CODE_299300:    STA $0669,x                 ; $29:9300: 9D 69 06    ;
CODE_299303:    JSL CODE_279EBB             ; $29:9303: 22 BB 9E 27 ;
CODE_299307:    LDA $9C                     ; $29:9307: A5 9C       ;
CODE_299309:    BNE CODE_2992DD             ; $29:9309: D0 D2       ;
CODE_29930B:    INC $1FD2,x                 ; $29:930B: FE D2 1F    ;
CODE_29930E:    JSL CODE_27A7E4             ; $29:930E: 22 E4 A7 27 ;
CODE_299312:    JSL CODE_27A7EF             ; $29:9312: 22 EF A7 27 ;
CODE_299316:    LDA $0797,x                 ; $29:9316: BD 97 07    ;
CODE_299319:    STA $1CEF                   ; $29:9319: 8D EF 1C    ;
CODE_29931C:    INC $05F4                   ; $29:931C: EE F4 05    ;
CODE_29931F:    JSL CODE_279B6F             ; $29:931F: 22 6F 9B 27 ;
CODE_299323:    DEC $05F4                   ; $29:9323: CE F4 05    ;
CODE_299326:    LDA $0797,x                 ; $29:9326: BD 97 07    ;
CODE_299329:    BEQ CODE_299397             ; $29:9329: F0 6C       ;
CODE_29932B:    CMP $1CEF                   ; $29:932B: CD EF 1C    ;
CODE_29932E:    BEQ CODE_29933A             ; $29:932E: F0 0A       ;
CODE_299330:    LDA #$0C                    ; $29:9330: A9 0C       ;
CODE_299332:    LDY $BB                     ; $29:9332: A4 BB       ;
CODE_299334:    BEQ CODE_299338             ; $29:9334: F0 02       ;
CODE_299336:    LDA #$14                    ; $29:9336: A9 14       ;
CODE_299338:    STA $9E,x                   ; $29:9338: 95 9E       ;
CODE_29933A:    INC $1FD2,x                 ; $29:933A: FE D2 1F    ;
CODE_29933D:    INC $1FD2,x                 ; $29:933D: FE D2 1F    ;
CODE_299340:    LDA #$F4                    ; $29:9340: A9 F4       ;
CODE_299342:    LDY $BB                     ; $29:9342: A4 BB       ;
CODE_299344:    BNE CODE_299348             ; $29:9344: D0 02       ;
CODE_299346:    LDA #$F0                    ; $29:9346: A9 F0       ;
CODE_299348:    CMP $9E,x                   ; $29:9348: D5 9E       ;
CODE_29934A:    BPL CODE_299350             ; $29:934A: 10 04       ;
CODE_29934C:    DEC $9E,x                   ; $29:934C: D6 9E       ;
CODE_29934E:    DEC $9E,x                   ; $29:934E: D6 9E       ;
CODE_299350:    INC $9E,x                   ; $29:9350: F6 9E       ;
CODE_299352:    LDA #$05                    ; $29:9352: A9 05       ;
CODE_299354:    STA $101F                   ; $29:9354: 8D 1F 10    ;
CODE_299357:    LDA $9D                     ; $29:9357: A5 9D       ;
CODE_299359:    BMI CODE_299396             ; $29:9359: 30 3B       ;
CODE_29935B:    LDY #$00                    ; $29:935B: A0 00       ;
CODE_29935D:    LDA $074D                   ; $29:935D: AD 4D 07    ;
CODE_299360:    BPL CODE_299363             ; $29:9360: 10 01       ;
CODE_299362:    DEY                         ; $29:9362: 88          ;
CODE_299363:    CLC                         ; $29:9363: 18          ;
CODE_299364:    ADC $5E                     ; $29:9364: 65 5E       ;
CODE_299366:    STA $5E                     ; $29:9366: 85 5E       ;
CODE_299368:    TYA                         ; $29:9368: 98          ;
CODE_299369:    ADC $43                     ; $29:9369: 65 43       ;
CODE_29936B:    STA $43                     ; $29:936B: 85 43       ;
CODE_29936D:    LDA $71,x                   ; $29:936D: B5 71       ;
CODE_29936F:    SEC                         ; $29:936F: 38          ;
CODE_299370:    SBC #$1B                    ; $29:9370: E9 1B       ;
CODE_299372:    STA $70                     ; $29:9372: 85 70       ;
CODE_299374:    LDA $56,x                   ; $29:9374: B5 56       ;
CODE_299376:    SBC #$00                    ; $29:9376: E9 00       ;
CODE_299378:    STA $55                     ; $29:9378: 85 55       ;
CODE_29937A:    LDA #$00                    ; $29:937A: A9 00       ;
CODE_29937C:    STA $9D                     ; $29:937C: 85 9D       ;
CODE_29937E:    STA $A6                     ; $29:937E: 85 A6       ;
CODE_299380:    LDA $17                     ; $29:9380: A5 17       ;
CODE_299382:    AND #$03                    ; $29:9382: 29 03       ;
CODE_299384:    BNE CODE_299396             ; $29:9384: D0 10       ;
CODE_299386:    JSL CODE_279DD9             ; $29:9386: 22 D9 9D 27 ;
CODE_29938A:    LDA $8B                     ; $29:938A: A5 8B       ;
CODE_29938C:    BEQ CODE_299396             ; $29:938C: F0 08       ;
CODE_29938E:    BPL CODE_299394             ; $29:938E: 10 04       ;
CODE_299390:    INC $8B                     ; $29:9390: E6 8B       ;
CODE_299392:    INC $8B                     ; $29:9392: E6 8B       ;
CODE_299394:    DEC $8B                     ; $29:9394: C6 8B       ;
CODE_299396:    RTL                         ; $29:9396: 6B          ;

CODE_299397:    LDA $9E,x                   ; $29:9397: B5 9E       ;
CODE_299399:    BEQ CODE_2993A3             ; $29:9399: F0 08       ;
CODE_29939B:    BPL CODE_2993A1             ; $29:939B: 10 04       ;
CODE_29939D:    INC $9E,x                   ; $29:939D: F6 9E       ;
CODE_29939F:    INC $9E,x                   ; $29:939F: F6 9E       ;
CODE_2993A1:    DEC $9E,x                   ; $29:93A1: D6 9E       ;
CODE_2993A3:    RTL                         ; $29:93A3: 6B          ;

CODE_2993A4:    LDA #$02                    ; $29:93A4: A9 02       ;
CODE_2993A6:    STA $0679,x                 ; $29:93A6: 9D 79 06    ;
CODE_2993A9:    LDA #$00                    ; $29:93A9: A9 00       ;
CODE_2993AB:    STA $94,x                   ; $29:93AB: 95 94       ;
CODE_2993AD:    STA $68,x                   ; $29:93AD: 95 68       ;
CODE_2993AF:    STA $1021,x                 ; $29:93AF: 9D 21 10    ;
CODE_2993B2:    LDA $71,x                   ; $29:93B2: B5 71       ;
CODE_2993B4:    SEC                         ; $29:93B4: 38          ;
CODE_2993B5:    SBC #$0C                    ; $29:93B5: E9 0C       ;
CODE_2993B7:    STA $71,x                   ; $29:93B7: 95 71       ;
CODE_2993B9:    LDA $56,x                   ; $29:93B9: B5 56       ;
CODE_2993BB:    SBC #$00                    ; $29:93BB: E9 00       ;
CODE_2993BD:    STA $56,x                   ; $29:93BD: 95 56       ;
CODE_2993BF:    RTL                         ; $29:93BF: 6B          ;

CODE_2993C0:    LDA #$30                    ; $29:93C0: A9 30       ;
CODE_2993C2:    STA $68,x                   ; $29:93C2: 95 68       ;
CODE_2993C4:    JSR CODE_2997CF             ; $29:93C4: 20 CF 97    ;
CODE_2993C7:    JSR CODE_2995F3             ; $29:93C7: 20 F3 95    ;
CODE_2993CA:    JSR CODE_2996A7             ; $29:93CA: 20 A7 96    ;
CODE_2993CD:    JMP CODE_299431             ; $29:93CD: 4C 31 94    ;

CODE_2993D0:    JSL CODE_2993C4             ; $29:93D0: 22 C4 93 29 ;
CODE_2993D4:    LDA $9C                     ; $29:93D4: A5 9C       ;
CODE_2993D6:    BNE CODE_2993FE             ; $29:93D6: D0 26       ;
CODE_2993D8:    LDA $4D,x                   ; $29:93D8: B5 4D       ;
CODE_2993DA:    AND #$01                    ; $29:93DA: 29 01       ;
CODE_2993DC:    ORA $0679,x                 ; $29:93DC: 1D 79 06    ;
CODE_2993DF:    TAY                         ; $29:93DF: A8          ;
CODE_2993E0:    LDA $0518,x                 ; $29:93E0: BD 18 05    ;
CODE_2993E3:    BNE CODE_2993ED             ; $29:93E3: D0 08       ;
CODE_2993E5:    LDA.w DATA_21C61E,y                 ; $29:93E5: B9 1E C6    ;
CODE_2993E8:    STA $0518,x                 ; $29:93E8: 9D 18 05    ;
CODE_2993EB:    INC $4D,x                   ; $29:93EB: F6 4D       ;
CODE_2993ED:    AND #$00                    ; $29:93ED: 29 00       ;
CODE_2993EF:    BNE CODE_2993FE             ; $29:93EF: D0 0D       ;
CODE_2993F1:    LDA $68,x                   ; $29:93F1: B5 68       ;
CODE_2993F3:    CMP.w DATA_21C626,y                 ; $29:93F3: D9 26 C6    ;
CODE_2993F6:    BEQ CODE_2993FE             ; $29:93F6: F0 06       ;
CODE_2993F8:    CLC                         ; $29:93F8: 18          ;
CODE_2993F9:    ADC.w DATA_21C622,y                 ; $29:93F9: 79 22 C6    ;
CODE_2993FC:    STA $68,x                   ; $29:93FC: 95 68       ;
CODE_2993FE:    RTL                         ; $29:93FE: 6B          ;

CODE_2993FF:    LDA $0518,x                 ; $29:93FF: BD 18 05    ;
CODE_299402:    BNE CODE_299427             ; $29:9402: D0 23       ;
CODE_299404:    LDA $15                     ; $29:9404: A5 15       ;
CODE_299406:    AND #$01                    ; $29:9406: 29 01       ;
CODE_299408:    BNE CODE_299427             ; $29:9408: D0 1D       ;
CODE_29940A:    LDY $1021,x                 ; $29:940A: BC 21 10    ;
CODE_29940D:    LDA $8C,x                   ; $29:940D: B5 8C       ;
CODE_29940F:    CLC                         ; $29:940F: 18          ;
CODE_299410:    ADC.w DATA_21C649,y                 ; $29:9410: 79 49 C6    ;
CODE_299413:    STA $8C,x                   ; $29:9413: 95 8C       ;
CODE_299415:    CMP.w DATA_21C64B,y                 ; $29:9415: D9 4B C6    ;
CODE_299418:    BNE CODE_299427             ; $29:9418: D0 0D       ;
CODE_29941A:    LDA $1021,x                 ; $29:941A: BD 21 10    ;
CODE_29941D:    EOR #$01                    ; $29:941D: 49 01       ;
CODE_29941F:    STA $1021,x                 ; $29:941F: 9D 21 10    ;
CODE_299422:    LDA #$A0                    ; $29:9422: A9 A0       ;
CODE_299424:    STA $0518,x                 ; $29:9424: 9D 18 05    ;
CODE_299427:    LDA #$00                    ; $29:9427: A9 00       ;
CODE_299429:    STA $8C,x                   ; $29:9429: 95 8C       ;
CODE_29942B:    JSR CODE_2995B8             ; $29:942B: 20 B8 95    ;
CODE_29942E:    JSR CODE_2996A7             ; $29:942E: 20 A7 96    ;
CODE_299431:    JSL CODE_279BC7             ; $29:9431: 22 C7 9B 27 ;
CODE_299435:    LDA $0583                   ; $29:9435: AD 83 05    ;
CODE_299438:    BNE CODE_2994A0             ; $29:9438: D0 66       ;
CODE_29943A:    LDA $0671,x                 ; $29:943A: BD 71 06    ;
CODE_29943D:    SEC                         ; $29:943D: 38          ;
CODE_29943E:    SBC #$90                    ; $29:943E: E9 90       ;
CODE_299440:    STA $0E                     ; $29:9440: 85 0E       ;
CODE_299442:    JSL CODE_27A85F             ; $29:9442: 22 5F A8 27 ;
CODE_299446:    BNE CODE_2994A0             ; $29:9446: D0 58       ;
CODE_299448:    LDY #$06                    ; $29:9448: A0 06       ;
CODE_29944A:    STY $00                     ; $29:944A: 84 00       ;
CODE_29944C:    CPY #$06                    ; $29:944C: C0 06       ;
CODE_29944E:    BNE CODE_299456             ; $29:944E: D0 06       ;
CODE_299450:    REP #$20                    ; $29:9450: C2 20       ;
CODE_299452:    LDA $D8                     ; $29:9452: A5 D8       ;
CODE_299454:    BRA CODE_299461             ; $29:9454: 80 0B       ;

CODE_299456:    REP #$20                    ; $29:9456: C2 20       ;
CODE_299458:    TYA                         ; $29:9458: 98          ;
CODE_299459:    AND #$00FF                  ; $29:9459: 29 FF 00    ;
CODE_29945C:    ASL A                       ; $29:945C: 0A          ;
CODE_29945D:    ASL A                       ; $29:945D: 0A          ;
CODE_29945E:    CLC                         ; $29:945E: 18          ;
CODE_29945F:    ADC $DA                     ; $29:945F: 65 DA       ;
CODE_299461:    STA $0F                     ; $29:9461: 85 0F       ;
CODE_299463:    SEP #$20                    ; $29:9463: E2 20       ;
CODE_299465:    LDA $70                     ; $29:9465: A5 70       ;
CODE_299467:    SEC                         ; $29:9467: 38          ;
CODE_299468:    SBC $0543                   ; $29:9468: ED 43 05    ;
CODE_29946B:    CLC                         ; $29:946B: 18          ;
CODE_29946C:    ADC #$18                    ; $29:946C: 69 18       ;
CODE_29946E:    LDY $9D                     ; $29:946E: A4 9D       ;
CODE_299470:    BPL CODE_299475             ; $29:9470: 10 03       ;
CODE_299472:    SEC                         ; $29:9472: 38          ;
CODE_299473:    SBC #$10                    ; $29:9473: E9 10       ;
CODE_299475:    REP #$10                    ; $29:9475: C2 10       ;
CODE_299477:    LDY $0F                     ; $29:9477: A4 0F       ;
CODE_299479:    SEC                         ; $29:9479: 38          ;
CODE_29947A:    SBC $0801,y                 ; $29:947A: F9 01 08    ;
CODE_29947D:    CMP #$09                    ; $29:947D: C9 09       ;
CODE_29947F:    BCS CODE_299499                     ; $29:947F: B0 18       ;
CODE_299481:    LDA $43                     ; $29:9481: A5 43       ;
CODE_299483:    SEC                         ; $29:9483: 38          ;
CODE_299484:    SBC $44,x                   ; $29:9484: F5 44       ;
CODE_299486:    BNE CODE_299499             ; $29:9486: D0 11       ;
CODE_299488:    LDA $5E                     ; $29:9488: A5 5E       ;
CODE_29948A:    SEC                         ; $29:948A: 38          ;
CODE_29948B:    SBC $0210                   ; $29:948B: ED 10 02    ;
CODE_29948E:    CLC                         ; $29:948E: 18          ;
CODE_29948F:    ADC #$08                    ; $29:948F: 69 08       ;
CODE_299491:    SEC                         ; $29:9491: 38          ;
CODE_299492:    SBC $0800,y                 ; $29:9492: F9 00 08    ;
CODE_299495:    CMP #$09                    ; $29:9495: C9 09       ;
CODE_299497:    BCC CODE_2994A3             ; $29:9497: 90 0A       ;
CODE_299499:    SEP #$30                    ; $29:9499: E2 30       ;
CODE_29949B:    LDY $00                     ; $29:949B: A4 00       ;
CODE_29949D:    DEY                         ; $29:949D: 88          ;
CODE_29949E:    BPL CODE_29944A             ; $29:949E: 10 AA       ;
CODE_2994A0:    SEP #$30                    ; $29:94A0: E2 30       ;
CODE_2994A2:    RTL                         ; $29:94A2: 6B          ;

CODE_2994A3:    LDA $BF                     ; $29:94A3: A5 BF       ;
CODE_2994A5:    BNE CODE_2994A0             ; $29:94A5: D0 F9       ;
CODE_2994A7:    LDA $0801,y                 ; $29:94A7: B9 01 08    ;
CODE_2994AA:    CMP #$F0                    ; $29:94AA: C9 F0       ;
CODE_2994AC:    BEQ CODE_299499             ; $29:94AC: F0 EB       ;
CODE_2994AE:    SEP #$10                    ; $29:94AE: E2 10       ;
CODE_2994B0:    LDA $0E                     ; $29:94B0: A5 0E       ;
CODE_2994B2:    BEQ CODE_29951F             ; $29:94B2: F0 6B       ;
CODE_2994B4:    LDA $68,x                   ; $29:94B4: B5 68       ;
CODE_2994B6:    BNE CODE_2994E3             ; $29:94B6: D0 2B       ;
CODE_2994B8:    LDA $9D                     ; $29:94B8: A5 9D       ;
CODE_2994BA:    BPL CODE_2994C1             ; $29:94BA: 10 05       ;
CODE_2994BC:    LDA #$00                    ; $29:94BC: A9 00       ;
CODE_2994BE:    STA $9D                     ; $29:94BE: 85 9D       ;
CODE_2994C0:    RTL                         ; $29:94C0: 6B          ;

CODE_2994C1:    LDA $17                     ; $29:94C1: A5 17       ;
CODE_2994C3:    AND #$03                    ; $29:94C3: 29 03       ;
CODE_2994C5:    BNE CODE_2994D3             ; $29:94C5: D0 0C       ;
CODE_2994C7:    LDA $8B                     ; $29:94C7: A5 8B       ;
CODE_2994C9:    BEQ CODE_2994D3             ; $29:94C9: F0 08       ;
CODE_2994CB:    BPL CODE_2994D1             ; $29:94CB: 10 04       ;
CODE_2994CD:    INC $8B                     ; $29:94CD: E6 8B       ;
CODE_2994CF:    INC $8B                     ; $29:94CF: E6 8B       ;
CODE_2994D1:    DEC $8B                     ; $29:94D1: C6 8B       ;
CODE_2994D3:    LDA #$00                    ; $29:94D3: A9 00       ;
CODE_2994D5:    STA $9D                     ; $29:94D5: 85 9D       ;
CODE_2994D7:    STA $A6                     ; $29:94D7: 85 A6       ;
CODE_2994D9:    JSL CODE_299596             ; $29:94D9: 22 96 95 29 ;
CODE_2994DD:    LDA #$10                    ; $29:94DD: A9 10       ;
CODE_2994DF:    STA $101F                   ; $29:94DF: 8D 1F 10    ;
CODE_2994E2:    RTL                         ; $29:94E2: 6B          ;

CODE_2994E3:    LDA $68,x                   ; $29:94E3: B5 68       ;
CODE_2994E5:    LDY $00                     ; $29:94E5: A4 00       ;
CODE_2994E7:    CPY #$04                    ; $29:94E7: C0 04       ;
CODE_2994E9:    BCC CODE_2994ED             ; $29:94E9: 90 02       ;
CODE_2994EB:    EOR #$80                    ; $29:94EB: 49 80       ;
CODE_2994ED:    ASL A                       ; $29:94ED: 0A          ;
CODE_2994EE:    BCS CODE_299511                     ; $29:94EE: B0 21       ;
CODE_2994F0:    LDA $05                     ; $29:94F0: A5 05       ;
CODE_2994F2:    ASL A                       ; $29:94F2: 0A          ;
CODE_2994F3:    ASL A                       ; $29:94F3: 0A          ;
CODE_2994F4:    ASL A                       ; $29:94F4: 0A          ;
CODE_2994F5:    STA $9D                     ; $29:94F5: 85 9D       ;
CODE_2994F7:    LDA $04                     ; $29:94F7: A5 04       ;
CODE_2994F9:    EOR #$FF                    ; $29:94F9: 49 FF       ;
CODE_2994FB:    ASL A                       ; $29:94FB: 0A          ;
CODE_2994FC:    ASL A                       ; $29:94FC: 0A          ;
CODE_2994FD:    ASL A                       ; $29:94FD: 0A          ;
CODE_2994FE:    BPL CODE_299508             ; $29:94FE: 10 08       ;
CODE_299500:    CMP #$C0                    ; $29:9500: C9 C0       ;
CODE_299502:    BCS CODE_29950E                     ; $29:9502: B0 0A       ;
CODE_299504:    LDA #$C0                    ; $29:9504: A9 C0       ;
CODE_299506:    BNE CODE_29950E             ; $29:9506: D0 06       ;
CODE_299508:    CMP #$40                    ; $29:9508: C9 40       ;
CODE_29950A:    BCC CODE_29950E             ; $29:950A: 90 02       ;
CODE_29950C:    LDA #$40                    ; $29:950C: A9 40       ;
CODE_29950E:    STA $8B                     ; $29:950E: 85 8B       ;
CODE_299510:    RTL                         ; $29:9510: 6B          ;

CODE_299511:    LDA $04                     ; $29:9511: A5 04       ;
CODE_299513:    JSL CODE_2994FB             ; $29:9513: 22 FB 94 29 ;
CODE_299517:    LDA $05                     ; $29:9517: A5 05       ;
CODE_299519:    ASL A                       ; $29:9519: 0A          ;
CODE_29951A:    ASL A                       ; $29:951A: 0A          ;
CODE_29951B:    ASL A                       ; $29:951B: 0A          ;
CODE_29951C:    STA $9D                     ; $29:951C: 85 9D       ;
CODE_29951E:    RTL                         ; $29:951E: 6B          ;

CODE_29951F:    LDY $00                     ; $29:951F: A4 00       ;
CODE_299521:    LDA $94,x                   ; $29:9521: B5 94       ;
CODE_299523:    CMP #$10                    ; $29:9523: C9 10       ;
CODE_299525:    BCC CODE_299530             ; $29:9525: 90 09       ;
CODE_299527:    CMP #$30                    ; $29:9527: C9 30       ;
CODE_299529:    BCS CODE_299530                     ; $29:9529: B0 05       ;
CODE_29952B:    TYA                         ; $29:952B: 98          ;
CODE_29952C:    CLC                         ; $29:952C: 18          ;
CODE_29952D:    ADC #$07                    ; $29:952D: 69 07       ;
CODE_29952F:    TAY                         ; $29:952F: A8          ;
CODE_299530:    LDA $9D                     ; $29:9530: A5 9D       ;
CODE_299532:    BMI CODE_29953A             ; $29:9532: 30 06       ;
CODE_299534:    LDA $15                     ; $29:9534: A5 15       ;
CODE_299536:    AND #$03                    ; $29:9536: 29 03       ;
CODE_299538:    BNE CODE_29954B             ; $29:9538: D0 11       ;
CODE_29953A:    LDA.w DATA_21C63B,y                 ; $29:953A: B9 3B C6    ;
CODE_29953D:    LDY $9D                     ; $29:953D: A4 9D       ;
CODE_29953F:    BPL CODE_299546             ; $29:953F: 10 05       ;
CODE_299541:    JSL CODE_27A859         ; $29:9541: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_299545:    ASL A                       ; $29:9545: 0A          ;
CODE_299546:    CLC                         ; $29:9546: 18          ;
CODE_299547:    ADC $68,x                   ; $29:9547: 75 68       ;
CODE_299549:    STA $68,x                   ; $29:9549: 95 68       ;
CODE_29954B:    LDA $04                     ; $29:954B: A5 04       ;
CODE_29954D:    EOR $05                     ; $29:954D: 45 05       ;
CODE_29954F:    BPL CODE_299557             ; $29:954F: 10 06       ;
CODE_299551:    LDA $04                     ; $29:9551: A5 04       ;
CODE_299553:    BPL CODE_29955B             ; $29:9553: 10 06       ;
CODE_299555:    BMI CODE_29955F             ; $29:9555: 30 08       ;
CODE_299557:    LDA $04                     ; $29:9557: A5 04       ;
CODE_299559:    BPL CODE_29955F             ; $29:9559: 10 04       ;
CODE_29955B:    JSL CODE_27A859         ; $29:955B: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_29955F:    LDY $9D                     ; $29:955F: A4 9D       ;
CODE_299561:    BPL CODE_29956F             ; $29:9561: 10 0C       ;
CODE_299563:    JSL CODE_27A859         ; $29:9563: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_299567:    ASL A                       ; $29:9567: 0A          ;
CODE_299568:    STA $8B                     ; $29:9568: 85 8B       ;
CODE_29956A:    LDA #$00                    ; $29:956A: A9 00       ;
CODE_29956C:    STA $9D                     ; $29:956C: 85 9D       ;
CODE_29956E:    RTL                         ; $29:956E: 6B          ;

CODE_29956F:    LDY #$20                    ; $29:956F: A0 20       ;
CODE_299571:    STA $00                     ; $29:9571: 85 00       ;
CODE_299573:    ASL $00                     ; $29:9573: 06 00       ;
CODE_299575:    ROR A                       ; $29:9575: 6A          ;
CODE_299576:    NOP                         ; $29:9576: EA          ;
CODE_299577:    NOP                         ; $29:9577: EA          ;
CODE_299578:    NOP                         ; $29:9578: EA          ;
CODE_299579:    NOP                         ; $29:9579: EA          ;
CODE_29957A:    NOP                         ; $29:957A: EA          ;
CODE_29957B:    NOP                         ; $29:957B: EA          ;
CODE_29957C:    CLC                         ; $29:957C: 18          ;
CODE_29957D:    ADC $8B                     ; $29:957D: 65 8B       ;
CODE_29957F:    CLC                         ; $29:957F: 18          ;
CODE_299580:    ADC $8C,x                   ; $29:9580: 75 8C       ;
CODE_299582:    STA $8B                     ; $29:9582: 85 8B       ;
CODE_299584:    BPL CODE_29958C             ; $29:9584: 10 06       ;
CODE_299586:    JSL CODE_27A859         ; $29:9586: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_29958A:    LDY #$E0                    ; $29:958A: A0 E0       ;
CODE_29958C:    CMP #$20                    ; $29:958C: C9 20       ;
CODE_29958E:    BCC CODE_299592             ; $29:958E: 90 02       ;
CODE_299590:    STY $8B                     ; $29:9590: 84 8B       ;
CODE_299592:    LDA #$10                    ; $29:9592: A9 10       ;
CODE_299594:    STA $9D                     ; $29:9594: 85 9D       ;
CODE_299596:    LDA $70                     ; $29:9596: A5 70       ;
CODE_299598:    PHA                         ; $29:9598: 48          ;
CODE_299599:    REP #$10                    ; $29:9599: C2 10       ;
CODE_29959B:    LDY $0F                     ; $29:959B: A4 0F       ;
CODE_29959D:    LDA $0801,y                 ; $29:959D: B9 01 08    ;
CODE_2995A0:    SEP #$10                    ; $29:95A0: E2 10       ;
CODE_2995A2:    CLC                         ; $29:95A2: 18          ;
CODE_2995A3:    ADC $0543                   ; $29:95A3: 6D 43 05    ;
CODE_2995A6:    SEC                         ; $29:95A6: 38          ;
CODE_2995A7:    SBC #$18                    ; $29:95A7: E9 18       ;
CODE_2995A9:    STA $70                     ; $29:95A9: 85 70       ;
CODE_2995AB:    PLA                         ; $29:95AB: 68          ;
CODE_2995AC:    CMP $70                     ; $29:95AC: C5 70       ;
CODE_2995AE:    BCS CODE_2995B2                     ; $29:95AE: B0 02       ;
CODE_2995B0:    DEC $55                     ; $29:95B0: C6 55       ;
CODE_2995B2:    LDA #$08                    ; $29:95B2: A9 08       ;
CODE_2995B4:    STA $101F                   ; $29:95B4: 8D 1F 10    ;
CODE_2995B7:    RTL                         ; $29:95B7: 6B          ;

CODE_2995B8:    JSR CODE_2997CF             ; $29:95B8: 20 CF 97    ;
CODE_2995BB:    LDA $94,x                   ; $29:95BB: B5 94       ;
CODE_2995BD:    CLC                         ; $29:95BD: 18          ;
CODE_2995BE:    ADC #$07                    ; $29:95BE: 69 07       ;
CODE_2995C0:    AND #$3F                    ; $29:95C0: 29 3F       ;
CODE_2995C2:    LDY $68,x                   ; $29:95C2: B4 68       ;
CODE_2995C4:    BMI CODE_2995D5             ; $29:95C4: 30 0F       ;
CODE_2995C6:    CMP #$10                    ; $29:95C6: C9 10       ;
CODE_2995C8:    BCC CODE_2995E1             ; $29:95C8: 90 17       ;
CODE_2995CA:    CMP #$18                    ; $29:95CA: C9 18       ;
CODE_2995CC:    BCS CODE_2995D5                     ; $29:95CC: B0 07       ;
CODE_2995CE:    LDA #$08                    ; $29:95CE: A9 08       ;
CODE_2995D0:    STA $94,x                   ; $29:95D0: 95 94       ;
CODE_2995D2:    JMP CODE_2995DD             ; $29:95D2: 4C DD 95    ;

CODE_2995D5:    AND #$20                    ; $29:95D5: 29 20       ;
CODE_2995D7:    BEQ CODE_2995E1             ; $29:95D7: F0 08       ;
CODE_2995D9:    LDA #$38                    ; $29:95D9: A9 38       ;
CODE_2995DB:    STA $94,x                   ; $29:95DB: 95 94       ;
CODE_2995DD:    LDA #$00                    ; $29:95DD: A9 00       ;
CODE_2995DF:    STA $68,x                   ; $29:95DF: 95 68       ;
CODE_2995E1:    LDA $15                     ; $29:95E1: A5 15       ;
CODE_2995E3:    AND #$07                    ; $29:95E3: 29 07       ;
CODE_2995E5:    BNE CODE_2995F3             ; $29:95E5: D0 0C       ;
CODE_2995E7:    LDA $68,x                   ; $29:95E7: B5 68       ;
CODE_2995E9:    BEQ CODE_2995F3             ; $29:95E9: F0 08       ;
CODE_2995EB:    BMI CODE_2995F1             ; $29:95EB: 30 04       ;
CODE_2995ED:    DEC $68,x                   ; $29:95ED: D6 68       ;
CODE_2995EF:    BPL CODE_2995F3             ; $29:95EF: 10 02       ;
CODE_2995F1:    INC $68,x                   ; $29:95F1: F6 68       ;
CODE_2995F3:    LDA $94,x                   ; $29:95F3: B5 94       ;
CODE_2995F5:    AND #$0F                    ; $29:95F5: 29 0F       ;
CODE_2995F7:    TAY                         ; $29:95F7: A8          ;
CODE_2995F8:    LDA.w DATA_21C62A,y                 ; $29:95F8: B9 2A C6    ;
CODE_2995FB:    STA $09                     ; $29:95FB: 85 09       ;
CODE_2995FD:    TYA                         ; $29:95FD: 98          ;
CODE_2995FE:    EOR #$FF                    ; $29:95FE: 49 FF       ;
CODE_299600:    AND #$0F                    ; $29:9600: 29 0F       ;
CODE_299602:    CLC                         ; $29:9602: 18          ;
CODE_299603:    ADC #$01                    ; $29:9603: 69 01       ;
CODE_299605:    TAY                         ; $29:9605: A8          ;
CODE_299606:    LDA.w DATA_21C62A,y                 ; $29:9606: B9 2A C6    ;
CODE_299609:    STA $08                     ; $29:9609: 85 08       ;
CODE_29960B:    LDA $94,x                   ; $29:960B: B5 94       ;
CODE_29960D:    AND #$10                    ; $29:960D: 29 10       ;
CODE_29960F:    BEQ CODE_29961B             ; $29:960F: F0 0A       ;
CODE_299611:    LDA $08                     ; $29:9611: A5 08       ;
CODE_299613:    PHA                         ; $29:9613: 48          ;
CODE_299614:    LDA $09                     ; $29:9614: A5 09       ;
CODE_299616:    STA $08                     ; $29:9616: 85 08       ;
CODE_299618:    PLA                         ; $29:9618: 68          ;
CODE_299619:    STA $09                     ; $29:9619: 85 09       ;
CODE_29961B:    LDA $09                     ; $29:961B: A5 09       ;
CODE_29961D:    CMP #$03                    ; $29:961D: C9 03       ;
CODE_29961F:    BCS CODE_29962D                     ; $29:961F: B0 0C       ;
CODE_299621:    LSR A                       ; $29:9621: 4A          ;
CODE_299622:    STA $01                     ; $29:9622: 85 01       ;
CODE_299624:    STA $05                     ; $29:9624: 85 05       ;
CODE_299626:    LDA #$00                    ; $29:9626: A9 00       ;
CODE_299628:    STA $03                     ; $29:9628: 85 03       ;
CODE_29962A:    JMP CODE_299649             ; $29:962A: 4C 49 96    ;

CODE_29962D:    LDY #$FF                    ; $29:962D: A0 FF       ;
CODE_29962F:    SEC                         ; $29:962F: 38          ;
CODE_299630:    SBC #$03                    ; $29:9630: E9 03       ;
CODE_299632:    INY                         ; $29:9632: C8          ;
CODE_299633:    BCS CODE_299630                     ; $29:9633: B0 FB       ;
CODE_299635:    ADC #$03                    ; $29:9635: 69 03       ;
CODE_299637:    STA $03                     ; $29:9637: 85 03       ;
CODE_299639:    STY $01                     ; $29:9639: 84 01       ;
CODE_29963B:    STY $03                     ; $29:963B: 84 03       ;
CODE_29963D:    STY $05                     ; $29:963D: 84 05       ;
CODE_29963F:    TAY                         ; $29:963F: A8          ;
CODE_299640:    BEQ CODE_299649             ; $29:9640: F0 07       ;
CODE_299642:    INC $01                     ; $29:9642: E6 01       ;
CODE_299644:    DEY                         ; $29:9644: 88          ;
CODE_299645:    BEQ CODE_299649             ; $29:9645: F0 02       ;
CODE_299647:    INC $05                     ; $29:9647: E6 05       ;
CODE_299649:    LDA $08                     ; $29:9649: A5 08       ;
CODE_29964B:    CMP #$03                    ; $29:964B: C9 03       ;
CODE_29964D:    BCS CODE_29965B                     ; $29:964D: B0 0C       ;
CODE_29964F:    LSR A                       ; $29:964F: 4A          ;
CODE_299650:    STA $00                     ; $29:9650: 85 00       ;
CODE_299652:    STA $04                     ; $29:9652: 85 04       ;
CODE_299654:    LDA #$00                    ; $29:9654: A9 00       ;
CODE_299656:    STA $02                     ; $29:9656: 85 02       ;
CODE_299658:    JMP CODE_299675             ; $29:9658: 4C 75 96    ;

CODE_29965B:    LDY #$FF                    ; $29:965B: A0 FF       ;
CODE_29965D:    SEC                         ; $29:965D: 38          ;
CODE_29965E:    SBC #$03                    ; $29:965E: E9 03       ;
CODE_299660:    INY                         ; $29:9660: C8          ;
CODE_299661:    BCS CODE_29965E                     ; $29:9661: B0 FB       ;
CODE_299663:    ADC #$03                    ; $29:9663: 69 03       ;
CODE_299665:    STY $00                     ; $29:9665: 84 00       ;
CODE_299667:    STY $02                     ; $29:9667: 84 02       ;
CODE_299669:    STY $04                     ; $29:9669: 84 04       ;
CODE_29966B:    TAY                         ; $29:966B: A8          ;
CODE_29966C:    BEQ CODE_299675             ; $29:966C: F0 07       ;
CODE_29966E:    INC $00                     ; $29:966E: E6 00       ;
CODE_299670:    DEY                         ; $29:9670: 88          ;
CODE_299671:    BEQ CODE_299675             ; $29:9671: F0 02       ;
CODE_299673:    INC $04                     ; $29:9673: E6 04       ;
CODE_299675:    LDA $94,x                   ; $29:9675: B5 94       ;
CODE_299677:    AND #$30                    ; $29:9677: 29 30       ;
CODE_299679:    BEQ CODE_2996A0             ; $29:9679: F0 25       ;
CODE_29967B:    CMP #$10                    ; $29:967B: C9 10       ;
CODE_29967D:    BEQ CODE_299686             ; $29:967D: F0 07       ;
CODE_29967F:    CMP #$30                    ; $29:967F: C9 30       ;
CODE_299681:    BEQ CODE_2996A3             ; $29:9681: F0 20       ;
CODE_299683:    JSR CODE_2996A3             ; $29:9683: 20 A3 96    ;
CODE_299686:    LDX #$01                    ; $29:9686: A2 01       ;
CODE_299688:    LDA $00,x                   ; $29:9688: B5 00       ;
CODE_29968A:    JSL CODE_27A859         ; $29:968A: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_29968E:    STA $00,x                   ; $29:968E: 95 00       ;
CODE_299690:    LDA $02,x                   ; $29:9690: B5 02       ;
CODE_299692:    JSL CODE_27A859         ; $29:9692: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_299696:    STA $02,x                   ; $29:9696: 95 02       ;
CODE_299698:    LDA $04,x                   ; $29:9698: B5 04       ;
CODE_29969A:    JSL CODE_27A859         ; $29:969A: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_29969E:    STA $04,x                   ; $29:969E: 95 04       ;
CODE_2996A0:    LDX $9B                     ; $29:96A0: A6 9B       ;
CODE_2996A2:    RTS                         ; $29:96A2: 60          ;

CODE_2996A3:    LDX #$00                    ; $29:96A3: A2 00       ;
CODE_2996A5:    BEQ CODE_299688             ; $29:96A5: F0 E1       ;
CODE_2996A7:    LDA $C6,x                   ; $29:96A7: B5 C6       ;
CODE_2996A9:    STA $DA                     ; $29:96A9: 85 DA       ;
CODE_2996AB:    LDA $C7,x                   ; $29:96AB: B5 C7       ;
CODE_2996AD:    STA $DB                     ; $29:96AD: 85 DB       ;
CODE_2996AF:    JSL CODE_27A227             ; $29:96AF: 22 27 A2 27 ;
CODE_2996B3:    JSR CODE_2997F6             ; $29:96B3: 20 F6 97    ;
CODE_2996B6:    REP #$10                    ; $29:96B6: C2 10       ;
CODE_2996B8:    LDY $DA                     ; $29:96B8: A4 DA       ;
CODE_2996BA:    LDA $0D                     ; $29:96BA: A5 0D       ;
CODE_2996BC:    STA $0801,y                 ; $29:96BC: 99 01 08    ;
CODE_2996BF:    CLC                         ; $29:96BF: 18          ;
CODE_2996C0:    ADC $00                     ; $29:96C0: 65 00       ;
CODE_2996C2:    STA $0805,y                 ; $29:96C2: 99 05 08    ;
CODE_2996C5:    CLC                         ; $29:96C5: 18          ;
CODE_2996C6:    ADC $02                     ; $29:96C6: 65 02       ;
CODE_2996C8:    STA $0809,y                 ; $29:96C8: 99 09 08    ;
CODE_2996CB:    CLC                         ; $29:96CB: 18          ;
CODE_2996CC:    ADC $04                     ; $29:96CC: 65 04       ;
CODE_2996CE:    STA $080D,y                 ; $29:96CE: 99 0D 08    ;
CODE_2996D1:    LDA $0D                     ; $29:96D1: A5 0D       ;
CODE_2996D3:    SEC                         ; $29:96D3: 38          ;
CODE_2996D4:    SBC $00                     ; $29:96D4: E5 00       ;
CODE_2996D6:    STA $0811,y                 ; $29:96D6: 99 11 08    ;
CODE_2996D9:    SEC                         ; $29:96D9: 38          ;
CODE_2996DA:    SBC $02                     ; $29:96DA: E5 02       ;
CODE_2996DC:    STA $0815,y                 ; $29:96DC: 99 15 08    ;
CODE_2996DF:    SEC                         ; $29:96DF: 38          ;
CODE_2996E0:    SBC $04                     ; $29:96E0: E5 04       ;
CODE_2996E2:    LDY $C6,x                   ; $29:96E2: B4 C6       ;
CODE_2996E4:    STA $0801,y                 ; $29:96E4: 99 01 08    ;
CODE_2996E7:    CLC                         ; $29:96E7: 18          ;
CODE_2996E8:    ADC #$08                    ; $29:96E8: 69 08       ;
CODE_2996EA:    STA $0819,y                 ; $29:96EA: 99 19 08    ;
CODE_2996ED:    LDY $DA                     ; $29:96ED: A4 DA       ;
CODE_2996EF:    LDA $0801,y                 ; $29:96EF: B9 01 08    ;
CODE_2996F2:    CLC                         ; $29:96F2: 18          ;
CODE_2996F3:    ADC #$08                    ; $29:96F3: 69 08       ;
CODE_2996F5:    STA $0819,y                 ; $29:96F5: 99 19 08    ;
CODE_2996F8:    LDA $0805,y                 ; $29:96F8: B9 05 08    ;
CODE_2996FB:    CLC                         ; $29:96FB: 18          ;
CODE_2996FC:    ADC #$08                    ; $29:96FC: 69 08       ;
CODE_2996FE:    STA $081D,y                 ; $29:96FE: 99 1D 08    ;
CODE_299701:    LDA $0809,y                 ; $29:9701: B9 09 08    ;
CODE_299704:    CLC                         ; $29:9704: 18          ;
CODE_299705:    ADC #$08                    ; $29:9705: 69 08       ;
CODE_299707:    STA $0821,y                 ; $29:9707: 99 21 08    ;
CODE_29970A:    LDA $080D,y                 ; $29:970A: B9 0D 08    ;
CODE_29970D:    CLC                         ; $29:970D: 18          ;
CODE_29970E:    ADC #$08                    ; $29:970E: 69 08       ;
CODE_299710:    STA $0825,y                 ; $29:9710: 99 25 08    ;
CODE_299713:    LDA $0811,y                 ; $29:9713: B9 11 08    ;
CODE_299716:    CLC                         ; $29:9716: 18          ;
CODE_299717:    ADC #$08                    ; $29:9717: 69 08       ;
CODE_299719:    STA $0829,y                 ; $29:9719: 99 29 08    ;
CODE_29971C:    LDA $0815,y                 ; $29:971C: B9 15 08    ;
CODE_29971F:    CLC                         ; $29:971F: 18          ;
CODE_299720:    ADC #$08                    ; $29:9720: 69 08       ;
CODE_299722:    STA $082D,y                 ; $29:9722: 99 2D 08    ;
CODE_299725:    LDA $0E                     ; $29:9725: A5 0E       ;
CODE_299727:    STA $0800,y                 ; $29:9727: 99 00 08    ;
CODE_29972A:    STA $0818,y                 ; $29:972A: 99 18 08    ;
CODE_29972D:    CLC                         ; $29:972D: 18          ;
CODE_29972E:    ADC $01                     ; $29:972E: 65 01       ;
CODE_299730:    STA $0804,y                 ; $29:9730: 99 04 08    ;
CODE_299733:    STA $081C,y                 ; $29:9733: 99 1C 08    ;
CODE_299736:    CLC                         ; $29:9736: 18          ;
CODE_299737:    ADC $03                     ; $29:9737: 65 03       ;
CODE_299739:    STA $0808,y                 ; $29:9739: 99 08 08    ;
CODE_29973C:    STA $0820,y                 ; $29:973C: 99 20 08    ;
CODE_29973F:    CLC                         ; $29:973F: 18          ;
CODE_299740:    ADC $05                     ; $29:9740: 65 05       ;
CODE_299742:    STA $080C,y                 ; $29:9742: 99 0C 08    ;
CODE_299745:    STA $0824,y                 ; $29:9745: 99 24 08    ;
CODE_299748:    LDA $0E                     ; $29:9748: A5 0E       ;
CODE_29974A:    SEC                         ; $29:974A: 38          ;
CODE_29974B:    SBC $01                     ; $29:974B: E5 01       ;
CODE_29974D:    STA $0810,y                 ; $29:974D: 99 10 08    ;
CODE_299750:    STA $0828,y                 ; $29:9750: 99 28 08    ;
CODE_299753:    SEC                         ; $29:9753: 38          ;
CODE_299754:    SBC $03                     ; $29:9754: E5 03       ;
CODE_299756:    STA $0814,y                 ; $29:9756: 99 14 08    ;
CODE_299759:    STA $082C,y                 ; $29:9759: 99 2C 08    ;
CODE_29975C:    SEC                         ; $29:975C: 38          ;
CODE_29975D:    SBC $05                     ; $29:975D: E5 05       ;
CODE_29975F:    LDY $C6,x                   ; $29:975F: B4 C6       ;
CODE_299761:    STA $0800,y                 ; $29:9761: 99 00 08    ;
CODE_299764:    STA $0818,y                 ; $29:9764: 99 18 08    ;
CODE_299767:    LDA $C6,x                   ; $29:9767: B5 C6       ;
CODE_299769:    STA $D8                     ; $29:9769: 85 D8       ;
CODE_29976B:    LDA $C7,x                   ; $29:976B: B5 C7       ;
CODE_29976D:    STA $D9                     ; $29:976D: 85 D9       ;
CODE_29976F:    LDY $DA                     ; $29:976F: A4 DA       ;
CODE_299771:    LDX #$0006                  ; $29:9771: A2 06 00    ;
CODE_299774:    CPX #$0000                  ; $29:9774: E0 00 00    ;
CODE_299777:    BNE CODE_29977B             ; $29:9777: D0 02       ;
CODE_299779:    LDY $D8                     ; $29:9779: A4 D8       ;
CODE_29977B:    LDA $0C                     ; $29:977B: A5 0C       ;
CODE_29977D:    CMP #$FF                    ; $29:977D: C9 FF       ;
CODE_29977F:    BEQ CODE_299788             ; $29:977F: F0 07       ;
CODE_299781:    LDA $0801,y                 ; $29:9781: B9 01 08    ;
CODE_299784:    CMP #$C2                    ; $29:9784: C9 C2       ;
CODE_299786:    BCC CODE_299792             ; $29:9786: 90 0A       ;
CODE_299788:    LDA #$F0                    ; $29:9788: A9 F0       ;
CODE_29978A:    STA $0801,y                 ; $29:978A: 99 01 08    ;
CODE_29978D:    STA $0819,y                 ; $29:978D: 99 19 08    ;
CODE_299790:    BNE CODE_2997AA             ; $29:9790: D0 18       ;
CODE_299792:    LDA #$22                    ; $29:9792: A9 22       ;
CODE_299794:    CPX #$0006                  ; $29:9794: E0 06 00    ;
CODE_299797:    BNE CODE_29979B             ; $29:9797: D0 02       ;
CODE_299799:    LDA #$24                    ; $29:9799: A9 24       ;
CODE_29979B:    STA $0803,y                 ; $29:979B: 99 03 08    ;
CODE_29979E:    STA $081B,y                 ; $29:979E: 99 1B 08    ;
CODE_2997A1:    LDA #$EC                    ; $29:97A1: A9 EC       ;
CODE_2997A3:    STA $0802,y                 ; $29:97A3: 99 02 08    ;
CODE_2997A6:    INC A                       ; $29:97A6: 1A          ;
CODE_2997A7:    STA $081A,y                 ; $29:97A7: 99 1A 08    ;
CODE_2997AA:    PHY                         ; $29:97AA: 5A          ;
CODE_2997AB:    REP #$20                    ; $29:97AB: C2 20       ;
CODE_2997AD:    TYA                         ; $29:97AD: 98          ;
CODE_2997AE:    LSR A                       ; $29:97AE: 4A          ;
CODE_2997AF:    LSR A                       ; $29:97AF: 4A          ;
CODE_2997B0:    TAY                         ; $29:97B0: A8          ;
CODE_2997B1:    SEP #$20                    ; $29:97B1: E2 20       ;
CODE_2997B3:    LDA $0C                     ; $29:97B3: A5 0C       ;
CODE_2997B5:    AND.w DATA_21C65A,x                 ; $29:97B5: 3D 5A C6    ;
CODE_2997B8:    BEQ CODE_2997BC             ; $29:97B8: F0 02       ;
CODE_2997BA:    LDA #$01                    ; $29:97BA: A9 01       ;
CODE_2997BC:    STA $0A20,y                 ; $29:97BC: 99 20 0A    ;
CODE_2997BF:    STA $0A26,y                 ; $29:97BF: 99 26 0A    ;
CODE_2997C2:    PLY                         ; $29:97C2: 7A          ;
CODE_2997C3:    INY                         ; $29:97C3: C8          ;
CODE_2997C4:    INY                         ; $29:97C4: C8          ;
CODE_2997C5:    INY                         ; $29:97C5: C8          ;
CODE_2997C6:    INY                         ; $29:97C6: C8          ;
CODE_2997C7:    DEX                         ; $29:97C7: CA          ;
CODE_2997C8:    BPL CODE_299774             ; $29:97C8: 10 AA       ;
CODE_2997CA:    SEP #$10                    ; $29:97CA: E2 10       ;
CODE_2997CC:    LDX $9B                     ; $29:97CC: A6 9B       ;
CODE_2997CE:    RTS                         ; $29:97CE: 60          ;

CODE_2997CF:    LDA $9C                     ; $29:97CF: A5 9C       ;
CODE_2997D1:    BNE CODE_2997F5             ; $29:97D1: D0 22       ;
CODE_2997D3:    LDA $0068,x                 ; $29:97D3: BD 68 00    ;
CODE_2997D6:    PHA                         ; $29:97D6: 48          ;
CODE_2997D7:    ASL A                       ; $29:97D7: 0A          ;
CODE_2997D8:    ASL A                       ; $29:97D8: 0A          ;
CODE_2997D9:    ASL A                       ; $29:97D9: 0A          ;
CODE_2997DA:    ASL A                       ; $29:97DA: 0A          ;
CODE_2997DB:    CLC                         ; $29:97DB: 18          ;
CODE_2997DC:    ADC $0689,x                 ; $29:97DC: 7D 89 06    ;
CODE_2997DF:    STA $0689,x                 ; $29:97DF: 9D 89 06    ;
CODE_2997E2:    PLA                         ; $29:97E2: 68          ;
CODE_2997E3:    PHP                         ; $29:97E3: 08          ;
CODE_2997E4:    LSR A                       ; $29:97E4: 4A          ;
CODE_2997E5:    LSR A                       ; $29:97E5: 4A          ;
CODE_2997E6:    LSR A                       ; $29:97E6: 4A          ;
CODE_2997E7:    LSR A                       ; $29:97E7: 4A          ;
CODE_2997E8:    CMP #$08                    ; $29:97E8: C9 08       ;
CODE_2997EA:    BCC CODE_2997EE             ; $29:97EA: 90 02       ;
CODE_2997EC:    ORA #$F0                    ; $29:97EC: 09 F0       ;
CODE_2997EE:    PLP                         ; $29:97EE: 28          ;
CODE_2997EF:    ADC $94,x                   ; $29:97EF: 75 94       ;
CODE_2997F1:    AND #$3F                    ; $29:97F1: 29 3F       ;
CODE_2997F3:    STA $94,x                   ; $29:97F3: 95 94       ;
CODE_2997F5:    RTS                         ; $29:97F5: 60          ;

CODE_2997F6:    LDA #$00                    ; $29:97F6: A9 00       ;
CODE_2997F8:    STA $0C                     ; $29:97F8: 85 0C       ;
CODE_2997FA:    STA $0A                     ; $29:97FA: 85 0A       ;
CODE_2997FC:    LDA $01                     ; $29:97FC: A5 01       ;
CODE_2997FE:    CLC                         ; $29:97FE: 18          ;
CODE_2997FF:    ADC $03                     ; $29:97FF: 65 03       ;
CODE_299801:    CLC                         ; $29:9801: 18          ;
CODE_299802:    ADC $05                     ; $29:9802: 65 05       ;
CODE_299804:    STA $0B                     ; $29:9804: 85 0B       ;
CODE_299806:    PHA                         ; $29:9806: 48          ;
CODE_299807:    LDA $5F,x                   ; $29:9807: B5 5F       ;
CODE_299809:    SEC                         ; $29:9809: 38          ;
CODE_29980A:    SBC $0B                     ; $29:980A: E5 0B       ;
CODE_29980C:    STA $0B                     ; $29:980C: 85 0B       ;
CODE_29980E:    PLA                         ; $29:980E: 68          ;
CODE_29980F:    BPL CODE_299813             ; $29:980F: 10 02       ;
CODE_299811:    DEC $0A                     ; $29:9811: C6 0A       ;
CODE_299813:    LDA $44,x                   ; $29:9813: B5 44       ;
CODE_299815:    SBC $0A                     ; $29:9815: E5 0A       ;
CODE_299817:    STA $0A                     ; $29:9817: 85 0A       ;
CODE_299819:    LDY #$00                    ; $29:9819: A0 00       ;
CODE_29981B:    LDA $0B                     ; $29:981B: A5 0B       ;
CODE_29981D:    CMP $0210                   ; $29:981D: CD 10 02    ;
CODE_299820:    LDA $0A                     ; $29:9820: A5 0A       ;
CODE_299822:    SBC $12                     ; $29:9822: E5 12       ;
CODE_299824:    BEQ CODE_29982D             ; $29:9824: F0 07       ;
CODE_299826:    LDA.w DATA_21C653,y                 ; $29:9826: B9 53 C6    ;
CODE_299829:    ORA $0C                     ; $29:9829: 05 0C       ;
CODE_29982B:    STA $0C                     ; $29:982B: 85 0C       ;
CODE_29982D:    STX $0E                     ; $29:982D: 86 0E       ;
CODE_29982F:    LDX.w DATA_21C64D,y                 ; $29:982F: BE 4D C6    ;
CODE_299832:    LDA $00,x                   ; $29:9832: B5 00       ;
CODE_299834:    PHA                         ; $29:9834: 48          ;
CODE_299835:    CLC                         ; $29:9835: 18          ;
CODE_299836:    ADC $0B                     ; $29:9836: 65 0B       ;
CODE_299838:    STA $0B                     ; $29:9838: 85 0B       ;
CODE_29983A:    LDX $0E                     ; $29:983A: A6 0E       ;
CODE_29983C:    STY $0F                     ; $29:983C: 84 0F       ;
CODE_29983E:    LDY #$00                    ; $29:983E: A0 00       ;
CODE_299840:    PLA                         ; $29:9840: 68          ;
CODE_299841:    BPL CODE_299844             ; $29:9841: 10 01       ;
CODE_299843:    DEY                         ; $29:9843: 88          ;
CODE_299844:    TYA                         ; $29:9844: 98          ;
CODE_299845:    ADC $0A                     ; $29:9845: 65 0A       ;
CODE_299847:    STA $0A                     ; $29:9847: 85 0A       ;
CODE_299849:    LDY $0F                     ; $29:9849: A4 0F       ;
CODE_29984B:    INY                         ; $29:984B: C8          ;
CODE_29984C:    CPY #$07                    ; $29:984C: C0 07       ;
CODE_29984E:    BNE CODE_29981B             ; $29:984E: D0 CB       ;
CODE_299850:    LDA $5F,x                   ; $29:9850: B5 5F       ;
CODE_299852:    SEC                         ; $29:9852: 38          ;
CODE_299853:    SBC $0210                   ; $29:9853: ED 10 02    ;
CODE_299856:    STA $0E                     ; $29:9856: 85 0E       ;
CODE_299858:    LDA $71,x                   ; $29:9858: B5 71       ;
CODE_29985A:    SEC                         ; $29:985A: 38          ;
CODE_29985B:    SBC $0543                   ; $29:985B: ED 43 05    ;
CODE_29985E:    STA $0D                     ; $29:985E: 85 0D       ;
CODE_299860:    LDA $56,x                   ; $29:9860: B5 56       ;
CODE_299862:    ADC #$00                    ; $29:9862: 69 00       ;
CODE_299864:    CMP #$01                    ; $29:9864: C9 01       ;
CODE_299866:    BNE CODE_29986E             ; $29:9866: D0 06       ;
CODE_299868:    LDA $0D                     ; $29:9868: A5 0D       ;
CODE_29986A:    CMP #$E0                    ; $29:986A: C9 E0       ;
CODE_29986C:    BCC CODE_299872             ; $29:986C: 90 04       ;
CODE_29986E:    LDA #$FF                    ; $29:986E: A9 FF       ;
CODE_299870:    STA $0C                     ; $29:9870: 85 0C       ;
CODE_299872:    RTS                         ; $29:9872: 60          ;

CODE_299873:    LDA $71,x                   ; $29:9873: B5 71       ;
CODE_299875:    BNE CODE_299879             ; $29:9875: D0 02       ;
CODE_299877:    DEC $56,x                   ; $29:9877: D6 56       ;
CODE_299879:    DEC $71,x                   ; $29:9879: D6 71       ;
CODE_29987B:    LDY $44,x                   ; $29:987B: B4 44       ;
CODE_29987D:    LDA $07E3                   ; $29:987D: AD E3 07    ;
CODE_299880:    AND.w DATA_21C661,y                 ; $29:9880: 39 61 C6    ;
CODE_299883:    BEQ CODE_299888             ; $29:9883: F0 03       ;
CODE_299885:    INC $0669,x                 ; $29:9885: FE 69 06    ;
CODE_299888:    RTL                         ; $29:9888: 6B          ;

CODE_299889:    JSL CODE_279BC3             ; $29:9889: 22 C3 9B 27 ;
CODE_29988D:    JSR CODE_299994             ; $29:988D: 20 94 99    ;
CODE_299890:    LDA $9C                     ; $29:9890: A5 9C       ;
CODE_299892:    BNE CODE_299888             ; $29:9892: D0 F4       ;
CODE_299894:    LDA $68,x                   ; $29:9894: B5 68       ;
CODE_299896:    BEQ CODE_2998AC             ; $29:9896: F0 14       ;
CODE_299898:    LDA $0520,x                 ; $29:9898: BD 20 05    ;
CODE_29989B:    BNE CODE_2998AC             ; $29:989B: D0 0F       ;
CODE_29989D:    LDY #$04                    ; $29:989D: A0 04       ;
CODE_29989F:    LDA $0661,y                 ; $29:989F: B9 61 06    ;
CODE_2998A2:    BEQ CODE_2998A7             ; $29:98A2: F0 03       ;
CODE_2998A4:    DEY                         ; $29:98A4: 88          ;
CODE_2998A5:    BNE CODE_29989F             ; $29:98A5: D0 F8       ;
CODE_2998A7:    JSR CODE_299959             ; $29:98A7: 20 59 99    ;
CODE_2998AA:    DEC $68,x                   ; $29:98AA: D6 68       ;
CODE_2998AC:    LDY $0518,x                 ; $29:98AC: BC 18 05    ;
CODE_2998AF:    LDA.w DATA_21C669,y                 ; $29:98AF: B9 69 C6    ;
CODE_2998B2:    STA $9E,x                   ; $29:98B2: 95 9E       ;
CODE_2998B4:    JSL CODE_27A7D8             ; $29:98B4: 22 D8 A7 27 ;
CODE_2998B8:    JSL CODE_27A312             ; $29:98B8: 22 12 A3 27 ;
CODE_2998BC:    BCC CODE_299928             ; $29:98BC: 90 6A       ;
CODE_2998BE:    LDA $82                     ; $29:98BE: A5 82       ;
CODE_2998C0:    CLC                         ; $29:98C0: 18          ;
CODE_2998C1:    ADC #$18                    ; $29:98C1: 69 18       ;
CODE_2998C3:    CMP $83,x                   ; $29:98C3: D5 83       ;
CODE_2998C5:    BCS CODE_2998ED                     ; $29:98C5: B0 26       ;
CODE_2998C7:    LDA $9D                     ; $29:98C7: A5 9D       ;
CODE_2998C9:    BMI CODE_2998EC             ; $29:98C9: 30 21       ;
CODE_2998CB:    LDA $71,x                   ; $29:98CB: B5 71       ;
CODE_2998CD:    SEC                         ; $29:98CD: 38          ;
CODE_2998CE:    SBC #$1F                    ; $29:98CE: E9 1F       ;
CODE_2998D0:    STA $70                     ; $29:98D0: 85 70       ;
CODE_2998D2:    LDA $56,x                   ; $29:98D2: B5 56       ;
CODE_2998D4:    SBC #$00                    ; $29:98D4: E9 00       ;
CODE_2998D6:    STA $55                     ; $29:98D6: 85 55       ;
CODE_2998D8:    LDY #$00                    ; $29:98D8: A0 00       ;
CODE_2998DA:    STY $A6                     ; $29:98DA: 84 A6       ;
CODE_2998DC:    LDA $074D                   ; $29:98DC: AD 4D 07    ;
CODE_2998DF:    BPL CODE_2998E2             ; $29:98DF: 10 01       ;
CODE_2998E1:    DEY                         ; $29:98E1: 88          ;
CODE_2998E2:    CLC                         ; $29:98E2: 18          ;
CODE_2998E3:    ADC $5E                     ; $29:98E3: 65 5E       ;
CODE_2998E5:    STA $5E                     ; $29:98E5: 85 5E       ;
CODE_2998E7:    TYA                         ; $29:98E7: 98          ;
CODE_2998E8:    ADC $43                     ; $29:98E8: 65 43       ;
CODE_2998EA:    STA $43                     ; $29:98EA: 85 43       ;
CODE_2998EC:    RTL                         ; $29:98EC: 6B          ;

CODE_2998ED:    LDA #$E8                    ; $29:98ED: A9 E8       ;
CODE_2998EF:    LDY $BB                     ; $29:98EF: A4 BB       ;
CODE_2998F1:    BEQ CODE_2998F8             ; $29:98F1: F0 05       ;
CODE_2998F3:    LDY $056F                   ; $29:98F3: AC 6F 05    ;
CODE_2998F6:    BEQ CODE_2998FA             ; $29:98F6: F0 02       ;
CODE_2998F8:    LDA #$F8                    ; $29:98F8: A9 F8       ;
CODE_2998FA:    CLC                         ; $29:98FA: 18          ;
CODE_2998FB:    ADC $82                     ; $29:98FB: 65 82       ;
CODE_2998FD:    CMP $83,x                   ; $29:98FD: D5 83       ;
CODE_2998FF:    BCC CODE_299912             ; $29:98FF: 90 11       ;
CODE_299901:    LDA $9D                     ; $29:9901: A5 9D       ;
CODE_299903:    BPL CODE_299911             ; $29:9903: 10 0C       ;
CODE_299905:    LDA #$01                    ; $29:9905: A9 01       ;
CODE_299907:    STA $1200                   ; $29:9907: 8D 00 12    ;
CODE_29990A:    LDA #$10                    ; $29:990A: A9 10       ;
CODE_29990C:    STA $9D                     ; $29:990C: 85 9D       ;
CODE_29990E:    JSR CODE_29992B             ; $29:990E: 20 2B 99    ;
CODE_299911:    RTL                         ; $29:9911: 6B          ;

CODE_299912:    JSL CODE_27A837             ; $29:9912: 22 37 A8 27 ;
CODE_299916:    INY                         ; $29:9916: C8          ;
CODE_299917:    LDA $17                     ; $29:9917: A5 17       ;
CODE_299919:    AND #$03                    ; $29:9919: 29 03       ;
CODE_29991B:    STA $00                     ; $29:991B: 85 00       ;
CODE_29991D:    LDA #$00                    ; $29:991D: A9 00       ;
CODE_29991F:    CPY $00                     ; $29:991F: C4 00       ;
CODE_299921:    BNE CODE_299926             ; $29:9921: D0 03       ;
CODE_299923:    LDA.w DATA_219928,y                 ; $29:9923: B9 28 99    ;
CODE_299926:    STA $8B                     ; $29:9926: 85 8B       ;
CODE_299928:    RTL                         ; $29:9928: 6B          ;

DATA_299929:        db $04,$FC

CODE_29992B:    LDA $0669,x                 ; $29:992B: BD 69 06    ;
CODE_29992E:    BNE CODE_299958             ; $29:992E: D0 28       ;
CODE_299930:    LDY #$05                    ; $29:9930: A0 05       ;
CODE_299932:    JSR CODE_299959             ; $29:9932: 20 59 99    ;
CODE_299935:    LDA $0671,x                 ; $29:9935: BD 71 06    ;
CODE_299938:    CMP #$94                    ; $29:9938: C9 94       ;
CODE_29993A:    BNE CODE_299940             ; $29:993A: D0 04       ;
CODE_29993C:    LDA #$02                    ; $29:993C: A9 02       ;
CODE_29993E:    STA $68,x                   ; $29:993E: 95 68       ;
CODE_299940:    LDA #$40                    ; $29:9940: A9 40       ;
CODE_299942:    STA $1CF3                   ; $29:9942: 8D F3 1C    ;
CODE_299945:    LDA #$0A                    ; $29:9945: A9 0A       ;
CODE_299947:    STA $0518,x                 ; $29:9947: 9D 18 05    ;
CODE_29994A:    INC $0669,x                 ; $29:994A: FE 69 06    ;
CODE_29994D:    LDY $44,x                   ; $29:994D: B4 44       ;
CODE_29994F:    LDA $07E3                   ; $29:994F: AD E3 07    ;
CODE_299952:    ORA.w DATA_21C661,y                 ; $29:9952: 19 61 C6    ;
CODE_299955:    STA $07E3                   ; $29:9955: 8D E3 07    ;
CODE_299958:    RTS                         ; $29:9958: 60          ;

CODE_299959:    LDA #$01                    ; $29:9959: A9 01       ;
CODE_29995B:    STA $0661,y                 ; $29:995B: 99 61 06    ;
CODE_29995E:    LDA $5F,x                   ; $29:995E: B5 5F       ;
CODE_299960:    CLC                         ; $29:9960: 18          ;
CODE_299961:    ADC #$08                    ; $29:9961: 69 08       ;
CODE_299963:    STA $005F,y                 ; $29:9963: 99 5F 00    ;
CODE_299966:    LDA $44,x                   ; $29:9966: B5 44       ;
CODE_299968:    ADC #$00                    ; $29:9968: 69 00       ;
CODE_29996A:    STA $0044,y                 ; $29:996A: 99 44 00    ;
CODE_29996D:    LDA $71,x                   ; $29:996D: B5 71       ;
CODE_29996F:    STA $0071,y                 ; $29:996F: 99 71 00    ;
CODE_299972:    LDA $56,x                   ; $29:9972: B5 56       ;
CODE_299974:    STA $0056,y                 ; $29:9974: 99 56 00    ;
CODE_299977:    LDA $0671,x                 ; $29:9977: BD 71 06    ;
CODE_29997A:    TAX                         ; $29:997A: AA          ;
CODE_29997B:    LDA.w DATA_21C5DF,x                 ; $29:997B: BD DF C5    ;
CODE_29997E:    STA $0671,y                 ; $29:997E: 99 71 06    ;
CODE_299981:    LDA.w DATA_21C5E7-1,x                   ; $29:9981: BD E6 C5    ;
CODE_299984:    STA $0586                   ; $29:9984: 8D 86 05    ;
CODE_299987:    LDA #$01                    ; $29:9987: A9 01       ;
CODE_299989:    STA $057D                   ; $29:9989: 8D 7D 05    ;
CODE_29998C:    LDX $9B                     ; $29:998C: A6 9B       ;
CODE_29998E:    LDA #$50                    ; $29:998E: A9 50       ;
CODE_299990:    STA $0520,x                 ; $29:9990: 9D 20 05    ;
CODE_299993:    RTS                         ; $29:9993: 60          ;

CODE_299994:    JSL CODE_279DF8             ; $29:9994: 22 F8 9D 27 ;
CODE_299998:    LDX $9B                     ; $29:9998: A6 9B       ;
CODE_29999A:    REP #$10                    ; $29:999A: C2 10       ;
CODE_29999C:    LDY $C6,x                   ; $29:999C: B4 C6       ;
CODE_29999E:    STY $0A                     ; $29:999E: 84 0A       ;
CODE_2999A0:    LDA $07                     ; $29:99A0: A5 07       ;
CODE_2999A2:    STA $0E                     ; $29:99A2: 85 0E       ;
CODE_2999A4:    LDA $0669,x                 ; $29:99A4: BD 69 06    ;
CODE_2999A7:    LDX #$0006                  ; $29:99A7: A2 06 00    ;
CODE_2999AA:    CMP #$00                    ; $29:99AA: C9 00       ;
CODE_2999AC:    BEQ CODE_2999AF             ; $29:99AC: F0 01       ;
CODE_2999AE:    INX                         ; $29:99AE: E8          ;
CODE_2999AF:    ASL $0E                     ; $29:99AF: 06 0E       ;
CODE_2999B1:    BCS CODE_2999D7                     ; $29:99B1: B0 24       ;
CODE_2999B3:    LDA $04                     ; $29:99B3: A5 04       ;
CODE_2999B5:    STA $0F                     ; $29:99B5: 85 0F       ;
CODE_2999B7:    LDA $00                     ; $29:99B7: A5 00       ;
CODE_2999B9:    LSR $0F                     ; $29:99B9: 46 0F       ;
CODE_2999BB:    BCS CODE_2999C6                     ; $29:99BB: B0 09       ;
CODE_2999BD:    STA $0801,y                 ; $29:99BD: 99 01 08    ;
CODE_2999C0:    CLC                         ; $29:99C0: 18          ;
CODE_2999C1:    ADC #$08                    ; $29:99C1: 69 08       ;
CODE_2999C3:    STA $0805,y                 ; $29:99C3: 99 05 08    ;
CODE_2999C6:    LDA $00                     ; $29:99C6: A5 00       ;
CODE_2999C8:    LSR $0F                     ; $29:99C8: 46 0F       ;
CODE_2999CA:    BCS CODE_2999D7                     ; $29:99CA: B0 0B       ;
CODE_2999CC:    ADC #$10                    ; $29:99CC: 69 10       ;
CODE_2999CE:    STA $0809,y                 ; $29:99CE: 99 09 08    ;
CODE_2999D1:    CLC                         ; $29:99D1: 18          ;
CODE_2999D2:    ADC #$08                    ; $29:99D2: 69 08       ;
CODE_2999D4:    STA $080D,y                 ; $29:99D4: 99 0D 08    ;
CODE_2999D7:    LDA.w DATA_21C681,x                 ; $29:99D7: BD 81 C6    ;
CODE_2999DA:    STA $0802,y                 ; $29:99DA: 99 02 08    ;
CODE_2999DD:    INC A                       ; $29:99DD: 1A          ;
CODE_2999DE:    STA $0806,y                 ; $29:99DE: 99 06 08    ;
CODE_2999E1:    LDA.w DATA_21C689,x                 ; $29:99E1: BD 89 C6    ;
CODE_2999E4:    STA $080A,y                 ; $29:99E4: 99 0A 08    ;
CODE_2999E7:    INC A                       ; $29:99E7: 1A          ;
CODE_2999E8:    STA $080E,y                 ; $29:99E8: 99 0E 08    ;
CODE_2999EB:    LDA #$21                    ; $29:99EB: A9 21       ;
CODE_2999ED:    STA $0803,y                 ; $29:99ED: 99 03 08    ;
CODE_2999F0:    STA $0807,y                 ; $29:99F0: 99 07 08    ;
CODE_2999F3:    STA $080B,y                 ; $29:99F3: 99 0B 08    ;
CODE_2999F6:    STA $080F,y                 ; $29:99F6: 99 0F 08    ;
CODE_2999F9:    LDA $01                     ; $29:99F9: A5 01       ;
CODE_2999FB:    STA $0800,y                 ; $29:99FB: 99 00 08    ;
CODE_2999FE:    STA $0804,y                 ; $29:99FE: 99 04 08    ;
CODE_299A01:    STA $0808,y                 ; $29:9A01: 99 08 08    ;
CODE_299A04:    STA $080C,y                 ; $29:9A04: 99 0C 08    ;
CODE_299A07:    CLC                         ; $29:9A07: 18          ;
CODE_299A08:    ADC #$08                    ; $29:9A08: 69 08       ;
CODE_299A0A:    STA $01                     ; $29:9A0A: 85 01       ;
CODE_299A0C:    REP #$20                    ; $29:9A0C: C2 20       ;
CODE_299A0E:    PHY                         ; $29:9A0E: 5A          ;
CODE_299A0F:    TYA                         ; $29:9A0F: 98          ;
CODE_299A10:    LSR A                       ; $29:9A10: 4A          ;
CODE_299A11:    LSR A                       ; $29:9A11: 4A          ;
CODE_299A12:    TAY                         ; $29:9A12: A8          ;
CODE_299A13:    LDA #$0000                  ; $29:9A13: A9 00 00    ;
CODE_299A16:    STA $0A20,y                 ; $29:9A16: 99 20 0A    ;
CODE_299A19:    STA $0A22,y                 ; $29:9A19: 99 22 0A    ;
CODE_299A1C:    PLY                         ; $29:9A1C: 7A          ;
CODE_299A1D:    TYA                         ; $29:9A1D: 98          ;
CODE_299A1E:    CLC                         ; $29:9A1E: 18          ;
CODE_299A1F:    ADC #$0010                  ; $29:9A1F: 69 10 00    ;
CODE_299A22:    TAY                         ; $29:9A22: A8          ;
CODE_299A23:    SEP #$20                    ; $29:9A23: E2 20       ;
CODE_299A25:    DEX                         ; $29:9A25: CA          ;
CODE_299A26:    DEX                         ; $29:9A26: CA          ;
CODE_299A27:    BMI CODE_299A48             ; $29:9A27: 30 1F       ;
CODE_299A29:    CPX #$0002                  ; $29:9A29: E0 02 00    ;
CODE_299A2C:    BCC CODE_299A31             ; $29:9A2C: 90 03       ;
CODE_299A2E:    JMP CODE_2999AF             ; $29:9A2E: 4C AF 99    ;

CODE_299A31:    SEP #$10                    ; $29:9A31: E2 10       ;
CODE_299A33:    PHX                         ; $29:9A33: DA          ;
CODE_299A34:    LDX $9B                     ; $29:9A34: A6 9B       ;
CODE_299A36:    JSL CODE_27A19D             ; $29:9A36: 22 9D A1 27 ;
CODE_299A3A:    PLX                         ; $29:9A3A: FA          ;
CODE_299A3B:    LDY $9B                     ; $29:9A3B: A4 9B       ;
CODE_299A3D:    REP #$30                    ; $29:9A3D: C2 30       ;
CODE_299A3F:    LDA $00C6,y                 ; $29:9A3F: B9 C6 00    ;
CODE_299A42:    TAY                         ; $29:9A42: A8          ;
CODE_299A43:    SEP #$20                    ; $29:9A43: E2 20       ;
CODE_299A45:    JMP CODE_2999AF             ; $29:9A45: 4C AF 99    ;

CODE_299A48:    SEP #$10                    ; $29:9A48: E2 10       ;
CODE_299A4A:    LDX $9B                     ; $29:9A4A: A6 9B       ;
CODE_299A4C:    LDA $0520,x                 ; $29:9A4C: BD 20 05    ;
CODE_299A4F:    BEQ CODE_299A95             ; $29:9A4F: F0 44       ;
CODE_299A51:    REP #$10                    ; $29:9A51: C2 10       ;
CODE_299A53:    LDY $0A                     ; $29:9A53: A4 0A       ;
CODE_299A55:    LDX #$0000                  ; $29:9A55: A2 00 00    ;
CODE_299A58:    REP #$20                    ; $29:9A58: C2 20       ;
CODE_299A5A:    LDA $0810,y                 ; $29:9A5A: B9 10 08    ;
CODE_299A5D:    STA $0830,x                 ; $29:9A5D: 9D 30 08    ;
CODE_299A60:    INY                         ; $29:9A60: C8          ;
CODE_299A61:    INY                         ; $29:9A61: C8          ;
CODE_299A62:    INX                         ; $29:9A62: E8          ;
CODE_299A63:    INX                         ; $29:9A63: E8          ;
CODE_299A64:    CPX #$0010                  ; $29:9A64: E0 10 00    ;
CODE_299A67:    BCS CODE_299A76                     ; $29:9A67: B0 0D       ;
CODE_299A69:    CPX #$0008                  ; $29:9A69: E0 08 00    ;
CODE_299A6C:    BNE CODE_299A58             ; $29:9A6C: D0 EA       ;
CODE_299A6E:    TYA                         ; $29:9A6E: 98          ;
CODE_299A6F:    CLC                         ; $29:9A6F: 18          ;
CODE_299A70:    ADC #$0008                  ; $29:9A70: 69 08 00    ;
CODE_299A73:    TAY                         ; $29:9A73: A8          ;
CODE_299A74:    BNE CODE_299A58             ; $29:9A74: D0 E2       ;
CODE_299A76:    LDA #$0000                  ; $29:9A76: A9 00 00    ;
CODE_299A79:    STA $0A2C                   ; $29:9A79: 8D 2C 0A    ;
CODE_299A7C:    STA $0A2D                   ; $29:9A7C: 8D 2D 0A    ;
CODE_299A7F:    STA $0A2E                   ; $29:9A7F: 8D 2E 0A    ;
CODE_299A82:    STA $0A2F                   ; $29:9A82: 8D 2F 0A    ;
CODE_299A85:    SEP #$20                    ; $29:9A85: E2 20       ;
CODE_299A87:    LDA #$F0                    ; $29:9A87: A9 F0       ;
CODE_299A89:    STA $07FD,y                 ; $29:9A89: 99 FD 07    ;
CODE_299A8C:    STA $07F9,y                 ; $29:9A8C: 99 F9 07    ;
CODE_299A8F:    STA $080D,y                 ; $29:9A8F: 99 0D 08    ;
CODE_299A92:    STA $0809,y                 ; $29:9A92: 99 09 08    ;
CODE_299A95:    SEP #$10                    ; $29:9A95: E2 10       ;
CODE_299A97:    LDX $9B                     ; $29:9A97: A6 9B       ;
CODE_299A99:    RTS                         ; $29:9A99: 60          ;

CODE_299A9A:    JSR CODE_299A9E             ; $29:9A9A: 20 9E 9A    ;
CODE_299A9D:    RTL                         ; $29:9A9D: 6B          ;

CODE_299A9E:    JSR CODE_29A100             ; $29:9A9E: 20 00 A1    ;
CODE_299AA1:    LDA $057C                   ; $29:9AA1: AD 7C 05    ;
CODE_299AA4:    BEQ CODE_299AD4             ; $29:9AA4: F0 2E       ;
CODE_299AA6:    LDX #$06                    ; $29:9AA6: A2 06       ;
CODE_299AA8:    LDA $0661,x                 ; $29:9AA8: BD 61 06    ;
CODE_299AAB:    BEQ CODE_299ABB             ; $29:9AAB: F0 0E       ;
CODE_299AAD:    INX                         ; $29:9AAD: E8          ;
CODE_299AAE:    LDA $0661,x                 ; $29:9AAE: BD 61 06    ;
CODE_299AB1:    BEQ CODE_299ABB             ; $29:9AB1: F0 08       ;
CODE_299AB3:    LDA #$00                    ; $29:9AB3: A9 00       ;
CODE_299AB5:    STA $057C                   ; $29:9AB5: 8D 7C 05    ;
CODE_299AB8:    JMP CODE_299AD4             ; $29:9AB8: 4C D4 9A    ;

CODE_299ABB:    LDY #$06                    ; $29:9ABB: A0 06       ;
CODE_299ABD:    LDA $057D                   ; $29:9ABD: AD 7D 05    ;
CODE_299AC0:    AND #$7F                    ; $29:9AC0: 29 7F       ;
CODE_299AC2:    CMP #$02                    ; $29:9AC2: C9 02       ;
CODE_299AC4:    BMI CODE_299AC8             ; $29:9AC4: 30 02       ;
CODE_299AC6:    LDY #$1B                    ; $29:9AC6: A0 1B       ;
CODE_299AC8:    TYA                         ; $29:9AC8: 98          ;
CODE_299AC9:    STA $0671,x                 ; $29:9AC9: 9D 71 06    ;
CODE_299ACC:    LDA #$01                    ; $29:9ACC: A9 01       ;
CODE_299ACE:    STA $0661,x                 ; $29:9ACE: 9D 61 06    ;
CODE_299AD1:    JMP CODE_299ADF             ; $29:9AD1: 4C DF 9A    ;

CODE_299AD4:    LDA $0425                   ; $29:9AD4: AD 25 04    ;
CODE_299AD7:    BEQ CODE_299ADC             ; $29:9AD7: F0 03       ;
CODE_299AD9:    JMP CODE_299DCD             ; $29:9AD9: 4C CD 9D    ;

CODE_299ADC:    JMP CODE_299AE0             ; $29:9ADC: 4C E0 9A    ;

CODE_299ADF:    RTS                         ; $29:9ADF: 60          ;

CODE_299AE0:    LDY $25                     ; $29:9AE0: A4 25       ;
CODE_299AE2:    LDA $0210                   ; $29:9AE2: AD 10 02    ;
CODE_299AE5:    CLC                         ; $29:9AE5: 18          ;
CODE_299AE6:    ADC.w DATA_21C699,y                 ; $29:9AE6: 79 99 C6    ;
CODE_299AE9:    AND #$F0                    ; $29:9AE9: 29 F0       ;
CODE_299AEB:    STA $05                     ; $29:9AEB: 85 05       ;
CODE_299AED:    LDA $12                     ; $29:9AED: A5 12       ;
CODE_299AEF:    ADC.w DATA_21C69B,y                 ; $29:9AEF: 79 9B C6    ;
CODE_299AF2:    STA $06                     ; $29:9AF2: 85 06       ;
CODE_299AF4:    CMP $22                     ; $29:9AF4: C5 22       ;
CODE_299AF6:    BEQ CODE_299AFD             ; $29:9AF6: F0 05       ;
CODE_299AF8:    BCC CODE_299AFD             ; $29:9AF8: 90 03       ;
CODE_299AFA:    JMP CODE_299C42             ; $29:9AFA: 4C 42 9C    ;

CODE_299AFD:    LDX $06                     ; $29:9AFD: A6 06       ;
CODE_299AFF:    LDA $1B00,x                 ; $29:9AFF: BD 00 1B    ;
CODE_299B02:    BMI CODE_299B1D             ; $29:9B02: 30 19       ;
CODE_299B04:    STA $01                     ; $29:9B04: 85 01       ;
CODE_299B06:    TAX                         ; $29:9B06: AA          ;
CODE_299B07:    ASL A                       ; $29:9B07: 0A          ;
CODE_299B08:    CLC                         ; $29:9B08: 18          ;
CODE_299B09:    ADC $01                     ; $29:9B09: 65 01       ;
CODE_299B0B:    TAY                         ; $29:9B0B: A8          ;
CODE_299B0C:    DEY                         ; $29:9B0C: 88          ;
CODE_299B0D:    DEX                         ; $29:9B0D: CA          ;
CODE_299B0E:    INX                         ; $29:9B0E: E8          ;
CODE_299B0F:    INY                         ; $29:9B0F: C8          ;
CODE_299B10:    INY                         ; $29:9B10: C8          ;
CODE_299B11:    INY                         ; $29:9B11: C8          ;
CODE_299B12:    LDA $1B40,y                 ; $29:9B12: B9 40 1B    ;
CODE_299B15:    LSR A                       ; $29:9B15: 4A          ;
CODE_299B16:    LSR A                       ; $29:9B16: 4A          ;
CODE_299B17:    LSR A                       ; $29:9B17: 4A          ;
CODE_299B18:    LSR A                       ; $29:9B18: 4A          ;
CODE_299B19:    CMP $06                     ; $29:9B19: C5 06       ;
CODE_299B1B:    BEQ CODE_299B1E             ; $29:9B1B: F0 01       ;
CODE_299B1D:    RTS                         ; $29:9B1D: 60          ;

CODE_299B1E:    LDA $1B3F,y                 ; $29:9B1E: B9 3F 1B    ;
CODE_299B21:    CMP #$FF                    ; $29:9B21: C9 FF       ;
CODE_299B23:    BEQ CODE_299B1D             ; $29:9B23: F0 F8       ;
CODE_299B25:    LDA $1B10,x                 ; $29:9B25: BD 10 1B    ;
CODE_299B28:    CMP #$00                    ; $29:9B28: C9 00       ;
CODE_299B2A:    BMI CODE_299B0E             ; $29:9B2A: 30 E2       ;
CODE_299B2C:    LDA $1B40,y                 ; $29:9B2C: B9 40 1B    ;
CODE_299B2F:    ASL A                       ; $29:9B2F: 0A          ;
CODE_299B30:    ASL A                       ; $29:9B30: 0A          ;
CODE_299B31:    ASL A                       ; $29:9B31: 0A          ;
CODE_299B32:    ASL A                       ; $29:9B32: 0A          ;
CODE_299B33:    CMP $05                     ; $29:9B33: C5 05       ;
CODE_299B35:    BNE CODE_299B0E             ; $29:9B35: D0 D7       ;
CODE_299B37:    STX $01                     ; $29:9B37: 86 01       ;
CODE_299B39:    STA $00                     ; $29:9B39: 85 00       ;
CODE_299B3B:    LDA $1B3F,y                 ; $29:9B3B: B9 3F 1B    ;
CODE_299B3E:    CMP #$D5                    ; $29:9B3E: C9 D5       ;
CODE_299B40:    BNE CODE_299B47             ; $29:9B40: D0 05       ;
CODE_299B42:    INC $05FD                   ; $29:9B42: EE FD 05    ;
CODE_299B45:    BNE CODE_299B6B             ; $29:9B45: D0 24       ;
CODE_299B47:    CMP #$D4                    ; $29:9B47: C9 D4       ;
CODE_299B49:    BNE CODE_299B60             ; $29:9B49: D0 15       ;
CODE_299B4B:    LDA $1B41,y                 ; $29:9B4B: B9 41 1B    ;
CODE_299B4E:    PHA                         ; $29:9B4E: 48          ;
CODE_299B4F:    AND #$01                    ; $29:9B4F: 29 01       ;
CODE_299B51:    TAX                         ; $29:9B51: AA          ;
CODE_299B52:    INC A                       ; $29:9B52: 1A          ;
CODE_299B53:    STA $7E3964                 ; $29:9B53: 8F 64 39 7E ;
CODE_299B57:    PLA                         ; $29:9B57: 68          ;
CODE_299B58:    AND #$7F                    ; $29:9B58: 29 7F       ;
CODE_299B5A:    STA $7E3965                 ; $29:9B5A: 8F 65 39 7E ;
CODE_299B5E:    BPL CODE_299B6B             ; $29:9B5E: 10 0B       ;
CODE_299B60:    CMP #$D3                    ; $29:9B60: C9 D3       ;
CODE_299B62:    BNE CODE_299B78             ; $29:9B62: D0 14       ;
CODE_299B64:    TYA                         ; $29:9B64: 98          ;
CODE_299B65:    PHA                         ; $29:9B65: 48          ;
CODE_299B66:    JSR CODE_299C43             ; $29:9B66: 20 43 9C    ;
CODE_299B69:    PLA                         ; $29:9B69: 68          ;
CODE_299B6A:    TAY                         ; $29:9B6A: A8          ;
CODE_299B6B:    LDX $01                     ; $29:9B6B: A6 01       ;
CODE_299B6D:    LDA $1B10,x                 ; $29:9B6D: BD 10 1B    ;
CODE_299B70:    ORA #$80                    ; $29:9B70: 09 80       ;
CODE_299B72:    STA $1B10,x                 ; $29:9B72: 9D 10 1B    ;
CODE_299B75:    JMP CODE_299B0E             ; $29:9B75: 4C 0E 9B    ;

CODE_299B78:    LDA $1B3F,y                 ; $29:9B78: B9 3F 1B    ;
CODE_299B7B:    CMP #$D6                    ; $29:9B7B: C9 D6       ;
CODE_299B7D:    BNE CODE_299B89             ; $29:9B7D: D0 0A       ;
CODE_299B7F:    LDA $1B41,y                 ; $29:9B7F: B9 41 1B    ;
CODE_299B82:    STA $7E3963                 ; $29:9B82: 8F 63 39 7E ;
CODE_299B86:    JMP CODE_299B6B             ; $29:9B86: 4C 6B 9B    ;

CODE_299B89:    CMP #$B4                    ; $29:9B89: C9 B4       ;
CODE_299B8B:    BCC CODE_299BB7             ; $29:9B8B: 90 2A       ;
CODE_299B8D:    CMP #$D1                    ; $29:9B8D: C9 D1       ;
CODE_299B8F:    BNE CODE_299B97             ; $29:9B8F: D0 06       ;
CODE_299B91:    JSR CODE_299C8B             ; $29:9B91: 20 8B 9C    ;
CODE_299B94:    JMP CODE_299B0E             ; $29:9B94: 4C 0E 9B    ;

CODE_299B97:    CMP #$D2                    ; $29:9B97: C9 D2       ;
CODE_299B99:    BNE CODE_299BA1             ; $29:9B99: D0 06       ;
CODE_299B9B:    JSR CODE_299C8B             ; $29:9B9B: 20 8B 9C    ;
CODE_299B9E:    JMP CODE_299B0E             ; $29:9B9E: 4C 0E 9B    ;

CODE_299BA1:    CMP #$BC                    ; $29:9BA1: C9 BC       ;
CODE_299BA3:    BCC CODE_299BB0             ; $29:9BA3: 90 0B       ;
CODE_299BA5:    SBC #$BC                    ; $29:9BA5: E9 BC       ;
CODE_299BA7:    CLC                         ; $29:9BA7: 18          ;
CODE_299BA8:    ADC #$01                    ; $29:9BA8: 69 01       ;
CODE_299BAA:    JSR CODE_299D2D             ; $29:9BAA: 20 2D 9D    ;
CODE_299BAD:    JMP CODE_299B0E             ; $29:9BAD: 4C 0E 9B    ;

CODE_299BB0:    SEC                         ; $29:9BB0: 38          ;
CODE_299BB1:    SBC #$B3                    ; $29:9BB1: E9 B3       ;
CODE_299BB3:    STA $0566                   ; $29:9BB3: 8D 66 05    ;
CODE_299BB6:    RTS                         ; $29:9BB6: 60          ;

CODE_299BB7:    CMP #$41                    ; $29:9BB7: C9 41       ;
CODE_299BB9:    BNE CODE_299BBF             ; $29:9BB9: D0 04       ;
CODE_299BBB:    LDX #$06                    ; $29:9BBB: A2 06       ;
CODE_299BBD:    BNE CODE_299BCC             ; $29:9BBD: D0 0D       ;
CODE_299BBF:    LDX #$04                    ; $29:9BBF: A2 04       ;
CODE_299BC1:    LDA $0661,x                 ; $29:9BC1: BD 61 06    ;
CODE_299BC4:    BEQ CODE_299BCC             ; $29:9BC4: F0 06       ;
CODE_299BC6:    DEX                         ; $29:9BC6: CA          ;
CODE_299BC7:    BPL CODE_299BC1             ; $29:9BC7: 10 F8       ;
CODE_299BC9:    JMP CODE_299C42             ; $29:9BC9: 4C 42 9C    ;

CODE_299BCC:    LDA $00                     ; $29:9BCC: A5 00       ;
CODE_299BCE:    STA $5F,x                   ; $29:9BCE: 95 5F       ;
CODE_299BD0:    STA $7FC532,x               ; $29:9BD0: 9F 32 C5 7F ;
CODE_299BD4:    STA $7FC53A,x               ; $29:9BD4: 9F 3A C5 7F ;
CODE_299BD8:    LDA $06                     ; $29:9BD8: A5 06       ;
CODE_299BDA:    STA $44,x                   ; $29:9BDA: 95 44       ;
CODE_299BDC:    STA $7FC542,x               ; $29:9BDC: 9F 42 C5 7F ;
CODE_299BE0:    STA $7FC54A,x               ; $29:9BE0: 9F 4A C5 7F ;
CODE_299BE4:    INY                         ; $29:9BE4: C8          ;
CODE_299BE5:    LDA $1B40,y                 ; $29:9BE5: B9 40 1B    ;
CODE_299BE8:    AND #$F0                    ; $29:9BE8: 29 F0       ;
CODE_299BEA:    LSR A                       ; $29:9BEA: 4A          ;
CODE_299BEB:    LSR A                       ; $29:9BEB: 4A          ;
CODE_299BEC:    LSR A                       ; $29:9BEC: 4A          ;
CODE_299BED:    LSR A                       ; $29:9BED: 4A          ;
CODE_299BEE:    STA $56,x                   ; $29:9BEE: 95 56       ;
CODE_299BF0:    STA $7FC562,x               ; $29:9BF0: 9F 62 C5 7F ;
CODE_299BF4:    STA $7FC56A,x               ; $29:9BF4: 9F 6A C5 7F ;
CODE_299BF8:    LDA $1B40,y                 ; $29:9BF8: B9 40 1B    ;
CODE_299BFB:    AND #$0F                    ; $29:9BFB: 29 0F       ;
CODE_299BFD:    ASL A                       ; $29:9BFD: 0A          ;
CODE_299BFE:    ASL A                       ; $29:9BFE: 0A          ;
CODE_299BFF:    ASL A                       ; $29:9BFF: 0A          ;
CODE_299C00:    ASL A                       ; $29:9C00: 0A          ;
CODE_299C01:    STA $71,x                   ; $29:9C01: 95 71       ;
CODE_299C03:    STA $7FC552,x               ; $29:9C03: 9F 52 C5 7F ;
CODE_299C07:    STA $7FC55A,x               ; $29:9C07: 9F 5A C5 7F ;
CODE_299C0B:    DEY                         ; $29:9C0B: 88          ;
CODE_299C0C:    DEY                         ; $29:9C0C: 88          ;
CODE_299C0D:    LDA $1B40,y                 ; $29:9C0D: B9 40 1B    ;
CODE_299C10:    STA $0671,x                 ; $29:9C10: 9D 71 06    ;
CODE_299C13:    LDY $01                     ; $29:9C13: A4 01       ;
CODE_299C15:    LDA #$04                    ; $29:9C15: A9 04       ;
CODE_299C17:    STA $7FC572,x               ; $29:9C17: 9F 72 C5 7F ;
CODE_299C1B:    LDA #$00                    ; $29:9C1B: A9 00       ;
CODE_299C1D:    STA $7FC57A,x               ; $29:9C1D: 9F 7A C5 7F ;
CODE_299C21:    LDA $0671,x                 ; $29:9C21: BD 71 06    ;
CODE_299C24:    CMP #$43                    ; $29:9C24: C9 43       ;
CODE_299C26:    BNE CODE_299C33             ; $29:9C26: D0 0B       ;
CODE_299C28:    LDA $02BF                   ; $29:9C28: AD BF 02    ;
CODE_299C2B:    CMP #$01                    ; $29:9C2B: C9 01       ;
CODE_299C2D:    BNE CODE_299C33             ; $29:9C2D: D0 04       ;
CODE_299C2F:    LDA #$B0                    ; $29:9C2F: A9 B0       ;
CODE_299C31:    STA $71,x                   ; $29:9C31: 95 71       ;
CODE_299C33:    LDA $1B10,y                 ; $29:9C33: B9 10 1B    ;
CODE_299C36:    ORA #$80                    ; $29:9C36: 09 80       ;
CODE_299C38:    STA $1B10,y                 ; $29:9C38: 99 10 1B    ;
CODE_299C3B:    TYA                         ; $29:9C3B: 98          ;
CODE_299C3C:    STA $0659,x                 ; $29:9C3C: 9D 59 06    ;
CODE_299C3F:    INC $0661,x                 ; $29:9C3F: FE 61 06    ;
CODE_299C42:    RTS                         ; $29:9C42: 60          ;

CODE_299C43:    LDA $1B41,y                 ; $29:9C43: B9 41 1B    ;
CODE_299C46:    CMP #$60                    ; $29:9C46: C9 60       ;
CODE_299C48:    BNE CODE_299C50             ; $29:9C48: D0 06       ;
CODE_299C4A:    LDA #$03                    ; $29:9C4A: A9 03       ;
CODE_299C4C:    STA $0427                   ; $29:9C4C: 8D 27 04    ;
CODE_299C4F:    RTS                         ; $29:9C4F: 60          ;

CODE_299C50:    PHA                         ; $29:9C50: 48          ;
CODE_299C51:    LDY #$14                    ; $29:9C51: A0 14       ;
CODE_299C53:    LDA #$00                    ; $29:9C53: A9 00       ;
CODE_299C55:    STA $19FF,y                 ; $29:9C55: 99 FF 19    ;
CODE_299C58:    DEY                         ; $29:9C58: 88          ;
CODE_299C59:    BNE CODE_299C55             ; $29:9C59: D0 FA       ;
CODE_299C5B:    PLA                         ; $29:9C5B: 68          ;
CODE_299C5C:    PHA                         ; $29:9C5C: 48          ;
CODE_299C5D:    AND #$0F                    ; $29:9C5D: 29 0F       ;
CODE_299C5F:    TAY                         ; $29:9C5F: A8          ;
CODE_299C60:    PLA                         ; $29:9C60: 68          ;
CODE_299C61:    LSR A                       ; $29:9C61: 4A          ;
CODE_299C62:    LSR A                       ; $29:9C62: 4A          ;
CODE_299C63:    LSR A                       ; $29:9C63: 4A          ;
CODE_299C64:    LSR A                       ; $29:9C64: 4A          ;
CODE_299C65:    STA $1A01                   ; $29:9C65: 8D 01 1A    ;
CODE_299C68:    CMP #$03                    ; $29:9C68: C9 03       ;
CODE_299C6A:    BCS CODE_299C7E                     ; $29:9C6A: B0 12       ;
CODE_299C6C:    CMP #$01                    ; $29:9C6C: C9 01       ;
CODE_299C6E:    BNE CODE_299C74             ; $29:9C6E: D0 04       ;
CODE_299C70:    TYA                         ; $29:9C70: 98          ;
CODE_299C71:    ORA #$10                    ; $29:9C71: 09 10       ;
CODE_299C73:    TAY                         ; $29:9C73: A8          ;
CODE_299C74:    PHX                         ; $29:9C74: DA          ;
CODE_299C75:    TYX                         ; $29:9C75: BB          ;
CODE_299C76:    LDA.l DATA_27AA5E,x                 ; $29:9C76: BF 5E AA 27 ;
CODE_299C7A:    STA $1A03                   ; $29:9C7A: 8D 03 1A    ;
CODE_299C7D:    PLX                         ; $29:9C7D: FA          ;
CODE_299C7E:    STY $1A02                   ; $29:9C7E: 8C 02 1A    ;
CODE_299C81:    LDA $0216                   ; $29:9C81: AD 16 02    ;
CODE_299C84:    STA $1A0D                   ; $29:9C84: 8D 0D 1A    ;
CODE_299C87:    INC $0580                   ; $29:9C87: EE 80 05    ;
CODE_299C8A:    RTS                         ; $29:9C8A: 60          ;

CODE_299C8B:    STA $1CEF                   ; $29:9C8B: 8D EF 1C    ;
CODE_299C8E:    TXA                         ; $29:9C8E: 8A          ;
CODE_299C8F:    PHA                         ; $29:9C8F: 48          ;
CODE_299C90:    TYA                         ; $29:9C90: 98          ;
CODE_299C91:    PHA                         ; $29:9C91: 48          ;
CODE_299C92:    LDA $1B41,y                 ; $29:9C92: B9 41 1B    ;
CODE_299C95:    AND #$F0                    ; $29:9C95: 29 F0       ;
CODE_299C97:    LSR A                       ; $29:9C97: 4A          ;
CODE_299C98:    LSR A                       ; $29:9C98: 4A          ;
CODE_299C99:    LSR A                       ; $29:9C99: 4A          ;
CODE_299C9A:    LSR A                       ; $29:9C9A: 4A          ;
CODE_299C9B:    STA $08                     ; $29:9C9B: 85 08       ;
CODE_299C9D:    LDA $1B41,y                 ; $29:9C9D: B9 41 1B    ;
CODE_299CA0:    AND #$0F                    ; $29:9CA0: 29 0F       ;
CODE_299CA2:    ASL A                       ; $29:9CA2: 0A          ;
CODE_299CA3:    ASL A                       ; $29:9CA3: 0A          ;
CODE_299CA4:    ASL A                       ; $29:9CA4: 0A          ;
CODE_299CA5:    ASL A                       ; $29:9CA5: 0A          ;
CODE_299CA6:    STA $09                     ; $29:9CA6: 85 09       ;
CODE_299CA8:    LDA $06                     ; $29:9CA8: A5 06       ;
CODE_299CAA:    STA $0A                     ; $29:9CAA: 85 0A       ;
CODE_299CAC:    LDA $00                     ; $29:9CAC: A5 00       ;
CODE_299CAE:    STA $0B                     ; $29:9CAE: 85 0B       ;
CODE_299CB0:    LDX $01                     ; $29:9CB0: A6 01       ;
CODE_299CB2:    LDA $1B10,x                 ; $29:9CB2: BD 10 1B    ;
CODE_299CB5:    ORA #$80                    ; $29:9CB5: 09 80       ;
CODE_299CB7:    STA $1B10,x                 ; $29:9CB7: 9D 10 1B    ;
CODE_299CBA:    LDA #$02                    ; $29:9CBA: A9 02       ;
CODE_299CBC:    STA $0C                     ; $29:9CBC: 85 0C       ;
CODE_299CBE:    LDX #$04                    ; $29:9CBE: A2 04       ;
CODE_299CC0:    LDA $0661,x                 ; $29:9CC0: BD 61 06    ;
CODE_299CC3:    BEQ CODE_299CCB             ; $29:9CC3: F0 06       ;
CODE_299CC5:    DEX                         ; $29:9CC5: CA          ;
CODE_299CC6:    BPL CODE_299CC0             ; $29:9CC6: 10 F8       ;
CODE_299CC8:    JMP CODE_299D24             ; $29:9CC8: 4C 24 9D    ;

CODE_299CCB:    JSL CODE_279C96             ; $29:9CCB: 22 96 9C 27 ;
CODE_299CCF:    LDA $08                     ; $29:9CCF: A5 08       ;
CODE_299CD1:    STA $56,x                   ; $29:9CD1: 95 56       ;
CODE_299CD3:    LDA $09                     ; $29:9CD3: A5 09       ;
CODE_299CD5:    STA $71,x                   ; $29:9CD5: 95 71       ;
CODE_299CD7:    LDA $0B                     ; $29:9CD7: A5 0B       ;
CODE_299CD9:    STA $5F,x                   ; $29:9CD9: 95 5F       ;
CODE_299CDB:    LDA $0A                     ; $29:9CDB: A5 0A       ;
CODE_299CDD:    STA $44,x                   ; $29:9CDD: 95 44       ;
CODE_299CDF:    JSL CODE_27A837             ; $29:9CDF: 22 37 A8 27 ;
CODE_299CE3:    LDA.w DATA_21C69D,y                 ; $29:9CE3: B9 9D C6    ;
CODE_299CE6:    STA $0679,x                 ; $29:9CE6: 9D 79 06    ;
CODE_299CE9:    LDA $0B                     ; $29:9CE9: A5 0B       ;
CODE_299CEB:    CLC                         ; $29:9CEB: 18          ;
CODE_299CEC:    ADC.w DATA_21C69F,y                 ; $29:9CEC: 79 9F C6    ;
CODE_299CEF:    STA $0B                     ; $29:9CEF: 85 0B       ;
CODE_299CF1:    LDA $0A                     ; $29:9CF1: A5 0A       ;
CODE_299CF3:    ADC.w DATA_21C6A1,y                 ; $29:9CF3: 79 A1 C6    ;
CODE_299CF6:    STA $0A                     ; $29:9CF6: 85 0A       ;
CODE_299CF8:    LDA $1CEF                   ; $29:9CF8: AD EF 1C    ;
CODE_299CFB:    CMP #$D1                    ; $29:9CFB: C9 D1       ;
CODE_299CFD:    BEQ CODE_299D12             ; $29:9CFD: F0 13       ;
CODE_299CFF:    LDY $0C                     ; $29:9CFF: A4 0C       ;
CODE_299D01:    LDA.w DATA_21C6A3,y                 ; $29:9D01: B9 A3 C6    ;
CODE_299D04:    STA $9E,x                   ; $29:9D04: 95 9E       ;
CODE_299D06:    LDA.w DATA_21C6A6,y                 ; $29:9D06: B9 A6 C6    ;
CODE_299D09:    STA $4D,x                   ; $29:9D09: 95 4D       ;
CODE_299D0B:    INC $06B7,x                 ; $29:9D0B: FE B7 06    ;
CODE_299D0E:    LDA #$88                    ; $29:9D0E: A9 88       ;
CODE_299D10:    BNE CODE_299D14             ; $29:9D10: D0 02       ;
CODE_299D12:    LDA #$6E                    ; $29:9D12: A9 6E       ;
CODE_299D14:    STA $0671,x                 ; $29:9D14: 9D 71 06    ;
CODE_299D17:    LDA #$02                    ; $29:9D17: A9 02       ;
CODE_299D19:    STA $0661,x                 ; $29:9D19: 9D 61 06    ;
CODE_299D1C:    LDA #$02                    ; $29:9D1C: A9 02       ;
CODE_299D1E:    STA $1FE9,x                 ; $29:9D1E: 9D E9 1F    ;
CODE_299D21:    STA $1FF1,x                 ; $29:9D21: 9D F1 1F    ;
CODE_299D24:    DEC $0C                     ; $29:9D24: C6 0C       ;
CODE_299D26:    BPL CODE_299CBE             ; $29:9D26: 10 96       ;
CODE_299D28:    PLA                         ; $29:9D28: 68          ;
CODE_299D29:    TAY                         ; $29:9D29: A8          ;
CODE_299D2A:    PLA                         ; $29:9D2A: 68          ;
CODE_299D2B:    TAX                         ; $29:9D2B: AA          ;
CODE_299D2C:    RTS                         ; $29:9D2C: 60          ;

CODE_299D2D:    STA $0F                     ; $29:9D2D: 85 0F       ;
CODE_299D2F:    TXA                         ; $29:9D2F: 8A          ;
CODE_299D30:    PHA                         ; $29:9D30: 48          ;
CODE_299D31:    LDA $1A1C                   ; $29:9D31: AD 1C 1A    ;
CODE_299D34:    PHA                         ; $29:9D34: 48          ;
CODE_299D35:    LDA $1A44                   ; $29:9D35: AD 44 1A    ;
CODE_299D38:    PHA                         ; $29:9D38: 48          ;
CODE_299D39:    LDX #$06                    ; $29:9D39: A2 06       ;
CODE_299D3B:    LDA $1A15,x                 ; $29:9D3B: BD 15 1A    ;
CODE_299D3E:    STA $1A16,x                 ; $29:9D3E: 9D 16 1A    ;
CODE_299D41:    LDA $1A1D,x                 ; $29:9D41: BD 1D 1A    ;
CODE_299D44:    STA $1A1E,x                 ; $29:9D44: 9D 1E 1A    ;
CODE_299D47:    LDA $1A25,x                 ; $29:9D47: BD 25 1A    ;
CODE_299D4A:    STA $1A26,x                 ; $29:9D4A: 9D 26 1A    ;
CODE_299D4D:    LDA $1A2D,x                 ; $29:9D4D: BD 2D 1A    ;
CODE_299D50:    STA $1A2E,x                 ; $29:9D50: 9D 2E 1A    ;
CODE_299D53:    LDA $1A35,x                 ; $29:9D53: BD 35 1A    ;
CODE_299D56:    STA $1A36,x                 ; $29:9D56: 9D 36 1A    ;
CODE_299D59:    LDA $1A3D,x                 ; $29:9D59: BD 3D 1A    ;
CODE_299D5C:    STA $1A3E,x                 ; $29:9D5C: 9D 3E 1A    ;
CODE_299D5F:    LDA $06E3,x                 ; $29:9D5F: BD E3 06    ;
CODE_299D62:    STA $06E4,x                 ; $29:9D62: 9D E4 06    ;
CODE_299D65:    LDA $06DB,x                 ; $29:9D65: BD DB 06    ;
CODE_299D68:    STA $06DC,x                 ; $29:9D68: 9D DC 06    ;
CODE_299D6B:    LDA $1A57,x                 ; $29:9D6B: BD 57 1A    ;
CODE_299D6E:    STA $1A58,x                 ; $29:9D6E: 9D 58 1A    ;
CODE_299D71:    DEX                         ; $29:9D71: CA          ;
CODE_299D72:    BPL CODE_299D3B             ; $29:9D72: 10 C7       ;
CODE_299D74:    PLA                         ; $29:9D74: 68          ;
CODE_299D75:    TAX                         ; $29:9D75: AA          ;
CODE_299D76:    PLA                         ; $29:9D76: 68          ;
CODE_299D77:    BEQ CODE_299D81             ; $29:9D77: F0 08       ;
CODE_299D79:    LDA $1B10,x                 ; $29:9D79: BD 10 1B    ;
CODE_299D7C:    AND #$7F                    ; $29:9D7C: 29 7F       ;
CODE_299D7E:    STA $1B10,x                 ; $29:9D7E: 9D 10 1B    ;
CODE_299D81:    LDA $1B41,y                 ; $29:9D81: B9 41 1B    ;
CODE_299D84:    AND #$F0                    ; $29:9D84: 29 F0       ;
CODE_299D86:    LSR A                       ; $29:9D86: 4A          ;
CODE_299D87:    LSR A                       ; $29:9D87: 4A          ;
CODE_299D88:    LSR A                       ; $29:9D88: 4A          ;
CODE_299D89:    LSR A                       ; $29:9D89: 4A          ;
CODE_299D8A:    STA $1A1D                   ; $29:9D8A: 8D 1D 1A    ;
CODE_299D8D:    LDA $1B41,y                 ; $29:9D8D: B9 41 1B    ;
CODE_299D90:    AND #$0F                    ; $29:9D90: 29 0F       ;
CODE_299D92:    ASL A                       ; $29:9D92: 0A          ;
CODE_299D93:    ASL A                       ; $29:9D93: 0A          ;
CODE_299D94:    ASL A                       ; $29:9D94: 0A          ;
CODE_299D95:    ASL A                       ; $29:9D95: 0A          ;
CODE_299D96:    STA $1A25                   ; $29:9D96: 8D 25 1A    ;
CODE_299D99:    LDA $06                     ; $29:9D99: A5 06       ;
CODE_299D9B:    STA $1A2D                   ; $29:9D9B: 8D 2D 1A    ;
CODE_299D9E:    LDA $00                     ; $29:9D9E: A5 00       ;
CODE_299DA0:    STA $1A35                   ; $29:9DA0: 8D 35 1A    ;
CODE_299DA3:    LDA #$00                    ; $29:9DA3: A9 00       ;
CODE_299DA5:    STA $06DB                   ; $29:9DA5: 8D DB 06    ;
CODE_299DA8:    STA $1A57                   ; $29:9DA8: 8D 57 1A    ;
CODE_299DAB:    LDA #$60                    ; $29:9DAB: A9 60       ;
CODE_299DAD:    LDX $0F                     ; $29:9DAD: A6 0F       ;
CODE_299DAF:    CPX #$04                    ; $29:9DAF: E0 04       ;
CODE_299DB1:    BNE CODE_299DB5             ; $29:9DB1: D0 02       ;
CODE_299DB3:    LDA #$00                    ; $29:9DB3: A9 00       ;
CODE_299DB5:    STA $06E3                   ; $29:9DB5: 8D E3 06    ;
CODE_299DB8:    LDX $01                     ; $29:9DB8: A6 01       ;
CODE_299DBA:    STX $1A3D                   ; $29:9DBA: 8E 3D 1A    ;
CODE_299DBD:    LDA $1B10,x                 ; $29:9DBD: BD 10 1B    ;
CODE_299DC0:    ORA #$80                    ; $29:9DC0: 09 80       ;
CODE_299DC2:    STA $1B10,x                 ; $29:9DC2: 9D 10 1B    ;
CODE_299DC5:    LDA $0F                     ; $29:9DC5: A5 0F       ;
CODE_299DC7:    STA $1A15                   ; $29:9DC7: 8D 15 1A    ;
CODE_299DCA:    PLA                         ; $29:9DCA: 68          ;
CODE_299DCB:    TAX                         ; $29:9DCB: AA          ;
CODE_299DCC:    RTS                         ; $29:9DCC: 60          ;

CODE_299DCD:    LDY $25                     ; $29:9DCD: A4 25       ;
CODE_299DCF:    LDA $0543                   ; $29:9DCF: AD 43 05    ;
CODE_299DD2:    CLC                         ; $29:9DD2: 18          ;
CODE_299DD3:    ADC.w DATA_21C6A9,y                 ; $29:9DD3: 79 A9 C6    ;
CODE_299DD6:    AND #$F0                    ; $29:9DD6: 29 F0       ;
CODE_299DD8:    STA $05                     ; $29:9DD8: 85 05       ;
CODE_299DDA:    LDA $0542                   ; $29:9DDA: AD 42 05    ;
CODE_299DDD:    ADC.w DATA_21C6AB,y                 ; $29:9DDD: 79 AB C6    ;
CODE_299DE0:    STA $06                     ; $29:9DE0: 85 06       ;
CODE_299DE2:    LDY $22                     ; $29:9DE2: A4 22       ;
CODE_299DE4:    CMP.w DATA_21CEED+1,y                   ; $29:9DE4: D9 EE CE    ;
CODE_299DE7:    BCC CODE_299DF5             ; $29:9DE7: 90 0C       ;
CODE_299DE9:    BNE CODE_299DF2             ; $29:9DE9: D0 07       ;
CODE_299DEB:    LDA $05                     ; $29:9DEB: A5 05       ;
CODE_299DED:    CMP.w DATA_21CEFD+1,y                   ; $29:9DED: D9 FE CE    ;
CODE_299DF0:    BCC CODE_299DF5             ; $29:9DF0: 90 03       ;
CODE_299DF2:    JMP CODE_299E7A             ; $29:9DF2: 4C 7A 9E    ;

CODE_299DF5:    LDX $06                     ; $29:9DF5: A6 06       ;
CODE_299DF7:    LDA $1B00,x                 ; $29:9DF7: BD 00 1B    ;
CODE_299DFA:    BMI CODE_299E12             ; $29:9DFA: 30 16       ;
CODE_299DFC:    STA $01                     ; $29:9DFC: 85 01       ;
CODE_299DFE:    TAX                         ; $29:9DFE: AA          ;
CODE_299DFF:    ASL A                       ; $29:9DFF: 0A          ;
CODE_299E00:    CLC                         ; $29:9E00: 18          ;
CODE_299E01:    ADC $01                     ; $29:9E01: 65 01       ;
CODE_299E03:    TAY                         ; $29:9E03: A8          ;
CODE_299E04:    INY                         ; $29:9E04: C8          ;
CODE_299E05:    INY                         ; $29:9E05: C8          ;
CODE_299E06:    INY                         ; $29:9E06: C8          ;
CODE_299E07:    LDA $1B40,y                 ; $29:9E07: B9 40 1B    ;
CODE_299E0A:    LSR A                       ; $29:9E0A: 4A          ;
CODE_299E0B:    LSR A                       ; $29:9E0B: 4A          ;
CODE_299E0C:    LSR A                       ; $29:9E0C: 4A          ;
CODE_299E0D:    LSR A                       ; $29:9E0D: 4A          ;
CODE_299E0E:    CMP $06                     ; $29:9E0E: C5 06       ;
CODE_299E10:    BEQ CODE_299E13             ; $29:9E10: F0 01       ;
CODE_299E12:    RTS                         ; $29:9E12: 60          ;

CODE_299E13:    LDA $1B3E,y                 ; $29:9E13: B9 3E 1B    ;
CODE_299E16:    CMP #$FF                    ; $29:9E16: C9 FF       ;
CODE_299E18:    BEQ CODE_299E12             ; $29:9E18: F0 F8       ;
CODE_299E1A:    LDA $1B10,x                 ; $29:9E1A: BD 10 1B    ;
CODE_299E1D:    INX                         ; $29:9E1D: E8          ;
CODE_299E1E:    CMP #$00                    ; $29:9E1E: C9 00       ;
CODE_299E20:    BMI CODE_299E04             ; $29:9E20: 30 E2       ;
CODE_299E22:    LDA $1B40,y                 ; $29:9E22: B9 40 1B    ;
CODE_299E25:    ASL A                       ; $29:9E25: 0A          ;
CODE_299E26:    ASL A                       ; $29:9E26: 0A          ;
CODE_299E27:    ASL A                       ; $29:9E27: 0A          ;
CODE_299E28:    ASL A                       ; $29:9E28: 0A          ;
CODE_299E29:    CMP $05                     ; $29:9E29: C5 05       ;
CODE_299E2B:    BNE CODE_299E04             ; $29:9E2B: D0 D7       ;
CODE_299E2D:    DEX                         ; $29:9E2D: CA          ;
CODE_299E2E:    STX $01                     ; $29:9E2E: 86 01       ;
CODE_299E30:    STA $00                     ; $29:9E30: 85 00       ;
CODE_299E32:    LDA $1B3F,y                 ; $29:9E32: B9 3F 1B    ;
CODE_299E35:    CMP #$B4                    ; $29:9E35: C9 B4       ;
CODE_299E37:    BCC CODE_299E3F             ; $29:9E37: 90 06       ;
CODE_299E39:    SBC #$B3                    ; $29:9E39: E9 B3       ;
CODE_299E3B:    STA $0566                   ; $29:9E3B: 8D 66 05    ;
CODE_299E3E:    RTS                         ; $29:9E3E: 60          ;

CODE_299E3F:    LDX #$04                    ; $29:9E3F: A2 04       ;
CODE_299E41:    LDA $0661,x                 ; $29:9E41: BD 61 06    ;
CODE_299E44:    BEQ CODE_299E4C             ; $29:9E44: F0 06       ;
CODE_299E46:    DEX                         ; $29:9E46: CA          ;
CODE_299E47:    BPL CODE_299E41             ; $29:9E47: 10 F8       ;
CODE_299E49:    JMP CODE_299E7A             ; $29:9E49: 4C 7A 9E    ;

CODE_299E4C:    LDA $00                     ; $29:9E4C: A5 00       ;
CODE_299E4E:    STA $71,x                   ; $29:9E4E: 95 71       ;
CODE_299E50:    LDA $06                     ; $29:9E50: A5 06       ;
CODE_299E52:    STA $56,x                   ; $29:9E52: 95 56       ;
CODE_299E54:    LDA #$00                    ; $29:9E54: A9 00       ;
CODE_299E56:    STA $44,x                   ; $29:9E56: 95 44       ;
CODE_299E58:    DEY                         ; $29:9E58: 88          ;
CODE_299E59:    LDA $1B40,y                 ; $29:9E59: B9 40 1B    ;
CODE_299E5C:    ASL A                       ; $29:9E5C: 0A          ;
CODE_299E5D:    ASL A                       ; $29:9E5D: 0A          ;
CODE_299E5E:    ASL A                       ; $29:9E5E: 0A          ;
CODE_299E5F:    ASL A                       ; $29:9E5F: 0A          ;
CODE_299E60:    STA $5F,x                   ; $29:9E60: 95 5F       ;
CODE_299E62:    DEY                         ; $29:9E62: 88          ;
CODE_299E63:    LDA $1B40,y                 ; $29:9E63: B9 40 1B    ;
CODE_299E66:    STA $0671,x                 ; $29:9E66: 9D 71 06    ;
CODE_299E69:    LDY $01                     ; $29:9E69: A4 01       ;
CODE_299E6B:    LDA $1B10,y                 ; $29:9E6B: B9 10 1B    ;
CODE_299E6E:    ORA #$80                    ; $29:9E6E: 09 80       ;
CODE_299E70:    STA $1B10,y                 ; $29:9E70: 99 10 1B    ;
CODE_299E73:    TYA                         ; $29:9E73: 98          ;
CODE_299E74:    STA $0659,x                 ; $29:9E74: 9D 59 06    ;
CODE_299E77:    INC $0661,x                 ; $29:9E77: FE 61 06    ;
CODE_299E7A:    RTS                         ; $29:9E7A: 60          ;

CODE_299E7B:    JSR CODE_299E7F             ; $29:9E7B: 20 7F 9E    ;
CODE_299E7E:    RTL                         ; $29:9E7E: 6B          ;

CODE_299E7F:    LDA $0566                   ; $29:9E7F: AD 66 05    ;
CODE_299E82:    BEQ CODE_299EA4             ; $29:9E82: F0 20       ;
CODE_299E84:    JSL CODE_20FB1F         ; $29:9E84: 22 1F FB 20 ; ExecutePtrShort

PNTR_299E88:        dw CODE_299E7A
                    dw CODE_299FD1
                    dw CODE_29A02A
                    dw CODE_299E9A
                    dw CODE_29A084
                    dw CODE_299F24
                    dw CODE_299EA5
                    dw CODE_299F7E
                    dw CODE_299E9F
  
CODE_299E9A:    LDA #$00                ; $29:9E9A: A9 00       ;
CODE_299E9C:    STA $1CF0                   ; $29:9E9C: 8D F0 1C    ;
CODE_299E9F:    LDA #$00                    ; $29:9E9F: A9 00       ;
CODE_299EA1:    STA $0566                   ; $29:9EA1: 8D 66 05    ;
CODE_299EA4:    RTS                         ; $29:9EA4: 60          ;

CODE_299EA5:    LDA $0565                   ; $29:9EA5: AD 65 05    ;
CODE_299EA8:    AND #$7F                    ; $29:9EA8: 29 7F       ;
CODE_299EAA:    BNE CODE_299F23             ; $29:9EAA: D0 77       ;
CODE_299EAC:    LDA #$36                    ; $29:9EAC: A9 36       ;
CODE_299EAE:    JSR CODE_29A0DD             ; $29:9EAE: 20 DD A0    ;
CODE_299EB1:    CPY #$03                    ; $29:9EB1: C0 03       ;
CODE_299EB3:    BCS CODE_299F23                     ; $29:9EB3: B0 6E       ;
CODE_299EB5:    JSR CODE_29A0D0             ; $29:9EB5: 20 D0 A0    ;
CODE_299EB8:    LDA #$00                    ; $29:9EB8: A9 00       ;
CODE_299EBA:    STA $0671,x                 ; $29:9EBA: 9D 71 06    ;
CODE_299EBD:    LDA $0783,x                 ; $29:9EBD: BD 83 07    ;
CODE_299EC0:    AND #$7F                    ; $29:9EC0: 29 7F       ;
CODE_299EC2:    CLC                         ; $29:9EC2: 18          ;
CODE_299EC3:    ADC #$40                    ; $29:9EC3: 69 40       ;
CODE_299EC5:    CLC                         ; $29:9EC5: 18          ;
CODE_299EC6:    ADC $0543                   ; $29:9EC6: 6D 43 05    ;
CODE_299EC9:    AND #$E0                    ; $29:9EC9: 29 E0       ;
CODE_299ECB:    ORA #$0F                    ; $29:9ECB: 09 0F       ;
CODE_299ECD:    STA $00                     ; $29:9ECD: 85 00       ;
CODE_299ECF:    PHP                         ; $29:9ECF: 08          ;
CODE_299ED0:    LDY #$04                    ; $29:9ED0: A0 04       ;
CODE_299ED2:    LDA $0661,y                 ; $29:9ED2: B9 61 06    ;
CODE_299ED5:    BEQ CODE_299EF2             ; $29:9ED5: F0 1B       ;
CODE_299ED7:    LDA $0671,y                 ; $29:9ED7: B9 71 06    ;
CODE_299EDA:    CMP #$36                    ; $29:9EDA: C9 36       ;
CODE_299EDC:    BNE CODE_299EF2             ; $29:9EDC: D0 14       ;
CODE_299EDE:    LDA $0071,y                 ; $29:9EDE: B9 71 00    ;
CODE_299EE1:    CMP $00                     ; $29:9EE1: C5 00       ;
CODE_299EE3:    BNE CODE_299EF2             ; $29:9EE3: D0 0D       ;
CODE_299EE5:    LDA $0783,x                 ; $29:9EE5: BD 83 07    ;
CODE_299EE8:    CLC                         ; $29:9EE8: 18          ;
CODE_299EE9:    ADC #$30                    ; $29:9EE9: 69 30       ;
CODE_299EEB:    STA $0783,x                 ; $29:9EEB: 9D 83 07    ;
CODE_299EEE:    PLP                         ; $29:9EEE: 28          ;
CODE_299EEF:    JMP CODE_299EC0             ; $29:9EEF: 4C C0 9E    ;

CODE_299EF2:    DEY                         ; $29:9EF2: 88          ;
CODE_299EF3:    BPL CODE_299ED2             ; $29:9EF3: 10 DD       ;
CODE_299EF5:    LDA $00                     ; $29:9EF5: A5 00       ;
CODE_299EF7:    STA $71,x                   ; $29:9EF7: 95 71       ;
CODE_299EF9:    PLP                         ; $29:9EF9: 28          ;
CODE_299EFA:    LDA $13                     ; $29:9EFA: A5 13       ;
CODE_299EFC:    ADC #$00                    ; $29:9EFC: 69 00       ;
CODE_299EFE:    STA $56,x                   ; $29:9EFE: 95 56       ;
CODE_299F00:    LDA $0210                   ; $29:9F00: AD 10 02    ;
CODE_299F03:    CLC                         ; $29:9F03: 18          ;
CODE_299F04:    ADC #$FF                    ; $29:9F04: 69 FF       ;
CODE_299F06:    STA $5F,x                   ; $29:9F06: 95 5F       ;
CODE_299F08:    LDA $12                     ; $29:9F08: A5 12       ;
CODE_299F0A:    ADC #$00                    ; $29:9F0A: 69 00       ;
CODE_299F0C:    STA $44,x                   ; $29:9F0C: 95 44       ;
CODE_299F0E:    LDA $0783,x                 ; $29:9F0E: BD 83 07    ;
CODE_299F11:    AND #$03                    ; $29:9F11: 29 03       ;
CODE_299F13:    TAY                         ; $29:9F13: A8          ;
CODE_299F14:    LDA.w DATA_21C6AD,y                 ; $29:9F14: B9 AD C6    ;
CODE_299F17:    STA $8C,x                   ; $29:9F17: 95 8C       ;
CODE_299F19:    LDA #$03                    ; $29:9F19: A9 03       ;
CODE_299F1B:    STA $1FE9,x                 ; $29:9F1B: 9D E9 1F    ;
CODE_299F1E:    LDA #$36                    ; $29:9F1E: A9 36       ;
CODE_299F20:    STA $0671,x                 ; $29:9F20: 9D 71 06    ;
CODE_299F23:    RTS                         ; $29:9F23: 60          ;

CODE_299F24:    LDA $0565                   ; $29:9F24: AD 65 05    ;
CODE_299F27:    AND #$03                    ; $29:9F27: 29 03       ;
CODE_299F29:    BNE CODE_299F7D             ; $29:9F29: D0 52       ;
CODE_299F2B:    INC $1CF1                   ; $29:9F2B: EE F1 1C    ;
CODE_299F2E:    LDA $1CF1                   ; $29:9F2E: AD F1 1C    ;
CODE_299F31:    CMP #$C0                    ; $29:9F31: C9 C0       ;
CODE_299F33:    BNE CODE_299F7D             ; $29:9F33: D0 48       ;
CODE_299F35:    LDA #$00                    ; $29:9F35: A9 00       ;
CODE_299F37:    STA $1CF1                   ; $29:9F37: 8D F1 1C    ;
CODE_299F3A:    LDA #$49                    ; $29:9F3A: A9 49       ;
CODE_299F3C:    JSR CODE_29A0DD             ; $29:9F3C: 20 DD A0    ;
CODE_299F3F:    CPY #$02                    ; $29:9F3F: C0 02       ;
CODE_299F41:    BCS CODE_299F7D                     ; $29:9F41: B0 3A       ;
CODE_299F43:    JSR CODE_29A0D0             ; $29:9F43: 20 D0 A0    ;
CODE_299F46:    LDA #$49                    ; $29:9F46: A9 49       ;
CODE_299F48:    STA $0671,x                 ; $29:9F48: 9D 71 06    ;
CODE_299F4B:    LDA $0783,x                 ; $29:9F4B: BD 83 07    ;
CODE_299F4E:    AND #$7F                    ; $29:9F4E: 29 7F       ;
CODE_299F50:    CLC                         ; $29:9F50: 18          ;
CODE_299F51:    ADC #$30                    ; $29:9F51: 69 30       ;
CODE_299F53:    CLC                         ; $29:9F53: 18          ;
CODE_299F54:    ADC $0543                   ; $29:9F54: 6D 43 05    ;
CODE_299F57:    STA $71,x                   ; $29:9F57: 95 71       ;
CODE_299F59:    LDA $13                     ; $29:9F59: A5 13       ;
CODE_299F5B:    ADC #$00                    ; $29:9F5B: 69 00       ;
CODE_299F5D:    STA $56,x                   ; $29:9F5D: 95 56       ;
CODE_299F5F:    LDA $0210                   ; $29:9F5F: AD 10 02    ;
CODE_299F62:    SEC                         ; $29:9F62: 38          ;
CODE_299F63:    SBC #$20                    ; $29:9F63: E9 20       ;
CODE_299F65:    STA $5F,x                   ; $29:9F65: 95 5F       ;
CODE_299F67:    LDA $12                     ; $29:9F67: A5 12       ;
CODE_299F69:    SBC #$00                    ; $29:9F69: E9 00       ;
CODE_299F6B:    STA $44,x                   ; $29:9F6B: 95 44       ;
CODE_299F6D:    LDA $0783,x                 ; $29:9F6D: BD 83 07    ;
CODE_299F70:    AND #$03                    ; $29:9F70: 29 03       ;
CODE_299F72:    TAY                         ; $29:9F72: A8          ;
CODE_299F73:    LDA.w DATA_21C6B1,y                 ; $29:9F73: B9 B1 C6    ;
CODE_299F76:    STA $68,x                   ; $29:9F76: 95 68       ;
CODE_299F78:    LDA.w DATA_21C6B5,y                 ; $29:9F78: B9 B5 C6    ;
CODE_299F7B:    STA $8C,x                   ; $29:9F7B: 95 8C       ;
CODE_299F7D:    RTS                         ; $29:9F7D: 60          ;

CODE_299F7E:    LDY $1CF1                   ; $29:9F7E: AC F1 1C    ;
CODE_299F81:    BEQ CODE_299F91             ; $29:9F81: F0 0E       ;
CODE_299F83:    DEC $1CF1                   ; $29:9F83: CE F1 1C    ;
CODE_299F86:    BNE CODE_299F90             ; $29:9F86: D0 08       ;
CODE_299F88:    INC $0014                   ; $29:9F88: EE 14 00    ;
CODE_299F8B:    LDA #$00                    ; $29:9F8B: A9 00       ;
CODE_299F8D:    STA $0713                   ; $29:9F8D: 8D 13 07    ;
CODE_299F90:    RTS                         ; $29:9F90: 60          ;

CODE_299F91:    LDY #$07                    ; $29:9F91: A0 07       ;
CODE_299F93:    LDA $1FC8,y                 ; $29:9F93: B9 C8 1F    ;
CODE_299F96:    BNE CODE_299FD0             ; $29:9F96: D0 38       ;
CODE_299F98:    CPY #$05                    ; $29:9F98: C0 05       ;
CODE_299F9A:    BCS CODE_299FA8                     ; $29:9F9A: B0 0C       ;
CODE_299F9C:    LDA $0671,y                 ; $29:9F9C: B9 71 06    ;
CODE_299F9F:    CMP #$47                    ; $29:9F9F: C9 47       ;
CODE_299FA1:    BEQ CODE_299FA8             ; $29:9FA1: F0 05       ;
CODE_299FA3:    LDA $0661,y                 ; $29:9FA3: B9 61 06    ;
CODE_299FA6:    BNE CODE_299FD0             ; $29:9FA6: D0 28       ;
CODE_299FA8:    DEY                         ; $29:9FA8: 88          ;
CODE_299FA9:    BPL CODE_299F93             ; $29:9FA9: 10 E8       ;
CODE_299FAB:    LDA #$01                    ; $29:9FAB: A9 01       ;
CODE_299FAD:    STA $0661                   ; $29:9FAD: 8D 61 06    ;
CODE_299FB0:    LDA #$52                    ; $29:9FB0: A9 52       ;
CODE_299FB2:    STA $0671                   ; $29:9FB2: 8D 71 06    ;
CODE_299FB5:    LDA #$01                    ; $29:9FB5: A9 01       ;
CODE_299FB7:    STA $56                     ; $29:9FB7: 85 56       ;
CODE_299FB9:    LDA #$70                    ; $29:9FB9: A9 70       ;
CODE_299FBB:    STA $71                     ; $29:9FBB: 85 71       ;
CODE_299FBD:    LDA #$30                    ; $29:9FBD: A9 30       ;
CODE_299FBF:    LDY $5E                     ; $29:9FBF: A4 5E       ;
CODE_299FC1:    BMI CODE_299FC5             ; $29:9FC1: 30 02       ;
CODE_299FC3:    LDA #$C0                    ; $29:9FC3: A9 C0       ;
CODE_299FC5:    ADC $0210                   ; $29:9FC5: 6D 10 02    ;
CODE_299FC8:    STA $5F                     ; $29:9FC8: 85 5F       ;
CODE_299FCA:    LDA $12                     ; $29:9FCA: A5 12       ;
CODE_299FCC:    ADC #$00                    ; $29:9FCC: 69 00       ;
CODE_299FCE:    STA $44                     ; $29:9FCE: 85 44       ;
CODE_299FD0:    RTS                         ; $29:9FD0: 60          ;

CODE_299FD1:    LDA $0565                   ; $29:9FD1: AD 65 05    ;
CODE_299FD4:    AND #$1F                    ; $29:9FD4: 29 1F       ;
CODE_299FD6:    BNE CODE_29A029             ; $29:9FD6: D0 51       ;
CODE_299FD8:    LDA #$76                    ; $29:9FD8: A9 76       ;
CODE_299FDA:    JSR CODE_29A0DD             ; $29:9FDA: 20 DD A0    ;
CODE_299FDD:    CPY #$03                    ; $29:9FDD: C0 03       ;
CODE_299FDF:    BCS CODE_29A029                     ; $29:9FDF: B0 48       ;
CODE_299FE1:    JSR CODE_29A0D0             ; $29:9FE1: 20 D0 A0    ;
CODE_299FE4:    LDA #$76                    ; $29:9FE4: A9 76       ;
CODE_299FE6:    STA $0671,x                 ; $29:9FE6: 9D 71 06    ;
CODE_299FE9:    LDA $0543                   ; $29:9FE9: AD 43 05    ;
CODE_299FEC:    CLC                         ; $29:9FEC: 18          ;
CODE_299FED:    ADC #$C0                    ; $29:9FED: 69 C0       ;
CODE_299FEF:    STA $71,x                   ; $29:9FEF: 95 71       ;
CODE_299FF1:    LDA $13                     ; $29:9FF1: A5 13       ;
CODE_299FF3:    ADC #$00                    ; $29:9FF3: 69 00       ;
CODE_299FF5:    STA $56,x                   ; $29:9FF5: 95 56       ;
CODE_299FF7:    LDA $0783,x                 ; $29:9FF7: BD 83 07    ;
CODE_299FFA:    PHP                         ; $29:9FFA: 08          ;
CODE_299FFB:    PHP                         ; $29:9FFB: 08          ;
CODE_299FFC:    AND #$03                    ; $29:9FFC: 29 03       ;
CODE_299FFE:    TAY                         ; $29:9FFE: A8          ;
CODE_299FFF:    LDA.w DATA_21C6B9,y                 ; $29:9FFF: B9 B9 C6    ;
CODE_29A002:    PLP                         ; $29:A002: 28          ;
CODE_29A003:    BPL CODE_29A007             ; $29:A003: 10 02       ;
CODE_29A005:    EOR #$FF                    ; $29:A005: 49 FF       ;
CODE_29A007:    CLC                         ; $29:A007: 18          ;
CODE_29A008:    ADC $0210                   ; $29:A008: 6D 10 02    ;
CODE_29A00B:    STA $5F,x                   ; $29:A00B: 95 5F       ;
CODE_29A00D:    LDA $12                     ; $29:A00D: A5 12       ;
CODE_29A00F:    ADC #$00                    ; $29:A00F: 69 00       ;
CODE_29A011:    STA $44,x                   ; $29:A011: 95 44       ;
CODE_29A013:    LDA $0785,x                 ; $29:A013: BD 85 07    ;
CODE_29A016:    AND #$03                    ; $29:A016: 29 03       ;
CODE_29A018:    TAY                         ; $29:A018: A8          ;
CODE_29A019:    LDA.w DATA_21C6BD,y                 ; $29:A019: B9 BD C6    ;
CODE_29A01C:    PLP                         ; $29:A01C: 28          ;
CODE_29A01D:    BPL CODE_29A023             ; $29:A01D: 10 04       ;
CODE_29A01F:    JSL CODE_27A859         ; $29:A01F: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_29A023:    STA $8C,x                   ; $29:A023: 95 8C       ;
CODE_29A025:    LDA #$B8                    ; $29:A025: A9 B8       ;
CODE_29A027:    STA $9E,x                   ; $29:A027: 95 9E       ;
CODE_29A029:    RTS                         ; $29:A029: 60          ;

CODE_29A02A:    INC $1CF1                   ; $29:A02A: EE F1 1C    ;
CODE_29A02D:    LDA $1CF1                   ; $29:A02D: AD F1 1C    ;
CODE_29A030:    CMP #$AA                    ; $29:A030: C9 AA       ;
CODE_29A032:    BNE CODE_29A083             ; $29:A032: D0 4F       ;
CODE_29A034:    LDA #$00                    ; $29:A034: A9 00       ;
CODE_29A036:    STA $1CF1                   ; $29:A036: 8D F1 1C    ;
CODE_29A039:    LDX #$02                    ; $29:A039: A2 02       ;
CODE_29A03B:    JSR CODE_29A0D2             ; $29:A03B: 20 D2 A0    ;
CODE_29A03E:    LDA #$77                    ; $29:A03E: A9 77       ;
CODE_29A040:    STA $0671,x                 ; $29:A040: 9D 71 06    ;
CODE_29A043:    LDA $0783,x                 ; $29:A043: BD 83 07    ;
CODE_29A046:    AND #$01                    ; $29:A046: 29 01       ;
CODE_29A048:    TAY                         ; $29:A048: A8          ;
CODE_29A049:    LDA $0210                   ; $29:A049: AD 10 02    ;
CODE_29A04C:    CLC                         ; $29:A04C: 18          ;
CODE_29A04D:    ADC.w DATA_21C6C1,y                 ; $29:A04D: 79 C1 C6    ;
CODE_29A050:    STA $5F,x                   ; $29:A050: 95 5F       ;
CODE_29A052:    LDA $12                     ; $29:A052: A5 12       ;
CODE_29A054:    ADC #$00                    ; $29:A054: 69 00       ;
CODE_29A056:    STA $44,x                   ; $29:A056: 95 44       ;
CODE_29A058:    LDA.w DATA_21C6C3,y                 ; $29:A058: B9 C3 C6    ;
CODE_29A05B:    LDY $05FC                   ; $29:A05B: AC FC 05    ;
CODE_29A05E:    BEQ CODE_29A064             ; $29:A05E: F0 04       ;
CODE_29A060:    CLC                         ; $29:A060: 18          ;
CODE_29A061:    ADC $1A0E                   ; $29:A061: 6D 0E 1A    ;
CODE_29A064:    STA $8C,x                   ; $29:A064: 95 8C       ;
CODE_29A066:    LDA $0783,x                 ; $29:A066: BD 83 07    ;
CODE_29A069:    AND #$F0                    ; $29:A069: 29 F0       ;
CODE_29A06B:    ADC #$20                    ; $29:A06B: 69 20       ;
CODE_29A06D:    AND #$7F                    ; $29:A06D: 29 7F       ;
CODE_29A06F:    ADC $0543                   ; $29:A06F: 6D 43 05    ;
CODE_29A072:    STA $71,x                   ; $29:A072: 95 71       ;
CODE_29A074:    LDA $0542                   ; $29:A074: AD 42 05    ;
CODE_29A077:    ADC #$00                    ; $29:A077: 69 00       ;
CODE_29A079:    STA $56,x                   ; $29:A079: 95 56       ;
CODE_29A07B:    LDA #$01                    ; $29:A07B: A9 01       ;
CODE_29A07D:    STA $0689,x                 ; $29:A07D: 9D 89 06    ;
CODE_29A080:    STA $06B7,x                 ; $29:A080: 9D B7 06    ;
CODE_29A083:    RTS                         ; $29:A083: 60          ;

CODE_29A084:    LDA $0565                   ; $29:A084: AD 65 05    ;
CODE_29A087:    AND #$3F                    ; $29:A087: 29 3F       ;
CODE_29A089:    BNE CODE_29A0CF             ; $29:A089: D0 44       ;
CODE_29A08B:    LDA #$9F                    ; $29:A08B: A9 9F       ;
CODE_29A08D:    JSR CODE_29A0DD             ; $29:A08D: 20 DD A0    ;
CODE_29A090:    CPY #$04                    ; $29:A090: C0 04       ;
CODE_29A092:    BCS CODE_29A0CF                     ; $29:A092: B0 3B       ;
CODE_29A094:    JSR CODE_29A0D0             ; $29:A094: 20 D0 A0    ;
CODE_29A097:    LDA #$9F                    ; $29:A097: A9 9F       ;
CODE_29A099:    STA $0671,x                 ; $29:A099: 9D 71 06    ;
CODE_29A09C:    LDA $0783,x                 ; $29:A09C: BD 83 07    ;
CODE_29A09F:    AND #$01                    ; $29:A09F: 29 01       ;
CODE_29A0A1:    TAY                         ; $29:A0A1: A8          ;
CODE_29A0A2:    LDA $0210                   ; $29:A0A2: AD 10 02    ;
CODE_29A0A5:    CLC                         ; $29:A0A5: 18          ;
CODE_29A0A6:    ADC.w DATA_21C6C5,y                 ; $29:A0A6: 79 C5 C6    ;
CODE_29A0A9:    STA $5F,x                   ; $29:A0A9: 95 5F       ;
CODE_29A0AB:    LDA $12                     ; $29:A0AB: A5 12       ;
CODE_29A0AD:    ADC #$00                    ; $29:A0AD: 69 00       ;
CODE_29A0AF:    STA $44,x                   ; $29:A0AF: 95 44       ;
CODE_29A0B1:    LDA.w DATA_21C6C7,y                 ; $29:A0B1: B9 C7 C6    ;
CODE_29A0B4:    LDY $0784,x                 ; $29:A0B4: BC 84 07    ;
CODE_29A0B7:    BPL CODE_29A0BA             ; $29:A0B7: 10 01       ;
CODE_29A0B9:    ASL A                       ; $29:A0B9: 0A          ;
CODE_29A0BA:    STA $8C,x                   ; $29:A0BA: 95 8C       ;
CODE_29A0BC:    LDA $0783,x                 ; $29:A0BC: BD 83 07    ;
CODE_29A0BF:    AND #$7F                    ; $29:A0BF: 29 7F       ;
CODE_29A0C1:    CLC                         ; $29:A0C1: 18          ;
CODE_29A0C2:    ADC #$10                    ; $29:A0C2: 69 10       ;
CODE_29A0C4:    ADC $0543                   ; $29:A0C4: 6D 43 05    ;
CODE_29A0C7:    STA $71,x                   ; $29:A0C7: 95 71       ;
CODE_29A0C9:    LDA $13                     ; $29:A0C9: A5 13       ;
CODE_29A0CB:    ADC #$00                    ; $29:A0CB: 69 00       ;
CODE_29A0CD:    STA $56,x                   ; $29:A0CD: 95 56       ;
CODE_29A0CF:    RTS                         ; $29:A0CF: 60          ;

CODE_29A0D0:    LDX #$04                    ; $29:A0D0: A2 04       ;
CODE_29A0D2:    LDA $0661,x                 ; $29:A0D2: BD 61 06    ;
CODE_29A0D5:    BEQ CODE_29A0F6             ; $29:A0D5: F0 1F       ;
CODE_29A0D7:    DEX                         ; $29:A0D7: CA          ;
CODE_29A0D8:    BPL CODE_29A0D2             ; $29:A0D8: 10 F8       ;
CODE_29A0DA:    PLA                         ; $29:A0DA: 68          ;
CODE_29A0DB:    PLA                         ; $29:A0DB: 68          ;
CODE_29A0DC:    RTS                         ; $29:A0DC: 60          ;

CODE_29A0DD:    STA $00                     ; $29:A0DD: 85 00       ;
CODE_29A0DF:    LDY #$00                    ; $29:A0DF: A0 00       ;
CODE_29A0E1:    LDX #$04                    ; $29:A0E1: A2 04       ;
CODE_29A0E3:    LDA $0661,x                 ; $29:A0E3: BD 61 06    ;
CODE_29A0E6:    BEQ CODE_29A0F0             ; $29:A0E6: F0 08       ;
CODE_29A0E8:    LDA $0671,x                 ; $29:A0E8: BD 71 06    ;
CODE_29A0EB:    CMP $00                     ; $29:A0EB: C5 00       ;
CODE_29A0ED:    BNE CODE_29A0F0             ; $29:A0ED: D0 01       ;
CODE_29A0EF:    INY                         ; $29:A0EF: C8          ;
CODE_29A0F0:    DEX                         ; $29:A0F0: CA          ;
CODE_29A0F1:    BPL CODE_29A0E3             ; $29:A0F1: 10 F0       ;
CODE_29A0F3:    LDX $9B                     ; $29:A0F3: A6 9B       ;
CODE_29A0F5:    RTS                         ; $29:A0F5: 60          ;

CODE_29A0F6:    JSL CODE_279C96             ; $29:A0F6: 22 96 9C 27 ;
CODE_29A0FA:    LDA #$02                    ; $29:A0FA: A9 02       ;
CODE_29A0FC:    STA $0661,x                 ; $29:A0FC: 9D 61 06    ;
CODE_29A0FF:    RTS                         ; $29:A0FF: 60          ;

CODE_29A100:    LDA $0561                   ; $29:A100: AD 61 05    ;
CODE_29A103:    BEQ CODE_29A106             ; $29:A103: F0 01       ;
CODE_29A105:    RTS                         ; $29:A105: 60          ;

CODE_29A106:    LDY #$09                    ; $29:A106: A0 09       ;
CODE_29A108:    STA $1FC8,y                 ; $29:A108: 99 C8 1F    ;
CODE_29A10B:    CPY #$08                    ; $29:A10B: C0 08       ;
CODE_29A10D:    BCS CODE_29A112                     ; $29:A10D: B0 03       ;
CODE_29A10F:    STA $1A15,y                 ; $29:A10F: 99 15 1A    ;
CODE_29A112:    CPY #$05                    ; $29:A112: C0 05       ;
CODE_29A114:    BCS CODE_29A11C                     ; $29:A114: B0 06       ;
CODE_29A116:    STA $079F,y                 ; $29:A116: 99 9F 07    ;
CODE_29A119:    STA $07A4,y                 ; $29:A119: 99 A4 07    ;
CODE_29A11C:    CPY #$03                    ; $29:A11C: C0 03       ;
CODE_29A11E:    BEQ CODE_29A135             ; $29:A11E: F0 15       ;
CODE_29A120:    BCS CODE_29A138                     ; $29:A120: B0 16       ;
CODE_29A122:    STA $1F7C,y                 ; $29:A122: 99 7C 1F    ;
CODE_29A125:    STA $1F90,y                 ; $29:A125: 99 90 1F    ;
CODE_29A128:    STA $1F9C,y                 ; $29:A128: 99 9C 1F    ;
CODE_29A12B:    CPY #$02                    ; $29:A12B: C0 02       ;
CODE_29A12D:    BCS CODE_29A135                     ; $29:A12D: B0 06       ;
CODE_29A12F:    STA $06B4,y                 ; $29:A12F: 99 B4 06    ;
CODE_29A132:    STA $1CE1,y                 ; $29:A132: 99 E1 1C    ;
CODE_29A135:    STA $1FB4,y                 ; $29:A135: 99 B4 1F    ;
CODE_29A138:    DEY                         ; $29:A138: 88          ;
CODE_29A139:    BPL CODE_29A108             ; $29:A139: 10 CD       ;
CODE_29A13B:    STA $1CFF                   ; $29:A13B: 8D FF 1C    ;
CODE_29A13E:    STA $7E3973                 ; $29:A13E: 8F 73 39 7E ;
CODE_29A142:    STA $1CFB                   ; $29:A142: 8D FB 1C    ;
CODE_29A145:    STA $1CF5                   ; $29:A145: 8D F5 1C    ;
CODE_29A148:    STA $1CF3                   ; $29:A148: 8D F3 1C    ;
CODE_29A14B:    STA $1CF2                   ; $29:A14B: 8D F2 1C    ;
CODE_29A14E:    STA $1CF4                   ; $29:A14E: 8D F4 1C    ;
CODE_29A151:    STA $0566                   ; $29:A151: 8D 66 05    ;
CODE_29A154:    STA $1CF1                   ; $29:A154: 8D F1 1C    ;
CODE_29A157:    STA $1A45                   ; $29:A157: 8D 45 1A    ;
CODE_29A15A:    STA $0781                   ; $29:A15A: 8D 81 07    ;
CODE_29A15D:    STA $0780                   ; $29:A15D: 8D 80 07    ;
CODE_29A160:    LDY #$2F                    ; $29:A160: A0 2F       ;
CODE_29A162:    STA $1B10,y                 ; $29:A162: 99 10 1B    ;
CODE_29A165:    DEY                         ; $29:A165: 88          ;
CODE_29A166:    BPL CODE_29A162             ; $29:A166: 10 FA       ;
CODE_29A168:    STY $0561                   ; $29:A168: 8C 61 05    ;
CODE_29A16B:    STA $058B                   ; $29:A16B: 8D 8B 05    ;
CODE_29A16E:    STA $1B00                   ; $29:A16E: 8D 00 1B    ;
CODE_29A171:    STA $0575                   ; $29:A171: 8D 75 05    ;
CODE_29A174:    STA $0546                   ; $29:A174: 8D 46 05    ;
CODE_29A177:    STA $05FE                   ; $29:A177: 8D FE 05    ;
CODE_29A17A:    STA $05FF                   ; $29:A17A: 8D FF 05    ;
CODE_29A17D:    STA $05FD                   ; $29:A17D: 8D FD 05    ;
CODE_29A180:    STA $1A0F                   ; $29:A180: 8D 0F 1A    ;
CODE_29A183:    STA $00                     ; $29:A183: 85 00       ;
CODE_29A185:    TAX                         ; $29:A185: AA          ;
CODE_29A186:    TAY                         ; $29:A186: A8          ;
CODE_29A187:    INY                         ; $29:A187: C8          ;
CODE_29A188:    CPX #$10                    ; $29:A188: E0 10       ;
CODE_29A18A:    BEQ CODE_29A1CE             ; $29:A18A: F0 42       ;
CODE_29A18C:    LDA $1B40,y                 ; $29:A18C: B9 40 1B    ;
CODE_29A18F:    CMP #$FF                    ; $29:A18F: C9 FF       ;
CODE_29A191:    BEQ CODE_29A1B7             ; $29:A191: F0 24       ;
CODE_29A193:    LDA $0425                   ; $29:A193: AD 25 04    ;
CODE_29A196:    PHP                         ; $29:A196: 08          ;
CODE_29A197:    LDA $1B41,y                 ; $29:A197: B9 41 1B    ;
CODE_29A19A:    PLP                         ; $29:A19A: 28          ;
CODE_29A19B:    BEQ CODE_29A1A0             ; $29:A19B: F0 03       ;
CODE_29A19D:    LDA $1B42,y                 ; $29:A19D: B9 42 1B    ;
CODE_29A1A0:    LSR A                       ; $29:A1A0: 4A          ;
CODE_29A1A1:    LSR A                       ; $29:A1A1: 4A          ;
CODE_29A1A2:    LSR A                       ; $29:A1A2: 4A          ;
CODE_29A1A3:    LSR A                       ; $29:A1A3: 4A          ;
CODE_29A1A4:    STA $01                     ; $29:A1A4: 85 01       ;
CODE_29A1A6:    CPX $01                     ; $29:A1A6: E4 01       ;
CODE_29A1A8:    BNE CODE_29A1B7             ; $29:A1A8: D0 0D       ;
CODE_29A1AA:    INC $00                     ; $29:A1AA: E6 00       ;
CODE_29A1AC:    LDA $00                     ; $29:A1AC: A5 00       ;
CODE_29A1AE:    STA $1B01,x                 ; $29:A1AE: 9D 01 1B    ;
CODE_29A1B1:    INY                         ; $29:A1B1: C8          ;
CODE_29A1B2:    INY                         ; $29:A1B2: C8          ;
CODE_29A1B3:    INY                         ; $29:A1B3: C8          ;
CODE_29A1B4:    JMP CODE_29A188             ; $29:A1B4: 4C 88 A1    ;

CODE_29A1B7:    LDA $00                     ; $29:A1B7: A5 00       ;
CODE_29A1B9:    CPX #$0F                    ; $29:A1B9: E0 0F       ;
CODE_29A1BB:    BEQ CODE_29A1C0             ; $29:A1BB: F0 03       ;
CODE_29A1BD:    STA $1B01,x                 ; $29:A1BD: 9D 01 1B    ;
CODE_29A1C0:    CMP $1B00,x                 ; $29:A1C0: DD 00 1B    ;
CODE_29A1C3:    BNE CODE_29A1CA             ; $29:A1C3: D0 05       ;
CODE_29A1C5:    LDA #$FF                    ; $29:A1C5: A9 FF       ;
CODE_29A1C7:    STA $1B00,x                 ; $29:A1C7: 9D 00 1B    ;
CODE_29A1CA:    INX                         ; $29:A1CA: E8          ;
CODE_29A1CB:    JMP CODE_29A188             ; $29:A1CB: 4C 88 A1    ;

CODE_29A1CE:    LDX #$07                    ; $29:A1CE: A2 07       ;
CODE_29A1D0:    LDA #$00                    ; $29:A1D0: A9 00       ;
CODE_29A1D2:    STA $0661,x                 ; $29:A1D2: 9D 61 06    ;
CODE_29A1D5:    DEX                         ; $29:A1D5: CA          ;
CODE_29A1D6:    BPL CODE_29A1D0             ; $29:A1D6: 10 F8       ;
CODE_29A1D8:    LDA #$4F                    ; $29:A1D8: A9 4F       ;
CODE_29A1DA:    STA $071E                   ; $29:A1DA: 8D 1E 07    ;
CODE_29A1DD:    LDA $0560                   ; $29:A1DD: AD 60 05    ;
CODE_29A1E0:    CMP #$0A                    ; $29:A1E0: C9 0A       ;
CODE_29A1E2:    BNE CODE_29A1EE             ; $29:A1E2: D0 0A       ;
CODE_29A1E4:    LDA #$01                    ; $29:A1E4: A9 01       ;
CODE_29A1E6:    STA $0665                   ; $29:A1E6: 8D 65 06    ;
CODE_29A1E9:    LDA #$47                    ; $29:A1E9: A9 47       ;
CODE_29A1EB:    STA $0675                   ; $29:A1EB: 8D 75 06    ;
CODE_29A1EE:    LDA $0425                   ; $29:A1EE: AD 25 04    ;
CODE_29A1F1:    BNE CODE_29A24A             ; $29:A1F1: D0 57       ;
CODE_29A1F3:    LDA $0210                   ; $29:A1F3: AD 10 02    ;
CODE_29A1F6:    PHA                         ; $29:A1F6: 48          ;
CODE_29A1F7:    LDA.w DATA_21C699                   ; $29:A1F7: AD 99 C6    ;
CODE_29A1FA:    SEC                         ; $29:A1FA: 38          ;
CODE_29A1FB:    SBC.w DATA_21C699+1                     ; $29:A1FB: ED 9A C6    ;
CODE_29A1FE:    CLC                         ; $29:A1FE: 18          ;
CODE_29A1FF:    ADC $0210                   ; $29:A1FF: 6D 10 02    ;
CODE_29A202:    AND #$F0                    ; $29:A202: 29 F0       ;
CODE_29A204:    STA $0D                     ; $29:A204: 85 0D       ;
CODE_29A206:    LDA $12                     ; $29:A206: A5 12       ;
CODE_29A208:    PHA                         ; $29:A208: 48          ;
CODE_29A209:    ADC.w DATA_21C69B                   ; $29:A209: 6D 9B C6    ;
CODE_29A20C:    STA $0E                     ; $29:A20C: 85 0E       ;
CODE_29A20E:    LDA #$01                    ; $29:A20E: A9 01       ;
CODE_29A210:    STA $25                     ; $29:A210: 85 25       ;
CODE_29A212:    LDA $0210                   ; $29:A212: AD 10 02    ;
CODE_29A215:    SEC                         ; $29:A215: 38          ;
CODE_29A216:    SBC #$10                    ; $29:A216: E9 10       ;
CODE_29A218:    STA $0210                   ; $29:A218: 8D 10 02    ;
CODE_29A21B:    BCS CODE_29A21F                     ; $29:A21B: B0 02       ;
CODE_29A21D:    DEC $12                     ; $29:A21D: C6 12       ;
CODE_29A21F:    LDA $0210                   ; $29:A21F: AD 10 02    ;
CODE_29A222:    ADC #$10                    ; $29:A222: 69 10       ;
CODE_29A224:    AND #$F0                    ; $29:A224: 29 F0       ;
CODE_29A226:    STA $0210                   ; $29:A226: 8D 10 02    ;
CODE_29A229:    BCC CODE_29A22D             ; $29:A229: 90 02       ;
CODE_29A22B:    INC $12                     ; $29:A22B: E6 12       ;
CODE_29A22D:    JSR CODE_299AE0             ; $29:A22D: 20 E0 9A    ;
CODE_29A230:    JSR CODE_299AE0             ; $29:A230: 20 E0 9A    ;
CODE_29A233:    LDA $0E                     ; $29:A233: A5 0E       ;
CODE_29A235:    CMP $12                     ; $29:A235: C5 12       ;
CODE_29A237:    BNE CODE_29A21F             ; $29:A237: D0 E6       ;
CODE_29A239:    LDA $0D                     ; $29:A239: A5 0D       ;
CODE_29A23B:    CMP $0210                   ; $29:A23B: CD 10 02    ;
CODE_29A23E:    BNE CODE_29A21F             ; $29:A23E: D0 DF       ;
CODE_29A240:    PLA                         ; $29:A240: 68          ;
CODE_29A241:    STA $12                     ; $29:A241: 85 12       ;
CODE_29A243:    PLA                         ; $29:A243: 68          ;
CODE_29A244:    STA $0210                   ; $29:A244: 8D 10 02    ;
CODE_29A247:    PLA                         ; $29:A247: 68          ;
CODE_29A248:    PLA                         ; $29:A248: 68          ;
CODE_29A249:    RTS                         ; $29:A249: 60          ;

CODE_29A24A:    LDA $0543                   ; $29:A24A: AD 43 05    ;
CODE_29A24D:    PHA                         ; $29:A24D: 48          ;
CODE_29A24E:    CLC                         ; $29:A24E: 18          ;
CODE_29A24F:    ADC.w DATA_21C6A9+1                     ; $29:A24F: 6D AA C6    ;
CODE_29A252:    AND #$F0                    ; $29:A252: 29 F0       ;
CODE_29A254:    STA $0D                     ; $29:A254: 85 0D       ;
CODE_29A256:    LDA $0542                   ; $29:A256: AD 42 05    ;
CODE_29A259:    PHA                         ; $29:A259: 48          ;
CODE_29A25A:    CLC                         ; $29:A25A: 18          ;
CODE_29A25B:    ADC.w DATA_21C6AB+1                     ; $29:A25B: 6D AC C6    ;
CODE_29A25E:    STA $0E                     ; $29:A25E: 85 0E       ;
CODE_29A260:    LDA #$00                    ; $29:A260: A9 00       ;
CODE_29A262:    STA $25                     ; $29:A262: 85 25       ;
CODE_29A264:    LDA $0543                   ; $29:A264: AD 43 05    ;
CODE_29A267:    SEC                         ; $29:A267: 38          ;
CODE_29A268:    SBC #$10                    ; $29:A268: E9 10       ;
CODE_29A26A:    STA $0543                   ; $29:A26A: 8D 43 05    ;
CODE_29A26D:    BCS CODE_29A272                     ; $29:A26D: B0 03       ;
CODE_29A26F:    DEC $0542                   ; $29:A26F: CE 42 05    ;
CODE_29A272:    LDA $0543                   ; $29:A272: AD 43 05    ;
CODE_29A275:    ADC #$10                    ; $29:A275: 69 10       ;
CODE_29A277:    AND #$F0                    ; $29:A277: 29 F0       ;
CODE_29A279:    STA $0543                   ; $29:A279: 8D 43 05    ;
CODE_29A27C:    BCC CODE_29A281             ; $29:A27C: 90 03       ;
CODE_29A27E:    INC $0542                   ; $29:A27E: EE 42 05    ;
CODE_29A281:    JSR CODE_299DCD             ; $29:A281: 20 CD 9D    ;
CODE_29A284:    JSR CODE_299DCD             ; $29:A284: 20 CD 9D    ;
CODE_29A287:    LDA $0E                     ; $29:A287: A5 0E       ;
CODE_29A289:    CMP $0542                   ; $29:A289: CD 42 05    ;
CODE_29A28C:    BNE CODE_29A272             ; $29:A28C: D0 E4       ;
CODE_29A28E:    LDA $0D                     ; $29:A28E: A5 0D       ;
CODE_29A290:    CMP $0543                   ; $29:A290: CD 43 05    ;
CODE_29A293:    BNE CODE_29A272             ; $29:A293: D0 DD       ;
CODE_29A295:    PLA                         ; $29:A295: 68          ;
CODE_29A296:    STA $0542                   ; $29:A296: 8D 42 05    ;
CODE_29A299:    PLA                         ; $29:A299: 68          ;
CODE_29A29A:    STA $0543                   ; $29:A29A: 8D 43 05    ;
CODE_29A29D:    PLA                         ; $29:A29D: 68          ;
CODE_29A29E:    PLA                         ; $29:A29E: 68          ;
CODE_29A29F:    RTS                         ; $29:A29F: 60          ;

DATA_29A2A0:        db $71,$A4,$A5,$A9,$98,$99,$AA,$A6
                    db $9A,$9B,$A7,$A8,$9A,$9B,$A7,$A8
                    db $98,$99,$AA,$A6,$71,$A4,$A5,$A9
                    db $71,$A4,$A5,$BE,$98,$99,$BF,$20
                    db $9A,$9B,$21,$22,$9A,$9B,$21,$22
                    db $98,$99,$BF,$20,$71,$A4,$A5,$BE

DATA_29A2D0:        db $22,$22,$22,$22,$22,$22,$22,$22
                    db $22,$22,$22,$22,$62,$62,$62,$62
                    db $62,$62,$62,$62,$62,$62,$62,$62
                    db $22,$22,$22,$22,$22,$22,$22,$23
                    db $22,$22,$23,$23,$62,$62,$63,$63
                    db $62,$62,$62,$63,$62,$62,$62,$62

CODE_29A300:    PHB                     ; $29:A300: 8B          ;
CODE_29A301:    PHK                     ; $29:A301: 4B          ;
CODE_29A302:    PLB                     ; $29:A302: AB          ; Set current databank to this bank
CODE_29A303:    LDA $5F,x                   ; $29:A303: B5 5F       ;
CODE_29A305:    STA $0A                     ; $29:A305: 85 0A       ;
CODE_29A307:    LDA $44,x                   ; $29:A307: B5 44       ;
CODE_29A309:    STA $0B                     ; $29:A309: 85 0B       ;
CODE_29A30B:    LDA $83,x                   ; $29:A30B: B5 83       ;
CODE_29A30D:    STA $07                     ; $29:A30D: 85 07       ;
CODE_29A30F:    REP #$30                    ; $29:A30F: C2 30       ;
CODE_29A311:    LDA $0A                     ; $29:A311: A5 0A       ;
CODE_29A313:    SEC                         ; $29:A313: 38          ;
CODE_29A314:    SBC $0210                   ; $29:A314: ED 10 02    ;
CODE_29A317:    STA $0A                     ; $29:A317: 85 0A       ;
CODE_29A319:    CLC                         ; $29:A319: 18          ;
CODE_29A31A:    ADC #$0008                  ; $29:A31A: 69 08 00    ;
CODE_29A31D:    STA $0C                     ; $29:A31D: 85 0C       ;
CODE_29A31F:    CLC                         ; $29:A31F: 18          ;
CODE_29A320:    ADC #$0008                  ; $29:A320: 69 08 00    ;
CODE_29A323:    STA $0E                     ; $29:A323: 85 0E       ;
CODE_29A325:    SEP #$20                    ; $29:A325: E2 20       ;
CODE_29A327:    LDY $00C6,x                 ; $29:A327: BC C6 00    ;
CODE_29A32A:    PHY                         ; $29:A32A: 5A          ;
CODE_29A32B:    LDA $0679,x                 ; $29:A32B: BD 79 06    ;
CODE_29A32E:    LDX #$000C                  ; $29:A32E: A2 0C 00    ;
CODE_29A331:    STX $08                     ; $29:A331: 86 08       ;
CODE_29A333:    CMP #$40                    ; $29:A333: C9 40       ;
CODE_29A335:    BNE CODE_29A33A             ; $29:A335: D0 03       ;
CODE_29A337:    LDX #$0000                  ; $29:A337: A2 00 00    ;
CODE_29A33A:    LDA $1EBF                   ; $29:A33A: AD BF 1E    ;
CODE_29A33D:    CMP #$1B                    ; $29:A33D: C9 1B       ;
CODE_29A33F:    BNE CODE_29A346             ; $29:A33F: D0 05       ;
CODE_29A341:    TXA                         ; $29:A341: 8A          ;
CODE_29A342:    CLC                         ; $29:A342: 18          ;
CODE_29A343:    ADC #$18                    ; $29:A343: 69 18       ;
CODE_29A345:    TAX                         ; $29:A345: AA          ;
CODE_29A346:    LDA.w DATA_29A2A0,x                 ; $29:A346: BD A0 A2    ;
CODE_29A349:    STA $0802,y                 ; $29:A349: 99 02 08    ;
CODE_29A34C:    LDA.w DATA_29A2D0,x                 ; $29:A34C: BD D0 A2    ;
CODE_29A34F:    STA $0803,y                 ; $29:A34F: 99 03 08    ;
CODE_29A352:    INY                         ; $29:A352: C8          ;
CODE_29A353:    INY                         ; $29:A353: C8          ;
CODE_29A354:    INY                         ; $29:A354: C8          ;
CODE_29A355:    INY                         ; $29:A355: C8          ;
CODE_29A356:    INX                         ; $29:A356: E8          ;
CODE_29A357:    DEC $08                     ; $29:A357: C6 08       ;
CODE_29A359:    BNE CODE_29A346             ; $29:A359: D0 EB       ;
CODE_29A35B:    LDX #$0000                  ; $29:A35B: A2 00 00    ;
CODE_29A35E:    PLY                         ; $29:A35E: 7A          ;
CODE_29A35F:    PHY                         ; $29:A35F: 5A          ;
CODE_29A360:    LDA $0A,x                   ; $29:A360: B5 0A       ;
CODE_29A362:    STA $0800,y                 ; $29:A362: 99 00 08    ;
CODE_29A365:    STA $0804,y                 ; $29:A365: 99 04 08    ;
CODE_29A368:    STA $0808,y                 ; $29:A368: 99 08 08    ;
CODE_29A36B:    STA $080C,y                 ; $29:A36B: 99 0C 08    ;
CODE_29A36E:    LDA $07                     ; $29:A36E: A5 07       ;
CODE_29A370:    STA $0801,y                 ; $29:A370: 99 01 08    ;
CODE_29A373:    CLC                         ; $29:A373: 18          ;
CODE_29A374:    ADC #$08                    ; $29:A374: 69 08       ;
CODE_29A376:    STA $0805,y                 ; $29:A376: 99 05 08    ;
CODE_29A379:    CLC                         ; $29:A379: 18          ;
CODE_29A37A:    ADC #$08                    ; $29:A37A: 69 08       ;
CODE_29A37C:    STA $0809,y                 ; $29:A37C: 99 09 08    ;
CODE_29A37F:    CLC                         ; $29:A37F: 18          ;
CODE_29A380:    ADC #$08                    ; $29:A380: 69 08       ;
CODE_29A382:    STA $080D,y                 ; $29:A382: 99 0D 08    ;
CODE_29A385:    REP #$20                    ; $29:A385: C2 20       ;
CODE_29A387:    TYA                         ; $29:A387: 98          ;
CODE_29A388:    CLC                         ; $29:A388: 18          ;
CODE_29A389:    ADC #$0010                  ; $29:A389: 69 10 00    ;
CODE_29A38C:    TAY                         ; $29:A38C: A8          ;
CODE_29A38D:    SEP #$20                    ; $29:A38D: E2 20       ;
CODE_29A38F:    INX                         ; $29:A38F: E8          ;
CODE_29A390:    INX                         ; $29:A390: E8          ;
CODE_29A391:    CPX #$0006                  ; $29:A391: E0 06 00    ;
CODE_29A394:    BCC CODE_29A360             ; $29:A394: 90 CA       ;
CODE_29A396:    SEP #$10                    ; $29:A396: E2 10       ;
CODE_29A398:    REP #$20                    ; $29:A398: C2 20       ;
CODE_29A39A:    PLA                         ; $29:A39A: 68          ;
CODE_29A39B:    LSR A                       ; $29:A39B: 4A          ;
CODE_29A39C:    LSR A                       ; $29:A39C: 4A          ;
CODE_29A39D:    TAY                         ; $29:A39D: A8          ;
CODE_29A39E:    SEP #$20                    ; $29:A39E: E2 20       ;
CODE_29A3A0:    LDX #$00                    ; $29:A3A0: A2 00       ;
CODE_29A3A2:    LDA $0B,x                   ; $29:A3A2: B5 0B       ;
CODE_29A3A4:    BEQ CODE_29A3A8             ; $29:A3A4: F0 02       ;
CODE_29A3A6:    LDA #$01                    ; $29:A3A6: A9 01       ;
CODE_29A3A8:    STA $0A20,y                 ; $29:A3A8: 99 20 0A    ;
CODE_29A3AB:    STA $0A21,y                 ; $29:A3AB: 99 21 0A    ;
CODE_29A3AE:    STA $0A22,y                 ; $29:A3AE: 99 22 0A    ;
CODE_29A3B1:    STA $0A23,y                 ; $29:A3B1: 99 23 0A    ;
CODE_29A3B4:    INY                         ; $29:A3B4: C8          ;
CODE_29A3B5:    INY                         ; $29:A3B5: C8          ;
CODE_29A3B6:    INY                         ; $29:A3B6: C8          ;
CODE_29A3B7:    INY                         ; $29:A3B7: C8          ;
CODE_29A3B8:    INX                         ; $29:A3B8: E8          ;
CODE_29A3B9:    INX                         ; $29:A3B9: E8          ;
CODE_29A3BA:    CPX #$06                    ; $29:A3BA: E0 06       ;
CODE_29A3BC:    BCC CODE_29A3A2             ; $29:A3BC: 90 E4       ;
CODE_29A3BE:    LDX $9B                     ; $29:A3BE: A6 9B       ;
CODE_29A3C0:    PLB                     ; $29:A3C0: AB          ;
CODE_29A3C1:    RTL                         ; $29:A3C1: 6B          ;

CODE_29A3C2:    LDA $7FC57A,x               ; $29:A3C2: BF 7A C5 7F ;
CODE_29A3C6:    BNE CODE_29A3DE             ; $29:A3C6: D0 16       ;
CODE_29A3C8:    JSR CODE_29A52D             ; $29:A3C8: 20 2D A5    ;
CODE_29A3CB:    LDA $0671,x                 ; $29:A3CB: BD 71 06    ;
CODE_29A3CE:    CMP #$5E                    ; $29:A3CE: C9 5E       ;
CODE_29A3D0:    BEQ CODE_29A3DE             ; $29:A3D0: F0 0C       ;
CODE_29A3D2:    CMP #$60                    ; $29:A3D2: C9 60       ;
CODE_29A3D4:    BEQ CODE_29A3DE             ; $29:A3D4: F0 08       ;
CODE_29A3D6:    CMP #$51                    ; $29:A3D6: C9 51       ;
CODE_29A3D8:    BEQ CODE_29A3DE             ; $29:A3D8: F0 04       ;
CODE_29A3DA:    CMP #$5F                    ; $29:A3DA: C9 5F       ;
CODE_29A3DC:    BNE CODE_29A3E8             ; $29:A3DC: D0 0A       ;
CODE_29A3DE:    LDA $7FC57A,x               ; $29:A3DE: BF 7A C5 7F ;
CODE_29A3E2:    EOR #$01                    ; $29:A3E2: 49 01       ;
CODE_29A3E4:    STA $7FC57A,x               ; $29:A3E4: 9F 7A C5 7F ;
CODE_29A3E8:    LDA $0671,x                 ; $29:A3E8: BD 71 06    ;
CODE_29A3EB:    CMP #$2F                    ; $29:A3EB: C9 2F       ;
CODE_29A3ED:    BEQ CODE_29A412             ; $29:A3ED: F0 23       ;
CODE_29A3EF:    LDA #$8C                    ; $29:A3EF: A9 8C       ;
CODE_29A3F1:    STA $01                     ; $29:A3F1: 85 01       ;
CODE_29A3F3:    LDA $0669,x                 ; $29:A3F3: BD 69 06    ;
CODE_29A3F6:    BEQ CODE_29A3FE             ; $29:A3F6: F0 06       ;
CODE_29A3F8:    STZ $03                     ; $29:A3F8: 64 03       ;
CODE_29A3FA:    LDA #$88                    ; $29:A3FA: A9 88       ;
CODE_29A3FC:    BRA CODE_29A404             ; $29:A3FC: 80 06       ;

CODE_29A3FE:    LDA #$C0                    ; $29:A3FE: A9 C0       ;
CODE_29A400:    STA $03                     ; $29:A400: 85 03       ;
CODE_29A402:    LDA #$8A                    ; $29:A402: A9 8A       ;
CODE_29A404:    STA $00                     ; $29:A404: 85 00       ;
CODE_29A406:    LDA $15                     ; $29:A406: A5 15       ;
CODE_29A408:    AND #$0E                    ; $29:A408: 29 0E       ;
CODE_29A40A:    ORA #$20                    ; $29:A40A: 09 20       ;
CODE_29A40C:    STA $02                     ; $29:A40C: 85 02       ;
CODE_29A40E:    TSB $03                     ; $29:A40E: 04 03       ;
CODE_29A410:    BRA CODE_29A452             ; $29:A410: 80 40       ;

CODE_29A412:    REP #$10                    ; $29:A412: C2 10       ;
CODE_29A414:    LDY $00C6,x                 ; $29:A414: BC C6 00    ;
CODE_29A417:    LDA #$F0                    ; $29:A417: A9 F0       ;
CODE_29A419:    STA $0801,y                 ; $29:A419: 99 01 08    ;
CODE_29A41C:    STA $0805,y                 ; $29:A41C: 99 05 08    ;
CODE_29A41F:    STA $0809,y                 ; $29:A41F: 99 09 08    ;
CODE_29A422:    STA $080D,y                 ; $29:A422: 99 0D 08    ;
CODE_29A425:    SEP #$10                    ; $29:A425: E2 10       ;
CODE_29A427:    LDA $0679,x                 ; $29:A427: BD 79 06    ;
CODE_29A42A:    BEQ CODE_29A42E             ; $29:A42A: F0 02       ;
CODE_29A42C:    LDA #$40                    ; $29:A42C: A9 40       ;
CODE_29A42E:    ORA #$2A                    ; $29:A42E: 09 2A       ;
CODE_29A430:    STA $02                     ; $29:A430: 85 02       ;
CODE_29A432:    STA $03                     ; $29:A432: 85 03       ;
CODE_29A434:    LDA #$AC                    ; $29:A434: A9 AC       ;
CODE_29A436:    STA $00                     ; $29:A436: 85 00       ;
CODE_29A438:    LDA $0661,x                 ; $29:A438: BD 61 06    ;
CODE_29A43B:    CMP #$06                    ; $29:A43B: C9 06       ;
CODE_29A43D:    BNE CODE_29A445             ; $29:A43D: D0 06       ;
CODE_29A43F:    LDA #$AA                    ; $29:A43F: A9 AA       ;
CODE_29A441:    STA $02                     ; $29:A441: 85 02       ;
CODE_29A443:    BRA CODE_29A4C0             ; $29:A443: 80 7B       ;

CODE_29A445:    LDA $0669,x                 ; $29:A445: BD 69 06    ;
CODE_29A448:    BEQ CODE_29A4C0             ; $29:A448: F0 76       ;
CODE_29A44A:    LDA #$AE                    ; $29:A44A: A9 AE       ;
CODE_29A44C:    STA $00                     ; $29:A44C: 85 00       ;
CODE_29A44E:    LDA #$84                    ; $29:A44E: A9 84       ;
CODE_29A450:    STA $01                     ; $29:A450: 85 01       ;
CODE_29A452:    LDA $01                     ; $29:A452: A5 01       ;
CODE_29A454:    STA $0A                     ; $29:A454: 85 0A       ;
CODE_29A456:    LDA $03                     ; $29:A456: A5 03       ;
CODE_29A458:    STA $0B                     ; $29:A458: 85 0B       ;
CODE_29A45A:    LDA $7FC572,x               ; $29:A45A: BF 72 C5 7F ;
CODE_29A45E:    CMP #$01                    ; $29:A45E: C9 01       ;
CODE_29A460:    BEQ CODE_29A48F             ; $29:A460: F0 2D       ;
CODE_29A462:    CMP #$03                    ; $29:A462: C9 03       ;
CODE_29A464:    BEQ CODE_29A48F             ; $29:A464: F0 29       ;
CODE_29A466:    LDA $7FC53A,x               ; $29:A466: BF 3A C5 7F ;
CODE_29A46A:    STA $0C                     ; $29:A46A: 85 0C       ;
CODE_29A46C:    LDA $7FC54A,x               ; $29:A46C: BF 4A C5 7F ;
CODE_29A470:    STA $0D                     ; $29:A470: 85 0D       ;
CODE_29A472:    LDA $7FC55A,x               ; $29:A472: BF 5A C5 7F ;
CODE_29A476:    STA $0E                     ; $29:A476: 85 0E       ;
CODE_29A478:    LDA $7FC56A,x               ; $29:A478: BF 6A C5 7F ;
CODE_29A47C:    STA $0F                     ; $29:A47C: 85 0F       ;
CODE_29A47E:    REP #$10                    ; $29:A47E: C2 10       ;
CODE_29A480:    LDY $C6,x                   ; $29:A480: B4 C6       ;
CODE_29A482:    INY                         ; $29:A482: C8          ;
CODE_29A483:    INY                         ; $29:A483: C8          ;
CODE_29A484:    INY                         ; $29:A484: C8          ;
CODE_29A485:    INY                         ; $29:A485: C8          ;
CODE_29A486:    INY                         ; $29:A486: C8          ;
CODE_29A487:    INY                         ; $29:A487: C8          ;
CODE_29A488:    INY                         ; $29:A488: C8          ;
CODE_29A489:    INY                         ; $29:A489: C8          ;
CODE_29A48A:    JSR CODE_29A4E2             ; $29:A48A: 20 E2 A4    ;
CODE_29A48D:    SEP #$10                    ; $29:A48D: E2 10       ;
CODE_29A48F:    LDA $7FC572,x               ; $29:A48F: BF 72 C5 7F ;
CODE_29A493:    CMP #$02                    ; $29:A493: C9 02       ;
CODE_29A495:    BEQ CODE_29A4C0             ; $29:A495: F0 29       ;
CODE_29A497:    CMP #$05                    ; $29:A497: C9 05       ;
CODE_29A499:    BEQ CODE_29A4C0             ; $29:A499: F0 25       ;
CODE_29A49B:    LDA $7FC532,x               ; $29:A49B: BF 32 C5 7F ;
CODE_29A49F:    STA $0C                     ; $29:A49F: 85 0C       ;
CODE_29A4A1:    LDA $7FC542,x               ; $29:A4A1: BF 42 C5 7F ;
CODE_29A4A5:    STA $0D                     ; $29:A4A5: 85 0D       ;
CODE_29A4A7:    LDA $7FC552,x               ; $29:A4A7: BF 52 C5 7F ;
CODE_29A4AB:    STA $0E                     ; $29:A4AB: 85 0E       ;
CODE_29A4AD:    LDA $7FC562,x               ; $29:A4AD: BF 62 C5 7F ;
CODE_29A4B1:    STA $0F                     ; $29:A4B1: 85 0F       ;
CODE_29A4B3:    REP #$10                    ; $29:A4B3: C2 10       ;
CODE_29A4B5:    LDY $C6,x                   ; $29:A4B5: B4 C6       ;
CODE_29A4B7:    INY                         ; $29:A4B7: C8          ;
CODE_29A4B8:    INY                         ; $29:A4B8: C8          ;
CODE_29A4B9:    INY                         ; $29:A4B9: C8          ;
CODE_29A4BA:    INY                         ; $29:A4BA: C8          ;
CODE_29A4BB:    JSR CODE_29A4E2             ; $29:A4BB: 20 E2 A4    ;
CODE_29A4BE:    SEP #$10                    ; $29:A4BE: E2 10       ;
CODE_29A4C0:    LDA $00                     ; $29:A4C0: A5 00       ;
CODE_29A4C2:    STA $0A                     ; $29:A4C2: 85 0A       ;
CODE_29A4C4:    LDA $02                     ; $29:A4C4: A5 02       ;
CODE_29A4C6:    STA $0B                     ; $29:A4C6: 85 0B       ;
CODE_29A4C8:    LDA $5F,x                   ; $29:A4C8: B5 5F       ;
CODE_29A4CA:    STA $0C                     ; $29:A4CA: 85 0C       ;
CODE_29A4CC:    LDA $44,x                   ; $29:A4CC: B5 44       ;
CODE_29A4CE:    STA $0D                     ; $29:A4CE: 85 0D       ;
CODE_29A4D0:    LDA $71,x                   ; $29:A4D0: B5 71       ;
CODE_29A4D2:    STA $0E                     ; $29:A4D2: 85 0E       ;
CODE_29A4D4:    LDA $56,x                   ; $29:A4D4: B5 56       ;
CODE_29A4D6:    STA $0F                     ; $29:A4D6: 85 0F       ;
CODE_29A4D8:    REP #$10                    ; $29:A4D8: C2 10       ;
CODE_29A4DA:    LDY $C6,x                   ; $29:A4DA: B4 C6       ;
CODE_29A4DC:    JSR CODE_29A4E2             ; $29:A4DC: 20 E2 A4    ;
CODE_29A4DF:    SEP #$10                    ; $29:A4DF: E2 10       ;
CODE_29A4E1:    RTL                         ; $29:A4E1: 6B          ;

CODE_29A4E2:    REP #$20                    ; $29:A4E2: C2 20       ;
CODE_29A4E4:    LDA $0C                     ; $29:A4E4: A5 0C       ;
CODE_29A4E6:    SEC                         ; $29:A4E6: 38          ;
CODE_29A4E7:    SBC $0210                   ; $29:A4E7: ED 10 02    ;
CODE_29A4EA:    STA $0C                     ; $29:A4EA: 85 0C       ;
CODE_29A4EC:    LDA $0E                     ; $29:A4EC: A5 0E       ;
CODE_29A4EE:    SEC                         ; $29:A4EE: 38          ;
CODE_29A4EF:    SBC $0216                   ; $29:A4EF: ED 16 02    ;
CODE_29A4F2:    STA $0E                     ; $29:A4F2: 85 0E       ;
CODE_29A4F4:    SEP #$20                    ; $29:A4F4: E2 20       ;
CODE_29A4F6:    LDA $0C                     ; $29:A4F6: A5 0C       ;
CODE_29A4F8:    STA $0800,y                 ; $29:A4F8: 99 00 08    ;
CODE_29A4FB:    LDA $0E                     ; $29:A4FB: A5 0E       ;
CODE_29A4FD:    STA $0801,y                 ; $29:A4FD: 99 01 08    ;
CODE_29A500:    LDA $0A                     ; $29:A500: A5 0A       ;
CODE_29A502:    STA $0802,y                 ; $29:A502: 99 02 08    ;
CODE_29A505:    LDA $0B                     ; $29:A505: A5 0B       ;
CODE_29A507:    STA $0803,y                 ; $29:A507: 99 03 08    ;
CODE_29A50A:    LDA $0F                     ; $29:A50A: A5 0F       ;
CODE_29A50C:    BNE CODE_29A514             ; $29:A50C: D0 06       ;
CODE_29A50E:    LDA $0E                     ; $29:A50E: A5 0E       ;
CODE_29A510:    CMP #$F0                    ; $29:A510: C9 F0       ;
CODE_29A512:    BCC CODE_29A519             ; $29:A512: 90 05       ;
CODE_29A514:    LDA #$F0                    ; $29:A514: A9 F0       ;
CODE_29A516:    STA $0801,y                 ; $29:A516: 99 01 08    ;
CODE_29A519:    REP #$20                    ; $29:A519: C2 20       ;
CODE_29A51B:    TYA                         ; $29:A51B: 98          ;
CODE_29A51C:    LSR A                       ; $29:A51C: 4A          ;
CODE_29A51D:    LSR A                       ; $29:A51D: 4A          ;
CODE_29A51E:    TAY                         ; $29:A51E: A8          ;
CODE_29A51F:    SEP #$20                    ; $29:A51F: E2 20       ;
CODE_29A521:    LDA $0D                     ; $29:A521: A5 0D       ;
CODE_29A523:    BEQ CODE_29A527             ; $29:A523: F0 02       ;
CODE_29A525:    LDA #$01                    ; $29:A525: A9 01       ;
CODE_29A527:    ORA #$02                    ; $29:A527: 09 02       ;
CODE_29A529:    STA $0A20,y                 ; $29:A529: 99 20 0A    ;
CODE_29A52C:    RTS                         ; $29:A52C: 60          ;

CODE_29A52D:    LDA $7FC572,x               ; $29:A52D: BF 72 C5 7F ;
CODE_29A531:    DEC A                       ; $29:A531: 3A          ;
CODE_29A532:    BPL CODE_29A579             ; $29:A532: 10 45       ;
CODE_29A534:    LDA $7FC532,x               ; $29:A534: BF 32 C5 7F ;
CODE_29A538:    STA $7FC53A,x               ; $29:A538: 9F 3A C5 7F ;
CODE_29A53C:    LDA $7FC542,x               ; $29:A53C: BF 42 C5 7F ;
CODE_29A540:    STA $7FC54A,x               ; $29:A540: 9F 4A C5 7F ;
CODE_29A544:    LDA $7FC552,x               ; $29:A544: BF 52 C5 7F ;
CODE_29A548:    STA $7FC55A,x               ; $29:A548: 9F 5A C5 7F ;
CODE_29A54C:    LDA $7FC562,x               ; $29:A54C: BF 62 C5 7F ;
CODE_29A550:    STA $7FC56A,x               ; $29:A550: 9F 6A C5 7F ;
CODE_29A554:    LDA $5F,x                   ; $29:A554: B5 5F       ;
CODE_29A556:    STA $7FC532,x               ; $29:A556: 9F 32 C5 7F ;
CODE_29A55A:    LDA $44,x                   ; $29:A55A: B5 44       ;
CODE_29A55C:    STA $7FC542,x               ; $29:A55C: 9F 42 C5 7F ;
CODE_29A560:    LDA $71,x                   ; $29:A560: B5 71       ;
CODE_29A562:    STA $7FC552,x               ; $29:A562: 9F 52 C5 7F ;
CODE_29A566:    LDA $56,x                   ; $29:A566: B5 56       ;
CODE_29A568:    STA $7FC562,x               ; $29:A568: 9F 62 C5 7F ;
CODE_29A56C:    LDA $0671,x                 ; $29:A56C: BD 71 06    ;
CODE_29A56F:    CMP #$2F                    ; $29:A56F: C9 2F       ;
CODE_29A571:    BNE CODE_29A577             ; $29:A571: D0 04       ;
CODE_29A573:    LDA #$05                    ; $29:A573: A9 05       ;
CODE_29A575:    BRA CODE_29A579             ; $29:A575: 80 02       ;

CODE_29A577:    LDA #$04                    ; $29:A577: A9 04       ;
CODE_29A579:    STA $7FC572,x               ; $29:A579: 9F 72 C5 7F ;
CODE_29A57D:    RTS                         ; $29:A57D: 60          ;

CODE_29A57E:    LDA $1CD7,x                 ; $29:A57E: BD D7 1C    ;
CODE_29A581:    SEC                         ; $29:A581: 38          ;
CODE_29A582:    SBC $5F,x                   ; $29:A582: F5 5F       ;
CODE_29A584:    PHA                         ; $29:A584: 48          ;
CODE_29A585:    LDA $1CC8,x                 ; $29:A585: BD C8 1C    ;
CODE_29A588:    SBC $44,x                   ; $29:A588: F5 44       ;
CODE_29A58A:    TAY                         ; $29:A58A: A8          ;
CODE_29A58B:    PLA                         ; $29:A58B: 68          ;
CODE_29A58C:    CLC                         ; $29:A58C: 18          ;
CODE_29A58D:    ADC $1CD7,x                 ; $29:A58D: 7D D7 1C    ;
CODE_29A590:    STA $5F,x                   ; $29:A590: 95 5F       ;
CODE_29A592:    TYA                         ; $29:A592: 98          ;
CODE_29A593:    ADC $1CC8,x                 ; $29:A593: 7D C8 1C    ;
CODE_29A596:    STA $44,x                   ; $29:A596: 95 44       ;
CODE_29A598:    LDA $1CD7,x                 ; $29:A598: BD D7 1C    ;
CODE_29A59B:    SEC                         ; $29:A59B: 38          ;
CODE_29A59C:    SBC $7FC532,x               ; $29:A59C: FF 32 C5 7F ;
CODE_29A5A0:    PHA                         ; $29:A5A0: 48          ;
CODE_29A5A1:    LDA $1CC8,x                 ; $29:A5A1: BD C8 1C    ;
CODE_29A5A4:    SBC $7FC542,x               ; $29:A5A4: FF 42 C5 7F ;
CODE_29A5A8:    TAY                         ; $29:A5A8: A8          ;
CODE_29A5A9:    PLA                         ; $29:A5A9: 68          ;
CODE_29A5AA:    CLC                         ; $29:A5AA: 18          ;
CODE_29A5AB:    ADC $1CD7,x                 ; $29:A5AB: 7D D7 1C    ;
CODE_29A5AE:    STA $7FC532,x               ; $29:A5AE: 9F 32 C5 7F ;
CODE_29A5B2:    TYA                         ; $29:A5B2: 98          ;
CODE_29A5B3:    ADC $1CC8,x                 ; $29:A5B3: 7D C8 1C    ;
CODE_29A5B6:    STA $7FC542,x               ; $29:A5B6: 9F 42 C5 7F ;
CODE_29A5BA:    LDA $1CD7,x                 ; $29:A5BA: BD D7 1C    ;
CODE_29A5BD:    SEC                         ; $29:A5BD: 38          ;
CODE_29A5BE:    SBC $7FC53A,x               ; $29:A5BE: FF 3A C5 7F ;
CODE_29A5C2:    PHA                         ; $29:A5C2: 48          ;
CODE_29A5C3:    LDA $1CC8,x                 ; $29:A5C3: BD C8 1C    ;
CODE_29A5C6:    SBC $7FC54A,x               ; $29:A5C6: FF 4A C5 7F ;
CODE_29A5CA:    TAY                         ; $29:A5CA: A8          ;
CODE_29A5CB:    PLA                         ; $29:A5CB: 68          ;
CODE_29A5CC:    CLC                         ; $29:A5CC: 18          ;
CODE_29A5CD:    ADC $1CD7,x                 ; $29:A5CD: 7D D7 1C    ;
CODE_29A5D0:    STA $7FC53A,x               ; $29:A5D0: 9F 3A C5 7F ;
CODE_29A5D4:    TYA                         ; $29:A5D4: 98          ;
CODE_29A5D5:    ADC $1CC8,x                 ; $29:A5D5: 7D C8 1C    ;
CODE_29A5D8:    STA $7FC54A,x               ; $29:A5D8: 9F 4A C5 7F ;
CODE_29A5DC:    LDA $C6,x                   ; $29:A5DC: B5 C6       ;
CODE_29A5DE:    CLC                         ; $29:A5DE: 18          ;
CODE_29A5DF:    ADC #$10                    ; $29:A5DF: 69 10       ;
CODE_29A5E1:    STA $C6,x                   ; $29:A5E1: 95 C6       ;
CODE_29A5E3:    RTL                         ; $29:A5E3: 6B          ;

CODE_29A5E4:    LDA $1CDC,x                 ; $29:A5E4: BD DC 1C    ;
CODE_29A5E7:    SEC                         ; $29:A5E7: 38          ;
CODE_29A5E8:    SBC $71,x                   ; $29:A5E8: F5 71       ;
CODE_29A5EA:    PHA                         ; $29:A5EA: 48          ;
CODE_29A5EB:    LDA $0689,x                 ; $29:A5EB: BD 89 06    ;
CODE_29A5EE:    SBC $56,x                   ; $29:A5EE: F5 56       ;
CODE_29A5F0:    TAY                         ; $29:A5F0: A8          ;
CODE_29A5F1:    PLA                         ; $29:A5F1: 68          ;
CODE_29A5F2:    CLC                         ; $29:A5F2: 18          ;
CODE_29A5F3:    ADC $1CDC,x                 ; $29:A5F3: 7D DC 1C    ;
CODE_29A5F6:    STA $71,x                   ; $29:A5F6: 95 71       ;
CODE_29A5F8:    TYA                         ; $29:A5F8: 98          ;
CODE_29A5F9:    ADC $0689,x                 ; $29:A5F9: 7D 89 06    ;
CODE_29A5FC:    STA $56,x                   ; $29:A5FC: 95 56       ;
CODE_29A5FE:    LDA $1CDC,x                 ; $29:A5FE: BD DC 1C    ;
CODE_29A601:    SEC                         ; $29:A601: 38          ;
CODE_29A602:    SBC $7FC552,x               ; $29:A602: FF 52 C5 7F ;
CODE_29A606:    PHA                         ; $29:A606: 48          ;
CODE_29A607:    LDA $0689,x                 ; $29:A607: BD 89 06    ;
CODE_29A60A:    SBC $7FC562,x               ; $29:A60A: FF 62 C5 7F ;
CODE_29A60E:    TAY                         ; $29:A60E: A8          ;
CODE_29A60F:    PLA                         ; $29:A60F: 68          ;
CODE_29A610:    CLC                         ; $29:A610: 18          ;
CODE_29A611:    ADC $1CDC,x                 ; $29:A611: 7D DC 1C    ;
CODE_29A614:    STA $7FC552,x               ; $29:A614: 9F 52 C5 7F ;
CODE_29A618:    TYA                         ; $29:A618: 98          ;
CODE_29A619:    ADC $0689,x                 ; $29:A619: 7D 89 06    ;
CODE_29A61C:    STA $7FC562,x               ; $29:A61C: 9F 62 C5 7F ;
CODE_29A620:    LDA $1CDC,x                 ; $29:A620: BD DC 1C    ;
CODE_29A623:    SEC                         ; $29:A623: 38          ;
CODE_29A624:    SBC $7FC55A,x               ; $29:A624: FF 5A C5 7F ;
CODE_29A628:    PHA                         ; $29:A628: 48          ;
CODE_29A629:    LDA $0689,x                 ; $29:A629: BD 89 06    ;
CODE_29A62C:    SBC $7FC56A,x               ; $29:A62C: FF 6A C5 7F ;
CODE_29A630:    TAY                         ; $29:A630: A8          ;
CODE_29A631:    PLA                         ; $29:A631: 68          ;
CODE_29A632:    CLC                         ; $29:A632: 18          ;
CODE_29A633:    ADC $1CDC,x                 ; $29:A633: 7D DC 1C    ;
CODE_29A636:    STA $7FC55A,x               ; $29:A636: 9F 5A C5 7F ;
CODE_29A63A:    TYA                         ; $29:A63A: 98          ;
CODE_29A63B:    ADC $0689,x                 ; $29:A63B: 7D 89 06    ;
CODE_29A63E:    STA $7FC56A,x               ; $29:A63E: 9F 6A C5 7F ;
CODE_29A642:    LDA $C6,x                   ; $29:A642: B5 C6       ;
CODE_29A644:    CLC                         ; $29:A644: 18          ;
CODE_29A645:    ADC #$10                    ; $29:A645: 69 10       ;
CODE_29A647:    STA $C6,x                   ; $29:A647: 95 C6       ;
CODE_29A649:    RTL                         ; $29:A649: 6B          ;

DATA_29A64A:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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

CODE_29A700:    JSR CODE_29A7C3         ; $29:A700: 20 C3 A7    ;
CODE_29A703:    LDX $0727               ; $29:A703: AE 27 07    ;
CODE_29A706:    LDA.w DATA_21E3A5,x                 ; $29:A706: BD A5 E3    ;
CODE_29A709:    STA $1EEC                   ; $29:A709: 8D EC 1E    ;
CODE_29A70C:    TXA                         ; $29:A70C: 8A          ;
CODE_29A70D:    ASL A                       ; $29:A70D: 0A          ;
CODE_29A70E:    TAX                         ; $29:A70E: AA          ;
CODE_29A70F:    REP #$20                    ; $29:A70F: C2 20       ;
CODE_29A711:    LDA.w DATA_21E3AD,x                 ; $29:A711: BD AD E3    ;
CODE_29A714:    STA $0A                     ; $29:A714: 85 0A       ;
CODE_29A716:    LDA.w DATA_21E3BD,x                 ; $29:A716: BD BD E3    ;
CODE_29A719:    STA $0C                     ; $29:A719: 85 0C       ;
CODE_29A71B:    LDA.w DATA_21E3CD,x                 ; $29:A71B: BD CD E3    ;
CODE_29A71E:    STA $0E                     ; $29:A71E: 85 0E       ;
CODE_29A720:    LDA.w DATA_21E3DD,x                 ; $29:A720: BD DD E3    ;
CODE_29A723:    STA $08                     ; $29:A723: 85 08       ;
CODE_29A725:    LDA.w DATA_21E3ED,x                 ; $29:A725: BD ED E3    ;
CODE_29A728:    STA $06                     ; $29:A728: 85 06       ;
CODE_29A72A:    SEP #$20                    ; $29:A72A: E2 20       ;
CODE_29A72C:    LDY #$08                    ; $29:A72C: A0 08       ;
CODE_29A72E:    LDA ($0A),y                 ; $29:A72E: B1 0A       ;
CODE_29A730:    STA $1EED,y                 ; $29:A730: 99 ED 1E    ;
CODE_29A733:    LDA ($0C),y                 ; $29:A733: B1 0C       ;
CODE_29A735:    STA $1F09,y                 ; $29:A735: 99 09 1F    ;
CODE_29A738:    LDA ($0E),y                 ; $29:A738: B1 0E       ;
CODE_29A73A:    STA $1EFB,y                 ; $29:A73A: 99 FB 1E    ;
CODE_29A73D:    LDA ($08),y                 ; $29:A73D: B1 08       ;
CODE_29A73F:    STA $1F17,y                 ; $29:A73F: 99 17 1F    ;
CODE_29A742:    TYX                         ; $29:A742: BB          ;
CODE_29A743:    LDA ($06),y                 ; $29:A743: B1 06       ;
CODE_29A745:    STA $7E3956,x               ; $29:A745: 9F 56 39 7E ;
CODE_29A749:    DEY                         ; $29:A749: 88          ;
CODE_29A74A:    BPL CODE_29A72E             ; $29:A74A: 10 E2       ;
CODE_29A74C:    LDY $0727                   ; $29:A74C: AC 27 07    ;
CODE_29A74F:    LDX $072B                   ; $29:A74F: AE 2B 07    ;
CODE_29A752:    DEX                         ; $29:A752: CA          ;
CODE_29A753:    LDA.w DATA_21C96D,y                 ; $29:A753: B9 6D C9    ;
CODE_29A756:    STA $7E3975,x               ; $29:A756: 9F 75 39 7E ;
CODE_29A75A:    STA $0043                   ; $29:A75A: 8D 43 00    ;
CODE_29A75D:    STA $0044                   ; $29:A75D: 8D 44 00    ;
CODE_29A760:    STA $7E397D                 ; $29:A760: 8F 7D 39 7E ;
CODE_29A764:    STA $7E397E                 ; $29:A764: 8F 7E 39 7E ;
CODE_29A768:    LDA #$20                    ; $29:A768: A9 20       ;
CODE_29A76A:    STA $7E3979,x               ; $29:A76A: 9F 79 39 7E ;
CODE_29A76E:    STA $0047                   ; $29:A76E: 8D 47 00    ;
CODE_29A771:    STA $0048                   ; $29:A771: 8D 48 00    ;
CODE_29A774:    STA $7E3981                 ; $29:A774: 8F 81 39 7E ;
CODE_29A778:    STA $7E3982                 ; $29:A778: 8F 82 39 7E ;
CODE_29A77C:    LDA #$01                    ; $29:A77C: A9 01       ;
CODE_29A77E:    STA $7E3992,x               ; $29:A77E: 9F 92 39 7E ;
CODE_29A782:    LDA #$00                    ; $29:A782: A9 00       ;
CODE_29A784:    STA $7E397B,x               ; $29:A784: 9F 7B 39 7E ;
CODE_29A788:    STA $7E3977,x               ; $29:A788: 9F 77 39 7E ;
CODE_29A78C:    STA $0045                   ; $29:A78C: 8D 45 00    ;
CODE_29A78F:    STA $0046                   ; $29:A78F: 8D 46 00    ;
CODE_29A792:    STA $7E397F                 ; $29:A792: 8F 7F 39 7E ;
CODE_29A796:    STA $7E3980                 ; $29:A796: 8F 80 39 7E ;
CODE_29A79A:    STA $7E3983,x               ; $29:A79A: 9F 83 39 7E ;
CODE_29A79E:    STA $7E3985,x               ; $29:A79E: 9F 85 39 7E ;
CODE_29A7A2:    STA $7E3987,x               ; $29:A7A2: 9F 87 39 7E ;
CODE_29A7A6:    STA $7E3989,x               ; $29:A7A6: 9F 89 39 7E ;
CODE_29A7AA:    STA $0722,x                 ; $29:A7AA: 9D 22 07    ;
CODE_29A7AD:    STA $0724,x                 ; $29:A7AD: 9D 24 07    ;
CODE_29A7B0:    DEX                         ; $29:A7B0: CA          ;
CODE_29A7B1:    BPL CODE_29A753             ; $29:A7B1: 10 A0       ;
CODE_29A7B3:    STX $1F26                   ; $29:A7B3: 8E 26 1F    ;
CODE_29A7B6:    STA $7E3994                 ; $29:A7B6: 8F 94 39 7E ;
CODE_29A7BA:    STA $7E3970                 ; $29:A7BA: 8F 70 39 7E ;
CODE_29A7BE:    STA $7E3971                 ; $29:A7BE: 8F 71 39 7E ;
CODE_29A7C2:    RTL                         ; $29:A7C2: 6B          ;

CODE_29A7C3:    LDY $0727                   ; $29:A7C3: AC 27 07    ;
CODE_29A7C6:    LDA $0783                   ; $29:A7C6: AD 83 07    ;
CODE_29A7C9:    AND #$0F                    ; $29:A7C9: 29 0F       ;
CODE_29A7CB:    TAX                         ; $29:A7CB: AA          ;
CODE_29A7CC:    LDA.w DATA_21E57D,x                 ; $29:A7CC: BD 7D E5    ;
CODE_29A7CF:    CLC                         ; $29:A7CF: 18          ;
CODE_29A7D0:    ADC.w DATA_21E575,y                 ; $29:A7D0: 79 75 E5    ;
CODE_29A7D3:    STA $0743                   ; $29:A7D3: 8D 43 07    ;
CODE_29A7D6:    RTS                         ; $29:A7D6: 60          ;

CODE_29A7D7:    LDX $0726                   ; $29:A7D7: AE 26 07    ;
CODE_29A7DA:    LDA.w DATA_21E58D,x                 ; $29:A7DA: BD 8D E5    ;
CODE_29A7DD:    STA $00                     ; $29:A7DD: 85 00       ;
CODE_29A7DF:    LDA $0738                   ; $29:A7DF: AD 38 07    ;
CODE_29A7E2:    CLC                         ; $29:A7E2: 18          ;
CODE_29A7E3:    ADC $00                     ; $29:A7E3: 65 00       ;
CODE_29A7E5:    TAX                         ; $29:A7E5: AA          ;
CODE_29A7E6:    LDA $1D80,x                 ; $29:A7E6: BD 80 1D    ;
CODE_29A7E9:    CMP #$01                    ; $29:A7E9: C9 01       ;
CODE_29A7EB:    BEQ CODE_29A7F2             ; $29:A7EB: F0 05       ;
CODE_29A7ED:    JSL CODE_238C1B             ; $29:A7ED: 22 1B 8C 23 ;
CODE_29A7F1:    RTS                         ; $29:A7F1: 60          ;

CODE_29A7F2:    LDX $0738                   ; $29:A7F2: AE 38 07    ;
CODE_29A7F5:    LDA $1DC6,x                 ; $29:A7F5: BD C6 1D    ;
CODE_29A7F8:    JSL CODE_20FB1F         ; $29:A7F8: 22 1F FB 20 ; ExecutePtrShort

PNTR_29A7FC:        dw CODE_29B99E
                    dw CODE_29A81C
                    dw CODE_29A81C
                    dw CODE_29A81C
                    dw CODE_29A81C
                    dw CODE_29B99E
                    dw CODE_29A81C
                    dw CODE_29A821
                    dw CODE_29A81C
                    dw CODE_29A81C
                    dw CODE_29B99E
                    dw CODE_29B99E
                    dw CODE_29B99E
                    dw CODE_29B99E
                    dw CODE_29B99E
                    dw CODE_29B99E
  
CODE_29A81C:    JSL CODE_238C1B             ; $29:A81C: 22 1B 8C 23 ;
CODE_29A820:    RTS                         ; $29:A820: 60          ;

CODE_29A821:    LDA $59                     ; $29:A821: A5 59       ;
CODE_29A823:    JSL CODE_20FB1F         ; $29:A823: 22 1F FB 20 ; ExecutePtrShort

PNTR_29A827:        dw CODE_29A88D
                    dw CODE_29A8D7
                    dw CODE_29A8E5
                    dw CODE_29A936
                    dw CODE_29A96E
                    dw CODE_29A8D7

CODE_29A833:    JSR CODE_29A821             ; $29:A833: 20 21 A8    ;
CODE_29A836:    RTL                         ; $29:A836: 6B          ;

CODE_29A837:    LDA $57                     ; $29:A837: A5 57       ;
CODE_29A839:    BNE CODE_29A85D             ; $29:A839: D0 22       ;
CODE_29A83B:    LDA #$20                    ; $29:A83B: A9 20       ;
CODE_29A83D:    STA $57                     ; $29:A83D: 85 57       ;
CODE_29A83F:    LDA #$12                    ; $29:A83F: A9 12       ;
CODE_29A841:    STA $0208                   ; $29:A841: 8D 08 02    ;
CODE_29A844:    LDA #$01                    ; $29:A844: A9 01       ;
CODE_29A846:    STA $0209                   ; $29:A846: 8D 09 02    ;
CODE_29A849:    LDA #$02                    ; $29:A849: A9 02       ;
CODE_29A84B:    STA $0203                   ; $29:A84B: 8D 03 02    ;
CODE_29A84E:    LDA #$20                    ; $29:A84E: A9 20       ;
CODE_29A850:    STA $0204                   ; $29:A850: 8D 04 02    ;
CODE_29A853:    LDA $0598                   ; $29:A853: AD 98 05    ;
CODE_29A856:    BEQ CODE_29A85D             ; $29:A856: F0 05       ;
CODE_29A858:    LDA #$01                    ; $29:A858: A9 01       ;
CODE_29A85A:    STA $020B                   ; $29:A85A: 8D 0B 02    ;
CODE_29A85D:    LDA $57                     ; $29:A85D: A5 57       ;
CODE_29A85F:    AND #$04                    ; $29:A85F: 29 04       ;
CODE_29A861:    LSR A                       ; $29:A861: 4A          ;
CODE_29A862:    TAX                         ; $29:A862: AA          ;
CODE_29A863:    REP #$20                    ; $29:A863: C2 20       ;
CODE_29A865:    LDA.l DATA_29A889,x                 ; $29:A865: BF 89 A8 29 ;
CODE_29A869:    STA $1300                   ; $29:A869: 8D 00 13    ;
CODE_29A86C:    SEP #$20                    ; $29:A86C: E2 20       ;
CODE_29A86E:    LDA #$01                    ; $29:A86E: A9 01       ;
CODE_29A870:    STA $1500                   ; $29:A870: 8D 00 15    ;
CODE_29A873:    DEC $57                     ; $29:A873: C6 57       ;
CODE_29A875:    BNE CODE_29A888             ; $29:A875: D0 11       ;
CODE_29A877:    LDA #$13                    ; $29:A877: A9 13       ;
CODE_29A879:    STA $0208                   ; $29:A879: 8D 08 02    ;
CODE_29A87C:    STZ $0209                   ; $29:A87C: 9C 09 02    ;
CODE_29A87F:    STZ $0203                   ; $29:A87F: 9C 03 02    ;
CODE_29A882:    STZ $0204                   ; $29:A882: 9C 04 02    ;
CODE_29A885:    STZ $020B                   ; $29:A885: 9C 0B 02    ;
CODE_29A888:    RTS                         ; $29:A888: 60          ;

DATA_29A889:        dw $0000
                    dw $7FFF

CODE_29A88D:    LDY $0726               ; $29:A88D: AC 26 07    ;
CODE_29A890:    LDX #$00                ; $29:A890: A2 00       ;
CODE_29A893:    LDA $0047,y             ; $29:A893: B9 47 00    ;
CODE_29A895:    SEC                         ; $29:A895: 38          ;
CODE_29A896:    SBC $0210                   ; $29:A896: ED 10 02    ;
CODE_29A899:    CMP #$80                    ; $29:A899: C9 80       ;
CODE_29A89B:    BCS CODE_29A89F                     ; $29:A89B: B0 02       ;
CODE_29A89D:    LDX #$01                    ; $29:A89D: A2 01       ;
CODE_29A89F:    STX $58                     ; $29:A89F: 86 58       ;
CODE_29A8A1:    LDA.w DATA_21E58F,x                 ; $29:A8A1: BD 8F E5    ;
CODE_29A8A4:    STA $56                     ; $29:A8A4: 85 56       ;
CODE_29A8A6:    LDA $0043,y                 ; $29:A8A6: B9 43 00    ;
CODE_29A8A9:    STA $54                     ; $29:A8A9: 85 54       ;
CODE_29A8AB:    STA $7E3974                 ; $29:A8AB: 8F 74 39 7E ;
CODE_29A8AF:    LDX #$05                    ; $29:A8AF: A2 05       ;
CODE_29A8B1:    LDA $0730                   ; $29:A8B1: AD 30 07    ;
CODE_29A8B4:    BNE CODE_29A8D0             ; $29:A8B4: D0 1A       ;
CODE_29A8B6:    LDA $0043,y                 ; $29:A8B6: B9 43 00    ;
CODE_29A8B9:    STA $0730                   ; $29:A8B9: 8D 30 07    ;
CODE_29A8BC:    LDA $0047,y                 ; $29:A8BC: B9 47 00    ;
CODE_29A8BF:    STA $0732                   ; $29:A8BF: 8D 32 07    ;
CODE_29A8C2:    LDA $0045,y                 ; $29:A8C2: B9 45 00    ;
CODE_29A8C5:    STA $0731                   ; $29:A8C5: 8D 31 07    ;
CODE_29A8C8:    LDA $0052,y                 ; $29:A8C8: B9 52 00    ;
CODE_29A8CB:    STA $0733                   ; $29:A8CB: 8D 33 07    ;
CODE_29A8CE:    LDX #$01                    ; $29:A8CE: A2 01       ;
CODE_29A8D0:    STX $59                     ; $29:A8D0: 86 59       ;
CODE_29A8D2:    JSL CODE_238C1B             ; $29:A8D2: 22 1B 8C 23 ;
CODE_29A8D6:    RTS                         ; $29:A8D6: 60          ;

CODE_29A8D7:    JSR CODE_29A837             ; $29:A8D7: 20 37 A8    ;
CODE_29A8DA:    LDA $57                     ; $29:A8DA: A5 57       ;
CODE_29A8DC:    BNE CODE_29A8E0             ; $29:A8DC: D0 02       ;
CODE_29A8DE:    INC $59                     ; $29:A8DE: E6 59       ;
CODE_29A8E0:    JSL CODE_238C1B             ; $29:A8E0: 22 1B 8C 23 ;
CODE_29A8E4:    RTS                         ; $29:A8E4: 60          ;

CODE_29A8E5:    INC $57                     ; $29:A8E5: E6 57       ;
CODE_29A8E7:    LDY $0726                   ; $29:A8E7: AC 26 07    ;
CODE_29A8EA:    LDX $58                     ; $29:A8EA: A6 58       ;
CODE_29A8EC:    LDA $56                     ; $29:A8EC: A5 56       ;
CODE_29A8EE:    CLC                         ; $29:A8EE: 18          ;
CODE_29A8EF:    ADC.w DATA_21E591,x                 ; $29:A8EF: 7D 91 E5    ;
CODE_29A8F2:    STA $56                     ; $29:A8F2: 85 56       ;
CODE_29A8F4:    LDA $0047,y                 ; $29:A8F4: B9 47 00    ;
CODE_29A8F7:    SEC                         ; $29:A8F7: 38          ;
CODE_29A8F8:    SBC $0210                   ; $29:A8F8: ED 10 02    ;
CODE_29A8FB:    CMP $56                     ; $29:A8FB: C5 56       ;
CODE_29A8FD:    BNE CODE_29A908             ; $29:A8FD: D0 09       ;
CODE_29A8FF:    LDA #$F0                    ; $29:A8FF: A9 F0       ;
CODE_29A901:    STA $7E3974                 ; $29:A901: 8F 74 39 7E ;
CODE_29A905:    JMP CODE_29A927             ; $29:A905: 4C 27 A9    ;

CODE_29A908:    LDA $56                     ; $29:A908: A5 56       ;
CODE_29A90A:    CMP.w DATA_21E593,x                 ; $29:A90A: DD 93 E5    ;
CODE_29A90D:    BNE CODE_29A927             ; $29:A90D: D0 18       ;
CODE_29A90F:    LDA $0727                   ; $29:A90F: AD 27 07    ;
CODE_29A912:    STA $042A                   ; $29:A912: 8D 2A 04    ;
CODE_29A915:    LDA #$08                    ; $29:A915: A9 08       ;
CODE_29A917:    STA $0727                   ; $29:A917: 8D 27 07    ;
CODE_29A91A:    LDY #$0D                    ; $29:A91A: A0 0D       ;
CODE_29A91C:    LDA #$00                    ; $29:A91C: A9 00       ;
CODE_29A91E:    STA $1F17,y                 ; $29:A91E: 99 17 1F    ;
CODE_29A921:    DEY                         ; $29:A921: 88          ;
CODE_29A922:    BPL CODE_29A91E             ; $29:A922: 10 FA       ;
CODE_29A924:    INC $59                     ; $29:A924: E6 59       ;
CODE_29A926:    RTS                         ; $29:A926: 60          ;

CODE_29A927:    JSL CODE_238C1B             ; $29:A927: 22 1B 8C 23 ;
CODE_29A92B:    LDA $56                     ; $29:A92B: A5 56       ;
CODE_29A92D:    STA $01                     ; $29:A92D: 85 01       ;
CODE_29A92F:    LDA #$01                    ; $29:A92F: A9 01       ;
CODE_29A931:    STA $02                     ; $29:A931: 85 02       ;
CODE_29A933:    JMP CODE_29AA70             ; $29:A933: 4C 70 AA    ;

CODE_29A936:    LDA #$00                    ; $29:A936: A9 00       ;
CODE_29A938:    STA $57                     ; $29:A938: 85 57       ;
CODE_29A93A:    LDA #$F8                    ; $29:A93A: A9 F8       ;
CODE_29A93C:    STA $56                     ; $29:A93C: 85 56       ;
CODE_29A93E:    INC $59                     ; $29:A93E: E6 59       ;
CODE_29A940:    LDY $042A                   ; $29:A940: AC 2A 04    ;
CODE_29A943:    LDX $0726                   ; $29:A943: AE 26 07    ;
CODE_29A946:    LDA #$00                    ; $29:A946: A9 00       ;
CODE_29A948:    STA $0722,x                 ; $29:A948: 9D 22 07    ;
CODE_29A94B:    STA $0724,x                 ; $29:A94B: 9D 24 07    ;
CODE_29A94E:    STA $45,x                   ; $29:A94E: 95 45       ;
CODE_29A950:    LDA.w DATA_21E5A7,y                 ; $29:A950: B9 A7 E5    ;
CODE_29A953:    STA $47,x                   ; $29:A953: 95 47       ;
CODE_29A955:    LDA #$F0                    ; $29:A955: A9 F0       ;
CODE_29A957:    STA $56                     ; $29:A957: 85 56       ;
CODE_29A959:    LDA.w DATA_21E595,y                 ; $29:A959: B9 95 E5    ;
CODE_29A95C:    STA $54                     ; $29:A95C: 85 54       ;
CODE_29A95E:    LDA #$80                    ; $29:A95E: A9 80       ;
CODE_29A960:    STA $0711                   ; $29:A960: 8D 11 07    ;
CODE_29A963:    LDA #$03                    ; $29:A963: A9 03       ;
CODE_29A965:    STA $0713                   ; $29:A965: 8D 13 07    ;
CODE_29A968:    LDA #$00                    ; $29:A968: A9 00       ;
CODE_29A96A:    STA $072C                   ; $29:A96A: 8D 2C 07    ;
CODE_29A96D:    RTS                         ; $29:A96D: 60          ;

CODE_29A96E:    LDA #$00                    ; $29:A96E: A9 00       ;
CODE_29A970:    STA $0713                   ; $29:A970: 8D 13 07    ;
CODE_29A973:    LDY $042A                   ; $29:A973: AC 2A 04    ;
CODE_29A976:    LDX $0726                   ; $29:A976: AE 26 07    ;
CODE_29A979:    INC $57                     ; $29:A979: E6 57       ;
CODE_29A97B:    LDY $042A                   ; $29:A97B: AC 2A 04    ;
CODE_29A97E:    LDX $58                     ; $29:A97E: A6 58       ;
CODE_29A980:    LDA $56                     ; $29:A980: A5 56       ;
CODE_29A982:    CLC                         ; $29:A982: 18          ;
CODE_29A983:    ADC.w DATA_21E591,x                 ; $29:A983: 7D 91 E5    ;
CODE_29A986:    STA $56                     ; $29:A986: 85 56       ;
CODE_29A988:    CMP.w DATA_21E5A7,y                 ; $29:A988: D9 A7 E5    ;
CODE_29A98B:    BNE CODE_29A99C             ; $29:A98B: D0 0F       ;
CODE_29A98D:    LDX $0726                   ; $29:A98D: AE 26 07    ;
CODE_29A990:    LDA.w DATA_21E595,y                 ; $29:A990: B9 95 E5    ;
CODE_29A993:    STA $7E3974                 ; $29:A993: 8F 74 39 7E ;
CODE_29A997:    STA $43,x                   ; $29:A997: 95 43       ;
CODE_29A999:    JMP CODE_29A9AB             ; $29:A999: 4C AB A9    ;

CODE_29A99C:    CMP.w DATA_21E593,x                 ; $29:A99C: DD 93 E5    ;
CODE_29A99F:    BNE CODE_29A9AB             ; $29:A99F: D0 0A       ;
CODE_29A9A1:    LDA #$00                    ; $29:A9A1: A9 00       ;
CODE_29A9A3:    STA $57                     ; $29:A9A3: 85 57       ;
CODE_29A9A5:    STA $59                     ; $29:A9A5: 85 59       ;
CODE_29A9A7:    LDA #$F8                    ; $29:A9A7: A9 F8       ;
CODE_29A9A9:    STA $56                     ; $29:A9A9: 85 56       ;
CODE_29A9AB:    JMP CODE_29A927             ; $29:A9AB: 4C 27 A9    ;

CODE_29A9AE:    LDA $072E                   ; $29:A9AE: AD 2E 07    ;
CODE_29A9B1:    JSL CODE_20FB1F         ; $29:A9B1: 22 1F FB 20 ; ExecutePtrShort

PNTR_29A9B5:        dw CODE_29A9BB
                    dw CODE_29A9D9
                    dw CODE_29A9EF

CODE_29A9BB:    LDX $0726               ; $29:A9BB: AE 26 07    ;
CODE_29A9BE:    LDA $43,x                   ; $29:A9BE: B5 43       ;
CODE_29A9C0:    STA $7E3974                 ; $29:A9C0: 8F 74 39 7E ;
CODE_29A9C4:    CLC                         ; $29:A9C4: 18          ;
CODE_29A9C5:    ADC #$10                    ; $29:A9C5: 69 10       ;
CODE_29A9C7:    STA $54                     ; $29:A9C7: 85 54       ;
CODE_29A9C9:    LDA $45,x                   ; $29:A9C9: B5 45       ;
CODE_29A9CB:    STA $55                     ; $29:A9CB: 85 55       ;
CODE_29A9CD:    LDA $47,x                   ; $29:A9CD: B5 47       ;
CODE_29A9CF:    STA $56                     ; $29:A9CF: 85 56       ;
CODE_29A9D1:    INC $072E                   ; $29:A9D1: EE 2E 07    ;
CODE_29A9D4:    JSL CODE_238C1B             ; $29:A9D4: 22 1B 8C 23 ;
CODE_29A9D8:    RTL                         ; $29:A9D8: 6B          ;

CODE_29A9D9:    JSR CODE_29A837             ; $29:A9D9: 20 37 A8    ;
CODE_29A9DC:    LDA $57                     ; $29:A9DC: A5 57       ;
CODE_29A9DE:    BNE CODE_29A9EA             ; $29:A9DE: D0 0A       ;
CODE_29A9E0:    INC $072E                   ; $29:A9E0: EE 2E 07    ;
CODE_29A9E3:    LDA #$02                    ; $29:A9E3: A9 02       ;
CODE_29A9E5:    LDA #$43                ; $29:A9E5: A9 43       ; \
CODE_29A9E7:    STA $1203               ; $29:A9E7: 8D 03 12    ; / World 8 overworld hand pulling sound effect
CODE_29A9EA:    JSL CODE_238C1B             ; $29:A9EA: 22 1B 8C 23 ;
CODE_29A9EE:    RTL                         ; $29:A9EE: 6B          ;

CODE_29A9EF:    LDA #$01                    ; $29:A9EF: A9 01       ;
CODE_29A9F1:    STA $00                     ; $29:A9F1: 85 00       ;
CODE_29A9F3:    JSR CODE_29AA47             ; $29:A9F3: 20 47 AA    ;
CODE_29A9F6:    LDA $57                     ; $29:A9F6: A5 57       ;
CODE_29A9F8:    CMP #$20                    ; $29:A9F8: C9 20       ;
CODE_29A9FA:    BNE CODE_29AA10             ; $29:A9FA: D0 14       ;
CODE_29A9FC:    LDA #$10                    ; $29:A9FC: A9 10       ;
CODE_29A9FE:    STA $0729                   ; $29:A9FE: 8D 29 07    ;
CODE_29AA01:    LDX $0726                   ; $29:AA01: AE 26 07    ;
CODE_29AA04:    LDA #$00                    ; $29:AA04: A9 00       ;
CODE_29AA06:    STA $073F,x                 ; $29:AA06: 9D 3F 07    ;
CODE_29AA09:    STA $0728                   ; $29:AA09: 8D 28 07    ;
CODE_29AA0C:    STA $072E                   ; $29:AA0C: 8D 2E 07    ;
CODE_29AA0F:    RTL                         ; $29:AA0F: 6B          ;

CODE_29AA10:    JSL CODE_238C1B             ; $29:AA10: 22 1B 8C 23 ;
CODE_29AA14:    LDX $0726                   ; $29:AA14: AE 26 07    ;
CODE_29AA17:    LDA $43,x                   ; $29:AA17: B5 43       ;
CODE_29AA19:    CLC                         ; $29:AA19: 18          ;
CODE_29AA1A:    ADC #$10                    ; $29:AA1A: 69 10       ;
CODE_29AA1C:    STA $00                     ; $29:AA1C: 85 00       ;
CODE_29AA1E:    LDA $47,x                   ; $29:AA1E: B5 47       ;
CODE_29AA20:    SEC                         ; $29:AA20: 38          ;
CODE_29AA21:    SBC $0210                   ; $29:AA21: ED 10 02    ;
CODE_29AA24:    STA $01                     ; $29:AA24: 85 01       ;
CODE_29AA26:    LDA #$00                    ; $29:AA26: A9 00       ;
CODE_29AA28:    STA $02                     ; $29:AA28: 85 02       ;
CODE_29AA2A:    LDA $47,x                   ; $29:AA2A: B5 47       ;
CODE_29AA2C:    STA $0804                   ; $29:AA2C: 8D 04 08    ;
CODE_29AA2F:    LDA #$80                    ; $29:AA2F: A9 80       ;
CODE_29AA31:    STA $0805                   ; $29:AA31: 8D 05 08    ;
CODE_29AA34:    LDA #$00                    ; $29:AA34: A9 00       ;
CODE_29AA36:    STA $0806                   ; $29:AA36: 8D 06 08    ;
CODE_29AA39:    LDA #$21                    ; $29:AA39: A9 21       ;
CODE_29AA3B:    STA $0807                   ; $29:AA3B: 8D 07 08    ;
CODE_29AA3E:    LDA #$02                    ; $29:AA3E: A9 02       ;
CODE_29AA40:    STA $0A21                   ; $29:AA40: 8D 21 0A    ;
CODE_29AA43:    JSR CODE_29AA70             ; $29:AA43: 20 70 AA    ;
CODE_29AA46:    RTL                         ; $29:AA46: 6B          ;

CODE_29AA47:    LDA $15                     ; $29:AA47: A5 15       ;
CODE_29AA49:    AND #$01                    ; $29:AA49: 29 01       ;
CODE_29AA4B:    BNE CODE_29AA6F             ; $29:AA4B: D0 22       ;
CODE_29AA4D:    LDA $57                     ; $29:AA4D: A5 57       ;
CODE_29AA4F:    AND #$10                    ; $29:AA4F: 29 10       ;
CODE_29AA51:    LSR A                       ; $29:AA51: 4A          ;
CODE_29AA52:    LSR A                       ; $29:AA52: 4A          ;
CODE_29AA53:    LSR A                       ; $29:AA53: 4A          ;
CODE_29AA54:    LSR A                       ; $29:AA54: 4A          ;
CODE_29AA55:    TAY                         ; $29:AA55: A8          ;
CODE_29AA56:    LDX $0726                   ; $29:AA56: AE 26 07    ;
CODE_29AA59:    LDA $54                     ; $29:AA59: A5 54       ;
CODE_29AA5B:    CLC                         ; $29:AA5B: 18          ;
CODE_29AA5C:    ADC.w DATA_21E5B0,y                 ; $29:AA5C: 79 B0 E5    ;
CODE_29AA5F:    STA $54                     ; $29:AA5F: 85 54       ;
CODE_29AA61:    INC $57                     ; $29:AA61: E6 57       ;
CODE_29AA63:    LDA $57                     ; $29:AA63: A5 57       ;
CODE_29AA65:    AND #$10                    ; $29:AA65: 29 10       ;
CODE_29AA67:    BEQ CODE_29AA6F             ; $29:AA67: F0 06       ;
CODE_29AA69:    LDA $54                     ; $29:AA69: A5 54       ;
CODE_29AA6B:    STA $7E3974                 ; $29:AA6B: 8F 74 39 7E ;
CODE_29AA6F:    RTS                         ; $29:AA6F: 60          ;

CODE_29AA70:    LDX $02                     ; $29:AA70: A6 02       ;
CODE_29AA72:    LDA $54                     ; $29:AA72: A5 54       ;
CODE_29AA74:    STA $0861                   ; $29:AA74: 8D 61 08    ;
CODE_29AA77:    LDA $02                     ; $29:AA77: A5 02       ;
CODE_29AA79:    BEQ CODE_29AA8C             ; $29:AA79: F0 11       ;
CODE_29AA7B:    LDA $7E3974                 ; $29:AA7B: AF 74 39 7E ;
CODE_29AA7F:    CMP #$F0                    ; $29:AA7F: C9 F0       ;
CODE_29AA81:    BNE CODE_29AAAB             ; $29:AA81: D0 28       ;
CODE_29AA83:    STA $0885                   ; $29:AA83: 8D 85 08    ;
CODE_29AA86:    STA $0889                   ; $29:AA86: 8D 89 08    ;
CODE_29AA89:    JMP CODE_29AAAB             ; $29:AA89: 4C AB AA    ;

CODE_29AA8C:    LDA $57                     ; $29:AA8C: A5 57       ;
CODE_29AA8E:    AND #$10                    ; $29:AA8E: 29 10       ;
CODE_29AA90:    BEQ CODE_29AAAB             ; $29:AA90: F0 19       ;
CODE_29AA92:    LDA $7E3974                 ; $29:AA92: AF 74 39 7E ;
CODE_29AA96:    STA $0889                   ; $29:AA96: 8D 89 08    ;
CODE_29AA99:    SEC                         ; $29:AA99: 38          ;
CODE_29AA9A:    SBC #$10                    ; $29:AA9A: E9 10       ;
CODE_29AA9C:    STA $0885                   ; $29:AA9C: 8D 85 08    ;
CODE_29AA9F:    LDA $0886                   ; $29:AA9F: AD 86 08    ;
CODE_29AAA2:    CMP #$26                    ; $29:AAA2: C9 26       ;
CODE_29AAA4:    BNE CODE_29AAAB             ; $29:AAA4: D0 05       ;
CODE_29AAA6:    LDA #$F0                    ; $29:AAA6: A9 F0       ;
CODE_29AAA8:    STA $0885                   ; $29:AAA8: 8D 85 08    ;
CODE_29AAAB:    LDA.w DATA_21E5B2,x                 ; $29:AAAB: BD B2 E5    ;
CODE_29AAAE:    STA $0863                   ; $29:AAAE: 8D 63 08    ;
CODE_29AAB1:    LDA $01                     ; $29:AAB1: A5 01       ;
CODE_29AAB3:    STA $0860                   ; $29:AAB3: 8D 60 08    ;
CODE_29AAB6:    LDA #$02                    ; $29:AAB6: A9 02       ;
CODE_29AAB8:    STA $0A38                   ; $29:AAB8: 8D 38 0A    ;
CODE_29AABB:    LDY.w DATA_21E5B4,x                 ; $29:AABB: BC B4 E5    ;
CODE_29AABE:    LDA $57                     ; $29:AABE: A5 57       ;
CODE_29AAC0:    AND #$10                    ; $29:AAC0: 29 10       ;
CODE_29AAC2:    BEQ CODE_29AAC7             ; $29:AAC2: F0 03       ;
CODE_29AAC4:    LDY.w DATA_21E5B6,x                 ; $29:AAC4: BC B6 E5    ;
CODE_29AAC7:    STY $0862                   ; $29:AAC7: 8C 62 08    ;
CODE_29AACA:    LDA $58                     ; $29:AACA: A5 58       ;
CODE_29AACC:    BEQ CODE_29AAD6             ; $29:AACC: F0 08       ;
CODE_29AACE:    LDA $0863                   ; $29:AACE: AD 63 08    ;
CODE_29AAD1:    ORA #$40                    ; $29:AAD1: 09 40       ;
CODE_29AAD3:    STA $0863                   ; $29:AAD3: 8D 63 08    ;
CODE_29AAD6:    LDA $54                     ; $29:AAD6: A5 54       ;
CODE_29AAD8:    STA $0801                   ; $29:AAD8: 8D 01 08    ;
CODE_29AADB:    LDA #$A8                    ; $29:AADB: A9 A8       ;
CODE_29AADD:    STA $0802                   ; $29:AADD: 8D 02 08    ;
CODE_29AAE0:    LDA #$22                    ; $29:AAE0: A9 22       ;
CODE_29AAE2:    STA $0803                   ; $29:AAE2: 8D 03 08    ;
CODE_29AAE5:    STZ $0800                   ; $29:AAE5: 9C 00 08    ;
CODE_29AAE8:    LDA #$02                    ; $29:AAE8: A9 02       ;
CODE_29AAEA:    STA $0A20                   ; $29:AAEA: 8D 20 0A    ;
CODE_29AAED:    LDA $01                     ; $29:AAED: A5 01       ;
CODE_29AAEF:    AND #$80                    ; $29:AAEF: 29 80       ;
CODE_29AAF1:    BEQ CODE_29AAFD             ; $29:AAF1: F0 0A       ;
CODE_29AAF3:    LDA #$F0                    ; $29:AAF3: A9 F0       ;
CODE_29AAF5:    STA $0800                   ; $29:AAF5: 8D 00 08    ;
CODE_29AAF8:    LDA #$AA                    ; $29:AAF8: A9 AA       ;
CODE_29AAFA:    STA $0802                   ; $29:AAFA: 8D 02 08    ;
CODE_29AAFD:    RTS                         ; $29:AAFD: 60          ;

CODE_29AAFE:    LDX $0726                   ; $29:AAFE: AE 26 07    ;
CODE_29AB01:    LDA $93                     ; $29:AB01: A5 93       ;
CODE_29AB03:    BNE CODE_29AB5E             ; $29:AB03: D0 59       ;
CODE_29AB05:    LDY $0727                   ; $29:AB05: AC 27 07    ;
CODE_29AB08:    LDA $43,x                   ; $29:AB08: B5 43       ;
CODE_29AB0A:    SEC                         ; $29:AB0A: 38          ;
CODE_29AB0B:    SBC.w DATA_21C96D,y                 ; $29:AB0B: F9 6D C9    ;
CODE_29AB0E:    STA $5C                     ; $29:AB0E: 85 5C       ;
CODE_29AB10:    LDA $47,x                   ; $29:AB10: B5 47       ;
CODE_29AB12:    SEC                         ; $29:AB12: 38          ;
CODE_29AB13:    SBC #$20                    ; $29:AB13: E9 20       ;
CODE_29AB15:    STA $60                     ; $29:AB15: 85 60       ;
CODE_29AB17:    LDA #$00                    ; $29:AB17: A9 00       ;
CODE_29AB19:    STA $66                     ; $29:AB19: 85 66       ;
CODE_29AB1B:    STA $61                     ; $29:AB1B: 85 61       ;
CODE_29AB1D:    STA $5D                     ; $29:AB1D: 85 5D       ;
CODE_29AB1F:    LDA $47,x                   ; $29:AB1F: B5 47       ;
CODE_29AB21:    CMP #$20                    ; $29:AB21: C9 20       ;
CODE_29AB23:    BCS CODE_29AB31                     ; $29:AB23: B0 0C       ;
CODE_29AB25:    LDA #$01                    ; $29:AB25: A9 01       ;
CODE_29AB27:    STA $66                     ; $29:AB27: 85 66       ;
CODE_29AB29:    LDA #$FF                    ; $29:AB29: A9 FF       ;
CODE_29AB2B:    EOR $60                     ; $29:AB2B: 45 60       ;
CODE_29AB2D:    TAY                         ; $29:AB2D: A8          ;
CODE_29AB2E:    INY                         ; $29:AB2E: C8          ;
CODE_29AB2F:    STY $60                     ; $29:AB2F: 84 60       ;
CODE_29AB31:    LDY $0727                   ; $29:AB31: AC 27 07    ;
CODE_29AB34:    LDA $43,x                   ; $29:AB34: B5 43       ;
CODE_29AB36:    CMP.w DATA_21C96D,y                 ; $29:AB36: D9 6D C9    ;
CODE_29AB39:    BCS CODE_29AB49                     ; $29:AB39: B0 0E       ;
CODE_29AB3B:    LDA #$FF                    ; $29:AB3B: A9 FF       ;
CODE_29AB3D:    EOR $5C                     ; $29:AB3D: 45 5C       ;
CODE_29AB3F:    TAY                         ; $29:AB3F: A8          ;
CODE_29AB40:    INY                         ; $29:AB40: C8          ;
CODE_29AB41:    STY $5C                     ; $29:AB41: 84 5C       ;
CODE_29AB43:    LDA $66                     ; $29:AB43: A5 66       ;
CODE_29AB45:    ORA #$02                    ; $29:AB45: 09 02       ;
CODE_29AB47:    STA $66                     ; $29:AB47: 85 66       ;
CODE_29AB49:    LDY #$04                    ; $29:AB49: A0 04       ;
CODE_29AB4B:    CLC                         ; $29:AB4B: 18          ;
CODE_29AB4C:    LSR $5C                     ; $29:AB4C: 46 5C       ;
CODE_29AB4E:    ROR $5D                     ; $29:AB4E: 66 5D       ;
CODE_29AB50:    CLC                         ; $29:AB50: 18          ;
CODE_29AB51:    LSR $60                     ; $29:AB51: 46 60       ;
CODE_29AB53:    ROR $61                     ; $29:AB53: 66 61       ;
CODE_29AB55:    DEY                         ; $29:AB55: 88          ;
CODE_29AB56:    BPL CODE_29AB4B             ; $29:AB56: 10 F3       ;
CODE_29AB58:    LDA #$20                    ; $29:AB58: A9 20       ;
CODE_29AB5A:    STA $65                     ; $29:AB5A: 85 65       ;
CODE_29AB5C:    INC $93                     ; $29:AB5C: E6 93       ;
CODE_29AB5E:    LDA #$04                    ; $29:AB5E: A9 04       ;
CODE_29AB60:    STA $1203                   ; $29:AB60: 8D 03 12    ;
CODE_29AB63:    LDA $66                     ; $29:AB63: A5 66       ;
CODE_29AB65:    AND #$01                    ; $29:AB65: 29 01       ;
CODE_29AB67:    BEQ CODE_29AB7F             ; $29:AB67: F0 16       ;
CODE_29AB69:    LDA $62                     ; $29:AB69: A5 62       ;
CODE_29AB6B:    CLC                         ; $29:AB6B: 18          ;
CODE_29AB6C:    ADC $61                     ; $29:AB6C: 65 61       ;
CODE_29AB6E:    STA $62                     ; $29:AB6E: 85 62       ;
CODE_29AB70:    LDA $47,x                   ; $29:AB70: B5 47       ;
CODE_29AB72:    ADC $60                     ; $29:AB72: 65 60       ;
CODE_29AB74:    STA $47,x                   ; $29:AB74: 95 47       ;
CODE_29AB76:    LDA $45,x                   ; $29:AB76: B5 45       ;
CODE_29AB78:    ADC #$00                    ; $29:AB78: 69 00       ;
CODE_29AB7A:    STA $45,x                   ; $29:AB7A: 95 45       ;
CODE_29AB7C:    JMP CODE_29AB92             ; $29:AB7C: 4C 92 AB    ;

CODE_29AB7F:    LDA $62                     ; $29:AB7F: A5 62       ;
CODE_29AB81:    SEC                         ; $29:AB81: 38          ;
CODE_29AB82:    SBC $61                     ; $29:AB82: E5 61       ;
CODE_29AB84:    STA $62                     ; $29:AB84: 85 62       ;
CODE_29AB86:    LDA $47,x                   ; $29:AB86: B5 47       ;
CODE_29AB88:    SBC $60                     ; $29:AB88: E5 60       ;
CODE_29AB8A:    STA $47,x                   ; $29:AB8A: 95 47       ;
CODE_29AB8C:    LDA $45,x                   ; $29:AB8C: B5 45       ;
CODE_29AB8E:    SBC #$00                    ; $29:AB8E: E9 00       ;
CODE_29AB90:    STA $45,x                   ; $29:AB90: 95 45       ;
CODE_29AB92:    LDA $66                     ; $29:AB92: A5 66       ;
CODE_29AB94:    AND #$02                    ; $29:AB94: 29 02       ;
CODE_29AB96:    BEQ CODE_29ABA8             ; $29:AB96: F0 10       ;
CODE_29AB98:    LDA $5E                     ; $29:AB98: A5 5E       ;
CODE_29AB9A:    CLC                         ; $29:AB9A: 18          ;
CODE_29AB9B:    ADC $5D                     ; $29:AB9B: 65 5D       ;
CODE_29AB9D:    STA $5E                     ; $29:AB9D: 85 5E       ;
CODE_29AB9F:    LDA $43,x                   ; $29:AB9F: B5 43       ;
CODE_29ABA1:    ADC $5C                     ; $29:ABA1: 65 5C       ;
CODE_29ABA3:    STA $43,x                   ; $29:ABA3: 95 43       ;
CODE_29ABA5:    JMP CODE_29ABB5             ; $29:ABA5: 4C B5 AB    ;

CODE_29ABA8:    LDA $5E                     ; $29:ABA8: A5 5E       ;
CODE_29ABAA:    SEC                         ; $29:ABAA: 38          ;
CODE_29ABAB:    SBC $5D                     ; $29:ABAB: E5 5D       ;
CODE_29ABAD:    STA $5E                     ; $29:ABAD: 85 5E       ;
CODE_29ABAF:    LDA $43,x                   ; $29:ABAF: B5 43       ;
CODE_29ABB1:    SBC $5C                     ; $29:ABB1: E5 5C       ;
CODE_29ABB3:    STA $43,x                   ; $29:ABB3: 95 43       ;
CODE_29ABB5:    DEC $65                     ; $29:ABB5: C6 65       ;
CODE_29ABB7:    BNE CODE_29ABE2             ; $29:ABB7: D0 29       ;
CODE_29ABB9:    LDA #$08                    ; $29:ABB9: A9 08       ;
CODE_29ABBB:    STA $0728                   ; $29:ABBB: 8D 28 07    ;
CODE_29ABBE:    LDX $0726                   ; $29:ABBE: AE 26 07    ;
CODE_29ABC1:    LDA #$00                    ; $29:ABC1: A9 00       ;
CODE_29ABC3:    STA $93                     ; $29:ABC3: 85 93       ;
CODE_29ABC5:    STA $005A,x                 ; $29:ABC5: 9D 5A 00    ;
CODE_29ABC8:    STA $7E3985,x               ; $29:ABC8: 9F 85 39 7E ;
CODE_29ABCC:    STA $7E3987,x               ; $29:ABCC: 9F 87 39 7E ;
CODE_29ABD0:    LDA $43,x                   ; $29:ABD0: B5 43       ;
CODE_29ABD2:    STA $7E397D,x               ; $29:ABD2: 9F 7D 39 7E ;
CODE_29ABD6:    LDA $45,x                   ; $29:ABD6: B5 45       ;
CODE_29ABD8:    STA $7E397F,x               ; $29:ABD8: 9F 7F 39 7E ;
CODE_29ABDC:    LDA $47,x                   ; $29:ABDC: B5 47       ;
CODE_29ABDE:    STA $7E3981,x               ; $29:ABDE: 9F 81 39 7E ;
CODE_29ABE2:    JSL CODE_238C1B             ; $29:ABE2: 22 1B 8C 23 ;
CODE_29ABE6:    RTL                         ; $29:ABE6: 6B          ;

CODE_29ABE7:    LDX $0726                   ; $29:ABE7: AE 26 07    ;
CODE_29ABEA:    LDA $47,x                   ; $29:ABEA: B5 47       ;
CODE_29ABEC:    SEC                         ; $29:ABEC: 38          ;
CODE_29ABED:    SBC #$02                    ; $29:ABED: E9 02       ;
CODE_29ABEF:    STA $47,x                   ; $29:ABEF: 95 47       ;
CODE_29ABF1:    LDA $45,x                   ; $29:ABF1: B5 45       ;
CODE_29ABF3:    SBC #$00                    ; $29:ABF3: E9 00       ;
CODE_29ABF5:    STA $45,x                   ; $29:ABF5: 95 45       ;
CODE_29ABF7:    LDA $47,x                   ; $29:ABF7: B5 47       ;
CODE_29ABF9:    SEC                         ; $29:ABF9: 38          ;
CODE_29ABFA:    SBC $0210                   ; $29:ABFA: ED 10 02    ;
CODE_29ABFD:    BNE CODE_29AC0E             ; $29:ABFD: D0 0F       ;
CODE_29ABFF:    LDA #$00                    ; $29:ABFF: A9 00       ;
CODE_29AC01:    STA $0722,x                 ; $29:AC01: 9D 22 07    ;
CODE_29AC04:    STA $0724,x                 ; $29:AC04: 9D 24 07    ;
CODE_29AC07:    STA $7E3977,x               ; $29:AC07: 9F 77 39 7E ;
CODE_29AC0B:    INC $0728                   ; $29:AC0B: EE 28 07    ;
CODE_29AC0E:    LDA #$04                    ; $29:AC0E: A9 04       ;
CODE_29AC10:    STA $1203                   ; $29:AC10: 8D 03 12    ;
CODE_29AC13:    JSR CODE_29AC1B             ; $29:AC13: 20 1B AC    ;
CODE_29AC16:    JSL CODE_238C1B             ; $29:AC16: 22 1B 8C 23 ;
CODE_29AC1A:    RTL                         ; $29:AC1A: 6B          ;

CODE_29AC1B:    LDX $0726                   ; $29:AC1B: AE 26 07    ;
CODE_29AC1E:    LDA $43,x                   ; $29:AC1E: B5 43       ;
CODE_29AC20:    STA $0801                   ; $29:AC20: 8D 01 08    ;
CODE_29AC23:    LDA #$A8                    ; $29:AC23: A9 A8       ;
CODE_29AC25:    STA $0802                   ; $29:AC25: 8D 02 08    ;
CODE_29AC28:    LDA #$20                    ; $29:AC28: A9 20       ;
CODE_29AC2A:    STA $0803                   ; $29:AC2A: 8D 03 08    ;
CODE_29AC2D:    LDA #$00                    ; $29:AC2D: A9 00       ;
CODE_29AC2F:    STA $0800                   ; $29:AC2F: 8D 00 08    ;
CODE_29AC32:    LDA $47,x                   ; $29:AC32: B5 47       ;
CODE_29AC34:    SEC                         ; $29:AC34: 38          ;
CODE_29AC35:    SBC $0210                   ; $29:AC35: ED 10 02    ;
CODE_29AC38:    AND #$80                    ; $29:AC38: 29 80       ;
CODE_29AC3A:    BEQ CODE_29AC46             ; $29:AC3A: F0 0A       ;
CODE_29AC3C:    LDA #$F0                    ; $29:AC3C: A9 F0       ;
CODE_29AC3E:    STA $0800                   ; $29:AC3E: 8D 00 08    ;
CODE_29AC41:    LDA #$AA                    ; $29:AC41: A9 AA       ;
CODE_29AC43:    STA $0802                   ; $29:AC43: 8D 02 08    ;
CODE_29AC46:    LDA #$02                    ; $29:AC46: A9 02       ;
CODE_29AC48:    STA $0A20                   ; $29:AC48: 8D 20 0A    ;
CODE_29AC4B:    RTS                         ; $29:AC4B: 60          ;

CODE_29AC4C:    LDX $0726                   ; $29:AC4C: AE 26 07    ;
CODE_29AC4F:    LDA #$F0                    ; $29:AC4F: A9 F0       ;
CODE_29AC51:    STA $47,x                   ; $29:AC51: 95 47       ;
CODE_29AC53:    LDY $0727                   ; $29:AC53: AC 27 07    ;
CODE_29AC56:    LDA.w DATA_21C96D,y                 ; $29:AC56: B9 6D C9    ;
CODE_29AC59:    STA $43,x                   ; $29:AC59: 95 43       ;
CODE_29AC5B:    INC $0728                   ; $29:AC5B: EE 28 07    ;
CODE_29AC5E:    JMP CODE_29AC0E             ; $29:AC5E: 4C 0E AC    ;

CODE_29AC61:    LDX $0726                   ; $29:AC61: AE 26 07    ;
CODE_29AC64:    LDA $47,x                   ; $29:AC64: B5 47       ;
CODE_29AC66:    SEC                         ; $29:AC66: 38          ;
CODE_29AC67:    SBC #$02                    ; $29:AC67: E9 02       ;
CODE_29AC69:    STA $47,x                   ; $29:AC69: 95 47       ;
CODE_29AC6B:    CMP #$20                    ; $29:AC6B: C9 20       ;
CODE_29AC6D:    BNE CODE_29AC72             ; $29:AC6D: D0 03       ;
CODE_29AC6F:    JMP CODE_29ABB9             ; $29:AC6F: 4C B9 AB    ;

CODE_29AC72:    LDA #$04                    ; $29:AC72: A9 04       ;
CODE_29AC74:    STA $1203                   ; $29:AC74: 8D 03 12    ;
CODE_29AC77:    JMP CODE_29AC0E             ; $29:AC77: 4C 0E AC    ;

CODE_29AC7A:    LDX $0726                   ; $29:AC7A: AE 26 07    ;
CODE_29AC7D:    LDA $93                     ; $29:AC7D: A5 93       ;
CODE_29AC7F:    BEQ CODE_29AC84             ; $29:AC7F: F0 03       ;
CODE_29AC81:    JMP CODE_29AD61             ; $29:AC81: 4C 61 AD    ;

CODE_29AC84:    LDY #$0D                    ; $29:AC84: A0 0D       ;
CODE_29AC86:    LDA $1F17,y                 ; $29:AC86: B9 17 1F    ;
CODE_29AC89:    BNE CODE_29AC91             ; $29:AC89: D0 06       ;
CODE_29AC8B:    DEY                         ; $29:AC8B: 88          ;
CODE_29AC8C:    BNE CODE_29AC86             ; $29:AC8C: D0 F8       ;
CODE_29AC8E:    JMP CODE_29ACC1             ; $29:AC8E: 4C C1 AC    ;

CODE_29AC91:    LDA $43,x                   ; $29:AC91: B5 43       ;
CODE_29AC93:    CMP $1EED,y                 ; $29:AC93: D9 ED 1E    ;
CODE_29AC96:    BNE CODE_29AC8B             ; $29:AC96: D0 F3       ;
CODE_29AC98:    LDA $45,x                   ; $29:AC98: B5 45       ;
CODE_29AC9A:    CMP $1F09,y                 ; $29:AC9A: D9 09 1F    ;
CODE_29AC9D:    BNE CODE_29AC8B             ; $29:AC9D: D0 EC       ;
CODE_29AC9F:    LDA $47,x                   ; $29:AC9F: B5 47       ;
CODE_29ACA1:    CMP $1EFB,y                 ; $29:ACA1: D9 FB 1E    ;
CODE_29ACA4:    BNE CODE_29AC8B             ; $29:ACA4: D0 E5       ;
CODE_29ACA6:    LDA $1F17,y                 ; $29:ACA6: B9 17 1F    ;
CODE_29ACA9:    CMP #$02                    ; $29:ACA9: C9 02       ;
CODE_29ACAB:    BNE CODE_29ACB5             ; $29:ACAB: D0 08       ;
CODE_29ACAD:    LDA #$20                    ; $29:ACAD: A9 20       ;
CODE_29ACAF:    STA $053D                   ; $29:ACAF: 8D 3D 05    ;
CODE_29ACB2:    JMP CODE_29AC8B             ; $29:ACB2: 4C 8B AC    ;

CODE_29ACB5:    CMP #$0B                    ; $29:ACB5: C9 0B       ;
CODE_29ACB7:    BNE CODE_29AC8B             ; $29:ACB7: D0 D2       ;
CODE_29ACB9:    LDA #$03                    ; $29:ACB9: A9 03       ;
CODE_29ACBB:    STA $1F17,y                 ; $29:ACBB: 99 17 1F    ;
CODE_29ACBE:    JMP CODE_29AC8B             ; $29:ACBE: 4C 8B AC    ;

CODE_29ACC1:    LDA $7E397D,x               ; $29:ACC1: BF 7D 39 7E ;
CODE_29ACC5:    SEC                         ; $29:ACC5: 38          ;
CODE_29ACC6:    SBC $43,x                   ; $29:ACC6: F5 43       ;
CODE_29ACC8:    STA $5C                     ; $29:ACC8: 85 5C       ;
CODE_29ACCA:    LDA $7E397F,x               ; $29:ACCA: BF 7F 39 7E ;
CODE_29ACCE:    CMP $45,x                   ; $29:ACCE: D5 45       ;
CODE_29ACD0:    BEQ CODE_29ACD6             ; $29:ACD0: F0 04       ;
CODE_29ACD2:    BCS CODE_29ACDE                     ; $29:ACD2: B0 0A       ;
CODE_29ACD4:    BCC CODE_29ACF4             ; $29:ACD4: 90 1E       ;
CODE_29ACD6:    LDA $7E3981,x               ; $29:ACD6: BF 81 39 7E ;
CODE_29ACDA:    CMP $47,x                   ; $29:ACDA: D5 47       ;
CODE_29ACDC:    BCC CODE_29ACF4             ; $29:ACDC: 90 16       ;
CODE_29ACDE:    LDA $7E3981,x               ; $29:ACDE: BF 81 39 7E ;
CODE_29ACE2:    SEC                         ; $29:ACE2: 38          ;
CODE_29ACE3:    SBC $47,x                   ; $29:ACE3: F5 47       ;
CODE_29ACE5:    STA $61                     ; $29:ACE5: 85 61       ;
CODE_29ACE7:    LDA $7E397F,x               ; $29:ACE7: BF 7F 39 7E ;
CODE_29ACEB:    SBC $45,x                   ; $29:ACEB: F5 45       ;
CODE_29ACED:    STA $60                     ; $29:ACED: 85 60       ;
CODE_29ACEF:    LDY #$00                    ; $29:ACEF: A0 00       ;
CODE_29ACF1:    JMP CODE_29AD07             ; $29:ACF1: 4C 07 AD    ;

CODE_29ACF4:    LDA $47,x                   ; $29:ACF4: B5 47       ;
CODE_29ACF6:    SEC                         ; $29:ACF6: 38          ;
CODE_29ACF7:    SBC $7E3981,x               ; $29:ACF7: FF 81 39 7E ;
CODE_29ACFB:    STA $61                     ; $29:ACFB: 85 61       ;
CODE_29ACFD:    LDA $45,x                   ; $29:ACFD: B5 45       ;
CODE_29ACFF:    SBC $7E397F,x               ; $29:ACFF: FF 7F 39 7E ;
CODE_29AD03:    STA $60                     ; $29:AD03: 85 60       ;
CODE_29AD05:    LDY #$01                    ; $29:AD05: A0 01       ;
CODE_29AD07:    STY $66                     ; $29:AD07: 84 66       ;
CODE_29AD09:    LDA #$00                    ; $29:AD09: A9 00       ;
CODE_29AD0B:    STA $62                     ; $29:AD0B: 85 62       ;
CODE_29AD0D:    STA $5D                     ; $29:AD0D: 85 5D       ;
CODE_29AD0F:    LDA $7E397D,x               ; $29:AD0F: BF 7D 39 7E ;
CODE_29AD13:    CMP $43,x                   ; $29:AD13: D5 43       ;
CODE_29AD15:    BCS CODE_29AD25                     ; $29:AD15: B0 0E       ;
CODE_29AD17:    LDA #$FF                    ; $29:AD17: A9 FF       ;
CODE_29AD19:    EOR $5C                     ; $29:AD19: 45 5C       ;
CODE_29AD1B:    TAY                         ; $29:AD1B: A8          ;
CODE_29AD1C:    INY                         ; $29:AD1C: C8          ;
CODE_29AD1D:    STY $5C                     ; $29:AD1D: 84 5C       ;
CODE_29AD1F:    LDA $66                     ; $29:AD1F: A5 66       ;
CODE_29AD21:    ORA #$02                    ; $29:AD21: 09 02       ;
CODE_29AD23:    STA $66                     ; $29:AD23: 85 66       ;
CODE_29AD25:    LDA $60                     ; $29:AD25: A5 60       ;
CODE_29AD27:    BNE CODE_29AD44             ; $29:AD27: D0 1B       ;
CODE_29AD29:    LDA $47,x                   ; $29:AD29: B5 47       ;
CODE_29AD2B:    SEC                         ; $29:AD2B: 38          ;
CODE_29AD2C:    SBC $0210                   ; $29:AD2C: ED 10 02    ;
CODE_29AD2F:    TAY                         ; $29:AD2F: A8          ;
CODE_29AD30:    LDA $66                     ; $29:AD30: A5 66       ;
CODE_29AD32:    AND #$01                    ; $29:AD32: 29 01       ;
CODE_29AD34:    BNE CODE_29AD3E             ; $29:AD34: D0 08       ;
CODE_29AD36:    TYA                         ; $29:AD36: 98          ;
CODE_29AD37:    CLC                         ; $29:AD37: 18          ;
CODE_29AD38:    ADC $61                     ; $29:AD38: 65 61       ;
CODE_29AD3A:    BCC CODE_29AD4A             ; $29:AD3A: 90 0E       ;
CODE_29AD3C:    BCS CODE_29AD44                     ; $29:AD3C: B0 06       ;
CODE_29AD3E:    TYA                         ; $29:AD3E: 98          ;
CODE_29AD3F:    SEC                         ; $29:AD3F: 38          ;
CODE_29AD40:    SBC $61                     ; $29:AD40: E5 61       ;
CODE_29AD42:    BCS CODE_29AD4A                     ; $29:AD42: B0 06       ;
CODE_29AD44:    INC $0729                   ; $29:AD44: EE 29 07    ;
CODE_29AD47:    JMP CODE_29ADFC             ; $29:AD47: 4C FC AD    ;

CODE_29AD4A:    LDY #$04                    ; $29:AD4A: A0 04       ;
CODE_29AD4C:    CLC                         ; $29:AD4C: 18          ;
CODE_29AD4D:    LSR $5C                     ; $29:AD4D: 46 5C       ;
CODE_29AD4F:    ROR $5D                     ; $29:AD4F: 66 5D       ;
CODE_29AD51:    CLC                         ; $29:AD51: 18          ;
CODE_29AD52:    LSR $60                     ; $29:AD52: 46 60       ;
CODE_29AD54:    ROR $61                     ; $29:AD54: 66 61       ;
CODE_29AD56:    ROR $62                     ; $29:AD56: 66 62       ;
CODE_29AD58:    DEY                         ; $29:AD58: 88          ;
CODE_29AD59:    BPL CODE_29AD4C             ; $29:AD59: 10 F1       ;
CODE_29AD5B:    LDA #$20                    ; $29:AD5B: A9 20       ;
CODE_29AD5D:    STA $65                     ; $29:AD5D: 85 65       ;
CODE_29AD5F:    INC $93                     ; $29:AD5F: E6 93       ;
CODE_29AD61:    LDA $65                     ; $29:AD61: A5 65       ;
CODE_29AD63:    BEQ CODE_29ADBE             ; $29:AD63: F0 59       ;
CODE_29AD65:    LDA #$04                    ; $29:AD65: A9 04       ;
CODE_29AD67:    STA $1203                   ; $29:AD67: 8D 03 12    ;
CODE_29AD6A:    LDA $66                     ; $29:AD6A: A5 66       ;
CODE_29AD6C:    AND #$01                    ; $29:AD6C: 29 01       ;
CODE_29AD6E:    BNE CODE_29AD86             ; $29:AD6E: D0 16       ;
CODE_29AD70:    LDA $63                     ; $29:AD70: A5 63       ;
CODE_29AD72:    CLC                         ; $29:AD72: 18          ;
CODE_29AD73:    ADC $62                     ; $29:AD73: 65 62       ;
CODE_29AD75:    STA $63                     ; $29:AD75: 85 63       ;
CODE_29AD77:    LDA $47,x                   ; $29:AD77: B5 47       ;
CODE_29AD79:    ADC $61                     ; $29:AD79: 65 61       ;
CODE_29AD7B:    STA $47,x                   ; $29:AD7B: 95 47       ;
CODE_29AD7D:    LDA $45,x                   ; $29:AD7D: B5 45       ;
CODE_29AD7F:    ADC $60                     ; $29:AD7F: 65 60       ;
CODE_29AD81:    STA $45,x                   ; $29:AD81: 95 45       ;
CODE_29AD83:    JMP CODE_29AD99             ; $29:AD83: 4C 99 AD    ;

CODE_29AD86:    LDA $63                     ; $29:AD86: A5 63       ;
CODE_29AD88:    SEC                         ; $29:AD88: 38          ;
CODE_29AD89:    SBC $62                     ; $29:AD89: E5 62       ;
CODE_29AD8B:    STA $63                     ; $29:AD8B: 85 63       ;
CODE_29AD8D:    LDA $47,x                   ; $29:AD8D: B5 47       ;
CODE_29AD8F:    SBC $61                     ; $29:AD8F: E5 61       ;
CODE_29AD91:    STA $47,x                   ; $29:AD91: 95 47       ;
CODE_29AD93:    LDA $45,x                   ; $29:AD93: B5 45       ;
CODE_29AD95:    SBC $60                     ; $29:AD95: E5 60       ;
CODE_29AD97:    STA $45,x                   ; $29:AD97: 95 45       ;
CODE_29AD99:    LDA $66                     ; $29:AD99: A5 66       ;
CODE_29AD9B:    AND #$02                    ; $29:AD9B: 29 02       ;
CODE_29AD9D:    BNE CODE_29ADAF             ; $29:AD9D: D0 10       ;
CODE_29AD9F:    LDA $5E                     ; $29:AD9F: A5 5E       ;
CODE_29ADA1:    CLC                         ; $29:ADA1: 18          ;
CODE_29ADA2:    ADC $5D                     ; $29:ADA2: 65 5D       ;
CODE_29ADA4:    STA $5E                     ; $29:ADA4: 85 5E       ;
CODE_29ADA6:    LDA $43,x                   ; $29:ADA6: B5 43       ;
CODE_29ADA8:    ADC $5C                     ; $29:ADA8: 65 5C       ;
CODE_29ADAA:    STA $43,x                   ; $29:ADAA: 95 43       ;
CODE_29ADAC:    JMP CODE_29ADBC             ; $29:ADAC: 4C BC AD    ;

CODE_29ADAF:    LDA $5E                     ; $29:ADAF: A5 5E       ;
CODE_29ADB1:    SEC                         ; $29:ADB1: 38          ;
CODE_29ADB2:    SBC $5D                     ; $29:ADB2: E5 5D       ;
CODE_29ADB4:    STA $5E                     ; $29:ADB4: 85 5E       ;
CODE_29ADB6:    LDA $43,x                   ; $29:ADB6: B5 43       ;
CODE_29ADB8:    SBC $5C                     ; $29:ADB8: E5 5C       ;
CODE_29ADBA:    STA $43,x                   ; $29:ADBA: 95 43       ;
CODE_29ADBC:    DEC $65                     ; $29:ADBC: C6 65       ;
CODE_29ADBE:    JSL CODE_238C1B             ; $29:ADBE: 22 1B 8C 23 ;
CODE_29ADC2:    LDA $65                     ; $29:ADC2: A5 65       ;
CODE_29ADC4:    ORA $053D                   ; $29:ADC4: 0D 3D 05    ;
CODE_29ADC7:    ORA $0710                   ; $29:ADC7: 0D 10 07    ;
CODE_29ADCA:    BNE CODE_29ADFB             ; $29:ADCA: D0 2F       ;
CODE_29ADCC:    LDA #$0B                    ; $29:ADCC: A9 0B       ;
CODE_29ADCE:    STA $0729                   ; $29:ADCE: 8D 29 07    ;
CODE_29ADD1:    LDX $0726                   ; $29:ADD1: AE 26 07    ;
CODE_29ADD4:    LDA $43,x                   ; $29:ADD4: B5 43       ;
CODE_29ADD6:    STA $7E3975,x               ; $29:ADD6: 9F 75 39 7E ;
CODE_29ADDA:    LDA $45,x                   ; $29:ADDA: B5 45       ;
CODE_29ADDC:    STA $7E3977,x               ; $29:ADDC: 9F 77 39 7E ;
CODE_29ADE0:    LDA $47,x                   ; $29:ADE0: B5 47       ;
CODE_29ADE2:    STA $7E3979,x               ; $29:ADE2: 9F 79 39 7E ;
CODE_29ADE6:    LDA $7E3985,x               ; $29:ADE6: BF 85 39 7E ;
CODE_29ADEA:    STA $0722,x                 ; $29:ADEA: 9D 22 07    ;
CODE_29ADED:    LDA $7E3987,x               ; $29:ADED: BF 87 39 7E ;
CODE_29ADF1:    STA $0724,x                 ; $29:ADF1: 9D 24 07    ;
CODE_29ADF4:    LDA #$00                    ; $29:ADF4: A9 00       ;
CODE_29ADF6:    STA $93                     ; $29:ADF6: 85 93       ;
CODE_29ADF8:    STA $073F,x                 ; $29:ADF8: 9D 3F 07    ;
CODE_29ADFB:    RTL                         ; $29:ADFB: 6B          ;

CODE_29ADFC:    LDX $0726                   ; $29:ADFC: AE 26 07    ;
CODE_29ADFF:    LDA $66                     ; $29:ADFF: A5 66       ;
CODE_29AE01:    AND #$01                    ; $29:AE01: 29 01       ;
CODE_29AE03:    BEQ CODE_29AE1D             ; $29:AE03: F0 18       ;
CODE_29AE05:    LDA $47,x                   ; $29:AE05: B5 47       ;
CODE_29AE07:    SEC                         ; $29:AE07: 38          ;
CODE_29AE08:    SBC #$02                    ; $29:AE08: E9 02       ;
CODE_29AE0A:    STA $47,x                   ; $29:AE0A: 95 47       ;
CODE_29AE0C:    LDA $45,x                   ; $29:AE0C: B5 45       ;
CODE_29AE0E:    SBC #$00                    ; $29:AE0E: E9 00       ;
CODE_29AE10:    STA $45,x                   ; $29:AE10: 95 45       ;
CODE_29AE12:    LDA $47,x                   ; $29:AE12: B5 47       ;
CODE_29AE14:    SEC                         ; $29:AE14: 38          ;
CODE_29AE15:    SBC $0210                   ; $29:AE15: ED 10 02    ;
CODE_29AE18:    BEQ CODE_29AE34             ; $29:AE18: F0 1A       ;
CODE_29AE1A:    JMP CODE_29AE45             ; $29:AE1A: 4C 45 AE    ;

CODE_29AE1D:    LDA $47,x                   ; $29:AE1D: B5 47       ;
CODE_29AE1F:    CLC                         ; $29:AE1F: 18          ;
CODE_29AE20:    ADC #$02                    ; $29:AE20: 69 02       ;
CODE_29AE22:    STA $47,x                   ; $29:AE22: 95 47       ;
CODE_29AE24:    LDA $45,x                   ; $29:AE24: B5 45       ;
CODE_29AE26:    ADC #$00                    ; $29:AE26: 69 00       ;
CODE_29AE28:    STA $45,x                   ; $29:AE28: 95 45       ;
CODE_29AE2A:    LDA $47,x                   ; $29:AE2A: B5 47       ;
CODE_29AE2C:    SEC                         ; $29:AE2C: 38          ;
CODE_29AE2D:    SBC $0210                   ; $29:AE2D: ED 10 02    ;
CODE_29AE30:    CMP #$F0                    ; $29:AE30: C9 F0       ;
CODE_29AE32:    BNE CODE_29AE45             ; $29:AE32: D0 11       ;
CODE_29AE34:    LDA $7E3985,x               ; $29:AE34: BF 85 39 7E ;
CODE_29AE38:    STA $0722,x                 ; $29:AE38: 9D 22 07    ;
CODE_29AE3B:    LDA $7E3987,x               ; $29:AE3B: BF 87 39 7E ;
CODE_29AE3F:    STA $0724,x                 ; $29:AE3F: 9D 24 07    ;
CODE_29AE42:    INC $0729                   ; $29:AE42: EE 29 07    ;
CODE_29AE45:    LDA #$04                    ; $29:AE45: A9 04       ;
CODE_29AE47:    STA $1203                   ; $29:AE47: 8D 03 12    ;
CODE_29AE4A:    JSR CODE_29AC1B             ; $29:AE4A: 20 1B AC    ;
CODE_29AE4D:    JSL CODE_238C1B             ; $29:AE4D: 22 1B 8C 23 ;
CODE_29AE51:    RTL                         ; $29:AE51: 6B          ;

CODE_29AE52:    LDX $0726                   ; $29:AE52: AE 26 07    ;
CODE_29AE55:    LDA $7E397D,x               ; $29:AE55: BF 7D 39 7E ;
CODE_29AE59:    STA $43,x                   ; $29:AE59: 95 43       ;
CODE_29AE5B:    LDA $7E397F,x               ; $29:AE5B: BF 7F 39 7E ;
CODE_29AE5F:    STA $45,x                   ; $29:AE5F: 95 45       ;
CODE_29AE61:    LDA $66                     ; $29:AE61: A5 66       ;
CODE_29AE63:    AND #$01                    ; $29:AE63: 29 01       ;
CODE_29AE65:    BEQ CODE_29AE85             ; $29:AE65: F0 1E       ;
CODE_29AE67:    LDY #$F0                    ; $29:AE67: A0 F0       ;
CODE_29AE69:    LDA $0210                   ; $29:AE69: AD 10 02    ;
CODE_29AE6C:    BEQ CODE_29AE80             ; $29:AE6C: F0 12       ;
CODE_29AE6E:    LDA $7E3981,x               ; $29:AE6E: BF 81 39 7E ;
CODE_29AE72:    CLC                         ; $29:AE72: 18          ;
CODE_29AE73:    ADC $0210                   ; $29:AE73: 6D 10 02    ;
CODE_29AE76:    LDA $7E397F,x               ; $29:AE76: BF 7F 39 7E ;
CODE_29AE7A:    ADC #$00                    ; $29:AE7A: 69 00       ;
CODE_29AE7C:    STA $45,x                   ; $29:AE7C: 95 45       ;
CODE_29AE7E:    LDY #$70                    ; $29:AE7E: A0 70       ;
CODE_29AE80:    STY $47,x                   ; $29:AE80: 94 47       ;
CODE_29AE82:    JMP CODE_29AE9F             ; $29:AE82: 4C 9F AE    ;

CODE_29AE85:    LDA $0210                   ; $29:AE85: AD 10 02    ;
CODE_29AE88:    BEQ CODE_29AE9A             ; $29:AE88: F0 10       ;
CODE_29AE8A:    LDA $7E3981,x               ; $29:AE8A: BF 81 39 7E ;
CODE_29AE8E:    SEC                         ; $29:AE8E: 38          ;
CODE_29AE8F:    SBC $0210                   ; $29:AE8F: ED 10 02    ;
CODE_29AE92:    LDA $7E397F,x               ; $29:AE92: BF 7F 39 7E ;
CODE_29AE96:    SBC #$00                    ; $29:AE96: E9 00       ;
CODE_29AE98:    STA $45,x                   ; $29:AE98: 95 45       ;
CODE_29AE9A:    LDA $0210                   ; $29:AE9A: AD 10 02    ;
CODE_29AE9D:    STA $47,x                   ; $29:AE9D: 95 47       ;
CODE_29AE9F:    LDA #$04                    ; $29:AE9F: A9 04       ;
CODE_29AEA1:    STA $1203                   ; $29:AEA1: 8D 03 12    ;
CODE_29AEA4:    INC $0729                   ; $29:AEA4: EE 29 07    ;
CODE_29AEA7:    JMP CODE_29AE45             ; $29:AEA7: 4C 45 AE    ;

CODE_29AEAA:    LDX $0726                   ; $29:AEAA: AE 26 07    ;
CODE_29AEAD:    LDA $66                     ; $29:AEAD: A5 66       ;
CODE_29AEAF:    AND #$01                    ; $29:AEAF: 29 01       ;
CODE_29AEB1:    BEQ CODE_29AECB             ; $29:AEB1: F0 18       ;
CODE_29AEB3:    LDA $47,x                   ; $29:AEB3: B5 47       ;
CODE_29AEB5:    SEC                         ; $29:AEB5: 38          ;
CODE_29AEB6:    SBC #$02                    ; $29:AEB6: E9 02       ;
CODE_29AEB8:    STA $47,x                   ; $29:AEB8: 95 47       ;
CODE_29AEBA:    LDA $45,x                   ; $29:AEBA: B5 45       ;
CODE_29AEBC:    SBC #$00                    ; $29:AEBC: E9 00       ;
CODE_29AEBE:    STA $45,x                   ; $29:AEBE: 95 45       ;
CODE_29AEC0:    LDA $47,x                   ; $29:AEC0: B5 47       ;
CODE_29AEC2:    CMP $7E3981,x               ; $29:AEC2: DF 81 39 7E ;
CODE_29AEC6:    BEQ CODE_29AEE0             ; $29:AEC6: F0 18       ;
CODE_29AEC8:    JMP CODE_29AEFE             ; $29:AEC8: 4C FE AE    ;

CODE_29AECB:    LDA $47,x                   ; $29:AECB: B5 47       ;
CODE_29AECD:    CLC                         ; $29:AECD: 18          ;
CODE_29AECE:    ADC #$02                    ; $29:AECE: 69 02       ;
CODE_29AED0:    STA $47,x                   ; $29:AED0: 95 47       ;
CODE_29AED2:    LDA $45,x                   ; $29:AED2: B5 45       ;
CODE_29AED4:    ADC #$00                    ; $29:AED4: 69 00       ;
CODE_29AED6:    STA $45,x                   ; $29:AED6: 95 45       ;
CODE_29AED8:    LDA $47,x                   ; $29:AED8: B5 47       ;
CODE_29AEDA:    CMP $7E3981,x               ; $29:AEDA: DF 81 39 7E ;
CODE_29AEDE:    BNE CODE_29AEFE             ; $29:AEDE: D0 1E       ;
CODE_29AEE0:    LDA #$0B                    ; $29:AEE0: A9 0B       ;
CODE_29AEE2:    STA $0729                   ; $29:AEE2: 8D 29 07    ;
CODE_29AEE5:    LDA $43,x                   ; $29:AEE5: B5 43       ;
CODE_29AEE7:    STA $7E3975,x               ; $29:AEE7: 9F 75 39 7E ;
CODE_29AEEB:    LDA $45,x                   ; $29:AEEB: B5 45       ;
CODE_29AEED:    STA $7E3977,x               ; $29:AEED: 9F 77 39 7E ;
CODE_29AEF1:    LDA $47,x                   ; $29:AEF1: B5 47       ;
CODE_29AEF3:    STA $7E3979,x               ; $29:AEF3: 9F 79 39 7E ;
CODE_29AEF7:    LDA #$00                    ; $29:AEF7: A9 00       ;
CODE_29AEF9:    STA $93                     ; $29:AEF9: 85 93       ;
CODE_29AEFB:    STA $073F,x                 ; $29:AEFB: 9D 3F 07    ;
CODE_29AEFE:    JMP CODE_29AE45             ; $29:AEFE: 4C 45 AE    ;

DATA_29AF01:        db $00,$00,$00,$00

CODE_29AF05:    JSL CODE_238DD8             ; $29:AF05: 22 D8 8D 23 ;
CODE_29AF09:    LDX #$04                    ; $29:AF09: A2 04       ;
CODE_29AF0B:    CMP.w DATA_21E5F2,x                 ; $29:AF0B: DD F2 E5    ;
CODE_29AF0E:    BEQ CODE_29AF16             ; $29:AF0E: F0 06       ;
CODE_29AF10:    DEX                         ; $29:AF10: CA          ;
CODE_29AF11:    BPL CODE_29AF0B             ; $29:AF11: 10 F8       ;
CODE_29AF13:    JMP CODE_29AF1F             ; $29:AF13: 4C 1F AF    ;

CODE_29AF16:    LDA $7E396D                 ; $29:AF16: AF 6D 39 7E ;
CODE_29AF1A:    INC A                       ; $29:AF1A: 1A          ;
CODE_29AF1B:    STA $7E396D                 ; $29:AF1B: 8F 6D 39 7E ;
CODE_29AF1F:    JSL CODE_238DD8             ; $29:AF1F: 22 D8 8D 23 ;
CODE_29AF23:    AND #$C0                    ; $29:AF23: 29 C0       ;
CODE_29AF25:    CLC                         ; $29:AF25: 18          ;
CODE_29AF26:    ROL A                       ; $29:AF26: 2A          ;
CODE_29AF27:    ROL A                       ; $29:AF27: 2A          ;
CODE_29AF28:    ROL A                       ; $29:AF28: 2A          ;
CODE_29AF29:    TAY                         ; $29:AF29: A8          ;
CODE_29AF2A:    LDX #$04                    ; $29:AF2A: A2 04       ;
CODE_29AF2C:    LDA $B3                     ; $29:AF2C: A5 B3       ;
CODE_29AF2E:    CMP.w DATA_21E5CD,x                 ; $29:AF2E: DD CD E5    ;
CODE_29AF31:    BEQ CODE_29AF3B             ; $29:AF31: F0 08       ;
CODE_29AF33:    DEX                         ; $29:AF33: CA          ;
CODE_29AF34:    BPL CODE_29AF2E             ; $29:AF34: 10 F8       ;
CODE_29AF36:    CMP $1E9A,y                 ; $29:AF36: D9 9A 1E    ;
CODE_29AF39:    BCC CODE_29AF48             ; $29:AF39: 90 0D       ;
CODE_29AF3B:    LDA $20                     ; $29:AF3B: A5 20       ;
CODE_29AF3D:    BEQ CODE_29AF4B             ; $29:AF3D: F0 0C       ;
CODE_29AF3F:    LDA $15                     ; $29:AF3F: A5 15       ;
CODE_29AF41:    AND #$03                    ; $29:AF41: 29 03       ;
CODE_29AF43:    BEQ CODE_29AF74             ; $29:AF43: F0 2F       ;
CODE_29AF45:    JMP CODE_29B071             ; $29:AF45: 4C 71 B0    ;

CODE_29AF48:    JMP CODE_29B0AB             ; $29:AF48: 4C AB B0    ;

CODE_29AF4B:    CPY #$00                    ; $29:AF4B: C0 00       ;
CODE_29AF4D:    BNE CODE_29AF61             ; $29:AF4D: D0 12       ;
CODE_29AF4F:    LDA $7E3995                 ; $29:AF4F: AF 95 39 7E ;
CODE_29AF53:    BNE CODE_29AF48             ; $29:AF53: D0 F3       ;
CODE_29AF55:    LDA #$07                    ; $29:AF55: A9 07       ;
CODE_29AF57:    STA $20                     ; $29:AF57: 85 20       ;
CODE_29AF59:    LDA #$1C                    ; $29:AF59: A9 1C       ;
CODE_29AF5B:    STA $1203                   ; $29:AF5B: 8D 03 12    ;
CODE_29AF5E:    JMP CODE_29AF45             ; $29:AF5E: 4C 45 AF    ;

CODE_29AF61:    LDA $B3                     ; $29:AF61: A5 B3       ;
CODE_29AF63:    CMP #$67                    ; $29:AF63: C9 67       ;
CODE_29AF65:    BEQ CODE_29AF74             ; $29:AF65: F0 0D       ;
CODE_29AF67:    CMP #$6A                    ; $29:AF67: C9 6A       ;
CODE_29AF69:    BEQ CODE_29AF74             ; $29:AF69: F0 09       ;
CODE_29AF6B:    CMP #$EB                    ; $29:AF6B: C9 EB       ;
CODE_29AF6D:    BEQ CODE_29AF74             ; $29:AF6D: F0 05       ;
CODE_29AF6F:    LDA #$0C                    ; $29:AF6F: A9 0C       ;
CODE_29AF71:    STA $1200                   ; $29:AF71: 8D 00 12    ;
CODE_29AF74:    INC $20                     ; $29:AF74: E6 20       ;
CODE_29AF76:    LDA $20                     ; $29:AF76: A5 20       ;
CODE_29AF78:    CMP #$07                    ; $29:AF78: C9 07       ;
CODE_29AF7A:    BEQ CODE_29AF80             ; $29:AF7A: F0 04       ;
CODE_29AF7C:    CMP #$0A                    ; $29:AF7C: C9 0A       ;
CODE_29AF7E:    BNE CODE_29AF45             ; $29:AF7E: D0 C5       ;
CODE_29AF80:    STZ $20                     ; $29:AF80: 64 20       ;
CODE_29AF82:    LDA $7E3995                 ; $29:AF82: AF 95 39 7E ;
CODE_29AF86:    BEQ CODE_29AF91             ; $29:AF86: F0 09       ;
CODE_29AF88:    LDA #$04                    ; $29:AF88: A9 04       ;
CODE_29AF8A:    STA $20                     ; $29:AF8A: 85 20       ;
CODE_29AF8C:    LDY $A5                     ; $29:AF8C: A4 A5       ;
CODE_29AF8E:    JMP CODE_29B0F6             ; $29:AF8E: 4C F6 B0    ;

CODE_29AF91:    LDY $0726                   ; $29:AF91: AC 26 07    ;
CODE_29AF94:    LDA #$7E                    ; $29:AF94: A9 7E       ;
CODE_29AF96:    STA $30                     ; $29:AF96: 85 30       ;
CODE_29AF98:    LDA $0045,y                 ; $29:AF98: B9 45 00    ;
CODE_29AF9B:    ASL A                       ; $29:AF9B: 0A          ;
CODE_29AF9C:    TAX                         ; $29:AF9C: AA          ;
CODE_29AF9D:    LDA.w DATA_218200,x                 ; $29:AF9D: BD 00 82    ;
CODE_29AFA0:    CLC                         ; $29:AFA0: 18          ;
CODE_29AFA1:    ADC #$F0                    ; $29:AFA1: 69 F0       ;
CODE_29AFA3:    STA $2E                     ; $29:AFA3: 85 2E       ;
CODE_29AFA5:    LDA.w DATA_218200+1,x                   ; $29:AFA5: BD 01 82    ;
CODE_29AFA8:    ADC #$00                    ; $29:AFA8: 69 00       ;
CODE_29AFAA:    STA $2F                     ; $29:AFAA: 85 2F       ;
CODE_29AFAC:    LDA $0047,y                 ; $29:AFAC: B9 47 00    ;
CODE_29AFAF:    LSR A                       ; $29:AFAF: 4A          ;
CODE_29AFB0:    LSR A                       ; $29:AFB0: 4A          ;
CODE_29AFB1:    LSR A                       ; $29:AFB1: 4A          ;
CODE_29AFB2:    LSR A                       ; $29:AFB2: 4A          ;
CODE_29AFB3:    ORA $0043,y                 ; $29:AFB3: 19 43 00    ;
CODE_29AFB6:    TAY                         ; $29:AFB6: A8          ;
CODE_29AFB7:    LDA [$2E],y                 ; $29:AFB7: B7 2E       ;
CODE_29AFB9:    PHA                         ; $29:AFB9: 48          ;
CODE_29AFBA:    AND #$C0                    ; $29:AFBA: 29 C0       ;
CODE_29AFBC:    LSR A                       ; $29:AFBC: 4A          ;
CODE_29AFBD:    LSR A                       ; $29:AFBD: 4A          ;
CODE_29AFBE:    LSR A                       ; $29:AFBE: 4A          ;
CODE_29AFBF:    LSR A                       ; $29:AFBF: 4A          ;
CODE_29AFC0:    LSR A                       ; $29:AFC0: 4A          ;
CODE_29AFC1:    TAX                         ; $29:AFC1: AA          ;
CODE_29AFC2:    LDA $0726                   ; $29:AFC2: AD 26 07    ;
CODE_29AFC5:    BEQ CODE_29AFC8             ; $29:AFC5: F0 01       ;
CODE_29AFC7:    INX                         ; $29:AFC7: E8          ;
CODE_29AFC8:    PLA                         ; $29:AFC8: 68          ;
CODE_29AFC9:    CMP #$67                    ; $29:AFC9: C9 67       ;
CODE_29AFCB:    BEQ CODE_29AFD1             ; $29:AFCB: F0 04       ;
CODE_29AFCD:    CMP #$6A                    ; $29:AFCD: C9 6A       ;
CODE_29AFCF:    BNE CODE_29AFD8             ; $29:AFCF: D0 07       ;
CODE_29AFD1:    LDA #$16                    ; $29:AFD1: A9 16       ;
CODE_29AFD3:    STA $1203                   ; $29:AFD3: 8D 03 12    ;
CODE_29AFD6:    LDX #$08                    ; $29:AFD6: A2 08       ;
CODE_29AFD8:    CMP #$EB                    ; $29:AFD8: C9 EB       ;
CODE_29AFDA:    BNE CODE_29AFE3             ; $29:AFDA: D0 07       ;
CODE_29AFDC:    LDA #$16                    ; $29:AFDC: A9 16       ;
CODE_29AFDE:    STA $1203                   ; $29:AFDE: 8D 03 12    ;
CODE_29AFE1:    LDX #$09                    ; $29:AFE1: A2 09       ;
CODE_29AFE3:    LDA.w DATA_21E5C2,x                 ; $29:AFE3: BD C2 E5    ;
CODE_29AFE6:    STA [$2E],y                 ; $29:AFE6: 97 2E       ;
CODE_29AFE8:    STA $B3                     ; $29:AFE8: 85 B3       ;
CODE_29AFEA:    JSR CODE_29BC69             ; $29:AFEA: 20 69 BC    ;
CODE_29AFED:    LDY $0726                   ; $29:AFED: AC 26 07    ;
CODE_29AFF0:    LDX $47,y                   ; $29:AFF0: B6 47       ;
CODE_29AFF2:    LDA $0043,y                 ; $29:AFF2: B9 43 00    ;
CODE_29AFF5:    SEC                         ; $29:AFF5: 38          ;
CODE_29AFF6:    SBC #$10                    ; $29:AFF6: E9 10       ;
CODE_29AFF8:    JSL CODE_20973C             ; $29:AFF8: 22 3C 97 20 ;
CODE_29AFFC:    LDX $1600                   ; $29:AFFC: AE 00 16    ;
CODE_29AFFF:    LDY $0726                   ; $29:AFFF: AC 26 07    ;
CODE_29B002:    LDA $0045,y                 ; $29:B002: B9 45 00    ;
CODE_29B005:    AND #$01                    ; $29:B005: 29 01       ;
CODE_29B007:    ASL A                       ; $29:B007: 0A          ;
CODE_29B008:    ASL A                       ; $29:B008: 0A          ;
CODE_29B009:    ORA $0E                     ; $29:B009: 05 0E       ;
CODE_29B00B:    STA $1602,x                 ; $29:B00B: 9D 02 16    ;
CODE_29B00E:    STA $160A,x                 ; $29:B00E: 9D 0A 16    ;
CODE_29B011:    LDA $0F                     ; $29:B011: A5 0F       ;
CODE_29B013:    STA $1603,x                 ; $29:B013: 9D 03 16    ;
CODE_29B016:    CLC                         ; $29:B016: 18          ;
CODE_29B017:    ADC #$20                    ; $29:B017: 69 20       ;
CODE_29B019:    STA $160B,x                 ; $29:B019: 9D 0B 16    ;
CODE_29B01C:    STZ $1604,x                 ; $29:B01C: 9E 04 16    ;
CODE_29B01F:    STZ $160C,x                 ; $29:B01F: 9E 0C 16    ;
CODE_29B022:    LDA #$03                    ; $29:B022: A9 03       ;
CODE_29B024:    STA $1605,x                 ; $29:B024: 9D 05 16    ;
CODE_29B027:    STA $160D,x                 ; $29:B027: 9D 0D 16    ;
CODE_29B02A:    LDY #$10                    ; $29:B02A: A0 10       ;
CODE_29B02C:    LDA $B3                     ; $29:B02C: A5 B3       ;
CODE_29B02E:    CMP #$60                    ; $29:B02E: C9 60       ;
CODE_29B030:    BEQ CODE_29B041             ; $29:B030: F0 0F       ;
CODE_29B032:    LDY #$18                    ; $29:B032: A0 18       ;
CODE_29B034:    CMP #$E3                    ; $29:B034: C9 E3       ;
CODE_29B036:    BEQ CODE_29B041             ; $29:B036: F0 09       ;
CODE_29B038:    LDY #$00                    ; $29:B038: A0 00       ;
CODE_29B03A:    LDX $0726                   ; $29:B03A: AE 26 07    ;
CODE_29B03D:    BEQ CODE_29B041             ; $29:B03D: F0 02       ;
CODE_29B03F:    LDY #$08                    ; $29:B03F: A0 08       ;
CODE_29B041:    REP #$20                    ; $29:B041: C2 20       ;
CODE_29B043:    LDX $1600                   ; $29:B043: AE 00 16    ;
CODE_29B046:    LDA.w DATA_21E5D2,y                 ; $29:B046: B9 D2 E5    ;
CODE_29B049:    STA $1606,x                 ; $29:B049: 9D 06 16    ;
CODE_29B04C:    LDA.w DATA_21E5D4,y                 ; $29:B04C: B9 D4 E5    ;
CODE_29B04F:    STA $160E,x                 ; $29:B04F: 9D 0E 16    ;
CODE_29B052:    LDA.w DATA_21E5D6,y                 ; $29:B052: B9 D6 E5    ;
CODE_29B055:    STA $1608,x                 ; $29:B055: 9D 08 16    ;
CODE_29B058:    LDA.w DATA_21E5D8,y                 ; $29:B058: B9 D8 E5    ;
CODE_29B05B:    STA $1610,x                 ; $29:B05B: 9D 10 16    ;
CODE_29B05E:    SEP #$20                    ; $29:B05E: E2 20       ;
CODE_29B060:    LDA #$FF                    ; $29:B060: A9 FF       ;
CODE_29B062:    STA $1612,x                 ; $29:B062: 9D 12 16    ;
CODE_29B065:    LDA $1600                   ; $29:B065: AD 00 16    ;
CODE_29B068:    CLC                         ; $29:B068: 18          ;
CODE_29B069:    ADC #$10                    ; $29:B069: 69 10       ;
CODE_29B06B:    STA $1600                   ; $29:B06B: 8D 00 16    ;
CODE_29B06E:    JMP CODE_29B0AB             ; $29:B06E: 4C AB B0    ;

CODE_29B071:    LDX $0726                   ; $29:B071: AE 26 07    ;
CODE_29B074:    LDA $43,x                   ; $29:B074: B5 43       ;
CODE_29B076:    STA $00                     ; $29:B076: 85 00       ;
CODE_29B078:    LDA $47,x                   ; $29:B078: B5 47       ;
CODE_29B07A:    STA $01                     ; $29:B07A: 85 01       ;
CODE_29B07C:    LDY $20                     ; $29:B07C: A4 20       ;
CODE_29B07E:    CPY #$05                    ; $29:B07E: C0 05       ;
CODE_29B080:    BCC CODE_29B0A4             ; $29:B080: 90 22       ;
CODE_29B082:    LDA $00                     ; $29:B082: A5 00       ;
CODE_29B084:    STA $0861                   ; $29:B084: 8D 61 08    ;
CODE_29B087:    DEY                         ; $29:B087: 88          ;
CODE_29B088:    LDA.w DATA_21E5B8,y                 ; $29:B088: B9 B8 E5    ;
CODE_29B08B:    STA $0862                   ; $29:B08B: 8D 62 08    ;
CODE_29B08E:    LDA #$27                    ; $29:B08E: A9 27       ;
CODE_29B090:    STA $0863                   ; $29:B090: 8D 63 08    ;
CODE_29B093:    LDA $01                     ; $29:B093: A5 01       ;
CODE_29B095:    SEC                         ; $29:B095: 38          ;
CODE_29B096:    SBC $0210                   ; $29:B096: ED 10 02    ;
CODE_29B099:    STA $0860                   ; $29:B099: 8D 60 08    ;
CODE_29B09C:    LDA #$02                    ; $29:B09C: A9 02       ;
CODE_29B09E:    STA $0A38                   ; $29:B09E: 8D 38 0A    ;
CODE_29B0A1:    JMP CODE_29B107             ; $29:B0A1: 4C 07 B1    ;

CODE_29B0A4:    JSL CODE_29B11F             ; $29:B0A4: 22 1F B1 29 ;
CODE_29B0A8:    JMP CODE_29B11A             ; $29:B0A8: 4C 1A B1    ;

CODE_29B0AB:    LDA $7E3972                 ; $29:B0AB: AF 72 39 7E ;
CODE_29B0AF:    BNE CODE_29B0A1             ; $29:B0AF: D0 F0       ;
CODE_29B0B1:    LDY #$0D                    ; $29:B0B1: A0 0D       ;
CODE_29B0B3:    LDX $0726                   ; $29:B0B3: AE 26 07    ;
CODE_29B0B6:    LDA $1F17,y                 ; $29:B0B6: B9 17 1F    ;
CODE_29B0B9:    BEQ CODE_29B0D4             ; $29:B0B9: F0 19       ;
CODE_29B0BB:    LDA $1EED,y                 ; $29:B0BB: B9 ED 1E    ;
CODE_29B0BE:    STA $00                     ; $29:B0BE: 85 00       ;
CODE_29B0C0:    CMP $43,x                   ; $29:B0C0: D5 43       ;
CODE_29B0C2:    BNE CODE_29B0D4             ; $29:B0C2: D0 10       ;
CODE_29B0C4:    LDA $1F09,y                 ; $29:B0C4: B9 09 1F    ;
CODE_29B0C7:    CMP $45,x                   ; $29:B0C7: D5 45       ;
CODE_29B0C9:    BNE CODE_29B0D4             ; $29:B0C9: D0 09       ;
CODE_29B0CB:    LDA $1EFB,y                 ; $29:B0CB: B9 FB 1E    ;
CODE_29B0CE:    STA $01                     ; $29:B0CE: 85 01       ;
CODE_29B0D0:    CMP $47,x                   ; $29:B0D0: D5 47       ;
CODE_29B0D2:    BEQ CODE_29B0D9             ; $29:B0D2: F0 05       ;
CODE_29B0D4:    DEY                         ; $29:B0D4: 88          ;
CODE_29B0D5:    BPL CODE_29B0B6             ; $29:B0D5: 10 DF       ;
CODE_29B0D7:    BRA CODE_29B107             ; $29:B0D7: 80 2E       ;

CODE_29B0D9:    STY $A5                     ; $29:B0D9: 84 A5       ;
CODE_29B0DB:    LDA $1F17,y                 ; $29:B0DB: B9 17 1F    ;
CODE_29B0DE:    CMP #$02                    ; $29:B0DE: C9 02       ;
CODE_29B0E0:    BNE CODE_29B0E7             ; $29:B0E0: D0 05       ;
CODE_29B0E2:    INC $0729                   ; $29:B0E2: EE 29 07    ;
CODE_29B0E5:    BRA CODE_29B11A             ; $29:B0E5: 80 33       ;

CODE_29B0E7:    LDA $20                     ; $29:B0E7: A5 20       ;
CODE_29B0E9:    BNE CODE_29B0F0             ; $29:B0E9: D0 05       ;
CODE_29B0EB:    LDA #$0C                    ; $29:B0EB: A9 0C       ;
CODE_29B0ED:    STA $1200                   ; $29:B0ED: 8D 00 12    ;
CODE_29B0F0:    LDA $15                     ; $29:B0F0: A5 15       ;
CODE_29B0F2:    AND #$03                    ; $29:B0F2: 29 03       ;
CODE_29B0F4:    BNE CODE_29B0A4             ; $29:B0F4: D0 AE       ;
CODE_29B0F6:    INC $20                     ; $29:B0F6: E6 20       ;
CODE_29B0F8:    LDA $20                     ; $29:B0F8: A5 20       ;
CODE_29B0FA:    CMP #$05                    ; $29:B0FA: C9 05       ;
CODE_29B0FC:    BNE CODE_29B0A4             ; $29:B0FC: D0 A6       ;
CODE_29B0FE:    LDA #$00                    ; $29:B0FE: A9 00       ;
CODE_29B100:    STA $1F17,y                 ; $29:B100: 99 17 1F    ;
CODE_29B103:    STZ $20                     ; $29:B103: 64 20       ;
CODE_29B105:    STZ $A5                     ; $29:B105: 64 A5       ;
CODE_29B107:    LDA $20                     ; $29:B107: A5 20       ;
CODE_29B109:    BNE CODE_29B11A             ; $29:B109: D0 0F       ;
CODE_29B10B:    LDA #$00                    ; $29:B10B: A9 00       ;
CODE_29B10D:    STA $7E3972                 ; $29:B10D: 8F 72 39 7E ;
CODE_29B111:    STA $7E3995                 ; $29:B111: 8F 95 39 7E ;
CODE_29B115:    LDA #$08                    ; $29:B115: A9 08       ;
CODE_29B117:    STA $0729                   ; $29:B117: 8D 29 07    ;
CODE_29B11A:    JSL CODE_29B7AE             ; $29:B11A: 22 AE B7 29 ;
CODE_29B11E:    RTL                         ; $29:B11E: 6B          ;

CODE_29B11F:    LDA $00                     ; $29:B11F: A5 00       ;
CODE_29B121:    SEC                         ; $29:B121: 38          ;
CODE_29B122:    SBC #$08                    ; $29:B122: E9 08       ;
CODE_29B124:    STA $0861                   ; $29:B124: 8D 61 08    ;
CODE_29B127:    STA $0865                   ; $29:B127: 8D 65 08    ;
CODE_29B12A:    CLC                         ; $29:B12A: 18          ;
CODE_29B12B:    ADC #$10                    ; $29:B12B: 69 10       ;
CODE_29B12D:    STA $0869                   ; $29:B12D: 8D 69 08    ;
CODE_29B130:    STA $086D                   ; $29:B130: 8D 6D 08    ;
CODE_29B133:    LDA $01                     ; $29:B133: A5 01       ;
CODE_29B135:    SEC                         ; $29:B135: 38          ;
CODE_29B136:    SBC $0210                   ; $29:B136: ED 10 02    ;
CODE_29B139:    SEC                         ; $29:B139: 38          ;
CODE_29B13A:    SBC #$08                    ; $29:B13A: E9 08       ;
CODE_29B13C:    STA $0860                   ; $29:B13C: 8D 60 08    ;
CODE_29B13F:    STA $0868                   ; $29:B13F: 8D 68 08    ;
CODE_29B142:    CLC                         ; $29:B142: 18          ;
CODE_29B143:    ADC #$10                    ; $29:B143: 69 10       ;
CODE_29B145:    STA $0864                   ; $29:B145: 8D 64 08    ;
CODE_29B148:    STA $086C                   ; $29:B148: 8D 6C 08    ;
CODE_29B14B:    LDA #$27                    ; $29:B14B: A9 27       ;
CODE_29B14D:    STA $0863                   ; $29:B14D: 8D 63 08    ;
CODE_29B150:    LDA #$67                    ; $29:B150: A9 67       ;
CODE_29B152:    STA $0867                   ; $29:B152: 8D 67 08    ;
CODE_29B155:    LDA #$A7                    ; $29:B155: A9 A7       ;
CODE_29B157:    STA $086B                   ; $29:B157: 8D 6B 08    ;
CODE_29B15A:    LDA #$E7                    ; $29:B15A: A9 E7       ;
CODE_29B15C:    STA $086F                   ; $29:B15C: 8D 6F 08    ;
CODE_29B15F:    LDX $20                     ; $29:B15F: A6 20       ;
CODE_29B161:    LDA.w DATA_21E5B8,x                 ; $29:B161: BD B8 E5    ;
CODE_29B164:    STA $0862                   ; $29:B164: 8D 62 08    ;
CODE_29B167:    STA $0866                   ; $29:B167: 8D 66 08    ;
CODE_29B16A:    STA $086A                   ; $29:B16A: 8D 6A 08    ;
CODE_29B16D:    STA $086E                   ; $29:B16D: 8D 6E 08    ;
CODE_29B170:    LDA #$02                    ; $29:B170: A9 02       ;
CODE_29B172:    STA $0A38                   ; $29:B172: 8D 38 0A    ;
CODE_29B175:    STA $0A39                   ; $29:B175: 8D 39 0A    ;
CODE_29B178:    STA $0A3A                   ; $29:B178: 8D 3A 0A    ;
CODE_29B17B:    STA $0A3B                   ; $29:B17B: 8D 3B 0A    ;
CODE_29B17E:    RTL                         ; $29:B17E: 6B          ;

CODE_29B17F:    LDA #$03                    ; $29:B17F: A9 03       ;
CODE_29B181:    STA $0F                     ; $29:B181: 85 0F       ;
CODE_29B183:    LDY $0F                     ; $29:B183: A4 0F       ;
CODE_29B185:    LDX #$0D                    ; $29:B185: A2 0D       ;
CODE_29B187:    LDA.w DATA_21E5F7,y                 ; $29:B187: B9 F7 E5    ;
CODE_29B18A:    CMP $1F17,x                 ; $29:B18A: DD 17 1F    ;
CODE_29B18D:    BEQ CODE_29B195             ; $29:B18D: F0 06       ;
CODE_29B18F:    DEX                         ; $29:B18F: CA          ;
CODE_29B190:    BPL CODE_29B18A             ; $29:B190: 10 F8       ;
CODE_29B192:    JSR CODE_29B1A1             ; $29:B192: 20 A1 B1    ;
CODE_29B195:    DEC $0F                     ; $29:B195: C6 0F       ;
CODE_29B197:    BPL CODE_29B183             ; $29:B197: 10 EA       ;
CODE_29B199:    INC $0729                   ; $29:B199: EE 29 07    ;
CODE_29B19C:    JSL CODE_238C1B             ; $29:B19C: 22 1B 8C 23 ;
CODE_29B1A0:    RTL                         ; $29:B1A0: 6B          ;

CODE_29B1A1:    LDA $0F                     ; $29:B1A1: A5 0F       ;
CODE_29B1A3:    JSL CODE_20FB1F         ; $29:B1A3: 22 1F FB 20 ; ExecutePtrShort

PNTR_29B1A7:        dw CODE_29B1AF
                    dw CODE_29B22C
                    dw CODE_29B279
                    dw CODE_29B2AF

CODE_29B1AF:    LDA $0727               ; $29:B1AF: AD 27 07    ;
CODE_29B1B2:    CMP #$07                    ; $29:B1B2: C9 07       ;
CODE_29B1B4:    BEQ CODE_29B22B             ; $29:B1B4: F0 75       ;
CODE_29B1B6:    LDX $0726                   ; $29:B1B6: AE 26 07    ;
CODE_29B1B9:    LDA $0715                   ; $29:B1B9: AD 15 07    ;
CODE_29B1BC:    CMP $7E3967                 ; $29:B1BC: CF 67 39 7E ;
CODE_29B1C0:    BCC CODE_29B22B             ; $29:B1C0: 90 69       ;
CODE_29B1C2:    BEQ CODE_29B1C7             ; $29:B1C2: F0 03       ;
CODE_29B1C4:    JMP CODE_29B1DE             ; $29:B1C4: 4C DE B1    ;

CODE_29B1C7:    LDA $0716                   ; $29:B1C7: AD 16 07    ;
CODE_29B1CA:    CMP $7E3968                 ; $29:B1CA: CF 68 39 7E ;
CODE_29B1CE:    BCC CODE_29B22B             ; $29:B1CE: 90 5B       ;
CODE_29B1D0:    BEQ CODE_29B1D5             ; $29:B1D0: F0 03       ;
CODE_29B1D2:    JMP CODE_29B1DE             ; $29:B1D2: 4C DE B1    ;

CODE_29B1D5:    LDA $0717                   ; $29:B1D5: AD 17 07    ;
CODE_29B1D8:    CMP $7E3969                 ; $29:B1D8: CF 69 39 7E ;
CODE_29B1DC:    BCC CODE_29B22B             ; $29:B1DC: 90 4D       ;
CODE_29B1DE:    JSR CODE_29B2ED             ; $29:B1DE: 20 ED B2    ;
CODE_29B1E1:    LDA $7E396A                 ; $29:B1E1: AF 6A 39 7E ;
CODE_29B1E5:    STA $1EED,y                 ; $29:B1E5: 99 ED 1E    ;
CODE_29B1E8:    STA $0500,y                 ; $29:B1E8: 99 00 05    ;
CODE_29B1EB:    LDA $7E396B                 ; $29:B1EB: AF 6B 39 7E ;
CODE_29B1EF:    STA $1F09,y                 ; $29:B1EF: 99 09 1F    ;
CODE_29B1F2:    STA $051E,y                 ; $29:B1F2: 99 1E 05    ;
CODE_29B1F5:    LDA $7E396C                 ; $29:B1F5: AF 6C 39 7E ;
CODE_29B1F9:    STA $1EFB,y                 ; $29:B1F9: 99 FB 1E    ;
CODE_29B1FC:    STA $050F,y                 ; $29:B1FC: 99 0F 05    ;
CODE_29B1FF:    LDX $0F                     ; $29:B1FF: A6 0F       ;
CODE_29B201:    LDA.w DATA_21E5F7,x                 ; $29:B201: BD F7 E5    ;
CODE_29B204:    STA $1F17,y                 ; $29:B204: 99 17 1F    ;
CODE_29B207:    LDA $7E3969                 ; $29:B207: AF 69 39 7E ;
CODE_29B20B:    CLC                         ; $29:B20B: 18          ;
CODE_29B20C:    ADC #$40                    ; $29:B20C: 69 40       ;
CODE_29B20E:    STA $7E3969                 ; $29:B20E: 8F 69 39 7E ;
CODE_29B212:    LDA $7E3968                 ; $29:B212: AF 68 39 7E ;
CODE_29B216:    ADC #$1F                    ; $29:B216: 69 1F       ;
CODE_29B218:    STA $7E3968                 ; $29:B218: 8F 68 39 7E ;
CODE_29B21C:    LDA $7E3967                 ; $29:B21C: AF 67 39 7E ;
CODE_29B220:    ADC #$00                    ; $29:B220: 69 00       ;
CODE_29B222:    STA $7E3967                 ; $29:B222: 8F 67 39 7E ;
CODE_29B226:    LDA #$15                    ; $29:B226: A9 15       ;
CODE_29B228:    STA $1203                   ; $29:B228: 8D 03 12    ;
CODE_29B22B:    RTS                         ; $29:B22B: 60          ;

CODE_29B22C:    LDA $7E3970             ; $29:B22C: AF 70 39 7E ; If white mushroom house has been spawned already
CODE_29B230:    BNE CODE_29B278         ; $29:B230: D0 46       ; skip
CODE_29B232:    LDA $7E3964             ; $29:B232: AF 64 39 7E ; Skip if the level doesn't have a white mushroom house
CODE_29B236:    CMP #$01                ; $29:B236: C9 01       ;
CODE_29B238:    BNE CODE_29B278             ; $29:B238: D0 3E       ;
CODE_29B23A:    LDA $7E3966             ; $29:B23A: AF 66 39 7E ; compare the amount of collected coins within the level
CODE_29B23E:    CMP $7E3965             ; $29:B23E: CF 65 39 7E ; with the amount of coins required to spawn the white house
CODE_29B242:    BCC CODE_29B278             ; $29:B242: 90 34       ;
CODE_29B244:    JSR CODE_29B2ED             ; $29:B244: 20 ED B2    ;
CODE_29B247:    LDA #$0A                    ; $29:B247: A9 0A       ;
CODE_29B249:    STA $1F17,y                 ; $29:B249: 99 17 1F    ;
CODE_29B24C:    LDA $7E396A                 ; $29:B24C: AF 6A 39 7E ;
CODE_29B250:    STA $1EED,y                 ; $29:B250: 99 ED 1E    ;
CODE_29B253:    STA $0500,y                 ; $29:B253: 99 00 05    ;
CODE_29B256:    LDA $7E396B                 ; $29:B256: AF 6B 39 7E ;
CODE_29B25A:    STA $1F09,y                 ; $29:B25A: 99 09 1F    ;
CODE_29B25D:    STA $051E,y                 ; $29:B25D: 99 1E 05    ;
CODE_29B260:    LDA $7E396C                 ; $29:B260: AF 6C 39 7E ;
CODE_29B264:    STA $1EFB,y                 ; $29:B264: 99 FB 1E    ;
CODE_29B267:    STA $050F,y                 ; $29:B267: 99 0F 05    ;
CODE_29B26A:    LDA $7E3970                 ; $29:B26A: AF 70 39 7E ;
CODE_29B26E:    INC A                       ; $29:B26E: 1A          ;
CODE_29B26F:    STA $7E3970                 ; $29:B26F: 8F 70 39 7E ;
CODE_29B273:    LDA #$15                    ; $29:B273: A9 15       ;
CODE_29B275:    STA $1203                   ; $29:B275: 8D 03 12    ;
CODE_29B278:    RTS                         ; $29:B278: 60          ;

CODE_29B279:    LDA $7E3971                 ; $29:B279: AF 71 39 7E ;
CODE_29B27D:    BNE CODE_29B2AE             ; $29:B27D: D0 2F       ;
CODE_29B27F:    LDA $1F48                   ; $29:B27F: AD 48 1F    ;
CODE_29B282:    CMP $1F49                   ; $29:B282: CD 49 1F    ;
CODE_29B285:    BNE CODE_29B2AE             ; $29:B285: D0 27       ;
CODE_29B287:    CMP $1F51                   ; $29:B287: CD 51 1F    ;
CODE_29B28A:    BNE CODE_29B2AE             ; $29:B28A: D0 22       ;
CODE_29B28C:    LDY #$00                    ; $29:B28C: A0 00       ;
CODE_29B28E:    LDA $1F17,y                 ; $29:B28E: B9 17 1F    ;
CODE_29B291:    CMP #$03                    ; $29:B291: C9 03       ;
CODE_29B293:    BEQ CODE_29B29B             ; $29:B293: F0 06       ;
CODE_29B295:    INY                         ; $29:B295: C8          ;
CODE_29B296:    CPY #$0E                    ; $29:B296: C0 0E       ;
CODE_29B298:    BNE CODE_29B28E             ; $29:B298: D0 F4       ;
CODE_29B29A:    RTS                         ; $29:B29A: 60          ;

CODE_29B29B:    LDA #$0B                    ; $29:B29B: A9 0B       ;
CODE_29B29D:    STA $1F17,y                 ; $29:B29D: 99 17 1F    ;
CODE_29B2A0:    LDA $7E3971                 ; $29:B2A0: AF 71 39 7E ;
CODE_29B2A4:    INC A                       ; $29:B2A4: 1A          ;
CODE_29B2A5:    STA $7E3971                 ; $29:B2A5: 8F 71 39 7E ;
CODE_29B2A9:    LDA #$15                    ; $29:B2A9: A9 15       ;
CODE_29B2AB:    STA $1203                   ; $29:B2AB: 8D 03 12    ;
CODE_29B2AE:    RTS                         ; $29:B2AE: 60          ;

CODE_29B2AF:    LDA $7E3964                 ; $29:B2AF: AF 64 39 7E ;
CODE_29B2B3:    CMP #$02                    ; $29:B2B3: C9 02       ;
CODE_29B2B5:    BNE CODE_29B2EC             ; $29:B2B5: D0 35       ;
CODE_29B2B7:    LDA $7E3966                 ; $29:B2B7: AF 66 39 7E ;
CODE_29B2BB:    CMP $7E3965                 ; $29:B2BB: CF 65 39 7E ;
CODE_29B2BF:    BCC CODE_29B2EC             ; $29:B2BF: 90 2B       ;
CODE_29B2C1:    JSR CODE_29B2ED             ; $29:B2C1: 20 ED B2    ;
CODE_29B2C4:    LDA #$0C                    ; $29:B2C4: A9 0C       ;
CODE_29B2C6:    STA $1F17,y                 ; $29:B2C6: 99 17 1F    ;
CODE_29B2C9:    LDA.w DATA_21E5FB                   ; $29:B2C9: AD FB E5    ;
CODE_29B2CC:    STA $1EED,y                 ; $29:B2CC: 99 ED 1E    ;
CODE_29B2CF:    STA $0500,y                 ; $29:B2CF: 99 00 05    ;
CODE_29B2D2:    LDA.w DATA_21E5FB+1                     ; $29:B2D2: AD FC E5    ;
CODE_29B2D5:    PHA                         ; $29:B2D5: 48          ;
CODE_29B2D6:    AND #$0F                    ; $29:B2D6: 29 0F       ;
CODE_29B2D8:    STA $1F09,y                 ; $29:B2D8: 99 09 1F    ;
CODE_29B2DB:    STA $051E,y                 ; $29:B2DB: 99 1E 05    ;
CODE_29B2DE:    PLA                         ; $29:B2DE: 68          ;
CODE_29B2DF:    AND #$F0                    ; $29:B2DF: 29 F0       ;
CODE_29B2E1:    STA $1EFB,y                 ; $29:B2E1: 99 FB 1E    ;
CODE_29B2E4:    STA $050F,y                 ; $29:B2E4: 99 0F 05    ;
CODE_29B2E7:    LDA #$15                    ; $29:B2E7: A9 15       ;
CODE_29B2E9:    STA $1203                   ; $29:B2E9: 8D 03 12    ;
CODE_29B2EC:    RTS                         ; $29:B2EC: 60          ;

CODE_29B2ED:    LDY #$02                    ; $29:B2ED: A0 02       ;
CODE_29B2EF:    LDA $1F17,y                 ; $29:B2EF: B9 17 1F    ;
CODE_29B2F2:    BEQ CODE_29B2F8             ; $29:B2F2: F0 04       ;
CODE_29B2F4:    INY                         ; $29:B2F4: C8          ;
CODE_29B2F5:    JMP CODE_29B2EF             ; $29:B2F5: 4C EF B2    ;

CODE_29B2F8:    RTS                         ; $29:B2F8: 60          ;

CODE_29B2F9:    LDA $7E396D                 ; $29:B2F9: AF 6D 39 7E ;
CODE_29B2FD:    BNE CODE_29B331             ; $29:B2FD: D0 32       ;
CODE_29B2FF:    LDY #$0D                    ; $29:B2FF: A0 0D       ;
CODE_29B301:    STY $0C                     ; $29:B301: 84 0C       ;
CODE_29B303:    LDA $0729                   ; $29:B303: AD 29 07    ;
CODE_29B306:    CMP #$0B                    ; $29:B306: C9 0B       ;
CODE_29B308:    BNE CODE_29B323             ; $29:B308: D0 19       ;
CODE_29B30A:    LDA $0596                   ; $29:B30A: AD 96 05    ;
CODE_29B30D:    BNE CODE_29B323             ; $29:B30D: D0 14       ;
CODE_29B30F:    LDA $1F17,y                 ; $29:B30F: B9 17 1F    ;
CODE_29B312:    BEQ CODE_29B31B             ; $29:B312: F0 07       ;
CODE_29B314:    TAX                         ; $29:B314: AA          ;
CODE_29B315:    LDA.w DATA_21E5FD,x                 ; $29:B315: BD FD E5    ;
CODE_29B318:    STA $053C,y                 ; $29:B318: 99 3C 05    ;
CODE_29B31B:    DEY                         ; $29:B31B: 88          ;
CODE_29B31C:    CPY #$01                    ; $29:B31C: C0 01       ;
CODE_29B31E:    BNE CODE_29B30F             ; $29:B31E: D0 EF       ;
CODE_29B320:    INC $0596                   ; $29:B320: EE 96 05    ;
CODE_29B323:    LDX $0C                     ; $29:B323: A6 0C       ;
CODE_29B325:    LDA $1F17,x                 ; $29:B325: BD 17 1F    ;
CODE_29B328:    BEQ CODE_29B32D             ; $29:B328: F0 03       ;
CODE_29B32A:    JSR CODE_29B332             ; $29:B32A: 20 32 B3    ;
CODE_29B32D:    DEC $0C                     ; $29:B32D: C6 0C       ;
CODE_29B32F:    BPL CODE_29B323             ; $29:B32F: 10 F2       ;
CODE_29B331:    RTS                         ; $29:B331: 60          ;

CODE_29B332:    JSR CODE_29BCBE             ; $29:B332: 20 BE BC    ;
CODE_29B335:    LDA $1F17,x                 ; $29:B335: BD 17 1F    ;
CODE_29B338:    CMP #$10                    ; $29:B338: C9 10       ;
CODE_29B33A:    BCS CODE_29B348                     ; $29:B33A: B0 0C       ;
CODE_29B33C:    LDY $0729                   ; $29:B33C: AC 29 07    ;
CODE_29B33F:    CPY #$0B                    ; $29:B33F: C0 0B       ;
CODE_29B341:    BNE CODE_29B348             ; $29:B341: D0 05       ;
CODE_29B343:    LDY $053C,x                 ; $29:B343: BC 3C 05    ;
CODE_29B346:    BEQ CODE_29B331             ; $29:B346: F0 E9       ;
CODE_29B348:    JSL CODE_20FB1F         ; $29:B348: 22 1F FB 20 ; ExecutePtrShort

PNTR_29B34C:        dw CODE_29B331
                    dw CODE_29B331
                    dw CODE_29B490
                    dw CODE_29B36E
                    dw CODE_29B36E
                    dw CODE_29B36E
                    dw CODE_29B36E
                    dw CODE_29B486
                    dw CODE_29B36E
                    dw CODE_29B36E
                    dw CODE_29B36E
                    dw CODE_29B36E
                    dw CODE_29B486
                    dw CODE_29B486
                    dw CODE_29B486
                    dw CODE_29B486
                    dw CODE_29BCEA

CODE_29B36E:    LDA $0729               ; $29:B36E: AD 29 07    ;
CODE_29B371:    CMP #$0D                ; $29:B371: C9 0D       ;
CODE_29B373:    BNE CODE_29B3C4         ; $29:B373: D0 4F       ;
CODE_29B375:    LDA $1F17,x                 ; $29:B375: BD 17 1F    ;
CODE_29B378:    CMP #$09                    ; $29:B378: C9 09       ;
CODE_29B37A:    BCC CODE_29B380             ; $29:B37A: 90 04       ;
CODE_29B37C:    CMP #$0D                    ; $29:B37C: C9 0D       ;
CODE_29B37E:    BCC CODE_29B385             ; $29:B37E: 90 05       ;
CODE_29B380:    LDA $1F55                   ; $29:B380: AD 55 1F    ;
CODE_29B383:    BNE CODE_29B3C3             ; $29:B383: D0 3E       ;
CODE_29B385:    TXA                         ; $29:B385: 8A          ;
CODE_29B386:    AND #$01                    ; $29:B386: 29 01       ;
CODE_29B388:    STA $0F                     ; $29:B388: 85 0F       ;
CODE_29B38A:    LDA $053C                   ; $29:B38A: AD 3C 05    ;
CODE_29B38D:    AND #$10                    ; $29:B38D: 29 10       ;
CODE_29B38F:    LSR A                       ; $29:B38F: 4A          ;
CODE_29B390:    LSR A                       ; $29:B390: 4A          ;
CODE_29B391:    LSR A                       ; $29:B391: 4A          ;
CODE_29B392:    LSR A                       ; $29:B392: 4A          ;
CODE_29B393:    STA $052D,x                 ; $29:B393: 9D 2D 05    ;
CODE_29B396:    LDA $0F                     ; $29:B396: A5 0F       ;
CODE_29B398:    BEQ CODE_29B3A0             ; $29:B398: F0 06       ;
CODE_29B39A:    EOR $052D,x                 ; $29:B39A: 5D 2D 05    ;
CODE_29B39D:    STA $052D,x                 ; $29:B39D: 9D 2D 05    ;
CODE_29B3A0:    LDA $0F                     ; $29:B3A0: A5 0F       ;
CODE_29B3A2:    ASL A                       ; $29:B3A2: 0A          ;
CODE_29B3A3:    ASL A                       ; $29:B3A3: 0A          ;
CODE_29B3A4:    ASL A                       ; $29:B3A4: 0A          ;
CODE_29B3A5:    ASL A                       ; $29:B3A5: 0A          ;
CODE_29B3A6:    STA $0F                     ; $29:B3A6: 85 0F       ;
CODE_29B3A8:    LDA $053C                   ; $29:B3A8: AD 3C 05    ;
CODE_29B3AB:    AND #$1F                    ; $29:B3AB: 29 1F       ;
CODE_29B3AD:    EOR $0F                     ; $29:B3AD: 45 0F       ;
CODE_29B3AF:    TAY                         ; $29:B3AF: A8          ;
CODE_29B3B0:    LDA $1EFB,x                 ; $29:B3B0: BD FB 1E    ;
CODE_29B3B3:    CLC                         ; $29:B3B3: 18          ;
CODE_29B3B4:    ADC.w DATA_21E61D,y                 ; $29:B3B4: 79 1D E6    ;
CODE_29B3B7:    STA $050F,x                 ; $29:B3B7: 9D 0F 05    ;
CODE_29B3BA:    LDA $051E,x                 ; $29:B3BA: BD 1E 05    ;
CODE_29B3BD:    ADC.w DATA_21E63D,y                 ; $29:B3BD: 79 3D E6    ;
CODE_29B3C0:    STA $051E,x                 ; $29:B3C0: 9D 1E 05    ;
CODE_29B3C3:    RTS                         ; $29:B3C3: 60          ;

CODE_29B3C4:    CMP #$0B                    ; $29:B3C4: C9 0B       ;
CODE_29B3C6:    BNE CODE_29B3C3             ; $29:B3C6: D0 FB       ;
CODE_29B3C8:    LDA $1F55                   ; $29:B3C8: AD 55 1F    ;
CODE_29B3CB:    BNE CODE_29B438             ; $29:B3CB: D0 6B       ;
CODE_29B3CD:    LDY $0C                     ; $29:B3CD: A4 0C       ;
CODE_29B3CF:    LDX #$01                    ; $29:B3CF: A2 01       ;
CODE_29B3D1:    LDA $43,x                   ; $29:B3D1: B5 43       ;
CODE_29B3D3:    CMP $0500,y                 ; $29:B3D3: D9 00 05    ;
CODE_29B3D6:    BNE CODE_29B3EC             ; $29:B3D6: D0 14       ;
CODE_29B3D8:    LDA $45,x                   ; $29:B3D8: B5 45       ;
CODE_29B3DA:    CMP $051E,y                 ; $29:B3DA: D9 1E 05    ;
CODE_29B3DD:    BNE CODE_29B3EC             ; $29:B3DD: D0 0D       ;
CODE_29B3DF:    LDA $47,x                   ; $29:B3DF: B5 47       ;
CODE_29B3E1:    CMP $050F,y                 ; $29:B3E1: D9 0F 05    ;
CODE_29B3E4:    BNE CODE_29B3EC             ; $29:B3E4: D0 06       ;
CODE_29B3E6:    LDA #$00                    ; $29:B3E6: A9 00       ;
CODE_29B3E8:    STA $053C,y                 ; $29:B3E8: 99 3C 05    ;
CODE_29B3EB:    RTS                         ; $29:B3EB: 60          ;

CODE_29B3EC:    DEX                         ; $29:B3EC: CA          ;
CODE_29B3ED:    BPL CODE_29B3D1             ; $29:B3ED: 10 E2       ;
CODE_29B3EF:    LDA $053C,y                 ; $29:B3EF: B9 3C 05    ;
CODE_29B3F2:    AND #$1F                    ; $29:B3F2: 29 1F       ;
CODE_29B3F4:    BNE CODE_29B3FE             ; $29:B3F4: D0 08       ;
CODE_29B3F6:    LDA $0783,y                 ; $29:B3F6: B9 83 07    ;
CODE_29B3F9:    AND #$03                    ; $29:B3F9: 29 03       ;
CODE_29B3FB:    JSR CODE_29B6DA             ; $29:B3FB: 20 DA B6    ;
CODE_29B3FE:    LDY $0C                     ; $29:B3FE: A4 0C       ;
CODE_29B400:    LDA $1F17,y                 ; $29:B400: B9 17 1F    ;
CODE_29B403:    BEQ CODE_29B438             ; $29:B403: F0 33       ;
CODE_29B405:    CMP #$03                    ; $29:B405: C9 03       ;
CODE_29B407:    BCC CODE_29B418             ; $29:B407: 90 0F       ;
CODE_29B409:    CMP #$07                    ; $29:B409: C9 07       ;
CODE_29B40B:    BCS CODE_29B418                     ; $29:B40B: B0 0B       ;
CODE_29B40D:    LDA $15                     ; $29:B40D: A5 15       ;
CODE_29B40F:    AND #$0F                    ; $29:B40F: 29 0F       ;
CODE_29B411:    BNE CODE_29B418             ; $29:B411: D0 05       ;
CODE_29B413:    LDA #$36                    ; $29:B413: A9 36       ;
CODE_29B415:    STA $1200                   ; $29:B415: 8D 00 12    ;
CODE_29B418:    LDX $052D,y                 ; $29:B418: BE 2D 05    ;
CODE_29B41B:    LDA $0500,y                 ; $29:B41B: B9 00 05    ;
CODE_29B41E:    CLC                         ; $29:B41E: 18          ;
CODE_29B41F:    ADC.w DATA_21E611,x                 ; $29:B41F: 7D 11 E6    ;
CODE_29B422:    STA $0500,y                 ; $29:B422: 99 00 05    ;
CODE_29B425:    LDA $050F,y                 ; $29:B425: B9 0F 05    ;
CODE_29B428:    CLC                         ; $29:B428: 18          ;
CODE_29B429:    ADC.w DATA_21E615,x                 ; $29:B429: 7D 15 E6    ;
CODE_29B42C:    STA $050F,y                 ; $29:B42C: 99 0F 05    ;
CODE_29B42F:    LDA $051E,y                 ; $29:B42F: B9 1E 05    ;
CODE_29B432:    ADC.w DATA_21E619,x                 ; $29:B432: 7D 19 E6    ;
CODE_29B435:    STA $051E,y                 ; $29:B435: 99 1E 05    ;
CODE_29B438:    LDX $0C                     ; $29:B438: A6 0C       ;
CODE_29B43A:    JSR CODE_29B6CD             ; $29:B43A: 20 CD B6    ;
CODE_29B43D:    DEC $053C,x                 ; $29:B43D: DE 3C 05    ;
CODE_29B440:    BNE CODE_29B476             ; $29:B440: D0 34       ;
CODE_29B442:    LDA $1F55                   ; $29:B442: AD 55 1F    ;
CODE_29B445:    BNE CODE_29B476             ; $29:B445: D0 2F       ;
CODE_29B447:    LDY #$0D                    ; $29:B447: A0 0D       ;
CODE_29B449:    CPY $0C                     ; $29:B449: C4 0C       ;
CODE_29B44B:    BEQ CODE_29B473             ; $29:B44B: F0 26       ;
CODE_29B44D:    LDA $1F17,y                 ; $29:B44D: B9 17 1F    ;
CODE_29B450:    BEQ CODE_29B473             ; $29:B450: F0 21       ;
CODE_29B452:    CMP #$10                    ; $29:B452: C9 10       ;
CODE_29B454:    BCS CODE_29B473                     ; $29:B454: B0 1D       ;
CODE_29B456:    LDA $053C,y                 ; $29:B456: B9 3C 05    ;
CODE_29B459:    BNE CODE_29B473             ; $29:B459: D0 18       ;
CODE_29B45B:    LDA $0500,y                 ; $29:B45B: B9 00 05    ;
CODE_29B45E:    CMP $0500,x                 ; $29:B45E: DD 00 05    ;
CODE_29B461:    BNE CODE_29B473             ; $29:B461: D0 10       ;
CODE_29B463:    LDA $051E,y                 ; $29:B463: B9 1E 05    ;
CODE_29B466:    CMP $051E,x                 ; $29:B466: DD 1E 05    ;
CODE_29B469:    BNE CODE_29B473             ; $29:B469: D0 08       ;
CODE_29B46B:    LDA $050F,y                 ; $29:B46B: B9 0F 05    ;
CODE_29B46E:    CMP $050F,x                 ; $29:B46E: DD 0F 05    ;
CODE_29B471:    BEQ CODE_29B477             ; $29:B471: F0 04       ;
CODE_29B473:    DEY                         ; $29:B473: 88          ;
CODE_29B474:    BNE CODE_29B449             ; $29:B474: D0 D3       ;
CODE_29B476:    RTS                         ; $29:B476: 60          ;

CODE_29B477:    LDA #$20                    ; $29:B477: A9 20       ;
CODE_29B479:    STA $053C,x                 ; $29:B479: 9D 3C 05    ;
CODE_29B47C:    CPY #$01                    ; $29:B47C: C0 01       ;
CODE_29B47E:    BEQ CODE_29B485             ; $29:B47E: F0 05       ;
CODE_29B480:    LDA #$20                    ; $29:B480: A9 20       ;
CODE_29B482:    STA $053C,y                 ; $29:B482: 99 3C 05    ;
CODE_29B485:    RTS                         ; $29:B485: 60          ;

CODE_29B486:    LDA $0729                   ; $29:B486: AD 29 07    ;
CODE_29B489:    CMP #$0B                    ; $29:B489: C9 0B       ;
CODE_29B48B:    BNE CODE_29B485             ; $29:B48B: D0 F8       ;
CODE_29B48D:    JMP CODE_29B438             ; $29:B48D: 4C 38 B4    ;

CODE_29B490:    LDA $0729                   ; $29:B490: AD 29 07    ;
CODE_29B493:    CMP #$0D                    ; $29:B493: C9 0D       ;
CODE_29B495:    BNE CODE_29B4BC             ; $29:B495: D0 25       ;
CODE_29B497:    LDA #$00                    ; $29:B497: A9 00       ;
CODE_29B499:    STA $0E                     ; $29:B499: 85 0E       ;
CODE_29B49B:    LDY $0726                   ; $29:B49B: AC 26 07    ;
CODE_29B49E:    LDA $0045,y                 ; $29:B49E: B9 45 00    ;
CODE_29B4A1:    CMP $051F                   ; $29:B4A1: CD 1F 05    ;
CODE_29B4A4:    BEQ CODE_29B4AA             ; $29:B4A4: F0 04       ;
CODE_29B4A6:    BCS CODE_29B4B6                     ; $29:B4A6: B0 0E       ;
CODE_29B4A8:    BCC CODE_29B4B2             ; $29:B4A8: 90 08       ;
CODE_29B4AA:    LDA $0047,y                 ; $29:B4AA: B9 47 00    ;
CODE_29B4AD:    CMP $0510                   ; $29:B4AD: CD 10 05    ;
CODE_29B4B0:    BCS CODE_29B4B6                     ; $29:B4B0: B0 04       ;
CODE_29B4B2:    LDA #$01                    ; $29:B4B2: A9 01       ;
CODE_29B4B4:    STA $0E                     ; $29:B4B4: 85 0E       ;
CODE_29B4B6:    LDA $0E                     ; $29:B4B6: A5 0E       ;
CODE_29B4B8:    STA $052E                   ; $29:B4B8: 8D 2E 05    ;
CODE_29B4BB:    RTS                         ; $29:B4BB: 60          ;

CODE_29B4BC:    LDA $0743                   ; $29:B4BC: AD 43 07    ;
CODE_29B4BF:    ASL A                       ; $29:B4BF: 0A          ;
CODE_29B4C0:    TAY                         ; $29:B4C0: A8          ;
CODE_29B4C1:    LDA.w DATA_21E65D,y                 ; $29:B4C1: B9 5D E6    ;
CODE_29B4C4:    STA $00                     ; $29:B4C4: 85 00       ;
CODE_29B4C6:    LDA.w DATA_21E65D+1,y                   ; $29:B4C6: B9 5E E6    ;
CODE_29B4C9:    STA $01                     ; $29:B4C9: 85 01       ;
CODE_29B4CB:    LDA.w DATA_21E68D,y                 ; $29:B4CB: B9 8D E6    ;
CODE_29B4CE:    STA $02                     ; $29:B4CE: 85 02       ;
CODE_29B4D0:    LDA.w DATA_21E68D+1,y                   ; $29:B4D0: B9 8E E6    ;
CODE_29B4D3:    STA $03                     ; $29:B4D3: 85 03       ;
CODE_29B4D5:    LDA $0729                   ; $29:B4D5: AD 29 07    ;
CODE_29B4D8:    CMP #$04                    ; $29:B4D8: C9 04       ;
CODE_29B4DA:    BNE CODE_29B512             ; $29:B4DA: D0 36       ;
CODE_29B4DC:    LDA $7E396F                 ; $29:B4DC: AF 6F 39 7E ;
CODE_29B4E0:    BEQ CODE_29B4E5             ; $29:B4E0: F0 03       ;
CODE_29B4E2:    JMP CODE_29B626             ; $29:B4E2: 4C 26 B6    ;

CODE_29B4E5:    LDA #$00                    ; $29:B4E5: A9 00       ;
CODE_29B4E7:    STA $053D                   ; $29:B4E7: 8D 3D 05    ;
CODE_29B4EA:    LDY $1F2F                   ; $29:B4EA: AC 2F 1F    ;
CODE_29B4ED:    CPY #$06                    ; $29:B4ED: C0 06       ;
CODE_29B4EF:    BCS CODE_29B50D                     ; $29:B4EF: B0 1C       ;
CODE_29B4F1:    LDA ($00),y                 ; $29:B4F1: B1 00       ;
CODE_29B4F3:    STA $0501                   ; $29:B4F3: 8D 01 05    ;
CODE_29B4F6:    STA $1EEE                   ; $29:B4F6: 8D EE 1E    ;
CODE_29B4F9:    LDA ($02),y                 ; $29:B4F9: B1 02       ;
CODE_29B4FB:    PHA                         ; $29:B4FB: 48          ;
CODE_29B4FC:    AND #$0F                    ; $29:B4FC: 29 0F       ;
CODE_29B4FE:    STA $051F                   ; $29:B4FE: 8D 1F 05    ;
CODE_29B501:    STA $1F0A                   ; $29:B501: 8D 0A 1F    ;
CODE_29B504:    PLA                         ; $29:B504: 68          ;
CODE_29B505:    AND #$F0                    ; $29:B505: 29 F0       ;
CODE_29B507:    STA $0510                   ; $29:B507: 8D 10 05    ;
CODE_29B50A:    STA $1EFC                   ; $29:B50A: 8D FC 1E    ;
CODE_29B50D:    LDX #$01                    ; $29:B50D: A2 01       ;
CODE_29B50F:    JMP CODE_29B6CD             ; $29:B50F: 4C CD B6    ;

CODE_29B512:    LDA $053D                   ; $29:B512: AD 3D 05    ;
CODE_29B515:    BEQ CODE_29B4BB             ; $29:B515: F0 A4       ;
CODE_29B517:    LDA $9D                     ; $29:B517: A5 9D       ;
CODE_29B519:    BEQ CODE_29B51E             ; $29:B519: F0 03       ;
CODE_29B51B:    JMP CODE_29B626             ; $29:B51B: 4C 26 B6    ;

CODE_29B51E:    LDY $1F2F                   ; $29:B51E: AC 2F 1F    ;
CODE_29B521:    CPY #$06                    ; $29:B521: C0 06       ;
CODE_29B523:    BCC CODE_29B528             ; $29:B523: 90 03       ;
CODE_29B525:    JMP CODE_29B58F             ; $29:B525: 4C 8F B5    ;

CODE_29B528:    LDA $051F                   ; $29:B528: AD 1F 05    ;
CODE_29B52B:    ORA $0510                   ; $29:B52B: 0D 10 05    ;
CODE_29B52E:    CMP ($02),y                 ; $29:B52E: D1 02       ;
CODE_29B530:    BNE CODE_29B539             ; $29:B530: D0 07       ;
CODE_29B532:    LDA $0501                   ; $29:B532: AD 01 05    ;
CODE_29B535:    CMP ($00),y                 ; $29:B535: D1 00       ;
CODE_29B537:    BEQ CODE_29B589             ; $29:B537: F0 50       ;
CODE_29B539:    LDA ($00),y                 ; $29:B539: B1 00       ;
CODE_29B53B:    STA $04                     ; $29:B53B: 85 04       ;
CODE_29B53D:    LDA ($02),y                 ; $29:B53D: B1 02       ;
CODE_29B53F:    AND #$0F                    ; $29:B53F: 29 0F       ;
CODE_29B541:    STA $06                     ; $29:B541: 85 06       ;
CODE_29B543:    LDA ($02),y                 ; $29:B543: B1 02       ;
CODE_29B545:    AND #$F0                    ; $29:B545: 29 F0       ;
CODE_29B547:    STA $05                     ; $29:B547: 85 05       ;
CODE_29B549:    LDA $04                     ; $29:B549: A5 04       ;
CODE_29B54B:    SEC                         ; $29:B54B: 38          ;
CODE_29B54C:    SBC #$20                    ; $29:B54C: E9 20       ;
CODE_29B54E:    STA $04                     ; $29:B54E: 85 04       ;
CODE_29B550:    LDA $05                     ; $29:B550: A5 05       ;
CODE_29B552:    SEC                         ; $29:B552: 38          ;
CODE_29B553:    SBC #$20                    ; $29:B553: E9 20       ;
CODE_29B555:    STA $05                     ; $29:B555: 85 05       ;
CODE_29B557:    LDA $06                     ; $29:B557: A5 06       ;
CODE_29B559:    SBC #$00                    ; $29:B559: E9 00       ;
CODE_29B55B:    STA $06                     ; $29:B55B: 85 06       ;
CODE_29B55D:    LDX $072B                   ; $29:B55D: AE 2B 07    ;
CODE_29B560:    DEX                         ; $29:B560: CA          ;
CODE_29B561:    LDA $7E397D,x               ; $29:B561: BF 7D 39 7E ;
CODE_29B565:    SEC                         ; $29:B565: 38          ;
CODE_29B566:    SBC $04                     ; $29:B566: E5 04       ;
CODE_29B568:    CMP #$41                    ; $29:B568: C9 41       ;
CODE_29B56A:    BCS CODE_29B583                     ; $29:B56A: B0 17       ;
CODE_29B56C:    LDA $7E3981,x               ; $29:B56C: BF 81 39 7E ;
CODE_29B570:    SEC                         ; $29:B570: 38          ;
CODE_29B571:    SBC $05                     ; $29:B571: E5 05       ;
CODE_29B573:    STA $05                     ; $29:B573: 85 05       ;
CODE_29B575:    LDA $7E397F,x               ; $29:B575: BF 7F 39 7E ;
CODE_29B579:    SBC $06                     ; $29:B579: E5 06       ;
CODE_29B57B:    BNE CODE_29B583             ; $29:B57B: D0 06       ;
CODE_29B57D:    LDA $05                     ; $29:B57D: A5 05       ;
CODE_29B57F:    CMP #$41                    ; $29:B57F: C9 41       ;
CODE_29B581:    BCC CODE_29B589             ; $29:B581: 90 06       ;
CODE_29B583:    DEX                         ; $29:B583: CA          ;
CODE_29B584:    BPL CODE_29B561             ; $29:B584: 10 DB       ;
CODE_29B586:    JMP CODE_29B597             ; $29:B586: 4C 97 B5    ;

CODE_29B589:    INC $1F2F                   ; $29:B589: EE 2F 1F    ;
CODE_29B58C:    JMP CODE_29B51E             ; $29:B58C: 4C 1E B5    ;

CODE_29B58F:    LDX $0C                     ; $29:B58F: A6 0C       ;
CODE_29B591:    LDA #$00                    ; $29:B591: A9 00       ;
CODE_29B593:    STA $053D                   ; $29:B593: 8D 3D 05    ;
CODE_29B596:    RTS                         ; $29:B596: 60          ;

CODE_29B597:    LDX $0C                     ; $29:B597: A6 0C       ;
CODE_29B599:    LDY $1F2F                   ; $29:B599: AC 2F 1F    ;
CODE_29B59C:    LDA #$00                    ; $29:B59C: A9 00       ;
CODE_29B59E:    STA $052E                   ; $29:B59E: 8D 2E 05    ;
CODE_29B5A1:    STA $A4                     ; $29:B5A1: 85 A4       ;
CODE_29B5A3:    LDA ($00),y                 ; $29:B5A3: B1 00       ;
CODE_29B5A5:    SEC                         ; $29:B5A5: 38          ;
CODE_29B5A6:    SBC $0501                   ; $29:B5A6: ED 01 05    ;
CODE_29B5A9:    STA $9E                     ; $29:B5A9: 85 9E       ;
CODE_29B5AB:    LDA ($02),y                 ; $29:B5AB: B1 02       ;
CODE_29B5AD:    AND #$F0                    ; $29:B5AD: 29 F0       ;
CODE_29B5AF:    SEC                         ; $29:B5AF: 38          ;
CODE_29B5B0:    SBC $0510                   ; $29:B5B0: ED 10 05    ;
CODE_29B5B3:    STA $A2                     ; $29:B5B3: 85 A2       ;
CODE_29B5B5:    LDA ($02),y                 ; $29:B5B5: B1 02       ;
CODE_29B5B7:    AND #$0F                    ; $29:B5B7: 29 0F       ;
CODE_29B5B9:    SBC $051F                   ; $29:B5B9: ED 1F 05    ;
CODE_29B5BC:    STA $A1                     ; $29:B5BC: 85 A1       ;
CODE_29B5BE:    LDA ($02),y                 ; $29:B5BE: B1 02       ;
CODE_29B5C0:    AND #$0F                    ; $29:B5C0: 29 0F       ;
CODE_29B5C2:    CMP $051F                   ; $29:B5C2: CD 1F 05    ;
CODE_29B5C5:    BEQ CODE_29B5CB             ; $29:B5C5: F0 04       ;
CODE_29B5C7:    BPL CODE_29B5EB             ; $29:B5C7: 10 22       ;
CODE_29B5C9:    BMI CODE_29B5D4             ; $29:B5C9: 30 09       ;
CODE_29B5CB:    LDA ($02),y                 ; $29:B5CB: B1 02       ;
CODE_29B5CD:    AND #$F0                    ; $29:B5CD: 29 F0       ;
CODE_29B5CF:    CMP $0510                   ; $29:B5CF: CD 10 05    ;
CODE_29B5D2:    BCS CODE_29B5EB                     ; $29:B5D2: B0 17       ;
CODE_29B5D4:    LDA #$01                    ; $29:B5D4: A9 01       ;
CODE_29B5D6:    STA $A4                     ; $29:B5D6: 85 A4       ;
CODE_29B5D8:    LDA #$FF                    ; $29:B5D8: A9 FF       ;
CODE_29B5DA:    EOR $A1                     ; $29:B5DA: 45 A1       ;
CODE_29B5DC:    STA $A1                     ; $29:B5DC: 85 A1       ;
CODE_29B5DE:    LDA #$FF                    ; $29:B5DE: A9 FF       ;
CODE_29B5E0:    EOR $A2                     ; $29:B5E0: 45 A2       ;
CODE_29B5E2:    STA $A2                     ; $29:B5E2: 85 A2       ;
CODE_29B5E4:    INC $A2                     ; $29:B5E4: E6 A2       ;
CODE_29B5E6:    LDA #$01                    ; $29:B5E6: A9 01       ;
CODE_29B5E8:    STA $052E                   ; $29:B5E8: 8D 2E 05    ;
CODE_29B5EB:    LDA ($00),y                 ; $29:B5EB: B1 00       ;
CODE_29B5ED:    CMP $0501                   ; $29:B5ED: CD 01 05    ;
CODE_29B5F0:    BCS CODE_29B600                     ; $29:B5F0: B0 0E       ;
CODE_29B5F2:    LDA #$FF                    ; $29:B5F2: A9 FF       ;
CODE_29B5F4:    EOR $9E                     ; $29:B5F4: 45 9E       ;
CODE_29B5F6:    STA $9E                     ; $29:B5F6: 85 9E       ;
CODE_29B5F8:    INC $9E                     ; $29:B5F8: E6 9E       ;
CODE_29B5FA:    LDA $A4                     ; $29:B5FA: A5 A4       ;
CODE_29B5FC:    ORA #$02                    ; $29:B5FC: 09 02       ;
CODE_29B5FE:    STA $A4                     ; $29:B5FE: 85 A4       ;
CODE_29B600:    LDY #$04                    ; $29:B600: A0 04       ;
CODE_29B602:    CLC                         ; $29:B602: 18          ;
CODE_29B603:    LSR $9E                     ; $29:B603: 46 9E       ;
CODE_29B605:    ROR $9F                     ; $29:B605: 66 9F       ;
CODE_29B607:    CLC                         ; $29:B607: 18          ;
CODE_29B608:    LSR $A1                     ; $29:B608: 46 A1       ;
CODE_29B60A:    ROR $A2                     ; $29:B60A: 66 A2       ;
CODE_29B60C:    ROR $A3                     ; $29:B60C: 66 A3       ;
CODE_29B60E:    DEY                         ; $29:B60E: 88          ;
CODE_29B60F:    BPL CODE_29B602             ; $29:B60F: 10 F1       ;
CODE_29B611:    LDA $A2                     ; $29:B611: A5 A2       ;
CODE_29B613:    STA $A1                     ; $29:B613: 85 A1       ;
CODE_29B615:    LDA $A3                     ; $29:B615: A5 A3       ;
CODE_29B617:    STA $A2                     ; $29:B617: 85 A2       ;
CODE_29B619:    LDA #$00                    ; $29:B619: A9 00       ;
CODE_29B61B:    STA $A3                     ; $29:B61B: 85 A3       ;
CODE_29B61D:    LDA #$01                    ; $29:B61D: A9 01       ;
CODE_29B61F:    STA $9D                     ; $29:B61F: 85 9D       ;
CODE_29B621:    LDA #$20                    ; $29:B621: A9 20       ;
CODE_29B623:    STA $0711                   ; $29:B623: 8D 11 07    ;
CODE_29B626:    LDA $0711                   ; $29:B626: AD 11 07    ;
CODE_29B629:    BEQ CODE_29B630             ; $29:B629: F0 05       ;
CODE_29B62B:    JSL CODE_23878D             ; $29:B62B: 22 8D 87 23 ;
CODE_29B62F:    RTS                         ; $29:B62F: 60          ;

CODE_29B630:    LDA $7E396F                 ; $29:B630: AF 6F 39 7E ;
CODE_29B634:    BEQ CODE_29B641             ; $29:B634: F0 0B       ;
CODE_29B636:    LDA #$00                    ; $29:B636: A9 00       ;
CODE_29B638:    STA $053D                   ; $29:B638: 8D 3D 05    ;
CODE_29B63B:    STA $1F2F                   ; $29:B63B: 8D 2F 1F    ;
CODE_29B63E:    JMP CODE_29B6CD             ; $29:B63E: 4C CD B6    ;

CODE_29B641:    LDA #$47                    ; $29:B641: A9 47       ;
CODE_29B643:    STA $1203                   ; $29:B643: 8D 03 12    ;
CODE_29B646:    LDX #$01                    ; $29:B646: A2 01       ;
CODE_29B648:    LDA $15                     ; $29:B648: A5 15       ;
CODE_29B64A:    AND #$03                    ; $29:B64A: 29 03       ;
CODE_29B64C:    BEQ CODE_29B651             ; $29:B64C: F0 03       ;
CODE_29B64E:    JMP CODE_29B6CD             ; $29:B64E: 4C CD B6    ;

CODE_29B651:    LDA $A4                     ; $29:B651: A5 A4       ;
CODE_29B653:    AND #$01                    ; $29:B653: 29 01       ;
CODE_29B655:    BNE CODE_29B671             ; $29:B655: D0 1A       ;
CODE_29B657:    LDA $A3                     ; $29:B657: A5 A3       ;
CODE_29B659:    CLC                         ; $29:B659: 18          ;
CODE_29B65A:    ADC $A2                     ; $29:B65A: 65 A2       ;
CODE_29B65C:    STA $A3                     ; $29:B65C: 85 A3       ;
CODE_29B65E:    LDA $0510                   ; $29:B65E: AD 10 05    ;
CODE_29B661:    ADC $A1                     ; $29:B661: 65 A1       ;
CODE_29B663:    STA $0510                   ; $29:B663: 8D 10 05    ;
CODE_29B666:    LDA $051F                   ; $29:B666: AD 1F 05    ;
CODE_29B669:    ADC #$00                    ; $29:B669: 69 00       ;
CODE_29B66B:    STA $051F                   ; $29:B66B: 8D 1F 05    ;
CODE_29B66E:    JMP CODE_29B688             ; $29:B66E: 4C 88 B6    ;

CODE_29B671:    LDA $A3                     ; $29:B671: A5 A3       ;
CODE_29B673:    SEC                         ; $29:B673: 38          ;
CODE_29B674:    SBC $A2                     ; $29:B674: E5 A2       ;
CODE_29B676:    STA $A3                     ; $29:B676: 85 A3       ;
CODE_29B678:    LDA $0510                   ; $29:B678: AD 10 05    ;
CODE_29B67B:    SBC $A1                     ; $29:B67B: E5 A1       ;
CODE_29B67D:    STA $0510                   ; $29:B67D: 8D 10 05    ;
CODE_29B680:    LDA $051F                   ; $29:B680: AD 1F 05    ;
CODE_29B683:    SBC #$00                    ; $29:B683: E9 00       ;
CODE_29B685:    STA $051F                   ; $29:B685: 8D 1F 05    ;
CODE_29B688:    LDA $A4                     ; $29:B688: A5 A4       ;
CODE_29B68A:    AND #$02                    ; $29:B68A: 29 02       ;
CODE_29B68C:    BNE CODE_29B6A0             ; $29:B68C: D0 12       ;
CODE_29B68E:    LDA $A0                     ; $29:B68E: A5 A0       ;
CODE_29B690:    CLC                         ; $29:B690: 18          ;
CODE_29B691:    ADC $9F                     ; $29:B691: 65 9F       ;
CODE_29B693:    STA $A0                     ; $29:B693: 85 A0       ;
CODE_29B695:    LDA $0501                   ; $29:B695: AD 01 05    ;
CODE_29B698:    ADC $9E                     ; $29:B698: 65 9E       ;
CODE_29B69A:    STA $0501                   ; $29:B69A: 8D 01 05    ;
CODE_29B69D:    JMP CODE_29B6AF             ; $29:B69D: 4C AF B6    ;

CODE_29B6A0:    LDA $A0                     ; $29:B6A0: A5 A0       ;
CODE_29B6A2:    SEC                         ; $29:B6A2: 38          ;
CODE_29B6A3:    SBC $9F                     ; $29:B6A3: E5 9F       ;
CODE_29B6A5:    STA $A0                     ; $29:B6A5: 85 A0       ;
CODE_29B6A7:    LDA $0501                   ; $29:B6A7: AD 01 05    ;
CODE_29B6AA:    SBC $9E                     ; $29:B6AA: E5 9E       ;
CODE_29B6AC:    STA $0501                   ; $29:B6AC: 8D 01 05    ;
CODE_29B6AF:    LDX #$01                    ; $29:B6AF: A2 01       ;
CODE_29B6B1:    DEC $053D                   ; $29:B6B1: CE 3D 05    ;
CODE_29B6B4:    BNE CODE_29B6CD             ; $29:B6B4: D0 17       ;
CODE_29B6B6:    LDA $0501                   ; $29:B6B6: AD 01 05    ;
CODE_29B6B9:    STA $1EEE                   ; $29:B6B9: 8D EE 1E    ;
CODE_29B6BC:    LDA $051F                   ; $29:B6BC: AD 1F 05    ;
CODE_29B6BF:    STA $1F0A                   ; $29:B6BF: 8D 0A 1F    ;
CODE_29B6C2:    LDA $0510                   ; $29:B6C2: AD 10 05    ;
CODE_29B6C5:    STA $1EFC                   ; $29:B6C5: 8D FC 1E    ;
CODE_29B6C8:    LDX #$01                    ; $29:B6C8: A2 01       ;
CODE_29B6CA:    INC $1F2F                   ; $29:B6CA: EE 2F 1F    ;
CODE_29B6CD:    LDA $050F,x                 ; $29:B6CD: BD 0F 05    ;
CODE_29B6D0:    STA $1EFB,x                 ; $29:B6D0: 9D FB 1E    ;
CODE_29B6D3:    LDA $051E,x                 ; $29:B6D3: BD 1E 05    ;
CODE_29B6D6:    STA $1F09,x                 ; $29:B6D6: 9D 09 1F    ;
CODE_29B6D9:    RTS                         ; $29:B6D9: 60          ;

CODE_29B6DA:    STA $00                     ; $29:B6DA: 85 00       ;
CODE_29B6DC:    LDA #$04                    ; $29:B6DC: A9 04       ;
CODE_29B6DE:    STA $01                     ; $29:B6DE: 85 01       ;
CODE_29B6E0:    LDY $0C                     ; $29:B6E0: A4 0C       ;
CODE_29B6E2:    DEC $00                     ; $29:B6E2: C6 00       ;
CODE_29B6E4:    LDA $0783,y                 ; $29:B6E4: B9 83 07    ;
CODE_29B6E7:    ASL A                       ; $29:B6E7: 0A          ;
CODE_29B6E8:    BCC CODE_29B6EE             ; $29:B6E8: 90 04       ;
CODE_29B6EA:    INC $00                     ; $29:B6EA: E6 00       ;
CODE_29B6EC:    INC $00                     ; $29:B6EC: E6 00       ;
CODE_29B6EE:    LDA $00                     ; $29:B6EE: A5 00       ;
CODE_29B6F0:    AND #$03                    ; $29:B6F0: 29 03       ;
CODE_29B6F2:    STA $00                     ; $29:B6F2: 85 00       ;
CODE_29B6F4:    EOR $052D,y                 ; $29:B6F4: 59 2D 05    ;
CODE_29B6F7:    CMP #$01                    ; $29:B6F7: C9 01       ;
CODE_29B6F9:    BEQ CODE_29B6E0             ; $29:B6F9: F0 E5       ;
CODE_29B6FB:    DEC $01                     ; $29:B6FB: C6 01       ;
CODE_29B6FD:    BPL CODE_29B707             ; $29:B6FD: 10 08       ;
CODE_29B6FF:    LDA #$00                    ; $29:B6FF: A9 00       ;
CODE_29B701:    STA $053C,y                 ; $29:B701: 99 3C 05    ;
CODE_29B704:    PLA                         ; $29:B704: 68          ;
CODE_29B705:    PLA                         ; $29:B705: 68          ;
CODE_29B706:    RTS                         ; $29:B706: 60          ;

CODE_29B707:    BNE CODE_29B710             ; $29:B707: D0 07       ;
CODE_29B709:    LDA $052D,y                 ; $29:B709: B9 2D 05    ;
CODE_29B70C:    EOR #$01                    ; $29:B70C: 49 01       ;
CODE_29B70E:    STA $00                     ; $29:B70E: 85 00       ;
CODE_29B710:    LDX $00                     ; $29:B710: A6 00       ;
CODE_29B712:    JSR CODE_29B778             ; $29:B712: 20 78 B7    ;
CODE_29B715:    LDA $00                     ; $29:B715: A5 00       ;
CODE_29B717:    ASL A                       ; $29:B717: 0A          ;
CODE_29B718:    TAX                         ; $29:B718: AA          ;
CODE_29B719:    LDA.w DATA_218DBC,x                 ; $29:B719: BD BC 8D    ;
CODE_29B71C:    STA $0E                     ; $29:B71C: 85 0E       ;
CODE_29B71E:    LDA.w DATA_218DBD,x                 ; $29:B71E: BD BD 8D    ;
CODE_29B721:    STA $0F                     ; $29:B721: 85 0F       ;
CODE_29B723:    LDY $02                     ; $29:B723: A4 02       ;
CODE_29B725:    LDA [$2E],y                 ; $29:B725: B7 2E       ;
CODE_29B727:    LDY #$08                    ; $29:B727: A0 08       ;
CODE_29B729:    CMP ($0E),y                 ; $29:B729: D1 0E       ;
CODE_29B72B:    BEQ CODE_29B732             ; $29:B72B: F0 05       ;
CODE_29B72D:    DEY                         ; $29:B72D: 88          ;
CODE_29B72E:    BPL CODE_29B729             ; $29:B72E: 10 F9       ;
CODE_29B730:    BMI CODE_29B6E0             ; $29:B730: 30 AE       ;
CODE_29B732:    LDY $0C                     ; $29:B732: A4 0C       ;
CODE_29B734:    LDA $00                     ; $29:B734: A5 00       ;
CODE_29B736:    CLC                         ; $29:B736: 18          ;
CODE_29B737:    ADC #$04                    ; $29:B737: 69 04       ;
CODE_29B739:    TAX                         ; $29:B739: AA          ;
CODE_29B73A:    JSR CODE_29B778             ; $29:B73A: 20 78 B7    ;
CODE_29B73D:    LDY $02                     ; $29:B73D: A4 02       ;
CODE_29B73F:    LDA [$2E],y                 ; $29:B73F: B7 2E       ;
CODE_29B741:    LDY #$11                    ; $29:B741: A0 11       ;
CODE_29B743:    CMP.w DATA_21E7FC,y                 ; $29:B743: D9 FC E7    ;
CODE_29B746:    BNE CODE_29B74B             ; $29:B746: D0 03       ;
CODE_29B748:    JMP CODE_29B6E0             ; $29:B748: 4C E0 B6    ;

CODE_29B74B:    DEY                         ; $29:B74B: 88          ;
CODE_29B74C:    BNE CODE_29B743             ; $29:B74C: D0 F5       ;
CODE_29B74E:    LDX $0C                     ; $29:B74E: A6 0C       ;
CODE_29B750:    LDY #$04                    ; $29:B750: A0 04       ;
CODE_29B752:    CMP.w DATA_21E80D,y                 ; $29:B752: D9 0D E8    ;
CODE_29B755:    BEQ CODE_29B767             ; $29:B755: F0 10       ;
CODE_29B757:    DEY                         ; $29:B757: 88          ;
CODE_29B758:    BNE CODE_29B752             ; $29:B758: D0 F8       ;
CODE_29B75A:    PHA                         ; $29:B75A: 48          ;
CODE_29B75B:    ASL A                       ; $29:B75B: 0A          ;
CODE_29B75C:    ROL A                       ; $29:B75C: 2A          ;
CODE_29B75D:    ROL A                       ; $29:B75D: 2A          ;
CODE_29B75E:    AND #$03                    ; $29:B75E: 29 03       ;
CODE_29B760:    TAY                         ; $29:B760: A8          ;
CODE_29B761:    PLA                         ; $29:B761: 68          ;
CODE_29B762:    CMP $1E9A,y                 ; $29:B762: D9 9A 1E    ;
CODE_29B765:    BCC CODE_29B772             ; $29:B765: 90 0B       ;
CODE_29B767:    LDA #$20                    ; $29:B767: A9 20       ;
CODE_29B769:    CMP $053C,x                 ; $29:B769: DD 3C 05    ;
CODE_29B76C:    BNE CODE_29B772             ; $29:B76C: D0 04       ;
CODE_29B76E:    ASL A                       ; $29:B76E: 0A          ;
CODE_29B76F:    STA $053C,x                 ; $29:B76F: 9D 3C 05    ;
CODE_29B772:    LDA $00                     ; $29:B772: A5 00       ;
CODE_29B774:    STA $052D,x                 ; $29:B774: 9D 2D 05    ;
CODE_29B777:    RTS                         ; $29:B777: 60          ;

CODE_29B778:    LDA $0500,y                 ; $29:B778: B9 00 05    ;
CODE_29B77B:    CLC                         ; $29:B77B: 18          ;
CODE_29B77C:    ADC.w DATA_21E7E5,x                 ; $29:B77C: 7D E5 E7    ;
CODE_29B77F:    STA $02                     ; $29:B77F: 85 02       ;
CODE_29B781:    LDA $050F,y                 ; $29:B781: B9 0F 05    ;
CODE_29B784:    CLC                         ; $29:B784: 18          ;
CODE_29B785:    ADC.w DATA_21E7ED,x                 ; $29:B785: 7D ED E7    ;
CODE_29B788:    STA $03                     ; $29:B788: 85 03       ;
CODE_29B78A:    LDA $051E,y                 ; $29:B78A: B9 1E 05    ;
CODE_29B78D:    ADC.w DATA_21E7F5,x                 ; $29:B78D: 7D F5 E7    ;
CODE_29B790:    ASL A                       ; $29:B790: 0A          ;
CODE_29B791:    TAX                         ; $29:B791: AA          ;
CODE_29B792:    LDA.l DATA_218200,x                 ; $29:B792: BF 00 82 21 ;
CODE_29B796:    CLC                         ; $29:B796: 18          ;
CODE_29B797:    ADC #$F0                    ; $29:B797: 69 F0       ;
CODE_29B799:    STA $2E                     ; $29:B799: 85 2E       ;
CODE_29B79B:    LDA.l DATA_218200+1,x               ; $29:B79B: BF 01 82 21 ;
CODE_29B79F:    ADC #$00                    ; $29:B79F: 69 00       ;
CODE_29B7A1:    STA $2F                     ; $29:B7A1: 85 2F       ;
CODE_29B7A3:    LDA $03                     ; $29:B7A3: A5 03       ;
CODE_29B7A5:    LSR A                       ; $29:B7A5: 4A          ;
CODE_29B7A6:    LSR A                       ; $29:B7A6: 4A          ;
CODE_29B7A7:    LSR A                       ; $29:B7A7: 4A          ;
CODE_29B7A8:    LSR A                       ; $29:B7A8: 4A          ;
CODE_29B7A9:    ORA $02                     ; $29:B7A9: 05 02       ;
CODE_29B7AB:    STA $02                     ; $29:B7AB: 85 02       ;
CODE_29B7AD:    RTS                         ; $29:B7AD: 60          ;

CODE_29B7AE:    JSR CODE_29B2F9             ; $29:B7AE: 20 F9 B2    ;
CODE_29B7B1:    JSR CODE_29BD33             ; $29:B7B1: 20 33 BD    ;
CODE_29B7B4:    LDA #$0D                    ; $29:B7B4: A9 0D       ;
CODE_29B7B6:    STA $0C                     ; $29:B7B6: 85 0C       ;
CODE_29B7B8:    INC $1F25                   ; $29:B7B8: EE 25 1F    ;
CODE_29B7BB:    LDA $1F25                   ; $29:B7BB: AD 25 1F    ;
CODE_29B7BE:    CMP #$0B                    ; $29:B7BE: C9 0B       ;
CODE_29B7C0:    BCC CODE_29B7C5             ; $29:B7C0: 90 03       ;
CODE_29B7C2:    STZ $1F25                   ; $29:B7C2: 9C 25 1F    ;
CODE_29B7C5:    STZ $05                     ; $29:B7C5: 64 05       ;
CODE_29B7C7:    LDY $0C                     ; $29:B7C7: A4 0C       ;
CODE_29B7C9:    BEQ CODE_29B7DD             ; $29:B7C9: F0 12       ;
CODE_29B7CB:    DEY                         ; $29:B7CB: 88          ;
CODE_29B7CC:    TYA                         ; $29:B7CC: 98          ;
CODE_29B7CD:    CLC                         ; $29:B7CD: 18          ;
CODE_29B7CE:    ADC $1F25                   ; $29:B7CE: 6D 25 1F    ;
CODE_29B7D1:    CMP #$0B                    ; $29:B7D1: C9 0B       ;
CODE_29B7D3:    BCC CODE_29B7D7             ; $29:B7D3: 90 02       ;
CODE_29B7D5:    SBC #$0B                    ; $29:B7D5: E9 0B       ;
CODE_29B7D7:    TAX                         ; $29:B7D7: AA          ;
CODE_29B7D8:    LDA.w DATA_21E872,x                 ; $29:B7D8: BD 72 E8    ;
CODE_29B7DB:    STA $05                     ; $29:B7DB: 85 05       ;
CODE_29B7DD:    LDX $0C                     ; $29:B7DD: A6 0C       ;
CODE_29B7DF:    LDA $0587,x                 ; $29:B7DF: BD 87 05    ;
CODE_29B7E2:    BEQ CODE_29B7E7             ; $29:B7E2: F0 03       ;
CODE_29B7E4:    JSR CODE_29B7FC             ; $29:B7E4: 20 FC B7    ;
CODE_29B7E7:    DEC $0C                     ; $29:B7E7: C6 0C       ;
CODE_29B7E9:    BPL CODE_29B7C5             ; $29:B7E9: 10 DA       ;
CODE_29B7EB:    LDA $0729                   ; $29:B7EB: AD 29 07    ;
CODE_29B7EE:    CMP #$0D                    ; $29:B7EE: C9 0D       ;
CODE_29B7F0:    BNE CODE_29B7FB             ; $29:B7F0: D0 09       ;
CODE_29B7F2:    LDA $15                     ; $29:B7F2: A5 15       ;
CODE_29B7F4:    AND #$03                    ; $29:B7F4: 29 03       ;
CODE_29B7F6:    BNE CODE_29B7FB             ; $29:B7F6: D0 03       ;
CODE_29B7F8:    INC $053C                   ; $29:B7F8: EE 3C 05    ;
CODE_29B7FB:    RTL                         ; $29:B7FB: 6B          ;

CODE_29B7FC:    LDA $1F17,x                 ; $29:B7FC: BD 17 1F    ;
CODE_29B7FF:    CPX $A5                     ; $29:B7FF: E4 A5       ;
CODE_29B801:    BNE CODE_29B808             ; $29:B801: D0 05       ;
CODE_29B803:    CPX #$00                    ; $29:B803: E0 00       ;
CODE_29B805:    BEQ CODE_29B808             ; $29:B805: F0 01       ;
CODE_29B807:    RTS                         ; $29:B807: 60          ;

CODE_29B808:    JSL CODE_20FB1F         ; $29:B808: 22 1F FB 20 ; ExecutePtrShort

PNTR_29B80C:        dw CODE_29B331
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E
                    dw CODE_29B82E

CODE_29B82E:    LDA #$00                    ; $29:B82E: A9 00       ;
CODE_29B830:    LDY $1F17,x                 ; $29:B830: BC 17 1F    ;
CODE_29B833:    CPY #$10                    ; $29:B833: C0 10       ;
CODE_29B835:    BNE CODE_29B840             ; $29:B835: D0 09       ;
CODE_29B837:    LDY $0500,x                 ; $29:B837: BC 00 05    ;
CODE_29B83A:    CPY #$F0                    ; $29:B83A: C0 F0       ;
CODE_29B83C:    BEQ CODE_29B840             ; $29:B83C: F0 02       ;
CODE_29B83E:    LDA #$07                    ; $29:B83E: A9 07       ;
CODE_29B840:    LDY $05                     ; $29:B840: A4 05       ;
CODE_29B842:    CLC                         ; $29:B842: 18          ;
CODE_29B843:    ADC $0500,x                 ; $29:B843: 7D 00 05    ;
CODE_29B846:    STA $0899,y                 ; $29:B846: 99 99 08    ;
CODE_29B849:    LDA $050F,x                 ; $29:B849: BD 0F 05    ;
CODE_29B84C:    SEC                         ; $29:B84C: 38          ;
CODE_29B84D:    SBC $0210                   ; $29:B84D: ED 10 02    ;
CODE_29B850:    STA $0898,y                 ; $29:B850: 99 98 08    ;
CODE_29B853:    LDX $0C                     ; $29:B853: A6 0C       ;
CODE_29B855:    LDA $1F17,x                 ; $29:B855: BD 17 1F    ;
CODE_29B858:    STA $07                     ; $29:B858: 85 07       ;
CODE_29B85A:    LDX #$08                    ; $29:B85A: A2 08       ;
CODE_29B85C:    CMP #$10                    ; $29:B85C: C9 10       ;
CODE_29B85E:    BCS CODE_29B879                     ; $29:B85E: B0 19       ;
CODE_29B860:    CMP #$01                    ; $29:B860: C9 01       ;
CODE_29B862:    BNE CODE_29B869             ; $29:B862: D0 05       ;
CODE_29B864:    LDX #$30                    ; $29:B864: A2 30       ;
CODE_29B866:    JMP CODE_29B879             ; $29:B866: 4C 79 B8    ;

CODE_29B869:    LDA $0729                   ; $29:B869: AD 29 07    ;
CODE_29B86C:    CMP #$0B                    ; $29:B86C: C9 0B       ;
CODE_29B86E:    BNE CODE_29B879             ; $29:B86E: D0 09       ;
CODE_29B870:    LDY $0C                     ; $29:B870: A4 0C       ;
CODE_29B872:    LDA $053C,y                 ; $29:B872: B9 3C 05    ;
CODE_29B875:    BEQ CODE_29B879             ; $29:B875: F0 02       ;
CODE_29B877:    LDX #$04                    ; $29:B877: A2 04       ;
CODE_29B879:    STX $08                     ; $29:B879: 86 08       ;
CODE_29B87B:    LDA $07                     ; $29:B87B: A5 07       ;
CODE_29B87D:    ASL A                       ; $29:B87D: 0A          ;
CODE_29B87E:    CLC                         ; $29:B87E: 18          ;
CODE_29B87F:    ADC $07                     ; $29:B87F: 65 07       ;
CODE_29B881:    TAX                         ; $29:B881: AA          ;
CODE_29B882:    CPX #$09                    ; $29:B882: E0 09       ;
CODE_29B884:    BCC CODE_29B897             ; $29:B884: 90 11       ;
CODE_29B886:    CPX #$30                    ; $29:B886: E0 30       ;
CODE_29B888:    BEQ CODE_29B897             ; $29:B888: F0 0D       ;
CODE_29B88A:    CPX #$27                    ; $29:B88A: E0 27       ;
CODE_29B88C:    BCC CODE_29B892             ; $29:B88C: 90 04       ;
CODE_29B88E:    CPX #$30                    ; $29:B88E: E0 30       ;
CODE_29B890:    BCC CODE_29B897             ; $29:B890: 90 05       ;
CODE_29B892:    LDA $1F55                   ; $29:B892: AD 55 1F    ;
CODE_29B895:    BNE CODE_29B89F             ; $29:B895: D0 08       ;
CODE_29B897:    INX                         ; $29:B897: E8          ;
CODE_29B898:    LDA $15                     ; $29:B898: A5 15       ;
CODE_29B89A:    AND $08                     ; $29:B89A: 25 08       ;
CODE_29B89C:    BEQ CODE_29B89F             ; $29:B89C: F0 01       ;
CODE_29B89E:    INX                         ; $29:B89E: E8          ;
CODE_29B89F:    LDY $05                     ; $29:B89F: A4 05       ;
CODE_29B8A1:    LDA.w DATA_21E80F,x                 ; $29:B8A1: BD 0F E8    ;
CODE_29B8A4:    STA $089A,y                 ; $29:B8A4: 99 9A 08    ;
CODE_29B8A7:    LDA.w DATA_21E83F,x                 ; $29:B8A7: BD 3F E8    ;
CODE_29B8AA:    STA $089B,y                 ; $29:B8AA: 99 9B 08    ;
CODE_29B8AD:    TYA                         ; $29:B8AD: 98          ;
CODE_29B8AE:    LSR A                       ; $29:B8AE: 4A          ;
CODE_29B8AF:    LSR A                       ; $29:B8AF: 4A          ;
CODE_29B8B0:    TAX                         ; $29:B8B0: AA          ;
CODE_29B8B1:    LDA #$02                    ; $29:B8B1: A9 02       ;
CODE_29B8B3:    STA $0A46,x                 ; $29:B8B3: 9D 46 0A    ;
CODE_29B8B6:    LDX $0C                     ; $29:B8B6: A6 0C       ;
CODE_29B8B8:    LDA $1F17,x                 ; $29:B8B8: BD 17 1F    ;
CODE_29B8BB:    CMP #$01                    ; $29:B8BB: C9 01       ;
CODE_29B8BD:    BEQ CODE_29B8C3             ; $29:B8BD: F0 04       ;
CODE_29B8BF:    CMP #$10                    ; $29:B8BF: C9 10       ;
CODE_29B8C1:    BCC CODE_29B8C4             ; $29:B8C1: 90 01       ;
CODE_29B8C3:    RTS                         ; $29:B8C3: 60          ;

CODE_29B8C4:    CMP #$07                    ; $29:B8C4: C9 07       ;
CODE_29B8C6:    BEQ CODE_29B8DD             ; $29:B8C6: F0 15       ;
CODE_29B8C8:    CMP #$09                    ; $29:B8C8: C9 09       ;
CODE_29B8CA:    BCC CODE_29B8D0             ; $29:B8CA: 90 04       ;
CODE_29B8CC:    CMP #$0D                    ; $29:B8CC: C9 0D       ;
CODE_29B8CE:    BCC CODE_29B8DD             ; $29:B8CE: 90 0D       ;
CODE_29B8D0:    LDA $052D,x                 ; $29:B8D0: BD 2D 05    ;
CODE_29B8D3:    BNE CODE_29B8DD             ; $29:B8D3: D0 08       ;
CODE_29B8D5:    LDA $089B,y                 ; $29:B8D5: B9 9B 08    ;
CODE_29B8D8:    EOR #$40                    ; $29:B8D8: 49 40       ;
CODE_29B8DA:    STA $089B,y                 ; $29:B8DA: 99 9B 08    ;
CODE_29B8DD:    LDY $0C                     ; $29:B8DD: A4 0C       ;
CODE_29B8DF:    LDA $1F17,y                 ; $29:B8DF: B9 17 1F    ;
CODE_29B8E2:    CMP #$02                    ; $29:B8E2: C9 02       ;
CODE_29B8E4:    BEQ CODE_29B8F3             ; $29:B8E4: F0 0D       ;
CODE_29B8E6:    CMP #$09                    ; $29:B8E6: C9 09       ;
CODE_29B8E8:    BCC CODE_29B8EE             ; $29:B8E8: 90 04       ;
CODE_29B8EA:    CMP #$10                    ; $29:B8EA: C9 10       ;
CODE_29B8EC:    BCC CODE_29B8F3             ; $29:B8EC: 90 05       ;
CODE_29B8EE:    LDA $1F55                   ; $29:B8EE: AD 55 1F    ;
CODE_29B8F1:    BNE CODE_29B953             ; $29:B8F1: D0 60       ;
CODE_29B8F3:    LDA $0417                   ; $29:B8F3: AD 17 04    ;
CODE_29B8F6:    BNE CODE_29B953             ; $29:B8F6: D0 5B       ;
CODE_29B8F8:    LDA $0710                   ; $29:B8F8: AD 10 07    ;
CODE_29B8FB:    BNE CODE_29B953             ; $29:B8FB: D0 56       ;
CODE_29B8FD:    LDA $0729                   ; $29:B8FD: AD 29 07    ;
CODE_29B900:    CMP #$0D                    ; $29:B900: C9 0D       ;
CODE_29B902:    BNE CODE_29B953             ; $29:B902: D0 4F       ;
CODE_29B904:    LDX $0726                   ; $29:B904: AE 26 07    ;
CODE_29B907:    LDA $1EED,y                 ; $29:B907: B9 ED 1E    ;
CODE_29B90A:    CMP $43,x                   ; $29:B90A: D5 43       ;
CODE_29B90C:    BNE CODE_29B953             ; $29:B90C: D0 45       ;
CODE_29B90E:    LDA $1F09,y                 ; $29:B90E: B9 09 1F    ;
CODE_29B911:    CMP $45,x                   ; $29:B911: D5 45       ;
CODE_29B913:    BNE CODE_29B953             ; $29:B913: D0 3E       ;
CODE_29B915:    LDA $1EFB,y                 ; $29:B915: B9 FB 1E    ;
CODE_29B918:    CMP $47,x                   ; $29:B918: D5 47       ;
CODE_29B91A:    BNE CODE_29B953             ; $29:B91A: D0 37       ;
CODE_29B91C:    LDX $0726                   ; $29:B91C: AE 26 07    ;
CODE_29B91F:    LDA #$00                    ; $29:B91F: A9 00       ;
CODE_29B921:    STA $073F,x                 ; $29:B921: 9D 3F 07    ;
CODE_29B924:    STA $0728                   ; $29:B924: 8D 28 07    ;
CODE_29B927:    LDA $1F17,y                 ; $29:B927: B9 17 1F    ;
CODE_29B92A:    STA $1E                     ; $29:B92A: 85 1E       ;
CODE_29B92C:    CMP #$09                    ; $29:B92C: C9 09       ;
CODE_29B92E:    BEQ CODE_29B934             ; $29:B92E: F0 04       ;
CODE_29B930:    CMP #$0A                    ; $29:B930: C9 0A       ;
CODE_29B932:    BNE CODE_29B93D             ; $29:B932: D0 09       ;
CODE_29B934:    LDA $7E396D                 ; $29:B934: AF 6D 39 7E ;
CODE_29B938:    INC A                       ; $29:B938: 1A          ;
CODE_29B939:    STA $7E396D                 ; $29:B939: 8F 6D 39 7E ;
CODE_29B93D:    PHB                         ; $29:B93D: 8B          ;
CODE_29B93E:    LDA #$7E                    ; $29:B93E: A9 7E       ;
CODE_29B940:    PHA                         ; $29:B940: 48          ;
CODE_29B941:    PLB                     ; $29:B941: AB          ; Databank is RAM
CODE_29B942:    LDA $3956,y                 ; $29:B942: B9 56 39    ;
CODE_29B945:    STA $3963                   ; $29:B945: 8D 63 39    ;
CODE_29B948:    PLB                     ; $29:B948: AB          ;
CODE_29B949:    LDA #$0F                    ; $29:B949: A9 0F       ;
CODE_29B94B:    STA $0729                   ; $29:B94B: 8D 29 07    ;
CODE_29B94E:    PLA                         ; $29:B94E: 68          ;
CODE_29B94F:    PLA                         ; $29:B94F: 68          ;
CODE_29B950:    JMP CODE_29B7EB             ; $29:B950: 4C EB B7    ;

CODE_29B953:    RTS                         ; $29:B953: 60          ;

CODE_29B954:    LDX $0726                   ; $29:B954: AE 26 07    ;
CODE_29B957:    LDA $4B,x                   ; $29:B957: B5 4B       ;
CODE_29B959:    EOR #$03                    ; $29:B959: 49 03       ;
CODE_29B95B:    CMP #$03                    ; $29:B95B: C9 03       ;
CODE_29B95D:    BNE CODE_29B961             ; $29:B95D: D0 02       ;
CODE_29B95F:    EOR #$0F                    ; $29:B95F: 49 0F       ;
CODE_29B961:    STA $4B,x                   ; $29:B961: 95 4B       ;
CODE_29B963:    RTS                         ; $29:B963: 60          ;

CODE_29B964:    LDX $0726                   ; $29:B964: AE 26 07    ;
CODE_29B967:    LDA $43,x                   ; $29:B967: B5 43       ;
CODE_29B969:    CLC                         ; $29:B969: 18          ;
CODE_29B96A:    ADC.w DATA_21E87E,y                 ; $29:B96A: 79 7E E8    ;
CODE_29B96D:    STA $0E                     ; $29:B96D: 85 0E       ;
CODE_29B96F:    LDA $47,x                   ; $29:B96F: B5 47       ;
CODE_29B971:    CLC                         ; $29:B971: 18          ;
CODE_29B972:    ADC.w DATA_21E886,y                 ; $29:B972: 79 86 E8    ;
CODE_29B975:    STA $0F                     ; $29:B975: 85 0F       ;
CODE_29B977:    LDA $45,x                   ; $29:B977: B5 45       ;
CODE_29B979:    ADC.w DATA_21E882,y                 ; $29:B979: 79 82 E8    ;
CODE_29B97C:    ASL A                       ; $29:B97C: 0A          ;
CODE_29B97D:    TAX                         ; $29:B97D: AA          ;
CODE_29B97E:    LDA.l DATA_218200,x                 ; $29:B97E: BF 00 82 21 ;
CODE_29B982:    STA $2E                     ; $29:B982: 85 2E       ;
CODE_29B984:    LDA.l DATA_218200+1,x               ; $29:B984: BF 01 82 21 ;
CODE_29B988:    STA $2F                     ; $29:B988: 85 2F       ;
CODE_29B98A:    INC $2F                     ; $29:B98A: E6 2F       ;
CODE_29B98C:    LDA $0F                     ; $29:B98C: A5 0F       ;
CODE_29B98E:    LSR A                       ; $29:B98E: 4A          ;
CODE_29B98F:    LSR A                       ; $29:B98F: 4A          ;
CODE_29B990:    LSR A                       ; $29:B990: 4A          ;
CODE_29B991:    LSR A                       ; $29:B991: 4A          ;
CODE_29B992:    STA $0F                     ; $29:B992: 85 0F       ;
CODE_29B994:    LDA $0E                     ; $29:B994: A5 0E       ;
CODE_29B996:    AND #$F0                    ; $29:B996: 29 F0       ;
CODE_29B998:    ORA $0F                     ; $29:B998: 05 0F       ;
CODE_29B99A:    TAY                         ; $29:B99A: A8          ;
CODE_29B99B:    LDA ($2E),y                 ; $29:B99B: B1 2E       ;
CODE_29B99D:    RTS                         ; $29:B99D: 60          ;

CODE_29B99E:    LDX $0738                   ; $29:B99E: AE 38 07    ;
CODE_29B9A1:    LDA $1DC6,x                 ; $29:B9A1: BD C6 1D    ;
CODE_29B9A4:    CMP #$09                    ; $29:B9A4: C9 09       ;
CODE_29B9A6:    BCC CODE_29B9C4             ; $29:B9A6: 90 1C       ;
CODE_29B9A8:    LDA #$01                    ; $29:B9A8: A9 01       ;
CODE_29B9AA:    STA $92                     ; $29:B9AA: 85 92       ;
CODE_29B9AC:    LDX $0726                   ; $29:B9AC: AE 26 07    ;
CODE_29B9AF:    LDA $7E3991                 ; $29:B9AF: AF 91 39 7E ;
CODE_29B9B3:    TAY                         ; $29:B9B3: A8          ;
CODE_29B9B4:    INY                         ; $29:B9B4: C8          ;
CODE_29B9B5:    TYA                         ; $29:B9B5: 98          ;
CODE_29B9B6:    ASL A                       ; $29:B9B6: 0A          ;
CODE_29B9B7:    ASL A                       ; $29:B9B7: 0A          ;
CODE_29B9B8:    ASL A                       ; $29:B9B8: 0A          ;
CODE_29B9B9:    ASL A                       ; $29:B9B9: 0A          ;
CODE_29B9BA:    ASL A                       ; $29:B9BA: 0A          ;
CODE_29B9BB:    CMP $49,x                   ; $29:B9BB: D5 49       ;
CODE_29B9BD:    BEQ CODE_29B9C4             ; $29:B9BD: F0 05       ;
CODE_29B9BF:    JSL CODE_238C1B             ; $29:B9BF: 22 1B 8C 23 ;
CODE_29B9C3:    RTS                         ; $29:B9C3: 60          ;

CODE_29B9C4:    LDA $0059                   ; $29:B9C4: AD 59 00    ;
CODE_29B9C7:    JSL CODE_20FB1F         ; $29:B9C7: 22 1F FB 20 ; ExecutePtrShort

PNTR_29B9CB:        dw CODE_29B9D5
                    dw CODE_29A8D7
                    dw CODE_29BA66

CODE_29B9D1:    JSR CODE_29B9C4             ; $29:B9D1: 20 C4 B9    ;
CODE_29B9D4:    RTL                         ; $29:B9D4: 6B          ;

CODE_29B9D5:    LDA #$24                    ; $29:B9D5: A9 24       ;
CODE_29B9D7:    STA $1203                   ; $29:B9D7: 8D 03 12    ;
CODE_29B9DA:    LDX #$07                    ; $29:B9DA: A2 07       ;
CODE_29B9DC:    LDA.w DATA_21E88A,x                 ; $29:B9DC: BD 8A E8    ;
CODE_29B9DF:    STA $8A,x                   ; $29:B9DF: 95 8A       ;
CODE_29B9E1:    DEX                         ; $29:B9E1: CA          ;
CODE_29B9E2:    BPL CODE_29B9DC             ; $29:B9E2: 10 F8       ;
CODE_29B9E4:    LDX $92                     ; $29:B9E4: A6 92       ;
CODE_29B9E6:    BNE CODE_29B9F0             ; $29:B9E6: D0 08       ;
CODE_29B9E8:    LDA #$80                    ; $29:B9E8: A9 80       ;
CODE_29B9EA:    STA $7F                     ; $29:B9EA: 85 7F       ;
CODE_29B9EC:    STA $80                     ; $29:B9EC: 85 80       ;
CODE_29B9EE:    BNE CODE_29BA45             ; $29:B9EE: D0 55       ;
CODE_29B9F0:    CPX #$01                    ; $29:B9F0: E0 01       ;
CODE_29B9F2:    BNE CODE_29BA10             ; $29:B9F2: D0 1C       ;
CODE_29B9F4:    LDX $0726                   ; $29:B9F4: AE 26 07    ;
CODE_29B9F7:    LDA $47,x                   ; $29:B9F7: B5 47       ;
CODE_29B9F9:    CLC                         ; $29:B9F9: 18          ;
CODE_29B9FA:    ADC $0210                   ; $29:B9FA: 6D 10 02    ;
CODE_29B9FD:    STA $7F                     ; $29:B9FD: 85 7F       ;
CODE_29B9FF:    LDA $43,x                   ; $29:B9FF: B5 43       ;
CODE_29BA01:    STA $80                     ; $29:BA01: 85 80       ;
CODE_29BA03:    LDA #$86                    ; $29:BA03: A9 86       ;
CODE_29BA05:    STA $0411                   ; $29:BA05: 8D 11 04    ;
CODE_29BA08:    LDA #$D0                    ; $29:BA08: A9 D0       ;
CODE_29BA0A:    STA $0412                   ; $29:BA0A: 8D 12 04    ;
CODE_29BA0D:    JMP CODE_29BA2B             ; $29:BA0D: 4C 2B BA    ;

CODE_29BA10:    LDA #$88                    ; $29:BA10: A9 88       ;
CODE_29BA12:    STA $7F                     ; $29:BA12: 85 7F       ;
CODE_29BA14:    LDA #$5C                    ; $29:BA14: A9 5C       ;
CODE_29BA16:    STA $80                     ; $29:BA16: 85 80       ;
CODE_29BA18:    LDX $0726                   ; $29:BA18: AE 26 07    ;
CODE_29BA1B:    LDA $47,x                   ; $29:BA1B: B5 47       ;
CODE_29BA1D:    CLC                         ; $29:BA1D: 18          ;
CODE_29BA1E:    ADC $0210                   ; $29:BA1E: 6D 10 02    ;
CODE_29BA21:    STA $0411                   ; $29:BA21: 8D 11 04    ;
CODE_29BA24:    LDA $43,x                   ; $29:BA24: B5 43       ;
CODE_29BA26:    STA $0412                   ; $29:BA26: 8D 12 04    ;
CODE_29BA29:    INC $59                     ; $29:BA29: E6 59       ;
CODE_29BA2B:    LDX $7F                     ; $29:BA2B: A6 7F       ;
CODE_29BA2D:    LDA $0411                   ; $29:BA2D: AD 11 04    ;
CODE_29BA30:    JSR CODE_29BC37             ; $29:BA30: 20 37 BC    ;
CODE_29BA33:    STA $7D                     ; $29:BA33: 85 7D       ;
CODE_29BA35:    STX $03FF                   ; $29:BA35: 8E FF 03    ;
CODE_29BA38:    LDX $80                     ; $29:BA38: A6 80       ;
CODE_29BA3A:    LDA $0412                   ; $29:BA3A: AD 12 04    ;
CODE_29BA3D:    JSR CODE_29BC37             ; $29:BA3D: 20 37 BC    ;
CODE_29BA40:    STA $88                     ; $29:BA40: 85 88       ;
CODE_29BA42:    STX $0400                   ; $29:BA42: 8E 00 04    ;
CODE_29BA45:    LDA #$00                    ; $29:BA45: A9 00       ;
CODE_29BA47:    STA $85                     ; $29:BA47: 85 85       ;
CODE_29BA49:    STA $87                     ; $29:BA49: 85 87       ;
CODE_29BA4B:    STA $79                     ; $29:BA4B: 85 79       ;
CODE_29BA4D:    LDA #$4C                    ; $29:BA4D: A9 4C       ;
CODE_29BA4F:    STA $86                     ; $29:BA4F: 85 86       ;
CODE_29BA51:    LDA #$09                    ; $29:BA51: A9 09       ;
CODE_29BA53:    STA $82                     ; $29:BA53: 85 82       ;
CODE_29BA55:    INC $0059                   ; $29:BA55: EE 59 00    ;
CODE_29BA58:    LDX $92                     ; $29:BA58: A6 92       ;
CODE_29BA5A:    CPX #$02                    ; $29:BA5A: E0 02       ;
CODE_29BA5C:    BEQ CODE_29BA62             ; $29:BA5C: F0 04       ;
CODE_29BA5E:    JSL CODE_238C1B             ; $29:BA5E: 22 1B 8C 23 ;
CODE_29BA62:    RTS                         ; $29:BA62: 60          ;

CODE_29BA63:    JMP CODE_29BAF9             ; $29:BA63: 4C F9 BA    ;

CODE_29BA66:    LDA $87                     ; $29:BA66: A5 87       ;
CODE_29BA68:    BNE CODE_29BA7A             ; $29:BA68: D0 10       ;
CODE_29BA6A:    LDA $79                     ; $29:BA6A: A5 79       ;
CODE_29BA6C:    CLC                         ; $29:BA6C: 18          ;
CODE_29BA6D:    ADC #$04                    ; $29:BA6D: 69 04       ;
CODE_29BA6F:    CMP #$5F                    ; $29:BA6F: C9 5F       ;
CODE_29BA71:    BCS CODE_29BA76                     ; $29:BA71: B0 03       ;
CODE_29BA73:    JMP CODE_29BAF7             ; $29:BA73: 4C F7 BA    ;

CODE_29BA76:    LDA #$01                    ; $29:BA76: A9 01       ;
CODE_29BA78:    STA $87                     ; $29:BA78: 85 87       ;
CODE_29BA7A:    LDA $92                     ; $29:BA7A: A5 92       ;
CODE_29BA7C:    BEQ CODE_29BABA             ; $29:BA7C: F0 3C       ;
CODE_29BA7E:    LDA $7F                     ; $29:BA7E: A5 7F       ;
CODE_29BA80:    CMP $0411                   ; $29:BA80: CD 11 04    ;
CODE_29BA83:    BCS CODE_29BA91                     ; $29:BA83: B0 0C       ;
CODE_29BA85:    ADC $03FF                   ; $29:BA85: 6D FF 03    ;
CODE_29BA88:    TAX                         ; $29:BA88: AA          ;
CODE_29BA89:    DEC $7D                     ; $29:BA89: C6 7D       ;
CODE_29BA8B:    BMI CODE_29BA9A             ; $29:BA8B: 30 0D       ;
CODE_29BA8D:    INX                         ; $29:BA8D: E8          ;
CODE_29BA8E:    JMP CODE_29BA9A             ; $29:BA8E: 4C 9A BA    ;

CODE_29BA91:    SBC $03FF                   ; $29:BA91: ED FF 03    ;
CODE_29BA94:    TAX                         ; $29:BA94: AA          ;
CODE_29BA95:    DEC $7D                     ; $29:BA95: C6 7D       ;
CODE_29BA97:    BMI CODE_29BA9A             ; $29:BA97: 30 01       ;
CODE_29BA99:    DEX                         ; $29:BA99: CA          ;
CODE_29BA9A:    STX $7F                     ; $29:BA9A: 86 7F       ;
CODE_29BA9C:    LDA $80                     ; $29:BA9C: A5 80       ;
CODE_29BA9E:    CMP $0412                   ; $29:BA9E: CD 12 04    ;
CODE_29BAA1:    BCS CODE_29BAAF                     ; $29:BAA1: B0 0C       ;
CODE_29BAA3:    ADC $0400                   ; $29:BAA3: 6D 00 04    ;
CODE_29BAA6:    TAX                         ; $29:BAA6: AA          ;
CODE_29BAA7:    DEC $88                     ; $29:BAA7: C6 88       ;
CODE_29BAA9:    BMI CODE_29BAB8             ; $29:BAA9: 30 0D       ;
CODE_29BAAB:    INX                         ; $29:BAAB: E8          ;
CODE_29BAAC:    JMP CODE_29BAB8             ; $29:BAAC: 4C B8 BA    ;

CODE_29BAAF:    SBC $0400                   ; $29:BAAF: ED 00 04    ;
CODE_29BAB2:    TAX                         ; $29:BAB2: AA          ;
CODE_29BAB3:    DEC $88                     ; $29:BAB3: C6 88       ;
CODE_29BAB5:    BMI CODE_29BAB8             ; $29:BAB5: 30 01       ;
CODE_29BAB7:    DEX                         ; $29:BAB7: CA          ;
CODE_29BAB8:    STX $80                     ; $29:BAB8: 86 80       ;
CODE_29BABA:    LDA $79                     ; $29:BABA: A5 79       ;
CODE_29BABC:    SEC                         ; $29:BABC: 38          ;
CODE_29BABD:    SBC #$04                    ; $29:BABD: E9 04       ;
CODE_29BABF:    BNE CODE_29BAF7             ; $29:BABF: D0 36       ;
CODE_29BAC1:    LDA #$00                    ; $29:BAC1: A9 00       ;
CODE_29BAC3:    STA $0059                   ; $29:BAC3: 8D 59 00    ;
CODE_29BAC6:    STA $87                     ; $29:BAC6: 85 87       ;
CODE_29BAC8:    LDA $92                     ; $29:BAC8: A5 92       ;
CODE_29BACA:    CMP #$02                    ; $29:BACA: C9 02       ;
CODE_29BACC:    BEQ CODE_29BAEC             ; $29:BACC: F0 1E       ;
CODE_29BACE:    LDX $0738                   ; $29:BACE: AE 38 07    ;
CODE_29BAD1:    LDA $1DC6,x                 ; $29:BAD1: BD C6 1D    ;
CODE_29BAD4:    CMP #$09                    ; $29:BAD4: C9 09       ;
CODE_29BAD6:    BCC CODE_29BAEC             ; $29:BAD6: 90 14       ;
CODE_29BAD8:    SEC                         ; $29:BAD8: 38          ;
CODE_29BAD9:    SBC #$0A                    ; $29:BAD9: E9 0A       ;
CODE_29BADB:    STA $7E3991                 ; $29:BADB: 8F 91 39 7E ;
CODE_29BADF:    LDX $0726                   ; $29:BADF: AE 26 07    ;
CODE_29BAE2:    TAY                         ; $29:BAE2: A8          ;
CODE_29BAE3:    INY                         ; $29:BAE3: C8          ;
CODE_29BAE4:    TYA                         ; $29:BAE4: 98          ;
CODE_29BAE5:    ASL A                       ; $29:BAE5: 0A          ;
CODE_29BAE6:    ASL A                       ; $29:BAE6: 0A          ;
CODE_29BAE7:    ASL A                       ; $29:BAE7: 0A          ;
CODE_29BAE8:    ASL A                       ; $29:BAE8: 0A          ;
CODE_29BAE9:    ASL A                       ; $29:BAE9: 0A          ;
CODE_29BAEA:    STA $49,x                   ; $29:BAEA: 95 49       ;
CODE_29BAEC:    LDX $92                     ; $29:BAEC: A6 92       ;
CODE_29BAEE:    CPX #$02                    ; $29:BAEE: E0 02       ;
CODE_29BAF0:    BEQ CODE_29BAF6             ; $29:BAF0: F0 04       ;
CODE_29BAF2:    JSL CODE_238C1B             ; $29:BAF2: 22 1B 8C 23 ;
CODE_29BAF6:    RTS                         ; $29:BAF6: 60          ;

CODE_29BAF7:    STA $79                     ; $29:BAF7: 85 79       ;
CODE_29BAF9:    LDA $84                     ; $29:BAF9: A5 84       ;
CODE_29BAFB:    CLC                         ; $29:BAFB: 18          ;
CODE_29BAFC:    ADC #$20                    ; $29:BAFC: 69 20       ;
CODE_29BAFE:    STA $84                     ; $29:BAFE: 85 84       ;
CODE_29BB00:    BCC CODE_29BB0E             ; $29:BB00: 90 0C       ;
CODE_29BB02:    LDA $85                     ; $29:BB02: A5 85       ;
CODE_29BB04:    EOR #$01                    ; $29:BB04: 49 01       ;
CODE_29BB06:    STA $85                     ; $29:BB06: 85 85       ;
CODE_29BB08:    TAX                         ; $29:BB08: AA          ;
CODE_29BB09:    LDA.w DATA_21E8A2,x                 ; $29:BB09: BD A2 E8    ;
CODE_29BB0C:    STA $86                     ; $29:BB0C: 85 86       ;
CODE_29BB0E:    LDY #$00                    ; $29:BB0E: A0 00       ;
CODE_29BB10:    LDX #$07                    ; $29:BB10: A2 07       ;
CODE_29BB12:    LDA $7E                     ; $29:BB12: A5 7E       ;
CODE_29BB14:    CLC                         ; $29:BB14: 18          ;
CODE_29BB15:    ADC #$70                    ; $29:BB15: 69 70       ;
CODE_29BB17:    STA $7E                     ; $29:BB17: 85 7E       ;
CODE_29BB19:    BCC CODE_29BB1D             ; $29:BB19: 90 02       ;
CODE_29BB1B:    LDY #$01                    ; $29:BB1B: A0 01       ;
CODE_29BB1D:    STY $81                     ; $29:BB1D: 84 81       ;
CODE_29BB1F:    LDA $8A,x                   ; $29:BB1F: B5 8A       ;
CODE_29BB21:    CLC                         ; $29:BB21: 18          ;
CODE_29BB22:    ADC $81                     ; $29:BB22: 65 81       ;
CODE_29BB24:    AND #$1F                    ; $29:BB24: 29 1F       ;
CODE_29BB26:    STA $8A,x                   ; $29:BB26: 95 8A       ;
CODE_29BB28:    JSR CODE_29BB3C             ; $29:BB28: 20 3C BB    ;
CODE_29BB2B:    JSR CODE_29BBF3             ; $29:BB2B: 20 F3 BB    ;
CODE_29BB2E:    DEX                         ; $29:BB2E: CA          ;
CODE_29BB2F:    BPL CODE_29BB1F             ; $29:BB2F: 10 EE       ;
CODE_29BB31:    LDX $92                     ; $29:BB31: A6 92       ;
CODE_29BB33:    CPX #$02                    ; $29:BB33: E0 02       ;
CODE_29BB35:    BEQ CODE_29BB3B             ; $29:BB35: F0 04       ;
CODE_29BB37:    JSL CODE_238C1B             ; $29:BB37: 22 1B 8C 23 ;
CODE_29BB3B:    RTS                         ; $29:BB3B: 60          ;

CODE_29BB3C:    LDA $8A,x                   ; $29:BB3C: B5 8A       ;
CODE_29BB3E:    AND #$0F                    ; $29:BB3E: 29 0F       ;
CODE_29BB40:    TAY                         ; $29:BB40: A8          ;
CODE_29BB41:    LDA.w DATA_21E892,y                 ; $29:BB41: B9 92 E8    ;
CODE_29BB44:    STA $00                     ; $29:BB44: 85 00       ;
CODE_29BB46:    LDA $79                     ; $29:BB46: A5 79       ;
CODE_29BB48:    LDY $82                     ; $29:BB48: A4 82       ;
CODE_29BB4A:    JSR CODE_29BBD4             ; $29:BB4A: 20 D4 BB    ;
CODE_29BB4D:    LDA $8A,x                   ; $29:BB4D: B5 8A       ;
CODE_29BB4F:    AND #$18                    ; $29:BB4F: 29 18       ;
CODE_29BB51:    CMP #$10                    ; $29:BB51: C9 10       ;
CODE_29BB53:    BCC CODE_29BB60             ; $29:BB53: 90 0B       ;
CODE_29BB55:    LDA #$FF                    ; $29:BB55: A9 FF       ;
CODE_29BB57:    STA $00                     ; $29:BB57: 85 00       ;
CODE_29BB59:    LDA $7F                     ; $29:BB59: A5 7F       ;
CODE_29BB5B:    SBC $02                     ; $29:BB5B: E5 02       ;
CODE_29BB5D:    JMP CODE_29BB68             ; $29:BB5D: 4C 68 BB    ;

CODE_29BB60:    LDA #$01                    ; $29:BB60: A9 01       ;
CODE_29BB62:    STA $00                     ; $29:BB62: 85 00       ;
CODE_29BB64:    LDA $7F                     ; $29:BB64: A5 7F       ;
CODE_29BB66:    ADC $02                     ; $29:BB66: 65 02       ;
CODE_29BB68:    STA $69,x                   ; $29:BB68: 95 69       ;
CODE_29BB6A:    STA $06                     ; $29:BB6A: 85 06       ;
CODE_29BB6C:    LDA $7F                     ; $29:BB6C: A5 7F       ;
CODE_29BB6E:    STA $07                     ; $29:BB6E: 85 07       ;
CODE_29BB70:    JSR CODE_29BC17             ; $29:BB70: 20 17 BC    ;
CODE_29BB73:    LDA $05                     ; $29:BB73: A5 05       ;
CODE_29BB75:    BMI CODE_29BBC9             ; $29:BB75: 30 52       ;
CODE_29BB77:    LDA $69,x                   ; $29:BB77: B5 69       ;
CODE_29BB79:    CLC                         ; $29:BB79: 18          ;
CODE_29BB7A:    ADC #$08                    ; $29:BB7A: 69 08       ;
CODE_29BB7C:    STA $09                     ; $29:BB7C: 85 09       ;
CODE_29BB7E:    STA $06                     ; $29:BB7E: 85 06       ;
CODE_29BB80:    JSR CODE_29BC17             ; $29:BB80: 20 17 BC    ;
CODE_29BB83:    LDA $05                     ; $29:BB83: A5 05       ;
CODE_29BB85:    BMI CODE_29BBC9             ; $29:BB85: 30 42       ;
CODE_29BB87:    LDA $8A,x                   ; $29:BB87: B5 8A       ;
CODE_29BB89:    CLC                         ; $29:BB89: 18          ;
CODE_29BB8A:    ADC #$08                    ; $29:BB8A: 69 08       ;
CODE_29BB8C:    AND #$0F                    ; $29:BB8C: 29 0F       ;
CODE_29BB8E:    TAY                         ; $29:BB8E: A8          ;
CODE_29BB8F:    LDA.w DATA_21E892,y                 ; $29:BB8F: B9 92 E8    ;
CODE_29BB92:    STA $00                     ; $29:BB92: 85 00       ;
CODE_29BB94:    LDA $79                     ; $29:BB94: A5 79       ;
CODE_29BB96:    LDY $82                     ; $29:BB96: A4 82       ;
CODE_29BB98:    JSR CODE_29BBD4             ; $29:BB98: 20 D4 BB    ;
CODE_29BB9B:    LDA $8A,x                   ; $29:BB9B: B5 8A       ;
CODE_29BB9D:    SEC                         ; $29:BB9D: 38          ;
CODE_29BB9E:    SBC #$08                    ; $29:BB9E: E9 08       ;
CODE_29BBA0:    AND #$18                    ; $29:BBA0: 29 18       ;
CODE_29BBA2:    CMP #$10                    ; $29:BBA2: C9 10       ;
CODE_29BBA4:    BCC CODE_29BBB1             ; $29:BBA4: 90 0B       ;
CODE_29BBA6:    LDA #$FF                    ; $29:BBA6: A9 FF       ;
CODE_29BBA8:    STA $00                     ; $29:BBA8: 85 00       ;
CODE_29BBAA:    LDA $80                     ; $29:BBAA: A5 80       ;
CODE_29BBAC:    SBC $02                     ; $29:BBAC: E5 02       ;
CODE_29BBAE:    JMP CODE_29BBB9             ; $29:BBAE: 4C B9 BB    ;

CODE_29BBB1:    LDA #$01                    ; $29:BBB1: A9 01       ;
CODE_29BBB3:    STA $00                     ; $29:BBB3: 85 00       ;
CODE_29BBB5:    LDA $80                     ; $29:BBB5: A5 80       ;
CODE_29BBB7:    ADC $02                     ; $29:BBB7: 65 02       ;
CODE_29BBB9:    STA $71,x                   ; $29:BBB9: 95 71       ;
CODE_29BBBB:    STA $06                     ; $29:BBBB: 85 06       ;
CODE_29BBBD:    LDA $80                     ; $29:BBBD: A5 80       ;
CODE_29BBBF:    STA $07                     ; $29:BBBF: 85 07       ;
CODE_29BBC1:    JSR CODE_29BC17             ; $29:BBC1: 20 17 BC    ;
CODE_29BBC4:    LDA $05                     ; $29:BBC4: A5 05       ;
CODE_29BBC6:    BMI CODE_29BBC9             ; $29:BBC6: 30 01       ;
CODE_29BBC8:    RTS                         ; $29:BBC8: 60          ;

CODE_29BBC9:    LDA #$F0                    ; $29:BBC9: A9 F0       ;
CODE_29BBCB:    STA $71,x                   ; $29:BBCB: 95 71       ;
CODE_29BBCD:    LDA #$00                    ; $29:BBCD: A9 00       ;
CODE_29BBCF:    STA $69,x                   ; $29:BBCF: 95 69       ;
CODE_29BBD1:    STA $09                     ; $29:BBD1: 85 09       ;
CODE_29BBD3:    RTS                         ; $29:BBD3: 60          ;

CODE_29BBD4:    STA $01                     ; $29:BBD4: 85 01       ;
CODE_29BBD6:    LDA #$00                    ; $29:BBD6: A9 00       ;
CODE_29BBD8:    STA $02                     ; $29:BBD8: 85 02       ;
CODE_29BBDA:    STA $03                     ; $29:BBDA: 85 03       ;
CODE_29BBDC:    ASL $03                     ; $29:BBDC: 06 03       ;
CODE_29BBDE:    ROL $02                     ; $29:BBDE: 26 02       ;
CODE_29BBE0:    ASL $00                     ; $29:BBE0: 06 00       ;
CODE_29BBE2:    BCC CODE_29BBEF             ; $29:BBE2: 90 0B       ;
CODE_29BBE4:    LDA $03                     ; $29:BBE4: A5 03       ;
CODE_29BBE6:    CLC                         ; $29:BBE6: 18          ;
CODE_29BBE7:    ADC $01                     ; $29:BBE7: 65 01       ;
CODE_29BBE9:    STA $03                     ; $29:BBE9: 85 03       ;
CODE_29BBEB:    BCC CODE_29BBEF             ; $29:BBEB: 90 02       ;
CODE_29BBED:    INC $02                     ; $29:BBED: E6 02       ;
CODE_29BBEF:    DEY                         ; $29:BBEF: 88          ;
CODE_29BBF0:    BNE CODE_29BBDC             ; $29:BBF0: D0 EA       ;
CODE_29BBF2:    RTS                         ; $29:BBF2: 60          ;

CODE_29BBF3:    TXA                         ; $29:BBF3: 8A          ;
CODE_29BBF4:    ASL A                       ; $29:BBF4: 0A          ;
CODE_29BBF5:    ASL A                       ; $29:BBF5: 0A          ;
CODE_29BBF6:    TAY                         ; $29:BBF6: A8          ;
CODE_29BBF7:    LDA $69,x                   ; $29:BBF7: B5 69       ;
CODE_29BBF9:    STA $0898,y                 ; $29:BBF9: 99 98 08    ;
CODE_29BBFC:    LDA $71,x                   ; $29:BBFC: B5 71       ;
CODE_29BBFE:    STA $0899,y                 ; $29:BBFE: 99 99 08    ;
CODE_29BC01:    LDA $86                     ; $29:BC01: A5 86       ;
CODE_29BC03:    STA $089A,y                 ; $29:BC03: 99 9A 08    ;
CODE_29BC06:    LDA #$32                    ; $29:BC06: A9 32       ;
CODE_29BC08:    STA $089B,y                 ; $29:BC08: 99 9B 08    ;
CODE_29BC0B:    PHY                         ; $29:BC0B: 5A          ;
CODE_29BC0C:    TYA                         ; $29:BC0C: 98          ;
CODE_29BC0D:    LSR A                       ; $29:BC0D: 4A          ;
CODE_29BC0E:    LSR A                       ; $29:BC0E: 4A          ;
CODE_29BC0F:    TAY                         ; $29:BC0F: A8          ;
CODE_29BC10:    LDA #$02                    ; $29:BC10: A9 02       ;
CODE_29BC12:    STA $0A46,y                 ; $29:BC12: 99 46 0A    ;
CODE_29BC15:    PLY                         ; $29:BC15: 7A          ;
CODE_29BC16:    RTS                         ; $29:BC16: 60          ;

CODE_29BC17:    LDA $06                     ; $29:BC17: A5 06       ;
CODE_29BC19:    EOR $07                     ; $29:BC19: 45 07       ;
CODE_29BC1B:    AND #$80                    ; $29:BC1B: 29 80       ;
CODE_29BC1D:    BEQ CODE_29BC2D             ; $29:BC1D: F0 0E       ;
CODE_29BC1F:    LDA $00                     ; $29:BC1F: A5 00       ;
CODE_29BC21:    BPL CODE_29BC29             ; $29:BC21: 10 06       ;
CODE_29BC23:    LDA $06                     ; $29:BC23: A5 06       ;
CODE_29BC25:    BMI CODE_29BC32             ; $29:BC25: 30 0B       ;
CODE_29BC27:    BPL CODE_29BC2D             ; $29:BC27: 10 04       ;
CODE_29BC29:    LDA $06                     ; $29:BC29: A5 06       ;
CODE_29BC2B:    BPL CODE_29BC32             ; $29:BC2B: 10 05       ;
CODE_29BC2D:    LDA #$01                    ; $29:BC2D: A9 01       ;
CODE_29BC2F:    STA $05                     ; $29:BC2F: 85 05       ;
CODE_29BC31:    RTS                         ; $29:BC31: 60          ;

CODE_29BC32:    LDA #$FF                    ; $29:BC32: A9 FF       ;
CODE_29BC34:    STA $05                     ; $29:BC34: 85 05       ;
CODE_29BC36:    RTS                         ; $29:BC36: 60          ;

CODE_29BC37:    STX $03                     ; $29:BC37: 86 03       ;
CODE_29BC39:    STA $04                     ; $29:BC39: 85 04       ;
CODE_29BC3B:    SEC                         ; $29:BC3B: 38          ;
CODE_29BC3C:    SBC $03                     ; $29:BC3C: E5 03       ;
CODE_29BC3E:    STA $00                     ; $29:BC3E: 85 00       ;
CODE_29BC40:    LDA $04                     ; $29:BC40: A5 04       ;
CODE_29BC42:    CMP $03                     ; $29:BC42: C5 03       ;
CODE_29BC44:    BCS CODE_29BC4E                     ; $29:BC44: B0 08       ;
CODE_29BC46:    LDA $00                     ; $29:BC46: A5 00       ;
CODE_29BC48:    EOR #$FF                    ; $29:BC48: 49 FF       ;
CODE_29BC4A:    ADC #$01                    ; $29:BC4A: 69 01       ;
CODE_29BC4C:    STA $00                     ; $29:BC4C: 85 00       ;
CODE_29BC4E:    LDA #$00                    ; $29:BC4E: A9 00       ;
CODE_29BC50:    STA $02                     ; $29:BC50: 85 02       ;
CODE_29BC52:    LDY #$07                    ; $29:BC52: A0 07       ;
CODE_29BC54:    ASL $02                     ; $29:BC54: 06 02       ;
CODE_29BC56:    ROL $00                     ; $29:BC56: 26 00       ;
CODE_29BC58:    ROL A                       ; $29:BC58: 2A          ;
CODE_29BC59:    BCS CODE_29BC5F                     ; $29:BC59: B0 04       ;
CODE_29BC5B:    CMP #$17                    ; $29:BC5B: C9 17       ;
CODE_29BC5D:    BCC CODE_29BC63             ; $29:BC5D: 90 04       ;
CODE_29BC5F:    SBC #$17                    ; $29:BC5F: E9 17       ;
CODE_29BC61:    INC $02                     ; $29:BC61: E6 02       ;
CODE_29BC63:    DEY                         ; $29:BC63: 88          ;
CODE_29BC64:    BPL CODE_29BC54             ; $29:BC64: 10 EE       ;
CODE_29BC66:    LDX $02                     ; $29:BC66: A6 02       ;
CODE_29BC68:    RTS                         ; $29:BC68: 60          ;

CODE_29BC69:    LDX $0726                   ; $29:BC69: AE 26 07    ;
CODE_29BC6C:    LDA $073F,x                 ; $29:BC6C: BD 3F 07    ;
CODE_29BC6F:    BNE CODE_29BCBD             ; $29:BC6F: D0 4C       ;
CODE_29BC71:    LDY #$06                    ; $29:BC71: A0 06       ;
CODE_29BC73:    LDA $43,x                   ; $29:BC73: B5 43       ;
CODE_29BC75:    CMP.w DATA_21E8A4,y                 ; $29:BC75: D9 A4 E8    ;
CODE_29BC78:    BEQ CODE_29BC7F             ; $29:BC78: F0 05       ;
CODE_29BC7A:    DEY                         ; $29:BC7A: 88          ;
CODE_29BC7B:    BPL CODE_29BC75             ; $29:BC7B: 10 F8       ;
CODE_29BC7D:    LDY #$07                    ; $29:BC7D: A0 07       ;
CODE_29BC7F:    STY $0C                     ; $29:BC7F: 84 0C       ;
CODE_29BC81:    LDA $45,x                   ; $29:BC81: B5 45       ;
CODE_29BC83:    ASL A                       ; $29:BC83: 0A          ;
CODE_29BC84:    ASL A                       ; $29:BC84: 0A          ;
CODE_29BC85:    ASL A                       ; $29:BC85: 0A          ;
CODE_29BC86:    ASL A                       ; $29:BC86: 0A          ;
CODE_29BC87:    STA $00                     ; $29:BC87: 85 00       ;
CODE_29BC89:    LDA $47,x                   ; $29:BC89: B5 47       ;
CODE_29BC8B:    LSR A                       ; $29:BC8B: 4A          ;
CODE_29BC8C:    LSR A                       ; $29:BC8C: 4A          ;
CODE_29BC8D:    LSR A                       ; $29:BC8D: 4A          ;
CODE_29BC8E:    LSR A                       ; $29:BC8E: 4A          ;
CODE_29BC8F:    ORA $00                     ; $29:BC8F: 05 00       ;
CODE_29BC91:    TAY                         ; $29:BC91: A8          ;
CODE_29BC92:    CPX #$00                    ; $29:BC92: E0 00       ;
CODE_29BC94:    BEQ CODE_29BC9B             ; $29:BC94: F0 05       ;
CODE_29BC96:    TYA                         ; $29:BC96: 98          ;
CODE_29BC97:    CLC                         ; $29:BC97: 18          ;
CODE_29BC98:    ADC #$40                    ; $29:BC98: 69 40       ;
CODE_29BC9A:    TAY                         ; $29:BC9A: A8          ;
CODE_29BC9B:    LDX $0C                     ; $29:BC9B: A6 0C       ;
CODE_29BC9D:    LDA $1D00,y                 ; $29:BC9D: B9 00 1D    ;
CODE_29BCA0:    ORA.w DATA_21E8AB,x                 ; $29:BCA0: 1D AB E8    ;
CODE_29BCA3:    STA $1D00,y                 ; $29:BCA3: 99 00 1D    ;
CODE_29BCA6:    LDA $B3                     ; $29:BCA6: A5 B3       ;
CODE_29BCA8:    CMP #$60                    ; $29:BCA8: C9 60       ;
CODE_29BCAA:    BEQ CODE_29BCB0             ; $29:BCAA: F0 04       ;
CODE_29BCAC:    CMP #$E3                    ; $29:BCAC: C9 E3       ;
CODE_29BCAE:    BNE CODE_29BCBD             ; $29:BCAE: D0 0D       ;
CODE_29BCB0:    TYA                         ; $29:BCB0: 98          ;
CODE_29BCB1:    EOR #$40                    ; $29:BCB1: 49 40       ;
CODE_29BCB3:    TAY                         ; $29:BCB3: A8          ;
CODE_29BCB4:    LDA $1D00,y                 ; $29:BCB4: B9 00 1D    ;
CODE_29BCB7:    ORA.w DATA_21E8AB,x                 ; $29:BCB7: 1D AB E8    ;
CODE_29BCBA:    STA $1D00,y                 ; $29:BCBA: 99 00 1D    ;
CODE_29BCBD:    RTS                         ; $29:BCBD: 60          ;

CODE_29BCBE:    LDY #$00                    ; $29:BCBE: A0 00       ;
CODE_29BCC0:    LDA $1F09,x                 ; $29:BCC0: BD 09 1F    ;
CODE_29BCC3:    ASL A                       ; $29:BCC3: 0A          ;
CODE_29BCC4:    ASL A                       ; $29:BCC4: 0A          ;
CODE_29BCC5:    ASL A                       ; $29:BCC5: 0A          ;
CODE_29BCC6:    ASL A                       ; $29:BCC6: 0A          ;
CODE_29BCC7:    STA $01                     ; $29:BCC7: 85 01       ;
CODE_29BCC9:    LDA $1EFB,x                 ; $29:BCC9: BD FB 1E    ;
CODE_29BCCC:    LSR A                       ; $29:BCCC: 4A          ;
CODE_29BCCD:    LSR A                       ; $29:BCCD: 4A          ;
CODE_29BCCE:    LSR A                       ; $29:BCCE: 4A          ;
CODE_29BCCF:    LSR A                       ; $29:BCCF: 4A          ;
CODE_29BCD0:    ORA $01                     ; $29:BCD0: 05 01       ;
CODE_29BCD2:    STA $01                     ; $29:BCD2: 85 01       ;
CODE_29BCD4:    LDA $23                     ; $29:BCD4: A5 23       ;
CODE_29BCD6:    SEC                         ; $29:BCD6: 38          ;
CODE_29BCD7:    SBC #$02                    ; $29:BCD7: E9 02       ;
CODE_29BCD9:    CMP $01                     ; $29:BCD9: C5 01       ;
CODE_29BCDB:    BCC CODE_29BCE5             ; $29:BCDB: 90 08       ;
CODE_29BCDD:    LDA $24                     ; $29:BCDD: A5 24       ;
CODE_29BCDF:    CMP $01                     ; $29:BCDF: C5 01       ;
CODE_29BCE1:    BCS CODE_29BCE5                     ; $29:BCE1: B0 02       ;
CODE_29BCE3:    LDY #$01                    ; $29:BCE3: A0 01       ;
CODE_29BCE5:    TYA                         ; $29:BCE5: 98          ;
CODE_29BCE6:    STA $0587,x                 ; $29:BCE6: 9D 87 05    ;
CODE_29BCE9:    RTS                         ; $29:BCE9: 60          ;

CODE_29BCEA:    LDY $0726                   ; $29:BCEA: AC 26 07    ;
CODE_29BCED:    LDA $0597                   ; $29:BCED: AD 97 05    ;
CODE_29BCF0:    BEQ CODE_29BD0D             ; $29:BCF0: F0 1B       ;
CODE_29BCF2:    LDA $0043,y                 ; $29:BCF2: B9 43 00    ;
CODE_29BCF5:    STA $1EED,x                 ; $29:BCF5: 9D ED 1E    ;
CODE_29BCF8:    STA $0500,x                 ; $29:BCF8: 9D 00 05    ;
CODE_29BCFB:    LDA $0047,y                 ; $29:BCFB: B9 47 00    ;
CODE_29BCFE:    STA $1EFB,x                 ; $29:BCFE: 9D FB 1E    ;
CODE_29BD01:    STA $050F,x                 ; $29:BD01: 9D 0F 05    ;
CODE_29BD04:    LDA $0045,y                 ; $29:BD04: B9 45 00    ;
CODE_29BD07:    STA $1F09,x                 ; $29:BD07: 9D 09 1F    ;
CODE_29BD0A:    STA $051E,x                 ; $29:BD0A: 9D 1E 05    ;
CODE_29BD0D:    LDA $0049,y                 ; $29:BD0D: B9 49 00    ;
CODE_29BD10:    ORA $073F,y                 ; $29:BD10: 19 3F 07    ;
CODE_29BD13:    BNE CODE_29BD32             ; $29:BD13: D0 1D       ;
CODE_29BD15:    LDA $0043,y                 ; $29:BD15: B9 43 00    ;
CODE_29BD18:    CMP $0500,x                 ; $29:BD18: DD 00 05    ;
CODE_29BD1B:    BNE CODE_29BD32             ; $29:BD1B: D0 15       ;
CODE_29BD1D:    LDA $0045,y                 ; $29:BD1D: B9 45 00    ;
CODE_29BD20:    CMP $051E,x                 ; $29:BD20: DD 1E 05    ;
CODE_29BD23:    BNE CODE_29BD32             ; $29:BD23: D0 0D       ;
CODE_29BD25:    LDA $0047,y                 ; $29:BD25: B9 47 00    ;
CODE_29BD28:    CMP $050F,x                 ; $29:BD28: DD 0F 05    ;
CODE_29BD2B:    BNE CODE_29BD32             ; $29:BD2B: D0 05       ;
CODE_29BD2D:    LDA #$01                    ; $29:BD2D: A9 01       ;
CODE_29BD2F:    STA $0597                   ; $29:BD2F: 8D 97 05    ;
CODE_29BD32:    RTS                         ; $29:BD32: 60          ;

CODE_29BD33:    NOP                         ; $29:BD33: EA          ;
CODE_29BD34:    RTS                         ; $29:BD34: 60          ;

CODE_29BD35:    LDX $0727                   ; $29:BD35: AE 27 07    ;
CODE_29BD38:    CPX #$07                    ; $29:BD38: E0 07       ;
CODE_29BD3A:    BNE CODE_29BD4D             ; $29:BD3A: D0 11       ;
CODE_29BD3C:    LDY $0726                   ; $29:BD3C: AC 26 07    ;
CODE_29BD3F:    LDA $0045,y                 ; $29:BD3F: B9 45 00    ;
CODE_29BD42:    CMP #$03                    ; $29:BD42: C9 03       ;
CODE_29BD44:    BNE CODE_29BD4D             ; $29:BD44: D0 07       ;
CODE_29BD46:    LDA #$FF                    ; $29:BD46: A9 FF       ;
CODE_29BD48:    STA $0243                   ; $29:BD48: 8D 43 02    ;
CODE_29BD4B:    BRA CODE_29BD70             ; $29:BD4B: 80 23       ;

CODE_29BD4D:    LDY $0599                   ; $29:BD4D: AC 99 05    ;
CODE_29BD50:    DEC $059A                   ; $29:BD50: CE 9A 05    ;
CODE_29BD53:    BPL CODE_29BD70             ; $29:BD53: 10 1B       ;
CODE_29BD55:    STZ $0243                   ; $29:BD55: 9C 43 02    ;
CODE_29BD58:    INY                         ; $29:BD58: C8          ;
CODE_29BD59:    TYA                         ; $29:BD59: 98          ;
CODE_29BD5A:    AND #$03                    ; $29:BD5A: 29 03       ;
CODE_29BD5C:    STA $0599                   ; $29:BD5C: 8D 99 05    ;
CODE_29BD5F:    TAY                         ; $29:BD5F: A8          ;
CODE_29BD60:    TXA                         ; $29:BD60: 8A          ;
CODE_29BD61:    ASL A                       ; $29:BD61: 0A          ;
CODE_29BD62:    ASL A                       ; $29:BD62: 0A          ;
CODE_29BD63:    ORA $0599                   ; $29:BD63: 0D 99 05    ;
CODE_29BD66:    TAX                         ; $29:BD66: AA          ;
CODE_29BD67:    LDA.w DATA_21E8E9,x                 ; $29:BD67: BD E9 E8    ;
CODE_29BD6A:    STA $059A                   ; $29:BD6A: 8D 9A 05    ;
CODE_29BD6D:    STY $0244                   ; $29:BD6D: 8C 44 02    ;
CODE_29BD70:    LDA $0243                   ; $29:BD70: AD 43 02    ;
CODE_29BD73:    BMI CODE_29BDCB             ; $29:BD73: 30 56       ;
CODE_29BD75:    CMP #$08                    ; $29:BD75: C9 08       ;
CODE_29BD77:    BCC CODE_29BD7F             ; $29:BD77: 90 06       ;
CODE_29BD79:    LDA #$FF                    ; $29:BD79: A9 FF       ;
CODE_29BD7B:    STA $0243                   ; $29:BD7B: 8D 43 02    ;
CODE_29BD7E:    RTL                         ; $29:BD7E: 6B          ;

CODE_29BD7F:    STZ $00                     ; $29:BD7F: 64 00       ;
CODE_29BD81:    LDX $0727                   ; $29:BD81: AE 27 07    ;
CODE_29BD84:    CPX #$04                    ; $29:BD84: E0 04       ;
CODE_29BD86:    BNE CODE_29BD8C             ; $29:BD86: D0 04       ;
CODE_29BD88:    LDA #$04                    ; $29:BD88: A9 04       ;
CODE_29BD8A:    STA $00                     ; $29:BD8A: 85 00       ;
CODE_29BD8C:    LDA $0244                   ; $29:BD8C: AD 44 02    ;
CODE_29BD8F:    CLC                         ; $29:BD8F: 18          ;
CODE_29BD90:    ADC $00                     ; $29:BD90: 65 00       ;
CODE_29BD92:    TAX                         ; $29:BD92: AA          ;
CODE_29BD93:    LDA.w DATA_21E90D,x                 ; $29:BD93: BD 0D E9    ;
CODE_29BD96:    STA $0242                   ; $29:BD96: 8D 42 02    ;
CODE_29BD99:    LDA.w DATA_21E915,x                 ; $29:BD99: BD 15 E9    ;
CODE_29BD9C:    STA $0241                   ; $29:BD9C: 8D 41 02    ;
CODE_29BD9F:    LDA.w DATA_21E91D,x                 ; $29:BD9F: BD 1D E9    ;
CODE_29BDA2:    STA $0240                   ; $29:BDA2: 8D 40 02    ;
CODE_29BDA5:    LDA $0243                   ; $29:BDA5: AD 43 02    ;
CODE_29BDA8:    ASL A                       ; $29:BDA8: 0A          ;
CODE_29BDA9:    TAY                         ; $29:BDA9: A8          ;
CODE_29BDAA:    REP #$20                    ; $29:BDAA: C2 20       ;
CODE_29BDAC:    LDA #$0200                  ; $29:BDAC: A9 00 02    ;
CODE_29BDAF:    STA $02CA                   ; $29:BDAF: 8D CA 02    ;
CODE_29BDB2:    LDA $0240                   ; $29:BDB2: AD 40 02    ;
CODE_29BDB5:    CLC                         ; $29:BDB5: 18          ;
CODE_29BDB6:    ADC.w DATA_21E925,y                 ; $29:BDB6: 79 25 E9    ;
CODE_29BDB9:    STA $0240                   ; $29:BDB9: 8D 40 02    ;
CODE_29BDBC:    LDA #$2000                  ; $29:BDBC: A9 00 20    ;
CODE_29BDBF:    CLC                         ; $29:BDBF: 18          ;
CODE_29BDC0:    ADC.w DATA_21E935,y                 ; $29:BDC0: 79 35 E9    ;
CODE_29BDC3:    STA $023E                   ; $29:BDC3: 8D 3E 02    ;
CODE_29BDC6:    SEP #$20                    ; $29:BDC6: E2 20       ;
CODE_29BDC8:    INC $0243                   ; $29:BDC8: EE 43 02    ;
CODE_29BDCB:    RTL                         ; $29:BDCB: 6B          ;

PNTR_29BDCC:       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

DATA_29BE00:        db $03,$67,$BF,$E9,$03,$67,$BF,$E9

CODE_29BE08:    JSR CODE_29BE10         ; $29:BE08: 20 10 BE    ;
CODE_29BE0B:    JSL CODE_20990B         ; $29:BE0B: 22 0B 99 20 ;
CODE_29BE0F:    RTS                     ; $29:BE0F: 60          ;

CODE_29BE10:    LDX #$00                    ; $29:BE10: A2 00       ;
CODE_29BE12:    LDA #$02                    ; $29:BE12: A9 02       ;
CODE_29BE14:    JSL CODE_2098A8             ; $29:BE14: 22 A8 98 20 ;
CODE_29BE18:    JSL CODE_209844             ; $29:BE18: 22 44 98 20 ;
CODE_29BE1C:    CPX #$F0                    ; $29:BE1C: E0 F0       ;
CODE_29BE1E:    BNE CODE_29BE12             ; $29:BE1E: D0 F2       ;
CODE_29BE20:    RTS                         ; $29:BE20: 60          ;

CODE_29BE21:    JSR CODE_29BE10             ; $29:BE21: 20 10 BE    ;
CODE_29BE24:    STZ $420C                   ; $29:BE24: 9C 0C 42    ;
CODE_29BE27:    LDY #$80                    ; $29:BE27: A0 80       ;
CODE_29BE29:    LDA $072B                   ; $29:BE29: AD 2B 07    ;
CODE_29BE2C:    CMP #$02                    ; $29:BE2C: C9 02       ;
CODE_29BE2E:    BEQ CODE_29BE32             ; $29:BE2E: F0 02       ;
CODE_29BE30:    LDY #$40                    ; $29:BE30: A0 40       ;
CODE_29BE32:    STY $DC                     ; $29:BE32: 84 DC       ;
CODE_29BE34:    LDA #$7E                    ; $29:BE34: A9 7E       ;
CODE_29BE36:    STA $30                     ; $29:BE36: 85 30       ;
CODE_29BE38:    STA $DA                     ; $29:BE38: 85 DA       ;
CODE_29BE3A:    LDA $0727                   ; $29:BE3A: AD 27 07    ;
CODE_29BE3D:    ASL A                       ; $29:BE3D: 0A          ;
CODE_29BE3E:    TAY                         ; $29:BE3E: A8          ;
CODE_29BE3F:    REP #$20                    ; $29:BE3F: C2 20       ;
CODE_29BE41:    LDA.l DATA_218200                   ; $29:BE41: AF 00 82 21 ;
CODE_29BE45:    CLC                         ; $29:BE45: 18          ;
CODE_29BE46:    ADC #$0110                  ; $29:BE46: 69 10 01    ;
CODE_29BE49:    STA $2E                     ; $29:BE49: 85 2E       ;
CODE_29BE4B:    CLC                         ; $29:BE4B: 18          ;
CODE_29BE4C:    ADC #$2000                  ; $29:BE4C: 69 00 20    ;
CODE_29BE4F:    STA $D8                     ; $29:BE4F: 85 D8       ;
CODE_29BE51:    PHX                         ; $29:BE51: DA          ;
CODE_29BE52:    TYX                         ; $29:BE52: BB          ;
CODE_29BE53:    LDA.l DATA_2AE256,x                 ; $29:BE53: BF 56 E2 2A ;
CODE_29BE57:    STA $00                     ; $29:BE57: 85 00       ;
CODE_29BE59:    PLX                         ; $29:BE59: FA          ;
CODE_29BE5A:    SEP #$20                    ; $29:BE5A: E2 20       ;
CODE_29BE5C:    LDA #$2A                    ; $29:BE5C: A9 2A       ;
CODE_29BE5E:    STA $02                     ; $29:BE5E: 85 02       ;
CODE_29BE60:    LDY #$00                    ; $29:BE60: A0 00       ;
CODE_29BE62:    LDA [$00],y                 ; $29:BE62: B7 00       ;
CODE_29BE64:    CMP #$FF                    ; $29:BE64: C9 FF       ;
CODE_29BE66:    BEQ CODE_29BE99             ; $29:BE66: F0 31       ;
CODE_29BE68:    CMP #$03                    ; $29:BE68: C9 03       ;
CODE_29BE6A:    BCS CODE_29BE79                     ; $29:BE6A: B0 0D       ;
CODE_29BE6C:    PHA                         ; $29:BE6C: 48          ;
CODE_29BE6D:    LDA $0727                   ; $29:BE6D: AD 27 07    ;
CODE_29BE70:    CMP #$07                    ; $29:BE70: C9 07       ;
CODE_29BE72:    BNE CODE_29BE78             ; $29:BE72: D0 04       ;
CODE_29BE74:    LDA #$01                    ; $29:BE74: A9 01       ;
CODE_29BE76:    STA [$D8],y                 ; $29:BE76: 97 D8       ;
CODE_29BE78:    PLA                         ; $29:BE78: 68          ;
CODE_29BE79:    STA [$2E],y                 ; $29:BE79: 97 2E       ;
CODE_29BE7B:    INY                         ; $29:BE7B: C8          ;
CODE_29BE7C:    CPY #$90                    ; $29:BE7C: C0 90       ;
CODE_29BE7E:    BNE CODE_29BE62             ; $29:BE7E: D0 E2       ;
CODE_29BE80:    REP #$20                    ; $29:BE80: C2 20       ;
CODE_29BE82:    TYA                         ; $29:BE82: 98          ;
CODE_29BE83:    AND #$00FF                  ; $29:BE83: 29 FF 00    ;
CODE_29BE86:    CLC                         ; $29:BE86: 18          ;
CODE_29BE87:    ADC $00                     ; $29:BE87: 65 00       ;
CODE_29BE89:    STA $00                     ; $29:BE89: 85 00       ;
CODE_29BE8B:    LDA $2E                     ; $29:BE8B: A5 2E       ;
CODE_29BE8D:    CLC                         ; $29:BE8D: 18          ;
CODE_29BE8E:    ADC #$01B0                  ; $29:BE8E: 69 B0 01    ;
CODE_29BE91:    STA $2E                     ; $29:BE91: 85 2E       ;
CODE_29BE93:    STA $D8                     ; $29:BE93: 85 D8       ;
CODE_29BE95:    SEP #$20                    ; $29:BE95: E2 20       ;
CODE_29BE97:    BRA CODE_29BE60             ; $29:BE97: 80 C7       ;

CODE_29BE99:    LDX #$E0                    ; $29:BE99: A2 E0       ;
CODE_29BE9B:    LDY $0727                   ; $29:BE9B: AC 27 07    ;
CODE_29BE9E:    LDA.w DATA_21D7AD,y                 ; $29:BE9E: B9 AD D7    ;
CODE_29BEA1:    JSL CODE_2098A8             ; $29:BEA1: 22 A8 98 20 ;
CODE_29BEA5:    INX                         ; $29:BEA5: E8          ;
CODE_29BEA6:    CPX #$F0                    ; $29:BEA6: E0 F0       ;
CODE_29BEA8:    BNE CODE_29BEA1             ; $29:BEA8: D0 F7       ;
CODE_29BEAA:    LDA.w DATA_21D776,y                 ; $29:BEAA: B9 76 D7    ;
CODE_29BEAD:    STA $073B                   ; $29:BEAD: 8D 3B 07    ;
CODE_29BEB0:    LDA.w DATA_21D77F,y                 ; $29:BEB0: B9 7F D7    ;
CODE_29BEB3:    STA $073C                   ; $29:BEB3: 8D 3C 07    ;
CODE_29BEB6:    STZ $00                     ; $29:BEB6: 64 00       ;
CODE_29BEB8:    LDA #$80                    ; $29:BEB8: A9 80       ;
CODE_29BEBA:    STA $01                     ; $29:BEBA: 85 01       ;
CODE_29BEBC:    LDY $00                     ; $29:BEBC: A4 00       ;
CODE_29BEBE:    LDA $1D00,y                 ; $29:BEBE: B9 00 1D    ;
CODE_29BEC1:    AND $01                     ; $29:BEC1: 25 01       ;
CODE_29BEC3:    BNE CODE_29BEC8             ; $29:BEC3: D0 03       ;
CODE_29BEC5:    JMP CODE_29BF71             ; $29:BEC5: 4C 71 BF    ;

CODE_29BEC8:    TYA                         ; $29:BEC8: 98          ;
CODE_29BEC9:    AND #$30                    ; $29:BEC9: 29 30       ;
CODE_29BECB:    LSR A                       ; $29:BECB: 4A          ;
CODE_29BECC:    LSR A                       ; $29:BECC: 4A          ;
CODE_29BECD:    LSR A                       ; $29:BECD: 4A          ;
CODE_29BECE:    TAX                         ; $29:BECE: AA          ;
CODE_29BECF:    LDA #$7E                    ; $29:BECF: A9 7E       ;
CODE_29BED1:    STA $30                     ; $29:BED1: 85 30       ;
CODE_29BED3:    LDA.l DATA_218200,x                 ; $29:BED3: BF 00 82 21 ;
CODE_29BED7:    STA $2E                     ; $29:BED7: 85 2E       ;
CODE_29BED9:    LDA.l DATA_218200+1,x               ; $29:BED9: BF 01 82 21 ;
CODE_29BEDD:    INC A                       ; $29:BEDD: 1A          ;
CODE_29BEDE:    STA $2F                     ; $29:BEDE: 85 2F       ;
CODE_29BEE0:    LDX #$07                    ; $29:BEE0: A2 07       ;
CODE_29BEE2:    LDA $01                     ; $29:BEE2: A5 01       ;
CODE_29BEE4:    CMP.w DATA_21D788,x                 ; $29:BEE4: DD 88 D7    ;
CODE_29BEE7:    BEQ CODE_29BEEC             ; $29:BEE7: F0 03       ;
CODE_29BEE9:    DEX                         ; $29:BEE9: CA          ;
CODE_29BEEA:    BNE CODE_29BEE2             ; $29:BEEA: D0 F6       ;
CODE_29BEEC:    TXA                         ; $29:BEEC: 8A          ;
CODE_29BEED:    ASL A                       ; $29:BEED: 0A          ;
CODE_29BEEE:    ASL A                       ; $29:BEEE: 0A          ;
CODE_29BEEF:    ASL A                       ; $29:BEEF: 0A          ;
CODE_29BEF0:    ASL A                       ; $29:BEF0: 0A          ;
CODE_29BEF1:    CLC                         ; $29:BEF1: 18          ;
CODE_29BEF2:    ADC #$10                    ; $29:BEF2: 69 10       ;
CODE_29BEF4:    STA $02                     ; $29:BEF4: 85 02       ;
CODE_29BEF6:    TYA                         ; $29:BEF6: 98          ;
CODE_29BEF7:    AND #$0F                    ; $29:BEF7: 29 0F       ;
CODE_29BEF9:    ORA $02                     ; $29:BEF9: 05 02       ;
CODE_29BEFB:    TAY                         ; $29:BEFB: A8          ;
CODE_29BEFC:    LDA [$2E],y                 ; $29:BEFC: B7 2E       ;
CODE_29BEFE:    STY $04                     ; $29:BEFE: 84 04       ;
CODE_29BF00:    STA $B3                     ; $29:BF00: 85 B3       ;
CODE_29BF02:    AND #$C0                    ; $29:BF02: 29 C0       ;
CODE_29BF04:    CLC                         ; $29:BF04: 18          ;
CODE_29BF05:    ROL A                       ; $29:BF05: 2A          ;
CODE_29BF06:    ROL A                       ; $29:BF06: 2A          ;
CODE_29BF07:    ROL A                       ; $29:BF07: 2A          ;
CODE_29BF08:    TAX                         ; $29:BF08: AA          ;
CODE_29BF09:    LDY #$04                    ; $29:BF09: A0 04       ;
CODE_29BF0B:    LDA $B3                     ; $29:BF0B: A5 B3       ;
CODE_29BF0D:    CMP.w DATA_21D7A0,y                 ; $29:BF0D: D9 A0 D7    ;
CODE_29BF10:    BEQ CODE_29BF48             ; $29:BF10: F0 36       ;
CODE_29BF12:    DEY                         ; $29:BF12: 88          ;
CODE_29BF13:    BPL CODE_29BF0D             ; $29:BF13: 10 F8       ;
CODE_29BF15:    CMP #$67                    ; $29:BF15: C9 67       ;
CODE_29BF17:    BEQ CODE_29BF23             ; $29:BF17: F0 0A       ;
CODE_29BF19:    CMP #$EB                    ; $29:BF19: C9 EB       ;
CODE_29BF1B:    BEQ CODE_29BF23             ; $29:BF1B: F0 06       ;
CODE_29BF1D:    CMP.l DATA_29BE00,x                 ; $29:BF1D: DF 00 BE 29 ;
CODE_29BF21:    BCS CODE_29BF48                     ; $29:BF21: B0 25       ;
CODE_29BF23:    LDX #$07                    ; $29:BF23: A2 07       ;
CODE_29BF25:    CMP.w DATA_21D790,x                 ; $29:BF25: DD 90 D7    ;
CODE_29BF28:    BEQ CODE_29BF2F             ; $29:BF28: F0 05       ;
CODE_29BF2A:    DEX                         ; $29:BF2A: CA          ;
CODE_29BF2B:    BPL CODE_29BF25             ; $29:BF2B: 10 F8       ;
CODE_29BF2D:    BMI CODE_29BF34             ; $29:BF2D: 30 05       ;
CODE_29BF2F:    LDA.w DATA_21D798,x                 ; $29:BF2F: BD 98 D7    ;
CODE_29BF32:    BRA CODE_29BF59             ; $29:BF32: 80 25       ;

CODE_29BF34:    LDA $01                     ; $29:BF34: A5 01       ;
CODE_29BF36:    CMP #$01                    ; $29:BF36: C9 01       ;
CODE_29BF38:    BNE CODE_29BF71             ; $29:BF38: D0 37       ;
CODE_29BF3A:    LDY $04                     ; $29:BF3A: A4 04       ;
CODE_29BF3C:    CPY #$90                    ; $29:BF3C: C0 90       ;
CODE_29BF3E:    BCS CODE_29BF71                     ; $29:BF3E: B0 31       ;
CODE_29BF40:    TYA                         ; $29:BF40: 98          ;
CODE_29BF41:    CLC                         ; $29:BF41: 18          ;
CODE_29BF42:    ADC #$10                    ; $29:BF42: 69 10       ;
CODE_29BF44:    TAY                         ; $29:BF44: A8          ;
CODE_29BF45:    JMP CODE_29BEFC             ; $29:BF45: 4C FC BE    ;

CODE_29BF48:    TXA                         ; $29:BF48: 8A          ;
CODE_29BF49:    ASL A                       ; $29:BF49: 0A          ;
CODE_29BF4A:    STA $03                     ; $29:BF4A: 85 03       ;
CODE_29BF4C:    LDA $00                     ; $29:BF4C: A5 00       ;
CODE_29BF4E:    AND #$40                    ; $29:BF4E: 29 40       ;
CODE_29BF50:    BEQ CODE_29BF54             ; $29:BF50: F0 02       ;
CODE_29BF52:    INC $03                     ; $29:BF52: E6 03       ;
CODE_29BF54:    LDX $03                     ; $29:BF54: A6 03       ;
CODE_29BF56:    LDA.w DATA_21D7A5,x                 ; $29:BF56: BD A5 D7    ;
CODE_29BF59:    PHA                         ; $29:BF59: 48          ;
CODE_29BF5A:    LDA $2E                     ; $29:BF5A: A5 2E       ;
CODE_29BF5C:    STA $D8                     ; $29:BF5C: 85 D8       ;
CODE_29BF5E:    LDA $2F                     ; $29:BF5E: A5 2F       ;
CODE_29BF60:    CLC                         ; $29:BF60: 18          ;
CODE_29BF61:    ADC #$20                    ; $29:BF61: 69 20       ;
CODE_29BF63:    STA $D9                     ; $29:BF63: 85 D9       ;
CODE_29BF65:    LDA [$D8],y                 ; $29:BF65: B7 D8       ;
CODE_29BF67:    BNE CODE_29BF70             ; $29:BF67: D0 07       ;
CODE_29BF69:    PLA                         ; $29:BF69: 68          ;
CODE_29BF6A:    LDY $04                     ; $29:BF6A: A4 04       ;
CODE_29BF6C:    STA [$2E],y                 ; $29:BF6C: 97 2E       ;
CODE_29BF6E:    BRA CODE_29BF71             ; $29:BF6E: 80 01       ;

CODE_29BF70:    PLA                         ; $29:BF70: 68          ;
CODE_29BF71:    LSR $01                     ; $29:BF71: 46 01       ;
CODE_29BF73:    BEQ CODE_29BF78             ; $29:BF73: F0 03       ;
CODE_29BF75:    JMP CODE_29BEBC             ; $29:BF75: 4C BC BE    ;

CODE_29BF78:    INC $00                     ; $29:BF78: E6 00       ;
CODE_29BF7A:    LDA $00                     ; $29:BF7A: A5 00       ;
CODE_29BF7C:    CMP $DC                     ; $29:BF7C: C5 DC       ;
CODE_29BF7E:    BEQ CODE_29BF83             ; $29:BF7E: F0 03       ;
CODE_29BF80:    JMP CODE_29BEB8             ; $29:BF80: 4C B8 BE    ;

CODE_29BF83:    RTL                         ; $29:BF83: 6B          ;

CODE_29BF84:    LDX $0726                   ; $29:BF84: AE 26 07    ;
CODE_29BF87:    LDA $073D,x                 ; $29:BF87: BD 3D 07    ;
CODE_29BF8A:    BEQ CODE_29BF90             ; $29:BF8A: F0 04       ;
CODE_29BF8C:    JSR CODE_29C0C7             ; $29:BF8C: 20 C7 C0    ;
CODE_29BF8F:    RTL                         ; $29:BF8F: 6B          ;

CODE_29BF90:    LDA $0727                   ; $29:BF90: AD 27 07    ;
CODE_29BF93:    ASL A                       ; $29:BF93: 0A          ;
CODE_29BF94:    TAY                         ; $29:BF94: A8          ;
CODE_29BF95:    REP #$20                    ; $29:BF95: C2 20       ;
CODE_29BF97:    LDA.w DATA_21D87D,y                 ; $29:BF97: B9 7D D8    ;
CODE_29BF9A:    STA $00                     ; $29:BF9A: 85 00       ;
CODE_29BF9C:    LDA.w DATA_21D88F,y                 ; $29:BF9C: B9 8F D8    ;
CODE_29BF9F:    STA $02                     ; $29:BF9F: 85 02       ;
CODE_29BFA1:    LDA.w DATA_21D8A1,y                 ; $29:BFA1: B9 A1 D8    ;
CODE_29BFA4:    STA $04                     ; $29:BFA4: 85 04       ;
CODE_29BFA6:    LDA.w DATA_21D8B3,y                 ; $29:BFA6: B9 B3 D8    ;
CODE_29BFA9:    STA $06                     ; $29:BFA9: 85 06       ;
CODE_29BFAB:    LDA.w DATA_21D86B,y                 ; $29:BFAB: B9 6B D8    ;
CODE_29BFAE:    STA $08                     ; $29:BFAE: 85 08       ;
CODE_29BFB0:    SEP #$20                    ; $29:BFB0: E2 20       ;
CODE_29BFB2:    LDY $45,x                   ; $29:BFB2: B4 45       ;
CODE_29BFB4:    LDA ($08),y                 ; $29:BFB4: B1 08       ;
CODE_29BFB6:    TAY                         ; $29:BFB6: A8          ;
CODE_29BFB7:    STZ $0E                     ; $29:BFB7: 64 0E       ;
CODE_29BFB9:    LDA ($00),y                 ; $29:BFB9: B1 00       ;
CODE_29BFBB:    AND #$F0                    ; $29:BFBB: 29 F0       ;
CODE_29BFBD:    CMP $43,x                   ; $29:BFBD: D5 43       ;
CODE_29BFBF:    BEQ CODE_29BFCB             ; $29:BFBF: F0 0A       ;
CODE_29BFC1:    INY                         ; $29:BFC1: C8          ;
CODE_29BFC2:    BNE CODE_29BFB9             ; $29:BFC2: D0 F5       ;
CODE_29BFC4:    INC $01                     ; $29:BFC4: E6 01       ;
CODE_29BFC6:    INC $0E                     ; $29:BFC6: E6 0E       ;
CODE_29BFC8:    JMP CODE_29BFB9             ; $29:BFC8: 4C B9 BF    ;

CODE_29BFCB:    LDA $03                     ; $29:BFCB: A5 03       ;
CODE_29BFCD:    CLC                         ; $29:BFCD: 18          ;
CODE_29BFCE:    ADC $0E                     ; $29:BFCE: 65 0E       ;
CODE_29BFD0:    STA $03                     ; $29:BFD0: 85 03       ;
CODE_29BFD2:    STZ $0E                     ; $29:BFD2: 64 0E       ;
CODE_29BFD4:    LDA $47,x                   ; $29:BFD4: B5 47       ;
CODE_29BFD6:    LSR A                       ; $29:BFD6: 4A          ;
CODE_29BFD7:    LSR A                       ; $29:BFD7: 4A          ;
CODE_29BFD8:    LSR A                       ; $29:BFD8: 4A          ;
CODE_29BFD9:    LSR A                       ; $29:BFD9: 4A          ;
CODE_29BFDA:    STA $08                     ; $29:BFDA: 85 08       ;
CODE_29BFDC:    LDA $45,x                   ; $29:BFDC: B5 45       ;
CODE_29BFDE:    ASL A                       ; $29:BFDE: 0A          ;
CODE_29BFDF:    ASL A                       ; $29:BFDF: 0A          ;
CODE_29BFE0:    ASL A                       ; $29:BFE0: 0A          ;
CODE_29BFE1:    ASL A                       ; $29:BFE1: 0A          ;
CODE_29BFE2:    ORA $08                     ; $29:BFE2: 05 08       ;
CODE_29BFE4:    CMP ($02),y                 ; $29:BFE4: D1 02       ;
CODE_29BFE6:    BEQ CODE_29BFF2             ; $29:BFE6: F0 0A       ;
CODE_29BFE8:    INY                         ; $29:BFE8: C8          ;
CODE_29BFE9:    BNE CODE_29BFE4             ; $29:BFE9: D0 F9       ;
CODE_29BFEB:    INC $03                     ; $29:BFEB: E6 03       ;
CODE_29BFED:    INC $0E                     ; $29:BFED: E6 0E       ;
CODE_29BFEF:    JMP CODE_29BFE4             ; $29:BFEF: 4C E4 BF    ;

CODE_29BFF2:    LDA $01                     ; $29:BFF2: A5 01       ;
CODE_29BFF4:    CLC                         ; $29:BFF4: 18          ;
CODE_29BFF5:    ADC $0E                     ; $29:BFF5: 65 0E       ;
CODE_29BFF7:    STA $01                     ; $29:BFF7: 85 01       ;
CODE_29BFF9:    LDA $0727                   ; $29:BFF9: AD 27 07    ;
CODE_29BFFC:    CMP #$08                    ; $29:BFFC: C9 08       ;
CODE_29BFFE:    BNE CODE_29C008             ; $29:BFFE: D0 08       ;
CODE_29C000:    LDA ($00),y                 ; $29:C000: B1 00       ;
CODE_29C002:    AND #$0F                    ; $29:C002: 29 0F       ;
CODE_29C004:    STA $042A                   ; $29:C004: 8D 2A 04    ;
CODE_29C007:    RTL                         ; $29:C007: 6B          ;

CODE_29C008:    LDA ($00),y                 ; $29:C008: B1 00       ;
CODE_29C00A:    AND #$0F                    ; $29:C00A: 29 0F       ;
CODE_29C00C:    STA $070A                   ; $29:C00C: 8D 0A 07    ;
CODE_29C00F:    LDA $05                     ; $29:C00F: A5 05       ;
CODE_29C011:    CLC                         ; $29:C011: 18          ;
CODE_29C012:    ADC $0E                     ; $29:C012: 65 0E       ;
CODE_29C014:    STA $05                     ; $29:C014: 85 05       ;
CODE_29C016:    LDA $07                     ; $29:C016: A5 07       ;
CODE_29C018:    CLC                         ; $29:C018: 18          ;
CODE_29C019:    ADC $0E                     ; $29:C019: 65 0E       ;
CODE_29C01B:    STA $07                     ; $29:C01B: 85 07       ;
CODE_29C01D:    TYA                         ; $29:C01D: 98          ;
CODE_29C01E:    STA $0F                     ; $29:C01E: 85 0F       ;
CODE_29C020:    ASL A                       ; $29:C020: 0A          ;
CODE_29C021:    TAY                         ; $29:C021: A8          ;
CODE_29C022:    BCC CODE_29C030             ; $29:C022: 90 0C       ;
CODE_29C024:    LDA $05                     ; $29:C024: A5 05       ;
CODE_29C026:    ADC #$00                    ; $29:C026: 69 00       ;
CODE_29C028:    STA $05                     ; $29:C028: 85 05       ;
CODE_29C02A:    LDA $07                     ; $29:C02A: A5 07       ;
CODE_29C02C:    ADC #$00                    ; $29:C02C: 69 00       ;
CODE_29C02E:    STA $07                     ; $29:C02E: 85 07       ;
CODE_29C030:    TYA                         ; $29:C030: 98          ;
CODE_29C031:    CLC                         ; $29:C031: 18          ;
CODE_29C032:    ADC $0F                     ; $29:C032: 65 0F       ;
CODE_29C034:    TAY                         ; $29:C034: A8          ;
CODE_29C035:    STY $0F                     ; $29:C035: 84 0F       ;
CODE_29C037:    REP #$20                    ; $29:C037: C2 20       ;
CODE_29C039:    LDA ($04),y                 ; $29:C039: B1 04       ;
CODE_29C03B:    STA $31                     ; $29:C03B: 85 31       ;
CODE_29C03D:    STA $023A                   ; $29:C03D: 8D 3A 02    ;
CODE_29C040:    LDA ($06),y                 ; $29:C040: B1 06       ;
CODE_29C042:    STA $2B                     ; $29:C042: 85 2B       ;
CODE_29C044:    STA $1EBB                   ; $29:C044: 8D BB 1E    ;
CODE_29C047:    SEP #$20                    ; $29:C047: E2 20       ;
CODE_29C049:    INY                         ; $29:C049: C8          ;
CODE_29C04A:    INY                         ; $29:C04A: C8          ;
CODE_29C04B:    LDA ($04),y                 ; $29:C04B: B1 04       ;
CODE_29C04D:    STA $33                     ; $29:C04D: 85 33       ;
CODE_29C04F:    LDA ($06),y                 ; $29:C04F: B1 06       ;
CODE_29C051:    STA $2D                     ; $29:C051: 85 2D       ;
CODE_29C053:    STA $1EBD                   ; $29:C053: 8D BD 1E    ;
CODE_29C056:    LDA $1E                     ; $29:C056: A5 1E       ;
CODE_29C058:    BNE CODE_29C06B             ; $29:C058: D0 11       ;
CODE_29C05A:    LDA $070A                   ; $29:C05A: AD 0A 07    ;
CODE_29C05D:    CMP #$0F                    ; $29:C05D: C9 0F       ;
CODE_29C05F:    BNE CODE_29C065             ; $29:C05F: D0 04       ;
CODE_29C061:    JSR CODE_29C19E             ; $29:C061: 20 9E C1    ;
CODE_29C064:    RTL                         ; $29:C064: 6B          ;

CODE_29C065:    LDA #$03                    ; $29:C065: A9 03       ;
CODE_29C067:    STA $0728                   ; $29:C067: 8D 28 07    ;
CODE_29C06A:    RTL                         ; $29:C06A: 6B          ;

CODE_29C06B:    JSR CODE_29C06F             ; $29:C06B: 20 6F C0    ;
CODE_29C06E:    RTL                         ; $29:C06E: 6B          ;

CODE_29C06F:    JSL CODE_20FB1F         ; $29:C06F: 22 1F FB 20 ; ExecutePtrShort

PNTR_29C073:        dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C0E9
                    dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C10C
                    dw CODE_29C138
                    dw CODE_29C163
                    dw CODE_29C185
                    dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C10B
                    dw CODE_29C10B
    
CODE_29C095:    LDY $0726               ; $29:C095: AC 26 07    ;
CODE_29C098:    LDA #$7E                    ; $29:C098: A9 7E       ;
CODE_29C09A:    STA $30                     ; $29:C09A: 85 30       ;
CODE_29C09C:    LDA $0045,y                 ; $29:C09C: B9 45 00    ;
CODE_29C09F:    ASL A                       ; $29:C09F: 0A          ;
CODE_29C0A0:    TAX                         ; $29:C0A0: AA          ;
CODE_29C0A1:    LDA.l DATA_218200,x                 ; $29:C0A1: BF 00 82 21 ;
CODE_29C0A5:    STA $2E                     ; $29:C0A5: 85 2E       ;
CODE_29C0A7:    LDA.l DATA_218200+1,x               ; $29:C0A7: BF 01 82 21 ;
CODE_29C0AB:    INC A                       ; $29:C0AB: 1A          ;
CODE_29C0AC:    STA $2F                     ; $29:C0AC: 85 2F       ;
CODE_29C0AE:    LDA $0047,y                 ; $29:C0AE: B9 47 00    ;
CODE_29C0B1:    LSR A                       ; $29:C0B1: 4A          ;
CODE_29C0B2:    LSR A                       ; $29:C0B2: 4A          ;
CODE_29C0B3:    LSR A                       ; $29:C0B3: 4A          ;
CODE_29C0B4:    LSR A                       ; $29:C0B4: 4A          ;
CODE_29C0B5:    STA $00                     ; $29:C0B5: 85 00       ;
CODE_29C0B7:    LDA $0043,y                 ; $29:C0B7: B9 43 00    ;
CODE_29C0BA:    SEC                         ; $29:C0BA: 38          ;
CODE_29C0BB:    SBC #$10                    ; $29:C0BB: E9 10       ;
CODE_29C0BD:    AND #$F0                    ; $29:C0BD: 29 F0       ;
CODE_29C0BF:    ORA $00                     ; $29:C0BF: 05 00       ;
CODE_29C0C1:    TAY                         ; $29:C0C1: A8          ;
CODE_29C0C2:    LDA [$2E],y                 ; $29:C0C2: B7 2E       ;
CODE_29C0C4:    STA $B3                     ; $29:C0C4: 85 B3       ;
CODE_29C0C6:    RTS                         ; $29:C0C6: 60          ;

CODE_29C0C7:    LDA $0727                   ; $29:C0C7: AD 27 07    ;
CODE_29C0CA:    ASL A                       ; $29:C0CA: 0A          ;
CODE_29C0CB:    CLC                         ; $29:C0CB: 18          ;
CODE_29C0CC:    ADC $0727                   ; $29:C0CC: 6D 27 07    ;
CODE_29C0CF:    TAX                         ; $29:C0CF: AA          ;
CODE_29C0D0:    REP #$20                    ; $29:C0D0: C2 20       ;
CODE_29C0D2:    LDA.w DATA_21D7C2,x                 ; $29:C0D2: BD C2 D7    ;
CODE_29C0D5:    STA $2B                     ; $29:C0D5: 85 2B       ;
CODE_29C0D7:    LDA.w DATA_21D7DA                   ; $29:C0D7: AD DA D7    ;
CODE_29C0DA:    STA $31                     ; $29:C0DA: 85 31       ;
CODE_29C0DC:    SEP #$20                    ; $29:C0DC: E2 20       ;
CODE_29C0DE:    LDA.w DATA_21D7C4,x                 ; $29:C0DE: BD C4 D7    ;
CODE_29C0E1:    STA $2D                     ; $29:C0E1: 85 2D       ;
CODE_29C0E3:    LDA #$02                    ; $29:C0E3: A9 02       ;
CODE_29C0E5:    STA $070A                   ; $29:C0E5: 8D 0A 07    ;
CODE_29C0E8:    RTS                         ; $29:C0E8: 60          ;

CODE_29C0E9:    LDA $0727                   ; $29:C0E9: AD 27 07    ;
CODE_29C0EC:    ASL A                       ; $29:C0EC: 0A          ;
CODE_29C0ED:    CLC                         ; $29:C0ED: 18          ;
CODE_29C0EE:    ADC $0727                   ; $29:C0EE: 6D 27 07    ;
CODE_29C0F1:    TAY                         ; $29:C0F1: A8          ;
CODE_29C0F2:    REP #$20                    ; $29:C0F2: C2 20       ;
CODE_29C0F4:    LDA.w DATA_21D7DD,y                 ; $29:C0F4: B9 DD D7    ;
CODE_29C0F7:    STA $2B                     ; $29:C0F7: 85 2B       ;
CODE_29C0F9:    LDA.w DATA_21D7F5,y                 ; $29:C0F9: B9 F5 D7    ;
CODE_29C0FC:    STA $31                     ; $29:C0FC: 85 31       ;
CODE_29C0FE:    SEP #$20                    ; $29:C0FE: E2 20       ;
CODE_29C100:    LDA.w DATA_21D7DF,y                 ; $29:C100: B9 DF D7    ;
CODE_29C103:    STA $2D                     ; $29:C103: 85 2D       ;
CODE_29C105:    LDA #$0A                    ; $29:C105: A9 0A       ;
CODE_29C107:    STA $070A                   ; $29:C107: 8D 0A 07    ;
CODE_29C10A:    RTS                         ; $29:C10A: 60          ;

CODE_29C10B:    RTS                         ; $29:C10B: 60          ;

CODE_29C10C:    LDA #$0F                    ; $29:C10C: A9 0F       ;
CODE_29C10E:    STA $070A                   ; $29:C10E: 8D 0A 07    ;
CODE_29C111:    LDA #$02                    ; $29:C111: A9 02       ;
CODE_29C113:    STA $1042                   ; $29:C113: 8D 42 10    ;
CODE_29C116:    LDY #$00                    ; $29:C116: A0 00       ;
CODE_29C118:    STY $1043                   ; $29:C118: 8C 43 10    ;
CODE_29C11B:    STY $1034                   ; $29:C11B: 8C 34 10    ;
CODE_29C11E:    LDA.w DATA_21963A,y                 ; $29:C11E: B9 3A 96    ;
CODE_29C121:    STA $2B                     ; $29:C121: 85 2B       ;
CODE_29C123:    LDA.w DATA_21963A+1,y                   ; $29:C123: B9 3B 96    ;
CODE_29C126:    STA $2C                     ; $29:C126: 85 2C       ;
CODE_29C128:    LDA #$21                    ; $29:C128: A9 21       ;
CODE_29C12A:    STA $2D                     ; $29:C12A: 85 2D       ;
CODE_29C12C:    LDA #$03                    ; $29:C12C: A9 03       ;
CODE_29C12E:    STA $0728                   ; $29:C12E: 8D 28 07    ;
CODE_29C131:    LDA #$01                    ; $29:C131: A9 01       ;
CODE_29C133:    STA $7E3995                 ; $29:C133: 8F 95 39 7E ;
CODE_29C137:    RTS                         ; $29:C137: 60          ;

CODE_29C138:    PHX                         ; $29:C138: DA          ;
CODE_29C139:    LDA $0727                   ; $29:C139: AD 27 07    ;
CODE_29C13C:    ASL A                       ; $29:C13C: 0A          ;
CODE_29C13D:    TAX                         ; $29:C13D: AA          ;
CODE_29C13E:    CLC                         ; $29:C13E: 18          ;
CODE_29C13F:    ADC $0727                   ; $29:C13F: 6D 27 07    ;
CODE_29C142:    TAY                         ; $29:C142: A8          ;
CODE_29C143:    REP #$20                    ; $29:C143: C2 20       ;
CODE_29C145:    LDA.w DATA_21D80D,y                 ; $29:C145: B9 0D D8    ;
CODE_29C148:    STA $2B                     ; $29:C148: 85 2B       ;
CODE_29C14A:    LDA.w DATA_21D825,x                 ; $29:C14A: BD 25 D8    ;
CODE_29C14D:    STA $31                     ; $29:C14D: 85 31       ;
CODE_29C14F:    SEP #$20                    ; $29:C14F: E2 20       ;
CODE_29C151:    LDA.w DATA_21D80F,y                 ; $29:C151: B9 0F D8    ;
CODE_29C154:    STA $2D                     ; $29:C154: 85 2D       ;
CODE_29C156:    LDA #$07                    ; $29:C156: A9 07       ;
CODE_29C158:    STA $070A                   ; $29:C158: 8D 0A 07    ;
CODE_29C15B:    PLX                         ; $29:C15B: FA          ;
CODE_29C15C:    LDA #$01                    ; $29:C15C: A9 01       ;
CODE_29C15E:    STA $7E3995                 ; $29:C15E: 8F 95 39 7E ;
CODE_29C162:    RTS                         ; $29:C162: 60          ;

CODE_29C163:    LDA $0727                   ; $29:C163: AD 27 07    ;
CODE_29C166:    ASL A                       ; $29:C166: 0A          ;
CODE_29C167:    CLC                         ; $29:C167: 18          ;
CODE_29C168:    ADC $0727                   ; $29:C168: 6D 27 07    ;
CODE_29C16B:    TAY                         ; $29:C16B: A8          ;
CODE_29C16C:    REP #$20                    ; $29:C16C: C2 20       ;
CODE_29C16E:    LDA.w DATA_21D835,y                 ; $29:C16E: B9 35 D8    ;
CODE_29C171:    STA $2B                     ; $29:C171: 85 2B       ;
CODE_29C173:    LDA.w DATA_21D84D,y                 ; $29:C173: B9 4D D8    ;
CODE_29C176:    STA $31                     ; $29:C176: 85 31       ;
CODE_29C178:    SEP #$20                    ; $29:C178: E2 20       ;
CODE_29C17A:    LDA.w DATA_21D837,y                 ; $29:C17A: B9 37 D8    ;
CODE_29C17D:    STA $2D                     ; $29:C17D: 85 2D       ;
CODE_29C17F:    LDA #$0A                    ; $29:C17F: A9 0A       ;
CODE_29C181:    STA $070A                   ; $29:C181: 8D 0A 07    ;
CODE_29C184:    RTS                         ; $29:C184: 60          ;

CODE_29C185:    REP #$20                    ; $29:C185: C2 20       ;
CODE_29C187:    LDA.w DATA_21D865                   ; $29:C187: AD 65 D8    ;
CODE_29C18A:    STA $2B                     ; $29:C18A: 85 2B       ;
CODE_29C18C:    LDA.w DATA_21D868                   ; $29:C18C: AD 68 D8    ;
CODE_29C18F:    STA $31                     ; $29:C18F: 85 31       ;
CODE_29C191:    SEP #$20                    ; $29:C191: E2 20       ;
CODE_29C193:    LDA.w DATA_21D867                   ; $29:C193: AD 67 D8    ;
CODE_29C196:    STA $2D                     ; $29:C196: 85 2D       ;
CODE_29C198:    LDA #$01                    ; $29:C198: A9 01       ;
CODE_29C19A:    STA $070A                   ; $29:C19A: 8D 0A 07    ;
CODE_29C19D:    RTS                         ; $29:C19D: 60          ;

CODE_29C19E:    LDX $0726                   ; $29:C19E: AE 26 07    ;
CODE_29C1A1:    LDA $43,x                   ; $29:C1A1: B5 43       ;
CODE_29C1A3:    STA $7E3975,x               ; $29:C1A3: 9F 75 39 7E ;
CODE_29C1A7:    LDA $45,x                   ; $29:C1A7: B5 45       ;
CODE_29C1A9:    STA $7E3977,x               ; $29:C1A9: 9F 77 39 7E ;
CODE_29C1AD:    LDA $47,x                   ; $29:C1AD: B5 47       ;
CODE_29C1AF:    STA $7E3979,x               ; $29:C1AF: 9F 79 39 7E ;
CODE_29C1B3:    LDA $52,x                   ; $29:C1B3: B5 52       ;
CODE_29C1B5:    STA $7E397B,x               ; $29:C1B5: 9F 7B 39 7E ;
CODE_29C1B9:    LDA #$0F                    ; $29:C1B9: A9 0F       ;
CODE_29C1BB:    STA $070A                   ; $29:C1BB: 8D 0A 07    ;
CODE_29C1BE:    LDY $0F                     ; $29:C1BE: A4 0F       ;
CODE_29C1C0:    LDA ($04),y                 ; $29:C1C0: B1 04       ;
CODE_29C1C2:    STA $1042                   ; $29:C1C2: 8D 42 10    ;
CODE_29C1C5:    LDA ($06),y                 ; $29:C1C5: B1 06       ;
CODE_29C1C7:    STA $1043                   ; $29:C1C7: 8D 43 10    ;
CODE_29C1CA:    INY                         ; $29:C1CA: C8          ;
CODE_29C1CB:    LDA ($04),y                 ; $29:C1CB: B1 04       ;
CODE_29C1CD:    STA $1034                   ; $29:C1CD: 8D 34 10    ;
CODE_29C1D0:    LDA ($06),y                 ; $29:C1D0: B1 06       ;
CODE_29C1D2:    ASL A                       ; $29:C1D2: 0A          ;
CODE_29C1D3:    CLC                         ; $29:C1D3: 18          ;
CODE_29C1D4:    ADC ($06),y                 ; $29:C1D4: 71 06       ;
CODE_29C1D6:    TAY                         ; $29:C1D6: A8          ;
CODE_29C1D7:    LDA.w DATA_21963A,y                 ; $29:C1D7: B9 3A 96    ;
CODE_29C1DA:    STA $2B                     ; $29:C1DA: 85 2B       ;
CODE_29C1DC:    LDA.w DATA_21963A+1,y                   ; $29:C1DC: B9 3B 96    ;
CODE_29C1DF:    STA $2C                     ; $29:C1DF: 85 2C       ;
CODE_29C1E1:    LDA.w DATA_21963A+2,y                   ; $29:C1E1: B9 3C 96    ;
CODE_29C1E4:    STA $2D                     ; $29:C1E4: 85 2D       ;
CODE_29C1E6:    LDA #$03                    ; $29:C1E6: A9 03       ;
CODE_29C1E8:    STA $0728                   ; $29:C1E8: 8D 28 07    ;
CODE_29C1EB:    RTS                         ; $29:C1EB: 60          ;

DATA_29C1EC:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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

CODE_29C280:    LDA $0711                   ; $29:C280: AD 11 07    ;
CODE_29C283:    BEQ CODE_29C288             ; $29:C283: F0 03       ;
CODE_29C285:    DEC $0711                   ; $29:C285: CE 11 07    ;
CODE_29C288:    LDA $1A08                   ; $29:C288: AD 08 1A    ;
CODE_29C28B:    BEQ CODE_29C290             ; $29:C28B: F0 03       ;
CODE_29C28D:    DEC $1A08                   ; $29:C28D: CE 08 1A    ;
CODE_29C290:    LDA $1A09                   ; $29:C290: AD 09 1A    ;
CODE_29C293:    BEQ CODE_29C29E             ; $29:C293: F0 09       ;
CODE_29C295:    LDA $15                     ; $29:C295: A5 15       ;
CODE_29C297:    AND #$03                    ; $29:C297: 29 03       ;
CODE_29C299:    BNE CODE_29C29E             ; $29:C299: D0 03       ;
CODE_29C29B:    DEC $1A09                   ; $29:C29B: CE 09 1A    ;
CODE_29C29E:    JSL CODE_22E0A9             ; $29:C29E: 22 A9 E0 22 ;
CODE_29C2A2:    JSR CODE_29C2AC             ; $29:C2A2: 20 AC C2    ;
CODE_29C2A5:    JSR CODE_29C53C             ; $29:C2A5: 20 3C C5    ;
CODE_29C2A8:    JSR CODE_29C6D3             ; $29:C2A8: 20 D3 C6    ;
CODE_29C2AB:    RTL                         ; $29:C2AB: 6B          ;

CODE_29C2AC:    LDA $0728                   ; $29:C2AC: AD 28 07    ;
CODE_29C2AF:    JSL CODE_20FB1F         ; $29:C2AF: 22 1F FB 20 ; ExecutePtrShort

PNTR_29C2B3:        dw CODE_29C2BD
                    dw CODE_29C43A
                    dw CODE_29C4BA
                    dw CODE_29C312
                    dw CODE_29C350

CODE_29C2BD:    LDA #$50                ; $29:C2BD: A9 50       ;
CODE_29C2BF:    STA $070B               ; $29:C2BF: 8D 0B 07    ;
CODE_29C2C2:    LDA #$64                ; $29:C2C2: A9 64       ;
CODE_29C2C4:    STA $070C               ; $29:C2C4: 8D 0C 07    ;
CODE_29C2C7:    LDA #$80                ; $29:C2C7: A9 80       ;
CODE_29C2C9:    STA $0711               ; $29:C2C9: 8D 11 07    ;
CODE_29C2CC:    LDA #$00                    ; $29:C2CC: A9 00       ;
CODE_29C2CE:    STA $02D4                   ; $29:C2CE: 8D D4 02    ;
CODE_29C2D1:    STA $70                     ; $29:C2D1: 85 70       ;
CODE_29C2D3:    LDY #$14                    ; $29:C2D3: A0 14       ;
CODE_29C2D5:    STA $19FF,y                 ; $29:C2D5: 99 FF 19    ;
CODE_29C2D8:    DEY                         ; $29:C2D8: 88          ;
CODE_29C2D9:    BNE CODE_29C2D5             ; $29:C2D9: D0 FA       ;
CODE_29C2DB:    LDA #$FF                    ; $29:C2DB: A9 FF       ;
CODE_29C2DD:    STA $55                     ; $29:C2DD: 85 55       ;
CODE_29C2DF:    LDA #$70                    ; $29:C2DF: A9 70       ;
CODE_29C2E1:    STA $5E                     ; $29:C2E1: 85 5E       ;
CODE_29C2E3:    LDA #$40                    ; $29:C2E3: A9 40       ;
CODE_29C2E5:    STA $BD                     ; $29:C2E5: 85 BD       ;
CODE_29C2E7:    STA $1A0F                   ; $29:C2E7: 8D 0F 1A    ;
CODE_29C2EA:    LDY $0726                   ; $29:C2EA: AC 26 07    ;
CODE_29C2ED:    LDA $0747,y                 ; $29:C2ED: B9 47 07    ;
CODE_29C2F0:    STA $BB                     ; $29:C2F0: 85 BB       ;
CODE_29C2F2:    LDA #$72                    ; $29:C2F2: A9 72       ;
CODE_29C2F4:    STA $1A0C                   ; $29:C2F4: 8D 0C 1A    ;
CODE_29C2F7:    LDA #$1E                    ; $29:C2F7: A9 1E       ;
CODE_29C2F9:    STA $0711                   ; $29:C2F9: 8D 11 07    ;
CODE_29C2FC:    LDX #$00                    ; $29:C2FC: A2 00       ;
CODE_29C2FE:    LDA #$F0                    ; $29:C2FE: A9 F0       ;
CODE_29C300:    STA $8C,x                   ; $29:C300: 95 8C       ;
CODE_29C302:    STZ $4F,x                   ; $29:C302: 74 4F       ;
CODE_29C304:    STZ $5F,x                   ; $29:C304: 74 5F       ;
CODE_29C306:    STZ $0669                   ; $29:C306: 9C 69 06    ;
CODE_29C309:    LDA #$17                    ; $29:C309: A9 17       ;
CODE_29C30B:    STA $0518,x                 ; $29:C30B: 9D 18 05    ;
CODE_29C30E:    INC $0728                   ; $29:C30E: EE 28 07    ;
CODE_29C311:    RTS                         ; $29:C311: 60          ;

CODE_29C312:    LDA $0711                   ; $29:C312: AD 11 07    ;
CODE_29C315:    BEQ CODE_29C31D             ; $29:C315: F0 06       ;
CODE_29C317:    LSR A                       ; $29:C317: 4A          ;
CODE_29C318:    BNE CODE_29C34F             ; $29:C318: D0 35       ;
CODE_29C31A:    JMP CODE_29D2CE             ; $29:C31A: 4C CE D2    ;

CODE_29C31D:    LDA $15                     ; $29:C31D: A5 15       ;
CODE_29C31F:    AND #$03                    ; $29:C31F: 29 03       ;
CODE_29C321:    BNE CODE_29C34F             ; $29:C321: D0 2C       ;
CODE_29C323:    DEC $16                     ; $29:C323: C6 16       ;
CODE_29C325:    BNE CODE_29C34F             ; $29:C325: D0 28       ;
CODE_29C327:    JSR CODE_29CCF8             ; $29:C327: 20 F8 CC    ;
CODE_29C32A:    LDA #$01                    ; $29:C32A: A9 01       ;
CODE_29C32C:    STA $1500                   ; $29:C32C: 8D 00 15    ;
CODE_29C32F:    LDA #$18                    ; $29:C32F: A9 18       ;
CODE_29C331:    STA $0216                   ; $29:C331: 8D 16 02    ;
CODE_29C334:    STZ $0218                   ; $29:C334: 9C 18 02    ;
CODE_29C337:    LDA $0208                   ; $29:C337: AD 08 02    ;
CODE_29C33A:    AND #$FB                    ; $29:C33A: 29 FB       ;
CODE_29C33C:    STA $0208                   ; $29:C33C: 8D 08 02    ;
CODE_29C33F:    LDA #$61                    ; $29:C33F: A9 61       ;
CODE_29C341:    STA $0204                   ; $29:C341: 8D 04 02    ;
CODE_29C344:    LDA #$01                    ; $29:C344: A9 01       ;
CODE_29C346:    STA $0542                   ; $29:C346: 8D 42 05    ;
CODE_29C349:    JSR CODE_29C418             ; $29:C349: 20 18 C4    ;
CODE_29C34C:    INC $0728                   ; $29:C34C: EE 28 07    ;
CODE_29C34F:    RTS                         ; $29:C34F: 60          ;

CODE_29C350:    LDA $0727                   ; $29:C350: AD 27 07    ;
CODE_29C353:    CMP #$06                    ; $29:C353: C9 06       ;
CODE_29C355:    BEQ CODE_29C36B             ; $29:C355: F0 14       ;
CODE_29C357:    LDY #$18                    ; $29:C357: A0 18       ;
CODE_29C359:    LDA.w DATA_21F0CC,y                 ; $29:C359: B9 CC F0    ;
CODE_29C35C:    STA $08AF,y                 ; $29:C35C: 99 AF 08    ;
CODE_29C35F:    TYA                         ; $29:C35F: 98          ;
CODE_29C360:    LSR A                       ; $29:C360: 4A          ;
CODE_29C361:    LSR A                       ; $29:C361: 4A          ;
CODE_29C362:    TAX                         ; $29:C362: AA          ;
CODE_29C363:    LDA #$02                    ; $29:C363: A9 02       ;
CODE_29C365:    STA $0A4C,x                 ; $29:C365: 9D 4C 0A    ;
CODE_29C368:    DEY                         ; $29:C368: 88          ;
CODE_29C369:    BNE CODE_29C359             ; $29:C369: D0 EE       ;
CODE_29C36B:    LDA $16                     ; $29:C36B: A5 16       ;
CODE_29C36D:    CMP #$0F                    ; $29:C36D: C9 0F       ;
CODE_29C36F:    BEQ CODE_29C395             ; $29:C36F: F0 24       ;
CODE_29C371:    LDA $15                     ; $29:C371: A5 15       ;
CODE_29C373:    AND #$03                    ; $29:C373: 29 03       ;
CODE_29C375:    BEQ CODE_29C37A             ; $29:C375: F0 03       ;
CODE_29C377:    JMP CODE_29C3FA             ; $29:C377: 4C FA C3    ;

CODE_29C37A:    INC $16                     ; $29:C37A: E6 16       ;
CODE_29C37C:    LDA $16                     ; $29:C37C: A5 16       ;
CODE_29C37E:    CMP #$0F                    ; $29:C37E: C9 0F       ;
CODE_29C380:    BNE CODE_29C3FA             ; $29:C380: D0 78       ;
CODE_29C382:    LDY #$18                ; $29:C382: A0 18       ; Princess letter music
CODE_29C384:    LDA $0727                   ; $29:C384: AD 27 07    ;
CODE_29C387:    CMP #$06                    ; $29:C387: C9 06       ;
CODE_29C389:    BNE CODE_29C392             ; $29:C389: D0 07       ;
CODE_29C38B:    LDA #$78                    ; $29:C38B: A9 78       ;
CODE_29C38D:    STA $0711                   ; $29:C38D: 8D 11 07    ;
CODE_29C390:    LDY #$17                ; $29:C390: A0 17       ; Bowser letter music
CODE_29C392:    STY $1202                   ; $29:C392: 8C 02 12    ;
CODE_29C395:    LDA $0711                   ; $29:C395: AD 11 07    ;
CODE_29C398:    BEQ CODE_29C3A5             ; $29:C398: F0 0B       ;
CODE_29C39A:    LSR A                       ; $29:C39A: 4A          ;
CODE_29C39B:    BNE CODE_29C3A2             ; $29:C39B: D0 05       ;
CODE_29C39D:    LDA #$80                    ; $29:C39D: A9 80       ;
CODE_29C39F:    STA $1202                   ; $29:C39F: 8D 02 12    ;
CODE_29C3A2:    JSR CODE_29C400             ; $29:C3A2: 20 00 C4    ;
CODE_29C3A5:    LDY $0726                   ; $29:C3A5: AC 26 07    ;
CODE_29C3A8:    LDA $00F8,y                 ; $29:C3A8: B9 F8 00    ;
CODE_29C3AB:    ORA $18                     ; $29:C3AB: 05 18       ;
CODE_29C3AD:    AND #$80                    ; $29:C3AD: 29 80       ;
CODE_29C3AF:    BEQ CODE_29C3BA             ; $29:C3AF: F0 09       ;
CODE_29C3B1:    INC $14                     ; $29:C3B1: E6 14       ;
CODE_29C3B3:    LDA #$00                    ; $29:C3B3: A9 00       ;
CODE_29C3B5:    STA $0728                   ; $29:C3B5: 8D 28 07    ;
CODE_29C3B8:    STA $A2                     ; $29:C3B8: 85 A2       ;
CODE_29C3BA:    LDY #$02                    ; $29:C3BA: A0 02       ;
CODE_29C3BC:    LDA $16                     ; $29:C3BC: A5 16       ;
CODE_29C3BE:    CMP #$0F                    ; $29:C3BE: C9 0F       ;
CODE_29C3C0:    BNE CODE_29C3DE             ; $29:C3C0: D0 1C       ;
CODE_29C3C2:    LDA $A2                     ; $29:C3C2: A5 A2       ;
CODE_29C3C4:    BMI CODE_29C3DE             ; $29:C3C4: 30 18       ;
CODE_29C3C6:    DEY                         ; $29:C3C6: 88          ;
CODE_29C3C7:    LDA $15                     ; $29:C3C7: A5 15       ;
CODE_29C3C9:    AND #$38                    ; $29:C3C9: 29 38       ;
CODE_29C3CB:    BNE CODE_29C3D1             ; $29:C3CB: D0 04       ;
CODE_29C3CD:    STY $A2                     ; $29:C3CD: 84 A2       ;
CODE_29C3CF:    BRA CODE_29C3DE             ; $29:C3CF: 80 0D       ;

CODE_29C3D1:    LSR A                       ; $29:C3D1: 4A          ;
CODE_29C3D2:    LSR A                       ; $29:C3D2: 4A          ;
CODE_29C3D3:    AND #$02                    ; $29:C3D3: 29 02       ;
CODE_29C3D5:    TAY                         ; $29:C3D5: A8          ;
CODE_29C3D6:    LDA $A2                     ; $29:C3D6: A5 A2       ;
CODE_29C3D8:    BEQ CODE_29C3DE             ; $29:C3D8: F0 04       ;
CODE_29C3DA:    DEC $A2                     ; $29:C3DA: C6 A2       ;
CODE_29C3DC:    DEC $A2                     ; $29:C3DC: C6 A2       ;
CODE_29C3DE:    LDA.w DATA_21F0CA,y                 ; $29:C3DE: B9 CA F0    ;
CODE_29C3E1:    STA $08B2                   ; $29:C3E1: 8D B2 08    ;
CODE_29C3E4:    LDA $15                     ; $29:C3E4: A5 15       ;
CODE_29C3E6:    AND #$18                    ; $29:C3E6: 29 18       ;
CODE_29C3E8:    BEQ CODE_29C3FA             ; $29:C3E8: F0 10       ;
CODE_29C3EA:    LDY $68                     ; $29:C3EA: A4 68       ;
CODE_29C3EC:    LDA.w DATA_21F0AF,y                 ; $29:C3EC: B9 AF F0    ;
CODE_29C3EF:    STA $08C6                   ; $29:C3EF: 8D C6 08    ;
CODE_29C3F2:    LDA.w DATA_21F0BC,y                 ; $29:C3F2: B9 BC F0    ;
CODE_29C3F5:    STA $08C7                   ; $29:C3F5: 8D C7 08    ;
CODE_29C3F8:    BRA CODE_29C3FF             ; $29:C3F8: 80 05       ;

CODE_29C3FA:    LDA #$F0                    ; $29:C3FA: A9 F0       ;
CODE_29C3FC:    STA $08C5                   ; $29:C3FC: 8D C5 08    ;
CODE_29C3FF:    RTS                         ; $29:C3FF: 60          ;

CODE_29C400:    LDA $0711                   ; $29:C400: AD 11 07    ;
CODE_29C403:    AND #$02                    ; $29:C403: 29 02       ;
CODE_29C405:    TAY                         ; $29:C405: A8          ;
CODE_29C406:    LDA.w DATA_21F0E5,y                 ; $29:C406: B9 E5 F0    ;
CODE_29C409:    STA $1300                   ; $29:C409: 8D 00 13    ;
CODE_29C40C:    LDA.w DATA_21F0E5+1,y                   ; $29:C40C: B9 E6 F0    ;
CODE_29C40F:    STA $1301                   ; $29:C40F: 8D 01 13    ;
CODE_29C412:    LDA #$01                    ; $29:C412: A9 01       ;
CODE_29C414:    STA $1500                   ; $29:C414: 8D 00 15    ;
CODE_29C417:    RTS                         ; $29:C417: 60          ;

CODE_29C418:    LDY $0727                   ; $29:C418: AC 27 07    ;
CODE_29C41B:    LDA.w DATA_21F0A9,y                 ; $29:C41B: B9 A9 F0    ;
CODE_29C41E:    STA $68                     ; $29:C41E: 85 68       ;
CODE_29C420:    BEQ CODE_29C439             ; $29:C420: F0 17       ;
CODE_29C422:    LDY $0726                   ; $29:C422: AC 26 07    ;
CODE_29C425:    BEQ CODE_29C429             ; $29:C425: F0 02       ;
CODE_29C427:    LDY #$23                    ; $29:C427: A0 23       ;
CODE_29C429:    LDX #$1B                    ; $29:C429: A2 1B       ;
CODE_29C42B:    LDA $1D80,y                 ; $29:C42B: B9 80 1D    ;
CODE_29C42E:    BEQ CODE_29C434             ; $29:C42E: F0 04       ;
CODE_29C430:    INY                         ; $29:C430: C8          ;
CODE_29C431:    DEX                         ; $29:C431: CA          ;
CODE_29C432:    BNE CODE_29C42B             ; $29:C432: D0 F7       ;
CODE_29C434:    LDA $68                     ; $29:C434: A5 68       ;
CODE_29C436:    STA $1D80,y                 ; $29:C436: 99 80 1D    ;
CODE_29C439:    RTS                         ; $29:C439: 60          ;

CODE_29C43A:    LDA $0711                   ; $29:C43A: AD 11 07    ;
CODE_29C43D:    BNE CODE_29C4B9             ; $29:C43D: D0 7A       ;
CODE_29C43F:    LDX $1600                   ; $29:C43F: AE 00 16    ;
CODE_29C442:    LDA $070B                   ; $29:C442: AD 0B 07    ;
CODE_29C445:    STA $1602,x                 ; $29:C445: 9D 02 16    ;
CODE_29C448:    LDA $070C                   ; $29:C448: AD 0C 07    ;
CODE_29C44B:    STA $1603,x                 ; $29:C44B: 9D 03 16    ;
CODE_29C44E:    CLC                         ; $29:C44E: 18          ;
CODE_29C44F:    ADC #$20                    ; $29:C44F: 69 20       ;
CODE_29C451:    STA $070C                   ; $29:C451: 8D 0C 07    ;
CODE_29C454:    BCC CODE_29C459             ; $29:C454: 90 03       ;
CODE_29C456:    INC $070B                   ; $29:C456: EE 0B 07    ;
CODE_29C459:    LDA #$00                    ; $29:C459: A9 00       ;
CODE_29C45B:    STA $1604,x                 ; $29:C45B: 9D 04 16    ;
CODE_29C45E:    LDA #$2F                    ; $29:C45E: A9 2F       ;
CODE_29C460:    STA $1605,x                 ; $29:C460: 9D 05 16    ;
CODE_29C463:    INC A                       ; $29:C463: 1A          ;
CODE_29C464:    LSR A                       ; $29:C464: 4A          ;
CODE_29C465:    STA $00                     ; $29:C465: 85 00       ;
CODE_29C467:    LDY $02D4                   ; $29:C467: AC D4 02    ;
CODE_29C46A:    LDA.w DATA_21F17D,y                 ; $29:C46A: B9 7D F1    ;
CODE_29C46D:    TAY                         ; $29:C46D: A8          ;
CODE_29C46E:    REP #$20                    ; $29:C46E: C2 20       ;
CODE_29C470:    LDA.w DATA_21F0ED,y                 ; $29:C470: B9 ED F0    ;
CODE_29C473:    STA $1606,x                 ; $29:C473: 9D 06 16    ;
CODE_29C476:    SEP #$20                    ; $29:C476: E2 20       ;
CODE_29C478:    INY                         ; $29:C478: C8          ;
CODE_29C479:    INY                         ; $29:C479: C8          ;
CODE_29C47A:    INX                         ; $29:C47A: E8          ;
CODE_29C47B:    INX                         ; $29:C47B: E8          ;
CODE_29C47C:    DEC $00                     ; $29:C47C: C6 00       ;
CODE_29C47E:    BNE CODE_29C46E             ; $29:C47E: D0 EE       ;
CODE_29C480:    LDA #$FF                    ; $29:C480: A9 FF       ;
CODE_29C482:    STA $1606,x                 ; $29:C482: 9D 06 16    ;
CODE_29C485:    INX                         ; $29:C485: E8          ;
CODE_29C486:    INX                         ; $29:C486: E8          ;
CODE_29C487:    INX                         ; $29:C487: E8          ;
CODE_29C488:    INX                         ; $29:C488: E8          ;
CODE_29C489:    STX $1600                   ; $29:C489: 8E 00 16    ;
CODE_29C48C:    INC $02D4                   ; $29:C48C: EE D4 02    ;
CODE_29C48F:    LDA $02D4                   ; $29:C48F: AD D4 02    ;
CODE_29C492:    CMP #$08                    ; $29:C492: C9 08       ;
CODE_29C494:    BCC CODE_29C4B9             ; $29:C494: 90 23       ;
CODE_29C496:    REP #$20                    ; $29:C496: C2 20       ;
CODE_29C498:    LDA $BB                 ; $29:C498: A5 BB       ;\
CODE_29C49A:    AND #$00FF              ; $29:C49A: 29 FF 00    ; |
CODE_29C49D:    ASL A                   ; $29:C49D: 0A          ; |
CODE_29C49E:    TAY                     ; $29:C49E: A8          ; |
CODE_29C49F:    LDA.w DATA_21F395,y     ; $29:C49F: B9 95 F3    ; | 21F395
CODE_29C4A2:    STA $02D4               ; $29:C4A2: 8D D4 02    ;/ 16-bit indices to King has been restored texts, depending on the player's powerup
CODE_29C4A5:    SEP #$20                    ; $29:C4A5: E2 20       ;
CODE_29C4A7:    LDA #$50                    ; $29:C4A7: A9 50       ;
CODE_29C4A9:    STA $070B                   ; $29:C4A9: 8D 0B 07    ;
CODE_29C4AC:    LDA #$85                    ; $29:C4AC: A9 85       ;
CODE_29C4AE:    STA $070C                   ; $29:C4AE: 8D 0C 07    ;
CODE_29C4B1:    LDA #$10                    ; $29:C4B1: A9 10       ;
CODE_29C4B3:    STA $0711                   ; $29:C4B3: 8D 11 07    ;
CODE_29C4B6:    INC $0728                   ; $29:C4B6: EE 28 07    ;
CODE_29C4B9:    RTS                         ; $29:C4B9: 60          ;

CODE_29C4BA:    LDA $0711                   ; $29:C4BA: AD 11 07    ;
CODE_29C4BD:    BEQ CODE_29C4C0             ; $29:C4BD: F0 01       ;
CODE_29C4BF:    RTS                         ; $29:C4BF: 60          ;

CODE_29C4C0:    REP #$10                    ; $29:C4C0: C2 10       ;
CODE_29C4C2:    LDX $02D4                   ; $29:C4C2: AE D4 02    ;
CODE_29C4C5:    LDA.w DATA_21F185,x     ; $29:C4C5: BD 85 F1    ;The king has been restored text
CODE_29C4C8:    STA $00                     ; $29:C4C8: 85 00       ;
CODE_29C4CA:    SEP #$10                    ; $29:C4CA: E2 10       ;
CODE_29C4CC:    LDY $1600                   ; $29:C4CC: AC 00 16    ;
CODE_29C4CF:    STA $1606,y                 ; $29:C4CF: 99 06 16    ;
CODE_29C4D2:    LDA #$21                    ; $29:C4D2: A9 21       ;
CODE_29C4D4:    STA $1607,y                 ; $29:C4D4: 99 07 16    ;
CODE_29C4D7:    LDA $070B                   ; $29:C4D7: AD 0B 07    ;
CODE_29C4DA:    STA $1602,y                 ; $29:C4DA: 99 02 16    ;
CODE_29C4DD:    LDA #$01                    ; $29:C4DD: A9 01       ;
CODE_29C4DF:    STA $1605,y                 ; $29:C4DF: 99 05 16    ;
CODE_29C4E2:    LDA #$00                    ; $29:C4E2: A9 00       ;
CODE_29C4E4:    STA $1604,y                 ; $29:C4E4: 99 04 16    ;
CODE_29C4E7:    LDA #$FF                    ; $29:C4E7: A9 FF       ;
CODE_29C4E9:    STA $1608,y                 ; $29:C4E9: 99 08 16    ;
CODE_29C4EC:    TYA                         ; $29:C4EC: 98          ;
CODE_29C4ED:    CLC                         ; $29:C4ED: 18          ;
CODE_29C4EE:    ADC #$06                    ; $29:C4EE: 69 06       ;
CODE_29C4F0:    STA $1600                   ; $29:C4F0: 8D 00 16    ;
CODE_29C4F3:    LDA $070C                   ; $29:C4F3: AD 0C 07    ;
CODE_29C4F6:    STA $1603,y                 ; $29:C4F6: 99 03 16    ;
CODE_29C4F9:    REP #$20                    ; $29:C4F9: C2 20       ;
CODE_29C4FB:    INC $02D4                   ; $29:C4FB: EE D4 02    ;
CODE_29C4FE:    SEP #$20                    ; $29:C4FE: E2 20       ;
CODE_29C500:    INC $070C                   ; $29:C500: EE 0C 07    ;
CODE_29C503:    LDA $070C                   ; $29:C503: AD 0C 07    ;
CODE_29C506:    AND #$1F                    ; $29:C506: 29 1F       ;
CODE_29C508:    CMP #$1B                    ; $29:C508: C9 1B       ;
CODE_29C50A:    BNE CODE_29C52E             ; $29:C50A: D0 22       ;
CODE_29C50C:    LDA $070C                   ; $29:C50C: AD 0C 07    ;
CODE_29C50F:    ADC #$09                    ; $29:C50F: 69 09       ;
CODE_29C511:    STA $070C                   ; $29:C511: 8D 0C 07    ;
CODE_29C514:    BCC CODE_29C519             ; $29:C514: 90 03       ;
CODE_29C516:    INC $070B                   ; $29:C516: EE 0B 07    ;
CODE_29C519:    CMP #$45                    ; $29:C519: C9 45       ;
CODE_29C51B:    BNE CODE_29C52E             ; $29:C51B: D0 11       ;
CODE_29C51D:    STZ $02D4                   ; $29:C51D: 9C D4 02    ;
CODE_29C520:    STZ $02D5                   ; $29:C520: 9C D5 02    ;
CODE_29C523:    STA $68                     ; $29:C523: 85 68       ;
CODE_29C525:    LDA #$FF                    ; $29:C525: A9 FF       ;
CODE_29C527:    STA $0711                   ; $29:C527: 8D 11 07    ;
CODE_29C52A:    INC $0728                   ; $29:C52A: EE 28 07    ;
CODE_29C52D:    RTS                         ; $29:C52D: 60          ;

CODE_29C52E:    LDY #$04                    ; $29:C52E: A0 04       ;
CODE_29C530:    LDA $00                     ; $29:C530: A5 00       ;
CODE_29C532:    CMP #$FE                    ; $29:C532: C9 FE       ;
CODE_29C534:    BNE CODE_29C538             ; $29:C534: D0 02       ;
CODE_29C536:    LDY #$01                    ; $29:C536: A0 01       ;
CODE_29C538:    STY $0711                   ; $29:C538: 8C 11 07    ;
CODE_29C53B:    RTS                         ; $29:C53B: 60          ;

CODE_29C53C:    LDA $0216                   ; $29:C53C: AD 16 02    ;
CODE_29C53F:    BMI CODE_29C542             ; $29:C53F: 30 01       ;
CODE_29C541:    RTS                         ; $29:C541: 60          ;

CODE_29C542:    LDX #$1C                    ; $29:C542: A2 1C       ;
CODE_29C544:    LDA.w DATA_21F442,x                 ; $29:C544: BD 42 F4    ;
CODE_29C547:    STA $087F,x                 ; $29:C547: 9D 7F 08    ;
CODE_29C54A:    TXA                         ; $29:C54A: 8A          ;
CODE_29C54B:    LSR A                       ; $29:C54B: 4A          ;
CODE_29C54C:    LSR A                       ; $29:C54C: 4A          ;
CODE_29C54D:    TAY                         ; $29:C54D: A8          ;
CODE_29C54E:    LDA #$02                    ; $29:C54E: A9 02       ;
CODE_29C550:    STA $0A40,y                 ; $29:C550: 99 40 0A    ;
CODE_29C553:    DEX                         ; $29:C553: CA          ;
CODE_29C554:    BNE CODE_29C544             ; $29:C554: D0 EE       ;
CODE_29C556:    LDX $0727                   ; $29:C556: AE 27 07    ;
CODE_29C559:    LDY.w DATA_21F3B8,x                 ; $29:C559: BC B8 F3    ;
CODE_29C55C:    LDA $0728                   ; $29:C55C: AD 28 07    ;
CODE_29C55F:    CMP #$02                    ; $29:C55F: C9 02       ;
CODE_29C561:    BNE CODE_29C56A             ; $29:C561: D0 07       ;
CODE_29C563:    LDA $15                     ; $29:C563: A5 15       ;
CODE_29C565:    AND #$10                    ; $29:C565: 29 10       ;
CODE_29C567:    BEQ CODE_29C56A             ; $29:C567: F0 01       ;
CODE_29C569:    INY                         ; $29:C569: C8          ;
CODE_29C56A:    LDX #$0C                    ; $29:C56A: A2 0C       ;
CODE_29C56C:    LDA.w DATA_21F3BF,y                 ; $29:C56C: B9 BF F3    ;
CODE_29C56F:    STA $0886,x                 ; $29:C56F: 9D 86 08    ;
CODE_29C572:    LDA.w DATA_21F3F7,y                 ; $29:C572: B9 F7 F3    ;
CODE_29C575:    STA $0887,x                 ; $29:C575: 9D 87 08    ;
CODE_29C578:    INY                         ; $29:C578: C8          ;
CODE_29C579:    INY                         ; $29:C579: C8          ;
CODE_29C57A:    DEX                         ; $29:C57A: CA          ;
CODE_29C57B:    DEX                         ; $29:C57B: CA          ;
CODE_29C57C:    DEX                         ; $29:C57C: CA          ;
CODE_29C57D:    DEX                         ; $29:C57D: CA          ;
CODE_29C57E:    BPL CODE_29C56C             ; $29:C57E: 10 EC       ;
CODE_29C580:    LDY $1A01                   ; $29:C580: AC 01 1A    ;
CODE_29C583:    CPY #$02                    ; $29:C583: C0 02       ;
CODE_29C585:    BCC CODE_29C58E             ; $29:C585: 90 07       ;
CODE_29C587:    LDA #$E0                    ; $29:C587: A9 E0       ;
CODE_29C589:    STA $0882                   ; $29:C589: 8D 82 08    ;
CODE_29C58C:    BRA CODE_29C5F2             ; $29:C58C: 80 64       ;

CODE_29C58E:    LDA $15                     ; $29:C58E: A5 15       ;
CODE_29C590:    AND.w DATA_21F43F,y                 ; $29:C590: 39 3F F4    ;
CODE_29C593:    BNE CODE_29C5A1             ; $29:C593: D0 0C       ;
CODE_29C595:    LDA $1A02                   ; $29:C595: AD 02 1A    ;
CODE_29C598:    CLC                         ; $29:C598: 18          ;
CODE_29C599:    ADC.w DATA_21F442-1,y                   ; $29:C599: 79 41 F4    ;
CODE_29C59C:    AND #$07                    ; $29:C59C: 29 07       ;
CODE_29C59E:    STA $1A02                   ; $29:C59E: 8D 02 1A    ;
CODE_29C5A1:    JSR CODE_29C69A             ; $29:C5A1: 20 9A C6    ;
CODE_29C5A4:    LDA $1A0D                   ; $29:C5A4: AD 0D 1A    ;
CODE_29C5A7:    LDY $1A01                   ; $29:C5A7: AC 01 1A    ;
CODE_29C5AA:    BNE CODE_29C5C1             ; $29:C5AA: D0 15       ;
CODE_29C5AC:    CMP #$90                    ; $29:C5AC: C9 90       ;
CODE_29C5AE:    BCC CODE_29C5D2             ; $29:C5AE: 90 22       ;
CODE_29C5B0:    LDA #$38                    ; $29:C5B0: A9 38       ;
CODE_29C5B2:    STA $1200                   ; $29:C5B2: 8D 00 12    ;
CODE_29C5B5:    LDA #$10                    ; $29:C5B5: A9 10       ;
CODE_29C5B7:    STA $1A0E                   ; $29:C5B7: 8D 0E 1A    ;
CODE_29C5BA:    LDA #$B0                    ; $29:C5BA: A9 B0       ;
CODE_29C5BC:    STA $1A0F                   ; $29:C5BC: 8D 0F 1A    ;
CODE_29C5BF:    BRA CODE_29C5CF             ; $29:C5BF: 80 0E       ;

CODE_29C5C1:    CMP #$68                    ; $29:C5C1: C9 68       ;
CODE_29C5C3:    BCC CODE_29C5D2             ; $29:C5C3: 90 0D       ;
CODE_29C5C5:    LDA $1A0F                   ; $29:C5C5: AD 0F 1A    ;
CODE_29C5C8:    BMI CODE_29C5D2             ; $29:C5C8: 30 08       ;
CODE_29C5CA:    LDA #$13                    ; $29:C5CA: A9 13       ;
CODE_29C5CC:    STA $1202                   ; $29:C5CC: 8D 02 12    ;
CODE_29C5CF:    INC $1A01                   ; $29:C5CF: EE 01 1A    ;
CODE_29C5D2:    LDA $1A0D                   ; $29:C5D2: AD 0D 1A    ;
CODE_29C5D5:    STA $0841                   ; $29:C5D5: 8D 41 08    ;
CODE_29C5D8:    LDY $1A02                   ; $29:C5D8: AC 02 1A    ;
CODE_29C5DB:    LDA.w DATA_21F42F,y                 ; $29:C5DB: B9 2F F4    ;
CODE_29C5DE:    STA $0842                   ; $29:C5DE: 8D 42 08    ;
CODE_29C5E1:    LDA.w DATA_21F437,y                 ; $29:C5E1: B9 37 F4    ;
CODE_29C5E4:    STA $0843                   ; $29:C5E4: 8D 43 08    ;
CODE_29C5E7:    LDA $1A0C                   ; $29:C5E7: AD 0C 1A    ;
CODE_29C5EA:    STA $0840                   ; $29:C5EA: 8D 40 08    ;
CODE_29C5ED:    LDA #$02                    ; $29:C5ED: A9 02       ;
CODE_29C5EF:    STA $0A30                   ; $29:C5EF: 8D 30 0A    ;
CODE_29C5F2:    LDA $0669                   ; $29:C5F2: AD 69 06    ;
CODE_29C5F5:    CMP #$04                    ; $29:C5F5: C9 04       ;
CODE_29C5F7:    BEQ CODE_29C648             ; $29:C5F7: F0 4F       ;
CODE_29C5F9:    LDX #$00                    ; $29:C5F9: A2 00       ;
CODE_29C5FB:    AND #$01                    ; $29:C5FB: 29 01       ;
CODE_29C5FD:    BNE CODE_29C614             ; $29:C5FD: D0 15       ;
CODE_29C5FF:    LDA $0518                   ; $29:C5FF: AD 18 05    ;
CODE_29C602:    BEQ CODE_29C60B             ; $29:C602: F0 07       ;
CODE_29C604:    DEC $0518                   ; $29:C604: CE 18 05    ;
CODE_29C607:    LDX #$00                    ; $29:C607: A2 00       ;
CODE_29C609:    BRA CODE_29C677             ; $29:C609: 80 6C       ;

CODE_29C60B:    INC $0669                   ; $29:C60B: EE 69 06    ;
CODE_29C60E:    LDA #$F0                    ; $29:C60E: A9 F0       ;
CODE_29C610:    STA $8C,x                   ; $29:C610: 95 8C       ;
CODE_29C612:    STZ $5F,x                   ; $29:C612: 74 5F       ;
CODE_29C614:    STX $9B                     ; $29:C614: 86 9B       ;
CODE_29C616:    LDA $8C,x                   ; $29:C616: B5 8C       ;
CODE_29C618:    CLC                         ; $29:C618: 18          ;
CODE_29C619:    ADC #$01                    ; $29:C619: 69 01       ;
CODE_29C61B:    STA $8C,x                   ; $29:C61B: 95 8C       ;
CODE_29C61D:    JSL CODE_27A7EF             ; $29:C61D: 22 EF A7 27 ;
CODE_29C621:    LDA $5F,x                   ; $29:C621: B5 5F       ;
CODE_29C623:    BEQ CODE_29C629             ; $29:C623: F0 04       ;
CODE_29C625:    LDX #$06                    ; $29:C625: A2 06       ;
CODE_29C627:    BRA CODE_29C677             ; $29:C627: 80 4E       ;

CODE_29C629:    LDA $0669                   ; $29:C629: AD 69 06    ;
CODE_29C62C:    CMP #$03                    ; $29:C62C: C9 03       ;
CODE_29C62E:    BEQ CODE_29C63C             ; $29:C62E: F0 0C       ;
CODE_29C630:    INC $0669                   ; $29:C630: EE 69 06    ;
CODE_29C633:    LDX #$00                    ; $29:C633: A2 00       ;
CODE_29C635:    LDA #$07                    ; $29:C635: A9 07       ;
CODE_29C637:    STA $0518                   ; $29:C637: 8D 18 05    ;
CODE_29C63A:    BRA CODE_29C677             ; $29:C63A: 80 3B       ;

CODE_29C63C:    LDX $9B                     ; $29:C63C: A6 9B       ;
CODE_29C63E:    STZ $8C,x                   ; $29:C63E: 74 8C       ;
CODE_29C640:    STZ $4F,x                   ; $29:C640: 74 4F       ;
CODE_29C642:    STZ $1A03                   ; $29:C642: 9C 03 1A    ;
CODE_29C645:    STZ $1A08                   ; $29:C645: 9C 08 1A    ;
CODE_29C648:    LDY $1A03                   ; $29:C648: AC 03 1A    ;
CODE_29C64B:    LDA $1A08                   ; $29:C64B: AD 08 1A    ;
CODE_29C64E:    BNE CODE_29C674             ; $29:C64E: D0 24       ;
CODE_29C650:    DEY                         ; $29:C650: 88          ;
CODE_29C651:    BPL CODE_29C66B             ; $29:C651: 10 18       ;
CODE_29C653:    LDA $0669                   ; $29:C653: AD 69 06    ;
CODE_29C656:    CMP #$04                    ; $29:C656: C9 04       ;
CODE_29C658:    BNE CODE_29C666             ; $29:C658: D0 0C       ;
CODE_29C65A:    STZ $0669                   ; $29:C65A: 9C 69 06    ;
CODE_29C65D:    LDX #$00                    ; $29:C65D: A2 00       ;
CODE_29C65F:    LDA #$17                    ; $29:C65F: A9 17       ;
CODE_29C661:    STA $0518                   ; $29:C661: 8D 18 05    ;
CODE_29C664:    BRA CODE_29C677             ; $29:C664: 80 11       ;

CODE_29C666:    INC $0669                   ; $29:C666: EE 69 06    ;
CODE_29C669:    LDY #$07                    ; $29:C669: A0 07       ;
CODE_29C66B:    STY $1A03                   ; $29:C66B: 8C 03 1A    ;
CODE_29C66E:    LDA.w DATA_21F46F,y                 ; $29:C66E: B9 6F F4    ;
CODE_29C671:    STA $1A08                   ; $29:C671: 8D 08 1A    ;
CODE_29C674:    LDX.w DATA_21F467,y                 ; $29:C674: BE 67 F4    ;
CODE_29C677:    LDY #$04                    ; $29:C677: A0 04       ;
CODE_29C679:    LDA.w DATA_21F45F,x                 ; $29:C679: BD 5F F4    ;
CODE_29C67C:    STA $0896,y                 ; $29:C67C: 99 96 08    ;
CODE_29C67F:    INX                         ; $29:C67F: E8          ;
CODE_29C680:    DEY                         ; $29:C680: 88          ;
CODE_29C681:    DEY                         ; $29:C681: 88          ;
CODE_29C682:    DEY                         ; $29:C682: 88          ;
CODE_29C683:    DEY                         ; $29:C683: 88          ;
CODE_29C684:    BPL CODE_29C679             ; $29:C684: 10 F3       ;
CODE_29C686:    LDX #$00                    ; $29:C686: A2 00       ;
CODE_29C688:    LDY #$04                    ; $29:C688: A0 04       ;
CODE_29C68A:    LDA $0895,y                 ; $29:C68A: B9 95 08    ;
CODE_29C68D:    CLC                         ; $29:C68D: 18          ;
CODE_29C68E:    ADC $5F,x                   ; $29:C68E: 75 5F       ;
CODE_29C690:    STA $0895,y                 ; $29:C690: 99 95 08    ;
CODE_29C693:    DEY                         ; $29:C693: 88          ;
CODE_29C694:    DEY                         ; $29:C694: 88          ;
CODE_29C695:    DEY                         ; $29:C695: 88          ;
CODE_29C696:    DEY                         ; $29:C696: 88          ;
CODE_29C697:    BPL CODE_29C68A             ; $29:C697: 10 F1       ;
CODE_29C699:    RTS                         ; $29:C699: 60          ;

CODE_29C69A:    LDX #$01                    ; $29:C69A: A2 01       ;
CODE_29C69C:    JSR CODE_29C6AF             ; $29:C69C: 20 AF C6    ;
CODE_29C69F:    LDA $1A0F                   ; $29:C69F: AD 0F 1A    ;
CODE_29C6A2:    BMI CODE_29C6A8             ; $29:C6A2: 30 04       ;
CODE_29C6A4:    CMP #$40                    ; $29:C6A4: C9 40       ;
CODE_29C6A6:    BCS CODE_29C6AE                     ; $29:C6A6: B0 06       ;
CODE_29C6A8:    INC $1A0F                   ; $29:C6A8: EE 0F 1A    ;
CODE_29C6AB:    INC $1A0F                   ; $29:C6AB: EE 0F 1A    ;
CODE_29C6AE:    DEX                         ; $29:C6AE: CA          ;
CODE_29C6AF:    LDA $1A0E,x                 ; $29:C6AF: BD 0E 1A    ;
CODE_29C6B2:    ASL A                       ; $29:C6B2: 0A          ;
CODE_29C6B3:    ASL A                       ; $29:C6B3: 0A          ;
CODE_29C6B4:    ASL A                       ; $29:C6B4: 0A          ;
CODE_29C6B5:    ASL A                       ; $29:C6B5: 0A          ;
CODE_29C6B6:    CLC                         ; $29:C6B6: 18          ;
CODE_29C6B7:    ADC $1A10,x                 ; $29:C6B7: 7D 10 1A    ;
CODE_29C6BA:    STA $1A10,x                 ; $29:C6BA: 9D 10 1A    ;
CODE_29C6BD:    PHP                         ; $29:C6BD: 08          ;
CODE_29C6BE:    LDA $1A0E,x                 ; $29:C6BE: BD 0E 1A    ;
CODE_29C6C1:    LSR A                       ; $29:C6C1: 4A          ;
CODE_29C6C2:    LSR A                       ; $29:C6C2: 4A          ;
CODE_29C6C3:    LSR A                       ; $29:C6C3: 4A          ;
CODE_29C6C4:    LSR A                       ; $29:C6C4: 4A          ;
CODE_29C6C5:    CMP #$08                    ; $29:C6C5: C9 08       ;
CODE_29C6C7:    BCC CODE_29C6CB             ; $29:C6C7: 90 02       ;
CODE_29C6C9:    ORA #$F0                    ; $29:C6C9: 09 F0       ;
CODE_29C6CB:    PLP                         ; $29:C6CB: 28          ;
CODE_29C6CC:    ADC $1A0C,x                 ; $29:C6CC: 7D 0C 1A    ;
CODE_29C6CF:    STA $1A0C,x                 ; $29:C6CF: 9D 0C 1A    ;
CODE_29C6D2:    RTS                         ; $29:C6D2: 60          ;

CODE_29C6D3:    LDY $BB                     ; $29:C6D3: A4 BB       ;
CODE_29C6D5:    LDA $70                     ; $29:C6D5: A5 70       ;
CODE_29C6D7:    CMP #$80                    ; $29:C6D7: C9 80       ;
CODE_29C6D9:    BCC CODE_29C6DF             ; $29:C6D9: 90 04       ;
CODE_29C6DB:    LDX $55                     ; $29:C6DB: A6 55       ;
CODE_29C6DD:    BEQ CODE_29C6F0             ; $29:C6DD: F0 11       ;
CODE_29C6DF:    CLC                         ; $29:C6DF: 18          ;
CODE_29C6E0:    ADC #$04                    ; $29:C6E0: 69 04       ;
CODE_29C6E2:    STA $70                     ; $29:C6E2: 85 70       ;
CODE_29C6E4:    BCC CODE_29C6E8             ; $29:C6E4: 90 02       ;
CODE_29C6E6:    INC $55                     ; $29:C6E6: E6 55       ;
CODE_29C6E8:    INC $0711                   ; $29:C6E8: EE 11 07    ;
CODE_29C6EB:    LDA.w DATA_21F477,y                 ; $29:C6EB: B9 77 F4    ;
CODE_29C6EE:    BRA CODE_29C6F3             ; $29:C6EE: 80 03       ;

CODE_29C6F0:    LDA.w DATA_21F47E,y                 ; $29:C6F0: B9 7E F4    ;
CODE_29C6F3:    STA $BC                     ; $29:C6F3: 85 BC       ;
CODE_29C6F5:    JSL CODE_20E237             ; $29:C6F5: 22 37 E2 20 ;
CODE_29C6F9:    RTS                         ; $29:C6F9: 60          ;

CODE_29C6FA:    LDX $0727                   ; $29:C6FA: AE 27 07    ;
CODE_29C6FD:    LDY.w DATA_21F835,x                 ; $29:C6FD: BC 35 F8    ;
CODE_29C700:    LDX #$06                    ; $29:C700: A2 06       ;
CODE_29C702:    LDA #$80                    ; $29:C702: A9 80       ;
CODE_29C704:    STA $2115                   ; $29:C704: 8D 15 21    ;
CODE_29C707:    LDA.w DATA_21F843,x                 ; $29:C707: BD 43 F8    ;
CODE_29C70A:    STA $2116                   ; $29:C70A: 8D 16 21    ;
CODE_29C70D:    LDA.w DATA_21F83C,x                 ; $29:C70D: BD 3C F8    ;
CODE_29C710:    STA $2117                   ; $29:C710: 8D 17 21    ;
CODE_29C713:    INY                         ; $29:C713: C8          ;
CODE_29C714:    LDA.w DATA_21F785-1,y                   ; $29:C714: B9 84 F7    ;
CODE_29C717:    BEQ CODE_29C727             ; $29:C717: F0 0E       ;
CODE_29C719:    CMP #$FF                    ; $29:C719: C9 FF       ;
CODE_29C71B:    BEQ CODE_29C72A             ; $29:C71B: F0 0D       ;
CODE_29C71D:    STA $2118                   ; $29:C71D: 8D 18 21    ;
CODE_29C720:    LDA #$14                    ; $29:C720: A9 14       ;
CODE_29C722:    STA $2119                   ; $29:C722: 8D 19 21    ;
CODE_29C725:    BRA CODE_29C713             ; $29:C725: 80 EC       ;

;Routine which handles letters after the world is beaten
CODE_29C727:    DEX                         ; $29:C727: CA          ;
CODE_29C728:    BPL CODE_29C707             ; $29:C728: 10 DD       ;
CODE_29C72A:    LDA $0727               ; $29:C72A: AD 27 07    ;Current world number
CODE_29C72D:    ASL A                       ; $29:C72D: 0A          ;
CODE_29C72E:    TAX                         ; $29:C72E: AA          ;
CODE_29C72F:    LDA.w PNTR_21F485,x     ; $29:C72F: BD 85 F4    ;\
CODE_29C732:    STA $00                 ; $29:C732: 85 00       ; |
CODE_29C734:    LDA.w PNTR_21F485+1,x   ; $29:C734: BD 86 F4    ; | Pointers to main content of the letter
CODE_29C737:    STA $01                 ; $29:C737: 85 01       ;/  (stuff like things about ghosts, kuribo shoe, etc)
CODE_29C739:    LDY #$00                    ; $29:C739: A0 00       ;
CODE_29C73B:    LDX #$05                    ; $29:C73B: A2 05       ;
CODE_29C73D:    LDA.w DATA_21F6DB,x     ; $29:C73D: BD DB F6    ; \
CODE_29C740:    STA $2116               ; $29:C740: 8D 16 21    ; | set vram address low and high byte
CODE_29C743:    LDA.w DATA_21F6E1,x     ; $29:C743: BD E1 F6    ; |
CODE_29C746:    STA $2117               ; $29:C746: 8D 17 21    ; /
CODE_29C749:    LDA ($00),y                 ; $29:C749: B1 00       ;
CODE_29C74B:    INY                         ; $29:C74B: C8          ;
CODE_29C74C:    CMP #$00                    ; $29:C74C: C9 00       ;
CODE_29C74E:    BEQ CODE_29C75E             ; $29:C74E: F0 0E       ;
CODE_29C750:    CMP #$FF                    ; $29:C750: C9 FF       ;
CODE_29C752:    BEQ CODE_29C761             ; $29:C752: F0 0D       ;
CODE_29C754:    STA $2118                   ; $29:C754: 8D 18 21    ;
CODE_29C757:    LDA #$14                    ; $29:C757: A9 14       ;
CODE_29C759:    STA $2119                   ; $29:C759: 8D 19 21    ;
CODE_29C75C:    BRA CODE_29C749             ; $29:C75C: 80 EB       ;

CODE_29C75E:    DEX                         ; $29:C75E: CA          ;
CODE_29C75F:    BPL CODE_29C73D             ; $29:C75F: 10 DC       ;
CODE_29C761:    LDA $0727                   ; $29:C761: AD 27 07    ;
CODE_29C764:    CMP #$06                    ; $29:C764: C9 06       ;
CODE_29C766:    BNE CODE_29C793             ; $29:C766: D0 2B       ;
CODE_29C768:    REP #$20                    ; $29:C768: C2 20       ;
CODE_29C76A:    LDX #$08                    ; $29:C76A: A2 08       ;
CODE_29C76C:    LDY #$00                    ; $29:C76C: A0 00       ;
CODE_29C76E:    LDA #$11C6                  ; $29:C76E: A9 C6 11    ;
CODE_29C771:    STA $00                     ; $29:C771: 85 00       ;
CODE_29C773:    LDA $00                     ; $29:C773: A5 00       ;
CODE_29C775:    STA $2116               ; $29:C775: 8D 16 21    ;
CODE_29C778:    LDA.w DATA_21F6E7,y     ; $29:C778: B9 E7 F6    ; Layer 2 Bowser VRAM tilemap on world 7 beaten's letter
CODE_29C77B:    BMI CODE_29C784             ; $29:C77B: 30 07       ;
CODE_29C77D:    STA $2118                   ; $29:C77D: 8D 18 21    ;
CODE_29C780:    INY                         ; $29:C780: C8          ;
CODE_29C781:    INY                         ; $29:C781: C8          ;
CODE_29C782:    BRA CODE_29C778             ; $29:C782: 80 F4       ;

CODE_29C784:    INY                         ; $29:C784: C8          ;
CODE_29C785:    INY                         ; $29:C785: C8          ;
CODE_29C786:    LDA $00                     ; $29:C786: A5 00       ;
CODE_29C788:    CLC                         ; $29:C788: 18          ;
CODE_29C789:    ADC #$0020                  ; $29:C789: 69 20 00    ;
CODE_29C78C:    STA $00                     ; $29:C78C: 85 00       ;
CODE_29C78E:    DEX                         ; $29:C78E: CA          ;
CODE_29C78F:    BNE CODE_29C773             ; $29:C78F: D0 E2       ;
CODE_29C791:    SEP #$20                    ; $29:C791: E2 20       ;
CODE_29C793:    RTL                         ; $29:C793: 6B          ;

CODE_29C794:    JSL CODE_29C82B             ; $29:C794: 22 2B C8 29 ;
CODE_29C798:    RTL                         ; $29:C798: 6B          ;

PNTR_29C799:        dw $1000
                    dw DATA_3C9000
                    dw DATA_3C9580
                    dw DATA_3C9B00
                    dw DATA_3C9160
                    dw DATA_3C9B00
                    dw DATA_3C96E0
                    dw $2002
                    dw DATA_3C9B00
                    dw DATA_3C92C0
                    dw DATA_3C9840
                    dw DATA_3C9000
                    dw DATA_3C99A0
                    dw DATA_3C9160
                    dw DATA_3C9420
                    dw $2000
                    dw $2001
                    dw $2002
                    dw $3000

PNTR_29C7BF:        dw DATA_3C9E00
                    dw DATA_3C9E80
                    dw DATA_3C9E00
                    dw DATA_3C9F00
                    dw DATA_3C9F00
                    dw DATA_3C9F80
                    dw DATA_3CA000
                    dw DATA_3CA080
                    dw DATA_3C9E00
                    dw DATA_3C9D80

PNTR_29C7D3:        dw DATA_3C8960
                    dw DATA_3C8980
                    dw DATA_3C89A0
                    dw DATA_3C89C0
                    dw DATA_3C89E0
                    dw DATA_3C8A00
                    dw DATA_3C8960
                    dw $0000

PNTR_29C7E3:        dw DATA_3C88A0
                    dw DATA_3C88A0
                    dw DATA_3C8920
                    dw DATA_3C88A0
                    dw DATA_3C88E0
                    dw DATA_3C88C0
                    dw DATA_3C8900
                    dw DATA_3C88E0
                    dw DATA_3C88E0
                    dw DATA_3C8940
                    dw DATA_3C88E0
                    dw DATA_3C88E0
                    dw DATA_3C88C0
                    dw DATA_3C8900

PNTR_29C7FF:        dw DATA_3C9C80
                    dw DATA_3C9C90
                    dw DATA_3C9CA0
                    dw DATA_3C9CB0
                    dw DATA_3C9CC0
                    dw DATA_3C9CD0
                    dw DATA_3C9CE0
                    dw DATA_3C9CF0
                    dw DATA_3C9D00
                    dw DATA_3C9D10
                    dw DATA_3C9D20
                    dw DATA_3C9D30
                    dw DATA_3C9D40
                    dw DATA_3C9D50
                    dw DATA_3C9D60

DATA_29C81D:        dw $0700

DATA_29C81F:        dw $0040
                    dw $0040
                    dw $0020

PNTR_29C825:        dw DATA_3C8BC0
                    dw DATA_3C8B60
                    dw DATA_3C8BC0

CODE_29C82B:    LDA #$20                    ; $29:C82B: A9 20       ;
CODE_29C82D:    STA $0205                   ; $29:C82D: 8D 05 02    ;
CODE_29C830:    ASL A                       ; $29:C830: 0A          ;
CODE_29C831:    STA $0206                   ; $29:C831: 8D 06 02    ;
CODE_29C834:    ASL A                       ; $29:C834: 0A          ;
CODE_29C835:    STA $0207                   ; $29:C835: 8D 07 02    ;
CODE_29C838:    REP #$30                    ; $29:C838: C2 30       ;
CODE_29C83A:    PHB                     ; $29:C83A: 8B          ;
CODE_29C83B:    LDX.w #DATA_3CA100                  ; $29:C83B: A2 00 A1    ;
CODE_29C83E:    LDY #$1300                  ; $29:C83E: A0 00 13    ;
CODE_29C841:    LDA #$001F                  ; $29:C841: A9 1F 00    ;
CODE_29C844:    MVN $00, DATA_3CA100>>16                    ; $29:C844: 54 00 3C    ;
CODE_29C847:    PLB                     ; $29:C847: AB          ;
CODE_29C848:    PHB                     ; $29:C848: 8B          ;
CODE_29C849:    LDX.w #DATA_3C8800                  ; $29:C849: A2 00 88    ;
CODE_29C84C:    LDY #$1400                  ; $29:C84C: A0 00 14    ;
CODE_29C84F:    LDA #$009F                  ; $29:C84F: A9 9F 00    ;
CODE_29C852:    MVN $00, DATA_3C8800>>16                    ; $29:C852: 54 00 3C    ;
CODE_29C855:    PLB                     ; $29:C855: AB          ;
CODE_29C856:    LDA $070A                   ; $29:C856: AD 0A 07    ;
CODE_29C859:    AND #$00FF                  ; $29:C859: 29 FF 00    ;
CODE_29C85C:    ASL A                       ; $29:C85C: 0A          ;
CODE_29C85D:    TAX                         ; $29:C85D: AA          ;
CODE_29C85E:    LDA.l PNTR_29C799,x                 ; $29:C85E: BF 99 C7 29 ;
CODE_29C862:    AND #$F000                  ; $29:C862: 29 00 F0    ;
CODE_29C865:    BEQ CODE_29C89D             ; $29:C865: F0 36       ;
CODE_29C867:    CMP #$1000                  ; $29:C867: C9 00 10    ;
CODE_29C86A:    BEQ CODE_29C8A4             ; $29:C86A: F0 38       ;
CODE_29C86C:    CMP #$2000                  ; $29:C86C: C9 00 20    ;
CODE_29C86F:    BEQ CODE_29C8A9             ; $29:C86F: F0 38       ;
CODE_29C871:    CMP #$3000                  ; $29:C871: C9 00 30    ;
CODE_29C874:    BEQ CODE_29C89F             ; $29:C874: F0 29       ;
CODE_29C876:    CPX #$0004                  ; $29:C876: E0 04 00    ;
CODE_29C879:    BNE CODE_29C886             ; $29:C879: D0 0B       ;
CODE_29C87B:    LDA $1EBF                   ; $29:C87B: AD BF 1E    ;
CODE_29C87E:    AND #$00FF                  ; $29:C87E: 29 FF 00    ;
CODE_29C881:    CMP #$0016                  ; $29:C881: C9 16 00    ;
CODE_29C884:    BEQ CODE_29C89A             ; $29:C884: F0 14       ;
CODE_29C886:    JSR CODE_29CAA0             ; $29:C886: 20 A0 CA    ;
CODE_29C889:    JSR CODE_29CBC0             ; $29:C889: 20 C0 CB    ;
CODE_29C88C:    LDA $073C                   ; $29:C88C: AD 3C 07    ;
CODE_29C88F:    AND #$0007                  ; $29:C88F: 29 07 00    ;
CODE_29C892:    ASL A                       ; $29:C892: 0A          ;
CODE_29C893:    TAX                         ; $29:C893: AA          ;
CODE_29C894:    LDA.l DATA_3C9C60,x                 ; $29:C894: BF 60 9C 3C ;
CODE_29C898:    BRA CODE_29C90E             ; $29:C898: 80 74       ;

CODE_29C89A:    JSR CODE_29CB7E             ; $29:C89A: 20 7E CB    ;
CODE_29C89D:    BRA CODE_29C90B             ; $29:C89D: 80 6C       ;

CODE_29C89F:    JSR CODE_29CCB6             ; $29:C89F: 20 B6 CC    ;
CODE_29C8A2:    BRA CODE_29C90B             ; $29:C8A2: 80 67       ;

CODE_29C8A4:    JSR CODE_29CC14             ; $29:C8A4: 20 14 CC    ;
CODE_29C8A7:    BRA CODE_29C90B             ; $29:C8A7: 80 62       ;

CODE_29C8A9:    PHX                         ; $29:C8A9: DA          ;
CODE_29C8AA:    PHB                     ; $29:C8AA: 8B          ;
CODE_29C8AB:    LDX.w #DATA_3CA120                  ; $29:C8AB: A2 20 A1    ;
CODE_29C8AE:    LDY #$1320                  ; $29:C8AE: A0 20 13    ;
CODE_29C8B1:    LDA #$00DF                  ; $29:C8B1: A9 DF 00    ;
CODE_29C8B4:    MVN $00, DATA_3CA120>>16                    ; $29:C8B4: 54 00 3C    ;
CODE_29C8B7:    LDX.w #DATA_3C8A60                  ; $29:C8B7: A2 60 8A    ;
CODE_29C8BA:    LDY #$14C0                  ; $29:C8BA: A0 C0 14    ;
CODE_29C8BD:    LDA #$001F                  ; $29:C8BD: A9 1F 00    ;
CODE_29C8C0:    MVN $00, DATA_3C8A60>>16                    ; $29:C8C0: 54 00 3C    ;
CODE_29C8C3:    PLB                     ; $29:C8C3: AB          ;
CODE_29C8C4:    LDA $070A                   ; $29:C8C4: AD 0A 07    ;
CODE_29C8C7:    AND #$00FF                  ; $29:C8C7: 29 FF 00    ;
CODE_29C8CA:    CMP #$000F                  ; $29:C8CA: C9 0F 00    ;
CODE_29C8CD:    BNE CODE_29C8E5             ; $29:C8CD: D0 16       ;
CODE_29C8CF:    LDA $0726                   ; $29:C8CF: AD 26 07    ;
CODE_29C8D2:    AND #$0001                  ; $29:C8D2: 29 01 00    ;
CODE_29C8D5:    BEQ CODE_29C8E5             ; $29:C8D5: F0 0E       ;
CODE_29C8D7:    PHB                     ; $29:C8D7: 8B          ;
CODE_29C8D8:    LDX.w #DATA_3C88E0                  ; $29:C8D8: A2 E0 88    ;
CODE_29C8DB:    LDY #$13E0                  ; $29:C8DB: A0 E0 13    ;
CODE_29C8DE:    LDA #$001F                  ; $29:C8DE: A9 1F 00    ;
CODE_29C8E1:    MVN $00, DATA_3C88E0>>16                    ; $29:C8E1: 54 00 3C    ;
CODE_29C8E4:    PLB                     ; $29:C8E4: AB          ;
CODE_29C8E5:    PLX                         ; $29:C8E5: FA          ;
CODE_29C8E6:    LDA.l PNTR_29C799,x                 ; $29:C8E6: BF 99 C7 29 ;
CODE_29C8EA:    AND #$000F                  ; $29:C8EA: 29 0F 00    ;
CODE_29C8ED:    ASL A                       ; $29:C8ED: 0A          ;
CODE_29C8EE:    TAX                         ; $29:C8EE: AA          ;
CODE_29C8EF:    PHX                         ; $29:C8EF: DA          ;
CODE_29C8F0:    PHB                     ; $29:C8F0: 8B          ;
CODE_29C8F1:    LDA.l PNTR_29C825,x                 ; $29:C8F1: BF 25 C8 29 ;
CODE_29C8F5:    TAX                         ; $29:C8F5: AA          ;
CODE_29C8F6:    LDY #$14A0                  ; $29:C8F6: A0 A0 14    ;
CODE_29C8F9:    LDA #$001F                  ; $29:C8F9: A9 1F 00    ;
CODE_29C8FC:    MVN $00, DATA_3C8BC0>>16    ; $29:C8FC: 54 00 3C    ;first data pointer in above table                 
CODE_29C8FF:    PLB                     ; $29:C8FF: AB          ;
CODE_29C900:    PLX                         ; $29:C900: FA          ;
CODE_29C901:    LDA.l DATA_29C81F,x                 ; $29:C901: BF 1F C8 29 ;
CODE_29C905:    TAX                         ; $29:C905: AA          ;
CODE_29C906:    LDA $1320,x                 ; $29:C906: BD 20 13    ;
CODE_29C909:    BRA CODE_29C90E             ; $29:C909: 80 03       ;

CODE_29C90B:    LDA $1380                   ; $29:C90B: AD 80 13    ;
CODE_29C90E:    STA $02B9                   ; $29:C90E: 8D B9 02    ;
CODE_29C911:    STA $1300                   ; $29:C911: 8D 00 13    ;
CODE_29C914:    AND #$001F                  ; $29:C914: 29 1F 00    ;
CODE_29C917:    ORA #$0020                  ; $29:C917: 09 20 00    ;
CODE_29C91A:    STA $D8                     ; $29:C91A: 85 D8       ;
CODE_29C91C:    LDA $02B9                   ; $29:C91C: AD B9 02    ;
CODE_29C91F:    LSR A                       ; $29:C91F: 4A          ;
CODE_29C920:    LSR A                       ; $29:C920: 4A          ;
CODE_29C921:    LSR A                       ; $29:C921: 4A          ;
CODE_29C922:    LSR A                       ; $29:C922: 4A          ;
CODE_29C923:    LSR A                       ; $29:C923: 4A          ;
CODE_29C924:    AND #$001F                  ; $29:C924: 29 1F 00    ;
CODE_29C927:    ORA #$0040                  ; $29:C927: 09 40 00    ;
CODE_29C92A:    STA $DA                     ; $29:C92A: 85 DA       ;
CODE_29C92C:    LDA $02B9                   ; $29:C92C: AD B9 02    ;
CODE_29C92F:    XBA                         ; $29:C92F: EB          ;
CODE_29C930:    LSR A                       ; $29:C930: 4A          ;
CODE_29C931:    LSR A                       ; $29:C931: 4A          ;
CODE_29C932:    AND #$001F                  ; $29:C932: 29 1F 00    ;
CODE_29C935:    ORA #$0080                  ; $29:C935: 09 80 00    ;
CODE_29C938:    STA $DC                     ; $29:C938: 85 DC       ;
CODE_29C93A:    SEP #$30                    ; $29:C93A: E2 30       ;
CODE_29C93C:    STZ $1300                   ; $29:C93C: 9C 00 13    ;
CODE_29C93F:    STZ $1301                   ; $29:C93F: 9C 01 13    ;
CODE_29C942:    LDA $D8                     ; $29:C942: A5 D8       ;
CODE_29C944:    STA $0205                   ; $29:C944: 8D 05 02    ;
CODE_29C947:    LDA $DA                     ; $29:C947: A5 DA       ;
CODE_29C949:    STA $0206                   ; $29:C949: 8D 06 02    ;
CODE_29C94C:    LDA $DC                     ; $29:C94C: A5 DC       ;
CODE_29C94E:    STA $0207                   ; $29:C94E: 8D 07 02    ;
CODE_29C951:    LDA $0350                   ; $29:C951: AD 50 03    ;
CODE_29C954:    CMP #$03                    ; $29:C954: C9 03       ;
CODE_29C956:    BNE CODE_29C95D             ; $29:C956: D0 05       ;
CODE_29C958:    LDA #$83                    ; $29:C958: A9 83       ;
CODE_29C95A:    STA $0207                   ; $29:C95A: 8D 07 02    ;
CODE_29C95D:    LDA #$01                    ; $29:C95D: A9 01       ;
CODE_29C95F:    STA $1500                   ; $29:C95F: 8D 00 15    ;
CODE_29C962:    RTL                         ; $29:C962: 6B          ;

DATA_29C963:        dw $0000
                    dw $C983
                    dw $C98B
                    dw $C993
                    dw $C99B
                    dw $C9A3
                    dw $C9AB
                    dw $C983
                    dw $C9B3
                    dw $C9BB
                    dw $C9C3
                    dw $C9CB
                    dw $C9D3
                    dw $C9DB
                    dw $C9E3
                    dw $0000
                    dw $9060
                    dw $90A0
                    dw $90E0
                    dw $9120
                    dw $95E0
                    dw $9620
                    dw $9660
                    dw $96A0
                    dw $9B60
                    dw $9BA0
                    dw $9BE0
                    dw $9C20
                    dw $91C0
                    dw $9200
                    dw $9240
                    dw $9280
                    dw $9B60
                    dw $9BA0
                    dw $9BE0
                    dw $9C20
                    dw $9740
                    dw $9780
                    dw $97C0
                    dw $9800
                    dw $9B60
                    dw $9BA0
                    dw $9BE0
                    dw $9C20
                    dw $9320
                    dw $9360
                    dw $93A0
                    dw $93E0
                    dw $98A0
                    dw $98E0
                    dw $9920
                    dw $9960
                    dw $9060
                    dw $90A0
                    dw $90E0
                    dw $9120
                    dw $9A00
                    dw $9A40
                    dw $9A80
                    dw $9AC0
                    dw $91C0
                    dw $9200
                    dw $9240
                    dw $9280
                    dw $9480
                    dw $94C0
                    dw $9500
                    dw $9540

PNTR_29C9EB:        dw DATA_3CA600
                    dw DATA_3CA640
                    dw DATA_3CA680
                    dw DATA_3CA6C0
                    dw DATA_3CA700
                    dw DATA_3CA740
                    dw DATA_3CA780
                    dw DATA_3CA7C0
                    dw DATA_3CA800
                    dw DATA_3CA840
                    dw DATA_3CA880
                    dw DATA_3CA8C0
                    dw DATA_3CA900
                    dw DATA_3CA940
                    dw DATA_3CA700
                    dw DATA_3CA9C0
                    dw DATA_3CAA00
                    dw DATA_3CAA40
                    dw DATA_3CAA80
                    dw DATA_3CAAC0
                    dw DATA_3CAB00
                    dw DATA_3CAB40
                    dw DATA_3CAB80
                    dw DATA_3CABC0
                    dw DATA_3CA980

DATA_29CA1D:        dw $0000
                    dw $0103
                    dw $0403
                    dw $0103
                    dw $0103
                    dw $0103
                    dw $0105
                    dw $000C
                    dw $0109
                    dw $0103
                    dw $0302
                    dw $0103
                    dw $0100
                    dw $0103
                    dw $0000
                    dw $000D
                    dw $0000
                    dw $0000
                    dw $0000
                    dw $0100
                    dw $0100
                    dw $0102
                    dw $060C
                    dw $0403
                    dw $0103
                    dw $0105
                    dw $0403
                    dw $0105
                    dw $0103
                    dw $0403
                    dw $0103
                    dw $0100
                    dw $0100
                    dw $0103
                    dw $0103
                    dw $0103
                    dw $0100
                    dw $0403
                    dw $0100
                    dw $0105
                    dw $0100
                    dw $0100
                    dw $0403
                    dw $0403
                    dw $0403
                    dw $0302
                    dw $0105
                    dw $0103

DATA_29CA7D:        db $08,$08,$07,$07,$08,$08,$08

PNTR_29CA84:        dw DATA_3C8A40
                    dw DATA_3C8A60
                    dw DATA_3C8A80
                    dw DATA_3C8AA0
                    dw DATA_3C8AC0
                    dw DATA_3C8AE0
                    dw DATA_3C8B00
                    dw DATA_3C8B20
                    dw DATA_3C8B40
                    dw DATA_3C8B60
                    dw DATA_3C8B80
                    dw DATA_3C8BA0
                    dw DATA_3C8BC0
                    dw DATA_3C8BE0

CODE_29CAA0:    LDA.l PNTR_29C799,x         ; $29:CAA0: BF 99 C7 29 ;
CODE_29CAA4:    PHB                         ; $29:CAA4: 8B          ;
CODE_29CAA5:    TAX                         ; $29:CAA5: AA          ;
CODE_29CAA6:    LDY #$1360                  ; $29:CAA6: A0 60       ;
CODE_29CAA9:    LDA #$005F                  ; $29:CAA9: A9 5F 00    ;
CODE_29CAAB:    MVN $00, DATA_3C9000>>16    ; $29:CAAB: 54 00 3C    ;first (valid) data pointer in above table                 
CODE_29CAAE:    PLB                     ; $29:CAAE: AB          ;
CODE_29CAB0:    LDA $02BE               ; $29:CAB0: AD BE 02    ;
CODE_29CAB3:    AND #$00FF              ; $29:CAB3: 29 FF 00    ;
CODE_29CAB6:    BEQ CODE_29CACB         ; $29:CAB6: F0 13       ;
CODE_29CAB8:    DEC A                       ; $29:CAB8: 3A          ;
CODE_29CAB9:    ASL A                       ; $29:CAB9: 0A          ;
CODE_29CABA:    TAX                         ; $29:CABA: AA          ;
CODE_29CABB:    PHB                     ; $29:CABB: 8B          ;
CODE_29CABC:    LDA.l PNTR_29C7FF,x                 ; $29:CABC: BF FF C7 29 ;
CODE_29CAC0:    TAX                         ; $29:CAC0: AA          ;
CODE_29CAC1:    LDY #$1310                      ; $29:CAC1: A0 10 13    ;
CODE_29CAC4:    LDA #$000F              ; $29:CAC4: A9 0F 00    ;
CODE_29CAC7:    MVN $00, DATA_3C9C80>>16    ; $29:CAC7: 54 00 3C    ;first data pointer in above table
CODE_29CACA:    PLB                     ; $29:CACA: AB          ;
CODE_29CACB:    LDA $070A               ; $29:CACB: AD 0A 07    ;
CODE_29CACE:    AND #$00FF              ; $29:CACE: 29 FF 00    ;
CODE_29CAD1:    ASL A                   ; $29:CAD1: 0A          ;
CODE_29CAD2:    TAX                     ; $29:CAD2: AA          ;
CODE_29CAD3:    LDA.l DATA_29C963,x                 ; $29:CAD3: BF 63 C9 29 ;
CODE_29CAD7:    STA $00                     ; $29:CAD7: 85 00       ;
CODE_29CAD9:    LDA #$0029                  ; $29:CAD9: A9 29 00    ;
CODE_29CADC:    STA $02                     ; $29:CADC: 85 02       ;
CODE_29CADE:    LDA $073B               ; $29:CADE: AD 3B 07    ;
CODE_29CAE1:    AND #$0003              ; $29:CAE1: 29 03 00    ;
CODE_29CAE4:    ASL A                       ; $29:CAE4: 0A          ;
CODE_29CAE5:    TAY                         ; $29:CAE5: A8          ;
CODE_29CAE6:    LDA [$00],y                 ; $29:CAE6: B7 00       ;
CODE_29CAE8:    PHB                     ; $29:CAE8: 8B          ;                       
CODE_29CAE9:    TAX                         ; $29:CAE9: AA          ;
CODE_29CAEA:    LDA $0350                   ; $29:CAEA: AD 50 03    ;
CODE_29CAED:    AND #$00FF                                      ; $29:CAED: 29 FF 00    ;
CODE_29CAF0:    CMP #$000B              ; $29:CAF0: C9 0B 00    ;
CODE_29CAF3:    BNE CODE_29CAF8         ; $29:CAF3: D0 03       ;
CODE_29CAF5:    LDX.w #DATA_3C94C0      ; $29:CAF5: A2 C0 94    ;
CODE_29CAF8:    LDY #$13C0                      ; $29:CAF8: A0 C0 13    ;
CODE_29CAFB:    LDA #$003F              ; $29:CAFB: A9 3F 00    ;
CODE_29CAFE:    MVN $00, DATA_3C94C0>>16    ; $29:CAFE: 54 00 3C    ;
CODE_29CB01:    PLB                     ; $29:CB01: AB          ;
CODE_29CB02:    LDA $02C5               ; $29:CB02: AD C5 02    ;
CODE_29CB05:    AND #$00FF                      ; $29:CB05: 29 FF 00    ;
CODE_29CB08:    ASL A                   ; $29:CB08: 0A          ;
CODE_29CB09:    TAX                         ; $29:CB09: AA          ;
CODE_29CB0A:    LDA.l PNTR_29C9EB,x                 ; $29:CB0A: BF EB C9 29 ;
CODE_29CB0E:    PHB                     ; $29:CB0E: 8B          ;
CODE_29CB0F:    TAX                         ; $29:CB0F: AA          ;
CODE_29CB10:    LDY #$1320                  ; $29:CB10: A0 20 13    ;
CODE_29CB13:    LDA #$003F                  ; $29:CB13: A9 3F 00    ;
CODE_29CB16:    MVN $00, DATA_3CA600>>16    ; $29:CB16: 54 00 3C    ;first data pointer in above table                 
CODE_29CB19:    PLB                     ; $29:CB19: AB          ;
CODE_29CB1A:    LDA $1EBF                   ; $29:CB1A: AD BF 1E    ;
CODE_29CB1D:    AND #$00FF                  ; $29:CB1D: 29 FF 00    ;
CODE_29CB20:    ASL A                       ; $29:CB20: 0A          ;
CODE_29CB21:    TAX                         ; $29:CB21: AA          ;
CODE_29CB22:    LDA.l DATA_29CA1D,x                 ; $29:CB22: BF 1D CA 29 ;
CODE_29CB26:    AND #$00FF                  ; $29:CB26: 29 FF 00    ;
CODE_29CB29:    ASL A                       ; $29:CB29: 0A          ;
CODE_29CB2A:    STA $D8                     ; $29:CB2A: 85 D8       ;
CODE_29CB2C:    LDA.l DATA_29CA1D+1,x               ; $29:CB2C: BF 1E CA 29 ;
CODE_29CB30:    AND #$00FF                  ; $29:CB30: 29 FF 00    ;
CODE_29CB33:    ASL A                       ; $29:CB33: 0A          ;
CODE_29CB34:    STA $DA                     ; $29:CB34: 85 DA       ;
CODE_29CB36:    LDA $0726                   ; $29:CB36: AD 26 07    ;
CODE_29CB39:    AND #$00FF                  ; $29:CB39: 29 FF 00    ;
CODE_29CB3C:    TAY                         ; $29:CB3C: A8          ;
CODE_29CB3D:    LDA $073D,y                 ; $29:CB3D: B9 3D 07    ;
CODE_29CB40:    AND #$00FF                  ; $29:CB40: 29 FF 00    ;
CODE_29CB43:    BEQ CODE_29CB56             ; $29:CB43: F0 11       ;
CODE_29CB45:    LDA $0727                   ; $29:CB45: AD 27 07    ;
CODE_29CB48:    AND #$00FF                  ; $29:CB48: 29 FF 00    ;
CODE_29CB4B:    TAX                         ; $29:CB4B: AA          ;
CODE_29CB4C:    LDA.l DATA_29CA7D,x                 ; $29:CB4C: BF 7D CA 29 ;
CODE_29CB50:    AND #$00FF                  ; $29:CB50: 29 FF 00    ;
CODE_29CB53:    ASL A                       ; $29:CB53: 0A          ;
CODE_29CB54:    STA $DA                     ; $29:CB54: 85 DA       ;
CODE_29CB56:    LDX $D8                     ; $29:CB56: A6 D8       ;
CODE_29CB58:    LDA.l PNTR_29CA84,x                 ; $29:CB58: BF 84 CA 29 ;
CODE_29CB5C:    TAX                         ; $29:CB5C: AA          ;
CODE_29CB5D:    PHB                         ; $29:CB5D: 8B          ;
CODE_29CB5E:    TAX                         ; $29:CB5E: AA          ;
CODE_29CB5F:    LDY #$14A0                  ; $29:CB5F: A0 A0 14    ;
CODE_29CB62:    LDA #$001F                  ; $29:CB62: A9 1F 00    ;
CODE_29CB65:    MVN $00, DATA_3C8A40>>16    ; $29:CB65: 54 00 3C    ;first data pointer in above table                 
CODE_29CB68:    PLB                     ; $29:CB68: AB          ;
CODE_29CB69:    LDX $DA                     ; $29:CB69: A6 DA       ;
CODE_29CB6B:    LDA.l PNTR_29CA84,x                 ; $29:CB6B: BF 84 CA 29 ;
CODE_29CB6F:    TAX                         ; $29:CB6F: AA          ;
CODE_29CB70:    PHB                     ; $29:CB70: 8B          ;
CODE_29CB71:    TAX                         ; $29:CB71: AA          ;
CODE_29CB72:    LDY #$14C0                  ; $29:CB72: A0 C0 14    ;
CODE_29CB75:    LDA #$001F                  ; $29:CB75: A9 1F 00    ;
CODE_29CB78:    MVN $00, DATA_3C8A40>>16    ; $29:CB78: 54 00 3C    ;first data pointer in above table           
CODE_29CB7B:    BRL CODE_29CC7C             ; $29:CB7B: 82 FE 00    ;

CODE_29CB7E:    PHB                         ; $29:CB7E: 8B          ;
CODE_29CB7F:    LDX.w #DATA_3CA500                  ; $29:CB7F: A2 00 A5    ;
CODE_29CB82:    LDY #$1320                  ; $29:CB82: A0 20 13    ;
CODE_29CB85:    LDA #$00DF                  ; $29:CB85: A9 DF 00    ;
CODE_29CB88:    MVN $00, DATA_3CA500>>16                    ; $29:CB88: 54 00 3C    ;
CODE_29CB8B:    PLB                     ; $29:CB8B: AB          ;
CODE_29CB8C:    LDA $1EBF                   ; $29:CB8C: AD BF 1E    ;
CODE_29CB8F:    AND #$00FF                  ; $29:CB8F: 29 FF 00    ;
CODE_29CB92:    ASL A                       ; $29:CB92: 0A          ;
CODE_29CB93:    TAX                         ; $29:CB93: AA          ;
CODE_29CB94:    LDA.l DATA_29CA1D,x                 ; $29:CB94: BF 1D CA 29 ;
CODE_29CB98:    AND #$00FF                  ; $29:CB98: 29 FF 00    ;
CODE_29CB9B:    ASL A                       ; $29:CB9B: 0A          ;
CODE_29CB9C:    STA $D8                     ; $29:CB9C: 85 D8       ;
CODE_29CB9E:    LDA.l DATA_29CA1D+1,x               ; $29:CB9E: BF 1E CA 29 ;
CODE_29CBA2:    AND #$00FF                  ; $29:CBA2: 29 FF 00    ;
CODE_29CBA5:    ASL A                       ; $29:CBA5: 0A          ;
CODE_29CBA6:    STA $DA                     ; $29:CBA6: 85 DA       ;
CODE_29CBA8:    LDA $0727                   ; $29:CBA8: AD 27 07    ;
CODE_29CBAB:    AND #$00FF                  ; $29:CBAB: 29 FF 00    ;
CODE_29CBAE:    CMP #$0003                  ; $29:CBAE: C9 03 00    ;
CODE_29CBB1:    BEQ CODE_29CBB8             ; $29:CBB1: F0 05       ;
CODE_29CBB3:    CMP #$0004                  ; $29:CBB3: C9 04 00    ;
CODE_29CBB6:    BNE CODE_29CBBD             ; $29:CBB6: D0 05       ;
CODE_29CBB8:    LDA #$0016                  ; $29:CBB8: A9 16 00    ;
CODE_29CBBB:    STA $DA                     ; $29:CBBB: 85 DA       ;
CODE_29CBBD:    BRL CODE_29CB36             ; $29:CBBD: 82 76 FF    ;

CODE_29CBC0:    LDA $0727                   ; $29:CBC0: AD 27 07    ;
CODE_29CBC3:    AND #$00FF                  ; $29:CBC3: 29 FF 00    ;
CODE_29CBC6:    CMP #$0007                  ; $29:CBC6: C9 07 00    ;
CODE_29CBC9:    BNE CODE_29CBEE             ; $29:CBC9: D0 23       ;
CODE_29CBCB:    LDA $0726                   ; $29:CBCB: AD 26 07    ;
CODE_29CBCE:    AND #$00FF                  ; $29:CBCE: 29 FF 00    ;
CODE_29CBD1:    TAX                         ; $29:CBD1: AA          ;
CODE_29CBD2:    LDA $7E3977,x               ; $29:CBD2: BF 77 39 7E ;
CODE_29CBD6:    AND #$00FF                  ; $29:CBD6: 29 FF 00    ;
CODE_29CBD9:    CMP #$0003                  ; $29:CBD9: C9 03 00    ;
CODE_29CBDC:    BNE CODE_29CC13             ; $29:CBDC: D0 35       ;
CODE_29CBDE:    LDA $070A                   ; $29:CBDE: AD 0A 07    ;
CODE_29CBE1:    AND #$00FF                  ; $29:CBE1: 29 FF 00    ;
CODE_29CBE4:    CMP #$0002                  ; $29:CBE4: C9 02 00    ;
CODE_29CBE7:    BNE CODE_29CC13             ; $29:CBE7: D0 2A       ;
CODE_29CBE9:    LDA #$8A20                  ; $29:CBE9: A9 20 8A    ;
CODE_29CBEC:    BRA CODE_29CC07             ; $29:CBEC: 80 19       ;

CODE_29CBEE:    LDA $070A                   ; $29:CBEE: AD 0A 07    ;
CODE_29CBF1:    AND #$00FF                  ; $29:CBF1: 29 FF 00    ;
CODE_29CBF4:    CMP #$000A                  ; $29:CBF4: C9 0A 00    ;
CODE_29CBF7:    BNE CODE_29CC13             ; $29:CBF7: D0 1A       ;
CODE_29CBF9:    LDA $0727                   ; $29:CBF9: AD 27 07    ;
CODE_29CBFC:    AND #$00FF                  ; $29:CBFC: 29 FF 00    ;
CODE_29CBFF:    ASL A                       ; $29:CBFF: 0A          ;
CODE_29CC00:    TAX                         ; $29:CC00: AA          ;
CODE_29CC01:    LDA.l PNTR_29C7D3,x                 ; $29:CC01: BF D3 C7 29 ;
CODE_29CC05:    BEQ CODE_29CC13             ; $29:CC05: F0 0C       ;
CODE_29CC07:    PHB                     ; $29:CC07: 8B          ;
CODE_29CC08:    TAX                         ; $29:CC08: AA          ;
CODE_29CC09:    LDY #$1480                  ; $29:CC09: A0 80 14    ;
CODE_29CC0C:    LDA #$001F                  ; $29:CC0C: A9 1F 00    ;
CODE_29CC0F:    MVN $00, DATA_3C8960>>16    ; $29:CC0F: 54 00 3C    ;first data pointer in above table                 
CODE_29CC12:    PLB                     ; $29:CC12: AB          ;
CODE_29CC13:    RTS                         ; $29:CC13: 60          ;

CODE_29CC14:    PHB                     ; $29:CC14: 8B          ;
CODE_29CC15:    LDX.w #DATA_3CA3A0                  ; $29:CC15: A2 A0 A3    ;
CODE_29CC18:    LDY #$1320                  ; $29:CC18: A0 20 13    ;
CODE_29CC1B:    LDA #$005F                  ; $29:CC1B: A9 5F 00    ;
CODE_29CC1E:    MVN $00, DATA_3CA3A0>>16                    ; $29:CC1E: 54 00 3C    ;
CODE_29CC21:    PLB                     ; $29:CC21: AB          ;
CODE_29CC22:    LDA $0727                   ; $29:CC22: AD 27 07    ;
CODE_29CC25:    AND #$00FF                  ; $29:CC25: 29 FF 00    ;
CODE_29CC28:    CMP #$0004                  ; $29:CC28: C9 04 00    ;
CODE_29CC2B:    BNE CODE_29CC59             ; $29:CC2B: D0 2C       ;
CODE_29CC2D:    LDA $0726                   ; $29:CC2D: AD 26 07    ;
CODE_29CC30:    AND #$00FF                  ; $29:CC30: 29 FF 00    ;
CODE_29CC33:    TAX                         ; $29:CC33: AA          ;
CODE_29CC34:    LDA $7E3977,x               ; $29:CC34: BF 77 39 7E ;
CODE_29CC38:    AND #$00FF                  ; $29:CC38: 29 FF 00    ;
CODE_29CC3B:    BEQ CODE_29CC42             ; $29:CC3B: F0 05       ;
CODE_29CC3D:    LDA #$0009                  ; $29:CC3D: A9 09 00    ;
CODE_29CC40:    BRA CODE_29CC5F             ; $29:CC40: 80 1D       ;

CODE_29CC42:    LDA $0726                   ; $29:CC42: AD 26 07    ;
CODE_29CC45:    AND #$00FF                  ; $29:CC45: 29 FF 00    ;
CODE_29CC48:    TAY                         ; $29:CC48: A8          ;
CODE_29CC49:    LDA $0047,y                 ; $29:CC49: B9 47 00    ;
CODE_29CC4C:    AND #$00FF                  ; $29:CC4C: 29 FF 00    ;
CODE_29CC4F:    CMP #$00E0                  ; $29:CC4F: C9 E0 00    ;
CODE_29CC52:    BCC CODE_29CC59             ; $29:CC52: 90 05       ;
CODE_29CC54:    LDA #$0009                  ; $29:CC54: A9 09 00    ;
CODE_29CC57:    BRA CODE_29CC5F             ; $29:CC57: 80 06       ;

CODE_29CC59:    LDA $0727                   ; $29:CC59: AD 27 07    ;
CODE_29CC5C:    AND #$00FF                  ; $29:CC5C: 29 FF 00    ;
CODE_29CC5F:    ASL A                       ; $29:CC5F: 0A          ;
CODE_29CC60:    TAX                         ; $29:CC60: AA          ;
CODE_29CC61:    LDA.l PNTR_29C7BF,x                 ; $29:CC61: BF BF C7 29 ;
CODE_29CC65:    PHB                         ; $29:CC65: 8B          ;
CODE_29CC66:    TAX                         ; $29:CC66: AA          ;
CODE_29CC67:    LDY #$1380                  ; $29:CC67: A0 80 13    ;
CODE_29CC6A:    LDA #$007F                  ; $29:CC6A: A9 7F 00    ;
CODE_29CC6D:    MVN $00, DATA_3C9E00>>16    ; $29:CC6D: 54 00 3C    ;first data pointer in above table                 
CODE_29CC70:    LDX.w #DATA_3C8C00                  ; $29:CC70: A2 00 8C    ;
CODE_29CC73:    LDY #$14A0                  ; $29:CC73: A0 A0 14    ;
CODE_29CC76:    LDA #$003F                  ; $29:CC76: A9 3F 00    ;
CODE_29CC79:    MVN $00, DATA_3C8C00>>16                    ; $29:CC79: 54 00 3C    ;
CODE_29CC7C:    LDA $0726                   ; $29:CC7C: AD 26 07    ;
CODE_29CC7F:    AND #$0001                  ; $29:CC7F: 29 01 00    ;
CODE_29CC82:    TAX                         ; $29:CC82: AA          ;
CODE_29CC83:    LDA $0747,x                 ; $29:CC83: BD 47 07    ;
CODE_29CC86:    AND #$00FF                  ; $29:CC86: 29 FF 00    ;
CODE_29CC89:    ASL A                       ; $29:CC89: 0A          ;
CODE_29CC8A:    STA $D8                     ; $29:CC8A: 85 D8       ;
CODE_29CC8C:    LDA.l DATA_29C81D,x     ; $29:CC8C: BF 1D C8 29 ;
CODE_29CC90:    AND #$00FF                  ; $29:CC90: 29 FF 00    ;
CODE_29CC93:    ASL A                       ; $29:CC93: 0A          ;
CODE_29CC94:    CLC                         ; $29:CC94: 18          ;
CODE_29CC95:    ADC $D8                     ; $29:CC95: 65 D8       ;
CODE_29CC97:    TAX                         ; $29:CC97: AA          ;
CODE_29CC98:    LDA.l PNTR_29C7E3,x                 ; $29:CC98: BF E3 C7 29 ;
CODE_29CC9C:    TAX                         ; $29:CC9C: AA          ;
CODE_29CC9D:    LDY #$14E0                  ; $29:CC9D: A0 E0 14    ;
CODE_29CCA0:    LDA #$001F                  ; $29:CCA0: A9 1F 00    ;
CODE_29CCA3:    MVN $00, DATA_3C88A0>>16    ; $29:CCA3: 54 00 3C    ;first data pointer in above table                 
CODE_29CCA6:    PLB                     ; $29:CCA6: AB          ;
CODE_29CCA7:    LDX #$0020                  ; $29:CCA7: A2 20 00    ;
CODE_29CCAA:    LDA $14E0,x                 ; $29:CCAA: BD E0 14    ;
CODE_29CCAD:    STA $7FC500,x               ; $29:CCAD: 9F 00 C5 7F ;
CODE_29CCB1:    DEX                         ; $29:CCB1: CA          ;
CODE_29CCB2:    DEX                         ; $29:CCB2: CA          ;
CODE_29CCB3:    BPL CODE_29CCAA             ; $29:CCB3: 10 F5       ;
CODE_29CCB5:    RTS                         ; $29:CCB5: 60          ;

CODE_29CCB6:    PHB                         ; $29:CCB6: 8B          ;
CODE_29CCB7:    LDX.w #DATA_3CA920                  ; $29:CCB7: A2 20 A9    ;
CODE_29CCBA:    LDY #$1340                  ; $29:CCBA: A0 40 13    ;
CODE_29CCBD:    LDA #$001F                  ; $29:CCBD: A9 1F 00    ;
CODE_29CCC0:    MVN $00, DATA_3CA920>>16                    ; $29:CCC0: 54 00 3C    ;
CODE_29CCC3:    LDX.w #DATA_3C96E0                  ; $29:CCC3: A2 E0 96    ;
CODE_29CCC6:    LDY #$1360                  ; $29:CCC6: A0 60 13    ;
CODE_29CCC9:    LDA #$005F                  ; $29:CCC9: A9 5F 00    ;
CODE_29CCCC:    MVN $00, DATA_3C96E0>>16                    ; $29:CCCC: 54 00 3C    ;
CODE_29CCCF:    LDX.w #DATA_3C9780                  ; $29:CCCF: A2 80 97    ;
CODE_29CCD2:    LDY #$13C0                  ; $29:CCD2: A0 C0 13    ;
CODE_29CCD5:    LDA #$003F                  ; $29:CCD5: A9 3F 00    ;
CODE_29CCD8:    MVN $00, DATA_3C9780>>16                    ; $29:CCD8: 54 00 3C    ;
CODE_29CCDB:    LDX.w #DATA_3C8C00                  ; $29:CCDB: A2 00 8C    ;
CODE_29CCDE:    LDY #$14A0                  ; $29:CCDE: A0 A0 14    ;
CODE_29CCE1:    LDA #$003F                  ; $29:CCE1: A9 3F 00    ;
CODE_29CCE4:    MVN $00, DATA_3C8C00>>16                    ; $29:CCE4: 54 00 3C    ;
CODE_29CCE7:    LDX.w #DATA_3C88A0                  ; $29:CCE7: A2 A0 88    ;
CODE_29CCEA:    LDY #$14E0                  ; $29:CCEA: A0 E0 14    ;
CODE_29CCED:    LDA #$001F                  ; $29:CCED: A9 1F 00    ;
CODE_29CCF0:    MVN $00, DATA_3C88A0>>16                    ; $29:CCF0: 54 00 3C    ;
CODE_29CCF3:    STZ $1380                   ; $29:CCF3: 9C 80 13    ;
CODE_29CCF6:    PLB                     ; $29:CCF6: AB          ;
CODE_29CCF7:    RTS                         ; $29:CCF7: 60          ;

CODE_29CCF8:    REP #$30                    ; $29:CCF8: C2 30       ;
CODE_29CCFA:    PHB                         ; $29:CCFA: 8B          ;
CODE_29CCFB:    LDX.w #DATA_3C8800                  ; $29:CCFB: A2 00 88    ;
CODE_29CCFE:    LDY #$1400                  ; $29:CCFE: A0 00 14    ;
CODE_29CD01:    LDA #$009F                  ; $29:CD01: A9 9F 00    ;
CODE_29CD04:    MVN $00, DATA_3C8800>>16                    ; $29:CD04: 54 00 3C    ;
CODE_29CD07:    LDX.w #DATA_3C8BE0                  ; $29:CD07: A2 E0 8B    ;
CODE_29CD0A:    LDY #$14A0                  ; $29:CD0A: A0 A0 14    ;
CODE_29CD0D:    LDA #$001F                  ; $29:CD0D: A9 1F 00    ;
CODE_29CD10:    MVN $00, DATA_3C8BE0>>16                    ; $29:CD10: 54 00 3C    ;
CODE_29CD13:    PLB                     ; $29:CD13: AB          ;
CODE_29CD14:    SEP #$30                    ; $29:CD14: E2 30       ;
CODE_29CD16:    RTS                         ; $29:CD16: 60          ;

DATA_29CD17:        db $BC,$45,$A5,$14,$FF,$7F,$3F,$02
                    db $D8,$01,$36,$01,$FF,$42,$BF,$3A
                    db $9C,$2D,$3F,$5B,$76,$69,$F0,$50
                    db $88,$3C,$36,$01,$D8,$01,$3F,$02

DATA_29CD37:        db $BC,$45,$FF,$7F,$A5,$14,$92,$00
                    db $98,$00,$9F,$00,$5B,$21,$1D,$26
                    db $BE,$36,$2F,$15,$95,$2C,$3A,$41
                    db $DF,$55,$1F,$03,$7A,$02,$D5,$01

DATA_29CD57:        db $BC,$45,$A5,$14,$FF,$7F,$DF,$55
                    db $3A,$41,$95,$2C,$FF,$42,$BF,$3A
                    db $9C,$2D,$3F,$5B,$7F,$21,$D9,$14
                    db $53,$04,$00,$02,$E0,$02,$E0,$03

PNTR_29CD77:        dl $7FC500
                    dl DATA_29CD17
                    dl DATA_29CD37
                    dl DATA_29CD57

CODE_29CD83:    LDY $0553               ; $29:CD83: AC 53 05    ;
CODE_29CD86:    CPY #$01                    ; $29:CD86: C0 01       ;
CODE_29CD88:    BNE CODE_29CD8F             ; $29:CD88: D0 05       ;
CODE_29CD8A:    STZ $02C7                   ; $29:CD8A: 9C C7 02    ;
CODE_29CD8D:    BRA CODE_29CDB2             ; $29:CD8D: 80 23       ;

CODE_29CD8F:    DEC $02C6                   ; $29:CD8F: CE C6 02    ;
CODE_29CD92:    BPL CODE_29CDB2             ; $29:CD92: 10 1E       ;
CODE_29CD94:    LDA #$03                    ; $29:CD94: A9 03       ;
CODE_29CD96:    CPY #$40                    ; $29:CD96: C0 40       ;
CODE_29CD98:    BCS CODE_29CDA2                     ; $29:CD98: B0 08       ;
CODE_29CD9A:    LDA #$06                    ; $29:CD9A: A9 06       ;
CODE_29CD9C:    CPY #$1E                    ; $29:CD9C: C0 1E       ;
CODE_29CD9E:    BCC CODE_29CDA2             ; $29:CD9E: 90 02       ;
CODE_29CDA0:    LDA #$05                    ; $29:CDA0: A9 05       ;
CODE_29CDA2:    STA $02C6                   ; $29:CDA2: 8D C6 02    ;
CODE_29CDA5:    INC $02C7                   ; $29:CDA5: EE C7 02    ;
CODE_29CDA8:    LDA $0553                   ; $29:CDA8: AD 53 05    ;
CODE_29CDAB:    CMP #$05                    ; $29:CDAB: C9 05       ;
CODE_29CDAD:    BCS CODE_29CDB2                     ; $29:CDAD: B0 03       ;
CODE_29CDAF:    STZ $02C7                   ; $29:CDAF: 9C C7 02    ;
CODE_29CDB2:    LDA $02C7                   ; $29:CDB2: AD C7 02    ;
CODE_29CDB5:    AND #$03                    ; $29:CDB5: 29 03       ;
CODE_29CDB7:    STA $D8                     ; $29:CDB7: 85 D8       ;
CODE_29CDB9:    ASL A                       ; $29:CDB9: 0A          ;
CODE_29CDBA:    CLC                         ; $29:CDBA: 18          ;
CODE_29CDBB:    ADC $D8                     ; $29:CDBB: 65 D8       ;
CODE_29CDBD:    TAX                         ; $29:CDBD: AA          ;
CODE_29CDBE:    LDA.l PNTR_29CD77,x                 ; $29:CDBE: BF 77 CD 29 ;
CODE_29CDC2:    STA $0D                     ; $29:CDC2: 85 0D       ;
CODE_29CDC4:    LDA.l PNTR_29CD77+1,x               ; $29:CDC4: BF 78 CD 29 ;
CODE_29CDC8:    STA $0E                     ; $29:CDC8: 85 0E       ;
CODE_29CDCA:    LDA.l PNTR_29CD77+2,x               ; $29:CDCA: BF 79 CD 29 ;
CODE_29CDCE:    STA $0F                     ; $29:CDCE: 85 0F       ;
CODE_29CDD0:    REP #$20                    ; $29:CDD0: C2 20       ;
CODE_29CDD2:    LDY #$1E                    ; $29:CDD2: A0 1E       ;
CODE_29CDD4:    LDA [$0D],y                 ; $29:CDD4: B7 0D       ;
CODE_29CDD6:    STA $14E0,y                 ; $29:CDD6: 99 E0 14    ;
CODE_29CDD9:    DEY                         ; $29:CDD9: 88          ;
CODE_29CDDA:    DEY                         ; $29:CDDA: 88          ;
CODE_29CDDB:    BPL CODE_29CDD4             ; $29:CDDB: 10 F7       ;
CODE_29CDDD:    SEP #$20                    ; $29:CDDD: E2 20       ;
CODE_29CDDF:    LDA #$01                    ; $29:CDDF: A9 01       ;
CODE_29CDE1:    STA $1500                   ; $29:CDE1: 8D 00 15    ;
CODE_29CDE4:    RTL                         ; $29:CDE4: 6B          ;

CODE_29CDE5:    REP #$30                    ; $29:CDE5: C2 30       ;
CODE_29CDE7:    PHB                         ; $29:CDE7: 8B          ;
CODE_29CDE8:    LDX.w #DATA_3C8800                  ; $29:CDE8: A2 00 88    ;
CODE_29CDEB:    LDY #$1400                  ; $29:CDEB: A0 00 14    ;
CODE_29CDEE:    LDA #$009F                  ; $29:CDEE: A9 9F 00    ;
CODE_29CDF1:    MVN $00, DATA_3C8800>>16                    ; $29:CDF1: 54 00 3C    ;
CODE_29CDF4:    LDX.w #DATA_3C8C00                  ; $29:CDF4: A2 00 8C    ;
CODE_29CDF7:    LDY #$14A0                  ; $29:CDF7: A0 A0 14    ;
CODE_29CDFA:    LDA #$003F                  ; $29:CDFA: A9 3F 00    ;
CODE_29CDFD:    MVN $00, DATA_3C8C00>>16                    ; $29:CDFD: 54 00 3C    ;
CODE_29CE00:    LDX.w #DATA_3C88A0                  ; $29:CE00: A2 A0 88    ;
CODE_29CE03:    LDY #$14E0                  ; $29:CE03: A0 E0 14    ;
CODE_29CE06:    LDA #$001F                  ; $29:CE06: A9 1F 00    ;
CODE_29CE09:    MVN $00, DATA_3C88A0>>16                    ; $29:CE09: 54 00 3C    ;
CODE_29CE0C:    PLB                     ; $29:CE0C: AB          ;
CODE_29CE0D:    SEP #$30                    ; $29:CE0D: E2 30       ;
CODE_29CE0F:    RTL                         ; $29:CE0F: 6B          ;

CODE_29CE10:    REP #$30                    ; $29:CE10: C2 30       ;
CODE_29CE12:    LDA $1300                   ; $29:CE12: AD 00 13    ;
CODE_29CE15:    STA $DC                     ; $29:CE15: 85 DC       ;
CODE_29CE17:    AND #$001F                  ; $29:CE17: 29 1F 00    ;
CODE_29CE1A:    ORA #$0020                  ; $29:CE1A: 09 20 00    ;
CODE_29CE1D:    STA $D8                     ; $29:CE1D: 85 D8       ;
CODE_29CE1F:    LDA $DC                     ; $29:CE1F: A5 DC       ;
CODE_29CE21:    LSR A                       ; $29:CE21: 4A          ;
CODE_29CE22:    LSR A                       ; $29:CE22: 4A          ;
CODE_29CE23:    LSR A                       ; $29:CE23: 4A          ;
CODE_29CE24:    LSR A                       ; $29:CE24: 4A          ;
CODE_29CE25:    LSR A                       ; $29:CE25: 4A          ;
CODE_29CE26:    AND #$001F                  ; $29:CE26: 29 1F 00    ;
CODE_29CE29:    ORA #$0040                  ; $29:CE29: 09 40 00    ;
CODE_29CE2C:    STA $DA                     ; $29:CE2C: 85 DA       ;
CODE_29CE2E:    LDA $DC                     ; $29:CE2E: A5 DC       ;
CODE_29CE30:    XBA                         ; $29:CE30: EB          ;
CODE_29CE31:    LSR A                       ; $29:CE31: 4A          ;
CODE_29CE32:    LSR A                       ; $29:CE32: 4A          ;
CODE_29CE33:    AND #$001F                  ; $29:CE33: 29 1F 00    ;
CODE_29CE36:    ORA #$0080                  ; $29:CE36: 09 80 00    ;
CODE_29CE39:    STA $DC                     ; $29:CE39: 85 DC       ;
CODE_29CE3B:    STZ $1300                   ; $29:CE3B: 9C 00 13    ;
CODE_29CE3E:    SEP #$30                    ; $29:CE3E: E2 30       ;
CODE_29CE40:    LDA $D8                     ; $29:CE40: A5 D8       ;
CODE_29CE42:    STA $0205                   ; $29:CE42: 8D 05 02    ;
CODE_29CE45:    LDA $DA                     ; $29:CE45: A5 DA       ;
CODE_29CE47:    STA $0206                   ; $29:CE47: 8D 06 02    ;
CODE_29CE4A:    LDA $DC                     ; $29:CE4A: A5 DC       ;
CODE_29CE4C:    STA $0207                   ; $29:CE4C: 8D 07 02    ;
CODE_29CE4F:    LDA #$01                    ; $29:CE4F: A9 01       ;
CODE_29CE51:    STA $1500                   ; $29:CE51: 8D 00 15    ;
CODE_29CE54:    RTL                         ; $29:CE54: 6B          ;

PNTR_29CE55:        dw DATA_3CAC00
                    dw DATA_3CAD00
                    dw DATA_3CAE00
                    dw DATA_3CAF00
                    dw DATA_3CB000
                    dw DATA_3CB100
                    dw DATA_3CB200
                    dw DATA_3CB300

PNTR_29CE65:        dw DATA_3C88A0
                    dw DATA_3C88A0
                    dw DATA_3C88E0
                    dw DATA_3C88A0
                    dw DATA_3C88C0
                    dw DATA_3C88A0
                    dw DATA_3C8900
                    dw DATA_3C88A0

PNTR_29CE75:        dw $0000
                    dw $0000
                    dw DATA_3C8AE0
                    dw $0000
                    dw $0000
                    dw DATA_3C8A40
                    dw DATA_3C8A40
                    dw $0000

DATA_29CE85:        dw $88E0
                    dw $88E0
                    dw $88E0
                    dw $88E0
                    dw $88C0
                    dw $88E0
                    dw $8900
                    dw $88E0

CODE_29CE95:    REP #$30                    ; $29:CE95: C2 30       ;
CODE_29CE97:    PHB                         ; $29:CE97: 8B          ;
CODE_29CE98:    LDA $4D                     ; $29:CE98: A5 4D       ;
CODE_29CE9A:    AND #$00FF                  ; $29:CE9A: 29 FF 00    ;
CODE_29CE9D:    ASL A                       ; $29:CE9D: 0A          ;
CODE_29CE9E:    TAX                         ; $29:CE9E: AA          ;
CODE_29CE9F:    LDA.l PNTR_29CE55,x                 ; $29:CE9F: BF 55 CE 29 ;
CODE_29CEA3:    TAX                         ; $29:CEA3: AA          ;
CODE_29CEA4:    LDY #$9400                  ; $29:CEA4: A0 00 94    ;
CODE_29CEA7:    LDA #$00FF                  ; $29:CEA7: A9 FF 00    ;
CODE_29CEAA:    MVN $7F, DATA_3CAC00>>16    ; $29:CEAA: 54 7F 3C    ;first data pointer in above table                 
CODE_29CEAD:    LDX.w #DATA_3C8800                  ; $29:CEAD: A2 00 88    ;
CODE_29CEB0:    LDY #$9500                  ; $29:CEB0: A0 00 95    ;
CODE_29CEB3:    LDA #$007F                  ; $29:CEB3: A9 7F 00    ;
CODE_29CEB6:    MVN $7F, DATA_3C8800>>16                    ; $29:CEB6: 54 7F 3C    ;
CODE_29CEB9:    LDX.w #DATA_3C8A20                  ; $29:CEB9: A2 20 8A    ;
CODE_29CEBC:    LDY #$9580                  ; $29:CEBC: A0 80 95    ;
CODE_29CEBF:    LDA #$001F                  ; $29:CEBF: A9 1F 00    ;
CODE_29CEC2:    MVN $7F, DATA_3C8A20>>16                    ; $29:CEC2: 54 7F 3C    ;
CODE_29CEC5:    PLB                     ; $29:CEC5: AB          ;
CODE_29CEC6:    LDA $4D                     ; $29:CEC6: A5 4D       ;
CODE_29CEC8:    AND #$00FF                  ; $29:CEC8: 29 FF 00    ;
CODE_29CECB:    ASL A                       ; $29:CECB: 0A          ;
CODE_29CECC:    TAX                         ; $29:CECC: AA          ;
CODE_29CECD:    LDA.l PNTR_29CE75,x                 ; $29:CECD: BF 75 CE 29 ;
CODE_29CED1:    BEQ CODE_29CEDF             ; $29:CED1: F0 0C       ;
CODE_29CED3:    PHB                         ; $29:CED3: 8B          ;
CODE_29CED4:    TAX                         ; $29:CED4: AA          ;
CODE_29CED5:    LDY #$95A0                  ; $29:CED5: A0 A0 95    ;
CODE_29CED8:    LDA #$001F                  ; $29:CED8: A9 1F 00    ;
CODE_29CEDB:    MVN $7F, DATA_3C8AE0>>16    ; $29:CEDB: 54 7F 3C    ;first (valid) data pointer in above table                 
CODE_29CEDE:    PLB                     ; $29:CEDE: AB          ;
CODE_29CEDF:    LDA $4D                     ; $29:CEDF: A5 4D       ;
CODE_29CEE1:    AND #$00FF                  ; $29:CEE1: 29 FF 00    ;
CODE_29CEE4:    ASL A                       ; $29:CEE4: 0A          ;
CODE_29CEE5:    TAX                         ; $29:CEE5: AA          ;
CODE_29CEE6:    LDA $0726                   ; $29:CEE6: AD 26 07    ;
CODE_29CEE9:    AND #$00FF                  ; $29:CEE9: 29 FF 00    ;
CODE_29CEEC:    BEQ CODE_29CEF4             ; $29:CEEC: F0 06       ;
CODE_29CEEE:    LDA.l DATA_29CE85,x                 ; $29:CEEE: BF 85 CE 29 ;
CODE_29CEF2:    BRA CODE_29CEF8             ; $29:CEF2: 80 04       ;

CODE_29CEF4:    LDA.l PNTR_29CE65,x                 ; $29:CEF4: BF 65 CE 29 ;
CODE_29CEF8:    PHB                         ; $29:CEF8: 8B          ;
CODE_29CEF9:    TAX                         ; $29:CEF9: AA          ;
CODE_29CEFA:    LDY #$95E0                  ; $29:CEFA: A0 E0 95    ;
CODE_29CEFD:    LDA #$001F                  ; $29:CEFD: A9 1F 00    ;
CODE_29CF00:    MVN $7F, DATA_3C88A0>>16    ; $29:CF00: 54 7F 3C    ;first data pointer in above table                 
CODE_29CF03:    PLB                     ; $29:CF03: AB          ;
CODE_29CF04:    LDX #$0000                  ; $29:CF04: A2 00 00    ;
CODE_29CF07:    TXA                         ; $29:CF07: 8A          ;
CODE_29CF08:    STA $1320,x                 ; $29:CF08: 9D 20 13    ;
CODE_29CF0B:    STA $1340,x                 ; $29:CF0B: 9D 40 13    ;
CODE_29CF0E:    STA $1360,x                 ; $29:CF0E: 9D 60 13    ;
CODE_29CF11:    STA $1380,x                 ; $29:CF11: 9D 80 13    ;
CODE_29CF14:    STA $13A0,x                 ; $29:CF14: 9D A0 13    ;
CODE_29CF17:    STA $13C0,x                 ; $29:CF17: 9D C0 13    ;
CODE_29CF1A:    STA $13E0,x                 ; $29:CF1A: 9D E0 13    ;
CODE_29CF1D:    STA $1400,x                 ; $29:CF1D: 9D 00 14    ;
CODE_29CF20:    STA $1420,x                 ; $29:CF20: 9D 20 14    ;
CODE_29CF23:    STA $1440,x                 ; $29:CF23: 9D 40 14    ;
CODE_29CF26:    STA $1460,x                 ; $29:CF26: 9D 60 14    ;
CODE_29CF29:    STA $1480,x                 ; $29:CF29: 9D 80 14    ;
CODE_29CF2C:    STA $14A0,x                 ; $29:CF2C: 9D A0 14    ;
CODE_29CF2F:    STA $14C0,x                 ; $29:CF2F: 9D C0 14    ;
CODE_29CF32:    STA $14E0,x                 ; $29:CF32: 9D E0 14    ;
CODE_29CF35:    INX                         ; $29:CF35: E8          ;
CODE_29CF36:    INX                         ; $29:CF36: E8          ;
CODE_29CF37:    CPX #$0020                  ; $29:CF37: E0 20 00    ;
CODE_29CF3A:    BNE CODE_29CF08             ; $29:CF3A: D0 CC       ;
CODE_29CF3C:    STA $1300                   ; $29:CF3C: 8D 00 13    ;
CODE_29CF3F:    STA $1310                   ; $29:CF3F: 8D 10 13    ;
CODE_29CF42:    STA $1312                   ; $29:CF42: 8D 12 13    ;
CODE_29CF45:    STA $1314                   ; $29:CF45: 8D 14 13    ;
CODE_29CF48:    STA $1316                   ; $29:CF48: 8D 16 13    ;
CODE_29CF4B:    STA $1318                   ; $29:CF4B: 8D 18 13    ;
CODE_29CF4E:    STA $131A                   ; $29:CF4E: 8D 1A 13    ;
CODE_29CF51:    STA $131C                   ; $29:CF51: 8D 1C 13    ;
CODE_29CF54:    STA $131E                   ; $29:CF54: 8D 1E 13    ;
CODE_29CF57:    STZ $02B7                   ; $29:CF57: 9C B7 02    ;
CODE_29CF5A:    SEP #$30                    ; $29:CF5A: E2 30       ;
CODE_29CF5C:    LDA #$01                    ; $29:CF5C: A9 01       ;
CODE_29CF5E:    STA $1500                   ; $29:CF5E: 8D 00 15    ;
CODE_29CF61:    RTL                         ; $29:CF61: 6B          ;

CODE_29CF62:    REP #$30                    ; $29:CF62: C2 30       ;
CODE_29CF64:    PHB                         ; $29:CF64: 8B          ;
CODE_29CF65:    LDX.w #DATA_3CA400                  ; $29:CF65: A2 00 A4    ;
CODE_29CF68:    LDY #$9400                  ; $29:CF68: A0 00 94    ;
CODE_29CF6B:    LDA #$001F                  ; $29:CF6B: A9 1F 00    ;
CODE_29CF6E:    MVN $7F, DATA_3CA400>>16                    ; $29:CF6E: 54 7F 3C    ;
CODE_29CF71:    LDX.w #DATA_3CA480                  ; $29:CF71: A2 80 A4    ;
CODE_29CF74:    LDY #$9480                  ; $29:CF74: A0 80 94    ;
CODE_29CF77:    LDA #$007F                  ; $29:CF77: A9 7F 00    ;
CODE_29CF7A:    MVN $7F, DATA_3CA480>>16                    ; $29:CF7A: 54 7F 3C    ;
CODE_29CF7D:    PLB                     ; $29:CF7D: AB          ;
CODE_29CF7E:    LDX #$0000                  ; $29:CF7E: A2 00 00    ;
CODE_29CF81:    TXA                         ; $29:CF81: 8A          ;
CODE_29CF82:    STA $1300,x                 ; $29:CF82: 9D 00 13    ;
CODE_29CF85:    STA $1380,x                 ; $29:CF85: 9D 80 13    ;
CODE_29CF88:    STA $13A0,x                 ; $29:CF88: 9D A0 13    ;
CODE_29CF8B:    STA $13C0,x                 ; $29:CF8B: 9D C0 13    ;
CODE_29CF8E:    STA $13E0,x                 ; $29:CF8E: 9D E0 13    ;
CODE_29CF91:    INX                         ; $29:CF91: E8          ;
CODE_29CF92:    INX                         ; $29:CF92: E8          ;
CODE_29CF93:    CPX #$0020                  ; $29:CF93: E0 20 00    ;
CODE_29CF96:    BNE CODE_29CF82             ; $29:CF96: D0 EA       ;
CODE_29CF98:    LDA.l DATA_3CA43E                   ; $29:CF98: AF 3E A4 3C ;
CODE_29CF9C:    STA $7F943E                 ; $29:CF9C: 8F 3E 94 7F ;
CODE_29CFA0:    LDA.l DATA_3CA45E                   ; $29:CFA0: AF 5E A4 3C ;
CODE_29CFA4:    STA $7F945E                 ; $29:CFA4: 8F 5E 94 7F ;
CODE_29CFA8:    LDA #$FF00                  ; $29:CFA8: A9 00 FF    ;
CODE_29CFAB:    STA $02B7                   ; $29:CFAB: 8D B7 02    ;
CODE_29CFAE:    SEP #$30                    ; $29:CFAE: E2 30       ;
CODE_29CFB0:    LDA #$01                    ; $29:CFB0: A9 01       ;
CODE_29CFB2:    STA $1500                   ; $29:CFB2: 8D 00 15    ;
CODE_29CFB5:    RTL                         ; $29:CFB5: 6B          ;

CODE_29CFB6:    REP #$30                    ; $29:CFB6: C2 30       ;
CODE_29CFB8:    PHB                         ; $29:CFB8: 8B          ;
CODE_29CFB9:    LDX.w #DATA_3C8840                  ; $29:CFB9: A2 40 88    ;
CODE_29CFBC:    LDY #$9540                  ; $29:CFBC: A0 40 95    ;
CODE_29CFBF:    LDA #$001F                  ; $29:CFBF: A9 1F 00    ;
CODE_29CFC2:    MVN $7F, DATA_3C8840>>16                    ; $29:CFC2: 54 7F 3C    ;
CODE_29CFC5:    PLB                     ; $29:CFC5: AB          ;
CODE_29CFC6:    STZ $02B3                   ; $29:CFC6: 9C B3 02    ;
CODE_29CFC9:    LDA #$0000                  ; $29:CFC9: A9 00 00    ;
CODE_29CFCC:    STA $7F9400                 ; $29:CFCC: 8F 00 94 7F ;
CODE_29CFD0:    SEP #$30                    ; $29:CFD0: E2 30       ;
CODE_29CFD2:    STZ $02B7                   ; $29:CFD2: 9C B7 02    ;
CODE_29CFD5:    RTL                         ; $29:CFD5: 6B          ;

DATA_29CFD6:        db $FF,$FF,$FF,$FF,$FE,$FF,$FF,$FF
                    db $FF,$7F,$FF,$7F,$DF,$7F,$FF,$FB

DATA_29CFE6:        db $7F,$7F,$7F,$7F,$F7,$7D,$BF,$EF
                    db $DF,$7B,$DF,$7B,$BB,$77,$EF,$DD

DATA_29CFF6:        db $77,$77,$77,$77,$DD,$6E,$77,$BB
                    db $B7,$6D,$B7,$6D,$6D,$5B,$DB,$B6

DATA_29D006:        db $5B,$5B,$5B,$5B,$5B,$5B,$5B,$5B
                    db $55,$55,$6B,$AD,$55,$55,$AB,$AA

DATA_29D016:        db $55,$55,$55,$55,$55,$2A,$55,$55
                    db $55,$2A,$55,$2A,$4A,$29,$95,$52

DATA_29D026:        db $25,$25,$25,$25,$92,$24,$25,$49
                    db $49,$12,$49,$12,$22,$11,$89,$44

DATA_29D036:        db $11,$11,$11,$11,$44,$08,$11,$22
                    db $21,$04,$21,$04,$08,$02,$41,$10

DATA_29D046:        db $01,$01,$01,$01,$20,$00,$01,$04
                    db $01,$00,$01,$00,$00,$00,$01,$00

DATA_29D056:        dw $D06A
                    dw $D05A
                    dw $0000
                    dw $FFFF
                    dw $FFE0
                    dw $FFDF
                    dw $FC00
                    dw $FBFF
                    dw $FBE0
                    dw $FBDF
                    dw $0000
                    dw $0001
                    dw $0020
                    dw $0021
                    dw $0400
                    dw $0401
                    dw $0420
                    dw $0421

DATA_29D07A:        dw $8000
                    dw $4000
                    dw $2000
                    dw $1000
                    dw $0800
                    dw $0400
                    dw $0200
                    dw $0100
                    dw $0080
                    dw $0040
                    dw $0020
                    dw $0010
                    dw $0008
                    dw $0004
                    dw $0002
                    dw $0001

CODE_29D09A:    REP #$30                ; $29:D09A: C2 30       ;
CODE_29D09C:    LDX $02B3               ; $29:D09C: AE B3 02    ;
CODE_29D09F:    LDA.l DATA_29D056,x                 ; $29:D09F: BF 56 D0 29 ;
CODE_29D0A3:    STA $D8                     ; $29:D0A3: 85 D8       ;
CODE_29D0A5:    LDA #$0029                  ; $29:D0A5: A9 29 00    ;
CODE_29D0A8:    STA $DA                 ; $29:D0A8: 85 DA       ;
CODE_29D0AA:    LDA $02B5                   ; $29:D0AA: AD B5 02    ;
CODE_29D0AD:    AND #$000F              ; $29:D0AD: 29 0F 00    ;
CODE_29D0B0:    ASL                     ; $29:D0B0: 0A          ;
CODE_29D0B1:    TAX                         ; $29:D0B1: AA          ;
CODE_29D0B2:    LDA.l DATA_29D07A,x                 ; $29:D0B2: BF 7A D0 29 ;
CODE_29D0B6:    STA $DB                     ; $29:D0B6: 85 DB       ;
CODE_29D0B8:    LDX #$0000              ; $29:D0B8: A2 00 00    ;
CODE_29D0BB:    TXY                     ; $29:D0BB: 9B          ;
CODE_29D0BC:    LDA $02B5                   ; $29:D0BC: AD B5 02    ;
CODE_29D0BF:    CMP #$0010                      ; $29:D0BF: C9 10 00    ;
CODE_29D0C2:    BCC CODE_29D0C6         ; $29:D0C2: 90 02       ;
CODE_29D0C4:    INX                     ; $29:D0C4: E8          ;
CODE_29D0C5:    INX                         ; $29:D0C5: E8          ;
CODE_29D0C6:    SEP #$20                    ; $29:D0C6: E2 20       ;
CODE_29D0C8:    PHB                         ; $29:D0C8: 8B          ;
CODE_29D0C9:    LDA #$7F                    ; $29:D0C9: A9 7F       ;
CODE_29D0CB:    PHA                         ; $29:D0CB: 48          ;
CODE_29D0CC:    PLB                     ; $29:D0CC: AB          ; Data bank: RAM $7F
CODE_29D0CD:    REP #$20                    ; $29:D0CD: C2 20       ;
CODE_29D0CF:    LDA.l DATA_29CFD6,x                 ; $29:D0CF: BF D6 CF 29 ;
CODE_29D0D3:    AND $DB                     ; $29:D0D3: 25 DB       ;
CODE_29D0D5:    STA $9600,y                 ; $29:D0D5: 99 00 96    ;
CODE_29D0D8:    LDA.l DATA_29CFE6,x                 ; $29:D0D8: BF E6 CF 29 ;
CODE_29D0DC:    AND $DB                     ; $29:D0DC: 25 DB       ;
CODE_29D0DE:    STA $9608,y                 ; $29:D0DE: 99 08 96    ;
CODE_29D0E1:    LDA.l DATA_29CFF6,x                 ; $29:D0E1: BF F6 CF 29 ;
CODE_29D0E5:    AND $DB                     ; $29:D0E5: 25 DB       ;
CODE_29D0E7:    STA $9610,y                 ; $29:D0E7: 99 10 96    ;
CODE_29D0EA:    LDA.l DATA_29D006,x                 ; $29:D0EA: BF 06 D0 29 ;
CODE_29D0EE:    AND $DB                     ; $29:D0EE: 25 DB       ;
CODE_29D0F0:    STA $9618,y                 ; $29:D0F0: 99 18 96    ;
CODE_29D0F3:    LDA.l DATA_29D016,x                 ; $29:D0F3: BF 16 D0 29 ;
CODE_29D0F7:    AND $DB                     ; $29:D0F7: 25 DB       ;
CODE_29D0F9:    STA $9620,y                 ; $29:D0F9: 99 20 96    ;
CODE_29D0FC:    LDA.l DATA_29D026,x                 ; $29:D0FC: BF 26 D0 29 ;
CODE_29D100:    AND $DB                     ; $29:D100: 25 DB       ;
CODE_29D102:    STA $9628,y                 ; $29:D102: 99 28 96    ;
CODE_29D105:    LDA.l DATA_29D036,x                 ; $29:D105: BF 36 D0 29 ;
CODE_29D109:    AND $DB                     ; $29:D109: 25 DB       ;
CODE_29D10B:    STA $9630,y                 ; $29:D10B: 99 30 96    ;
CODE_29D10E:    LDA.l DATA_29D046,x                 ; $29:D10E: BF 46 D0 29 ;
CODE_29D112:    AND $DB                     ; $29:D112: 25 DB       ;
CODE_29D114:    STA $9638,y                 ; $29:D114: 99 38 96    ;
CODE_29D117:    INX                         ; $29:D117: E8          ;
CODE_29D118:    INX                         ; $29:D118: E8          ;
CODE_29D119:    INX                         ; $29:D119: E8          ;
CODE_29D11A:    INX                         ; $29:D11A: E8          ;
CODE_29D11B:    INY                         ; $29:D11B: C8          ;
CODE_29D11C:    INY                         ; $29:D11C: C8          ;
CODE_29D11D:    CPY #$0008                      ; $29:D11D: C0 08 00    ;
CODE_29D120:    BNE CODE_29D0CF         ; $29:D120: D0 AD       ;
CODE_29D122:    SEP #$20                ; $29:D122: E2 20       ;
CODE_29D124:    PLB                     ; $29:D124: AB          ;
CODE_29D125:    REP #$20                    ; $29:D125: C2 20       ;
CODE_29D127:    LDX #$0000                      ; $29:D127: A2 00 00    ;
CODE_29D12A:    STZ $029A               ; $29:D12A: 9C 9A 02    ;
CODE_29D12D:    STZ $DB                 ; $29:D12D: 64 DB       ;
CODE_29D12F:    STX $029F                   ; $29:D12F: 8E 9F 02    ;
CODE_29D132:    LDA $7F9400,x               ; $29:D132: BF 00 94 7F ;
CODE_29D136:    STA $0299                   ; $29:D136: 8D 99 02    ;
CODE_29D139:    AND #$001F                  ; $29:D139: 29 1F 00    ;
CODE_29D13C:    ASL A                       ; $29:D13C: 0A          ;
CODE_29D13D:    TAX                         ; $29:D13D: AA          ;
CODE_29D13E:    LDA $7F9600,x               ; $29:D13E: BF 00 96 7F ;
CODE_29D142:    BNE CODE_29D149             ; $29:D142: D0 05       ;
CODE_29D144:    LDA #$0002                  ; $29:D144: A9 02 00    ;
CODE_29D147:    STA $DB                     ; $29:D147: 85 DB       ;
CODE_29D149:    LDA $0299                   ; $29:D149: AD 99 02    ;
CODE_29D14C:    AND #$03E0                  ; $29:D14C: 29 E0 03    ;
CODE_29D14F:    LSR A                       ; $29:D14F: 4A          ;
CODE_29D150:    LSR A                       ; $29:D150: 4A          ;
CODE_29D151:    LSR A                       ; $29:D151: 4A          ;
CODE_29D152:    LSR A                       ; $29:D152: 4A          ;
CODE_29D153:    TAX                         ; $29:D153: AA          ;
CODE_29D154:    LDA $7F9600,x               ; $29:D154: BF 00 96 7F ;
CODE_29D158:    BNE CODE_29D15F             ; $29:D158: D0 05       ;
CODE_29D15A:    LDA #$0004                  ; $29:D15A: A9 04 00    ;
CODE_29D15D:    TSB $DB                     ; $29:D15D: 04 DB       ;
CODE_29D15F:    LDA $029A                   ; $29:D15F: AD 9A 02    ;
CODE_29D162:    LSR A                       ; $29:D162: 4A          ;
CODE_29D163:    LSR A                       ; $29:D163: 4A          ;
CODE_29D164:    ASL A                       ; $29:D164: 0A          ;
CODE_29D165:    TAX                         ; $29:D165: AA          ;
CODE_29D166:    LDA $7F9600,x               ; $29:D166: BF 00 96 7F ;
CODE_29D16A:    BNE CODE_29D171             ; $29:D16A: D0 05       ;
CODE_29D16C:    LDA #$0008                  ; $29:D16C: A9 08 00    ;
CODE_29D16F:    TSB $DB                     ; $29:D16F: 04 DB       ;
CODE_29D171:    LDX $029F                   ; $29:D171: AE 9F 02    ;
CODE_29D174:    LDY $DB                     ; $29:D174: A4 DB       ;
CODE_29D176:    LDA $1300,x                 ; $29:D176: BD 00 13    ;
CODE_29D179:    ADC [$D8],y                 ; $29:D179: 77 D8       ;
CODE_29D17B:    STA $1300,x                 ; $29:D17B: 9D 00 13    ;
CODE_29D17E:    INX                         ; $29:D17E: E8          ;
CODE_29D17F:    INX                         ; $29:D17F: E8          ;
CODE_29D180:    TXA                         ; $29:D180: 8A          ;
CODE_29D181:    AND #$FF80                  ; $29:D181: 29 80 FF    ;
CODE_29D184:    BNE CODE_29D189             ; $29:D184: D0 03       ;
CODE_29D186:    LDX #$0080                      ; $29:D186: A2 80 00    ;
CODE_29D189:    TXA                     ; $29:D189: 8A          ;
CODE_29D18A:    AND $02B7                   ; $29:D18A: 2D B7 02    ;
CODE_29D18D:    BNE CODE_29D19C             ; $29:D18D: D0 0D       ;
CODE_29D18F:    TXA                         ; $29:D18F: 8A          ;
CODE_29D190:    AND #$001F                  ; $29:D190: 29 1F 00    ;
CODE_29D193:    BNE CODE_29D12D             ; $29:D193: D0 98       ;
CODE_29D195:    INX                         ; $29:D195: E8          ;
CODE_29D196:    INX                         ; $29:D196: E8          ;
CODE_29D197:    CPX #$0202                      ; $29:D197: E0 02 02    ;
CODE_29D19A:    BNE CODE_29D12D                     ; $29:D19A: D0 91       ;
CODE_29D19C:    INC $02B5               ; $29:D19C: EE B5 02    ;
CODE_29D19F:    LDA $02B5                   ; $29:D19F: AD B5 02    ;
CODE_29D1A2:    CMP #$0020                  ; $29:D1A2: C9 20 00    ;
CODE_29D1A5:    BNE CODE_29D1B3             ; $29:D1A5: D0 0C       ;
CODE_29D1A7:    LDA $02B3                   ; $29:D1A7: AD B3 02    ;
CODE_29D1AA:    EOR #$0002                  ; $29:D1AA: 49 02 00    ;
CODE_29D1AD:    STA $02B3                   ; $29:D1AD: 8D B3 02    ;
CODE_29D1B0:    STZ $02B5                   ; $29:D1B0: 9C B5 02    ;
CODE_29D1B3:    SEP #$30                    ; $29:D1B3: E2 30       ;
CODE_29D1B5:    LDA #$01                    ; $29:D1B5: A9 01       ;
CODE_29D1B7:    STA $1500                   ; $29:D1B7: 8D 00 15    ;
CODE_29D1BA:    RTL                         ; $29:D1BA: 6B          ;

CODE_29D1BB:    REP #$30                    ; $29:D1BB: C2 30       ;
CODE_29D1BD:    LDX #$0002                  ; $29:D1BD: A2 02 00    ;
CODE_29D1C0:    STZ $029A                   ; $29:D1C0: 9C 9A 02    ;
CODE_29D1C3:    STZ $DB                     ; $29:D1C3: 64 DB       ;
CODE_29D1C5:    STX $029F                   ; $29:D1C5: 8E 9F 02    ;
CODE_29D1C8:    LDA $7F9400,x               ; $29:D1C8: BF 00 94 7F ;
CODE_29D1CC:    STA $0299                   ; $29:D1CC: 8D 99 02    ;
CODE_29D1CF:    AND #$001F                  ; $29:D1CF: 29 1F 00    ;
CODE_29D1D2:    ASL A                       ; $29:D1D2: 0A          ;
CODE_29D1D3:    TAX                         ; $29:D1D3: AA          ;
CODE_29D1D4:    LDA $7F9600,x               ; $29:D1D4: BF 00 96 7F ;
CODE_29D1D8:    BNE CODE_29D1DF             ; $29:D1D8: D0 05       ;
CODE_29D1DA:    LDA #$0002                  ; $29:D1DA: A9 02 00    ;
CODE_29D1DD:    STA $DB                     ; $29:D1DD: 85 DB       ;
CODE_29D1DF:    LDA $0299                   ; $29:D1DF: AD 99 02    ;
CODE_29D1E2:    AND #$03E0                  ; $29:D1E2: 29 E0 03    ;
CODE_29D1E5:    LSR A                       ; $29:D1E5: 4A          ;
CODE_29D1E6:    LSR A                       ; $29:D1E6: 4A          ;
CODE_29D1E7:    LSR A                       ; $29:D1E7: 4A          ;
CODE_29D1E8:    LSR A                       ; $29:D1E8: 4A          ;
CODE_29D1E9:    TAX                         ; $29:D1E9: AA          ;
CODE_29D1EA:    LDA $7F9600,x               ; $29:D1EA: BF 00 96 7F ;
CODE_29D1EE:    BNE CODE_29D1F5             ; $29:D1EE: D0 05       ;
CODE_29D1F0:    LDA #$0004                  ; $29:D1F0: A9 04 00    ;
CODE_29D1F3:    TSB $DB                     ; $29:D1F3: 04 DB       ;
CODE_29D1F5:    LDA $029A                   ; $29:D1F5: AD 9A 02    ;
CODE_29D1F8:    LSR A                       ; $29:D1F8: 4A          ;
CODE_29D1F9:    LSR A                       ; $29:D1F9: 4A          ;
CODE_29D1FA:    ASL A                       ; $29:D1FA: 0A          ;
CODE_29D1FB:    TAX                         ; $29:D1FB: AA          ;
CODE_29D1FC:    LDA $7F9600,x               ; $29:D1FC: BF 00 96 7F ;
CODE_29D200:    BNE CODE_29D207             ; $29:D200: D0 05       ;
CODE_29D202:    LDA #$0008                  ; $29:D202: A9 08 00    ;
CODE_29D205:    TSB $DB                     ; $29:D205: 04 DB       ;
CODE_29D207:    LDX $029F                   ; $29:D207: AE 9F 02    ;
CODE_29D20A:    LDY $DB                     ; $29:D20A: A4 DB       ;
CODE_29D20C:    LDA $1300,x                 ; $29:D20C: BD 00 13    ;
CODE_29D20F:    ADC [$D8],y                 ; $29:D20F: 77 D8       ;
CODE_29D211:    STA $1300,x                 ; $29:D211: 9D 00 13    ;
CODE_29D214:    INX                         ; $29:D214: E8          ;
CODE_29D215:    INX                         ; $29:D215: E8          ;
CODE_29D216:    CPX #$0020                  ; $29:D216: E0 20 00    ;
CODE_29D219:    BCC CODE_29D1C3             ; $29:D219: 90 A8       ;
CODE_29D21B:    LDA #$003E                  ; $29:D21B: A9 3E 00    ;
CODE_29D21E:    CPX #$0020                  ; $29:D21E: E0 20 00    ;
CODE_29D221:    BEQ CODE_29D22B             ; $29:D221: F0 08       ;
CODE_29D223:    LDA #$005E                  ; $29:D223: A9 5E 00    ;
CODE_29D226:    CPX #$0040                  ; $29:D226: E0 40 00    ;
CODE_29D229:    BNE CODE_29D22F             ; $29:D229: D0 04       ;
CODE_29D22B:    TAX                         ; $29:D22B: AA          ;
CODE_29D22C:    BRL CODE_29D1C3             ; $29:D22C: 82 94 FF    ;

CODE_29D22F:    SEP #$30                    ; $29:D22F: E2 30       ;
CODE_29D231:    RTL                         ; $29:D231: 6B          ;

CODE_29D232:    REP #$30                    ; $29:D232: C2 30       ;
CODE_29D234:    LDX #$0010                  ; $29:D234: A2 10 00    ;
CODE_29D237:    STZ $029A                   ; $29:D237: 9C 9A 02    ;
CODE_29D23A:    STZ $DB                     ; $29:D23A: 64 DB       ;
CODE_29D23C:    STX $029F                   ; $29:D23C: 8E 9F 02    ;
CODE_29D23F:    LDA $7F9400,x               ; $29:D23F: BF 00 94 7F ;
CODE_29D243:    STA $0299                   ; $29:D243: 8D 99 02    ;
CODE_29D246:    AND #$001F                  ; $29:D246: 29 1F 00    ;
CODE_29D249:    ASL A                       ; $29:D249: 0A          ;
CODE_29D24A:    TAX                         ; $29:D24A: AA          ;
CODE_29D24B:    LDA $7F9600,x               ; $29:D24B: BF 00 96 7F ;
CODE_29D24F:    BNE CODE_29D256             ; $29:D24F: D0 05       ;
CODE_29D251:    LDA #$0002                  ; $29:D251: A9 02 00    ;
CODE_29D254:    STA $DB                     ; $29:D254: 85 DB       ;
CODE_29D256:    LDA $0299                   ; $29:D256: AD 99 02    ;
CODE_29D259:    AND #$03E0                  ; $29:D259: 29 E0 03    ;
CODE_29D25C:    LSR A                       ; $29:D25C: 4A          ;
CODE_29D25D:    LSR A                       ; $29:D25D: 4A          ;
CODE_29D25E:    LSR A                       ; $29:D25E: 4A          ;
CODE_29D25F:    LSR A                       ; $29:D25F: 4A          ;
CODE_29D260:    TAX                         ; $29:D260: AA          ;
CODE_29D261:    LDA $7F9600,x               ; $29:D261: BF 00 96 7F ;
CODE_29D265:    BNE CODE_29D26C             ; $29:D265: D0 05       ;
CODE_29D267:    LDA #$0004                  ; $29:D267: A9 04 00    ;
CODE_29D26A:    TSB $DB                     ; $29:D26A: 04 DB       ;
CODE_29D26C:    LDA $029A                   ; $29:D26C: AD 9A 02    ;
CODE_29D26F:    LSR A                       ; $29:D26F: 4A          ;
CODE_29D270:    LSR A                       ; $29:D270: 4A          ;
CODE_29D271:    ASL A                       ; $29:D271: 0A          ;
CODE_29D272:    TAX                         ; $29:D272: AA          ;
CODE_29D273:    LDA $7F9600,x               ; $29:D273: BF 00 96 7F ;
CODE_29D277:    BNE CODE_29D27E             ; $29:D277: D0 05       ;
CODE_29D279:    LDA #$0008                  ; $29:D279: A9 08 00    ;
CODE_29D27C:    TSB $DB                     ; $29:D27C: 04 DB       ;
CODE_29D27E:    LDX $029F                   ; $29:D27E: AE 9F 02    ;
CODE_29D281:    LDY $DB                     ; $29:D281: A4 DB       ;
CODE_29D283:    LDA $1300,x                 ; $29:D283: BD 00 13    ;
CODE_29D286:    ADC [$D8],y                 ; $29:D286: 77 D8       ;
CODE_29D288:    STA $1300,x                 ; $29:D288: 9D 00 13    ;
CODE_29D28B:    INX                         ; $29:D28B: E8          ;
CODE_29D28C:    INX                         ; $29:D28C: E8          ;
CODE_29D28D:    CPX #$0080                  ; $29:D28D: E0 80 00    ;
CODE_29D290:    BNE CODE_29D23A             ; $29:D290: D0 A8       ;
CODE_29D292:    SEP #$30                    ; $29:D292: E2 30       ;
CODE_29D294:    RTL                         ; $29:D294: 6B          ;

CODE_29D295:    LDA #$0B                    ; $29:D295: A9 0B       ;
CODE_29D297:    STA $101D                   ; $29:D297: 8D 1D 10    ;
CODE_29D29A:    LDA #$04                    ; $29:D29A: A9 04       ;
CODE_29D29C:    STA $101C                   ; $29:D29C: 8D 1C 10    ;
CODE_29D29F:    RTS                         ; $29:D29F: 60          ;

CODE_29D2A0:    LDA $101C                   ; $29:D2A0: AD 1C 10    ;
CODE_29D2A3:    BEQ CODE_29D2A8             ; $29:D2A3: F0 03       ;
CODE_29D2A5:    DEC $101C                   ; $29:D2A5: CE 1C 10    ;
CODE_29D2A8:    LDA $101D                   ; $29:D2A8: AD 1D 10    ;
CODE_29D2AB:    BEQ CODE_29D2CD             ; $29:D2AB: F0 20       ;
CODE_29D2AD:    LDA $101C                   ; $29:D2AD: AD 1C 10    ;
CODE_29D2B0:    BNE CODE_29D2CD             ; $29:D2B0: D0 1B       ;
CODE_29D2B2:    LDA #$04                    ; $29:D2B2: A9 04       ;
CODE_29D2B4:    STA $101C                   ; $29:D2B4: 8D 1C 10    ;
CODE_29D2B7:    DEC $101D                   ; $29:D2B7: CE 1D 10    ;
CODE_29D2BA:    BNE CODE_29D2CD             ; $29:D2BA: D0 11       ;
CODE_29D2BC:    LDA $0727                   ; $29:D2BC: AD 27 07    ;
CODE_29D2BF:    CMP #$06                    ; $29:D2BF: C9 06       ;
CODE_29D2C1:    BNE CODE_29D2CD             ; $29:D2C1: D0 0A       ;
CODE_29D2C3:    LDA #$06                    ; $29:D2C3: A9 06       ;
CODE_29D2C5:    STA $1202                   ; $29:D2C5: 8D 02 12    ;
CODE_29D2C8:    LDA #$78                    ; $29:D2C8: A9 78       ;
CODE_29D2CA:    STA $0711                   ; $29:D2CA: 8D 11 07    ;
CODE_29D2CD:    RTS                         ; $29:D2CD: 60          ;

CODE_29D2CE:    LDA $101E                   ; $29:D2CE: AD 1E 10    ;
CODE_29D2D1:    BNE CODE_29D2D7             ; $29:D2D1: D0 04       ;
CODE_29D2D3:    SEC                         ; $29:D2D3: 38          ;
CODE_29D2D4:    JMP CODE_29D295             ; $29:D2D4: 4C 95 D2    ;

CODE_29D2D7:    RTS                         ; $29:D2D7: 60          ;

CODE_29D2D8:    LDA $101E                   ; $29:D2D8: AD 1E 10    ;
CODE_29D2DB:    BNE CODE_29D2F8             ; $29:D2DB: D0 1B       ;
CODE_29D2DD:    LDA $101C                   ; $29:D2DD: AD 1C 10    ;
CODE_29D2E0:    BEQ CODE_29D2E5             ; $29:D2E0: F0 03       ;
CODE_29D2E2:    DEC $101C                   ; $29:D2E2: CE 1C 10    ;
CODE_29D2E5:    LDA $101D                   ; $29:D2E5: AD 1D 10    ;
CODE_29D2E8:    BEQ CODE_29D2F8             ; $29:D2E8: F0 0E       ;
CODE_29D2EA:    LDA $101C                   ; $29:D2EA: AD 1C 10    ;
CODE_29D2ED:    BNE CODE_29D2F7             ; $29:D2ED: D0 08       ;
CODE_29D2EF:    LDA #$04                    ; $29:D2EF: A9 04       ;
CODE_29D2F1:    STA $101C                   ; $29:D2F1: 8D 1C 10    ;
CODE_29D2F4:    DEC $101D                   ; $29:D2F4: CE 1D 10    ;
CODE_29D2F7:    RTS                         ; $29:D2F7: 60          ;

CODE_29D2F8:    LDA #$00                    ; $29:D2F8: A9 00       ;
CODE_29D2FA:    STA $101E                   ; $29:D2FA: 8D 1E 10    ;
CODE_29D2FD:    RTS                         ; $29:D2FD: 60          ;

PNTR_29D2FE:        dw DATA_29D31A
                    dw DATA_29D32A
                    dw DATA_29D31A
                    dw DATA_29D32A
                    dw DATA_29D33A
                    dw DATA_29D30A

DATA_29D30A:        db $00,$00,$A0,$30,$20,$20,$00,$0C
                    db $00,$00,$A0,$30,$B5,$5A,$52,$4E

DATA_29D31A:        db $00,$00,$E0,$38,$DA,$7F,$9F,$1F
                    db $00,$00,$E0,$38,$B5,$66,$D1,$6E

DATA_29D32A:        db $00,$00,$20,$41,$35,$7B,$D1,$6E
                    db $00,$00,$20,$41,$B5,$66,$4D,$5E

DATA_29D33A:        db $00,$00,$60,$49,$6F,$76,$0B,$5E
                    db $00,$00,$60,$49,$73,$66,$10,$5A

DATA_29D34A:        db $BB,$7F,$4D,$6E,$BB,$7F,$4D,$6E
                    db $44,$45,$00,$0C

CODE_29D356:    PHB                     ; $29:D356: 8B          ;
CODE_29D357:    PHK                     ; $29:D357: 4B          ;
CODE_29D358:    PLB                     ; $29:D358: AB          ;
CODE_29D359:    LDA $0356                   ; $29:D359: AD 56 03    ;
CODE_29D35C:    BNE CODE_29D368             ; $29:D35C: D0 0A       ;
CODE_29D35E:    LDA $0783                   ; $29:D35E: AD 83 07    ;
CODE_29D361:    CMP #$06                    ; $29:D361: C9 06       ;
CODE_29D363:    BCS CODE_29D3AB                     ; $29:D363: B0 46       ;
CODE_29D365:    STZ $0356                   ; $29:D365: 9C 56 03    ;
CODE_29D368:    LDA $0356                   ; $29:D368: AD 56 03    ;
CODE_29D36B:    BNE CODE_29D374             ; $29:D36B: D0 07       ;
CODE_29D36D:    LDA #$45                    ; $29:D36D: A9 45       ;
CODE_29D36F:    STA $1200                   ; $29:D36F: 8D 00 12    ;
CODE_29D372:    LDA #$00                    ; $29:D372: A9 00       ;
CODE_29D374:    ASL A                       ; $29:D374: 0A          ;
CODE_29D375:    AND #$0E                    ; $29:D375: 29 0E       ;
CODE_29D377:    TAX                         ; $29:D377: AA          ;
CODE_29D378:    REP #$20                    ; $29:D378: C2 20       ;
CODE_29D37A:    LDA.w DATA_29D34A,x                 ; $29:D37A: BD 4A D3    ;
CODE_29D37D:    STA $1300                   ; $29:D37D: 8D 00 13    ;
CODE_29D380:    LDA.w PNTR_29D2FE,x                 ; $29:D380: BD FE D2    ;
CODE_29D383:    STA $00                     ; $29:D383: 85 00       ;
CODE_29D385:    LDY #$00                    ; $29:D385: A0 00       ;
CODE_29D387:    TYX                         ; $29:D387: BB          ;
CODE_29D388:    LDA ($00),y                 ; $29:D388: B1 00       ;
CODE_29D38A:    BEQ CODE_29D38F             ; $29:D38A: F0 03       ;
CODE_29D38C:    STA $1310,x                 ; $29:D38C: 9D 10 13    ;
CODE_29D38F:    INX                         ; $29:D38F: E8          ;
CODE_29D390:    INX                         ; $29:D390: E8          ;
CODE_29D391:    INY                         ; $29:D391: C8          ;
CODE_29D392:    INY                         ; $29:D392: C8          ;
CODE_29D393:    TYA                         ; $29:D393: 98          ;
CODE_29D394:    AND #$000F                  ; $29:D394: 29 0F 00    ;
CODE_29D397:    BNE CODE_29D388             ; $29:D397: D0 EF       ;
CODE_29D399:    SEP #$20                    ; $29:D399: E2 20       ;
CODE_29D39B:    INC $1500                   ; $29:D39B: EE 00 15    ;
CODE_29D39E:    INC $0356                   ; $29:D39E: EE 56 03    ;
CODE_29D3A1:    LDA $0356                   ; $29:D3A1: AD 56 03    ;
CODE_29D3A4:    CMP #$06                    ; $29:D3A4: C9 06       ;
CODE_29D3A6:    BNE CODE_29D3AB             ; $29:D3A6: D0 03       ;
CODE_29D3A8:    STZ $0356                   ; $29:D3A8: 9C 56 03    ;
CODE_29D3AB:    PLB                     ; $29:D3AB: AB          ;
CODE_29D3AC:    RTL                         ; $29:D3AC: 6B          ;

DATA_29D3AD:        db $BB,$7F,$00,$0C,$BB,$7F,$14,$7B
                    db $90,$66,$ED,$51,$48,$3D,$C4,$2C
                    db $40,$1C,$00,$0C

CODE_29D3C1:    PHB                         ; $29:D3C1: 8B          ;
CODE_29D3C2:    PHK                         ; $29:D3C2: 4B          ;
CODE_29D3C3:    PLB                     ; $29:D3C3: AB          ;
CODE_29D3C4:    LDA $0356                   ; $29:D3C4: AD 56 03    ;
CODE_29D3C7:    BNE CODE_29D3D8             ; $29:D3C7: D0 0F       ;
CODE_29D3C9:    LDA $07BE                   ; $29:D3C9: AD BE 07    ;
CODE_29D3CC:    BNE CODE_29D401             ; $29:D3CC: D0 33       ;
CODE_29D3CE:    LDA $0783                   ; $29:D3CE: AD 83 07    ;
CODE_29D3D1:    CMP #$05                    ; $29:D3D1: C9 05       ;
CODE_29D3D3:    BCS CODE_29D401                     ; $29:D3D3: B0 2C       ;
CODE_29D3D5:    STZ $0356                   ; $29:D3D5: 9C 56 03    ;
CODE_29D3D8:    LDA $0356                   ; $29:D3D8: AD 56 03    ;
CODE_29D3DB:    BNE CODE_29D3E4             ; $29:D3DB: D0 07       ;
CODE_29D3DD:    LDA #$45                    ; $29:D3DD: A9 45       ;
CODE_29D3DF:    STA $1200                   ; $29:D3DF: 8D 00 12    ;
CODE_29D3E2:    LDA #$00                    ; $29:D3E2: A9 00       ;
CODE_29D3E4:    AND #$FE                    ; $29:D3E4: 29 FE       ;
CODE_29D3E6:    TAX                         ; $29:D3E6: AA          ;
CODE_29D3E7:    REP #$20                    ; $29:D3E7: C2 20       ;
CODE_29D3E9:    LDA.w DATA_29D3AD,x                 ; $29:D3E9: BD AD D3    ;
CODE_29D3EC:    STA $135E                   ; $29:D3EC: 8D 5E 13    ;
CODE_29D3EF:    SEP #$20                    ; $29:D3EF: E2 20       ;
CODE_29D3F1:    INC $1500                   ; $29:D3F1: EE 00 15    ;
CODE_29D3F4:    INC $0356                   ; $29:D3F4: EE 56 03    ;
CODE_29D3F7:    LDA $0356                   ; $29:D3F7: AD 56 03    ;
CODE_29D3FA:    CMP #$14                    ; $29:D3FA: C9 14       ;
CODE_29D3FC:    BNE CODE_29D401             ; $29:D3FC: D0 03       ;
CODE_29D3FE:    STZ $0356                   ; $29:D3FE: 9C 56 03    ;
CODE_29D401:    PLB                     ; $29:D401: AB          ;
CODE_29D402:    RTL                         ; $29:D402: 6B          ;

DATA_29D403:        db $0F,$2A

DATA_29D405:        db $72,$36

DATA_29D407:        db $69,$25,$51,$32
                    db $B4,$3E,$8A,$29,$93,$3A,$F6,$46
                    db $AB,$2D,$D5,$42,$38,$4F,$CC,$31
                    db $93,$3A,$F6,$46,$AB,$2D,$51,$32
                    db $B4,$3E,$8A,$29,$0F,$2A,$72,$36
                    db $69,$25,$CD,$21,$30,$2E,$48,$21

PNTR_29D433:        dw DATA_29D443
                    dw DATA_29D463
                    dw DATA_29D483
                    dw DATA_29D4A3
                    dw DATA_29D4C3
                    dw DATA_29D4E3
                    dw DATA_29D503
                    dw DATA_29D523

DATA_29D443:        db $54,$7F,$C0,$3D,$C0,$3D,$C0,$3D
                    db $C0,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$89,$46,$89,$46
                    db $46,$46,$46,$46,$46,$46,$46,$46

DATA_29D463:        db $54,$7F,$C0,$3D,$C0,$3D,$C0,$3D
                    db $E2,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$89,$46,$AB,$46
                    db $46,$46,$46,$46,$46,$46,$68,$46

DATA_29D483:        db $54,$7F,$C0,$3D,$C0,$3D,$E2,$3D
                    db $E4,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$89,$46,$CD,$46
                    db $46,$46,$68,$46,$68,$46,$8A,$46

DATA_29D4A3:        db $54,$7F,$C0,$3D,$E2,$3D,$E4,$3D
                    db $C0,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$AB,$46,$AB,$46
                    db $68,$46,$8A,$46,$8A,$46,$46,$46

DATA_29D4C3:        db $54,$7F,$E4,$3D,$C0,$3D,$C0,$3D
                    db $C0,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$CD,$46,$89,$46
                    db $8A,$46,$8A,$46,$8A,$46,$46,$46

DATA_29D4E3:        db $54,$7F,$E4,$3D,$C0,$3D,$C0,$3D
                    db $C0,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$AB,$46,$89,$46
                    db $46,$46,$46,$46,$46,$46,$46,$46

DATA_29D503:        db $54,$7F,$C0,$3D,$C0,$3D,$C0,$3D
                    db $C0,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$89,$46,$89,$46
                    db $46,$46,$46,$46,$46,$46,$46,$46

DATA_29D523:        db $54,$7F,$C0,$3D,$C0,$3D,$C0,$3D
                    db $C0,$3D,$20,$3D,$80,$3D,$60,$39
                    db $80,$35,$E3,$39,$89,$46,$89,$46
                    db $46,$46,$46,$46,$46,$46,$46,$46

DATA_29D543:        db $82,$72

DATA_29D545:        db $A5,$72

DATA_29D547:        db $C7,$72

DATA_29D549:        db $0B,$73
                    db $0B,$73,$82,$72,$A5,$72,$C7,$72
                    db $C7,$72,$0B,$73,$82,$72,$A5,$72
                    db $A5,$72,$C7,$72,$0B,$73,$82,$72

DATA_29D563:        db $3F,$1F

DATA_29D565:        db $7F,$3F

DATA_29D567:        db $BF,$5F

DATA_29D569:        db $FF,$7F
                    db $3F,$1F,$3F,$1F,$7F,$3F,$BF,$5F
                    db $3F,$1F,$3F,$1F,$3F,$1F,$7F,$3F
                    db $3F,$1F,$3F,$1F,$3F,$1F,$3F,$1F
                    db $7F,$3F,$3F,$1F,$3F,$1F,$3F,$1F
                    db $FF,$7F,$7F,$3F,$3F,$1F,$3F,$1F
                    db $BF,$5F,$FF,$7F,$7F,$3F,$3F,$1F
                    db $7F,$3F,$BF,$5F,$FF,$7F,$7F,$3F

DATA_29D5A3:        db $00,$00

DATA_29D5A5:        db $00,$00

DATA_29D5A7:        db $0B,$0D

DATA_29D5A9:        db $34,$36

DATA_29D5AB:        db $FF,$73

DATA_29D5AD:        db $05,$04

DATA_29D5AF:        db $08,$10

DATA_29D5B1:        db $F1,$28
                    db $00,$00,$00,$00,$A8,$00,$6E,$1D
                    db $F7,$52,$07,$08,$AF,$20,$92,$1C
                    db $00,$00,$00,$00,$45,$00,$A8,$04
                    db $EF,$31,$4B,$10,$92,$1C,$99,$51
                    db $00,$00,$00,$00,$A8,$00,$6E,$1D
                    db $F7,$52,$07,$08,$AF,$20,$92,$1C

DATA_29D5E3:        db $FF,$FF

DATA_29D5E5:        db $00,$00

DATA_29D5E7:        db $02,$31

DATA_29D5E9:        db $2D,$56

DATA_29D5EB:        db $FC,$7F

DATA_29D5ED:        db $02,$24

DATA_29D5EF:        db $04,$30

DATA_29D5F1:        db $CA,$48
                    db $FF,$FF,$00,$00,$A0,$24,$88,$41
                    db $31,$7F,$02,$2C,$A9,$4C,$D0,$65
                    db $FF,$FF,$00,$00,$40,$18,$E3,$2C
                    db $E9,$61,$87,$3C,$B3,$5D,$79,$72
                    db $FF,$FF,$00,$00,$A0,$24,$88,$41
                    db $31,$7F,$02,$2C,$A9,$4C,$D0,$65

DATA_29D623:        db $CA,$14,$0E,$1D,$52,$21,$97,$29
                    db $EB,$1C,$4E,$29,$B1,$35,$39,$46
                    db $C9,$14,$0D,$1D,$50,$25,$93,$2D
                    db $EA,$1C,$4D,$29,$B0,$35,$37,$46
                    db $C9,$14,$0C,$1D,$4F,$25,$91,$2D
                    db $E9,$1C,$4C,$29,$AF,$35,$35,$46
                    db $C8,$14,$0B,$1D,$4D,$25,$8F,$2D
                    db $E8,$1C,$4B,$29,$AE,$35,$33,$46
                    db $E8,$18,$2A,$21,$6C,$29,$AE,$31
                    db $E7,$1C,$4A,$29,$AD,$35,$31,$46
                    db $C8,$14,$0B,$1D,$4D,$25,$8F,$2D
                    db $E8,$1C,$4B,$29,$AE,$35,$33,$46
                    db $C9,$14,$0C,$1D,$4F,$25,$91,$2D
                    db $E9,$1C,$4C,$29,$AF,$35,$35,$46
                    db $C9,$14,$0D,$1D,$50,$25,$93,$2D
                    db $EA,$1C,$4D,$29,$B0,$35,$37,$46

DATA_29D6A3:        db $CA,$14,$C9,$14,$C9,$14,$C8,$14
                    db $E8,$18,$C8,$14,$C9,$14,$C9,$14

DATA_29D6B3:        db $70,$29,$6F,$29,$6E,$29,$6D,$29
                    db $6C,$29,$6D,$29,$6E,$29,$6F,$29

DATA_29D6C3:        db $B2,$31,$B1,$31,$B0,$31,$AF,$31
                    db $AE,$31,$AF,$31,$B0,$31,$B1,$31

DATA_29D6D3:        db $39,$46,$37,$46,$35,$46,$33,$46
                    db $31,$46,$33,$46,$35,$46,$37,$46

DATA_29D6E3:        db $0E,$1D,$0D,$1D,$0C,$1D,$0B,$1D
                    db $2A,$21,$0B,$1D,$0C,$1D,$0D,$1D

DATA_29D6F3:        db $52,$21,$50,$25,$4F,$25,$4D,$25
                    db $6C,$29,$4D,$25,$4F,$25,$50,$25

DATA_29D703:        db $97,$29,$93,$2D,$91,$2D,$8F,$2D
                    db $AE,$31,$8F,$2D,$91,$2D,$93,$2D

CODE_29D713:    PHB                         ; $29:D713: 8B          ;
CODE_29D714:    PHK                         ; $29:D714: 4B          ;
CODE_29D715:    PLB                     ; $29:D715: AB          ;
CODE_29D716:    LDA $0350                   ; $29:D716: AD 50 03    ;
CODE_29D719:    CMP #$06                    ; $29:D719: C9 06       ;
CODE_29D71B:    BNE CODE_29D74A             ; $29:D71B: D0 2D       ;
CODE_29D71D:    LDA $0356                   ; $29:D71D: AD 56 03    ;
CODE_29D720:    INC A                       ; $29:D720: 1A          ;
CODE_29D721:    STA $0356                   ; $29:D721: 8D 56 03    ;
CODE_29D724:    AND #$38                    ; $29:D724: 29 38       ;
CODE_29D726:    LSR A                       ; $29:D726: 4A          ;
CODE_29D727:    LSR A                       ; $29:D727: 4A          ;
CODE_29D728:    LSR A                       ; $29:D728: 4A          ;
CODE_29D729:    STA $00                     ; $29:D729: 85 00       ;
CODE_29D72B:    ASL A                       ; $29:D72B: 0A          ;
CODE_29D72C:    CLC                         ; $29:D72C: 18          ;
CODE_29D72D:    ADC $00                     ; $29:D72D: 65 00       ;
CODE_29D72F:    ASL A                       ; $29:D72F: 0A          ;
CODE_29D730:    TAX                         ; $29:D730: AA          ;
CODE_29D731:    REP #$20                    ; $29:D731: C2 20       ;
CODE_29D733:    LDA.w DATA_29D403,x                 ; $29:D733: BD 03 D4    ;
CODE_29D736:    STA $132E                   ; $29:D736: 8D 2E 13    ;
CODE_29D739:    LDA.w DATA_29D405,x                 ; $29:D739: BD 05 D4    ;
CODE_29D73C:    STA $1330                   ; $29:D73C: 8D 30 13    ;
CODE_29D73F:    LDA.w DATA_29D407,x                 ; $29:D73F: BD 07 D4    ;
CODE_29D742:    STA $1332                   ; $29:D742: 8D 32 13    ;
CODE_29D745:    SEP #$20                    ; $29:D745: E2 20       ;
CODE_29D747:    INC $1500                   ; $29:D747: EE 00 15    ;
CODE_29D74A:    CMP #$14                    ; $29:D74A: C9 14       ;
CODE_29D74C:    BNE CODE_29D772             ; $29:D74C: D0 24       ;
CODE_29D74E:    INC $0356                   ; $29:D74E: EE 56 03    ;
CODE_29D751:    LDA $0356                   ; $29:D751: AD 56 03    ;
CODE_29D754:    AND #$38                    ; $29:D754: 29 38       ;
CODE_29D756:    LSR A                       ; $29:D756: 4A          ;
CODE_29D757:    LSR A                       ; $29:D757: 4A          ;
CODE_29D758:    TAX                         ; $29:D758: AA          ;
CODE_29D759:    REP #$20                    ; $29:D759: C2 20       ;
CODE_29D75B:    LDA.w PNTR_29D433,x                 ; $29:D75B: BD 33 D4    ;
CODE_29D75E:    STA $00                     ; $29:D75E: 85 00       ;
CODE_29D760:    LDY #$00                    ; $29:D760: A0 00       ;
CODE_29D762:    LDA ($00),y                 ; $29:D762: B1 00       ;
CODE_29D764:    STA $1340,y                 ; $29:D764: 99 40 13    ;
CODE_29D767:    INY                         ; $29:D767: C8          ;
CODE_29D768:    INY                         ; $29:D768: C8          ;
CODE_29D769:    CPY #$20                    ; $29:D769: C0 20       ;
CODE_29D76B:    BNE CODE_29D762             ; $29:D76B: D0 F5       ;
CODE_29D76D:    SEP #$20                    ; $29:D76D: E2 20       ;
CODE_29D76F:    INC $1500                   ; $29:D76F: EE 00 15    ;
CODE_29D772:    CMP #$16                    ; $29:D772: C9 16       ;
CODE_29D774:    BEQ CODE_29D77A             ; $29:D774: F0 04       ;
CODE_29D776:    CMP #$1E                    ; $29:D776: C9 1E       ;
CODE_29D778:    BNE CODE_29D7A5             ; $29:D778: D0 2B       ;
CODE_29D77A:    INC $0356                   ; $29:D77A: EE 56 03    ;
CODE_29D77D:    LDA $0356                   ; $29:D77D: AD 56 03    ;
CODE_29D780:    AND #$18                    ; $29:D780: 29 18       ;
CODE_29D782:    TAY                         ; $29:D782: A8          ;
CODE_29D783:    LSR A                       ; $29:D783: 4A          ;
CODE_29D784:    LSR A                       ; $29:D784: 4A          ;
CODE_29D785:    TAX                         ; $29:D785: AA          ;
CODE_29D786:    REP #$20                    ; $29:D786: C2 20       ;
CODE_29D788:    LDA DATA_29D543,y                   ; $29:D788: B9 43 D5    ;
CODE_29D78B:    STA $1330                   ; $29:D78B: 8D 30 13    ;
CODE_29D78E:    LDA DATA_29D545,y                   ; $29:D78E: B9 45 D5    ;
CODE_29D791:    STA $1332                   ; $29:D791: 8D 32 13    ;
CODE_29D794:    LDA DATA_29D547,y                   ; $29:D794: B9 47 D5    ;
CODE_29D797:    STA $1334                   ; $29:D797: 8D 34 13    ;
CODE_29D79A:    LDA DATA_29D549,y                   ; $29:D79A: B9 49 D5    ;
CODE_29D79D:    STA $1336                   ; $29:D79D: 8D 36 13    ;
CODE_29D7A0:    SEP #$20                    ; $29:D7A0: E2 20       ;
CODE_29D7A2:    INC $1500                   ; $29:D7A2: EE 00 15    ;
CODE_29D7A5:    CMP #$17                    ; $29:D7A5: C9 17       ;
CODE_29D7A7:    BNE CODE_29D7D1             ; $29:D7A7: D0 28       ;
CODE_29D7A9:    INC $0356                   ; $29:D7A9: EE 56 03    ;
CODE_29D7AC:    LDA $0356                   ; $29:D7AC: AD 56 03    ;
CODE_29D7AF:    AND #$38                    ; $29:D7AF: 29 38       ;
CODE_29D7B1:    TAY                         ; $29:D7B1: A8          ;
CODE_29D7B2:    REP #$20                    ; $29:D7B2: C2 20       ;
CODE_29D7B4:    LDA DATA_29D563,y                   ; $29:D7B4: B9 63 D5    ;
CODE_29D7B7:    STA $134E                   ; $29:D7B7: 8D 4E 13    ;
CODE_29D7BA:    LDA DATA_29D565,y                   ; $29:D7BA: B9 65 D5    ;
CODE_29D7BD:    STA $1350                   ; $29:D7BD: 8D 50 13    ;
CODE_29D7C0:    LDA DATA_29D567,y                   ; $29:D7C0: B9 67 D5    ;
CODE_29D7C3:    STA $1352                   ; $29:D7C3: 8D 52 13    ;
CODE_29D7C6:    LDA DATA_29D569,y                   ; $29:D7C6: B9 69 D5    ;
CODE_29D7C9:    STA $1354                   ; $29:D7C9: 8D 54 13    ;
CODE_29D7CC:    SEP #$20                    ; $29:D7CC: E2 20       ;
CODE_29D7CE:    INC $1500                   ; $29:D7CE: EE 00 15    ;
CODE_29D7D1:    CMP #$1C                    ; $29:D7D1: C9 1C       ;
CODE_29D7D3:    BNE CODE_29D815             ; $29:D7D3: D0 40       ;
CODE_29D7D5:    INC $0356                   ; $29:D7D5: EE 56 03    ;
CODE_29D7D8:    LDA $0356                   ; $29:D7D8: AD 56 03    ;
CODE_29D7DB:    AND #$30                    ; $29:D7DB: 29 30       ;
CODE_29D7DD:    TAY                         ; $29:D7DD: A8          ;
CODE_29D7DE:    REP #$20                    ; $29:D7DE: C2 20       ;
CODE_29D7E0:    LDA DATA_29D5A3,y                   ; $29:D7E0: B9 A3 D5    ;
CODE_29D7E3:    STA $1350                   ; $29:D7E3: 8D 50 13    ;
CODE_29D7E6:    LDA DATA_29D5A5,y                   ; $29:D7E6: B9 A5 D5    ;
CODE_29D7E9:    STA $1352                   ; $29:D7E9: 8D 52 13    ;
CODE_29D7EC:    LDA DATA_29D5A7,y                   ; $29:D7EC: B9 A7 D5    ;
CODE_29D7EF:    STA $1354                   ; $29:D7EF: 8D 54 13    ;
CODE_29D7F2:    LDA DATA_29D5A9,y                   ; $29:D7F2: B9 A9 D5    ;
CODE_29D7F5:    STA $1356                   ; $29:D7F5: 8D 56 13    ;
CODE_29D7F8:    LDA DATA_29D5AB,y                   ; $29:D7F8: B9 AB D5    ;
CODE_29D7FB:    STA $1358                   ; $29:D7FB: 8D 58 13    ;
CODE_29D7FE:    LDA DATA_29D5AD,y                   ; $29:D7FE: B9 AD D5    ;
CODE_29D801:    STA $135A                   ; $29:D801: 8D 5A 13    ;
CODE_29D804:    LDA DATA_29D5AF,y                   ; $29:D804: B9 AF D5    ;
CODE_29D807:    STA $135C                   ; $29:D807: 8D 5C 13    ;
CODE_29D80A:    LDA DATA_29D5B1,y                   ; $29:D80A: B9 B1 D5    ;
CODE_29D80D:    STA $135E                   ; $29:D80D: 8D 5E 13    ;
CODE_29D810:    SEP #$20                    ; $29:D810: E2 20       ;
CODE_29D812:    INC $1500                   ; $29:D812: EE 00 15    ;
CODE_29D815:    CMP #$1D                    ; $29:D815: C9 1D       ;
CODE_29D817:    BNE CODE_29D859             ; $29:D817: D0 40       ;
CODE_29D819:    INC $0356                   ; $29:D819: EE 56 03    ;
CODE_29D81C:    LDA $0356                   ; $29:D81C: AD 56 03    ;
CODE_29D81F:    AND #$30                    ; $29:D81F: 29 30       ;
CODE_29D821:    TAY                         ; $29:D821: A8          ;
CODE_29D822:    REP #$20                    ; $29:D822: C2 20       ;
CODE_29D824:    LDA DATA_29D5E3,y                   ; $29:D824: B9 E3 D5    ;
CODE_29D827:    STA $1342                   ; $29:D827: 8D 42 13    ;
CODE_29D82A:    LDA DATA_29D5E5,y                   ; $29:D82A: B9 E5 D5    ;
CODE_29D82D:    STA $1344                   ; $29:D82D: 8D 44 13    ;
CODE_29D830:    LDA DATA_29D5E7,y                   ; $29:D830: B9 E7 D5    ;
CODE_29D833:    STA $1346                   ; $29:D833: 8D 46 13    ;
CODE_29D836:    LDA DATA_29D5E9,y                   ; $29:D836: B9 E9 D5    ;
CODE_29D839:    STA $1348                   ; $29:D839: 8D 48 13    ;
CODE_29D83C:    LDA DATA_29D5EB,y                   ; $29:D83C: B9 EB D5    ;
CODE_29D83F:    STA $134A                   ; $29:D83F: 8D 4A 13    ;
CODE_29D842:    LDA DATA_29D5ED,y                   ; $29:D842: B9 ED D5    ;
CODE_29D845:    STA $134C                   ; $29:D845: 8D 4C 13    ;
CODE_29D848:    LDA DATA_29D5EF,y                   ; $29:D848: B9 EF D5    ;
CODE_29D84B:    STA $134E                   ; $29:D84B: 8D 4E 13    ;
CODE_29D84E:    LDA DATA_29D5F1,y                   ; $29:D84E: B9 F1 D5    ;
CODE_29D851:    STA $1350                   ; $29:D851: 8D 50 13    ;
CODE_29D854:    SEP #$20                    ; $29:D854: E2 20       ;
CODE_29D856:    INC $1500                   ; $29:D856: EE 00 15    ;
CODE_29D859:    CMP #$1F                    ; $29:D859: C9 1F       ;
CODE_29D85B:    BNE CODE_29D8AD             ; $29:D85B: D0 50       ;
CODE_29D85D:    INC $0356                   ; $29:D85D: EE 56 03    ;
CODE_29D860:    LDA $0356                   ; $29:D860: AD 56 03    ;
CODE_29D863:    AND #$38                    ; $29:D863: 29 38       ;
CODE_29D865:    LSR A                       ; $29:D865: 4A          ;
CODE_29D866:    LSR A                       ; $29:D866: 4A          ;
CODE_29D867:    TAX                         ; $29:D867: AA          ;
CODE_29D868:    ASL A                       ; $29:D868: 0A          ;
CODE_29D869:    ASL A                       ; $29:D869: 0A          ;
CODE_29D86A:    ASL A                       ; $29:D86A: 0A          ;
CODE_29D86B:    TAY                         ; $29:D86B: A8          ;
CODE_29D86C:    REP #$20                    ; $29:D86C: C2 20       ;
CODE_29D86E:    LDA.w DATA_29D6A3,x                 ; $29:D86E: BD A3 D6    ;
CODE_29D871:    STA $1342                   ; $29:D871: 8D 42 13    ;
CODE_29D874:    LDA.w DATA_29D6B3,x                 ; $29:D874: BD B3 D6    ;
CODE_29D877:    STA $134E                   ; $29:D877: 8D 4E 13    ;
CODE_29D87A:    LDA.w DATA_29D6C3,x                 ; $29:D87A: BD C3 D6    ;
CODE_29D87D:    STA $1350                   ; $29:D87D: 8D 50 13    ;
CODE_29D880:    LDA.w DATA_29D6D3,x                 ; $29:D880: BD D3 D6    ;
CODE_29D883:    STA $1358                   ; $29:D883: 8D 58 13    ;
CODE_29D886:    LDA.w DATA_29D6E3,x                 ; $29:D886: BD E3 D6    ;
CODE_29D889:    STA $135A                   ; $29:D889: 8D 5A 13    ;
CODE_29D88C:    LDA.w DATA_29D6F3,x                 ; $29:D88C: BD F3 D6    ;
CODE_29D88F:    STA $135C                   ; $29:D88F: 8D 5C 13    ;
CODE_29D892:    LDA.w DATA_29D703,x                 ; $29:D892: BD 03 D7    ;
CODE_29D895:    STA $135E                   ; $29:D895: 8D 5E 13    ;
CODE_29D898:    LDX #$00                    ; $29:D898: A2 00       ;
CODE_29D89A:    LDA DATA_29D623,y                   ; $29:D89A: B9 23 D6    ;
CODE_29D89D:    STA $132A,x                 ; $29:D89D: 9D 2A 13    ;
CODE_29D8A0:    INX                         ; $29:D8A0: E8          ;
CODE_29D8A1:    INX                         ; $29:D8A1: E8          ;
CODE_29D8A2:    INY                         ; $29:D8A2: C8          ;
CODE_29D8A3:    INY                         ; $29:D8A3: C8          ;
CODE_29D8A4:    CPX #$10                    ; $29:D8A4: E0 10       ;
CODE_29D8A6:    BNE CODE_29D89A             ; $29:D8A6: D0 F2       ;
CODE_29D8A8:    SEP #$20                    ; $29:D8A8: E2 20       ;
CODE_29D8AA:    INC $1500                   ; $29:D8AA: EE 00 15    ;
CODE_29D8AD:    PLB                     ; $29:D8AD: AB          ;
CODE_29D8AE:    RTL                         ; $29:D8AE: 6B          ;

DATA_29D8AF:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF

CODE_29D8E0:    LDA $0423               ; $29:D8E0: AD 23 04    ;
CODE_29D8E3:    BEQ CODE_29D8E8             ; $29:D8E3: F0 03       ;
CODE_29D8E5:    JSR CODE_29DE9E             ; $29:D8E5: 20 9E DE    ;
CODE_29D8E8:    LDA $05F2                   ; $29:D8E8: AD F2 05    ;
CODE_29D8EB:    BEQ CODE_29D8F2             ; $29:D8EB: F0 05       ;
CODE_29D8ED:    LDA #$02                    ; $29:D8ED: A9 02       ;
CODE_29D8EF:    STA $0556                   ; $29:D8EF: 8D 56 05    ;
CODE_29D8F2:    JSR CODE_29D8F6             ; $29:D8F2: 20 F6 D8    ;
CODE_29D8F5:    RTL                         ; $29:D8F5: 6B          ;

CODE_29D8F6:    LDA $041C                   ; $29:D8F6: AD 1C 04    ;
CODE_29D8F9:    JSL CODE_20FB1F         ; $29:D8F9: 22 1F FB 20 ; ExecutePtrShort

PNTR_29D8FD:        dw CODE_29D907
                    dw CODE_29D93D
                    dw CODE_29D988
                    dw CODE_29D98C
                    dw CODE_29DAF5
  
CODE_29D907:    LDA #$0F                    ; $29:D907: A9 0F       ;
CODE_29D909:    STA $0419                   ; $29:D909: 8D 19 04    ;
CODE_29D90C:    LDA #$00                    ; $29:D90C: A9 00       ;
CODE_29D90E:    STA $041F                   ; $29:D90E: 8D 1F 04    ;
CODE_29D911:    LDX $070A                   ; $29:D911: AE 0A 07    ;
CODE_29D914:    CPX #$07                    ; $29:D914: E0 07       ;
CODE_29D916:    BEQ CODE_29D91B             ; $29:D916: F0 03       ;
CODE_29D918:    STA $041D                   ; $29:D918: 8D 1D 04    ;
CODE_29D91B:    LDA #$48                    ; $29:D91B: A9 48       ;
CODE_29D91D:    STA $041E                   ; $29:D91D: 8D 1E 04    ;
CODE_29D920:    LDX #$00                    ; $29:D920: A2 00       ;
CODE_29D922:    STX $041B                   ; $29:D922: 8E 1B 04    ;
CODE_29D925:    INC $041C                   ; $29:D925: EE 1C 04    ;
CODE_29D928:    LDA $05F2                   ; $29:D928: AD F2 05    ;
CODE_29D92B:    BEQ CODE_29D93C             ; $29:D92B: F0 0F       ;
CODE_29D92D:    LDA $041D                   ; $29:D92D: AD 1D 04    ;
CODE_29D930:    LDX $0726                   ; $29:D930: AE 26 07    ;
CODE_29D933:    BEQ CODE_29D938             ; $29:D933: F0 03       ;
CODE_29D935:    CLC                         ; $29:D935: 18          ;
CODE_29D936:    ADC #$23                    ; $29:D936: 69 23       ;
CODE_29D938:    TAX                         ; $29:D938: AA          ;
CODE_29D939:    LDA $1D80,x                 ; $29:D939: BD 80 1D    ;
CODE_29D93C:    RTS                         ; $29:D93C: 60          ;

CODE_29D93D:    LDX $1600                   ; $29:D93D: AE 00 16    ;
CODE_29D940:    LDA $0419                   ; $29:D940: AD 19 04    ;
CODE_29D943:    STA $1602,x                 ; $29:D943: 9D 02 16    ;
CODE_29D946:    LDY $041B                   ; $29:D946: AC 1B 04    ;
CODE_29D949:    LDA.w DATA_21EDED,y                 ; $29:D949: B9 ED ED    ;
CODE_29D94C:    STA $1603,x                 ; $29:D94C: 9D 03 16    ;
CODE_29D94F:    LDA #$40                    ; $29:D94F: A9 40       ;
CODE_29D951:    STA $1604,x                 ; $29:D951: 9D 04 16    ;
CODE_29D954:    LDA #$3E                    ; $29:D954: A9 3E       ;
CODE_29D956:    STA $1605,x                 ; $29:D956: 9D 05 16    ;
CODE_29D959:    LDA #$AE                    ; $29:D959: A9 AE       ;
CODE_29D95B:    STA $1606,x                 ; $29:D95B: 9D 06 16    ;
CODE_29D95E:    LDA #$02                    ; $29:D95E: A9 02       ;
CODE_29D960:    STA $1607,x                 ; $29:D960: 9D 07 16    ;
CODE_29D963:    LDA #$FF                    ; $29:D963: A9 FF       ;
CODE_29D965:    STA $1608,x                 ; $29:D965: 9D 08 16    ;
CODE_29D968:    LDA $1600                   ; $29:D968: AD 00 16    ;
CODE_29D96B:    CLC                         ; $29:D96B: 18          ;
CODE_29D96C:    ADC #$06                    ; $29:D96C: 69 06       ;
CODE_29D96E:    STA $1600                   ; $29:D96E: 8D 00 16    ;
CODE_29D971:    INY                         ; $29:D971: C8          ;
CODE_29D972:    TYA                         ; $29:D972: 98          ;
CODE_29D973:    AND #$03                    ; $29:D973: 29 03       ;
CODE_29D975:    STA $041B                   ; $29:D975: 8D 1B 04    ;
CODE_29D978:    BNE CODE_29D987             ; $29:D978: D0 0D       ;
CODE_29D97A:    LDX $05F2                   ; $29:D97A: AE F2 05    ;
CODE_29D97D:    BEQ CODE_29D981             ; $29:D97D: F0 02       ;
CODE_29D97F:    LDA #$08                    ; $29:D97F: A9 08       ;
CODE_29D981:    STA $041B                   ; $29:D981: 8D 1B 04    ;
CODE_29D984:    INC $041C                   ; $29:D984: EE 1C 04    ;
CODE_29D987:    RTS                         ; $29:D987: 60          ;

CODE_29D988:    INC $041C                   ; $29:D988: EE 1C 04    ;
CODE_29D98B:    RTS                         ; $29:D98B: 60          ;

CODE_29D98C:    LDA $05F2                   ; $29:D98C: AD F2 05    ;
CODE_29D98F:    ASL A                       ; $29:D98F: 0A          ;
CODE_29D990:    TAX                         ; $29:D990: AA          ;
CODE_29D991:    LDA.w DATA_21EDF1,x                 ; $29:D991: BD F1 ED    ;
CODE_29D994:    STA $0D                     ; $29:D994: 85 0D       ;
CODE_29D996:    LDA.w DATA_21EDF1+1,x                   ; $29:D996: BD F2 ED    ;
CODE_29D999:    STA $0E                     ; $29:D999: 85 0E       ;
CODE_29D99B:    LDA #$22                    ; $29:D99B: A9 22       ;
CODE_29D99D:    STA $0F                     ; $29:D99D: 85 0F       ;
CODE_29D99F:    REP #$30                    ; $29:D99F: C2 30       ;
CODE_29D9A1:    LDA $041B                   ; $29:D9A1: AD 1B 04    ;
CODE_29D9A4:    AND #$00FF                  ; $29:D9A4: 29 FF 00    ;
CODE_29D9A7:    ASL A                       ; $29:D9A7: 0A          ;
CODE_29D9A8:    TAY                         ; $29:D9A8: A8          ;
CODE_29D9A9:    LDA.w DATA_21EE15,y                 ; $29:D9A9: B9 15 EE    ;
CODE_29D9AC:    STA $0B                     ; $29:D9AC: 85 0B       ;
CODE_29D9AE:    LDA.w DATA_21EDF5,y                 ; $29:D9AE: B9 F5 ED    ;
CODE_29D9B1:    TAY                         ; $29:D9B1: A8          ;
CODE_29D9B2:    LDX $1600                   ; $29:D9B2: AE 00 16    ;
CODE_29D9B5:    STX $08                     ; $29:D9B5: 86 08       ;
CODE_29D9B7:    LDA [$0D],y                 ; $29:D9B7: B7 0D       ;
CODE_29D9B9:    STA $1602,x                 ; $29:D9B9: 9D 02 16    ;
CODE_29D9BC:    INX                         ; $29:D9BC: E8          ;
CODE_29D9BD:    INY                         ; $29:D9BD: C8          ;
CODE_29D9BE:    CPY $0B                     ; $29:D9BE: C4 0B       ;
CODE_29D9C0:    BNE CODE_29D9B7             ; $29:D9C0: D0 F5       ;
CODE_29D9C2:    SEP #$30                    ; $29:D9C2: E2 30       ;
CODE_29D9C4:    LDA $1600                   ; $29:D9C4: AD 00 16    ;
CODE_29D9C7:    CLC                         ; $29:D9C7: 18          ;
CODE_29D9C8:    ADC #$16                    ; $29:D9C8: 69 16       ;
CODE_29D9CA:    STA $0C                     ; $29:D9CA: 85 0C       ;
CODE_29D9CC:    DEX                         ; $29:D9CC: CA          ;
CODE_29D9CD:    STX $1600                   ; $29:D9CD: 8E 00 16    ;
CODE_29D9D0:    LDA $041B                   ; $29:D9D0: AD 1B 04    ;
CODE_29D9D3:    AND #$07                    ; $29:D9D3: 29 07       ;
CODE_29D9D5:    TAX                         ; $29:D9D5: AA          ;
CODE_29D9D6:    DEX                         ; $29:D9D6: CA          ;
CODE_29D9D7:    SEC                         ; $29:D9D7: 38          ;
CODE_29D9D8:    SBC #$04                    ; $29:D9D8: E9 04       ;
CODE_29D9DA:    CMP #$02                    ; $29:D9DA: C9 02       ;
CODE_29D9DC:    BCS CODE_29D9E1                     ; $29:D9DC: B0 03       ;
CODE_29D9DE:    JSR CODE_29D9FD             ; $29:D9DE: 20 FD D9    ;
CODE_29D9E1:    JSR CODE_29DA81             ; $29:D9E1: 20 81 DA    ;
CODE_29D9E4:    INC $041B                   ; $29:D9E4: EE 1B 04    ;
CODE_29D9E7:    LDA $041B                   ; $29:D9E7: AD 1B 04    ;
CODE_29D9EA:    AND #$07                    ; $29:D9EA: 29 07       ;
CODE_29D9EC:    BNE CODE_29D9FC             ; $29:D9EC: D0 0E       ;
CODE_29D9EE:    LDA $05F2                   ; $29:D9EE: AD F2 05    ;
CODE_29D9F1:    BNE CODE_29D9F9             ; $29:D9F1: D0 06       ;
CODE_29D9F3:    LDA #$00                    ; $29:D9F3: A9 00       ;
CODE_29D9F5:    STA $041C                   ; $29:D9F5: 8D 1C 04    ;
CODE_29D9F8:    RTS                         ; $29:D9F8: 60          ;

CODE_29D9F9:    INC $041C                   ; $29:D9F9: EE 1C 04    ;
CODE_29D9FC:    RTS                         ; $29:D9FC: 60          ;

CODE_29D9FD:    LDA $05F2                   ; $29:D9FD: AD F2 05    ;
CODE_29DA00:    BNE CODE_29DA19             ; $29:DA00: D0 17       ;
CODE_29DA02:    LDA #$1C                    ; $29:DA02: A9 1C       ;
CODE_29DA04:    LDX $0726                   ; $29:DA04: AE 26 07    ;
CODE_29DA07:    BEQ CODE_29DA0B             ; $29:DA07: F0 02       ;
CODE_29DA09:    LDA #$3F                    ; $29:DA09: A9 3F       ;
CODE_29DA0B:    STA $0B                     ; $29:DA0B: 85 0B       ;
CODE_29DA0D:    LDA $0C                     ; $29:DA0D: A5 0C       ;
CODE_29DA0F:    CLC                         ; $29:DA0F: 18          ;
CODE_29DA10:    ADC #$1A                    ; $29:DA10: 69 1A       ;
CODE_29DA12:    STA $0C                     ; $29:DA12: 85 0C       ;
CODE_29DA14:    LDA #$02                    ; $29:DA14: A9 02       ;
CODE_29DA16:    JMP CODE_29DA2A             ; $29:DA16: 4C 2A DA    ;

CODE_29DA19:    LDA #$00                    ; $29:DA19: A9 00       ;
CODE_29DA1B:    LDX $0726                   ; $29:DA1B: AE 26 07    ;
CODE_29DA1E:    BEQ CODE_29DA22             ; $29:DA1E: F0 02       ;
CODE_29DA20:    LDA #$23                    ; $29:DA20: A9 23       ;
CODE_29DA22:    CLC                         ; $29:DA22: 18          ;
CODE_29DA23:    ADC $041D                   ; $29:DA23: 6D 1D 04    ;
CODE_29DA26:    STA $0B                     ; $29:DA26: 85 0B       ;
CODE_29DA28:    LDA #$06                    ; $29:DA28: A9 06       ;
CODE_29DA2A:    STA $0A                     ; $29:DA2A: 85 0A       ;
CODE_29DA2C:    LDA $05F2                   ; $29:DA2C: AD F2 05    ;
CODE_29DA2F:    ASL A                       ; $29:DA2F: 0A          ;
CODE_29DA30:    TAX                         ; $29:DA30: AA          ;
CODE_29DA31:    LDA.w DATA_21EE35,x                 ; $29:DA31: BD 35 EE    ;
CODE_29DA34:    STA $0D                     ; $29:DA34: 85 0D       ;
CODE_29DA36:    LDA.w DATA_21EE35+1,x                   ; $29:DA36: BD 36 EE    ;
CODE_29DA39:    STA $0E                     ; $29:DA39: 85 0E       ;
CODE_29DA3B:    LDA #$21                    ; $29:DA3B: A9 21       ;
CODE_29DA3D:    STA $0F                     ; $29:DA3D: 85 0F       ;
CODE_29DA3F:    LDY $0B                     ; $29:DA3F: A4 0B       ;
CODE_29DA41:    LDA $1D80,y                 ; $29:DA41: B9 80 1D    ;
CODE_29DA44:    BEQ CODE_29DA73             ; $29:DA44: F0 2D       ;
CODE_29DA46:    ASL A                       ; $29:DA46: 0A          ;
CODE_29DA47:    ASL A                       ; $29:DA47: 0A          ;
CODE_29DA48:    TAY                         ; $29:DA48: A8          ;
CODE_29DA49:    LDA $041B                   ; $29:DA49: AD 1B 04    ;
CODE_29DA4C:    AND #$07                    ; $29:DA4C: 29 07       ;
CODE_29DA4E:    CMP #$04                    ; $29:DA4E: C9 04       ;
CODE_29DA50:    BEQ CODE_29DA56             ; $29:DA50: F0 04       ;
CODE_29DA52:    TYA                         ; $29:DA52: 98          ;
CODE_29DA53:    ORA #$02                    ; $29:DA53: 09 02       ;
CODE_29DA55:    TAY                         ; $29:DA55: A8          ;
CODE_29DA56:    LDX $0C                     ; $29:DA56: A6 0C       ;
CODE_29DA58:    REP #$30                    ; $29:DA58: C2 30       ;
CODE_29DA5A:    TXA                         ; $29:DA5A: 8A          ;
CODE_29DA5B:    AND #$00FF                  ; $29:DA5B: 29 FF 00    ;
CODE_29DA5E:    TAX                         ; $29:DA5E: AA          ;
CODE_29DA5F:    TYA                         ; $29:DA5F: 98          ;
CODE_29DA60:    ASL A                       ; $29:DA60: 0A          ;
CODE_29DA61:    TAY                         ; $29:DA61: A8          ;
CODE_29DA62:    LDA [$0D],y                 ; $29:DA62: B7 0D       ;
CODE_29DA64:    STA $1602,x                 ; $29:DA64: 9D 02 16    ;
CODE_29DA67:    INX                         ; $29:DA67: E8          ;
CODE_29DA68:    INX                         ; $29:DA68: E8          ;
CODE_29DA69:    INY                         ; $29:DA69: C8          ;
CODE_29DA6A:    INY                         ; $29:DA6A: C8          ;
CODE_29DA6B:    TYA                         ; $29:DA6B: 98          ;
CODE_29DA6C:    AND #$0002                  ; $29:DA6C: 29 02 00    ;
CODE_29DA6F:    BNE CODE_29DA62             ; $29:DA6F: D0 F1       ;
CODE_29DA71:    SEP #$30                    ; $29:DA71: E2 30       ;
CODE_29DA73:    LDA $0C                     ; $29:DA73: A5 0C       ;
CODE_29DA75:    CLC                         ; $29:DA75: 18          ;
CODE_29DA76:    ADC #$06                    ; $29:DA76: 69 06       ;
CODE_29DA78:    STA $0C                     ; $29:DA78: 85 0C       ;
CODE_29DA7A:    INC $0B                     ; $29:DA7A: E6 0B       ;
CODE_29DA7C:    DEC $0A                     ; $29:DA7C: C6 0A       ;
CODE_29DA7E:    BPL CODE_29DA3F             ; $29:DA7E: 10 BF       ;
CODE_29DA80:    RTS                         ; $29:DA80: 60          ;

CODE_29DA81:    LDA $041B                   ; $29:DA81: AD 1B 04    ;
CODE_29DA84:    AND #$07                    ; $29:DA84: 29 07       ;
CODE_29DA86:    JSL CODE_20FB1F         ; $29:DA86: 22 1F FB 20 ; ExecutePtrShort

PNTR_29DA8A:        dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA9A
                    dw CODE_29DABD
                    dw CODE_29DA80
                    dw CODE_29DA80

CODE_29DA9A:    JSL CODE_29E730             ; $29:DA9A: 22 30 E7 29 ;
CODE_29DA9E:    LDA $041B                   ; $29:DA9E: AD 1B 04    ;
CODE_29DAA1:    AND #$08                    ; $29:DAA1: 29 08       ;
CODE_29DAA3:    BNE CODE_29DABC             ; $29:DAA3: D0 17       ;
CODE_29DAA5:    JSR CODE_29E6E0             ; $29:DAA5: 20 E0 E6    ;
CODE_29DAA8:    LDX $08                     ; $29:DAA8: A6 08       ;
CODE_29DAAA:    LDA $1F48                   ; $29:DAAA: AD 48 1F    ;
CODE_29DAAD:    CMP #$F0                    ; $29:DAAD: C9 F0       ;
CODE_29DAAF:    BNE CODE_29DAB3             ; $29:DAAF: D0 02       ;
CODE_29DAB1:    LDA #$FE                    ; $29:DAB1: A9 FE       ;
CODE_29DAB3:    STA $162A,x                 ; $29:DAB3: 9D 2A 16    ;
CODE_29DAB6:    LDA $1F49                   ; $29:DAB6: AD 49 1F    ;
CODE_29DAB9:    STA $162C,x                 ; $29:DAB9: 9D 2C 16    ;
CODE_29DABC:    RTS                         ; $29:DABC: 60          ;

CODE_29DABD:    JSL CODE_29E766             ; $29:DABD: 22 66 E7 29 ;
CODE_29DAC1:    JSR CODE_29E6AA             ; $29:DAC1: 20 AA E6    ;
CODE_29DAC4:    LDX $08                     ; $29:DAC4: A6 08       ;
CODE_29DAC6:    LDA $1F4A                   ; $29:DAC6: AD 4A 1F    ;
CODE_29DAC9:    CMP #$F0                    ; $29:DAC9: C9 F0       ;
CODE_29DACB:    BNE CODE_29DACF             ; $29:DACB: D0 02       ;
CODE_29DACD:    LDA #$FE                    ; $29:DACD: A9 FE       ;
CODE_29DACF:    STA $1610,x                 ; $29:DACF: 9D 10 16    ;
CODE_29DAD2:    LDA $1F4B                   ; $29:DAD2: AD 4B 1F    ;
CODE_29DAD5:    STA $1612,x                 ; $29:DAD5: 9D 12 16    ;
CODE_29DAD8:    LDA $041B                   ; $29:DAD8: AD 1B 04    ;
CODE_29DADB:    AND #$08                    ; $29:DADB: 29 08       ;
CODE_29DADD:    BNE CODE_29DAF4             ; $29:DADD: D0 15       ;
CODE_29DADF:    JSL CODE_29E7AA             ; $29:DADF: 22 AA E7 29 ;
CODE_29DAE3:    LDX $08                     ; $29:DAE3: A6 08       ;
CODE_29DAE5:    LDY #$00                    ; $29:DAE5: A0 00       ;
CODE_29DAE7:    LDA $1F4C,y                 ; $29:DAE7: B9 4C 1F    ;
CODE_29DAEA:    STA $1616,x                 ; $29:DAEA: 9D 16 16    ;
CODE_29DAED:    INX                         ; $29:DAED: E8          ;
CODE_29DAEE:    INX                         ; $29:DAEE: E8          ;
CODE_29DAEF:    INY                         ; $29:DAEF: C8          ;
CODE_29DAF0:    CPY #$06                    ; $29:DAF0: C0 06       ;
CODE_29DAF2:    BNE CODE_29DAE7             ; $29:DAF2: D0 F3       ;
CODE_29DAF4:    RTS                         ; $29:DAF4: 60          ;

CODE_29DAF5:    LDA $0423                   ; $29:DAF5: AD 23 04    ;
CODE_29DAF8:    BNE CODE_29DA80             ; $29:DAF8: D0 86       ;
CODE_29DAFA:    LDA $A8                     ; $29:DAFA: A5 A8       ;
CODE_29DAFC:    BEQ CODE_29DB01             ; $29:DAFC: F0 03       ;
CODE_29DAFE:    JMP CODE_29DC21             ; $29:DAFE: 4C 21 DC    ;

CODE_29DB01:    LDX $0726                   ; $29:DB01: AE 26 07    ;
CODE_29DB04:    LDA $F8,x                   ; $29:DB04: B5 F8       ;
CODE_29DB06:    ORA $18                     ; $29:DB06: 05 18       ;
CODE_29DB08:    AND #$40                    ; $29:DB08: 29 40       ;
CODE_29DB0A:    BEQ CODE_29DB21             ; $29:DB0A: F0 15       ;
CODE_29DB0C:    LDA #$1C                    ; $29:DB0C: A9 1C       ;
CODE_29DB0E:    STA $1203                   ; $29:DB0E: 8D 03 12    ;
CODE_29DB11:    LDA $05F2                   ; $29:DB11: AD F2 05    ;
CODE_29DB14:    EOR #$01                    ; $29:DB14: 49 01       ;
CODE_29DB16:    STA $05F2                   ; $29:DB16: 8D F2 05    ;
CODE_29DB19:    LDA #$00                    ; $29:DB19: A9 00       ;
CODE_29DB1B:    STA $041C                   ; $29:DB1B: 8D 1C 04    ;
CODE_29DB1E:    JMP CODE_29D907             ; $29:DB1E: 4C 07 D9    ;

CODE_29DB21:    LDX #$07                    ; $29:DB21: A2 07       ;
CODE_29DB23:    LDA $0726                   ; $29:DB23: AD 26 07    ;
CODE_29DB26:    BEQ CODE_29DB2A             ; $29:DB26: F0 02       ;
CODE_29DB28:    LDX #$2A                    ; $29:DB28: A2 2A       ;
CODE_29DB2A:    LDA $1D80,x                 ; $29:DB2A: BD 80 1D    ;
CODE_29DB2D:    BEQ CODE_29DBA5             ; $29:DB2D: F0 76       ;
CODE_29DB2F:    LDA $0018                   ; $29:DB2F: AD 18 00    ;
CODE_29DB32:    AND #$0C                    ; $29:DB32: 29 0C       ;
CODE_29DB34:    BEQ CODE_29DBA5             ; $29:DB34: F0 6F       ;
CODE_29DB36:    LSR A                       ; $29:DB36: 4A          ;
CODE_29DB37:    LSR A                       ; $29:DB37: 4A          ;
CODE_29DB38:    LSR A                       ; $29:DB38: 4A          ;
CODE_29DB39:    TAY                         ; $29:DB39: A8          ;
CODE_29DB3A:    BNE CODE_29DB56             ; $29:DB3A: D0 1A       ;
CODE_29DB3C:    LDA $041D                   ; $29:DB3C: AD 1D 04    ;
CODE_29DB3F:    CMP #$15                    ; $29:DB3F: C9 15       ;
CODE_29DB41:    BEQ CODE_29DB54             ; $29:DB41: F0 11       ;
CODE_29DB43:    CLC                         ; $29:DB43: 18          ;
CODE_29DB44:    ADC #$07                    ; $29:DB44: 69 07       ;
CODE_29DB46:    LDX $0726                   ; $29:DB46: AE 26 07    ;
CODE_29DB49:    BEQ CODE_29DB4E             ; $29:DB49: F0 03       ;
CODE_29DB4B:    CLC                         ; $29:DB4B: 18          ;
CODE_29DB4C:    ADC #$23                    ; $29:DB4C: 69 23       ;
CODE_29DB4E:    TAX                         ; $29:DB4E: AA          ;
CODE_29DB4F:    LDA $1D80,x                 ; $29:DB4F: BD 80 1D    ;
CODE_29DB52:    BNE CODE_29DB5B             ; $29:DB52: D0 07       ;
CODE_29DB54:    BRA CODE_29DBA5             ; $29:DB54: 80 4F       ;

CODE_29DB56:    LDA $041D                   ; $29:DB56: AD 1D 04    ;
CODE_29DB59:    BEQ CODE_29DB54             ; $29:DB59: F0 F9       ;
CODE_29DB5B:    LDA #$23                    ; $29:DB5B: A9 23       ;
CODE_29DB5D:    STA $1203                   ; $29:DB5D: 8D 03 12    ;
CODE_29DB60:    LDA $041D                   ; $29:DB60: AD 1D 04    ;
CODE_29DB63:    CLC                         ; $29:DB63: 18          ;
CODE_29DB64:    ADC.w DATA_21EEC9,y                 ; $29:DB64: 79 C9 EE    ;
CODE_29DB67:    STA $041D                   ; $29:DB67: 8D 1D 04    ;
CODE_29DB6A:    CMP.w DATA_21EECB,y                 ; $29:DB6A: D9 CB EE    ;
CODE_29DB6D:    BNE CODE_29DB75             ; $29:DB6D: D0 06       ;
CODE_29DB6F:    LDA.w DATA_21EECD,y                 ; $29:DB6F: B9 CD EE    ;
CODE_29DB72:    STA $041D                   ; $29:DB72: 8D 1D 04    ;
CODE_29DB75:    LDX $041D                   ; $29:DB75: AE 1D 04    ;
CODE_29DB78:    LDA $0726                   ; $29:DB78: AD 26 07    ;
CODE_29DB7B:    BEQ CODE_29DB82             ; $29:DB7B: F0 05       ;
CODE_29DB7D:    TXA                         ; $29:DB7D: 8A          ;
CODE_29DB7E:    CLC                         ; $29:DB7E: 18          ;
CODE_29DB7F:    ADC #$23                    ; $29:DB7F: 69 23       ;
CODE_29DB81:    TAX                         ; $29:DB81: AA          ;
CODE_29DB82:    LDY $0726                   ; $29:DB82: AC 26 07    ;
CODE_29DB85:    TXA                         ; $29:DB85: 8A          ;
CODE_29DB86:    CMP.w DATA_21EED9,y                 ; $29:DB86: D9 D9 EE    ;
CODE_29DB89:    BEQ CODE_29DB90             ; $29:DB89: F0 05       ;
CODE_29DB8B:    LDA $1D80,x                 ; $29:DB8B: BD 80 1D    ;
CODE_29DB8E:    BEQ CODE_29DB21             ; $29:DB8E: F0 91       ;
CODE_29DB90:    LDA #$0C                    ; $29:DB90: A9 0C       ;
CODE_29DB92:    STA $041B                   ; $29:DB92: 8D 1B 04    ;
CODE_29DB95:    LDA #$03                    ; $29:DB95: A9 03       ;
CODE_29DB97:    STA $041C                   ; $29:DB97: 8D 1C 04    ;
CODE_29DB9A:    LDA #$00                    ; $29:DB9A: A9 00       ;
CODE_29DB9C:    STA $041F                   ; $29:DB9C: 8D 1F 04    ;
CODE_29DB9F:    LDA #$48                    ; $29:DB9F: A9 48       ;
CODE_29DBA1:    STA $041E                   ; $29:DBA1: 8D 1E 04    ;
CODE_29DBA4:    RTS                         ; $29:DBA4: 60          ;

CODE_29DBA5:    LDA $070A                   ; $29:DBA5: AD 0A 07    ;
CODE_29DBA8:    CMP #$07                    ; $29:DBA8: C9 07       ;
CODE_29DBAA:    BEQ CODE_29DBBA             ; $29:DBAA: F0 0E       ;
CODE_29DBAC:    LDY #$00                    ; $29:DBAC: A0 00       ;
CODE_29DBAE:    LDX $0726                   ; $29:DBAE: AE 26 07    ;
CODE_29DBB1:    BEQ CODE_29DBB5             ; $29:DBB1: F0 02       ;
CODE_29DBB3:    LDY #$23                    ; $29:DBB3: A0 23       ;
CODE_29DBB5:    LDA $1D80,y                 ; $29:DBB5: B9 80 1D    ;
CODE_29DBB8:    BNE CODE_29DBBB             ; $29:DBB8: D0 01       ;
CODE_29DBBA:    RTS                         ; $29:DBBA: 60          ;

CODE_29DBBB:    LDX #$01                    ; $29:DBBB: A2 01       ;
CODE_29DBBD:    LDA $0726                   ; $29:DBBD: AD 26 07    ;
CODE_29DBC0:    BEQ CODE_29DBC4             ; $29:DBC0: F0 02       ;
CODE_29DBC2:    LDX #$24                    ; $29:DBC2: A2 24       ;
CODE_29DBC4:    LDA $1D80,x                 ; $29:DBC4: BD 80 1D    ;
CODE_29DBC7:    BEQ CODE_29DC15             ; $29:DBC7: F0 4C       ;
CODE_29DBC9:    LDA $18                     ; $29:DBC9: A5 18       ;
CODE_29DBCB:    AND #$03                    ; $29:DBCB: 29 03       ;
CODE_29DBCD:    BEQ CODE_29DC15             ; $29:DBCD: F0 46       ;
CODE_29DBCF:    LSR A                       ; $29:DBCF: 4A          ;
CODE_29DBD0:    TAX                         ; $29:DBD0: AA          ;
CODE_29DBD1:    LDA #$23                    ; $29:DBD1: A9 23       ;
CODE_29DBD3:    STA $1203                   ; $29:DBD3: 8D 03 12    ;
CODE_29DBD6:    LDA $041F                   ; $29:DBD6: AD 1F 04    ;
CODE_29DBD9:    CLC                         ; $29:DBD9: 18          ;
CODE_29DBDA:    ADC.w DATA_21EED5,x                 ; $29:DBDA: 7D D5 EE    ;
CODE_29DBDD:    STA $041F                   ; $29:DBDD: 8D 1F 04    ;
CODE_29DBE0:    LDA $041E                   ; $29:DBE0: AD 1E 04    ;
CODE_29DBE3:    CLC                         ; $29:DBE3: 18          ;
CODE_29DBE4:    ADC.w DATA_21EECF,x                 ; $29:DBE4: 7D CF EE    ;
CODE_29DBE7:    STA $041E                   ; $29:DBE7: 8D 1E 04    ;
CODE_29DBEA:    CMP.w DATA_21EED1,x                 ; $29:DBEA: DD D1 EE    ;
CODE_29DBED:    BNE CODE_29DBFB             ; $29:DBED: D0 0C       ;
CODE_29DBEF:    LDA.w DATA_21EED7,x                 ; $29:DBEF: BD D7 EE    ;
CODE_29DBF2:    STA $041F                   ; $29:DBF2: 8D 1F 04    ;
CODE_29DBF5:    LDA.w DATA_21EED3,x                 ; $29:DBF5: BD D3 EE    ;
CODE_29DBF8:    STA $041E                   ; $29:DBF8: 8D 1E 04    ;
CODE_29DBFB:    LDA $041F                   ; $29:DBFB: AD 1F 04    ;
CODE_29DBFE:    CLC                         ; $29:DBFE: 18          ;
CODE_29DBFF:    ADC $041D                   ; $29:DBFF: 6D 1D 04    ;
CODE_29DC02:    TAY                         ; $29:DC02: A8          ;
CODE_29DC03:    LDA $0726                   ; $29:DC03: AD 26 07    ;
CODE_29DC06:    BEQ CODE_29DC0D             ; $29:DC06: F0 05       ;
CODE_29DC08:    TYA                         ; $29:DC08: 98          ;
CODE_29DC09:    CLC                         ; $29:DC09: 18          ;
CODE_29DC0A:    ADC #$23                    ; $29:DC0A: 69 23       ;
CODE_29DC0C:    TAY                         ; $29:DC0C: A8          ;
CODE_29DC0D:    LDA $1D80,y                 ; $29:DC0D: B9 80 1D    ;
CODE_29DC10:    BEQ CODE_29DBD6             ; $29:DC10: F0 C4       ;
CODE_29DC12:    JMP CODE_29DC49             ; $29:DC12: 4C 49 DC    ;

CODE_29DC15:    LDY $0726                   ; $29:DC15: AC 26 07    ;
CODE_29DC18:    LDA $00F8,y                 ; $29:DC18: B9 F8 00    ;
CODE_29DC1B:    ORA $18                     ; $29:DC1B: 05 18       ;
CODE_29DC1D:    AND #$80                    ; $29:DC1D: 29 80       ;
CODE_29DC1F:    BEQ CODE_29DC49             ; $29:DC1F: F0 28       ;
CODE_29DC21:    LDA $041F                   ; $29:DC21: AD 1F 04    ;
CODE_29DC24:    CLC                         ; $29:DC24: 18          ;
CODE_29DC25:    ADC $041D                   ; $29:DC25: 6D 1D 04    ;
CODE_29DC28:    TAY                         ; $29:DC28: A8          ;
CODE_29DC29:    LDA $0726                   ; $29:DC29: AD 26 07    ;
CODE_29DC2C:    BEQ CODE_29DC33             ; $29:DC2C: F0 05       ;
CODE_29DC2E:    TYA                         ; $29:DC2E: 98          ;
CODE_29DC2F:    CLC                         ; $29:DC2F: 18          ;
CODE_29DC30:    ADC #$23                    ; $29:DC30: 69 23       ;
CODE_29DC32:    TAY                         ; $29:DC32: A8          ;
CODE_29DC33:    LDA $1D80,y                 ; $29:DC33: B9 80 1D    ;
CODE_29DC36:    CMP #$0C                    ; $29:DC36: C9 0C       ;
CODE_29DC38:    BNE CODE_29DC46             ; $29:DC38: D0 0C       ;
CODE_29DC3A:    LDA $0597                   ; $29:DC3A: AD 97 05    ;
CODE_29DC3D:    BEQ CODE_29DC46             ; $29:DC3D: F0 07       ;
CODE_29DC3F:    LDA #$2A                    ; $29:DC3F: A9 2A       ;
CODE_29DC41:    STA $1203                   ; $29:DC41: 8D 03 12    ;
CODE_29DC44:    BRA CODE_29DC49             ; $29:DC44: 80 03       ;

CODE_29DC46:    JMP CODE_29DC65             ; $29:DC46: 4C 65 DC    ;

CODE_29DC49:    JMP CODE_29DF1D             ; $29:DC49: 4C 1D DF    ;

CODE_29DC4C:    LDX $070A                   ; $29:DC4C: AE 0A 07    ;
CODE_29DC4F:    CPX #$07                    ; $29:DC4F: E0 07       ;
CODE_29DC51:    BEQ CODE_29DC64             ; $29:DC51: F0 11       ;
CODE_29DC53:    ASL A                       ; $29:DC53: 0A          ;
CODE_29DC54:    TAX                         ; $29:DC54: AA          ;
CODE_29DC55:    REP #$20                    ; $29:DC55: C2 20       ;
CODE_29DC57:    LDA.w DATA_21EEDB,x                 ; $29:DC57: BD DB EE    ;
CODE_29DC5A:    STA $1464                   ; $29:DC5A: 8D 64 14    ;
CODE_29DC5D:    SEP #$20                    ; $29:DC5D: E2 20       ;
CODE_29DC5F:    LDA #$01                    ; $29:DC5F: A9 01       ;
CODE_29DC61:    STA $1500                   ; $29:DC61: 8D 00 15    ;
CODE_29DC64:    RTS                         ; $29:DC64: 60          ;

CODE_29DC65:    LDA $1D80,y                 ; $29:DC65: B9 80 1D    ;
CODE_29DC68:    JSL CODE_20FB1F         ; $29:DC68: 22 1F FB 20 ; ExecutePtrShort

PNTR_29DC6C:        dw CODE_29DBBA
                    dw CODE_29DC88
                    dw CODE_29DC88
                    dw CODE_29DC88
                    dw CODE_29DC88
                    dw CODE_29DC88
                    dw CODE_29DC88
                    dw CODE_29DC88
                    dw CODE_29DC88
                    dw CODE_29DD4A
                    dw CODE_29DD60
                    dw CODE_29DD90
                    dw CODE_29DE4B
                    dw CODE_29DD80
                    
CODE_29DC88:    LDA $041F                   ; $29:DC88: AD 1F 04    ;
CODE_29DC8B:    CLC                         ; $29:DC8B: 18          ;
CODE_29DC8C:    ADC $041D                   ; $29:DC8C: 6D 1D 04    ;
CODE_29DC8F:    TAY                         ; $29:DC8F: A8          ;
CODE_29DC90:    LDA $0726                   ; $29:DC90: AD 26 07    ;
CODE_29DC93:    BEQ CODE_29DC9A             ; $29:DC93: F0 05       ;
CODE_29DC95:    TYA                         ; $29:DC95: 98          ;
CODE_29DC96:    CLC                         ; $29:DC96: 18          ;
CODE_29DC97:    ADC #$23                    ; $29:DC97: 69 23       ;
CODE_29DC99:    TAY                         ; $29:DC99: A8          ;
CODE_29DC9A:    LDX $1D80,y                 ; $29:DC9A: BE 80 1D    ;
CODE_29DC9D:    TXA                         ; $29:DC9D: 8A          ;
CODE_29DC9E:    ASL A                       ; $29:DC9E: 0A          ;
CODE_29DC9F:    TAY                         ; $29:DC9F: A8          ;
CODE_29DCA0:    LDA $0726                   ; $29:DCA0: AD 26 07    ;
CODE_29DCA3:    BEQ CODE_29DCAA             ; $29:DCA3: F0 05       ;
CODE_29DCA5:    TYA                         ; $29:DCA5: 98          ;
CODE_29DCA6:    CLC                         ; $29:DCA6: 18          ;
CODE_29DCA7:    ADC #$12                    ; $29:DCA7: 69 12       ;
CODE_29DCA9:    TAY                         ; $29:DCA9: A8          ;
CODE_29DCAA:    PHX                         ; $29:DCAA: DA          ;
CODE_29DCAB:    REP #$30                    ; $29:DCAB: C2 30       ;
CODE_29DCAD:    TYA                         ; $29:DCAD: 98          ;
CODE_29DCAE:    AND #$00FF                  ; $29:DCAE: 29 FF 00    ;
CODE_29DCB1:    TAY                         ; $29:DCB1: A8          ;
CODE_29DCB2:    PHB                         ; $29:DCB2: 8B          ;
CODE_29DCB3:    LDX.w PNTR_21EF09,y                 ; $29:DCB3: BE 09 EF    ;
CODE_29DCB6:    LDY #$14E0                  ; $29:DCB6: A0 E0 14    ;
CODE_29DCB9:    LDA #$001F                  ; $29:DCB9: A9 1F 00    ;
CODE_29DCBC:    MVN $00, DATA_3C88A0>>16    ; $29:DCBC: 54 00 3C    ;first (valid) data pointer in above table                 
CODE_29DCBF:    PLB                     ; $29:DCBF: AB          ;
CODE_29DCC0:    SEP #$30                    ; $29:DCC0: E2 30       ;
CODE_29DCC2:    PLX                         ; $29:DCC2: FA          ;
CODE_29DCC3:    LDA #$01                    ; $29:DCC3: A9 01       ;
CODE_29DCC5:    STA $1500                   ; $29:DCC5: 8D 00 15    ;
CODE_29DCC8:    LDA.w DATA_21EEF7,x                 ; $29:DCC8: BD F7 EE    ;
CODE_29DCCB:    STA $1200                   ; $29:DCCB: 8D 00 12    ;
CODE_29DCCE:    LDA.w DATA_21EF00,x                 ; $29:DCCE: BD 00 EF    ;
CODE_29DCD1:    LDX $0726                   ; $29:DCD1: AE 26 07    ;
CODE_29DCD4:    STA $0429                   ; $29:DCD4: 8D 29 04    ;
CODE_29DCD7:    CMP #$07                    ; $29:DCD7: C9 07       ;
CODE_29DCD9:    BEQ CODE_29DCE4             ; $29:DCD9: F0 09       ;
CODE_29DCDB:    CMP #$08                    ; $29:DCDB: C9 08       ;
CODE_29DCDD:    BNE CODE_29DCE1             ; $29:DCDD: D0 02       ;
CODE_29DCDF:    LDA #$03                    ; $29:DCDF: A9 03       ;
CODE_29DCE1:    STA $0747,x                 ; $29:DCE1: 9D 47 07    ;
CODE_29DCE4:    LDA #$14                    ; $29:DCE4: A9 14       ;
CODE_29DCE6:    STA $0423                   ; $29:DCE6: 8D 23 04    ;
CODE_29DCE9:    LDX $0726                   ; $29:DCE9: AE 26 07    ;
CODE_29DCEC:    LDA $43,x                   ; $29:DCEC: B5 43       ;
CODE_29DCEE:    STA $A6                     ; $29:DCEE: 85 A6       ;
CODE_29DCF0:    LDA $47,x                   ; $29:DCF0: B5 47       ;
CODE_29DCF2:    STA $A7                     ; $29:DCF2: 85 A7       ;
CODE_29DCF4:    LDA #$1B                    ; $29:DCF4: A9 1B       ;
CODE_29DCF6:    STA $0E                     ; $29:DCF6: 85 0E       ;
CODE_29DCF8:    LDA $041F                   ; $29:DCF8: AD 1F 04    ;
CODE_29DCFB:    CLC                         ; $29:DCFB: 18          ;
CODE_29DCFC:    ADC $041D                   ; $29:DCFC: 6D 1D 04    ;
CODE_29DCFF:    TAY                         ; $29:DCFF: A8          ;
CODE_29DD00:    LDA $0726                   ; $29:DD00: AD 26 07    ;
CODE_29DD03:    BEQ CODE_29DD11             ; $29:DD03: F0 0C       ;
CODE_29DD05:    LDA #$1B                    ; $29:DD05: A9 1B       ;
CODE_29DD07:    CLC                         ; $29:DD07: 18          ;
CODE_29DD08:    ADC #$23                    ; $29:DD08: 69 23       ;
CODE_29DD0A:    STA $0E                     ; $29:DD0A: 85 0E       ;
CODE_29DD0C:    TYA                         ; $29:DD0C: 98          ;
CODE_29DD0D:    CLC                         ; $29:DD0D: 18          ;
CODE_29DD0E:    ADC #$23                    ; $29:DD0E: 69 23       ;
CODE_29DD10:    TAY                         ; $29:DD10: A8          ;
CODE_29DD11:    CPY $0E                     ; $29:DD11: C4 0E       ;
CODE_29DD13:    BEQ CODE_29DD1F             ; $29:DD13: F0 0A       ;
CODE_29DD15:    LDA $1D81,y                 ; $29:DD15: B9 81 1D    ;
CODE_29DD18:    STA $1D80,y                 ; $29:DD18: 99 80 1D    ;
CODE_29DD1B:    INY                         ; $29:DD1B: C8          ;
CODE_29DD1C:    JMP CODE_29DD11             ; $29:DD1C: 4C 11 DD    ;

CODE_29DD1F:    LDA #$00                    ; $29:DD1F: A9 00       ;
CODE_29DD21:    STA $1D80,y                 ; $29:DD21: 99 80 1D    ;
CODE_29DD24:    LDY $041D                   ; $29:DD24: AC 1D 04    ;
CODE_29DD27:    BEQ CODE_29DD44             ; $29:DD27: F0 1B       ;
CODE_29DD29:    LDA $0726                   ; $29:DD29: AD 26 07    ;
CODE_29DD2C:    BEQ CODE_29DD33             ; $29:DD2C: F0 05       ;
CODE_29DD2E:    TYA                         ; $29:DD2E: 98          ;
CODE_29DD2F:    CLC                         ; $29:DD2F: 18          ;
CODE_29DD30:    ADC #$23                    ; $29:DD30: 69 23       ;
CODE_29DD32:    TAY                         ; $29:DD32: A8          ;
CODE_29DD33:    LDA $1D80,y                 ; $29:DD33: B9 80 1D    ;
CODE_29DD36:    BNE CODE_29DD44             ; $29:DD36: D0 0C       ;
CODE_29DD38:    LDA $041D                   ; $29:DD38: AD 1D 04    ;
CODE_29DD3B:    SEC                         ; $29:DD3B: 38          ;
CODE_29DD3C:    SBC #$07                    ; $29:DD3C: E9 07       ;
CODE_29DD3E:    STA $041D                   ; $29:DD3E: 8D 1D 04    ;
CODE_29DD41:    JMP CODE_29DD24             ; $29:DD41: 4C 24 DD    ;

CODE_29DD44:    JSR CODE_29DB90             ; $29:DD44: 20 90 DB    ;
CODE_29DD47:    JMP CODE_29DF1D             ; $29:DD47: 4C 1D DF    ;

CODE_29DD4A:    INC $0428                   ; $29:DD4A: EE 28 04    ;
CODE_29DD4D:    LDA #$03                    ; $29:DD4D: A9 03       ;
CODE_29DD4F:    STA $02C6                   ; $29:DD4F: 8D C6 02    ;
CODE_29DD52:    STZ $02C7                   ; $29:DD52: 9C C7 02    ;
CODE_29DD55:    LDA #$0A                    ; $29:DD55: A9 0A       ;
CODE_29DD57:    STA $1200                   ; $29:DD57: 8D 00 12    ;
CODE_29DD5A:    JSR CODE_29DCF4             ; $29:DD5A: 20 F4 DC    ;
CODE_29DD5D:    JMP CODE_29DB11             ; $29:DD5D: 4C 11 DB    ;

CODE_29DD60:    LDA $7E396F                 ; $29:DD60: AF 6F 39 7E ;
CODE_29DD64:    BEQ CODE_29DD6C             ; $29:DD64: F0 06       ;
CODE_29DD66:    LDA #$2A                    ; $29:DD66: A9 2A       ;
CODE_29DD68:    STA $1203                   ; $29:DD68: 8D 03 12    ;
CODE_29DD6B:    RTS                         ; $29:DD6B: 60          ;

CODE_29DD6C:    LDA $7E396F                 ; $29:DD6C: AF 6F 39 7E ;
CODE_29DD70:    INC A                       ; $29:DD70: 1A          ;
CODE_29DD71:    STA $7E396F                 ; $29:DD71: 8F 6F 39 7E ;
CODE_29DD75:    LDA #$0C                    ; $29:DD75: A9 0C       ;
CODE_29DD77:    STA $1200                   ; $29:DD77: 8D 00 12    ;
CODE_29DD7A:    JSR CODE_29DCF4             ; $29:DD7A: 20 F4 DC    ;
CODE_29DD7D:    JMP CODE_29DB11             ; $29:DD7D: 4C 11 DB    ;

CODE_29DD80:    LDA #$02                    ; $29:DD80: A9 02       ;
CODE_29DD82:    STA $1F55                   ; $29:DD82: 8D 55 1F    ;
CODE_29DD85:    LDA #$0E                    ; $29:DD85: A9 0E       ;
CODE_29DD87:    STA $1202                   ; $29:DD87: 8D 02 12    ;
CODE_29DD8A:    JSR CODE_29DCF4             ; $29:DD8A: 20 F4 DC    ;
CODE_29DD8D:    JMP CODE_29DB11             ; $29:DD8D: 4C 11 DB    ;

CODE_29DD90:    LDA #$03                    ; $29:DD90: A9 03       ;
CODE_29DD92:    STA $00                     ; $29:DD92: 85 00       ;
CODE_29DD94:    LDY $00                     ; $29:DD94: A4 00       ;
CODE_29DD96:    JSL CODE_238EFC             ; $29:DD96: 22 FC 8E 23 ;
CODE_29DD9A:    SEC                         ; $29:DD9A: 38          ;
CODE_29DD9B:    SBC #$51                    ; $29:DD9B: E9 51       ;
CODE_29DD9D:    CMP #$02                    ; $29:DD9D: C9 02       ;
CODE_29DD9F:    BCC CODE_29DDA8             ; $29:DD9F: 90 07       ;
CODE_29DDA1:    DEC $00                     ; $29:DDA1: C6 00       ;
CODE_29DDA3:    BPL CODE_29DD94             ; $29:DDA3: 10 EF       ;
CODE_29DDA5:    JMP CODE_29DD66             ; $29:DDA5: 4C 66 DD    ;

CODE_29DDA8:    STX $01                     ; $29:DDA8: 86 01       ;
CODE_29DDAA:    LSR $01                     ; $29:DDAA: 46 01       ;
CODE_29DDAC:    PHA                         ; $29:DDAC: 48          ;
CODE_29DDAD:    TAX                         ; $29:DDAD: AA          ;
CODE_29DDAE:    LDA.w DATA_21EF2D,x                 ; $29:DDAE: BD 2D EF    ;
CODE_29DDB1:    STA [$2E],y                 ; $29:DDB1: 97 2E       ;
CODE_29DDB3:    TYA                         ; $29:DDB3: 98          ;
CODE_29DDB4:    ASL A                       ; $29:DDB4: 0A          ;
CODE_29DDB5:    ASL A                       ; $29:DDB5: 0A          ;
CODE_29DDB6:    ASL A                       ; $29:DDB6: 0A          ;
CODE_29DDB7:    ASL A                       ; $29:DDB7: 0A          ;
CODE_29DDB8:    STA $A7                     ; $29:DDB8: 85 A7       ;
CODE_29DDBA:    STA $02                     ; $29:DDBA: 85 02       ;
CODE_29DDBC:    TYA                         ; $29:DDBC: 98          ;
CODE_29DDBD:    AND #$F0                    ; $29:DDBD: 29 F0       ;
CODE_29DDBF:    CLC                         ; $29:DDBF: 18          ;
CODE_29DDC0:    ADC #$10                    ; $29:DDC0: 69 10       ;
CODE_29DDC2:    STA $A6                     ; $29:DDC2: 85 A6       ;
CODE_29DDC4:    STA $00                     ; $29:DDC4: 85 00       ;
CODE_29DDC6:    JSR CODE_29DF76             ; $29:DDC6: 20 76 DF    ;
CODE_29DDC9:    TYA                         ; $29:DDC9: 98          ;
CODE_29DDCA:    EOR #$40                    ; $29:DDCA: 49 40       ;
CODE_29DDCC:    TAY                         ; $29:DDCC: A8          ;
CODE_29DDCD:    LDA $1D00,y                 ; $29:DDCD: B9 00 1D    ;
CODE_29DDD0:    ORA.w DATA_21EF4E,x                 ; $29:DDD0: 1D 4E EF    ;
CODE_29DDD3:    STA $1D00,y                 ; $29:DDD3: 99 00 1D    ;
CODE_29DDD6:    LDX $A7                     ; $29:DDD6: A6 A7       ;
CODE_29DDD8:    LDA $A6                     ; $29:DDD8: A5 A6       ;
CODE_29DDDA:    SEC                         ; $29:DDDA: 38          ;
CODE_29DDDB:    SBC #$10                    ; $29:DDDB: E9 10       ;
CODE_29DDDD:    JSL CODE_20973C             ; $29:DDDD: 22 3C 97 20 ;
CODE_29DDE1:    LDX $0726                   ; $29:DDE1: AE 26 07    ;
CODE_29DDE4:    LDA $45,x                   ; $29:DDE4: B5 45       ;
CODE_29DDE6:    AND #$01                    ; $29:DDE6: 29 01       ;
CODE_29DDE8:    BEQ CODE_29DDF0             ; $29:DDE8: F0 06       ;
CODE_29DDEA:    LDA $0E                     ; $29:DDEA: A5 0E       ;
CODE_29DDEC:    ORA #$04                    ; $29:DDEC: 09 04       ;
CODE_29DDEE:    STA $0E                     ; $29:DDEE: 85 0E       ;
CODE_29DDF0:    PLA                         ; $29:DDF0: 68          ;
CODE_29DDF1:    PHA                         ; $29:DDF1: 48          ;
CODE_29DDF2:    ASL A                       ; $29:DDF2: 0A          ;
CODE_29DDF3:    TAX                         ; $29:DDF3: AA          ;
CODE_29DDF4:    REP #$20                    ; $29:DDF4: C2 20       ;
CODE_29DDF6:    LDY $1600                   ; $29:DDF6: AC 00 16    ;
CODE_29DDF9:    LDA $0E                     ; $29:DDF9: A5 0E       ;
CODE_29DDFB:    STA $1602,y                 ; $29:DDFB: 99 02 16    ;
CODE_29DDFE:    CLC                         ; $29:DDFE: 18          ;
CODE_29DDFF:    ADC #$0100                  ; $29:DDFF: 69 00 01    ;
CODE_29DE02:    STA $160A,y                 ; $29:DE02: 99 0A 16    ;
CODE_29DE05:    LDA #$8003                  ; $29:DE05: A9 03 80    ;
CODE_29DE08:    XBA                         ; $29:DE08: EB          ;
CODE_29DE09:    STA $1604,y                 ; $29:DE09: 99 04 16    ;
CODE_29DE0C:    STA $160C,y                 ; $29:DE0C: 99 0C 16    ;
CODE_29DE0F:    LDA.w DATA_21EF2F,x                 ; $29:DE0F: BD 2F EF    ;
CODE_29DE12:    STA $1606,y                 ; $29:DE12: 99 06 16    ;
CODE_29DE15:    LDA.w DATA_21EF33,x                 ; $29:DE15: BD 33 EF    ;
CODE_29DE18:    STA $1608,y                 ; $29:DE18: 99 08 16    ;
CODE_29DE1B:    LDA.w DATA_21EF37,x                 ; $29:DE1B: BD 37 EF    ;
CODE_29DE1E:    STA $160E,y                 ; $29:DE1E: 99 0E 16    ;
CODE_29DE21:    LDA.w DATA_21EF3B,x                 ; $29:DE21: BD 3B EF    ;
CODE_29DE24:    STA $1610,y                 ; $29:DE24: 99 10 16    ;
CODE_29DE27:    LDA #$FFFF                  ; $29:DE27: A9 FF FF    ;
CODE_29DE2A:    STA $1612,y                 ; $29:DE2A: 99 12 16    ;
CODE_29DE2D:    LDA $1600                   ; $29:DE2D: AD 00 16    ;
CODE_29DE30:    CLC                         ; $29:DE30: 18          ;
CODE_29DE31:    ADC #$0010                  ; $29:DE31: 69 10 00    ;
CODE_29DE34:    STA $1600                   ; $29:DE34: 8D 00 16    ;
CODE_29DE37:    SEP #$20                    ; $29:DE37: E2 20       ;
CODE_29DE39:    PLA                         ; $29:DE39: 68          ;
CODE_29DE3A:    TAX                         ; $29:DE3A: AA          ;
CODE_29DE3B:    LDA #$07                    ; $29:DE3B: A9 07       ;
CODE_29DE3D:    STA $1203                   ; $29:DE3D: 8D 03 12    ;
CODE_29DE40:    LDA #$14                    ; $29:DE40: A9 14       ;
CODE_29DE42:    STA $0423                   ; $29:DE42: 8D 23 04    ;
CODE_29DE45:    JSR CODE_29DE9E             ; $29:DE45: 20 9E DE    ;
CODE_29DE48:    JMP CODE_29DCF4             ; $29:DE48: 4C F4 DC    ;

CODE_29DE4B:    LDY $0726                   ; $29:DE4B: AC 26 07    ;
CODE_29DE4E:    LDX #$00                    ; $29:DE4E: A2 00       ;
CODE_29DE50:    LDA $0047,y                 ; $29:DE50: B9 47 00    ;
CODE_29DE53:    SEC                         ; $29:DE53: 38          ;
CODE_29DE54:    SBC $0210                   ; $29:DE54: ED 10 02    ;
CODE_29DE57:    CMP #$80                    ; $29:DE57: C9 80       ;
CODE_29DE59:    BCS CODE_29DE5D                     ; $29:DE59: B0 02       ;
CODE_29DE5B:    LDX #$01                    ; $29:DE5B: A2 01       ;
CODE_29DE5D:    STX $58                     ; $29:DE5D: 86 58       ;
CODE_29DE5F:    LDA.w DATA_21EF3F,x                 ; $29:DE5F: BD 3F EF    ;
CODE_29DE62:    STA $56                     ; $29:DE62: 85 56       ;
CODE_29DE64:    LDA $0043,y                 ; $29:DE64: B9 43 00    ;
CODE_29DE67:    STA $54                     ; $29:DE67: 85 54       ;
CODE_29DE69:    STA $7E3974                 ; $29:DE69: 8F 74 39 7E ;
CODE_29DE6D:    LDA $0043,y                 ; $29:DE6D: B9 43 00    ;
CODE_29DE70:    STA $0730                   ; $29:DE70: 8D 30 07    ;
CODE_29DE73:    LDA $0047,y                 ; $29:DE73: B9 47 00    ;
CODE_29DE76:    STA $0732                   ; $29:DE76: 8D 32 07    ;
CODE_29DE79:    LDA $0045,y                 ; $29:DE79: B9 45 00    ;
CODE_29DE7C:    STA $0731                   ; $29:DE7C: 8D 31 07    ;
CODE_29DE7F:    LDA $0052,y                 ; $29:DE7F: B9 52 00    ;
CODE_29DE82:    STA $0733                   ; $29:DE82: 8D 33 07    ;
CODE_29DE85:    LDX #$01                    ; $29:DE85: A2 01       ;
CODE_29DE87:    LDA #$00                    ; $29:DE87: A9 00       ;
CODE_29DE89:    STA $0722,y                 ; $29:DE89: 99 22 07    ;
CODE_29DE8C:    STA $0724,y                 ; $29:DE8C: 99 24 07    ;
CODE_29DE8F:    STA $25                     ; $29:DE8F: 85 25       ;
CODE_29DE91:    STX $59                     ; $29:DE91: 86 59       ;
CODE_29DE93:    JSR CODE_29DCF4             ; $29:DE93: 20 F4 DC    ;
CODE_29DE96:    LDA #$0B                ; $29:DE96: A9 0B       ; \ Warp whistle jingle
CODE_29DE98:    STA $1202               ; $29:DE98: 8D 02 12    ; /
CODE_29DE9B:    JMP CODE_29DB11             ; $29:DE9B: 4C 11 DB    ;

CODE_29DE9E:    LDA $A6                     ; $29:DE9E: A5 A6       ;
CODE_29DEA0:    SEC                         ; $29:DEA0: 38          ;
CODE_29DEA1:    SBC #$08                    ; $29:DEA1: E9 08       ;
CODE_29DEA3:    STA $0861                   ; $29:DEA3: 8D 61 08    ;
CODE_29DEA6:    STA $0865                   ; $29:DEA6: 8D 65 08    ;
CODE_29DEA9:    CLC                         ; $29:DEA9: 18          ;
CODE_29DEAA:    ADC #$10                    ; $29:DEAA: 69 10       ;
CODE_29DEAC:    STA $0869                   ; $29:DEAC: 8D 69 08    ;
CODE_29DEAF:    STA $086D                   ; $29:DEAF: 8D 6D 08    ;
CODE_29DEB2:    LDA $A7                     ; $29:DEB2: A5 A7       ;
CODE_29DEB4:    SEC                         ; $29:DEB4: 38          ;
CODE_29DEB5:    SBC $0210                   ; $29:DEB5: ED 10 02    ;
CODE_29DEB8:    SEC                         ; $29:DEB8: 38          ;
CODE_29DEB9:    SBC #$08                    ; $29:DEB9: E9 08       ;
CODE_29DEBB:    STA $0860                   ; $29:DEBB: 8D 60 08    ;
CODE_29DEBE:    STA $0868                   ; $29:DEBE: 8D 68 08    ;
CODE_29DEC1:    CLC                         ; $29:DEC1: 18          ;
CODE_29DEC2:    ADC #$10                    ; $29:DEC2: 69 10       ;
CODE_29DEC4:    STA $0864                   ; $29:DEC4: 8D 64 08    ;
CODE_29DEC7:    STA $086C                   ; $29:DEC7: 8D 6C 08    ;
CODE_29DECA:    LDA #$27                    ; $29:DECA: A9 27       ;
CODE_29DECC:    STA $0863                   ; $29:DECC: 8D 63 08    ;
CODE_29DECF:    LDA #$67                    ; $29:DECF: A9 67       ;
CODE_29DED1:    STA $0867                   ; $29:DED1: 8D 67 08    ;
CODE_29DED4:    LDA #$A7                    ; $29:DED4: A9 A7       ;
CODE_29DED6:    STA $086B                   ; $29:DED6: 8D 6B 08    ;
CODE_29DED9:    LDA #$E7                    ; $29:DED9: A9 E7       ;
CODE_29DEDB:    STA $086F                   ; $29:DEDB: 8D 6F 08    ;
CODE_29DEDE:    LDA $0423                   ; $29:DEDE: AD 23 04    ;
CODE_29DEE1:    AND #$1C                    ; $29:DEE1: 29 1C       ;
CODE_29DEE3:    LSR A                       ; $29:DEE3: 4A          ;
CODE_29DEE4:    LSR A                       ; $29:DEE4: 4A          ;
CODE_29DEE5:    TAY                         ; $29:DEE5: A8          ;
CODE_29DEE6:    LDA.w DATA_21EF41,y                 ; $29:DEE6: B9 41 EF    ;
CODE_29DEE9:    STA $0862                   ; $29:DEE9: 8D 62 08    ;
CODE_29DEEC:    STA $0866                   ; $29:DEEC: 8D 66 08    ;
CODE_29DEEF:    STA $086A                   ; $29:DEEF: 8D 6A 08    ;
CODE_29DEF2:    STA $086E                   ; $29:DEF2: 8D 6E 08    ;
CODE_29DEF5:    LDA #$02                    ; $29:DEF5: A9 02       ;
CODE_29DEF7:    STA $0A38                   ; $29:DEF7: 8D 38 0A    ;
CODE_29DEFA:    STA $0A39                   ; $29:DEFA: 8D 39 0A    ;
CODE_29DEFD:    STA $0A3A                   ; $29:DEFD: 8D 3A 0A    ;
CODE_29DF00:    STA $0A3B                   ; $29:DF00: 8D 3B 0A    ;
CODE_29DF03:    DEC $0423                   ; $29:DF03: CE 23 04    ;
CODE_29DF06:    LDA $0423                   ; $29:DF06: AD 23 04    ;
CODE_29DF09:    BNE CODE_29DF0E             ; $29:DF09: D0 03       ;
CODE_29DF0B:    JMP CODE_29DB11             ; $29:DF0B: 4C 11 DB    ;

CODE_29DF0E:    RTS                         ; $29:DF0E: 60          ;

DATA_29DF0F:        db $00,$01,$02,$01,$02,$01,$03,$00
                    db $01,$00,$00,$00,$03,$00

CODE_29DF1D:    LDY #$C7                    ; $29:DF1D: A0 C7       ;
CODE_29DF1F:    LDA $A8                     ; $29:DF1F: A5 A8       ;
CODE_29DF21:    BEQ CODE_29DF2B             ; $29:DF21: F0 08       ;
CODE_29DF23:    LDA $15                     ; $29:DF23: A5 15       ;
CODE_29DF25:    AND #$18                    ; $29:DF25: 29 18       ;
CODE_29DF27:    BNE CODE_29DF2B             ; $29:DF27: D0 02       ;
CODE_29DF29:    LDY #$F0                    ; $29:DF29: A0 F0       ;
CODE_29DF2B:    STY $0801                   ; $29:DF2B: 8C 01 08    ;
CODE_29DF2E:    LDA $041D                   ; $29:DF2E: AD 1D 04    ;
CODE_29DF31:    CLC                         ; $29:DF31: 18          ;
CODE_29DF32:    ADC $041F                   ; $29:DF32: 6D 1F 04    ;
CODE_29DF35:    TAY                         ; $29:DF35: A8          ;
CODE_29DF36:    LDA $0726                   ; $29:DF36: AD 26 07    ;
CODE_29DF39:    BEQ CODE_29DF40             ; $29:DF39: F0 05       ;
CODE_29DF3B:    TYA                         ; $29:DF3B: 98          ;
CODE_29DF3C:    CLC                         ; $29:DF3C: 18          ;
CODE_29DF3D:    ADC #$23                    ; $29:DF3D: 69 23       ;
CODE_29DF3F:    TAY                         ; $29:DF3F: A8          ;
CODE_29DF40:    LDA $041E                   ; $29:DF40: AD 1E 04    ;
CODE_29DF43:    STA $0800                   ; $29:DF43: 8D 00 08    ;
CODE_29DF46:    REP #$20                    ; $29:DF46: C2 20       ;
CODE_29DF48:    LDA $1D80,y                 ; $29:DF48: B9 80 1D    ;
CODE_29DF4B:    AND #$00FF                  ; $29:DF4B: 29 FF 00    ;
CODE_29DF4E:    TAX                         ; $29:DF4E: AA          ;
CODE_29DF4F:    AND #$0007                  ; $29:DF4F: 29 07 00    ;
CODE_29DF52:    ASL A                       ; $29:DF52: 0A          ;
CODE_29DF53:    STA $00                     ; $29:DF53: 85 00       ;
CODE_29DF55:    TXA                         ; $29:DF55: 8A          ;
CODE_29DF56:    AND #$0008                  ; $29:DF56: 29 08 00    ;
CODE_29DF59:    ASL A                       ; $29:DF59: 0A          ;
CODE_29DF5A:    ASL A                       ; $29:DF5A: 0A          ;
CODE_29DF5B:    ORA $00                     ; $29:DF5B: 05 00       ;
CODE_29DF5D:    CLC                         ; $29:DF5D: 18          ;
CODE_29DF5E:    ADC #$00C0                  ; $29:DF5E: 69 C0 00    ;
CODE_29DF61:    STA $0802                   ; $29:DF61: 8D 02 08    ;
CODE_29DF64:    SEP #$20                    ; $29:DF64: E2 20       ;
CODE_29DF66:    LDA.l DATA_29DF0F,x                 ; $29:DF66: BF 0F DF 29 ;
CODE_29DF6A:    ASL A                       ; $29:DF6A: 0A          ;
CODE_29DF6B:    ORA #$21                    ; $29:DF6B: 09 21       ;
CODE_29DF6D:    STA $0803                   ; $29:DF6D: 8D 03 08    ;
CODE_29DF70:    LDA #$02                    ; $29:DF70: A9 02       ;
CODE_29DF72:    STA $0A20                   ; $29:DF72: 8D 20 0A    ;
CODE_29DF75:    RTS                         ; $29:DF75: 60          ;

CODE_29DF76:    LDY #$06                    ; $29:DF76: A0 06       ;
CODE_29DF78:    LDA $00                     ; $29:DF78: A5 00       ;
CODE_29DF7A:    CMP.w DATA_21EF47,y                 ; $29:DF7A: D9 47 EF    ;
CODE_29DF7D:    BEQ CODE_29DF84             ; $29:DF7D: F0 05       ;
CODE_29DF7F:    DEY                         ; $29:DF7F: 88          ;
CODE_29DF80:    BPL CODE_29DF7A             ; $29:DF80: 10 F8       ;
CODE_29DF82:    LDY #$07                    ; $29:DF82: A0 07       ;
CODE_29DF84:    STY $04                     ; $29:DF84: 84 04       ;
CODE_29DF86:    LDA $01                     ; $29:DF86: A5 01       ;
CODE_29DF88:    ASL A                       ; $29:DF88: 0A          ;
CODE_29DF89:    ASL A                       ; $29:DF89: 0A          ;
CODE_29DF8A:    ASL A                       ; $29:DF8A: 0A          ;
CODE_29DF8B:    ASL A                       ; $29:DF8B: 0A          ;
CODE_29DF8C:    STA $03                     ; $29:DF8C: 85 03       ;
CODE_29DF8E:    LDA $02                     ; $29:DF8E: A5 02       ;
CODE_29DF90:    LSR A                       ; $29:DF90: 4A          ;
CODE_29DF91:    LSR A                       ; $29:DF91: 4A          ;
CODE_29DF92:    LSR A                       ; $29:DF92: 4A          ;
CODE_29DF93:    LSR A                       ; $29:DF93: 4A          ;
CODE_29DF94:    ORA $03                     ; $29:DF94: 05 03       ;
CODE_29DF96:    TAY                         ; $29:DF96: A8          ;
CODE_29DF97:    LDX $0726                   ; $29:DF97: AE 26 07    ;
CODE_29DF9A:    BEQ CODE_29DFA1             ; $29:DF9A: F0 05       ;
CODE_29DF9C:    TYA                         ; $29:DF9C: 98          ;
CODE_29DF9D:    CLC                         ; $29:DF9D: 18          ;
CODE_29DF9E:    ADC #$40                    ; $29:DF9E: 69 40       ;
CODE_29DFA0:    TAY                         ; $29:DFA0: A8          ;
CODE_29DFA1:    LDX $04                     ; $29:DFA1: A6 04       ;
CODE_29DFA3:    LDA $1D00,y                 ; $29:DFA3: B9 00 1D    ;
CODE_29DFA6:    ORA.w DATA_21EF4E,x                 ; $29:DFA6: 1D 4E EF    ;
CODE_29DFA9:    STA $1D00,y                 ; $29:DFA9: 99 00 1D    ;
CODE_29DFAC:    RTS                         ; $29:DFAC: 60          ;

CODE_29DFAD:    JSL CODE_20804D             ; $29:DFAD: 22 4D 80 20 ;
CODE_29DFB1:    LDA $0015                   ; $29:DFB1: AD 15 00    ;
CODE_29DFB4:    AND #$01                    ; $29:DFB4: 29 01       ;
CODE_29DFB6:    BNE CODE_29DFAD             ; $29:DFB6: D0 F5       ;
CODE_29DFB8:    DEC $16                     ; $29:DFB8: C6 16       ;
CODE_29DFBA:    BNE CODE_29DFAD             ; $29:DFBA: D0 F1       ;
CODE_29DFBC:    LDA #$80                    ; $29:DFBC: A9 80       ;
CODE_29DFBE:    STA $2100                   ; $29:DFBE: 8D 00 21    ;
CODE_29DFC1:    STZ $05FC                   ; $29:DFC1: 9C FC 05    ;
CODE_29DFC4:    LDA $7E3955                 ; $29:DFC4: AF 55 39 7E ;
CODE_29DFC8:    INC A                       ; $29:DFC8: 1A          ;
CODE_29DFC9:    STA $7E3955                 ; $29:DFC9: 8F 55 39 7E ;
CODE_29DFCD:    JSR CODE_29E01B             ; $29:DFCD: 20 1B E0    ;
CODE_29DFD0:    LDA $0210                   ; $29:DFD0: AD 10 02    ;
CODE_29DFD3:    STA $7E398C                 ; $29:DFD3: 8F 8C 39 7E ;
CODE_29DFD7:    LDA $12                     ; $29:DFD7: A5 12       ;
CODE_29DFD9:    STA $7E398B                 ; $29:DFD9: 8F 8B 39 7E ;
CODE_29DFDD:    LDA $0216                   ; $29:DFDD: AD 16 02    ;
CODE_29DFE0:    STA $7E398E                 ; $29:DFE0: 8F 8E 39 7E ;
CODE_29DFE4:    LDA $13                     ; $29:DFE4: A5 13       ;
CODE_29DFE6:    STA $7E398D                 ; $29:DFE6: 8F 8D 39 7E ;
CODE_29DFEA:    LDA #$01                    ; $29:DFEA: A9 01       ;
CODE_29DFEC:    STA $0713                   ; $29:DFEC: 8D 13 07    ;
CODE_29DFEF:    LDA #$20                    ; $29:DFEF: A9 20       ;
CODE_29DFF1:    STA $0612                   ; $29:DFF1: 8D 12 06    ;
CODE_29DFF4:    LDX $25                     ; $29:DFF4: A6 25       ;
CODE_29DFF6:    BNE CODE_29E002             ; $29:DFF6: D0 0A       ;
CODE_29DFF8:    LDA $23                     ; $29:DFF8: A5 23       ;
CODE_29DFFA:    SEC                         ; $29:DFFA: 38          ;
CODE_29DFFB:    SBC #$10                    ; $29:DFFB: E9 10       ;
CODE_29DFFD:    STA $23                     ; $29:DFFD: 85 23       ;
CODE_29DFFF:    JMP CODE_29E009             ; $29:DFFF: 4C 09 E0    ;

CODE_29E002:    LDA $24                     ; $29:E002: A5 24       ;
CODE_29E004:    CLC                         ; $29:E004: 18          ;
CODE_29E005:    ADC #$10                    ; $29:E005: 69 10       ;
CODE_29E007:    STA $24                     ; $29:E007: 85 24       ;
CODE_29E009:    LDA $0414                   ; $29:E009: AD 14 04    ;
CODE_29E00C:    CMP #$02                    ; $29:E00C: C9 02       ;
CODE_29E00E:    BEQ CODE_29E017             ; $29:E00E: F0 07       ;
CODE_29E010:    LDA $7E398C                 ; $29:E010: AF 8C 39 7E ;
CODE_29E014:    STA $0210                   ; $29:E014: 8D 10 02    ;
CODE_29E017:    JML CODE_208753             ; $29:E017: 5C 53 87 20 ;

CODE_29E01B:    LDA $0414                   ; $29:E01B: AD 14 04    ;
CODE_29E01E:    JSL CODE_20FB1F         ; $29:E01E: 22 1F FB 20 ; ExecutePtrShort

PNTR_29E022:        dw $0000
                    dw CODE_29E02E
                    dw CODE_29E065
                    dw CODE_29E117
                    dw CODE_29E1D9
                    dw CODE_29E228

CODE_29E02E:    LDA $1DFE               ; $29:E02E: AD FE 1D    ;
CODE_29E032:    STA $2B                 ; $29:E032: 85 2B       ;
CODE_29E033:    STA $1EBB                   ; $29:E033: 8D BB 1E    ;
CODE_29E036:    LDA $1DFF                   ; $29:E036: AD FF 1D    ;
CODE_29E039:    STA $2C                     ; $29:E039: 85 2C       ;
CODE_29E03B:    STA $1EBC                   ; $29:E03B: 8D BC 1E    ;
CODE_29E03E:    LDA $1E00                   ; $29:E03E: AD 00 1E    ;
CODE_29E041:    STA $2D                     ; $29:E041: 85 2D       ;
CODE_29E043:    STA $1EBD                   ; $29:E043: 8D BD 1E    ;
CODE_29E046:    LDA $1E01                   ; $29:E046: AD 01 1E    ;
CODE_29E049:    STA $31                     ; $29:E049: 85 31       ;
CODE_29E04B:    STA $023A                   ; $29:E04B: 8D 3A 02    ;
CODE_29E04E:    LDA $1E02                   ; $29:E04E: AD 02 1E    ;
CODE_29E051:    STA $32                     ; $29:E051: 85 32       ;
CODE_29E053:    STA $023B                   ; $29:E053: 8D 3B 02    ;
CODE_29E056:    LDA $1EBA                   ; $29:E056: AD BA 1E    ;
CODE_29E059:    STA $070A                   ; $29:E059: 8D 0A 07    ;
CODE_29E05C:    LDA $0415                   ; $29:E05C: AD 15 04    ;
CODE_29E05F:    EOR #$01                    ; $29:E05F: 49 01       ;
CODE_29E061:    STA $0415                   ; $29:E061: 8D 15 04    ;
CODE_29E064:    RTS                         ; $29:E064: 60          ;

CODE_29E065:    LDA $1EB8                   ; $29:E065: AD B8 1E    ;
CODE_29E068:    EOR #$01                    ; $29:E068: 49 01       ;
CODE_29E06A:    STA $1EB8                   ; $29:E06A: 8D B8 1E    ;
CODE_29E06D:    BNE CODE_29E072             ; $29:E06D: D0 03       ;
CODE_29E06F:    BRL CODE_29E0F5             ; $29:E06F: 82 83 00    ;

CODE_29E072:    LDA $070A                   ; $29:E072: AD 0A 07    ;
CODE_29E075:    STA $1EB9                   ; $29:E075: 8D B9 1E    ;
CODE_29E078:    LDY $0727                   ; $29:E078: AC 27 07    ;
CODE_29E07B:    LDA.w DATA_21EF86,y                 ; $29:E07B: B9 86 EF    ;
CODE_29E07E:    STA $070A                   ; $29:E07E: 8D 0A 07    ;
CODE_29E081:    TYA                         ; $29:E081: 98          ;
CODE_29E082:    STA $00                     ; $29:E082: 85 00       ;
CODE_29E084:    ASL A                       ; $29:E084: 0A          ;
CODE_29E085:    CLC                         ; $29:E085: 18          ;
CODE_29E086:    ADC $00                     ; $29:E086: 65 00       ;
CODE_29E088:    TAY                         ; $29:E088: A8          ;
CODE_29E089:    LDA.w DATA_21EF56,y                 ; $29:E089: B9 56 EF    ;
CODE_29E08C:    STA $2B                     ; $29:E08C: 85 2B       ;
CODE_29E08E:    LDA.w DATA_21EF56+1,y                   ; $29:E08E: B9 57 EF    ;
CODE_29E091:    STA $2C                     ; $29:E091: 85 2C       ;
CODE_29E093:    LDA.w DATA_21EF56+2,y                   ; $29:E093: B9 58 EF    ;
CODE_29E096:    STA $2D                     ; $29:E096: 85 2D       ;
CODE_29E098:    LDA.w DATA_21EF6E,y                 ; $29:E098: B9 6E EF    ;
CODE_29E09B:    STA $31                     ; $29:E09B: 85 31       ;
CODE_29E09D:    LDA.w DATA_21EF6E+1,y                   ; $29:E09D: B9 6F EF    ;
CODE_29E0A0:    STA $32                     ; $29:E0A0: 85 32       ;
CODE_29E0A2:    LDX $43                     ; $29:E0A2: A6 43       ;
CODE_29E0A4:    LDA $1F66,x                 ; $29:E0A4: BD 66 1F    ;
CODE_29E0A7:    PHA                         ; $29:E0A7: 48          ;
CODE_29E0A8:    AND #$0F                    ; $29:E0A8: 29 0F       ;
CODE_29E0AA:    STA $43                     ; $29:E0AA: 85 43       ;
CODE_29E0AC:    STA $12                     ; $29:E0AC: 85 12       ;
CODE_29E0AE:    PLA                         ; $29:E0AE: 68          ;
CODE_29E0AF:    AND #$F0                    ; $29:E0AF: 29 F0       ;
CODE_29E0B1:    ORA #$08                    ; $29:E0B1: 09 08       ;
CODE_29E0B3:    STA $5E                     ; $29:E0B3: 85 5E       ;
CODE_29E0B5:    LDA $1F56,x                 ; $29:E0B5: BD 56 1F    ;
CODE_29E0B8:    PHA                         ; $29:E0B8: 48          ;
CODE_29E0B9:    PHA                         ; $29:E0B9: 48          ;
CODE_29E0BA:    AND #$0F                    ; $29:E0BA: 29 0F       ;
CODE_29E0BC:    STA $0377                   ; $29:E0BC: 8D 77 03    ;
CODE_29E0BF:    CMP #$03                    ; $29:E0BF: C9 03       ;
CODE_29E0C1:    BCC CODE_29E0C9             ; $29:E0C1: 90 06       ;
CODE_29E0C3:    LDA $5E                     ; $29:E0C3: A5 5E       ;
CODE_29E0C5:    AND #$F0                    ; $29:E0C5: 29 F0       ;
CODE_29E0C7:    STA $5E                     ; $29:E0C7: 85 5E       ;
CODE_29E0C9:    PLA                         ; $29:E0C9: 68          ;
CODE_29E0CA:    AND #$80                    ; $29:E0CA: 29 80       ;
CODE_29E0CC:    STA $0378                   ; $29:E0CC: 8D 78 03    ;
CODE_29E0CF:    STA $0425                   ; $29:E0CF: 8D 25 04    ;
CODE_29E0D2:    PLA                         ; $29:E0D2: 68          ;
CODE_29E0D3:    AND #$70                    ; $29:E0D3: 29 70       ;
CODE_29E0D5:    LSR A                       ; $29:E0D5: 4A          ;
CODE_29E0D6:    LSR A                       ; $29:E0D6: 4A          ;
CODE_29E0D7:    LSR A                       ; $29:E0D7: 4A          ;
CODE_29E0D8:    LSR A                       ; $29:E0D8: 4A          ;
CODE_29E0D9:    TAY                         ; $29:E0D9: A8          ;
CODE_29E0DA:    LDA.w DATA_21EF8E,y                 ; $29:E0DA: B9 8E EF    ;
CODE_29E0DD:    PHA                         ; $29:E0DD: 48          ;
CODE_29E0DE:    AND #$0F                    ; $29:E0DE: 29 0F       ;
CODE_29E0E0:    STA $55                     ; $29:E0E0: 85 55       ;
CODE_29E0E2:    PLA                         ; $29:E0E2: 68          ;
CODE_29E0E3:    AND #$F0                    ; $29:E0E3: 29 F0       ;
CODE_29E0E5:    STA $70                     ; $29:E0E5: 85 70       ;
CODE_29E0E7:    LDA.w DATA_21EF96,y                 ; $29:E0E7: B9 96 EF    ;
CODE_29E0EA:    STA $0216                   ; $29:E0EA: 8D 16 02    ;
CODE_29E0ED:    LDA #$00                    ; $29:E0ED: A9 00       ;
CODE_29E0EF:    STA $0210                   ; $29:E0EF: 8D 10 02    ;
CODE_29E0F2:    JMP CODE_29E1CD             ; $29:E0F2: 4C CD E1    ;

CODE_29E0F5:    LDA $1EB9                   ; $29:E0F5: AD B9 1E    ;
CODE_29E0F8:    STA $070A                   ; $29:E0F8: 8D 0A 07    ;
CODE_29E0FB:    LDA $1EBB                   ; $29:E0FB: AD BB 1E    ;
CODE_29E0FE:    STA $2B                     ; $29:E0FE: 85 2B       ;
CODE_29E100:    LDA $1EBC                   ; $29:E100: AD BC 1E    ;
CODE_29E103:    STA $2C                     ; $29:E103: 85 2C       ;
CODE_29E105:    LDA $1EBD                   ; $29:E105: AD BD 1E    ;
CODE_29E108:    STA $2D                     ; $29:E108: 85 2D       ;
CODE_29E10A:    LDA $023A                   ; $29:E10A: AD 3A 02    ;
CODE_29E10D:    STA $31                     ; $29:E10D: 85 31       ;
CODE_29E10F:    LDA $023B                   ; $29:E10F: AD 3B 02    ;
CODE_29E112:    STA $32                     ; $29:E112: 85 32       ;
CODE_29E114:    JMP CODE_29E11A             ; $29:E114: 4C 1A E1    ;

CODE_29E117:    JSR CODE_29E02E             ; $29:E117: 20 2E E0    ;
CODE_29E11A:    LDX $43                     ; $29:E11A: A6 43       ;
CODE_29E11C:    LDA $0425                   ; $29:E11C: AD 25 04    ;
CODE_29E11F:    BEQ CODE_29E12B             ; $29:E11F: F0 0A       ;
CODE_29E121:    LDY $55                     ; $29:E121: A4 55       ;
CODE_29E123:    LDA $70                     ; $29:E123: A5 70       ;
CODE_29E125:    JSL CODE_209FC1             ; $29:E125: 22 C1 9F 20 ;
CODE_29E129:    TYA                         ; $29:E129: 98          ;
CODE_29E12A:    TAX                         ; $29:E12A: AA          ;
CODE_29E12B:    LDA $1F66,x                 ; $29:E12B: BD 66 1F    ;
CODE_29E12E:    PHA                         ; $29:E12E: 48          ;
CODE_29E12F:    AND #$0F                    ; $29:E12F: 29 0F       ;
CODE_29E131:    STA $43                     ; $29:E131: 85 43       ;
CODE_29E133:    PLA                         ; $29:E133: 68          ;
CODE_29E134:    AND #$F0                    ; $29:E134: 29 F0       ;
CODE_29E136:    ORA #$08                    ; $29:E136: 09 08       ;
CODE_29E138:    STA $5E                     ; $29:E138: 85 5E       ;
CODE_29E13A:    LDA $1F56,x                 ; $29:E13A: BD 56 1F    ;
CODE_29E13D:    PHA                         ; $29:E13D: 48          ;
CODE_29E13E:    PHA                         ; $29:E13E: 48          ;
CODE_29E13F:    AND #$0F                    ; $29:E13F: 29 0F       ;
CODE_29E141:    STA $0377                   ; $29:E141: 8D 77 03    ;
CODE_29E144:    CMP #$03                    ; $29:E144: C9 03       ;
CODE_29E146:    BCC CODE_29E14E             ; $29:E146: 90 06       ;
CODE_29E148:    LDA $5E                     ; $29:E148: A5 5E       ;
CODE_29E14A:    AND #$F0                    ; $29:E14A: 29 F0       ;
CODE_29E14C:    STA $5E                     ; $29:E14C: 85 5E       ;
CODE_29E14E:    PLA                         ; $29:E14E: 68          ;
CODE_29E14F:    AND #$80                    ; $29:E14F: 29 80       ;
CODE_29E151:    STA $0378                   ; $29:E151: 8D 78 03    ;
CODE_29E154:    STA $0425                   ; $29:E154: 8D 25 04    ;
CODE_29E157:    PLA                         ; $29:E157: 68          ;
CODE_29E158:    AND #$70                    ; $29:E158: 29 70       ;
CODE_29E15A:    LSR A                       ; $29:E15A: 4A          ;
CODE_29E15B:    LSR A                       ; $29:E15B: 4A          ;
CODE_29E15C:    LSR A                       ; $29:E15C: 4A          ;
CODE_29E15D:    LSR A                       ; $29:E15D: 4A          ;
CODE_29E15E:    TAY                         ; $29:E15E: A8          ;
CODE_29E15F:    LDA.w DATA_21EF8E,y                 ; $29:E15F: B9 8E EF    ;
CODE_29E162:    PHA                         ; $29:E162: 48          ;
CODE_29E163:    AND #$0F                    ; $29:E163: 29 0F       ;
CODE_29E165:    STA $55                     ; $29:E165: 85 55       ;
CODE_29E167:    PLA                         ; $29:E167: 68          ;
CODE_29E168:    AND #$F0                    ; $29:E168: 29 F0       ;
CODE_29E16A:    STA $70                     ; $29:E16A: 85 70       ;
CODE_29E16C:    LDA.w DATA_21EF96,y                 ; $29:E16C: B9 96 EF    ;
CODE_29E16F:    STA $0216                   ; $29:E16F: 8D 16 02    ;
CODE_29E172:    REP #$20                    ; $29:E172: C2 20       ;
CODE_29E174:    LDA $0216                   ; $29:E174: AD 16 02    ;
CODE_29E177:    LSR A                       ; $29:E177: 4A          ;
CODE_29E178:    LSR A                       ; $29:E178: 4A          ;
CODE_29E179:    STA $0218                   ; $29:E179: 8D 18 02    ;
CODE_29E17C:    LDA $0216                   ; $29:E17C: AD 16 02    ;
CODE_29E17F:    SEC                         ; $29:E17F: 38          ;
CODE_29E180:    SBC $0218                   ; $29:E180: ED 18 02    ;
CODE_29E183:    STA $0218                   ; $29:E183: 8D 18 02    ;
CODE_29E186:    SEP #$20                    ; $29:E186: E2 20       ;
CODE_29E188:    STZ $0210                   ; $29:E188: 9C 10 02    ;
CODE_29E18B:    STZ $0211                   ; $29:E18B: 9C 11 02    ;
CODE_29E18E:    STZ $12                     ; $29:E18E: 64 12       ;
CODE_29E190:    STZ $13                     ; $29:E190: 64 13       ;
CODE_29E192:    STZ $0212                   ; $29:E192: 9C 12 02    ;
CODE_29E195:    STZ $0213                   ; $29:E195: 9C 13 02    ;
CODE_29E198:    LDA $0378                   ; $29:E198: AD 78 03    ;
CODE_29E19B:    BNE CODE_29E1CD             ; $29:E19B: D0 30       ;
CODE_29E19D:    LDA $43                     ; $29:E19D: A5 43       ;
CODE_29E19F:    STA $12                     ; $29:E19F: 85 12       ;
CODE_29E1A1:    BNE CODE_29E1A9             ; $29:E1A1: D0 06       ;
CODE_29E1A3:    LDA $5E                     ; $29:E1A3: A5 5E       ;
CODE_29E1A5:    CMP #$80                    ; $29:E1A5: C9 80       ;
CODE_29E1A7:    BCC CODE_29E1C4             ; $29:E1A7: 90 1B       ;
CODE_29E1A9:    LDA $5E                     ; $29:E1A9: A5 5E       ;
CODE_29E1AB:    SEC                         ; $29:E1AB: 38          ;
CODE_29E1AC:    SBC #$80                    ; $29:E1AC: E9 80       ;
CODE_29E1AE:    STA $0210                   ; $29:E1AE: 8D 10 02    ;
CODE_29E1B1:    STA $0212                   ; $29:E1B1: 8D 12 02    ;
CODE_29E1B4:    LDA $12                     ; $29:E1B4: A5 12       ;
CODE_29E1B6:    SBC #$00                    ; $29:E1B6: E9 00       ;
CODE_29E1B8:    STA $12                     ; $29:E1B8: 85 12       ;
CODE_29E1BA:    STA $0211                   ; $29:E1BA: 8D 11 02    ;
CODE_29E1BD:    LSR A                       ; $29:E1BD: 4A          ;
CODE_29E1BE:    STA $0213                   ; $29:E1BE: 8D 13 02    ;
CODE_29E1C1:    ROR $0212                   ; $29:E1C1: 6E 12 02    ;
CODE_29E1C4:    LDA $55                     ; $29:E1C4: A5 55       ;
CODE_29E1C6:    BEQ CODE_29E1CD             ; $29:E1C6: F0 05       ;
CODE_29E1C8:    LDA #$EF                    ; $29:E1C8: A9 EF       ;
CODE_29E1CA:    STA $0216                   ; $29:E1CA: 8D 16 02    ;
CODE_29E1CD:    LDA $0210                   ; $29:E1CD: AD 10 02    ;
CODE_29E1D0:    STA $B7                     ; $29:E1D0: 85 B7       ;
CODE_29E1D2:    LDA $12                     ; $29:E1D2: A5 12       ;
CODE_29E1D4:    JSL CODE_2097F5             ; $29:E1D4: 22 F5 97 20 ;
CODE_29E1D8:    RTS                         ; $29:E1D8: 60          ;

CODE_29E1D9:    LDY $0727                   ; $29:E1D9: AC 27 07    ;
CODE_29E1DC:    LDA.w DATA_21EFCE,y                 ; $29:E1DC: B9 CE EF    ;
CODE_29E1DF:    STA $070A                   ; $29:E1DF: 8D 0A 07    ;
CODE_29E1E2:    TYA                         ; $29:E1E2: 98          ;
CODE_29E1E3:    STA $00                     ; $29:E1E3: 85 00       ;
CODE_29E1E5:    ASL A                       ; $29:E1E5: 0A          ;
CODE_29E1E6:    CLC                         ; $29:E1E6: 18          ;
CODE_29E1E7:    ADC $00                     ; $29:E1E7: 65 00       ;
CODE_29E1E9:    TAY                         ; $29:E1E9: A8          ;
CODE_29E1EA:    LDA.w DATA_21EF9E,y                 ; $29:E1EA: B9 9E EF    ;
CODE_29E1ED:    STA $2B                     ; $29:E1ED: 85 2B       ;
CODE_29E1EF:    LDA.w DATA_21EF9E+1,y                   ; $29:E1EF: B9 9F EF    ;
CODE_29E1F2:    STA $2C                     ; $29:E1F2: 85 2C       ;
CODE_29E1F4:    LDA.w DATA_21EF9E+2,y                   ; $29:E1F4: B9 A0 EF    ;
CODE_29E1F7:    STA $2D                     ; $29:E1F7: 85 2D       ;
CODE_29E1F9:    LDA.w DATA_21EFB6,y                 ; $29:E1F9: B9 B6 EF    ;
CODE_29E1FC:    STA $31                     ; $29:E1FC: 85 31       ;
CODE_29E1FE:    LDA.w DATA_21EFB6+1,y                   ; $29:E1FE: B9 B7 EF    ;
CODE_29E201:    STA $32                     ; $29:E201: 85 32       ;
CODE_29E203:    LDA #$00                    ; $29:E203: A9 00       ;
CODE_29E205:    STA $43                     ; $29:E205: 85 43       ;
CODE_29E207:    STA $0210                   ; $29:E207: 8D 10 02    ;
CODE_29E20A:    STA $13                     ; $29:E20A: 85 13       ;
CODE_29E20C:    STA $12                     ; $29:E20C: 85 12       ;
CODE_29E20E:    STA $0425                   ; $29:E20E: 8D 25 04    ;
CODE_29E211:    LDA #$EF                    ; $29:E211: A9 EF       ;
CODE_29E213:    STA $0216                   ; $29:E213: 8D 16 02    ;
CODE_29E216:    LDA #$28                    ; $29:E216: A9 28       ;
CODE_29E218:    STA $5E                     ; $29:E218: 85 5E       ;
CODE_29E21A:    LDA #$01                    ; $29:E21A: A9 01       ;
CODE_29E21C:    STA $55                     ; $29:E21C: 85 55       ;
CODE_29E21E:    STA $0377                   ; $29:E21E: 8D 77 03    ;
CODE_29E221:    LDA #$80                    ; $29:E221: A9 80       ;
CODE_29E223:    STA $70                     ; $29:E223: 85 70       ;
CODE_29E225:    JMP CODE_29E1CD             ; $29:E225: 4C CD E1    ;

CODE_29E228:    LDA #$00                    ; $29:E228: A9 00       ;
CODE_29E22A:    STA $0210                   ; $29:E22A: 8D 10 02    ;
CODE_29E22D:    STA $12                     ; $29:E22D: 85 12       ;
CODE_29E22F:    STA $13                     ; $29:E22F: 85 13       ;
CODE_29E231:    STA $43                     ; $29:E231: 85 43       ;
CODE_29E233:    STA $0425                   ; $29:E233: 8D 25 04    ;
CODE_29E236:    LDA #$20                    ; $29:E236: A9 20       ;
CODE_29E238:    STA $5E                     ; $29:E238: 85 5E       ;
CODE_29E23A:    LDA #$01                    ; $29:E23A: A9 01       ;
CODE_29E23C:    STA $55                     ; $29:E23C: 85 55       ;
CODE_29E23E:    LDA #$40                    ; $29:E23E: A9 40       ;
CODE_29E240:    STA $70                     ; $29:E240: 85 70       ;
CODE_29E242:    LDA #$07                    ; $29:E242: A9 07       ;
CODE_29E244:    STA $070A                   ; $29:E244: 8D 0A 07    ;
CODE_29E247:    JMP CODE_29E1CD             ; $29:E247: 4C CD E1    ;

CODE_29E24A:    LDA #$04                    ; $29:E24A: A9 04       ;
CODE_29E24C:    STA $101D                   ; $29:E24C: 8D 1D 10    ;
CODE_29E24F:    STA $101C                   ; $29:E24F: 8D 1C 10    ;
CODE_29E252:    INC $101B                   ; $29:E252: EE 1B 10    ;
CODE_29E255:    RTS                         ; $29:E255: 60          ;

CODE_29E256:    LDA $15                     ; $29:E256: A5 15       ;
CODE_29E258:    AND #$01                    ; $29:E258: 29 01       ;
CODE_29E25A:    BNE CODE_29E26A             ; $29:E25A: D0 0E       ;
CODE_29E25C:    INC $16                     ; $29:E25C: E6 16       ;
CODE_29E25E:    LDA $16                     ; $29:E25E: A5 16       ;
CODE_29E260:    CMP #$0F                    ; $29:E260: C9 0F       ;
CODE_29E262:    BNE CODE_29E26A             ; $29:E262: D0 06       ;
CODE_29E264:    STZ $101D                   ; $29:E264: 9C 1D 10    ;
CODE_29E267:    STZ $101B                   ; $29:E267: 9C 1B 10    ;
CODE_29E26A:    RTS                         ; $29:E26A: 60          ;

CODE_29E26B:    LDA $101E                   ; $29:E26B: AD 1E 10    ;
CODE_29E26E:    BNE CODE_29E273             ; $29:E26E: D0 03       ;
CODE_29E270:    JSR CODE_29E24A             ; $29:E270: 20 4A E2    ;
CODE_29E273:    RTL                         ; $29:E273: 6B          ;

CODE_29E274:    LDA $101E                   ; $29:E274: AD 1E 10    ;
CODE_29E277:    BNE CODE_29E294             ; $29:E277: D0 1B       ;
CODE_29E279:    LDA $101C                   ; $29:E279: AD 1C 10    ;
CODE_29E27C:    BEQ CODE_29E281             ; $29:E27C: F0 03       ;
CODE_29E27E:    DEC $101C                   ; $29:E27E: CE 1C 10    ;
CODE_29E281:    LDA $101D                   ; $29:E281: AD 1D 10    ;
CODE_29E284:    BEQ CODE_29E294             ; $29:E284: F0 0E       ;
CODE_29E286:    LDA $101C                   ; $29:E286: AD 1C 10    ;
CODE_29E289:    BNE CODE_29E293             ; $29:E289: D0 08       ;
CODE_29E28B:    LDA #$04                    ; $29:E28B: A9 04       ;
CODE_29E28D:    STA $101C                   ; $29:E28D: 8D 1C 10    ;
CODE_29E290:    DEC $101D                   ; $29:E290: CE 1D 10    ;
CODE_29E293:    RTS                         ; $29:E293: 60          ;

CODE_29E294:    LDA #$00                    ; $29:E294: A9 00       ;
CODE_29E296:    STA $101B                   ; $29:E296: 8D 1B 10    ;
CODE_29E299:    STA $101E                   ; $29:E299: 8D 1E 10    ;
CODE_29E29C:    RTS                         ; $29:E29C: 60          ;

CODE_29E29D:    JSR CODE_29E24A             ; $29:E29D: 20 4A E2    ;
CODE_29E2A0:    LDA #$80                    ; $29:E2A0: A9 80       ;
CODE_29E2A2:    STA $4200                   ; $29:E2A2: 8D 00 42    ;
CODE_29E2A5:    LDA #$00                    ; $29:E2A5: A9 00       ;
CODE_29E2A7:    STA $16                     ; $29:E2A7: 85 16       ;
CODE_29E2A9:    JSL CODE_20804D             ; $29:E2A9: 22 4D 80 20 ;
CODE_29E2AD:    JSR CODE_29E256             ; $29:E2AD: 20 56 E2    ;
CODE_29E2B0:    LDA $101D                   ; $29:E2B0: AD 1D 10    ;
CODE_29E2B3:    BNE CODE_29E2A9             ; $29:E2B3: D0 F4       ;
CODE_29E2B5:    RTL                         ; $29:E2B5: 6B          ;

CODE_29E2B6:    JSL CODE_29E26B             ; $29:E2B6: 22 6B E2 29 ;
CODE_29E2BA:    LDA #$A0                    ; $29:E2BA: A9 A0       ;
CODE_29E2BC:    STA $4200                   ; $29:E2BC: 8D 00 42    ;
CODE_29E2BF:    LDA #$0F                    ; $29:E2BF: A9 0F       ;
CODE_29E2C1:    STA $16                     ; $29:E2C1: 85 16       ;
CODE_29E2C3:    LDA #$07                    ; $29:E2C3: A9 07       ;
CODE_29E2C5:    STA $020D                   ; $29:E2C5: 8D 0D 02    ;
CODE_29E2C8:    JSL CODE_20804D             ; $29:E2C8: 22 4D 80 20 ;
CODE_29E2CC:    LDA $15                     ; $29:E2CC: A5 15       ;
CODE_29E2CE:    AND #$01                    ; $29:E2CE: 29 01       ;
CODE_29E2D0:    BNE CODE_29E2C8             ; $29:E2D0: D0 F6       ;
CODE_29E2D2:    LDA $0350                   ; $29:E2D2: AD 50 03    ;
CODE_29E2D5:    CMP #$1B                    ; $29:E2D5: C9 1B       ;
CODE_29E2D7:    BNE CODE_29E2E7             ; $29:E2D7: D0 0E       ;
CODE_29E2D9:    LDA $078E                   ; $29:E2D9: AD 8E 07    ;
CODE_29E2DC:    BEQ CODE_29E2E7             ; $29:E2DC: F0 09       ;
CODE_29E2DE:    LDA $020D                   ; $29:E2DE: AD 0D 02    ;
CODE_29E2E1:    CLC                         ; $29:E2E1: 18          ;
CODE_29E2E2:    ADC #$10                    ; $29:E2E2: 69 10       ;
CODE_29E2E4:    STA $020D                   ; $29:E2E4: 8D 0D 02    ;
CODE_29E2E7:    DEC $16                     ; $29:E2E7: C6 16       ;
CODE_29E2E9:    LDA $16                     ; $29:E2E9: A5 16       ;
CODE_29E2EB:    BNE CODE_29E2C8             ; $29:E2EB: D0 DB       ;
CODE_29E2ED:    JSL CODE_20804D             ; $29:E2ED: 22 4D 80 20 ;
CODE_29E2F1:    RTL                         ; $29:E2F1: 6B          ;

CODE_29E2F2:    PHB                         ; $29:E2F2: 8B          ;
CODE_29E2F3:    LDA #$21                ; $29:E2F3: A9 21       ;
CODE_29E2F5:    PHA                         ; $29:E2F5: 48          ;
CODE_29E2F6:    PLB                     ; $29:E2F6: AB          ; Data bank: $21
CODE_29E2F7:    LDX $104F                   ; $29:E2F7: AE 4F 10    ;
CODE_29E2FA:    LDA $1047,x                 ; $29:E2FA: BD 47 10    ;
CODE_29E2FD:    STA $1051                   ; $29:E2FD: 8D 51 10    ;
CODE_29E300:    LDA $104B,x                 ; $29:E300: BD 4B 10    ;
CODE_29E303:    STA $1053                   ; $29:E303: 8D 53 10    ;
CODE_29E306:    LDY $1045                   ; $29:E306: AC 45 10    ;
CODE_29E309:    LDX #$80                    ; $29:E309: A2 80       ;
CODE_29E30B:    LDA $104F                   ; $29:E30B: AD 4F 10    ;
CODE_29E30E:    AND #$02                    ; $29:E30E: 29 02       ;
CODE_29E310:    BEQ CODE_29E317             ; $29:E310: F0 05       ;
CODE_29E312:    LDY $1046                   ; $29:E312: AC 46 10    ;
CODE_29E315:    LDX #$81                    ; $29:E315: A2 81       ;
CODE_29E317:    STX $2115                   ; $29:E317: 8E 15 21    ;
CODE_29E31A:    STX $FF                     ; $29:E31A: 86 FF       ;
CODE_29E31C:    LDA $1053                   ; $29:E31C: AD 53 10    ;
CODE_29E31F:    STA $2116                   ; $29:E31F: 8D 16 21    ;
CODE_29E322:    LDA $1051                   ; $29:E322: AD 51 10    ;
CODE_29E325:    STA $2117                   ; $29:E325: 8D 17 21    ;
CODE_29E328:    LDA #$FF                    ; $29:E328: A9 FF       ;
CODE_29E32A:    STA $2118                   ; $29:E32A: 8D 18 21    ;
CODE_29E32D:    LDA #$00                    ; $29:E32D: A9 00       ;
CODE_29E32F:    STA $2119                   ; $29:E32F: 8D 19 21    ;
CODE_29E332:    LDA $104F                   ; $29:E332: AD 4F 10    ;
CODE_29E335:    AND #$02                    ; $29:E335: 29 02       ;
CODE_29E337:    BNE CODE_29E356             ; $29:E337: D0 1D       ;
CODE_29E339:    INC $1053                   ; $29:E339: EE 53 10    ;
CODE_29E33C:    LDA $1053                   ; $29:E33C: AD 53 10    ;
CODE_29E33F:    AND #$1F                    ; $29:E33F: 29 1F       ;
CODE_29E341:    BNE CODE_29E37D             ; $29:E341: D0 3A       ;
CODE_29E343:    LDA $1053                   ; $29:E343: AD 53 10    ;
CODE_29E346:    SEC                         ; $29:E346: 38          ;
CODE_29E347:    SBC #$20                    ; $29:E347: E9 20       ;
CODE_29E349:    STA $1053                   ; $29:E349: 8D 53 10    ;
CODE_29E34C:    LDA $1051                   ; $29:E34C: AD 51 10    ;
CODE_29E34F:    EOR #$04                    ; $29:E34F: 49 04       ;
CODE_29E351:    STA $1051                   ; $29:E351: 8D 51 10    ;
CODE_29E354:    BRA CODE_29E378             ; $29:E354: 80 22       ;

CODE_29E356:    LDA $1053                   ; $29:E356: AD 53 10    ;
CODE_29E359:    CLC                         ; $29:E359: 18          ;
CODE_29E35A:    ADC #$20                    ; $29:E35A: 69 20       ;
CODE_29E35C:    STA $1053                   ; $29:E35C: 8D 53 10    ;
CODE_29E35F:    AND #$E0                    ; $29:E35F: 29 E0       ;
CODE_29E361:    BNE CODE_29E37D             ; $29:E361: D0 1A       ;
CODE_29E363:    LDA $1051                   ; $29:E363: AD 51 10    ;
CODE_29E366:    ADC #$00                    ; $29:E366: 69 00       ;
CODE_29E368:    STA $1051                   ; $29:E368: 8D 51 10    ;
CODE_29E36B:    AND #$03                    ; $29:E36B: 29 03       ;
CODE_29E36D:    BNE CODE_29E37D             ; $29:E36D: D0 0E       ;
CODE_29E36F:    LDA $1051                   ; $29:E36F: AD 51 10    ;
CODE_29E372:    CLC                         ; $29:E372: 18          ;
CODE_29E373:    ADC #$04                    ; $29:E373: 69 04       ;
CODE_29E375:    STA $1051                   ; $29:E375: 8D 51 10    ;
CODE_29E378:    DEY                         ; $29:E378: 88          ;
CODE_29E379:    BPL CODE_29E317             ; $29:E379: 10 9C       ;
CODE_29E37B:    BRA CODE_29E380             ; $29:E37B: 80 03       ;

CODE_29E37D:    DEY                         ; $29:E37D: 88          ;
CODE_29E37E:    BPL CODE_29E328             ; $29:E37E: 10 A8       ;
CODE_29E380:    JSR CODE_29E3B7             ; $29:E380: 20 B7 E3    ;
CODE_29E383:    INC $104F                   ; $29:E383: EE 4F 10    ;
CODE_29E386:    LDA $104F                   ; $29:E386: AD 4F 10    ;
CODE_29E389:    AND #$03                    ; $29:E389: 29 03       ;
CODE_29E38B:    STA $104F                   ; $29:E38B: 8D 4F 10    ;
CODE_29E38E:    LDY $1050                   ; $29:E38E: AC 50 10    ;
CODE_29E391:    CPY #$06                    ; $29:E391: C0 06       ;
CODE_29E393:    BCS CODE_29E3B5                     ; $29:E393: B0 20       ;
CODE_29E395:    LDA $FF                     ; $29:E395: A5 FF       ;
CODE_29E397:    AND #$01                    ; $29:E397: 29 01       ;
CODE_29E399:    BNE CODE_29E3B5             ; $29:E399: D0 1A       ;
CODE_29E39B:    LDX #$1F                    ; $29:E39B: A2 1F       ;
CODE_29E39D:    LDA #$7B                    ; $29:E39D: A9 7B       ;
CODE_29E39F:    STA $2117                   ; $29:E39F: 8D 17 21    ;
CODE_29E3A2:    LDA.w DATA_21EFD6,y                 ; $29:E3A2: B9 D6 EF    ;
CODE_29E3A5:    STA $2116                   ; $29:E3A5: 8D 16 21    ;
CODE_29E3A8:    LDA #$FF                    ; $29:E3A8: A9 FF       ;
CODE_29E3AA:    STA $2118                   ; $29:E3AA: 8D 18 21    ;
CODE_29E3AD:    LDA #$00                    ; $29:E3AD: A9 00       ;
CODE_29E3AF:    STA $2119                   ; $29:E3AF: 8D 19 21    ;
CODE_29E3B2:    DEX                         ; $29:E3B2: CA          ;
CODE_29E3B3:    BPL CODE_29E3A8             ; $29:E3B3: 10 F3       ;
CODE_29E3B5:    PLB                     ; $29:E3B5: AB          ;
CODE_29E3B6:    RTL                         ; $29:E3B6: 6B          ;

CODE_29E3B7:    LDA $104F                   ; $29:E3B7: AD 4F 10    ;
CODE_29E3BA:    JSL CODE_20FB1F         ; $29:E3BA: 22 1F FB 20 ; ExecutePtrShort

PNTR_29E3BE:        dw CODE_29E3C6
                    dw CODE_29E429
                    dw CODE_29E405
                    dw CODE_29E444

CODE_29E3C6:    LDX $104F               ; $29:E3C6: AE 4F 10    ;
CODE_29E3C9:    LDA $104B,x             ; $29:E3C9: BD 4B 10    ;
CODE_29E3CC:    AND #$1F                ; $29:E3CC: 29 1F       ;
CODE_29E3CE:    CMP #$1F                ; $29:E3CE: C9 1F       ;
CODE_29E3D0:    BEQ CODE_29E3F3         ; $29:E3D0: F0 21       ;
CODE_29E3D2:    LDA $104B,x             ; $29:E3D2: BD 4B 10    ;
CODE_29E3D5:    CLC                     ; $29:E3D5: 18          ;
CODE_29E3D6:    ADC #$21                    ; $29:E3D6: 69 21       ;
CODE_29E3D8:    STA $104B,x                 ; $29:E3D8: 9D 4B 10    ;
CODE_29E3DB:    BCC CODE_29E3F2             ; $29:E3DB: 90 15       ;
CODE_29E3DD:    LDA $1047,x                 ; $29:E3DD: BD 47 10    ;
CODE_29E3E0:    ADC #$00                    ; $29:E3E0: 69 00       ;
CODE_29E3E2:    STA $1047,x                 ; $29:E3E2: 9D 47 10    ;
CODE_29E3E5:    AND #$03                    ; $29:E3E5: 29 03       ;
CODE_29E3E7:    BNE CODE_29E3F2             ; $29:E3E7: D0 09       ;
CODE_29E3E9:    LDA $1047,x                 ; $29:E3E9: BD 47 10    ;
CODE_29E3EC:    CLC                         ; $29:E3EC: 18          ;
CODE_29E3ED:    ADC #$04                    ; $29:E3ED: 69 04       ;
CODE_29E3EF:    STA $1047,x                 ; $29:E3EF: 9D 47 10    ;
CODE_29E3F2:    RTS                         ; $29:E3F2: 60          ;

CODE_29E3F3:    LDA $104B,x                 ; $29:E3F3: BD 4B 10    ;
CODE_29E3F6:    CLC                         ; $29:E3F6: 18          ;
CODE_29E3F7:    ADC #$01                    ; $29:E3F7: 69 01       ;
CODE_29E3F9:    STA $104B,x                 ; $29:E3F9: 9D 4B 10    ;
CODE_29E3FC:    LDA $1047,x                 ; $29:E3FC: BD 47 10    ;
CODE_29E3FF:    ADC #$00                    ; $29:E3FF: 69 00       ;
CODE_29E401:    STA $1047,x                 ; $29:E401: 9D 47 10    ;
CODE_29E404:    RTS                         ; $29:E404: 60          ;

CODE_29E405:    LDX $104F                   ; $29:E405: AE 4F 10    ;
CODE_29E408:    LDA $104B,x                 ; $29:E408: BD 4B 10    ;
CODE_29E40B:    CLC                         ; $29:E40B: 18          ;
CODE_29E40C:    ADC #$1F                    ; $29:E40C: 69 1F       ;
CODE_29E40E:    STA $104B,x                 ; $29:E40E: 9D 4B 10    ;
CODE_29E411:    BCC CODE_29E428             ; $29:E411: 90 15       ;
CODE_29E413:    LDA $1047,x                 ; $29:E413: BD 47 10    ;
CODE_29E416:    ADC #$00                    ; $29:E416: 69 00       ;
CODE_29E418:    STA $1047,x                 ; $29:E418: 9D 47 10    ;
CODE_29E41B:    AND #$03                    ; $29:E41B: 29 03       ;
CODE_29E41D:    BNE CODE_29E428             ; $29:E41D: D0 09       ;
CODE_29E41F:    LDA $1047,x                 ; $29:E41F: BD 47 10    ;
CODE_29E422:    CLC                         ; $29:E422: 18          ;
CODE_29E423:    ADC #$04                    ; $29:E423: 69 04       ;
CODE_29E425:    STA $1047,x                 ; $29:E425: 9D 47 10    ;
CODE_29E428:    RTS                         ; $29:E428: 60          ;

CODE_29E429:    LDX $104F                   ; $29:E429: AE 4F 10    ;
CODE_29E42C:    LDA $104B,x                 ; $29:E42C: BD 4B 10    ;
CODE_29E42F:    SEC                         ; $29:E42F: 38          ;
CODE_29E430:    SBC #$1F                    ; $29:E430: E9 1F       ;
CODE_29E432:    STA $104B,x                 ; $29:E432: 9D 4B 10    ;
CODE_29E435:    LDA $1047,x                 ; $29:E435: BD 47 10    ;
CODE_29E438:    SBC #$00                    ; $29:E438: E9 00       ;
CODE_29E43A:    STA $1047,x                 ; $29:E43A: 9D 47 10    ;
CODE_29E43D:    DEC $1045                   ; $29:E43D: CE 45 10    ;
CODE_29E440:    DEC $1045                   ; $29:E440: CE 45 10    ;
CODE_29E443:    RTS                         ; $29:E443: 60          ;

CODE_29E444:    LDX $104F                   ; $29:E444: AE 4F 10    ;
CODE_29E447:    LDA $104B,x                 ; $29:E447: BD 4B 10    ;
CODE_29E44A:    CLC                         ; $29:E44A: 18          ;
CODE_29E44B:    ADC #$21                    ; $29:E44B: 69 21       ;
CODE_29E44D:    STA $104B,x                 ; $29:E44D: 9D 4B 10    ;
CODE_29E450:    BCC CODE_29E467             ; $29:E450: 90 15       ;
CODE_29E452:    LDA $1047,x                 ; $29:E452: BD 47 10    ;
CODE_29E455:    ADC #$00                    ; $29:E455: 69 00       ;
CODE_29E457:    STA $1047,x                 ; $29:E457: 9D 47 10    ;
CODE_29E45A:    AND #$03                    ; $29:E45A: 29 03       ;
CODE_29E45C:    BNE CODE_29E467             ; $29:E45C: D0 09       ;
CODE_29E45E:    LDA $1047,x                 ; $29:E45E: BD 47 10    ;
CODE_29E461:    CLC                         ; $29:E461: 18          ;
CODE_29E462:    ADC #$04                    ; $29:E462: 69 04       ;
CODE_29E464:    STA $1047,x                 ; $29:E464: 9D 47 10    ;
CODE_29E467:    DEC $1046                   ; $29:E467: CE 46 10    ;
CODE_29E46A:    DEC $1046                   ; $29:E46A: CE 46 10    ;
CODE_29E46D:    RTS                         ; $29:E46D: 60          ;

CODE_29E46E:    PHB                         ; $29:E46E: 8B          ;
CODE_29E46F:    LDA #$21                    ; $29:E46F: A9 21       ;
CODE_29E471:    PHA                         ; $29:E471: 48          ;
CODE_29E472:    PLB                     ; $29:E472: AB          ; Data bank: $21
CODE_29E473:    LDY $1045                   ; $29:E473: AC 45 10    ;
CODE_29E476:    LDX #$80                    ; $29:E476: A2 80       ;
CODE_29E478:    LDA $104F                   ; $29:E478: AD 4F 10    ;
CODE_29E47B:    AND #$02                    ; $29:E47B: 29 02       ;
CODE_29E47D:    BEQ CODE_29E484             ; $29:E47D: F0 05       ;
CODE_29E47F:    LDY $1046                   ; $29:E47F: AC 46 10    ;
CODE_29E482:    LDX #$81                    ; $29:E482: A2 81       ;
CODE_29E484:    TYA                         ; $29:E484: 98          ;
CODE_29E485:    ASL A                       ; $29:E485: 0A          ;
CODE_29E486:    TAY                         ; $29:E486: A8          ;
CODE_29E487:    STX $FF                     ; $29:E487: 86 FF       ;
CODE_29E489:    STX $2115                   ; $29:E489: 8E 15 21    ;
CODE_29E48C:    LDX $104F                   ; $29:E48C: AE 4F 10    ;
CODE_29E48F:    LDA $1047,x                 ; $29:E48F: BD 47 10    ;
CODE_29E492:    STA $2117                   ; $29:E492: 8D 17 21    ;
CODE_29E495:    LDA $104B,x                 ; $29:E495: BD 4B 10    ;
CODE_29E498:    STA $2116                   ; $29:E498: 8D 16 21    ;
CODE_29E49B:    LDA $0382,y                 ; $29:E49B: B9 82 03    ;
CODE_29E49E:    STA $2118                   ; $29:E49E: 8D 18 21    ;
CODE_29E4A1:    LDA $0383,y                 ; $29:E4A1: B9 83 03    ;
CODE_29E4A4:    STA $2119                   ; $29:E4A4: 8D 19 21    ;
CODE_29E4A7:    CPY $105F                   ; $29:E4A7: CC 5F 10    ;
CODE_29E4AA:    BEQ CODE_29E4B3             ; $29:E4AA: F0 07       ;
CODE_29E4AC:    DEY                         ; $29:E4AC: 88          ;
CODE_29E4AD:    DEY                         ; $29:E4AD: 88          ;
CODE_29E4AE:    BPL CODE_29E49B             ; $29:E4AE: 10 EB       ;
CODE_29E4B0:    JMP CODE_29E4D7             ; $29:E4B0: 4C D7 E4    ;

CODE_29E4B3:    LDA #$FE                    ; $29:E4B3: A9 FE       ;
CODE_29E4B5:    STA $105F                   ; $29:E4B5: 8D 5F 10    ;
CODE_29E4B8:    LDA #$08                    ; $29:E4B8: A9 08       ;
CODE_29E4BA:    STA $2117                   ; $29:E4BA: 8D 17 21    ;
CODE_29E4BD:    LDA $104B,x                 ; $29:E4BD: BD 4B 10    ;
CODE_29E4C0:    AND #$1F                    ; $29:E4C0: 29 1F       ;
CODE_29E4C2:    STA $2116                   ; $29:E4C2: 8D 16 21    ;
CODE_29E4C5:    DEY                         ; $29:E4C5: 88          ;
CODE_29E4C6:    DEY                         ; $29:E4C6: 88          ;
CODE_29E4C7:    LDA $0382,y                 ; $29:E4C7: B9 82 03    ;
CODE_29E4CA:    STA $2118                   ; $29:E4CA: 8D 18 21    ;
CODE_29E4CD:    LDA $0383,y                 ; $29:E4CD: B9 83 03    ;
CODE_29E4D0:    STA $2119                   ; $29:E4D0: 8D 19 21    ;
CODE_29E4D3:    DEY                         ; $29:E4D3: 88          ;
CODE_29E4D4:    DEY                         ; $29:E4D4: 88          ;
CODE_29E4D5:    BPL CODE_29E4C7             ; $29:E4D5: 10 F0       ;
CODE_29E4D7:    JSR CODE_29E4EA             ; $29:E4D7: 20 EA E4    ;
CODE_29E4DA:    INC $104F                   ; $29:E4DA: EE 4F 10    ;
CODE_29E4DD:    LDA $104F                   ; $29:E4DD: AD 4F 10    ;
CODE_29E4E0:    AND #$03                    ; $29:E4E0: 29 03       ;
CODE_29E4E2:    STA $104F                   ; $29:E4E2: 8D 4F 10    ;
CODE_29E4E5:    INC $1050                   ; $29:E4E5: EE 50 10    ;
CODE_29E4E8:    PLB                     ; $29:E4E8: AB          ;
CODE_29E4E9:    RTL                         ; $29:E4E9: 6B          ;

CODE_29E4EA:    LDA $104F                   ; $29:E4EA: AD 4F 10    ;
CODE_29E4ED:    JSL CODE_20FB1F         ; $29:E4ED: 22 1F FB 20 ; ExecutePtrShort

PNTR_29E4F1:        dw CODE_29E4F9
                    dw CODE_29E568
                    dw CODE_29E52F
                    dw CODE_29E5B9

CODE_29E4F9:    LDY $1060               ; $29:E4F9: AC 60 10    ;
CODE_29E4FC:    LDX $104F               ; $29:E4FC: AE 4F 10    ;
CODE_29E4FF:    LDA.w DATA_21EFDC,y     ; $29:E4FF: B9 DC EF    ;
CODE_29E502:    CMP $1047,x             ; $29:E502: DD 47 10    ;
CODE_29E505:    BNE CODE_29E511             ; $29:E505: D0 0A       ;
CODE_29E507:    LDA $104B,x                 ; $29:E507: BD 4B 10    ;
CODE_29E50A:    CMP.w DATA_21EFE1,y                 ; $29:E50A: D9 E1 EF    ;
CODE_29E50D:    BCS CODE_29E511                     ; $29:E50D: B0 02       ;
CODE_29E50F:    BCC CODE_29E522             ; $29:E50F: 90 11       ;
CODE_29E511:    LDA $104B,x                 ; $29:E511: BD 4B 10    ;
CODE_29E514:    SEC                         ; $29:E514: 38          ;
CODE_29E515:    SBC #$21                    ; $29:E515: E9 21       ;
CODE_29E517:    STA $104B,x                 ; $29:E517: 9D 4B 10    ;
CODE_29E51A:    LDA $1047,x                 ; $29:E51A: BD 47 10    ;
CODE_29E51D:    SBC #$00                    ; $29:E51D: E9 00       ;
CODE_29E51F:    STA $1047,x                 ; $29:E51F: 9D 47 10    ;
CODE_29E522:    LDA $1047,x                 ; $29:E522: BD 47 10    ;
CODE_29E525:    CMP #$07                    ; $29:E525: C9 07       ;
CODE_29E527:    BNE CODE_29E52E             ; $29:E527: D0 05       ;
CODE_29E529:    LDA #$03                    ; $29:E529: A9 03       ;
CODE_29E52B:    STA $1047,x                 ; $29:E52B: 9D 47 10    ;
CODE_29E52E:    RTS                         ; $29:E52E: 60          ;

CODE_29E52F:    LDX $1060                   ; $29:E52F: AE 60 10    ;
CODE_29E532:    LDA.w DATA_21EFDC,x                 ; $29:E532: BD DC EF    ;
CODE_29E535:    LDX $104F                   ; $29:E535: AE 4F 10    ;
CODE_29E538:    CMP $1047,x                 ; $29:E538: DD 47 10    ;
CODE_29E53B:    BNE CODE_29E54A             ; $29:E53B: D0 0D       ;
CODE_29E53D:    LDA $104B,x                 ; $29:E53D: BD 4B 10    ;
CODE_29E540:    CMP #$1E                    ; $29:E540: C9 1E       ;
CODE_29E542:    BNE CODE_29E54A             ; $29:E542: D0 06       ;
CODE_29E544:    INC $104B,x                 ; $29:E544: FE 4B 10    ;
CODE_29E547:    JMP CODE_29E55B             ; $29:E547: 4C 5B E5    ;

CODE_29E54A:    LDA $104B,x                 ; $29:E54A: BD 4B 10    ;
CODE_29E54D:    SEC                         ; $29:E54D: 38          ;
CODE_29E54E:    SBC #$1F                    ; $29:E54E: E9 1F       ;
CODE_29E550:    STA $104B,x                 ; $29:E550: 9D 4B 10    ;
CODE_29E553:    LDA $1047,x                 ; $29:E553: BD 47 10    ;
CODE_29E556:    SBC #$00                    ; $29:E556: E9 00       ;
CODE_29E558:    STA $1047,x                 ; $29:E558: 9D 47 10    ;
CODE_29E55B:    LDA $1047,x                 ; $29:E55B: BD 47 10    ;
CODE_29E55E:    CMP #$07                    ; $29:E55E: C9 07       ;
CODE_29E560:    BNE CODE_29E567             ; $29:E560: D0 05       ;
CODE_29E562:    LDA #$03                    ; $29:E562: A9 03       ;
CODE_29E564:    STA $1047,x                 ; $29:E564: 9D 47 10    ;
CODE_29E567:    RTS                         ; $29:E567: 60          ;

CODE_29E568:    LDX $1060                   ; $29:E568: AE 60 10    ;
CODE_29E56B:    LDA.w DATA_21EFE6,x                 ; $29:E56B: BD E6 EF    ;
CODE_29E56E:    LDX $104F                   ; $29:E56E: AE 4F 10    ;
CODE_29E571:    CMP $1047,x                 ; $29:E571: DD 47 10    ;
CODE_29E574:    BNE CODE_29E586             ; $29:E574: D0 10       ;
CODE_29E576:    LDA $1060                   ; $29:E576: AD 60 10    ;
CODE_29E579:    CMP #$04                    ; $29:E579: C9 04       ;
CODE_29E57B:    BCC CODE_29E59D             ; $29:E57B: 90 20       ;
CODE_29E57D:    LDA $104B,x                 ; $29:E57D: BD 4B 10    ;
CODE_29E580:    CMP #$E0                    ; $29:E580: C9 E0       ;
CODE_29E582:    BCC CODE_29E586             ; $29:E582: 90 02       ;
CODE_29E584:    BCS CODE_29E59D                     ; $29:E584: B0 17       ;
CODE_29E586:    LDA $104B,x                 ; $29:E586: BD 4B 10    ;
CODE_29E589:    CLC                         ; $29:E589: 18          ;
CODE_29E58A:    ADC #$1F                    ; $29:E58A: 69 1F       ;
CODE_29E58C:    STA $104B,x                 ; $29:E58C: 9D 4B 10    ;
CODE_29E58F:    LDA $1047,x                 ; $29:E58F: BD 47 10    ;
CODE_29E592:    ADC #$00                    ; $29:E592: 69 00       ;
CODE_29E594:    STA $1047,x                 ; $29:E594: 9D 47 10    ;
CODE_29E597:    INC $1045                   ; $29:E597: EE 45 10    ;
CODE_29E59A:    INC $1045                   ; $29:E59A: EE 45 10    ;
CODE_29E59D:    LDA $1047,x                 ; $29:E59D: BD 47 10    ;
CODE_29E5A0:    CMP #$04                    ; $29:E5A0: C9 04       ;
CODE_29E5A2:    BNE CODE_29E5B8             ; $29:E5A2: D0 14       ;
CODE_29E5A4:    LDA $104B,x                 ; $29:E5A4: BD 4B 10    ;
CODE_29E5A7:    CMP #$00                    ; $29:E5A7: C9 00       ;
CODE_29E5A9:    BCC CODE_29E5B8             ; $29:E5A9: 90 0D       ;
CODE_29E5AB:    LDA #$08                    ; $29:E5AB: A9 08       ;
CODE_29E5AD:    STA $1047,x                 ; $29:E5AD: 9D 47 10    ;
CODE_29E5B0:    LDA $104B,x                 ; $29:E5B0: BD 4B 10    ;
CODE_29E5B3:    AND #$1F                    ; $29:E5B3: 29 1F       ;
CODE_29E5B5:    STA $104B,x                 ; $29:E5B5: 9D 4B 10    ;
CODE_29E5B8:    RTS                         ; $29:E5B8: 60          ;

CODE_29E5B9:    LDX $1060                   ; $29:E5B9: AE 60 10    ;
CODE_29E5BC:    LDA.w DATA_21EFDC,x                 ; $29:E5BC: BD DC EF    ;
CODE_29E5BF:    LDX $104F                   ; $29:E5BF: AE 4F 10    ;
CODE_29E5C2:    CMP $1047,x                 ; $29:E5C2: DD 47 10    ;
CODE_29E5C5:    BNE CODE_29E5DA             ; $29:E5C5: D0 13       ;
CODE_29E5C7:    LDA $104B,x                 ; $29:E5C7: BD 4B 10    ;
CODE_29E5CA:    CMP #$02                    ; $29:E5CA: C9 02       ;
CODE_29E5CC:    BNE CODE_29E5DA             ; $29:E5CC: D0 0C       ;
CODE_29E5CE:    DEC $104B,x                 ; $29:E5CE: DE 4B 10    ;
CODE_29E5D1:    LDA $1060                   ; $29:E5D1: AD 60 10    ;
CODE_29E5D4:    CMP #$04                    ; $29:E5D4: C9 04       ;
CODE_29E5D6:    BCC CODE_29E5EE             ; $29:E5D6: 90 16       ;
CODE_29E5D8:    BEQ CODE_29E5F1             ; $29:E5D8: F0 17       ;
CODE_29E5DA:    LDA $104B,x                 ; $29:E5DA: BD 4B 10    ;
CODE_29E5DD:    SEC                         ; $29:E5DD: 38          ;
CODE_29E5DE:    SBC #$21                    ; $29:E5DE: E9 21       ;
CODE_29E5E0:    STA $104B,x                 ; $29:E5E0: 9D 4B 10    ;
CODE_29E5E3:    LDA $1047,x                 ; $29:E5E3: BD 47 10    ;
CODE_29E5E6:    SBC #$00                    ; $29:E5E6: E9 00       ;
CODE_29E5E8:    STA $1047,x                 ; $29:E5E8: 9D 47 10    ;
CODE_29E5EB:    INC $1046                   ; $29:E5EB: EE 46 10    ;
CODE_29E5EE:    INC $1046                   ; $29:E5EE: EE 46 10    ;
CODE_29E5F1:    LDA $1047,x                 ; $29:E5F1: BD 47 10    ;
CODE_29E5F4:    CMP #$07                    ; $29:E5F4: C9 07       ;
CODE_29E5F6:    BNE CODE_29E5FD             ; $29:E5F6: D0 05       ;
CODE_29E5F8:    LDA #$03                    ; $29:E5F8: A9 03       ;
CODE_29E5FA:    STA $1047,x                 ; $29:E5FA: 9D 47 10    ;
CODE_29E5FD:    RTS                         ; $29:E5FD: 60          ;

CODE_29E5FE:    LDA $070A                   ; $29:E5FE: AD 0A 07    ;
CODE_29E601:    BEQ CODE_29E655             ; $29:E601: F0 52       ;
CODE_29E603:    CMP #$07                    ; $29:E603: C9 07       ;
CODE_29E605:    BEQ CODE_29E655             ; $29:E605: F0 4E       ;
CODE_29E607:    CMP #$0F                    ; $29:E607: C9 0F       ;
CODE_29E609:    BCS CODE_29E655                     ; $29:E609: B0 4A       ;
CODE_29E60B:    LDA $05F3                   ; $29:E60B: AD F3 05    ;
CODE_29E60E:    AND #$7F                    ; $29:E60E: 29 7F       ;
CODE_29E610:    ORA $058C                   ; $29:E610: 0D 8C 05    ;
CODE_29E613:    BNE CODE_29E655             ; $29:E613: D0 40       ;
CODE_29E615:    DEC $05F1                   ; $29:E615: CE F1 05    ;
CODE_29E618:    BPL CODE_29E655             ; $29:E618: 10 3B       ;
CODE_29E61A:    LDA #$28                    ; $29:E61A: A9 28       ;
CODE_29E61C:    STA $05F1                   ; $29:E61C: 8D F1 05    ;
CODE_29E61F:    DEC $05F0                   ; $29:E61F: CE F0 05    ;
CODE_29E622:    BPL CODE_29E641             ; $29:E622: 10 1D       ;
CODE_29E624:    LDA #$09                    ; $29:E624: A9 09       ;
CODE_29E626:    STA $05F0                   ; $29:E626: 8D F0 05    ;
CODE_29E629:    DEC $05EF                   ; $29:E629: CE EF 05    ;
CODE_29E62C:    BPL CODE_29E641             ; $29:E62C: 10 13       ;
CODE_29E62E:    STA $05EF                   ; $29:E62E: 8D EF 05    ;
CODE_29E631:    DEC $05EE                   ; $29:E631: CE EE 05    ;
CODE_29E634:    BPL CODE_29E641             ; $29:E634: 10 0B       ;
CODE_29E636:    LDA #$00                    ; $29:E636: A9 00       ;
CODE_29E638:    STA $05EE                   ; $29:E638: 8D EE 05    ;
CODE_29E63B:    STA $05EF                   ; $29:E63B: 8D EF 05    ;
CODE_29E63E:    STA $05F0                   ; $29:E63E: 8D F0 05    ;
CODE_29E641:    LDA $05EE                   ; $29:E641: AD EE 05    ;
CODE_29E644:    CMP #$01                    ; $29:E644: C9 01       ;
CODE_29E646:    BNE CODE_29E655             ; $29:E646: D0 0D       ;
CODE_29E648:    LDA $05EF                   ; $29:E648: AD EF 05    ;
CODE_29E64B:    ORA $05F0                   ; $29:E64B: 0D F0 05    ;
CODE_29E64E:    BNE CODE_29E655             ; $29:E64E: D0 05       ;
CODE_29E650:    LDA #$FF                    ; $29:E650: A9 FF       ;
CODE_29E652:    STA $1200                   ; $29:E652: 8D 00 12    ;
CODE_29E655:    LDX #$02                    ; $29:E655: A2 02       ;
CODE_29E657:    LDA $05EE,x                 ; $29:E657: BD EE 05    ;
CODE_29E65A:    ORA #$90                    ; $29:E65A: 09 90       ;
CODE_29E65C:    STA $1F52,x                 ; $29:E65C: 9D 52 1F    ;
CODE_29E65F:    DEX                         ; $29:E65F: CA          ;
CODE_29E660:    BPL CODE_29E657             ; $29:E660: 10 F5       ;
CODE_29E662:    RTS                         ; $29:E662: 60          ;

CODE_29E663:    LDX $1600                   ; $29:E663: AE 00 16    ;
CODE_29E666:    LDA #$0F                    ; $29:E666: A9 0F       ;
CODE_29E668:    STA $1602,x                 ; $29:E668: 9D 02 16    ;
CODE_29E66B:    LDA #$51                    ; $29:E66B: A9 51       ;
CODE_29E66D:    STA $1603,x                 ; $29:E66D: 9D 03 16    ;
CODE_29E670:    LDA #$00                    ; $29:E670: A9 00       ;
CODE_29E672:    STA $1604,x                 ; $29:E672: 9D 04 16    ;
CODE_29E675:    LDA #$03                    ; $29:E675: A9 03       ;
CODE_29E677:    STA $1605,x                 ; $29:E677: 9D 05 16    ;
CODE_29E67A:    LDA $05EE                   ; $29:E67A: AD EE 05    ;
CODE_29E67D:    ORA #$90                    ; $29:E67D: 09 90       ;
CODE_29E67F:    STA $1606,x                 ; $29:E67F: 9D 06 16    ;
CODE_29E682:    LDA $05EF                   ; $29:E682: AD EF 05    ;
CODE_29E685:    ORA #$90                    ; $29:E685: 09 90       ;
CODE_29E687:    STA $1608,x                 ; $29:E687: 9D 08 16    ;
CODE_29E68A:    LDA $05F0                   ; $29:E68A: AD F0 05    ;
CODE_29E68D:    ORA #$90                    ; $29:E68D: 09 90       ;
CODE_29E68F:    STA $160A,x                 ; $29:E68F: 9D 0A 16    ;
CODE_29E692:    LDA #$FF                    ; $29:E692: A9 FF       ;
CODE_29E694:    STA $160C,x                 ; $29:E694: 9D 0C 16    ;
CODE_29E697:    LDA #$22                    ; $29:E697: A9 22       ;
CODE_29E699:    STA $1607,x                 ; $29:E699: 9D 07 16    ;
CODE_29E69C:    STA $1609,x                 ; $29:E69C: 9D 09 16    ;
CODE_29E69F:    STA $160B,x                 ; $29:E69F: 9D 0B 16    ;
CODE_29E6A2:    TXA                         ; $29:E6A2: 8A          ;
CODE_29E6A3:    CLC                         ; $29:E6A3: 18          ;
CODE_29E6A4:    ADC #$0A                    ; $29:E6A4: 69 0A       ;
CODE_29E6A6:    STA $1600                   ; $29:E6A6: 8D 00 16    ;
CODE_29E6A9:    RTS                         ; $29:E6A9: 60          ;

CODE_29E6AA:    LDX $0726                   ; $29:E6AA: AE 26 07    ;
CODE_29E6AD:    LDY #$00                    ; $29:E6AD: A0 00       ;
CODE_29E6AF:    LDA $0736,x                 ; $29:E6AF: BD 36 07    ;
CODE_29E6B2:    CMP #$FF                    ; $29:E6B2: C9 FF       ;
CODE_29E6B4:    BNE CODE_29E6BA             ; $29:E6B4: D0 04       ;
CODE_29E6B6:    LDA #$90                    ; $29:E6B6: A9 90       ;
CODE_29E6B8:    BRA CODE_29E6D0             ; $29:E6B8: 80 16       ;

CODE_29E6BA:    CMP #$63                    ; $29:E6BA: C9 63       ;
CODE_29E6BC:    BMI CODE_29E6C3             ; $29:E6BC: 30 05       ;
CODE_29E6BE:    LDA #$62                    ; $29:E6BE: A9 62       ;
CODE_29E6C0:    STA $0736,x                 ; $29:E6C0: 9D 36 07    ;
CODE_29E6C3:    INC A                       ; $29:E6C3: 1A          ;
CODE_29E6C4:    CMP #$0A                    ; $29:E6C4: C9 0A       ;
CODE_29E6C6:    BMI CODE_29E6CE             ; $29:E6C6: 30 06       ;
CODE_29E6C8:    SEC                         ; $29:E6C8: 38          ;
CODE_29E6C9:    SBC #$0A                    ; $29:E6C9: E9 0A       ;
CODE_29E6CB:    INY                         ; $29:E6CB: C8          ;
CODE_29E6CC:    BRA CODE_29E6C4             ; $29:E6CC: 80 F6       ;

CODE_29E6CE:    ORA #$90                    ; $29:E6CE: 09 90       ;
CODE_29E6D0:    STA $1F4B                   ; $29:E6D0: 8D 4B 1F    ;
CODE_29E6D3:    TYA                         ; $29:E6D3: 98          ;
CODE_29E6D4:    BNE CODE_29E6DA             ; $29:E6D4: D0 04       ;
CODE_29E6D6:    LDA #$AD                    ; $29:E6D6: A9 AD       ;
CODE_29E6D8:    BRA CODE_29E6DC             ; $29:E6D8: 80 02       ;

CODE_29E6DA:    ORA #$90                    ; $29:E6DA: 09 90       ;
CODE_29E6DC:    STA $1F4A                   ; $29:E6DC: 8D 4A 1F    ;
CODE_29E6DF:    RTS                         ; $29:E6DF: 60          ;

CODE_29E6E0:    LDA #$22                    ; $29:E6E0: A9 22       ;
CODE_29E6E2:    LDX $0726                   ; $29:E6E2: AE 26 07    ;
CODE_29E6E5:    BEQ CODE_29E6EA             ; $29:E6E5: F0 03       ;
CODE_29E6E7:    CLC                         ; $29:E6E7: 18          ;
CODE_29E6E8:    ADC #$23                    ; $29:E6E8: 69 23       ;
CODE_29E6EA:    LDY #$00                    ; $29:E6EA: A0 00       ;
CODE_29E6EC:    TAX                         ; $29:E6EC: AA          ;
CODE_29E6ED:    LDA $1D80,x                 ; $29:E6ED: BD 80 1D    ;
CODE_29E6F0:    CLC                         ; $29:E6F0: 18          ;
CODE_29E6F1:    ADC $0422                   ; $29:E6F1: 6D 22 04    ;
CODE_29E6F4:    STA $1D80,x                 ; $29:E6F4: 9D 80 1D    ;
CODE_29E6F7:    CMP #$64                    ; $29:E6F7: C9 64       ;
CODE_29E6F9:    BCC CODE_29E70C             ; $29:E6F9: 90 11       ;
CODE_29E6FB:    SEC                         ; $29:E6FB: 38          ;
CODE_29E6FC:    SBC #$64                    ; $29:E6FC: E9 64       ;
CODE_29E6FE:    STA $1D80,x                 ; $29:E6FE: 9D 80 1D    ;
CODE_29E701:    LDX $0726                   ; $29:E701: AE 26 07    ;
CODE_29E704:    INC $0736,x                 ; $29:E704: FE 36 07    ;
CODE_29E707:    LDA #$05                    ; $29:E707: A9 05       ;
CODE_29E709:    STA $1203                   ; $29:E709: 8D 03 12    ;
CODE_29E70C:    CMP #$0A                    ; $29:E70C: C9 0A       ;
CODE_29E70E:    BMI CODE_29E716             ; $29:E70E: 30 06       ;
CODE_29E710:    SEC                         ; $29:E710: 38          ;
CODE_29E711:    SBC #$0A                    ; $29:E711: E9 0A       ;
CODE_29E713:    INY                         ; $29:E713: C8          ;
CODE_29E714:    BRA CODE_29E70C             ; $29:E714: 80 F6       ;

CODE_29E716:    LDX $1600                   ; $29:E716: AE 00 16    ;
CODE_29E719:    ORA #$90                    ; $29:E719: 09 90       ;
CODE_29E71B:    STA $1F49                   ; $29:E71B: 8D 49 1F    ;
CODE_29E71E:    TYA                         ; $29:E71E: 98          ;
CODE_29E71F:    BNE CODE_29E725             ; $29:E71F: D0 04       ;
CODE_29E721:    LDA #$AD                    ; $29:E721: A9 AD       ;
CODE_29E723:    BRA CODE_29E727             ; $29:E723: 80 02       ;

CODE_29E725:    ORA #$90                    ; $29:E725: 09 90       ;
CODE_29E727:    STA $1F48                   ; $29:E727: 8D 48 1F    ;
CODE_29E72A:    LDA #$00                    ; $29:E72A: A9 00       ;
CODE_29E72C:    STA $0422                   ; $29:E72C: 8D 22 04    ;
CODE_29E72F:    RTS                         ; $29:E72F: 60          ;

CODE_29E730:    LDY $1600                   ; $29:E730: AC 00 16    ;
CODE_29E733:    LDX $0727                   ; $29:E733: AE 27 07    ;
CODE_29E736:    INX                         ; $29:E736: E8          ;
CODE_29E737:    TXA                         ; $29:E737: 8A          ;
CODE_29E738:    ORA #$90                    ; $29:E738: 09 90       ;
CODE_29E73A:    STA $1606,y                 ; $29:E73A: 99 06 16    ;
CODE_29E73D:    LDA #$22                    ; $29:E73D: A9 22       ;
CODE_29E73F:    STA $1607,y                 ; $29:E73F: 99 07 16    ;
CODE_29E742:    LDA #$FF                    ; $29:E742: A9 FF       ;
CODE_29E744:    STA $1608,y                 ; $29:E744: 99 08 16    ;
CODE_29E747:    LDX #$0F                    ; $29:E747: A2 0F       ;
CODE_29E749:    TXA                         ; $29:E749: 8A          ;
CODE_29E74A:    STA $1602,y                 ; $29:E74A: 99 02 16    ;
CODE_29E74D:    LDA #$26                    ; $29:E74D: A9 26       ;
CODE_29E74F:    STA $1603,y                 ; $29:E74F: 99 03 16    ;
CODE_29E752:    LDA #$00                    ; $29:E752: A9 00       ;
CODE_29E754:    STA $1604,y                 ; $29:E754: 99 04 16    ;
CODE_29E757:    LDA #$01                    ; $29:E757: A9 01       ;
CODE_29E759:    STA $1605,y                 ; $29:E759: 99 05 16    ;
CODE_29E75C:    LDA $1600                   ; $29:E75C: AD 00 16    ;
CODE_29E75F:    CLC                         ; $29:E75F: 18          ;
CODE_29E760:    ADC #$06                    ; $29:E760: 69 06       ;
CODE_29E762:    STA $1600                   ; $29:E762: 8D 00 16    ;
CODE_29E765:    RTL                         ; $29:E765: 6B          ;

CODE_29E766:    LDA $0726                   ; $29:E766: AD 26 07    ;
CODE_29E769:    ASL A                       ; $29:E769: 0A          ;
CODE_29E76A:    TAX                         ; $29:E76A: AA          ;
CODE_29E76B:    LDA #$01                    ; $29:E76B: A9 01       ;
CODE_29E76D:    STA $0E                     ; $29:E76D: 85 0E       ;
CODE_29E76F:    LDY $1600                   ; $29:E76F: AC 00 16    ;
CODE_29E772:    LDA.w DATA_21EFEB,x                 ; $29:E772: BD EB EF    ;
CODE_29E775:    STA $1606,y                 ; $29:E775: 99 06 16    ;
CODE_29E778:    LDA #$22                    ; $29:E778: A9 22       ;
CODE_29E77A:    STA $1607,y                 ; $29:E77A: 99 07 16    ;
CODE_29E77D:    INX                         ; $29:E77D: E8          ;
CODE_29E77E:    INY                         ; $29:E77E: C8          ;
CODE_29E77F:    INY                         ; $29:E77F: C8          ;
CODE_29E780:    DEC $0E                     ; $29:E780: C6 0E       ;
CODE_29E782:    BPL CODE_29E772             ; $29:E782: 10 EE       ;
CODE_29E784:    LDA #$FF                    ; $29:E784: A9 FF       ;
CODE_29E786:    STA $1606,y                 ; $29:E786: 99 06 16    ;
CODE_29E789:    LDY $1600                   ; $29:E789: AC 00 16    ;
CODE_29E78C:    LDA #$0F                    ; $29:E78C: A9 0F       ;
CODE_29E78E:    STA $1602,y                 ; $29:E78E: 99 02 16    ;
CODE_29E791:    LDA #$42                    ; $29:E791: A9 42       ;
CODE_29E793:    STA $1603,y                 ; $29:E793: 99 03 16    ;
CODE_29E796:    LDA #$00                    ; $29:E796: A9 00       ;
CODE_29E798:    STA $1604,y                 ; $29:E798: 99 04 16    ;
CODE_29E79B:    LDA #$03                    ; $29:E79B: A9 03       ;
CODE_29E79D:    STA $1605,y                 ; $29:E79D: 99 05 16    ;
CODE_29E7A0:    LDA $1600                   ; $29:E7A0: AD 00 16    ;
CODE_29E7A3:    CLC                         ; $29:E7A3: 18          ;
CODE_29E7A4:    ADC #$08                    ; $29:E7A4: 69 08       ;
CODE_29E7A6:    STA $1600                   ; $29:E7A6: 8D 00 16    ;
CODE_29E7A9:    RTL                         ; $29:E7A9: 6B          ;

CODE_29E7AA:    LDA $0717                   ; $29:E7AA: AD 17 07    ;
CODE_29E7AD:    CLC                         ; $29:E7AD: 18          ;
CODE_29E7AE:    ADC $069C                   ; $29:E7AE: 6D 9C 06    ;
CODE_29E7B1:    STA $0717                   ; $29:E7B1: 8D 17 07    ;
CODE_29E7B4:    STA $00                     ; $29:E7B4: 85 00       ;
CODE_29E7B6:    LDA $0716                   ; $29:E7B6: AD 16 07    ;
CODE_29E7B9:    ADC $069D                   ; $29:E7B9: 6D 9D 06    ;
CODE_29E7BC:    STA $0716                   ; $29:E7BC: 8D 16 07    ;
CODE_29E7BF:    STA $01                     ; $29:E7BF: 85 01       ;
CODE_29E7C1:    LDA $0715                   ; $29:E7C1: AD 15 07    ;
CODE_29E7C4:    ADC #$00                    ; $29:E7C4: 69 00       ;
CODE_29E7C6:    STA $0715                   ; $29:E7C6: 8D 15 07    ;
CODE_29E7C9:    STA $02                     ; $29:E7C9: 85 02       ;
CODE_29E7CB:    LDY #$00                    ; $29:E7CB: A0 00       ;
CODE_29E7CD:    LDX #$05                    ; $29:E7CD: A2 05       ;
CODE_29E7CF:    LDA $00                     ; $29:E7CF: A5 00       ;
CODE_29E7D1:    SEC                         ; $29:E7D1: 38          ;
CODE_29E7D2:    SBC.l DATA_21F00C,x                 ; $29:E7D2: FF 0C F0 21 ;
CODE_29E7D6:    STA $00                     ; $29:E7D6: 85 00       ;
CODE_29E7D8:    LDA $01                     ; $29:E7D8: A5 01       ;
CODE_29E7DA:    SBC.l DATA_21F006,x                 ; $29:E7DA: FF 06 F0 21 ;
CODE_29E7DE:    STA $01                     ; $29:E7DE: 85 01       ;
CODE_29E7E0:    LDA $02                     ; $29:E7E0: A5 02       ;
CODE_29E7E2:    SBC.l DATA_21F000,x                 ; $29:E7E2: FF 00 F0 21 ;
CODE_29E7E6:    STA $02                     ; $29:E7E6: 85 02       ;
CODE_29E7E8:    BCC CODE_29E7EF             ; $29:E7E8: 90 05       ;
CODE_29E7EA:    INC $069E                   ; $29:E7EA: EE 9E 06    ;
CODE_29E7ED:    BRA CODE_29E7CF             ; $29:E7ED: 80 E0       ;

CODE_29E7EF:    LDA $00                     ; $29:E7EF: A5 00       ;
CODE_29E7F1:    CLC                         ; $29:E7F1: 18          ;
CODE_29E7F2:    ADC.l DATA_21F00C,x                 ; $29:E7F2: 7F 0C F0 21 ;
CODE_29E7F6:    STA $00                     ; $29:E7F6: 85 00       ;
CODE_29E7F8:    LDA $01                     ; $29:E7F8: A5 01       ;
CODE_29E7FA:    ADC.l DATA_21F006,x                 ; $29:E7FA: 7F 06 F0 21 ;
CODE_29E7FE:    STA $01                     ; $29:E7FE: 85 01       ;
CODE_29E800:    LDA $02                     ; $29:E800: A5 02       ;
CODE_29E802:    ADC.l DATA_21F000,x                 ; $29:E802: 7F 00 F0 21 ;
CODE_29E806:    STA $02                     ; $29:E806: 85 02       ;
CODE_29E808:    LDA $069E                   ; $29:E808: AD 9E 06    ;
CODE_29E80B:    ORA #$90                    ; $29:E80B: 09 90       ;
CODE_29E80D:    STA $1F4C,y                 ; $29:E80D: 99 4C 1F    ;
CODE_29E810:    LDA #$00                    ; $29:E810: A9 00       ;
CODE_29E812:    STA $069E                   ; $29:E812: 8D 9E 06    ;
CODE_29E815:    INY                         ; $29:E815: C8          ;
CODE_29E816:    DEX                         ; $29:E816: CA          ;
CODE_29E817:    BPL CODE_29E7CF             ; $29:E817: 10 B6       ;
CODE_29E819:    LDA $1F4C                   ; $29:E819: AD 4C 1F    ;
CODE_29E81C:    CMP #$9A                    ; $29:E81C: C9 9A       ;
CODE_29E81E:    BCC CODE_29E835             ; $29:E81E: 90 15       ;
CODE_29E820:    LDX #$02                    ; $29:E820: A2 02       ;
CODE_29E822:    LDA.w DATA_21F012,x                 ; $29:E822: BD 12 F0    ;
CODE_29E825:    STA $0715,x                 ; $29:E825: 9D 15 07    ;
CODE_29E828:    DEX                         ; $29:E828: CA          ;
CODE_29E829:    BPL CODE_29E822             ; $29:E829: 10 F7       ;
CODE_29E82B:    LDX #$05                    ; $29:E82B: A2 05       ;
CODE_29E82D:    LDA #$99                    ; $29:E82D: A9 99       ;
CODE_29E82F:    STA $1F4C,x                 ; $29:E82F: 9D 4C 1F    ;
CODE_29E832:    DEX                         ; $29:E832: CA          ;
CODE_29E833:    BPL CODE_29E82F             ; $29:E833: 10 FA       ;
CODE_29E835:    STZ $069C                   ; $29:E835: 9C 9C 06    ;
CODE_29E838:    STZ $069D                   ; $29:E838: 9C 9D 06    ;
CODE_29E83B:    RTL                         ; $29:E83B: 6B          ;

CODE_29E83C:    LDX $1600                   ; $29:E83C: AE 00 16    ;
CODE_29E83F:    LDY #$00                    ; $29:E83F: A0 00       ;
CODE_29E841:    LDA.w DATA_21EFEF,y                 ; $29:E841: B9 EF EF    ;
CODE_29E844:    STA $1602,x                 ; $29:E844: 9D 02 16    ;
CODE_29E847:    INX                         ; $29:E847: E8          ;
CODE_29E848:    INY                         ; $29:E848: C8          ;
CODE_29E849:    CPY #$11                    ; $29:E849: C0 11       ;
CODE_29E84B:    BNE CODE_29E841             ; $29:E84B: D0 F4       ;
CODE_29E84D:    LDX $1600                   ; $29:E84D: AE 00 16    ;
CODE_29E850:    LDY #$00                    ; $29:E850: A0 00       ;
CODE_29E852:    LDA $1F4C,y                 ; $29:E852: B9 4C 1F    ;
CODE_29E855:    STA $1606,x                 ; $29:E855: 9D 06 16    ;
CODE_29E858:    INX                         ; $29:E858: E8          ;
CODE_29E859:    INX                         ; $29:E859: E8          ;
CODE_29E85A:    INY                         ; $29:E85A: C8          ;
CODE_29E85B:    CPY #$06                    ; $29:E85B: C0 06       ;
CODE_29E85D:    BNE CODE_29E852             ; $29:E85D: D0 F3       ;
CODE_29E85F:    LDY $1600                   ; $29:E85F: AC 00 16    ;
CODE_29E862:    TYA                         ; $29:E862: 98          ;
CODE_29E863:    CLC                         ; $29:E863: 18          ;
CODE_29E864:    ADC #$10                    ; $29:E864: 69 10       ;
CODE_29E866:    STA $1600                   ; $29:E866: 8D 00 16    ;
CODE_29E869:    RTS                         ; $29:E869: 60          ;

CODE_29E86A:    LDY #$00                    ; $29:E86A: A0 00       ;
CODE_29E86C:    LDA #$01                    ; $29:E86C: A9 01       ;
CODE_29E86E:    STA $0E                     ; $29:E86E: 85 0E       ;
CODE_29E870:    LDX #$9F                    ; $29:E870: A2 9F       ;
CODE_29E872:    LDA $0413                   ; $29:E872: AD 13 04    ;
CODE_29E875:    AND $0E                     ; $29:E875: 25 0E       ;
CODE_29E877:    BEQ CODE_29E87A             ; $29:E877: F0 01       ;
CODE_29E879:    DEX                         ; $29:E879: CA          ;
CODE_29E87A:    TXA                         ; $29:E87A: 8A          ;
CODE_29E87B:    STA $1F40,y                 ; $29:E87B: 99 40 1F    ;
CODE_29E87E:    INY                         ; $29:E87E: C8          ;
CODE_29E87F:    ASL $0E                     ; $29:E87F: 06 0E       ;
CODE_29E881:    LDA $0E                     ; $29:E881: A5 0E       ;
CODE_29E883:    CMP #$40                    ; $29:E883: C9 40       ;
CODE_29E885:    BNE CODE_29E870             ; $29:E885: D0 E9       ;
CODE_29E887:    LDA #$8C                    ; $29:E887: A9 8C       ;
CODE_29E889:    STA $1F40,y                 ; $29:E889: 99 40 1F    ;
CODE_29E88C:    LDX #$8D                    ; $29:E88C: A2 8D       ;
CODE_29E88E:    LDA $0413                   ; $29:E88E: AD 13 04    ;
CODE_29E891:    AND $0E                     ; $29:E891: 25 0E       ;
CODE_29E893:    BEQ CODE_29E8A6             ; $29:E893: F0 11       ;
CODE_29E895:    DEC $0714                   ; $29:E895: CE 14 07    ;
CODE_29E898:    LDA $0714                   ; $29:E898: AD 14 07    ;
CODE_29E89B:    AND #$08                    ; $29:E89B: 29 08       ;
CODE_29E89D:    BNE CODE_29E8A6             ; $29:E89D: D0 07       ;
CODE_29E89F:    LDA #$8E                    ; $29:E89F: A9 8E       ;
CODE_29E8A1:    STA $1F40,y                 ; $29:E8A1: 99 40 1F    ;
CODE_29E8A4:    INC A                       ; $29:E8A4: 1A          ;
CODE_29E8A5:    TAX                         ; $29:E8A5: AA          ;
CODE_29E8A6:    TXA                         ; $29:E8A6: 8A          ;
CODE_29E8A7:    STA $1F41,y                 ; $29:E8A7: 99 41 1F    ;
CODE_29E8AA:    RTS                         ; $29:E8AA: 60          ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Upload multiple VRAM tilemaps to VRAM
;;;
;;; Input: $36-38 = 24-bit pointer to VRAM tables
;;; VRAM Tables have two 2-word headers, followed by the VRAM tilemap itself
;;;
;;; Header format: %AAAA AAAA, %AAAA AAAA, %CFSS SSSS, %SSSS SSSS
;;;
;;; A = VRAM Address/2 (BIG Endian) (so VRAM $0800 is $04,$00 in header). 
;;;     VRAM $8000 or higher = end of table. Generally $FF as the first byte is enough.
;;;
;;; C = Bit 0 for $2115. Upload VRAM tiles per 1 tile or per 32 tile in VRAM
;;;
;;; F = Fixed DMA. When DMA is fixed, size is increased by 1, because each byte becomes a word, and you can't have a half word.
;;;
;;; S = DMA Size - 1 (Big Endian). So transferring 4 bytes would be $00,$03

CODE_29E8AB:    LDA $38                 ; $29:E8AB: A5 38       ;
CODE_29E8AD:    STA $4314               ; $29:E8AD: 8D 14 43    ;
CODE_29E8B0:    REP #$10                ; $29:E8B0: C2 10       ;
CODE_29E8B2:    LDY #$0000              ; $29:E8B2: A0 00 00    ;
CODE_29E8B5:    LDA [$36],y             ; $29:E8B5: B7 36       ;
CODE_29E8B7:    BPL CODE_29E8BC         ; $29:E8B7: 10 03       ;
CODE_29E8B9:    SEP #$30                ; $29:E8B9: E2 30       ;
CODE_29E8BB:    RTL                     ; $29:E8BB: 6B          ;

CODE_29E8BC:    STZ $06                 ; $29:E8BC: 64 06       ;
CODE_29E8BE:    STA $04                 ; $29:E8BE: 85 04       ;
CODE_29E8C0:    INY                     ; $29:E8C0: C8          ;
CODE_29E8C1:    LDA [$36],y             ; $29:E8C1: B7 36       ;
CODE_29E8C3:    STA $03                 ; $29:E8C3: 85 03       ;
CODE_29E8C5:    INY                     ; $29:E8C5: C8          ;
CODE_29E8C6:    LDA [$36],y             ; $29:E8C6: B7 36       ;
CODE_29E8C8:    AND #$80                ; $29:E8C8: 29 80       ;
CODE_29E8CA:    ASL A                   ; $29:E8CA: 0A          ;
CODE_29E8CB:    ROL A                   ; $29:E8CB: 2A          ;
CODE_29E8CC:    STA $07                 ; $29:E8CC: 85 07       ;
CODE_29E8CE:    LDA [$36],y             ; $29:E8CE: B7 36       ;
CODE_29E8D0:    AND #$40                ; $29:E8D0: 29 40       ;
CODE_29E8D2:    STA $05                 ; $29:E8D2: 85 05       ;
CODE_29E8D4:    LSR A                   ; $29:E8D4: 4A          ;
CODE_29E8D5:    LSR A                   ; $29:E8D5: 4A          ;
CODE_29E8D6:    LSR A                   ; $29:E8D6: 4A          ;
CODE_29E8D7:    ORA #$01                ; $29:E8D7: 09 01       ;
CODE_29E8D9:    STA $4310               ; $29:E8D9: 8D 10 43    ;
CODE_29E8DC:    LDA #$18                ; $29:E8DC: A9 18       ;
CODE_29E8DE:    STA $4311               ; $29:E8DE: 8D 11 43    ;
CODE_29E8E1:    REP #$20                ; $29:E8E1: C2 20       ;
CODE_29E8E3:    LDA $03                 ; $29:E8E3: A5 03       ;
CODE_29E8E5:    STA $2116               ; $29:E8E5: 8D 16 21    ;
CODE_29E8E8:    LDA [$36],y             ; $29:E8E8: B7 36       ;
CODE_29E8EA:    XBA                     ; $29:E8EA: EB          ;
CODE_29E8EB:    AND #$3FFF              ; $29:E8EB: 29 FF 3F    ;
CODE_29E8EE:    TAX                     ; $29:E8EE: AA          ;
CODE_29E8EF:    INX                     ; $29:E8EF: E8          ;
CODE_29E8F0:    STX $4315               ; $29:E8F0: 8E 15 43    ;
CODE_29E8F3:    INY                     ; $29:E8F3: C8          ;
CODE_29E8F4:    INY                     ; $29:E8F4: C8          ;
CODE_29E8F5:    TYA                     ; $29:E8F5: 98          ;
CODE_29E8F6:    CLC                     ; $29:E8F6: 18          ;
CODE_29E8F7:    ADC $36                 ; $29:E8F7: 65 36       ;
CODE_29E8F9:    STA $4312               ; $29:E8F9: 8D 12 43    ;
CODE_29E8FC:    LDA $05                 ; $29:E8FC: A5 05       ;
CODE_29E8FE:    BEQ CODE_29E934         ; $29:E8FE: F0 34       ;
CODE_29E900:    INX                     ; $29:E900: E8          ;
CODE_29E901:    TXA                     ; $29:E901: 8A          ;
CODE_29E902:    LSR A                   ; $29:E902: 4A          ;
CODE_29E903:    TAX                     ; $29:E903: AA          ;
CODE_29E904:    STX $4315               ; $29:E904: 8E 15 43    ;
CODE_29E907:    SEP #$20                ; $29:E907: E2 20       ;
CODE_29E909:    LDA $05                 ; $29:E909: A5 05       ;
CODE_29E90B:    LSR A                   ; $29:E90B: 4A          ;
CODE_29E90C:    LSR A                   ; $29:E90C: 4A          ;
CODE_29E90D:    LSR A                   ; $29:E90D: 4A          ;
CODE_29E90E:    STA $4310               ; $29:E90E: 8D 10 43    ;
CODE_29E911:    LDA $07                 ; $29:E911: A5 07       ;
CODE_29E913:    STA $2115               ; $29:E913: 8D 15 21    ;
CODE_29E916:    LDA #$02                ; $29:E916: A9 02       ;
CODE_29E918:    STA $420B               ; $29:E918: 8D 0B 42    ;
CODE_29E91B:    LDA #$19                ; $29:E91B: A9 19       ;
CODE_29E91D:    STA $4311               ; $29:E91D: 8D 11 43    ;
CODE_29E920:    REP #$21                ; $29:E920: C2 21       ;
CODE_29E922:    TYA                     ; $29:E922: 98          ;
CODE_29E923:    ADC $36                 ; $29:E923: 65 36       ;
CODE_29E925:    INC A                   ; $29:E925: 1A          ;
CODE_29E926:    STA $4312               ; $29:E926: 8D 12 43    ;
CODE_29E929:    LDA $03                 ; $29:E929: A5 03       ;
CODE_29E92B:    STA $2116               ; $29:E92B: 8D 16 21    ;
CODE_29E92E:    STX $4315               ; $29:E92E: 8E 15 43    ;
CODE_29E931:    LDX #$0002              ; $29:E931: A2 02       ;
CODE_29E934:    STX $03                 ; $29:E934: 86 03       ;
CODE_29E936:    TYA                     ; $29:E936: 98          ;
CODE_29E937:    CLC                     ; $29:E937: 18          ;
CODE_29E938:    ADC $03                 ; $29:E938: 65 03       ;
CODE_29E93A:    TAY                     ; $29:E93A: A8          ;
CODE_29E93B:    SEP #$20                ; $29:E93B: E2 20       ;
CODE_29E93D:    LDA $07                 ; $29:E93D: A5 07       ;
CODE_29E93F:    ORA #$80                ; $29:E93F: 09 80       ;
CODE_29E941:    STA $2115               ; $29:E941: 8D 15 21    ;
CODE_29E944:    LDA #$02                ; $29:E944: A9 02       ;
CODE_29E946:    STA $420B               ; $29:E946: 8D 0B 42    ;
CODE_29E949:    LDA [$36],y             ; $29:E949: B7 36       ;
CODE_29E94B:    BMI CODE_29E950         ; $29:E94B: 30 03       ;
CODE_29E94D:    JMP CODE_29E8BE         ; $29:E94D: 4C BE E8    ;

CODE_29E950:    SEP #$30                ; $29:E950: E2 30       ;
CODE_29E952:    RTL                     ; $29:E952: 6B          ;

CODE_29E953:    LDA $0380                   ; $29:E953: AD 80 03    ;
CODE_29E956:    BMI CODE_29E9A2             ; $29:E956: 30 4A       ;
CODE_29E958:    REP #$20                    ; $29:E958: C2 20       ;
CODE_29E95A:    LDA $0380                   ; $29:E95A: AD 80 03    ;
CODE_29E95D:    XBA                         ; $29:E95D: EB          ;
CODE_29E95E:    STA $2116                   ; $29:E95E: 8D 16 21    ;
CODE_29E961:    LDX #$81                    ; $29:E961: A2 81       ;
CODE_29E963:    STX $2115                   ; $29:E963: 8E 15 21    ;
CODE_29E966:    LDA #$1801                  ; $29:E966: A9 01 18    ;
CODE_29E969:    STA $4300                   ; $29:E969: 8D 00 43    ;
CODE_29E96C:    LDA #$0382                  ; $29:E96C: A9 82 03    ;
CODE_29E96F:    STA $4302                   ; $29:E96F: 8D 02 43    ;
CODE_29E972:    LDX #$00                    ; $29:E972: A2 00       ;
CODE_29E974:    STX $4304                   ; $29:E974: 8E 04 43    ;
CODE_29E977:    LDA #$0040                  ; $29:E977: A9 40 00    ;
CODE_29E97A:    STA $4305                   ; $29:E97A: 8D 05 43    ;
CODE_29E97D:    LDX #$01                    ; $29:E97D: A2 01       ;
CODE_29E97F:    STX $420B                   ; $29:E97F: 8E 0B 42    ;
CODE_29E982:    LDA $0380                   ; $29:E982: AD 80 03    ;
CODE_29E985:    XBA                         ; $29:E985: EB          ;
CODE_29E986:    ORA #$0800                  ; $29:E986: 09 00 08    ;
CODE_29E989:    STA $2116                   ; $29:E989: 8D 16 21    ;
CODE_29E98C:    LDA #$03C2                  ; $29:E98C: A9 C2 03    ;
CODE_29E98F:    STA $4302                   ; $29:E98F: 8D 02 43    ;
CODE_29E992:    LDA #$002C                  ; $29:E992: A9 2C 00    ;
CODE_29E995:    STA $4305                   ; $29:E995: 8D 05 43    ;
CODE_29E998:    STX $420B                   ; $29:E998: 8E 0B 42    ;
CODE_29E99B:    SEP #$20                    ; $29:E99B: E2 20       ;
CODE_29E99D:    LDA #$FF                    ; $29:E99D: A9 FF       ;
CODE_29E99F:    STA $0380                   ; $29:E99F: 8D 80 03    ;
CODE_29E9A2:    RTL                         ; $29:E9A2: 6B          ;

CODE_29E9A3:    LDA $7F2000                 ; $29:E9A3: AF 00 20 7F ;
CODE_29E9A7:    BMI CODE_29E9F7             ; $29:E9A7: 30 4E       ;
CODE_29E9A9:    LDX #$81                    ; $29:E9A9: A2 81       ;
CODE_29E9AB:    STX $2115                   ; $29:E9AB: 8E 15 21    ;
CODE_29E9AE:    REP #$20                    ; $29:E9AE: C2 20       ;
CODE_29E9B0:    LDA $7F2000                 ; $29:E9B0: AF 00 20 7F ;
CODE_29E9B4:    XBA                         ; $29:E9B4: EB          ;
CODE_29E9B5:    STA $2116                   ; $29:E9B5: 8D 16 21    ;
CODE_29E9B8:    LDA #$1801                  ; $29:E9B8: A9 01 18    ;
CODE_29E9BB:    STA $4300                   ; $29:E9BB: 8D 00 43    ;
CODE_29E9BE:    LDA #$2002                  ; $29:E9BE: A9 02 20    ;
CODE_29E9C1:    STA $4302                   ; $29:E9C1: 8D 02 43    ;
CODE_29E9C4:    LDX #$7F                    ; $29:E9C4: A2 7F       ;
CODE_29E9C6:    STX $4304                   ; $29:E9C6: 8E 04 43    ;
CODE_29E9C9:    LDA #$0040                  ; $29:E9C9: A9 40 00    ;
CODE_29E9CC:    STA $4305                   ; $29:E9CC: 8D 05 43    ;
CODE_29E9CF:    LDX #$01                    ; $29:E9CF: A2 01       ;
CODE_29E9D1:    STX $420B                   ; $29:E9D1: 8E 0B 42    ;
CODE_29E9D4:    LDA $7F2000                 ; $29:E9D4: AF 00 20 7F ;
CODE_29E9D8:    XBA                         ; $29:E9D8: EB          ;
CODE_29E9D9:    CLC                         ; $29:E9D9: 18          ;
CODE_29E9DA:    ADC #$0800                  ; $29:E9DA: 69 00 08    ;
CODE_29E9DD:    STA $2116                   ; $29:E9DD: 8D 16 21    ;
CODE_29E9E0:    LDA #$2042                  ; $29:E9E0: A9 42 20    ;
CODE_29E9E3:    STA $4302                   ; $29:E9E3: 8D 02 43    ;
CODE_29E9E6:    LDA #$002C                  ; $29:E9E6: A9 2C 00    ;
CODE_29E9E9:    STA $4305                   ; $29:E9E9: 8D 05 43    ;
CODE_29E9EC:    STX $420B                   ; $29:E9EC: 8E 0B 42    ;
CODE_29E9EF:    SEP #$20                    ; $29:E9EF: E2 20       ;
CODE_29E9F1:    LDA #$FF                    ; $29:E9F1: A9 FF       ;
CODE_29E9F3:    STA $7F2000                 ; $29:E9F3: 8F 00 20 7F ;
CODE_29E9F7:    RTL                         ; $29:E9F7: 6B          ;

CODE_29E9F8:    LDA $7F2000                 ; $29:E9F8: AF 00 20 7F ;
CODE_29E9FC:    BMI CODE_29EA31             ; $29:E9FC: 30 33       ;
CODE_29E9FE:    REP #$20                    ; $29:E9FE: C2 20       ;
CODE_29EA00:    LDA $7F2000                 ; $29:EA00: AF 00 20 7F ;
CODE_29EA04:    XBA                         ; $29:EA04: EB          ;
CODE_29EA05:    STA $2116                   ; $29:EA05: 8D 16 21    ;
CODE_29EA08:    LDX #$80                    ; $29:EA08: A2 80       ;
CODE_29EA0A:    STX $2115                   ; $29:EA0A: 8E 15 21    ;
CODE_29EA0D:    LDA #$1801                  ; $29:EA0D: A9 01 18    ;
CODE_29EA10:    STA $4300                   ; $29:EA10: 8D 00 43    ;
CODE_29EA13:    LDA #$2002                  ; $29:EA13: A9 02 20    ;
CODE_29EA16:    STA $4302                   ; $29:EA16: 8D 02 43    ;
CODE_29EA19:    LDX #$7F                    ; $29:EA19: A2 7F       ;
CODE_29EA1B:    STX $4304                   ; $29:EA1B: 8E 04 43    ;
CODE_29EA1E:    LDA #$0040                  ; $29:EA1E: A9 40 00    ;
CODE_29EA21:    STA $4305                   ; $29:EA21: 8D 05 43    ;
CODE_29EA24:    LDX #$01                    ; $29:EA24: A2 01       ;
CODE_29EA26:    STX $420B                   ; $29:EA26: 8E 0B 42    ;
CODE_29EA29:    SEP #$20                    ; $29:EA29: E2 20       ;
CODE_29EA2B:    LDA #$FF                    ; $29:EA2B: A9 FF       ;
CODE_29EA2D:    STA $7F2000                 ; $29:EA2D: 8F 00 20 7F ;
CODE_29EA31:    RTL                         ; $29:EA31: 6B          ;

CODE_29EA32:    LDA $0380                   ; $29:EA32: AD 80 03    ;
CODE_29EA35:    BMI CODE_29EA68             ; $29:EA35: 30 31       ;
CODE_29EA37:    LDX #$80                    ; $29:EA37: A2 80       ;
CODE_29EA39:    STX $2115                   ; $29:EA39: 8E 15 21    ;
CODE_29EA3C:    REP #$20                    ; $29:EA3C: C2 20       ;
CODE_29EA3E:    LDA $0380                   ; $29:EA3E: AD 80 03    ;
CODE_29EA41:    XBA                         ; $29:EA41: EB          ;
CODE_29EA42:    STA $2116                   ; $29:EA42: 8D 16 21    ;
CODE_29EA45:    LDA #$1801                  ; $29:EA45: A9 01 18    ;
CODE_29EA48:    STA $4300                   ; $29:EA48: 8D 00 43    ;
CODE_29EA4B:    LDA #$0382                  ; $29:EA4B: A9 82 03    ;
CODE_29EA4E:    STA $4302                   ; $29:EA4E: 8D 02 43    ;
CODE_29EA51:    LDX #$00                    ; $29:EA51: A2 00       ;
CODE_29EA53:    STX $4304                   ; $29:EA53: 8E 04 43    ;
CODE_29EA56:    LDA #$0040                  ; $29:EA56: A9 40 00    ;
CODE_29EA59:    STA $4305                   ; $29:EA59: 8D 05 43    ;
CODE_29EA5C:    LDX #$01                    ; $29:EA5C: A2 01       ;
CODE_29EA5E:    STX $420B                   ; $29:EA5E: 8E 0B 42    ;
CODE_29EA61:    SEP #$20                    ; $29:EA61: E2 20       ;
CODE_29EA63:    LDA #$FF                    ; $29:EA63: A9 FF       ;
CODE_29EA65:    STA $0380                   ; $29:EA65: 8D 80 03    ;
CODE_29EA68:    RTL                         ; $29:EA68: 6B          ;

CODE_29EA69:    LDY $036C                   ; $29:EA69: AC 6C 03    ;
CODE_29EA6C:    BMI CODE_29EA68             ; $29:EA6C: 30 FA       ;
CODE_29EA6E:    LDX #$80                    ; $29:EA6E: A2 80       ;
CODE_29EA70:    STX $2115                   ; $29:EA70: 8E 15 21    ;
CODE_29EA73:    STY $2117                   ; $29:EA73: 8C 17 21    ;
CODE_29EA76:    LDA $036D                   ; $29:EA76: AD 6D 03    ;
CODE_29EA79:    STA $2116                   ; $29:EA79: 8D 16 21    ;
CODE_29EA7C:    CLC                         ; $29:EA7C: 18          ;
CODE_29EA7D:    ADC #$20                    ; $29:EA7D: 69 20       ;
CODE_29EA7F:    TAX                         ; $29:EA7F: AA          ;
CODE_29EA80:    REP #$20                    ; $29:EA80: C2 20       ;
CODE_29EA82:    LDA $036E                   ; $29:EA82: AD 6E 03    ;
CODE_29EA85:    STA $2118                   ; $29:EA85: 8D 18 21    ;
CODE_29EA88:    LDA $0370                   ; $29:EA88: AD 70 03    ;
CODE_29EA8B:    STA $2118                   ; $29:EA8B: 8D 18 21    ;
CODE_29EA8E:    STX $2116                   ; $29:EA8E: 8E 16 21    ;
CODE_29EA91:    LDA $0372                   ; $29:EA91: AD 72 03    ;
CODE_29EA94:    STA $2118                   ; $29:EA94: 8D 18 21    ;
CODE_29EA97:    LDA $0374                   ; $29:EA97: AD 74 03    ;
CODE_29EA9A:    STA $2118                   ; $29:EA9A: 8D 18 21    ;
CODE_29EA9D:    SEP #$20                    ; $29:EA9D: E2 20       ;
CODE_29EA9F:    LDA #$FF                    ; $29:EA9F: A9 FF       ;
CODE_29EAA1:    STA $036C                   ; $29:EAA1: 8D 6C 03    ;
CODE_29EAA4:    RTL                         ; $29:EAA4: 6B          ;

CODE_29EAA5:    JSR CODE_29E86A             ; $29:EAA5: 20 6A E8    ;
CODE_29EAA8:    JSR CODE_29E6E0             ; $29:EAA8: 20 E0 E6    ;
CODE_29EAAB:    JSR CODE_29E6AA             ; $29:EAAB: 20 AA E6    ;
CODE_29EAAE:    JSL CODE_29E7AA             ; $29:EAAE: 22 AA E7 29 ;
CODE_29EAB2:    JSR CODE_29E5FE             ; $29:EAB2: 20 FE E5    ;
CODE_29EAB5:    LDX #$00                    ; $29:EAB5: A2 00       ;
CODE_29EAB7:    LDY $1600                   ; $29:EAB7: AC 00 16    ;
CODE_29EABA:    BEQ CODE_29EAC3             ; $29:EABA: F0 07       ;
CODE_29EABC:    TXA                         ; $29:EABC: 8A          ;
CODE_29EABD:    STA $7E3954                 ; $29:EABD: 8F 54 39 7E ;
CODE_29EAC1:    BRA CODE_29EAD7             ; $29:EAC1: 80 14       ;

CODE_29EAC3:    LDA $7E3954                 ; $29:EAC3: AF 54 39 7E ;
CODE_29EAC7:    INC A                       ; $29:EAC7: 1A          ;
CODE_29EAC8:    STA $7E3954                 ; $29:EAC8: 8F 54 39 7E ;
CODE_29EACC:    AND #$01                    ; $29:EACC: 29 01       ;
CODE_29EACE:    BNE CODE_29EAD7             ; $29:EACE: D0 07       ;
CODE_29EAD0:    LDA #$00                    ; $29:EAD0: A9 00       ;
CODE_29EAD2:    STA $7E3954                 ; $29:EAD2: 8F 54 39 7E ;
CODE_29EAD6:    RTL                         ; $29:EAD6: 6B          ;

CODE_29EAD7:    LDA.l DATA_21F02A,x                 ; $29:EAD7: BF 2A F0 21 ;
CODE_29EADB:    STA $1602,y                 ; $29:EADB: 99 02 16    ;
CODE_29EADE:    INY                         ; $29:EADE: C8          ;
CODE_29EADF:    INX                         ; $29:EADF: E8          ;
CODE_29EAE0:    CPX #$3F                    ; $29:EAE0: E0 3F       ;
CODE_29EAE2:    BNE CODE_29EAD7             ; $29:EAE2: D0 F3       ;
CODE_29EAE4:    LDY $1600                   ; $29:EAE4: AC 00 16    ;
CODE_29EAE7:    LDX #$00                    ; $29:EAE7: A2 00       ;
CODE_29EAE9:    LDA $1F40,x                 ; $29:EAE9: BD 40 1F    ;
CODE_29EAEC:    STA $1606,y                 ; $29:EAEC: 99 06 16    ;
CODE_29EAEF:    INY                         ; $29:EAEF: C8          ;
CODE_29EAF0:    INY                         ; $29:EAF0: C8          ;
CODE_29EAF1:    INX                         ; $29:EAF1: E8          ;
CODE_29EAF2:    CPX #$08                    ; $29:EAF2: E0 08       ;
CODE_29EAF4:    BNE CODE_29EAE9             ; $29:EAF4: D0 F3       ;
CODE_29EAF6:    LDY $1600                   ; $29:EAF6: AC 00 16    ;
CODE_29EAF9:    LDA $1F48                   ; $29:EAF9: AD 48 1F    ;
CODE_29EAFC:    STA $161A,y                 ; $29:EAFC: 99 1A 16    ;
CODE_29EAFF:    LDA $1F49                   ; $29:EAFF: AD 49 1F    ;
CODE_29EB02:    STA $161C,y                 ; $29:EB02: 99 1C 16    ;
CODE_29EB05:    LDY $1600                   ; $29:EB05: AC 00 16    ;
CODE_29EB08:    LDA $1F4A                   ; $29:EB08: AD 4A 1F    ;
CODE_29EB0B:    STA $1622,y                 ; $29:EB0B: 99 22 16    ;
CODE_29EB0E:    LDA $1F4B                   ; $29:EB0E: AD 4B 1F    ;
CODE_29EB11:    STA $1624,y                 ; $29:EB11: 99 24 16    ;
CODE_29EB14:    LDY $1600                   ; $29:EB14: AC 00 16    ;
CODE_29EB17:    LDX #$00                    ; $29:EB17: A2 00       ;
CODE_29EB19:    LDA $1F4C,x                 ; $29:EB19: BD 4C 1F    ;
CODE_29EB1C:    STA $1628,y                 ; $29:EB1C: 99 28 16    ;
CODE_29EB1F:    INY                         ; $29:EB1F: C8          ;
CODE_29EB20:    INY                         ; $29:EB20: C8          ;
CODE_29EB21:    INX                         ; $29:EB21: E8          ;
CODE_29EB22:    CPX #$06                    ; $29:EB22: E0 06       ;
CODE_29EB24:    BNE CODE_29EB19             ; $29:EB24: D0 F3       ;
CODE_29EB26:    LDY $1600                   ; $29:EB26: AC 00 16    ;
CODE_29EB29:    LDX #$00                    ; $29:EB29: A2 00       ;
CODE_29EB2B:    LDA $1F52,x                 ; $29:EB2B: BD 52 1F    ;
CODE_29EB2E:    STA $163A,y                 ; $29:EB2E: 99 3A 16    ;
CODE_29EB31:    INY                         ; $29:EB31: C8          ;
CODE_29EB32:    INY                         ; $29:EB32: C8          ;
CODE_29EB33:    INX                         ; $29:EB33: E8          ;
CODE_29EB34:    CPX #$03                    ; $29:EB34: E0 03       ;
CODE_29EB36:    BNE CODE_29EB2B             ; $29:EB36: D0 F3       ;
CODE_29EB38:    LDA $1600                   ; $29:EB38: AD 00 16    ;
CODE_29EB3B:    CLC                         ; $29:EB3B: 18          ;
CODE_29EB3C:    ADC #$3E                    ; $29:EB3C: 69 3E       ;
CODE_29EB3E:    STA $1600                   ; $29:EB3E: 8D 00 16    ;
CODE_29EB41:    RTL                         ; $29:EB41: 6B          ;

CODE_29EB42:    LDY #$00                    ; $29:EB42: A0 00       ;
CODE_29EB44:    LDA [$31],y                 ; $29:EB44: B7 31       ;
CODE_29EB46:    STA $1B40,y                 ; $29:EB46: 99 40 1B    ;
CODE_29EB49:    INY                         ; $29:EB49: C8          ;
CODE_29EB4A:    LDA [$31],y                 ; $29:EB4A: B7 31       ;
CODE_29EB4C:    STA $1B40,y                 ; $29:EB4C: 99 40 1B    ;
CODE_29EB4F:    CMP #$FF                    ; $29:EB4F: C9 FF       ;
CODE_29EB51:    BEQ CODE_29EB62             ; $29:EB51: F0 0F       ;
CODE_29EB53:    INY                         ; $29:EB53: C8          ;
CODE_29EB54:    LDA [$31],y                 ; $29:EB54: B7 31       ;
CODE_29EB56:    STA $1B40,y                 ; $29:EB56: 99 40 1B    ;
CODE_29EB59:    INY                         ; $29:EB59: C8          ;
CODE_29EB5A:    LDA [$31],y                 ; $29:EB5A: B7 31       ;
CODE_29EB5C:    STA $1B40,y                 ; $29:EB5C: 99 40 1B    ;
CODE_29EB5F:    JMP CODE_29EB49             ; $29:EB5F: 4C 49 EB    ;

CODE_29EB62:    RTL                         ; $29:EB62: 6B          ;

CODE_29EB63:    REP #$20                    ; $29:EB63: C2 20       ;
CODE_29EB65:    LDA #$7C00                  ; $29:EB65: A9 00 7C    ;
CODE_29EB68:    STA $023E                   ; $29:EB68: 8D 3E 02    ;
CODE_29EB6B:    LDA #$B000                  ; $29:EB6B: A9 00 B0    ;
CODE_29EB6E:    STA $0240                   ; $29:EB6E: 8D 40 02    ;
CODE_29EB71:    LDX #$38                    ; $29:EB71: A2 38       ;
CODE_29EB73:    STX $0242                   ; $29:EB73: 8E 42 02    ;
CODE_29EB76:    LDA #$0800                  ; $29:EB76: A9 00 08    ;
CODE_29EB79:    STA $02CA                   ; $29:EB79: 8D CA 02    ;
CODE_29EB7C:    SEP #$20                    ; $29:EB7C: E2 20       ;
CODE_29EB7E:    RTS                         ; $29:EB7E: 60          ;

CODE_29EB7F:    REP #$20                    ; $29:EB7F: C2 20       ;
CODE_29EB81:    LDA #$7C00                  ; $29:EB81: A9 00 7C    ;
CODE_29EB84:    STA $023E                   ; $29:EB84: 8D 3E 02    ;
CODE_29EB87:    LDA #$B800                  ; $29:EB87: A9 00 B8    ;
CODE_29EB8A:    STA $0240                   ; $29:EB8A: 8D 40 02    ;
CODE_29EB8D:    LDX #$3F                    ; $29:EB8D: A2 3F       ;
CODE_29EB8F:    STX $0242                   ; $29:EB8F: 8E 42 02    ;
CODE_29EB92:    LDA #$0800                  ; $29:EB92: A9 00 08    ;
CODE_29EB95:    STA $02CA                   ; $29:EB95: 8D CA 02    ;
CODE_29EB98:    SEP #$20                    ; $29:EB98: E2 20       ;
CODE_29EB9A:    RTS                         ; $29:EB9A: 60          ;

CODE_29EB9B:    REP #$20                    ; $29:EB9B: C2 20       ;
CODE_29EB9D:    LDA #$7C00                  ; $29:EB9D: A9 00 7C    ;
CODE_29EBA0:    STA $023E                   ; $29:EBA0: 8D 3E 02    ;
CODE_29EBA3:    LDA #$F800                  ; $29:EBA3: A9 00 F8    ;
CODE_29EBA6:    STA $0240                   ; $29:EBA6: 8D 40 02    ;
CODE_29EBA9:    LDX #$38                    ; $29:EBA9: A2 38       ;
CODE_29EBAB:    STX $0242                   ; $29:EBAB: 8E 42 02    ;
CODE_29EBAE:    LDA #$0800                  ; $29:EBAE: A9 00 08    ;
CODE_29EBB1:    STA $02CA                   ; $29:EBB1: 8D CA 02    ;
CODE_29EBB4:    SEP #$20                    ; $29:EBB4: E2 20       ;
CODE_29EBB6:    RTS                         ; $29:EBB6: 60          ;

CODE_29EBB7:    PHX                         ; $29:EBB7: DA          ;
CODE_29EBB8:    PHY                         ; $29:EBB8: 5A          ;
CODE_29EBB9:    LDA $028C                   ; $29:EBB9: AD 8C 02    ;
CODE_29EBBC:    BNE CODE_29EBEA             ; $29:EBBC: D0 2C       ;
CODE_29EBBE:    JSR CODE_29EB63             ; $29:EBBE: 20 63 EB    ;
CODE_29EBC1:    JSR CODE_29F153             ; $29:EBC1: 20 53 F1    ;
CODE_29EBC4:    JSR CODE_29F0E1             ; $29:EBC4: 20 E1 F0    ;
CODE_29EBC7:    JSR CODE_29EC16             ; $29:EBC7: 20 16 EC    ;
CODE_29EBCA:    LDA #$01                    ; $29:EBCA: A9 01       ;
CODE_29EBCC:    STA $396D                   ; $29:EBCC: 8D 6D 39    ;
CODE_29EBCF:    STA $028C                   ; $29:EBCF: 8D 8C 02    ;
CODE_29EBD2:    STZ $028E                   ; $29:EBD2: 9C 8E 02    ;
CODE_29EBD5:    STZ $028F                   ; $29:EBD5: 9C 8F 02    ;
CODE_29EBD8:    STZ $0290                   ; $29:EBD8: 9C 90 02    ;
CODE_29EBDB:    STZ $02DD                   ; $29:EBDB: 9C DD 02    ;
CODE_29EBDE:    LDA #$F1                    ; $29:EBDE: A9 F1       ;
CODE_29EBE0:    STA $1202                   ; $29:EBE0: 8D 02 12    ;
CODE_29EBE3:    LDA #$43                    ; $29:EBE3: A9 43       ;
CODE_29EBE5:    STA $1200                   ; $29:EBE5: 8D 00 12    ;
CODE_29EBE8:    BRA CODE_29EBF4             ; $29:EBE8: 80 0A       ;

CODE_29EBEA:    LDA #$11                    ; $29:EBEA: A9 11       ;
CODE_29EBEC:    STA $028B                   ; $29:EBEC: 8D 8B 02    ;
CODE_29EBEF:    LDA #$03                    ; $29:EBEF: A9 03       ;
CODE_29EBF1:    STA $028C                   ; $29:EBF1: 8D 8C 02    ;
CODE_29EBF4:    PLY                         ; $29:EBF4: 7A          ;
CODE_29EBF5:    PLX                         ; $29:EBF5: FA          ;
CODE_29EBF6:    RTL                         ; $29:EBF6: 6B          ;

CODE_29EBF7:    PHB                         ; $29:EBF7: 8B          ;
CODE_29EBF8:    PHK                         ; $29:EBF8: 4B          ;
CODE_29EBF9:    PLB                     ; $29:EBF9: AB          ;
CODE_29EBFA:    PHX                         ; $29:EBFA: DA          ;
CODE_29EBFB:    PHY                         ; $29:EBFB: 5A          ;
CODE_29EBFC:    LDA $028C                   ; $29:EBFC: AD 8C 02    ;
CODE_29EBFF:    ASL A                       ; $29:EBFF: 0A          ;
CODE_29EC00:    TAX                         ; $29:EC00: AA          ;
CODE_29EC01:    LDA.w PNTR_29EC0E,x                 ; $29:EC01: BD 0E EC    ;
CODE_29EC04:    STA $00                     ; $29:EC04: 85 00       ;
CODE_29EC06:    LDA.w PNTR_29EC0E+1,x                   ; $29:EC06: BD 0F EC    ;
CODE_29EC09:    STA $01                     ; $29:EC09: 85 01       ;
CODE_29EC0B:    JMP ($0000)                 ; $29:EC0B: 6C 00 00    ;

PNTR_29EC0E:        dw $0000
                    dw CODE_29EFB3
                    dw CODE_29EC39
                    dw CODE_29F01F
   
CODE_29EC16:    REP #$20                ; $29:EC16: C2 20       ;
CODE_29EC18:    LDA #$0010              ; $29:EC18: A9 10 00    ;
CODE_29EC1B:    STA $028B               ; $29:EC1B: 8D 8B 02    ;
CODE_29EC1E:    LDA #$0064              ; $29:EC1E: A9 64 00    ;
CODE_29EC21:    STA $0281                   ; $29:EC21: 8D 81 02    ;
CODE_29EC24:    LDA #$00A4              ; $29:EC24: A9 A4 00    ;
CODE_29EC27:    STA $0283               ; $29:EC27: 8D 83 02    ;
CODE_29EC2A:    LDA #$00C0                  ; $29:EC2A: A9 C0 00    ;
CODE_29EC2D:    STA $0285               ; $29:EC2D: 8D 85 02    ;
CODE_29EC30:    LDA #$00D0                  ; $29:EC30: A9 D0 00    ;
CODE_29EC33:    STA $0289               ; $29:EC33: 8D 89 02    ;
CODE_29EC36:    SEP #$20                    ; $29:EC36: E2 20       ;
CODE_29EC38:    RTS                         ; $29:EC38: 60          ;

CODE_29EC39:    REP #$10                    ; $29:EC39: C2 10       ;
CODE_29EC3B:    LDY #$0010                  ; $29:EC3B: A0 10 00    ;
CODE_29EC3E:    LDX #$0000                  ; $29:EC3E: A2 00 00    ;
CODE_29EC41:    LDA #$48                    ; $29:EC41: A9 48       ;
CODE_29EC43:    STA $01                     ; $29:EC43: 85 01       ;
CODE_29EC45:    LDA #$58                    ; $29:EC45: A9 58       ;
CODE_29EC47:    STA $00                     ; $29:EC47: 85 00       ;
CODE_29EC49:    LDA $02E5                   ; $29:EC49: AD E5 02    ;
CODE_29EC4C:    BEQ CODE_29EC53             ; $29:EC4C: F0 05       ;
CODE_29EC4E:    LDA.w DATA_29EF64,x                 ; $29:EC4E: BD 64 EF    ;
CODE_29EC51:    BRA CODE_29EC56             ; $29:EC51: 80 03       ;

CODE_29EC53:    LDA.w DATA_29EF15,x                 ; $29:EC53: BD 15 EF    ;
CODE_29EC56:    BPL CODE_29EC70             ; $29:EC56: 10 18       ;
CODE_29EC58:    INX                         ; $29:EC58: E8          ;
CODE_29EC59:    INC A                       ; $29:EC59: 1A          ;
CODE_29EC5A:    BEQ CODE_29ECA5             ; $29:EC5A: F0 49       ;
CODE_29EC5C:    LDA $00                     ; $29:EC5C: A5 00       ;
CODE_29EC5E:    CLC                         ; $29:EC5E: 18          ;
CODE_29EC5F:    ADC #$08                    ; $29:EC5F: 69 08       ;
CODE_29EC61:    STA $00                     ; $29:EC61: 85 00       ;
CODE_29EC63:    CMP #$C0                    ; $29:EC63: C9 C0       ;
CODE_29EC65:    BCC CODE_29EC49             ; $29:EC65: 90 E2       ;
CODE_29EC67:    LDA $01                     ; $29:EC67: A5 01       ;
CODE_29EC69:    CLC                         ; $29:EC69: 18          ;
CODE_29EC6A:    ADC #$08                    ; $29:EC6A: 69 08       ;
CODE_29EC6C:    STA $01                     ; $29:EC6C: 85 01       ;
CODE_29EC6E:    BRA CODE_29EC45             ; $29:EC6E: 80 D5       ;

CODE_29EC70:    CLC                         ; $29:EC70: 18          ;
CODE_29EC71:    ADC #$C0                    ; $29:EC71: 69 C0       ;
CODE_29EC73:    STA $0802,y                 ; $29:EC73: 99 02 08    ;
CODE_29EC76:    LDA $00                     ; $29:EC76: A5 00       ;
CODE_29EC78:    STA $0800,y                 ; $29:EC78: 99 00 08    ;
CODE_29EC7B:    LDA $01                     ; $29:EC7B: A5 01       ;
CODE_29EC7D:    STA $0801,y                 ; $29:EC7D: 99 01 08    ;
CODE_29EC80:    LDA $0598                   ; $29:EC80: AD 98 05    ;
CODE_29EC83:    BEQ CODE_29EC89             ; $29:EC83: F0 04       ;
CODE_29EC85:    LDA #$2B                    ; $29:EC85: A9 2B       ;
CODE_29EC87:    BRA CODE_29EC8B             ; $29:EC87: 80 02       ;

CODE_29EC89:    LDA #$21                    ; $29:EC89: A9 21       ;
CODE_29EC8B:    STA $0803,y                 ; $29:EC8B: 99 03 08    ;
CODE_29EC8E:    REP #$20                    ; $29:EC8E: C2 20       ;
CODE_29EC90:    PHY                         ; $29:EC90: 5A          ;
CODE_29EC91:    TYA                         ; $29:EC91: 98          ;
CODE_29EC92:    LSR A                       ; $29:EC92: 4A          ;
CODE_29EC93:    LSR A                       ; $29:EC93: 4A          ;
CODE_29EC94:    TAY                         ; $29:EC94: A8          ;
CODE_29EC95:    LDA #$0000                  ; $29:EC95: A9 00 00    ;
CODE_29EC98:    STA $0A20,y                 ; $29:EC98: 99 20 0A    ;
CODE_29EC9B:    PLY                         ; $29:EC9B: 7A          ;
CODE_29EC9C:    SEP #$20                    ; $29:EC9C: E2 20       ;
CODE_29EC9E:    INX                         ; $29:EC9E: E8          ;
CODE_29EC9F:    INY                         ; $29:EC9F: C8          ;
CODE_29ECA0:    INY                         ; $29:ECA0: C8          ;
CODE_29ECA1:    INY                         ; $29:ECA1: C8          ;
CODE_29ECA2:    INY                         ; $29:ECA2: C8          ;
CODE_29ECA3:    BRA CODE_29EC5C             ; $29:ECA3: 80 B7       ;

CODE_29ECA5:    LDA #$40                    ; $29:ECA5: A9 40       ;
CODE_29ECA7:    STA $01                     ; $29:ECA7: 85 01       ;
CODE_29ECA9:    LDA #$40                    ; $29:ECA9: A9 40       ;
CODE_29ECAB:    STA $00                     ; $29:ECAB: 85 00       ;
CODE_29ECAD:    LDA $00                     ; $29:ECAD: A5 00       ;
CODE_29ECAF:    STA $0800,y                 ; $29:ECAF: 99 00 08    ;
CODE_29ECB2:    CLC                         ; $29:ECB2: 18          ;
CODE_29ECB3:    ADC #$10                    ; $29:ECB3: 69 10       ;
CODE_29ECB5:    STA $00                     ; $29:ECB5: 85 00       ;
CODE_29ECB7:    LDA $01                     ; $29:ECB7: A5 01       ;
CODE_29ECB9:    STA $0801,y                 ; $29:ECB9: 99 01 08    ;
CODE_29ECBC:    LDA #$CD                    ; $29:ECBC: A9 CD       ;
CODE_29ECBE:    STA $0802,y                 ; $29:ECBE: 99 02 08    ;
CODE_29ECC1:    LDA $0598                   ; $29:ECC1: AD 98 05    ;
CODE_29ECC4:    BEQ CODE_29ECCA             ; $29:ECC4: F0 04       ;
CODE_29ECC6:    LDA #$2B                    ; $29:ECC6: A9 2B       ;
CODE_29ECC8:    BRA CODE_29ECCC             ; $29:ECC8: 80 02       ;

CODE_29ECCA:    LDA #$21                    ; $29:ECCA: A9 21       ;
CODE_29ECCC:    STA $0803,y                 ; $29:ECCC: 99 03 08    ;
CODE_29ECCF:    REP #$20                    ; $29:ECCF: C2 20       ;
CODE_29ECD1:    PHY                         ; $29:ECD1: 5A          ;
CODE_29ECD2:    TYA                         ; $29:ECD2: 98          ;
CODE_29ECD3:    LSR A                       ; $29:ECD3: 4A          ;
CODE_29ECD4:    LSR A                       ; $29:ECD4: 4A          ;
CODE_29ECD5:    TAY                         ; $29:ECD5: A8          ;
CODE_29ECD6:    LDA #$0002                  ; $29:ECD6: A9 02 00    ;
CODE_29ECD9:    STA $0A20,y                 ; $29:ECD9: 99 20 0A    ;
CODE_29ECDC:    PLY                         ; $29:ECDC: 7A          ;
CODE_29ECDD:    SEP #$20                    ; $29:ECDD: E2 20       ;
CODE_29ECDF:    INY                         ; $29:ECDF: C8          ;
CODE_29ECE0:    INY                         ; $29:ECE0: C8          ;
CODE_29ECE1:    INY                         ; $29:ECE1: C8          ;
CODE_29ECE2:    INY                         ; $29:ECE2: C8          ;
CODE_29ECE3:    LDA $00                     ; $29:ECE3: A5 00       ;
CODE_29ECE5:    CMP #$D0                    ; $29:ECE5: C9 D0       ;
CODE_29ECE7:    BCC CODE_29ECAD             ; $29:ECE7: 90 C4       ;
CODE_29ECE9:    LDA $01                     ; $29:ECE9: A5 01       ;
CODE_29ECEB:    CMP #$80                    ; $29:ECEB: C9 80       ;
CODE_29ECED:    BCS CODE_29ECF6                     ; $29:ECED: B0 07       ;
CODE_29ECEF:    CLC                         ; $29:ECEF: 18          ;
CODE_29ECF0:    ADC #$10                    ; $29:ECF0: 69 10       ;
CODE_29ECF2:    STA $01                     ; $29:ECF2: 85 01       ;
CODE_29ECF4:    BRA CODE_29ECA9             ; $29:ECF4: 80 B3       ;

CODE_29ECF6:    SEP #$10                    ; $29:ECF6: E2 10       ;
CODE_29ECF8:    LDY #$00                    ; $29:ECF8: A0 00       ;
CODE_29ECFA:    LDA $02E5                   ; $29:ECFA: AD E5 02    ;
CODE_29ECFD:    BNE CODE_29ED02             ; $29:ECFD: D0 03       ;
CODE_29ECFF:    JMP CODE_29EE07             ; $29:ECFF: 4C 07 EE    ;

CODE_29ED02:    LDX $0726                   ; $29:ED02: AE 26 07    ;
CODE_29ED05:    LDA $F6,x                   ; $29:ED05: B5 F6       ;
CODE_29ED07:    AND #$2C                    ; $29:ED07: 29 2C       ;
CODE_29ED09:    STA $0F                     ; $29:ED09: 85 0F       ;
CODE_29ED0B:    LDA $028C                   ; $29:ED0B: AD 8C 02    ;
CODE_29ED0E:    CMP #$01                    ; $29:ED0E: C9 01       ;
CODE_29ED10:    BEQ CODE_29ED4A             ; $29:ED10: F0 38       ;
CODE_29ED12:    LDA $0F                     ; $29:ED12: A5 0F       ;
CODE_29ED14:    AND #$20                    ; $29:ED14: 29 20       ;
CODE_29ED16:    BEQ CODE_29ED22             ; $29:ED16: F0 0A       ;
CODE_29ED18:    LDA #$01                    ; $29:ED18: A9 01       ;
CODE_29ED1A:    EOR $028E                   ; $29:ED1A: 4D 8E 02    ;
CODE_29ED1D:    STA $028E                   ; $29:ED1D: 8D 8E 02    ;
CODE_29ED20:    BRA CODE_29ED42             ; $29:ED20: 80 20       ;

CODE_29ED22:    LDA $0F                     ; $29:ED22: A5 0F       ;
CODE_29ED24:    AND #$08                    ; $29:ED24: 29 08       ;
CODE_29ED26:    BEQ CODE_29ED32             ; $29:ED26: F0 0A       ;
CODE_29ED28:    LDA $028E                   ; $29:ED28: AD 8E 02    ;
CODE_29ED2B:    BEQ CODE_29ED4A             ; $29:ED2B: F0 1D       ;
CODE_29ED2D:    STZ $028E                   ; $29:ED2D: 9C 8E 02    ;
CODE_29ED30:    BRA CODE_29ED42             ; $29:ED30: 80 10       ;

CODE_29ED32:    LDA $0F                     ; $29:ED32: A5 0F       ;
CODE_29ED34:    AND #$04                    ; $29:ED34: 29 04       ;
CODE_29ED36:    BEQ CODE_29ED4A             ; $29:ED36: F0 12       ;
CODE_29ED38:    LDA $028E                   ; $29:ED38: AD 8E 02    ;
CODE_29ED3B:    BNE CODE_29ED4A             ; $29:ED3B: D0 0D       ;
CODE_29ED3D:    LDA #$01                    ; $29:ED3D: A9 01       ;
CODE_29ED3F:    STA $028E                   ; $29:ED3F: 8D 8E 02    ;
CODE_29ED42:    LDA #$01                    ; $29:ED42: A9 01       ;
CODE_29ED44:    STA $1203                   ; $29:ED44: 8D 03 12    ;
CODE_29ED47:    STZ $028F                   ; $29:ED47: 9C 8F 02    ;
CODE_29ED4A:    INC $028F                   ; $29:ED4A: EE 8F 02    ;
CODE_29ED4D:    LDA #$5C                    ; $29:ED4D: A9 5C       ;
CODE_29ED4F:    STA $0800,y                 ; $29:ED4F: 99 00 08    ;
CODE_29ED52:    LDX $028E                   ; $29:ED52: AE 8E 02    ;
CODE_29ED55:    LDA.w DATA_29EF11,x                 ; $29:ED55: BD 11 EF    ;
CODE_29ED58:    STA $0801,y                 ; $29:ED58: 99 01 08    ;
CODE_29ED5B:    LDA $028F                   ; $29:ED5B: AD 8F 02    ;
CODE_29ED5E:    AND #$10                    ; $29:ED5E: 29 10       ;
CODE_29ED60:    LSR A                       ; $29:ED60: 4A          ;
CODE_29ED61:    LSR A                       ; $29:ED61: 4A          ;
CODE_29ED62:    LSR A                       ; $29:ED62: 4A          ;
CODE_29ED63:    LSR A                       ; $29:ED63: 4A          ;
CODE_29ED64:    TAX                         ; $29:ED64: AA          ;
CODE_29ED65:    LDA.w DATA_29EF13,x                 ; $29:ED65: BD 13 EF    ;
CODE_29ED68:    STA $0802,y                 ; $29:ED68: 99 02 08    ;
CODE_29ED6B:    LDA #$23                    ; $29:ED6B: A9 23       ;
CODE_29ED6D:    STA $0803,y                 ; $29:ED6D: 99 03 08    ;
CODE_29ED70:    LDA #$00                    ; $29:ED70: A9 00       ;
CODE_29ED72:    STA $0A20,y                 ; $29:ED72: 99 20 0A    ;
CODE_29ED75:    LDA $028C                   ; $29:ED75: AD 8C 02    ;
CODE_29ED78:    CMP #$01                    ; $29:ED78: C9 01       ;
CODE_29ED7A:    BEQ CODE_29EDB5             ; $29:ED7A: F0 39       ;
CODE_29ED7C:    LDX $0726                   ; $29:ED7C: AE 26 07    ;
CODE_29ED7F:    LDA $F6,x                   ; $29:ED7F: B5 F6       ;
CODE_29ED81:    AND #$10                    ; $29:ED81: 29 10       ;
CODE_29ED83:    BEQ CODE_29EDB5             ; $29:ED83: F0 30       ;
CODE_29ED85:    LDA #$22                    ; $29:ED85: A9 22       ;
CODE_29ED87:    STA $02DD                   ; $29:ED87: 8D DD 02    ;
CODE_29ED8A:    LDA $028E                   ; $29:ED8A: AD 8E 02    ;
CODE_29ED8D:    BNE CODE_29ED96             ; $29:ED8D: D0 07       ;
CODE_29ED8F:    LDA #$43                    ; $29:ED8F: A9 43       ;
CODE_29ED91:    STA $1200                   ; $29:ED91: 8D 00 12    ;
CODE_29ED94:    BRA CODE_29ED9B             ; $29:ED94: 80 05       ;

CODE_29ED96:    LDA #$3B                    ; $29:ED96: A9 3B       ;
CODE_29ED98:    STA $1200                   ; $29:ED98: 8D 00 12    ;
CODE_29ED9B:    JSL CODE_20804D             ; $29:ED9B: 22 4D 80 20 ;
CODE_29ED9F:    DEC $02DD                   ; $29:ED9F: CE DD 02    ;
CODE_29EDA2:    BNE CODE_29ED9B             ; $29:EDA2: D0 F7       ;
CODE_29EDA4:    LDA $028E                   ; $29:EDA4: AD 8E 02    ;
CODE_29EDA7:    BEQ CODE_29EDAC             ; $29:EDA7: F0 03       ;
CODE_29EDA9:    JSR CODE_29EDB9             ; $29:EDA9: 20 B9 ED    ;
CODE_29EDAC:    LDA #$F3                    ; $29:EDAC: A9 F3       ;
CODE_29EDAE:    STA $1202                   ; $29:EDAE: 8D 02 12    ;
CODE_29EDB1:    JML CODE_0080DE             ; $29:EDB1: 5C DE 80 00 ;

CODE_29EDB5:    PLY                         ; $29:EDB5: 7A          ;
CODE_29EDB6:    PLX                         ; $29:EDB6: FA          ;
CODE_29EDB7:    PLB                     ; $29:EDB7: AB          ;
CODE_29EDB8:    RTL                         ; $29:EDB8: 6B          ;

CODE_29EDB9:    LDX #$00                    ; $29:EDB9: A2 00       ;
CODE_29EDBB:    LDA $0726                   ; $29:EDBB: AD 26 07    ;
CODE_29EDBE:    BEQ CODE_29EDC2             ; $29:EDBE: F0 02       ;
CODE_29EDC0:    LDX #$23                    ; $29:EDC0: A2 23       ;
CODE_29EDC2:    LDA $0715                   ; $29:EDC2: AD 15 07    ;
CODE_29EDC5:    STA $1D9F,x                 ; $29:EDC5: 9D 9F 1D    ;
CODE_29EDC8:    LDA $0716                   ; $29:EDC8: AD 16 07    ;
CODE_29EDCB:    STA $1DA0,x                 ; $29:EDCB: 9D A0 1D    ;
CODE_29EDCE:    LDA $0717                   ; $29:EDCE: AD 17 07    ;
CODE_29EDD1:    STA $1DA1,x                 ; $29:EDD1: 9D A1 1D    ;
CODE_29EDD4:    REP #$20                    ; $29:EDD4: C2 20       ;
CODE_29EDD6:    LDX #$08                    ; $29:EDD6: A2 08       ;
CODE_29EDD8:    LDA.l DATA_21E43C,x                 ; $29:EDD8: BF 3C E4 21 ;
CODE_29EDDC:    STA $1EED,x                 ; $29:EDDC: 9D ED 1E    ;
CODE_29EDDF:    LDA.l DATA_21E484,x                 ; $29:EDDF: BF 84 E4 21 ;
CODE_29EDE3:    STA $1F09,x                 ; $29:EDE3: 9D 09 1F    ;
CODE_29EDE6:    LDA.l DATA_21E4CC,x                 ; $29:EDE6: BF CC E4 21 ;
CODE_29EDEA:    STA $1EFB,x                 ; $29:EDEA: 9D FB 1E    ;
CODE_29EDED:    LDA.l DATA_21E514,x                 ; $29:EDED: BF 14 E5 21 ;
CODE_29EDF1:    STA $1F17,x                 ; $29:EDF1: 9D 17 1F    ;
CODE_29EDF4:    DEX                         ; $29:EDF4: CA          ;
CODE_29EDF5:    DEX                         ; $29:EDF5: CA          ;
CODE_29EDF6:    BPL CODE_29EDD8             ; $29:EDF6: 10 E0       ;
CODE_29EDF8:    SEP #$20                    ; $29:EDF8: E2 20       ;
CODE_29EDFA:    LDX #$7F                    ; $29:EDFA: A2 7F       ;
CODE_29EDFC:    STZ $1D00,x                 ; $29:EDFC: 9E 00 1D    ;
CODE_29EDFF:    DEX                         ; $29:EDFF: CA          ;
CODE_29EE00:    BPL CODE_29EDFC             ; $29:EE00: 10 FA       ;
CODE_29EE02:    JSL CODE_00922D             ; $29:EE02: 22 2D 92 00 ;
CODE_29EE06:    RTS                         ; $29:EE06: 60          ;

CODE_29EE07:    LDX $0726                   ; $29:EE07: AE 26 07    ;
CODE_29EE0A:    LDA $00F6,x                 ; $29:EE0A: BD F6 00    ;
CODE_29EE0D:    AND #$2C                    ; $29:EE0D: 29 2C       ;
CODE_29EE0F:    STA $0F                     ; $29:EE0F: 85 0F       ;
CODE_29EE11:    LDA $028C                   ; $29:EE11: AD 8C 02    ;
CODE_29EE14:    CMP #$01                    ; $29:EE14: C9 01       ;
CODE_29EE16:    BEQ CODE_29EE6F             ; $29:EE16: F0 57       ;
CODE_29EE18:    CMP #$03                    ; $29:EE18: C9 03       ;
CODE_29EE1A:    BEQ CODE_29EE6F             ; $29:EE1A: F0 53       ;
CODE_29EE1C:    LDA $0F                     ; $29:EE1C: A5 0F       ;
CODE_29EE1E:    BEQ CODE_29EE6F             ; $29:EE1E: F0 4F       ;
CODE_29EE20:    AND #$20                    ; $29:EE20: 29 20       ;
CODE_29EE22:    BNE CODE_29EE5A             ; $29:EE22: D0 36       ;
CODE_29EE24:    LDA $0F                     ; $29:EE24: A5 0F       ;
CODE_29EE26:    AND #$08                    ; $29:EE26: 29 08       ;
CODE_29EE28:    BNE CODE_29EE43             ; $29:EE28: D0 19       ;
CODE_29EE2A:    INC $028E                   ; $29:EE2A: EE 8E 02    ;
CODE_29EE2D:    LDA $028E                   ; $29:EE2D: AD 8E 02    ;
CODE_29EE30:    CMP #$03                    ; $29:EE30: C9 03       ;
CODE_29EE32:    BCC CODE_29EE39             ; $29:EE32: 90 05       ;
CODE_29EE34:    DEC $028E                   ; $29:EE34: CE 8E 02    ;
CODE_29EE37:    BRA CODE_29EE6F             ; $29:EE37: 80 36       ;

CODE_29EE39:    LDA #$01                    ; $29:EE39: A9 01       ;
CODE_29EE3B:    STA $1203                   ; $29:EE3B: 8D 03 12    ;
CODE_29EE3E:    STZ $028F                   ; $29:EE3E: 9C 8F 02    ;
CODE_29EE41:    BRA CODE_29EE6F             ; $29:EE41: 80 2C       ;

CODE_29EE43:    DEC $028E                   ; $29:EE43: CE 8E 02    ;
CODE_29EE46:    LDA $028E                   ; $29:EE46: AD 8E 02    ;
CODE_29EE49:    BPL CODE_29EE50             ; $29:EE49: 10 05       ;
CODE_29EE4B:    INC $028E                   ; $29:EE4B: EE 8E 02    ;
CODE_29EE4E:    BRA CODE_29EE6F             ; $29:EE4E: 80 1F       ;

CODE_29EE50:    LDA #$01                    ; $29:EE50: A9 01       ;
CODE_29EE52:    STA $1203                   ; $29:EE52: 8D 03 12    ;
CODE_29EE55:    STZ $028F                   ; $29:EE55: 9C 8F 02    ;
CODE_29EE58:    BRA CODE_29EE6F             ; $29:EE58: 80 15       ;

CODE_29EE5A:    INC $028E                   ; $29:EE5A: EE 8E 02    ;
CODE_29EE5D:    LDA $028E                   ; $29:EE5D: AD 8E 02    ;
CODE_29EE60:    CMP #$03                    ; $29:EE60: C9 03       ;
CODE_29EE62:    BCC CODE_29EE67             ; $29:EE62: 90 03       ;
CODE_29EE64:    STZ $028E                   ; $29:EE64: 9C 8E 02    ;
CODE_29EE67:    LDA #$01                    ; $29:EE67: A9 01       ;
CODE_29EE69:    STA $1203                   ; $29:EE69: 8D 03 12    ;
CODE_29EE6C:    STZ $028F                   ; $29:EE6C: 9C 8F 02    ;
CODE_29EE6F:    LDA #$4C                    ; $29:EE6F: A9 4C       ;
CODE_29EE71:    STA $0800,y                 ; $29:EE71: 99 00 08    ;
CODE_29EE74:    LDX $028E                   ; $29:EE74: AE 8E 02    ;
CODE_29EE77:    LDA.w DATA_29EF0E,x                 ; $29:EE77: BD 0E EF    ;
CODE_29EE7A:    STA $0801,y                 ; $29:EE7A: 99 01 08    ;
CODE_29EE7D:    LDA $028F                   ; $29:EE7D: AD 8F 02    ;
CODE_29EE80:    AND #$10                    ; $29:EE80: 29 10       ;
CODE_29EE82:    LSR A                       ; $29:EE82: 4A          ;
CODE_29EE83:    LSR A                       ; $29:EE83: 4A          ;
CODE_29EE84:    LSR A                       ; $29:EE84: 4A          ;
CODE_29EE85:    LSR A                       ; $29:EE85: 4A          ;
CODE_29EE86:    TAX                         ; $29:EE86: AA          ;
CODE_29EE87:    LDA.w DATA_29EF13,x                 ; $29:EE87: BD 13 EF    ;
CODE_29EE8A:    STA $0802,y                 ; $29:EE8A: 99 02 08    ;
CODE_29EE8D:    LDA $0598                   ; $29:EE8D: AD 98 05    ;
CODE_29EE90:    BEQ CODE_29EE96             ; $29:EE90: F0 04       ;
CODE_29EE92:    LDA #$2B                    ; $29:EE92: A9 2B       ;
CODE_29EE94:    BRA CODE_29EE98             ; $29:EE94: 80 02       ;

CODE_29EE96:    LDA #$23                    ; $29:EE96: A9 23       ;
CODE_29EE98:    STA $0803,y                 ; $29:EE98: 99 03 08    ;
CODE_29EE9B:    LDA #$00                    ; $29:EE9B: A9 00       ;
CODE_29EE9D:    STA $0A20,y                 ; $29:EE9D: 99 20 0A    ;
CODE_29EEA0:    INC $028F                   ; $29:EEA0: EE 8F 02    ;
CODE_29EEA3:    LDA $0290                   ; $29:EEA3: AD 90 02    ;
CODE_29EEA6:    BEQ CODE_29EF07             ; $29:EEA6: F0 5F       ;
CODE_29EEA8:    LDA $18                     ; $29:EEA8: A5 18       ;
CODE_29EEAA:    AND #$10                    ; $29:EEAA: 29 10       ;
CODE_29EEAC:    BEQ CODE_29EF07             ; $29:EEAC: F0 59       ;
CODE_29EEAE:    LDA $028E                   ; $29:EEAE: AD 8E 02    ;
CODE_29EEB1:    BEQ CODE_29EF07             ; $29:EEB1: F0 54       ;
CODE_29EEB3:    LDX #$00                    ; $29:EEB3: A2 00       ;
CODE_29EEB5:    LDY $0726                   ; $29:EEB5: AC 26 07    ;
CODE_29EEB8:    BEQ CODE_29EEBC             ; $29:EEB8: F0 02       ;
CODE_29EEBA:    LDX #$23                    ; $29:EEBA: A2 23       ;
CODE_29EEBC:    LDA $0715                   ; $29:EEBC: AD 15 07    ;
CODE_29EEBF:    STA $1D9F,x                 ; $29:EEBF: 9D 9F 1D    ;
CODE_29EEC2:    LDA $0716                   ; $29:EEC2: AD 16 07    ;
CODE_29EEC5:    STA $1DA0,x                 ; $29:EEC5: 9D A0 1D    ;
CODE_29EEC8:    LDA $0717                   ; $29:EEC8: AD 17 07    ;
CODE_29EECB:    STA $1DA1,x                 ; $29:EECB: 9D A1 1D    ;
CODE_29EECE:    LDA #$3B                    ; $29:EECE: A9 3B       ;
CODE_29EED0:    STA $1200                   ; $29:EED0: 8D 00 12    ;
CODE_29EED3:    LDA $028E                   ; $29:EED3: AD 8E 02    ;
CODE_29EED6:    CMP #$01                    ; $29:EED6: C9 01       ;
CODE_29EED8:    BEQ CODE_29EEDF             ; $29:EED8: F0 05       ;
CODE_29EEDA:    LDA #$F3                    ; $29:EEDA: A9 F3       ;
CODE_29EEDC:    STA $1202                   ; $29:EEDC: 8D 02 12    ;
CODE_29EEDF:    JSL CODE_00922D             ; $29:EEDF: 22 2D 92 00 ;
CODE_29EEE3:    LDA #$22                    ; $29:EEE3: A9 22       ;
CODE_29EEE5:    STA $02DD                   ; $29:EEE5: 8D DD 02    ;
CODE_29EEE8:    JSL CODE_20804D             ; $29:EEE8: 22 4D 80 20 ;
CODE_29EEEC:    DEC $02DD                   ; $29:EEEC: CE DD 02    ;
CODE_29EEEF:    BNE CODE_29EEE8             ; $29:EEEF: D0 F7       ;
CODE_29EEF1:    STZ $0290                   ; $29:EEF1: 9C 90 02    ;
CODE_29EEF4:    LDA $028E                   ; $29:EEF4: AD 8E 02    ;
CODE_29EEF7:    CMP #$01                    ; $29:EEF7: C9 01       ;
CODE_29EEF9:    BEQ CODE_29EF07             ; $29:EEF9: F0 0C       ;
CODE_29EEFB:    STZ $1200                   ; $29:EEFB: 9C 00 12    ;
CODE_29EEFE:    LDA #$80                    ; $29:EEFE: A9 80       ;
CODE_29EF00:    STA $1202                   ; $29:EF00: 8D 02 12    ;
CODE_29EF03:    JML CODE_0080DE             ; $29:EF03: 5C DE 80 00 ;

CODE_29EF07:    STZ $02DD                   ; $29:EF07: 9C DD 02    ;
CODE_29EF0A:    PLY                         ; $29:EF0A: 7A          ;
CODE_29EF0B:    PLX                         ; $29:EF0B: FA          ;
CODE_29EF0C:    PLB                     ; $29:EF0C: AB          ;
CODE_29EF0D:    RTL                         ; $29:EF0D: 6B          ;

DATA_29EF0E:        db $50,$60,$70

DATA_29EF11:        db $58,$68

DATA_29EF13:        db $D0,$DE

DATA_29EF15:        db $AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$14,$15,$16,$17
                    db $18,$19,$1A,$1B,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$28,$29
                    db $2A,$2B,$1C,$14,$15,$16,$17,$18
                    db $19,$1A,$1B,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $28,$29,$2A,$2B,$1C,$24,$25,$26
                    db $27,$AA,$AA,$AA,$AA,$FF

DATA_29EF64:        db $AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$24,$25,$26,$27,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$28,$29,$2A,$2B
                    db $1C,$24,$25,$26,$27,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
                    db $AA,$AA,$AA,$AA,$FF

CODE_29EFB3:    LDA $028B               ; $29:EFB3: AD 8B 02    ;
CODE_29EFB6:    BEQ CODE_29F016             ; $29:EFB6: F0 5E       ;
CODE_29EFB8:    BMI CODE_29F016             ; $29:EFB8: 30 5C       ;
CODE_29EFBA:    REP #$30                    ; $29:EFBA: C2 30       ;
CODE_29EFBC:    DEC $028B                   ; $29:EFBC: CE 8B 02    ;
CODE_29EFBF:    DEC $0281                   ; $29:EFBF: CE 81 02    ;
CODE_29EFC2:    DEC $0281                   ; $29:EFC2: CE 81 02    ;
CODE_29EFC5:    INC $0283                   ; $29:EFC5: EE 83 02    ;
CODE_29EFC8:    INC $0283                   ; $29:EFC8: EE 83 02    ;
CODE_29EFCB:    DEC $0285                   ; $29:EFCB: CE 85 02    ;
CODE_29EFCE:    DEC $0285                   ; $29:EFCE: CE 85 02    ;
CODE_29EFD1:    DEC $0285                   ; $29:EFD1: CE 85 02    ;
CODE_29EFD4:    DEC $0285                   ; $29:EFD4: CE 85 02    ;
CODE_29EFD7:    INC $0289                   ; $29:EFD7: EE 89 02    ;
CODE_29EFDA:    INC $0289                   ; $29:EFDA: EE 89 02    ;
CODE_29EFDD:    INC $0289                   ; $29:EFDD: EE 89 02    ;
CODE_29EFE0:    INC $0289                   ; $29:EFE0: EE 89 02    ;
CODE_29EFE3:    LDX #$007E                  ; $29:EFE3: A2 7E 00    ;
CODE_29EFE6:    LDA #$00FF                  ; $29:EFE6: A9 FF 00    ;
CODE_29EFE9:    STA $7F9000,x               ; $29:EFE9: 9F 00 90 7F ;
CODE_29EFED:    STA $7F9080,x               ; $29:EFED: 9F 80 90 7F ;
CODE_29EFF1:    STA $7F9100,x               ; $29:EFF1: 9F 00 91 7F ;
CODE_29EFF5:    STA $7F9180,x               ; $29:EFF5: 9F 80 91 7F ;
CODE_29EFF9:    DEX                         ; $29:EFF9: CA          ;
CODE_29EFFA:    DEX                         ; $29:EFFA: CA          ;
CODE_29EFFB:    BPL CODE_29EFE9             ; $29:EFFB: 10 EC       ;
CODE_29EFFD:    LDA $0283                   ; $29:EFFD: AD 83 02    ;
CODE_29F000:    XBA                         ; $29:F000: EB          ;
CODE_29F001:    ORA $0281                   ; $29:F001: 0D 81 02    ;
CODE_29F004:    LDX $0285                   ; $29:F004: AE 85 02    ;
CODE_29F007:    STA $7F9000,x               ; $29:F007: 9F 00 90 7F ;
CODE_29F00B:    INX                         ; $29:F00B: E8          ;
CODE_29F00C:    INX                         ; $29:F00C: E8          ;
CODE_29F00D:    CPX $0289                   ; $29:F00D: EC 89 02    ;
CODE_29F010:    BNE CODE_29F007             ; $29:F010: D0 F5       ;
CODE_29F012:    SEP #$30                    ; $29:F012: E2 30       ;
CODE_29F014:    BRA CODE_29F01C             ; $29:F014: 80 06       ;

CODE_29F016:    INC $028C                   ; $29:F016: EE 8C 02    ;
CODE_29F019:    INC $0290                   ; $29:F019: EE 90 02    ;
CODE_29F01C:    JMP CODE_29EC39             ; $29:F01C: 4C 39 EC    ;

CODE_29F01F:    LDA $028B                   ; $29:F01F: AD 8B 02    ;
CODE_29F022:    CMP #$11                    ; $29:F022: C9 11       ;
CODE_29F024:    BNE CODE_29F02C             ; $29:F024: D0 06       ;
CODE_29F026:    DEC $028B                   ; $29:F026: CE 8B 02    ;
CODE_29F029:    JMP CODE_29EC39             ; $29:F029: 4C 39 EC    ;

CODE_29F02C:    CMP #$10                    ; $29:F02C: C9 10       ;
CODE_29F02E:    BNE CODE_29F03F             ; $29:F02E: D0 0F       ;
CODE_29F030:    LDA #$F2                    ; $29:F030: A9 F2       ;
CODE_29F032:    STA $1202                   ; $29:F032: 8D 02 12    ;
CODE_29F035:    LDA $028E                   ; $29:F035: AD 8E 02    ;
CODE_29F038:    BNE CODE_29F03F             ; $29:F038: D0 05       ;
CODE_29F03A:    LDA #$43                    ; $29:F03A: A9 43       ;
CODE_29F03C:    STA $1200                   ; $29:F03C: 8D 00 12    ;
CODE_29F03F:    LDA $028B                   ; $29:F03F: AD 8B 02    ;
CODE_29F042:    BEQ CODE_29F0A2             ; $29:F042: F0 5E       ;
CODE_29F044:    BMI CODE_29F0A2             ; $29:F044: 30 5C       ;
CODE_29F046:    REP #$30                    ; $29:F046: C2 30       ;
CODE_29F048:    INC $0281                   ; $29:F048: EE 81 02    ;
CODE_29F04B:    INC $0281                   ; $29:F04B: EE 81 02    ;
CODE_29F04E:    DEC $0283                   ; $29:F04E: CE 83 02    ;
CODE_29F051:    DEC $0283                   ; $29:F051: CE 83 02    ;
CODE_29F054:    INC $0285                   ; $29:F054: EE 85 02    ;
CODE_29F057:    INC $0285                   ; $29:F057: EE 85 02    ;
CODE_29F05A:    INC $0285                   ; $29:F05A: EE 85 02    ;
CODE_29F05D:    INC $0285                   ; $29:F05D: EE 85 02    ;
CODE_29F060:    DEC $0289                   ; $29:F060: CE 89 02    ;
CODE_29F063:    DEC $0289                   ; $29:F063: CE 89 02    ;
CODE_29F066:    DEC $0289                   ; $29:F066: CE 89 02    ;
CODE_29F069:    DEC $0289                   ; $29:F069: CE 89 02    ;
CODE_29F06C:    DEC $028B                   ; $29:F06C: CE 8B 02    ;
CODE_29F06F:    LDX #$007E                  ; $29:F06F: A2 7E 00    ;
CODE_29F072:    LDA #$00FF                  ; $29:F072: A9 FF 00    ;
CODE_29F075:    STA $7F9000,x               ; $29:F075: 9F 00 90 7F ;
CODE_29F079:    STA $7F9080,x               ; $29:F079: 9F 80 90 7F ;
CODE_29F07D:    STA $7F9100,x               ; $29:F07D: 9F 00 91 7F ;
CODE_29F081:    STA $7F9180,x               ; $29:F081: 9F 80 91 7F ;
CODE_29F085:    DEX                         ; $29:F085: CA          ;
CODE_29F086:    DEX                         ; $29:F086: CA          ;
CODE_29F087:    BPL CODE_29F075             ; $29:F087: 10 EC       ;
CODE_29F089:    LDA $0283                   ; $29:F089: AD 83 02    ;
CODE_29F08C:    XBA                         ; $29:F08C: EB          ;
CODE_29F08D:    ORA $0281                   ; $29:F08D: 0D 81 02    ;
CODE_29F090:    LDX $0285                   ; $29:F090: AE 85 02    ;
CODE_29F093:    STA $7F9000,x               ; $29:F093: 9F 00 90 7F ;
CODE_29F097:    INX                         ; $29:F097: E8          ;
CODE_29F098:    INX                         ; $29:F098: E8          ;
CODE_29F099:    CPX $0289                   ; $29:F099: EC 89 02    ;
CODE_29F09C:    BNE CODE_29F093             ; $29:F09C: D0 F5       ;
CODE_29F09E:    SEP #$30                    ; $29:F09E: E2 30       ;
CODE_29F0A0:    BRA CODE_29F0DE             ; $29:F0A0: 80 3C       ;

CODE_29F0A2:    STZ $028C                   ; $29:F0A2: 9C 8C 02    ;
CODE_29F0A5:    STZ $396D                   ; $29:F0A5: 9C 6D 39    ;
CODE_29F0A8:    STZ $0200                   ; $29:F0A8: 9C 00 02    ;
CODE_29F0AB:    STZ $0201                   ; $29:F0AB: 9C 01 02    ;
CODE_29F0AE:    LDA $0202                   ; $29:F0AE: AD 02 02    ;
CODE_29F0B1:    EOR #$33                    ; $29:F0B1: 49 33       ;
CODE_29F0B3:    STA $0202                   ; $29:F0B3: 8D 02 02    ;
CODE_29F0B6:    LDA $0287                   ; $29:F0B6: AD 87 02    ;
CODE_29F0B9:    STA $020A                   ; $29:F0B9: 8D 0A 02    ;
CODE_29F0BC:    LDA $0288                   ; $29:F0BC: AD 88 02    ;
CODE_29F0BF:    STA $020B                   ; $29:F0BF: 8D 0B 02    ;
CODE_29F0C2:    LDA $037A                   ; $29:F0C2: AD 7A 03    ;
CODE_29F0C5:    BNE CODE_29F0CC             ; $29:F0C5: D0 05       ;
CODE_29F0C7:    JSR CODE_29EB9B             ; $29:F0C7: 20 9B EB    ;
CODE_29F0CA:    BRA CODE_29F0CF             ; $29:F0CA: 80 03       ;

CODE_29F0CC:    JSR CODE_29EB7F             ; $29:F0CC: 20 7F EB    ;
CODE_29F0CF:    STZ $037A                   ; $29:F0CF: 9C 7A 03    ;
CODE_29F0D2:    LDA $0293                   ; $29:F0D2: AD 93 02    ;
CODE_29F0D5:    AND #$F7                    ; $29:F0D5: 29 F7       ;
CODE_29F0D7:    STA $0293                   ; $29:F0D7: 8D 93 02    ;
CODE_29F0DA:    PLY                         ; $29:F0DA: 7A          ;
CODE_29F0DB:    PLX                         ; $29:F0DB: FA          ;
CODE_29F0DC:    PLB                     ; $29:F0DC: AB          ;
CODE_29F0DD:    RTL                         ; $29:F0DD: 6B          ;

CODE_29F0DE:    JMP CODE_29EC39             ; $29:F0DE: 4C 39 EC    ;

CODE_29F0E1:    PHB                         ; $29:F0E1: 8B          ;
CODE_29F0E2:    LDA #$7F                    ; $29:F0E2: A9 7F       ;
CODE_29F0E4:    PHA                         ; $29:F0E4: 48          ;
CODE_29F0E5:    PLB                     ; $29:F0E5: AB          ; Data bank: $7F
CODE_29F0E6:    REP #$30                    ; $29:F0E6: C2 30       ;
CODE_29F0E8:    LDX #$007E                  ; $29:F0E8: A2 7E 00    ;
CODE_29F0EB:    LDA #$0000                  ; $29:F0EB: A9 00 00    ;
CODE_29F0EE:    STA $9000,x                 ; $29:F0EE: 9D 00 90    ;
CODE_29F0F1:    STA $9080,x                 ; $29:F0F1: 9D 80 90    ;
CODE_29F0F4:    STA $9100,x                 ; $29:F0F4: 9D 00 91    ;
CODE_29F0F7:    STA $9180,x                 ; $29:F0F7: 9D 80 91    ;
CODE_29F0FA:    DEX                         ; $29:F0FA: CA          ;
CODE_29F0FB:    DEX                         ; $29:F0FB: CA          ;
CODE_29F0FC:    BPL CODE_29F0EE             ; $29:F0FC: 10 F0       ;
CODE_29F0FE:    PLB                     ; $29:F0FE: AB          ;
CODE_29F0FF:    SEP #$20                    ; $29:F0FF: E2 20       ;
CODE_29F101:    LDX #$2641                  ; $29:F101: A2 41 26    ;
CODE_29F104:    STX $4330                   ; $29:F104: 8E 30 43    ;
CODE_29F107:    LDX.w #DATA_29F14C                  ; $29:F107: A2 4C F1    ;
CODE_29F10A:    STX $4332                   ; $29:F10A: 8E 32 43    ;
CODE_29F10D:    LDA.b #DATA_29F14C>>16                      ; $29:F10D: A9 29       ;
CODE_29F10F:    STA $4334                   ; $29:F10F: 8D 34 43    ;
CODE_29F112:    LDA #$7F                    ; $29:F112: A9 7F       ;
CODE_29F114:    STA $4337                   ; $29:F114: 8D 37 43    ;
CODE_29F117:    LDA #$22                    ; $29:F117: A9 22       ;
CODE_29F119:    STA $0200                   ; $29:F119: 8D 00 02    ;
CODE_29F11C:    LDA #$02                    ; $29:F11C: A9 02       ;
CODE_29F11E:    STA $0201                   ; $29:F11E: 8D 01 02    ;
CODE_29F121:    LDA $0202                   ; $29:F121: AD 02 02    ;
CODE_29F124:    ORA #$33                    ; $29:F124: 09 33       ;
CODE_29F126:    STA $0202                   ; $29:F126: 8D 02 02    ;
CODE_29F129:    LDA $020A                   ; $29:F129: AD 0A 02    ;
CODE_29F12C:    STA $0287                   ; $29:F12C: 8D 87 02    ;
CODE_29F12F:    LDA $020B                   ; $29:F12F: AD 0B 02    ;
CODE_29F132:    STA $0288                   ; $29:F132: 8D 88 02    ;
CODE_29F135:    LDA $0208                   ; $29:F135: AD 08 02    ;
CODE_29F138:    STA $020A                   ; $29:F138: 8D 0A 02    ;
CODE_29F13B:    LDA $0209                   ; $29:F13B: AD 09 02    ;
CODE_29F13E:    STA $020B                   ; $29:F13E: 8D 0B 02    ;
CODE_29F141:    SEP #$10                    ; $29:F141: E2 10       ;
CODE_29F143:    LDA $0293                   ; $29:F143: AD 93 02    ;
CODE_29F146:    ORA #$08                    ; $29:F146: 09 08       ;
CODE_29F148:    STA $0293                   ; $29:F148: 8D 93 02    ;
CODE_29F14B:    RTS                         ; $29:F14B: 60          ;

DATA_29F14C:        db $F8,$00,$90,$F8,$F0,$90,$00

CODE_29F153:    PHB                     ; $29:F153: 8B          ;
CODE_29F154:    LDA #$7F                    ; $29:F154: A9 7F       ;
CODE_29F156:    PHA                         ; $29:F156: 48          ;
CODE_29F157:    PLB                     ; $29:F157: AB          ;
CODE_29F158:    REP #$30                    ; $29:F158: C2 30       ;
CODE_29F15A:    LDX #$01A0                  ; $29:F15A: A2 A0 01    ;
CODE_29F15D:    LDA #$00FF                  ; $29:F15D: A9 FF 00    ;
CODE_29F160:    STA $9000,x                 ; $29:F160: 9D 00 90    ;
CODE_29F163:    STA $9002,x                 ; $29:F163: 9D 02 90    ;
CODE_29F166:    STA $9004,x                 ; $29:F166: 9D 04 90    ;
CODE_29F169:    STA $9006,x                 ; $29:F169: 9D 06 90    ;
CODE_29F16C:    STA $9008,x                 ; $29:F16C: 9D 08 90    ;
CODE_29F16F:    STA $900A,x                 ; $29:F16F: 9D 0A 90    ;
CODE_29F172:    STA $900C,x                 ; $29:F172: 9D 0C 90    ;
CODE_29F175:    STA $900E,x                 ; $29:F175: 9D 0E 90    ;
CODE_29F178:    STA $9010,x                 ; $29:F178: 9D 10 90    ;
CODE_29F17B:    STA $9012,x                 ; $29:F17B: 9D 12 90    ;
CODE_29F17E:    STA $9014,x                 ; $29:F17E: 9D 14 90    ;
CODE_29F181:    STA $9016,x                 ; $29:F181: 9D 16 90    ;
CODE_29F184:    STA $9018,x                 ; $29:F184: 9D 18 90    ;
CODE_29F187:    STA $901A,x                 ; $29:F187: 9D 1A 90    ;
CODE_29F18A:    STA $901C,x                 ; $29:F18A: 9D 1C 90    ;
CODE_29F18D:    STA $901E,x                 ; $29:F18D: 9D 1E 90    ;
CODE_29F190:    TXA                         ; $29:F190: 8A          ;
CODE_29F191:    SEC                         ; $29:F191: 38          ;
CODE_29F192:    SBC #$0020                  ; $29:F192: E9 20 00    ;
CODE_29F195:    TAX                         ; $29:F195: AA          ;
CODE_29F196:    BPL CODE_29F15D             ; $29:F196: 10 C5       ;
CODE_29F198:    SEP #$30                    ; $29:F198: E2 30       ;
CODE_29F19A:    PLB                     ; $29:F19A: AB          ;
CODE_29F19B:    RTS                         ; $29:F19B: 60          ;

DATA_29F19C:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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

CODE_29F800:    LDA #$22                    ; $29:F800: A9 22       ;
CODE_29F802:    STA $1CF6,x                 ; $29:F802: 9D F6 1C    ;
CODE_29F805:    INC $1FF9,x                 ; $29:F805: FE F9 1F    ;
CODE_29F808:    RTL                         ; $29:F808: 6B          ;

CODE_29F809:    LDA $9C                     ; $29:F809: A5 9C       ;
CODE_29F80B:    BNE CODE_29F851             ; $29:F80B: D0 44       ;
CODE_29F80D:    LDA $0520,x                 ; $29:F80D: BD 20 05    ;
CODE_29F810:    BEQ CODE_29F816             ; $29:F810: F0 04       ;
CODE_29F812:    JSL CODE_27DF26             ; $29:F812: 22 26 DF 27 ;
CODE_29F816:    LDA $1A63                   ; $29:F816: AD 63 1A    ;
CODE_29F819:    BEQ CODE_29F81E             ; $29:F819: F0 03       ;
CODE_29F81B:    DEC $1A63                   ; $29:F81B: CE 63 1A    ;
CODE_29F81E:    LDA $1A64                   ; $29:F81E: AD 64 1A    ;
CODE_29F821:    AND #$1F                    ; $29:F821: 29 1F       ;
CODE_29F823:    BEQ CODE_29F828             ; $29:F823: F0 03       ;
CODE_29F825:    DEC $1A64                   ; $29:F825: CE 64 1A    ;
CODE_29F828:    JSR CODE_29F864             ; $29:F828: 20 64 F8    ;
CODE_29F82B:    JSR CODE_29FA82             ; $29:F82B: 20 82 FA    ;
CODE_29F82E:    JSL CODE_279B6F             ; $29:F82E: 22 6F 9B 27 ;
CODE_29F832:    LDA $0797,x                 ; $29:F832: BD 97 07    ;
CODE_29F835:    BEQ CODE_29F851             ; $29:F835: F0 1A       ;
CODE_29F837:    LDA #$08                    ; $29:F837: A9 08       ;
CODE_29F839:    STA $0520,x                 ; $29:F839: 9D 20 05    ;
CODE_29F83C:    LDA $9D                     ; $29:F83C: A5 9D       ;
CODE_29F83E:    BMI CODE_29F851             ; $29:F83E: 30 11       ;
CODE_29F840:    LDA #$D0                    ; $29:F840: A9 D0       ;
CODE_29F842:    STA $9D                     ; $29:F842: 85 9D       ;
CODE_29F844:    JSR CODE_29FD18             ; $29:F844: 20 18 FD    ;
CODE_29F847:    LDA.w DATA_21C8A7,y                 ; $29:F847: B9 A7 C8    ;
CODE_29F84A:    STA $8B                     ; $29:F84A: 85 8B       ;
CODE_29F84C:    LDA #$01                    ; $29:F84C: A9 01       ;
CODE_29F84E:    STA $1200                   ; $29:F84E: 8D 00 12    ;
CODE_29F851:    LDA $68,x                   ; $29:F851: B5 68       ;
CODE_29F853:    BEQ CODE_29F85E             ; $29:F853: F0 09       ;
CODE_29F855:    JSR CODE_29FC2A             ; $29:F855: 20 2A FC    ;
CODE_29F858:    LDA $68,x                   ; $29:F858: B5 68       ;
CODE_29F85A:    CMP #$01                    ; $29:F85A: C9 01       ;
CODE_29F85C:    BEQ CODE_29F863             ; $29:F85C: F0 05       ;
CODE_29F85E:    LDA #$FF                    ; $29:F85E: A9 FF       ;
CODE_29F860:    STA $0651,x                 ; $29:F860: 9D 51 06    ;
CODE_29F863:    RTL                         ; $29:F863: 6B          ;

CODE_29F864:    LDA $68,x                   ; $29:F864: B5 68       ;
CODE_29F866:    JSL CODE_20FB1F         ; $29:F866: 22 1F FB 20 ; ExecutePtrShort

PNTR_29F86A:        dw CODE_29F876
                    dw CODE_29F8AB
                    dw CODE_29FD5E
                    dw CODE_29FDC3
                    dw CODE_29FDDA
                    dw CODE_29FDE9

CODE_29F876:    LDA $0651,x                 ; $29:F876: BD 51 06    ;
CODE_29F879:    BNE CODE_29F8AA             ; $29:F879: D0 2F       ;
CODE_29F87B:    LDA $0210                   ; $29:F87B: AD 10 02    ;
CODE_29F87E:    CMP #$07                    ; $29:F87E: C9 07       ;
CODE_29F880:    BCS CODE_29F8AA                     ; $29:F880: B0 28       ;
CODE_29F882:    LDA #$00                    ; $29:F882: A9 00       ;
CODE_29F884:    STA $0210                   ; $29:F884: 8D 10 02    ;
CODE_29F887:    STA $8B                     ; $29:F887: 85 8B       ;
CODE_29F889:    LDA $A6                     ; $29:F889: A5 A6       ;
CODE_29F88B:    BNE CODE_29F8AA             ; $29:F88B: D0 1D       ;
CODE_29F88D:    LDA #$EF                    ; $29:F88D: A9 EF       ;
CODE_29F88F:    STA $0216                   ; $29:F88F: 8D 16 02    ;
CODE_29F892:    LDA #$05                    ; $29:F892: A9 05       ;
CODE_29F894:    STA $1202                   ; $29:F894: 8D 02 12    ;
CODE_29F897:    INC $1EB8                   ; $29:F897: EE B8 1E    ;
CODE_29F89A:    LDA #$02                    ; $29:F89A: A9 02       ;
CODE_29F89C:    STA $0424                   ; $29:F89C: 8D 24 04    ;
CODE_29F89F:    LDA #$03                    ; $29:F89F: A9 03       ;
CODE_29F8A1:    STA $4D,x                   ; $29:F8A1: 95 4D       ;
CODE_29F8A3:    LDA #$30                    ; $29:F8A3: A9 30       ;
CODE_29F8A5:    STA $06A6,x                 ; $29:F8A5: 9D A6 06    ;
CODE_29F8A8:    INC $68,x                   ; $29:F8A8: F6 68       ;
CODE_29F8AA:    RTS                         ; $29:F8AA: 60          ;

CODE_29F8AB:    JSR CODE_29FD28             ; $29:F8AB: 20 28 FD    ;
CODE_29F8AE:    LDA $0565                   ; $29:F8AE: AD 65 05    ;
CODE_29F8B1:    AND #$1F                    ; $29:F8B1: 29 1F       ;
CODE_29F8B3:    ORA $1A63                   ; $29:F8B3: 0D 63 1A    ;
CODE_29F8B6:    BNE CODE_29F8CA             ; $29:F8B6: D0 12       ;
CODE_29F8B8:    LDA $0679,x                 ; $29:F8B8: BD 79 06    ;
CODE_29F8BB:    PHA                         ; $29:F8BB: 48          ;
CODE_29F8BC:    JSR CODE_29FA78             ; $29:F8BC: 20 78 FA    ;
CODE_29F8BF:    PLA                         ; $29:F8BF: 68          ;
CODE_29F8C0:    CMP $0679,x                 ; $29:F8C0: DD 79 06    ;
CODE_29F8C3:    BEQ CODE_29F8CA             ; $29:F8C3: F0 05       ;
CODE_29F8C5:    ORA #$13                    ; $29:F8C5: 09 13       ;
CODE_29F8C7:    STA $1A64                   ; $29:F8C7: 8D 64 1A    ;
CODE_29F8CA:    LDA $4D,x                   ; $29:F8CA: B5 4D       ;
CODE_29F8CC:    JSL CODE_20FB1F         ; $29:F8CC: 22 1F FB 20 ; ExecutePtrShort

PNTR_29F8D0:        dw CODE_29F8D8
                    dw CODE_29F964
                    dw CODE_29F9E8
                    dw CODE_29FA1A

CODE_29F8D8:    JSR CODE_29FB22             ; $29:F8D8: 20 22 FB    ;
CODE_29F8DB:    LDA $1A64                   ; $29:F8DB: AD 64 1A    ;
CODE_29F8DE:    AND #$1F                    ; $29:F8DE: 29 1F       ;
CODE_29F8E0:    BEQ CODE_29F8F5             ; $29:F8E0: F0 13       ;
CODE_29F8E2:    LSR A                       ; $29:F8E2: 4A          ;
CODE_29F8E3:    LSR A                       ; $29:F8E3: 4A          ;
CODE_29F8E4:    AND #$07                    ; $29:F8E4: 29 07       ;
CODE_29F8E6:    TAY                         ; $29:F8E6: A8          ;
CODE_29F8E7:    LDA $1A64                   ; $29:F8E7: AD 64 1A    ;
CODE_29F8EA:    AND #$40                    ; $29:F8EA: 29 40       ;
CODE_29F8EC:    EOR.w DATA_21C8BE,y                 ; $29:F8EC: 59 BE C8    ;
CODE_29F8EF:    STA $0679,x                 ; $29:F8EF: 9D 79 06    ;
CODE_29F8F2:    LDA.w DATA_21C8B9,y                 ; $29:F8F2: B9 B9 C8    ;
CODE_29F8F5:    STA $0669,x                 ; $29:F8F5: 9D 69 06    ;
CODE_29F8F8:    LDA $0518,x                 ; $29:F8F8: BD 18 05    ;
CODE_29F8FB:    BNE CODE_29F91F             ; $29:F8FB: D0 22       ;
CODE_29F8FD:    JSR CODE_29FB3B             ; $29:F8FD: 20 3B FB    ;
CODE_29F900:    LDA $9E,x                   ; $29:F900: B5 9E       ;
CODE_29F902:    CMP #$40                    ; $29:F902: C9 40       ;
CODE_29F904:    BPL CODE_29F908             ; $29:F904: 10 02       ;
CODE_29F906:    INC $9E,x                   ; $29:F906: F6 9E       ;
CODE_29F908:    LDA $A7,x                   ; $29:F908: B5 A7       ;
CODE_29F90A:    AND #$04                    ; $29:F90A: 29 04       ;
CODE_29F90C:    BEQ CODE_29F91E             ; $29:F90C: F0 10       ;
CODE_29F90E:    JSL CODE_278B67             ; $29:F90E: 22 67 8B 27 ;
CODE_29F912:    LDA #$10                    ; $29:F912: A9 10       ;
CODE_29F914:    LDY $06A6,x                 ; $29:F914: BC A6 06    ;
CODE_29F917:    BNE CODE_29F91B             ; $29:F917: D0 02       ;
CODE_29F919:    LDA #$B0                    ; $29:F919: A9 B0       ;
CODE_29F91B:    STA $0518,x                 ; $29:F91B: 9D 18 05    ;
CODE_29F91E:    RTS                         ; $29:F91E: 60          ;

CODE_29F91F:    LDA $1A64                   ; $29:F91F: AD 64 1A    ;
CODE_29F922:    AND #$1F                    ; $29:F922: 29 1F       ;
CODE_29F924:    BNE CODE_29F929             ; $29:F924: D0 03       ;
CODE_29F926:    INC $0669,x                 ; $29:F926: FE 69 06    ;
CODE_29F929:    LDA $0518,x                 ; $29:F929: BD 18 05    ;
CODE_29F92C:    CMP #$01                    ; $29:F92C: C9 01       ;
CODE_29F92E:    BEQ CODE_29F95F             ; $29:F92E: F0 2F       ;
CODE_29F930:    CMP #$80                    ; $29:F930: C9 80       ;
CODE_29F932:    BNE CODE_29F95E             ; $29:F932: D0 2A       ;
CODE_29F934:    LDA #$01                    ; $29:F934: A9 01       ;
CODE_29F936:    STA $4D,x                   ; $29:F936: 95 4D       ;
CODE_29F938:    LDA #$A0                    ; $29:F938: A9 A0       ;
CODE_29F93A:    STA $9E,x                   ; $29:F93A: 95 9E       ;
CODE_29F93C:    JSR CODE_29FD18             ; $29:F93C: 20 18 FD    ;
CODE_29F93F:    STY $00                     ; $29:F93F: 84 00       ;
CODE_29F941:    LDA $0F                     ; $29:F941: A5 0F       ;
CODE_29F943:    BPL CODE_29F949             ; $29:F943: 10 04       ;
CODE_29F945:    JSL CODE_27A859         ; $29:F945: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_29F949:    LSR A                       ; $29:F949: 4A          ;
CODE_29F94A:    LSR A                       ; $29:F94A: 4A          ;
CODE_29F94B:    LSR A                       ; $29:F94B: 4A          ;
CODE_29F94C:    LSR A                       ; $29:F94C: 4A          ;
CODE_29F94D:    AND #$0F                    ; $29:F94D: 29 0F       ;
CODE_29F94F:    TAY                         ; $29:F94F: A8          ;
CODE_29F950:    LDA.w DATA_21C8A9,y                 ; $29:F950: B9 A9 C8    ;
CODE_29F953:    LDY $00                     ; $29:F953: A4 00       ;
CODE_29F955:    DEY                         ; $29:F955: 88          ;
CODE_29F956:    BNE CODE_29F95C             ; $29:F956: D0 04       ;
CODE_29F958:    JSL CODE_27A859         ; $29:F958: 22 59 A8 27 ;Invert Accumulator (8-bit)
CODE_29F95C:    STA $8C,x                   ; $29:F95C: 95 8C       ;
CODE_29F95E:    RTS                         ; $29:F95E: 60          ;

CODE_29F95F:    LDA #$F0                    ; $29:F95F: A9 F0       ;
CODE_29F961:    STA $9E,x                   ; $29:F961: 95 9E       ;
CODE_29F963:    RTS                         ; $29:F963: 60          ;

CODE_29F964:    LDA $9E,x                   ; $29:F964: B5 9E       ;
CODE_29F966:    BPL CODE_29F96B             ; $29:F966: 10 03       ;
CODE_29F968:    JSR CODE_29FB22             ; $29:F968: 20 22 FB    ;
CODE_29F96B:    LDA #$00                    ; $29:F96B: A9 00       ;
CODE_29F96D:    STA $0669,x                 ; $29:F96D: 9D 69 06    ;
CODE_29F970:    JSR CODE_29FB3B             ; $29:F970: 20 3B FB    ;
CODE_29F973:    LDA $9E,x                   ; $29:F973: B5 9E       ;
CODE_29F975:    BMI CODE_29F97B             ; $29:F975: 30 04       ;
CODE_29F977:    CMP #$50                    ; $29:F977: C9 50       ;
CODE_29F979:    BCS CODE_29F981                     ; $29:F979: B0 06       ;
CODE_29F97B:    INC $9E,x                   ; $29:F97B: F6 9E       ;
CODE_29F97D:    INC $9E,x                   ; $29:F97D: F6 9E       ;
CODE_29F97F:    INC $9E,x                   ; $29:F97F: F6 9E       ;
CODE_29F981:    LDA $9E,x                   ; $29:F981: B5 9E       ;
CODE_29F983:    BPL CODE_29F989             ; $29:F983: 10 04       ;
CODE_29F985:    CMP #$E0                    ; $29:F985: C9 E0       ;
CODE_29F987:    BCC CODE_29F9B6             ; $29:F987: 90 2D       ;
CODE_29F989:    JSR CODE_29FD18             ; $29:F989: 20 18 FD    ;
CODE_29F98C:    LDA.w DATA_21C8C3,y                 ; $29:F98C: B9 C3 C8    ;
CODE_29F98F:    EOR $8C,x                   ; $29:F98F: 55 8C       ;
CODE_29F991:    BPL CODE_29F9B6             ; $29:F991: 10 23       ;
CODE_29F993:    JSL CODE_27A848             ; $29:F993: 22 48 A8 27 ;
CODE_29F997:    DEY                         ; $29:F997: 88          ;
CODE_29F998:    BEQ CODE_29F9B6             ; $29:F998: F0 1C       ;
CODE_29F99A:    LDA #$02                    ; $29:F99A: A9 02       ;
CODE_29F99C:    STA $4D,x                   ; $29:F99C: 95 4D       ;
CODE_29F99E:    LDA #$0A                    ; $29:F99E: A9 0A       ;
CODE_29F9A0:    STA $0518,x                 ; $29:F9A0: 9D 18 05    ;
CODE_29F9A3:    LDA $5F,x                   ; $29:F9A3: B5 5F       ;
CODE_29F9A5:    CLC                         ; $29:F9A5: 18          ;
CODE_29F9A6:    ADC #$08                    ; $29:F9A6: 69 08       ;
CODE_29F9A8:    AND #$F0                    ; $29:F9A8: 29 F0       ;
CODE_29F9AA:    STA $0776,x                 ; $29:F9AA: 9D 76 07    ;
CODE_29F9AD:    LDA #$E0                    ; $29:F9AD: A9 E0       ;
CODE_29F9AF:    STA $9E,x                   ; $29:F9AF: 95 9E       ;
CODE_29F9B1:    LDA #$00                    ; $29:F9B1: A9 00       ;
CODE_29F9B3:    STA $8C,x                   ; $29:F9B3: 95 8C       ;
CODE_29F9B5:    RTS                         ; $29:F9B5: 60          ;

CODE_29F9B6:    LDA $A7,x                   ; $29:F9B6: B5 A7       ;
CODE_29F9B8:    AND #$04                    ; $29:F9B8: 29 04       ;
CODE_29F9BA:    BEQ CODE_29F9E7             ; $29:F9BA: F0 2B       ;
CODE_29F9BC:    JSL CODE_278B67             ; $29:F9BC: 22 67 8B 27 ;
CODE_29F9C0:    STA $8C,x                   ; $29:F9C0: 95 8C       ;
CODE_29F9C2:    LDA #$2C                    ; $29:F9C2: A9 2C       ;
CODE_29F9C4:    STA $1CF3                   ; $29:F9C4: 8D F3 1C    ;
CODE_29F9C7:    LDA #$09                    ; $29:F9C7: A9 09       ;
CODE_29F9C9:    STA $1203                   ; $29:F9C9: 8D 03 12    ;
CODE_29F9CC:    LDA #$0C                    ; $29:F9CC: A9 0C       ;
CODE_29F9CE:    STA $0520,x                 ; $29:F9CE: 9D 20 05    ;
CODE_29F9D1:    LDA #$35                    ; $29:F9D1: A9 35       ;
CODE_29F9D3:    STA $0518,x                 ; $29:F9D3: 9D 18 05    ;
CODE_29F9D6:    LDA $0783,x                 ; $29:F9D6: BD 83 07    ;
CODE_29F9D9:    AND #$1F                    ; $29:F9D9: 29 1F       ;
CODE_29F9DB:    ADC #$67                    ; $29:F9DB: 69 67       ;
CODE_29F9DD:    STA $06A6,x                 ; $29:F9DD: 9D A6 06    ;
CODE_29F9E0:    STA $1021,x                 ; $29:F9E0: 9D 21 10    ;
CODE_29F9E3:    LDA #$03                    ; $29:F9E3: A9 03       ;
CODE_29F9E5:    STA $4D,x                   ; $29:F9E5: 95 4D       ;
CODE_29F9E7:    RTS                         ; $29:F9E7: 60          ;

CODE_29F9E8:    LDA #$00                    ; $29:F9E8: A9 00       ;
CODE_29F9EA:    STA $1A63                   ; $29:F9EA: 8D 63 1A    ;
CODE_29F9ED:    LDA #$06                    ; $29:F9ED: A9 06       ;
CODE_29F9EF:    STA $0669,x                 ; $29:F9EF: 9D 69 06    ;
CODE_29F9F2:    LDA $0518,x                 ; $29:F9F2: BD 18 05    ;
CODE_29F9F5:    BEQ CODE_29FA07             ; $29:F9F5: F0 10       ;
CODE_29F9F7:    LDA $5F,x                   ; $29:F9F7: B5 5F       ;
CODE_29F9F9:    CMP $0776,x                 ; $29:F9F9: DD 76 07    ;
CODE_29F9FC:    BEQ CODE_29FA06             ; $29:F9FC: F0 08       ;
CODE_29F9FE:    INC $5F,x                   ; $29:F9FE: F6 5F       ;
CODE_29FA00:    BCC CODE_29FA06             ; $29:FA00: 90 04       ;
CODE_29FA02:    DEC $5F,x                   ; $29:FA02: D6 5F       ;
CODE_29FA04:    DEC $5F,x                   ; $29:FA04: D6 5F       ;
CODE_29FA06:    RTS                         ; $29:FA06: 60          ;

CODE_29FA07:    JSR CODE_29FB3B             ; $29:FA07: 20 3B FB    ;
CODE_29FA0A:    LDA $9E,x                   ; $29:FA0A: B5 9E       ;
CODE_29FA0C:    BMI CODE_29FA12             ; $29:FA0C: 30 04       ;
CODE_29FA0E:    CMP #$70                    ; $29:FA0E: C9 70       ;
CODE_29FA10:    BCS CODE_29FA17                     ; $29:FA10: B0 05       ;
CODE_29FA12:    CLC                         ; $29:FA12: 18          ;
CODE_29FA13:    ADC #$06                    ; $29:FA13: 69 06       ;
CODE_29FA15:    STA $9E,x                   ; $29:FA15: 95 9E       ;
CODE_29FA17:    JMP CODE_29F9B6             ; $29:FA17: 4C B6 F9    ;

CODE_29FA1A:    JSR CODE_29FB3B             ; $29:FA1A: 20 3B FB    ;
CODE_29FA1D:    LDA $9E,x                   ; $29:FA1D: B5 9E       ;
CODE_29FA1F:    CMP #$40                    ; $29:FA1F: C9 40       ;
CODE_29FA21:    BPL CODE_29FA27             ; $29:FA21: 10 04       ;
CODE_29FA23:    INC $9E,x                   ; $29:FA23: F6 9E       ;
CODE_29FA25:    INC $9E,x                   ; $29:FA25: F6 9E       ;
CODE_29FA27:    JSR CODE_29FB8D             ; $29:FA27: 20 8D FB    ;
CODE_29FA2A:    LDA $A7,x                   ; $29:FA2A: B5 A7       ;
CODE_29FA2C:    AND #$04                    ; $29:FA2C: 29 04       ;
CODE_29FA2E:    BEQ CODE_29FA34             ; $29:FA2E: F0 04       ;
CODE_29FA30:    JSL CODE_278B67             ; $29:FA30: 22 67 8B 27 ;
CODE_29FA34:    LDA $0518,x                 ; $29:FA34: BD 18 05    ;
CODE_29FA37:    BEQ CODE_29FA3F             ; $29:FA37: F0 06       ;
CODE_29FA39:    LDA #$07                    ; $29:FA39: A9 07       ;
CODE_29FA3B:    STA $0669,x                 ; $29:FA3B: 9D 69 06    ;
CODE_29FA3E:    RTS                         ; $29:FA3E: 60          ;

CODE_29FA3F:    LDA $06A6,x                 ; $29:FA3F: BD A6 06    ;
CODE_29FA42:    BNE CODE_29FA53             ; $29:FA42: D0 0F       ;
CODE_29FA44:    LDA #$00                    ; $29:FA44: A9 00       ;
CODE_29FA46:    STA $4D,x                   ; $29:FA46: 95 4D       ;
CODE_29FA48:    LDA $0783,x                 ; $29:FA48: BD 83 07    ;
CODE_29FA4B:    AND #$7F                    ; $29:FA4B: 29 7F       ;
CODE_29FA4D:    ORA #$80                    ; $29:FA4D: 09 80       ;
CODE_29FA4F:    STA $06A6,x                 ; $29:FA4F: 9D A6 06    ;
CODE_29FA52:    RTS                         ; $29:FA52: 60          ;

CODE_29FA53:    CMP #$20                    ; $29:FA53: C9 20       ;
CODE_29FA55:    BCC CODE_29FA6D             ; $29:FA55: 90 16       ;
CODE_29FA57:    LSR A                       ; $29:FA57: 4A          ;
CODE_29FA58:    LSR A                       ; $29:FA58: 4A          ;
CODE_29FA59:    CLC                         ; $29:FA59: 18          ;
CODE_29FA5A:    ADC $1021,x                 ; $29:FA5A: 7D 21 10    ;
CODE_29FA5D:    AND #$07                    ; $29:FA5D: 29 07       ;
CODE_29FA5F:    TAY                         ; $29:FA5F: A8          ;
CODE_29FA60:    LDA.w DATA_21C8C5,y                 ; $29:FA60: B9 C5 C8    ;
CODE_29FA63:    STA $0669,x                 ; $29:FA63: 9D 69 06    ;
CODE_29FA66:    LDA.w DATA_21C8CD,y                 ; $29:FA66: B9 CD C8    ;
CODE_29FA69:    STA $0679,x                 ; $29:FA69: 9D 79 06    ;
CODE_29FA6C:    RTS                         ; $29:FA6C: 60          ;

CODE_29FA6D:    CMP #$0C                    ; $29:FA6D: C9 0C       ;
CODE_29FA6F:    LDA #$05                    ; $29:FA6F: A9 05       ;
CODE_29FA71:    BCS CODE_29FA75                     ; $29:FA71: B0 02       ;
CODE_29FA73:    LDA #$08                    ; $29:FA73: A9 08       ;
CODE_29FA75:    STA $0669,x                 ; $29:FA75: 9D 69 06    ;
CODE_29FA78:    JSR CODE_29FD18             ; $29:FA78: 20 18 FD    ;
CODE_29FA7B:    LDA.w DATA_21C8D5,y                 ; $29:FA7B: B9 D5 C8    ;
CODE_29FA7E:    STA $0679,x                 ; $29:FA7E: 9D 79 06    ;
CODE_29FA81:    RTS                         ; $29:FA81: 60          ;

CODE_29FA82:    LDA $1A63                   ; $29:FA82: AD 63 1A    ;
CODE_29FA85:    BEQ CODE_29FA9E             ; $29:FA85: F0 17       ;
CODE_29FA87:    LSR A                       ; $29:FA87: 4A          ;
CODE_29FA88:    LSR A                       ; $29:FA88: 4A          ;
CODE_29FA89:    LSR A                       ; $29:FA89: 4A          ;
CODE_29FA8A:    LSR A                       ; $29:FA8A: 4A          ;
CODE_29FA8B:    AND #$07                    ; $29:FA8B: 29 07       ;
CODE_29FA8D:    TAY                         ; $29:FA8D: A8          ;
CODE_29FA8E:    LDA.w DATA_21C8D7,y                 ; $29:FA8E: B9 D7 C8    ;
CODE_29FA91:    STA $0669,x                 ; $29:FA91: 9D 69 06    ;
CODE_29FA94:    LDA $1A63                   ; $29:FA94: AD 63 1A    ;
CODE_29FA97:    CMP #$10                    ; $29:FA97: C9 10       ;
CODE_29FA99:    BNE CODE_29FA9E             ; $29:FA99: D0 03       ;
CODE_29FA9B:    JSR CODE_29FA9F             ; $29:FA9B: 20 9F FA    ;
CODE_29FA9E:    RTS                         ; $29:FA9E: 60          ;

CODE_29FA9F:    LDY #$04                    ; $29:FA9F: A0 04       ;
CODE_29FAA1:    LDA $0661,y                 ; $29:FAA1: B9 61 06    ;
CODE_29FAA4:    BEQ CODE_29FAAA             ; $29:FAA4: F0 04       ;
CODE_29FAA6:    DEY                         ; $29:FAA6: 88          ;
CODE_29FAA7:    BPL CODE_29FAA1             ; $29:FAA7: 10 F8       ;
CODE_29FAA9:    RTS                         ; $29:FAA9: 60          ;

CODE_29FAAA:    TYA                         ; $29:FAAA: 98          ;
CODE_29FAAB:    TAX                         ; $29:FAAB: AA          ;
CODE_29FAAC:    JSL CODE_279C96             ; $29:FAAC: 22 96 9C 27 ;
CODE_29FAB0:    LDA #$02                    ; $29:FAB0: A9 02       ;
CODE_29FAB2:    STA $0661,x                 ; $29:FAB2: 9D 61 06    ;
CODE_29FAB5:    LDA #$75                    ; $29:FAB5: A9 75       ;
CODE_29FAB7:    STA $0671,x                 ; $29:FAB7: 9D 71 06    ;
CODE_29FABA:    LDA #$02                    ; $29:FABA: A9 02       ;
CODE_29FABC:    STA $68,x                   ; $29:FABC: 95 68       ;
CODE_29FABE:    LDA #$10                    ; $29:FABE: A9 10       ;
CODE_29FAC0:    STA $009E,y                 ; $29:FAC0: 99 9E 00    ;
CODE_29FAC3:    LDX $9B                     ; $29:FAC3: A6 9B       ;
CODE_29FAC5:    LDA $71,x                   ; $29:FAC5: B5 71       ;
CODE_29FAC7:    CLC                         ; $29:FAC7: 18          ;
CODE_29FAC8:    ADC #$10                    ; $29:FAC8: 69 10       ;
CODE_29FACA:    STA $0071,y                 ; $29:FACA: 99 71 00    ;
CODE_29FACD:    LDA $56,x                   ; $29:FACD: B5 56       ;
CODE_29FACF:    ADC #$00                    ; $29:FACF: 69 00       ;
CODE_29FAD1:    STA $0056,y                 ; $29:FAD1: 99 56 00    ;
CODE_29FAD4:    LDA $0679,x                 ; $29:FAD4: BD 79 06    ;
CODE_29FAD7:    ASL A                       ; $29:FAD7: 0A          ;
CODE_29FAD8:    ASL A                       ; $29:FAD8: 0A          ;
CODE_29FAD9:    ROL A                       ; $29:FAD9: 2A          ;
CODE_29FADA:    AND #$01                    ; $29:FADA: 29 01       ;
CODE_29FADC:    TAX                         ; $29:FADC: AA          ;
CODE_29FADD:    STX $00                     ; $29:FADD: 86 00       ;
CODE_29FADF:    LDA.w DATA_21C8DF,x                 ; $29:FADF: BD DF C8    ;
CODE_29FAE2:    STA $008C,y                 ; $29:FAE2: 99 8C 00    ;
CODE_29FAE5:    LDX $9B                     ; $29:FAE5: A6 9B       ;
CODE_29FAE7:    LDA $44,x                   ; $29:FAE7: B5 44       ;
CODE_29FAE9:    STA $0044,y                 ; $29:FAE9: 99 44 00    ;
CODE_29FAEC:    LDA $5F,x                   ; $29:FAEC: B5 5F       ;
CODE_29FAEE:    LDX $00                     ; $29:FAEE: A6 00       ;
CODE_29FAF0:    CLC                         ; $29:FAF0: 18          ;
CODE_29FAF1:    ADC.w DATA_21C8E1,x                 ; $29:FAF1: 7D E1 C8    ;
CODE_29FAF4:    STA $005F,y                 ; $29:FAF4: 99 5F 00    ;
CODE_29FAF7:    CMP #$F0                    ; $29:FAF7: C9 F0       ;
CODE_29FAF9:    BCC CODE_29FB05             ; $29:FAF9: 90 0A       ;
CODE_29FAFB:    LDX $9B                     ; $29:FAFB: A6 9B       ;
CODE_29FAFD:    LDA $0679,x                 ; $29:FAFD: BD 79 06    ;
CODE_29FB00:    BNE CODE_29FB05             ; $29:FB00: D0 03       ;
CODE_29FB02:    STA $005F,y                 ; $29:FB02: 99 5F 00    ;
CODE_29FB05:    LDA $0783,y                 ; $29:FB05: B9 83 07    ;
CODE_29FB08:    AND #$07                    ; $29:FB08: 29 07       ;
CODE_29FB0A:    TAX                         ; $29:FB0A: AA          ;
CODE_29FB0B:    LDA.w DATA_21C8E3,x                 ; $29:FB0B: BD E3 C8    ;
CODE_29FB0E:    STA $077B,y                 ; $29:FB0E: 99 7B 07    ;
CODE_29FB11:    LDA #$01                    ; $29:FB11: A9 01       ;
CODE_29FB13:    STA $1FE9,y                 ; $29:FB13: 99 E9 1F    ;
CODE_29FB16:    ASL A                       ; $29:FB16: 0A          ;
CODE_29FB17:    STA $0518,y                 ; $29:FB17: 99 18 05    ;
CODE_29FB1A:    LDA #$3A                    ; $29:FB1A: A9 3A       ;
CODE_29FB1C:    STA $1200                   ; $29:FB1C: 8D 00 12    ;
CODE_29FB1F:    LDX $9B                     ; $29:FB1F: A6 9B       ;
CODE_29FB21:    RTS                         ; $29:FB21: 60          ;

CODE_29FB22:    LDA $1A65                   ; $29:FB22: AD 65 1A    ;
CODE_29FB25:    BNE CODE_29FB37             ; $29:FB25: D0 10       ;
CODE_29FB27:    LDA $0783,x                 ; $29:FB27: BD 83 07    ;
CODE_29FB2A:    AND #$3F                    ; $29:FB2A: 29 3F       ;
CODE_29FB2C:    ADC #$60                    ; $29:FB2C: 69 60       ;
CODE_29FB2E:    STA $1A65                   ; $29:FB2E: 8D 65 1A    ;
CODE_29FB31:    LDA #$3F                    ; $29:FB31: A9 3F       ;
CODE_29FB33:    STA $1A63                   ; $29:FB33: 8D 63 1A    ;
CODE_29FB36:    RTS                         ; $29:FB36: 60          ;

CODE_29FB37:    DEC $1A65                   ; $29:FB37: CE 65 1A    ;
CODE_29FB3A:    RTS                         ; $29:FB3A: 60          ;

CODE_29FB3B:    JSL CODE_27A7EF             ; $29:FB3B: 22 EF A7 27 ;
CODE_29FB3F:    JSL CODE_27A7E4             ; $29:FB3F: 22 E4 A7 27 ;
CODE_29FB43:    LDY $5F,x                   ; $29:FB43: B4 5F       ;
CODE_29FB45:    LDA $8C,x                   ; $29:FB45: B5 8C       ;
CODE_29FB47:    BEQ CODE_29FB59             ; $29:FB47: F0 10       ;
CODE_29FB49:    BMI CODE_29FB51             ; $29:FB49: 30 06       ;
CODE_29FB4B:    CPY #$E0                    ; $29:FB4B: C0 E0       ;
CODE_29FB4D:    BCS CODE_29FB55                     ; $29:FB4D: B0 06       ;
CODE_29FB4F:    BCC CODE_29FB59             ; $29:FB4F: 90 08       ;
CODE_29FB51:    CPY #$08                    ; $29:FB51: C0 08       ;
CODE_29FB53:    BCS CODE_29FB59                     ; $29:FB53: B0 04       ;
CODE_29FB55:    LDA #$00                    ; $29:FB55: A9 00       ;
CODE_29FB57:    STA $8C,x                   ; $29:FB57: 95 8C       ;
CODE_29FB59:    JSL CODE_278B93             ; $29:FB59: 22 93 8B 27 ;
CODE_29FB5D:    LDA $4D,x                   ; $29:FB5D: B5 4D       ;
CODE_29FB5F:    CMP #$02                    ; $29:FB5F: C9 02       ;
CODE_29FB61:    BNE CODE_29FB69             ; $29:FB61: D0 06       ;
CODE_29FB63:    LDA $1F76                   ; $29:FB63: AD 76 1F    ;
CODE_29FB66:    STA $1A61                   ; $29:FB66: 8D 61 1A    ;
CODE_29FB69:    LDA $A7,x                   ; $29:FB69: B5 A7       ;
CODE_29FB6B:    PHA                         ; $29:FB6B: 48          ;
CODE_29FB6C:    LDA $5F,x                   ; $29:FB6C: B5 5F       ;
CODE_29FB6E:    PHA                         ; $29:FB6E: 48          ;
CODE_29FB6F:    CLC                         ; $29:FB6F: 18          ;
CODE_29FB70:    ADC #$10                    ; $29:FB70: 69 10       ;
CODE_29FB72:    STA $5F,x                   ; $29:FB72: 95 5F       ;
CODE_29FB74:    JSL CODE_278B93             ; $29:FB74: 22 93 8B 27 ;
CODE_29FB78:    PLA                         ; $29:FB78: 68          ;
CODE_29FB79:    STA $5F,x                   ; $29:FB79: 95 5F       ;
CODE_29FB7B:    PLA                         ; $29:FB7B: 68          ;
CODE_29FB7C:    ORA $A7,x                   ; $29:FB7C: 15 A7       ;
CODE_29FB7E:    STA $A7,x                   ; $29:FB7E: 95 A7       ;
CODE_29FB80:    LDA $4D,x                   ; $29:FB80: B5 4D       ;
CODE_29FB82:    CMP #$02                    ; $29:FB82: C9 02       ;
CODE_29FB84:    BNE CODE_29FB8C             ; $29:FB84: D0 06       ;
CODE_29FB86:    LDA $1F76                   ; $29:FB86: AD 76 1F    ;
CODE_29FB89:    STA $1A62                   ; $29:FB89: 8D 62 1A    ;
CODE_29FB8C:    RTS                         ; $29:FB8C: 60          ;

CODE_29FB8D:    LDY #$01                    ; $29:FB8D: A0 01       ;
CODE_29FB8F:    LDA $1A61,y                 ; $29:FB8F: B9 61 1A    ;
CODE_29FB92:    CMP #$9C                    ; $29:FB92: C9 9C       ;
CODE_29FB94:    BNE CODE_29FBC6             ; $29:FB94: D0 30       ;
CODE_29FB96:    LDA #$00                    ; $29:FB96: A9 00       ;
CODE_29FB98:    STA $1A61,y                 ; $29:FB98: 99 61 1A    ;
CODE_29FB9B:    LDA #$02                    ; $29:FB9B: A9 02       ;
CODE_29FB9D:    STA $0564                   ; $29:FB9D: 8D 64 05    ;
CODE_29FBA0:    LDA $71,x                   ; $29:FBA0: B5 71       ;
CODE_29FBA2:    CLC                         ; $29:FBA2: 18          ;
CODE_29FBA3:    ADC #$30                    ; $29:FBA3: 69 30       ;
CODE_29FBA5:    AND #$F0                    ; $29:FBA5: 29 F0       ;
CODE_29FBA7:    STA $052B                   ; $29:FBA7: 8D 2B 05    ;
CODE_29FBAA:    LDA $56,x                   ; $29:FBAA: B5 56       ;
CODE_29FBAC:    ADC #$00                    ; $29:FBAC: 69 00       ;
CODE_29FBAE:    STA $052A                   ; $29:FBAE: 8D 2A 05    ;
CODE_29FBB1:    LDA $5F,x                   ; $29:FBB1: B5 5F       ;
CODE_29FBB3:    CLC                         ; $29:FBB3: 18          ;
CODE_29FBB4:    ADC.w DATA_21C8EB,y                 ; $29:FBB4: 79 EB C8    ;
CODE_29FBB7:    AND #$F0                    ; $29:FBB7: 29 F0       ;
CODE_29FBB9:    STA $0529                   ; $29:FBB9: 8D 29 05    ;
CODE_29FBBC:    LDA $44,x                   ; $29:FBBC: B5 44       ;
CODE_29FBBE:    ADC #$00                    ; $29:FBBE: 69 00       ;
CODE_29FBC0:    STA $0528                   ; $29:FBC0: 8D 28 05    ;
CODE_29FBC3:    JMP CODE_29FBCA             ; $29:FBC3: 4C CA FB    ;

CODE_29FBC6:    DEY                         ; $29:FBC6: 88          ;
CODE_29FBC7:    BPL CODE_29FB8F             ; $29:FBC7: 10 C6       ;
CODE_29FBC9:    RTS                         ; $29:FBC9: 60          ;

CODE_29FBCA:    LDA #$18                    ; $29:FBCA: A9 18       ;
CODE_29FBCC:    STA $1203                   ; $29:FBCC: 8D 03 12    ;
CODE_29FBCF:    JSL CODE_279544             ; $29:FBCF: 22 44 95 27 ;
CODE_29FBD3:    LDA #$02                    ; $29:FBD3: A9 02       ;
CODE_29FBD5:    STA $1F9C                   ; $29:FBD5: 8D 9C 1F    ;
CODE_29FBD8:    LDA $0543                   ; $29:FBD8: AD 43 05    ;
CODE_29FBDB:    STA $D8                     ; $29:FBDB: 85 D8       ;
CODE_29FBDD:    LDA $0542                   ; $29:FBDD: AD 42 05    ;
CODE_29FBE0:    STA $D9                     ; $29:FBE0: 85 D9       ;
CODE_29FBE2:    LDA $052A                   ; $29:FBE2: AD 2A 05    ;
CODE_29FBE5:    XBA                         ; $29:FBE5: EB          ;
CODE_29FBE6:    LDA $052B                   ; $29:FBE6: AD 2B 05    ;
CODE_29FBE9:    REP #$20                    ; $29:FBE9: C2 20       ;
CODE_29FBEB:    SEC                         ; $29:FBEB: 38          ;
CODE_29FBEC:    SBC $D8                     ; $29:FBEC: E5 D8       ;
CODE_29FBEE:    STA $D8                     ; $29:FBEE: 85 D8       ;
CODE_29FBF0:    CLC                         ; $29:FBF0: 18          ;
CODE_29FBF1:    ADC #$0008                  ; $29:FBF1: 69 08 00    ;
CODE_29FBF4:    SEP #$20                    ; $29:FBF4: E2 20       ;
CODE_29FBF6:    STA $1FAB                   ; $29:FBF6: 8D AB 1F    ;
CODE_29FBF9:    XBA                         ; $29:FBF9: EB          ;
CODE_29FBFA:    STA $DF                     ; $29:FBFA: 85 DF       ;
CODE_29FBFC:    LDA $D8                     ; $29:FBFC: A5 D8       ;
CODE_29FBFE:    STA $1F9F                   ; $29:FBFE: 8D 9F 1F    ;
CODE_29FC01:    LDA $D9                     ; $29:FC01: A5 D9       ;
CODE_29FC03:    STA $1FB1                   ; $29:FC03: 8D B1 1F    ;
CODE_29FC06:    LDA $0528                   ; $29:FC06: AD 28 05    ;
CODE_29FC09:    XBA                         ; $29:FC09: EB          ;
CODE_29FC0A:    LDA $0529                   ; $29:FC0A: AD 29 05    ;
CODE_29FC0D:    REP #$20                    ; $29:FC0D: C2 20       ;
CODE_29FC0F:    SEC                         ; $29:FC0F: 38          ;
CODE_29FC10:    SBC $0210                   ; $29:FC10: ED 10 02    ;
CODE_29FC13:    SEP #$20                    ; $29:FC13: E2 20       ;
CODE_29FC15:    STA $1FA2                   ; $29:FC15: 8D A2 1F    ;
CODE_29FC18:    XBA                         ; $29:FC18: EB          ;
CODE_29FC19:    STA $02AE                   ; $29:FC19: 8D AE 02    ;
CODE_29FC1C:    LDA #$00                    ; $29:FC1C: A9 00       ;
CODE_29FC1E:    STA $1FA8                   ; $29:FC1E: 8D A8 1F    ;
CODE_29FC21:    STA $1FAE                   ; $29:FC21: 8D AE 1F    ;
CODE_29FC24:    LDA #$FA                    ; $29:FC24: A9 FA       ;
CODE_29FC26:    STA $1FA5                   ; $29:FC26: 8D A5 1F    ;
CODE_29FC29:    RTS                         ; $29:FC29: 60          ;

CODE_29FC2A:    JSL CODE_279DC2             ; $29:FC2A: 22 C2 9D 27 ;
CODE_29FC2E:    LDA $83,x                   ; $29:FC2E: B5 83       ;
CODE_29FC30:    STA $00                     ; $29:FC30: 85 00       ;
CODE_29FC32:    LDA $7A,x                   ; $29:FC32: B5 7A       ;
CODE_29FC34:    STA $01                     ; $29:FC34: 85 01       ;
CODE_29FC36:    LDA $0679,x                 ; $29:FC36: BD 79 06    ;
CODE_29FC39:    STA $02                     ; $29:FC39: 85 02       ;
CODE_29FC3B:    STA $03                     ; $29:FC3B: 85 03       ;
CODE_29FC3D:    LDA $0651,x                 ; $29:FC3D: BD 51 06    ;
CODE_29FC40:    STA $04                     ; $29:FC40: 85 04       ;
CODE_29FC42:    LDA $0681,x                 ; $29:FC42: BD 81 06    ;
CODE_29FC45:    STA $05                     ; $29:FC45: 85 05       ;
CODE_29FC47:    LDY $0669,x                 ; $29:FC47: BC 69 06    ;
CODE_29FC4A:    CPY #$01                    ; $29:FC4A: C0 01       ;
CODE_29FC4C:    BEQ CODE_29FC52             ; $29:FC4C: F0 04       ;
CODE_29FC4E:    CPY #$07                    ; $29:FC4E: C0 07       ;
CODE_29FC50:    BNE CODE_29FC59             ; $29:FC50: D0 07       ;
CODE_29FC52:    LDA $00                     ; $29:FC52: A5 00       ;
CODE_29FC54:    CLC                         ; $29:FC54: 18          ;
CODE_29FC55:    ADC #$04                    ; $29:FC55: 69 04       ;
CODE_29FC57:    STA $00                     ; $29:FC57: 85 00       ;
CODE_29FC59:    CPY #$08                    ; $29:FC59: C0 08       ;
CODE_29FC5B:    BEQ CODE_29FC70             ; $29:FC5B: F0 13       ;
CODE_29FC5D:    CPY #$04                    ; $29:FC5D: C0 04       ;
CODE_29FC5F:    BEQ CODE_29FC65             ; $29:FC5F: F0 04       ;
CODE_29FC61:    CPY #$06                    ; $29:FC61: C0 06       ;
CODE_29FC63:    BCC CODE_29FC70             ; $29:FC63: 90 0B       ;
CODE_29FC65:    LDA $0679,x                 ; $29:FC65: BD 79 06    ;
CODE_29FC68:    AND #$80                    ; $29:FC68: 29 80       ;
CODE_29FC6A:    STA $02                     ; $29:FC6A: 85 02       ;
CODE_29FC6C:    ORA #$40                    ; $29:FC6C: 09 40       ;
CODE_29FC6E:    STA $03                     ; $29:FC6E: 85 03       ;
CODE_29FC70:    LDA $0669,x                 ; $29:FC70: BD 69 06    ;
CODE_29FC73:    ASL A                       ; $29:FC73: 0A          ;
CODE_29FC74:    STA $0E                     ; $29:FC74: 85 0E       ;
CODE_29FC76:    ASL A                       ; $29:FC76: 0A          ;
CODE_29FC77:    ADC $0E                     ; $29:FC77: 65 0E       ;
CODE_29FC79:    STA $0E                     ; $29:FC79: 85 0E       ;
CODE_29FC7B:    STZ $0F                     ; $29:FC7B: 64 0F       ;
CODE_29FC7D:    LDA $15                     ; $29:FC7D: A5 15       ;
CODE_29FC7F:    AND #$01                    ; $29:FC7F: 29 01       ;
CODE_29FC81:    ASL A                       ; $29:FC81: 0A          ;
CODE_29FC82:    STA $07                     ; $29:FC82: 85 07       ;
CODE_29FC84:    ASL A                       ; $29:FC84: 0A          ;
CODE_29FC85:    ADC $07                     ; $29:FC85: 65 07       ;
CODE_29FC87:    CLC                         ; $29:FC87: 18          ;
CODE_29FC88:    ADC $0F                     ; $29:FC88: 65 0F       ;
CODE_29FC8A:    ASL A                       ; $29:FC8A: 0A          ;
CODE_29FC8B:    TAY                         ; $29:FC8B: A8          ;
CODE_29FC8C:    REP #$20                    ; $29:FC8C: C2 20       ;
CODE_29FC8E:    LDA.w DATA_21C945,y                 ; $29:FC8E: B9 45 C9    ;
CODE_29FC91:    STA $C6                     ; $29:FC91: 85 C6       ;
CODE_29FC93:    SEP #$20                    ; $29:FC93: E2 20       ;
CODE_29FC95:    LDX $0F                     ; $29:FC95: A6 0F       ;
CODE_29FC97:    LDA $05                     ; $29:FC97: A5 05       ;
CODE_29FC99:    AND.w DATA_21C93F,x                 ; $29:FC99: 3D 3F C9    ;
CODE_29FC9C:    BEQ CODE_29FCA1             ; $29:FC9C: F0 03       ;
CODE_29FC9E:    JMP CODE_29FD0A             ; $29:FC9E: 4C 0A FD    ;

CODE_29FCA1:    LDA $0E                     ; $29:FCA1: A5 0E       ;
CODE_29FCA3:    CLC                         ; $29:FCA3: 18          ;
CODE_29FCA4:    ADC $0F                     ; $29:FCA4: 65 0F       ;
CODE_29FCA6:    TAX                         ; $29:FCA6: AA          ;
CODE_29FCA7:    LDA.w DATA_21C8ED,x                 ; $29:FCA7: BD ED C8    ;
CODE_29FCAA:    REP #$10                    ; $29:FCAA: C2 10       ;
CODE_29FCAC:    LDY $C6                     ; $29:FCAC: A4 C6       ;
CODE_29FCAE:    STA $0802,y                 ; $29:FCAE: 99 02 08    ;
CODE_29FCB1:    SEP #$10                    ; $29:FCB1: E2 10       ;
CODE_29FCB3:    LDX $0F                     ; $29:FCB3: A6 0F       ;
CODE_29FCB5:    LDA $02                     ; $29:FCB5: A5 02       ;
CODE_29FCB7:    BPL CODE_29FCBE             ; $29:FCB7: 10 05       ;
CODE_29FCB9:    TXA                         ; $29:FCB9: 8A          ;
CODE_29FCBA:    CLC                         ; $29:FCBA: 18          ;
CODE_29FCBB:    ADC #$06                    ; $29:FCBB: 69 06       ;
CODE_29FCBD:    TAX                         ; $29:FCBD: AA          ;
CODE_29FCBE:    LDA $00                     ; $29:FCBE: A5 00       ;
CODE_29FCC0:    CLC                         ; $29:FCC0: 18          ;
CODE_29FCC1:    ADC.w DATA_21C92F,x                 ; $29:FCC1: 7D 2F C9    ;
CODE_29FCC4:    REP #$10                    ; $29:FCC4: C2 10       ;
CODE_29FCC6:    LDY $C6                     ; $29:FCC6: A4 C6       ;
CODE_29FCC8:    STA $0801,y                 ; $29:FCC8: 99 01 08    ;
CODE_29FCCB:    SEP #$10                    ; $29:FCCB: E2 10       ;
CODE_29FCCD:    LDX $0F                     ; $29:FCCD: A6 0F       ;
CODE_29FCCF:    TXA                         ; $29:FCCF: 8A          ;
CODE_29FCD0:    AND #$01                    ; $29:FCD0: 29 01       ;
CODE_29FCD2:    ROR A                       ; $29:FCD2: 6A          ;
CODE_29FCD3:    LDA $02                     ; $29:FCD3: A5 02       ;
CODE_29FCD5:    BCC CODE_29FCD9             ; $29:FCD5: 90 02       ;
CODE_29FCD7:    LDA $03                     ; $29:FCD7: A5 03       ;
CODE_29FCD9:    ORA #$29                    ; $29:FCD9: 09 29       ;
CODE_29FCDB:    REP #$10                    ; $29:FCDB: C2 10       ;
CODE_29FCDD:    LDY $C6                     ; $29:FCDD: A4 C6       ;
CODE_29FCDF:    STA $0803,y                 ; $29:FCDF: 99 03 08    ;
CODE_29FCE2:    SEP #$10                    ; $29:FCE2: E2 10       ;
CODE_29FCE4:    LDA $02                     ; $29:FCE4: A5 02       ;
CODE_29FCE6:    AND #$40                    ; $29:FCE6: 29 40       ;
CODE_29FCE8:    BEQ CODE_29FCEF             ; $29:FCE8: F0 05       ;
CODE_29FCEA:    TXA                         ; $29:FCEA: 8A          ;
CODE_29FCEB:    CLC                         ; $29:FCEB: 18          ;
CODE_29FCEC:    ADC #$06                    ; $29:FCEC: 69 06       ;
CODE_29FCEE:    TAX                         ; $29:FCEE: AA          ;
CODE_29FCEF:    LDA $01                     ; $29:FCEF: A5 01       ;
CODE_29FCF1:    CLC                         ; $29:FCF1: 18          ;
CODE_29FCF2:    ADC.w DATA_21C923,x                 ; $29:FCF2: 7D 23 C9    ;
CODE_29FCF5:    REP #$10                    ; $29:FCF5: C2 10       ;
CODE_29FCF7:    LDY $C6                     ; $29:FCF7: A4 C6       ;
CODE_29FCF9:    STA $0800,y                 ; $29:FCF9: 99 00 08    ;
CODE_29FCFC:    REP #$20                    ; $29:FCFC: C2 20       ;
CODE_29FCFE:    TYA                         ; $29:FCFE: 98          ;
CODE_29FCFF:    LSR A                       ; $29:FCFF: 4A          ;
CODE_29FD00:    LSR A                       ; $29:FD00: 4A          ;
CODE_29FD01:    TAY                         ; $29:FD01: A8          ;
CODE_29FD02:    LDA #$0002                  ; $29:FD02: A9 02 00    ;
CODE_29FD05:    STA $0A20,y                 ; $29:FD05: 99 20 0A    ;
CODE_29FD08:    SEP #$30                    ; $29:FD08: E2 30       ;
CODE_29FD0A:    INC $0F                     ; $29:FD0A: E6 0F       ;
CODE_29FD0C:    LDA $0F                     ; $29:FD0C: A5 0F       ;
CODE_29FD0E:    CMP #$06                    ; $29:FD0E: C9 06       ;
CODE_29FD10:    BEQ CODE_29FD15             ; $29:FD10: F0 03       ;
CODE_29FD12:    JMP CODE_29FC7D             ; $29:FD12: 4C 7D FC    ;

CODE_29FD15:    LDX $9B                     ; $29:FD15: A6 9B       ;
CODE_29FD17:    RTS                         ; $29:FD17: 60          ;

CODE_29FD18:    LDA $5F,x                   ; $29:FD18: B5 5F       ;
CODE_29FD1A:    PHA                         ; $29:FD1A: 48          ;
CODE_29FD1B:    CLC                         ; $29:FD1B: 18          ;
CODE_29FD1C:    ADC #$08                    ; $29:FD1C: 69 08       ;
CODE_29FD1E:    STA $5F,x                   ; $29:FD1E: 95 5F       ;
CODE_29FD20:    JSL CODE_27A837             ; $29:FD20: 22 37 A8 27 ;
CODE_29FD24:    PLA                         ; $29:FD24: 68          ;
CODE_29FD25:    STA $5F,x                   ; $29:FD25: 95 5F       ;
CODE_29FD27:    RTS                         ; $29:FD27: 60          ;

CODE_29FD28:    LDA $56,x                   ; $29:FD28: B5 56       ;
CODE_29FD2A:    CMP #$01                    ; $29:FD2A: C9 01       ;
CODE_29FD2C:    BMI CODE_29FD34             ; $29:FD2C: 30 06       ;
CODE_29FD2E:    LDA $83,x                   ; $29:FD2E: B5 83       ;
CODE_29FD30:    CMP #$88                    ; $29:FD30: C9 88       ;
CODE_29FD32:    BCS CODE_29FD44                     ; $29:FD32: B0 10       ;
CODE_29FD34:    LDA $0661,x                 ; $29:FD34: BD 61 06    ;
CODE_29FD37:    CMP #$02                    ; $29:FD37: C9 02       ;
CODE_29FD39:    BEQ CODE_29FD5D             ; $29:FD39: F0 22       ;
CODE_29FD3B:    LDA #$02                    ; $29:FD3B: A9 02       ;
CODE_29FD3D:    STA $0661,x                 ; $29:FD3D: 9D 61 06    ;
CODE_29FD40:    LDA #$D0                    ; $29:FD40: A9 D0       ;
CODE_29FD42:    STA $9E,x                   ; $29:FD42: 95 9E       ;
CODE_29FD44:    LDA #$02                    ; $29:FD44: A9 02       ;
CODE_29FD46:    STA $68,x                   ; $29:FD46: 95 68       ;
CODE_29FD48:    LSR A                       ; $29:FD48: 4A          ;
CODE_29FD49:    STA $05F3                   ; $29:FD49: 8D F3 05    ;
CODE_29FD4C:    LDA #$06                    ; $29:FD4C: A9 06       ;
CODE_29FD4E:    STA $0669,x                 ; $29:FD4E: 9D 69 06    ;
CODE_29FD51:    LDA #$00                    ; $29:FD51: A9 00       ;
CODE_29FD53:    STA $8C,x                   ; $29:FD53: 95 8C       ;
CODE_29FD55:    STA $1A63                   ; $29:FD55: 8D 63 1A    ;
CODE_29FD58:    LDA #$30                    ; $29:FD58: A9 30       ;
CODE_29FD5A:    STA $06A6,x                 ; $29:FD5A: 9D A6 06    ;
CODE_29FD5D:    RTS                         ; $29:FD5D: 60          ;

CODE_29FD5E:    LDY $06A6,x                 ; $29:FD5E: BC A6 06    ;
CODE_29FD61:    DEY                         ; $29:FD61: 88          ;
CODE_29FD62:    BNE CODE_29FD6E             ; $29:FD62: D0 0A       ;
CODE_29FD64:    LDA #$01                    ; $29:FD64: A9 01       ;
CODE_29FD66:    STA $02D9                   ; $29:FD66: 8D D9 02    ;
CODE_29FD69:    LDA #$0E                    ; $29:FD69: A9 0E       ;
CODE_29FD6B:    STA $1202                   ; $29:FD6B: 8D 02 12    ;
CODE_29FD6E:    LDA $1CF6,x                 ; $29:FD6E: BD F6 1C    ;
CODE_29FD71:    CMP #$01                    ; $29:FD71: C9 01       ;
CODE_29FD73:    BPL CODE_29FD7C             ; $29:FD73: 10 07       ;
CODE_29FD75:    ASL $0679,x                 ; $29:FD75: 1E 79 06    ;
CODE_29FD78:    SEC                         ; $29:FD78: 38          ;
CODE_29FD79:    ROR $0679,x                 ; $29:FD79: 7E 79 06    ;
CODE_29FD7C:    JSL CODE_27A7E4             ; $29:FD7C: 22 E4 A7 27 ;
CODE_29FD80:    LDA $9E,x                   ; $29:FD80: B5 9E       ;
CODE_29FD82:    CMP #$25                    ; $29:FD82: C9 25       ;
CODE_29FD84:    BPL CODE_29FD88             ; $29:FD84: 10 02       ;
CODE_29FD86:    INC $9E,x                   ; $29:FD86: F6 9E       ;
CODE_29FD88:    LDA $56,x                   ; $29:FD88: B5 56       ;
CODE_29FD8A:    CMP #$04                    ; $29:FD8A: C9 04       ;
CODE_29FD8C:    BMI CODE_29FDA9             ; $29:FD8C: 30 1B       ;
CODE_29FD8E:    INC $68,x                   ; $29:FD8E: F6 68       ;
CODE_29FD90:    LDA #$D0                    ; $29:FD90: A9 D0       ;
CODE_29FD92:    STA $0518,x                 ; $29:FD92: 9D 18 05    ;
CODE_29FD95:    LDA #$80                    ; $29:FD95: A9 80       ;
CODE_29FD97:    STA $1CF3                   ; $29:FD97: 8D F3 1C    ;
CODE_29FD9A:    LDA #$09                    ; $29:FD9A: A9 09       ;
CODE_29FD9C:    STA $1203                   ; $29:FD9C: 8D 03 12    ;
CODE_29FD9F:    LDA $A6                     ; $29:FD9F: A5 A6       ;
CODE_29FDA1:    BNE CODE_29FDA9             ; $29:FDA1: D0 06       ;
CODE_29FDA3:    LDA #$C0                    ; $29:FDA3: A9 C0       ;
CODE_29FDA5:    STA $9D                     ; $29:FDA5: 85 9D       ;
CODE_29FDA7:    INC $A6                     ; $29:FDA7: E6 A6       ;
CODE_29FDA9:    LDA $71,x                   ; $29:FDA9: B5 71       ;
CODE_29FDAB:    PHA                         ; $29:FDAB: 48          ;
CODE_29FDAC:    CLC                         ; $29:FDAC: 18          ;
CODE_29FDAD:    ADC #$10                    ; $29:FDAD: 69 10       ;
CODE_29FDAF:    STA $71,x                   ; $29:FDAF: 95 71       ;
CODE_29FDB1:    LDA $56,x                   ; $29:FDB1: B5 56       ;
CODE_29FDB3:    PHA                         ; $29:FDB3: 48          ;
CODE_29FDB4:    ADC #$00                    ; $29:FDB4: 69 00       ;
CODE_29FDB6:    STA $56,x                   ; $29:FDB6: 95 56       ;
CODE_29FDB8:    JSL CODE_27A2C8             ; $29:FDB8: 22 C8 A2 27 ;
CODE_29FDBC:    PLA                         ; $29:FDBC: 68          ;
CODE_29FDBD:    STA $56,x                   ; $29:FDBD: 95 56       ;
CODE_29FDBF:    PLA                         ; $29:FDBF: 68          ;
CODE_29FDC0:    STA $71,x                   ; $29:FDC0: 95 71       ;
CODE_29FDC2:    RTS                         ; $29:FDC2: 60          ;

CODE_29FDC3:    LDA $0518,x                 ; $29:FDC3: BD 18 05    ;
CODE_29FDC6:    BNE CODE_29FDD9             ; $29:FDC6: D0 11       ;
CODE_29FDC8:    LDA #$13                    ; $29:FDC8: A9 13       ;
CODE_29FDCA:    STA $1202                   ; $29:FDCA: 8D 02 12    ;
CODE_29FDCD:    LDA #$00                    ; $29:FDCD: A9 00       ;
CODE_29FDCF:    STA $02E3                   ; $29:FDCF: 8D E3 02    ;
CODE_29FDD2:    LDA #$02                    ; $29:FDD2: A9 02       ;
CODE_29FDD4:    STA $02E4                   ; $29:FDD4: 8D E4 02    ;
CODE_29FDD7:    INC $68,x                   ; $29:FDD7: F6 68       ;
CODE_29FDD9:    RTS                         ; $29:FDD9: 60          ;

CODE_29FDDA:    JSL CODE_278A17             ; $29:FDDA: 22 17 8A 27 ;
CODE_29FDDE:    BNE CODE_29FDE8             ; $29:FDDE: D0 08       ;
CODE_29FDE0:    LDA #$30                    ; $29:FDE0: A9 30       ;
CODE_29FDE2:    STA $7FC587                 ; $29:FDE2: 8F 87 C5 7F ;
CODE_29FDE6:    INC $68,x                   ; $29:FDE6: F6 68       ;
CODE_29FDE8:    RTS                         ; $29:FDE8: 60          ;

CODE_29FDE9:    LDA $7FC587                 ; $29:FDE9: AF 87 C5 7F ;
CODE_29FDED:    BEQ CODE_29FE1E             ; $29:FDED: F0 2F       ;
CODE_29FDEF:    DEC A                       ; $29:FDEF: 3A          ;
CODE_29FDF0:    STA $7FC587                 ; $29:FDF0: 8F 87 C5 7F ;
CODE_29FDF4:    CMP #$10                    ; $29:FDF4: C9 10       ;
CODE_29FDF6:    BNE CODE_29FE1D             ; $29:FDF6: D0 25       ;
CODE_29FDF8:    LDA #$39                    ; $29:FDF8: A9 39       ;
CODE_29FDFA:    STA $1200                   ; $29:FDFA: 8D 00 12    ;
CODE_29FDFD:    LDA #$F0                    ; $29:FDFD: A9 F0       ;
CODE_29FDFF:    STA $1202                   ; $29:FDFF: 8D 02 12    ;
CODE_29FE02:    LDY #$01                    ; $29:FE02: A0 01       ;
CODE_29FE04:    LDA #$01                    ; $29:FE04: A9 01       ;
CODE_29FE06:    STA $1F9C,y                 ; $29:FE06: 99 9C 1F    ;
CODE_29FE09:    LDA.w DATA_21C95D,y                 ; $29:FE09: B9 5D C9    ;
CODE_29FE0C:    STA $1F9F,y                 ; $29:FE0C: 99 9F 1F    ;
CODE_29FE0F:    LDA.w DATA_21C95F,y                 ; $29:FE0F: B9 5F C9    ;
CODE_29FE12:    STA $1FA2,y                 ; $29:FE12: 99 A2 1F    ;
CODE_29FE15:    LDA #$1F                    ; $29:FE15: A9 1F       ;
CODE_29FE17:    STA $1FAE,y                 ; $29:FE17: 99 AE 1F    ;
CODE_29FE1A:    DEY                         ; $29:FE1A: 88          ;
CODE_29FE1B:    BPL CODE_29FE04             ; $29:FE1B: 10 E7       ;
CODE_29FE1D:    RTS                         ; $29:FE1D: 60          ;

CODE_29FE1E:    REP #$10                    ; $29:FE1E: C2 10       ;
CODE_29FE20:    LDY #$0001                  ; $29:FE20: A0 01 00    ;
CODE_29FE23:    LDX #$0080                  ; $29:FE23: A2 80 00    ;
CODE_29FE26:    LDA.w DATA_21C95F,y                 ; $29:FE26: B9 5F C9    ;
CODE_29FE29:    STA $0800,x                 ; $29:FE29: 9D 00 08    ;
CODE_29FE2C:    LDA.w DATA_21C95D,y                 ; $29:FE2C: B9 5D C9    ;
CODE_29FE2F:    STA $0801,x                 ; $29:FE2F: 9D 01 08    ;
CODE_29FE32:    LDA #$6A                    ; $29:FE32: A9 6A       ;
CODE_29FE34:    STA $0802,x                 ; $29:FE34: 9D 02 08    ;
CODE_29FE37:    LDA #$23                    ; $29:FE37: A9 23       ;
CODE_29FE39:    STA $0803,x                 ; $29:FE39: 9D 03 08    ;
CODE_29FE3C:    PHX                         ; $29:FE3C: DA          ;
CODE_29FE3D:    REP #$20                    ; $29:FE3D: C2 20       ;
CODE_29FE3F:    TXA                         ; $29:FE3F: 8A          ;
CODE_29FE40:    LSR A                       ; $29:FE40: 4A          ;
CODE_29FE41:    LSR A                       ; $29:FE41: 4A          ;
CODE_29FE42:    TAX                         ; $29:FE42: AA          ;
CODE_29FE43:    SEP #$20                    ; $29:FE43: E2 20       ;
CODE_29FE45:    LDA #$02                    ; $29:FE45: A9 02       ;
CODE_29FE47:    STA $0A20,x                 ; $29:FE47: 9D 20 0A    ;
CODE_29FE4A:    PLX                         ; $29:FE4A: FA          ;
CODE_29FE4B:    INX                         ; $29:FE4B: E8          ;
CODE_29FE4C:    INX                         ; $29:FE4C: E8          ;
CODE_29FE4D:    INX                         ; $29:FE4D: E8          ;
CODE_29FE4E:    INX                         ; $29:FE4E: E8          ;
CODE_29FE4F:    DEY                         ; $29:FE4F: 88          ;
CODE_29FE50:    BPL CODE_29FE26             ; $29:FE50: 10 D4       ;
CODE_29FE52:    SEP #$10                    ; $29:FE52: E2 10       ;
CODE_29FE54:    LDA $55                     ; $29:FE54: A5 55       ;
CODE_29FE56:    BEQ CODE_29FE78             ; $29:FE56: F0 20       ;
CODE_29FE58:    LDA $5E                     ; $29:FE58: A5 5E       ;
CODE_29FE5A:    SEC                         ; $29:FE5A: 38          ;
CODE_29FE5B:    SBC #$E4                    ; $29:FE5B: E9 E4       ;
CODE_29FE5D:    CMP #$08                    ; $29:FE5D: C9 08       ;
CODE_29FE5F:    BCS CODE_29FE78                     ; $29:FE5F: B0 17       ;
CODE_29FE61:    LDA $70                     ; $29:FE61: A5 70       ;
CODE_29FE63:    CMP #$48                    ; $29:FE63: C9 48       ;
CODE_29FE65:    BCC CODE_29FE78             ; $29:FE65: 90 11       ;
CODE_29FE67:    LDA $17                     ; $29:FE67: A5 17       ;
CODE_29FE69:    AND #$08                    ; $29:FE69: 29 08       ;
CODE_29FE6B:    BEQ CODE_29FE78             ; $29:FE6B: F0 0B       ;
CODE_29FE6D:    STA $078E                   ; $29:FE6D: 8D 8E 07    ;
CODE_29FE70:    LDA #$00                    ; $29:FE70: A9 00       ;
CODE_29FE72:    STA $0713                   ; $29:FE72: 8D 13 07    ;
CODE_29FE75:    INC $0014                   ; $29:FE75: EE 14 00    ;
CODE_29FE78:    LDA $15                     ; $29:FE78: A5 15       ;
CODE_29FE7A:    AND #$0C                    ; $29:FE7A: 29 0C       ;
CODE_29FE7C:    LSR A                       ; $29:FE7C: 4A          ;
CODE_29FE7D:    TAY                         ; $29:FE7D: A8          ;
CODE_29FE7E:    REP #$20                    ; $29:FE7E: C2 20       ;
CODE_29FE80:    LDA.w DATA_21C963,y                 ; $29:FE80: B9 63 C9    ;
CODE_29FE83:    STA $001422                 ; $29:FE83: 8F 22 14 00 ;
CODE_29FE87:    SEP #$20                    ; $29:FE87: E2 20       ;
CODE_29FE89:    INC $1500                   ; $29:FE89: EE 00 15    ;
CODE_29FE8C:    LDX $9B                     ; $29:FE8C: A6 9B       ;
CODE_29FE8E:    RTS                         ; $29:FE8E: 60          ;

CODE_29FE8F:    PHB                         ; $29:FE8F: 8B          ;
CODE_29FE90:    PHK                         ; $29:FE90: 4B          ;
CODE_29FE91:    PLB                     ; $29:FE91: AB          ;
CODE_29FE92:    LDA $0691,x                 ; $29:FE92: BD 91 06    ;
CODE_29FE95:    BEQ CODE_29FE9A             ; $29:FE95: F0 03       ;
CODE_29FE97:    DEC $0691,x                 ; $29:FE97: DE 91 06    ;
CODE_29FE9A:    REP #$10                    ; $29:FE9A: C2 10       ;
CODE_29FE9C:    STZ $DD                     ; $29:FE9C: 64 DD       ;
CODE_29FE9E:    LDY $C6,x                   ; $29:FE9E: B4 C6       ;
CODE_29FEA0:    STZ $D8                     ; $29:FEA0: 64 D8       ;
CODE_29FEA2:    LDA $0669,x                 ; $29:FEA2: BD 69 06    ;
CODE_29FEA5:    BNE CODE_29FEB9             ; $29:FEA5: D0 12       ;
CODE_29FEA7:    LDA #$F0                    ; $29:FEA7: A9 F0       ;
CODE_29FEA9:    STA $0801,y                 ; $29:FEA9: 99 01 08    ;
CODE_29FEAC:    STA $0805,y                 ; $29:FEAC: 99 05 08    ;
CODE_29FEAF:    STA $0809,y                 ; $29:FEAF: 99 09 08    ;
CODE_29FEB2:    STA $080D,y                 ; $29:FEB2: 99 0D 08    ;
CODE_29FEB5:    SEP #$10                    ; $29:FEB5: E2 10       ;
CODE_29FEB7:    PLB                     ; $29:FEB7: AB          ;
CODE_29FEB8:    RTL                         ; $29:FEB8: 6B          ;

CODE_29FEB9:    CMP #$07                    ; $29:FEB9: C9 07       ;
CODE_29FEBB:    BEQ CODE_29FEC1             ; $29:FEBB: F0 04       ;
CODE_29FEBD:    LDA #$0C                    ; $29:FEBD: A9 0C       ;
CODE_29FEBF:    STA $DD                     ; $29:FEBF: 85 DD       ;
CODE_29FEC1:    LDA $0691,x                 ; $29:FEC1: BD 91 06    ;
CODE_29FEC4:    BNE CODE_29FECB             ; $29:FEC4: D0 05       ;
CODE_29FEC6:    LDA #$17                    ; $29:FEC6: A9 17       ;
CODE_29FEC8:    STA $0691,x                 ; $29:FEC8: 9D 91 06    ;
CODE_29FECB:    AND #$F8                    ; $29:FECB: 29 F8       ;
CODE_29FECD:    LSR A                       ; $29:FECD: 4A          ;
CODE_29FECE:    CLC                         ; $29:FECE: 18          ;
CODE_29FECF:    ADC $DD                     ; $29:FECF: 65 DD       ;
CODE_29FED1:    PHX                         ; $29:FED1: DA          ;
CODE_29FED2:    XBA                         ; $29:FED2: EB          ;
CODE_29FED3:    LDA #$00                    ; $29:FED3: A9 00       ;
CODE_29FED5:    XBA                         ; $29:FED5: EB          ;
CODE_29FED6:    TAX                         ; $29:FED6: AA          ;
CODE_29FED7:    LDA.w DATA_29FF6C,x                 ; $29:FED7: BD 6C FF    ;
CODE_29FEDA:    STA $0802,y                 ; $29:FEDA: 99 02 08    ;
CODE_29FEDD:    LDA.w DATA_29FF6C+1,x                   ; $29:FEDD: BD 6D FF    ;
CODE_29FEE0:    STA $0806,y                 ; $29:FEE0: 99 06 08    ;
CODE_29FEE3:    LDA.w DATA_29FF6C+2,x                   ; $29:FEE3: BD 6E FF    ;
CODE_29FEE6:    STA $080A,y                 ; $29:FEE6: 99 0A 08    ;
CODE_29FEE9:    PLX                         ; $29:FEE9: FA          ;
CODE_29FEEA:    LDA $5F,x                   ; $29:FEEA: B5 5F       ;
CODE_29FEEC:    STA $D8                     ; $29:FEEC: 85 D8       ;
CODE_29FEEE:    LDA $44,x                   ; $29:FEEE: B5 44       ;
CODE_29FEF0:    STA $D9                     ; $29:FEF0: 85 D9       ;
CODE_29FEF2:    REP #$20                    ; $29:FEF2: C2 20       ;
CODE_29FEF4:    LDA $0679,x                 ; $29:FEF4: BD 79 06    ;
CODE_29FEF7:    AND #$0040                  ; $29:FEF7: 29 40 00    ;
CODE_29FEFA:    BNE CODE_29FF01             ; $29:FEFA: D0 05       ;
CODE_29FEFC:    LDA #$0010                  ; $29:FEFC: A9 10 00    ;
CODE_29FEFF:    BRA CODE_29FF04             ; $29:FEFF: 80 03       ;

CODE_29FF01:    LDA #$FFF8                  ; $29:FF01: A9 F8 FF    ;
CODE_29FF04:    STA $DA                     ; $29:FF04: 85 DA       ;
CODE_29FF06:    LDA $D8                     ; $29:FF06: A5 D8       ;
CODE_29FF08:    SEC                         ; $29:FF08: 38          ;
CODE_29FF09:    SBC $0210                   ; $29:FF09: ED 10 02    ;
CODE_29FF0C:    STA $D8                     ; $29:FF0C: 85 D8       ;
CODE_29FF0E:    CLC                         ; $29:FF0E: 18          ;
CODE_29FF0F:    ADC $DA                     ; $29:FF0F: 65 DA       ;
CODE_29FF11:    STA $DA                     ; $29:FF11: 85 DA       ;
CODE_29FF13:    SEP #$20                    ; $29:FF13: E2 20       ;
CODE_29FF15:    STA $0804,y                 ; $29:FF15: 99 04 08    ;
CODE_29FF18:    STA $0808,y                 ; $29:FF18: 99 08 08    ;
CODE_29FF1B:    LDA $D8                     ; $29:FF1B: A5 D8       ;
CODE_29FF1D:    STA $0800,y                 ; $29:FF1D: 99 00 08    ;
CODE_29FF20:    LDA $71,x                   ; $29:FF20: B5 71       ;
CODE_29FF22:    SEC                         ; $29:FF22: 38          ;
CODE_29FF23:    SBC $0216                   ; $29:FF23: ED 16 02    ;
CODE_29FF26:    STA $0801,y                 ; $29:FF26: 99 01 08    ;
CODE_29FF29:    STA $0805,y                 ; $29:FF29: 99 05 08    ;
CODE_29FF2C:    CLC                         ; $29:FF2C: 18          ;
CODE_29FF2D:    ADC #$08                    ; $29:FF2D: 69 08       ;
CODE_29FF2F:    STA $0809,y                 ; $29:FF2F: 99 09 08    ;
CODE_29FF32:    LDA #$F0                    ; $29:FF32: A9 F0       ;
CODE_29FF34:    STA $080D,y                 ; $29:FF34: 99 0D 08    ;
CODE_29FF37:    LDA $0679,x                 ; $29:FF37: BD 79 06    ;
CODE_29FF3A:    AND #$40                    ; $29:FF3A: 29 40       ;
CODE_29FF3C:    ORA #$23                    ; $29:FF3C: 09 23       ;
CODE_29FF3E:    STA $0803,y                 ; $29:FF3E: 99 03 08    ;
CODE_29FF41:    STA $0807,y                 ; $29:FF41: 99 07 08    ;
CODE_29FF44:    STA $080B,y                 ; $29:FF44: 99 0B 08    ;
CODE_29FF47:    REP #$20                    ; $29:FF47: C2 20       ;
CODE_29FF49:    TYA                         ; $29:FF49: 98          ;
CODE_29FF4A:    LSR A                       ; $29:FF4A: 4A          ;
CODE_29FF4B:    LSR A                       ; $29:FF4B: 4A          ;
CODE_29FF4C:    TAY                         ; $29:FF4C: A8          ;
CODE_29FF4D:    SEP #$20                    ; $29:FF4D: E2 20       ;
CODE_29FF4F:    LDA $D9                     ; $29:FF4F: A5 D9       ;
CODE_29FF51:    BEQ CODE_29FF57             ; $29:FF51: F0 04       ;
CODE_29FF53:    LDA #$03                    ; $29:FF53: A9 03       ;
CODE_29FF55:    BRA CODE_29FF59             ; $29:FF55: 80 02       ;

CODE_29FF57:    LDA #$02                    ; $29:FF57: A9 02       ;
CODE_29FF59:    STA $0A20,y                 ; $29:FF59: 99 20 0A    ;
CODE_29FF5C:    LDA $DB                     ; $29:FF5C: A5 DB       ;
CODE_29FF5E:    BEQ CODE_29FF62             ; $29:FF5E: F0 02       ;
CODE_29FF60:    LDA #$01                    ; $29:FF60: A9 01       ;
CODE_29FF62:    STA $0A21,y                 ; $29:FF62: 99 21 0A    ;
CODE_29FF65:    STA $0A22,y                 ; $29:FF65: 99 22 0A    ;
CODE_29FF68:    SEP #$10                    ; $29:FF68: E2 10       ;
CODE_29FF6A:    PLB                     ; $29:FF6A: AB          ;
CODE_29FF6B:    RTL                         ; $29:FF6B: 6B          ;

DATA_29FF6C:        db $88,$8A,$9A,$00,$8B,$8D,$9D,$00
                    db $8E,$A8,$B8,$00,$A9,$AB,$BB,$00
                    db $AC,$AE,$BE,$00,$68,$AF,$BF,$00

DATA_29FF84:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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
