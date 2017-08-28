;Super Mario Bros. 2

CODE_158000:    LDA $0724                   ; $15:8000: AD 24 07    ;
CODE_158003:    BNE CODE_158079             ; $15:8003: D0 74       ;
CODE_158005:    LDA $0772                   ; $15:8005: AD 72 07    ;
CODE_158008:    BEQ CODE_158017             ; $15:8008: F0 0D       ;
CODE_15800A:    LDX #$02                    ; $15:800A: A2 02       ;
CODE_15800C:    LDA $02B2,x                 ; $15:800C: BD B2 02    ;
CODE_15800F:    STA $0725,x                 ; $15:800F: 9D 25 07    ;
CODE_158012:    DEX                         ; $15:8012: CA          ;
CODE_158013:    BPL CODE_15800C             ; $15:8013: 10 F7       ;
CODE_158015:    BRA CODE_15802F         ; $15:8015: 80 18       ;
     
CODE_158017:    LDX $0535                   ; $15:8017: AE 35 05    ;
CODE_15801A:    LDA.l DATA_11D01A,x                 ; $15:801A: BF 1A D0 11 ;
CODE_15801E:    STA $0725                   ; $15:801E: 8D 25 07    ;
CODE_158021:    LDA.l DATA_11D024,x                 ; $15:8021: BF 24 D0 11 ;
CODE_158025:    STA $0726                   ; $15:8025: 8D 26 07    ;
CODE_158028:    LDA.l DATA_11D02E,x                 ; $15:8028: BF 2E D0 11 ;
CODE_15802C:    STA $0727                   ; $15:802C: 8D 27 07    ;
CODE_15802F:    LDA $0535                   ; $15:802F: AD 35 05    ;
CODE_158032:    LDY #$01                    ; $15:8032: A0 01       ;
CODE_158034:    JSR CODE_158107             ; $15:8034: 20 07 81    ;
CODE_158037:    LDA $0533                   ; $15:8037: AD 33 05    ;
CODE_15803A:    CMP #$06                    ; $15:803A: C9 06       ;
CODE_15803C:    BEQ CODE_158046             ; $15:803C: F0 08       ;
CODE_15803E:    CMP #$07                    ; $15:803E: C9 07       ;
CODE_158040:    BEQ CODE_158046             ; $15:8040: F0 04       ;
CODE_158042:    CMP #$0C                    ; $15:8042: C9 0C       ;
CODE_158044:    BNE CODE_158052             ; $15:8044: D0 0C       ;
CODE_158046:    LDA $0534                   ; $15:8046: AD 34 05    ;
CODE_158049:    BNE CODE_158052             ; $15:8049: D0 07       ;
CODE_15804B:    LDA #$10                ; $15:804B: A9 10       ; \ Layer 3 Y pos = #$0010.
CODE_15804D:    STA $020A               ; $15:804D: 8D 0A 02    ; /
CODE_158050:    BRA CODE_158055             ; $15:8050: 80 03       ;
  
CODE_158052:    STZ $020A                   ; $15:8052: 9C 0A 02    ;
CODE_158055:    STZ $020B                   ; $15:8055: 9C 0B 02    ;
CODE_158058:    INC $0724                   ; $15:8058: EE 24 07    ;
CODE_15805B:    LDA $0535                   ; $15:805B: AD 35 05    ;
CODE_15805E:    STA $0728                   ; $15:805E: 8D 28 07    ;
CODE_158061:    LDA #$01                    ; $15:8061: A9 01       ;
CODE_158063:    STA $0729                   ; $15:8063: 8D 29 07    ;
CODE_158066:    LSR A                       ; $15:8066: 4A          ;
CODE_158067:    STA $06                     ; $15:8067: 85 06       ;
CODE_158069:    LDA #$FF                    ; $15:8069: A9 FF       ;
CODE_15806B:    STA $072A                   ; $15:806B: 8D 2A 07    ;
CODE_15806E:    LDA #$0F                    ; $15:806E: A9 0F       ;
CODE_158070:    STA $072B                   ; $15:8070: 8D 2B 07    ;
CODE_158073:    JSR CODE_158083             ; $15:8073: 20 83 80    ;
CODE_158076:    JSR CODE_1583F2             ; $15:8076: 20 F2 83    ;
CODE_158079:    JSL CODE_1581BD             ; $15:8079: 22 BD 81 15 ;
CODE_15807D:    LDA $0729                   ; $15:807D: AD 29 07    ;
CODE_158080:    BNE CODE_158082             ; $15:8080: D0 00       ;
CODE_158082:    RTL                     ; $15:8082: 6B          ;
                   
CODE_158083:    LDA $0535                   ; $15:8083: AD 35 05    ;
CODE_158086:    BNE CODE_158093             ; $15:8086: D0 0B       ;
CODE_158088:    LDA $072C                   ; $15:8088: AD 2C 07    ;
CODE_15808B:    BPL CODE_158090             ; $15:808B: 10 03       ;
CODE_15808D:    JMP CODE_158100             ; $15:808D: 4C 00 81    ;

CODE_158090:    LDA $0535                   ; $15:8090: AD 35 05    ;
CODE_158093:    CMP $0541                   ; $15:8093: CD 41 05    ;
CODE_158096:    BNE CODE_15809D             ; $15:8096: D0 05       ;
CODE_158098:    LDA $072C                   ; $15:8098: AD 2C 07    ;
CODE_15809B:    BPL CODE_158100             ; $15:809B: 10 63       ;
CODE_15809D:    LDX #$02                    ; $15:809D: A2 02       ;
CODE_15809F:    LDA $072C                   ; $15:809F: AD 2C 07    ;
CODE_1580A2:    BPL CODE_1580AA             ; $15:80A2: 10 06       ;
CODE_1580A4:    LDA #$FF                    ; $15:80A4: A9 FF       ;
CODE_1580A6:    STA $0B                     ; $15:80A6: 85 0B       ;
CODE_1580A8:    BNE CODE_1580AC             ; $15:80A8: D0 02       ;
CODE_1580AA:    STZ $0B                     ; $15:80AA: 64 0B       ;
CODE_1580AC:    LDA $072C                   ; $15:80AC: AD 2C 07    ;
CODE_1580AF:    AND #$F0                    ; $15:80AF: 29 F0       ;
CODE_1580B1:    CLC                         ; $15:80B1: 18          ;
CODE_1580B2:    ADC $0725,x                 ; $15:80B2: 7D 25 07    ;
CODE_1580B5:    PHP                         ; $15:80B5: 08          ;
CODE_1580B6:    ADC $0B                     ; $15:80B6: 65 0B       ;
CODE_1580B8:    PLP                         ; $15:80B8: 28          ;
CODE_1580B9:    STA $0C                     ; $15:80B9: 85 0C       ;
CODE_1580BB:    LDA $0B                     ; $15:80BB: A5 0B       ;
CODE_1580BD:    BNE CODE_1580D1             ; $15:80BD: D0 12       ;
CODE_1580BF:    BCC CODE_1580E3             ; $15:80BF: 90 22       ;
CODE_1580C1:    LDA $0725,x                 ; $15:80C1: BD 25 07    ;
CODE_1580C4:    AND #$0F                    ; $15:80C4: 29 0F       ;
CODE_1580C6:    CMP #$09                    ; $15:80C6: C9 09       ;
CODE_1580C8:    BNE CODE_1580E3             ; $15:80C8: D0 19       ;
CODE_1580CA:    LDA $0C                     ; $15:80CA: A5 0C       ;
CODE_1580CC:    AND #$F0                    ; $15:80CC: 29 F0       ;
CODE_1580CE:    JMP CODE_1580E5             ; $15:80CE: 4C E5 80    ;

CODE_1580D1:    BCS CODE_1580E3                     ; $15:80D1: B0 10       ;
CODE_1580D3:    LDA $0725,x                 ; $15:80D3: BD 25 07    ;
CODE_1580D6:    AND #$0F                    ; $15:80D6: 29 0F       ;
CODE_1580D8:    BNE CODE_1580E3             ; $15:80D8: D0 09       ;
CODE_1580DA:    LDA $0C                     ; $15:80DA: A5 0C       ;
CODE_1580DC:    AND #$F0                    ; $15:80DC: 29 F0       ;
CODE_1580DE:    ADC #$09                    ; $15:80DE: 69 09       ;
CODE_1580E0:    JMP CODE_1580E5             ; $15:80E0: 4C E5 80    ;

CODE_1580E3:    LDA $0C                     ; $15:80E3: A5 0C       ;
CODE_1580E5:    STA $0725,x                 ; $15:80E5: 9D 25 07    ;
CODE_1580E8:    DEX                         ; $15:80E8: CA          ;
CODE_1580E9:    BPL CODE_1580AC             ; $15:80E9: 10 C1       ;
CODE_1580EB:    LDA $072C                   ; $15:80EB: AD 2C 07    ;
CODE_1580EE:    BPL CODE_158100             ; $15:80EE: 10 10       ;
CODE_1580F0:    DEC $0728                   ; $15:80F0: CE 28 07    ;
CODE_1580F3:    LDA $0205                   ; $15:80F3: AD 05 02    ;
CODE_1580F6:    EOR #$01                    ; $15:80F6: 49 01       ;
CODE_1580F8:    STA $0205                   ; $15:80F8: 8D 05 02    ;
CODE_1580FB:    LDA #$01                    ; $15:80FB: A9 01       ;
CODE_1580FD:    STA $072B                   ; $15:80FD: 8D 2B 07    ;
CODE_158100:    STZ $072C                   ; $15:8100: 9C 2C 07    ;
CODE_158103:    JSR CODE_15832E             ; $15:8103: 20 2E 83    ;
CODE_158106:    RTS                     ; $15:8106: 60          ;
                       
CODE_158107:    LSR A                       ; $15:8107: 4A          ;
CODE_158108:    BCS CODE_158124                     ; $15:8108: B0 1A       ;
CODE_15810A:    CPY #$01                    ; $15:810A: C0 01       ;
CODE_15810C:    BEQ CODE_158113             ; $15:810C: F0 05       ;
CODE_15810E:    LDA $0628                   ; $15:810E: AD 28 06    ;
CODE_158111:    BEQ CODE_15811A             ; $15:8111: F0 07       ;
CODE_158113:    LDA #$01                    ; $15:8113: A9 01       ;
CODE_158115:    STA $0205                   ; $15:8115: 8D 05 02    ;
CODE_158118:    BRA CODE_15811D             ; $15:8118: 80 03       ;
CODE_15811A:    STZ $0205                   ; $15:811A: 9C 05 02    ;
CODE_15811D:    STZ $020B                   ; $15:811D: 9C 0B 02    ;
CODE_158120:    LDA #$00                    ; $15:8120: A9 00       ;
CODE_158122:    BRA CODE_15813D             ; $15:8122: 80 19       ;

CODE_158124:    CPY #$01                    ; $15:8124: C0 01       ;
CODE_158126:    BEQ CODE_15812D             ; $15:8126: F0 05       ;
CODE_158128:    STZ $0205                   ; $15:8128: 9C 05 02    ;
CODE_15812B:    BRA CODE_15813A             ; $15:812B: 80 0D       ;

CODE_15812D:    LDA #$01                    ; $15:812D: A9 01       ;
CODE_15812F:    STA $0205                   ; $15:812F: 8D 05 02    ;
CODE_158132:    STA $020B                   ; $15:8132: 8D 0B 02    ;
CODE_158135:    LDA #$40                    ; $15:8135: A9 40       ;
CODE_158137:    STA $0204                   ; $15:8137: 8D 04 02    ;
CODE_15813A:    LDA.w DATA_119B3C,y                 ; $15:813A: B9 3C 9B    ;
CODE_15813D:    STA $0730                   ; $15:813D: 8D 30 07    ;
CODE_158140:    RTS                     ; $15:8140: 60          ;
                       
CODE_158141:    LDA $0204                   ; $15:8141: AD 04 02    ;
CODE_158144:    STA $0732                   ; $15:8144: 8D 32 07    ;
CODE_158147:    LDA $0205                   ; $15:8147: AD 05 02    ;
CODE_15814A:    STA $0733                   ; $15:814A: 8D 33 07    ;
CODE_15814D:    LDA $0734                   ; $15:814D: AD 34 07    ;
CODE_158150:    STA $0735                   ; $15:8150: 8D 35 07    ;
CODE_158153:    INC $0736                   ; $15:8153: EE 36 07    ;
CODE_158156:    LDA.w DATA_119B3E                   ; $15:8156: AD 3E 9B    ;
CODE_158159:    STA $0535                   ; $15:8159: 8D 35 05    ;
CODE_15815C:    JSR CODE_158107             ; $15:815C: 20 07 81    ;
CODE_15815F:    LDA #$00                    ; $15:815F: A9 00       ;
CODE_158161:    STA $0204                   ; $15:8161: 8D 04 02    ;
CODE_158164:    STA $0737                   ; $15:8164: 8D 37 07    ;
CODE_158167:    LDA.w DATA_119B3E                   ; $15:8167: AD 3E 9B    ;
CODE_15816A:    STA $0734                   ; $15:816A: 8D 34 07    ;
CODE_15816D:    LDA.w DATA_119B3E                   ; $15:816D: AD 3E 9B    ;
CODE_158170:    STA $0725                   ; $15:8170: 8D 25 07    ;
CODE_158173:    LDA #$E0                    ; $15:8173: A9 E0       ;
CODE_158175:    STA $0730                   ; $15:8175: 8D 30 07    ;
CODE_158178:    LDA.w DATA_119B3E                   ; $15:8178: AD 3E 9B    ;
CODE_15817B:    CLC                         ; $15:817B: 18          ;
CODE_15817C:    ADC #$F0                    ; $15:817C: 69 F0       ;
CODE_15817E:    STA $072A                   ; $15:817E: 8D 2A 07    ;
CODE_158181:    RTL                     ; $15:8181: 6B          ;
                       
CODE_158182:    LDA $0732                   ; $15:8182: AD 32 07    ;
CODE_158185:    STA $0204                   ; $15:8185: 8D 04 02    ;
CODE_158188:    STA $0737                   ; $15:8188: 8D 37 07    ;
CODE_15818B:    LDA $0733                   ; $15:818B: AD 33 07    ;
CODE_15818E:    STA $0205                   ; $15:818E: 8D 05 02    ;
CODE_158191:    LDA $0735                   ; $15:8191: AD 35 07    ;
CODE_158194:    STA $0734                   ; $15:8194: 8D 34 07    ;
CODE_158197:    LDA $0736                   ; $15:8197: AD 36 07    ;
CODE_15819A:    BNE CODE_1581BC             ; $15:819A: D0 20       ;
CODE_15819C:    INC $0738                   ; $15:819C: EE 38 07    ;
CODE_15819F:    INC $0736                   ; $15:819F: EE 36 07    ;
CODE_1581A2:    INC $D5                     ; $15:81A2: E6 D5       ;
CODE_1581A4:    LDA $0726                   ; $15:81A4: AD 26 07    ;
CODE_1581A7:    STA $0725                   ; $15:81A7: 8D 25 07    ;
CODE_1581AA:    LDA #$10                    ; $15:81AA: A9 10       ;
CODE_1581AC:    STA $01                     ; $15:81AC: 85 01       ;
CODE_1581AE:    LDA #$F0                    ; $15:81AE: A9 F0       ;
CODE_1581B0:    STA $0730                   ; $15:81B0: 8D 30 07    ;
CODE_1581B3:    STA $072B                   ; $15:81B3: 8D 2B 07    ;
CODE_1581B6:    LDA $0727                   ; $15:81B6: AD 27 07    ;
CODE_1581B9:    STA $072A                   ; $15:81B9: 8D 2A 07    ;
CODE_1581BC:    RTL                     ; $15:81BC: 6B          ;
                       
CODE_1581BD:    LDX #$00                    ; $15:81BD: A2 00       ;
CODE_1581BF:    STX $0739                   ; $15:81BF: 8E 39 07    ;
CODE_1581C2:    STX $073A                   ; $15:81C2: 8E 3A 07    ;
CODE_1581C5:    STX $D8                     ; $15:81C5: 86 D8       ;
CODE_1581C7:    JSL CODE_158236             ; $15:81C7: 22 36 82 15 ;
CODE_1581CB:    JSL CODE_15826D             ; $15:81CB: 22 6D 82 15 ;
CODE_1581CF:    LDA $0730                   ; $15:81CF: AD 30 07    ;
CODE_1581D2:    CMP $073B                   ; $15:81D2: CD 3B 07    ;
CODE_1581D5:    BNE CODE_1581F1             ; $15:81D5: D0 1A       ;
CODE_1581D7:    BRA CODE_1581F1             ; $15:81D7: 80 18       ;

CODE_1581D9:    LDA $072B                   ; $15:81D9: AD 2B 07    ;
CODE_1581DC:    CLC                         ; $15:81DC: 18          ;
CODE_1581DD:    ADC #$01                    ; $15:81DD: 69 01       ;
CODE_1581DF:    CMP $073C                   ; $15:81DF: CD 3C 07    ;
CODE_1581E2:    BNE CODE_1581F1             ; $15:81E2: D0 0D       ;
CODE_1581E4:    STZ $0729                   ; $15:81E4: 9C 29 07    ;
CODE_1581E7:    STZ $0736                   ; $15:81E7: 9C 36 07    ;
CODE_1581EA:    STZ $0738                   ; $15:81EA: 9C 38 07    ;
CODE_1581ED:    INC $0739                   ; $15:81ED: EE 39 07    ;
CODE_1581F0:    RTL                     ; $15:81F0: 6B          ;
                       
CODE_1581F1:    LDA $0725                   ; $15:81F1: AD 25 07    ;
CODE_1581F4:    CMP $072A                   ; $15:81F4: CD 2A 07    ;
CODE_1581F7:    BEQ CODE_1581E4             ; $15:81F7: F0 EB       ;
CODE_1581F9:    LDX #$00                    ; $15:81F9: A2 00       ;
CODE_1581FB:    JSL CODE_15821B             ; $15:81FB: 22 1B 82 15 ;
CODE_1581FF:    RTL                         ; $15:81FF: 6B          ;

CODE_158200:    LDA $0725,x                 ; $15:8200: BD 25 07    ;
CODE_158203:    SEC                         ; $15:8203: 38          ;
CODE_158204:    SBC #$10                    ; $15:8204: E9 10       ;
CODE_158206:    STA $0725,x                 ; $15:8206: 9D 25 07    ;
CODE_158209:    BCS CODE_15821A                     ; $15:8209: B0 0F       ;
CODE_15820B:    DEC $0725,x                 ; $15:820B: DE 25 07    ;
CODE_15820E:    LDA $0725,x                 ; $15:820E: BD 25 07    ;
CODE_158211:    CMP #$EF                    ; $15:8211: C9 EF       ;
CODE_158213:    BNE CODE_15821A             ; $15:8213: D0 05       ;
CODE_158215:    LDA #$F9                    ; $15:8215: A9 F9       ;
CODE_158217:    STA $0725,x                 ; $15:8217: 9D 25 07    ;
CODE_15821A:    RTL                         ; $15:821A: 6B          ;

CODE_15821B:    LDA $0725,x                 ; $15:821B: BD 25 07    ;
CODE_15821E:    CLC                         ; $15:821E: 18          ;
CODE_15821F:    ADC #$10                    ; $15:821F: 69 10       ;
CODE_158221:    STA $0725,x                 ; $15:8221: 9D 25 07    ;
CODE_158224:    BCC CODE_158235             ; $15:8224: 90 0F       ;
CODE_158226:    INC $0725,x                 ; $15:8226: FE 25 07    ;
CODE_158229:    LDA $0725,x                 ; $15:8229: BD 25 07    ;
CODE_15822C:    CMP #$0A                    ; $15:822C: C9 0A       ;
CODE_15822E:    BNE CODE_158235             ; $15:822E: D0 05       ;
CODE_158230:    LDA #$00                    ; $15:8230: A9 00       ;
CODE_158232:    STA $0725,x                 ; $15:8232: 9D 25 07    ;
CODE_158235:    RTL                         ; $15:8235: 6B          ;

CODE_158236:    STY $0F                     ; $15:8236: 84 0F       ;
CODE_158238:    LDA $0725,x                 ; $15:8238: BD 25 07    ;
CODE_15823B:    AND #$0F                    ; $15:823B: 29 0F       ;
CODE_15823D:    TAY                         ; $15:823D: A8          ;
CODE_15823E:    LDA.w DATA_11AB1B,y                 ; $15:823E: B9 1B AB    ;
CODE_158241:    STA $073F                   ; $15:8241: 8D 3F 07    ;
CODE_158244:    LDA.w DATA_11AB25,y                 ; $15:8244: B9 25 AB    ;
CODE_158247:    STA $0740                   ; $15:8247: 8D 40 07    ;
CODE_15824A:    LDA #$7F                    ; $15:824A: A9 7F       ;
CODE_15824C:    STA $0741                   ; $15:824C: 8D 41 07    ;
CODE_15824F:    LDA $0725,x                 ; $15:824F: BD 25 07    ;
CODE_158252:    LSR A                       ; $15:8252: 4A          ;
CODE_158253:    LSR A                       ; $15:8253: 4A          ;
CODE_158254:    LSR A                       ; $15:8254: 4A          ;
CODE_158255:    LSR A                       ; $15:8255: 4A          ;
CODE_158256:    STA $0742                   ; $15:8256: 8D 42 07    ;
CODE_158259:    ASL A                       ; $15:8259: 0A          ;
CODE_15825A:    STA $073C                   ; $15:825A: 8D 3C 07    ;
CODE_15825D:    LDY #$00                    ; $15:825D: A0 00       ;
CODE_15825F:    LDA $0725,x                 ; $15:825F: BD 25 07    ;
CODE_158262:    LSR A                       ; $15:8262: 4A          ;
CODE_158263:    BCS CODE_158267                     ; $15:8263: B0 02       ;
CODE_158265:    LDY #$04                    ; $15:8265: A0 04       ;
CODE_158267:    STY $073B                   ; $15:8267: 8C 3B 07    ;
CODE_15826A:    LDY $0F                     ; $15:826A: A4 0F       ;
CODE_15826C:    RTL                         ; $15:826C: 6B          ;

CODE_15826D:    LDA $7F0800                 ; $15:826D: AF 00 08 7F ;
CODE_158271:    TAX                         ; $15:8271: AA          ;
CODE_158272:    LDA $073F                   ; $15:8272: AD 3F 07    ;
CODE_158275:    STA $C4                     ; $15:8275: 85 C4       ;
CODE_158277:    LDA $0740                   ; $15:8277: AD 40 07    ;
CODE_15827A:    STA $C5                     ; $15:827A: 85 C5       ;
CODE_15827C:    LDA $0741                   ; $15:827C: AD 41 07    ;
CODE_15827F:    STA $C6                     ; $15:827F: 85 C6       ;
CODE_158281:    REP #$20                    ; $15:8281: C2 20       ;
CODE_158283:    LDA $073B                   ; $15:8283: AD 3B 07    ;
CODE_158286:    CLC                         ; $15:8286: 18          ;
CODE_158287:    ADC #$0048                  ; $15:8287: 69 48 00    ;
CODE_15828A:    STA $7F0802,x               ; $15:828A: 9F 02 08 7F ;
CODE_15828E:    XBA                         ; $15:828E: EB          ;
CODE_15828F:    CLC                         ; $15:828F: 18          ;
CODE_158290:    ADC #$0001                  ; $15:8290: 69 01 00    ;
CODE_158293:    XBA                         ; $15:8293: EB          ;
CODE_158294:    STA $7F0842,x               ; $15:8294: 9F 42 08 7F ;
CODE_158298:    INX                         ; $15:8298: E8          ;
CODE_158299:    INX                         ; $15:8299: E8          ;
CODE_15829A:    LDA #$3C00                  ; $15:829A: A9 00 3C    ;
CODE_15829D:    STA $7F0802,x               ; $15:829D: 9F 02 08 7F ;
CODE_1582A1:    STA $7F0842,x               ; $15:82A1: 9F 42 08 7F ;
CODE_1582A5:    INX                         ; $15:82A5: E8          ;
CODE_1582A6:    INX                         ; $15:82A6: E8          ;
CODE_1582A7:    SEP #$20                    ; $15:82A7: E2 20       ;
CODE_1582A9:    STZ $0743                   ; $15:82A9: 9C 43 07    ;
CODE_1582AC:    STZ $074F                   ; $15:82AC: 9C 4F 07    ;
CODE_1582AF:    LDA $0744                   ; $15:82AF: AD 44 07    ;
CODE_1582B2:    STA $00                     ; $15:82B2: 85 00       ;
CODE_1582B4:    LDA $0745                   ; $15:82B4: AD 45 07    ;
CODE_1582B7:    STA $01                     ; $15:82B7: 85 01       ;
CODE_1582B9:    LDA $0746                   ; $15:82B9: AD 46 07    ;
CODE_1582BC:    STA $02                     ; $15:82BC: 85 02       ;
CODE_1582BE:    LDY $0742                   ; $15:82BE: AC 42 07    ;
CODE_1582C1:    REP #$30                    ; $15:82C1: C2 30       ;
CODE_1582C3:    LDA [$C4],y                 ; $15:82C3: B7 C4       ;
CODE_1582C5:    AND #$00FF                  ; $15:82C5: 29 FF 00    ;
CODE_1582C8:    CMP #$00FF                  ; $15:82C8: C9 FF 00    ;
CODE_1582CB:    BNE CODE_1582DD             ; $15:82CB: D0 10       ;
CODE_1582CD:    LDA.l DATA_15934F                   ; $15:82CD: AF 4F 93 15 ;
CODE_1582D1:    STA $00                     ; $15:82D1: 85 00       ;
CODE_1582D3:    LDA #$0015                  ; $15:82D3: A9 15 00    ;
CODE_1582D6:    STA $02                     ; $15:82D6: 85 02       ;
CODE_1582D8:    LDY #$0000                  ; $15:82D8: A0 00 00    ;
CODE_1582DB:    BRA CODE_1582E1             ; $15:82DB: 80 04       ;

CODE_1582DD:    ASL A                       ; $15:82DD: 0A          ;
CODE_1582DE:    ASL A                       ; $15:82DE: 0A          ;
CODE_1582DF:    ASL A                       ; $15:82DF: 0A          ;
CODE_1582E0:    TAY                         ; $15:82E0: A8          ;
CODE_1582E1:    LDA [$00],y                 ; $15:82E1: B7 00       ;
CODE_1582E3:    STA $7F0802,x               ; $15:82E3: 9F 02 08 7F ;
CODE_1582E7:    INY                         ; $15:82E7: C8          ;
CODE_1582E8:    INY                         ; $15:82E8: C8          ;
CODE_1582E9:    LDA [$00],y                 ; $15:82E9: B7 00       ;
CODE_1582EB:    STA $7F0842,x               ; $15:82EB: 9F 42 08 7F ;
CODE_1582EF:    INY                         ; $15:82EF: C8          ;
CODE_1582F0:    INY                         ; $15:82F0: C8          ;
CODE_1582F1:    LDA [$00],y                 ; $15:82F1: B7 00       ;
CODE_1582F3:    STA $7F0804,x               ; $15:82F3: 9F 04 08 7F ;
CODE_1582F7:    INY                         ; $15:82F7: C8          ;
CODE_1582F8:    INY                         ; $15:82F8: C8          ;
CODE_1582F9:    LDA [$00],y                 ; $15:82F9: B7 00       ;
CODE_1582FB:    STA $7F0844,x               ; $15:82FB: 9F 44 08 7F ;
CODE_1582FF:    SEP #$30                    ; $15:82FF: E2 30       ;
CODE_158301:    INC $0743                   ; $15:8301: EE 43 07    ;
CODE_158304:    INX                         ; $15:8304: E8          ;
CODE_158305:    INX                         ; $15:8305: E8          ;
CODE_158306:    INX                         ; $15:8306: E8          ;
CODE_158307:    INX                         ; $15:8307: E8          ;
CODE_158308:    LDA $0742                   ; $15:8308: AD 42 07    ;
CODE_15830B:    CLC                         ; $15:830B: 18          ;
CODE_15830C:    ADC #$10                    ; $15:830C: 69 10       ;
CODE_15830E:    STA $0742                   ; $15:830E: 8D 42 07    ;
CODE_158311:    LDA $0743                   ; $15:8311: AD 43 07    ;
CODE_158314:    CMP #$0F                    ; $15:8314: C9 0F       ;
CODE_158316:    BCC CODE_1582AF             ; $15:8316: 90 97       ;
CODE_158318:    LDA #$FF                    ; $15:8318: A9 FF       ;
CODE_15831A:    STA $7F0842,x               ; $15:831A: 9F 42 08 7F ;
CODE_15831E:    TXA                         ; $15:831E: 8A          ;
CODE_15831F:    CLC                         ; $15:831F: 18          ;
CODE_158320:    ADC #$40                    ; $15:8320: 69 40       ;
CODE_158322:    STA $7F0800                 ; $15:8322: 8F 00 08 7F ;
CODE_158326:    INC $073A                   ; $15:8326: EE 3A 07    ;
CODE_158329:    RTL                         ; $15:8329: 6B          ;

DATA_15832A:        db $00,$40,$80,$C0

CODE_15832E:    LDA $0772                   ; $15:832E: AD 72 07    ;
CODE_158331:    BEQ CODE_158342             ; $15:8331: F0 0F       ;
CODE_158333:    LDA $0200                   ; $15:8333: AD 00 02    ;
CODE_158336:    STA $0204                   ; $15:8336: 8D 04 02    ;
CODE_158339:    LDA $0201                   ; $15:8339: AD 01 02    ;
CODE_15833C:    STA $0205                   ; $15:833C: 8D 05 02    ;
CODE_15833F:    BRL CODE_1583E6             ; $15:833F: 82 A4 00    ;

CODE_158342:    LDA $0535                   ; $15:8342: AD 35 05    ;
CODE_158345:    AND #$04                    ; $15:8345: 29 04       ;
CODE_158347:    BNE CODE_158399             ; $15:8347: D0 50       ;
CODE_158349:    LDA $0535                   ; $15:8349: AD 35 05    ;
CODE_15834C:    AND #$07                    ; $15:834C: 29 07       ;
CODE_15834E:    BNE CODE_158365             ; $15:834E: D0 15       ;
CODE_158350:    LDA $0201                   ; $15:8350: AD 01 02    ;
CODE_158353:    BNE CODE_158365             ; $15:8353: D0 10       ;
CODE_158355:    STZ $0205                   ; $15:8355: 9C 05 02    ;
CODE_158358:    LDA $0200                   ; $15:8358: AD 00 02    ;
CODE_15835B:    LSR A                       ; $15:835B: 4A          ;
CODE_15835C:    LSR A                       ; $15:835C: 4A          ;
CODE_15835D:    ORA #$C0                    ; $15:835D: 09 C0       ;
CODE_15835F:    STA $0204                   ; $15:835F: 8D 04 02    ;
CODE_158362:    JMP CODE_1583E6             ; $15:8362: 4C E6 83    ;

CODE_158365:    LDA #$01                    ; $15:8365: A9 01       ;
CODE_158367:    STA $0205                   ; $15:8367: 8D 05 02    ;
CODE_15836A:    LDA $0200                   ; $15:836A: AD 00 02    ;
CODE_15836D:    LSR A                       ; $15:836D: 4A          ;
CODE_15836E:    LSR A                       ; $15:836E: 4A          ;
CODE_15836F:    STA $0204                   ; $15:836F: 8D 04 02    ;
CODE_158372:    LDA $0535                   ; $15:8372: AD 35 05    ;
CODE_158375:    AND #$03                    ; $15:8375: 29 03       ;
CODE_158377:    TAX                         ; $15:8377: AA          ;
CODE_158378:    LDA $0535                   ; $15:8378: AD 35 05    ;
CODE_15837B:    AND #$01                    ; $15:837B: 29 01       ;
CODE_15837D:    BEQ CODE_158386             ; $15:837D: F0 07       ;
CODE_15837F:    LDA $0201                   ; $15:837F: AD 01 02    ;
CODE_158382:    BEQ CODE_15838C             ; $15:8382: F0 08       ;
CODE_158384:    BRA CODE_15838B             ; $15:8384: 80 05       ;

CODE_158386:    LDA $0201                   ; $15:8386: AD 01 02    ;
CODE_158389:    BNE CODE_15838C             ; $15:8389: D0 01       ;
CODE_15838B:    DEX                         ; $15:838B: CA          ;
CODE_15838C:    LDA.l DATA_15832A,x                 ; $15:838C: BF 2A 83 15 ;
CODE_158390:    CLC                         ; $15:8390: 18          ;
CODE_158391:    ADC $0204                   ; $15:8391: 6D 04 02    ;
CODE_158394:    STA $0204                   ; $15:8394: 8D 04 02    ;
CODE_158397:    BRA CODE_1583E6             ; $15:8397: 80 4D       ;

CODE_158399:    LDA $0535                   ; $15:8399: AD 35 05    ;
CODE_15839C:    CMP #$04                    ; $15:839C: C9 04       ;
CODE_15839E:    BNE CODE_1583B6             ; $15:839E: D0 16       ;
CODE_1583A0:    LDA $0201                   ; $15:83A0: AD 01 02    ;
CODE_1583A3:    BNE CODE_1583B6             ; $15:83A3: D0 11       ;
CODE_1583A5:    LDA #$01                    ; $15:83A5: A9 01       ;
CODE_1583A7:    STA $0205                   ; $15:83A7: 8D 05 02    ;
CODE_1583AA:    LDA $0200                   ; $15:83AA: AD 00 02    ;
CODE_1583AD:    LSR A                       ; $15:83AD: 4A          ;
CODE_1583AE:    LSR A                       ; $15:83AE: 4A          ;
CODE_1583AF:    ORA #$C0                    ; $15:83AF: 09 C0       ;
CODE_1583B1:    STA $0204                   ; $15:83B1: 8D 04 02    ;
CODE_1583B4:    BRA CODE_1583E6             ; $15:83B4: 80 30       ;

CODE_1583B6:    STZ $0205                   ; $15:83B6: 9C 05 02    ;
CODE_1583B9:    LDA $0200                   ; $15:83B9: AD 00 02    ;
CODE_1583BC:    LSR A                       ; $15:83BC: 4A          ;
CODE_1583BD:    LSR A                       ; $15:83BD: 4A          ;
CODE_1583BE:    STA $0204                   ; $15:83BE: 8D 04 02    ;
CODE_1583C1:    LDA $0535                   ; $15:83C1: AD 35 05    ;
CODE_1583C4:    AND #$03                    ; $15:83C4: 29 03       ;
CODE_1583C6:    TAX                         ; $15:83C6: AA          ;
CODE_1583C7:    LDA $0535                   ; $15:83C7: AD 35 05    ;
CODE_1583CA:    AND #$01                    ; $15:83CA: 29 01       ;
CODE_1583CC:    BEQ CODE_1583D5             ; $15:83CC: F0 07       ;
CODE_1583CE:    LDA $0201                   ; $15:83CE: AD 01 02    ;
CODE_1583D1:    BEQ CODE_1583DB             ; $15:83D1: F0 08       ;
CODE_1583D3:    BRA CODE_1583DA             ; $15:83D3: 80 05       ;

CODE_1583D5:    LDA $0201                   ; $15:83D5: AD 01 02    ;
CODE_1583D8:    BNE CODE_1583DB             ; $15:83D8: D0 01       ;
CODE_1583DA:    DEX                         ; $15:83DA: CA          ;
CODE_1583DB:    LDA.l DATA_15832A,x                 ; $15:83DB: BF 2A 83 15 ;
CODE_1583DF:    CLC                         ; $15:83DF: 18          ;
CODE_1583E0:    ADC $0204                   ; $15:83E0: 6D 04 02    ;
CODE_1583E3:    STA $0204                   ; $15:83E3: 8D 04 02    ;
CODE_1583E6:    LDA $0204                   ; $15:83E6: AD 04 02    ;
CODE_1583E9:    AND #$F0                    ; $15:83E9: 29 F0       ;
CODE_1583EB:    STA $0750                   ; $15:83EB: 8D 50 07    ;
CODE_1583EE:    STZ $0751                   ; $15:83EE: 9C 51 07    ;
CODE_1583F1:    RTS                         ; $15:83F1: 60          ;

CODE_1583F2:    LDX $0533               ; $15:83F2: AE 33 05    ; \ Get room + level number into index.
CODE_1583F5:    LDA.l DATA_11D098,x     ; $15:83F5: BF 98 D0 11 ;  |
CODE_1583F9:    CLC                     ; $15:83F9: 18          ;  |
CODE_1583FA:    ADC $0534               ; $15:83FA: 6D 34 05    ;  |
CODE_1583FD:    TAX                     ; $15:83FD: AA          ;  |
CODE_1583FE:    LDA.l DATA_15916B,x     ; $15:83FE: BF 6B 91 15 ;  | Load which set of Layer 3 Map16 tiles to use (the cloud tiles or the light beams of the shining door) 
CODE_158402:    ASL A                   ; $15:8402: 0A          ;  | Multiply by 2.
CODE_158403:    TAX                     ; $15:8403: AA          ;  |
CODE_158404:    LDA.l PNTR_159233,x     ; $15:8404: BF 33 92 15 ;  | Get low byte of Map16 table.   
CODE_158408:    STA $0744               ; $15:8408: 8D 44 07    ;  |
CODE_15840B:    INX                     ; $15:840B: E8          ;  |
CODE_15840C:    LDA.l PNTR_159233,x     ; $15:840C: BF 33 92 15 ;  | Get high byte of Map16 table.   
CODE_158410:    STA $0745               ; $15:8410: 8D 45 07    ;  |
CODE_158413:    LDA #$15                ; $15:8413: A9 15       ;  | Bank number = $15.
CODE_158415:    STA $0746               ; $15:8415: 8D 46 07    ; /
CODE_158418:    RTS                     ; $15:8418: 60          ; Return.

CODE_158419:    LDX #$44                    ; $15:8419: A2 44       ;
CODE_15841B:    LDY #$00                    ; $15:841B: A0 00       ;
CODE_15841D:    LDA $0628                   ; $15:841D: AD 28 06    ;
CODE_158420:    CMP #$01                    ; $15:8420: C9 01       ;
CODE_158422:    BNE CODE_158428             ; $15:8422: D0 04       ;
CODE_158424:    LDX #$84                    ; $15:8424: A2 84       ;
CODE_158426:    BRA CODE_15842F             ; $15:8426: 80 07       ;

CODE_158428:    LDA $EB                     ; $15:8428: A5 EB       ;
CODE_15842A:    BEQ CODE_15842F             ; $15:842A: F0 03       ;
CODE_15842C:    LDX #$40                    ; $15:842C: A2 40       ;
CODE_15842E:    INY                         ; $15:842E: C8          ;
CODE_15842F:    STX $03                     ; $15:842F: 86 03       ;
CODE_158431:    STZ $04                     ; $15:8431: 64 04       ;
CODE_158433:    TYA                         ; $15:8433: 98          ;
CODE_158434:    ORA #$80                    ; $15:8434: 09 80       ;
CODE_158436:    STA $2115                   ; $15:8436: 8D 15 21    ;
CODE_158439:    LDA #$7F                    ; $15:8439: A9 7F       ;
CODE_15843B:    STA $4314                   ; $15:843B: 8D 14 43    ;
CODE_15843E:    REP #$10                    ; $15:843E: C2 10       ;
CODE_158440:    LDX #$1801                  ; $15:8440: A2 01 18    ;
CODE_158443:    STX $4310                   ; $15:8443: 8E 10 43    ;
CODE_158446:    LDX #$0002                  ; $15:8446: A2 02 00    ;
CODE_158449:    LDA $7F0800,x               ; $15:8449: BF 00 08 7F ;
CODE_15844D:    BMI CODE_15847F             ; $15:844D: 30 30       ;
CODE_15844F:    REP #$20                    ; $15:844F: C2 20       ;
CODE_158451:    LDA $7F0800,x               ; $15:8451: BF 00 08 7F ;
CODE_158455:    XBA                         ; $15:8455: EB          ;
CODE_158456:    STA $2116                   ; $15:8456: 8D 16 21    ;
CODE_158459:    LDA $7F0802,x               ; $15:8459: BF 02 08 7F ;
CODE_15845D:    XBA                         ; $15:845D: EB          ;
CODE_15845E:    STA $4315                   ; $15:845E: 8D 15 43    ;
CODE_158461:    TXA                         ; $15:8461: 8A          ;
CODE_158462:    CLC                         ; $15:8462: 18          ;
CODE_158463:    ADC #$0004                  ; $15:8463: 69 04 00    ;
CODE_158466:    CLC                         ; $15:8466: 18          ;
CODE_158467:    ADC #$0800                  ; $15:8467: 69 00 08    ;
CODE_15846A:    STA $4312                   ; $15:846A: 8D 12 43    ;
CODE_15846D:    TXA                         ; $15:846D: 8A          ;
CODE_15846E:    CLC                         ; $15:846E: 18          ;
CODE_15846F:    ADC $03                     ; $15:846F: 65 03       ;
CODE_158471:    TAX                         ; $15:8471: AA          ;
CODE_158472:    SEP #$20                    ; $15:8472: E2 20       ;
CODE_158474:    LDA #$02                    ; $15:8474: A9 02       ;
CODE_158476:    STA $420B                   ; $15:8476: 8D 0B 42    ;
CODE_158479:    LDA $7F0800,x               ; $15:8479: BF 00 08 7F ;
CODE_15847D:    BPL CODE_15844F             ; $15:847D: 10 D0       ;
CODE_15847F:    SEP #$30                    ; $15:847F: E2 30       ;
CODE_158481:    RTL                         ; $15:8481: 6B          ;

DATA_158482:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF              ; /

CODE_158500:    LDA $0724               ; $15:8500: AD 24 07    ;
CODE_158503:    BNE CODE_158554         ; $15:8503: D0 4F       ;
CODE_158505:    LDA #$02                ; $15:8505: A9 02       ;
CODE_158507:    STA $073B                   ; $15:8507: 8D 3B 07    ;
CODE_15850A:    LDA $0772               ; $15:850A: AD 72 07    ;
CODE_15850D:    BNE CODE_158523             ; $15:850D: D0 14       ;
CODE_15850F:    LDX $0535                   ; $15:850F: AE 35 05    ;
CODE_158512:    LDA.l DATA_11D038,x                 ; $15:8512: BF 38 D0 11 ;
CODE_158516:    STA $0725                   ; $15:8516: 8D 25 07    ;
CODE_158519:    STA $0726                   ; $15:8519: 8D 26 07    ;
CODE_15851C:    LDA.l DATA_11D042,x                 ; $15:851C: BF 42 D0 11 ;
CODE_158520:    STA $0727                   ; $15:8520: 8D 27 07    ;
CODE_158523:    LDA $0535                   ; $15:8523: AD 35 05    ;
CODE_158526:    LDY #$00                    ; $15:8526: A0 00       ;
CODE_158528:    JSR CODE_158107             ; $15:8528: 20 07 81    ;
CODE_15852B:    LDA #$02                    ; $15:852B: A9 02       ;
CODE_15852D:    STA $0747                   ; $15:852D: 8D 47 07    ;
CODE_158530:    LDA #$00                    ; $15:8530: A9 00       ;
CODE_158532:    STA $0748                   ; $15:8532: 8D 48 07    ;
CODE_158535:    LDA #$20                    ; $15:8535: A9 20       ;
CODE_158537:    STA $073D                   ; $15:8537: 8D 3D 07    ;
CODE_15853A:    LDA #$A0                    ; $15:853A: A9 A0       ;
CODE_15853C:    STA $073E                   ; $15:853C: 8D 3E 07    ;
CODE_15853F:    INC $0724                   ; $15:853F: EE 24 07    ;
CODE_158542:    LDA #$E0                    ; $15:8542: A9 E0       ;
CODE_158544:    STA $E2                     ; $15:8544: 85 E2       ;
CODE_158546:    LDA #$01                    ; $15:8546: A9 01       ;
CODE_158548:    STA $E4                     ; $15:8548: 85 E4       ;
CODE_15854A:    STA $0729                   ; $15:854A: 8D 29 07    ;
CODE_15854D:    LSR A                       ; $15:854D: 4A          ;
CODE_15854E:    STA $073C                   ; $15:854E: 8D 3C 07    ;
CODE_158551:    JSR CODE_1583F2             ; $15:8551: 20 F2 83    ;
CODE_158554:    STZ $06                     ; $15:8554: 64 06       ;
CODE_158556:    LDA #$FF                    ; $15:8556: A9 FF       ;
CODE_158558:    STA $072A                   ; $15:8558: 8D 2A 07    ;
CODE_15855B:    LDA #$A0                    ; $15:855B: A9 A0       ;
CODE_15855D:    STA $072B                   ; $15:855D: 8D 2B 07    ;
CODE_158560:    JSL CODE_1585F8             ; $15:8560: 22 F8 85 15 ;
CODE_158564:    LDA $0729                   ; $15:8564: AD 29 07    ;
CODE_158567:    BNE CODE_158571             ; $15:8567: D0 08       ;
CODE_158569:    LDA #$E8                    ; $15:8569: A9 E8       ;
CODE_15856B:    STA $E1                     ; $15:856B: 85 E1       ;
CODE_15856D:    LDA #$C8                    ; $15:856D: A9 C8       ;
CODE_15856F:    STA $E2                     ; $15:856F: 85 E2       ;
CODE_158571:    RTL                         ; $15:8571: 6B          ;

CODE_158572:    LDA $020A                   ; $15:8572: AD 0A 02    ;
CODE_158575:    STA $0731                   ; $15:8575: 8D 31 07    ;
CODE_158578:    LDA $0204                   ; $15:8578: AD 04 02    ;
CODE_15857B:    STA $0732                   ; $15:857B: 8D 32 07    ;
CODE_15857E:    LDA $0749                   ; $15:857E: AD 49 07    ;
CODE_158581:    STA $074B                   ; $15:8581: 8D 4B 07    ;
CODE_158584:    LDA $074A                   ; $15:8584: AD 4A 07    ;
CODE_158587:    STA $074C                   ; $15:8587: 8D 4C 07    ;
CODE_15858A:    LDA $0734                   ; $15:858A: AD 34 07    ;
CODE_15858D:    STA $074D                   ; $15:858D: 8D 4D 07    ;
CODE_158590:    STZ $020A                   ; $15:8590: 9C 0A 02    ;
CODE_158593:    STZ $0204                   ; $15:8593: 9C 04 02    ;
CODE_158596:    RTL                         ; $15:8596: 6B          ;

CODE_158597:    LDA $0731                   ; $15:8597: AD 31 07    ;
CODE_15859A:    STA $020A                   ; $15:859A: 8D 0A 02    ;
CODE_15859D:    LDA $0732                   ; $15:859D: AD 32 07    ;
CODE_1585A0:    STA $0204                   ; $15:85A0: 8D 04 02    ;
CODE_1585A3:    LDA $074B                   ; $15:85A3: AD 4B 07    ;
CODE_1585A6:    STA $0749                   ; $15:85A6: 8D 49 07    ;
CODE_1585A9:    LDA $074C                   ; $15:85A9: AD 4C 07    ;
CODE_1585AC:    STA $074A                   ; $15:85AC: 8D 4A 07    ;
CODE_1585AF:    LDA $074D                   ; $15:85AF: AD 4D 07    ;
CODE_1585B2:    STA $0734                   ; $15:85B2: 8D 34 07    ;
CODE_1585B5:    RTL                         ; $15:85B5: 6B          ;

CODE_1585B6:    LDA $0726                   ; $15:85B6: AD 26 07    ;
CODE_1585B9:    AND #$10                    ; $15:85B9: 29 10       ;
CODE_1585BB:    BEQ CODE_1585C4             ; $15:85BB: F0 07       ;
CODE_1585BD:    LDA $E1                     ; $15:85BD: A5 E1       ;
CODE_1585BF:    SEC                         ; $15:85BF: 38          ;
CODE_1585C0:    SBC #$08                    ; $15:85C0: E9 08       ;
CODE_1585C2:    STA $E1                     ; $15:85C2: 85 E1       ;
CODE_1585C4:    LDA #$01                    ; $15:85C4: A9 01       ;
CODE_1585C6:    STA $E4                     ; $15:85C6: 85 E4       ;
CODE_1585C8:    LDA $0726                   ; $15:85C8: AD 26 07    ;
CODE_1585CB:    STA $0725                   ; $15:85CB: 8D 25 07    ;
CODE_1585CE:    LDA #$10                    ; $15:85CE: A9 10       ;
CODE_1585D0:    STA $01                     ; $15:85D0: 85 01       ;
CODE_1585D2:    LDX #$00                    ; $15:85D2: A2 00       ;
CODE_1585D4:    JSL CODE_15873F             ; $15:85D4: 22 3F 87 15 ;
CODE_1585D8:    LDA $073D                   ; $15:85D8: AD 3D 07    ;
CODE_1585DB:    STA $073C                   ; $15:85DB: 8D 3C 07    ;
CODE_1585DE:    LDA $E1                     ; $15:85DE: A5 E1       ;
CODE_1585E0:    STA $E2                     ; $15:85E0: 85 E2       ;
CODE_1585E2:    LDA #$F0                    ; $15:85E2: A9 F0       ;
CODE_1585E4:    STA $0730                   ; $15:85E4: 8D 30 07    ;
CODE_1585E7:    STA $072B                   ; $15:85E7: 8D 2B 07    ;
CODE_1585EA:    LDA $0727                   ; $15:85EA: AD 27 07    ;
CODE_1585ED:    STA $072A                   ; $15:85ED: 8D 2A 07    ;
CODE_1585F0:    INC $074F                   ; $15:85F0: EE 4F 07    ;
CODE_1585F3:    LDA #$01                    ; $15:85F3: A9 01       ;
CODE_1585F5:    STA $06                     ; $15:85F5: 85 06       ;
CODE_1585F7:    RTL                         ; $15:85F7: 6B          ;

CODE_1585F8:    LDX #$00                    ; $15:85F8: A2 00       ;
CODE_1585FA:    STX $0739                   ; $15:85FA: 8E 39 07    ;
CODE_1585FD:    JSL CODE_1586F1             ; $15:85FD: 22 F1 86 15 ;
CODE_158601:    JSL CODE_15876F             ; $15:8601: 22 6F 87 15 ;
CODE_158605:    LDX #$00                    ; $15:8605: A2 00       ;
CODE_158607:    JSL CODE_15866E             ; $15:8607: 22 6E 86 15 ;
CODE_15860B:    LDA $0730                   ; $15:860B: AD 30 07    ;
CODE_15860E:    CMP $073B                   ; $15:860E: CD 3B 07    ;
CODE_158611:    BNE CODE_158635             ; $15:8611: D0 22       ;
CODE_158613:    LDA $072B                   ; $15:8613: AD 2B 07    ;
CODE_158616:    CLC                         ; $15:8616: 18          ;
CODE_158617:    ADC #$20                    ; $15:8617: 69 20       ;
CODE_158619:    CMP $073C                   ; $15:8619: CD 3C 07    ;
CODE_15861C:    BNE CODE_158635             ; $15:861C: D0 17       ;
CODE_15861E:    LDA $06                     ; $15:861E: A5 06       ;
CODE_158620:    TAX                         ; $15:8620: AA          ;
CODE_158621:    BEQ CODE_158628             ; $15:8621: F0 05       ;
CODE_158623:    LDA $0519                   ; $15:8623: AD 19 05    ;
CODE_158626:    STA $E1                     ; $15:8626: 85 E1       ;
CODE_158628:    INC $0739                   ; $15:8628: EE 39 07    ;
CODE_15862B:    STZ $0729                   ; $15:862B: 9C 29 07    ;
CODE_15862E:    STZ $0736                   ; $15:862E: 9C 36 07    ;
CODE_158631:    STZ $0738                   ; $15:8631: 9C 38 07    ;
CODE_158634:    RTL                         ; $15:8634: 6B          ;

CODE_158635:    LDA $073C                   ; $15:8635: AD 3C 07    ;
CODE_158638:    AND #$20                    ; $15:8638: 29 20       ;
CODE_15863A:    BNE CODE_15864A             ; $15:863A: D0 0E       ;
CODE_15863C:    LDA $0725                   ; $15:863C: AD 25 07    ;
CODE_15863F:    CMP $072A                   ; $15:863F: CD 2A 07    ;
CODE_158642:    BEQ CODE_15861E             ; $15:8642: F0 DA       ;
CODE_158644:    LDX #$00                    ; $15:8644: A2 00       ;
CODE_158646:    JSL CODE_1586CA             ; $15:8646: 22 CA 86 15 ;
CODE_15864A:    RTL                         ; $15:864A: 6B          ;

CODE_15864B:    LDA $073D,x                 ; $15:864B: BD 3D 07    ;
CODE_15864E:    SEC                         ; $15:864E: 38          ;
CODE_15864F:    SBC #$20                    ; $15:864F: E9 20       ;
CODE_158651:    STA $073D,x                 ; $15:8651: 9D 3D 07    ;
CODE_158654:    BCS CODE_15866D                     ; $15:8654: B0 17       ;
CODE_158656:    LDA $0747,x                 ; $15:8656: BD 47 07    ;
CODE_158659:    SEC                         ; $15:8659: 38          ;
CODE_15865A:    SBC #$01                    ; $15:865A: E9 01       ;
CODE_15865C:    CMP #$FF                    ; $15:865C: C9 FF       ;
CODE_15865E:    BNE CODE_158664             ; $15:865E: D0 04       ;
CODE_158660:    LDA #$0B                    ; $15:8660: A9 0B       ;
CODE_158662:    BRA CODE_15866A             ; $15:8662: 80 06       ;

CODE_158664:    CMP #$07                    ; $15:8664: C9 07       ;
CODE_158666:    BNE CODE_15869C             ; $15:8666: D0 34       ;
CODE_158668:    LDA #$03                    ; $15:8668: A9 03       ;
CODE_15866A:    STA $0747,x                 ; $15:866A: 9D 47 07    ;
CODE_15866D:    RTL                         ; $15:866D: 6B          ;

CODE_15866E:    LDA $073C,x                 ; $15:866E: BD 3C 07    ;
CODE_158671:    CLC                         ; $15:8671: 18          ;
CODE_158672:    ADC #$20                    ; $15:8672: 69 20       ;
CODE_158674:    STA $073C,x                 ; $15:8674: 9D 3C 07    ;
CODE_158677:    BCC CODE_15869F             ; $15:8677: 90 26       ;
CODE_158679:    CPX #$00                    ; $15:8679: E0 00       ;
CODE_15867B:    BNE CODE_158687             ; $15:867B: D0 0A       ;
CODE_15867D:    LDA $073B                   ; $15:867D: AD 3B 07    ;
CODE_158680:    CLC                         ; $15:8680: 18          ;
CODE_158681:    ADC #$01                    ; $15:8681: 69 01       ;
CODE_158683:    STA $073B                   ; $15:8683: 8D 3B 07    ;
CODE_158686:    RTL                         ; $15:8686: 6B          ;

CODE_158687:    DEX                         ; $15:8687: CA          ;
CODE_158688:    LDA $0747,x                 ; $15:8688: BD 47 07    ;
CODE_15868B:    CLC                         ; $15:868B: 18          ;
CODE_15868C:    ADC #$01                    ; $15:868C: 69 01       ;
CODE_15868E:    CMP #$04                    ; $15:868E: C9 04       ;
CODE_158690:    BNE CODE_158696             ; $15:8690: D0 04       ;
CODE_158692:    LDA #$08                    ; $15:8692: A9 08       ;
CODE_158694:    BRA CODE_15869C             ; $15:8694: 80 06       ;
CODE_158696:    CMP #$0C                    ; $15:8696: C9 0C       ;
CODE_158698:    BNE CODE_15869C             ; $15:8698: D0 02       ;
CODE_15869A:    LDA #$00                    ; $15:869A: A9 00       ;
CODE_15869C:    STA $0747,x                 ; $15:869C: 9D 47 07    ;
CODE_15869F:    RTL                         ; $15:869F: 6B          ;

CODE_1586A0:    LDA $0726,x                 ; $15:86A0: BD 26 07    ;
CODE_1586A3:    SEC                         ; $15:86A3: 38          ;
CODE_1586A4:    SBC #$10                    ; $15:86A4: E9 10       ;
CODE_1586A6:    STA $0726,x                 ; $15:86A6: 9D 26 07    ;
CODE_1586A9:    AND #$F0                    ; $15:86A9: 29 F0       ;
CODE_1586AB:    CMP #$F0                    ; $15:86AB: C9 F0       ;
CODE_1586AD:    BNE CODE_1586C9             ; $15:86AD: D0 1A       ;
CODE_1586AF:    LDA $0726,x                 ; $15:86AF: BD 26 07    ;
CODE_1586B2:    AND #$0F                    ; $15:86B2: 29 0F       ;
CODE_1586B4:    CLC                         ; $15:86B4: 18          ;
CODE_1586B5:    ADC #$E0                    ; $15:86B5: 69 E0       ;
CODE_1586B7:    STA $0726,x                 ; $15:86B7: 9D 26 07    ;
CODE_1586BA:    DEC $0726,x                 ; $15:86BA: DE 26 07    ;
CODE_1586BD:    LDA $0726,x                 ; $15:86BD: BD 26 07    ;
CODE_1586C0:    CMP #$DF                    ; $15:86C0: C9 DF       ;
CODE_1586C2:    BNE CODE_1586C9             ; $15:86C2: D0 05       ;
CODE_1586C4:    LDA #$E9                    ; $15:86C4: A9 E9       ;
CODE_1586C6:    STA $0726,x                 ; $15:86C6: 9D 26 07    ;
CODE_1586C9:    RTL                         ; $15:86C9: 6B          ;

CODE_1586CA:    LDA $0725,x                 ; $15:86CA: BD 25 07    ;
CODE_1586CD:    CLC                         ; $15:86CD: 18          ;
CODE_1586CE:    ADC #$10                    ; $15:86CE: 69 10       ;
CODE_1586D0:    STA $0725,x                 ; $15:86D0: 9D 25 07    ;
CODE_1586D3:    AND #$F0                    ; $15:86D3: 29 F0       ;
CODE_1586D5:    CMP #$F0                    ; $15:86D5: C9 F0       ;
CODE_1586D7:    BNE CODE_1586F0             ; $15:86D7: D0 17       ;
CODE_1586D9:    LDA $0725,x                 ; $15:86D9: BD 25 07    ;
CODE_1586DC:    AND #$0F                    ; $15:86DC: 29 0F       ;
CODE_1586DE:    STA $0725,x                 ; $15:86DE: 9D 25 07    ;
CODE_1586E1:    INC $0725,x                 ; $15:86E1: FE 25 07    ;
CODE_1586E4:    LDA $0725,x                 ; $15:86E4: BD 25 07    ;
CODE_1586E7:    CMP #$0A                    ; $15:86E7: C9 0A       ;
CODE_1586E9:    BNE CODE_1586F0             ; $15:86E9: D0 05       ;
CODE_1586EB:    LDA #$00                    ; $15:86EB: A9 00       ;
CODE_1586ED:    STA $0725,x                 ; $15:86ED: 9D 25 07    ;
CODE_1586F0:    RTL                         ; $15:86F0: 6B          ;

CODE_1586F1:    PHX                         ; $15:86F1: DA          ;
CODE_1586F2:    LDA $0725,x                 ; $15:86F2: BD 25 07    ;
CODE_1586F5:    AND #$0F                    ; $15:86F5: 29 0F       ;
CODE_1586F7:    TAY                         ; $15:86F7: A8          ;
CODE_1586F8:    LDA.w DATA_11AB1B,y                 ; $15:86F8: B9 1B AB    ;
CODE_1586FB:    STA $073F                   ; $15:86FB: 8D 3F 07    ;
CODE_1586FE:    LDA.w DATA_11AB25,y                 ; $15:86FE: B9 25 AB    ;
CODE_158701:    STA $0740                   ; $15:8701: 8D 40 07    ;
CODE_158704:    LDA #$7F                    ; $15:8704: A9 7F       ;
CODE_158706:    STA $0741                   ; $15:8706: 8D 41 07    ;
CODE_158709:    LDA $0725,x                 ; $15:8709: BD 25 07    ;
CODE_15870C:    AND #$F0                    ; $15:870C: 29 F0       ;
CODE_15870E:    STA $0742                   ; $15:870E: 8D 42 07    ;
CODE_158711:    CPX #$00                    ; $15:8711: E0 00       ;
CODE_158713:    BNE CODE_158730             ; $15:8713: D0 1B       ;
CODE_158715:    LDA $073B                   ; $15:8715: AD 3B 07    ;
CODE_158718:    CMP #$FF                    ; $15:8718: C9 FF       ;
CODE_15871A:    BNE CODE_158720             ; $15:871A: D0 04       ;
CODE_15871C:    LDA #$0B                    ; $15:871C: A9 0B       ;
CODE_15871E:    BRA CODE_158734             ; $15:871E: 80 14       ;

CODE_158720:    CMP #$04                    ; $15:8720: C9 04       ;
CODE_158722:    BNE CODE_158728             ; $15:8722: D0 04       ;
CODE_158724:    LDA #$08                    ; $15:8724: A9 08       ;
CODE_158726:    BRA CODE_158734             ; $15:8726: 80 0C       ;

CODE_158728:    CMP #$0C                    ; $15:8728: C9 0C       ;
CODE_15872A:    BNE CODE_158734             ; $15:872A: D0 08       ;
CODE_15872C:    LDA #$00                    ; $15:872C: A9 00       ;
CODE_15872E:    BRA CODE_158734             ; $15:872E: 80 04       ;

CODE_158730:    DEX                         ; $15:8730: CA          ;
CODE_158731:    LDA $0747,x                 ; $15:8731: BD 47 07    ;
CODE_158734:    STA $073B                   ; $15:8734: 8D 3B 07    ;
CODE_158737:    PLX                         ; $15:8737: FA          ;
CODE_158738:    LDA $073C,x                 ; $15:8738: BD 3C 07    ;
CODE_15873B:    STA $073C                   ; $15:873B: 8D 3C 07    ;
CODE_15873E:    RTL                         ; $15:873E: 6B          ;

CODE_15873F:    LDA $0725,x                 ; $15:873F: BD 25 07    ;
CODE_158742:    AND #$10                    ; $15:8742: 29 10       ;
CODE_158744:    BEQ CODE_15873E             ; $15:8744: F0 F8       ;
CODE_158746:    LDA $0725,x                 ; $15:8746: BD 25 07    ;
CODE_158749:    STA $03                     ; $15:8749: 85 03       ;
CODE_15874B:    SEC                         ; $15:874B: 38          ;
CODE_15874C:    SBC $01                     ; $15:874C: E5 01       ;
CODE_15874E:    STA $0725,x                 ; $15:874E: 9D 25 07    ;
CODE_158751:    JSL CODE_1586F1             ; $15:8751: 22 F1 86 15 ;
CODE_158755:    LDA #$0F                    ; $15:8755: A9 0F       ;
CODE_158757:    STA $E3                     ; $15:8757: 85 E3       ;
CODE_158759:    LDA #$00                    ; $15:8759: A9 00       ;
CODE_15875B:    STA $0743                   ; $15:875B: 8D 43 07    ;
CODE_15875E:    DEC $E3                     ; $15:875E: C6 E3       ;
CODE_158760:    LDA $E3                     ; $15:8760: A5 E3       ;
CODE_158762:    BPL CODE_15875E             ; $15:8762: 10 FA       ;
CODE_158764:    LDA $03                     ; $15:8764: A5 03       ;
CODE_158766:    STA $0725,x                 ; $15:8766: 9D 25 07    ;
CODE_158769:    DEC $E4                     ; $15:8769: C6 E4       ;
CODE_15876B:    JML CODE_1586F1             ; $15:876B: 5C F1 86 15 ;

CODE_15876F:    LDA $7F0800                 ; $15:876F: AF 00 08 7F ;
CODE_158773:    TAX                         ; $15:8773: AA          ;
CODE_158774:    LDA $073F                   ; $15:8774: AD 3F 07    ;
CODE_158777:    STA $C4                     ; $15:8777: 85 C4       ;
CODE_158779:    LDA $0740                   ; $15:8779: AD 40 07    ;
CODE_15877C:    STA $C5                     ; $15:877C: 85 C5       ;
CODE_15877E:    LDA $0741                   ; $15:877E: AD 41 07    ;
CODE_158781:    STA $C6                     ; $15:8781: 85 C6       ;
CODE_158783:    LDA $073B                   ; $15:8783: AD 3B 07    ;
CODE_158786:    CLC                         ; $15:8786: 18          ;
CODE_158787:    ADC #$48                    ; $15:8787: 69 48       ;
CODE_158789:    STA $7F0802,x               ; $15:8789: 9F 02 08 7F ;
CODE_15878D:    INX                         ; $15:878D: E8          ;
CODE_15878E:    LDA $073C                   ; $15:878E: AD 3C 07    ;
CODE_158791:    STA $7F0802,x               ; $15:8791: 9F 02 08 7F ;
CODE_158795:    INX                         ; $15:8795: E8          ;
CODE_158796:    LDA #$00                    ; $15:8796: A9 00       ;
CODE_158798:    STA $7F0802,x               ; $15:8798: 9F 02 08 7F ;
CODE_15879C:    INX                         ; $15:879C: E8          ;
CODE_15879D:    LDA #$40                    ; $15:879D: A9 40       ;
CODE_15879F:    STA $7F0802,x               ; $15:879F: 9F 02 08 7F ;
CODE_1587A3:    INX                         ; $15:87A3: E8          ;
CODE_1587A4:    STZ $0743                   ; $15:87A4: 9C 43 07    ;
CODE_1587A7:    LDA #$0F                    ; $15:87A7: A9 0F       ;
CODE_1587A9:    STA $E3                     ; $15:87A9: 85 E3       ;
CODE_1587AB:    LDA $0744               ; $15:87AB: AD 44 07    ; \ Map16 table into [$00]
CODE_1587AE:    STA $00                 ; $15:87AE: 85 00       ;  |
CODE_1587B0:    LDA $0745               ; $15:87B0: AD 45 07    ;  |
CODE_1587B3:    STA $01                 ; $15:87B3: 85 01       ;  |
CODE_1587B5:    LDA $0746               ; $15:87B5: AD 46 07    ;  |
CODE_1587B8:    STA $02                 ; $15:87B8: 85 02       ; /
CODE_1587BA:    LDY $0742                   ; $15:87BA: AC 42 07    ;
CODE_1587BD:    REP #$30                ; $15:87BD: C2 30       ; Accumulator and Index = 16-bit.
CODE_1587BF:    LDA [$C4],y             ; $15:87BF: B7 C4       ; \ Check if tile in Layer 3 Map16 table is #$FF...
CODE_1587C1:    AND #$00FF              ; $15:87C1: 29 FF 00    ;  |
CODE_1587C4:    CMP #$00FF              ; $15:87C4: C9 FF 00    ;  |
CODE_1587C7:    BNE CODE_1587D9         ; $15:87C7: D0 10       ; / If not, branch.
CODE_1587C9:    LDA.l DATA_15934F       ; $15:87C9: AF 4F 93 15 ; \ Load value for empty tile.
CODE_1587CD:    STA $00                 ; $15:87CD: 85 00       ;  | ($159351 is empty tile)
CODE_1587CF:    LDA #$0015              ; $15:87CF: A9 15 00    ;  |
CODE_1587D2:    STA $02                 ; $15:87D2: 85 02       ; /
CODE_1587D4:    LDY #$0000              ; $15:87D4: A0 00 00    ; Y = #$0000.
CODE_1587D7:    BRA CODE_1587DD             ; $15:87D7: 80 04       ;

CODE_1587D9:    ASL A                   ; $15:87D9: 0A          ; \ Multiply Map16 num by 8.
CODE_1587DA:    ASL A                   ; $15:87DA: 0A          ;  |
CODE_1587DB:    ASL A                   ; $15:87DB: 0A          ;  |
CODE_1587DC:    TAY                     ; $15:87DC: A8          ; / Into Y index.
CODE_1587DD:    LDA $074F                   ; $15:87DD: AD 4F 07    ;
CODE_1587E0:    AND #$00FF                  ; $15:87E0: 29 FF 00    ;
CODE_1587E3:    BEQ CODE_1587E9             ; $15:87E3: F0 04       ;
CODE_1587E5:    INY                         ; $15:87E5: C8          ;
CODE_1587E6:    INY                         ; $15:87E6: C8          ;
CODE_1587E7:    INY                         ; $15:87E7: C8          ;
CODE_1587E8:    INY                         ; $15:87E8: C8          ;
CODE_1587E9:    REP #$20                ; $15:87E9: C2 20       ; Accumulator = 16-bit.
CODE_1587EB:    LDA [$00],y                 ; $15:87EB: B7 00       ;
CODE_1587ED:    STA $7F0802,x               ; $15:87ED: 9F 02 08 7F ;
CODE_1587F1:    SEP #$20                ; $15:87F1: E2 20       ; Accumulator = 8-bit.
CODE_1587F3:    INC $0743                   ; $15:87F3: EE 43 07    ;
CODE_1587F6:    INX                         ; $15:87F6: E8          ;
CODE_1587F7:    INX                         ; $15:87F7: E8          ;
CODE_1587F8:    INY                         ; $15:87F8: C8          ;
CODE_1587F9:    INY                         ; $15:87F9: C8          ;
CODE_1587FA:    LDA $0743                   ; $15:87FA: AD 43 07    ;
CODE_1587FD:    LSR A                       ; $15:87FD: 4A          ;
CODE_1587FE:    BCS CODE_1587E9                     ; $15:87FE: B0 E9       ;
CODE_158800:    INC $0742                   ; $15:8800: EE 42 07    ;
CODE_158803:    SEP #$30                ; $15:8803: E2 30       ; Accumulator and Index = 8-bit.
CODE_158805:    LDA $0743                   ; $15:8805: AD 43 07    ;
CODE_158808:    CMP #$20                    ; $15:8808: C9 20       ;
CODE_15880A:    BCC CODE_1587AB             ; $15:880A: 90 9F       ;
CODE_15880C:    LDA #$FF                ; $15:880C: A9 FF       ; \ End upload.
CODE_15880E:    STA $7F0802,x           ; $15:880E: 9F 02 08 7F ; /
CODE_158812:    TXA                     ; $15:8812: 8A          ; \ Amount of tiles transferred...
CODE_158813:    STA $7F0800             ; $15:8813: 8F 00 08 7F ; / Into $7F0800.
CODE_158817:    LDA $074F                   ; $15:8817: AD 4F 07    ;
CODE_15881A:    EOR #$01                    ; $15:881A: 49 01       ;
CODE_15881C:    STA $074F                   ; $15:881C: 8D 4F 07    ;
CODE_15881F:    RTL                         ; $15:881F: 6B          ;

DATA_158820:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  | Free to use if hacked.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
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

DATA_158900:        db $00,$01,$02,$03,$00,$01,$03,$02      ; \ This table here...
                    db $02,$00,$01,$03,$02,$03,$00,$01      ;  | ...serves as index...
                    db $03,$00,$01,$02,$03,$02,$00,$01      ;  | ... for the pointer below.
                    db $01,$02,$03,$00,$01,$03,$02,$00      ;  | Note that the following pointer only determines the clouds right at the start of the level.
                    db $04,$05,$06,$07,$08,$09,$00,$00      ; /

PNTR_158928:        dw DATA_15893C                          ; Cloud 0 (horizontal level cloud part #1)
                    dw DATA_1589C0                          ; Cloud 1 (horizontal level cloud part #2)
                    dw DATA_158A5C                          ; Cloud 2 (horizontal level cloud part #3)
                    dw DATA_158AED                          ; Cloud 3 (horizontal level cloud part #4)
                    dw DATA_158BBF                          ; Cloud 4 (upper part of vertical level cloud)
                    dw DATA_158CB1                          ; Cloud 5 (cloud specifically for the first room of 7-1, also used as part of regular vertical level cloud)
                    dw DATA_158DA3                          ; Cloud 6 (part #3 of regular vertical level cloud)
                    dw DATA_158E95                          ; Cloud 7 (part #4 of regular vertical level cloud)
                    dw DATA_158F87                          ; Cloud 8 (part #5 of regular vertical level cloud)
                    dw DATA_159079                          ; Cloud 9 (part #6 of regular vertical level cloud. This one is so far down that only really long vertical levels feature it, such as in 6-3)
          
DATA_15893C:        db $53,$9C,$00,$00,$00,$00,$00,$00      ; \ First two bytes of each image are header.
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  | Their format is as such:
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  | YYYYXXXX yyyyxxxx.
                    db $00,$00,$01,$04,$00,$00,$00,$01      ;  | YYYY holds the Y-coordinate at which each image starts.
                    db $00,$00,$00,$01,$07,$09,$04,$00      ;  | XXXX holds the X-coordinate.
                    db $01,$07,$00,$00,$00,$03,$08,$15      ;  | yyyy holds the value to determine the height of each image, minus 1.
                    db $09,$04,$02,$15,$00,$01,$04,$01      ;  | xxxx holds the value to determine the width of each image, minus 1.
                    db $07,$15,$15,$09,$07,$15,$01,$07      ;  | The length of each table's tilemap can be calculated with a simple product.
                    db $09,$07,$15,$15,$15,$15,$15,$15      ;  | Multiply xxxx+1 with yyyy+1 and you will get that length.
                    db $02,$15,$15,$15,$15,$15,$15,$15      ;  | In this case: xxxx+1 = $D (or: 13), yyyy+1 = $A (or: 10).
                    db $15,$15,$03,$12,$08,$15,$15,$15      ;  | 130 tiles to be uploaded. 1 byte per Map16 tile.
                    db $15,$15,$15,$15,$00,$01,$07,$15      ;  | The header is always 2 bytes, so the entire size here is 132 bytes.
                    db $15,$15,$15,$15,$15,$15,$01,$07      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$15      ;  | This here is the first part of the horizontal cloud images.
                    db $02,$15,$15,$15,$15,$15,$15,$15      ;  | Starts at Y pos 5, X pos 3. A height of $A/10 blocks, a width of $D/13 blocks.
                    db $15,$15,$03,$08,$15,$15,$15,$15      ;  |
                    db $15,$15,$15,$15                      ; /

DATA_1589C0:        db $40,$AD,$00,$00,$03,$08,$15,$15      ; \ This here is the second part...
                    db $15,$15,$15,$15,$15,$00,$00,$01      ;  | ...of the cloud images that are used in horizontal levels...
                    db $07,$15,$15,$15,$15,$15,$15,$15      ;  | ...and vary seemingly randomly depending on when you enter the level.
                    db $00,$01,$07,$15,$15,$15,$15,$15      ;  | Starts at Y pos: 4
                    db $15,$15,$15,$00,$02,$15,$15,$15      ;  | Starts at X pos: 0
                    db $15,$15,$15,$15,$15,$15,$01,$07      ;  | Height: $B/11
                    db $15,$15,$15,$15,$15,$15,$15,$15      ;  | Width: $E/14
                    db $15,$02,$15,$15,$15,$15,$15,$15      ;  | Total length of tilemap data: 154.
                    db $15,$15,$15,$15,$03,$12,$08,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$00      ;  |
                    db $00,$03,$08,$15,$15,$15,$15,$15      ;  |
                    db $15,$15,$00,$00,$00,$03,$08,$0A      ;  |
                    db $08,$15,$15,$15,$15,$00,$00,$00      ;  |
                    db $00,$03,$06,$03,$12,$08,$15,$15      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $03,$08,$15,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$03,$08,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $02,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$03                      ; /

DATA_158A5C:        db $41,$AC,$00,$00,$00,$00,$00,$00      ; \ The third part of these horizontal level cloud images.
                    db $01,$04,$00,$00,$00,$00,$00,$00      ;  | Starts at Y pos: 4
                    db $00,$00,$00,$02,$15,$04,$01,$04      ;  | Starts at X pos: 1
                    db $01,$04,$01,$11,$04,$01,$07,$15      ;  | Height: $B/11
                    db $09,$07,$09,$03,$09,$07,$15,$09      ;  | Width: $D/13
                    db $07,$15,$15,$15,$15,$15,$00,$03      ;  | Total length of tilemap data: 143
                    db $08,$15,$15,$15,$15,$15,$15,$15      ;  |
                    db $15,$00,$01,$07,$15,$15,$15,$15      ;  |
                    db $15,$15,$15,$15,$00,$02,$0A,$08      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$00      ;  |
                    db $03,$06,$02,$15,$15,$15,$15,$0A      ;  |
                    db $08,$15,$00,$00,$00,$03,$08,$0A      ;  |
                    db $08,$0A,$06,$02,$15,$00,$00,$00      ;  |
                    db $00,$03,$06,$03,$06,$00,$03,$08      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$02,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$03,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00                                  ; /

DATA_158AED:        db $20,$CF,$00,$00,$00,$00,$00,$00      ; \ The fourth part and last of these regular horizontal level cloud images.
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  | Starts at Y pos: 2
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  | Starts at X pos: 0
                    db $00,$00,$00,$01,$00,$00,$01,$11      ;  | Height: $D/13
                    db $04,$00,$00,$00,$00,$01,$04,$01      ;  | Width: $10/16
                    db $07,$00,$00,$02,$15,$09,$04,$01      ;  | Total length of tilemap data: 208
                    db $04,$01,$07,$09,$07,$15,$00,$01      ;  |
                    db $07,$15,$15,$09,$07,$09,$07,$15      ;  |
                    db $15,$15,$15,$01,$07,$15,$15,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$15      ;  |
                    db $03,$08,$0A,$08,$15,$15,$15,$15      ;  |
                    db $15,$15,$15,$15,$15,$00,$03,$06      ;  |
                    db $03,$08,$15,$15,$15,$15,$15,$15      ;  |
                    db $15,$15,$00,$00,$00,$00,$03,$08      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$00      ;  |
                    db $00,$00,$00,$01,$07,$15,$15,$15      ;  |
                    db $15,$15,$15,$15,$00,$00,$00,$00      ;  |
                    db $02,$15,$15,$15,$15,$15,$15,$15      ;  |
                    db $15,$00,$00,$00,$01,$07,$15,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$00,$00      ;  |
                    db $00,$02,$15,$15,$15,$15,$0A,$08      ;  |
                    db $15,$15,$15,$00,$00,$00,$03,$08      ;  |
                    db $0A,$08,$0A,$06,$03,$08,$15,$15      ;  |
                    db $00,$00,$00,$00,$03,$06,$03,$06      ;  |
                    db $00,$00,$03,$08,$0A,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $03,$06                              ; /

DATA_158BBF:        db $00,$EF,$00,$00,$00,$00,$00,$00      ; \ Upper part of the vertical level cloud image.
                    db $00,$00,$03,$08,$15,$15,$15,$15      ;  | Starts at Y pos: 0
                    db $15,$00,$00,$00,$00,$00,$00,$00      ;  | Starts at X pos: 0
                    db $00,$00,$03,$08,$15,$15,$15,$0B      ;  | Height: $F/15
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  | Width: $10/16
                    db $00,$00,$02,$15,$15,$15,$0C,$00      ;  | Total length of tilemap data: 240
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $01,$07,$15,$15,$15,$0D,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$02      ;  |
                    db $15,$15,$15,$15,$15,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$01,$11,$07,$15      ;  |
                    db $0B,$13,$0E,$0B,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$02,$15,$15,$15,$0C      ;  |
                    db $15,$09,$07,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$03,$08,$15,$0B,$07,$15      ;  |
                    db $15,$15,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$03,$0B,$07,$15,$15,$15      ;  |
                    db $15,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$02,$15,$15,$15,$15,$15      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$03,$08,$15,$15,$15,$15,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$03,$12,$08,$15,$15,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$01,$0D,$08,$15,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$01,$04,$01      ;  |
                    db $07,$15,$0C,$15,$00,$00,$00,$00      ;  |
                    db $00,$00,$01,$11,$07,$09,$07,$15      ;  |
                    db $15,$0C,$15,$00,$00,$00,$00,$00      ;  |
                    db $00,$02,$15,$15,$15,$15,$15,$0B      ;  |
                    db $07,$15                              ; /

DATA_158CB1:        db $00,$EF,$0B,$0E,$15,$15,$0B,$15      ; \ Second part of the vertical level cloud image.
                    db $15,$0B,$15,$15,$15,$15,$0C,$15      ;  | This is also used as the starting image of...
                    db $15,$07,$09,$0E,$0B,$07,$15,$0B      ;  | ... the very first room in 7-1.
                    db $07,$15,$15,$15,$15,$0D,$15,$15      ;  | Starts at Y pos: 0
                    db $15,$15,$09,$07,$15,$15,$0C,$15      ;  | Starts at X pos: 0
                    db $15,$15,$15,$15,$15,$0D,$15,$08      ;  | Height: $F/15
                    db $15,$15,$15,$15,$15,$0D,$08,$15      ;  | Width: $10/16
                    db $15,$15,$15,$15,$15,$0C,$0C,$15      ;  | Total length of tilemap data: 240
                    db $15,$15,$15,$15,$15,$0C,$15,$15      ;  |
                    db $15,$15,$15,$0B,$07,$07,$15,$15      ;  |
                    db $0B,$13,$0E,$0B,$07,$15,$15,$15      ;  |
                    db $15,$15,$0C,$15,$15,$15,$15,$0C      ;  |
                    db $15,$09,$07,$15,$15,$15,$15,$15      ;  |
                    db $0B,$15,$15,$15,$15,$15,$0D,$08      ;  |
                    db $15,$15,$15,$15,$15,$15,$0B,$07      ;  |
                    db $15,$15,$15,$15,$15,$15,$0C,$15      ;  |
                    db $15,$15,$15,$15,$0B,$07,$15,$15      ;  |
                    db $0B,$15,$15,$15,$0B,$15,$15,$15      ;  |
                    db $15,$15,$15,$0C,$15,$15,$15,$0C      ;  |
                    db $15,$15,$15,$0C,$15,$15,$15,$15      ;  |
                    db $15,$15,$0D,$08,$15,$0B,$0D,$15      ;  |
                    db $15,$15,$0D,$08,$0A,$08,$15,$15      ;  |
                    db $15,$15,$0D,$0B,$15,$15,$15,$15      ;  |
                    db $15,$15,$0D,$10,$0D,$08,$15,$15      ;  |
                    db $15,$0B,$07,$15,$15,$15,$15,$15      ;  |
                    db $15,$15,$0C,$15,$07,$15,$15,$0B      ;  |
                    db $07,$15,$15,$15,$15,$15,$15,$15      ;  |
                    db $15,$0C,$15,$15,$15,$15,$0C,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$0B      ;  |
                    db $07,$15,$15,$15,$0B,$07,$15,$15      ;  |
                    db $15,$15                              ; /

DATA_158DA3:        db $00,$EF,$15,$0B,$0E,$15,$15,$15      ; \ Third part of the vertical level cloud image.
                    db $15,$15,$15,$15,$0D,$08,$15,$15      ;  | Starts at Y pos: 0
                    db $15,$0B,$07,$09,$0E,$15,$15,$15      ;  | Starts at X pos: 0
                    db $15,$15,$15,$0B,$0D,$08,$15,$15      ;  | Height: $F/15
                    db $0C,$15,$15,$0F,$15,$15,$15,$0B      ;  | Width: $10/16
                    db $0E,$0B,$07,$15,$0C,$15,$15,$0D      ;  | Total length of tilemap data: 240
                    db $08,$15,$09,$0E,$15,$0B,$07,$09      ;  |
                    db $15,$15,$0B,$07,$15,$15,$15,$0C      ;  |
                    db $15,$15,$0B,$13,$07,$15,$15,$15      ;  |
                    db $15,$0C,$15,$15,$15,$0B,$07,$15      ;  |
                    db $15,$0C,$15,$15,$15,$15,$0B,$13      ;  |
                    db $07,$15,$0B,$13,$0D,$15,$15,$15      ;  |
                    db $0D,$08,$15,$15,$15,$0C,$15,$15      ;  |
                    db $15,$0C,$15,$0B,$15,$15,$15,$15      ;  |
                    db $0D,$15,$15,$15,$0D,$08,$15,$0B      ;  |
                    db $07,$15,$07,$15,$15,$15,$15,$15      ;  |
                    db $0C,$15,$15,$15,$0D,$0B,$07,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$0B,$15      ;  |
                    db $15,$15,$15,$15,$0C,$15,$15,$15      ;  |
                    db $08,$15,$15,$15,$15,$0C,$15,$15      ;  |
                    db $15,$15,$15,$0D,$08,$15,$15,$07      ;  |
                    db $15,$15,$15,$15,$0D,$08,$0A,$08      ;  |
                    db $15,$15,$15,$0D,$14,$08,$15,$15      ;  |
                    db $15,$15,$15,$15,$0D,$10,$0D,$08      ;  |
                    db $15,$15,$0B,$07,$0D,$15,$15,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$0C,$15      ;  |
                    db $0B,$07,$15,$15,$15,$15,$15,$15      ;  |
                    db $15,$0B,$0E,$15,$15,$0C,$15,$0C      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$15      ;  |
                    db $0C,$0F,$15,$0B,$07,$0B,$07,$15      ;  |
                    db $15,$0B                              ; /

DATA_158E95:        db $00,$EF,$15,$15,$0B,$0E,$15,$15      ; \ Fourth part of the vertical level cloud image.
                    db $0D,$08,$15,$15,$15,$15,$15,$0A      ;  | Starts at Y pos: 0
                    db $10,$15,$0B,$07,$09,$0E,$15,$15      ;  | Starts at X pos: 0
                    db $0D,$08,$15,$15,$15,$0A,$10,$0D      ;  | Height: $F/15
                    db $15,$0C,$15,$15,$0F,$15,$15,$15      ;  | Width: $10/16
                    db $0C,$15,$15,$15,$0F,$15,$15,$15      ;  | Total length of tilemap data: 240
                    db $0D,$08,$15,$09,$0E,$15,$0B,$0D      ;  |
                    db $08,$15,$15,$09,$0E,$15,$15,$15      ;  |
                    db $0C,$15,$15,$0B,$13,$15,$15,$0D      ;  |
                    db $08,$15,$15,$0F,$15,$0E,$0B,$07      ;  |
                    db $15,$0B,$07,$15,$15,$15,$15,$0D      ;  |
                    db $08,$0A,$10,$15,$09,$07,$15,$15      ;  |
                    db $0C,$15,$15,$15,$15,$15,$15,$0D      ;  |
                    db $10,$15,$0B,$15,$15,$15,$0B,$07      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$15      ;  |
                    db $0B,$07,$15,$15,$15,$0D,$08,$15      ;  |
                    db $15,$15,$0B,$0E,$15,$15,$0B,$07      ;  |
                    db $15,$15,$15,$15,$15,$0D,$08,$15      ;  |
                    db $15,$0C,$0F,$15,$15,$0C,$15,$15      ;  |
                    db $15,$15,$15,$15,$15,$0C,$15,$15      ;  |
                    db $0D,$10,$15,$15,$0D,$08,$15,$15      ;  |
                    db $15,$15,$15,$15,$0D,$0B,$0E,$15      ;  |
                    db $15,$15,$15,$15,$0D,$08,$08,$15      ;  |
                    db $15,$15,$15,$0B,$15,$09,$0E,$15      ;  |
                    db $15,$15,$15,$0B,$0D,$0C,$15,$15      ;  |
                    db $15,$15,$0C,$15,$15,$0F,$15,$15      ;  |
                    db $15,$0B,$07,$15,$0C,$15,$15,$15      ;  |
                    db $15,$0C,$15,$15,$09,$0E,$15,$15      ;  |
                    db $0C,$15,$0B,$07,$15,$15,$15,$0B      ;  |
                    db $07,$15,$15,$0A,$10,$15,$0B,$07      ;  |
                    db $15,$0C                              ; /

DATA_158F87:        db $00,$EF,$15,$15,$15,$0B,$0E,$15      ; \ Fifth part of the vertical level cloud image.
                    db $15,$0B,$15,$15,$0B,$15,$15,$15      ;  | Starts at Y pos: 0
                    db $15,$15,$15,$15,$0C,$09,$0E,$0B      ;  | Starts at X pos: 0
                    db $07,$15,$0B,$07,$15,$15,$15,$15      ;  | Height: $F/15
                    db $0D,$15,$0B,$07,$15,$09,$07,$15      ;  | Width: $10/16
                    db $15,$0C,$15,$15,$15,$15,$15,$15      ;  | Total length of tilemap data: 240
                    db $0C,$0C,$15,$15,$15,$15,$15,$15      ;  |
                    db $0D,$08,$15,$15,$15,$15,$0B,$15      ;  |
                    db $0D,$08,$15,$15,$15,$15,$15,$15      ;  |
                    db $0C,$15,$15,$15,$15,$0C,$15,$0B      ;  |
                    db $07,$15,$15,$0B,$13,$0E,$0B,$07      ;  |
                    db $15,$15,$15,$15,$15,$15,$0C,$15      ;  |
                    db $15,$15,$0C,$15,$09,$07,$15,$15      ;  |
                    db $15,$15,$15,$15,$0B,$07,$15,$15      ;  |
                    db $15,$0D,$08,$15,$15,$15,$15,$15      ;  |
                    db $15,$0B,$15,$0C,$15,$15,$15,$15      ;  |
                    db $15,$0C,$15,$15,$15,$15,$15,$0B      ;  |
                    db $07,$15,$0D,$08,$15,$15,$15,$0B      ;  |
                    db $15,$15,$15,$15,$15,$15,$0C,$15      ;  |
                    db $15,$15,$0D,$08,$15,$15,$0C,$15      ;  |
                    db $15,$15,$15,$15,$15,$0D,$08,$15      ;  |
                    db $15,$0B,$15,$15,$15,$0D,$08,$0A      ;  |
                    db $08,$15,$15,$15,$15,$0D,$08,$0B      ;  |
                    db $07,$15,$15,$15,$15,$0D,$10,$0D      ;  |
                    db $08,$15,$15,$15,$0B,$0B,$0C,$15      ;  |
                    db $15,$15,$15,$15,$15,$0C,$15,$07      ;  |
                    db $15,$15,$0B,$07,$07,$0D,$08,$15      ;  |
                    db $15,$15,$15,$15,$0C,$15,$15,$15      ;  |
                    db $15,$0C,$15,$15,$0B,$07,$15,$15      ;  |
                    db $15,$15,$0B,$07,$15,$15,$15,$0B      ;  |
                    db $07,$15                              ; /

DATA_159079:        db $00,$EF,$0C,$15,$15,$15,$0B,$0E      ; \ Sixth, last and bottom-most part of the vertical level cloud image.
                    db $15,$15,$15,$15,$15,$15,$15,$0D      ;  | This image is so deep down that few rooms feature it at all.
                    db $08,$0D,$15,$15,$0B,$07,$09,$0E      ;  | One of the rooms (if more than one) that do feature it...
                    db $15,$15,$15,$15,$15,$15,$0B,$0D      ;  | ...include the big vertical room in 6-3, as you climb up your way to the pyramid high in the sky.
                    db $15,$0D,$15,$0C,$15,$15,$0F,$15      ;  | However, even in a room this big, only the upper part of this image is visible.
                    db $15,$15,$0B,$0E,$0B,$07,$15,$15      ;  | Starts at Y pos: 0
                    db $15,$0C,$0D,$08,$15,$09,$0E,$15      ;  | Starts at X pos: 0
                    db $0B,$07,$09,$15,$15,$0B,$15,$0B      ;  | Height: $F/15
                    db $07,$15,$0C,$15,$15,$0B,$13,$07      ;  | Width: $10/16
                    db $15,$15,$15,$15,$0C,$15,$0C,$15      ;  | Total length of tilemap data: 240
                    db $0B,$07,$15,$15,$0C,$15,$15,$15      ;  |
                    db $15,$0B,$13,$07,$0B,$15,$15,$0D      ;  |
                    db $15,$15,$15,$0D,$08,$15,$15,$15      ;  |
                    db $0C,$15,$15,$07,$15,$15,$0B,$15      ;  |
                    db $15,$15,$15,$0D,$15,$15,$15,$0D      ;  |
                    db $08,$15,$15,$15,$0B,$07,$15,$15      ;  |
                    db $15,$15,$15,$0C,$15,$15,$15,$0D      ;  |
                    db $0B,$15,$15,$0C,$15,$15,$15,$15      ;  |
                    db $15,$0B,$15,$15,$15,$15,$15,$0C      ;  |
                    db $15,$0B,$0D,$08,$15,$15,$15,$15      ;  |
                    db $0C,$15,$15,$15,$15,$15,$0D,$0B      ;  |
                    db $15,$15,$07,$15,$15,$15,$15,$0D      ;  |
                    db $08,$0A,$08,$15,$15,$15,$07,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$0D      ;  |
                    db $10,$0D,$08,$15,$15,$15,$15,$15      ;  |
                    db $15,$15,$15,$15,$15,$15,$15,$15      ;  |
                    db $15,$0C,$15,$0B,$15,$15,$15,$15      ;  |
                    db $15,$15,$15,$15,$0B,$0E,$15,$15      ;  |
                    db $0C,$15,$0C,$15,$15,$15,$15,$15      ;  |
                    db $15,$15,$15,$0C,$0F,$15,$0B,$07      ;  |
                    db $0B,$07                              ; /

DATA_15916B:        db $00,$00,$00,$01,$01,$00,$00,$00      ; \
                    db $00,$00,$00,$01,$00,$00,$00,$00      ;  | This table here determines...
                    db $00,$00,$00,$00,$00,$00,$01,$01      ;  | ...per room in each level (10 rooms in 20 levels)...
                    db $01,$00,$00,$00,$00,$00,$00,$01      ;  | ...if the Layer 3 Map16 table should hold cloud tiles...
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  | ...or door-tiles.
                    db $01,$00,$01,$00,$00,$00,$00,$00      ;  | The former set can technically make use of the door tiles by using tiles 1A-22...
                    db $00,$00,$00,$00,$01,$01,$00,$00      ;  | ..., even though it never seems to have been done in the original SMB2,...
                    db $01,$00,$00,$00,$00,$00,$01,$00      ;  | ... but the latter set cannot make use of the cloud tiles.
                    db $01,$00,$00,$00,$00,$00,$00,$00      ;  | As a result, where the door tiles are situated at 1A-22 in the first set...
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  | ... these tiles are 00-08 in the second set.
                    db $01,$00,$01,$00,$00,$00,$00,$00      ;  |
                    db $01,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $01,$00,$00,$00,$00,$00,$01,$00      ;  |
                    db $00,$00,$00,$00,$00,$01,$00,$00      ;  |
                    db $00,$01,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$01      ;  |
                    db $00,$01,$00,$00,$00,$00,$00,$01      ;  |
                    db $01,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $01,$00,$01,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$01,$00,$00,$01      ;  |
                    db $01,$00,$00,$00,$00,$00,$00,$00      ;  |
                    db $00,$00,$00,$00,$00,$00,$00,$01      ;  |
                    db $00,$00,$00,$01,$00,$00,$00,$00      ; /

PNTR_159233:        dw DATA_159237                          ; \ "Cloud" Map16 table (1A-22 are overlap with 00-08 of the following table)
                    dw DATA_159307                          ; / "Door" Map16 table (used for door light effects)

DATA_159237:        db $3F,$01,$3F,$01,$3F,$01,$3F,$01      ; Tile 00. (Layer 3 Map16 table).
                    db $00,$05,$01,$05,$10,$05,$13,$05      ; Tile 01.
                    db $02,$05,$03,$05,$13,$05,$13,$05      ; Tile 02
                    db $04,$05,$05,$05,$13,$05,$15,$05      ; Tile 03
                    db $20,$05,$13,$05,$30,$05,$31,$05      ; Tile 04
                    db $13,$05,$13,$05,$32,$05,$33,$05      ; Tile 05
                    db $13,$05,$25,$05,$34,$05,$35,$05      ; Tile 06
                    db $21,$05,$13,$05,$13,$05,$13,$05      ; Tile 07
                    db $13,$05,$11,$05,$13,$05,$13,$05      ; Tile 08
                    db $13,$05,$13,$05,$22,$05,$13,$05      ; Tile 09
                    db $13,$05,$13,$05,$13,$05,$12,$05      ; Tile 0A
                    db $06,$05,$07,$05,$16,$05,$13,$05      ; Tile 0B
                    db $08,$05,$09,$05,$13,$05,$13,$05      ; Tile 0C
                    db $0A,$05,$0B,$05,$13,$05,$1B,$05      ; Tile 0D
                    db $26,$05,$13,$05,$36,$05,$37,$05      ; Tile 0E
                    db $13,$05,$13,$05,$38,$05,$39,$05      ; Tile 0F
                    db $13,$05,$2B,$05,$3A,$05,$3B,$05      ; Tile 10
                    db $14,$05,$13,$05,$24,$05,$13,$05      ; Tile 11
                    db $13,$05,$17,$05,$13,$05,$27,$05      ; Tile 12
                    db $18,$05,$13,$05,$28,$05,$13,$05      ; Tile 13
                    db $13,$05,$19,$05,$13,$05,$29,$05      ; Tile 14
                    db $13,$05,$13,$05,$13,$05,$13,$05      ; Tile 15
                    db $0C,$1D,$3F,$01,$3F,$01,$3F,$01      ; Tile 16
                    db $3F,$01,$3F,$01,$0D,$1D,$3F,$01      ; Tile 17
                    db $3F,$01,$3F,$01,$3F,$01,$0E,$1D      ; Tile 18
                    db $3F,$01,$0F,$1D,$3F,$01,$3F,$01      ; Tile 19

DATA_159307:        db $3C,$21,$3C,$21,$3C,$21,$3C,$21      ; Tile 1A/00
                    db $2C,$21,$3F,$21,$3C,$21,$2C,$21      ; Tile 1B/01
                    db $3C,$21,$3C,$21,$3C,$21,$3C,$21      ; Tile 1C/02
                    db $3C,$21,$3C,$21,$3C,$21,$3C,$21      ; Tile 1D/03
                    db $3C,$21,$3C,$21,$3C,$21,$3C,$21      ; Tile 1E/04
                    db $3F,$21,$2C,$61,$2C,$61,$3C,$61      ; Tile 1F/05
                    db $3C,$61,$3C,$21,$3C,$21,$3C,$21      ; Tile 20/06
                    db $1C,$21,$3C,$21,$3C,$21,$3C,$21      ; Tile 21/07
                    db $3C,$21,$1D,$21,$3C,$21,$3C,$21      ; Tile 22/08

DATA_15934F:        dw $9351                                ; Pointer to the below table.

DATA_159351:        db $3F,$01,$3F,$01,$3F,$01,$3F,$01      ; Empty tile.

DATA_159359:        db $07,$08,$01,$FF,$FF,$FF,$02,$02
                    db $03,$01,$FF,$FF,$02,$02,$02,$03
                    db $01,$FF,$02,$02,$02,$02,$03,$01

PNTR_159371:        dw DATA_15937B                          ; Layer 3 stars placement 0
                    dw DATA_159394                          ; Layer 3 stars placement 1
                    dw DATA_1593A9                          ; Layer 3 stars placement 2
                    dw DATA_1593C6                          ; Layer 3 stars placement 3
                    dw DATA_1593DF                          ; Layer 3 stars placement 4

DATA_15937B:        db $10,$19,$1B,$19,$1E,$19,$24,$16      ; \ The format is simple.
                    db $2E,$18,$38,$18,$3E,$16,$52,$17      ;  | Every star = 2 bytes. First byte: yyyyxxxx, denotes position.
                    db $55,$19,$5C,$17,$70,$19,$A2,$18      ;  | Second byte - tile num in Layer 3 Map16. Table is terminated with an $FF byte.
                    db $FF                                  ; / This table here places 12 stars on screen.

DATA_159394:        db $13,$17,$2A,$16,$31,$18,$4D,$19      ; \
                    db $68,$19,$6B,$17,$6D,$18,$8C,$16      ;  | This table here places 10 stars on screen.
                    db $BC,$19,$CE,$17,$FF                  ; /

DATA_1593A9:        db $0D,$16,$23,$19,$30,$17,$35,$18      ; \
                    db $38,$16,$5C,$17,$72,$16,$7B,$16      ;  | This table here places 14 stars on screen.
                    db $80,$19,$8B,$19,$BC,$18,$BF,$19      ;  |
                    db $D0,$17,$EE,$19,$FF                  ; /

DATA_1593C6:        db $04,$19,$1E,$18,$20,$19,$2A,$16      ; \
                    db $39,$17,$3C,$18,$3E,$19,$71,$18      ;  | This table here places 12 stars on screen.
                    db $90,$16,$AF,$18,$BE,$17,$E0,$17      ;  |
                    db $FF                                  ; /

DATA_1593DF:        db $20,$19,$71,$18,$43,$16,$14,$19      ; \
                    db $56,$17,$39,$17,$2A,$16,$5B,$18      ;  | This table here places 10 stars on screen.
                    db $8C,$16,$4E,$19,$FF                  ; /

DATA_1593F4:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF                      ; /

CODE_159400:    LDA $0533               ; $15:9400: AD 33 05    ;
CODE_159403:    CMP #$0E                    ; $15:9403: C9 0E       ;
CODE_159405:    BNE CODE_159411             ; $15:9405: D0 0A       ;
CODE_159407:    LDA $0534                   ; $15:9407: AD 34 05    ;
CODE_15940A:    CMP #$03                    ; $15:940A: C9 03       ;
CODE_15940C:    BNE CODE_159411             ; $15:940C: D0 03       ;
CODE_15940E:    JMP CODE_159E65             ; $15:940E: 4C 65 9E    ;

CODE_159411:    STZ $0542                   ; $15:9411: 9C 42 05    ;
CODE_159414:    LDA #$FF                    ; $15:9414: A9 FF       ;
CODE_159416:    STA $0756                   ; $15:9416: 8D 56 07    ;
CODE_159419:    STZ $09                     ; $15:9419: 64 09       ;
CODE_15941B:    STZ $0757                   ; $15:941B: 9C 57 07    ;
CODE_15941E:    LDA ($D9),y                 ; $15:941E: B1 D9       ;
CODE_159420:    CMP #$FF                    ; $15:9420: C9 FF       ;
CODE_159422:    BNE CODE_159433             ; $15:9422: D0 0F       ;
CODE_159424:    LDA $0541                   ; $15:9424: AD 41 05    ;
CODE_159427:    INC A                       ; $15:9427: 1A          ;
CODE_159428:    INC A                       ; $15:9428: 1A          ;
CODE_159429:    STA $0542                   ; $15:9429: 8D 42 05    ;
CODE_15942C:    STZ $0E                     ; $15:942C: 64 0E       ;
CODE_15942E:    STZ $02C8                   ; $15:942E: 9C C8 02    ;
CODE_159431:    BRA CODE_159479             ; $15:9431: 80 46       ;

CODE_159433:    LDA ($D9),y                 ; $15:9433: B1 D9       ;
CODE_159435:    AND #$F0                    ; $15:9435: 29 F0       ;
CODE_159437:    BEQ CODE_15945D             ; $15:9437: F0 24       ;
CODE_159439:    CMP #$F0                    ; $15:9439: C9 F0       ;
CODE_15943B:    BNE CODE_159461             ; $15:943B: D0 24       ;
CODE_15943D:    STZ $02C8                   ; $15:943D: 9C C8 02    ;
CODE_159440:    LDA ($D9),y                 ; $15:9440: B1 D9       ;
CODE_159442:    AND #$0F                    ; $15:9442: 29 0F       ;
CODE_159444:    STY $0F                     ; $15:9444: 84 0F       ;
CODE_159446:    JSL CODE_12F69F             ; $15:9446: 22 9F F6 12 ;
CODE_15944A:    LDY $0F                     ; $15:944A: A4 0F       ;
CODE_15944C:    LDA ($D9),y                 ; $15:944C: B1 D9       ;
CODE_15944E:    AND #$0F                    ; $15:944E: 29 0F       ;
CODE_159450:    CMP #$02                    ; $15:9450: C9 02       ;
CODE_159452:    BCC CODE_159479             ; $15:9452: 90 25       ;
CODE_159454:    CMP #$06                    ; $15:9454: C9 06       ;
CODE_159456:    BEQ CODE_15945D             ; $15:9456: F0 05       ;
CODE_159458:    CMP #$05                    ; $15:9458: C9 05       ;
CODE_15945A:    BNE CODE_15945E             ; $15:945A: D0 02       ;
CODE_15945C:    INY                         ; $15:945C: C8          ;
CODE_15945D:    INY                         ; $15:945D: C8          ;
CODE_15945E:    INY                         ; $15:945E: C8          ;
CODE_15945F:    BRA CODE_15941B             ; $15:945F: 80 BA       ;

CODE_159461:    CLC                         ; $15:9461: 18          ;
CODE_159462:    ADC $09                     ; $15:9462: 65 09       ;
CODE_159464:    BCC CODE_15946A             ; $15:9464: 90 04       ;
CODE_159466:    ADC #$0F                    ; $15:9466: 69 0F       ;
CODE_159468:    BRA CODE_159470             ; $15:9468: 80 06       ;

CODE_15946A:    CMP #$F0                    ; $15:946A: C9 F0       ;
CODE_15946C:    BNE CODE_159473             ; $15:946C: D0 05       ;
CODE_15946E:    LDA #$00                    ; $15:946E: A9 00       ;
CODE_159470:    INC $0542                   ; $15:9470: EE 42 05    ;
CODE_159473:    STA $09                     ; $15:9473: 85 09       ;
CODE_159475:    INY                         ; $15:9475: C8          ;
CODE_159476:    INY                         ; $15:9476: C8          ;
CODE_159477:    BRA CODE_15941B             ; $15:9477: 80 A2       ;

CODE_159479:    LDA $E5                     ; $15:9479: A5 E5       ;
CODE_15947B:    INC A                       ; $15:947B: 1A          ;
CODE_15947C:    CMP $0E                     ; $15:947C: C5 0E       ;
CODE_15947E:    BCC CODE_159489             ; $15:947E: 90 09       ;
CODE_159480:    LDA ($D9),y                 ; $15:9480: B1 D9       ;
CODE_159482:    CMP #$FF                    ; $15:9482: C9 FF       ;
CODE_159484:    BEQ CODE_159489             ; $15:9484: F0 03       ;
CODE_159486:    JSR CODE_159691             ; $15:9486: 20 91 96    ;
CODE_159489:    JSR CODE_1594EC             ; $15:9489: 20 EC 94    ;
CODE_15948C:    JSR CODE_159995             ; $15:948C: 20 95 99    ;
CODE_15948F:    LDA $0764                   ; $15:948F: AD 64 07    ;
CODE_159492:    BEQ CODE_15949A             ; $15:9492: F0 06       ;
CODE_159494:    JSL CODE_12F7CE             ; $15:9494: 22 CE F7 12 ;
CODE_159498:    BRA CODE_1594A6             ; $15:9498: 80 0C       ;

CODE_15949A:    LDA $EB                     ; $15:949A: A5 EB       ;
CODE_15949C:    BEQ CODE_1594A3             ; $15:949C: F0 05       ;
CODE_15949E:    JSR CODE_159517             ; $15:949E: 20 17 95    ;
CODE_1594A1:    BRA CODE_1594A6             ; $15:94A1: 80 03       ;

CODE_1594A3:    JSR CODE_1599F1             ; $15:94A3: 20 F1 99    ;
CODE_1594A6:    STZ $0757                   ; $15:94A6: 9C 57 07    ;
CODE_1594A9:    LDA $EB                     ; $15:94A9: A5 EB       ;
CODE_1594AB:    BEQ CODE_1594BB             ; $15:94AB: F0 0E       ;
CODE_1594AD:    INC $E5                     ; $15:94AD: E6 E5       ;
CODE_1594AF:    LDA $E5                     ; $15:94AF: A5 E5       ;
CODE_1594B1:    CMP #$10                    ; $15:94B1: C9 10       ;
CODE_1594B3:    BNE CODE_1594C0             ; $15:94B3: D0 0B       ;
CODE_1594B5:    INC $E9                     ; $15:94B5: E6 E9       ;
CODE_1594B7:    STZ $E5                     ; $15:94B7: 64 E5       ;
CODE_1594B9:    BRA CODE_1594C0             ; $15:94B9: 80 05       ;

CODE_1594BB:    LDA #$10                    ; $15:94BB: A9 10       ;
CODE_1594BD:    JSR CODE_15967D             ; $15:94BD: 20 7D 96    ;
CODE_1594C0:    LDA $E9                     ; $15:94C0: A5 E9       ;
CODE_1594C2:    CMP $0542                   ; $15:94C2: CD 42 05    ;
CODE_1594C5:    BNE CODE_159489             ; $15:94C5: D0 C2       ;
CODE_1594C7:    LDA $EB                     ; $15:94C7: A5 EB       ;
CODE_1594C9:    BEQ CODE_1594D3             ; $15:94C9: F0 08       ;
CODE_1594CB:    LDA $E5                     ; $15:94CB: A5 E5       ;
CODE_1594CD:    CMP $0E                     ; $15:94CD: C5 0E       ;
CODE_1594CF:    BCC CODE_159479             ; $15:94CF: 90 A8       ;
CODE_1594D1:    BCS CODE_1594D9                     ; $15:94D1: B0 06       ;
CODE_1594D3:    LDA $E6                     ; $15:94D3: A5 E6       ;
CODE_1594D5:    CMP $0E                     ; $15:94D5: C5 0E       ;
CODE_1594D7:    BCC CODE_159479             ; $15:94D7: 90 A0       ;
CODE_1594D9:    LDA ($D9),y                 ; $15:94D9: B1 D9       ;
CODE_1594DB:    CMP #$FF                    ; $15:94DB: C9 FF       ;
CODE_1594DD:    BEQ CODE_1594EB             ; $15:94DD: F0 0C       ;
CODE_1594DF:    INY                         ; $15:94DF: C8          ;
CODE_1594E0:    LDA ($D9),y                 ; $15:94E0: B1 D9       ;
CODE_1594E2:    AND #$1F                    ; $15:94E2: 29 1F       ;
CODE_1594E4:    STA $0543                   ; $15:94E4: 8D 43 05    ;
CODE_1594E7:    INY                         ; $15:94E7: C8          ;
CODE_1594E8:    JMP CODE_15941B             ; $15:94E8: 4C 1B 94    ;

CODE_1594EB:    RTL                         ; $15:94EB: 6B          ;

CODE_1594EC:    STY $0713                   ; $15:94EC: 8C 13 07    ;
CODE_1594EF:    LDX $E9                     ; $15:94EF: A6 E9       ;
CODE_1594F1:    LDY $0534                   ; $15:94F1: AC 34 05    ;
CODE_1594F4:    LDA.w DATA_11AB11,y                 ; $15:94F4: B9 11 AB    ;
CODE_1594F7:    CLC                         ; $15:94F7: 18          ;
CODE_1594F8:    ADC.w DATA_11AAFB,x                 ; $15:94F8: 7D FB AA    ;
CODE_1594FB:    STA $02                     ; $15:94FB: 85 02       ;
CODE_1594FD:    LDA.w DATA_11AAF0,x                 ; $15:94FD: BD F0 AA    ;
CODE_159500:    STA $01                     ; $15:9500: 85 01       ;
CODE_159502:    LDA.w DATA_11AB06,x                 ; $15:9502: BD 06 AB    ;
CODE_159505:    STA $03                     ; $15:9505: 85 03       ;
CODE_159507:    LDA $E6                     ; $15:9507: A5 E6       ;
CODE_159509:    CLC                         ; $15:9509: 18          ;
CODE_15950A:    ADC $E5                     ; $15:950A: 65 E5       ;
CODE_15950C:    STA $E7                     ; $15:950C: 85 E7       ;
CODE_15950E:    LDY $0713                   ; $15:950E: AC 13 07    ;
CODE_159511:    RTS                         ; $15:9511: 60          ;

DATA_159512:        db $0F,$1E,$2D,$3C,$4B

CODE_159517:    STY $04                     ; $15:9517: 84 04       ;
CODE_159519:    INC $0756                   ; $15:9519: EE 56 07    ;
CODE_15951C:    LDA $0543                   ; $15:951C: AD 43 05    ;
CODE_15951F:    ASL A                       ; $15:951F: 0A          ;
CODE_159520:    TAX                         ; $15:9520: AA          ;
CODE_159521:    LDA.l PNTR_15A90E,x                 ; $15:9521: BF 0E A9 15 ;
CODE_159525:    STA $C4                     ; $15:9525: 85 C4       ;
CODE_159527:    INX                         ; $15:9527: E8          ;
CODE_159528:    LDA.l PNTR_15A90E,x                 ; $15:9528: BF 0E A9 15 ;
CODE_15952C:    STA $C5                     ; $15:952C: 85 C5       ;
CODE_15952E:    LDA #$15                    ; $15:952E: A9 15       ;
CODE_159530:    STA $C6                     ; $15:9530: 85 C6       ;
CODE_159532:    LDA $02C8                   ; $15:9532: AD C8 02    ;
CODE_159535:    BNE CODE_15954D             ; $15:9535: D0 16       ;
CODE_159537:    LDA $075A                   ; $15:9537: AD 5A 07    ;
CODE_15953A:    BEQ CODE_159541             ; $15:953A: F0 05       ;
CODE_15953C:    STZ $075A                   ; $15:953C: 9C 5A 07    ;
CODE_15953F:    BRA CODE_159577             ; $15:953F: 80 36       ;

CODE_159541:    LDA $0757                   ; $15:9541: AD 57 07    ;
CODE_159544:    CMP #$01                    ; $15:9544: C9 01       ;
CODE_159546:    BNE CODE_159561             ; $15:9546: D0 19       ;
CODE_159548:    INC $075A                   ; $15:9548: EE 5A 07    ;
CODE_15954B:    BRA CODE_159561             ; $15:954B: 80 14       ;

CODE_15954D:    LDA $0757                   ; $15:954D: AD 57 07    ;
CODE_159550:    BEQ CODE_159561             ; $15:9550: F0 0F       ;
CODE_159552:    CMP #$FF                    ; $15:9552: C9 FF       ;
CODE_159554:    BEQ CODE_159561             ; $15:9554: F0 0B       ;
CODE_159556:    CMP #$01                    ; $15:9556: C9 01       ;
CODE_159558:    BEQ CODE_15955E             ; $15:9558: F0 04       ;
CODE_15955A:    LDX #$04                    ; $15:955A: A2 04       ;
CODE_15955C:    BRA CODE_159567             ; $15:955C: 80 09       ;

CODE_15955E:    INC $075A                   ; $15:955E: EE 5A 07    ;
CODE_159561:    LDA $0756                   ; $15:9561: AD 56 07    ;
CODE_159564:    AND #$03                    ; $15:9564: 29 03       ;
CODE_159566:    TAX                         ; $15:9566: AA          ;
CODE_159567:    LDA.l DATA_159512,x                 ; $15:9567: BF 12 95 15 ;
CODE_15956B:    REP #$20                    ; $15:956B: C2 20       ;
CODE_15956D:    AND #$00FF                  ; $15:956D: 29 FF 00    ;
CODE_159570:    CLC                         ; $15:9570: 18          ;
CODE_159571:    ADC $C4                     ; $15:9571: 65 C4       ;
CODE_159573:    STA $C4                     ; $15:9573: 85 C4       ;
CODE_159575:    SEP #$20                    ; $15:9575: E2 20       ;
CODE_159577:    LDY $E7                     ; $15:9577: A4 E7       ;
CODE_159579:    JSR CODE_15958C             ; $15:9579: 20 8C 95    ;
CODE_15957C:    LDY $E7                     ; $15:957C: A4 E7       ;
CODE_15957E:    JSR CODE_1597B7             ; $15:957E: 20 B7 97    ;
CODE_159581:    LDA $02C8                   ; $15:9581: AD C8 02    ;
CODE_159584:    BNE CODE_159589             ; $15:9584: D0 03       ;
CODE_159586:    INC $02C8                   ; $15:9586: EE C8 02    ;
CODE_159589:    LDY $04                     ; $15:9589: A4 04       ;
CODE_15958B:    RTS                         ; $15:958B: 60          ;

CODE_15958C:    STZ $0713                   ; $15:958C: 9C 13 07    ;
CODE_15958F:    LDA $C4                     ; $15:958F: A5 C4       ;
CODE_159591:    STA $0716                   ; $15:9591: 8D 16 07    ;
CODE_159594:    LDA $C5                     ; $15:9594: A5 C5       ;
CODE_159596:    STA $0717                   ; $15:9596: 8D 17 07    ;
CODE_159599:    LDA $0757                   ; $15:9599: AD 57 07    ;
CODE_15959C:    AND #$F0                    ; $15:959C: 29 F0       ;
CODE_15959E:    BNE CODE_1595AF             ; $15:959E: D0 0F       ;
CODE_1595A0:    LDA $075B                   ; $15:95A0: AD 5B 07    ;
CODE_1595A3:    AND #$0F                    ; $15:95A3: 29 0F       ;
CODE_1595A5:    BEQ CODE_1595C2             ; $15:95A5: F0 1B       ;
CODE_1595A7:    LDA #$0E                    ; $15:95A7: A9 0E       ;
CODE_1595A9:    SEC                         ; $15:95A9: 38          ;
CODE_1595AA:    SBC $075C                   ; $15:95AA: ED 5C 07    ;
CODE_1595AD:    BRA CODE_1595BC             ; $15:95AD: 80 0D       ;

CODE_1595AF:    LDA $075B                   ; $15:95AF: AD 5B 07    ;
CODE_1595B2:    AND #$0F                    ; $15:95B2: 29 0F       ;
CODE_1595B4:    BNE CODE_1595A7             ; $15:95B4: D0 F1       ;
CODE_1595B6:    LDA #$0E                    ; $15:95B6: A9 0E       ;
CODE_1595B8:    SEC                         ; $15:95B8: 38          ;
CODE_1595B9:    SBC $0758                   ; $15:95B9: ED 58 07    ;
CODE_1595BC:    STA $0715                   ; $15:95BC: 8D 15 07    ;
CODE_1595BF:    STZ $0757                   ; $15:95BF: 9C 57 07    ;
CODE_1595C2:    LDA $0715                   ; $15:95C2: AD 15 07    ;
CODE_1595C5:    BEQ CODE_1595FE             ; $15:95C5: F0 37       ;
CODE_1595C7:    CMP $0713                   ; $15:95C7: CD 13 07    ;
CODE_1595CA:    BPL CODE_1595FE             ; $15:95CA: 10 32       ;
CODE_1595CC:    LDA $C4                     ; $15:95CC: A5 C4       ;
CODE_1595CE:    STA $0716                   ; $15:95CE: 8D 16 07    ;
CODE_1595D1:    LDA $C5                     ; $15:95D1: A5 C5       ;
CODE_1595D3:    STA $0717                   ; $15:95D3: 8D 17 07    ;
CODE_1595D6:    LDA $0543                   ; $15:95D6: AD 43 05    ;
CODE_1595D9:    ASL A                       ; $15:95D9: 0A          ;
CODE_1595DA:    TAX                         ; $15:95DA: AA          ;
CODE_1595DB:    LDA.l PNTR_15A90E,x                 ; $15:95DB: BF 0E A9 15 ;
CODE_1595DF:    STA $C4                     ; $15:95DF: 85 C4       ;
CODE_1595E1:    INX                         ; $15:95E1: E8          ;
CODE_1595E2:    LDA.l PNTR_15A90E,x                 ; $15:95E2: BF 0E A9 15 ;
CODE_1595E6:    STA $C5                     ; $15:95E6: 85 C5       ;
CODE_1595E8:    LDA $0756                   ; $15:95E8: AD 56 07    ;
CODE_1595EB:    AND #$03                    ; $15:95EB: 29 03       ;
CODE_1595ED:    TAX                         ; $15:95ED: AA          ;
CODE_1595EE:    LDA.l DATA_159512,x                 ; $15:95EE: BF 12 95 15 ;
CODE_1595F2:    REP #$20                    ; $15:95F2: C2 20       ;
CODE_1595F4:    AND #$00FF                  ; $15:95F4: 29 FF 00    ;
CODE_1595F7:    CLC                         ; $15:95F7: 18          ;
CODE_1595F8:    ADC $C4                     ; $15:95F8: 65 C4       ;
CODE_1595FA:    STA $C4                     ; $15:95FA: 85 C4       ;
CODE_1595FC:    SEP #$20                    ; $15:95FC: E2 20       ;
CODE_1595FE:    STY $0714                   ; $15:95FE: 8C 14 07    ;
CODE_159601:    LDY $0713                   ; $15:9601: AC 13 07    ;
CODE_159604:    LDA [$C4],y                 ; $15:9604: B7 C4       ;
CODE_159606:    LDY $0714                   ; $15:9606: AC 14 07    ;
CODE_159609:    STA [$01],y                 ; $15:9609: 97 01       ;
CODE_15960B:    CMP #$40                    ; $15:960B: C9 40       ;
CODE_15960D:    BEQ CODE_159625             ; $15:960D: F0 16       ;
CODE_15960F:    REP #$30                    ; $15:960F: C2 30       ;
CODE_159611:    TYA                         ; $15:9611: 98          ;
CODE_159612:    AND #$00FF                  ; $15:9612: 29 FF 00    ;
CODE_159615:    CLC                         ; $15:9615: 18          ;
CODE_159616:    ADC #$7000                  ; $15:9616: 69 00 70    ;
CODE_159619:    TAY                         ; $15:9619: A8          ;
CODE_15961A:    SEP #$20                    ; $15:961A: E2 20       ;
CODE_15961C:    LDA #$01                    ; $15:961C: A9 01       ;
CODE_15961E:    STA [$01],y                 ; $15:961E: 97 01       ;
CODE_159620:    SEP #$10                    ; $15:9620: E2 10       ;
CODE_159622:    LDY $0714                   ; $15:9622: AC 14 07    ;
CODE_159625:    LDA $0716                   ; $15:9625: AD 16 07    ;
CODE_159628:    STA $C4                     ; $15:9628: 85 C4       ;
CODE_15962A:    LDA $0717                   ; $15:962A: AD 17 07    ;
CODE_15962D:    STA $C5                     ; $15:962D: 85 C5       ;
CODE_15962F:    TYA                         ; $15:962F: 98          ;
CODE_159630:    CLC                         ; $15:9630: 18          ;
CODE_159631:    ADC #$10                    ; $15:9631: 69 10       ;
CODE_159633:    TAY                         ; $15:9633: A8          ;
CODE_159634:    INC $0713                   ; $15:9634: EE 13 07    ;
CODE_159637:    LDA $0713                   ; $15:9637: AD 13 07    ;
CODE_15963A:    CMP #$0F                    ; $15:963A: C9 0F       ;
CODE_15963C:    BEQ CODE_159641             ; $15:963C: F0 03       ;
CODE_15963E:    BRL CODE_1595C2             ; $15:963E: 82 81 FF    ;
CODE_159641:    LDA $0757                   ; $15:9641: AD 57 07    ;
CODE_159644:    STA $075B                   ; $15:9644: 8D 5B 07    ;
CODE_159647:    LDA $0758                   ; $15:9647: AD 58 07    ;
CODE_15964A:    STA $075C                   ; $15:964A: 8D 5C 07    ;
CODE_15964D:    STZ $0715                   ; $15:964D: 9C 15 07    ;
CODE_159650:    RTS                         ; $15:9650: 60          ;

CODE_159651:    INY                         ; $15:9651: C8          ;
CODE_159652:    TYA                         ; $15:9652: 98          ;
CODE_159653:    AND #$0F                    ; $15:9653: 29 0F       ;
CODE_159655:    BNE CODE_159668             ; $15:9655: D0 11       ;
CODE_159657:    TYA                         ; $15:9657: 98          ;
CODE_159658:    SEC                         ; $15:9658: 38          ;
CODE_159659:    SBC #$10                    ; $15:9659: E9 10       ;
CODE_15965B:    TAY                         ; $15:965B: A8          ;
CODE_15965C:    STX $0B                     ; $15:965C: 86 0B       ;
CODE_15965E:    LDX $E9                     ; $15:965E: A6 E9       ;
CODE_159660:    INX                         ; $15:9660: E8          ;
CODE_159661:    STX $0D                     ; $15:9661: 86 0D       ;
CODE_159663:    JSR CODE_1594F1             ; $15:9663: 20 F1 94    ;
CODE_159666:    LDX $0B                     ; $15:9666: A6 0B       ;
CODE_159668:    RTS                         ; $15:9668: 60          ;

CODE_159669:    TYA                         ; $15:9669: 98          ;
CODE_15966A:    CLC                         ; $15:966A: 18          ;
CODE_15966B:    ADC #$10                    ; $15:966B: 69 10       ;
CODE_15966D:    TAY                         ; $15:966D: A8          ;
CODE_15966E:    CMP #$F0                    ; $15:966E: C9 F0       ;
CODE_159670:    BCC CODE_15967C             ; $15:9670: 90 0A       ;
CODE_159672:    LDX $E9                     ; $15:9672: A6 E9       ;
CODE_159674:    INX                         ; $15:9674: E8          ;
CODE_159675:    JSR CODE_1594F1             ; $15:9675: 20 F1 94    ;
CODE_159678:    TYA                         ; $15:9678: 98          ;
CODE_159679:    AND #$0F                    ; $15:9679: 29 0F       ;
CODE_15967B:    TAY                         ; $15:967B: A8          ;
CODE_15967C:    RTS                         ; $15:967C: 60          ;

CODE_15967D:    CLC                         ; $15:967D: 18          ;
CODE_15967E:    ADC $E6                     ; $15:967E: 65 E6       ;
CODE_159680:    BCC CODE_159686             ; $15:9680: 90 04       ;
CODE_159682:    ADC #$0F                    ; $15:9682: 69 0F       ;
CODE_159684:    BRA CODE_15968C             ; $15:9684: 80 06       ;
CODE_159686:    CMP #$F0                    ; $15:9686: C9 F0       ;
CODE_159688:    BNE CODE_15968E             ; $15:9688: D0 04       ;
CODE_15968A:    LDA #$00                    ; $15:968A: A9 00       ;
CODE_15968C:    INC $E9                     ; $15:968C: E6 E9       ;
CODE_15968E:    STA $E6                     ; $15:968E: 85 E6       ;
CODE_159690:    RTS                         ; $15:9690: 60          ;

CODE_159691:    STY $0712                   ; $15:9691: 8C 12 07    ;
CODE_159694:    INY                         ; $15:9694: C8          ;
CODE_159695:    LDA ($D9),y                 ; $15:9695: B1 D9       ;
CODE_159697:    CMP #$FF                    ; $15:9697: C9 FF       ;
CODE_159699:    BNE CODE_15969E             ; $15:9699: D0 03       ;
CODE_15969B:    BRL CODE_1597AD             ; $15:969B: 82 0F 01    ;

CODE_15969E:    AND #$1F                    ; $15:969E: 29 1F       ;
CODE_1596A0:    ASL A                       ; $15:96A0: 0A          ;
CODE_1596A1:    TAX                         ; $15:96A1: AA          ;
CODE_1596A2:    LDA.l PNTR_15A90E,x                 ; $15:96A2: BF 0E A9 15 ;
CODE_1596A6:    STA $C4                     ; $15:96A6: 85 C4       ;
CODE_1596A8:    INX                         ; $15:96A8: E8          ;
CODE_1596A9:    LDA.l PNTR_15A90E,x                 ; $15:96A9: BF 0E A9 15 ;
CODE_1596AD:    STA $C5                     ; $15:96AD: 85 C5       ;
CODE_1596AF:    LDA #$15                    ; $15:96AF: A9 15       ;
CODE_1596B1:    STA $C6                     ; $15:96B1: 85 C6       ;
CODE_1596B3:    STZ $0716                   ; $15:96B3: 9C 16 07    ;
CODE_1596B6:    STZ $0717                   ; $15:96B6: 9C 17 07    ;
CODE_1596B9:    STZ $071A                   ; $15:96B9: 9C 1A 07    ;
CODE_1596BC:    LDY #$00                    ; $15:96BC: A0 00       ;
CODE_1596BE:    LDA [$C4],y                 ; $15:96BE: B7 C4       ;
CODE_1596C0:    CMP #$40                    ; $15:96C0: C9 40       ;
CODE_1596C2:    BEQ CODE_1596CC             ; $15:96C2: F0 08       ;
CODE_1596C4:    LDX $071A                   ; $15:96C4: AE 1A 07    ;
CODE_1596C7:    INC $0716,x                 ; $15:96C7: FE 16 07    ;
CODE_1596CA:    BRA CODE_1596DE             ; $15:96CA: 80 12       ;

CODE_1596CC:    CPY #$00                    ; $15:96CC: C0 00       ;
CODE_1596CE:    BEQ CODE_1596D8             ; $15:96CE: F0 08       ;
CODE_1596D0:    DEY                         ; $15:96D0: 88          ;
CODE_1596D1:    LDA [$C4],y                 ; $15:96D1: B7 C4       ;
CODE_1596D3:    CMP #$40                    ; $15:96D3: C9 40       ;
CODE_1596D5:    BEQ CODE_1596DD             ; $15:96D5: F0 06       ;
CODE_1596D7:    INY                         ; $15:96D7: C8          ;
CODE_1596D8:    INC $071A                   ; $15:96D8: EE 1A 07    ;
CODE_1596DB:    BRA CODE_1596DE             ; $15:96DB: 80 01       ;

CODE_1596DD:    INY                         ; $15:96DD: C8          ;
CODE_1596DE:    INY                         ; $15:96DE: C8          ;
CODE_1596DF:    CPY #$0F                    ; $15:96DF: C0 0F       ;
CODE_1596E1:    BNE CODE_1596BE             ; $15:96E1: D0 DB       ;
CODE_1596E3:    LDA $0716                   ; $15:96E3: AD 16 07    ;
CODE_1596E6:    CMP #$0F                    ; $15:96E6: C9 0F       ;
CODE_1596E8:    BNE CODE_1596ED             ; $15:96E8: D0 03       ;
CODE_1596EA:    STA $0717                   ; $15:96EA: 8D 17 07    ;
CODE_1596ED:    LDA $0543                   ; $15:96ED: AD 43 05    ;
CODE_1596F0:    ASL A                       ; $15:96F0: 0A          ;
CODE_1596F1:    TAX                         ; $15:96F1: AA          ;
CODE_1596F2:    LDA.l PNTR_15A90E,x                 ; $15:96F2: BF 0E A9 15 ;
CODE_1596F6:    STA $C4                     ; $15:96F6: 85 C4       ;
CODE_1596F8:    INX                         ; $15:96F8: E8          ;
CODE_1596F9:    LDA.l PNTR_15A90E,x                 ; $15:96F9: BF 0E A9 15 ;
CODE_1596FD:    STA $C5                     ; $15:96FD: 85 C5       ;
CODE_1596FF:    LDA #$15                    ; $15:96FF: A9 15       ;
CODE_159701:    STA $C6                     ; $15:9701: 85 C6       ;
CODE_159703:    STZ $0718                   ; $15:9703: 9C 18 07    ;
CODE_159706:    STZ $0719                   ; $15:9706: 9C 19 07    ;
CODE_159709:    STZ $071A                   ; $15:9709: 9C 1A 07    ;
CODE_15970C:    LDY #$00                    ; $15:970C: A0 00       ;
CODE_15970E:    LDA [$C4],y                 ; $15:970E: B7 C4       ;
CODE_159710:    CMP #$40                    ; $15:9710: C9 40       ;
CODE_159712:    BEQ CODE_15971C             ; $15:9712: F0 08       ;
CODE_159714:    LDX $071A                   ; $15:9714: AE 1A 07    ;
CODE_159717:    INC $0718,x                 ; $15:9717: FE 18 07    ;
CODE_15971A:    BRA CODE_15972E             ; $15:971A: 80 12       ;
CODE_15971C:    CPY #$00                    ; $15:971C: C0 00       ;
CODE_15971E:    BEQ CODE_159728             ; $15:971E: F0 08       ;
CODE_159720:    DEY                         ; $15:9720: 88          ;
CODE_159721:    LDA [$C4],y                 ; $15:9721: B7 C4       ;
CODE_159723:    CMP #$40                    ; $15:9723: C9 40       ;
CODE_159725:    BEQ CODE_15972D             ; $15:9725: F0 06       ;
CODE_159727:    INY                         ; $15:9727: C8          ;
CODE_159728:    INC $071A                   ; $15:9728: EE 1A 07    ;
CODE_15972B:    BRA CODE_15972E             ; $15:972B: 80 01       ;

CODE_15972D:    INY                         ; $15:972D: C8          ;
CODE_15972E:    INY                         ; $15:972E: C8          ;
CODE_15972F:    CPY #$0F                    ; $15:972F: C0 0F       ;
CODE_159731:    BNE CODE_15970E             ; $15:9731: D0 DB       ;
CODE_159733:    LDA $0718                   ; $15:9733: AD 18 07    ;
CODE_159736:    CMP #$0F                    ; $15:9736: C9 0F       ;
CODE_159738:    BNE CODE_15973D             ; $15:9738: D0 03       ;
CODE_15973A:    STA $0719                   ; $15:973A: 8D 19 07    ;
CODE_15973D:    LDA $0719                   ; $15:973D: AD 19 07    ;
CODE_159740:    CMP $0717                   ; $15:9740: CD 17 07    ;
CODE_159743:    BEQ CODE_159754             ; $15:9743: F0 0F       ;
CODE_159745:    BMI CODE_159761             ; $15:9745: 30 1A       ;
CODE_159747:    LDA #$10                    ; $15:9747: A9 10       ;
CODE_159749:    STA $0757                   ; $15:9749: 8D 57 07    ;
CODE_15974C:    LDA $0717                   ; $15:974C: AD 17 07    ;
CODE_15974F:    STA $0758                   ; $15:974F: 8D 58 07    ;
CODE_159752:    BRA CODE_15976C             ; $15:9752: 80 18       ;

CODE_159754:    LDA #$FF                    ; $15:9754: A9 FF       ;
CODE_159756:    STA $0757                   ; $15:9756: 8D 57 07    ;
CODE_159759:    LDA $0717                   ; $15:9759: AD 17 07    ;
CODE_15975C:    STA $0758                   ; $15:975C: 8D 58 07    ;
CODE_15975F:    BRA CODE_15976C             ; $15:975F: 80 0B       ;

CODE_159761:    LDA #$01                    ; $15:9761: A9 01       ;
CODE_159763:    STA $0757                   ; $15:9763: 8D 57 07    ;
CODE_159766:    LDA $0719                   ; $15:9766: AD 19 07    ;
CODE_159769:    STA $0758                   ; $15:9769: 8D 58 07    ;
CODE_15976C:    LDA $0718                   ; $15:976C: AD 18 07    ;
CODE_15976F:    CMP $0716                   ; $15:976F: CD 16 07    ;
CODE_159772:    BEQ CODE_159788             ; $15:9772: F0 14       ;
CODE_159774:    BMI CODE_159797             ; $15:9774: 30 21       ;
CODE_159776:    LDA $0716                   ; $15:9776: AD 16 07    ;
CODE_159779:    BEQ CODE_1597AD             ; $15:9779: F0 32       ;
CODE_15977B:    LDA #$10                    ; $15:977B: A9 10       ;
CODE_15977D:    STA $075D                   ; $15:977D: 8D 5D 07    ;
CODE_159780:    LDA $0716                   ; $15:9780: AD 16 07    ;
CODE_159783:    STA $075E                   ; $15:9783: 8D 5E 07    ;
CODE_159786:    BRA CODE_1597AD             ; $15:9786: 80 25       ;

CODE_159788:    LDA $0718                   ; $15:9788: AD 18 07    ;
CODE_15978B:    BEQ CODE_1597AD             ; $15:978B: F0 20       ;
CODE_15978D:    STA $075E                   ; $15:978D: 8D 5E 07    ;
CODE_159790:    LDA #$FF                    ; $15:9790: A9 FF       ;
CODE_159792:    STA $075D                   ; $15:9792: 8D 5D 07    ;
CODE_159795:    BRA CODE_1597AD             ; $15:9795: 80 16       ;

CODE_159797:    LDA $0718                   ; $15:9797: AD 18 07    ;
CODE_15979A:    BEQ CODE_1597AD             ; $15:979A: F0 11       ;
CODE_15979C:    LDA #$11                    ; $15:979C: A9 11       ;
CODE_15979E:    STA $075D                   ; $15:979E: 8D 5D 07    ;
CODE_1597A1:    LDA $0718                   ; $15:97A1: AD 18 07    ;
CODE_1597A4:    STA $075E                   ; $15:97A4: 8D 5E 07    ;
CODE_1597A7:    LDA $0716                   ; $15:97A7: AD 16 07    ;
CODE_1597AA:    STA $0763                   ; $15:97AA: 8D 63 07    ;
CODE_1597AD:    LDY $0712                   ; $15:97AD: AC 12 07    ;
CODE_1597B0:    RTS                         ; $15:97B0: 60          ;

DATA_1597B1:        db $05,$06

DATA_1597B3:        db $11,$12,$04,$10

CODE_1597B7:    STZ $0713                   ; $15:97B7: 9C 13 07    ;
CODE_1597BA:    LDA $075D                   ; $15:97BA: AD 5D 07    ;
CODE_1597BD:    AND #$F0                    ; $15:97BD: 29 F0       ;
CODE_1597BF:    BNE CODE_1597CB             ; $15:97BF: D0 0A       ;
CODE_1597C1:    LDA $075F                   ; $15:97C1: AD 5F 07    ;
CODE_1597C4:    AND #$0F                    ; $15:97C4: 29 0F       ;
CODE_1597C6:    BNE CODE_1597D6             ; $15:97C6: D0 0E       ;
CODE_1597C8:    BRL CODE_159882             ; $15:97C8: 82 B7 00    ;

CODE_1597CB:    LDA $075E                   ; $15:97CB: AD 5E 07    ;
CODE_1597CE:    STA $0715                   ; $15:97CE: 8D 15 07    ;
CODE_1597D1:    STZ $0761                   ; $15:97D1: 9C 61 07    ;
CODE_1597D4:    BRA CODE_1597E3             ; $15:97D4: 80 0D       ;

CODE_1597D6:    LDA $0760                   ; $15:97D6: AD 60 07    ;
CODE_1597D9:    STA $0715                   ; $15:97D9: 8D 15 07    ;
CODE_1597DC:    LDA #$01                    ; $15:97DC: A9 01       ;
CODE_1597DE:    STA $0761                   ; $15:97DE: 8D 61 07    ;
CODE_1597E1:    BRA CODE_15981C             ; $15:97E1: 80 39       ;

CODE_1597E3:    TYA                         ; $15:97E3: 98          ;
CODE_1597E4:    AND #$10                    ; $15:97E4: 29 10       ;
CODE_1597E6:    BNE CODE_159802             ; $15:97E6: D0 1A       ;
CODE_1597E8:    LDA [$01],y                 ; $15:97E8: B7 01       ;
CODE_1597EA:    CMP #$07                    ; $15:97EA: C9 07       ;
CODE_1597EC:    BNE CODE_1597F5             ; $15:97EC: D0 07       ;
CODE_1597EE:    LDA $0756                   ; $15:97EE: AD 56 07    ;
CODE_1597F1:    AND #$01                    ; $15:97F1: 29 01       ;
CODE_1597F3:    BRA CODE_159855             ; $15:97F3: 80 60       ;

CODE_1597F5:    CMP #$13                    ; $15:97F5: C9 13       ;
CODE_1597F7:    BNE CODE_159863             ; $15:97F7: D0 6A       ;
CODE_1597F9:    LDA $0756                   ; $15:97F9: AD 56 07    ;
CODE_1597FC:    AND #$01                    ; $15:97FC: 29 01       ;
CODE_1597FE:    EOR #$01                    ; $15:97FE: 49 01       ;
CODE_159800:    BRA CODE_159855             ; $15:9800: 80 53       ;

CODE_159802:    LDA [$01],y                 ; $15:9802: B7 01       ;
CODE_159804:    CMP #$07                    ; $15:9804: C9 07       ;
CODE_159806:    BNE CODE_159811             ; $15:9806: D0 09       ;
CODE_159808:    LDA $0756                   ; $15:9808: AD 56 07    ;
CODE_15980B:    AND #$01                    ; $15:980B: 29 01       ;
CODE_15980D:    EOR #$01                    ; $15:980D: 49 01       ;
CODE_15980F:    BRA CODE_15985C             ; $15:980F: 80 4B       ;

CODE_159811:    CMP #$13                    ; $15:9811: C9 13       ;
CODE_159813:    BNE CODE_159863             ; $15:9813: D0 4E       ;
CODE_159815:    LDA $0756                   ; $15:9815: AD 56 07    ;
CODE_159818:    AND #$01                    ; $15:9818: 29 01       ;
CODE_15981A:    BRA CODE_15985C             ; $15:981A: 80 40       ;
CODE_15981C:    TYA                         ; $15:981C: 98          ;
CODE_15981D:    AND #$10                    ; $15:981D: 29 10       ;
CODE_15981F:    BNE CODE_15983B             ; $15:981F: D0 1A       ;
CODE_159821:    LDA [$01],y                 ; $15:9821: B7 01       ;
CODE_159823:    CMP #$04                    ; $15:9823: C9 04       ;
CODE_159825:    BNE CODE_15982E             ; $15:9825: D0 07       ;
CODE_159827:    LDA $0756                   ; $15:9827: AD 56 07    ;
CODE_15982A:    AND #$01                    ; $15:982A: 29 01       ;
CODE_15982C:    BRA CODE_159855             ; $15:982C: 80 27       ;

CODE_15982E:    CMP #$10                    ; $15:982E: C9 10       ;
CODE_159830:    BNE CODE_159863             ; $15:9830: D0 31       ;
CODE_159832:    LDA $0756                   ; $15:9832: AD 56 07    ;
CODE_159835:    AND #$01                    ; $15:9835: 29 01       ;
CODE_159837:    EOR #$01                    ; $15:9837: 49 01       ;
CODE_159839:    BRA CODE_159855             ; $15:9839: 80 1A       ;

CODE_15983B:    LDA [$01],y                 ; $15:983B: B7 01       ;
CODE_15983D:    CMP #$04                    ; $15:983D: C9 04       ;
CODE_15983F:    BNE CODE_15984A             ; $15:983F: D0 09       ;
CODE_159841:    LDA $0756                   ; $15:9841: AD 56 07    ;
CODE_159844:    AND #$01                    ; $15:9844: 29 01       ;
CODE_159846:    EOR #$01                    ; $15:9846: 49 01       ;
CODE_159848:    BRA CODE_15985C             ; $15:9848: 80 12       ;

CODE_15984A:    CMP #$10                    ; $15:984A: C9 10       ;
CODE_15984C:    BNE CODE_159863             ; $15:984C: D0 15       ;
CODE_15984E:    LDA $0756                   ; $15:984E: AD 56 07    ;
CODE_159851:    AND #$01                    ; $15:9851: 29 01       ;
CODE_159853:    BRA CODE_15985C             ; $15:9853: 80 07       ;

CODE_159855:    TAX                         ; $15:9855: AA          ;
CODE_159856:    LDA.l DATA_1597B1,x                 ; $15:9856: BF B1 97 15 ;
CODE_15985A:    BRA CODE_159861             ; $15:985A: 80 05       ;

CODE_15985C:    TAX                         ; $15:985C: AA          ;
CODE_15985D:    LDA.l DATA_1597B3,x                 ; $15:985D: BF B3 97 15 ;
CODE_159861:    STA [$01],y                 ; $15:9861: 97 01       ;
CODE_159863:    LDA $EB                     ; $15:9863: A5 EB       ;
CODE_159865:    BNE CODE_15986A             ; $15:9865: D0 03       ;
CODE_159867:    INY                         ; $15:9867: C8          ;
CODE_159868:    BRA CODE_15986F             ; $15:9868: 80 05       ;
CODE_15986A:    TYA                         ; $15:986A: 98          ;
CODE_15986B:    CLC                         ; $15:986B: 18          ;
CODE_15986C:    ADC #$10                    ; $15:986C: 69 10       ;
CODE_15986E:    TAY                         ; $15:986E: A8          ;
CODE_15986F:    INC $0713                   ; $15:986F: EE 13 07    ;
CODE_159872:    LDA $0713                   ; $15:9872: AD 13 07    ;
CODE_159875:    CMP $0715                   ; $15:9875: CD 15 07    ;
CODE_159878:    BPL CODE_159882             ; $15:9878: 10 08       ;
CODE_15987A:    LDA $0761                   ; $15:987A: AD 61 07    ;
CODE_15987D:    BNE CODE_15981C             ; $15:987D: D0 9D       ;
CODE_15987F:    BRL CODE_1597E3             ; $15:987F: 82 61 FF    ;
CODE_159882:    LDA $075D                   ; $15:9882: AD 5D 07    ;
CODE_159885:    STA $075F                   ; $15:9885: 8D 5F 07    ;
CODE_159888:    LDA $075E                   ; $15:9888: AD 5E 07    ;
CODE_15988B:    STA $0760                   ; $15:988B: 8D 60 07    ;
CODE_15988E:    STZ $075D                   ; $15:988E: 9C 5D 07    ;
CODE_159891:    STZ $0715                   ; $15:9891: 9C 15 07    ;
CODE_159894:    RTS                         ; $15:9894: 60          ;

CODE_159895:    STY $0712                   ; $15:9895: 8C 12 07    ;
CODE_159898:    JSR CODE_159929             ; $15:9898: 20 29 99    ;
CODE_15989B:    LDA $0713                   ; $15:989B: AD 13 07    ;
CODE_15989E:    BEQ CODE_1598DE             ; $15:989E: F0 3E       ;
CODE_1598A0:    LDA [$01],y                 ; $15:98A0: B7 01       ;
CODE_1598A2:    CMP #$01                    ; $15:98A2: C9 01       ;
CODE_1598A4:    BEQ CODE_1598C4             ; $15:98A4: F0 1E       ;
CODE_1598A6:    CMP #$02                    ; $15:98A6: C9 02       ;
CODE_1598A8:    BEQ CODE_1598C4             ; $15:98A8: F0 1A       ;
CODE_1598AA:    CMP #$05                    ; $15:98AA: C9 05       ;
CODE_1598AC:    BEQ CODE_1598C8             ; $15:98AC: F0 1A       ;
CODE_1598AE:    CMP #$06                    ; $15:98AE: C9 06       ;
CODE_1598B0:    BEQ CODE_1598C8             ; $15:98B0: F0 16       ;
CODE_1598B2:    CMP #$11                    ; $15:98B2: C9 11       ;
CODE_1598B4:    BEQ CODE_1598C8             ; $15:98B4: F0 12       ;
CODE_1598B6:    CMP #$12                    ; $15:98B6: C9 12       ;
CODE_1598B8:    BEQ CODE_1598C8             ; $15:98B8: F0 0E       ;
CODE_1598BA:    CMP #$15                    ; $15:98BA: C9 15       ;
CODE_1598BC:    BEQ CODE_1598D7             ; $15:98BC: F0 19       ;
CODE_1598BE:    CMP #$16                    ; $15:98BE: C9 16       ;
CODE_1598C0:    BEQ CODE_1598D7             ; $15:98C0: F0 15       ;
CODE_1598C2:    BRA CODE_1598DE             ; $15:98C2: 80 1A       ;

CODE_1598C4:    LDA #$03                    ; $15:98C4: A9 03       ;
CODE_1598C6:    BRA CODE_1598D9             ; $15:98C6: 80 11       ;

CODE_1598C8:    LDA $0712                   ; $15:98C8: AD 12 07    ;
CODE_1598CB:    AND #$10                    ; $15:98CB: 29 10       ;
CODE_1598CD:    BNE CODE_1598D3             ; $15:98CD: D0 04       ;
CODE_1598CF:    LDA #$07                    ; $15:98CF: A9 07       ;
CODE_1598D1:    BRA CODE_1598D9             ; $15:98D1: 80 06       ;

CODE_1598D3:    LDA #$13                    ; $15:98D3: A9 13       ;
CODE_1598D5:    BRA CODE_1598D9             ; $15:98D5: 80 02       ;

CODE_1598D7:    LDA #$17                    ; $15:98D7: A9 17       ;
CODE_1598D9:    LDY $0712                   ; $15:98D9: AC 12 07    ;
CODE_1598DC:    STA [$01],y                 ; $15:98DC: 97 01       ;
CODE_1598DE:    RTL                         ; $15:98DE: 6B          ;

CODE_1598DF:    STY $0712                   ; $15:98DF: 8C 12 07    ;
CODE_1598E2:    JSR CODE_159929             ; $15:98E2: 20 29 99    ;
CODE_1598E5:    LDA $0713                   ; $15:98E5: AD 13 07    ;
CODE_1598E8:    BEQ CODE_159928             ; $15:98E8: F0 3E       ;
CODE_1598EA:    LDA [$01],y                 ; $15:98EA: B7 01       ;
CODE_1598EC:    CMP #$01                    ; $15:98EC: C9 01       ;
CODE_1598EE:    BEQ CODE_15990E             ; $15:98EE: F0 1E       ;
CODE_1598F0:    CMP #$02                    ; $15:98F0: C9 02       ;
CODE_1598F2:    BEQ CODE_15990E             ; $15:98F2: F0 1A       ;
CODE_1598F4:    CMP #$05                    ; $15:98F4: C9 05       ;
CODE_1598F6:    BEQ CODE_159912             ; $15:98F6: F0 1A       ;
CODE_1598F8:    CMP #$06                    ; $15:98F8: C9 06       ;
CODE_1598FA:    BEQ CODE_159912             ; $15:98FA: F0 16       ;
CODE_1598FC:    CMP #$11                    ; $15:98FC: C9 11       ;
CODE_1598FE:    BEQ CODE_159912             ; $15:98FE: F0 12       ;
CODE_159900:    CMP #$12                    ; $15:9900: C9 12       ;
CODE_159902:    BEQ CODE_159912             ; $15:9902: F0 0E       ;
CODE_159904:    CMP #$15                    ; $15:9904: C9 15       ;
CODE_159906:    BEQ CODE_159921             ; $15:9906: F0 19       ;
CODE_159908:    CMP #$16                    ; $15:9908: C9 16       ;
CODE_15990A:    BEQ CODE_159921             ; $15:990A: F0 15       ;
CODE_15990C:    BRA CODE_159928             ; $15:990C: 80 1A       ;

CODE_15990E:    LDA #$00                    ; $15:990E: A9 00       ;
CODE_159910:    BRA CODE_159923             ; $15:9910: 80 11       ;

CODE_159912:    LDA $0712                   ; $15:9912: AD 12 07    ;
CODE_159915:    AND #$10                    ; $15:9915: 29 10       ;
CODE_159917:    BNE CODE_15991D             ; $15:9917: D0 04       ;
CODE_159919:    LDA #$04                    ; $15:9919: A9 04       ;
CODE_15991B:    BRA CODE_159923             ; $15:991B: 80 06       ;
CODE_15991D:    LDA #$10                    ; $15:991D: A9 10       ;
CODE_15991F:    BRA CODE_159923             ; $15:991F: 80 02       ;
CODE_159921:    LDA #$14                    ; $15:9921: A9 14       ;
CODE_159923:    LDY $0712                   ; $15:9923: AC 12 07    ;
CODE_159926:    STA [$01],y                 ; $15:9926: 97 01       ;
CODE_159928:    RTL                         ; $15:9928: 6B          ;

CODE_159929:    REP #$30                    ; $15:9929: C2 30       ;
CODE_15992B:    TYA                         ; $15:992B: 98          ;
CODE_15992C:    AND #$00FF                  ; $15:992C: 29 FF 00    ;
CODE_15992F:    CLC                         ; $15:992F: 18          ;
CODE_159930:    ADC #$7000                  ; $15:9930: 69 00 70    ;
CODE_159933:    TAY                         ; $15:9933: A8          ;
CODE_159934:    SEP #$20                    ; $15:9934: E2 20       ;
CODE_159936:    LDA [$01],y                 ; $15:9936: B7 01       ;
CODE_159938:    STA $0713                   ; $15:9938: 8D 13 07    ;
CODE_15993B:    SEP #$10                    ; $15:993B: E2 10       ;
CODE_15993D:    RTS                         ; $15:993D: 60          ;

CODE_15993E:    LDA $0533                   ; $15:993E: AD 33 05    ;
CODE_159941:    ASL A                       ; $15:9941: 0A          ;
CODE_159942:    TAX                         ; $15:9942: AA          ;
CODE_159943:    LDA.l PNTR_15B3F8,x                 ; $15:9943: BF F8 B3 15 ;
CODE_159947:    STA $01                     ; $15:9947: 85 01       ;
CODE_159949:    INX                         ; $15:9949: E8          ;
CODE_15994A:    LDA.l PNTR_15B3F8,x                 ; $15:994A: BF F8 B3 15 ;
CODE_15994E:    STA $02                     ; $15:994E: 85 02       ;
CODE_159950:    LDA #$15                    ; $15:9950: A9 15       ;
CODE_159952:    STA $03                     ; $15:9952: 85 03       ;
CODE_159954:    LDA #$7E                    ; $15:9954: A9 7E       ;
CODE_159956:    STA $0F                     ; $15:9956: 85 0F       ;
CODE_159958:    REP #$10                    ; $15:9958: C2 10       ;
CODE_15995A:    LDY #$0000                  ; $15:995A: A0 00 00    ;
CODE_15995D:    REP #$30                    ; $15:995D: C2 30       ;
CODE_15995F:    LDA [$01],y                 ; $15:995F: B7 01       ;
CODE_159961:    CMP #$FFFF                  ; $15:9961: C9 FF FF    ;
CODE_159964:    BEQ CODE_159992             ; $15:9964: F0 2C       ;
CODE_159966:    AND #$FF00                  ; $15:9966: 29 00 FF    ;
CODE_159969:    CMP #$FE00                  ; $15:9969: C9 00 FE    ;
CODE_15996C:    BNE CODE_159978             ; $15:996C: D0 0A       ;
CODE_15996E:    LDA [$01],y                 ; $15:996E: B7 01       ;
CODE_159970:    AND #$00FF                  ; $15:9970: 29 FF 00    ;
CODE_159973:    STA $0721                   ; $15:9973: 8D 21 07    ;
CODE_159976:    INY                         ; $15:9976: C8          ;
CODE_159977:    INY                         ; $15:9977: C8          ;
CODE_159978:    LDA [$01],y                 ; $15:9978: B7 01       ;
CODE_15997A:    STA $0D                     ; $15:997A: 85 0D       ;
CODE_15997C:    SEP #$20                    ; $15:997C: E2 20       ;
CODE_15997E:    LDA $0721                   ; $15:997E: AD 21 07    ;
CODE_159981:    STA [$0D]                   ; $15:9981: 87 0D       ;
CODE_159983:    LDA $0E                     ; $15:9983: A5 0E       ;
CODE_159985:    CLC                         ; $15:9985: 18          ;
CODE_159986:    ADC #$70                    ; $15:9986: 69 70       ;
CODE_159988:    STA $0E                     ; $15:9988: 85 0E       ;
CODE_15998A:    LDA #$01                    ; $15:998A: A9 01       ;
CODE_15998C:    STA [$0D]                   ; $15:998C: 87 0D       ;
CODE_15998E:    INY                         ; $15:998E: C8          ;
CODE_15998F:    INY                         ; $15:998F: C8          ;
CODE_159990:    BRA CODE_15995D             ; $15:9990: 80 CB       ;

CODE_159992:    SEP #$30                    ; $15:9992: E2 30       ;
CODE_159994:    RTL                         ; $15:9994: 6B          ;

CODE_159995:    STY $0712                   ; $15:9995: 8C 12 07    ;
CODE_159998:    LDA $01                     ; $15:9998: A5 01       ;
CODE_15999A:    STA $0713                   ; $15:999A: 8D 13 07    ;
CODE_15999D:    LDA $02                     ; $15:999D: A5 02       ;
CODE_15999F:    STA $0714                   ; $15:999F: 8D 14 07    ;
CODE_1599A2:    LDA $03                     ; $15:99A2: A5 03       ;
CODE_1599A4:    STA $0715                   ; $15:99A4: 8D 15 07    ;
CODE_1599A7:    STZ $0764                   ; $15:99A7: 9C 64 07    ;
CODE_1599AA:    LDA $0533                   ; $15:99AA: AD 33 05    ;
CODE_1599AD:    ASL A                       ; $15:99AD: 0A          ;
CODE_1599AE:    TAX                         ; $15:99AE: AA          ;
CODE_1599AF:    LDA.l PNTR_15B3A8,x                 ; $15:99AF: BF A8 B3 15 ;
CODE_1599B3:    STA $01                     ; $15:99B3: 85 01       ;
CODE_1599B5:    INX                         ; $15:99B5: E8          ;
CODE_1599B6:    LDA.l PNTR_15B3A8,x                 ; $15:99B6: BF A8 B3 15 ;
CODE_1599BA:    STA $02                     ; $15:99BA: 85 02       ;
CODE_1599BC:    LDA #$15                    ; $15:99BC: A9 15       ;
CODE_1599BE:    STA $03                     ; $15:99BE: 85 03       ;
CODE_1599C0:    LDY #$00                    ; $15:99C0: A0 00       ;
CODE_1599C2:    LDA [$01],y                 ; $15:99C2: B7 01       ;
CODE_1599C4:    CMP #$FF                    ; $15:99C4: C9 FF       ;
CODE_1599C6:    BEQ CODE_1599DE             ; $15:99C6: F0 16       ;
CODE_1599C8:    CMP $0534                   ; $15:99C8: CD 34 05    ;
CODE_1599CB:    BNE CODE_1599DA             ; $15:99CB: D0 0D       ;
CODE_1599CD:    INY                         ; $15:99CD: C8          ;
CODE_1599CE:    LDA [$01],y                 ; $15:99CE: B7 01       ;
CODE_1599D0:    CMP $0543                   ; $15:99D0: CD 43 05    ;
CODE_1599D3:    BNE CODE_1599DB             ; $15:99D3: D0 06       ;
CODE_1599D5:    INC $0764                   ; $15:99D5: EE 64 07    ;
CODE_1599D8:    BRA CODE_1599DE             ; $15:99D8: 80 04       ;

CODE_1599DA:    INY                         ; $15:99DA: C8          ;
CODE_1599DB:    INY                         ; $15:99DB: C8          ;
CODE_1599DC:    BRA CODE_1599C2             ; $15:99DC: 80 E4       ;

CODE_1599DE:    LDY $0712                   ; $15:99DE: AC 12 07    ;
CODE_1599E1:    LDA $0713                   ; $15:99E1: AD 13 07    ;
CODE_1599E4:    STA $01                     ; $15:99E4: 85 01       ;
CODE_1599E6:    LDA $0714                   ; $15:99E6: AD 14 07    ;
CODE_1599E9:    STA $02                     ; $15:99E9: 85 02       ;
CODE_1599EB:    LDA $0715                   ; $15:99EB: AD 15 07    ;
CODE_1599EE:    STA $03                     ; $15:99EE: 85 03       ;
CODE_1599F0:    RTS                         ; $15:99F0: 60          ;

CODE_1599F1:    STY $04                     ; $15:99F1: 84 04       ;
CODE_1599F3:    INC $0756                   ; $15:99F3: EE 56 07    ;
CODE_1599F6:    LDA $0533                   ; $15:99F6: AD 33 05    ;
CODE_1599F9:    CMP #$0D                    ; $15:99F9: C9 0D       ;
CODE_1599FB:    BNE CODE_159A18             ; $15:99FB: D0 1B       ;
CODE_1599FD:    LDA $0534                   ; $15:99FD: AD 34 05    ;
CODE_159A00:    CMP #$03                    ; $15:9A00: C9 03       ;
CODE_159A02:    BNE CODE_159A18             ; $15:9A02: D0 14       ;
CODE_159A04:    LDA $E9                     ; $15:9A04: A5 E9       ;
CODE_159A06:    CMP #$01                    ; $15:9A06: C9 01       ;
CODE_159A08:    BNE CODE_159A0E             ; $15:9A08: D0 04       ;
CODE_159A0A:    LDA #$1F                    ; $15:9A0A: A9 1F       ;
CODE_159A0C:    BRA CODE_159A1B             ; $15:9A0C: 80 0D       ;

CODE_159A0E:    LDA $E9                     ; $15:9A0E: A5 E9       ;
CODE_159A10:    CMP #$02                    ; $15:9A10: C9 02       ;
CODE_159A12:    BNE CODE_159A18             ; $15:9A12: D0 04       ;
CODE_159A14:    LDA #$20                    ; $15:9A14: A9 20       ;
CODE_159A16:    BRA CODE_159A1B             ; $15:9A16: 80 03       ;

CODE_159A18:    LDA $0543                   ; $15:9A18: AD 43 05    ;
CODE_159A1B:    ASL A                       ; $15:9A1B: 0A          ;
CODE_159A1C:    TAX                         ; $15:9A1C: AA          ;
CODE_159A1D:    LDA.l PNTR_15B106,x                 ; $15:9A1D: BF 06 B1 15 ;
CODE_159A21:    STA $C4                     ; $15:9A21: 85 C4       ;
CODE_159A23:    INX                         ; $15:9A23: E8          ;
CODE_159A24:    LDA.l PNTR_15B106,x                 ; $15:9A24: BF 06 B1 15 ;
CODE_159A28:    STA $C5                     ; $15:9A28: 85 C5       ;
CODE_159A2A:    LDA #$15                    ; $15:9A2A: A9 15       ;
CODE_159A2C:    STA $C6                     ; $15:9A2C: 85 C6       ;
CODE_159A2E:    LDA $0756                   ; $15:9A2E: AD 56 07    ;
CODE_159A31:    AND #$01                    ; $15:9A31: 29 01       ;
CODE_159A33:    ASL A                       ; $15:9A33: 0A          ;
CODE_159A34:    ASL A                       ; $15:9A34: 0A          ;
CODE_159A35:    ASL A                       ; $15:9A35: 0A          ;
CODE_159A36:    ASL A                       ; $15:9A36: 0A          ;
CODE_159A37:    REP #$20                    ; $15:9A37: C2 20       ;
CODE_159A39:    AND #$00FF                  ; $15:9A39: 29 FF 00    ;
CODE_159A3C:    CLC                         ; $15:9A3C: 18          ;
CODE_159A3D:    ADC $C4                     ; $15:9A3D: 65 C4       ;
CODE_159A3F:    STA $C4                     ; $15:9A3F: 85 C4       ;
CODE_159A41:    SEP #$20                    ; $15:9A41: E2 20       ;
CODE_159A43:    LDY $E7                     ; $15:9A43: A4 E7       ;
CODE_159A45:    JSR CODE_159A4B             ; $15:9A45: 20 4B 9A    ;
CODE_159A48:    LDY $04                     ; $15:9A48: A4 04       ;
CODE_159A4A:    RTS                         ; $15:9A4A: 60          ;

CODE_159A4B:    STZ $0713                   ; $15:9A4B: 9C 13 07    ;
CODE_159A4E:    STY $0714                   ; $15:9A4E: 8C 14 07    ;
CODE_159A51:    LDY $0713                   ; $15:9A51: AC 13 07    ;
CODE_159A54:    LDA [$C4],y                 ; $15:9A54: B7 C4       ;
CODE_159A56:    CMP #$9D                    ; $15:9A56: C9 9D       ;
CODE_159A58:    BNE CODE_159A6A             ; $15:9A58: D0 10       ;
CODE_159A5A:    LDX $0533                   ; $15:9A5A: AE 33 05    ;
CODE_159A5D:    CPX #$06                    ; $15:9A5D: E0 06       ;
CODE_159A5F:    BNE CODE_159A6A             ; $15:9A5F: D0 09       ;
CODE_159A61:    LDX $0534                   ; $15:9A61: AE 34 05    ;
CODE_159A64:    CPX #$01                    ; $15:9A64: E0 01       ;
CODE_159A66:    BNE CODE_159A6A             ; $15:9A66: D0 02       ;
CODE_159A68:    LDA #$05                    ; $15:9A68: A9 05       ;
CODE_159A6A:    LDY $0714                   ; $15:9A6A: AC 14 07    ;
CODE_159A6D:    STA [$01],y                 ; $15:9A6D: 97 01       ;
CODE_159A6F:    CMP #$40                    ; $15:9A6F: C9 40       ;
CODE_159A71:    BNE CODE_159A76             ; $15:9A71: D0 03       ;
CODE_159A73:    JMP CODE_159AF8             ; $15:9A73: 4C F8 9A    ;

CODE_159A76:    CMP #$9D                    ; $15:9A76: C9 9D       ;
CODE_159A78:    BEQ CODE_159AF8             ; $15:9A78: F0 7E       ;
CODE_159A7A:    CMP #$05                    ; $15:9A7A: C9 05       ;
CODE_159A7C:    BNE CODE_159AB4             ; $15:9A7C: D0 36       ;
CODE_159A7E:    LDA $0543                   ; $15:9A7E: AD 43 05    ;
CODE_159A81:    CMP #$0C                    ; $15:9A81: C9 0C       ;
CODE_159A83:    BEQ CODE_159AF8             ; $15:9A83: F0 73       ;
CODE_159A85:    CMP #$0A                    ; $15:9A85: C9 0A       ;
CODE_159A87:    BNE CODE_159A92             ; $15:9A87: D0 09       ;
CODE_159A89:    TYA                         ; $15:9A89: 98          ;
CODE_159A8A:    AND #$0F                    ; $15:9A8A: 29 0F       ;
CODE_159A8C:    CMP #$0F                    ; $15:9A8C: C9 0F       ;
CODE_159A8E:    BNE CODE_159AF8             ; $15:9A8E: D0 68       ;
CODE_159A90:    BRA CODE_159AB4             ; $15:9A90: 80 22       ;

CODE_159A92:    CMP #$11                    ; $15:9A92: C9 11       ;
CODE_159A94:    BNE CODE_159AA3             ; $15:9A94: D0 0D       ;
CODE_159A96:    TYA                         ; $15:9A96: 98          ;
CODE_159A97:    AND #$0F                    ; $15:9A97: 29 0F       ;
CODE_159A99:    CMP #$06                    ; $15:9A99: C9 06       ;
CODE_159A9B:    BMI CODE_159AE5             ; $15:9A9B: 30 48       ;
CODE_159A9D:    CMP #$0F                    ; $15:9A9D: C9 0F       ;
CODE_159A9F:    BEQ CODE_159AE5             ; $15:9A9F: F0 44       ;
CODE_159AA1:    BRA CODE_159AF8             ; $15:9AA1: 80 55       ;

CODE_159AA3:    CMP #$0B                    ; $15:9AA3: C9 0B       ;
CODE_159AA5:    BNE CODE_159AE5             ; $15:9AA5: D0 3E       ;
CODE_159AA7:    TYA                         ; $15:9AA7: 98          ;
CODE_159AA8:    AND #$0F                    ; $15:9AA8: 29 0F       ;
CODE_159AAA:    CMP #$07                    ; $15:9AAA: C9 07       ;
CODE_159AAC:    BEQ CODE_159AE5             ; $15:9AAC: F0 37       ;
CODE_159AAE:    CMP #$0F                    ; $15:9AAE: C9 0F       ;
CODE_159AB0:    BEQ CODE_159AE5             ; $15:9AB0: F0 33       ;
CODE_159AB2:    BRA CODE_159AF8             ; $15:9AB2: 80 44       ;

CODE_159AB4:    CMP #$06                    ; $15:9AB4: C9 06       ;
CODE_159AB6:    BNE CODE_159AE5             ; $15:9AB6: D0 2D       ;
CODE_159AB8:    LDA $0533                   ; $15:9AB8: AD 33 05    ;
CODE_159ABB:    CMP #$06                    ; $15:9ABB: C9 06       ;
CODE_159ABD:    BNE CODE_159AE5             ; $15:9ABD: D0 26       ;
CODE_159ABF:    LDA $E9                     ; $15:9ABF: A5 E9       ;
CODE_159AC1:    CMP #$09                    ; $15:9AC1: C9 09       ;
CODE_159AC3:    BCC CODE_159AE5             ; $15:9AC3: 90 20       ;
CODE_159AC5:    BNE CODE_159AF8             ; $15:9AC5: D0 31       ;
CODE_159AC7:    TYA                         ; $15:9AC7: 98          ;
CODE_159AC8:    AND #$F0                    ; $15:9AC8: 29 F0       ;
CODE_159ACA:    CMP #$C0                    ; $15:9ACA: C9 C0       ;
CODE_159ACC:    BNE CODE_159AD4             ; $15:9ACC: D0 06       ;
CODE_159ACE:    LDA #$05                    ; $15:9ACE: A9 05       ;
CODE_159AD0:    STA [$01],y                 ; $15:9AD0: 97 01       ;
CODE_159AD2:    BRA CODE_159AF8             ; $15:9AD2: 80 24       ;

CODE_159AD4:    CPY #$D0                    ; $15:9AD4: C0 D0       ;
CODE_159AD6:    BCC CODE_159AE5             ; $15:9AD6: 90 0D       ;
CODE_159AD8:    TYA                         ; $15:9AD8: 98          ;
CODE_159AD9:    AND #$0F                    ; $15:9AD9: 29 0F       ;
CODE_159ADB:    BEQ CODE_159AE5             ; $15:9ADB: F0 08       ;
CODE_159ADD:    CMP #$06                    ; $15:9ADD: C9 06       ;
CODE_159ADF:    BCC CODE_159AF8             ; $15:9ADF: 90 17       ;

CODE_159AE1:    CMP #$0A                    ; $15:9AE1: C9 0A       ;
CODE_159AE3:    BCS CODE_159AF8                     ; $15:9AE3: B0 13       ;
CODE_159AE5:    LDA $02                     ; $15:9AE5: A5 02       ;
CODE_159AE7:    STA $0715                   ; $15:9AE7: 8D 15 07    ;
CODE_159AEA:    CLC                         ; $15:9AEA: 18          ;
CODE_159AEB:    ADC #$70                    ; $15:9AEB: 69 70       ;
CODE_159AED:    STA $02                     ; $15:9AED: 85 02       ;
CODE_159AEF:    LDA #$01                    ; $15:9AEF: A9 01       ;
CODE_159AF1:    STA [$01],y                 ; $15:9AF1: 97 01       ;
CODE_159AF3:    LDA $0715                   ; $15:9AF3: AD 15 07    ;
CODE_159AF6:    STA $02                     ; $15:9AF6: 85 02       ;
CODE_159AF8:    INY                         ; $15:9AF8: C8          ;
CODE_159AF9:    TYA                         ; $15:9AF9: 98          ;
CODE_159AFA:    AND #$0F                    ; $15:9AFA: 29 0F       ;
CODE_159AFC:    STA $0713                   ; $15:9AFC: 8D 13 07    ;
CODE_159AFF:    BEQ CODE_159B04             ; $15:9AFF: F0 03       ;
CODE_159B01:    JMP CODE_159A4E             ; $15:9B01: 4C 4E 9A    ;

CODE_159B04:    RTS                         ; $15:9B04: 60          ;

CODE_159B05:    LDA $05                     ; $15:9B05: A5 05       ;
CODE_159B07:    STA $0717                   ; $15:9B07: 8D 17 07    ;
CODE_159B0A:    LDA $06                     ; $15:9B0A: A5 06       ;
CODE_159B0C:    STA $0718                   ; $15:9B0C: 8D 18 07    ;
CODE_159B0F:    LDY #$00                    ; $15:9B0F: A0 00       ;
CODE_159B11:    LDA $076B                   ; $15:9B11: AD 6B 07    ;
CODE_159B14:    ASL A                       ; $15:9B14: 0A          ;
CODE_159B15:    TAX                         ; $15:9B15: AA          ;
CODE_159B16:    LDA.l PNTR_15C440,x                 ; $15:9B16: BF 40 C4 15 ;
CODE_159B1A:    STA $05                     ; $15:9B1A: 85 05       ;
CODE_159B1C:    INX                         ; $15:9B1C: E8          ;
CODE_159B1D:    LDA.l PNTR_15C440,x                 ; $15:9B1D: BF 40 C4 15 ;
CODE_159B21:    STA $06                     ; $15:9B21: 85 06       ;
CODE_159B23:    LDA #$15                    ; $15:9B23: A9 15       ;
CODE_159B25:    STA $07                     ; $15:9B25: 85 07       ;
CODE_159B27:    LDA [$05],y                 ; $15:9B27: B7 05       ;
CODE_159B29:    CMP #$FF                    ; $15:9B29: C9 FF       ;
CODE_159B2B:    BEQ CODE_159B38             ; $15:9B2B: F0 0B       ;
CODE_159B2D:    STA $076D                   ; $15:9B2D: 8D 6D 07    ;
CODE_159B30:    PHY                         ; $15:9B30: 5A          ;
CODE_159B31:    JSR CODE_159B43             ; $15:9B31: 20 43 9B    ;
CODE_159B34:    PLY                         ; $15:9B34: 7A          ;
CODE_159B35:    INY                         ; $15:9B35: C8          ;
CODE_159B36:    BRA CODE_159B11             ; $15:9B36: 80 D9       ;

CODE_159B38:    LDA $0717                   ; $15:9B38: AD 17 07    ;
CODE_159B3B:    STA $05                     ; $15:9B3B: 85 05       ;
CODE_159B3D:    LDA $0718                   ; $15:9B3D: AD 18 07    ;
CODE_159B40:    STA $06                     ; $15:9B40: 85 06       ;
CODE_159B42:    RTL                         ; $15:9B42: 6B          ;

CODE_159B43:    ASL A                       ; $15:9B43: 0A          ;
CODE_159B44:    TAX                         ; $15:9B44: AA          ;
CODE_159B45:    LDA.l PNTR_15C140,x                 ; $15:9B45: BF 40 C1 15 ;
CODE_159B49:    STA $05                     ; $15:9B49: 85 05       ;
CODE_159B4B:    INX                         ; $15:9B4B: E8          ;
CODE_159B4C:    LDA.l PNTR_15C140,x                 ; $15:9B4C: BF 40 C1 15 ;
CODE_159B50:    STA $06                     ; $15:9B50: 85 06       ;
CODE_159B52:    LDA #$15                    ; $15:9B52: A9 15       ;
CODE_159B54:    STA $07                     ; $15:9B54: 85 07       ;
CODE_159B56:    LDY #$00                    ; $15:9B56: A0 00       ;
CODE_159B58:    LDA [$05],y                 ; $15:9B58: B7 05       ;
CODE_159B5A:    STA $E7                     ; $15:9B5A: 85 E7       ;
CODE_159B5C:    INY                         ; $15:9B5C: C8          ;
CODE_159B5D:    LDA [$05],y                 ; $15:9B5D: B7 05       ;
CODE_159B5F:    AND #$F0                    ; $15:9B5F: 29 F0       ;
CODE_159B61:    LSR A                       ; $15:9B61: 4A          ;
CODE_159B62:    LSR A                       ; $15:9B62: 4A          ;
CODE_159B63:    LSR A                       ; $15:9B63: 4A          ;
CODE_159B64:    LSR A                       ; $15:9B64: 4A          ;
CODE_159B65:    STA $0E                     ; $15:9B65: 85 0E       ;
CODE_159B67:    STA $0D                     ; $15:9B67: 85 0D       ;
CODE_159B69:    LDA [$05],y                 ; $15:9B69: B7 05       ;
CODE_159B6B:    AND #$0F                    ; $15:9B6B: 29 0F       ;
CODE_159B6D:    STA $0F                     ; $15:9B6D: 85 0F       ;
CODE_159B6F:    JSR CODE_159B76             ; $15:9B6F: 20 76 9B    ;
CODE_159B72:    STZ $02E4                   ; $15:9B72: 9C E4 02    ;
CODE_159B75:    RTS                         ; $15:9B75: 60          ;

CODE_159B76:    LDA #$02                    ; $15:9B76: A9 02       ;
CODE_159B78:    STA $02E3                   ; $15:9B78: 8D E3 02    ;
CODE_159B7B:    LDA $E7                     ; $15:9B7B: A5 E7       ;
CODE_159B7D:    STA $02E2                   ; $15:9B7D: 8D E2 02    ;
CODE_159B80:    STA $0C                     ; $15:9B80: 85 0C       ;
CODE_159B82:    STZ $076C                   ; $15:9B82: 9C 6C 07    ;
CODE_159B85:    LDY $02E2                   ; $15:9B85: AC E2 02    ;
CODE_159B88:    LDA [$C4],y                 ; $15:9B88: B7 C4       ;
CODE_159B8A:    CMP #$5B                    ; $15:9B8A: C9 5B       ;
CODE_159B8C:    BEQ CODE_159BC6             ; $15:9B8C: F0 38       ;
CODE_159B8E:    LDY $02E3                   ; $15:9B8E: AC E3 02    ;
CODE_159B91:    LDA [$05],y                 ; $15:9B91: B7 05       ;
CODE_159B93:    CMP #$40                    ; $15:9B93: C9 40       ;
CODE_159B95:    BEQ CODE_159BA9             ; $15:9B95: F0 12       ;
CODE_159B97:    CMP #$AB                    ; $15:9B97: C9 AB       ;
CODE_159B99:    BEQ CODE_159BA9             ; $15:9B99: F0 0E       ;
CODE_159B9B:    CMP #$9D                    ; $15:9B9B: C9 9D       ;
CODE_159B9D:    BEQ CODE_159BA9             ; $15:9B9D: F0 0A       ;
CODE_159B9F:    CMP #$9C                    ; $15:9B9F: C9 9C       ;
CODE_159BA1:    BEQ CODE_159BA9             ; $15:9BA1: F0 06       ;
CODE_159BA3:    CLC                         ; $15:9BA3: 18          ;
CODE_159BA4:    ADC #$2C                    ; $15:9BA4: 69 2C       ;
CODE_159BA6:    INC $076C                   ; $15:9BA6: EE 6C 07    ;
CODE_159BA9:    LDY $02E2                   ; $15:9BA9: AC E2 02    ;
CODE_159BAC:    STA [$C4],y                 ; $15:9BAC: 97 C4       ;
CODE_159BAE:    LDX $076C                   ; $15:9BAE: AE 6C 07    ;
CODE_159BB1:    BEQ CODE_159BC6             ; $15:9BB1: F0 13       ;
CODE_159BB3:    LDA $C5                     ; $15:9BB3: A5 C5       ;
CODE_159BB5:    STA $0714                   ; $15:9BB5: 8D 14 07    ;
CODE_159BB8:    CLC                         ; $15:9BB8: 18          ;
CODE_159BB9:    ADC #$70                    ; $15:9BB9: 69 70       ;
CODE_159BBB:    STA $C5                     ; $15:9BBB: 85 C5       ;
CODE_159BBD:    LDA #$01                    ; $15:9BBD: A9 01       ;
CODE_159BBF:    STA [$C4],y                 ; $15:9BBF: 97 C4       ;
CODE_159BC1:    LDA $0714                   ; $15:9BC1: AD 14 07    ;
CODE_159BC4:    STA $C5                     ; $15:9BC4: 85 C5       ;
CODE_159BC6:    INC $02E3                   ; $15:9BC6: EE E3 02    ;
CODE_159BC9:    LDY $02E2                   ; $15:9BC9: AC E2 02    ;
CODE_159BCC:    JSR CODE_159BEF             ; $15:9BCC: 20 EF 9B    ;
CODE_159BCF:    STY $02E2                   ; $15:9BCF: 8C E2 02    ;
CODE_159BD2:    DEC $0E                     ; $15:9BD2: C6 0E       ;
CODE_159BD4:    LDA $0E                     ; $15:9BD4: A5 0E       ;
CODE_159BD6:    BPL CODE_159B82             ; $15:9BD6: 10 AA       ;
CODE_159BD8:    DEC $0F                     ; $15:9BD8: C6 0F       ;
CODE_159BDA:    LDA $0F                     ; $15:9BDA: A5 0F       ;
CODE_159BDC:    BMI CODE_159BEE             ; $15:9BDC: 30 10       ;
CODE_159BDE:    LDY $0C                     ; $15:9BDE: A4 0C       ;
CODE_159BE0:    JSR CODE_159C04             ; $15:9BE0: 20 04 9C    ;
CODE_159BE3:    STY $0C                     ; $15:9BE3: 84 0C       ;
CODE_159BE5:    STY $02E2                   ; $15:9BE5: 8C E2 02    ;
CODE_159BE8:    LDA $0D                     ; $15:9BE8: A5 0D       ;
CODE_159BEA:    STA $0E                     ; $15:9BEA: 85 0E       ;
CODE_159BEC:    BRA CODE_159B82             ; $15:9BEC: 80 94       ;

CODE_159BEE:    RTS                         ; $15:9BEE: 60          ;

CODE_159BEF:    TYA                         ; $15:9BEF: 98          ;
CODE_159BF0:    CLC                         ; $15:9BF0: 18          ;
CODE_159BF1:    ADC #$10                    ; $15:9BF1: 69 10       ;
CODE_159BF3:    TAY                         ; $15:9BF3: A8          ;
CODE_159BF4:    CMP #$F0                    ; $15:9BF4: C9 F0       ;
CODE_159BF6:    BCC CODE_159C03             ; $15:9BF6: 90 0B       ;
CODE_159BF8:    INC $E9                     ; $15:9BF8: E6 E9       ;
CODE_159BFA:    LDX $E9                     ; $15:9BFA: A6 E9       ;
CODE_159BFC:    JSR CODE_159C2D             ; $15:9BFC: 20 2D 9C    ;
CODE_159BFF:    TYA                         ; $15:9BFF: 98          ;
CODE_159C00:    AND #$0F                    ; $15:9C00: 29 0F       ;
CODE_159C02:    TAY                         ; $15:9C02: A8          ;
CODE_159C03:    RTS                         ; $15:9C03: 60          ;

CODE_159C04:    INY                         ; $15:9C04: C8          ;
CODE_159C05:    LDA $0628                   ; $15:9C05: AD 28 06    ;
CODE_159C08:    BEQ CODE_159C0E             ; $15:9C08: F0 04       ;
CODE_159C0A:    LDX #$0A                    ; $15:9C0A: A2 0A       ;
CODE_159C0C:    BRA CODE_159C29             ; $15:9C0C: 80 1B       ;
CODE_159C0E:    LDA $076D                   ; $15:9C0E: AD 6D 07    ;
CODE_159C11:    CMP #$07                    ; $15:9C11: C9 07       ;
CODE_159C13:    BEQ CODE_159C27             ; $15:9C13: F0 12       ;
CODE_159C15:    CMP #$08                    ; $15:9C15: C9 08       ;
CODE_159C17:    BEQ CODE_159C27             ; $15:9C17: F0 0E       ;
CODE_159C19:    DEC $E9                     ; $15:9C19: C6 E9       ;
CODE_159C1B:    LDX $E9                     ; $15:9C1B: A6 E9       ;
CODE_159C1D:    CPX #$FF                    ; $15:9C1D: E0 FF       ;
CODE_159C1F:    BNE CODE_159C29             ; $15:9C1F: D0 08       ;
CODE_159C21:    LDX #$00                    ; $15:9C21: A2 00       ;
CODE_159C23:    STX $E9                     ; $15:9C23: 86 E9       ;
CODE_159C25:    BRA CODE_159C29             ; $15:9C25: 80 02       ;

CODE_159C27:    LDX #$01                    ; $15:9C27: A2 01       ;
CODE_159C29:    JSR CODE_159C2D             ; $15:9C29: 20 2D 9C    ;
CODE_159C2C:    RTS                         ; $15:9C2C: 60          ;

CODE_159C2D:    PHY                         ; $15:9C2D: 5A          ;
CODE_159C2E:    LDA $0628                   ; $15:9C2E: AD 28 06    ;
CODE_159C31:    BEQ CODE_159C37             ; $15:9C31: F0 04       ;
CODE_159C33:    LDY #$00                    ; $15:9C33: A0 00       ;
CODE_159C35:    BRA CODE_159C3A             ; $15:9C35: 80 03       ;
CODE_159C37:    LDY $0534                   ; $15:9C37: AC 34 05    ;
CODE_159C3A:    LDA.w DATA_11AB11,y                 ; $15:9C3A: B9 11 AB    ;
CODE_159C3D:    CLC                         ; $15:9C3D: 18          ;
CODE_159C3E:    ADC.w DATA_11AAFB,x                 ; $15:9C3E: 7D FB AA    ;
CODE_159C41:    STA $C5                     ; $15:9C41: 85 C5       ;
CODE_159C43:    LDA.w DATA_11AAF0,x                 ; $15:9C43: BD F0 AA    ;
CODE_159C46:    STA $C4                     ; $15:9C46: 85 C4       ;
CODE_159C48:    LDA.w DATA_11AB06,x                 ; $15:9C48: BD 06 AB    ;
CODE_159C4B:    STA $C6                     ; $15:9C4B: 85 C6       ;
CODE_159C4D:    PLY                         ; $15:9C4D: 7A          ;
CODE_159C4E:    RTS                         ; $15:9C4E: 60          ;

DATA_159C4F:        db $15,$16

DATA_159C51:        db $01,$02

CODE_159C53:    LDA $0533                   ; $15:9C53: AD 33 05    ;
CODE_159C56:    CMP #$05                    ; $15:9C56: C9 05       ;
CODE_159C58:    BNE CODE_159C85             ; $15:9C58: D0 2B       ;
CODE_159C5A:    LDA #$11                    ; $15:9C5A: A9 11       ;
CODE_159C5C:    STA $00                     ; $15:9C5C: 85 00       ;
CODE_159C5E:    LDA #$C1                    ; $15:9C5E: A9 C1       ;
CODE_159C60:    STA $03                     ; $15:9C60: 85 03       ;
CODE_159C62:    LDA #$6D                    ; $15:9C62: A9 6D       ;
CODE_159C64:    STA $01                     ; $15:9C64: 85 01       ;
CODE_159C66:    STA $04                     ; $15:9C66: 85 04       ;
CODE_159C68:    LDA #$7E                    ; $15:9C68: A9 7E       ;
CODE_159C6A:    STA $02                     ; $15:9C6A: 85 02       ;
CODE_159C6C:    STA $05                     ; $15:9C6C: 85 05       ;
CODE_159C6E:    LDY #$00                    ; $15:9C6E: A0 00       ;
CODE_159C70:    TYA                         ; $15:9C70: 98          ;
CODE_159C71:    AND #$01                    ; $15:9C71: 29 01       ;
CODE_159C73:    TAX                         ; $15:9C73: AA          ;
CODE_159C74:    LDA.l DATA_159C4F,x                 ; $15:9C74: BF 4F 9C 15 ;
CODE_159C78:    STA [$00],y                 ; $15:9C78: 97 00       ;
CODE_159C7A:    LDA.l DATA_159C51,x                 ; $15:9C7A: BF 51 9C 15 ;
CODE_159C7E:    STA [$03],y                 ; $15:9C7E: 97 03       ;
CODE_159C80:    INY                         ; $15:9C80: C8          ;
CODE_159C81:    CPY #$0E                    ; $15:9C81: C0 0E       ;
CODE_159C83:    BNE CODE_159C70             ; $15:9C83: D0 EB       ;
CODE_159C85:    RTL                         ; $15:9C85: 6B          ;

DATA_159C86:        db $F1,$F2,$F3,$F4,$EF,$F0

CODE_159C8C:    LDA $0533               ; $15:9C8C: AD 33 05    ;
CODE_159C8F:    CMP #$13                ; $15:9C8F: C9 13       ;
CODE_159C91:    BNE CODE_159C85         ; $15:9C91: D0 F2       ;
CODE_159C93:    LDA $0534               ; $15:9C93: AD 34 05    ;
CODE_159C96:    CMP #$05                    ; $15:9C96: C9 05       ;
CODE_159C98:    BNE CODE_159C85             ; $15:9C98: D0 EB       ;
CODE_159C9A:    STZ $0712                   ; $15:9C9A: 9C 12 07    ;
CODE_159C9D:    STZ $0713                   ; $15:9C9D: 9C 13 07    ;
CODE_159CA0:    STZ $0714                   ; $15:9CA0: 9C 14 07    ;
CODE_159CA3:    LDX #$00                    ; $15:9CA3: A2 00       ;
CODE_159CA5:    JSR CODE_159C2D             ; $15:9CA5: 20 2D 9C    ;
CODE_159CA8:    REP #$20                    ; $15:9CA8: C2 20       ;
CODE_159CAA:    LDA $0712                   ; $15:9CAA: AD 12 07    ;
CODE_159CAD:    AND #$00FF                  ; $15:9CAD: 29 FF 00    ;
CODE_159CB0:    ASL A                       ; $15:9CB0: 0A          ;
CODE_159CB1:    ASL A                       ; $15:9CB1: 0A          ;
CODE_159CB2:    ASL A                       ; $15:9CB2: 0A          ;
CODE_159CB3:    ASL A                       ; $15:9CB3: 0A          ;
CODE_159CB4:    CLC                         ; $15:9CB4: 18          ;
CODE_159CB5:    ADC $C4                     ; $15:9CB5: 65 C4       ;
CODE_159CB7:    STA $C4                     ; $15:9CB7: 85 C4       ;
CODE_159CB9:    SEP #$20                    ; $15:9CB9: E2 20       ;
CODE_159CBB:    LDA $0541                   ; $15:9CBB: AD 41 05    ;
CODE_159CBE:    STA $0715                   ; $15:9CBE: 8D 15 07    ;
CODE_159CC1:    LDA $0713                   ; $15:9CC1: AD 13 07    ;
CODE_159CC4:    STA $0714                   ; $15:9CC4: 8D 14 07    ;
CODE_159CC7:    LDY #$00                    ; $15:9CC7: A0 00       ;
CODE_159CC9:    LDA [$C4],y                 ; $15:9CC9: B7 C4       ;
CODE_159CCB:    CMP #$AA                    ; $15:9CCB: C9 AA       ;
CODE_159CCD:    BEQ CODE_159CD7             ; $15:9CCD: F0 08       ;
CODE_159CCF:    CMP #$DD                    ; $15:9CCF: C9 DD       ;
CODE_159CD1:    BEQ CODE_159CD7             ; $15:9CD1: F0 04       ;
CODE_159CD3:    CMP #$2D                    ; $15:9CD3: C9 2D       ;
CODE_159CD5:    BNE CODE_159CE0             ; $15:9CD5: D0 09       ;
CODE_159CD7:    LDX $0714                   ; $15:9CD7: AE 14 07    ;
CODE_159CDA:    LDA.l DATA_159C86,x                 ; $15:9CDA: BF 86 9C 15 ;
CODE_159CDE:    STA [$C4],y                 ; $15:9CDE: 97 C4       ;
CODE_159CE0:    INC $0714                   ; $15:9CE0: EE 14 07    ;
CODE_159CE3:    LDA $0714                   ; $15:9CE3: AD 14 07    ;
CODE_159CE6:    CMP #$06                    ; $15:9CE6: C9 06       ;
CODE_159CE8:    BNE CODE_159CED             ; $15:9CE8: D0 03       ;
CODE_159CEA:    STZ $0714                   ; $15:9CEA: 9C 14 07    ;
CODE_159CED:    INY                         ; $15:9CED: C8          ;
CODE_159CEE:    CPY #$10                    ; $15:9CEE: C0 10       ;
CODE_159CF0:    BNE CODE_159CC9             ; $15:9CF0: D0 D7       ;
CODE_159CF2:    REP #$20                    ; $15:9CF2: C2 20       ;
CODE_159CF4:    LDA $C4                     ; $15:9CF4: A5 C4       ;
CODE_159CF6:    CLC                         ; $15:9CF6: 18          ;
CODE_159CF7:    ADC #$00F0                  ; $15:9CF7: 69 F0 00    ;
CODE_159CFA:    STA $C4                     ; $15:9CFA: 85 C4       ;
CODE_159CFC:    SEP #$20                    ; $15:9CFC: E2 20       ;
CODE_159CFE:    DEC $0715                   ; $15:9CFE: CE 15 07    ;
CODE_159D01:    BPL CODE_159CC7             ; $15:9D01: 10 C4       ;
CODE_159D03:    INC $0713                   ; $15:9D03: EE 13 07    ;
CODE_159D06:    LDA $0713                   ; $15:9D06: AD 13 07    ;
CODE_159D09:    CMP #$06                    ; $15:9D09: C9 06       ;
CODE_159D0B:    BNE CODE_159D10             ; $15:9D0B: D0 03       ;
CODE_159D0D:    STZ $0713                   ; $15:9D0D: 9C 13 07    ;
CODE_159D10:    INC $0712                   ; $15:9D10: EE 12 07    ;
CODE_159D13:    LDA $0712                   ; $15:9D13: AD 12 07    ;
CODE_159D16:    CMP #$0F                    ; $15:9D16: C9 0F       ;
CODE_159D18:    BNE CODE_159CA3             ; $15:9D18: D0 89       ;
CODE_159D1A:    RTL                         ; $15:9D1A: 6B          ;

DATA_159D1B:        db $00,$01,$02,$03,$04,$05,$06,$07
                    db $08,$09,$0A,$0B,$10,$11,$12,$13
                    db $14,$15,$16,$17,$18,$19,$1A,$1B

DATA_159D33:        db $20,$21,$22,$23,$24,$25,$26,$27
                    db $28,$29,$2A,$2B,$20,$21,$22,$23
                    db $24,$25,$26,$27,$28,$29,$2A,$2B

CODE_159D4B:    STY $0712                   ; $15:9D4B: 8C 12 07    ;
CODE_159D4E:    STX $0715                   ; $15:9D4E: 8E 15 07    ;
CODE_159D51:    LDA $050F                   ; $15:9D51: AD 0F 05    ;
CODE_159D54:    CMP #$0A                    ; $15:9D54: C9 0A       ;
CODE_159D56:    BNE CODE_159DBC             ; $15:9D56: D0 64       ;
CODE_159D58:    LDA $0534                   ; $15:9D58: AD 34 05    ;
CODE_159D5B:    CMP #$02                    ; $15:9D5B: C9 02       ;
CODE_159D5D:    BNE CODE_159D66             ; $15:9D5D: D0 07       ;
CODE_159D5F:    TYA                         ; $15:9D5F: 98          ;
CODE_159D60:    AND #$F0                    ; $15:9D60: 29 F0       ;
CODE_159D62:    CMP #$90                    ; $15:9D62: C9 90       ;
CODE_159D64:    BEQ CODE_159DBC             ; $15:9D64: F0 56       ;
CODE_159D66:    TYA                         ; $15:9D66: 98          ;
CODE_159D67:    CLC                         ; $15:9D67: 18          ;
CODE_159D68:    ADC #$10                    ; $15:9D68: 69 10       ;
CODE_159D6A:    TAY                         ; $15:9D6A: A8          ;
CODE_159D6B:    LDA [$01],y                 ; $15:9D6B: B7 01       ;
CODE_159D6D:    CMP #$40                    ; $15:9D6D: C9 40       ;
CODE_159D6F:    BEQ CODE_159DBC             ; $15:9D6F: F0 4B       ;
CODE_159D71:    STA $0716                   ; $15:9D71: 8D 16 07    ;
CODE_159D74:    LDA $01                     ; $15:9D74: A5 01       ;
CODE_159D76:    STA $0713                   ; $15:9D76: 8D 13 07    ;
CODE_159D79:    LDA $02                     ; $15:9D79: A5 02       ;
CODE_159D7B:    STA $0714                   ; $15:9D7B: 8D 14 07    ;
CODE_159D7E:    REP #$20                    ; $15:9D7E: C2 20       ;
CODE_159D80:    LDA $01                     ; $15:9D80: A5 01       ;
CODE_159D82:    CLC                         ; $15:9D82: 18          ;
CODE_159D83:    ADC #$7000                  ; $15:9D83: 69 00 70    ;
CODE_159D86:    STA $01                     ; $15:9D86: 85 01       ;
CODE_159D88:    SEP #$20                    ; $15:9D88: E2 20       ;
CODE_159D8A:    LDA [$01],y                 ; $15:9D8A: B7 01       ;
CODE_159D8C:    BEQ CODE_159DB2             ; $15:9D8C: F0 24       ;
CODE_159D8E:    LDA $0713                   ; $15:9D8E: AD 13 07    ;
CODE_159D91:    STA $01                     ; $15:9D91: 85 01       ;
CODE_159D93:    LDA $0714                   ; $15:9D93: AD 14 07    ;
CODE_159D96:    STA $02                     ; $15:9D96: 85 02       ;
CODE_159D98:    LDA $0716                   ; $15:9D98: AD 16 07    ;
CODE_159D9B:    SEC                         ; $15:9D9B: 38          ;
CODE_159D9C:    SBC #$5C                    ; $15:9D9C: E9 5C       ;
CODE_159D9E:    LDX #$17                    ; $15:9D9E: A2 17       ;
CODE_159DA0:    CMP.l DATA_159D1B,x                 ; $15:9DA0: DF 1B 9D 15 ;
CODE_159DA4:    BEQ CODE_159DA9             ; $15:9DA4: F0 03       ;
CODE_159DA6:    DEX                         ; $15:9DA6: CA          ;
CODE_159DA7:    BPL CODE_159DA0             ; $15:9DA7: 10 F7       ;
CODE_159DA9:    LDA.l DATA_159D33,x                 ; $15:9DA9: BF 33 9D 15 ;
CODE_159DAD:    CLC                         ; $15:9DAD: 18          ;
CODE_159DAE:    ADC #$5C                    ; $15:9DAE: 69 5C       ;
CODE_159DB0:    STA [$01],y                 ; $15:9DB0: 97 01       ;
CODE_159DB2:    LDA $0713                   ; $15:9DB2: AD 13 07    ;
CODE_159DB5:    STA $01                     ; $15:9DB5: 85 01       ;
CODE_159DB7:    LDA $0714                   ; $15:9DB7: AD 14 07    ;
CODE_159DBA:    STA $02                     ; $15:9DBA: 85 02       ;
CODE_159DBC:    LDY $0712                   ; $15:9DBC: AC 12 07    ;
CODE_159DBF:    LDX $0715                   ; $15:9DBF: AE 15 07    ;
CODE_159DC2:    RTL                         ; $15:9DC2: 6B          ;

DATA_159DC3:        db $06,$05,$12,$11,$0A

DATA_159DC8:        db $01,$02

CODE_159DCA:    STZ $0714                   ; $15:9DCA: 9C 14 07    ;
CODE_159DCD:    STZ $0716                   ; $15:9DCD: 9C 16 07    ;
CODE_159DD0:    LDX $E9                     ; $15:9DD0: A6 E9       ;
CODE_159DD2:    JSR CODE_159E48             ; $15:9DD2: 20 48 9E    ;
CODE_159DD5:    LDA $050E                   ; $15:9DD5: AD 0E 05    ;
CODE_159DD8:    STA $07                     ; $15:9DD8: 85 07       ;
CODE_159DDA:    LDY $E7                     ; $15:9DDA: A4 E7       ;
CODE_159DDC:    LDX #$00                    ; $15:9DDC: A2 00       ;
CODE_159DDE:    TYA                         ; $15:9DDE: 98          ;
CODE_159DDF:    AND #$10                    ; $15:9DDF: 29 10       ;
CODE_159DE1:    BEQ CODE_159DE5             ; $15:9DE1: F0 02       ;
CODE_159DE3:    INX                         ; $15:9DE3: E8          ;
CODE_159DE4:    INX                         ; $15:9DE4: E8          ;
CODE_159DE5:    TYA                         ; $15:9DE5: 98          ;
CODE_159DE6:    AND #$01                    ; $15:9DE6: 29 01       ;
CODE_159DE8:    BEQ CODE_159DEB             ; $15:9DE8: F0 01       ;
CODE_159DEA:    INX                         ; $15:9DEA: E8          ;
CODE_159DEB:    LDA $0714                   ; $15:9DEB: AD 14 07    ;
CODE_159DEE:    BEQ CODE_159DF2             ; $15:9DEE: F0 02       ;
CODE_159DF0:    LDX #$04                    ; $15:9DF0: A2 04       ;
CODE_159DF2:    LDA $0716                   ; $15:9DF2: AD 16 07    ;
CODE_159DF5:    BNE CODE_159E07             ; $15:9DF5: D0 10       ;
CODE_159DF7:    LDA [$01],y                 ; $15:9DF7: B7 01       ;
CODE_159DF9:    CMP #$40                    ; $15:9DF9: C9 40       ;
CODE_159DFB:    BNE CODE_159E07             ; $15:9DFB: D0 0A       ;
CODE_159DFD:    TXA                         ; $15:9DFD: 8A          ;
CODE_159DFE:    AND #$01                    ; $15:9DFE: 29 01       ;
CODE_159E00:    TAX                         ; $15:9E00: AA          ;
CODE_159E01:    LDA.l DATA_159DC8,x                 ; $15:9E01: BF C8 9D 15 ;
CODE_159E05:    BRA CODE_159E0B             ; $15:9E05: 80 04       ;

CODE_159E07:    LDA.l DATA_159DC3,x                 ; $15:9E07: BF C3 9D 15 ;
CODE_159E0B:    STA [$01],y                 ; $15:9E0B: 97 01       ;
CODE_159E0D:    LDA $02                     ; $15:9E0D: A5 02       ;
CODE_159E0F:    STA $0715                   ; $15:9E0F: 8D 15 07    ;
CODE_159E12:    CLC                         ; $15:9E12: 18          ;
CODE_159E13:    ADC #$70                    ; $15:9E13: 69 70       ;
CODE_159E15:    STA $02                     ; $15:9E15: 85 02       ;
CODE_159E17:    LDA $0714                   ; $15:9E17: AD 14 07    ;
CODE_159E1A:    BNE CODE_159E20             ; $15:9E1A: D0 04       ;
CODE_159E1C:    LDA #$01                    ; $15:9E1C: A9 01       ;
CODE_159E1E:    BRA CODE_159E22             ; $15:9E1E: 80 02       ;

CODE_159E20:    LDA #$00                    ; $15:9E20: A9 00       ;
CODE_159E22:    STA [$01],y                 ; $15:9E22: 97 01       ;
CODE_159E24:    LDA $0715                   ; $15:9E24: AD 15 07    ;
CODE_159E27:    STA $02                     ; $15:9E27: 85 02       ;
CODE_159E29:    JSR CODE_159651             ; $15:9E29: 20 51 96    ;
CODE_159E2C:    DEC $07                     ; $15:9E2C: C6 07       ;
CODE_159E2E:    BPL CODE_159DDC             ; $15:9E2E: 10 AC       ;
CODE_159E30:    LDA #$01                    ; $15:9E30: A9 01       ;
CODE_159E32:    STA $0716                   ; $15:9E32: 8D 16 07    ;
CODE_159E35:    LDA $E7                     ; $15:9E35: A5 E7       ;
CODE_159E37:    CLC                         ; $15:9E37: 18          ;
CODE_159E38:    ADC #$10                    ; $15:9E38: 69 10       ;
CODE_159E3A:    STA $E7                     ; $15:9E3A: 85 E7       ;
CODE_159E3C:    CMP #$C0                    ; $15:9E3C: C9 C0       ;
CODE_159E3E:    BCC CODE_159DD0             ; $15:9E3E: 90 90       ;
CODE_159E40:    INC $0714                   ; $15:9E40: EE 14 07    ;
CODE_159E43:    CMP #$D0                    ; $15:9E43: C9 D0       ;
CODE_159E45:    BCC CODE_159DD0             ; $15:9E45: 90 89       ;
CODE_159E47:    RTL                         ; $15:9E47: 6B          ;

CODE_159E48:    STY $02F5                   ; $15:9E48: 8C F5 02    ;
CODE_159E4B:    LDY $0534                   ; $15:9E4B: AC 34 05    ;
CODE_159E4E:    LDA.w DATA_11AB11,y                 ; $15:9E4E: B9 11 AB    ;
CODE_159E51:    CLC                         ; $15:9E51: 18          ;
CODE_159E52:    ADC.w DATA_11AAFB,x                 ; $15:9E52: 7D FB AA    ;
CODE_159E55:    STA $02                     ; $15:9E55: 85 02       ;
CODE_159E57:    LDA.w DATA_11AAF0,x                 ; $15:9E57: BD F0 AA    ;
CODE_159E5A:    STA $01                     ; $15:9E5A: 85 01       ;
CODE_159E5C:    LDA.w DATA_11AB06,x                 ; $15:9E5C: BD 06 AB    ;
CODE_159E5F:    STA $03                     ; $15:9E5F: 85 03       ;
CODE_159E61:    LDY $02F5                   ; $15:9E61: AC F5 02    ;
CODE_159E64:    RTS                         ; $15:9E64: 60          ;

CODE_159E65:    STZ $E9                     ; $15:9E65: 64 E9       ;
CODE_159E67:    JSR CODE_1594EC             ; $15:9E67: 20 EC 94    ;
CODE_159E6A:    STZ $0F                     ; $15:9E6A: 64 0F       ;
CODE_159E6C:    LDX $0F                     ; $15:9E6C: A6 0F       ;
CODE_159E6E:    LDA.l DATA_15C5CE,x                 ; $15:9E6E: BF CE C5 15 ;
CODE_159E72:    CMP #$FF                    ; $15:9E72: C9 FF       ;
CODE_159E74:    BEQ CODE_159E9C             ; $15:9E74: F0 26       ;
CODE_159E76:    ASL A                       ; $15:9E76: 0A          ;
CODE_159E77:    TAX                         ; $15:9E77: AA          ;
CODE_159E78:    LDA.l PNTR_15C466,x                 ; $15:9E78: BF 66 C4 15 ;
CODE_159E7C:    STA $C4                     ; $15:9E7C: 85 C4       ;
CODE_159E7E:    INX                         ; $15:9E7E: E8          ;
CODE_159E7F:    LDA.l PNTR_15C466,x                 ; $15:9E7F: BF 66 C4 15 ;
CODE_159E83:    STA $C5                     ; $15:9E83: 85 C5       ;
CODE_159E85:    LDA #$15                    ; $15:9E85: A9 15       ;
CODE_159E87:    STA $C6                     ; $15:9E87: 85 C6       ;
CODE_159E89:    LDX $0F                     ; $15:9E89: A6 0F       ;
CODE_159E8B:    INX                         ; $15:9E8B: E8          ;
CODE_159E8C:    LDA.l DATA_15C5CE,x                 ; $15:9E8C: BF CE C5 15 ;
CODE_159E90:    DEC A                       ; $15:9E90: 3A          ;
CODE_159E91:    STA $0E                     ; $15:9E91: 85 0E       ;
CODE_159E93:    JSR CODE_159E9D             ; $15:9E93: 20 9D 9E    ;
CODE_159E96:    INC $0F                     ; $15:9E96: E6 0F       ;
CODE_159E98:    INC $0F                     ; $15:9E98: E6 0F       ;
CODE_159E9A:    BRA CODE_159E6C             ; $15:9E9A: 80 D0       ;

CODE_159E9C:    RTL                         ; $15:9E9C: 6B          ;

CODE_159E9D:    LDY #$00                    ; $15:9E9D: A0 00       ;
CODE_159E9F:    LDA [$C4],y                 ; $15:9E9F: B7 C4       ;
CODE_159EA1:    STA [$01],y                 ; $15:9EA1: 97 01       ;
CODE_159EA3:    INY                         ; $15:9EA3: C8          ;
CODE_159EA4:    CPY #$10                    ; $15:9EA4: C0 10       ;
CODE_159EA6:    BMI CODE_159E9F             ; $15:9EA6: 30 F7       ;
CODE_159EA8:    REP #$20                    ; $15:9EA8: C2 20       ;
CODE_159EAA:    LDA $01                     ; $15:9EAA: A5 01       ;
CODE_159EAC:    CLC                         ; $15:9EAC: 18          ;
CODE_159EAD:    ADC #$0010                  ; $15:9EAD: 69 10 00    ;
CODE_159EB0:    STA $01                     ; $15:9EB0: 85 01       ;
CODE_159EB2:    SEP #$20                    ; $15:9EB2: E2 20       ;
CODE_159EB4:    DEC $0E                     ; $15:9EB4: C6 0E       ;
CODE_159EB6:    BPL CODE_159E9D             ; $15:9EB6: 10 E5       ;
CODE_159EB8:    RTS                         ; $15:9EB8: 60          ;

CODE_159EB9:    LDA $0533                   ; $15:9EB9: AD 33 05    ;
CODE_159EBC:    CMP #$13                    ; $15:9EBC: C9 13       ;
CODE_159EBE:    BEQ CODE_159EDD             ; $15:9EBE: F0 1D       ;
CODE_159EC0:    CMP #$12                    ; $15:9EC0: C9 12       ;
CODE_159EC2:    BNE CODE_159EC7             ; $15:9EC2: D0 03       ;
CODE_159EC4:    JMP CODE_159FC3             ; $15:9EC4: 4C C3 9F    ;

CODE_159EC7:    CMP #$01                    ; $15:9EC7: C9 01       ;
CODE_159EC9:    BNE CODE_159ECE             ; $15:9EC9: D0 03       ;
CODE_159ECB:    JMP CODE_159FF2             ; $15:9ECB: 4C F2 9F    ;

CODE_159ECE:    CMP #$02                    ; $15:9ECE: C9 02       ;
CODE_159ED0:    BNE CODE_159ED5             ; $15:9ED0: D0 03       ;
CODE_159ED2:    JMP CODE_15A037             ; $15:9ED2: 4C 37 A0    ;

CODE_159ED5:    CMP #$0D                    ; $15:9ED5: C9 0D       ;
CODE_159ED7:    BNE CODE_159EDC             ; $15:9ED7: D0 03       ;
CODE_159ED9:    JMP CODE_15A03F             ; $15:9ED9: 4C 3F A0    ;

CODE_159EDC:    RTL                         ; $15:9EDC: 6B          ;

CODE_159EDD:    STZ $0F                     ; $15:9EDD: 64 0F       ;
CODE_159EDF:    LDX #$00                    ; $15:9EDF: A2 00       ;
CODE_159EE1:    LDA.l PNTR_15C625,x                 ; $15:9EE1: BF 25 C6 15 ;
CODE_159EE5:    STA $04                     ; $15:9EE5: 85 04       ;
CODE_159EE7:    INX                         ; $15:9EE7: E8          ;
CODE_159EE8:    LDA.l PNTR_15C625,x                 ; $15:9EE8: BF 25 C6 15 ;
CODE_159EEC:    STA $05                     ; $15:9EEC: 85 05       ;
CODE_159EEE:    INX                         ; $15:9EEE: E8          ;
CODE_159EEF:    LDA.l PNTR_15C625,x                 ; $15:9EEF: BF 25 C6 15 ;
CODE_159EF3:    STA $06                     ; $15:9EF3: 85 06       ;
CODE_159EF5:    LDY #$00                    ; $15:9EF5: A0 00       ;
CODE_159EF7:    LDA [$04],y                 ; $15:9EF7: B7 04       ;
CODE_159EF9:    CMP #$FF                    ; $15:9EF9: C9 FF       ;
CODE_159EFB:    BEQ CODE_159F60             ; $15:9EFB: F0 63       ;
CODE_159EFD:    CMP #$01                    ; $15:9EFD: C9 01       ;
CODE_159EFF:    BEQ CODE_159F19             ; $15:9EFF: F0 18       ;
CODE_159F01:    INY                         ; $15:9F01: C8          ;
CODE_159F02:    LDA [$04],y                 ; $15:9F02: B7 04       ;
CODE_159F04:    ASL A                       ; $15:9F04: 0A          ;
CODE_159F05:    TAX                         ; $15:9F05: AA          ;
CODE_159F06:    LDA.l PNTR_15C890,x                 ; $15:9F06: BF 90 C8 15 ;
CODE_159F0A:    STA $C4                     ; $15:9F0A: 85 C4       ;
CODE_159F0C:    INX                         ; $15:9F0C: E8          ;
CODE_159F0D:    LDA.l PNTR_15C890,x                 ; $15:9F0D: BF 90 C8 15 ;
CODE_159F11:    STA $C5                     ; $15:9F11: 85 C5       ;
CODE_159F13:    LDA #$15                    ; $15:9F13: A9 15       ;
CODE_159F15:    STA $C6                     ; $15:9F15: 85 C6       ;
CODE_159F17:    BRA CODE_159F2F             ; $15:9F17: 80 16       ;

CODE_159F19:    INY                         ; $15:9F19: C8          ;
CODE_159F1A:    LDA [$04],y                 ; $15:9F1A: B7 04       ;
CODE_159F1C:    ASL A                       ; $15:9F1C: 0A          ;
CODE_159F1D:    TAX                         ; $15:9F1D: AA          ;
CODE_159F1E:    LDA.l PNTR_15C8B4,x                 ; $15:9F1E: BF B4 C8 15 ;
CODE_159F22:    STA $C4                     ; $15:9F22: 85 C4       ;
CODE_159F24:    INX                         ; $15:9F24: E8          ;
CODE_159F25:    LDA.l PNTR_15C8B4,x                 ; $15:9F25: BF B4 C8 15 ;
CODE_159F29:    STA $C5                     ; $15:9F29: 85 C5       ;
CODE_159F2B:    LDA #$15                    ; $15:9F2B: A9 15       ;
CODE_159F2D:    STA $C6                     ; $15:9F2D: 85 C6       ;
CODE_159F2F:    INY                         ; $15:9F2F: C8          ;
CODE_159F30:    LDA [$04],y                 ; $15:9F30: B7 04       ;
CODE_159F32:    DEC A                       ; $15:9F32: 3A          ;
CODE_159F33:    STA $0721                   ; $15:9F33: 8D 21 07    ;
CODE_159F36:    INY                         ; $15:9F36: C8          ;
CODE_159F37:    LDA [$04],y                 ; $15:9F37: B7 04       ;
CODE_159F39:    STA $01                     ; $15:9F39: 85 01       ;
CODE_159F3B:    INY                         ; $15:9F3B: C8          ;
CODE_159F3C:    LDA [$04],y                 ; $15:9F3C: B7 04       ;
CODE_159F3E:    STA $02                     ; $15:9F3E: 85 02       ;
CODE_159F40:    LDA #$7E                    ; $15:9F40: A9 7E       ;
CODE_159F42:    STA $03                     ; $15:9F42: 85 03       ;
CODE_159F44:    LDY #$00                    ; $15:9F44: A0 00       ;
CODE_159F46:    LDA [$04],y                 ; $15:9F46: B7 04       ;
CODE_159F48:    BNE CODE_159F4F             ; $15:9F48: D0 05       ;
CODE_159F4A:    JSR CODE_159F61             ; $15:9F4A: 20 61 9F    ;
CODE_159F4D:    BRA CODE_159F52             ; $15:9F4D: 80 03       ;

CODE_159F4F:    JSR CODE_159F88             ; $15:9F4F: 20 88 9F    ;
CODE_159F52:    REP #$20                    ; $15:9F52: C2 20       ;
CODE_159F54:    LDA $04                     ; $15:9F54: A5 04       ;
CODE_159F56:    CLC                         ; $15:9F56: 18          ;
CODE_159F57:    ADC #$0005                  ; $15:9F57: 69 05 00    ;
CODE_159F5A:    STA $04                     ; $15:9F5A: 85 04       ;
CODE_159F5C:    SEP #$20                    ; $15:9F5C: E2 20       ;
CODE_159F5E:    BRA CODE_159EF5             ; $15:9F5E: 80 95       ;

CODE_159F60:    RTL                         ; $15:9F60: 6B          ;

CODE_159F61:    STZ $0712                   ; $15:9F61: 9C 12 07    ;
CODE_159F64:    LDA $0712                   ; $15:9F64: AD 12 07    ;
CODE_159F67:    AND #$01                    ; $15:9F67: 29 01       ;
CODE_159F69:    TAY                         ; $15:9F69: A8          ;
CODE_159F6A:    LDA [$C4],y                 ; $15:9F6A: B7 C4       ;
CODE_159F6C:    STA [$01]                   ; $15:9F6C: 87 01       ;
CODE_159F6E:    JSR CODE_15A06B             ; $15:9F6E: 20 6B A0    ;
CODE_159F71:    DEC $0721                   ; $15:9F71: CE 21 07    ;
CODE_159F74:    BMI CODE_159F87             ; $15:9F74: 30 11       ;
CODE_159F76:    INC $0712                   ; $15:9F76: EE 12 07    ;
CODE_159F79:    REP #$20                    ; $15:9F79: C2 20       ;
CODE_159F7B:    LDA $01                     ; $15:9F7B: A5 01       ;
CODE_159F7D:    CLC                         ; $15:9F7D: 18          ;
CODE_159F7E:    ADC #$0010                  ; $15:9F7E: 69 10 00    ;
CODE_159F81:    STA $01                     ; $15:9F81: 85 01       ;
CODE_159F83:    SEP #$20                    ; $15:9F83: E2 20       ;
CODE_159F85:    BRA CODE_159F64             ; $15:9F85: 80 DD       ;
CODE_159F87:    RTS                         ; $15:9F87: 60          ;

CODE_159F88:    STZ $0712                   ; $15:9F88: 9C 12 07    ;
CODE_159F8B:    LDA $0712                   ; $15:9F8B: AD 12 07    ;
CODE_159F8E:    AND #$01                    ; $15:9F8E: 29 01       ;
CODE_159F90:    TAY                         ; $15:9F90: A8          ;
CODE_159F91:    LDA [$C4],y                 ; $15:9F91: B7 C4       ;
CODE_159F93:    STA [$01]                   ; $15:9F93: 87 01       ;
CODE_159F95:    JSR CODE_15A06B             ; $15:9F95: 20 6B A0    ;
CODE_159F98:    DEC $0721                   ; $15:9F98: CE 21 07    ;
CODE_159F9B:    BMI CODE_159FC0             ; $15:9F9B: 30 23       ;
CODE_159F9D:    INC $0712                   ; $15:9F9D: EE 12 07    ;
CODE_159FA0:    LDA $01                     ; $15:9FA0: A5 01       ;
CODE_159FA2:    AND #$0F                    ; $15:9FA2: 29 0F       ;
CODE_159FA4:    CMP #$0F                    ; $15:9FA4: C9 0F       ;
CODE_159FA6:    BEQ CODE_159FAC             ; $15:9FA6: F0 04       ;
CODE_159FA8:    INC $01                     ; $15:9FA8: E6 01       ;
CODE_159FAA:    BRA CODE_159F8B             ; $15:9FAA: 80 DF       ;

CODE_159FAC:    LDA $01                     ; $15:9FAC: A5 01       ;
CODE_159FAE:    AND #$F0                    ; $15:9FAE: 29 F0       ;
CODE_159FB0:    STA $01                     ; $15:9FB0: 85 01       ;
CODE_159FB2:    REP #$20                    ; $15:9FB2: C2 20       ;
CODE_159FB4:    LDA $01                     ; $15:9FB4: A5 01       ;
CODE_159FB6:    CLC                         ; $15:9FB6: 18          ;
CODE_159FB7:    ADC #$00F0                  ; $15:9FB7: 69 F0 00    ;
CODE_159FBA:    STA $01                     ; $15:9FBA: 85 01       ;
CODE_159FBC:    SEP #$20                    ; $15:9FBC: E2 20       ;
CODE_159FBE:    BRA CODE_159F8B             ; $15:9FBE: 80 CB       ;

CODE_159FC0:    RTS                         ; $15:9FC0: 60          ;

DATA_159FC1:        db $07,$13
      
CODE_159FC3:    LDA #$20                    ; $15:9FC3: A9 20       ;
CODE_159FC5:    STA $01                     ; $15:9FC5: 85 01       ;
CODE_159FC7:    LDA #$57                    ; $15:9FC7: A9 57       ;
CODE_159FC9:    STA $02                     ; $15:9FC9: 85 02       ;
CODE_159FCB:    LDA #$7E                    ; $15:9FCB: A9 7E       ;
CODE_159FCD:    STA $03                     ; $15:9FCD: 85 03       ;
CODE_159FCF:    STZ $0712                   ; $15:9FCF: 9C 12 07    ;
CODE_159FD2:    LDA $0712                   ; $15:9FD2: AD 12 07    ;
CODE_159FD5:    AND #$01                    ; $15:9FD5: 29 01       ;
CODE_159FD7:    TAX                         ; $15:9FD7: AA          ;
CODE_159FD8:    LDA $0712                   ; $15:9FD8: AD 12 07    ;
CODE_159FDB:    ASL A                       ; $15:9FDB: 0A          ;
CODE_159FDC:    ASL A                       ; $15:9FDC: 0A          ;
CODE_159FDD:    ASL A                       ; $15:9FDD: 0A          ;
CODE_159FDE:    ASL A                       ; $15:9FDE: 0A          ;
CODE_159FDF:    TAY                         ; $15:9FDF: A8          ;
CODE_159FE0:    LDA.l DATA_159FC1,x                 ; $15:9FE0: BF C1 9F 15 ;
CODE_159FE4:    STA [$01],y                 ; $15:9FE4: 97 01       ;
CODE_159FE6:    INC $0712                   ; $15:9FE6: EE 12 07    ;
CODE_159FE9:    CPY #$A0                    ; $15:9FE9: C0 A0       ;
CODE_159FEB:    BNE CODE_159FD2             ; $15:9FEB: D0 E5       ;
CODE_159FED:    RTL                         ; $15:9FED: 6B          ;

DATA_159FEE:        db $11,$05

DATA_159FF0:        db $12,$06

CODE_159FF2:    STZ $0713                   ; $15:9FF2: 9C 13 07    ;
CODE_159FF5:    LDA #$9F                    ; $15:9FF5: A9 9F       ;
CODE_159FF7:    STA $01                     ; $15:9FF7: 85 01       ;
CODE_159FF9:    LDA #$26                    ; $15:9FF9: A9 26       ;
CODE_159FFB:    STA $02                     ; $15:9FFB: 85 02       ;
CODE_159FFD:    LDA #$7E                    ; $15:9FFD: A9 7E       ;
CODE_159FFF:    STA $03                     ; $15:9FFF: 85 03       ;
CODE_15A001:    STZ $0712                   ; $15:A001: 9C 12 07    ;
CODE_15A004:    LDA $0712                   ; $15:A004: AD 12 07    ;
CODE_15A007:    AND #$01                    ; $15:A007: 29 01       ;
CODE_15A009:    CLC                         ; $15:A009: 18          ;
CODE_15A00A:    ADC $0713                   ; $15:A00A: 6D 13 07    ;
CODE_15A00D:    TAX                         ; $15:A00D: AA          ;
CODE_15A00E:    LDA $0712                   ; $15:A00E: AD 12 07    ;
CODE_15A011:    ASL A                       ; $15:A011: 0A          ;
CODE_15A012:    ASL A                       ; $15:A012: 0A          ;
CODE_15A013:    ASL A                       ; $15:A013: 0A          ;
CODE_15A014:    ASL A                       ; $15:A014: 0A          ;
CODE_15A015:    TAY                         ; $15:A015: A8          ;
CODE_15A016:    LDA.l DATA_159FEE,x                 ; $15:A016: BF EE 9F 15 ;
CODE_15A01A:    STA [$01],y                 ; $15:A01A: 97 01       ;
CODE_15A01C:    INC $0712                   ; $15:A01C: EE 12 07    ;
CODE_15A01F:    CPY #$C0                    ; $15:A01F: C0 C0       ;
CODE_15A021:    BNE CODE_15A004             ; $15:A021: D0 E1       ;
CODE_15A023:    LDA $0713                   ; $15:A023: AD 13 07    ;
CODE_15A026:    BNE CODE_15A036             ; $15:A026: D0 0E       ;
CODE_15A028:    STZ $01                     ; $15:A028: 64 01       ;
CODE_15A02A:    LDA #$36                    ; $15:A02A: A9 36       ;
CODE_15A02C:    STA $02                     ; $15:A02C: 85 02       ;
CODE_15A02E:    INC $0713                   ; $15:A02E: EE 13 07    ;
CODE_15A031:    INC $0713                   ; $15:A031: EE 13 07    ;
CODE_15A034:    BRA CODE_159FFD             ; $15:A034: 80 C7       ;

CODE_15A036:    RTL                         ; $15:A036: 6B          ;

CODE_15A037:    STZ $01                     ; $15:A037: 64 01       ;
CODE_15A039:    LDA #$20                    ; $15:A039: A9 20       ;
CODE_15A03B:    STA $02                     ; $15:A03B: 85 02       ;
CODE_15A03D:    BRA CODE_15A047             ; $15:A03D: 80 08       ;

CODE_15A03F:    LDA #$7F                    ; $15:A03F: A9 7F       ;
CODE_15A041:    STA $01                     ; $15:A041: 85 01       ;
CODE_15A043:    LDA #$33                    ; $15:A043: A9 33       ;
CODE_15A045:    STA $02                     ; $15:A045: 85 02       ;
CODE_15A047:    LDA #$7E                    ; $15:A047: A9 7E       ;
CODE_15A049:    STA $0003                   ; $15:A049: 8D 03 00    ;
CODE_15A04C:    STZ $0712                   ; $15:A04C: 9C 12 07    ;
CODE_15A04F:    LDA $0712                   ; $15:A04F: AD 12 07    ;
CODE_15A052:    AND #$01                    ; $15:A052: 29 01       ;
CODE_15A054:    TAX                         ; $15:A054: AA          ;
CODE_15A055:    LDA $0712                   ; $15:A055: AD 12 07    ;
CODE_15A058:    ASL A                       ; $15:A058: 0A          ;
CODE_15A059:    ASL A                       ; $15:A059: 0A          ;
CODE_15A05A:    ASL A                       ; $15:A05A: 0A          ;
CODE_15A05B:    ASL A                       ; $15:A05B: 0A          ;
CODE_15A05C:    TAY                         ; $15:A05C: A8          ;
CODE_15A05D:    LDA.l DATA_159FF0,x                 ; $15:A05D: BF F0 9F 15 ;
CODE_15A061:    STA [$01],y                 ; $15:A061: 97 01       ;
CODE_15A063:    INC $0712                   ; $15:A063: EE 12 07    ;
CODE_15A066:    CPY #$A0                    ; $15:A066: C0 A0       ;
CODE_15A068:    BNE CODE_15A04F             ; $15:A068: D0 E5       ;
CODE_15A06A:    RTL                         ; $15:A06A: 6B          ;

CODE_15A06B:    LDY #$00                    ; $15:A06B: A0 00       ;
CODE_15A06D:    STA $076E                   ; $15:A06D: 8D 6E 07    ;
CODE_15A070:    LDA $02                     ; $15:A070: A5 02       ;
CODE_15A072:    STA $076F                   ; $15:A072: 8D 6F 07    ;
CODE_15A075:    CLC                         ; $15:A075: 18          ;
CODE_15A076:    ADC #$70                    ; $15:A076: 69 70       ;
CODE_15A078:    STA $02                     ; $15:A078: 85 02       ;
CODE_15A07A:    LDA #$01                    ; $15:A07A: A9 01       ;
CODE_15A07C:    STA [$01],y                 ; $15:A07C: 97 01       ;
CODE_15A07E:    LDA $076F                   ; $15:A07E: AD 6F 07    ;
CODE_15A081:    STA $02                     ; $15:A081: 85 02       ;
CODE_15A083:    LDA $076E                   ; $15:A083: AD 6E 07    ;
CODE_15A086:    RTS                         ; $15:A086: 60          ;

DATA_15A087:        db $04,$10,$14

DATA_15A08A:        db $06,$05,$15

DATA_15A08D:        db $12,$11,$16
               
CODE_15A090:    STZ $0719                   ; $15:A090: 9C 19 07    ;
CODE_15A093:    LDA $E7                 ; $15:A093: A5 E7       ;
CODE_15A095:    TAY                     ; $15:A095: A8          ;
CODE_15A096:    AND #$F0                    ; $15:A096: 29 F0       ;
CODE_15A098:    CMP #$C0                    ; $15:A098: C9 C0       ;
CODE_15A09A:    BEQ CODE_15A0A5             ; $15:A09A: F0 09       ;
CODE_15A09C:    AND #$10                    ; $15:A09C: 29 10       ;
CODE_15A09E:    LSR A                       ; $15:A09E: 4A          ;
CODE_15A09F:    LSR A                       ; $15:A09F: 4A          ;
CODE_15A0A0:    LSR A                       ; $15:A0A0: 4A          ;
CODE_15A0A1:    LSR A                       ; $15:A0A1: 4A          ;
CODE_15A0A2:    TAX                         ; $15:A0A2: AA          ;
CODE_15A0A3:    BRA CODE_15A0AA         ; $15:A0A3: 80 05       ;
          
CODE_15A0A5:    INC $0719                   ; $15:A0A5: EE 19 07    ;
CODE_15A0A8:    LDX #$02                    ; $15:A0A8: A2 02       ;
CODE_15A0AA:    LDA.l DATA_15A087,x                 ; $15:A0AA: BF 87 A0 15 ;
CODE_15A0AE:    STA [$01],y                 ; $15:A0AE: 97 01       ;
CODE_15A0B0:    JSR CODE_15A06D             ; $15:A0B0: 20 6D A0    ;
CODE_15A0B3:    INY                         ; $15:A0B3: C8          ;
CODE_15A0B4:    LDA $0719                   ; $15:A0B4: AD 19 07    ;
CODE_15A0B7:    BNE CODE_15A0BF             ; $15:A0B7: D0 06       ;
CODE_15A0B9:    TYA                         ; $15:A0B9: 98          ;
CODE_15A0BA:    AND #$01                    ; $15:A0BA: 29 01       ;
CODE_15A0BC:    TAX                         ; $15:A0BC: AA          ;
CODE_15A0BD:    BRA CODE_15A0C1             ; $15:A0BD: 80 02       ;

CODE_15A0BF:    LDX #$02                    ; $15:A0BF: A2 02       ;
CODE_15A0C1:    TYA                         ; $15:A0C1: 98          ;
CODE_15A0C2:    AND #$10                    ; $15:A0C2: 29 10       ;
CODE_15A0C4:    BNE CODE_15A0CC             ; $15:A0C4: D0 06       ;
CODE_15A0C6:    LDA.l DATA_15A08A,x                 ; $15:A0C6: BF 8A A0 15 ;
CODE_15A0CA:    BRA CODE_15A0D0         ; $15:A0CA: 80 04       ;
           
CODE_15A0CC:    LDA.l DATA_15A08D,x                 ; $15:A0CC: BF 8D A0 15 ;
CODE_15A0D0:    STA [$01],y                 ; $15:A0D0: 97 01       ;
CODE_15A0D2:    JSR CODE_15A06D             ; $15:A0D2: 20 6D A0    ;
CODE_15A0D5:    INY                         ; $15:A0D5: C8          ;
CODE_15A0D6:    TYA                         ; $15:A0D6: 98          ;
CODE_15A0D7:    AND #$0F                    ; $15:A0D7: 29 0F       ;
CODE_15A0D9:    BNE CODE_15A0B4             ; $15:A0D9: D0 D9       ;
CODE_15A0DB:    LDA $0719                   ; $15:A0DB: AD 19 07    ;
CODE_15A0DE:    BNE CODE_15A0E9             ; $15:A0DE: D0 09       ;
CODE_15A0E0:    LDA $E7                     ; $15:A0E0: A5 E7       ;
CODE_15A0E2:    CLC                         ; $15:A0E2: 18          ;
CODE_15A0E3:    ADC #$10                    ; $15:A0E3: 69 10       ;
CODE_15A0E5:    STA $E7                     ; $15:A0E5: 85 E7       ;
CODE_15A0E7:    BRA CODE_15A093         ; $15:A0E7: 80 AA       ;
           
CODE_15A0E9:    RTL                         ; $15:A0E9: 6B          ;

DATA_15A0EA:        db $02,$05,$08,$0B,$0E,$11

DATA_15A0F0:        db $04,$06,$08,$07,$05,$06

DATA_15A0F6:        db $2C,$A9,$DC,$2C,$A9,$DC,$2C,$A9
                    db $DC,$2C,$A9,$DC,$2C,$A9,$DC

DATA_15A105:        db $BA,$BD,$BE,$BB,$BC,$BF,$BA,$BD
                    db $BE,$BB,$BC,$BF,$BA,$BD,$BE

DATA_15A114:        db $BB,$BC,$BF,$BA,$BD,$BE,$BB,$BC
                    db $BF,$BA,$BD,$BE,$BB,$BC,$BF

CODE_15A123:    LDX #$05                ; $15:A123: A2 05       ;
CODE_15A125:    LDA $0533               ; $15:A125: AD 33 05    ;
CODE_15A128:    CMP.l DATA_15A0EA,x                 ; $15:A128: DF EA A0 15 ;
CODE_15A12C:    BEQ CODE_15A132             ; $15:A12C: F0 04       ;
CODE_15A12E:    DEX                         ; $15:A12E: CA          ;
CODE_15A12F:    BPL CODE_15A128             ; $15:A12F: 10 F7       ;
CODE_15A131:    RTL                         ; $15:A131: 6B          ;

CODE_15A132:    LDA $0534                   ; $15:A132: AD 34 05    ;
CODE_15A135:    CMP.l DATA_15A0F0,x                 ; $15:A135: DF F0 A0 15 ;
CODE_15A139:    BNE CODE_15A131             ; $15:A139: D0 F6       ;
CODE_15A13B:    STZ $E9                     ; $15:A13B: 64 E9       ;
CODE_15A13D:    LDX $E9                     ; $15:A13D: A6 E9       ;
CODE_15A13F:    JSR CODE_15A177             ; $15:A13F: 20 77 A1    ;
CODE_15A142:    STZ $E7                     ; $15:A142: 64 E7       ;
CODE_15A144:    LDA $E7                     ; $15:A144: A5 E7       ;
CODE_15A146:    TAY                         ; $15:A146: A8          ;
CODE_15A147:    LSR A                       ; $15:A147: 4A          ;
CODE_15A148:    LSR A                       ; $15:A148: 4A          ;
CODE_15A149:    LSR A                       ; $15:A149: 4A          ;
CODE_15A14A:    LSR A                       ; $15:A14A: 4A          ;
CODE_15A14B:    TAX                         ; $15:A14B: AA          ;
CODE_15A14C:    LDA [$01],y                 ; $15:A14C: B7 01       ;
CODE_15A14E:    CMP.l DATA_15A0F6,x                 ; $15:A14E: DF F6 A0 15 ;
CODE_15A152:    BNE CODE_15A166             ; $15:A152: D0 12       ;
CODE_15A154:    LDA $E7                     ; $15:A154: A5 E7       ;
CODE_15A156:    AND #$01                    ; $15:A156: 29 01       ;
CODE_15A158:    BNE CODE_15A160             ; $15:A158: D0 06       ;
CODE_15A15A:    LDA.l DATA_15A105,x                 ; $15:A15A: BF 05 A1 15 ;
CODE_15A15E:    BRA CODE_15A164             ; $15:A15E: 80 04       ;

CODE_15A160:    LDA.l DATA_15A114,x                 ; $15:A160: BF 14 A1 15 ;
CODE_15A164:    STA [$01],y                 ; $15:A164: 97 01       ;
CODE_15A166:    INC $E7                     ; $15:A166: E6 E7       ;
CODE_15A168:    LDA $E7                     ; $15:A168: A5 E7       ;
CODE_15A16A:    CMP #$F0                    ; $15:A16A: C9 F0       ;
CODE_15A16C:    BNE CODE_15A146             ; $15:A16C: D0 D8       ;
CODE_15A16E:    LDA $E9                     ; $15:A16E: A5 E9       ;
CODE_15A170:    BNE CODE_15A176             ; $15:A170: D0 04       ;
CODE_15A172:    INC $E9                     ; $15:A172: E6 E9       ;
CODE_15A174:    BRA CODE_15A13D             ; $15:A174: 80 C7       ;

CODE_15A176:    RTL                         ; $15:A176: 6B          ;

CODE_15A177:    STY $02F5                   ; $15:A177: 8C F5 02    ;
CODE_15A17A:    LDY $0534                   ; $15:A17A: AC 34 05    ;
CODE_15A17D:    LDA.w DATA_11AB11,y                 ; $15:A17D: B9 11 AB    ;
CODE_15A180:    CLC                         ; $15:A180: 18          ;
CODE_15A181:    ADC.w DATA_11AAFB,x                 ; $15:A181: 7D FB AA    ;
CODE_15A184:    STA $02                     ; $15:A184: 85 02       ;
CODE_15A186:    LDA.w DATA_11AAF0,x                 ; $15:A186: BD F0 AA    ;
CODE_15A189:    STA $01                     ; $15:A189: 85 01       ;
CODE_15A18B:    LDA.w DATA_11AB06,x                 ; $15:A18B: BD 06 AB    ;
CODE_15A18E:    STA $03                     ; $15:A18E: 85 03       ;
CODE_15A190:    LDY $02F5                   ; $15:A190: AC F5 02    ;
CODE_15A193:    RTS                         ; $15:A193: 60          ;

DATA_15A194:        db $5C,$2F,$7E,$36,$86,$4C,$63,$4E
                    db $44,$51

DATA_15A19E:        db $03,$05,$0D,$04,$07

CODE_15A1A3:    LDA $0533                   ; $15:A1A3: AD 33 05    ;
CODE_15A1A6:    CMP #$0E                    ; $15:A1A6: C9 0E       ;
CODE_15A1A8:    BNE CODE_15A1EF             ; $15:A1A8: D0 45       ;
CODE_15A1AA:    LDX #$04                    ; $15:A1AA: A2 04       ;
CODE_15A1AC:    STX $0714                   ; $15:A1AC: 8E 14 07    ;
CODE_15A1AF:    TXA                         ; $15:A1AF: 8A          ;
CODE_15A1B0:    ASL A                       ; $15:A1B0: 0A          ;
CODE_15A1B1:    TAX                         ; $15:A1B1: AA          ;
CODE_15A1B2:    REP #$20                    ; $15:A1B2: C2 20       ;
CODE_15A1B4:    LDA.l DATA_15A194,x                 ; $15:A1B4: BF 94 A1 15 ;
CODE_15A1B8:    STA $01                     ; $15:A1B8: 85 01       ;
CODE_15A1BA:    SEP #$20                    ; $15:A1BA: E2 20       ;
CODE_15A1BC:    LDA #$7E                    ; $15:A1BC: A9 7E       ;
CODE_15A1BE:    STA $03                     ; $15:A1BE: 85 03       ;
CODE_15A1C0:    LDX $0714                   ; $15:A1C0: AE 14 07    ;
CODE_15A1C3:    LDA $01                     ; $15:A1C3: A5 01       ;
CODE_15A1C5:    AND #$0F                    ; $15:A1C5: 29 0F       ;
CODE_15A1C7:    TAY                         ; $15:A1C7: A8          ;
CODE_15A1C8:    LDA $01                     ; $15:A1C8: A5 01       ;
CODE_15A1CA:    AND #$F0                    ; $15:A1CA: 29 F0       ;
CODE_15A1CC:    STA $01                     ; $15:A1CC: 85 01       ;
CODE_15A1CE:    LDA #$B2                    ; $15:A1CE: A9 B2       ;
CODE_15A1D0:    STA [$01],y                 ; $15:A1D0: 97 01       ;
CODE_15A1D2:    JSR CODE_15A1F0             ; $15:A1D2: 20 F0 A1    ;
CODE_15A1D5:    LDA.l DATA_15A19E,x                 ; $15:A1D5: BF 9E A1 15 ;
CODE_15A1D9:    STA $0713                   ; $15:A1D9: 8D 13 07    ;
CODE_15A1DC:    LDA #$FD                    ; $15:A1DC: A9 FD       ;
CODE_15A1DE:    STA [$01],y                 ; $15:A1DE: 97 01       ;
CODE_15A1E0:    JSR CODE_15A1F0             ; $15:A1E0: 20 F0 A1    ;
CODE_15A1E3:    DEC $0713                   ; $15:A1E3: CE 13 07    ;
CODE_15A1E6:    BPL CODE_15A1DC             ; $15:A1E6: 10 F4       ;
CODE_15A1E8:    LDA #$FE                    ; $15:A1E8: A9 FE       ;
CODE_15A1EA:    STA [$01],y                 ; $15:A1EA: 97 01       ;
CODE_15A1EC:    DEX                         ; $15:A1EC: CA          ;
CODE_15A1ED:    BPL CODE_15A1AC             ; $15:A1ED: 10 BD       ;
CODE_15A1EF:    RTL                         ; $15:A1EF: 6B          ;

CODE_15A1F0:    INY                         ; $15:A1F0: C8          ;
CODE_15A1F1:    TYA                         ; $15:A1F1: 98          ;
CODE_15A1F2:    AND #$0F                    ; $15:A1F2: 29 0F       ;
CODE_15A1F4:    BNE CODE_15A1F8             ; $15:A1F4: D0 02       ;
CODE_15A1F6:    LDY #$F0                    ; $15:A1F6: A0 F0       ;
CODE_15A1F8:    RTS                         ; $15:A1F8: 60          ;

CODE_15A1F9:    LDA $0533                   ; $15:A1F9: AD 33 05    ;
CODE_15A1FC:    CMP #$06                    ; $15:A1FC: C9 06       ;
CODE_15A1FE:    BNE CODE_15A22F             ; $15:A1FE: D0 2F       ;
CODE_15A200:    LDA $0534                   ; $15:A200: AD 34 05    ;
CODE_15A203:    CMP #$01                    ; $15:A203: C9 01       ;
CODE_15A205:    BNE CODE_15A22F             ; $15:A205: D0 28       ;
CODE_15A207:    LDA #$7E                    ; $15:A207: A9 7E       ;
CODE_15A209:    STA $03                     ; $15:A209: 85 03       ;
CODE_15A20B:    LDA #$31                    ; $15:A20B: A9 31       ;
CODE_15A20D:    STA $02                     ; $15:A20D: 85 02       ;
CODE_15A20F:    LDA #$80                    ; $15:A20F: A9 80       ;
CODE_15A211:    STA $01                     ; $15:A211: 85 01       ;
CODE_15A213:    REP #$10                    ; $15:A213: C2 10       ;
CODE_15A215:    LDY #$02DF                  ; $15:A215: A0 DF 02    ;
CODE_15A218:    LDA [$01],y                 ; $15:A218: B7 01       ;
CODE_15A21A:    CMP #$04                    ; $15:A21A: C9 04       ;
CODE_15A21C:    BNE CODE_15A222             ; $15:A21C: D0 04       ;
CODE_15A21E:    LDA #$1C                    ; $15:A21E: A9 1C       ;
CODE_15A220:    BRA CODE_15A228             ; $15:A220: 80 06       ;

CODE_15A222:    CMP #$07                    ; $15:A222: C9 07       ;
CODE_15A224:    BNE CODE_15A22A             ; $15:A224: D0 04       ;
CODE_15A226:    LDA #$1D                    ; $15:A226: A9 1D       ;
CODE_15A228:    STA [$01],y                 ; $15:A228: 97 01       ;
CODE_15A22A:    DEY                         ; $15:A22A: 88          ;
CODE_15A22B:    BPL CODE_15A218             ; $15:A22B: 10 EB       ;
CODE_15A22D:    SEP #$10                    ; $15:A22D: E2 10       ;
CODE_15A22F:    RTL                         ; $15:A22F: 6B          ;

DATA_15A230:        db $BA,$BB,$BC,$BD,$BE,$BF,$70,$F5
                    db $3F,$76,$62,$63,$A4,$A5,$CA,$CE
                    db $C7,$C9,$D2,$D3

CODE_15A244:    LDX #$97                ; $15:A244: A2 97       ;
CODE_15A246:    LDA $0533                   ; $15:A246: AD 33 05    ;
CODE_15A249:    CMP.l DATA_15C8D8,x                 ; $15:A249: DF D8 C8 15 ;
CODE_15A24D:    BNE CODE_15A298             ; $15:A24D: D0 49       ;
CODE_15A24F:    LDA $0534                   ; $15:A24F: AD 34 05    ;
CODE_15A252:    CMP.l DATA_15C970,x                 ; $15:A252: DF 70 C9 15 ;
CODE_15A256:    BNE CODE_15A298             ; $15:A256: D0 40       ;
CODE_15A258:    STX $0719                   ; $15:A258: 8E 19 07    ;
CODE_15A25B:    REP #$30                    ; $15:A25B: C2 30       ;
CODE_15A25D:    TXA                         ; $15:A25D: 8A          ;
CODE_15A25E:    AND #$00FF                  ; $15:A25E: 29 FF 00    ;
CODE_15A261:    ASL A                       ; $15:A261: 0A          ;
CODE_15A262:    TAX                         ; $15:A262: AA          ;
CODE_15A263:    LDA.l DATA_15CA08,x                 ; $15:A263: BF 08 CA 15 ;
CODE_15A267:    STA $01                     ; $15:A267: 85 01       ;
CODE_15A269:    SEP #$30                    ; $15:A269: E2 30       ;
CODE_15A26B:    LDA #$7E                    ; $15:A26B: A9 7E       ;
CODE_15A26D:    STA $03                     ; $15:A26D: 85 03       ;
CODE_15A26F:    LDX $0719                   ; $15:A26F: AE 19 07    ;
CODE_15A272:    LDA.l DATA_15CB38,x                 ; $15:A272: BF 38 CB 15 ;
CODE_15A276:    STA $071A                   ; $15:A276: 8D 1A 07    ;
CODE_15A279:    LDX #$13                    ; $15:A279: A2 13       ;
CODE_15A27B:    CMP.l DATA_15A230,x                 ; $15:A27B: DF 30 A2 15 ;
CODE_15A27F:    BEQ CODE_15A293             ; $15:A27F: F0 12       ;
CODE_15A281:    DEX                         ; $15:A281: CA          ;
CODE_15A282:    BPL CODE_15A27B             ; $15:A282: 10 F7       ;
CODE_15A284:    LDX $0534                   ; $15:A284: AE 34 05    ;
CODE_15A287:    LDA.l DATA_11AB11,x                 ; $15:A287: BF 11 AB 11 ;
CODE_15A28B:    CLC                         ; $15:A28B: 18          ;
CODE_15A28C:    ADC $02                     ; $15:A28C: 65 02       ;
CODE_15A28E:    STA $02                     ; $15:A28E: 85 02       ;
CODE_15A290:    LDA $071A                   ; $15:A290: AD 1A 07    ;
CODE_15A293:    STA [$01]                   ; $15:A293: 87 01       ;
CODE_15A295:    LDX $0719                   ; $15:A295: AE 19 07    ;
CODE_15A298:    DEX                         ; $15:A298: CA          ;
CODE_15A299:    CPX #$FF                    ; $15:A299: E0 FF       ;
CODE_15A29B:    BEQ CODE_15A2A0             ; $15:A29B: F0 03       ;
CODE_15A29D:    BRL CODE_15A246             ; $15:A29D: 82 A6 FF    ;

CODE_15A2A0:    RTL                         ; $15:A2A0: 6B          ;

DATA_15A2A1:        db $28,$29,$26,$2A,$2B,$27
     
CODE_15A2A7:    REP #$20                    ; $15:A2A7: C2 20       ;
CODE_15A2A9:    LDA $01                 ; $15:A2A9: A5 01       ;
CODE_15A2AB:    CLC                         ; $15:A2AB: 18          ;
CODE_15A2AC:    ADC #$0050                      ; $15:A2AC: 69 50       ;
CODE_15A2AF:    STA $01                     ; $15:A2AF: 85 01       ;
CODE_15A2B1:    SEP #$20                ; $15:A2B1: E2 20       ;
CODE_15A2B3:    LDY $E7                 ; $15:A2B3: A4 E7       ;
CODE_15A2B5:    LDX #$00                    ; $15:A2B5: A2 00       ;
CODE_15A2B7:    LDA.l DATA_15A2A1,x                 ; $15:A2B7: BF A1 A2 15 ;
CODE_15A2BB:    STA [$01],y                 ; $15:A2BB: 97 01       ;
CODE_15A2BD:    JSR CODE_15A06D             ; $15:A2BD: 20 6D A0    ;
CODE_15A2C0:    PHY                         ; $15:A2C0: 5A          ;
CODE_15A2C1:    TYA                         ; $15:A2C1: 98          ;
CODE_15A2C2:    CLC                         ; $15:A2C2: 18          ;
CODE_15A2C3:    ADC #$20                    ; $15:A2C3: 69 20       ;
CODE_15A2C5:    TAY                         ; $15:A2C5: A8          ;
CODE_15A2C6:    LDA.l DATA_15A2A1,x                 ; $15:A2C6: BF A1 A2 15 ;
CODE_15A2CA:    STA [$01],y                 ; $15:A2CA: 97 01       ;
CODE_15A2CC:    JSR CODE_15A06D             ; $15:A2CC: 20 6D A0    ;
CODE_15A2CF:    PLY                         ; $15:A2CF: 7A          ;
CODE_15A2D0:    INY                         ; $15:A2D0: C8          ;
CODE_15A2D1:    INX                         ; $15:A2D1: E8          ;
CODE_15A2D2:    CPX #$06                    ; $15:A2D2: E0 06       ;
CODE_15A2D4:    BEQ CODE_15A2E5             ; $15:A2D4: F0 0F       ;
CODE_15A2D6:    CPX #$03                    ; $15:A2D6: E0 03       ;
CODE_15A2D8:    BNE CODE_15A2B7             ; $15:A2D8: D0 DD       ;
CODE_15A2DA:    LDA $01                     ; $15:A2DA: A5 01       ;
CODE_15A2DC:    CLC                         ; $15:A2DC: 18          ;
CODE_15A2DD:    ADC #$10                    ; $15:A2DD: 69 10       ;
CODE_15A2DF:    STA $01                     ; $15:A2DF: 85 01       ;
CODE_15A2E1:    LDY $E7                     ; $15:A2E1: A4 E7       ;
CODE_15A2E3:    BRA CODE_15A2B7             ; $15:A2E3: 80 D2       ;

CODE_15A2E5:    RTL                         ; $15:A2E5: 6B          ;

CODE_15A2E6:    LDA #$02                    ; $15:A2E6: A9 02       ;
CODE_15A2E8:    STA $0712                   ; $15:A2E8: 8D 12 07    ;
CODE_15A2EB:    STZ $0713                   ; $15:A2EB: 9C 13 07    ;
CODE_15A2EE:    STZ $0714                   ; $15:A2EE: 9C 14 07    ;
CODE_15A2F1:    LDX #$00                    ; $15:A2F1: A2 00       ;
CODE_15A2F3:    JSR CODE_15A3D4             ; $15:A2F3: 20 D4 A3    ;
CODE_15A2F6:    LDY $04EE                   ; $15:A2F6: AC EE 04    ;
CODE_15A2F9:    TYA                         ; $15:A2F9: 98          ;
CODE_15A2FA:    JSR CODE_15A395             ; $15:A2FA: 20 95 A3    ;
CODE_15A2FD:    STY $142A                   ; $15:A2FD: 8C 2A 14    ;
CODE_15A300:    STA $142C                   ; $15:A300: 8D 2C 14    ;
CODE_15A303:    LDA #$15                    ; $15:A303: A9 15       ;
CODE_15A305:    STA $142D                   ; $15:A305: 8D 2D 14    ;
CODE_15A308:    CPY #$BF                    ; $15:A308: C0 BF       ;
CODE_15A30A:    BNE CODE_15A313             ; $15:A30A: D0 07       ;
CODE_15A30C:    LDA #$BD                    ; $15:A30C: A9 BD       ;
CODE_15A30E:    STA $142A                   ; $15:A30E: 8D 2A 14    ;
CODE_15A311:    LDA #$09                    ; $15:A311: A9 09       ;
CODE_15A313:    STA $142B                   ; $15:A313: 8D 2B 14    ;
CODE_15A316:    INC $062B                   ; $15:A316: EE 2B 06    ;
CODE_15A319:    LDA $062B                   ; $15:A319: AD 2B 06    ;
CODE_15A31C:    JSR CODE_15A395             ; $15:A31C: 20 95 A3    ;
CODE_15A31F:    CPY #$BF                    ; $15:A31F: C0 BF       ;
CODE_15A321:    BNE CODE_15A326             ; $15:A321: D0 03       ;
CODE_15A323:    TAX                         ; $15:A323: AA          ;
CODE_15A324:    TYA                         ; $15:A324: 98          ;
CODE_15A325:    TXY                         ; $15:A325: 9B          ;
CODE_15A326:    STY $1408                   ; $15:A326: 8C 08 14    ;
CODE_15A329:    STA $140A                   ; $15:A329: 8D 0A 14    ;
CODE_15A32C:    LDX #$15                    ; $15:A32C: A2 15       ;
CODE_15A32E:    CMP #$BF                    ; $15:A32E: C9 BF       ;
CODE_15A330:    BNE CODE_15A339             ; $15:A330: D0 07       ;
CODE_15A332:    LDA #$BD                    ; $15:A332: A9 BD       ;
CODE_15A334:    STA $140A                   ; $15:A334: 8D 0A 14    ;
CODE_15A337:    LDX #$09                    ; $15:A337: A2 09       ;
CODE_15A339:    STX $140B                   ; $15:A339: 8E 0B 14    ;
CODE_15A33C:    LDA #$15                    ; $15:A33C: A9 15       ;
CODE_15A33E:    CPY #$BF                    ; $15:A33E: C0 BF       ;
CODE_15A340:    BNE CODE_15A349             ; $15:A340: D0 07       ;
CODE_15A342:    LDA #$BD                    ; $15:A342: A9 BD       ;
CODE_15A344:    STA $1408                   ; $15:A344: 8D 08 14    ;
CODE_15A347:    LDA #$09                    ; $15:A347: A9 09       ;
CODE_15A349:    STA $1409                   ; $15:A349: 8D 09 14    ;
CODE_15A34C:    LDA #$01                    ; $15:A34C: A9 01       ;
CODE_15A34E:    STA $11                     ; $15:A34E: 85 11       ;
CODE_15A350:    LDA #$01                    ; $15:A350: A9 01       ;
CODE_15A352:    STA $1DE3                   ; $15:A352: 8D E3 1D    ;
CODE_15A355:    JSL CODE_118014             ; $15:A355: 22 14 80 11 ;
CODE_15A359:    LDA #$04                    ; $15:A359: A9 04       ;
CODE_15A35B:    STA $0782                   ; $15:A35B: 8D 82 07    ;
CODE_15A35E:    LDA.w DATA_15CAFC                   ; $15:A35E: AD FC CA    ;
CODE_15A361:    STA $11                     ; $15:A361: 85 11       ;
CODE_15A363:    LDA #$0A                    ; $15:A363: A9 0A       ;
CODE_15A365:    STA $0783                   ; $15:A365: 8D 83 07    ;
CODE_15A368:    JSL CODE_118014             ; $15:A368: 22 14 80 11 ;
CODE_15A36C:    JSR CODE_15A3B9             ; $15:A36C: 20 B9 A3    ;
CODE_15A36F:    INC $0713                   ; $15:A36F: EE 13 07    ;
CODE_15A372:    DEC $0783                   ; $15:A372: CE 83 07    ;
CODE_15A375:    BNE CODE_15A368             ; $15:A375: D0 F1       ;
CODE_15A377:    DEC $0782                   ; $15:A377: CE 82 07    ;
CODE_15A37A:    BPL CODE_15A35E             ; $15:A37A: 10 E2       ;
CODE_15A37C:    DEC $0712                   ; $15:A37C: CE 12 07    ;
CODE_15A37F:    BPL CODE_15A316             ; $15:A37F: 10 95       ;
CODE_15A381:    LDA #$FF                    ; $15:A381: A9 FF       ;
CODE_15A383:    STA $0796                   ; $15:A383: 8D 96 07    ;
CODE_15A386:    LDX #$0A                    ; $15:A386: A2 0A       ;
CODE_15A388:    JSR CODE_15A3D4             ; $15:A388: 20 D4 A3    ;
CODE_15A38B:    LDA.w DATA_11CAFB                   ; $15:A38B: AD FB CA    ;
CODE_15A38E:    STA $11                     ; $15:A38E: 85 11       ;
CODE_15A390:    JSL CODE_118014             ; $15:A390: 22 14 80 11 ;
CODE_15A394:    RTL                         ; $15:A394: 6B          ;

CODE_15A395:    LDY #$C0                    ; $15:A395: A0 C0       ;
CODE_15A397:    CMP #$0A                    ; $15:A397: C9 0A       ;
CODE_15A399:    BCC CODE_15A3A0             ; $15:A399: 90 05       ;
CODE_15A39B:    SBC #$0A                    ; $15:A39B: E9 0A       ;
CODE_15A39D:    INY                         ; $15:A39D: C8          ;
CODE_15A39E:    BRA CODE_15A397             ; $15:A39E: 80 F7       ;

CODE_15A3A0:    ORA #$C0                    ; $15:A3A0: 09 C0       ;
CODE_15A3A2:    CPY #$C0                    ; $15:A3A2: C0 C0       ;
CODE_15A3A4:    BNE CODE_15A3A8             ; $15:A3A4: D0 02       ;
CODE_15A3A6:    LDY #$BF                    ; $15:A3A6: A0 BF       ;
CODE_15A3A8:    RTS                         ; $15:A3A8: 60          ;

DATA_15A3A9:        dw $125F

DATA_15A3AB:        dw $12FF

DATA_15A3AD:        dw $1B7F,$125F,$12FF,$35AD
                    dw $4631,$56B5

CODE_15A3B9:    LDA $0713                   ; $15:A3B9: AD 13 07    ;
CODE_15A3BC:    CMP #$06                    ; $15:A3BC: C9 06       ;
CODE_15A3BE:    BNE CODE_15A3C6             ; $15:A3BE: D0 06       ;
CODE_15A3C0:    STZ $0713                   ; $15:A3C0: 9C 13 07    ;
CODE_15A3C3:    INC $0714                   ; $15:A3C3: EE 14 07    ;
CODE_15A3C6:    LDA $0714                   ; $15:A3C6: AD 14 07    ;
CODE_15A3C9:    CMP #$03                    ; $15:A3C9: C9 03       ;
CODE_15A3CB:    BNE CODE_15A3D2             ; $15:A3CB: D0 05       ;
CODE_15A3CD:    LDA #$00                    ; $15:A3CD: A9 00       ;
CODE_15A3CF:    STA $0714                   ; $15:A3CF: 8D 14 07    ;
CODE_15A3D2:    ASL A                       ; $15:A3D2: 0A          ;
CODE_15A3D3:    TAX                         ; $15:A3D3: AA          ;
CODE_15A3D4:    REP #$20                    ; $15:A3D4: C2 20       ;
CODE_15A3D6:    LDA.l DATA_15A3A9,x                 ; $15:A3D6: BF A9 A3 15 ;
CODE_15A3DA:    STA $0B1A                   ; $15:A3DA: 8D 1A 0B    ;
CODE_15A3DD:    LDA.l DATA_15A3AB,x                 ; $15:A3DD: BF AB A3 15 ;
CODE_15A3E1:    STA $0B1C                   ; $15:A3E1: 8D 1C 0B    ;
CODE_15A3E4:    LDA.l DATA_15A3AD,x                 ; $15:A3E4: BF AD A3 15 ;
CODE_15A3E8:    STA $0B1E                   ; $15:A3E8: 8D 1E 0B    ;
CODE_15A3EB:    SEP #$20                    ; $15:A3EB: E2 20       ;
CODE_15A3ED:    LDA #$01                    ; $15:A3ED: A9 01       ;
CODE_15A3EF:    STA $02A9                   ; $15:A3EF: 8D A9 02    ;
CODE_15A3F2:    RTS                         ; $15:A3F2: 60          ;

DATA_15A3F3:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF                  ; /

DATA_15A400:        db $00,$00,$00,$01,$01,$01,$00,$00
                    db $00,$00,$01,$01,$01,$03,$02,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$01
                    db $01,$00,$04,$00,$00,$00,$00,$00
                    db $01,$01,$01,$01,$04,$01,$00,$00
                    db $00,$00,$00,$00,$01,$01,$03,$01
                    db $00,$01,$00,$00,$01,$01,$01,$01
                    db $01,$00,$00,$00,$00,$00,$01,$01
                    db $01,$00,$00,$00,$00,$00,$00,$00
                    db $01,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$01,$01,$00,$00,$00,$00
                    db $00,$00,$00,$00,$01,$00,$00,$01
                    db $01,$00,$00,$00,$00,$00,$01,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$01,$01,$00,$00,$00,$00,$00
                    db $00,$00,$01,$00,$01,$01,$05,$01
                    db $00,$00,$00,$00,$01,$00,$01,$01
                    db $01,$00,$00,$00,$00,$00,$00,$01
                    db $01,$07,$03,$06,$02,$00,$00,$00
                    db $01,$01,$01,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$01,$01,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $01,$01,$00,$00,$00,$00,$00,$01
                    db $01,$01,$01,$00,$01,$01,$01,$01

PNTR_15A4C8:        dw DATA_15A4CE
                    dw DATA_15A62E
                    dw DATA_15A7AE

DATA_15A4CE:        db $00,$11,$01,$11,$10,$11,$11,$11
                    db $02,$11,$03,$11,$12,$11,$13,$11
                    db $04,$11,$05,$11,$14,$11,$15,$11
                    db $06,$11,$07,$11,$16,$11,$17,$11
                    db $08,$11,$09,$11,$18,$11,$19,$11
                    db $0A,$11,$0B,$11,$1A,$11,$1B,$11
                    db $0C,$11,$0D,$11,$1C,$11,$1D,$11
                    db $0E,$11,$0F,$11,$1E,$11,$1F,$11
                    db $00,$11,$07,$11,$10,$11,$17,$11
                    db $08,$11,$0F,$11,$18,$11,$1F,$11
                    db $00,$11,$01,$11,$38,$11,$39,$11
                    db $02,$11,$03,$11,$3A,$11,$3B,$11
                    db $04,$11,$05,$11,$3C,$11,$3D,$11
                    db $06,$11,$07,$11,$3E,$11,$3F,$11
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $20,$11,$21,$11,$30,$11,$31,$11
                    db $22,$11,$23,$11,$32,$11,$33,$11
                    db $24,$11,$25,$11,$34,$11,$35,$11
                    db $26,$11,$27,$11,$36,$11,$37,$11
                    db $28,$11,$29,$11,$38,$11,$39,$11
                    db $2A,$11,$2B,$11,$3A,$11,$3B,$11
                    db $2C,$11,$2D,$11,$3C,$11,$3D,$11
                    db $2E,$11,$2F,$11,$3E,$11,$3F,$11
                    db $20,$11,$27,$11,$30,$11,$37,$11
                    db $28,$11,$2F,$11,$38,$11,$3F,$11
                    db $39,$10,$01,$11,$10,$11,$11,$11
                    db $06,$11,$39,$50,$16,$11,$17,$11
                    db $AC,$10,$09,$11,$18,$11,$19,$11
                    db $0E,$11,$AD,$10,$1E,$11,$1F,$11
                    db $39,$10,$39,$50,$10,$11,$17,$11
                    db $AC,$10,$AD,$10,$18,$11,$1F,$11
                    db $28,$11,$29,$11,$3A,$10,$4F,$10
                    db $2A,$11,$2B,$11,$4E,$10,$4F,$10
                    db $2C,$11,$2D,$11,$97,$10,$4F,$10
                    db $2E,$11,$2F,$11,$4E,$10,$3A,$50
                    db $28,$11,$2F,$11,$3A,$10,$3A,$50
                    db $00,$11,$07,$11,$38,$11,$3F,$11
                    db $60,$12,$61,$12,$70,$12,$71,$12
                    db $62,$12,$63,$12,$72,$12,$73,$12
                    db $68,$12,$69,$12,$78,$12,$79,$12
                    db $6A,$12,$6B,$12,$7A,$12,$7B,$12
                    db $6C,$12,$6D,$12,$7C,$12,$7D,$12
                    db $6E,$12,$6F,$12,$7E,$12,$7F,$12

DATA_15A62E:        db $0D,$72,$0B,$32,$0A,$32,$00,$32
                    db $0B,$32,$0D,$32,$00,$32,$0A,$72
                    db $0A,$32,$0C,$32,$0A,$32,$00,$32
                    db $0C,$72,$0A,$72,$00,$72,$0A,$72
                    db $0A,$32,$00,$32,$0D,$F2,$0B,$B2
                    db $00,$32,$0A,$72,$0C,$F2,$0A,$72
                    db $0A,$32,$00,$72,$0A,$32,$0C,$B2
                    db $00,$72,$0A,$72,$0B,$F2,$0D,$B2
                    db $BF,$00,$01,$32,$04,$32,$05,$32
                    db $02,$32,$03,$32,$06,$32,$0C,$B2
                    db $0C,$72,$0C,$32,$0B,$F2,$0B,$F2
                    db $0B,$32,$0D,$32,$0B,$F2,$0D,$B2
                    db $0D,$72,$0B,$72,$0D,$F2,$0B,$B2
                    db $0C,$72,$0C,$32,$0B,$B2,$0B,$B2
                    db $03,$72,$02,$72,$0C,$F2,$06,$72
                    db $01,$72,$BF,$00,$05,$72,$04,$72
                    db $00,$B2,$00,$B2,$0B,$B2,$0B,$B2
                    db $0A,$32,$0A,$72,$0A,$32,$0A,$72
                    db $08,$72,$07,$72,$0C,$F2,$09,$72
                    db $07,$32,$08,$32,$09,$32,$0C,$B2
                    db $0A,$32,$00,$72,$0A,$32,$00,$32
                    db $00,$B2,$0C,$32,$00,$B2,$00,$32
                    db $0C,$72,$00,$72,$00,$F2,$00,$F2
                    db $00,$72,$0A,$72,$00,$72,$0A,$72
                    db $00,$B2,$0C,$32,$0B,$B2,$0B,$B2
                    db $0B,$32,$0B,$32,$0B,$B2,$0B,$B2
                    db $0C,$72,$00,$F2,$0B,$B2,$0B,$B2
                    db $0B,$32,$0B,$32,$00,$32,$00,$32
                    db $00,$32,$0C,$32,$0C,$F2,$00,$32
                    db $0B,$32,$0B,$32,$00,$32,$0C,$B2
                    db $0B,$32,$0B,$72,$0C,$F2,$00,$72
                    db $0C,$72,$00,$F2,$00,$72,$0C,$B2
                    db $02,$32,$03,$32,$06,$32,$00,$32
                    db $03,$72,$02,$72,$00,$72,$06,$72
                    db $0A,$32,$0C,$32,$0D,$F2,$0B,$B2
                    db $0C,$72,$0A,$72,$0B,$B2,$0D,$B2
                    db $09,$B2,$00,$32,$07,$B2,$00,$32
                    db $04,$B2,$05,$B2,$BF,$00,$01,$B2
                    db $06,$B2,$0C,$32,$02,$B2,$03,$B2
                    db $0C,$72,$06,$F2,$03,$F2,$02,$F2
                    db $05,$F2,$04,$F2,$01,$F2,$BF,$00
                    db $00,$72,$09,$F2,$00,$72,$07,$F2
                    db $0C,$72,$00,$F2,$0C,$F2,$00,$F2
                    db $00,$B2,$0C,$32,$00,$B2,$0C,$B2
                    db $00,$B2,$00,$32,$00,$32,$00,$32
                    db $0B,$32,$0D,$32,$0C,$F2,$0A,$72
                    db $0D,$72,$0B,$72,$0A,$32,$0C,$B2
                    db $50,$30,$52,$30,$51,$30,$53,$30

DATA_15A7AE:        db $2B,$52,$2A,$52,$3B,$52,$3A,$52
                    db $29,$52,$28,$52,$39,$52,$38,$52
                    db $27,$52,$26,$52,$37,$52,$36,$52
                    db $25,$52,$24,$52,$35,$52,$34,$52
                    db $23,$52,$22,$52,$33,$52,$32,$52
                    db $21,$52,$20,$52,$31,$52,$30,$52
                    db $20,$12,$21,$12,$30,$12,$31,$12
                    db $22,$12,$23,$12,$32,$12,$33,$12
                    db $24,$12,$25,$12,$34,$12,$35,$12
                    db $26,$12,$27,$12,$36,$12,$37,$12
                    db $28,$12,$29,$12,$38,$12,$39,$12
                    db $2A,$12,$2B,$12,$3A,$12,$3B,$12
                    db $2C,$12,$2D,$12,$3C,$12,$3D,$12
                    db $2E,$12,$2F,$12,$3E,$12,$3F,$12
                    db $2F,$52,$2E,$52,$3F,$52,$3E,$52
                    db $2D,$52,$2C,$52,$3D,$52,$3C,$52
                    db $2B,$D2,$2A,$D2,$3B,$D2,$3A,$D2
                    db $29,$D2,$28,$D2,$39,$D2,$38,$D2
                    db $27,$D2,$26,$D2,$37,$D2,$36,$D2
                    db $25,$D2,$24,$D2,$35,$D2,$34,$D2
                    db $23,$D2,$22,$D2,$33,$D2,$32,$D2
                    db $21,$D2,$20,$D2,$31,$D2,$30,$D2
                    db $20,$92,$21,$92,$30,$92,$31,$92
                    db $22,$92,$23,$92,$32,$92,$33,$92
                    db $24,$92,$25,$92,$34,$92,$35,$92
                    db $26,$92,$27,$92,$36,$92,$37,$92
                    db $28,$92,$29,$92,$38,$92,$39,$92
                    db $2A,$92,$2B,$92,$3A,$92,$3B,$92
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $BF,$00,$BF,$00,$BF,$00,$BF,$00
                    db $FF,$50,$FE,$50,$3B,$52,$3A,$52
                    db $FD,$50,$FC,$50,$39,$52,$38,$52
                    db $FB,$50,$FA,$50,$37,$52,$36,$52
                    db $F9,$50,$F8,$50,$35,$52,$34,$52
                    db $F7,$50,$F6,$50,$33,$52,$32,$52
                    db $F5,$50,$F4,$50,$31,$52,$30,$52
                    db $F4,$10,$F5,$10,$30,$12,$31,$12
                    db $F6,$10,$F7,$10,$32,$12,$33,$12
                    db $F8,$10,$F9,$10,$34,$12,$35,$12
                    db $FA,$10,$FB,$10,$36,$12,$37,$12
                    db $FC,$10,$FD,$10,$38,$12,$39,$12
                    db $FE,$10,$FF,$10,$3A,$12,$3B,$12

PNTR_15A90E:        dw DATA_15A94A
                    dw DATA_15A9A4
                    dw DATA_15A9FE
                    dw DATA_15A9FE
                    dw DATA_15A9FE
                    dw DATA_15A9FE
                    dw DATA_15A9FE
                    dw DATA_15A9FE
                    dw DATA_15AA58
                    dw DATA_15AAB2
                    dw DATA_15AAB2
                    dw DATA_15AB0C
                    dw DATA_15AB66
                    dw DATA_15ABC0
                    dw DATA_15AC1A
                    dw DATA_15AC74
                    dw DATA_15ACCE
                    dw DATA_15AD28
                    dw DATA_15AD82
                    dw DATA_15ADDC
                    dw DATA_15AE36
                    dw DATA_15AE90
                    dw DATA_15AEEA
                    dw DATA_15AF44
                    dw DATA_15AF9E
                    dw DATA_15AF9E
                    dw DATA_15AFF8
                    dw DATA_15B052
                    dw DATA_15B0AC
                    dw PNTR_15B106

DATA_15A94A:        db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$00,$10,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$01,$06,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$02,$05,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$01,$06,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$02,$05,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $03,$13

DATA_15A9A4:        db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$00,$10,$04,$10,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$01,$06,$12,$06,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$02,$05,$11,$05,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $01,$06,$12,$06,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$02
                    db $05,$11,$05,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$03,$13
                    db $07,$13

DATA_15A9FE:        db $40,$40,$40,$40,$40,$40,$40,$00
                    db $10,$04,$10,$04,$10,$04,$10,$40
                    db $40,$40,$40,$40,$40,$40,$01,$06
                    db $12,$06,$12,$06,$12,$06,$40,$40
                    db $40,$40,$40,$40,$40,$02,$05,$11
                    db $05,$11,$05,$11,$05,$40,$40,$40
                    db $40,$40,$40,$40,$01,$06,$12,$06
                    db $12,$06,$12,$06,$40,$40,$40,$40
                    db $40,$40,$40,$02,$05,$11,$05,$11
                    db $05,$11,$05,$40,$40,$40,$40,$40
                    db $40,$40,$03,$13,$07,$13,$07,$13
                    db $07,$13

DATA_15AA58:        db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40

DATA_15AAB2:        db $04,$10,$04,$10,$04,$10,$04,$10
                    db $04,$10,$04,$10,$04,$10,$04,$05
                    db $11,$05,$11,$05,$11,$05,$11,$05
                    db $11,$05,$11,$05,$11,$05,$06,$12
                    db $06,$12,$06,$12,$06,$12,$06,$12
                    db $06,$12,$06,$12,$06,$05,$11,$05
                    db $11,$05,$11,$05,$11,$05,$11,$05
                    db $11,$05,$11,$05,$06,$12,$06,$12
                    db $06,$12,$06,$12,$06,$12,$06,$12
                    db $06,$12,$06,$07,$13,$07,$13,$07
                    db $13,$07,$13,$07,$13,$07,$13,$07
                    db $13,$07

DATA_15AB0C:        db $40,$40,$40,$40,$40,$40
                    db $00,$10,$04,$10,$04,$10,$04,$10
                    db $04,$40,$40,$40,$40,$40,$40,$01
                    db $11,$05,$11,$05,$11,$05,$11,$05
                    db $40,$40,$40,$40,$40,$40,$02,$12
                    db $06,$12,$06,$12,$06,$12,$06,$40
                    db $40,$40,$40,$40,$40,$01,$11,$05
                    db $11,$05,$11,$05,$11,$05,$40,$40
                    db $40,$40,$40,$40,$02,$12,$06,$12
                    db $06,$12,$06,$12,$06,$40,$40,$40
                    db $40,$40,$40,$03,$13,$07,$13,$07
                    db $13,$07,$13,$07

DATA_15AB66:        db $40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$00,$10
                    db $04,$10,$04,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$01,$11,$05
                    db $11,$05,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$02,$12,$06,$12
                    db $06,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$01,$11,$05,$11,$05
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$02,$12,$06,$12,$06,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$03,$13,$07,$13,$07

DATA_15ABC0:        db $40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$00,$10,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$01,$06,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$02,$05,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $01,$06,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$02
                    db $05,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$03,$13

DATA_15AC1A:        db $04,$14,$40,$40,$40,$40,$00,$10
                    db $04,$10,$04,$10,$04,$10,$04,$05
                    db $15,$40,$40,$40,$40,$01,$11,$05
                    db $11,$05,$11,$05,$11,$05,$06,$16
                    db $40,$40,$40,$40,$02,$12,$06,$12
                    db $06,$12,$06,$12,$06,$05,$15,$40
                    db $40,$40,$40,$01,$11,$05,$11,$05
                    db $11,$05,$11,$05,$06,$16,$40,$40
                    db $40,$40,$02,$12,$06,$12,$06,$12
                    db $06,$12,$06,$07,$17,$40,$40,$40
                    db $40,$03,$13,$07,$13,$07,$13,$07
                    db $13,$07

DATA_15AC74:        db $10,$04,$14,$40,$40,$40

DATA_15AC7A:        db $40,$40,$40,$40,$00,$10,$04,$10
                    db $04,$06,$12,$15,$40,$40,$40,$40
                    db $40,$40,$40,$01,$11,$05,$11,$05
                    db $05,$11,$16,$40,$40,$40,$40,$40
                    db $40,$40,$02,$12,$06,$12,$06,$06
                    db $12,$15,$40,$40,$40,$40,$40,$40
                    db $40,$01,$11,$05,$11,$05,$05,$11
                    db $16,$40,$40,$40,$40,$40,$40,$40
                    db $02,$12,$06,$12,$06,$13,$07,$17
                    db $40,$40,$40,$40,$40,$40,$40,$03
                    db $13,$07,$13,$07

DATA_15ACCE:        db $10,$04,$14,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$00,$10,$06,$12,$15,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $01,$06,$05,$11,$16,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$02
                    db $05,$06,$12,$15,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$01,$06
                    db $05,$11,$16,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$02,$05,$13
                    db $07,$17,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$03,$13

DATA_15AD28:        db $04,$10
                    db $04,$10,$04,$14,$40,$40,$40,$40
                    db $00,$10,$04,$10,$04,$05,$11,$05
                    db $11,$05,$15,$40,$40,$40,$40,$01
                    db $11,$05,$11,$05,$06,$12,$06,$12
                    db $06,$16,$40,$40,$40,$40,$02,$12
                    db $06,$12,$06,$05,$11,$05,$11,$05
                    db $15,$40,$40,$40,$40,$01,$11,$05
                    db $11,$05,$06,$12,$06,$12,$06,$16
                    db $40,$40,$40,$40,$02,$12,$06,$12
                    db $06,$07,$13,$07,$13,$07,$17,$40
                    db $40,$40,$40,$03,$13,$07,$13,$07
              
DATA_15AD82:        db $04,$10,$04,$10,$04,$10,$04,$10
                    db $04,$14,$40,$40,$40,$00,$10,$05
                    db $11,$05,$11,$05,$11,$05,$11,$05
                    db $15,$40,$40,$40,$01,$06,$06,$12
                    db $06,$12,$06,$12,$06,$12,$06,$16
                    db $40,$40,$40,$02,$05,$05,$11,$05
                    db $11,$05,$11,$05,$11,$05,$15,$40
                    db $40,$40,$01,$06,$06,$12,$06,$12
                    db $06,$12,$06,$12,$06,$16,$40,$40
                    db $40,$02,$05,$07,$13,$07,$13,$07
                    db $13,$07,$13,$07,$17,$40,$40,$40
                    db $03,$13

DATA_15ADDC:        db $10,$04,$10,$04,$10,$04
                    db $10,$04,$14,$40,$40,$40,$40,$00
                    db $10,$06,$12,$06,$12,$06,$12,$06
                    db $12,$15,$40,$40,$40,$40,$01,$06
                    db $05,$11,$05,$11,$05,$11,$05,$11
                    db $16,$40,$40,$40,$40,$02,$05,$06
                    db $12,$06,$12,$06,$12,$06,$12,$15
                    db $40,$40,$40,$40,$01,$06,$05,$11
                    db $05,$11,$05,$11,$05,$11,$16,$40
                    db $40,$40,$40,$02,$05,$13,$07,$13
                    db $07,$13,$07,$13,$07,$17,$40,$40
                    db $40,$40,$03,$13

DATA_15AE36:        db $10,$04,$10,$04
                    db $10,$04,$14,$40,$40,$40,$40,$40
                    db $40,$00,$10,$06,$12,$06,$12,$06
                    db $12,$15,$40,$40,$40,$40,$40,$40
                    db $01,$06,$05,$11,$05,$11,$05,$11
                    db $16,$40,$40,$40,$40,$40,$40,$02
                    db $05,$06,$12,$06,$12,$06,$12,$15
                    db $40,$40,$40,$40,$40,$40,$01,$06
                    db $05,$11,$05,$11,$05,$11,$16,$40
                    db $40,$40,$40,$40,$40,$02,$05,$13
                    db $07,$13,$07,$13,$07,$17,$40,$40
                    db $40,$40,$40,$40,$03,$13

DATA_15AE90:        db $04,$14
                    db $40,$40,$40,$40,$00,$10,$14,$40
                    db $40,$40,$40,$00,$10,$05,$15,$40
                    db $40,$40,$40,$01,$06,$15,$40,$40
                    db $40,$40,$01,$06,$06,$16,$40,$40
                    db $40,$40,$01,$05,$16,$40,$40,$40
                    db $40,$02,$05,$05,$15,$40,$40,$40
                    db $40,$02,$06,$15,$40,$40,$40,$40
                    db $01,$06,$06,$16,$40,$40,$40,$40
                    db $02,$05,$16,$40,$40,$40,$40,$02
                    db $05,$07,$17,$40,$40,$40,$40,$03
                    db $13,$17,$40,$40,$40,$40,$03,$13

DATA_15AEEA:        db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$00,$10,$04,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$01,$11,$05,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$02,$12,$06,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$01,$11,$05,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $02,$12,$06,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$03
                    db $13,$07

DATA_15AF44:        db $10,$04,$14,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$06,$12,$15,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $05,$11,$16,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$06
                    db $12,$15,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$05,$11
                    db $16,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$13,$07,$17
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40

DATA_15AF9E:        db $04,$10,$04,$10
                    db $04,$14,$40,$40,$40,$40,$40,$00
                    db $10,$04,$10,$05,$11,$05,$11,$05
                    db $15,$40,$40,$40,$40,$40,$01,$06
                    db $12,$06,$06,$12,$06,$12,$06,$16
                    db $40,$40,$40,$40,$40,$02,$05,$11
                    db $05,$05,$11,$05,$11,$05,$15,$40
                    db $40,$40,$40,$40,$01,$06,$12,$06
                    db $06,$12,$06,$12,$06,$16,$40,$40
                    db $40,$40,$40,$02,$05,$11,$05,$07
                    db $13,$07,$13,$07,$17,$40,$40,$40
                    db $40,$40,$03,$13,$07,$13

DATA_15AFF8:        db $04,$14
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$00,$10,$04,$10,$05,$15,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $01,$06,$12,$06,$06,$16,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$02
                    db $05,$11,$05,$05,$15,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$01,$06
                    db $12,$06,$06,$16,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$02,$05,$11
                    db $05,$07,$17,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$03,$13,$07,$13

DATA_15B052:        db $04,$10,$04,$10,$04,$14,$40,$40
                    db $40,$40,$40,$40,$40,$00,$10,$05
                    db $11,$05,$11,$05,$15,$40,$40,$40
                    db $40,$40,$40,$40,$01,$06,$06,$12
                    db $06,$12,$06,$16,$40,$40,$40,$40
                    db $40,$40,$40,$02,$05,$05,$11,$05
                    db $11,$05,$15,$40,$40,$40,$40,$40
                    db $40,$40,$01,$06,$06,$12,$06,$12
                    db $06,$16,$40,$40,$40,$40,$40,$40
                    db $40,$02,$05,$07,$13,$07,$13,$07
                    db $17,$40,$40,$40,$40,$40,$40,$40
                    db $03,$13

DATA_15B0AC:        db $04,$14,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$00
                    db $10,$05,$15,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$01,$06
                    db $06,$16,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$02,$05,$05
                    db $15,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$01,$06,$06,$16
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$02,$05,$07,$17,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$03,$13

PNTR_15B106:        dw DATA_15B148
                    dw DATA_15B168
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B188
                    dw DATA_15B1A8
                    dw DATA_15B1C8
                    dw DATA_15B1E8
                    dw DATA_15B208
                    dw DATA_15B228
                    dw DATA_15B248
                    dw DATA_15B248
                    dw DATA_15B268
                    dw DATA_15B288
                    dw DATA_15B168
                    dw DATA_15B2A8
                    dw DATA_15B2C8
                    dw DATA_15B2E8
                    dw DATA_15B308
                    dw DATA_15B328
                    dw DATA_15B328
                    dw DATA_15B328
                    dw DATA_15B328
                    dw DATA_15B348
                    dw DATA_15B348
                    dw DATA_15B368
                    dw DATA_15B388

DATA_15B148:        db $06,$05,$06,$05,$06,$05,$06,$05
                    db $06,$05,$06,$05,$06,$05,$06,$05
                    db $12,$11,$12,$11,$12,$11,$12,$11
                    db $12,$11,$12,$11,$12,$11,$12,$11

DATA_15B168:        db $07,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$04
                    db $13,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$10

DATA_15B188:        db $06,$07,$05,$05,$05,$05,$05,$05
                    db $05,$05,$05,$05,$05,$05,$04,$05
                    db $12,$13,$05,$05,$05,$05,$05,$05
                    db $05,$05,$05,$05,$05,$05,$10,$11

DATA_15B1A8:        db $06,$07,$06,$06,$06,$06,$04,$05
                    db $06,$07,$06,$06,$06,$06,$04,$05
                    db $12,$13,$06,$06,$06,$06,$10,$11
                    db $12,$13,$06,$06,$06,$06,$10,$11

DATA_15B1C8:        db $05,$05,$05,$05,$05,$05,$05,$05
                    db $05,$05,$05,$05,$05,$05,$05,$05
                    db $05,$05,$05,$05,$05,$05,$05,$05
                    db $05,$05,$05,$05,$05,$05,$05,$05

DATA_15B1E8:        db $07,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$04
                    db $13,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$10

DATA_15B208:        db $07,$9D,$9D,$9D,$9D,$9D,$04,$05
                    db $06,$07,$9D,$9D,$9D,$9D,$9D,$04
                    db $13,$9D,$9D,$9D,$9D,$9D,$10,$11
                    db $12,$13,$9D,$9D,$9D,$9D,$9D,$10

DATA_15B228:        db $06,$05,$06,$07,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$9D,$04,$05,$06,$05
                    db $12,$11,$12,$13,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$9D,$10,$11,$12,$11

DATA_15B248:        db $06,$05,$06,$05,$06,$07,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$04,$05
                    db $12,$11,$12,$11,$12,$13,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$10,$11

DATA_15B268:        db $06,$07,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$04,$05,$06,$05,$06,$05
                    db $12,$13,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$10,$11,$12,$11,$12,$11

DATA_15B288:        db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40

DATA_15B2A8:        db $06,$07,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$04,$05
                    db $12,$13,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$10,$11

DATA_15B2C8:        db $06,$05,$06,$07,$40,$40,$40,$40
                    db $40,$40,$40,$40,$04,$05,$06,$05
                    db $12,$11,$12,$13,$40,$40,$40,$40
                    db $40,$40,$40,$40,$10,$11,$12,$11

DATA_15B2E8:        db $06,$05,$06,$05,$06,$07,$40,$40
                    db $40,$40,$04,$05,$06,$05,$06,$05
                    db $12,$11,$12,$11,$12,$13,$40,$40
                    db $40,$40,$10,$11,$12,$11,$12,$11

DATA_15B308:        db $07,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$04,$05,$06,$05,$06,$05
                    db $13,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$10,$11,$12,$11,$12,$11

DATA_15B328:        db $06,$07,$40,$40,$40,$40,$04,$05
                    db $06,$07,$40,$40,$40,$40,$04,$05
                    db $12,$13,$40,$40,$40,$40,$10,$11
                    db $12,$13,$40,$40,$40,$40,$10,$11

DATA_15B348:        db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$04,$05
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$10,$11

DATA_15B368:        db $06,$05,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$06,$05
                    db $12,$11,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$12,$11

DATA_15B388:        db $06,$05,$06,$07,$40,$40,$40,$40
                    db $40,$40,$40,$40,$06,$05,$06,$05
                    db $12,$11,$12,$13,$40,$40,$40,$40
                    db $40,$40,$40,$40,$12,$11,$12,$11

PNTR_15B3A8:        dw DATA_15B3D0
                    dw DATA_15B3D1
                    dw DATA_15B3D8
                    dw DATA_15B3D8
                    dw DATA_15B3D9
                    dw DATA_15B3E0
                    dw DATA_15B3E1
                    dw DATA_15B3E4
                    dw DATA_15B3EF
                    dw DATA_15B3F0
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7
                    dw DATA_15B3F7

DATA_15B3D0:        db $FF

DATA_15B3D1:        db $00,$00,$00,$02,$02,$00,$FF

DATA_15B3D8:        db $FF

DATA_15B3D9:        db $01,$0D,$01,$0C,$01,$02,$FF

DATA_15B3E0:        db $FF

DATA_15B3E1:        db $01,$13,$FF

DATA_15B3E4:        db $00,$02,$00,$03
                    db $00,$04,$00,$05,$00,$06,$FF

DATA_15B3EF:        db $FF

DATA_15B3F0:        db $00,$16,$01,$01,$01,$00,$FF

DATA_15B3F7:        db $FF

PNTR_15B3F8:        dw DATA_15B420
                    dw DATA_15B44E
                    dw DATA_15B4DC
                    dw DATA_15B4DE
                    dw DATA_15B568
                    dw DATA_15B692
                    dw DATA_15B76C
                    dw DATA_15B804
                    dw DATA_15B88E
                    dw DATA_15B8B8
                    dw DATA_15B94C
                    dw DATA_15B9DA
                    dw DATA_15BA1C
                    dw DATA_15BBB8
                    dw DATA_15BCC2
                    dw DATA_15BD44
                    dw DATA_15BE14
                    dw DATA_15BEA8
                    dw DATA_15BFA0
                    dw DATA_15BFD2

DATA_15B420:        db $15,$FE,$18,$41,$5E,$41,$14,$FE
                    db $2C,$41,$5D,$41,$6F,$41,$75,$43
                    db $04,$FE,$3D,$41,$65,$43,$10,$FE
                    db $4D,$41,$55,$43,$05,$FE,$24,$5B
                    db $06,$FE,$25,$5B,$02,$FE,$6B,$5B
                    db $16,$FE,$29,$4C,$FF,$FF

DATA_15B44E:        db $02,$FE
                    db $3B,$27,$3C,$27,$A4,$36,$12,$FE
                    db $4B,$27,$3E,$27,$5C,$27,$06,$FE
                    db $5B,$27,$F9,$2B,$4C,$27,$05,$FE
                    db $EA,$2C,$0A,$2D,$2A,$2D,$DA,$2D
                    db $13,$FE,$30,$2B,$50,$2B,$70,$2B
                    db $90,$2B,$B0,$2B,$1F,$2D,$07,$FE
                    db $40,$2B,$60,$2B,$80,$2B,$A0,$2B
                    db $C0,$2B,$2F,$2D,$17,$FE,$18,$2C
                    db $3F,$2D,$F9,$2D,$16,$FE,$09,$2C
                    db $11,$2C,$13,$2C,$14,$FE,$07,$2D
                    db $38,$2D,$32,$38,$10,$FE,$18,$2D
                    db $A0,$38,$F2,$37,$12,$38,$A3,$37
                    db $04,$FE,$28,$2D,$E2,$37,$02,$38
                    db $22,$38,$B3,$37,$11,$FE,$FA,$2C
                    db $1A,$2D,$3D,$27,$15,$FE,$3A,$2D
                    db $EA,$2D,$33,$38,$2E,$2B,$16,$2C
                    db $00,$FE,$90,$38,$93,$37,$01,$FE
                    db $A3,$36,$FF,$FF

DATA_15B4DC:        db $FF,$FF

DATA_15B4DE:        db $06,$FE
                    db $A7,$36,$00,$FE,$64,$38,$86,$2B
                    db $C3,$2D,$9A,$2E,$10,$FE,$74,$38
                    db $94,$38,$B4,$38,$04,$FE,$84,$38
                    db $A4,$38,$16,$FE,$12,$2B,$35,$2E
                    db $37,$2E,$39,$2E,$3B,$2E,$3D,$2E
                    db $17,$FE,$13,$2B,$91,$2B,$31,$2E
                    db $14,$FE,$1C,$2B,$9E,$2B,$33,$2E
                    db $15,$FE,$1D,$2B,$34,$2E,$36,$2E
                    db $38,$2E,$3A,$2E,$3C,$2E,$3E,$2E
                    db $01,$FE,$87,$2B,$C4,$2D,$C6,$2D
                    db $C8,$2D,$CA,$2D,$CC,$2D,$CE,$2D
                    db $9B,$2E,$9D,$2E,$A1,$2E,$A3,$2E
                    db $A5,$2E,$A7,$2E,$A9,$2E,$02,$FE
                    db $88,$2B,$C5,$2D,$C7,$2D,$C9,$2D
                    db $CB,$2D,$CD,$2D,$9C,$2E,$9E,$2E
                    db $A2,$2E,$A4,$2E,$A6,$2E,$A8,$2E
                    db $03,$FE,$89,$2B,$C1,$2D,$FF,$FF

DATA_15B568:        db $05,$FE,$0B,$20,$AE,$20,$90,$21
                    db $94,$2F,$6F,$30,$8F,$30,$1B,$34
                    db $3B,$34,$5B,$34,$07,$36,$11,$FE
                    db $1B,$20,$80,$21,$A4,$2F,$5F,$30
                    db $7F,$30,$9F,$30,$2B,$34,$4B,$34
                    db $6B,$34,$17,$36,$16,$FE,$2B,$20
                    db $27,$36,$0D,$37,$01,$21,$0C,$42
                    db $92,$42,$94,$42,$06,$FE,$AF,$20
                    db $F1,$20,$E3,$2B,$4E,$30,$6E,$30
                    db $8E,$30,$1A,$34,$3A,$34,$4A,$34
                    db $FD,$36,$71,$21,$FF,$33,$1F,$34
                    db $3F,$34,$5F,$34,$01,$FE,$8F,$20
                    db $70,$21,$D2,$2B,$12,$42,$14,$42
                    db $97,$43,$A1,$44,$A3,$44,$A5,$44
                    db $AA,$44,$AC,$44,$AE,$44,$EF,$33
                    db $12,$FE,$9F,$20,$81,$21,$3E,$30
                    db $5E,$30,$7E,$30,$9E,$30,$2A,$34
                    db $4A,$34,$5A,$34,$0F,$34,$2F,$34
                    db $4F,$34,$17,$FE,$10,$21,$73,$58
                    db $95,$42,$02,$FE,$D3,$2B,$2E,$30
                    db $13,$42,$98,$43,$A2,$44,$A4,$44
                    db $AB,$44,$AD,$44,$03,$FE,$2F,$30
                    db $15,$42,$99,$43,$00,$FE,$EE,$33
                    db $8E,$20,$EA,$33,$96,$43,$34,$2F
                    db $10,$FE,$FE,$33,$1E,$34,$3E,$34
                    db $5E,$34,$16,$38,$10,$58,$30,$58
                    db $50,$58,$0A,$34,$44,$2F,$64,$2F
                    db $84,$2F,$04,$FE,$0E,$34,$2E,$34
                    db $4E,$34,$26,$38,$36,$38,$20,$58
                    db $40,$58,$60,$58,$9E,$20,$FA,$33
                    db $54,$2F,$74,$2F,$14,$FE,$03,$38
                    db $46,$38,$2A,$57,$70,$58,$0A,$42
                    db $9E,$42,$13,$FE,$F3,$57,$13,$58
                    db $33,$58,$53,$58,$07,$FE,$03,$58
                    db $23,$58,$43,$58,$63,$58,$15,$FE
                    db $0B,$42,$0D,$42,$91,$42,$93,$42
                    db $16,$37,$1A,$37,$16,$FE,$13,$37
                    db $FF,$FF

DATA_15B692:        db $14,$FE,$2C,$57,$06,$59
                    db $D0,$5B,$06,$43,$86,$43,$5E,$44
                    db $EA,$44,$AC,$45,$F6,$46,$17,$FE
                    db $2F,$57,$01,$59,$09,$43,$89,$43
                    db $51,$44,$A3,$45,$F9,$46,$12,$FE
                    db $E0,$58,$00,$2B,$20,$2B,$40,$2B
                    db $60,$2B,$80,$2B,$06,$FE,$F0,$58
                    db $E2,$58,$10,$2B,$30,$2B,$50,$2B
                    db $70,$2B,$90,$2B,$11,$FE,$B0,$59
                    db $05,$FE,$C0,$59,$10,$FE,$B0,$5B
                    db $04,$FE,$C0,$5B,$15,$FE,$C6,$5C
                    db $F2,$58,$2D,$57,$07,$43,$87,$43
                    db $5F,$44,$EB,$44,$A1,$45,$AD,$45
                    db $F7,$46,$03,$FE,$AF,$57,$11,$41
                    db $89,$41,$69,$43,$91,$44,$F3,$44
                    db $A9,$46,$49,$47,$13,$FE,$BF,$57
                    db $07,$FE,$CF,$57,$16,$FE,$F5,$58
                    db $2E,$57,$08,$43,$88,$43,$50,$44
                    db $A2,$45,$AD,$45,$F8,$46,$00,$FE
                    db $1E,$41,$86,$41,$66,$43,$9A,$44
                    db $A6,$46,$46,$47,$01,$FE,$87,$41
                    db $67,$43,$9B,$44,$9D,$44,$9F,$44
                    db $A7,$46,$47,$47,$71,$47,$73,$47
                    db $75,$47,$7B,$47,$7D,$47,$02,$FE
                    db $88,$41,$68,$43,$90,$44,$9C,$44
                    db $9E,$44,$F2,$44,$A8,$46,$48,$47
                    db $72,$47,$74,$47,$7A,$47,$7C,$47
                    db $7E,$47,$FF,$FF

DATA_15B76C:        db $02,$FE,$23,$45
                    db $61,$31,$63,$31,$38,$34,$05,$FE
                    db $33,$45,$34,$46,$11,$FE,$43,$45
                    db $24,$46,$4C,$4D,$13,$FE,$73,$45
                    db $30,$4C,$7F,$4C,$9F,$4C,$BF,$4C
                    db $DF,$4C,$FF,$4D,$1F,$4E,$3F,$4E
                    db $07,$FE,$83,$45,$B3,$45,$20,$4C
                    db $0F,$4C,$8F,$4C,$AF,$4C,$EF,$4D
                    db $0F,$4E,$2F,$4E,$04,$FE,$C4,$44
                    db $74,$46,$D2,$4E,$1C,$FE,$8A,$21
                    db $AA,$21,$CA,$21,$14,$FE,$D4,$44
                    db $E2,$4E,$17,$FE,$C3,$45,$1F,$4C
                    db $23,$FE,$45,$32,$01,$FE,$14,$46
                    db $1E,$46,$60,$31,$62,$31,$64,$31
                    db $6F,$31,$37,$34,$03,$FE,$6F,$4C
                    db $1B,$FE,$65,$31,$39,$34,$10,$FE
                    db $4A,$4D,$12,$FE,$4B,$4D,$4D,$4D
                    db $1A,$FE,$6E,$31,$36,$34,$6A,$21
                    db $22,$FE,$42,$32,$44,$32,$21,$FE
                    db $43,$32,$FF,$FF

DATA_15B804:        db $04,$FE,$7D,$28
                    db $9D,$28,$66,$2F,$9E,$31,$10,$FE
                    db $8D,$28,$AD,$28,$AE,$31,$05,$FE
                    db $F4,$2B,$E6,$2C,$A0,$30,$2D,$30
                    db $E0,$37,$15,$FE,$04,$2C,$F6,$2C
                    db $FC,$2D,$FE,$2D,$E6,$2E,$EA,$2E
                    db $C8,$2F,$B0,$30,$20,$31,$A2,$31
                    db $02,$37,$F0,$37,$12,$2C,$17,$FE
                    db $13,$2C,$6F,$2D,$A3,$31,$03,$FE
                    db $4F,$2D,$BF,$2D,$63,$32,$13,$FE
                    db $5F,$2D,$EF,$2F,$0F,$30,$14,$FE
                    db $F0,$2D,$16,$FE,$E1,$2E,$E3,$2E
                    db $E7,$2E,$3D,$30,$07,$37,$27,$2B
                    db $2D,$2B,$07,$FE,$67,$2F,$DF,$2F
                    db $FF,$2F,$93,$31,$01,$FE,$1D,$30
                    db $00,$31,$70,$31,$CC,$2C,$06,$FE
                    db $10,$31,$9B,$2C,$00,$FE,$46,$2F
                    db $11,$FE,$B0,$38,$FF,$FF

DATA_15B88E:        db $13,$FE
                    db $21,$21,$41,$21,$07,$FE,$31,$21
                    db $17,$FE,$51,$21,$14,$21,$12,$FE
                    db $C3,$21,$05,$FE,$94,$21,$B4,$21
                    db $06,$FE,$F5,$20,$16,$FE,$05,$21
                    db $11,$FE,$A4,$21,$C4,$21,$FF,$FF

DATA_15B8B8:        db $00,$FE,$5D,$2D,$2B,$33,$38,$33
                    db $F3,$28,$C6,$28,$10,$FE,$6D,$2D
                    db $8D,$2D,$13,$29,$D6,$28,$04,$FE
                    db $7D,$2D,$23,$29,$E6,$28,$11,$FE
                    db $20,$32,$40,$32,$60,$32,$01,$34
                    db $5A,$33,$58,$33,$56,$33,$05,$FE
                    db $30,$32,$50,$32,$7E,$31,$7C,$31
                    db $7A,$31,$2F,$33,$4A,$33,$48,$33
                    db $66,$33,$68,$33,$6A,$33,$01,$FE
                    db $1F,$33,$39,$33,$06,$FE,$4F,$31
                    db $6F,$31,$7D,$31,$7B,$31,$10,$34
                    db $2E,$33,$49,$33,$65,$33,$67,$33
                    db $69,$33,$12,$FE,$5F,$31,$7F,$31
                    db $59,$33,$57,$33,$55,$33,$03,$FE
                    db $C9,$28,$1C,$29,$13,$FE,$D9,$28
                    db $F9,$28,$CD,$20,$ED,$20,$07,$FE
                    db $E9,$28,$09,$29,$2C,$29,$DD,$20
                    db $02,$FE,$3F,$31,$47,$33,$3A,$33
                    db $00,$34,$FF,$FF

DATA_15B94C:        db $14,$FE,$61,$43
                    db $04,$FE,$51,$43,$31,$43,$11,$43
                    db $F1,$42,$86,$39,$6B,$39,$8B,$39
                    db $30,$3A,$50,$3A,$70,$3A,$32,$3E
                    db $25,$3F,$10,$FE,$41,$43,$21,$43
                    db $01,$43,$E1,$42,$76,$39,$7B,$39
                    db $20,$3A,$40,$3A,$60,$3A,$15,$3F
                    db $13,$FE,$31,$44,$78,$39,$7D,$39
                    db $22,$3A,$42,$3A,$62,$3A,$1B,$3F
                    db $07,$FE,$41,$44,$88,$39,$6D,$39
                    db $8D,$39,$32,$3A,$52,$3A,$72,$3A
                    db $35,$3E,$2B,$3F,$17,$FE,$51,$44
                    db $02,$FE,$23,$3E,$A1,$4C,$01,$FE
                    db $7E,$44,$15,$FE,$02,$4E,$04,$4E
                    db $1E,$4D,$16,$FE,$01,$4E,$07,$4E
                    db $00,$FE,$5B,$39,$66,$39,$10,$3A
                    db $22,$3E,$05,$3F,$03,$FE,$5D,$39
                    db $68,$39,$12,$3A,$25,$3E,$0B,$3F
                    db $FF,$FF

DATA_15B9DA:        db $07,$FE,$27,$20,$47,$20
                    db $2A,$30,$4A,$30,$6A,$30,$13,$FE
                    db $37,$20,$57,$20,$3A,$30,$5A,$30
                    db $02,$FE,$68,$20,$06,$FE,$78,$20
                    db $08,$20,$15,$FE,$88,$20,$04,$FE
                    db $76,$20,$62,$30,$44,$30,$26,$30
                    db $14,$FE,$86,$20,$03,$FE,$6C,$20
                    db $1A,$30,$00,$FE,$16,$30,$34,$30
                    db $52,$30,$FF,$FF

DATA_15BA1C:        db $00,$FE,$BB,$21
                    db $A4,$22,$A9,$22,$E0,$30,$1A,$FE
                    db $95,$2C,$68,$2C,$72,$2E,$2D,$2F
                    db $44,$2F,$5F,$30,$0D,$31,$66,$31
                    db $F3,$31,$10,$FE,$CB,$21,$B4,$22
                    db $B9,$22,$A5,$2C,$C5,$22,$88,$2C
                    db $82,$2E,$A2,$2E,$54,$2F,$74,$2F
                    db $94,$2F,$3D,$2F,$5D,$2F,$7D,$2F
                    db $9D,$2F,$76,$31,$6F,$30,$8F,$30
                    db $97,$32,$D7,$32,$9B,$32,$DB,$32
                    db $FC,$32,$C5,$2C,$1D,$31,$3D,$31
                    db $5D,$31,$7D,$31,$03,$32,$23,$32
                    db $43,$32,$63,$32,$01,$FE,$BF,$21
                    db $97,$2C,$2F,$2F,$40,$31,$42,$31
                    db $10,$30,$11,$FE,$CF,$21,$A7,$2C
                    db $C7,$2C,$3F,$2F,$5F,$2F,$7F,$2F
                    db $9F,$2F,$C0,$37,$02,$FE,$A0,$22
                    db $41,$31,$5F,$33,$12,$FE,$B0,$22
                    db $00,$37,$00,$20,$20,$20,$40,$20
                    db $60,$20,$BF,$32,$DF,$32,$FF,$32
                    db $04,$FE,$87,$32,$A7,$32,$C7,$32
                    db $8B,$32,$AB,$32,$CB,$32,$0C,$33
                    db $DB,$21,$C4,$22,$C9,$22,$1C,$FE
                    db $78,$2C,$B5,$2C,$92,$2E,$4D,$2F
                    db $6D,$2F,$8D,$2F,$64,$2F,$84,$2F
                    db $AD,$2F,$A4,$2F,$7F,$30,$9F,$30
                    db $86,$31,$D5,$2C,$B2,$2E,$2D,$31
                    db $4D,$31,$6D,$31,$8D,$31,$13,$32
                    db $33,$32,$53,$32,$73,$32,$05,$FE
                    db $B7,$2C,$D7,$2C,$AF,$2F,$4F,$2F
                    db $6F,$2F,$8F,$2F,$E3,$32,$DF,$21
                    db $C5,$22,$14,$FE,$6E,$2B,$F2,$32
                    db $E7,$32,$EB,$32,$1C,$33,$20,$FE
                    db $F0,$30,$15,$FE,$10,$37,$14,$37
                    db $21,$FE,$F1,$30,$17,$FE,$E9,$32
                    db $E5,$32,$F4,$32,$23,$FE,$F2,$30
                    db $06,$FE,$E2,$32,$E4,$32,$E8,$32
                    db $F0,$36,$C0,$22,$10,$20,$30,$20
                    db $50,$20,$CF,$32,$EF,$32,$0F,$33
                    db $19,$FE,$13,$33,$08,$33,$07,$FE
                    db $85,$32,$A5,$32,$C5,$32,$89,$32
                    db $A9,$32,$C9,$32,$1D,$FE,$7A,$2C
                    db $9A,$2C,$BA,$2C,$DA,$2C,$97,$2E
                    db $B7,$2E,$67,$2F,$87,$2F,$A7,$2F
                    db $31,$30,$51,$30,$71,$30,$91,$30
                    db $2F,$31,$4F,$31,$63,$31,$6F,$31
                    db $83,$31,$89,$31,$8F,$31,$15,$32
                    db $35,$32,$55,$32,$75,$32,$13,$FE
                    db $95,$32,$D5,$32,$99,$32,$D9,$32
                    db $1B,$FE,$6A,$2C,$77,$2E,$47,$2F
                    db $11,$30,$0F,$31,$43,$31,$69,$31
                    db $F5,$31,$16,$FE,$1F,$33,$FF,$FF

DATA_15BBB8:        db $05,$FE,$F0,$20,$10,$21,$30,$21
                    db $CD,$36,$EF,$46,$0F,$47,$2F,$47
                    db $4B,$44,$6B,$44,$06,$FE,$CE,$36
                    db $EE,$36,$0E,$47,$2E,$47,$4C,$44
                    db $6C,$44,$5D,$21,$7D,$21,$AF,$59
                    db $15,$FE,$40,$21,$ED,$36,$C9,$45
                    db $EB,$45,$0D,$46,$11,$FE,$C0,$21
                    db $BD,$36,$DD,$36,$FF,$46,$1F,$47
                    db $5B,$44,$00,$21,$20,$21,$08,$FE
                    db $75,$31,$79,$31,$2F,$31,$51,$32
                    db $35,$32,$18,$FE,$3F,$31,$5F,$31
                    db $7F,$31,$09,$FE,$4F,$31,$6F,$31
                    db $02,$FE,$A2,$57,$AD,$36,$AE,$36
                    db $42,$47,$4D,$47,$03,$FE,$9F,$58
                    db $43,$47,$61,$41,$13,$FE,$AF,$58
                    db $CF,$58,$94,$43,$A6,$44,$07,$FE
                    db $88,$43,$54,$44,$00,$FE,$6E,$36
                    db $AC,$36,$7E,$37,$4C,$47,$12,$FE
                    db $BE,$36,$DE,$36,$1E,$47,$3E,$47
                    db $5C,$44,$6D,$21,$8D,$21,$9F,$59
                    db $BF,$59,$14,$FE,$EC,$36,$0E,$37
                    db $9C,$38,$BD,$38,$C7,$43,$C8,$45
                    db $EA,$45,$0C,$46,$2E,$46,$17,$FE
                    db $A4,$43,$F6,$44,$E5,$45,$03,$46
                    db $21,$46,$19,$FE,$F8,$43,$16,$FE
                    db $E4,$45,$02,$46,$04,$FE,$EC,$42
                    db $0F,$36,$2F,$36,$4F,$36,$1F,$37
                    db $3F,$37,$5F,$37,$10,$FE,$FC,$42
                    db $1F,$36,$3F,$36,$5F,$36,$2F,$37
                    db $4F,$37,$6F,$37,$1D,$FE,$C9,$57
                    db $E9,$57,$BF,$58,$DF,$58,$63,$47
                    db $83,$47,$1C,$FE,$BE,$58,$DE,$58
                    db $AA,$59,$CA,$59,$6C,$47,$8C,$47
                    db $FF,$FF

DATA_15BCC2:        db $06,$FE,$F0,$20,$47,$3A
                    db $1B,$55,$1D,$55,$0C,$55,$CC,$54
                    db $3F,$55,$5F,$55,$12,$FE,$00,$21
                    db $37,$3A,$0B,$55,$FC,$54,$4F,$55
                    db $15,$FE,$10,$21,$D2,$39,$11,$FE
                    db $C0,$21,$7F,$54,$9F,$54,$BF,$54
                    db $DF,$54,$FF,$54,$1F,$55,$04,$FE
                    db $D0,$38,$87,$3A,$CC,$54,$14,$FE
                    db $E0,$38,$50,$39,$44,$3A,$00,$FE
                    db $30,$39,$24,$3A,$FA,$54,$16,$FE
                    db $D3,$39,$03,$FE,$21,$3A,$13,$FE
                    db $31,$3A,$83,$3A,$10,$FE,$34,$3A
                    db $82,$3A,$17,$FE,$41,$3A,$02,$FE
                    db $27,$3A,$01,$FE,$FB,$54,$05,$FE
                    db $1A,$55,$1C,$55,$1E,$55,$8F,$54
                    db $AF,$54,$CF,$54,$EF,$54,$0F,$55
                    db $2F,$55,$FF,$FF

DATA_15BD44:        db $11,$FE,$5F,$26
                    db $7F,$26,$7A,$2B,$E1,$20,$E3,$20
                    db $E5,$20,$E7,$20,$E9,$20,$7F,$28
                    db $9F,$28,$BF,$28,$DF,$28,$FF,$28
                    db $12,$FE,$FB,$2C,$7E,$26,$E2,$20
                    db $E4,$20,$E6,$20,$E8,$20,$EA,$20
                    db $00,$20,$20,$20,$40,$20,$60,$20
                    db $80,$20,$A0,$20,$C0,$20,$E0,$20
                    db $01,$FE,$D4,$20,$D6,$20,$D8,$20
                    db $4F,$26,$6A,$2B,$DA,$20,$02,$FE
                    db $D5,$20,$D7,$20,$D9,$20,$05,$FE
                    db $6F,$26,$8A,$2B,$D1,$20,$D3,$20
                    db $8F,$26,$8F,$28,$AF,$28,$CF,$28
                    db $EF,$28,$0F,$29,$04,$FE,$7C,$28
                    db $9C,$28,$BC,$28,$E0,$3F,$F0,$37
                    db $10,$FE,$8C,$28,$AC,$28,$E0,$37
                    db $15,$FE,$1A,$2B,$1C,$2B,$13,$FE
                    db $CA,$2B,$09,$2E,$1F,$36,$3F,$36
                    db $57,$37,$67,$37,$06,$FE,$8B,$2B
                    db $EB,$2C,$D2,$20,$10,$20,$30,$20
                    db $50,$20,$70,$20,$90,$20,$B0,$20
                    db $D0,$20,$17,$FE,$AB,$2B,$7E,$2B
                    db $29,$2E,$5F,$36,$07,$FE,$19,$2E
                    db $0F,$36,$2F,$36,$4F,$36,$16,$FE
                    db $7D,$2B,$14,$FE,$00,$38,$0B,$FE
                    db $6F,$2B,$0C,$FE,$50,$2C,$0D,$FE
                    db $51,$2C,$FF,$FF

DATA_15BE14:        db $05,$FE,$0C,$20
                    db $F6,$20,$E0,$37,$6E,$38,$8A,$38
                    db $8C,$38,$40,$30,$60,$30,$80,$30
                    db $11,$FE,$50,$30,$70,$30,$B0,$38
                    db $5E,$38,$90,$30,$15,$FE,$2C,$20
                    db $06,$21,$F0,$37,$17,$FE,$6B,$20
                    db $15,$21,$1F,$37,$07,$FE,$3B,$20
                    db $5B,$20,$13,$FE,$4B,$20,$02,$FE
                    db $B3,$2B,$30,$30,$DC,$33,$5D,$38
                    db $00,$FE,$A9,$2D,$4F,$2F,$34,$30
                    db $00,$34,$5A,$38,$10,$FE,$B9,$2D
                    db $6F,$2F,$8F,$2F,$44,$30,$64,$30
                    db $84,$30,$20,$34,$40,$34,$6A,$38
                    db $AF,$2F,$04,$FE,$5F,$2F,$7F,$2F
                    db $9F,$2F,$54,$30,$74,$30,$10,$34
                    db $30,$34,$7A,$38,$94,$30,$50,$34
                    db $14,$FE,$14,$37,$08,$38,$12,$FE
                    db $1C,$20,$7D,$38,$7E,$38,$06,$FE
                    db $6D,$38,$8B,$38,$8D,$38,$FF,$FF

DATA_15BEA8:        db $04,$FE,$3A,$37,$10,$FE,$2A,$37
                    db $06,$FE,$00,$2C,$20,$2C,$40,$2C
                    db $60,$2C,$80,$2C,$EF,$37,$0F,$38
                    db $2F,$38,$2E,$49,$4E,$49,$6E,$49
                    db $6C,$49,$00,$2B,$20,$2B,$40,$2B
                    db $60,$2B,$80,$2B,$DF,$2E,$FF,$2E
                    db $1F,$2F,$3F,$2F,$5F,$2F,$12,$FE
                    db $FF,$37,$1F,$38,$F0,$2B,$10,$2C
                    db $30,$2C,$50,$2C,$70,$2C,$3E,$49
                    db $5E,$49,$5C,$49,$10,$2B,$30,$2B
                    db $50,$2B,$70,$2B,$90,$2B,$CF,$2E
                    db $EF,$2E,$0F,$2F,$2F,$2F,$4F,$2F
                    db $01,$FE,$90,$37,$4C,$49,$91,$49
                    db $93,$49,$14,$FE,$4A,$37,$15,$FE
                    db $34,$38,$E4,$38,$D8,$39,$BC,$3B
                    db $16,$FE,$37,$38,$3F,$38,$C7,$3A
                    db $C9,$3A,$B1,$3B,$B3,$3B,$05,$FE
                    db $1F,$2B,$3F,$2B,$5F,$2B,$7F,$2B
                    db $9F,$2B,$D4,$38,$6F,$49,$4F,$49
                    db $2F,$49,$0F,$49,$4D,$49,$6D,$49
                    db $C9,$49,$E9,$49,$09,$4A,$29,$4A
                    db $49,$4A,$07,$FE,$97,$3C,$B7,$3C
                    db $D7,$3C,$13,$FE,$A7,$3C,$C7,$3C
                    db $4F,$39,$17,$FE,$E7,$3C,$5F,$39
                    db $11,$FE,$0F,$2B,$2F,$2B,$4F,$2B
                    db $6F,$2B,$8F,$2B,$5F,$49,$3F,$49
                    db $1F,$49,$5D,$49,$B9,$49,$D9,$49
                    db $F9,$49,$19,$4A,$39,$4A,$59,$4A
                    db $03,$FE,$3F,$39,$90,$48,$95,$49
                    db $00,$FE,$9F,$48,$7A,$49,$B8,$49
                    db $02,$FE,$92,$49,$94,$49,$FF,$FF

DATA_15BFA0:        db $00,$FE,$7A,$4D,$01,$FE,$7B,$4D
                    db $7D,$4D,$02,$FE,$7C,$4D,$12,$FE
                    db $8B,$4D,$8D,$4D,$11,$FE,$8C,$4D
                    db $8E,$4D,$06,$FE,$9B,$4D,$9D,$4D
                    db $7F,$4D,$05,$FE,$9C,$4D,$7E,$4D
                    db $04,$FE,$8A,$4D,$10,$FE,$9A,$4D
                    db $FF,$FF

DATA_15BFD2:        db $14,$FE,$51,$2C,$58,$2C
                    db $38,$2E,$12,$38,$23,$38,$F2,$39
                    db $03,$3A,$49,$37,$29,$39,$09,$3B
                    db $20,$42,$20,$43,$9E,$4D,$19,$62
                    db $16,$63,$A6,$63,$36,$64,$C6,$64
                    db $E9,$6A,$B9,$68,$29,$39,$19,$6D
                    db $2E,$6F,$16,$7C,$22,$7D,$1E,$7C
                    db $DE,$7D,$69,$86,$17,$FE,$52,$2C
                    db $59,$2C,$5C,$2C,$39,$2E,$C7,$30
                    db $2D,$37,$3C,$37,$0D,$39,$1C,$39
                    db $47,$37,$0D,$3B,$A1,$3D,$9F,$4D
                    db $17,$62,$19,$63,$A9,$63,$39,$64
                    db $C9,$64,$E7,$6A,$B7,$68,$17,$6D
                    db $21,$6F,$19,$7C,$DC,$7D,$81,$7C
                    db $67,$86,$19,$FE,$65,$2C,$6B,$2C
                    db $9B,$4D,$57,$7D,$7D,$83,$08,$FE
                    db $9F,$2C,$7D,$2E,$74,$2F,$8B,$4D
                    db $6D,$83,$25,$FE,$57,$2F,$5C,$41
                    db $66,$4C,$87,$4D,$72,$4F,$75,$4F
                    db $67,$70,$17,$7E,$6B,$84,$FC,$84
                    db $8B,$85,$00,$FE,$26,$31,$65,$31
                    db $93,$38,$A2,$38,$73,$3A,$82,$3A
                    db $40,$4D,$8E,$4D,$18,$50,$E6,$62
                    db $76,$63,$06,$64,$96,$64,$A8,$70
                    db $76,$7B,$C2,$7C,$78,$7E,$29,$68
                    db $79,$6A,$19,$86,$B0,$42,$90,$43
                    db $6E,$6E,$2E,$7A,$AE,$7D,$16,$FE
                    db $2F,$36,$83,$3E,$E6,$6A,$66,$86
                    db $02,$FE,$DF,$36,$26,$68,$06,$FE
                    db $3B,$37,$A3,$38,$1B,$39,$83,$3A
                    db $05,$FE,$BC,$37,$24,$38,$9C,$39
                    db $03,$FE,$AC,$37,$BD,$37,$8C,$39
                    db $9D,$39,$41,$4D,$8F,$4D,$19,$50
                    db $E9,$62,$79,$63,$09,$64,$99,$64
                    db $A6,$70,$79,$7B,$AC,$7D,$76,$7E
                    db $27,$68,$77,$6A,$17,$86,$CF,$2C
                    db $61,$6E,$21,$7A,$12,$FE,$F3,$39
                    db $15,$FE,$16,$3A,$C6,$3B,$9A,$54
                    db $13,$FE,$07,$62,$07,$6D,$A6,$2F
                    db $DF,$2C,$10,$FE,$09,$62,$09,$6D
                    db $A8,$2F,$0A,$FE,$26,$6F,$69,$78
                    db $AC,$83,$37,$22,$0D,$FE,$29,$6F
                    db $AD,$83,$04,$FE,$C8,$38,$88,$3C
                    db $D8,$4D,$AE,$50,$B8,$70,$88,$7E
                    db $07,$FE,$C6,$38,$86,$3C,$D6,$4D
                    db $AC,$50,$B6,$70,$86,$7E,$FF,$FF

PNTR_15C140:        dw DATA_15C152
                    dw DATA_15C188
                    dw DATA_15C1BE
                    dw DATA_15C1CE
                    dw DATA_15C1FA
                    dw DATA_15C226
                    dw DATA_15C2B8
                    dw DATA_15C31C
                    dw DATA_15C3AE

DATA_15C152:        db $01,$C3,$40,$40,$40,$08,$13,$11
                    db $11,$11,$11,$11,$11,$11,$02,$00
                    db $04,$40,$09,$07,$40,$40,$40,$40
                    db $40,$40,$40,$01,$01,$05,$11,$0A
                    db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$0B,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40

DATA_15C188:        db $0B,$C3
                    db $40,$40,$40,$0C,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$00,$06,$11
                    db $0D,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$01,$07,$40,$0E,$04,$40
                    db $40,$40,$40,$40,$40,$40,$00,$40
                    db $40,$40,$0F,$12,$11,$11,$11,$11
                    db $11,$11,$11,$03

DATA_15C1BE:        db $D1,$0D,$04,$18
                    db $19,$0B,$AB,$AB,$AB,$AB,$AB,$AB
                    db $0C,$19,$1A,$07

DATA_15C1CE:        db $B1,$2D,$02,$14
                    db $04,$01,$15,$10,$40,$01,$18,$40
                    db $40,$19,$40,$40,$19,$40,$40,$19
                    db $40,$40,$19,$40,$40,$19,$40,$40
                    db $19,$40,$40,$19,$40,$40,$19,$40
                    db $00,$1A,$00,$16,$10,$03,$17,$07

DATA_15C1FA:        db $B1,$2D,$02,$14,$04,$01,$15,$10
                    db $40,$01,$18,$40,$40,$0B,$40,$40
                    db $AB,$40,$40,$AB,$40,$40,$AB,$40
                    db $40,$AB,$40,$40,$AB,$40,$40,$AB
                    db $40,$40,$0C,$40,$00,$1A,$00,$16
                    db $10,$03,$17,$07

DATA_15C226:        db $D0,$8F,$40,$08
                    db $13,$11,$11,$11,$11,$11,$22,$04
                    db $20,$10,$40,$40,$40,$40,$40,$19
                    db $1C,$16,$10,$40,$40,$40,$40,$40
                    db $19,$1D,$17,$07,$40,$40,$40,$40
                    db $40,$19,$0B,$40,$40,$40,$40,$40
                    db $40,$40,$19,$AB,$40,$40,$40,$40
                    db $40,$40,$40,$19,$AB,$40,$40,$40
                    db $40,$40,$40,$40,$19,$AB,$40,$40
                    db $40,$40,$40,$40,$40,$19,$AB,$40
                    db $40,$40,$40,$40,$40,$40,$19,$AB
                    db $40,$40,$40,$40,$40,$40,$40,$19
                    db $AB,$40,$40,$40,$40,$40,$40,$40
                    db $19,$0C,$40,$40,$40,$40,$40,$40
                    db $40,$19,$1E,$14,$04,$40,$40,$40
                    db $40,$40,$19,$1F,$15,$10,$40,$40
                    db $40,$40,$40,$19,$07,$21,$10,$40
                    db $40,$40,$40,$40,$19,$40,$0F,$12
                    db $11,$11,$11,$11,$11,$23

DATA_15C2B8:        db $D1,$6D
                    db $14,$14,$14,$06,$11,$11,$11,$2B
                    db $17,$17,$07,$9D,$9D,$9D,$19,$9D
                    db $9D,$9D,$9D,$9D,$9D,$0B,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9C,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9C,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$0C,$9D
                    db $9D,$9D,$9D,$9D,$9D,$19,$9D,$9D
                    db $9D,$9D,$9D,$9D,$2A,$14,$14,$04
                    db $9D,$9D,$9D,$17,$17,$17,$05,$11
                    db $11,$11

DATA_15C31C:        db $50,$8F,$2E,$11,$11,$11
                    db $11,$11,$02,$24,$25,$23,$9D,$9D
                    db $9D,$9D,$9D,$01,$17,$26,$9D,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$19,$9D
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$19
                    db $9D,$9C,$9D,$9D,$9D,$9D,$9D,$9D
                    db $19,$9D,$9C,$9D,$9D,$9D,$9D,$9D
                    db $9D,$19,$9D,$9D,$9D,$40,$40,$40
                    db $00,$14,$1A,$9D,$9D,$9D,$40,$40
                    db $40,$1B,$2C,$10,$9D,$9D,$9D,$40
                    db $40,$40,$1B,$2C,$10,$9D,$9D,$9D
                    db $40,$40,$40,$01,$17,$18,$9D,$9C
                    db $9D,$9D,$9D,$9D,$9D,$9D,$19,$9D
                    db $9C,$9D,$9D,$9D,$9D,$9D,$9D,$19
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $19,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$19,$22,$9D,$9D,$9D,$9D,$9D
                    db $00,$14,$27,$2D,$11,$11,$11,$11
                    db $11,$03,$29,$28

DATA_15C3AE:        db $50,$8F,$2E,$11
                    db $11,$11,$11,$11,$02,$24,$25,$23
                    db $9D,$9D,$9D,$9D,$9D,$01,$17,$26
                    db $9D,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $19,$9D,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$19,$9D,$9C,$9D,$9D,$9D,$9D
                    db $9D,$9D,$19,$9D,$9C,$9D,$9D,$9D
                    db $9D,$9D,$9D,$19,$9D,$9D,$9D,$9D
                    db $9D,$40,$00,$14,$1A,$9D,$9D,$9D
                    db $9D,$9D,$9D,$1B,$2C,$10,$9D,$40
                    db $9D,$9D,$9D,$9D,$1B,$2C,$10,$9D
                    db $9D,$9D,$9D,$9D,$9D,$01,$17,$18
                    db $9D,$9C,$9D,$9D,$9D,$9D,$9D,$9D
                    db $19,$9D,$9C,$9D,$9D,$9D,$9D,$9D
                    db $9D,$19,$9D,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$19,$9D,$9D,$9D,$9D,$9D
                    db $9D,$9D,$9D,$19,$22,$9D,$9D,$9D
                    db $9D,$9D,$00,$14,$27,$2D,$11,$11
                    db $11,$11,$11,$03,$29,$28

PNTR_15C440:        dw DATA_15C44C
                    dw DATA_15C450
                    dw DATA_15C454
                    dw DATA_15C458
                    dw DATA_15C45C
                    dw DATA_15C461

DATA_15C44C:        db $00,$01,$02,$FF

DATA_15C450:        db $00,$01,$03,$FF

DATA_15C454:        db $00,$01,$04,$FF

DATA_15C458:        db $00,$01,$05,$FF

DATA_15C45C:        db $00,$01,$06,$07,$FF
              
DATA_15C461:        db $00,$01,$06,$08,$FF
   
PNTR_15C466:        dw DATA_15C48E
                    dw DATA_15C49E
                    dw DATA_15C4AE
                    dw DATA_15C4BE
                    dw DATA_15C4CE
                    dw DATA_15C4DE
                    dw DATA_15C4EE
                    dw DATA_15C4FE
                    dw DATA_15C50E
                    dw DATA_15C51E
                    dw DATA_15C52E
                    dw DATA_15C53E
                    dw DATA_15C54E
                    dw DATA_15C55E
                    dw DATA_15C56E
                    dw DATA_15C57E
                    dw DATA_15C58E
                    dw DATA_15C59E
                    dw DATA_15C5AE
                    dw DATA_15C5BE

DATA_15C48E:        db $77,$77,$77,$77,$77,$77,$77,$77
                    db $77,$77,$77,$77,$77,$77,$77,$77

DATA_15C49E:        db $77,$7B,$F8,$F8,$F8,$F8,$F8,$F8
                    db $F8,$F8,$F8,$F8,$F8,$F8,$7A,$77

DATA_15C4AE:        db $F8,$F6,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$7F,$F8

DATA_15C4BE:        db $40,$40,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$40,$40

DATA_15C4CE:        db $F7,$7E,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$7D,$F7

DATA_15C4DE:        db $77,$FA,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$F9,$77

DATA_15C4EE:        db $7B,$F6,$40,$40,$40,$40,$40,$40
                    db $40,$40,$40,$40,$40,$40,$F9,$77

DATA_15C4FE:        db $FA,$40,$40,$40,$40,$40,$7D,$F7
                    db $F7,$F7,$F7,$F7,$F7,$F7,$78,$77

DATA_15C50E:        db $FA,$40,$40,$40,$40,$40,$FB,$F8
                    db $F8,$F8,$F8,$F8,$F8,$F8,$7A,$77

DATA_15C51E:        db $79,$7E,$40,$40,$40,$40,$7C,$40
                    db $40,$40,$40,$40,$40,$40,$F9,$77

DATA_15C52E:        db $77,$FA,$40,$40,$40,$40,$7C,$40
                    db $40,$40,$40,$40,$40,$40,$F9,$77

DATA_15C53E:        db $77,$FA,$40,$40,$40,$40,$FC,$F7
                    db $F7,$7E,$40,$40,$40,$40,$F9,$77

DATA_15C54E:        db $77,$FA,$40,$40,$40,$40,$F9,$77
                    db $77,$FA,$40,$40,$40,$40,$F9,$77

DATA_15C55E:        db $77,$FA,$40,$40,$40,$40,$F9,$7B
                    db $F8,$F6,$40,$40,$40,$40,$F9,$77

DATA_15C56E:        db $77,$FA,$40,$40,$40,$40,$F9,$FA
                    db $40,$40,$40,$40,$40,$40,$F9,$77

DATA_15C57E:        db $77,$FA,$40,$40,$40,$40,$7F,$F6
                    db $40,$40,$40,$40,$40,$40,$F9,$77

DATA_15C58E:        db $77,$FA,$40,$40,$40,$40,$7D,$F7
                    db $F7,$7E,$40,$40,$40,$40,$F9,$77

DATA_15C59E:        db $77,$79,$F7,$7E,$40,$40,$40,$40
                    db $40,$40,$40,$40,$7D,$F7,$78,$77

DATA_15C5AE:        db $77,$77,$77,$FA,$40,$40,$40,$40
                    db $40,$40,$40,$40,$F9,$77,$77,$77

DATA_15C5BE:        db $77,$77,$77,$79,$F7,$F7,$F7,$F7
                    db $F7,$F7,$F7,$F7,$78,$77,$77,$77

DATA_15C5CE:        db $00,$03,$01,$01,$02,$01,$03,$04
                    db $04,$01,$05,$03,$02,$01,$03,$03
                    db $04,$01,$05,$02,$02,$01,$03,$03
                    db $04,$01,$05,$02,$02,$01,$03,$03
                    db $04,$01,$05,$04,$02,$01,$03,$03
                    db $04,$01,$05,$07,$06,$01,$07,$01
                    db $08,$01,$09,$01,$0A,$01,$0B,$01
                    db $0C,$04,$0D,$01,$0E,$05,$0F,$01
                    db $05,$03,$10,$01,$0C,$06,$0D,$01
                    db $0E,$06,$0F,$01,$05,$08,$11,$01
                    db $12,$02,$13,$01,$00,$01,$FF

PNTR_15C625:        dl DATA_15C628

DATA_15C628:        db $00,$00,$03,$21,$2C,$00,$06,$03
                    db $22,$2C,$00,$00,$03,$28,$2C,$00
                    db $06,$03,$29,$2C,$00,$06,$03,$2C
                    db $2C,$00,$02,$02,$FF,$2B,$01,$07
                    db $04,$1F,$2C,$01,$07,$12,$11,$2C
                    db $00,$00,$03,$08,$2E,$00,$06,$03
                    db $09,$2E,$00,$04,$04,$29,$31,$00
                    db $03,$04,$38,$31,$00,$05,$04,$37
                    db $31,$00,$00,$03,$36,$31,$01,$02
                    db $04,$66,$31,$00,$06,$02,$A7,$30
                    db $00,$00,$03,$A9,$30,$01,$05,$04
                    db $75,$31,$01,$00,$02,$27,$31,$00
                    db $08,$04,$25,$2C,$00,$00,$04,$2B
                    db $2C,$00,$08,$02,$AF,$2C,$00,$08
                    db $03,$7D,$2E,$00,$08,$02,$74,$2F
                    db $01,$06,$02,$F8,$2D,$01,$07,$03
                    db $27,$36,$00,$02,$02,$0F,$36,$00
                    db $08,$0A,$3F,$36,$01,$02,$02,$1C
                    db $37,$01,$05,$02,$2B,$37,$00,$05
                    db $02,$AB,$37,$01,$04,$02,$CC,$37
                    db $01,$02,$02,$02,$38,$01,$05,$02
                    db $13,$38,$00,$03,$02,$94,$38,$01
                    db $04,$02,$B2,$38,$00,$07,$02,$96
                    db $38,$00,$01,$02,$98,$38,$00,$02
                    db $06,$E8,$37,$01,$02,$02,$FC,$38
                    db $01,$05,$02,$0B,$39,$00,$05,$02
                    db $8B,$39,$01,$04,$02,$AC,$39,$01
                    db $02,$02,$E2,$39,$00,$03,$02,$F4
                    db $39,$00,$03,$02,$74,$3A,$01,$04
                    db $02,$92,$3A,$00,$02,$06,$CA,$39
                    db $00,$06,$06,$D7,$38,$00,$06,$06
                    db $B7,$3A,$00,$04,$03,$AE,$3B,$00
                    db $00,$03,$83,$3D,$00,$07,$05,$F7
                    db $36,$00,$01,$05,$F9,$36,$00,$01
                    db $05,$D9,$38,$00,$01,$05,$B9,$3A
                    db $00,$07,$02,$ED,$3A,$00,$07,$02
                    db $81,$3D,$01,$01,$03,$D7,$36,$01
                    db $06,$10,$21,$42,$01,$06,$10,$21
                    db $43,$01,$00,$10,$B1,$42,$01,$00
                    db $10,$91,$43,$01,$03,$20,$10,$42
                    db $01,$05,$20,$C0,$42,$01,$05,$10
                    db $10,$43,$01,$03,$10,$A0,$43,$00
                    db $03,$04,$80,$44,$00,$02,$05,$D0
                    db $43,$00,$00,$07,$50,$4D,$00,$06
                    db $07,$51,$4D,$00,$00,$07,$28,$50
                    db $00,$06,$07,$29,$50,$00,$04,$03
                    db $CE,$4F,$01,$06,$05,$12,$62,$01
                    db $06,$04,$1A,$62,$01,$01,$02,$E7
                    db $62,$01,$07,$02,$17,$63,$01,$01
                    db $02,$77,$63,$01,$07,$02,$A7,$63
                    db $01,$01,$02,$07,$64,$01,$07,$02
                    db $37,$64,$01,$01,$02,$97,$64,$01
                    db $07,$02,$C7,$64,$01,$00,$0C,$A2
                    db $65,$01,$06,$04,$D6,$67,$00,$06
                    db $08,$37,$68,$00,$00,$08,$39,$68
                    db $01,$06,$03,$B4,$68,$01,$06,$02
                    db $BA,$68,$01,$00,$03,$74,$6A,$01
                    db $00,$02,$7A,$6A,$00,$06,$06,$87
                    db $6A,$00,$00,$06,$89,$6A,$01,$00
                    db $04,$46,$6B,$01,$07,$06,$11,$6D
                    db $01,$06,$05,$1A,$6D,$01,$01,$05
                    db $A1,$70,$01,$01,$06,$A9,$70,$01
                    db $08,$02,$27,$6F,$01,$07,$0E,$11
                    db $78,$01,$08,$05,$6A,$78,$01,$01
                    db $02,$77,$7B,$01,$07,$02,$17,$7C
                    db $00,$04,$07,$20,$7C,$00,$06,$07
                    db $21,$7C,$01,$01,$0C,$C3,$7C,$01
                    db $07,$0C,$23,$7D,$00,$00,$05,$D2
                    db $7C,$00,$06,$07,$C0,$7C,$00,$08
                    db $02,$37,$7D,$00,$06,$02,$BC,$7D
                    db $00,$00,$02,$BE,$7D,$01,$00,$0B
                    db $A1,$7D,$01,$06,$0B,$D1,$7D,$01
                    db $00,$05,$71,$7E,$01,$00,$06,$79
                    db $7E,$00,$01,$03,$BE,$7D,$01,$00
                    db $07,$10,$86,$01,$00,$04,$1A,$86
                    db $01,$00,$04,$A6,$86,$00,$06,$04
                    db $27,$86,$00,$00,$04,$29,$86,$FF

PNTR_15C890:        dw DATA_15C8A2
                    dw DATA_15C8A4
                    dw DATA_15C8A6
                    dw DATA_15C8A8
                    dw DATA_15C8AA
                    dw DATA_15C8AC
                    dw DATA_15C8AE
                    dw DATA_15C8B0
                    dw DATA_15C8B2

DATA_15C8A2:        db $04,$10

DATA_15C8A4:        db $10,$04

DATA_15C8A6:        db $05,$11

DATA_15C8A8:        db $11,$05

DATA_15C8AA:        db $06,$12

DATA_15C8AC:        db $12,$06

DATA_15C8AE:        db $07,$13

DATA_15C8B0:        db $13,$07

DATA_15C8B2:        db $09,$18

PNTR_15C8B4:        dw DATA_15C8C6
                    dw DATA_15C8C8
                    dw DATA_15C8CA
                    dw DATA_15C8CC
                    dw DATA_15C8CE
                    dw DATA_15C8D0
                    dw DATA_15C8D2
                    dw DATA_15C8D4
                    dw DATA_15C8D6

DATA_15C8C6:        db $01,$02

DATA_15C8C8:        db $02,$01

DATA_15C8CA:        db $05,$06

DATA_15C8CC:        db $06,$05

DATA_15C8CE:        db $11,$12

DATA_15C8D0:        db $12,$11

DATA_15C8D2:        db $15,$16

DATA_15C8D4:        db $16,$15

DATA_15C8D6:        db $0B,$0C
     
DATA_15C8D8:        db $07,$07,$07,$0D,$0D,$0D,$0D,$0E
                    db $0E,$0E,$0D,$11,$11,$11,$0E,$0E
                    db $0E,$0E,$0E,$0E,$13,$13,$01,$0E
                    db $00,$07,$07,$0D,$0D,$0D,$0D,$0E
                    db $0E,$0E,$07,$07,$07,$07,$07,$07
                    db $07,$07,$07,$07,$0E,$0E,$08,$08
                    db $08,$08,$08,$08,$08,$08,$08,$08
                    db $08,$08,$08,$08,$08,$08,$08,$08
                    db $08,$08,$08,$08,$08,$08,$08,$08
                    db $08,$08,$08,$08,$00,$00,$02,$02
                    db $02,$02,$02,$02,$02,$02,$02,$02
                    db $02,$02,$06,$06,$06,$06,$06,$06
                    db $06,$0D,$0D,$0D,$0D,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$09
                    db $09,$09,$09,$09,$09,$09,$09,$09
                    db $09,$05,$05,$05,$05,$05,$05,$05
                    db $05,$0B,$0B,$0B,$0B,$0B,$0B,$0B
                    db $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
                    db $0B,$0B,$0B,$0E,$0E,$0E,$11,$11

DATA_15C970:        db $00,$00,$00,$01,$01,$01,$01,$01
                    db $01,$01,$01,$01,$01,$01,$01,$01
                    db $01,$01,$01,$01,$06,$06,$00,$01
                    db $01,$00,$00,$01,$01,$01,$01,$01
                    db $02,$02,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$01,$01,$07,$07
                    db $07,$07,$07,$07,$07,$07,$07,$07
                    db $07,$07,$07,$07,$07,$07,$07,$07
                    db $07,$07,$07,$07,$07,$07,$07,$07
                    db $07,$07,$07,$07,$02,$02,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$01,$01,$01,$01,$01,$01
                    db $00,$01,$01,$01,$01,$02,$02,$02
                    db $02,$02,$02,$02,$02,$02,$02,$00
                    db $00,$01,$01,$01,$01,$01,$01,$01
                    db $01,$06,$06,$06,$06,$06,$06,$06
                    db $06,$07,$07,$07,$07,$07,$07,$07
                    db $07,$07,$07,$07,$07,$07,$07,$07
                    db $07,$07,$07,$05,$05,$05,$06,$06

DATA_15CA08:        db $85,$25,$10,$26,$70,$26,$20,$29
                    db $30,$29,$40,$29,$9D,$22,$85,$20
                    db $8B,$20,$BE,$22,$C9,$21,$97,$21
                    db $99,$21,$C7,$21,$DD,$20,$DE,$20
                    db $6D,$27,$6E,$27,$5B,$28,$5C,$28
                    db $E8,$27,$58,$28,$7F,$26,$C7,$20
                    db $D6,$2D,$B1,$22,$91,$24,$AC,$22
                    db $BC,$22,$AD,$22,$BD,$22,$1B,$33
                    db $62,$38,$73,$38,$D2,$21,$B1,$23
                    db $91,$25,$95,$25,$61,$28,$C3,$22
                    db $A3,$24,$93,$25,$80,$26,$63,$28
                    db $67,$28,$69,$28,$CF,$6E,$DF,$6E
                    db $2E,$71,$3E,$71,$4E,$71,$5E,$71
                    db $6E,$71,$7E,$71,$8E,$71,$9E,$71
                    db $AE,$71,$92,$71,$A2,$71,$2B,$71
                    db $3B,$71,$4B,$71,$5B,$71,$6B,$71
                    db $7B,$71,$8B,$71,$85,$6D,$95,$6D
                    db $A5,$6D,$B5,$6D,$C5,$6D,$89,$6D
                    db $99,$6D,$A9,$6D,$B9,$6D,$C9,$6D
                    db $9F,$3A,$78,$39,$A0,$21,$A4,$21
                    db $86,$21,$8D,$21,$A6,$22,$9A,$22
                    db $9D,$22,$60,$25,$61,$25,$64,$25
                    db $65,$25,$68,$25,$C2,$30,$03,$31
                    db $34,$31,$E6,$33,$E7,$33,$09,$34
                    db $48,$21,$D9,$21,$CC,$22,$CD,$22
                    db $50,$29,$B5,$3C,$C5,$3C,$D5,$3C
                    db $E5,$3C,$F5,$3C,$BA,$3C,$CA,$3C
                    db $DA,$3C,$EA,$3C,$FA,$3C,$3E,$29
                    db $3F,$29,$B6,$21,$C6,$21,$D6,$21
                    db $94,$23,$A4,$23,$B4,$23,$93,$25
                    db $7A,$27,$8C,$63

DATA_15CAFC:        db $8D,$63,$9C,$63,$9D,$63,$AC,$63
                    db $AD,$63,$BC,$63,$BD,$63,$00,$6D
                    db $01,$6D,$0E,$6D,$0F,$6D,$10,$6D
                    db $11,$6D,$1E,$6D,$1F,$6D,$60,$6D
                    db $61,$6D,$6E,$6D,$6F,$6D,$70,$6D
                    db $71,$6D,$7E,$6D,$7F,$6D,$C2,$6D
                    db $CD,$6D,$A6,$58,$B6,$58,$C6,$58
                    db $7B,$63,$8B,$63

DATA_15CB38:        db $3A,$DB,$39,$37,$39,$39,$39,$A7
                    db $A7,$39,$39,$A7,$A7,$A7,$3A,$37
                    db $38,$39,$3A,$37,$19,$19,$3A,$A7
                    db $D2,$A7,$A7,$A7,$A7,$39,$39,$70
                    db $F5,$F5,$3A,$3A,$3A,$3A,$3A,$39
                    db $39,$39,$39,$39,$3A,$39,$76,$76
                    db $76,$76,$76,$76,$76,$76,$76,$76
                    db $76,$3F,$3F,$3F,$3F,$3F,$3F,$3F
                    db $3F,$3F,$62,$62,$62,$62,$62,$63
                    db $63,$63,$63,$63,$A4,$A5,$A4,$A5
                    db $A4,$A5,$A5,$A4,$A5,$A4,$A5,$A4
                    db $A5,$A4,$A5,$A5,$A5,$A4,$A5,$A5
                    db $A5,$39,$A7,$39,$39,$CE,$C9,$C9
                    db $C9,$D3,$CA,$C7,$C7,$C7,$D2,$0A
                    db $0A,$39,$39,$39,$39,$39,$39,$A7
                    db $39,$BB,$BA,$BC,$BD,$BF,$BE,$BA
                    db $BB,$BC,$BD,$BC,$BD,$BF,$BE,$BF
                    db $BE,$BC,$BD,$BC,$BD,$BF,$BE,$BF
                    db $BE,$BA,$BB,$BF,$BA,$BD,$BE,$BA

DATA_15CBD0:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
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

DATA_15D000:        db $8C,$68,$A6,$6A,$6A,$A6,$68

CODE_15D007:    PHX                         ; $15:D007: DA          ;
CODE_15D008:    LDX $12                     ; $15:D008: A6 12       ;
CODE_15D00A:    LDA $90,x                   ; $15:D00A: B5 90       ;
CODE_15D00C:    CMP #$36                    ; $15:D00C: C9 36       ;
CODE_15D00E:    BNE CODE_15D038             ; $15:D00E: D0 28       ;
CODE_15D010:    LDA $79,x                   ; $15:D010: B5 79       ;
CODE_15D012:    BEQ CODE_15D038             ; $15:D012: F0 24       ;
CODE_15D014:    INC $079E                   ; $15:D014: EE 9E 07    ;
CODE_15D017:    LDA $079E                   ; $15:D017: AD 9E 07    ;
CODE_15D01A:    CMP #$0E                    ; $15:D01A: C9 0E       ;
CODE_15D01C:    BCC CODE_15D023             ; $15:D01C: 90 05       ;
CODE_15D01E:    LDA #$00                    ; $15:D01E: A9 00       ;
CODE_15D020:    STA $079E                   ; $15:D020: 8D 9E 07    ;
CODE_15D023:    LSR A                       ; $15:D023: 4A          ;
CODE_15D024:    TAX                         ; $15:D024: AA          ;
CODE_15D025:    LDA.l DATA_15D000,x                 ; $15:D025: BF 00 D0 15 ;
CODE_15D029:    STA $0712                   ; $15:D029: 8D 12 07    ;
CODE_15D02C:    CPX #$04                    ; $15:D02C: E0 04       ;
CODE_15D02E:    BCC CODE_15D038             ; $15:D02E: 90 08       ;
CODE_15D030:    LDA $0713                   ; $15:D030: AD 13 07    ;
CODE_15D033:    ORA #$40                    ; $15:D033: 09 40       ;
CODE_15D035:    STA $0713                   ; $15:D035: 8D 13 07    ;
CODE_15D038:    PLX                         ; $15:D038: FA          ;
CODE_15D039:    RTL                         ; $15:D039: 6B          ;

CODE_15D03A:    PHB                         ; $15:D03A: 8B          ;
CODE_15D03B:    PHK                         ; $15:D03B: 4B          ;
CODE_15D03C:    PLB                         ; $15:D03C: AB          ;
CODE_15D03D:    PHX                         ; $15:D03D: DA          ;
CODE_15D03E:    PHY                         ; $15:D03E: 5A          ;
CODE_15D03F:    LDA #$01                    ; $15:D03F: A9 01       ;
CODE_15D041:    STA $85                     ; $15:D041: 85 85       ;
CODE_15D043:    LDA $0779                   ; $15:D043: AD 79 07    ;
CODE_15D046:    ASL A                       ; $15:D046: 0A          ;
CODE_15D047:    TAX                         ; $15:D047: AA          ;
CODE_15D048:    LDA.w PNTR_15D055,x                 ; $15:D048: BD 55 D0    ;
CODE_15D04B:    STA $00                     ; $15:D04B: 85 00       ;
CODE_15D04D:    LDA.w PNTR_15D055+1,x                   ; $15:D04D: BD 56 D0    ;
CODE_15D050:    STA $01                     ; $15:D050: 85 01       ;
CODE_15D052:    JMP ($0000)                 ; $15:D052: 6C 00 00    ;

PNTR_15D055:        dw CODE_15D067
                    dw CODE_15D084
                    dw CODE_15D05D
                    dw CODE_15D072

CODE_15D05D:    DEC $0795               ; $15:D05D: CE 95 07    ;
CODE_15D060:    BPL CODE_15D084             ; $15:D060: 10 22       ;
CODE_15D062:    INC $0779                   ; $15:D062: EE 79 07    ;
CODE_15D065:    BRA CODE_15D084             ; $15:D065: 80 1D       ;

CODE_15D067:    STZ $04BE                   ; $15:D067: 9C BE 04    ;
CODE_15D06A:    INC $0779                   ; $15:D06A: EE 79 07    ;
CODE_15D06D:    INC $041B                   ; $15:D06D: EE 1B 04    ;
CODE_15D070:    BRA CODE_15D084             ; $15:D070: 80 12       ;

CODE_15D072:    DEC $04BE                   ; $15:D072: CE BE 04    ;
CODE_15D075:    LDA $04BE                   ; $15:D075: AD BE 04    ;
CODE_15D078:    BPL CODE_15D084             ; $15:D078: 10 0A       ;
CODE_15D07A:    LDA #$FF                    ; $15:D07A: A9 FF       ;
CODE_15D07C:    STA $0778                   ; $15:D07C: 8D 78 07    ;
CODE_15D07F:    STZ $041B                   ; $15:D07F: 9C 1B 04    ;
CODE_15D082:    BRA CODE_15D084             ; $15:D082: 80 00       ;

CODE_15D084:    REP #$10                    ; $15:D084: C2 10       ;
CODE_15D086:    LDY #$01FC                  ; $15:D086: A0 FC 01    ;
CODE_15D089:    LDX #$0007                  ; $15:D089: A2 07 00    ;
CODE_15D08C:    LDA $04C1                   ; $15:D08C: AD C1 04    ;
CODE_15D08F:    STA $00                     ; $15:D08F: 85 00       ;
CODE_15D091:    LDA $04BF                   ; $15:D091: AD BF 04    ;
CODE_15D094:    STA $01                     ; $15:D094: 85 01       ;
CODE_15D096:    LDA $0779                   ; $15:D096: AD 79 07    ;
CODE_15D099:    CMP #$03                    ; $15:D099: C9 03       ;
CODE_15D09B:    BNE CODE_15D0A0             ; $15:D09B: D0 03       ;
CODE_15D09D:    LDY #$007C                  ; $15:D09D: A0 7C 00    ;
CODE_15D0A0:    JSR CODE_15D197             ; $15:D0A0: 20 97 D1    ;
CODE_15D0A3:    LDA.l DATA_15D1AD,x                 ; $15:D0A3: BF AD D1 15 ;
CODE_15D0A7:    CPX #$0002                  ; $15:D0A7: E0 02 00    ;
CODE_15D0AA:    BCC CODE_15D0B0             ; $15:D0AA: 90 04       ;
CODE_15D0AC:    SEC                         ; $15:D0AC: 38          ;
CODE_15D0AD:    SBC $04BE                   ; $15:D0AD: ED BE 04    ;
CODE_15D0B0:    CMP #$60                    ; $15:D0B0: C9 60       ;
CODE_15D0B2:    BCS CODE_15D0B6                     ; $15:D0B2: B0 02       ;
CODE_15D0B4:    LDA #$F0                    ; $15:D0B4: A9 F0       ;
CODE_15D0B6:    DEC A                       ; $15:D0B6: 3A          ;
CODE_15D0B7:    STA $0801,y                 ; $15:D0B7: 99 01 08    ;
CODE_15D0BA:    LDA.l DATA_15D1B5,x                 ; $15:D0BA: BF B5 D1 15 ;
CODE_15D0BE:    STA $0802,y                 ; $15:D0BE: 99 02 08    ;
CODE_15D0C1:    LDA.l DATA_15D1BD,x                 ; $15:D0C1: BF BD D1 15 ;
CODE_15D0C5:    STA $0803,y                 ; $15:D0C5: 99 03 08    ;
CODE_15D0C8:    LDA #$04                    ; $15:D0C8: A9 04       ;
CODE_15D0CA:    XBA                         ; $15:D0CA: EB          ;
CODE_15D0CB:    LDA.l DATA_15D1A5,x                 ; $15:D0CB: BF A5 D1 15 ;
CODE_15D0CF:    REP #$20                    ; $15:D0CF: C2 20       ;
CODE_15D0D1:    SEC                         ; $15:D0D1: 38          ;
CODE_15D0D2:    SBC $00                     ; $15:D0D2: E5 00       ;
CODE_15D0D4:    STA $02                     ; $15:D0D4: 85 02       ;
CODE_15D0D6:    SEP #$20                    ; $15:D0D6: E2 20       ;
CODE_15D0D8:    STA $0800,y                 ; $15:D0D8: 99 00 08    ;
CODE_15D0DB:    PHY                         ; $15:D0DB: 5A          ;
CODE_15D0DC:    REP #$20                    ; $15:D0DC: C2 20       ;
CODE_15D0DE:    TYA                         ; $15:D0DE: 98          ;
CODE_15D0DF:    LSR A                       ; $15:D0DF: 4A          ;
CODE_15D0E0:    LSR A                       ; $15:D0E0: 4A          ;
CODE_15D0E1:    TAY                         ; $15:D0E1: A8          ;
CODE_15D0E2:    SEP #$20                    ; $15:D0E2: E2 20       ;
CODE_15D0E4:    LDA $03                     ; $15:D0E4: A5 03       ;
CODE_15D0E6:    BEQ CODE_15D0EA             ; $15:D0E6: F0 02       ;
CODE_15D0E8:    LDA #$01                    ; $15:D0E8: A9 01       ;
CODE_15D0EA:    ORA #$02                    ; $15:D0EA: 09 02       ;
CODE_15D0EC:    STA $0A20,y                 ; $15:D0EC: 99 20 0A    ;
CODE_15D0EF:    PLY                         ; $15:D0EF: 7A          ;
CODE_15D0F0:    DEX                         ; $15:D0F0: CA          ;
CODE_15D0F1:    BPL CODE_15D0A0             ; $15:D0F1: 10 AD       ;
CODE_15D0F3:    LDA $0779                   ; $15:D0F3: AD 79 07    ;
CODE_15D0F6:    CMP #$01                    ; $15:D0F6: C9 01       ;
CODE_15D0F8:    BNE CODE_15D10C             ; $15:D0F8: D0 12       ;
CODE_15D0FA:    INC $04BE                   ; $15:D0FA: EE BE 04    ;
CODE_15D0FD:    LDA $04BE                   ; $15:D0FD: AD BE 04    ;
CODE_15D100:    CMP #$20                    ; $15:D100: C9 20       ;
CODE_15D102:    BCC CODE_15D10C             ; $15:D102: 90 08       ;
CODE_15D104:    INC $0779                   ; $15:D104: EE 79 07    ;
CODE_15D107:    LDA #$10                    ; $15:D107: A9 10       ;
CODE_15D109:    STA $0795                   ; $15:D109: 8D 95 07    ;
CODE_15D10C:    LDA $0778                   ; $15:D10C: AD 78 07    ;
CODE_15D10F:    BPL CODE_15D117             ; $15:D10F: 10 06       ;
CODE_15D111:    STZ $0779                   ; $15:D111: 9C 79 07    ;
CODE_15D114:    STZ $04BE                   ; $15:D114: 9C BE 04    ;
CODE_15D117:    SEP #$10                    ; $15:D117: E2 10       ;
CODE_15D119:    PLY                         ; $15:D119: 7A          ;
CODE_15D11A:    PLX                         ; $15:D11A: FA          ;
CODE_15D11B:    PLB                         ; $15:D11B: AB          ;
CODE_15D11C:    RTL                         ; $15:D11C: 6B          ;

CODE_15D11D:    LDA $0779                   ; $15:D11D: AD 79 07    ;
CODE_15D120:    BNE CODE_15D196             ; $15:D120: D0 74       ;
CODE_15D122:    LDA $0533                   ; $15:D122: AD 33 05    ;
CODE_15D125:    CMP #$11                    ; $15:D125: C9 11       ;
CODE_15D127:    BNE CODE_15D196             ; $15:D127: D0 6D       ;
CODE_15D129:    LDA $0534                   ; $15:D129: AD 34 05    ;
CODE_15D12C:    CMP #$01                    ; $15:D12C: C9 01       ;
CODE_15D12E:    BNE CODE_15D196             ; $15:D12E: D0 66       ;
CODE_15D130:    LDA $14                     ; $15:D130: A5 14       ;
CODE_15D132:    CMP #$04                    ; $15:D132: C9 04       ;
CODE_15D134:    BCC CODE_15D196             ; $15:D134: 90 60       ;
CODE_15D136:    PHB                         ; $15:D136: 8B          ;
CODE_15D137:    PHK                         ; $15:D137: 4B          ;
CODE_15D138:    PLB                         ; $15:D138: AB          ;
CODE_15D139:    PHX                         ; $15:D139: DA          ;
CODE_15D13A:    PHY                         ; $15:D13A: 5A          ;
CODE_15D13B:    REP #$10                    ; $15:D13B: C2 10       ;
CODE_15D13D:    LDX #$0007                  ; $15:D13D: A2 07 00    ;
CODE_15D140:    LDY #$01FC                  ; $15:D140: A0 FC 01    ;
CODE_15D143:    LDA $04C1                   ; $15:D143: AD C1 04    ;
CODE_15D146:    STA $00                     ; $15:D146: 85 00       ;
CODE_15D148:    LDA $04BF                   ; $15:D148: AD BF 04    ;
CODE_15D14B:    STA $01                     ; $15:D14B: 85 01       ;
CODE_15D14D:    JSR CODE_15D197             ; $15:D14D: 20 97 D1    ;
CODE_15D150:    LDA.l DATA_15D1AD,x                 ; $15:D150: BF AD D1 15 ;
CODE_15D154:    DEC A                       ; $15:D154: 3A          ;
CODE_15D155:    STA $0801,y                 ; $15:D155: 99 01 08    ;
CODE_15D158:    LDA.l DATA_15D1B5,x                 ; $15:D158: BF B5 D1 15 ;
CODE_15D15C:    STA $0802,y                 ; $15:D15C: 99 02 08    ;
CODE_15D15F:    LDA.l DATA_15D1BD,x                 ; $15:D15F: BF BD D1 15 ;
CODE_15D163:    STA $0803,y                 ; $15:D163: 99 03 08    ;
CODE_15D166:    LDA #$04                    ; $15:D166: A9 04       ;
CODE_15D168:    XBA                         ; $15:D168: EB          ;
CODE_15D169:    LDA.l DATA_15D1A5,x                 ; $15:D169: BF A5 D1 15 ;
CODE_15D16D:    REP #$20                    ; $15:D16D: C2 20       ;
CODE_15D16F:    SEC                         ; $15:D16F: 38          ;
CODE_15D170:    SBC $00                     ; $15:D170: E5 00       ;
CODE_15D172:    STA $02                     ; $15:D172: 85 02       ;
CODE_15D174:    SEP #$20                    ; $15:D174: E2 20       ;
CODE_15D176:    STA $0800,y                 ; $15:D176: 99 00 08    ;
CODE_15D179:    PHY                         ; $15:D179: 5A          ;
CODE_15D17A:    REP #$20                    ; $15:D17A: C2 20       ;
CODE_15D17C:    TYA                         ; $15:D17C: 98          ;
CODE_15D17D:    LSR A                       ; $15:D17D: 4A          ;
CODE_15D17E:    LSR A                       ; $15:D17E: 4A          ;
CODE_15D17F:    TAY                         ; $15:D17F: A8          ;
CODE_15D180:    SEP #$20                    ; $15:D180: E2 20       ;
CODE_15D182:    LDA $03                     ; $15:D182: A5 03       ;
CODE_15D184:    BEQ CODE_15D188             ; $15:D184: F0 02       ;
CODE_15D186:    LDA #$01                    ; $15:D186: A9 01       ;
CODE_15D188:    ORA #$02                    ; $15:D188: 09 02       ;
CODE_15D18A:    STA $0A20,y                 ; $15:D18A: 99 20 0A    ;
CODE_15D18D:    PLY                         ; $15:D18D: 7A          ;
CODE_15D18E:    DEX                         ; $15:D18E: CA          ;
CODE_15D18F:    BPL CODE_15D14D             ; $15:D18F: 10 BC       ;
CODE_15D191:    SEP #$10                    ; $15:D191: E2 10       ;
CODE_15D193:    PLY                         ; $15:D193: 7A          ;
CODE_15D194:    PLX                         ; $15:D194: FA          ;
CODE_15D195:    PLB                         ; $15:D195: AB          ;
CODE_15D196:    RTL                         ; $15:D196: 6B          ;

CODE_15D197:    LDA $0801,y                 ; $15:D197: B9 01 08    ;
CODE_15D19A:    CMP #$F0                    ; $15:D19A: C9 F0       ;
CODE_15D19C:    BEQ CODE_15D1A4             ; $15:D19C: F0 06       ;
CODE_15D19E:    DEY                         ; $15:D19E: 88          ;
CODE_15D19F:    DEY                         ; $15:D19F: 88          ;
CODE_15D1A0:    DEY                         ; $15:D1A0: 88          ;
CODE_15D1A1:    DEY                         ; $15:D1A1: 88          ;
CODE_15D1A2:    BRA CODE_15D197             ; $15:D1A2: 80 F3       ;

CODE_15D1A4:    RTS                         ; $15:D1A4: 60          ;

DATA_15D1A5:        db $90,$A0,$90,$A0,$90,$A0,$90,$A0

DATA_15D1AD:        db $60,$60,$70,$70,$80,$80,$90,$90

DATA_15D1B5:        db $A0,$A2,$A4,$A6,$62,$64,$66,$AE

DATA_15D1BD:        db $27,$27,$27,$27,$26,$26,$26,$27

CODE_15D1C5:    LDA $0533                   ; $15:D1C5: AD 33 05    ;
CODE_15D1C8:    CMP #$11                    ; $15:D1C8: C9 11       ;
CODE_15D1CA:    BNE CODE_15D1F9             ; $15:D1CA: D0 2D       ;
CODE_15D1CC:    LDA $0534                   ; $15:D1CC: AD 34 05    ;
CODE_15D1CF:    CMP #$02                    ; $15:D1CF: C9 02       ;
CODE_15D1D1:    BEQ CODE_15D1E9             ; $15:D1D1: F0 16       ;
CODE_15D1D3:    CMP #$01                    ; $15:D1D3: C9 01       ;
CODE_15D1D5:    BNE CODE_15D1F9             ; $15:D1D5: D0 22       ;
CODE_15D1D7:    LDA $14                     ; $15:D1D7: A5 14       ;
CODE_15D1D9:    CMP #$04                    ; $15:D1D9: C9 04       ;
CODE_15D1DB:    BNE CODE_15D1F9             ; $15:D1DB: D0 1C       ;
CODE_15D1DD:    LDA $28                     ; $15:D1DD: A5 28       ;
CODE_15D1DF:    CMP #$90                    ; $15:D1DF: C9 90       ;
CODE_15D1E1:    BCC CODE_15D1F9             ; $15:D1E1: 90 16       ;
CODE_15D1E3:    CMP #$A0                    ; $15:D1E3: C9 A0       ;
CODE_15D1E5:    BCS CODE_15D1F9                     ; $15:D1E5: B0 12       ;
CODE_15D1E7:    SEC                         ; $15:D1E7: 38          ;
CODE_15D1E8:    RTL                         ; $15:D1E8: 6B          ;

CODE_15D1E9:    LDA $14                     ; $15:D1E9: A5 14       ;
CODE_15D1EB:    BNE CODE_15D1F9             ; $15:D1EB: D0 0C       ;
CODE_15D1ED:    LDA $28                     ; $15:D1ED: A5 28       ;
CODE_15D1EF:    CMP #$50                    ; $15:D1EF: C9 50       ;
CODE_15D1F1:    BCC CODE_15D1F9             ; $15:D1F1: 90 06       ;
CODE_15D1F3:    CMP #$60                    ; $15:D1F3: C9 60       ;
CODE_15D1F5:    BCS CODE_15D1F9                     ; $15:D1F5: B0 02       ;
CODE_15D1F7:    SEC                         ; $15:D1F7: 38          ;
CODE_15D1F8:    RTL                         ; $15:D1F8: 6B          ;

CODE_15D1F9:    CLC                         ; $15:D1F9: 18          ;
CODE_15D1FA:    RTL                         ; $15:D1FA: 6B          ;

DATA_15D1FB:        db $A6

DATA_15D1FC:        db $A7

DATA_15D1FD:        db $A8

DATA_15D1FE:        db $A9,$AA,$AB,$AC,$AD,$B6
                    db $B7,$B8,$B9,$BA,$BB,$BC,$BD,$BD
                    db $BC,$BB,$BA,$B9,$B8,$B7,$B6,$AD
                    db $AC,$AB,$AA,$A9,$A8,$A7,$A6

CODE_15D21B:    SEP #$30                    ; $15:D21B: E2 30       ;
CODE_15D21D:    SEC                         ; $15:D21D: 38          ;
CODE_15D21E:    RTL                         ; $15:D21E: 6B          ;
CODE_15D21F:    LDA $EB                     ; $15:D21F: A5 EB       ;
CODE_15D221:    BNE CODE_15D226             ; $15:D221: D0 03       ;
CODE_15D223:    STZ $021F                   ; $15:D223: 9C 1F 02    ;
CODE_15D226:    LDA $021F                   ; $15:D226: AD 1F 02    ;
CODE_15D229:    XBA                         ; $15:D229: EB          ;
CODE_15D22A:    LDA $0429                   ; $15:D22A: AD 29 04    ;
CODE_15D22D:    REP #$20                    ; $15:D22D: C2 20       ;
CODE_15D22F:    CMP #$0180                  ; $15:D22F: C9 80 01    ;
CODE_15D232:    BCC CODE_15D239             ; $15:D232: 90 05       ;
CODE_15D234:    CMP #$FF80                  ; $15:D234: C9 80 FF    ;
CODE_15D237:    BCC CODE_15D21B             ; $15:D237: 90 E2       ;
CODE_15D239:    LDA $02F8                   ; $15:D239: AD F8 02    ;
CODE_15D23C:    STA $070B                   ; $15:D23C: 8D 0B 07    ;
CODE_15D23F:    SEP #$20                    ; $15:D23F: E2 20       ;
CODE_15D241:    LDA $10                     ; $15:D241: A5 10       ;
CODE_15D243:    LSR A                       ; $15:D243: 4A          ;
CODE_15D244:    LSR A                       ; $15:D244: 4A          ;
CODE_15D245:    AND #$07                    ; $15:D245: 29 07       ;
CODE_15D247:    LDY $3D,x                   ; $15:D247: B4 3D       ;
CODE_15D249:    BMI CODE_15D24B             ; $15:D249: 30 00       ;
CODE_15D24B:    TAX                         ; $15:D24B: AA          ;
CODE_15D24C:    ASL A                       ; $15:D24C: 0A          ;
CODE_15D24D:    ASL A                       ; $15:D24D: 0A          ;
CODE_15D24E:    STA $0E                     ; $15:D24E: 85 0E       ;
CODE_15D250:    STZ $0F                     ; $15:D250: 64 0F       ;
CODE_15D252:    LDA.w DATA_119AA6,x                 ; $15:D252: BD A6 9A    ;
CODE_15D255:    LDX $12                     ; $15:D255: A6 12       ;
CODE_15D257:    STA $6F,x                   ; $15:D257: 95 6F       ;
CODE_15D259:    LDA $044A,x                 ; $15:D259: BD 4A 04    ;
CODE_15D25C:    AND #$02                    ; $15:D25C: 29 02       ;
CODE_15D25E:    LSR A                       ; $15:D25E: 4A          ;
CODE_15D25F:    LDX $ED                     ; $15:D25F: A6 ED       ;
CODE_15D261:    BEQ CODE_15D265             ; $15:D261: F0 02       ;
CODE_15D263:    LDA #$00                    ; $15:D263: A9 00       ;
CODE_15D265:    ADC $0429                   ; $15:D265: 6D 29 04    ;
CODE_15D268:    STA $0713                   ; $15:D268: 8D 13 07    ;
CODE_15D26B:    LDA $042C                   ; $15:D26B: AD 2C 04    ;
CODE_15D26E:    LDX $EE                     ; $15:D26E: A6 EE       ;
CODE_15D270:    BEQ CODE_15D274             ; $15:D270: F0 02       ;
CODE_15D272:    LDA #$F0                    ; $15:D272: A9 F0       ;
CODE_15D274:    REP #$10                    ; $15:D274: C2 10       ;
CODE_15D276:    LDY $070B                   ; $15:D276: AC 0B 07    ;
CODE_15D279:    STA $0801,y                 ; $15:D279: 99 01 08    ;
CODE_15D27C:    STA $0805,y                 ; $15:D27C: 99 05 08    ;
CODE_15D27F:    STA $0712                   ; $15:D27F: 8D 12 07    ;
CODE_15D282:    LDA $0713                   ; $15:D282: AD 13 07    ;
CODE_15D285:    STA $0800,y                 ; $15:D285: 99 00 08    ;
CODE_15D288:    CLC                         ; $15:D288: 18          ;
CODE_15D289:    ADC #$08                    ; $15:D289: 69 08       ;
CODE_15D28B:    STA $0804,y                 ; $15:D28B: 99 04 08    ;
CODE_15D28E:    STA $0713                   ; $15:D28E: 8D 13 07    ;
CODE_15D291:    LDX $0E                     ; $15:D291: A6 0E       ;
CODE_15D293:    LDA.l DATA_15D1FB,x                 ; $15:D293: BF FB D1 15 ;
CODE_15D297:    STA $0802,y                 ; $15:D297: 99 02 08    ;
CODE_15D29A:    LDA.l DATA_15D1FC,x                 ; $15:D29A: BF FC D1 15 ;
CODE_15D29E:    STA $0806,y                 ; $15:D29E: 99 06 08    ;
CODE_15D2A1:    LDA #$00                    ; $15:D2A1: A9 00       ;
CODE_15D2A3:    LDX $0E                     ; $15:D2A3: A6 0E       ;
CODE_15D2A5:    CPX #$0010                  ; $15:D2A5: E0 10 00    ;
CODE_15D2A8:    BCC CODE_15D2AC             ; $15:D2A8: 90 02       ;
CODE_15D2AA:    LDA #$40                    ; $15:D2AA: A9 40       ;
CODE_15D2AC:    ORA #$2D                    ; $15:D2AC: 09 2D       ;
CODE_15D2AE:    STA $0803,y                 ; $15:D2AE: 99 03 08    ;
CODE_15D2B1:    STA $0807,y                 ; $15:D2B1: 99 07 08    ;
CODE_15D2B4:    STA $0714                   ; $15:D2B4: 8D 14 07    ;
CODE_15D2B7:    JSL CODE_14E483             ; $15:D2B7: 22 83 E4 14 ;
CODE_15D2BB:    REP #$10                    ; $15:D2BB: C2 10       ;
CODE_15D2BD:    LDY $02F8                   ; $15:D2BD: AC F8 02    ;
CODE_15D2C0:    STY $070D                   ; $15:D2C0: 8C 0D 07    ;
CODE_15D2C3:    LDA $0712                   ; $15:D2C3: AD 12 07    ;
CODE_15D2C6:    STA $0801,y                 ; $15:D2C6: 99 01 08    ;
CODE_15D2C9:    STA $0805,y                 ; $15:D2C9: 99 05 08    ;
CODE_15D2CC:    LDA $0713                   ; $15:D2CC: AD 13 07    ;
CODE_15D2CF:    CLC                         ; $15:D2CF: 18          ;
CODE_15D2D0:    ADC #$08                    ; $15:D2D0: 69 08       ;
CODE_15D2D2:    STA $0800,y                 ; $15:D2D2: 99 00 08    ;
CODE_15D2D5:    CLC                         ; $15:D2D5: 18          ;
CODE_15D2D6:    ADC #$08                    ; $15:D2D6: 69 08       ;
CODE_15D2D8:    STA $0804,y                 ; $15:D2D8: 99 04 08    ;
CODE_15D2DB:    LDX $0E                     ; $15:D2DB: A6 0E       ;
CODE_15D2DD:    LDA.l DATA_15D1FD,x                 ; $15:D2DD: BF FD D1 15 ;
CODE_15D2E1:    STA $0802,y                 ; $15:D2E1: 99 02 08    ;
CODE_15D2E4:    LDA.l DATA_15D1FE,x                 ; $15:D2E4: BF FE D1 15 ;
CODE_15D2E8:    STA $0806,y                 ; $15:D2E8: 99 06 08    ;
CODE_15D2EB:    LDA $0714                   ; $15:D2EB: AD 14 07    ;
CODE_15D2EE:    STA $0803,y                 ; $15:D2EE: 99 03 08    ;
CODE_15D2F1:    STA $0807,y                 ; $15:D2F1: 99 07 08    ;
CODE_15D2F4:    CLC                         ; $15:D2F4: 18          ;
CODE_15D2F5:    RTL                         ; $15:D2F5: 6B          ;

DATA_15D2F6:        db $58,$C8,$DF,$30,$60,$C8,$79,$31
                    db $68,$C8,$2F,$31,$70,$C8,$CF,$30
                    db $80,$C8,$2F,$31,$88,$C8,$3F,$31
                    db $90,$C8,$C8,$30,$98,$C8,$1F,$31
                    db $A0,$C8,$3F,$31

CODE_15D31A:    LDX #$23                ; $15:D31A: A2 23       ;
CODE_15D31C:    LDA.l DATA_15D2F6,x                 ; $15:D31C: BF F6 D2 15 ;
CODE_15D320:    STA $0900,x                 ; $15:D320: 9D 00 09    ;
CODE_15D323:    DEX                         ; $15:D323: CA          ;
CODE_15D324:    BPL CODE_15D31C             ; $15:D324: 10 F6       ;
CODE_15D326:    STZ $0A60                   ; $15:D326: 9C 60 0A    ;
CODE_15D329:    STZ $0A61                   ; $15:D329: 9C 61 0A    ;
CODE_15D32C:    STZ $0A62                   ; $15:D32C: 9C 62 0A    ;
CODE_15D32F:    STZ $0A63                   ; $15:D32F: 9C 63 0A    ;
CODE_15D332:    STZ $0A64                   ; $15:D332: 9C 64 0A    ;
CODE_15D335:    STZ $0A65                   ; $15:D335: 9C 65 0A    ;
CODE_15D338:    STZ $0A66                   ; $15:D338: 9C 66 0A    ;
CODE_15D33B:    STZ $0A67                   ; $15:D33B: 9C 67 0A    ;
CODE_15D33E:    STZ $0A68                   ; $15:D33E: 9C 68 0A    ;
CODE_15D341:    RTL                         ; $15:D341: 6B          ;

DATA_15D342:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  | 3262 bytes full of $FF.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF              ; /

PNTR_15E000:        dl $000302                              ; 00 - RAM upload table.
                    dl DATA_15E00F                          ; 01 - Border of the 'Super Mario Bros. 2' screen.
                    dl DATA_15E250                          ; 02 - 'Super Mario Bros. 2' and '�1988-1992 Nintendo.'
                    dl DATA_15E41F                          ; 03 - Border of the Game Over screen.
                    dl DATA_15E660                          ;
     
DATA_15E00F:        db $0C,$00,$47,$FE,$BD,$09,$0C,$01
                    db $C0,$3E,$BE,$04,$0C,$02,$C0,$3E
                    db $BE,$04,$0C,$03,$C0,$3E,$BE,$04
                    db $0C,$1C,$C0,$3E,$BE,$04,$0C,$1D
                    db $C0,$3E,$BE,$04,$0C,$1E,$C0,$3E
                    db $BE,$04,$0C,$04,$40,$2E,$BE,$04
                    db $0C,$24,$40,$2E,$BE,$04,$0C,$44
                    db $40,$2E,$BE,$04,$0F,$44,$40,$2E
                    db $BE,$04,$0F,$64,$40,$2E,$BE,$04
                    db $0F,$84,$40,$2E,$BE,$04,$0F,$A4
                    db $40,$2E,$BE,$04,$0C,$44,$00,$17
                    db $BE,$04,$02,$04,$03,$04,$04,$04
                    db $05,$04,$06,$04,$07,$04,$08,$04
                    db $09,$04,$0A,$04,$0B,$04,$0C,$04
                    db $0C,$50,$00,$17,$0C,$44,$0B,$44
                    db $0A,$44,$09,$44,$08,$44,$07,$44
                    db $06,$44,$05,$44,$04,$44,$03,$44
                    db $02,$44,$BE,$04,$0C,$64,$00,$0F
                    db $0D,$04,$0E,$04,$0F,$04,$10,$04
                    db $11,$04,$12,$04,$13,$04,$14,$04
                    db $0C,$74,$00,$0F,$14,$44,$13,$44
                    db $12,$44,$11,$44,$10,$44,$0F,$44
                    db $0E,$44,$0D,$44,$0C,$83,$00,$09
                    db $15,$04,$16,$04,$17,$04,$18,$04
                    db $19,$04,$0C,$98,$00,$09,$19,$44
                    db $18,$44,$17,$44,$16,$44,$15,$44
                    db $0C,$A3,$00,$07,$1A,$04,$1B,$04
                    db $1C,$04,$1D,$04,$0C,$B9,$00,$07
                    db $1D,$44,$1C,$44,$1B,$44,$1A,$44
                    db $0C,$C3,$00,$05,$1E,$04,$1F,$04
                    db $20,$04,$0C,$DA,$00,$05,$20,$44
                    db $1F,$44,$1E,$44,$0C,$E3,$00,$01
                    db $21,$04,$0C,$FC,$00,$01,$21,$44
                    db $0D,$03,$C0,$1E,$23,$04,$0D,$1C
                    db $C0,$1E,$23,$44,$0E,$42,$C0,$0C
                    db $01,$04,$0E,$5D,$C0,$0C,$01,$44
                    db $0D,$A3,$00,$01,$24,$04,$0D,$BC
                    db $00,$01,$24,$44,$0D,$C2,$00,$03
                    db $25,$04,$26,$04,$0D,$DC,$00,$03
                    db $26,$44,$25,$44,$0D,$E2,$00,$03
                    db $27,$04,$28,$04,$0D,$FC,$00,$03
                    db $28,$44,$27,$44,$0E,$02,$00,$03
                    db $29,$04,$2A,$04,$0E,$1C,$00,$03
                    db $2A,$44,$29,$44,$0F,$03,$00,$01
                    db $2B,$04,$0F,$23,$00,$01,$2C,$04
                    db $0F,$26,$40,$26,$2F,$04,$0F,$46
                    db $40,$2A,$34,$04,$0E,$A4,$80,$0B
                    db $94,$1C,$96,$1C,$80,$10,$82,$10
                    db $84,$10,$86,$10,$0E,$A5,$80,$0B
                    db $95,$1C,$97,$1C,$81,$10,$83,$10
                    db $85,$10,$87,$10,$0F,$47,$00,$03
                    db $A0,$1C,$A1,$1C,$0F,$59,$00,$03
                    db $A0,$1C,$A1,$1C,$0F,$09,$80,$03
                    db $B2,$1C,$B4,$1C,$0F,$0A,$80,$03
                    db $B3,$1C,$B5,$1C,$0E,$F4,$00,$03
                    db $90,$1C,$91,$1C,$0F,$14,$00,$05
                    db $92,$1C,$93,$1C,$9F,$18,$0E,$F7
                    db $80,$07,$88,$18,$8A,$18,$8C,$18
                    db $8E,$18,$0E,$F8,$80,$07,$89,$18
                    db $8B,$18,$8D,$18,$8F,$18,$0E,$DA
                    db $80,$07,$A2,$0C,$A4,$0C,$A6,$0C
                    db $A8,$0C,$0E,$DB,$80,$07,$A3,$0C
                    db $A5,$0C,$A7,$0C,$A9,$0C,$0E,$DC
                    db $80,$07,$AA,$14,$AC,$14,$AE,$14
                    db $B0,$14,$0E,$DD,$80,$07,$AB,$14
                    db $AD,$14,$AF,$14,$B1,$14,$0F,$0D
                    db $00,$05,$98,$04,$2D,$04,$2E,$04
                    db $0F,$10,$00,$05,$2E,$44,$2D,$44
                    db $98,$44,$0F,$2C,$00,$07,$30,$04
                    db $31,$04,$32,$04,$33,$04,$0F,$30
                    db $00,$07,$33,$44,$32,$44,$31,$44
                    db $30,$44,$0F,$4F,$40,$03,$BE,$04
                    db $FF

DATA_15E250:        db $0C,$AB,$00,$13,$70,$08,$71
                    db $08,$67,$08,$67,$08,$64,$08,$59
                    db $48,$64,$08,$51,$08,$64,$08,$59
                    db $48,$0C,$CB,$00,$13,$72,$08,$73
                    db $08,$5C,$08,$5C,$08,$5C,$08,$7E
                    db $08,$5C,$08,$52,$08,$5C,$08,$57
                    db $08,$0C,$EB,$00,$13,$75,$08,$76
                    db $08,$7C,$08,$7D,$08,$50,$08,$4F
                    db $08,$53,$08,$54,$08,$50,$08,$58
                    db $08,$0D,$0B,$00,$13,$46,$08,$47
                    db $08,$46,$08,$47,$08,$55,$08,$BF
                    db $00,$55,$08,$56,$08,$55,$08,$55
                    db $08,$0D,$38,$00,$03,$F0,$09,$F1
                    db $09,$0D,$46,$00,$25,$59,$08,$5A
                    db $08,$59,$48,$59,$08,$59,$48,$64
                    db $08,$59,$48,$67,$08,$59,$08,$59
                    db $48,$BF,$00,$64,$08,$59,$48,$64
                    db $08,$59,$48,$59,$08,$59,$48,$59
                    db $08,$59,$48,$0D,$66,$00,$25,$5C
                    db $08,$5C,$08,$5D,$08,$5C,$08,$5D
                    db $08,$5C,$08,$5D,$08,$5C,$08,$5C
                    db $08,$5D,$08,$BF,$00,$5C,$08,$5D
                    db $08,$5C,$08,$5D,$08,$5C,$08,$5D
                    db $08,$5C,$08,$6C,$08,$0D,$86,$00
                    db $25,$5E,$08,$5E,$08,$5E,$08,$5E
                    db $08,$5E,$08,$5E,$08,$65,$08,$5E
                    db $08,$5E,$08,$5E,$08,$BF,$00,$5E
                    db $08,$65,$08,$5E,$08,$65,$08,$5E
                    db $08,$5E,$08,$6D,$08,$6E,$08,$0D
                    db $A6,$00,$25,$5F,$08,$5F,$08,$5F
                    db $08,$61,$08,$62,$08,$5F,$08,$66
                    db $08,$5F,$08,$5F,$08,$5F,$08,$BF
                    db $00,$5F,$08,$66,$08,$5F,$08,$66
                    db $08,$5F,$08,$5F,$08,$B8,$08,$6F
                    db $08,$0D,$C6,$00,$27,$60,$08,$60
                    db $08,$60,$08,$60,$08,$63,$08,$60
                    db $08,$60,$08,$60,$08,$68,$08,$69
                    db $08,$BF,$00,$60,$08,$6A,$08,$60
                    db $08,$60,$08,$68,$08,$69,$08,$68
                    db $08,$69,$08,$5B,$08,$0D,$E6,$00
                    db $27,$55,$08,$55,$08,$55,$08,$55
                    db $08,$55,$08,$55,$08,$55,$08,$55
                    db $08,$46,$08,$47,$08,$BF,$00,$55
                    db $08,$6B,$08,$55,$08,$55,$08,$46
                    db $08,$47,$08,$46,$08,$47,$08,$55
                    db $08,$0E,$2E,$00,$07,$40,$08,$41
                    db $08,$42,$08,$43,$08,$0E,$4E,$00
                    db $07,$44,$08,$45,$08,$48,$08,$49
                    db $08,$0E,$6E,$00,$07,$4A,$08,$4B
                    db $08,$4C,$08,$4D,$08,$0E,$8E,$00
                    db $07,$4E,$08,$77,$08,$78,$08,$79
                    db $08,$0E,$AE,$00,$07,$7A,$08,$7B
                    db $08,$7B,$08,$7B,$08,$0E,$C7,$00
                    db $25,$F9,$15,$C1,$15,$C9,$15,$C8
                    db $15,$C8,$15,$E8,$15,$C1,$15,$C9
                    db $15,$C9,$15,$C3,$15,$BF,$09,$D7
                    db $15,$D2,$15,$D7,$15,$DD,$15,$CE
                    db $15,$D7,$15,$CD,$15,$D8,$15,$FF

DATA_15E41F:        db $08,$00,$47,$FE,$BD,$09,$08,$01
                    db $C0,$3E,$BE,$04,$08,$02,$C0,$3E
                    db $BE,$04,$08,$03,$C0,$3E,$BE,$04
                    db $08,$1C,$C0,$3E,$BE,$04,$08,$1D
                    db $C0,$3E,$BE,$04,$08,$1E,$C0,$3E
                    db $BE,$04,$08,$04,$40,$2E,$BE,$04
                    db $08,$24,$40,$2E,$BE,$04,$08,$44
                    db $40,$2E,$BE,$04,$0B,$44,$40,$2E
                    db $BE,$04,$0B,$64,$40,$2E,$BE,$04
                    db $0B,$84,$40,$2E,$BE,$04,$0B,$A4
                    db $40,$2E,$BE,$04,$08,$44,$00,$17
                    db $BE,$04,$02,$04,$03,$04,$04,$04
                    db $05,$04,$06,$04,$07,$04,$08,$04
                    db $09,$04,$0A,$04,$0B,$04,$0C,$04
                    db $08,$50,$00,$17,$0C,$44,$0B,$44
                    db $0A,$44,$09,$44,$08,$44,$07,$44
                    db $06,$44,$05,$44,$04,$44,$03,$44
                    db $02,$44,$BE,$04,$08,$64,$00,$0F
                    db $0D,$04,$0E,$04,$0F,$04,$10,$04
                    db $11,$04,$12,$04,$13,$04,$14,$04
                    db $08,$74,$00,$0F,$14,$44,$13,$44
                    db $12,$44,$11,$44,$10,$44,$0F,$44
                    db $0E,$44,$0D,$44,$08,$83,$00,$09
                    db $15,$04,$16,$04,$17,$04,$18,$04
                    db $19,$04,$08,$98,$00,$09,$19,$44
                    db $18,$44,$17,$44,$16,$44,$15,$44
                    db $08,$A3,$00,$07,$1A,$04,$1B,$04
                    db $1C,$04,$1D,$04,$08,$B9,$00,$07
                    db $1D,$44,$1C,$44,$1B,$44,$1A,$44
                    db $08,$C3,$00,$05,$1E,$04,$1F,$04
                    db $20,$04,$08,$DA,$00,$05,$20,$44
                    db $1F,$44,$1E,$44,$08,$E3,$00,$01
                    db $21,$04,$08,$FC,$00,$01,$21,$44
                    db $09,$03,$C0,$1E,$23,$04,$09,$1C
                    db $C0,$1E,$23,$44,$0A,$42,$C0,$0C
                    db $01,$04,$0A,$5D,$C0,$0C,$01,$44
                    db $09,$A3,$00,$01,$24,$04,$09,$BC
                    db $00,$01,$24,$44,$09,$C2,$00,$03
                    db $25,$04,$26,$04,$09,$DC,$00,$03
                    db $26,$44,$25,$44,$09,$E2,$00,$03
                    db $27,$04,$28,$04,$09,$FC,$00,$03
                    db $28,$44,$27,$44,$0A,$02,$00,$03
                    db $29,$04,$2A,$04,$0A,$1C,$00,$03
                    db $2A,$44,$29,$44,$0B,$03,$00,$01
                    db $2B,$04,$0B,$23,$00,$01,$2C,$04
                    db $0B,$26,$40,$26,$2F,$04,$0B,$46
                    db $40,$2A,$34,$04,$0A,$A4,$80,$0B
                    db $94,$1C,$96,$1C,$80,$10,$82,$10
                    db $84,$10,$86,$10,$0A,$A5,$80,$0B
                    db $95,$1C,$97,$1C,$81,$10,$83,$10
                    db $85,$10,$87,$10,$0B,$47,$00,$03
                    db $A0,$1C,$A1,$1C,$0B,$59,$00,$03
                    db $A0,$1C,$A1,$1C,$0B,$09,$80,$03
                    db $B2,$1C,$B4,$1C,$0B,$0A,$80,$03
                    db $B3,$1C,$B5,$1C,$0A,$F4,$00,$03
                    db $90,$1C,$91,$1C,$0B,$14,$00,$05
                    db $92,$1C,$93,$1C,$9F,$18,$0A,$F7
                    db $80,$07,$88,$18,$8A,$18,$8C,$18
                    db $8E,$18,$0A,$F8,$80,$07,$89,$18
                    db $8B,$18,$8D,$18,$8F,$18,$0A,$DA
                    db $80,$07,$A2,$0C,$A4,$0C,$A6,$0C
                    db $A8,$0C,$0A,$DB,$80,$07,$A3,$0C
                    db $A5,$0C,$A7,$0C,$A9,$0C,$0A,$DC
                    db $80,$07,$AA,$14,$AC,$14,$AE,$14
                    db $B0,$14,$0A,$DD,$80,$07,$AB,$14
                    db $AD,$14,$AF,$14,$B1,$14,$0B,$0D
                    db $00,$05,$98,$04,$2D,$04,$2E,$04
                    db $0B,$10,$00,$05,$2E,$44,$2D,$44
                    db $98,$44,$0B,$2C,$00,$07,$30,$04
                    db $31,$04,$32,$04,$33,$04,$0B,$30
                    db $00,$07,$33,$44,$32,$44,$31,$44
                    db $30,$44,$0B,$4F,$40,$03,$BE,$04
                    db $FF

DATA_15E660:        db $0C,$CD,$00,$0B,$C0,$08,$C1
                    db $08,$C2,$08,$C3,$08,$C4,$08,$C5
                    db $08,$0C,$ED,$00,$0B,$D0,$08,$D1
                    db $08,$D2,$08,$D3,$08,$D4,$08,$D5
                    db $08,$0D,$0D,$00,$0B,$E0,$08,$E1
                    db $08,$E2,$08,$E3,$08,$E4,$08,$E5
                    db $08,$0D,$CA,$00,$0B,$C0,$08,$C1
                    db $08,$BD,$09,$BD,$09,$EC,$08,$ED
                    db $08,$0D,$EA,$00,$0B,$D0,$08,$F4
                    db $08,$CD,$08,$CE,$08,$CF,$08,$EB
                    db $08,$0E,$0A,$00,$0B,$E0,$08,$F5
                    db $08,$DD,$08,$DE,$08,$DF,$08,$FB
                    db $08,$0D,$94,$00,$05,$C6,$00,$C7
                    db $00,$C8,$00,$0D,$B4,$00,$05,$D6
                    db $00,$D7,$00,$D8,$00,$0D,$D3,$00
                    db $07,$C9,$00,$CA,$00,$CB,$00,$CC
                    db $00,$0D,$F3,$00,$07,$D9,$00,$DA
                    db $00,$DB,$00,$DC,$00,$0E,$13,$00
                    db $09,$E6,$00,$E7,$00,$E8,$00,$E9
                    db $00,$EA,$00,$0E,$33,$00,$09,$F6
                    db $00,$F7,$00,$F8,$00,$F9,$00,$FA
                    db $00,$0E,$54,$00,$07,$F0,$00,$F1
                    db $00,$F2,$00,$F3,$00,$FF

DATA_15E715:        db $00,$00,$FF,$7F,$00,$00,$96,$28
                    db $1A,$39,$9E,$49,$1F,$5A,$14,$00
                    db $1A,$00,$DF,$00,$DF,$01,$9C,$73
                    db $29,$25,$AD,$35,$31,$46,$B5,$56

DATA_15E735:        db $00,$00,$9F,$03,$00,$00,$0B,$00
                    db $0F,$00,$13,$00,$17,$00,$1B,$00
                    db $1F,$00,$2F,$09,$36,$2A,$DB,$3E
                    db $7F,$4F,$99,$01,$3B,$02,$DD,$02

DATA_15E755:        db $00,$00,$FF,$7F,$00,$00,$18,$63
                    db $EF,$3D,$7F,$1B,$FF,$12,$5F,$12
                    db $BF,$15,$1D,$3B,$58,$1E,$31,$7F
                    db $8D,$76,$C4,$75,$95,$15,$F0,$00

DATA_15E775:        db $00,$00,$FF,$7F,$00,$00,$13,$01
                    db $1C,$1A,$9C,$2D,$BF,$3A,$96,$10
                    db $DF,$14,$E5,$48,$E7,$49,$0D,$5B
                    db $2F,$09,$36,$2A,$D8,$3E,$7F,$4F

DATA_15E795:        db $00,$00,$FF,$7F,$00,$00,$13,$01
                    db $1C,$1A,$9C,$2D,$BF,$3A,$69,$3A
                    db $91,$5B,$88,$50,$6F,$6D,$56,$7E
                    db $2F,$09,$36,$2A,$DB,$3E,$1B,$00

DATA_15E7B5:        db $00,$00,$FF,$7F,$00,$00,$30,$01
                    db $1B,$00,$9C,$2D,$BF,$3A,$7A,$02
                    db $9F,$03,$96,$28,$5F,$49,$9F,$6E
                    db $2F,$09,$36,$2A,$DB,$3E,$7F,$4F

DATA_15E7D5:        db $00,$00,$FF,$7F,$00,$00,$E8,$69
                    db $CF,$7E,$9C,$2D,$BF,$3A,$2F,$09
                    db $1C,$2F,$12,$00,$D9,$18,$1F,$19
                    db $36,$2A,$DB,$3E,$7F,$4F,$1B,$00

DATA_15E7F5:        db $00,$00,$FF,$7F,$00,$00,$86,$49
                    db $0A,$5E,$D0,$72,$DB,$3E,$7F,$4F
                    db $47,$21,$2F,$09,$0D,$00,$13,$00
                    db $19,$00,$A5,$11,$C4,$1A,$CC,$3F

DATA_15E815:        db $00,$00,$FF,$7F,$00,$00,$BF,$7F
                    db $84,$10,$7F,$1B,$FF,$12,$5F,$12
                    db $BF,$15,$88,$25,$B6,$7F,$31,$7F
                    db $8D,$76,$C4,$75,$20,$5D,$80,$44

DATA_15E835:        db $DC,$15,$DD,$15,$D8,$15,$DB,$15
                    db $E2,$15

PNTR_15E83F:        db $E8,$E8,$E8,$E8,$E9,$E9,$E9,$E9      ; \ High byte of pointer to the "Story" tilemap.
                    db $E9,$E9,$E9,$E9,$EA,$EA,$EA,$EA      ;  | Indexed by line number.
                    db $EA                                  ; / Tables only contain tile data, not location.

PNTR_15E850:        db $61,$89,$B1,$D9,$01,$29,$51,$79      ; \ Low byte of pointer to the "Story" tilemap.
                    db $79,$A1,$C9,$F1,$19,$41,$69,$91      ;  | Indexed by line number.
                    db $B9                                  ; / Tables only contain tile data, not location.

DATA_15E861:        db $E0,$15,$D1,$15,$CE,$15,$D7,$15      ; \
                    db $BD,$09,$BD,$09,$D6,$15,$CA,$15      ;  |
                    db $DB,$15,$D2,$15,$D8,$15,$BD,$09      ;  | Line 1, page 1, of story data.
                    db $D8,$15,$D9,$15,$CE,$15,$D7,$15      ;  |
                    db $CE,$15,$CD,$15,$BD,$09,$CA,$15      ; /

DATA_15E889:        db $CD,$15,$D8,$15,$D8,$15,$DB,$15      ; \
                    db $BD,$09,$CA,$15,$CF,$15,$DD,$15      ;  |
                    db $CE,$15,$DB,$15,$BD,$09,$BD,$09      ;  | Line 2, page 1, of story data.
                    db $CC,$15,$D5,$15,$D2,$15,$D6,$15      ;  |
                    db $CB,$15,$D2,$15,$D7,$15,$D0,$15      ; /

DATA_15E8B1:        db $CA,$15,$BD,$09,$D5,$15,$D8,$15      ; \
                    db $D7,$15,$D0,$15,$BD,$09,$DC,$15      ;  |
                    db $DD,$15,$CA,$15,$D2,$15,$DB,$15      ;  | Line 3, page 1, of story data.
                    db $BD,$09,$D2,$15,$D7,$15,$BD,$09      ;  |
                    db $BD,$09,$D1,$15,$D2,$15,$DC,$15      ; /

DATA_15E8D9:        db $CD,$15,$DB,$15,$CE,$15,$CA,$15      ; \
                    db $D6,$15,$E7,$15,$BD,$09,$CA,$15      ;  |
                    db $D7,$15,$D8,$15,$DD,$15,$D1,$15      ;  | Line 4, page 1, of story data.
                    db $CE,$15,$DB,$15,$BD,$09,$E0,$15      ;  |
                    db $D8,$15,$DB,$15,$D5,$15,$CD,$15      ; /

DATA_15E901:        db $DC,$15,$D9,$15,$DB,$15,$CE,$15      ; \
                    db $CA,$15,$CD,$15,$BD,$09,$BD,$09      ;  |
                    db $BD,$09,$CB,$15,$CE,$15,$CF,$15      ;  | Line 5, page 1, of story data.
                    db $D8,$15,$DB,$15,$CE,$15,$BD,$09      ;  |
                    db $BD,$09,$D1,$15,$D2,$15,$D6,$15      ; /

DATA_15E929:        db $CA,$15,$D7,$15,$CD,$15,$BD,$09      ; \
                    db $D1,$15,$CE,$15,$BD,$09,$D1,$15      ;  |
                    db $CE,$15,$CA,$15,$DB,$15,$CD,$15      ;  | Line 6, page 1, of story data.
                    db $BD,$09,$CA,$15,$BD,$09,$DF,$15      ;  |
                    db $D8,$15,$D2,$15,$CC,$15,$CE,$15      ; /

DATA_15E951:        db $CC,$15,$CA,$15,$D5,$15,$D5,$15      ; \
                    db $BD,$09,$CF,$15,$D8,$15,$DB,$15      ;  |
                    db $BD,$09,$D1,$15,$CE,$15,$D5,$15      ;  | Line 7, page 1, of story data.
                    db $D9,$15,$BD,$09,$DD,$15,$D8,$15      ;  |
                    db $BD,$09,$BD,$09,$CB,$15,$CE,$15      ; /

DATA_15E979:        db $BD,$09,$CF,$15,$DB,$15,$CE,$15      ; \
                    db $CE,$15,$CD,$15,$BD,$09,$BD,$09      ;  |
                    db $CF,$15,$DB,$15,$D8,$15,$D6,$15      ;  | Line 8, page 1, of story data.
                    db $BD,$09,$CA,$15,$BD,$09,$DC,$15      ;  |
                    db $D9,$15,$CE,$15,$D5,$15,$D5,$15      ; /

DATA_15E9A1:        db $CA,$15,$CF,$15,$DD,$15,$CE,$15      ; \
                    db $DB,$15,$BD,$09,$BD,$09,$CA,$15      ;  |
                    db $E0,$15,$CA,$15,$D4,$15,$CE,$15      ;  | Line 1, page 2, of story data.
                    db $D7,$15,$D2,$15,$D7,$15,$D0,$15      ;  |
                    db $E7,$15,$BD,$09,$BD,$09,$BD,$09      ; /

DATA_15E9C9:        db $D6,$15,$CA,$15,$DB,$15,$D2,$15      ; \
                    db $D8,$15,$BD,$09,$BD,$09,$E0,$15      ;  |
                    db $CE,$15,$D7,$15,$DD,$15,$BD,$09      ;  | Line 2, page 2, of story data.
                    db $DD,$15,$D8,$15,$BD,$09,$BD,$09      ;  |
                    db $CA,$15,$BD,$09,$BD,$09,$BD,$09      ; /

DATA_15E9F1:        db $CC,$15,$CA,$15,$DF,$15,$CE,$15      ; \
                    db $BD,$09,$BD,$09,$D7,$15,$CE,$15      ;  |
                    db $CA,$15,$DB,$15,$CB,$15,$E2,$15      ;  | Line 3, page 2, of story data.
                    db $BD,$09,$CA,$15,$D7,$15,$CD,$15      ;  |
                    db $BD,$09,$BD,$09,$DD,$15,$D8,$15      ; /

DATA_15EA19:        db $D1,$15,$D2,$15,$DC,$15,$BD,$09      ; \
                    db $BD,$09,$DC,$15,$DE,$15,$DB,$15      ;  |
                    db $D9,$15,$DB,$15,$D2,$15,$DC,$15      ;  | Line 4, page 2, of story data.
                    db $CE,$15,$BD,$09,$D1,$15,$CE,$15      ;  |
                    db $BD,$09,$DC,$15,$CA,$15,$E0,$15      ; /

DATA_15EA41:        db $CE,$15,$E1,$15,$CA,$15,$CC,$15      ; \
                    db $DD,$15,$D5,$15,$E2,$15,$BD,$09      ;  |
                    db $BD,$09,$E0,$15,$D1,$15,$CA,$15      ;  | Line 5, page 2, of story data.
                    db $DD,$15,$BD,$09,$D1,$15,$CE,$15      ;  |
                    db $BD,$09,$DC,$15,$CA,$15,$E0,$15      ; /

DATA_15EA69:        db $D2,$15,$D7,$15,$BD,$09,$D1,$15      ; \
                    db $D2,$15,$DC,$15,$BD,$09,$CD,$15      ;  |
                    db $DB,$15,$CE,$15,$CA,$15,$D6,$15      ;  | Line 6, page 2, of story data.
                    db $E8,$15,$E8,$15,$E8,$15,$E8,$15      ;  |
                    db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ; /

DATA_15EA91:        db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ; \
                    db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ;  |
                    db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ;  | Line 7, page 2, of story data.
                    db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ;  | (Empty line.)
                    db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ; /

DATA_15EAB9:        db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ; \
                    db $BD,$09,$D9,$15,$DE,$15,$DC,$15      ;  |
                    db $D1,$15,$BD,$09,$BD,$09,$DC,$15      ;  | Line 8, page 2, of story data.
                    db $DD,$15,$CA,$15,$DB,$15,$DD,$15      ;  |
                    db $BD,$09,$BD,$09,$BD,$09,$BD,$09      ; /

DATA_15EAE1:        db $02,$49,$80,$07,$88,$0D,$98,$0D
                    db $A8,$0D,$B8,$0D,$02,$4A,$80,$07
                    db $88,$4D,$98,$4D,$A8,$4D,$B8,$4D

DATA_15EAF9:        db $02,$4D,$80,$07,$A9,$11,$B9,$11
                    db $8D,$11,$9D,$11,$02,$4E,$80,$07
                    db $A9,$51,$B9,$51,$8D,$51,$9D,$51

DATA_15EB11:        db $02,$51,$80,$07,$BD,$09,$B0,$19
                    db $AA,$19,$BA,$19,$02,$52,$80,$07
                    db $BD,$09,$B0,$59,$AA,$59,$BA,$59

DATA_15EB29:        db $02,$55,$80,$07,$A4,$15,$B4,$15
                    db $A5,$15,$B5,$15,$02,$56,$80,$07
                    db $A4,$55,$B4,$55,$A5,$55,$B5,$55

DATA_15EB41:        db $02,$49,$80,$07,$88,$0D,$98,$0D
                    db $89,$0D,$99,$0D,$02,$4A,$80,$07
                    db $8A,$0D,$9A,$0D,$8B,$0D,$9B,$0D
                    db $02,$4D,$80,$07,$8C,$11,$9C,$11
                    db $8D,$11,$9D,$11,$02,$4E,$80,$07
                    db $8E,$11,$9E,$11,$8F,$11,$9F,$11
                    db $02,$51,$80,$07,$BD,$09,$B0,$19
                    db $A1,$19,$B1,$19,$02,$52,$80,$07
                    db $BD,$09,$B2,$19,$A3,$19,$B3,$19
                    db $02,$55,$80,$07,$AB,$15,$BB,$15
                    db $A5,$15,$B5,$15,$02,$56,$80,$07
                    db $A6,$15,$B6,$15,$A7,$15,$B7,$15

DATA_15EBA1:        db $00,$48,$30,$18

DATA_15EBA5:        db $81,$83,$83,$85,$83,$83,$87,$85
                    db $8D,$87,$81,$81,$81,$83,$83,$83
                    db $87,$81,$8D,$83,$87,$81,$81,$83
                    db $83,$83,$8F,$06,$8B,$8B,$83,$8B
                    db $82,$8B,$8B,$83,$85,$89,$8D,$83
                    db $83,$8F,$8B,$8B,$8B,$86,$CB,$CB
                    db $CB,$CB,$89,$89,$81,$82,$82,$82
                    db $87,$89,$82,$8F,$82,$82,$82,$83
                    db $82,$0D,$86,$86,$82,$83,$80

DATA_15EBEC:        db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$06,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00,$00
                    db $00,$00,$00,$00,$00,$00,$00

DATA_15EC33:        db $03,$09,$00,$1F,$CE,$15,$E1,$15
                    db $DD,$15,$DB,$15,$CA,$15,$BD,$09
                    db $D5,$15,$D2,$15,$CF,$15,$CE,$15
                    db $E8,$15,$E8,$15,$E8,$15,$BD,$09
                    db $BD,$09,$C0,$15

DATA_15EC57:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
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

PNTR_15EF00:        dl DATA_15EF15                          ; World 1, grassy image. (Images during 'World x-x' screen.)
                    dl DATA_15F0A5                          ; World 2, desert image.
                    dl DATA_15EF15                          ; World 3, grassy image.
                    dl DATA_15F235                          ; World 4, ice image.
                    dl DATA_15EF15                          ; World 5, grassy image.
                    dl DATA_15F0A5                          ; World 6, desert image.
                    dl DATA_15F3C5                          ; World 7, air image.

DATA_15EF15:        db $FF,$00,$FF,$00,$46,$04,$47,$04      ; \ The entire image of the grassland...
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  | ...shown in the intro screen.
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  | This applies to 3 worlds: Worlds 1, 3 and 5.
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  | Format is tttttttt YXPCCCTT.
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  | Odd bytes indicating tile number, even bytes indicating properties.
                    db $FF,$00,$FF,$00,$56,$04,$57,$04      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$00,$1C,$01,$1C,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$42,$04,$43,$04      ;  |
                    db $44,$04,$43,$04,$44,$04,$43,$04      ;  |
                    db $44,$04,$45,$04,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$52,$04,$53,$04      ;  |
                    db $54,$04,$53,$04,$54,$04,$53,$04      ;  |
                    db $54,$04,$55,$04,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$52,$04,$53,$04      ;  |
                    db $54,$04,$53,$04,$54,$04,$53,$04      ;  |
                    db $54,$04,$55,$04,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$00,$1C,$01,$1C      ;  |
                    db $FF,$00,$FF,$00,$52,$04,$53,$04      ;  |
                    db $54,$04,$53,$04,$54,$04,$53,$04      ;  |
                    db $54,$04,$55,$04,$FF,$00,$FF,$00      ;  |
                    db $40,$08,$41,$08,$40,$08,$41,$08      ;  |
                    db $40,$08,$41,$08,$40,$08,$41,$08      ;  |
                    db $40,$08,$41,$08,$40,$08,$41,$08      ;  |
                    db $40,$08,$41,$08,$40,$08,$41,$08      ;  |
                    db $40,$08,$41,$08,$40,$08,$41,$08      ;  |
                    db $50,$08,$51,$08,$50,$08,$51,$08      ;  |
                    db $50,$08,$51,$08,$50,$08,$51,$08      ;  |
                    db $50,$08,$51,$08,$50,$08,$51,$08      ;  |
                    db $50,$08,$51,$08,$50,$08,$51,$08      ;  |
                    db $50,$08,$51,$08,$50,$08,$51,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ; /

DATA_15F0A5:        db $FF,$00,$FF,$00,$46,$04,$47,$04      ; \
                    db $FF,$00,$FF,$00,$66,$04,$FF,$00      ;  | The entire image of the desert...
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  | ...shown in the intro screen.
                    db $FF,$00,$FF,$00,$76,$04,$FF,$00      ;  | Applies to worlds 2 and 6.
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$56,$04,$57,$04      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$66,$04,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$76,$04,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$64,$04,$62,$08,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $76,$04,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $73,$04,$74,$04,$72,$08,$63,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$73,$04      ;  |
                    db $75,$04,$74,$04,$72,$08,$65,$08      ;  |
                    db $63,$08,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$00,$1C,$01,$1C      ;  |
                    db $FF,$00,$FF,$00,$73,$04,$75,$04      ;  |
                    db $75,$04,$74,$04,$72,$08,$65,$08      ;  |
                    db $65,$08,$63,$08,$FF,$00,$FF,$00      ;  |
                    db $60,$08,$61,$08,$60,$08,$61,$08      ;  |
                    db $60,$08,$61,$08,$60,$08,$61,$08      ;  |
                    db $60,$08,$61,$08,$60,$08,$61,$08      ;  |
                    db $60,$08,$61,$08,$60,$08,$61,$08      ;  |
                    db $60,$08,$61,$08,$60,$08,$61,$08      ;  |
                    db $70,$08,$71,$08,$70,$08,$71,$08      ;  |
                    db $70,$08,$71,$08,$70,$08,$71,$08      ;  |
                    db $70,$08,$71,$08,$70,$08,$71,$08      ;  |
                    db $70,$08,$71,$08,$70,$08,$71,$08      ;  |
                    db $70,$08,$71,$08,$70,$08,$71,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ; /

DATA_15F235:        db $FF,$00,$FF,$00,$46,$04,$47,$04      ; \
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  | The entire image of the ice world...
                    db $67,$08,$77,$08,$FF,$00,$FF,$00      ;  | ...shown in the intro screen.
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  | Applies merely to world 4.
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$56,$04,$57,$04      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$00,$1C,$01,$1C,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$4C,$04,$4D,$04      ;  |
                    db $4E,$04,$4D,$04,$4E,$04,$4D,$04      ;  |
                    db $4E,$04,$4F,$04,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$5C,$04,$5D,$04      ;  |
                    db $5E,$04,$5D,$04,$5E,$04,$5D,$04      ;  |
                    db $5E,$04,$5F,$04,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$5C,$04,$5D,$04      ;  |
                    db $5E,$04,$5D,$04,$5E,$04,$5D,$04      ;  |
                    db $5E,$04,$5F,$04,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$48,$08,$49,$08      ;  |
                    db $FF,$00,$FF,$00,$00,$1C,$01,$1C      ;  |
                    db $FF,$00,$FF,$00,$5C,$04,$5D,$04      ;  |
                    db $5E,$04,$5D,$04,$5E,$04,$5D,$04      ;  |
                    db $5E,$04,$5F,$04,$FF,$00,$FF,$00      ;  |
                    db $4A,$08,$4B,$08,$4A,$08,$4B,$08      ;  |
                    db $4A,$08,$4B,$08,$4A,$08,$4B,$08      ;  |
                    db $4A,$08,$4B,$08,$4A,$08,$4B,$08      ;  |
                    db $4A,$08,$4B,$08,$4A,$08,$4B,$08      ;  |
                    db $4A,$08,$4B,$08,$4A,$08,$4B,$08      ;  |
                    db $5A,$08,$5B,$08,$5A,$08,$5B,$08      ;  |
                    db $5A,$08,$5B,$08,$5A,$08,$5B,$08      ;  |
                    db $5A,$08,$5B,$08,$5A,$08,$5B,$08      ;  |
                    db $5A,$08,$5B,$08,$5A,$08,$5B,$08      ;  |
                    db $5A,$08,$5B,$08,$5A,$08,$5B,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $58,$08,$59,$08,$58,$08,$59,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ;  |
                    db $59,$08,$58,$08,$59,$08,$58,$08      ; /

DATA_15F3C5:        db $FF,$00,$FF,$00,$7C,$04,$7D,$04      ; \
                    db $FF,$00,$FF,$00,$FF,$00,$67,$08      ;  | The entire image of the sky world...
                    db $77,$08,$FF,$00,$68,$08,$69,$08      ;  | ...shown in the intro screen.
                    db $6A,$08,$69,$08,$6A,$08,$69,$08      ;  | Applies merely to world 7.
                    db $6A,$08,$6B,$08,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$7E,$04,$7F,$04      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$78,$08,$79,$08      ;  |
                    db $7A,$08,$79,$08,$7A,$08,$79,$08      ;  |
                    db $7A,$08,$7B,$08,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$7E,$04,$7F,$04      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$6C,$08,$6D,$08      ;  |
                    db $6E,$08,$6D,$08,$6E,$08,$6D,$08      ;  |
                    db $6E,$08,$6F,$08,$BF,$00,$BF,$00      ;  |
                    db $FF,$00,$FF,$00,$7E,$04,$7F,$04      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$6C,$08,$6D,$08      ;  |
                    db $6E,$08,$6D,$08,$6E,$08,$6D,$08      ;  |
                    db $6E,$08,$6F,$08,$BF,$00,$BF,$00      ;  |
                    db $FF,$00,$FF,$00,$7E,$04,$7F,$04      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$6C,$08,$6D,$08      ;  |
                    db $6E,$08,$6D,$08,$6E,$08,$6D,$08      ;  |
                    db $6E,$08,$6F,$08,$BF,$00,$BF,$00      ;  |
                    db $FF,$00,$FF,$00,$7E,$04,$7F,$04      ;  |
                    db $FF,$00,$FF,$00,$00,$1C,$01,$1C      ;  |
                    db $FF,$00,$FF,$00,$6C,$08,$6D,$08      ;  |
                    db $6E,$08,$6D,$08,$6E,$08,$6D,$08      ;  |
                    db $6E,$08,$6F,$08,$BF,$00,$BF,$00      ;  |
                    db $1B,$14,$1F,$14,$1D,$14,$1F,$14      ;  |
                    db $1D,$14,$1F,$14,$1D,$14,$1F,$14      ;  |
                    db $1D,$14,$1F,$14,$1D,$14,$1F,$14      ;  |
                    db $1D,$14,$1F,$14,$1D,$14,$1F,$14      ;  |
                    db $1D,$14,$1F,$14,$1D,$14,$21,$14      ;  |
                    db $1C,$14,$20,$14,$1E,$14,$20,$14      ;  |
                    db $1E,$14,$20,$14,$1E,$14,$20,$14      ;  |
                    db $1E,$14,$20,$14,$1E,$14,$20,$14      ;  |
                    db $1E,$14,$20,$14,$1E,$14,$20,$14      ;  |
                    db $1E,$14,$20,$14,$1E,$14,$22,$14      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ;  |
                    db $FF,$00,$FF,$00,$FF,$00,$FF,$00      ; /

DATA_15F555:        db $B4,$7F,$9F,$03,$00,$00,$0B,$00
                    db $0F,$00,$13,$00,$17,$00,$1B,$00
                    db $1F,$00,$C0,$15,$62,$2A,$05,$3F
                    db $AA,$53,$99,$01,$3B,$02,$DD,$02

DATA_15F575:        db $B4,$7F,$FF,$7F,$00,$00,$07,$02
                    db $AC,$0A,$52,$1B,$FF,$12,$5F,$12
                    db $BF,$15,$F9,$33,$9E,$26,$31,$7F
                    db $8D,$76,$C4,$75,$96,$01,$1A,$02

DATA_15F595:        db $B4,$7F,$FF,$7F,$00,$00,$37,$08
                    db $BF,$10,$1F,$06,$82,$59,$00,$00
                    db $4D,$6D,$13,$76,$76,$7A,$1B,$7F
                    db $0F,$11,$E4,$65,$47,$76,$2D,$7F

DATA_15F5B5:        db $F5,$7E,$9F,$03,$00,$00,$0B,$00
                    db $0F,$00,$13,$00,$17,$00,$1B,$00
                    db $1F,$00,$CE,$7E,$52,$7F,$D6,$7F
                    db $FF,$7F,$99,$01,$3B,$02,$DD,$02

DATA_15F5D5:        db $F5,$7E,$FF,$7F,$00,$00,$07,$02
                    db $AC,$0A,$52,$1B,$FF,$12,$5F,$12
                    db $BF,$15,$F9,$33,$9E,$26,$31,$7F
                    db $8D,$76,$C4,$75,$96,$01,$1A,$02

DATA_15F5F5:        db $F5,$7E,$FF,$7F,$00,$00,$37,$08
                    db $BF,$10,$1F,$06,$82,$59,$00,$00
                    db $4D,$6D,$13,$76,$76,$7A,$1B,$7F
                    db $0F,$11,$E4,$65,$47,$76,$2D,$7F

DATA_15F615:        db $F5,$7E,$9F,$03,$00,$00,$0B,$00
                    db $0F,$00,$13,$00,$17,$00,$1B,$00
                    db $1F,$00,$30,$3E,$93,$4A,$F6,$56
                    db $59,$63,$99,$01,$3B,$02,$DD,$02

DATA_15F635:        db $F5,$7E,$FF,$7F,$00,$00,$07,$02
                    db $AC,$0A,$52,$1B,$FF,$12,$5F,$12
                    db $BF,$15,$F9,$33,$9E,$26,$31,$7F
                    db $8D,$76,$C4,$75,$54,$01,$1A,$02

DATA_15F655:        db $F5,$7E,$FF,$7F,$00,$00,$37,$08
                    db $BF,$10,$1F,$06,$82,$59,$00,$00
                    db $4D,$6D,$13,$76,$76,$7A,$1B,$7F
                    db $0F,$11,$E4,$65,$47,$76,$2D,$7F

PNTR_15F675:        dl DATA_15F67E
                    dl DATA_15F83E
                    dl DATA_15FB1E

DATA_15F67E:        db $38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8

DATA_15F83E:        db $38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$30,$D0,$30,$D0,$30,$D0,$30
                    db $D0,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$08,$F8,$08,$F8,$08,$F8,$08
                    db $F8,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00

DATA_15FB1E:        db $38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$38,$C8,$38,$C8,$38,$C8,$38
                    db $C8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$28,$D8,$28,$D8,$28,$D8,$28
                    db $D8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$18,$E8,$18,$E8,$18,$E8,$18
                    db $E8,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$08,$FF,$08,$FF,$08,$FF,$08
                    db $FF,$18,$E0,$18,$E0,$18,$E0,$18
                    db $E0,$18,$E0,$18,$E0,$18,$E0,$18
                    db $E0,$18,$E0,$18,$E0,$18,$E0,$18
                    db $E0,$18,$E0,$18,$E0,$18,$E0,$18
                    db $E0,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00,$FF,$00,$FF,$00,$FF,$00,$FF
                    db $00

DATA_15FF4E:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ; \ Empty data.
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF      ;  |
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
