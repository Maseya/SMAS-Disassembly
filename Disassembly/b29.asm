;Super Mario Bros. 3

CODE_298000:        B5 5F         LDA $5F,x                 
CODE_298002:        18            CLC                       
CODE_298003:        69 08         ADC #$08                  
CODE_298005:        95 5F         STA $5F,x                 
CODE_298007:        B5 71         LDA $71,x                 
CODE_298009:        95 68         STA $68,x                 
CODE_29800B:        B5 56         LDA $56,x                 
CODE_29800D:        95 4D         STA $4D,x                 
CODE_29800F:        6B            RTL                       

CODE_298010:        BD 91 06      LDA $0691,x               
CODE_298013:        F0 03         BEQ CODE_298018           
CODE_298015:        DE 91 06      DEC $0691,x               
CODE_298018:        BD 18 05      LDA $0518,x               
CODE_29801B:        D0 49         BNE CODE_298066           
CODE_29801D:        BD 91 06      LDA $0691,x               
CODE_298020:        D0 44         BNE CODE_298066           
CODE_298022:        B4 9E         LDY $9E,x                 
CODE_298024:        10 40         BPL CODE_298066           
CODE_298026:        C0 E0         CPY #$E0                  
CODE_298028:        B0 3C         BCS CODE_298066                   
CODE_29802A:        A9 04         LDA #$04                  
CODE_29802C:        9D 91 06      STA $0691,x               
CODE_29802F:        22 72 8A 27   JSL CODE_278A72           
CODE_298033:        AD 37 21      LDA $2137                 
CODE_298036:        AD 3C 21      LDA $213C                 
CODE_298039:        29 07         AND #$07                  
CODE_29803B:        18            CLC                       
CODE_29803C:        75 5F         ADC $5F,x                 
CODE_29803E:        99 C9 05      STA $05C9,y               
CODE_298041:        B5 44         LDA $44,x                 
CODE_298043:        69 00         ADC #$00                  
CODE_298045:        99 E2 00      STA $00E2,y               
CODE_298048:        B5 71         LDA $71,x                 
CODE_29804A:        18            CLC                       
CODE_29804B:        69 0E         ADC #$0E                  
CODE_29804D:        99 BF 05      STA $05BF,y               
CODE_298050:        B5 56         LDA $56,x                 
CODE_298052:        69 00         ADC #$00                  
CODE_298054:        99 D7 1F      STA $1FD7,y               
CODE_298057:        A9 00         LDA #$00                  
CODE_298059:        99 BD 06      STA $06BD,y               
CODE_29805C:        A9 04         LDA #$04                  
CODE_29805E:        99 D1 06      STA $06D1,y               
CODE_298061:        A9 17         LDA #$17                  
CODE_298063:        99 C8 1F      STA $1FC8,y               
CODE_298066:        BD 18 05      LDA $0518,x               
CODE_298069:        F0 4B         BEQ CODE_2980B6           
CODE_29806B:        9D 51 06      STA $0651,x               
CODE_29806E:        C9 01         CMP #$01                  
CODE_298070:        D0 43         BNE CODE_2980B5           
CODE_298072:        A9 27         LDA #$27                  
CODE_298074:        8D 03 12      STA $1203                 
CODE_298077:        22 7C A2 27   JSL CODE_27A27C           
CODE_29807B:        A0 08         LDY #$08                  
CODE_29807D:        22 74 8A 27   JSL CODE_278A74           
CODE_298081:        B5 5F         LDA $5F,x                 
CODE_298083:        99 C9 05      STA $05C9,y               
CODE_298086:        B5 44         LDA $44,x                 
CODE_298088:        99 E2 00      STA $00E2,y               
CODE_29808B:        BD 18 05      LDA $0518,x               
CODE_29808E:        F0 0C         BEQ CODE_29809C           
CODE_298090:        B5 71         LDA $71,x                 
CODE_298092:        99 BF 05      STA $05BF,y               
CODE_298095:        B5 56         LDA $56,x                 
CODE_298097:        99 D7 1F      STA $1FD7,y               
CODE_29809A:        80 0F         BRA CODE_2980AB           

CODE_29809C:        B5 71         LDA $71,x                 
CODE_29809E:        18            CLC                       
CODE_29809F:        69 04         ADC #$04                  
CODE_2980A1:        99 BF 05      STA $05BF,y               
CODE_2980A4:        B5 56         LDA $56,x                 
CODE_2980A6:        69 00         ADC #$00                  
CODE_2980A8:        99 D7 1F      STA $1FD7,y               
CODE_2980AB:        A9 18         LDA #$18                  
CODE_2980AD:        99 C8 1F      STA $1FC8,y               
CODE_2980B0:        A9 18         LDA #$18                  
CODE_2980B2:        99 D1 06      STA $06D1,y               
CODE_2980B5:        6B            RTL                       

CODE_2980B6:        A5 9C         LDA $9C                   
CODE_2980B8:        F0 03         BEQ CODE_2980BD           
CODE_2980BA:        4C 43 81      JMP CODE_298143           

CODE_2980BD:        22 6F 9B 27   JSL CODE_279B6F           
CODE_2980C1:        A9 00         LDA #$00                  
CODE_2980C3:        B4 9E         LDY $9E,x                 
CODE_2980C5:        30 02         BMI CODE_2980C9           
CODE_2980C7:        A9 80         LDA #$80                  
CODE_2980C9:        9D 79 06      STA $0679,x               
CODE_2980CC:        A5 15         LDA $15                   
CODE_2980CE:        29 03         AND #$03                  
CODE_2980D0:        D0 0F         BNE CODE_2980E1           
CODE_2980D2:        FE 69 06      INC $0669,x               
CODE_2980D5:        BD 69 06      LDA $0669,x               
CODE_2980D8:        C9 03         CMP #$03                  
CODE_2980DA:        D0 05         BNE CODE_2980E1           
CODE_2980DC:        A9 00         LDA #$00                  
CODE_2980DE:        9D 69 06      STA $0669,x               
CODE_2980E1:        B5 9E         LDA $9E,x                 
CODE_2980E3:        30 44         BMI CODE_298129           
CODE_2980E5:        22 93 8B 27   JSL CODE_278B93           
CODE_2980E9:        AD 76 1F      LDA $1F76                 
CODE_2980EC:        C9 94         CMP #$94                  
CODE_2980EE:        D0 39         BNE CODE_298129           
CODE_2980F0:        B5 71         LDA $71,x                 
CODE_2980F2:        38            SEC                       
CODE_2980F3:        F5 68         SBC $68,x                 
CODE_2980F5:        85 00         STA $00                   
CODE_2980F7:        B5 56         LDA $56,x                 
CODE_2980F9:        F5 4D         SBC $4D,x                 
CODE_2980FB:        4A            LSR A                     
CODE_2980FC:        66 00         ROR $00                   
CODE_2980FE:        A5 00         LDA $00                   
CODE_298100:        4A            LSR A                     
CODE_298101:        4A            LSR A                     
CODE_298102:        4A            LSR A                     
CODE_298103:        A8            TAY                       
CODE_298104:        B9 48 C5      LDA.w DATA_21C548,y               
CODE_298107:        30 05         BMI CODE_29810E           
CODE_298109:        9D A6 06      STA $06A6,x               
CODE_29810C:        A9 80         LDA #$80                  
CODE_29810E:        95 9E         STA $9E,x                 
CODE_298110:        B5 71         LDA $71,x                 
CODE_298112:        48            PHA                       
CODE_298113:        E9 04         SBC #$04                  
CODE_298115:        95 71         STA $71,x                 
CODE_298117:        22 77 80 29   JSL CODE_298077           
CODE_29811B:        68            PLA                       
CODE_29811C:        95 71         STA $71,x                 
CODE_29811E:        BD 83 07      LDA $0783,x               
CODE_298121:        29 3F         AND #$3F                  
CODE_298123:        09 40         ORA #$40                  
CODE_298125:        9D 18 05      STA $0518,x               
CODE_298128:        6B            RTL                       

CODE_298129:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_29812D:        BD A6 06      LDA $06A6,x               
CODE_298130:        D0 0D         BNE CODE_29813F           
CODE_298132:        B5 9E         LDA $9E,x                 
CODE_298134:        30 04         BMI CODE_29813A           
CODE_298136:        C9 70         CMP #$70                  
CODE_298138:        B0 05         BCS CODE_29813F                   
CODE_29813A:        18            CLC                       
CODE_29813B:        69 02         ADC #$02                  
CODE_29813D:        95 9E         STA $9E,x                 
CODE_29813F:        22 C3 9B 27   JSL CODE_279BC3           
CODE_298143:        22 DD 9E 27   JSL CODE_279EDD           
CODE_298147:        6B            RTL                       

CODE_298148:        22 37 A8 27   JSL CODE_27A837           
CODE_29814C:        B9 5E C5      LDA.w DATA_21C55E,y               
CODE_29814F:        95 8C         STA $8C,x                 
CODE_298151:        6B            RTL                       

CODE_298152:        AD 65 05      LDA $0565                 
CODE_298155:        4A            LSR A                     
CODE_298156:        4A            LSR A                     
CODE_298157:        29 03         AND #$03                  
CODE_298159:        9D 69 06      STA $0669,x               
CODE_29815C:        A8            TAY                       
CODE_29815D:        B9 60 C5      LDA.w DATA_21C560,y               
CODE_298160:        9D E9 1F      STA $1FE9,x               
CODE_298163:        22 BB 9E 27   JSL CODE_279EBB           
CODE_298167:        B9 02 08      LDA $0802,y               
CODE_29816A:        29 3F         AND #$3F                  
CODE_29816C:        99 02 08      STA $0802,y               
CODE_29816F:        09 C0         ORA #$C0                  
CODE_298171:        99 06 08      STA $0806,y               
CODE_298174:        BD 61 06      LDA $0661,x               
CODE_298177:        C9 02         CMP #$02                  
CODE_298179:        D0 33         BNE CODE_2981AE           
CODE_29817B:        A5 9C         LDA $9C                   
CODE_29817D:        D0 2F         BNE CODE_2981AE           
CODE_29817F:        A5 15         LDA $15                   
CODE_298181:        4A            LSR A                     
CODE_298182:        EA            NOP                       
CODE_298183:        EA            NOP                       
CODE_298184:        29 01         AND #$01                  
CODE_298186:        9D 69 06      STA $0669,x               
CODE_298189:        22 C3 9B 27   JSL CODE_279BC3           
CODE_29818D:        22 6F 9B 27   JSL CODE_279B6F           
CODE_298191:        22 3B 98 27   JSL CODE_27983B           
CODE_298195:        B5 A7         LDA $A7,x                 
CODE_298197:        29 04         AND #$04                  
CODE_298199:        F0 18         BEQ CODE_2981B3           
CODE_29819B:        22 67 8B 27   JSL CODE_278B67           
CODE_29819F:        BD 18 05      LDA $0518,x               
CODE_2981A2:        D0 0A         BNE CODE_2981AE           
CODE_2981A4:        AD B5 07      LDA $07B5                 
CODE_2981A7:        D5 4D         CMP $4D,x                 
CODE_2981A9:        F0 03         BEQ CODE_2981AE           
CODE_2981AB:        20 B9 81      JSR CODE_2981B9           
CODE_2981AE:        AD B5 07      LDA $07B5                 
CODE_2981B1:        95 4D         STA $4D,x                 
CODE_2981B3:        B5 A7         LDA $A7,x                 
CODE_2981B5:        29 03         AND #$03                  
CODE_2981B7:        F0 11         BEQ CODE_2981CA           
CODE_2981B9:        A9 20         LDA #$20                  
CODE_2981BB:        9D 18 05      STA $0518,x               
CODE_2981BE:        22 05 99 27   JSL CODE_279905           
CODE_2981C2:        22 EF A7 27   JSL CODE_27A7EF           
CODE_2981C6:        22 EF A7 27   JSL CODE_27A7EF           
CODE_2981CA:        6B            RTL                       

CODE_2981CB:        22 C3 9B 27   JSL CODE_279BC3           
CODE_2981CF:        20 E6 81      JSR CODE_2981E6           
CODE_2981D2:        BD 61 06      LDA $0661,x               
CODE_2981D5:        C9 02         CMP #$02                  
CODE_2981D7:        D0 F1         BNE CODE_2981CA           
CODE_2981D9:        A5 9C         LDA $9C                   
CODE_2981DB:        D0 ED         BNE CODE_2981CA           
CODE_2981DD:        22 EF A7 27   JSL CODE_27A7EF           
CODE_2981E1:        22 6F 9B 27   JSL CODE_279B6F           
CODE_2981E5:        6B            RTL                       

CODE_2981E6:        A9 00         LDA #$00                  
CODE_2981E8:        9D 69 06      STA $0669,x               
CODE_2981EB:        9D 79 06      STA $0679,x               
CODE_2981EE:        BD 51 06      LDA $0651,x               
CODE_2981F1:        8D EF 1C      STA $1CEF                 
CODE_2981F4:        B5 5F         LDA $5F,x                 
CODE_2981F6:        48            PHA                       
CODE_2981F7:        18            CLC                       
CODE_2981F8:        69 08         ADC #$08                  
CODE_2981FA:        95 5F         STA $5F,x                 
CODE_2981FC:        B5 44         LDA $44,x                 
CODE_2981FE:        48            PHA                       
CODE_2981FF:        69 00         ADC #$00                  
CODE_298201:        95 44         STA $44,x                 
CODE_298203:        1E 51 06      ASL $0651,x               
CODE_298206:        22 51 9F 27   JSL CODE_279F51           
CODE_29820A:        68            PLA                       
CODE_29820B:        95 44         STA $44,x                 
CODE_29820D:        68            PLA                       
CODE_29820E:        95 5F         STA $5F,x                 
CODE_298210:        22 C2 9D 27   JSL CODE_279DC2           
CODE_298214:        BD 81 06      LDA $0681,x               
CODE_298217:        F0 03         BEQ CODE_29821C           
CODE_298219:        82 A2 00      BRL CODE_2982BE           

CODE_29821C:        C2 10         REP #$10                  
CODE_29821E:        B5 83         LDA $83,x                 
CODE_298220:        85 00         STA $00                   
CODE_298222:        B4 C6         LDY $C6,x                 
CODE_298224:        AD EF 1C      LDA $1CEF                 
CODE_298227:        30 0E         BMI CODE_298237           
CODE_298229:        A5 00         LDA $00                   
CODE_29822B:        18            CLC                       
CODE_29822C:        69 08         ADC #$08                  
CODE_29822E:        99 11 08      STA $0811,y               
CODE_298231:        18            CLC                       
CODE_298232:        69 08         ADC #$08                  
CODE_298234:        99 19 08      STA $0819,y               
CODE_298237:        AD EF 1C      LDA $1CEF                 
CODE_29823A:        29 10         AND #$10                  
CODE_29823C:        D0 0E         BNE CODE_29824C           
CODE_29823E:        A5 00         LDA $00                   
CODE_298240:        18            CLC                       
CODE_298241:        69 08         ADC #$08                  
CODE_298243:        99 15 08      STA $0815,y               
CODE_298246:        18            CLC                       
CODE_298247:        69 08         ADC #$08                  
CODE_298249:        99 1D 08      STA $081D,y               
CODE_29824C:        A9 2A         LDA #$2A                  
CODE_29824E:        99 03 08      STA $0803,y               
CODE_298251:        99 07 08      STA $0807,y               
CODE_298254:        99 0B 08      STA $080B,y               
CODE_298257:        99 0F 08      STA $080F,y               
CODE_29825A:        A9 B8         LDA #$B8                  
CODE_29825C:        99 02 08      STA $0802,y               
CODE_29825F:        1A            INC A                     
CODE_298260:        99 0A 08      STA $080A,y               
CODE_298263:        1A            INC A                     
CODE_298264:        99 06 08      STA $0806,y               
CODE_298267:        1A            INC A                     
CODE_298268:        99 0E 08      STA $080E,y               
CODE_29826B:        A9 92         LDA #$92                  
CODE_29826D:        99 12 08      STA $0812,y               
CODE_298270:        1A            INC A                     
CODE_298271:        99 1A 08      STA $081A,y               
CODE_298274:        A9 9A         LDA #$9A                  
CODE_298276:        99 16 08      STA $0816,y               
CODE_298279:        1A            INC A                     
CODE_29827A:        99 1E 08      STA $081E,y               
CODE_29827D:        A9 2A         LDA #$2A                  
CODE_29827F:        99 13 08      STA $0813,y               
CODE_298282:        99 17 08      STA $0817,y               
CODE_298285:        99 1B 08      STA $081B,y               
CODE_298288:        99 1F 08      STA $081F,y               
CODE_29828B:        C2 20         REP #$20                  
CODE_29828D:        A5 9B         LDA $9B                   
CODE_29828F:        29 FF 00      AND #$00FF                
CODE_298292:        AA            TAX                       
CODE_298293:        E2 20         SEP #$20                  
CODE_298295:        B5 7A         LDA $7A,x                 
CODE_298297:        99 10 08      STA $0810,y               
CODE_29829A:        99 18 08      STA $0818,y               
CODE_29829D:        18            CLC                       
CODE_29829E:        69 18         ADC #$18                  
CODE_2982A0:        99 14 08      STA $0814,y               
CODE_2982A3:        99 1C 08      STA $081C,y               
CODE_2982A6:        C2 20         REP #$20                  
CODE_2982A8:        98            TYA                       
CODE_2982A9:        4A            LSR A                     
CODE_2982AA:        4A            LSR A                     
CODE_2982AB:        A8            TAY                       
CODE_2982AC:        E2 20         SEP #$20                  
CODE_2982AE:        A9 00         LDA #$00                  
CODE_2982B0:        99 24 0A      STA $0A24,y               
CODE_2982B3:        99 25 0A      STA $0A25,y               
CODE_2982B6:        99 26 0A      STA $0A26,y               
CODE_2982B9:        99 27 0A      STA $0A27,y               
CODE_2982BC:        E2 10         SEP #$10                  
CODE_2982BE:        60            RTS                       

CODE_2982BF:        B5 71         LDA $71,x                 
CODE_2982C1:        18            CLC                       
CODE_2982C2:        69 0F         ADC #$0F                  
CODE_2982C4:        95 71         STA $71,x                 
CODE_2982C6:        B5 56         LDA $56,x                 
CODE_2982C8:        69 00         ADC #$00                  
CODE_2982CA:        95 56         STA $56,x                 
CODE_2982CC:        6B            RTL                       

CODE_2982CD:        D6 71         DEC $71,x                 
CODE_2982CF:        B5 71         LDA $71,x                 
CODE_2982D1:        C9 FF         CMP #$FF                  
CODE_2982D3:        D0 02         BNE CODE_2982D7           
CODE_2982D5:        D6 56         DEC $56,x                 
CODE_2982D7:        6B            RTL                       

CODE_2982D8:        22 C3 9B 27   JSL CODE_279BC3           
CODE_2982DC:        A5 9C         LDA $9C                   
CODE_2982DE:        D0 21         BNE CODE_298301           
CODE_2982E0:        BD 18 05      LDA $0518,x               
CODE_2982E3:        D0 1C         BNE CODE_298301           
CODE_2982E5:        F6 4D         INC $4D,x                 
CODE_2982E7:        B5 4D         LDA $4D,x                 
CODE_2982E9:        C9 06         CMP #$06                  
CODE_2982EB:        90 02         BCC CODE_2982EF           
CODE_2982ED:        A9 00         LDA #$00                  
CODE_2982EF:        95 4D         STA $4D,x                 
CODE_2982F1:        A8            TAY                       
CODE_2982F2:        B9 97 C5      LDA.w DATA_21C597,y               
CODE_2982F5:        9D 18 05      STA $0518,x               
CODE_2982F8:        C0 03         CPY #$03                  
CODE_2982FA:        D0 05         BNE CODE_298301           
CODE_2982FC:        A9 17         LDA #$17                  
CODE_2982FE:        8D 03 12      STA $1203                 
CODE_298301:        BD 71 06      LDA $0671,x               
CODE_298304:        C9 9D         CMP #$9D                  
CODE_298306:        F0 08         BEQ CODE_298310           
CODE_298308:        C9 B2         CMP #$B2                  
CODE_29830A:        F0 72         BEQ CODE_29837E           
CODE_29830C:        20 F7 83      JSR CODE_2983F7           
CODE_29830F:        6B            RTL                       

CODE_298310:        B5 5F         LDA $5F,x                 
CODE_298312:        48            PHA                       
CODE_298313:        B4 4D         LDY $4D,x                 
CODE_298315:        F0 63         BEQ CODE_29837A           
CODE_298317:        AD 65 05      LDA $0565                 
CODE_29831A:        4A            LSR A                     
CODE_29831B:        C0 03         CPY #$03                  
CODE_29831D:        F0 03         BEQ CODE_298322           
CODE_29831F:        4A            LSR A                     
CODE_298320:        4A            LSR A                     
CODE_298321:        4A            LSR A                     
CODE_298322:        4A            LSR A                     
CODE_298323:        A9 00         LDA #$00                  
CODE_298325:        90 02         BCC CODE_298329           
CODE_298327:        A9 40         LDA #$40                  
CODE_298329:        9D 79 06      STA $0679,x               
CODE_29832C:        C0 03         CPY #$03                  
CODE_29832E:        F0 0E         BEQ CODE_29833E           
CODE_298330:        A9 04         LDA #$04                  
CODE_298332:        BC 79 06      LDY $0679,x               
CODE_298335:        F0 02         BEQ CODE_298339           
CODE_298337:        A9 FC         LDA #$FC                  
CODE_298339:        18            CLC                       
CODE_29833A:        75 5F         ADC $5F,x                 
CODE_29833C:        95 5F         STA $5F,x                 
CODE_29833E:        B4 4D         LDY $4D,x                 
CODE_298340:        B9 9D C5      LDA.w DATA_21C59D,y               
CODE_298343:        48            PHA                       
CODE_298344:        9D 69 06      STA $0669,x               
CODE_298347:        22 51 9F 27   JSL CODE_279F51           
CODE_29834B:        68            PLA                       
CODE_29834C:        18            CLC                       
CODE_29834D:        69 06         ADC #$06                  
CODE_29834F:        9D 69 06      STA $0669,x               
CODE_298352:        B5 71         LDA $71,x                 
CODE_298354:        48            PHA                       
CODE_298355:        38            SEC                       
CODE_298356:        E9 10         SBC #$10                  
CODE_298358:        95 71         STA $71,x                 
CODE_29835A:        B5 56         LDA $56,x                 
CODE_29835C:        48            PHA                       
CODE_29835D:        E9 00         SBC #$00                  
CODE_29835F:        95 56         STA $56,x                 
CODE_298361:        C2 20         REP #$20                  
CODE_298363:        B5 C6         LDA $C6,x                 
CODE_298365:        18            CLC                       
CODE_298366:        69 10 00      ADC #$0010                
CODE_298369:        95 C6         STA $C6,x                 
CODE_29836B:        E2 20         SEP #$20                  
CODE_29836D:        22 BB 9E 27   JSL CODE_279EBB           
CODE_298371:        68            PLA                       
CODE_298372:        95 56         STA $56,x                 
CODE_298374:        68            PLA                       
CODE_298375:        95 71         STA $71,x                 
CODE_298377:        20 EA 84      JSR CODE_2984EA           
CODE_29837A:        68            PLA                       
CODE_29837B:        95 5F         STA $5F,x                 
CODE_29837D:        6B            RTL                       

CODE_29837E:        A9 80         LDA #$80                  
CODE_298380:        9D 79 06      STA $0679,x               
CODE_298383:        B5 5F         LDA $5F,x                 
CODE_298385:        48            PHA                       
CODE_298386:        B4 4D         LDY $4D,x                 
CODE_298388:        F0 69         BEQ CODE_2983F3           
CODE_29838A:        AD 65 05      LDA $0565                 
CODE_29838D:        4A            LSR A                     
CODE_29838E:        C0 03         CPY #$03                  
CODE_298390:        F0 03         BEQ CODE_298395           
CODE_298392:        4A            LSR A                     
CODE_298393:        4A            LSR A                     
CODE_298394:        4A            LSR A                     
CODE_298395:        4A            LSR A                     
CODE_298396:        A9 80         LDA #$80                  
CODE_298398:        90 02         BCC CODE_29839C           
CODE_29839A:        A9 C0         LDA #$C0                  
CODE_29839C:        9D 79 06      STA $0679,x               
CODE_29839F:        C0 03         CPY #$03                  
CODE_2983A1:        F0 10         BEQ CODE_2983B3           
CODE_2983A3:        BD 79 06      LDA $0679,x               
CODE_2983A6:        0A            ASL A                     
CODE_2983A7:        0A            ASL A                     
CODE_2983A8:        A9 04         LDA #$04                  
CODE_2983AA:        90 02         BCC CODE_2983AE           
CODE_2983AC:        A9 FC         LDA #$FC                  
CODE_2983AE:        18            CLC                       
CODE_2983AF:        75 5F         ADC $5F,x                 
CODE_2983B1:        95 5F         STA $5F,x                 
CODE_2983B3:        B4 4D         LDY $4D,x                 
CODE_2983B5:        B9 9D C5      LDA.w DATA_21C59D,y               
CODE_2983B8:        48            PHA                       
CODE_2983B9:        9D 69 06      STA $0669,x               
CODE_2983BC:        22 51 9F 27   JSL CODE_279F51           
CODE_2983C0:        68            PLA                       
CODE_2983C1:        18            CLC                       
CODE_2983C2:        69 06         ADC #$06                  
CODE_2983C4:        9D 69 06      STA $0669,x               
CODE_2983C7:        B5 71         LDA $71,x                 
CODE_2983C9:        48            PHA                       
CODE_2983CA:        18            CLC                       
CODE_2983CB:        69 20         ADC #$20                  
CODE_2983CD:        95 71         STA $71,x                 
CODE_2983CF:        B5 56         LDA $56,x                 
CODE_2983D1:        48            PHA                       
CODE_2983D2:        69 00         ADC #$00                  
CODE_2983D4:        95 56         STA $56,x                 
CODE_2983D6:        C2 20         REP #$20                  
CODE_2983D8:        B5 C6         LDA $C6,x                 
CODE_2983DA:        18            CLC                       
CODE_2983DB:        69 10 00      ADC #$0010                
CODE_2983DE:        95 C6         STA $C6,x                 
CODE_2983E0:        E2 20         SEP #$20                  
CODE_2983E2:        22 BB 9E 27   JSL CODE_279EBB           
CODE_2983E6:        68            PLA                       
CODE_2983E7:        95 56         STA $56,x                 
CODE_2983E9:        68            PLA                       
CODE_2983EA:        95 71         STA $71,x                 
CODE_2983EC:        22 C2 9D 27   JSL CODE_279DC2           
CODE_2983F0:        20 EA 84      JSR CODE_2984EA           
CODE_2983F3:        68            PLA                       
CODE_2983F4:        95 5F         STA $5F,x                 
CODE_2983F6:        6B            RTL                       

CODE_2983F7:        64 0F         STZ $0F                   
CODE_2983F9:        B4 4D         LDY $4D,x                 
CODE_2983FB:        D0 01         BNE CODE_2983FE           
CODE_2983FD:        60            RTS                       

CODE_2983FE:        B9 9D C5      LDA.w DATA_21C59D,y               
CODE_298401:        9D 69 06      STA $0669,x               
CODE_298404:        22 C2 9D 27   JSL CODE_279DC2           
CODE_298408:        B5 83         LDA $83,x                 
CODE_29840A:        38            SEC                       
CODE_29840B:        E9 01         SBC #$01                  
CODE_29840D:        85 00         STA $00                   
CODE_29840F:        B5 7A         LDA $7A,x                 
CODE_298411:        85 01         STA $01                   
CODE_298413:        A5 01         LDA $01                   
CODE_298415:        22 AB 89 29   JSL CODE_2989AB           
CODE_298419:        90 03         BCC CODE_29841E           
CODE_29841B:        82 BA 00      BRL CODE_2984D8           

CODE_29841E:        C2 30         REP #$30                  
CODE_298420:        A5 0F         LDA $0F                   
CODE_298422:        29 FF 00      AND #$00FF                
CODE_298425:        0A            ASL A                     
CODE_298426:        0A            ASL A                     
CODE_298427:        0A            ASL A                     
CODE_298428:        75 C6         ADC $C6,x                 
CODE_29842A:        A8            TAY                       
CODE_29842B:        E2 20         SEP #$20                  
CODE_29842D:        A5 00         LDA $00                   
CODE_29842F:        99 01 08      STA $0801,y               
CODE_298432:        18            CLC                       
CODE_298433:        69 08         ADC #$08                  
CODE_298435:        99 05 08      STA $0805,y               
CODE_298438:        A5 01         LDA $01                   
CODE_29843A:        99 00 08      STA $0800,y               
CODE_29843D:        99 04 08      STA $0804,y               
CODE_298440:        AD 65 05      LDA $0565                 
CODE_298443:        85 02         STA $02                   
CODE_298445:        B5 4D         LDA $4D,x                 
CODE_298447:        46 02         LSR $02                   
CODE_298449:        C9 03         CMP #$03                  
CODE_29844B:        F0 06         BEQ CODE_298453           
CODE_29844D:        46 02         LSR $02                   
CODE_29844F:        46 02         LSR $02                   
CODE_298451:        46 02         LSR $02                   
CODE_298453:        46 02         LSR $02                   
CODE_298455:        08            PHP                       
CODE_298456:        C2 20         REP #$20                  
CODE_298458:        BD 71 06      LDA $0671,x               
CODE_29845B:        29 FF 00      AND #$00FF                
CODE_29845E:        AA            TAX                       
CODE_29845F:        E2 20         SEP #$20                  
CODE_298461:        A9 22         LDA #$22                  
CODE_298463:        E0 B1 00      CPX #$00B1                
CODE_298466:        D0 02         BNE CODE_29846A           
CODE_298468:        A9 62         LDA #$62                  
CODE_29846A:        28            PLP                       
CODE_29846B:        90 02         BCC CODE_29846F           
CODE_29846D:        09 A2         ORA #$A2                  
CODE_29846F:        99 03 08      STA $0803,y               
CODE_298472:        99 07 08      STA $0807,y               
CODE_298475:        C2 20         REP #$20                  
CODE_298477:        A5 9B         LDA $9B                   
CODE_298479:        29 FF 00      AND #$00FF                
CODE_29847C:        AA            TAX                       
CODE_29847D:        E2 20         SEP #$20                  
CODE_29847F:        A5 0F         LDA $0F                   
CODE_298481:        85 D8         STA $D8                   
CODE_298483:        64 D9         STZ $D9                   
CODE_298485:        BD 71 06      LDA $0671,x               
CODE_298488:        C9 B1         CMP #$B1                  
CODE_29848A:        D0 07         BNE CODE_298493           
CODE_29848C:        A9 05         LDA #$05                  
CODE_29848E:        38            SEC                       
CODE_29848F:        E5 0F         SBC $0F                   
CODE_298491:        85 D8         STA $D8                   
CODE_298493:        C2 20         REP #$20                  
CODE_298495:        BD 69 06      LDA $0669,x               
CODE_298498:        29 FF 00      AND #$00FF                
CODE_29849B:        0A            ASL A                     
CODE_29849C:        0A            ASL A                     
CODE_29849D:        0A            ASL A                     
CODE_29849E:        65 D8         ADC $D8                   
CODE_2984A0:        AA            TAX                       
CODE_2984A1:        E2 20         SEP #$20                  
CODE_2984A3:        BD A3 C5      LDA.w DATA_21C5A3,x               
CODE_2984A6:        99 02 08      STA $0802,y               
CODE_2984A9:        1A            INC A                     
CODE_2984AA:        99 06 08      STA $0806,y               
CODE_2984AD:        B9 03 08      LDA $0803,y               
CODE_2984B0:        29 80         AND #$80                  
CODE_2984B2:        F0 0E         BEQ CODE_2984C2           
CODE_2984B4:        B9 02 08      LDA $0802,y               
CODE_2984B7:        48            PHA                       
CODE_2984B8:        B9 06 08      LDA $0806,y               
CODE_2984BB:        99 02 08      STA $0802,y               
CODE_2984BE:        68            PLA                       
CODE_2984BF:        99 06 08      STA $0806,y               
CODE_2984C2:        C2 20         REP #$20                  
CODE_2984C4:        98            TYA                       
CODE_2984C5:        4A            LSR A                     
CODE_2984C6:        4A            LSR A                     
CODE_2984C7:        A8            TAY                       
CODE_2984C8:        E2 20         SEP #$20                  
CODE_2984CA:        A5 DB         LDA $DB                   
CODE_2984CC:        29 01         AND #$01                  
CODE_2984CE:        99 20 0A      STA $0A20,y               
CODE_2984D1:        99 21 0A      STA $0A21,y               
CODE_2984D4:        E2 10         SEP #$10                  
CODE_2984D6:        A6 9B         LDX $9B                   
CODE_2984D8:        A5 01         LDA $01                   
CODE_2984DA:        18            CLC                       
CODE_2984DB:        69 08         ADC #$08                  
CODE_2984DD:        85 01         STA $01                   
CODE_2984DF:        E6 0F         INC $0F                   
CODE_2984E1:        A5 0F         LDA $0F                   
CODE_2984E3:        C9 06         CMP #$06                  
CODE_2984E5:        F0 03         BEQ CODE_2984EA           
CODE_2984E7:        82 29 FF      BRL CODE_298413           

CODE_2984EA:        B5 4D         LDA $4D,x                 
CODE_2984EC:        C9 03         CMP #$03                  
CODE_2984EE:        D0 04         BNE CODE_2984F4           
CODE_2984F0:        22 6F 9B 27   JSL CODE_279B6F           
CODE_2984F4:        60            RTS                       

CODE_2984F5:        A0 21         LDY #$21                  
CODE_2984F7:        A9 10         LDA #$10                  
CODE_2984F9:        D0 04         BNE CODE_2984FF           
CODE_2984FB:        A0 19         LDY #$19                  
CODE_2984FD:        A9 08         LDA #$08                  
CODE_2984FF:        18            CLC                       
CODE_298500:        75 71         ADC $71,x                 
CODE_298502:        95 71         STA $71,x                 
CODE_298504:        A9 80         LDA #$80                  
CODE_298506:        9D 79 06      STA $0679,x               
CODE_298509:        D0 06         BNE CODE_298511           
CODE_29850B:        A0 21         LDY #$21                  
CODE_29850D:        D0 02         BNE CODE_298511           
CODE_29850F:        A0 19         LDY #$19                  
CODE_298511:        B5 71         LDA $71,x                 
CODE_298513:        95 68         STA $68,x                 
CODE_298515:        98            TYA                       
CODE_298516:        9D 7B 07      STA $077B,x               
CODE_298519:        38            SEC                       
CODE_29851A:        E9 10         SBC #$10                  
CODE_29851C:        9D 89 06      STA $0689,x               
CODE_29851F:        B5 56         LDA $56,x                 
CODE_298521:        9D 21 10      STA $1021,x               
CODE_298524:        B5 5F         LDA $5F,x                 
CODE_298526:        18            CLC                       
CODE_298527:        69 08         ADC #$08                  
CODE_298529:        95 5F         STA $5F,x                 
CODE_29852B:        6B            RTL                       

CODE_29852C:        22 C3 9B 27   JSL CODE_279BC3           
CODE_298530:        B5 4D         LDA $4D,x                 
CODE_298532:        BC 79 06      LDY $0679,x               
CODE_298535:        10 03         BPL CODE_29853A           
CODE_298537:        18            CLC                       
CODE_298538:        69 02         ADC #$02                  
CODE_29853A:        29 03         AND #$03                  
CODE_29853C:        D0 0C         BNE CODE_29854A           
CODE_29853E:        22 C2 9D 27   JSL CODE_279DC2           
CODE_298542:        A9 01         LDA #$01                  
CODE_298544:        9D 51 06      STA $0651,x               
CODE_298547:        4C 47 87      JMP CODE_298747           

CODE_29854A:        22 37 A8 27   JSL CODE_27A837           
CODE_29854E:        BD 79 06      LDA $0679,x               
CODE_298551:        29 BF         AND #$BF                  
CODE_298553:        19 C3 C5      ORA.w DATA_21C5C3,y               
CODE_298556:        9D 79 06      STA $0679,x               
CODE_298559:        C2 20         REP #$20                  
CODE_29855B:        B5 C6         LDA $C6,x                 
CODE_29855D:        18            CLC                       
CODE_29855E:        69 10 00      ADC #$0010                
CODE_298561:        95 C6         STA $C6,x                 
CODE_298563:        E2 20         SEP #$20                  
CODE_298565:        BD D2 1F      LDA $1FD2,x               
CODE_298568:        4A            LSR A                     
CODE_298569:        4A            LSR A                     
CODE_29856A:        4A            LSR A                     
CODE_29856B:        29 01         AND #$01                  
CODE_29856D:        9D 69 06      STA $0669,x               
CODE_298570:        BD 71 06      LDA $0671,x               
CODE_298573:        38            SEC                       
CODE_298574:        E9 A0         SBC #$A0                  
CODE_298576:        A8            TAY                       
CODE_298577:        B9 BB C5      LDA.w DATA_21C5BB,y               
CODE_29857A:        9D 91 06      STA $0691,x               
CODE_29857D:        29 01         AND #$01                  
CODE_29857F:        85 01         STA $01                   
CODE_298581:        B5 68         LDA $68,x                 
CODE_298583:        38            SEC                       
CODE_298584:        F5 71         SBC $71,x                 
CODE_298586:        A4 01         LDY $01                   
CODE_298588:        F0 07         BEQ CODE_298591           
CODE_29858A:        DD 89 06      CMP $0689,x               
CODE_29858D:        90 0C         BCC CODE_29859B           
CODE_29858F:        B0 04         BCS CODE_298595                   
CODE_298591:        C9 11         CMP #$11                  
CODE_298593:        B0 06         BCS CODE_29859B                   
CODE_298595:        FE 69 06      INC $0669,x               
CODE_298598:        FE 69 06      INC $0669,x               
CODE_29859B:        22 51 9F 27   JSL CODE_279F51           
CODE_29859F:        22 48 A8 27   JSL CODE_27A848           
CODE_2985A3:        84 00         STY $00                   
CODE_2985A5:        64 01         STZ $01                   
CODE_2985A7:        C2 10         REP #$10                  
CODE_2985A9:        B4 C6         LDY $C6,x                 
CODE_2985AB:        BD 91 06      LDA $0691,x               
CODE_2985AE:        30 30         BMI CODE_2985E0           
CODE_2985B0:        BD 79 06      LDA $0679,x               
CODE_2985B3:        30 15         BMI CODE_2985CA           
CODE_2985B5:        B9 F3 07      LDA $07F3,y               
CODE_2985B8:        29 BF         AND #$BF                  
CODE_2985BA:        99 F3 07      STA $07F3,y               
CODE_2985BD:        99 FB 07      STA $07FB,y               
CODE_2985C0:        09 40         ORA #$40                  
CODE_2985C2:        99 F7 07      STA $07F7,y               
CODE_2985C5:        99 FF 07      STA $07FF,y               
CODE_2985C8:        D0 55         BNE CODE_29861F           
CODE_2985CA:        B9 03 08      LDA $0803,y               
CODE_2985CD:        29 BF         AND #$BF                  
CODE_2985CF:        99 03 08      STA $0803,y               
CODE_2985D2:        99 0B 08      STA $080B,y               
CODE_2985D5:        09 40         ORA #$40                  
CODE_2985D7:        99 07 08      STA $0807,y               
CODE_2985DA:        99 0F 08      STA $080F,y               
CODE_2985DD:        82 8B 00      BRL CODE_29866B           

CODE_2985E0:        BD 79 06      LDA $0679,x               
CODE_2985E3:        30 4C         BMI CODE_298631           
CODE_2985E5:        A6 00         LDX $00                   
CODE_2985E7:        B9 F3 07      LDA $07F3,y               
CODE_2985EA:        29 7F         AND #$7F                  
CODE_2985EC:        1D C5 C5      ORA.w DATA_21C5C5,x               
CODE_2985EF:        29 CF         AND #$CF                  
CODE_2985F1:        09 20         ORA #$20                  
CODE_2985F3:        99 F3 07      STA $07F3,y               
CODE_2985F6:        99 F7 07      STA $07F7,y               
CODE_2985F9:        99 FB 07      STA $07FB,y               
CODE_2985FC:        99 FF 07      STA $07FF,y               
CODE_2985FF:        29 80         AND #$80                  
CODE_298601:        F0 1C         BEQ CODE_29861F           
CODE_298603:        B9 F2 07      LDA $07F2,y               
CODE_298606:        48            PHA                       
CODE_298607:        B9 FA 07      LDA $07FA,y               
CODE_29860A:        99 F2 07      STA $07F2,y               
CODE_29860D:        68            PLA                       
CODE_29860E:        99 FA 07      STA $07FA,y               
CODE_298611:        B9 F6 07      LDA $07F6,y               
CODE_298614:        48            PHA                       
CODE_298615:        B9 FE 07      LDA $07FE,y               
CODE_298618:        99 F6 07      STA $07F6,y               
CODE_29861B:        68            PLA                       
CODE_29861C:        99 FE 07      STA $07FE,y               
CODE_29861F:        A9 24         LDA #$24                  
CODE_298621:        99 03 08      STA $0803,y               
CODE_298624:        99 0B 08      STA $080B,y               
CODE_298627:        A9 64         LDA #$64                  
CODE_298629:        99 07 08      STA $0807,y               
CODE_29862C:        99 0F 08      STA $080F,y               
CODE_29862F:        80 4A         BRA CODE_29867B           

CODE_298631:        A6 00         LDX $00                   
CODE_298633:        B9 03 08      LDA $0803,y               
CODE_298636:        29 7F         AND #$7F                  
CODE_298638:        1D C5 C5      ORA.w DATA_21C5C5,x               
CODE_29863B:        29 CF         AND #$CF                  
CODE_29863D:        09 10         ORA #$10                  
CODE_29863F:        99 03 08      STA $0803,y               
CODE_298642:        99 07 08      STA $0807,y               
CODE_298645:        99 0B 08      STA $080B,y               
CODE_298648:        99 0F 08      STA $080F,y               
CODE_29864B:        29 80         AND #$80                  
CODE_29864D:        D0 1C         BNE CODE_29866B           
CODE_29864F:        B9 02 08      LDA $0802,y               
CODE_298652:        48            PHA                       
CODE_298653:        B9 0A 08      LDA $080A,y               
CODE_298656:        99 02 08      STA $0802,y               
CODE_298659:        68            PLA                       
CODE_29865A:        99 0A 08      STA $080A,y               
CODE_29865D:        B9 06 08      LDA $0806,y               
CODE_298660:        48            PHA                       
CODE_298661:        B9 0E 08      LDA $080E,y               
CODE_298664:        99 06 08      STA $0806,y               
CODE_298667:        68            PLA                       
CODE_298668:        99 0E 08      STA $080E,y               
CODE_29866B:        A9 A4         LDA #$A4                  
CODE_29866D:        99 F3 07      STA $07F3,y               
CODE_298670:        99 FB 07      STA $07FB,y               
CODE_298673:        A9 E4         LDA #$E4                  
CODE_298675:        99 F7 07      STA $07F7,y               
CODE_298678:        99 FF 07      STA $07FF,y               
CODE_29867B:        C2 20         REP #$20                  
CODE_29867D:        A5 9B         LDA $9B                   
CODE_29867F:        29 FF 00      AND #$00FF                
CODE_298682:        AA            TAX                       
CODE_298683:        E2 20         SEP #$20                  
CODE_298685:        A9 01         LDA #$01                  
CODE_298687:        85 00         STA $00                   
CODE_298689:        64 01         STZ $01                   
CODE_29868B:        A9 FF         LDA #$FF                  
CODE_29868D:        85 DC         STA $DC                   
CODE_29868F:        85 DD         STA $DD                   
CODE_298691:        BD 91 06      LDA $0691,x               
CODE_298694:        29 01         AND #$01                  
CODE_298696:        F0 09         BEQ CODE_2986A1           
CODE_298698:        BD 89 06      LDA $0689,x               
CODE_29869B:        85 00         STA $00                   
CODE_29869D:        A9 F4         LDA #$F4                  
CODE_29869F:        85 DC         STA $DC                   
CODE_2986A1:        AD 25 04      LDA $0425                 
CODE_2986A4:        F0 04         BEQ CODE_2986AA           
CODE_2986A6:        A9 F9         LDA #$F9                  
CODE_2986A8:        85 DC         STA $DC                   
CODE_2986AA:        AD 43 05      LDA $0543                 
CODE_2986AD:        85 D8         STA $D8                   
CODE_2986AF:        AD 42 05      LDA $0542                 
CODE_2986B2:        85 D9         STA $D9                   
CODE_2986B4:        BD 21 10      LDA $1021,x               
CODE_2986B7:        EB            XBA                       
CODE_2986B8:        B5 68         LDA $68,x                 
CODE_2986BA:        C2 20         REP #$20                  
CODE_2986BC:        38            SEC                       
CODE_2986BD:        E5 00         SBC $00                   
CODE_2986BF:        38            SEC                       
CODE_2986C0:        E5 D8         SBC $D8                   
CODE_2986C2:        85 DA         STA $DA                   
CODE_2986C4:        18            CLC                       
CODE_2986C5:        69 08 00      ADC #$0008                
CODE_2986C8:        85 D8         STA $D8                   
CODE_2986CA:        A5 DA         LDA $DA                   
CODE_2986CC:        C9 F0 00      CMP #$00F0                
CODE_2986CF:        90 04         BCC CODE_2986D5           
CODE_2986D1:        C5 DC         CMP $DC                   
CODE_2986D3:        90 0A         BCC CODE_2986DF           
CODE_2986D5:        E2 20         SEP #$20                  
CODE_2986D7:        99 E1 07      STA $07E1,y               
CODE_2986DA:        99 E9 07      STA $07E9,y               
CODE_2986DD:        C2 20         REP #$20                  
CODE_2986DF:        A5 D8         LDA $D8                   
CODE_2986E1:        C9 F0 00      CMP #$00F0                
CODE_2986E4:        90 04         BCC CODE_2986EA           
CODE_2986E6:        C5 DC         CMP $DC                   
CODE_2986E8:        90 08         BCC CODE_2986F2           
CODE_2986EA:        E2 20         SEP #$20                  
CODE_2986EC:        99 E5 07      STA $07E5,y               
CODE_2986EF:        99 ED 07      STA $07ED,y               
CODE_2986F2:        E2 20         SEP #$20                  
CODE_2986F4:        A9 76         LDA #$76                  
CODE_2986F6:        99 E2 07      STA $07E2,y               
CODE_2986F9:        99 EA 07      STA $07EA,y               
CODE_2986FC:        99 E6 07      STA $07E6,y               
CODE_2986FF:        99 EE 07      STA $07EE,y               
CODE_298702:        A9 12         LDA #$12                  
CODE_298704:        99 E3 07      STA $07E3,y               
CODE_298707:        99 E7 07      STA $07E7,y               
CODE_29870A:        99 EB 07      STA $07EB,y               
CODE_29870D:        99 EF 07      STA $07EF,y               
CODE_298710:        B5 5F         LDA $5F,x                 
CODE_298712:        38            SEC                       
CODE_298713:        ED 10 02      SBC $0210                 
CODE_298716:        99 E0 07      STA $07E0,y               
CODE_298719:        99 E4 07      STA $07E4,y               
CODE_29871C:        18            CLC                       
CODE_29871D:        69 08         ADC #$08                  
CODE_29871F:        99 E8 07      STA $07E8,y               
CODE_298722:        99 EC 07      STA $07EC,y               
CODE_298725:        5A            PHY                       
CODE_298726:        C2 20         REP #$20                  
CODE_298728:        98            TYA                       
CODE_298729:        4A            LSR A                     
CODE_29872A:        4A            LSR A                     
CODE_29872B:        A8            TAY                       
CODE_29872C:        E2 20         SEP #$20                  
CODE_29872E:        BD 51 06      LDA $0651,x               
CODE_298731:        2A            ROL A                     
CODE_298732:        2A            ROL A                     
CODE_298733:        08            PHP                       
CODE_298734:        29 01         AND #$01                  
CODE_298736:        99 18 0A      STA $0A18,y               
CODE_298739:        99 19 0A      STA $0A19,y               
CODE_29873C:        28            PLP                       
CODE_29873D:        2A            ROL A                     
CODE_29873E:        29 01         AND #$01                  
CODE_298740:        99 1A 0A      STA $0A1A,y               
CODE_298743:        99 1B 0A      STA $0A1B,y               
CODE_298746:        7A            PLY                       
CODE_298747:        E2 10         SEP #$10                  
CODE_298749:        A5 9C         LDA $9C                   
CODE_29874B:        D0 03         BNE CODE_298750           
CODE_29874D:        20 51 87      JSR CODE_298751           
CODE_298750:        6B            RTL                       

CODE_298751:        22 6F 9B 27   JSL CODE_279B6F           
CODE_298755:        FE D2 1F      INC $1FD2,x               
CODE_298758:        B5 4D         LDA $4D,x                 
CODE_29875A:        29 03         AND #$03                  
CODE_29875C:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_298760:        dw CODE_2987F6
                    dw CODE_298768
                    dw CODE_2987A2
                    dw CODE_298783

CODE_298768:        B5 68         LDA $68,x
CODE_29876A:        38            SEC                       
CODE_29876B:        FD 7B 07      SBC $077B,x               
CODE_29876E:        48            PHA                       
CODE_29876F:        BD 21 10      LDA $1021,x               
CODE_298772:        E9 00         SBC #$00                  
CODE_298774:        85 00         STA $00                   
CODE_298776:        68            PLA                       
CODE_298777:        D5 71         CMP $71,x                 
CODE_298779:        A5 00         LDA $00                   
CODE_29877B:        F5 56         SBC $56,x                 
CODE_29877D:        B0 67         BCS CODE_2987E6                   
CODE_29877F:        A9 F0         LDA #$F0                  
CODE_298781:        D0 18         BNE CODE_29879B           
CODE_298783:        B5 71         LDA $71,x                 
CODE_298785:        18            CLC                       
CODE_298786:        69 01         ADC #$01                  
CODE_298788:        48            PHA                       
CODE_298789:        B5 56         LDA $56,x                 
CODE_29878B:        69 00         ADC #$00                  
CODE_29878D:        85 00         STA $00                   
CODE_29878F:        68            PLA                       
CODE_298790:        D5 68         CMP $68,x                 
CODE_298792:        A5 00         LDA $00                   
CODE_298794:        FD 21 10      SBC $1021,x               
CODE_298797:        B0 4D         BCS CODE_2987E6
CODE_298799:        A9 10         LDA #$10                  
CODE_29879B:        95 9E         STA $9E,x                 
CODE_29879D:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_2987A1:        60            RTS                       

CODE_2987A2:        BD 91 06      LDA $0691,x               
CODE_2987A5:        10 22         BPL CODE_2987C9           
CODE_2987A7:        BD 79 06      LDA $0679,x               
CODE_2987AA:        30 1D         BMI CODE_2987C9           
CODE_2987AC:        A9 00         LDA #$00                  
CODE_2987AE:        9D D2 1F      STA $1FD2,x               
CODE_2987B1:        BD 18 05      LDA $0518,x               
CODE_2987B4:        AC 27 07      LDY $0727                 
CODE_2987B7:        D0 05         BNE CODE_2987BE           
CODE_2987B9:        C9 28         CMP #$28                  
CODE_2987BB:        F0 09         BEQ CODE_2987C6           
CODE_2987BD:        98            TYA                       
CODE_2987BE:        C9 10         CMP #$10                  
CODE_2987C0:        F0 04         BEQ CODE_2987C6           
CODE_2987C2:        C9 40         CMP #$40                  
CODE_2987C4:        D0 03         BNE CODE_2987C9           
CODE_2987C6:        20 3B 88      JSR CODE_29883B           
CODE_2987C9:        BD 18 05      LDA $0518,x               
CODE_2987CC:        D0 6C         BNE CODE_29883A           
CODE_2987CE:        BD 79 06      LDA $0679,x               
CODE_2987D1:        10 13         BPL CODE_2987E6           
CODE_2987D3:        BD 91 06      LDA $0691,x               
CODE_2987D6:        4A            LSR A                     
CODE_2987D7:        B0 0D         BCS CODE_2987E6                   
CODE_2987D9:        22 37 A8 27   JSL CODE_27A837           
CODE_2987DD:        A5 0F         LDA $0F                   
CODE_2987DF:        18            CLC                       
CODE_2987E0:        69 1B         ADC #$1B                  
CODE_2987E2:        C9 37         CMP #$37                  
CODE_2987E4:        90 0F         BCC CODE_2987F5           
CODE_2987E6:        F6 4D         INC $4D,x                 
CODE_2987E8:        A9 30         LDA #$30                  
CODE_2987EA:        BC 71 06      LDY $0671,x               
CODE_2987ED:        C0 A4         CPY #$A4                  
CODE_2987EF:        90 01         BCC CODE_2987F2           
CODE_2987F1:        0A            ASL A                     
CODE_2987F2:        9D 18 05      STA $0518,x               
CODE_2987F5:        60            RTS                       

CODE_2987F6:        BD 91 06      LDA $0691,x               
CODE_2987F9:        10 22         BPL CODE_29881D           
CODE_2987FB:        BD 79 06      LDA $0679,x               
CODE_2987FE:        10 1D         BPL CODE_29881D           
CODE_298800:        A9 00         LDA #$00                  
CODE_298802:        9D D2 1F      STA $1FD2,x               
CODE_298805:        BD 18 05      LDA $0518,x               
CODE_298808:        AC 27 07      LDY $0727                 
CODE_29880B:        D0 05         BNE CODE_298812           
CODE_29880D:        C9 28         CMP #$28                  
CODE_29880F:        F0 09         BEQ CODE_29881A           
CODE_298811:        98            TYA                       
CODE_298812:        C9 10         CMP #$10                  
CODE_298814:        F0 04         BEQ CODE_29881A           
CODE_298816:        C9 40         CMP #$40                  
CODE_298818:        D0 03         BNE CODE_29881D           
CODE_29881A:        20 3B 88      JSR CODE_29883B           
CODE_29881D:        BD 18 05      LDA $0518,x               
CODE_298820:        D0 18         BNE CODE_29883A           
CODE_298822:        BD 79 06      LDA $0679,x               
CODE_298825:        30 BF         BMI CODE_2987E6           
CODE_298827:        BD 91 06      LDA $0691,x               
CODE_29882A:        4A            LSR A                     
CODE_29882B:        B0 B9         BCS CODE_2987E6                   
CODE_29882D:        22 37 A8 27   JSL CODE_27A837           
CODE_298831:        A5 0F         LDA $0F                   
CODE_298833:        18            CLC                       
CODE_298834:        69 1B         ADC #$1B                  
CODE_298836:        C9 37         CMP #$37                  
CODE_298838:        B0 AC         BCS CODE_2987E6                   
CODE_29883A:        60            RTS                       

CODE_29883B:        A0 00         LDY #$00                  
CODE_29883D:        BD 79 06      LDA $0679,x               
CODE_298840:        10 02         BPL CODE_298844           
CODE_298842:        A0 10         LDY #$10                  
CODE_298844:        84 00         STY $00                   
CODE_298846:        A0 03         LDY #$03                  
CODE_298848:        22 74 8A 27   JSL CODE_278A74           
CODE_29884C:        D0 EC         BNE CODE_29883A           
CODE_29884E:        B5 5F         LDA $5F,x                 
CODE_298850:        18            CLC                       
CODE_298851:        69 03         ADC #$03                  
CODE_298853:        99 C9 05      STA $05C9,y               
CODE_298856:        B5 44         LDA $44,x                 
CODE_298858:        69 00         ADC #$00                  
CODE_29885A:        99 E2 00      STA $00E2,y               
CODE_29885D:        B5 71         LDA $71,x                 
CODE_29885F:        18            CLC                       
CODE_298860:        65 00         ADC $00                   
CODE_298862:        99 BF 05      STA $05BF,y               
CODE_298865:        B5 56         LDA $56,x                 
CODE_298867:        69 00         ADC #$00                  
CODE_298869:        99 D7 1F      STA $1FD7,y               
CODE_29886C:        A9 05         LDA #$05                  
CODE_29886E:        99 C8 1F      STA $1FC8,y               
CODE_298871:        84 00         STY $00                   
CODE_298873:        22 48 A8 27   JSL CODE_27A848           
CODE_298877:        84 05         STY $05                   
CODE_298879:        22 37 A8 27   JSL CODE_27A837           
CODE_29887D:        84 06         STY $06                   
CODE_29887F:        A2 00         LDX #$00                  
CODE_298881:        A5 0F         LDA $0F                   
CODE_298883:        18            CLC                       
CODE_298884:        69 50         ADC #$50                  
CODE_298886:        C9 A0         CMP #$A0                  
CODE_298888:        90 01         BCC CODE_29888B           
CODE_29888A:        E8            INX                       
CODE_29888B:        A4 00         LDY $00                   
CODE_29888D:        BD C7 C5      LDA.w DATA_21C5C7,x               
CODE_298890:        46 05         LSR $05                   
CODE_298892:        90 04         BCC CODE_298898           
CODE_298894:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_298898:        99 D3 05      STA $05D3,y               
CODE_29889B:        BD C9 C5      LDA.w DATA_21C5C9,x               
CODE_29889E:        46 06         LSR $06                   
CODE_2988A0:        90 04         BCC CODE_2988A6           
CODE_2988A2:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_2988A6:        99 DD 05      STA $05DD,y               
CODE_2988A9:        A9 00         LDA #$00                  
CODE_2988AB:        99 AB 05      STA $05AB,y               
CODE_2988AE:        99 A1 05      STA $05A1,y               
CODE_2988B1:        A6 9B         LDX $9B                   
CODE_2988B3:        60            RTS                       

CODE_2988B4:        B5 71         LDA $71,x                 
CODE_2988B6:        18            CLC                       
CODE_2988B7:        69 03         ADC #$03                  
CODE_2988B9:        95 71         STA $71,x                 
CODE_2988BB:        6B            RTL                       

CODE_2988BC:        22 C3 9B 27   JSL CODE_279BC3           
CODE_2988C0:        BD 81 06      LDA $0681,x               
CODE_2988C3:        D0 F6         BNE CODE_2988BB           
CODE_2988C5:        22 C2 9D 27   JSL CODE_279DC2           
CODE_2988C9:        B5 83         LDA $83,x                 
CODE_2988CB:        85 00         STA $00                   
CODE_2988CD:        B5 44         LDA $44,x                 
CODE_2988CF:        EB            XBA                       
CODE_2988D0:        B5 5F         LDA $5F,x                 
CODE_2988D2:        C2 30         REP #$30                  
CODE_2988D4:        38            SEC                       
CODE_2988D5:        ED 10 02      SBC $0210                 
CODE_2988D8:        85 D8         STA $D8                   
CODE_2988DA:        85 DA         STA $DA                   
CODE_2988DC:        E2 20         SEP #$20                  
CODE_2988DE:        B4 C6         LDY $C6,x                 
CODE_2988E0:        B5 7A         LDA $7A,x                 
CODE_2988E2:        99 00 08      STA $0800,y               
CODE_2988E5:        99 08 08      STA $0808,y               
CODE_2988E8:        99 04 08      STA $0804,y               
CODE_2988EB:        99 0C 08      STA $080C,y               
CODE_2988EE:        A9 D0         LDA #$D0                  
CODE_2988F0:        99 02 08      STA $0802,y               
CODE_2988F3:        1A            INC A                     
CODE_2988F4:        99 0A 08      STA $080A,y               
CODE_2988F7:        A9 D2         LDA #$D2                  
CODE_2988F9:        99 06 08      STA $0806,y               
CODE_2988FC:        1A            INC A                     
CODE_2988FD:        99 0E 08      STA $080E,y               
CODE_298900:        A9 2C         LDA #$2C                  
CODE_298902:        85 02         STA $02                   
CODE_298904:        A2 00 00      LDX #$0000                
CODE_298907:        AD 65 05      LDA $0565                 
CODE_29890A:        29 02         AND #$02                  
CODE_29890C:        F0 05         BEQ CODE_298913           
CODE_29890E:        A9 AC         LDA #$AC                  
CODE_298910:        85 02         STA $02                   
CODE_298912:        E8            INX                       
CODE_298913:        AD 65 05      LDA $0565                 
CODE_298916:        4A            LSR A                     
CODE_298917:        4A            LSR A                     
CODE_298918:        4A            LSR A                     
CODE_298919:        A5 02         LDA $02                   
CODE_29891B:        99 07 08      STA $0807,y               
CODE_29891E:        99 03 08      STA $0803,y               
CODE_298921:        99 0B 08      STA $080B,y               
CODE_298924:        99 0F 08      STA $080F,y               
CODE_298927:        90 20         BCC CODE_298949           
CODE_298929:        09 40         ORA #$40                  
CODE_29892B:        99 03 08      STA $0803,y               
CODE_29892E:        99 0B 08      STA $080B,y               
CODE_298931:        B9 00 08      LDA $0800,y               
CODE_298934:        18            CLC                       
CODE_298935:        69 02         ADC #$02                  
CODE_298937:        99 00 08      STA $0800,y               
CODE_29893A:        99 08 08      STA $0808,y               
CODE_29893D:        C2 20         REP #$20                  
CODE_29893F:        A5 D8         LDA $D8                   
CODE_298941:        18            CLC                       
CODE_298942:        69 02 00      ADC #$0002                
CODE_298945:        85 D8         STA $D8                   
CODE_298947:        E2 20         SEP #$20                  
CODE_298949:        B9 03 08      LDA $0803,y               
CODE_29894C:        29 80         AND #$80                  
CODE_29894E:        F0 1C         BEQ CODE_29896C           
CODE_298950:        B9 02 08      LDA $0802,y               
CODE_298953:        48            PHA                       
CODE_298954:        B9 0A 08      LDA $080A,y               
CODE_298957:        99 02 08      STA $0802,y               
CODE_29895A:        68            PLA                       
CODE_29895B:        99 0A 08      STA $080A,y               
CODE_29895E:        B9 06 08      LDA $0806,y               
CODE_298961:        48            PHA                       
CODE_298962:        B9 0E 08      LDA $080E,y               
CODE_298965:        99 06 08      STA $0806,y               
CODE_298968:        68            PLA                       
CODE_298969:        99 0E 08      STA $080E,y               
CODE_29896C:        A5 00         LDA $00                   
CODE_29896E:        18            CLC                       
CODE_29896F:        7D CB C5      ADC.w DATA_21C5CB,x               
CODE_298972:        99 01 08      STA $0801,y               
CODE_298975:        18            CLC                       
CODE_298976:        69 08         ADC #$08                  
CODE_298978:        99 09 08      STA $0809,y               
CODE_29897B:        A5 00         LDA $00                   
CODE_29897D:        18            CLC                       
CODE_29897E:        7D CD C5      ADC.w DATA_21C5CD,x               
CODE_298981:        99 05 08      STA $0805,y               
CODE_298984:        18            CLC                       
CODE_298985:        69 08         ADC #$08                  
CODE_298987:        99 0D 08      STA $080D,y               
CODE_29898A:        C2 20         REP #$20                  
CODE_29898C:        98            TYA                       
CODE_29898D:        4A            LSR A                     
CODE_29898E:        4A            LSR A                     
CODE_29898F:        A8            TAY                       
CODE_298990:        E2 20         SEP #$20                  
CODE_298992:        A5 D9         LDA $D9                   
CODE_298994:        29 01         AND #$01                  
CODE_298996:        99 20 0A      STA $0A20,y               
CODE_298999:        99 22 0A      STA $0A22,y               
CODE_29899C:        A5 DB         LDA $DB                   
CODE_29899E:        29 01         AND #$01                  
CODE_2989A0:        99 21 0A      STA $0A21,y               
CODE_2989A3:        99 23 0A      STA $0A23,y               
CODE_2989A6:        E2 10         SEP #$10                  
CODE_2989A8:        A6 9B         LDX $9B                   
CODE_2989AA:        6B            RTL                       

CODE_2989AB:        86 03         STX $03                   
CODE_2989AD:        84 02         STY $02                   
CODE_2989AF:        85 01         STA $01                   
CODE_2989B1:        A6 9B         LDX $9B                   
CODE_2989B3:        BD 81 06      LDA $0681,x               
CODE_2989B6:        D0 28         BNE CODE_2989E0           
CODE_2989B8:        A5 01         LDA $01                   
CODE_2989BA:        38            SEC                       
CODE_2989BB:        F5 7A         SBC $7A,x                 
CODE_2989BD:        85 DA         STA $DA                   
CODE_2989BF:        64 DB         STZ $DB                   
CODE_2989C1:        B5 5F         LDA $5F,x                 
CODE_2989C3:        85 DC         STA $DC                   
CODE_2989C5:        B5 44         LDA $44,x                 
CODE_2989C7:        85 DD         STA $DD                   
CODE_2989C9:        C2 20         REP #$20                  
CODE_2989CB:        A5 DC         LDA $DC                   
CODE_2989CD:        18            CLC                       
CODE_2989CE:        65 DA         ADC $DA                   
CODE_2989D0:        38            SEC                       
CODE_2989D1:        ED 10 02      SBC $0210                 
CODE_2989D4:        85 DA         STA $DA                   
CODE_2989D6:        C9 00 01      CMP #$0100                
CODE_2989D9:        90 0A         BCC CODE_2989E5           
CODE_2989DB:        C9 E0 FF      CMP #$FFE0                
CODE_2989DE:        B0 05         BCS CODE_2989E5                   
CODE_2989E0:        E2 20         SEP #$20                  
CODE_2989E2:        38            SEC                       
CODE_2989E3:        80 03         BRA CODE_2989E8           

CODE_2989E5:        E2 20         SEP #$20                  
CODE_2989E7:        18            CLC                       
CODE_2989E8:        A4 02         LDY $02                   
CODE_2989EA:        A5 01         LDA $01                   
CODE_2989EC:        A6 03         LDX $03                   
CODE_2989EE:        6B            RTL                       

CODE_2989EF:        D6 71         DEC $71,x                 
CODE_2989F1:        B4 71         LDY $71,x                 
CODE_2989F3:        C8            INY                       
CODE_2989F4:        D0 02         BNE CODE_2989F8           
CODE_2989F6:        D6 56         DEC $56,x                 
CODE_2989F8:        6B            RTL                       

CODE_2989F9:        F6 4D         INC $4D,x                 
CODE_2989FB:        22 37 A8 27   JSL CODE_27A837           
CODE_2989FF:        B9 CF C5      LDA.w DATA_21C5CF,y               
CODE_298A02:        9D 79 06      STA $0679,x               
CODE_298A05:        6B            RTL                       

CODE_298A06:        BD 61 06      LDA $0661,x               
CODE_298A09:        C9 02         CMP #$02                  
CODE_298A0B:        F0 04         BEQ CODE_298A11           
CODE_298A0D:        20 F2 8B      JSR CODE_298BF2           
CODE_298A10:        6B            RTL                       

CODE_298A11:        BD 79 06      LDA $0679,x               
CODE_298A14:        29 40         AND #$40                  
CODE_298A16:        09 10         ORA #$10                  
CODE_298A18:        9D 79 06      STA $0679,x               
CODE_298A1B:        22 C3 9B 27   JSL CODE_279BC3           
CODE_298A1F:        B5 44         LDA $44,x                 
CODE_298A21:        EB            XBA                       
CODE_298A22:        B5 5F         LDA $5F,x                 
CODE_298A24:        C2 20         REP #$20                  
CODE_298A26:        38            SEC                       
CODE_298A27:        ED 10 02      SBC $0210                 
CODE_298A2A:        10 04         BPL CODE_298A30           
CODE_298A2C:        49 FF FF      EOR #$FFFF                
CODE_298A2F:        1A            INC A                     
CODE_298A30:        C9 40 01      CMP #$0140                
CODE_298A33:        B0 68         BCS CODE_298A9D                   
CODE_298A35:        B5 C6         LDA $C6,x                 
CODE_298A37:        18            CLC                       
CODE_298A38:        69 10 00      ADC #$0010                
CODE_298A3B:        95 C6         STA $C6,x                 
CODE_298A3D:        E2 20         SEP #$20                  
CODE_298A3F:        22 BB 9E 27   JSL CODE_279EBB           
CODE_298A43:        BD 69 06      LDA $0669,x               
CODE_298A46:        C9 01         CMP #$01                  
CODE_298A48:        D0 53         BNE CODE_298A9D           
CODE_298A4A:        22 5F A8 27   JSL CODE_27A85F           
CODE_298A4E:        D0 4D         BNE CODE_298A9D           
CODE_298A50:        C2 10         REP #$10                  
CODE_298A52:        B4 C6         LDY $C6,x                 
CODE_298A54:        B5 83         LDA $83,x                 
CODE_298A56:        38            SEC                       
CODE_298A57:        E9 08         SBC #$08                  
CODE_298A59:        99 F1 07      STA $07F1,y               
CODE_298A5C:        18            CLC                       
CODE_298A5D:        69 08         ADC #$08                  
CODE_298A5F:        99 F5 07      STA $07F5,y               
CODE_298A62:        BD 79 06      LDA $0679,x               
CODE_298A65:        0A            ASL A                     
CODE_298A66:        0A            ASL A                     
CODE_298A67:        A9 00         LDA #$00                  
CODE_298A69:        B0 02         BCS CODE_298A6D                   
CODE_298A6B:        A9 08         LDA #$08                  
CODE_298A6D:        18            CLC                       
CODE_298A6E:        75 7A         ADC $7A,x                 
CODE_298A70:        99 F0 07      STA $07F0,y               
CODE_298A73:        99 F4 07      STA $07F4,y               
CODE_298A76:        A9 F2         LDA #$F2                  
CODE_298A78:        99 F2 07      STA $07F2,y               
CODE_298A7B:        1A            INC A                     
CODE_298A7C:        99 F6 07      STA $07F6,y               
CODE_298A7F:        A9 20         LDA #$20                  
CODE_298A81:        99 F3 07      STA $07F3,y               
CODE_298A84:        99 F7 07      STA $07F7,y               
CODE_298A87:        5A            PHY                       
CODE_298A88:        C2 20         REP #$20                  
CODE_298A8A:        98            TYA                       
CODE_298A8B:        38            SEC                       
CODE_298A8C:        E9 10 00      SBC #$0010                
CODE_298A8F:        4A            LSR A                     
CODE_298A90:        4A            LSR A                     
CODE_298A91:        A8            TAY                       
CODE_298A92:        E2 20         SEP #$20                  
CODE_298A94:        A9 00         LDA #$00                  
CODE_298A96:        99 20 0A      STA $0A20,y               
CODE_298A99:        99 21 0A      STA $0A21,y               
CODE_298A9C:        7A            PLY                       
CODE_298A9D:        E2 30         SEP #$30                  
CODE_298A9F:        A5 9C         LDA $9C                   
CODE_298AA1:        D0 06         BNE CODE_298AA9           
CODE_298AA3:        20 58 8B      JSR CODE_298B58           
CODE_298AA6:        20 AA 8A      JSR CODE_298AAA           
CODE_298AA9:        6B            RTL                       

CODE_298AAA:        B5 68         LDA $68,x                 
CODE_298AAC:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_298AB0:        dw CODE_298ABE
                    dw CODE_298AD7
                    dw CODE_298AE7
                    dw CODE_298AFC
                    dw CODE_298B04
                    dw CODE_298B22
                    dw CODE_298B47

CODE_298ABE:        BD 18 05      LDA $0518,x               
CODE_298AC1:        D0 23         BNE CODE_298AE6           
CODE_298AC3:        22 FB 89 29   JSL CODE_2989FB           
CODE_298AC7:        B5 71         LDA $71,x                 
CODE_298AC9:        18            CLC                       
CODE_298ACA:        69 08         ADC #$08                  
CODE_298ACC:        29 F0         AND #$F0                  
CODE_298ACE:        38            SEC                       
CODE_298ACF:        E9 06         SBC #$06                  
CODE_298AD1:        95 71         STA $71,x                 
CODE_298AD3:        B0 02         BCS CODE_298AD7                   
CODE_298AD5:        D6 56         DEC $56,x                 
CODE_298AD7:        BD 18 05      LDA $0518,x               
CODE_298ADA:        D0 0A         BNE CODE_298AE6           
CODE_298ADC:        F6 68         INC $68,x                 
CODE_298ADE:        B4 68         LDY $68,x                 
CODE_298AE0:        B9 D1 C5      LDA.w DATA_21C5D1,y               
CODE_298AE3:        9D 18 05      STA $0518,x               
CODE_298AE6:        60            RTS                       

CODE_298AE7:        A9 00         LDA #$00                  
CODE_298AE9:        20 FE 8A      JSR CODE_298AFE           
CODE_298AEC:        BD 18 05      LDA $0518,x               
CODE_298AEF:        4A            LSR A                     
CODE_298AF0:        B0 09         BCS CODE_298AFB                   
CODE_298AF2:        D6 71         DEC $71,x                 
CODE_298AF4:        B4 71         LDY $71,x                 
CODE_298AF6:        C8            INY                       
CODE_298AF7:        D0 02         BNE CODE_298AFB           
CODE_298AF9:        D6 56         DEC $56,x                 
CODE_298AFB:        60            RTS                       

CODE_298AFC:        A9 01         LDA #$01                  
CODE_298AFE:        9D 69 06      STA $0669,x               
CODE_298B01:        4C D7 8A      JMP CODE_298AD7           

CODE_298B04:        A9 02         LDA #$02                  
CODE_298B06:        20 FE 8A      JSR CODE_298AFE           
CODE_298B09:        BD 18 05      LDA $0518,x               
CODE_298B0C:        C9 1F         CMP #$1F                  
CODE_298B0E:        D0 11         BNE CODE_298B21           
CODE_298B10:        BD 81 06      LDA $0681,x               
CODE_298B13:        D0 0C         BNE CODE_298B21           
CODE_298B15:        BD 51 06      LDA $0651,x               
CODE_298B18:        29 C0         AND #$C0                  
CODE_298B1A:        C9 C0         CMP #$C0                  
CODE_298B1C:        F0 03         BEQ CODE_298B21           
CODE_298B1E:        20 A4 8B      JSR CODE_298BA4           
CODE_298B21:        60            RTS                       

CODE_298B22:        BD 18 05      LDA $0518,x               
CODE_298B25:        D0 14         BNE CODE_298B3B           
CODE_298B27:        B5 4D         LDA $4D,x                 
CODE_298B29:        D0 06         BNE CODE_298B31           
CODE_298B2B:        A9 00         LDA #$00                  
CODE_298B2D:        9D 61 06      STA $0661,x               
CODE_298B30:        60            RTS                       

CODE_298B31:        A9 00         LDA #$00                  
CODE_298B33:        95 68         STA $68,x                 
CODE_298B35:        A9 40         LDA #$40                  
CODE_298B37:        9D 18 05      STA $0518,x               
CODE_298B3A:        60            RTS                       

CODE_298B3B:        F6 71         INC $71,x                 
CODE_298B3D:        D0 02         BNE CODE_298B41           
CODE_298B3F:        F6 56         INC $56,x                 
CODE_298B41:        A9 00         LDA #$00                  
CODE_298B43:        9D 69 06      STA $0669,x               
CODE_298B46:        60            RTS                       

CODE_298B47:        BD 18 05      LDA $0518,x               
CODE_298B4A:        D0 06         BNE CODE_298B52           
CODE_298B4C:        A9 06         LDA #$06                  
CODE_298B4E:        9D 61 06      STA $0661,x               
CODE_298B51:        60            RTS                       

CODE_298B52:        A9 03         LDA #$03                  
CODE_298B54:        9D 69 06      STA $0669,x               
CODE_298B57:        60            RTS                       

CODE_298B58:        B5 68         LDA $68,x                 
CODE_298B5A:        C9 06         CMP #$06                  
CODE_298B5C:        F0 45         BEQ CODE_298BA3           
CODE_298B5E:        EE F4 05      INC $05F4                 
CODE_298B61:        22 6B 9B 27   JSL CODE_279B6B           
CODE_298B65:        CE F4 05      DEC $05F4                 
CODE_298B68:        BD 97 07      LDA $0797,x               
CODE_298B6B:        F0 36         BEQ CODE_298BA3           
CODE_298B6D:        A5 9D         LDA $9D                   
CODE_298B6F:        30 32         BMI CODE_298BA3           
CODE_298B71:        C9 10         CMP #$10                  
CODE_298B73:        B0 12         BCS CODE_298B87                   
CODE_298B75:        A9 00         LDA #$00                  
CODE_298B77:        85 A6         STA $A6                   
CODE_298B79:        B5 71         LDA $71,x                 
CODE_298B7B:        38            SEC                       
CODE_298B7C:        E9 1F         SBC #$1F                  
CODE_298B7E:        85 70         STA $70                   
CODE_298B80:        B5 56         LDA $56,x                 
CODE_298B82:        E9 00         SBC #$00                  
CODE_298B84:        85 55         STA $55                   
CODE_298B86:        60            RTS                       

CODE_298B87:        A9 06         LDA #$06                  
CODE_298B89:        95 68         STA $68,x                 
CODE_298B8B:        A9 0C         LDA #$0C                  
CODE_298B8D:        9D 18 05      STA $0518,x               
CODE_298B90:        A9 D0         LDA #$D0                  
CODE_298B92:        85 9D         STA $9D                   
CODE_298B94:        A9 03         LDA #$03                  
CODE_298B96:        8D 00 12      STA $1200                 
CODE_298B99:        AD F4 05      LDA $05F4                 
CODE_298B9C:        EE F4 05      INC $05F4                 
CODE_298B9F:        22 8A 8A 27   JSL CODE_278A8A           
CODE_298BA3:        60            RTS                       

CODE_298BA4:        22 72 8A 27   JSL CODE_278A72           
CODE_298BA8:        B5 71         LDA $71,x                 
CODE_298BAA:        38            SEC                       
CODE_298BAB:        E9 08         SBC #$08                  
CODE_298BAD:        99 BF 05      STA $05BF,y               
CODE_298BB0:        B5 56         LDA $56,x                 
CODE_298BB2:        E9 00         SBC #$00                  
CODE_298BB4:        99 D7 1F      STA $1FD7,y               
CODE_298BB7:        B5 5F         LDA $5F,x                 
CODE_298BB9:        99 C9 05      STA $05C9,y               
CODE_298BBC:        B5 44         LDA $44,x                 
CODE_298BBE:        99 E2 00      STA $00E2,y               
CODE_298BC1:        AD 0E 1A      LDA $1A0E                 
CODE_298BC4:        C9 0E         CMP #$0E                  
CODE_298BC6:        A9 10         LDA #$10                  
CODE_298BC8:        90 02         BCC CODE_298BCC           
CODE_298BCA:        A9 18         LDA #$18                  
CODE_298BCC:        85 02         STA $02                   
CODE_298BCE:        BD 79 06      LDA $0679,x               
CODE_298BD1:        0A            ASL A                     
CODE_298BD2:        0A            ASL A                     
CODE_298BD3:        84 00         STY $00                   
CODE_298BD5:        A5 02         LDA $02                   
CODE_298BD7:        B0 02         BCS CODE_298BDB                   
CODE_298BD9:        A9 F0         LDA #$F0                  
CODE_298BDB:        99 DD 05      STA $05DD,y               
CODE_298BDE:        BD 83 07      LDA $0783,x               
CODE_298BE1:        29 07         AND #$07                  
CODE_298BE3:        A8            TAY                       
CODE_298BE4:        B9 D7 C5      LDA.w DATA_21C5D7,y               
CODE_298BE7:        A4 00         LDY $00                   
CODE_298BE9:        99 D3 05      STA $05D3,y               
CODE_298BEC:        A9 0A         LDA #$0A                  
CODE_298BEE:        99 C8 1F      STA $1FC8,y               
CODE_298BF1:        60            RTS                       

CODE_298BF2:        A0 02         LDY #$02                  
CODE_298BF4:        AD 65 05      LDA $0565                 
CODE_298BF7:        29 10         AND #$10                  
CODE_298BF9:        F0 01         BEQ CODE_298BFC           
CODE_298BFB:        C8            INY                       
CODE_298BFC:        98            TYA                       
CODE_298BFD:        9D 69 06      STA $0669,x               
CODE_298C00:        A9 10         LDA #$10                  
CODE_298C02:        9D 79 06      STA $0679,x               
CODE_298C05:        22 E1 9E 27   JSL CODE_279EE1           
CODE_298C09:        60            RTS                       

CODE_298C0A:        B5 71         LDA $71,x                 
CODE_298C0C:        38            SEC                       
CODE_298C0D:        E9 01         SBC #$01                  
CODE_298C0F:        95 71         STA $71,x                 
CODE_298C11:        B5 56         LDA $56,x                 
CODE_298C13:        E9 00         SBC #$00                  
CODE_298C15:        95 56         STA $56,x                 
CODE_298C17:        6B            RTL                       

CODE_298C18:        22 C3 9B 27   JSL CODE_279BC3           
CODE_298C1C:        22 BB 9E 27   JSL CODE_279EBB           
CODE_298C20:        BD 51 06      LDA $0651,x               
CODE_298C23:        48            PHA                       
CODE_298C24:        0A            ASL A                     
CODE_298C25:        0A            ASL A                     
CODE_298C26:        9D 51 06      STA $0651,x               
CODE_298C29:        B5 5F         LDA $5F,x                 
CODE_298C2B:        48            PHA                       
CODE_298C2C:        18            CLC                       
CODE_298C2D:        69 10         ADC #$10                  
CODE_298C2F:        95 5F         STA $5F,x                 
CODE_298C31:        B5 44         LDA $44,x                 
CODE_298C33:        48            PHA                       
CODE_298C34:        69 00         ADC #$00                  
CODE_298C36:        95 44         STA $44,x                 
CODE_298C38:        C2 20         REP #$20                  
CODE_298C3A:        B5 C6         LDA $C6,x                 
CODE_298C3C:        18            CLC                       
CODE_298C3D:        69 10 00      ADC #$0010                
CODE_298C40:        95 C6         STA $C6,x                 
CODE_298C42:        E2 20         SEP #$20                  
CODE_298C44:        22 BB 9E 27   JSL CODE_279EBB           
CODE_298C48:        68            PLA                       
CODE_298C49:        95 44         STA $44,x                 
CODE_298C4B:        68            PLA                       
CODE_298C4C:        95 5F         STA $5F,x                 
CODE_298C4E:        68            PLA                       
CODE_298C4F:        9D 51 06      STA $0651,x               
CODE_298C52:        22 C2 9D 27   JSL CODE_279DC2           
CODE_298C56:        A5 9C         LDA $9C                   
CODE_298C58:        D0 BD         BNE CODE_298C17           
CODE_298C5A:        B5 8C         LDA $8C,x                 
CODE_298C5C:        F0 26         BEQ CODE_298C84           
CODE_298C5E:        10 04         BPL CODE_298C64           
CODE_298C60:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_298C64:        0A            ASL A                     
CODE_298C65:        0A            ASL A                     
CODE_298C66:        0A            ASL A                     
CODE_298C67:        0A            ASL A                     
CODE_298C68:        69 60         ADC #$60                  
CODE_298C6A:        7D 21 10      ADC $1021,x               
CODE_298C6D:        9D 21 10      STA $1021,x               
CODE_298C70:        90 12         BCC CODE_298C84           
CODE_298C72:        B5 8C         LDA $8C,x                 
CODE_298C74:        0A            ASL A                     
CODE_298C75:        A9 01         LDA #$01                  
CODE_298C77:        90 02         BCC CODE_298C7B           
CODE_298C79:        A9 FF         LDA #$FF                  
CODE_298C7B:        18            CLC                       
CODE_298C7C:        7D 69 06      ADC $0669,x               
CODE_298C7F:        29 03         AND #$03                  
CODE_298C81:        9D 69 06      STA $0669,x               
CODE_298C84:        B5 68         LDA $68,x                 
CODE_298C86:        F0 04         BEQ CODE_298C8C           
CODE_298C88:        20 18 8D      JSR CODE_298D18           
CODE_298C8B:        6B            RTL                       

CODE_298C8C:        A5 15         LDA $15                   
CODE_298C8E:        29 07         AND #$07                  
CODE_298C90:        D0 0C         BNE CODE_298C9E           
CODE_298C92:        B5 8C         LDA $8C,x                 
CODE_298C94:        F0 08         BEQ CODE_298C9E           
CODE_298C96:        10 04         BPL CODE_298C9C           
CODE_298C98:        F6 8C         INC $8C,x                 
CODE_298C9A:        F6 8C         INC $8C,x                 
CODE_298C9C:        D6 8C         DEC $8C,x                 
CODE_298C9E:        20 1D 8D      JSR CODE_298D1D           
CODE_298CA1:        22 93 8B 27   JSL CODE_278B93           
CODE_298CA5:        AD 77 1F      LDA $1F77                 
CODE_298CA8:        C9 9D         CMP #$9D                  
CODE_298CAA:        D0 06         BNE CODE_298CB2           
CODE_298CAC:        A9 00         LDA #$00                  
CODE_298CAE:        95 8C         STA $8C,x                 
CODE_298CB0:        F6 A7         INC $A7,x                 
CODE_298CB2:        22 58 8D 29   JSL CODE_298D58           
CODE_298CB6:        22 EF A7 27   JSL CODE_27A7EF           
CODE_298CBA:        B5 8C         LDA $8C,x                 
CODE_298CBC:        F0 05         BEQ CODE_298CC3           
CODE_298CBE:        BD 18 05      LDA $0518,x               
CODE_298CC1:        D0 54         BNE CODE_298D17           
CODE_298CC3:        22 C2 9D 27   JSL CODE_279DC2           
CODE_298CC7:        22 12 A3 27   JSL CODE_27A312           
CODE_298CCB:        90 4A         BCC CODE_298D17           
CODE_298CCD:        A5 82         LDA $82                   
CODE_298CCF:        69 17         ADC #$17                  
CODE_298CD1:        D5 83         CMP $83,x                 
CODE_298CD3:        B0 22         BCS CODE_298CF7                   
CODE_298CD5:        A5 9D         LDA $9D                   
CODE_298CD7:        30 1D         BMI CODE_298CF6           
CODE_298CD9:        B5 A7         LDA $A7,x                 
CODE_298CDB:        D0 04         BNE CODE_298CE1           
CODE_298CDD:        A9 05         LDA #$05                  
CODE_298CDF:        95 8C         STA $8C,x                 
CODE_298CE1:        A9 10         LDA #$10                  
CODE_298CE3:        9D 18 05      STA $0518,x               
CODE_298CE6:        8D 1F 10      STA $101F                 
CODE_298CE9:        A9 00         LDA #$00                  
CODE_298CEB:        85 9D         STA $9D                   
CODE_298CED:        85 A6         STA $A6                   
CODE_298CEF:        B5 71         LDA $71,x                 
CODE_298CF1:        38            SEC                       
CODE_298CF2:        E9 1E         SBC #$1E                  
CODE_298CF4:        85 70         STA $70                   
CODE_298CF6:        6B            RTL                       

CODE_298CF7:        A9 FC         LDA #$FC                  
CODE_298CF9:        A4 BB         LDY $BB                   
CODE_298CFB:        D0 02         BNE CODE_298CFF           
CODE_298CFD:        A9 0C         LDA #$0C                  
CODE_298CFF:        18            CLC                       
CODE_298D00:        65 82         ADC $82                   
CODE_298D02:        D5 83         CMP $83,x                 
CODE_298D04:        90 0D         BCC CODE_298D13           
CODE_298D06:        A5 9D         LDA $9D                   
CODE_298D08:        10 08         BPL CODE_298D12           
CODE_298D0A:        A9 FB         LDA #$FB                  
CODE_298D0C:        95 8C         STA $8C,x                 
CODE_298D0E:        A9 10         LDA #$10                  
CODE_298D10:        85 9D         STA $9D                   
CODE_298D12:        6B            RTL                       

CODE_298D13:        A9 00         LDA #$00                  
CODE_298D15:        85 8B         STA $8B                   
CODE_298D17:        6B            RTL                       

CODE_298D18:        22 3B 98 27   JSL CODE_27983B           
CODE_298D1C:        60            RTS                       

CODE_298D1D:        A9 E2         LDA #$E2                  
CODE_298D1F:        B4 8C         LDY $8C,x                 
CODE_298D21:        F0 34         BEQ CODE_298D57           
CODE_298D23:        10 02         BPL CODE_298D27           
CODE_298D25:        A9 1E         LDA #$1E                  
CODE_298D27:        A0 00         LDY #$00                  
CODE_298D29:        C9 00         CMP #$00                  
CODE_298D2B:        10 01         BPL CODE_298D2E           
CODE_298D2D:        88            DEY                       
CODE_298D2E:        85 00         STA $00                   
CODE_298D30:        B5 5F         LDA $5F,x                 
CODE_298D32:        48            PHA                       
CODE_298D33:        18            CLC                       
CODE_298D34:        65 00         ADC $00                   
CODE_298D36:        95 5F         STA $5F,x                 
CODE_298D38:        B5 44         LDA $44,x                 
CODE_298D3A:        48            PHA                       
CODE_298D3B:        98            TYA                       
CODE_298D3C:        75 44         ADC $44,x                 
CODE_298D3E:        95 44         STA $44,x                 
CODE_298D40:        22 93 8B 27   JSL CODE_278B93           
CODE_298D44:        68            PLA                       
CODE_298D45:        95 44         STA $44,x                 
CODE_298D47:        68            PLA                       
CODE_298D48:        95 5F         STA $5F,x                 
CODE_298D4A:        AD 77 1F      LDA $1F77                 
CODE_298D4D:        C9 9D         CMP #$9D                  
CODE_298D4F:        F0 06         BEQ CODE_298D57           
CODE_298D51:        C9 81         CMP #$81                  
CODE_298D53:        F0 02         BEQ CODE_298D57           
CODE_298D55:        F6 68         INC $68,x                 
CODE_298D57:        60            RTS                       

CODE_298D58:        BD 81 06      LDA $0681,x               
CODE_298D5B:        D0 71         BNE CODE_298DCE           
CODE_298D5D:        BD 51 06      LDA $0651,x               
CODE_298D60:        29 C0         AND #$C0                  
CODE_298D62:        C9 C0         CMP #$C0                  
CODE_298D64:        F0 68         BEQ CODE_298DCE           
CODE_298D66:        22 39 A4 27   JSL CODE_27A439           
CODE_298D6A:        8A            TXA                       
CODE_298D6B:        F0 61         BEQ CODE_298DCE           
CODE_298D6D:        CA            DEX                       
CODE_298D6E:        BD 61 06      LDA $0661,x               
CODE_298D71:        C9 02         CMP #$02                  
CODE_298D73:        D0 54         BNE CODE_298DC9           
CODE_298D75:        BD 71 06      LDA $0671,x               
CODE_298D78:        C9 AE         CMP #$AE                  
CODE_298D7A:        D0 4D         BNE CODE_298DC9           
CODE_298D7C:        BD 81 06      LDA $0681,x               
CODE_298D7F:        D0 48         BNE CODE_298DC9           
CODE_298D81:        BD 51 06      LDA $0651,x               
CODE_298D84:        29 C0         AND #$C0                  
CODE_298D86:        C9 C0         CMP #$C0                  
CODE_298D88:        F0 3F         BEQ CODE_298DC9           
CODE_298D8A:        22 C2 9D 27   JSL CODE_279DC2           
CODE_298D8E:        22 13 A4 27   JSL CODE_27A413           
CODE_298D92:        22 5F A4 27   JSL CODE_27A45F           
CODE_298D96:        90 31         BCC CODE_298DC9           
CODE_298D98:        A4 9B         LDY $9B                   
CODE_298D9A:        B5 5F         LDA $5F,x                 
CODE_298D9C:        38            SEC                       
CODE_298D9D:        F9 5F 00      SBC $005F,y               
CODE_298DA0:        48            PHA                       
CODE_298DA1:        B5 44         LDA $44,x                 
CODE_298DA3:        F9 44 00      SBC $0044,y               
CODE_298DA6:        85 00         STA $00                   
CODE_298DA8:        26 01         ROL $01                   
CODE_298DAA:        68            PLA                       
CODE_298DAB:        69 80         ADC #$80                  
CODE_298DAD:        A5 00         LDA $00                   
CODE_298DAF:        69 00         ADC #$00                  
CODE_298DB1:        D0 16         BNE CODE_298DC9           
CODE_298DB3:        46 01         LSR $01                   
CODE_298DB5:        A9 FF         LDA #$FF                  
CODE_298DB7:        B0 02         BCS CODE_298DBB                   
CODE_298DB9:        A9 01         LDA #$01                  
CODE_298DBB:        86 0F         STX $0F                   
CODE_298DBD:        A6 9B         LDX $9B                   
CODE_298DBF:        95 8C         STA $8C,x                 
CODE_298DC1:        48            PHA                       
CODE_298DC2:        A6 0F         LDX $0F                   
CODE_298DC4:        68            PLA                       
CODE_298DC5:        49 FF         EOR #$FF                  
CODE_298DC7:        95 8C         STA $8C,x                 
CODE_298DC9:        CA            DEX                       
CODE_298DCA:        10 A2         BPL CODE_298D6E           
CODE_298DCC:        A6 9B         LDX $9B                   
CODE_298DCE:        6B            RTL                       

CODE_298DCF:        BD 61 06      LDA $0661,x               
CODE_298DD2:        C9 02         CMP #$02                  
CODE_298DD4:        F0 09         BEQ CODE_298DDF           
CODE_298DD6:        A9 01         LDA #$01                  
CODE_298DD8:        9D 69 06      STA $0669,x               
CODE_298DDB:        20 21 8F      JSR CODE_298F21           
CODE_298DDE:        6B            RTL                       

CODE_298DDF:        22 C3 9B 27   JSL CODE_279BC3           
CODE_298DE3:        BD 21 10      LDA $1021,x               
CODE_298DE6:        F0 04         BEQ CODE_298DEC           
CODE_298DE8:        22 6F 9B 27   JSL CODE_279B6F           
CODE_298DEC:        A5 9C         LDA $9C                   
CODE_298DEE:        D0 14         BNE CODE_298E04           
CODE_298DF0:        A0 00         LDY #$00                  
CODE_298DF2:        D0 17         BNE CODE_298E0B           
CODE_298DF4:        AD 81 07      LDA $0781                 
CODE_298DF7:        10 01         BPL CODE_298DFA           
CODE_298DF9:        88            DEY                       
CODE_298DFA:        18            CLC                       
CODE_298DFB:        75 5F         ADC $5F,x                 
CODE_298DFD:        95 5F         STA $5F,x                 
CODE_298DFF:        98            TYA                       
CODE_298E00:        75 44         ADC $44,x                 
CODE_298E02:        95 44         STA $44,x                 
CODE_298E04:        20 21 8F      JSR CODE_298F21           
CODE_298E07:        A5 9C         LDA $9C                   
CODE_298E09:        D0 10         BNE CODE_298E1B           
CODE_298E0B:        A0 00         LDY #$00                  
CODE_298E0D:        A5 15         LDA $15                   
CODE_298E0F:        29 0C         AND #$0C                  
CODE_298E11:        F0 01         BEQ CODE_298E14           
CODE_298E13:        C8            INY                       
CODE_298E14:        98            TYA                       
CODE_298E15:        9D 69 06      STA $0669,x               
CODE_298E18:        20 1C 8E      JSR CODE_298E1C           
CODE_298E1B:        6B            RTL                       

CODE_298E1C:        BD 21 10      LDA $1021,x               
CODE_298E1F:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_298E23:        dw CODE_298E31
                    dw CODE_298E46
                    dw CODE_298ED9
                    dw CODE_298E76
                    dw CODE_298E5F
                    dw CODE_298ED9
                    dw CODE_298EAA

CODE_298E31:        A9 00         LDA #$00
CODE_298E33:        9D 69 06      STA $0669,x               
CODE_298E36:        B5 44         LDA $44,x                 
CODE_298E38:        C9 05         CMP #$05                  
CODE_298E3A:        D0 09         BNE CODE_298E45           
CODE_298E3C:        B5 5F         LDA $5F,x                 
CODE_298E3E:        C9 B0         CMP #$B0                  
CODE_298E40:        90 03         BCC CODE_298E45           
CODE_298E42:        20 BE 8E      JSR CODE_298EBE           
CODE_298E45:        60            RTS                       

CODE_298E46:        20 EA 8E      JSR CODE_298EEA           
CODE_298E49:        BD 18 05      LDA $0518,x               
CODE_298E4C:        D0 10         BNE CODE_298E5E           
CODE_298E4E:        FE 21 10      INC $1021,x               
CODE_298E51:        A9 40         LDA #$40                  
CODE_298E53:        95 9E         STA $9E,x                 
CODE_298E55:        A9 14         LDA #$14                  
CODE_298E57:        95 8C         STA $8C,x                 
CODE_298E59:        A9 10         LDA #$10                  
CODE_298E5B:        9D 18 05      STA $0518,x               
CODE_298E5E:        60            RTS                       

CODE_298E5F:        20 EA 8E      JSR CODE_298EEA           
CODE_298E62:        BD 18 05      LDA $0518,x               
CODE_298E65:        D0 0E         BNE CODE_298E75           
CODE_298E67:        FE 21 10      INC $1021,x               
CODE_298E6A:        A9 40         LDA #$40                  
CODE_298E6C:        95 9E         STA $9E,x                 
CODE_298E6E:        A9 EC         LDA #$EC                  
CODE_298E70:        95 8C         STA $8C,x                 
CODE_298E72:        4C 59 8E      JMP CODE_298E59           

CODE_298E75:        60            RTS                       

CODE_298E76:        22 EF A7 27   JSL CODE_27A7EF           
CODE_298E7A:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_298E7E:        D6 9E         DEC $9E,x                 
CODE_298E80:        B5 71         LDA $71,x                 
CODE_298E82:        C9 10         CMP #$10                  
CODE_298E84:        B0 23         BCS CODE_298EA9                   
CODE_298E86:        A9 10         LDA #$10                  
CODE_298E88:        95 71         STA $71,x                 
CODE_298E8A:        FE 21 10      INC $1021,x               
CODE_298E8D:        A9 01         LDA #$01                  
CODE_298E8F:        9D 7B 07      STA $077B,x               
CODE_298E92:        9D 76 07      STA $0776,x               
CODE_298E95:        A9 00         LDA #$00                  
CODE_298E97:        95 8C         STA $8C,x                 
CODE_298E99:        A9 C0         LDA #$C0                  
CODE_298E9B:        95 9E         STA $9E,x                 
CODE_298E9D:        BD 83 07      LDA $0783,x               
CODE_298EA0:        29 03         AND #$03                  
CODE_298EA2:        A8            TAY                       
CODE_298EA3:        B9 EF C5      LDA.w DATA_21C5EF,y               
CODE_298EA6:        9D 18 05      STA $0518,x               
CODE_298EA9:        60            RTS                       

CODE_298EAA:        22 EF A7 27   JSL CODE_27A7EF           
CODE_298EAE:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_298EB2:        D6 9E         DEC $9E,x                 
CODE_298EB4:        B5 71         LDA $71,x                 
CODE_298EB6:        C9 10         CMP #$10                  
CODE_298EB8:        B0 1E         BCS CODE_298ED8                   
CODE_298EBA:        A9 10         LDA #$10                  
CODE_298EBC:        95 71         STA $71,x                 
CODE_298EBE:        A9 01         LDA #$01                  
CODE_298EC0:        9D 21 10      STA $1021,x               
CODE_298EC3:        A9 01         LDA #$01                  
CODE_298EC5:        9D 7B 07      STA $077B,x               
CODE_298EC8:        A9 00         LDA #$00                  
CODE_298ECA:        9D 76 07      STA $0776,x               
CODE_298ECD:        A9 00         LDA #$00                  
CODE_298ECF:        95 8C         STA $8C,x                 
CODE_298ED1:        A9 C0         LDA #$C0                  
CODE_298ED3:        95 9E         STA $9E,x                 
CODE_298ED5:        4C 9D 8E      JMP CODE_298E9D           

CODE_298ED8:        60            RTS                       

CODE_298ED9:        BD 18 05      LDA $0518,x               
CODE_298EDC:        D0 0B         BNE CODE_298EE9           
CODE_298EDE:        FE 21 10      INC $1021,x               
CODE_298EE1:        BC 21 10      LDY $1021,x               
CODE_298EE4:        A9 20         LDA #$20                  
CODE_298EE6:        9D 18 05      STA $0518,x               
CODE_298EE9:        60            RTS                       

CODE_298EEA:        22 EF A7 27   JSL CODE_27A7EF           
CODE_298EEE:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_298EF2:        BD 76 07      LDA $0776,x               
CODE_298EF5:        29 01         AND #$01                  
CODE_298EF7:        A8            TAY                       
CODE_298EF8:        B5 8C         LDA $8C,x                 
CODE_298EFA:        D9 EB C5      CMP.w DATA_21C5EB,y               
CODE_298EFD:        D0 04         BNE CODE_298F03           
CODE_298EFF:        FE 76 07      INC $0776,x               
CODE_298F02:        C8            INY                       
CODE_298F03:        18            CLC                       
CODE_298F04:        79 E7 C5      ADC.w DATA_21C5E7,y               
CODE_298F07:        95 8C         STA $8C,x                 
CODE_298F09:        BD 7B 07      LDA $077B,x               
CODE_298F0C:        29 01         AND #$01                  
CODE_298F0E:        A8            TAY                       
CODE_298F0F:        B5 9E         LDA $9E,x                 
CODE_298F11:        D9 EB C5      CMP.w DATA_21C5EB,y               
CODE_298F14:        D0 04         BNE CODE_298F1A           
CODE_298F16:        FE 7B 07      INC $077B,x               
CODE_298F19:        C8            INY                       
CODE_298F1A:        18            CLC                       
CODE_298F1B:        79 E7 C5      ADC.w DATA_21C5E7,y               
CODE_298F1E:        95 9E         STA $9E,x                 
CODE_298F20:        60            RTS                       

CODE_298F21:        BD 79 06      LDA $0679,x               
CODE_298F24:        29 CF         AND #$CF                  
CODE_298F26:        09 20         ORA #$20                  
CODE_298F28:        BC 21 10      LDY $1021,x               
CODE_298F2B:        D0 04         BNE CODE_298F31           
CODE_298F2D:        29 CF         AND #$CF                  
CODE_298F2F:        09 10         ORA #$10                  
CODE_298F31:        9D 79 06      STA $0679,x               
CODE_298F34:        BD 51 06      LDA $0651,x               
CODE_298F37:        8D EF 1C      STA $1CEF                 
CODE_298F3A:        B5 5F         LDA $5F,x                 
CODE_298F3C:        48            PHA                       
CODE_298F3D:        18            CLC                       
CODE_298F3E:        69 08         ADC #$08                  
CODE_298F40:        95 5F         STA $5F,x                 
CODE_298F42:        B5 44         LDA $44,x                 
CODE_298F44:        48            PHA                       
CODE_298F45:        69 00         ADC #$00                  
CODE_298F47:        95 44         STA $44,x                 
CODE_298F49:        1E 51 06      ASL $0651,x               
CODE_298F4C:        22 E1 9E 27   JSL CODE_279EE1           
CODE_298F50:        68            PLA                       
CODE_298F51:        95 44         STA $44,x                 
CODE_298F53:        68            PLA                       
CODE_298F54:        95 5F         STA $5F,x                 
CODE_298F56:        22 C2 9D 27   JSL CODE_279DC2           
CODE_298F5A:        B5 C6         LDA $C6,x                 
CODE_298F5C:        85 D8         STA $D8                   
CODE_298F5E:        B5 C7         LDA $C7,x                 
CODE_298F60:        85 D9         STA $D9                   
CODE_298F62:        BD 81 06      LDA $0681,x               
CODE_298F65:        D0 B9         BNE CODE_298F20           
CODE_298F67:        B5 83         LDA $83,x                 
CODE_298F69:        85 00         STA $00                   
CODE_298F6B:        BD 69 06      LDA $0669,x               
CODE_298F6E:        AA            TAX                       
CODE_298F6F:        C2 10         REP #$10                  
CODE_298F71:        A4 D8         LDY $D8                   
CODE_298F73:        AD EF 1C      LDA $1CEF                 
CODE_298F76:        30 0F         BMI CODE_298F87           
CODE_298F78:        A5 00         LDA $00                   
CODE_298F7A:        18            CLC                       
CODE_298F7B:        7D F5 C5      ADC.w DATA_21C5F5,x               
CODE_298F7E:        99 11 08      STA $0811,y               
CODE_298F81:        18            CLC                       
CODE_298F82:        69 08         ADC #$08                  
CODE_298F84:        99 19 08      STA $0819,y               
CODE_298F87:        AD EF 1C      LDA $1CEF                 
CODE_298F8A:        29 10         AND #$10                  
CODE_298F8C:        D0 0F         BNE CODE_298F9D           
CODE_298F8E:        A5 00         LDA $00                   
CODE_298F90:        18            CLC                       
CODE_298F91:        7D F5 C5      ADC.w DATA_21C5F5,x               
CODE_298F94:        99 15 08      STA $0815,y               
CODE_298F97:        18            CLC                       
CODE_298F98:        69 08         ADC #$08                  
CODE_298F9A:        99 1D 08      STA $081D,y               
CODE_298F9D:        BD F3 C5      LDA.w DATA_21C5F3,x               
CODE_298FA0:        99 12 08      STA $0812,y               
CODE_298FA3:        99 16 08      STA $0816,y               
CODE_298FA6:        1A            INC A                     
CODE_298FA7:        99 1A 08      STA $081A,y               
CODE_298FAA:        99 1E 08      STA $081E,y               
CODE_298FAD:        B9 03 08      LDA $0803,y               
CODE_298FB0:        29 7F         AND #$7F                  
CODE_298FB2:        85 0E         STA $0E                   
CODE_298FB4:        99 13 08      STA $0813,y               
CODE_298FB7:        99 1B 08      STA $081B,y               
CODE_298FBA:        B9 07 08      LDA $0807,y               
CODE_298FBD:        29 7F         AND #$7F                  
CODE_298FBF:        85 0F         STA $0F                   
CODE_298FC1:        99 17 08      STA $0817,y               
CODE_298FC4:        99 1F 08      STA $081F,y               
CODE_298FC7:        C2 20         REP #$20                  
CODE_298FC9:        A5 9B         LDA $9B                   
CODE_298FCB:        29 FF 00      AND #$00FF                
CODE_298FCE:        AA            TAX                       
CODE_298FCF:        E2 20         SEP #$20                  
CODE_298FD1:        B5 7A         LDA $7A,x                 
CODE_298FD3:        85 01         STA $01                   
CODE_298FD5:        99 10 08      STA $0810,y               
CODE_298FD8:        99 18 08      STA $0818,y               
CODE_298FDB:        18            CLC                       
CODE_298FDC:        69 18         ADC #$18                  
CODE_298FDE:        99 14 08      STA $0814,y               
CODE_298FE1:        99 1C 08      STA $081C,y               
CODE_298FE4:        C2 20         REP #$20                  
CODE_298FE6:        98            TYA                       
CODE_298FE7:        4A            LSR A                     
CODE_298FE8:        4A            LSR A                     
CODE_298FE9:        A8            TAY                       
CODE_298FEA:        E2 20         SEP #$20                  
CODE_298FEC:        A9 00         LDA #$00                  
CODE_298FEE:        99 24 0A      STA $0A24,y               
CODE_298FF1:        99 25 0A      STA $0A25,y               
CODE_298FF4:        99 26 0A      STA $0A26,y               
CODE_298FF7:        99 27 0A      STA $0A27,y               
CODE_298FFA:        E2 10         SEP #$10                  
CODE_298FFC:        BD 69 06      LDA $0669,x               
CODE_298FFF:        F0 75         BEQ CODE_299076           
CODE_299001:        22 9D A1 27   JSL CODE_27A19D           
CODE_299005:        C2 10         REP #$10                  
CODE_299007:        B4 C6         LDY $C6,x                 
CODE_299009:        A5 00         LDA $00                   
CODE_29900B:        18            CLC                       
CODE_29900C:        69 10         ADC #$10                  
CODE_29900E:        99 01 08      STA $0801,y               
CODE_299011:        18            CLC                       
CODE_299012:        69 08         ADC #$08                  
CODE_299014:        99 05 08      STA $0805,y               
CODE_299017:        A5 01         LDA $01                   
CODE_299019:        99 00 08      STA $0800,y               
CODE_29901C:        99 04 08      STA $0804,y               
CODE_29901F:        A5 0E         LDA $0E                   
CODE_299021:        09 80         ORA #$80                  
CODE_299023:        99 03 08      STA $0803,y               
CODE_299026:        99 07 08      STA $0807,y               
CODE_299029:        A9 B0         LDA #$B0                  
CODE_29902B:        99 02 08      STA $0802,y               
CODE_29902E:        1A            INC A                     
CODE_29902F:        99 06 08      STA $0806,y               
CODE_299032:        A5 00         LDA $00                   
CODE_299034:        18            CLC                       
CODE_299035:        69 10         ADC #$10                  
CODE_299037:        99 09 08      STA $0809,y               
CODE_29903A:        18            CLC                       
CODE_29903B:        69 08         ADC #$08                  
CODE_29903D:        99 0D 08      STA $080D,y               
CODE_299040:        A5 01         LDA $01                   
CODE_299042:        18            CLC                       
CODE_299043:        69 18         ADC #$18                  
CODE_299045:        99 08 08      STA $0808,y               
CODE_299048:        99 0C 08      STA $080C,y               
CODE_29904B:        A5 0F         LDA $0F                   
CODE_29904D:        09 80         ORA #$80                  
CODE_29904F:        99 0B 08      STA $080B,y               
CODE_299052:        99 0F 08      STA $080F,y               
CODE_299055:        A9 B0         LDA #$B0                  
CODE_299057:        99 0A 08      STA $080A,y               
CODE_29905A:        1A            INC A                     
CODE_29905B:        99 0E 08      STA $080E,y               
CODE_29905E:        C2 20         REP #$20                  
CODE_299060:        98            TYA                       
CODE_299061:        4A            LSR A                     
CODE_299062:        4A            LSR A                     
CODE_299063:        A8            TAY                       
CODE_299064:        E2 20         SEP #$20                  
CODE_299066:        A9 00         LDA #$00                  
CODE_299068:        99 20 0A      STA $0A20,y               
CODE_29906B:        99 21 0A      STA $0A21,y               
CODE_29906E:        99 22 0A      STA $0A22,y               
CODE_299071:        99 23 0A      STA $0A23,y               
CODE_299074:        E2 10         SEP #$10                  
CODE_299076:        60            RTS                       

CODE_299077:        20 5E 91      JSR CODE_29915E           
CODE_29907A:        B5 83         LDA $83,x                 
CODE_29907C:        C9 C8         CMP #$C8                  
CODE_29907E:        90 06         BCC CODE_299086           
CODE_299080:        A9 00         LDA #$00                  
CODE_299082:        9D 61 06      STA $0661,x               
CODE_299085:        6B            RTL                       

CODE_299086:        A5 9C         LDA $9C                   
CODE_299088:        D0 FB         BNE CODE_299085           
CODE_29908A:        AD 65 05      LDA $0565                 
CODE_29908D:        29 03         AND #$03                  
CODE_29908F:        D0 04         BNE CODE_299095           
CODE_299091:        D6 68         DEC $68,x                 
CODE_299093:        F0 EB         BEQ CODE_299080           
CODE_299095:        22 C3 9B 27   JSL CODE_279BC3           
CODE_299099:        B4 4D         LDY $4D,x                 
CODE_29909B:        B9 F7 C5      LDA.w DATA_21C5F7,y               
CODE_29909E:        95 8C         STA $8C,x                 
CODE_2990A0:        B9 FB C5      LDA.w DATA_21C5FB,y               
CODE_2990A3:        95 9E         STA $9E,x                 
CODE_2990A5:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_2990A9:        22 EF A7 27   JSL CODE_27A7EF           
CODE_2990AD:        A9 00         LDA #$00                  
CODE_2990AF:        95 44         STA $44,x                 
CODE_2990B1:        22 12 A3 27   JSL CODE_27A312           
CODE_2990B5:        90 74         BCC CODE_29912B           
CODE_2990B7:        A5 82         LDA $82                   
CODE_2990B9:        18            CLC                       
CODE_2990BA:        69 18         ADC #$18                  
CODE_2990BC:        D5 83         CMP $83,x                 
CODE_2990BE:        B0 6C         BCS CODE_29912C                   
CODE_2990C0:        A5 9D         LDA $9D                   
CODE_2990C2:        30 67         BMI CODE_29912B           
CODE_2990C4:        BC 71 06      LDY $0671,x               
CODE_2990C7:        C0 A9         CPY #$A9                  
CODE_2990C9:        D0 17         BNE CODE_2990E2           
CODE_2990CB:        C9 10         CMP #$10                  
CODE_2990CD:        90 13         BCC CODE_2990E2           
CODE_2990CF:        A9 23         LDA #$23                  
CODE_2990D1:        8D 03 12      STA $1203                 
CODE_2990D4:        A9 08         LDA #$08                  
CODE_2990D6:        9D 18 05      STA $0518,x               
CODE_2990D9:        B5 4D         LDA $4D,x                 
CODE_2990DB:        18            CLC                       
CODE_2990DC:        69 01         ADC #$01                  
CODE_2990DE:        29 03         AND #$03                  
CODE_2990E0:        95 4D         STA $4D,x                 
CODE_2990E2:        64 9D         STZ $9D                   
CODE_2990E4:        64 A6         STZ $A6                   
CODE_2990E6:        A9 01         LDA #$01                  
CODE_2990E8:        8D BD 07      STA $07BD                 
CODE_2990EB:        B5 71         LDA $71,x                 
CODE_2990ED:        38            SEC                       
CODE_2990EE:        E9 1F         SBC #$1F                  
CODE_2990F0:        85 70         STA $70                   
CODE_2990F2:        B5 56         LDA $56,x                 
CODE_2990F4:        E9 00         SBC #$00                  
CODE_2990F6:        85 55         STA $55                   
CODE_2990F8:        A0 00         LDY #$00                  
CODE_2990FA:        AD 4D 07      LDA $074D                 
CODE_2990FD:        10 01         BPL CODE_299100           
CODE_2990FF:        88            DEY                       
CODE_299100:        18            CLC                       
CODE_299101:        65 5E         ADC $5E                   
CODE_299103:        85 5E         STA $5E                   
CODE_299105:        98            TYA                       
CODE_299106:        65 43         ADC $43                   
CODE_299108:        85 43         STA $43                   
CODE_29910A:        20 82 92      JSR CODE_299282           
CODE_29910D:        90 1C         BCC CODE_29912B           
CODE_29910F:        85 00         STA $00                   
CODE_299111:        A9 00         LDA #$00                  
CODE_299113:        9D 61 06      STA $0661,x               
CODE_299116:        AC 60 05      LDY $0560                 
CODE_299119:        B9 3A AF      LDA.w DATA_21AF3A,y               
CODE_29911C:        C9 FF         CMP #$FF                  
CODE_29911E:        F0 0B         BEQ CODE_29912B           
CODE_299120:        38            SEC                       
CODE_299121:        E5 00         SBC $00                   
CODE_299123:        C9 02         CMP #$02                  
CODE_299125:        B0 04         BCS CODE_29912B                   
CODE_299127:        22 C6 A4 27   JSL CODE_27A4C6           
CODE_29912B:        6B            RTL                       

CODE_29912C:        A9 F8         LDA #$F8                  
CODE_29912E:        A4 BB         LDY $BB                   
CODE_299130:        D0 02         BNE CODE_299134           
CODE_299132:        A9 08         LDA #$08                  
CODE_299134:        18            CLC                       
CODE_299135:        65 82         ADC $82                   
CODE_299137:        D5 83         CMP $83,x                 
CODE_299139:        90 09         BCC CODE_299144           
CODE_29913B:        A5 9D         LDA $9D                   
CODE_29913D:        10 04         BPL CODE_299143           
CODE_29913F:        A9 10         LDA #$10                  
CODE_299141:        85 9D         STA $9D                   
CODE_299143:        6B            RTL                       

CODE_299144:        B5 8C         LDA $8C,x                 
CODE_299146:        F0 11         BEQ CODE_299159           
CODE_299148:        A5 5E         LDA $5E                   
CODE_29914A:        38            SEC                       
CODE_29914B:        F5 5F         SBC $5F,x                 
CODE_29914D:        55 8C         EOR $8C,x                 
CODE_29914F:        30 05         BMI CODE_299156           
CODE_299151:        B5 8C         LDA $8C,x                 
CODE_299153:        85 8B         STA $8B                   
CODE_299155:        6B            RTL                       

CODE_299156:        64 8B         STZ $8B                   
CODE_299158:        6B            RTL                       

CODE_299159:        22 12 99 29   JSL CODE_299912           
CODE_29915D:        6B            RTL                       

CODE_29915E:        22 C2 9D 27   JSL CODE_279DC2           
CODE_299162:        A9 00         LDA #$00                  
CODE_299164:        9D 51 06      STA $0651,x               
CODE_299167:        B5 68         LDA $68,x                 
CODE_299169:        C9 20         CMP #$20                  
CODE_29916B:        B0 0F         BCS CODE_29917C                   
CODE_29916D:        4A            LSR A                     
CODE_29916E:        4A            LSR A                     
CODE_29916F:        4A            LSR A                     
CODE_299170:        A8            TAY                       
CODE_299171:        AD 65 05      LDA $0565                 
CODE_299174:        39 18 C6      AND.w DATA_21C618,y               
CODE_299177:        D0 03         BNE CODE_29917C           
CODE_299179:        82 AE 00      BRL CODE_29922A           

CODE_29917C:        B5 7A         LDA $7A,x                 
CODE_29917E:        85 01         STA $01                   
CODE_299180:        B4 4D         LDY $4D,x                 
CODE_299182:        BD 18 05      LDA $0518,x               
CODE_299185:        F0 02         BEQ CODE_299189           
CODE_299187:        A0 04         LDY #$04                  
CODE_299189:        84 02         STY $02                   
CODE_29918B:        64 03         STZ $03                   
CODE_29918D:        B5 C6         LDA $C6,x                 
CODE_29918F:        85 DA         STA $DA                   
CODE_299191:        B5 C7         LDA $C7,x                 
CODE_299193:        85 DB         STA $DB                   
CODE_299195:        22 9D A1 27   JSL CODE_27A19D           
CODE_299199:        B5 C6         LDA $C6,x                 
CODE_29919B:        85 DC         STA $DC                   
CODE_29919D:        B5 C7         LDA $C7,x                 
CODE_29919F:        85 DD         STA $DD                   
CODE_2991A1:        C2 10         REP #$10                  
CODE_2991A3:        A4 DA         LDY $DA                   
CODE_2991A5:        64 D8         STZ $D8                   
CODE_2991A7:        64 D9         STZ $D9                   
CODE_2991A9:        B5 83         LDA $83,x                 
CODE_2991AB:        99 01 08      STA $0801,y               
CODE_2991AE:        18            CLC                       
CODE_2991AF:        69 08         ADC #$08                  
CODE_2991B1:        99 05 08      STA $0805,y               
CODE_2991B4:        A5 01         LDA $01                   
CODE_2991B6:        99 00 08      STA $0800,y               
CODE_2991B9:        99 04 08      STA $0804,y               
CODE_2991BC:        18            CLC                       
CODE_2991BD:        69 08         ADC #$08                  
CODE_2991BF:        85 01         STA $01                   
CODE_2991C1:        C2 20         REP #$20                  
CODE_2991C3:        A5 02         LDA $02                   
CODE_2991C5:        0A            ASL A                     
CODE_2991C6:        0A            ASL A                     
CODE_2991C7:        65 D8         ADC $D8                   
CODE_2991C9:        AA            TAX                       
CODE_2991CA:        E2 20         SEP #$20                  
CODE_2991CC:        BD FF C5      LDA.w DATA_21C5FF,x               
CODE_2991CF:        99 02 08      STA $0802,y               
CODE_2991D2:        1A            INC A                     
CODE_2991D3:        99 06 08      STA $0806,y               
CODE_2991D6:        A6 02         LDX $02                   
CODE_2991D8:        BD 13 C6      LDA.w DATA_21C613,x               
CODE_2991DB:        E0 04 00      CPX #$0004                
CODE_2991DE:        D0 09         BNE CODE_2991E9           
CODE_2991E0:        A6 D8         LDX $D8                   
CODE_2991E2:        E0 02 00      CPX #$0002                
CODE_2991E5:        D0 02         BNE CODE_2991E9           
CODE_2991E7:        A9 44         LDA #$44                  
CODE_2991E9:        09 20         ORA #$20                  
CODE_2991EB:        99 03 08      STA $0803,y               
CODE_2991EE:        99 07 08      STA $0807,y               
CODE_2991F1:        5A            PHY                       
CODE_2991F2:        C2 20         REP #$20                  
CODE_2991F4:        98            TYA                       
CODE_2991F5:        4A            LSR A                     
CODE_2991F6:        4A            LSR A                     
CODE_2991F7:        A8            TAY                       
CODE_2991F8:        E2 20         SEP #$20                  
CODE_2991FA:        A9 00         LDA #$00                  
CODE_2991FC:        99 20 0A      STA $0A20,y               
CODE_2991FF:        99 21 0A      STA $0A21,y               
CODE_299202:        7A            PLY                       
CODE_299203:        5A            PHY                       
CODE_299204:        20 2B 92      JSR CODE_29922B           
CODE_299207:        7A            PLY                       
CODE_299208:        C2 20         REP #$20                  
CODE_29920A:        98            TYA                       
CODE_29920B:        18            CLC                       
CODE_29920C:        69 08 00      ADC #$0008                
CODE_29920F:        A8            TAY                       
CODE_299210:        A5 DC         LDA $DC                   
CODE_299212:        18            CLC                       
CODE_299213:        69 08 00      ADC #$0008                
CODE_299216:        85 DC         STA $DC                   
CODE_299218:        A5 9B         LDA $9B                   
CODE_29921A:        29 FF 00      AND #$00FF                
CODE_29921D:        AA            TAX                       
CODE_29921E:        E2 20         SEP #$20                  
CODE_299220:        E6 D8         INC $D8                   
CODE_299222:        A5 D8         LDA $D8                   
CODE_299224:        C9 04         CMP #$04                  
CODE_299226:        D0 81         BNE CODE_2991A9           
CODE_299228:        E2 10         SEP #$10                  
CODE_29922A:        60            RTS                       

CODE_29922B:        AD 25 04      LDA $0425                 
CODE_29922E:        F0 FA         BEQ CODE_29922A           
CODE_299230:        B9 00 08      LDA $0800,y               
CODE_299233:        C9 F8         CMP #$F8                  
CODE_299235:        90 F3         BCC CODE_29922A           
CODE_299237:        A6 DC         LDX $DC                   
CODE_299239:        B9 00 08      LDA $0800,y               
CODE_29923C:        9D 00 08      STA $0800,x               
CODE_29923F:        9D 04 08      STA $0804,x               
CODE_299242:        B9 01 08      LDA $0801,y               
CODE_299245:        9D 01 08      STA $0801,x               
CODE_299248:        B9 05 08      LDA $0805,y               
CODE_29924B:        9D 05 08      STA $0805,x               
CODE_29924E:        B9 02 08      LDA $0802,y               
CODE_299251:        9D 02 08      STA $0802,x               
CODE_299254:        B9 06 08      LDA $0806,y               
CODE_299257:        9D 06 08      STA $0806,x               
CODE_29925A:        B9 03 08      LDA $0803,y               
CODE_29925D:        9D 03 08      STA $0803,x               
CODE_299260:        B9 07 08      LDA $0807,y               
CODE_299263:        9D 07 08      STA $0807,x               
CODE_299266:        C2 20         REP #$20                  
CODE_299268:        98            TYA                       
CODE_299269:        4A            LSR A                     
CODE_29926A:        4A            LSR A                     
CODE_29926B:        A8            TAY                       
CODE_29926C:        8A            TXA                       
CODE_29926D:        4A            LSR A                     
CODE_29926E:        4A            LSR A                     
CODE_29926F:        AA            TAX                       
CODE_299270:        E2 20         SEP #$20                  
CODE_299272:        A9 00         LDA #$00                  
CODE_299274:        9D 20 0A      STA $0A20,x               
CODE_299277:        9D 21 0A      STA $0A21,x               
CODE_29927A:        1A            INC A                     
CODE_29927B:        99 20 0A      STA $0A20,y               
CODE_29927E:        99 21 0A      STA $0A21,y               
CODE_299281:        60            RTS                       

CODE_299282:        A9 06         LDA #$06                  
CODE_299284:        AC 6F 05      LDY $056F                 
CODE_299287:        D0 04         BNE CODE_29928D           
CODE_299289:        A4 BB         LDY $BB                   
CODE_29928B:        D0 02         BNE CODE_29928F           
CODE_29928D:        A9 12         LDA #$12                  
CODE_29928F:        65 70         ADC $70                   
CODE_299291:        29 F0         AND #$F0                  
CODE_299293:        85 02         STA $02                   
CODE_299295:        A5 55         LDA $55                   
CODE_299297:        69 00         ADC #$00                  
CODE_299299:        C9 10         CMP #$10                  
CODE_29929B:        B0 29         BCS CODE_2992C6                   
CODE_29929D:        69 20         ADC #$20                  
CODE_29929F:        85 01         STA $01                   
CODE_2992A1:        85 D9         STA $D9                   
CODE_2992A3:        A5 5E         LDA $5E                   
CODE_2992A5:        18            CLC                       
CODE_2992A6:        69 08         ADC #$08                  
CODE_2992A8:        4A            LSR A                     
CODE_2992A9:        4A            LSR A                     
CODE_2992AA:        4A            LSR A                     
CODE_2992AB:        4A            LSR A                     
CODE_2992AC:        05 02         ORA $02                   
CODE_2992AE:        85 00         STA $00                   
CODE_2992B0:        85 D8         STA $D8                   
CODE_2992B2:        A9 7E         LDA #$7E                  
CODE_2992B4:        85 DA         STA $DA                   
CODE_2992B6:        A0 00         LDY #$00                  
CODE_2992B8:        B7 D8         LDA [$D8],y               
CODE_2992BA:        48            PHA                       
CODE_2992BB:        0A            ASL A                     
CODE_2992BC:        2A            ROL A                     
CODE_2992BD:        2A            ROL A                     
CODE_2992BE:        29 03         AND #$03                  
CODE_2992C0:        A8            TAY                       
CODE_2992C1:        68            PLA                       
CODE_2992C2:        D9 9A 1E      CMP $1E9A,y               
CODE_2992C5:        60            RTS                       

CODE_2992C6:        18            CLC                       
CODE_2992C7:        60            RTS                       

CODE_2992C8:        A9 00         LDA #$00                  
CODE_2992CA:        B4 8C         LDY $8C,x                 
CODE_2992CC:        30 02         BMI CODE_2992D0           
CODE_2992CE:        A9 40         LDA #$40                  
CODE_2992D0:        9D 79 06      STA $0679,x               
CODE_2992D3:        60            RTS                       

CODE_2992D4:        22 37 A8 27   JSL CODE_27A837           
CODE_2992D8:        B9 1C C6      LDA.w DATA_21C61C,y               
CODE_2992DB:        95 8C         STA $8C,x                 
CODE_2992DD:        6B            RTL                       

CODE_2992DE:        B5 8C         LDA $8C,x                 
CODE_2992E0:        10 04         BPL CODE_2992E6           
CODE_2992E2:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_2992E6:        C9 10         CMP #$10                  
CODE_2992E8:        A9 01         LDA #$01                  
CODE_2992EA:        90 02         BCC CODE_2992EE           
CODE_2992EC:        69 00         ADC #$00                  
CODE_2992EE:        9D E9 1F      STA $1FE9,x               
CODE_2992F1:        22 C3 9B 27   JSL CODE_279BC3           
CODE_2992F5:        20 C8 92      JSR CODE_2992C8           
CODE_2992F8:        BD D2 1F      LDA $1FD2,x               
CODE_2992FB:        4A            LSR A                     
CODE_2992FC:        4A            LSR A                     
CODE_2992FD:        4A            LSR A                     
CODE_2992FE:        29 01         AND #$01                  
CODE_299300:        9D 69 06      STA $0669,x               
CODE_299303:        22 BB 9E 27   JSL CODE_279EBB           
CODE_299307:        A5 9C         LDA $9C                   
CODE_299309:        D0 D2         BNE CODE_2992DD           
CODE_29930B:        FE D2 1F      INC $1FD2,x               
CODE_29930E:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_299312:        22 EF A7 27   JSL CODE_27A7EF           
CODE_299316:        BD 97 07      LDA $0797,x               
CODE_299319:        8D EF 1C      STA $1CEF                 
CODE_29931C:        EE F4 05      INC $05F4                 
CODE_29931F:        22 6F 9B 27   JSL CODE_279B6F           
CODE_299323:        CE F4 05      DEC $05F4                 
CODE_299326:        BD 97 07      LDA $0797,x               
CODE_299329:        F0 6C         BEQ CODE_299397           
CODE_29932B:        CD EF 1C      CMP $1CEF                 
CODE_29932E:        F0 0A         BEQ CODE_29933A           
CODE_299330:        A9 0C         LDA #$0C                  
CODE_299332:        A4 BB         LDY $BB                   
CODE_299334:        F0 02         BEQ CODE_299338           
CODE_299336:        A9 14         LDA #$14                  
CODE_299338:        95 9E         STA $9E,x                 
CODE_29933A:        FE D2 1F      INC $1FD2,x               
CODE_29933D:        FE D2 1F      INC $1FD2,x               
CODE_299340:        A9 F4         LDA #$F4                  
CODE_299342:        A4 BB         LDY $BB                   
CODE_299344:        D0 02         BNE CODE_299348           
CODE_299346:        A9 F0         LDA #$F0                  
CODE_299348:        D5 9E         CMP $9E,x                 
CODE_29934A:        10 04         BPL CODE_299350           
CODE_29934C:        D6 9E         DEC $9E,x                 
CODE_29934E:        D6 9E         DEC $9E,x                 
CODE_299350:        F6 9E         INC $9E,x                 
CODE_299352:        A9 05         LDA #$05                  
CODE_299354:        8D 1F 10      STA $101F                 
CODE_299357:        A5 9D         LDA $9D                   
CODE_299359:        30 3B         BMI CODE_299396           
CODE_29935B:        A0 00         LDY #$00                  
CODE_29935D:        AD 4D 07      LDA $074D                 
CODE_299360:        10 01         BPL CODE_299363           
CODE_299362:        88            DEY                       
CODE_299363:        18            CLC                       
CODE_299364:        65 5E         ADC $5E                   
CODE_299366:        85 5E         STA $5E                   
CODE_299368:        98            TYA                       
CODE_299369:        65 43         ADC $43                   
CODE_29936B:        85 43         STA $43                   
CODE_29936D:        B5 71         LDA $71,x                 
CODE_29936F:        38            SEC                       
CODE_299370:        E9 1B         SBC #$1B                  
CODE_299372:        85 70         STA $70                   
CODE_299374:        B5 56         LDA $56,x                 
CODE_299376:        E9 00         SBC #$00                  
CODE_299378:        85 55         STA $55                   
CODE_29937A:        A9 00         LDA #$00                  
CODE_29937C:        85 9D         STA $9D                   
CODE_29937E:        85 A6         STA $A6                   
CODE_299380:        A5 17         LDA $17                   
CODE_299382:        29 03         AND #$03                  
CODE_299384:        D0 10         BNE CODE_299396           
CODE_299386:        22 D9 9D 27   JSL CODE_279DD9           
CODE_29938A:        A5 8B         LDA $8B                   
CODE_29938C:        F0 08         BEQ CODE_299396           
CODE_29938E:        10 04         BPL CODE_299394           
CODE_299390:        E6 8B         INC $8B                   
CODE_299392:        E6 8B         INC $8B                   
CODE_299394:        C6 8B         DEC $8B                   
CODE_299396:        6B            RTL                       

CODE_299397:        B5 9E         LDA $9E,x                 
CODE_299399:        F0 08         BEQ CODE_2993A3           
CODE_29939B:        10 04         BPL CODE_2993A1           
CODE_29939D:        F6 9E         INC $9E,x                 
CODE_29939F:        F6 9E         INC $9E,x                 
CODE_2993A1:        D6 9E         DEC $9E,x                 
CODE_2993A3:        6B            RTL                       

CODE_2993A4:        A9 02         LDA #$02                  
CODE_2993A6:        9D 79 06      STA $0679,x               
CODE_2993A9:        A9 00         LDA #$00                  
CODE_2993AB:        95 94         STA $94,x                 
CODE_2993AD:        95 68         STA $68,x                 
CODE_2993AF:        9D 21 10      STA $1021,x               
CODE_2993B2:        B5 71         LDA $71,x                 
CODE_2993B4:        38            SEC                       
CODE_2993B5:        E9 0C         SBC #$0C                  
CODE_2993B7:        95 71         STA $71,x                 
CODE_2993B9:        B5 56         LDA $56,x                 
CODE_2993BB:        E9 00         SBC #$00                  
CODE_2993BD:        95 56         STA $56,x                 
CODE_2993BF:        6B            RTL                       

CODE_2993C0:        A9 30         LDA #$30                  
CODE_2993C2:        95 68         STA $68,x                 
CODE_2993C4:        20 CF 97      JSR CODE_2997CF           
CODE_2993C7:        20 F3 95      JSR CODE_2995F3           
CODE_2993CA:        20 A7 96      JSR CODE_2996A7           
CODE_2993CD:        4C 31 94      JMP CODE_299431           

CODE_2993D0:        22 C4 93 29   JSL CODE_2993C4           
CODE_2993D4:        A5 9C         LDA $9C                   
CODE_2993D6:        D0 26         BNE CODE_2993FE           
CODE_2993D8:        B5 4D         LDA $4D,x                 
CODE_2993DA:        29 01         AND #$01                  
CODE_2993DC:        1D 79 06      ORA $0679,x               
CODE_2993DF:        A8            TAY                       
CODE_2993E0:        BD 18 05      LDA $0518,x               
CODE_2993E3:        D0 08         BNE CODE_2993ED           
CODE_2993E5:        B9 1E C6      LDA.w DATA_21C61E,y               
CODE_2993E8:        9D 18 05      STA $0518,x               
CODE_2993EB:        F6 4D         INC $4D,x                 
CODE_2993ED:        29 00         AND #$00                  
CODE_2993EF:        D0 0D         BNE CODE_2993FE           
CODE_2993F1:        B5 68         LDA $68,x                 
CODE_2993F3:        D9 26 C6      CMP.w DATA_21C626,y               
CODE_2993F6:        F0 06         BEQ CODE_2993FE           
CODE_2993F8:        18            CLC                       
CODE_2993F9:        79 22 C6      ADC.w DATA_21C622,y               
CODE_2993FC:        95 68         STA $68,x                 
CODE_2993FE:        6B            RTL                       

CODE_2993FF:        BD 18 05      LDA $0518,x               
CODE_299402:        D0 23         BNE CODE_299427           
CODE_299404:        A5 15         LDA $15                   
CODE_299406:        29 01         AND #$01                  
CODE_299408:        D0 1D         BNE CODE_299427           
CODE_29940A:        BC 21 10      LDY $1021,x               
CODE_29940D:        B5 8C         LDA $8C,x                 
CODE_29940F:        18            CLC                       
CODE_299410:        79 49 C6      ADC.w DATA_21C649,y               
CODE_299413:        95 8C         STA $8C,x                 
CODE_299415:        D9 4B C6      CMP.w DATA_21C64B,y               
CODE_299418:        D0 0D         BNE CODE_299427           
CODE_29941A:        BD 21 10      LDA $1021,x               
CODE_29941D:        49 01         EOR #$01                  
CODE_29941F:        9D 21 10      STA $1021,x               
CODE_299422:        A9 A0         LDA #$A0                  
CODE_299424:        9D 18 05      STA $0518,x               
CODE_299427:        A9 00         LDA #$00                  
CODE_299429:        95 8C         STA $8C,x                 
CODE_29942B:        20 B8 95      JSR CODE_2995B8           
CODE_29942E:        20 A7 96      JSR CODE_2996A7           
CODE_299431:        22 C7 9B 27   JSL CODE_279BC7           
CODE_299435:        AD 83 05      LDA $0583                 
CODE_299438:        D0 66         BNE CODE_2994A0           
CODE_29943A:        BD 71 06      LDA $0671,x               
CODE_29943D:        38            SEC                       
CODE_29943E:        E9 90         SBC #$90                  
CODE_299440:        85 0E         STA $0E                   
CODE_299442:        22 5F A8 27   JSL CODE_27A85F           
CODE_299446:        D0 58         BNE CODE_2994A0           
CODE_299448:        A0 06         LDY #$06                  
CODE_29944A:        84 00         STY $00                   
CODE_29944C:        C0 06         CPY #$06                  
CODE_29944E:        D0 06         BNE CODE_299456           
CODE_299450:        C2 20         REP #$20                  
CODE_299452:        A5 D8         LDA $D8                   
CODE_299454:        80 0B         BRA CODE_299461           

CODE_299456:        C2 20         REP #$20                  
CODE_299458:        98            TYA                       
CODE_299459:        29 FF 00      AND #$00FF                
CODE_29945C:        0A            ASL A                     
CODE_29945D:        0A            ASL A                     
CODE_29945E:        18            CLC                       
CODE_29945F:        65 DA         ADC $DA                   
CODE_299461:        85 0F         STA $0F                   
CODE_299463:        E2 20         SEP #$20                  
CODE_299465:        A5 70         LDA $70                   
CODE_299467:        38            SEC                       
CODE_299468:        ED 43 05      SBC $0543                 
CODE_29946B:        18            CLC                       
CODE_29946C:        69 18         ADC #$18                  
CODE_29946E:        A4 9D         LDY $9D                   
CODE_299470:        10 03         BPL CODE_299475           
CODE_299472:        38            SEC                       
CODE_299473:        E9 10         SBC #$10                  
CODE_299475:        C2 10         REP #$10                  
CODE_299477:        A4 0F         LDY $0F                   
CODE_299479:        38            SEC                       
CODE_29947A:        F9 01 08      SBC $0801,y               
CODE_29947D:        C9 09         CMP #$09                  
CODE_29947F:        B0 18         BCS CODE_299499                   
CODE_299481:        A5 43         LDA $43                   
CODE_299483:        38            SEC                       
CODE_299484:        F5 44         SBC $44,x                 
CODE_299486:        D0 11         BNE CODE_299499           
CODE_299488:        A5 5E         LDA $5E                   
CODE_29948A:        38            SEC                       
CODE_29948B:        ED 10 02      SBC $0210                 
CODE_29948E:        18            CLC                       
CODE_29948F:        69 08         ADC #$08                  
CODE_299491:        38            SEC                       
CODE_299492:        F9 00 08      SBC $0800,y               
CODE_299495:        C9 09         CMP #$09                  
CODE_299497:        90 0A         BCC CODE_2994A3           
CODE_299499:        E2 30         SEP #$30                  
CODE_29949B:        A4 00         LDY $00                   
CODE_29949D:        88            DEY                       
CODE_29949E:        10 AA         BPL CODE_29944A           
CODE_2994A0:        E2 30         SEP #$30                  
CODE_2994A2:        6B            RTL                       

CODE_2994A3:        A5 BF         LDA $BF                   
CODE_2994A5:        D0 F9         BNE CODE_2994A0           
CODE_2994A7:        B9 01 08      LDA $0801,y               
CODE_2994AA:        C9 F0         CMP #$F0                  
CODE_2994AC:        F0 EB         BEQ CODE_299499           
CODE_2994AE:        E2 10         SEP #$10                  
CODE_2994B0:        A5 0E         LDA $0E                   
CODE_2994B2:        F0 6B         BEQ CODE_29951F           
CODE_2994B4:        B5 68         LDA $68,x                 
CODE_2994B6:        D0 2B         BNE CODE_2994E3           
CODE_2994B8:        A5 9D         LDA $9D                   
CODE_2994BA:        10 05         BPL CODE_2994C1           
CODE_2994BC:        A9 00         LDA #$00                  
CODE_2994BE:        85 9D         STA $9D                   
CODE_2994C0:        6B            RTL                       

CODE_2994C1:        A5 17         LDA $17                   
CODE_2994C3:        29 03         AND #$03                  
CODE_2994C5:        D0 0C         BNE CODE_2994D3           
CODE_2994C7:        A5 8B         LDA $8B                   
CODE_2994C9:        F0 08         BEQ CODE_2994D3           
CODE_2994CB:        10 04         BPL CODE_2994D1           
CODE_2994CD:        E6 8B         INC $8B                   
CODE_2994CF:        E6 8B         INC $8B                   
CODE_2994D1:        C6 8B         DEC $8B                   
CODE_2994D3:        A9 00         LDA #$00                  
CODE_2994D5:        85 9D         STA $9D                   
CODE_2994D7:        85 A6         STA $A6                   
CODE_2994D9:        22 96 95 29   JSL CODE_299596           
CODE_2994DD:        A9 10         LDA #$10                  
CODE_2994DF:        8D 1F 10      STA $101F                 
CODE_2994E2:        6B            RTL                       

CODE_2994E3:        B5 68         LDA $68,x                 
CODE_2994E5:        A4 00         LDY $00                   
CODE_2994E7:        C0 04         CPY #$04                  
CODE_2994E9:        90 02         BCC CODE_2994ED           
CODE_2994EB:        49 80         EOR #$80                  
CODE_2994ED:        0A            ASL A                     
CODE_2994EE:        B0 21         BCS CODE_299511                   
CODE_2994F0:        A5 05         LDA $05                   
CODE_2994F2:        0A            ASL A                     
CODE_2994F3:        0A            ASL A                     
CODE_2994F4:        0A            ASL A                     
CODE_2994F5:        85 9D         STA $9D                   
CODE_2994F7:        A5 04         LDA $04                   
CODE_2994F9:        49 FF         EOR #$FF                  
CODE_2994FB:        0A            ASL A                     
CODE_2994FC:        0A            ASL A                     
CODE_2994FD:        0A            ASL A                     
CODE_2994FE:        10 08         BPL CODE_299508           
CODE_299500:        C9 C0         CMP #$C0                  
CODE_299502:        B0 0A         BCS CODE_29950E                   
CODE_299504:        A9 C0         LDA #$C0                  
CODE_299506:        D0 06         BNE CODE_29950E           
CODE_299508:        C9 40         CMP #$40                  
CODE_29950A:        90 02         BCC CODE_29950E           
CODE_29950C:        A9 40         LDA #$40                  
CODE_29950E:        85 8B         STA $8B                   
CODE_299510:        6B            RTL                       

CODE_299511:        A5 04         LDA $04                   
CODE_299513:        22 FB 94 29   JSL CODE_2994FB           
CODE_299517:        A5 05         LDA $05                   
CODE_299519:        0A            ASL A                     
CODE_29951A:        0A            ASL A                     
CODE_29951B:        0A            ASL A                     
CODE_29951C:        85 9D         STA $9D                   
CODE_29951E:        6B            RTL                       

CODE_29951F:        A4 00         LDY $00                   
CODE_299521:        B5 94         LDA $94,x                 
CODE_299523:        C9 10         CMP #$10                  
CODE_299525:        90 09         BCC CODE_299530           
CODE_299527:        C9 30         CMP #$30                  
CODE_299529:        B0 05         BCS CODE_299530                   
CODE_29952B:        98            TYA                       
CODE_29952C:        18            CLC                       
CODE_29952D:        69 07         ADC #$07                  
CODE_29952F:        A8            TAY                       
CODE_299530:        A5 9D         LDA $9D                   
CODE_299532:        30 06         BMI CODE_29953A           
CODE_299534:        A5 15         LDA $15                   
CODE_299536:        29 03         AND #$03                  
CODE_299538:        D0 11         BNE CODE_29954B           
CODE_29953A:        B9 3B C6      LDA.w DATA_21C63B,y               
CODE_29953D:        A4 9D         LDY $9D                   
CODE_29953F:        10 05         BPL CODE_299546           
CODE_299541:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_299545:        0A            ASL A                     
CODE_299546:        18            CLC                       
CODE_299547:        75 68         ADC $68,x                 
CODE_299549:        95 68         STA $68,x                 
CODE_29954B:        A5 04         LDA $04                   
CODE_29954D:        45 05         EOR $05                   
CODE_29954F:        10 06         BPL CODE_299557           
CODE_299551:        A5 04         LDA $04                   
CODE_299553:        10 06         BPL CODE_29955B           
CODE_299555:        30 08         BMI CODE_29955F           
CODE_299557:        A5 04         LDA $04                   
CODE_299559:        10 04         BPL CODE_29955F           
CODE_29955B:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_29955F:        A4 9D         LDY $9D                   
CODE_299561:        10 0C         BPL CODE_29956F           
CODE_299563:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_299567:        0A            ASL A                     
CODE_299568:        85 8B         STA $8B                   
CODE_29956A:        A9 00         LDA #$00                  
CODE_29956C:        85 9D         STA $9D                   
CODE_29956E:        6B            RTL                       

CODE_29956F:        A0 20         LDY #$20                  
CODE_299571:        85 00         STA $00                   
CODE_299573:        06 00         ASL $00                   
CODE_299575:        6A            ROR A                     
CODE_299576:        EA            NOP                       
CODE_299577:        EA            NOP                       
CODE_299578:        EA            NOP                       
CODE_299579:        EA            NOP                       
CODE_29957A:        EA            NOP                       
CODE_29957B:        EA            NOP                       
CODE_29957C:        18            CLC                       
CODE_29957D:        65 8B         ADC $8B                   
CODE_29957F:        18            CLC                       
CODE_299580:        75 8C         ADC $8C,x                 
CODE_299582:        85 8B         STA $8B                   
CODE_299584:        10 06         BPL CODE_29958C           
CODE_299586:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_29958A:        A0 E0         LDY #$E0                  
CODE_29958C:        C9 20         CMP #$20                  
CODE_29958E:        90 02         BCC CODE_299592           
CODE_299590:        84 8B         STY $8B                   
CODE_299592:        A9 10         LDA #$10                  
CODE_299594:        85 9D         STA $9D                   
CODE_299596:        A5 70         LDA $70                   
CODE_299598:        48            PHA                       
CODE_299599:        C2 10         REP #$10                  
CODE_29959B:        A4 0F         LDY $0F                   
CODE_29959D:        B9 01 08      LDA $0801,y               
CODE_2995A0:        E2 10         SEP #$10                  
CODE_2995A2:        18            CLC                       
CODE_2995A3:        6D 43 05      ADC $0543                 
CODE_2995A6:        38            SEC                       
CODE_2995A7:        E9 18         SBC #$18                  
CODE_2995A9:        85 70         STA $70                   
CODE_2995AB:        68            PLA                       
CODE_2995AC:        C5 70         CMP $70                   
CODE_2995AE:        B0 02         BCS CODE_2995B2                   
CODE_2995B0:        C6 55         DEC $55                   
CODE_2995B2:        A9 08         LDA #$08                  
CODE_2995B4:        8D 1F 10      STA $101F                 
CODE_2995B7:        6B            RTL                       

CODE_2995B8:        20 CF 97      JSR CODE_2997CF           
CODE_2995BB:        B5 94         LDA $94,x                 
CODE_2995BD:        18            CLC                       
CODE_2995BE:        69 07         ADC #$07                  
CODE_2995C0:        29 3F         AND #$3F                  
CODE_2995C2:        B4 68         LDY $68,x                 
CODE_2995C4:        30 0F         BMI CODE_2995D5           
CODE_2995C6:        C9 10         CMP #$10                  
CODE_2995C8:        90 17         BCC CODE_2995E1           
CODE_2995CA:        C9 18         CMP #$18                  
CODE_2995CC:        B0 07         BCS CODE_2995D5                  
CODE_2995CE:        A9 08         LDA #$08                  
CODE_2995D0:        95 94         STA $94,x                 
CODE_2995D2:        4C DD 95      JMP CODE_2995DD           

CODE_2995D5:        29 20         AND #$20                  
CODE_2995D7:        F0 08         BEQ CODE_2995E1           
CODE_2995D9:        A9 38         LDA #$38                  
CODE_2995DB:        95 94         STA $94,x                 
CODE_2995DD:        A9 00         LDA #$00                  
CODE_2995DF:        95 68         STA $68,x                 
CODE_2995E1:        A5 15         LDA $15                   
CODE_2995E3:        29 07         AND #$07                  
CODE_2995E5:        D0 0C         BNE CODE_2995F3           
CODE_2995E7:        B5 68         LDA $68,x                 
CODE_2995E9:        F0 08         BEQ CODE_2995F3           
CODE_2995EB:        30 04         BMI CODE_2995F1           
CODE_2995ED:        D6 68         DEC $68,x                 
CODE_2995EF:        10 02         BPL CODE_2995F3           
CODE_2995F1:        F6 68         INC $68,x                 
CODE_2995F3:        B5 94         LDA $94,x                 
CODE_2995F5:        29 0F         AND #$0F                  
CODE_2995F7:        A8            TAY                       
CODE_2995F8:        B9 2A C6      LDA.w DATA_21C62A,y               
CODE_2995FB:        85 09         STA $09                   
CODE_2995FD:        98            TYA                       
CODE_2995FE:        49 FF         EOR #$FF                  
CODE_299600:        29 0F         AND #$0F                  
CODE_299602:        18            CLC                       
CODE_299603:        69 01         ADC #$01                  
CODE_299605:        A8            TAY                       
CODE_299606:        B9 2A C6      LDA.w DATA_21C62A,y               
CODE_299609:        85 08         STA $08                   
CODE_29960B:        B5 94         LDA $94,x                 
CODE_29960D:        29 10         AND #$10                  
CODE_29960F:        F0 0A         BEQ CODE_29961B           
CODE_299611:        A5 08         LDA $08                   
CODE_299613:        48            PHA                       
CODE_299614:        A5 09         LDA $09                   
CODE_299616:        85 08         STA $08                   
CODE_299618:        68            PLA                       
CODE_299619:        85 09         STA $09                   
CODE_29961B:        A5 09         LDA $09                   
CODE_29961D:        C9 03         CMP #$03                  
CODE_29961F:        B0 0C         BCS CODE_29962D                   
CODE_299621:        4A            LSR A                     
CODE_299622:        85 01         STA $01                   
CODE_299624:        85 05         STA $05                   
CODE_299626:        A9 00         LDA #$00                  
CODE_299628:        85 03         STA $03                   
CODE_29962A:        4C 49 96      JMP CODE_299649           

CODE_29962D:        A0 FF         LDY #$FF                  
CODE_29962F:        38            SEC                       
CODE_299630:        E9 03         SBC #$03                  
CODE_299632:        C8            INY                       
CODE_299633:        B0 FB         BCS CODE_299630                  
CODE_299635:        69 03         ADC #$03                  
CODE_299637:        85 03         STA $03                   
CODE_299639:        84 01         STY $01                   
CODE_29963B:        84 03         STY $03                   
CODE_29963D:        84 05         STY $05                   
CODE_29963F:        A8            TAY                       
CODE_299640:        F0 07         BEQ CODE_299649           
CODE_299642:        E6 01         INC $01                   
CODE_299644:        88            DEY                       
CODE_299645:        F0 02         BEQ CODE_299649           
CODE_299647:        E6 05         INC $05                   
CODE_299649:        A5 08         LDA $08                   
CODE_29964B:        C9 03         CMP #$03                  
CODE_29964D:        B0 0C         BCS CODE_29965B                   
CODE_29964F:        4A            LSR A                     
CODE_299650:        85 00         STA $00                   
CODE_299652:        85 04         STA $04                   
CODE_299654:        A9 00         LDA #$00                  
CODE_299656:        85 02         STA $02                   
CODE_299658:        4C 75 96      JMP CODE_299675           

CODE_29965B:        A0 FF         LDY #$FF                  
CODE_29965D:        38            SEC                       
CODE_29965E:        E9 03         SBC #$03                  
CODE_299660:        C8            INY                       
CODE_299661:        B0 FB         BCS CODE_29965E                   
CODE_299663:        69 03         ADC #$03                  
CODE_299665:        84 00         STY $00                   
CODE_299667:        84 02         STY $02                   
CODE_299669:        84 04         STY $04                   
CODE_29966B:        A8            TAY                       
CODE_29966C:        F0 07         BEQ CODE_299675           
CODE_29966E:        E6 00         INC $00                   
CODE_299670:        88            DEY                       
CODE_299671:        F0 02         BEQ CODE_299675           
CODE_299673:        E6 04         INC $04                   
CODE_299675:        B5 94         LDA $94,x                 
CODE_299677:        29 30         AND #$30                  
CODE_299679:        F0 25         BEQ CODE_2996A0           
CODE_29967B:        C9 10         CMP #$10                  
CODE_29967D:        F0 07         BEQ CODE_299686           
CODE_29967F:        C9 30         CMP #$30                  
CODE_299681:        F0 20         BEQ CODE_2996A3           
CODE_299683:        20 A3 96      JSR CODE_2996A3           
CODE_299686:        A2 01         LDX #$01                  
CODE_299688:        B5 00         LDA $00,x                 
CODE_29968A:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_29968E:        95 00         STA $00,x                 
CODE_299690:        B5 02         LDA $02,x                 
CODE_299692:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_299696:        95 02         STA $02,x                 
CODE_299698:        B5 04         LDA $04,x                 
CODE_29969A:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_29969E:        95 04         STA $04,x                 
CODE_2996A0:        A6 9B         LDX $9B                   
CODE_2996A2:        60            RTS                       

CODE_2996A3:        A2 00         LDX #$00                  
CODE_2996A5:        F0 E1         BEQ CODE_299688           
CODE_2996A7:        B5 C6         LDA $C6,x                 
CODE_2996A9:        85 DA         STA $DA                   
CODE_2996AB:        B5 C7         LDA $C7,x                 
CODE_2996AD:        85 DB         STA $DB                   
CODE_2996AF:        22 27 A2 27   JSL CODE_27A227           
CODE_2996B3:        20 F6 97      JSR CODE_2997F6           
CODE_2996B6:        C2 10         REP #$10                  
CODE_2996B8:        A4 DA         LDY $DA                   
CODE_2996BA:        A5 0D         LDA $0D                   
CODE_2996BC:        99 01 08      STA $0801,y               
CODE_2996BF:        18            CLC                       
CODE_2996C0:        65 00         ADC $00                   
CODE_2996C2:        99 05 08      STA $0805,y               
CODE_2996C5:        18            CLC                       
CODE_2996C6:        65 02         ADC $02                   
CODE_2996C8:        99 09 08      STA $0809,y               
CODE_2996CB:        18            CLC                       
CODE_2996CC:        65 04         ADC $04                   
CODE_2996CE:        99 0D 08      STA $080D,y               
CODE_2996D1:        A5 0D         LDA $0D                   
CODE_2996D3:        38            SEC                       
CODE_2996D4:        E5 00         SBC $00                   
CODE_2996D6:        99 11 08      STA $0811,y               
CODE_2996D9:        38            SEC                       
CODE_2996DA:        E5 02         SBC $02                   
CODE_2996DC:        99 15 08      STA $0815,y               
CODE_2996DF:        38            SEC                       
CODE_2996E0:        E5 04         SBC $04                   
CODE_2996E2:        B4 C6         LDY $C6,x                 
CODE_2996E4:        99 01 08      STA $0801,y               
CODE_2996E7:        18            CLC                       
CODE_2996E8:        69 08         ADC #$08                  
CODE_2996EA:        99 19 08      STA $0819,y               
CODE_2996ED:        A4 DA         LDY $DA                   
CODE_2996EF:        B9 01 08      LDA $0801,y               
CODE_2996F2:        18            CLC                       
CODE_2996F3:        69 08         ADC #$08                  
CODE_2996F5:        99 19 08      STA $0819,y               
CODE_2996F8:        B9 05 08      LDA $0805,y               
CODE_2996FB:        18            CLC                       
CODE_2996FC:        69 08         ADC #$08                  
CODE_2996FE:        99 1D 08      STA $081D,y               
CODE_299701:        B9 09 08      LDA $0809,y               
CODE_299704:        18            CLC                       
CODE_299705:        69 08         ADC #$08                  
CODE_299707:        99 21 08      STA $0821,y               
CODE_29970A:        B9 0D 08      LDA $080D,y               
CODE_29970D:        18            CLC                       
CODE_29970E:        69 08         ADC #$08                  
CODE_299710:        99 25 08      STA $0825,y               
CODE_299713:        B9 11 08      LDA $0811,y               
CODE_299716:        18            CLC                       
CODE_299717:        69 08         ADC #$08                  
CODE_299719:        99 29 08      STA $0829,y               
CODE_29971C:        B9 15 08      LDA $0815,y               
CODE_29971F:        18            CLC                       
CODE_299720:        69 08         ADC #$08                  
CODE_299722:        99 2D 08      STA $082D,y               
CODE_299725:        A5 0E         LDA $0E                   
CODE_299727:        99 00 08      STA $0800,y               
CODE_29972A:        99 18 08      STA $0818,y               
CODE_29972D:        18            CLC                       
CODE_29972E:        65 01         ADC $01                   
CODE_299730:        99 04 08      STA $0804,y               
CODE_299733:        99 1C 08      STA $081C,y               
CODE_299736:        18            CLC                       
CODE_299737:        65 03         ADC $03                   
CODE_299739:        99 08 08      STA $0808,y               
CODE_29973C:        99 20 08      STA $0820,y               
CODE_29973F:        18            CLC                       
CODE_299740:        65 05         ADC $05                   
CODE_299742:        99 0C 08      STA $080C,y               
CODE_299745:        99 24 08      STA $0824,y               
CODE_299748:        A5 0E         LDA $0E                   
CODE_29974A:        38            SEC                       
CODE_29974B:        E5 01         SBC $01                   
CODE_29974D:        99 10 08      STA $0810,y               
CODE_299750:        99 28 08      STA $0828,y               
CODE_299753:        38            SEC                       
CODE_299754:        E5 03         SBC $03                   
CODE_299756:        99 14 08      STA $0814,y               
CODE_299759:        99 2C 08      STA $082C,y               
CODE_29975C:        38            SEC                       
CODE_29975D:        E5 05         SBC $05                   
CODE_29975F:        B4 C6         LDY $C6,x                 
CODE_299761:        99 00 08      STA $0800,y               
CODE_299764:        99 18 08      STA $0818,y               
CODE_299767:        B5 C6         LDA $C6,x                 
CODE_299769:        85 D8         STA $D8                   
CODE_29976B:        B5 C7         LDA $C7,x                 
CODE_29976D:        85 D9         STA $D9                   
CODE_29976F:        A4 DA         LDY $DA                   
CODE_299771:        A2 06 00      LDX #$0006                
CODE_299774:        E0 00 00      CPX #$0000                
CODE_299777:        D0 02         BNE CODE_29977B           
CODE_299779:        A4 D8         LDY $D8                   
CODE_29977B:        A5 0C         LDA $0C                   
CODE_29977D:        C9 FF         CMP #$FF                  
CODE_29977F:        F0 07         BEQ CODE_299788           
CODE_299781:        B9 01 08      LDA $0801,y               
CODE_299784:        C9 C2         CMP #$C2                  
CODE_299786:        90 0A         BCC CODE_299792           
CODE_299788:        A9 F0         LDA #$F0                  
CODE_29978A:        99 01 08      STA $0801,y               
CODE_29978D:        99 19 08      STA $0819,y               
CODE_299790:        D0 18         BNE CODE_2997AA           
CODE_299792:        A9 22         LDA #$22                  
CODE_299794:        E0 06 00      CPX #$0006                
CODE_299797:        D0 02         BNE CODE_29979B           
CODE_299799:        A9 24         LDA #$24                  
CODE_29979B:        99 03 08      STA $0803,y               
CODE_29979E:        99 1B 08      STA $081B,y               
CODE_2997A1:        A9 EC         LDA #$EC                  
CODE_2997A3:        99 02 08      STA $0802,y               
CODE_2997A6:        1A            INC A                     
CODE_2997A7:        99 1A 08      STA $081A,y               
CODE_2997AA:        5A            PHY                       
CODE_2997AB:        C2 20         REP #$20                  
CODE_2997AD:        98            TYA                       
CODE_2997AE:        4A            LSR A                     
CODE_2997AF:        4A            LSR A                     
CODE_2997B0:        A8            TAY                       
CODE_2997B1:        E2 20         SEP #$20                  
CODE_2997B3:        A5 0C         LDA $0C                   
CODE_2997B5:        3D 5A C6      AND.w DATA_21C65A,x               
CODE_2997B8:        F0 02         BEQ CODE_2997BC           
CODE_2997BA:        A9 01         LDA #$01                  
CODE_2997BC:        99 20 0A      STA $0A20,y               
CODE_2997BF:        99 26 0A      STA $0A26,y               
CODE_2997C2:        7A            PLY                       
CODE_2997C3:        C8            INY                       
CODE_2997C4:        C8            INY                       
CODE_2997C5:        C8            INY                       
CODE_2997C6:        C8            INY                       
CODE_2997C7:        CA            DEX                       
CODE_2997C8:        10 AA         BPL CODE_299774           
CODE_2997CA:        E2 10         SEP #$10                  
CODE_2997CC:        A6 9B         LDX $9B                   
CODE_2997CE:        60            RTS                       

CODE_2997CF:        A5 9C         LDA $9C                   
CODE_2997D1:        D0 22         BNE CODE_2997F5           
CODE_2997D3:        BD 68 00      LDA $0068,x               
CODE_2997D6:        48            PHA                       
CODE_2997D7:        0A            ASL A                     
CODE_2997D8:        0A            ASL A                     
CODE_2997D9:        0A            ASL A                     
CODE_2997DA:        0A            ASL A                     
CODE_2997DB:        18            CLC                       
CODE_2997DC:        7D 89 06      ADC $0689,x               
CODE_2997DF:        9D 89 06      STA $0689,x               
CODE_2997E2:        68            PLA                       
CODE_2997E3:        08            PHP                       
CODE_2997E4:        4A            LSR A                     
CODE_2997E5:        4A            LSR A                     
CODE_2997E6:        4A            LSR A                     
CODE_2997E7:        4A            LSR A                     
CODE_2997E8:        C9 08         CMP #$08                  
CODE_2997EA:        90 02         BCC CODE_2997EE           
CODE_2997EC:        09 F0         ORA #$F0                  
CODE_2997EE:        28            PLP                       
CODE_2997EF:        75 94         ADC $94,x                 
CODE_2997F1:        29 3F         AND #$3F                  
CODE_2997F3:        95 94         STA $94,x                 
CODE_2997F5:        60            RTS                       

CODE_2997F6:        A9 00         LDA #$00                  
CODE_2997F8:        85 0C         STA $0C                   
CODE_2997FA:        85 0A         STA $0A                   
CODE_2997FC:        A5 01         LDA $01                   
CODE_2997FE:        18            CLC                       
CODE_2997FF:        65 03         ADC $03                   
CODE_299801:        18            CLC                       
CODE_299802:        65 05         ADC $05                   
CODE_299804:        85 0B         STA $0B                   
CODE_299806:        48            PHA                       
CODE_299807:        B5 5F         LDA $5F,x                 
CODE_299809:        38            SEC                       
CODE_29980A:        E5 0B         SBC $0B                   
CODE_29980C:        85 0B         STA $0B                   
CODE_29980E:        68            PLA                       
CODE_29980F:        10 02         BPL CODE_299813           
CODE_299811:        C6 0A         DEC $0A                   
CODE_299813:        B5 44         LDA $44,x                 
CODE_299815:        E5 0A         SBC $0A                   
CODE_299817:        85 0A         STA $0A                   
CODE_299819:        A0 00         LDY #$00                  
CODE_29981B:        A5 0B         LDA $0B                   
CODE_29981D:        CD 10 02      CMP $0210                 
CODE_299820:        A5 0A         LDA $0A                   
CODE_299822:        E5 12         SBC $12                   
CODE_299824:        F0 07         BEQ CODE_29982D           
CODE_299826:        B9 53 C6      LDA.w DATA_21C653,y               
CODE_299829:        05 0C         ORA $0C                   
CODE_29982B:        85 0C         STA $0C                   
CODE_29982D:        86 0E         STX $0E                   
CODE_29982F:        BE 4D C6      LDX.w DATA_21C64D,y               
CODE_299832:        B5 00         LDA $00,x                 
CODE_299834:        48            PHA                       
CODE_299835:        18            CLC                       
CODE_299836:        65 0B         ADC $0B                   
CODE_299838:        85 0B         STA $0B                   
CODE_29983A:        A6 0E         LDX $0E                   
CODE_29983C:        84 0F         STY $0F                   
CODE_29983E:        A0 00         LDY #$00                  
CODE_299840:        68            PLA                       
CODE_299841:        10 01         BPL CODE_299844           
CODE_299843:        88            DEY                       
CODE_299844:        98            TYA                       
CODE_299845:        65 0A         ADC $0A                   
CODE_299847:        85 0A         STA $0A                   
CODE_299849:        A4 0F         LDY $0F                   
CODE_29984B:        C8            INY                       
CODE_29984C:        C0 07         CPY #$07                  
CODE_29984E:        D0 CB         BNE CODE_29981B           
CODE_299850:        B5 5F         LDA $5F,x                 
CODE_299852:        38            SEC                       
CODE_299853:        ED 10 02      SBC $0210                 
CODE_299856:        85 0E         STA $0E                   
CODE_299858:        B5 71         LDA $71,x                 
CODE_29985A:        38            SEC                       
CODE_29985B:        ED 43 05      SBC $0543                 
CODE_29985E:        85 0D         STA $0D                   
CODE_299860:        B5 56         LDA $56,x                 
CODE_299862:        69 00         ADC #$00                  
CODE_299864:        C9 01         CMP #$01                  
CODE_299866:        D0 06         BNE CODE_29986E           
CODE_299868:        A5 0D         LDA $0D                   
CODE_29986A:        C9 E0         CMP #$E0                  
CODE_29986C:        90 04         BCC CODE_299872           
CODE_29986E:        A9 FF         LDA #$FF                  
CODE_299870:        85 0C         STA $0C                   
CODE_299872:        60            RTS                       

CODE_299873:        B5 71         LDA $71,x                 
CODE_299875:        D0 02         BNE CODE_299879           
CODE_299877:        D6 56         DEC $56,x                 
CODE_299879:        D6 71         DEC $71,x                 
CODE_29987B:        B4 44         LDY $44,x                 
CODE_29987D:        AD E3 07      LDA $07E3                 
CODE_299880:        39 61 C6      AND.w DATA_21C661,y               
CODE_299883:        F0 03         BEQ CODE_299888           
CODE_299885:        FE 69 06      INC $0669,x               
CODE_299888:        6B            RTL                       

CODE_299889:        22 C3 9B 27   JSL CODE_279BC3           
CODE_29988D:        20 94 99      JSR CODE_299994           
CODE_299890:        A5 9C         LDA $9C                   
CODE_299892:        D0 F4         BNE CODE_299888           
CODE_299894:        B5 68         LDA $68,x                 
CODE_299896:        F0 14         BEQ CODE_2998AC           
CODE_299898:        BD 20 05      LDA $0520,x               
CODE_29989B:        D0 0F         BNE CODE_2998AC           
CODE_29989D:        A0 04         LDY #$04                  
CODE_29989F:        B9 61 06      LDA $0661,y               
CODE_2998A2:        F0 03         BEQ CODE_2998A7           
CODE_2998A4:        88            DEY                       
CODE_2998A5:        D0 F8         BNE CODE_29989F           
CODE_2998A7:        20 59 99      JSR CODE_299959           
CODE_2998AA:        D6 68         DEC $68,x                 
CODE_2998AC:        BC 18 05      LDY $0518,x               
CODE_2998AF:        B9 69 C6      LDA.w DATA_21C669,y               
CODE_2998B2:        95 9E         STA $9E,x                 
CODE_2998B4:        22 D8 A7 27   JSL CODE_27A7D8           
CODE_2998B8:        22 12 A3 27   JSL CODE_27A312           
CODE_2998BC:        90 6A         BCC CODE_299928           
CODE_2998BE:        A5 82         LDA $82                   
CODE_2998C0:        18            CLC                       
CODE_2998C1:        69 18         ADC #$18                  
CODE_2998C3:        D5 83         CMP $83,x                 
CODE_2998C5:        B0 26         BCS CODE_2998ED                   
CODE_2998C7:        A5 9D         LDA $9D                   
CODE_2998C9:        30 21         BMI CODE_2998EC           
CODE_2998CB:        B5 71         LDA $71,x                 
CODE_2998CD:        38            SEC                       
CODE_2998CE:        E9 1F         SBC #$1F                  
CODE_2998D0:        85 70         STA $70                   
CODE_2998D2:        B5 56         LDA $56,x                 
CODE_2998D4:        E9 00         SBC #$00                  
CODE_2998D6:        85 55         STA $55                   
CODE_2998D8:        A0 00         LDY #$00                  
CODE_2998DA:        84 A6         STY $A6                   
CODE_2998DC:        AD 4D 07      LDA $074D                 
CODE_2998DF:        10 01         BPL CODE_2998E2           
CODE_2998E1:        88            DEY                       
CODE_2998E2:        18            CLC                       
CODE_2998E3:        65 5E         ADC $5E                   
CODE_2998E5:        85 5E         STA $5E                   
CODE_2998E7:        98            TYA                       
CODE_2998E8:        65 43         ADC $43                   
CODE_2998EA:        85 43         STA $43                   
CODE_2998EC:        6B            RTL                       

CODE_2998ED:        A9 E8         LDA #$E8                  
CODE_2998EF:        A4 BB         LDY $BB                   
CODE_2998F1:        F0 05         BEQ CODE_2998F8           
CODE_2998F3:        AC 6F 05      LDY $056F                 
CODE_2998F6:        F0 02         BEQ CODE_2998FA           
CODE_2998F8:        A9 F8         LDA #$F8                  
CODE_2998FA:        18            CLC                       
CODE_2998FB:        65 82         ADC $82                   
CODE_2998FD:        D5 83         CMP $83,x                 
CODE_2998FF:        90 11         BCC CODE_299912           
CODE_299901:        A5 9D         LDA $9D                   
CODE_299903:        10 0C         BPL CODE_299911           
CODE_299905:        A9 01         LDA #$01                  
CODE_299907:        8D 00 12      STA $1200                 
CODE_29990A:        A9 10         LDA #$10                  
CODE_29990C:        85 9D         STA $9D                   
CODE_29990E:        20 2B 99      JSR CODE_29992B           
CODE_299911:        6B            RTL                       

CODE_299912:        22 37 A8 27   JSL CODE_27A837           
CODE_299916:        C8            INY                       
CODE_299917:        A5 17         LDA $17                   
CODE_299919:        29 03         AND #$03                  
CODE_29991B:        85 00         STA $00                   
CODE_29991D:        A9 00         LDA #$00                  
CODE_29991F:        C4 00         CPY $00                   
CODE_299921:        D0 03         BNE CODE_299926           
CODE_299923:        B9 28 99      LDA.w DATA_219928,y               
CODE_299926:        85 8B         STA $8B                   
CODE_299928:        6B            RTL                       

DATA_299929:        db $04,$FC

CODE_29992B:        BD 69 06      LDA $0669,x               
CODE_29992E:        D0 28         BNE CODE_299958           
CODE_299930:        A0 05         LDY #$05                  
CODE_299932:        20 59 99      JSR CODE_299959           
CODE_299935:        BD 71 06      LDA $0671,x               
CODE_299938:        C9 94         CMP #$94                  
CODE_29993A:        D0 04         BNE CODE_299940           
CODE_29993C:        A9 02         LDA #$02                  
CODE_29993E:        95 68         STA $68,x                 
CODE_299940:        A9 40         LDA #$40                  
CODE_299942:        8D F3 1C      STA $1CF3                 
CODE_299945:        A9 0A         LDA #$0A                  
CODE_299947:        9D 18 05      STA $0518,x               
CODE_29994A:        FE 69 06      INC $0669,x               
CODE_29994D:        B4 44         LDY $44,x                 
CODE_29994F:        AD E3 07      LDA $07E3                 
CODE_299952:        19 61 C6      ORA.w DATA_21C661,y               
CODE_299955:        8D E3 07      STA $07E3                 
CODE_299958:        60            RTS                       

CODE_299959:        A9 01         LDA #$01                  
CODE_29995B:        99 61 06      STA $0661,y               
CODE_29995E:        B5 5F         LDA $5F,x                 
CODE_299960:        18            CLC                       
CODE_299961:        69 08         ADC #$08                  
CODE_299963:        99 5F 00      STA $005F,y               
CODE_299966:        B5 44         LDA $44,x                 
CODE_299968:        69 00         ADC #$00                  
CODE_29996A:        99 44 00      STA $0044,y               
CODE_29996D:        B5 71         LDA $71,x                 
CODE_29996F:        99 71 00      STA $0071,y               
CODE_299972:        B5 56         LDA $56,x                 
CODE_299974:        99 56 00      STA $0056,y               
CODE_299977:        BD 71 06      LDA $0671,x               
CODE_29997A:        AA            TAX                       
CODE_29997B:        BD DF C5      LDA.w DATA_21C5DF,x               
CODE_29997E:        99 71 06      STA $0671,y               
CODE_299981:        BD E6 C5      LDA.w DATA_21C5E7-1,x               
CODE_299984:        8D 86 05      STA $0586                 
CODE_299987:        A9 01         LDA #$01                  
CODE_299989:        8D 7D 05      STA $057D                 
CODE_29998C:        A6 9B         LDX $9B                   
CODE_29998E:        A9 50         LDA #$50                  
CODE_299990:        9D 20 05      STA $0520,x               
CODE_299993:        60            RTS                       

CODE_299994:        22 F8 9D 27   JSL CODE_279DF8           
CODE_299998:        A6 9B         LDX $9B                   
CODE_29999A:        C2 10         REP #$10                  
CODE_29999C:        B4 C6         LDY $C6,x                 
CODE_29999E:        84 0A         STY $0A                   
CODE_2999A0:        A5 07         LDA $07                   
CODE_2999A2:        85 0E         STA $0E                   
CODE_2999A4:        BD 69 06      LDA $0669,x               
CODE_2999A7:        A2 06 00      LDX #$0006                
CODE_2999AA:        C9 00         CMP #$00                  
CODE_2999AC:        F0 01         BEQ CODE_2999AF           
CODE_2999AE:        E8            INX                       
CODE_2999AF:        06 0E         ASL $0E                   
CODE_2999B1:        B0 24         BCS CODE_2999D7                   
CODE_2999B3:        A5 04         LDA $04                   
CODE_2999B5:        85 0F         STA $0F                   
CODE_2999B7:        A5 00         LDA $00                   
CODE_2999B9:        46 0F         LSR $0F                   
CODE_2999BB:        B0 09         BCS CODE_2999C6                   
CODE_2999BD:        99 01 08      STA $0801,y               
CODE_2999C0:        18            CLC                       
CODE_2999C1:        69 08         ADC #$08                  
CODE_2999C3:        99 05 08      STA $0805,y               
CODE_2999C6:        A5 00         LDA $00                   
CODE_2999C8:        46 0F         LSR $0F                   
CODE_2999CA:        B0 0B         BCS CODE_2999D7                   
CODE_2999CC:        69 10         ADC #$10                  
CODE_2999CE:        99 09 08      STA $0809,y               
CODE_2999D1:        18            CLC                       
CODE_2999D2:        69 08         ADC #$08                  
CODE_2999D4:        99 0D 08      STA $080D,y               
CODE_2999D7:        BD 81 C6      LDA.w DATA_21C681,x               
CODE_2999DA:        99 02 08      STA $0802,y               
CODE_2999DD:        1A            INC A                     
CODE_2999DE:        99 06 08      STA $0806,y               
CODE_2999E1:        BD 89 C6      LDA.w DATA_21C689,x               
CODE_2999E4:        99 0A 08      STA $080A,y               
CODE_2999E7:        1A            INC A                     
CODE_2999E8:        99 0E 08      STA $080E,y               
CODE_2999EB:        A9 21         LDA #$21                  
CODE_2999ED:        99 03 08      STA $0803,y               
CODE_2999F0:        99 07 08      STA $0807,y               
CODE_2999F3:        99 0B 08      STA $080B,y               
CODE_2999F6:        99 0F 08      STA $080F,y               
CODE_2999F9:        A5 01         LDA $01                   
CODE_2999FB:        99 00 08      STA $0800,y               
CODE_2999FE:        99 04 08      STA $0804,y               
CODE_299A01:        99 08 08      STA $0808,y               
CODE_299A04:        99 0C 08      STA $080C,y               
CODE_299A07:        18            CLC                       
CODE_299A08:        69 08         ADC #$08                  
CODE_299A0A:        85 01         STA $01                   
CODE_299A0C:        C2 20         REP #$20                  
CODE_299A0E:        5A            PHY                       
CODE_299A0F:        98            TYA                       
CODE_299A10:        4A            LSR A                     
CODE_299A11:        4A            LSR A                     
CODE_299A12:        A8            TAY                       
CODE_299A13:        A9 00 00      LDA #$0000                
CODE_299A16:        99 20 0A      STA $0A20,y               
CODE_299A19:        99 22 0A      STA $0A22,y               
CODE_299A1C:        7A            PLY                       
CODE_299A1D:        98            TYA                       
CODE_299A1E:        18            CLC                       
CODE_299A1F:        69 10 00      ADC #$0010                
CODE_299A22:        A8            TAY                       
CODE_299A23:        E2 20         SEP #$20                  
CODE_299A25:        CA            DEX                       
CODE_299A26:        CA            DEX                       
CODE_299A27:        30 1F         BMI CODE_299A48           
CODE_299A29:        E0 02 00      CPX #$0002                
CODE_299A2C:        90 03         BCC CODE_299A31           
CODE_299A2E:        4C AF 99      JMP CODE_2999AF           

CODE_299A31:        E2 10         SEP #$10                  
CODE_299A33:        DA            PHX                       
CODE_299A34:        A6 9B         LDX $9B                   
CODE_299A36:        22 9D A1 27   JSL CODE_27A19D           
CODE_299A3A:        FA            PLX                       
CODE_299A3B:        A4 9B         LDY $9B                   
CODE_299A3D:        C2 30         REP #$30                  
CODE_299A3F:        B9 C6 00      LDA $00C6,y               
CODE_299A42:        A8            TAY                       
CODE_299A43:        E2 20         SEP #$20                  
CODE_299A45:        4C AF 99      JMP CODE_2999AF           

CODE_299A48:        E2 10         SEP #$10                  
CODE_299A4A:        A6 9B         LDX $9B                   
CODE_299A4C:        BD 20 05      LDA $0520,x               
CODE_299A4F:        F0 44         BEQ CODE_299A95           
CODE_299A51:        C2 10         REP #$10                  
CODE_299A53:        A4 0A         LDY $0A                   
CODE_299A55:        A2 00 00      LDX #$0000                
CODE_299A58:        C2 20         REP #$20                  
CODE_299A5A:        B9 10 08      LDA $0810,y               
CODE_299A5D:        9D 30 08      STA $0830,x               
CODE_299A60:        C8            INY                       
CODE_299A61:        C8            INY                       
CODE_299A62:        E8            INX                       
CODE_299A63:        E8            INX                       
CODE_299A64:        E0 10 00      CPX #$0010                
CODE_299A67:        B0 0D         BCS CODE_299A76                   
CODE_299A69:        E0 08 00      CPX #$0008                
CODE_299A6C:        D0 EA         BNE CODE_299A58           
CODE_299A6E:        98            TYA                       
CODE_299A6F:        18            CLC                       
CODE_299A70:        69 08 00      ADC #$0008                
CODE_299A73:        A8            TAY                       
CODE_299A74:        D0 E2         BNE CODE_299A58           
CODE_299A76:        A9 00 00      LDA #$0000                
CODE_299A79:        8D 2C 0A      STA $0A2C                 
CODE_299A7C:        8D 2D 0A      STA $0A2D                 
CODE_299A7F:        8D 2E 0A      STA $0A2E                 
CODE_299A82:        8D 2F 0A      STA $0A2F                 
CODE_299A85:        E2 20         SEP #$20                  
CODE_299A87:        A9 F0         LDA #$F0                  
CODE_299A89:        99 FD 07      STA $07FD,y               
CODE_299A8C:        99 F9 07      STA $07F9,y               
CODE_299A8F:        99 0D 08      STA $080D,y               
CODE_299A92:        99 09 08      STA $0809,y               
CODE_299A95:        E2 10         SEP #$10                  
CODE_299A97:        A6 9B         LDX $9B                   
CODE_299A99:        60            RTS                       

CODE_299A9A:        20 9E 9A      JSR CODE_299A9E           
CODE_299A9D:        6B            RTL                       

CODE_299A9E:        20 00 A1      JSR CODE_29A100           
CODE_299AA1:        AD 7C 05      LDA $057C                 
CODE_299AA4:        F0 2E         BEQ CODE_299AD4           
CODE_299AA6:        A2 06         LDX #$06                  
CODE_299AA8:        BD 61 06      LDA $0661,x               
CODE_299AAB:        F0 0E         BEQ CODE_299ABB           
CODE_299AAD:        E8            INX                       
CODE_299AAE:        BD 61 06      LDA $0661,x               
CODE_299AB1:        F0 08         BEQ CODE_299ABB           
CODE_299AB3:        A9 00         LDA #$00                  
CODE_299AB5:        8D 7C 05      STA $057C                 
CODE_299AB8:        4C D4 9A      JMP CODE_299AD4           

CODE_299ABB:        A0 06         LDY #$06                  
CODE_299ABD:        AD 7D 05      LDA $057D                 
CODE_299AC0:        29 7F         AND #$7F                  
CODE_299AC2:        C9 02         CMP #$02                  
CODE_299AC4:        30 02         BMI CODE_299AC8           
CODE_299AC6:        A0 1B         LDY #$1B                  
CODE_299AC8:        98            TYA                       
CODE_299AC9:        9D 71 06      STA $0671,x               
CODE_299ACC:        A9 01         LDA #$01                  
CODE_299ACE:        9D 61 06      STA $0661,x               
CODE_299AD1:        4C DF 9A      JMP CODE_299ADF           

CODE_299AD4:        AD 25 04      LDA $0425                 
CODE_299AD7:        F0 03         BEQ CODE_299ADC           
CODE_299AD9:        4C CD 9D      JMP CODE_299DCD           

CODE_299ADC:        4C E0 9A      JMP CODE_299AE0           

CODE_299ADF:        60            RTS                       

CODE_299AE0:        A4 25         LDY $25                   
CODE_299AE2:        AD 10 02      LDA $0210                 
CODE_299AE5:        18            CLC                       
CODE_299AE6:        79 99 C6      ADC.w DATA_21C699,y               
CODE_299AE9:        29 F0         AND #$F0                  
CODE_299AEB:        85 05         STA $05                   
CODE_299AED:        A5 12         LDA $12                   
CODE_299AEF:        79 9B C6      ADC.w DATA_21C69B,y               
CODE_299AF2:        85 06         STA $06                   
CODE_299AF4:        C5 22         CMP $22                   
CODE_299AF6:        F0 05         BEQ CODE_299AFD           
CODE_299AF8:        90 03         BCC CODE_299AFD           
CODE_299AFA:        4C 42 9C      JMP CODE_299C42           

CODE_299AFD:        A6 06         LDX $06                   
CODE_299AFF:        BD 00 1B      LDA $1B00,x               
CODE_299B02:        30 19         BMI CODE_299B1D           
CODE_299B04:        85 01         STA $01                   
CODE_299B06:        AA            TAX                       
CODE_299B07:        0A            ASL A                     
CODE_299B08:        18            CLC                       
CODE_299B09:        65 01         ADC $01                   
CODE_299B0B:        A8            TAY                       
CODE_299B0C:        88            DEY                       
CODE_299B0D:        CA            DEX                       
CODE_299B0E:        E8            INX                       
CODE_299B0F:        C8            INY                       
CODE_299B10:        C8            INY                       
CODE_299B11:        C8            INY                       
CODE_299B12:        B9 40 1B      LDA $1B40,y               
CODE_299B15:        4A            LSR A                     
CODE_299B16:        4A            LSR A                     
CODE_299B17:        4A            LSR A                     
CODE_299B18:        4A            LSR A                     
CODE_299B19:        C5 06         CMP $06                   
CODE_299B1B:        F0 01         BEQ CODE_299B1E           
CODE_299B1D:        60            RTS                       

CODE_299B1E:        B9 3F 1B      LDA $1B3F,y               
CODE_299B21:        C9 FF         CMP #$FF                  
CODE_299B23:        F0 F8         BEQ CODE_299B1D           
CODE_299B25:        BD 10 1B      LDA $1B10,x               
CODE_299B28:        C9 00         CMP #$00                  
CODE_299B2A:        30 E2         BMI CODE_299B0E           
CODE_299B2C:        B9 40 1B      LDA $1B40,y               
CODE_299B2F:        0A            ASL A                     
CODE_299B30:        0A            ASL A                     
CODE_299B31:        0A            ASL A                     
CODE_299B32:        0A            ASL A                     
CODE_299B33:        C5 05         CMP $05                   
CODE_299B35:        D0 D7         BNE CODE_299B0E           
CODE_299B37:        86 01         STX $01                   
CODE_299B39:        85 00         STA $00                   
CODE_299B3B:        B9 3F 1B      LDA $1B3F,y               
CODE_299B3E:        C9 D5         CMP #$D5                  
CODE_299B40:        D0 05         BNE CODE_299B47           
CODE_299B42:        EE FD 05      INC $05FD                 
CODE_299B45:        D0 24         BNE CODE_299B6B           
CODE_299B47:        C9 D4         CMP #$D4                  
CODE_299B49:        D0 15         BNE CODE_299B60           
CODE_299B4B:        B9 41 1B      LDA $1B41,y               
CODE_299B4E:        48            PHA                       
CODE_299B4F:        29 01         AND #$01                  
CODE_299B51:        AA            TAX                       
CODE_299B52:        1A            INC A                     
CODE_299B53:        8F 64 39 7E   STA $7E3964               
CODE_299B57:        68            PLA                       
CODE_299B58:        29 7F         AND #$7F                  
CODE_299B5A:        8F 65 39 7E   STA $7E3965               
CODE_299B5E:        10 0B         BPL CODE_299B6B           
CODE_299B60:        C9 D3         CMP #$D3                  
CODE_299B62:        D0 14         BNE CODE_299B78           
CODE_299B64:        98            TYA                       
CODE_299B65:        48            PHA                       
CODE_299B66:        20 43 9C      JSR CODE_299C43           
CODE_299B69:        68            PLA                       
CODE_299B6A:        A8            TAY                       
CODE_299B6B:        A6 01         LDX $01                   
CODE_299B6D:        BD 10 1B      LDA $1B10,x               
CODE_299B70:        09 80         ORA #$80                  
CODE_299B72:        9D 10 1B      STA $1B10,x               
CODE_299B75:        4C 0E 9B      JMP CODE_299B0E           

CODE_299B78:        B9 3F 1B      LDA $1B3F,y               
CODE_299B7B:        C9 D6         CMP #$D6                  
CODE_299B7D:        D0 0A         BNE CODE_299B89           
CODE_299B7F:        B9 41 1B      LDA $1B41,y               
CODE_299B82:        8F 63 39 7E   STA $7E3963               
CODE_299B86:        4C 6B 9B      JMP CODE_299B6B           

CODE_299B89:        C9 B4         CMP #$B4                  
CODE_299B8B:        90 2A         BCC CODE_299BB7           
CODE_299B8D:        C9 D1         CMP #$D1                  
CODE_299B8F:        D0 06         BNE CODE_299B97           
CODE_299B91:        20 8B 9C      JSR CODE_299C8B           
CODE_299B94:        4C 0E 9B      JMP CODE_299B0E           

CODE_299B97:        C9 D2         CMP #$D2                  
CODE_299B99:        D0 06         BNE CODE_299BA1           
CODE_299B9B:        20 8B 9C      JSR CODE_299C8B           
CODE_299B9E:        4C 0E 9B      JMP CODE_299B0E           

CODE_299BA1:        C9 BC         CMP #$BC                  
CODE_299BA3:        90 0B         BCC CODE_299BB0           
CODE_299BA5:        E9 BC         SBC #$BC                  
CODE_299BA7:        18            CLC                       
CODE_299BA8:        69 01         ADC #$01                  
CODE_299BAA:        20 2D 9D      JSR CODE_299D2D           
CODE_299BAD:        4C 0E 9B      JMP CODE_299B0E           

CODE_299BB0:        38            SEC                       
CODE_299BB1:        E9 B3         SBC #$B3                  
CODE_299BB3:        8D 66 05      STA $0566                 
CODE_299BB6:        60            RTS                       

CODE_299BB7:        C9 41         CMP #$41                  
CODE_299BB9:        D0 04         BNE CODE_299BBF           
CODE_299BBB:        A2 06         LDX #$06                  
CODE_299BBD:        D0 0D         BNE CODE_299BCC           
CODE_299BBF:        A2 04         LDX #$04                  
CODE_299BC1:        BD 61 06      LDA $0661,x               
CODE_299BC4:        F0 06         BEQ CODE_299BCC           
CODE_299BC6:        CA            DEX                       
CODE_299BC7:        10 F8         BPL CODE_299BC1           
CODE_299BC9:        4C 42 9C      JMP CODE_299C42           

CODE_299BCC:        A5 00         LDA $00                   
CODE_299BCE:        95 5F         STA $5F,x                 
CODE_299BD0:        9F 32 C5 7F   STA $7FC532,x             
CODE_299BD4:        9F 3A C5 7F   STA $7FC53A,x             
CODE_299BD8:        A5 06         LDA $06                   
CODE_299BDA:        95 44         STA $44,x                 
CODE_299BDC:        9F 42 C5 7F   STA $7FC542,x             
CODE_299BE0:        9F 4A C5 7F   STA $7FC54A,x             
CODE_299BE4:        C8            INY                       
CODE_299BE5:        B9 40 1B      LDA $1B40,y               
CODE_299BE8:        29 F0         AND #$F0                  
CODE_299BEA:        4A            LSR A                     
CODE_299BEB:        4A            LSR A                     
CODE_299BEC:        4A            LSR A                     
CODE_299BED:        4A            LSR A                     
CODE_299BEE:        95 56         STA $56,x                 
CODE_299BF0:        9F 62 C5 7F   STA $7FC562,x             
CODE_299BF4:        9F 6A C5 7F   STA $7FC56A,x             
CODE_299BF8:        B9 40 1B      LDA $1B40,y               
CODE_299BFB:        29 0F         AND #$0F                  
CODE_299BFD:        0A            ASL A                     
CODE_299BFE:        0A            ASL A                     
CODE_299BFF:        0A            ASL A                     
CODE_299C00:        0A            ASL A                     
CODE_299C01:        95 71         STA $71,x                 
CODE_299C03:        9F 52 C5 7F   STA $7FC552,x             
CODE_299C07:        9F 5A C5 7F   STA $7FC55A,x             
CODE_299C0B:        88            DEY                       
CODE_299C0C:        88            DEY                       
CODE_299C0D:        B9 40 1B      LDA $1B40,y               
CODE_299C10:        9D 71 06      STA $0671,x               
CODE_299C13:        A4 01         LDY $01                   
CODE_299C15:        A9 04         LDA #$04                  
CODE_299C17:        9F 72 C5 7F   STA $7FC572,x             
CODE_299C1B:        A9 00         LDA #$00                  
CODE_299C1D:        9F 7A C5 7F   STA $7FC57A,x             
CODE_299C21:        BD 71 06      LDA $0671,x               
CODE_299C24:        C9 43         CMP #$43                  
CODE_299C26:        D0 0B         BNE CODE_299C33           
CODE_299C28:        AD BF 02      LDA $02BF                 
CODE_299C2B:        C9 01         CMP #$01                  
CODE_299C2D:        D0 04         BNE CODE_299C33           
CODE_299C2F:        A9 B0         LDA #$B0                  
CODE_299C31:        95 71         STA $71,x                 
CODE_299C33:        B9 10 1B      LDA $1B10,y               
CODE_299C36:        09 80         ORA #$80                  
CODE_299C38:        99 10 1B      STA $1B10,y               
CODE_299C3B:        98            TYA                       
CODE_299C3C:        9D 59 06      STA $0659,x               
CODE_299C3F:        FE 61 06      INC $0661,x               
CODE_299C42:        60            RTS                       

CODE_299C43:        B9 41 1B      LDA $1B41,y               
CODE_299C46:        C9 60         CMP #$60                  
CODE_299C48:        D0 06         BNE CODE_299C50           
CODE_299C4A:        A9 03         LDA #$03                  
CODE_299C4C:        8D 27 04      STA $0427                 
CODE_299C4F:        60            RTS                       

CODE_299C50:        48            PHA                       
CODE_299C51:        A0 14         LDY #$14                  
CODE_299C53:        A9 00         LDA #$00                  
CODE_299C55:        99 FF 19      STA $19FF,y               
CODE_299C58:        88            DEY                       
CODE_299C59:        D0 FA         BNE CODE_299C55           
CODE_299C5B:        68            PLA                       
CODE_299C5C:        48            PHA                       
CODE_299C5D:        29 0F         AND #$0F                  
CODE_299C5F:        A8            TAY                       
CODE_299C60:        68            PLA                       
CODE_299C61:        4A            LSR A                     
CODE_299C62:        4A            LSR A                     
CODE_299C63:        4A            LSR A                     
CODE_299C64:        4A            LSR A                     
CODE_299C65:        8D 01 1A      STA $1A01                 
CODE_299C68:        C9 03         CMP #$03                  
CODE_299C6A:        B0 12         BCS CODE_299C7E                   
CODE_299C6C:        C9 01         CMP #$01                  
CODE_299C6E:        D0 04         BNE CODE_299C74           
CODE_299C70:        98            TYA                       
CODE_299C71:        09 10         ORA #$10                  
CODE_299C73:        A8            TAY                       
CODE_299C74:        DA            PHX                       
CODE_299C75:        BB            TYX                       
CODE_299C76:        BF 5E AA 27   LDA.l DATA_27AA5E,x             
CODE_299C7A:        8D 03 1A      STA $1A03                 
CODE_299C7D:        FA            PLX                       
CODE_299C7E:        8C 02 1A      STY $1A02                 
CODE_299C81:        AD 16 02      LDA $0216                 
CODE_299C84:        8D 0D 1A      STA $1A0D                 
CODE_299C87:        EE 80 05      INC $0580                 
CODE_299C8A:        60            RTS                       

CODE_299C8B:        8D EF 1C      STA $1CEF                 
CODE_299C8E:        8A            TXA                       
CODE_299C8F:        48            PHA                       
CODE_299C90:        98            TYA                       
CODE_299C91:        48            PHA                       
CODE_299C92:        B9 41 1B      LDA $1B41,y               
CODE_299C95:        29 F0         AND #$F0                  
CODE_299C97:        4A            LSR A                     
CODE_299C98:        4A            LSR A                     
CODE_299C99:        4A            LSR A                     
CODE_299C9A:        4A            LSR A                     
CODE_299C9B:        85 08         STA $08                   
CODE_299C9D:        B9 41 1B      LDA $1B41,y               
CODE_299CA0:        29 0F         AND #$0F                  
CODE_299CA2:        0A            ASL A                     
CODE_299CA3:        0A            ASL A                     
CODE_299CA4:        0A            ASL A                     
CODE_299CA5:        0A            ASL A                     
CODE_299CA6:        85 09         STA $09                   
CODE_299CA8:        A5 06         LDA $06                   
CODE_299CAA:        85 0A         STA $0A                   
CODE_299CAC:        A5 00         LDA $00                   
CODE_299CAE:        85 0B         STA $0B                   
CODE_299CB0:        A6 01         LDX $01                   
CODE_299CB2:        BD 10 1B      LDA $1B10,x               
CODE_299CB5:        09 80         ORA #$80                  
CODE_299CB7:        9D 10 1B      STA $1B10,x               
CODE_299CBA:        A9 02         LDA #$02                  
CODE_299CBC:        85 0C         STA $0C                   
CODE_299CBE:        A2 04         LDX #$04                  
CODE_299CC0:        BD 61 06      LDA $0661,x               
CODE_299CC3:        F0 06         BEQ CODE_299CCB           
CODE_299CC5:        CA            DEX                       
CODE_299CC6:        10 F8         BPL CODE_299CC0           
CODE_299CC8:        4C 24 9D      JMP CODE_299D24           

CODE_299CCB:        22 96 9C 27   JSL CODE_279C96           
CODE_299CCF:        A5 08         LDA $08                   
CODE_299CD1:        95 56         STA $56,x                 
CODE_299CD3:        A5 09         LDA $09                   
CODE_299CD5:        95 71         STA $71,x                 
CODE_299CD7:        A5 0B         LDA $0B                   
CODE_299CD9:        95 5F         STA $5F,x                 
CODE_299CDB:        A5 0A         LDA $0A                   
CODE_299CDD:        95 44         STA $44,x                 
CODE_299CDF:        22 37 A8 27   JSL CODE_27A837           
CODE_299CE3:        B9 9D C6      LDA.w DATA_21C69D,y               
CODE_299CE6:        9D 79 06      STA $0679,x               
CODE_299CE9:        A5 0B         LDA $0B                   
CODE_299CEB:        18            CLC                       
CODE_299CEC:        79 9F C6      ADC.w DATA_21C69F,y               
CODE_299CEF:        85 0B         STA $0B                   
CODE_299CF1:        A5 0A         LDA $0A                   
CODE_299CF3:        79 A1 C6      ADC.w DATA_21C6A1,y               
CODE_299CF6:        85 0A         STA $0A                   
CODE_299CF8:        AD EF 1C      LDA $1CEF                 
CODE_299CFB:        C9 D1         CMP #$D1                  
CODE_299CFD:        F0 13         BEQ CODE_299D12           
CODE_299CFF:        A4 0C         LDY $0C                   
CODE_299D01:        B9 A3 C6      LDA.w DATA_21C6A3,y               
CODE_299D04:        95 9E         STA $9E,x                 
CODE_299D06:        B9 A6 C6      LDA.w DATA_21C6A6,y               
CODE_299D09:        95 4D         STA $4D,x                 
CODE_299D0B:        FE B7 06      INC $06B7,x               
CODE_299D0E:        A9 88         LDA #$88                  
CODE_299D10:        D0 02         BNE CODE_299D14           
CODE_299D12:        A9 6E         LDA #$6E                  
CODE_299D14:        9D 71 06      STA $0671,x               
CODE_299D17:        A9 02         LDA #$02                  
CODE_299D19:        9D 61 06      STA $0661,x               
CODE_299D1C:        A9 02         LDA #$02                  
CODE_299D1E:        9D E9 1F      STA $1FE9,x               
CODE_299D21:        9D F1 1F      STA $1FF1,x               
CODE_299D24:        C6 0C         DEC $0C                   
CODE_299D26:        10 96         BPL CODE_299CBE           
CODE_299D28:        68            PLA                       
CODE_299D29:        A8            TAY                       
CODE_299D2A:        68            PLA                       
CODE_299D2B:        AA            TAX                       
CODE_299D2C:        60            RTS                       

CODE_299D2D:        85 0F         STA $0F                   
CODE_299D2F:        8A            TXA                       
CODE_299D30:        48            PHA                       
CODE_299D31:        AD 1C 1A      LDA $1A1C                 
CODE_299D34:        48            PHA                       
CODE_299D35:        AD 44 1A      LDA $1A44                 
CODE_299D38:        48            PHA                       
CODE_299D39:        A2 06         LDX #$06                  
CODE_299D3B:        BD 15 1A      LDA $1A15,x               
CODE_299D3E:        9D 16 1A      STA $1A16,x               
CODE_299D41:        BD 1D 1A      LDA $1A1D,x               
CODE_299D44:        9D 1E 1A      STA $1A1E,x               
CODE_299D47:        BD 25 1A      LDA $1A25,x               
CODE_299D4A:        9D 26 1A      STA $1A26,x               
CODE_299D4D:        BD 2D 1A      LDA $1A2D,x               
CODE_299D50:        9D 2E 1A      STA $1A2E,x               
CODE_299D53:        BD 35 1A      LDA $1A35,x               
CODE_299D56:        9D 36 1A      STA $1A36,x               
CODE_299D59:        BD 3D 1A      LDA $1A3D,x               
CODE_299D5C:        9D 3E 1A      STA $1A3E,x               
CODE_299D5F:        BD E3 06      LDA $06E3,x               
CODE_299D62:        9D E4 06      STA $06E4,x               
CODE_299D65:        BD DB 06      LDA $06DB,x               
CODE_299D68:        9D DC 06      STA $06DC,x               
CODE_299D6B:        BD 57 1A      LDA $1A57,x               
CODE_299D6E:        9D 58 1A      STA $1A58,x               
CODE_299D71:        CA            DEX                       
CODE_299D72:        10 C7         BPL CODE_299D3B           
CODE_299D74:        68            PLA                       
CODE_299D75:        AA            TAX                       
CODE_299D76:        68            PLA                       
CODE_299D77:        F0 08         BEQ CODE_299D81           
CODE_299D79:        BD 10 1B      LDA $1B10,x               
CODE_299D7C:        29 7F         AND #$7F                  
CODE_299D7E:        9D 10 1B      STA $1B10,x               
CODE_299D81:        B9 41 1B      LDA $1B41,y               
CODE_299D84:        29 F0         AND #$F0                  
CODE_299D86:        4A            LSR A                     
CODE_299D87:        4A            LSR A                     
CODE_299D88:        4A            LSR A                     
CODE_299D89:        4A            LSR A                     
CODE_299D8A:        8D 1D 1A      STA $1A1D                 
CODE_299D8D:        B9 41 1B      LDA $1B41,y               
CODE_299D90:        29 0F         AND #$0F                  
CODE_299D92:        0A            ASL A                     
CODE_299D93:        0A            ASL A                     
CODE_299D94:        0A            ASL A                     
CODE_299D95:        0A            ASL A                     
CODE_299D96:        8D 25 1A      STA $1A25                 
CODE_299D99:        A5 06         LDA $06                   
CODE_299D9B:        8D 2D 1A      STA $1A2D                 
CODE_299D9E:        A5 00         LDA $00                   
CODE_299DA0:        8D 35 1A      STA $1A35                 
CODE_299DA3:        A9 00         LDA #$00                  
CODE_299DA5:        8D DB 06      STA $06DB                 
CODE_299DA8:        8D 57 1A      STA $1A57                 
CODE_299DAB:        A9 60         LDA #$60                  
CODE_299DAD:        A6 0F         LDX $0F                   
CODE_299DAF:        E0 04         CPX #$04                  
CODE_299DB1:        D0 02         BNE CODE_299DB5           
CODE_299DB3:        A9 00         LDA #$00                  
CODE_299DB5:        8D E3 06      STA $06E3                 
CODE_299DB8:        A6 01         LDX $01                   
CODE_299DBA:        8E 3D 1A      STX $1A3D                 
CODE_299DBD:        BD 10 1B      LDA $1B10,x               
CODE_299DC0:        09 80         ORA #$80                  
CODE_299DC2:        9D 10 1B      STA $1B10,x               
CODE_299DC5:        A5 0F         LDA $0F                   
CODE_299DC7:        8D 15 1A      STA $1A15                 
CODE_299DCA:        68            PLA                       
CODE_299DCB:        AA            TAX                       
CODE_299DCC:        60            RTS                       

CODE_299DCD:        A4 25         LDY $25                   
CODE_299DCF:        AD 43 05      LDA $0543                 
CODE_299DD2:        18            CLC                       
CODE_299DD3:        79 A9 C6      ADC.w DATA_21C6A9,y               
CODE_299DD6:        29 F0         AND #$F0                  
CODE_299DD8:        85 05         STA $05                   
CODE_299DDA:        AD 42 05      LDA $0542                 
CODE_299DDD:        79 AB C6      ADC.w DATA_21C6AB,y               
CODE_299DE0:        85 06         STA $06                   
CODE_299DE2:        A4 22         LDY $22                   
CODE_299DE4:        D9 EE CE      CMP.w DATA_21CEED+1,y               
CODE_299DE7:        90 0C         BCC CODE_299DF5           
CODE_299DE9:        D0 07         BNE CODE_299DF2           
CODE_299DEB:        A5 05         LDA $05                   
CODE_299DED:        D9 FE CE      CMP.w DATA_21CEFD+1,y               
CODE_299DF0:        90 03         BCC CODE_299DF5           
CODE_299DF2:        4C 7A 9E      JMP CODE_299E7A           

CODE_299DF5:        A6 06         LDX $06                   
CODE_299DF7:        BD 00 1B      LDA $1B00,x               
CODE_299DFA:        30 16         BMI CODE_299E12           
CODE_299DFC:        85 01         STA $01                   
CODE_299DFE:        AA            TAX                       
CODE_299DFF:        0A            ASL A                     
CODE_299E00:        18            CLC                       
CODE_299E01:        65 01         ADC $01                   
CODE_299E03:        A8            TAY                       
CODE_299E04:        C8            INY                       
CODE_299E05:        C8            INY                       
CODE_299E06:        C8            INY                       
CODE_299E07:        B9 40 1B      LDA $1B40,y               
CODE_299E0A:        4A            LSR A                     
CODE_299E0B:        4A            LSR A                     
CODE_299E0C:        4A            LSR A                     
CODE_299E0D:        4A            LSR A                     
CODE_299E0E:        C5 06         CMP $06                   
CODE_299E10:        F0 01         BEQ CODE_299E13           
CODE_299E12:        60            RTS                       

CODE_299E13:        B9 3E 1B      LDA $1B3E,y               
CODE_299E16:        C9 FF         CMP #$FF                  
CODE_299E18:        F0 F8         BEQ CODE_299E12           
CODE_299E1A:        BD 10 1B      LDA $1B10,x               
CODE_299E1D:        E8            INX                       
CODE_299E1E:        C9 00         CMP #$00                  
CODE_299E20:        30 E2         BMI CODE_299E04           
CODE_299E22:        B9 40 1B      LDA $1B40,y               
CODE_299E25:        0A            ASL A                     
CODE_299E26:        0A            ASL A                     
CODE_299E27:        0A            ASL A                     
CODE_299E28:        0A            ASL A                     
CODE_299E29:        C5 05         CMP $05                   
CODE_299E2B:        D0 D7         BNE CODE_299E04           
CODE_299E2D:        CA            DEX                       
CODE_299E2E:        86 01         STX $01                   
CODE_299E30:        85 00         STA $00                   
CODE_299E32:        B9 3F 1B      LDA $1B3F,y               
CODE_299E35:        C9 B4         CMP #$B4                  
CODE_299E37:        90 06         BCC CODE_299E3F           
CODE_299E39:        E9 B3         SBC #$B3                  
CODE_299E3B:        8D 66 05      STA $0566                 
CODE_299E3E:        60            RTS                       

CODE_299E3F:        A2 04         LDX #$04                  
CODE_299E41:        BD 61 06      LDA $0661,x               
CODE_299E44:        F0 06         BEQ CODE_299E4C           
CODE_299E46:        CA            DEX                       
CODE_299E47:        10 F8         BPL CODE_299E41           
CODE_299E49:        4C 7A 9E      JMP CODE_299E7A           

CODE_299E4C:        A5 00         LDA $00                   
CODE_299E4E:        95 71         STA $71,x                 
CODE_299E50:        A5 06         LDA $06                   
CODE_299E52:        95 56         STA $56,x                 
CODE_299E54:        A9 00         LDA #$00                  
CODE_299E56:        95 44         STA $44,x                 
CODE_299E58:        88            DEY                       
CODE_299E59:        B9 40 1B      LDA $1B40,y               
CODE_299E5C:        0A            ASL A                     
CODE_299E5D:        0A            ASL A                     
CODE_299E5E:        0A            ASL A                     
CODE_299E5F:        0A            ASL A                     
CODE_299E60:        95 5F         STA $5F,x                 
CODE_299E62:        88            DEY                       
CODE_299E63:        B9 40 1B      LDA $1B40,y               
CODE_299E66:        9D 71 06      STA $0671,x               
CODE_299E69:        A4 01         LDY $01                   
CODE_299E6B:        B9 10 1B      LDA $1B10,y               
CODE_299E6E:        09 80         ORA #$80                  
CODE_299E70:        99 10 1B      STA $1B10,y               
CODE_299E73:        98            TYA                       
CODE_299E74:        9D 59 06      STA $0659,x               
CODE_299E77:        FE 61 06      INC $0661,x               
CODE_299E7A:        60            RTS                       

CODE_299E7B:        20 7F 9E      JSR CODE_299E7F           
CODE_299E7E:        6B            RTL                       

CODE_299E7F:        AD 66 05      LDA $0566                 
CODE_299E82:        F0 20         BEQ CODE_299EA4           
CODE_299E84:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_299E88:        dw CODE_299E7A
                    dw CODE_299FD1
                    dw CODE_29A02A
                    dw CODE_299E9A
                    dw CODE_29A084
                    dw CODE_299F24
                    dw CODE_299EA5
                    dw CODE_299F7E
                    dw CODE_299E9F
  
CODE_299E9A:        A9 00         LDA #$00
CODE_299E9C:        8D F0 1C      STA $1CF0                 
CODE_299E9F:        A9 00         LDA #$00                  
CODE_299EA1:        8D 66 05      STA $0566                 
CODE_299EA4:        60            RTS                       

CODE_299EA5:        AD 65 05      LDA $0565                 
CODE_299EA8:        29 7F         AND #$7F                  
CODE_299EAA:        D0 77         BNE CODE_299F23           
CODE_299EAC:        A9 36         LDA #$36                  
CODE_299EAE:        20 DD A0      JSR CODE_29A0DD           
CODE_299EB1:        C0 03         CPY #$03                  
CODE_299EB3:        B0 6E         BCS CODE_299F23                   
CODE_299EB5:        20 D0 A0      JSR CODE_29A0D0           
CODE_299EB8:        A9 00         LDA #$00                  
CODE_299EBA:        9D 71 06      STA $0671,x               
CODE_299EBD:        BD 83 07      LDA $0783,x               
CODE_299EC0:        29 7F         AND #$7F                  
CODE_299EC2:        18            CLC                       
CODE_299EC3:        69 40         ADC #$40                  
CODE_299EC5:        18            CLC                       
CODE_299EC6:        6D 43 05      ADC $0543                 
CODE_299EC9:        29 E0         AND #$E0                  
CODE_299ECB:        09 0F         ORA #$0F                  
CODE_299ECD:        85 00         STA $00                   
CODE_299ECF:        08            PHP                       
CODE_299ED0:        A0 04         LDY #$04                  
CODE_299ED2:        B9 61 06      LDA $0661,y               
CODE_299ED5:        F0 1B         BEQ CODE_299EF2           
CODE_299ED7:        B9 71 06      LDA $0671,y               
CODE_299EDA:        C9 36         CMP #$36                  
CODE_299EDC:        D0 14         BNE CODE_299EF2           
CODE_299EDE:        B9 71 00      LDA $0071,y               
CODE_299EE1:        C5 00         CMP $00                   
CODE_299EE3:        D0 0D         BNE CODE_299EF2           
CODE_299EE5:        BD 83 07      LDA $0783,x               
CODE_299EE8:        18            CLC                       
CODE_299EE9:        69 30         ADC #$30                  
CODE_299EEB:        9D 83 07      STA $0783,x               
CODE_299EEE:        28            PLP                       
CODE_299EEF:        4C C0 9E      JMP CODE_299EC0           

CODE_299EF2:        88            DEY                       
CODE_299EF3:        10 DD         BPL CODE_299ED2           
CODE_299EF5:        A5 00         LDA $00                   
CODE_299EF7:        95 71         STA $71,x                 
CODE_299EF9:        28            PLP                       
CODE_299EFA:        A5 13         LDA $13                   
CODE_299EFC:        69 00         ADC #$00                  
CODE_299EFE:        95 56         STA $56,x                 
CODE_299F00:        AD 10 02      LDA $0210                 
CODE_299F03:        18            CLC                       
CODE_299F04:        69 FF         ADC #$FF                  
CODE_299F06:        95 5F         STA $5F,x                 
CODE_299F08:        A5 12         LDA $12                   
CODE_299F0A:        69 00         ADC #$00                  
CODE_299F0C:        95 44         STA $44,x                 
CODE_299F0E:        BD 83 07      LDA $0783,x               
CODE_299F11:        29 03         AND #$03                  
CODE_299F13:        A8            TAY                       
CODE_299F14:        B9 AD C6      LDA.w DATA_21C6AD,y               
CODE_299F17:        95 8C         STA $8C,x                 
CODE_299F19:        A9 03         LDA #$03                  
CODE_299F1B:        9D E9 1F      STA $1FE9,x               
CODE_299F1E:        A9 36         LDA #$36                  
CODE_299F20:        9D 71 06      STA $0671,x               
CODE_299F23:        60            RTS                       

CODE_299F24:        AD 65 05      LDA $0565                 
CODE_299F27:        29 03         AND #$03                  
CODE_299F29:        D0 52         BNE CODE_299F7D           
CODE_299F2B:        EE F1 1C      INC $1CF1                 
CODE_299F2E:        AD F1 1C      LDA $1CF1                 
CODE_299F31:        C9 C0         CMP #$C0                  
CODE_299F33:        D0 48         BNE CODE_299F7D           
CODE_299F35:        A9 00         LDA #$00                  
CODE_299F37:        8D F1 1C      STA $1CF1                 
CODE_299F3A:        A9 49         LDA #$49                  
CODE_299F3C:        20 DD A0      JSR CODE_29A0DD           
CODE_299F3F:        C0 02         CPY #$02                  
CODE_299F41:        B0 3A         BCS CODE_299F7D                   
CODE_299F43:        20 D0 A0      JSR CODE_29A0D0           
CODE_299F46:        A9 49         LDA #$49                  
CODE_299F48:        9D 71 06      STA $0671,x               
CODE_299F4B:        BD 83 07      LDA $0783,x               
CODE_299F4E:        29 7F         AND #$7F                  
CODE_299F50:        18            CLC                       
CODE_299F51:        69 30         ADC #$30                  
CODE_299F53:        18            CLC                       
CODE_299F54:        6D 43 05      ADC $0543                 
CODE_299F57:        95 71         STA $71,x                 
CODE_299F59:        A5 13         LDA $13                   
CODE_299F5B:        69 00         ADC #$00                  
CODE_299F5D:        95 56         STA $56,x                 
CODE_299F5F:        AD 10 02      LDA $0210                 
CODE_299F62:        38            SEC                       
CODE_299F63:        E9 20         SBC #$20                  
CODE_299F65:        95 5F         STA $5F,x                 
CODE_299F67:        A5 12         LDA $12                   
CODE_299F69:        E9 00         SBC #$00                  
CODE_299F6B:        95 44         STA $44,x                 
CODE_299F6D:        BD 83 07      LDA $0783,x               
CODE_299F70:        29 03         AND #$03                  
CODE_299F72:        A8            TAY                       
CODE_299F73:        B9 B1 C6      LDA.w DATA_21C6B1,y               
CODE_299F76:        95 68         STA $68,x                 
CODE_299F78:        B9 B5 C6      LDA.w DATA_21C6B5,y               
CODE_299F7B:        95 8C         STA $8C,x                 
CODE_299F7D:        60            RTS                       

CODE_299F7E:        AC F1 1C      LDY $1CF1                 
CODE_299F81:        F0 0E         BEQ CODE_299F91           
CODE_299F83:        CE F1 1C      DEC $1CF1                 
CODE_299F86:        D0 08         BNE CODE_299F90           
CODE_299F88:        EE 14 00      INC $0014                 
CODE_299F8B:        A9 00         LDA #$00                  
CODE_299F8D:        8D 13 07      STA $0713                 
CODE_299F90:        60            RTS                       

CODE_299F91:        A0 07         LDY #$07                  
CODE_299F93:        B9 C8 1F      LDA $1FC8,y               
CODE_299F96:        D0 38         BNE CODE_299FD0           
CODE_299F98:        C0 05         CPY #$05                  
CODE_299F9A:        B0 0C         BCS CODE_299FA8                   
CODE_299F9C:        B9 71 06      LDA $0671,y               
CODE_299F9F:        C9 47         CMP #$47                  
CODE_299FA1:        F0 05         BEQ CODE_299FA8           
CODE_299FA3:        B9 61 06      LDA $0661,y               
CODE_299FA6:        D0 28         BNE CODE_299FD0           
CODE_299FA8:        88            DEY                       
CODE_299FA9:        10 E8         BPL CODE_299F93           
CODE_299FAB:        A9 01         LDA #$01                  
CODE_299FAD:        8D 61 06      STA $0661                 
CODE_299FB0:        A9 52         LDA #$52                  
CODE_299FB2:        8D 71 06      STA $0671                 
CODE_299FB5:        A9 01         LDA #$01                  
CODE_299FB7:        85 56         STA $56                   
CODE_299FB9:        A9 70         LDA #$70                  
CODE_299FBB:        85 71         STA $71                   
CODE_299FBD:        A9 30         LDA #$30                  
CODE_299FBF:        A4 5E         LDY $5E                   
CODE_299FC1:        30 02         BMI CODE_299FC5           
CODE_299FC3:        A9 C0         LDA #$C0                  
CODE_299FC5:        6D 10 02      ADC $0210                 
CODE_299FC8:        85 5F         STA $5F                   
CODE_299FCA:        A5 12         LDA $12                   
CODE_299FCC:        69 00         ADC #$00                  
CODE_299FCE:        85 44         STA $44                   
CODE_299FD0:        60            RTS                       

CODE_299FD1:        AD 65 05      LDA $0565                 
CODE_299FD4:        29 1F         AND #$1F                  
CODE_299FD6:        D0 51         BNE CODE_29A029           
CODE_299FD8:        A9 76         LDA #$76                  
CODE_299FDA:        20 DD A0      JSR CODE_29A0DD           
CODE_299FDD:        C0 03         CPY #$03                  
CODE_299FDF:        B0 48         BCS CODE_29A029                   
CODE_299FE1:        20 D0 A0      JSR CODE_29A0D0           
CODE_299FE4:        A9 76         LDA #$76                  
CODE_299FE6:        9D 71 06      STA $0671,x               
CODE_299FE9:        AD 43 05      LDA $0543                 
CODE_299FEC:        18            CLC                       
CODE_299FED:        69 C0         ADC #$C0                  
CODE_299FEF:        95 71         STA $71,x                 
CODE_299FF1:        A5 13         LDA $13                   
CODE_299FF3:        69 00         ADC #$00                  
CODE_299FF5:        95 56         STA $56,x                 
CODE_299FF7:        BD 83 07      LDA $0783,x               
CODE_299FFA:        08            PHP                       
CODE_299FFB:        08            PHP                       
CODE_299FFC:        29 03         AND #$03                  
CODE_299FFE:        A8            TAY                       
CODE_299FFF:        B9 B9 C6      LDA.w DATA_21C6B9,y               
CODE_29A002:        28            PLP                       
CODE_29A003:        10 02         BPL CODE_29A007           
CODE_29A005:        49 FF         EOR #$FF                  
CODE_29A007:        18            CLC                       
CODE_29A008:        6D 10 02      ADC $0210                 
CODE_29A00B:        95 5F         STA $5F,x                 
CODE_29A00D:        A5 12         LDA $12                   
CODE_29A00F:        69 00         ADC #$00                  
CODE_29A011:        95 44         STA $44,x                 
CODE_29A013:        BD 85 07      LDA $0785,x               
CODE_29A016:        29 03         AND #$03                  
CODE_29A018:        A8            TAY                       
CODE_29A019:        B9 BD C6      LDA.w DATA_21C6BD,y               
CODE_29A01C:        28            PLP                       
CODE_29A01D:        10 04         BPL CODE_29A023           
CODE_29A01F:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_29A023:        95 8C         STA $8C,x                 
CODE_29A025:        A9 B8         LDA #$B8                  
CODE_29A027:        95 9E         STA $9E,x                 
CODE_29A029:        60            RTS                       

CODE_29A02A:        EE F1 1C      INC $1CF1                 
CODE_29A02D:        AD F1 1C      LDA $1CF1                 
CODE_29A030:        C9 AA         CMP #$AA                  
CODE_29A032:        D0 4F         BNE CODE_29A083           
CODE_29A034:        A9 00         LDA #$00                  
CODE_29A036:        8D F1 1C      STA $1CF1                 
CODE_29A039:        A2 02         LDX #$02                  
CODE_29A03B:        20 D2 A0      JSR CODE_29A0D2           
CODE_29A03E:        A9 77         LDA #$77                  
CODE_29A040:        9D 71 06      STA $0671,x               
CODE_29A043:        BD 83 07      LDA $0783,x               
CODE_29A046:        29 01         AND #$01                  
CODE_29A048:        A8            TAY                       
CODE_29A049:        AD 10 02      LDA $0210                 
CODE_29A04C:        18            CLC                       
CODE_29A04D:        79 C1 C6      ADC.w DATA_21C6C1,y               
CODE_29A050:        95 5F         STA $5F,x                 
CODE_29A052:        A5 12         LDA $12                   
CODE_29A054:        69 00         ADC #$00                  
CODE_29A056:        95 44         STA $44,x                 
CODE_29A058:        B9 C3 C6      LDA.w DATA_21C6C3,y               
CODE_29A05B:        AC FC 05      LDY $05FC                 
CODE_29A05E:        F0 04         BEQ CODE_29A064           
CODE_29A060:        18            CLC                       
CODE_29A061:        6D 0E 1A      ADC $1A0E                 
CODE_29A064:        95 8C         STA $8C,x                 
CODE_29A066:        BD 83 07      LDA $0783,x               
CODE_29A069:        29 F0         AND #$F0                  
CODE_29A06B:        69 20         ADC #$20                  
CODE_29A06D:        29 7F         AND #$7F                  
CODE_29A06F:        6D 43 05      ADC $0543                 
CODE_29A072:        95 71         STA $71,x                 
CODE_29A074:        AD 42 05      LDA $0542                 
CODE_29A077:        69 00         ADC #$00                  
CODE_29A079:        95 56         STA $56,x                 
CODE_29A07B:        A9 01         LDA #$01                  
CODE_29A07D:        9D 89 06      STA $0689,x               
CODE_29A080:        9D B7 06      STA $06B7,x               
CODE_29A083:        60            RTS                       

CODE_29A084:        AD 65 05      LDA $0565                 
CODE_29A087:        29 3F         AND #$3F                  
CODE_29A089:        D0 44         BNE CODE_29A0CF           
CODE_29A08B:        A9 9F         LDA #$9F                  
CODE_29A08D:        20 DD A0      JSR CODE_29A0DD           
CODE_29A090:        C0 04         CPY #$04                  
CODE_29A092:        B0 3B         BCS CODE_29A0CF                   
CODE_29A094:        20 D0 A0      JSR CODE_29A0D0           
CODE_29A097:        A9 9F         LDA #$9F                  
CODE_29A099:        9D 71 06      STA $0671,x               
CODE_29A09C:        BD 83 07      LDA $0783,x               
CODE_29A09F:        29 01         AND #$01                  
CODE_29A0A1:        A8            TAY                       
CODE_29A0A2:        AD 10 02      LDA $0210                 
CODE_29A0A5:        18            CLC                       
CODE_29A0A6:        79 C5 C6      ADC.w DATA_21C6C5,y               
CODE_29A0A9:        95 5F         STA $5F,x                 
CODE_29A0AB:        A5 12         LDA $12                   
CODE_29A0AD:        69 00         ADC #$00                  
CODE_29A0AF:        95 44         STA $44,x                 
CODE_29A0B1:        B9 C7 C6      LDA.w DATA_21C6C7,y               
CODE_29A0B4:        BC 84 07      LDY $0784,x               
CODE_29A0B7:        10 01         BPL CODE_29A0BA           
CODE_29A0B9:        0A            ASL A                     
CODE_29A0BA:        95 8C         STA $8C,x                 
CODE_29A0BC:        BD 83 07      LDA $0783,x               
CODE_29A0BF:        29 7F         AND #$7F                  
CODE_29A0C1:        18            CLC                       
CODE_29A0C2:        69 10         ADC #$10                  
CODE_29A0C4:        6D 43 05      ADC $0543                 
CODE_29A0C7:        95 71         STA $71,x                 
CODE_29A0C9:        A5 13         LDA $13                   
CODE_29A0CB:        69 00         ADC #$00                  
CODE_29A0CD:        95 56         STA $56,x                 
CODE_29A0CF:        60            RTS                       

CODE_29A0D0:        A2 04         LDX #$04                  
CODE_29A0D2:        BD 61 06      LDA $0661,x               
CODE_29A0D5:        F0 1F         BEQ CODE_29A0F6           
CODE_29A0D7:        CA            DEX                       
CODE_29A0D8:        10 F8         BPL CODE_29A0D2           
CODE_29A0DA:        68            PLA                       
CODE_29A0DB:        68            PLA                       
CODE_29A0DC:        60            RTS                       

CODE_29A0DD:        85 00         STA $00                   
CODE_29A0DF:        A0 00         LDY #$00                  
CODE_29A0E1:        A2 04         LDX #$04                  
CODE_29A0E3:        BD 61 06      LDA $0661,x               
CODE_29A0E6:        F0 08         BEQ CODE_29A0F0           
CODE_29A0E8:        BD 71 06      LDA $0671,x               
CODE_29A0EB:        C5 00         CMP $00                   
CODE_29A0ED:        D0 01         BNE CODE_29A0F0           
CODE_29A0EF:        C8            INY                       
CODE_29A0F0:        CA            DEX                       
CODE_29A0F1:        10 F0         BPL CODE_29A0E3           
CODE_29A0F3:        A6 9B         LDX $9B                   
CODE_29A0F5:        60            RTS                       

CODE_29A0F6:        22 96 9C 27   JSL CODE_279C96           
CODE_29A0FA:        A9 02         LDA #$02                  
CODE_29A0FC:        9D 61 06      STA $0661,x               
CODE_29A0FF:        60            RTS                       

CODE_29A100:        AD 61 05      LDA $0561                 
CODE_29A103:        F0 01         BEQ CODE_29A106           
CODE_29A105:        60            RTS                       

CODE_29A106:        A0 09         LDY #$09                  
CODE_29A108:        99 C8 1F      STA $1FC8,y               
CODE_29A10B:        C0 08         CPY #$08                  
CODE_29A10D:        B0 03         BCS CODE_29A112                   
CODE_29A10F:        99 15 1A      STA $1A15,y               
CODE_29A112:        C0 05         CPY #$05                  
CODE_29A114:        B0 06         BCS CODE_29A11C                   
CODE_29A116:        99 9F 07      STA $079F,y               
CODE_29A119:        99 A4 07      STA $07A4,y               
CODE_29A11C:        C0 03         CPY #$03                  
CODE_29A11E:        F0 15         BEQ CODE_29A135           
CODE_29A120:        B0 16         BCS CODE_29A138                   
CODE_29A122:        99 7C 1F      STA $1F7C,y               
CODE_29A125:        99 90 1F      STA $1F90,y               
CODE_29A128:        99 9C 1F      STA $1F9C,y               
CODE_29A12B:        C0 02         CPY #$02                  
CODE_29A12D:        B0 06         BCS CODE_29A135                   
CODE_29A12F:        99 B4 06      STA $06B4,y               
CODE_29A132:        99 E1 1C      STA $1CE1,y               
CODE_29A135:        99 B4 1F      STA $1FB4,y               
CODE_29A138:        88            DEY                       
CODE_29A139:        10 CD         BPL CODE_29A108           
CODE_29A13B:        8D FF 1C      STA $1CFF                 
CODE_29A13E:        8F 73 39 7E   STA $7E3973               
CODE_29A142:        8D FB 1C      STA $1CFB                 
CODE_29A145:        8D F5 1C      STA $1CF5                 
CODE_29A148:        8D F3 1C      STA $1CF3                 
CODE_29A14B:        8D F2 1C      STA $1CF2                 
CODE_29A14E:        8D F4 1C      STA $1CF4                 
CODE_29A151:        8D 66 05      STA $0566                 
CODE_29A154:        8D F1 1C      STA $1CF1                 
CODE_29A157:        8D 45 1A      STA $1A45                 
CODE_29A15A:        8D 81 07      STA $0781                 
CODE_29A15D:        8D 80 07      STA $0780                 
CODE_29A160:        A0 2F         LDY #$2F                  
CODE_29A162:        99 10 1B      STA $1B10,y               
CODE_29A165:        88            DEY                       
CODE_29A166:        10 FA         BPL CODE_29A162           
CODE_29A168:        8C 61 05      STY $0561                 
CODE_29A16B:        8D 8B 05      STA $058B                 
CODE_29A16E:        8D 00 1B      STA $1B00                 
CODE_29A171:        8D 75 05      STA $0575                 
CODE_29A174:        8D 46 05      STA $0546                 
CODE_29A177:        8D FE 05      STA $05FE                 
CODE_29A17A:        8D FF 05      STA $05FF                 
CODE_29A17D:        8D FD 05      STA $05FD                 
CODE_29A180:        8D 0F 1A      STA $1A0F                 
CODE_29A183:        85 00         STA $00                   
CODE_29A185:        AA            TAX                       
CODE_29A186:        A8            TAY                       
CODE_29A187:        C8            INY                       
CODE_29A188:        E0 10         CPX #$10                  
CODE_29A18A:        F0 42         BEQ CODE_29A1CE           
CODE_29A18C:        B9 40 1B      LDA $1B40,y               
CODE_29A18F:        C9 FF         CMP #$FF                  
CODE_29A191:        F0 24         BEQ CODE_29A1B7           
CODE_29A193:        AD 25 04      LDA $0425                 
CODE_29A196:        08            PHP                       
CODE_29A197:        B9 41 1B      LDA $1B41,y               
CODE_29A19A:        28            PLP                       
CODE_29A19B:        F0 03         BEQ CODE_29A1A0           
CODE_29A19D:        B9 42 1B      LDA $1B42,y               
CODE_29A1A0:        4A            LSR A                     
CODE_29A1A1:        4A            LSR A                     
CODE_29A1A2:        4A            LSR A                     
CODE_29A1A3:        4A            LSR A                     
CODE_29A1A4:        85 01         STA $01                   
CODE_29A1A6:        E4 01         CPX $01                   
CODE_29A1A8:        D0 0D         BNE CODE_29A1B7           
CODE_29A1AA:        E6 00         INC $00                   
CODE_29A1AC:        A5 00         LDA $00                   
CODE_29A1AE:        9D 01 1B      STA $1B01,x               
CODE_29A1B1:        C8            INY                       
CODE_29A1B2:        C8            INY                       
CODE_29A1B3:        C8            INY                       
CODE_29A1B4:        4C 88 A1      JMP CODE_29A188           

CODE_29A1B7:        A5 00         LDA $00                   
CODE_29A1B9:        E0 0F         CPX #$0F                  
CODE_29A1BB:        F0 03         BEQ CODE_29A1C0           
CODE_29A1BD:        9D 01 1B      STA $1B01,x               
CODE_29A1C0:        DD 00 1B      CMP $1B00,x               
CODE_29A1C3:        D0 05         BNE CODE_29A1CA           
CODE_29A1C5:        A9 FF         LDA #$FF                  
CODE_29A1C7:        9D 00 1B      STA $1B00,x               
CODE_29A1CA:        E8            INX                       
CODE_29A1CB:        4C 88 A1      JMP CODE_29A188           

CODE_29A1CE:        A2 07         LDX #$07                  
CODE_29A1D0:        A9 00         LDA #$00                  
CODE_29A1D2:        9D 61 06      STA $0661,x               
CODE_29A1D5:        CA            DEX                       
CODE_29A1D6:        10 F8         BPL CODE_29A1D0           
CODE_29A1D8:        A9 4F         LDA #$4F                  
CODE_29A1DA:        8D 1E 07      STA $071E                 
CODE_29A1DD:        AD 60 05      LDA $0560                 
CODE_29A1E0:        C9 0A         CMP #$0A                  
CODE_29A1E2:        D0 0A         BNE CODE_29A1EE           
CODE_29A1E4:        A9 01         LDA #$01                  
CODE_29A1E6:        8D 65 06      STA $0665                 
CODE_29A1E9:        A9 47         LDA #$47                  
CODE_29A1EB:        8D 75 06      STA $0675                 
CODE_29A1EE:        AD 25 04      LDA $0425                 
CODE_29A1F1:        D0 57         BNE CODE_29A24A           
CODE_29A1F3:        AD 10 02      LDA $0210                 
CODE_29A1F6:        48            PHA                       
CODE_29A1F7:        AD 99 C6      LDA.w DATA_21C699                 
CODE_29A1FA:        38            SEC                       
CODE_29A1FB:        ED 9A C6      SBC.w DATA_21C699+1                 
CODE_29A1FE:        18            CLC                       
CODE_29A1FF:        6D 10 02      ADC $0210                 
CODE_29A202:        29 F0         AND #$F0                  
CODE_29A204:        85 0D         STA $0D                   
CODE_29A206:        A5 12         LDA $12                   
CODE_29A208:        48            PHA                       
CODE_29A209:        6D 9B C6      ADC.w DATA_21C69B                 
CODE_29A20C:        85 0E         STA $0E                   
CODE_29A20E:        A9 01         LDA #$01                  
CODE_29A210:        85 25         STA $25                   
CODE_29A212:        AD 10 02      LDA $0210                 
CODE_29A215:        38            SEC                       
CODE_29A216:        E9 10         SBC #$10                  
CODE_29A218:        8D 10 02      STA $0210                 
CODE_29A21B:        B0 02         BCS CODE_29A21F                   
CODE_29A21D:        C6 12         DEC $12                   
CODE_29A21F:        AD 10 02      LDA $0210                 
CODE_29A222:        69 10         ADC #$10                  
CODE_29A224:        29 F0         AND #$F0                  
CODE_29A226:        8D 10 02      STA $0210                 
CODE_29A229:        90 02         BCC CODE_29A22D           
CODE_29A22B:        E6 12         INC $12                   
CODE_29A22D:        20 E0 9A      JSR CODE_299AE0           
CODE_29A230:        20 E0 9A      JSR CODE_299AE0           
CODE_29A233:        A5 0E         LDA $0E                   
CODE_29A235:        C5 12         CMP $12                   
CODE_29A237:        D0 E6         BNE CODE_29A21F           
CODE_29A239:        A5 0D         LDA $0D                   
CODE_29A23B:        CD 10 02      CMP $0210                 
CODE_29A23E:        D0 DF         BNE CODE_29A21F           
CODE_29A240:        68            PLA                       
CODE_29A241:        85 12         STA $12                   
CODE_29A243:        68            PLA                       
CODE_29A244:        8D 10 02      STA $0210                 
CODE_29A247:        68            PLA                       
CODE_29A248:        68            PLA                       
CODE_29A249:        60            RTS                       

CODE_29A24A:        AD 43 05      LDA $0543                 
CODE_29A24D:        48            PHA                       
CODE_29A24E:        18            CLC                       
CODE_29A24F:        6D AA C6      ADC.w DATA_21C6A9+1                 
CODE_29A252:        29 F0         AND #$F0                  
CODE_29A254:        85 0D         STA $0D                   
CODE_29A256:        AD 42 05      LDA $0542                 
CODE_29A259:        48            PHA                       
CODE_29A25A:        18            CLC                       
CODE_29A25B:        6D AC C6      ADC.w DATA_21C6AB+1                 
CODE_29A25E:        85 0E         STA $0E                   
CODE_29A260:        A9 00         LDA #$00                  
CODE_29A262:        85 25         STA $25                   
CODE_29A264:        AD 43 05      LDA $0543                 
CODE_29A267:        38            SEC                       
CODE_29A268:        E9 10         SBC #$10                  
CODE_29A26A:        8D 43 05      STA $0543                 
CODE_29A26D:        B0 03         BCS CODE_29A272                   
CODE_29A26F:        CE 42 05      DEC $0542                 
CODE_29A272:        AD 43 05      LDA $0543                 
CODE_29A275:        69 10         ADC #$10                  
CODE_29A277:        29 F0         AND #$F0                  
CODE_29A279:        8D 43 05      STA $0543                 
CODE_29A27C:        90 03         BCC CODE_29A281           
CODE_29A27E:        EE 42 05      INC $0542                 
CODE_29A281:        20 CD 9D      JSR CODE_299DCD           
CODE_29A284:        20 CD 9D      JSR CODE_299DCD           
CODE_29A287:        A5 0E         LDA $0E                   
CODE_29A289:        CD 42 05      CMP $0542                 
CODE_29A28C:        D0 E4         BNE CODE_29A272           
CODE_29A28E:        A5 0D         LDA $0D                   
CODE_29A290:        CD 43 05      CMP $0543                 
CODE_29A293:        D0 DD         BNE CODE_29A272           
CODE_29A295:        68            PLA                       
CODE_29A296:        8D 42 05      STA $0542                 
CODE_29A299:        68            PLA                       
CODE_29A29A:        8D 43 05      STA $0543                 
CODE_29A29D:        68            PLA                       
CODE_29A29E:        68            PLA                       
CODE_29A29F:        60            RTS                       

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

CODE_29A300:        8B            PHB
CODE_29A301:        4B            PHK
CODE_29A302:        AB            PLB                       ; Set current databank to this bank
CODE_29A303:        B5 5F         LDA $5F,x                 
CODE_29A305:        85 0A         STA $0A                   
CODE_29A307:        B5 44         LDA $44,x                 
CODE_29A309:        85 0B         STA $0B                   
CODE_29A30B:        B5 83         LDA $83,x                 
CODE_29A30D:        85 07         STA $07                   
CODE_29A30F:        C2 30         REP #$30                  
CODE_29A311:        A5 0A         LDA $0A                   
CODE_29A313:        38            SEC                       
CODE_29A314:        ED 10 02      SBC $0210                 
CODE_29A317:        85 0A         STA $0A                   
CODE_29A319:        18            CLC                       
CODE_29A31A:        69 08 00      ADC #$0008                
CODE_29A31D:        85 0C         STA $0C                   
CODE_29A31F:        18            CLC                       
CODE_29A320:        69 08 00      ADC #$0008                
CODE_29A323:        85 0E         STA $0E                   
CODE_29A325:        E2 20         SEP #$20                  
CODE_29A327:        BC C6 00      LDY $00C6,x               
CODE_29A32A:        5A            PHY                       
CODE_29A32B:        BD 79 06      LDA $0679,x               
CODE_29A32E:        A2 0C 00      LDX #$000C                
CODE_29A331:        86 08         STX $08                   
CODE_29A333:        C9 40         CMP #$40                  
CODE_29A335:        D0 03         BNE CODE_29A33A           
CODE_29A337:        A2 00 00      LDX #$0000                
CODE_29A33A:        AD BF 1E      LDA $1EBF                 
CODE_29A33D:        C9 1B         CMP #$1B                  
CODE_29A33F:        D0 05         BNE CODE_29A346           
CODE_29A341:        8A            TXA                       
CODE_29A342:        18            CLC                       
CODE_29A343:        69 18         ADC #$18                  
CODE_29A345:        AA            TAX                       
CODE_29A346:        BD A0 A2      LDA.w DATA_29A2A0,x               
CODE_29A349:        99 02 08      STA $0802,y               
CODE_29A34C:        BD D0 A2      LDA.w DATA_29A2D0,x               
CODE_29A34F:        99 03 08      STA $0803,y               
CODE_29A352:        C8            INY                       
CODE_29A353:        C8            INY                       
CODE_29A354:        C8            INY                       
CODE_29A355:        C8            INY                       
CODE_29A356:        E8            INX                       
CODE_29A357:        C6 08         DEC $08                   
CODE_29A359:        D0 EB         BNE CODE_29A346           
CODE_29A35B:        A2 00 00      LDX #$0000                
CODE_29A35E:        7A            PLY                       
CODE_29A35F:        5A            PHY                       
CODE_29A360:        B5 0A         LDA $0A,x                 
CODE_29A362:        99 00 08      STA $0800,y               
CODE_29A365:        99 04 08      STA $0804,y               
CODE_29A368:        99 08 08      STA $0808,y               
CODE_29A36B:        99 0C 08      STA $080C,y               
CODE_29A36E:        A5 07         LDA $07                   
CODE_29A370:        99 01 08      STA $0801,y               
CODE_29A373:        18            CLC                       
CODE_29A374:        69 08         ADC #$08                  
CODE_29A376:        99 05 08      STA $0805,y               
CODE_29A379:        18            CLC                       
CODE_29A37A:        69 08         ADC #$08                  
CODE_29A37C:        99 09 08      STA $0809,y               
CODE_29A37F:        18            CLC                       
CODE_29A380:        69 08         ADC #$08                  
CODE_29A382:        99 0D 08      STA $080D,y               
CODE_29A385:        C2 20         REP #$20                  
CODE_29A387:        98            TYA                       
CODE_29A388:        18            CLC                       
CODE_29A389:        69 10 00      ADC #$0010                
CODE_29A38C:        A8            TAY                       
CODE_29A38D:        E2 20         SEP #$20                  
CODE_29A38F:        E8            INX                       
CODE_29A390:        E8            INX                       
CODE_29A391:        E0 06 00      CPX #$0006                
CODE_29A394:        90 CA         BCC CODE_29A360           
CODE_29A396:        E2 10         SEP #$10                  
CODE_29A398:        C2 20         REP #$20                  
CODE_29A39A:        68            PLA                       
CODE_29A39B:        4A            LSR A                     
CODE_29A39C:        4A            LSR A                     
CODE_29A39D:        A8            TAY                       
CODE_29A39E:        E2 20         SEP #$20                  
CODE_29A3A0:        A2 00         LDX #$00                  
CODE_29A3A2:        B5 0B         LDA $0B,x                 
CODE_29A3A4:        F0 02         BEQ CODE_29A3A8           
CODE_29A3A6:        A9 01         LDA #$01                  
CODE_29A3A8:        99 20 0A      STA $0A20,y               
CODE_29A3AB:        99 21 0A      STA $0A21,y               
CODE_29A3AE:        99 22 0A      STA $0A22,y               
CODE_29A3B1:        99 23 0A      STA $0A23,y               
CODE_29A3B4:        C8            INY                       
CODE_29A3B5:        C8            INY                       
CODE_29A3B6:        C8            INY                       
CODE_29A3B7:        C8            INY                       
CODE_29A3B8:        E8            INX                       
CODE_29A3B9:        E8            INX                       
CODE_29A3BA:        E0 06         CPX #$06                  
CODE_29A3BC:        90 E4         BCC CODE_29A3A2           
CODE_29A3BE:        A6 9B         LDX $9B                   
CODE_29A3C0:        AB            PLB                       ;
CODE_29A3C1:        6B            RTL                       

CODE_29A3C2:        BF 7A C5 7F   LDA $7FC57A,x             
CODE_29A3C6:        D0 16         BNE CODE_29A3DE           
CODE_29A3C8:        20 2D A5      JSR CODE_29A52D           
CODE_29A3CB:        BD 71 06      LDA $0671,x               
CODE_29A3CE:        C9 5E         CMP #$5E                  
CODE_29A3D0:        F0 0C         BEQ CODE_29A3DE           
CODE_29A3D2:        C9 60         CMP #$60                  
CODE_29A3D4:        F0 08         BEQ CODE_29A3DE           
CODE_29A3D6:        C9 51         CMP #$51                  
CODE_29A3D8:        F0 04         BEQ CODE_29A3DE           
CODE_29A3DA:        C9 5F         CMP #$5F                  
CODE_29A3DC:        D0 0A         BNE CODE_29A3E8           
CODE_29A3DE:        BF 7A C5 7F   LDA $7FC57A,x             
CODE_29A3E2:        49 01         EOR #$01                  
CODE_29A3E4:        9F 7A C5 7F   STA $7FC57A,x             
CODE_29A3E8:        BD 71 06      LDA $0671,x               
CODE_29A3EB:        C9 2F         CMP #$2F                  
CODE_29A3ED:        F0 23         BEQ CODE_29A412           
CODE_29A3EF:        A9 8C         LDA #$8C                  
CODE_29A3F1:        85 01         STA $01                   
CODE_29A3F3:        BD 69 06      LDA $0669,x               
CODE_29A3F6:        F0 06         BEQ CODE_29A3FE           
CODE_29A3F8:        64 03         STZ $03                   
CODE_29A3FA:        A9 88         LDA #$88                  
CODE_29A3FC:        80 06         BRA CODE_29A404           

CODE_29A3FE:        A9 C0         LDA #$C0                  
CODE_29A400:        85 03         STA $03                   
CODE_29A402:        A9 8A         LDA #$8A                  
CODE_29A404:        85 00         STA $00                   
CODE_29A406:        A5 15         LDA $15                   
CODE_29A408:        29 0E         AND #$0E                  
CODE_29A40A:        09 20         ORA #$20                  
CODE_29A40C:        85 02         STA $02                   
CODE_29A40E:        04 03         TSB $03                   
CODE_29A410:        80 40         BRA CODE_29A452           

CODE_29A412:        C2 10         REP #$10                  
CODE_29A414:        BC C6 00      LDY $00C6,x               
CODE_29A417:        A9 F0         LDA #$F0                  
CODE_29A419:        99 01 08      STA $0801,y               
CODE_29A41C:        99 05 08      STA $0805,y               
CODE_29A41F:        99 09 08      STA $0809,y               
CODE_29A422:        99 0D 08      STA $080D,y               
CODE_29A425:        E2 10         SEP #$10                  
CODE_29A427:        BD 79 06      LDA $0679,x               
CODE_29A42A:        F0 02         BEQ CODE_29A42E           
CODE_29A42C:        A9 40         LDA #$40                  
CODE_29A42E:        09 2A         ORA #$2A                  
CODE_29A430:        85 02         STA $02                   
CODE_29A432:        85 03         STA $03                   
CODE_29A434:        A9 AC         LDA #$AC                  
CODE_29A436:        85 00         STA $00                   
CODE_29A438:        BD 61 06      LDA $0661,x               
CODE_29A43B:        C9 06         CMP #$06                  
CODE_29A43D:        D0 06         BNE CODE_29A445           
CODE_29A43F:        A9 AA         LDA #$AA                  
CODE_29A441:        85 02         STA $02                   
CODE_29A443:        80 7B         BRA CODE_29A4C0           

CODE_29A445:        BD 69 06      LDA $0669,x               
CODE_29A448:        F0 76         BEQ CODE_29A4C0           
CODE_29A44A:        A9 AE         LDA #$AE                  
CODE_29A44C:        85 00         STA $00                   
CODE_29A44E:        A9 84         LDA #$84                  
CODE_29A450:        85 01         STA $01                   
CODE_29A452:        A5 01         LDA $01                   
CODE_29A454:        85 0A         STA $0A                   
CODE_29A456:        A5 03         LDA $03                   
CODE_29A458:        85 0B         STA $0B                   
CODE_29A45A:        BF 72 C5 7F   LDA $7FC572,x             
CODE_29A45E:        C9 01         CMP #$01                  
CODE_29A460:        F0 2D         BEQ CODE_29A48F           
CODE_29A462:        C9 03         CMP #$03                  
CODE_29A464:        F0 29         BEQ CODE_29A48F           
CODE_29A466:        BF 3A C5 7F   LDA $7FC53A,x             
CODE_29A46A:        85 0C         STA $0C                   
CODE_29A46C:        BF 4A C5 7F   LDA $7FC54A,x             
CODE_29A470:        85 0D         STA $0D                   
CODE_29A472:        BF 5A C5 7F   LDA $7FC55A,x             
CODE_29A476:        85 0E         STA $0E                   
CODE_29A478:        BF 6A C5 7F   LDA $7FC56A,x             
CODE_29A47C:        85 0F         STA $0F                   
CODE_29A47E:        C2 10         REP #$10                  
CODE_29A480:        B4 C6         LDY $C6,x                 
CODE_29A482:        C8            INY                       
CODE_29A483:        C8            INY                       
CODE_29A484:        C8            INY                       
CODE_29A485:        C8            INY                       
CODE_29A486:        C8            INY                       
CODE_29A487:        C8            INY                       
CODE_29A488:        C8            INY                       
CODE_29A489:        C8            INY                       
CODE_29A48A:        20 E2 A4      JSR CODE_29A4E2           
CODE_29A48D:        E2 10         SEP #$10                  
CODE_29A48F:        BF 72 C5 7F   LDA $7FC572,x             
CODE_29A493:        C9 02         CMP #$02                  
CODE_29A495:        F0 29         BEQ CODE_29A4C0           
CODE_29A497:        C9 05         CMP #$05                  
CODE_29A499:        F0 25         BEQ CODE_29A4C0           
CODE_29A49B:        BF 32 C5 7F   LDA $7FC532,x             
CODE_29A49F:        85 0C         STA $0C                   
CODE_29A4A1:        BF 42 C5 7F   LDA $7FC542,x             
CODE_29A4A5:        85 0D         STA $0D                   
CODE_29A4A7:        BF 52 C5 7F   LDA $7FC552,x             
CODE_29A4AB:        85 0E         STA $0E                   
CODE_29A4AD:        BF 62 C5 7F   LDA $7FC562,x             
CODE_29A4B1:        85 0F         STA $0F                   
CODE_29A4B3:        C2 10         REP #$10                  
CODE_29A4B5:        B4 C6         LDY $C6,x                 
CODE_29A4B7:        C8            INY                       
CODE_29A4B8:        C8            INY                       
CODE_29A4B9:        C8            INY                       
CODE_29A4BA:        C8            INY                       
CODE_29A4BB:        20 E2 A4      JSR CODE_29A4E2           
CODE_29A4BE:        E2 10         SEP #$10                  
CODE_29A4C0:        A5 00         LDA $00                   
CODE_29A4C2:        85 0A         STA $0A                   
CODE_29A4C4:        A5 02         LDA $02                   
CODE_29A4C6:        85 0B         STA $0B                   
CODE_29A4C8:        B5 5F         LDA $5F,x                 
CODE_29A4CA:        85 0C         STA $0C                   
CODE_29A4CC:        B5 44         LDA $44,x                 
CODE_29A4CE:        85 0D         STA $0D                   
CODE_29A4D0:        B5 71         LDA $71,x                 
CODE_29A4D2:        85 0E         STA $0E                   
CODE_29A4D4:        B5 56         LDA $56,x                 
CODE_29A4D6:        85 0F         STA $0F                   
CODE_29A4D8:        C2 10         REP #$10                  
CODE_29A4DA:        B4 C6         LDY $C6,x                 
CODE_29A4DC:        20 E2 A4      JSR CODE_29A4E2           
CODE_29A4DF:        E2 10         SEP #$10                  
CODE_29A4E1:        6B            RTL                       

CODE_29A4E2:        C2 20         REP #$20                  
CODE_29A4E4:        A5 0C         LDA $0C                   
CODE_29A4E6:        38            SEC                       
CODE_29A4E7:        ED 10 02      SBC $0210                 
CODE_29A4EA:        85 0C         STA $0C                   
CODE_29A4EC:        A5 0E         LDA $0E                   
CODE_29A4EE:        38            SEC                       
CODE_29A4EF:        ED 16 02      SBC $0216                 
CODE_29A4F2:        85 0E         STA $0E                   
CODE_29A4F4:        E2 20         SEP #$20                  
CODE_29A4F6:        A5 0C         LDA $0C                   
CODE_29A4F8:        99 00 08      STA $0800,y               
CODE_29A4FB:        A5 0E         LDA $0E                   
CODE_29A4FD:        99 01 08      STA $0801,y               
CODE_29A500:        A5 0A         LDA $0A                   
CODE_29A502:        99 02 08      STA $0802,y               
CODE_29A505:        A5 0B         LDA $0B                   
CODE_29A507:        99 03 08      STA $0803,y               
CODE_29A50A:        A5 0F         LDA $0F                   
CODE_29A50C:        D0 06         BNE CODE_29A514           
CODE_29A50E:        A5 0E         LDA $0E                   
CODE_29A510:        C9 F0         CMP #$F0                  
CODE_29A512:        90 05         BCC CODE_29A519           
CODE_29A514:        A9 F0         LDA #$F0                  
CODE_29A516:        99 01 08      STA $0801,y               
CODE_29A519:        C2 20         REP #$20                  
CODE_29A51B:        98            TYA                       
CODE_29A51C:        4A            LSR A                     
CODE_29A51D:        4A            LSR A                     
CODE_29A51E:        A8            TAY                       
CODE_29A51F:        E2 20         SEP #$20                  
CODE_29A521:        A5 0D         LDA $0D                   
CODE_29A523:        F0 02         BEQ CODE_29A527           
CODE_29A525:        A9 01         LDA #$01                  
CODE_29A527:        09 02         ORA #$02                  
CODE_29A529:        99 20 0A      STA $0A20,y               
CODE_29A52C:        60            RTS                       

CODE_29A52D:        BF 72 C5 7F   LDA $7FC572,x             
CODE_29A531:        3A            DEC A                     
CODE_29A532:        10 45         BPL CODE_29A579           
CODE_29A534:        BF 32 C5 7F   LDA $7FC532,x             
CODE_29A538:        9F 3A C5 7F   STA $7FC53A,x             
CODE_29A53C:        BF 42 C5 7F   LDA $7FC542,x             
CODE_29A540:        9F 4A C5 7F   STA $7FC54A,x             
CODE_29A544:        BF 52 C5 7F   LDA $7FC552,x             
CODE_29A548:        9F 5A C5 7F   STA $7FC55A,x             
CODE_29A54C:        BF 62 C5 7F   LDA $7FC562,x             
CODE_29A550:        9F 6A C5 7F   STA $7FC56A,x             
CODE_29A554:        B5 5F         LDA $5F,x                 
CODE_29A556:        9F 32 C5 7F   STA $7FC532,x             
CODE_29A55A:        B5 44         LDA $44,x                 
CODE_29A55C:        9F 42 C5 7F   STA $7FC542,x             
CODE_29A560:        B5 71         LDA $71,x                 
CODE_29A562:        9F 52 C5 7F   STA $7FC552,x             
CODE_29A566:        B5 56         LDA $56,x                 
CODE_29A568:        9F 62 C5 7F   STA $7FC562,x             
CODE_29A56C:        BD 71 06      LDA $0671,x               
CODE_29A56F:        C9 2F         CMP #$2F                  
CODE_29A571:        D0 04         BNE CODE_29A577           
CODE_29A573:        A9 05         LDA #$05                  
CODE_29A575:        80 02         BRA CODE_29A579           

CODE_29A577:        A9 04         LDA #$04                  
CODE_29A579:        9F 72 C5 7F   STA $7FC572,x             
CODE_29A57D:        60            RTS                       

CODE_29A57E:        BD D7 1C      LDA $1CD7,x               
CODE_29A581:        38            SEC                       
CODE_29A582:        F5 5F         SBC $5F,x                 
CODE_29A584:        48            PHA                       
CODE_29A585:        BD C8 1C      LDA $1CC8,x               
CODE_29A588:        F5 44         SBC $44,x                 
CODE_29A58A:        A8            TAY                       
CODE_29A58B:        68            PLA                       
CODE_29A58C:        18            CLC                       
CODE_29A58D:        7D D7 1C      ADC $1CD7,x               
CODE_29A590:        95 5F         STA $5F,x                 
CODE_29A592:        98            TYA                       
CODE_29A593:        7D C8 1C      ADC $1CC8,x               
CODE_29A596:        95 44         STA $44,x                 
CODE_29A598:        BD D7 1C      LDA $1CD7,x               
CODE_29A59B:        38            SEC                       
CODE_29A59C:        FF 32 C5 7F   SBC $7FC532,x             
CODE_29A5A0:        48            PHA                       
CODE_29A5A1:        BD C8 1C      LDA $1CC8,x               
CODE_29A5A4:        FF 42 C5 7F   SBC $7FC542,x             
CODE_29A5A8:        A8            TAY                       
CODE_29A5A9:        68            PLA                       
CODE_29A5AA:        18            CLC                       
CODE_29A5AB:        7D D7 1C      ADC $1CD7,x               
CODE_29A5AE:        9F 32 C5 7F   STA $7FC532,x             
CODE_29A5B2:        98            TYA                       
CODE_29A5B3:        7D C8 1C      ADC $1CC8,x               
CODE_29A5B6:        9F 42 C5 7F   STA $7FC542,x             
CODE_29A5BA:        BD D7 1C      LDA $1CD7,x               
CODE_29A5BD:        38            SEC                       
CODE_29A5BE:        FF 3A C5 7F   SBC $7FC53A,x             
CODE_29A5C2:        48            PHA                       
CODE_29A5C3:        BD C8 1C      LDA $1CC8,x               
CODE_29A5C6:        FF 4A C5 7F   SBC $7FC54A,x             
CODE_29A5CA:        A8            TAY                       
CODE_29A5CB:        68            PLA                       
CODE_29A5CC:        18            CLC                       
CODE_29A5CD:        7D D7 1C      ADC $1CD7,x               
CODE_29A5D0:        9F 3A C5 7F   STA $7FC53A,x             
CODE_29A5D4:        98            TYA                       
CODE_29A5D5:        7D C8 1C      ADC $1CC8,x               
CODE_29A5D8:        9F 4A C5 7F   STA $7FC54A,x             
CODE_29A5DC:        B5 C6         LDA $C6,x                 
CODE_29A5DE:        18            CLC                       
CODE_29A5DF:        69 10         ADC #$10                  
CODE_29A5E1:        95 C6         STA $C6,x                 
CODE_29A5E3:        6B            RTL                       

CODE_29A5E4:        BD DC 1C      LDA $1CDC,x               
CODE_29A5E7:        38            SEC                       
CODE_29A5E8:        F5 71         SBC $71,x                 
CODE_29A5EA:        48            PHA                       
CODE_29A5EB:        BD 89 06      LDA $0689,x               
CODE_29A5EE:        F5 56         SBC $56,x                 
CODE_29A5F0:        A8            TAY                       
CODE_29A5F1:        68            PLA                       
CODE_29A5F2:        18            CLC                       
CODE_29A5F3:        7D DC 1C      ADC $1CDC,x               
CODE_29A5F6:        95 71         STA $71,x                 
CODE_29A5F8:        98            TYA                       
CODE_29A5F9:        7D 89 06      ADC $0689,x               
CODE_29A5FC:        95 56         STA $56,x                 
CODE_29A5FE:        BD DC 1C      LDA $1CDC,x               
CODE_29A601:        38            SEC                       
CODE_29A602:        FF 52 C5 7F   SBC $7FC552,x             
CODE_29A606:        48            PHA                       
CODE_29A607:        BD 89 06      LDA $0689,x               
CODE_29A60A:        FF 62 C5 7F   SBC $7FC562,x             
CODE_29A60E:        A8            TAY                       
CODE_29A60F:        68            PLA                       
CODE_29A610:        18            CLC                       
CODE_29A611:        7D DC 1C      ADC $1CDC,x               
CODE_29A614:        9F 52 C5 7F   STA $7FC552,x             
CODE_29A618:        98            TYA                       
CODE_29A619:        7D 89 06      ADC $0689,x               
CODE_29A61C:        9F 62 C5 7F   STA $7FC562,x             
CODE_29A620:        BD DC 1C      LDA $1CDC,x               
CODE_29A623:        38            SEC                       
CODE_29A624:        FF 5A C5 7F   SBC $7FC55A,x             
CODE_29A628:        48            PHA                       
CODE_29A629:        BD 89 06      LDA $0689,x               
CODE_29A62C:        FF 6A C5 7F   SBC $7FC56A,x             
CODE_29A630:        A8            TAY                       
CODE_29A631:        68            PLA                       
CODE_29A632:        18            CLC                       
CODE_29A633:        7D DC 1C      ADC $1CDC,x               
CODE_29A636:        9F 5A C5 7F   STA $7FC55A,x             
CODE_29A63A:        98            TYA                       
CODE_29A63B:        7D 89 06      ADC $0689,x               
CODE_29A63E:        9F 6A C5 7F   STA $7FC56A,x             
CODE_29A642:        B5 C6         LDA $C6,x                 
CODE_29A644:        18            CLC                       
CODE_29A645:        69 10         ADC #$10                  
CODE_29A647:        95 C6         STA $C6,x                 
CODE_29A649:        6B            RTL                       

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

CODE_29A700:        20 C3 A7      JSR CODE_29A7C3
CODE_29A703:        AE 27 07      LDX $0727
CODE_29A706:        BD A5 E3      LDA.w DATA_21E3A5,x               
CODE_29A709:        8D EC 1E      STA $1EEC                 
CODE_29A70C:        8A            TXA                       
CODE_29A70D:        0A            ASL A                     
CODE_29A70E:        AA            TAX                       
CODE_29A70F:        C2 20         REP #$20                  
CODE_29A711:        BD AD E3      LDA.w DATA_21E3AD,x               
CODE_29A714:        85 0A         STA $0A                   
CODE_29A716:        BD BD E3      LDA.w DATA_21E3BD,x               
CODE_29A719:        85 0C         STA $0C                   
CODE_29A71B:        BD CD E3      LDA.w DATA_21E3CD,x               
CODE_29A71E:        85 0E         STA $0E                   
CODE_29A720:        BD DD E3      LDA.w DATA_21E3DD,x               
CODE_29A723:        85 08         STA $08                   
CODE_29A725:        BD ED E3      LDA.w DATA_21E3ED,x               
CODE_29A728:        85 06         STA $06                   
CODE_29A72A:        E2 20         SEP #$20                  
CODE_29A72C:        A0 08         LDY #$08                  
CODE_29A72E:        B1 0A         LDA ($0A),y               
CODE_29A730:        99 ED 1E      STA $1EED,y               
CODE_29A733:        B1 0C         LDA ($0C),y               
CODE_29A735:        99 09 1F      STA $1F09,y               
CODE_29A738:        B1 0E         LDA ($0E),y               
CODE_29A73A:        99 FB 1E      STA $1EFB,y               
CODE_29A73D:        B1 08         LDA ($08),y               
CODE_29A73F:        99 17 1F      STA $1F17,y               
CODE_29A742:        BB            TYX                       
CODE_29A743:        B1 06         LDA ($06),y               
CODE_29A745:        9F 56 39 7E   STA $7E3956,x             
CODE_29A749:        88            DEY                       
CODE_29A74A:        10 E2         BPL CODE_29A72E           
CODE_29A74C:        AC 27 07      LDY $0727                 
CODE_29A74F:        AE 2B 07      LDX $072B                 
CODE_29A752:        CA            DEX                       
CODE_29A753:        B9 6D C9      LDA.w DATA_21C96D,y               
CODE_29A756:        9F 75 39 7E   STA $7E3975,x             
CODE_29A75A:        8D 43 00      STA $0043                 
CODE_29A75D:        8D 44 00      STA $0044                 
CODE_29A760:        8F 7D 39 7E   STA $7E397D               
CODE_29A764:        8F 7E 39 7E   STA $7E397E               
CODE_29A768:        A9 20         LDA #$20                  
CODE_29A76A:        9F 79 39 7E   STA $7E3979,x             
CODE_29A76E:        8D 47 00      STA $0047                 
CODE_29A771:        8D 48 00      STA $0048                 
CODE_29A774:        8F 81 39 7E   STA $7E3981               
CODE_29A778:        8F 82 39 7E   STA $7E3982               
CODE_29A77C:        A9 01         LDA #$01                  
CODE_29A77E:        9F 92 39 7E   STA $7E3992,x             
CODE_29A782:        A9 00         LDA #$00                  
CODE_29A784:        9F 7B 39 7E   STA $7E397B,x             
CODE_29A788:        9F 77 39 7E   STA $7E3977,x             
CODE_29A78C:        8D 45 00      STA $0045                 
CODE_29A78F:        8D 46 00      STA $0046                 
CODE_29A792:        8F 7F 39 7E   STA $7E397F               
CODE_29A796:        8F 80 39 7E   STA $7E3980               
CODE_29A79A:        9F 83 39 7E   STA $7E3983,x             
CODE_29A79E:        9F 85 39 7E   STA $7E3985,x             
CODE_29A7A2:        9F 87 39 7E   STA $7E3987,x             
CODE_29A7A6:        9F 89 39 7E   STA $7E3989,x             
CODE_29A7AA:        9D 22 07      STA $0722,x               
CODE_29A7AD:        9D 24 07      STA $0724,x               
CODE_29A7B0:        CA            DEX                       
CODE_29A7B1:        10 A0         BPL CODE_29A753           
CODE_29A7B3:        8E 26 1F      STX $1F26                 
CODE_29A7B6:        8F 94 39 7E   STA $7E3994               
CODE_29A7BA:        8F 70 39 7E   STA $7E3970               
CODE_29A7BE:        8F 71 39 7E   STA $7E3971               
CODE_29A7C2:        6B            RTL                       

CODE_29A7C3:        AC 27 07      LDY $0727                 
CODE_29A7C6:        AD 83 07      LDA $0783                 
CODE_29A7C9:        29 0F         AND #$0F                  
CODE_29A7CB:        AA            TAX                       
CODE_29A7CC:        BD 7D E5      LDA.w DATA_21E57D,x               
CODE_29A7CF:        18            CLC                       
CODE_29A7D0:        79 75 E5      ADC.w DATA_21E575,y               
CODE_29A7D3:        8D 43 07      STA $0743                 
CODE_29A7D6:        60            RTS                       

CODE_29A7D7:        AE 26 07      LDX $0726                 
CODE_29A7DA:        BD 8D E5      LDA.w DATA_21E58D,x               
CODE_29A7DD:        85 00         STA $00                   
CODE_29A7DF:        AD 38 07      LDA $0738                 
CODE_29A7E2:        18            CLC                       
CODE_29A7E3:        65 00         ADC $00                   
CODE_29A7E5:        AA            TAX                       
CODE_29A7E6:        BD 80 1D      LDA $1D80,x               
CODE_29A7E9:        C9 01         CMP #$01                  
CODE_29A7EB:        F0 05         BEQ CODE_29A7F2           
CODE_29A7ED:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29A7F1:        60            RTS                       

CODE_29A7F2:        AE 38 07      LDX $0738                 
CODE_29A7F5:        BD C6 1D      LDA $1DC6,x               
CODE_29A7F8:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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
  
CODE_29A81C:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29A820:        60            RTS                       

CODE_29A821:        A5 59         LDA $59                   
CODE_29A823:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29A827:        dw CODE_29A88D
                    dw CODE_29A8D7
                    dw CODE_29A8E5
                    dw CODE_29A936
                    dw CODE_29A96E
                    dw CODE_29A8D7

CODE_29A833:        20 21 A8      JSR CODE_29A821           
CODE_29A836:        6B            RTL                       

CODE_29A837:        A5 57         LDA $57                   
CODE_29A839:        D0 22         BNE CODE_29A85D           
CODE_29A83B:        A9 20         LDA #$20                  
CODE_29A83D:        85 57         STA $57                   
CODE_29A83F:        A9 12         LDA #$12                  
CODE_29A841:        8D 08 02      STA $0208                 
CODE_29A844:        A9 01         LDA #$01                  
CODE_29A846:        8D 09 02      STA $0209                 
CODE_29A849:        A9 02         LDA #$02                  
CODE_29A84B:        8D 03 02      STA $0203                 
CODE_29A84E:        A9 20         LDA #$20                  
CODE_29A850:        8D 04 02      STA $0204                 
CODE_29A853:        AD 98 05      LDA $0598                 
CODE_29A856:        F0 05         BEQ CODE_29A85D           
CODE_29A858:        A9 01         LDA #$01                  
CODE_29A85A:        8D 0B 02      STA $020B                 
CODE_29A85D:        A5 57         LDA $57                   
CODE_29A85F:        29 04         AND #$04                  
CODE_29A861:        4A            LSR A                     
CODE_29A862:        AA            TAX                       
CODE_29A863:        C2 20         REP #$20                  
CODE_29A865:        BF 89 A8 29   LDA.l DATA_29A889,x             
CODE_29A869:        8D 00 13      STA $1300                 
CODE_29A86C:        E2 20         SEP #$20                  
CODE_29A86E:        A9 01         LDA #$01                  
CODE_29A870:        8D 00 15      STA $1500                 
CODE_29A873:        C6 57         DEC $57                   
CODE_29A875:        D0 11         BNE CODE_29A888           
CODE_29A877:        A9 13         LDA #$13                  
CODE_29A879:        8D 08 02      STA $0208                 
CODE_29A87C:        9C 09 02      STZ $0209                 
CODE_29A87F:        9C 03 02      STZ $0203                 
CODE_29A882:        9C 04 02      STZ $0204                 
CODE_29A885:        9C 0B 02      STZ $020B                 
CODE_29A888:        60            RTS                       

DATA_29A889:        dw $0000
                    dw $7FFF

CODE_29A88D:        AC 26 07      LDY $0726
CODE_29A890:        A2 00         LDX #$00
CODE_29A893:        B9 47 00      LDA $0047,y
CODE_29A895:        38            SEC                       
CODE_29A896:        ED 10 02      SBC $0210                 
CODE_29A899:        C9 80         CMP #$80                  
CODE_29A89B:        B0 02         BCS CODE_29A89F                   
CODE_29A89D:        A2 01         LDX #$01                  
CODE_29A89F:        86 58         STX $58                   
CODE_29A8A1:        BD 8F E5      LDA.w DATA_21E58F,x               
CODE_29A8A4:        85 56         STA $56                   
CODE_29A8A6:        B9 43 00      LDA $0043,y               
CODE_29A8A9:        85 54         STA $54                   
CODE_29A8AB:        8F 74 39 7E   STA $7E3974               
CODE_29A8AF:        A2 05         LDX #$05                  
CODE_29A8B1:        AD 30 07      LDA $0730                 
CODE_29A8B4:        D0 1A         BNE CODE_29A8D0           
CODE_29A8B6:        B9 43 00      LDA $0043,y               
CODE_29A8B9:        8D 30 07      STA $0730                 
CODE_29A8BC:        B9 47 00      LDA $0047,y               
CODE_29A8BF:        8D 32 07      STA $0732                 
CODE_29A8C2:        B9 45 00      LDA $0045,y               
CODE_29A8C5:        8D 31 07      STA $0731                 
CODE_29A8C8:        B9 52 00      LDA $0052,y               
CODE_29A8CB:        8D 33 07      STA $0733                 
CODE_29A8CE:        A2 01         LDX #$01                  
CODE_29A8D0:        86 59         STX $59                   
CODE_29A8D2:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29A8D6:        60            RTS                       

CODE_29A8D7:        20 37 A8      JSR CODE_29A837           
CODE_29A8DA:        A5 57         LDA $57                   
CODE_29A8DC:        D0 02         BNE CODE_29A8E0           
CODE_29A8DE:        E6 59         INC $59                   
CODE_29A8E0:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29A8E4:        60            RTS                       

CODE_29A8E5:        E6 57         INC $57                   
CODE_29A8E7:        AC 26 07      LDY $0726                 
CODE_29A8EA:        A6 58         LDX $58                   
CODE_29A8EC:        A5 56         LDA $56                   
CODE_29A8EE:        18            CLC                       
CODE_29A8EF:        7D 91 E5      ADC.w DATA_21E591,x               
CODE_29A8F2:        85 56         STA $56                   
CODE_29A8F4:        B9 47 00      LDA $0047,y               
CODE_29A8F7:        38            SEC                       
CODE_29A8F8:        ED 10 02      SBC $0210                 
CODE_29A8FB:        C5 56         CMP $56                   
CODE_29A8FD:        D0 09         BNE CODE_29A908           
CODE_29A8FF:        A9 F0         LDA #$F0                  
CODE_29A901:        8F 74 39 7E   STA $7E3974               
CODE_29A905:        4C 27 A9      JMP CODE_29A927           

CODE_29A908:        A5 56         LDA $56                   
CODE_29A90A:        DD 93 E5      CMP.w DATA_21E593,x               
CODE_29A90D:        D0 18         BNE CODE_29A927           
CODE_29A90F:        AD 27 07      LDA $0727                 
CODE_29A912:        8D 2A 04      STA $042A                 
CODE_29A915:        A9 08         LDA #$08                  
CODE_29A917:        8D 27 07      STA $0727                 
CODE_29A91A:        A0 0D         LDY #$0D                  
CODE_29A91C:        A9 00         LDA #$00                  
CODE_29A91E:        99 17 1F      STA $1F17,y               
CODE_29A921:        88            DEY                       
CODE_29A922:        10 FA         BPL CODE_29A91E           
CODE_29A924:        E6 59         INC $59                   
CODE_29A926:        60            RTS                       

CODE_29A927:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29A92B:        A5 56         LDA $56                   
CODE_29A92D:        85 01         STA $01                   
CODE_29A92F:        A9 01         LDA #$01                  
CODE_29A931:        85 02         STA $02                   
CODE_29A933:        4C 70 AA      JMP CODE_29AA70           

CODE_29A936:        A9 00         LDA #$00                  
CODE_29A938:        85 57         STA $57                   
CODE_29A93A:        A9 F8         LDA #$F8                  
CODE_29A93C:        85 56         STA $56                   
CODE_29A93E:        E6 59         INC $59                   
CODE_29A940:        AC 2A 04      LDY $042A                 
CODE_29A943:        AE 26 07      LDX $0726                 
CODE_29A946:        A9 00         LDA #$00                  
CODE_29A948:        9D 22 07      STA $0722,x               
CODE_29A94B:        9D 24 07      STA $0724,x               
CODE_29A94E:        95 45         STA $45,x                 
CODE_29A950:        B9 A7 E5      LDA.w DATA_21E5A7,y               
CODE_29A953:        95 47         STA $47,x                 
CODE_29A955:        A9 F0         LDA #$F0                  
CODE_29A957:        85 56         STA $56                   
CODE_29A959:        B9 95 E5      LDA.w DATA_21E595,y               
CODE_29A95C:        85 54         STA $54                   
CODE_29A95E:        A9 80         LDA #$80                  
CODE_29A960:        8D 11 07      STA $0711                 
CODE_29A963:        A9 03         LDA #$03                  
CODE_29A965:        8D 13 07      STA $0713                 
CODE_29A968:        A9 00         LDA #$00                  
CODE_29A96A:        8D 2C 07      STA $072C                 
CODE_29A96D:        60            RTS                       

CODE_29A96E:        A9 00         LDA #$00                  
CODE_29A970:        8D 13 07      STA $0713                 
CODE_29A973:        AC 2A 04      LDY $042A                 
CODE_29A976:        AE 26 07      LDX $0726                 
CODE_29A979:        E6 57         INC $57                   
CODE_29A97B:        AC 2A 04      LDY $042A                 
CODE_29A97E:        A6 58         LDX $58                   
CODE_29A980:        A5 56         LDA $56                   
CODE_29A982:        18            CLC                       
CODE_29A983:        7D 91 E5      ADC.w DATA_21E591,x               
CODE_29A986:        85 56         STA $56                   
CODE_29A988:        D9 A7 E5      CMP.w DATA_21E5A7,y               
CODE_29A98B:        D0 0F         BNE CODE_29A99C           
CODE_29A98D:        AE 26 07      LDX $0726                 
CODE_29A990:        B9 95 E5      LDA.w DATA_21E595,y               
CODE_29A993:        8F 74 39 7E   STA $7E3974               
CODE_29A997:        95 43         STA $43,x                 
CODE_29A999:        4C AB A9      JMP CODE_29A9AB           

CODE_29A99C:        DD 93 E5      CMP.w DATA_21E593,x               
CODE_29A99F:        D0 0A         BNE CODE_29A9AB           
CODE_29A9A1:        A9 00         LDA #$00                  
CODE_29A9A3:        85 57         STA $57                   
CODE_29A9A5:        85 59         STA $59                   
CODE_29A9A7:        A9 F8         LDA #$F8                  
CODE_29A9A9:        85 56         STA $56                   
CODE_29A9AB:        4C 27 A9      JMP CODE_29A927           

CODE_29A9AE:        AD 2E 07      LDA $072E                 
CODE_29A9B1:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29A9B5:        dw CODE_29A9BB
                    dw CODE_29A9D9
                    dw CODE_29A9EF

CODE_29A9BB:        AE 26 07      LDX $0726
CODE_29A9BE:        B5 43         LDA $43,x                 
CODE_29A9C0:        8F 74 39 7E   STA $7E3974               
CODE_29A9C4:        18            CLC                       
CODE_29A9C5:        69 10         ADC #$10                  
CODE_29A9C7:        85 54         STA $54                   
CODE_29A9C9:        B5 45         LDA $45,x                 
CODE_29A9CB:        85 55         STA $55                   
CODE_29A9CD:        B5 47         LDA $47,x                 
CODE_29A9CF:        85 56         STA $56                   
CODE_29A9D1:        EE 2E 07      INC $072E                 
CODE_29A9D4:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29A9D8:        6B            RTL                       

CODE_29A9D9:        20 37 A8      JSR CODE_29A837           
CODE_29A9DC:        A5 57         LDA $57                   
CODE_29A9DE:        D0 0A         BNE CODE_29A9EA           
CODE_29A9E0:        EE 2E 07      INC $072E                 
CODE_29A9E3:        A9 02         LDA #$02                  
CODE_29A9E5:        A9 43         LDA #$43                  ; \
CODE_29A9E7:        8D 03 12      STA $1203                 ; / World 8 overworld hand pulling sound effect
CODE_29A9EA:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29A9EE:        6B            RTL                       

CODE_29A9EF:        A9 01         LDA #$01                  
CODE_29A9F1:        85 00         STA $00                   
CODE_29A9F3:        20 47 AA      JSR CODE_29AA47           
CODE_29A9F6:        A5 57         LDA $57                   
CODE_29A9F8:        C9 20         CMP #$20                  
CODE_29A9FA:        D0 14         BNE CODE_29AA10           
CODE_29A9FC:        A9 10         LDA #$10                  
CODE_29A9FE:        8D 29 07      STA $0729                 
CODE_29AA01:        AE 26 07      LDX $0726                 
CODE_29AA04:        A9 00         LDA #$00                  
CODE_29AA06:        9D 3F 07      STA $073F,x               
CODE_29AA09:        8D 28 07      STA $0728                 
CODE_29AA0C:        8D 2E 07      STA $072E                 
CODE_29AA0F:        6B            RTL                       

CODE_29AA10:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29AA14:        AE 26 07      LDX $0726                 
CODE_29AA17:        B5 43         LDA $43,x                 
CODE_29AA19:        18            CLC                       
CODE_29AA1A:        69 10         ADC #$10                  
CODE_29AA1C:        85 00         STA $00                   
CODE_29AA1E:        B5 47         LDA $47,x                 
CODE_29AA20:        38            SEC                       
CODE_29AA21:        ED 10 02      SBC $0210                 
CODE_29AA24:        85 01         STA $01                   
CODE_29AA26:        A9 00         LDA #$00                  
CODE_29AA28:        85 02         STA $02                   
CODE_29AA2A:        B5 47         LDA $47,x                 
CODE_29AA2C:        8D 04 08      STA $0804                 
CODE_29AA2F:        A9 80         LDA #$80                  
CODE_29AA31:        8D 05 08      STA $0805                 
CODE_29AA34:        A9 00         LDA #$00                  
CODE_29AA36:        8D 06 08      STA $0806                 
CODE_29AA39:        A9 21         LDA #$21                  
CODE_29AA3B:        8D 07 08      STA $0807                 
CODE_29AA3E:        A9 02         LDA #$02                  
CODE_29AA40:        8D 21 0A      STA $0A21                 
CODE_29AA43:        20 70 AA      JSR CODE_29AA70           
CODE_29AA46:        6B            RTL                       

CODE_29AA47:        A5 15         LDA $15                   
CODE_29AA49:        29 01         AND #$01                  
CODE_29AA4B:        D0 22         BNE CODE_29AA6F           
CODE_29AA4D:        A5 57         LDA $57                   
CODE_29AA4F:        29 10         AND #$10                  
CODE_29AA51:        4A            LSR A                     
CODE_29AA52:        4A            LSR A                     
CODE_29AA53:        4A            LSR A                     
CODE_29AA54:        4A            LSR A                     
CODE_29AA55:        A8            TAY                       
CODE_29AA56:        AE 26 07      LDX $0726                 
CODE_29AA59:        A5 54         LDA $54                   
CODE_29AA5B:        18            CLC                       
CODE_29AA5C:        79 B0 E5      ADC.w DATA_21E5B0,y               
CODE_29AA5F:        85 54         STA $54                   
CODE_29AA61:        E6 57         INC $57                   
CODE_29AA63:        A5 57         LDA $57                   
CODE_29AA65:        29 10         AND #$10                  
CODE_29AA67:        F0 06         BEQ CODE_29AA6F           
CODE_29AA69:        A5 54         LDA $54                   
CODE_29AA6B:        8F 74 39 7E   STA $7E3974               
CODE_29AA6F:        60            RTS                       

CODE_29AA70:        A6 02         LDX $02                   
CODE_29AA72:        A5 54         LDA $54                   
CODE_29AA74:        8D 61 08      STA $0861                 
CODE_29AA77:        A5 02         LDA $02                   
CODE_29AA79:        F0 11         BEQ CODE_29AA8C           
CODE_29AA7B:        AF 74 39 7E   LDA $7E3974               
CODE_29AA7F:        C9 F0         CMP #$F0                  
CODE_29AA81:        D0 28         BNE CODE_29AAAB           
CODE_29AA83:        8D 85 08      STA $0885                 
CODE_29AA86:        8D 89 08      STA $0889                 
CODE_29AA89:        4C AB AA      JMP CODE_29AAAB           

CODE_29AA8C:        A5 57         LDA $57                   
CODE_29AA8E:        29 10         AND #$10                  
CODE_29AA90:        F0 19         BEQ CODE_29AAAB           
CODE_29AA92:        AF 74 39 7E   LDA $7E3974               
CODE_29AA96:        8D 89 08      STA $0889                 
CODE_29AA99:        38            SEC                       
CODE_29AA9A:        E9 10         SBC #$10                  
CODE_29AA9C:        8D 85 08      STA $0885                 
CODE_29AA9F:        AD 86 08      LDA $0886                 
CODE_29AAA2:        C9 26         CMP #$26                  
CODE_29AAA4:        D0 05         BNE CODE_29AAAB           
CODE_29AAA6:        A9 F0         LDA #$F0                  
CODE_29AAA8:        8D 85 08      STA $0885                 
CODE_29AAAB:        BD B2 E5      LDA.w DATA_21E5B2,x               
CODE_29AAAE:        8D 63 08      STA $0863                 
CODE_29AAB1:        A5 01         LDA $01                   
CODE_29AAB3:        8D 60 08      STA $0860                 
CODE_29AAB6:        A9 02         LDA #$02                  
CODE_29AAB8:        8D 38 0A      STA $0A38                 
CODE_29AABB:        BC B4 E5      LDY.w DATA_21E5B4,x               
CODE_29AABE:        A5 57         LDA $57                   
CODE_29AAC0:        29 10         AND #$10                  
CODE_29AAC2:        F0 03         BEQ CODE_29AAC7           
CODE_29AAC4:        BC B6 E5      LDY.w DATA_21E5B6,x               
CODE_29AAC7:        8C 62 08      STY $0862                 
CODE_29AACA:        A5 58         LDA $58                   
CODE_29AACC:        F0 08         BEQ CODE_29AAD6           
CODE_29AACE:        AD 63 08      LDA $0863                 
CODE_29AAD1:        09 40         ORA #$40                  
CODE_29AAD3:        8D 63 08      STA $0863                 
CODE_29AAD6:        A5 54         LDA $54                   
CODE_29AAD8:        8D 01 08      STA $0801                 
CODE_29AADB:        A9 A8         LDA #$A8                  
CODE_29AADD:        8D 02 08      STA $0802                 
CODE_29AAE0:        A9 22         LDA #$22                  
CODE_29AAE2:        8D 03 08      STA $0803                 
CODE_29AAE5:        9C 00 08      STZ $0800                 
CODE_29AAE8:        A9 02         LDA #$02                  
CODE_29AAEA:        8D 20 0A      STA $0A20                 
CODE_29AAED:        A5 01         LDA $01                   
CODE_29AAEF:        29 80         AND #$80                  
CODE_29AAF1:        F0 0A         BEQ CODE_29AAFD           
CODE_29AAF3:        A9 F0         LDA #$F0                  
CODE_29AAF5:        8D 00 08      STA $0800                 
CODE_29AAF8:        A9 AA         LDA #$AA                  
CODE_29AAFA:        8D 02 08      STA $0802                 
CODE_29AAFD:        60            RTS                       

CODE_29AAFE:        AE 26 07      LDX $0726                 
CODE_29AB01:        A5 93         LDA $93                   
CODE_29AB03:        D0 59         BNE CODE_29AB5E           
CODE_29AB05:        AC 27 07      LDY $0727                 
CODE_29AB08:        B5 43         LDA $43,x                 
CODE_29AB0A:        38            SEC                       
CODE_29AB0B:        F9 6D C9      SBC.w DATA_21C96D,y               
CODE_29AB0E:        85 5C         STA $5C                   
CODE_29AB10:        B5 47         LDA $47,x                 
CODE_29AB12:        38            SEC                       
CODE_29AB13:        E9 20         SBC #$20                  
CODE_29AB15:        85 60         STA $60                   
CODE_29AB17:        A9 00         LDA #$00                  
CODE_29AB19:        85 66         STA $66                   
CODE_29AB1B:        85 61         STA $61                   
CODE_29AB1D:        85 5D         STA $5D                   
CODE_29AB1F:        B5 47         LDA $47,x                 
CODE_29AB21:        C9 20         CMP #$20                  
CODE_29AB23:        B0 0C         BCS CODE_29AB31                   
CODE_29AB25:        A9 01         LDA #$01                  
CODE_29AB27:        85 66         STA $66                   
CODE_29AB29:        A9 FF         LDA #$FF                  
CODE_29AB2B:        45 60         EOR $60                   
CODE_29AB2D:        A8            TAY                       
CODE_29AB2E:        C8            INY                       
CODE_29AB2F:        84 60         STY $60                   
CODE_29AB31:        AC 27 07      LDY $0727                 
CODE_29AB34:        B5 43         LDA $43,x                 
CODE_29AB36:        D9 6D C9      CMP.w DATA_21C96D,y               
CODE_29AB39:        B0 0E         BCS CODE_29AB49                   
CODE_29AB3B:        A9 FF         LDA #$FF                  
CODE_29AB3D:        45 5C         EOR $5C                   
CODE_29AB3F:        A8            TAY                       
CODE_29AB40:        C8            INY                       
CODE_29AB41:        84 5C         STY $5C                   
CODE_29AB43:        A5 66         LDA $66                   
CODE_29AB45:        09 02         ORA #$02                  
CODE_29AB47:        85 66         STA $66                   
CODE_29AB49:        A0 04         LDY #$04                  
CODE_29AB4B:        18            CLC                       
CODE_29AB4C:        46 5C         LSR $5C                   
CODE_29AB4E:        66 5D         ROR $5D                   
CODE_29AB50:        18            CLC                       
CODE_29AB51:        46 60         LSR $60                   
CODE_29AB53:        66 61         ROR $61                   
CODE_29AB55:        88            DEY                       
CODE_29AB56:        10 F3         BPL CODE_29AB4B           
CODE_29AB58:        A9 20         LDA #$20                  
CODE_29AB5A:        85 65         STA $65                   
CODE_29AB5C:        E6 93         INC $93                   
CODE_29AB5E:        A9 04         LDA #$04                  
CODE_29AB60:        8D 03 12      STA $1203                 
CODE_29AB63:        A5 66         LDA $66                   
CODE_29AB65:        29 01         AND #$01                  
CODE_29AB67:        F0 16         BEQ CODE_29AB7F           
CODE_29AB69:        A5 62         LDA $62                   
CODE_29AB6B:        18            CLC                       
CODE_29AB6C:        65 61         ADC $61                   
CODE_29AB6E:        85 62         STA $62                   
CODE_29AB70:        B5 47         LDA $47,x                 
CODE_29AB72:        65 60         ADC $60                   
CODE_29AB74:        95 47         STA $47,x                 
CODE_29AB76:        B5 45         LDA $45,x                 
CODE_29AB78:        69 00         ADC #$00                  
CODE_29AB7A:        95 45         STA $45,x                 
CODE_29AB7C:        4C 92 AB      JMP CODE_29AB92           

CODE_29AB7F:        A5 62         LDA $62                   
CODE_29AB81:        38            SEC                       
CODE_29AB82:        E5 61         SBC $61                   
CODE_29AB84:        85 62         STA $62                   
CODE_29AB86:        B5 47         LDA $47,x                 
CODE_29AB88:        E5 60         SBC $60                   
CODE_29AB8A:        95 47         STA $47,x                 
CODE_29AB8C:        B5 45         LDA $45,x                 
CODE_29AB8E:        E9 00         SBC #$00                  
CODE_29AB90:        95 45         STA $45,x                 
CODE_29AB92:        A5 66         LDA $66                   
CODE_29AB94:        29 02         AND #$02                  
CODE_29AB96:        F0 10         BEQ CODE_29ABA8           
CODE_29AB98:        A5 5E         LDA $5E                   
CODE_29AB9A:        18            CLC                       
CODE_29AB9B:        65 5D         ADC $5D                   
CODE_29AB9D:        85 5E         STA $5E                   
CODE_29AB9F:        B5 43         LDA $43,x                 
CODE_29ABA1:        65 5C         ADC $5C                   
CODE_29ABA3:        95 43         STA $43,x                 
CODE_29ABA5:        4C B5 AB      JMP CODE_29ABB5           

CODE_29ABA8:        A5 5E         LDA $5E                   
CODE_29ABAA:        38            SEC                       
CODE_29ABAB:        E5 5D         SBC $5D                   
CODE_29ABAD:        85 5E         STA $5E                   
CODE_29ABAF:        B5 43         LDA $43,x                 
CODE_29ABB1:        E5 5C         SBC $5C                   
CODE_29ABB3:        95 43         STA $43,x                 
CODE_29ABB5:        C6 65         DEC $65                   
CODE_29ABB7:        D0 29         BNE CODE_29ABE2           
CODE_29ABB9:        A9 08         LDA #$08                  
CODE_29ABBB:        8D 28 07      STA $0728                 
CODE_29ABBE:        AE 26 07      LDX $0726                 
CODE_29ABC1:        A9 00         LDA #$00                  
CODE_29ABC3:        85 93         STA $93                   
CODE_29ABC5:        9D 5A 00      STA $005A,x               
CODE_29ABC8:        9F 85 39 7E   STA $7E3985,x             
CODE_29ABCC:        9F 87 39 7E   STA $7E3987,x             
CODE_29ABD0:        B5 43         LDA $43,x                 
CODE_29ABD2:        9F 7D 39 7E   STA $7E397D,x             
CODE_29ABD6:        B5 45         LDA $45,x                 
CODE_29ABD8:        9F 7F 39 7E   STA $7E397F,x             
CODE_29ABDC:        B5 47         LDA $47,x                 
CODE_29ABDE:        9F 81 39 7E   STA $7E3981,x             
CODE_29ABE2:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29ABE6:        6B            RTL                       

CODE_29ABE7:        AE 26 07      LDX $0726                 
CODE_29ABEA:        B5 47         LDA $47,x                 
CODE_29ABEC:        38            SEC                       
CODE_29ABED:        E9 02         SBC #$02                  
CODE_29ABEF:        95 47         STA $47,x                 
CODE_29ABF1:        B5 45         LDA $45,x                 
CODE_29ABF3:        E9 00         SBC #$00                  
CODE_29ABF5:        95 45         STA $45,x                 
CODE_29ABF7:        B5 47         LDA $47,x                 
CODE_29ABF9:        38            SEC                       
CODE_29ABFA:        ED 10 02      SBC $0210                 
CODE_29ABFD:        D0 0F         BNE CODE_29AC0E           
CODE_29ABFF:        A9 00         LDA #$00                  
CODE_29AC01:        9D 22 07      STA $0722,x               
CODE_29AC04:        9D 24 07      STA $0724,x               
CODE_29AC07:        9F 77 39 7E   STA $7E3977,x             
CODE_29AC0B:        EE 28 07      INC $0728                 
CODE_29AC0E:        A9 04         LDA #$04                  
CODE_29AC10:        8D 03 12      STA $1203                 
CODE_29AC13:        20 1B AC      JSR CODE_29AC1B           
CODE_29AC16:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29AC1A:        6B            RTL                       

CODE_29AC1B:        AE 26 07      LDX $0726                 
CODE_29AC1E:        B5 43         LDA $43,x                 
CODE_29AC20:        8D 01 08      STA $0801                 
CODE_29AC23:        A9 A8         LDA #$A8                  
CODE_29AC25:        8D 02 08      STA $0802                 
CODE_29AC28:        A9 20         LDA #$20                  
CODE_29AC2A:        8D 03 08      STA $0803                 
CODE_29AC2D:        A9 00         LDA #$00                  
CODE_29AC2F:        8D 00 08      STA $0800                 
CODE_29AC32:        B5 47         LDA $47,x                 
CODE_29AC34:        38            SEC                       
CODE_29AC35:        ED 10 02      SBC $0210                 
CODE_29AC38:        29 80         AND #$80                  
CODE_29AC3A:        F0 0A         BEQ CODE_29AC46           
CODE_29AC3C:        A9 F0         LDA #$F0                  
CODE_29AC3E:        8D 00 08      STA $0800                 
CODE_29AC41:        A9 AA         LDA #$AA                  
CODE_29AC43:        8D 02 08      STA $0802                 
CODE_29AC46:        A9 02         LDA #$02                  
CODE_29AC48:        8D 20 0A      STA $0A20                 
CODE_29AC4B:        60            RTS                       

CODE_29AC4C:        AE 26 07      LDX $0726                 
CODE_29AC4F:        A9 F0         LDA #$F0                  
CODE_29AC51:        95 47         STA $47,x                 
CODE_29AC53:        AC 27 07      LDY $0727                 
CODE_29AC56:        B9 6D C9      LDA.w DATA_21C96D,y               
CODE_29AC59:        95 43         STA $43,x                 
CODE_29AC5B:        EE 28 07      INC $0728                 
CODE_29AC5E:        4C 0E AC      JMP CODE_29AC0E           

CODE_29AC61:        AE 26 07      LDX $0726                 
CODE_29AC64:        B5 47         LDA $47,x                 
CODE_29AC66:        38            SEC                       
CODE_29AC67:        E9 02         SBC #$02                  
CODE_29AC69:        95 47         STA $47,x                 
CODE_29AC6B:        C9 20         CMP #$20                  
CODE_29AC6D:        D0 03         BNE CODE_29AC72           
CODE_29AC6F:        4C B9 AB      JMP CODE_29ABB9           

CODE_29AC72:        A9 04         LDA #$04                  
CODE_29AC74:        8D 03 12      STA $1203                 
CODE_29AC77:        4C 0E AC      JMP CODE_29AC0E           

CODE_29AC7A:        AE 26 07      LDX $0726                 
CODE_29AC7D:        A5 93         LDA $93                   
CODE_29AC7F:        F0 03         BEQ CODE_29AC84           
CODE_29AC81:        4C 61 AD      JMP CODE_29AD61           

CODE_29AC84:        A0 0D         LDY #$0D                  
CODE_29AC86:        B9 17 1F      LDA $1F17,y               
CODE_29AC89:        D0 06         BNE CODE_29AC91           
CODE_29AC8B:        88            DEY                       
CODE_29AC8C:        D0 F8         BNE CODE_29AC86           
CODE_29AC8E:        4C C1 AC      JMP CODE_29ACC1           

CODE_29AC91:        B5 43         LDA $43,x                 
CODE_29AC93:        D9 ED 1E      CMP $1EED,y               
CODE_29AC96:        D0 F3         BNE CODE_29AC8B           
CODE_29AC98:        B5 45         LDA $45,x                 
CODE_29AC9A:        D9 09 1F      CMP $1F09,y               
CODE_29AC9D:        D0 EC         BNE CODE_29AC8B           
CODE_29AC9F:        B5 47         LDA $47,x                 
CODE_29ACA1:        D9 FB 1E      CMP $1EFB,y               
CODE_29ACA4:        D0 E5         BNE CODE_29AC8B           
CODE_29ACA6:        B9 17 1F      LDA $1F17,y               
CODE_29ACA9:        C9 02         CMP #$02                  
CODE_29ACAB:        D0 08         BNE CODE_29ACB5           
CODE_29ACAD:        A9 20         LDA #$20                  
CODE_29ACAF:        8D 3D 05      STA $053D                 
CODE_29ACB2:        4C 8B AC      JMP CODE_29AC8B           

CODE_29ACB5:        C9 0B         CMP #$0B                  
CODE_29ACB7:        D0 D2         BNE CODE_29AC8B           
CODE_29ACB9:        A9 03         LDA #$03                  
CODE_29ACBB:        99 17 1F      STA $1F17,y               
CODE_29ACBE:        4C 8B AC      JMP CODE_29AC8B           

CODE_29ACC1:        BF 7D 39 7E   LDA $7E397D,x             
CODE_29ACC5:        38            SEC                       
CODE_29ACC6:        F5 43         SBC $43,x                 
CODE_29ACC8:        85 5C         STA $5C                   
CODE_29ACCA:        BF 7F 39 7E   LDA $7E397F,x             
CODE_29ACCE:        D5 45         CMP $45,x                 
CODE_29ACD0:        F0 04         BEQ CODE_29ACD6           
CODE_29ACD2:        B0 0A         BCS CODE_29ACDE                   
CODE_29ACD4:        90 1E         BCC CODE_29ACF4           
CODE_29ACD6:        BF 81 39 7E   LDA $7E3981,x             
CODE_29ACDA:        D5 47         CMP $47,x                 
CODE_29ACDC:        90 16         BCC CODE_29ACF4           
CODE_29ACDE:        BF 81 39 7E   LDA $7E3981,x             
CODE_29ACE2:        38            SEC                       
CODE_29ACE3:        F5 47         SBC $47,x                 
CODE_29ACE5:        85 61         STA $61                   
CODE_29ACE7:        BF 7F 39 7E   LDA $7E397F,x             
CODE_29ACEB:        F5 45         SBC $45,x                 
CODE_29ACED:        85 60         STA $60                   
CODE_29ACEF:        A0 00         LDY #$00                  
CODE_29ACF1:        4C 07 AD      JMP CODE_29AD07           

CODE_29ACF4:        B5 47         LDA $47,x                 
CODE_29ACF6:        38            SEC                       
CODE_29ACF7:        FF 81 39 7E   SBC $7E3981,x             
CODE_29ACFB:        85 61         STA $61                   
CODE_29ACFD:        B5 45         LDA $45,x                 
CODE_29ACFF:        FF 7F 39 7E   SBC $7E397F,x             
CODE_29AD03:        85 60         STA $60                   
CODE_29AD05:        A0 01         LDY #$01                  
CODE_29AD07:        84 66         STY $66                   
CODE_29AD09:        A9 00         LDA #$00                  
CODE_29AD0B:        85 62         STA $62                   
CODE_29AD0D:        85 5D         STA $5D                   
CODE_29AD0F:        BF 7D 39 7E   LDA $7E397D,x             
CODE_29AD13:        D5 43         CMP $43,x                 
CODE_29AD15:        B0 0E         BCS CODE_29AD25                   
CODE_29AD17:        A9 FF         LDA #$FF                  
CODE_29AD19:        45 5C         EOR $5C                   
CODE_29AD1B:        A8            TAY                       
CODE_29AD1C:        C8            INY                       
CODE_29AD1D:        84 5C         STY $5C                   
CODE_29AD1F:        A5 66         LDA $66                   
CODE_29AD21:        09 02         ORA #$02                  
CODE_29AD23:        85 66         STA $66                   
CODE_29AD25:        A5 60         LDA $60                   
CODE_29AD27:        D0 1B         BNE CODE_29AD44           
CODE_29AD29:        B5 47         LDA $47,x                 
CODE_29AD2B:        38            SEC                       
CODE_29AD2C:        ED 10 02      SBC $0210                 
CODE_29AD2F:        A8            TAY                       
CODE_29AD30:        A5 66         LDA $66                   
CODE_29AD32:        29 01         AND #$01                  
CODE_29AD34:        D0 08         BNE CODE_29AD3E           
CODE_29AD36:        98            TYA                       
CODE_29AD37:        18            CLC                       
CODE_29AD38:        65 61         ADC $61                   
CODE_29AD3A:        90 0E         BCC CODE_29AD4A           
CODE_29AD3C:        B0 06         BCS CODE_29AD44                   
CODE_29AD3E:        98            TYA                       
CODE_29AD3F:        38            SEC                       
CODE_29AD40:        E5 61         SBC $61                   
CODE_29AD42:        B0 06         BCS CODE_29AD4A                   
CODE_29AD44:        EE 29 07      INC $0729                 
CODE_29AD47:        4C FC AD      JMP CODE_29ADFC           

CODE_29AD4A:        A0 04         LDY #$04                  
CODE_29AD4C:        18            CLC                       
CODE_29AD4D:        46 5C         LSR $5C                   
CODE_29AD4F:        66 5D         ROR $5D                   
CODE_29AD51:        18            CLC                       
CODE_29AD52:        46 60         LSR $60                   
CODE_29AD54:        66 61         ROR $61                   
CODE_29AD56:        66 62         ROR $62                   
CODE_29AD58:        88            DEY                       
CODE_29AD59:        10 F1         BPL CODE_29AD4C           
CODE_29AD5B:        A9 20         LDA #$20                  
CODE_29AD5D:        85 65         STA $65                   
CODE_29AD5F:        E6 93         INC $93                   
CODE_29AD61:        A5 65         LDA $65                   
CODE_29AD63:        F0 59         BEQ CODE_29ADBE           
CODE_29AD65:        A9 04         LDA #$04                  
CODE_29AD67:        8D 03 12      STA $1203                 
CODE_29AD6A:        A5 66         LDA $66                   
CODE_29AD6C:        29 01         AND #$01                  
CODE_29AD6E:        D0 16         BNE CODE_29AD86           
CODE_29AD70:        A5 63         LDA $63                   
CODE_29AD72:        18            CLC                       
CODE_29AD73:        65 62         ADC $62                   
CODE_29AD75:        85 63         STA $63                   
CODE_29AD77:        B5 47         LDA $47,x                 
CODE_29AD79:        65 61         ADC $61                   
CODE_29AD7B:        95 47         STA $47,x                 
CODE_29AD7D:        B5 45         LDA $45,x                 
CODE_29AD7F:        65 60         ADC $60                   
CODE_29AD81:        95 45         STA $45,x                 
CODE_29AD83:        4C 99 AD      JMP CODE_29AD99           

CODE_29AD86:        A5 63         LDA $63                   
CODE_29AD88:        38            SEC                       
CODE_29AD89:        E5 62         SBC $62                   
CODE_29AD8B:        85 63         STA $63                   
CODE_29AD8D:        B5 47         LDA $47,x                 
CODE_29AD8F:        E5 61         SBC $61                   
CODE_29AD91:        95 47         STA $47,x                 
CODE_29AD93:        B5 45         LDA $45,x                 
CODE_29AD95:        E5 60         SBC $60                   
CODE_29AD97:        95 45         STA $45,x                 
CODE_29AD99:        A5 66         LDA $66                   
CODE_29AD9B:        29 02         AND #$02                  
CODE_29AD9D:        D0 10         BNE CODE_29ADAF           
CODE_29AD9F:        A5 5E         LDA $5E                   
CODE_29ADA1:        18            CLC                       
CODE_29ADA2:        65 5D         ADC $5D                   
CODE_29ADA4:        85 5E         STA $5E                   
CODE_29ADA6:        B5 43         LDA $43,x                 
CODE_29ADA8:        65 5C         ADC $5C                   
CODE_29ADAA:        95 43         STA $43,x                 
CODE_29ADAC:        4C BC AD      JMP CODE_29ADBC           

CODE_29ADAF:        A5 5E         LDA $5E                   
CODE_29ADB1:        38            SEC                       
CODE_29ADB2:        E5 5D         SBC $5D                   
CODE_29ADB4:        85 5E         STA $5E                   
CODE_29ADB6:        B5 43         LDA $43,x                 
CODE_29ADB8:        E5 5C         SBC $5C                   
CODE_29ADBA:        95 43         STA $43,x                 
CODE_29ADBC:        C6 65         DEC $65                   
CODE_29ADBE:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29ADC2:        A5 65         LDA $65                   
CODE_29ADC4:        0D 3D 05      ORA $053D                 
CODE_29ADC7:        0D 10 07      ORA $0710                 
CODE_29ADCA:        D0 2F         BNE CODE_29ADFB           
CODE_29ADCC:        A9 0B         LDA #$0B                  
CODE_29ADCE:        8D 29 07      STA $0729                 
CODE_29ADD1:        AE 26 07      LDX $0726                 
CODE_29ADD4:        B5 43         LDA $43,x                 
CODE_29ADD6:        9F 75 39 7E   STA $7E3975,x             
CODE_29ADDA:        B5 45         LDA $45,x                 
CODE_29ADDC:        9F 77 39 7E   STA $7E3977,x             
CODE_29ADE0:        B5 47         LDA $47,x                 
CODE_29ADE2:        9F 79 39 7E   STA $7E3979,x             
CODE_29ADE6:        BF 85 39 7E   LDA $7E3985,x             
CODE_29ADEA:        9D 22 07      STA $0722,x               
CODE_29ADED:        BF 87 39 7E   LDA $7E3987,x             
CODE_29ADF1:        9D 24 07      STA $0724,x               
CODE_29ADF4:        A9 00         LDA #$00                  
CODE_29ADF6:        85 93         STA $93                   
CODE_29ADF8:        9D 3F 07      STA $073F,x               
CODE_29ADFB:        6B            RTL                       

CODE_29ADFC:        AE 26 07      LDX $0726                 
CODE_29ADFF:        A5 66         LDA $66                   
CODE_29AE01:        29 01         AND #$01                  
CODE_29AE03:        F0 18         BEQ CODE_29AE1D           
CODE_29AE05:        B5 47         LDA $47,x                 
CODE_29AE07:        38            SEC                       
CODE_29AE08:        E9 02         SBC #$02                  
CODE_29AE0A:        95 47         STA $47,x                 
CODE_29AE0C:        B5 45         LDA $45,x                 
CODE_29AE0E:        E9 00         SBC #$00                  
CODE_29AE10:        95 45         STA $45,x                 
CODE_29AE12:        B5 47         LDA $47,x                 
CODE_29AE14:        38            SEC                       
CODE_29AE15:        ED 10 02      SBC $0210                 
CODE_29AE18:        F0 1A         BEQ CODE_29AE34           
CODE_29AE1A:        4C 45 AE      JMP CODE_29AE45           

CODE_29AE1D:        B5 47         LDA $47,x                 
CODE_29AE1F:        18            CLC                       
CODE_29AE20:        69 02         ADC #$02                  
CODE_29AE22:        95 47         STA $47,x                 
CODE_29AE24:        B5 45         LDA $45,x                 
CODE_29AE26:        69 00         ADC #$00                  
CODE_29AE28:        95 45         STA $45,x                 
CODE_29AE2A:        B5 47         LDA $47,x                 
CODE_29AE2C:        38            SEC                       
CODE_29AE2D:        ED 10 02      SBC $0210                 
CODE_29AE30:        C9 F0         CMP #$F0                  
CODE_29AE32:        D0 11         BNE CODE_29AE45           
CODE_29AE34:        BF 85 39 7E   LDA $7E3985,x             
CODE_29AE38:        9D 22 07      STA $0722,x               
CODE_29AE3B:        BF 87 39 7E   LDA $7E3987,x             
CODE_29AE3F:        9D 24 07      STA $0724,x               
CODE_29AE42:        EE 29 07      INC $0729                 
CODE_29AE45:        A9 04         LDA #$04                  
CODE_29AE47:        8D 03 12      STA $1203                 
CODE_29AE4A:        20 1B AC      JSR CODE_29AC1B           
CODE_29AE4D:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29AE51:        6B            RTL                       

CODE_29AE52:        AE 26 07      LDX $0726                 
CODE_29AE55:        BF 7D 39 7E   LDA $7E397D,x             
CODE_29AE59:        95 43         STA $43,x                 
CODE_29AE5B:        BF 7F 39 7E   LDA $7E397F,x             
CODE_29AE5F:        95 45         STA $45,x                 
CODE_29AE61:        A5 66         LDA $66                   
CODE_29AE63:        29 01         AND #$01                  
CODE_29AE65:        F0 1E         BEQ CODE_29AE85           
CODE_29AE67:        A0 F0         LDY #$F0                  
CODE_29AE69:        AD 10 02      LDA $0210                 
CODE_29AE6C:        F0 12         BEQ CODE_29AE80           
CODE_29AE6E:        BF 81 39 7E   LDA $7E3981,x             
CODE_29AE72:        18            CLC                       
CODE_29AE73:        6D 10 02      ADC $0210                 
CODE_29AE76:        BF 7F 39 7E   LDA $7E397F,x             
CODE_29AE7A:        69 00         ADC #$00                  
CODE_29AE7C:        95 45         STA $45,x                 
CODE_29AE7E:        A0 70         LDY #$70                  
CODE_29AE80:        94 47         STY $47,x                 
CODE_29AE82:        4C 9F AE      JMP CODE_29AE9F           

CODE_29AE85:        AD 10 02      LDA $0210                 
CODE_29AE88:        F0 10         BEQ CODE_29AE9A           
CODE_29AE8A:        BF 81 39 7E   LDA $7E3981,x             
CODE_29AE8E:        38            SEC                       
CODE_29AE8F:        ED 10 02      SBC $0210                 
CODE_29AE92:        BF 7F 39 7E   LDA $7E397F,x             
CODE_29AE96:        E9 00         SBC #$00                  
CODE_29AE98:        95 45         STA $45,x                 
CODE_29AE9A:        AD 10 02      LDA $0210                 
CODE_29AE9D:        95 47         STA $47,x                 
CODE_29AE9F:        A9 04         LDA #$04                  
CODE_29AEA1:        8D 03 12      STA $1203                 
CODE_29AEA4:        EE 29 07      INC $0729                 
CODE_29AEA7:        4C 45 AE      JMP CODE_29AE45           

CODE_29AEAA:        AE 26 07      LDX $0726                 
CODE_29AEAD:        A5 66         LDA $66                   
CODE_29AEAF:        29 01         AND #$01                  
CODE_29AEB1:        F0 18         BEQ CODE_29AECB           
CODE_29AEB3:        B5 47         LDA $47,x                 
CODE_29AEB5:        38            SEC                       
CODE_29AEB6:        E9 02         SBC #$02                  
CODE_29AEB8:        95 47         STA $47,x                 
CODE_29AEBA:        B5 45         LDA $45,x                 
CODE_29AEBC:        E9 00         SBC #$00                  
CODE_29AEBE:        95 45         STA $45,x                 
CODE_29AEC0:        B5 47         LDA $47,x                 
CODE_29AEC2:        DF 81 39 7E   CMP $7E3981,x             
CODE_29AEC6:        F0 18         BEQ CODE_29AEE0           
CODE_29AEC8:        4C FE AE      JMP CODE_29AEFE           

CODE_29AECB:        B5 47         LDA $47,x                 
CODE_29AECD:        18            CLC                       
CODE_29AECE:        69 02         ADC #$02                  
CODE_29AED0:        95 47         STA $47,x                 
CODE_29AED2:        B5 45         LDA $45,x                 
CODE_29AED4:        69 00         ADC #$00                  
CODE_29AED6:        95 45         STA $45,x                 
CODE_29AED8:        B5 47         LDA $47,x                 
CODE_29AEDA:        DF 81 39 7E   CMP $7E3981,x             
CODE_29AEDE:        D0 1E         BNE CODE_29AEFE           
CODE_29AEE0:        A9 0B         LDA #$0B                  
CODE_29AEE2:        8D 29 07      STA $0729                 
CODE_29AEE5:        B5 43         LDA $43,x                 
CODE_29AEE7:        9F 75 39 7E   STA $7E3975,x             
CODE_29AEEB:        B5 45         LDA $45,x                 
CODE_29AEED:        9F 77 39 7E   STA $7E3977,x             
CODE_29AEF1:        B5 47         LDA $47,x                 
CODE_29AEF3:        9F 79 39 7E   STA $7E3979,x             
CODE_29AEF7:        A9 00         LDA #$00                  
CODE_29AEF9:        85 93         STA $93                   
CODE_29AEFB:        9D 3F 07      STA $073F,x               
CODE_29AEFE:        4C 45 AE      JMP CODE_29AE45           

DATA_29AF01:        db $00,$00,$00,$00

CODE_29AF05:        22 D8 8D 23   JSL CODE_238DD8           
CODE_29AF09:        A2 04         LDX #$04                  
CODE_29AF0B:        DD F2 E5      CMP.w DATA_21E5F2,x               
CODE_29AF0E:        F0 06         BEQ CODE_29AF16           
CODE_29AF10:        CA            DEX                       
CODE_29AF11:        10 F8         BPL CODE_29AF0B           
CODE_29AF13:        4C 1F AF      JMP CODE_29AF1F           

CODE_29AF16:        AF 6D 39 7E   LDA $7E396D               
CODE_29AF1A:        1A            INC A                     
CODE_29AF1B:        8F 6D 39 7E   STA $7E396D               
CODE_29AF1F:        22 D8 8D 23   JSL CODE_238DD8           
CODE_29AF23:        29 C0         AND #$C0                  
CODE_29AF25:        18            CLC                       
CODE_29AF26:        2A            ROL A                     
CODE_29AF27:        2A            ROL A                     
CODE_29AF28:        2A            ROL A                     
CODE_29AF29:        A8            TAY                       
CODE_29AF2A:        A2 04         LDX #$04                  
CODE_29AF2C:        A5 B3         LDA $B3                   
CODE_29AF2E:        DD CD E5      CMP.w DATA_21E5CD,x               
CODE_29AF31:        F0 08         BEQ CODE_29AF3B           
CODE_29AF33:        CA            DEX                       
CODE_29AF34:        10 F8         BPL CODE_29AF2E           
CODE_29AF36:        D9 9A 1E      CMP $1E9A,y               
CODE_29AF39:        90 0D         BCC CODE_29AF48           
CODE_29AF3B:        A5 20         LDA $20                   
CODE_29AF3D:        F0 0C         BEQ CODE_29AF4B           
CODE_29AF3F:        A5 15         LDA $15                   
CODE_29AF41:        29 03         AND #$03                  
CODE_29AF43:        F0 2F         BEQ CODE_29AF74           
CODE_29AF45:        4C 71 B0      JMP CODE_29B071           

CODE_29AF48:        4C AB B0      JMP CODE_29B0AB           

CODE_29AF4B:        C0 00         CPY #$00                  
CODE_29AF4D:        D0 12         BNE CODE_29AF61           
CODE_29AF4F:        AF 95 39 7E   LDA $7E3995               
CODE_29AF53:        D0 F3         BNE CODE_29AF48           
CODE_29AF55:        A9 07         LDA #$07                  
CODE_29AF57:        85 20         STA $20                   
CODE_29AF59:        A9 1C         LDA #$1C                  
CODE_29AF5B:        8D 03 12      STA $1203                 
CODE_29AF5E:        4C 45 AF      JMP CODE_29AF45           

CODE_29AF61:        A5 B3         LDA $B3                   
CODE_29AF63:        C9 67         CMP #$67                  
CODE_29AF65:        F0 0D         BEQ CODE_29AF74           
CODE_29AF67:        C9 6A         CMP #$6A                  
CODE_29AF69:        F0 09         BEQ CODE_29AF74           
CODE_29AF6B:        C9 EB         CMP #$EB                  
CODE_29AF6D:        F0 05         BEQ CODE_29AF74           
CODE_29AF6F:        A9 0C         LDA #$0C                  
CODE_29AF71:        8D 00 12      STA $1200                 
CODE_29AF74:        E6 20         INC $20                   
CODE_29AF76:        A5 20         LDA $20                   
CODE_29AF78:        C9 07         CMP #$07                  
CODE_29AF7A:        F0 04         BEQ CODE_29AF80           
CODE_29AF7C:        C9 0A         CMP #$0A                  
CODE_29AF7E:        D0 C5         BNE CODE_29AF45           
CODE_29AF80:        64 20         STZ $20                   
CODE_29AF82:        AF 95 39 7E   LDA $7E3995               
CODE_29AF86:        F0 09         BEQ CODE_29AF91           
CODE_29AF88:        A9 04         LDA #$04                  
CODE_29AF8A:        85 20         STA $20                   
CODE_29AF8C:        A4 A5         LDY $A5                   
CODE_29AF8E:        4C F6 B0      JMP CODE_29B0F6           

CODE_29AF91:        AC 26 07      LDY $0726                 
CODE_29AF94:        A9 7E         LDA #$7E                  
CODE_29AF96:        85 30         STA $30                   
CODE_29AF98:        B9 45 00      LDA $0045,y               
CODE_29AF9B:        0A            ASL A                     
CODE_29AF9C:        AA            TAX                       
CODE_29AF9D:        BD 00 82      LDA.w DATA_218200,x               
CODE_29AFA0:        18            CLC                       
CODE_29AFA1:        69 F0         ADC #$F0                  
CODE_29AFA3:        85 2E         STA $2E                   
CODE_29AFA5:        BD 01 82      LDA.w DATA_218200+1,x               
CODE_29AFA8:        69 00         ADC #$00                  
CODE_29AFAA:        85 2F         STA $2F                   
CODE_29AFAC:        B9 47 00      LDA $0047,y               
CODE_29AFAF:        4A            LSR A                     
CODE_29AFB0:        4A            LSR A                     
CODE_29AFB1:        4A            LSR A                     
CODE_29AFB2:        4A            LSR A                     
CODE_29AFB3:        19 43 00      ORA $0043,y               
CODE_29AFB6:        A8            TAY                       
CODE_29AFB7:        B7 2E         LDA [$2E],y               
CODE_29AFB9:        48            PHA                       
CODE_29AFBA:        29 C0         AND #$C0                  
CODE_29AFBC:        4A            LSR A                     
CODE_29AFBD:        4A            LSR A                     
CODE_29AFBE:        4A            LSR A                     
CODE_29AFBF:        4A            LSR A                     
CODE_29AFC0:        4A            LSR A                     
CODE_29AFC1:        AA            TAX                       
CODE_29AFC2:        AD 26 07      LDA $0726                 
CODE_29AFC5:        F0 01         BEQ CODE_29AFC8           
CODE_29AFC7:        E8            INX                       
CODE_29AFC8:        68            PLA                       
CODE_29AFC9:        C9 67         CMP #$67                  
CODE_29AFCB:        F0 04         BEQ CODE_29AFD1           
CODE_29AFCD:        C9 6A         CMP #$6A                  
CODE_29AFCF:        D0 07         BNE CODE_29AFD8           
CODE_29AFD1:        A9 16         LDA #$16                  
CODE_29AFD3:        8D 03 12      STA $1203                 
CODE_29AFD6:        A2 08         LDX #$08                  
CODE_29AFD8:        C9 EB         CMP #$EB                  
CODE_29AFDA:        D0 07         BNE CODE_29AFE3           
CODE_29AFDC:        A9 16         LDA #$16                  
CODE_29AFDE:        8D 03 12      STA $1203                 
CODE_29AFE1:        A2 09         LDX #$09                  
CODE_29AFE3:        BD C2 E5      LDA.w DATA_21E5C2,x               
CODE_29AFE6:        97 2E         STA [$2E],y               
CODE_29AFE8:        85 B3         STA $B3                   
CODE_29AFEA:        20 69 BC      JSR CODE_29BC69           
CODE_29AFED:        AC 26 07      LDY $0726                 
CODE_29AFF0:        B6 47         LDX $47,y                 
CODE_29AFF2:        B9 43 00      LDA $0043,y               
CODE_29AFF5:        38            SEC                       
CODE_29AFF6:        E9 10         SBC #$10                  
CODE_29AFF8:        22 3C 97 20   JSL CODE_20973C           
CODE_29AFFC:        AE 00 16      LDX $1600                 
CODE_29AFFF:        AC 26 07      LDY $0726                 
CODE_29B002:        B9 45 00      LDA $0045,y               
CODE_29B005:        29 01         AND #$01                  
CODE_29B007:        0A            ASL A                     
CODE_29B008:        0A            ASL A                     
CODE_29B009:        05 0E         ORA $0E                   
CODE_29B00B:        9D 02 16      STA $1602,x               
CODE_29B00E:        9D 0A 16      STA $160A,x               
CODE_29B011:        A5 0F         LDA $0F                   
CODE_29B013:        9D 03 16      STA $1603,x               
CODE_29B016:        18            CLC                       
CODE_29B017:        69 20         ADC #$20                  
CODE_29B019:        9D 0B 16      STA $160B,x               
CODE_29B01C:        9E 04 16      STZ $1604,x               
CODE_29B01F:        9E 0C 16      STZ $160C,x               
CODE_29B022:        A9 03         LDA #$03                  
CODE_29B024:        9D 05 16      STA $1605,x               
CODE_29B027:        9D 0D 16      STA $160D,x               
CODE_29B02A:        A0 10         LDY #$10                  
CODE_29B02C:        A5 B3         LDA $B3                   
CODE_29B02E:        C9 60         CMP #$60                  
CODE_29B030:        F0 0F         BEQ CODE_29B041           
CODE_29B032:        A0 18         LDY #$18                  
CODE_29B034:        C9 E3         CMP #$E3                  
CODE_29B036:        F0 09         BEQ CODE_29B041           
CODE_29B038:        A0 00         LDY #$00                  
CODE_29B03A:        AE 26 07      LDX $0726                 
CODE_29B03D:        F0 02         BEQ CODE_29B041           
CODE_29B03F:        A0 08         LDY #$08                  
CODE_29B041:        C2 20         REP #$20                  
CODE_29B043:        AE 00 16      LDX $1600                 
CODE_29B046:        B9 D2 E5      LDA.w DATA_21E5D2,y               
CODE_29B049:        9D 06 16      STA $1606,x               
CODE_29B04C:        B9 D4 E5      LDA.w DATA_21E5D4,y               
CODE_29B04F:        9D 0E 16      STA $160E,x               
CODE_29B052:        B9 D6 E5      LDA.w DATA_21E5D6,y               
CODE_29B055:        9D 08 16      STA $1608,x               
CODE_29B058:        B9 D8 E5      LDA.w DATA_21E5D8,y               
CODE_29B05B:        9D 10 16      STA $1610,x               
CODE_29B05E:        E2 20         SEP #$20                  
CODE_29B060:        A9 FF         LDA #$FF                  
CODE_29B062:        9D 12 16      STA $1612,x               
CODE_29B065:        AD 00 16      LDA $1600                 
CODE_29B068:        18            CLC                       
CODE_29B069:        69 10         ADC #$10                  
CODE_29B06B:        8D 00 16      STA $1600                 
CODE_29B06E:        4C AB B0      JMP CODE_29B0AB           

CODE_29B071:        AE 26 07      LDX $0726                 
CODE_29B074:        B5 43         LDA $43,x                 
CODE_29B076:        85 00         STA $00                   
CODE_29B078:        B5 47         LDA $47,x                 
CODE_29B07A:        85 01         STA $01                   
CODE_29B07C:        A4 20         LDY $20                   
CODE_29B07E:        C0 05         CPY #$05                  
CODE_29B080:        90 22         BCC CODE_29B0A4           
CODE_29B082:        A5 00         LDA $00                   
CODE_29B084:        8D 61 08      STA $0861                 
CODE_29B087:        88            DEY                       
CODE_29B088:        B9 B8 E5      LDA.w DATA_21E5B8,y               
CODE_29B08B:        8D 62 08      STA $0862                 
CODE_29B08E:        A9 27         LDA #$27                  
CODE_29B090:        8D 63 08      STA $0863                 
CODE_29B093:        A5 01         LDA $01                   
CODE_29B095:        38            SEC                       
CODE_29B096:        ED 10 02      SBC $0210                 
CODE_29B099:        8D 60 08      STA $0860                 
CODE_29B09C:        A9 02         LDA #$02                  
CODE_29B09E:        8D 38 0A      STA $0A38                 
CODE_29B0A1:        4C 07 B1      JMP CODE_29B107           

CODE_29B0A4:        22 1F B1 29   JSL CODE_29B11F           
CODE_29B0A8:        4C 1A B1      JMP CODE_29B11A           

CODE_29B0AB:        AF 72 39 7E   LDA $7E3972               
CODE_29B0AF:        D0 F0         BNE CODE_29B0A1           
CODE_29B0B1:        A0 0D         LDY #$0D                  
CODE_29B0B3:        AE 26 07      LDX $0726                 
CODE_29B0B6:        B9 17 1F      LDA $1F17,y               
CODE_29B0B9:        F0 19         BEQ CODE_29B0D4           
CODE_29B0BB:        B9 ED 1E      LDA $1EED,y               
CODE_29B0BE:        85 00         STA $00                   
CODE_29B0C0:        D5 43         CMP $43,x                 
CODE_29B0C2:        D0 10         BNE CODE_29B0D4           
CODE_29B0C4:        B9 09 1F      LDA $1F09,y               
CODE_29B0C7:        D5 45         CMP $45,x                 
CODE_29B0C9:        D0 09         BNE CODE_29B0D4           
CODE_29B0CB:        B9 FB 1E      LDA $1EFB,y               
CODE_29B0CE:        85 01         STA $01                   
CODE_29B0D0:        D5 47         CMP $47,x                 
CODE_29B0D2:        F0 05         BEQ CODE_29B0D9           
CODE_29B0D4:        88            DEY                       
CODE_29B0D5:        10 DF         BPL CODE_29B0B6           
CODE_29B0D7:        80 2E         BRA CODE_29B107           

CODE_29B0D9:        84 A5         STY $A5                   
CODE_29B0DB:        B9 17 1F      LDA $1F17,y               
CODE_29B0DE:        C9 02         CMP #$02                  
CODE_29B0E0:        D0 05         BNE CODE_29B0E7           
CODE_29B0E2:        EE 29 07      INC $0729                 
CODE_29B0E5:        80 33         BRA CODE_29B11A           

CODE_29B0E7:        A5 20         LDA $20                   
CODE_29B0E9:        D0 05         BNE CODE_29B0F0           
CODE_29B0EB:        A9 0C         LDA #$0C                  
CODE_29B0ED:        8D 00 12      STA $1200                 
CODE_29B0F0:        A5 15         LDA $15                   
CODE_29B0F2:        29 03         AND #$03                  
CODE_29B0F4:        D0 AE         BNE CODE_29B0A4           
CODE_29B0F6:        E6 20         INC $20                   
CODE_29B0F8:        A5 20         LDA $20                   
CODE_29B0FA:        C9 05         CMP #$05                  
CODE_29B0FC:        D0 A6         BNE CODE_29B0A4           
CODE_29B0FE:        A9 00         LDA #$00                  
CODE_29B100:        99 17 1F      STA $1F17,y               
CODE_29B103:        64 20         STZ $20                   
CODE_29B105:        64 A5         STZ $A5                   
CODE_29B107:        A5 20         LDA $20                   
CODE_29B109:        D0 0F         BNE CODE_29B11A           
CODE_29B10B:        A9 00         LDA #$00                  
CODE_29B10D:        8F 72 39 7E   STA $7E3972               
CODE_29B111:        8F 95 39 7E   STA $7E3995               
CODE_29B115:        A9 08         LDA #$08                  
CODE_29B117:        8D 29 07      STA $0729                 
CODE_29B11A:        22 AE B7 29   JSL CODE_29B7AE           
CODE_29B11E:        6B            RTL                       

CODE_29B11F:        A5 00         LDA $00                   
CODE_29B121:        38            SEC                       
CODE_29B122:        E9 08         SBC #$08                  
CODE_29B124:        8D 61 08      STA $0861                 
CODE_29B127:        8D 65 08      STA $0865                 
CODE_29B12A:        18            CLC                       
CODE_29B12B:        69 10         ADC #$10                  
CODE_29B12D:        8D 69 08      STA $0869                 
CODE_29B130:        8D 6D 08      STA $086D                 
CODE_29B133:        A5 01         LDA $01                   
CODE_29B135:        38            SEC                       
CODE_29B136:        ED 10 02      SBC $0210                 
CODE_29B139:        38            SEC                       
CODE_29B13A:        E9 08         SBC #$08                  
CODE_29B13C:        8D 60 08      STA $0860                 
CODE_29B13F:        8D 68 08      STA $0868                 
CODE_29B142:        18            CLC                       
CODE_29B143:        69 10         ADC #$10                  
CODE_29B145:        8D 64 08      STA $0864                 
CODE_29B148:        8D 6C 08      STA $086C                 
CODE_29B14B:        A9 27         LDA #$27                  
CODE_29B14D:        8D 63 08      STA $0863                 
CODE_29B150:        A9 67         LDA #$67                  
CODE_29B152:        8D 67 08      STA $0867                 
CODE_29B155:        A9 A7         LDA #$A7                  
CODE_29B157:        8D 6B 08      STA $086B                 
CODE_29B15A:        A9 E7         LDA #$E7                  
CODE_29B15C:        8D 6F 08      STA $086F                 
CODE_29B15F:        A6 20         LDX $20                   
CODE_29B161:        BD B8 E5      LDA.w DATA_21E5B8,x               
CODE_29B164:        8D 62 08      STA $0862                 
CODE_29B167:        8D 66 08      STA $0866                 
CODE_29B16A:        8D 6A 08      STA $086A                 
CODE_29B16D:        8D 6E 08      STA $086E                 
CODE_29B170:        A9 02         LDA #$02                  
CODE_29B172:        8D 38 0A      STA $0A38                 
CODE_29B175:        8D 39 0A      STA $0A39                 
CODE_29B178:        8D 3A 0A      STA $0A3A                 
CODE_29B17B:        8D 3B 0A      STA $0A3B                 
CODE_29B17E:        6B            RTL                       

CODE_29B17F:        A9 03         LDA #$03                  
CODE_29B181:        85 0F         STA $0F                   
CODE_29B183:        A4 0F         LDY $0F                   
CODE_29B185:        A2 0D         LDX #$0D                  
CODE_29B187:        B9 F7 E5      LDA.w DATA_21E5F7,y               
CODE_29B18A:        DD 17 1F      CMP $1F17,x               
CODE_29B18D:        F0 06         BEQ CODE_29B195           
CODE_29B18F:        CA            DEX                       
CODE_29B190:        10 F8         BPL CODE_29B18A           
CODE_29B192:        20 A1 B1      JSR CODE_29B1A1           
CODE_29B195:        C6 0F         DEC $0F                   
CODE_29B197:        10 EA         BPL CODE_29B183           
CODE_29B199:        EE 29 07      INC $0729                 
CODE_29B19C:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29B1A0:        6B            RTL                       

CODE_29B1A1:        A5 0F         LDA $0F                   
CODE_29B1A3:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29B1A7:        dw CODE_29B1AF
                    dw CODE_29B22C
                    dw CODE_29B279
                    dw CODE_29B2AF

CODE_29B1AF:        AD 27 07      LDA $0727
CODE_29B1B2:        C9 07         CMP #$07                  
CODE_29B1B4:        F0 75         BEQ CODE_29B22B           
CODE_29B1B6:        AE 26 07      LDX $0726                 
CODE_29B1B9:        AD 15 07      LDA $0715                 
CODE_29B1BC:        CF 67 39 7E   CMP $7E3967               
CODE_29B1C0:        90 69         BCC CODE_29B22B           
CODE_29B1C2:        F0 03         BEQ CODE_29B1C7           
CODE_29B1C4:        4C DE B1      JMP CODE_29B1DE           

CODE_29B1C7:        AD 16 07      LDA $0716                 
CODE_29B1CA:        CF 68 39 7E   CMP $7E3968               
CODE_29B1CE:        90 5B         BCC CODE_29B22B           
CODE_29B1D0:        F0 03         BEQ CODE_29B1D5           
CODE_29B1D2:        4C DE B1      JMP CODE_29B1DE           

CODE_29B1D5:        AD 17 07      LDA $0717                 
CODE_29B1D8:        CF 69 39 7E   CMP $7E3969               
CODE_29B1DC:        90 4D         BCC CODE_29B22B           
CODE_29B1DE:        20 ED B2      JSR CODE_29B2ED           
CODE_29B1E1:        AF 6A 39 7E   LDA $7E396A               
CODE_29B1E5:        99 ED 1E      STA $1EED,y               
CODE_29B1E8:        99 00 05      STA $0500,y               
CODE_29B1EB:        AF 6B 39 7E   LDA $7E396B               
CODE_29B1EF:        99 09 1F      STA $1F09,y               
CODE_29B1F2:        99 1E 05      STA $051E,y               
CODE_29B1F5:        AF 6C 39 7E   LDA $7E396C               
CODE_29B1F9:        99 FB 1E      STA $1EFB,y               
CODE_29B1FC:        99 0F 05      STA $050F,y               
CODE_29B1FF:        A6 0F         LDX $0F                   
CODE_29B201:        BD F7 E5      LDA.w DATA_21E5F7,x               
CODE_29B204:        99 17 1F      STA $1F17,y               
CODE_29B207:        AF 69 39 7E   LDA $7E3969               
CODE_29B20B:        18            CLC                       
CODE_29B20C:        69 40         ADC #$40                  
CODE_29B20E:        8F 69 39 7E   STA $7E3969               
CODE_29B212:        AF 68 39 7E   LDA $7E3968               
CODE_29B216:        69 1F         ADC #$1F                  
CODE_29B218:        8F 68 39 7E   STA $7E3968               
CODE_29B21C:        AF 67 39 7E   LDA $7E3967               
CODE_29B220:        69 00         ADC #$00                  
CODE_29B222:        8F 67 39 7E   STA $7E3967               
CODE_29B226:        A9 15         LDA #$15                  
CODE_29B228:        8D 03 12      STA $1203                 
CODE_29B22B:        60            RTS                       

CODE_29B22C:        AF 70 39 7E   LDA $7E3970               ; If white mushroom house has been spawned already
CODE_29B230:        D0 46         BNE CODE_29B278           ; skip
CODE_29B232:        AF 64 39 7E   LDA $7E3964               ; Skip if the level doesn't have a white mushroom house
CODE_29B236:        C9 01         CMP #$01                  ;
CODE_29B238:        D0 3E         BNE CODE_29B278           
CODE_29B23A:        AF 66 39 7E   LDA $7E3966               ; compare the amount of collected coins within the level
CODE_29B23E:        CF 65 39 7E   CMP $7E3965               ; with the amount of coins required to spawn the white house
CODE_29B242:        90 34         BCC CODE_29B278           
CODE_29B244:        20 ED B2      JSR CODE_29B2ED           
CODE_29B247:        A9 0A         LDA #$0A                  
CODE_29B249:        99 17 1F      STA $1F17,y               
CODE_29B24C:        AF 6A 39 7E   LDA $7E396A               
CODE_29B250:        99 ED 1E      STA $1EED,y               
CODE_29B253:        99 00 05      STA $0500,y               
CODE_29B256:        AF 6B 39 7E   LDA $7E396B               
CODE_29B25A:        99 09 1F      STA $1F09,y               
CODE_29B25D:        99 1E 05      STA $051E,y               
CODE_29B260:        AF 6C 39 7E   LDA $7E396C               
CODE_29B264:        99 FB 1E      STA $1EFB,y               
CODE_29B267:        99 0F 05      STA $050F,y               
CODE_29B26A:        AF 70 39 7E   LDA $7E3970               
CODE_29B26E:        1A            INC A                     
CODE_29B26F:        8F 70 39 7E   STA $7E3970               
CODE_29B273:        A9 15         LDA #$15                  
CODE_29B275:        8D 03 12      STA $1203                 
CODE_29B278:        60            RTS                       

CODE_29B279:        AF 71 39 7E   LDA $7E3971               
CODE_29B27D:        D0 2F         BNE CODE_29B2AE           
CODE_29B27F:        AD 48 1F      LDA $1F48                 
CODE_29B282:        CD 49 1F      CMP $1F49                 
CODE_29B285:        D0 27         BNE CODE_29B2AE           
CODE_29B287:        CD 51 1F      CMP $1F51                 
CODE_29B28A:        D0 22         BNE CODE_29B2AE           
CODE_29B28C:        A0 00         LDY #$00                  
CODE_29B28E:        B9 17 1F      LDA $1F17,y               
CODE_29B291:        C9 03         CMP #$03                  
CODE_29B293:        F0 06         BEQ CODE_29B29B           
CODE_29B295:        C8            INY                       
CODE_29B296:        C0 0E         CPY #$0E                  
CODE_29B298:        D0 F4         BNE CODE_29B28E           
CODE_29B29A:        60            RTS                       

CODE_29B29B:        A9 0B         LDA #$0B                  
CODE_29B29D:        99 17 1F      STA $1F17,y               
CODE_29B2A0:        AF 71 39 7E   LDA $7E3971               
CODE_29B2A4:        1A            INC A                     
CODE_29B2A5:        8F 71 39 7E   STA $7E3971               
CODE_29B2A9:        A9 15         LDA #$15                  
CODE_29B2AB:        8D 03 12      STA $1203                 
CODE_29B2AE:        60            RTS                       

CODE_29B2AF:        AF 64 39 7E   LDA $7E3964               
CODE_29B2B3:        C9 02         CMP #$02                  
CODE_29B2B5:        D0 35         BNE CODE_29B2EC           
CODE_29B2B7:        AF 66 39 7E   LDA $7E3966               
CODE_29B2BB:        CF 65 39 7E   CMP $7E3965               
CODE_29B2BF:        90 2B         BCC CODE_29B2EC           
CODE_29B2C1:        20 ED B2      JSR CODE_29B2ED           
CODE_29B2C4:        A9 0C         LDA #$0C                  
CODE_29B2C6:        99 17 1F      STA $1F17,y               
CODE_29B2C9:        AD FB E5      LDA.w DATA_21E5FB                 
CODE_29B2CC:        99 ED 1E      STA $1EED,y               
CODE_29B2CF:        99 00 05      STA $0500,y               
CODE_29B2D2:        AD FC E5      LDA.w DATA_21E5FB+1                 
CODE_29B2D5:        48            PHA                       
CODE_29B2D6:        29 0F         AND #$0F                  
CODE_29B2D8:        99 09 1F      STA $1F09,y               
CODE_29B2DB:        99 1E 05      STA $051E,y               
CODE_29B2DE:        68            PLA                       
CODE_29B2DF:        29 F0         AND #$F0                  
CODE_29B2E1:        99 FB 1E      STA $1EFB,y               
CODE_29B2E4:        99 0F 05      STA $050F,y               
CODE_29B2E7:        A9 15         LDA #$15                  
CODE_29B2E9:        8D 03 12      STA $1203                 
CODE_29B2EC:        60            RTS                       

CODE_29B2ED:        A0 02         LDY #$02                  
CODE_29B2EF:        B9 17 1F      LDA $1F17,y               
CODE_29B2F2:        F0 04         BEQ CODE_29B2F8           
CODE_29B2F4:        C8            INY                       
CODE_29B2F5:        4C EF B2      JMP CODE_29B2EF           

CODE_29B2F8:        60            RTS                       

CODE_29B2F9:        AF 6D 39 7E   LDA $7E396D               
CODE_29B2FD:        D0 32         BNE CODE_29B331           
CODE_29B2FF:        A0 0D         LDY #$0D                  
CODE_29B301:        84 0C         STY $0C                   
CODE_29B303:        AD 29 07      LDA $0729                 
CODE_29B306:        C9 0B         CMP #$0B                  
CODE_29B308:        D0 19         BNE CODE_29B323           
CODE_29B30A:        AD 96 05      LDA $0596                 
CODE_29B30D:        D0 14         BNE CODE_29B323           
CODE_29B30F:        B9 17 1F      LDA $1F17,y               
CODE_29B312:        F0 07         BEQ CODE_29B31B           
CODE_29B314:        AA            TAX                       
CODE_29B315:        BD FD E5      LDA.w DATA_21E5FD,x               
CODE_29B318:        99 3C 05      STA $053C,y               
CODE_29B31B:        88            DEY                       
CODE_29B31C:        C0 01         CPY #$01                  
CODE_29B31E:        D0 EF         BNE CODE_29B30F           
CODE_29B320:        EE 96 05      INC $0596                 
CODE_29B323:        A6 0C         LDX $0C                   
CODE_29B325:        BD 17 1F      LDA $1F17,x               
CODE_29B328:        F0 03         BEQ CODE_29B32D           
CODE_29B32A:        20 32 B3      JSR CODE_29B332           
CODE_29B32D:        C6 0C         DEC $0C                   
CODE_29B32F:        10 F2         BPL CODE_29B323           
CODE_29B331:        60            RTS                       

CODE_29B332:        20 BE BC      JSR CODE_29BCBE           
CODE_29B335:        BD 17 1F      LDA $1F17,x               
CODE_29B338:        C9 10         CMP #$10                  
CODE_29B33A:        B0 0C         BCS CODE_29B348                   
CODE_29B33C:        AC 29 07      LDY $0729                 
CODE_29B33F:        C0 0B         CPY #$0B                  
CODE_29B341:        D0 05         BNE CODE_29B348           
CODE_29B343:        BC 3C 05      LDY $053C,x               
CODE_29B346:        F0 E9         BEQ CODE_29B331           
CODE_29B348:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_29B36E:        AD 29 07      LDA $0729
CODE_29B371:        C9 0D         CMP #$0D
CODE_29B373:        D0 4F         BNE CODE_29B3C4
CODE_29B375:        BD 17 1F      LDA $1F17,x               
CODE_29B378:        C9 09         CMP #$09                  
CODE_29B37A:        90 04         BCC CODE_29B380           
CODE_29B37C:        C9 0D         CMP #$0D                  
CODE_29B37E:        90 05         BCC CODE_29B385           
CODE_29B380:        AD 55 1F      LDA $1F55                 
CODE_29B383:        D0 3E         BNE CODE_29B3C3           
CODE_29B385:        8A            TXA                       
CODE_29B386:        29 01         AND #$01                  
CODE_29B388:        85 0F         STA $0F                   
CODE_29B38A:        AD 3C 05      LDA $053C                 
CODE_29B38D:        29 10         AND #$10                  
CODE_29B38F:        4A            LSR A                     
CODE_29B390:        4A            LSR A                     
CODE_29B391:        4A            LSR A                     
CODE_29B392:        4A            LSR A                     
CODE_29B393:        9D 2D 05      STA $052D,x               
CODE_29B396:        A5 0F         LDA $0F                   
CODE_29B398:        F0 06         BEQ CODE_29B3A0           
CODE_29B39A:        5D 2D 05      EOR $052D,x               
CODE_29B39D:        9D 2D 05      STA $052D,x               
CODE_29B3A0:        A5 0F         LDA $0F                   
CODE_29B3A2:        0A            ASL A                     
CODE_29B3A3:        0A            ASL A                     
CODE_29B3A4:        0A            ASL A                     
CODE_29B3A5:        0A            ASL A                     
CODE_29B3A6:        85 0F         STA $0F                   
CODE_29B3A8:        AD 3C 05      LDA $053C                 
CODE_29B3AB:        29 1F         AND #$1F                  
CODE_29B3AD:        45 0F         EOR $0F                   
CODE_29B3AF:        A8            TAY                       
CODE_29B3B0:        BD FB 1E      LDA $1EFB,x               
CODE_29B3B3:        18            CLC                       
CODE_29B3B4:        79 1D E6      ADC.w DATA_21E61D,y               
CODE_29B3B7:        9D 0F 05      STA $050F,x               
CODE_29B3BA:        BD 1E 05      LDA $051E,x               
CODE_29B3BD:        79 3D E6      ADC.w DATA_21E63D,y               
CODE_29B3C0:        9D 1E 05      STA $051E,x               
CODE_29B3C3:        60            RTS                       

CODE_29B3C4:        C9 0B         CMP #$0B                  
CODE_29B3C6:        D0 FB         BNE CODE_29B3C3           
CODE_29B3C8:        AD 55 1F      LDA $1F55                 
CODE_29B3CB:        D0 6B         BNE CODE_29B438           
CODE_29B3CD:        A4 0C         LDY $0C                   
CODE_29B3CF:        A2 01         LDX #$01                  
CODE_29B3D1:        B5 43         LDA $43,x                 
CODE_29B3D3:        D9 00 05      CMP $0500,y               
CODE_29B3D6:        D0 14         BNE CODE_29B3EC           
CODE_29B3D8:        B5 45         LDA $45,x                 
CODE_29B3DA:        D9 1E 05      CMP $051E,y               
CODE_29B3DD:        D0 0D         BNE CODE_29B3EC           
CODE_29B3DF:        B5 47         LDA $47,x                 
CODE_29B3E1:        D9 0F 05      CMP $050F,y               
CODE_29B3E4:        D0 06         BNE CODE_29B3EC           
CODE_29B3E6:        A9 00         LDA #$00                  
CODE_29B3E8:        99 3C 05      STA $053C,y               
CODE_29B3EB:        60            RTS                       

CODE_29B3EC:        CA            DEX                       
CODE_29B3ED:        10 E2         BPL CODE_29B3D1           
CODE_29B3EF:        B9 3C 05      LDA $053C,y               
CODE_29B3F2:        29 1F         AND #$1F                  
CODE_29B3F4:        D0 08         BNE CODE_29B3FE           
CODE_29B3F6:        B9 83 07      LDA $0783,y               
CODE_29B3F9:        29 03         AND #$03                  
CODE_29B3FB:        20 DA B6      JSR CODE_29B6DA           
CODE_29B3FE:        A4 0C         LDY $0C                   
CODE_29B400:        B9 17 1F      LDA $1F17,y               
CODE_29B403:        F0 33         BEQ CODE_29B438           
CODE_29B405:        C9 03         CMP #$03                  
CODE_29B407:        90 0F         BCC CODE_29B418           
CODE_29B409:        C9 07         CMP #$07                  
CODE_29B40B:        B0 0B         BCS CODE_29B418                   
CODE_29B40D:        A5 15         LDA $15                   
CODE_29B40F:        29 0F         AND #$0F                  
CODE_29B411:        D0 05         BNE CODE_29B418           
CODE_29B413:        A9 36         LDA #$36                  
CODE_29B415:        8D 00 12      STA $1200                 
CODE_29B418:        BE 2D 05      LDX $052D,y               
CODE_29B41B:        B9 00 05      LDA $0500,y               
CODE_29B41E:        18            CLC                       
CODE_29B41F:        7D 11 E6      ADC.w DATA_21E611,x               
CODE_29B422:        99 00 05      STA $0500,y               
CODE_29B425:        B9 0F 05      LDA $050F,y               
CODE_29B428:        18            CLC                       
CODE_29B429:        7D 15 E6      ADC.w DATA_21E615,x               
CODE_29B42C:        99 0F 05      STA $050F,y               
CODE_29B42F:        B9 1E 05      LDA $051E,y               
CODE_29B432:        7D 19 E6      ADC.w DATA_21E619,x               
CODE_29B435:        99 1E 05      STA $051E,y               
CODE_29B438:        A6 0C         LDX $0C                   
CODE_29B43A:        20 CD B6      JSR CODE_29B6CD           
CODE_29B43D:        DE 3C 05      DEC $053C,x               
CODE_29B440:        D0 34         BNE CODE_29B476           
CODE_29B442:        AD 55 1F      LDA $1F55                 
CODE_29B445:        D0 2F         BNE CODE_29B476           
CODE_29B447:        A0 0D         LDY #$0D                  
CODE_29B449:        C4 0C         CPY $0C                   
CODE_29B44B:        F0 26         BEQ CODE_29B473           
CODE_29B44D:        B9 17 1F      LDA $1F17,y               
CODE_29B450:        F0 21         BEQ CODE_29B473           
CODE_29B452:        C9 10         CMP #$10                  
CODE_29B454:        B0 1D         BCS CODE_29B473                   
CODE_29B456:        B9 3C 05      LDA $053C,y               
CODE_29B459:        D0 18         BNE CODE_29B473           
CODE_29B45B:        B9 00 05      LDA $0500,y               
CODE_29B45E:        DD 00 05      CMP $0500,x               
CODE_29B461:        D0 10         BNE CODE_29B473           
CODE_29B463:        B9 1E 05      LDA $051E,y               
CODE_29B466:        DD 1E 05      CMP $051E,x               
CODE_29B469:        D0 08         BNE CODE_29B473           
CODE_29B46B:        B9 0F 05      LDA $050F,y               
CODE_29B46E:        DD 0F 05      CMP $050F,x               
CODE_29B471:        F0 04         BEQ CODE_29B477           
CODE_29B473:        88            DEY                       
CODE_29B474:        D0 D3         BNE CODE_29B449           
CODE_29B476:        60            RTS                       

CODE_29B477:        A9 20         LDA #$20                  
CODE_29B479:        9D 3C 05      STA $053C,x               
CODE_29B47C:        C0 01         CPY #$01                  
CODE_29B47E:        F0 05         BEQ CODE_29B485           
CODE_29B480:        A9 20         LDA #$20                  
CODE_29B482:        99 3C 05      STA $053C,y               
CODE_29B485:        60            RTS                       

CODE_29B486:        AD 29 07      LDA $0729                 
CODE_29B489:        C9 0B         CMP #$0B                  
CODE_29B48B:        D0 F8         BNE CODE_29B485           
CODE_29B48D:        4C 38 B4      JMP CODE_29B438           

CODE_29B490:        AD 29 07      LDA $0729                 
CODE_29B493:        C9 0D         CMP #$0D                  
CODE_29B495:        D0 25         BNE CODE_29B4BC           
CODE_29B497:        A9 00         LDA #$00                  
CODE_29B499:        85 0E         STA $0E                   
CODE_29B49B:        AC 26 07      LDY $0726                 
CODE_29B49E:        B9 45 00      LDA $0045,y               
CODE_29B4A1:        CD 1F 05      CMP $051F                 
CODE_29B4A4:        F0 04         BEQ CODE_29B4AA           
CODE_29B4A6:        B0 0E         BCS CODE_29B4B6                   
CODE_29B4A8:        90 08         BCC CODE_29B4B2           
CODE_29B4AA:        B9 47 00      LDA $0047,y               
CODE_29B4AD:        CD 10 05      CMP $0510                 
CODE_29B4B0:        B0 04         BCS CODE_29B4B6                   
CODE_29B4B2:        A9 01         LDA #$01                  
CODE_29B4B4:        85 0E         STA $0E                   
CODE_29B4B6:        A5 0E         LDA $0E                   
CODE_29B4B8:        8D 2E 05      STA $052E                 
CODE_29B4BB:        60            RTS                       

CODE_29B4BC:        AD 43 07      LDA $0743                 
CODE_29B4BF:        0A            ASL A                     
CODE_29B4C0:        A8            TAY                       
CODE_29B4C1:        B9 5D E6      LDA.w DATA_21E65D,y               
CODE_29B4C4:        85 00         STA $00                   
CODE_29B4C6:        B9 5E E6      LDA.w DATA_21E65D+1,y               
CODE_29B4C9:        85 01         STA $01                   
CODE_29B4CB:        B9 8D E6      LDA.w DATA_21E68D,y               
CODE_29B4CE:        85 02         STA $02                   
CODE_29B4D0:        B9 8E E6      LDA.w DATA_21E68D+1,y               
CODE_29B4D3:        85 03         STA $03                   
CODE_29B4D5:        AD 29 07      LDA $0729                 
CODE_29B4D8:        C9 04         CMP #$04                  
CODE_29B4DA:        D0 36         BNE CODE_29B512           
CODE_29B4DC:        AF 6F 39 7E   LDA $7E396F               
CODE_29B4E0:        F0 03         BEQ CODE_29B4E5           
CODE_29B4E2:        4C 26 B6      JMP CODE_29B626           

CODE_29B4E5:        A9 00         LDA #$00                  
CODE_29B4E7:        8D 3D 05      STA $053D                 
CODE_29B4EA:        AC 2F 1F      LDY $1F2F                 
CODE_29B4ED:        C0 06         CPY #$06                  
CODE_29B4EF:        B0 1C         BCS CODE_29B50D                   
CODE_29B4F1:        B1 00         LDA ($00),y               
CODE_29B4F3:        8D 01 05      STA $0501                 
CODE_29B4F6:        8D EE 1E      STA $1EEE                 
CODE_29B4F9:        B1 02         LDA ($02),y               
CODE_29B4FB:        48            PHA                       
CODE_29B4FC:        29 0F         AND #$0F                  
CODE_29B4FE:        8D 1F 05      STA $051F                 
CODE_29B501:        8D 0A 1F      STA $1F0A                 
CODE_29B504:        68            PLA                       
CODE_29B505:        29 F0         AND #$F0                  
CODE_29B507:        8D 10 05      STA $0510                 
CODE_29B50A:        8D FC 1E      STA $1EFC                 
CODE_29B50D:        A2 01         LDX #$01                  
CODE_29B50F:        4C CD B6      JMP CODE_29B6CD           

CODE_29B512:        AD 3D 05      LDA $053D                 
CODE_29B515:        F0 A4         BEQ CODE_29B4BB           
CODE_29B517:        A5 9D         LDA $9D                   
CODE_29B519:        F0 03         BEQ CODE_29B51E           
CODE_29B51B:        4C 26 B6      JMP CODE_29B626           

CODE_29B51E:        AC 2F 1F      LDY $1F2F                 
CODE_29B521:        C0 06         CPY #$06                  
CODE_29B523:        90 03         BCC CODE_29B528           
CODE_29B525:        4C 8F B5      JMP CODE_29B58F           

CODE_29B528:        AD 1F 05      LDA $051F                 
CODE_29B52B:        0D 10 05      ORA $0510                 
CODE_29B52E:        D1 02         CMP ($02),y               
CODE_29B530:        D0 07         BNE CODE_29B539           
CODE_29B532:        AD 01 05      LDA $0501                 
CODE_29B535:        D1 00         CMP ($00),y               
CODE_29B537:        F0 50         BEQ CODE_29B589           
CODE_29B539:        B1 00         LDA ($00),y               
CODE_29B53B:        85 04         STA $04                   
CODE_29B53D:        B1 02         LDA ($02),y               
CODE_29B53F:        29 0F         AND #$0F                  
CODE_29B541:        85 06         STA $06                   
CODE_29B543:        B1 02         LDA ($02),y               
CODE_29B545:        29 F0         AND #$F0                  
CODE_29B547:        85 05         STA $05                   
CODE_29B549:        A5 04         LDA $04                   
CODE_29B54B:        38            SEC                       
CODE_29B54C:        E9 20         SBC #$20                  
CODE_29B54E:        85 04         STA $04                   
CODE_29B550:        A5 05         LDA $05                   
CODE_29B552:        38            SEC                       
CODE_29B553:        E9 20         SBC #$20                  
CODE_29B555:        85 05         STA $05                   
CODE_29B557:        A5 06         LDA $06                   
CODE_29B559:        E9 00         SBC #$00                  
CODE_29B55B:        85 06         STA $06                   
CODE_29B55D:        AE 2B 07      LDX $072B                 
CODE_29B560:        CA            DEX                       
CODE_29B561:        BF 7D 39 7E   LDA $7E397D,x             
CODE_29B565:        38            SEC                       
CODE_29B566:        E5 04         SBC $04                   
CODE_29B568:        C9 41         CMP #$41                  
CODE_29B56A:        B0 17         BCS CODE_29B583                   
CODE_29B56C:        BF 81 39 7E   LDA $7E3981,x             
CODE_29B570:        38            SEC                       
CODE_29B571:        E5 05         SBC $05                   
CODE_29B573:        85 05         STA $05                   
CODE_29B575:        BF 7F 39 7E   LDA $7E397F,x             
CODE_29B579:        E5 06         SBC $06                   
CODE_29B57B:        D0 06         BNE CODE_29B583           
CODE_29B57D:        A5 05         LDA $05                   
CODE_29B57F:        C9 41         CMP #$41                  
CODE_29B581:        90 06         BCC CODE_29B589           
CODE_29B583:        CA            DEX                       
CODE_29B584:        10 DB         BPL CODE_29B561           
CODE_29B586:        4C 97 B5      JMP CODE_29B597           

CODE_29B589:        EE 2F 1F      INC $1F2F                 
CODE_29B58C:        4C 1E B5      JMP CODE_29B51E           

CODE_29B58F:        A6 0C         LDX $0C                   
CODE_29B591:        A9 00         LDA #$00                  
CODE_29B593:        8D 3D 05      STA $053D                 
CODE_29B596:        60            RTS                       

CODE_29B597:        A6 0C         LDX $0C                   
CODE_29B599:        AC 2F 1F      LDY $1F2F                 
CODE_29B59C:        A9 00         LDA #$00                  
CODE_29B59E:        8D 2E 05      STA $052E                 
CODE_29B5A1:        85 A4         STA $A4                   
CODE_29B5A3:        B1 00         LDA ($00),y               
CODE_29B5A5:        38            SEC                       
CODE_29B5A6:        ED 01 05      SBC $0501                 
CODE_29B5A9:        85 9E         STA $9E                   
CODE_29B5AB:        B1 02         LDA ($02),y               
CODE_29B5AD:        29 F0         AND #$F0                  
CODE_29B5AF:        38            SEC                       
CODE_29B5B0:        ED 10 05      SBC $0510                 
CODE_29B5B3:        85 A2         STA $A2                   
CODE_29B5B5:        B1 02         LDA ($02),y               
CODE_29B5B7:        29 0F         AND #$0F                  
CODE_29B5B9:        ED 1F 05      SBC $051F                 
CODE_29B5BC:        85 A1         STA $A1                   
CODE_29B5BE:        B1 02         LDA ($02),y               
CODE_29B5C0:        29 0F         AND #$0F                  
CODE_29B5C2:        CD 1F 05      CMP $051F                 
CODE_29B5C5:        F0 04         BEQ CODE_29B5CB           
CODE_29B5C7:        10 22         BPL CODE_29B5EB           
CODE_29B5C9:        30 09         BMI CODE_29B5D4           
CODE_29B5CB:        B1 02         LDA ($02),y               
CODE_29B5CD:        29 F0         AND #$F0                  
CODE_29B5CF:        CD 10 05      CMP $0510                 
CODE_29B5D2:        B0 17         BCS CODE_29B5EB                   
CODE_29B5D4:        A9 01         LDA #$01                  
CODE_29B5D6:        85 A4         STA $A4                   
CODE_29B5D8:        A9 FF         LDA #$FF                  
CODE_29B5DA:        45 A1         EOR $A1                   
CODE_29B5DC:        85 A1         STA $A1                   
CODE_29B5DE:        A9 FF         LDA #$FF                  
CODE_29B5E0:        45 A2         EOR $A2                   
CODE_29B5E2:        85 A2         STA $A2                   
CODE_29B5E4:        E6 A2         INC $A2                   
CODE_29B5E6:        A9 01         LDA #$01                  
CODE_29B5E8:        8D 2E 05      STA $052E                 
CODE_29B5EB:        B1 00         LDA ($00),y               
CODE_29B5ED:        CD 01 05      CMP $0501                 
CODE_29B5F0:        B0 0E         BCS CODE_29B600                   
CODE_29B5F2:        A9 FF         LDA #$FF                  
CODE_29B5F4:        45 9E         EOR $9E                   
CODE_29B5F6:        85 9E         STA $9E                   
CODE_29B5F8:        E6 9E         INC $9E                   
CODE_29B5FA:        A5 A4         LDA $A4                   
CODE_29B5FC:        09 02         ORA #$02                  
CODE_29B5FE:        85 A4         STA $A4                   
CODE_29B600:        A0 04         LDY #$04                  
CODE_29B602:        18            CLC                       
CODE_29B603:        46 9E         LSR $9E                   
CODE_29B605:        66 9F         ROR $9F                   
CODE_29B607:        18            CLC                       
CODE_29B608:        46 A1         LSR $A1                   
CODE_29B60A:        66 A2         ROR $A2                   
CODE_29B60C:        66 A3         ROR $A3                   
CODE_29B60E:        88            DEY                       
CODE_29B60F:        10 F1         BPL CODE_29B602           
CODE_29B611:        A5 A2         LDA $A2                   
CODE_29B613:        85 A1         STA $A1                   
CODE_29B615:        A5 A3         LDA $A3                   
CODE_29B617:        85 A2         STA $A2                   
CODE_29B619:        A9 00         LDA #$00                  
CODE_29B61B:        85 A3         STA $A3                   
CODE_29B61D:        A9 01         LDA #$01                  
CODE_29B61F:        85 9D         STA $9D                   
CODE_29B621:        A9 20         LDA #$20                  
CODE_29B623:        8D 11 07      STA $0711                 
CODE_29B626:        AD 11 07      LDA $0711                 
CODE_29B629:        F0 05         BEQ CODE_29B630           
CODE_29B62B:        22 8D 87 23   JSL CODE_23878D           
CODE_29B62F:        60            RTS                       

CODE_29B630:        AF 6F 39 7E   LDA $7E396F               
CODE_29B634:        F0 0B         BEQ CODE_29B641           
CODE_29B636:        A9 00         LDA #$00                  
CODE_29B638:        8D 3D 05      STA $053D                 
CODE_29B63B:        8D 2F 1F      STA $1F2F                 
CODE_29B63E:        4C CD B6      JMP CODE_29B6CD           

CODE_29B641:        A9 47         LDA #$47                  
CODE_29B643:        8D 03 12      STA $1203                 
CODE_29B646:        A2 01         LDX #$01                  
CODE_29B648:        A5 15         LDA $15                   
CODE_29B64A:        29 03         AND #$03                  
CODE_29B64C:        F0 03         BEQ CODE_29B651           
CODE_29B64E:        4C CD B6      JMP CODE_29B6CD           

CODE_29B651:        A5 A4         LDA $A4                   
CODE_29B653:        29 01         AND #$01                  
CODE_29B655:        D0 1A         BNE CODE_29B671           
CODE_29B657:        A5 A3         LDA $A3                   
CODE_29B659:        18            CLC                       
CODE_29B65A:        65 A2         ADC $A2                   
CODE_29B65C:        85 A3         STA $A3                   
CODE_29B65E:        AD 10 05      LDA $0510                 
CODE_29B661:        65 A1         ADC $A1                   
CODE_29B663:        8D 10 05      STA $0510                 
CODE_29B666:        AD 1F 05      LDA $051F                 
CODE_29B669:        69 00         ADC #$00                  
CODE_29B66B:        8D 1F 05      STA $051F                 
CODE_29B66E:        4C 88 B6      JMP CODE_29B688           

CODE_29B671:        A5 A3         LDA $A3                   
CODE_29B673:        38            SEC                       
CODE_29B674:        E5 A2         SBC $A2                   
CODE_29B676:        85 A3         STA $A3                   
CODE_29B678:        AD 10 05      LDA $0510                 
CODE_29B67B:        E5 A1         SBC $A1                   
CODE_29B67D:        8D 10 05      STA $0510                 
CODE_29B680:        AD 1F 05      LDA $051F                 
CODE_29B683:        E9 00         SBC #$00                  
CODE_29B685:        8D 1F 05      STA $051F                 
CODE_29B688:        A5 A4         LDA $A4                   
CODE_29B68A:        29 02         AND #$02                  
CODE_29B68C:        D0 12         BNE CODE_29B6A0           
CODE_29B68E:        A5 A0         LDA $A0                   
CODE_29B690:        18            CLC                       
CODE_29B691:        65 9F         ADC $9F                   
CODE_29B693:        85 A0         STA $A0                   
CODE_29B695:        AD 01 05      LDA $0501                 
CODE_29B698:        65 9E         ADC $9E                   
CODE_29B69A:        8D 01 05      STA $0501                 
CODE_29B69D:        4C AF B6      JMP CODE_29B6AF           

CODE_29B6A0:        A5 A0         LDA $A0                   
CODE_29B6A2:        38            SEC                       
CODE_29B6A3:        E5 9F         SBC $9F                   
CODE_29B6A5:        85 A0         STA $A0                   
CODE_29B6A7:        AD 01 05      LDA $0501                 
CODE_29B6AA:        E5 9E         SBC $9E                   
CODE_29B6AC:        8D 01 05      STA $0501                 
CODE_29B6AF:        A2 01         LDX #$01                  
CODE_29B6B1:        CE 3D 05      DEC $053D                 
CODE_29B6B4:        D0 17         BNE CODE_29B6CD           
CODE_29B6B6:        AD 01 05      LDA $0501                 
CODE_29B6B9:        8D EE 1E      STA $1EEE                 
CODE_29B6BC:        AD 1F 05      LDA $051F                 
CODE_29B6BF:        8D 0A 1F      STA $1F0A                 
CODE_29B6C2:        AD 10 05      LDA $0510                 
CODE_29B6C5:        8D FC 1E      STA $1EFC                 
CODE_29B6C8:        A2 01         LDX #$01                  
CODE_29B6CA:        EE 2F 1F      INC $1F2F                 
CODE_29B6CD:        BD 0F 05      LDA $050F,x               
CODE_29B6D0:        9D FB 1E      STA $1EFB,x               
CODE_29B6D3:        BD 1E 05      LDA $051E,x               
CODE_29B6D6:        9D 09 1F      STA $1F09,x               
CODE_29B6D9:        60            RTS                       

CODE_29B6DA:        85 00         STA $00                   
CODE_29B6DC:        A9 04         LDA #$04                  
CODE_29B6DE:        85 01         STA $01                   
CODE_29B6E0:        A4 0C         LDY $0C                   
CODE_29B6E2:        C6 00         DEC $00                   
CODE_29B6E4:        B9 83 07      LDA $0783,y               
CODE_29B6E7:        0A            ASL A                     
CODE_29B6E8:        90 04         BCC CODE_29B6EE           
CODE_29B6EA:        E6 00         INC $00                   
CODE_29B6EC:        E6 00         INC $00                   
CODE_29B6EE:        A5 00         LDA $00                   
CODE_29B6F0:        29 03         AND #$03                  
CODE_29B6F2:        85 00         STA $00                   
CODE_29B6F4:        59 2D 05      EOR $052D,y               
CODE_29B6F7:        C9 01         CMP #$01                  
CODE_29B6F9:        F0 E5         BEQ CODE_29B6E0           
CODE_29B6FB:        C6 01         DEC $01                   
CODE_29B6FD:        10 08         BPL CODE_29B707           
CODE_29B6FF:        A9 00         LDA #$00                  
CODE_29B701:        99 3C 05      STA $053C,y               
CODE_29B704:        68            PLA                       
CODE_29B705:        68            PLA                       
CODE_29B706:        60            RTS                       

CODE_29B707:        D0 07         BNE CODE_29B710           
CODE_29B709:        B9 2D 05      LDA $052D,y               
CODE_29B70C:        49 01         EOR #$01                  
CODE_29B70E:        85 00         STA $00                   
CODE_29B710:        A6 00         LDX $00                   
CODE_29B712:        20 78 B7      JSR CODE_29B778           
CODE_29B715:        A5 00         LDA $00                   
CODE_29B717:        0A            ASL A                     
CODE_29B718:        AA            TAX                       
CODE_29B719:        BD BC 8D      LDA.w DATA_218DBC,x               
CODE_29B71C:        85 0E         STA $0E                   
CODE_29B71E:        BD BD 8D      LDA.w DATA_218DBD,x               
CODE_29B721:        85 0F         STA $0F                   
CODE_29B723:        A4 02         LDY $02                   
CODE_29B725:        B7 2E         LDA [$2E],y               
CODE_29B727:        A0 08         LDY #$08                  
CODE_29B729:        D1 0E         CMP ($0E),y               
CODE_29B72B:        F0 05         BEQ CODE_29B732           
CODE_29B72D:        88            DEY                       
CODE_29B72E:        10 F9         BPL CODE_29B729           
CODE_29B730:        30 AE         BMI CODE_29B6E0           
CODE_29B732:        A4 0C         LDY $0C                   
CODE_29B734:        A5 00         LDA $00                   
CODE_29B736:        18            CLC                       
CODE_29B737:        69 04         ADC #$04                  
CODE_29B739:        AA            TAX                       
CODE_29B73A:        20 78 B7      JSR CODE_29B778           
CODE_29B73D:        A4 02         LDY $02                   
CODE_29B73F:        B7 2E         LDA [$2E],y               
CODE_29B741:        A0 11         LDY #$11                  
CODE_29B743:        D9 FC E7      CMP.w DATA_21E7FC,y               
CODE_29B746:        D0 03         BNE CODE_29B74B           
CODE_29B748:        4C E0 B6      JMP CODE_29B6E0           

CODE_29B74B:        88            DEY                       
CODE_29B74C:        D0 F5         BNE CODE_29B743           
CODE_29B74E:        A6 0C         LDX $0C                   
CODE_29B750:        A0 04         LDY #$04                  
CODE_29B752:        D9 0D E8      CMP.w DATA_21E80D,y               
CODE_29B755:        F0 10         BEQ CODE_29B767           
CODE_29B757:        88            DEY                       
CODE_29B758:        D0 F8         BNE CODE_29B752           
CODE_29B75A:        48            PHA                       
CODE_29B75B:        0A            ASL A                     
CODE_29B75C:        2A            ROL A                     
CODE_29B75D:        2A            ROL A                     
CODE_29B75E:        29 03         AND #$03                  
CODE_29B760:        A8            TAY                       
CODE_29B761:        68            PLA                       
CODE_29B762:        D9 9A 1E      CMP $1E9A,y               
CODE_29B765:        90 0B         BCC CODE_29B772           
CODE_29B767:        A9 20         LDA #$20                  
CODE_29B769:        DD 3C 05      CMP $053C,x               
CODE_29B76C:        D0 04         BNE CODE_29B772           
CODE_29B76E:        0A            ASL A                     
CODE_29B76F:        9D 3C 05      STA $053C,x               
CODE_29B772:        A5 00         LDA $00                   
CODE_29B774:        9D 2D 05      STA $052D,x               
CODE_29B777:        60            RTS                       

CODE_29B778:        B9 00 05      LDA $0500,y               
CODE_29B77B:        18            CLC                       
CODE_29B77C:        7D E5 E7      ADC.w DATA_21E7E5,x               
CODE_29B77F:        85 02         STA $02                   
CODE_29B781:        B9 0F 05      LDA $050F,y               
CODE_29B784:        18            CLC                       
CODE_29B785:        7D ED E7      ADC.w DATA_21E7ED,x               
CODE_29B788:        85 03         STA $03                   
CODE_29B78A:        B9 1E 05      LDA $051E,y               
CODE_29B78D:        7D F5 E7      ADC.w DATA_21E7F5,x               
CODE_29B790:        0A            ASL A                     
CODE_29B791:        AA            TAX                       
CODE_29B792:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_29B796:        18            CLC                       
CODE_29B797:        69 F0         ADC #$F0                  
CODE_29B799:        85 2E         STA $2E                   
CODE_29B79B:        BF 01 82 21   LDA.l DATA_218200+1,x             
CODE_29B79F:        69 00         ADC #$00                  
CODE_29B7A1:        85 2F         STA $2F                   
CODE_29B7A3:        A5 03         LDA $03                   
CODE_29B7A5:        4A            LSR A                     
CODE_29B7A6:        4A            LSR A                     
CODE_29B7A7:        4A            LSR A                     
CODE_29B7A8:        4A            LSR A                     
CODE_29B7A9:        05 02         ORA $02                   
CODE_29B7AB:        85 02         STA $02                   
CODE_29B7AD:        60            RTS                       

CODE_29B7AE:        20 F9 B2      JSR CODE_29B2F9           
CODE_29B7B1:        20 33 BD      JSR CODE_29BD33           
CODE_29B7B4:        A9 0D         LDA #$0D                  
CODE_29B7B6:        85 0C         STA $0C                   
CODE_29B7B8:        EE 25 1F      INC $1F25                 
CODE_29B7BB:        AD 25 1F      LDA $1F25                 
CODE_29B7BE:        C9 0B         CMP #$0B                  
CODE_29B7C0:        90 03         BCC CODE_29B7C5           
CODE_29B7C2:        9C 25 1F      STZ $1F25                 
CODE_29B7C5:        64 05         STZ $05                   
CODE_29B7C7:        A4 0C         LDY $0C                   
CODE_29B7C9:        F0 12         BEQ CODE_29B7DD           
CODE_29B7CB:        88            DEY                       
CODE_29B7CC:        98            TYA                       
CODE_29B7CD:        18            CLC                       
CODE_29B7CE:        6D 25 1F      ADC $1F25                 
CODE_29B7D1:        C9 0B         CMP #$0B                  
CODE_29B7D3:        90 02         BCC CODE_29B7D7           
CODE_29B7D5:        E9 0B         SBC #$0B                  
CODE_29B7D7:        AA            TAX                       
CODE_29B7D8:        BD 72 E8      LDA.w DATA_21E872,x               
CODE_29B7DB:        85 05         STA $05                   
CODE_29B7DD:        A6 0C         LDX $0C                   
CODE_29B7DF:        BD 87 05      LDA $0587,x               
CODE_29B7E2:        F0 03         BEQ CODE_29B7E7           
CODE_29B7E4:        20 FC B7      JSR CODE_29B7FC           
CODE_29B7E7:        C6 0C         DEC $0C                   
CODE_29B7E9:        10 DA         BPL CODE_29B7C5           
CODE_29B7EB:        AD 29 07      LDA $0729                 
CODE_29B7EE:        C9 0D         CMP #$0D                  
CODE_29B7F0:        D0 09         BNE CODE_29B7FB           
CODE_29B7F2:        A5 15         LDA $15                   
CODE_29B7F4:        29 03         AND #$03                  
CODE_29B7F6:        D0 03         BNE CODE_29B7FB           
CODE_29B7F8:        EE 3C 05      INC $053C                 
CODE_29B7FB:        6B            RTL                       

CODE_29B7FC:        BD 17 1F      LDA $1F17,x               
CODE_29B7FF:        E4 A5         CPX $A5                   
CODE_29B801:        D0 05         BNE CODE_29B808           
CODE_29B803:        E0 00         CPX #$00                  
CODE_29B805:        F0 01         BEQ CODE_29B808           
CODE_29B807:        60            RTS                       

CODE_29B808:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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

CODE_29B82E:        A9 00         LDA #$00                  
CODE_29B830:        BC 17 1F      LDY $1F17,x               
CODE_29B833:        C0 10         CPY #$10                  
CODE_29B835:        D0 09         BNE CODE_29B840           
CODE_29B837:        BC 00 05      LDY $0500,x               
CODE_29B83A:        C0 F0         CPY #$F0                  
CODE_29B83C:        F0 02         BEQ CODE_29B840           
CODE_29B83E:        A9 07         LDA #$07                  
CODE_29B840:        A4 05         LDY $05                   
CODE_29B842:        18            CLC                       
CODE_29B843:        7D 00 05      ADC $0500,x               
CODE_29B846:        99 99 08      STA $0899,y               
CODE_29B849:        BD 0F 05      LDA $050F,x               
CODE_29B84C:        38            SEC                       
CODE_29B84D:        ED 10 02      SBC $0210                 
CODE_29B850:        99 98 08      STA $0898,y               
CODE_29B853:        A6 0C         LDX $0C                   
CODE_29B855:        BD 17 1F      LDA $1F17,x               
CODE_29B858:        85 07         STA $07                   
CODE_29B85A:        A2 08         LDX #$08                  
CODE_29B85C:        C9 10         CMP #$10                  
CODE_29B85E:        B0 19         BCS CODE_29B879                   
CODE_29B860:        C9 01         CMP #$01                  
CODE_29B862:        D0 05         BNE CODE_29B869           
CODE_29B864:        A2 30         LDX #$30                  
CODE_29B866:        4C 79 B8      JMP CODE_29B879           

CODE_29B869:        AD 29 07      LDA $0729                 
CODE_29B86C:        C9 0B         CMP #$0B                  
CODE_29B86E:        D0 09         BNE CODE_29B879           
CODE_29B870:        A4 0C         LDY $0C                   
CODE_29B872:        B9 3C 05      LDA $053C,y               
CODE_29B875:        F0 02         BEQ CODE_29B879           
CODE_29B877:        A2 04         LDX #$04                  
CODE_29B879:        86 08         STX $08                   
CODE_29B87B:        A5 07         LDA $07                   
CODE_29B87D:        0A            ASL A                     
CODE_29B87E:        18            CLC                       
CODE_29B87F:        65 07         ADC $07                   
CODE_29B881:        AA            TAX                       
CODE_29B882:        E0 09         CPX #$09                  
CODE_29B884:        90 11         BCC CODE_29B897           
CODE_29B886:        E0 30         CPX #$30                  
CODE_29B888:        F0 0D         BEQ CODE_29B897           
CODE_29B88A:        E0 27         CPX #$27                  
CODE_29B88C:        90 04         BCC CODE_29B892           
CODE_29B88E:        E0 30         CPX #$30                  
CODE_29B890:        90 05         BCC CODE_29B897           
CODE_29B892:        AD 55 1F      LDA $1F55                 
CODE_29B895:        D0 08         BNE CODE_29B89F           
CODE_29B897:        E8            INX                       
CODE_29B898:        A5 15         LDA $15                   
CODE_29B89A:        25 08         AND $08                   
CODE_29B89C:        F0 01         BEQ CODE_29B89F           
CODE_29B89E:        E8            INX                       
CODE_29B89F:        A4 05         LDY $05                   
CODE_29B8A1:        BD 0F E8      LDA.w DATA_21E80F,x               
CODE_29B8A4:        99 9A 08      STA $089A,y               
CODE_29B8A7:        BD 3F E8      LDA.w DATA_21E83F,x               
CODE_29B8AA:        99 9B 08      STA $089B,y               
CODE_29B8AD:        98            TYA                       
CODE_29B8AE:        4A            LSR A                     
CODE_29B8AF:        4A            LSR A                     
CODE_29B8B0:        AA            TAX                       
CODE_29B8B1:        A9 02         LDA #$02                  
CODE_29B8B3:        9D 46 0A      STA $0A46,x               
CODE_29B8B6:        A6 0C         LDX $0C                   
CODE_29B8B8:        BD 17 1F      LDA $1F17,x               
CODE_29B8BB:        C9 01         CMP #$01                  
CODE_29B8BD:        F0 04         BEQ CODE_29B8C3           
CODE_29B8BF:        C9 10         CMP #$10                  
CODE_29B8C1:        90 01         BCC CODE_29B8C4           
CODE_29B8C3:        60            RTS                       

CODE_29B8C4:        C9 07         CMP #$07                  
CODE_29B8C6:        F0 15         BEQ CODE_29B8DD           
CODE_29B8C8:        C9 09         CMP #$09                  
CODE_29B8CA:        90 04         BCC CODE_29B8D0           
CODE_29B8CC:        C9 0D         CMP #$0D                  
CODE_29B8CE:        90 0D         BCC CODE_29B8DD           
CODE_29B8D0:        BD 2D 05      LDA $052D,x               
CODE_29B8D3:        D0 08         BNE CODE_29B8DD           
CODE_29B8D5:        B9 9B 08      LDA $089B,y               
CODE_29B8D8:        49 40         EOR #$40                  
CODE_29B8DA:        99 9B 08      STA $089B,y               
CODE_29B8DD:        A4 0C         LDY $0C                   
CODE_29B8DF:        B9 17 1F      LDA $1F17,y               
CODE_29B8E2:        C9 02         CMP #$02                  
CODE_29B8E4:        F0 0D         BEQ CODE_29B8F3           
CODE_29B8E6:        C9 09         CMP #$09                  
CODE_29B8E8:        90 04         BCC CODE_29B8EE           
CODE_29B8EA:        C9 10         CMP #$10                  
CODE_29B8EC:        90 05         BCC CODE_29B8F3           
CODE_29B8EE:        AD 55 1F      LDA $1F55                 
CODE_29B8F1:        D0 60         BNE CODE_29B953           
CODE_29B8F3:        AD 17 04      LDA $0417                 
CODE_29B8F6:        D0 5B         BNE CODE_29B953           
CODE_29B8F8:        AD 10 07      LDA $0710                 
CODE_29B8FB:        D0 56         BNE CODE_29B953           
CODE_29B8FD:        AD 29 07      LDA $0729                 
CODE_29B900:        C9 0D         CMP #$0D                  
CODE_29B902:        D0 4F         BNE CODE_29B953           
CODE_29B904:        AE 26 07      LDX $0726                 
CODE_29B907:        B9 ED 1E      LDA $1EED,y               
CODE_29B90A:        D5 43         CMP $43,x                 
CODE_29B90C:        D0 45         BNE CODE_29B953           
CODE_29B90E:        B9 09 1F      LDA $1F09,y               
CODE_29B911:        D5 45         CMP $45,x                 
CODE_29B913:        D0 3E         BNE CODE_29B953           
CODE_29B915:        B9 FB 1E      LDA $1EFB,y               
CODE_29B918:        D5 47         CMP $47,x                 
CODE_29B91A:        D0 37         BNE CODE_29B953           
CODE_29B91C:        AE 26 07      LDX $0726                 
CODE_29B91F:        A9 00         LDA #$00                  
CODE_29B921:        9D 3F 07      STA $073F,x               
CODE_29B924:        8D 28 07      STA $0728                 
CODE_29B927:        B9 17 1F      LDA $1F17,y               
CODE_29B92A:        85 1E         STA $1E                   
CODE_29B92C:        C9 09         CMP #$09                  
CODE_29B92E:        F0 04         BEQ CODE_29B934           
CODE_29B930:        C9 0A         CMP #$0A                  
CODE_29B932:        D0 09         BNE CODE_29B93D           
CODE_29B934:        AF 6D 39 7E   LDA $7E396D               
CODE_29B938:        1A            INC A                     
CODE_29B939:        8F 6D 39 7E   STA $7E396D               
CODE_29B93D:        8B            PHB                       
CODE_29B93E:        A9 7E         LDA #$7E                  
CODE_29B940:        48            PHA                       
CODE_29B941:        AB            PLB                       ; Databank is RAM
CODE_29B942:        B9 56 39      LDA $3956,y               
CODE_29B945:        8D 63 39      STA $3963                 
CODE_29B948:        AB            PLB                       ;
CODE_29B949:        A9 0F         LDA #$0F                  
CODE_29B94B:        8D 29 07      STA $0729                 
CODE_29B94E:        68            PLA                       
CODE_29B94F:        68            PLA                       
CODE_29B950:        4C EB B7      JMP CODE_29B7EB           

CODE_29B953:        60            RTS                       

CODE_29B954:        AE 26 07      LDX $0726                 
CODE_29B957:        B5 4B         LDA $4B,x                 
CODE_29B959:        49 03         EOR #$03                  
CODE_29B95B:        C9 03         CMP #$03                  
CODE_29B95D:        D0 02         BNE CODE_29B961           
CODE_29B95F:        49 0F         EOR #$0F                  
CODE_29B961:        95 4B         STA $4B,x                 
CODE_29B963:        60            RTS                       

CODE_29B964:        AE 26 07      LDX $0726                 
CODE_29B967:        B5 43         LDA $43,x                 
CODE_29B969:        18            CLC                       
CODE_29B96A:        79 7E E8      ADC.w DATA_21E87E,y               
CODE_29B96D:        85 0E         STA $0E                   
CODE_29B96F:        B5 47         LDA $47,x                 
CODE_29B971:        18            CLC                       
CODE_29B972:        79 86 E8      ADC.w DATA_21E886,y               
CODE_29B975:        85 0F         STA $0F                   
CODE_29B977:        B5 45         LDA $45,x                 
CODE_29B979:        79 82 E8      ADC.w DATA_21E882,y               
CODE_29B97C:        0A            ASL A                     
CODE_29B97D:        AA            TAX                       
CODE_29B97E:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_29B982:        85 2E         STA $2E                   
CODE_29B984:        BF 01 82 21   LDA.l DATA_218200+1,x             
CODE_29B988:        85 2F         STA $2F                   
CODE_29B98A:        E6 2F         INC $2F                   
CODE_29B98C:        A5 0F         LDA $0F                   
CODE_29B98E:        4A            LSR A                     
CODE_29B98F:        4A            LSR A                     
CODE_29B990:        4A            LSR A                     
CODE_29B991:        4A            LSR A                     
CODE_29B992:        85 0F         STA $0F                   
CODE_29B994:        A5 0E         LDA $0E                   
CODE_29B996:        29 F0         AND #$F0                  
CODE_29B998:        05 0F         ORA $0F                   
CODE_29B99A:        A8            TAY                       
CODE_29B99B:        B1 2E         LDA ($2E),y               
CODE_29B99D:        60            RTS                       

CODE_29B99E:        AE 38 07      LDX $0738                 
CODE_29B9A1:        BD C6 1D      LDA $1DC6,x               
CODE_29B9A4:        C9 09         CMP #$09                  
CODE_29B9A6:        90 1C         BCC CODE_29B9C4           
CODE_29B9A8:        A9 01         LDA #$01                  
CODE_29B9AA:        85 92         STA $92                   
CODE_29B9AC:        AE 26 07      LDX $0726                 
CODE_29B9AF:        AF 91 39 7E   LDA $7E3991               
CODE_29B9B3:        A8            TAY                       
CODE_29B9B4:        C8            INY                       
CODE_29B9B5:        98            TYA                       
CODE_29B9B6:        0A            ASL A                     
CODE_29B9B7:        0A            ASL A                     
CODE_29B9B8:        0A            ASL A                     
CODE_29B9B9:        0A            ASL A                     
CODE_29B9BA:        0A            ASL A                     
CODE_29B9BB:        D5 49         CMP $49,x                 
CODE_29B9BD:        F0 05         BEQ CODE_29B9C4           
CODE_29B9BF:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29B9C3:        60            RTS                       

CODE_29B9C4:        AD 59 00      LDA $0059                 
CODE_29B9C7:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29B9CB:        dw CODE_29B9D5
                    dw CODE_29A8D7
                    dw CODE_29BA66

CODE_29B9D1:        20 C4 B9      JSR CODE_29B9C4           
CODE_29B9D4:        6B            RTL                       

CODE_29B9D5:        A9 24         LDA #$24                  
CODE_29B9D7:        8D 03 12      STA $1203                 
CODE_29B9DA:        A2 07         LDX #$07                  
CODE_29B9DC:        BD 8A E8      LDA.w DATA_21E88A,x               
CODE_29B9DF:        95 8A         STA $8A,x                 
CODE_29B9E1:        CA            DEX                       
CODE_29B9E2:        10 F8         BPL CODE_29B9DC           
CODE_29B9E4:        A6 92         LDX $92                   
CODE_29B9E6:        D0 08         BNE CODE_29B9F0           
CODE_29B9E8:        A9 80         LDA #$80                  
CODE_29B9EA:        85 7F         STA $7F                   
CODE_29B9EC:        85 80         STA $80                   
CODE_29B9EE:        D0 55         BNE CODE_29BA45           
CODE_29B9F0:        E0 01         CPX #$01                  
CODE_29B9F2:        D0 1C         BNE CODE_29BA10           
CODE_29B9F4:        AE 26 07      LDX $0726                 
CODE_29B9F7:        B5 47         LDA $47,x                 
CODE_29B9F9:        18            CLC                       
CODE_29B9FA:        6D 10 02      ADC $0210                 
CODE_29B9FD:        85 7F         STA $7F                   
CODE_29B9FF:        B5 43         LDA $43,x                 
CODE_29BA01:        85 80         STA $80                   
CODE_29BA03:        A9 86         LDA #$86                  
CODE_29BA05:        8D 11 04      STA $0411                 
CODE_29BA08:        A9 D0         LDA #$D0                  
CODE_29BA0A:        8D 12 04      STA $0412                 
CODE_29BA0D:        4C 2B BA      JMP CODE_29BA2B           

CODE_29BA10:        A9 88         LDA #$88                  
CODE_29BA12:        85 7F         STA $7F                   
CODE_29BA14:        A9 5C         LDA #$5C                  
CODE_29BA16:        85 80         STA $80                   
CODE_29BA18:        AE 26 07      LDX $0726                 
CODE_29BA1B:        B5 47         LDA $47,x                 
CODE_29BA1D:        18            CLC                       
CODE_29BA1E:        6D 10 02      ADC $0210                 
CODE_29BA21:        8D 11 04      STA $0411                 
CODE_29BA24:        B5 43         LDA $43,x                 
CODE_29BA26:        8D 12 04      STA $0412                 
CODE_29BA29:        E6 59         INC $59                   
CODE_29BA2B:        A6 7F         LDX $7F                   
CODE_29BA2D:        AD 11 04      LDA $0411                 
CODE_29BA30:        20 37 BC      JSR CODE_29BC37           
CODE_29BA33:        85 7D         STA $7D                   
CODE_29BA35:        8E FF 03      STX $03FF                 
CODE_29BA38:        A6 80         LDX $80                   
CODE_29BA3A:        AD 12 04      LDA $0412                 
CODE_29BA3D:        20 37 BC      JSR CODE_29BC37           
CODE_29BA40:        85 88         STA $88                   
CODE_29BA42:        8E 00 04      STX $0400                 
CODE_29BA45:        A9 00         LDA #$00                  
CODE_29BA47:        85 85         STA $85                   
CODE_29BA49:        85 87         STA $87                   
CODE_29BA4B:        85 79         STA $79                   
CODE_29BA4D:        A9 4C         LDA #$4C                  
CODE_29BA4F:        85 86         STA $86                   
CODE_29BA51:        A9 09         LDA #$09                  
CODE_29BA53:        85 82         STA $82                   
CODE_29BA55:        EE 59 00      INC $0059                 
CODE_29BA58:        A6 92         LDX $92                   
CODE_29BA5A:        E0 02         CPX #$02                  
CODE_29BA5C:        F0 04         BEQ CODE_29BA62           
CODE_29BA5E:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29BA62:        60            RTS                       

CODE_29BA63:        4C F9 BA      JMP CODE_29BAF9           

CODE_29BA66:        A5 87         LDA $87                   
CODE_29BA68:        D0 10         BNE CODE_29BA7A           
CODE_29BA6A:        A5 79         LDA $79                   
CODE_29BA6C:        18            CLC                       
CODE_29BA6D:        69 04         ADC #$04                  
CODE_29BA6F:        C9 5F         CMP #$5F                  
CODE_29BA71:        B0 03         BCS CODE_29BA76                   
CODE_29BA73:        4C F7 BA      JMP CODE_29BAF7           

CODE_29BA76:        A9 01         LDA #$01                  
CODE_29BA78:        85 87         STA $87                   
CODE_29BA7A:        A5 92         LDA $92                   
CODE_29BA7C:        F0 3C         BEQ CODE_29BABA           
CODE_29BA7E:        A5 7F         LDA $7F                   
CODE_29BA80:        CD 11 04      CMP $0411                 
CODE_29BA83:        B0 0C         BCS CODE_29BA91                   
CODE_29BA85:        6D FF 03      ADC $03FF                 
CODE_29BA88:        AA            TAX                       
CODE_29BA89:        C6 7D         DEC $7D                   
CODE_29BA8B:        30 0D         BMI CODE_29BA9A           
CODE_29BA8D:        E8            INX                       
CODE_29BA8E:        4C 9A BA      JMP CODE_29BA9A           

CODE_29BA91:        ED FF 03      SBC $03FF                 
CODE_29BA94:        AA            TAX                       
CODE_29BA95:        C6 7D         DEC $7D                   
CODE_29BA97:        30 01         BMI CODE_29BA9A           
CODE_29BA99:        CA            DEX                       
CODE_29BA9A:        86 7F         STX $7F                   
CODE_29BA9C:        A5 80         LDA $80                   
CODE_29BA9E:        CD 12 04      CMP $0412                 
CODE_29BAA1:        B0 0C         BCS CODE_29BAAF                   
CODE_29BAA3:        6D 00 04      ADC $0400                 
CODE_29BAA6:        AA            TAX                       
CODE_29BAA7:        C6 88         DEC $88                   
CODE_29BAA9:        30 0D         BMI CODE_29BAB8           
CODE_29BAAB:        E8            INX                       
CODE_29BAAC:        4C B8 BA      JMP CODE_29BAB8           

CODE_29BAAF:        ED 00 04      SBC $0400                 
CODE_29BAB2:        AA            TAX                       
CODE_29BAB3:        C6 88         DEC $88                   
CODE_29BAB5:        30 01         BMI CODE_29BAB8           
CODE_29BAB7:        CA            DEX                       
CODE_29BAB8:        86 80         STX $80                   
CODE_29BABA:        A5 79         LDA $79                   
CODE_29BABC:        38            SEC                       
CODE_29BABD:        E9 04         SBC #$04                  
CODE_29BABF:        D0 36         BNE CODE_29BAF7           
CODE_29BAC1:        A9 00         LDA #$00                  
CODE_29BAC3:        8D 59 00      STA $0059                 
CODE_29BAC6:        85 87         STA $87                   
CODE_29BAC8:        A5 92         LDA $92                   
CODE_29BACA:        C9 02         CMP #$02                  
CODE_29BACC:        F0 1E         BEQ CODE_29BAEC           
CODE_29BACE:        AE 38 07      LDX $0738                 
CODE_29BAD1:        BD C6 1D      LDA $1DC6,x               
CODE_29BAD4:        C9 09         CMP #$09                  
CODE_29BAD6:        90 14         BCC CODE_29BAEC           
CODE_29BAD8:        38            SEC                       
CODE_29BAD9:        E9 0A         SBC #$0A                  
CODE_29BADB:        8F 91 39 7E   STA $7E3991               
CODE_29BADF:        AE 26 07      LDX $0726                 
CODE_29BAE2:        A8            TAY                       
CODE_29BAE3:        C8            INY                       
CODE_29BAE4:        98            TYA                       
CODE_29BAE5:        0A            ASL A                     
CODE_29BAE6:        0A            ASL A                     
CODE_29BAE7:        0A            ASL A                     
CODE_29BAE8:        0A            ASL A                     
CODE_29BAE9:        0A            ASL A                     
CODE_29BAEA:        95 49         STA $49,x                 
CODE_29BAEC:        A6 92         LDX $92                   
CODE_29BAEE:        E0 02         CPX #$02                  
CODE_29BAF0:        F0 04         BEQ CODE_29BAF6           
CODE_29BAF2:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29BAF6:        60            RTS                       

CODE_29BAF7:        85 79         STA $79                   
CODE_29BAF9:        A5 84         LDA $84                   
CODE_29BAFB:        18            CLC                       
CODE_29BAFC:        69 20         ADC #$20                  
CODE_29BAFE:        85 84         STA $84                   
CODE_29BB00:        90 0C         BCC CODE_29BB0E           
CODE_29BB02:        A5 85         LDA $85                   
CODE_29BB04:        49 01         EOR #$01                  
CODE_29BB06:        85 85         STA $85                   
CODE_29BB08:        AA            TAX                       
CODE_29BB09:        BD A2 E8      LDA.w DATA_21E8A2,x               
CODE_29BB0C:        85 86         STA $86                   
CODE_29BB0E:        A0 00         LDY #$00                  
CODE_29BB10:        A2 07         LDX #$07                  
CODE_29BB12:        A5 7E         LDA $7E                   
CODE_29BB14:        18            CLC                       
CODE_29BB15:        69 70         ADC #$70                  
CODE_29BB17:        85 7E         STA $7E                   
CODE_29BB19:        90 02         BCC CODE_29BB1D           
CODE_29BB1B:        A0 01         LDY #$01                  
CODE_29BB1D:        84 81         STY $81                   
CODE_29BB1F:        B5 8A         LDA $8A,x                 
CODE_29BB21:        18            CLC                       
CODE_29BB22:        65 81         ADC $81                   
CODE_29BB24:        29 1F         AND #$1F                  
CODE_29BB26:        95 8A         STA $8A,x                 
CODE_29BB28:        20 3C BB      JSR CODE_29BB3C           
CODE_29BB2B:        20 F3 BB      JSR CODE_29BBF3           
CODE_29BB2E:        CA            DEX                       
CODE_29BB2F:        10 EE         BPL CODE_29BB1F           
CODE_29BB31:        A6 92         LDX $92                   
CODE_29BB33:        E0 02         CPX #$02                  
CODE_29BB35:        F0 04         BEQ CODE_29BB3B           
CODE_29BB37:        22 1B 8C 23   JSL CODE_238C1B           
CODE_29BB3B:        60            RTS                       

CODE_29BB3C:        B5 8A         LDA $8A,x                 
CODE_29BB3E:        29 0F         AND #$0F                  
CODE_29BB40:        A8            TAY                       
CODE_29BB41:        B9 92 E8      LDA.w DATA_21E892,y               
CODE_29BB44:        85 00         STA $00                   
CODE_29BB46:        A5 79         LDA $79                   
CODE_29BB48:        A4 82         LDY $82                   
CODE_29BB4A:        20 D4 BB      JSR CODE_29BBD4           
CODE_29BB4D:        B5 8A         LDA $8A,x                 
CODE_29BB4F:        29 18         AND #$18                  
CODE_29BB51:        C9 10         CMP #$10                  
CODE_29BB53:        90 0B         BCC CODE_29BB60           
CODE_29BB55:        A9 FF         LDA #$FF                  
CODE_29BB57:        85 00         STA $00                   
CODE_29BB59:        A5 7F         LDA $7F                   
CODE_29BB5B:        E5 02         SBC $02                   
CODE_29BB5D:        4C 68 BB      JMP CODE_29BB68           

CODE_29BB60:        A9 01         LDA #$01                  
CODE_29BB62:        85 00         STA $00                   
CODE_29BB64:        A5 7F         LDA $7F                   
CODE_29BB66:        65 02         ADC $02                   
CODE_29BB68:        95 69         STA $69,x                 
CODE_29BB6A:        85 06         STA $06                   
CODE_29BB6C:        A5 7F         LDA $7F                   
CODE_29BB6E:        85 07         STA $07                   
CODE_29BB70:        20 17 BC      JSR CODE_29BC17           
CODE_29BB73:        A5 05         LDA $05                   
CODE_29BB75:        30 52         BMI CODE_29BBC9           
CODE_29BB77:        B5 69         LDA $69,x                 
CODE_29BB79:        18            CLC                       
CODE_29BB7A:        69 08         ADC #$08                  
CODE_29BB7C:        85 09         STA $09                   
CODE_29BB7E:        85 06         STA $06                   
CODE_29BB80:        20 17 BC      JSR CODE_29BC17           
CODE_29BB83:        A5 05         LDA $05                   
CODE_29BB85:        30 42         BMI CODE_29BBC9           
CODE_29BB87:        B5 8A         LDA $8A,x                 
CODE_29BB89:        18            CLC                       
CODE_29BB8A:        69 08         ADC #$08                  
CODE_29BB8C:        29 0F         AND #$0F                  
CODE_29BB8E:        A8            TAY                       
CODE_29BB8F:        B9 92 E8      LDA.w DATA_21E892,y               
CODE_29BB92:        85 00         STA $00                   
CODE_29BB94:        A5 79         LDA $79                   
CODE_29BB96:        A4 82         LDY $82                   
CODE_29BB98:        20 D4 BB      JSR CODE_29BBD4           
CODE_29BB9B:        B5 8A         LDA $8A,x                 
CODE_29BB9D:        38            SEC                       
CODE_29BB9E:        E9 08         SBC #$08                  
CODE_29BBA0:        29 18         AND #$18                  
CODE_29BBA2:        C9 10         CMP #$10                  
CODE_29BBA4:        90 0B         BCC CODE_29BBB1           
CODE_29BBA6:        A9 FF         LDA #$FF                  
CODE_29BBA8:        85 00         STA $00                   
CODE_29BBAA:        A5 80         LDA $80                   
CODE_29BBAC:        E5 02         SBC $02                   
CODE_29BBAE:        4C B9 BB      JMP CODE_29BBB9           

CODE_29BBB1:        A9 01         LDA #$01                  
CODE_29BBB3:        85 00         STA $00                   
CODE_29BBB5:        A5 80         LDA $80                   
CODE_29BBB7:        65 02         ADC $02                   
CODE_29BBB9:        95 71         STA $71,x                 
CODE_29BBBB:        85 06         STA $06                   
CODE_29BBBD:        A5 80         LDA $80                   
CODE_29BBBF:        85 07         STA $07                   
CODE_29BBC1:        20 17 BC      JSR CODE_29BC17           
CODE_29BBC4:        A5 05         LDA $05                   
CODE_29BBC6:        30 01         BMI CODE_29BBC9           
CODE_29BBC8:        60            RTS                       

CODE_29BBC9:        A9 F0         LDA #$F0                  
CODE_29BBCB:        95 71         STA $71,x                 
CODE_29BBCD:        A9 00         LDA #$00                  
CODE_29BBCF:        95 69         STA $69,x                 
CODE_29BBD1:        85 09         STA $09                   
CODE_29BBD3:        60            RTS                       

CODE_29BBD4:        85 01         STA $01                   
CODE_29BBD6:        A9 00         LDA #$00                  
CODE_29BBD8:        85 02         STA $02                   
CODE_29BBDA:        85 03         STA $03                   
CODE_29BBDC:        06 03         ASL $03                   
CODE_29BBDE:        26 02         ROL $02                   
CODE_29BBE0:        06 00         ASL $00                   
CODE_29BBE2:        90 0B         BCC CODE_29BBEF           
CODE_29BBE4:        A5 03         LDA $03                   
CODE_29BBE6:        18            CLC                       
CODE_29BBE7:        65 01         ADC $01                   
CODE_29BBE9:        85 03         STA $03                   
CODE_29BBEB:        90 02         BCC CODE_29BBEF           
CODE_29BBED:        E6 02         INC $02                   
CODE_29BBEF:        88            DEY                       
CODE_29BBF0:        D0 EA         BNE CODE_29BBDC           
CODE_29BBF2:        60            RTS                       

CODE_29BBF3:        8A            TXA                       
CODE_29BBF4:        0A            ASL A                     
CODE_29BBF5:        0A            ASL A                     
CODE_29BBF6:        A8            TAY                       
CODE_29BBF7:        B5 69         LDA $69,x                 
CODE_29BBF9:        99 98 08      STA $0898,y               
CODE_29BBFC:        B5 71         LDA $71,x                 
CODE_29BBFE:        99 99 08      STA $0899,y               
CODE_29BC01:        A5 86         LDA $86                   
CODE_29BC03:        99 9A 08      STA $089A,y               
CODE_29BC06:        A9 32         LDA #$32                  
CODE_29BC08:        99 9B 08      STA $089B,y               
CODE_29BC0B:        5A            PHY                       
CODE_29BC0C:        98            TYA                       
CODE_29BC0D:        4A            LSR A                     
CODE_29BC0E:        4A            LSR A                     
CODE_29BC0F:        A8            TAY                       
CODE_29BC10:        A9 02         LDA #$02                  
CODE_29BC12:        99 46 0A      STA $0A46,y               
CODE_29BC15:        7A            PLY                       
CODE_29BC16:        60            RTS                       

CODE_29BC17:        A5 06         LDA $06                   
CODE_29BC19:        45 07         EOR $07                   
CODE_29BC1B:        29 80         AND #$80                  
CODE_29BC1D:        F0 0E         BEQ CODE_29BC2D           
CODE_29BC1F:        A5 00         LDA $00                   
CODE_29BC21:        10 06         BPL CODE_29BC29           
CODE_29BC23:        A5 06         LDA $06                   
CODE_29BC25:        30 0B         BMI CODE_29BC32           
CODE_29BC27:        10 04         BPL CODE_29BC2D           
CODE_29BC29:        A5 06         LDA $06                   
CODE_29BC2B:        10 05         BPL CODE_29BC32           
CODE_29BC2D:        A9 01         LDA #$01                  
CODE_29BC2F:        85 05         STA $05                   
CODE_29BC31:        60            RTS                       

CODE_29BC32:        A9 FF         LDA #$FF                  
CODE_29BC34:        85 05         STA $05                   
CODE_29BC36:        60            RTS                       

CODE_29BC37:        86 03         STX $03                   
CODE_29BC39:        85 04         STA $04                   
CODE_29BC3B:        38            SEC                       
CODE_29BC3C:        E5 03         SBC $03                   
CODE_29BC3E:        85 00         STA $00                   
CODE_29BC40:        A5 04         LDA $04                   
CODE_29BC42:        C5 03         CMP $03                   
CODE_29BC44:        B0 08         BCS CODE_29BC4E                   
CODE_29BC46:        A5 00         LDA $00                   
CODE_29BC48:        49 FF         EOR #$FF                  
CODE_29BC4A:        69 01         ADC #$01                  
CODE_29BC4C:        85 00         STA $00                   
CODE_29BC4E:        A9 00         LDA #$00                  
CODE_29BC50:        85 02         STA $02                   
CODE_29BC52:        A0 07         LDY #$07                  
CODE_29BC54:        06 02         ASL $02                   
CODE_29BC56:        26 00         ROL $00                   
CODE_29BC58:        2A            ROL A                     
CODE_29BC59:        B0 04         BCS CODE_29BC5F                   
CODE_29BC5B:        C9 17         CMP #$17                  
CODE_29BC5D:        90 04         BCC CODE_29BC63           
CODE_29BC5F:        E9 17         SBC #$17                  
CODE_29BC61:        E6 02         INC $02                   
CODE_29BC63:        88            DEY                       
CODE_29BC64:        10 EE         BPL CODE_29BC54           
CODE_29BC66:        A6 02         LDX $02                   
CODE_29BC68:        60            RTS                       

CODE_29BC69:        AE 26 07      LDX $0726                 
CODE_29BC6C:        BD 3F 07      LDA $073F,x               
CODE_29BC6F:        D0 4C         BNE CODE_29BCBD           
CODE_29BC71:        A0 06         LDY #$06                  
CODE_29BC73:        B5 43         LDA $43,x                 
CODE_29BC75:        D9 A4 E8      CMP.w DATA_21E8A4,y               
CODE_29BC78:        F0 05         BEQ CODE_29BC7F           
CODE_29BC7A:        88            DEY                       
CODE_29BC7B:        10 F8         BPL CODE_29BC75           
CODE_29BC7D:        A0 07         LDY #$07                  
CODE_29BC7F:        84 0C         STY $0C                   
CODE_29BC81:        B5 45         LDA $45,x                 
CODE_29BC83:        0A            ASL A                     
CODE_29BC84:        0A            ASL A                     
CODE_29BC85:        0A            ASL A                     
CODE_29BC86:        0A            ASL A                     
CODE_29BC87:        85 00         STA $00                   
CODE_29BC89:        B5 47         LDA $47,x                 
CODE_29BC8B:        4A            LSR A                     
CODE_29BC8C:        4A            LSR A                     
CODE_29BC8D:        4A            LSR A                     
CODE_29BC8E:        4A            LSR A                     
CODE_29BC8F:        05 00         ORA $00                   
CODE_29BC91:        A8            TAY                       
CODE_29BC92:        E0 00         CPX #$00                  
CODE_29BC94:        F0 05         BEQ CODE_29BC9B           
CODE_29BC96:        98            TYA                       
CODE_29BC97:        18            CLC                       
CODE_29BC98:        69 40         ADC #$40                  
CODE_29BC9A:        A8            TAY                       
CODE_29BC9B:        A6 0C         LDX $0C                   
CODE_29BC9D:        B9 00 1D      LDA $1D00,y               
CODE_29BCA0:        1D AB E8      ORA.w DATA_21E8AB,x               
CODE_29BCA3:        99 00 1D      STA $1D00,y               
CODE_29BCA6:        A5 B3         LDA $B3                   
CODE_29BCA8:        C9 60         CMP #$60                  
CODE_29BCAA:        F0 04         BEQ CODE_29BCB0           
CODE_29BCAC:        C9 E3         CMP #$E3                  
CODE_29BCAE:        D0 0D         BNE CODE_29BCBD           
CODE_29BCB0:        98            TYA                       
CODE_29BCB1:        49 40         EOR #$40                  
CODE_29BCB3:        A8            TAY                       
CODE_29BCB4:        B9 00 1D      LDA $1D00,y               
CODE_29BCB7:        1D AB E8      ORA.w DATA_21E8AB,x               
CODE_29BCBA:        99 00 1D      STA $1D00,y               
CODE_29BCBD:        60            RTS                       

CODE_29BCBE:        A0 00         LDY #$00                  
CODE_29BCC0:        BD 09 1F      LDA $1F09,x               
CODE_29BCC3:        0A            ASL A                     
CODE_29BCC4:        0A            ASL A                     
CODE_29BCC5:        0A            ASL A                     
CODE_29BCC6:        0A            ASL A                     
CODE_29BCC7:        85 01         STA $01                   
CODE_29BCC9:        BD FB 1E      LDA $1EFB,x               
CODE_29BCCC:        4A            LSR A                     
CODE_29BCCD:        4A            LSR A                     
CODE_29BCCE:        4A            LSR A                     
CODE_29BCCF:        4A            LSR A                     
CODE_29BCD0:        05 01         ORA $01                   
CODE_29BCD2:        85 01         STA $01                   
CODE_29BCD4:        A5 23         LDA $23                   
CODE_29BCD6:        38            SEC                       
CODE_29BCD7:        E9 02         SBC #$02                  
CODE_29BCD9:        C5 01         CMP $01                   
CODE_29BCDB:        90 08         BCC CODE_29BCE5           
CODE_29BCDD:        A5 24         LDA $24                   
CODE_29BCDF:        C5 01         CMP $01                   
CODE_29BCE1:        B0 02         BCS CODE_29BCE5                   
CODE_29BCE3:        A0 01         LDY #$01                  
CODE_29BCE5:        98            TYA                       
CODE_29BCE6:        9D 87 05      STA $0587,x               
CODE_29BCE9:        60            RTS                       

CODE_29BCEA:        AC 26 07      LDY $0726                 
CODE_29BCED:        AD 97 05      LDA $0597                 
CODE_29BCF0:        F0 1B         BEQ CODE_29BD0D           
CODE_29BCF2:        B9 43 00      LDA $0043,y               
CODE_29BCF5:        9D ED 1E      STA $1EED,x               
CODE_29BCF8:        9D 00 05      STA $0500,x               
CODE_29BCFB:        B9 47 00      LDA $0047,y               
CODE_29BCFE:        9D FB 1E      STA $1EFB,x               
CODE_29BD01:        9D 0F 05      STA $050F,x               
CODE_29BD04:        B9 45 00      LDA $0045,y               
CODE_29BD07:        9D 09 1F      STA $1F09,x               
CODE_29BD0A:        9D 1E 05      STA $051E,x               
CODE_29BD0D:        B9 49 00      LDA $0049,y               
CODE_29BD10:        19 3F 07      ORA $073F,y               
CODE_29BD13:        D0 1D         BNE CODE_29BD32           
CODE_29BD15:        B9 43 00      LDA $0043,y               
CODE_29BD18:        DD 00 05      CMP $0500,x               
CODE_29BD1B:        D0 15         BNE CODE_29BD32           
CODE_29BD1D:        B9 45 00      LDA $0045,y               
CODE_29BD20:        DD 1E 05      CMP $051E,x               
CODE_29BD23:        D0 0D         BNE CODE_29BD32           
CODE_29BD25:        B9 47 00      LDA $0047,y               
CODE_29BD28:        DD 0F 05      CMP $050F,x               
CODE_29BD2B:        D0 05         BNE CODE_29BD32           
CODE_29BD2D:        A9 01         LDA #$01                  
CODE_29BD2F:        8D 97 05      STA $0597                 
CODE_29BD32:        60            RTS                       

CODE_29BD33:        EA            NOP                       
CODE_29BD34:        60            RTS                       

CODE_29BD35:        AE 27 07      LDX $0727                 
CODE_29BD38:        E0 07         CPX #$07                  
CODE_29BD3A:        D0 11         BNE CODE_29BD4D           
CODE_29BD3C:        AC 26 07      LDY $0726                 
CODE_29BD3F:        B9 45 00      LDA $0045,y               
CODE_29BD42:        C9 03         CMP #$03                  
CODE_29BD44:        D0 07         BNE CODE_29BD4D           
CODE_29BD46:        A9 FF         LDA #$FF                  
CODE_29BD48:        8D 43 02      STA $0243                 
CODE_29BD4B:        80 23         BRA CODE_29BD70           

CODE_29BD4D:        AC 99 05      LDY $0599                 
CODE_29BD50:        CE 9A 05      DEC $059A                 
CODE_29BD53:        10 1B         BPL CODE_29BD70           
CODE_29BD55:        9C 43 02      STZ $0243                 
CODE_29BD58:        C8            INY                       
CODE_29BD59:        98            TYA                       
CODE_29BD5A:        29 03         AND #$03                  
CODE_29BD5C:        8D 99 05      STA $0599                 
CODE_29BD5F:        A8            TAY                       
CODE_29BD60:        8A            TXA                       
CODE_29BD61:        0A            ASL A                     
CODE_29BD62:        0A            ASL A                     
CODE_29BD63:        0D 99 05      ORA $0599                 
CODE_29BD66:        AA            TAX                       
CODE_29BD67:        BD E9 E8      LDA.w DATA_21E8E9,x               
CODE_29BD6A:        8D 9A 05      STA $059A                 
CODE_29BD6D:        8C 44 02      STY $0244                 
CODE_29BD70:        AD 43 02      LDA $0243                 
CODE_29BD73:        30 56         BMI CODE_29BDCB           
CODE_29BD75:        C9 08         CMP #$08                  
CODE_29BD77:        90 06         BCC CODE_29BD7F           
CODE_29BD79:        A9 FF         LDA #$FF                  
CODE_29BD7B:        8D 43 02      STA $0243                 
CODE_29BD7E:        6B            RTL                       

CODE_29BD7F:        64 00         STZ $00                   
CODE_29BD81:        AE 27 07      LDX $0727                 
CODE_29BD84:        E0 04         CPX #$04                  
CODE_29BD86:        D0 04         BNE CODE_29BD8C           
CODE_29BD88:        A9 04         LDA #$04                  
CODE_29BD8A:        85 00         STA $00                   
CODE_29BD8C:        AD 44 02      LDA $0244                 
CODE_29BD8F:        18            CLC                       
CODE_29BD90:        65 00         ADC $00                   
CODE_29BD92:        AA            TAX                       
CODE_29BD93:        BD 0D E9      LDA.w DATA_21E90D,x               
CODE_29BD96:        8D 42 02      STA $0242                 
CODE_29BD99:        BD 15 E9      LDA.w DATA_21E915,x               
CODE_29BD9C:        8D 41 02      STA $0241                 
CODE_29BD9F:        BD 1D E9      LDA.w DATA_21E91D,x               
CODE_29BDA2:        8D 40 02      STA $0240                 
CODE_29BDA5:        AD 43 02      LDA $0243                 
CODE_29BDA8:        0A            ASL A                     
CODE_29BDA9:        A8            TAY                       
CODE_29BDAA:        C2 20         REP #$20                  
CODE_29BDAC:        A9 00 02      LDA #$0200                
CODE_29BDAF:        8D CA 02      STA $02CA                 
CODE_29BDB2:        AD 40 02      LDA $0240                 
CODE_29BDB5:        18            CLC                       
CODE_29BDB6:        79 25 E9      ADC.w DATA_21E925,y               
CODE_29BDB9:        8D 40 02      STA $0240                 
CODE_29BDBC:        A9 00 20      LDA #$2000                
CODE_29BDBF:        18            CLC                       
CODE_29BDC0:        79 35 E9      ADC.w DATA_21E935,y               
CODE_29BDC3:        8D 3E 02      STA $023E                 
CODE_29BDC6:        E2 20         SEP #$20                  
CODE_29BDC8:        EE 43 02      INC $0243                 
CODE_29BDCB:        6B            RTL                       

PNTR_29BDCC:       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

DATA_29BE00:        db $03,$67,$BF,$E9,$03,$67,$BF,$E9

CODE_29BE08:        20 10 BE      JSR CODE_29BE10
CODE_29BE0B:        22 0B 99 20   JSL CODE_20990B
CODE_29BE0F:        60            RTS               

CODE_29BE10:        A2 00         LDX #$00                  
CODE_29BE12:        A9 02         LDA #$02                  
CODE_29BE14:        22 A8 98 20   JSL CODE_2098A8           
CODE_29BE18:        22 44 98 20   JSL CODE_209844           
CODE_29BE1C:        E0 F0         CPX #$F0                  
CODE_29BE1E:        D0 F2         BNE CODE_29BE12           
CODE_29BE20:        60            RTS                       

CODE_29BE21:        20 10 BE      JSR CODE_29BE10           
CODE_29BE24:        9C 0C 42      STZ $420C                 
CODE_29BE27:        A0 80         LDY #$80                  
CODE_29BE29:        AD 2B 07      LDA $072B                 
CODE_29BE2C:        C9 02         CMP #$02                  
CODE_29BE2E:        F0 02         BEQ CODE_29BE32           
CODE_29BE30:        A0 40         LDY #$40                  
CODE_29BE32:        84 DC         STY $DC                   
CODE_29BE34:        A9 7E         LDA #$7E                  
CODE_29BE36:        85 30         STA $30                   
CODE_29BE38:        85 DA         STA $DA                   
CODE_29BE3A:        AD 27 07      LDA $0727                 
CODE_29BE3D:        0A            ASL A                     
CODE_29BE3E:        A8            TAY                       
CODE_29BE3F:        C2 20         REP #$20                  
CODE_29BE41:        AF 00 82 21   LDA.l DATA_218200               
CODE_29BE45:        18            CLC                       
CODE_29BE46:        69 10 01      ADC #$0110                
CODE_29BE49:        85 2E         STA $2E                   
CODE_29BE4B:        18            CLC                       
CODE_29BE4C:        69 00 20      ADC #$2000                
CODE_29BE4F:        85 D8         STA $D8                   
CODE_29BE51:        DA            PHX                       
CODE_29BE52:        BB            TYX                       
CODE_29BE53:        BF 56 E2 2A   LDA.l DATA_2AE256,x             
CODE_29BE57:        85 00         STA $00                   
CODE_29BE59:        FA            PLX                       
CODE_29BE5A:        E2 20         SEP #$20                  
CODE_29BE5C:        A9 2A         LDA #$2A                  
CODE_29BE5E:        85 02         STA $02                   
CODE_29BE60:        A0 00         LDY #$00                  
CODE_29BE62:        B7 00         LDA [$00],y               
CODE_29BE64:        C9 FF         CMP #$FF                  
CODE_29BE66:        F0 31         BEQ CODE_29BE99           
CODE_29BE68:        C9 03         CMP #$03                  
CODE_29BE6A:        B0 0D         BCS CODE_29BE79                   
CODE_29BE6C:        48            PHA                       
CODE_29BE6D:        AD 27 07      LDA $0727                 
CODE_29BE70:        C9 07         CMP #$07                  
CODE_29BE72:        D0 04         BNE CODE_29BE78           
CODE_29BE74:        A9 01         LDA #$01                  
CODE_29BE76:        97 D8         STA [$D8],y               
CODE_29BE78:        68            PLA                       
CODE_29BE79:        97 2E         STA [$2E],y               
CODE_29BE7B:        C8            INY                       
CODE_29BE7C:        C0 90         CPY #$90                  
CODE_29BE7E:        D0 E2         BNE CODE_29BE62           
CODE_29BE80:        C2 20         REP #$20                  
CODE_29BE82:        98            TYA                       
CODE_29BE83:        29 FF 00      AND #$00FF                
CODE_29BE86:        18            CLC                       
CODE_29BE87:        65 00         ADC $00                   
CODE_29BE89:        85 00         STA $00                   
CODE_29BE8B:        A5 2E         LDA $2E                   
CODE_29BE8D:        18            CLC                       
CODE_29BE8E:        69 B0 01      ADC #$01B0                
CODE_29BE91:        85 2E         STA $2E                   
CODE_29BE93:        85 D8         STA $D8                   
CODE_29BE95:        E2 20         SEP #$20                  
CODE_29BE97:        80 C7         BRA CODE_29BE60           

CODE_29BE99:        A2 E0         LDX #$E0                  
CODE_29BE9B:        AC 27 07      LDY $0727                 
CODE_29BE9E:        B9 AD D7      LDA.w DATA_21D7AD,y               
CODE_29BEA1:        22 A8 98 20   JSL CODE_2098A8           
CODE_29BEA5:        E8            INX                       
CODE_29BEA6:        E0 F0         CPX #$F0                  
CODE_29BEA8:        D0 F7         BNE CODE_29BEA1           
CODE_29BEAA:        B9 76 D7      LDA.w DATA_21D776,y               
CODE_29BEAD:        8D 3B 07      STA $073B                 
CODE_29BEB0:        B9 7F D7      LDA.w DATA_21D77F,y               
CODE_29BEB3:        8D 3C 07      STA $073C                 
CODE_29BEB6:        64 00         STZ $00                   
CODE_29BEB8:        A9 80         LDA #$80                  
CODE_29BEBA:        85 01         STA $01                   
CODE_29BEBC:        A4 00         LDY $00                   
CODE_29BEBE:        B9 00 1D      LDA $1D00,y               
CODE_29BEC1:        25 01         AND $01                   
CODE_29BEC3:        D0 03         BNE CODE_29BEC8           
CODE_29BEC5:        4C 71 BF      JMP CODE_29BF71           

CODE_29BEC8:        98            TYA                       
CODE_29BEC9:        29 30         AND #$30                  
CODE_29BECB:        4A            LSR A                     
CODE_29BECC:        4A            LSR A                     
CODE_29BECD:        4A            LSR A                     
CODE_29BECE:        AA            TAX                       
CODE_29BECF:        A9 7E         LDA #$7E                  
CODE_29BED1:        85 30         STA $30                   
CODE_29BED3:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_29BED7:        85 2E         STA $2E                   
CODE_29BED9:        BF 01 82 21   LDA.l DATA_218200+1,x             
CODE_29BEDD:        1A            INC A                     
CODE_29BEDE:        85 2F         STA $2F                   
CODE_29BEE0:        A2 07         LDX #$07                  
CODE_29BEE2:        A5 01         LDA $01                   
CODE_29BEE4:        DD 88 D7      CMP.w DATA_21D788,x               
CODE_29BEE7:        F0 03         BEQ CODE_29BEEC           
CODE_29BEE9:        CA            DEX                       
CODE_29BEEA:        D0 F6         BNE CODE_29BEE2           
CODE_29BEEC:        8A            TXA                       
CODE_29BEED:        0A            ASL A                     
CODE_29BEEE:        0A            ASL A                     
CODE_29BEEF:        0A            ASL A                     
CODE_29BEF0:        0A            ASL A                     
CODE_29BEF1:        18            CLC                       
CODE_29BEF2:        69 10         ADC #$10                  
CODE_29BEF4:        85 02         STA $02                   
CODE_29BEF6:        98            TYA                       
CODE_29BEF7:        29 0F         AND #$0F                  
CODE_29BEF9:        05 02         ORA $02                   
CODE_29BEFB:        A8            TAY                       
CODE_29BEFC:        B7 2E         LDA [$2E],y               
CODE_29BEFE:        84 04         STY $04                   
CODE_29BF00:        85 B3         STA $B3                   
CODE_29BF02:        29 C0         AND #$C0                  
CODE_29BF04:        18            CLC                       
CODE_29BF05:        2A            ROL A                     
CODE_29BF06:        2A            ROL A                     
CODE_29BF07:        2A            ROL A                     
CODE_29BF08:        AA            TAX                       
CODE_29BF09:        A0 04         LDY #$04                  
CODE_29BF0B:        A5 B3         LDA $B3                   
CODE_29BF0D:        D9 A0 D7      CMP.w DATA_21D7A0,y               
CODE_29BF10:        F0 36         BEQ CODE_29BF48           
CODE_29BF12:        88            DEY                       
CODE_29BF13:        10 F8         BPL CODE_29BF0D           
CODE_29BF15:        C9 67         CMP #$67                  
CODE_29BF17:        F0 0A         BEQ CODE_29BF23           
CODE_29BF19:        C9 EB         CMP #$EB                  
CODE_29BF1B:        F0 06         BEQ CODE_29BF23           
CODE_29BF1D:        DF 00 BE 29   CMP.l DATA_29BE00,x             
CODE_29BF21:        B0 25         BCS CODE_29BF48                   
CODE_29BF23:        A2 07         LDX #$07                  
CODE_29BF25:        DD 90 D7      CMP.w DATA_21D790,x               
CODE_29BF28:        F0 05         BEQ CODE_29BF2F           
CODE_29BF2A:        CA            DEX                       
CODE_29BF2B:        10 F8         BPL CODE_29BF25           
CODE_29BF2D:        30 05         BMI CODE_29BF34           
CODE_29BF2F:        BD 98 D7      LDA.w DATA_21D798,x               
CODE_29BF32:        80 25         BRA CODE_29BF59           

CODE_29BF34:        A5 01         LDA $01                   
CODE_29BF36:        C9 01         CMP #$01                  
CODE_29BF38:        D0 37         BNE CODE_29BF71           
CODE_29BF3A:        A4 04         LDY $04                   
CODE_29BF3C:        C0 90         CPY #$90                  
CODE_29BF3E:        B0 31         BCS CODE_29BF71                   
CODE_29BF40:        98            TYA                       
CODE_29BF41:        18            CLC                       
CODE_29BF42:        69 10         ADC #$10                  
CODE_29BF44:        A8            TAY                       
CODE_29BF45:        4C FC BE      JMP CODE_29BEFC           

CODE_29BF48:        8A            TXA                       
CODE_29BF49:        0A            ASL A                     
CODE_29BF4A:        85 03         STA $03                   
CODE_29BF4C:        A5 00         LDA $00                   
CODE_29BF4E:        29 40         AND #$40                  
CODE_29BF50:        F0 02         BEQ CODE_29BF54           
CODE_29BF52:        E6 03         INC $03                   
CODE_29BF54:        A6 03         LDX $03                   
CODE_29BF56:        BD A5 D7      LDA.w DATA_21D7A5,x               
CODE_29BF59:        48            PHA                       
CODE_29BF5A:        A5 2E         LDA $2E                   
CODE_29BF5C:        85 D8         STA $D8                   
CODE_29BF5E:        A5 2F         LDA $2F                   
CODE_29BF60:        18            CLC                       
CODE_29BF61:        69 20         ADC #$20                  
CODE_29BF63:        85 D9         STA $D9                   
CODE_29BF65:        B7 D8         LDA [$D8],y               
CODE_29BF67:        D0 07         BNE CODE_29BF70           
CODE_29BF69:        68            PLA                       
CODE_29BF6A:        A4 04         LDY $04                   
CODE_29BF6C:        97 2E         STA [$2E],y               
CODE_29BF6E:        80 01         BRA CODE_29BF71           

CODE_29BF70:        68            PLA                       
CODE_29BF71:        46 01         LSR $01                   
CODE_29BF73:        F0 03         BEQ CODE_29BF78           
CODE_29BF75:        4C BC BE      JMP CODE_29BEBC           

CODE_29BF78:        E6 00         INC $00                   
CODE_29BF7A:        A5 00         LDA $00                   
CODE_29BF7C:        C5 DC         CMP $DC                   
CODE_29BF7E:        F0 03         BEQ CODE_29BF83           
CODE_29BF80:        4C B8 BE      JMP CODE_29BEB8           

CODE_29BF83:        6B            RTL                       

CODE_29BF84:        AE 26 07      LDX $0726                 
CODE_29BF87:        BD 3D 07      LDA $073D,x               
CODE_29BF8A:        F0 04         BEQ CODE_29BF90           
CODE_29BF8C:        20 C7 C0      JSR CODE_29C0C7           
CODE_29BF8F:        6B            RTL                       

CODE_29BF90:        AD 27 07      LDA $0727                 
CODE_29BF93:        0A            ASL A                     
CODE_29BF94:        A8            TAY                       
CODE_29BF95:        C2 20         REP #$20                  
CODE_29BF97:        B9 7D D8      LDA.w DATA_21D87D,y               
CODE_29BF9A:        85 00         STA $00                   
CODE_29BF9C:        B9 8F D8      LDA.w DATA_21D88F,y               
CODE_29BF9F:        85 02         STA $02                   
CODE_29BFA1:        B9 A1 D8      LDA.w DATA_21D8A1,y               
CODE_29BFA4:        85 04         STA $04                   
CODE_29BFA6:        B9 B3 D8      LDA.w DATA_21D8B3,y               
CODE_29BFA9:        85 06         STA $06                   
CODE_29BFAB:        B9 6B D8      LDA.w DATA_21D86B,y               
CODE_29BFAE:        85 08         STA $08                   
CODE_29BFB0:        E2 20         SEP #$20                  
CODE_29BFB2:        B4 45         LDY $45,x                 
CODE_29BFB4:        B1 08         LDA ($08),y               
CODE_29BFB6:        A8            TAY                       
CODE_29BFB7:        64 0E         STZ $0E                   
CODE_29BFB9:        B1 00         LDA ($00),y               
CODE_29BFBB:        29 F0         AND #$F0                  
CODE_29BFBD:        D5 43         CMP $43,x                 
CODE_29BFBF:        F0 0A         BEQ CODE_29BFCB           
CODE_29BFC1:        C8            INY                       
CODE_29BFC2:        D0 F5         BNE CODE_29BFB9           
CODE_29BFC4:        E6 01         INC $01                   
CODE_29BFC6:        E6 0E         INC $0E                   
CODE_29BFC8:        4C B9 BF      JMP CODE_29BFB9           

CODE_29BFCB:        A5 03         LDA $03                   
CODE_29BFCD:        18            CLC                       
CODE_29BFCE:        65 0E         ADC $0E                   
CODE_29BFD0:        85 03         STA $03                   
CODE_29BFD2:        64 0E         STZ $0E                   
CODE_29BFD4:        B5 47         LDA $47,x                 
CODE_29BFD6:        4A            LSR A                     
CODE_29BFD7:        4A            LSR A                     
CODE_29BFD8:        4A            LSR A                     
CODE_29BFD9:        4A            LSR A                     
CODE_29BFDA:        85 08         STA $08                   
CODE_29BFDC:        B5 45         LDA $45,x                 
CODE_29BFDE:        0A            ASL A                     
CODE_29BFDF:        0A            ASL A                     
CODE_29BFE0:        0A            ASL A                     
CODE_29BFE1:        0A            ASL A                     
CODE_29BFE2:        05 08         ORA $08                   
CODE_29BFE4:        D1 02         CMP ($02),y               
CODE_29BFE6:        F0 0A         BEQ CODE_29BFF2           
CODE_29BFE8:        C8            INY                       
CODE_29BFE9:        D0 F9         BNE CODE_29BFE4           
CODE_29BFEB:        E6 03         INC $03                   
CODE_29BFED:        E6 0E         INC $0E                   
CODE_29BFEF:        4C E4 BF      JMP CODE_29BFE4           

CODE_29BFF2:        A5 01         LDA $01                   
CODE_29BFF4:        18            CLC                       
CODE_29BFF5:        65 0E         ADC $0E                   
CODE_29BFF7:        85 01         STA $01                   
CODE_29BFF9:        AD 27 07      LDA $0727                 
CODE_29BFFC:        C9 08         CMP #$08                  
CODE_29BFFE:        D0 08         BNE CODE_29C008           
CODE_29C000:        B1 00         LDA ($00),y               
CODE_29C002:        29 0F         AND #$0F                  
CODE_29C004:        8D 2A 04      STA $042A                 
CODE_29C007:        6B            RTL                       

CODE_29C008:        B1 00         LDA ($00),y               
CODE_29C00A:        29 0F         AND #$0F                  
CODE_29C00C:        8D 0A 07      STA $070A                 
CODE_29C00F:        A5 05         LDA $05                   
CODE_29C011:        18            CLC                       
CODE_29C012:        65 0E         ADC $0E                   
CODE_29C014:        85 05         STA $05                   
CODE_29C016:        A5 07         LDA $07                   
CODE_29C018:        18            CLC                       
CODE_29C019:        65 0E         ADC $0E                   
CODE_29C01B:        85 07         STA $07                   
CODE_29C01D:        98            TYA                       
CODE_29C01E:        85 0F         STA $0F                   
CODE_29C020:        0A            ASL A                     
CODE_29C021:        A8            TAY                       
CODE_29C022:        90 0C         BCC CODE_29C030           
CODE_29C024:        A5 05         LDA $05                   
CODE_29C026:        69 00         ADC #$00                  
CODE_29C028:        85 05         STA $05                   
CODE_29C02A:        A5 07         LDA $07                   
CODE_29C02C:        69 00         ADC #$00                  
CODE_29C02E:        85 07         STA $07                   
CODE_29C030:        98            TYA                       
CODE_29C031:        18            CLC                       
CODE_29C032:        65 0F         ADC $0F                   
CODE_29C034:        A8            TAY                       
CODE_29C035:        84 0F         STY $0F                   
CODE_29C037:        C2 20         REP #$20                  
CODE_29C039:        B1 04         LDA ($04),y               
CODE_29C03B:        85 31         STA $31                   
CODE_29C03D:        8D 3A 02      STA $023A                 
CODE_29C040:        B1 06         LDA ($06),y               
CODE_29C042:        85 2B         STA $2B                   
CODE_29C044:        8D BB 1E      STA $1EBB                 
CODE_29C047:        E2 20         SEP #$20                  
CODE_29C049:        C8            INY                       
CODE_29C04A:        C8            INY                       
CODE_29C04B:        B1 04         LDA ($04),y               
CODE_29C04D:        85 33         STA $33                   
CODE_29C04F:        B1 06         LDA ($06),y               
CODE_29C051:        85 2D         STA $2D                   
CODE_29C053:        8D BD 1E      STA $1EBD                 
CODE_29C056:        A5 1E         LDA $1E                   
CODE_29C058:        D0 11         BNE CODE_29C06B           
CODE_29C05A:        AD 0A 07      LDA $070A                 
CODE_29C05D:        C9 0F         CMP #$0F                  
CODE_29C05F:        D0 04         BNE CODE_29C065           
CODE_29C061:        20 9E C1      JSR CODE_29C19E           
CODE_29C064:        6B            RTL                       

CODE_29C065:        A9 03         LDA #$03                  
CODE_29C067:        8D 28 07      STA $0728                 
CODE_29C06A:        6B            RTL                       

CODE_29C06B:        20 6F C0      JSR CODE_29C06F           
CODE_29C06E:        6B            RTL                       

CODE_29C06F:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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
    
CODE_29C095:        AC 26 07      LDY $0726
CODE_29C098:        A9 7E         LDA #$7E                  
CODE_29C09A:        85 30         STA $30                   
CODE_29C09C:        B9 45 00      LDA $0045,y               
CODE_29C09F:        0A            ASL A                     
CODE_29C0A0:        AA            TAX                       
CODE_29C0A1:        BF 00 82 21   LDA.l DATA_218200,x             
CODE_29C0A5:        85 2E         STA $2E                   
CODE_29C0A7:        BF 01 82 21   LDA.l DATA_218200+1,x             
CODE_29C0AB:        1A            INC A                     
CODE_29C0AC:        85 2F         STA $2F                   
CODE_29C0AE:        B9 47 00      LDA $0047,y               
CODE_29C0B1:        4A            LSR A                     
CODE_29C0B2:        4A            LSR A                     
CODE_29C0B3:        4A            LSR A                     
CODE_29C0B4:        4A            LSR A                     
CODE_29C0B5:        85 00         STA $00                   
CODE_29C0B7:        B9 43 00      LDA $0043,y               
CODE_29C0BA:        38            SEC                       
CODE_29C0BB:        E9 10         SBC #$10                  
CODE_29C0BD:        29 F0         AND #$F0                  
CODE_29C0BF:        05 00         ORA $00                   
CODE_29C0C1:        A8            TAY                       
CODE_29C0C2:        B7 2E         LDA [$2E],y               
CODE_29C0C4:        85 B3         STA $B3                   
CODE_29C0C6:        60            RTS                       

CODE_29C0C7:        AD 27 07      LDA $0727                 
CODE_29C0CA:        0A            ASL A                     
CODE_29C0CB:        18            CLC                       
CODE_29C0CC:        6D 27 07      ADC $0727                 
CODE_29C0CF:        AA            TAX                       
CODE_29C0D0:        C2 20         REP #$20                  
CODE_29C0D2:        BD C2 D7      LDA.w DATA_21D7C2,x               
CODE_29C0D5:        85 2B         STA $2B                   
CODE_29C0D7:        AD DA D7      LDA.w DATA_21D7DA                 
CODE_29C0DA:        85 31         STA $31                   
CODE_29C0DC:        E2 20         SEP #$20                  
CODE_29C0DE:        BD C4 D7      LDA.w DATA_21D7C4,x               
CODE_29C0E1:        85 2D         STA $2D                   
CODE_29C0E3:        A9 02         LDA #$02                  
CODE_29C0E5:        8D 0A 07      STA $070A                 
CODE_29C0E8:        60            RTS                       

CODE_29C0E9:        AD 27 07      LDA $0727                 
CODE_29C0EC:        0A            ASL A                     
CODE_29C0ED:        18            CLC                       
CODE_29C0EE:        6D 27 07      ADC $0727                 
CODE_29C0F1:        A8            TAY                       
CODE_29C0F2:        C2 20         REP #$20                  
CODE_29C0F4:        B9 DD D7      LDA.w DATA_21D7DD,y               
CODE_29C0F7:        85 2B         STA $2B                   
CODE_29C0F9:        B9 F5 D7      LDA.w DATA_21D7F5,y               
CODE_29C0FC:        85 31         STA $31                   
CODE_29C0FE:        E2 20         SEP #$20                  
CODE_29C100:        B9 DF D7      LDA.w DATA_21D7DF,y               
CODE_29C103:        85 2D         STA $2D                   
CODE_29C105:        A9 0A         LDA #$0A                  
CODE_29C107:        8D 0A 07      STA $070A                 
CODE_29C10A:        60            RTS                       

CODE_29C10B:        60            RTS                       

CODE_29C10C:        A9 0F         LDA #$0F                  
CODE_29C10E:        8D 0A 07      STA $070A                 
CODE_29C111:        A9 02         LDA #$02                  
CODE_29C113:        8D 42 10      STA $1042                 
CODE_29C116:        A0 00         LDY #$00                  
CODE_29C118:        8C 43 10      STY $1043                 
CODE_29C11B:        8C 34 10      STY $1034                 
CODE_29C11E:        B9 3A 96      LDA.w DATA_21963A,y               
CODE_29C121:        85 2B         STA $2B                   
CODE_29C123:        B9 3B 96      LDA.w DATA_21963A+1,y               
CODE_29C126:        85 2C         STA $2C                   
CODE_29C128:        A9 21         LDA #$21                  
CODE_29C12A:        85 2D         STA $2D                   
CODE_29C12C:        A9 03         LDA #$03                  
CODE_29C12E:        8D 28 07      STA $0728                 
CODE_29C131:        A9 01         LDA #$01                  
CODE_29C133:        8F 95 39 7E   STA $7E3995               
CODE_29C137:        60            RTS                       

CODE_29C138:        DA            PHX                       
CODE_29C139:        AD 27 07      LDA $0727                 
CODE_29C13C:        0A            ASL A                     
CODE_29C13D:        AA            TAX                       
CODE_29C13E:        18            CLC                       
CODE_29C13F:        6D 27 07      ADC $0727                 
CODE_29C142:        A8            TAY                       
CODE_29C143:        C2 20         REP #$20                  
CODE_29C145:        B9 0D D8      LDA.w DATA_21D80D,y               
CODE_29C148:        85 2B         STA $2B                   
CODE_29C14A:        BD 25 D8      LDA.w DATA_21D825,x               
CODE_29C14D:        85 31         STA $31                   
CODE_29C14F:        E2 20         SEP #$20                  
CODE_29C151:        B9 0F D8      LDA.w DATA_21D80F,y               
CODE_29C154:        85 2D         STA $2D                   
CODE_29C156:        A9 07         LDA #$07                  
CODE_29C158:        8D 0A 07      STA $070A                 
CODE_29C15B:        FA            PLX                       
CODE_29C15C:        A9 01         LDA #$01                  
CODE_29C15E:        8F 95 39 7E   STA $7E3995               
CODE_29C162:        60            RTS                       

CODE_29C163:        AD 27 07      LDA $0727                 
CODE_29C166:        0A            ASL A                     
CODE_29C167:        18            CLC                       
CODE_29C168:        6D 27 07      ADC $0727                 
CODE_29C16B:        A8            TAY                       
CODE_29C16C:        C2 20         REP #$20                  
CODE_29C16E:        B9 35 D8      LDA.w DATA_21D835,y               
CODE_29C171:        85 2B         STA $2B                   
CODE_29C173:        B9 4D D8      LDA.w DATA_21D84D,y               
CODE_29C176:        85 31         STA $31                   
CODE_29C178:        E2 20         SEP #$20                  
CODE_29C17A:        B9 37 D8      LDA.w DATA_21D837,y               
CODE_29C17D:        85 2D         STA $2D                   
CODE_29C17F:        A9 0A         LDA #$0A                  
CODE_29C181:        8D 0A 07      STA $070A                 
CODE_29C184:        60            RTS                       

CODE_29C185:        C2 20         REP #$20                  
CODE_29C187:        AD 65 D8      LDA.w DATA_21D865                 
CODE_29C18A:        85 2B         STA $2B                   
CODE_29C18C:        AD 68 D8      LDA.w DATA_21D868                 
CODE_29C18F:        85 31         STA $31                   
CODE_29C191:        E2 20         SEP #$20                  
CODE_29C193:        AD 67 D8      LDA.w DATA_21D867                 
CODE_29C196:        85 2D         STA $2D                   
CODE_29C198:        A9 01         LDA #$01                  
CODE_29C19A:        8D 0A 07      STA $070A                 
CODE_29C19D:        60            RTS                       

CODE_29C19E:        AE 26 07      LDX $0726                 
CODE_29C1A1:        B5 43         LDA $43,x                 
CODE_29C1A3:        9F 75 39 7E   STA $7E3975,x             
CODE_29C1A7:        B5 45         LDA $45,x                 
CODE_29C1A9:        9F 77 39 7E   STA $7E3977,x             
CODE_29C1AD:        B5 47         LDA $47,x                 
CODE_29C1AF:        9F 79 39 7E   STA $7E3979,x             
CODE_29C1B3:        B5 52         LDA $52,x                 
CODE_29C1B5:        9F 7B 39 7E   STA $7E397B,x             
CODE_29C1B9:        A9 0F         LDA #$0F                  
CODE_29C1BB:        8D 0A 07      STA $070A                 
CODE_29C1BE:        A4 0F         LDY $0F                   
CODE_29C1C0:        B1 04         LDA ($04),y               
CODE_29C1C2:        8D 42 10      STA $1042                 
CODE_29C1C5:        B1 06         LDA ($06),y               
CODE_29C1C7:        8D 43 10      STA $1043                 
CODE_29C1CA:        C8            INY                       
CODE_29C1CB:        B1 04         LDA ($04),y               
CODE_29C1CD:        8D 34 10      STA $1034                 
CODE_29C1D0:        B1 06         LDA ($06),y               
CODE_29C1D2:        0A            ASL A                     
CODE_29C1D3:        18            CLC                       
CODE_29C1D4:        71 06         ADC ($06),y               
CODE_29C1D6:        A8            TAY                       
CODE_29C1D7:        B9 3A 96      LDA.w DATA_21963A,y               
CODE_29C1DA:        85 2B         STA $2B                   
CODE_29C1DC:        B9 3B 96      LDA.w DATA_21963A+1,y               
CODE_29C1DF:        85 2C         STA $2C                   
CODE_29C1E1:        B9 3C 96      LDA.w DATA_21963A+2,y               
CODE_29C1E4:        85 2D         STA $2D                   
CODE_29C1E6:        A9 03         LDA #$03                  
CODE_29C1E8:        8D 28 07      STA $0728                 
CODE_29C1EB:        60            RTS                       

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

CODE_29C280:        AD 11 07      LDA $0711                 
CODE_29C283:        F0 03         BEQ CODE_29C288           
CODE_29C285:        CE 11 07      DEC $0711                 
CODE_29C288:        AD 08 1A      LDA $1A08                 
CODE_29C28B:        F0 03         BEQ CODE_29C290           
CODE_29C28D:        CE 08 1A      DEC $1A08                 
CODE_29C290:        AD 09 1A      LDA $1A09                 
CODE_29C293:        F0 09         BEQ CODE_29C29E           
CODE_29C295:        A5 15         LDA $15                   
CODE_29C297:        29 03         AND #$03                  
CODE_29C299:        D0 03         BNE CODE_29C29E           
CODE_29C29B:        CE 09 1A      DEC $1A09                 
CODE_29C29E:        22 A9 E0 22   JSL CODE_22E0A9           
CODE_29C2A2:        20 AC C2      JSR CODE_29C2AC           
CODE_29C2A5:        20 3C C5      JSR CODE_29C53C           
CODE_29C2A8:        20 D3 C6      JSR CODE_29C6D3           
CODE_29C2AB:        6B            RTL                       

CODE_29C2AC:        AD 28 07      LDA $0728                 
CODE_29C2AF:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29C2B3:        dw CODE_29C2BD
                    dw CODE_29C43A
                    dw CODE_29C4BA
                    dw CODE_29C312
                    dw CODE_29C350

CODE_29C2BD:        A9 50         LDA #$50
CODE_29C2BF:        8D 0B 07      STA $070B
CODE_29C2C2:        A9 64         LDA #$64
CODE_29C2C4:        8D 0C 07      STA $070C
CODE_29C2C7:        A9 80         LDA #$80
CODE_29C2C9:        8D 11 07      STA $0711
CODE_29C2CC:        A9 00         LDA #$00                  
CODE_29C2CE:        8D D4 02      STA $02D4                 
CODE_29C2D1:        85 70         STA $70                   
CODE_29C2D3:        A0 14         LDY #$14                  
CODE_29C2D5:        99 FF 19      STA $19FF,y               
CODE_29C2D8:        88            DEY                       
CODE_29C2D9:        D0 FA         BNE CODE_29C2D5           
CODE_29C2DB:        A9 FF         LDA #$FF                  
CODE_29C2DD:        85 55         STA $55                   
CODE_29C2DF:        A9 70         LDA #$70                  
CODE_29C2E1:        85 5E         STA $5E                   
CODE_29C2E3:        A9 40         LDA #$40                  
CODE_29C2E5:        85 BD         STA $BD                   
CODE_29C2E7:        8D 0F 1A      STA $1A0F                 
CODE_29C2EA:        AC 26 07      LDY $0726                 
CODE_29C2ED:        B9 47 07      LDA $0747,y               
CODE_29C2F0:        85 BB         STA $BB                   
CODE_29C2F2:        A9 72         LDA #$72                  
CODE_29C2F4:        8D 0C 1A      STA $1A0C                 
CODE_29C2F7:        A9 1E         LDA #$1E                  
CODE_29C2F9:        8D 11 07      STA $0711                 
CODE_29C2FC:        A2 00         LDX #$00                  
CODE_29C2FE:        A9 F0         LDA #$F0                  
CODE_29C300:        95 8C         STA $8C,x                 
CODE_29C302:        74 4F         STZ $4F,x                 
CODE_29C304:        74 5F         STZ $5F,x                 
CODE_29C306:        9C 69 06      STZ $0669                 
CODE_29C309:        A9 17         LDA #$17                  
CODE_29C30B:        9D 18 05      STA $0518,x               
CODE_29C30E:        EE 28 07      INC $0728                 
CODE_29C311:        60            RTS                       

CODE_29C312:        AD 11 07      LDA $0711                 
CODE_29C315:        F0 06         BEQ CODE_29C31D           
CODE_29C317:        4A            LSR A                     
CODE_29C318:        D0 35         BNE CODE_29C34F           
CODE_29C31A:        4C CE D2      JMP CODE_29D2CE           

CODE_29C31D:        A5 15         LDA $15                   
CODE_29C31F:        29 03         AND #$03                  
CODE_29C321:        D0 2C         BNE CODE_29C34F           
CODE_29C323:        C6 16         DEC $16                   
CODE_29C325:        D0 28         BNE CODE_29C34F           
CODE_29C327:        20 F8 CC      JSR CODE_29CCF8           
CODE_29C32A:        A9 01         LDA #$01                  
CODE_29C32C:        8D 00 15      STA $1500                 
CODE_29C32F:        A9 18         LDA #$18                  
CODE_29C331:        8D 16 02      STA $0216                 
CODE_29C334:        9C 18 02      STZ $0218                 
CODE_29C337:        AD 08 02      LDA $0208                 
CODE_29C33A:        29 FB         AND #$FB                  
CODE_29C33C:        8D 08 02      STA $0208                 
CODE_29C33F:        A9 61         LDA #$61                  
CODE_29C341:        8D 04 02      STA $0204                 
CODE_29C344:        A9 01         LDA #$01                  
CODE_29C346:        8D 42 05      STA $0542                 
CODE_29C349:        20 18 C4      JSR CODE_29C418           
CODE_29C34C:        EE 28 07      INC $0728                 
CODE_29C34F:        60            RTS                       

CODE_29C350:        AD 27 07      LDA $0727                 
CODE_29C353:        C9 06         CMP #$06                  
CODE_29C355:        F0 14         BEQ CODE_29C36B           
CODE_29C357:        A0 18         LDY #$18                  
CODE_29C359:        B9 CC F0      LDA.w DATA_21F0CC,y               
CODE_29C35C:        99 AF 08      STA $08AF,y               
CODE_29C35F:        98            TYA                       
CODE_29C360:        4A            LSR A                     
CODE_29C361:        4A            LSR A                     
CODE_29C362:        AA            TAX                       
CODE_29C363:        A9 02         LDA #$02                  
CODE_29C365:        9D 4C 0A      STA $0A4C,x               
CODE_29C368:        88            DEY                       
CODE_29C369:        D0 EE         BNE CODE_29C359           
CODE_29C36B:        A5 16         LDA $16                   
CODE_29C36D:        C9 0F         CMP #$0F                  
CODE_29C36F:        F0 24         BEQ CODE_29C395           
CODE_29C371:        A5 15         LDA $15                   
CODE_29C373:        29 03         AND #$03                  
CODE_29C375:        F0 03         BEQ CODE_29C37A           
CODE_29C377:        4C FA C3      JMP CODE_29C3FA           

CODE_29C37A:        E6 16         INC $16                   
CODE_29C37C:        A5 16         LDA $16                   
CODE_29C37E:        C9 0F         CMP #$0F                  
CODE_29C380:        D0 78         BNE CODE_29C3FA           
CODE_29C382:        A0 18         LDY #$18                  ; Princess letter music
CODE_29C384:        AD 27 07      LDA $0727                 
CODE_29C387:        C9 06         CMP #$06                  
CODE_29C389:        D0 07         BNE CODE_29C392           
CODE_29C38B:        A9 78         LDA #$78                  
CODE_29C38D:        8D 11 07      STA $0711                 
CODE_29C390:        A0 17         LDY #$17                  ; Bowser letter music
CODE_29C392:        8C 02 12      STY $1202                 
CODE_29C395:        AD 11 07      LDA $0711                 
CODE_29C398:        F0 0B         BEQ CODE_29C3A5           
CODE_29C39A:        4A            LSR A                     
CODE_29C39B:        D0 05         BNE CODE_29C3A2           
CODE_29C39D:        A9 80         LDA #$80                  
CODE_29C39F:        8D 02 12      STA $1202                 
CODE_29C3A2:        20 00 C4      JSR CODE_29C400           
CODE_29C3A5:        AC 26 07      LDY $0726                 
CODE_29C3A8:        B9 F8 00      LDA $00F8,y               
CODE_29C3AB:        05 18         ORA $18                   
CODE_29C3AD:        29 80         AND #$80                  
CODE_29C3AF:        F0 09         BEQ CODE_29C3BA           
CODE_29C3B1:        E6 14         INC $14                   
CODE_29C3B3:        A9 00         LDA #$00                  
CODE_29C3B5:        8D 28 07      STA $0728                 
CODE_29C3B8:        85 A2         STA $A2                   
CODE_29C3BA:        A0 02         LDY #$02                  
CODE_29C3BC:        A5 16         LDA $16                   
CODE_29C3BE:        C9 0F         CMP #$0F                  
CODE_29C3C0:        D0 1C         BNE CODE_29C3DE           
CODE_29C3C2:        A5 A2         LDA $A2                   
CODE_29C3C4:        30 18         BMI CODE_29C3DE           
CODE_29C3C6:        88            DEY                       
CODE_29C3C7:        A5 15         LDA $15                   
CODE_29C3C9:        29 38         AND #$38                  
CODE_29C3CB:        D0 04         BNE CODE_29C3D1           
CODE_29C3CD:        84 A2         STY $A2                   
CODE_29C3CF:        80 0D         BRA CODE_29C3DE           

CODE_29C3D1:        4A            LSR A                     
CODE_29C3D2:        4A            LSR A                     
CODE_29C3D3:        29 02         AND #$02                  
CODE_29C3D5:        A8            TAY                       
CODE_29C3D6:        A5 A2         LDA $A2                   
CODE_29C3D8:        F0 04         BEQ CODE_29C3DE           
CODE_29C3DA:        C6 A2         DEC $A2                   
CODE_29C3DC:        C6 A2         DEC $A2                   
CODE_29C3DE:        B9 CA F0      LDA.w DATA_21F0CA,y               
CODE_29C3E1:        8D B2 08      STA $08B2                 
CODE_29C3E4:        A5 15         LDA $15                   
CODE_29C3E6:        29 18         AND #$18                  
CODE_29C3E8:        F0 10         BEQ CODE_29C3FA           
CODE_29C3EA:        A4 68         LDY $68                   
CODE_29C3EC:        B9 AF F0      LDA.w DATA_21F0AF,y               
CODE_29C3EF:        8D C6 08      STA $08C6                 
CODE_29C3F2:        B9 BC F0      LDA.w DATA_21F0BC,y               
CODE_29C3F5:        8D C7 08      STA $08C7                 
CODE_29C3F8:        80 05         BRA CODE_29C3FF           

CODE_29C3FA:        A9 F0         LDA #$F0                  
CODE_29C3FC:        8D C5 08      STA $08C5                 
CODE_29C3FF:        60            RTS                       

CODE_29C400:        AD 11 07      LDA $0711                 
CODE_29C403:        29 02         AND #$02                  
CODE_29C405:        A8            TAY                       
CODE_29C406:        B9 E5 F0      LDA.w DATA_21F0E5,y               
CODE_29C409:        8D 00 13      STA $1300                 
CODE_29C40C:        B9 E6 F0      LDA.w DATA_21F0E5+1,y               
CODE_29C40F:        8D 01 13      STA $1301                 
CODE_29C412:        A9 01         LDA #$01                  
CODE_29C414:        8D 00 15      STA $1500                 
CODE_29C417:        60            RTS                       

CODE_29C418:        AC 27 07      LDY $0727                 
CODE_29C41B:        B9 A9 F0      LDA.w DATA_21F0A9,y               
CODE_29C41E:        85 68         STA $68                   
CODE_29C420:        F0 17         BEQ CODE_29C439           
CODE_29C422:        AC 26 07      LDY $0726                 
CODE_29C425:        F0 02         BEQ CODE_29C429           
CODE_29C427:        A0 23         LDY #$23                  
CODE_29C429:        A2 1B         LDX #$1B                  
CODE_29C42B:        B9 80 1D      LDA $1D80,y               
CODE_29C42E:        F0 04         BEQ CODE_29C434           
CODE_29C430:        C8            INY                       
CODE_29C431:        CA            DEX                       
CODE_29C432:        D0 F7         BNE CODE_29C42B           
CODE_29C434:        A5 68         LDA $68                   
CODE_29C436:        99 80 1D      STA $1D80,y               
CODE_29C439:        60            RTS                       

CODE_29C43A:        AD 11 07      LDA $0711                 
CODE_29C43D:        D0 7A         BNE CODE_29C4B9           
CODE_29C43F:        AE 00 16      LDX $1600                 
CODE_29C442:        AD 0B 07      LDA $070B                 
CODE_29C445:        9D 02 16      STA $1602,x               
CODE_29C448:        AD 0C 07      LDA $070C                 
CODE_29C44B:        9D 03 16      STA $1603,x               
CODE_29C44E:        18            CLC                       
CODE_29C44F:        69 20         ADC #$20                  
CODE_29C451:        8D 0C 07      STA $070C                 
CODE_29C454:        90 03         BCC CODE_29C459           
CODE_29C456:        EE 0B 07      INC $070B                 
CODE_29C459:        A9 00         LDA #$00                  
CODE_29C45B:        9D 04 16      STA $1604,x               
CODE_29C45E:        A9 2F         LDA #$2F                  
CODE_29C460:        9D 05 16      STA $1605,x               
CODE_29C463:        1A            INC A                     
CODE_29C464:        4A            LSR A                     
CODE_29C465:        85 00         STA $00                   
CODE_29C467:        AC D4 02      LDY $02D4                 
CODE_29C46A:        B9 7D F1      LDA.w DATA_21F17D,y               
CODE_29C46D:        A8            TAY                       
CODE_29C46E:        C2 20         REP #$20                  
CODE_29C470:        B9 ED F0      LDA.w DATA_21F0ED,y               
CODE_29C473:        9D 06 16      STA $1606,x               
CODE_29C476:        E2 20         SEP #$20                  
CODE_29C478:        C8            INY                       
CODE_29C479:        C8            INY                       
CODE_29C47A:        E8            INX                       
CODE_29C47B:        E8            INX                       
CODE_29C47C:        C6 00         DEC $00                   
CODE_29C47E:        D0 EE         BNE CODE_29C46E           
CODE_29C480:        A9 FF         LDA #$FF                  
CODE_29C482:        9D 06 16      STA $1606,x               
CODE_29C485:        E8            INX                       
CODE_29C486:        E8            INX                       
CODE_29C487:        E8            INX                       
CODE_29C488:        E8            INX                       
CODE_29C489:        8E 00 16      STX $1600                 
CODE_29C48C:        EE D4 02      INC $02D4                 
CODE_29C48F:        AD D4 02      LDA $02D4                 
CODE_29C492:        C9 08         CMP #$08                  
CODE_29C494:        90 23         BCC CODE_29C4B9           
CODE_29C496:        C2 20         REP #$20                  
CODE_29C498:        A5 BB         LDA $BB                   ;\
CODE_29C49A:        29 FF 00      AND #$00FF                ; |
CODE_29C49D:        0A            ASL A                     ; |
CODE_29C49E:        A8            TAY                       ; |
CODE_29C49F:        B9 95 F3      LDA.w DATA_21F395,y               ; | 21F395
CODE_29C4A2:        8D D4 02      STA $02D4                 ;/ 16-bit indices to King has been restored texts, depending on the player's powerup
CODE_29C4A5:        E2 20         SEP #$20                  
CODE_29C4A7:        A9 50         LDA #$50                  
CODE_29C4A9:        8D 0B 07      STA $070B                 
CODE_29C4AC:        A9 85         LDA #$85                  
CODE_29C4AE:        8D 0C 07      STA $070C                 
CODE_29C4B1:        A9 10         LDA #$10                  
CODE_29C4B3:        8D 11 07      STA $0711                 
CODE_29C4B6:        EE 28 07      INC $0728                 
CODE_29C4B9:        60            RTS                       

CODE_29C4BA:        AD 11 07      LDA $0711                 
CODE_29C4BD:        F0 01         BEQ CODE_29C4C0           
CODE_29C4BF:        60            RTS                       

CODE_29C4C0:        C2 10         REP #$10                  
CODE_29C4C2:        AE D4 02      LDX $02D4                 
CODE_29C4C5:        BD 85 F1      LDA.w DATA_21F185,x               ;The king has been restored text
CODE_29C4C8:        85 00         STA $00                   
CODE_29C4CA:        E2 10         SEP #$10                  
CODE_29C4CC:        AC 00 16      LDY $1600                 
CODE_29C4CF:        99 06 16      STA $1606,y               
CODE_29C4D2:        A9 21         LDA #$21                  
CODE_29C4D4:        99 07 16      STA $1607,y               
CODE_29C4D7:        AD 0B 07      LDA $070B                 
CODE_29C4DA:        99 02 16      STA $1602,y               
CODE_29C4DD:        A9 01         LDA #$01                  
CODE_29C4DF:        99 05 16      STA $1605,y               
CODE_29C4E2:        A9 00         LDA #$00                  
CODE_29C4E4:        99 04 16      STA $1604,y               
CODE_29C4E7:        A9 FF         LDA #$FF                  
CODE_29C4E9:        99 08 16      STA $1608,y               
CODE_29C4EC:        98            TYA                       
CODE_29C4ED:        18            CLC                       
CODE_29C4EE:        69 06         ADC #$06                  
CODE_29C4F0:        8D 00 16      STA $1600                 
CODE_29C4F3:        AD 0C 07      LDA $070C                 
CODE_29C4F6:        99 03 16      STA $1603,y               
CODE_29C4F9:        C2 20         REP #$20                  
CODE_29C4FB:        EE D4 02      INC $02D4                 
CODE_29C4FE:        E2 20         SEP #$20                  
CODE_29C500:        EE 0C 07      INC $070C                 
CODE_29C503:        AD 0C 07      LDA $070C                 
CODE_29C506:        29 1F         AND #$1F                  
CODE_29C508:        C9 1B         CMP #$1B                  
CODE_29C50A:        D0 22         BNE CODE_29C52E           
CODE_29C50C:        AD 0C 07      LDA $070C                 
CODE_29C50F:        69 09         ADC #$09                  
CODE_29C511:        8D 0C 07      STA $070C                 
CODE_29C514:        90 03         BCC CODE_29C519           
CODE_29C516:        EE 0B 07      INC $070B                 
CODE_29C519:        C9 45         CMP #$45                  
CODE_29C51B:        D0 11         BNE CODE_29C52E           
CODE_29C51D:        9C D4 02      STZ $02D4                 
CODE_29C520:        9C D5 02      STZ $02D5                 
CODE_29C523:        85 68         STA $68                   
CODE_29C525:        A9 FF         LDA #$FF                  
CODE_29C527:        8D 11 07      STA $0711                 
CODE_29C52A:        EE 28 07      INC $0728                 
CODE_29C52D:        60            RTS                       

CODE_29C52E:        A0 04         LDY #$04                  
CODE_29C530:        A5 00         LDA $00                   
CODE_29C532:        C9 FE         CMP #$FE                  
CODE_29C534:        D0 02         BNE CODE_29C538           
CODE_29C536:        A0 01         LDY #$01                  
CODE_29C538:        8C 11 07      STY $0711                 
CODE_29C53B:        60            RTS                       

CODE_29C53C:        AD 16 02      LDA $0216                 
CODE_29C53F:        30 01         BMI CODE_29C542           
CODE_29C541:        60            RTS                       

CODE_29C542:        A2 1C         LDX #$1C                  
CODE_29C544:        BD 42 F4      LDA.w DATA_21F442,x               
CODE_29C547:        9D 7F 08      STA $087F,x               
CODE_29C54A:        8A            TXA                       
CODE_29C54B:        4A            LSR A                     
CODE_29C54C:        4A            LSR A                     
CODE_29C54D:        A8            TAY                       
CODE_29C54E:        A9 02         LDA #$02                  
CODE_29C550:        99 40 0A      STA $0A40,y               
CODE_29C553:        CA            DEX                       
CODE_29C554:        D0 EE         BNE CODE_29C544           
CODE_29C556:        AE 27 07      LDX $0727                 
CODE_29C559:        BC B8 F3      LDY.w DATA_21F3B8,x               
CODE_29C55C:        AD 28 07      LDA $0728                 
CODE_29C55F:        C9 02         CMP #$02                  
CODE_29C561:        D0 07         BNE CODE_29C56A           
CODE_29C563:        A5 15         LDA $15                   
CODE_29C565:        29 10         AND #$10                  
CODE_29C567:        F0 01         BEQ CODE_29C56A           
CODE_29C569:        C8            INY                       
CODE_29C56A:        A2 0C         LDX #$0C                  
CODE_29C56C:        B9 BF F3      LDA.w DATA_21F3BF,y               
CODE_29C56F:        9D 86 08      STA $0886,x               
CODE_29C572:        B9 F7 F3      LDA.w DATA_21F3F7,y               
CODE_29C575:        9D 87 08      STA $0887,x               
CODE_29C578:        C8            INY                       
CODE_29C579:        C8            INY                       
CODE_29C57A:        CA            DEX                       
CODE_29C57B:        CA            DEX                       
CODE_29C57C:        CA            DEX                       
CODE_29C57D:        CA            DEX                       
CODE_29C57E:        10 EC         BPL CODE_29C56C           
CODE_29C580:        AC 01 1A      LDY $1A01                 
CODE_29C583:        C0 02         CPY #$02                  
CODE_29C585:        90 07         BCC CODE_29C58E           
CODE_29C587:        A9 E0         LDA #$E0                  
CODE_29C589:        8D 82 08      STA $0882                 
CODE_29C58C:        80 64         BRA CODE_29C5F2           

CODE_29C58E:        A5 15         LDA $15                   
CODE_29C590:        39 3F F4      AND.w DATA_21F43F,y               
CODE_29C593:        D0 0C         BNE CODE_29C5A1           
CODE_29C595:        AD 02 1A      LDA $1A02                 
CODE_29C598:        18            CLC                       
CODE_29C599:        79 41 F4      ADC.w DATA_21F442-1,y               
CODE_29C59C:        29 07         AND #$07                  
CODE_29C59E:        8D 02 1A      STA $1A02                 
CODE_29C5A1:        20 9A C6      JSR CODE_29C69A           
CODE_29C5A4:        AD 0D 1A      LDA $1A0D                 
CODE_29C5A7:        AC 01 1A      LDY $1A01                 
CODE_29C5AA:        D0 15         BNE CODE_29C5C1           
CODE_29C5AC:        C9 90         CMP #$90                  
CODE_29C5AE:        90 22         BCC CODE_29C5D2           
CODE_29C5B0:        A9 38         LDA #$38                  
CODE_29C5B2:        8D 00 12      STA $1200                 
CODE_29C5B5:        A9 10         LDA #$10                  
CODE_29C5B7:        8D 0E 1A      STA $1A0E                 
CODE_29C5BA:        A9 B0         LDA #$B0                  
CODE_29C5BC:        8D 0F 1A      STA $1A0F                 
CODE_29C5BF:        80 0E         BRA CODE_29C5CF           

CODE_29C5C1:        C9 68         CMP #$68                  
CODE_29C5C3:        90 0D         BCC CODE_29C5D2           
CODE_29C5C5:        AD 0F 1A      LDA $1A0F                 
CODE_29C5C8:        30 08         BMI CODE_29C5D2           
CODE_29C5CA:        A9 13         LDA #$13                  
CODE_29C5CC:        8D 02 12      STA $1202                 
CODE_29C5CF:        EE 01 1A      INC $1A01                 
CODE_29C5D2:        AD 0D 1A      LDA $1A0D                 
CODE_29C5D5:        8D 41 08      STA $0841                 
CODE_29C5D8:        AC 02 1A      LDY $1A02                 
CODE_29C5DB:        B9 2F F4      LDA.w DATA_21F42F,y               
CODE_29C5DE:        8D 42 08      STA $0842                 
CODE_29C5E1:        B9 37 F4      LDA.w DATA_21F437,y               
CODE_29C5E4:        8D 43 08      STA $0843                 
CODE_29C5E7:        AD 0C 1A      LDA $1A0C                 
CODE_29C5EA:        8D 40 08      STA $0840                 
CODE_29C5ED:        A9 02         LDA #$02                  
CODE_29C5EF:        8D 30 0A      STA $0A30                 
CODE_29C5F2:        AD 69 06      LDA $0669                 
CODE_29C5F5:        C9 04         CMP #$04                  
CODE_29C5F7:        F0 4F         BEQ CODE_29C648           
CODE_29C5F9:        A2 00         LDX #$00                  
CODE_29C5FB:        29 01         AND #$01                  
CODE_29C5FD:        D0 15         BNE CODE_29C614           
CODE_29C5FF:        AD 18 05      LDA $0518                 
CODE_29C602:        F0 07         BEQ CODE_29C60B           
CODE_29C604:        CE 18 05      DEC $0518                 
CODE_29C607:        A2 00         LDX #$00                  
CODE_29C609:        80 6C         BRA CODE_29C677           

CODE_29C60B:        EE 69 06      INC $0669                 
CODE_29C60E:        A9 F0         LDA #$F0                  
CODE_29C610:        95 8C         STA $8C,x                 
CODE_29C612:        74 5F         STZ $5F,x                 
CODE_29C614:        86 9B         STX $9B                   
CODE_29C616:        B5 8C         LDA $8C,x                 
CODE_29C618:        18            CLC                       
CODE_29C619:        69 01         ADC #$01                  
CODE_29C61B:        95 8C         STA $8C,x                 
CODE_29C61D:        22 EF A7 27   JSL CODE_27A7EF           
CODE_29C621:        B5 5F         LDA $5F,x                 
CODE_29C623:        F0 04         BEQ CODE_29C629           
CODE_29C625:        A2 06         LDX #$06                  
CODE_29C627:        80 4E         BRA CODE_29C677           

CODE_29C629:        AD 69 06      LDA $0669                 
CODE_29C62C:        C9 03         CMP #$03                  
CODE_29C62E:        F0 0C         BEQ CODE_29C63C           
CODE_29C630:        EE 69 06      INC $0669                 
CODE_29C633:        A2 00         LDX #$00                  
CODE_29C635:        A9 07         LDA #$07                  
CODE_29C637:        8D 18 05      STA $0518                 
CODE_29C63A:        80 3B         BRA CODE_29C677           

CODE_29C63C:        A6 9B         LDX $9B                   
CODE_29C63E:        74 8C         STZ $8C,x                 
CODE_29C640:        74 4F         STZ $4F,x                 
CODE_29C642:        9C 03 1A      STZ $1A03                 
CODE_29C645:        9C 08 1A      STZ $1A08                 
CODE_29C648:        AC 03 1A      LDY $1A03                 
CODE_29C64B:        AD 08 1A      LDA $1A08                 
CODE_29C64E:        D0 24         BNE CODE_29C674           
CODE_29C650:        88            DEY                       
CODE_29C651:        10 18         BPL CODE_29C66B           
CODE_29C653:        AD 69 06      LDA $0669                 
CODE_29C656:        C9 04         CMP #$04                  
CODE_29C658:        D0 0C         BNE CODE_29C666           
CODE_29C65A:        9C 69 06      STZ $0669                 
CODE_29C65D:        A2 00         LDX #$00                  
CODE_29C65F:        A9 17         LDA #$17                  
CODE_29C661:        8D 18 05      STA $0518                 
CODE_29C664:        80 11         BRA CODE_29C677           

CODE_29C666:        EE 69 06      INC $0669                 
CODE_29C669:        A0 07         LDY #$07                  
CODE_29C66B:        8C 03 1A      STY $1A03                 
CODE_29C66E:        B9 6F F4      LDA.w DATA_21F46F,y               
CODE_29C671:        8D 08 1A      STA $1A08                 
CODE_29C674:        BE 67 F4      LDX.w DATA_21F467,y               
CODE_29C677:        A0 04         LDY #$04                  
CODE_29C679:        BD 5F F4      LDA.w DATA_21F45F,x               
CODE_29C67C:        99 96 08      STA $0896,y               
CODE_29C67F:        E8            INX                       
CODE_29C680:        88            DEY                       
CODE_29C681:        88            DEY                       
CODE_29C682:        88            DEY                       
CODE_29C683:        88            DEY                       
CODE_29C684:        10 F3         BPL CODE_29C679           
CODE_29C686:        A2 00         LDX #$00                  
CODE_29C688:        A0 04         LDY #$04                  
CODE_29C68A:        B9 95 08      LDA $0895,y               
CODE_29C68D:        18            CLC                       
CODE_29C68E:        75 5F         ADC $5F,x                 
CODE_29C690:        99 95 08      STA $0895,y               
CODE_29C693:        88            DEY                       
CODE_29C694:        88            DEY                       
CODE_29C695:        88            DEY                       
CODE_29C696:        88            DEY                       
CODE_29C697:        10 F1         BPL CODE_29C68A           
CODE_29C699:        60            RTS                       

CODE_29C69A:        A2 01         LDX #$01                  
CODE_29C69C:        20 AF C6      JSR CODE_29C6AF           
CODE_29C69F:        AD 0F 1A      LDA $1A0F                 
CODE_29C6A2:        30 04         BMI CODE_29C6A8           
CODE_29C6A4:        C9 40         CMP #$40                  
CODE_29C6A6:        B0 06         BCS CODE_29C6AE                   
CODE_29C6A8:        EE 0F 1A      INC $1A0F                 
CODE_29C6AB:        EE 0F 1A      INC $1A0F                 
CODE_29C6AE:        CA            DEX                       
CODE_29C6AF:        BD 0E 1A      LDA $1A0E,x               
CODE_29C6B2:        0A            ASL A                     
CODE_29C6B3:        0A            ASL A                     
CODE_29C6B4:        0A            ASL A                     
CODE_29C6B5:        0A            ASL A                     
CODE_29C6B6:        18            CLC                       
CODE_29C6B7:        7D 10 1A      ADC $1A10,x               
CODE_29C6BA:        9D 10 1A      STA $1A10,x               
CODE_29C6BD:        08            PHP                       
CODE_29C6BE:        BD 0E 1A      LDA $1A0E,x               
CODE_29C6C1:        4A            LSR A                     
CODE_29C6C2:        4A            LSR A                     
CODE_29C6C3:        4A            LSR A                     
CODE_29C6C4:        4A            LSR A                     
CODE_29C6C5:        C9 08         CMP #$08                  
CODE_29C6C7:        90 02         BCC CODE_29C6CB           
CODE_29C6C9:        09 F0         ORA #$F0                  
CODE_29C6CB:        28            PLP                       
CODE_29C6CC:        7D 0C 1A      ADC $1A0C,x               
CODE_29C6CF:        9D 0C 1A      STA $1A0C,x               
CODE_29C6D2:        60            RTS                       

CODE_29C6D3:        A4 BB         LDY $BB                   
CODE_29C6D5:        A5 70         LDA $70                   
CODE_29C6D7:        C9 80         CMP #$80                  
CODE_29C6D9:        90 04         BCC CODE_29C6DF           
CODE_29C6DB:        A6 55         LDX $55                   
CODE_29C6DD:        F0 11         BEQ CODE_29C6F0           
CODE_29C6DF:        18            CLC                       
CODE_29C6E0:        69 04         ADC #$04                  
CODE_29C6E2:        85 70         STA $70                   
CODE_29C6E4:        90 02         BCC CODE_29C6E8           
CODE_29C6E6:        E6 55         INC $55                   
CODE_29C6E8:        EE 11 07      INC $0711                 
CODE_29C6EB:        B9 77 F4      LDA.w DATA_21F477,y               
CODE_29C6EE:        80 03         BRA CODE_29C6F3           

CODE_29C6F0:        B9 7E F4      LDA.w DATA_21F47E,y               
CODE_29C6F3:        85 BC         STA $BC                   
CODE_29C6F5:        22 37 E2 20   JSL CODE_20E237           
CODE_29C6F9:        60            RTS                       

CODE_29C6FA:        AE 27 07      LDX $0727                 
CODE_29C6FD:        BC 35 F8      LDY.w DATA_21F835,x               
CODE_29C700:        A2 06         LDX #$06                  
CODE_29C702:        A9 80         LDA #$80                  
CODE_29C704:        8D 15 21      STA $2115                 
CODE_29C707:        BD 43 F8      LDA.w DATA_21F843,x               
CODE_29C70A:        8D 16 21      STA $2116                 
CODE_29C70D:        BD 3C F8      LDA.w DATA_21F83C,x               
CODE_29C710:        8D 17 21      STA $2117                 
CODE_29C713:        C8            INY                       
CODE_29C714:        B9 84 F7      LDA.w DATA_21F785-1,y               
CODE_29C717:        F0 0E         BEQ CODE_29C727           
CODE_29C719:        C9 FF         CMP #$FF                  
CODE_29C71B:        F0 0D         BEQ CODE_29C72A           
CODE_29C71D:        8D 18 21      STA $2118                 
CODE_29C720:        A9 14         LDA #$14                  
CODE_29C722:        8D 19 21      STA $2119                 
CODE_29C725:        80 EC         BRA CODE_29C713           

;Routine which handles letters after the world is beaten
CODE_29C727:        CA            DEX                       
CODE_29C728:        10 DD         BPL CODE_29C707           
CODE_29C72A:        AD 27 07      LDA $0727                 ;Current world number
CODE_29C72D:        0A            ASL A                     
CODE_29C72E:        AA            TAX                       
CODE_29C72F:        BD 85 F4      LDA.w PNTR_21F485,x       ;\
CODE_29C732:        85 00         STA $00                   ; |
CODE_29C734:        BD 86 F4      LDA.w PNTR_21F485+1,x     ; | Pointers to main content of the letter
CODE_29C737:        85 01         STA $01                   ;/  (stuff like things about ghosts, kuribo shoe, etc)
CODE_29C739:        A0 00         LDY #$00                  
CODE_29C73B:        A2 05         LDX #$05                  
CODE_29C73D:        BD DB F6      LDA.w DATA_21F6DB,x       ; \
CODE_29C740:        8D 16 21      STA $2116                 ; | set vram address low and high byte
CODE_29C743:        BD E1 F6      LDA.w DATA_21F6E1,x       ; |
CODE_29C746:        8D 17 21      STA $2117                 ; /
CODE_29C749:        B1 00         LDA ($00),y               
CODE_29C74B:        C8            INY                       
CODE_29C74C:        C9 00         CMP #$00                  
CODE_29C74E:        F0 0E         BEQ CODE_29C75E           
CODE_29C750:        C9 FF         CMP #$FF                  
CODE_29C752:        F0 0D         BEQ CODE_29C761           
CODE_29C754:        8D 18 21      STA $2118                 
CODE_29C757:        A9 14         LDA #$14                  
CODE_29C759:        8D 19 21      STA $2119                 
CODE_29C75C:        80 EB         BRA CODE_29C749           

CODE_29C75E:        CA            DEX                       
CODE_29C75F:        10 DC         BPL CODE_29C73D           
CODE_29C761:        AD 27 07      LDA $0727                 
CODE_29C764:        C9 06         CMP #$06                  
CODE_29C766:        D0 2B         BNE CODE_29C793           
CODE_29C768:        C2 20         REP #$20                  
CODE_29C76A:        A2 08         LDX #$08                  
CODE_29C76C:        A0 00         LDY #$00                  
CODE_29C76E:        A9 C6 11      LDA #$11C6                
CODE_29C771:        85 00         STA $00                   
CODE_29C773:        A5 00         LDA $00                   
CODE_29C775:        8D 16 21      STA $2116                 ;
CODE_29C778:        B9 E7 F6      LDA.w DATA_21F6E7,y               ; Layer 2 Bowser VRAM tilemap on world 7 beaten's letter
CODE_29C77B:        30 07         BMI CODE_29C784           
CODE_29C77D:        8D 18 21      STA $2118                 
CODE_29C780:        C8            INY                       
CODE_29C781:        C8            INY                       
CODE_29C782:        80 F4         BRA CODE_29C778           

CODE_29C784:        C8            INY                       
CODE_29C785:        C8            INY                       
CODE_29C786:        A5 00         LDA $00                   
CODE_29C788:        18            CLC                       
CODE_29C789:        69 20 00      ADC #$0020                
CODE_29C78C:        85 00         STA $00                   
CODE_29C78E:        CA            DEX                       
CODE_29C78F:        D0 E2         BNE CODE_29C773           
CODE_29C791:        E2 20         SEP #$20                  
CODE_29C793:        6B            RTL                       

CODE_29C794:        22 2B C8 29   JSL CODE_29C82B           
CODE_29C798:        6B            RTL                       

DATA_29C799:        dw $1000
                    dw $9000
                    dw $9580
                    dw $9B00
                    dw $9160
                    dw $9B00
                    dw $96E0
                    dw $2002
                    dw $9B00
                    dw $92C0
                    dw $9840
                    dw $9000
                    dw $99A0
                    dw $9160
                    dw $9420
                    dw $2000
                    dw $2001
                    dw $2002
                    dw $3000

DATA_29C7BF:        dw $9E00
                    dw $9E80
                    dw $9E00
                    dw $9F00
                    dw $9F00
                    dw $9F80
                    dw $A000
                    dw $A080
                    dw $9E00
                    dw $9D80

DATA_29C7D3:        dw $8960
                    dw $8980
                    dw $89A0
                    dw $89C0
                    dw $89E0
                    dw $8A00
                    dw $8960
                    dw $0000

DATA_29C7E3:        dw $88A0
                    dw $88A0
                    dw $8920
                    dw $88A0
                    dw $88E0
                    dw $88C0
                    dw $8900
                    dw $88E0
                    dw $88E0
                    dw $8940
                    dw $88E0
                    dw $88E0
                    dw $88C0
                    dw $8900

DATA_29C7FF:        dw $9C80
                    dw $9C90
                    dw $9CA0
                    dw $9CB0
                    dw $9CC0
                    dw $9CD0
                    dw $9CE0
                    dw $9CF0
                    dw $9D00
                    dw $9D10
                    dw $9D20
                    dw $9D30
                    dw $9D40
                    dw $9D50
                    dw $9D60

DATA_29C81D:        dw $0700

DATA_29C81F:        dw $0040
                    dw $0040
                    dw $0020

DATA_29C825:        dw $8BC0
                    dw $8B60
                    dw $8BC0

CODE_29C82B:        A9 20         LDA #$20                  
CODE_29C82D:        8D 05 02      STA $0205                 
CODE_29C830:        0A            ASL A                     
CODE_29C831:        8D 06 02      STA $0206                 
CODE_29C834:        0A            ASL A                     
CODE_29C835:        8D 07 02      STA $0207                 
CODE_29C838:        C2 30         REP #$30                  
CODE_29C83A:        8B            PHB                       ;
CODE_29C83B:        A2 00 A1      LDX #$A100                
CODE_29C83E:        A0 00 13      LDY #$1300                
CODE_29C841:        A9 1F 00      LDA #$001F                
CODE_29C844:        54 00 3C      MVN $3C00                 
CODE_29C847:        AB            PLB                       ;
CODE_29C848:        8B            PHB                       ;
CODE_29C849:        A2 00 88      LDX #$8800                
CODE_29C84C:        A0 00 14      LDY #$1400                
CODE_29C84F:        A9 9F 00      LDA #$009F                
CODE_29C852:        54 00 3C      MVN $3C00                 
CODE_29C855:        AB            PLB                       ;
CODE_29C856:        AD 0A 07      LDA $070A                 
CODE_29C859:        29 FF 00      AND #$00FF                
CODE_29C85C:        0A            ASL A                     
CODE_29C85D:        AA            TAX                       
CODE_29C85E:        BF 99 C7 29   LDA.l DATA_29C799,x             
CODE_29C862:        29 00 F0      AND #$F000                
CODE_29C865:        F0 36         BEQ CODE_29C89D           
CODE_29C867:        C9 00 10      CMP #$1000                
CODE_29C86A:        F0 38         BEQ CODE_29C8A4           
CODE_29C86C:        C9 00 20      CMP #$2000                
CODE_29C86F:        F0 38         BEQ CODE_29C8A9           
CODE_29C871:        C9 00 30      CMP #$3000                
CODE_29C874:        F0 29         BEQ CODE_29C89F           
CODE_29C876:        E0 04 00      CPX #$0004                
CODE_29C879:        D0 0B         BNE CODE_29C886           
CODE_29C87B:        AD BF 1E      LDA $1EBF                 
CODE_29C87E:        29 FF 00      AND #$00FF                
CODE_29C881:        C9 16 00      CMP #$0016                
CODE_29C884:        F0 14         BEQ CODE_29C89A           
CODE_29C886:        20 A0 CA      JSR CODE_29CAA0           
CODE_29C889:        20 C0 CB      JSR CODE_29CBC0           
CODE_29C88C:        AD 3C 07      LDA $073C                 
CODE_29C88F:        29 07 00      AND #$0007                
CODE_29C892:        0A            ASL A                     
CODE_29C893:        AA            TAX                       
CODE_29C894:        BF 60 9C 3C   LDA.l DATA_3C9C60,x             
CODE_29C898:        80 74         BRA CODE_29C90E           

CODE_29C89A:        20 7E CB      JSR CODE_29CB7E           
CODE_29C89D:        80 6C         BRA CODE_29C90B           

CODE_29C89F:        20 B6 CC      JSR CODE_29CCB6           
CODE_29C8A2:        80 67         BRA CODE_29C90B           

CODE_29C8A4:        20 14 CC      JSR CODE_29CC14           
CODE_29C8A7:        80 62         BRA CODE_29C90B           

CODE_29C8A9:        DA            PHX                       
CODE_29C8AA:        8B            PHB                       ;
CODE_29C8AB:        A2 20 A1      LDX #$A120                
CODE_29C8AE:        A0 20 13      LDY #$1320                
CODE_29C8B1:        A9 DF 00      LDA #$00DF                
CODE_29C8B4:        54 00 3C      MVN $3C00                 
CODE_29C8B7:        A2 60 8A      LDX #$8A60                
CODE_29C8BA:        A0 C0 14      LDY #$14C0                
CODE_29C8BD:        A9 1F 00      LDA #$001F                
CODE_29C8C0:        54 00 3C      MVN $3C00                 
CODE_29C8C3:        AB            PLB                       ;
CODE_29C8C4:        AD 0A 07      LDA $070A                 
CODE_29C8C7:        29 FF 00      AND #$00FF                
CODE_29C8CA:        C9 0F 00      CMP #$000F                
CODE_29C8CD:        D0 16         BNE CODE_29C8E5           
CODE_29C8CF:        AD 26 07      LDA $0726                 
CODE_29C8D2:        29 01 00      AND #$0001                
CODE_29C8D5:        F0 0E         BEQ CODE_29C8E5           
CODE_29C8D7:        8B            PHB                       ;
CODE_29C8D8:        A2 E0 88      LDX #$88E0                
CODE_29C8DB:        A0 E0 13      LDY #$13E0                
CODE_29C8DE:        A9 1F 00      LDA #$001F                
CODE_29C8E1:        54 00 3C      MVN $3C00                 
CODE_29C8E4:        AB            PLB                       ;
CODE_29C8E5:        FA            PLX                       
CODE_29C8E6:        BF 99 C7 29   LDA.l DATA_29C799,x             
CODE_29C8EA:        29 0F 00      AND #$000F                
CODE_29C8ED:        0A            ASL A                     
CODE_29C8EE:        AA            TAX                       
CODE_29C8EF:        DA            PHX                       
CODE_29C8F0:        8B            PHB                       ;
CODE_29C8F1:        BF 25 C8 29   LDA.l DATA_29C825,x             
CODE_29C8F5:        AA            TAX                       
CODE_29C8F6:        A0 A0 14      LDY #$14A0                
CODE_29C8F9:        A9 1F 00      LDA #$001F                
CODE_29C8FC:        54 00 3C      MVN $3C00                 
CODE_29C8FF:        AB            PLB                       ;
CODE_29C900:        FA            PLX                       
CODE_29C901:        BF 1F C8 29   LDA.l DATA_29C81F,x             
CODE_29C905:        AA            TAX                       
CODE_29C906:        BD 20 13      LDA $1320,x               
CODE_29C909:        80 03         BRA CODE_29C90E           

CODE_29C90B:        AD 80 13      LDA $1380                 
CODE_29C90E:        8D B9 02      STA $02B9                 
CODE_29C911:        8D 00 13      STA $1300                 
CODE_29C914:        29 1F 00      AND #$001F                
CODE_29C917:        09 20 00      ORA #$0020                
CODE_29C91A:        85 D8         STA $D8                   
CODE_29C91C:        AD B9 02      LDA $02B9                 
CODE_29C91F:        4A            LSR A                     
CODE_29C920:        4A            LSR A                     
CODE_29C921:        4A            LSR A                     
CODE_29C922:        4A            LSR A                     
CODE_29C923:        4A            LSR A                     
CODE_29C924:        29 1F 00      AND #$001F                
CODE_29C927:        09 40 00      ORA #$0040                
CODE_29C92A:        85 DA         STA $DA                   
CODE_29C92C:        AD B9 02      LDA $02B9                 
CODE_29C92F:        EB            XBA                       
CODE_29C930:        4A            LSR A                     
CODE_29C931:        4A            LSR A                     
CODE_29C932:        29 1F 00      AND #$001F                
CODE_29C935:        09 80 00      ORA #$0080                
CODE_29C938:        85 DC         STA $DC                   
CODE_29C93A:        E2 30         SEP #$30                  
CODE_29C93C:        9C 00 13      STZ $1300                 
CODE_29C93F:        9C 01 13      STZ $1301                 
CODE_29C942:        A5 D8         LDA $D8                   
CODE_29C944:        8D 05 02      STA $0205                 
CODE_29C947:        A5 DA         LDA $DA                   
CODE_29C949:        8D 06 02      STA $0206                 
CODE_29C94C:        A5 DC         LDA $DC                   
CODE_29C94E:        8D 07 02      STA $0207                 
CODE_29C951:        AD 50 03      LDA $0350                 
CODE_29C954:        C9 03         CMP #$03                  
CODE_29C956:        D0 05         BNE CODE_29C95D           
CODE_29C958:        A9 83         LDA #$83                  
CODE_29C95A:        8D 07 02      STA $0207                 
CODE_29C95D:        A9 01         LDA #$01                  
CODE_29C95F:        8D 00 15      STA $1500                 
CODE_29C962:        6B            RTL                       

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

DATA_29C9EB:        dw $A600
                    dw $A640
                    dw $A680
                    dw $A6C0
                    dw $A700
                    dw $A740
                    dw $A780
                    dw $A7C0
                    dw $A800
                    dw $A840
                    dw $A880
                    dw $A8C0
                    dw $A900
                    dw $A940
                    dw $A700
                    dw $A9C0
                    dw $AA00
                    dw $AA40
                    dw $AA80
                    dw $AAC0
                    dw $AB00
                    dw $AB40
                    dw $AB80
                    dw $ABC0
                    dw $A980

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

DATA_29CA84:        dw $8A40
                    dw $8A60
                    dw $8A80
                    dw $8AA0
                    dw $8AC0
                    dw $8AE0
                    dw $8B00
                    dw $8B20
                    dw $8B40
                    dw $8B60
                    dw $8B80
                    dw $8BA0
                    dw $8BC0
                    dw $8BE0

CODE_29CAA0:        BF 99 C7 29   LDA.l DATA_29C799,x       
CODE_29CAA4:        8B            PHB                       
CODE_29CAA5:        AA            TAX                       
CODE_29CAA6:        A0 60         LDY #$1360                
CODE_29CAA9:        A9 5F 00      LDA #$005F                
CODE_29CAAB:        54 00 3C      MVN $3C00                 
CODE_29CAAE:        AB            PLB                       ;
CODE_29CAB0:        AD BE 02      LDA $02BE
CODE_29CAB3:        29 FF 00      AND #$00FF
CODE_29CAB6:        F0 13         BEQ CODE_29CACB
CODE_29CAB8:        3A            DEC A                     
CODE_29CAB9:        0A            ASL A                     
CODE_29CABA:        AA            TAX                       
CODE_29CABB:        8B            PHB                       ;
CODE_29CABC:        BF FF C7 29   LDA.l DATA_29C7FF,x             
CODE_29CAC0:        AA            TAX                       
CODE_29CAC1:        A0 10 13      LDY #$1310                  
CODE_29CAC4:        A9 0F 00      LDA #$000F
CODE_29CAC7:        54 00 3C      MVN $3C00
CODE_29CACA:        AB            PLB                       ;
CODE_29CACB:        AD 0A 07      LDA $070A
CODE_29CACE:        29 FF 00      AND #$00FF
CODE_29CAD1:        0A            ASL A
CODE_29CAD2:        AA            TAX
CODE_29CAD3:        BF 63 C9 29   LDA.l DATA_29C963,x             
CODE_29CAD7:        85 00         STA $00                   
CODE_29CAD9:        A9 29 00      LDA #$0029                
CODE_29CADC:        85 02         STA $02                  
CODE_29CADE:        AD 3B 07      LDA $073B
CODE_29CAE1:        29 03 00      AND #$0003
CODE_29CAE4:        0A            ASL A                     
CODE_29CAE5:        A8            TAY                       
CODE_29CAE6:        B7 00         LDA [$00],y               
CODE_29CAE8:        8B            PHB                       ;                       
CODE_29CAE9:        AA            TAX                       
CODE_29CAEA:        AD 50 03      LDA $0350                 
CODE_29CAED:        29 FF 00      AND #$00FF                                  
CODE_29CAF0:        C9 0B 00      CMP #$000B
CODE_29CAF3:        D0 03         BNE CODE_29CAF8
CODE_29CAF5:        A2 C0 94      LDX #$94C0
CODE_29CAF8:        A0 C0 13      LDY #$13C0                  
CODE_29CAFB:        A9 3F 00      LDA #$003F
CODE_29CAFE:        54 00 3C      MVN $3C00
CODE_29CB01:        AB            PLB                       ;
CODE_29CB02:        AD C5 02      LDA $02C5
CODE_29CB05:        29 FF 00      AND #$00FF                  
CODE_29CB08:        0A            ASL A
CODE_29CB09:        AA            TAX                       
CODE_29CB0A:        BF EB C9 29   LDA.l DATA_29C9EB,x             
CODE_29CB0E:        8B            PHB                       ;
CODE_29CB0F:        AA            TAX                       
CODE_29CB10:        A0 20 13      LDY #$1320                
CODE_29CB13:        A9 3F 00      LDA #$003F                
CODE_29CB16:        54 00 3C      MVN $3C00                 
CODE_29CB19:        AB            PLB                       ;
CODE_29CB1A:        AD BF 1E      LDA $1EBF                 
CODE_29CB1D:        29 FF 00      AND #$00FF                
CODE_29CB20:        0A            ASL A                     
CODE_29CB21:        AA            TAX                       
CODE_29CB22:        BF 1D CA 29   LDA.l DATA_29CA1D,x             
CODE_29CB26:        29 FF 00      AND #$00FF                
CODE_29CB29:        0A            ASL A                     
CODE_29CB2A:        85 D8         STA $D8                   
CODE_29CB2C:        BF 1E CA 29   LDA.l DATA_29CA1D+1,x             
CODE_29CB30:        29 FF 00      AND #$00FF                
CODE_29CB33:        0A            ASL A                     
CODE_29CB34:        85 DA         STA $DA                   
CODE_29CB36:        AD 26 07      LDA $0726                 
CODE_29CB39:        29 FF 00      AND #$00FF                
CODE_29CB3C:        A8            TAY                       
CODE_29CB3D:        B9 3D 07      LDA $073D,y               
CODE_29CB40:        29 FF 00      AND #$00FF                
CODE_29CB43:        F0 11         BEQ CODE_29CB56           
CODE_29CB45:        AD 27 07      LDA $0727                 
CODE_29CB48:        29 FF 00      AND #$00FF                
CODE_29CB4B:        AA            TAX                       
CODE_29CB4C:        BF 7D CA 29   LDA.l DATA_29CA7D,x             
CODE_29CB50:        29 FF 00      AND #$00FF                
CODE_29CB53:        0A            ASL A                     
CODE_29CB54:        85 DA         STA $DA                   
CODE_29CB56:        A6 D8         LDX $D8                   
CODE_29CB58:        BF 84 CA 29   LDA.l DATA_29CA84,x             
CODE_29CB5C:        AA            TAX                       
CODE_29CB5D:        8B            PHB                       
CODE_29CB5E:        AA            TAX                       
CODE_29CB5F:        A0 A0 14      LDY #$14A0                
CODE_29CB62:        A9 1F 00      LDA #$001F                
CODE_29CB65:        54 00 3C      MVN $3C00                 
CODE_29CB68:        AB            PLB                       ;
CODE_29CB69:        A6 DA         LDX $DA                   
CODE_29CB6B:        BF 84 CA 29   LDA.l DATA_29CA84,x             
CODE_29CB6F:        AA            TAX                       
CODE_29CB70:        8B            PHB                       ;
CODE_29CB71:        AA            TAX                       
CODE_29CB72:        A0 C0 14      LDY #$14C0                
CODE_29CB75:        A9 1F 00      LDA #$001F                
CODE_29CB78:        54 00 3C      MVN $3C00                 
CODE_29CB7B:        82 FE 00      BRL CODE_29CC7C           

CODE_29CB7E:        8B            PHB                       
CODE_29CB7F:        A2 00 A5      LDX #$A500                
CODE_29CB82:        A0 20 13      LDY #$1320                
CODE_29CB85:        A9 DF 00      LDA #$00DF                
CODE_29CB88:        54 00 3C      MVN $3C00                 
CODE_29CB8B:        AB            PLB                       ;
CODE_29CB8C:        AD BF 1E      LDA $1EBF                 
CODE_29CB8F:        29 FF 00      AND #$00FF                
CODE_29CB92:        0A            ASL A                     
CODE_29CB93:        AA            TAX                       
CODE_29CB94:        BF 1D CA 29   LDA.l DATA_29CA1D,x             
CODE_29CB98:        29 FF 00      AND #$00FF                
CODE_29CB9B:        0A            ASL A                     
CODE_29CB9C:        85 D8         STA $D8                   
CODE_29CB9E:        BF 1E CA 29   LDA.l DATA_29CA1D+1,x             
CODE_29CBA2:        29 FF 00      AND #$00FF                
CODE_29CBA5:        0A            ASL A                     
CODE_29CBA6:        85 DA         STA $DA                   
CODE_29CBA8:        AD 27 07      LDA $0727                 
CODE_29CBAB:        29 FF 00      AND #$00FF                
CODE_29CBAE:        C9 03 00      CMP #$0003                
CODE_29CBB1:        F0 05         BEQ CODE_29CBB8           
CODE_29CBB3:        C9 04 00      CMP #$0004                
CODE_29CBB6:        D0 05         BNE CODE_29CBBD           
CODE_29CBB8:        A9 16 00      LDA #$0016                
CODE_29CBBB:        85 DA         STA $DA                   
CODE_29CBBD:        82 76 FF      BRL CODE_29CB36           

CODE_29CBC0:        AD 27 07      LDA $0727                 
CODE_29CBC3:        29 FF 00      AND #$00FF                
CODE_29CBC6:        C9 07 00      CMP #$0007                
CODE_29CBC9:        D0 23         BNE CODE_29CBEE           
CODE_29CBCB:        AD 26 07      LDA $0726                 
CODE_29CBCE:        29 FF 00      AND #$00FF                
CODE_29CBD1:        AA            TAX                       
CODE_29CBD2:        BF 77 39 7E   LDA $7E3977,x             
CODE_29CBD6:        29 FF 00      AND #$00FF                
CODE_29CBD9:        C9 03 00      CMP #$0003                
CODE_29CBDC:        D0 35         BNE CODE_29CC13           
CODE_29CBDE:        AD 0A 07      LDA $070A                 
CODE_29CBE1:        29 FF 00      AND #$00FF                
CODE_29CBE4:        C9 02 00      CMP #$0002                
CODE_29CBE7:        D0 2A         BNE CODE_29CC13           
CODE_29CBE9:        A9 20 8A      LDA #$8A20                
CODE_29CBEC:        80 19         BRA CODE_29CC07           

CODE_29CBEE:        AD 0A 07      LDA $070A                 
CODE_29CBF1:        29 FF 00      AND #$00FF                
CODE_29CBF4:        C9 0A 00      CMP #$000A                
CODE_29CBF7:        D0 1A         BNE CODE_29CC13           
CODE_29CBF9:        AD 27 07      LDA $0727                 
CODE_29CBFC:        29 FF 00      AND #$00FF                
CODE_29CBFF:        0A            ASL A                     
CODE_29CC00:        AA            TAX                       
CODE_29CC01:        BF D3 C7 29   LDA.l DATA_29C7D3,x             
CODE_29CC05:        F0 0C         BEQ CODE_29CC13           
CODE_29CC07:        8B            PHB                       ;
CODE_29CC08:        AA            TAX                       
CODE_29CC09:        A0 80 14      LDY #$1480                
CODE_29CC0C:        A9 1F 00      LDA #$001F                
CODE_29CC0F:        54 00 3C      MVN $3C00                 
CODE_29CC12:        AB            PLB                       ;
CODE_29CC13:        60            RTS                       

CODE_29CC14:        8B            PHB                       ;
CODE_29CC15:        A2 A0 A3      LDX #$A3A0                
CODE_29CC18:        A0 20 13      LDY #$1320                
CODE_29CC1B:        A9 5F 00      LDA #$005F                
CODE_29CC1E:        54 00 3C      MVN $3C00                 
CODE_29CC21:        AB            PLB                       ;
CODE_29CC22:        AD 27 07      LDA $0727                 
CODE_29CC25:        29 FF 00      AND #$00FF                
CODE_29CC28:        C9 04 00      CMP #$0004                
CODE_29CC2B:        D0 2C         BNE CODE_29CC59           
CODE_29CC2D:        AD 26 07      LDA $0726                 
CODE_29CC30:        29 FF 00      AND #$00FF                
CODE_29CC33:        AA            TAX                       
CODE_29CC34:        BF 77 39 7E   LDA $7E3977,x             
CODE_29CC38:        29 FF 00      AND #$00FF                
CODE_29CC3B:        F0 05         BEQ CODE_29CC42           
CODE_29CC3D:        A9 09 00      LDA #$0009                
CODE_29CC40:        80 1D         BRA CODE_29CC5F           

CODE_29CC42:        AD 26 07      LDA $0726                 
CODE_29CC45:        29 FF 00      AND #$00FF                
CODE_29CC48:        A8            TAY                       
CODE_29CC49:        B9 47 00      LDA $0047,y               
CODE_29CC4C:        29 FF 00      AND #$00FF                
CODE_29CC4F:        C9 E0 00      CMP #$00E0                
CODE_29CC52:        90 05         BCC CODE_29CC59           
CODE_29CC54:        A9 09 00      LDA #$0009                
CODE_29CC57:        80 06         BRA CODE_29CC5F           

CODE_29CC59:        AD 27 07      LDA $0727                 
CODE_29CC5C:        29 FF 00      AND #$00FF                
CODE_29CC5F:        0A            ASL A                     
CODE_29CC60:        AA            TAX                       
CODE_29CC61:        BF BF C7 29   LDA.l DATA_29C7BF,x             
CODE_29CC65:        8B            PHB                       
CODE_29CC66:        AA            TAX                       
CODE_29CC67:        A0 80 13      LDY #$1380                
CODE_29CC6A:        A9 7F 00      LDA #$007F                
CODE_29CC6D:        54 00 3C      MVN $3C00                 
CODE_29CC70:        A2 00 8C      LDX #$8C00                
CODE_29CC73:        A0 A0 14      LDY #$14A0                
CODE_29CC76:        A9 3F 00      LDA #$003F                
CODE_29CC79:        54 00 3C      MVN $3C00                 
CODE_29CC7C:        AD 26 07      LDA $0726                 
CODE_29CC7F:        29 01 00      AND #$0001                
CODE_29CC82:        AA            TAX                       
CODE_29CC83:        BD 47 07      LDA $0747,x               
CODE_29CC86:        29 FF 00      AND #$00FF                
CODE_29CC89:        0A            ASL A                     
CODE_29CC8A:        85 D8         STA $D8                   
CODE_29CC8C:        BF 1D C8 29   LDA.l DATA_29C81D,x       ;
CODE_29CC90:        29 FF 00      AND #$00FF                
CODE_29CC93:        0A            ASL A                     
CODE_29CC94:        18            CLC                       
CODE_29CC95:        65 D8         ADC $D8                   
CODE_29CC97:        AA            TAX                       
CODE_29CC98:        BF E3 C7 29   LDA.l DATA_29C7E3,x             
CODE_29CC9C:        AA            TAX                       
CODE_29CC9D:        A0 E0 14      LDY #$14E0                
CODE_29CCA0:        A9 1F 00      LDA #$001F                
CODE_29CCA3:        54 00 3C      MVN $3C00                 
CODE_29CCA6:        AB            PLB                       ;
CODE_29CCA7:        A2 20 00      LDX #$0020                
CODE_29CCAA:        BD E0 14      LDA $14E0,x               
CODE_29CCAD:        9F 00 C5 7F   STA $7FC500,x             
CODE_29CCB1:        CA            DEX                       
CODE_29CCB2:        CA            DEX                       
CODE_29CCB3:        10 F5         BPL CODE_29CCAA           
CODE_29CCB5:        60            RTS                       

CODE_29CCB6:        8B            PHB                       
CODE_29CCB7:        A2 20 A9      LDX #$A920                
CODE_29CCBA:        A0 40 13      LDY #$1340                
CODE_29CCBD:        A9 1F 00      LDA #$001F                
CODE_29CCC0:        54 00 3C      MVN $3C00                 
CODE_29CCC3:        A2 E0 96      LDX #$96E0                
CODE_29CCC6:        A0 60 13      LDY #$1360                
CODE_29CCC9:        A9 5F 00      LDA #$005F                
CODE_29CCCC:        54 00 3C      MVN $3C00                 
CODE_29CCCF:        A2 80 97      LDX #$9780                
CODE_29CCD2:        A0 C0 13      LDY #$13C0                
CODE_29CCD5:        A9 3F 00      LDA #$003F                
CODE_29CCD8:        54 00 3C      MVN $3C00                 
CODE_29CCDB:        A2 00 8C      LDX #$8C00                
CODE_29CCDE:        A0 A0 14      LDY #$14A0                
CODE_29CCE1:        A9 3F 00      LDA #$003F                
CODE_29CCE4:        54 00 3C      MVN $3C00                 
CODE_29CCE7:        A2 A0 88      LDX #$88A0                
CODE_29CCEA:        A0 E0 14      LDY #$14E0                
CODE_29CCED:        A9 1F 00      LDA #$001F                
CODE_29CCF0:        54 00 3C      MVN $3C00                 
CODE_29CCF3:        9C 80 13      STZ $1380                 
CODE_29CCF6:        AB            PLB                       ;
CODE_29CCF7:        60            RTS                       

CODE_29CCF8:        C2 30         REP #$30                  
CODE_29CCFA:        8B            PHB                       
CODE_29CCFB:        A2 00 88      LDX #$8800                
CODE_29CCFE:        A0 00 14      LDY #$1400                
CODE_29CD01:        A9 9F 00      LDA #$009F                
CODE_29CD04:        54 00 3C      MVN $3C00                 
CODE_29CD07:        A2 E0 8B      LDX #$8BE0                
CODE_29CD0A:        A0 A0 14      LDY #$14A0                
CODE_29CD0D:        A9 1F 00      LDA #$001F                
CODE_29CD10:        54 00 3C      MVN $3C00                 
CODE_29CD13:        AB            PLB                       ;
CODE_29CD14:        E2 30         SEP #$30                  
CODE_29CD16:        60            RTS                       

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

CODE_29CD83:        AC 53 05      LDY $0553
CODE_29CD86:        C0 01         CPY #$01                  
CODE_29CD88:        D0 05         BNE CODE_29CD8F           
CODE_29CD8A:        9C C7 02      STZ $02C7                 
CODE_29CD8D:        80 23         BRA CODE_29CDB2           

CODE_29CD8F:        CE C6 02      DEC $02C6                 
CODE_29CD92:        10 1E         BPL CODE_29CDB2           
CODE_29CD94:        A9 03         LDA #$03                  
CODE_29CD96:        C0 40         CPY #$40                  
CODE_29CD98:        B0 08         BCS CODE_29CDA2                   
CODE_29CD9A:        A9 06         LDA #$06                  
CODE_29CD9C:        C0 1E         CPY #$1E                  
CODE_29CD9E:        90 02         BCC CODE_29CDA2           
CODE_29CDA0:        A9 05         LDA #$05                  
CODE_29CDA2:        8D C6 02      STA $02C6                 
CODE_29CDA5:        EE C7 02      INC $02C7                 
CODE_29CDA8:        AD 53 05      LDA $0553                 
CODE_29CDAB:        C9 05         CMP #$05                  
CODE_29CDAD:        B0 03         BCS CODE_29CDB2                   
CODE_29CDAF:        9C C7 02      STZ $02C7                 
CODE_29CDB2:        AD C7 02      LDA $02C7                 
CODE_29CDB5:        29 03         AND #$03                  
CODE_29CDB7:        85 D8         STA $D8                   
CODE_29CDB9:        0A            ASL A                     
CODE_29CDBA:        18            CLC                       
CODE_29CDBB:        65 D8         ADC $D8                   
CODE_29CDBD:        AA            TAX                       
CODE_29CDBE:        BF 77 CD 29   LDA.l PNTR_29CD77,x             
CODE_29CDC2:        85 0D         STA $0D                   
CODE_29CDC4:        BF 78 CD 29   LDA.l PNTR_29CD77+1,x             
CODE_29CDC8:        85 0E         STA $0E                   
CODE_29CDCA:        BF 79 CD 29   LDA.l PNTR_29CD77+2,x             
CODE_29CDCE:        85 0F         STA $0F                   
CODE_29CDD0:        C2 20         REP #$20                  
CODE_29CDD2:        A0 1E         LDY #$1E                  
CODE_29CDD4:        B7 0D         LDA [$0D],y               
CODE_29CDD6:        99 E0 14      STA $14E0,y               
CODE_29CDD9:        88            DEY                       
CODE_29CDDA:        88            DEY                       
CODE_29CDDB:        10 F7         BPL CODE_29CDD4           
CODE_29CDDD:        E2 20         SEP #$20                  
CODE_29CDDF:        A9 01         LDA #$01                  
CODE_29CDE1:        8D 00 15      STA $1500                 
CODE_29CDE4:        6B            RTL                       

CODE_29CDE5:        C2 30         REP #$30                  
CODE_29CDE7:        8B            PHB                       
CODE_29CDE8:        A2 00 88      LDX #$8800                
CODE_29CDEB:        A0 00 14      LDY #$1400                
CODE_29CDEE:        A9 9F 00      LDA #$009F                
CODE_29CDF1:        54 00 3C      MVN $3C00                 
CODE_29CDF4:        A2 00 8C      LDX #$8C00                
CODE_29CDF7:        A0 A0 14      LDY #$14A0                
CODE_29CDFA:        A9 3F 00      LDA #$003F                
CODE_29CDFD:        54 00 3C      MVN $3C00                 
CODE_29CE00:        A2 A0 88      LDX #$88A0                
CODE_29CE03:        A0 E0 14      LDY #$14E0                
CODE_29CE06:        A9 1F 00      LDA #$001F                
CODE_29CE09:        54 00 3C      MVN $3C00                 
CODE_29CE0C:        AB            PLB                       ;
CODE_29CE0D:        E2 30         SEP #$30                  
CODE_29CE0F:        6B            RTL                       

CODE_29CE10:        C2 30         REP #$30                  
CODE_29CE12:        AD 00 13      LDA $1300                 
CODE_29CE15:        85 DC         STA $DC                   
CODE_29CE17:        29 1F 00      AND #$001F                
CODE_29CE1A:        09 20 00      ORA #$0020                
CODE_29CE1D:        85 D8         STA $D8                   
CODE_29CE1F:        A5 DC         LDA $DC                   
CODE_29CE21:        4A            LSR A                     
CODE_29CE22:        4A            LSR A                     
CODE_29CE23:        4A            LSR A                     
CODE_29CE24:        4A            LSR A                     
CODE_29CE25:        4A            LSR A                     
CODE_29CE26:        29 1F 00      AND #$001F                
CODE_29CE29:        09 40 00      ORA #$0040                
CODE_29CE2C:        85 DA         STA $DA                   
CODE_29CE2E:        A5 DC         LDA $DC                   
CODE_29CE30:        EB            XBA                       
CODE_29CE31:        4A            LSR A                     
CODE_29CE32:        4A            LSR A                     
CODE_29CE33:        29 1F 00      AND #$001F                
CODE_29CE36:        09 80 00      ORA #$0080                
CODE_29CE39:        85 DC         STA $DC                   
CODE_29CE3B:        9C 00 13      STZ $1300                 
CODE_29CE3E:        E2 30         SEP #$30                  
CODE_29CE40:        A5 D8         LDA $D8                   
CODE_29CE42:        8D 05 02      STA $0205                 
CODE_29CE45:        A5 DA         LDA $DA                   
CODE_29CE47:        8D 06 02      STA $0206                 
CODE_29CE4A:        A5 DC         LDA $DC                   
CODE_29CE4C:        8D 07 02      STA $0207                 
CODE_29CE4F:        A9 01         LDA #$01                  
CODE_29CE51:        8D 00 15      STA $1500                 
CODE_29CE54:        6B            RTL                       

DATA_29CE55:        dw $AC00
                    dw $AD00
                    dw $AE00
                    dw $AF00
                    dw $B000
                    dw $B100
                    dw $B200
                    dw $B300

DATA_29CE65:        dw $88A0
                    dw $88A0
                    dw $88E0
                    dw $88A0
                    dw $88C0
                    dw $88A0
                    dw $8900
                    dw $88A0

DATA_29CE75:        dw $0000
                    dw $0000
                    dw $8AE0
                    dw $0000
                    dw $0000
                    dw $8A40
                    dw $8A40
                    dw $0000

DATA_29CE85:        dw $88E0
                    dw $88E0
                    dw $88E0
                    dw $88E0
                    dw $88C0
                    dw $88E0
                    dw $8900
                    dw $88E0

CODE_29CE95:        C2 30         REP #$30                  
CODE_29CE97:        8B            PHB                       
CODE_29CE98:        A5 4D         LDA $4D                   
CODE_29CE9A:        29 FF 00      AND #$00FF                
CODE_29CE9D:        0A            ASL A                     
CODE_29CE9E:        AA            TAX                       
CODE_29CE9F:        BF 55 CE 29   LDA.l DATA_29CE55,x             
CODE_29CEA3:        AA            TAX                       
CODE_29CEA4:        A0 00 94      LDY #$9400                
CODE_29CEA7:        A9 FF 00      LDA #$00FF                
CODE_29CEAA:        54 7F 3C      MVN $3C7F                 
CODE_29CEAD:        A2 00 88      LDX #$8800                
CODE_29CEB0:        A0 00 95      LDY #$9500                
CODE_29CEB3:        A9 7F 00      LDA #$007F                
CODE_29CEB6:        54 7F 3C      MVN $3C7F                 
CODE_29CEB9:        A2 20 8A      LDX #$8A20                
CODE_29CEBC:        A0 80 95      LDY #$9580                
CODE_29CEBF:        A9 1F 00      LDA #$001F                
CODE_29CEC2:        54 7F 3C      MVN $3C7F                 
CODE_29CEC5:        AB            PLB                       ;
CODE_29CEC6:        A5 4D         LDA $4D                   
CODE_29CEC8:        29 FF 00      AND #$00FF                
CODE_29CECB:        0A            ASL A                     
CODE_29CECC:        AA            TAX                       
CODE_29CECD:        BF 75 CE 29   LDA.l DATA_29CE75,x             
CODE_29CED1:        F0 0C         BEQ CODE_29CEDF           
CODE_29CED3:        8B            PHB                       
CODE_29CED4:        AA            TAX                       
CODE_29CED5:        A0 A0 95      LDY #$95A0                
CODE_29CED8:        A9 1F 00      LDA #$001F                
CODE_29CEDB:        54 7F 3C      MVN $3C7F                 
CODE_29CEDE:        AB            PLB                       ;
CODE_29CEDF:        A5 4D         LDA $4D                   
CODE_29CEE1:        29 FF 00      AND #$00FF                
CODE_29CEE4:        0A            ASL A                     
CODE_29CEE5:        AA            TAX                       
CODE_29CEE6:        AD 26 07      LDA $0726                 
CODE_29CEE9:        29 FF 00      AND #$00FF                
CODE_29CEEC:        F0 06         BEQ CODE_29CEF4           
CODE_29CEEE:        BF 85 CE 29   LDA.l DATA_29CE85,x             
CODE_29CEF2:        80 04         BRA CODE_29CEF8           

CODE_29CEF4:        BF 65 CE 29   LDA.l DATA_29CE65,x             
CODE_29CEF8:        8B            PHB                       
CODE_29CEF9:        AA            TAX                       
CODE_29CEFA:        A0 E0 95      LDY #$95E0                
CODE_29CEFD:        A9 1F 00      LDA #$001F                
CODE_29CF00:        54 7F 3C      MVN $3C7F                 
CODE_29CF03:        AB            PLB                       ;
CODE_29CF04:        A2 00 00      LDX #$0000                
CODE_29CF07:        8A            TXA                       
CODE_29CF08:        9D 20 13      STA $1320,x               
CODE_29CF0B:        9D 40 13      STA $1340,x               
CODE_29CF0E:        9D 60 13      STA $1360,x               
CODE_29CF11:        9D 80 13      STA $1380,x               
CODE_29CF14:        9D A0 13      STA $13A0,x               
CODE_29CF17:        9D C0 13      STA $13C0,x               
CODE_29CF1A:        9D E0 13      STA $13E0,x               
CODE_29CF1D:        9D 00 14      STA $1400,x               
CODE_29CF20:        9D 20 14      STA $1420,x               
CODE_29CF23:        9D 40 14      STA $1440,x               
CODE_29CF26:        9D 60 14      STA $1460,x               
CODE_29CF29:        9D 80 14      STA $1480,x               
CODE_29CF2C:        9D A0 14      STA $14A0,x               
CODE_29CF2F:        9D C0 14      STA $14C0,x               
CODE_29CF32:        9D E0 14      STA $14E0,x               
CODE_29CF35:        E8            INX                       
CODE_29CF36:        E8            INX                       
CODE_29CF37:        E0 20 00      CPX #$0020                
CODE_29CF3A:        D0 CC         BNE CODE_29CF08           
CODE_29CF3C:        8D 00 13      STA $1300                 
CODE_29CF3F:        8D 10 13      STA $1310                 
CODE_29CF42:        8D 12 13      STA $1312                 
CODE_29CF45:        8D 14 13      STA $1314                 
CODE_29CF48:        8D 16 13      STA $1316                 
CODE_29CF4B:        8D 18 13      STA $1318                 
CODE_29CF4E:        8D 1A 13      STA $131A                 
CODE_29CF51:        8D 1C 13      STA $131C                 
CODE_29CF54:        8D 1E 13      STA $131E                 
CODE_29CF57:        9C B7 02      STZ $02B7                 
CODE_29CF5A:        E2 30         SEP #$30                  
CODE_29CF5C:        A9 01         LDA #$01                  
CODE_29CF5E:        8D 00 15      STA $1500                 
CODE_29CF61:        6B            RTL                       

CODE_29CF62:        C2 30         REP #$30                  
CODE_29CF64:        8B            PHB                       
CODE_29CF65:        A2 00 A4      LDX #$A400                
CODE_29CF68:        A0 00 94      LDY #$9400                
CODE_29CF6B:        A9 1F 00      LDA #$001F                
CODE_29CF6E:        54 7F 3C      MVN $3C7F                 
CODE_29CF71:        A2 80 A4      LDX #$A480                
CODE_29CF74:        A0 80 94      LDY #$9480                
CODE_29CF77:        A9 7F 00      LDA #$007F                
CODE_29CF7A:        54 7F 3C      MVN $3C7F                 
CODE_29CF7D:        AB            PLB                       ;
CODE_29CF7E:        A2 00 00      LDX #$0000                
CODE_29CF81:        8A            TXA                       
CODE_29CF82:        9D 00 13      STA $1300,x               
CODE_29CF85:        9D 80 13      STA $1380,x               
CODE_29CF88:        9D A0 13      STA $13A0,x               
CODE_29CF8B:        9D C0 13      STA $13C0,x               
CODE_29CF8E:        9D E0 13      STA $13E0,x               
CODE_29CF91:        E8            INX                       
CODE_29CF92:        E8            INX                       
CODE_29CF93:        E0 20 00      CPX #$0020                
CODE_29CF96:        D0 EA         BNE CODE_29CF82           
CODE_29CF98:        AF 3E A4 3C   LDA.l DATA_3CA43E               
CODE_29CF9C:        8F 3E 94 7F   STA $7F943E               
CODE_29CFA0:        AF 5E A4 3C   LDA.l DATA_3CA45E               
CODE_29CFA4:        8F 5E 94 7F   STA $7F945E               
CODE_29CFA8:        A9 00 FF      LDA #$FF00                
CODE_29CFAB:        8D B7 02      STA $02B7                 
CODE_29CFAE:        E2 30         SEP #$30                  
CODE_29CFB0:        A9 01         LDA #$01                  
CODE_29CFB2:        8D 00 15      STA $1500                 
CODE_29CFB5:        6B            RTL                       

CODE_29CFB6:        C2 30         REP #$30                  
CODE_29CFB8:        8B            PHB                       
CODE_29CFB9:        A2 40 88      LDX #$8840                
CODE_29CFBC:        A0 40 95      LDY #$9540                
CODE_29CFBF:        A9 1F 00      LDA #$001F                
CODE_29CFC2:        54 7F 3C      MVN $3C7F                 
CODE_29CFC5:        AB            PLB                       ;
CODE_29CFC6:        9C B3 02      STZ $02B3                 
CODE_29CFC9:        A9 00 00      LDA #$0000                
CODE_29CFCC:        8F 00 94 7F   STA $7F9400               
CODE_29CFD0:        E2 30         SEP #$30                  
CODE_29CFD2:        9C B7 02      STZ $02B7                 
CODE_29CFD5:        6B            RTL                       

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

CODE_29D09A:        C2 30         REP #$30
CODE_29D09C:        AE B3 02      LDX $02B3
CODE_29D09F:        BF 56 D0 29   LDA.l DATA_29D056,x             
CODE_29D0A3:        85 D8         STA $D8                   
CODE_29D0A5:        A9 29 00      LDA #$0029                
CODE_29D0A8:        85 DA         STA $DA
CODE_29D0AA:        AD B5 02      LDA $02B5                 
CODE_29D0AD:        29 0F 00      AND #$000F
CODE_29D0B0:        0A            ASL
CODE_29D0B1:        AA            TAX                       
CODE_29D0B2:        BF 7A D0 29   LDA.l DATA_29D07A,x             
CODE_29D0B6:        85 DB         STA $DB                   
CODE_29D0B8:        A2 00 00      LDX #$0000
CODE_29D0BB:        9B            TXY
CODE_29D0BC:        AD B5 02      LDA $02B5                 
CODE_29D0BF:        C9 10 00      CMP #$0010                  
CODE_29D0C2:        90 02         BCC CODE_29D0C6
CODE_29D0C4:        E8            INX
CODE_29D0C5:        E8            INX                       
CODE_29D0C6:        E2 20         SEP #$20                  
CODE_29D0C8:        8B            PHB                       
CODE_29D0C9:        A9 7F         LDA #$7F                  
CODE_29D0CB:        48            PHA                       
CODE_29D0CC:        AB            PLB                       ; Data bank: RAM $7F
CODE_29D0CD:        C2 20         REP #$20                  
CODE_29D0CF:        BF D6 CF 29   LDA.l DATA_29CFD6,x             
CODE_29D0D3:        25 DB         AND $DB                   
CODE_29D0D5:        99 00 96      STA $9600,y               
CODE_29D0D8:        BF E6 CF 29   LDA.l DATA_29CFE6,x             
CODE_29D0DC:        25 DB         AND $DB                   
CODE_29D0DE:        99 08 96      STA $9608,y               
CODE_29D0E1:        BF F6 CF 29   LDA.l DATA_29CFF6,x             
CODE_29D0E5:        25 DB         AND $DB                   
CODE_29D0E7:        99 10 96      STA $9610,y               
CODE_29D0EA:        BF 06 D0 29   LDA.l DATA_29D006,x             
CODE_29D0EE:        25 DB         AND $DB                   
CODE_29D0F0:        99 18 96      STA $9618,y               
CODE_29D0F3:        BF 16 D0 29   LDA.l DATA_29D016,x             
CODE_29D0F7:        25 DB         AND $DB                   
CODE_29D0F9:        99 20 96      STA $9620,y               
CODE_29D0FC:        BF 26 D0 29   LDA.l DATA_29D026,x             
CODE_29D100:        25 DB         AND $DB                   
CODE_29D102:        99 28 96      STA $9628,y               
CODE_29D105:        BF 36 D0 29   LDA.l DATA_29D036,x             
CODE_29D109:        25 DB         AND $DB                   
CODE_29D10B:        99 30 96      STA $9630,y               
CODE_29D10E:        BF 46 D0 29   LDA.l DATA_29D046,x             
CODE_29D112:        25 DB         AND $DB                   
CODE_29D114:        99 38 96      STA $9638,y               
CODE_29D117:        E8            INX                       
CODE_29D118:        E8            INX                       
CODE_29D119:        E8            INX                       
CODE_29D11A:        E8            INX                       
CODE_29D11B:        C8            INY                       
CODE_29D11C:        C8            INY                       
CODE_29D11D:        C0 08 00      CPY #$0008                  
CODE_29D120:        D0 AD         BNE CODE_29D0CF
CODE_29D122:        E2 20         SEP #$20
CODE_29D124:        AB            PLB                       ;
CODE_29D125:        C2 20         REP #$20                  
CODE_29D127:        A2 00 00      LDX #$0000                  
CODE_29D12A:        9C 9A 02      STZ $029A     
CODE_29D12D:        64 DB         STZ $DB
CODE_29D12F:        8E 9F 02      STX $029F                 
CODE_29D132:        BF 00 94 7F   LDA $7F9400,x             
CODE_29D136:        8D 99 02      STA $0299                 
CODE_29D139:        29 1F 00      AND #$001F                
CODE_29D13C:        0A            ASL A                     
CODE_29D13D:        AA            TAX                       
CODE_29D13E:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D142:        D0 05         BNE CODE_29D149           
CODE_29D144:        A9 02 00      LDA #$0002                
CODE_29D147:        85 DB         STA $DB                   
CODE_29D149:        AD 99 02      LDA $0299                 
CODE_29D14C:        29 E0 03      AND #$03E0                
CODE_29D14F:        4A            LSR A                     
CODE_29D150:        4A            LSR A                     
CODE_29D151:        4A            LSR A                     
CODE_29D152:        4A            LSR A                     
CODE_29D153:        AA            TAX                       
CODE_29D154:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D158:        D0 05         BNE CODE_29D15F           
CODE_29D15A:        A9 04 00      LDA #$0004                
CODE_29D15D:        04 DB         TSB $DB                   
CODE_29D15F:        AD 9A 02      LDA $029A                 
CODE_29D162:        4A            LSR A                     
CODE_29D163:        4A            LSR A                     
CODE_29D164:        0A            ASL A                     
CODE_29D165:        AA            TAX                       
CODE_29D166:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D16A:        D0 05         BNE CODE_29D171           
CODE_29D16C:        A9 08 00      LDA #$0008                
CODE_29D16F:        04 DB         TSB $DB                   
CODE_29D171:        AE 9F 02      LDX $029F                 
CODE_29D174:        A4 DB         LDY $DB                   
CODE_29D176:        BD 00 13      LDA $1300,x               
CODE_29D179:        77 D8         ADC [$D8],y               
CODE_29D17B:        9D 00 13      STA $1300,x               
CODE_29D17E:        E8            INX                       
CODE_29D17F:        E8            INX                       
CODE_29D180:        8A            TXA                       
CODE_29D181:        29 80 FF      AND #$FF80                
CODE_29D184:        D0 03         BNE CODE_29D189           
CODE_29D186:        A2 80 00      LDX #$0080                  
CODE_29D189:        8A            TXA
CODE_29D18A:        2D B7 02      AND $02B7                 
CODE_29D18D:        D0 0D         BNE CODE_29D19C           
CODE_29D18F:        8A            TXA                       
CODE_29D190:        29 1F 00      AND #$001F                
CODE_29D193:        D0 98         BNE CODE_29D12D           
CODE_29D195:        E8            INX                       
CODE_29D196:        E8            INX                       
CODE_29D197:        E0 02 02      CPX #$0202                  
CODE_29D19A:        D0 91         BNE CODE_29D12D                  
CODE_29D19C:        EE B5 02      INC $02B5
CODE_29D19F:        AD B5 02      LDA $02B5                 
CODE_29D1A2:        C9 20 00      CMP #$0020                
CODE_29D1A5:        D0 0C         BNE CODE_29D1B3           
CODE_29D1A7:        AD B3 02      LDA $02B3                 
CODE_29D1AA:        49 02 00      EOR #$0002                
CODE_29D1AD:        8D B3 02      STA $02B3                 
CODE_29D1B0:        9C B5 02      STZ $02B5                 
CODE_29D1B3:        E2 30         SEP #$30                  
CODE_29D1B5:        A9 01         LDA #$01                  
CODE_29D1B7:        8D 00 15      STA $1500                 
CODE_29D1BA:        6B            RTL                       

CODE_29D1BB:        C2 30         REP #$30                  
CODE_29D1BD:        A2 02 00      LDX #$0002                
CODE_29D1C0:        9C 9A 02      STZ $029A                 
CODE_29D1C3:        64 DB         STZ $DB                   
CODE_29D1C5:        8E 9F 02      STX $029F                 
CODE_29D1C8:        BF 00 94 7F   LDA $7F9400,x             
CODE_29D1CC:        8D 99 02      STA $0299                 
CODE_29D1CF:        29 1F 00      AND #$001F                
CODE_29D1D2:        0A            ASL A                     
CODE_29D1D3:        AA            TAX                       
CODE_29D1D4:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D1D8:        D0 05         BNE CODE_29D1DF           
CODE_29D1DA:        A9 02 00      LDA #$0002                
CODE_29D1DD:        85 DB         STA $DB                   
CODE_29D1DF:        AD 99 02      LDA $0299                 
CODE_29D1E2:        29 E0 03      AND #$03E0                
CODE_29D1E5:        4A            LSR A                     
CODE_29D1E6:        4A            LSR A                     
CODE_29D1E7:        4A            LSR A                     
CODE_29D1E8:        4A            LSR A                     
CODE_29D1E9:        AA            TAX                       
CODE_29D1EA:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D1EE:        D0 05         BNE CODE_29D1F5           
CODE_29D1F0:        A9 04 00      LDA #$0004                
CODE_29D1F3:        04 DB         TSB $DB                   
CODE_29D1F5:        AD 9A 02      LDA $029A                 
CODE_29D1F8:        4A            LSR A                     
CODE_29D1F9:        4A            LSR A                     
CODE_29D1FA:        0A            ASL A                     
CODE_29D1FB:        AA            TAX                       
CODE_29D1FC:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D200:        D0 05         BNE CODE_29D207           
CODE_29D202:        A9 08 00      LDA #$0008                
CODE_29D205:        04 DB         TSB $DB                   
CODE_29D207:        AE 9F 02      LDX $029F                 
CODE_29D20A:        A4 DB         LDY $DB                   
CODE_29D20C:        BD 00 13      LDA $1300,x               
CODE_29D20F:        77 D8         ADC [$D8],y               
CODE_29D211:        9D 00 13      STA $1300,x               
CODE_29D214:        E8            INX                       
CODE_29D215:        E8            INX                       
CODE_29D216:        E0 20 00      CPX #$0020                
CODE_29D219:        90 A8         BCC CODE_29D1C3           
CODE_29D21B:        A9 3E 00      LDA #$003E                
CODE_29D21E:        E0 20 00      CPX #$0020                
CODE_29D221:        F0 08         BEQ CODE_29D22B           
CODE_29D223:        A9 5E 00      LDA #$005E                
CODE_29D226:        E0 40 00      CPX #$0040                
CODE_29D229:        D0 04         BNE CODE_29D22F           
CODE_29D22B:        AA            TAX                       
CODE_29D22C:        82 94 FF      BRL CODE_29D1C3           

CODE_29D22F:        E2 30         SEP #$30                  
CODE_29D231:        6B            RTL                       

CODE_29D232:        C2 30         REP #$30                  
CODE_29D234:        A2 10 00      LDX #$0010                
CODE_29D237:        9C 9A 02      STZ $029A                 
CODE_29D23A:        64 DB         STZ $DB                   
CODE_29D23C:        8E 9F 02      STX $029F                 
CODE_29D23F:        BF 00 94 7F   LDA $7F9400,x             
CODE_29D243:        8D 99 02      STA $0299                 
CODE_29D246:        29 1F 00      AND #$001F                
CODE_29D249:        0A            ASL A                     
CODE_29D24A:        AA            TAX                       
CODE_29D24B:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D24F:        D0 05         BNE CODE_29D256           
CODE_29D251:        A9 02 00      LDA #$0002                
CODE_29D254:        85 DB         STA $DB                   
CODE_29D256:        AD 99 02      LDA $0299                 
CODE_29D259:        29 E0 03      AND #$03E0                
CODE_29D25C:        4A            LSR A                     
CODE_29D25D:        4A            LSR A                     
CODE_29D25E:        4A            LSR A                     
CODE_29D25F:        4A            LSR A                     
CODE_29D260:        AA            TAX                       
CODE_29D261:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D265:        D0 05         BNE CODE_29D26C           
CODE_29D267:        A9 04 00      LDA #$0004                
CODE_29D26A:        04 DB         TSB $DB                   
CODE_29D26C:        AD 9A 02      LDA $029A                 
CODE_29D26F:        4A            LSR A                     
CODE_29D270:        4A            LSR A                     
CODE_29D271:        0A            ASL A                     
CODE_29D272:        AA            TAX                       
CODE_29D273:        BF 00 96 7F   LDA $7F9600,x             
CODE_29D277:        D0 05         BNE CODE_29D27E           
CODE_29D279:        A9 08 00      LDA #$0008                
CODE_29D27C:        04 DB         TSB $DB                   
CODE_29D27E:        AE 9F 02      LDX $029F                 
CODE_29D281:        A4 DB         LDY $DB                   
CODE_29D283:        BD 00 13      LDA $1300,x               
CODE_29D286:        77 D8         ADC [$D8],y               
CODE_29D288:        9D 00 13      STA $1300,x               
CODE_29D28B:        E8            INX                       
CODE_29D28C:        E8            INX                       
CODE_29D28D:        E0 80 00      CPX #$0080                
CODE_29D290:        D0 A8         BNE CODE_29D23A           
CODE_29D292:        E2 30         SEP #$30                  
CODE_29D294:        6B            RTL                       

CODE_29D295:        A9 0B         LDA #$0B                  
CODE_29D297:        8D 1D 10      STA $101D                 
CODE_29D29A:        A9 04         LDA #$04                  
CODE_29D29C:        8D 1C 10      STA $101C                 
CODE_29D29F:        60            RTS                       

CODE_29D2A0:        AD 1C 10      LDA $101C                 
CODE_29D2A3:        F0 03         BEQ CODE_29D2A8           
CODE_29D2A5:        CE 1C 10      DEC $101C                 
CODE_29D2A8:        AD 1D 10      LDA $101D                 
CODE_29D2AB:        F0 20         BEQ CODE_29D2CD           
CODE_29D2AD:        AD 1C 10      LDA $101C                 
CODE_29D2B0:        D0 1B         BNE CODE_29D2CD           
CODE_29D2B2:        A9 04         LDA #$04                  
CODE_29D2B4:        8D 1C 10      STA $101C                 
CODE_29D2B7:        CE 1D 10      DEC $101D                 
CODE_29D2BA:        D0 11         BNE CODE_29D2CD           
CODE_29D2BC:        AD 27 07      LDA $0727                 
CODE_29D2BF:        C9 06         CMP #$06                  
CODE_29D2C1:        D0 0A         BNE CODE_29D2CD           
CODE_29D2C3:        A9 06         LDA #$06                  
CODE_29D2C5:        8D 02 12      STA $1202                 
CODE_29D2C8:        A9 78         LDA #$78                  
CODE_29D2CA:        8D 11 07      STA $0711                 
CODE_29D2CD:        60            RTS                       

CODE_29D2CE:        AD 1E 10      LDA $101E                 
CODE_29D2D1:        D0 04         BNE CODE_29D2D7           
CODE_29D2D3:        38            SEC                       
CODE_29D2D4:        4C 95 D2      JMP CODE_29D295           

CODE_29D2D7:        60            RTS                       

CODE_29D2D8:        AD 1E 10      LDA $101E                 
CODE_29D2DB:        D0 1B         BNE CODE_29D2F8           
CODE_29D2DD:        AD 1C 10      LDA $101C                 
CODE_29D2E0:        F0 03         BEQ CODE_29D2E5           
CODE_29D2E2:        CE 1C 10      DEC $101C                 
CODE_29D2E5:        AD 1D 10      LDA $101D                 
CODE_29D2E8:        F0 0E         BEQ CODE_29D2F8           
CODE_29D2EA:        AD 1C 10      LDA $101C                 
CODE_29D2ED:        D0 08         BNE CODE_29D2F7           
CODE_29D2EF:        A9 04         LDA #$04                  
CODE_29D2F1:        8D 1C 10      STA $101C                 
CODE_29D2F4:        CE 1D 10      DEC $101D                 
CODE_29D2F7:        60            RTS                       

CODE_29D2F8:        A9 00         LDA #$00                  
CODE_29D2FA:        8D 1E 10      STA $101E                 
CODE_29D2FD:        60            RTS                       

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

CODE_29D356:        8B            PHB
CODE_29D357:        4B            PHK
CODE_29D358:        AB            PLB                       ;
CODE_29D359:        AD 56 03      LDA $0356                 
CODE_29D35C:        D0 0A         BNE CODE_29D368           
CODE_29D35E:        AD 83 07      LDA $0783                 
CODE_29D361:        C9 06         CMP #$06                  
CODE_29D363:        B0 46         BCS CODE_29D3AB                   
CODE_29D365:        9C 56 03      STZ $0356                 
CODE_29D368:        AD 56 03      LDA $0356                 
CODE_29D36B:        D0 07         BNE CODE_29D374           
CODE_29D36D:        A9 45         LDA #$45                  
CODE_29D36F:        8D 00 12      STA $1200                 
CODE_29D372:        A9 00         LDA #$00                  
CODE_29D374:        0A            ASL A                     
CODE_29D375:        29 0E         AND #$0E                  
CODE_29D377:        AA            TAX                       
CODE_29D378:        C2 20         REP #$20                  
CODE_29D37A:        BD 4A D3      LDA.w DATA_29D34A,x               
CODE_29D37D:        8D 00 13      STA $1300                 
CODE_29D380:        BD FE D2      LDA.w PNTR_29D2FE,x               
CODE_29D383:        85 00         STA $00                   
CODE_29D385:        A0 00         LDY #$00                  
CODE_29D387:        BB            TYX                       
CODE_29D388:        B1 00         LDA ($00),y               
CODE_29D38A:        F0 03         BEQ CODE_29D38F           
CODE_29D38C:        9D 10 13      STA $1310,x               
CODE_29D38F:        E8            INX                       
CODE_29D390:        E8            INX                       
CODE_29D391:        C8            INY                       
CODE_29D392:        C8            INY                       
CODE_29D393:        98            TYA                       
CODE_29D394:        29 0F 00      AND #$000F                
CODE_29D397:        D0 EF         BNE CODE_29D388           
CODE_29D399:        E2 20         SEP #$20                  
CODE_29D39B:        EE 00 15      INC $1500                 
CODE_29D39E:        EE 56 03      INC $0356                 
CODE_29D3A1:        AD 56 03      LDA $0356                 
CODE_29D3A4:        C9 06         CMP #$06                  
CODE_29D3A6:        D0 03         BNE CODE_29D3AB           
CODE_29D3A8:        9C 56 03      STZ $0356                 
CODE_29D3AB:        AB            PLB                       ;
CODE_29D3AC:        6B            RTL                       

DATA_29D3AD:        db $BB,$7F,$00,$0C,$BB,$7F,$14,$7B
                    db $90,$66,$ED,$51,$48,$3D,$C4,$2C
                    db $40,$1C,$00,$0C

CODE_29D3C1:        8B            PHB                       
CODE_29D3C2:        4B            PHK                       
CODE_29D3C3:        AB            PLB                       ;
CODE_29D3C4:        AD 56 03      LDA $0356                 
CODE_29D3C7:        D0 0F         BNE CODE_29D3D8           
CODE_29D3C9:        AD BE 07      LDA $07BE                 
CODE_29D3CC:        D0 33         BNE CODE_29D401           
CODE_29D3CE:        AD 83 07      LDA $0783                 
CODE_29D3D1:        C9 05         CMP #$05                  
CODE_29D3D3:        B0 2C         BCS CODE_29D401                   
CODE_29D3D5:        9C 56 03      STZ $0356                 
CODE_29D3D8:        AD 56 03      LDA $0356                 
CODE_29D3DB:        D0 07         BNE CODE_29D3E4           
CODE_29D3DD:        A9 45         LDA #$45                  
CODE_29D3DF:        8D 00 12      STA $1200                 
CODE_29D3E2:        A9 00         LDA #$00                  
CODE_29D3E4:        29 FE         AND #$FE                  
CODE_29D3E6:        AA            TAX                       
CODE_29D3E7:        C2 20         REP #$20                  
CODE_29D3E9:        BD AD D3      LDA.w DATA_29D3AD,x               
CODE_29D3EC:        8D 5E 13      STA $135E                 
CODE_29D3EF:        E2 20         SEP #$20                  
CODE_29D3F1:        EE 00 15      INC $1500                 
CODE_29D3F4:        EE 56 03      INC $0356                 
CODE_29D3F7:        AD 56 03      LDA $0356                 
CODE_29D3FA:        C9 14         CMP #$14                  
CODE_29D3FC:        D0 03         BNE CODE_29D401           
CODE_29D3FE:        9C 56 03      STZ $0356                 
CODE_29D401:        AB            PLB                       ;
CODE_29D402:        6B            RTL                       

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

CODE_29D713:        8B            PHB                       
CODE_29D714:        4B            PHK                       
CODE_29D715:        AB            PLB                       ;
CODE_29D716:        AD 50 03      LDA $0350                 
CODE_29D719:        C9 06         CMP #$06                  
CODE_29D71B:        D0 2D         BNE CODE_29D74A           
CODE_29D71D:        AD 56 03      LDA $0356                 
CODE_29D720:        1A            INC A                     
CODE_29D721:        8D 56 03      STA $0356                 
CODE_29D724:        29 38         AND #$38                  
CODE_29D726:        4A            LSR A                     
CODE_29D727:        4A            LSR A                     
CODE_29D728:        4A            LSR A                     
CODE_29D729:        85 00         STA $00                   
CODE_29D72B:        0A            ASL A                     
CODE_29D72C:        18            CLC                       
CODE_29D72D:        65 00         ADC $00                   
CODE_29D72F:        0A            ASL A                     
CODE_29D730:        AA            TAX                       
CODE_29D731:        C2 20         REP #$20                  
CODE_29D733:        BD 03 D4      LDA.w DATA_29D403,x               
CODE_29D736:        8D 2E 13      STA $132E                 
CODE_29D739:        BD 05 D4      LDA.w DATA_29D405,x               
CODE_29D73C:        8D 30 13      STA $1330                 
CODE_29D73F:        BD 07 D4      LDA.w DATA_29D407,x               
CODE_29D742:        8D 32 13      STA $1332                 
CODE_29D745:        E2 20         SEP #$20                  
CODE_29D747:        EE 00 15      INC $1500                 
CODE_29D74A:        C9 14         CMP #$14                  
CODE_29D74C:        D0 24         BNE CODE_29D772           
CODE_29D74E:        EE 56 03      INC $0356                 
CODE_29D751:        AD 56 03      LDA $0356                 
CODE_29D754:        29 38         AND #$38                  
CODE_29D756:        4A            LSR A                     
CODE_29D757:        4A            LSR A                     
CODE_29D758:        AA            TAX                       
CODE_29D759:        C2 20         REP #$20                  
CODE_29D75B:        BD 33 D4      LDA.w PNTR_29D433,x               
CODE_29D75E:        85 00         STA $00                   
CODE_29D760:        A0 00         LDY #$00                  
CODE_29D762:        B1 00         LDA ($00),y               
CODE_29D764:        99 40 13      STA $1340,y               
CODE_29D767:        C8            INY                       
CODE_29D768:        C8            INY                       
CODE_29D769:        C0 20         CPY #$20                  
CODE_29D76B:        D0 F5         BNE CODE_29D762           
CODE_29D76D:        E2 20         SEP #$20                  
CODE_29D76F:        EE 00 15      INC $1500                 
CODE_29D772:        C9 16         CMP #$16                  
CODE_29D774:        F0 04         BEQ CODE_29D77A           
CODE_29D776:        C9 1E         CMP #$1E                  
CODE_29D778:        D0 2B         BNE CODE_29D7A5           
CODE_29D77A:        EE 56 03      INC $0356                 
CODE_29D77D:        AD 56 03      LDA $0356                 
CODE_29D780:        29 18         AND #$18                  
CODE_29D782:        A8            TAY                       
CODE_29D783:        4A            LSR A                     
CODE_29D784:        4A            LSR A                     
CODE_29D785:        AA            TAX                       
CODE_29D786:        C2 20         REP #$20                  
CODE_29D788:        B9 43 D5      LDA DATA_29D543,y               
CODE_29D78B:        8D 30 13      STA $1330                 
CODE_29D78E:        B9 45 D5      LDA DATA_29D545,y               
CODE_29D791:        8D 32 13      STA $1332                 
CODE_29D794:        B9 47 D5      LDA DATA_29D547,y               
CODE_29D797:        8D 34 13      STA $1334                 
CODE_29D79A:        B9 49 D5      LDA DATA_29D549,y               
CODE_29D79D:        8D 36 13      STA $1336                 
CODE_29D7A0:        E2 20         SEP #$20                  
CODE_29D7A2:        EE 00 15      INC $1500                 
CODE_29D7A5:        C9 17         CMP #$17                  
CODE_29D7A7:        D0 28         BNE CODE_29D7D1           
CODE_29D7A9:        EE 56 03      INC $0356                 
CODE_29D7AC:        AD 56 03      LDA $0356                 
CODE_29D7AF:        29 38         AND #$38                  
CODE_29D7B1:        A8            TAY                       
CODE_29D7B2:        C2 20         REP #$20                  
CODE_29D7B4:        B9 63 D5      LDA DATA_29D563,y               
CODE_29D7B7:        8D 4E 13      STA $134E                 
CODE_29D7BA:        B9 65 D5      LDA DATA_29D565,y               
CODE_29D7BD:        8D 50 13      STA $1350                 
CODE_29D7C0:        B9 67 D5      LDA DATA_29D567,y               
CODE_29D7C3:        8D 52 13      STA $1352                 
CODE_29D7C6:        B9 69 D5      LDA DATA_29D569,y               
CODE_29D7C9:        8D 54 13      STA $1354                 
CODE_29D7CC:        E2 20         SEP #$20                  
CODE_29D7CE:        EE 00 15      INC $1500                 
CODE_29D7D1:        C9 1C         CMP #$1C                  
CODE_29D7D3:        D0 40         BNE CODE_29D815           
CODE_29D7D5:        EE 56 03      INC $0356                 
CODE_29D7D8:        AD 56 03      LDA $0356                 
CODE_29D7DB:        29 30         AND #$30                  
CODE_29D7DD:        A8            TAY                       
CODE_29D7DE:        C2 20         REP #$20                  
CODE_29D7E0:        B9 A3 D5      LDA DATA_29D5A3,y               
CODE_29D7E3:        8D 50 13      STA $1350                 
CODE_29D7E6:        B9 A5 D5      LDA DATA_29D5A5,y               
CODE_29D7E9:        8D 52 13      STA $1352                 
CODE_29D7EC:        B9 A7 D5      LDA DATA_29D5A7,y               
CODE_29D7EF:        8D 54 13      STA $1354                 
CODE_29D7F2:        B9 A9 D5      LDA DATA_29D5A9,y               
CODE_29D7F5:        8D 56 13      STA $1356                 
CODE_29D7F8:        B9 AB D5      LDA DATA_29D5AB,y               
CODE_29D7FB:        8D 58 13      STA $1358                 
CODE_29D7FE:        B9 AD D5      LDA DATA_29D5AD,y               
CODE_29D801:        8D 5A 13      STA $135A                 
CODE_29D804:        B9 AF D5      LDA DATA_29D5AF,y               
CODE_29D807:        8D 5C 13      STA $135C                 
CODE_29D80A:        B9 B1 D5      LDA DATA_29D5B1,y               
CODE_29D80D:        8D 5E 13      STA $135E                 
CODE_29D810:        E2 20         SEP #$20                  
CODE_29D812:        EE 00 15      INC $1500                 
CODE_29D815:        C9 1D         CMP #$1D                  
CODE_29D817:        D0 40         BNE CODE_29D859           
CODE_29D819:        EE 56 03      INC $0356                 
CODE_29D81C:        AD 56 03      LDA $0356                 
CODE_29D81F:        29 30         AND #$30                  
CODE_29D821:        A8            TAY                       
CODE_29D822:        C2 20         REP #$20                  
CODE_29D824:        B9 E3 D5      LDA DATA_29D5E3,y               
CODE_29D827:        8D 42 13      STA $1342                 
CODE_29D82A:        B9 E5 D5      LDA DATA_29D5E5,y               
CODE_29D82D:        8D 44 13      STA $1344                 
CODE_29D830:        B9 E7 D5      LDA DATA_29D5E7,y               
CODE_29D833:        8D 46 13      STA $1346                 
CODE_29D836:        B9 E9 D5      LDA DATA_29D5E9,y               
CODE_29D839:        8D 48 13      STA $1348                 
CODE_29D83C:        B9 EB D5      LDA DATA_29D5EB,y               
CODE_29D83F:        8D 4A 13      STA $134A                 
CODE_29D842:        B9 ED D5      LDA DATA_29D5ED,y               
CODE_29D845:        8D 4C 13      STA $134C                 
CODE_29D848:        B9 EF D5      LDA DATA_29D5EF,y               
CODE_29D84B:        8D 4E 13      STA $134E                 
CODE_29D84E:        B9 F1 D5      LDA DATA_29D5F1,y               
CODE_29D851:        8D 50 13      STA $1350                 
CODE_29D854:        E2 20         SEP #$20                  
CODE_29D856:        EE 00 15      INC $1500                 
CODE_29D859:        C9 1F         CMP #$1F                  
CODE_29D85B:        D0 50         BNE CODE_29D8AD           
CODE_29D85D:        EE 56 03      INC $0356                 
CODE_29D860:        AD 56 03      LDA $0356                 
CODE_29D863:        29 38         AND #$38                  
CODE_29D865:        4A            LSR A                     
CODE_29D866:        4A            LSR A                     
CODE_29D867:        AA            TAX                       
CODE_29D868:        0A            ASL A                     
CODE_29D869:        0A            ASL A                     
CODE_29D86A:        0A            ASL A                     
CODE_29D86B:        A8            TAY                       
CODE_29D86C:        C2 20         REP #$20                  
CODE_29D86E:        BD A3 D6      LDA.w DATA_29D6A3,x               
CODE_29D871:        8D 42 13      STA $1342                 
CODE_29D874:        BD B3 D6      LDA.w DATA_29D6B3,x               
CODE_29D877:        8D 4E 13      STA $134E                 
CODE_29D87A:        BD C3 D6      LDA.w DATA_29D6C3,x               
CODE_29D87D:        8D 50 13      STA $1350                 
CODE_29D880:        BD D3 D6      LDA.w DATA_29D6D3,x               
CODE_29D883:        8D 58 13      STA $1358                 
CODE_29D886:        BD E3 D6      LDA.w DATA_29D6E3,x               
CODE_29D889:        8D 5A 13      STA $135A                 
CODE_29D88C:        BD F3 D6      LDA.w DATA_29D6F3,x               
CODE_29D88F:        8D 5C 13      STA $135C                 
CODE_29D892:        BD 03 D7      LDA.w DATA_29D703,x               
CODE_29D895:        8D 5E 13      STA $135E                 
CODE_29D898:        A2 00         LDX #$00                  
CODE_29D89A:        B9 23 D6      LDA DATA_29D623,y               
CODE_29D89D:        9D 2A 13      STA $132A,x               
CODE_29D8A0:        E8            INX                       
CODE_29D8A1:        E8            INX                       
CODE_29D8A2:        C8            INY                       
CODE_29D8A3:        C8            INY                       
CODE_29D8A4:        E0 10         CPX #$10                  
CODE_29D8A6:        D0 F2         BNE CODE_29D89A           
CODE_29D8A8:        E2 20         SEP #$20                  
CODE_29D8AA:        EE 00 15      INC $1500                 
CODE_29D8AD:        AB            PLB                       ;
CODE_29D8AE:        6B            RTL                       

DATA_29D8AF:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF

CODE_29D8E0:        AD 23 04      LDA $0423
CODE_29D8E3:        F0 03         BEQ CODE_29D8E8           
CODE_29D8E5:        20 9E DE      JSR CODE_29DE9E           
CODE_29D8E8:        AD F2 05      LDA $05F2                 
CODE_29D8EB:        F0 05         BEQ CODE_29D8F2           
CODE_29D8ED:        A9 02         LDA #$02                  
CODE_29D8EF:        8D 56 05      STA $0556                 
CODE_29D8F2:        20 F6 D8      JSR CODE_29D8F6           
CODE_29D8F5:        6B            RTL                       

CODE_29D8F6:        AD 1C 04      LDA $041C                 
CODE_29D8F9:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29D8FD:        dw CODE_29D907
                    dw CODE_29D93D
                    dw CODE_29D988
                    dw CODE_29D98C
                    dw CODE_29DAF5
  
CODE_29D907:        A9 0F         LDA #$0F                  
CODE_29D909:        8D 19 04      STA $0419                 
CODE_29D90C:        A9 00         LDA #$00                  
CODE_29D90E:        8D 1F 04      STA $041F                 
CODE_29D911:        AE 0A 07      LDX $070A                 
CODE_29D914:        E0 07         CPX #$07                  
CODE_29D916:        F0 03         BEQ CODE_29D91B           
CODE_29D918:        8D 1D 04      STA $041D                 
CODE_29D91B:        A9 48         LDA #$48                  
CODE_29D91D:        8D 1E 04      STA $041E                 
CODE_29D920:        A2 00         LDX #$00                  
CODE_29D922:        8E 1B 04      STX $041B                 
CODE_29D925:        EE 1C 04      INC $041C                 
CODE_29D928:        AD F2 05      LDA $05F2                 
CODE_29D92B:        F0 0F         BEQ CODE_29D93C           
CODE_29D92D:        AD 1D 04      LDA $041D                 
CODE_29D930:        AE 26 07      LDX $0726                 
CODE_29D933:        F0 03         BEQ CODE_29D938           
CODE_29D935:        18            CLC                       
CODE_29D936:        69 23         ADC #$23                  
CODE_29D938:        AA            TAX                       
CODE_29D939:        BD 80 1D      LDA $1D80,x               
CODE_29D93C:        60            RTS                       

CODE_29D93D:        AE 00 16      LDX $1600                 
CODE_29D940:        AD 19 04      LDA $0419                 
CODE_29D943:        9D 02 16      STA $1602,x               
CODE_29D946:        AC 1B 04      LDY $041B                 
CODE_29D949:        B9 ED ED      LDA.w DATA_21EDED,y               
CODE_29D94C:        9D 03 16      STA $1603,x               
CODE_29D94F:        A9 40         LDA #$40                  
CODE_29D951:        9D 04 16      STA $1604,x               
CODE_29D954:        A9 3E         LDA #$3E                  
CODE_29D956:        9D 05 16      STA $1605,x               
CODE_29D959:        A9 AE         LDA #$AE                  
CODE_29D95B:        9D 06 16      STA $1606,x               
CODE_29D95E:        A9 02         LDA #$02                  
CODE_29D960:        9D 07 16      STA $1607,x               
CODE_29D963:        A9 FF         LDA #$FF                  
CODE_29D965:        9D 08 16      STA $1608,x               
CODE_29D968:        AD 00 16      LDA $1600                 
CODE_29D96B:        18            CLC                       
CODE_29D96C:        69 06         ADC #$06                  
CODE_29D96E:        8D 00 16      STA $1600                 
CODE_29D971:        C8            INY                       
CODE_29D972:        98            TYA                       
CODE_29D973:        29 03         AND #$03                  
CODE_29D975:        8D 1B 04      STA $041B                 
CODE_29D978:        D0 0D         BNE CODE_29D987           
CODE_29D97A:        AE F2 05      LDX $05F2                 
CODE_29D97D:        F0 02         BEQ CODE_29D981           
CODE_29D97F:        A9 08         LDA #$08                  
CODE_29D981:        8D 1B 04      STA $041B                 
CODE_29D984:        EE 1C 04      INC $041C                 
CODE_29D987:        60            RTS                       

CODE_29D988:        EE 1C 04      INC $041C                 
CODE_29D98B:        60            RTS                       

CODE_29D98C:        AD F2 05      LDA $05F2                 
CODE_29D98F:        0A            ASL A                     
CODE_29D990:        AA            TAX                       
CODE_29D991:        BD F1 ED      LDA.w DATA_21EDF1,x               
CODE_29D994:        85 0D         STA $0D                   
CODE_29D996:        BD F2 ED      LDA.w DATA_21EDF1+1,x               
CODE_29D999:        85 0E         STA $0E                   
CODE_29D99B:        A9 22         LDA #$22                  
CODE_29D99D:        85 0F         STA $0F                   
CODE_29D99F:        C2 30         REP #$30                  
CODE_29D9A1:        AD 1B 04      LDA $041B                 
CODE_29D9A4:        29 FF 00      AND #$00FF                
CODE_29D9A7:        0A            ASL A                     
CODE_29D9A8:        A8            TAY                       
CODE_29D9A9:        B9 15 EE      LDA.w DATA_21EE15,y               
CODE_29D9AC:        85 0B         STA $0B                   
CODE_29D9AE:        B9 F5 ED      LDA.w DATA_21EDF5,y               
CODE_29D9B1:        A8            TAY                       
CODE_29D9B2:        AE 00 16      LDX $1600                 
CODE_29D9B5:        86 08         STX $08                   
CODE_29D9B7:        B7 0D         LDA [$0D],y               
CODE_29D9B9:        9D 02 16      STA $1602,x               
CODE_29D9BC:        E8            INX                       
CODE_29D9BD:        C8            INY                       
CODE_29D9BE:        C4 0B         CPY $0B                   
CODE_29D9C0:        D0 F5         BNE CODE_29D9B7           
CODE_29D9C2:        E2 30         SEP #$30                  
CODE_29D9C4:        AD 00 16      LDA $1600                 
CODE_29D9C7:        18            CLC                       
CODE_29D9C8:        69 16         ADC #$16                  
CODE_29D9CA:        85 0C         STA $0C                   
CODE_29D9CC:        CA            DEX                       
CODE_29D9CD:        8E 00 16      STX $1600                 
CODE_29D9D0:        AD 1B 04      LDA $041B                 
CODE_29D9D3:        29 07         AND #$07                  
CODE_29D9D5:        AA            TAX                       
CODE_29D9D6:        CA            DEX                       
CODE_29D9D7:        38            SEC                       
CODE_29D9D8:        E9 04         SBC #$04                  
CODE_29D9DA:        C9 02         CMP #$02                  
CODE_29D9DC:        B0 03         BCS CODE_29D9E1                   
CODE_29D9DE:        20 FD D9      JSR CODE_29D9FD           
CODE_29D9E1:        20 81 DA      JSR CODE_29DA81           
CODE_29D9E4:        EE 1B 04      INC $041B                 
CODE_29D9E7:        AD 1B 04      LDA $041B                 
CODE_29D9EA:        29 07         AND #$07                  
CODE_29D9EC:        D0 0E         BNE CODE_29D9FC           
CODE_29D9EE:        AD F2 05      LDA $05F2                 
CODE_29D9F1:        D0 06         BNE CODE_29D9F9           
CODE_29D9F3:        A9 00         LDA #$00                  
CODE_29D9F5:        8D 1C 04      STA $041C                 
CODE_29D9F8:        60            RTS                       

CODE_29D9F9:        EE 1C 04      INC $041C                 
CODE_29D9FC:        60            RTS                       

CODE_29D9FD:        AD F2 05      LDA $05F2                 
CODE_29DA00:        D0 17         BNE CODE_29DA19           
CODE_29DA02:        A9 1C         LDA #$1C                  
CODE_29DA04:        AE 26 07      LDX $0726                 
CODE_29DA07:        F0 02         BEQ CODE_29DA0B           
CODE_29DA09:        A9 3F         LDA #$3F                  
CODE_29DA0B:        85 0B         STA $0B                   
CODE_29DA0D:        A5 0C         LDA $0C                   
CODE_29DA0F:        18            CLC                       
CODE_29DA10:        69 1A         ADC #$1A                  
CODE_29DA12:        85 0C         STA $0C                   
CODE_29DA14:        A9 02         LDA #$02                  
CODE_29DA16:        4C 2A DA      JMP CODE_29DA2A           

CODE_29DA19:        A9 00         LDA #$00                  
CODE_29DA1B:        AE 26 07      LDX $0726                 
CODE_29DA1E:        F0 02         BEQ CODE_29DA22           
CODE_29DA20:        A9 23         LDA #$23                  
CODE_29DA22:        18            CLC                       
CODE_29DA23:        6D 1D 04      ADC $041D                 
CODE_29DA26:        85 0B         STA $0B                   
CODE_29DA28:        A9 06         LDA #$06                  
CODE_29DA2A:        85 0A         STA $0A                   
CODE_29DA2C:        AD F2 05      LDA $05F2                 
CODE_29DA2F:        0A            ASL A                     
CODE_29DA30:        AA            TAX                       
CODE_29DA31:        BD 35 EE      LDA.w DATA_21EE35,x               
CODE_29DA34:        85 0D         STA $0D                   
CODE_29DA36:        BD 36 EE      LDA.w DATA_21EE35+1,x               
CODE_29DA39:        85 0E         STA $0E                   
CODE_29DA3B:        A9 21         LDA #$21                  
CODE_29DA3D:        85 0F         STA $0F                   
CODE_29DA3F:        A4 0B         LDY $0B                   
CODE_29DA41:        B9 80 1D      LDA $1D80,y               
CODE_29DA44:        F0 2D         BEQ CODE_29DA73           
CODE_29DA46:        0A            ASL A                     
CODE_29DA47:        0A            ASL A                     
CODE_29DA48:        A8            TAY                       
CODE_29DA49:        AD 1B 04      LDA $041B                 
CODE_29DA4C:        29 07         AND #$07                  
CODE_29DA4E:        C9 04         CMP #$04                  
CODE_29DA50:        F0 04         BEQ CODE_29DA56           
CODE_29DA52:        98            TYA                       
CODE_29DA53:        09 02         ORA #$02                  
CODE_29DA55:        A8            TAY                       
CODE_29DA56:        A6 0C         LDX $0C                   
CODE_29DA58:        C2 30         REP #$30                  
CODE_29DA5A:        8A            TXA                       
CODE_29DA5B:        29 FF 00      AND #$00FF                
CODE_29DA5E:        AA            TAX                       
CODE_29DA5F:        98            TYA                       
CODE_29DA60:        0A            ASL A                     
CODE_29DA61:        A8            TAY                       
CODE_29DA62:        B7 0D         LDA [$0D],y               
CODE_29DA64:        9D 02 16      STA $1602,x               
CODE_29DA67:        E8            INX                       
CODE_29DA68:        E8            INX                       
CODE_29DA69:        C8            INY                       
CODE_29DA6A:        C8            INY                       
CODE_29DA6B:        98            TYA                       
CODE_29DA6C:        29 02 00      AND #$0002                
CODE_29DA6F:        D0 F1         BNE CODE_29DA62           
CODE_29DA71:        E2 30         SEP #$30                  
CODE_29DA73:        A5 0C         LDA $0C                   
CODE_29DA75:        18            CLC                       
CODE_29DA76:        69 06         ADC #$06                  
CODE_29DA78:        85 0C         STA $0C                   
CODE_29DA7A:        E6 0B         INC $0B                   
CODE_29DA7C:        C6 0A         DEC $0A                   
CODE_29DA7E:        10 BF         BPL CODE_29DA3F           
CODE_29DA80:        60            RTS                       

CODE_29DA81:        AD 1B 04      LDA $041B                 
CODE_29DA84:        29 07         AND #$07                  
CODE_29DA86:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29DA8A:        dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA9A
                    dw CODE_29DABD
                    dw CODE_29DA80
                    dw CODE_29DA80

CODE_29DA9A:        22 30 E7 29   JSL CODE_29E730           
CODE_29DA9E:        AD 1B 04      LDA $041B                 
CODE_29DAA1:        29 08         AND #$08                  
CODE_29DAA3:        D0 17         BNE CODE_29DABC           
CODE_29DAA5:        20 E0 E6      JSR CODE_29E6E0           
CODE_29DAA8:        A6 08         LDX $08                   
CODE_29DAAA:        AD 48 1F      LDA $1F48                 
CODE_29DAAD:        C9 F0         CMP #$F0                  
CODE_29DAAF:        D0 02         BNE CODE_29DAB3           
CODE_29DAB1:        A9 FE         LDA #$FE                  
CODE_29DAB3:        9D 2A 16      STA $162A,x               
CODE_29DAB6:        AD 49 1F      LDA $1F49                 
CODE_29DAB9:        9D 2C 16      STA $162C,x               
CODE_29DABC:        60            RTS                       

CODE_29DABD:        22 66 E7 29   JSL CODE_29E766           
CODE_29DAC1:        20 AA E6      JSR CODE_29E6AA           
CODE_29DAC4:        A6 08         LDX $08                   
CODE_29DAC6:        AD 4A 1F      LDA $1F4A                 
CODE_29DAC9:        C9 F0         CMP #$F0                  
CODE_29DACB:        D0 02         BNE CODE_29DACF           
CODE_29DACD:        A9 FE         LDA #$FE                  
CODE_29DACF:        9D 10 16      STA $1610,x               
CODE_29DAD2:        AD 4B 1F      LDA $1F4B                 
CODE_29DAD5:        9D 12 16      STA $1612,x               
CODE_29DAD8:        AD 1B 04      LDA $041B                 
CODE_29DADB:        29 08         AND #$08                  
CODE_29DADD:        D0 15         BNE CODE_29DAF4           
CODE_29DADF:        22 AA E7 29   JSL CODE_29E7AA           
CODE_29DAE3:        A6 08         LDX $08                   
CODE_29DAE5:        A0 00         LDY #$00                  
CODE_29DAE7:        B9 4C 1F      LDA $1F4C,y               
CODE_29DAEA:        9D 16 16      STA $1616,x               
CODE_29DAED:        E8            INX                       
CODE_29DAEE:        E8            INX                       
CODE_29DAEF:        C8            INY                       
CODE_29DAF0:        C0 06         CPY #$06                  
CODE_29DAF2:        D0 F3         BNE CODE_29DAE7           
CODE_29DAF4:        60            RTS                       

CODE_29DAF5:        AD 23 04      LDA $0423                 
CODE_29DAF8:        D0 86         BNE CODE_29DA80           
CODE_29DAFA:        A5 A8         LDA $A8                   
CODE_29DAFC:        F0 03         BEQ CODE_29DB01           
CODE_29DAFE:        4C 21 DC      JMP CODE_29DC21           

CODE_29DB01:        AE 26 07      LDX $0726                 
CODE_29DB04:        B5 F8         LDA $F8,x                 
CODE_29DB06:        05 18         ORA $18                   
CODE_29DB08:        29 40         AND #$40                  
CODE_29DB0A:        F0 15         BEQ CODE_29DB21           
CODE_29DB0C:        A9 1C         LDA #$1C                  
CODE_29DB0E:        8D 03 12      STA $1203                 
CODE_29DB11:        AD F2 05      LDA $05F2                 
CODE_29DB14:        49 01         EOR #$01                  
CODE_29DB16:        8D F2 05      STA $05F2                 
CODE_29DB19:        A9 00         LDA #$00                  
CODE_29DB1B:        8D 1C 04      STA $041C                 
CODE_29DB1E:        4C 07 D9      JMP CODE_29D907           

CODE_29DB21:        A2 07         LDX #$07                  
CODE_29DB23:        AD 26 07      LDA $0726                 
CODE_29DB26:        F0 02         BEQ CODE_29DB2A           
CODE_29DB28:        A2 2A         LDX #$2A                  
CODE_29DB2A:        BD 80 1D      LDA $1D80,x               
CODE_29DB2D:        F0 76         BEQ CODE_29DBA5           
CODE_29DB2F:        AD 18 00      LDA $0018                 
CODE_29DB32:        29 0C         AND #$0C                  
CODE_29DB34:        F0 6F         BEQ CODE_29DBA5           
CODE_29DB36:        4A            LSR A                     
CODE_29DB37:        4A            LSR A                     
CODE_29DB38:        4A            LSR A                     
CODE_29DB39:        A8            TAY                       
CODE_29DB3A:        D0 1A         BNE CODE_29DB56           
CODE_29DB3C:        AD 1D 04      LDA $041D                 
CODE_29DB3F:        C9 15         CMP #$15                  
CODE_29DB41:        F0 11         BEQ CODE_29DB54           
CODE_29DB43:        18            CLC                       
CODE_29DB44:        69 07         ADC #$07                  
CODE_29DB46:        AE 26 07      LDX $0726                 
CODE_29DB49:        F0 03         BEQ CODE_29DB4E           
CODE_29DB4B:        18            CLC                       
CODE_29DB4C:        69 23         ADC #$23                  
CODE_29DB4E:        AA            TAX                       
CODE_29DB4F:        BD 80 1D      LDA $1D80,x               
CODE_29DB52:        D0 07         BNE CODE_29DB5B           
CODE_29DB54:        80 4F         BRA CODE_29DBA5           

CODE_29DB56:        AD 1D 04      LDA $041D                 
CODE_29DB59:        F0 F9         BEQ CODE_29DB54           
CODE_29DB5B:        A9 23         LDA #$23                  
CODE_29DB5D:        8D 03 12      STA $1203                 
CODE_29DB60:        AD 1D 04      LDA $041D                 
CODE_29DB63:        18            CLC                       
CODE_29DB64:        79 C9 EE      ADC.w DATA_21EEC9,y               
CODE_29DB67:        8D 1D 04      STA $041D                 
CODE_29DB6A:        D9 CB EE      CMP.w DATA_21EECB,y               
CODE_29DB6D:        D0 06         BNE CODE_29DB75           
CODE_29DB6F:        B9 CD EE      LDA.w DATA_21EECD,y               
CODE_29DB72:        8D 1D 04      STA $041D                 
CODE_29DB75:        AE 1D 04      LDX $041D                 
CODE_29DB78:        AD 26 07      LDA $0726                 
CODE_29DB7B:        F0 05         BEQ CODE_29DB82           
CODE_29DB7D:        8A            TXA                       
CODE_29DB7E:        18            CLC                       
CODE_29DB7F:        69 23         ADC #$23                  
CODE_29DB81:        AA            TAX                       
CODE_29DB82:        AC 26 07      LDY $0726                 
CODE_29DB85:        8A            TXA                       
CODE_29DB86:        D9 D9 EE      CMP.w DATA_21EED9,y               
CODE_29DB89:        F0 05         BEQ CODE_29DB90           
CODE_29DB8B:        BD 80 1D      LDA $1D80,x               
CODE_29DB8E:        F0 91         BEQ CODE_29DB21           
CODE_29DB90:        A9 0C         LDA #$0C                  
CODE_29DB92:        8D 1B 04      STA $041B                 
CODE_29DB95:        A9 03         LDA #$03                  
CODE_29DB97:        8D 1C 04      STA $041C                 
CODE_29DB9A:        A9 00         LDA #$00                  
CODE_29DB9C:        8D 1F 04      STA $041F                 
CODE_29DB9F:        A9 48         LDA #$48                  
CODE_29DBA1:        8D 1E 04      STA $041E                 
CODE_29DBA4:        60            RTS                       

CODE_29DBA5:        AD 0A 07      LDA $070A                 
CODE_29DBA8:        C9 07         CMP #$07                  
CODE_29DBAA:        F0 0E         BEQ CODE_29DBBA           
CODE_29DBAC:        A0 00         LDY #$00                  
CODE_29DBAE:        AE 26 07      LDX $0726                 
CODE_29DBB1:        F0 02         BEQ CODE_29DBB5           
CODE_29DBB3:        A0 23         LDY #$23                  
CODE_29DBB5:        B9 80 1D      LDA $1D80,y               
CODE_29DBB8:        D0 01         BNE CODE_29DBBB           
CODE_29DBBA:        60            RTS                       

CODE_29DBBB:        A2 01         LDX #$01                  
CODE_29DBBD:        AD 26 07      LDA $0726                 
CODE_29DBC0:        F0 02         BEQ CODE_29DBC4           
CODE_29DBC2:        A2 24         LDX #$24                  
CODE_29DBC4:        BD 80 1D      LDA $1D80,x               
CODE_29DBC7:        F0 4C         BEQ CODE_29DC15           
CODE_29DBC9:        A5 18         LDA $18                   
CODE_29DBCB:        29 03         AND #$03                  
CODE_29DBCD:        F0 46         BEQ CODE_29DC15           
CODE_29DBCF:        4A            LSR A                     
CODE_29DBD0:        AA            TAX                       
CODE_29DBD1:        A9 23         LDA #$23                  
CODE_29DBD3:        8D 03 12      STA $1203                 
CODE_29DBD6:        AD 1F 04      LDA $041F                 
CODE_29DBD9:        18            CLC                       
CODE_29DBDA:        7D D5 EE      ADC.w DATA_21EED5,x               
CODE_29DBDD:        8D 1F 04      STA $041F                 
CODE_29DBE0:        AD 1E 04      LDA $041E                 
CODE_29DBE3:        18            CLC                       
CODE_29DBE4:        7D CF EE      ADC.w DATA_21EECF,x               
CODE_29DBE7:        8D 1E 04      STA $041E                 
CODE_29DBEA:        DD D1 EE      CMP.w DATA_21EED1,x               
CODE_29DBED:        D0 0C         BNE CODE_29DBFB           
CODE_29DBEF:        BD D7 EE      LDA.w DATA_21EED7,x               
CODE_29DBF2:        8D 1F 04      STA $041F                 
CODE_29DBF5:        BD D3 EE      LDA.w DATA_21EED3,x               
CODE_29DBF8:        8D 1E 04      STA $041E                 
CODE_29DBFB:        AD 1F 04      LDA $041F                 
CODE_29DBFE:        18            CLC                       
CODE_29DBFF:        6D 1D 04      ADC $041D                 
CODE_29DC02:        A8            TAY                       
CODE_29DC03:        AD 26 07      LDA $0726                 
CODE_29DC06:        F0 05         BEQ CODE_29DC0D           
CODE_29DC08:        98            TYA                       
CODE_29DC09:        18            CLC                       
CODE_29DC0A:        69 23         ADC #$23                  
CODE_29DC0C:        A8            TAY                       
CODE_29DC0D:        B9 80 1D      LDA $1D80,y               
CODE_29DC10:        F0 C4         BEQ CODE_29DBD6           
CODE_29DC12:        4C 49 DC      JMP CODE_29DC49           

CODE_29DC15:        AC 26 07      LDY $0726                 
CODE_29DC18:        B9 F8 00      LDA $00F8,y               
CODE_29DC1B:        05 18         ORA $18                   
CODE_29DC1D:        29 80         AND #$80                  
CODE_29DC1F:        F0 28         BEQ CODE_29DC49           
CODE_29DC21:        AD 1F 04      LDA $041F                 
CODE_29DC24:        18            CLC                       
CODE_29DC25:        6D 1D 04      ADC $041D                 
CODE_29DC28:        A8            TAY                       
CODE_29DC29:        AD 26 07      LDA $0726                 
CODE_29DC2C:        F0 05         BEQ CODE_29DC33           
CODE_29DC2E:        98            TYA                       
CODE_29DC2F:        18            CLC                       
CODE_29DC30:        69 23         ADC #$23                  
CODE_29DC32:        A8            TAY                       
CODE_29DC33:        B9 80 1D      LDA $1D80,y               
CODE_29DC36:        C9 0C         CMP #$0C                  
CODE_29DC38:        D0 0C         BNE CODE_29DC46           
CODE_29DC3A:        AD 97 05      LDA $0597                 
CODE_29DC3D:        F0 07         BEQ CODE_29DC46           
CODE_29DC3F:        A9 2A         LDA #$2A                  
CODE_29DC41:        8D 03 12      STA $1203                 
CODE_29DC44:        80 03         BRA CODE_29DC49           

CODE_29DC46:        4C 65 DC      JMP CODE_29DC65           

CODE_29DC49:        4C 1D DF      JMP CODE_29DF1D           

CODE_29DC4C:        AE 0A 07      LDX $070A                 
CODE_29DC4F:        E0 07         CPX #$07                  
CODE_29DC51:        F0 11         BEQ CODE_29DC64           
CODE_29DC53:        0A            ASL A                     
CODE_29DC54:        AA            TAX                       
CODE_29DC55:        C2 20         REP #$20                  
CODE_29DC57:        BD DB EE      LDA.w DATA_21EEDB,x               
CODE_29DC5A:        8D 64 14      STA $1464                 
CODE_29DC5D:        E2 20         SEP #$20                  
CODE_29DC5F:        A9 01         LDA #$01                  
CODE_29DC61:        8D 00 15      STA $1500                 
CODE_29DC64:        60            RTS                       

CODE_29DC65:        B9 80 1D      LDA $1D80,y               
CODE_29DC68:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

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
                    
CODE_29DC88:        AD 1F 04      LDA $041F                 
CODE_29DC8B:        18            CLC                       
CODE_29DC8C:        6D 1D 04      ADC $041D                 
CODE_29DC8F:        A8            TAY                       
CODE_29DC90:        AD 26 07      LDA $0726                 
CODE_29DC93:        F0 05         BEQ CODE_29DC9A           
CODE_29DC95:        98            TYA                       
CODE_29DC96:        18            CLC                       
CODE_29DC97:        69 23         ADC #$23                  
CODE_29DC99:        A8            TAY                       
CODE_29DC9A:        BE 80 1D      LDX $1D80,y               
CODE_29DC9D:        8A            TXA                       
CODE_29DC9E:        0A            ASL A                     
CODE_29DC9F:        A8            TAY                       
CODE_29DCA0:        AD 26 07      LDA $0726                 
CODE_29DCA3:        F0 05         BEQ CODE_29DCAA           
CODE_29DCA5:        98            TYA                       
CODE_29DCA6:        18            CLC                       
CODE_29DCA7:        69 12         ADC #$12                  
CODE_29DCA9:        A8            TAY                       
CODE_29DCAA:        DA            PHX                       
CODE_29DCAB:        C2 30         REP #$30                  
CODE_29DCAD:        98            TYA                       
CODE_29DCAE:        29 FF 00      AND #$00FF                
CODE_29DCB1:        A8            TAY                       
CODE_29DCB2:        8B            PHB                       
CODE_29DCB3:        BE 09 EF      LDX.w DATA_21EF09,y               
CODE_29DCB6:        A0 E0 14      LDY #$14E0                
CODE_29DCB9:        A9 1F 00      LDA #$001F                
CODE_29DCBC:        54 00 3C      MVN $3C00                 
CODE_29DCBF:        AB            PLB                       ;
CODE_29DCC0:        E2 30         SEP #$30                  
CODE_29DCC2:        FA            PLX                       
CODE_29DCC3:        A9 01         LDA #$01                  
CODE_29DCC5:        8D 00 15      STA $1500                 
CODE_29DCC8:        BD F7 EE      LDA.w DATA_21EEF7,x               
CODE_29DCCB:        8D 00 12      STA $1200                 
CODE_29DCCE:        BD 00 EF      LDA.w DATA_21EF00,x               
CODE_29DCD1:        AE 26 07      LDX $0726                 
CODE_29DCD4:        8D 29 04      STA $0429                 
CODE_29DCD7:        C9 07         CMP #$07                  
CODE_29DCD9:        F0 09         BEQ CODE_29DCE4           
CODE_29DCDB:        C9 08         CMP #$08                  
CODE_29DCDD:        D0 02         BNE CODE_29DCE1           
CODE_29DCDF:        A9 03         LDA #$03                  
CODE_29DCE1:        9D 47 07      STA $0747,x               
CODE_29DCE4:        A9 14         LDA #$14                  
CODE_29DCE6:        8D 23 04      STA $0423                 
CODE_29DCE9:        AE 26 07      LDX $0726                 
CODE_29DCEC:        B5 43         LDA $43,x                 
CODE_29DCEE:        85 A6         STA $A6                   
CODE_29DCF0:        B5 47         LDA $47,x                 
CODE_29DCF2:        85 A7         STA $A7                   
CODE_29DCF4:        A9 1B         LDA #$1B                  
CODE_29DCF6:        85 0E         STA $0E                   
CODE_29DCF8:        AD 1F 04      LDA $041F                 
CODE_29DCFB:        18            CLC                       
CODE_29DCFC:        6D 1D 04      ADC $041D                 
CODE_29DCFF:        A8            TAY                       
CODE_29DD00:        AD 26 07      LDA $0726                 
CODE_29DD03:        F0 0C         BEQ CODE_29DD11           
CODE_29DD05:        A9 1B         LDA #$1B                  
CODE_29DD07:        18            CLC                       
CODE_29DD08:        69 23         ADC #$23                  
CODE_29DD0A:        85 0E         STA $0E                   
CODE_29DD0C:        98            TYA                       
CODE_29DD0D:        18            CLC                       
CODE_29DD0E:        69 23         ADC #$23                  
CODE_29DD10:        A8            TAY                       
CODE_29DD11:        C4 0E         CPY $0E                   
CODE_29DD13:        F0 0A         BEQ CODE_29DD1F           
CODE_29DD15:        B9 81 1D      LDA $1D81,y               
CODE_29DD18:        99 80 1D      STA $1D80,y               
CODE_29DD1B:        C8            INY                       
CODE_29DD1C:        4C 11 DD      JMP CODE_29DD11           

CODE_29DD1F:        A9 00         LDA #$00                  
CODE_29DD21:        99 80 1D      STA $1D80,y               
CODE_29DD24:        AC 1D 04      LDY $041D                 
CODE_29DD27:        F0 1B         BEQ CODE_29DD44           
CODE_29DD29:        AD 26 07      LDA $0726                 
CODE_29DD2C:        F0 05         BEQ CODE_29DD33           
CODE_29DD2E:        98            TYA                       
CODE_29DD2F:        18            CLC                       
CODE_29DD30:        69 23         ADC #$23                  
CODE_29DD32:        A8            TAY                       
CODE_29DD33:        B9 80 1D      LDA $1D80,y               
CODE_29DD36:        D0 0C         BNE CODE_29DD44           
CODE_29DD38:        AD 1D 04      LDA $041D                 
CODE_29DD3B:        38            SEC                       
CODE_29DD3C:        E9 07         SBC #$07                  
CODE_29DD3E:        8D 1D 04      STA $041D                 
CODE_29DD41:        4C 24 DD      JMP CODE_29DD24           

CODE_29DD44:        20 90 DB      JSR CODE_29DB90           
CODE_29DD47:        4C 1D DF      JMP CODE_29DF1D           

CODE_29DD4A:        EE 28 04      INC $0428                 
CODE_29DD4D:        A9 03         LDA #$03                  
CODE_29DD4F:        8D C6 02      STA $02C6                 
CODE_29DD52:        9C C7 02      STZ $02C7                 
CODE_29DD55:        A9 0A         LDA #$0A                  
CODE_29DD57:        8D 00 12      STA $1200                 
CODE_29DD5A:        20 F4 DC      JSR CODE_29DCF4           
CODE_29DD5D:        4C 11 DB      JMP CODE_29DB11           

CODE_29DD60:        AF 6F 39 7E   LDA $7E396F               
CODE_29DD64:        F0 06         BEQ CODE_29DD6C           
CODE_29DD66:        A9 2A         LDA #$2A                  
CODE_29DD68:        8D 03 12      STA $1203                 
CODE_29DD6B:        60            RTS                       

CODE_29DD6C:        AF 6F 39 7E   LDA $7E396F               
CODE_29DD70:        1A            INC A                     
CODE_29DD71:        8F 6F 39 7E   STA $7E396F               
CODE_29DD75:        A9 0C         LDA #$0C                  
CODE_29DD77:        8D 00 12      STA $1200                 
CODE_29DD7A:        20 F4 DC      JSR CODE_29DCF4           
CODE_29DD7D:        4C 11 DB      JMP CODE_29DB11           

CODE_29DD80:        A9 02         LDA #$02                  
CODE_29DD82:        8D 55 1F      STA $1F55                 
CODE_29DD85:        A9 0E         LDA #$0E                  
CODE_29DD87:        8D 02 12      STA $1202                 
CODE_29DD8A:        20 F4 DC      JSR CODE_29DCF4           
CODE_29DD8D:        4C 11 DB      JMP CODE_29DB11           

CODE_29DD90:        A9 03         LDA #$03                  
CODE_29DD92:        85 00         STA $00                   
CODE_29DD94:        A4 00         LDY $00                   
CODE_29DD96:        22 FC 8E 23   JSL CODE_238EFC           
CODE_29DD9A:        38            SEC                       
CODE_29DD9B:        E9 51         SBC #$51                  
CODE_29DD9D:        C9 02         CMP #$02                  
CODE_29DD9F:        90 07         BCC CODE_29DDA8           
CODE_29DDA1:        C6 00         DEC $00                   
CODE_29DDA3:        10 EF         BPL CODE_29DD94           
CODE_29DDA5:        4C 66 DD      JMP CODE_29DD66           

CODE_29DDA8:        86 01         STX $01                   
CODE_29DDAA:        46 01         LSR $01                   
CODE_29DDAC:        48            PHA                       
CODE_29DDAD:        AA            TAX                       
CODE_29DDAE:        BD 2D EF      LDA.w DATA_21EF2D,x               
CODE_29DDB1:        97 2E         STA [$2E],y               
CODE_29DDB3:        98            TYA                       
CODE_29DDB4:        0A            ASL A                     
CODE_29DDB5:        0A            ASL A                     
CODE_29DDB6:        0A            ASL A                     
CODE_29DDB7:        0A            ASL A                     
CODE_29DDB8:        85 A7         STA $A7                   
CODE_29DDBA:        85 02         STA $02                   
CODE_29DDBC:        98            TYA                       
CODE_29DDBD:        29 F0         AND #$F0                  
CODE_29DDBF:        18            CLC                       
CODE_29DDC0:        69 10         ADC #$10                  
CODE_29DDC2:        85 A6         STA $A6                   
CODE_29DDC4:        85 00         STA $00                   
CODE_29DDC6:        20 76 DF      JSR CODE_29DF76           
CODE_29DDC9:        98            TYA                       
CODE_29DDCA:        49 40         EOR #$40                  
CODE_29DDCC:        A8            TAY                       
CODE_29DDCD:        B9 00 1D      LDA $1D00,y               
CODE_29DDD0:        1D 4E EF      ORA.w DATA_21EF4E,x               
CODE_29DDD3:        99 00 1D      STA $1D00,y               
CODE_29DDD6:        A6 A7         LDX $A7                   
CODE_29DDD8:        A5 A6         LDA $A6                   
CODE_29DDDA:        38            SEC                       
CODE_29DDDB:        E9 10         SBC #$10                  
CODE_29DDDD:        22 3C 97 20   JSL CODE_20973C           
CODE_29DDE1:        AE 26 07      LDX $0726                 
CODE_29DDE4:        B5 45         LDA $45,x                 
CODE_29DDE6:        29 01         AND #$01                  
CODE_29DDE8:        F0 06         BEQ CODE_29DDF0           
CODE_29DDEA:        A5 0E         LDA $0E                   
CODE_29DDEC:        09 04         ORA #$04                  
CODE_29DDEE:        85 0E         STA $0E                   
CODE_29DDF0:        68            PLA                       
CODE_29DDF1:        48            PHA                       
CODE_29DDF2:        0A            ASL A                     
CODE_29DDF3:        AA            TAX                       
CODE_29DDF4:        C2 20         REP #$20                  
CODE_29DDF6:        AC 00 16      LDY $1600                 
CODE_29DDF9:        A5 0E         LDA $0E                   
CODE_29DDFB:        99 02 16      STA $1602,y               
CODE_29DDFE:        18            CLC                       
CODE_29DDFF:        69 00 01      ADC #$0100                
CODE_29DE02:        99 0A 16      STA $160A,y               
CODE_29DE05:        A9 03 80      LDA #$8003                
CODE_29DE08:        EB            XBA                       
CODE_29DE09:        99 04 16      STA $1604,y               
CODE_29DE0C:        99 0C 16      STA $160C,y               
CODE_29DE0F:        BD 2F EF      LDA.w DATA_21EF2F,x               
CODE_29DE12:        99 06 16      STA $1606,y               
CODE_29DE15:        BD 33 EF      LDA.w DATA_21EF33,x               
CODE_29DE18:        99 08 16      STA $1608,y               
CODE_29DE1B:        BD 37 EF      LDA.w DATA_21EF37,x               
CODE_29DE1E:        99 0E 16      STA $160E,y               
CODE_29DE21:        BD 3B EF      LDA.w DATA_21EF3B,x               
CODE_29DE24:        99 10 16      STA $1610,y               
CODE_29DE27:        A9 FF FF      LDA #$FFFF                
CODE_29DE2A:        99 12 16      STA $1612,y               
CODE_29DE2D:        AD 00 16      LDA $1600                 
CODE_29DE30:        18            CLC                       
CODE_29DE31:        69 10 00      ADC #$0010                
CODE_29DE34:        8D 00 16      STA $1600                 
CODE_29DE37:        E2 20         SEP #$20                  
CODE_29DE39:        68            PLA                       
CODE_29DE3A:        AA            TAX                       
CODE_29DE3B:        A9 07         LDA #$07                  
CODE_29DE3D:        8D 03 12      STA $1203                 
CODE_29DE40:        A9 14         LDA #$14                  
CODE_29DE42:        8D 23 04      STA $0423                 
CODE_29DE45:        20 9E DE      JSR CODE_29DE9E           
CODE_29DE48:        4C F4 DC      JMP CODE_29DCF4           

CODE_29DE4B:        AC 26 07      LDY $0726                 
CODE_29DE4E:        A2 00         LDX #$00                  
CODE_29DE50:        B9 47 00      LDA $0047,y               
CODE_29DE53:        38            SEC                       
CODE_29DE54:        ED 10 02      SBC $0210                 
CODE_29DE57:        C9 80         CMP #$80                  
CODE_29DE59:        B0 02         BCS CODE_29DE5D                   
CODE_29DE5B:        A2 01         LDX #$01                  
CODE_29DE5D:        86 58         STX $58                   
CODE_29DE5F:        BD 3F EF      LDA.w DATA_21EF3F,x               
CODE_29DE62:        85 56         STA $56                   
CODE_29DE64:        B9 43 00      LDA $0043,y               
CODE_29DE67:        85 54         STA $54                   
CODE_29DE69:        8F 74 39 7E   STA $7E3974               
CODE_29DE6D:        B9 43 00      LDA $0043,y               
CODE_29DE70:        8D 30 07      STA $0730                 
CODE_29DE73:        B9 47 00      LDA $0047,y               
CODE_29DE76:        8D 32 07      STA $0732                 
CODE_29DE79:        B9 45 00      LDA $0045,y               
CODE_29DE7C:        8D 31 07      STA $0731                 
CODE_29DE7F:        B9 52 00      LDA $0052,y               
CODE_29DE82:        8D 33 07      STA $0733                 
CODE_29DE85:        A2 01         LDX #$01                  
CODE_29DE87:        A9 00         LDA #$00                  
CODE_29DE89:        99 22 07      STA $0722,y               
CODE_29DE8C:        99 24 07      STA $0724,y               
CODE_29DE8F:        85 25         STA $25                   
CODE_29DE91:        86 59         STX $59                   
CODE_29DE93:        20 F4 DC      JSR CODE_29DCF4           
CODE_29DE96:        A9 0B         LDA #$0B                  ; \ Warp whistle jingle
CODE_29DE98:        8D 02 12      STA $1202                 ; /
CODE_29DE9B:        4C 11 DB      JMP CODE_29DB11           

CODE_29DE9E:        A5 A6         LDA $A6                   
CODE_29DEA0:        38            SEC                       
CODE_29DEA1:        E9 08         SBC #$08                  
CODE_29DEA3:        8D 61 08      STA $0861                 
CODE_29DEA6:        8D 65 08      STA $0865                 
CODE_29DEA9:        18            CLC                       
CODE_29DEAA:        69 10         ADC #$10                  
CODE_29DEAC:        8D 69 08      STA $0869                 
CODE_29DEAF:        8D 6D 08      STA $086D                 
CODE_29DEB2:        A5 A7         LDA $A7                   
CODE_29DEB4:        38            SEC                       
CODE_29DEB5:        ED 10 02      SBC $0210                 
CODE_29DEB8:        38            SEC                       
CODE_29DEB9:        E9 08         SBC #$08                  
CODE_29DEBB:        8D 60 08      STA $0860                 
CODE_29DEBE:        8D 68 08      STA $0868                 
CODE_29DEC1:        18            CLC                       
CODE_29DEC2:        69 10         ADC #$10                  
CODE_29DEC4:        8D 64 08      STA $0864                 
CODE_29DEC7:        8D 6C 08      STA $086C                 
CODE_29DECA:        A9 27         LDA #$27                  
CODE_29DECC:        8D 63 08      STA $0863                 
CODE_29DECF:        A9 67         LDA #$67                  
CODE_29DED1:        8D 67 08      STA $0867                 
CODE_29DED4:        A9 A7         LDA #$A7                  
CODE_29DED6:        8D 6B 08      STA $086B                 
CODE_29DED9:        A9 E7         LDA #$E7                  
CODE_29DEDB:        8D 6F 08      STA $086F                 
CODE_29DEDE:        AD 23 04      LDA $0423                 
CODE_29DEE1:        29 1C         AND #$1C                  
CODE_29DEE3:        4A            LSR A                     
CODE_29DEE4:        4A            LSR A                     
CODE_29DEE5:        A8            TAY                       
CODE_29DEE6:        B9 41 EF      LDA.w DATA_21EF41,y               
CODE_29DEE9:        8D 62 08      STA $0862                 
CODE_29DEEC:        8D 66 08      STA $0866                 
CODE_29DEEF:        8D 6A 08      STA $086A                 
CODE_29DEF2:        8D 6E 08      STA $086E                 
CODE_29DEF5:        A9 02         LDA #$02                  
CODE_29DEF7:        8D 38 0A      STA $0A38                 
CODE_29DEFA:        8D 39 0A      STA $0A39                 
CODE_29DEFD:        8D 3A 0A      STA $0A3A                 
CODE_29DF00:        8D 3B 0A      STA $0A3B                 
CODE_29DF03:        CE 23 04      DEC $0423                 
CODE_29DF06:        AD 23 04      LDA $0423                 
CODE_29DF09:        D0 03         BNE CODE_29DF0E           
CODE_29DF0B:        4C 11 DB      JMP CODE_29DB11           

CODE_29DF0E:        60            RTS                       

DATA_29DF0F:        db $00,$01,$02,$01,$02,$01,$03,$00
                    db $01,$00,$00,$00,$03,$00

CODE_29DF1D:        A0 C7         LDY #$C7                  
CODE_29DF1F:        A5 A8         LDA $A8                   
CODE_29DF21:        F0 08         BEQ CODE_29DF2B           
CODE_29DF23:        A5 15         LDA $15                   
CODE_29DF25:        29 18         AND #$18                  
CODE_29DF27:        D0 02         BNE CODE_29DF2B           
CODE_29DF29:        A0 F0         LDY #$F0                  
CODE_29DF2B:        8C 01 08      STY $0801                 
CODE_29DF2E:        AD 1D 04      LDA $041D                 
CODE_29DF31:        18            CLC                       
CODE_29DF32:        6D 1F 04      ADC $041F                 
CODE_29DF35:        A8            TAY                       
CODE_29DF36:        AD 26 07      LDA $0726                 
CODE_29DF39:        F0 05         BEQ CODE_29DF40           
CODE_29DF3B:        98            TYA                       
CODE_29DF3C:        18            CLC                       
CODE_29DF3D:        69 23         ADC #$23                  
CODE_29DF3F:        A8            TAY                       
CODE_29DF40:        AD 1E 04      LDA $041E                 
CODE_29DF43:        8D 00 08      STA $0800                 
CODE_29DF46:        C2 20         REP #$20                  
CODE_29DF48:        B9 80 1D      LDA $1D80,y               
CODE_29DF4B:        29 FF 00      AND #$00FF                
CODE_29DF4E:        AA            TAX                       
CODE_29DF4F:        29 07 00      AND #$0007                
CODE_29DF52:        0A            ASL A                     
CODE_29DF53:        85 00         STA $00                   
CODE_29DF55:        8A            TXA                       
CODE_29DF56:        29 08 00      AND #$0008                
CODE_29DF59:        0A            ASL A                     
CODE_29DF5A:        0A            ASL A                     
CODE_29DF5B:        05 00         ORA $00                   
CODE_29DF5D:        18            CLC                       
CODE_29DF5E:        69 C0 00      ADC #$00C0                
CODE_29DF61:        8D 02 08      STA $0802                 
CODE_29DF64:        E2 20         SEP #$20                  
CODE_29DF66:        BF 0F DF 29   LDA.l DATA_29DF0F,x             
CODE_29DF6A:        0A            ASL A                     
CODE_29DF6B:        09 21         ORA #$21                  
CODE_29DF6D:        8D 03 08      STA $0803                 
CODE_29DF70:        A9 02         LDA #$02                  
CODE_29DF72:        8D 20 0A      STA $0A20                 
CODE_29DF75:        60            RTS                       

CODE_29DF76:        A0 06         LDY #$06                  
CODE_29DF78:        A5 00         LDA $00                   
CODE_29DF7A:        D9 47 EF      CMP.w DATA_21EF47,y               
CODE_29DF7D:        F0 05         BEQ CODE_29DF84           
CODE_29DF7F:        88            DEY                       
CODE_29DF80:        10 F8         BPL CODE_29DF7A           
CODE_29DF82:        A0 07         LDY #$07                  
CODE_29DF84:        84 04         STY $04                   
CODE_29DF86:        A5 01         LDA $01                   
CODE_29DF88:        0A            ASL A                     
CODE_29DF89:        0A            ASL A                     
CODE_29DF8A:        0A            ASL A                     
CODE_29DF8B:        0A            ASL A                     
CODE_29DF8C:        85 03         STA $03                   
CODE_29DF8E:        A5 02         LDA $02                   
CODE_29DF90:        4A            LSR A                     
CODE_29DF91:        4A            LSR A                     
CODE_29DF92:        4A            LSR A                     
CODE_29DF93:        4A            LSR A                     
CODE_29DF94:        05 03         ORA $03                   
CODE_29DF96:        A8            TAY                       
CODE_29DF97:        AE 26 07      LDX $0726                 
CODE_29DF9A:        F0 05         BEQ CODE_29DFA1           
CODE_29DF9C:        98            TYA                       
CODE_29DF9D:        18            CLC                       
CODE_29DF9E:        69 40         ADC #$40                  
CODE_29DFA0:        A8            TAY                       
CODE_29DFA1:        A6 04         LDX $04                   
CODE_29DFA3:        B9 00 1D      LDA $1D00,y               
CODE_29DFA6:        1D 4E EF      ORA.w DATA_21EF4E,x               
CODE_29DFA9:        99 00 1D      STA $1D00,y               
CODE_29DFAC:        60            RTS                       

CODE_29DFAD:        22 4D 80 20   JSL CODE_20804D           
CODE_29DFB1:        AD 15 00      LDA $0015                 
CODE_29DFB4:        29 01         AND #$01                  
CODE_29DFB6:        D0 F5         BNE CODE_29DFAD           
CODE_29DFB8:        C6 16         DEC $16                   
CODE_29DFBA:        D0 F1         BNE CODE_29DFAD           
CODE_29DFBC:        A9 80         LDA #$80                  
CODE_29DFBE:        8D 00 21      STA $2100                 
CODE_29DFC1:        9C FC 05      STZ $05FC                 
CODE_29DFC4:        AF 55 39 7E   LDA $7E3955               
CODE_29DFC8:        1A            INC A                     
CODE_29DFC9:        8F 55 39 7E   STA $7E3955               
CODE_29DFCD:        20 1B E0      JSR CODE_29E01B           
CODE_29DFD0:        AD 10 02      LDA $0210                 
CODE_29DFD3:        8F 8C 39 7E   STA $7E398C               
CODE_29DFD7:        A5 12         LDA $12                   
CODE_29DFD9:        8F 8B 39 7E   STA $7E398B               
CODE_29DFDD:        AD 16 02      LDA $0216                 
CODE_29DFE0:        8F 8E 39 7E   STA $7E398E               
CODE_29DFE4:        A5 13         LDA $13                   
CODE_29DFE6:        8F 8D 39 7E   STA $7E398D               
CODE_29DFEA:        A9 01         LDA #$01                  
CODE_29DFEC:        8D 13 07      STA $0713                 
CODE_29DFEF:        A9 20         LDA #$20                  
CODE_29DFF1:        8D 12 06      STA $0612                 
CODE_29DFF4:        A6 25         LDX $25                   
CODE_29DFF6:        D0 0A         BNE CODE_29E002           
CODE_29DFF8:        A5 23         LDA $23                   
CODE_29DFFA:        38            SEC                       
CODE_29DFFB:        E9 10         SBC #$10                  
CODE_29DFFD:        85 23         STA $23                   
CODE_29DFFF:        4C 09 E0      JMP CODE_29E009           

CODE_29E002:        A5 24         LDA $24                   
CODE_29E004:        18            CLC                       
CODE_29E005:        69 10         ADC #$10                  
CODE_29E007:        85 24         STA $24                   
CODE_29E009:        AD 14 04      LDA $0414                 
CODE_29E00C:        C9 02         CMP #$02                  
CODE_29E00E:        F0 07         BEQ CODE_29E017           
CODE_29E010:        AF 8C 39 7E   LDA $7E398C               
CODE_29E014:        8D 10 02      STA $0210                 
CODE_29E017:        5C 53 87 20   JML CODE_208753           

CODE_29E01B:        AD 14 04      LDA $0414                 
CODE_29E01E:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29E022:        dw $0000
                    dw CODE_29E02E
                    dw CODE_29E065
                    dw CODE_29E117
                    dw CODE_29E1D9
                    dw CODE_29E228

CODE_29E02E:        AD FE 1D      LDA $1DFE
CODE_29E032:        85 2B         STA $2B
CODE_29E033:        8D BB 1E      STA $1EBB                 
CODE_29E036:        AD FF 1D      LDA $1DFF                 
CODE_29E039:        85 2C         STA $2C                   
CODE_29E03B:        8D BC 1E      STA $1EBC                 
CODE_29E03E:        AD 00 1E      LDA $1E00                 
CODE_29E041:        85 2D         STA $2D                   
CODE_29E043:        8D BD 1E      STA $1EBD                 
CODE_29E046:        AD 01 1E      LDA $1E01                 
CODE_29E049:        85 31         STA $31                   
CODE_29E04B:        8D 3A 02      STA $023A                 
CODE_29E04E:        AD 02 1E      LDA $1E02                 
CODE_29E051:        85 32         STA $32                   
CODE_29E053:        8D 3B 02      STA $023B                 
CODE_29E056:        AD BA 1E      LDA $1EBA                 
CODE_29E059:        8D 0A 07      STA $070A                 
CODE_29E05C:        AD 15 04      LDA $0415                 
CODE_29E05F:        49 01         EOR #$01                  
CODE_29E061:        8D 15 04      STA $0415                 
CODE_29E064:        60            RTS                       

CODE_29E065:        AD B8 1E      LDA $1EB8                 
CODE_29E068:        49 01         EOR #$01                  
CODE_29E06A:        8D B8 1E      STA $1EB8                 
CODE_29E06D:        D0 03         BNE CODE_29E072           
CODE_29E06F:        82 83 00      BRL CODE_29E0F5           

CODE_29E072:        AD 0A 07      LDA $070A                 
CODE_29E075:        8D B9 1E      STA $1EB9                 
CODE_29E078:        AC 27 07      LDY $0727                 
CODE_29E07B:        B9 86 EF      LDA.w DATA_21EF86,y               
CODE_29E07E:        8D 0A 07      STA $070A                 
CODE_29E081:        98            TYA                       
CODE_29E082:        85 00         STA $00                   
CODE_29E084:        0A            ASL A                     
CODE_29E085:        18            CLC                       
CODE_29E086:        65 00         ADC $00                   
CODE_29E088:        A8            TAY                       
CODE_29E089:        B9 56 EF      LDA.w DATA_21EF56,y               
CODE_29E08C:        85 2B         STA $2B                   
CODE_29E08E:        B9 57 EF      LDA.w DATA_21EF56+1,y               
CODE_29E091:        85 2C         STA $2C                   
CODE_29E093:        B9 58 EF      LDA.w DATA_21EF56+2,y               
CODE_29E096:        85 2D         STA $2D                   
CODE_29E098:        B9 6E EF      LDA.w DATA_21EF6E,y               
CODE_29E09B:        85 31         STA $31                   
CODE_29E09D:        B9 6F EF      LDA.w DATA_21EF6E+1,y               
CODE_29E0A0:        85 32         STA $32                   
CODE_29E0A2:        A6 43         LDX $43                   
CODE_29E0A4:        BD 66 1F      LDA $1F66,x               
CODE_29E0A7:        48            PHA                       
CODE_29E0A8:        29 0F         AND #$0F                  
CODE_29E0AA:        85 43         STA $43                   
CODE_29E0AC:        85 12         STA $12                   
CODE_29E0AE:        68            PLA                       
CODE_29E0AF:        29 F0         AND #$F0                  
CODE_29E0B1:        09 08         ORA #$08                  
CODE_29E0B3:        85 5E         STA $5E                   
CODE_29E0B5:        BD 56 1F      LDA $1F56,x               
CODE_29E0B8:        48            PHA                       
CODE_29E0B9:        48            PHA                       
CODE_29E0BA:        29 0F         AND #$0F                  
CODE_29E0BC:        8D 77 03      STA $0377                 
CODE_29E0BF:        C9 03         CMP #$03                  
CODE_29E0C1:        90 06         BCC CODE_29E0C9           
CODE_29E0C3:        A5 5E         LDA $5E                   
CODE_29E0C5:        29 F0         AND #$F0                  
CODE_29E0C7:        85 5E         STA $5E                   
CODE_29E0C9:        68            PLA                       
CODE_29E0CA:        29 80         AND #$80                  
CODE_29E0CC:        8D 78 03      STA $0378                 
CODE_29E0CF:        8D 25 04      STA $0425                 
CODE_29E0D2:        68            PLA                       
CODE_29E0D3:        29 70         AND #$70                  
CODE_29E0D5:        4A            LSR A                     
CODE_29E0D6:        4A            LSR A                     
CODE_29E0D7:        4A            LSR A                     
CODE_29E0D8:        4A            LSR A                     
CODE_29E0D9:        A8            TAY                       
CODE_29E0DA:        B9 8E EF      LDA.w DATA_21EF8E,y               
CODE_29E0DD:        48            PHA                       
CODE_29E0DE:        29 0F         AND #$0F                  
CODE_29E0E0:        85 55         STA $55                   
CODE_29E0E2:        68            PLA                       
CODE_29E0E3:        29 F0         AND #$F0                  
CODE_29E0E5:        85 70         STA $70                   
CODE_29E0E7:        B9 96 EF      LDA.w DATA_21EF96,y               
CODE_29E0EA:        8D 16 02      STA $0216                 
CODE_29E0ED:        A9 00         LDA #$00                  
CODE_29E0EF:        8D 10 02      STA $0210                 
CODE_29E0F2:        4C CD E1      JMP CODE_29E1CD           

CODE_29E0F5:        AD B9 1E      LDA $1EB9                 
CODE_29E0F8:        8D 0A 07      STA $070A                 
CODE_29E0FB:        AD BB 1E      LDA $1EBB                 
CODE_29E0FE:        85 2B         STA $2B                   
CODE_29E100:        AD BC 1E      LDA $1EBC                 
CODE_29E103:        85 2C         STA $2C                   
CODE_29E105:        AD BD 1E      LDA $1EBD                 
CODE_29E108:        85 2D         STA $2D                   
CODE_29E10A:        AD 3A 02      LDA $023A                 
CODE_29E10D:        85 31         STA $31                   
CODE_29E10F:        AD 3B 02      LDA $023B                 
CODE_29E112:        85 32         STA $32                   
CODE_29E114:        4C 1A E1      JMP CODE_29E11A           

CODE_29E117:        20 2E E0      JSR CODE_29E02E           
CODE_29E11A:        A6 43         LDX $43                   
CODE_29E11C:        AD 25 04      LDA $0425                 
CODE_29E11F:        F0 0A         BEQ CODE_29E12B           
CODE_29E121:        A4 55         LDY $55                   
CODE_29E123:        A5 70         LDA $70                   
CODE_29E125:        22 C1 9F 20   JSL CODE_209FC1           
CODE_29E129:        98            TYA                       
CODE_29E12A:        AA            TAX                       
CODE_29E12B:        BD 66 1F      LDA $1F66,x               
CODE_29E12E:        48            PHA                       
CODE_29E12F:        29 0F         AND #$0F                  
CODE_29E131:        85 43         STA $43                   
CODE_29E133:        68            PLA                       
CODE_29E134:        29 F0         AND #$F0                  
CODE_29E136:        09 08         ORA #$08                  
CODE_29E138:        85 5E         STA $5E                   
CODE_29E13A:        BD 56 1F      LDA $1F56,x               
CODE_29E13D:        48            PHA                       
CODE_29E13E:        48            PHA                       
CODE_29E13F:        29 0F         AND #$0F                  
CODE_29E141:        8D 77 03      STA $0377                 
CODE_29E144:        C9 03         CMP #$03                  
CODE_29E146:        90 06         BCC CODE_29E14E           
CODE_29E148:        A5 5E         LDA $5E                   
CODE_29E14A:        29 F0         AND #$F0                  
CODE_29E14C:        85 5E         STA $5E                   
CODE_29E14E:        68            PLA                       
CODE_29E14F:        29 80         AND #$80                  
CODE_29E151:        8D 78 03      STA $0378                 
CODE_29E154:        8D 25 04      STA $0425                 
CODE_29E157:        68            PLA                       
CODE_29E158:        29 70         AND #$70                  
CODE_29E15A:        4A            LSR A                     
CODE_29E15B:        4A            LSR A                     
CODE_29E15C:        4A            LSR A                     
CODE_29E15D:        4A            LSR A                     
CODE_29E15E:        A8            TAY                       
CODE_29E15F:        B9 8E EF      LDA.w DATA_21EF8E,y               
CODE_29E162:        48            PHA                       
CODE_29E163:        29 0F         AND #$0F                  
CODE_29E165:        85 55         STA $55                   
CODE_29E167:        68            PLA                       
CODE_29E168:        29 F0         AND #$F0                  
CODE_29E16A:        85 70         STA $70                   
CODE_29E16C:        B9 96 EF      LDA.w DATA_21EF96,y               
CODE_29E16F:        8D 16 02      STA $0216                 
CODE_29E172:        C2 20         REP #$20                  
CODE_29E174:        AD 16 02      LDA $0216                 
CODE_29E177:        4A            LSR A                     
CODE_29E178:        4A            LSR A                     
CODE_29E179:        8D 18 02      STA $0218                 
CODE_29E17C:        AD 16 02      LDA $0216                 
CODE_29E17F:        38            SEC                       
CODE_29E180:        ED 18 02      SBC $0218                 
CODE_29E183:        8D 18 02      STA $0218                 
CODE_29E186:        E2 20         SEP #$20                  
CODE_29E188:        9C 10 02      STZ $0210                 
CODE_29E18B:        9C 11 02      STZ $0211                 
CODE_29E18E:        64 12         STZ $12                   
CODE_29E190:        64 13         STZ $13                   
CODE_29E192:        9C 12 02      STZ $0212                 
CODE_29E195:        9C 13 02      STZ $0213                 
CODE_29E198:        AD 78 03      LDA $0378                 
CODE_29E19B:        D0 30         BNE CODE_29E1CD           
CODE_29E19D:        A5 43         LDA $43                   
CODE_29E19F:        85 12         STA $12                   
CODE_29E1A1:        D0 06         BNE CODE_29E1A9           
CODE_29E1A3:        A5 5E         LDA $5E                   
CODE_29E1A5:        C9 80         CMP #$80                  
CODE_29E1A7:        90 1B         BCC CODE_29E1C4           
CODE_29E1A9:        A5 5E         LDA $5E                   
CODE_29E1AB:        38            SEC                       
CODE_29E1AC:        E9 80         SBC #$80                  
CODE_29E1AE:        8D 10 02      STA $0210                 
CODE_29E1B1:        8D 12 02      STA $0212                 
CODE_29E1B4:        A5 12         LDA $12                   
CODE_29E1B6:        E9 00         SBC #$00                  
CODE_29E1B8:        85 12         STA $12                   
CODE_29E1BA:        8D 11 02      STA $0211                 
CODE_29E1BD:        4A            LSR A                     
CODE_29E1BE:        8D 13 02      STA $0213                 
CODE_29E1C1:        6E 12 02      ROR $0212                 
CODE_29E1C4:        A5 55         LDA $55                   
CODE_29E1C6:        F0 05         BEQ CODE_29E1CD           
CODE_29E1C8:        A9 EF         LDA #$EF                  
CODE_29E1CA:        8D 16 02      STA $0216                 
CODE_29E1CD:        AD 10 02      LDA $0210                 
CODE_29E1D0:        85 B7         STA $B7                   
CODE_29E1D2:        A5 12         LDA $12                   
CODE_29E1D4:        22 F5 97 20   JSL CODE_2097F5           
CODE_29E1D8:        60            RTS                       

CODE_29E1D9:        AC 27 07      LDY $0727                 
CODE_29E1DC:        B9 CE EF      LDA.w DATA_21EFCE,y               
CODE_29E1DF:        8D 0A 07      STA $070A                 
CODE_29E1E2:        98            TYA                       
CODE_29E1E3:        85 00         STA $00                   
CODE_29E1E5:        0A            ASL A                     
CODE_29E1E6:        18            CLC                       
CODE_29E1E7:        65 00         ADC $00                   
CODE_29E1E9:        A8            TAY                       
CODE_29E1EA:        B9 9E EF      LDA.w DATA_21EF9E,y               
CODE_29E1ED:        85 2B         STA $2B                   
CODE_29E1EF:        B9 9F EF      LDA.w DATA_21EF9E+1,y               
CODE_29E1F2:        85 2C         STA $2C                   
CODE_29E1F4:        B9 A0 EF      LDA.w DATA_21EF9E+2,y               
CODE_29E1F7:        85 2D         STA $2D                   
CODE_29E1F9:        B9 B6 EF      LDA.w DATA_21EFB6,y               
CODE_29E1FC:        85 31         STA $31                   
CODE_29E1FE:        B9 B7 EF      LDA.w DATA_21EFB6+1,y               
CODE_29E201:        85 32         STA $32                   
CODE_29E203:        A9 00         LDA #$00                  
CODE_29E205:        85 43         STA $43                   
CODE_29E207:        8D 10 02      STA $0210                 
CODE_29E20A:        85 13         STA $13                   
CODE_29E20C:        85 12         STA $12                   
CODE_29E20E:        8D 25 04      STA $0425                 
CODE_29E211:        A9 EF         LDA #$EF                  
CODE_29E213:        8D 16 02      STA $0216                 
CODE_29E216:        A9 28         LDA #$28                  
CODE_29E218:        85 5E         STA $5E                   
CODE_29E21A:        A9 01         LDA #$01                  
CODE_29E21C:        85 55         STA $55                   
CODE_29E21E:        8D 77 03      STA $0377                 
CODE_29E221:        A9 80         LDA #$80                  
CODE_29E223:        85 70         STA $70                   
CODE_29E225:        4C CD E1      JMP CODE_29E1CD           

CODE_29E228:        A9 00         LDA #$00                  
CODE_29E22A:        8D 10 02      STA $0210                 
CODE_29E22D:        85 12         STA $12                   
CODE_29E22F:        85 13         STA $13                   
CODE_29E231:        85 43         STA $43                   
CODE_29E233:        8D 25 04      STA $0425                 
CODE_29E236:        A9 20         LDA #$20                  
CODE_29E238:        85 5E         STA $5E                   
CODE_29E23A:        A9 01         LDA #$01                  
CODE_29E23C:        85 55         STA $55                   
CODE_29E23E:        A9 40         LDA #$40                  
CODE_29E240:        85 70         STA $70                   
CODE_29E242:        A9 07         LDA #$07                  
CODE_29E244:        8D 0A 07      STA $070A                 
CODE_29E247:        4C CD E1      JMP CODE_29E1CD           

CODE_29E24A:        A9 04         LDA #$04                  
CODE_29E24C:        8D 1D 10      STA $101D                 
CODE_29E24F:        8D 1C 10      STA $101C                 
CODE_29E252:        EE 1B 10      INC $101B                 
CODE_29E255:        60            RTS                       

CODE_29E256:        A5 15         LDA $15                   
CODE_29E258:        29 01         AND #$01                  
CODE_29E25A:        D0 0E         BNE CODE_29E26A           
CODE_29E25C:        E6 16         INC $16                   
CODE_29E25E:        A5 16         LDA $16                   
CODE_29E260:        C9 0F         CMP #$0F                  
CODE_29E262:        D0 06         BNE CODE_29E26A           
CODE_29E264:        9C 1D 10      STZ $101D                 
CODE_29E267:        9C 1B 10      STZ $101B                 
CODE_29E26A:        60            RTS                       

CODE_29E26B:        AD 1E 10      LDA $101E                 
CODE_29E26E:        D0 03         BNE CODE_29E273           
CODE_29E270:        20 4A E2      JSR CODE_29E24A           
CODE_29E273:        6B            RTL                       

CODE_29E274:        AD 1E 10      LDA $101E                 
CODE_29E277:        D0 1B         BNE CODE_29E294           
CODE_29E279:        AD 1C 10      LDA $101C                 
CODE_29E27C:        F0 03         BEQ CODE_29E281           
CODE_29E27E:        CE 1C 10      DEC $101C                 
CODE_29E281:        AD 1D 10      LDA $101D                 
CODE_29E284:        F0 0E         BEQ CODE_29E294           
CODE_29E286:        AD 1C 10      LDA $101C                 
CODE_29E289:        D0 08         BNE CODE_29E293           
CODE_29E28B:        A9 04         LDA #$04                  
CODE_29E28D:        8D 1C 10      STA $101C                 
CODE_29E290:        CE 1D 10      DEC $101D                 
CODE_29E293:        60            RTS                       

CODE_29E294:        A9 00         LDA #$00                  
CODE_29E296:        8D 1B 10      STA $101B                 
CODE_29E299:        8D 1E 10      STA $101E                 
CODE_29E29C:        60            RTS                       

CODE_29E29D:        20 4A E2      JSR CODE_29E24A           
CODE_29E2A0:        A9 80         LDA #$80                  
CODE_29E2A2:        8D 00 42      STA $4200                 
CODE_29E2A5:        A9 00         LDA #$00                  
CODE_29E2A7:        85 16         STA $16                   
CODE_29E2A9:        22 4D 80 20   JSL CODE_20804D           
CODE_29E2AD:        20 56 E2      JSR CODE_29E256           
CODE_29E2B0:        AD 1D 10      LDA $101D                 
CODE_29E2B3:        D0 F4         BNE CODE_29E2A9           
CODE_29E2B5:        6B            RTL                       

CODE_29E2B6:        22 6B E2 29   JSL CODE_29E26B           
CODE_29E2BA:        A9 A0         LDA #$A0                  
CODE_29E2BC:        8D 00 42      STA $4200                 
CODE_29E2BF:        A9 0F         LDA #$0F                  
CODE_29E2C1:        85 16         STA $16                   
CODE_29E2C3:        A9 07         LDA #$07                  
CODE_29E2C5:        8D 0D 02      STA $020D                 
CODE_29E2C8:        22 4D 80 20   JSL CODE_20804D           
CODE_29E2CC:        A5 15         LDA $15                   
CODE_29E2CE:        29 01         AND #$01                  
CODE_29E2D0:        D0 F6         BNE CODE_29E2C8           
CODE_29E2D2:        AD 50 03      LDA $0350                 
CODE_29E2D5:        C9 1B         CMP #$1B                  
CODE_29E2D7:        D0 0E         BNE CODE_29E2E7           
CODE_29E2D9:        AD 8E 07      LDA $078E                 
CODE_29E2DC:        F0 09         BEQ CODE_29E2E7           
CODE_29E2DE:        AD 0D 02      LDA $020D                 
CODE_29E2E1:        18            CLC                       
CODE_29E2E2:        69 10         ADC #$10                  
CODE_29E2E4:        8D 0D 02      STA $020D                 
CODE_29E2E7:        C6 16         DEC $16                   
CODE_29E2E9:        A5 16         LDA $16                   
CODE_29E2EB:        D0 DB         BNE CODE_29E2C8           
CODE_29E2ED:        22 4D 80 20   JSL CODE_20804D           
CODE_29E2F1:        6B            RTL                       

CODE_29E2F2:        8B            PHB                       
CODE_29E2F3:        A9 21         LDA #$21                  ;
CODE_29E2F5:        48            PHA                       
CODE_29E2F6:        AB            PLB                       ; Data bank: $21
CODE_29E2F7:        AE 4F 10      LDX $104F                 
CODE_29E2FA:        BD 47 10      LDA $1047,x               
CODE_29E2FD:        8D 51 10      STA $1051                 
CODE_29E300:        BD 4B 10      LDA $104B,x               
CODE_29E303:        8D 53 10      STA $1053                 
CODE_29E306:        AC 45 10      LDY $1045                 
CODE_29E309:        A2 80         LDX #$80                  
CODE_29E30B:        AD 4F 10      LDA $104F                 
CODE_29E30E:        29 02         AND #$02                  
CODE_29E310:        F0 05         BEQ CODE_29E317           
CODE_29E312:        AC 46 10      LDY $1046                 
CODE_29E315:        A2 81         LDX #$81                  
CODE_29E317:        8E 15 21      STX $2115                 
CODE_29E31A:        86 FF         STX $FF                   
CODE_29E31C:        AD 53 10      LDA $1053                 
CODE_29E31F:        8D 16 21      STA $2116                 
CODE_29E322:        AD 51 10      LDA $1051                 
CODE_29E325:        8D 17 21      STA $2117                 
CODE_29E328:        A9 FF         LDA #$FF                  
CODE_29E32A:        8D 18 21      STA $2118                 
CODE_29E32D:        A9 00         LDA #$00                  
CODE_29E32F:        8D 19 21      STA $2119                 
CODE_29E332:        AD 4F 10      LDA $104F                 
CODE_29E335:        29 02         AND #$02                  
CODE_29E337:        D0 1D         BNE CODE_29E356           
CODE_29E339:        EE 53 10      INC $1053                 
CODE_29E33C:        AD 53 10      LDA $1053                 
CODE_29E33F:        29 1F         AND #$1F                  
CODE_29E341:        D0 3A         BNE CODE_29E37D           
CODE_29E343:        AD 53 10      LDA $1053                 
CODE_29E346:        38            SEC                       
CODE_29E347:        E9 20         SBC #$20                  
CODE_29E349:        8D 53 10      STA $1053                 
CODE_29E34C:        AD 51 10      LDA $1051                 
CODE_29E34F:        49 04         EOR #$04                  
CODE_29E351:        8D 51 10      STA $1051                 
CODE_29E354:        80 22         BRA CODE_29E378           

CODE_29E356:        AD 53 10      LDA $1053                 
CODE_29E359:        18            CLC                       
CODE_29E35A:        69 20         ADC #$20                  
CODE_29E35C:        8D 53 10      STA $1053                 
CODE_29E35F:        29 E0         AND #$E0                  
CODE_29E361:        D0 1A         BNE CODE_29E37D           
CODE_29E363:        AD 51 10      LDA $1051                 
CODE_29E366:        69 00         ADC #$00                  
CODE_29E368:        8D 51 10      STA $1051                 
CODE_29E36B:        29 03         AND #$03                  
CODE_29E36D:        D0 0E         BNE CODE_29E37D           
CODE_29E36F:        AD 51 10      LDA $1051                 
CODE_29E372:        18            CLC                       
CODE_29E373:        69 04         ADC #$04                  
CODE_29E375:        8D 51 10      STA $1051                 
CODE_29E378:        88            DEY                       
CODE_29E379:        10 9C         BPL CODE_29E317           
CODE_29E37B:        80 03         BRA CODE_29E380           

CODE_29E37D:        88            DEY                       
CODE_29E37E:        10 A8         BPL CODE_29E328           
CODE_29E380:        20 B7 E3      JSR CODE_29E3B7           
CODE_29E383:        EE 4F 10      INC $104F                 
CODE_29E386:        AD 4F 10      LDA $104F                 
CODE_29E389:        29 03         AND #$03                  
CODE_29E38B:        8D 4F 10      STA $104F                 
CODE_29E38E:        AC 50 10      LDY $1050                 
CODE_29E391:        C0 06         CPY #$06                  
CODE_29E393:        B0 20         BCS CODE_29E3B5                   
CODE_29E395:        A5 FF         LDA $FF                   
CODE_29E397:        29 01         AND #$01                  
CODE_29E399:        D0 1A         BNE CODE_29E3B5           
CODE_29E39B:        A2 1F         LDX #$1F                  
CODE_29E39D:        A9 7B         LDA #$7B                  
CODE_29E39F:        8D 17 21      STA $2117                 
CODE_29E3A2:        B9 D6 EF      LDA.w DATA_21EFD6,y               
CODE_29E3A5:        8D 16 21      STA $2116                 
CODE_29E3A8:        A9 FF         LDA #$FF                  
CODE_29E3AA:        8D 18 21      STA $2118                 
CODE_29E3AD:        A9 00         LDA #$00                  
CODE_29E3AF:        8D 19 21      STA $2119                 
CODE_29E3B2:        CA            DEX                       
CODE_29E3B3:        10 F3         BPL CODE_29E3A8           
CODE_29E3B5:        AB            PLB                       ;
CODE_29E3B6:        6B            RTL                       

CODE_29E3B7:        AD 4F 10      LDA $104F                 
CODE_29E3BA:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29E3BE:        dw CODE_29E3C6
                    dw CODE_29E429
                    dw CODE_29E405
                    dw CODE_29E444

CODE_29E3C6:        AE 4F 10      LDX $104F
CODE_29E3C9:        BD 4B 10      LDA $104B,x
CODE_29E3CC:        29 1F         AND #$1F
CODE_29E3CE:        C9 1F         CMP #$1F
CODE_29E3D0:        F0 21         BEQ CODE_29E3F3
CODE_29E3D2:        BD 4B 10      LDA $104B,x
CODE_29E3D5:        18            CLC
CODE_29E3D6:        69 21         ADC #$21                  
CODE_29E3D8:        9D 4B 10      STA $104B,x               
CODE_29E3DB:        90 15         BCC CODE_29E3F2           
CODE_29E3DD:        BD 47 10      LDA $1047,x               
CODE_29E3E0:        69 00         ADC #$00                  
CODE_29E3E2:        9D 47 10      STA $1047,x               
CODE_29E3E5:        29 03         AND #$03                  
CODE_29E3E7:        D0 09         BNE CODE_29E3F2           
CODE_29E3E9:        BD 47 10      LDA $1047,x               
CODE_29E3EC:        18            CLC                       
CODE_29E3ED:        69 04         ADC #$04                  
CODE_29E3EF:        9D 47 10      STA $1047,x               
CODE_29E3F2:        60            RTS                       

CODE_29E3F3:        BD 4B 10      LDA $104B,x               
CODE_29E3F6:        18            CLC                       
CODE_29E3F7:        69 01         ADC #$01                  
CODE_29E3F9:        9D 4B 10      STA $104B,x               
CODE_29E3FC:        BD 47 10      LDA $1047,x               
CODE_29E3FF:        69 00         ADC #$00                  
CODE_29E401:        9D 47 10      STA $1047,x               
CODE_29E404:        60            RTS                       

CODE_29E405:        AE 4F 10      LDX $104F                 
CODE_29E408:        BD 4B 10      LDA $104B,x               
CODE_29E40B:        18            CLC                       
CODE_29E40C:        69 1F         ADC #$1F                  
CODE_29E40E:        9D 4B 10      STA $104B,x               
CODE_29E411:        90 15         BCC CODE_29E428           
CODE_29E413:        BD 47 10      LDA $1047,x               
CODE_29E416:        69 00         ADC #$00                  
CODE_29E418:        9D 47 10      STA $1047,x               
CODE_29E41B:        29 03         AND #$03                  
CODE_29E41D:        D0 09         BNE CODE_29E428           
CODE_29E41F:        BD 47 10      LDA $1047,x               
CODE_29E422:        18            CLC                       
CODE_29E423:        69 04         ADC #$04                  
CODE_29E425:        9D 47 10      STA $1047,x               
CODE_29E428:        60            RTS                       

CODE_29E429:        AE 4F 10      LDX $104F                 
CODE_29E42C:        BD 4B 10      LDA $104B,x               
CODE_29E42F:        38            SEC                       
CODE_29E430:        E9 1F         SBC #$1F                  
CODE_29E432:        9D 4B 10      STA $104B,x               
CODE_29E435:        BD 47 10      LDA $1047,x               
CODE_29E438:        E9 00         SBC #$00                  
CODE_29E43A:        9D 47 10      STA $1047,x               
CODE_29E43D:        CE 45 10      DEC $1045                 
CODE_29E440:        CE 45 10      DEC $1045                 
CODE_29E443:        60            RTS                       

CODE_29E444:        AE 4F 10      LDX $104F                 
CODE_29E447:        BD 4B 10      LDA $104B,x               
CODE_29E44A:        18            CLC                       
CODE_29E44B:        69 21         ADC #$21                  
CODE_29E44D:        9D 4B 10      STA $104B,x               
CODE_29E450:        90 15         BCC CODE_29E467           
CODE_29E452:        BD 47 10      LDA $1047,x               
CODE_29E455:        69 00         ADC #$00                  
CODE_29E457:        9D 47 10      STA $1047,x               
CODE_29E45A:        29 03         AND #$03                  
CODE_29E45C:        D0 09         BNE CODE_29E467           
CODE_29E45E:        BD 47 10      LDA $1047,x               
CODE_29E461:        18            CLC                       
CODE_29E462:        69 04         ADC #$04                  
CODE_29E464:        9D 47 10      STA $1047,x               
CODE_29E467:        CE 46 10      DEC $1046                 
CODE_29E46A:        CE 46 10      DEC $1046                 
CODE_29E46D:        60            RTS                       

CODE_29E46E:        8B            PHB                       
CODE_29E46F:        A9 21         LDA #$21                  
CODE_29E471:        48            PHA                       
CODE_29E472:        AB            PLB                       ; Data bank: $21
CODE_29E473:        AC 45 10      LDY $1045                 
CODE_29E476:        A2 80         LDX #$80                  
CODE_29E478:        AD 4F 10      LDA $104F                 
CODE_29E47B:        29 02         AND #$02                  
CODE_29E47D:        F0 05         BEQ CODE_29E484           
CODE_29E47F:        AC 46 10      LDY $1046                 
CODE_29E482:        A2 81         LDX #$81                  
CODE_29E484:        98            TYA                       
CODE_29E485:        0A            ASL A                     
CODE_29E486:        A8            TAY                       
CODE_29E487:        86 FF         STX $FF                   
CODE_29E489:        8E 15 21      STX $2115                 
CODE_29E48C:        AE 4F 10      LDX $104F                 
CODE_29E48F:        BD 47 10      LDA $1047,x               
CODE_29E492:        8D 17 21      STA $2117                 
CODE_29E495:        BD 4B 10      LDA $104B,x               
CODE_29E498:        8D 16 21      STA $2116                 
CODE_29E49B:        B9 82 03      LDA $0382,y               
CODE_29E49E:        8D 18 21      STA $2118                 
CODE_29E4A1:        B9 83 03      LDA $0383,y               
CODE_29E4A4:        8D 19 21      STA $2119                 
CODE_29E4A7:        CC 5F 10      CPY $105F                 
CODE_29E4AA:        F0 07         BEQ CODE_29E4B3           
CODE_29E4AC:        88            DEY                       
CODE_29E4AD:        88            DEY                       
CODE_29E4AE:        10 EB         BPL CODE_29E49B           
CODE_29E4B0:        4C D7 E4      JMP CODE_29E4D7           

CODE_29E4B3:        A9 FE         LDA #$FE                  
CODE_29E4B5:        8D 5F 10      STA $105F                 
CODE_29E4B8:        A9 08         LDA #$08                  
CODE_29E4BA:        8D 17 21      STA $2117                 
CODE_29E4BD:        BD 4B 10      LDA $104B,x               
CODE_29E4C0:        29 1F         AND #$1F                  
CODE_29E4C2:        8D 16 21      STA $2116                 
CODE_29E4C5:        88            DEY                       
CODE_29E4C6:        88            DEY                       
CODE_29E4C7:        B9 82 03      LDA $0382,y               
CODE_29E4CA:        8D 18 21      STA $2118                 
CODE_29E4CD:        B9 83 03      LDA $0383,y               
CODE_29E4D0:        8D 19 21      STA $2119                 
CODE_29E4D3:        88            DEY                       
CODE_29E4D4:        88            DEY                       
CODE_29E4D5:        10 F0         BPL CODE_29E4C7           
CODE_29E4D7:        20 EA E4      JSR CODE_29E4EA           
CODE_29E4DA:        EE 4F 10      INC $104F                 
CODE_29E4DD:        AD 4F 10      LDA $104F                 
CODE_29E4E0:        29 03         AND #$03                  
CODE_29E4E2:        8D 4F 10      STA $104F                 
CODE_29E4E5:        EE 50 10      INC $1050                 
CODE_29E4E8:        AB            PLB                       ;
CODE_29E4E9:        6B            RTL                       

CODE_29E4EA:        AD 4F 10      LDA $104F                 
CODE_29E4ED:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29E4F1:        dw CODE_29E4F9
                    dw CODE_29E568
                    dw CODE_29E52F
                    dw CODE_29E5B9

CODE_29E4F9:        AC 60 10      LDY $1060
CODE_29E4FC:        AE 4F 10      LDX $104F
CODE_29E4FF:        B9 DC EF      LDA.w DATA_21EFDC,y
CODE_29E502:        DD 47 10      CMP $1047,x
CODE_29E505:        D0 0A         BNE CODE_29E511           
CODE_29E507:        BD 4B 10      LDA $104B,x               
CODE_29E50A:        D9 E1 EF      CMP.w DATA_21EFE1,y               
CODE_29E50D:        B0 02         BCS CODE_29E511                   
CODE_29E50F:        90 11         BCC CODE_29E522           
CODE_29E511:        BD 4B 10      LDA $104B,x               
CODE_29E514:        38            SEC                       
CODE_29E515:        E9 21         SBC #$21                  
CODE_29E517:        9D 4B 10      STA $104B,x               
CODE_29E51A:        BD 47 10      LDA $1047,x               
CODE_29E51D:        E9 00         SBC #$00                  
CODE_29E51F:        9D 47 10      STA $1047,x               
CODE_29E522:        BD 47 10      LDA $1047,x               
CODE_29E525:        C9 07         CMP #$07                  
CODE_29E527:        D0 05         BNE CODE_29E52E           
CODE_29E529:        A9 03         LDA #$03                  
CODE_29E52B:        9D 47 10      STA $1047,x               
CODE_29E52E:        60            RTS                       

CODE_29E52F:        AE 60 10      LDX $1060                 
CODE_29E532:        BD DC EF      LDA.w DATA_21EFDC,x               
CODE_29E535:        AE 4F 10      LDX $104F                 
CODE_29E538:        DD 47 10      CMP $1047,x               
CODE_29E53B:        D0 0D         BNE CODE_29E54A           
CODE_29E53D:        BD 4B 10      LDA $104B,x               
CODE_29E540:        C9 1E         CMP #$1E                  
CODE_29E542:        D0 06         BNE CODE_29E54A           
CODE_29E544:        FE 4B 10      INC $104B,x               
CODE_29E547:        4C 5B E5      JMP CODE_29E55B           

CODE_29E54A:        BD 4B 10      LDA $104B,x               
CODE_29E54D:        38            SEC                       
CODE_29E54E:        E9 1F         SBC #$1F                  
CODE_29E550:        9D 4B 10      STA $104B,x               
CODE_29E553:        BD 47 10      LDA $1047,x               
CODE_29E556:        E9 00         SBC #$00                  
CODE_29E558:        9D 47 10      STA $1047,x               
CODE_29E55B:        BD 47 10      LDA $1047,x               
CODE_29E55E:        C9 07         CMP #$07                  
CODE_29E560:        D0 05         BNE CODE_29E567           
CODE_29E562:        A9 03         LDA #$03                  
CODE_29E564:        9D 47 10      STA $1047,x               
CODE_29E567:        60            RTS                       

CODE_29E568:        AE 60 10      LDX $1060                 
CODE_29E56B:        BD E6 EF      LDA.w DATA_21EFE6,x               
CODE_29E56E:        AE 4F 10      LDX $104F                 
CODE_29E571:        DD 47 10      CMP $1047,x               
CODE_29E574:        D0 10         BNE CODE_29E586           
CODE_29E576:        AD 60 10      LDA $1060                 
CODE_29E579:        C9 04         CMP #$04                  
CODE_29E57B:        90 20         BCC CODE_29E59D           
CODE_29E57D:        BD 4B 10      LDA $104B,x               
CODE_29E580:        C9 E0         CMP #$E0                  
CODE_29E582:        90 02         BCC CODE_29E586           
CODE_29E584:        B0 17         BCS CODE_29E59D                   
CODE_29E586:        BD 4B 10      LDA $104B,x               
CODE_29E589:        18            CLC                       
CODE_29E58A:        69 1F         ADC #$1F                  
CODE_29E58C:        9D 4B 10      STA $104B,x               
CODE_29E58F:        BD 47 10      LDA $1047,x               
CODE_29E592:        69 00         ADC #$00                  
CODE_29E594:        9D 47 10      STA $1047,x               
CODE_29E597:        EE 45 10      INC $1045                 
CODE_29E59A:        EE 45 10      INC $1045                 
CODE_29E59D:        BD 47 10      LDA $1047,x               
CODE_29E5A0:        C9 04         CMP #$04                  
CODE_29E5A2:        D0 14         BNE CODE_29E5B8           
CODE_29E5A4:        BD 4B 10      LDA $104B,x               
CODE_29E5A7:        C9 00         CMP #$00                  
CODE_29E5A9:        90 0D         BCC CODE_29E5B8           
CODE_29E5AB:        A9 08         LDA #$08                  
CODE_29E5AD:        9D 47 10      STA $1047,x               
CODE_29E5B0:        BD 4B 10      LDA $104B,x               
CODE_29E5B3:        29 1F         AND #$1F                  
CODE_29E5B5:        9D 4B 10      STA $104B,x               
CODE_29E5B8:        60            RTS                       

CODE_29E5B9:        AE 60 10      LDX $1060                 
CODE_29E5BC:        BD DC EF      LDA.w DATA_21EFDC,x               
CODE_29E5BF:        AE 4F 10      LDX $104F                 
CODE_29E5C2:        DD 47 10      CMP $1047,x               
CODE_29E5C5:        D0 13         BNE CODE_29E5DA           
CODE_29E5C7:        BD 4B 10      LDA $104B,x               
CODE_29E5CA:        C9 02         CMP #$02                  
CODE_29E5CC:        D0 0C         BNE CODE_29E5DA           
CODE_29E5CE:        DE 4B 10      DEC $104B,x               
CODE_29E5D1:        AD 60 10      LDA $1060                 
CODE_29E5D4:        C9 04         CMP #$04                  
CODE_29E5D6:        90 16         BCC CODE_29E5EE           
CODE_29E5D8:        F0 17         BEQ CODE_29E5F1           
CODE_29E5DA:        BD 4B 10      LDA $104B,x               
CODE_29E5DD:        38            SEC                       
CODE_29E5DE:        E9 21         SBC #$21                  
CODE_29E5E0:        9D 4B 10      STA $104B,x               
CODE_29E5E3:        BD 47 10      LDA $1047,x               
CODE_29E5E6:        E9 00         SBC #$00                  
CODE_29E5E8:        9D 47 10      STA $1047,x               
CODE_29E5EB:        EE 46 10      INC $1046                 
CODE_29E5EE:        EE 46 10      INC $1046                 
CODE_29E5F1:        BD 47 10      LDA $1047,x               
CODE_29E5F4:        C9 07         CMP #$07                  
CODE_29E5F6:        D0 05         BNE CODE_29E5FD           
CODE_29E5F8:        A9 03         LDA #$03                  
CODE_29E5FA:        9D 47 10      STA $1047,x               
CODE_29E5FD:        60            RTS                       

CODE_29E5FE:        AD 0A 07      LDA $070A                 
CODE_29E601:        F0 52         BEQ CODE_29E655           
CODE_29E603:        C9 07         CMP #$07                  
CODE_29E605:        F0 4E         BEQ CODE_29E655           
CODE_29E607:        C9 0F         CMP #$0F                  
CODE_29E609:        B0 4A         BCS CODE_29E655                   
CODE_29E60B:        AD F3 05      LDA $05F3                 
CODE_29E60E:        29 7F         AND #$7F                  
CODE_29E610:        0D 8C 05      ORA $058C                 
CODE_29E613:        D0 40         BNE CODE_29E655           
CODE_29E615:        CE F1 05      DEC $05F1                 
CODE_29E618:        10 3B         BPL CODE_29E655           
CODE_29E61A:        A9 28         LDA #$28                  
CODE_29E61C:        8D F1 05      STA $05F1                 
CODE_29E61F:        CE F0 05      DEC $05F0                 
CODE_29E622:        10 1D         BPL CODE_29E641           
CODE_29E624:        A9 09         LDA #$09                  
CODE_29E626:        8D F0 05      STA $05F0                 
CODE_29E629:        CE EF 05      DEC $05EF                 
CODE_29E62C:        10 13         BPL CODE_29E641           
CODE_29E62E:        8D EF 05      STA $05EF                 
CODE_29E631:        CE EE 05      DEC $05EE                 
CODE_29E634:        10 0B         BPL CODE_29E641           
CODE_29E636:        A9 00         LDA #$00                  
CODE_29E638:        8D EE 05      STA $05EE                 
CODE_29E63B:        8D EF 05      STA $05EF                 
CODE_29E63E:        8D F0 05      STA $05F0                 
CODE_29E641:        AD EE 05      LDA $05EE                 
CODE_29E644:        C9 01         CMP #$01                  
CODE_29E646:        D0 0D         BNE CODE_29E655           
CODE_29E648:        AD EF 05      LDA $05EF                 
CODE_29E64B:        0D F0 05      ORA $05F0                 
CODE_29E64E:        D0 05         BNE CODE_29E655           
CODE_29E650:        A9 FF         LDA #$FF                  
CODE_29E652:        8D 00 12      STA $1200                 
CODE_29E655:        A2 02         LDX #$02                  
CODE_29E657:        BD EE 05      LDA $05EE,x               
CODE_29E65A:        09 90         ORA #$90                  
CODE_29E65C:        9D 52 1F      STA $1F52,x               
CODE_29E65F:        CA            DEX                       
CODE_29E660:        10 F5         BPL CODE_29E657           
CODE_29E662:        60            RTS                       

CODE_29E663:        AE 00 16      LDX $1600                 
CODE_29E666:        A9 0F         LDA #$0F                  
CODE_29E668:        9D 02 16      STA $1602,x               
CODE_29E66B:        A9 51         LDA #$51                  
CODE_29E66D:        9D 03 16      STA $1603,x               
CODE_29E670:        A9 00         LDA #$00                  
CODE_29E672:        9D 04 16      STA $1604,x               
CODE_29E675:        A9 03         LDA #$03                  
CODE_29E677:        9D 05 16      STA $1605,x               
CODE_29E67A:        AD EE 05      LDA $05EE                 
CODE_29E67D:        09 90         ORA #$90                  
CODE_29E67F:        9D 06 16      STA $1606,x               
CODE_29E682:        AD EF 05      LDA $05EF                 
CODE_29E685:        09 90         ORA #$90                  
CODE_29E687:        9D 08 16      STA $1608,x               
CODE_29E68A:        AD F0 05      LDA $05F0                 
CODE_29E68D:        09 90         ORA #$90                  
CODE_29E68F:        9D 0A 16      STA $160A,x               
CODE_29E692:        A9 FF         LDA #$FF                  
CODE_29E694:        9D 0C 16      STA $160C,x               
CODE_29E697:        A9 22         LDA #$22                  
CODE_29E699:        9D 07 16      STA $1607,x               
CODE_29E69C:        9D 09 16      STA $1609,x               
CODE_29E69F:        9D 0B 16      STA $160B,x               
CODE_29E6A2:        8A            TXA                       
CODE_29E6A3:        18            CLC                       
CODE_29E6A4:        69 0A         ADC #$0A                  
CODE_29E6A6:        8D 00 16      STA $1600                 
CODE_29E6A9:        60            RTS                       

CODE_29E6AA:        AE 26 07      LDX $0726                 
CODE_29E6AD:        A0 00         LDY #$00                  
CODE_29E6AF:        BD 36 07      LDA $0736,x               
CODE_29E6B2:        C9 FF         CMP #$FF                  
CODE_29E6B4:        D0 04         BNE CODE_29E6BA           
CODE_29E6B6:        A9 90         LDA #$90                  
CODE_29E6B8:        80 16         BRA CODE_29E6D0           

CODE_29E6BA:        C9 63         CMP #$63                  
CODE_29E6BC:        30 05         BMI CODE_29E6C3           
CODE_29E6BE:        A9 62         LDA #$62                  
CODE_29E6C0:        9D 36 07      STA $0736,x               
CODE_29E6C3:        1A            INC A                     
CODE_29E6C4:        C9 0A         CMP #$0A                  
CODE_29E6C6:        30 06         BMI CODE_29E6CE           
CODE_29E6C8:        38            SEC                       
CODE_29E6C9:        E9 0A         SBC #$0A                  
CODE_29E6CB:        C8            INY                       
CODE_29E6CC:        80 F6         BRA CODE_29E6C4           

CODE_29E6CE:        09 90         ORA #$90                  
CODE_29E6D0:        8D 4B 1F      STA $1F4B                 
CODE_29E6D3:        98            TYA                       
CODE_29E6D4:        D0 04         BNE CODE_29E6DA           
CODE_29E6D6:        A9 AD         LDA #$AD                  
CODE_29E6D8:        80 02         BRA CODE_29E6DC           

CODE_29E6DA:        09 90         ORA #$90                  
CODE_29E6DC:        8D 4A 1F      STA $1F4A                 
CODE_29E6DF:        60            RTS                       

CODE_29E6E0:        A9 22         LDA #$22                  
CODE_29E6E2:        AE 26 07      LDX $0726                 
CODE_29E6E5:        F0 03         BEQ CODE_29E6EA           
CODE_29E6E7:        18            CLC                       
CODE_29E6E8:        69 23         ADC #$23                  
CODE_29E6EA:        A0 00         LDY #$00                  
CODE_29E6EC:        AA            TAX                       
CODE_29E6ED:        BD 80 1D      LDA $1D80,x               
CODE_29E6F0:        18            CLC                       
CODE_29E6F1:        6D 22 04      ADC $0422                 
CODE_29E6F4:        9D 80 1D      STA $1D80,x               
CODE_29E6F7:        C9 64         CMP #$64                  
CODE_29E6F9:        90 11         BCC CODE_29E70C           
CODE_29E6FB:        38            SEC                       
CODE_29E6FC:        E9 64         SBC #$64                  
CODE_29E6FE:        9D 80 1D      STA $1D80,x               
CODE_29E701:        AE 26 07      LDX $0726                 
CODE_29E704:        FE 36 07      INC $0736,x               
CODE_29E707:        A9 05         LDA #$05                  
CODE_29E709:        8D 03 12      STA $1203                 
CODE_29E70C:        C9 0A         CMP #$0A                  
CODE_29E70E:        30 06         BMI CODE_29E716           
CODE_29E710:        38            SEC                       
CODE_29E711:        E9 0A         SBC #$0A                  
CODE_29E713:        C8            INY                       
CODE_29E714:        80 F6         BRA CODE_29E70C           

CODE_29E716:        AE 00 16      LDX $1600                 
CODE_29E719:        09 90         ORA #$90                  
CODE_29E71B:        8D 49 1F      STA $1F49                 
CODE_29E71E:        98            TYA                       
CODE_29E71F:        D0 04         BNE CODE_29E725           
CODE_29E721:        A9 AD         LDA #$AD                  
CODE_29E723:        80 02         BRA CODE_29E727           

CODE_29E725:        09 90         ORA #$90                  
CODE_29E727:        8D 48 1F      STA $1F48                 
CODE_29E72A:        A9 00         LDA #$00                  
CODE_29E72C:        8D 22 04      STA $0422                 
CODE_29E72F:        60            RTS                       

CODE_29E730:        AC 00 16      LDY $1600                 
CODE_29E733:        AE 27 07      LDX $0727                 
CODE_29E736:        E8            INX                       
CODE_29E737:        8A            TXA                       
CODE_29E738:        09 90         ORA #$90                  
CODE_29E73A:        99 06 16      STA $1606,y               
CODE_29E73D:        A9 22         LDA #$22                  
CODE_29E73F:        99 07 16      STA $1607,y               
CODE_29E742:        A9 FF         LDA #$FF                  
CODE_29E744:        99 08 16      STA $1608,y               
CODE_29E747:        A2 0F         LDX #$0F                  
CODE_29E749:        8A            TXA                       
CODE_29E74A:        99 02 16      STA $1602,y               
CODE_29E74D:        A9 26         LDA #$26                  
CODE_29E74F:        99 03 16      STA $1603,y               
CODE_29E752:        A9 00         LDA #$00                  
CODE_29E754:        99 04 16      STA $1604,y               
CODE_29E757:        A9 01         LDA #$01                  
CODE_29E759:        99 05 16      STA $1605,y               
CODE_29E75C:        AD 00 16      LDA $1600                 
CODE_29E75F:        18            CLC                       
CODE_29E760:        69 06         ADC #$06                  
CODE_29E762:        8D 00 16      STA $1600                 
CODE_29E765:        6B            RTL                       

CODE_29E766:        AD 26 07      LDA $0726                 
CODE_29E769:        0A            ASL A                     
CODE_29E76A:        AA            TAX                       
CODE_29E76B:        A9 01         LDA #$01                  
CODE_29E76D:        85 0E         STA $0E                   
CODE_29E76F:        AC 00 16      LDY $1600                 
CODE_29E772:        BD EB EF      LDA.w DATA_21EFEB,x               
CODE_29E775:        99 06 16      STA $1606,y               
CODE_29E778:        A9 22         LDA #$22                  
CODE_29E77A:        99 07 16      STA $1607,y               
CODE_29E77D:        E8            INX                       
CODE_29E77E:        C8            INY                       
CODE_29E77F:        C8            INY                       
CODE_29E780:        C6 0E         DEC $0E                   
CODE_29E782:        10 EE         BPL CODE_29E772           
CODE_29E784:        A9 FF         LDA #$FF                  
CODE_29E786:        99 06 16      STA $1606,y               
CODE_29E789:        AC 00 16      LDY $1600                 
CODE_29E78C:        A9 0F         LDA #$0F                  
CODE_29E78E:        99 02 16      STA $1602,y               
CODE_29E791:        A9 42         LDA #$42                  
CODE_29E793:        99 03 16      STA $1603,y               
CODE_29E796:        A9 00         LDA #$00                  
CODE_29E798:        99 04 16      STA $1604,y               
CODE_29E79B:        A9 03         LDA #$03                  
CODE_29E79D:        99 05 16      STA $1605,y               
CODE_29E7A0:        AD 00 16      LDA $1600                 
CODE_29E7A3:        18            CLC                       
CODE_29E7A4:        69 08         ADC #$08                  
CODE_29E7A6:        8D 00 16      STA $1600                 
CODE_29E7A9:        6B            RTL                       

CODE_29E7AA:        AD 17 07      LDA $0717                 
CODE_29E7AD:        18            CLC                       
CODE_29E7AE:        6D 9C 06      ADC $069C                 
CODE_29E7B1:        8D 17 07      STA $0717                 
CODE_29E7B4:        85 00         STA $00                   
CODE_29E7B6:        AD 16 07      LDA $0716                 
CODE_29E7B9:        6D 9D 06      ADC $069D                 
CODE_29E7BC:        8D 16 07      STA $0716                 
CODE_29E7BF:        85 01         STA $01                   
CODE_29E7C1:        AD 15 07      LDA $0715                 
CODE_29E7C4:        69 00         ADC #$00                  
CODE_29E7C6:        8D 15 07      STA $0715                 
CODE_29E7C9:        85 02         STA $02                   
CODE_29E7CB:        A0 00         LDY #$00                  
CODE_29E7CD:        A2 05         LDX #$05                  
CODE_29E7CF:        A5 00         LDA $00                   
CODE_29E7D1:        38            SEC                       
CODE_29E7D2:        FF 0C F0 21   SBC.l DATA_21F00C,x             
CODE_29E7D6:        85 00         STA $00                   
CODE_29E7D8:        A5 01         LDA $01                   
CODE_29E7DA:        FF 06 F0 21   SBC.l DATA_21F006,x             
CODE_29E7DE:        85 01         STA $01                   
CODE_29E7E0:        A5 02         LDA $02                   
CODE_29E7E2:        FF 00 F0 21   SBC.l DATA_21F000,x             
CODE_29E7E6:        85 02         STA $02                   
CODE_29E7E8:        90 05         BCC CODE_29E7EF           
CODE_29E7EA:        EE 9E 06      INC $069E                 
CODE_29E7ED:        80 E0         BRA CODE_29E7CF           

CODE_29E7EF:        A5 00         LDA $00                   
CODE_29E7F1:        18            CLC                       
CODE_29E7F2:        7F 0C F0 21   ADC.l DATA_21F00C,x             
CODE_29E7F6:        85 00         STA $00                   
CODE_29E7F8:        A5 01         LDA $01                   
CODE_29E7FA:        7F 06 F0 21   ADC.l DATA_21F006,x             
CODE_29E7FE:        85 01         STA $01                   
CODE_29E800:        A5 02         LDA $02                   
CODE_29E802:        7F 00 F0 21   ADC.l DATA_21F000,x             
CODE_29E806:        85 02         STA $02                   
CODE_29E808:        AD 9E 06      LDA $069E                 
CODE_29E80B:        09 90         ORA #$90                  
CODE_29E80D:        99 4C 1F      STA $1F4C,y               
CODE_29E810:        A9 00         LDA #$00                  
CODE_29E812:        8D 9E 06      STA $069E                 
CODE_29E815:        C8            INY                       
CODE_29E816:        CA            DEX                       
CODE_29E817:        10 B6         BPL CODE_29E7CF           
CODE_29E819:        AD 4C 1F      LDA $1F4C                 
CODE_29E81C:        C9 9A         CMP #$9A                  
CODE_29E81E:        90 15         BCC CODE_29E835           
CODE_29E820:        A2 02         LDX #$02                  
CODE_29E822:        BD 12 F0      LDA.w DATA_21F012,x               
CODE_29E825:        9D 15 07      STA $0715,x               
CODE_29E828:        CA            DEX                       
CODE_29E829:        10 F7         BPL CODE_29E822           
CODE_29E82B:        A2 05         LDX #$05                  
CODE_29E82D:        A9 99         LDA #$99                  
CODE_29E82F:        9D 4C 1F      STA $1F4C,x               
CODE_29E832:        CA            DEX                       
CODE_29E833:        10 FA         BPL CODE_29E82F           
CODE_29E835:        9C 9C 06      STZ $069C                 
CODE_29E838:        9C 9D 06      STZ $069D                 
CODE_29E83B:        6B            RTL                       

CODE_29E83C:        AE 00 16      LDX $1600                 
CODE_29E83F:        A0 00         LDY #$00                  
CODE_29E841:        B9 EF EF      LDA.w DATA_21EFEF,y               
CODE_29E844:        9D 02 16      STA $1602,x               
CODE_29E847:        E8            INX                       
CODE_29E848:        C8            INY                       
CODE_29E849:        C0 11         CPY #$11                  
CODE_29E84B:        D0 F4         BNE CODE_29E841           
CODE_29E84D:        AE 00 16      LDX $1600                 
CODE_29E850:        A0 00         LDY #$00                  
CODE_29E852:        B9 4C 1F      LDA $1F4C,y               
CODE_29E855:        9D 06 16      STA $1606,x               
CODE_29E858:        E8            INX                       
CODE_29E859:        E8            INX                       
CODE_29E85A:        C8            INY                       
CODE_29E85B:        C0 06         CPY #$06                  
CODE_29E85D:        D0 F3         BNE CODE_29E852           
CODE_29E85F:        AC 00 16      LDY $1600                 
CODE_29E862:        98            TYA                       
CODE_29E863:        18            CLC                       
CODE_29E864:        69 10         ADC #$10                  
CODE_29E866:        8D 00 16      STA $1600                 
CODE_29E869:        60            RTS                       

CODE_29E86A:        A0 00         LDY #$00                  
CODE_29E86C:        A9 01         LDA #$01                  
CODE_29E86E:        85 0E         STA $0E                   
CODE_29E870:        A2 9F         LDX #$9F                  
CODE_29E872:        AD 13 04      LDA $0413                 
CODE_29E875:        25 0E         AND $0E                   
CODE_29E877:        F0 01         BEQ CODE_29E87A           
CODE_29E879:        CA            DEX                       
CODE_29E87A:        8A            TXA                       
CODE_29E87B:        99 40 1F      STA $1F40,y               
CODE_29E87E:        C8            INY                       
CODE_29E87F:        06 0E         ASL $0E                   
CODE_29E881:        A5 0E         LDA $0E                   
CODE_29E883:        C9 40         CMP #$40                  
CODE_29E885:        D0 E9         BNE CODE_29E870           
CODE_29E887:        A9 8C         LDA #$8C                  
CODE_29E889:        99 40 1F      STA $1F40,y               
CODE_29E88C:        A2 8D         LDX #$8D                  
CODE_29E88E:        AD 13 04      LDA $0413                 
CODE_29E891:        25 0E         AND $0E                   
CODE_29E893:        F0 11         BEQ CODE_29E8A6           
CODE_29E895:        CE 14 07      DEC $0714                 
CODE_29E898:        AD 14 07      LDA $0714                 
CODE_29E89B:        29 08         AND #$08                  
CODE_29E89D:        D0 07         BNE CODE_29E8A6           
CODE_29E89F:        A9 8E         LDA #$8E                  
CODE_29E8A1:        99 40 1F      STA $1F40,y               
CODE_29E8A4:        1A            INC A                     
CODE_29E8A5:        AA            TAX                       
CODE_29E8A6:        8A            TXA                       
CODE_29E8A7:        99 41 1F      STA $1F41,y               
CODE_29E8AA:        60            RTS                       

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

CODE_29E8AB:        A5 38         LDA $38                   ;
CODE_29E8AD:        8D 14 43      STA $4314                 ;
CODE_29E8B0:        C2 10         REP #$10                  ;
CODE_29E8B2:        A0 00 00      LDY #$0000                ;
CODE_29E8B5:        B7 36         LDA [$36],y               ;
CODE_29E8B7:        10 03         BPL CODE_29E8BC           ;
CODE_29E8B9:        E2 30         SEP #$30                  ;
CODE_29E8BB:        6B            RTL                       ;

CODE_29E8BC:        64 06         STZ $06                   ;
CODE_29E8BE:        85 04         STA $04                   ;
CODE_29E8C0:        C8            INY                       ;
CODE_29E8C1:        B7 36         LDA [$36],y               ;
CODE_29E8C3:        85 03         STA $03                   ;
CODE_29E8C5:        C8            INY                       ;
CODE_29E8C6:        B7 36         LDA [$36],y               ;
CODE_29E8C8:        29 80         AND #$80                  ;
CODE_29E8CA:        0A            ASL A                     ;
CODE_29E8CB:        2A            ROL A                     ;
CODE_29E8CC:        85 07         STA $07                   ;
CODE_29E8CE:        B7 36         LDA [$36],y               ;
CODE_29E8D0:        29 40         AND #$40                  ;
CODE_29E8D2:        85 05         STA $05                   ;
CODE_29E8D4:        4A            LSR A                     ;
CODE_29E8D5:        4A            LSR A                     ;
CODE_29E8D6:        4A            LSR A                     ;
CODE_29E8D7:        09 01         ORA #$01                  ;
CODE_29E8D9:        8D 10 43      STA $4310                 ;
CODE_29E8DC:        A9 18         LDA #$18                  ;
CODE_29E8DE:        8D 11 43      STA $4311                 ;
CODE_29E8E1:        C2 20         REP #$20                  ;
CODE_29E8E3:        A5 03         LDA $03                   ;
CODE_29E8E5:        8D 16 21      STA $2116                 ;
CODE_29E8E8:        B7 36         LDA [$36],y               ;
CODE_29E8EA:        EB            XBA                       ;
CODE_29E8EB:        29 FF 3F      AND #$3FFF                ;
CODE_29E8EE:        AA            TAX                       ;
CODE_29E8EF:        E8            INX                       ;
CODE_29E8F0:        8E 15 43      STX $4315                 ;
CODE_29E8F3:        C8            INY                       ;
CODE_29E8F4:        C8            INY                       ;
CODE_29E8F5:        98            TYA                       ;
CODE_29E8F6:        18            CLC                       ;
CODE_29E8F7:        65 36         ADC $36                   ;
CODE_29E8F9:        8D 12 43      STA $4312                 ;
CODE_29E8FC:        A5 05         LDA $05                   ;
CODE_29E8FE:        F0 34         BEQ CODE_29E934           ;
CODE_29E900:        E8            INX                       ;
CODE_29E901:        8A            TXA                       ;
CODE_29E902:        4A            LSR A                     ;
CODE_29E903:        AA            TAX                       ;
CODE_29E904:        8E 15 43      STX $4315                 ;
CODE_29E907:        E2 20         SEP #$20                  ;
CODE_29E909:        A5 05         LDA $05                   ;
CODE_29E90B:        4A            LSR A                     ;
CODE_29E90C:        4A            LSR A                     ;
CODE_29E90D:        4A            LSR A                     ;
CODE_29E90E:        8D 10 43      STA $4310                 ;
CODE_29E911:        A5 07         LDA $07                   ;
CODE_29E913:        8D 15 21      STA $2115                 ;
CODE_29E916:        A9 02         LDA #$02                  ;
CODE_29E918:        8D 0B 42      STA $420B                 ;
CODE_29E91B:        A9 19         LDA #$19                  ;
CODE_29E91D:        8D 11 43      STA $4311                 ;
CODE_29E920:        C2 21         REP #$21                  ;
CODE_29E922:        98            TYA                       ;
CODE_29E923:        65 36         ADC $36                   ;
CODE_29E925:        1A            INC A                     ;
CODE_29E926:        8D 12 43      STA $4312                 ;
CODE_29E929:        A5 03         LDA $03                   ;
CODE_29E92B:        8D 16 21      STA $2116                 ;
CODE_29E92E:        8E 15 43      STX $4315                 ;
CODE_29E931:        A2 02         LDX #$0002                ;
CODE_29E934:        86 03         STX $03                   ;
CODE_29E936:        98            TYA                       ;
CODE_29E937:        18            CLC                       ;
CODE_29E938:        65 03         ADC $03                   ;
CODE_29E93A:        A8            TAY                       ;
CODE_29E93B:        E2 20         SEP #$20                  ;
CODE_29E93D:        A5 07         LDA $07                   ;
CODE_29E93F:        09 80         ORA #$80                  ;
CODE_29E941:        8D 15 21      STA $2115                 ;
CODE_29E944:        A9 02         LDA #$02                  ;
CODE_29E946:        8D 0B 42      STA $420B                 ;
CODE_29E949:        B7 36         LDA [$36],y               ;
CODE_29E94B:        30 03         BMI CODE_29E950           ;
CODE_29E94D:        4C BE E8      JMP CODE_29E8BE           ;

CODE_29E950:        E2 30         SEP #$30                  ;
CODE_29E952:        6B            RTL                       ;

CODE_29E953:        AD 80 03      LDA $0380                 
CODE_29E956:        30 4A         BMI CODE_29E9A2           
CODE_29E958:        C2 20         REP #$20                  
CODE_29E95A:        AD 80 03      LDA $0380                 
CODE_29E95D:        EB            XBA                       
CODE_29E95E:        8D 16 21      STA $2116                 
CODE_29E961:        A2 81         LDX #$81                  
CODE_29E963:        8E 15 21      STX $2115                 
CODE_29E966:        A9 01 18      LDA #$1801                
CODE_29E969:        8D 00 43      STA $4300                 
CODE_29E96C:        A9 82 03      LDA #$0382                
CODE_29E96F:        8D 02 43      STA $4302                 
CODE_29E972:        A2 00         LDX #$00                  
CODE_29E974:        8E 04 43      STX $4304                 
CODE_29E977:        A9 40 00      LDA #$0040                
CODE_29E97A:        8D 05 43      STA $4305                 
CODE_29E97D:        A2 01         LDX #$01                  
CODE_29E97F:        8E 0B 42      STX $420B                 
CODE_29E982:        AD 80 03      LDA $0380                 
CODE_29E985:        EB            XBA                       
CODE_29E986:        09 00 08      ORA #$0800                
CODE_29E989:        8D 16 21      STA $2116                 
CODE_29E98C:        A9 C2 03      LDA #$03C2                
CODE_29E98F:        8D 02 43      STA $4302                 
CODE_29E992:        A9 2C 00      LDA #$002C                
CODE_29E995:        8D 05 43      STA $4305                 
CODE_29E998:        8E 0B 42      STX $420B                 
CODE_29E99B:        E2 20         SEP #$20                  
CODE_29E99D:        A9 FF         LDA #$FF                  
CODE_29E99F:        8D 80 03      STA $0380                 
CODE_29E9A2:        6B            RTL                       

CODE_29E9A3:        AF 00 20 7F   LDA $7F2000               
CODE_29E9A7:        30 4E         BMI CODE_29E9F7           
CODE_29E9A9:        A2 81         LDX #$81                  
CODE_29E9AB:        8E 15 21      STX $2115                 
CODE_29E9AE:        C2 20         REP #$20                  
CODE_29E9B0:        AF 00 20 7F   LDA $7F2000               
CODE_29E9B4:        EB            XBA                       
CODE_29E9B5:        8D 16 21      STA $2116                 
CODE_29E9B8:        A9 01 18      LDA #$1801                
CODE_29E9BB:        8D 00 43      STA $4300                 
CODE_29E9BE:        A9 02 20      LDA #$2002                
CODE_29E9C1:        8D 02 43      STA $4302                 
CODE_29E9C4:        A2 7F         LDX #$7F                  
CODE_29E9C6:        8E 04 43      STX $4304                 
CODE_29E9C9:        A9 40 00      LDA #$0040                
CODE_29E9CC:        8D 05 43      STA $4305                 
CODE_29E9CF:        A2 01         LDX #$01                  
CODE_29E9D1:        8E 0B 42      STX $420B                 
CODE_29E9D4:        AF 00 20 7F   LDA $7F2000               
CODE_29E9D8:        EB            XBA                       
CODE_29E9D9:        18            CLC                       
CODE_29E9DA:        69 00 08      ADC #$0800                
CODE_29E9DD:        8D 16 21      STA $2116                 
CODE_29E9E0:        A9 42 20      LDA #$2042                
CODE_29E9E3:        8D 02 43      STA $4302                 
CODE_29E9E6:        A9 2C 00      LDA #$002C                
CODE_29E9E9:        8D 05 43      STA $4305                 
CODE_29E9EC:        8E 0B 42      STX $420B                 
CODE_29E9EF:        E2 20         SEP #$20                  
CODE_29E9F1:        A9 FF         LDA #$FF                  
CODE_29E9F3:        8F 00 20 7F   STA $7F2000               
CODE_29E9F7:        6B            RTL                       

CODE_29E9F8:        AF 00 20 7F   LDA $7F2000               
CODE_29E9FC:        30 33         BMI CODE_29EA31           
CODE_29E9FE:        C2 20         REP #$20                  
CODE_29EA00:        AF 00 20 7F   LDA $7F2000               
CODE_29EA04:        EB            XBA                       
CODE_29EA05:        8D 16 21      STA $2116                 
CODE_29EA08:        A2 80         LDX #$80                  
CODE_29EA0A:        8E 15 21      STX $2115                 
CODE_29EA0D:        A9 01 18      LDA #$1801                
CODE_29EA10:        8D 00 43      STA $4300                 
CODE_29EA13:        A9 02 20      LDA #$2002                
CODE_29EA16:        8D 02 43      STA $4302                 
CODE_29EA19:        A2 7F         LDX #$7F                  
CODE_29EA1B:        8E 04 43      STX $4304                 
CODE_29EA1E:        A9 40 00      LDA #$0040                
CODE_29EA21:        8D 05 43      STA $4305                 
CODE_29EA24:        A2 01         LDX #$01                  
CODE_29EA26:        8E 0B 42      STX $420B                 
CODE_29EA29:        E2 20         SEP #$20                  
CODE_29EA2B:        A9 FF         LDA #$FF                  
CODE_29EA2D:        8F 00 20 7F   STA $7F2000               
CODE_29EA31:        6B            RTL                       

CODE_29EA32:        AD 80 03      LDA $0380                 
CODE_29EA35:        30 31         BMI CODE_29EA68           
CODE_29EA37:        A2 80         LDX #$80                  
CODE_29EA39:        8E 15 21      STX $2115                 
CODE_29EA3C:        C2 20         REP #$20                  
CODE_29EA3E:        AD 80 03      LDA $0380                 
CODE_29EA41:        EB            XBA                       
CODE_29EA42:        8D 16 21      STA $2116                 
CODE_29EA45:        A9 01 18      LDA #$1801                
CODE_29EA48:        8D 00 43      STA $4300                 
CODE_29EA4B:        A9 82 03      LDA #$0382                
CODE_29EA4E:        8D 02 43      STA $4302                 
CODE_29EA51:        A2 00         LDX #$00                  
CODE_29EA53:        8E 04 43      STX $4304                 
CODE_29EA56:        A9 40 00      LDA #$0040                
CODE_29EA59:        8D 05 43      STA $4305                 
CODE_29EA5C:        A2 01         LDX #$01                  
CODE_29EA5E:        8E 0B 42      STX $420B                 
CODE_29EA61:        E2 20         SEP #$20                  
CODE_29EA63:        A9 FF         LDA #$FF                  
CODE_29EA65:        8D 80 03      STA $0380                 
CODE_29EA68:        6B            RTL                       

CODE_29EA69:        AC 6C 03      LDY $036C                 
CODE_29EA6C:        30 FA         BMI CODE_29EA68           
CODE_29EA6E:        A2 80         LDX #$80                  
CODE_29EA70:        8E 15 21      STX $2115                 
CODE_29EA73:        8C 17 21      STY $2117                 
CODE_29EA76:        AD 6D 03      LDA $036D                 
CODE_29EA79:        8D 16 21      STA $2116                 
CODE_29EA7C:        18            CLC                       
CODE_29EA7D:        69 20         ADC #$20                  
CODE_29EA7F:        AA            TAX                       
CODE_29EA80:        C2 20         REP #$20                  
CODE_29EA82:        AD 6E 03      LDA $036E                 
CODE_29EA85:        8D 18 21      STA $2118                 
CODE_29EA88:        AD 70 03      LDA $0370                 
CODE_29EA8B:        8D 18 21      STA $2118                 
CODE_29EA8E:        8E 16 21      STX $2116                 
CODE_29EA91:        AD 72 03      LDA $0372                 
CODE_29EA94:        8D 18 21      STA $2118                 
CODE_29EA97:        AD 74 03      LDA $0374                 
CODE_29EA9A:        8D 18 21      STA $2118                 
CODE_29EA9D:        E2 20         SEP #$20                  
CODE_29EA9F:        A9 FF         LDA #$FF                  
CODE_29EAA1:        8D 6C 03      STA $036C                 
CODE_29EAA4:        6B            RTL                       

CODE_29EAA5:        20 6A E8      JSR CODE_29E86A           
CODE_29EAA8:        20 E0 E6      JSR CODE_29E6E0           
CODE_29EAAB:        20 AA E6      JSR CODE_29E6AA           
CODE_29EAAE:        22 AA E7 29   JSL CODE_29E7AA           
CODE_29EAB2:        20 FE E5      JSR CODE_29E5FE           
CODE_29EAB5:        A2 00         LDX #$00                  
CODE_29EAB7:        AC 00 16      LDY $1600                 
CODE_29EABA:        F0 07         BEQ CODE_29EAC3           
CODE_29EABC:        8A            TXA                       
CODE_29EABD:        8F 54 39 7E   STA $7E3954               
CODE_29EAC1:        80 14         BRA CODE_29EAD7           

CODE_29EAC3:        AF 54 39 7E   LDA $7E3954               
CODE_29EAC7:        1A            INC A                     
CODE_29EAC8:        8F 54 39 7E   STA $7E3954               
CODE_29EACC:        29 01         AND #$01                  
CODE_29EACE:        D0 07         BNE CODE_29EAD7           
CODE_29EAD0:        A9 00         LDA #$00                  
CODE_29EAD2:        8F 54 39 7E   STA $7E3954               
CODE_29EAD6:        6B            RTL                       

CODE_29EAD7:        BF 2A F0 21   LDA.l DATA_21F02A,x             
CODE_29EADB:        99 02 16      STA $1602,y               
CODE_29EADE:        C8            INY                       
CODE_29EADF:        E8            INX                       
CODE_29EAE0:        E0 3F         CPX #$3F                  
CODE_29EAE2:        D0 F3         BNE CODE_29EAD7           
CODE_29EAE4:        AC 00 16      LDY $1600                 
CODE_29EAE7:        A2 00         LDX #$00                  
CODE_29EAE9:        BD 40 1F      LDA $1F40,x               
CODE_29EAEC:        99 06 16      STA $1606,y               
CODE_29EAEF:        C8            INY                       
CODE_29EAF0:        C8            INY                       
CODE_29EAF1:        E8            INX                       
CODE_29EAF2:        E0 08         CPX #$08                  
CODE_29EAF4:        D0 F3         BNE CODE_29EAE9           
CODE_29EAF6:        AC 00 16      LDY $1600                 
CODE_29EAF9:        AD 48 1F      LDA $1F48                 
CODE_29EAFC:        99 1A 16      STA $161A,y               
CODE_29EAFF:        AD 49 1F      LDA $1F49                 
CODE_29EB02:        99 1C 16      STA $161C,y               
CODE_29EB05:        AC 00 16      LDY $1600                 
CODE_29EB08:        AD 4A 1F      LDA $1F4A                 
CODE_29EB0B:        99 22 16      STA $1622,y               
CODE_29EB0E:        AD 4B 1F      LDA $1F4B                 
CODE_29EB11:        99 24 16      STA $1624,y               
CODE_29EB14:        AC 00 16      LDY $1600                 
CODE_29EB17:        A2 00         LDX #$00                  
CODE_29EB19:        BD 4C 1F      LDA $1F4C,x               
CODE_29EB1C:        99 28 16      STA $1628,y               
CODE_29EB1F:        C8            INY                       
CODE_29EB20:        C8            INY                       
CODE_29EB21:        E8            INX                       
CODE_29EB22:        E0 06         CPX #$06                  
CODE_29EB24:        D0 F3         BNE CODE_29EB19           
CODE_29EB26:        AC 00 16      LDY $1600                 
CODE_29EB29:        A2 00         LDX #$00                  
CODE_29EB2B:        BD 52 1F      LDA $1F52,x               
CODE_29EB2E:        99 3A 16      STA $163A,y               
CODE_29EB31:        C8            INY                       
CODE_29EB32:        C8            INY                       
CODE_29EB33:        E8            INX                       
CODE_29EB34:        E0 03         CPX #$03                  
CODE_29EB36:        D0 F3         BNE CODE_29EB2B           
CODE_29EB38:        AD 00 16      LDA $1600                 
CODE_29EB3B:        18            CLC                       
CODE_29EB3C:        69 3E         ADC #$3E                  
CODE_29EB3E:        8D 00 16      STA $1600                 
CODE_29EB41:        6B            RTL                       

CODE_29EB42:        A0 00         LDY #$00                  
CODE_29EB44:        B7 31         LDA [$31],y               
CODE_29EB46:        99 40 1B      STA $1B40,y               
CODE_29EB49:        C8            INY                       
CODE_29EB4A:        B7 31         LDA [$31],y               
CODE_29EB4C:        99 40 1B      STA $1B40,y               
CODE_29EB4F:        C9 FF         CMP #$FF                  
CODE_29EB51:        F0 0F         BEQ CODE_29EB62           
CODE_29EB53:        C8            INY                       
CODE_29EB54:        B7 31         LDA [$31],y               
CODE_29EB56:        99 40 1B      STA $1B40,y               
CODE_29EB59:        C8            INY                       
CODE_29EB5A:        B7 31         LDA [$31],y               
CODE_29EB5C:        99 40 1B      STA $1B40,y               
CODE_29EB5F:        4C 49 EB      JMP CODE_29EB49           

CODE_29EB62:        6B            RTL                       

CODE_29EB63:        C2 20         REP #$20                  
CODE_29EB65:        A9 00 7C      LDA #$7C00                
CODE_29EB68:        8D 3E 02      STA $023E                 
CODE_29EB6B:        A9 00 B0      LDA #$B000                
CODE_29EB6E:        8D 40 02      STA $0240                 
CODE_29EB71:        A2 38         LDX #$38                  
CODE_29EB73:        8E 42 02      STX $0242                 
CODE_29EB76:        A9 00 08      LDA #$0800                
CODE_29EB79:        8D CA 02      STA $02CA                 
CODE_29EB7C:        E2 20         SEP #$20                  
CODE_29EB7E:        60            RTS                       

CODE_29EB7F:        C2 20         REP #$20                  
CODE_29EB81:        A9 00 7C      LDA #$7C00                
CODE_29EB84:        8D 3E 02      STA $023E                 
CODE_29EB87:        A9 00 B8      LDA #$B800                
CODE_29EB8A:        8D 40 02      STA $0240                 
CODE_29EB8D:        A2 3F         LDX #$3F                  
CODE_29EB8F:        8E 42 02      STX $0242                 
CODE_29EB92:        A9 00 08      LDA #$0800                
CODE_29EB95:        8D CA 02      STA $02CA                 
CODE_29EB98:        E2 20         SEP #$20                  
CODE_29EB9A:        60            RTS                       

CODE_29EB9B:        C2 20         REP #$20                  
CODE_29EB9D:        A9 00 7C      LDA #$7C00                
CODE_29EBA0:        8D 3E 02      STA $023E                 
CODE_29EBA3:        A9 00 F8      LDA #$F800                
CODE_29EBA6:        8D 40 02      STA $0240                 
CODE_29EBA9:        A2 38         LDX #$38                  
CODE_29EBAB:        8E 42 02      STX $0242                 
CODE_29EBAE:        A9 00 08      LDA #$0800                
CODE_29EBB1:        8D CA 02      STA $02CA                 
CODE_29EBB4:        E2 20         SEP #$20                  
CODE_29EBB6:        60            RTS                       

CODE_29EBB7:        DA            PHX                       
CODE_29EBB8:        5A            PHY                       
CODE_29EBB9:        AD 8C 02      LDA $028C                 
CODE_29EBBC:        D0 2C         BNE CODE_29EBEA           
CODE_29EBBE:        20 63 EB      JSR CODE_29EB63           
CODE_29EBC1:        20 53 F1      JSR CODE_29F153           
CODE_29EBC4:        20 E1 F0      JSR CODE_29F0E1           
CODE_29EBC7:        20 16 EC      JSR CODE_29EC16           
CODE_29EBCA:        A9 01         LDA #$01                  
CODE_29EBCC:        8D 6D 39      STA $396D                 
CODE_29EBCF:        8D 8C 02      STA $028C                 
CODE_29EBD2:        9C 8E 02      STZ $028E                 
CODE_29EBD5:        9C 8F 02      STZ $028F                 
CODE_29EBD8:        9C 90 02      STZ $0290                 
CODE_29EBDB:        9C DD 02      STZ $02DD                 
CODE_29EBDE:        A9 F1         LDA #$F1                  
CODE_29EBE0:        8D 02 12      STA $1202                 
CODE_29EBE3:        A9 43         LDA #$43                  
CODE_29EBE5:        8D 00 12      STA $1200                 
CODE_29EBE8:        80 0A         BRA CODE_29EBF4           

CODE_29EBEA:        A9 11         LDA #$11                  
CODE_29EBEC:        8D 8B 02      STA $028B                 
CODE_29EBEF:        A9 03         LDA #$03                  
CODE_29EBF1:        8D 8C 02      STA $028C                 
CODE_29EBF4:        7A            PLY                       
CODE_29EBF5:        FA            PLX                       
CODE_29EBF6:        6B            RTL                       

CODE_29EBF7:        8B            PHB                       
CODE_29EBF8:        4B            PHK                       
CODE_29EBF9:        AB            PLB                       ;
CODE_29EBFA:        DA            PHX                       
CODE_29EBFB:        5A            PHY                       
CODE_29EBFC:        AD 8C 02      LDA $028C                 
CODE_29EBFF:        0A            ASL A                     
CODE_29EC00:        AA            TAX                       
CODE_29EC01:        BD 0E EC      LDA.w PNTR_29EC0E,x               
CODE_29EC04:        85 00         STA $00                   
CODE_29EC06:        BD 0F EC      LDA.w PNTR_29EC0E+1,x               
CODE_29EC09:        85 01         STA $01                   
CODE_29EC0B:        6C 00 00      JMP ($0000)               

PNTR_29EC0E:        dw $0000
                    dw CODE_29EFB3
                    dw CODE_29EC39
                    dw CODE_29F01F
   
CODE_29EC16:        C2 20         REP #$20           
CODE_29EC18:        A9 10 00      LDA #$0010
CODE_29EC1B:        8D 8B 02      STA $028B        
CODE_29EC1E:        A9 64 00      LDA #$0064
CODE_29EC21:        8D 81 02      STA $0281                 
CODE_29EC24:        A9 A4 00      LDA #$00A4         
CODE_29EC27:        8D 83 02      STA $0283
CODE_29EC2A:        A9 C0 00      LDA #$00C0                 
CODE_29EC2D:        8D 85 02      STA $0285
CODE_29EC30:        A9 D0 00      LDA #$00D0                
CODE_29EC33:        8D 89 02      STA $0289
CODE_29EC36:        E2 20         SEP #$20                  
CODE_29EC38:        60            RTS                       

CODE_29EC39:        C2 10         REP #$10                  
CODE_29EC3B:        A0 10 00      LDY #$0010                
CODE_29EC3E:        A2 00 00      LDX #$0000                
CODE_29EC41:        A9 48         LDA #$48                  
CODE_29EC43:        85 01         STA $01                   
CODE_29EC45:        A9 58         LDA #$58                  
CODE_29EC47:        85 00         STA $00                   
CODE_29EC49:        AD E5 02      LDA $02E5                 
CODE_29EC4C:        F0 05         BEQ CODE_29EC53           
CODE_29EC4E:        BD 64 EF      LDA.w DATA_29EF64,x               
CODE_29EC51:        80 03         BRA CODE_29EC56           

CODE_29EC53:        BD 15 EF      LDA.w DATA_29EF15,x               
CODE_29EC56:        10 18         BPL CODE_29EC70           
CODE_29EC58:        E8            INX                       
CODE_29EC59:        1A            INC A                     
CODE_29EC5A:        F0 49         BEQ CODE_29ECA5           
CODE_29EC5C:        A5 00         LDA $00                   
CODE_29EC5E:        18            CLC                       
CODE_29EC5F:        69 08         ADC #$08                  
CODE_29EC61:        85 00         STA $00                   
CODE_29EC63:        C9 C0         CMP #$C0                  
CODE_29EC65:        90 E2         BCC CODE_29EC49           
CODE_29EC67:        A5 01         LDA $01                   
CODE_29EC69:        18            CLC                       
CODE_29EC6A:        69 08         ADC #$08                  
CODE_29EC6C:        85 01         STA $01                   
CODE_29EC6E:        80 D5         BRA CODE_29EC45           

CODE_29EC70:        18            CLC                       
CODE_29EC71:        69 C0         ADC #$C0                  
CODE_29EC73:        99 02 08      STA $0802,y               
CODE_29EC76:        A5 00         LDA $00                   
CODE_29EC78:        99 00 08      STA $0800,y               
CODE_29EC7B:        A5 01         LDA $01                   
CODE_29EC7D:        99 01 08      STA $0801,y               
CODE_29EC80:        AD 98 05      LDA $0598                 
CODE_29EC83:        F0 04         BEQ CODE_29EC89           
CODE_29EC85:        A9 2B         LDA #$2B                  
CODE_29EC87:        80 02         BRA CODE_29EC8B           

CODE_29EC89:        A9 21         LDA #$21                  
CODE_29EC8B:        99 03 08      STA $0803,y               
CODE_29EC8E:        C2 20         REP #$20                  
CODE_29EC90:        5A            PHY                       
CODE_29EC91:        98            TYA                       
CODE_29EC92:        4A            LSR A                     
CODE_29EC93:        4A            LSR A                     
CODE_29EC94:        A8            TAY                       
CODE_29EC95:        A9 00 00      LDA #$0000                
CODE_29EC98:        99 20 0A      STA $0A20,y               
CODE_29EC9B:        7A            PLY                       
CODE_29EC9C:        E2 20         SEP #$20                  
CODE_29EC9E:        E8            INX                       
CODE_29EC9F:        C8            INY                       
CODE_29ECA0:        C8            INY                       
CODE_29ECA1:        C8            INY                       
CODE_29ECA2:        C8            INY                       
CODE_29ECA3:        80 B7         BRA CODE_29EC5C           

CODE_29ECA5:        A9 40         LDA #$40                  
CODE_29ECA7:        85 01         STA $01                   
CODE_29ECA9:        A9 40         LDA #$40                  
CODE_29ECAB:        85 00         STA $00                   
CODE_29ECAD:        A5 00         LDA $00                   
CODE_29ECAF:        99 00 08      STA $0800,y               
CODE_29ECB2:        18            CLC                       
CODE_29ECB3:        69 10         ADC #$10                  
CODE_29ECB5:        85 00         STA $00                   
CODE_29ECB7:        A5 01         LDA $01                   
CODE_29ECB9:        99 01 08      STA $0801,y               
CODE_29ECBC:        A9 CD         LDA #$CD                  
CODE_29ECBE:        99 02 08      STA $0802,y               
CODE_29ECC1:        AD 98 05      LDA $0598                 
CODE_29ECC4:        F0 04         BEQ CODE_29ECCA           
CODE_29ECC6:        A9 2B         LDA #$2B                  
CODE_29ECC8:        80 02         BRA CODE_29ECCC           

CODE_29ECCA:        A9 21         LDA #$21                  
CODE_29ECCC:        99 03 08      STA $0803,y               
CODE_29ECCF:        C2 20         REP #$20                  
CODE_29ECD1:        5A            PHY                       
CODE_29ECD2:        98            TYA                       
CODE_29ECD3:        4A            LSR A                     
CODE_29ECD4:        4A            LSR A                     
CODE_29ECD5:        A8            TAY                       
CODE_29ECD6:        A9 02 00      LDA #$0002                
CODE_29ECD9:        99 20 0A      STA $0A20,y               
CODE_29ECDC:        7A            PLY                       
CODE_29ECDD:        E2 20         SEP #$20                  
CODE_29ECDF:        C8            INY                       
CODE_29ECE0:        C8            INY                       
CODE_29ECE1:        C8            INY                       
CODE_29ECE2:        C8            INY                       
CODE_29ECE3:        A5 00         LDA $00                   
CODE_29ECE5:        C9 D0         CMP #$D0                  
CODE_29ECE7:        90 C4         BCC CODE_29ECAD           
CODE_29ECE9:        A5 01         LDA $01                   
CODE_29ECEB:        C9 80         CMP #$80                  
CODE_29ECED:        B0 07         BCS CODE_29ECF6                   
CODE_29ECEF:        18            CLC                       
CODE_29ECF0:        69 10         ADC #$10                  
CODE_29ECF2:        85 01         STA $01                   
CODE_29ECF4:        80 B3         BRA CODE_29ECA9           

CODE_29ECF6:        E2 10         SEP #$10                  
CODE_29ECF8:        A0 00         LDY #$00                  
CODE_29ECFA:        AD E5 02      LDA $02E5                 
CODE_29ECFD:        D0 03         BNE CODE_29ED02           
CODE_29ECFF:        4C 07 EE      JMP CODE_29EE07           

CODE_29ED02:        AE 26 07      LDX $0726                 
CODE_29ED05:        B5 F6         LDA $F6,x                 
CODE_29ED07:        29 2C         AND #$2C                  
CODE_29ED09:        85 0F         STA $0F                   
CODE_29ED0B:        AD 8C 02      LDA $028C                 
CODE_29ED0E:        C9 01         CMP #$01                  
CODE_29ED10:        F0 38         BEQ CODE_29ED4A           
CODE_29ED12:        A5 0F         LDA $0F                   
CODE_29ED14:        29 20         AND #$20                  
CODE_29ED16:        F0 0A         BEQ CODE_29ED22           
CODE_29ED18:        A9 01         LDA #$01                  
CODE_29ED1A:        4D 8E 02      EOR $028E                 
CODE_29ED1D:        8D 8E 02      STA $028E                 
CODE_29ED20:        80 20         BRA CODE_29ED42           

CODE_29ED22:        A5 0F         LDA $0F                   
CODE_29ED24:        29 08         AND #$08                  
CODE_29ED26:        F0 0A         BEQ CODE_29ED32           
CODE_29ED28:        AD 8E 02      LDA $028E                 
CODE_29ED2B:        F0 1D         BEQ CODE_29ED4A           
CODE_29ED2D:        9C 8E 02      STZ $028E                 
CODE_29ED30:        80 10         BRA CODE_29ED42           

CODE_29ED32:        A5 0F         LDA $0F                   
CODE_29ED34:        29 04         AND #$04                  
CODE_29ED36:        F0 12         BEQ CODE_29ED4A           
CODE_29ED38:        AD 8E 02      LDA $028E                 
CODE_29ED3B:        D0 0D         BNE CODE_29ED4A           
CODE_29ED3D:        A9 01         LDA #$01                  
CODE_29ED3F:        8D 8E 02      STA $028E                 
CODE_29ED42:        A9 01         LDA #$01                  
CODE_29ED44:        8D 03 12      STA $1203                 
CODE_29ED47:        9C 8F 02      STZ $028F                 
CODE_29ED4A:        EE 8F 02      INC $028F                 
CODE_29ED4D:        A9 5C         LDA #$5C                  
CODE_29ED4F:        99 00 08      STA $0800,y               
CODE_29ED52:        AE 8E 02      LDX $028E                 
CODE_29ED55:        BD 11 EF      LDA.w DATA_29EF11,x               
CODE_29ED58:        99 01 08      STA $0801,y               
CODE_29ED5B:        AD 8F 02      LDA $028F                 
CODE_29ED5E:        29 10         AND #$10                  
CODE_29ED60:        4A            LSR A                     
CODE_29ED61:        4A            LSR A                     
CODE_29ED62:        4A            LSR A                     
CODE_29ED63:        4A            LSR A                     
CODE_29ED64:        AA            TAX                       
CODE_29ED65:        BD 13 EF      LDA.w DATA_29EF13,x               
CODE_29ED68:        99 02 08      STA $0802,y               
CODE_29ED6B:        A9 23         LDA #$23                  
CODE_29ED6D:        99 03 08      STA $0803,y               
CODE_29ED70:        A9 00         LDA #$00                  
CODE_29ED72:        99 20 0A      STA $0A20,y               
CODE_29ED75:        AD 8C 02      LDA $028C                 
CODE_29ED78:        C9 01         CMP #$01                  
CODE_29ED7A:        F0 39         BEQ CODE_29EDB5           
CODE_29ED7C:        AE 26 07      LDX $0726                 
CODE_29ED7F:        B5 F6         LDA $F6,x                 
CODE_29ED81:        29 10         AND #$10                  
CODE_29ED83:        F0 30         BEQ CODE_29EDB5           
CODE_29ED85:        A9 22         LDA #$22                  
CODE_29ED87:        8D DD 02      STA $02DD                 
CODE_29ED8A:        AD 8E 02      LDA $028E                 
CODE_29ED8D:        D0 07         BNE CODE_29ED96           
CODE_29ED8F:        A9 43         LDA #$43                  
CODE_29ED91:        8D 00 12      STA $1200                 
CODE_29ED94:        80 05         BRA CODE_29ED9B           

CODE_29ED96:        A9 3B         LDA #$3B                  
CODE_29ED98:        8D 00 12      STA $1200                 
CODE_29ED9B:        22 4D 80 20   JSL CODE_20804D           
CODE_29ED9F:        CE DD 02      DEC $02DD                 
CODE_29EDA2:        D0 F7         BNE CODE_29ED9B           
CODE_29EDA4:        AD 8E 02      LDA $028E                 
CODE_29EDA7:        F0 03         BEQ CODE_29EDAC           
CODE_29EDA9:        20 B9 ED      JSR CODE_29EDB9           
CODE_29EDAC:        A9 F3         LDA #$F3                  
CODE_29EDAE:        8D 02 12      STA $1202                 
CODE_29EDB1:        5C DE 80 00   JML CODE_0080DE           

CODE_29EDB5:        7A            PLY                       
CODE_29EDB6:        FA            PLX                       
CODE_29EDB7:        AB            PLB                       ;
CODE_29EDB8:        6B            RTL                       

CODE_29EDB9:        A2 00         LDX #$00                  
CODE_29EDBB:        AD 26 07      LDA $0726                 
CODE_29EDBE:        F0 02         BEQ CODE_29EDC2           
CODE_29EDC0:        A2 23         LDX #$23                  
CODE_29EDC2:        AD 15 07      LDA $0715                 
CODE_29EDC5:        9D 9F 1D      STA $1D9F,x               
CODE_29EDC8:        AD 16 07      LDA $0716                 
CODE_29EDCB:        9D A0 1D      STA $1DA0,x               
CODE_29EDCE:        AD 17 07      LDA $0717                 
CODE_29EDD1:        9D A1 1D      STA $1DA1,x               
CODE_29EDD4:        C2 20         REP #$20                  
CODE_29EDD6:        A2 08         LDX #$08                  
CODE_29EDD8:        BF 3C E4 21   LDA.l DATA_21E43C,x             
CODE_29EDDC:        9D ED 1E      STA $1EED,x               
CODE_29EDDF:        BF 84 E4 21   LDA.l DATA_21E484,x             
CODE_29EDE3:        9D 09 1F      STA $1F09,x               
CODE_29EDE6:        BF CC E4 21   LDA.l DATA_21E4CC,x             
CODE_29EDEA:        9D FB 1E      STA $1EFB,x               
CODE_29EDED:        BF 14 E5 21   LDA.l DATA_21E514,x             
CODE_29EDF1:        9D 17 1F      STA $1F17,x               
CODE_29EDF4:        CA            DEX                       
CODE_29EDF5:        CA            DEX                       
CODE_29EDF6:        10 E0         BPL CODE_29EDD8           
CODE_29EDF8:        E2 20         SEP #$20                  
CODE_29EDFA:        A2 7F         LDX #$7F                  
CODE_29EDFC:        9E 00 1D      STZ $1D00,x               
CODE_29EDFF:        CA            DEX                       
CODE_29EE00:        10 FA         BPL CODE_29EDFC           
CODE_29EE02:        22 2D 92 00   JSL CODE_00922D           
CODE_29EE06:        60            RTS                       

CODE_29EE07:        AE 26 07      LDX $0726                 
CODE_29EE0A:        BD F6 00      LDA $00F6,x               
CODE_29EE0D:        29 2C         AND #$2C                  
CODE_29EE0F:        85 0F         STA $0F                   
CODE_29EE11:        AD 8C 02      LDA $028C                 
CODE_29EE14:        C9 01         CMP #$01                  
CODE_29EE16:        F0 57         BEQ CODE_29EE6F           
CODE_29EE18:        C9 03         CMP #$03                  
CODE_29EE1A:        F0 53         BEQ CODE_29EE6F           
CODE_29EE1C:        A5 0F         LDA $0F                   
CODE_29EE1E:        F0 4F         BEQ CODE_29EE6F           
CODE_29EE20:        29 20         AND #$20                  
CODE_29EE22:        D0 36         BNE CODE_29EE5A           
CODE_29EE24:        A5 0F         LDA $0F                   
CODE_29EE26:        29 08         AND #$08                  
CODE_29EE28:        D0 19         BNE CODE_29EE43           
CODE_29EE2A:        EE 8E 02      INC $028E                 
CODE_29EE2D:        AD 8E 02      LDA $028E                 
CODE_29EE30:        C9 03         CMP #$03                  
CODE_29EE32:        90 05         BCC CODE_29EE39           
CODE_29EE34:        CE 8E 02      DEC $028E                 
CODE_29EE37:        80 36         BRA CODE_29EE6F           

CODE_29EE39:        A9 01         LDA #$01                  
CODE_29EE3B:        8D 03 12      STA $1203                 
CODE_29EE3E:        9C 8F 02      STZ $028F                 
CODE_29EE41:        80 2C         BRA CODE_29EE6F           

CODE_29EE43:        CE 8E 02      DEC $028E                 
CODE_29EE46:        AD 8E 02      LDA $028E                 
CODE_29EE49:        10 05         BPL CODE_29EE50           
CODE_29EE4B:        EE 8E 02      INC $028E                 
CODE_29EE4E:        80 1F         BRA CODE_29EE6F           

CODE_29EE50:        A9 01         LDA #$01                  
CODE_29EE52:        8D 03 12      STA $1203                 
CODE_29EE55:        9C 8F 02      STZ $028F                 
CODE_29EE58:        80 15         BRA CODE_29EE6F           

CODE_29EE5A:        EE 8E 02      INC $028E                 
CODE_29EE5D:        AD 8E 02      LDA $028E                 
CODE_29EE60:        C9 03         CMP #$03                  
CODE_29EE62:        90 03         BCC CODE_29EE67           
CODE_29EE64:        9C 8E 02      STZ $028E                 
CODE_29EE67:        A9 01         LDA #$01                  
CODE_29EE69:        8D 03 12      STA $1203                 
CODE_29EE6C:        9C 8F 02      STZ $028F                 
CODE_29EE6F:        A9 4C         LDA #$4C                  
CODE_29EE71:        99 00 08      STA $0800,y               
CODE_29EE74:        AE 8E 02      LDX $028E                 
CODE_29EE77:        BD 0E EF      LDA.w DATA_29EF0E,x               
CODE_29EE7A:        99 01 08      STA $0801,y               
CODE_29EE7D:        AD 8F 02      LDA $028F                 
CODE_29EE80:        29 10         AND #$10                  
CODE_29EE82:        4A            LSR A                     
CODE_29EE83:        4A            LSR A                     
CODE_29EE84:        4A            LSR A                     
CODE_29EE85:        4A            LSR A                     
CODE_29EE86:        AA            TAX                       
CODE_29EE87:        BD 13 EF      LDA.w DATA_29EF13,x               
CODE_29EE8A:        99 02 08      STA $0802,y               
CODE_29EE8D:        AD 98 05      LDA $0598                 
CODE_29EE90:        F0 04         BEQ CODE_29EE96           
CODE_29EE92:        A9 2B         LDA #$2B                  
CODE_29EE94:        80 02         BRA CODE_29EE98           

CODE_29EE96:        A9 23         LDA #$23                  
CODE_29EE98:        99 03 08      STA $0803,y               
CODE_29EE9B:        A9 00         LDA #$00                  
CODE_29EE9D:        99 20 0A      STA $0A20,y               
CODE_29EEA0:        EE 8F 02      INC $028F                 
CODE_29EEA3:        AD 90 02      LDA $0290                 
CODE_29EEA6:        F0 5F         BEQ CODE_29EF07           
CODE_29EEA8:        A5 18         LDA $18                   
CODE_29EEAA:        29 10         AND #$10                  
CODE_29EEAC:        F0 59         BEQ CODE_29EF07           
CODE_29EEAE:        AD 8E 02      LDA $028E                 
CODE_29EEB1:        F0 54         BEQ CODE_29EF07           
CODE_29EEB3:        A2 00         LDX #$00                  
CODE_29EEB5:        AC 26 07      LDY $0726                 
CODE_29EEB8:        F0 02         BEQ CODE_29EEBC           
CODE_29EEBA:        A2 23         LDX #$23                  
CODE_29EEBC:        AD 15 07      LDA $0715                 
CODE_29EEBF:        9D 9F 1D      STA $1D9F,x               
CODE_29EEC2:        AD 16 07      LDA $0716                 
CODE_29EEC5:        9D A0 1D      STA $1DA0,x               
CODE_29EEC8:        AD 17 07      LDA $0717                 
CODE_29EECB:        9D A1 1D      STA $1DA1,x               
CODE_29EECE:        A9 3B         LDA #$3B                  
CODE_29EED0:        8D 00 12      STA $1200                 
CODE_29EED3:        AD 8E 02      LDA $028E                 
CODE_29EED6:        C9 01         CMP #$01                  
CODE_29EED8:        F0 05         BEQ CODE_29EEDF           
CODE_29EEDA:        A9 F3         LDA #$F3                  
CODE_29EEDC:        8D 02 12      STA $1202                 
CODE_29EEDF:        22 2D 92 00   JSL CODE_00922D           
CODE_29EEE3:        A9 22         LDA #$22                  
CODE_29EEE5:        8D DD 02      STA $02DD                 
CODE_29EEE8:        22 4D 80 20   JSL CODE_20804D           
CODE_29EEEC:        CE DD 02      DEC $02DD                 
CODE_29EEEF:        D0 F7         BNE CODE_29EEE8           
CODE_29EEF1:        9C 90 02      STZ $0290                 
CODE_29EEF4:        AD 8E 02      LDA $028E                 
CODE_29EEF7:        C9 01         CMP #$01                  
CODE_29EEF9:        F0 0C         BEQ CODE_29EF07           
CODE_29EEFB:        9C 00 12      STZ $1200                 
CODE_29EEFE:        A9 80         LDA #$80                  
CODE_29EF00:        8D 02 12      STA $1202                 
CODE_29EF03:        5C DE 80 00   JML CODE_0080DE           

CODE_29EF07:        9C DD 02      STZ $02DD                 
CODE_29EF0A:        7A            PLY                       
CODE_29EF0B:        FA            PLX                       
CODE_29EF0C:        AB            PLB                       ;
CODE_29EF0D:        6B            RTL                       

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

CODE_29EFB3:        AD 8B 02      LDA $028B
CODE_29EFB6:        F0 5E         BEQ CODE_29F016           
CODE_29EFB8:        30 5C         BMI CODE_29F016           
CODE_29EFBA:        C2 30         REP #$30                  
CODE_29EFBC:        CE 8B 02      DEC $028B                 
CODE_29EFBF:        CE 81 02      DEC $0281                 
CODE_29EFC2:        CE 81 02      DEC $0281                 
CODE_29EFC5:        EE 83 02      INC $0283                 
CODE_29EFC8:        EE 83 02      INC $0283                 
CODE_29EFCB:        CE 85 02      DEC $0285                 
CODE_29EFCE:        CE 85 02      DEC $0285                 
CODE_29EFD1:        CE 85 02      DEC $0285                 
CODE_29EFD4:        CE 85 02      DEC $0285                 
CODE_29EFD7:        EE 89 02      INC $0289                 
CODE_29EFDA:        EE 89 02      INC $0289                 
CODE_29EFDD:        EE 89 02      INC $0289                 
CODE_29EFE0:        EE 89 02      INC $0289                 
CODE_29EFE3:        A2 7E 00      LDX #$007E                
CODE_29EFE6:        A9 FF 00      LDA #$00FF                
CODE_29EFE9:        9F 00 90 7F   STA $7F9000,x             
CODE_29EFED:        9F 80 90 7F   STA $7F9080,x             
CODE_29EFF1:        9F 00 91 7F   STA $7F9100,x             
CODE_29EFF5:        9F 80 91 7F   STA $7F9180,x             
CODE_29EFF9:        CA            DEX                       
CODE_29EFFA:        CA            DEX                       
CODE_29EFFB:        10 EC         BPL CODE_29EFE9           
CODE_29EFFD:        AD 83 02      LDA $0283                 
CODE_29F000:        EB            XBA                       
CODE_29F001:        0D 81 02      ORA $0281                 
CODE_29F004:        AE 85 02      LDX $0285                 
CODE_29F007:        9F 00 90 7F   STA $7F9000,x             
CODE_29F00B:        E8            INX                       
CODE_29F00C:        E8            INX                       
CODE_29F00D:        EC 89 02      CPX $0289                 
CODE_29F010:        D0 F5         BNE CODE_29F007           
CODE_29F012:        E2 30         SEP #$30                  
CODE_29F014:        80 06         BRA CODE_29F01C           

CODE_29F016:        EE 8C 02      INC $028C                 
CODE_29F019:        EE 90 02      INC $0290                 
CODE_29F01C:        4C 39 EC      JMP CODE_29EC39           

CODE_29F01F:        AD 8B 02      LDA $028B                 
CODE_29F022:        C9 11         CMP #$11                  
CODE_29F024:        D0 06         BNE CODE_29F02C           
CODE_29F026:        CE 8B 02      DEC $028B                 
CODE_29F029:        4C 39 EC      JMP CODE_29EC39           

CODE_29F02C:        C9 10         CMP #$10                  
CODE_29F02E:        D0 0F         BNE CODE_29F03F           
CODE_29F030:        A9 F2         LDA #$F2                  
CODE_29F032:        8D 02 12      STA $1202                 
CODE_29F035:        AD 8E 02      LDA $028E                 
CODE_29F038:        D0 05         BNE CODE_29F03F           
CODE_29F03A:        A9 43         LDA #$43                  
CODE_29F03C:        8D 00 12      STA $1200                 
CODE_29F03F:        AD 8B 02      LDA $028B                 
CODE_29F042:        F0 5E         BEQ CODE_29F0A2           
CODE_29F044:        30 5C         BMI CODE_29F0A2           
CODE_29F046:        C2 30         REP #$30                  
CODE_29F048:        EE 81 02      INC $0281                 
CODE_29F04B:        EE 81 02      INC $0281                 
CODE_29F04E:        CE 83 02      DEC $0283                 
CODE_29F051:        CE 83 02      DEC $0283                 
CODE_29F054:        EE 85 02      INC $0285                 
CODE_29F057:        EE 85 02      INC $0285                 
CODE_29F05A:        EE 85 02      INC $0285                 
CODE_29F05D:        EE 85 02      INC $0285                 
CODE_29F060:        CE 89 02      DEC $0289                 
CODE_29F063:        CE 89 02      DEC $0289                 
CODE_29F066:        CE 89 02      DEC $0289                 
CODE_29F069:        CE 89 02      DEC $0289                 
CODE_29F06C:        CE 8B 02      DEC $028B                 
CODE_29F06F:        A2 7E 00      LDX #$007E                
CODE_29F072:        A9 FF 00      LDA #$00FF                
CODE_29F075:        9F 00 90 7F   STA $7F9000,x             
CODE_29F079:        9F 80 90 7F   STA $7F9080,x             
CODE_29F07D:        9F 00 91 7F   STA $7F9100,x             
CODE_29F081:        9F 80 91 7F   STA $7F9180,x             
CODE_29F085:        CA            DEX                       
CODE_29F086:        CA            DEX                       
CODE_29F087:        10 EC         BPL CODE_29F075           
CODE_29F089:        AD 83 02      LDA $0283                 
CODE_29F08C:        EB            XBA                       
CODE_29F08D:        0D 81 02      ORA $0281                 
CODE_29F090:        AE 85 02      LDX $0285                 
CODE_29F093:        9F 00 90 7F   STA $7F9000,x             
CODE_29F097:        E8            INX                       
CODE_29F098:        E8            INX                       
CODE_29F099:        EC 89 02      CPX $0289                 
CODE_29F09C:        D0 F5         BNE CODE_29F093           
CODE_29F09E:        E2 30         SEP #$30                  
CODE_29F0A0:        80 3C         BRA CODE_29F0DE           

CODE_29F0A2:        9C 8C 02      STZ $028C                 
CODE_29F0A5:        9C 6D 39      STZ $396D                 
CODE_29F0A8:        9C 00 02      STZ $0200                 
CODE_29F0AB:        9C 01 02      STZ $0201                 
CODE_29F0AE:        AD 02 02      LDA $0202                 
CODE_29F0B1:        49 33         EOR #$33                  
CODE_29F0B3:        8D 02 02      STA $0202                 
CODE_29F0B6:        AD 87 02      LDA $0287                 
CODE_29F0B9:        8D 0A 02      STA $020A                 
CODE_29F0BC:        AD 88 02      LDA $0288                 
CODE_29F0BF:        8D 0B 02      STA $020B                 
CODE_29F0C2:        AD 7A 03      LDA $037A                 
CODE_29F0C5:        D0 05         BNE CODE_29F0CC           
CODE_29F0C7:        20 9B EB      JSR CODE_29EB9B           
CODE_29F0CA:        80 03         BRA CODE_29F0CF           

CODE_29F0CC:        20 7F EB      JSR CODE_29EB7F           
CODE_29F0CF:        9C 7A 03      STZ $037A                 
CODE_29F0D2:        AD 93 02      LDA $0293                 
CODE_29F0D5:        29 F7         AND #$F7                  
CODE_29F0D7:        8D 93 02      STA $0293                 
CODE_29F0DA:        7A            PLY                       
CODE_29F0DB:        FA            PLX                       
CODE_29F0DC:        AB            PLB                       ;
CODE_29F0DD:        6B            RTL                       

CODE_29F0DE:        4C 39 EC      JMP CODE_29EC39           

CODE_29F0E1:        8B            PHB                       
CODE_29F0E2:        A9 7F         LDA #$7F                  
CODE_29F0E4:        48            PHA                       
CODE_29F0E5:        AB            PLB                       ; Data bank: $7F
CODE_29F0E6:        C2 30         REP #$30                  
CODE_29F0E8:        A2 7E 00      LDX #$007E                
CODE_29F0EB:        A9 00 00      LDA #$0000                
CODE_29F0EE:        9D 00 90      STA $9000,x               
CODE_29F0F1:        9D 80 90      STA $9080,x               
CODE_29F0F4:        9D 00 91      STA $9100,x               
CODE_29F0F7:        9D 80 91      STA $9180,x               
CODE_29F0FA:        CA            DEX                       
CODE_29F0FB:        CA            DEX                       
CODE_29F0FC:        10 F0         BPL CODE_29F0EE           
CODE_29F0FE:        AB            PLB                       ;
CODE_29F0FF:        E2 20         SEP #$20                  
CODE_29F101:        A2 41 26      LDX #$2641                
CODE_29F104:        8E 30 43      STX $4330                 
CODE_29F107:        A2 4C F1      LDX #$F14C                
CODE_29F10A:        8E 32 43      STX $4332                 
CODE_29F10D:        A9 29         LDA #$29                  
CODE_29F10F:        8D 34 43      STA $4334                 
CODE_29F112:        A9 7F         LDA #$7F                  
CODE_29F114:        8D 37 43      STA $4337                 
CODE_29F117:        A9 22         LDA #$22                  
CODE_29F119:        8D 00 02      STA $0200                 
CODE_29F11C:        A9 02         LDA #$02                  
CODE_29F11E:        8D 01 02      STA $0201                 
CODE_29F121:        AD 02 02      LDA $0202                 
CODE_29F124:        09 33         ORA #$33                  
CODE_29F126:        8D 02 02      STA $0202                 
CODE_29F129:        AD 0A 02      LDA $020A                 
CODE_29F12C:        8D 87 02      STA $0287                 
CODE_29F12F:        AD 0B 02      LDA $020B                 
CODE_29F132:        8D 88 02      STA $0288                 
CODE_29F135:        AD 08 02      LDA $0208                 
CODE_29F138:        8D 0A 02      STA $020A                 
CODE_29F13B:        AD 09 02      LDA $0209                 
CODE_29F13E:        8D 0B 02      STA $020B                 
CODE_29F141:        E2 10         SEP #$10                  
CODE_29F143:        AD 93 02      LDA $0293                 
CODE_29F146:        09 08         ORA #$08                  
CODE_29F148:        8D 93 02      STA $0293                 
CODE_29F14B:        60            RTS                       

DATA_29F14C:        db $F8,$00,$90,$F8,$F0,$90,$00

CODE_29F153:        8B            PHB
CODE_29F154:        A9 7F         LDA #$7F                  
CODE_29F156:        48            PHA                       
CODE_29F157:        AB            PLB                       ;
CODE_29F158:        C2 30         REP #$30                  
CODE_29F15A:        A2 A0 01      LDX #$01A0                
CODE_29F15D:        A9 FF 00      LDA #$00FF                
CODE_29F160:        9D 00 90      STA $9000,x               
CODE_29F163:        9D 02 90      STA $9002,x               
CODE_29F166:        9D 04 90      STA $9004,x               
CODE_29F169:        9D 06 90      STA $9006,x               
CODE_29F16C:        9D 08 90      STA $9008,x               
CODE_29F16F:        9D 0A 90      STA $900A,x               
CODE_29F172:        9D 0C 90      STA $900C,x               
CODE_29F175:        9D 0E 90      STA $900E,x               
CODE_29F178:        9D 10 90      STA $9010,x               
CODE_29F17B:        9D 12 90      STA $9012,x               
CODE_29F17E:        9D 14 90      STA $9014,x               
CODE_29F181:        9D 16 90      STA $9016,x               
CODE_29F184:        9D 18 90      STA $9018,x               
CODE_29F187:        9D 1A 90      STA $901A,x               
CODE_29F18A:        9D 1C 90      STA $901C,x               
CODE_29F18D:        9D 1E 90      STA $901E,x               
CODE_29F190:        8A            TXA                       
CODE_29F191:        38            SEC                       
CODE_29F192:        E9 20 00      SBC #$0020                
CODE_29F195:        AA            TAX                       
CODE_29F196:        10 C5         BPL CODE_29F15D           
CODE_29F198:        E2 30         SEP #$30                  
CODE_29F19A:        AB            PLB                       ;
CODE_29F19B:        60            RTS                       

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

CODE_29F800:        A9 22         LDA #$22                  
CODE_29F802:        9D F6 1C      STA $1CF6,x               
CODE_29F805:        FE F9 1F      INC $1FF9,x               
CODE_29F808:        6B            RTL                       

CODE_29F809:        A5 9C         LDA $9C                   
CODE_29F80B:        D0 44         BNE CODE_29F851           
CODE_29F80D:        BD 20 05      LDA $0520,x               
CODE_29F810:        F0 04         BEQ CODE_29F816           
CODE_29F812:        22 26 DF 27   JSL CODE_27DF26           
CODE_29F816:        AD 63 1A      LDA $1A63                 
CODE_29F819:        F0 03         BEQ CODE_29F81E           
CODE_29F81B:        CE 63 1A      DEC $1A63                 
CODE_29F81E:        AD 64 1A      LDA $1A64                 
CODE_29F821:        29 1F         AND #$1F                  
CODE_29F823:        F0 03         BEQ CODE_29F828           
CODE_29F825:        CE 64 1A      DEC $1A64                 
CODE_29F828:        20 64 F8      JSR CODE_29F864           
CODE_29F82B:        20 82 FA      JSR CODE_29FA82           
CODE_29F82E:        22 6F 9B 27   JSL CODE_279B6F           
CODE_29F832:        BD 97 07      LDA $0797,x               
CODE_29F835:        F0 1A         BEQ CODE_29F851           
CODE_29F837:        A9 08         LDA #$08                  
CODE_29F839:        9D 20 05      STA $0520,x               
CODE_29F83C:        A5 9D         LDA $9D                   
CODE_29F83E:        30 11         BMI CODE_29F851           
CODE_29F840:        A9 D0         LDA #$D0                  
CODE_29F842:        85 9D         STA $9D                   
CODE_29F844:        20 18 FD      JSR CODE_29FD18           
CODE_29F847:        B9 A7 C8      LDA.w DATA_21C8A7,y               
CODE_29F84A:        85 8B         STA $8B                   
CODE_29F84C:        A9 01         LDA #$01                  
CODE_29F84E:        8D 00 12      STA $1200                 
CODE_29F851:        B5 68         LDA $68,x                 
CODE_29F853:        F0 09         BEQ CODE_29F85E           
CODE_29F855:        20 2A FC      JSR CODE_29FC2A           
CODE_29F858:        B5 68         LDA $68,x                 
CODE_29F85A:        C9 01         CMP #$01                  
CODE_29F85C:        F0 05         BEQ CODE_29F863           
CODE_29F85E:        A9 FF         LDA #$FF                  
CODE_29F860:        9D 51 06      STA $0651,x               
CODE_29F863:        6B            RTL                       

CODE_29F864:        B5 68         LDA $68,x                 
CODE_29F866:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29F86A:        dw CODE_29F876
                    dw CODE_29F8AB
                    dw CODE_29FD5E
                    dw CODE_29FDC3
                    dw CODE_29FDDA
                    dw CODE_29FDE9

CODE_29F876:        BD 51 06      LDA $0651,x               
CODE_29F879:        D0 2F         BNE CODE_29F8AA           
CODE_29F87B:        AD 10 02      LDA $0210                 
CODE_29F87E:        C9 07         CMP #$07                  
CODE_29F880:        B0 28         BCS CODE_29F8AA                   
CODE_29F882:        A9 00         LDA #$00                  
CODE_29F884:        8D 10 02      STA $0210                 
CODE_29F887:        85 8B         STA $8B                   
CODE_29F889:        A5 A6         LDA $A6                   
CODE_29F88B:        D0 1D         BNE CODE_29F8AA           
CODE_29F88D:        A9 EF         LDA #$EF                  
CODE_29F88F:        8D 16 02      STA $0216                 
CODE_29F892:        A9 05         LDA #$05                  
CODE_29F894:        8D 02 12      STA $1202                 
CODE_29F897:        EE B8 1E      INC $1EB8                 
CODE_29F89A:        A9 02         LDA #$02                  
CODE_29F89C:        8D 24 04      STA $0424                 
CODE_29F89F:        A9 03         LDA #$03                  
CODE_29F8A1:        95 4D         STA $4D,x                 
CODE_29F8A3:        A9 30         LDA #$30                  
CODE_29F8A5:        9D A6 06      STA $06A6,x               
CODE_29F8A8:        F6 68         INC $68,x                 
CODE_29F8AA:        60            RTS                       

CODE_29F8AB:        20 28 FD      JSR CODE_29FD28           
CODE_29F8AE:        AD 65 05      LDA $0565                 
CODE_29F8B1:        29 1F         AND #$1F                  
CODE_29F8B3:        0D 63 1A      ORA $1A63                 
CODE_29F8B6:        D0 12         BNE CODE_29F8CA           
CODE_29F8B8:        BD 79 06      LDA $0679,x               
CODE_29F8BB:        48            PHA                       
CODE_29F8BC:        20 78 FA      JSR CODE_29FA78           
CODE_29F8BF:        68            PLA                       
CODE_29F8C0:        DD 79 06      CMP $0679,x               
CODE_29F8C3:        F0 05         BEQ CODE_29F8CA           
CODE_29F8C5:        09 13         ORA #$13                  
CODE_29F8C7:        8D 64 1A      STA $1A64                 
CODE_29F8CA:        B5 4D         LDA $4D,x                 
CODE_29F8CC:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_29F8D0:        dw CODE_29F8D8
                    dw CODE_29F964
                    dw CODE_29F9E8
                    dw CODE_29FA1A

CODE_29F8D8:        20 22 FB      JSR CODE_29FB22           
CODE_29F8DB:        AD 64 1A      LDA $1A64                 
CODE_29F8DE:        29 1F         AND #$1F                  
CODE_29F8E0:        F0 13         BEQ CODE_29F8F5           
CODE_29F8E2:        4A            LSR A                     
CODE_29F8E3:        4A            LSR A                     
CODE_29F8E4:        29 07         AND #$07                  
CODE_29F8E6:        A8            TAY                       
CODE_29F8E7:        AD 64 1A      LDA $1A64                 
CODE_29F8EA:        29 40         AND #$40                  
CODE_29F8EC:        59 BE C8      EOR.w DATA_21C8BE,y               
CODE_29F8EF:        9D 79 06      STA $0679,x               
CODE_29F8F2:        B9 B9 C8      LDA.w DATA_21C8B9,y               
CODE_29F8F5:        9D 69 06      STA $0669,x               
CODE_29F8F8:        BD 18 05      LDA $0518,x               
CODE_29F8FB:        D0 22         BNE CODE_29F91F           
CODE_29F8FD:        20 3B FB      JSR CODE_29FB3B           
CODE_29F900:        B5 9E         LDA $9E,x                 
CODE_29F902:        C9 40         CMP #$40                  
CODE_29F904:        10 02         BPL CODE_29F908           
CODE_29F906:        F6 9E         INC $9E,x                 
CODE_29F908:        B5 A7         LDA $A7,x                 
CODE_29F90A:        29 04         AND #$04                  
CODE_29F90C:        F0 10         BEQ CODE_29F91E           
CODE_29F90E:        22 67 8B 27   JSL CODE_278B67           
CODE_29F912:        A9 10         LDA #$10                  
CODE_29F914:        BC A6 06      LDY $06A6,x               
CODE_29F917:        D0 02         BNE CODE_29F91B           
CODE_29F919:        A9 B0         LDA #$B0                  
CODE_29F91B:        9D 18 05      STA $0518,x               
CODE_29F91E:        60            RTS                       

CODE_29F91F:        AD 64 1A      LDA $1A64                 
CODE_29F922:        29 1F         AND #$1F                  
CODE_29F924:        D0 03         BNE CODE_29F929           
CODE_29F926:        FE 69 06      INC $0669,x               
CODE_29F929:        BD 18 05      LDA $0518,x               
CODE_29F92C:        C9 01         CMP #$01                  
CODE_29F92E:        F0 2F         BEQ CODE_29F95F           
CODE_29F930:        C9 80         CMP #$80                  
CODE_29F932:        D0 2A         BNE CODE_29F95E           
CODE_29F934:        A9 01         LDA #$01                  
CODE_29F936:        95 4D         STA $4D,x                 
CODE_29F938:        A9 A0         LDA #$A0                  
CODE_29F93A:        95 9E         STA $9E,x                 
CODE_29F93C:        20 18 FD      JSR CODE_29FD18           
CODE_29F93F:        84 00         STY $00                   
CODE_29F941:        A5 0F         LDA $0F                   
CODE_29F943:        10 04         BPL CODE_29F949           
CODE_29F945:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_29F949:        4A            LSR A                     
CODE_29F94A:        4A            LSR A                     
CODE_29F94B:        4A            LSR A                     
CODE_29F94C:        4A            LSR A                     
CODE_29F94D:        29 0F         AND #$0F                  
CODE_29F94F:        A8            TAY                       
CODE_29F950:        B9 A9 C8      LDA.w DATA_21C8A9,y               
CODE_29F953:        A4 00         LDY $00                   
CODE_29F955:        88            DEY                       
CODE_29F956:        D0 04         BNE CODE_29F95C           
CODE_29F958:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_29F95C:        95 8C         STA $8C,x                 
CODE_29F95E:        60            RTS                       

CODE_29F95F:        A9 F0         LDA #$F0                  
CODE_29F961:        95 9E         STA $9E,x                 
CODE_29F963:        60            RTS                       

CODE_29F964:        B5 9E         LDA $9E,x                 
CODE_29F966:        10 03         BPL CODE_29F96B           
CODE_29F968:        20 22 FB      JSR CODE_29FB22           
CODE_29F96B:        A9 00         LDA #$00                  
CODE_29F96D:        9D 69 06      STA $0669,x               
CODE_29F970:        20 3B FB      JSR CODE_29FB3B           
CODE_29F973:        B5 9E         LDA $9E,x                 
CODE_29F975:        30 04         BMI CODE_29F97B           
CODE_29F977:        C9 50         CMP #$50                  
CODE_29F979:        B0 06         BCS CODE_29F981                   
CODE_29F97B:        F6 9E         INC $9E,x                 
CODE_29F97D:        F6 9E         INC $9E,x                 
CODE_29F97F:        F6 9E         INC $9E,x                 
CODE_29F981:        B5 9E         LDA $9E,x                 
CODE_29F983:        10 04         BPL CODE_29F989           
CODE_29F985:        C9 E0         CMP #$E0                  
CODE_29F987:        90 2D         BCC CODE_29F9B6           
CODE_29F989:        20 18 FD      JSR CODE_29FD18           
CODE_29F98C:        B9 C3 C8      LDA.w DATA_21C8C3,y               
CODE_29F98F:        55 8C         EOR $8C,x                 
CODE_29F991:        10 23         BPL CODE_29F9B6           
CODE_29F993:        22 48 A8 27   JSL CODE_27A848           
CODE_29F997:        88            DEY                       
CODE_29F998:        F0 1C         BEQ CODE_29F9B6           
CODE_29F99A:        A9 02         LDA #$02                  
CODE_29F99C:        95 4D         STA $4D,x                 
CODE_29F99E:        A9 0A         LDA #$0A                  
CODE_29F9A0:        9D 18 05      STA $0518,x               
CODE_29F9A3:        B5 5F         LDA $5F,x                 
CODE_29F9A5:        18            CLC                       
CODE_29F9A6:        69 08         ADC #$08                  
CODE_29F9A8:        29 F0         AND #$F0                  
CODE_29F9AA:        9D 76 07      STA $0776,x               
CODE_29F9AD:        A9 E0         LDA #$E0                  
CODE_29F9AF:        95 9E         STA $9E,x                 
CODE_29F9B1:        A9 00         LDA #$00                  
CODE_29F9B3:        95 8C         STA $8C,x                 
CODE_29F9B5:        60            RTS                       

CODE_29F9B6:        B5 A7         LDA $A7,x                 
CODE_29F9B8:        29 04         AND #$04                  
CODE_29F9BA:        F0 2B         BEQ CODE_29F9E7           
CODE_29F9BC:        22 67 8B 27   JSL CODE_278B67           
CODE_29F9C0:        95 8C         STA $8C,x                 
CODE_29F9C2:        A9 2C         LDA #$2C                  
CODE_29F9C4:        8D F3 1C      STA $1CF3                 
CODE_29F9C7:        A9 09         LDA #$09                  
CODE_29F9C9:        8D 03 12      STA $1203                 
CODE_29F9CC:        A9 0C         LDA #$0C                  
CODE_29F9CE:        9D 20 05      STA $0520,x               
CODE_29F9D1:        A9 35         LDA #$35                  
CODE_29F9D3:        9D 18 05      STA $0518,x               
CODE_29F9D6:        BD 83 07      LDA $0783,x               
CODE_29F9D9:        29 1F         AND #$1F                  
CODE_29F9DB:        69 67         ADC #$67                  
CODE_29F9DD:        9D A6 06      STA $06A6,x               
CODE_29F9E0:        9D 21 10      STA $1021,x               
CODE_29F9E3:        A9 03         LDA #$03                  
CODE_29F9E5:        95 4D         STA $4D,x                 
CODE_29F9E7:        60            RTS                       

CODE_29F9E8:        A9 00         LDA #$00                  
CODE_29F9EA:        8D 63 1A      STA $1A63                 
CODE_29F9ED:        A9 06         LDA #$06                  
CODE_29F9EF:        9D 69 06      STA $0669,x               
CODE_29F9F2:        BD 18 05      LDA $0518,x               
CODE_29F9F5:        F0 10         BEQ CODE_29FA07           
CODE_29F9F7:        B5 5F         LDA $5F,x                 
CODE_29F9F9:        DD 76 07      CMP $0776,x               
CODE_29F9FC:        F0 08         BEQ CODE_29FA06           
CODE_29F9FE:        F6 5F         INC $5F,x                 
CODE_29FA00:        90 04         BCC CODE_29FA06           
CODE_29FA02:        D6 5F         DEC $5F,x                 
CODE_29FA04:        D6 5F         DEC $5F,x                 
CODE_29FA06:        60            RTS                       

CODE_29FA07:        20 3B FB      JSR CODE_29FB3B           
CODE_29FA0A:        B5 9E         LDA $9E,x                 
CODE_29FA0C:        30 04         BMI CODE_29FA12           
CODE_29FA0E:        C9 70         CMP #$70                  
CODE_29FA10:        B0 05         BCS CODE_29FA17                   
CODE_29FA12:        18            CLC                       
CODE_29FA13:        69 06         ADC #$06                  
CODE_29FA15:        95 9E         STA $9E,x                 
CODE_29FA17:        4C B6 F9      JMP CODE_29F9B6           

CODE_29FA1A:        20 3B FB      JSR CODE_29FB3B           
CODE_29FA1D:        B5 9E         LDA $9E,x                 
CODE_29FA1F:        C9 40         CMP #$40                  
CODE_29FA21:        10 04         BPL CODE_29FA27           
CODE_29FA23:        F6 9E         INC $9E,x                 
CODE_29FA25:        F6 9E         INC $9E,x                 
CODE_29FA27:        20 8D FB      JSR CODE_29FB8D           
CODE_29FA2A:        B5 A7         LDA $A7,x                 
CODE_29FA2C:        29 04         AND #$04                  
CODE_29FA2E:        F0 04         BEQ CODE_29FA34           
CODE_29FA30:        22 67 8B 27   JSL CODE_278B67           
CODE_29FA34:        BD 18 05      LDA $0518,x               
CODE_29FA37:        F0 06         BEQ CODE_29FA3F           
CODE_29FA39:        A9 07         LDA #$07                  
CODE_29FA3B:        9D 69 06      STA $0669,x               
CODE_29FA3E:        60            RTS                       

CODE_29FA3F:        BD A6 06      LDA $06A6,x               
CODE_29FA42:        D0 0F         BNE CODE_29FA53           
CODE_29FA44:        A9 00         LDA #$00                  
CODE_29FA46:        95 4D         STA $4D,x                 
CODE_29FA48:        BD 83 07      LDA $0783,x               
CODE_29FA4B:        29 7F         AND #$7F                  
CODE_29FA4D:        09 80         ORA #$80                  
CODE_29FA4F:        9D A6 06      STA $06A6,x               
CODE_29FA52:        60            RTS                       

CODE_29FA53:        C9 20         CMP #$20                  
CODE_29FA55:        90 16         BCC CODE_29FA6D           
CODE_29FA57:        4A            LSR A                     
CODE_29FA58:        4A            LSR A                     
CODE_29FA59:        18            CLC                       
CODE_29FA5A:        7D 21 10      ADC $1021,x               
CODE_29FA5D:        29 07         AND #$07                  
CODE_29FA5F:        A8            TAY                       
CODE_29FA60:        B9 C5 C8      LDA.w DATA_21C8C5,y               
CODE_29FA63:        9D 69 06      STA $0669,x               
CODE_29FA66:        B9 CD C8      LDA.w DATA_21C8CD,y               
CODE_29FA69:        9D 79 06      STA $0679,x               
CODE_29FA6C:        60            RTS                       

CODE_29FA6D:        C9 0C         CMP #$0C                  
CODE_29FA6F:        A9 05         LDA #$05                  
CODE_29FA71:        B0 02         BCS CODE_29FA75                   
CODE_29FA73:        A9 08         LDA #$08                  
CODE_29FA75:        9D 69 06      STA $0669,x               
CODE_29FA78:        20 18 FD      JSR CODE_29FD18           
CODE_29FA7B:        B9 D5 C8      LDA.w DATA_21C8D5,y               
CODE_29FA7E:        9D 79 06      STA $0679,x               
CODE_29FA81:        60            RTS                       

CODE_29FA82:        AD 63 1A      LDA $1A63                 
CODE_29FA85:        F0 17         BEQ CODE_29FA9E           
CODE_29FA87:        4A            LSR A                     
CODE_29FA88:        4A            LSR A                     
CODE_29FA89:        4A            LSR A                     
CODE_29FA8A:        4A            LSR A                     
CODE_29FA8B:        29 07         AND #$07                  
CODE_29FA8D:        A8            TAY                       
CODE_29FA8E:        B9 D7 C8      LDA.w DATA_21C8D7,y               
CODE_29FA91:        9D 69 06      STA $0669,x               
CODE_29FA94:        AD 63 1A      LDA $1A63                 
CODE_29FA97:        C9 10         CMP #$10                  
CODE_29FA99:        D0 03         BNE CODE_29FA9E           
CODE_29FA9B:        20 9F FA      JSR CODE_29FA9F           
CODE_29FA9E:        60            RTS                       

CODE_29FA9F:        A0 04         LDY #$04                  
CODE_29FAA1:        B9 61 06      LDA $0661,y               
CODE_29FAA4:        F0 04         BEQ CODE_29FAAA           
CODE_29FAA6:        88            DEY                       
CODE_29FAA7:        10 F8         BPL CODE_29FAA1           
CODE_29FAA9:        60            RTS                       

CODE_29FAAA:        98            TYA                       
CODE_29FAAB:        AA            TAX                       
CODE_29FAAC:        22 96 9C 27   JSL CODE_279C96           
CODE_29FAB0:        A9 02         LDA #$02                  
CODE_29FAB2:        9D 61 06      STA $0661,x               
CODE_29FAB5:        A9 75         LDA #$75                  
CODE_29FAB7:        9D 71 06      STA $0671,x               
CODE_29FABA:        A9 02         LDA #$02                  
CODE_29FABC:        95 68         STA $68,x                 
CODE_29FABE:        A9 10         LDA #$10                  
CODE_29FAC0:        99 9E 00      STA $009E,y               
CODE_29FAC3:        A6 9B         LDX $9B                   
CODE_29FAC5:        B5 71         LDA $71,x                 
CODE_29FAC7:        18            CLC                       
CODE_29FAC8:        69 10         ADC #$10                  
CODE_29FACA:        99 71 00      STA $0071,y               
CODE_29FACD:        B5 56         LDA $56,x                 
CODE_29FACF:        69 00         ADC #$00                  
CODE_29FAD1:        99 56 00      STA $0056,y               
CODE_29FAD4:        BD 79 06      LDA $0679,x               
CODE_29FAD7:        0A            ASL A                     
CODE_29FAD8:        0A            ASL A                     
CODE_29FAD9:        2A            ROL A                     
CODE_29FADA:        29 01         AND #$01                  
CODE_29FADC:        AA            TAX                       
CODE_29FADD:        86 00         STX $00                   
CODE_29FADF:        BD DF C8      LDA.w DATA_21C8DF,x               
CODE_29FAE2:        99 8C 00      STA $008C,y               
CODE_29FAE5:        A6 9B         LDX $9B                   
CODE_29FAE7:        B5 44         LDA $44,x                 
CODE_29FAE9:        99 44 00      STA $0044,y               
CODE_29FAEC:        B5 5F         LDA $5F,x                 
CODE_29FAEE:        A6 00         LDX $00                   
CODE_29FAF0:        18            CLC                       
CODE_29FAF1:        7D E1 C8      ADC.w DATA_21C8E1,x               
CODE_29FAF4:        99 5F 00      STA $005F,y               
CODE_29FAF7:        C9 F0         CMP #$F0                  
CODE_29FAF9:        90 0A         BCC CODE_29FB05           
CODE_29FAFB:        A6 9B         LDX $9B                   
CODE_29FAFD:        BD 79 06      LDA $0679,x               
CODE_29FB00:        D0 03         BNE CODE_29FB05           
CODE_29FB02:        99 5F 00      STA $005F,y               
CODE_29FB05:        B9 83 07      LDA $0783,y               
CODE_29FB08:        29 07         AND #$07                  
CODE_29FB0A:        AA            TAX                       
CODE_29FB0B:        BD E3 C8      LDA.w DATA_21C8E3,x               
CODE_29FB0E:        99 7B 07      STA $077B,y               
CODE_29FB11:        A9 01         LDA #$01                  
CODE_29FB13:        99 E9 1F      STA $1FE9,y               
CODE_29FB16:        0A            ASL A                     
CODE_29FB17:        99 18 05      STA $0518,y               
CODE_29FB1A:        A9 3A         LDA #$3A                  
CODE_29FB1C:        8D 00 12      STA $1200                 
CODE_29FB1F:        A6 9B         LDX $9B                   
CODE_29FB21:        60            RTS                       

CODE_29FB22:        AD 65 1A      LDA $1A65                 
CODE_29FB25:        D0 10         BNE CODE_29FB37           
CODE_29FB27:        BD 83 07      LDA $0783,x               
CODE_29FB2A:        29 3F         AND #$3F                  
CODE_29FB2C:        69 60         ADC #$60                  
CODE_29FB2E:        8D 65 1A      STA $1A65                 
CODE_29FB31:        A9 3F         LDA #$3F                  
CODE_29FB33:        8D 63 1A      STA $1A63                 
CODE_29FB36:        60            RTS                       

CODE_29FB37:        CE 65 1A      DEC $1A65                 
CODE_29FB3A:        60            RTS                       

CODE_29FB3B:        22 EF A7 27   JSL CODE_27A7EF           
CODE_29FB3F:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_29FB43:        B4 5F         LDY $5F,x                 
CODE_29FB45:        B5 8C         LDA $8C,x                 
CODE_29FB47:        F0 10         BEQ CODE_29FB59           
CODE_29FB49:        30 06         BMI CODE_29FB51           
CODE_29FB4B:        C0 E0         CPY #$E0                  
CODE_29FB4D:        B0 06         BCS CODE_29FB55                   
CODE_29FB4F:        90 08         BCC CODE_29FB59           
CODE_29FB51:        C0 08         CPY #$08                  
CODE_29FB53:        B0 04         BCS CODE_29FB59                   
CODE_29FB55:        A9 00         LDA #$00                  
CODE_29FB57:        95 8C         STA $8C,x                 
CODE_29FB59:        22 93 8B 27   JSL CODE_278B93           
CODE_29FB5D:        B5 4D         LDA $4D,x                 
CODE_29FB5F:        C9 02         CMP #$02                  
CODE_29FB61:        D0 06         BNE CODE_29FB69           
CODE_29FB63:        AD 76 1F      LDA $1F76                 
CODE_29FB66:        8D 61 1A      STA $1A61                 
CODE_29FB69:        B5 A7         LDA $A7,x                 
CODE_29FB6B:        48            PHA                       
CODE_29FB6C:        B5 5F         LDA $5F,x                 
CODE_29FB6E:        48            PHA                       
CODE_29FB6F:        18            CLC                       
CODE_29FB70:        69 10         ADC #$10                  
CODE_29FB72:        95 5F         STA $5F,x                 
CODE_29FB74:        22 93 8B 27   JSL CODE_278B93           
CODE_29FB78:        68            PLA                       
CODE_29FB79:        95 5F         STA $5F,x                 
CODE_29FB7B:        68            PLA                       
CODE_29FB7C:        15 A7         ORA $A7,x                 
CODE_29FB7E:        95 A7         STA $A7,x                 
CODE_29FB80:        B5 4D         LDA $4D,x                 
CODE_29FB82:        C9 02         CMP #$02                  
CODE_29FB84:        D0 06         BNE CODE_29FB8C           
CODE_29FB86:        AD 76 1F      LDA $1F76                 
CODE_29FB89:        8D 62 1A      STA $1A62                 
CODE_29FB8C:        60            RTS                       

CODE_29FB8D:        A0 01         LDY #$01                  
CODE_29FB8F:        B9 61 1A      LDA $1A61,y               
CODE_29FB92:        C9 9C         CMP #$9C                  
CODE_29FB94:        D0 30         BNE CODE_29FBC6           
CODE_29FB96:        A9 00         LDA #$00                  
CODE_29FB98:        99 61 1A      STA $1A61,y               
CODE_29FB9B:        A9 02         LDA #$02                  
CODE_29FB9D:        8D 64 05      STA $0564                 
CODE_29FBA0:        B5 71         LDA $71,x                 
CODE_29FBA2:        18            CLC                       
CODE_29FBA3:        69 30         ADC #$30                  
CODE_29FBA5:        29 F0         AND #$F0                  
CODE_29FBA7:        8D 2B 05      STA $052B                 
CODE_29FBAA:        B5 56         LDA $56,x                 
CODE_29FBAC:        69 00         ADC #$00                  
CODE_29FBAE:        8D 2A 05      STA $052A                 
CODE_29FBB1:        B5 5F         LDA $5F,x                 
CODE_29FBB3:        18            CLC                       
CODE_29FBB4:        79 EB C8      ADC.w DATA_21C8EB,y               
CODE_29FBB7:        29 F0         AND #$F0                  
CODE_29FBB9:        8D 29 05      STA $0529                 
CODE_29FBBC:        B5 44         LDA $44,x                 
CODE_29FBBE:        69 00         ADC #$00                  
CODE_29FBC0:        8D 28 05      STA $0528                 
CODE_29FBC3:        4C CA FB      JMP CODE_29FBCA           

CODE_29FBC6:        88            DEY                       
CODE_29FBC7:        10 C6         BPL CODE_29FB8F           
CODE_29FBC9:        60            RTS                       

CODE_29FBCA:        A9 18         LDA #$18                  
CODE_29FBCC:        8D 03 12      STA $1203                 
CODE_29FBCF:        22 44 95 27   JSL CODE_279544           
CODE_29FBD3:        A9 02         LDA #$02                  
CODE_29FBD5:        8D 9C 1F      STA $1F9C                 
CODE_29FBD8:        AD 43 05      LDA $0543                 
CODE_29FBDB:        85 D8         STA $D8                   
CODE_29FBDD:        AD 42 05      LDA $0542                 
CODE_29FBE0:        85 D9         STA $D9                   
CODE_29FBE2:        AD 2A 05      LDA $052A                 
CODE_29FBE5:        EB            XBA                       
CODE_29FBE6:        AD 2B 05      LDA $052B                 
CODE_29FBE9:        C2 20         REP #$20                  
CODE_29FBEB:        38            SEC                       
CODE_29FBEC:        E5 D8         SBC $D8                   
CODE_29FBEE:        85 D8         STA $D8                   
CODE_29FBF0:        18            CLC                       
CODE_29FBF1:        69 08 00      ADC #$0008                
CODE_29FBF4:        E2 20         SEP #$20                  
CODE_29FBF6:        8D AB 1F      STA $1FAB                 
CODE_29FBF9:        EB            XBA                       
CODE_29FBFA:        85 DF         STA $DF                   
CODE_29FBFC:        A5 D8         LDA $D8                   
CODE_29FBFE:        8D 9F 1F      STA $1F9F                 
CODE_29FC01:        A5 D9         LDA $D9                   
CODE_29FC03:        8D B1 1F      STA $1FB1                 
CODE_29FC06:        AD 28 05      LDA $0528                 
CODE_29FC09:        EB            XBA                       
CODE_29FC0A:        AD 29 05      LDA $0529                 
CODE_29FC0D:        C2 20         REP #$20                  
CODE_29FC0F:        38            SEC                       
CODE_29FC10:        ED 10 02      SBC $0210                 
CODE_29FC13:        E2 20         SEP #$20                  
CODE_29FC15:        8D A2 1F      STA $1FA2                 
CODE_29FC18:        EB            XBA                       
CODE_29FC19:        8D AE 02      STA $02AE                 
CODE_29FC1C:        A9 00         LDA #$00                  
CODE_29FC1E:        8D A8 1F      STA $1FA8                 
CODE_29FC21:        8D AE 1F      STA $1FAE                 
CODE_29FC24:        A9 FA         LDA #$FA                  
CODE_29FC26:        8D A5 1F      STA $1FA5                 
CODE_29FC29:        60            RTS                       

CODE_29FC2A:        22 C2 9D 27   JSL CODE_279DC2           
CODE_29FC2E:        B5 83         LDA $83,x                 
CODE_29FC30:        85 00         STA $00                   
CODE_29FC32:        B5 7A         LDA $7A,x                 
CODE_29FC34:        85 01         STA $01                   
CODE_29FC36:        BD 79 06      LDA $0679,x               
CODE_29FC39:        85 02         STA $02                   
CODE_29FC3B:        85 03         STA $03                   
CODE_29FC3D:        BD 51 06      LDA $0651,x               
CODE_29FC40:        85 04         STA $04                   
CODE_29FC42:        BD 81 06      LDA $0681,x               
CODE_29FC45:        85 05         STA $05                   
CODE_29FC47:        BC 69 06      LDY $0669,x               
CODE_29FC4A:        C0 01         CPY #$01                  
CODE_29FC4C:        F0 04         BEQ CODE_29FC52           
CODE_29FC4E:        C0 07         CPY #$07                  
CODE_29FC50:        D0 07         BNE CODE_29FC59           
CODE_29FC52:        A5 00         LDA $00                   
CODE_29FC54:        18            CLC                       
CODE_29FC55:        69 04         ADC #$04                  
CODE_29FC57:        85 00         STA $00                   
CODE_29FC59:        C0 08         CPY #$08                  
CODE_29FC5B:        F0 13         BEQ CODE_29FC70           
CODE_29FC5D:        C0 04         CPY #$04                  
CODE_29FC5F:        F0 04         BEQ CODE_29FC65           
CODE_29FC61:        C0 06         CPY #$06                  
CODE_29FC63:        90 0B         BCC CODE_29FC70           
CODE_29FC65:        BD 79 06      LDA $0679,x               
CODE_29FC68:        29 80         AND #$80                  
CODE_29FC6A:        85 02         STA $02                   
CODE_29FC6C:        09 40         ORA #$40                  
CODE_29FC6E:        85 03         STA $03                   
CODE_29FC70:        BD 69 06      LDA $0669,x               
CODE_29FC73:        0A            ASL A                     
CODE_29FC74:        85 0E         STA $0E                   
CODE_29FC76:        0A            ASL A                     
CODE_29FC77:        65 0E         ADC $0E                   
CODE_29FC79:        85 0E         STA $0E                   
CODE_29FC7B:        64 0F         STZ $0F                   
CODE_29FC7D:        A5 15         LDA $15                   
CODE_29FC7F:        29 01         AND #$01                  
CODE_29FC81:        0A            ASL A                     
CODE_29FC82:        85 07         STA $07                   
CODE_29FC84:        0A            ASL A                     
CODE_29FC85:        65 07         ADC $07                   
CODE_29FC87:        18            CLC                       
CODE_29FC88:        65 0F         ADC $0F                   
CODE_29FC8A:        0A            ASL A                     
CODE_29FC8B:        A8            TAY                       
CODE_29FC8C:        C2 20         REP #$20                  
CODE_29FC8E:        B9 45 C9      LDA.w DATA_21C945,y               
CODE_29FC91:        85 C6         STA $C6                   
CODE_29FC93:        E2 20         SEP #$20                  
CODE_29FC95:        A6 0F         LDX $0F                   
CODE_29FC97:        A5 05         LDA $05                   
CODE_29FC99:        3D 3F C9      AND.w DATA_21C93F,x               
CODE_29FC9C:        F0 03         BEQ CODE_29FCA1           
CODE_29FC9E:        4C 0A FD      JMP CODE_29FD0A           

CODE_29FCA1:        A5 0E         LDA $0E                   
CODE_29FCA3:        18            CLC                       
CODE_29FCA4:        65 0F         ADC $0F                   
CODE_29FCA6:        AA            TAX                       
CODE_29FCA7:        BD ED C8      LDA.w DATA_21C8ED,x               
CODE_29FCAA:        C2 10         REP #$10                  
CODE_29FCAC:        A4 C6         LDY $C6                   
CODE_29FCAE:        99 02 08      STA $0802,y               
CODE_29FCB1:        E2 10         SEP #$10                  
CODE_29FCB3:        A6 0F         LDX $0F                   
CODE_29FCB5:        A5 02         LDA $02                   
CODE_29FCB7:        10 05         BPL CODE_29FCBE           
CODE_29FCB9:        8A            TXA                       
CODE_29FCBA:        18            CLC                       
CODE_29FCBB:        69 06         ADC #$06                  
CODE_29FCBD:        AA            TAX                       
CODE_29FCBE:        A5 00         LDA $00                   
CODE_29FCC0:        18            CLC                       
CODE_29FCC1:        7D 2F C9      ADC.w DATA_21C92F,x               
CODE_29FCC4:        C2 10         REP #$10                  
CODE_29FCC6:        A4 C6         LDY $C6                   
CODE_29FCC8:        99 01 08      STA $0801,y               
CODE_29FCCB:        E2 10         SEP #$10                  
CODE_29FCCD:        A6 0F         LDX $0F                   
CODE_29FCCF:        8A            TXA                       
CODE_29FCD0:        29 01         AND #$01                  
CODE_29FCD2:        6A            ROR A                     
CODE_29FCD3:        A5 02         LDA $02                   
CODE_29FCD5:        90 02         BCC CODE_29FCD9           
CODE_29FCD7:        A5 03         LDA $03                   
CODE_29FCD9:        09 29         ORA #$29                  
CODE_29FCDB:        C2 10         REP #$10                  
CODE_29FCDD:        A4 C6         LDY $C6                   
CODE_29FCDF:        99 03 08      STA $0803,y               
CODE_29FCE2:        E2 10         SEP #$10                  
CODE_29FCE4:        A5 02         LDA $02                   
CODE_29FCE6:        29 40         AND #$40                  
CODE_29FCE8:        F0 05         BEQ CODE_29FCEF           
CODE_29FCEA:        8A            TXA                       
CODE_29FCEB:        18            CLC                       
CODE_29FCEC:        69 06         ADC #$06                  
CODE_29FCEE:        AA            TAX                       
CODE_29FCEF:        A5 01         LDA $01                   
CODE_29FCF1:        18            CLC                       
CODE_29FCF2:        7D 23 C9      ADC.w DATA_21C923,x               
CODE_29FCF5:        C2 10         REP #$10                  
CODE_29FCF7:        A4 C6         LDY $C6                   
CODE_29FCF9:        99 00 08      STA $0800,y               
CODE_29FCFC:        C2 20         REP #$20                  
CODE_29FCFE:        98            TYA                       
CODE_29FCFF:        4A            LSR A                     
CODE_29FD00:        4A            LSR A                     
CODE_29FD01:        A8            TAY                       
CODE_29FD02:        A9 02 00      LDA #$0002                
CODE_29FD05:        99 20 0A      STA $0A20,y               
CODE_29FD08:        E2 30         SEP #$30                  
CODE_29FD0A:        E6 0F         INC $0F                   
CODE_29FD0C:        A5 0F         LDA $0F                   
CODE_29FD0E:        C9 06         CMP #$06                  
CODE_29FD10:        F0 03         BEQ CODE_29FD15           
CODE_29FD12:        4C 7D FC      JMP CODE_29FC7D           

CODE_29FD15:        A6 9B         LDX $9B                   
CODE_29FD17:        60            RTS                       

CODE_29FD18:        B5 5F         LDA $5F,x                 
CODE_29FD1A:        48            PHA                       
CODE_29FD1B:        18            CLC                       
CODE_29FD1C:        69 08         ADC #$08                  
CODE_29FD1E:        95 5F         STA $5F,x                 
CODE_29FD20:        22 37 A8 27   JSL CODE_27A837           
CODE_29FD24:        68            PLA                       
CODE_29FD25:        95 5F         STA $5F,x                 
CODE_29FD27:        60            RTS                       

CODE_29FD28:        B5 56         LDA $56,x                 
CODE_29FD2A:        C9 01         CMP #$01                  
CODE_29FD2C:        30 06         BMI CODE_29FD34           
CODE_29FD2E:        B5 83         LDA $83,x                 
CODE_29FD30:        C9 88         CMP #$88                  
CODE_29FD32:        B0 10         BCS CODE_29FD44                   
CODE_29FD34:        BD 61 06      LDA $0661,x               
CODE_29FD37:        C9 02         CMP #$02                  
CODE_29FD39:        F0 22         BEQ CODE_29FD5D           
CODE_29FD3B:        A9 02         LDA #$02                  
CODE_29FD3D:        9D 61 06      STA $0661,x               
CODE_29FD40:        A9 D0         LDA #$D0                  
CODE_29FD42:        95 9E         STA $9E,x                 
CODE_29FD44:        A9 02         LDA #$02                  
CODE_29FD46:        95 68         STA $68,x                 
CODE_29FD48:        4A            LSR A                     
CODE_29FD49:        8D F3 05      STA $05F3                 
CODE_29FD4C:        A9 06         LDA #$06                  
CODE_29FD4E:        9D 69 06      STA $0669,x               
CODE_29FD51:        A9 00         LDA #$00                  
CODE_29FD53:        95 8C         STA $8C,x                 
CODE_29FD55:        8D 63 1A      STA $1A63                 
CODE_29FD58:        A9 30         LDA #$30                  
CODE_29FD5A:        9D A6 06      STA $06A6,x               
CODE_29FD5D:        60            RTS                       

CODE_29FD5E:        BC A6 06      LDY $06A6,x               
CODE_29FD61:        88            DEY                       
CODE_29FD62:        D0 0A         BNE CODE_29FD6E           
CODE_29FD64:        A9 01         LDA #$01                  
CODE_29FD66:        8D D9 02      STA $02D9                 
CODE_29FD69:        A9 0E         LDA #$0E                  
CODE_29FD6B:        8D 02 12      STA $1202                 
CODE_29FD6E:        BD F6 1C      LDA $1CF6,x               
CODE_29FD71:        C9 01         CMP #$01                  
CODE_29FD73:        10 07         BPL CODE_29FD7C           
CODE_29FD75:        1E 79 06      ASL $0679,x               
CODE_29FD78:        38            SEC                       
CODE_29FD79:        7E 79 06      ROR $0679,x               
CODE_29FD7C:        22 E4 A7 27   JSL CODE_27A7E4           
CODE_29FD80:        B5 9E         LDA $9E,x                 
CODE_29FD82:        C9 25         CMP #$25                  
CODE_29FD84:        10 02         BPL CODE_29FD88           
CODE_29FD86:        F6 9E         INC $9E,x                 
CODE_29FD88:        B5 56         LDA $56,x                 
CODE_29FD8A:        C9 04         CMP #$04                  
CODE_29FD8C:        30 1B         BMI CODE_29FDA9           
CODE_29FD8E:        F6 68         INC $68,x                 
CODE_29FD90:        A9 D0         LDA #$D0                  
CODE_29FD92:        9D 18 05      STA $0518,x               
CODE_29FD95:        A9 80         LDA #$80                  
CODE_29FD97:        8D F3 1C      STA $1CF3                 
CODE_29FD9A:        A9 09         LDA #$09                  
CODE_29FD9C:        8D 03 12      STA $1203                 
CODE_29FD9F:        A5 A6         LDA $A6                   
CODE_29FDA1:        D0 06         BNE CODE_29FDA9           
CODE_29FDA3:        A9 C0         LDA #$C0                  
CODE_29FDA5:        85 9D         STA $9D                   
CODE_29FDA7:        E6 A6         INC $A6                   
CODE_29FDA9:        B5 71         LDA $71,x                 
CODE_29FDAB:        48            PHA                       
CODE_29FDAC:        18            CLC                       
CODE_29FDAD:        69 10         ADC #$10                  
CODE_29FDAF:        95 71         STA $71,x                 
CODE_29FDB1:        B5 56         LDA $56,x                 
CODE_29FDB3:        48            PHA                       
CODE_29FDB4:        69 00         ADC #$00                  
CODE_29FDB6:        95 56         STA $56,x                 
CODE_29FDB8:        22 C8 A2 27   JSL CODE_27A2C8           
CODE_29FDBC:        68            PLA                       
CODE_29FDBD:        95 56         STA $56,x                 
CODE_29FDBF:        68            PLA                       
CODE_29FDC0:        95 71         STA $71,x                 
CODE_29FDC2:        60            RTS                       

CODE_29FDC3:        BD 18 05      LDA $0518,x               
CODE_29FDC6:        D0 11         BNE CODE_29FDD9           
CODE_29FDC8:        A9 13         LDA #$13                  
CODE_29FDCA:        8D 02 12      STA $1202                 
CODE_29FDCD:        A9 00         LDA #$00                  
CODE_29FDCF:        8D E3 02      STA $02E3                 
CODE_29FDD2:        A9 02         LDA #$02                  
CODE_29FDD4:        8D E4 02      STA $02E4                 
CODE_29FDD7:        F6 68         INC $68,x                 
CODE_29FDD9:        60            RTS                       

CODE_29FDDA:        22 17 8A 27   JSL CODE_278A17           
CODE_29FDDE:        D0 08         BNE CODE_29FDE8           
CODE_29FDE0:        A9 30         LDA #$30                  
CODE_29FDE2:        8F 87 C5 7F   STA $7FC587               
CODE_29FDE6:        F6 68         INC $68,x                 
CODE_29FDE8:        60            RTS                       

CODE_29FDE9:        AF 87 C5 7F   LDA $7FC587               
CODE_29FDED:        F0 2F         BEQ CODE_29FE1E           
CODE_29FDEF:        3A            DEC A                     
CODE_29FDF0:        8F 87 C5 7F   STA $7FC587               
CODE_29FDF4:        C9 10         CMP #$10                  
CODE_29FDF6:        D0 25         BNE CODE_29FE1D           
CODE_29FDF8:        A9 39         LDA #$39                  
CODE_29FDFA:        8D 00 12      STA $1200                 
CODE_29FDFD:        A9 F0         LDA #$F0                  
CODE_29FDFF:        8D 02 12      STA $1202                 
CODE_29FE02:        A0 01         LDY #$01                  
CODE_29FE04:        A9 01         LDA #$01                  
CODE_29FE06:        99 9C 1F      STA $1F9C,y               
CODE_29FE09:        B9 5D C9      LDA.w DATA_21C95D,y               
CODE_29FE0C:        99 9F 1F      STA $1F9F,y               
CODE_29FE0F:        B9 5F C9      LDA.w DATA_21C95F,y               
CODE_29FE12:        99 A2 1F      STA $1FA2,y               
CODE_29FE15:        A9 1F         LDA #$1F                  
CODE_29FE17:        99 AE 1F      STA $1FAE,y               
CODE_29FE1A:        88            DEY                       
CODE_29FE1B:        10 E7         BPL CODE_29FE04           
CODE_29FE1D:        60            RTS                       

CODE_29FE1E:        C2 10         REP #$10                  
CODE_29FE20:        A0 01 00      LDY #$0001                
CODE_29FE23:        A2 80 00      LDX #$0080                
CODE_29FE26:        B9 5F C9      LDA.w DATA_21C95F,y               
CODE_29FE29:        9D 00 08      STA $0800,x               
CODE_29FE2C:        B9 5D C9      LDA.w DATA_21C95D,y               
CODE_29FE2F:        9D 01 08      STA $0801,x               
CODE_29FE32:        A9 6A         LDA #$6A                  
CODE_29FE34:        9D 02 08      STA $0802,x               
CODE_29FE37:        A9 23         LDA #$23                  
CODE_29FE39:        9D 03 08      STA $0803,x               
CODE_29FE3C:        DA            PHX                       
CODE_29FE3D:        C2 20         REP #$20                  
CODE_29FE3F:        8A            TXA                       
CODE_29FE40:        4A            LSR A                     
CODE_29FE41:        4A            LSR A                     
CODE_29FE42:        AA            TAX                       
CODE_29FE43:        E2 20         SEP #$20                  
CODE_29FE45:        A9 02         LDA #$02                  
CODE_29FE47:        9D 20 0A      STA $0A20,x               
CODE_29FE4A:        FA            PLX                       
CODE_29FE4B:        E8            INX                       
CODE_29FE4C:        E8            INX                       
CODE_29FE4D:        E8            INX                       
CODE_29FE4E:        E8            INX                       
CODE_29FE4F:        88            DEY                       
CODE_29FE50:        10 D4         BPL CODE_29FE26           
CODE_29FE52:        E2 10         SEP #$10                  
CODE_29FE54:        A5 55         LDA $55                   
CODE_29FE56:        F0 20         BEQ CODE_29FE78           
CODE_29FE58:        A5 5E         LDA $5E                   
CODE_29FE5A:        38            SEC                       
CODE_29FE5B:        E9 E4         SBC #$E4                  
CODE_29FE5D:        C9 08         CMP #$08                  
CODE_29FE5F:        B0 17         BCS CODE_29FE78                   
CODE_29FE61:        A5 70         LDA $70                   
CODE_29FE63:        C9 48         CMP #$48                  
CODE_29FE65:        90 11         BCC CODE_29FE78           
CODE_29FE67:        A5 17         LDA $17                   
CODE_29FE69:        29 08         AND #$08                  
CODE_29FE6B:        F0 0B         BEQ CODE_29FE78           
CODE_29FE6D:        8D 8E 07      STA $078E                 
CODE_29FE70:        A9 00         LDA #$00                  
CODE_29FE72:        8D 13 07      STA $0713                 
CODE_29FE75:        EE 14 00      INC $0014                 
CODE_29FE78:        A5 15         LDA $15                   
CODE_29FE7A:        29 0C         AND #$0C                  
CODE_29FE7C:        4A            LSR A                     
CODE_29FE7D:        A8            TAY                       
CODE_29FE7E:        C2 20         REP #$20                  
CODE_29FE80:        B9 63 C9      LDA.w DATA_21C963,y               
CODE_29FE83:        8F 22 14 00   STA $001422               
CODE_29FE87:        E2 20         SEP #$20                  
CODE_29FE89:        EE 00 15      INC $1500                 
CODE_29FE8C:        A6 9B         LDX $9B                   
CODE_29FE8E:        60            RTS                       

CODE_29FE8F:        8B            PHB                       
CODE_29FE90:        4B            PHK                       
CODE_29FE91:        AB            PLB                       ;
CODE_29FE92:        BD 91 06      LDA $0691,x               
CODE_29FE95:        F0 03         BEQ CODE_29FE9A           
CODE_29FE97:        DE 91 06      DEC $0691,x               
CODE_29FE9A:        C2 10         REP #$10                  
CODE_29FE9C:        64 DD         STZ $DD                   
CODE_29FE9E:        B4 C6         LDY $C6,x                 
CODE_29FEA0:        64 D8         STZ $D8                   
CODE_29FEA2:        BD 69 06      LDA $0669,x               
CODE_29FEA5:        D0 12         BNE CODE_29FEB9           
CODE_29FEA7:        A9 F0         LDA #$F0                  
CODE_29FEA9:        99 01 08      STA $0801,y               
CODE_29FEAC:        99 05 08      STA $0805,y               
CODE_29FEAF:        99 09 08      STA $0809,y               
CODE_29FEB2:        99 0D 08      STA $080D,y               
CODE_29FEB5:        E2 10         SEP #$10                  
CODE_29FEB7:        AB            PLB                       ;
CODE_29FEB8:        6B            RTL                       

CODE_29FEB9:        C9 07         CMP #$07                  
CODE_29FEBB:        F0 04         BEQ CODE_29FEC1           
CODE_29FEBD:        A9 0C         LDA #$0C                  
CODE_29FEBF:        85 DD         STA $DD                   
CODE_29FEC1:        BD 91 06      LDA $0691,x               
CODE_29FEC4:        D0 05         BNE CODE_29FECB           
CODE_29FEC6:        A9 17         LDA #$17                  
CODE_29FEC8:        9D 91 06      STA $0691,x               
CODE_29FECB:        29 F8         AND #$F8                  
CODE_29FECD:        4A            LSR A                     
CODE_29FECE:        18            CLC                       
CODE_29FECF:        65 DD         ADC $DD                   
CODE_29FED1:        DA            PHX                       
CODE_29FED2:        EB            XBA                       
CODE_29FED3:        A9 00         LDA #$00                  
CODE_29FED5:        EB            XBA                       
CODE_29FED6:        AA            TAX                       
CODE_29FED7:        BD 6C FF      LDA.w DATA_29FF6C,x               
CODE_29FEDA:        99 02 08      STA $0802,y               
CODE_29FEDD:        BD 6D FF      LDA.w DATA_29FF6C+1,x               
CODE_29FEE0:        99 06 08      STA $0806,y               
CODE_29FEE3:        BD 6E FF      LDA.w DATA_29FF6C+2,x               
CODE_29FEE6:        99 0A 08      STA $080A,y               
CODE_29FEE9:        FA            PLX                       
CODE_29FEEA:        B5 5F         LDA $5F,x                 
CODE_29FEEC:        85 D8         STA $D8                   
CODE_29FEEE:        B5 44         LDA $44,x                 
CODE_29FEF0:        85 D9         STA $D9                   
CODE_29FEF2:        C2 20         REP #$20                  
CODE_29FEF4:        BD 79 06      LDA $0679,x               
CODE_29FEF7:        29 40 00      AND #$0040                
CODE_29FEFA:        D0 05         BNE CODE_29FF01           
CODE_29FEFC:        A9 10 00      LDA #$0010                
CODE_29FEFF:        80 03         BRA CODE_29FF04           

CODE_29FF01:        A9 F8 FF      LDA #$FFF8                
CODE_29FF04:        85 DA         STA $DA                   
CODE_29FF06:        A5 D8         LDA $D8                   
CODE_29FF08:        38            SEC                       
CODE_29FF09:        ED 10 02      SBC $0210                 
CODE_29FF0C:        85 D8         STA $D8                   
CODE_29FF0E:        18            CLC                       
CODE_29FF0F:        65 DA         ADC $DA                   
CODE_29FF11:        85 DA         STA $DA                   
CODE_29FF13:        E2 20         SEP #$20                  
CODE_29FF15:        99 04 08      STA $0804,y               
CODE_29FF18:        99 08 08      STA $0808,y               
CODE_29FF1B:        A5 D8         LDA $D8                   
CODE_29FF1D:        99 00 08      STA $0800,y               
CODE_29FF20:        B5 71         LDA $71,x                 
CODE_29FF22:        38            SEC                       
CODE_29FF23:        ED 16 02      SBC $0216                 
CODE_29FF26:        99 01 08      STA $0801,y               
CODE_29FF29:        99 05 08      STA $0805,y               
CODE_29FF2C:        18            CLC                       
CODE_29FF2D:        69 08         ADC #$08                  
CODE_29FF2F:        99 09 08      STA $0809,y               
CODE_29FF32:        A9 F0         LDA #$F0                  
CODE_29FF34:        99 0D 08      STA $080D,y               
CODE_29FF37:        BD 79 06      LDA $0679,x               
CODE_29FF3A:        29 40         AND #$40                  
CODE_29FF3C:        09 23         ORA #$23                  
CODE_29FF3E:        99 03 08      STA $0803,y               
CODE_29FF41:        99 07 08      STA $0807,y               
CODE_29FF44:        99 0B 08      STA $080B,y               
CODE_29FF47:        C2 20         REP #$20                  
CODE_29FF49:        98            TYA                       
CODE_29FF4A:        4A            LSR A                     
CODE_29FF4B:        4A            LSR A                     
CODE_29FF4C:        A8            TAY                       
CODE_29FF4D:        E2 20         SEP #$20                  
CODE_29FF4F:        A5 D9         LDA $D9                   
CODE_29FF51:        F0 04         BEQ CODE_29FF57           
CODE_29FF53:        A9 03         LDA #$03                  
CODE_29FF55:        80 02         BRA CODE_29FF59           

CODE_29FF57:        A9 02         LDA #$02                  
CODE_29FF59:        99 20 0A      STA $0A20,y               
CODE_29FF5C:        A5 DB         LDA $DB                   
CODE_29FF5E:        F0 02         BEQ CODE_29FF62           
CODE_29FF60:        A9 01         LDA #$01                  
CODE_29FF62:        99 21 0A      STA $0A21,y               
CODE_29FF65:        99 22 0A      STA $0A22,y               
CODE_29FF68:        E2 10         SEP #$10                  
CODE_29FF6A:        AB            PLB                       ;
CODE_29FF6B:        6B            RTL                       

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
