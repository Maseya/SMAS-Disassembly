;Super Mario Bros. 3

CODE_298000:        LDA $5F,x                 
CODE_298002:        CLC                       
CODE_298003:        ADC #$08                  
CODE_298005:        STA $5F,x                 
CODE_298007:        LDA $71,x                 
CODE_298009:        STA $68,x                 
CODE_29800B:        LDA $56,x                 
CODE_29800D:        STA $4D,x                 
CODE_29800F:        RTL                       

CODE_298010:        LDA $0691,x               
CODE_298013:        BEQ CODE_298018           
CODE_298015:        DEC $0691,x               
CODE_298018:        LDA $0518,x               
CODE_29801B:        BNE CODE_298066           
CODE_29801D:        LDA $0691,x               
CODE_298020:        BNE CODE_298066           
CODE_298022:        LDY $9E,x                 
CODE_298024:        BPL CODE_298066           
CODE_298026:        CPY #$E0                  
CODE_298028:        BCS CODE_298066                   
CODE_29802A:        LDA #$04                  
CODE_29802C:        STA $0691,x               
CODE_29802F:        JSL CODE_278A72           
CODE_298033:        LDA $2137                 
CODE_298036:        LDA $213C                 
CODE_298039:        AND #$07                  
CODE_29803B:        CLC                       
CODE_29803C:        ADC $5F,x                 
CODE_29803E:        STA $05C9,y               
CODE_298041:        LDA $44,x                 
CODE_298043:        ADC #$00                  
CODE_298045:        STA $00E2,y               
CODE_298048:        LDA $71,x                 
CODE_29804A:        CLC                       
CODE_29804B:        ADC #$0E                  
CODE_29804D:        STA $05BF,y               
CODE_298050:        LDA $56,x                 
CODE_298052:        ADC #$00                  
CODE_298054:        STA $1FD7,y               
CODE_298057:        LDA #$00                  
CODE_298059:        STA $06BD,y               
CODE_29805C:        LDA #$04                  
CODE_29805E:        STA $06D1,y               
CODE_298061:        LDA #$17                  
CODE_298063:        STA $1FC8,y               
CODE_298066:        LDA $0518,x               
CODE_298069:        BEQ CODE_2980B6           
CODE_29806B:        STA $0651,x               
CODE_29806E:        CMP #$01                  
CODE_298070:        BNE CODE_2980B5           
CODE_298072:        LDA #$27                  
CODE_298074:        STA $1203                 
CODE_298077:        JSL CODE_27A27C           
CODE_29807B:        LDY #$08                  
CODE_29807D:        JSL CODE_278A74           
CODE_298081:        LDA $5F,x                 
CODE_298083:        STA $05C9,y               
CODE_298086:        LDA $44,x                 
CODE_298088:        STA $00E2,y               
CODE_29808B:        LDA $0518,x               
CODE_29808E:        BEQ CODE_29809C           
CODE_298090:        LDA $71,x                 
CODE_298092:        STA $05BF,y               
CODE_298095:        LDA $56,x                 
CODE_298097:        STA $1FD7,y               
CODE_29809A:        BRA CODE_2980AB           

CODE_29809C:        LDA $71,x                 
CODE_29809E:        CLC                       
CODE_29809F:        ADC #$04                  
CODE_2980A1:        STA $05BF,y               
CODE_2980A4:        LDA $56,x                 
CODE_2980A6:        ADC #$00                  
CODE_2980A8:        STA $1FD7,y               
CODE_2980AB:        LDA #$18                  
CODE_2980AD:        STA $1FC8,y               
CODE_2980B0:        LDA #$18                  
CODE_2980B2:        STA $06D1,y               
CODE_2980B5:        RTL                       

CODE_2980B6:        LDA $9C                   
CODE_2980B8:        BEQ CODE_2980BD           
CODE_2980BA:        JMP CODE_298143           

CODE_2980BD:        JSL CODE_279B6F           
CODE_2980C1:        LDA #$00                  
CODE_2980C3:        LDY $9E,x                 
CODE_2980C5:        BMI CODE_2980C9           
CODE_2980C7:        LDA #$80                  
CODE_2980C9:        STA $0679,x               
CODE_2980CC:        LDA $15                   
CODE_2980CE:        AND #$03                  
CODE_2980D0:        BNE CODE_2980E1           
CODE_2980D2:        INC $0669,x               
CODE_2980D5:        LDA $0669,x               
CODE_2980D8:        CMP #$03                  
CODE_2980DA:        BNE CODE_2980E1           
CODE_2980DC:        LDA #$00                  
CODE_2980DE:        STA $0669,x               
CODE_2980E1:        LDA $9E,x                 
CODE_2980E3:        BMI CODE_298129           
CODE_2980E5:        JSL CODE_278B93           
CODE_2980E9:        LDA $1F76                 
CODE_2980EC:        CMP #$94                  
CODE_2980EE:        BNE CODE_298129           
CODE_2980F0:        LDA $71,x                 
CODE_2980F2:        SEC                       
CODE_2980F3:        SBC $68,x                 
CODE_2980F5:        STA $00                   
CODE_2980F7:        LDA $56,x                 
CODE_2980F9:        SBC $4D,x                 
CODE_2980FB:        LSR A                     
CODE_2980FC:        ROR $00                   
CODE_2980FE:        LDA $00                   
CODE_298100:        LSR A                     
CODE_298101:        LSR A                     
CODE_298102:        LSR A                     
CODE_298103:        TAY                       
CODE_298104:        LDA $C548,y               
CODE_298107:        BMI CODE_29810E           
CODE_298109:        STA $06A6,x               
CODE_29810C:        LDA #$80                  
CODE_29810E:        STA $9E,x                 
CODE_298110:        LDA $71,x                 
CODE_298112:        PHA                       
CODE_298113:        SBC #$04                  
CODE_298115:        STA $71,x                 
CODE_298117:        JSL CODE_298077           
CODE_29811B:        PLA                       
CODE_29811C:        STA $71,x                 
CODE_29811E:        LDA $0783,x               
CODE_298121:        AND #$3F                  
CODE_298123:        ORA #$40                  
CODE_298125:        STA $0518,x               
CODE_298128:        RTL                       

CODE_298129:        JSL CODE_27A7E4           
CODE_29812D:        LDA $06A6,x               
CODE_298130:        BNE CODE_29813F           
CODE_298132:        LDA $9E,x                 
CODE_298134:        BMI CODE_29813A           
CODE_298136:        CMP #$70                  
CODE_298138:        BCS CODE_29813F                   
CODE_29813A:        CLC                       
CODE_29813B:        ADC #$02                  
CODE_29813D:        STA $9E,x                 
CODE_29813F:        JSL CODE_279BC3           
CODE_298143:        JSL CODE_279EDD           
CODE_298147:        RTL                       

CODE_298148:        JSL CODE_27A837           
CODE_29814C:        LDA $C55E,y               
CODE_29814F:        STA $8C,x                 
CODE_298151:        RTL                       

CODE_298152:        LDA $0565                 
CODE_298155:        LSR A                     
CODE_298156:        LSR A                     
CODE_298157:        AND #$03                  
CODE_298159:        STA $0669,x               
CODE_29815C:        TAY                       
CODE_29815D:        LDA $C560,y               
CODE_298160:        STA $1FE9,x               
CODE_298163:        JSL CODE_279EBB           
CODE_298167:        LDA $0802,y               
CODE_29816A:        AND #$3F                  
CODE_29816C:        STA $0802,y               
CODE_29816F:        ORA #$C0                  
CODE_298171:        STA $0806,y               
CODE_298174:        LDA $0661,x               
CODE_298177:        CMP #$02                  
CODE_298179:        BNE CODE_2981AE           
CODE_29817B:        LDA $9C                   
CODE_29817D:        BNE CODE_2981AE           
CODE_29817F:        LDA $15                   
CODE_298181:        LSR A                     
CODE_298182:        NOP                       
CODE_298183:        NOP                       
CODE_298184:        AND #$01                  
CODE_298186:        STA $0669,x               
CODE_298189:        JSL CODE_279BC3           
CODE_29818D:        JSL CODE_279B6F           
CODE_298191:        JSL CODE_27983B           
CODE_298195:        LDA $A7,x                 
CODE_298197:        AND #$04                  
CODE_298199:        BEQ CODE_2981B3           
CODE_29819B:        JSL CODE_278B67           
CODE_29819F:        LDA $0518,x               
CODE_2981A2:        BNE CODE_2981AE           
CODE_2981A4:        LDA $07B5                 
CODE_2981A7:        CMP $4D,x                 
CODE_2981A9:        BEQ CODE_2981AE           
CODE_2981AB:        JSR CODE_2981B9           
CODE_2981AE:        LDA $07B5                 
CODE_2981B1:        STA $4D,x                 
CODE_2981B3:        LDA $A7,x                 
CODE_2981B5:        AND #$03                  
CODE_2981B7:        BEQ CODE_2981CA           
CODE_2981B9:        LDA #$20                  
CODE_2981BB:        STA $0518,x               
CODE_2981BE:        JSL CODE_279905           
CODE_2981C2:        JSL CODE_27A7EF           
CODE_2981C6:        JSL CODE_27A7EF           
CODE_2981CA:        RTL                       

CODE_2981CB:        JSL CODE_279BC3           
CODE_2981CF:        JSR CODE_2981E6           
CODE_2981D2:        LDA $0661,x               
CODE_2981D5:        CMP #$02                  
CODE_2981D7:        BNE CODE_2981CA           
CODE_2981D9:        LDA $9C                   
CODE_2981DB:        BNE CODE_2981CA           
CODE_2981DD:        JSL CODE_27A7EF           
CODE_2981E1:        JSL CODE_279B6F           
CODE_2981E5:        RTL                       

CODE_2981E6:        LDA #$00                  
CODE_2981E8:        STA $0669,x               
CODE_2981EB:        STA $0679,x               
CODE_2981EE:        LDA $0651,x               
CODE_2981F1:        STA $1CEF                 
CODE_2981F4:        LDA $5F,x                 
CODE_2981F6:        PHA                       
CODE_2981F7:        CLC                       
CODE_2981F8:        ADC #$08                  
CODE_2981FA:        STA $5F,x                 
CODE_2981FC:        LDA $44,x                 
CODE_2981FE:        PHA                       
CODE_2981FF:        ADC #$00                  
CODE_298201:        STA $44,x                 
CODE_298203:        ASL $0651,x               
CODE_298206:        JSL CODE_279F51           
CODE_29820A:        PLA                       
CODE_29820B:        STA $44,x                 
CODE_29820D:        PLA                       
CODE_29820E:        STA $5F,x                 
CODE_298210:        JSL CODE_279DC2           
CODE_298214:        LDA $0681,x               
CODE_298217:        BEQ CODE_29821C           
CODE_298219:        BRL CODE_2982BE           

CODE_29821C:        REP #$10                  
CODE_29821E:        LDA $83,x                 
CODE_298220:        STA $00                   
CODE_298222:        LDY $C6,x                 
CODE_298224:        LDA $1CEF                 
CODE_298227:        BMI CODE_298237           
CODE_298229:        LDA $00                   
CODE_29822B:        CLC                       
CODE_29822C:        ADC #$08                  
CODE_29822E:        STA $0811,y               
CODE_298231:        CLC                       
CODE_298232:        ADC #$08                  
CODE_298234:        STA $0819,y               
CODE_298237:        LDA $1CEF                 
CODE_29823A:        AND #$10                  
CODE_29823C:        BNE CODE_29824C           
CODE_29823E:        LDA $00                   
CODE_298240:        CLC                       
CODE_298241:        ADC #$08                  
CODE_298243:        STA $0815,y               
CODE_298246:        CLC                       
CODE_298247:        ADC #$08                  
CODE_298249:        STA $081D,y               
CODE_29824C:        LDA #$2A                  
CODE_29824E:        STA $0803,y               
CODE_298251:        STA $0807,y               
CODE_298254:        STA $080B,y               
CODE_298257:        STA $080F,y               
CODE_29825A:        LDA #$B8                  
CODE_29825C:        STA $0802,y               
CODE_29825F:        INC A                     
CODE_298260:        STA $080A,y               
CODE_298263:        INC A                     
CODE_298264:        STA $0806,y               
CODE_298267:        INC A                     
CODE_298268:        STA $080E,y               
CODE_29826B:        LDA #$92                  
CODE_29826D:        STA $0812,y               
CODE_298270:        INC A                     
CODE_298271:        STA $081A,y               
CODE_298274:        LDA #$9A                  
CODE_298276:        STA $0816,y               
CODE_298279:        INC A                     
CODE_29827A:        STA $081E,y               
CODE_29827D:        LDA #$2A                  
CODE_29827F:        STA $0813,y               
CODE_298282:        STA $0817,y               
CODE_298285:        STA $081B,y               
CODE_298288:        STA $081F,y               
CODE_29828B:        REP #$20                  
CODE_29828D:        LDA $9B                   
CODE_29828F:        AND #$00FF                
CODE_298292:        TAX                       
CODE_298293:        SEP #$20                  
CODE_298295:        LDA $7A,x                 
CODE_298297:        STA $0810,y               
CODE_29829A:        STA $0818,y               
CODE_29829D:        CLC                       
CODE_29829E:        ADC #$18                  
CODE_2982A0:        STA $0814,y               
CODE_2982A3:        STA $081C,y               
CODE_2982A6:        REP #$20                  
CODE_2982A8:        TYA                       
CODE_2982A9:        LSR A                     
CODE_2982AA:        LSR A                     
CODE_2982AB:        TAY                       
CODE_2982AC:        SEP #$20                  
CODE_2982AE:        LDA #$00                  
CODE_2982B0:        STA $0A24,y               
CODE_2982B3:        STA $0A25,y               
CODE_2982B6:        STA $0A26,y               
CODE_2982B9:        STA $0A27,y               
CODE_2982BC:        SEP #$10                  
CODE_2982BE:        RTS                       

CODE_2982BF:        LDA $71,x                 
CODE_2982C1:        CLC                       
CODE_2982C2:        ADC #$0F                  
CODE_2982C4:        STA $71,x                 
CODE_2982C6:        LDA $56,x                 
CODE_2982C8:        ADC #$00                  
CODE_2982CA:        STA $56,x                 
CODE_2982CC:        RTL                       

CODE_2982CD:        DEC $71,x                 
CODE_2982CF:        LDA $71,x                 
CODE_2982D1:        CMP #$FF                  
CODE_2982D3:        BNE CODE_2982D7           
CODE_2982D5:        DEC $56,x                 
CODE_2982D7:        RTL                       

CODE_2982D8:        JSL CODE_279BC3           
CODE_2982DC:        LDA $9C                   
CODE_2982DE:        BNE CODE_298301           
CODE_2982E0:        LDA $0518,x               
CODE_2982E3:        BNE CODE_298301           
CODE_2982E5:        INC $4D,x                 
CODE_2982E7:        LDA $4D,x                 
CODE_2982E9:        CMP #$06                  
CODE_2982EB:        BCC CODE_2982EF           
CODE_2982ED:        LDA #$00                  
CODE_2982EF:        STA $4D,x                 
CODE_2982F1:        TAY                       
CODE_2982F2:        LDA $C597,y               
CODE_2982F5:        STA $0518,x               
CODE_2982F8:        CPY #$03                  
CODE_2982FA:        BNE CODE_298301           
CODE_2982FC:        LDA #$17                  
CODE_2982FE:        STA $1203                 
CODE_298301:        LDA $0671,x               
CODE_298304:        CMP #$9D                  
CODE_298306:        BEQ CODE_298310           
CODE_298308:        CMP #$B2                  
CODE_29830A:        BEQ CODE_29837E           
CODE_29830C:        JSR CODE_2983F7           
CODE_29830F:        RTL                       

CODE_298310:        LDA $5F,x                 
CODE_298312:        PHA                       
CODE_298313:        LDY $4D,x                 
CODE_298315:        BEQ CODE_29837A           
CODE_298317:        LDA $0565                 
CODE_29831A:        LSR A                     
CODE_29831B:        CPY #$03                  
CODE_29831D:        BEQ CODE_298322           
CODE_29831F:        LSR A                     
CODE_298320:        LSR A                     
CODE_298321:        LSR A                     
CODE_298322:        LSR A                     
CODE_298323:        LDA #$00                  
CODE_298325:        BCC CODE_298329           
CODE_298327:        LDA #$40                  
CODE_298329:        STA $0679,x               
CODE_29832C:        CPY #$03                  
CODE_29832E:        BEQ CODE_29833E           
CODE_298330:        LDA #$04                  
CODE_298332:        LDY $0679,x               
CODE_298335:        BEQ CODE_298339           
CODE_298337:        LDA #$FC                  
CODE_298339:        CLC                       
CODE_29833A:        ADC $5F,x                 
CODE_29833C:        STA $5F,x                 
CODE_29833E:        LDY $4D,x                 
CODE_298340:        LDA $C59D,y               
CODE_298343:        PHA                       
CODE_298344:        STA $0669,x               
CODE_298347:        JSL CODE_279F51           
CODE_29834B:        PLA                       
CODE_29834C:        CLC                       
CODE_29834D:        ADC #$06                  
CODE_29834F:        STA $0669,x               
CODE_298352:        LDA $71,x                 
CODE_298354:        PHA                       
CODE_298355:        SEC                       
CODE_298356:        SBC #$10                  
CODE_298358:        STA $71,x                 
CODE_29835A:        LDA $56,x                 
CODE_29835C:        PHA                       
CODE_29835D:        SBC #$00                  
CODE_29835F:        STA $56,x                 
CODE_298361:        REP #$20                  
CODE_298363:        LDA $C6,x                 
CODE_298365:        CLC                       
CODE_298366:        ADC #$0010                
CODE_298369:        STA $C6,x                 
CODE_29836B:        SEP #$20                  
CODE_29836D:        JSL CODE_279EBB           
CODE_298371:        PLA                       
CODE_298372:        STA $56,x                 
CODE_298374:        PLA                       
CODE_298375:        STA $71,x                 
CODE_298377:        JSR CODE_2984EA           
CODE_29837A:        PLA                       
CODE_29837B:        STA $5F,x                 
CODE_29837D:        RTL                       

CODE_29837E:        LDA #$80                  
CODE_298380:        STA $0679,x               
CODE_298383:        LDA $5F,x                 
CODE_298385:        PHA                       
CODE_298386:        LDY $4D,x                 
CODE_298388:        BEQ CODE_2983F3           
CODE_29838A:        LDA $0565                 
CODE_29838D:        LSR A                     
CODE_29838E:        CPY #$03                  
CODE_298390:        BEQ CODE_298395           
CODE_298392:        LSR A                     
CODE_298393:        LSR A                     
CODE_298394:        LSR A                     
CODE_298395:        LSR A                     
CODE_298396:        LDA #$80                  
CODE_298398:        BCC CODE_29839C           
CODE_29839A:        LDA #$C0                  
CODE_29839C:        STA $0679,x               
CODE_29839F:        CPY #$03                  
CODE_2983A1:        BEQ CODE_2983B3           
CODE_2983A3:        LDA $0679,x               
CODE_2983A6:        ASL A                     
CODE_2983A7:        ASL A                     
CODE_2983A8:        LDA #$04                  
CODE_2983AA:        BCC CODE_2983AE           
CODE_2983AC:        LDA #$FC                  
CODE_2983AE:        CLC                       
CODE_2983AF:        ADC $5F,x                 
CODE_2983B1:        STA $5F,x                 
CODE_2983B3:        LDY $4D,x                 
CODE_2983B5:        LDA $C59D,y               
CODE_2983B8:        PHA                       
CODE_2983B9:        STA $0669,x               
CODE_2983BC:        JSL CODE_279F51           
CODE_2983C0:        PLA                       
CODE_2983C1:        CLC                       
CODE_2983C2:        ADC #$06                  
CODE_2983C4:        STA $0669,x               
CODE_2983C7:        LDA $71,x                 
CODE_2983C9:        PHA                       
CODE_2983CA:        CLC                       
CODE_2983CB:        ADC #$20                  
CODE_2983CD:        STA $71,x                 
CODE_2983CF:        LDA $56,x                 
CODE_2983D1:        PHA                       
CODE_2983D2:        ADC #$00                  
CODE_2983D4:        STA $56,x                 
CODE_2983D6:        REP #$20                  
CODE_2983D8:        LDA $C6,x                 
CODE_2983DA:        CLC                       
CODE_2983DB:        ADC #$0010                
CODE_2983DE:        STA $C6,x                 
CODE_2983E0:        SEP #$20                  
CODE_2983E2:        JSL CODE_279EBB           
CODE_2983E6:        PLA                       
CODE_2983E7:        STA $56,x                 
CODE_2983E9:        PLA                       
CODE_2983EA:        STA $71,x                 
CODE_2983EC:        JSL CODE_279DC2           
CODE_2983F0:        JSR CODE_2984EA           
CODE_2983F3:        PLA                       
CODE_2983F4:        STA $5F,x                 
CODE_2983F6:        RTL                       

CODE_2983F7:        STZ $0F                   
CODE_2983F9:        LDY $4D,x                 
CODE_2983FB:        BNE CODE_2983FE           
CODE_2983FD:        RTS                       

CODE_2983FE:        LDA $C59D,y               
CODE_298401:        STA $0669,x               
CODE_298404:        JSL CODE_279DC2           
CODE_298408:        LDA $83,x                 
CODE_29840A:        SEC                       
CODE_29840B:        SBC #$01                  
CODE_29840D:        STA $00                   
CODE_29840F:        LDA $7A,x                 
CODE_298411:        STA $01                   
CODE_298413:        LDA $01                   
CODE_298415:        JSL CODE_2989AB           
CODE_298419:        BCC CODE_29841E           
CODE_29841B:        BRL CODE_2984D8           

CODE_29841E:        REP #$30                  
CODE_298420:        LDA $0F                   
CODE_298422:        AND #$00FF                
CODE_298425:        ASL A                     
CODE_298426:        ASL A                     
CODE_298427:        ASL A                     
CODE_298428:        ADC $C6,x                 
CODE_29842A:        TAY                       
CODE_29842B:        SEP #$20                  
CODE_29842D:        LDA $00                   
CODE_29842F:        STA $0801,y               
CODE_298432:        CLC                       
CODE_298433:        ADC #$08                  
CODE_298435:        STA $0805,y               
CODE_298438:        LDA $01                   
CODE_29843A:        STA $0800,y               
CODE_29843D:        STA $0804,y               
CODE_298440:        LDA $0565                 
CODE_298443:        STA $02                   
CODE_298445:        LDA $4D,x                 
CODE_298447:        LSR $02                   
CODE_298449:        CMP #$03                  
CODE_29844B:        BEQ CODE_298453           
CODE_29844D:        LSR $02                   
CODE_29844F:        LSR $02                   
CODE_298451:        LSR $02                   
CODE_298453:        LSR $02                   
CODE_298455:        PHP                       
CODE_298456:        REP #$20                  
CODE_298458:        LDA $0671,x               
CODE_29845B:        AND #$00FF                
CODE_29845E:        TAX                       
CODE_29845F:        SEP #$20                  
CODE_298461:        LDA #$22                  
CODE_298463:        CPX #$00B1                
CODE_298466:        BNE CODE_29846A           
CODE_298468:        LDA #$62                  
CODE_29846A:        PLP                       
CODE_29846B:        BCC CODE_29846F           
CODE_29846D:        ORA #$A2                  
CODE_29846F:        STA $0803,y               
CODE_298472:        STA $0807,y               
CODE_298475:        REP #$20                  
CODE_298477:        LDA $9B                   
CODE_298479:        AND #$00FF                
CODE_29847C:        TAX                       
CODE_29847D:        SEP #$20                  
CODE_29847F:        LDA $0F                   
CODE_298481:        STA $D8                   
CODE_298483:        STZ $D9                   
CODE_298485:        LDA $0671,x               
CODE_298488:        CMP #$B1                  
CODE_29848A:        BNE CODE_298493           
CODE_29848C:        LDA #$05                  
CODE_29848E:        SEC                       
CODE_29848F:        SBC $0F                   
CODE_298491:        STA $D8                   
CODE_298493:        REP #$20                  
CODE_298495:        LDA $0669,x               
CODE_298498:        AND #$00FF                
CODE_29849B:        ASL A                     
CODE_29849C:        ASL A                     
CODE_29849D:        ASL A                     
CODE_29849E:        ADC $D8                   
CODE_2984A0:        TAX                       
CODE_2984A1:        SEP #$20                  
CODE_2984A3:        LDA $C5A3,x               
CODE_2984A6:        STA $0802,y               
CODE_2984A9:        INC A                     
CODE_2984AA:        STA $0806,y               
CODE_2984AD:        LDA $0803,y               
CODE_2984B0:        AND #$80                  
CODE_2984B2:        BEQ CODE_2984C2           
CODE_2984B4:        LDA $0802,y               
CODE_2984B7:        PHA                       
CODE_2984B8:        LDA $0806,y               
CODE_2984BB:        STA $0802,y               
CODE_2984BE:        PLA                       
CODE_2984BF:        STA $0806,y               
CODE_2984C2:        REP #$20                  
CODE_2984C4:        TYA                       
CODE_2984C5:        LSR A                     
CODE_2984C6:        LSR A                     
CODE_2984C7:        TAY                       
CODE_2984C8:        SEP #$20                  
CODE_2984CA:        LDA $DB                   
CODE_2984CC:        AND #$01                  
CODE_2984CE:        STA $0A20,y               
CODE_2984D1:        STA $0A21,y               
CODE_2984D4:        SEP #$10                  
CODE_2984D6:        LDX $9B                   
CODE_2984D8:        LDA $01                   
CODE_2984DA:        CLC                       
CODE_2984DB:        ADC #$08                  
CODE_2984DD:        STA $01                   
CODE_2984DF:        INC $0F                   
CODE_2984E1:        LDA $0F                   
CODE_2984E3:        CMP #$06                  
CODE_2984E5:        BEQ CODE_2984EA           
CODE_2984E7:        BRL CODE_298413           

CODE_2984EA:        LDA $4D,x                 
CODE_2984EC:        CMP #$03                  
CODE_2984EE:        BNE CODE_2984F4           
CODE_2984F0:        JSL CODE_279B6F           
CODE_2984F4:        RTS                       

CODE_2984F5:        LDY #$21                  
CODE_2984F7:        LDA #$10                  
CODE_2984F9:        BNE CODE_2984FF           
CODE_2984FB:        LDY #$19                  
CODE_2984FD:        LDA #$08                  
CODE_2984FF:        CLC                       
CODE_298500:        ADC $71,x                 
CODE_298502:        STA $71,x                 
CODE_298504:        LDA #$80                  
CODE_298506:        STA $0679,x               
CODE_298509:        BNE CODE_298511           
CODE_29850B:        LDY #$21                  
CODE_29850D:        BNE CODE_298511           
CODE_29850F:        LDY #$19                  
CODE_298511:        LDA $71,x                 
CODE_298513:        STA $68,x                 
CODE_298515:        TYA                       
CODE_298516:        STA $077B,x               
CODE_298519:        SEC                       
CODE_29851A:        SBC #$10                  
CODE_29851C:        STA $0689,x               
CODE_29851F:        LDA $56,x                 
CODE_298521:        STA $1021,x               
CODE_298524:        LDA $5F,x                 
CODE_298526:        CLC                       
CODE_298527:        ADC #$08                  
CODE_298529:        STA $5F,x                 
CODE_29852B:        RTL                       

CODE_29852C:        JSL CODE_279BC3           
CODE_298530:        LDA $4D,x                 
CODE_298532:        LDY $0679,x               
CODE_298535:        BPL CODE_29853A           
CODE_298537:        CLC                       
CODE_298538:        ADC #$02                  
CODE_29853A:        AND #$03                  
CODE_29853C:        BNE CODE_29854A           
CODE_29853E:        JSL CODE_279DC2           
CODE_298542:        LDA #$01                  
CODE_298544:        STA $0651,x               
CODE_298547:        JMP CODE_298747           

CODE_29854A:        JSL CODE_27A837           
CODE_29854E:        LDA $0679,x               
CODE_298551:        AND #$BF                  
CODE_298553:        ORA $C5C3,y               
CODE_298556:        STA $0679,x               
CODE_298559:        REP #$20                  
CODE_29855B:        LDA $C6,x                 
CODE_29855D:        CLC                       
CODE_29855E:        ADC #$0010                
CODE_298561:        STA $C6,x                 
CODE_298563:        SEP #$20                  
CODE_298565:        LDA $1FD2,x               
CODE_298568:        LSR A                     
CODE_298569:        LSR A                     
CODE_29856A:        LSR A                     
CODE_29856B:        AND #$01                  
CODE_29856D:        STA $0669,x               
CODE_298570:        LDA $0671,x               
CODE_298573:        SEC                       
CODE_298574:        SBC #$A0                  
CODE_298576:        TAY                       
CODE_298577:        LDA $C5BB,y               
CODE_29857A:        STA $0691,x               
CODE_29857D:        AND #$01                  
CODE_29857F:        STA $01                   
CODE_298581:        LDA $68,x                 
CODE_298583:        SEC                       
CODE_298584:        SBC $71,x                 
CODE_298586:        LDY $01                   
CODE_298588:        BEQ CODE_298591           
CODE_29858A:        CMP $0689,x               
CODE_29858D:        BCC CODE_29859B           
CODE_29858F:        BCS CODE_298595                   
CODE_298591:        CMP #$11                  
CODE_298593:        BCS CODE_29859B                   
CODE_298595:        INC $0669,x               
CODE_298598:        INC $0669,x               
CODE_29859B:        JSL CODE_279F51           
CODE_29859F:        JSL CODE_27A848           
CODE_2985A3:        STY $00                   
CODE_2985A5:        STZ $01                   
CODE_2985A7:        REP #$10                  
CODE_2985A9:        LDY $C6,x                 
CODE_2985AB:        LDA $0691,x               
CODE_2985AE:        BMI CODE_2985E0           
CODE_2985B0:        LDA $0679,x               
CODE_2985B3:        BMI CODE_2985CA           
CODE_2985B5:        LDA $07F3,y               
CODE_2985B8:        AND #$BF                  
CODE_2985BA:        STA $07F3,y               
CODE_2985BD:        STA $07FB,y               
CODE_2985C0:        ORA #$40                  
CODE_2985C2:        STA $07F7,y               
CODE_2985C5:        STA $07FF,y               
CODE_2985C8:        BNE CODE_29861F           
CODE_2985CA:        LDA $0803,y               
CODE_2985CD:        AND #$BF                  
CODE_2985CF:        STA $0803,y               
CODE_2985D2:        STA $080B,y               
CODE_2985D5:        ORA #$40                  
CODE_2985D7:        STA $0807,y               
CODE_2985DA:        STA $080F,y               
CODE_2985DD:        BRL CODE_29866B           

CODE_2985E0:        LDA $0679,x               
CODE_2985E3:        BMI CODE_298631           
CODE_2985E5:        LDX $00                   
CODE_2985E7:        LDA $07F3,y               
CODE_2985EA:        AND #$7F                  
CODE_2985EC:        ORA $C5C5,x               
CODE_2985EF:        AND #$CF                  
CODE_2985F1:        ORA #$20                  
CODE_2985F3:        STA $07F3,y               
CODE_2985F6:        STA $07F7,y               
CODE_2985F9:        STA $07FB,y               
CODE_2985FC:        STA $07FF,y               
CODE_2985FF:        AND #$80                  
CODE_298601:        BEQ CODE_29861F           
CODE_298603:        LDA $07F2,y               
CODE_298606:        PHA                       
CODE_298607:        LDA $07FA,y               
CODE_29860A:        STA $07F2,y               
CODE_29860D:        PLA                       
CODE_29860E:        STA $07FA,y               
CODE_298611:        LDA $07F6,y               
CODE_298614:        PHA                       
CODE_298615:        LDA $07FE,y               
CODE_298618:        STA $07F6,y               
CODE_29861B:        PLA                       
CODE_29861C:        STA $07FE,y               
CODE_29861F:        LDA #$24                  
CODE_298621:        STA $0803,y               
CODE_298624:        STA $080B,y               
CODE_298627:        LDA #$64                  
CODE_298629:        STA $0807,y               
CODE_29862C:        STA $080F,y               
CODE_29862F:        BRA CODE_29867B           

CODE_298631:        LDX $00                   
CODE_298633:        LDA $0803,y               
CODE_298636:        AND #$7F                  
CODE_298638:        ORA $C5C5,x               
CODE_29863B:        AND #$CF                  
CODE_29863D:        ORA #$10                  
CODE_29863F:        STA $0803,y               
CODE_298642:        STA $0807,y               
CODE_298645:        STA $080B,y               
CODE_298648:        STA $080F,y               
CODE_29864B:        AND #$80                  
CODE_29864D:        BNE CODE_29866B           
CODE_29864F:        LDA $0802,y               
CODE_298652:        PHA                       
CODE_298653:        LDA $080A,y               
CODE_298656:        STA $0802,y               
CODE_298659:        PLA                       
CODE_29865A:        STA $080A,y               
CODE_29865D:        LDA $0806,y               
CODE_298660:        PHA                       
CODE_298661:        LDA $080E,y               
CODE_298664:        STA $0806,y               
CODE_298667:        PLA                       
CODE_298668:        STA $080E,y               
CODE_29866B:        LDA #$A4                  
CODE_29866D:        STA $07F3,y               
CODE_298670:        STA $07FB,y               
CODE_298673:        LDA #$E4                  
CODE_298675:        STA $07F7,y               
CODE_298678:        STA $07FF,y               
CODE_29867B:        REP #$20                  
CODE_29867D:        LDA $9B                   
CODE_29867F:        AND #$00FF                
CODE_298682:        TAX                       
CODE_298683:        SEP #$20                  
CODE_298685:        LDA #$01                  
CODE_298687:        STA $00                   
CODE_298689:        STZ $01                   
CODE_29868B:        LDA #$FF                  
CODE_29868D:        STA $DC                   
CODE_29868F:        STA $DD                   
CODE_298691:        LDA $0691,x               
CODE_298694:        AND #$01                  
CODE_298696:        BEQ CODE_2986A1           
CODE_298698:        LDA $0689,x               
CODE_29869B:        STA $00                   
CODE_29869D:        LDA #$F4                  
CODE_29869F:        STA $DC                   
CODE_2986A1:        LDA $0425                 
CODE_2986A4:        BEQ CODE_2986AA           
CODE_2986A6:        LDA #$F9                  
CODE_2986A8:        STA $DC                   
CODE_2986AA:        LDA $0543                 
CODE_2986AD:        STA $D8                   
CODE_2986AF:        LDA $0542                 
CODE_2986B2:        STA $D9                   
CODE_2986B4:        LDA $1021,x               
CODE_2986B7:        XBA                       
CODE_2986B8:        LDA $68,x                 
CODE_2986BA:        REP #$20                  
CODE_2986BC:        SEC                       
CODE_2986BD:        SBC $00                   
CODE_2986BF:        SEC                       
CODE_2986C0:        SBC $D8                   
CODE_2986C2:        STA $DA                   
CODE_2986C4:        CLC                       
CODE_2986C5:        ADC #$0008                
CODE_2986C8:        STA $D8                   
CODE_2986CA:        LDA $DA                   
CODE_2986CC:        CMP #$00F0                
CODE_2986CF:        BCC CODE_2986D5           
CODE_2986D1:        CMP $DC                   
CODE_2986D3:        BCC CODE_2986DF           
CODE_2986D5:        SEP #$20                  
CODE_2986D7:        STA $07E1,y               
CODE_2986DA:        STA $07E9,y               
CODE_2986DD:        REP #$20                  
CODE_2986DF:        LDA $D8                   
CODE_2986E1:        CMP #$00F0                
CODE_2986E4:        BCC CODE_2986EA           
CODE_2986E6:        CMP $DC                   
CODE_2986E8:        BCC CODE_2986F2           
CODE_2986EA:        SEP #$20                  
CODE_2986EC:        STA $07E5,y               
CODE_2986EF:        STA $07ED,y               
CODE_2986F2:        SEP #$20                  
CODE_2986F4:        LDA #$76                  
CODE_2986F6:        STA $07E2,y               
CODE_2986F9:        STA $07EA,y               
CODE_2986FC:        STA $07E6,y               
CODE_2986FF:        STA $07EE,y               
CODE_298702:        LDA #$12                  
CODE_298704:        STA $07E3,y               
CODE_298707:        STA $07E7,y               
CODE_29870A:        STA $07EB,y               
CODE_29870D:        STA $07EF,y               
CODE_298710:        LDA $5F,x                 
CODE_298712:        SEC                       
CODE_298713:        SBC $0210                 
CODE_298716:        STA $07E0,y               
CODE_298719:        STA $07E4,y               
CODE_29871C:        CLC                       
CODE_29871D:        ADC #$08                  
CODE_29871F:        STA $07E8,y               
CODE_298722:        STA $07EC,y               
CODE_298725:        PHY                       
CODE_298726:        REP #$20                  
CODE_298728:        TYA                       
CODE_298729:        LSR A                     
CODE_29872A:        LSR A                     
CODE_29872B:        TAY                       
CODE_29872C:        SEP #$20                  
CODE_29872E:        LDA $0651,x               
CODE_298731:        ROL A                     
CODE_298732:        ROL A                     
CODE_298733:        PHP                       
CODE_298734:        AND #$01                  
CODE_298736:        STA $0A18,y               
CODE_298739:        STA $0A19,y               
CODE_29873C:        PLP                       
CODE_29873D:        ROL A                     
CODE_29873E:        AND #$01                  
CODE_298740:        STA $0A1A,y               
CODE_298743:        STA $0A1B,y               
CODE_298746:        PLY                       
CODE_298747:        SEP #$10                  
CODE_298749:        LDA $9C                   
CODE_29874B:        BNE CODE_298750           
CODE_29874D:        JSR CODE_298751           
CODE_298750:        RTL                       

CODE_298751:        JSL CODE_279B6F           
CODE_298755:        INC $1FD2,x               
CODE_298758:        LDA $4D,x                 
CODE_29875A:        AND #$03                  
CODE_29875C:        JSL CODE_20FB1F           

PNTR_298760:        dw CODE_2987F6
                    dw CODE_298768
                    dw CODE_2987A2
                    dw CODE_298783

CODE_298768:        LDA $68,x
CODE_29876A:        SEC                       
CODE_29876B:        SBC $077B,x               
CODE_29876E:        PHA                       
CODE_29876F:        LDA $1021,x               
CODE_298772:        SBC #$00                  
CODE_298774:        STA $00                   
CODE_298776:        PLA                       
CODE_298777:        CMP $71,x                 
CODE_298779:        LDA $00                   
CODE_29877B:        SBC $56,x                 
CODE_29877D:        BCS CODE_2987E6                   
CODE_29877F:        LDA #$F0                  
CODE_298781:        BNE CODE_29879B           
CODE_298783:        LDA $71,x                 
CODE_298785:        CLC                       
CODE_298786:        ADC #$01                  
CODE_298788:        PHA                       
CODE_298789:        LDA $56,x                 
CODE_29878B:        ADC #$00                  
CODE_29878D:        STA $00                   
CODE_29878F:        PLA                       
CODE_298790:        CMP $68,x                 
CODE_298792:        LDA $00                   
CODE_298794:        SBC $1021,x               
CODE_298797:        BCS CODE_2987E6
CODE_298799:        LDA #$10                  
CODE_29879B:        STA $9E,x                 
CODE_29879D:        JSL CODE_27A7E4           
CODE_2987A1:        RTS                       

CODE_2987A2:        LDA $0691,x               
CODE_2987A5:        BPL CODE_2987C9           
CODE_2987A7:        LDA $0679,x               
CODE_2987AA:        BMI CODE_2987C9           
CODE_2987AC:        LDA #$00                  
CODE_2987AE:        STA $1FD2,x               
CODE_2987B1:        LDA $0518,x               
CODE_2987B4:        LDY $0727                 
CODE_2987B7:        BNE CODE_2987BE           
CODE_2987B9:        CMP #$28                  
CODE_2987BB:        BEQ CODE_2987C6           
CODE_2987BD:        TYA                       
CODE_2987BE:        CMP #$10                  
CODE_2987C0:        BEQ CODE_2987C6           
CODE_2987C2:        CMP #$40                  
CODE_2987C4:        BNE CODE_2987C9           
CODE_2987C6:        JSR CODE_29883B           
CODE_2987C9:        LDA $0518,x               
CODE_2987CC:        BNE CODE_29883A           
CODE_2987CE:        LDA $0679,x               
CODE_2987D1:        BPL CODE_2987E6           
CODE_2987D3:        LDA $0691,x               
CODE_2987D6:        LSR A                     
CODE_2987D7:        BCS CODE_2987E6                   
CODE_2987D9:        JSL CODE_27A837           
CODE_2987DD:        LDA $0F                   
CODE_2987DF:        CLC                       
CODE_2987E0:        ADC #$1B                  
CODE_2987E2:        CMP #$37                  
CODE_2987E4:        BCC CODE_2987F5           
CODE_2987E6:        INC $4D,x                 
CODE_2987E8:        LDA #$30                  
CODE_2987EA:        LDY $0671,x               
CODE_2987ED:        CPY #$A4                  
CODE_2987EF:        BCC CODE_2987F2           
CODE_2987F1:        ASL A                     
CODE_2987F2:        STA $0518,x               
CODE_2987F5:        RTS                       

CODE_2987F6:        LDA $0691,x               
CODE_2987F9:        BPL CODE_29881D           
CODE_2987FB:        LDA $0679,x               
CODE_2987FE:        BPL CODE_29881D           
CODE_298800:        LDA #$00                  
CODE_298802:        STA $1FD2,x               
CODE_298805:        LDA $0518,x               
CODE_298808:        LDY $0727                 
CODE_29880B:        BNE CODE_298812           
CODE_29880D:        CMP #$28                  
CODE_29880F:        BEQ CODE_29881A           
CODE_298811:        TYA                       
CODE_298812:        CMP #$10                  
CODE_298814:        BEQ CODE_29881A           
CODE_298816:        CMP #$40                  
CODE_298818:        BNE CODE_29881D           
CODE_29881A:        JSR CODE_29883B           
CODE_29881D:        LDA $0518,x               
CODE_298820:        BNE CODE_29883A           
CODE_298822:        LDA $0679,x               
CODE_298825:        BMI CODE_2987E6           
CODE_298827:        LDA $0691,x               
CODE_29882A:        LSR A                     
CODE_29882B:        BCS CODE_2987E6                   
CODE_29882D:        JSL CODE_27A837           
CODE_298831:        LDA $0F                   
CODE_298833:        CLC                       
CODE_298834:        ADC #$1B                  
CODE_298836:        CMP #$37                  
CODE_298838:        BCS CODE_2987E6                   
CODE_29883A:        RTS                       

CODE_29883B:        LDY #$00                  
CODE_29883D:        LDA $0679,x               
CODE_298840:        BPL CODE_298844           
CODE_298842:        LDY #$10                  
CODE_298844:        STY $00                   
CODE_298846:        LDY #$03                  
CODE_298848:        JSL CODE_278A74           
CODE_29884C:        BNE CODE_29883A           
CODE_29884E:        LDA $5F,x                 
CODE_298850:        CLC                       
CODE_298851:        ADC #$03                  
CODE_298853:        STA $05C9,y               
CODE_298856:        LDA $44,x                 
CODE_298858:        ADC #$00                  
CODE_29885A:        STA $00E2,y               
CODE_29885D:        LDA $71,x                 
CODE_29885F:        CLC                       
CODE_298860:        ADC $00                   
CODE_298862:        STA $05BF,y               
CODE_298865:        LDA $56,x                 
CODE_298867:        ADC #$00                  
CODE_298869:        STA $1FD7,y               
CODE_29886C:        LDA #$05                  
CODE_29886E:        STA $1FC8,y               
CODE_298871:        STY $00                   
CODE_298873:        JSL CODE_27A848           
CODE_298877:        STY $05                   
CODE_298879:        JSL CODE_27A837           
CODE_29887D:        STY $06                   
CODE_29887F:        LDX #$00                  
CODE_298881:        LDA $0F                   
CODE_298883:        CLC                       
CODE_298884:        ADC #$50                  
CODE_298886:        CMP #$A0                  
CODE_298888:        BCC CODE_29888B           
CODE_29888A:        INX                       
CODE_29888B:        LDY $00                   
CODE_29888D:        LDA $C5C7,x               
CODE_298890:        LSR $05                   
CODE_298892:        BCC CODE_298898           
CODE_298894:        JSL CODE_27A859           
CODE_298898:        STA $05D3,y               
CODE_29889B:        LDA $C5C9,x               
CODE_29889E:        LSR $06                   
CODE_2988A0:        BCC CODE_2988A6           
CODE_2988A2:        JSL CODE_27A859           
CODE_2988A6:        STA $05DD,y               
CODE_2988A9:        LDA #$00                  
CODE_2988AB:        STA $05AB,y               
CODE_2988AE:        STA $05A1,y               
CODE_2988B1:        LDX $9B                   
CODE_2988B3:        RTS                       

CODE_2988B4:        LDA $71,x                 
CODE_2988B6:        CLC                       
CODE_2988B7:        ADC #$03                  
CODE_2988B9:        STA $71,x                 
CODE_2988BB:        RTL                       

CODE_2988BC:        JSL CODE_279BC3           
CODE_2988C0:        LDA $0681,x               
CODE_2988C3:        BNE CODE_2988BB           
CODE_2988C5:        JSL CODE_279DC2           
CODE_2988C9:        LDA $83,x                 
CODE_2988CB:        STA $00                   
CODE_2988CD:        LDA $44,x                 
CODE_2988CF:        XBA                       
CODE_2988D0:        LDA $5F,x                 
CODE_2988D2:        REP #$30                  
CODE_2988D4:        SEC                       
CODE_2988D5:        SBC $0210                 
CODE_2988D8:        STA $D8                   
CODE_2988DA:        STA $DA                   
CODE_2988DC:        SEP #$20                  
CODE_2988DE:        LDY $C6,x                 
CODE_2988E0:        LDA $7A,x                 
CODE_2988E2:        STA $0800,y               
CODE_2988E5:        STA $0808,y               
CODE_2988E8:        STA $0804,y               
CODE_2988EB:        STA $080C,y               
CODE_2988EE:        LDA #$D0                  
CODE_2988F0:        STA $0802,y               
CODE_2988F3:        INC A                     
CODE_2988F4:        STA $080A,y               
CODE_2988F7:        LDA #$D2                  
CODE_2988F9:        STA $0806,y               
CODE_2988FC:        INC A                     
CODE_2988FD:        STA $080E,y               
CODE_298900:        LDA #$2C                  
CODE_298902:        STA $02                   
CODE_298904:        LDX #$0000                
CODE_298907:        LDA $0565                 
CODE_29890A:        AND #$02                  
CODE_29890C:        BEQ CODE_298913           
CODE_29890E:        LDA #$AC                  
CODE_298910:        STA $02                   
CODE_298912:        INX                       
CODE_298913:        LDA $0565                 
CODE_298916:        LSR A                     
CODE_298917:        LSR A                     
CODE_298918:        LSR A                     
CODE_298919:        LDA $02                   
CODE_29891B:        STA $0807,y               
CODE_29891E:        STA $0803,y               
CODE_298921:        STA $080B,y               
CODE_298924:        STA $080F,y               
CODE_298927:        BCC CODE_298949           
CODE_298929:        ORA #$40                  
CODE_29892B:        STA $0803,y               
CODE_29892E:        STA $080B,y               
CODE_298931:        LDA $0800,y               
CODE_298934:        CLC                       
CODE_298935:        ADC #$02                  
CODE_298937:        STA $0800,y               
CODE_29893A:        STA $0808,y               
CODE_29893D:        REP #$20                  
CODE_29893F:        LDA $D8                   
CODE_298941:        CLC                       
CODE_298942:        ADC #$0002                
CODE_298945:        STA $D8                   
CODE_298947:        SEP #$20                  
CODE_298949:        LDA $0803,y               
CODE_29894C:        AND #$80                  
CODE_29894E:        BEQ CODE_29896C           
CODE_298950:        LDA $0802,y               
CODE_298953:        PHA                       
CODE_298954:        LDA $080A,y               
CODE_298957:        STA $0802,y               
CODE_29895A:        PLA                       
CODE_29895B:        STA $080A,y               
CODE_29895E:        LDA $0806,y               
CODE_298961:        PHA                       
CODE_298962:        LDA $080E,y               
CODE_298965:        STA $0806,y               
CODE_298968:        PLA                       
CODE_298969:        STA $080E,y               
CODE_29896C:        LDA $00                   
CODE_29896E:        CLC                       
CODE_29896F:        ADC $C5CB,x               
CODE_298972:        STA $0801,y               
CODE_298975:        CLC                       
CODE_298976:        ADC #$08                  
CODE_298978:        STA $0809,y               
CODE_29897B:        LDA $00                   
CODE_29897D:        CLC                       
CODE_29897E:        ADC $C5CD,x               
CODE_298981:        STA $0805,y               
CODE_298984:        CLC                       
CODE_298985:        ADC #$08                  
CODE_298987:        STA $080D,y               
CODE_29898A:        REP #$20                  
CODE_29898C:        TYA                       
CODE_29898D:        LSR A                     
CODE_29898E:        LSR A                     
CODE_29898F:        TAY                       
CODE_298990:        SEP #$20                  
CODE_298992:        LDA $D9                   
CODE_298994:        AND #$01                  
CODE_298996:        STA $0A20,y               
CODE_298999:        STA $0A22,y               
CODE_29899C:        LDA $DB                   
CODE_29899E:        AND #$01                  
CODE_2989A0:        STA $0A21,y               
CODE_2989A3:        STA $0A23,y               
CODE_2989A6:        SEP #$10                  
CODE_2989A8:        LDX $9B                   
CODE_2989AA:        RTL                       

CODE_2989AB:        STX $03                   
CODE_2989AD:        STY $02                   
CODE_2989AF:        STA $01                   
CODE_2989B1:        LDX $9B                   
CODE_2989B3:        LDA $0681,x               
CODE_2989B6:        BNE CODE_2989E0           
CODE_2989B8:        LDA $01                   
CODE_2989BA:        SEC                       
CODE_2989BB:        SBC $7A,x                 
CODE_2989BD:        STA $DA                   
CODE_2989BF:        STZ $DB                   
CODE_2989C1:        LDA $5F,x                 
CODE_2989C3:        STA $DC                   
CODE_2989C5:        LDA $44,x                 
CODE_2989C7:        STA $DD                   
CODE_2989C9:        REP #$20                  
CODE_2989CB:        LDA $DC                   
CODE_2989CD:        CLC                       
CODE_2989CE:        ADC $DA                   
CODE_2989D0:        SEC                       
CODE_2989D1:        SBC $0210                 
CODE_2989D4:        STA $DA                   
CODE_2989D6:        CMP #$0100                
CODE_2989D9:        BCC CODE_2989E5           
CODE_2989DB:        CMP #$FFE0                
CODE_2989DE:        BCS CODE_2989E5                   
CODE_2989E0:        SEP #$20                  
CODE_2989E2:        SEC                       
CODE_2989E3:        BRA CODE_2989E8           

CODE_2989E5:        SEP #$20                  
CODE_2989E7:        CLC                       
CODE_2989E8:        LDY $02                   
CODE_2989EA:        LDA $01                   
CODE_2989EC:        LDX $03                   
CODE_2989EE:        RTL                       

CODE_2989EF:        DEC $71,x                 
CODE_2989F1:        LDY $71,x                 
CODE_2989F3:        INY                       
CODE_2989F4:        BNE CODE_2989F8           
CODE_2989F6:        DEC $56,x                 
CODE_2989F8:        RTL                       

CODE_2989F9:        INC $4D,x                 
CODE_2989FB:        JSL CODE_27A837           
CODE_2989FF:        LDA $C5CF,y               
CODE_298A02:        STA $0679,x               
CODE_298A05:        RTL                       

CODE_298A06:        LDA $0661,x               
CODE_298A09:        CMP #$02                  
CODE_298A0B:        BEQ CODE_298A11           
CODE_298A0D:        JSR CODE_298BF2           
CODE_298A10:        RTL                       

CODE_298A11:        LDA $0679,x               
CODE_298A14:        AND #$40                  
CODE_298A16:        ORA #$10                  
CODE_298A18:        STA $0679,x               
CODE_298A1B:        JSL CODE_279BC3           
CODE_298A1F:        LDA $44,x                 
CODE_298A21:        XBA                       
CODE_298A22:        LDA $5F,x                 
CODE_298A24:        REP #$20                  
CODE_298A26:        SEC                       
CODE_298A27:        SBC $0210                 
CODE_298A2A:        BPL CODE_298A30           
CODE_298A2C:        EOR #$FFFF                
CODE_298A2F:        INC A                     
CODE_298A30:        CMP #$0140                
CODE_298A33:        BCS CODE_298A9D                   
CODE_298A35:        LDA $C6,x                 
CODE_298A37:        CLC                       
CODE_298A38:        ADC #$0010                
CODE_298A3B:        STA $C6,x                 
CODE_298A3D:        SEP #$20                  
CODE_298A3F:        JSL CODE_279EBB           
CODE_298A43:        LDA $0669,x               
CODE_298A46:        CMP #$01                  
CODE_298A48:        BNE CODE_298A9D           
CODE_298A4A:        JSL CODE_27A85F           
CODE_298A4E:        BNE CODE_298A9D           
CODE_298A50:        REP #$10                  
CODE_298A52:        LDY $C6,x                 
CODE_298A54:        LDA $83,x                 
CODE_298A56:        SEC                       
CODE_298A57:        SBC #$08                  
CODE_298A59:        STA $07F1,y               
CODE_298A5C:        CLC                       
CODE_298A5D:        ADC #$08                  
CODE_298A5F:        STA $07F5,y               
CODE_298A62:        LDA $0679,x               
CODE_298A65:        ASL A                     
CODE_298A66:        ASL A                     
CODE_298A67:        LDA #$00                  
CODE_298A69:        BCS CODE_298A6D                   
CODE_298A6B:        LDA #$08                  
CODE_298A6D:        CLC                       
CODE_298A6E:        ADC $7A,x                 
CODE_298A70:        STA $07F0,y               
CODE_298A73:        STA $07F4,y               
CODE_298A76:        LDA #$F2                  
CODE_298A78:        STA $07F2,y               
CODE_298A7B:        INC A                     
CODE_298A7C:        STA $07F6,y               
CODE_298A7F:        LDA #$20                  
CODE_298A81:        STA $07F3,y               
CODE_298A84:        STA $07F7,y               
CODE_298A87:        PHY                       
CODE_298A88:        REP #$20                  
CODE_298A8A:        TYA                       
CODE_298A8B:        SEC                       
CODE_298A8C:        SBC #$0010                
CODE_298A8F:        LSR A                     
CODE_298A90:        LSR A                     
CODE_298A91:        TAY                       
CODE_298A92:        SEP #$20                  
CODE_298A94:        LDA #$00                  
CODE_298A96:        STA $0A20,y               
CODE_298A99:        STA $0A21,y               
CODE_298A9C:        PLY                       
CODE_298A9D:        SEP #$30                  
CODE_298A9F:        LDA $9C                   
CODE_298AA1:        BNE CODE_298AA9           
CODE_298AA3:        JSR CODE_298B58           
CODE_298AA6:        JSR CODE_298AAA           
CODE_298AA9:        RTL                       

CODE_298AAA:        LDA $68,x                 
CODE_298AAC:        JSL CODE_20FB1F           

PNTR_298AB0:        dw CODE_298ABE
                    dw CODE_298AD7
                    dw CODE_298AE7
                    dw CODE_298AFC
                    dw CODE_298B04
                    dw CODE_298B22
                    dw CODE_298B47

CODE_298ABE:        LDA $0518,x               
CODE_298AC1:        BNE CODE_298AE6           
CODE_298AC3:        JSL CODE_2989FB           
CODE_298AC7:        LDA $71,x                 
CODE_298AC9:        CLC                       
CODE_298ACA:        ADC #$08                  
CODE_298ACC:        AND #$F0                  
CODE_298ACE:        SEC                       
CODE_298ACF:        SBC #$06                  
CODE_298AD1:        STA $71,x                 
CODE_298AD3:        BCS CODE_298AD7                   
CODE_298AD5:        DEC $56,x                 
CODE_298AD7:        LDA $0518,x               
CODE_298ADA:        BNE CODE_298AE6           
CODE_298ADC:        INC $68,x                 
CODE_298ADE:        LDY $68,x                 
CODE_298AE0:        LDA $C5D1,y               
CODE_298AE3:        STA $0518,x               
CODE_298AE6:        RTS                       

CODE_298AE7:        LDA #$00                  
CODE_298AE9:        JSR CODE_298AFE           
CODE_298AEC:        LDA $0518,x               
CODE_298AEF:        LSR A                     
CODE_298AF0:        BCS CODE_298AFB                   
CODE_298AF2:        DEC $71,x                 
CODE_298AF4:        LDY $71,x                 
CODE_298AF6:        INY                       
CODE_298AF7:        BNE CODE_298AFB           
CODE_298AF9:        DEC $56,x                 
CODE_298AFB:        RTS                       

CODE_298AFC:        LDA #$01                  
CODE_298AFE:        STA $0669,x               
CODE_298B01:        JMP CODE_298AD7           

CODE_298B04:        LDA #$02                  
CODE_298B06:        JSR CODE_298AFE           
CODE_298B09:        LDA $0518,x               
CODE_298B0C:        CMP #$1F                  
CODE_298B0E:        BNE CODE_298B21           
CODE_298B10:        LDA $0681,x               
CODE_298B13:        BNE CODE_298B21           
CODE_298B15:        LDA $0651,x               
CODE_298B18:        AND #$C0                  
CODE_298B1A:        CMP #$C0                  
CODE_298B1C:        BEQ CODE_298B21           
CODE_298B1E:        JSR CODE_298BA4           
CODE_298B21:        RTS                       

CODE_298B22:        LDA $0518,x               
CODE_298B25:        BNE CODE_298B3B           
CODE_298B27:        LDA $4D,x                 
CODE_298B29:        BNE CODE_298B31           
CODE_298B2B:        LDA #$00                  
CODE_298B2D:        STA $0661,x               
CODE_298B30:        RTS                       

CODE_298B31:        LDA #$00                  
CODE_298B33:        STA $68,x                 
CODE_298B35:        LDA #$40                  
CODE_298B37:        STA $0518,x               
CODE_298B3A:        RTS                       

CODE_298B3B:        INC $71,x                 
CODE_298B3D:        BNE CODE_298B41           
CODE_298B3F:        INC $56,x                 
CODE_298B41:        LDA #$00                  
CODE_298B43:        STA $0669,x               
CODE_298B46:        RTS                       

CODE_298B47:        LDA $0518,x               
CODE_298B4A:        BNE CODE_298B52           
CODE_298B4C:        LDA #$06                  
CODE_298B4E:        STA $0661,x               
CODE_298B51:        RTS                       

CODE_298B52:        LDA #$03                  
CODE_298B54:        STA $0669,x               
CODE_298B57:        RTS                       

CODE_298B58:        LDA $68,x                 
CODE_298B5A:        CMP #$06                  
CODE_298B5C:        BEQ CODE_298BA3           
CODE_298B5E:        INC $05F4                 
CODE_298B61:        JSL CODE_279B6B           
CODE_298B65:        DEC $05F4                 
CODE_298B68:        LDA $0797,x               
CODE_298B6B:        BEQ CODE_298BA3           
CODE_298B6D:        LDA $9D                   
CODE_298B6F:        BMI CODE_298BA3           
CODE_298B71:        CMP #$10                  
CODE_298B73:        BCS CODE_298B87                   
CODE_298B75:        LDA #$00                  
CODE_298B77:        STA $A6                   
CODE_298B79:        LDA $71,x                 
CODE_298B7B:        SEC                       
CODE_298B7C:        SBC #$1F                  
CODE_298B7E:        STA $70                   
CODE_298B80:        LDA $56,x                 
CODE_298B82:        SBC #$00                  
CODE_298B84:        STA $55                   
CODE_298B86:        RTS                       

CODE_298B87:        LDA #$06                  
CODE_298B89:        STA $68,x                 
CODE_298B8B:        LDA #$0C                  
CODE_298B8D:        STA $0518,x               
CODE_298B90:        LDA #$D0                  
CODE_298B92:        STA $9D                   
CODE_298B94:        LDA #$03                  
CODE_298B96:        STA $1200                 
CODE_298B99:        LDA $05F4                 
CODE_298B9C:        INC $05F4                 
CODE_298B9F:        JSL CODE_278A8A           
CODE_298BA3:        RTS                       

CODE_298BA4:        JSL CODE_278A72           
CODE_298BA8:        LDA $71,x                 
CODE_298BAA:        SEC                       
CODE_298BAB:        SBC #$08                  
CODE_298BAD:        STA $05BF,y               
CODE_298BB0:        LDA $56,x                 
CODE_298BB2:        SBC #$00                  
CODE_298BB4:        STA $1FD7,y               
CODE_298BB7:        LDA $5F,x                 
CODE_298BB9:        STA $05C9,y               
CODE_298BBC:        LDA $44,x                 
CODE_298BBE:        STA $00E2,y               
CODE_298BC1:        LDA $1A0E                 
CODE_298BC4:        CMP #$0E                  
CODE_298BC6:        LDA #$10                  
CODE_298BC8:        BCC CODE_298BCC           
CODE_298BCA:        LDA #$18                  
CODE_298BCC:        STA $02                   
CODE_298BCE:        LDA $0679,x               
CODE_298BD1:        ASL A                     
CODE_298BD2:        ASL A                     
CODE_298BD3:        STY $00                   
CODE_298BD5:        LDA $02                   
CODE_298BD7:        BCS CODE_298BDB                   
CODE_298BD9:        LDA #$F0                  
CODE_298BDB:        STA $05DD,y               
CODE_298BDE:        LDA $0783,x               
CODE_298BE1:        AND #$07                  
CODE_298BE3:        TAY                       
CODE_298BE4:        LDA $C5D7,y               
CODE_298BE7:        LDY $00                   
CODE_298BE9:        STA $05D3,y               
CODE_298BEC:        LDA #$0A                  
CODE_298BEE:        STA $1FC8,y               
CODE_298BF1:        RTS                       

CODE_298BF2:        LDY #$02                  
CODE_298BF4:        LDA $0565                 
CODE_298BF7:        AND #$10                  
CODE_298BF9:        BEQ CODE_298BFC           
CODE_298BFB:        INY                       
CODE_298BFC:        TYA                       
CODE_298BFD:        STA $0669,x               
CODE_298C00:        LDA #$10                  
CODE_298C02:        STA $0679,x               
CODE_298C05:        JSL CODE_279EE1           
CODE_298C09:        RTS                       

CODE_298C0A:        LDA $71,x                 
CODE_298C0C:        SEC                       
CODE_298C0D:        SBC #$01                  
CODE_298C0F:        STA $71,x                 
CODE_298C11:        LDA $56,x                 
CODE_298C13:        SBC #$00                  
CODE_298C15:        STA $56,x                 
CODE_298C17:        RTL                       

CODE_298C18:        JSL CODE_279BC3           
CODE_298C1C:        JSL CODE_279EBB           
CODE_298C20:        LDA $0651,x               
CODE_298C23:        PHA                       
CODE_298C24:        ASL A                     
CODE_298C25:        ASL A                     
CODE_298C26:        STA $0651,x               
CODE_298C29:        LDA $5F,x                 
CODE_298C2B:        PHA                       
CODE_298C2C:        CLC                       
CODE_298C2D:        ADC #$10                  
CODE_298C2F:        STA $5F,x                 
CODE_298C31:        LDA $44,x                 
CODE_298C33:        PHA                       
CODE_298C34:        ADC #$00                  
CODE_298C36:        STA $44,x                 
CODE_298C38:        REP #$20                  
CODE_298C3A:        LDA $C6,x                 
CODE_298C3C:        CLC                       
CODE_298C3D:        ADC #$0010                
CODE_298C40:        STA $C6,x                 
CODE_298C42:        SEP #$20                  
CODE_298C44:        JSL CODE_279EBB           
CODE_298C48:        PLA                       
CODE_298C49:        STA $44,x                 
CODE_298C4B:        PLA                       
CODE_298C4C:        STA $5F,x                 
CODE_298C4E:        PLA                       
CODE_298C4F:        STA $0651,x               
CODE_298C52:        JSL CODE_279DC2           
CODE_298C56:        LDA $9C                   
CODE_298C58:        BNE CODE_298C17           
CODE_298C5A:        LDA $8C,x                 
CODE_298C5C:        BEQ CODE_298C84           
CODE_298C5E:        BPL CODE_298C64           
CODE_298C60:        JSL CODE_27A859           
CODE_298C64:        ASL A                     
CODE_298C65:        ASL A                     
CODE_298C66:        ASL A                     
CODE_298C67:        ASL A                     
CODE_298C68:        ADC #$60                  
CODE_298C6A:        ADC $1021,x               
CODE_298C6D:        STA $1021,x               
CODE_298C70:        BCC CODE_298C84           
CODE_298C72:        LDA $8C,x                 
CODE_298C74:        ASL A                     
CODE_298C75:        LDA #$01                  
CODE_298C77:        BCC CODE_298C7B           
CODE_298C79:        LDA #$FF                  
CODE_298C7B:        CLC                       
CODE_298C7C:        ADC $0669,x               
CODE_298C7F:        AND #$03                  
CODE_298C81:        STA $0669,x               
CODE_298C84:        LDA $68,x                 
CODE_298C86:        BEQ CODE_298C8C           
CODE_298C88:        JSR CODE_298D18           
CODE_298C8B:        RTL                       

CODE_298C8C:        LDA $15                   
CODE_298C8E:        AND #$07                  
CODE_298C90:        BNE CODE_298C9E           
CODE_298C92:        LDA $8C,x                 
CODE_298C94:        BEQ CODE_298C9E           
CODE_298C96:        BPL CODE_298C9C           
CODE_298C98:        INC $8C,x                 
CODE_298C9A:        INC $8C,x                 
CODE_298C9C:        DEC $8C,x                 
CODE_298C9E:        JSR CODE_298D1D           
CODE_298CA1:        JSL CODE_278B93           
CODE_298CA5:        LDA $1F77                 
CODE_298CA8:        CMP #$9D                  
CODE_298CAA:        BNE CODE_298CB2           
CODE_298CAC:        LDA #$00                  
CODE_298CAE:        STA $8C,x                 
CODE_298CB0:        INC $A7,x                 
CODE_298CB2:        JSL CODE_298D58           
CODE_298CB6:        JSL CODE_27A7EF           
CODE_298CBA:        LDA $8C,x                 
CODE_298CBC:        BEQ CODE_298CC3           
CODE_298CBE:        LDA $0518,x               
CODE_298CC1:        BNE CODE_298D17           
CODE_298CC3:        JSL CODE_279DC2           
CODE_298CC7:        JSL CODE_27A312           
CODE_298CCB:        BCC CODE_298D17           
CODE_298CCD:        LDA $82                   
CODE_298CCF:        ADC #$17                  
CODE_298CD1:        CMP $83,x                 
CODE_298CD3:        BCS CODE_298CF7                   
CODE_298CD5:        LDA $9D                   
CODE_298CD7:        BMI CODE_298CF6           
CODE_298CD9:        LDA $A7,x                 
CODE_298CDB:        BNE CODE_298CE1           
CODE_298CDD:        LDA #$05                  
CODE_298CDF:        STA $8C,x                 
CODE_298CE1:        LDA #$10                  
CODE_298CE3:        STA $0518,x               
CODE_298CE6:        STA $101F                 
CODE_298CE9:        LDA #$00                  
CODE_298CEB:        STA $9D                   
CODE_298CED:        STA $A6                   
CODE_298CEF:        LDA $71,x                 
CODE_298CF1:        SEC                       
CODE_298CF2:        SBC #$1E                  
CODE_298CF4:        STA $70                   
CODE_298CF6:        RTL                       

CODE_298CF7:        LDA #$FC                  
CODE_298CF9:        LDY $BB                   
CODE_298CFB:        BNE CODE_298CFF           
CODE_298CFD:        LDA #$0C                  
CODE_298CFF:        CLC                       
CODE_298D00:        ADC $82                   
CODE_298D02:        CMP $83,x                 
CODE_298D04:        BCC CODE_298D13           
CODE_298D06:        LDA $9D                   
CODE_298D08:        BPL CODE_298D12           
CODE_298D0A:        LDA #$FB                  
CODE_298D0C:        STA $8C,x                 
CODE_298D0E:        LDA #$10                  
CODE_298D10:        STA $9D                   
CODE_298D12:        RTL                       

CODE_298D13:        LDA #$00                  
CODE_298D15:        STA $8B                   
CODE_298D17:        RTL                       

CODE_298D18:        JSL CODE_27983B           
CODE_298D1C:        RTS                       

CODE_298D1D:        LDA #$E2                  
CODE_298D1F:        LDY $8C,x                 
CODE_298D21:        BEQ CODE_298D57           
CODE_298D23:        BPL CODE_298D27           
CODE_298D25:        LDA #$1E                  
CODE_298D27:        LDY #$00                  
CODE_298D29:        CMP #$00                  
CODE_298D2B:        BPL CODE_298D2E           
CODE_298D2D:        DEY                       
CODE_298D2E:        STA $00                   
CODE_298D30:        LDA $5F,x                 
CODE_298D32:        PHA                       
CODE_298D33:        CLC                       
CODE_298D34:        ADC $00                   
CODE_298D36:        STA $5F,x                 
CODE_298D38:        LDA $44,x                 
CODE_298D3A:        PHA                       
CODE_298D3B:        TYA                       
CODE_298D3C:        ADC $44,x                 
CODE_298D3E:        STA $44,x                 
CODE_298D40:        JSL CODE_278B93           
CODE_298D44:        PLA                       
CODE_298D45:        STA $44,x                 
CODE_298D47:        PLA                       
CODE_298D48:        STA $5F,x                 
CODE_298D4A:        LDA $1F77                 
CODE_298D4D:        CMP #$9D                  
CODE_298D4F:        BEQ CODE_298D57           
CODE_298D51:        CMP #$81                  
CODE_298D53:        BEQ CODE_298D57           
CODE_298D55:        INC $68,x                 
CODE_298D57:        RTS                       

CODE_298D58:        LDA $0681,x               
CODE_298D5B:        BNE CODE_298DCE           
CODE_298D5D:        LDA $0651,x               
CODE_298D60:        AND #$C0                  
CODE_298D62:        CMP #$C0                  
CODE_298D64:        BEQ CODE_298DCE           
CODE_298D66:        JSL CODE_27A439           
CODE_298D6A:        TXA                       
CODE_298D6B:        BEQ CODE_298DCE           
CODE_298D6D:        DEX                       
CODE_298D6E:        LDA $0661,x               
CODE_298D71:        CMP #$02                  
CODE_298D73:        BNE CODE_298DC9           
CODE_298D75:        LDA $0671,x               
CODE_298D78:        CMP #$AE                  
CODE_298D7A:        BNE CODE_298DC9           
CODE_298D7C:        LDA $0681,x               
CODE_298D7F:        BNE CODE_298DC9           
CODE_298D81:        LDA $0651,x               
CODE_298D84:        AND #$C0                  
CODE_298D86:        CMP #$C0                  
CODE_298D88:        BEQ CODE_298DC9           
CODE_298D8A:        JSL CODE_279DC2           
CODE_298D8E:        JSL CODE_27A413           
CODE_298D92:        JSL CODE_27A45F           
CODE_298D96:        BCC CODE_298DC9           
CODE_298D98:        LDY $9B                   
CODE_298D9A:        LDA $5F,x                 
CODE_298D9C:        SEC                       
CODE_298D9D:        SBC $005F,y               
CODE_298DA0:        PHA                       
CODE_298DA1:        LDA $44,x                 
CODE_298DA3:        SBC $0044,y               
CODE_298DA6:        STA $00                   
CODE_298DA8:        ROL $01                   
CODE_298DAA:        PLA                       
CODE_298DAB:        ADC #$80                  
CODE_298DAD:        LDA $00                   
CODE_298DAF:        ADC #$00                  
CODE_298DB1:        BNE CODE_298DC9           
CODE_298DB3:        LSR $01                   
CODE_298DB5:        LDA #$FF                  
CODE_298DB7:        BCS CODE_298DBB                   
CODE_298DB9:        LDA #$01                  
CODE_298DBB:        STX $0F                   
CODE_298DBD:        LDX $9B                   
CODE_298DBF:        STA $8C,x                 
CODE_298DC1:        PHA                       
CODE_298DC2:        LDX $0F                   
CODE_298DC4:        PLA                       
CODE_298DC5:        EOR #$FF                  
CODE_298DC7:        STA $8C,x                 
CODE_298DC9:        DEX                       
CODE_298DCA:        BPL CODE_298D6E           
CODE_298DCC:        LDX $9B                   
CODE_298DCE:        RTL                       

CODE_298DCF:        LDA $0661,x               
CODE_298DD2:        CMP #$02                  
CODE_298DD4:        BEQ CODE_298DDF           
CODE_298DD6:        LDA #$01                  
CODE_298DD8:        STA $0669,x               
CODE_298DDB:        JSR CODE_298F21           
CODE_298DDE:        RTL                       

CODE_298DDF:        JSL CODE_279BC3           
CODE_298DE3:        LDA $1021,x               
CODE_298DE6:        BEQ CODE_298DEC           
CODE_298DE8:        JSL CODE_279B6F           
CODE_298DEC:        LDA $9C                   
CODE_298DEE:        BNE CODE_298E04           
CODE_298DF0:        LDY #$00                  
CODE_298DF2:        BNE CODE_298E0B           
CODE_298DF4:        LDA $0781                 
CODE_298DF7:        BPL CODE_298DFA           
CODE_298DF9:        DEY                       
CODE_298DFA:        CLC                       
CODE_298DFB:        ADC $5F,x                 
CODE_298DFD:        STA $5F,x                 
CODE_298DFF:        TYA                       
CODE_298E00:        ADC $44,x                 
CODE_298E02:        STA $44,x                 
CODE_298E04:        JSR CODE_298F21           
CODE_298E07:        LDA $9C                   
CODE_298E09:        BNE CODE_298E1B           
CODE_298E0B:        LDY #$00                  
CODE_298E0D:        LDA $15                   
CODE_298E0F:        AND #$0C                  
CODE_298E11:        BEQ CODE_298E14           
CODE_298E13:        INY                       
CODE_298E14:        TYA                       
CODE_298E15:        STA $0669,x               
CODE_298E18:        JSR CODE_298E1C           
CODE_298E1B:        RTL                       

CODE_298E1C:        LDA $1021,x               
CODE_298E1F:        JSL CODE_20FB1F           

PNTR_298E23:        dw CODE_298E31
                    dw CODE_298E46
                    dw CODE_298ED9
                    dw CODE_298E76
                    dw CODE_298E5F
                    dw CODE_298ED9
                    dw CODE_298EAA

CODE_298E31:        LDA #$00
CODE_298E33:        STA $0669,x               
CODE_298E36:        LDA $44,x                 
CODE_298E38:        CMP #$05                  
CODE_298E3A:        BNE CODE_298E45           
CODE_298E3C:        LDA $5F,x                 
CODE_298E3E:        CMP #$B0                  
CODE_298E40:        BCC CODE_298E45           
CODE_298E42:        JSR CODE_298EBE           
CODE_298E45:        RTS                       

CODE_298E46:        JSR CODE_298EEA           
CODE_298E49:        LDA $0518,x               
CODE_298E4C:        BNE CODE_298E5E           
CODE_298E4E:        INC $1021,x               
CODE_298E51:        LDA #$40                  
CODE_298E53:        STA $9E,x                 
CODE_298E55:        LDA #$14                  
CODE_298E57:        STA $8C,x                 
CODE_298E59:        LDA #$10                  
CODE_298E5B:        STA $0518,x               
CODE_298E5E:        RTS                       

CODE_298E5F:        JSR CODE_298EEA           
CODE_298E62:        LDA $0518,x               
CODE_298E65:        BNE CODE_298E75           
CODE_298E67:        INC $1021,x               
CODE_298E6A:        LDA #$40                  
CODE_298E6C:        STA $9E,x                 
CODE_298E6E:        LDA #$EC                  
CODE_298E70:        STA $8C,x                 
CODE_298E72:        JMP CODE_298E59           

CODE_298E75:        RTS                       

CODE_298E76:        JSL CODE_27A7EF           
CODE_298E7A:        JSL CODE_27A7E4           
CODE_298E7E:        DEC $9E,x                 
CODE_298E80:        LDA $71,x                 
CODE_298E82:        CMP #$10                  
CODE_298E84:        BCS CODE_298EA9                   
CODE_298E86:        LDA #$10                  
CODE_298E88:        STA $71,x                 
CODE_298E8A:        INC $1021,x               
CODE_298E8D:        LDA #$01                  
CODE_298E8F:        STA $077B,x               
CODE_298E92:        STA $0776,x               
CODE_298E95:        LDA #$00                  
CODE_298E97:        STA $8C,x                 
CODE_298E99:        LDA #$C0                  
CODE_298E9B:        STA $9E,x                 
CODE_298E9D:        LDA $0783,x               
CODE_298EA0:        AND #$03                  
CODE_298EA2:        TAY                       
CODE_298EA3:        LDA $C5EF,y               
CODE_298EA6:        STA $0518,x               
CODE_298EA9:        RTS                       

CODE_298EAA:        JSL CODE_27A7EF           
CODE_298EAE:        JSL CODE_27A7E4           
CODE_298EB2:        DEC $9E,x                 
CODE_298EB4:        LDA $71,x                 
CODE_298EB6:        CMP #$10                  
CODE_298EB8:        BCS CODE_298ED8                   
CODE_298EBA:        LDA #$10                  
CODE_298EBC:        STA $71,x                 
CODE_298EBE:        LDA #$01                  
CODE_298EC0:        STA $1021,x               
CODE_298EC3:        LDA #$01                  
CODE_298EC5:        STA $077B,x               
CODE_298EC8:        LDA #$00                  
CODE_298ECA:        STA $0776,x               
CODE_298ECD:        LDA #$00                  
CODE_298ECF:        STA $8C,x                 
CODE_298ED1:        LDA #$C0                  
CODE_298ED3:        STA $9E,x                 
CODE_298ED5:        JMP CODE_298E9D           

CODE_298ED8:        RTS                       

CODE_298ED9:        LDA $0518,x               
CODE_298EDC:        BNE CODE_298EE9           
CODE_298EDE:        INC $1021,x               
CODE_298EE1:        LDY $1021,x               
CODE_298EE4:        LDA #$20                  
CODE_298EE6:        STA $0518,x               
CODE_298EE9:        RTS                       

CODE_298EEA:        JSL CODE_27A7EF           
CODE_298EEE:        JSL CODE_27A7E4           
CODE_298EF2:        LDA $0776,x               
CODE_298EF5:        AND #$01                  
CODE_298EF7:        TAY                       
CODE_298EF8:        LDA $8C,x                 
CODE_298EFA:        CMP $C5EB,y               
CODE_298EFD:        BNE CODE_298F03           
CODE_298EFF:        INC $0776,x               
CODE_298F02:        INY                       
CODE_298F03:        CLC                       
CODE_298F04:        ADC $C5E7,y               
CODE_298F07:        STA $8C,x                 
CODE_298F09:        LDA $077B,x               
CODE_298F0C:        AND #$01                  
CODE_298F0E:        TAY                       
CODE_298F0F:        LDA $9E,x                 
CODE_298F11:        CMP $C5EB,y               
CODE_298F14:        BNE CODE_298F1A           
CODE_298F16:        INC $077B,x               
CODE_298F19:        INY                       
CODE_298F1A:        CLC                       
CODE_298F1B:        ADC $C5E7,y               
CODE_298F1E:        STA $9E,x                 
CODE_298F20:        RTS                       

CODE_298F21:        LDA $0679,x               
CODE_298F24:        AND #$CF                  
CODE_298F26:        ORA #$20                  
CODE_298F28:        LDY $1021,x               
CODE_298F2B:        BNE CODE_298F31           
CODE_298F2D:        AND #$CF                  
CODE_298F2F:        ORA #$10                  
CODE_298F31:        STA $0679,x               
CODE_298F34:        LDA $0651,x               
CODE_298F37:        STA $1CEF                 
CODE_298F3A:        LDA $5F,x                 
CODE_298F3C:        PHA                       
CODE_298F3D:        CLC                       
CODE_298F3E:        ADC #$08                  
CODE_298F40:        STA $5F,x                 
CODE_298F42:        LDA $44,x                 
CODE_298F44:        PHA                       
CODE_298F45:        ADC #$00                  
CODE_298F47:        STA $44,x                 
CODE_298F49:        ASL $0651,x               
CODE_298F4C:        JSL CODE_279EE1           
CODE_298F50:        PLA                       
CODE_298F51:        STA $44,x                 
CODE_298F53:        PLA                       
CODE_298F54:        STA $5F,x                 
CODE_298F56:        JSL CODE_279DC2           
CODE_298F5A:        LDA $C6,x                 
CODE_298F5C:        STA $D8                   
CODE_298F5E:        LDA $C7,x                 
CODE_298F60:        STA $D9                   
CODE_298F62:        LDA $0681,x               
CODE_298F65:        BNE CODE_298F20           
CODE_298F67:        LDA $83,x                 
CODE_298F69:        STA $00                   
CODE_298F6B:        LDA $0669,x               
CODE_298F6E:        TAX                       
CODE_298F6F:        REP #$10                  
CODE_298F71:        LDY $D8                   
CODE_298F73:        LDA $1CEF                 
CODE_298F76:        BMI CODE_298F87           
CODE_298F78:        LDA $00                   
CODE_298F7A:        CLC                       
CODE_298F7B:        ADC $C5F5,x               
CODE_298F7E:        STA $0811,y               
CODE_298F81:        CLC                       
CODE_298F82:        ADC #$08                  
CODE_298F84:        STA $0819,y               
CODE_298F87:        LDA $1CEF                 
CODE_298F8A:        AND #$10                  
CODE_298F8C:        BNE CODE_298F9D           
CODE_298F8E:        LDA $00                   
CODE_298F90:        CLC                       
CODE_298F91:        ADC $C5F5,x               
CODE_298F94:        STA $0815,y               
CODE_298F97:        CLC                       
CODE_298F98:        ADC #$08                  
CODE_298F9A:        STA $081D,y               
CODE_298F9D:        LDA $C5F3,x               
CODE_298FA0:        STA $0812,y               
CODE_298FA3:        STA $0816,y               
CODE_298FA6:        INC A                     
CODE_298FA7:        STA $081A,y               
CODE_298FAA:        STA $081E,y               
CODE_298FAD:        LDA $0803,y               
CODE_298FB0:        AND #$7F                  
CODE_298FB2:        STA $0E                   
CODE_298FB4:        STA $0813,y               
CODE_298FB7:        STA $081B,y               
CODE_298FBA:        LDA $0807,y               
CODE_298FBD:        AND #$7F                  
CODE_298FBF:        STA $0F                   
CODE_298FC1:        STA $0817,y               
CODE_298FC4:        STA $081F,y               
CODE_298FC7:        REP #$20                  
CODE_298FC9:        LDA $9B                   
CODE_298FCB:        AND #$00FF                
CODE_298FCE:        TAX                       
CODE_298FCF:        SEP #$20                  
CODE_298FD1:        LDA $7A,x                 
CODE_298FD3:        STA $01                   
CODE_298FD5:        STA $0810,y               
CODE_298FD8:        STA $0818,y               
CODE_298FDB:        CLC                       
CODE_298FDC:        ADC #$18                  
CODE_298FDE:        STA $0814,y               
CODE_298FE1:        STA $081C,y               
CODE_298FE4:        REP #$20                  
CODE_298FE6:        TYA                       
CODE_298FE7:        LSR A                     
CODE_298FE8:        LSR A                     
CODE_298FE9:        TAY                       
CODE_298FEA:        SEP #$20                  
CODE_298FEC:        LDA #$00                  
CODE_298FEE:        STA $0A24,y               
CODE_298FF1:        STA $0A25,y               
CODE_298FF4:        STA $0A26,y               
CODE_298FF7:        STA $0A27,y               
CODE_298FFA:        SEP #$10                  
CODE_298FFC:        LDA $0669,x               
CODE_298FFF:        BEQ CODE_299076           
CODE_299001:        JSL CODE_27A19D           
CODE_299005:        REP #$10                  
CODE_299007:        LDY $C6,x                 
CODE_299009:        LDA $00                   
CODE_29900B:        CLC                       
CODE_29900C:        ADC #$10                  
CODE_29900E:        STA $0801,y               
CODE_299011:        CLC                       
CODE_299012:        ADC #$08                  
CODE_299014:        STA $0805,y               
CODE_299017:        LDA $01                   
CODE_299019:        STA $0800,y               
CODE_29901C:        STA $0804,y               
CODE_29901F:        LDA $0E                   
CODE_299021:        ORA #$80                  
CODE_299023:        STA $0803,y               
CODE_299026:        STA $0807,y               
CODE_299029:        LDA #$B0                  
CODE_29902B:        STA $0802,y               
CODE_29902E:        INC A                     
CODE_29902F:        STA $0806,y               
CODE_299032:        LDA $00                   
CODE_299034:        CLC                       
CODE_299035:        ADC #$10                  
CODE_299037:        STA $0809,y               
CODE_29903A:        CLC                       
CODE_29903B:        ADC #$08                  
CODE_29903D:        STA $080D,y               
CODE_299040:        LDA $01                   
CODE_299042:        CLC                       
CODE_299043:        ADC #$18                  
CODE_299045:        STA $0808,y               
CODE_299048:        STA $080C,y               
CODE_29904B:        LDA $0F                   
CODE_29904D:        ORA #$80                  
CODE_29904F:        STA $080B,y               
CODE_299052:        STA $080F,y               
CODE_299055:        LDA #$B0                  
CODE_299057:        STA $080A,y               
CODE_29905A:        INC A                     
CODE_29905B:        STA $080E,y               
CODE_29905E:        REP #$20                  
CODE_299060:        TYA                       
CODE_299061:        LSR A                     
CODE_299062:        LSR A                     
CODE_299063:        TAY                       
CODE_299064:        SEP #$20                  
CODE_299066:        LDA #$00                  
CODE_299068:        STA $0A20,y               
CODE_29906B:        STA $0A21,y               
CODE_29906E:        STA $0A22,y               
CODE_299071:        STA $0A23,y               
CODE_299074:        SEP #$10                  
CODE_299076:        RTS                       

CODE_299077:        JSR CODE_29915E           
CODE_29907A:        LDA $83,x                 
CODE_29907C:        CMP #$C8                  
CODE_29907E:        BCC CODE_299086           
CODE_299080:        LDA #$00                  
CODE_299082:        STA $0661,x               
CODE_299085:        RTL                       

CODE_299086:        LDA $9C                   
CODE_299088:        BNE CODE_299085           
CODE_29908A:        LDA $0565                 
CODE_29908D:        AND #$03                  
CODE_29908F:        BNE CODE_299095           
CODE_299091:        DEC $68,x                 
CODE_299093:        BEQ CODE_299080           
CODE_299095:        JSL CODE_279BC3           
CODE_299099:        LDY $4D,x                 
CODE_29909B:        LDA $C5F7,y               
CODE_29909E:        STA $8C,x                 
CODE_2990A0:        LDA $C5FB,y               
CODE_2990A3:        STA $9E,x                 
CODE_2990A5:        JSL CODE_27A7E4           
CODE_2990A9:        JSL CODE_27A7EF           
CODE_2990AD:        LDA #$00                  
CODE_2990AF:        STA $44,x                 
CODE_2990B1:        JSL CODE_27A312           
CODE_2990B5:        BCC CODE_29912B           
CODE_2990B7:        LDA $82                   
CODE_2990B9:        CLC                       
CODE_2990BA:        ADC #$18                  
CODE_2990BC:        CMP $83,x                 
CODE_2990BE:        BCS CODE_29912C                   
CODE_2990C0:        LDA $9D                   
CODE_2990C2:        BMI CODE_29912B           
CODE_2990C4:        LDY $0671,x               
CODE_2990C7:        CPY #$A9                  
CODE_2990C9:        BNE CODE_2990E2           
CODE_2990CB:        CMP #$10                  
CODE_2990CD:        BCC CODE_2990E2           
CODE_2990CF:        LDA #$23                  
CODE_2990D1:        STA $1203                 
CODE_2990D4:        LDA #$08                  
CODE_2990D6:        STA $0518,x               
CODE_2990D9:        LDA $4D,x                 
CODE_2990DB:        CLC                       
CODE_2990DC:        ADC #$01                  
CODE_2990DE:        AND #$03                  
CODE_2990E0:        STA $4D,x                 
CODE_2990E2:        STZ $9D                   
CODE_2990E4:        STZ $A6                   
CODE_2990E6:        LDA #$01                  
CODE_2990E8:        STA $07BD                 
CODE_2990EB:        LDA $71,x                 
CODE_2990ED:        SEC                       
CODE_2990EE:        SBC #$1F                  
CODE_2990F0:        STA $70                   
CODE_2990F2:        LDA $56,x                 
CODE_2990F4:        SBC #$00                  
CODE_2990F6:        STA $55                   
CODE_2990F8:        LDY #$00                  
CODE_2990FA:        LDA $074D                 
CODE_2990FD:        BPL CODE_299100           
CODE_2990FF:        DEY                       
CODE_299100:        CLC                       
CODE_299101:        ADC $5E                   
CODE_299103:        STA $5E                   
CODE_299105:        TYA                       
CODE_299106:        ADC $43                   
CODE_299108:        STA $43                   
CODE_29910A:        JSR CODE_299282           
CODE_29910D:        BCC CODE_29912B           
CODE_29910F:        STA $00                   
CODE_299111:        LDA #$00                  
CODE_299113:        STA $0661,x               
CODE_299116:        LDY $0560                 
CODE_299119:        LDA $AF3A,y               
CODE_29911C:        CMP #$FF                  
CODE_29911E:        BEQ CODE_29912B           
CODE_299120:        SEC                       
CODE_299121:        SBC $00                   
CODE_299123:        CMP #$02                  
CODE_299125:        BCS CODE_29912B                   
CODE_299127:        JSL CODE_27A4C6           
CODE_29912B:        RTL                       

CODE_29912C:        LDA #$F8                  
CODE_29912E:        LDY $BB                   
CODE_299130:        BNE CODE_299134           
CODE_299132:        LDA #$08                  
CODE_299134:        CLC                       
CODE_299135:        ADC $82                   
CODE_299137:        CMP $83,x                 
CODE_299139:        BCC CODE_299144           
CODE_29913B:        LDA $9D                   
CODE_29913D:        BPL CODE_299143           
CODE_29913F:        LDA #$10                  
CODE_299141:        STA $9D                   
CODE_299143:        RTL                       

CODE_299144:        LDA $8C,x                 
CODE_299146:        BEQ CODE_299159           
CODE_299148:        LDA $5E                   
CODE_29914A:        SEC                       
CODE_29914B:        SBC $5F,x                 
CODE_29914D:        EOR $8C,x                 
CODE_29914F:        BMI CODE_299156           
CODE_299151:        LDA $8C,x                 
CODE_299153:        STA $8B                   
CODE_299155:        RTL                       

CODE_299156:        STZ $8B                   
CODE_299158:        RTL                       

CODE_299159:        JSL CODE_299912           
CODE_29915D:        RTL                       

CODE_29915E:        JSL CODE_279DC2           
CODE_299162:        LDA #$00                  
CODE_299164:        STA $0651,x               
CODE_299167:        LDA $68,x                 
CODE_299169:        CMP #$20                  
CODE_29916B:        BCS CODE_29917C                   
CODE_29916D:        LSR A                     
CODE_29916E:        LSR A                     
CODE_29916F:        LSR A                     
CODE_299170:        TAY                       
CODE_299171:        LDA $0565                 
CODE_299174:        AND $C618,y               
CODE_299177:        BNE CODE_29917C           
CODE_299179:        BRL CODE_29922A           

CODE_29917C:        LDA $7A,x                 
CODE_29917E:        STA $01                   
CODE_299180:        LDY $4D,x                 
CODE_299182:        LDA $0518,x               
CODE_299185:        BEQ CODE_299189           
CODE_299187:        LDY #$04                  
CODE_299189:        STY $02                   
CODE_29918B:        STZ $03                   
CODE_29918D:        LDA $C6,x                 
CODE_29918F:        STA $DA                   
CODE_299191:        LDA $C7,x                 
CODE_299193:        STA $DB                   
CODE_299195:        JSL CODE_27A19D           
CODE_299199:        LDA $C6,x                 
CODE_29919B:        STA $DC                   
CODE_29919D:        LDA $C7,x                 
CODE_29919F:        STA $DD                   
CODE_2991A1:        REP #$10                  
CODE_2991A3:        LDY $DA                   
CODE_2991A5:        STZ $D8                   
CODE_2991A7:        STZ $D9                   
CODE_2991A9:        LDA $83,x                 
CODE_2991AB:        STA $0801,y               
CODE_2991AE:        CLC                       
CODE_2991AF:        ADC #$08                  
CODE_2991B1:        STA $0805,y               
CODE_2991B4:        LDA $01                   
CODE_2991B6:        STA $0800,y               
CODE_2991B9:        STA $0804,y               
CODE_2991BC:        CLC                       
CODE_2991BD:        ADC #$08                  
CODE_2991BF:        STA $01                   
CODE_2991C1:        REP #$20                  
CODE_2991C3:        LDA $02                   
CODE_2991C5:        ASL A                     
CODE_2991C6:        ASL A                     
CODE_2991C7:        ADC $D8                   
CODE_2991C9:        TAX                       
CODE_2991CA:        SEP #$20                  
CODE_2991CC:        LDA $C5FF,x               
CODE_2991CF:        STA $0802,y               
CODE_2991D2:        INC A                     
CODE_2991D3:        STA $0806,y               
CODE_2991D6:        LDX $02                   
CODE_2991D8:        LDA $C613,x               
CODE_2991DB:        CPX #$0004                
CODE_2991DE:        BNE CODE_2991E9           
CODE_2991E0:        LDX $D8                   
CODE_2991E2:        CPX #$0002                
CODE_2991E5:        BNE CODE_2991E9           
CODE_2991E7:        LDA #$44                  
CODE_2991E9:        ORA #$20                  
CODE_2991EB:        STA $0803,y               
CODE_2991EE:        STA $0807,y               
CODE_2991F1:        PHY                       
CODE_2991F2:        REP #$20                  
CODE_2991F4:        TYA                       
CODE_2991F5:        LSR A                     
CODE_2991F6:        LSR A                     
CODE_2991F7:        TAY                       
CODE_2991F8:        SEP #$20                  
CODE_2991FA:        LDA #$00                  
CODE_2991FC:        STA $0A20,y               
CODE_2991FF:        STA $0A21,y               
CODE_299202:        PLY                       
CODE_299203:        PHY                       
CODE_299204:        JSR CODE_29922B           
CODE_299207:        PLY                       
CODE_299208:        REP #$20                  
CODE_29920A:        TYA                       
CODE_29920B:        CLC                       
CODE_29920C:        ADC #$0008                
CODE_29920F:        TAY                       
CODE_299210:        LDA $DC                   
CODE_299212:        CLC                       
CODE_299213:        ADC #$0008                
CODE_299216:        STA $DC                   
CODE_299218:        LDA $9B                   
CODE_29921A:        AND #$00FF                
CODE_29921D:        TAX                       
CODE_29921E:        SEP #$20                  
CODE_299220:        INC $D8                   
CODE_299222:        LDA $D8                   
CODE_299224:        CMP #$04                  
CODE_299226:        BNE CODE_2991A9           
CODE_299228:        SEP #$10                  
CODE_29922A:        RTS                       

CODE_29922B:        LDA $0425                 
CODE_29922E:        BEQ CODE_29922A           
CODE_299230:        LDA $0800,y               
CODE_299233:        CMP #$F8                  
CODE_299235:        BCC CODE_29922A           
CODE_299237:        LDX $DC                   
CODE_299239:        LDA $0800,y               
CODE_29923C:        STA $0800,x               
CODE_29923F:        STA $0804,x               
CODE_299242:        LDA $0801,y               
CODE_299245:        STA $0801,x               
CODE_299248:        LDA $0805,y               
CODE_29924B:        STA $0805,x               
CODE_29924E:        LDA $0802,y               
CODE_299251:        STA $0802,x               
CODE_299254:        LDA $0806,y               
CODE_299257:        STA $0806,x               
CODE_29925A:        LDA $0803,y               
CODE_29925D:        STA $0803,x               
CODE_299260:        LDA $0807,y               
CODE_299263:        STA $0807,x               
CODE_299266:        REP #$20                  
CODE_299268:        TYA                       
CODE_299269:        LSR A                     
CODE_29926A:        LSR A                     
CODE_29926B:        TAY                       
CODE_29926C:        TXA                       
CODE_29926D:        LSR A                     
CODE_29926E:        LSR A                     
CODE_29926F:        TAX                       
CODE_299270:        SEP #$20                  
CODE_299272:        LDA #$00                  
CODE_299274:        STA $0A20,x               
CODE_299277:        STA $0A21,x               
CODE_29927A:        INC A                     
CODE_29927B:        STA $0A20,y               
CODE_29927E:        STA $0A21,y               
CODE_299281:        RTS                       

CODE_299282:        LDA #$06                  
CODE_299284:        LDY $056F                 
CODE_299287:        BNE CODE_29928D           
CODE_299289:        LDY $BB                   
CODE_29928B:        BNE CODE_29928F           
CODE_29928D:        LDA #$12                  
CODE_29928F:        ADC $70                   
CODE_299291:        AND #$F0                  
CODE_299293:        STA $02                   
CODE_299295:        LDA $55                   
CODE_299297:        ADC #$00                  
CODE_299299:        CMP #$10                  
CODE_29929B:        BCS CODE_2992C6                   
CODE_29929D:        ADC #$20                  
CODE_29929F:        STA $01                   
CODE_2992A1:        STA $D9                   
CODE_2992A3:        LDA $5E                   
CODE_2992A5:        CLC                       
CODE_2992A6:        ADC #$08                  
CODE_2992A8:        LSR A                     
CODE_2992A9:        LSR A                     
CODE_2992AA:        LSR A                     
CODE_2992AB:        LSR A                     
CODE_2992AC:        ORA $02                   
CODE_2992AE:        STA $00                   
CODE_2992B0:        STA $D8                   
CODE_2992B2:        LDA #$7E                  
CODE_2992B4:        STA $DA                   
CODE_2992B6:        LDY #$00                  
CODE_2992B8:        LDA [$D8],y               
CODE_2992BA:        PHA                       
CODE_2992BB:        ASL A                     
CODE_2992BC:        ROL A                     
CODE_2992BD:        ROL A                     
CODE_2992BE:        AND #$03                  
CODE_2992C0:        TAY                       
CODE_2992C1:        PLA                       
CODE_2992C2:        CMP $1E9A,y               
CODE_2992C5:        RTS                       

CODE_2992C6:        CLC                       
CODE_2992C7:        RTS                       

CODE_2992C8:        LDA #$00                  
CODE_2992CA:        LDY $8C,x                 
CODE_2992CC:        BMI CODE_2992D0           
CODE_2992CE:        LDA #$40                  
CODE_2992D0:        STA $0679,x               
CODE_2992D3:        RTS                       

CODE_2992D4:        JSL CODE_27A837           
CODE_2992D8:        LDA $C61C,y               
CODE_2992DB:        STA $8C,x                 
CODE_2992DD:        RTL                       

CODE_2992DE:        LDA $8C,x                 
CODE_2992E0:        BPL CODE_2992E6           
CODE_2992E2:        JSL CODE_27A859           
CODE_2992E6:        CMP #$10                  
CODE_2992E8:        LDA #$01                  
CODE_2992EA:        BCC CODE_2992EE           
CODE_2992EC:        ADC #$00                  
CODE_2992EE:        STA $1FE9,x               
CODE_2992F1:        JSL CODE_279BC3           
CODE_2992F5:        JSR CODE_2992C8           
CODE_2992F8:        LDA $1FD2,x               
CODE_2992FB:        LSR A                     
CODE_2992FC:        LSR A                     
CODE_2992FD:        LSR A                     
CODE_2992FE:        AND #$01                  
CODE_299300:        STA $0669,x               
CODE_299303:        JSL CODE_279EBB           
CODE_299307:        LDA $9C                   
CODE_299309:        BNE CODE_2992DD           
CODE_29930B:        INC $1FD2,x               
CODE_29930E:        JSL CODE_27A7E4           
CODE_299312:        JSL CODE_27A7EF           
CODE_299316:        LDA $0797,x               
CODE_299319:        STA $1CEF                 
CODE_29931C:        INC $05F4                 
CODE_29931F:        JSL CODE_279B6F           
CODE_299323:        DEC $05F4                 
CODE_299326:        LDA $0797,x               
CODE_299329:        BEQ CODE_299397           
CODE_29932B:        CMP $1CEF                 
CODE_29932E:        BEQ CODE_29933A           
CODE_299330:        LDA #$0C                  
CODE_299332:        LDY $BB                   
CODE_299334:        BEQ CODE_299338           
CODE_299336:        LDA #$14                  
CODE_299338:        STA $9E,x                 
CODE_29933A:        INC $1FD2,x               
CODE_29933D:        INC $1FD2,x               
CODE_299340:        LDA #$F4                  
CODE_299342:        LDY $BB                   
CODE_299344:        BNE CODE_299348           
CODE_299346:        LDA #$F0                  
CODE_299348:        CMP $9E,x                 
CODE_29934A:        BPL CODE_299350           
CODE_29934C:        DEC $9E,x                 
CODE_29934E:        DEC $9E,x                 
CODE_299350:        INC $9E,x                 
CODE_299352:        LDA #$05                  
CODE_299354:        STA $101F                 
CODE_299357:        LDA $9D                   
CODE_299359:        BMI CODE_299396           
CODE_29935B:        LDY #$00                  
CODE_29935D:        LDA $074D                 
CODE_299360:        BPL CODE_299363           
CODE_299362:        DEY                       
CODE_299363:        CLC                       
CODE_299364:        ADC $5E                   
CODE_299366:        STA $5E                   
CODE_299368:        TYA                       
CODE_299369:        ADC $43                   
CODE_29936B:        STA $43                   
CODE_29936D:        LDA $71,x                 
CODE_29936F:        SEC                       
CODE_299370:        SBC #$1B                  
CODE_299372:        STA $70                   
CODE_299374:        LDA $56,x                 
CODE_299376:        SBC #$00                  
CODE_299378:        STA $55                   
CODE_29937A:        LDA #$00                  
CODE_29937C:        STA $9D                   
CODE_29937E:        STA $A6                   
CODE_299380:        LDA $17                   
CODE_299382:        AND #$03                  
CODE_299384:        BNE CODE_299396           
CODE_299386:        JSL CODE_279DD9           
CODE_29938A:        LDA $8B                   
CODE_29938C:        BEQ CODE_299396           
CODE_29938E:        BPL CODE_299394           
CODE_299390:        INC $8B                   
CODE_299392:        INC $8B                   
CODE_299394:        DEC $8B                   
CODE_299396:        RTL                       

CODE_299397:        LDA $9E,x                 
CODE_299399:        BEQ CODE_2993A3           
CODE_29939B:        BPL CODE_2993A1           
CODE_29939D:        INC $9E,x                 
CODE_29939F:        INC $9E,x                 
CODE_2993A1:        DEC $9E,x                 
CODE_2993A3:        RTL                       

CODE_2993A4:        LDA #$02                  
CODE_2993A6:        STA $0679,x               
CODE_2993A9:        LDA #$00                  
CODE_2993AB:        STA $94,x                 
CODE_2993AD:        STA $68,x                 
CODE_2993AF:        STA $1021,x               
CODE_2993B2:        LDA $71,x                 
CODE_2993B4:        SEC                       
CODE_2993B5:        SBC #$0C                  
CODE_2993B7:        STA $71,x                 
CODE_2993B9:        LDA $56,x                 
CODE_2993BB:        SBC #$00                  
CODE_2993BD:        STA $56,x                 
CODE_2993BF:        RTL                       

CODE_2993C0:        LDA #$30                  
CODE_2993C2:        STA $68,x                 
CODE_2993C4:        JSR CODE_2997CF           
CODE_2993C7:        JSR CODE_2995F3           
CODE_2993CA:        JSR CODE_2996A7           
CODE_2993CD:        JMP CODE_299431           

CODE_2993D0:        JSL CODE_2993C4           
CODE_2993D4:        LDA $9C                   
CODE_2993D6:        BNE CODE_2993FE           
CODE_2993D8:        LDA $4D,x                 
CODE_2993DA:        AND #$01                  
CODE_2993DC:        ORA $0679,x               
CODE_2993DF:        TAY                       
CODE_2993E0:        LDA $0518,x               
CODE_2993E3:        BNE CODE_2993ED           
CODE_2993E5:        LDA $C61E,y               
CODE_2993E8:        STA $0518,x               
CODE_2993EB:        INC $4D,x                 
CODE_2993ED:        AND #$00                  
CODE_2993EF:        BNE CODE_2993FE           
CODE_2993F1:        LDA $68,x                 
CODE_2993F3:        CMP $C626,y               
CODE_2993F6:        BEQ CODE_2993FE           
CODE_2993F8:        CLC                       
CODE_2993F9:        ADC $C622,y               
CODE_2993FC:        STA $68,x                 
CODE_2993FE:        RTL                       

CODE_2993FF:        LDA $0518,x               
CODE_299402:        BNE CODE_299427           
CODE_299404:        LDA $15                   
CODE_299406:        AND #$01                  
CODE_299408:        BNE CODE_299427           
CODE_29940A:        LDY $1021,x               
CODE_29940D:        LDA $8C,x                 
CODE_29940F:        CLC                       
CODE_299410:        ADC $C649,y               
CODE_299413:        STA $8C,x                 
CODE_299415:        CMP $C64B,y               
CODE_299418:        BNE CODE_299427           
CODE_29941A:        LDA $1021,x               
CODE_29941D:        EOR #$01                  
CODE_29941F:        STA $1021,x               
CODE_299422:        LDA #$A0                  
CODE_299424:        STA $0518,x               
CODE_299427:        LDA #$00                  
CODE_299429:        STA $8C,x                 
CODE_29942B:        JSR CODE_2995B8           
CODE_29942E:        JSR CODE_2996A7           
CODE_299431:        JSL CODE_279BC7           
CODE_299435:        LDA $0583                 
CODE_299438:        BNE CODE_2994A0           
CODE_29943A:        LDA $0671,x               
CODE_29943D:        SEC                       
CODE_29943E:        SBC #$90                  
CODE_299440:        STA $0E                   
CODE_299442:        JSL CODE_27A85F           
CODE_299446:        BNE CODE_2994A0           
CODE_299448:        LDY #$06                  
CODE_29944A:        STY $00                   
CODE_29944C:        CPY #$06                  
CODE_29944E:        BNE CODE_299456           
CODE_299450:        REP #$20                  
CODE_299452:        LDA $D8                   
CODE_299454:        BRA CODE_299461           

CODE_299456:        REP #$20                  
CODE_299458:        TYA                       
CODE_299459:        AND #$00FF                
CODE_29945C:        ASL A                     
CODE_29945D:        ASL A                     
CODE_29945E:        CLC                       
CODE_29945F:        ADC $DA                   
CODE_299461:        STA $0F                   
CODE_299463:        SEP #$20                  
CODE_299465:        LDA $70                   
CODE_299467:        SEC                       
CODE_299468:        SBC $0543                 
CODE_29946B:        CLC                       
CODE_29946C:        ADC #$18                  
CODE_29946E:        LDY $9D                   
CODE_299470:        BPL CODE_299475           
CODE_299472:        SEC                       
CODE_299473:        SBC #$10                  
CODE_299475:        REP #$10                  
CODE_299477:        LDY $0F                   
CODE_299479:        SEC                       
CODE_29947A:        SBC $0801,y               
CODE_29947D:        CMP #$09                  
CODE_29947F:        BCS CODE_299499                   
CODE_299481:        LDA $43                   
CODE_299483:        SEC                       
CODE_299484:        SBC $44,x                 
CODE_299486:        BNE CODE_299499           
CODE_299488:        LDA $5E                   
CODE_29948A:        SEC                       
CODE_29948B:        SBC $0210                 
CODE_29948E:        CLC                       
CODE_29948F:        ADC #$08                  
CODE_299491:        SEC                       
CODE_299492:        SBC $0800,y               
CODE_299495:        CMP #$09                  
CODE_299497:        BCC CODE_2994A3           
CODE_299499:        SEP #$30                  
CODE_29949B:        LDY $00                   
CODE_29949D:        DEY                       
CODE_29949E:        BPL CODE_29944A           
CODE_2994A0:        SEP #$30                  
CODE_2994A2:        RTL                       

CODE_2994A3:        LDA $BF                   
CODE_2994A5:        BNE CODE_2994A0           
CODE_2994A7:        LDA $0801,y               
CODE_2994AA:        CMP #$F0                  
CODE_2994AC:        BEQ CODE_299499           
CODE_2994AE:        SEP #$10                  
CODE_2994B0:        LDA $0E                   
CODE_2994B2:        BEQ CODE_29951F           
CODE_2994B4:        LDA $68,x                 
CODE_2994B6:        BNE CODE_2994E3           
CODE_2994B8:        LDA $9D                   
CODE_2994BA:        BPL CODE_2994C1           
CODE_2994BC:        LDA #$00                  
CODE_2994BE:        STA $9D                   
CODE_2994C0:        RTL                       

CODE_2994C1:        LDA $17                   
CODE_2994C3:        AND #$03                  
CODE_2994C5:        BNE CODE_2994D3           
CODE_2994C7:        LDA $8B                   
CODE_2994C9:        BEQ CODE_2994D3           
CODE_2994CB:        BPL CODE_2994D1           
CODE_2994CD:        INC $8B                   
CODE_2994CF:        INC $8B                   
CODE_2994D1:        DEC $8B                   
CODE_2994D3:        LDA #$00                  
CODE_2994D5:        STA $9D                   
CODE_2994D7:        STA $A6                   
CODE_2994D9:        JSL CODE_299596           
CODE_2994DD:        LDA #$10                  
CODE_2994DF:        STA $101F                 
CODE_2994E2:        RTL                       

CODE_2994E3:        LDA $68,x                 
CODE_2994E5:        LDY $00                   
CODE_2994E7:        CPY #$04                  
CODE_2994E9:        BCC CODE_2994ED           
CODE_2994EB:        EOR #$80                  
CODE_2994ED:        ASL A                     
CODE_2994EE:        BCS CODE_299511                   
CODE_2994F0:        LDA $05                   
CODE_2994F2:        ASL A                     
CODE_2994F3:        ASL A                     
CODE_2994F4:        ASL A                     
CODE_2994F5:        STA $9D                   
CODE_2994F7:        LDA $04                   
CODE_2994F9:        EOR #$FF                  
CODE_2994FB:        ASL A                     
CODE_2994FC:        ASL A                     
CODE_2994FD:        ASL A                     
CODE_2994FE:        BPL CODE_299508           
CODE_299500:        CMP #$C0                  
CODE_299502:        BCS CODE_29950E                   
CODE_299504:        LDA #$C0                  
CODE_299506:        BNE CODE_29950E           
CODE_299508:        CMP #$40                  
CODE_29950A:        BCC CODE_29950E           
CODE_29950C:        LDA #$40                  
CODE_29950E:        STA $8B                   
CODE_299510:        RTL                       

CODE_299511:        LDA $04                   
CODE_299513:        JSL CODE_2994FB           
CODE_299517:        LDA $05                   
CODE_299519:        ASL A                     
CODE_29951A:        ASL A                     
CODE_29951B:        ASL A                     
CODE_29951C:        STA $9D                   
CODE_29951E:        RTL                       

CODE_29951F:        LDY $00                   
CODE_299521:        LDA $94,x                 
CODE_299523:        CMP #$10                  
CODE_299525:        BCC CODE_299530           
CODE_299527:        CMP #$30                  
CODE_299529:        BCS CODE_299530                   
CODE_29952B:        TYA                       
CODE_29952C:        CLC                       
CODE_29952D:        ADC #$07                  
CODE_29952F:        TAY                       
CODE_299530:        LDA $9D                   
CODE_299532:        BMI CODE_29953A           
CODE_299534:        LDA $15                   
CODE_299536:        AND #$03                  
CODE_299538:        BNE CODE_29954B           
CODE_29953A:        LDA $C63B,y               
CODE_29953D:        LDY $9D                   
CODE_29953F:        BPL CODE_299546           
CODE_299541:        JSL CODE_27A859           
CODE_299545:        ASL A                     
CODE_299546:        CLC                       
CODE_299547:        ADC $68,x                 
CODE_299549:        STA $68,x                 
CODE_29954B:        LDA $04                   
CODE_29954D:        EOR $05                   
CODE_29954F:        BPL CODE_299557           
CODE_299551:        LDA $04                   
CODE_299553:        BPL CODE_29955B           
CODE_299555:        BMI CODE_29955F           
CODE_299557:        LDA $04                   
CODE_299559:        BPL CODE_29955F           
CODE_29955B:        JSL CODE_27A859           
CODE_29955F:        LDY $9D                   
CODE_299561:        BPL CODE_29956F           
CODE_299563:        JSL CODE_27A859           
CODE_299567:        ASL A                     
CODE_299568:        STA $8B                   
CODE_29956A:        LDA #$00                  
CODE_29956C:        STA $9D                   
CODE_29956E:        RTL                       

CODE_29956F:        LDY #$20                  
CODE_299571:        STA $00                   
CODE_299573:        ASL $00                   
CODE_299575:        ROR A                     
CODE_299576:        NOP                       
CODE_299577:        NOP                       
CODE_299578:        NOP                       
CODE_299579:        NOP                       
CODE_29957A:        NOP                       
CODE_29957B:        NOP                       
CODE_29957C:        CLC                       
CODE_29957D:        ADC $8B                   
CODE_29957F:        CLC                       
CODE_299580:        ADC $8C,x                 
CODE_299582:        STA $8B                   
CODE_299584:        BPL CODE_29958C           
CODE_299586:        JSL CODE_27A859           
CODE_29958A:        LDY #$E0                  
CODE_29958C:        CMP #$20                  
CODE_29958E:        BCC CODE_299592           
CODE_299590:        STY $8B                   
CODE_299592:        LDA #$10                  
CODE_299594:        STA $9D                   
CODE_299596:        LDA $70                   
CODE_299598:        PHA                       
CODE_299599:        REP #$10                  
CODE_29959B:        LDY $0F                   
CODE_29959D:        LDA $0801,y               
CODE_2995A0:        SEP #$10                  
CODE_2995A2:        CLC                       
CODE_2995A3:        ADC $0543                 
CODE_2995A6:        SEC                       
CODE_2995A7:        SBC #$18                  
CODE_2995A9:        STA $70                   
CODE_2995AB:        PLA                       
CODE_2995AC:        CMP $70                   
CODE_2995AE:        BCS CODE_2995B2                   
CODE_2995B0:        DEC $55                   
CODE_2995B2:        LDA #$08                  
CODE_2995B4:        STA $101F                 
CODE_2995B7:        RTL                       

CODE_2995B8:        JSR CODE_2997CF           
CODE_2995BB:        LDA $94,x                 
CODE_2995BD:        CLC                       
CODE_2995BE:        ADC #$07                  
CODE_2995C0:        AND #$3F                  
CODE_2995C2:        LDY $68,x                 
CODE_2995C4:        BMI CODE_2995D5           
CODE_2995C6:        CMP #$10                  
CODE_2995C8:        BCC CODE_2995E1           
CODE_2995CA:        CMP #$18                  
CODE_2995CC:        BCS CODE_2995D5                  
CODE_2995CE:        LDA #$08                  
CODE_2995D0:        STA $94,x                 
CODE_2995D2:        JMP CODE_2995DD           

CODE_2995D5:        AND #$20                  
CODE_2995D7:        BEQ CODE_2995E1           
CODE_2995D9:        LDA #$38                  
CODE_2995DB:        STA $94,x                 
CODE_2995DD:        LDA #$00                  
CODE_2995DF:        STA $68,x                 
CODE_2995E1:        LDA $15                   
CODE_2995E3:        AND #$07                  
CODE_2995E5:        BNE CODE_2995F3           
CODE_2995E7:        LDA $68,x                 
CODE_2995E9:        BEQ CODE_2995F3           
CODE_2995EB:        BMI CODE_2995F1           
CODE_2995ED:        DEC $68,x                 
CODE_2995EF:        BPL CODE_2995F3           
CODE_2995F1:        INC $68,x                 
CODE_2995F3:        LDA $94,x                 
CODE_2995F5:        AND #$0F                  
CODE_2995F7:        TAY                       
CODE_2995F8:        LDA $C62A,y               
CODE_2995FB:        STA $09                   
CODE_2995FD:        TYA                       
CODE_2995FE:        EOR #$FF                  
CODE_299600:        AND #$0F                  
CODE_299602:        CLC                       
CODE_299603:        ADC #$01                  
CODE_299605:        TAY                       
CODE_299606:        LDA $C62A,y               
CODE_299609:        STA $08                   
CODE_29960B:        LDA $94,x                 
CODE_29960D:        AND #$10                  
CODE_29960F:        BEQ CODE_29961B           
CODE_299611:        LDA $08                   
CODE_299613:        PHA                       
CODE_299614:        LDA $09                   
CODE_299616:        STA $08                   
CODE_299618:        PLA                       
CODE_299619:        STA $09                   
CODE_29961B:        LDA $09                   
CODE_29961D:        CMP #$03                  
CODE_29961F:        BCS CODE_29962D                   
CODE_299621:        LSR A                     
CODE_299622:        STA $01                   
CODE_299624:        STA $05                   
CODE_299626:        LDA #$00                  
CODE_299628:        STA $03                   
CODE_29962A:        JMP CODE_299649           

CODE_29962D:        LDY #$FF                  
CODE_29962F:        SEC                       
CODE_299630:        SBC #$03                  
CODE_299632:        INY                       
CODE_299633:        BCS CODE_299630                  
CODE_299635:        ADC #$03                  
CODE_299637:        STA $03                   
CODE_299639:        STY $01                   
CODE_29963B:        STY $03                   
CODE_29963D:        STY $05                   
CODE_29963F:        TAY                       
CODE_299640:        BEQ CODE_299649           
CODE_299642:        INC $01                   
CODE_299644:        DEY                       
CODE_299645:        BEQ CODE_299649           
CODE_299647:        INC $05                   
CODE_299649:        LDA $08                   
CODE_29964B:        CMP #$03                  
CODE_29964D:        BCS CODE_29965B                   
CODE_29964F:        LSR A                     
CODE_299650:        STA $00                   
CODE_299652:        STA $04                   
CODE_299654:        LDA #$00                  
CODE_299656:        STA $02                   
CODE_299658:        JMP CODE_299675           

CODE_29965B:        LDY #$FF                  
CODE_29965D:        SEC                       
CODE_29965E:        SBC #$03                  
CODE_299660:        INY                       
CODE_299661:        BCS CODE_29965E                   
CODE_299663:        ADC #$03                  
CODE_299665:        STY $00                   
CODE_299667:        STY $02                   
CODE_299669:        STY $04                   
CODE_29966B:        TAY                       
CODE_29966C:        BEQ CODE_299675           
CODE_29966E:        INC $00                   
CODE_299670:        DEY                       
CODE_299671:        BEQ CODE_299675           
CODE_299673:        INC $04                   
CODE_299675:        LDA $94,x                 
CODE_299677:        AND #$30                  
CODE_299679:        BEQ CODE_2996A0           
CODE_29967B:        CMP #$10                  
CODE_29967D:        BEQ CODE_299686           
CODE_29967F:        CMP #$30                  
CODE_299681:        BEQ CODE_2996A3           
CODE_299683:        JSR CODE_2996A3           
CODE_299686:        LDX #$01                  
CODE_299688:        LDA $00,x                 
CODE_29968A:        JSL CODE_27A859           
CODE_29968E:        STA $00,x                 
CODE_299690:        LDA $02,x                 
CODE_299692:        JSL CODE_27A859           
CODE_299696:        STA $02,x                 
CODE_299698:        LDA $04,x                 
CODE_29969A:        JSL CODE_27A859           
CODE_29969E:        STA $04,x                 
CODE_2996A0:        LDX $9B                   
CODE_2996A2:        RTS                       

CODE_2996A3:        LDX #$00                  
CODE_2996A5:        BEQ CODE_299688           
CODE_2996A7:        LDA $C6,x                 
CODE_2996A9:        STA $DA                   
CODE_2996AB:        LDA $C7,x                 
CODE_2996AD:        STA $DB                   
CODE_2996AF:        JSL CODE_27A227           
CODE_2996B3:        JSR CODE_2997F6           
CODE_2996B6:        REP #$10                  
CODE_2996B8:        LDY $DA                   
CODE_2996BA:        LDA $0D                   
CODE_2996BC:        STA $0801,y               
CODE_2996BF:        CLC                       
CODE_2996C0:        ADC $00                   
CODE_2996C2:        STA $0805,y               
CODE_2996C5:        CLC                       
CODE_2996C6:        ADC $02                   
CODE_2996C8:        STA $0809,y               
CODE_2996CB:        CLC                       
CODE_2996CC:        ADC $04                   
CODE_2996CE:        STA $080D,y               
CODE_2996D1:        LDA $0D                   
CODE_2996D3:        SEC                       
CODE_2996D4:        SBC $00                   
CODE_2996D6:        STA $0811,y               
CODE_2996D9:        SEC                       
CODE_2996DA:        SBC $02                   
CODE_2996DC:        STA $0815,y               
CODE_2996DF:        SEC                       
CODE_2996E0:        SBC $04                   
CODE_2996E2:        LDY $C6,x                 
CODE_2996E4:        STA $0801,y               
CODE_2996E7:        CLC                       
CODE_2996E8:        ADC #$08                  
CODE_2996EA:        STA $0819,y               
CODE_2996ED:        LDY $DA                   
CODE_2996EF:        LDA $0801,y               
CODE_2996F2:        CLC                       
CODE_2996F3:        ADC #$08                  
CODE_2996F5:        STA $0819,y               
CODE_2996F8:        LDA $0805,y               
CODE_2996FB:        CLC                       
CODE_2996FC:        ADC #$08                  
CODE_2996FE:        STA $081D,y               
CODE_299701:        LDA $0809,y               
CODE_299704:        CLC                       
CODE_299705:        ADC #$08                  
CODE_299707:        STA $0821,y               
CODE_29970A:        LDA $080D,y               
CODE_29970D:        CLC                       
CODE_29970E:        ADC #$08                  
CODE_299710:        STA $0825,y               
CODE_299713:        LDA $0811,y               
CODE_299716:        CLC                       
CODE_299717:        ADC #$08                  
CODE_299719:        STA $0829,y               
CODE_29971C:        LDA $0815,y               
CODE_29971F:        CLC                       
CODE_299720:        ADC #$08                  
CODE_299722:        STA $082D,y               
CODE_299725:        LDA $0E                   
CODE_299727:        STA $0800,y               
CODE_29972A:        STA $0818,y               
CODE_29972D:        CLC                       
CODE_29972E:        ADC $01                   
CODE_299730:        STA $0804,y               
CODE_299733:        STA $081C,y               
CODE_299736:        CLC                       
CODE_299737:        ADC $03                   
CODE_299739:        STA $0808,y               
CODE_29973C:        STA $0820,y               
CODE_29973F:        CLC                       
CODE_299740:        ADC $05                   
CODE_299742:        STA $080C,y               
CODE_299745:        STA $0824,y               
CODE_299748:        LDA $0E                   
CODE_29974A:        SEC                       
CODE_29974B:        SBC $01                   
CODE_29974D:        STA $0810,y               
CODE_299750:        STA $0828,y               
CODE_299753:        SEC                       
CODE_299754:        SBC $03                   
CODE_299756:        STA $0814,y               
CODE_299759:        STA $082C,y               
CODE_29975C:        SEC                       
CODE_29975D:        SBC $05                   
CODE_29975F:        LDY $C6,x                 
CODE_299761:        STA $0800,y               
CODE_299764:        STA $0818,y               
CODE_299767:        LDA $C6,x                 
CODE_299769:        STA $D8                   
CODE_29976B:        LDA $C7,x                 
CODE_29976D:        STA $D9                   
CODE_29976F:        LDY $DA                   
CODE_299771:        LDX #$0006                
CODE_299774:        CPX #$0000                
CODE_299777:        BNE CODE_29977B           
CODE_299779:        LDY $D8                   
CODE_29977B:        LDA $0C                   
CODE_29977D:        CMP #$FF                  
CODE_29977F:        BEQ CODE_299788           
CODE_299781:        LDA $0801,y               
CODE_299784:        CMP #$C2                  
CODE_299786:        BCC CODE_299792           
CODE_299788:        LDA #$F0                  
CODE_29978A:        STA $0801,y               
CODE_29978D:        STA $0819,y               
CODE_299790:        BNE CODE_2997AA           
CODE_299792:        LDA #$22                  
CODE_299794:        CPX #$0006                
CODE_299797:        BNE CODE_29979B           
CODE_299799:        LDA #$24                  
CODE_29979B:        STA $0803,y               
CODE_29979E:        STA $081B,y               
CODE_2997A1:        LDA #$EC                  
CODE_2997A3:        STA $0802,y               
CODE_2997A6:        INC A                     
CODE_2997A7:        STA $081A,y               
CODE_2997AA:        PHY                       
CODE_2997AB:        REP #$20                  
CODE_2997AD:        TYA                       
CODE_2997AE:        LSR A                     
CODE_2997AF:        LSR A                     
CODE_2997B0:        TAY                       
CODE_2997B1:        SEP #$20                  
CODE_2997B3:        LDA $0C                   
CODE_2997B5:        AND $C65A,x               
CODE_2997B8:        BEQ CODE_2997BC           
CODE_2997BA:        LDA #$01                  
CODE_2997BC:        STA $0A20,y               
CODE_2997BF:        STA $0A26,y               
CODE_2997C2:        PLY                       
CODE_2997C3:        INY                       
CODE_2997C4:        INY                       
CODE_2997C5:        INY                       
CODE_2997C6:        INY                       
CODE_2997C7:        DEX                       
CODE_2997C8:        BPL CODE_299774           
CODE_2997CA:        SEP #$10                  
CODE_2997CC:        LDX $9B                   
CODE_2997CE:        RTS                       

CODE_2997CF:        LDA $9C                   
CODE_2997D1:        BNE CODE_2997F5           
CODE_2997D3:        LDA $0068,x               
CODE_2997D6:        PHA                       
CODE_2997D7:        ASL A                     
CODE_2997D8:        ASL A                     
CODE_2997D9:        ASL A                     
CODE_2997DA:        ASL A                     
CODE_2997DB:        CLC                       
CODE_2997DC:        ADC $0689,x               
CODE_2997DF:        STA $0689,x               
CODE_2997E2:        PLA                       
CODE_2997E3:        PHP                       
CODE_2997E4:        LSR A                     
CODE_2997E5:        LSR A                     
CODE_2997E6:        LSR A                     
CODE_2997E7:        LSR A                     
CODE_2997E8:        CMP #$08                  
CODE_2997EA:        BCC CODE_2997EE           
CODE_2997EC:        ORA #$F0                  
CODE_2997EE:        PLP                       
CODE_2997EF:        ADC $94,x                 
CODE_2997F1:        AND #$3F                  
CODE_2997F3:        STA $94,x                 
CODE_2997F5:        RTS                       

CODE_2997F6:        LDA #$00                  
CODE_2997F8:        STA $0C                   
CODE_2997FA:        STA $0A                   
CODE_2997FC:        LDA $01                   
CODE_2997FE:        CLC                       
CODE_2997FF:        ADC $03                   
CODE_299801:        CLC                       
CODE_299802:        ADC $05                   
CODE_299804:        STA $0B                   
CODE_299806:        PHA                       
CODE_299807:        LDA $5F,x                 
CODE_299809:        SEC                       
CODE_29980A:        SBC $0B                   
CODE_29980C:        STA $0B                   
CODE_29980E:        PLA                       
CODE_29980F:        BPL CODE_299813           
CODE_299811:        DEC $0A                   
CODE_299813:        LDA $44,x                 
CODE_299815:        SBC $0A                   
CODE_299817:        STA $0A                   
CODE_299819:        LDY #$00                  
CODE_29981B:        LDA $0B                   
CODE_29981D:        CMP $0210                 
CODE_299820:        LDA $0A                   
CODE_299822:        SBC $12                   
CODE_299824:        BEQ CODE_29982D           
CODE_299826:        LDA $C653,y               
CODE_299829:        ORA $0C                   
CODE_29982B:        STA $0C                   
CODE_29982D:        STX $0E                   
CODE_29982F:        LDX $C64D,y               
CODE_299832:        LDA $00,x                 
CODE_299834:        PHA                       
CODE_299835:        CLC                       
CODE_299836:        ADC $0B                   
CODE_299838:        STA $0B                   
CODE_29983A:        LDX $0E                   
CODE_29983C:        STY $0F                   
CODE_29983E:        LDY #$00                  
CODE_299840:        PLA                       
CODE_299841:        BPL CODE_299844           
CODE_299843:        DEY                       
CODE_299844:        TYA                       
CODE_299845:        ADC $0A                   
CODE_299847:        STA $0A                   
CODE_299849:        LDY $0F                   
CODE_29984B:        INY                       
CODE_29984C:        CPY #$07                  
CODE_29984E:        BNE CODE_29981B           
CODE_299850:        LDA $5F,x                 
CODE_299852:        SEC                       
CODE_299853:        SBC $0210                 
CODE_299856:        STA $0E                   
CODE_299858:        LDA $71,x                 
CODE_29985A:        SEC                       
CODE_29985B:        SBC $0543                 
CODE_29985E:        STA $0D                   
CODE_299860:        LDA $56,x                 
CODE_299862:        ADC #$00                  
CODE_299864:        CMP #$01                  
CODE_299866:        BNE CODE_29986E           
CODE_299868:        LDA $0D                   
CODE_29986A:        CMP #$E0                  
CODE_29986C:        BCC CODE_299872           
CODE_29986E:        LDA #$FF                  
CODE_299870:        STA $0C                   
CODE_299872:        RTS                       

CODE_299873:        LDA $71,x                 
CODE_299875:        BNE CODE_299879           
CODE_299877:        DEC $56,x                 
CODE_299879:        DEC $71,x                 
CODE_29987B:        LDY $44,x                 
CODE_29987D:        LDA $07E3                 
CODE_299880:        AND $C661,y               
CODE_299883:        BEQ CODE_299888           
CODE_299885:        INC $0669,x               
CODE_299888:        RTL                       

CODE_299889:        JSL CODE_279BC3           
CODE_29988D:        JSR CODE_299994           
CODE_299890:        LDA $9C                   
CODE_299892:        BNE CODE_299888           
CODE_299894:        LDA $68,x                 
CODE_299896:        BEQ CODE_2998AC           
CODE_299898:        LDA $0520,x               
CODE_29989B:        BNE CODE_2998AC           
CODE_29989D:        LDY #$04                  
CODE_29989F:        LDA $0661,y               
CODE_2998A2:        BEQ CODE_2998A7           
CODE_2998A4:        DEY                       
CODE_2998A5:        BNE CODE_29989F           
CODE_2998A7:        JSR CODE_299959           
CODE_2998AA:        DEC $68,x                 
CODE_2998AC:        LDY $0518,x               
CODE_2998AF:        LDA $C669,y               
CODE_2998B2:        STA $9E,x                 
CODE_2998B4:        JSL CODE_27A7D8           
CODE_2998B8:        JSL CODE_27A312           
CODE_2998BC:        BCC CODE_299928           
CODE_2998BE:        LDA $82                   
CODE_2998C0:        CLC                       
CODE_2998C1:        ADC #$18                  
CODE_2998C3:        CMP $83,x                 
CODE_2998C5:        BCS CODE_2998ED                   
CODE_2998C7:        LDA $9D                   
CODE_2998C9:        BMI CODE_2998EC           
CODE_2998CB:        LDA $71,x                 
CODE_2998CD:        SEC                       
CODE_2998CE:        SBC #$1F                  
CODE_2998D0:        STA $70                   
CODE_2998D2:        LDA $56,x                 
CODE_2998D4:        SBC #$00                  
CODE_2998D6:        STA $55                   
CODE_2998D8:        LDY #$00                  
CODE_2998DA:        STY $A6                   
CODE_2998DC:        LDA $074D                 
CODE_2998DF:        BPL CODE_2998E2           
CODE_2998E1:        DEY                       
CODE_2998E2:        CLC                       
CODE_2998E3:        ADC $5E                   
CODE_2998E5:        STA $5E                   
CODE_2998E7:        TYA                       
CODE_2998E8:        ADC $43                   
CODE_2998EA:        STA $43                   
CODE_2998EC:        RTL                       

CODE_2998ED:        LDA #$E8                  
CODE_2998EF:        LDY $BB                   
CODE_2998F1:        BEQ CODE_2998F8           
CODE_2998F3:        LDY $056F                 
CODE_2998F6:        BEQ CODE_2998FA           
CODE_2998F8:        LDA #$F8                  
CODE_2998FA:        CLC                       
CODE_2998FB:        ADC $82                   
CODE_2998FD:        CMP $83,x                 
CODE_2998FF:        BCC CODE_299912           
CODE_299901:        LDA $9D                   
CODE_299903:        BPL CODE_299911           
CODE_299905:        LDA #$01                  
CODE_299907:        STA $1200                 
CODE_29990A:        LDA #$10                  
CODE_29990C:        STA $9D                   
CODE_29990E:        JSR CODE_29992B           
CODE_299911:        RTL                       

CODE_299912:        JSL CODE_27A837           
CODE_299916:        INY                       
CODE_299917:        LDA $17                   
CODE_299919:        AND #$03                  
CODE_29991B:        STA $00                   
CODE_29991D:        LDA #$00                  
CODE_29991F:        CPY $00                   
CODE_299921:        BNE CODE_299926           
CODE_299923:        LDA $9928,y               
CODE_299926:        STA $8B                   
CODE_299928:        RTL                       

DATA_299929:        db $04,$FC

CODE_29992B:        LDA $0669,x               
CODE_29992E:        BNE CODE_299958           
CODE_299930:        LDY #$05                  
CODE_299932:        JSR CODE_299959           
CODE_299935:        LDA $0671,x               
CODE_299938:        CMP #$94                  
CODE_29993A:        BNE CODE_299940           
CODE_29993C:        LDA #$02                  
CODE_29993E:        STA $68,x                 
CODE_299940:        LDA #$40                  
CODE_299942:        STA $1CF3                 
CODE_299945:        LDA #$0A                  
CODE_299947:        STA $0518,x               
CODE_29994A:        INC $0669,x               
CODE_29994D:        LDY $44,x                 
CODE_29994F:        LDA $07E3                 
CODE_299952:        ORA $C661,y               
CODE_299955:        STA $07E3                 
CODE_299958:        RTS                       

CODE_299959:        LDA #$01                  
CODE_29995B:        STA $0661,y               
CODE_29995E:        LDA $5F,x                 
CODE_299960:        CLC                       
CODE_299961:        ADC #$08                  
CODE_299963:        STA $005F,y               
CODE_299966:        LDA $44,x                 
CODE_299968:        ADC #$00                  
CODE_29996A:        STA $0044,y               
CODE_29996D:        LDA $71,x                 
CODE_29996F:        STA $0071,y               
CODE_299972:        LDA $56,x                 
CODE_299974:        STA $0056,y               
CODE_299977:        LDA $0671,x               
CODE_29997A:        TAX                       
CODE_29997B:        LDA $C5DF,x               
CODE_29997E:        STA $0671,y               
CODE_299981:        LDA $C5E6,x               
CODE_299984:        STA $0586                 
CODE_299987:        LDA #$01                  
CODE_299989:        STA $057D                 
CODE_29998C:        LDX $9B                   
CODE_29998E:        LDA #$50                  
CODE_299990:        STA $0520,x               
CODE_299993:        RTS                       

CODE_299994:        JSL CODE_279DF8           
CODE_299998:        LDX $9B                   
CODE_29999A:        REP #$10                  
CODE_29999C:        LDY $C6,x                 
CODE_29999E:        STY $0A                   
CODE_2999A0:        LDA $07                   
CODE_2999A2:        STA $0E                   
CODE_2999A4:        LDA $0669,x               
CODE_2999A7:        LDX #$0006                
CODE_2999AA:        CMP #$00                  
CODE_2999AC:        BEQ CODE_2999AF           
CODE_2999AE:        INX                       
CODE_2999AF:        ASL $0E                   
CODE_2999B1:        BCS CODE_2999D7                   
CODE_2999B3:        LDA $04                   
CODE_2999B5:        STA $0F                   
CODE_2999B7:        LDA $00                   
CODE_2999B9:        LSR $0F                   
CODE_2999BB:        BCS CODE_2999C6                   
CODE_2999BD:        STA $0801,y               
CODE_2999C0:        CLC                       
CODE_2999C1:        ADC #$08                  
CODE_2999C3:        STA $0805,y               
CODE_2999C6:        LDA $00                   
CODE_2999C8:        LSR $0F                   
CODE_2999CA:        BCS CODE_2999D7                   
CODE_2999CC:        ADC #$10                  
CODE_2999CE:        STA $0809,y               
CODE_2999D1:        CLC                       
CODE_2999D2:        ADC #$08                  
CODE_2999D4:        STA $080D,y               
CODE_2999D7:        LDA $C681,x               
CODE_2999DA:        STA $0802,y               
CODE_2999DD:        INC A                     
CODE_2999DE:        STA $0806,y               
CODE_2999E1:        LDA $C689,x               
CODE_2999E4:        STA $080A,y               
CODE_2999E7:        INC A                     
CODE_2999E8:        STA $080E,y               
CODE_2999EB:        LDA #$21                  
CODE_2999ED:        STA $0803,y               
CODE_2999F0:        STA $0807,y               
CODE_2999F3:        STA $080B,y               
CODE_2999F6:        STA $080F,y               
CODE_2999F9:        LDA $01                   
CODE_2999FB:        STA $0800,y               
CODE_2999FE:        STA $0804,y               
CODE_299A01:        STA $0808,y               
CODE_299A04:        STA $080C,y               
CODE_299A07:        CLC                       
CODE_299A08:        ADC #$08                  
CODE_299A0A:        STA $01                   
CODE_299A0C:        REP #$20                  
CODE_299A0E:        PHY                       
CODE_299A0F:        TYA                       
CODE_299A10:        LSR A                     
CODE_299A11:        LSR A                     
CODE_299A12:        TAY                       
CODE_299A13:        LDA #$0000                
CODE_299A16:        STA $0A20,y               
CODE_299A19:        STA $0A22,y               
CODE_299A1C:        PLY                       
CODE_299A1D:        TYA                       
CODE_299A1E:        CLC                       
CODE_299A1F:        ADC #$0010                
CODE_299A22:        TAY                       
CODE_299A23:        SEP #$20                  
CODE_299A25:        DEX                       
CODE_299A26:        DEX                       
CODE_299A27:        BMI CODE_299A48           
CODE_299A29:        CPX #$0002                
CODE_299A2C:        BCC CODE_299A31           
CODE_299A2E:        JMP CODE_2999AF           

CODE_299A31:        SEP #$10                  
CODE_299A33:        PHX                       
CODE_299A34:        LDX $9B                   
CODE_299A36:        JSL CODE_27A19D           
CODE_299A3A:        PLX                       
CODE_299A3B:        LDY $9B                   
CODE_299A3D:        REP #$30                  
CODE_299A3F:        LDA $00C6,y               
CODE_299A42:        TAY                       
CODE_299A43:        SEP #$20                  
CODE_299A45:        JMP CODE_2999AF           

CODE_299A48:        SEP #$10                  
CODE_299A4A:        LDX $9B                   
CODE_299A4C:        LDA $0520,x               
CODE_299A4F:        BEQ CODE_299A95           
CODE_299A51:        REP #$10                  
CODE_299A53:        LDY $0A                   
CODE_299A55:        LDX #$0000                
CODE_299A58:        REP #$20                  
CODE_299A5A:        LDA $0810,y               
CODE_299A5D:        STA $0830,x               
CODE_299A60:        INY                       
CODE_299A61:        INY                       
CODE_299A62:        INX                       
CODE_299A63:        INX                       
CODE_299A64:        CPX #$0010                
CODE_299A67:        BCS CODE_299A76                   
CODE_299A69:        CPX #$0008                
CODE_299A6C:        BNE CODE_299A58           
CODE_299A6E:        TYA                       
CODE_299A6F:        CLC                       
CODE_299A70:        ADC #$0008                
CODE_299A73:        TAY                       
CODE_299A74:        BNE CODE_299A58           
CODE_299A76:        LDA #$0000                
CODE_299A79:        STA $0A2C                 
CODE_299A7C:        STA $0A2D                 
CODE_299A7F:        STA $0A2E                 
CODE_299A82:        STA $0A2F                 
CODE_299A85:        SEP #$20                  
CODE_299A87:        LDA #$F0                  
CODE_299A89:        STA $07FD,y               
CODE_299A8C:        STA $07F9,y               
CODE_299A8F:        STA $080D,y               
CODE_299A92:        STA $0809,y               
CODE_299A95:        SEP #$10                  
CODE_299A97:        LDX $9B                   
CODE_299A99:        RTS                       

CODE_299A9A:        JSR CODE_299A9E           
CODE_299A9D:        RTL                       

CODE_299A9E:        JSR CODE_29A100           
CODE_299AA1:        LDA $057C                 
CODE_299AA4:        BEQ CODE_299AD4           
CODE_299AA6:        LDX #$06                  
CODE_299AA8:        LDA $0661,x               
CODE_299AAB:        BEQ CODE_299ABB           
CODE_299AAD:        INX                       
CODE_299AAE:        LDA $0661,x               
CODE_299AB1:        BEQ CODE_299ABB           
CODE_299AB3:        LDA #$00                  
CODE_299AB5:        STA $057C                 
CODE_299AB8:        JMP CODE_299AD4           

CODE_299ABB:        LDY #$06                  
CODE_299ABD:        LDA $057D                 
CODE_299AC0:        AND #$7F                  
CODE_299AC2:        CMP #$02                  
CODE_299AC4:        BMI CODE_299AC8           
CODE_299AC6:        LDY #$1B                  
CODE_299AC8:        TYA                       
CODE_299AC9:        STA $0671,x               
CODE_299ACC:        LDA #$01                  
CODE_299ACE:        STA $0661,x               
CODE_299AD1:        JMP CODE_299ADF           

CODE_299AD4:        LDA $0425                 
CODE_299AD7:        BEQ CODE_299ADC           
CODE_299AD9:        JMP CODE_299DCD           

CODE_299ADC:        JMP CODE_299AE0           

CODE_299ADF:        RTS                       

CODE_299AE0:        LDY $25                   
CODE_299AE2:        LDA $0210                 
CODE_299AE5:        CLC                       
CODE_299AE6:        ADC $C699,y               
CODE_299AE9:        AND #$F0                  
CODE_299AEB:        STA $05                   
CODE_299AED:        LDA $12                   
CODE_299AEF:        ADC $C69B,y               
CODE_299AF2:        STA $06                   
CODE_299AF4:        CMP $22                   
CODE_299AF6:        BEQ CODE_299AFD           
CODE_299AF8:        BCC CODE_299AFD           
CODE_299AFA:        JMP CODE_299C42           

CODE_299AFD:        LDX $06                   
CODE_299AFF:        LDA $1B00,x               
CODE_299B02:        BMI CODE_299B1D           
CODE_299B04:        STA $01                   
CODE_299B06:        TAX                       
CODE_299B07:        ASL A                     
CODE_299B08:        CLC                       
CODE_299B09:        ADC $01                   
CODE_299B0B:        TAY                       
CODE_299B0C:        DEY                       
CODE_299B0D:        DEX                       
CODE_299B0E:        INX                       
CODE_299B0F:        INY                       
CODE_299B10:        INY                       
CODE_299B11:        INY                       
CODE_299B12:        LDA $1B40,y               
CODE_299B15:        LSR A                     
CODE_299B16:        LSR A                     
CODE_299B17:        LSR A                     
CODE_299B18:        LSR A                     
CODE_299B19:        CMP $06                   
CODE_299B1B:        BEQ CODE_299B1E           
CODE_299B1D:        RTS                       

CODE_299B1E:        LDA $1B3F,y               
CODE_299B21:        CMP #$FF                  
CODE_299B23:        BEQ CODE_299B1D           
CODE_299B25:        LDA $1B10,x               
CODE_299B28:        CMP #$00                  
CODE_299B2A:        BMI CODE_299B0E           
CODE_299B2C:        LDA $1B40,y               
CODE_299B2F:        ASL A                     
CODE_299B30:        ASL A                     
CODE_299B31:        ASL A                     
CODE_299B32:        ASL A                     
CODE_299B33:        CMP $05                   
CODE_299B35:        BNE CODE_299B0E           
CODE_299B37:        STX $01                   
CODE_299B39:        STA $00                   
CODE_299B3B:        LDA $1B3F,y               
CODE_299B3E:        CMP #$D5                  
CODE_299B40:        BNE CODE_299B47           
CODE_299B42:        INC $05FD                 
CODE_299B45:        BNE CODE_299B6B           
CODE_299B47:        CMP #$D4                  
CODE_299B49:        BNE CODE_299B60           
CODE_299B4B:        LDA $1B41,y               
CODE_299B4E:        PHA                       
CODE_299B4F:        AND #$01                  
CODE_299B51:        TAX                       
CODE_299B52:        INC A                     
CODE_299B53:        STA $7E3964               
CODE_299B57:        PLA                       
CODE_299B58:        AND #$7F                  
CODE_299B5A:        STA $7E3965               
CODE_299B5E:        BPL CODE_299B6B           
CODE_299B60:        CMP #$D3                  
CODE_299B62:        BNE CODE_299B78           
CODE_299B64:        TYA                       
CODE_299B65:        PHA                       
CODE_299B66:        JSR CODE_299C43           
CODE_299B69:        PLA                       
CODE_299B6A:        TAY                       
CODE_299B6B:        LDX $01                   
CODE_299B6D:        LDA $1B10,x               
CODE_299B70:        ORA #$80                  
CODE_299B72:        STA $1B10,x               
CODE_299B75:        JMP CODE_299B0E           

CODE_299B78:        LDA $1B3F,y               
CODE_299B7B:        CMP #$D6                  
CODE_299B7D:        BNE CODE_299B89           
CODE_299B7F:        LDA $1B41,y               
CODE_299B82:        STA $7E3963               
CODE_299B86:        JMP CODE_299B6B           

CODE_299B89:        CMP #$B4                  
CODE_299B8B:        BCC CODE_299BB7           
CODE_299B8D:        CMP #$D1                  
CODE_299B8F:        BNE CODE_299B97           
CODE_299B91:        JSR CODE_299C8B           
CODE_299B94:        JMP CODE_299B0E           

CODE_299B97:        CMP #$D2                  
CODE_299B99:        BNE CODE_299BA1           
CODE_299B9B:        JSR CODE_299C8B           
CODE_299B9E:        JMP CODE_299B0E           

CODE_299BA1:        CMP #$BC                  
CODE_299BA3:        BCC CODE_299BB0           
CODE_299BA5:        SBC #$BC                  
CODE_299BA7:        CLC                       
CODE_299BA8:        ADC #$01                  
CODE_299BAA:        JSR CODE_299D2D           
CODE_299BAD:        JMP CODE_299B0E           

CODE_299BB0:        SEC                       
CODE_299BB1:        SBC #$B3                  
CODE_299BB3:        STA $0566                 
CODE_299BB6:        RTS                       

CODE_299BB7:        CMP #$41                  
CODE_299BB9:        BNE CODE_299BBF           
CODE_299BBB:        LDX #$06                  
CODE_299BBD:        BNE CODE_299BCC           
CODE_299BBF:        LDX #$04                  
CODE_299BC1:        LDA $0661,x               
CODE_299BC4:        BEQ CODE_299BCC           
CODE_299BC6:        DEX                       
CODE_299BC7:        BPL CODE_299BC1           
CODE_299BC9:        JMP CODE_299C42           

CODE_299BCC:        LDA $00                   
CODE_299BCE:        STA $5F,x                 
CODE_299BD0:        STA $7FC532,x             
CODE_299BD4:        STA $7FC53A,x             
CODE_299BD8:        LDA $06                   
CODE_299BDA:        STA $44,x                 
CODE_299BDC:        STA $7FC542,x             
CODE_299BE0:        STA $7FC54A,x             
CODE_299BE4:        INY                       
CODE_299BE5:        LDA $1B40,y               
CODE_299BE8:        AND #$F0                  
CODE_299BEA:        LSR A                     
CODE_299BEB:        LSR A                     
CODE_299BEC:        LSR A                     
CODE_299BED:        LSR A                     
CODE_299BEE:        STA $56,x                 
CODE_299BF0:        STA $7FC562,x             
CODE_299BF4:        STA $7FC56A,x             
CODE_299BF8:        LDA $1B40,y               
CODE_299BFB:        AND #$0F                  
CODE_299BFD:        ASL A                     
CODE_299BFE:        ASL A                     
CODE_299BFF:        ASL A                     
CODE_299C00:        ASL A                     
CODE_299C01:        STA $71,x                 
CODE_299C03:        STA $7FC552,x             
CODE_299C07:        STA $7FC55A,x             
CODE_299C0B:        DEY                       
CODE_299C0C:        DEY                       
CODE_299C0D:        LDA $1B40,y               
CODE_299C10:        STA $0671,x               
CODE_299C13:        LDY $01                   
CODE_299C15:        LDA #$04                  
CODE_299C17:        STA $7FC572,x             
CODE_299C1B:        LDA #$00                  
CODE_299C1D:        STA $7FC57A,x             
CODE_299C21:        LDA $0671,x               
CODE_299C24:        CMP #$43                  
CODE_299C26:        BNE CODE_299C33           
CODE_299C28:        LDA $02BF                 
CODE_299C2B:        CMP #$01                  
CODE_299C2D:        BNE CODE_299C33           
CODE_299C2F:        LDA #$B0                  
CODE_299C31:        STA $71,x                 
CODE_299C33:        LDA $1B10,y               
CODE_299C36:        ORA #$80                  
CODE_299C38:        STA $1B10,y               
CODE_299C3B:        TYA                       
CODE_299C3C:        STA $0659,x               
CODE_299C3F:        INC $0661,x               
CODE_299C42:        RTS                       

CODE_299C43:        LDA $1B41,y               
CODE_299C46:        CMP #$60                  
CODE_299C48:        BNE CODE_299C50           
CODE_299C4A:        LDA #$03                  
CODE_299C4C:        STA $0427                 
CODE_299C4F:        RTS                       

CODE_299C50:        PHA                       
CODE_299C51:        LDY #$14                  
CODE_299C53:        LDA #$00                  
CODE_299C55:        STA $19FF,y               
CODE_299C58:        DEY                       
CODE_299C59:        BNE CODE_299C55           
CODE_299C5B:        PLA                       
CODE_299C5C:        PHA                       
CODE_299C5D:        AND #$0F                  
CODE_299C5F:        TAY                       
CODE_299C60:        PLA                       
CODE_299C61:        LSR A                     
CODE_299C62:        LSR A                     
CODE_299C63:        LSR A                     
CODE_299C64:        LSR A                     
CODE_299C65:        STA $1A01                 
CODE_299C68:        CMP #$03                  
CODE_299C6A:        BCS CODE_299C7E                   
CODE_299C6C:        CMP #$01                  
CODE_299C6E:        BNE CODE_299C74           
CODE_299C70:        TYA                       
CODE_299C71:        ORA #$10                  
CODE_299C73:        TAY                       
CODE_299C74:        PHX                       
CODE_299C75:        TYX                       
CODE_299C76:        LDA.l DATA_27AA5E,x             
CODE_299C7A:        STA $1A03                 
CODE_299C7D:        PLX                       
CODE_299C7E:        STY $1A02                 
CODE_299C81:        LDA $0216                 
CODE_299C84:        STA $1A0D                 
CODE_299C87:        INC $0580                 
CODE_299C8A:        RTS                       

CODE_299C8B:        STA $1CEF                 
CODE_299C8E:        TXA                       
CODE_299C8F:        PHA                       
CODE_299C90:        TYA                       
CODE_299C91:        PHA                       
CODE_299C92:        LDA $1B41,y               
CODE_299C95:        AND #$F0                  
CODE_299C97:        LSR A                     
CODE_299C98:        LSR A                     
CODE_299C99:        LSR A                     
CODE_299C9A:        LSR A                     
CODE_299C9B:        STA $08                   
CODE_299C9D:        LDA $1B41,y               
CODE_299CA0:        AND #$0F                  
CODE_299CA2:        ASL A                     
CODE_299CA3:        ASL A                     
CODE_299CA4:        ASL A                     
CODE_299CA5:        ASL A                     
CODE_299CA6:        STA $09                   
CODE_299CA8:        LDA $06                   
CODE_299CAA:        STA $0A                   
CODE_299CAC:        LDA $00                   
CODE_299CAE:        STA $0B                   
CODE_299CB0:        LDX $01                   
CODE_299CB2:        LDA $1B10,x               
CODE_299CB5:        ORA #$80                  
CODE_299CB7:        STA $1B10,x               
CODE_299CBA:        LDA #$02                  
CODE_299CBC:        STA $0C                   
CODE_299CBE:        LDX #$04                  
CODE_299CC0:        LDA $0661,x               
CODE_299CC3:        BEQ CODE_299CCB           
CODE_299CC5:        DEX                       
CODE_299CC6:        BPL CODE_299CC0           
CODE_299CC8:        JMP CODE_299D24           

CODE_299CCB:        JSL CODE_279C96           
CODE_299CCF:        LDA $08                   
CODE_299CD1:        STA $56,x                 
CODE_299CD3:        LDA $09                   
CODE_299CD5:        STA $71,x                 
CODE_299CD7:        LDA $0B                   
CODE_299CD9:        STA $5F,x                 
CODE_299CDB:        LDA $0A                   
CODE_299CDD:        STA $44,x                 
CODE_299CDF:        JSL CODE_27A837           
CODE_299CE3:        LDA $C69D,y               
CODE_299CE6:        STA $0679,x               
CODE_299CE9:        LDA $0B                   
CODE_299CEB:        CLC                       
CODE_299CEC:        ADC $C69F,y               
CODE_299CEF:        STA $0B                   
CODE_299CF1:        LDA $0A                   
CODE_299CF3:        ADC $C6A1,y               
CODE_299CF6:        STA $0A                   
CODE_299CF8:        LDA $1CEF                 
CODE_299CFB:        CMP #$D1                  
CODE_299CFD:        BEQ CODE_299D12           
CODE_299CFF:        LDY $0C                   
CODE_299D01:        LDA $C6A3,y               
CODE_299D04:        STA $9E,x                 
CODE_299D06:        LDA $C6A6,y               
CODE_299D09:        STA $4D,x                 
CODE_299D0B:        INC $06B7,x               
CODE_299D0E:        LDA #$88                  
CODE_299D10:        BNE CODE_299D14           
CODE_299D12:        LDA #$6E                  
CODE_299D14:        STA $0671,x               
CODE_299D17:        LDA #$02                  
CODE_299D19:        STA $0661,x               
CODE_299D1C:        LDA #$02                  
CODE_299D1E:        STA $1FE9,x               
CODE_299D21:        STA $1FF1,x               
CODE_299D24:        DEC $0C                   
CODE_299D26:        BPL CODE_299CBE           
CODE_299D28:        PLA                       
CODE_299D29:        TAY                       
CODE_299D2A:        PLA                       
CODE_299D2B:        TAX                       
CODE_299D2C:        RTS                       

CODE_299D2D:        STA $0F                   
CODE_299D2F:        TXA                       
CODE_299D30:        PHA                       
CODE_299D31:        LDA $1A1C                 
CODE_299D34:        PHA                       
CODE_299D35:        LDA $1A44                 
CODE_299D38:        PHA                       
CODE_299D39:        LDX #$06                  
CODE_299D3B:        LDA $1A15,x               
CODE_299D3E:        STA $1A16,x               
CODE_299D41:        LDA $1A1D,x               
CODE_299D44:        STA $1A1E,x               
CODE_299D47:        LDA $1A25,x               
CODE_299D4A:        STA $1A26,x               
CODE_299D4D:        LDA $1A2D,x               
CODE_299D50:        STA $1A2E,x               
CODE_299D53:        LDA $1A35,x               
CODE_299D56:        STA $1A36,x               
CODE_299D59:        LDA $1A3D,x               
CODE_299D5C:        STA $1A3E,x               
CODE_299D5F:        LDA $06E3,x               
CODE_299D62:        STA $06E4,x               
CODE_299D65:        LDA $06DB,x               
CODE_299D68:        STA $06DC,x               
CODE_299D6B:        LDA $1A57,x               
CODE_299D6E:        STA $1A58,x               
CODE_299D71:        DEX                       
CODE_299D72:        BPL CODE_299D3B           
CODE_299D74:        PLA                       
CODE_299D75:        TAX                       
CODE_299D76:        PLA                       
CODE_299D77:        BEQ CODE_299D81           
CODE_299D79:        LDA $1B10,x               
CODE_299D7C:        AND #$7F                  
CODE_299D7E:        STA $1B10,x               
CODE_299D81:        LDA $1B41,y               
CODE_299D84:        AND #$F0                  
CODE_299D86:        LSR A                     
CODE_299D87:        LSR A                     
CODE_299D88:        LSR A                     
CODE_299D89:        LSR A                     
CODE_299D8A:        STA $1A1D                 
CODE_299D8D:        LDA $1B41,y               
CODE_299D90:        AND #$0F                  
CODE_299D92:        ASL A                     
CODE_299D93:        ASL A                     
CODE_299D94:        ASL A                     
CODE_299D95:        ASL A                     
CODE_299D96:        STA $1A25                 
CODE_299D99:        LDA $06                   
CODE_299D9B:        STA $1A2D                 
CODE_299D9E:        LDA $00                   
CODE_299DA0:        STA $1A35                 
CODE_299DA3:        LDA #$00                  
CODE_299DA5:        STA $06DB                 
CODE_299DA8:        STA $1A57                 
CODE_299DAB:        LDA #$60                  
CODE_299DAD:        LDX $0F                   
CODE_299DAF:        CPX #$04                  
CODE_299DB1:        BNE CODE_299DB5           
CODE_299DB3:        LDA #$00                  
CODE_299DB5:        STA $06E3                 
CODE_299DB8:        LDX $01                   
CODE_299DBA:        STX $1A3D                 
CODE_299DBD:        LDA $1B10,x               
CODE_299DC0:        ORA #$80                  
CODE_299DC2:        STA $1B10,x               
CODE_299DC5:        LDA $0F                   
CODE_299DC7:        STA $1A15                 
CODE_299DCA:        PLA                       
CODE_299DCB:        TAX                       
CODE_299DCC:        RTS                       

CODE_299DCD:        LDY $25                   
CODE_299DCF:        LDA $0543                 
CODE_299DD2:        CLC                       
CODE_299DD3:        ADC $C6A9,y               
CODE_299DD6:        AND #$F0                  
CODE_299DD8:        STA $05                   
CODE_299DDA:        LDA $0542                 
CODE_299DDD:        ADC $C6AB,y               
CODE_299DE0:        STA $06                   
CODE_299DE2:        LDY $22                   
CODE_299DE4:        CMP $CEEE,y               
CODE_299DE7:        BCC CODE_299DF5           
CODE_299DE9:        BNE CODE_299DF2           
CODE_299DEB:        LDA $05                   
CODE_299DED:        CMP $CEFE,y               
CODE_299DF0:        BCC CODE_299DF5           
CODE_299DF2:        JMP CODE_299E7A           

CODE_299DF5:        LDX $06                   
CODE_299DF7:        LDA $1B00,x               
CODE_299DFA:        BMI CODE_299E12           
CODE_299DFC:        STA $01                   
CODE_299DFE:        TAX                       
CODE_299DFF:        ASL A                     
CODE_299E00:        CLC                       
CODE_299E01:        ADC $01                   
CODE_299E03:        TAY                       
CODE_299E04:        INY                       
CODE_299E05:        INY                       
CODE_299E06:        INY                       
CODE_299E07:        LDA $1B40,y               
CODE_299E0A:        LSR A                     
CODE_299E0B:        LSR A                     
CODE_299E0C:        LSR A                     
CODE_299E0D:        LSR A                     
CODE_299E0E:        CMP $06                   
CODE_299E10:        BEQ CODE_299E13           
CODE_299E12:        RTS                       

CODE_299E13:        LDA $1B3E,y               
CODE_299E16:        CMP #$FF                  
CODE_299E18:        BEQ CODE_299E12           
CODE_299E1A:        LDA $1B10,x               
CODE_299E1D:        INX                       
CODE_299E1E:        CMP #$00                  
CODE_299E20:        BMI CODE_299E04           
CODE_299E22:        LDA $1B40,y               
CODE_299E25:        ASL A                     
CODE_299E26:        ASL A                     
CODE_299E27:        ASL A                     
CODE_299E28:        ASL A                     
CODE_299E29:        CMP $05                   
CODE_299E2B:        BNE CODE_299E04           
CODE_299E2D:        DEX                       
CODE_299E2E:        STX $01                   
CODE_299E30:        STA $00                   
CODE_299E32:        LDA $1B3F,y               
CODE_299E35:        CMP #$B4                  
CODE_299E37:        BCC CODE_299E3F           
CODE_299E39:        SBC #$B3                  
CODE_299E3B:        STA $0566                 
CODE_299E3E:        RTS                       

CODE_299E3F:        LDX #$04                  
CODE_299E41:        LDA $0661,x               
CODE_299E44:        BEQ CODE_299E4C           
CODE_299E46:        DEX                       
CODE_299E47:        BPL CODE_299E41           
CODE_299E49:        JMP CODE_299E7A           

CODE_299E4C:        LDA $00                   
CODE_299E4E:        STA $71,x                 
CODE_299E50:        LDA $06                   
CODE_299E52:        STA $56,x                 
CODE_299E54:        LDA #$00                  
CODE_299E56:        STA $44,x                 
CODE_299E58:        DEY                       
CODE_299E59:        LDA $1B40,y               
CODE_299E5C:        ASL A                     
CODE_299E5D:        ASL A                     
CODE_299E5E:        ASL A                     
CODE_299E5F:        ASL A                     
CODE_299E60:        STA $5F,x                 
CODE_299E62:        DEY                       
CODE_299E63:        LDA $1B40,y               
CODE_299E66:        STA $0671,x               
CODE_299E69:        LDY $01                   
CODE_299E6B:        LDA $1B10,y               
CODE_299E6E:        ORA #$80                  
CODE_299E70:        STA $1B10,y               
CODE_299E73:        TYA                       
CODE_299E74:        STA $0659,x               
CODE_299E77:        INC $0661,x               
CODE_299E7A:        RTS                       

CODE_299E7B:        JSR CODE_299E7F           
CODE_299E7E:        RTL                       

CODE_299E7F:        LDA $0566                 
CODE_299E82:        BEQ CODE_299EA4           
CODE_299E84:        JSL CODE_20FB1F           

PNTR_299E88:        dw CODE_299E7A
                    dw CODE_299FD1
                    dw CODE_29A02A
                    dw CODE_299E9A
                    dw CODE_29A084
                    dw CODE_299F24
                    dw CODE_299EA5
                    dw CODE_299F7E
                    dw CODE_299E9F
  
CODE_299E9A:        LDA #$00
CODE_299E9C:        STA $1CF0                 
CODE_299E9F:        LDA #$00                  
CODE_299EA1:        STA $0566                 
CODE_299EA4:        RTS                       

CODE_299EA5:        LDA $0565                 
CODE_299EA8:        AND #$7F                  
CODE_299EAA:        BNE CODE_299F23           
CODE_299EAC:        LDA #$36                  
CODE_299EAE:        JSR CODE_29A0DD           
CODE_299EB1:        CPY #$03                  
CODE_299EB3:        BCS CODE_299F23                   
CODE_299EB5:        JSR CODE_29A0D0           
CODE_299EB8:        LDA #$00                  
CODE_299EBA:        STA $0671,x               
CODE_299EBD:        LDA $0783,x               
CODE_299EC0:        AND #$7F                  
CODE_299EC2:        CLC                       
CODE_299EC3:        ADC #$40                  
CODE_299EC5:        CLC                       
CODE_299EC6:        ADC $0543                 
CODE_299EC9:        AND #$E0                  
CODE_299ECB:        ORA #$0F                  
CODE_299ECD:        STA $00                   
CODE_299ECF:        PHP                       
CODE_299ED0:        LDY #$04                  
CODE_299ED2:        LDA $0661,y               
CODE_299ED5:        BEQ CODE_299EF2           
CODE_299ED7:        LDA $0671,y               
CODE_299EDA:        CMP #$36                  
CODE_299EDC:        BNE CODE_299EF2           
CODE_299EDE:        LDA $0071,y               
CODE_299EE1:        CMP $00                   
CODE_299EE3:        BNE CODE_299EF2           
CODE_299EE5:        LDA $0783,x               
CODE_299EE8:        CLC                       
CODE_299EE9:        ADC #$30                  
CODE_299EEB:        STA $0783,x               
CODE_299EEE:        PLP                       
CODE_299EEF:        JMP CODE_299EC0           

CODE_299EF2:        DEY                       
CODE_299EF3:        BPL CODE_299ED2           
CODE_299EF5:        LDA $00                   
CODE_299EF7:        STA $71,x                 
CODE_299EF9:        PLP                       
CODE_299EFA:        LDA $13                   
CODE_299EFC:        ADC #$00                  
CODE_299EFE:        STA $56,x                 
CODE_299F00:        LDA $0210                 
CODE_299F03:        CLC                       
CODE_299F04:        ADC #$FF                  
CODE_299F06:        STA $5F,x                 
CODE_299F08:        LDA $12                   
CODE_299F0A:        ADC #$00                  
CODE_299F0C:        STA $44,x                 
CODE_299F0E:        LDA $0783,x               
CODE_299F11:        AND #$03                  
CODE_299F13:        TAY                       
CODE_299F14:        LDA $C6AD,y               
CODE_299F17:        STA $8C,x                 
CODE_299F19:        LDA #$03                  
CODE_299F1B:        STA $1FE9,x               
CODE_299F1E:        LDA #$36                  
CODE_299F20:        STA $0671,x               
CODE_299F23:        RTS                       

CODE_299F24:        LDA $0565                 
CODE_299F27:        AND #$03                  
CODE_299F29:        BNE CODE_299F7D           
CODE_299F2B:        INC $1CF1                 
CODE_299F2E:        LDA $1CF1                 
CODE_299F31:        CMP #$C0                  
CODE_299F33:        BNE CODE_299F7D           
CODE_299F35:        LDA #$00                  
CODE_299F37:        STA $1CF1                 
CODE_299F3A:        LDA #$49                  
CODE_299F3C:        JSR CODE_29A0DD           
CODE_299F3F:        CPY #$02                  
CODE_299F41:        BCS CODE_299F7D                   
CODE_299F43:        JSR CODE_29A0D0           
CODE_299F46:        LDA #$49                  
CODE_299F48:        STA $0671,x               
CODE_299F4B:        LDA $0783,x               
CODE_299F4E:        AND #$7F                  
CODE_299F50:        CLC                       
CODE_299F51:        ADC #$30                  
CODE_299F53:        CLC                       
CODE_299F54:        ADC $0543                 
CODE_299F57:        STA $71,x                 
CODE_299F59:        LDA $13                   
CODE_299F5B:        ADC #$00                  
CODE_299F5D:        STA $56,x                 
CODE_299F5F:        LDA $0210                 
CODE_299F62:        SEC                       
CODE_299F63:        SBC #$20                  
CODE_299F65:        STA $5F,x                 
CODE_299F67:        LDA $12                   
CODE_299F69:        SBC #$00                  
CODE_299F6B:        STA $44,x                 
CODE_299F6D:        LDA $0783,x               
CODE_299F70:        AND #$03                  
CODE_299F72:        TAY                       
CODE_299F73:        LDA $C6B1,y               
CODE_299F76:        STA $68,x                 
CODE_299F78:        LDA $C6B5,y               
CODE_299F7B:        STA $8C,x                 
CODE_299F7D:        RTS                       

CODE_299F7E:        LDY $1CF1                 
CODE_299F81:        BEQ CODE_299F91           
CODE_299F83:        DEC $1CF1                 
CODE_299F86:        BNE CODE_299F90           
CODE_299F88:        INC $0014                 
CODE_299F8B:        LDA #$00                  
CODE_299F8D:        STA $0713                 
CODE_299F90:        RTS                       

CODE_299F91:        LDY #$07                  
CODE_299F93:        LDA $1FC8,y               
CODE_299F96:        BNE CODE_299FD0           
CODE_299F98:        CPY #$05                  
CODE_299F9A:        BCS CODE_299FA8                   
CODE_299F9C:        LDA $0671,y               
CODE_299F9F:        CMP #$47                  
CODE_299FA1:        BEQ CODE_299FA8           
CODE_299FA3:        LDA $0661,y               
CODE_299FA6:        BNE CODE_299FD0           
CODE_299FA8:        DEY                       
CODE_299FA9:        BPL CODE_299F93           
CODE_299FAB:        LDA #$01                  
CODE_299FAD:        STA $0661                 
CODE_299FB0:        LDA #$52                  
CODE_299FB2:        STA $0671                 
CODE_299FB5:        LDA #$01                  
CODE_299FB7:        STA $56                   
CODE_299FB9:        LDA #$70                  
CODE_299FBB:        STA $71                   
CODE_299FBD:        LDA #$30                  
CODE_299FBF:        LDY $5E                   
CODE_299FC1:        BMI CODE_299FC5           
CODE_299FC3:        LDA #$C0                  
CODE_299FC5:        ADC $0210                 
CODE_299FC8:        STA $5F                   
CODE_299FCA:        LDA $12                   
CODE_299FCC:        ADC #$00                  
CODE_299FCE:        STA $44                   
CODE_299FD0:        RTS                       

CODE_299FD1:        LDA $0565                 
CODE_299FD4:        AND #$1F                  
CODE_299FD6:        BNE CODE_29A029           
CODE_299FD8:        LDA #$76                  
CODE_299FDA:        JSR CODE_29A0DD           
CODE_299FDD:        CPY #$03                  
CODE_299FDF:        BCS CODE_29A029                   
CODE_299FE1:        JSR CODE_29A0D0           
CODE_299FE4:        LDA #$76                  
CODE_299FE6:        STA $0671,x               
CODE_299FE9:        LDA $0543                 
CODE_299FEC:        CLC                       
CODE_299FED:        ADC #$C0                  
CODE_299FEF:        STA $71,x                 
CODE_299FF1:        LDA $13                   
CODE_299FF3:        ADC #$00                  
CODE_299FF5:        STA $56,x                 
CODE_299FF7:        LDA $0783,x               
CODE_299FFA:        PHP                       
CODE_299FFB:        PHP                       
CODE_299FFC:        AND #$03                  
CODE_299FFE:        TAY                       
CODE_299FFF:        LDA $C6B9,y               
CODE_29A002:        PLP                       
CODE_29A003:        BPL CODE_29A007           
CODE_29A005:        EOR #$FF                  
CODE_29A007:        CLC                       
CODE_29A008:        ADC $0210                 
CODE_29A00B:        STA $5F,x                 
CODE_29A00D:        LDA $12                   
CODE_29A00F:        ADC #$00                  
CODE_29A011:        STA $44,x                 
CODE_29A013:        LDA $0785,x               
CODE_29A016:        AND #$03                  
CODE_29A018:        TAY                       
CODE_29A019:        LDA $C6BD,y               
CODE_29A01C:        PLP                       
CODE_29A01D:        BPL CODE_29A023           
CODE_29A01F:        JSL CODE_27A859           
CODE_29A023:        STA $8C,x                 
CODE_29A025:        LDA #$B8                  
CODE_29A027:        STA $9E,x                 
CODE_29A029:        RTS                       

CODE_29A02A:        INC $1CF1                 
CODE_29A02D:        LDA $1CF1                 
CODE_29A030:        CMP #$AA                  
CODE_29A032:        BNE CODE_29A083           
CODE_29A034:        LDA #$00                  
CODE_29A036:        STA $1CF1                 
CODE_29A039:        LDX #$02                  
CODE_29A03B:        JSR CODE_29A0D2           
CODE_29A03E:        LDA #$77                  
CODE_29A040:        STA $0671,x               
CODE_29A043:        LDA $0783,x               
CODE_29A046:        AND #$01                  
CODE_29A048:        TAY                       
CODE_29A049:        LDA $0210                 
CODE_29A04C:        CLC                       
CODE_29A04D:        ADC $C6C1,y               
CODE_29A050:        STA $5F,x                 
CODE_29A052:        LDA $12                   
CODE_29A054:        ADC #$00                  
CODE_29A056:        STA $44,x                 
CODE_29A058:        LDA $C6C3,y               
CODE_29A05B:        LDY $05FC                 
CODE_29A05E:        BEQ CODE_29A064           
CODE_29A060:        CLC                       
CODE_29A061:        ADC $1A0E                 
CODE_29A064:        STA $8C,x                 
CODE_29A066:        LDA $0783,x               
CODE_29A069:        AND #$F0                  
CODE_29A06B:        ADC #$20                  
CODE_29A06D:        AND #$7F                  
CODE_29A06F:        ADC $0543                 
CODE_29A072:        STA $71,x                 
CODE_29A074:        LDA $0542                 
CODE_29A077:        ADC #$00                  
CODE_29A079:        STA $56,x                 
CODE_29A07B:        LDA #$01                  
CODE_29A07D:        STA $0689,x               
CODE_29A080:        STA $06B7,x               
CODE_29A083:        RTS                       

CODE_29A084:        LDA $0565                 
CODE_29A087:        AND #$3F                  
CODE_29A089:        BNE CODE_29A0CF           
CODE_29A08B:        LDA #$9F                  
CODE_29A08D:        JSR CODE_29A0DD           
CODE_29A090:        CPY #$04                  
CODE_29A092:        BCS CODE_29A0CF                   
CODE_29A094:        JSR CODE_29A0D0           
CODE_29A097:        LDA #$9F                  
CODE_29A099:        STA $0671,x               
CODE_29A09C:        LDA $0783,x               
CODE_29A09F:        AND #$01                  
CODE_29A0A1:        TAY                       
CODE_29A0A2:        LDA $0210                 
CODE_29A0A5:        CLC                       
CODE_29A0A6:        ADC $C6C5,y               
CODE_29A0A9:        STA $5F,x                 
CODE_29A0AB:        LDA $12                   
CODE_29A0AD:        ADC #$00                  
CODE_29A0AF:        STA $44,x                 
CODE_29A0B1:        LDA $C6C7,y               
CODE_29A0B4:        LDY $0784,x               
CODE_29A0B7:        BPL CODE_29A0BA           
CODE_29A0B9:        ASL A                     
CODE_29A0BA:        STA $8C,x                 
CODE_29A0BC:        LDA $0783,x               
CODE_29A0BF:        AND #$7F                  
CODE_29A0C1:        CLC                       
CODE_29A0C2:        ADC #$10                  
CODE_29A0C4:        ADC $0543                 
CODE_29A0C7:        STA $71,x                 
CODE_29A0C9:        LDA $13                   
CODE_29A0CB:        ADC #$00                  
CODE_29A0CD:        STA $56,x                 
CODE_29A0CF:        RTS                       

CODE_29A0D0:        LDX #$04                  
CODE_29A0D2:        LDA $0661,x               
CODE_29A0D5:        BEQ CODE_29A0F6           
CODE_29A0D7:        DEX                       
CODE_29A0D8:        BPL CODE_29A0D2           
CODE_29A0DA:        PLA                       
CODE_29A0DB:        PLA                       
CODE_29A0DC:        RTS                       

CODE_29A0DD:        STA $00                   
CODE_29A0DF:        LDY #$00                  
CODE_29A0E1:        LDX #$04                  
CODE_29A0E3:        LDA $0661,x               
CODE_29A0E6:        BEQ CODE_29A0F0           
CODE_29A0E8:        LDA $0671,x               
CODE_29A0EB:        CMP $00                   
CODE_29A0ED:        BNE CODE_29A0F0           
CODE_29A0EF:        INY                       
CODE_29A0F0:        DEX                       
CODE_29A0F1:        BPL CODE_29A0E3           
CODE_29A0F3:        LDX $9B                   
CODE_29A0F5:        RTS                       

CODE_29A0F6:        JSL CODE_279C96           
CODE_29A0FA:        LDA #$02                  
CODE_29A0FC:        STA $0661,x               
CODE_29A0FF:        RTS                       

CODE_29A100:        LDA $0561                 
CODE_29A103:        BEQ CODE_29A106           
CODE_29A105:        RTS                       

CODE_29A106:        LDY #$09                  
CODE_29A108:        STA $1FC8,y               
CODE_29A10B:        CPY #$08                  
CODE_29A10D:        BCS CODE_29A112                   
CODE_29A10F:        STA $1A15,y               
CODE_29A112:        CPY #$05                  
CODE_29A114:        BCS CODE_29A11C                   
CODE_29A116:        STA $079F,y               
CODE_29A119:        STA $07A4,y               
CODE_29A11C:        CPY #$03                  
CODE_29A11E:        BEQ CODE_29A135           
CODE_29A120:        BCS CODE_29A138                   
CODE_29A122:        STA $1F7C,y               
CODE_29A125:        STA $1F90,y               
CODE_29A128:        STA $1F9C,y               
CODE_29A12B:        CPY #$02                  
CODE_29A12D:        BCS CODE_29A135                   
CODE_29A12F:        STA $06B4,y               
CODE_29A132:        STA $1CE1,y               
CODE_29A135:        STA $1FB4,y               
CODE_29A138:        DEY                       
CODE_29A139:        BPL CODE_29A108           
CODE_29A13B:        STA $1CFF                 
CODE_29A13E:        STA $7E3973               
CODE_29A142:        STA $1CFB                 
CODE_29A145:        STA $1CF5                 
CODE_29A148:        STA $1CF3                 
CODE_29A14B:        STA $1CF2                 
CODE_29A14E:        STA $1CF4                 
CODE_29A151:        STA $0566                 
CODE_29A154:        STA $1CF1                 
CODE_29A157:        STA $1A45                 
CODE_29A15A:        STA $0781                 
CODE_29A15D:        STA $0780                 
CODE_29A160:        LDY #$2F                  
CODE_29A162:        STA $1B10,y               
CODE_29A165:        DEY                       
CODE_29A166:        BPL CODE_29A162           
CODE_29A168:        STY $0561                 
CODE_29A16B:        STA $058B                 
CODE_29A16E:        STA $1B00                 
CODE_29A171:        STA $0575                 
CODE_29A174:        STA $0546                 
CODE_29A177:        STA $05FE                 
CODE_29A17A:        STA $05FF                 
CODE_29A17D:        STA $05FD                 
CODE_29A180:        STA $1A0F                 
CODE_29A183:        STA $00                   
CODE_29A185:        TAX                       
CODE_29A186:        TAY                       
CODE_29A187:        INY                       
CODE_29A188:        CPX #$10                  
CODE_29A18A:        BEQ CODE_29A1CE           
CODE_29A18C:        LDA $1B40,y               
CODE_29A18F:        CMP #$FF                  
CODE_29A191:        BEQ CODE_29A1B7           
CODE_29A193:        LDA $0425                 
CODE_29A196:        PHP                       
CODE_29A197:        LDA $1B41,y               
CODE_29A19A:        PLP                       
CODE_29A19B:        BEQ CODE_29A1A0           
CODE_29A19D:        LDA $1B42,y               
CODE_29A1A0:        LSR A                     
CODE_29A1A1:        LSR A                     
CODE_29A1A2:        LSR A                     
CODE_29A1A3:        LSR A                     
CODE_29A1A4:        STA $01                   
CODE_29A1A6:        CPX $01                   
CODE_29A1A8:        BNE CODE_29A1B7           
CODE_29A1AA:        INC $00                   
CODE_29A1AC:        LDA $00                   
CODE_29A1AE:        STA $1B01,x               
CODE_29A1B1:        INY                       
CODE_29A1B2:        INY                       
CODE_29A1B3:        INY                       
CODE_29A1B4:        JMP CODE_29A188           

CODE_29A1B7:        LDA $00                   
CODE_29A1B9:        CPX #$0F                  
CODE_29A1BB:        BEQ CODE_29A1C0           
CODE_29A1BD:        STA $1B01,x               
CODE_29A1C0:        CMP $1B00,x               
CODE_29A1C3:        BNE CODE_29A1CA           
CODE_29A1C5:        LDA #$FF                  
CODE_29A1C7:        STA $1B00,x               
CODE_29A1CA:        INX                       
CODE_29A1CB:        JMP CODE_29A188           

CODE_29A1CE:        LDX #$07                  
CODE_29A1D0:        LDA #$00                  
CODE_29A1D2:        STA $0661,x               
CODE_29A1D5:        DEX                       
CODE_29A1D6:        BPL CODE_29A1D0           
CODE_29A1D8:        LDA #$4F                  
CODE_29A1DA:        STA $071E                 
CODE_29A1DD:        LDA $0560                 
CODE_29A1E0:        CMP #$0A                  
CODE_29A1E2:        BNE CODE_29A1EE           
CODE_29A1E4:        LDA #$01                  
CODE_29A1E6:        STA $0665                 
CODE_29A1E9:        LDA #$47                  
CODE_29A1EB:        STA $0675                 
CODE_29A1EE:        LDA $0425                 
CODE_29A1F1:        BNE CODE_29A24A           
CODE_29A1F3:        LDA $0210                 
CODE_29A1F6:        PHA                       
CODE_29A1F7:        LDA $C699                 
CODE_29A1FA:        SEC                       
CODE_29A1FB:        SBC $C69A                 
CODE_29A1FE:        CLC                       
CODE_29A1FF:        ADC $0210                 
CODE_29A202:        AND #$F0                  
CODE_29A204:        STA $0D                   
CODE_29A206:        LDA $12                   
CODE_29A208:        PHA                       
CODE_29A209:        ADC $C69B                 
CODE_29A20C:        STA $0E                   
CODE_29A20E:        LDA #$01                  
CODE_29A210:        STA $25                   
CODE_29A212:        LDA $0210                 
CODE_29A215:        SEC                       
CODE_29A216:        SBC #$10                  
CODE_29A218:        STA $0210                 
CODE_29A21B:        BCS CODE_29A21F                   
CODE_29A21D:        DEC $12                   
CODE_29A21F:        LDA $0210                 
CODE_29A222:        ADC #$10                  
CODE_29A224:        AND #$F0                  
CODE_29A226:        STA $0210                 
CODE_29A229:        BCC CODE_29A22D           
CODE_29A22B:        INC $12                   
CODE_29A22D:        JSR CODE_299AE0           
CODE_29A230:        JSR CODE_299AE0           
CODE_29A233:        LDA $0E                   
CODE_29A235:        CMP $12                   
CODE_29A237:        BNE CODE_29A21F           
CODE_29A239:        LDA $0D                   
CODE_29A23B:        CMP $0210                 
CODE_29A23E:        BNE CODE_29A21F           
CODE_29A240:        PLA                       
CODE_29A241:        STA $12                   
CODE_29A243:        PLA                       
CODE_29A244:        STA $0210                 
CODE_29A247:        PLA                       
CODE_29A248:        PLA                       
CODE_29A249:        RTS                       

CODE_29A24A:        LDA $0543                 
CODE_29A24D:        PHA                       
CODE_29A24E:        CLC                       
CODE_29A24F:        ADC $C6AA                 
CODE_29A252:        AND #$F0                  
CODE_29A254:        STA $0D                   
CODE_29A256:        LDA $0542                 
CODE_29A259:        PHA                       
CODE_29A25A:        CLC                       
CODE_29A25B:        ADC $C6AC                 
CODE_29A25E:        STA $0E                   
CODE_29A260:        LDA #$00                  
CODE_29A262:        STA $25                   
CODE_29A264:        LDA $0543                 
CODE_29A267:        SEC                       
CODE_29A268:        SBC #$10                  
CODE_29A26A:        STA $0543                 
CODE_29A26D:        BCS CODE_29A272                   
CODE_29A26F:        DEC $0542                 
CODE_29A272:        LDA $0543                 
CODE_29A275:        ADC #$10                  
CODE_29A277:        AND #$F0                  
CODE_29A279:        STA $0543                 
CODE_29A27C:        BCC CODE_29A281           
CODE_29A27E:        INC $0542                 
CODE_29A281:        JSR CODE_299DCD           
CODE_29A284:        JSR CODE_299DCD           
CODE_29A287:        LDA $0E                   
CODE_29A289:        CMP $0542                 
CODE_29A28C:        BNE CODE_29A272           
CODE_29A28E:        LDA $0D                   
CODE_29A290:        CMP $0543                 
CODE_29A293:        BNE CODE_29A272           
CODE_29A295:        PLA                       
CODE_29A296:        STA $0542                 
CODE_29A299:        PLA                       
CODE_29A29A:        STA $0543                 
CODE_29A29D:        PLA                       
CODE_29A29E:        PLA                       
CODE_29A29F:        RTS                       

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

CODE_29A300:        PHB
CODE_29A301:        PHK
CODE_29A302:        PLB                       
CODE_29A303:        LDA $5F,x                 
CODE_29A305:        STA $0A                   
CODE_29A307:        LDA $44,x                 
CODE_29A309:        STA $0B                   
CODE_29A30B:        LDA $83,x                 
CODE_29A30D:        STA $07                   
CODE_29A30F:        REP #$30                  
CODE_29A311:        LDA $0A                   
CODE_29A313:        SEC                       
CODE_29A314:        SBC $0210                 
CODE_29A317:        STA $0A                   
CODE_29A319:        CLC                       
CODE_29A31A:        ADC #$0008                
CODE_29A31D:        STA $0C                   
CODE_29A31F:        CLC                       
CODE_29A320:        ADC #$0008                
CODE_29A323:        STA $0E                   
CODE_29A325:        SEP #$20                  
CODE_29A327:        LDY $00C6,x               
CODE_29A32A:        PHY                       
CODE_29A32B:        LDA $0679,x               
CODE_29A32E:        LDX #$000C                
CODE_29A331:        STX $08                   
CODE_29A333:        CMP #$40                  
CODE_29A335:        BNE CODE_29A33A           
CODE_29A337:        LDX #$0000                
CODE_29A33A:        LDA $1EBF                 
CODE_29A33D:        CMP #$1B                  
CODE_29A33F:        BNE CODE_29A346           
CODE_29A341:        TXA                       
CODE_29A342:        CLC                       
CODE_29A343:        ADC #$18                  
CODE_29A345:        TAX                       
CODE_29A346:        LDA.w DATA_29A2A0,x               
CODE_29A349:        STA $0802,y               
CODE_29A34C:        LDA.w DATA_29A2D0,x               
CODE_29A34F:        STA $0803,y               
CODE_29A352:        INY                       
CODE_29A353:        INY                       
CODE_29A354:        INY                       
CODE_29A355:        INY                       
CODE_29A356:        INX                       
CODE_29A357:        DEC $08                   
CODE_29A359:        BNE CODE_29A346           
CODE_29A35B:        LDX #$0000                
CODE_29A35E:        PLY                       
CODE_29A35F:        PHY                       
CODE_29A360:        LDA $0A,x                 
CODE_29A362:        STA $0800,y               
CODE_29A365:        STA $0804,y               
CODE_29A368:        STA $0808,y               
CODE_29A36B:        STA $080C,y               
CODE_29A36E:        LDA $07                   
CODE_29A370:        STA $0801,y               
CODE_29A373:        CLC                       
CODE_29A374:        ADC #$08                  
CODE_29A376:        STA $0805,y               
CODE_29A379:        CLC                       
CODE_29A37A:        ADC #$08                  
CODE_29A37C:        STA $0809,y               
CODE_29A37F:        CLC                       
CODE_29A380:        ADC #$08                  
CODE_29A382:        STA $080D,y               
CODE_29A385:        REP #$20                  
CODE_29A387:        TYA                       
CODE_29A388:        CLC                       
CODE_29A389:        ADC #$0010                
CODE_29A38C:        TAY                       
CODE_29A38D:        SEP #$20                  
CODE_29A38F:        INX                       
CODE_29A390:        INX                       
CODE_29A391:        CPX #$0006                
CODE_29A394:        BCC CODE_29A360           
CODE_29A396:        SEP #$10                  
CODE_29A398:        REP #$20                  
CODE_29A39A:        PLA                       
CODE_29A39B:        LSR A                     
CODE_29A39C:        LSR A                     
CODE_29A39D:        TAY                       
CODE_29A39E:        SEP #$20                  
CODE_29A3A0:        LDX #$00                  
CODE_29A3A2:        LDA $0B,x                 
CODE_29A3A4:        BEQ CODE_29A3A8           
CODE_29A3A6:        LDA #$01                  
CODE_29A3A8:        STA $0A20,y               
CODE_29A3AB:        STA $0A21,y               
CODE_29A3AE:        STA $0A22,y               
CODE_29A3B1:        STA $0A23,y               
CODE_29A3B4:        INY                       
CODE_29A3B5:        INY                       
CODE_29A3B6:        INY                       
CODE_29A3B7:        INY                       
CODE_29A3B8:        INX                       
CODE_29A3B9:        INX                       
CODE_29A3BA:        CPX #$06                  
CODE_29A3BC:        BCC CODE_29A3A2           
CODE_29A3BE:        LDX $9B                   
CODE_29A3C0:        PLB                       
CODE_29A3C1:        RTL                       

CODE_29A3C2:        LDA $7FC57A,x             
CODE_29A3C6:        BNE CODE_29A3DE           
CODE_29A3C8:        JSR CODE_29A52D           
CODE_29A3CB:        LDA $0671,x               
CODE_29A3CE:        CMP #$5E                  
CODE_29A3D0:        BEQ CODE_29A3DE           
CODE_29A3D2:        CMP #$60                  
CODE_29A3D4:        BEQ CODE_29A3DE           
CODE_29A3D6:        CMP #$51                  
CODE_29A3D8:        BEQ CODE_29A3DE           
CODE_29A3DA:        CMP #$5F                  
CODE_29A3DC:        BNE CODE_29A3E8           
CODE_29A3DE:        LDA $7FC57A,x             
CODE_29A3E2:        EOR #$01                  
CODE_29A3E4:        STA $7FC57A,x             
CODE_29A3E8:        LDA $0671,x               
CODE_29A3EB:        CMP #$2F                  
CODE_29A3ED:        BEQ CODE_29A412           
CODE_29A3EF:        LDA #$8C                  
CODE_29A3F1:        STA $01                   
CODE_29A3F3:        LDA $0669,x               
CODE_29A3F6:        BEQ CODE_29A3FE           
CODE_29A3F8:        STZ $03                   
CODE_29A3FA:        LDA #$88                  
CODE_29A3FC:        BRA CODE_29A404           

CODE_29A3FE:        LDA #$C0                  
CODE_29A400:        STA $03                   
CODE_29A402:        LDA #$8A                  
CODE_29A404:        STA $00                   
CODE_29A406:        LDA $15                   
CODE_29A408:        AND #$0E                  
CODE_29A40A:        ORA #$20                  
CODE_29A40C:        STA $02                   
CODE_29A40E:        TSB $03                   
CODE_29A410:        BRA CODE_29A452           

CODE_29A412:        REP #$10                  
CODE_29A414:        LDY $00C6,x               
CODE_29A417:        LDA #$F0                  
CODE_29A419:        STA $0801,y               
CODE_29A41C:        STA $0805,y               
CODE_29A41F:        STA $0809,y               
CODE_29A422:        STA $080D,y               
CODE_29A425:        SEP #$10                  
CODE_29A427:        LDA $0679,x               
CODE_29A42A:        BEQ CODE_29A42E           
CODE_29A42C:        LDA #$40                  
CODE_29A42E:        ORA #$2A                  
CODE_29A430:        STA $02                   
CODE_29A432:        STA $03                   
CODE_29A434:        LDA #$AC                  
CODE_29A436:        STA $00                   
CODE_29A438:        LDA $0661,x               
CODE_29A43B:        CMP #$06                  
CODE_29A43D:        BNE CODE_29A445           
CODE_29A43F:        LDA #$AA                  
CODE_29A441:        STA $02                   
CODE_29A443:        BRA CODE_29A4C0           

CODE_29A445:        LDA $0669,x               
CODE_29A448:        BEQ CODE_29A4C0           
CODE_29A44A:        LDA #$AE                  
CODE_29A44C:        STA $00                   
CODE_29A44E:        LDA #$84                  
CODE_29A450:        STA $01                   
CODE_29A452:        LDA $01                   
CODE_29A454:        STA $0A                   
CODE_29A456:        LDA $03                   
CODE_29A458:        STA $0B                   
CODE_29A45A:        LDA $7FC572,x             
CODE_29A45E:        CMP #$01                  
CODE_29A460:        BEQ CODE_29A48F           
CODE_29A462:        CMP #$03                  
CODE_29A464:        BEQ CODE_29A48F           
CODE_29A466:        LDA $7FC53A,x             
CODE_29A46A:        STA $0C                   
CODE_29A46C:        LDA $7FC54A,x             
CODE_29A470:        STA $0D                   
CODE_29A472:        LDA $7FC55A,x             
CODE_29A476:        STA $0E                   
CODE_29A478:        LDA $7FC56A,x             
CODE_29A47C:        STA $0F                   
CODE_29A47E:        REP #$10                  
CODE_29A480:        LDY $C6,x                 
CODE_29A482:        INY                       
CODE_29A483:        INY                       
CODE_29A484:        INY                       
CODE_29A485:        INY                       
CODE_29A486:        INY                       
CODE_29A487:        INY                       
CODE_29A488:        INY                       
CODE_29A489:        INY                       
CODE_29A48A:        JSR CODE_29A4E2           
CODE_29A48D:        SEP #$10                  
CODE_29A48F:        LDA $7FC572,x             
CODE_29A493:        CMP #$02                  
CODE_29A495:        BEQ CODE_29A4C0           
CODE_29A497:        CMP #$05                  
CODE_29A499:        BEQ CODE_29A4C0           
CODE_29A49B:        LDA $7FC532,x             
CODE_29A49F:        STA $0C                   
CODE_29A4A1:        LDA $7FC542,x             
CODE_29A4A5:        STA $0D                   
CODE_29A4A7:        LDA $7FC552,x             
CODE_29A4AB:        STA $0E                   
CODE_29A4AD:        LDA $7FC562,x             
CODE_29A4B1:        STA $0F                   
CODE_29A4B3:        REP #$10                  
CODE_29A4B5:        LDY $C6,x                 
CODE_29A4B7:        INY                       
CODE_29A4B8:        INY                       
CODE_29A4B9:        INY                       
CODE_29A4BA:        INY                       
CODE_29A4BB:        JSR CODE_29A4E2           
CODE_29A4BE:        SEP #$10                  
CODE_29A4C0:        LDA $00                   
CODE_29A4C2:        STA $0A                   
CODE_29A4C4:        LDA $02                   
CODE_29A4C6:        STA $0B                   
CODE_29A4C8:        LDA $5F,x                 
CODE_29A4CA:        STA $0C                   
CODE_29A4CC:        LDA $44,x                 
CODE_29A4CE:        STA $0D                   
CODE_29A4D0:        LDA $71,x                 
CODE_29A4D2:        STA $0E                   
CODE_29A4D4:        LDA $56,x                 
CODE_29A4D6:        STA $0F                   
CODE_29A4D8:        REP #$10                  
CODE_29A4DA:        LDY $C6,x                 
CODE_29A4DC:        JSR CODE_29A4E2           
CODE_29A4DF:        SEP #$10                  
CODE_29A4E1:        RTL                       

CODE_29A4E2:        REP #$20                  
CODE_29A4E4:        LDA $0C                   
CODE_29A4E6:        SEC                       
CODE_29A4E7:        SBC $0210                 
CODE_29A4EA:        STA $0C                   
CODE_29A4EC:        LDA $0E                   
CODE_29A4EE:        SEC                       
CODE_29A4EF:        SBC $0216                 
CODE_29A4F2:        STA $0E                   
CODE_29A4F4:        SEP #$20                  
CODE_29A4F6:        LDA $0C                   
CODE_29A4F8:        STA $0800,y               
CODE_29A4FB:        LDA $0E                   
CODE_29A4FD:        STA $0801,y               
CODE_29A500:        LDA $0A                   
CODE_29A502:        STA $0802,y               
CODE_29A505:        LDA $0B                   
CODE_29A507:        STA $0803,y               
CODE_29A50A:        LDA $0F                   
CODE_29A50C:        BNE CODE_29A514           
CODE_29A50E:        LDA $0E                   
CODE_29A510:        CMP #$F0                  
CODE_29A512:        BCC CODE_29A519           
CODE_29A514:        LDA #$F0                  
CODE_29A516:        STA $0801,y               
CODE_29A519:        REP #$20                  
CODE_29A51B:        TYA                       
CODE_29A51C:        LSR A                     
CODE_29A51D:        LSR A                     
CODE_29A51E:        TAY                       
CODE_29A51F:        SEP #$20                  
CODE_29A521:        LDA $0D                   
CODE_29A523:        BEQ CODE_29A527           
CODE_29A525:        LDA #$01                  
CODE_29A527:        ORA #$02                  
CODE_29A529:        STA $0A20,y               
CODE_29A52C:        RTS                       

CODE_29A52D:        LDA $7FC572,x             
CODE_29A531:        DEC A                     
CODE_29A532:        BPL CODE_29A579           
CODE_29A534:        LDA $7FC532,x             
CODE_29A538:        STA $7FC53A,x             
CODE_29A53C:        LDA $7FC542,x             
CODE_29A540:        STA $7FC54A,x             
CODE_29A544:        LDA $7FC552,x             
CODE_29A548:        STA $7FC55A,x             
CODE_29A54C:        LDA $7FC562,x             
CODE_29A550:        STA $7FC56A,x             
CODE_29A554:        LDA $5F,x                 
CODE_29A556:        STA $7FC532,x             
CODE_29A55A:        LDA $44,x                 
CODE_29A55C:        STA $7FC542,x             
CODE_29A560:        LDA $71,x                 
CODE_29A562:        STA $7FC552,x             
CODE_29A566:        LDA $56,x                 
CODE_29A568:        STA $7FC562,x             
CODE_29A56C:        LDA $0671,x               
CODE_29A56F:        CMP #$2F                  
CODE_29A571:        BNE CODE_29A577           
CODE_29A573:        LDA #$05                  
CODE_29A575:        BRA CODE_29A579           

CODE_29A577:        LDA #$04                  
CODE_29A579:        STA $7FC572,x             
CODE_29A57D:        RTS                       

CODE_29A57E:        LDA $1CD7,x               
CODE_29A581:        SEC                       
CODE_29A582:        SBC $5F,x                 
CODE_29A584:        PHA                       
CODE_29A585:        LDA $1CC8,x               
CODE_29A588:        SBC $44,x                 
CODE_29A58A:        TAY                       
CODE_29A58B:        PLA                       
CODE_29A58C:        CLC                       
CODE_29A58D:        ADC $1CD7,x               
CODE_29A590:        STA $5F,x                 
CODE_29A592:        TYA                       
CODE_29A593:        ADC $1CC8,x               
CODE_29A596:        STA $44,x                 
CODE_29A598:        LDA $1CD7,x               
CODE_29A59B:        SEC                       
CODE_29A59C:        SBC $7FC532,x             
CODE_29A5A0:        PHA                       
CODE_29A5A1:        LDA $1CC8,x               
CODE_29A5A4:        SBC $7FC542,x             
CODE_29A5A8:        TAY                       
CODE_29A5A9:        PLA                       
CODE_29A5AA:        CLC                       
CODE_29A5AB:        ADC $1CD7,x               
CODE_29A5AE:        STA $7FC532,x             
CODE_29A5B2:        TYA                       
CODE_29A5B3:        ADC $1CC8,x               
CODE_29A5B6:        STA $7FC542,x             
CODE_29A5BA:        LDA $1CD7,x               
CODE_29A5BD:        SEC                       
CODE_29A5BE:        SBC $7FC53A,x             
CODE_29A5C2:        PHA                       
CODE_29A5C3:        LDA $1CC8,x               
CODE_29A5C6:        SBC $7FC54A,x             
CODE_29A5CA:        TAY                       
CODE_29A5CB:        PLA                       
CODE_29A5CC:        CLC                       
CODE_29A5CD:        ADC $1CD7,x               
CODE_29A5D0:        STA $7FC53A,x             
CODE_29A5D4:        TYA                       
CODE_29A5D5:        ADC $1CC8,x               
CODE_29A5D8:        STA $7FC54A,x             
CODE_29A5DC:        LDA $C6,x                 
CODE_29A5DE:        CLC                       
CODE_29A5DF:        ADC #$10                  
CODE_29A5E1:        STA $C6,x                 
CODE_29A5E3:        RTL                       

CODE_29A5E4:        LDA $1CDC,x               
CODE_29A5E7:        SEC                       
CODE_29A5E8:        SBC $71,x                 
CODE_29A5EA:        PHA                       
CODE_29A5EB:        LDA $0689,x               
CODE_29A5EE:        SBC $56,x                 
CODE_29A5F0:        TAY                       
CODE_29A5F1:        PLA                       
CODE_29A5F2:        CLC                       
CODE_29A5F3:        ADC $1CDC,x               
CODE_29A5F6:        STA $71,x                 
CODE_29A5F8:        TYA                       
CODE_29A5F9:        ADC $0689,x               
CODE_29A5FC:        STA $56,x                 
CODE_29A5FE:        LDA $1CDC,x               
CODE_29A601:        SEC                       
CODE_29A602:        SBC $7FC552,x             
CODE_29A606:        PHA                       
CODE_29A607:        LDA $0689,x               
CODE_29A60A:        SBC $7FC562,x             
CODE_29A60E:        TAY                       
CODE_29A60F:        PLA                       
CODE_29A610:        CLC                       
CODE_29A611:        ADC $1CDC,x               
CODE_29A614:        STA $7FC552,x             
CODE_29A618:        TYA                       
CODE_29A619:        ADC $0689,x               
CODE_29A61C:        STA $7FC562,x             
CODE_29A620:        LDA $1CDC,x               
CODE_29A623:        SEC                       
CODE_29A624:        SBC $7FC55A,x             
CODE_29A628:        PHA                       
CODE_29A629:        LDA $0689,x               
CODE_29A62C:        SBC $7FC56A,x             
CODE_29A630:        TAY                       
CODE_29A631:        PLA                       
CODE_29A632:        CLC                       
CODE_29A633:        ADC $1CDC,x               
CODE_29A636:        STA $7FC55A,x             
CODE_29A63A:        TYA                       
CODE_29A63B:        ADC $0689,x               
CODE_29A63E:        STA $7FC56A,x             
CODE_29A642:        LDA $C6,x                 
CODE_29A644:        CLC                       
CODE_29A645:        ADC #$10                  
CODE_29A647:        STA $C6,x                 
CODE_29A649:        RTL                       

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

CODE_29A700:        JSR CODE_29A7C3
CODE_29A703:        LDX $0727
CODE_29A706:        LDA $E3A5,x               
CODE_29A709:        STA $1EEC                 
CODE_29A70C:        TXA                       
CODE_29A70D:        ASL A                     
CODE_29A70E:        TAX                       
CODE_29A70F:        REP #$20                  
CODE_29A711:        LDA $E3AD,x               
CODE_29A714:        STA $0A                   
CODE_29A716:        LDA $E3BD,x               
CODE_29A719:        STA $0C                   
CODE_29A71B:        LDA $E3CD,x               
CODE_29A71E:        STA $0E                   
CODE_29A720:        LDA $E3DD,x               
CODE_29A723:        STA $08                   
CODE_29A725:        LDA $E3ED,x               
CODE_29A728:        STA $06                   
CODE_29A72A:        SEP #$20                  
CODE_29A72C:        LDY #$08                  
CODE_29A72E:        LDA ($0A),y               
CODE_29A730:        STA $1EED,y               
CODE_29A733:        LDA ($0C),y               
CODE_29A735:        STA $1F09,y               
CODE_29A738:        LDA ($0E),y               
CODE_29A73A:        STA $1EFB,y               
CODE_29A73D:        LDA ($08),y               
CODE_29A73F:        STA $1F17,y               
CODE_29A742:        TYX                       
CODE_29A743:        LDA ($06),y               
CODE_29A745:        STA $7E3956,x             
CODE_29A749:        DEY                       
CODE_29A74A:        BPL CODE_29A72E           
CODE_29A74C:        LDY $0727                 
CODE_29A74F:        LDX $072B                 
CODE_29A752:        DEX                       
CODE_29A753:        LDA $C96D,y               
CODE_29A756:        STA $7E3975,x             
CODE_29A75A:        STA $0043                 
CODE_29A75D:        STA $0044                 
CODE_29A760:        STA $7E397D               
CODE_29A764:        STA $7E397E               
CODE_29A768:        LDA #$20                  
CODE_29A76A:        STA $7E3979,x             
CODE_29A76E:        STA $0047                 
CODE_29A771:        STA $0048                 
CODE_29A774:        STA $7E3981               
CODE_29A778:        STA $7E3982               
CODE_29A77C:        LDA #$01                  
CODE_29A77E:        STA $7E3992,x             
CODE_29A782:        LDA #$00                  
CODE_29A784:        STA $7E397B,x             
CODE_29A788:        STA $7E3977,x             
CODE_29A78C:        STA $0045                 
CODE_29A78F:        STA $0046                 
CODE_29A792:        STA $7E397F               
CODE_29A796:        STA $7E3980               
CODE_29A79A:        STA $7E3983,x             
CODE_29A79E:        STA $7E3985,x             
CODE_29A7A2:        STA $7E3987,x             
CODE_29A7A6:        STA $7E3989,x             
CODE_29A7AA:        STA $0722,x               
CODE_29A7AD:        STA $0724,x               
CODE_29A7B0:        DEX                       
CODE_29A7B1:        BPL CODE_29A753           
CODE_29A7B3:        STX $1F26                 
CODE_29A7B6:        STA $7E3994               
CODE_29A7BA:        STA $7E3970               
CODE_29A7BE:        STA $7E3971               
CODE_29A7C2:        RTL                       

CODE_29A7C3:        LDY $0727                 
CODE_29A7C6:        LDA $0783                 
CODE_29A7C9:        AND #$0F                  
CODE_29A7CB:        TAX                       
CODE_29A7CC:        LDA $E57D,x               
CODE_29A7CF:        CLC                       
CODE_29A7D0:        ADC $E575,y               
CODE_29A7D3:        STA $0743                 
CODE_29A7D6:        RTS                       

CODE_29A7D7:        LDX $0726                 
CODE_29A7DA:        LDA $E58D,x               
CODE_29A7DD:        STA $00                   
CODE_29A7DF:        LDA $0738                 
CODE_29A7E2:        CLC                       
CODE_29A7E3:        ADC $00                   
CODE_29A7E5:        TAX                       
CODE_29A7E6:        LDA $1D80,x               
CODE_29A7E9:        CMP #$01                  
CODE_29A7EB:        BEQ CODE_29A7F2           
CODE_29A7ED:        JSL CODE_238C1B           
CODE_29A7F1:        RTS                       

CODE_29A7F2:        LDX $0738                 
CODE_29A7F5:        LDA $1DC6,x               
CODE_29A7F8:        JSL CODE_20FB1F           

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
  
CODE_29A81C:        JSL CODE_238C1B           
CODE_29A820:        RTS                       

CODE_29A821:        LDA $59                   
CODE_29A823:        JSL CODE_20FB1F           

PNTR_29A827:        dw CODE_29A88D
                    dw CODE_29A8D7
                    dw CODE_29A8E5
                    dw CODE_29A936
                    dw CODE_29A96E
                    dw CODE_29A8D7

CODE_29A833:        JSR CODE_29A821           
CODE_29A836:        RTL                       

CODE_29A837:        LDA $57                   
CODE_29A839:        BNE CODE_29A85D           
CODE_29A83B:        LDA #$20                  
CODE_29A83D:        STA $57                   
CODE_29A83F:        LDA #$12                  
CODE_29A841:        STA $0208                 
CODE_29A844:        LDA #$01                  
CODE_29A846:        STA $0209                 
CODE_29A849:        LDA #$02                  
CODE_29A84B:        STA $0203                 
CODE_29A84E:        LDA #$20                  
CODE_29A850:        STA $0204                 
CODE_29A853:        LDA $0598                 
CODE_29A856:        BEQ CODE_29A85D           
CODE_29A858:        LDA #$01                  
CODE_29A85A:        STA $020B                 
CODE_29A85D:        LDA $57                   
CODE_29A85F:        AND #$04                  
CODE_29A861:        LSR A                     
CODE_29A862:        TAX                       
CODE_29A863:        REP #$20                  
CODE_29A865:        LDA.l DATA_29A889,x             
CODE_29A869:        STA $1300                 
CODE_29A86C:        SEP #$20                  
CODE_29A86E:        LDA #$01                  
CODE_29A870:        STA $1500                 
CODE_29A873:        DEC $57                   
CODE_29A875:        BNE CODE_29A888           
CODE_29A877:        LDA #$13                  
CODE_29A879:        STA $0208                 
CODE_29A87C:        STZ $0209                 
CODE_29A87F:        STZ $0203                 
CODE_29A882:        STZ $0204                 
CODE_29A885:        STZ $020B                 
CODE_29A888:        RTS                       

DATA_29A889:        dw $0000
                    dw $7FFF

CODE_29A88D:        LDY $0726
CODE_29A890:        LDX #$00
CODE_29A893:        LDA $0047,y
CODE_29A895:        SEC                       
CODE_29A896:        SBC $0210                 
CODE_29A899:        CMP #$80                  
CODE_29A89B:        BCS CODE_29A89F                   
CODE_29A89D:        LDX #$01                  
CODE_29A89F:        STX $58                   
CODE_29A8A1:        LDA $E58F,x               
CODE_29A8A4:        STA $56                   
CODE_29A8A6:        LDA $0043,y               
CODE_29A8A9:        STA $54                   
CODE_29A8AB:        STA $7E3974               
CODE_29A8AF:        LDX #$05                  
CODE_29A8B1:        LDA $0730                 
CODE_29A8B4:        BNE CODE_29A8D0           
CODE_29A8B6:        LDA $0043,y               
CODE_29A8B9:        STA $0730                 
CODE_29A8BC:        LDA $0047,y               
CODE_29A8BF:        STA $0732                 
CODE_29A8C2:        LDA $0045,y               
CODE_29A8C5:        STA $0731                 
CODE_29A8C8:        LDA $0052,y               
CODE_29A8CB:        STA $0733                 
CODE_29A8CE:        LDX #$01                  
CODE_29A8D0:        STX $59                   
CODE_29A8D2:        JSL CODE_238C1B           
CODE_29A8D6:        RTS                       

CODE_29A8D7:        JSR CODE_29A837           
CODE_29A8DA:        LDA $57                   
CODE_29A8DC:        BNE CODE_29A8E0           
CODE_29A8DE:        INC $59                   
CODE_29A8E0:        JSL CODE_238C1B           
CODE_29A8E4:        RTS                       

CODE_29A8E5:        INC $57                   
CODE_29A8E7:        LDY $0726                 
CODE_29A8EA:        LDX $58                   
CODE_29A8EC:        LDA $56                   
CODE_29A8EE:        CLC                       
CODE_29A8EF:        ADC $E591,x               
CODE_29A8F2:        STA $56                   
CODE_29A8F4:        LDA $0047,y               
CODE_29A8F7:        SEC                       
CODE_29A8F8:        SBC $0210                 
CODE_29A8FB:        CMP $56                   
CODE_29A8FD:        BNE CODE_29A908           
CODE_29A8FF:        LDA #$F0                  
CODE_29A901:        STA $7E3974               
CODE_29A905:        JMP CODE_29A927           

CODE_29A908:        LDA $56                   
CODE_29A90A:        CMP $E593,x               
CODE_29A90D:        BNE CODE_29A927           
CODE_29A90F:        LDA $0727                 
CODE_29A912:        STA $042A                 
CODE_29A915:        LDA #$08                  
CODE_29A917:        STA $0727                 
CODE_29A91A:        LDY #$0D                  
CODE_29A91C:        LDA #$00                  
CODE_29A91E:        STA $1F17,y               
CODE_29A921:        DEY                       
CODE_29A922:        BPL CODE_29A91E           
CODE_29A924:        INC $59                   
CODE_29A926:        RTS                       

CODE_29A927:        JSL CODE_238C1B           
CODE_29A92B:        LDA $56                   
CODE_29A92D:        STA $01                   
CODE_29A92F:        LDA #$01                  
CODE_29A931:        STA $02                   
CODE_29A933:        JMP CODE_29AA70           

CODE_29A936:        LDA #$00                  
CODE_29A938:        STA $57                   
CODE_29A93A:        LDA #$F8                  
CODE_29A93C:        STA $56                   
CODE_29A93E:        INC $59                   
CODE_29A940:        LDY $042A                 
CODE_29A943:        LDX $0726                 
CODE_29A946:        LDA #$00                  
CODE_29A948:        STA $0722,x               
CODE_29A94B:        STA $0724,x               
CODE_29A94E:        STA $45,x                 
CODE_29A950:        LDA $E5A7,y               
CODE_29A953:        STA $47,x                 
CODE_29A955:        LDA #$F0                  
CODE_29A957:        STA $56                   
CODE_29A959:        LDA $E595,y               
CODE_29A95C:        STA $54                   
CODE_29A95E:        LDA #$80                  
CODE_29A960:        STA $0711                 
CODE_29A963:        LDA #$03                  
CODE_29A965:        STA $0713                 
CODE_29A968:        LDA #$00                  
CODE_29A96A:        STA $072C                 
CODE_29A96D:        RTS                       

CODE_29A96E:        LDA #$00                  
CODE_29A970:        STA $0713                 
CODE_29A973:        LDY $042A                 
CODE_29A976:        LDX $0726                 
CODE_29A979:        INC $57                   
CODE_29A97B:        LDY $042A                 
CODE_29A97E:        LDX $58                   
CODE_29A980:        LDA $56                   
CODE_29A982:        CLC                       
CODE_29A983:        ADC $E591,x               
CODE_29A986:        STA $56                   
CODE_29A988:        CMP $E5A7,y               
CODE_29A98B:        BNE CODE_29A99C           
CODE_29A98D:        LDX $0726                 
CODE_29A990:        LDA $E595,y               
CODE_29A993:        STA $7E3974               
CODE_29A997:        STA $43,x                 
CODE_29A999:        JMP CODE_29A9AB           

CODE_29A99C:        CMP $E593,x               
CODE_29A99F:        BNE CODE_29A9AB           
CODE_29A9A1:        LDA #$00                  
CODE_29A9A3:        STA $57                   
CODE_29A9A5:        STA $59                   
CODE_29A9A7:        LDA #$F8                  
CODE_29A9A9:        STA $56                   
CODE_29A9AB:        JMP CODE_29A927           

CODE_29A9AE:        LDA $072E                 
CODE_29A9B1:        JSL CODE_20FB1F           

PNTR_29A9B5:        dw CODE_29A9BB
                    dw CODE_29A9D9
                    dw CODE_29A9EF


CODE_29A9BB:        LDX $0726
CODE_29A9BE:        LDA $43,x                 
CODE_29A9C0:        STA $7E3974               
CODE_29A9C4:        CLC                       
CODE_29A9C5:        ADC #$10                  
CODE_29A9C7:        STA $54                   
CODE_29A9C9:        LDA $45,x                 
CODE_29A9CB:        STA $55                   
CODE_29A9CD:        LDA $47,x                 
CODE_29A9CF:        STA $56                   
CODE_29A9D1:        INC $072E                 
CODE_29A9D4:        JSL CODE_238C1B           
CODE_29A9D8:        RTL                       

CODE_29A9D9:        JSR CODE_29A837           
CODE_29A9DC:        LDA $57                   
CODE_29A9DE:        BNE CODE_29A9EA           
CODE_29A9E0:        INC $072E                 
CODE_29A9E3:        LDA #$02                  
CODE_29A9E5:        LDA #$43                  ; \
CODE_29A9E7:        STA $1203                 ; / World 8 overworld hand pulling sound effect
CODE_29A9EA:        JSL CODE_238C1B           
CODE_29A9EE:        RTL                       

CODE_29A9EF:        LDA #$01                  
CODE_29A9F1:        STA $00                   
CODE_29A9F3:        JSR CODE_29AA47           
CODE_29A9F6:        LDA $57                   
CODE_29A9F8:        CMP #$20                  
CODE_29A9FA:        BNE CODE_29AA10           
CODE_29A9FC:        LDA #$10                  
CODE_29A9FE:        STA $0729                 
CODE_29AA01:        LDX $0726                 
CODE_29AA04:        LDA #$00                  
CODE_29AA06:        STA $073F,x               
CODE_29AA09:        STA $0728                 
CODE_29AA0C:        STA $072E                 
CODE_29AA0F:        RTL                       

CODE_29AA10:        JSL CODE_238C1B           
CODE_29AA14:        LDX $0726                 
CODE_29AA17:        LDA $43,x                 
CODE_29AA19:        CLC                       
CODE_29AA1A:        ADC #$10                  
CODE_29AA1C:        STA $00                   
CODE_29AA1E:        LDA $47,x                 
CODE_29AA20:        SEC                       
CODE_29AA21:        SBC $0210                 
CODE_29AA24:        STA $01                   
CODE_29AA26:        LDA #$00                  
CODE_29AA28:        STA $02                   
CODE_29AA2A:        LDA $47,x                 
CODE_29AA2C:        STA $0804                 
CODE_29AA2F:        LDA #$80                  
CODE_29AA31:        STA $0805                 
CODE_29AA34:        LDA #$00                  
CODE_29AA36:        STA $0806                 
CODE_29AA39:        LDA #$21                  
CODE_29AA3B:        STA $0807                 
CODE_29AA3E:        LDA #$02                  
CODE_29AA40:        STA $0A21                 
CODE_29AA43:        JSR CODE_29AA70           
CODE_29AA46:        RTL                       

CODE_29AA47:        LDA $15                   
CODE_29AA49:        AND #$01                  
CODE_29AA4B:        BNE CODE_29AA6F           
CODE_29AA4D:        LDA $57                   
CODE_29AA4F:        AND #$10                  
CODE_29AA51:        LSR A                     
CODE_29AA52:        LSR A                     
CODE_29AA53:        LSR A                     
CODE_29AA54:        LSR A                     
CODE_29AA55:        TAY                       
CODE_29AA56:        LDX $0726                 
CODE_29AA59:        LDA $54                   
CODE_29AA5B:        CLC                       
CODE_29AA5C:        ADC $E5B0,y               
CODE_29AA5F:        STA $54                   
CODE_29AA61:        INC $57                   
CODE_29AA63:        LDA $57                   
CODE_29AA65:        AND #$10                  
CODE_29AA67:        BEQ CODE_29AA6F           
CODE_29AA69:        LDA $54                   
CODE_29AA6B:        STA $7E3974               
CODE_29AA6F:        RTS                       

CODE_29AA70:        LDX $02                   
CODE_29AA72:        LDA $54                   
CODE_29AA74:        STA $0861                 
CODE_29AA77:        LDA $02                   
CODE_29AA79:        BEQ CODE_29AA8C           
CODE_29AA7B:        LDA $7E3974               
CODE_29AA7F:        CMP #$F0                  
CODE_29AA81:        BNE CODE_29AAAB           
CODE_29AA83:        STA $0885                 
CODE_29AA86:        STA $0889                 
CODE_29AA89:        JMP CODE_29AAAB           

CODE_29AA8C:        LDA $57                   
CODE_29AA8E:        AND #$10                  
CODE_29AA90:        BEQ CODE_29AAAB           
CODE_29AA92:        LDA $7E3974               
CODE_29AA96:        STA $0889                 
CODE_29AA99:        SEC                       
CODE_29AA9A:        SBC #$10                  
CODE_29AA9C:        STA $0885                 
CODE_29AA9F:        LDA $0886                 
CODE_29AAA2:        CMP #$26                  
CODE_29AAA4:        BNE CODE_29AAAB           
CODE_29AAA6:        LDA #$F0                  
CODE_29AAA8:        STA $0885                 
CODE_29AAAB:        LDA $E5B2,x               
CODE_29AAAE:        STA $0863                 
CODE_29AAB1:        LDA $01                   
CODE_29AAB3:        STA $0860                 
CODE_29AAB6:        LDA #$02                  
CODE_29AAB8:        STA $0A38                 
CODE_29AABB:        LDY $E5B4,x               
CODE_29AABE:        LDA $57                   
CODE_29AAC0:        AND #$10                  
CODE_29AAC2:        BEQ CODE_29AAC7           
CODE_29AAC4:        LDY $E5B6,x               
CODE_29AAC7:        STY $0862                 
CODE_29AACA:        LDA $58                   
CODE_29AACC:        BEQ CODE_29AAD6           
CODE_29AACE:        LDA $0863                 
CODE_29AAD1:        ORA #$40                  
CODE_29AAD3:        STA $0863                 
CODE_29AAD6:        LDA $54                   
CODE_29AAD8:        STA $0801                 
CODE_29AADB:        LDA #$A8                  
CODE_29AADD:        STA $0802                 
CODE_29AAE0:        LDA #$22                  
CODE_29AAE2:        STA $0803                 
CODE_29AAE5:        STZ $0800                 
CODE_29AAE8:        LDA #$02                  
CODE_29AAEA:        STA $0A20                 
CODE_29AAED:        LDA $01                   
CODE_29AAEF:        AND #$80                  
CODE_29AAF1:        BEQ CODE_29AAFD           
CODE_29AAF3:        LDA #$F0                  
CODE_29AAF5:        STA $0800                 
CODE_29AAF8:        LDA #$AA                  
CODE_29AAFA:        STA $0802                 
CODE_29AAFD:        RTS                       

CODE_29AAFE:        LDX $0726                 
CODE_29AB01:        LDA $93                   
CODE_29AB03:        BNE CODE_29AB5E           
CODE_29AB05:        LDY $0727                 
CODE_29AB08:        LDA $43,x                 
CODE_29AB0A:        SEC                       
CODE_29AB0B:        SBC $C96D,y               
CODE_29AB0E:        STA $5C                   
CODE_29AB10:        LDA $47,x                 
CODE_29AB12:        SEC                       
CODE_29AB13:        SBC #$20                  
CODE_29AB15:        STA $60                   
CODE_29AB17:        LDA #$00                  
CODE_29AB19:        STA $66                   
CODE_29AB1B:        STA $61                   
CODE_29AB1D:        STA $5D                   
CODE_29AB1F:        LDA $47,x                 
CODE_29AB21:        CMP #$20                  
CODE_29AB23:        BCS CODE_29AB31                   
CODE_29AB25:        LDA #$01                  
CODE_29AB27:        STA $66                   
CODE_29AB29:        LDA #$FF                  
CODE_29AB2B:        EOR $60                   
CODE_29AB2D:        TAY                       
CODE_29AB2E:        INY                       
CODE_29AB2F:        STY $60                   
CODE_29AB31:        LDY $0727                 
CODE_29AB34:        LDA $43,x                 
CODE_29AB36:        CMP $C96D,y               
CODE_29AB39:        BCS CODE_29AB49                   
CODE_29AB3B:        LDA #$FF                  
CODE_29AB3D:        EOR $5C                   
CODE_29AB3F:        TAY                       
CODE_29AB40:        INY                       
CODE_29AB41:        STY $5C                   
CODE_29AB43:        LDA $66                   
CODE_29AB45:        ORA #$02                  
CODE_29AB47:        STA $66                   
CODE_29AB49:        LDY #$04                  
CODE_29AB4B:        CLC                       
CODE_29AB4C:        LSR $5C                   
CODE_29AB4E:        ROR $5D                   
CODE_29AB50:        CLC                       
CODE_29AB51:        LSR $60                   
CODE_29AB53:        ROR $61                   
CODE_29AB55:        DEY                       
CODE_29AB56:        BPL CODE_29AB4B           
CODE_29AB58:        LDA #$20                  
CODE_29AB5A:        STA $65                   
CODE_29AB5C:        INC $93                   
CODE_29AB5E:        LDA #$04                  
CODE_29AB60:        STA $1203                 
CODE_29AB63:        LDA $66                   
CODE_29AB65:        AND #$01                  
CODE_29AB67:        BEQ CODE_29AB7F           
CODE_29AB69:        LDA $62                   
CODE_29AB6B:        CLC                       
CODE_29AB6C:        ADC $61                   
CODE_29AB6E:        STA $62                   
CODE_29AB70:        LDA $47,x                 
CODE_29AB72:        ADC $60                   
CODE_29AB74:        STA $47,x                 
CODE_29AB76:        LDA $45,x                 
CODE_29AB78:        ADC #$00                  
CODE_29AB7A:        STA $45,x                 
CODE_29AB7C:        JMP CODE_29AB92           

CODE_29AB7F:        LDA $62                   
CODE_29AB81:        SEC                       
CODE_29AB82:        SBC $61                   
CODE_29AB84:        STA $62                   
CODE_29AB86:        LDA $47,x                 
CODE_29AB88:        SBC $60                   
CODE_29AB8A:        STA $47,x                 
CODE_29AB8C:        LDA $45,x                 
CODE_29AB8E:        SBC #$00                  
CODE_29AB90:        STA $45,x                 
CODE_29AB92:        LDA $66                   
CODE_29AB94:        AND #$02                  
CODE_29AB96:        BEQ CODE_29ABA8           
CODE_29AB98:        LDA $5E                   
CODE_29AB9A:        CLC                       
CODE_29AB9B:        ADC $5D                   
CODE_29AB9D:        STA $5E                   
CODE_29AB9F:        LDA $43,x                 
CODE_29ABA1:        ADC $5C                   
CODE_29ABA3:        STA $43,x                 
CODE_29ABA5:        JMP CODE_29ABB5           

CODE_29ABA8:        LDA $5E                   
CODE_29ABAA:        SEC                       
CODE_29ABAB:        SBC $5D                   
CODE_29ABAD:        STA $5E                   
CODE_29ABAF:        LDA $43,x                 
CODE_29ABB1:        SBC $5C                   
CODE_29ABB3:        STA $43,x                 
CODE_29ABB5:        DEC $65                   
CODE_29ABB7:        BNE CODE_29ABE2           
CODE_29ABB9:        LDA #$08                  
CODE_29ABBB:        STA $0728                 
CODE_29ABBE:        LDX $0726                 
CODE_29ABC1:        LDA #$00                  
CODE_29ABC3:        STA $93                   
CODE_29ABC5:        STA $005A,x               
CODE_29ABC8:        STA $7E3985,x             
CODE_29ABCC:        STA $7E3987,x             
CODE_29ABD0:        LDA $43,x                 
CODE_29ABD2:        STA $7E397D,x             
CODE_29ABD6:        LDA $45,x                 
CODE_29ABD8:        STA $7E397F,x             
CODE_29ABDC:        LDA $47,x                 
CODE_29ABDE:        STA $7E3981,x             
CODE_29ABE2:        JSL CODE_238C1B           
CODE_29ABE6:        RTL                       

CODE_29ABE7:        LDX $0726                 
CODE_29ABEA:        LDA $47,x                 
CODE_29ABEC:        SEC                       
CODE_29ABED:        SBC #$02                  
CODE_29ABEF:        STA $47,x                 
CODE_29ABF1:        LDA $45,x                 
CODE_29ABF3:        SBC #$00                  
CODE_29ABF5:        STA $45,x                 
CODE_29ABF7:        LDA $47,x                 
CODE_29ABF9:        SEC                       
CODE_29ABFA:        SBC $0210                 
CODE_29ABFD:        BNE CODE_29AC0E           
CODE_29ABFF:        LDA #$00                  
CODE_29AC01:        STA $0722,x               
CODE_29AC04:        STA $0724,x               
CODE_29AC07:        STA $7E3977,x             
CODE_29AC0B:        INC $0728                 
CODE_29AC0E:        LDA #$04                  
CODE_29AC10:        STA $1203                 
CODE_29AC13:        JSR CODE_29AC1B           
CODE_29AC16:        JSL CODE_238C1B           
CODE_29AC1A:        RTL                       

CODE_29AC1B:        LDX $0726                 
CODE_29AC1E:        LDA $43,x                 
CODE_29AC20:        STA $0801                 
CODE_29AC23:        LDA #$A8                  
CODE_29AC25:        STA $0802                 
CODE_29AC28:        LDA #$20                  
CODE_29AC2A:        STA $0803                 
CODE_29AC2D:        LDA #$00                  
CODE_29AC2F:        STA $0800                 
CODE_29AC32:        LDA $47,x                 
CODE_29AC34:        SEC                       
CODE_29AC35:        SBC $0210                 
CODE_29AC38:        AND #$80                  
CODE_29AC3A:        BEQ CODE_29AC46           
CODE_29AC3C:        LDA #$F0                  
CODE_29AC3E:        STA $0800                 
CODE_29AC41:        LDA #$AA                  
CODE_29AC43:        STA $0802                 
CODE_29AC46:        LDA #$02                  
CODE_29AC48:        STA $0A20                 
CODE_29AC4B:        RTS                       

CODE_29AC4C:        LDX $0726                 
CODE_29AC4F:        LDA #$F0                  
CODE_29AC51:        STA $47,x                 
CODE_29AC53:        LDY $0727                 
CODE_29AC56:        LDA $C96D,y               
CODE_29AC59:        STA $43,x                 
CODE_29AC5B:        INC $0728                 
CODE_29AC5E:        JMP CODE_29AC0E           

CODE_29AC61:        LDX $0726                 
CODE_29AC64:        LDA $47,x                 
CODE_29AC66:        SEC                       
CODE_29AC67:        SBC #$02                  
CODE_29AC69:        STA $47,x                 
CODE_29AC6B:        CMP #$20                  
CODE_29AC6D:        BNE CODE_29AC72           
CODE_29AC6F:        JMP CODE_29ABB9           

CODE_29AC72:        LDA #$04                  
CODE_29AC74:        STA $1203                 
CODE_29AC77:        JMP CODE_29AC0E           

CODE_29AC7A:        LDX $0726                 
CODE_29AC7D:        LDA $93                   
CODE_29AC7F:        BEQ CODE_29AC84           
CODE_29AC81:        JMP CODE_29AD61           

CODE_29AC84:        LDY #$0D                  
CODE_29AC86:        LDA $1F17,y               
CODE_29AC89:        BNE CODE_29AC91           
CODE_29AC8B:        DEY                       
CODE_29AC8C:        BNE CODE_29AC86           
CODE_29AC8E:        JMP CODE_29ACC1           

CODE_29AC91:        LDA $43,x                 
CODE_29AC93:        CMP $1EED,y               
CODE_29AC96:        BNE CODE_29AC8B           
CODE_29AC98:        LDA $45,x                 
CODE_29AC9A:        CMP $1F09,y               
CODE_29AC9D:        BNE CODE_29AC8B           
CODE_29AC9F:        LDA $47,x                 
CODE_29ACA1:        CMP $1EFB,y               
CODE_29ACA4:        BNE CODE_29AC8B           
CODE_29ACA6:        LDA $1F17,y               
CODE_29ACA9:        CMP #$02                  
CODE_29ACAB:        BNE CODE_29ACB5           
CODE_29ACAD:        LDA #$20                  
CODE_29ACAF:        STA $053D                 
CODE_29ACB2:        JMP CODE_29AC8B           

CODE_29ACB5:        CMP #$0B                  
CODE_29ACB7:        BNE CODE_29AC8B           
CODE_29ACB9:        LDA #$03                  
CODE_29ACBB:        STA $1F17,y               
CODE_29ACBE:        JMP CODE_29AC8B           

CODE_29ACC1:        LDA $7E397D,x             
CODE_29ACC5:        SEC                       
CODE_29ACC6:        SBC $43,x                 
CODE_29ACC8:        STA $5C                   
CODE_29ACCA:        LDA $7E397F,x             
CODE_29ACCE:        CMP $45,x                 
CODE_29ACD0:        BEQ CODE_29ACD6           
CODE_29ACD2:        BCS CODE_29ACDE                   
CODE_29ACD4:        BCC CODE_29ACF4           
CODE_29ACD6:        LDA $7E3981,x             
CODE_29ACDA:        CMP $47,x                 
CODE_29ACDC:        BCC CODE_29ACF4           
CODE_29ACDE:        LDA $7E3981,x             
CODE_29ACE2:        SEC                       
CODE_29ACE3:        SBC $47,x                 
CODE_29ACE5:        STA $61                   
CODE_29ACE7:        LDA $7E397F,x             
CODE_29ACEB:        SBC $45,x                 
CODE_29ACED:        STA $60                   
CODE_29ACEF:        LDY #$00                  
CODE_29ACF1:        JMP CODE_29AD07           

CODE_29ACF4:        LDA $47,x                 
CODE_29ACF6:        SEC                       
CODE_29ACF7:        SBC $7E3981,x             
CODE_29ACFB:        STA $61                   
CODE_29ACFD:        LDA $45,x                 
CODE_29ACFF:        SBC $7E397F,x             
CODE_29AD03:        STA $60                   
CODE_29AD05:        LDY #$01                  
CODE_29AD07:        STY $66                   
CODE_29AD09:        LDA #$00                  
CODE_29AD0B:        STA $62                   
CODE_29AD0D:        STA $5D                   
CODE_29AD0F:        LDA $7E397D,x             
CODE_29AD13:        CMP $43,x                 
CODE_29AD15:        BCS CODE_29AD25                   
CODE_29AD17:        LDA #$FF                  
CODE_29AD19:        EOR $5C                   
CODE_29AD1B:        TAY                       
CODE_29AD1C:        INY                       
CODE_29AD1D:        STY $5C                   
CODE_29AD1F:        LDA $66                   
CODE_29AD21:        ORA #$02                  
CODE_29AD23:        STA $66                   
CODE_29AD25:        LDA $60                   
CODE_29AD27:        BNE CODE_29AD44           
CODE_29AD29:        LDA $47,x                 
CODE_29AD2B:        SEC                       
CODE_29AD2C:        SBC $0210                 
CODE_29AD2F:        TAY                       
CODE_29AD30:        LDA $66                   
CODE_29AD32:        AND #$01                  
CODE_29AD34:        BNE CODE_29AD3E           
CODE_29AD36:        TYA                       
CODE_29AD37:        CLC                       
CODE_29AD38:        ADC $61                   
CODE_29AD3A:        BCC CODE_29AD4A           
CODE_29AD3C:        BCS CODE_29AD44                   
CODE_29AD3E:        TYA                       
CODE_29AD3F:        SEC                       
CODE_29AD40:        SBC $61                   
CODE_29AD42:        BCS CODE_29AD4A                   
CODE_29AD44:        INC $0729                 
CODE_29AD47:        JMP CODE_29ADFC           

CODE_29AD4A:        LDY #$04                  
CODE_29AD4C:        CLC                       
CODE_29AD4D:        LSR $5C                   
CODE_29AD4F:        ROR $5D                   
CODE_29AD51:        CLC                       
CODE_29AD52:        LSR $60                   
CODE_29AD54:        ROR $61                   
CODE_29AD56:        ROR $62                   
CODE_29AD58:        DEY                       
CODE_29AD59:        BPL CODE_29AD4C           
CODE_29AD5B:        LDA #$20                  
CODE_29AD5D:        STA $65                   
CODE_29AD5F:        INC $93                   
CODE_29AD61:        LDA $65                   
CODE_29AD63:        BEQ CODE_29ADBE           
CODE_29AD65:        LDA #$04                  
CODE_29AD67:        STA $1203                 
CODE_29AD6A:        LDA $66                   
CODE_29AD6C:        AND #$01                  
CODE_29AD6E:        BNE CODE_29AD86           
CODE_29AD70:        LDA $63                   
CODE_29AD72:        CLC                       
CODE_29AD73:        ADC $62                   
CODE_29AD75:        STA $63                   
CODE_29AD77:        LDA $47,x                 
CODE_29AD79:        ADC $61                   
CODE_29AD7B:        STA $47,x                 
CODE_29AD7D:        LDA $45,x                 
CODE_29AD7F:        ADC $60                   
CODE_29AD81:        STA $45,x                 
CODE_29AD83:        JMP CODE_29AD99           

CODE_29AD86:        LDA $63                   
CODE_29AD88:        SEC                       
CODE_29AD89:        SBC $62                   
CODE_29AD8B:        STA $63                   
CODE_29AD8D:        LDA $47,x                 
CODE_29AD8F:        SBC $61                   
CODE_29AD91:        STA $47,x                 
CODE_29AD93:        LDA $45,x                 
CODE_29AD95:        SBC $60                   
CODE_29AD97:        STA $45,x                 
CODE_29AD99:        LDA $66                   
CODE_29AD9B:        AND #$02                  
CODE_29AD9D:        BNE CODE_29ADAF           
CODE_29AD9F:        LDA $5E                   
CODE_29ADA1:        CLC                       
CODE_29ADA2:        ADC $5D                   
CODE_29ADA4:        STA $5E                   
CODE_29ADA6:        LDA $43,x                 
CODE_29ADA8:        ADC $5C                   
CODE_29ADAA:        STA $43,x                 
CODE_29ADAC:        JMP CODE_29ADBC           

CODE_29ADAF:        LDA $5E                   
CODE_29ADB1:        SEC                       
CODE_29ADB2:        SBC $5D                   
CODE_29ADB4:        STA $5E                   
CODE_29ADB6:        LDA $43,x                 
CODE_29ADB8:        SBC $5C                   
CODE_29ADBA:        STA $43,x                 
CODE_29ADBC:        DEC $65                   
CODE_29ADBE:        JSL CODE_238C1B           
CODE_29ADC2:        LDA $65                   
CODE_29ADC4:        ORA $053D                 
CODE_29ADC7:        ORA $0710                 
CODE_29ADCA:        BNE CODE_29ADFB           
CODE_29ADCC:        LDA #$0B                  
CODE_29ADCE:        STA $0729                 
CODE_29ADD1:        LDX $0726                 
CODE_29ADD4:        LDA $43,x                 
CODE_29ADD6:        STA $7E3975,x             
CODE_29ADDA:        LDA $45,x                 
CODE_29ADDC:        STA $7E3977,x             
CODE_29ADE0:        LDA $47,x                 
CODE_29ADE2:        STA $7E3979,x             
CODE_29ADE6:        LDA $7E3985,x             
CODE_29ADEA:        STA $0722,x               
CODE_29ADED:        LDA $7E3987,x             
CODE_29ADF1:        STA $0724,x               
CODE_29ADF4:        LDA #$00                  
CODE_29ADF6:        STA $93                   
CODE_29ADF8:        STA $073F,x               
CODE_29ADFB:        RTL                       

CODE_29ADFC:        LDX $0726                 
CODE_29ADFF:        LDA $66                   
CODE_29AE01:        AND #$01                  
CODE_29AE03:        BEQ CODE_29AE1D           
CODE_29AE05:        LDA $47,x                 
CODE_29AE07:        SEC                       
CODE_29AE08:        SBC #$02                  
CODE_29AE0A:        STA $47,x                 
CODE_29AE0C:        LDA $45,x                 
CODE_29AE0E:        SBC #$00                  
CODE_29AE10:        STA $45,x                 
CODE_29AE12:        LDA $47,x                 
CODE_29AE14:        SEC                       
CODE_29AE15:        SBC $0210                 
CODE_29AE18:        BEQ CODE_29AE34           
CODE_29AE1A:        JMP CODE_29AE45           

CODE_29AE1D:        LDA $47,x                 
CODE_29AE1F:        CLC                       
CODE_29AE20:        ADC #$02                  
CODE_29AE22:        STA $47,x                 
CODE_29AE24:        LDA $45,x                 
CODE_29AE26:        ADC #$00                  
CODE_29AE28:        STA $45,x                 
CODE_29AE2A:        LDA $47,x                 
CODE_29AE2C:        SEC                       
CODE_29AE2D:        SBC $0210                 
CODE_29AE30:        CMP #$F0                  
CODE_29AE32:        BNE CODE_29AE45           
CODE_29AE34:        LDA $7E3985,x             
CODE_29AE38:        STA $0722,x               
CODE_29AE3B:        LDA $7E3987,x             
CODE_29AE3F:        STA $0724,x               
CODE_29AE42:        INC $0729                 
CODE_29AE45:        LDA #$04                  
CODE_29AE47:        STA $1203                 
CODE_29AE4A:        JSR CODE_29AC1B           
CODE_29AE4D:        JSL CODE_238C1B           
CODE_29AE51:        RTL                       

CODE_29AE52:        LDX $0726                 
CODE_29AE55:        LDA $7E397D,x             
CODE_29AE59:        STA $43,x                 
CODE_29AE5B:        LDA $7E397F,x             
CODE_29AE5F:        STA $45,x                 
CODE_29AE61:        LDA $66                   
CODE_29AE63:        AND #$01                  
CODE_29AE65:        BEQ CODE_29AE85           
CODE_29AE67:        LDY #$F0                  
CODE_29AE69:        LDA $0210                 
CODE_29AE6C:        BEQ CODE_29AE80           
CODE_29AE6E:        LDA $7E3981,x             
CODE_29AE72:        CLC                       
CODE_29AE73:        ADC $0210                 
CODE_29AE76:        LDA $7E397F,x             
CODE_29AE7A:        ADC #$00                  
CODE_29AE7C:        STA $45,x                 
CODE_29AE7E:        LDY #$70                  
CODE_29AE80:        STY $47,x                 
CODE_29AE82:        JMP CODE_29AE9F           

CODE_29AE85:        LDA $0210                 
CODE_29AE88:        BEQ CODE_29AE9A           
CODE_29AE8A:        LDA $7E3981,x             
CODE_29AE8E:        SEC                       
CODE_29AE8F:        SBC $0210                 
CODE_29AE92:        LDA $7E397F,x             
CODE_29AE96:        SBC #$00                  
CODE_29AE98:        STA $45,x                 
CODE_29AE9A:        LDA $0210                 
CODE_29AE9D:        STA $47,x                 
CODE_29AE9F:        LDA #$04                  
CODE_29AEA1:        STA $1203                 
CODE_29AEA4:        INC $0729                 
CODE_29AEA7:        JMP CODE_29AE45           

CODE_29AEAA:        LDX $0726                 
CODE_29AEAD:        LDA $66                   
CODE_29AEAF:        AND #$01                  
CODE_29AEB1:        BEQ CODE_29AECB           
CODE_29AEB3:        LDA $47,x                 
CODE_29AEB5:        SEC                       
CODE_29AEB6:        SBC #$02                  
CODE_29AEB8:        STA $47,x                 
CODE_29AEBA:        LDA $45,x                 
CODE_29AEBC:        SBC #$00                  
CODE_29AEBE:        STA $45,x                 
CODE_29AEC0:        LDA $47,x                 
CODE_29AEC2:        CMP $7E3981,x             
CODE_29AEC6:        BEQ CODE_29AEE0           
CODE_29AEC8:        JMP CODE_29AEFE           

CODE_29AECB:        LDA $47,x                 
CODE_29AECD:        CLC                       
CODE_29AECE:        ADC #$02                  
CODE_29AED0:        STA $47,x                 
CODE_29AED2:        LDA $45,x                 
CODE_29AED4:        ADC #$00                  
CODE_29AED6:        STA $45,x                 
CODE_29AED8:        LDA $47,x                 
CODE_29AEDA:        CMP $7E3981,x             
CODE_29AEDE:        BNE CODE_29AEFE           
CODE_29AEE0:        LDA #$0B                  
CODE_29AEE2:        STA $0729                 
CODE_29AEE5:        LDA $43,x                 
CODE_29AEE7:        STA $7E3975,x             
CODE_29AEEB:        LDA $45,x                 
CODE_29AEED:        STA $7E3977,x             
CODE_29AEF1:        LDA $47,x                 
CODE_29AEF3:        STA $7E3979,x             
CODE_29AEF7:        LDA #$00                  
CODE_29AEF9:        STA $93                   
CODE_29AEFB:        STA $073F,x               
CODE_29AEFE:        JMP CODE_29AE45           

DATA_29AF01:        db $00,$00,$00,$00

CODE_29AF05:        JSL CODE_238DD8           
CODE_29AF09:        LDX #$04                  
CODE_29AF0B:        CMP $E5F2,x               
CODE_29AF0E:        BEQ CODE_29AF16           
CODE_29AF10:        DEX                       
CODE_29AF11:        BPL CODE_29AF0B           
CODE_29AF13:        JMP CODE_29AF1F           

CODE_29AF16:        LDA $7E396D               
CODE_29AF1A:        INC A                     
CODE_29AF1B:        STA $7E396D               
CODE_29AF1F:        JSL CODE_238DD8           
CODE_29AF23:        AND #$C0                  
CODE_29AF25:        CLC                       
CODE_29AF26:        ROL A                     
CODE_29AF27:        ROL A                     
CODE_29AF28:        ROL A                     
CODE_29AF29:        TAY                       
CODE_29AF2A:        LDX #$04                  
CODE_29AF2C:        LDA $B3                   
CODE_29AF2E:        CMP $E5CD,x               
CODE_29AF31:        BEQ CODE_29AF3B           
CODE_29AF33:        DEX                       
CODE_29AF34:        BPL CODE_29AF2E           
CODE_29AF36:        CMP $1E9A,y               
CODE_29AF39:        BCC CODE_29AF48           
CODE_29AF3B:        LDA $20                   
CODE_29AF3D:        BEQ CODE_29AF4B           
CODE_29AF3F:        LDA $15                   
CODE_29AF41:        AND #$03                  
CODE_29AF43:        BEQ CODE_29AF74           
CODE_29AF45:        JMP CODE_29B071           

CODE_29AF48:        JMP CODE_29B0AB           

CODE_29AF4B:        CPY #$00                  
CODE_29AF4D:        BNE CODE_29AF61           
CODE_29AF4F:        LDA $7E3995               
CODE_29AF53:        BNE CODE_29AF48           
CODE_29AF55:        LDA #$07                  
CODE_29AF57:        STA $20                   
CODE_29AF59:        LDA #$1C                  
CODE_29AF5B:        STA $1203                 
CODE_29AF5E:        JMP CODE_29AF45           

CODE_29AF61:        LDA $B3                   
CODE_29AF63:        CMP #$67                  
CODE_29AF65:        BEQ CODE_29AF74           
CODE_29AF67:        CMP #$6A                  
CODE_29AF69:        BEQ CODE_29AF74           
CODE_29AF6B:        CMP #$EB                  
CODE_29AF6D:        BEQ CODE_29AF74           
CODE_29AF6F:        LDA #$0C                  
CODE_29AF71:        STA $1200                 
CODE_29AF74:        INC $20                   
CODE_29AF76:        LDA $20                   
CODE_29AF78:        CMP #$07                  
CODE_29AF7A:        BEQ CODE_29AF80           
CODE_29AF7C:        CMP #$0A                  
CODE_29AF7E:        BNE CODE_29AF45           
CODE_29AF80:        STZ $20                   
CODE_29AF82:        LDA $7E3995               
CODE_29AF86:        BEQ CODE_29AF91           
CODE_29AF88:        LDA #$04                  
CODE_29AF8A:        STA $20                   
CODE_29AF8C:        LDY $A5                   
CODE_29AF8E:        JMP CODE_29B0F6           

CODE_29AF91:        LDY $0726                 
CODE_29AF94:        LDA #$7E                  
CODE_29AF96:        STA $30                   
CODE_29AF98:        LDA $0045,y               
CODE_29AF9B:        ASL A                     
CODE_29AF9C:        TAX                       
CODE_29AF9D:        LDA $8200,x               
CODE_29AFA0:        CLC                       
CODE_29AFA1:        ADC #$F0                  
CODE_29AFA3:        STA $2E                   
CODE_29AFA5:        LDA $8201,x               
CODE_29AFA8:        ADC #$00                  
CODE_29AFAA:        STA $2F                   
CODE_29AFAC:        LDA $0047,y               
CODE_29AFAF:        LSR A                     
CODE_29AFB0:        LSR A                     
CODE_29AFB1:        LSR A                     
CODE_29AFB2:        LSR A                     
CODE_29AFB3:        ORA $0043,y               
CODE_29AFB6:        TAY                       
CODE_29AFB7:        LDA [$2E],y               
CODE_29AFB9:        PHA                       
CODE_29AFBA:        AND #$C0                  
CODE_29AFBC:        LSR A                     
CODE_29AFBD:        LSR A                     
CODE_29AFBE:        LSR A                     
CODE_29AFBF:        LSR A                     
CODE_29AFC0:        LSR A                     
CODE_29AFC1:        TAX                       
CODE_29AFC2:        LDA $0726                 
CODE_29AFC5:        BEQ CODE_29AFC8           
CODE_29AFC7:        INX                       
CODE_29AFC8:        PLA                       
CODE_29AFC9:        CMP #$67                  
CODE_29AFCB:        BEQ CODE_29AFD1           
CODE_29AFCD:        CMP #$6A                  
CODE_29AFCF:        BNE CODE_29AFD8           
CODE_29AFD1:        LDA #$16                  
CODE_29AFD3:        STA $1203                 
CODE_29AFD6:        LDX #$08                  
CODE_29AFD8:        CMP #$EB                  
CODE_29AFDA:        BNE CODE_29AFE3           
CODE_29AFDC:        LDA #$16                  
CODE_29AFDE:        STA $1203                 
CODE_29AFE1:        LDX #$09                  
CODE_29AFE3:        LDA $E5C2,x               
CODE_29AFE6:        STA [$2E],y               
CODE_29AFE8:        STA $B3                   
CODE_29AFEA:        JSR CODE_29BC69           
CODE_29AFED:        LDY $0726                 
CODE_29AFF0:        LDX $47,y                 
CODE_29AFF2:        LDA $0043,y               
CODE_29AFF5:        SEC                       
CODE_29AFF6:        SBC #$10                  
CODE_29AFF8:        JSL CODE_20973C           
CODE_29AFFC:        LDX $1600                 
CODE_29AFFF:        LDY $0726                 
CODE_29B002:        LDA $0045,y               
CODE_29B005:        AND #$01                  
CODE_29B007:        ASL A                     
CODE_29B008:        ASL A                     
CODE_29B009:        ORA $0E                   
CODE_29B00B:        STA $1602,x               
CODE_29B00E:        STA $160A,x               
CODE_29B011:        LDA $0F                   
CODE_29B013:        STA $1603,x               
CODE_29B016:        CLC                       
CODE_29B017:        ADC #$20                  
CODE_29B019:        STA $160B,x               
CODE_29B01C:        STZ $1604,x               
CODE_29B01F:        STZ $160C,x               
CODE_29B022:        LDA #$03                  
CODE_29B024:        STA $1605,x               
CODE_29B027:        STA $160D,x               
CODE_29B02A:        LDY #$10                  
CODE_29B02C:        LDA $B3                   
CODE_29B02E:        CMP #$60                  
CODE_29B030:        BEQ CODE_29B041           
CODE_29B032:        LDY #$18                  
CODE_29B034:        CMP #$E3                  
CODE_29B036:        BEQ CODE_29B041           
CODE_29B038:        LDY #$00                  
CODE_29B03A:        LDX $0726                 
CODE_29B03D:        BEQ CODE_29B041           
CODE_29B03F:        LDY #$08                  
CODE_29B041:        REP #$20                  
CODE_29B043:        LDX $1600                 
CODE_29B046:        LDA $E5D2,y               
CODE_29B049:        STA $1606,x               
CODE_29B04C:        LDA $E5D4,y               
CODE_29B04F:        STA $160E,x               
CODE_29B052:        LDA $E5D6,y               
CODE_29B055:        STA $1608,x               
CODE_29B058:        LDA $E5D8,y               
CODE_29B05B:        STA $1610,x               
CODE_29B05E:        SEP #$20                  
CODE_29B060:        LDA #$FF                  
CODE_29B062:        STA $1612,x               
CODE_29B065:        LDA $1600                 
CODE_29B068:        CLC                       
CODE_29B069:        ADC #$10                  
CODE_29B06B:        STA $1600                 
CODE_29B06E:        JMP CODE_29B0AB           

CODE_29B071:        LDX $0726                 
CODE_29B074:        LDA $43,x                 
CODE_29B076:        STA $00                   
CODE_29B078:        LDA $47,x                 
CODE_29B07A:        STA $01                   
CODE_29B07C:        LDY $20                   
CODE_29B07E:        CPY #$05                  
CODE_29B080:        BCC CODE_29B0A4           
CODE_29B082:        LDA $00                   
CODE_29B084:        STA $0861                 
CODE_29B087:        DEY                       
CODE_29B088:        LDA $E5B8,y               
CODE_29B08B:        STA $0862                 
CODE_29B08E:        LDA #$27                  
CODE_29B090:        STA $0863                 
CODE_29B093:        LDA $01                   
CODE_29B095:        SEC                       
CODE_29B096:        SBC $0210                 
CODE_29B099:        STA $0860                 
CODE_29B09C:        LDA #$02                  
CODE_29B09E:        STA $0A38                 
CODE_29B0A1:        JMP CODE_29B107           

CODE_29B0A4:        JSL CODE_29B11F           
CODE_29B0A8:        JMP CODE_29B11A           

CODE_29B0AB:        LDA $7E3972               
CODE_29B0AF:        BNE CODE_29B0A1           
CODE_29B0B1:        LDY #$0D                  
CODE_29B0B3:        LDX $0726                 
CODE_29B0B6:        LDA $1F17,y               
CODE_29B0B9:        BEQ CODE_29B0D4           
CODE_29B0BB:        LDA $1EED,y               
CODE_29B0BE:        STA $00                   
CODE_29B0C0:        CMP $43,x                 
CODE_29B0C2:        BNE CODE_29B0D4           
CODE_29B0C4:        LDA $1F09,y               
CODE_29B0C7:        CMP $45,x                 
CODE_29B0C9:        BNE CODE_29B0D4           
CODE_29B0CB:        LDA $1EFB,y               
CODE_29B0CE:        STA $01                   
CODE_29B0D0:        CMP $47,x                 
CODE_29B0D2:        BEQ CODE_29B0D9           
CODE_29B0D4:        DEY                       
CODE_29B0D5:        BPL CODE_29B0B6           
CODE_29B0D7:        BRA CODE_29B107           

CODE_29B0D9:        STY $A5                   
CODE_29B0DB:        LDA $1F17,y               
CODE_29B0DE:        CMP #$02                  
CODE_29B0E0:        BNE CODE_29B0E7           
CODE_29B0E2:        INC $0729                 
CODE_29B0E5:        BRA CODE_29B11A           

CODE_29B0E7:        LDA $20                   
CODE_29B0E9:        BNE CODE_29B0F0           
CODE_29B0EB:        LDA #$0C                  
CODE_29B0ED:        STA $1200                 
CODE_29B0F0:        LDA $15                   
CODE_29B0F2:        AND #$03                  
CODE_29B0F4:        BNE CODE_29B0A4           
CODE_29B0F6:        INC $20                   
CODE_29B0F8:        LDA $20                   
CODE_29B0FA:        CMP #$05                  
CODE_29B0FC:        BNE CODE_29B0A4           
CODE_29B0FE:        LDA #$00                  
CODE_29B100:        STA $1F17,y               
CODE_29B103:        STZ $20                   
CODE_29B105:        STZ $A5                   
CODE_29B107:        LDA $20                   
CODE_29B109:        BNE CODE_29B11A           
CODE_29B10B:        LDA #$00                  
CODE_29B10D:        STA $7E3972               
CODE_29B111:        STA $7E3995               
CODE_29B115:        LDA #$08                  
CODE_29B117:        STA $0729                 
CODE_29B11A:        JSL CODE_29B7AE           
CODE_29B11E:        RTL                       

CODE_29B11F:        LDA $00                   
CODE_29B121:        SEC                       
CODE_29B122:        SBC #$08                  
CODE_29B124:        STA $0861                 
CODE_29B127:        STA $0865                 
CODE_29B12A:        CLC                       
CODE_29B12B:        ADC #$10                  
CODE_29B12D:        STA $0869                 
CODE_29B130:        STA $086D                 
CODE_29B133:        LDA $01                   
CODE_29B135:        SEC                       
CODE_29B136:        SBC $0210                 
CODE_29B139:        SEC                       
CODE_29B13A:        SBC #$08                  
CODE_29B13C:        STA $0860                 
CODE_29B13F:        STA $0868                 
CODE_29B142:        CLC                       
CODE_29B143:        ADC #$10                  
CODE_29B145:        STA $0864                 
CODE_29B148:        STA $086C                 
CODE_29B14B:        LDA #$27                  
CODE_29B14D:        STA $0863                 
CODE_29B150:        LDA #$67                  
CODE_29B152:        STA $0867                 
CODE_29B155:        LDA #$A7                  
CODE_29B157:        STA $086B                 
CODE_29B15A:        LDA #$E7                  
CODE_29B15C:        STA $086F                 
CODE_29B15F:        LDX $20                   
CODE_29B161:        LDA $E5B8,x               
CODE_29B164:        STA $0862                 
CODE_29B167:        STA $0866                 
CODE_29B16A:        STA $086A                 
CODE_29B16D:        STA $086E                 
CODE_29B170:        LDA #$02                  
CODE_29B172:        STA $0A38                 
CODE_29B175:        STA $0A39                 
CODE_29B178:        STA $0A3A                 
CODE_29B17B:        STA $0A3B                 
CODE_29B17E:        RTL                       

CODE_29B17F:        LDA #$03                  
CODE_29B181:        STA $0F                   
CODE_29B183:        LDY $0F                   
CODE_29B185:        LDX #$0D                  
CODE_29B187:        LDA $E5F7,y               
CODE_29B18A:        CMP $1F17,x               
CODE_29B18D:        BEQ CODE_29B195           
CODE_29B18F:        DEX                       
CODE_29B190:        BPL CODE_29B18A           
CODE_29B192:        JSR CODE_29B1A1           
CODE_29B195:        DEC $0F                   
CODE_29B197:        BPL CODE_29B183           
CODE_29B199:        INC $0729                 
CODE_29B19C:        JSL CODE_238C1B           
CODE_29B1A0:        RTL                       

CODE_29B1A1:        LDA $0F                   
CODE_29B1A3:        JSL CODE_20FB1F           

PNTR_29B1A7:        dw CODE_29B1AF
                    dw CODE_29B22C
                    dw CODE_29B279
                    dw CODE_29B2AF

CODE_29B1AF:        LDA $0727
CODE_29B1B2:        CMP #$07                  
CODE_29B1B4:        BEQ CODE_29B22B           
CODE_29B1B6:        LDX $0726                 
CODE_29B1B9:        LDA $0715                 
CODE_29B1BC:        CMP $7E3967               
CODE_29B1C0:        BCC CODE_29B22B           
CODE_29B1C2:        BEQ CODE_29B1C7           
CODE_29B1C4:        JMP CODE_29B1DE           

CODE_29B1C7:        LDA $0716                 
CODE_29B1CA:        CMP $7E3968               
CODE_29B1CE:        BCC CODE_29B22B           
CODE_29B1D0:        BEQ CODE_29B1D5           
CODE_29B1D2:        JMP CODE_29B1DE           

CODE_29B1D5:        LDA $0717                 
CODE_29B1D8:        CMP $7E3969               
CODE_29B1DC:        BCC CODE_29B22B           
CODE_29B1DE:        JSR CODE_29B2ED           
CODE_29B1E1:        LDA $7E396A               
CODE_29B1E5:        STA $1EED,y               
CODE_29B1E8:        STA $0500,y               
CODE_29B1EB:        LDA $7E396B               
CODE_29B1EF:        STA $1F09,y               
CODE_29B1F2:        STA $051E,y               
CODE_29B1F5:        LDA $7E396C               
CODE_29B1F9:        STA $1EFB,y               
CODE_29B1FC:        STA $050F,y               
CODE_29B1FF:        LDX $0F                   
CODE_29B201:        LDA $E5F7,x               
CODE_29B204:        STA $1F17,y               
CODE_29B207:        LDA $7E3969               
CODE_29B20B:        CLC                       
CODE_29B20C:        ADC #$40                  
CODE_29B20E:        STA $7E3969               
CODE_29B212:        LDA $7E3968               
CODE_29B216:        ADC #$1F                  
CODE_29B218:        STA $7E3968               
CODE_29B21C:        LDA $7E3967               
CODE_29B220:        ADC #$00                  
CODE_29B222:        STA $7E3967               
CODE_29B226:        LDA #$15                  
CODE_29B228:        STA $1203                 
CODE_29B22B:        RTS                       

CODE_29B22C:        LDA $7E3970               ; If white mushroom house has been spawned already
CODE_29B230:        BNE CODE_29B278           ; skip
CODE_29B232:        LDA $7E3964               ; Skip if the level doesn't have a white mushroom house
CODE_29B236:        CMP #$01                  ;
CODE_29B238:        BNE CODE_29B278           
CODE_29B23A:        LDA $7E3966               ; compare the amount of collected coins within the level
CODE_29B23E:        CMP $7E3965               ; with the amount of coins required to spawn the white house
CODE_29B242:        BCC CODE_29B278           
CODE_29B244:        JSR CODE_29B2ED           
CODE_29B247:        LDA #$0A                  
CODE_29B249:        STA $1F17,y               
CODE_29B24C:        LDA $7E396A               
CODE_29B250:        STA $1EED,y               
CODE_29B253:        STA $0500,y               
CODE_29B256:        LDA $7E396B               
CODE_29B25A:        STA $1F09,y               
CODE_29B25D:        STA $051E,y               
CODE_29B260:        LDA $7E396C               
CODE_29B264:        STA $1EFB,y               
CODE_29B267:        STA $050F,y               
CODE_29B26A:        LDA $7E3970               
CODE_29B26E:        INC A                     
CODE_29B26F:        STA $7E3970               
CODE_29B273:        LDA #$15                  
CODE_29B275:        STA $1203                 
CODE_29B278:        RTS                       

CODE_29B279:        LDA $7E3971               
CODE_29B27D:        BNE CODE_29B2AE           
CODE_29B27F:        LDA $1F48                 
CODE_29B282:        CMP $1F49                 
CODE_29B285:        BNE CODE_29B2AE           
CODE_29B287:        CMP $1F51                 
CODE_29B28A:        BNE CODE_29B2AE           
CODE_29B28C:        LDY #$00                  
CODE_29B28E:        LDA $1F17,y               
CODE_29B291:        CMP #$03                  
CODE_29B293:        BEQ CODE_29B29B           
CODE_29B295:        INY                       
CODE_29B296:        CPY #$0E                  
CODE_29B298:        BNE CODE_29B28E           
CODE_29B29A:        RTS                       

CODE_29B29B:        LDA #$0B                  
CODE_29B29D:        STA $1F17,y               
CODE_29B2A0:        LDA $7E3971               
CODE_29B2A4:        INC A                     
CODE_29B2A5:        STA $7E3971               
CODE_29B2A9:        LDA #$15                  
CODE_29B2AB:        STA $1203                 
CODE_29B2AE:        RTS                       

CODE_29B2AF:        LDA $7E3964               
CODE_29B2B3:        CMP #$02                  
CODE_29B2B5:        BNE CODE_29B2EC           
CODE_29B2B7:        LDA $7E3966               
CODE_29B2BB:        CMP $7E3965               
CODE_29B2BF:        BCC CODE_29B2EC           
CODE_29B2C1:        JSR CODE_29B2ED           
CODE_29B2C4:        LDA #$0C                  
CODE_29B2C6:        STA $1F17,y               
CODE_29B2C9:        LDA $E5FB                 
CODE_29B2CC:        STA $1EED,y               
CODE_29B2CF:        STA $0500,y               
CODE_29B2D2:        LDA $E5FC                 
CODE_29B2D5:        PHA                       
CODE_29B2D6:        AND #$0F                  
CODE_29B2D8:        STA $1F09,y               
CODE_29B2DB:        STA $051E,y               
CODE_29B2DE:        PLA                       
CODE_29B2DF:        AND #$F0                  
CODE_29B2E1:        STA $1EFB,y               
CODE_29B2E4:        STA $050F,y               
CODE_29B2E7:        LDA #$15                  
CODE_29B2E9:        STA $1203                 
CODE_29B2EC:        RTS                       

CODE_29B2ED:        LDY #$02                  
CODE_29B2EF:        LDA $1F17,y               
CODE_29B2F2:        BEQ CODE_29B2F8           
CODE_29B2F4:        INY                       
CODE_29B2F5:        JMP CODE_29B2EF           

CODE_29B2F8:        RTS                       

CODE_29B2F9:        LDA $7E396D               
CODE_29B2FD:        BNE CODE_29B331           
CODE_29B2FF:        LDY #$0D                  
CODE_29B301:        STY $0C                   
CODE_29B303:        LDA $0729                 
CODE_29B306:        CMP #$0B                  
CODE_29B308:        BNE CODE_29B323           
CODE_29B30A:        LDA $0596                 
CODE_29B30D:        BNE CODE_29B323           
CODE_29B30F:        LDA $1F17,y               
CODE_29B312:        BEQ CODE_29B31B           
CODE_29B314:        TAX                       
CODE_29B315:        LDA $E5FD,x               
CODE_29B318:        STA $053C,y               
CODE_29B31B:        DEY                       
CODE_29B31C:        CPY #$01                  
CODE_29B31E:        BNE CODE_29B30F           
CODE_29B320:        INC $0596                 
CODE_29B323:        LDX $0C                   
CODE_29B325:        LDA $1F17,x               
CODE_29B328:        BEQ CODE_29B32D           
CODE_29B32A:        JSR CODE_29B332           
CODE_29B32D:        DEC $0C                   
CODE_29B32F:        BPL CODE_29B323           
CODE_29B331:        RTS                       

CODE_29B332:        JSR CODE_29BCBE           
CODE_29B335:        LDA $1F17,x               
CODE_29B338:        CMP #$10                  
CODE_29B33A:        BCS CODE_29B348                   
CODE_29B33C:        LDY $0729                 
CODE_29B33F:        CPY #$0B                  
CODE_29B341:        BNE CODE_29B348           
CODE_29B343:        LDY $053C,x               
CODE_29B346:        BEQ CODE_29B331           
CODE_29B348:        JSL CODE_20FB1F           

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

CODE_29B36E:        LDA $0729
CODE_29B371:        CMP #$0D
CODE_29B373:        BNE CODE_29B3C4
CODE_29B375:        LDA $1F17,x               
CODE_29B378:        CMP #$09                  
CODE_29B37A:        BCC CODE_29B380           
CODE_29B37C:        CMP #$0D                  
CODE_29B37E:        BCC CODE_29B385           
CODE_29B380:        LDA $1F55                 
CODE_29B383:        BNE CODE_29B3C3           
CODE_29B385:        TXA                       
CODE_29B386:        AND #$01                  
CODE_29B388:        STA $0F                   
CODE_29B38A:        LDA $053C                 
CODE_29B38D:        AND #$10                  
CODE_29B38F:        LSR A                     
CODE_29B390:        LSR A                     
CODE_29B391:        LSR A                     
CODE_29B392:        LSR A                     
CODE_29B393:        STA $052D,x               
CODE_29B396:        LDA $0F                   
CODE_29B398:        BEQ CODE_29B3A0           
CODE_29B39A:        EOR $052D,x               
CODE_29B39D:        STA $052D,x               
CODE_29B3A0:        LDA $0F                   
CODE_29B3A2:        ASL A                     
CODE_29B3A3:        ASL A                     
CODE_29B3A4:        ASL A                     
CODE_29B3A5:        ASL A                     
CODE_29B3A6:        STA $0F                   
CODE_29B3A8:        LDA $053C                 
CODE_29B3AB:        AND #$1F                  
CODE_29B3AD:        EOR $0F                   
CODE_29B3AF:        TAY                       
CODE_29B3B0:        LDA $1EFB,x               
CODE_29B3B3:        CLC                       
CODE_29B3B4:        ADC $E61D,y               
CODE_29B3B7:        STA $050F,x               
CODE_29B3BA:        LDA $051E,x               
CODE_29B3BD:        ADC $E63D,y               
CODE_29B3C0:        STA $051E,x               
CODE_29B3C3:        RTS                       

CODE_29B3C4:        CMP #$0B                  
CODE_29B3C6:        BNE CODE_29B3C3           
CODE_29B3C8:        LDA $1F55                 
CODE_29B3CB:        BNE CODE_29B438           
CODE_29B3CD:        LDY $0C                   
CODE_29B3CF:        LDX #$01                  
CODE_29B3D1:        LDA $43,x                 
CODE_29B3D3:        CMP $0500,y               
CODE_29B3D6:        BNE CODE_29B3EC           
CODE_29B3D8:        LDA $45,x                 
CODE_29B3DA:        CMP $051E,y               
CODE_29B3DD:        BNE CODE_29B3EC           
CODE_29B3DF:        LDA $47,x                 
CODE_29B3E1:        CMP $050F,y               
CODE_29B3E4:        BNE CODE_29B3EC           
CODE_29B3E6:        LDA #$00                  
CODE_29B3E8:        STA $053C,y               
CODE_29B3EB:        RTS                       

CODE_29B3EC:        DEX                       
CODE_29B3ED:        BPL CODE_29B3D1           
CODE_29B3EF:        LDA $053C,y               
CODE_29B3F2:        AND #$1F                  
CODE_29B3F4:        BNE CODE_29B3FE           
CODE_29B3F6:        LDA $0783,y               
CODE_29B3F9:        AND #$03                  
CODE_29B3FB:        JSR CODE_29B6DA           
CODE_29B3FE:        LDY $0C                   
CODE_29B400:        LDA $1F17,y               
CODE_29B403:        BEQ CODE_29B438           
CODE_29B405:        CMP #$03                  
CODE_29B407:        BCC CODE_29B418           
CODE_29B409:        CMP #$07                  
CODE_29B40B:        BCS CODE_29B418                   
CODE_29B40D:        LDA $15                   
CODE_29B40F:        AND #$0F                  
CODE_29B411:        BNE CODE_29B418           
CODE_29B413:        LDA #$36                  
CODE_29B415:        STA $1200                 
CODE_29B418:        LDX $052D,y               
CODE_29B41B:        LDA $0500,y               
CODE_29B41E:        CLC                       
CODE_29B41F:        ADC $E611,x               
CODE_29B422:        STA $0500,y               
CODE_29B425:        LDA $050F,y               
CODE_29B428:        CLC                       
CODE_29B429:        ADC $E615,x               
CODE_29B42C:        STA $050F,y               
CODE_29B42F:        LDA $051E,y               
CODE_29B432:        ADC $E619,x               
CODE_29B435:        STA $051E,y               
CODE_29B438:        LDX $0C                   
CODE_29B43A:        JSR CODE_29B6CD           
CODE_29B43D:        DEC $053C,x               
CODE_29B440:        BNE CODE_29B476           
CODE_29B442:        LDA $1F55                 
CODE_29B445:        BNE CODE_29B476           
CODE_29B447:        LDY #$0D                  
CODE_29B449:        CPY $0C                   
CODE_29B44B:        BEQ CODE_29B473           
CODE_29B44D:        LDA $1F17,y               
CODE_29B450:        BEQ CODE_29B473           
CODE_29B452:        CMP #$10                  
CODE_29B454:        BCS CODE_29B473                   
CODE_29B456:        LDA $053C,y               
CODE_29B459:        BNE CODE_29B473           
CODE_29B45B:        LDA $0500,y               
CODE_29B45E:        CMP $0500,x               
CODE_29B461:        BNE CODE_29B473           
CODE_29B463:        LDA $051E,y               
CODE_29B466:        CMP $051E,x               
CODE_29B469:        BNE CODE_29B473           
CODE_29B46B:        LDA $050F,y               
CODE_29B46E:        CMP $050F,x               
CODE_29B471:        BEQ CODE_29B477           
CODE_29B473:        DEY                       
CODE_29B474:        BNE CODE_29B449           
CODE_29B476:        RTS                       

CODE_29B477:        LDA #$20                  
CODE_29B479:        STA $053C,x               
CODE_29B47C:        CPY #$01                  
CODE_29B47E:        BEQ CODE_29B485           
CODE_29B480:        LDA #$20                  
CODE_29B482:        STA $053C,y               
CODE_29B485:        RTS                       

CODE_29B486:        LDA $0729                 
CODE_29B489:        CMP #$0B                  
CODE_29B48B:        BNE CODE_29B485           
CODE_29B48D:        JMP CODE_29B438           

CODE_29B490:        LDA $0729                 
CODE_29B493:        CMP #$0D                  
CODE_29B495:        BNE CODE_29B4BC           
CODE_29B497:        LDA #$00                  
CODE_29B499:        STA $0E                   
CODE_29B49B:        LDY $0726                 
CODE_29B49E:        LDA $0045,y               
CODE_29B4A1:        CMP $051F                 
CODE_29B4A4:        BEQ CODE_29B4AA           
CODE_29B4A6:        BCS CODE_29B4B6                   
CODE_29B4A8:        BCC CODE_29B4B2           
CODE_29B4AA:        LDA $0047,y               
CODE_29B4AD:        CMP $0510                 
CODE_29B4B0:        BCS CODE_29B4B6                   
CODE_29B4B2:        LDA #$01                  
CODE_29B4B4:        STA $0E                   
CODE_29B4B6:        LDA $0E                   
CODE_29B4B8:        STA $052E                 
CODE_29B4BB:        RTS                       

CODE_29B4BC:        LDA $0743                 
CODE_29B4BF:        ASL A                     
CODE_29B4C0:        TAY                       
CODE_29B4C1:        LDA $E65D,y               
CODE_29B4C4:        STA $00                   
CODE_29B4C6:        LDA $E65E,y               
CODE_29B4C9:        STA $01                   
CODE_29B4CB:        LDA $E68D,y               
CODE_29B4CE:        STA $02                   
CODE_29B4D0:        LDA $E68E,y               
CODE_29B4D3:        STA $03                   
CODE_29B4D5:        LDA $0729                 
CODE_29B4D8:        CMP #$04                  
CODE_29B4DA:        BNE CODE_29B512           
CODE_29B4DC:        LDA $7E396F               
CODE_29B4E0:        BEQ CODE_29B4E5           
CODE_29B4E2:        JMP CODE_29B626           

CODE_29B4E5:        LDA #$00                  
CODE_29B4E7:        STA $053D                 
CODE_29B4EA:        LDY $1F2F                 
CODE_29B4ED:        CPY #$06                  
CODE_29B4EF:        BCS CODE_29B50D                   
CODE_29B4F1:        LDA ($00),y               
CODE_29B4F3:        STA $0501                 
CODE_29B4F6:        STA $1EEE                 
CODE_29B4F9:        LDA ($02),y               
CODE_29B4FB:        PHA                       
CODE_29B4FC:        AND #$0F                  
CODE_29B4FE:        STA $051F                 
CODE_29B501:        STA $1F0A                 
CODE_29B504:        PLA                       
CODE_29B505:        AND #$F0                  
CODE_29B507:        STA $0510                 
CODE_29B50A:        STA $1EFC                 
CODE_29B50D:        LDX #$01                  
CODE_29B50F:        JMP CODE_29B6CD           

CODE_29B512:        LDA $053D                 
CODE_29B515:        BEQ CODE_29B4BB           
CODE_29B517:        LDA $9D                   
CODE_29B519:        BEQ CODE_29B51E           
CODE_29B51B:        JMP CODE_29B626           

CODE_29B51E:        LDY $1F2F                 
CODE_29B521:        CPY #$06                  
CODE_29B523:        BCC CODE_29B528           
CODE_29B525:        JMP CODE_29B58F           

CODE_29B528:        LDA $051F                 
CODE_29B52B:        ORA $0510                 
CODE_29B52E:        CMP ($02),y               
CODE_29B530:        BNE CODE_29B539           
CODE_29B532:        LDA $0501                 
CODE_29B535:        CMP ($00),y               
CODE_29B537:        BEQ CODE_29B589           
CODE_29B539:        LDA ($00),y               
CODE_29B53B:        STA $04                   
CODE_29B53D:        LDA ($02),y               
CODE_29B53F:        AND #$0F                  
CODE_29B541:        STA $06                   
CODE_29B543:        LDA ($02),y               
CODE_29B545:        AND #$F0                  
CODE_29B547:        STA $05                   
CODE_29B549:        LDA $04                   
CODE_29B54B:        SEC                       
CODE_29B54C:        SBC #$20                  
CODE_29B54E:        STA $04                   
CODE_29B550:        LDA $05                   
CODE_29B552:        SEC                       
CODE_29B553:        SBC #$20                  
CODE_29B555:        STA $05                   
CODE_29B557:        LDA $06                   
CODE_29B559:        SBC #$00                  
CODE_29B55B:        STA $06                   
CODE_29B55D:        LDX $072B                 
CODE_29B560:        DEX                       
CODE_29B561:        LDA $7E397D,x             
CODE_29B565:        SEC                       
CODE_29B566:        SBC $04                   
CODE_29B568:        CMP #$41                  
CODE_29B56A:        BCS CODE_29B583                   
CODE_29B56C:        LDA $7E3981,x             
CODE_29B570:        SEC                       
CODE_29B571:        SBC $05                   
CODE_29B573:        STA $05                   
CODE_29B575:        LDA $7E397F,x             
CODE_29B579:        SBC $06                   
CODE_29B57B:        BNE CODE_29B583           
CODE_29B57D:        LDA $05                   
CODE_29B57F:        CMP #$41                  
CODE_29B581:        BCC CODE_29B589           
CODE_29B583:        DEX                       
CODE_29B584:        BPL CODE_29B561           
CODE_29B586:        JMP CODE_29B597           

CODE_29B589:        INC $1F2F                 
CODE_29B58C:        JMP CODE_29B51E           

CODE_29B58F:        LDX $0C                   
CODE_29B591:        LDA #$00                  
CODE_29B593:        STA $053D                 
CODE_29B596:        RTS                       

CODE_29B597:        LDX $0C                   
CODE_29B599:        LDY $1F2F                 
CODE_29B59C:        LDA #$00                  
CODE_29B59E:        STA $052E                 
CODE_29B5A1:        STA $A4                   
CODE_29B5A3:        LDA ($00),y               
CODE_29B5A5:        SEC                       
CODE_29B5A6:        SBC $0501                 
CODE_29B5A9:        STA $9E                   
CODE_29B5AB:        LDA ($02),y               
CODE_29B5AD:        AND #$F0                  
CODE_29B5AF:        SEC                       
CODE_29B5B0:        SBC $0510                 
CODE_29B5B3:        STA $A2                   
CODE_29B5B5:        LDA ($02),y               
CODE_29B5B7:        AND #$0F                  
CODE_29B5B9:        SBC $051F                 
CODE_29B5BC:        STA $A1                   
CODE_29B5BE:        LDA ($02),y               
CODE_29B5C0:        AND #$0F                  
CODE_29B5C2:        CMP $051F                 
CODE_29B5C5:        BEQ CODE_29B5CB           
CODE_29B5C7:        BPL CODE_29B5EB           
CODE_29B5C9:        BMI CODE_29B5D4           
CODE_29B5CB:        LDA ($02),y               
CODE_29B5CD:        AND #$F0                  
CODE_29B5CF:        CMP $0510                 
CODE_29B5D2:        BCS CODE_29B5EB                   
CODE_29B5D4:        LDA #$01                  
CODE_29B5D6:        STA $A4                   
CODE_29B5D8:        LDA #$FF                  
CODE_29B5DA:        EOR $A1                   
CODE_29B5DC:        STA $A1                   
CODE_29B5DE:        LDA #$FF                  
CODE_29B5E0:        EOR $A2                   
CODE_29B5E2:        STA $A2                   
CODE_29B5E4:        INC $A2                   
CODE_29B5E6:        LDA #$01                  
CODE_29B5E8:        STA $052E                 
CODE_29B5EB:        LDA ($00),y               
CODE_29B5ED:        CMP $0501                 
CODE_29B5F0:        BCS CODE_29B600                   
CODE_29B5F2:        LDA #$FF                  
CODE_29B5F4:        EOR $9E                   
CODE_29B5F6:        STA $9E                   
CODE_29B5F8:        INC $9E                   
CODE_29B5FA:        LDA $A4                   
CODE_29B5FC:        ORA #$02                  
CODE_29B5FE:        STA $A4                   
CODE_29B600:        LDY #$04                  
CODE_29B602:        CLC                       
CODE_29B603:        LSR $9E                   
CODE_29B605:        ROR $9F                   
CODE_29B607:        CLC                       
CODE_29B608:        LSR $A1                   
CODE_29B60A:        ROR $A2                   
CODE_29B60C:        ROR $A3                   
CODE_29B60E:        DEY                       
CODE_29B60F:        BPL CODE_29B602           
CODE_29B611:        LDA $A2                   
CODE_29B613:        STA $A1                   
CODE_29B615:        LDA $A3                   
CODE_29B617:        STA $A2                   
CODE_29B619:        LDA #$00                  
CODE_29B61B:        STA $A3                   
CODE_29B61D:        LDA #$01                  
CODE_29B61F:        STA $9D                   
CODE_29B621:        LDA #$20                  
CODE_29B623:        STA $0711                 
CODE_29B626:        LDA $0711                 
CODE_29B629:        BEQ CODE_29B630           
CODE_29B62B:        JSL CODE_23878D           
CODE_29B62F:        RTS                       

CODE_29B630:        LDA $7E396F               
CODE_29B634:        BEQ CODE_29B641           
CODE_29B636:        LDA #$00                  
CODE_29B638:        STA $053D                 
CODE_29B63B:        STA $1F2F                 
CODE_29B63E:        JMP CODE_29B6CD           

CODE_29B641:        LDA #$47                  
CODE_29B643:        STA $1203                 
CODE_29B646:        LDX #$01                  
CODE_29B648:        LDA $15                   
CODE_29B64A:        AND #$03                  
CODE_29B64C:        BEQ CODE_29B651           
CODE_29B64E:        JMP CODE_29B6CD           

CODE_29B651:        LDA $A4                   
CODE_29B653:        AND #$01                  
CODE_29B655:        BNE CODE_29B671           
CODE_29B657:        LDA $A3                   
CODE_29B659:        CLC                       
CODE_29B65A:        ADC $A2                   
CODE_29B65C:        STA $A3                   
CODE_29B65E:        LDA $0510                 
CODE_29B661:        ADC $A1                   
CODE_29B663:        STA $0510                 
CODE_29B666:        LDA $051F                 
CODE_29B669:        ADC #$00                  
CODE_29B66B:        STA $051F                 
CODE_29B66E:        JMP CODE_29B688           

CODE_29B671:        LDA $A3                   
CODE_29B673:        SEC                       
CODE_29B674:        SBC $A2                   
CODE_29B676:        STA $A3                   
CODE_29B678:        LDA $0510                 
CODE_29B67B:        SBC $A1                   
CODE_29B67D:        STA $0510                 
CODE_29B680:        LDA $051F                 
CODE_29B683:        SBC #$00                  
CODE_29B685:        STA $051F                 
CODE_29B688:        LDA $A4                   
CODE_29B68A:        AND #$02                  
CODE_29B68C:        BNE CODE_29B6A0           
CODE_29B68E:        LDA $A0                   
CODE_29B690:        CLC                       
CODE_29B691:        ADC $9F                   
CODE_29B693:        STA $A0                   
CODE_29B695:        LDA $0501                 
CODE_29B698:        ADC $9E                   
CODE_29B69A:        STA $0501                 
CODE_29B69D:        JMP CODE_29B6AF           

CODE_29B6A0:        LDA $A0                   
CODE_29B6A2:        SEC                       
CODE_29B6A3:        SBC $9F                   
CODE_29B6A5:        STA $A0                   
CODE_29B6A7:        LDA $0501                 
CODE_29B6AA:        SBC $9E                   
CODE_29B6AC:        STA $0501                 
CODE_29B6AF:        LDX #$01                  
CODE_29B6B1:        DEC $053D                 
CODE_29B6B4:        BNE CODE_29B6CD           
CODE_29B6B6:        LDA $0501                 
CODE_29B6B9:        STA $1EEE                 
CODE_29B6BC:        LDA $051F                 
CODE_29B6BF:        STA $1F0A                 
CODE_29B6C2:        LDA $0510                 
CODE_29B6C5:        STA $1EFC                 
CODE_29B6C8:        LDX #$01                  
CODE_29B6CA:        INC $1F2F                 
CODE_29B6CD:        LDA $050F,x               
CODE_29B6D0:        STA $1EFB,x               
CODE_29B6D3:        LDA $051E,x               
CODE_29B6D6:        STA $1F09,x               
CODE_29B6D9:        RTS                       

CODE_29B6DA:        STA $00                   
CODE_29B6DC:        LDA #$04                  
CODE_29B6DE:        STA $01                   
CODE_29B6E0:        LDY $0C                   
CODE_29B6E2:        DEC $00                   
CODE_29B6E4:        LDA $0783,y               
CODE_29B6E7:        ASL A                     
CODE_29B6E8:        BCC CODE_29B6EE           
CODE_29B6EA:        INC $00                   
CODE_29B6EC:        INC $00                   
CODE_29B6EE:        LDA $00                   
CODE_29B6F0:        AND #$03                  
CODE_29B6F2:        STA $00                   
CODE_29B6F4:        EOR $052D,y               
CODE_29B6F7:        CMP #$01                  
CODE_29B6F9:        BEQ CODE_29B6E0           
CODE_29B6FB:        DEC $01                   
CODE_29B6FD:        BPL CODE_29B707           
CODE_29B6FF:        LDA #$00                  
CODE_29B701:        STA $053C,y               
CODE_29B704:        PLA                       
CODE_29B705:        PLA                       
CODE_29B706:        RTS                       

CODE_29B707:        BNE CODE_29B710           
CODE_29B709:        LDA $052D,y               
CODE_29B70C:        EOR #$01                  
CODE_29B70E:        STA $00                   
CODE_29B710:        LDX $00                   
CODE_29B712:        JSR CODE_29B778           
CODE_29B715:        LDA $00                   
CODE_29B717:        ASL A                     
CODE_29B718:        TAX                       
CODE_29B719:        LDA $8DBC,x               
CODE_29B71C:        STA $0E                   
CODE_29B71E:        LDA $8DBD,x               
CODE_29B721:        STA $0F                   
CODE_29B723:        LDY $02                   
CODE_29B725:        LDA [$2E],y               
CODE_29B727:        LDY #$08                  
CODE_29B729:        CMP ($0E),y               
CODE_29B72B:        BEQ CODE_29B732           
CODE_29B72D:        DEY                       
CODE_29B72E:        BPL CODE_29B729           
CODE_29B730:        BMI CODE_29B6E0           
CODE_29B732:        LDY $0C                   
CODE_29B734:        LDA $00                   
CODE_29B736:        CLC                       
CODE_29B737:        ADC #$04                  
CODE_29B739:        TAX                       
CODE_29B73A:        JSR CODE_29B778           
CODE_29B73D:        LDY $02                   
CODE_29B73F:        LDA [$2E],y               
CODE_29B741:        LDY #$11                  
CODE_29B743:        CMP $E7FC,y               
CODE_29B746:        BNE CODE_29B74B           
CODE_29B748:        JMP CODE_29B6E0           

CODE_29B74B:        DEY                       
CODE_29B74C:        BNE CODE_29B743           
CODE_29B74E:        LDX $0C                   
CODE_29B750:        LDY #$04                  
CODE_29B752:        CMP $E80D,y               
CODE_29B755:        BEQ CODE_29B767           
CODE_29B757:        DEY                       
CODE_29B758:        BNE CODE_29B752           
CODE_29B75A:        PHA                       
CODE_29B75B:        ASL A                     
CODE_29B75C:        ROL A                     
CODE_29B75D:        ROL A                     
CODE_29B75E:        AND #$03                  
CODE_29B760:        TAY                       
CODE_29B761:        PLA                       
CODE_29B762:        CMP $1E9A,y               
CODE_29B765:        BCC CODE_29B772           
CODE_29B767:        LDA #$20                  
CODE_29B769:        CMP $053C,x               
CODE_29B76C:        BNE CODE_29B772           
CODE_29B76E:        ASL A                     
CODE_29B76F:        STA $053C,x               
CODE_29B772:        LDA $00                   
CODE_29B774:        STA $052D,x               
CODE_29B777:        RTS                       

CODE_29B778:        LDA $0500,y               
CODE_29B77B:        CLC                       
CODE_29B77C:        ADC $E7E5,x               
CODE_29B77F:        STA $02                   
CODE_29B781:        LDA $050F,y               
CODE_29B784:        CLC                       
CODE_29B785:        ADC $E7ED,x               
CODE_29B788:        STA $03                   
CODE_29B78A:        LDA $051E,y               
CODE_29B78D:        ADC $E7F5,x               
CODE_29B790:        ASL A                     
CODE_29B791:        TAX                       
CODE_29B792:        LDA.l DATA_218200,x             
CODE_29B796:        CLC                       
CODE_29B797:        ADC #$F0                  
CODE_29B799:        STA $2E                   
CODE_29B79B:        LDA.l DATA_218200+1,x             
CODE_29B79F:        ADC #$00                  
CODE_29B7A1:        STA $2F                   
CODE_29B7A3:        LDA $03                   
CODE_29B7A5:        LSR A                     
CODE_29B7A6:        LSR A                     
CODE_29B7A7:        LSR A                     
CODE_29B7A8:        LSR A                     
CODE_29B7A9:        ORA $02                   
CODE_29B7AB:        STA $02                   
CODE_29B7AD:        RTS                       

CODE_29B7AE:        JSR CODE_29B2F9           
CODE_29B7B1:        JSR CODE_29BD33           
CODE_29B7B4:        LDA #$0D                  
CODE_29B7B6:        STA $0C                   
CODE_29B7B8:        INC $1F25                 
CODE_29B7BB:        LDA $1F25                 
CODE_29B7BE:        CMP #$0B                  
CODE_29B7C0:        BCC CODE_29B7C5           
CODE_29B7C2:        STZ $1F25                 
CODE_29B7C5:        STZ $05                   
CODE_29B7C7:        LDY $0C                   
CODE_29B7C9:        BEQ CODE_29B7DD           
CODE_29B7CB:        DEY                       
CODE_29B7CC:        TYA                       
CODE_29B7CD:        CLC                       
CODE_29B7CE:        ADC $1F25                 
CODE_29B7D1:        CMP #$0B                  
CODE_29B7D3:        BCC CODE_29B7D7           
CODE_29B7D5:        SBC #$0B                  
CODE_29B7D7:        TAX                       
CODE_29B7D8:        LDA $E872,x               
CODE_29B7DB:        STA $05                   
CODE_29B7DD:        LDX $0C                   
CODE_29B7DF:        LDA $0587,x               
CODE_29B7E2:        BEQ CODE_29B7E7           
CODE_29B7E4:        JSR CODE_29B7FC           
CODE_29B7E7:        DEC $0C                   
CODE_29B7E9:        BPL CODE_29B7C5           
CODE_29B7EB:        LDA $0729                 
CODE_29B7EE:        CMP #$0D                  
CODE_29B7F0:        BNE CODE_29B7FB           
CODE_29B7F2:        LDA $15                   
CODE_29B7F4:        AND #$03                  
CODE_29B7F6:        BNE CODE_29B7FB           
CODE_29B7F8:        INC $053C                 
CODE_29B7FB:        RTL                       

CODE_29B7FC:        LDA $1F17,x               
CODE_29B7FF:        CPX $A5                   
CODE_29B801:        BNE CODE_29B808           
CODE_29B803:        CPX #$00                  
CODE_29B805:        BEQ CODE_29B808           
CODE_29B807:        RTS                       

CODE_29B808:        JSL CODE_20FB1F           

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

CODE_29B82E:        LDA #$00                  
CODE_29B830:        LDY $1F17,x               
CODE_29B833:        CPY #$10                  
CODE_29B835:        BNE CODE_29B840           
CODE_29B837:        LDY $0500,x               
CODE_29B83A:        CPY #$F0                  
CODE_29B83C:        BEQ CODE_29B840           
CODE_29B83E:        LDA #$07                  
CODE_29B840:        LDY $05                   
CODE_29B842:        CLC                       
CODE_29B843:        ADC $0500,x               
CODE_29B846:        STA $0899,y               
CODE_29B849:        LDA $050F,x               
CODE_29B84C:        SEC                       
CODE_29B84D:        SBC $0210                 
CODE_29B850:        STA $0898,y               
CODE_29B853:        LDX $0C                   
CODE_29B855:        LDA $1F17,x               
CODE_29B858:        STA $07                   
CODE_29B85A:        LDX #$08                  
CODE_29B85C:        CMP #$10                  
CODE_29B85E:        BCS CODE_29B879                   
CODE_29B860:        CMP #$01                  
CODE_29B862:        BNE CODE_29B869           
CODE_29B864:        LDX #$30                  
CODE_29B866:        JMP CODE_29B879           

CODE_29B869:        LDA $0729                 
CODE_29B86C:        CMP #$0B                  
CODE_29B86E:        BNE CODE_29B879           
CODE_29B870:        LDY $0C                   
CODE_29B872:        LDA $053C,y               
CODE_29B875:        BEQ CODE_29B879           
CODE_29B877:        LDX #$04                  
CODE_29B879:        STX $08                   
CODE_29B87B:        LDA $07                   
CODE_29B87D:        ASL A                     
CODE_29B87E:        CLC                       
CODE_29B87F:        ADC $07                   
CODE_29B881:        TAX                       
CODE_29B882:        CPX #$09                  
CODE_29B884:        BCC CODE_29B897           
CODE_29B886:        CPX #$30                  
CODE_29B888:        BEQ CODE_29B897           
CODE_29B88A:        CPX #$27                  
CODE_29B88C:        BCC CODE_29B892           
CODE_29B88E:        CPX #$30                  
CODE_29B890:        BCC CODE_29B897           
CODE_29B892:        LDA $1F55                 
CODE_29B895:        BNE CODE_29B89F           
CODE_29B897:        INX                       
CODE_29B898:        LDA $15                   
CODE_29B89A:        AND $08                   
CODE_29B89C:        BEQ CODE_29B89F           
CODE_29B89E:        INX                       
CODE_29B89F:        LDY $05                   
CODE_29B8A1:        LDA $E80F,x               
CODE_29B8A4:        STA $089A,y               
CODE_29B8A7:        LDA $E83F,x               
CODE_29B8AA:        STA $089B,y               
CODE_29B8AD:        TYA                       
CODE_29B8AE:        LSR A                     
CODE_29B8AF:        LSR A                     
CODE_29B8B0:        TAX                       
CODE_29B8B1:        LDA #$02                  
CODE_29B8B3:        STA $0A46,x               
CODE_29B8B6:        LDX $0C                   
CODE_29B8B8:        LDA $1F17,x               
CODE_29B8BB:        CMP #$01                  
CODE_29B8BD:        BEQ CODE_29B8C3           
CODE_29B8BF:        CMP #$10                  
CODE_29B8C1:        BCC CODE_29B8C4           
CODE_29B8C3:        RTS                       

CODE_29B8C4:        CMP #$07                  
CODE_29B8C6:        BEQ CODE_29B8DD           
CODE_29B8C8:        CMP #$09                  
CODE_29B8CA:        BCC CODE_29B8D0           
CODE_29B8CC:        CMP #$0D                  
CODE_29B8CE:        BCC CODE_29B8DD           
CODE_29B8D0:        LDA $052D,x               
CODE_29B8D3:        BNE CODE_29B8DD           
CODE_29B8D5:        LDA $089B,y               
CODE_29B8D8:        EOR #$40                  
CODE_29B8DA:        STA $089B,y               
CODE_29B8DD:        LDY $0C                   
CODE_29B8DF:        LDA $1F17,y               
CODE_29B8E2:        CMP #$02                  
CODE_29B8E4:        BEQ CODE_29B8F3           
CODE_29B8E6:        CMP #$09                  
CODE_29B8E8:        BCC CODE_29B8EE           
CODE_29B8EA:        CMP #$10                  
CODE_29B8EC:        BCC CODE_29B8F3           
CODE_29B8EE:        LDA $1F55                 
CODE_29B8F1:        BNE CODE_29B953           
CODE_29B8F3:        LDA $0417                 
CODE_29B8F6:        BNE CODE_29B953           
CODE_29B8F8:        LDA $0710                 
CODE_29B8FB:        BNE CODE_29B953           
CODE_29B8FD:        LDA $0729                 
CODE_29B900:        CMP #$0D                  
CODE_29B902:        BNE CODE_29B953           
CODE_29B904:        LDX $0726                 
CODE_29B907:        LDA $1EED,y               
CODE_29B90A:        CMP $43,x                 
CODE_29B90C:        BNE CODE_29B953           
CODE_29B90E:        LDA $1F09,y               
CODE_29B911:        CMP $45,x                 
CODE_29B913:        BNE CODE_29B953           
CODE_29B915:        LDA $1EFB,y               
CODE_29B918:        CMP $47,x                 
CODE_29B91A:        BNE CODE_29B953           
CODE_29B91C:        LDX $0726                 
CODE_29B91F:        LDA #$00                  
CODE_29B921:        STA $073F,x               
CODE_29B924:        STA $0728                 
CODE_29B927:        LDA $1F17,y               
CODE_29B92A:        STA $1E                   
CODE_29B92C:        CMP #$09                  
CODE_29B92E:        BEQ CODE_29B934           
CODE_29B930:        CMP #$0A                  
CODE_29B932:        BNE CODE_29B93D           
CODE_29B934:        LDA $7E396D               
CODE_29B938:        INC A                     
CODE_29B939:        STA $7E396D               
CODE_29B93D:        PHB                       
CODE_29B93E:        LDA #$7E                  
CODE_29B940:        PHA                       
CODE_29B941:        PLB                       
CODE_29B942:        LDA $3956,y               
CODE_29B945:        STA $3963                 
CODE_29B948:        PLB                       
CODE_29B949:        LDA #$0F                  
CODE_29B94B:        STA $0729                 
CODE_29B94E:        PLA                       
CODE_29B94F:        PLA                       
CODE_29B950:        JMP CODE_29B7EB           

CODE_29B953:        RTS                       

CODE_29B954:        LDX $0726                 
CODE_29B957:        LDA $4B,x                 
CODE_29B959:        EOR #$03                  
CODE_29B95B:        CMP #$03                  
CODE_29B95D:        BNE CODE_29B961           
CODE_29B95F:        EOR #$0F                  
CODE_29B961:        STA $4B,x                 
CODE_29B963:        RTS                       

CODE_29B964:        LDX $0726                 
CODE_29B967:        LDA $43,x                 
CODE_29B969:        CLC                       
CODE_29B96A:        ADC $E87E,y               
CODE_29B96D:        STA $0E                   
CODE_29B96F:        LDA $47,x                 
CODE_29B971:        CLC                       
CODE_29B972:        ADC $E886,y               
CODE_29B975:        STA $0F                   
CODE_29B977:        LDA $45,x                 
CODE_29B979:        ADC $E882,y               
CODE_29B97C:        ASL A                     
CODE_29B97D:        TAX                       
CODE_29B97E:        LDA.l DATA_218200,x             
CODE_29B982:        STA $2E                   
CODE_29B984:        LDA.l DATA_218200+1,x             
CODE_29B988:        STA $2F                   
CODE_29B98A:        INC $2F                   
CODE_29B98C:        LDA $0F                   
CODE_29B98E:        LSR A                     
CODE_29B98F:        LSR A                     
CODE_29B990:        LSR A                     
CODE_29B991:        LSR A                     
CODE_29B992:        STA $0F                   
CODE_29B994:        LDA $0E                   
CODE_29B996:        AND #$F0                  
CODE_29B998:        ORA $0F                   
CODE_29B99A:        TAY                       
CODE_29B99B:        LDA ($2E),y               
CODE_29B99D:        RTS                       

CODE_29B99E:        LDX $0738                 
CODE_29B9A1:        LDA $1DC6,x               
CODE_29B9A4:        CMP #$09                  
CODE_29B9A6:        BCC CODE_29B9C4           
CODE_29B9A8:        LDA #$01                  
CODE_29B9AA:        STA $92                   
CODE_29B9AC:        LDX $0726                 
CODE_29B9AF:        LDA $7E3991               
CODE_29B9B3:        TAY                       
CODE_29B9B4:        INY                       
CODE_29B9B5:        TYA                       
CODE_29B9B6:        ASL A                     
CODE_29B9B7:        ASL A                     
CODE_29B9B8:        ASL A                     
CODE_29B9B9:        ASL A                     
CODE_29B9BA:        ASL A                     
CODE_29B9BB:        CMP $49,x                 
CODE_29B9BD:        BEQ CODE_29B9C4           
CODE_29B9BF:        JSL CODE_238C1B           
CODE_29B9C3:        RTS                       

CODE_29B9C4:        LDA $0059                 
CODE_29B9C7:        JSL CODE_20FB1F           

PNTR_29B9CB:        dw CODE_29B9D5
                    dw CODE_29A8D7
                    dw CODE_29BA66

CODE_29B9D1:        JSR CODE_29B9C4           
CODE_29B9D4:        RTL                       

CODE_29B9D5:        LDA #$24                  
CODE_29B9D7:        STA $1203                 
CODE_29B9DA:        LDX #$07                  
CODE_29B9DC:        LDA $E88A,x               
CODE_29B9DF:        STA $8A,x                 
CODE_29B9E1:        DEX                       
CODE_29B9E2:        BPL CODE_29B9DC           
CODE_29B9E4:        LDX $92                   
CODE_29B9E6:        BNE CODE_29B9F0           
CODE_29B9E8:        LDA #$80                  
CODE_29B9EA:        STA $7F                   
CODE_29B9EC:        STA $80                   
CODE_29B9EE:        BNE CODE_29BA45           
CODE_29B9F0:        CPX #$01                  
CODE_29B9F2:        BNE CODE_29BA10           
CODE_29B9F4:        LDX $0726                 
CODE_29B9F7:        LDA $47,x                 
CODE_29B9F9:        CLC                       
CODE_29B9FA:        ADC $0210                 
CODE_29B9FD:        STA $7F                   
CODE_29B9FF:        LDA $43,x                 
CODE_29BA01:        STA $80                   
CODE_29BA03:        LDA #$86                  
CODE_29BA05:        STA $0411                 
CODE_29BA08:        LDA #$D0                  
CODE_29BA0A:        STA $0412                 
CODE_29BA0D:        JMP CODE_29BA2B           

CODE_29BA10:        LDA #$88                  
CODE_29BA12:        STA $7F                   
CODE_29BA14:        LDA #$5C                  
CODE_29BA16:        STA $80                   
CODE_29BA18:        LDX $0726                 
CODE_29BA1B:        LDA $47,x                 
CODE_29BA1D:        CLC                       
CODE_29BA1E:        ADC $0210                 
CODE_29BA21:        STA $0411                 
CODE_29BA24:        LDA $43,x                 
CODE_29BA26:        STA $0412                 
CODE_29BA29:        INC $59                   
CODE_29BA2B:        LDX $7F                   
CODE_29BA2D:        LDA $0411                 
CODE_29BA30:        JSR CODE_29BC37           
CODE_29BA33:        STA $7D                   
CODE_29BA35:        STX $03FF                 
CODE_29BA38:        LDX $80                   
CODE_29BA3A:        LDA $0412                 
CODE_29BA3D:        JSR CODE_29BC37           
CODE_29BA40:        STA $88                   
CODE_29BA42:        STX $0400                 
CODE_29BA45:        LDA #$00                  
CODE_29BA47:        STA $85                   
CODE_29BA49:        STA $87                   
CODE_29BA4B:        STA $79                   
CODE_29BA4D:        LDA #$4C                  
CODE_29BA4F:        STA $86                   
CODE_29BA51:        LDA #$09                  
CODE_29BA53:        STA $82                   
CODE_29BA55:        INC $0059                 
CODE_29BA58:        LDX $92                   
CODE_29BA5A:        CPX #$02                  
CODE_29BA5C:        BEQ CODE_29BA62           
CODE_29BA5E:        JSL CODE_238C1B           
CODE_29BA62:        RTS                       

CODE_29BA63:        JMP CODE_29BAF9           

CODE_29BA66:        LDA $87                   
CODE_29BA68:        BNE CODE_29BA7A           
CODE_29BA6A:        LDA $79                   
CODE_29BA6C:        CLC                       
CODE_29BA6D:        ADC #$04                  
CODE_29BA6F:        CMP #$5F                  
CODE_29BA71:        BCS CODE_29BA76                   
CODE_29BA73:        JMP CODE_29BAF7           

CODE_29BA76:        LDA #$01                  
CODE_29BA78:        STA $87                   
CODE_29BA7A:        LDA $92                   
CODE_29BA7C:        BEQ CODE_29BABA           
CODE_29BA7E:        LDA $7F                   
CODE_29BA80:        CMP $0411                 
CODE_29BA83:        BCS CODE_29BA91                   
CODE_29BA85:        ADC $03FF                 
CODE_29BA88:        TAX                       
CODE_29BA89:        DEC $7D                   
CODE_29BA8B:        BMI CODE_29BA9A           
CODE_29BA8D:        INX                       
CODE_29BA8E:        JMP CODE_29BA9A           

CODE_29BA91:        SBC $03FF                 
CODE_29BA94:        TAX                       
CODE_29BA95:        DEC $7D                   
CODE_29BA97:        BMI CODE_29BA9A           
CODE_29BA99:        DEX                       
CODE_29BA9A:        STX $7F                   
CODE_29BA9C:        LDA $80                   
CODE_29BA9E:        CMP $0412                 
CODE_29BAA1:        BCS CODE_29BAAF                   
CODE_29BAA3:        ADC $0400                 
CODE_29BAA6:        TAX                       
CODE_29BAA7:        DEC $88                   
CODE_29BAA9:        BMI CODE_29BAB8           
CODE_29BAAB:        INX                       
CODE_29BAAC:        JMP CODE_29BAB8           

CODE_29BAAF:        SBC $0400                 
CODE_29BAB2:        TAX                       
CODE_29BAB3:        DEC $88                   
CODE_29BAB5:        BMI CODE_29BAB8           
CODE_29BAB7:        DEX                       
CODE_29BAB8:        STX $80                   
CODE_29BABA:        LDA $79                   
CODE_29BABC:        SEC                       
CODE_29BABD:        SBC #$04                  
CODE_29BABF:        BNE CODE_29BAF7           
CODE_29BAC1:        LDA #$00                  
CODE_29BAC3:        STA $0059                 
CODE_29BAC6:        STA $87                   
CODE_29BAC8:        LDA $92                   
CODE_29BACA:        CMP #$02                  
CODE_29BACC:        BEQ CODE_29BAEC           
CODE_29BACE:        LDX $0738                 
CODE_29BAD1:        LDA $1DC6,x               
CODE_29BAD4:        CMP #$09                  
CODE_29BAD6:        BCC CODE_29BAEC           
CODE_29BAD8:        SEC                       
CODE_29BAD9:        SBC #$0A                  
CODE_29BADB:        STA $7E3991               
CODE_29BADF:        LDX $0726                 
CODE_29BAE2:        TAY                       
CODE_29BAE3:        INY                       
CODE_29BAE4:        TYA                       
CODE_29BAE5:        ASL A                     
CODE_29BAE6:        ASL A                     
CODE_29BAE7:        ASL A                     
CODE_29BAE8:        ASL A                     
CODE_29BAE9:        ASL A                     
CODE_29BAEA:        STA $49,x                 
CODE_29BAEC:        LDX $92                   
CODE_29BAEE:        CPX #$02                  
CODE_29BAF0:        BEQ CODE_29BAF6           
CODE_29BAF2:        JSL CODE_238C1B           
CODE_29BAF6:        RTS                       

CODE_29BAF7:        STA $79                   
CODE_29BAF9:        LDA $84                   
CODE_29BAFB:        CLC                       
CODE_29BAFC:        ADC #$20                  
CODE_29BAFE:        STA $84                   
CODE_29BB00:        BCC CODE_29BB0E           
CODE_29BB02:        LDA $85                   
CODE_29BB04:        EOR #$01                  
CODE_29BB06:        STA $85                   
CODE_29BB08:        TAX                       
CODE_29BB09:        LDA $E8A2,x               
CODE_29BB0C:        STA $86                   
CODE_29BB0E:        LDY #$00                  
CODE_29BB10:        LDX #$07                  
CODE_29BB12:        LDA $7E                   
CODE_29BB14:        CLC                       
CODE_29BB15:        ADC #$70                  
CODE_29BB17:        STA $7E                   
CODE_29BB19:        BCC CODE_29BB1D           
CODE_29BB1B:        LDY #$01                  
CODE_29BB1D:        STY $81                   
CODE_29BB1F:        LDA $8A,x                 
CODE_29BB21:        CLC                       
CODE_29BB22:        ADC $81                   
CODE_29BB24:        AND #$1F                  
CODE_29BB26:        STA $8A,x                 
CODE_29BB28:        JSR CODE_29BB3C           
CODE_29BB2B:        JSR CODE_29BBF3           
CODE_29BB2E:        DEX                       
CODE_29BB2F:        BPL CODE_29BB1F           
CODE_29BB31:        LDX $92                   
CODE_29BB33:        CPX #$02                  
CODE_29BB35:        BEQ CODE_29BB3B           
CODE_29BB37:        JSL CODE_238C1B           
CODE_29BB3B:        RTS                       

CODE_29BB3C:        LDA $8A,x                 
CODE_29BB3E:        AND #$0F                  
CODE_29BB40:        TAY                       
CODE_29BB41:        LDA $E892,y               
CODE_29BB44:        STA $00                   
CODE_29BB46:        LDA $79                   
CODE_29BB48:        LDY $82                   
CODE_29BB4A:        JSR CODE_29BBD4           
CODE_29BB4D:        LDA $8A,x                 
CODE_29BB4F:        AND #$18                  
CODE_29BB51:        CMP #$10                  
CODE_29BB53:        BCC CODE_29BB60           
CODE_29BB55:        LDA #$FF                  
CODE_29BB57:        STA $00                   
CODE_29BB59:        LDA $7F                   
CODE_29BB5B:        SBC $02                   
CODE_29BB5D:        JMP CODE_29BB68           

CODE_29BB60:        LDA #$01                  
CODE_29BB62:        STA $00                   
CODE_29BB64:        LDA $7F                   
CODE_29BB66:        ADC $02                   
CODE_29BB68:        STA $69,x                 
CODE_29BB6A:        STA $06                   
CODE_29BB6C:        LDA $7F                   
CODE_29BB6E:        STA $07                   
CODE_29BB70:        JSR CODE_29BC17           
CODE_29BB73:        LDA $05                   
CODE_29BB75:        BMI CODE_29BBC9           
CODE_29BB77:        LDA $69,x                 
CODE_29BB79:        CLC                       
CODE_29BB7A:        ADC #$08                  
CODE_29BB7C:        STA $09                   
CODE_29BB7E:        STA $06                   
CODE_29BB80:        JSR CODE_29BC17           
CODE_29BB83:        LDA $05                   
CODE_29BB85:        BMI CODE_29BBC9           
CODE_29BB87:        LDA $8A,x                 
CODE_29BB89:        CLC                       
CODE_29BB8A:        ADC #$08                  
CODE_29BB8C:        AND #$0F                  
CODE_29BB8E:        TAY                       
CODE_29BB8F:        LDA $E892,y               
CODE_29BB92:        STA $00                   
CODE_29BB94:        LDA $79                   
CODE_29BB96:        LDY $82                   
CODE_29BB98:        JSR CODE_29BBD4           
CODE_29BB9B:        LDA $8A,x                 
CODE_29BB9D:        SEC                       
CODE_29BB9E:        SBC #$08                  
CODE_29BBA0:        AND #$18                  
CODE_29BBA2:        CMP #$10                  
CODE_29BBA4:        BCC CODE_29BBB1           
CODE_29BBA6:        LDA #$FF                  
CODE_29BBA8:        STA $00                   
CODE_29BBAA:        LDA $80                   
CODE_29BBAC:        SBC $02                   
CODE_29BBAE:        JMP CODE_29BBB9           

CODE_29BBB1:        LDA #$01                  
CODE_29BBB3:        STA $00                   
CODE_29BBB5:        LDA $80                   
CODE_29BBB7:        ADC $02                   
CODE_29BBB9:        STA $71,x                 
CODE_29BBBB:        STA $06                   
CODE_29BBBD:        LDA $80                   
CODE_29BBBF:        STA $07                   
CODE_29BBC1:        JSR CODE_29BC17           
CODE_29BBC4:        LDA $05                   
CODE_29BBC6:        BMI CODE_29BBC9           
CODE_29BBC8:        RTS                       

CODE_29BBC9:        LDA #$F0                  
CODE_29BBCB:        STA $71,x                 
CODE_29BBCD:        LDA #$00                  
CODE_29BBCF:        STA $69,x                 
CODE_29BBD1:        STA $09                   
CODE_29BBD3:        RTS                       

CODE_29BBD4:        STA $01                   
CODE_29BBD6:        LDA #$00                  
CODE_29BBD8:        STA $02                   
CODE_29BBDA:        STA $03                   
CODE_29BBDC:        ASL $03                   
CODE_29BBDE:        ROL $02                   
CODE_29BBE0:        ASL $00                   
CODE_29BBE2:        BCC CODE_29BBEF           
CODE_29BBE4:        LDA $03                   
CODE_29BBE6:        CLC                       
CODE_29BBE7:        ADC $01                   
CODE_29BBE9:        STA $03                   
CODE_29BBEB:        BCC CODE_29BBEF           
CODE_29BBED:        INC $02                   
CODE_29BBEF:        DEY                       
CODE_29BBF0:        BNE CODE_29BBDC           
CODE_29BBF2:        RTS                       

CODE_29BBF3:        TXA                       
CODE_29BBF4:        ASL A                     
CODE_29BBF5:        ASL A                     
CODE_29BBF6:        TAY                       
CODE_29BBF7:        LDA $69,x                 
CODE_29BBF9:        STA $0898,y               
CODE_29BBFC:        LDA $71,x                 
CODE_29BBFE:        STA $0899,y               
CODE_29BC01:        LDA $86                   
CODE_29BC03:        STA $089A,y               
CODE_29BC06:        LDA #$32                  
CODE_29BC08:        STA $089B,y               
CODE_29BC0B:        PHY                       
CODE_29BC0C:        TYA                       
CODE_29BC0D:        LSR A                     
CODE_29BC0E:        LSR A                     
CODE_29BC0F:        TAY                       
CODE_29BC10:        LDA #$02                  
CODE_29BC12:        STA $0A46,y               
CODE_29BC15:        PLY                       
CODE_29BC16:        RTS                       

CODE_29BC17:        LDA $06                   
CODE_29BC19:        EOR $07                   
CODE_29BC1B:        AND #$80                  
CODE_29BC1D:        BEQ CODE_29BC2D           
CODE_29BC1F:        LDA $00                   
CODE_29BC21:        BPL CODE_29BC29           
CODE_29BC23:        LDA $06                   
CODE_29BC25:        BMI CODE_29BC32           
CODE_29BC27:        BPL CODE_29BC2D           
CODE_29BC29:        LDA $06                   
CODE_29BC2B:        BPL CODE_29BC32           
CODE_29BC2D:        LDA #$01                  
CODE_29BC2F:        STA $05                   
CODE_29BC31:        RTS                       

CODE_29BC32:        LDA #$FF                  
CODE_29BC34:        STA $05                   
CODE_29BC36:        RTS                       

CODE_29BC37:        STX $03                   
CODE_29BC39:        STA $04                   
CODE_29BC3B:        SEC                       
CODE_29BC3C:        SBC $03                   
CODE_29BC3E:        STA $00                   
CODE_29BC40:        LDA $04                   
CODE_29BC42:        CMP $03                   
CODE_29BC44:        BCS CODE_29BC4E                   
CODE_29BC46:        LDA $00                   
CODE_29BC48:        EOR #$FF                  
CODE_29BC4A:        ADC #$01                  
CODE_29BC4C:        STA $00                   
CODE_29BC4E:        LDA #$00                  
CODE_29BC50:        STA $02                   
CODE_29BC52:        LDY #$07                  
CODE_29BC54:        ASL $02                   
CODE_29BC56:        ROL $00                   
CODE_29BC58:        ROL A                     
CODE_29BC59:        BCS CODE_29BC5F                   
CODE_29BC5B:        CMP #$17                  
CODE_29BC5D:        BCC CODE_29BC63           
CODE_29BC5F:        SBC #$17                  
CODE_29BC61:        INC $02                   
CODE_29BC63:        DEY                       
CODE_29BC64:        BPL CODE_29BC54           
CODE_29BC66:        LDX $02                   
CODE_29BC68:        RTS                       

CODE_29BC69:        LDX $0726                 
CODE_29BC6C:        LDA $073F,x               
CODE_29BC6F:        BNE CODE_29BCBD           
CODE_29BC71:        LDY #$06                  
CODE_29BC73:        LDA $43,x                 
CODE_29BC75:        CMP $E8A4,y               
CODE_29BC78:        BEQ CODE_29BC7F           
CODE_29BC7A:        DEY                       
CODE_29BC7B:        BPL CODE_29BC75           
CODE_29BC7D:        LDY #$07                  
CODE_29BC7F:        STY $0C                   
CODE_29BC81:        LDA $45,x                 
CODE_29BC83:        ASL A                     
CODE_29BC84:        ASL A                     
CODE_29BC85:        ASL A                     
CODE_29BC86:        ASL A                     
CODE_29BC87:        STA $00                   
CODE_29BC89:        LDA $47,x                 
CODE_29BC8B:        LSR A                     
CODE_29BC8C:        LSR A                     
CODE_29BC8D:        LSR A                     
CODE_29BC8E:        LSR A                     
CODE_29BC8F:        ORA $00                   
CODE_29BC91:        TAY                       
CODE_29BC92:        CPX #$00                  
CODE_29BC94:        BEQ CODE_29BC9B           
CODE_29BC96:        TYA                       
CODE_29BC97:        CLC                       
CODE_29BC98:        ADC #$40                  
CODE_29BC9A:        TAY                       
CODE_29BC9B:        LDX $0C                   
CODE_29BC9D:        LDA $1D00,y               
CODE_29BCA0:        ORA $E8AB,x               
CODE_29BCA3:        STA $1D00,y               
CODE_29BCA6:        LDA $B3                   
CODE_29BCA8:        CMP #$60                  
CODE_29BCAA:        BEQ CODE_29BCB0           
CODE_29BCAC:        CMP #$E3                  
CODE_29BCAE:        BNE CODE_29BCBD           
CODE_29BCB0:        TYA                       
CODE_29BCB1:        EOR #$40                  
CODE_29BCB3:        TAY                       
CODE_29BCB4:        LDA $1D00,y               
CODE_29BCB7:        ORA $E8AB,x               
CODE_29BCBA:        STA $1D00,y               
CODE_29BCBD:        RTS                       

CODE_29BCBE:        LDY #$00                  
CODE_29BCC0:        LDA $1F09,x               
CODE_29BCC3:        ASL A                     
CODE_29BCC4:        ASL A                     
CODE_29BCC5:        ASL A                     
CODE_29BCC6:        ASL A                     
CODE_29BCC7:        STA $01                   
CODE_29BCC9:        LDA $1EFB,x               
CODE_29BCCC:        LSR A                     
CODE_29BCCD:        LSR A                     
CODE_29BCCE:        LSR A                     
CODE_29BCCF:        LSR A                     
CODE_29BCD0:        ORA $01                   
CODE_29BCD2:        STA $01                   
CODE_29BCD4:        LDA $23                   
CODE_29BCD6:        SEC                       
CODE_29BCD7:        SBC #$02                  
CODE_29BCD9:        CMP $01                   
CODE_29BCDB:        BCC CODE_29BCE5           
CODE_29BCDD:        LDA $24                   
CODE_29BCDF:        CMP $01                   
CODE_29BCE1:        BCS CODE_29BCE5                   
CODE_29BCE3:        LDY #$01                  
CODE_29BCE5:        TYA                       
CODE_29BCE6:        STA $0587,x               
CODE_29BCE9:        RTS                       

CODE_29BCEA:        LDY $0726                 
CODE_29BCED:        LDA $0597                 
CODE_29BCF0:        BEQ CODE_29BD0D           
CODE_29BCF2:        LDA $0043,y               
CODE_29BCF5:        STA $1EED,x               
CODE_29BCF8:        STA $0500,x               
CODE_29BCFB:        LDA $0047,y               
CODE_29BCFE:        STA $1EFB,x               
CODE_29BD01:        STA $050F,x               
CODE_29BD04:        LDA $0045,y               
CODE_29BD07:        STA $1F09,x               
CODE_29BD0A:        STA $051E,x               
CODE_29BD0D:        LDA $0049,y               
CODE_29BD10:        ORA $073F,y               
CODE_29BD13:        BNE CODE_29BD32           
CODE_29BD15:        LDA $0043,y               
CODE_29BD18:        CMP $0500,x               
CODE_29BD1B:        BNE CODE_29BD32           
CODE_29BD1D:        LDA $0045,y               
CODE_29BD20:        CMP $051E,x               
CODE_29BD23:        BNE CODE_29BD32           
CODE_29BD25:        LDA $0047,y               
CODE_29BD28:        CMP $050F,x               
CODE_29BD2B:        BNE CODE_29BD32           
CODE_29BD2D:        LDA #$01                  
CODE_29BD2F:        STA $0597                 
CODE_29BD32:        RTS                       

CODE_29BD33:        NOP                       
CODE_29BD34:        RTS                       

CODE_29BD35:        LDX $0727                 
CODE_29BD38:        CPX #$07                  
CODE_29BD3A:        BNE CODE_29BD4D           
CODE_29BD3C:        LDY $0726                 
CODE_29BD3F:        LDA $0045,y               
CODE_29BD42:        CMP #$03                  
CODE_29BD44:        BNE CODE_29BD4D           
CODE_29BD46:        LDA #$FF                  
CODE_29BD48:        STA $0243                 
CODE_29BD4B:        BRA CODE_29BD70           

CODE_29BD4D:        LDY $0599                 
CODE_29BD50:        DEC $059A                 
CODE_29BD53:        BPL CODE_29BD70           
CODE_29BD55:        STZ $0243                 
CODE_29BD58:        INY                       
CODE_29BD59:        TYA                       
CODE_29BD5A:        AND #$03                  
CODE_29BD5C:        STA $0599                 
CODE_29BD5F:        TAY                       
CODE_29BD60:        TXA                       
CODE_29BD61:        ASL A                     
CODE_29BD62:        ASL A                     
CODE_29BD63:        ORA $0599                 
CODE_29BD66:        TAX                       
CODE_29BD67:        LDA $E8E9,x               
CODE_29BD6A:        STA $059A                 
CODE_29BD6D:        STY $0244                 
CODE_29BD70:        LDA $0243                 
CODE_29BD73:        BMI CODE_29BDCB           
CODE_29BD75:        CMP #$08                  
CODE_29BD77:        BCC CODE_29BD7F           
CODE_29BD79:        LDA #$FF                  
CODE_29BD7B:        STA $0243                 
CODE_29BD7E:        RTL                       

CODE_29BD7F:        STZ $00                   
CODE_29BD81:        LDX $0727                 
CODE_29BD84:        CPX #$04                  
CODE_29BD86:        BNE CODE_29BD8C           
CODE_29BD88:        LDA #$04                  
CODE_29BD8A:        STA $00                   
CODE_29BD8C:        LDA $0244                 
CODE_29BD8F:        CLC                       
CODE_29BD90:        ADC $00                   
CODE_29BD92:        TAX                       
CODE_29BD93:        LDA $E90D,x               
CODE_29BD96:        STA $0242                 
CODE_29BD99:        LDA $E915,x               
CODE_29BD9C:        STA $0241                 
CODE_29BD9F:        LDA $E91D,x               
CODE_29BDA2:        STA $0240                 
CODE_29BDA5:        LDA $0243                 
CODE_29BDA8:        ASL A                     
CODE_29BDA9:        TAY                       
CODE_29BDAA:        REP #$20                  
CODE_29BDAC:        LDA #$0200                
CODE_29BDAF:        STA $02CA                 
CODE_29BDB2:        LDA $0240                 
CODE_29BDB5:        CLC                       
CODE_29BDB6:        ADC $E925,y               
CODE_29BDB9:        STA $0240                 
CODE_29BDBC:        LDA #$2000                
CODE_29BDBF:        CLC                       
CODE_29BDC0:        ADC $E935,y               
CODE_29BDC3:        STA $023E                 
CODE_29BDC6:        SEP #$20                  
CODE_29BDC8:        INC $0243                 
CODE_29BDCB:        RTL                       

PNTR_29BDCC:       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

DATA_29BE00:        db $03,$67,$BF,$E9,$03,$67,$BF,$E9

CODE_29BE08:        JSR CODE_29BE10
CODE_29BE0B:        JSL CODE_20990B
CODE_29BE0F:        RTS               

CODE_29BE10:        LDX #$00                  
CODE_29BE12:        LDA #$02                  
CODE_29BE14:        JSL CODE_2098A8           
CODE_29BE18:        JSL CODE_209844           
CODE_29BE1C:        CPX #$F0                  
CODE_29BE1E:        BNE CODE_29BE12           
CODE_29BE20:        RTS                       

CODE_29BE21:        JSR CODE_29BE10           
CODE_29BE24:        STZ $420C                 
CODE_29BE27:        LDY #$80                  
CODE_29BE29:        LDA $072B                 
CODE_29BE2C:        CMP #$02                  
CODE_29BE2E:        BEQ CODE_29BE32           
CODE_29BE30:        LDY #$40                  
CODE_29BE32:        STY $DC                   
CODE_29BE34:        LDA #$7E                  
CODE_29BE36:        STA $30                   
CODE_29BE38:        STA $DA                   
CODE_29BE3A:        LDA $0727                 
CODE_29BE3D:        ASL A                     
CODE_29BE3E:        TAY                       
CODE_29BE3F:        REP #$20                  
CODE_29BE41:        LDA $218200               
CODE_29BE45:        CLC                       
CODE_29BE46:        ADC #$0110                
CODE_29BE49:        STA $2E                   
CODE_29BE4B:        CLC                       
CODE_29BE4C:        ADC #$2000                
CODE_29BE4F:        STA $D8                   
CODE_29BE51:        PHX                       
CODE_29BE52:        TYX                       
CODE_29BE53:        LDA $2AE256,x             
CODE_29BE57:        STA $00                   
CODE_29BE59:        PLX                       
CODE_29BE5A:        SEP #$20                  
CODE_29BE5C:        LDA #$2A                  
CODE_29BE5E:        STA $02                   
CODE_29BE60:        LDY #$00                  
CODE_29BE62:        LDA [$00],y               
CODE_29BE64:        CMP #$FF                  
CODE_29BE66:        BEQ CODE_29BE99           
CODE_29BE68:        CMP #$03                  
CODE_29BE6A:        BCS CODE_29BE79                   
CODE_29BE6C:        PHA                       
CODE_29BE6D:        LDA $0727                 
CODE_29BE70:        CMP #$07                  
CODE_29BE72:        BNE CODE_29BE78           
CODE_29BE74:        LDA #$01                  
CODE_29BE76:        STA [$D8],y               
CODE_29BE78:        PLA                       
CODE_29BE79:        STA [$2E],y               
CODE_29BE7B:        INY                       
CODE_29BE7C:        CPY #$90                  
CODE_29BE7E:        BNE CODE_29BE62           
CODE_29BE80:        REP #$20                  
CODE_29BE82:        TYA                       
CODE_29BE83:        AND #$00FF                
CODE_29BE86:        CLC                       
CODE_29BE87:        ADC $00                   
CODE_29BE89:        STA $00                   
CODE_29BE8B:        LDA $2E                   
CODE_29BE8D:        CLC                       
CODE_29BE8E:        ADC #$01B0                
CODE_29BE91:        STA $2E                   
CODE_29BE93:        STA $D8                   
CODE_29BE95:        SEP #$20                  
CODE_29BE97:        BRA CODE_29BE60           

CODE_29BE99:        LDX #$E0                  
CODE_29BE9B:        LDY $0727                 
CODE_29BE9E:        LDA $D7AD,y               
CODE_29BEA1:        JSL CODE_2098A8           
CODE_29BEA5:        INX                       
CODE_29BEA6:        CPX #$F0                  
CODE_29BEA8:        BNE CODE_29BEA1           
CODE_29BEAA:        LDA $D776,y               
CODE_29BEAD:        STA $073B                 
CODE_29BEB0:        LDA $D77F,y               
CODE_29BEB3:        STA $073C                 
CODE_29BEB6:        STZ $00                   
CODE_29BEB8:        LDA #$80                  
CODE_29BEBA:        STA $01                   
CODE_29BEBC:        LDY $00                   
CODE_29BEBE:        LDA $1D00,y               
CODE_29BEC1:        AND $01                   
CODE_29BEC3:        BNE CODE_29BEC8           
CODE_29BEC5:        JMP CODE_29BF71           

CODE_29BEC8:        TYA                       
CODE_29BEC9:        AND #$30                  
CODE_29BECB:        LSR A                     
CODE_29BECC:        LSR A                     
CODE_29BECD:        LSR A                     
CODE_29BECE:        TAX                       
CODE_29BECF:        LDA #$7E                  
CODE_29BED1:        STA $30                   
CODE_29BED3:        LDA.l DATA_218200,x             
CODE_29BED7:        STA $2E                   
CODE_29BED9:        LDA.l DATA_218200+1,x             
CODE_29BEDD:        INC A                     
CODE_29BEDE:        STA $2F                   
CODE_29BEE0:        LDX #$07                  
CODE_29BEE2:        LDA $01                   
CODE_29BEE4:        CMP $D788,x               
CODE_29BEE7:        BEQ CODE_29BEEC           
CODE_29BEE9:        DEX                       
CODE_29BEEA:        BNE CODE_29BEE2           
CODE_29BEEC:        TXA                       
CODE_29BEED:        ASL A                     
CODE_29BEEE:        ASL A                     
CODE_29BEEF:        ASL A                     
CODE_29BEF0:        ASL A                     
CODE_29BEF1:        CLC                       
CODE_29BEF2:        ADC #$10                  
CODE_29BEF4:        STA $02                   
CODE_29BEF6:        TYA                       
CODE_29BEF7:        AND #$0F                  
CODE_29BEF9:        ORA $02                   
CODE_29BEFB:        TAY                       
CODE_29BEFC:        LDA [$2E],y               
CODE_29BEFE:        STY $04                   
CODE_29BF00:        STA $B3                   
CODE_29BF02:        AND #$C0                  
CODE_29BF04:        CLC                       
CODE_29BF05:        ROL A                     
CODE_29BF06:        ROL A                     
CODE_29BF07:        ROL A                     
CODE_29BF08:        TAX                       
CODE_29BF09:        LDY #$04                  
CODE_29BF0B:        LDA $B3                   
CODE_29BF0D:        CMP $D7A0,y               
CODE_29BF10:        BEQ CODE_29BF48           
CODE_29BF12:        DEY                       
CODE_29BF13:        BPL CODE_29BF0D           
CODE_29BF15:        CMP #$67                  
CODE_29BF17:        BEQ CODE_29BF23           
CODE_29BF19:        CMP #$EB                  
CODE_29BF1B:        BEQ CODE_29BF23           
CODE_29BF1D:        CMP.l DATA_29BE00,x             
CODE_29BF21:        BCS CODE_29BF48                   
CODE_29BF23:        LDX #$07                  
CODE_29BF25:        CMP $D790,x               
CODE_29BF28:        BEQ CODE_29BF2F           
CODE_29BF2A:        DEX                       
CODE_29BF2B:        BPL CODE_29BF25           
CODE_29BF2D:        BMI CODE_29BF34           
CODE_29BF2F:        LDA $D798,x               
CODE_29BF32:        BRA CODE_29BF59           

CODE_29BF34:        LDA $01                   
CODE_29BF36:        CMP #$01                  
CODE_29BF38:        BNE CODE_29BF71           
CODE_29BF3A:        LDY $04                   
CODE_29BF3C:        CPY #$90                  
CODE_29BF3E:        BCS CODE_29BF71                   
CODE_29BF40:        TYA                       
CODE_29BF41:        CLC                       
CODE_29BF42:        ADC #$10                  
CODE_29BF44:        TAY                       
CODE_29BF45:        JMP CODE_29BEFC           

CODE_29BF48:        TXA                       
CODE_29BF49:        ASL A                     
CODE_29BF4A:        STA $03                   
CODE_29BF4C:        LDA $00                   
CODE_29BF4E:        AND #$40                  
CODE_29BF50:        BEQ CODE_29BF54           
CODE_29BF52:        INC $03                   
CODE_29BF54:        LDX $03                   
CODE_29BF56:        LDA $D7A5,x               
CODE_29BF59:        PHA                       
CODE_29BF5A:        LDA $2E                   
CODE_29BF5C:        STA $D8                   
CODE_29BF5E:        LDA $2F                   
CODE_29BF60:        CLC                       
CODE_29BF61:        ADC #$20                  
CODE_29BF63:        STA $D9                   
CODE_29BF65:        LDA [$D8],y               
CODE_29BF67:        BNE CODE_29BF70           
CODE_29BF69:        PLA                       
CODE_29BF6A:        LDY $04                   
CODE_29BF6C:        STA [$2E],y               
CODE_29BF6E:        BRA CODE_29BF71           

CODE_29BF70:        PLA                       
CODE_29BF71:        LSR $01                   
CODE_29BF73:        BEQ CODE_29BF78           
CODE_29BF75:        JMP CODE_29BEBC           

CODE_29BF78:        INC $00                   
CODE_29BF7A:        LDA $00                   
CODE_29BF7C:        CMP $DC                   
CODE_29BF7E:        BEQ CODE_29BF83           
CODE_29BF80:        JMP CODE_29BEB8           

CODE_29BF83:        RTL                       

CODE_29BF84:        LDX $0726                 
CODE_29BF87:        LDA $073D,x               
CODE_29BF8A:        BEQ CODE_29BF90           
CODE_29BF8C:        JSR CODE_29C0C7           
CODE_29BF8F:        RTL                       

CODE_29BF90:        LDA $0727                 
CODE_29BF93:        ASL A                     
CODE_29BF94:        TAY                       
CODE_29BF95:        REP #$20                  
CODE_29BF97:        LDA $D87D,y               
CODE_29BF9A:        STA $00                   
CODE_29BF9C:        LDA $D88F,y               
CODE_29BF9F:        STA $02                   
CODE_29BFA1:        LDA $D8A1,y               
CODE_29BFA4:        STA $04                   
CODE_29BFA6:        LDA $D8B3,y               
CODE_29BFA9:        STA $06                   
CODE_29BFAB:        LDA $D86B,y               
CODE_29BFAE:        STA $08                   
CODE_29BFB0:        SEP #$20                  
CODE_29BFB2:        LDY $45,x                 
CODE_29BFB4:        LDA ($08),y               
CODE_29BFB6:        TAY                       
CODE_29BFB7:        STZ $0E                   
CODE_29BFB9:        LDA ($00),y               
CODE_29BFBB:        AND #$F0                  
CODE_29BFBD:        CMP $43,x                 
CODE_29BFBF:        BEQ CODE_29BFCB           
CODE_29BFC1:        INY                       
CODE_29BFC2:        BNE CODE_29BFB9           
CODE_29BFC4:        INC $01                   
CODE_29BFC6:        INC $0E                   
CODE_29BFC8:        JMP CODE_29BFB9           

CODE_29BFCB:        LDA $03                   
CODE_29BFCD:        CLC                       
CODE_29BFCE:        ADC $0E                   
CODE_29BFD0:        STA $03                   
CODE_29BFD2:        STZ $0E                   
CODE_29BFD4:        LDA $47,x                 
CODE_29BFD6:        LSR A                     
CODE_29BFD7:        LSR A                     
CODE_29BFD8:        LSR A                     
CODE_29BFD9:        LSR A                     
CODE_29BFDA:        STA $08                   
CODE_29BFDC:        LDA $45,x                 
CODE_29BFDE:        ASL A                     
CODE_29BFDF:        ASL A                     
CODE_29BFE0:        ASL A                     
CODE_29BFE1:        ASL A                     
CODE_29BFE2:        ORA $08                   
CODE_29BFE4:        CMP ($02),y               
CODE_29BFE6:        BEQ CODE_29BFF2           
CODE_29BFE8:        INY                       
CODE_29BFE9:        BNE CODE_29BFE4           
CODE_29BFEB:        INC $03                   
CODE_29BFED:        INC $0E                   
CODE_29BFEF:        JMP CODE_29BFE4           

CODE_29BFF2:        LDA $01                   
CODE_29BFF4:        CLC                       
CODE_29BFF5:        ADC $0E                   
CODE_29BFF7:        STA $01                   
CODE_29BFF9:        LDA $0727                 
CODE_29BFFC:        CMP #$08                  
CODE_29BFFE:        BNE CODE_29C008           
CODE_29C000:        LDA ($00),y               
CODE_29C002:        AND #$0F                  
CODE_29C004:        STA $042A                 
CODE_29C007:        RTL                       

CODE_29C008:        LDA ($00),y               
CODE_29C00A:        AND #$0F                  
CODE_29C00C:        STA $070A                 
CODE_29C00F:        LDA $05                   
CODE_29C011:        CLC                       
CODE_29C012:        ADC $0E                   
CODE_29C014:        STA $05                   
CODE_29C016:        LDA $07                   
CODE_29C018:        CLC                       
CODE_29C019:        ADC $0E                   
CODE_29C01B:        STA $07                   
CODE_29C01D:        TYA                       
CODE_29C01E:        STA $0F                   
CODE_29C020:        ASL A                     
CODE_29C021:        TAY                       
CODE_29C022:        BCC CODE_29C030           
CODE_29C024:        LDA $05                   
CODE_29C026:        ADC #$00                  
CODE_29C028:        STA $05                   
CODE_29C02A:        LDA $07                   
CODE_29C02C:        ADC #$00                  
CODE_29C02E:        STA $07                   
CODE_29C030:        TYA                       
CODE_29C031:        CLC                       
CODE_29C032:        ADC $0F                   
CODE_29C034:        TAY                       
CODE_29C035:        STY $0F                   
CODE_29C037:        REP #$20                  
CODE_29C039:        LDA ($04),y               
CODE_29C03B:        STA $31                   
CODE_29C03D:        STA $023A                 
CODE_29C040:        LDA ($06),y               
CODE_29C042:        STA $2B                   
CODE_29C044:        STA $1EBB                 
CODE_29C047:        SEP #$20                  
CODE_29C049:        INY                       
CODE_29C04A:        INY                       
CODE_29C04B:        LDA ($04),y               
CODE_29C04D:        STA $33                   
CODE_29C04F:        LDA ($06),y               
CODE_29C051:        STA $2D                   
CODE_29C053:        STA $1EBD                 
CODE_29C056:        LDA $1E                   
CODE_29C058:        BNE CODE_29C06B           
CODE_29C05A:        LDA $070A                 
CODE_29C05D:        CMP #$0F                  
CODE_29C05F:        BNE CODE_29C065           
CODE_29C061:        JSR CODE_29C19E           
CODE_29C064:        RTL                       

CODE_29C065:        LDA #$03                  
CODE_29C067:        STA $0728                 
CODE_29C06A:        RTL                       

CODE_29C06B:        JSR CODE_29C06F           
CODE_29C06E:        RTL                       

CODE_29C06F:        JSL CODE_20FB1F           

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
    
CODE_29C095:        LDY $0726
CODE_29C098:        LDA #$7E                  
CODE_29C09A:        STA $30                   
CODE_29C09C:        LDA $0045,y               
CODE_29C09F:        ASL A                     
CODE_29C0A0:        TAX                       
CODE_29C0A1:        LDA.l DATA_218200,x             
CODE_29C0A5:        STA $2E                   
CODE_29C0A7:        LDA.l DATA_218200+1,x             
CODE_29C0AB:        INC A                     
CODE_29C0AC:        STA $2F                   
CODE_29C0AE:        LDA $0047,y               
CODE_29C0B1:        LSR A                     
CODE_29C0B2:        LSR A                     
CODE_29C0B3:        LSR A                     
CODE_29C0B4:        LSR A                     
CODE_29C0B5:        STA $00                   
CODE_29C0B7:        LDA $0043,y               
CODE_29C0BA:        SEC                       
CODE_29C0BB:        SBC #$10                  
CODE_29C0BD:        AND #$F0                  
CODE_29C0BF:        ORA $00                   
CODE_29C0C1:        TAY                       
CODE_29C0C2:        LDA [$2E],y               
CODE_29C0C4:        STA $B3                   
CODE_29C0C6:        RTS                       

CODE_29C0C7:        LDA $0727                 
CODE_29C0CA:        ASL A                     
CODE_29C0CB:        CLC                       
CODE_29C0CC:        ADC $0727                 
CODE_29C0CF:        TAX                       
CODE_29C0D0:        REP #$20                  
CODE_29C0D2:        LDA $D7C2,x               
CODE_29C0D5:        STA $2B                   
CODE_29C0D7:        LDA $D7DA                 
CODE_29C0DA:        STA $31                   
CODE_29C0DC:        SEP #$20                  
CODE_29C0DE:        LDA $D7C4,x               
CODE_29C0E1:        STA $2D                   
CODE_29C0E3:        LDA #$02                  
CODE_29C0E5:        STA $070A                 
CODE_29C0E8:        RTS                       

CODE_29C0E9:        LDA $0727                 
CODE_29C0EC:        ASL A                     
CODE_29C0ED:        CLC                       
CODE_29C0EE:        ADC $0727                 
CODE_29C0F1:        TAY                       
CODE_29C0F2:        REP #$20                  
CODE_29C0F4:        LDA $D7DD,y               
CODE_29C0F7:        STA $2B                   
CODE_29C0F9:        LDA $D7F5,y               
CODE_29C0FC:        STA $31                   
CODE_29C0FE:        SEP #$20                  
CODE_29C100:        LDA $D7DF,y               
CODE_29C103:        STA $2D                   
CODE_29C105:        LDA #$0A                  
CODE_29C107:        STA $070A                 
CODE_29C10A:        RTS                       

CODE_29C10B:        RTS                       

CODE_29C10C:        LDA #$0F                  
CODE_29C10E:        STA $070A                 
CODE_29C111:        LDA #$02                  
CODE_29C113:        STA $1042                 
CODE_29C116:        LDY #$00                  
CODE_29C118:        STY $1043                 
CODE_29C11B:        STY $1034                 
CODE_29C11E:        LDA $963A,y               
CODE_29C121:        STA $2B                   
CODE_29C123:        LDA $963B,y               
CODE_29C126:        STA $2C                   
CODE_29C128:        LDA #$21                  
CODE_29C12A:        STA $2D                   
CODE_29C12C:        LDA #$03                  
CODE_29C12E:        STA $0728                 
CODE_29C131:        LDA #$01                  
CODE_29C133:        STA $7E3995               
CODE_29C137:        RTS                       

CODE_29C138:        PHX                       
CODE_29C139:        LDA $0727                 
CODE_29C13C:        ASL A                     
CODE_29C13D:        TAX                       
CODE_29C13E:        CLC                       
CODE_29C13F:        ADC $0727                 
CODE_29C142:        TAY                       
CODE_29C143:        REP #$20                  
CODE_29C145:        LDA $D80D,y               
CODE_29C148:        STA $2B                   
CODE_29C14A:        LDA $D825,x               
CODE_29C14D:        STA $31                   
CODE_29C14F:        SEP #$20                  
CODE_29C151:        LDA $D80F,y               
CODE_29C154:        STA $2D                   
CODE_29C156:        LDA #$07                  
CODE_29C158:        STA $070A                 
CODE_29C15B:        PLX                       
CODE_29C15C:        LDA #$01                  
CODE_29C15E:        STA $7E3995               
CODE_29C162:        RTS                       

CODE_29C163:        LDA $0727                 
CODE_29C166:        ASL A                     
CODE_29C167:        CLC                       
CODE_29C168:        ADC $0727                 
CODE_29C16B:        TAY                       
CODE_29C16C:        REP #$20                  
CODE_29C16E:        LDA $D835,y               
CODE_29C171:        STA $2B                   
CODE_29C173:        LDA $D84D,y               
CODE_29C176:        STA $31                   
CODE_29C178:        SEP #$20                  
CODE_29C17A:        LDA $D837,y               
CODE_29C17D:        STA $2D                   
CODE_29C17F:        LDA #$0A                  
CODE_29C181:        STA $070A                 
CODE_29C184:        RTS                       

CODE_29C185:        REP #$20                  
CODE_29C187:        LDA $D865                 
CODE_29C18A:        STA $2B                   
CODE_29C18C:        LDA $D868                 
CODE_29C18F:        STA $31                   
CODE_29C191:        SEP #$20                  
CODE_29C193:        LDA $D867                 
CODE_29C196:        STA $2D                   
CODE_29C198:        LDA #$01                  
CODE_29C19A:        STA $070A                 
CODE_29C19D:        RTS                       

CODE_29C19E:        LDX $0726                 
CODE_29C1A1:        LDA $43,x                 
CODE_29C1A3:        STA $7E3975,x             
CODE_29C1A7:        LDA $45,x                 
CODE_29C1A9:        STA $7E3977,x             
CODE_29C1AD:        LDA $47,x                 
CODE_29C1AF:        STA $7E3979,x             
CODE_29C1B3:        LDA $52,x                 
CODE_29C1B5:        STA $7E397B,x             
CODE_29C1B9:        LDA #$0F                  
CODE_29C1BB:        STA $070A                 
CODE_29C1BE:        LDY $0F                   
CODE_29C1C0:        LDA ($04),y               
CODE_29C1C2:        STA $1042                 
CODE_29C1C5:        LDA ($06),y               
CODE_29C1C7:        STA $1043                 
CODE_29C1CA:        INY                       
CODE_29C1CB:        LDA ($04),y               
CODE_29C1CD:        STA $1034                 
CODE_29C1D0:        LDA ($06),y               
CODE_29C1D2:        ASL A                     
CODE_29C1D3:        CLC                       
CODE_29C1D4:        ADC ($06),y               
CODE_29C1D6:        TAY                       
CODE_29C1D7:        LDA $963A,y               
CODE_29C1DA:        STA $2B                   
CODE_29C1DC:        LDA $963B,y               
CODE_29C1DF:        STA $2C                   
CODE_29C1E1:        LDA $963C,y               
CODE_29C1E4:        STA $2D                   
CODE_29C1E6:        LDA #$03                  
CODE_29C1E8:        STA $0728                 
CODE_29C1EB:        RTS                       

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

CODE_29C280:        LDA $0711                 
CODE_29C283:        BEQ CODE_29C288           
CODE_29C285:        DEC $0711                 
CODE_29C288:        LDA $1A08                 
CODE_29C28B:        BEQ CODE_29C290           
CODE_29C28D:        DEC $1A08                 
CODE_29C290:        LDA $1A09                 
CODE_29C293:        BEQ CODE_29C29E           
CODE_29C295:        LDA $15                   
CODE_29C297:        AND #$03                  
CODE_29C299:        BNE CODE_29C29E           
CODE_29C29B:        DEC $1A09                 
CODE_29C29E:        JSL CODE_22E0A9           
CODE_29C2A2:        JSR CODE_29C2AC           
CODE_29C2A5:        JSR CODE_29C53C           
CODE_29C2A8:        JSR CODE_29C6D3           
CODE_29C2AB:        RTL                       

CODE_29C2AC:        LDA $0728                 
CODE_29C2AF:        JSL CODE_20FB1F           

PNTR_29C2B3:        dw CODE_29C2BD
                    dw CODE_29C43A
                    dw CODE_29C4BA
                    dw CODE_29C312
                    dw CODE_29C350

CODE_29C2BD:        LDA #$50
CODE_29C2BF:        STA $070B
CODE_29C2C2:        LDA #$64
CODE_29C2C4:        STA $070C
CODE_29C2C7:        LDA #$80
CODE_29C2C9:        STA $0711
CODE_29C2CC:        LDA #$00                  
CODE_29C2CE:        STA $02D4                 
CODE_29C2D1:        STA $70                   
CODE_29C2D3:        LDY #$14                  
CODE_29C2D5:        STA $19FF,y               
CODE_29C2D8:        DEY                       
CODE_29C2D9:        BNE CODE_29C2D5           
CODE_29C2DB:        LDA #$FF                  
CODE_29C2DD:        STA $55                   
CODE_29C2DF:        LDA #$70                  
CODE_29C2E1:        STA $5E                   
CODE_29C2E3:        LDA #$40                  
CODE_29C2E5:        STA $BD                   
CODE_29C2E7:        STA $1A0F                 
CODE_29C2EA:        LDY $0726                 
CODE_29C2ED:        LDA $0747,y               
CODE_29C2F0:        STA $BB                   
CODE_29C2F2:        LDA #$72                  
CODE_29C2F4:        STA $1A0C                 
CODE_29C2F7:        LDA #$1E                  
CODE_29C2F9:        STA $0711                 
CODE_29C2FC:        LDX #$00                  
CODE_29C2FE:        LDA #$F0                  
CODE_29C300:        STA $8C,x                 
CODE_29C302:        STZ $4F,x                 
CODE_29C304:        STZ $5F,x                 
CODE_29C306:        STZ $0669                 
CODE_29C309:        LDA #$17                  
CODE_29C30B:        STA $0518,x               
CODE_29C30E:        INC $0728                 
CODE_29C311:        RTS                       

CODE_29C312:        LDA $0711                 
CODE_29C315:        BEQ CODE_29C31D           
CODE_29C317:        LSR A                     
CODE_29C318:        BNE CODE_29C34F           
CODE_29C31A:        JMP CODE_29D2CE           

CODE_29C31D:        LDA $15                   
CODE_29C31F:        AND #$03                  
CODE_29C321:        BNE CODE_29C34F           
CODE_29C323:        DEC $16                   
CODE_29C325:        BNE CODE_29C34F           
CODE_29C327:        JSR CODE_29CCF8           
CODE_29C32A:        LDA #$01                  
CODE_29C32C:        STA $1500                 
CODE_29C32F:        LDA #$18                  
CODE_29C331:        STA $0216                 
CODE_29C334:        STZ $0218                 
CODE_29C337:        LDA $0208                 
CODE_29C33A:        AND #$FB                  
CODE_29C33C:        STA $0208                 
CODE_29C33F:        LDA #$61                  
CODE_29C341:        STA $0204                 
CODE_29C344:        LDA #$01                  
CODE_29C346:        STA $0542                 
CODE_29C349:        JSR CODE_29C418           
CODE_29C34C:        INC $0728                 
CODE_29C34F:        RTS                       

CODE_29C350:        LDA $0727                 
CODE_29C353:        CMP #$06                  
CODE_29C355:        BEQ CODE_29C36B           
CODE_29C357:        LDY #$18                  
CODE_29C359:        LDA $F0CC,y               
CODE_29C35C:        STA $08AF,y               
CODE_29C35F:        TYA                       
CODE_29C360:        LSR A                     
CODE_29C361:        LSR A                     
CODE_29C362:        TAX                       
CODE_29C363:        LDA #$02                  
CODE_29C365:        STA $0A4C,x               
CODE_29C368:        DEY                       
CODE_29C369:        BNE CODE_29C359           
CODE_29C36B:        LDA $16                   
CODE_29C36D:        CMP #$0F                  
CODE_29C36F:        BEQ CODE_29C395           
CODE_29C371:        LDA $15                   
CODE_29C373:        AND #$03                  
CODE_29C375:        BEQ CODE_29C37A           
CODE_29C377:        JMP CODE_29C3FA           

CODE_29C37A:        INC $16                   
CODE_29C37C:        LDA $16                   
CODE_29C37E:        CMP #$0F                  
CODE_29C380:        BNE CODE_29C3FA           
CODE_29C382:        LDY #$18                  ; Princess letter music
CODE_29C384:        LDA $0727                 
CODE_29C387:        CMP #$06                  
CODE_29C389:        BNE CODE_29C392           
CODE_29C38B:        LDA #$78                  
CODE_29C38D:        STA $0711                 
CODE_29C390:        LDY #$17                  ; Bowser letter music
CODE_29C392:        STY $1202                 
CODE_29C395:        LDA $0711                 
CODE_29C398:        BEQ CODE_29C3A5           
CODE_29C39A:        LSR A                     
CODE_29C39B:        BNE CODE_29C3A2           
CODE_29C39D:        LDA #$80                  
CODE_29C39F:        STA $1202                 
CODE_29C3A2:        JSR CODE_29C400           
CODE_29C3A5:        LDY $0726                 
CODE_29C3A8:        LDA $00F8,y               
CODE_29C3AB:        ORA $18                   
CODE_29C3AD:        AND #$80                  
CODE_29C3AF:        BEQ CODE_29C3BA           
CODE_29C3B1:        INC $14                   
CODE_29C3B3:        LDA #$00                  
CODE_29C3B5:        STA $0728                 
CODE_29C3B8:        STA $A2                   
CODE_29C3BA:        LDY #$02                  
CODE_29C3BC:        LDA $16                   
CODE_29C3BE:        CMP #$0F                  
CODE_29C3C0:        BNE CODE_29C3DE           
CODE_29C3C2:        LDA $A2                   
CODE_29C3C4:        BMI CODE_29C3DE           
CODE_29C3C6:        DEY                       
CODE_29C3C7:        LDA $15                   
CODE_29C3C9:        AND #$38                  
CODE_29C3CB:        BNE CODE_29C3D1           
CODE_29C3CD:        STY $A2                   
CODE_29C3CF:        BRA CODE_29C3DE           

CODE_29C3D1:        LSR A                     
CODE_29C3D2:        LSR A                     
CODE_29C3D3:        AND #$02                  
CODE_29C3D5:        TAY                       
CODE_29C3D6:        LDA $A2                   
CODE_29C3D8:        BEQ CODE_29C3DE           
CODE_29C3DA:        DEC $A2                   
CODE_29C3DC:        DEC $A2                   
CODE_29C3DE:        LDA $F0CA,y               
CODE_29C3E1:        STA $08B2                 
CODE_29C3E4:        LDA $15                   
CODE_29C3E6:        AND #$18                  
CODE_29C3E8:        BEQ CODE_29C3FA           
CODE_29C3EA:        LDY $68                   
CODE_29C3EC:        LDA $F0AF,y               
CODE_29C3EF:        STA $08C6                 
CODE_29C3F2:        LDA $F0BC,y               
CODE_29C3F5:        STA $08C7                 
CODE_29C3F8:        BRA CODE_29C3FF           

CODE_29C3FA:        LDA #$F0                  
CODE_29C3FC:        STA $08C5                 
CODE_29C3FF:        RTS                       

CODE_29C400:        LDA $0711                 
CODE_29C403:        AND #$02                  
CODE_29C405:        TAY                       
CODE_29C406:        LDA $F0E5,y               
CODE_29C409:        STA $1300                 
CODE_29C40C:        LDA $F0E6,y               
CODE_29C40F:        STA $1301                 
CODE_29C412:        LDA #$01                  
CODE_29C414:        STA $1500                 
CODE_29C417:        RTS                       

CODE_29C418:        LDY $0727                 
CODE_29C41B:        LDA $F0A9,y               
CODE_29C41E:        STA $68                   
CODE_29C420:        BEQ CODE_29C439           
CODE_29C422:        LDY $0726                 
CODE_29C425:        BEQ CODE_29C429           
CODE_29C427:        LDY #$23                  
CODE_29C429:        LDX #$1B                  
CODE_29C42B:        LDA $1D80,y               
CODE_29C42E:        BEQ CODE_29C434           
CODE_29C430:        INY                       
CODE_29C431:        DEX                       
CODE_29C432:        BNE CODE_29C42B           
CODE_29C434:        LDA $68                   
CODE_29C436:        STA $1D80,y               
CODE_29C439:        RTS                       

CODE_29C43A:        LDA $0711                 
CODE_29C43D:        BNE CODE_29C4B9           
CODE_29C43F:        LDX $1600                 
CODE_29C442:        LDA $070B                 
CODE_29C445:        STA $1602,x               
CODE_29C448:        LDA $070C                 
CODE_29C44B:        STA $1603,x               
CODE_29C44E:        CLC                       
CODE_29C44F:        ADC #$20                  
CODE_29C451:        STA $070C                 
CODE_29C454:        BCC CODE_29C459           
CODE_29C456:        INC $070B                 
CODE_29C459:        LDA #$00                  
CODE_29C45B:        STA $1604,x               
CODE_29C45E:        LDA #$2F                  
CODE_29C460:        STA $1605,x               
CODE_29C463:        INC A                     
CODE_29C464:        LSR A                     
CODE_29C465:        STA $00                   
CODE_29C467:        LDY $02D4                 
CODE_29C46A:        LDA $F17D,y               
CODE_29C46D:        TAY                       
CODE_29C46E:        REP #$20                  
CODE_29C470:        LDA $F0ED,y               
CODE_29C473:        STA $1606,x               
CODE_29C476:        SEP #$20                  
CODE_29C478:        INY                       
CODE_29C479:        INY                       
CODE_29C47A:        INX                       
CODE_29C47B:        INX                       
CODE_29C47C:        DEC $00                   
CODE_29C47E:        BNE CODE_29C46E           
CODE_29C480:        LDA #$FF                  
CODE_29C482:        STA $1606,x               
CODE_29C485:        INX                       
CODE_29C486:        INX                       
CODE_29C487:        INX                       
CODE_29C488:        INX                       
CODE_29C489:        STX $1600                 
CODE_29C48C:        INC $02D4                 
CODE_29C48F:        LDA $02D4                 
CODE_29C492:        CMP #$08                  
CODE_29C494:        BCC CODE_29C4B9           
CODE_29C496:        REP #$20                  
CODE_29C498:        LDA $BB                   ;\
CODE_29C49A:        AND #$00FF                ; |
CODE_29C49D:        ASL A                     ; |
CODE_29C49E:        TAY                       ; |
CODE_29C49F:        LDA $F395,y               ; | 21F395
CODE_29C4A2:        STA $02D4                 ;/ 16-bit indices to King has been restored texts, depending on the player's powerup
CODE_29C4A5:        SEP #$20                  
CODE_29C4A7:        LDA #$50                  
CODE_29C4A9:        STA $070B                 
CODE_29C4AC:        LDA #$85                  
CODE_29C4AE:        STA $070C                 
CODE_29C4B1:        LDA #$10                  
CODE_29C4B3:        STA $0711                 
CODE_29C4B6:        INC $0728                 
CODE_29C4B9:        RTS                       

CODE_29C4BA:        LDA $0711                 
CODE_29C4BD:        BEQ CODE_29C4C0           
CODE_29C4BF:        RTS                       

CODE_29C4C0:        REP #$10                  
CODE_29C4C2:        LDX $02D4                 
CODE_29C4C5:        LDA $F185,x               ;The king has been restored text
CODE_29C4C8:        STA $00                   
CODE_29C4CA:        SEP #$10                  
CODE_29C4CC:        LDY $1600                 
CODE_29C4CF:        STA $1606,y               
CODE_29C4D2:        LDA #$21                  
CODE_29C4D4:        STA $1607,y               
CODE_29C4D7:        LDA $070B                 
CODE_29C4DA:        STA $1602,y               
CODE_29C4DD:        LDA #$01                  
CODE_29C4DF:        STA $1605,y               
CODE_29C4E2:        LDA #$00                  
CODE_29C4E4:        STA $1604,y               
CODE_29C4E7:        LDA #$FF                  
CODE_29C4E9:        STA $1608,y               
CODE_29C4EC:        TYA                       
CODE_29C4ED:        CLC                       
CODE_29C4EE:        ADC #$06                  
CODE_29C4F0:        STA $1600                 
CODE_29C4F3:        LDA $070C                 
CODE_29C4F6:        STA $1603,y               
CODE_29C4F9:        REP #$20                  
CODE_29C4FB:        INC $02D4                 
CODE_29C4FE:        SEP #$20                  
CODE_29C500:        INC $070C                 
CODE_29C503:        LDA $070C                 
CODE_29C506:        AND #$1F                  
CODE_29C508:        CMP #$1B                  
CODE_29C50A:        BNE CODE_29C52E           
CODE_29C50C:        LDA $070C                 
CODE_29C50F:        ADC #$09                  
CODE_29C511:        STA $070C                 
CODE_29C514:        BCC CODE_29C519           
CODE_29C516:        INC $070B                 
CODE_29C519:        CMP #$45                  
CODE_29C51B:        BNE CODE_29C52E           
CODE_29C51D:        STZ $02D4                 
CODE_29C520:        STZ $02D5                 
CODE_29C523:        STA $68                   
CODE_29C525:        LDA #$FF                  
CODE_29C527:        STA $0711                 
CODE_29C52A:        INC $0728                 
CODE_29C52D:        RTS                       

CODE_29C52E:        LDY #$04                  
CODE_29C530:        LDA $00                   
CODE_29C532:        CMP #$FE                  
CODE_29C534:        BNE CODE_29C538           
CODE_29C536:        LDY #$01                  
CODE_29C538:        STY $0711                 
CODE_29C53B:        RTS                       

CODE_29C53C:        LDA $0216                 
CODE_29C53F:        BMI CODE_29C542           
CODE_29C541:        RTS                       

CODE_29C542:        LDX #$1C                  
CODE_29C544:        LDA $F442,x               
CODE_29C547:        STA $087F,x               
CODE_29C54A:        TXA                       
CODE_29C54B:        LSR A                     
CODE_29C54C:        LSR A                     
CODE_29C54D:        TAY                       
CODE_29C54E:        LDA #$02                  
CODE_29C550:        STA $0A40,y               
CODE_29C553:        DEX                       
CODE_29C554:        BNE CODE_29C544           
CODE_29C556:        LDX $0727                 
CODE_29C559:        LDY $F3B8,x               
CODE_29C55C:        LDA $0728                 
CODE_29C55F:        CMP #$02                  
CODE_29C561:        BNE CODE_29C56A           
CODE_29C563:        LDA $15                   
CODE_29C565:        AND #$10                  
CODE_29C567:        BEQ CODE_29C56A           
CODE_29C569:        INY                       
CODE_29C56A:        LDX #$0C                  
CODE_29C56C:        LDA $F3BF,y               
CODE_29C56F:        STA $0886,x               
CODE_29C572:        LDA $F3F7,y               
CODE_29C575:        STA $0887,x               
CODE_29C578:        INY                       
CODE_29C579:        INY                       
CODE_29C57A:        DEX                       
CODE_29C57B:        DEX                       
CODE_29C57C:        DEX                       
CODE_29C57D:        DEX                       
CODE_29C57E:        BPL CODE_29C56C           
CODE_29C580:        LDY $1A01                 
CODE_29C583:        CPY #$02                  
CODE_29C585:        BCC CODE_29C58E           
CODE_29C587:        LDA #$E0                  
CODE_29C589:        STA $0882                 
CODE_29C58C:        BRA CODE_29C5F2           

CODE_29C58E:        LDA $15                   
CODE_29C590:        AND $F43F,y               
CODE_29C593:        BNE CODE_29C5A1           
CODE_29C595:        LDA $1A02                 
CODE_29C598:        CLC                       
CODE_29C599:        ADC $F441,y               
CODE_29C59C:        AND #$07                  
CODE_29C59E:        STA $1A02                 
CODE_29C5A1:        JSR CODE_29C69A           
CODE_29C5A4:        LDA $1A0D                 
CODE_29C5A7:        LDY $1A01                 
CODE_29C5AA:        BNE CODE_29C5C1           
CODE_29C5AC:        CMP #$90                  
CODE_29C5AE:        BCC CODE_29C5D2           
CODE_29C5B0:        LDA #$38                  
CODE_29C5B2:        STA $1200                 
CODE_29C5B5:        LDA #$10                  
CODE_29C5B7:        STA $1A0E                 
CODE_29C5BA:        LDA #$B0                  
CODE_29C5BC:        STA $1A0F                 
CODE_29C5BF:        BRA CODE_29C5CF           

CODE_29C5C1:        CMP #$68                  
CODE_29C5C3:        BCC CODE_29C5D2           
CODE_29C5C5:        LDA $1A0F                 
CODE_29C5C8:        BMI CODE_29C5D2           
CODE_29C5CA:        LDA #$13                  
CODE_29C5CC:        STA $1202                 
CODE_29C5CF:        INC $1A01                 
CODE_29C5D2:        LDA $1A0D                 
CODE_29C5D5:        STA $0841                 
CODE_29C5D8:        LDY $1A02                 
CODE_29C5DB:        LDA $F42F,y               
CODE_29C5DE:        STA $0842                 
CODE_29C5E1:        LDA $F437,y               
CODE_29C5E4:        STA $0843                 
CODE_29C5E7:        LDA $1A0C                 
CODE_29C5EA:        STA $0840                 
CODE_29C5ED:        LDA #$02                  
CODE_29C5EF:        STA $0A30                 
CODE_29C5F2:        LDA $0669                 
CODE_29C5F5:        CMP #$04                  
CODE_29C5F7:        BEQ CODE_29C648           
CODE_29C5F9:        LDX #$00                  
CODE_29C5FB:        AND #$01                  
CODE_29C5FD:        BNE CODE_29C614           
CODE_29C5FF:        LDA $0518                 
CODE_29C602:        BEQ CODE_29C60B           
CODE_29C604:        DEC $0518                 
CODE_29C607:        LDX #$00                  
CODE_29C609:        BRA CODE_29C677           

CODE_29C60B:        INC $0669                 
CODE_29C60E:        LDA #$F0                  
CODE_29C610:        STA $8C,x                 
CODE_29C612:        STZ $5F,x                 
CODE_29C614:        STX $9B                   
CODE_29C616:        LDA $8C,x                 
CODE_29C618:        CLC                       
CODE_29C619:        ADC #$01                  
CODE_29C61B:        STA $8C,x                 
CODE_29C61D:        JSL CODE_27A7EF           
CODE_29C621:        LDA $5F,x                 
CODE_29C623:        BEQ CODE_29C629           
CODE_29C625:        LDX #$06                  
CODE_29C627:        BRA CODE_29C677           

CODE_29C629:        LDA $0669                 
CODE_29C62C:        CMP #$03                  
CODE_29C62E:        BEQ CODE_29C63C           
CODE_29C630:        INC $0669                 
CODE_29C633:        LDX #$00                  
CODE_29C635:        LDA #$07                  
CODE_29C637:        STA $0518                 
CODE_29C63A:        BRA CODE_29C677           

CODE_29C63C:        LDX $9B                   
CODE_29C63E:        STZ $8C,x                 
CODE_29C640:        STZ $4F,x                 
CODE_29C642:        STZ $1A03                 
CODE_29C645:        STZ $1A08                 
CODE_29C648:        LDY $1A03                 
CODE_29C64B:        LDA $1A08                 
CODE_29C64E:        BNE CODE_29C674           
CODE_29C650:        DEY                       
CODE_29C651:        BPL CODE_29C66B           
CODE_29C653:        LDA $0669                 
CODE_29C656:        CMP #$04                  
CODE_29C658:        BNE CODE_29C666           
CODE_29C65A:        STZ $0669                 
CODE_29C65D:        LDX #$00                  
CODE_29C65F:        LDA #$17                  
CODE_29C661:        STA $0518                 
CODE_29C664:        BRA CODE_29C677           

CODE_29C666:        INC $0669                 
CODE_29C669:        LDY #$07                  
CODE_29C66B:        STY $1A03                 
CODE_29C66E:        LDA $F46F,y               
CODE_29C671:        STA $1A08                 
CODE_29C674:        LDX $F467,y               
CODE_29C677:        LDY #$04                  
CODE_29C679:        LDA $F45F,x               
CODE_29C67C:        STA $0896,y               
CODE_29C67F:        INX                       
CODE_29C680:        DEY                       
CODE_29C681:        DEY                       
CODE_29C682:        DEY                       
CODE_29C683:        DEY                       
CODE_29C684:        BPL CODE_29C679           
CODE_29C686:        LDX #$00                  
CODE_29C688:        LDY #$04                  
CODE_29C68A:        LDA $0895,y               
CODE_29C68D:        CLC                       
CODE_29C68E:        ADC $5F,x                 
CODE_29C690:        STA $0895,y               
CODE_29C693:        DEY                       
CODE_29C694:        DEY                       
CODE_29C695:        DEY                       
CODE_29C696:        DEY                       
CODE_29C697:        BPL CODE_29C68A           
CODE_29C699:        RTS                       

CODE_29C69A:        LDX #$01                  
CODE_29C69C:        JSR CODE_29C6AF           
CODE_29C69F:        LDA $1A0F                 
CODE_29C6A2:        BMI CODE_29C6A8           
CODE_29C6A4:        CMP #$40                  
CODE_29C6A6:        BCS CODE_29C6AE                   
CODE_29C6A8:        INC $1A0F                 
CODE_29C6AB:        INC $1A0F                 
CODE_29C6AE:        DEX                       
CODE_29C6AF:        LDA $1A0E,x               
CODE_29C6B2:        ASL A                     
CODE_29C6B3:        ASL A                     
CODE_29C6B4:        ASL A                     
CODE_29C6B5:        ASL A                     
CODE_29C6B6:        CLC                       
CODE_29C6B7:        ADC $1A10,x               
CODE_29C6BA:        STA $1A10,x               
CODE_29C6BD:        PHP                       
CODE_29C6BE:        LDA $1A0E,x               
CODE_29C6C1:        LSR A                     
CODE_29C6C2:        LSR A                     
CODE_29C6C3:        LSR A                     
CODE_29C6C4:        LSR A                     
CODE_29C6C5:        CMP #$08                  
CODE_29C6C7:        BCC CODE_29C6CB           
CODE_29C6C9:        ORA #$F0                  
CODE_29C6CB:        PLP                       
CODE_29C6CC:        ADC $1A0C,x               
CODE_29C6CF:        STA $1A0C,x               
CODE_29C6D2:        RTS                       

CODE_29C6D3:        LDY $BB                   
CODE_29C6D5:        LDA $70                   
CODE_29C6D7:        CMP #$80                  
CODE_29C6D9:        BCC CODE_29C6DF           
CODE_29C6DB:        LDX $55                   
CODE_29C6DD:        BEQ CODE_29C6F0           
CODE_29C6DF:        CLC                       
CODE_29C6E0:        ADC #$04                  
CODE_29C6E2:        STA $70                   
CODE_29C6E4:        BCC CODE_29C6E8           
CODE_29C6E6:        INC $55                   
CODE_29C6E8:        INC $0711                 
CODE_29C6EB:        LDA $F477,y               
CODE_29C6EE:        BRA CODE_29C6F3           

CODE_29C6F0:        LDA $F47E,y               
CODE_29C6F3:        STA $BC                   
CODE_29C6F5:        JSL CODE_20E237           
CODE_29C6F9:        RTS                       

CODE_29C6FA:        LDX $0727                 
CODE_29C6FD:        LDY $F835,x               
CODE_29C700:        LDX #$06                  
CODE_29C702:        LDA #$80                  
CODE_29C704:        STA $2115                 
CODE_29C707:        LDA $F843,x               
CODE_29C70A:        STA $2116                 
CODE_29C70D:        LDA $F83C,x               
CODE_29C710:        STA $2117                 
CODE_29C713:        INY                       
CODE_29C714:        LDA $F784,y               
CODE_29C717:        BEQ CODE_29C727           
CODE_29C719:        CMP #$FF                  
CODE_29C71B:        BEQ CODE_29C72A           
CODE_29C71D:        STA $2118                 
CODE_29C720:        LDA #$14                  
CODE_29C722:        STA $2119                 
CODE_29C725:        BRA CODE_29C713           

;Routine which handles letters after the world is beaten
CODE_29C727:        DEX                       
CODE_29C728:        BPL CODE_29C707           
CODE_29C72A:        LDA $0727                 ;Current world number
CODE_29C72D:        ASL A                     
CODE_29C72E:        TAX                       
CODE_29C72F:        LDA $F485,x               ;\
CODE_29C732:        STA $00                   ; |
CODE_29C734:        LDA $F486,x               ; | Pointers to main content of the letter
CODE_29C737:        STA $01                   ;/  (stuff like things about ghosts, kuribo shoe, etc)
CODE_29C739:        LDY #$00                  
CODE_29C73B:        LDX #$05                  
CODE_29C73D:        LDA $F6DB,x               ; \
CODE_29C740:        STA $2116                 ; | set vram address low and high byte
CODE_29C743:        LDA $F6E1,x               ; |
CODE_29C746:        STA $2117                 ; /
CODE_29C749:        LDA ($00),y               
CODE_29C74B:        INY                       
CODE_29C74C:        CMP #$00                  
CODE_29C74E:        BEQ CODE_29C75E           
CODE_29C750:        CMP #$FF                  
CODE_29C752:        BEQ CODE_29C761           
CODE_29C754:        STA $2118                 
CODE_29C757:        LDA #$14                  
CODE_29C759:        STA $2119                 
CODE_29C75C:        BRA CODE_29C749           

CODE_29C75E:        DEX                       
CODE_29C75F:        BPL CODE_29C73D           
CODE_29C761:        LDA $0727                 
CODE_29C764:        CMP #$06                  
CODE_29C766:        BNE CODE_29C793           
CODE_29C768:        REP #$20                  
CODE_29C76A:        LDX #$08                  
CODE_29C76C:        LDY #$00                  
CODE_29C76E:        LDA #$11C6                
CODE_29C771:        STA $00                   
CODE_29C773:        LDA $00                   
CODE_29C775:        STA $2116                 ;
CODE_29C778:        LDA $F6E7,y               ; Layer 2 Bowser VRAM tilemap on world 7 beaten's letter
CODE_29C77B:        BMI CODE_29C784           
CODE_29C77D:        STA $2118                 
CODE_29C780:        INY                       
CODE_29C781:        INY                       
CODE_29C782:        BRA CODE_29C778           

CODE_29C784:        INY                       
CODE_29C785:        INY                       
CODE_29C786:        LDA $00                   
CODE_29C788:        CLC                       
CODE_29C789:        ADC #$0020                
CODE_29C78C:        STA $00                   
CODE_29C78E:        DEX                       
CODE_29C78F:        BNE CODE_29C773           
CODE_29C791:        SEP #$20                  
CODE_29C793:        RTL                       

CODE_29C794:        JSL CODE_29C82B           
CODE_29C798:        RTL                       

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

CODE_29C82B:        LDA #$20                  
CODE_29C82D:        STA $0205                 
CODE_29C830:        ASL A                     
CODE_29C831:        STA $0206                 
CODE_29C834:        ASL A                     
CODE_29C835:        STA $0207                 
CODE_29C838:        REP #$30                  
CODE_29C83A:        PHB                       
CODE_29C83B:        LDX #$A100                
CODE_29C83E:        LDY #$1300                
CODE_29C841:        LDA #$001F                
CODE_29C844:        MVN $3C00                 
CODE_29C847:        PLB                       
CODE_29C848:        PHB                       
CODE_29C849:        LDX #$8800                
CODE_29C84C:        LDY #$1400                
CODE_29C84F:        LDA #$009F                
CODE_29C852:        MVN $3C00                 
CODE_29C855:        PLB                       
CODE_29C856:        LDA $070A                 
CODE_29C859:        AND #$00FF                
CODE_29C85C:        ASL A                     
CODE_29C85D:        TAX                       
CODE_29C85E:        LDA.l DATA_29C799,x             
CODE_29C862:        AND #$F000                
CODE_29C865:        BEQ CODE_29C89D           
CODE_29C867:        CMP #$1000                
CODE_29C86A:        BEQ CODE_29C8A4           
CODE_29C86C:        CMP #$2000                
CODE_29C86F:        BEQ CODE_29C8A9           
CODE_29C871:        CMP #$3000                
CODE_29C874:        BEQ CODE_29C89F           
CODE_29C876:        CPX #$0004                
CODE_29C879:        BNE CODE_29C886           
CODE_29C87B:        LDA $1EBF                 
CODE_29C87E:        AND #$00FF                
CODE_29C881:        CMP #$0016                
CODE_29C884:        BEQ CODE_29C89A           
CODE_29C886:        JSR CODE_29CAA0           
CODE_29C889:        JSR CODE_29CBC0           
CODE_29C88C:        LDA $073C                 
CODE_29C88F:        AND #$0007                
CODE_29C892:        ASL A                     
CODE_29C893:        TAX                       
CODE_29C894:        LDA $3C9C60,x             
CODE_29C898:        BRA CODE_29C90E           

CODE_29C89A:        JSR CODE_29CB7E           
CODE_29C89D:        BRA CODE_29C90B           

CODE_29C89F:        JSR CODE_29CCB6           
CODE_29C8A2:        BRA CODE_29C90B           

CODE_29C8A4:        JSR CODE_29CC14           
CODE_29C8A7:        BRA CODE_29C90B           

CODE_29C8A9:        PHX                       
CODE_29C8AA:        PHB                       
CODE_29C8AB:        LDX #$A120                
CODE_29C8AE:        LDY #$1320                
CODE_29C8B1:        LDA #$00DF                
CODE_29C8B4:        MVN $3C00                 
CODE_29C8B7:        LDX #$8A60                
CODE_29C8BA:        LDY #$14C0                
CODE_29C8BD:        LDA #$001F                
CODE_29C8C0:        MVN $3C00                 
CODE_29C8C3:        PLB                       
CODE_29C8C4:        LDA $070A                 
CODE_29C8C7:        AND #$00FF                
CODE_29C8CA:        CMP #$000F                
CODE_29C8CD:        BNE CODE_29C8E5           
CODE_29C8CF:        LDA $0726                 
CODE_29C8D2:        AND #$0001                
CODE_29C8D5:        BEQ CODE_29C8E5           
CODE_29C8D7:        PHB                       
CODE_29C8D8:        LDX #$88E0                
CODE_29C8DB:        LDY #$13E0                
CODE_29C8DE:        LDA #$001F                
CODE_29C8E1:        MVN $3C00                 
CODE_29C8E4:        PLB                       
CODE_29C8E5:        PLX                       
CODE_29C8E6:        LDA.l DATA_29C799,x             
CODE_29C8EA:        AND #$000F                
CODE_29C8ED:        ASL A                     
CODE_29C8EE:        TAX                       
CODE_29C8EF:        PHX                       
CODE_29C8F0:        PHB                       
CODE_29C8F1:        LDA.l DATA_29C825,x             
CODE_29C8F5:        TAX                       
CODE_29C8F6:        LDY #$14A0                
CODE_29C8F9:        LDA #$001F                
CODE_29C8FC:        MVN $3C00                 
CODE_29C8FF:        PLB                       
CODE_29C900:        PLX                       
CODE_29C901:        LDA.l DATA_29C81F,x             
CODE_29C905:        TAX                       
CODE_29C906:        LDA $1320,x               
CODE_29C909:        BRA CODE_29C90E           

CODE_29C90B:        LDA $1380                 
CODE_29C90E:        STA $02B9                 
CODE_29C911:        STA $1300                 
CODE_29C914:        AND #$001F                
CODE_29C917:        ORA #$0020                
CODE_29C91A:        STA $D8                   
CODE_29C91C:        LDA $02B9                 
CODE_29C91F:        LSR A                     
CODE_29C920:        LSR A                     
CODE_29C921:        LSR A                     
CODE_29C922:        LSR A                     
CODE_29C923:        LSR A                     
CODE_29C924:        AND #$001F                
CODE_29C927:        ORA #$0040                
CODE_29C92A:        STA $DA                   
CODE_29C92C:        LDA $02B9                 
CODE_29C92F:        XBA                       
CODE_29C930:        LSR A                     
CODE_29C931:        LSR A                     
CODE_29C932:        AND #$001F                
CODE_29C935:        ORA #$0080                
CODE_29C938:        STA $DC                   
CODE_29C93A:        SEP #$30                  
CODE_29C93C:        STZ $1300                 
CODE_29C93F:        STZ $1301                 
CODE_29C942:        LDA $D8                   
CODE_29C944:        STA $0205                 
CODE_29C947:        LDA $DA                   
CODE_29C949:        STA $0206                 
CODE_29C94C:        LDA $DC                   
CODE_29C94E:        STA $0207                 
CODE_29C951:        LDA $0350                 
CODE_29C954:        CMP #$03                  
CODE_29C956:        BNE CODE_29C95D           
CODE_29C958:        LDA #$83                  
CODE_29C95A:        STA $0207                 
CODE_29C95D:        LDA #$01                  
CODE_29C95F:        STA $1500                 
CODE_29C962:        RTL                       

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

CODE_29CAA0:        LDA.l DATA_29C799,x             
CODE_29CAA4:        PHB                       
CODE_29CAA5:        TAX                       
CODE_29CAA6:        LDY #$1360                  
CODE_29CAA9:        LDA #$005F
CODE_29CAAB:        MVN $3C00
CODE_29CAAE:        PLB
CODE_29CAB0:        LDA $02BE
CODE_29CAB3:        AND #$00FF
CODE_29CAB6:        BEQ CODE_29CACB
CODE_29CAB8:        DEC A                     
CODE_29CAB9:        ASL A                     
CODE_29CABA:        TAX                       
CODE_29CABB:        PHB                       
CODE_29CABC:        LDA.l DATA_29C7FF,x             
CODE_29CAC0:        TAX                       
CODE_29CAC1:        LDY #$1310                  
CODE_29CAC4:        LDA #$000F
CODE_29CAC7:        MVN $3C00
CODE_29CACA:        PLB
CODE_29CACB:        LDA $070A
CODE_29CACE:        AND #$00FF
CODE_29CAD1:        ASL A
CODE_29CAD2:        TAX
CODE_29CAD3:        LDA.l DATA_29C963,x             
CODE_29CAD7:        STA $00                   
CODE_29CAD9:        LDA #$0029                
CODE_29CADC:        STA $02                  
CODE_29CADE:        LDA $073B
CODE_29CAE1:        AND #$0003
CODE_29CAE4:        ASL A                     
CODE_29CAE5:        TAY                       
CODE_29CAE6:        LDA [$00],y               
CODE_29CAE8:        PHB                       
CODE_29CAE9:        TAX                       
CODE_29CAEA:        LDA $0350                 
CODE_29CAED:        AND #$00FF                                  
CODE_29CAF0:        CMP #$000B
CODE_29CAF3:        BNE CODE_29CAF8
CODE_29CAF5:        LDX #$94C0
CODE_29CAF8:        LDY #$13C0                  
CODE_29CAFB:        LDA #$003F
CODE_29CAFE:        MVN $3C00
CODE_29CB01:        PLB
CODE_29CB02:        LDA $02C5
CODE_29CB05:        AND #$00FF                  
CODE_29CB08:        ASL A
CODE_29CB09:        TAX                       
CODE_29CB0A:        LDA.l DATA_29C9EB,x             
CODE_29CB0E:        PHB                       
CODE_29CB0F:        TAX                       
CODE_29CB10:        LDY #$1320                
CODE_29CB13:        LDA #$003F                
CODE_29CB16:        MVN $3C00                 
CODE_29CB19:        PLB                       
CODE_29CB1A:        LDA $1EBF                 
CODE_29CB1D:        AND #$00FF                
CODE_29CB20:        ASL A                     
CODE_29CB21:        TAX                       
CODE_29CB22:        LDA.l DATA_29CA1D,x             
CODE_29CB26:        AND #$00FF                
CODE_29CB29:        ASL A                     
CODE_29CB2A:        STA $D8                   
CODE_29CB2C:        LDA.l DATA_29CA1D+1,x             
CODE_29CB30:        AND #$00FF                
CODE_29CB33:        ASL A                     
CODE_29CB34:        STA $DA                   
CODE_29CB36:        LDA $0726                 
CODE_29CB39:        AND #$00FF                
CODE_29CB3C:        TAY                       
CODE_29CB3D:        LDA $073D,y               
CODE_29CB40:        AND #$00FF                
CODE_29CB43:        BEQ CODE_29CB56           
CODE_29CB45:        LDA $0727                 
CODE_29CB48:        AND #$00FF                
CODE_29CB4B:        TAX                       
CODE_29CB4C:        LDA.l DATA_29CA7D,x             
CODE_29CB50:        AND #$00FF                
CODE_29CB53:        ASL A                     
CODE_29CB54:        STA $DA                   
CODE_29CB56:        LDX $D8                   
CODE_29CB58:        LDA.l DATA_29CA84,x             
CODE_29CB5C:        TAX                       
CODE_29CB5D:        PHB                       
CODE_29CB5E:        TAX                       
CODE_29CB5F:        LDY #$14A0                
CODE_29CB62:        LDA #$001F                
CODE_29CB65:        MVN $3C00                 
CODE_29CB68:        PLB                       
CODE_29CB69:        LDX $DA                   
CODE_29CB6B:        LDA.l DATA_29CA84,x             
CODE_29CB6F:        TAX                       
CODE_29CB70:        PHB                       
CODE_29CB71:        TAX                       
CODE_29CB72:        LDY #$14C0                
CODE_29CB75:        LDA #$001F                
CODE_29CB78:        MVN $3C00                 
CODE_29CB7B:        BRL CODE_29CC7C           

CODE_29CB7E:        PHB                       
CODE_29CB7F:        LDX #$A500                
CODE_29CB82:        LDY #$1320                
CODE_29CB85:        LDA #$00DF                
CODE_29CB88:        MVN $3C00                 
CODE_29CB8B:        PLB                       
CODE_29CB8C:        LDA $1EBF                 
CODE_29CB8F:        AND #$00FF                
CODE_29CB92:        ASL A                     
CODE_29CB93:        TAX                       
CODE_29CB94:        LDA.l DATA_29CA1D,x             
CODE_29CB98:        AND #$00FF                
CODE_29CB9B:        ASL A                     
CODE_29CB9C:        STA $D8                   
CODE_29CB9E:        LDA.l DATA_29CA1D+1,x             
CODE_29CBA2:        AND #$00FF                
CODE_29CBA5:        ASL A                     
CODE_29CBA6:        STA $DA                   
CODE_29CBA8:        LDA $0727                 
CODE_29CBAB:        AND #$00FF                
CODE_29CBAE:        CMP #$0003                
CODE_29CBB1:        BEQ CODE_29CBB8           
CODE_29CBB3:        CMP #$0004                
CODE_29CBB6:        BNE CODE_29CBBD           
CODE_29CBB8:        LDA #$0016                
CODE_29CBBB:        STA $DA                   
CODE_29CBBD:        BRL CODE_29CB36           

CODE_29CBC0:        LDA $0727                 
CODE_29CBC3:        AND #$00FF                
CODE_29CBC6:        CMP #$0007                
CODE_29CBC9:        BNE CODE_29CBEE           
CODE_29CBCB:        LDA $0726                 
CODE_29CBCE:        AND #$00FF                
CODE_29CBD1:        TAX                       
CODE_29CBD2:        LDA $7E3977,x             
CODE_29CBD6:        AND #$00FF                
CODE_29CBD9:        CMP #$0003                
CODE_29CBDC:        BNE CODE_29CC13           
CODE_29CBDE:        LDA $070A                 
CODE_29CBE1:        AND #$00FF                
CODE_29CBE4:        CMP #$0002                
CODE_29CBE7:        BNE CODE_29CC13           
CODE_29CBE9:        LDA #$8A20                
CODE_29CBEC:        BRA CODE_29CC07           

CODE_29CBEE:        LDA $070A                 
CODE_29CBF1:        AND #$00FF                
CODE_29CBF4:        CMP #$000A                
CODE_29CBF7:        BNE CODE_29CC13           
CODE_29CBF9:        LDA $0727                 
CODE_29CBFC:        AND #$00FF                
CODE_29CBFF:        ASL A                     
CODE_29CC00:        TAX                       
CODE_29CC01:        LDA.l DATA_29C7D3,x             
CODE_29CC05:        BEQ CODE_29CC13           
CODE_29CC07:        PHB                       
CODE_29CC08:        TAX                       
CODE_29CC09:        LDY #$1480                
CODE_29CC0C:        LDA #$001F                
CODE_29CC0F:        MVN $3C00                 
CODE_29CC12:        PLB                       
CODE_29CC13:        RTS                       

CODE_29CC14:        PHB                       
CODE_29CC15:        LDX #$A3A0                
CODE_29CC18:        LDY #$1320                
CODE_29CC1B:        LDA #$005F                
CODE_29CC1E:        MVN $3C00                 
CODE_29CC21:        PLB                       
CODE_29CC22:        LDA $0727                 
CODE_29CC25:        AND #$00FF                
CODE_29CC28:        CMP #$0004                
CODE_29CC2B:        BNE CODE_29CC59           
CODE_29CC2D:        LDA $0726                 
CODE_29CC30:        AND #$00FF                
CODE_29CC33:        TAX                       
CODE_29CC34:        LDA $7E3977,x             
CODE_29CC38:        AND #$00FF                
CODE_29CC3B:        BEQ CODE_29CC42           
CODE_29CC3D:        LDA #$0009                
CODE_29CC40:        BRA CODE_29CC5F           

CODE_29CC42:        LDA $0726                 
CODE_29CC45:        AND #$00FF                
CODE_29CC48:        TAY                       
CODE_29CC49:        LDA $0047,y               
CODE_29CC4C:        AND #$00FF                
CODE_29CC4F:        CMP #$00E0                
CODE_29CC52:        BCC CODE_29CC59           
CODE_29CC54:        LDA #$0009                
CODE_29CC57:        BRA CODE_29CC5F           

CODE_29CC59:        LDA $0727                 
CODE_29CC5C:        AND #$00FF                
CODE_29CC5F:        ASL A                     
CODE_29CC60:        TAX                       
CODE_29CC61:        LDA.l DATA_29C7BF,x             
CODE_29CC65:        PHB                       
CODE_29CC66:        TAX                       
CODE_29CC67:        LDY #$1380                
CODE_29CC6A:        LDA #$007F                
CODE_29CC6D:        MVN $3C00                 
CODE_29CC70:        LDX #$8C00                
CODE_29CC73:        LDY #$14A0                
CODE_29CC76:        LDA #$003F                
CODE_29CC79:        MVN $3C00                 
CODE_29CC7C:        LDA $0726                 
CODE_29CC7F:        AND #$0001                
CODE_29CC82:        TAX                       
CODE_29CC83:        LDA $0747,x               
CODE_29CC86:        AND #$00FF                
CODE_29CC89:        ASL A                     
CODE_29CC8A:        STA $D8                   
CODE_29CC8C:        LDA.l DATA_29C81D,x             
CODE_29CC90:        AND #$00FF                
CODE_29CC93:        ASL A                     
CODE_29CC94:        CLC                       
CODE_29CC95:        ADC $D8                   
CODE_29CC97:        TAX                       
CODE_29CC98:        LDA.l DATA_29C7E3,x             
CODE_29CC9C:        TAX                       
CODE_29CC9D:        LDY #$14E0                
CODE_29CCA0:        LDA #$001F                
CODE_29CCA3:        MVN $3C00                 
CODE_29CCA6:        PLB                       
CODE_29CCA7:        LDX #$0020                
CODE_29CCAA:        LDA $14E0,x               
CODE_29CCAD:        STA $7FC500,x             
CODE_29CCB1:        DEX                       
CODE_29CCB2:        DEX                       
CODE_29CCB3:        BPL CODE_29CCAA           
CODE_29CCB5:        RTS                       

CODE_29CCB6:        PHB                       
CODE_29CCB7:        LDX #$A920                
CODE_29CCBA:        LDY #$1340                
CODE_29CCBD:        LDA #$001F                
CODE_29CCC0:        MVN $3C00                 
CODE_29CCC3:        LDX #$96E0                
CODE_29CCC6:        LDY #$1360                
CODE_29CCC9:        LDA #$005F                
CODE_29CCCC:        MVN $3C00                 
CODE_29CCCF:        LDX #$9780                
CODE_29CCD2:        LDY #$13C0                
CODE_29CCD5:        LDA #$003F                
CODE_29CCD8:        MVN $3C00                 
CODE_29CCDB:        LDX #$8C00                
CODE_29CCDE:        LDY #$14A0                
CODE_29CCE1:        LDA #$003F                
CODE_29CCE4:        MVN $3C00                 
CODE_29CCE7:        LDX #$88A0                
CODE_29CCEA:        LDY #$14E0                
CODE_29CCED:        LDA #$001F                
CODE_29CCF0:        MVN $3C00                 
CODE_29CCF3:        STZ $1380                 
CODE_29CCF6:        PLB                       
CODE_29CCF7:        RTS                       

CODE_29CCF8:        REP #$30                  
CODE_29CCFA:        PHB                       
CODE_29CCFB:        LDX #$8800                
CODE_29CCFE:        LDY #$1400                
CODE_29CD01:        LDA #$009F                
CODE_29CD04:        MVN $3C00                 
CODE_29CD07:        LDX #$8BE0                
CODE_29CD0A:        LDY #$14A0                
CODE_29CD0D:        LDA #$001F                
CODE_29CD10:        MVN $3C00                 
CODE_29CD13:        PLB                       
CODE_29CD14:        SEP #$30                  
CODE_29CD16:        RTS                       

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

CODE_29CD83:        LDY $0553
CODE_29CD86:        CPY #$01                  
CODE_29CD88:        BNE CODE_29CD8F           
CODE_29CD8A:        STZ $02C7                 
CODE_29CD8D:        BRA CODE_29CDB2           

CODE_29CD8F:        DEC $02C6                 
CODE_29CD92:        BPL CODE_29CDB2           
CODE_29CD94:        LDA #$03                  
CODE_29CD96:        CPY #$40                  
CODE_29CD98:        BCS CODE_29CDA2                   
CODE_29CD9A:        LDA #$06                  
CODE_29CD9C:        CPY #$1E                  
CODE_29CD9E:        BCC CODE_29CDA2           
CODE_29CDA0:        LDA #$05                  
CODE_29CDA2:        STA $02C6                 
CODE_29CDA5:        INC $02C7                 
CODE_29CDA8:        LDA $0553                 
CODE_29CDAB:        CMP #$05                  
CODE_29CDAD:        BCS CODE_29CDB2                   
CODE_29CDAF:        STZ $02C7                 
CODE_29CDB2:        LDA $02C7                 
CODE_29CDB5:        AND #$03                  
CODE_29CDB7:        STA $D8                   
CODE_29CDB9:        ASL A                     
CODE_29CDBA:        CLC                       
CODE_29CDBB:        ADC $D8                   
CODE_29CDBD:        TAX                       
CODE_29CDBE:        LDA.l PNTR_29CD77,x             
CODE_29CDC2:        STA $0D                   
CODE_29CDC4:        LDA.l PNTR_29CD77+1,x             
CODE_29CDC8:        STA $0E                   
CODE_29CDCA:        LDA.l PNTR_29CD77+2,x             
CODE_29CDCE:        STA $0F                   
CODE_29CDD0:        REP #$20                  
CODE_29CDD2:        LDY #$1E                  
CODE_29CDD4:        LDA [$0D],y               
CODE_29CDD6:        STA $14E0,y               
CODE_29CDD9:        DEY                       
CODE_29CDDA:        DEY                       
CODE_29CDDB:        BPL CODE_29CDD4           
CODE_29CDDD:        SEP #$20                  
CODE_29CDDF:        LDA #$01                  
CODE_29CDE1:        STA $1500                 
CODE_29CDE4:        RTL                       

CODE_29CDE5:        REP #$30                  
CODE_29CDE7:        PHB                       
CODE_29CDE8:        LDX #$8800                
CODE_29CDEB:        LDY #$1400                
CODE_29CDEE:        LDA #$009F                
CODE_29CDF1:        MVN $3C00                 
CODE_29CDF4:        LDX #$8C00                
CODE_29CDF7:        LDY #$14A0                
CODE_29CDFA:        LDA #$003F                
CODE_29CDFD:        MVN $3C00                 
CODE_29CE00:        LDX #$88A0                
CODE_29CE03:        LDY #$14E0                
CODE_29CE06:        LDA #$001F                
CODE_29CE09:        MVN $3C00                 
CODE_29CE0C:        PLB                       
CODE_29CE0D:        SEP #$30                  
CODE_29CE0F:        RTL                       

CODE_29CE10:        REP #$30                  
CODE_29CE12:        LDA $1300                 
CODE_29CE15:        STA $DC                   
CODE_29CE17:        AND #$001F                
CODE_29CE1A:        ORA #$0020                
CODE_29CE1D:        STA $D8                   
CODE_29CE1F:        LDA $DC                   
CODE_29CE21:        LSR A                     
CODE_29CE22:        LSR A                     
CODE_29CE23:        LSR A                     
CODE_29CE24:        LSR A                     
CODE_29CE25:        LSR A                     
CODE_29CE26:        AND #$001F                
CODE_29CE29:        ORA #$0040                
CODE_29CE2C:        STA $DA                   
CODE_29CE2E:        LDA $DC                   
CODE_29CE30:        XBA                       
CODE_29CE31:        LSR A                     
CODE_29CE32:        LSR A                     
CODE_29CE33:        AND #$001F                
CODE_29CE36:        ORA #$0080                
CODE_29CE39:        STA $DC                   
CODE_29CE3B:        STZ $1300                 
CODE_29CE3E:        SEP #$30                  
CODE_29CE40:        LDA $D8                   
CODE_29CE42:        STA $0205                 
CODE_29CE45:        LDA $DA                   
CODE_29CE47:        STA $0206                 
CODE_29CE4A:        LDA $DC                   
CODE_29CE4C:        STA $0207                 
CODE_29CE4F:        LDA #$01                  
CODE_29CE51:        STA $1500                 
CODE_29CE54:        RTL                       

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

CODE_29CE95:        REP #$30                  
CODE_29CE97:        PHB                       
CODE_29CE98:        LDA $4D                   
CODE_29CE9A:        AND #$00FF                
CODE_29CE9D:        ASL A                     
CODE_29CE9E:        TAX                       
CODE_29CE9F:        LDA.l DATA_29CE55,x             
CODE_29CEA3:        TAX                       
CODE_29CEA4:        LDY #$9400                
CODE_29CEA7:        LDA #$00FF                
CODE_29CEAA:        MVN $3C7F                 
CODE_29CEAD:        LDX #$8800                
CODE_29CEB0:        LDY #$9500                
CODE_29CEB3:        LDA #$007F                
CODE_29CEB6:        MVN $3C7F                 
CODE_29CEB9:        LDX #$8A20                
CODE_29CEBC:        LDY #$9580                
CODE_29CEBF:        LDA #$001F                
CODE_29CEC2:        MVN $3C7F                 
CODE_29CEC5:        PLB                       
CODE_29CEC6:        LDA $4D                   
CODE_29CEC8:        AND #$00FF                
CODE_29CECB:        ASL A                     
CODE_29CECC:        TAX                       
CODE_29CECD:        LDA.l DATA_29CE75,x             
CODE_29CED1:        BEQ CODE_29CEDF           
CODE_29CED3:        PHB                       
CODE_29CED4:        TAX                       
CODE_29CED5:        LDY #$95A0                
CODE_29CED8:        LDA #$001F                
CODE_29CEDB:        MVN $3C7F                 
CODE_29CEDE:        PLB                       
CODE_29CEDF:        LDA $4D                   
CODE_29CEE1:        AND #$00FF                
CODE_29CEE4:        ASL A                     
CODE_29CEE5:        TAX                       
CODE_29CEE6:        LDA $0726                 
CODE_29CEE9:        AND #$00FF                
CODE_29CEEC:        BEQ CODE_29CEF4           
CODE_29CEEE:        LDA.l DATA_29CE85,x             
CODE_29CEF2:        BRA CODE_29CEF8           

CODE_29CEF4:        LDA.l DATA_29CE65,x             
CODE_29CEF8:        PHB                       
CODE_29CEF9:        TAX                       
CODE_29CEFA:        LDY #$95E0                
CODE_29CEFD:        LDA #$001F                
CODE_29CF00:        MVN $3C7F                 
CODE_29CF03:        PLB                       
CODE_29CF04:        LDX #$0000                
CODE_29CF07:        TXA                       
CODE_29CF08:        STA $1320,x               
CODE_29CF0B:        STA $1340,x               
CODE_29CF0E:        STA $1360,x               
CODE_29CF11:        STA $1380,x               
CODE_29CF14:        STA $13A0,x               
CODE_29CF17:        STA $13C0,x               
CODE_29CF1A:        STA $13E0,x               
CODE_29CF1D:        STA $1400,x               
CODE_29CF20:        STA $1420,x               
CODE_29CF23:        STA $1440,x               
CODE_29CF26:        STA $1460,x               
CODE_29CF29:        STA $1480,x               
CODE_29CF2C:        STA $14A0,x               
CODE_29CF2F:        STA $14C0,x               
CODE_29CF32:        STA $14E0,x               
CODE_29CF35:        INX                       
CODE_29CF36:        INX                       
CODE_29CF37:        CPX #$0020                
CODE_29CF3A:        BNE CODE_29CF08           
CODE_29CF3C:        STA $1300                 
CODE_29CF3F:        STA $1310                 
CODE_29CF42:        STA $1312                 
CODE_29CF45:        STA $1314                 
CODE_29CF48:        STA $1316                 
CODE_29CF4B:        STA $1318                 
CODE_29CF4E:        STA $131A                 
CODE_29CF51:        STA $131C                 
CODE_29CF54:        STA $131E                 
CODE_29CF57:        STZ $02B7                 
CODE_29CF5A:        SEP #$30                  
CODE_29CF5C:        LDA #$01                  
CODE_29CF5E:        STA $1500                 
CODE_29CF61:        RTL                       

CODE_29CF62:        REP #$30                  
CODE_29CF64:        PHB                       
CODE_29CF65:        LDX #$A400                
CODE_29CF68:        LDY #$9400                
CODE_29CF6B:        LDA #$001F                
CODE_29CF6E:        MVN $3C7F                 
CODE_29CF71:        LDX #$A480                
CODE_29CF74:        LDY #$9480                
CODE_29CF77:        LDA #$007F                
CODE_29CF7A:        MVN $3C7F                 
CODE_29CF7D:        PLB                       
CODE_29CF7E:        LDX #$0000                
CODE_29CF81:        TXA                       
CODE_29CF82:        STA $1300,x               
CODE_29CF85:        STA $1380,x               
CODE_29CF88:        STA $13A0,x               
CODE_29CF8B:        STA $13C0,x               
CODE_29CF8E:        STA $13E0,x               
CODE_29CF91:        INX                       
CODE_29CF92:        INX                       
CODE_29CF93:        CPX #$0020                
CODE_29CF96:        BNE CODE_29CF82           
CODE_29CF98:        LDA $3CA43E               
CODE_29CF9C:        STA $7F943E               
CODE_29CFA0:        LDA $3CA45E               
CODE_29CFA4:        STA $7F945E               
CODE_29CFA8:        LDA #$FF00                
CODE_29CFAB:        STA $02B7                 
CODE_29CFAE:        SEP #$30                  
CODE_29CFB0:        LDA #$01                  
CODE_29CFB2:        STA $1500                 
CODE_29CFB5:        RTL                       

CODE_29CFB6:        REP #$30                  
CODE_29CFB8:        PHB                       
CODE_29CFB9:        LDX #$8840                
CODE_29CFBC:        LDY #$9540                
CODE_29CFBF:        LDA #$001F                
CODE_29CFC2:        MVN $3C7F                 
CODE_29CFC5:        PLB                       
CODE_29CFC6:        STZ $02B3                 
CODE_29CFC9:        LDA #$0000                
CODE_29CFCC:        STA $7F9400               
CODE_29CFD0:        SEP #$30                  
CODE_29CFD2:        STZ $02B7                 
CODE_29CFD5:        RTL                       

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

CODE_29D09A:        REP #$30
CODE_29D09C:        LDX $02B3
CODE_29D09F:        LDA.l DATA_29D056,x             
CODE_29D0A3:        STA $D8                   
CODE_29D0A5:        LDA #$0029                
CODE_29D0A8:        STA $DA
CODE_29D0AA:        LDA $02B5                 
CODE_29D0AD:        AND #$000F
CODE_29D0B0:        ASL
CODE_29D0B1:        TAX                       
CODE_29D0B2:        LDA.l DATA_29D07A,x             
CODE_29D0B6:        STA $DB                   
CODE_29D0B8:        LDX #$0000
CODE_29D0BB:        TXY
CODE_29D0BC:        LDA $02B5                 
CODE_29D0BF:        CMP #$0010                  
CODE_29D0C2:        BCC CODE_29D0C6
CODE_29D0C4:        INX
CODE_29D0C5:        INX                       
CODE_29D0C6:        SEP #$20                  
CODE_29D0C8:        PHB                       
CODE_29D0C9:        LDA #$7F                  
CODE_29D0CB:        PHA                       
CODE_29D0CC:        PLB                       
CODE_29D0CD:        REP #$20                  
CODE_29D0CF:        LDA.l DATA_29CFD6,x             
CODE_29D0D3:        AND $DB                   
CODE_29D0D5:        STA $9600,y               
CODE_29D0D8:        LDA.l DATA_29CFE6,x             
CODE_29D0DC:        AND $DB                   
CODE_29D0DE:        STA $9608,y               
CODE_29D0E1:        LDA.l DATA_29CFF6,x             
CODE_29D0E5:        AND $DB                   
CODE_29D0E7:        STA $9610,y               
CODE_29D0EA:        LDA.l DATA_29D006,x             
CODE_29D0EE:        AND $DB                   
CODE_29D0F0:        STA $9618,y               
CODE_29D0F3:        LDA.l DATA_29D016,x             
CODE_29D0F7:        AND $DB                   
CODE_29D0F9:        STA $9620,y               
CODE_29D0FC:        LDA.l DATA_29D026,x             
CODE_29D100:        AND $DB                   
CODE_29D102:        STA $9628,y               
CODE_29D105:        LDA.l DATA_29D036,x             
CODE_29D109:        AND $DB                   
CODE_29D10B:        STA $9630,y               
CODE_29D10E:        LDA.l DATA_29D046,x             
CODE_29D112:        AND $DB                   
CODE_29D114:        STA $9638,y               
CODE_29D117:        INX                       
CODE_29D118:        INX                       
CODE_29D119:        INX                       
CODE_29D11A:        INX                       
CODE_29D11B:        INY                       
CODE_29D11C:        INY                       
CODE_29D11D:        CPY #$0008                  
CODE_29D120:        BNE CODE_29D0CF
CODE_29D122:        SEP #$20
CODE_29D124:        PLB                       
CODE_29D125:        REP #$20                  
CODE_29D127:        LDX #$0000                  
CODE_29D12A:        STZ $029A     
CODE_29D12D:        STZ $DB
CODE_29D12F:        STX $029F                 
CODE_29D132:        LDA $7F9400,x             
CODE_29D136:        STA $0299                 
CODE_29D139:        AND #$001F                
CODE_29D13C:        ASL A                     
CODE_29D13D:        TAX                       
CODE_29D13E:        LDA $7F9600,x             
CODE_29D142:        BNE CODE_29D149           
CODE_29D144:        LDA #$0002                
CODE_29D147:        STA $DB                   
CODE_29D149:        LDA $0299                 
CODE_29D14C:        AND #$03E0                
CODE_29D14F:        LSR A                     
CODE_29D150:        LSR A                     
CODE_29D151:        LSR A                     
CODE_29D152:        LSR A                     
CODE_29D153:        TAX                       
CODE_29D154:        LDA $7F9600,x             
CODE_29D158:        BNE CODE_29D15F           
CODE_29D15A:        LDA #$0004                
CODE_29D15D:        TSB $DB                   
CODE_29D15F:        LDA $029A                 
CODE_29D162:        LSR A                     
CODE_29D163:        LSR A                     
CODE_29D164:        ASL A                     
CODE_29D165:        TAX                       
CODE_29D166:        LDA $7F9600,x             
CODE_29D16A:        BNE CODE_29D171           
CODE_29D16C:        LDA #$0008                
CODE_29D16F:        TSB $DB                   
CODE_29D171:        LDX $029F                 
CODE_29D174:        LDY $DB                   
CODE_29D176:        LDA $1300,x               
CODE_29D179:        ADC [$D8],y               
CODE_29D17B:        STA $1300,x               
CODE_29D17E:        INX                       
CODE_29D17F:        INX                       
CODE_29D180:        TXA                       
CODE_29D181:        AND #$FF80                
CODE_29D184:        BNE CODE_29D189           
CODE_29D186:        LDX #$0080                  
CODE_29D189:        TXA
CODE_29D18A:        AND $02B7                 
CODE_29D18D:        BNE CODE_29D19C           
CODE_29D18F:        TXA                       
CODE_29D190:        AND #$001F                
CODE_29D193:        BNE CODE_29D12D           
CODE_29D195:        INX                       
CODE_29D196:        INX                       
CODE_29D197:        CPX #$0202                  
CODE_29D19A:        BNE CODE_29D12D                  
CODE_29D19C:        INC $02B5
CODE_29D19F:        LDA $02B5                 
CODE_29D1A2:        CMP #$0020                
CODE_29D1A5:        BNE CODE_29D1B3           
CODE_29D1A7:        LDA $02B3                 
CODE_29D1AA:        EOR #$0002                
CODE_29D1AD:        STA $02B3                 
CODE_29D1B0:        STZ $02B5                 
CODE_29D1B3:        SEP #$30                  
CODE_29D1B5:        LDA #$01                  
CODE_29D1B7:        STA $1500                 
CODE_29D1BA:        RTL                       

CODE_29D1BB:        REP #$30                  
CODE_29D1BD:        LDX #$0002                
CODE_29D1C0:        STZ $029A                 
CODE_29D1C3:        STZ $DB                   
CODE_29D1C5:        STX $029F                 
CODE_29D1C8:        LDA $7F9400,x             
CODE_29D1CC:        STA $0299                 
CODE_29D1CF:        AND #$001F                
CODE_29D1D2:        ASL A                     
CODE_29D1D3:        TAX                       
CODE_29D1D4:        LDA $7F9600,x             
CODE_29D1D8:        BNE CODE_29D1DF           
CODE_29D1DA:        LDA #$0002                
CODE_29D1DD:        STA $DB                   
CODE_29D1DF:        LDA $0299                 
CODE_29D1E2:        AND #$03E0                
CODE_29D1E5:        LSR A                     
CODE_29D1E6:        LSR A                     
CODE_29D1E7:        LSR A                     
CODE_29D1E8:        LSR A                     
CODE_29D1E9:        TAX                       
CODE_29D1EA:        LDA $7F9600,x             
CODE_29D1EE:        BNE CODE_29D1F5           
CODE_29D1F0:        LDA #$0004                
CODE_29D1F3:        TSB $DB                   
CODE_29D1F5:        LDA $029A                 
CODE_29D1F8:        LSR A                     
CODE_29D1F9:        LSR A                     
CODE_29D1FA:        ASL A                     
CODE_29D1FB:        TAX                       
CODE_29D1FC:        LDA $7F9600,x             
CODE_29D200:        BNE CODE_29D207           
CODE_29D202:        LDA #$0008                
CODE_29D205:        TSB $DB                   
CODE_29D207:        LDX $029F                 
CODE_29D20A:        LDY $DB                   
CODE_29D20C:        LDA $1300,x               
CODE_29D20F:        ADC [$D8],y               
CODE_29D211:        STA $1300,x               
CODE_29D214:        INX                       
CODE_29D215:        INX                       
CODE_29D216:        CPX #$0020                
CODE_29D219:        BCC CODE_29D1C3           
CODE_29D21B:        LDA #$003E                
CODE_29D21E:        CPX #$0020                
CODE_29D221:        BEQ CODE_29D22B           
CODE_29D223:        LDA #$005E                
CODE_29D226:        CPX #$0040                
CODE_29D229:        BNE CODE_29D22F           
CODE_29D22B:        TAX                       
CODE_29D22C:        BRL CODE_29D1C3           

CODE_29D22F:        SEP #$30                  
CODE_29D231:        RTL                       

CODE_29D232:        REP #$30                  
CODE_29D234:        LDX #$0010                
CODE_29D237:        STZ $029A                 
CODE_29D23A:        STZ $DB                   
CODE_29D23C:        STX $029F                 
CODE_29D23F:        LDA $7F9400,x             
CODE_29D243:        STA $0299                 
CODE_29D246:        AND #$001F                
CODE_29D249:        ASL A                     
CODE_29D24A:        TAX                       
CODE_29D24B:        LDA $7F9600,x             
CODE_29D24F:        BNE CODE_29D256           
CODE_29D251:        LDA #$0002                
CODE_29D254:        STA $DB                   
CODE_29D256:        LDA $0299                 
CODE_29D259:        AND #$03E0                
CODE_29D25C:        LSR A                     
CODE_29D25D:        LSR A                     
CODE_29D25E:        LSR A                     
CODE_29D25F:        LSR A                     
CODE_29D260:        TAX                       
CODE_29D261:        LDA $7F9600,x             
CODE_29D265:        BNE CODE_29D26C           
CODE_29D267:        LDA #$0004                
CODE_29D26A:        TSB $DB                   
CODE_29D26C:        LDA $029A                 
CODE_29D26F:        LSR A                     
CODE_29D270:        LSR A                     
CODE_29D271:        ASL A                     
CODE_29D272:        TAX                       
CODE_29D273:        LDA $7F9600,x             
CODE_29D277:        BNE CODE_29D27E           
CODE_29D279:        LDA #$0008                
CODE_29D27C:        TSB $DB                   
CODE_29D27E:        LDX $029F                 
CODE_29D281:        LDY $DB                   
CODE_29D283:        LDA $1300,x               
CODE_29D286:        ADC [$D8],y               
CODE_29D288:        STA $1300,x               
CODE_29D28B:        INX                       
CODE_29D28C:        INX                       
CODE_29D28D:        CPX #$0080                
CODE_29D290:        BNE CODE_29D23A           
CODE_29D292:        SEP #$30                  
CODE_29D294:        RTL                       

CODE_29D295:        LDA #$0B                  
CODE_29D297:        STA $101D                 
CODE_29D29A:        LDA #$04                  
CODE_29D29C:        STA $101C                 
CODE_29D29F:        RTS                       

CODE_29D2A0:        LDA $101C                 
CODE_29D2A3:        BEQ CODE_29D2A8           
CODE_29D2A5:        DEC $101C                 
CODE_29D2A8:        LDA $101D                 
CODE_29D2AB:        BEQ CODE_29D2CD           
CODE_29D2AD:        LDA $101C                 
CODE_29D2B0:        BNE CODE_29D2CD           
CODE_29D2B2:        LDA #$04                  
CODE_29D2B4:        STA $101C                 
CODE_29D2B7:        DEC $101D                 
CODE_29D2BA:        BNE CODE_29D2CD           
CODE_29D2BC:        LDA $0727                 
CODE_29D2BF:        CMP #$06                  
CODE_29D2C1:        BNE CODE_29D2CD           
CODE_29D2C3:        LDA #$06                  
CODE_29D2C5:        STA $1202                 
CODE_29D2C8:        LDA #$78                  
CODE_29D2CA:        STA $0711                 
CODE_29D2CD:        RTS                       

CODE_29D2CE:        LDA $101E                 
CODE_29D2D1:        BNE CODE_29D2D7           
CODE_29D2D3:        SEC                       
CODE_29D2D4:        JMP CODE_29D295           

CODE_29D2D7:        RTS                       

CODE_29D2D8:        LDA $101E                 
CODE_29D2DB:        BNE CODE_29D2F8           
CODE_29D2DD:        LDA $101C                 
CODE_29D2E0:        BEQ CODE_29D2E5           
CODE_29D2E2:        DEC $101C                 
CODE_29D2E5:        LDA $101D                 
CODE_29D2E8:        BEQ CODE_29D2F8           
CODE_29D2EA:        LDA $101C                 
CODE_29D2ED:        BNE CODE_29D2F7           
CODE_29D2EF:        LDA #$04                  
CODE_29D2F1:        STA $101C                 
CODE_29D2F4:        DEC $101D                 
CODE_29D2F7:        RTS                       

CODE_29D2F8:        LDA #$00                  
CODE_29D2FA:        STA $101E                 
CODE_29D2FD:        RTS                       

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

CODE_29D356:        PHB
CODE_29D357:        PHK
CODE_29D358:        PLB                       
CODE_29D359:        LDA $0356                 
CODE_29D35C:        BNE CODE_29D368           
CODE_29D35E:        LDA $0783                 
CODE_29D361:        CMP #$06                  
CODE_29D363:        BCS CODE_29D3AB                   
CODE_29D365:        STZ $0356                 
CODE_29D368:        LDA $0356                 
CODE_29D36B:        BNE CODE_29D374           
CODE_29D36D:        LDA #$45                  
CODE_29D36F:        STA $1200                 
CODE_29D372:        LDA #$00                  
CODE_29D374:        ASL A                     
CODE_29D375:        AND #$0E                  
CODE_29D377:        TAX                       
CODE_29D378:        REP #$20                  
CODE_29D37A:        LDA.w DATA_29D34A,x               
CODE_29D37D:        STA $1300                 
CODE_29D380:        LDA.w PNTR_29D2FE,x               
CODE_29D383:        STA $00                   
CODE_29D385:        LDY #$00                  
CODE_29D387:        TYX                       
CODE_29D388:        LDA ($00),y               
CODE_29D38A:        BEQ CODE_29D38F           
CODE_29D38C:        STA $1310,x               
CODE_29D38F:        INX                       
CODE_29D390:        INX                       
CODE_29D391:        INY                       
CODE_29D392:        INY                       
CODE_29D393:        TYA                       
CODE_29D394:        AND #$000F                
CODE_29D397:        BNE CODE_29D388           
CODE_29D399:        SEP #$20                  
CODE_29D39B:        INC $1500                 
CODE_29D39E:        INC $0356                 
CODE_29D3A1:        LDA $0356                 
CODE_29D3A4:        CMP #$06                  
CODE_29D3A6:        BNE CODE_29D3AB           
CODE_29D3A8:        STZ $0356                 
CODE_29D3AB:        PLB                       
CODE_29D3AC:        RTL                       

DATA_29D3AD:        db $BB,$7F,$00,$0C,$BB,$7F,$14,$7B
                    db $90,$66,$ED,$51,$48,$3D,$C4,$2C
                    db $40,$1C,$00,$0C

CODE_29D3C1:        PHB                       
CODE_29D3C2:        PHK                       
CODE_29D3C3:        PLB                       
CODE_29D3C4:        LDA $0356                 
CODE_29D3C7:        BNE CODE_29D3D8           
CODE_29D3C9:        LDA $07BE                 
CODE_29D3CC:        BNE CODE_29D401           
CODE_29D3CE:        LDA $0783                 
CODE_29D3D1:        CMP #$05                  
CODE_29D3D3:        BCS CODE_29D401                   
CODE_29D3D5:        STZ $0356                 
CODE_29D3D8:        LDA $0356                 
CODE_29D3DB:        BNE CODE_29D3E4           
CODE_29D3DD:        LDA #$45                  
CODE_29D3DF:        STA $1200                 
CODE_29D3E2:        LDA #$00                  
CODE_29D3E4:        AND #$FE                  
CODE_29D3E6:        TAX                       
CODE_29D3E7:        REP #$20                  
CODE_29D3E9:        LDA.w DATA_29D3AD,x               
CODE_29D3EC:        STA $135E                 
CODE_29D3EF:        SEP #$20                  
CODE_29D3F1:        INC $1500                 
CODE_29D3F4:        INC $0356                 
CODE_29D3F7:        LDA $0356                 
CODE_29D3FA:        CMP #$14                  
CODE_29D3FC:        BNE CODE_29D401           
CODE_29D3FE:        STZ $0356                 
CODE_29D401:        PLB                       
CODE_29D402:        RTL                       

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

CODE_29D713:        PHB                       
CODE_29D714:        PHK                       
CODE_29D715:        PLB                       
CODE_29D716:        LDA $0350                 
CODE_29D719:        CMP #$06                  
CODE_29D71B:        BNE CODE_29D74A           
CODE_29D71D:        LDA $0356                 
CODE_29D720:        INC A                     
CODE_29D721:        STA $0356                 
CODE_29D724:        AND #$38                  
CODE_29D726:        LSR A                     
CODE_29D727:        LSR A                     
CODE_29D728:        LSR A                     
CODE_29D729:        STA $00                   
CODE_29D72B:        ASL A                     
CODE_29D72C:        CLC                       
CODE_29D72D:        ADC $00                   
CODE_29D72F:        ASL A                     
CODE_29D730:        TAX                       
CODE_29D731:        REP #$20                  
CODE_29D733:        LDA.w DATA_29D403,x               
CODE_29D736:        STA $132E                 
CODE_29D739:        LDA.w DATA_29D405,x               
CODE_29D73C:        STA $1330                 
CODE_29D73F:        LDA.w DATA_29D407,x               
CODE_29D742:        STA $1332                 
CODE_29D745:        SEP #$20                  
CODE_29D747:        INC $1500                 
CODE_29D74A:        CMP #$14                  
CODE_29D74C:        BNE CODE_29D772           
CODE_29D74E:        INC $0356                 
CODE_29D751:        LDA $0356                 
CODE_29D754:        AND #$38                  
CODE_29D756:        LSR A                     
CODE_29D757:        LSR A                     
CODE_29D758:        TAX                       
CODE_29D759:        REP #$20                  
CODE_29D75B:        LDA.w PNTR_29D433,x               
CODE_29D75E:        STA $00                   
CODE_29D760:        LDY #$00                  
CODE_29D762:        LDA ($00),y               
CODE_29D764:        STA $1340,y               
CODE_29D767:        INY                       
CODE_29D768:        INY                       
CODE_29D769:        CPY #$20                  
CODE_29D76B:        BNE CODE_29D762           
CODE_29D76D:        SEP #$20                  
CODE_29D76F:        INC $1500                 
CODE_29D772:        CMP #$16                  
CODE_29D774:        BEQ CODE_29D77A           
CODE_29D776:        CMP #$1E                  
CODE_29D778:        BNE CODE_29D7A5           
CODE_29D77A:        INC $0356                 
CODE_29D77D:        LDA $0356                 
CODE_29D780:        AND #$18                  
CODE_29D782:        TAY                       
CODE_29D783:        LSR A                     
CODE_29D784:        LSR A                     
CODE_29D785:        TAX                       
CODE_29D786:        REP #$20                  
CODE_29D788:        LDA DATA_29D543,y               
CODE_29D78B:        STA $1330                 
CODE_29D78E:        LDA DATA_29D545,y               
CODE_29D791:        STA $1332                 
CODE_29D794:        LDA DATA_29D547,y               
CODE_29D797:        STA $1334                 
CODE_29D79A:        LDA DATA_29D549,y               
CODE_29D79D:        STA $1336                 
CODE_29D7A0:        SEP #$20                  
CODE_29D7A2:        INC $1500                 
CODE_29D7A5:        CMP #$17                  
CODE_29D7A7:        BNE CODE_29D7D1           
CODE_29D7A9:        INC $0356                 
CODE_29D7AC:        LDA $0356                 
CODE_29D7AF:        AND #$38                  
CODE_29D7B1:        TAY                       
CODE_29D7B2:        REP #$20                  
CODE_29D7B4:        LDA DATA_29D563,y               
CODE_29D7B7:        STA $134E                 
CODE_29D7BA:        LDA DATA_29D565,y               
CODE_29D7BD:        STA $1350                 
CODE_29D7C0:        LDA DATA_29D567,y               
CODE_29D7C3:        STA $1352                 
CODE_29D7C6:        LDA DATA_29D569,y               
CODE_29D7C9:        STA $1354                 
CODE_29D7CC:        SEP #$20                  
CODE_29D7CE:        INC $1500                 
CODE_29D7D1:        CMP #$1C                  
CODE_29D7D3:        BNE CODE_29D815           
CODE_29D7D5:        INC $0356                 
CODE_29D7D8:        LDA $0356                 
CODE_29D7DB:        AND #$30                  
CODE_29D7DD:        TAY                       
CODE_29D7DE:        REP #$20                  
CODE_29D7E0:        LDA DATA_29D5A3,y               
CODE_29D7E3:        STA $1350                 
CODE_29D7E6:        LDA DATA_29D5A5,y               
CODE_29D7E9:        STA $1352                 
CODE_29D7EC:        LDA DATA_29D5A7,y               
CODE_29D7EF:        STA $1354                 
CODE_29D7F2:        LDA DATA_29D5A9,y               
CODE_29D7F5:        STA $1356                 
CODE_29D7F8:        LDA DATA_29D5AB,y               
CODE_29D7FB:        STA $1358                 
CODE_29D7FE:        LDA DATA_29D5AD,y               
CODE_29D801:        STA $135A                 
CODE_29D804:        LDA DATA_29D5AF,y               
CODE_29D807:        STA $135C                 
CODE_29D80A:        LDA DATA_29D5B1,y               
CODE_29D80D:        STA $135E                 
CODE_29D810:        SEP #$20                  
CODE_29D812:        INC $1500                 
CODE_29D815:        CMP #$1D                  
CODE_29D817:        BNE CODE_29D859           
CODE_29D819:        INC $0356                 
CODE_29D81C:        LDA $0356                 
CODE_29D81F:        AND #$30                  
CODE_29D821:        TAY                       
CODE_29D822:        REP #$20                  
CODE_29D824:        LDA DATA_29D5E3,y               
CODE_29D827:        STA $1342                 
CODE_29D82A:        LDA DATA_29D5E5,y               
CODE_29D82D:        STA $1344                 
CODE_29D830:        LDA DATA_29D5E7,y               
CODE_29D833:        STA $1346                 
CODE_29D836:        LDA DATA_29D5E9,y               
CODE_29D839:        STA $1348                 
CODE_29D83C:        LDA DATA_29D5EB,y               
CODE_29D83F:        STA $134A                 
CODE_29D842:        LDA DATA_29D5ED,y               
CODE_29D845:        STA $134C                 
CODE_29D848:        LDA DATA_29D5EF,y               
CODE_29D84B:        STA $134E                 
CODE_29D84E:        LDA DATA_29D5F1,y               
CODE_29D851:        STA $1350                 
CODE_29D854:        SEP #$20                  
CODE_29D856:        INC $1500                 
CODE_29D859:        CMP #$1F                  
CODE_29D85B:        BNE CODE_29D8AD           
CODE_29D85D:        INC $0356                 
CODE_29D860:        LDA $0356                 
CODE_29D863:        AND #$38                  
CODE_29D865:        LSR A                     
CODE_29D866:        LSR A                     
CODE_29D867:        TAX                       
CODE_29D868:        ASL A                     
CODE_29D869:        ASL A                     
CODE_29D86A:        ASL A                     
CODE_29D86B:        TAY                       
CODE_29D86C:        REP #$20                  
CODE_29D86E:        LDA.w DATA_29D6A3,x               
CODE_29D871:        STA $1342                 
CODE_29D874:        LDA.w DATA_29D6B3,x               
CODE_29D877:        STA $134E                 
CODE_29D87A:        LDA.w DATA_29D6C3,x               
CODE_29D87D:        STA $1350                 
CODE_29D880:        LDA.w DATA_29D6D3,x               
CODE_29D883:        STA $1358                 
CODE_29D886:        LDA.w DATA_29D6E3,x               
CODE_29D889:        STA $135A                 
CODE_29D88C:        LDA.w DATA_29D6F3,x               
CODE_29D88F:        STA $135C                 
CODE_29D892:        LDA.w DATA_29D703,x               
CODE_29D895:        STA $135E                 
CODE_29D898:        LDX #$00                  
CODE_29D89A:        LDA DATA_29D623,y               
CODE_29D89D:        STA $132A,x               
CODE_29D8A0:        INX                       
CODE_29D8A1:        INX                       
CODE_29D8A2:        INY                       
CODE_29D8A3:        INY                       
CODE_29D8A4:        CPX #$10                  
CODE_29D8A6:        BNE CODE_29D89A           
CODE_29D8A8:        SEP #$20                  
CODE_29D8AA:        INC $1500                 
CODE_29D8AD:        PLB                       
CODE_29D8AE:        RTL                       

DATA_29D8AF:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF

CODE_29D8E0:        LDA $0423
CODE_29D8E3:        BEQ CODE_29D8E8           
CODE_29D8E5:        JSR CODE_29DE9E           
CODE_29D8E8:        LDA $05F2                 
CODE_29D8EB:        BEQ CODE_29D8F2           
CODE_29D8ED:        LDA #$02                  
CODE_29D8EF:        STA $0556                 
CODE_29D8F2:        JSR CODE_29D8F6           
CODE_29D8F5:        RTL                       

CODE_29D8F6:        LDA $041C                 
CODE_29D8F9:        JSL CODE_20FB1F           

PNTR_29D8FD:        dw CODE_29D907
                    dw CODE_29D93D
                    dw CODE_29D988
                    dw CODE_29D98C
                    dw CODE_29DAF5
  
CODE_29D907:        LDA #$0F                  
CODE_29D909:        STA $0419                 
CODE_29D90C:        LDA #$00                  
CODE_29D90E:        STA $041F                 
CODE_29D911:        LDX $070A                 
CODE_29D914:        CPX #$07                  
CODE_29D916:        BEQ CODE_29D91B           
CODE_29D918:        STA $041D                 
CODE_29D91B:        LDA #$48                  
CODE_29D91D:        STA $041E                 
CODE_29D920:        LDX #$00                  
CODE_29D922:        STX $041B                 
CODE_29D925:        INC $041C                 
CODE_29D928:        LDA $05F2                 
CODE_29D92B:        BEQ CODE_29D93C           
CODE_29D92D:        LDA $041D                 
CODE_29D930:        LDX $0726                 
CODE_29D933:        BEQ CODE_29D938           
CODE_29D935:        CLC                       
CODE_29D936:        ADC #$23                  
CODE_29D938:        TAX                       
CODE_29D939:        LDA $1D80,x               
CODE_29D93C:        RTS                       

CODE_29D93D:        LDX $1600                 
CODE_29D940:        LDA $0419                 
CODE_29D943:        STA $1602,x               
CODE_29D946:        LDY $041B                 
CODE_29D949:        LDA $EDED,y               
CODE_29D94C:        STA $1603,x               
CODE_29D94F:        LDA #$40                  
CODE_29D951:        STA $1604,x               
CODE_29D954:        LDA #$3E                  
CODE_29D956:        STA $1605,x               
CODE_29D959:        LDA #$AE                  
CODE_29D95B:        STA $1606,x               
CODE_29D95E:        LDA #$02                  
CODE_29D960:        STA $1607,x               
CODE_29D963:        LDA #$FF                  
CODE_29D965:        STA $1608,x               
CODE_29D968:        LDA $1600                 
CODE_29D96B:        CLC                       
CODE_29D96C:        ADC #$06                  
CODE_29D96E:        STA $1600                 
CODE_29D971:        INY                       
CODE_29D972:        TYA                       
CODE_29D973:        AND #$03                  
CODE_29D975:        STA $041B                 
CODE_29D978:        BNE CODE_29D987           
CODE_29D97A:        LDX $05F2                 
CODE_29D97D:        BEQ CODE_29D981           
CODE_29D97F:        LDA #$08                  
CODE_29D981:        STA $041B                 
CODE_29D984:        INC $041C                 
CODE_29D987:        RTS                       

CODE_29D988:        INC $041C                 
CODE_29D98B:        RTS                       

CODE_29D98C:        LDA $05F2                 
CODE_29D98F:        ASL A                     
CODE_29D990:        TAX                       
CODE_29D991:        LDA $EDF1,x               
CODE_29D994:        STA $0D                   
CODE_29D996:        LDA $EDF2,x               
CODE_29D999:        STA $0E                   
CODE_29D99B:        LDA #$22                  
CODE_29D99D:        STA $0F                   
CODE_29D99F:        REP #$30                  
CODE_29D9A1:        LDA $041B                 
CODE_29D9A4:        AND #$00FF                
CODE_29D9A7:        ASL A                     
CODE_29D9A8:        TAY                       
CODE_29D9A9:        LDA $EE15,y               
CODE_29D9AC:        STA $0B                   
CODE_29D9AE:        LDA $EDF5,y               
CODE_29D9B1:        TAY                       
CODE_29D9B2:        LDX $1600                 
CODE_29D9B5:        STX $08                   
CODE_29D9B7:        LDA [$0D],y               
CODE_29D9B9:        STA $1602,x               
CODE_29D9BC:        INX                       
CODE_29D9BD:        INY                       
CODE_29D9BE:        CPY $0B                   
CODE_29D9C0:        BNE CODE_29D9B7           
CODE_29D9C2:        SEP #$30                  
CODE_29D9C4:        LDA $1600                 
CODE_29D9C7:        CLC                       
CODE_29D9C8:        ADC #$16                  
CODE_29D9CA:        STA $0C                   
CODE_29D9CC:        DEX                       
CODE_29D9CD:        STX $1600                 
CODE_29D9D0:        LDA $041B                 
CODE_29D9D3:        AND #$07                  
CODE_29D9D5:        TAX                       
CODE_29D9D6:        DEX                       
CODE_29D9D7:        SEC                       
CODE_29D9D8:        SBC #$04                  
CODE_29D9DA:        CMP #$02                  
CODE_29D9DC:        BCS CODE_29D9E1                   
CODE_29D9DE:        JSR CODE_29D9FD           
CODE_29D9E1:        JSR CODE_29DA81           
CODE_29D9E4:        INC $041B                 
CODE_29D9E7:        LDA $041B                 
CODE_29D9EA:        AND #$07                  
CODE_29D9EC:        BNE CODE_29D9FC           
CODE_29D9EE:        LDA $05F2                 
CODE_29D9F1:        BNE CODE_29D9F9           
CODE_29D9F3:        LDA #$00                  
CODE_29D9F5:        STA $041C                 
CODE_29D9F8:        RTS                       

CODE_29D9F9:        INC $041C                 
CODE_29D9FC:        RTS                       

CODE_29D9FD:        LDA $05F2                 
CODE_29DA00:        BNE CODE_29DA19           
CODE_29DA02:        LDA #$1C                  
CODE_29DA04:        LDX $0726                 
CODE_29DA07:        BEQ CODE_29DA0B           
CODE_29DA09:        LDA #$3F                  
CODE_29DA0B:        STA $0B                   
CODE_29DA0D:        LDA $0C                   
CODE_29DA0F:        CLC                       
CODE_29DA10:        ADC #$1A                  
CODE_29DA12:        STA $0C                   
CODE_29DA14:        LDA #$02                  
CODE_29DA16:        JMP CODE_29DA2A           

CODE_29DA19:        LDA #$00                  
CODE_29DA1B:        LDX $0726                 
CODE_29DA1E:        BEQ CODE_29DA22           
CODE_29DA20:        LDA #$23                  
CODE_29DA22:        CLC                       
CODE_29DA23:        ADC $041D                 
CODE_29DA26:        STA $0B                   
CODE_29DA28:        LDA #$06                  
CODE_29DA2A:        STA $0A                   
CODE_29DA2C:        LDA $05F2                 
CODE_29DA2F:        ASL A                     
CODE_29DA30:        TAX                       
CODE_29DA31:        LDA $EE35,x               
CODE_29DA34:        STA $0D                   
CODE_29DA36:        LDA $EE36,x               
CODE_29DA39:        STA $0E                   
CODE_29DA3B:        LDA #$21                  
CODE_29DA3D:        STA $0F                   
CODE_29DA3F:        LDY $0B                   
CODE_29DA41:        LDA $1D80,y               
CODE_29DA44:        BEQ CODE_29DA73           
CODE_29DA46:        ASL A                     
CODE_29DA47:        ASL A                     
CODE_29DA48:        TAY                       
CODE_29DA49:        LDA $041B                 
CODE_29DA4C:        AND #$07                  
CODE_29DA4E:        CMP #$04                  
CODE_29DA50:        BEQ CODE_29DA56           
CODE_29DA52:        TYA                       
CODE_29DA53:        ORA #$02                  
CODE_29DA55:        TAY                       
CODE_29DA56:        LDX $0C                   
CODE_29DA58:        REP #$30                  
CODE_29DA5A:        TXA                       
CODE_29DA5B:        AND #$00FF                
CODE_29DA5E:        TAX                       
CODE_29DA5F:        TYA                       
CODE_29DA60:        ASL A                     
CODE_29DA61:        TAY                       
CODE_29DA62:        LDA [$0D],y               
CODE_29DA64:        STA $1602,x               
CODE_29DA67:        INX                       
CODE_29DA68:        INX                       
CODE_29DA69:        INY                       
CODE_29DA6A:        INY                       
CODE_29DA6B:        TYA                       
CODE_29DA6C:        AND #$0002                
CODE_29DA6F:        BNE CODE_29DA62           
CODE_29DA71:        SEP #$30                  
CODE_29DA73:        LDA $0C                   
CODE_29DA75:        CLC                       
CODE_29DA76:        ADC #$06                  
CODE_29DA78:        STA $0C                   
CODE_29DA7A:        INC $0B                   
CODE_29DA7C:        DEC $0A                   
CODE_29DA7E:        BPL CODE_29DA3F           
CODE_29DA80:        RTS                       

CODE_29DA81:        LDA $041B                 
CODE_29DA84:        AND #$07                  
CODE_29DA86:        JSL CODE_20FB1F           

PNTR_29DA8A:        dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA80
                    dw CODE_29DA9A
                    dw CODE_29DABD
                    dw CODE_29DA80
                    dw CODE_29DA80

CODE_29DA9A:        JSL CODE_29E730           
CODE_29DA9E:        LDA $041B                 
CODE_29DAA1:        AND #$08                  
CODE_29DAA3:        BNE CODE_29DABC           
CODE_29DAA5:        JSR CODE_29E6E0           
CODE_29DAA8:        LDX $08                   
CODE_29DAAA:        LDA $1F48                 
CODE_29DAAD:        CMP #$F0                  
CODE_29DAAF:        BNE CODE_29DAB3           
CODE_29DAB1:        LDA #$FE                  
CODE_29DAB3:        STA $162A,x               
CODE_29DAB6:        LDA $1F49                 
CODE_29DAB9:        STA $162C,x               
CODE_29DABC:        RTS                       

CODE_29DABD:        JSL CODE_29E766           
CODE_29DAC1:        JSR CODE_29E6AA           
CODE_29DAC4:        LDX $08                   
CODE_29DAC6:        LDA $1F4A                 
CODE_29DAC9:        CMP #$F0                  
CODE_29DACB:        BNE CODE_29DACF           
CODE_29DACD:        LDA #$FE                  
CODE_29DACF:        STA $1610,x               
CODE_29DAD2:        LDA $1F4B                 
CODE_29DAD5:        STA $1612,x               
CODE_29DAD8:        LDA $041B                 
CODE_29DADB:        AND #$08                  
CODE_29DADD:        BNE CODE_29DAF4           
CODE_29DADF:        JSL CODE_29E7AA           
CODE_29DAE3:        LDX $08                   
CODE_29DAE5:        LDY #$00                  
CODE_29DAE7:        LDA $1F4C,y               
CODE_29DAEA:        STA $1616,x               
CODE_29DAED:        INX                       
CODE_29DAEE:        INX                       
CODE_29DAEF:        INY                       
CODE_29DAF0:        CPY #$06                  
CODE_29DAF2:        BNE CODE_29DAE7           
CODE_29DAF4:        RTS                       

CODE_29DAF5:        LDA $0423                 
CODE_29DAF8:        BNE CODE_29DA80           
CODE_29DAFA:        LDA $A8                   
CODE_29DAFC:        BEQ CODE_29DB01           
CODE_29DAFE:        JMP CODE_29DC21           

CODE_29DB01:        LDX $0726                 
CODE_29DB04:        LDA $F8,x                 
CODE_29DB06:        ORA $18                   
CODE_29DB08:        AND #$40                  
CODE_29DB0A:        BEQ CODE_29DB21           
CODE_29DB0C:        LDA #$1C                  
CODE_29DB0E:        STA $1203                 
CODE_29DB11:        LDA $05F2                 
CODE_29DB14:        EOR #$01                  
CODE_29DB16:        STA $05F2                 
CODE_29DB19:        LDA #$00                  
CODE_29DB1B:        STA $041C                 
CODE_29DB1E:        JMP CODE_29D907           

CODE_29DB21:        LDX #$07                  
CODE_29DB23:        LDA $0726                 
CODE_29DB26:        BEQ CODE_29DB2A           
CODE_29DB28:        LDX #$2A                  
CODE_29DB2A:        LDA $1D80,x               
CODE_29DB2D:        BEQ CODE_29DBA5           
CODE_29DB2F:        LDA $0018                 
CODE_29DB32:        AND #$0C                  
CODE_29DB34:        BEQ CODE_29DBA5           
CODE_29DB36:        LSR A                     
CODE_29DB37:        LSR A                     
CODE_29DB38:        LSR A                     
CODE_29DB39:        TAY                       
CODE_29DB3A:        BNE CODE_29DB56           
CODE_29DB3C:        LDA $041D                 
CODE_29DB3F:        CMP #$15                  
CODE_29DB41:        BEQ CODE_29DB54           
CODE_29DB43:        CLC                       
CODE_29DB44:        ADC #$07                  
CODE_29DB46:        LDX $0726                 
CODE_29DB49:        BEQ CODE_29DB4E           
CODE_29DB4B:        CLC                       
CODE_29DB4C:        ADC #$23                  
CODE_29DB4E:        TAX                       
CODE_29DB4F:        LDA $1D80,x               
CODE_29DB52:        BNE CODE_29DB5B           
CODE_29DB54:        BRA CODE_29DBA5           

CODE_29DB56:        LDA $041D                 
CODE_29DB59:        BEQ CODE_29DB54           
CODE_29DB5B:        LDA #$23                  
CODE_29DB5D:        STA $1203                 
CODE_29DB60:        LDA $041D                 
CODE_29DB63:        CLC                       
CODE_29DB64:        ADC $EEC9,y               
CODE_29DB67:        STA $041D                 
CODE_29DB6A:        CMP $EECB,y               
CODE_29DB6D:        BNE CODE_29DB75           
CODE_29DB6F:        LDA $EECD,y               
CODE_29DB72:        STA $041D                 
CODE_29DB75:        LDX $041D                 
CODE_29DB78:        LDA $0726                 
CODE_29DB7B:        BEQ CODE_29DB82           
CODE_29DB7D:        TXA                       
CODE_29DB7E:        CLC                       
CODE_29DB7F:        ADC #$23                  
CODE_29DB81:        TAX                       
CODE_29DB82:        LDY $0726                 
CODE_29DB85:        TXA                       
CODE_29DB86:        CMP $EED9,y               
CODE_29DB89:        BEQ CODE_29DB90           
CODE_29DB8B:        LDA $1D80,x               
CODE_29DB8E:        BEQ CODE_29DB21           
CODE_29DB90:        LDA #$0C                  
CODE_29DB92:        STA $041B                 
CODE_29DB95:        LDA #$03                  
CODE_29DB97:        STA $041C                 
CODE_29DB9A:        LDA #$00                  
CODE_29DB9C:        STA $041F                 
CODE_29DB9F:        LDA #$48                  
CODE_29DBA1:        STA $041E                 
CODE_29DBA4:        RTS                       

CODE_29DBA5:        LDA $070A                 
CODE_29DBA8:        CMP #$07                  
CODE_29DBAA:        BEQ CODE_29DBBA           
CODE_29DBAC:        LDY #$00                  
CODE_29DBAE:        LDX $0726                 
CODE_29DBB1:        BEQ CODE_29DBB5           
CODE_29DBB3:        LDY #$23                  
CODE_29DBB5:        LDA $1D80,y               
CODE_29DBB8:        BNE CODE_29DBBB           
CODE_29DBBA:        RTS                       

CODE_29DBBB:        LDX #$01                  
CODE_29DBBD:        LDA $0726                 
CODE_29DBC0:        BEQ CODE_29DBC4           
CODE_29DBC2:        LDX #$24                  
CODE_29DBC4:        LDA $1D80,x               
CODE_29DBC7:        BEQ CODE_29DC15           
CODE_29DBC9:        LDA $18                   
CODE_29DBCB:        AND #$03                  
CODE_29DBCD:        BEQ CODE_29DC15           
CODE_29DBCF:        LSR A                     
CODE_29DBD0:        TAX                       
CODE_29DBD1:        LDA #$23                  
CODE_29DBD3:        STA $1203                 
CODE_29DBD6:        LDA $041F                 
CODE_29DBD9:        CLC                       
CODE_29DBDA:        ADC $EED5,x               
CODE_29DBDD:        STA $041F                 
CODE_29DBE0:        LDA $041E                 
CODE_29DBE3:        CLC                       
CODE_29DBE4:        ADC $EECF,x               
CODE_29DBE7:        STA $041E                 
CODE_29DBEA:        CMP $EED1,x               
CODE_29DBED:        BNE CODE_29DBFB           
CODE_29DBEF:        LDA $EED7,x               
CODE_29DBF2:        STA $041F                 
CODE_29DBF5:        LDA $EED3,x               
CODE_29DBF8:        STA $041E                 
CODE_29DBFB:        LDA $041F                 
CODE_29DBFE:        CLC                       
CODE_29DBFF:        ADC $041D                 
CODE_29DC02:        TAY                       
CODE_29DC03:        LDA $0726                 
CODE_29DC06:        BEQ CODE_29DC0D           
CODE_29DC08:        TYA                       
CODE_29DC09:        CLC                       
CODE_29DC0A:        ADC #$23                  
CODE_29DC0C:        TAY                       
CODE_29DC0D:        LDA $1D80,y               
CODE_29DC10:        BEQ CODE_29DBD6           
CODE_29DC12:        JMP CODE_29DC49           

CODE_29DC15:        LDY $0726                 
CODE_29DC18:        LDA $00F8,y               
CODE_29DC1B:        ORA $18                   
CODE_29DC1D:        AND #$80                  
CODE_29DC1F:        BEQ CODE_29DC49           
CODE_29DC21:        LDA $041F                 
CODE_29DC24:        CLC                       
CODE_29DC25:        ADC $041D                 
CODE_29DC28:        TAY                       
CODE_29DC29:        LDA $0726                 
CODE_29DC2C:        BEQ CODE_29DC33           
CODE_29DC2E:        TYA                       
CODE_29DC2F:        CLC                       
CODE_29DC30:        ADC #$23                  
CODE_29DC32:        TAY                       
CODE_29DC33:        LDA $1D80,y               
CODE_29DC36:        CMP #$0C                  
CODE_29DC38:        BNE CODE_29DC46           
CODE_29DC3A:        LDA $0597                 
CODE_29DC3D:        BEQ CODE_29DC46           
CODE_29DC3F:        LDA #$2A                  
CODE_29DC41:        STA $1203                 
CODE_29DC44:        BRA CODE_29DC49           

CODE_29DC46:        JMP CODE_29DC65           

CODE_29DC49:        JMP CODE_29DF1D           

CODE_29DC4C:        LDX $070A                 
CODE_29DC4F:        CPX #$07                  
CODE_29DC51:        BEQ CODE_29DC64           
CODE_29DC53:        ASL A                     
CODE_29DC54:        TAX                       
CODE_29DC55:        REP #$20                  
CODE_29DC57:        LDA $EEDB,x               
CODE_29DC5A:        STA $1464                 
CODE_29DC5D:        SEP #$20                  
CODE_29DC5F:        LDA #$01                  
CODE_29DC61:        STA $1500                 
CODE_29DC64:        RTS                       

CODE_29DC65:        LDA $1D80,y               
CODE_29DC68:        JSL CODE_20FB1F           

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
                    
CODE_29DC88:        LDA $041F                 
CODE_29DC8B:        CLC                       
CODE_29DC8C:        ADC $041D                 
CODE_29DC8F:        TAY                       
CODE_29DC90:        LDA $0726                 
CODE_29DC93:        BEQ CODE_29DC9A           
CODE_29DC95:        TYA                       
CODE_29DC96:        CLC                       
CODE_29DC97:        ADC #$23                  
CODE_29DC99:        TAY                       
CODE_29DC9A:        LDX $1D80,y               
CODE_29DC9D:        TXA                       
CODE_29DC9E:        ASL A                     
CODE_29DC9F:        TAY                       
CODE_29DCA0:        LDA $0726                 
CODE_29DCA3:        BEQ CODE_29DCAA           
CODE_29DCA5:        TYA                       
CODE_29DCA6:        CLC                       
CODE_29DCA7:        ADC #$12                  
CODE_29DCA9:        TAY                       
CODE_29DCAA:        PHX                       
CODE_29DCAB:        REP #$30                  
CODE_29DCAD:        TYA                       
CODE_29DCAE:        AND #$00FF                
CODE_29DCB1:        TAY                       
CODE_29DCB2:        PHB                       
CODE_29DCB3:        LDX $EF09,y               
CODE_29DCB6:        LDY #$14E0                
CODE_29DCB9:        LDA #$001F                
CODE_29DCBC:        MVN $3C00                 
CODE_29DCBF:        PLB                       
CODE_29DCC0:        SEP #$30                  
CODE_29DCC2:        PLX                       
CODE_29DCC3:        LDA #$01                  
CODE_29DCC5:        STA $1500                 
CODE_29DCC8:        LDA $EEF7,x               
CODE_29DCCB:        STA $1200                 
CODE_29DCCE:        LDA $EF00,x               
CODE_29DCD1:        LDX $0726                 
CODE_29DCD4:        STA $0429                 
CODE_29DCD7:        CMP #$07                  
CODE_29DCD9:        BEQ CODE_29DCE4           
CODE_29DCDB:        CMP #$08                  
CODE_29DCDD:        BNE CODE_29DCE1           
CODE_29DCDF:        LDA #$03                  
CODE_29DCE1:        STA $0747,x               
CODE_29DCE4:        LDA #$14                  
CODE_29DCE6:        STA $0423                 
CODE_29DCE9:        LDX $0726                 
CODE_29DCEC:        LDA $43,x                 
CODE_29DCEE:        STA $A6                   
CODE_29DCF0:        LDA $47,x                 
CODE_29DCF2:        STA $A7                   
CODE_29DCF4:        LDA #$1B                  
CODE_29DCF6:        STA $0E                   
CODE_29DCF8:        LDA $041F                 
CODE_29DCFB:        CLC                       
CODE_29DCFC:        ADC $041D                 
CODE_29DCFF:        TAY                       
CODE_29DD00:        LDA $0726                 
CODE_29DD03:        BEQ CODE_29DD11           
CODE_29DD05:        LDA #$1B                  
CODE_29DD07:        CLC                       
CODE_29DD08:        ADC #$23                  
CODE_29DD0A:        STA $0E                   
CODE_29DD0C:        TYA                       
CODE_29DD0D:        CLC                       
CODE_29DD0E:        ADC #$23                  
CODE_29DD10:        TAY                       
CODE_29DD11:        CPY $0E                   
CODE_29DD13:        BEQ CODE_29DD1F           
CODE_29DD15:        LDA $1D81,y               
CODE_29DD18:        STA $1D80,y               
CODE_29DD1B:        INY                       
CODE_29DD1C:        JMP CODE_29DD11           

CODE_29DD1F:        LDA #$00                  
CODE_29DD21:        STA $1D80,y               
CODE_29DD24:        LDY $041D                 
CODE_29DD27:        BEQ CODE_29DD44           
CODE_29DD29:        LDA $0726                 
CODE_29DD2C:        BEQ CODE_29DD33           
CODE_29DD2E:        TYA                       
CODE_29DD2F:        CLC                       
CODE_29DD30:        ADC #$23                  
CODE_29DD32:        TAY                       
CODE_29DD33:        LDA $1D80,y               
CODE_29DD36:        BNE CODE_29DD44           
CODE_29DD38:        LDA $041D                 
CODE_29DD3B:        SEC                       
CODE_29DD3C:        SBC #$07                  
CODE_29DD3E:        STA $041D                 
CODE_29DD41:        JMP CODE_29DD24           

CODE_29DD44:        JSR CODE_29DB90           
CODE_29DD47:        JMP CODE_29DF1D           

CODE_29DD4A:        INC $0428                 
CODE_29DD4D:        LDA #$03                  
CODE_29DD4F:        STA $02C6                 
CODE_29DD52:        STZ $02C7                 
CODE_29DD55:        LDA #$0A                  
CODE_29DD57:        STA $1200                 
CODE_29DD5A:        JSR CODE_29DCF4           
CODE_29DD5D:        JMP CODE_29DB11           

CODE_29DD60:        LDA $7E396F               
CODE_29DD64:        BEQ CODE_29DD6C           
CODE_29DD66:        LDA #$2A                  
CODE_29DD68:        STA $1203                 
CODE_29DD6B:        RTS                       

CODE_29DD6C:        LDA $7E396F               
CODE_29DD70:        INC A                     
CODE_29DD71:        STA $7E396F               
CODE_29DD75:        LDA #$0C                  
CODE_29DD77:        STA $1200                 
CODE_29DD7A:        JSR CODE_29DCF4           
CODE_29DD7D:        JMP CODE_29DB11           

CODE_29DD80:        LDA #$02                  
CODE_29DD82:        STA $1F55                 
CODE_29DD85:        LDA #$0E                  
CODE_29DD87:        STA $1202                 
CODE_29DD8A:        JSR CODE_29DCF4           
CODE_29DD8D:        JMP CODE_29DB11           

CODE_29DD90:        LDA #$03                  
CODE_29DD92:        STA $00                   
CODE_29DD94:        LDY $00                   
CODE_29DD96:        JSL CODE_238EFC           
CODE_29DD9A:        SEC                       
CODE_29DD9B:        SBC #$51                  
CODE_29DD9D:        CMP #$02                  
CODE_29DD9F:        BCC CODE_29DDA8           
CODE_29DDA1:        DEC $00                   
CODE_29DDA3:        BPL CODE_29DD94           
CODE_29DDA5:        JMP CODE_29DD66           

CODE_29DDA8:        STX $01                   
CODE_29DDAA:        LSR $01                   
CODE_29DDAC:        PHA                       
CODE_29DDAD:        TAX                       
CODE_29DDAE:        LDA $EF2D,x               
CODE_29DDB1:        STA [$2E],y               
CODE_29DDB3:        TYA                       
CODE_29DDB4:        ASL A                     
CODE_29DDB5:        ASL A                     
CODE_29DDB6:        ASL A                     
CODE_29DDB7:        ASL A                     
CODE_29DDB8:        STA $A7                   
CODE_29DDBA:        STA $02                   
CODE_29DDBC:        TYA                       
CODE_29DDBD:        AND #$F0                  
CODE_29DDBF:        CLC                       
CODE_29DDC0:        ADC #$10                  
CODE_29DDC2:        STA $A6                   
CODE_29DDC4:        STA $00                   
CODE_29DDC6:        JSR CODE_29DF76           
CODE_29DDC9:        TYA                       
CODE_29DDCA:        EOR #$40                  
CODE_29DDCC:        TAY                       
CODE_29DDCD:        LDA $1D00,y               
CODE_29DDD0:        ORA $EF4E,x               
CODE_29DDD3:        STA $1D00,y               
CODE_29DDD6:        LDX $A7                   
CODE_29DDD8:        LDA $A6                   
CODE_29DDDA:        SEC                       
CODE_29DDDB:        SBC #$10                  
CODE_29DDDD:        JSL CODE_20973C           
CODE_29DDE1:        LDX $0726                 
CODE_29DDE4:        LDA $45,x                 
CODE_29DDE6:        AND #$01                  
CODE_29DDE8:        BEQ CODE_29DDF0           
CODE_29DDEA:        LDA $0E                   
CODE_29DDEC:        ORA #$04                  
CODE_29DDEE:        STA $0E                   
CODE_29DDF0:        PLA                       
CODE_29DDF1:        PHA                       
CODE_29DDF2:        ASL A                     
CODE_29DDF3:        TAX                       
CODE_29DDF4:        REP #$20                  
CODE_29DDF6:        LDY $1600                 
CODE_29DDF9:        LDA $0E                   
CODE_29DDFB:        STA $1602,y               
CODE_29DDFE:        CLC                       
CODE_29DDFF:        ADC #$0100                
CODE_29DE02:        STA $160A,y               
CODE_29DE05:        LDA #$8003                
CODE_29DE08:        XBA                       
CODE_29DE09:        STA $1604,y               
CODE_29DE0C:        STA $160C,y               
CODE_29DE0F:        LDA $EF2F,x               
CODE_29DE12:        STA $1606,y               
CODE_29DE15:        LDA $EF33,x               
CODE_29DE18:        STA $1608,y               
CODE_29DE1B:        LDA $EF37,x               
CODE_29DE1E:        STA $160E,y               
CODE_29DE21:        LDA $EF3B,x               
CODE_29DE24:        STA $1610,y               
CODE_29DE27:        LDA #$FFFF                
CODE_29DE2A:        STA $1612,y               
CODE_29DE2D:        LDA $1600                 
CODE_29DE30:        CLC                       
CODE_29DE31:        ADC #$0010                
CODE_29DE34:        STA $1600                 
CODE_29DE37:        SEP #$20                  
CODE_29DE39:        PLA                       
CODE_29DE3A:        TAX                       
CODE_29DE3B:        LDA #$07                  
CODE_29DE3D:        STA $1203                 
CODE_29DE40:        LDA #$14                  
CODE_29DE42:        STA $0423                 
CODE_29DE45:        JSR CODE_29DE9E           
CODE_29DE48:        JMP CODE_29DCF4           

CODE_29DE4B:        LDY $0726                 
CODE_29DE4E:        LDX #$00                  
CODE_29DE50:        LDA $0047,y               
CODE_29DE53:        SEC                       
CODE_29DE54:        SBC $0210                 
CODE_29DE57:        CMP #$80                  
CODE_29DE59:        BCS CODE_29DE5D                   
CODE_29DE5B:        LDX #$01                  
CODE_29DE5D:        STX $58                   
CODE_29DE5F:        LDA $EF3F,x               
CODE_29DE62:        STA $56                   
CODE_29DE64:        LDA $0043,y               
CODE_29DE67:        STA $54                   
CODE_29DE69:        STA $7E3974               
CODE_29DE6D:        LDA $0043,y               
CODE_29DE70:        STA $0730                 
CODE_29DE73:        LDA $0047,y               
CODE_29DE76:        STA $0732                 
CODE_29DE79:        LDA $0045,y               
CODE_29DE7C:        STA $0731                 
CODE_29DE7F:        LDA $0052,y               
CODE_29DE82:        STA $0733                 
CODE_29DE85:        LDX #$01                  
CODE_29DE87:        LDA #$00                  
CODE_29DE89:        STA $0722,y               
CODE_29DE8C:        STA $0724,y               
CODE_29DE8F:        STA $25                   
CODE_29DE91:        STX $59                   
CODE_29DE93:        JSR CODE_29DCF4           
CODE_29DE96:        LDA #$0B                  ; \ Warp whistle jingle
CODE_29DE98:        STA $1202                 ; /
CODE_29DE9B:        JMP CODE_29DB11           

CODE_29DE9E:        LDA $A6                   
CODE_29DEA0:        SEC                       
CODE_29DEA1:        SBC #$08                  
CODE_29DEA3:        STA $0861                 
CODE_29DEA6:        STA $0865                 
CODE_29DEA9:        CLC                       
CODE_29DEAA:        ADC #$10                  
CODE_29DEAC:        STA $0869                 
CODE_29DEAF:        STA $086D                 
CODE_29DEB2:        LDA $A7                   
CODE_29DEB4:        SEC                       
CODE_29DEB5:        SBC $0210                 
CODE_29DEB8:        SEC                       
CODE_29DEB9:        SBC #$08                  
CODE_29DEBB:        STA $0860                 
CODE_29DEBE:        STA $0868                 
CODE_29DEC1:        CLC                       
CODE_29DEC2:        ADC #$10                  
CODE_29DEC4:        STA $0864                 
CODE_29DEC7:        STA $086C                 
CODE_29DECA:        LDA #$27                  
CODE_29DECC:        STA $0863                 
CODE_29DECF:        LDA #$67                  
CODE_29DED1:        STA $0867                 
CODE_29DED4:        LDA #$A7                  
CODE_29DED6:        STA $086B                 
CODE_29DED9:        LDA #$E7                  
CODE_29DEDB:        STA $086F                 
CODE_29DEDE:        LDA $0423                 
CODE_29DEE1:        AND #$1C                  
CODE_29DEE3:        LSR A                     
CODE_29DEE4:        LSR A                     
CODE_29DEE5:        TAY                       
CODE_29DEE6:        LDA $EF41,y               
CODE_29DEE9:        STA $0862                 
CODE_29DEEC:        STA $0866                 
CODE_29DEEF:        STA $086A                 
CODE_29DEF2:        STA $086E                 
CODE_29DEF5:        LDA #$02                  
CODE_29DEF7:        STA $0A38                 
CODE_29DEFA:        STA $0A39                 
CODE_29DEFD:        STA $0A3A                 
CODE_29DF00:        STA $0A3B                 
CODE_29DF03:        DEC $0423                 
CODE_29DF06:        LDA $0423                 
CODE_29DF09:        BNE CODE_29DF0E           
CODE_29DF0B:        JMP CODE_29DB11           

CODE_29DF0E:        RTS                       

DATA_29DF0F:        db $00,$01,$02,$01,$02,$01,$03,$00
                    db $01,$00,$00,$00,$03,$00

CODE_29DF1D:        LDY #$C7                  
CODE_29DF1F:        LDA $A8                   
CODE_29DF21:        BEQ CODE_29DF2B           
CODE_29DF23:        LDA $15                   
CODE_29DF25:        AND #$18                  
CODE_29DF27:        BNE CODE_29DF2B           
CODE_29DF29:        LDY #$F0                  
CODE_29DF2B:        STY $0801                 
CODE_29DF2E:        LDA $041D                 
CODE_29DF31:        CLC                       
CODE_29DF32:        ADC $041F                 
CODE_29DF35:        TAY                       
CODE_29DF36:        LDA $0726                 
CODE_29DF39:        BEQ CODE_29DF40           
CODE_29DF3B:        TYA                       
CODE_29DF3C:        CLC                       
CODE_29DF3D:        ADC #$23                  
CODE_29DF3F:        TAY                       
CODE_29DF40:        LDA $041E                 
CODE_29DF43:        STA $0800                 
CODE_29DF46:        REP #$20                  
CODE_29DF48:        LDA $1D80,y               
CODE_29DF4B:        AND #$00FF                
CODE_29DF4E:        TAX                       
CODE_29DF4F:        AND #$0007                
CODE_29DF52:        ASL A                     
CODE_29DF53:        STA $00                   
CODE_29DF55:        TXA                       
CODE_29DF56:        AND #$0008                
CODE_29DF59:        ASL A                     
CODE_29DF5A:        ASL A                     
CODE_29DF5B:        ORA $00                   
CODE_29DF5D:        CLC                       
CODE_29DF5E:        ADC #$00C0                
CODE_29DF61:        STA $0802                 
CODE_29DF64:        SEP #$20                  
CODE_29DF66:        LDA.l DATA_29DF0F,x             
CODE_29DF6A:        ASL A                     
CODE_29DF6B:        ORA #$21                  
CODE_29DF6D:        STA $0803                 
CODE_29DF70:        LDA #$02                  
CODE_29DF72:        STA $0A20                 
CODE_29DF75:        RTS                       

CODE_29DF76:        LDY #$06                  
CODE_29DF78:        LDA $00                   
CODE_29DF7A:        CMP $EF47,y               
CODE_29DF7D:        BEQ CODE_29DF84           
CODE_29DF7F:        DEY                       
CODE_29DF80:        BPL CODE_29DF7A           
CODE_29DF82:        LDY #$07                  
CODE_29DF84:        STY $04                   
CODE_29DF86:        LDA $01                   
CODE_29DF88:        ASL A                     
CODE_29DF89:        ASL A                     
CODE_29DF8A:        ASL A                     
CODE_29DF8B:        ASL A                     
CODE_29DF8C:        STA $03                   
CODE_29DF8E:        LDA $02                   
CODE_29DF90:        LSR A                     
CODE_29DF91:        LSR A                     
CODE_29DF92:        LSR A                     
CODE_29DF93:        LSR A                     
CODE_29DF94:        ORA $03                   
CODE_29DF96:        TAY                       
CODE_29DF97:        LDX $0726                 
CODE_29DF9A:        BEQ CODE_29DFA1           
CODE_29DF9C:        TYA                       
CODE_29DF9D:        CLC                       
CODE_29DF9E:        ADC #$40                  
CODE_29DFA0:        TAY                       
CODE_29DFA1:        LDX $04                   
CODE_29DFA3:        LDA $1D00,y               
CODE_29DFA6:        ORA $EF4E,x               
CODE_29DFA9:        STA $1D00,y               
CODE_29DFAC:        RTS                       

CODE_29DFAD:        JSL CODE_20804D           
CODE_29DFB1:        LDA $0015                 
CODE_29DFB4:        AND #$01                  
CODE_29DFB6:        BNE CODE_29DFAD           
CODE_29DFB8:        DEC $16                   
CODE_29DFBA:        BNE CODE_29DFAD           
CODE_29DFBC:        LDA #$80                  
CODE_29DFBE:        STA $2100                 
CODE_29DFC1:        STZ $05FC                 
CODE_29DFC4:        LDA $7E3955               
CODE_29DFC8:        INC A                     
CODE_29DFC9:        STA $7E3955               
CODE_29DFCD:        JSR CODE_29E01B           
CODE_29DFD0:        LDA $0210                 
CODE_29DFD3:        STA $7E398C               
CODE_29DFD7:        LDA $12                   
CODE_29DFD9:        STA $7E398B               
CODE_29DFDD:        LDA $0216                 
CODE_29DFE0:        STA $7E398E               
CODE_29DFE4:        LDA $13                   
CODE_29DFE6:        STA $7E398D               
CODE_29DFEA:        LDA #$01                  
CODE_29DFEC:        STA $0713                 
CODE_29DFEF:        LDA #$20                  
CODE_29DFF1:        STA $0612                 
CODE_29DFF4:        LDX $25                   
CODE_29DFF6:        BNE CODE_29E002           
CODE_29DFF8:        LDA $23                   
CODE_29DFFA:        SEC                       
CODE_29DFFB:        SBC #$10                  
CODE_29DFFD:        STA $23                   
CODE_29DFFF:        JMP CODE_29E009           

CODE_29E002:        LDA $24                   
CODE_29E004:        CLC                       
CODE_29E005:        ADC #$10                  
CODE_29E007:        STA $24                   
CODE_29E009:        LDA $0414                 
CODE_29E00C:        CMP #$02                  
CODE_29E00E:        BEQ CODE_29E017           
CODE_29E010:        LDA $7E398C               
CODE_29E014:        STA $0210                 
CODE_29E017:        JML CODE_208753           

CODE_29E01B:        LDA $0414                 
CODE_29E01E:        JSL CODE_20FB1F           

PNTR_29E022:        dw $0000
                    dw CODE_29E02E
                    dw CODE_29E065
                    dw CODE_29E117
                    dw CODE_29E1D9
                    dw CODE_29E228

CODE_29E02E:        LDA $1DFE
CODE_29E032:        STA $2B
CODE_29E033:        STA $1EBB                 
CODE_29E036:        LDA $1DFF                 
CODE_29E039:        STA $2C                   
CODE_29E03B:        STA $1EBC                 
CODE_29E03E:        LDA $1E00                 
CODE_29E041:        STA $2D                   
CODE_29E043:        STA $1EBD                 
CODE_29E046:        LDA $1E01                 
CODE_29E049:        STA $31                   
CODE_29E04B:        STA $023A                 
CODE_29E04E:        LDA $1E02                 
CODE_29E051:        STA $32                   
CODE_29E053:        STA $023B                 
CODE_29E056:        LDA $1EBA                 
CODE_29E059:        STA $070A                 
CODE_29E05C:        LDA $0415                 
CODE_29E05F:        EOR #$01                  
CODE_29E061:        STA $0415                 
CODE_29E064:        RTS                       

CODE_29E065:        LDA $1EB8                 
CODE_29E068:        EOR #$01                  
CODE_29E06A:        STA $1EB8                 
CODE_29E06D:        BNE CODE_29E072           
CODE_29E06F:        BRL CODE_29E0F5           

CODE_29E072:        LDA $070A                 
CODE_29E075:        STA $1EB9                 
CODE_29E078:        LDY $0727                 
CODE_29E07B:        LDA $EF86,y               
CODE_29E07E:        STA $070A                 
CODE_29E081:        TYA                       
CODE_29E082:        STA $00                   
CODE_29E084:        ASL A                     
CODE_29E085:        CLC                       
CODE_29E086:        ADC $00                   
CODE_29E088:        TAY                       
CODE_29E089:        LDA $EF56,y               
CODE_29E08C:        STA $2B                   
CODE_29E08E:        LDA $EF57,y               
CODE_29E091:        STA $2C                   
CODE_29E093:        LDA $EF58,y               
CODE_29E096:        STA $2D                   
CODE_29E098:        LDA $EF6E,y               
CODE_29E09B:        STA $31                   
CODE_29E09D:        LDA $EF6F,y               
CODE_29E0A0:        STA $32                   
CODE_29E0A2:        LDX $43                   
CODE_29E0A4:        LDA $1F66,x               
CODE_29E0A7:        PHA                       
CODE_29E0A8:        AND #$0F                  
CODE_29E0AA:        STA $43                   
CODE_29E0AC:        STA $12                   
CODE_29E0AE:        PLA                       
CODE_29E0AF:        AND #$F0                  
CODE_29E0B1:        ORA #$08                  
CODE_29E0B3:        STA $5E                   
CODE_29E0B5:        LDA $1F56,x               
CODE_29E0B8:        PHA                       
CODE_29E0B9:        PHA                       
CODE_29E0BA:        AND #$0F                  
CODE_29E0BC:        STA $0377                 
CODE_29E0BF:        CMP #$03                  
CODE_29E0C1:        BCC CODE_29E0C9           
CODE_29E0C3:        LDA $5E                   
CODE_29E0C5:        AND #$F0                  
CODE_29E0C7:        STA $5E                   
CODE_29E0C9:        PLA                       
CODE_29E0CA:        AND #$80                  
CODE_29E0CC:        STA $0378                 
CODE_29E0CF:        STA $0425                 
CODE_29E0D2:        PLA                       
CODE_29E0D3:        AND #$70                  
CODE_29E0D5:        LSR A                     
CODE_29E0D6:        LSR A                     
CODE_29E0D7:        LSR A                     
CODE_29E0D8:        LSR A                     
CODE_29E0D9:        TAY                       
CODE_29E0DA:        LDA $EF8E,y               
CODE_29E0DD:        PHA                       
CODE_29E0DE:        AND #$0F                  
CODE_29E0E0:        STA $55                   
CODE_29E0E2:        PLA                       
CODE_29E0E3:        AND #$F0                  
CODE_29E0E5:        STA $70                   
CODE_29E0E7:        LDA $EF96,y               
CODE_29E0EA:        STA $0216                 
CODE_29E0ED:        LDA #$00                  
CODE_29E0EF:        STA $0210                 
CODE_29E0F2:        JMP CODE_29E1CD           

CODE_29E0F5:        LDA $1EB9                 
CODE_29E0F8:        STA $070A                 
CODE_29E0FB:        LDA $1EBB                 
CODE_29E0FE:        STA $2B                   
CODE_29E100:        LDA $1EBC                 
CODE_29E103:        STA $2C                   
CODE_29E105:        LDA $1EBD                 
CODE_29E108:        STA $2D                   
CODE_29E10A:        LDA $023A                 
CODE_29E10D:        STA $31                   
CODE_29E10F:        LDA $023B                 
CODE_29E112:        STA $32                   
CODE_29E114:        JMP CODE_29E11A           

CODE_29E117:        JSR CODE_29E02E           
CODE_29E11A:        LDX $43                   
CODE_29E11C:        LDA $0425                 
CODE_29E11F:        BEQ CODE_29E12B           
CODE_29E121:        LDY $55                   
CODE_29E123:        LDA $70                   
CODE_29E125:        JSL CODE_209FC1           
CODE_29E129:        TYA                       
CODE_29E12A:        TAX                       
CODE_29E12B:        LDA $1F66,x               
CODE_29E12E:        PHA                       
CODE_29E12F:        AND #$0F                  
CODE_29E131:        STA $43                   
CODE_29E133:        PLA                       
CODE_29E134:        AND #$F0                  
CODE_29E136:        ORA #$08                  
CODE_29E138:        STA $5E                   
CODE_29E13A:        LDA $1F56,x               
CODE_29E13D:        PHA                       
CODE_29E13E:        PHA                       
CODE_29E13F:        AND #$0F                  
CODE_29E141:        STA $0377                 
CODE_29E144:        CMP #$03                  
CODE_29E146:        BCC CODE_29E14E           
CODE_29E148:        LDA $5E                   
CODE_29E14A:        AND #$F0                  
CODE_29E14C:        STA $5E                   
CODE_29E14E:        PLA                       
CODE_29E14F:        AND #$80                  
CODE_29E151:        STA $0378                 
CODE_29E154:        STA $0425                 
CODE_29E157:        PLA                       
CODE_29E158:        AND #$70                  
CODE_29E15A:        LSR A                     
CODE_29E15B:        LSR A                     
CODE_29E15C:        LSR A                     
CODE_29E15D:        LSR A                     
CODE_29E15E:        TAY                       
CODE_29E15F:        LDA $EF8E,y               
CODE_29E162:        PHA                       
CODE_29E163:        AND #$0F                  
CODE_29E165:        STA $55                   
CODE_29E167:        PLA                       
CODE_29E168:        AND #$F0                  
CODE_29E16A:        STA $70                   
CODE_29E16C:        LDA $EF96,y               
CODE_29E16F:        STA $0216                 
CODE_29E172:        REP #$20                  
CODE_29E174:        LDA $0216                 
CODE_29E177:        LSR A                     
CODE_29E178:        LSR A                     
CODE_29E179:        STA $0218                 
CODE_29E17C:        LDA $0216                 
CODE_29E17F:        SEC                       
CODE_29E180:        SBC $0218                 
CODE_29E183:        STA $0218                 
CODE_29E186:        SEP #$20                  
CODE_29E188:        STZ $0210                 
CODE_29E18B:        STZ $0211                 
CODE_29E18E:        STZ $12                   
CODE_29E190:        STZ $13                   
CODE_29E192:        STZ $0212                 
CODE_29E195:        STZ $0213                 
CODE_29E198:        LDA $0378                 
CODE_29E19B:        BNE CODE_29E1CD           
CODE_29E19D:        LDA $43                   
CODE_29E19F:        STA $12                   
CODE_29E1A1:        BNE CODE_29E1A9           
CODE_29E1A3:        LDA $5E                   
CODE_29E1A5:        CMP #$80                  
CODE_29E1A7:        BCC CODE_29E1C4           
CODE_29E1A9:        LDA $5E                   
CODE_29E1AB:        SEC                       
CODE_29E1AC:        SBC #$80                  
CODE_29E1AE:        STA $0210                 
CODE_29E1B1:        STA $0212                 
CODE_29E1B4:        LDA $12                   
CODE_29E1B6:        SBC #$00                  
CODE_29E1B8:        STA $12                   
CODE_29E1BA:        STA $0211                 
CODE_29E1BD:        LSR A                     
CODE_29E1BE:        STA $0213                 
CODE_29E1C1:        ROR $0212                 
CODE_29E1C4:        LDA $55                   
CODE_29E1C6:        BEQ CODE_29E1CD           
CODE_29E1C8:        LDA #$EF                  
CODE_29E1CA:        STA $0216                 
CODE_29E1CD:        LDA $0210                 
CODE_29E1D0:        STA $B7                   
CODE_29E1D2:        LDA $12                   
CODE_29E1D4:        JSL CODE_2097F5           
CODE_29E1D8:        RTS                       

CODE_29E1D9:        LDY $0727                 
CODE_29E1DC:        LDA $EFCE,y               
CODE_29E1DF:        STA $070A                 
CODE_29E1E2:        TYA                       
CODE_29E1E3:        STA $00                   
CODE_29E1E5:        ASL A                     
CODE_29E1E6:        CLC                       
CODE_29E1E7:        ADC $00                   
CODE_29E1E9:        TAY                       
CODE_29E1EA:        LDA $EF9E,y               
CODE_29E1ED:        STA $2B                   
CODE_29E1EF:        LDA $EF9F,y               
CODE_29E1F2:        STA $2C                   
CODE_29E1F4:        LDA $EFA0,y               
CODE_29E1F7:        STA $2D                   
CODE_29E1F9:        LDA $EFB6,y               
CODE_29E1FC:        STA $31                   
CODE_29E1FE:        LDA $EFB7,y               
CODE_29E201:        STA $32                   
CODE_29E203:        LDA #$00                  
CODE_29E205:        STA $43                   
CODE_29E207:        STA $0210                 
CODE_29E20A:        STA $13                   
CODE_29E20C:        STA $12                   
CODE_29E20E:        STA $0425                 
CODE_29E211:        LDA #$EF                  
CODE_29E213:        STA $0216                 
CODE_29E216:        LDA #$28                  
CODE_29E218:        STA $5E                   
CODE_29E21A:        LDA #$01                  
CODE_29E21C:        STA $55                   
CODE_29E21E:        STA $0377                 
CODE_29E221:        LDA #$80                  
CODE_29E223:        STA $70                   
CODE_29E225:        JMP CODE_29E1CD           

CODE_29E228:        LDA #$00                  
CODE_29E22A:        STA $0210                 
CODE_29E22D:        STA $12                   
CODE_29E22F:        STA $13                   
CODE_29E231:        STA $43                   
CODE_29E233:        STA $0425                 
CODE_29E236:        LDA #$20                  
CODE_29E238:        STA $5E                   
CODE_29E23A:        LDA #$01                  
CODE_29E23C:        STA $55                   
CODE_29E23E:        LDA #$40                  
CODE_29E240:        STA $70                   
CODE_29E242:        LDA #$07                  
CODE_29E244:        STA $070A                 
CODE_29E247:        JMP CODE_29E1CD           

CODE_29E24A:        LDA #$04                  
CODE_29E24C:        STA $101D                 
CODE_29E24F:        STA $101C                 
CODE_29E252:        INC $101B                 
CODE_29E255:        RTS                       

CODE_29E256:        LDA $15                   
CODE_29E258:        AND #$01                  
CODE_29E25A:        BNE CODE_29E26A           
CODE_29E25C:        INC $16                   
CODE_29E25E:        LDA $16                   
CODE_29E260:        CMP #$0F                  
CODE_29E262:        BNE CODE_29E26A           
CODE_29E264:        STZ $101D                 
CODE_29E267:        STZ $101B                 
CODE_29E26A:        RTS                       

CODE_29E26B:        LDA $101E                 
CODE_29E26E:        BNE CODE_29E273           
CODE_29E270:        JSR CODE_29E24A           
CODE_29E273:        RTL                       

CODE_29E274:        LDA $101E                 
CODE_29E277:        BNE CODE_29E294           
CODE_29E279:        LDA $101C                 
CODE_29E27C:        BEQ CODE_29E281           
CODE_29E27E:        DEC $101C                 
CODE_29E281:        LDA $101D                 
CODE_29E284:        BEQ CODE_29E294           
CODE_29E286:        LDA $101C                 
CODE_29E289:        BNE CODE_29E293           
CODE_29E28B:        LDA #$04                  
CODE_29E28D:        STA $101C                 
CODE_29E290:        DEC $101D                 
CODE_29E293:        RTS                       

CODE_29E294:        LDA #$00                  
CODE_29E296:        STA $101B                 
CODE_29E299:        STA $101E                 
CODE_29E29C:        RTS                       

CODE_29E29D:        JSR CODE_29E24A           
CODE_29E2A0:        LDA #$80                  
CODE_29E2A2:        STA $4200                 
CODE_29E2A5:        LDA #$00                  
CODE_29E2A7:        STA $16                   
CODE_29E2A9:        JSL CODE_20804D           
CODE_29E2AD:        JSR CODE_29E256           
CODE_29E2B0:        LDA $101D                 
CODE_29E2B3:        BNE CODE_29E2A9           
CODE_29E2B5:        RTL                       

CODE_29E2B6:        JSL CODE_29E26B           
CODE_29E2BA:        LDA #$A0                  
CODE_29E2BC:        STA $4200                 
CODE_29E2BF:        LDA #$0F                  
CODE_29E2C1:        STA $16                   
CODE_29E2C3:        LDA #$07                  
CODE_29E2C5:        STA $020D                 
CODE_29E2C8:        JSL CODE_20804D           
CODE_29E2CC:        LDA $15                   
CODE_29E2CE:        AND #$01                  
CODE_29E2D0:        BNE CODE_29E2C8           
CODE_29E2D2:        LDA $0350                 
CODE_29E2D5:        CMP #$1B                  
CODE_29E2D7:        BNE CODE_29E2E7           
CODE_29E2D9:        LDA $078E                 
CODE_29E2DC:        BEQ CODE_29E2E7           
CODE_29E2DE:        LDA $020D                 
CODE_29E2E1:        CLC                       
CODE_29E2E2:        ADC #$10                  
CODE_29E2E4:        STA $020D                 
CODE_29E2E7:        DEC $16                   
CODE_29E2E9:        LDA $16                   
CODE_29E2EB:        BNE CODE_29E2C8           
CODE_29E2ED:        JSL CODE_20804D           
CODE_29E2F1:        RTL                       

CODE_29E2F2:        PHB                       
CODE_29E2F3:        LDA #$21                  
CODE_29E2F5:        PHA                       
CODE_29E2F6:        PLB                       
CODE_29E2F7:        LDX $104F                 
CODE_29E2FA:        LDA $1047,x               
CODE_29E2FD:        STA $1051                 
CODE_29E300:        LDA $104B,x               
CODE_29E303:        STA $1053                 
CODE_29E306:        LDY $1045                 
CODE_29E309:        LDX #$80                  
CODE_29E30B:        LDA $104F                 
CODE_29E30E:        AND #$02                  
CODE_29E310:        BEQ CODE_29E317           
CODE_29E312:        LDY $1046                 
CODE_29E315:        LDX #$81                  
CODE_29E317:        STX $2115                 
CODE_29E31A:        STX $FF                   
CODE_29E31C:        LDA $1053                 
CODE_29E31F:        STA $2116                 
CODE_29E322:        LDA $1051                 
CODE_29E325:        STA $2117                 
CODE_29E328:        LDA #$FF                  
CODE_29E32A:        STA $2118                 
CODE_29E32D:        LDA #$00                  
CODE_29E32F:        STA $2119                 
CODE_29E332:        LDA $104F                 
CODE_29E335:        AND #$02                  
CODE_29E337:        BNE CODE_29E356           
CODE_29E339:        INC $1053                 
CODE_29E33C:        LDA $1053                 
CODE_29E33F:        AND #$1F                  
CODE_29E341:        BNE CODE_29E37D           
CODE_29E343:        LDA $1053                 
CODE_29E346:        SEC                       
CODE_29E347:        SBC #$20                  
CODE_29E349:        STA $1053                 
CODE_29E34C:        LDA $1051                 
CODE_29E34F:        EOR #$04                  
CODE_29E351:        STA $1051                 
CODE_29E354:        BRA CODE_29E378           

CODE_29E356:        LDA $1053                 
CODE_29E359:        CLC                       
CODE_29E35A:        ADC #$20                  
CODE_29E35C:        STA $1053                 
CODE_29E35F:        AND #$E0                  
CODE_29E361:        BNE CODE_29E37D           
CODE_29E363:        LDA $1051                 
CODE_29E366:        ADC #$00                  
CODE_29E368:        STA $1051                 
CODE_29E36B:        AND #$03                  
CODE_29E36D:        BNE CODE_29E37D           
CODE_29E36F:        LDA $1051                 
CODE_29E372:        CLC                       
CODE_29E373:        ADC #$04                  
CODE_29E375:        STA $1051                 
CODE_29E378:        DEY                       
CODE_29E379:        BPL CODE_29E317           
CODE_29E37B:        BRA CODE_29E380           

CODE_29E37D:        DEY                       
CODE_29E37E:        BPL CODE_29E328           
CODE_29E380:        JSR CODE_29E3B7           
CODE_29E383:        INC $104F                 
CODE_29E386:        LDA $104F                 
CODE_29E389:        AND #$03                  
CODE_29E38B:        STA $104F                 
CODE_29E38E:        LDY $1050                 
CODE_29E391:        CPY #$06                  
CODE_29E393:        BCS CODE_29E3B5                   
CODE_29E395:        LDA $FF                   
CODE_29E397:        AND #$01                  
CODE_29E399:        BNE CODE_29E3B5           
CODE_29E39B:        LDX #$1F                  
CODE_29E39D:        LDA #$7B                  
CODE_29E39F:        STA $2117                 
CODE_29E3A2:        LDA $EFD6,y               
CODE_29E3A5:        STA $2116                 
CODE_29E3A8:        LDA #$FF                  
CODE_29E3AA:        STA $2118                 
CODE_29E3AD:        LDA #$00                  
CODE_29E3AF:        STA $2119                 
CODE_29E3B2:        DEX                       
CODE_29E3B3:        BPL CODE_29E3A8           
CODE_29E3B5:        PLB                       
CODE_29E3B6:        RTL                       

CODE_29E3B7:        LDA $104F                 
CODE_29E3BA:        JSL CODE_20FB1F           

PNTR_29E3BE:        dw CODE_29E3C6
                    dw CODE_29E429
                    dw CODE_29E405
                    dw CODE_29E444

CODE_29E3C6:        LDX $104F
CODE_29E3C9:        LDA $104B,x
CODE_29E3CC:        AND #$1F
CODE_29E3CE:        CMP #$1F
CODE_29E3D0:        BEQ CODE_29E3F3
CODE_29E3D2:        LDA $104B,x
CODE_29E3D5:        CLC
CODE_29E3D6:        ADC #$21                  
CODE_29E3D8:        STA $104B,x               
CODE_29E3DB:        BCC CODE_29E3F2           
CODE_29E3DD:        LDA $1047,x               
CODE_29E3E0:        ADC #$00                  
CODE_29E3E2:        STA $1047,x               
CODE_29E3E5:        AND #$03                  
CODE_29E3E7:        BNE CODE_29E3F2           
CODE_29E3E9:        LDA $1047,x               
CODE_29E3EC:        CLC                       
CODE_29E3ED:        ADC #$04                  
CODE_29E3EF:        STA $1047,x               
CODE_29E3F2:        RTS                       

CODE_29E3F3:        LDA $104B,x               
CODE_29E3F6:        CLC                       
CODE_29E3F7:        ADC #$01                  
CODE_29E3F9:        STA $104B,x               
CODE_29E3FC:        LDA $1047,x               
CODE_29E3FF:        ADC #$00                  
CODE_29E401:        STA $1047,x               
CODE_29E404:        RTS                       

CODE_29E405:        LDX $104F                 
CODE_29E408:        LDA $104B,x               
CODE_29E40B:        CLC                       
CODE_29E40C:        ADC #$1F                  
CODE_29E40E:        STA $104B,x               
CODE_29E411:        BCC CODE_29E428           
CODE_29E413:        LDA $1047,x               
CODE_29E416:        ADC #$00                  
CODE_29E418:        STA $1047,x               
CODE_29E41B:        AND #$03                  
CODE_29E41D:        BNE CODE_29E428           
CODE_29E41F:        LDA $1047,x               
CODE_29E422:        CLC                       
CODE_29E423:        ADC #$04                  
CODE_29E425:        STA $1047,x               
CODE_29E428:        RTS                       

CODE_29E429:        LDX $104F                 
CODE_29E42C:        LDA $104B,x               
CODE_29E42F:        SEC                       
CODE_29E430:        SBC #$1F                  
CODE_29E432:        STA $104B,x               
CODE_29E435:        LDA $1047,x               
CODE_29E438:        SBC #$00                  
CODE_29E43A:        STA $1047,x               
CODE_29E43D:        DEC $1045                 
CODE_29E440:        DEC $1045                 
CODE_29E443:        RTS                       

CODE_29E444:        LDX $104F                 
CODE_29E447:        LDA $104B,x               
CODE_29E44A:        CLC                       
CODE_29E44B:        ADC #$21                  
CODE_29E44D:        STA $104B,x               
CODE_29E450:        BCC CODE_29E467           
CODE_29E452:        LDA $1047,x               
CODE_29E455:        ADC #$00                  
CODE_29E457:        STA $1047,x               
CODE_29E45A:        AND #$03                  
CODE_29E45C:        BNE CODE_29E467           
CODE_29E45E:        LDA $1047,x               
CODE_29E461:        CLC                       
CODE_29E462:        ADC #$04                  
CODE_29E464:        STA $1047,x               
CODE_29E467:        DEC $1046                 
CODE_29E46A:        DEC $1046                 
CODE_29E46D:        RTS                       

CODE_29E46E:        PHB                       
CODE_29E46F:        LDA #$21                  
CODE_29E471:        PHA                       
CODE_29E472:        PLB                       
CODE_29E473:        LDY $1045                 
CODE_29E476:        LDX #$80                  
CODE_29E478:        LDA $104F                 
CODE_29E47B:        AND #$02                  
CODE_29E47D:        BEQ CODE_29E484           
CODE_29E47F:        LDY $1046                 
CODE_29E482:        LDX #$81                  
CODE_29E484:        TYA                       
CODE_29E485:        ASL A                     
CODE_29E486:        TAY                       
CODE_29E487:        STX $FF                   
CODE_29E489:        STX $2115                 
CODE_29E48C:        LDX $104F                 
CODE_29E48F:        LDA $1047,x               
CODE_29E492:        STA $2117                 
CODE_29E495:        LDA $104B,x               
CODE_29E498:        STA $2116                 
CODE_29E49B:        LDA $0382,y               
CODE_29E49E:        STA $2118                 
CODE_29E4A1:        LDA $0383,y               
CODE_29E4A4:        STA $2119                 
CODE_29E4A7:        CPY $105F                 
CODE_29E4AA:        BEQ CODE_29E4B3           
CODE_29E4AC:        DEY                       
CODE_29E4AD:        DEY                       
CODE_29E4AE:        BPL CODE_29E49B           
CODE_29E4B0:        JMP CODE_29E4D7           

CODE_29E4B3:        LDA #$FE                  
CODE_29E4B5:        STA $105F                 
CODE_29E4B8:        LDA #$08                  
CODE_29E4BA:        STA $2117                 
CODE_29E4BD:        LDA $104B,x               
CODE_29E4C0:        AND #$1F                  
CODE_29E4C2:        STA $2116                 
CODE_29E4C5:        DEY                       
CODE_29E4C6:        DEY                       
CODE_29E4C7:        LDA $0382,y               
CODE_29E4CA:        STA $2118                 
CODE_29E4CD:        LDA $0383,y               
CODE_29E4D0:        STA $2119                 
CODE_29E4D3:        DEY                       
CODE_29E4D4:        DEY                       
CODE_29E4D5:        BPL CODE_29E4C7           
CODE_29E4D7:        JSR CODE_29E4EA           
CODE_29E4DA:        INC $104F                 
CODE_29E4DD:        LDA $104F                 
CODE_29E4E0:        AND #$03                  
CODE_29E4E2:        STA $104F                 
CODE_29E4E5:        INC $1050                 
CODE_29E4E8:        PLB                       
CODE_29E4E9:        RTL                       

CODE_29E4EA:        LDA $104F                 
CODE_29E4ED:        JSL CODE_20FB1F           

PNTR_29E4F1:        dw CODE_29E4F9
                    dw CODE_29E568
                    dw CODE_29E52F
                    dw CODE_29E5B9

CODE_29E4F9:        LDY $1060
CODE_29E4FC:        LDX $104F
CODE_29E4FF:        LDA $EFDC,y
CODE_29E502:        CMP $1047,x
CODE_29E505:        BNE CODE_29E511           
CODE_29E507:        LDA $104B,x               
CODE_29E50A:        CMP $EFE1,y               
CODE_29E50D:        BCS CODE_29E511                   
CODE_29E50F:        BCC CODE_29E522           
CODE_29E511:        LDA $104B,x               
CODE_29E514:        SEC                       
CODE_29E515:        SBC #$21                  
CODE_29E517:        STA $104B,x               
CODE_29E51A:        LDA $1047,x               
CODE_29E51D:        SBC #$00                  
CODE_29E51F:        STA $1047,x               
CODE_29E522:        LDA $1047,x               
CODE_29E525:        CMP #$07                  
CODE_29E527:        BNE CODE_29E52E           
CODE_29E529:        LDA #$03                  
CODE_29E52B:        STA $1047,x               
CODE_29E52E:        RTS                       

CODE_29E52F:        LDX $1060                 
CODE_29E532:        LDA $EFDC,x               
CODE_29E535:        LDX $104F                 
CODE_29E538:        CMP $1047,x               
CODE_29E53B:        BNE CODE_29E54A           
CODE_29E53D:        LDA $104B,x               
CODE_29E540:        CMP #$1E                  
CODE_29E542:        BNE CODE_29E54A           
CODE_29E544:        INC $104B,x               
CODE_29E547:        JMP CODE_29E55B           

CODE_29E54A:        LDA $104B,x               
CODE_29E54D:        SEC                       
CODE_29E54E:        SBC #$1F                  
CODE_29E550:        STA $104B,x               
CODE_29E553:        LDA $1047,x               
CODE_29E556:        SBC #$00                  
CODE_29E558:        STA $1047,x               
CODE_29E55B:        LDA $1047,x               
CODE_29E55E:        CMP #$07                  
CODE_29E560:        BNE CODE_29E567           
CODE_29E562:        LDA #$03                  
CODE_29E564:        STA $1047,x               
CODE_29E567:        RTS                       

CODE_29E568:        LDX $1060                 
CODE_29E56B:        LDA $EFE6,x               
CODE_29E56E:        LDX $104F                 
CODE_29E571:        CMP $1047,x               
CODE_29E574:        BNE CODE_29E586           
CODE_29E576:        LDA $1060                 
CODE_29E579:        CMP #$04                  
CODE_29E57B:        BCC CODE_29E59D           
CODE_29E57D:        LDA $104B,x               
CODE_29E580:        CMP #$E0                  
CODE_29E582:        BCC CODE_29E586           
CODE_29E584:        BCS CODE_29E59D                   
CODE_29E586:        LDA $104B,x               
CODE_29E589:        CLC                       
CODE_29E58A:        ADC #$1F                  
CODE_29E58C:        STA $104B,x               
CODE_29E58F:        LDA $1047,x               
CODE_29E592:        ADC #$00                  
CODE_29E594:        STA $1047,x               
CODE_29E597:        INC $1045                 
CODE_29E59A:        INC $1045                 
CODE_29E59D:        LDA $1047,x               
CODE_29E5A0:        CMP #$04                  
CODE_29E5A2:        BNE CODE_29E5B8           
CODE_29E5A4:        LDA $104B,x               
CODE_29E5A7:        CMP #$00                  
CODE_29E5A9:        BCC CODE_29E5B8           
CODE_29E5AB:        LDA #$08                  
CODE_29E5AD:        STA $1047,x               
CODE_29E5B0:        LDA $104B,x               
CODE_29E5B3:        AND #$1F                  
CODE_29E5B5:        STA $104B,x               
CODE_29E5B8:        RTS                       

CODE_29E5B9:        LDX $1060                 
CODE_29E5BC:        LDA $EFDC,x               
CODE_29E5BF:        LDX $104F                 
CODE_29E5C2:        CMP $1047,x               
CODE_29E5C5:        BNE CODE_29E5DA           
CODE_29E5C7:        LDA $104B,x               
CODE_29E5CA:        CMP #$02                  
CODE_29E5CC:        BNE CODE_29E5DA           
CODE_29E5CE:        DEC $104B,x               
CODE_29E5D1:        LDA $1060                 
CODE_29E5D4:        CMP #$04                  
CODE_29E5D6:        BCC CODE_29E5EE           
CODE_29E5D8:        BEQ CODE_29E5F1           
CODE_29E5DA:        LDA $104B,x               
CODE_29E5DD:        SEC                       
CODE_29E5DE:        SBC #$21                  
CODE_29E5E0:        STA $104B,x               
CODE_29E5E3:        LDA $1047,x               
CODE_29E5E6:        SBC #$00                  
CODE_29E5E8:        STA $1047,x               
CODE_29E5EB:        INC $1046                 
CODE_29E5EE:        INC $1046                 
CODE_29E5F1:        LDA $1047,x               
CODE_29E5F4:        CMP #$07                  
CODE_29E5F6:        BNE CODE_29E5FD           
CODE_29E5F8:        LDA #$03                  
CODE_29E5FA:        STA $1047,x               
CODE_29E5FD:        RTS                       

CODE_29E5FE:        LDA $070A                 
CODE_29E601:        BEQ CODE_29E655           
CODE_29E603:        CMP #$07                  
CODE_29E605:        BEQ CODE_29E655           
CODE_29E607:        CMP #$0F                  
CODE_29E609:        BCS CODE_29E655                   
CODE_29E60B:        LDA $05F3                 
CODE_29E60E:        AND #$7F                  
CODE_29E610:        ORA $058C                 
CODE_29E613:        BNE CODE_29E655           
CODE_29E615:        DEC $05F1                 
CODE_29E618:        BPL CODE_29E655           
CODE_29E61A:        LDA #$28                  
CODE_29E61C:        STA $05F1                 
CODE_29E61F:        DEC $05F0                 
CODE_29E622:        BPL CODE_29E641           
CODE_29E624:        LDA #$09                  
CODE_29E626:        STA $05F0                 
CODE_29E629:        DEC $05EF                 
CODE_29E62C:        BPL CODE_29E641           
CODE_29E62E:        STA $05EF                 
CODE_29E631:        DEC $05EE                 
CODE_29E634:        BPL CODE_29E641           
CODE_29E636:        LDA #$00                  
CODE_29E638:        STA $05EE                 
CODE_29E63B:        STA $05EF                 
CODE_29E63E:        STA $05F0                 
CODE_29E641:        LDA $05EE                 
CODE_29E644:        CMP #$01                  
CODE_29E646:        BNE CODE_29E655           
CODE_29E648:        LDA $05EF                 
CODE_29E64B:        ORA $05F0                 
CODE_29E64E:        BNE CODE_29E655           
CODE_29E650:        LDA #$FF                  
CODE_29E652:        STA $1200                 
CODE_29E655:        LDX #$02                  
CODE_29E657:        LDA $05EE,x               
CODE_29E65A:        ORA #$90                  
CODE_29E65C:        STA $1F52,x               
CODE_29E65F:        DEX                       
CODE_29E660:        BPL CODE_29E657           
CODE_29E662:        RTS                       

CODE_29E663:        LDX $1600                 
CODE_29E666:        LDA #$0F                  
CODE_29E668:        STA $1602,x               
CODE_29E66B:        LDA #$51                  
CODE_29E66D:        STA $1603,x               
CODE_29E670:        LDA #$00                  
CODE_29E672:        STA $1604,x               
CODE_29E675:        LDA #$03                  
CODE_29E677:        STA $1605,x               
CODE_29E67A:        LDA $05EE                 
CODE_29E67D:        ORA #$90                  
CODE_29E67F:        STA $1606,x               
CODE_29E682:        LDA $05EF                 
CODE_29E685:        ORA #$90                  
CODE_29E687:        STA $1608,x               
CODE_29E68A:        LDA $05F0                 
CODE_29E68D:        ORA #$90                  
CODE_29E68F:        STA $160A,x               
CODE_29E692:        LDA #$FF                  
CODE_29E694:        STA $160C,x               
CODE_29E697:        LDA #$22                  
CODE_29E699:        STA $1607,x               
CODE_29E69C:        STA $1609,x               
CODE_29E69F:        STA $160B,x               
CODE_29E6A2:        TXA                       
CODE_29E6A3:        CLC                       
CODE_29E6A4:        ADC #$0A                  
CODE_29E6A6:        STA $1600                 
CODE_29E6A9:        RTS                       

CODE_29E6AA:        LDX $0726                 
CODE_29E6AD:        LDY #$00                  
CODE_29E6AF:        LDA $0736,x               
CODE_29E6B2:        CMP #$FF                  
CODE_29E6B4:        BNE CODE_29E6BA           
CODE_29E6B6:        LDA #$90                  
CODE_29E6B8:        BRA CODE_29E6D0           

CODE_29E6BA:        CMP #$63                  
CODE_29E6BC:        BMI CODE_29E6C3           
CODE_29E6BE:        LDA #$62                  
CODE_29E6C0:        STA $0736,x               
CODE_29E6C3:        INC A                     
CODE_29E6C4:        CMP #$0A                  
CODE_29E6C6:        BMI CODE_29E6CE           
CODE_29E6C8:        SEC                       
CODE_29E6C9:        SBC #$0A                  
CODE_29E6CB:        INY                       
CODE_29E6CC:        BRA CODE_29E6C4           

CODE_29E6CE:        ORA #$90                  
CODE_29E6D0:        STA $1F4B                 
CODE_29E6D3:        TYA                       
CODE_29E6D4:        BNE CODE_29E6DA           
CODE_29E6D6:        LDA #$AD                  
CODE_29E6D8:        BRA CODE_29E6DC           

CODE_29E6DA:        ORA #$90                  
CODE_29E6DC:        STA $1F4A                 
CODE_29E6DF:        RTS                       

CODE_29E6E0:        LDA #$22                  
CODE_29E6E2:        LDX $0726                 
CODE_29E6E5:        BEQ CODE_29E6EA           
CODE_29E6E7:        CLC                       
CODE_29E6E8:        ADC #$23                  
CODE_29E6EA:        LDY #$00                  
CODE_29E6EC:        TAX                       
CODE_29E6ED:        LDA $1D80,x               
CODE_29E6F0:        CLC                       
CODE_29E6F1:        ADC $0422                 
CODE_29E6F4:        STA $1D80,x               
CODE_29E6F7:        CMP #$64                  
CODE_29E6F9:        BCC CODE_29E70C           
CODE_29E6FB:        SEC                       
CODE_29E6FC:        SBC #$64                  
CODE_29E6FE:        STA $1D80,x               
CODE_29E701:        LDX $0726                 
CODE_29E704:        INC $0736,x               
CODE_29E707:        LDA #$05                  
CODE_29E709:        STA $1203                 
CODE_29E70C:        CMP #$0A                  
CODE_29E70E:        BMI CODE_29E716           
CODE_29E710:        SEC                       
CODE_29E711:        SBC #$0A                  
CODE_29E713:        INY                       
CODE_29E714:        BRA CODE_29E70C           

CODE_29E716:        LDX $1600                 
CODE_29E719:        ORA #$90                  
CODE_29E71B:        STA $1F49                 
CODE_29E71E:        TYA                       
CODE_29E71F:        BNE CODE_29E725           
CODE_29E721:        LDA #$AD                  
CODE_29E723:        BRA CODE_29E727           

CODE_29E725:        ORA #$90                  
CODE_29E727:        STA $1F48                 
CODE_29E72A:        LDA #$00                  
CODE_29E72C:        STA $0422                 
CODE_29E72F:        RTS                       

CODE_29E730:        LDY $1600                 
CODE_29E733:        LDX $0727                 
CODE_29E736:        INX                       
CODE_29E737:        TXA                       
CODE_29E738:        ORA #$90                  
CODE_29E73A:        STA $1606,y               
CODE_29E73D:        LDA #$22                  
CODE_29E73F:        STA $1607,y               
CODE_29E742:        LDA #$FF                  
CODE_29E744:        STA $1608,y               
CODE_29E747:        LDX #$0F                  
CODE_29E749:        TXA                       
CODE_29E74A:        STA $1602,y               
CODE_29E74D:        LDA #$26                  
CODE_29E74F:        STA $1603,y               
CODE_29E752:        LDA #$00                  
CODE_29E754:        STA $1604,y               
CODE_29E757:        LDA #$01                  
CODE_29E759:        STA $1605,y               
CODE_29E75C:        LDA $1600                 
CODE_29E75F:        CLC                       
CODE_29E760:        ADC #$06                  
CODE_29E762:        STA $1600                 
CODE_29E765:        RTL                       

CODE_29E766:        LDA $0726                 
CODE_29E769:        ASL A                     
CODE_29E76A:        TAX                       
CODE_29E76B:        LDA #$01                  
CODE_29E76D:        STA $0E                   
CODE_29E76F:        LDY $1600                 
CODE_29E772:        LDA $EFEB,x               
CODE_29E775:        STA $1606,y               
CODE_29E778:        LDA #$22                  
CODE_29E77A:        STA $1607,y               
CODE_29E77D:        INX                       
CODE_29E77E:        INY                       
CODE_29E77F:        INY                       
CODE_29E780:        DEC $0E                   
CODE_29E782:        BPL CODE_29E772           
CODE_29E784:        LDA #$FF                  
CODE_29E786:        STA $1606,y               
CODE_29E789:        LDY $1600                 
CODE_29E78C:        LDA #$0F                  
CODE_29E78E:        STA $1602,y               
CODE_29E791:        LDA #$42                  
CODE_29E793:        STA $1603,y               
CODE_29E796:        LDA #$00                  
CODE_29E798:        STA $1604,y               
CODE_29E79B:        LDA #$03                  
CODE_29E79D:        STA $1605,y               
CODE_29E7A0:        LDA $1600                 
CODE_29E7A3:        CLC                       
CODE_29E7A4:        ADC #$08                  
CODE_29E7A6:        STA $1600                 
CODE_29E7A9:        RTL                       

CODE_29E7AA:        LDA $0717                 
CODE_29E7AD:        CLC                       
CODE_29E7AE:        ADC $069C                 
CODE_29E7B1:        STA $0717                 
CODE_29E7B4:        STA $00                   
CODE_29E7B6:        LDA $0716                 
CODE_29E7B9:        ADC $069D                 
CODE_29E7BC:        STA $0716                 
CODE_29E7BF:        STA $01                   
CODE_29E7C1:        LDA $0715                 
CODE_29E7C4:        ADC #$00                  
CODE_29E7C6:        STA $0715                 
CODE_29E7C9:        STA $02                   
CODE_29E7CB:        LDY #$00                  
CODE_29E7CD:        LDX #$05                  
CODE_29E7CF:        LDA $00                   
CODE_29E7D1:        SEC                       
CODE_29E7D2:        SBC $21F00C,x             
CODE_29E7D6:        STA $00                   
CODE_29E7D8:        LDA $01                   
CODE_29E7DA:        SBC $21F006,x             
CODE_29E7DE:        STA $01                   
CODE_29E7E0:        LDA $02                   
CODE_29E7E2:        SBC $21F000,x             
CODE_29E7E6:        STA $02                   
CODE_29E7E8:        BCC CODE_29E7EF           
CODE_29E7EA:        INC $069E                 
CODE_29E7ED:        BRA CODE_29E7CF           

CODE_29E7EF:        LDA $00                   
CODE_29E7F1:        CLC                       
CODE_29E7F2:        ADC $21F00C,x             
CODE_29E7F6:        STA $00                   
CODE_29E7F8:        LDA $01                   
CODE_29E7FA:        ADC $21F006,x             
CODE_29E7FE:        STA $01                   
CODE_29E800:        LDA $02                   
CODE_29E802:        ADC $21F000,x             
CODE_29E806:        STA $02                   
CODE_29E808:        LDA $069E                 
CODE_29E80B:        ORA #$90                  
CODE_29E80D:        STA $1F4C,y               
CODE_29E810:        LDA #$00                  
CODE_29E812:        STA $069E                 
CODE_29E815:        INY                       
CODE_29E816:        DEX                       
CODE_29E817:        BPL CODE_29E7CF           
CODE_29E819:        LDA $1F4C                 
CODE_29E81C:        CMP #$9A                  
CODE_29E81E:        BCC CODE_29E835           
CODE_29E820:        LDX #$02                  
CODE_29E822:        LDA $F012,x               
CODE_29E825:        STA $0715,x               
CODE_29E828:        DEX                       
CODE_29E829:        BPL CODE_29E822           
CODE_29E82B:        LDX #$05                  
CODE_29E82D:        LDA #$99                  
CODE_29E82F:        STA $1F4C,x               
CODE_29E832:        DEX                       
CODE_29E833:        BPL CODE_29E82F           
CODE_29E835:        STZ $069C                 
CODE_29E838:        STZ $069D                 
CODE_29E83B:        RTL                       

CODE_29E83C:        LDX $1600                 
CODE_29E83F:        LDY #$00                  
CODE_29E841:        LDA $EFEF,y               
CODE_29E844:        STA $1602,x               
CODE_29E847:        INX                       
CODE_29E848:        INY                       
CODE_29E849:        CPY #$11                  
CODE_29E84B:        BNE CODE_29E841           
CODE_29E84D:        LDX $1600                 
CODE_29E850:        LDY #$00                  
CODE_29E852:        LDA $1F4C,y               
CODE_29E855:        STA $1606,x               
CODE_29E858:        INX                       
CODE_29E859:        INX                       
CODE_29E85A:        INY                       
CODE_29E85B:        CPY #$06                  
CODE_29E85D:        BNE CODE_29E852           
CODE_29E85F:        LDY $1600                 
CODE_29E862:        TYA                       
CODE_29E863:        CLC                       
CODE_29E864:        ADC #$10                  
CODE_29E866:        STA $1600                 
CODE_29E869:        RTS                       

CODE_29E86A:        LDY #$00                  
CODE_29E86C:        LDA #$01                  
CODE_29E86E:        STA $0E                   
CODE_29E870:        LDX #$9F                  
CODE_29E872:        LDA $0413                 
CODE_29E875:        AND $0E                   
CODE_29E877:        BEQ CODE_29E87A           
CODE_29E879:        DEX                       
CODE_29E87A:        TXA                       
CODE_29E87B:        STA $1F40,y               
CODE_29E87E:        INY                       
CODE_29E87F:        ASL $0E                   
CODE_29E881:        LDA $0E                   
CODE_29E883:        CMP #$40                  
CODE_29E885:        BNE CODE_29E870           
CODE_29E887:        LDA #$8C                  
CODE_29E889:        STA $1F40,y               
CODE_29E88C:        LDX #$8D                  
CODE_29E88E:        LDA $0413                 
CODE_29E891:        AND $0E                   
CODE_29E893:        BEQ CODE_29E8A6           
CODE_29E895:        DEC $0714                 
CODE_29E898:        LDA $0714                 
CODE_29E89B:        AND #$08                  
CODE_29E89D:        BNE CODE_29E8A6           
CODE_29E89F:        LDA #$8E                  
CODE_29E8A1:        STA $1F40,y               
CODE_29E8A4:        INC A                     
CODE_29E8A5:        TAX                       
CODE_29E8A6:        TXA                       
CODE_29E8A7:        STA $1F41,y               
CODE_29E8AA:        RTS                       

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


CODE_29E8AB:        LDA $38                   ;
CODE_29E8AD:        STA $4314                 ;
CODE_29E8B0:        REP #$10                  ;
CODE_29E8B2:        LDY #$0000                ;
CODE_29E8B5:        LDA [$36],y               ;
CODE_29E8B7:        BPL CODE_29E8BC           ;
CODE_29E8B9:        SEP #$30                  ;
CODE_29E8BB:        RTL                       ;

CODE_29E8BC:        STZ $06                   ;
CODE_29E8BE:        STA $04                   ;
CODE_29E8C0:        INY                       ;
CODE_29E8C1:        LDA [$36],y               ;
CODE_29E8C3:        STA $03                   ;
CODE_29E8C5:        INY                       ;
CODE_29E8C6:        LDA [$36],y               ;
CODE_29E8C8:        AND #$80                  ;
CODE_29E8CA:        ASL A                     ;
CODE_29E8CB:        ROL A                     ;
CODE_29E8CC:        STA $07                   ;
CODE_29E8CE:        LDA [$36],y               ;
CODE_29E8D0:        AND #$40                  ;
CODE_29E8D2:        STA $05                   ;
CODE_29E8D4:        LSR A                     ;
CODE_29E8D5:        LSR A                     ;
CODE_29E8D6:        LSR A                     ;
CODE_29E8D7:        ORA #$01                  ;
CODE_29E8D9:        STA $4310                 ;
CODE_29E8DC:        LDA #$18                  ;
CODE_29E8DE:        STA $4311                 ;
CODE_29E8E1:        REP #$20                  ;
CODE_29E8E3:        LDA $03                   ;
CODE_29E8E5:        STA $2116                 ;
CODE_29E8E8:        LDA [$36],y               ;
CODE_29E8EA:        XBA                       ;
CODE_29E8EB:        AND #$3FFF                ;
CODE_29E8EE:        TAX                       ;
CODE_29E8EF:        INX                       ;
CODE_29E8F0:        STX $4315                 ;
CODE_29E8F3:        INY                       ;
CODE_29E8F4:        INY                       ;
CODE_29E8F5:        TYA                       ;
CODE_29E8F6:        CLC                       ;
CODE_29E8F7:        ADC $36                   ;
CODE_29E8F9:        STA $4312                 ;
CODE_29E8FC:        LDA $05                   ;
CODE_29E8FE:        BEQ CODE_29E934           ;
CODE_29E900:        INX                       ;
CODE_29E901:        TXA                       ;
CODE_29E902:        LSR A                     ;
CODE_29E903:        TAX                       ;
CODE_29E904:        STX $4315                 ;
CODE_29E907:        SEP #$20                  ;
CODE_29E909:        LDA $05                   ;
CODE_29E90B:        LSR A                     ;
CODE_29E90C:        LSR A                     ;
CODE_29E90D:        LSR A                     ;
CODE_29E90E:        STA $4310                 ;
CODE_29E911:        LDA $07                   ;
CODE_29E913:        STA $2115                 ;
CODE_29E916:        LDA #$02                  ;
CODE_29E918:        STA $420B                 ;
CODE_29E91B:        LDA #$19                  ;
CODE_29E91D:        STA $4311                 ;
CODE_29E920:        REP #$21                  ;
CODE_29E922:        TYA                       ;
CODE_29E923:        ADC $36                   ;
CODE_29E925:        INC A                     ;
CODE_29E926:        STA $4312                 ;
CODE_29E929:        LDA $03                   ;
CODE_29E92B:        STA $2116                 ;
CODE_29E92E:        STX $4315                 ;
CODE_29E931:        LDX #$0002                ;
CODE_29E934:        STX $03                   ;
CODE_29E936:        TYA                       ;
CODE_29E937:        CLC                       ;
CODE_29E938:        ADC $03                   ;
CODE_29E93A:        TAY                       ;
CODE_29E93B:        SEP #$20                  ;
CODE_29E93D:        LDA $07                   ;
CODE_29E93F:        ORA #$80                  ;
CODE_29E941:        STA $2115                 ;
CODE_29E944:        LDA #$02                  ;
CODE_29E946:        STA $420B                 ;
CODE_29E949:        LDA [$36],y               ;
CODE_29E94B:        BMI CODE_29E950           ;
CODE_29E94D:        JMP CODE_29E8BE           ;

CODE_29E950:        SEP #$30                  ;
CODE_29E952:        RTL                       ;

CODE_29E953:        LDA $0380                 
CODE_29E956:        BMI CODE_29E9A2           
CODE_29E958:        REP #$20                  
CODE_29E95A:        LDA $0380                 
CODE_29E95D:        XBA                       
CODE_29E95E:        STA $2116                 
CODE_29E961:        LDX #$81                  
CODE_29E963:        STX $2115                 
CODE_29E966:        LDA #$1801                
CODE_29E969:        STA $4300                 
CODE_29E96C:        LDA #$0382                
CODE_29E96F:        STA $4302                 
CODE_29E972:        LDX #$00                  
CODE_29E974:        STX $4304                 
CODE_29E977:        LDA #$0040                
CODE_29E97A:        STA $4305                 
CODE_29E97D:        LDX #$01                  
CODE_29E97F:        STX $420B                 
CODE_29E982:        LDA $0380                 
CODE_29E985:        XBA                       
CODE_29E986:        ORA #$0800                
CODE_29E989:        STA $2116                 
CODE_29E98C:        LDA #$03C2                
CODE_29E98F:        STA $4302                 
CODE_29E992:        LDA #$002C                
CODE_29E995:        STA $4305                 
CODE_29E998:        STX $420B                 
CODE_29E99B:        SEP #$20                  
CODE_29E99D:        LDA #$FF                  
CODE_29E99F:        STA $0380                 
CODE_29E9A2:        RTL                       

CODE_29E9A3:        LDA $7F2000               
CODE_29E9A7:        BMI CODE_29E9F7           
CODE_29E9A9:        LDX #$81                  
CODE_29E9AB:        STX $2115                 
CODE_29E9AE:        REP #$20                  
CODE_29E9B0:        LDA $7F2000               
CODE_29E9B4:        XBA                       
CODE_29E9B5:        STA $2116                 
CODE_29E9B8:        LDA #$1801                
CODE_29E9BB:        STA $4300                 
CODE_29E9BE:        LDA #$2002                
CODE_29E9C1:        STA $4302                 
CODE_29E9C4:        LDX #$7F                  
CODE_29E9C6:        STX $4304                 
CODE_29E9C9:        LDA #$0040                
CODE_29E9CC:        STA $4305                 
CODE_29E9CF:        LDX #$01                  
CODE_29E9D1:        STX $420B                 
CODE_29E9D4:        LDA $7F2000               
CODE_29E9D8:        XBA                       
CODE_29E9D9:        CLC                       
CODE_29E9DA:        ADC #$0800                
CODE_29E9DD:        STA $2116                 
CODE_29E9E0:        LDA #$2042                
CODE_29E9E3:        STA $4302                 
CODE_29E9E6:        LDA #$002C                
CODE_29E9E9:        STA $4305                 
CODE_29E9EC:        STX $420B                 
CODE_29E9EF:        SEP #$20                  
CODE_29E9F1:        LDA #$FF                  
CODE_29E9F3:        STA $7F2000               
CODE_29E9F7:        RTL                       

CODE_29E9F8:        LDA $7F2000               
CODE_29E9FC:        BMI CODE_29EA31           
CODE_29E9FE:        REP #$20                  
CODE_29EA00:        LDA $7F2000               
CODE_29EA04:        XBA                       
CODE_29EA05:        STA $2116                 
CODE_29EA08:        LDX #$80                  
CODE_29EA0A:        STX $2115                 
CODE_29EA0D:        LDA #$1801                
CODE_29EA10:        STA $4300                 
CODE_29EA13:        LDA #$2002                
CODE_29EA16:        STA $4302                 
CODE_29EA19:        LDX #$7F                  
CODE_29EA1B:        STX $4304                 
CODE_29EA1E:        LDA #$0040                
CODE_29EA21:        STA $4305                 
CODE_29EA24:        LDX #$01                  
CODE_29EA26:        STX $420B                 
CODE_29EA29:        SEP #$20                  
CODE_29EA2B:        LDA #$FF                  
CODE_29EA2D:        STA $7F2000               
CODE_29EA31:        RTL                       

CODE_29EA32:        LDA $0380                 
CODE_29EA35:        BMI CODE_29EA68           
CODE_29EA37:        LDX #$80                  
CODE_29EA39:        STX $2115                 
CODE_29EA3C:        REP #$20                  
CODE_29EA3E:        LDA $0380                 
CODE_29EA41:        XBA                       
CODE_29EA42:        STA $2116                 
CODE_29EA45:        LDA #$1801                
CODE_29EA48:        STA $4300                 
CODE_29EA4B:        LDA #$0382                
CODE_29EA4E:        STA $4302                 
CODE_29EA51:        LDX #$00                  
CODE_29EA53:        STX $4304                 
CODE_29EA56:        LDA #$0040                
CODE_29EA59:        STA $4305                 
CODE_29EA5C:        LDX #$01                  
CODE_29EA5E:        STX $420B                 
CODE_29EA61:        SEP #$20                  
CODE_29EA63:        LDA #$FF                  
CODE_29EA65:        STA $0380                 
CODE_29EA68:        RTL                       

CODE_29EA69:        LDY $036C                 
CODE_29EA6C:        BMI CODE_29EA68           
CODE_29EA6E:        LDX #$80                  
CODE_29EA70:        STX $2115                 
CODE_29EA73:        STY $2117                 
CODE_29EA76:        LDA $036D                 
CODE_29EA79:        STA $2116                 
CODE_29EA7C:        CLC                       
CODE_29EA7D:        ADC #$20                  
CODE_29EA7F:        TAX                       
CODE_29EA80:        REP #$20                  
CODE_29EA82:        LDA $036E                 
CODE_29EA85:        STA $2118                 
CODE_29EA88:        LDA $0370                 
CODE_29EA8B:        STA $2118                 
CODE_29EA8E:        STX $2116                 
CODE_29EA91:        LDA $0372                 
CODE_29EA94:        STA $2118                 
CODE_29EA97:        LDA $0374                 
CODE_29EA9A:        STA $2118                 
CODE_29EA9D:        SEP #$20                  
CODE_29EA9F:        LDA #$FF                  
CODE_29EAA1:        STA $036C                 
CODE_29EAA4:        RTL                       

CODE_29EAA5:        JSR CODE_29E86A           
CODE_29EAA8:        JSR CODE_29E6E0           
CODE_29EAAB:        JSR CODE_29E6AA           
CODE_29EAAE:        JSL CODE_29E7AA           
CODE_29EAB2:        JSR CODE_29E5FE           
CODE_29EAB5:        LDX #$00                  
CODE_29EAB7:        LDY $1600                 
CODE_29EABA:        BEQ CODE_29EAC3           
CODE_29EABC:        TXA                       
CODE_29EABD:        STA $7E3954               
CODE_29EAC1:        BRA CODE_29EAD7           

CODE_29EAC3:        LDA $7E3954               
CODE_29EAC7:        INC A                     
CODE_29EAC8:        STA $7E3954               
CODE_29EACC:        AND #$01                  
CODE_29EACE:        BNE CODE_29EAD7           
CODE_29EAD0:        LDA #$00                  
CODE_29EAD2:        STA $7E3954               
CODE_29EAD6:        RTL                       

CODE_29EAD7:        LDA $21F02A,x             
CODE_29EADB:        STA $1602,y               
CODE_29EADE:        INY                       
CODE_29EADF:        INX                       
CODE_29EAE0:        CPX #$3F                  
CODE_29EAE2:        BNE CODE_29EAD7           
CODE_29EAE4:        LDY $1600                 
CODE_29EAE7:        LDX #$00                  
CODE_29EAE9:        LDA $1F40,x               
CODE_29EAEC:        STA $1606,y               
CODE_29EAEF:        INY                       
CODE_29EAF0:        INY                       
CODE_29EAF1:        INX                       
CODE_29EAF2:        CPX #$08                  
CODE_29EAF4:        BNE CODE_29EAE9           
CODE_29EAF6:        LDY $1600                 
CODE_29EAF9:        LDA $1F48                 
CODE_29EAFC:        STA $161A,y               
CODE_29EAFF:        LDA $1F49                 
CODE_29EB02:        STA $161C,y               
CODE_29EB05:        LDY $1600                 
CODE_29EB08:        LDA $1F4A                 
CODE_29EB0B:        STA $1622,y               
CODE_29EB0E:        LDA $1F4B                 
CODE_29EB11:        STA $1624,y               
CODE_29EB14:        LDY $1600                 
CODE_29EB17:        LDX #$00                  
CODE_29EB19:        LDA $1F4C,x               
CODE_29EB1C:        STA $1628,y               
CODE_29EB1F:        INY                       
CODE_29EB20:        INY                       
CODE_29EB21:        INX                       
CODE_29EB22:        CPX #$06                  
CODE_29EB24:        BNE CODE_29EB19           
CODE_29EB26:        LDY $1600                 
CODE_29EB29:        LDX #$00                  
CODE_29EB2B:        LDA $1F52,x               
CODE_29EB2E:        STA $163A,y               
CODE_29EB31:        INY                       
CODE_29EB32:        INY                       
CODE_29EB33:        INX                       
CODE_29EB34:        CPX #$03                  
CODE_29EB36:        BNE CODE_29EB2B           
CODE_29EB38:        LDA $1600                 
CODE_29EB3B:        CLC                       
CODE_29EB3C:        ADC #$3E                  
CODE_29EB3E:        STA $1600                 
CODE_29EB41:        RTL                       

CODE_29EB42:        LDY #$00                  
CODE_29EB44:        LDA [$31],y               
CODE_29EB46:        STA $1B40,y               
CODE_29EB49:        INY                       
CODE_29EB4A:        LDA [$31],y               
CODE_29EB4C:        STA $1B40,y               
CODE_29EB4F:        CMP #$FF                  
CODE_29EB51:        BEQ CODE_29EB62           
CODE_29EB53:        INY                       
CODE_29EB54:        LDA [$31],y               
CODE_29EB56:        STA $1B40,y               
CODE_29EB59:        INY                       
CODE_29EB5A:        LDA [$31],y               
CODE_29EB5C:        STA $1B40,y               
CODE_29EB5F:        JMP CODE_29EB49           

CODE_29EB62:        RTL                       

CODE_29EB63:        REP #$20                  
CODE_29EB65:        LDA #$7C00                
CODE_29EB68:        STA $023E                 
CODE_29EB6B:        LDA #$B000                
CODE_29EB6E:        STA $0240                 
CODE_29EB71:        LDX #$38                  
CODE_29EB73:        STX $0242                 
CODE_29EB76:        LDA #$0800                
CODE_29EB79:        STA $02CA                 
CODE_29EB7C:        SEP #$20                  
CODE_29EB7E:        RTS                       

CODE_29EB7F:        REP #$20                  
CODE_29EB81:        LDA #$7C00                
CODE_29EB84:        STA $023E                 
CODE_29EB87:        LDA #$B800                
CODE_29EB8A:        STA $0240                 
CODE_29EB8D:        LDX #$3F                  
CODE_29EB8F:        STX $0242                 
CODE_29EB92:        LDA #$0800                
CODE_29EB95:        STA $02CA                 
CODE_29EB98:        SEP #$20                  
CODE_29EB9A:        RTS                       

CODE_29EB9B:        REP #$20                  
CODE_29EB9D:        LDA #$7C00                
CODE_29EBA0:        STA $023E                 
CODE_29EBA3:        LDA #$F800                
CODE_29EBA6:        STA $0240                 
CODE_29EBA9:        LDX #$38                  
CODE_29EBAB:        STX $0242                 
CODE_29EBAE:        LDA #$0800                
CODE_29EBB1:        STA $02CA                 
CODE_29EBB4:        SEP #$20                  
CODE_29EBB6:        RTS                       

CODE_29EBB7:        PHX                       
CODE_29EBB8:        PHY                       
CODE_29EBB9:        LDA $028C                 
CODE_29EBBC:        BNE CODE_29EBEA           
CODE_29EBBE:        JSR CODE_29EB63           
CODE_29EBC1:        JSR CODE_29F153           
CODE_29EBC4:        JSR CODE_29F0E1           
CODE_29EBC7:        JSR CODE_29EC16           
CODE_29EBCA:        LDA #$01                  
CODE_29EBCC:        STA $396D                 
CODE_29EBCF:        STA $028C                 
CODE_29EBD2:        STZ $028E                 
CODE_29EBD5:        STZ $028F                 
CODE_29EBD8:        STZ $0290                 
CODE_29EBDB:        STZ $02DD                 
CODE_29EBDE:        LDA #$F1                  
CODE_29EBE0:        STA $1202                 
CODE_29EBE3:        LDA #$43                  
CODE_29EBE5:        STA $1200                 
CODE_29EBE8:        BRA CODE_29EBF4           

CODE_29EBEA:        LDA #$11                  
CODE_29EBEC:        STA $028B                 
CODE_29EBEF:        LDA #$03                  
CODE_29EBF1:        STA $028C                 
CODE_29EBF4:        PLY                       
CODE_29EBF5:        PLX                       
CODE_29EBF6:        RTL                       

CODE_29EBF7:        PHB                       
CODE_29EBF8:        PHK                       
CODE_29EBF9:        PLB                       
CODE_29EBFA:        PHX                       
CODE_29EBFB:        PHY                       
CODE_29EBFC:        LDA $028C                 
CODE_29EBFF:        ASL A                     
CODE_29EC00:        TAX                       
CODE_29EC01:        LDA.w PNTR_29EC0E,x               
CODE_29EC04:        STA $00                   
CODE_29EC06:        LDA.w PNTR_29EC0E+1,x               
CODE_29EC09:        STA $01                   
CODE_29EC0B:        JMP ($0000)               

PNTR_29EC0E:        dw $0000
                    dw CODE_29EFB3
                    dw CODE_29EC39
                    dw CODE_29F01F
   
CODE_29EC16:        REP #$20           
CODE_29EC18:        LDA #$0010
CODE_29EC1B:        STA $028B        
CODE_29EC1E:        LDA #$0064
CODE_29EC21:        STA $0281                 
CODE_29EC24:        LDA #$00A4         
CODE_29EC27:        STA $0283
CODE_29EC2A:        LDA #$00C0                 
CODE_29EC2D:        STA $0285
CODE_29EC30:        LDA #$00D0                
CODE_29EC33:        STA $0289
CODE_29EC36:        SEP #$20                  
CODE_29EC38:        RTS                       

CODE_29EC39:        REP #$10                  
CODE_29EC3B:        LDY #$0010                
CODE_29EC3E:        LDX #$0000                
CODE_29EC41:        LDA #$48                  
CODE_29EC43:        STA $01                   
CODE_29EC45:        LDA #$58                  
CODE_29EC47:        STA $00                   
CODE_29EC49:        LDA $02E5                 
CODE_29EC4C:        BEQ CODE_29EC53           
CODE_29EC4E:        LDA.w DATA_29EF64,x               
CODE_29EC51:        BRA CODE_29EC56           

CODE_29EC53:        LDA.w DATA_29EF15,x               
CODE_29EC56:        BPL CODE_29EC70           
CODE_29EC58:        INX                       
CODE_29EC59:        INC A                     
CODE_29EC5A:        BEQ CODE_29ECA5           
CODE_29EC5C:        LDA $00                   
CODE_29EC5E:        CLC                       
CODE_29EC5F:        ADC #$08                  
CODE_29EC61:        STA $00                   
CODE_29EC63:        CMP #$C0                  
CODE_29EC65:        BCC CODE_29EC49           
CODE_29EC67:        LDA $01                   
CODE_29EC69:        CLC                       
CODE_29EC6A:        ADC #$08                  
CODE_29EC6C:        STA $01                   
CODE_29EC6E:        BRA CODE_29EC45           

CODE_29EC70:        CLC                       
CODE_29EC71:        ADC #$C0                  
CODE_29EC73:        STA $0802,y               
CODE_29EC76:        LDA $00                   
CODE_29EC78:        STA $0800,y               
CODE_29EC7B:        LDA $01                   
CODE_29EC7D:        STA $0801,y               
CODE_29EC80:        LDA $0598                 
CODE_29EC83:        BEQ CODE_29EC89           
CODE_29EC85:        LDA #$2B                  
CODE_29EC87:        BRA CODE_29EC8B           

CODE_29EC89:        LDA #$21                  
CODE_29EC8B:        STA $0803,y               
CODE_29EC8E:        REP #$20                  
CODE_29EC90:        PHY                       
CODE_29EC91:        TYA                       
CODE_29EC92:        LSR A                     
CODE_29EC93:        LSR A                     
CODE_29EC94:        TAY                       
CODE_29EC95:        LDA #$0000                
CODE_29EC98:        STA $0A20,y               
CODE_29EC9B:        PLY                       
CODE_29EC9C:        SEP #$20                  
CODE_29EC9E:        INX                       
CODE_29EC9F:        INY                       
CODE_29ECA0:        INY                       
CODE_29ECA1:        INY                       
CODE_29ECA2:        INY                       
CODE_29ECA3:        BRA CODE_29EC5C           

CODE_29ECA5:        LDA #$40                  
CODE_29ECA7:        STA $01                   
CODE_29ECA9:        LDA #$40                  
CODE_29ECAB:        STA $00                   
CODE_29ECAD:        LDA $00                   
CODE_29ECAF:        STA $0800,y               
CODE_29ECB2:        CLC                       
CODE_29ECB3:        ADC #$10                  
CODE_29ECB5:        STA $00                   
CODE_29ECB7:        LDA $01                   
CODE_29ECB9:        STA $0801,y               
CODE_29ECBC:        LDA #$CD                  
CODE_29ECBE:        STA $0802,y               
CODE_29ECC1:        LDA $0598                 
CODE_29ECC4:        BEQ CODE_29ECCA           
CODE_29ECC6:        LDA #$2B                  
CODE_29ECC8:        BRA CODE_29ECCC           

CODE_29ECCA:        LDA #$21                  
CODE_29ECCC:        STA $0803,y               
CODE_29ECCF:        REP #$20                  
CODE_29ECD1:        PHY                       
CODE_29ECD2:        TYA                       
CODE_29ECD3:        LSR A                     
CODE_29ECD4:        LSR A                     
CODE_29ECD5:        TAY                       
CODE_29ECD6:        LDA #$0002                
CODE_29ECD9:        STA $0A20,y               
CODE_29ECDC:        PLY                       
CODE_29ECDD:        SEP #$20                  
CODE_29ECDF:        INY                       
CODE_29ECE0:        INY                       
CODE_29ECE1:        INY                       
CODE_29ECE2:        INY                       
CODE_29ECE3:        LDA $00                   
CODE_29ECE5:        CMP #$D0                  
CODE_29ECE7:        BCC CODE_29ECAD           
CODE_29ECE9:        LDA $01                   
CODE_29ECEB:        CMP #$80                  
CODE_29ECED:        BCS CODE_29ECF6                   
CODE_29ECEF:        CLC                       
CODE_29ECF0:        ADC #$10                  
CODE_29ECF2:        STA $01                   
CODE_29ECF4:        BRA CODE_29ECA9           

CODE_29ECF6:        SEP #$10                  
CODE_29ECF8:        LDY #$00                  
CODE_29ECFA:        LDA $02E5                 
CODE_29ECFD:        BNE CODE_29ED02           
CODE_29ECFF:        JMP CODE_29EE07           

CODE_29ED02:        LDX $0726                 
CODE_29ED05:        LDA $F6,x                 
CODE_29ED07:        AND #$2C                  
CODE_29ED09:        STA $0F                   
CODE_29ED0B:        LDA $028C                 
CODE_29ED0E:        CMP #$01                  
CODE_29ED10:        BEQ CODE_29ED4A           
CODE_29ED12:        LDA $0F                   
CODE_29ED14:        AND #$20                  
CODE_29ED16:        BEQ CODE_29ED22           
CODE_29ED18:        LDA #$01                  
CODE_29ED1A:        EOR $028E                 
CODE_29ED1D:        STA $028E                 
CODE_29ED20:        BRA CODE_29ED42           

CODE_29ED22:        LDA $0F                   
CODE_29ED24:        AND #$08                  
CODE_29ED26:        BEQ CODE_29ED32           
CODE_29ED28:        LDA $028E                 
CODE_29ED2B:        BEQ CODE_29ED4A           
CODE_29ED2D:        STZ $028E                 
CODE_29ED30:        BRA CODE_29ED42           

CODE_29ED32:        LDA $0F                   
CODE_29ED34:        AND #$04                  
CODE_29ED36:        BEQ CODE_29ED4A           
CODE_29ED38:        LDA $028E                 
CODE_29ED3B:        BNE CODE_29ED4A           
CODE_29ED3D:        LDA #$01                  
CODE_29ED3F:        STA $028E                 
CODE_29ED42:        LDA #$01                  
CODE_29ED44:        STA $1203                 
CODE_29ED47:        STZ $028F                 
CODE_29ED4A:        INC $028F                 
CODE_29ED4D:        LDA #$5C                  
CODE_29ED4F:        STA $0800,y               
CODE_29ED52:        LDX $028E                 
CODE_29ED55:        LDA.w DATA_29EF11,x               
CODE_29ED58:        STA $0801,y               
CODE_29ED5B:        LDA $028F                 
CODE_29ED5E:        AND #$10                  
CODE_29ED60:        LSR A                     
CODE_29ED61:        LSR A                     
CODE_29ED62:        LSR A                     
CODE_29ED63:        LSR A                     
CODE_29ED64:        TAX                       
CODE_29ED65:        LDA.w DATA_29EF13,x               
CODE_29ED68:        STA $0802,y               
CODE_29ED6B:        LDA #$23                  
CODE_29ED6D:        STA $0803,y               
CODE_29ED70:        LDA #$00                  
CODE_29ED72:        STA $0A20,y               
CODE_29ED75:        LDA $028C                 
CODE_29ED78:        CMP #$01                  
CODE_29ED7A:        BEQ CODE_29EDB5           
CODE_29ED7C:        LDX $0726                 
CODE_29ED7F:        LDA $F6,x                 
CODE_29ED81:        AND #$10                  
CODE_29ED83:        BEQ CODE_29EDB5           
CODE_29ED85:        LDA #$22                  
CODE_29ED87:        STA $02DD                 
CODE_29ED8A:        LDA $028E                 
CODE_29ED8D:        BNE CODE_29ED96           
CODE_29ED8F:        LDA #$43                  
CODE_29ED91:        STA $1200                 
CODE_29ED94:        BRA CODE_29ED9B           

CODE_29ED96:        LDA #$3B                  
CODE_29ED98:        STA $1200                 
CODE_29ED9B:        JSL CODE_20804D           
CODE_29ED9F:        DEC $02DD                 
CODE_29EDA2:        BNE CODE_29ED9B           
CODE_29EDA4:        LDA $028E                 
CODE_29EDA7:        BEQ CODE_29EDAC           
CODE_29EDA9:        JSR CODE_29EDB9           
CODE_29EDAC:        LDA #$F3                  
CODE_29EDAE:        STA $1202                 
CODE_29EDB1:        JML CODE_0080DE           

CODE_29EDB5:        PLY                       
CODE_29EDB6:        PLX                       
CODE_29EDB7:        PLB                       
CODE_29EDB8:        RTL                       

CODE_29EDB9:        LDX #$00                  
CODE_29EDBB:        LDA $0726                 
CODE_29EDBE:        BEQ CODE_29EDC2           
CODE_29EDC0:        LDX #$23                  
CODE_29EDC2:        LDA $0715                 
CODE_29EDC5:        STA $1D9F,x               
CODE_29EDC8:        LDA $0716                 
CODE_29EDCB:        STA $1DA0,x               
CODE_29EDCE:        LDA $0717                 
CODE_29EDD1:        STA $1DA1,x               
CODE_29EDD4:        REP #$20                  
CODE_29EDD6:        LDX #$08                  
CODE_29EDD8:        LDA $21E43C,x             
CODE_29EDDC:        STA $1EED,x               
CODE_29EDDF:        LDA $21E484,x             
CODE_29EDE3:        STA $1F09,x               
CODE_29EDE6:        LDA $21E4CC,x             
CODE_29EDEA:        STA $1EFB,x               
CODE_29EDED:        LDA $21E514,x             
CODE_29EDF1:        STA $1F17,x               
CODE_29EDF4:        DEX                       
CODE_29EDF5:        DEX                       
CODE_29EDF6:        BPL CODE_29EDD8           
CODE_29EDF8:        SEP #$20                  
CODE_29EDFA:        LDX #$7F                  
CODE_29EDFC:        STZ $1D00,x               
CODE_29EDFF:        DEX                       
CODE_29EE00:        BPL CODE_29EDFC           
CODE_29EE02:        JSL CODE_00922D           
CODE_29EE06:        RTS                       

CODE_29EE07:        LDX $0726                 
CODE_29EE0A:        LDA $00F6,x               
CODE_29EE0D:        AND #$2C                  
CODE_29EE0F:        STA $0F                   
CODE_29EE11:        LDA $028C                 
CODE_29EE14:        CMP #$01                  
CODE_29EE16:        BEQ CODE_29EE6F           
CODE_29EE18:        CMP #$03                  
CODE_29EE1A:        BEQ CODE_29EE6F           
CODE_29EE1C:        LDA $0F                   
CODE_29EE1E:        BEQ CODE_29EE6F           
CODE_29EE20:        AND #$20                  
CODE_29EE22:        BNE CODE_29EE5A           
CODE_29EE24:        LDA $0F                   
CODE_29EE26:        AND #$08                  
CODE_29EE28:        BNE CODE_29EE43           
CODE_29EE2A:        INC $028E                 
CODE_29EE2D:        LDA $028E                 
CODE_29EE30:        CMP #$03                  
CODE_29EE32:        BCC CODE_29EE39           
CODE_29EE34:        DEC $028E                 
CODE_29EE37:        BRA CODE_29EE6F           

CODE_29EE39:        LDA #$01                  
CODE_29EE3B:        STA $1203                 
CODE_29EE3E:        STZ $028F                 
CODE_29EE41:        BRA CODE_29EE6F           

CODE_29EE43:        DEC $028E                 
CODE_29EE46:        LDA $028E                 
CODE_29EE49:        BPL CODE_29EE50           
CODE_29EE4B:        INC $028E                 
CODE_29EE4E:        BRA CODE_29EE6F           

CODE_29EE50:        LDA #$01                  
CODE_29EE52:        STA $1203                 
CODE_29EE55:        STZ $028F                 
CODE_29EE58:        BRA CODE_29EE6F           

CODE_29EE5A:        INC $028E                 
CODE_29EE5D:        LDA $028E                 
CODE_29EE60:        CMP #$03                  
CODE_29EE62:        BCC CODE_29EE67           
CODE_29EE64:        STZ $028E                 
CODE_29EE67:        LDA #$01                  
CODE_29EE69:        STA $1203                 
CODE_29EE6C:        STZ $028F                 
CODE_29EE6F:        LDA #$4C                  
CODE_29EE71:        STA $0800,y               
CODE_29EE74:        LDX $028E                 
CODE_29EE77:        LDA.w DATA_29EF0E,x               
CODE_29EE7A:        STA $0801,y               
CODE_29EE7D:        LDA $028F                 
CODE_29EE80:        AND #$10                  
CODE_29EE82:        LSR A                     
CODE_29EE83:        LSR A                     
CODE_29EE84:        LSR A                     
CODE_29EE85:        LSR A                     
CODE_29EE86:        TAX                       
CODE_29EE87:        LDA.w DATA_29EF13,x               
CODE_29EE8A:        STA $0802,y               
CODE_29EE8D:        LDA $0598                 
CODE_29EE90:        BEQ CODE_29EE96           
CODE_29EE92:        LDA #$2B                  
CODE_29EE94:        BRA CODE_29EE98           

CODE_29EE96:        LDA #$23                  
CODE_29EE98:        STA $0803,y               
CODE_29EE9B:        LDA #$00                  
CODE_29EE9D:        STA $0A20,y               
CODE_29EEA0:        INC $028F                 
CODE_29EEA3:        LDA $0290                 
CODE_29EEA6:        BEQ CODE_29EF07           
CODE_29EEA8:        LDA $18                   
CODE_29EEAA:        AND #$10                  
CODE_29EEAC:        BEQ CODE_29EF07           
CODE_29EEAE:        LDA $028E                 
CODE_29EEB1:        BEQ CODE_29EF07           
CODE_29EEB3:        LDX #$00                  
CODE_29EEB5:        LDY $0726                 
CODE_29EEB8:        BEQ CODE_29EEBC           
CODE_29EEBA:        LDX #$23                  
CODE_29EEBC:        LDA $0715                 
CODE_29EEBF:        STA $1D9F,x               
CODE_29EEC2:        LDA $0716                 
CODE_29EEC5:        STA $1DA0,x               
CODE_29EEC8:        LDA $0717                 
CODE_29EECB:        STA $1DA1,x               
CODE_29EECE:        LDA #$3B                  
CODE_29EED0:        STA $1200                 
CODE_29EED3:        LDA $028E                 
CODE_29EED6:        CMP #$01                  
CODE_29EED8:        BEQ CODE_29EEDF           
CODE_29EEDA:        LDA #$F3                  
CODE_29EEDC:        STA $1202                 
CODE_29EEDF:        JSL CODE_00922D           
CODE_29EEE3:        LDA #$22                  
CODE_29EEE5:        STA $02DD                 
CODE_29EEE8:        JSL CODE_20804D           
CODE_29EEEC:        DEC $02DD                 
CODE_29EEEF:        BNE CODE_29EEE8           
CODE_29EEF1:        STZ $0290                 
CODE_29EEF4:        LDA $028E                 
CODE_29EEF7:        CMP #$01                  
CODE_29EEF9:        BEQ CODE_29EF07           
CODE_29EEFB:        STZ $1200                 
CODE_29EEFE:        LDA #$80                  
CODE_29EF00:        STA $1202                 
CODE_29EF03:        JML CODE_0080DE           

CODE_29EF07:        STZ $02DD                 
CODE_29EF0A:        PLY                       
CODE_29EF0B:        PLX                       
CODE_29EF0C:        PLB                       
CODE_29EF0D:        RTL                       

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

CODE_29EFB3:        LDA $028B
CODE_29EFB6:        BEQ CODE_29F016           
CODE_29EFB8:        BMI CODE_29F016           
CODE_29EFBA:        REP #$30                  
CODE_29EFBC:        DEC $028B                 
CODE_29EFBF:        DEC $0281                 
CODE_29EFC2:        DEC $0281                 
CODE_29EFC5:        INC $0283                 
CODE_29EFC8:        INC $0283                 
CODE_29EFCB:        DEC $0285                 
CODE_29EFCE:        DEC $0285                 
CODE_29EFD1:        DEC $0285                 
CODE_29EFD4:        DEC $0285                 
CODE_29EFD7:        INC $0289                 
CODE_29EFDA:        INC $0289                 
CODE_29EFDD:        INC $0289                 
CODE_29EFE0:        INC $0289                 
CODE_29EFE3:        LDX #$007E                
CODE_29EFE6:        LDA #$00FF                
CODE_29EFE9:        STA $7F9000,x             
CODE_29EFED:        STA $7F9080,x             
CODE_29EFF1:        STA $7F9100,x             
CODE_29EFF5:        STA $7F9180,x             
CODE_29EFF9:        DEX                       
CODE_29EFFA:        DEX                       
CODE_29EFFB:        BPL CODE_29EFE9           
CODE_29EFFD:        LDA $0283                 
CODE_29F000:        XBA                       
CODE_29F001:        ORA $0281                 
CODE_29F004:        LDX $0285                 
CODE_29F007:        STA $7F9000,x             
CODE_29F00B:        INX                       
CODE_29F00C:        INX                       
CODE_29F00D:        CPX $0289                 
CODE_29F010:        BNE CODE_29F007           
CODE_29F012:        SEP #$30                  
CODE_29F014:        BRA CODE_29F01C           

CODE_29F016:        INC $028C                 
CODE_29F019:        INC $0290                 
CODE_29F01C:        JMP CODE_29EC39           

CODE_29F01F:        LDA $028B                 
CODE_29F022:        CMP #$11                  
CODE_29F024:        BNE CODE_29F02C           
CODE_29F026:        DEC $028B                 
CODE_29F029:        JMP CODE_29EC39           

CODE_29F02C:        CMP #$10                  
CODE_29F02E:        BNE CODE_29F03F           
CODE_29F030:        LDA #$F2                  
CODE_29F032:        STA $1202                 
CODE_29F035:        LDA $028E                 
CODE_29F038:        BNE CODE_29F03F           
CODE_29F03A:        LDA #$43                  
CODE_29F03C:        STA $1200                 
CODE_29F03F:        LDA $028B                 
CODE_29F042:        BEQ CODE_29F0A2           
CODE_29F044:        BMI CODE_29F0A2           
CODE_29F046:        REP #$30                  
CODE_29F048:        INC $0281                 
CODE_29F04B:        INC $0281                 
CODE_29F04E:        DEC $0283                 
CODE_29F051:        DEC $0283                 
CODE_29F054:        INC $0285                 
CODE_29F057:        INC $0285                 
CODE_29F05A:        INC $0285                 
CODE_29F05D:        INC $0285                 
CODE_29F060:        DEC $0289                 
CODE_29F063:        DEC $0289                 
CODE_29F066:        DEC $0289                 
CODE_29F069:        DEC $0289                 
CODE_29F06C:        DEC $028B                 
CODE_29F06F:        LDX #$007E                
CODE_29F072:        LDA #$00FF                
CODE_29F075:        STA $7F9000,x             
CODE_29F079:        STA $7F9080,x             
CODE_29F07D:        STA $7F9100,x             
CODE_29F081:        STA $7F9180,x             
CODE_29F085:        DEX                       
CODE_29F086:        DEX                       
CODE_29F087:        BPL CODE_29F075           
CODE_29F089:        LDA $0283                 
CODE_29F08C:        XBA                       
CODE_29F08D:        ORA $0281                 
CODE_29F090:        LDX $0285                 
CODE_29F093:        STA $7F9000,x             
CODE_29F097:        INX                       
CODE_29F098:        INX                       
CODE_29F099:        CPX $0289                 
CODE_29F09C:        BNE CODE_29F093           
CODE_29F09E:        SEP #$30                  
CODE_29F0A0:        BRA CODE_29F0DE           

CODE_29F0A2:        STZ $028C                 
CODE_29F0A5:        STZ $396D                 
CODE_29F0A8:        STZ $0200                 
CODE_29F0AB:        STZ $0201                 
CODE_29F0AE:        LDA $0202                 
CODE_29F0B1:        EOR #$33                  
CODE_29F0B3:        STA $0202                 
CODE_29F0B6:        LDA $0287                 
CODE_29F0B9:        STA $020A                 
CODE_29F0BC:        LDA $0288                 
CODE_29F0BF:        STA $020B                 
CODE_29F0C2:        LDA $037A                 
CODE_29F0C5:        BNE CODE_29F0CC           
CODE_29F0C7:        JSR CODE_29EB9B           
CODE_29F0CA:        BRA CODE_29F0CF           

CODE_29F0CC:        JSR CODE_29EB7F           
CODE_29F0CF:        STZ $037A                 
CODE_29F0D2:        LDA $0293                 
CODE_29F0D5:        AND #$F7                  
CODE_29F0D7:        STA $0293                 
CODE_29F0DA:        PLY                       
CODE_29F0DB:        PLX                       
CODE_29F0DC:        PLB                       
CODE_29F0DD:        RTL                       

CODE_29F0DE:        JMP CODE_29EC39           

CODE_29F0E1:        PHB                       
CODE_29F0E2:        LDA #$7F                  
CODE_29F0E4:        PHA                       
CODE_29F0E5:        PLB                       
CODE_29F0E6:        REP #$30                  
CODE_29F0E8:        LDX #$007E                
CODE_29F0EB:        LDA #$0000                
CODE_29F0EE:        STA $9000,x               
CODE_29F0F1:        STA $9080,x               
CODE_29F0F4:        STA $9100,x               
CODE_29F0F7:        STA $9180,x               
CODE_29F0FA:        DEX                       
CODE_29F0FB:        DEX                       
CODE_29F0FC:        BPL CODE_29F0EE           
CODE_29F0FE:        PLB                       
CODE_29F0FF:        SEP #$20                  
CODE_29F101:        LDX #$2641                
CODE_29F104:        STX $4330                 
CODE_29F107:        LDX #$F14C                
CODE_29F10A:        STX $4332                 
CODE_29F10D:        LDA #$29                  
CODE_29F10F:        STA $4334                 
CODE_29F112:        LDA #$7F                  
CODE_29F114:        STA $4337                 
CODE_29F117:        LDA #$22                  
CODE_29F119:        STA $0200                 
CODE_29F11C:        LDA #$02                  
CODE_29F11E:        STA $0201                 
CODE_29F121:        LDA $0202                 
CODE_29F124:        ORA #$33                  
CODE_29F126:        STA $0202                 
CODE_29F129:        LDA $020A                 
CODE_29F12C:        STA $0287                 
CODE_29F12F:        LDA $020B                 
CODE_29F132:        STA $0288                 
CODE_29F135:        LDA $0208                 
CODE_29F138:        STA $020A                 
CODE_29F13B:        LDA $0209                 
CODE_29F13E:        STA $020B                 
CODE_29F141:        SEP #$10                  
CODE_29F143:        LDA $0293                 
CODE_29F146:        ORA #$08                  
CODE_29F148:        STA $0293                 
CODE_29F14B:        RTS                       

DATA_29F14C:        db $F8,$00,$90,$F8,$F0,$90,$00

CODE_29F153:        PHB
CODE_29F154:        LDA #$7F                  
CODE_29F156:        PHA                       
CODE_29F157:        PLB                       
CODE_29F158:        REP #$30                  
CODE_29F15A:        LDX #$01A0                
CODE_29F15D:        LDA #$00FF                
CODE_29F160:        STA $9000,x               
CODE_29F163:        STA $9002,x               
CODE_29F166:        STA $9004,x               
CODE_29F169:        STA $9006,x               
CODE_29F16C:        STA $9008,x               
CODE_29F16F:        STA $900A,x               
CODE_29F172:        STA $900C,x               
CODE_29F175:        STA $900E,x               
CODE_29F178:        STA $9010,x               
CODE_29F17B:        STA $9012,x               
CODE_29F17E:        STA $9014,x               
CODE_29F181:        STA $9016,x               
CODE_29F184:        STA $9018,x               
CODE_29F187:        STA $901A,x               
CODE_29F18A:        STA $901C,x               
CODE_29F18D:        STA $901E,x               
CODE_29F190:        TXA                       
CODE_29F191:        SEC                       
CODE_29F192:        SBC #$0020                
CODE_29F195:        TAX                       
CODE_29F196:        BPL CODE_29F15D           
CODE_29F198:        SEP #$30                  
CODE_29F19A:        PLB                       
CODE_29F19B:        RTS                       

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

CODE_29F800:        LDA #$22                  
CODE_29F802:        STA $1CF6,x               
CODE_29F805:        INC $1FF9,x               
CODE_29F808:        RTL                       

CODE_29F809:        LDA $9C                   
CODE_29F80B:        BNE CODE_29F851           
CODE_29F80D:        LDA $0520,x               
CODE_29F810:        BEQ CODE_29F816           
CODE_29F812:        JSL CODE_27DF26           
CODE_29F816:        LDA $1A63                 
CODE_29F819:        BEQ CODE_29F81E           
CODE_29F81B:        DEC $1A63                 
CODE_29F81E:        LDA $1A64                 
CODE_29F821:        AND #$1F                  
CODE_29F823:        BEQ CODE_29F828           
CODE_29F825:        DEC $1A64                 
CODE_29F828:        JSR CODE_29F864           
CODE_29F82B:        JSR CODE_29FA82           
CODE_29F82E:        JSL CODE_279B6F           
CODE_29F832:        LDA $0797,x               
CODE_29F835:        BEQ CODE_29F851           
CODE_29F837:        LDA #$08                  
CODE_29F839:        STA $0520,x               
CODE_29F83C:        LDA $9D                   
CODE_29F83E:        BMI CODE_29F851           
CODE_29F840:        LDA #$D0                  
CODE_29F842:        STA $9D                   
CODE_29F844:        JSR CODE_29FD18           
CODE_29F847:        LDA $C8A7,y               
CODE_29F84A:        STA $8B                   
CODE_29F84C:        LDA #$01                  
CODE_29F84E:        STA $1200                 
CODE_29F851:        LDA $68,x                 
CODE_29F853:        BEQ CODE_29F85E           
CODE_29F855:        JSR CODE_29FC2A           
CODE_29F858:        LDA $68,x                 
CODE_29F85A:        CMP #$01                  
CODE_29F85C:        BEQ CODE_29F863           
CODE_29F85E:        LDA #$FF                  
CODE_29F860:        STA $0651,x               
CODE_29F863:        RTL                       

CODE_29F864:        LDA $68,x                 
CODE_29F866:        JSL CODE_20FB1F           

PNTR_29F86A:        dw CODE_29F876
                    dw CODE_29F8AB
                    dw CODE_29FD5E
                    dw CODE_29FDC3
                    dw CODE_29FDDA
                    dw CODE_29FDE9

CODE_29F876:        LDA $0651,x               
CODE_29F879:        BNE CODE_29F8AA           
CODE_29F87B:        LDA $0210                 
CODE_29F87E:        CMP #$07                  
CODE_29F880:        BCS CODE_29F8AA                   
CODE_29F882:        LDA #$00                  
CODE_29F884:        STA $0210                 
CODE_29F887:        STA $8B                   
CODE_29F889:        LDA $A6                   
CODE_29F88B:        BNE CODE_29F8AA           
CODE_29F88D:        LDA #$EF                  
CODE_29F88F:        STA $0216                 
CODE_29F892:        LDA #$05                  
CODE_29F894:        STA $1202                 
CODE_29F897:        INC $1EB8                 
CODE_29F89A:        LDA #$02                  
CODE_29F89C:        STA $0424                 
CODE_29F89F:        LDA #$03                  
CODE_29F8A1:        STA $4D,x                 
CODE_29F8A3:        LDA #$30                  
CODE_29F8A5:        STA $06A6,x               
CODE_29F8A8:        INC $68,x                 
CODE_29F8AA:        RTS                       

CODE_29F8AB:        JSR CODE_29FD28           
CODE_29F8AE:        LDA $0565                 
CODE_29F8B1:        AND #$1F                  
CODE_29F8B3:        ORA $1A63                 
CODE_29F8B6:        BNE CODE_29F8CA           
CODE_29F8B8:        LDA $0679,x               
CODE_29F8BB:        PHA                       
CODE_29F8BC:        JSR CODE_29FA78           
CODE_29F8BF:        PLA                       
CODE_29F8C0:        CMP $0679,x               
CODE_29F8C3:        BEQ CODE_29F8CA           
CODE_29F8C5:        ORA #$13                  
CODE_29F8C7:        STA $1A64                 
CODE_29F8CA:        LDA $4D,x                 
CODE_29F8CC:        JSL CODE_20FB1F           

PNTR_29F8D0:        dw CODE_29F8D8
                    dw CODE_29F964
                    dw CODE_29F9E8
                    dw CODE_29FA1A

CODE_29F8D8:        JSR CODE_29FB22           
CODE_29F8DB:        LDA $1A64                 
CODE_29F8DE:        AND #$1F                  
CODE_29F8E0:        BEQ CODE_29F8F5           
CODE_29F8E2:        LSR A                     
CODE_29F8E3:        LSR A                     
CODE_29F8E4:        AND #$07                  
CODE_29F8E6:        TAY                       
CODE_29F8E7:        LDA $1A64                 
CODE_29F8EA:        AND #$40                  
CODE_29F8EC:        EOR $C8BE,y               
CODE_29F8EF:        STA $0679,x               
CODE_29F8F2:        LDA $C8B9,y               
CODE_29F8F5:        STA $0669,x               
CODE_29F8F8:        LDA $0518,x               
CODE_29F8FB:        BNE CODE_29F91F           
CODE_29F8FD:        JSR CODE_29FB3B           
CODE_29F900:        LDA $9E,x                 
CODE_29F902:        CMP #$40                  
CODE_29F904:        BPL CODE_29F908           
CODE_29F906:        INC $9E,x                 
CODE_29F908:        LDA $A7,x                 
CODE_29F90A:        AND #$04                  
CODE_29F90C:        BEQ CODE_29F91E           
CODE_29F90E:        JSL CODE_278B67           
CODE_29F912:        LDA #$10                  
CODE_29F914:        LDY $06A6,x               
CODE_29F917:        BNE CODE_29F91B           
CODE_29F919:        LDA #$B0                  
CODE_29F91B:        STA $0518,x               
CODE_29F91E:        RTS                       

CODE_29F91F:        LDA $1A64                 
CODE_29F922:        AND #$1F                  
CODE_29F924:        BNE CODE_29F929           
CODE_29F926:        INC $0669,x               
CODE_29F929:        LDA $0518,x               
CODE_29F92C:        CMP #$01                  
CODE_29F92E:        BEQ CODE_29F95F           
CODE_29F930:        CMP #$80                  
CODE_29F932:        BNE CODE_29F95E           
CODE_29F934:        LDA #$01                  
CODE_29F936:        STA $4D,x                 
CODE_29F938:        LDA #$A0                  
CODE_29F93A:        STA $9E,x                 
CODE_29F93C:        JSR CODE_29FD18           
CODE_29F93F:        STY $00                   
CODE_29F941:        LDA $0F                   
CODE_29F943:        BPL CODE_29F949           
CODE_29F945:        JSL CODE_27A859           
CODE_29F949:        LSR A                     
CODE_29F94A:        LSR A                     
CODE_29F94B:        LSR A                     
CODE_29F94C:        LSR A                     
CODE_29F94D:        AND #$0F                  
CODE_29F94F:        TAY                       
CODE_29F950:        LDA $C8A9,y               
CODE_29F953:        LDY $00                   
CODE_29F955:        DEY                       
CODE_29F956:        BNE CODE_29F95C           
CODE_29F958:        JSL CODE_27A859           
CODE_29F95C:        STA $8C,x                 
CODE_29F95E:        RTS                       

CODE_29F95F:        LDA #$F0                  
CODE_29F961:        STA $9E,x                 
CODE_29F963:        RTS                       

CODE_29F964:        LDA $9E,x                 
CODE_29F966:        BPL CODE_29F96B           
CODE_29F968:        JSR CODE_29FB22           
CODE_29F96B:        LDA #$00                  
CODE_29F96D:        STA $0669,x               
CODE_29F970:        JSR CODE_29FB3B           
CODE_29F973:        LDA $9E,x                 
CODE_29F975:        BMI CODE_29F97B           
CODE_29F977:        CMP #$50                  
CODE_29F979:        BCS CODE_29F981                   
CODE_29F97B:        INC $9E,x                 
CODE_29F97D:        INC $9E,x                 
CODE_29F97F:        INC $9E,x                 
CODE_29F981:        LDA $9E,x                 
CODE_29F983:        BPL CODE_29F989           
CODE_29F985:        CMP #$E0                  
CODE_29F987:        BCC CODE_29F9B6           
CODE_29F989:        JSR CODE_29FD18           
CODE_29F98C:        LDA $C8C3,y               
CODE_29F98F:        EOR $8C,x                 
CODE_29F991:        BPL CODE_29F9B6           
CODE_29F993:        JSL CODE_27A848           
CODE_29F997:        DEY                       
CODE_29F998:        BEQ CODE_29F9B6           
CODE_29F99A:        LDA #$02                  
CODE_29F99C:        STA $4D,x                 
CODE_29F99E:        LDA #$0A                  
CODE_29F9A0:        STA $0518,x               
CODE_29F9A3:        LDA $5F,x                 
CODE_29F9A5:        CLC                       
CODE_29F9A6:        ADC #$08                  
CODE_29F9A8:        AND #$F0                  
CODE_29F9AA:        STA $0776,x               
CODE_29F9AD:        LDA #$E0                  
CODE_29F9AF:        STA $9E,x                 
CODE_29F9B1:        LDA #$00                  
CODE_29F9B3:        STA $8C,x                 
CODE_29F9B5:        RTS                       

CODE_29F9B6:        LDA $A7,x                 
CODE_29F9B8:        AND #$04                  
CODE_29F9BA:        BEQ CODE_29F9E7           
CODE_29F9BC:        JSL CODE_278B67           
CODE_29F9C0:        STA $8C,x                 
CODE_29F9C2:        LDA #$2C                  
CODE_29F9C4:        STA $1CF3                 
CODE_29F9C7:        LDA #$09                  
CODE_29F9C9:        STA $1203                 
CODE_29F9CC:        LDA #$0C                  
CODE_29F9CE:        STA $0520,x               
CODE_29F9D1:        LDA #$35                  
CODE_29F9D3:        STA $0518,x               
CODE_29F9D6:        LDA $0783,x               
CODE_29F9D9:        AND #$1F                  
CODE_29F9DB:        ADC #$67                  
CODE_29F9DD:        STA $06A6,x               
CODE_29F9E0:        STA $1021,x               
CODE_29F9E3:        LDA #$03                  
CODE_29F9E5:        STA $4D,x                 
CODE_29F9E7:        RTS                       

CODE_29F9E8:        LDA #$00                  
CODE_29F9EA:        STA $1A63                 
CODE_29F9ED:        LDA #$06                  
CODE_29F9EF:        STA $0669,x               
CODE_29F9F2:        LDA $0518,x               
CODE_29F9F5:        BEQ CODE_29FA07           
CODE_29F9F7:        LDA $5F,x                 
CODE_29F9F9:        CMP $0776,x               
CODE_29F9FC:        BEQ CODE_29FA06           
CODE_29F9FE:        INC $5F,x                 
CODE_29FA00:        BCC CODE_29FA06           
CODE_29FA02:        DEC $5F,x                 
CODE_29FA04:        DEC $5F,x                 
CODE_29FA06:        RTS                       

CODE_29FA07:        JSR CODE_29FB3B           
CODE_29FA0A:        LDA $9E,x                 
CODE_29FA0C:        BMI CODE_29FA12           
CODE_29FA0E:        CMP #$70                  
CODE_29FA10:        BCS CODE_29FA17                   
CODE_29FA12:        CLC                       
CODE_29FA13:        ADC #$06                  
CODE_29FA15:        STA $9E,x                 
CODE_29FA17:        JMP CODE_29F9B6           

CODE_29FA1A:        JSR CODE_29FB3B           
CODE_29FA1D:        LDA $9E,x                 
CODE_29FA1F:        CMP #$40                  
CODE_29FA21:        BPL CODE_29FA27           
CODE_29FA23:        INC $9E,x                 
CODE_29FA25:        INC $9E,x                 
CODE_29FA27:        JSR CODE_29FB8D           
CODE_29FA2A:        LDA $A7,x                 
CODE_29FA2C:        AND #$04                  
CODE_29FA2E:        BEQ CODE_29FA34           
CODE_29FA30:        JSL CODE_278B67           
CODE_29FA34:        LDA $0518,x               
CODE_29FA37:        BEQ CODE_29FA3F           
CODE_29FA39:        LDA #$07                  
CODE_29FA3B:        STA $0669,x               
CODE_29FA3E:        RTS                       

CODE_29FA3F:        LDA $06A6,x               
CODE_29FA42:        BNE CODE_29FA53           
CODE_29FA44:        LDA #$00                  
CODE_29FA46:        STA $4D,x                 
CODE_29FA48:        LDA $0783,x               
CODE_29FA4B:        AND #$7F                  
CODE_29FA4D:        ORA #$80                  
CODE_29FA4F:        STA $06A6,x               
CODE_29FA52:        RTS                       

CODE_29FA53:        CMP #$20                  
CODE_29FA55:        BCC CODE_29FA6D           
CODE_29FA57:        LSR A                     
CODE_29FA58:        LSR A                     
CODE_29FA59:        CLC                       
CODE_29FA5A:        ADC $1021,x               
CODE_29FA5D:        AND #$07                  
CODE_29FA5F:        TAY                       
CODE_29FA60:        LDA $C8C5,y               
CODE_29FA63:        STA $0669,x               
CODE_29FA66:        LDA $C8CD,y               
CODE_29FA69:        STA $0679,x               
CODE_29FA6C:        RTS                       

CODE_29FA6D:        CMP #$0C                  
CODE_29FA6F:        LDA #$05                  
CODE_29FA71:        BCS CODE_29FA75                   
CODE_29FA73:        LDA #$08                  
CODE_29FA75:        STA $0669,x               
CODE_29FA78:        JSR CODE_29FD18           
CODE_29FA7B:        LDA $C8D5,y               
CODE_29FA7E:        STA $0679,x               
CODE_29FA81:        RTS                       

CODE_29FA82:        LDA $1A63                 
CODE_29FA85:        BEQ CODE_29FA9E           
CODE_29FA87:        LSR A                     
CODE_29FA88:        LSR A                     
CODE_29FA89:        LSR A                     
CODE_29FA8A:        LSR A                     
CODE_29FA8B:        AND #$07                  
CODE_29FA8D:        TAY                       
CODE_29FA8E:        LDA $C8D7,y               
CODE_29FA91:        STA $0669,x               
CODE_29FA94:        LDA $1A63                 
CODE_29FA97:        CMP #$10                  
CODE_29FA99:        BNE CODE_29FA9E           
CODE_29FA9B:        JSR CODE_29FA9F           
CODE_29FA9E:        RTS                       

CODE_29FA9F:        LDY #$04                  
CODE_29FAA1:        LDA $0661,y               
CODE_29FAA4:        BEQ CODE_29FAAA           
CODE_29FAA6:        DEY                       
CODE_29FAA7:        BPL CODE_29FAA1           
CODE_29FAA9:        RTS                       

CODE_29FAAA:        TYA                       
CODE_29FAAB:        TAX                       
CODE_29FAAC:        JSL CODE_279C96           
CODE_29FAB0:        LDA #$02                  
CODE_29FAB2:        STA $0661,x               
CODE_29FAB5:        LDA #$75                  
CODE_29FAB7:        STA $0671,x               
CODE_29FABA:        LDA #$02                  
CODE_29FABC:        STA $68,x                 
CODE_29FABE:        LDA #$10                  
CODE_29FAC0:        STA $009E,y               
CODE_29FAC3:        LDX $9B                   
CODE_29FAC5:        LDA $71,x                 
CODE_29FAC7:        CLC                       
CODE_29FAC8:        ADC #$10                  
CODE_29FACA:        STA $0071,y               
CODE_29FACD:        LDA $56,x                 
CODE_29FACF:        ADC #$00                  
CODE_29FAD1:        STA $0056,y               
CODE_29FAD4:        LDA $0679,x               
CODE_29FAD7:        ASL A                     
CODE_29FAD8:        ASL A                     
CODE_29FAD9:        ROL A                     
CODE_29FADA:        AND #$01                  
CODE_29FADC:        TAX                       
CODE_29FADD:        STX $00                   
CODE_29FADF:        LDA $C8DF,x               
CODE_29FAE2:        STA $008C,y               
CODE_29FAE5:        LDX $9B                   
CODE_29FAE7:        LDA $44,x                 
CODE_29FAE9:        STA $0044,y               
CODE_29FAEC:        LDA $5F,x                 
CODE_29FAEE:        LDX $00                   
CODE_29FAF0:        CLC                       
CODE_29FAF1:        ADC $C8E1,x               
CODE_29FAF4:        STA $005F,y               
CODE_29FAF7:        CMP #$F0                  
CODE_29FAF9:        BCC CODE_29FB05           
CODE_29FAFB:        LDX $9B                   
CODE_29FAFD:        LDA $0679,x               
CODE_29FB00:        BNE CODE_29FB05           
CODE_29FB02:        STA $005F,y               
CODE_29FB05:        LDA $0783,y               
CODE_29FB08:        AND #$07                  
CODE_29FB0A:        TAX                       
CODE_29FB0B:        LDA $C8E3,x               
CODE_29FB0E:        STA $077B,y               
CODE_29FB11:        LDA #$01                  
CODE_29FB13:        STA $1FE9,y               
CODE_29FB16:        ASL A                     
CODE_29FB17:        STA $0518,y               
CODE_29FB1A:        LDA #$3A                  
CODE_29FB1C:        STA $1200                 
CODE_29FB1F:        LDX $9B                   
CODE_29FB21:        RTS                       

CODE_29FB22:        LDA $1A65                 
CODE_29FB25:        BNE CODE_29FB37           
CODE_29FB27:        LDA $0783,x               
CODE_29FB2A:        AND #$3F                  
CODE_29FB2C:        ADC #$60                  
CODE_29FB2E:        STA $1A65                 
CODE_29FB31:        LDA #$3F                  
CODE_29FB33:        STA $1A63                 
CODE_29FB36:        RTS                       

CODE_29FB37:        DEC $1A65                 
CODE_29FB3A:        RTS                       

CODE_29FB3B:        JSL CODE_27A7EF           
CODE_29FB3F:        JSL CODE_27A7E4           
CODE_29FB43:        LDY $5F,x                 
CODE_29FB45:        LDA $8C,x                 
CODE_29FB47:        BEQ CODE_29FB59           
CODE_29FB49:        BMI CODE_29FB51           
CODE_29FB4B:        CPY #$E0                  
CODE_29FB4D:        BCS CODE_29FB55                   
CODE_29FB4F:        BCC CODE_29FB59           
CODE_29FB51:        CPY #$08                  
CODE_29FB53:        BCS CODE_29FB59                   
CODE_29FB55:        LDA #$00                  
CODE_29FB57:        STA $8C,x                 
CODE_29FB59:        JSL CODE_278B93           
CODE_29FB5D:        LDA $4D,x                 
CODE_29FB5F:        CMP #$02                  
CODE_29FB61:        BNE CODE_29FB69           
CODE_29FB63:        LDA $1F76                 
CODE_29FB66:        STA $1A61                 
CODE_29FB69:        LDA $A7,x                 
CODE_29FB6B:        PHA                       
CODE_29FB6C:        LDA $5F,x                 
CODE_29FB6E:        PHA                       
CODE_29FB6F:        CLC                       
CODE_29FB70:        ADC #$10                  
CODE_29FB72:        STA $5F,x                 
CODE_29FB74:        JSL CODE_278B93           
CODE_29FB78:        PLA                       
CODE_29FB79:        STA $5F,x                 
CODE_29FB7B:        PLA                       
CODE_29FB7C:        ORA $A7,x                 
CODE_29FB7E:        STA $A7,x                 
CODE_29FB80:        LDA $4D,x                 
CODE_29FB82:        CMP #$02                  
CODE_29FB84:        BNE CODE_29FB8C           
CODE_29FB86:        LDA $1F76                 
CODE_29FB89:        STA $1A62                 
CODE_29FB8C:        RTS                       

CODE_29FB8D:        LDY #$01                  
CODE_29FB8F:        LDA $1A61,y               
CODE_29FB92:        CMP #$9C                  
CODE_29FB94:        BNE CODE_29FBC6           
CODE_29FB96:        LDA #$00                  
CODE_29FB98:        STA $1A61,y               
CODE_29FB9B:        LDA #$02                  
CODE_29FB9D:        STA $0564                 
CODE_29FBA0:        LDA $71,x                 
CODE_29FBA2:        CLC                       
CODE_29FBA3:        ADC #$30                  
CODE_29FBA5:        AND #$F0                  
CODE_29FBA7:        STA $052B                 
CODE_29FBAA:        LDA $56,x                 
CODE_29FBAC:        ADC #$00                  
CODE_29FBAE:        STA $052A                 
CODE_29FBB1:        LDA $5F,x                 
CODE_29FBB3:        CLC                       
CODE_29FBB4:        ADC $C8EB,y               
CODE_29FBB7:        AND #$F0                  
CODE_29FBB9:        STA $0529                 
CODE_29FBBC:        LDA $44,x                 
CODE_29FBBE:        ADC #$00                  
CODE_29FBC0:        STA $0528                 
CODE_29FBC3:        JMP CODE_29FBCA           

CODE_29FBC6:        DEY                       
CODE_29FBC7:        BPL CODE_29FB8F           
CODE_29FBC9:        RTS                       

CODE_29FBCA:        LDA #$18                  
CODE_29FBCC:        STA $1203                 
CODE_29FBCF:        JSL CODE_279544           
CODE_29FBD3:        LDA #$02                  
CODE_29FBD5:        STA $1F9C                 
CODE_29FBD8:        LDA $0543                 
CODE_29FBDB:        STA $D8                   
CODE_29FBDD:        LDA $0542                 
CODE_29FBE0:        STA $D9                   
CODE_29FBE2:        LDA $052A                 
CODE_29FBE5:        XBA                       
CODE_29FBE6:        LDA $052B                 
CODE_29FBE9:        REP #$20                  
CODE_29FBEB:        SEC                       
CODE_29FBEC:        SBC $D8                   
CODE_29FBEE:        STA $D8                   
CODE_29FBF0:        CLC                       
CODE_29FBF1:        ADC #$0008                
CODE_29FBF4:        SEP #$20                  
CODE_29FBF6:        STA $1FAB                 
CODE_29FBF9:        XBA                       
CODE_29FBFA:        STA $DF                   
CODE_29FBFC:        LDA $D8                   
CODE_29FBFE:        STA $1F9F                 
CODE_29FC01:        LDA $D9                   
CODE_29FC03:        STA $1FB1                 
CODE_29FC06:        LDA $0528                 
CODE_29FC09:        XBA                       
CODE_29FC0A:        LDA $0529                 
CODE_29FC0D:        REP #$20                  
CODE_29FC0F:        SEC                       
CODE_29FC10:        SBC $0210                 
CODE_29FC13:        SEP #$20                  
CODE_29FC15:        STA $1FA2                 
CODE_29FC18:        XBA                       
CODE_29FC19:        STA $02AE                 
CODE_29FC1C:        LDA #$00                  
CODE_29FC1E:        STA $1FA8                 
CODE_29FC21:        STA $1FAE                 
CODE_29FC24:        LDA #$FA                  
CODE_29FC26:        STA $1FA5                 
CODE_29FC29:        RTS                       

CODE_29FC2A:        JSL CODE_279DC2           
CODE_29FC2E:        LDA $83,x                 
CODE_29FC30:        STA $00                   
CODE_29FC32:        LDA $7A,x                 
CODE_29FC34:        STA $01                   
CODE_29FC36:        LDA $0679,x               
CODE_29FC39:        STA $02                   
CODE_29FC3B:        STA $03                   
CODE_29FC3D:        LDA $0651,x               
CODE_29FC40:        STA $04                   
CODE_29FC42:        LDA $0681,x               
CODE_29FC45:        STA $05                   
CODE_29FC47:        LDY $0669,x               
CODE_29FC4A:        CPY #$01                  
CODE_29FC4C:        BEQ CODE_29FC52           
CODE_29FC4E:        CPY #$07                  
CODE_29FC50:        BNE CODE_29FC59           
CODE_29FC52:        LDA $00                   
CODE_29FC54:        CLC                       
CODE_29FC55:        ADC #$04                  
CODE_29FC57:        STA $00                   
CODE_29FC59:        CPY #$08                  
CODE_29FC5B:        BEQ CODE_29FC70           
CODE_29FC5D:        CPY #$04                  
CODE_29FC5F:        BEQ CODE_29FC65           
CODE_29FC61:        CPY #$06                  
CODE_29FC63:        BCC CODE_29FC70           
CODE_29FC65:        LDA $0679,x               
CODE_29FC68:        AND #$80                  
CODE_29FC6A:        STA $02                   
CODE_29FC6C:        ORA #$40                  
CODE_29FC6E:        STA $03                   
CODE_29FC70:        LDA $0669,x               
CODE_29FC73:        ASL A                     
CODE_29FC74:        STA $0E                   
CODE_29FC76:        ASL A                     
CODE_29FC77:        ADC $0E                   
CODE_29FC79:        STA $0E                   
CODE_29FC7B:        STZ $0F                   
CODE_29FC7D:        LDA $15                   
CODE_29FC7F:        AND #$01                  
CODE_29FC81:        ASL A                     
CODE_29FC82:        STA $07                   
CODE_29FC84:        ASL A                     
CODE_29FC85:        ADC $07                   
CODE_29FC87:        CLC                       
CODE_29FC88:        ADC $0F                   
CODE_29FC8A:        ASL A                     
CODE_29FC8B:        TAY                       
CODE_29FC8C:        REP #$20                  
CODE_29FC8E:        LDA $C945,y               
CODE_29FC91:        STA $C6                   
CODE_29FC93:        SEP #$20                  
CODE_29FC95:        LDX $0F                   
CODE_29FC97:        LDA $05                   
CODE_29FC99:        AND $C93F,x               
CODE_29FC9C:        BEQ CODE_29FCA1           
CODE_29FC9E:        JMP CODE_29FD0A           

CODE_29FCA1:        LDA $0E                   
CODE_29FCA3:        CLC                       
CODE_29FCA4:        ADC $0F                   
CODE_29FCA6:        TAX                       
CODE_29FCA7:        LDA $C8ED,x               
CODE_29FCAA:        REP #$10                  
CODE_29FCAC:        LDY $C6                   
CODE_29FCAE:        STA $0802,y               
CODE_29FCB1:        SEP #$10                  
CODE_29FCB3:        LDX $0F                   
CODE_29FCB5:        LDA $02                   
CODE_29FCB7:        BPL CODE_29FCBE           
CODE_29FCB9:        TXA                       
CODE_29FCBA:        CLC                       
CODE_29FCBB:        ADC #$06                  
CODE_29FCBD:        TAX                       
CODE_29FCBE:        LDA $00                   
CODE_29FCC0:        CLC                       
CODE_29FCC1:        ADC $C92F,x               
CODE_29FCC4:        REP #$10                  
CODE_29FCC6:        LDY $C6                   
CODE_29FCC8:        STA $0801,y               
CODE_29FCCB:        SEP #$10                  
CODE_29FCCD:        LDX $0F                   
CODE_29FCCF:        TXA                       
CODE_29FCD0:        AND #$01                  
CODE_29FCD2:        ROR A                     
CODE_29FCD3:        LDA $02                   
CODE_29FCD5:        BCC CODE_29FCD9           
CODE_29FCD7:        LDA $03                   
CODE_29FCD9:        ORA #$29                  
CODE_29FCDB:        REP #$10                  
CODE_29FCDD:        LDY $C6                   
CODE_29FCDF:        STA $0803,y               
CODE_29FCE2:        SEP #$10                  
CODE_29FCE4:        LDA $02                   
CODE_29FCE6:        AND #$40                  
CODE_29FCE8:        BEQ CODE_29FCEF           
CODE_29FCEA:        TXA                       
CODE_29FCEB:        CLC                       
CODE_29FCEC:        ADC #$06                  
CODE_29FCEE:        TAX                       
CODE_29FCEF:        LDA $01                   
CODE_29FCF1:        CLC                       
CODE_29FCF2:        ADC $C923,x               
CODE_29FCF5:        REP #$10                  
CODE_29FCF7:        LDY $C6                   
CODE_29FCF9:        STA $0800,y               
CODE_29FCFC:        REP #$20                  
CODE_29FCFE:        TYA                       
CODE_29FCFF:        LSR A                     
CODE_29FD00:        LSR A                     
CODE_29FD01:        TAY                       
CODE_29FD02:        LDA #$0002                
CODE_29FD05:        STA $0A20,y               
CODE_29FD08:        SEP #$30                  
CODE_29FD0A:        INC $0F                   
CODE_29FD0C:        LDA $0F                   
CODE_29FD0E:        CMP #$06                  
CODE_29FD10:        BEQ CODE_29FD15           
CODE_29FD12:        JMP CODE_29FC7D           

CODE_29FD15:        LDX $9B                   
CODE_29FD17:        RTS                       

CODE_29FD18:        LDA $5F,x                 
CODE_29FD1A:        PHA                       
CODE_29FD1B:        CLC                       
CODE_29FD1C:        ADC #$08                  
CODE_29FD1E:        STA $5F,x                 
CODE_29FD20:        JSL CODE_27A837           
CODE_29FD24:        PLA                       
CODE_29FD25:        STA $5F,x                 
CODE_29FD27:        RTS                       

CODE_29FD28:        LDA $56,x                 
CODE_29FD2A:        CMP #$01                  
CODE_29FD2C:        BMI CODE_29FD34           
CODE_29FD2E:        LDA $83,x                 
CODE_29FD30:        CMP #$88                  
CODE_29FD32:        BCS CODE_29FD44                   
CODE_29FD34:        LDA $0661,x               
CODE_29FD37:        CMP #$02                  
CODE_29FD39:        BEQ CODE_29FD5D           
CODE_29FD3B:        LDA #$02                  
CODE_29FD3D:        STA $0661,x               
CODE_29FD40:        LDA #$D0                  
CODE_29FD42:        STA $9E,x                 
CODE_29FD44:        LDA #$02                  
CODE_29FD46:        STA $68,x                 
CODE_29FD48:        LSR A                     
CODE_29FD49:        STA $05F3                 
CODE_29FD4C:        LDA #$06                  
CODE_29FD4E:        STA $0669,x               
CODE_29FD51:        LDA #$00                  
CODE_29FD53:        STA $8C,x                 
CODE_29FD55:        STA $1A63                 
CODE_29FD58:        LDA #$30                  
CODE_29FD5A:        STA $06A6,x               
CODE_29FD5D:        RTS                       

CODE_29FD5E:        LDY $06A6,x               
CODE_29FD61:        DEY                       
CODE_29FD62:        BNE CODE_29FD6E           
CODE_29FD64:        LDA #$01                  
CODE_29FD66:        STA $02D9                 
CODE_29FD69:        LDA #$0E                  
CODE_29FD6B:        STA $1202                 
CODE_29FD6E:        LDA $1CF6,x               
CODE_29FD71:        CMP #$01                  
CODE_29FD73:        BPL CODE_29FD7C           
CODE_29FD75:        ASL $0679,x               
CODE_29FD78:        SEC                       
CODE_29FD79:        ROR $0679,x               
CODE_29FD7C:        JSL CODE_27A7E4           
CODE_29FD80:        LDA $9E,x                 
CODE_29FD82:        CMP #$25                  
CODE_29FD84:        BPL CODE_29FD88           
CODE_29FD86:        INC $9E,x                 
CODE_29FD88:        LDA $56,x                 
CODE_29FD8A:        CMP #$04                  
CODE_29FD8C:        BMI CODE_29FDA9           
CODE_29FD8E:        INC $68,x                 
CODE_29FD90:        LDA #$D0                  
CODE_29FD92:        STA $0518,x               
CODE_29FD95:        LDA #$80                  
CODE_29FD97:        STA $1CF3                 
CODE_29FD9A:        LDA #$09                  
CODE_29FD9C:        STA $1203                 
CODE_29FD9F:        LDA $A6                   
CODE_29FDA1:        BNE CODE_29FDA9           
CODE_29FDA3:        LDA #$C0                  
CODE_29FDA5:        STA $9D                   
CODE_29FDA7:        INC $A6                   
CODE_29FDA9:        LDA $71,x                 
CODE_29FDAB:        PHA                       
CODE_29FDAC:        CLC                       
CODE_29FDAD:        ADC #$10                  
CODE_29FDAF:        STA $71,x                 
CODE_29FDB1:        LDA $56,x                 
CODE_29FDB3:        PHA                       
CODE_29FDB4:        ADC #$00                  
CODE_29FDB6:        STA $56,x                 
CODE_29FDB8:        JSL CODE_27A2C8           
CODE_29FDBC:        PLA                       
CODE_29FDBD:        STA $56,x                 
CODE_29FDBF:        PLA                       
CODE_29FDC0:        STA $71,x                 
CODE_29FDC2:        RTS                       

CODE_29FDC3:        LDA $0518,x               
CODE_29FDC6:        BNE CODE_29FDD9           
CODE_29FDC8:        LDA #$13                  
CODE_29FDCA:        STA $1202                 
CODE_29FDCD:        LDA #$00                  
CODE_29FDCF:        STA $02E3                 
CODE_29FDD2:        LDA #$02                  
CODE_29FDD4:        STA $02E4                 
CODE_29FDD7:        INC $68,x                 
CODE_29FDD9:        RTS                       

CODE_29FDDA:        JSL CODE_278A17           
CODE_29FDDE:        BNE CODE_29FDE8           
CODE_29FDE0:        LDA #$30                  
CODE_29FDE2:        STA $7FC587               
CODE_29FDE6:        INC $68,x                 
CODE_29FDE8:        RTS                       

CODE_29FDE9:        LDA $7FC587               
CODE_29FDED:        BEQ CODE_29FE1E           
CODE_29FDEF:        DEC A                     
CODE_29FDF0:        STA $7FC587               
CODE_29FDF4:        CMP #$10                  
CODE_29FDF6:        BNE CODE_29FE1D           
CODE_29FDF8:        LDA #$39                  
CODE_29FDFA:        STA $1200                 
CODE_29FDFD:        LDA #$F0                  
CODE_29FDFF:        STA $1202                 
CODE_29FE02:        LDY #$01                  
CODE_29FE04:        LDA #$01                  
CODE_29FE06:        STA $1F9C,y               
CODE_29FE09:        LDA $C95D,y               
CODE_29FE0C:        STA $1F9F,y               
CODE_29FE0F:        LDA $C95F,y               
CODE_29FE12:        STA $1FA2,y               
CODE_29FE15:        LDA #$1F                  
CODE_29FE17:        STA $1FAE,y               
CODE_29FE1A:        DEY                       
CODE_29FE1B:        BPL CODE_29FE04           
CODE_29FE1D:        RTS                       

CODE_29FE1E:        REP #$10                  
CODE_29FE20:        LDY #$0001                
CODE_29FE23:        LDX #$0080                
CODE_29FE26:        LDA $C95F,y               
CODE_29FE29:        STA $0800,x               
CODE_29FE2C:        LDA $C95D,y               
CODE_29FE2F:        STA $0801,x               
CODE_29FE32:        LDA #$6A                  
CODE_29FE34:        STA $0802,x               
CODE_29FE37:        LDA #$23                  
CODE_29FE39:        STA $0803,x               
CODE_29FE3C:        PHX                       
CODE_29FE3D:        REP #$20                  
CODE_29FE3F:        TXA                       
CODE_29FE40:        LSR A                     
CODE_29FE41:        LSR A                     
CODE_29FE42:        TAX                       
CODE_29FE43:        SEP #$20                  
CODE_29FE45:        LDA #$02                  
CODE_29FE47:        STA $0A20,x               
CODE_29FE4A:        PLX                       
CODE_29FE4B:        INX                       
CODE_29FE4C:        INX                       
CODE_29FE4D:        INX                       
CODE_29FE4E:        INX                       
CODE_29FE4F:        DEY                       
CODE_29FE50:        BPL CODE_29FE26           
CODE_29FE52:        SEP #$10                  
CODE_29FE54:        LDA $55                   
CODE_29FE56:        BEQ CODE_29FE78           
CODE_29FE58:        LDA $5E                   
CODE_29FE5A:        SEC                       
CODE_29FE5B:        SBC #$E4                  
CODE_29FE5D:        CMP #$08                  
CODE_29FE5F:        BCS CODE_29FE78                   
CODE_29FE61:        LDA $70                   
CODE_29FE63:        CMP #$48                  
CODE_29FE65:        BCC CODE_29FE78           
CODE_29FE67:        LDA $17                   
CODE_29FE69:        AND #$08                  
CODE_29FE6B:        BEQ CODE_29FE78           
CODE_29FE6D:        STA $078E                 
CODE_29FE70:        LDA #$00                  
CODE_29FE72:        STA $0713                 
CODE_29FE75:        INC $0014                 
CODE_29FE78:        LDA $15                   
CODE_29FE7A:        AND #$0C                  
CODE_29FE7C:        LSR A                     
CODE_29FE7D:        TAY                       
CODE_29FE7E:        REP #$20                  
CODE_29FE80:        LDA $C963,y               
CODE_29FE83:        STA $001422               
CODE_29FE87:        SEP #$20                  
CODE_29FE89:        INC $1500                 
CODE_29FE8C:        LDX $9B                   
CODE_29FE8E:        RTS                       

CODE_29FE8F:        PHB                       
CODE_29FE90:        PHK                       
CODE_29FE91:        PLB                       
CODE_29FE92:        LDA $0691,x               
CODE_29FE95:        BEQ CODE_29FE9A           
CODE_29FE97:        DEC $0691,x               
CODE_29FE9A:        REP #$10                  
CODE_29FE9C:        STZ $DD                   
CODE_29FE9E:        LDY $C6,x                 
CODE_29FEA0:        STZ $D8                   
CODE_29FEA2:        LDA $0669,x               
CODE_29FEA5:        BNE CODE_29FEB9           
CODE_29FEA7:        LDA #$F0                  
CODE_29FEA9:        STA $0801,y               
CODE_29FEAC:        STA $0805,y               
CODE_29FEAF:        STA $0809,y               
CODE_29FEB2:        STA $080D,y               
CODE_29FEB5:        SEP #$10                  
CODE_29FEB7:        PLB                       
CODE_29FEB8:        RTL                       

CODE_29FEB9:        CMP #$07                  
CODE_29FEBB:        BEQ CODE_29FEC1           
CODE_29FEBD:        LDA #$0C                  
CODE_29FEBF:        STA $DD                   
CODE_29FEC1:        LDA $0691,x               
CODE_29FEC4:        BNE CODE_29FECB           
CODE_29FEC6:        LDA #$17                  
CODE_29FEC8:        STA $0691,x               
CODE_29FECB:        AND #$F8                  
CODE_29FECD:        LSR A                     
CODE_29FECE:        CLC                       
CODE_29FECF:        ADC $DD                   
CODE_29FED1:        PHX                       
CODE_29FED2:        XBA                       
CODE_29FED3:        LDA #$00                  
CODE_29FED5:        XBA                       
CODE_29FED6:        TAX                       
CODE_29FED7:        LDA.w DATA_29FF6C,x               
CODE_29FEDA:        STA $0802,y               
CODE_29FEDD:        LDA.w DATA_29FF6C+1,x               
CODE_29FEE0:        STA $0806,y               
CODE_29FEE3:        LDA.w DATA_29FF6C+2,x               
CODE_29FEE6:        STA $080A,y               
CODE_29FEE9:        PLX                       
CODE_29FEEA:        LDA $5F,x                 
CODE_29FEEC:        STA $D8                   
CODE_29FEEE:        LDA $44,x                 
CODE_29FEF0:        STA $D9                   
CODE_29FEF2:        REP #$20                  
CODE_29FEF4:        LDA $0679,x               
CODE_29FEF7:        AND #$0040                
CODE_29FEFA:        BNE CODE_29FF01           
CODE_29FEFC:        LDA #$0010                
CODE_29FEFF:        BRA CODE_29FF04           

CODE_29FF01:        LDA #$FFF8                
CODE_29FF04:        STA $DA                   
CODE_29FF06:        LDA $D8                   
CODE_29FF08:        SEC                       
CODE_29FF09:        SBC $0210                 
CODE_29FF0C:        STA $D8                   
CODE_29FF0E:        CLC                       
CODE_29FF0F:        ADC $DA                   
CODE_29FF11:        STA $DA                   
CODE_29FF13:        SEP #$20                  
CODE_29FF15:        STA $0804,y               
CODE_29FF18:        STA $0808,y               
CODE_29FF1B:        LDA $D8                   
CODE_29FF1D:        STA $0800,y               
CODE_29FF20:        LDA $71,x                 
CODE_29FF22:        SEC                       
CODE_29FF23:        SBC $0216                 
CODE_29FF26:        STA $0801,y               
CODE_29FF29:        STA $0805,y               
CODE_29FF2C:        CLC                       
CODE_29FF2D:        ADC #$08                  
CODE_29FF2F:        STA $0809,y               
CODE_29FF32:        LDA #$F0                  
CODE_29FF34:        STA $080D,y               
CODE_29FF37:        LDA $0679,x               
CODE_29FF3A:        AND #$40                  
CODE_29FF3C:        ORA #$23                  
CODE_29FF3E:        STA $0803,y               
CODE_29FF41:        STA $0807,y               
CODE_29FF44:        STA $080B,y               
CODE_29FF47:        REP #$20                  
CODE_29FF49:        TYA                       
CODE_29FF4A:        LSR A                     
CODE_29FF4B:        LSR A                     
CODE_29FF4C:        TAY                       
CODE_29FF4D:        SEP #$20                  
CODE_29FF4F:        LDA $D9                   
CODE_29FF51:        BEQ CODE_29FF57           
CODE_29FF53:        LDA #$03                  
CODE_29FF55:        BRA CODE_29FF59           

CODE_29FF57:        LDA #$02                  
CODE_29FF59:        STA $0A20,y               
CODE_29FF5C:        LDA $DB                   
CODE_29FF5E:        BEQ CODE_29FF62           
CODE_29FF60:        LDA #$01                  
CODE_29FF62:        STA $0A21,y               
CODE_29FF65:        STA $0A22,y               
CODE_29FF68:        SEP #$10                  
CODE_29FF6A:        PLB                       
CODE_29FF6B:        RTL                       

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
