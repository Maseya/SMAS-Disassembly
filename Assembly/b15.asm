;Super Mario Bros. 2

CODE_158000:        LDA $0724                 
CODE_158003:        BNE CODE_158079           
CODE_158005:        LDA $0772                 
CODE_158008:        BEQ CODE_158017           
CODE_15800A:        LDX #$02                  
CODE_15800C:        LDA $02B2,x               
CODE_15800F:        STA $0725,x               
CODE_158012:        DEX                       
CODE_158013:        BPL CODE_15800C           
CODE_158015:        BRA CODE_15802F      
     
CODE_158017:        LDX $0535                 
CODE_15801A:        LDA.l DATA_11D01A,x             
CODE_15801E:        STA $0725                 
CODE_158021:        LDA.l DATA_11D024,x             
CODE_158025:        STA $0726                 
CODE_158028:        LDA.l DATA_11D02E,x             
CODE_15802C:        STA $0727                 
CODE_15802F:        LDA $0535                 
CODE_158032:        LDY #$01                  
CODE_158034:        JSR CODE_158107           
CODE_158037:        LDA $0533                 
CODE_15803A:        CMP #$06                  
CODE_15803C:        BEQ CODE_158046           
CODE_15803E:        CMP #$07                  
CODE_158040:        BEQ CODE_158046           
CODE_158042:        CMP #$0C                  
CODE_158044:        BNE CODE_158052           
CODE_158046:        LDA $0534                 
CODE_158049:        BNE CODE_158052           
CODE_15804B:        LDA #$10                  ; \ Layer 3 Y pos = #$0010.
CODE_15804D:        STA $020A                 ; /
CODE_158050:        BRA CODE_158055         
  
CODE_158052:        STZ $020A                 
CODE_158055:        STZ $020B                 
CODE_158058:        INC $0724                 
CODE_15805B:        LDA $0535                 
CODE_15805E:        STA $0728                 
CODE_158061:        LDA #$01                  
CODE_158063:        STA $0729                 
CODE_158066:        LSR A                     
CODE_158067:        STA $06                   
CODE_158069:        LDA #$FF                  
CODE_15806B:        STA $072A                 
CODE_15806E:        LDA #$0F                  
CODE_158070:        STA $072B                 
CODE_158073:        JSR CODE_158083           
CODE_158076:        JSR CODE_1583F2           
CODE_158079:        JSL CODE_1581BD           
CODE_15807D:        LDA $0729                 
CODE_158080:        BNE CODE_158082           
CODE_158082:        RTL    
                   
CODE_158083:        LDA $0535                 
CODE_158086:        BNE CODE_158093           
CODE_158088:        LDA $072C                 
CODE_15808B:        BPL CODE_158090           
CODE_15808D:        JMP CODE_158100           

CODE_158090:        LDA $0535                 
CODE_158093:        CMP $0541                 
CODE_158096:        BNE CODE_15809D           
CODE_158098:        LDA $072C                 
CODE_15809B:        BPL CODE_158100           
CODE_15809D:        LDX #$02                  
CODE_15809F:        LDA $072C                 
CODE_1580A2:        BPL CODE_1580AA           
CODE_1580A4:        LDA #$FF                  
CODE_1580A6:        STA $0B                   
CODE_1580A8:        BNE CODE_1580AC           
CODE_1580AA:        STZ $0B                   
CODE_1580AC:        LDA $072C                 
CODE_1580AF:        AND #$F0                  
CODE_1580B1:        CLC                       
CODE_1580B2:        ADC $0725,x               
CODE_1580B5:        PHP                       
CODE_1580B6:        ADC $0B                   
CODE_1580B8:        PLP                       
CODE_1580B9:        STA $0C                   
CODE_1580BB:        LDA $0B                   
CODE_1580BD:        BNE CODE_1580D1           
CODE_1580BF:        BCC CODE_1580E3           
CODE_1580C1:        LDA $0725,x               
CODE_1580C4:        AND #$0F                  
CODE_1580C6:        CMP #$09                  
CODE_1580C8:        BNE CODE_1580E3           
CODE_1580CA:        LDA $0C                   
CODE_1580CC:        AND #$F0                  
CODE_1580CE:        JMP CODE_1580E5           

CODE_1580D1:        BCS CODE_1580E3                   
CODE_1580D3:        LDA $0725,x               
CODE_1580D6:        AND #$0F                  
CODE_1580D8:        BNE CODE_1580E3           
CODE_1580DA:        LDA $0C                   
CODE_1580DC:        AND #$F0                  
CODE_1580DE:        ADC #$09                  
CODE_1580E0:        JMP CODE_1580E5           

CODE_1580E3:        LDA $0C                   
CODE_1580E5:        STA $0725,x               
CODE_1580E8:        DEX                       
CODE_1580E9:        BPL CODE_1580AC           
CODE_1580EB:        LDA $072C                 
CODE_1580EE:        BPL CODE_158100           
CODE_1580F0:        DEC $0728                 
CODE_1580F3:        LDA $0205                 
CODE_1580F6:        EOR #$01                  
CODE_1580F8:        STA $0205                 
CODE_1580FB:        LDA #$01                  
CODE_1580FD:        STA $072B                 
CODE_158100:        STZ $072C                 
CODE_158103:        JSR CODE_15832E           
CODE_158106:        RTS
                       
CODE_158107:        LSR A                     
CODE_158108:        BCS CODE_158124                   
CODE_15810A:        CPY #$01                  
CODE_15810C:        BEQ CODE_158113           
CODE_15810E:        LDA $0628                 
CODE_158111:        BEQ CODE_15811A           
CODE_158113:        LDA #$01                  
CODE_158115:        STA $0205                 
CODE_158118:        BRA CODE_15811D           
CODE_15811A:        STZ $0205                 
CODE_15811D:        STZ $020B                 
CODE_158120:        LDA #$00                  
CODE_158122:        BRA CODE_15813D           

CODE_158124:        CPY #$01                  
CODE_158126:        BEQ CODE_15812D           
CODE_158128:        STZ $0205                 
CODE_15812B:        BRA CODE_15813A           

CODE_15812D:        LDA #$01                  
CODE_15812F:        STA $0205                 
CODE_158132:        STA $020B                 
CODE_158135:        LDA #$40                  
CODE_158137:        STA $0204                 
CODE_15813A:        LDA.w DATA_119B3C,y               
CODE_15813D:        STA $0730                 
CODE_158140:        RTS
                       
CODE_158141:        LDA $0204                 
CODE_158144:        STA $0732                 
CODE_158147:        LDA $0205                 
CODE_15814A:        STA $0733                 
CODE_15814D:        LDA $0734                 
CODE_158150:        STA $0735                 
CODE_158153:        INC $0736                 
CODE_158156:        LDA.w DATA_119B3E                 
CODE_158159:        STA $0535                 
CODE_15815C:        JSR CODE_158107           
CODE_15815F:        LDA #$00                  
CODE_158161:        STA $0204                 
CODE_158164:        STA $0737                 
CODE_158167:        LDA.w DATA_119B3E                 
CODE_15816A:        STA $0734                 
CODE_15816D:        LDA.w DATA_119B3E                 
CODE_158170:        STA $0725                 
CODE_158173:        LDA #$E0                  
CODE_158175:        STA $0730                 
CODE_158178:        LDA.w DATA_119B3E                 
CODE_15817B:        CLC                       
CODE_15817C:        ADC #$F0                  
CODE_15817E:        STA $072A                 
CODE_158181:        RTL
                       
CODE_158182:        LDA $0732                 
CODE_158185:        STA $0204                 
CODE_158188:        STA $0737                 
CODE_15818B:        LDA $0733                 
CODE_15818E:        STA $0205                 
CODE_158191:        LDA $0735                 
CODE_158194:        STA $0734                 
CODE_158197:        LDA $0736                 
CODE_15819A:        BNE CODE_1581BC           
CODE_15819C:        INC $0738                 
CODE_15819F:        INC $0736                 
CODE_1581A2:        INC $D5                   
CODE_1581A4:        LDA $0726                 
CODE_1581A7:        STA $0725                 
CODE_1581AA:        LDA #$10                  
CODE_1581AC:        STA $01                   
CODE_1581AE:        LDA #$F0                  
CODE_1581B0:        STA $0730                 
CODE_1581B3:        STA $072B                 
CODE_1581B6:        LDA $0727                 
CODE_1581B9:        STA $072A                 
CODE_1581BC:        RTL
                       
CODE_1581BD:        LDX #$00                  
CODE_1581BF:        STX $0739                 
CODE_1581C2:        STX $073A                 
CODE_1581C5:        STX $D8                   
CODE_1581C7:        JSL CODE_158236           
CODE_1581CB:        JSL CODE_15826D           
CODE_1581CF:        LDA $0730                 
CODE_1581D2:        CMP $073B                 
CODE_1581D5:        BNE CODE_1581F1           
CODE_1581D7:        BRA CODE_1581F1           

CODE_1581D9:        LDA $072B                 
CODE_1581DC:        CLC                       
CODE_1581DD:        ADC #$01                  
CODE_1581DF:        CMP $073C                 
CODE_1581E2:        BNE CODE_1581F1           
CODE_1581E4:        STZ $0729                 
CODE_1581E7:        STZ $0736                 
CODE_1581EA:        STZ $0738                 
CODE_1581ED:        INC $0739                 
CODE_1581F0:        RTL
                       
CODE_1581F1:        LDA $0725                 
CODE_1581F4:        CMP $072A                 
CODE_1581F7:        BEQ CODE_1581E4           
CODE_1581F9:        LDX #$00                  
CODE_1581FB:        JSL CODE_15821B           
CODE_1581FF:        RTL                       

CODE_158200:        LDA $0725,x               
CODE_158203:        SEC                       
CODE_158204:        SBC #$10                  
CODE_158206:        STA $0725,x               
CODE_158209:        BCS CODE_15821A                   
CODE_15820B:        DEC $0725,x               
CODE_15820E:        LDA $0725,x               
CODE_158211:        CMP #$EF                  
CODE_158213:        BNE CODE_15821A           
CODE_158215:        LDA #$F9                  
CODE_158217:        STA $0725,x               
CODE_15821A:        RTL                       

CODE_15821B:        LDA $0725,x               
CODE_15821E:        CLC                       
CODE_15821F:        ADC #$10                  
CODE_158221:        STA $0725,x               
CODE_158224:        BCC CODE_158235           
CODE_158226:        INC $0725,x               
CODE_158229:        LDA $0725,x               
CODE_15822C:        CMP #$0A                  
CODE_15822E:        BNE CODE_158235           
CODE_158230:        LDA #$00                  
CODE_158232:        STA $0725,x               
CODE_158235:        RTL                       

CODE_158236:        STY $0F                   
CODE_158238:        LDA $0725,x               
CODE_15823B:        AND #$0F                  
CODE_15823D:        TAY                       
CODE_15823E:        LDA.w DATA_11AB1B,y               
CODE_158241:        STA $073F                 
CODE_158244:        LDA.w DATA_11AB25,y               
CODE_158247:        STA $0740                 
CODE_15824A:        LDA #$7F                  
CODE_15824C:        STA $0741                 
CODE_15824F:        LDA $0725,x               
CODE_158252:        LSR A                     
CODE_158253:        LSR A                     
CODE_158254:        LSR A                     
CODE_158255:        LSR A                     
CODE_158256:        STA $0742                 
CODE_158259:        ASL A                     
CODE_15825A:        STA $073C                 
CODE_15825D:        LDY #$00                  
CODE_15825F:        LDA $0725,x               
CODE_158262:        LSR A                     
CODE_158263:        BCS CODE_158267                   
CODE_158265:        LDY #$04                  
CODE_158267:        STY $073B                 
CODE_15826A:        LDY $0F                   
CODE_15826C:        RTL                       

CODE_15826D:        LDA $7F0800               
CODE_158271:        TAX                       
CODE_158272:        LDA $073F                 
CODE_158275:        STA $C4                   
CODE_158277:        LDA $0740                 
CODE_15827A:        STA $C5                   
CODE_15827C:        LDA $0741                 
CODE_15827F:        STA $C6                   
CODE_158281:        REP #$20                  
CODE_158283:        LDA $073B                 
CODE_158286:        CLC                       
CODE_158287:        ADC #$0048                
CODE_15828A:        STA $7F0802,x             
CODE_15828E:        XBA                       
CODE_15828F:        CLC                       
CODE_158290:        ADC #$0001                
CODE_158293:        XBA                       
CODE_158294:        STA $7F0842,x             
CODE_158298:        INX                       
CODE_158299:        INX                       
CODE_15829A:        LDA #$3C00                
CODE_15829D:        STA $7F0802,x             
CODE_1582A1:        STA $7F0842,x             
CODE_1582A5:        INX                       
CODE_1582A6:        INX                       
CODE_1582A7:        SEP #$20                  
CODE_1582A9:        STZ $0743                 
CODE_1582AC:        STZ $074F                 
CODE_1582AF:        LDA $0744                 
CODE_1582B2:        STA $00                   
CODE_1582B4:        LDA $0745                 
CODE_1582B7:        STA $01                   
CODE_1582B9:        LDA $0746                 
CODE_1582BC:        STA $02                   
CODE_1582BE:        LDY $0742                 
CODE_1582C1:        REP #$30                  
CODE_1582C3:        LDA [$C4],y               
CODE_1582C5:        AND #$00FF                
CODE_1582C8:        CMP #$00FF                
CODE_1582CB:        BNE CODE_1582DD           
CODE_1582CD:        LDA.l DATA_15934F               
CODE_1582D1:        STA $00                   
CODE_1582D3:        LDA #$0015                
CODE_1582D6:        STA $02                   
CODE_1582D8:        LDY #$0000                
CODE_1582DB:        BRA CODE_1582E1           

CODE_1582DD:        ASL A                     
CODE_1582DE:        ASL A                     
CODE_1582DF:        ASL A                     
CODE_1582E0:        TAY                       
CODE_1582E1:        LDA [$00],y               
CODE_1582E3:        STA $7F0802,x             
CODE_1582E7:        INY                       
CODE_1582E8:        INY                       
CODE_1582E9:        LDA [$00],y               
CODE_1582EB:        STA $7F0842,x             
CODE_1582EF:        INY                       
CODE_1582F0:        INY                       
CODE_1582F1:        LDA [$00],y               
CODE_1582F3:        STA $7F0804,x             
CODE_1582F7:        INY                       
CODE_1582F8:        INY                       
CODE_1582F9:        LDA [$00],y               
CODE_1582FB:        STA $7F0844,x             
CODE_1582FF:        SEP #$30                  
CODE_158301:        INC $0743                 
CODE_158304:        INX                       
CODE_158305:        INX                       
CODE_158306:        INX                       
CODE_158307:        INX                       
CODE_158308:        LDA $0742                 
CODE_15830B:        CLC                       
CODE_15830C:        ADC #$10                  
CODE_15830E:        STA $0742                 
CODE_158311:        LDA $0743                 
CODE_158314:        CMP #$0F                  
CODE_158316:        BCC CODE_1582AF           
CODE_158318:        LDA #$FF                  
CODE_15831A:        STA $7F0842,x             
CODE_15831E:        TXA                       
CODE_15831F:        CLC                       
CODE_158320:        ADC #$40                  
CODE_158322:        STA $7F0800               
CODE_158326:        INC $073A                 
CODE_158329:        RTL                       

DATA_15832A:        db $00,$40,$80,$C0

CODE_15832E:        LDA $0772                 
CODE_158331:        BEQ CODE_158342           
CODE_158333:        LDA $0200                 
CODE_158336:        STA $0204                 
CODE_158339:        LDA $0201                 
CODE_15833C:        STA $0205                 
CODE_15833F:        BRL CODE_1583E6           

CODE_158342:        LDA $0535                 
CODE_158345:        AND #$04                  
CODE_158347:        BNE CODE_158399           
CODE_158349:        LDA $0535                 
CODE_15834C:        AND #$07                  
CODE_15834E:        BNE CODE_158365           
CODE_158350:        LDA $0201                 
CODE_158353:        BNE CODE_158365           
CODE_158355:        STZ $0205                 
CODE_158358:        LDA $0200                 
CODE_15835B:        LSR A                     
CODE_15835C:        LSR A                     
CODE_15835D:        ORA #$C0                  
CODE_15835F:        STA $0204                 
CODE_158362:        JMP CODE_1583E6           

CODE_158365:        LDA #$01                  
CODE_158367:        STA $0205                 
CODE_15836A:        LDA $0200                 
CODE_15836D:        LSR A                     
CODE_15836E:        LSR A                     
CODE_15836F:        STA $0204                 
CODE_158372:        LDA $0535                 
CODE_158375:        AND #$03                  
CODE_158377:        TAX                       
CODE_158378:        LDA $0535                 
CODE_15837B:        AND #$01                  
CODE_15837D:        BEQ CODE_158386           
CODE_15837F:        LDA $0201                 
CODE_158382:        BEQ CODE_15838C           
CODE_158384:        BRA CODE_15838B           

CODE_158386:        LDA $0201                 
CODE_158389:        BNE CODE_15838C           
CODE_15838B:        DEX                       
CODE_15838C:        LDA.l DATA_15832A,x             
CODE_158390:        CLC                       
CODE_158391:        ADC $0204                 
CODE_158394:        STA $0204                 
CODE_158397:        BRA CODE_1583E6           

CODE_158399:        LDA $0535                 
CODE_15839C:        CMP #$04                  
CODE_15839E:        BNE CODE_1583B6           
CODE_1583A0:        LDA $0201                 
CODE_1583A3:        BNE CODE_1583B6           
CODE_1583A5:        LDA #$01                  
CODE_1583A7:        STA $0205                 
CODE_1583AA:        LDA $0200                 
CODE_1583AD:        LSR A                     
CODE_1583AE:        LSR A                     
CODE_1583AF:        ORA #$C0                  
CODE_1583B1:        STA $0204                 
CODE_1583B4:        BRA CODE_1583E6           

CODE_1583B6:        STZ $0205                 
CODE_1583B9:        LDA $0200                 
CODE_1583BC:        LSR A                     
CODE_1583BD:        LSR A                     
CODE_1583BE:        STA $0204                 
CODE_1583C1:        LDA $0535                 
CODE_1583C4:        AND #$03                  
CODE_1583C6:        TAX                       
CODE_1583C7:        LDA $0535                 
CODE_1583CA:        AND #$01                  
CODE_1583CC:        BEQ CODE_1583D5           
CODE_1583CE:        LDA $0201                 
CODE_1583D1:        BEQ CODE_1583DB           
CODE_1583D3:        BRA CODE_1583DA           

CODE_1583D5:        LDA $0201                 
CODE_1583D8:        BNE CODE_1583DB           
CODE_1583DA:        DEX                       
CODE_1583DB:        LDA.l DATA_15832A,x             
CODE_1583DF:        CLC                       
CODE_1583E0:        ADC $0204                 
CODE_1583E3:        STA $0204                 
CODE_1583E6:        LDA $0204                 
CODE_1583E9:        AND #$F0                  
CODE_1583EB:        STA $0750                 
CODE_1583EE:        STZ $0751                 
CODE_1583F1:        RTS                       

CODE_1583F2:        LDX $0533                ; \ Get room + level number into index.
CODE_1583F5:        LDA.l DATA_11D098,x      ;  |
CODE_1583F9:        CLC                      ;  |
CODE_1583FA:        ADC $0534                ;  |
CODE_1583FD:        TAX                      ;  |
CODE_1583FE:        LDA.l DATA_15916B,x      ;  | Load which set of Layer 3 Map16 tiles to use (the cloud tiles or the light beams of the shining door) 
CODE_158402:        ASL A                    ;  | Multiply by 2.
CODE_158403:        TAX                      ;  |
CODE_158404:        LDA.l PNTR_159233,x        ;  | Get low byte of Map16 table.   
CODE_158408:        STA $0744                ;  |
CODE_15840B:        INX                      ;  |
CODE_15840C:        LDA.l PNTR_159233,x        ;  | Get high byte of Map16 table.   
CODE_158410:        STA $0745                ;  |
CODE_158413:        LDA #$15                 ;  | Bank number = $15.
CODE_158415:        STA $0746                ; /
CODE_158418:        RTS                      ; Return.

CODE_158419:        LDX #$44                  
CODE_15841B:        LDY #$00                  
CODE_15841D:        LDA $0628                 
CODE_158420:        CMP #$01                  
CODE_158422:        BNE CODE_158428           
CODE_158424:        LDX #$84                  
CODE_158426:        BRA CODE_15842F           

CODE_158428:        LDA $EB                   
CODE_15842A:        BEQ CODE_15842F           
CODE_15842C:        LDX #$40                  
CODE_15842E:        INY                       
CODE_15842F:        STX $03                   
CODE_158431:        STZ $04                   
CODE_158433:        TYA                       
CODE_158434:        ORA #$80                  
CODE_158436:        STA $2115                 
CODE_158439:        LDA #$7F                  
CODE_15843B:        STA $4314                 
CODE_15843E:        REP #$10                  
CODE_158440:        LDX #$1801                
CODE_158443:        STX $4310                 
CODE_158446:        LDX #$0002                
CODE_158449:        LDA $7F0800,x             
CODE_15844D:        BMI CODE_15847F           
CODE_15844F:        REP #$20                  
CODE_158451:        LDA $7F0800,x             
CODE_158455:        XBA                       
CODE_158456:        STA $2116                 
CODE_158459:        LDA $7F0802,x             
CODE_15845D:        XBA                       
CODE_15845E:        STA $4315                 
CODE_158461:        TXA                       
CODE_158462:        CLC                       
CODE_158463:        ADC #$0004                
CODE_158466:        CLC                       
CODE_158467:        ADC #$0800                
CODE_15846A:        STA $4312                 
CODE_15846D:        TXA                       
CODE_15846E:        CLC                       
CODE_15846F:        ADC $03                   
CODE_158471:        TAX                       
CODE_158472:        SEP #$20                  
CODE_158474:        LDA #$02                  
CODE_158476:        STA $420B                 
CODE_158479:        LDA $7F0800,x             
CODE_15847D:        BPL CODE_15844F           
CODE_15847F:        SEP #$30                  
CODE_158481:        RTL                       

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

CODE_158500:        LDA $0724
CODE_158503:        BNE CODE_158554
CODE_158505:        LDA #$02
CODE_158507:        STA $073B               
CODE_15850A:        LDA $0772   
CODE_15850D:        BNE CODE_158523           
CODE_15850F:        LDX $0535                 
CODE_158512:        LDA.l DATA_11D038,x             
CODE_158516:        STA $0725                 
CODE_158519:        STA $0726                 
CODE_15851C:        LDA.l DATA_11D042,x             
CODE_158520:        STA $0727                 
CODE_158523:        LDA $0535                 
CODE_158526:        LDY #$00                  
CODE_158528:        JSR CODE_158107           
CODE_15852B:        LDA #$02                  
CODE_15852D:        STA $0747                 
CODE_158530:        LDA #$00                  
CODE_158532:        STA $0748                 
CODE_158535:        LDA #$20                  
CODE_158537:        STA $073D                 
CODE_15853A:        LDA #$A0                  
CODE_15853C:        STA $073E                 
CODE_15853F:        INC $0724                 
CODE_158542:        LDA #$E0                  
CODE_158544:        STA $E2                   
CODE_158546:        LDA #$01                  
CODE_158548:        STA $E4                   
CODE_15854A:        STA $0729                 
CODE_15854D:        LSR A                     
CODE_15854E:        STA $073C                 
CODE_158551:        JSR CODE_1583F2           
CODE_158554:        STZ $06                   
CODE_158556:        LDA #$FF                  
CODE_158558:        STA $072A                 
CODE_15855B:        LDA #$A0                  
CODE_15855D:        STA $072B                 
CODE_158560:        JSL CODE_1585F8           
CODE_158564:        LDA $0729                 
CODE_158567:        BNE CODE_158571           
CODE_158569:        LDA #$E8                  
CODE_15856B:        STA $E1                   
CODE_15856D:        LDA #$C8                  
CODE_15856F:        STA $E2                   
CODE_158571:        RTL                       

CODE_158572:        LDA $020A                 
CODE_158575:        STA $0731                 
CODE_158578:        LDA $0204                 
CODE_15857B:        STA $0732                 
CODE_15857E:        LDA $0749                 
CODE_158581:        STA $074B                 
CODE_158584:        LDA $074A                 
CODE_158587:        STA $074C                 
CODE_15858A:        LDA $0734                 
CODE_15858D:        STA $074D                 
CODE_158590:        STZ $020A                 
CODE_158593:        STZ $0204                 
CODE_158596:        RTL                       

CODE_158597:        LDA $0731                 
CODE_15859A:        STA $020A                 
CODE_15859D:        LDA $0732                 
CODE_1585A0:        STA $0204                 
CODE_1585A3:        LDA $074B                 
CODE_1585A6:        STA $0749                 
CODE_1585A9:        LDA $074C                 
CODE_1585AC:        STA $074A                 
CODE_1585AF:        LDA $074D                 
CODE_1585B2:        STA $0734                 
CODE_1585B5:        RTL                       

CODE_1585B6:        LDA $0726                 
CODE_1585B9:        AND #$10                  
CODE_1585BB:        BEQ CODE_1585C4           
CODE_1585BD:        LDA $E1                   
CODE_1585BF:        SEC                       
CODE_1585C0:        SBC #$08                  
CODE_1585C2:        STA $E1                   
CODE_1585C4:        LDA #$01                  
CODE_1585C6:        STA $E4                   
CODE_1585C8:        LDA $0726                 
CODE_1585CB:        STA $0725                 
CODE_1585CE:        LDA #$10                  
CODE_1585D0:        STA $01                   
CODE_1585D2:        LDX #$00                  
CODE_1585D4:        JSL CODE_15873F           
CODE_1585D8:        LDA $073D                 
CODE_1585DB:        STA $073C                 
CODE_1585DE:        LDA $E1                   
CODE_1585E0:        STA $E2                   
CODE_1585E2:        LDA #$F0                  
CODE_1585E4:        STA $0730                 
CODE_1585E7:        STA $072B                 
CODE_1585EA:        LDA $0727                 
CODE_1585ED:        STA $072A                 
CODE_1585F0:        INC $074F                 
CODE_1585F3:        LDA #$01                  
CODE_1585F5:        STA $06                   
CODE_1585F7:        RTL                       

CODE_1585F8:        LDX #$00                  
CODE_1585FA:        STX $0739                 
CODE_1585FD:        JSL CODE_1586F1           
CODE_158601:        JSL CODE_15876F           
CODE_158605:        LDX #$00                  
CODE_158607:        JSL CODE_15866E           
CODE_15860B:        LDA $0730                 
CODE_15860E:        CMP $073B                 
CODE_158611:        BNE CODE_158635           
CODE_158613:        LDA $072B                 
CODE_158616:        CLC                       
CODE_158617:        ADC #$20                  
CODE_158619:        CMP $073C                 
CODE_15861C:        BNE CODE_158635           
CODE_15861E:        LDA $06                   
CODE_158620:        TAX                       
CODE_158621:        BEQ CODE_158628           
CODE_158623:        LDA $0519                 
CODE_158626:        STA $E1                   
CODE_158628:        INC $0739                 
CODE_15862B:        STZ $0729                 
CODE_15862E:        STZ $0736                 
CODE_158631:        STZ $0738                 
CODE_158634:        RTL                       

CODE_158635:        LDA $073C                 
CODE_158638:        AND #$20                  
CODE_15863A:        BNE CODE_15864A           
CODE_15863C:        LDA $0725                 
CODE_15863F:        CMP $072A                 
CODE_158642:        BEQ CODE_15861E           
CODE_158644:        LDX #$00                  
CODE_158646:        JSL CODE_1586CA           
CODE_15864A:        RTL                       

CODE_15864B:        LDA $073D,x               
CODE_15864E:        SEC                       
CODE_15864F:        SBC #$20                  
CODE_158651:        STA $073D,x               
CODE_158654:        BCS CODE_15866D                   
CODE_158656:        LDA $0747,x               
CODE_158659:        SEC                       
CODE_15865A:        SBC #$01                  
CODE_15865C:        CMP #$FF                  
CODE_15865E:        BNE CODE_158664           
CODE_158660:        LDA #$0B                  
CODE_158662:        BRA CODE_15866A           

CODE_158664:        CMP #$07                  
CODE_158666:        BNE CODE_15869C           
CODE_158668:        LDA #$03                  
CODE_15866A:        STA $0747,x               
CODE_15866D:        RTL                       

CODE_15866E:        LDA $073C,x               
CODE_158671:        CLC                       
CODE_158672:        ADC #$20                  
CODE_158674:        STA $073C,x               
CODE_158677:        BCC CODE_15869F           
CODE_158679:        CPX #$00                  
CODE_15867B:        BNE CODE_158687           
CODE_15867D:        LDA $073B                 
CODE_158680:        CLC                       
CODE_158681:        ADC #$01                  
CODE_158683:        STA $073B                 
CODE_158686:        RTL                       

CODE_158687:        DEX                       
CODE_158688:        LDA $0747,x               
CODE_15868B:        CLC                       
CODE_15868C:        ADC #$01                  
CODE_15868E:        CMP #$04                  
CODE_158690:        BNE CODE_158696           
CODE_158692:        LDA #$08                  
CODE_158694:        BRA CODE_15869C           
CODE_158696:        CMP #$0C                  
CODE_158698:        BNE CODE_15869C           
CODE_15869A:        LDA #$00                  
CODE_15869C:        STA $0747,x               
CODE_15869F:        RTL                       

CODE_1586A0:        LDA $0726,x               
CODE_1586A3:        SEC                       
CODE_1586A4:        SBC #$10                  
CODE_1586A6:        STA $0726,x               
CODE_1586A9:        AND #$F0                  
CODE_1586AB:        CMP #$F0                  
CODE_1586AD:        BNE CODE_1586C9           
CODE_1586AF:        LDA $0726,x               
CODE_1586B2:        AND #$0F                  
CODE_1586B4:        CLC                       
CODE_1586B5:        ADC #$E0                  
CODE_1586B7:        STA $0726,x               
CODE_1586BA:        DEC $0726,x               
CODE_1586BD:        LDA $0726,x               
CODE_1586C0:        CMP #$DF                  
CODE_1586C2:        BNE CODE_1586C9           
CODE_1586C4:        LDA #$E9                  
CODE_1586C6:        STA $0726,x               
CODE_1586C9:        RTL                       

CODE_1586CA:        LDA $0725,x               
CODE_1586CD:        CLC                       
CODE_1586CE:        ADC #$10                  
CODE_1586D0:        STA $0725,x               
CODE_1586D3:        AND #$F0                  
CODE_1586D5:        CMP #$F0                  
CODE_1586D7:        BNE CODE_1586F0           
CODE_1586D9:        LDA $0725,x               
CODE_1586DC:        AND #$0F                  
CODE_1586DE:        STA $0725,x               
CODE_1586E1:        INC $0725,x               
CODE_1586E4:        LDA $0725,x               
CODE_1586E7:        CMP #$0A                  
CODE_1586E9:        BNE CODE_1586F0           
CODE_1586EB:        LDA #$00                  
CODE_1586ED:        STA $0725,x               
CODE_1586F0:        RTL                       

CODE_1586F1:        PHX                       
CODE_1586F2:        LDA $0725,x               
CODE_1586F5:        AND #$0F                  
CODE_1586F7:        TAY                       
CODE_1586F8:        LDA.w DATA_11AB1B,y               
CODE_1586FB:        STA $073F                 
CODE_1586FE:        LDA.w DATA_11AB25,y               
CODE_158701:        STA $0740                 
CODE_158704:        LDA #$7F                  
CODE_158706:        STA $0741                 
CODE_158709:        LDA $0725,x               
CODE_15870C:        AND #$F0                  
CODE_15870E:        STA $0742                 
CODE_158711:        CPX #$00                  
CODE_158713:        BNE CODE_158730           
CODE_158715:        LDA $073B                 
CODE_158718:        CMP #$FF                  
CODE_15871A:        BNE CODE_158720           
CODE_15871C:        LDA #$0B                  
CODE_15871E:        BRA CODE_158734           

CODE_158720:        CMP #$04                  
CODE_158722:        BNE CODE_158728           
CODE_158724:        LDA #$08                  
CODE_158726:        BRA CODE_158734           

CODE_158728:        CMP #$0C                  
CODE_15872A:        BNE CODE_158734           
CODE_15872C:        LDA #$00                  
CODE_15872E:        BRA CODE_158734           

CODE_158730:        DEX                       
CODE_158731:        LDA $0747,x               
CODE_158734:        STA $073B                 
CODE_158737:        PLX                       
CODE_158738:        LDA $073C,x               
CODE_15873B:        STA $073C                 
CODE_15873E:        RTL                       

CODE_15873F:        LDA $0725,x               
CODE_158742:        AND #$10                  
CODE_158744:        BEQ CODE_15873E           
CODE_158746:        LDA $0725,x               
CODE_158749:        STA $03                   
CODE_15874B:        SEC                       
CODE_15874C:        SBC $01                   
CODE_15874E:        STA $0725,x               
CODE_158751:        JSL CODE_1586F1           
CODE_158755:        LDA #$0F                  
CODE_158757:        STA $E3                   
CODE_158759:        LDA #$00                  
CODE_15875B:        STA $0743                 
CODE_15875E:        DEC $E3                   
CODE_158760:        LDA $E3                   
CODE_158762:        BPL CODE_15875E           
CODE_158764:        LDA $03                   
CODE_158766:        STA $0725,x               
CODE_158769:        DEC $E4                   
CODE_15876B:        JML CODE_1586F1           

CODE_15876F:        LDA $7F0800               
CODE_158773:        TAX                       
CODE_158774:        LDA $073F                 
CODE_158777:        STA $C4                   
CODE_158779:        LDA $0740                 
CODE_15877C:        STA $C5                   
CODE_15877E:        LDA $0741                 
CODE_158781:        STA $C6                   
CODE_158783:        LDA $073B                 
CODE_158786:        CLC                       
CODE_158787:        ADC #$48                  
CODE_158789:        STA $7F0802,x             
CODE_15878D:        INX                       
CODE_15878E:        LDA $073C                 
CODE_158791:        STA $7F0802,x             
CODE_158795:        INX                       
CODE_158796:        LDA #$00                  
CODE_158798:        STA $7F0802,x             
CODE_15879C:        INX                       
CODE_15879D:        LDA #$40                  
CODE_15879F:        STA $7F0802,x             
CODE_1587A3:        INX                       
CODE_1587A4:        STZ $0743                 
CODE_1587A7:        LDA #$0F                  
CODE_1587A9:        STA $E3                   
CODE_1587AB:        LDA $0744                 ; \ Map16 table into [$00]
CODE_1587AE:        STA $00                   ;  |
CODE_1587B0:        LDA $0745                 ;  |
CODE_1587B3:        STA $01                   ;  |
CODE_1587B5:        LDA $0746                 ;  |
CODE_1587B8:        STA $02                   ; /
CODE_1587BA:        LDY $0742                 
CODE_1587BD:        REP #$30                  ; Accumulator and Index = 16-bit.
CODE_1587BF:        LDA [$C4],y               ; \ Check if tile in Layer 3 Map16 table is #$FF...
CODE_1587C1:        AND #$00FF                ;  |
CODE_1587C4:        CMP #$00FF                ;  |
CODE_1587C7:        BNE CODE_1587D9           ; / If not, branch.
CODE_1587C9:        LDA.l DATA_15934F           ; \ Load value for empty tile.
CODE_1587CD:        STA $00                   ;  | ($159351 is empty tile)
CODE_1587CF:        LDA #$0015                ;  |
CODE_1587D2:        STA $02                   ; /
CODE_1587D4:        LDY #$0000                ; Y = #$0000.
CODE_1587D7:        BRA CODE_1587DD           

CODE_1587D9:        ASL A                     ; \ Multiply Map16 num by 8.
CODE_1587DA:        ASL A                     ;  |
CODE_1587DB:        ASL A                     ;  |
CODE_1587DC:        TAY                       ; / Into Y index.
CODE_1587DD:        LDA $074F                 
CODE_1587E0:        AND #$00FF                
CODE_1587E3:        BEQ CODE_1587E9           
CODE_1587E5:        INY                       
CODE_1587E6:        INY                       
CODE_1587E7:        INY                       
CODE_1587E8:        INY                       
CODE_1587E9:        REP #$20                  ; Accumulator = 16-bit.
CODE_1587EB:        LDA [$00],y               
CODE_1587ED:        STA $7F0802,x             
CODE_1587F1:        SEP #$20                  ; Accumulator = 8-bit.
CODE_1587F3:        INC $0743                 
CODE_1587F6:        INX                       
CODE_1587F7:        INX                       
CODE_1587F8:        INY                       
CODE_1587F9:        INY                       
CODE_1587FA:        LDA $0743                 
CODE_1587FD:        LSR A                     
CODE_1587FE:        BCS CODE_1587E9                   
CODE_158800:        INC $0742                 
CODE_158803:        SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_158805:        LDA $0743                 
CODE_158808:        CMP #$20                  
CODE_15880A:        BCC CODE_1587AB           
CODE_15880C:        LDA #$FF                  ; \ End upload.
CODE_15880E:        STA $7F0802,x             ; /
CODE_158812:        TXA                       ; \ Amount of tiles transferred...
CODE_158813:        STA $7F0800               ; / Into $7F0800.
CODE_158817:        LDA $074F                 
CODE_15881A:        EOR #$01                  
CODE_15881C:        STA $074F                 
CODE_15881F:        RTL                       

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

CODE_159400:        LDA $0533
CODE_159403:        CMP #$0E                  
CODE_159405:        BNE CODE_159411           
CODE_159407:        LDA $0534                 
CODE_15940A:        CMP #$03                  
CODE_15940C:        BNE CODE_159411           
CODE_15940E:        JMP CODE_159E65           

CODE_159411:        STZ $0542                 
CODE_159414:        LDA #$FF                  
CODE_159416:        STA $0756                 
CODE_159419:        STZ $09                   
CODE_15941B:        STZ $0757                 
CODE_15941E:        LDA ($D9),y               
CODE_159420:        CMP #$FF                  
CODE_159422:        BNE CODE_159433           
CODE_159424:        LDA $0541                 
CODE_159427:        INC A                     
CODE_159428:        INC A                     
CODE_159429:        STA $0542                 
CODE_15942C:        STZ $0E                   
CODE_15942E:        STZ $02C8                 
CODE_159431:        BRA CODE_159479           

CODE_159433:        LDA ($D9),y               
CODE_159435:        AND #$F0                  
CODE_159437:        BEQ CODE_15945D           
CODE_159439:        CMP #$F0                  
CODE_15943B:        BNE CODE_159461           
CODE_15943D:        STZ $02C8                 
CODE_159440:        LDA ($D9),y               
CODE_159442:        AND #$0F                  
CODE_159444:        STY $0F                   
CODE_159446:        JSL CODE_12F69F           
CODE_15944A:        LDY $0F                   
CODE_15944C:        LDA ($D9),y               
CODE_15944E:        AND #$0F                  
CODE_159450:        CMP #$02                  
CODE_159452:        BCC CODE_159479           
CODE_159454:        CMP #$06                  
CODE_159456:        BEQ CODE_15945D           
CODE_159458:        CMP #$05                  
CODE_15945A:        BNE CODE_15945E           
CODE_15945C:        INY                       
CODE_15945D:        INY                       
CODE_15945E:        INY                       
CODE_15945F:        BRA CODE_15941B           

CODE_159461:        CLC                       
CODE_159462:        ADC $09                   
CODE_159464:        BCC CODE_15946A           
CODE_159466:        ADC #$0F                  
CODE_159468:        BRA CODE_159470           

CODE_15946A:        CMP #$F0                  
CODE_15946C:        BNE CODE_159473           
CODE_15946E:        LDA #$00                  
CODE_159470:        INC $0542                 
CODE_159473:        STA $09                   
CODE_159475:        INY                       
CODE_159476:        INY                       
CODE_159477:        BRA CODE_15941B           

CODE_159479:        LDA $E5                   
CODE_15947B:        INC A                     
CODE_15947C:        CMP $0E                   
CODE_15947E:        BCC CODE_159489           
CODE_159480:        LDA ($D9),y               
CODE_159482:        CMP #$FF                  
CODE_159484:        BEQ CODE_159489           
CODE_159486:        JSR CODE_159691           
CODE_159489:        JSR CODE_1594EC           
CODE_15948C:        JSR CODE_159995           
CODE_15948F:        LDA $0764                 
CODE_159492:        BEQ CODE_15949A           
CODE_159494:        JSL CODE_12F7CE           
CODE_159498:        BRA CODE_1594A6           

CODE_15949A:        LDA $EB                   
CODE_15949C:        BEQ CODE_1594A3           
CODE_15949E:        JSR CODE_159517           
CODE_1594A1:        BRA CODE_1594A6           

CODE_1594A3:        JSR CODE_1599F1           
CODE_1594A6:        STZ $0757                 
CODE_1594A9:        LDA $EB                   
CODE_1594AB:        BEQ CODE_1594BB           
CODE_1594AD:        INC $E5                   
CODE_1594AF:        LDA $E5                   
CODE_1594B1:        CMP #$10                  
CODE_1594B3:        BNE CODE_1594C0           
CODE_1594B5:        INC $E9                   
CODE_1594B7:        STZ $E5                   
CODE_1594B9:        BRA CODE_1594C0           

CODE_1594BB:        LDA #$10                  
CODE_1594BD:        JSR CODE_15967D           
CODE_1594C0:        LDA $E9                   
CODE_1594C2:        CMP $0542                 
CODE_1594C5:        BNE CODE_159489           
CODE_1594C7:        LDA $EB                   
CODE_1594C9:        BEQ CODE_1594D3           
CODE_1594CB:        LDA $E5                   
CODE_1594CD:        CMP $0E                   
CODE_1594CF:        BCC CODE_159479           
CODE_1594D1:        BCS CODE_1594D9                   
CODE_1594D3:        LDA $E6                   
CODE_1594D5:        CMP $0E                   
CODE_1594D7:        BCC CODE_159479           
CODE_1594D9:        LDA ($D9),y               
CODE_1594DB:        CMP #$FF                  
CODE_1594DD:        BEQ CODE_1594EB           
CODE_1594DF:        INY                       
CODE_1594E0:        LDA ($D9),y               
CODE_1594E2:        AND #$1F                  
CODE_1594E4:        STA $0543                 
CODE_1594E7:        INY                       
CODE_1594E8:        JMP CODE_15941B           

CODE_1594EB:        RTL                       

CODE_1594EC:        STY $0713                 
CODE_1594EF:        LDX $E9                   
CODE_1594F1:        LDY $0534                 
CODE_1594F4:        LDA.w DATA_11AB11,y               
CODE_1594F7:        CLC                       
CODE_1594F8:        ADC.w DATA_11AAFB,x               
CODE_1594FB:        STA $02                   
CODE_1594FD:        LDA.w DATA_11AAF0,x               
CODE_159500:        STA $01                   
CODE_159502:        LDA.w DATA_11AB06,x               
CODE_159505:        STA $03                   
CODE_159507:        LDA $E6                   
CODE_159509:        CLC                       
CODE_15950A:        ADC $E5                   
CODE_15950C:        STA $E7                   
CODE_15950E:        LDY $0713                 
CODE_159511:        RTS                       

DATA_159512:        db $0F,$1E,$2D,$3C,$4B

CODE_159517:        STY $04                   
CODE_159519:        INC $0756                 
CODE_15951C:        LDA $0543                 
CODE_15951F:        ASL A                     
CODE_159520:        TAX                       
CODE_159521:        LDA.l PNTR_15A90E,x             
CODE_159525:        STA $C4                   
CODE_159527:        INX                       
CODE_159528:        LDA.l PNTR_15A90E,x             
CODE_15952C:        STA $C5                   
CODE_15952E:        LDA #$15                  
CODE_159530:        STA $C6                   
CODE_159532:        LDA $02C8                 
CODE_159535:        BNE CODE_15954D           
CODE_159537:        LDA $075A                 
CODE_15953A:        BEQ CODE_159541           
CODE_15953C:        STZ $075A                 
CODE_15953F:        BRA CODE_159577           

CODE_159541:        LDA $0757                 
CODE_159544:        CMP #$01                  
CODE_159546:        BNE CODE_159561           
CODE_159548:        INC $075A                 
CODE_15954B:        BRA CODE_159561           

CODE_15954D:        LDA $0757                 
CODE_159550:        BEQ CODE_159561           
CODE_159552:        CMP #$FF                  
CODE_159554:        BEQ CODE_159561           
CODE_159556:        CMP #$01                  
CODE_159558:        BEQ CODE_15955E           
CODE_15955A:        LDX #$04                  
CODE_15955C:        BRA CODE_159567           

CODE_15955E:        INC $075A                 
CODE_159561:        LDA $0756                 
CODE_159564:        AND #$03                  
CODE_159566:        TAX                       
CODE_159567:        LDA.l DATA_159512,x             
CODE_15956B:        REP #$20                  
CODE_15956D:        AND #$00FF                
CODE_159570:        CLC                       
CODE_159571:        ADC $C4                   
CODE_159573:        STA $C4                   
CODE_159575:        SEP #$20                  
CODE_159577:        LDY $E7                   
CODE_159579:        JSR CODE_15958C           
CODE_15957C:        LDY $E7                   
CODE_15957E:        JSR CODE_1597B7           
CODE_159581:        LDA $02C8                 
CODE_159584:        BNE CODE_159589           
CODE_159586:        INC $02C8                 
CODE_159589:        LDY $04                   
CODE_15958B:        RTS                       

CODE_15958C:        STZ $0713                 
CODE_15958F:        LDA $C4                   
CODE_159591:        STA $0716                 
CODE_159594:        LDA $C5                   
CODE_159596:        STA $0717                 
CODE_159599:        LDA $0757                 
CODE_15959C:        AND #$F0                  
CODE_15959E:        BNE CODE_1595AF           
CODE_1595A0:        LDA $075B                 
CODE_1595A3:        AND #$0F                  
CODE_1595A5:        BEQ CODE_1595C2           
CODE_1595A7:        LDA #$0E                  
CODE_1595A9:        SEC                       
CODE_1595AA:        SBC $075C                 
CODE_1595AD:        BRA CODE_1595BC           

CODE_1595AF:        LDA $075B                 
CODE_1595B2:        AND #$0F                  
CODE_1595B4:        BNE CODE_1595A7           
CODE_1595B6:        LDA #$0E                  
CODE_1595B8:        SEC                       
CODE_1595B9:        SBC $0758                 
CODE_1595BC:        STA $0715                 
CODE_1595BF:        STZ $0757                 
CODE_1595C2:        LDA $0715                 
CODE_1595C5:        BEQ CODE_1595FE           
CODE_1595C7:        CMP $0713                 
CODE_1595CA:        BPL CODE_1595FE           
CODE_1595CC:        LDA $C4                   
CODE_1595CE:        STA $0716                 
CODE_1595D1:        LDA $C5                   
CODE_1595D3:        STA $0717                 
CODE_1595D6:        LDA $0543                 
CODE_1595D9:        ASL A                     
CODE_1595DA:        TAX                       
CODE_1595DB:        LDA.l PNTR_15A90E,x             
CODE_1595DF:        STA $C4                   
CODE_1595E1:        INX                       
CODE_1595E2:        LDA.l PNTR_15A90E,x             
CODE_1595E6:        STA $C5                   
CODE_1595E8:        LDA $0756                 
CODE_1595EB:        AND #$03                  
CODE_1595ED:        TAX                       
CODE_1595EE:        LDA.l DATA_159512,x             
CODE_1595F2:        REP #$20                  
CODE_1595F4:        AND #$00FF                
CODE_1595F7:        CLC                       
CODE_1595F8:        ADC $C4                   
CODE_1595FA:        STA $C4                   
CODE_1595FC:        SEP #$20                  
CODE_1595FE:        STY $0714                 
CODE_159601:        LDY $0713                 
CODE_159604:        LDA [$C4],y               
CODE_159606:        LDY $0714                 
CODE_159609:        STA [$01],y               
CODE_15960B:        CMP #$40                  
CODE_15960D:        BEQ CODE_159625           
CODE_15960F:        REP #$30                  
CODE_159611:        TYA                       
CODE_159612:        AND #$00FF                
CODE_159615:        CLC                       
CODE_159616:        ADC #$7000                
CODE_159619:        TAY                       
CODE_15961A:        SEP #$20                  
CODE_15961C:        LDA #$01                  
CODE_15961E:        STA [$01],y               
CODE_159620:        SEP #$10                  
CODE_159622:        LDY $0714                 
CODE_159625:        LDA $0716                 
CODE_159628:        STA $C4                   
CODE_15962A:        LDA $0717                 
CODE_15962D:        STA $C5                   
CODE_15962F:        TYA                       
CODE_159630:        CLC                       
CODE_159631:        ADC #$10                  
CODE_159633:        TAY                       
CODE_159634:        INC $0713                 
CODE_159637:        LDA $0713                 
CODE_15963A:        CMP #$0F                  
CODE_15963C:        BEQ CODE_159641           
CODE_15963E:        BRL CODE_1595C2           
CODE_159641:        LDA $0757                 
CODE_159644:        STA $075B                 
CODE_159647:        LDA $0758                 
CODE_15964A:        STA $075C                 
CODE_15964D:        STZ $0715                 
CODE_159650:        RTS                       

CODE_159651:        INY                       
CODE_159652:        TYA                       
CODE_159653:        AND #$0F                  
CODE_159655:        BNE CODE_159668           
CODE_159657:        TYA                       
CODE_159658:        SEC                       
CODE_159659:        SBC #$10                  
CODE_15965B:        TAY                       
CODE_15965C:        STX $0B                   
CODE_15965E:        LDX $E9                   
CODE_159660:        INX                       
CODE_159661:        STX $0D                   
CODE_159663:        JSR CODE_1594F1           
CODE_159666:        LDX $0B                   
CODE_159668:        RTS                       

CODE_159669:        TYA                       
CODE_15966A:        CLC                       
CODE_15966B:        ADC #$10                  
CODE_15966D:        TAY                       
CODE_15966E:        CMP #$F0                  
CODE_159670:        BCC CODE_15967C           
CODE_159672:        LDX $E9                   
CODE_159674:        INX                       
CODE_159675:        JSR CODE_1594F1           
CODE_159678:        TYA                       
CODE_159679:        AND #$0F                  
CODE_15967B:        TAY                       
CODE_15967C:        RTS                       

CODE_15967D:        CLC                       
CODE_15967E:        ADC $E6                   
CODE_159680:        BCC CODE_159686           
CODE_159682:        ADC #$0F                  
CODE_159684:        BRA CODE_15968C           
CODE_159686:        CMP #$F0                  
CODE_159688:        BNE CODE_15968E           
CODE_15968A:        LDA #$00                  
CODE_15968C:        INC $E9                   
CODE_15968E:        STA $E6                   
CODE_159690:        RTS                       

CODE_159691:        STY $0712                 
CODE_159694:        INY                       
CODE_159695:        LDA ($D9),y               
CODE_159697:        CMP #$FF                  
CODE_159699:        BNE CODE_15969E           
CODE_15969B:        BRL CODE_1597AD           

CODE_15969E:        AND #$1F                  
CODE_1596A0:        ASL A                     
CODE_1596A1:        TAX                       
CODE_1596A2:        LDA.l PNTR_15A90E,x             
CODE_1596A6:        STA $C4                   
CODE_1596A8:        INX                       
CODE_1596A9:        LDA.l PNTR_15A90E,x             
CODE_1596AD:        STA $C5                   
CODE_1596AF:        LDA #$15                  
CODE_1596B1:        STA $C6                   
CODE_1596B3:        STZ $0716                 
CODE_1596B6:        STZ $0717                 
CODE_1596B9:        STZ $071A                 
CODE_1596BC:        LDY #$00                  
CODE_1596BE:        LDA [$C4],y               
CODE_1596C0:        CMP #$40                  
CODE_1596C2:        BEQ CODE_1596CC           
CODE_1596C4:        LDX $071A                 
CODE_1596C7:        INC $0716,x               
CODE_1596CA:        BRA CODE_1596DE           

CODE_1596CC:        CPY #$00                  
CODE_1596CE:        BEQ CODE_1596D8           
CODE_1596D0:        DEY                       
CODE_1596D1:        LDA [$C4],y               
CODE_1596D3:        CMP #$40                  
CODE_1596D5:        BEQ CODE_1596DD           
CODE_1596D7:        INY                       
CODE_1596D8:        INC $071A                 
CODE_1596DB:        BRA CODE_1596DE           

CODE_1596DD:        INY                       
CODE_1596DE:        INY                       
CODE_1596DF:        CPY #$0F                  
CODE_1596E1:        BNE CODE_1596BE           
CODE_1596E3:        LDA $0716                 
CODE_1596E6:        CMP #$0F                  
CODE_1596E8:        BNE CODE_1596ED           
CODE_1596EA:        STA $0717                 
CODE_1596ED:        LDA $0543                 
CODE_1596F0:        ASL A                     
CODE_1596F1:        TAX                       
CODE_1596F2:        LDA.l PNTR_15A90E,x             
CODE_1596F6:        STA $C4                   
CODE_1596F8:        INX                       
CODE_1596F9:        LDA.l PNTR_15A90E,x             
CODE_1596FD:        STA $C5                   
CODE_1596FF:        LDA #$15                  
CODE_159701:        STA $C6                   
CODE_159703:        STZ $0718                 
CODE_159706:        STZ $0719                 
CODE_159709:        STZ $071A                 
CODE_15970C:        LDY #$00                  
CODE_15970E:        LDA [$C4],y               
CODE_159710:        CMP #$40                  
CODE_159712:        BEQ CODE_15971C           
CODE_159714:        LDX $071A                 
CODE_159717:        INC $0718,x               
CODE_15971A:        BRA CODE_15972E           
CODE_15971C:        CPY #$00                  
CODE_15971E:        BEQ CODE_159728           
CODE_159720:        DEY                       
CODE_159721:        LDA [$C4],y               
CODE_159723:        CMP #$40                  
CODE_159725:        BEQ CODE_15972D           
CODE_159727:        INY                       
CODE_159728:        INC $071A                 
CODE_15972B:        BRA CODE_15972E           

CODE_15972D:        INY                       
CODE_15972E:        INY                       
CODE_15972F:        CPY #$0F                  
CODE_159731:        BNE CODE_15970E           
CODE_159733:        LDA $0718                 
CODE_159736:        CMP #$0F                  
CODE_159738:        BNE CODE_15973D           
CODE_15973A:        STA $0719                 
CODE_15973D:        LDA $0719                 
CODE_159740:        CMP $0717                 
CODE_159743:        BEQ CODE_159754           
CODE_159745:        BMI CODE_159761           
CODE_159747:        LDA #$10                  
CODE_159749:        STA $0757                 
CODE_15974C:        LDA $0717                 
CODE_15974F:        STA $0758                 
CODE_159752:        BRA CODE_15976C           

CODE_159754:        LDA #$FF                  
CODE_159756:        STA $0757                 
CODE_159759:        LDA $0717                 
CODE_15975C:        STA $0758                 
CODE_15975F:        BRA CODE_15976C           

CODE_159761:        LDA #$01                  
CODE_159763:        STA $0757                 
CODE_159766:        LDA $0719                 
CODE_159769:        STA $0758                 
CODE_15976C:        LDA $0718                 
CODE_15976F:        CMP $0716                 
CODE_159772:        BEQ CODE_159788           
CODE_159774:        BMI CODE_159797           
CODE_159776:        LDA $0716                 
CODE_159779:        BEQ CODE_1597AD           
CODE_15977B:        LDA #$10                  
CODE_15977D:        STA $075D                 
CODE_159780:        LDA $0716                 
CODE_159783:        STA $075E                 
CODE_159786:        BRA CODE_1597AD           

CODE_159788:        LDA $0718                 
CODE_15978B:        BEQ CODE_1597AD           
CODE_15978D:        STA $075E                 
CODE_159790:        LDA #$FF                  
CODE_159792:        STA $075D                 
CODE_159795:        BRA CODE_1597AD           

CODE_159797:        LDA $0718                 
CODE_15979A:        BEQ CODE_1597AD           
CODE_15979C:        LDA #$11                  
CODE_15979E:        STA $075D                 
CODE_1597A1:        LDA $0718                 
CODE_1597A4:        STA $075E                 
CODE_1597A7:        LDA $0716                 
CODE_1597AA:        STA $0763                 
CODE_1597AD:        LDY $0712                 
CODE_1597B0:        RTS                       

DATA_1597B1:        db $05,$06

DATA_1597B3:        db $11,$12,$04,$10

CODE_1597B7:        STZ $0713                 
CODE_1597BA:        LDA $075D                 
CODE_1597BD:        AND #$F0                  
CODE_1597BF:        BNE CODE_1597CB           
CODE_1597C1:        LDA $075F                 
CODE_1597C4:        AND #$0F                  
CODE_1597C6:        BNE CODE_1597D6           
CODE_1597C8:        BRL CODE_159882           

CODE_1597CB:        LDA $075E                 
CODE_1597CE:        STA $0715                 
CODE_1597D1:        STZ $0761                 
CODE_1597D4:        BRA CODE_1597E3           

CODE_1597D6:        LDA $0760                 
CODE_1597D9:        STA $0715                 
CODE_1597DC:        LDA #$01                  
CODE_1597DE:        STA $0761                 
CODE_1597E1:        BRA CODE_15981C           

CODE_1597E3:        TYA                       
CODE_1597E4:        AND #$10                  
CODE_1597E6:        BNE CODE_159802           
CODE_1597E8:        LDA [$01],y               
CODE_1597EA:        CMP #$07                  
CODE_1597EC:        BNE CODE_1597F5           
CODE_1597EE:        LDA $0756                 
CODE_1597F1:        AND #$01                  
CODE_1597F3:        BRA CODE_159855           

CODE_1597F5:        CMP #$13                  
CODE_1597F7:        BNE CODE_159863           
CODE_1597F9:        LDA $0756                 
CODE_1597FC:        AND #$01                  
CODE_1597FE:        EOR #$01                  
CODE_159800:        BRA CODE_159855           

CODE_159802:        LDA [$01],y               
CODE_159804:        CMP #$07                  
CODE_159806:        BNE CODE_159811           
CODE_159808:        LDA $0756                 
CODE_15980B:        AND #$01                  
CODE_15980D:        EOR #$01                  
CODE_15980F:        BRA CODE_15985C           

CODE_159811:        CMP #$13                  
CODE_159813:        BNE CODE_159863           
CODE_159815:        LDA $0756                 
CODE_159818:        AND #$01                  
CODE_15981A:        BRA CODE_15985C           
CODE_15981C:        TYA                       
CODE_15981D:        AND #$10                  
CODE_15981F:        BNE CODE_15983B           
CODE_159821:        LDA [$01],y               
CODE_159823:        CMP #$04                  
CODE_159825:        BNE CODE_15982E           
CODE_159827:        LDA $0756                 
CODE_15982A:        AND #$01                  
CODE_15982C:        BRA CODE_159855           

CODE_15982E:        CMP #$10                  
CODE_159830:        BNE CODE_159863           
CODE_159832:        LDA $0756                 
CODE_159835:        AND #$01                  
CODE_159837:        EOR #$01                  
CODE_159839:        BRA CODE_159855           

CODE_15983B:        LDA [$01],y               
CODE_15983D:        CMP #$04                  
CODE_15983F:        BNE CODE_15984A           
CODE_159841:        LDA $0756                 
CODE_159844:        AND #$01                  
CODE_159846:        EOR #$01                  
CODE_159848:        BRA CODE_15985C           

CODE_15984A:        CMP #$10                  
CODE_15984C:        BNE CODE_159863           
CODE_15984E:        LDA $0756                 
CODE_159851:        AND #$01                  
CODE_159853:        BRA CODE_15985C           

CODE_159855:        TAX                       
CODE_159856:        LDA.l DATA_1597B1,x             
CODE_15985A:        BRA CODE_159861           

CODE_15985C:        TAX                       
CODE_15985D:        LDA.l DATA_1597B3,x             
CODE_159861:        STA [$01],y               
CODE_159863:        LDA $EB                   
CODE_159865:        BNE CODE_15986A           
CODE_159867:        INY                       
CODE_159868:        BRA CODE_15986F           
CODE_15986A:        TYA                       
CODE_15986B:        CLC                       
CODE_15986C:        ADC #$10                  
CODE_15986E:        TAY                       
CODE_15986F:        INC $0713                 
CODE_159872:        LDA $0713                 
CODE_159875:        CMP $0715                 
CODE_159878:        BPL CODE_159882           
CODE_15987A:        LDA $0761                 
CODE_15987D:        BNE CODE_15981C           
CODE_15987F:        BRL CODE_1597E3           
CODE_159882:        LDA $075D                 
CODE_159885:        STA $075F                 
CODE_159888:        LDA $075E                 
CODE_15988B:        STA $0760                 
CODE_15988E:        STZ $075D                 
CODE_159891:        STZ $0715                 
CODE_159894:        RTS                       

CODE_159895:        STY $0712                 
CODE_159898:        JSR CODE_159929           
CODE_15989B:        LDA $0713                 
CODE_15989E:        BEQ CODE_1598DE           
CODE_1598A0:        LDA [$01],y               
CODE_1598A2:        CMP #$01                  
CODE_1598A4:        BEQ CODE_1598C4           
CODE_1598A6:        CMP #$02                  
CODE_1598A8:        BEQ CODE_1598C4           
CODE_1598AA:        CMP #$05                  
CODE_1598AC:        BEQ CODE_1598C8           
CODE_1598AE:        CMP #$06                  
CODE_1598B0:        BEQ CODE_1598C8           
CODE_1598B2:        CMP #$11                  
CODE_1598B4:        BEQ CODE_1598C8           
CODE_1598B6:        CMP #$12                  
CODE_1598B8:        BEQ CODE_1598C8           
CODE_1598BA:        CMP #$15                  
CODE_1598BC:        BEQ CODE_1598D7           
CODE_1598BE:        CMP #$16                  
CODE_1598C0:        BEQ CODE_1598D7           
CODE_1598C2:        BRA CODE_1598DE           

CODE_1598C4:        LDA #$03                  
CODE_1598C6:        BRA CODE_1598D9           

CODE_1598C8:        LDA $0712                 
CODE_1598CB:        AND #$10                  
CODE_1598CD:        BNE CODE_1598D3           
CODE_1598CF:        LDA #$07                  
CODE_1598D1:        BRA CODE_1598D9           

CODE_1598D3:        LDA #$13                  
CODE_1598D5:        BRA CODE_1598D9           

CODE_1598D7:        LDA #$17                  
CODE_1598D9:        LDY $0712                 
CODE_1598DC:        STA [$01],y               
CODE_1598DE:        RTL                       

CODE_1598DF:        STY $0712                 
CODE_1598E2:        JSR CODE_159929           
CODE_1598E5:        LDA $0713                 
CODE_1598E8:        BEQ CODE_159928           
CODE_1598EA:        LDA [$01],y               
CODE_1598EC:        CMP #$01                  
CODE_1598EE:        BEQ CODE_15990E           
CODE_1598F0:        CMP #$02                  
CODE_1598F2:        BEQ CODE_15990E           
CODE_1598F4:        CMP #$05                  
CODE_1598F6:        BEQ CODE_159912           
CODE_1598F8:        CMP #$06                  
CODE_1598FA:        BEQ CODE_159912           
CODE_1598FC:        CMP #$11                  
CODE_1598FE:        BEQ CODE_159912           
CODE_159900:        CMP #$12                  
CODE_159902:        BEQ CODE_159912           
CODE_159904:        CMP #$15                  
CODE_159906:        BEQ CODE_159921           
CODE_159908:        CMP #$16                  
CODE_15990A:        BEQ CODE_159921           
CODE_15990C:        BRA CODE_159928           

CODE_15990E:        LDA #$00                  
CODE_159910:        BRA CODE_159923           

CODE_159912:        LDA $0712                 
CODE_159915:        AND #$10                  
CODE_159917:        BNE CODE_15991D           
CODE_159919:        LDA #$04                  
CODE_15991B:        BRA CODE_159923           
CODE_15991D:        LDA #$10                  
CODE_15991F:        BRA CODE_159923           
CODE_159921:        LDA #$14                  
CODE_159923:        LDY $0712                 
CODE_159926:        STA [$01],y               
CODE_159928:        RTL                       

CODE_159929:        REP #$30                  
CODE_15992B:        TYA                       
CODE_15992C:        AND #$00FF                
CODE_15992F:        CLC                       
CODE_159930:        ADC #$7000                
CODE_159933:        TAY                       
CODE_159934:        SEP #$20                  
CODE_159936:        LDA [$01],y               
CODE_159938:        STA $0713                 
CODE_15993B:        SEP #$10                  
CODE_15993D:        RTS                       

CODE_15993E:        LDA $0533                 
CODE_159941:        ASL A                     
CODE_159942:        TAX                       
CODE_159943:        LDA.l PNTR_15B3F8,x             
CODE_159947:        STA $01                   
CODE_159949:        INX                       
CODE_15994A:        LDA.l PNTR_15B3F8,x             
CODE_15994E:        STA $02                   
CODE_159950:        LDA #$15                  
CODE_159952:        STA $03                   
CODE_159954:        LDA #$7E                  
CODE_159956:        STA $0F                   
CODE_159958:        REP #$10                  
CODE_15995A:        LDY #$0000                
CODE_15995D:        REP #$30                  
CODE_15995F:        LDA [$01],y               
CODE_159961:        CMP #$FFFF                
CODE_159964:        BEQ CODE_159992           
CODE_159966:        AND #$FF00                
CODE_159969:        CMP #$FE00                
CODE_15996C:        BNE CODE_159978           
CODE_15996E:        LDA [$01],y               
CODE_159970:        AND #$00FF                
CODE_159973:        STA $0721                 
CODE_159976:        INY                       
CODE_159977:        INY                       
CODE_159978:        LDA [$01],y               
CODE_15997A:        STA $0D                   
CODE_15997C:        SEP #$20                  
CODE_15997E:        LDA $0721                 
CODE_159981:        STA [$0D]                 
CODE_159983:        LDA $0E                   
CODE_159985:        CLC                       
CODE_159986:        ADC #$70                  
CODE_159988:        STA $0E                   
CODE_15998A:        LDA #$01                  
CODE_15998C:        STA [$0D]                 
CODE_15998E:        INY                       
CODE_15998F:        INY                       
CODE_159990:        BRA CODE_15995D           

CODE_159992:        SEP #$30                  
CODE_159994:        RTL                       

CODE_159995:        STY $0712                 
CODE_159998:        LDA $01                   
CODE_15999A:        STA $0713                 
CODE_15999D:        LDA $02                   
CODE_15999F:        STA $0714                 
CODE_1599A2:        LDA $03                   
CODE_1599A4:        STA $0715                 
CODE_1599A7:        STZ $0764                 
CODE_1599AA:        LDA $0533                 
CODE_1599AD:        ASL A                     
CODE_1599AE:        TAX                       
CODE_1599AF:        LDA.l PNTR_15B3A8,x             
CODE_1599B3:        STA $01                   
CODE_1599B5:        INX                       
CODE_1599B6:        LDA.l PNTR_15B3A8,x             
CODE_1599BA:        STA $02                   
CODE_1599BC:        LDA #$15                  
CODE_1599BE:        STA $03                   
CODE_1599C0:        LDY #$00                  
CODE_1599C2:        LDA [$01],y               
CODE_1599C4:        CMP #$FF                  
CODE_1599C6:        BEQ CODE_1599DE           
CODE_1599C8:        CMP $0534                 
CODE_1599CB:        BNE CODE_1599DA           
CODE_1599CD:        INY                       
CODE_1599CE:        LDA [$01],y               
CODE_1599D0:        CMP $0543                 
CODE_1599D3:        BNE CODE_1599DB           
CODE_1599D5:        INC $0764                 
CODE_1599D8:        BRA CODE_1599DE           

CODE_1599DA:        INY                       
CODE_1599DB:        INY                       
CODE_1599DC:        BRA CODE_1599C2           

CODE_1599DE:        LDY $0712                 
CODE_1599E1:        LDA $0713                 
CODE_1599E4:        STA $01                   
CODE_1599E6:        LDA $0714                 
CODE_1599E9:        STA $02                   
CODE_1599EB:        LDA $0715                 
CODE_1599EE:        STA $03                   
CODE_1599F0:        RTS                       

CODE_1599F1:        STY $04                   
CODE_1599F3:        INC $0756                 
CODE_1599F6:        LDA $0533                 
CODE_1599F9:        CMP #$0D                  
CODE_1599FB:        BNE CODE_159A18           
CODE_1599FD:        LDA $0534                 
CODE_159A00:        CMP #$03                  
CODE_159A02:        BNE CODE_159A18           
CODE_159A04:        LDA $E9                   
CODE_159A06:        CMP #$01                  
CODE_159A08:        BNE CODE_159A0E           
CODE_159A0A:        LDA #$1F                  
CODE_159A0C:        BRA CODE_159A1B           

CODE_159A0E:        LDA $E9                   
CODE_159A10:        CMP #$02                  
CODE_159A12:        BNE CODE_159A18           
CODE_159A14:        LDA #$20                  
CODE_159A16:        BRA CODE_159A1B           

CODE_159A18:        LDA $0543                 
CODE_159A1B:        ASL A                     
CODE_159A1C:        TAX                       
CODE_159A1D:        LDA.l PNTR_15B106,x             
CODE_159A21:        STA $C4                   
CODE_159A23:        INX                       
CODE_159A24:        LDA.l PNTR_15B106,x             
CODE_159A28:        STA $C5                   
CODE_159A2A:        LDA #$15                  
CODE_159A2C:        STA $C6                   
CODE_159A2E:        LDA $0756                 
CODE_159A31:        AND #$01                  
CODE_159A33:        ASL A                     
CODE_159A34:        ASL A                     
CODE_159A35:        ASL A                     
CODE_159A36:        ASL A                     
CODE_159A37:        REP #$20                  
CODE_159A39:        AND #$00FF                
CODE_159A3C:        CLC                       
CODE_159A3D:        ADC $C4                   
CODE_159A3F:        STA $C4                   
CODE_159A41:        SEP #$20                  
CODE_159A43:        LDY $E7                   
CODE_159A45:        JSR CODE_159A4B           
CODE_159A48:        LDY $04                   
CODE_159A4A:        RTS                       

CODE_159A4B:        STZ $0713                 
CODE_159A4E:        STY $0714                 
CODE_159A51:        LDY $0713                 
CODE_159A54:        LDA [$C4],y               
CODE_159A56:        CMP #$9D                  
CODE_159A58:        BNE CODE_159A6A           
CODE_159A5A:        LDX $0533                 
CODE_159A5D:        CPX #$06                  
CODE_159A5F:        BNE CODE_159A6A           
CODE_159A61:        LDX $0534                 
CODE_159A64:        CPX #$01                  
CODE_159A66:        BNE CODE_159A6A           
CODE_159A68:        LDA #$05                  
CODE_159A6A:        LDY $0714                 
CODE_159A6D:        STA [$01],y               
CODE_159A6F:        CMP #$40                  
CODE_159A71:        BNE CODE_159A76           
CODE_159A73:        JMP CODE_159AF8           

CODE_159A76:        CMP #$9D                  
CODE_159A78:        BEQ CODE_159AF8           
CODE_159A7A:        CMP #$05                  
CODE_159A7C:        BNE CODE_159AB4           
CODE_159A7E:        LDA $0543                 
CODE_159A81:        CMP #$0C                  
CODE_159A83:        BEQ CODE_159AF8           
CODE_159A85:        CMP #$0A                  
CODE_159A87:        BNE CODE_159A92           
CODE_159A89:        TYA                       
CODE_159A8A:        AND #$0F                  
CODE_159A8C:        CMP #$0F                  
CODE_159A8E:        BNE CODE_159AF8           
CODE_159A90:        BRA CODE_159AB4           

CODE_159A92:        CMP #$11                  
CODE_159A94:        BNE CODE_159AA3           
CODE_159A96:        TYA                       
CODE_159A97:        AND #$0F                  
CODE_159A99:        CMP #$06                  
CODE_159A9B:        BMI CODE_159AE5           
CODE_159A9D:        CMP #$0F                  
CODE_159A9F:        BEQ CODE_159AE5           
CODE_159AA1:        BRA CODE_159AF8           

CODE_159AA3:        CMP #$0B                  
CODE_159AA5:        BNE CODE_159AE5           
CODE_159AA7:        TYA                       
CODE_159AA8:        AND #$0F                  
CODE_159AAA:        CMP #$07                  
CODE_159AAC:        BEQ CODE_159AE5           
CODE_159AAE:        CMP #$0F                  
CODE_159AB0:        BEQ CODE_159AE5           
CODE_159AB2:        BRA CODE_159AF8           

CODE_159AB4:        CMP #$06                  
CODE_159AB6:        BNE CODE_159AE5           
CODE_159AB8:        LDA $0533                 
CODE_159ABB:        CMP #$06                  
CODE_159ABD:        BNE CODE_159AE5           
CODE_159ABF:        LDA $E9                   
CODE_159AC1:        CMP #$09                  
CODE_159AC3:        BCC CODE_159AE5           
CODE_159AC5:        BNE CODE_159AF8           
CODE_159AC7:        TYA                       
CODE_159AC8:        AND #$F0                  
CODE_159ACA:        CMP #$C0                  
CODE_159ACC:        BNE CODE_159AD4           
CODE_159ACE:        LDA #$05                  
CODE_159AD0:        STA [$01],y               
CODE_159AD2:        BRA CODE_159AF8           

CODE_159AD4:        CPY #$D0                  
CODE_159AD6:        BCC CODE_159AE5           
CODE_159AD8:        TYA                       
CODE_159AD9:        AND #$0F                  
CODE_159ADB:        BEQ CODE_159AE5           
CODE_159ADD:        CMP #$06                  
CODE_159ADF:        BCC CODE_159AF8           

CODE_159AE1:        CMP #$0A                  
CODE_159AE3:        BCS CODE_159AF8                   
CODE_159AE5:        LDA $02                   
CODE_159AE7:        STA $0715                 
CODE_159AEA:        CLC                       
CODE_159AEB:        ADC #$70                  
CODE_159AED:        STA $02                   
CODE_159AEF:        LDA #$01                  
CODE_159AF1:        STA [$01],y               
CODE_159AF3:        LDA $0715                 
CODE_159AF6:        STA $02                   
CODE_159AF8:        INY                       
CODE_159AF9:        TYA                       
CODE_159AFA:        AND #$0F                  
CODE_159AFC:        STA $0713                 
CODE_159AFF:        BEQ CODE_159B04           
CODE_159B01:        JMP CODE_159A4E           

CODE_159B04:        RTS                       

CODE_159B05:        LDA $05                   
CODE_159B07:        STA $0717                 
CODE_159B0A:        LDA $06                   
CODE_159B0C:        STA $0718                 
CODE_159B0F:        LDY #$00                  
CODE_159B11:        LDA $076B                 
CODE_159B14:        ASL A                     
CODE_159B15:        TAX                       
CODE_159B16:        LDA.l PNTR_15C440,x             
CODE_159B1A:        STA $05                   
CODE_159B1C:        INX                       
CODE_159B1D:        LDA.l PNTR_15C440,x             
CODE_159B21:        STA $06                   
CODE_159B23:        LDA #$15                  
CODE_159B25:        STA $07                   
CODE_159B27:        LDA [$05],y               
CODE_159B29:        CMP #$FF                  
CODE_159B2B:        BEQ CODE_159B38           
CODE_159B2D:        STA $076D                 
CODE_159B30:        PHY                       
CODE_159B31:        JSR CODE_159B43           
CODE_159B34:        PLY                       
CODE_159B35:        INY                       
CODE_159B36:        BRA CODE_159B11           

CODE_159B38:        LDA $0717                 
CODE_159B3B:        STA $05                   
CODE_159B3D:        LDA $0718                 
CODE_159B40:        STA $06                   
CODE_159B42:        RTL                       

CODE_159B43:        ASL A                     
CODE_159B44:        TAX                       
CODE_159B45:        LDA.l PNTR_15C140,x             
CODE_159B49:        STA $05                   
CODE_159B4B:        INX                       
CODE_159B4C:        LDA.l PNTR_15C140,x             
CODE_159B50:        STA $06                   
CODE_159B52:        LDA #$15                  
CODE_159B54:        STA $07                   
CODE_159B56:        LDY #$00                  
CODE_159B58:        LDA [$05],y               
CODE_159B5A:        STA $E7                   
CODE_159B5C:        INY                       
CODE_159B5D:        LDA [$05],y               
CODE_159B5F:        AND #$F0                  
CODE_159B61:        LSR A                     
CODE_159B62:        LSR A                     
CODE_159B63:        LSR A                     
CODE_159B64:        LSR A                     
CODE_159B65:        STA $0E                   
CODE_159B67:        STA $0D                   
CODE_159B69:        LDA [$05],y               
CODE_159B6B:        AND #$0F                  
CODE_159B6D:        STA $0F                   
CODE_159B6F:        JSR CODE_159B76           
CODE_159B72:        STZ $02E4                 
CODE_159B75:        RTS                       

CODE_159B76:        LDA #$02                  
CODE_159B78:        STA $02E3                 
CODE_159B7B:        LDA $E7                   
CODE_159B7D:        STA $02E2                 
CODE_159B80:        STA $0C                   
CODE_159B82:        STZ $076C                 
CODE_159B85:        LDY $02E2                 
CODE_159B88:        LDA [$C4],y               
CODE_159B8A:        CMP #$5B                  
CODE_159B8C:        BEQ CODE_159BC6           
CODE_159B8E:        LDY $02E3                 
CODE_159B91:        LDA [$05],y               
CODE_159B93:        CMP #$40                  
CODE_159B95:        BEQ CODE_159BA9           
CODE_159B97:        CMP #$AB                  
CODE_159B99:        BEQ CODE_159BA9           
CODE_159B9B:        CMP #$9D                  
CODE_159B9D:        BEQ CODE_159BA9           
CODE_159B9F:        CMP #$9C                  
CODE_159BA1:        BEQ CODE_159BA9           
CODE_159BA3:        CLC                       
CODE_159BA4:        ADC #$2C                  
CODE_159BA6:        INC $076C                 
CODE_159BA9:        LDY $02E2                 
CODE_159BAC:        STA [$C4],y               
CODE_159BAE:        LDX $076C                 
CODE_159BB1:        BEQ CODE_159BC6           
CODE_159BB3:        LDA $C5                   
CODE_159BB5:        STA $0714                 
CODE_159BB8:        CLC                       
CODE_159BB9:        ADC #$70                  
CODE_159BBB:        STA $C5                   
CODE_159BBD:        LDA #$01                  
CODE_159BBF:        STA [$C4],y               
CODE_159BC1:        LDA $0714                 
CODE_159BC4:        STA $C5                   
CODE_159BC6:        INC $02E3                 
CODE_159BC9:        LDY $02E2                 
CODE_159BCC:        JSR CODE_159BEF           
CODE_159BCF:        STY $02E2                 
CODE_159BD2:        DEC $0E                   
CODE_159BD4:        LDA $0E                   
CODE_159BD6:        BPL CODE_159B82           
CODE_159BD8:        DEC $0F                   
CODE_159BDA:        LDA $0F                   
CODE_159BDC:        BMI CODE_159BEE           
CODE_159BDE:        LDY $0C                   
CODE_159BE0:        JSR CODE_159C04           
CODE_159BE3:        STY $0C                   
CODE_159BE5:        STY $02E2                 
CODE_159BE8:        LDA $0D                   
CODE_159BEA:        STA $0E                   
CODE_159BEC:        BRA CODE_159B82           

CODE_159BEE:        RTS                       

CODE_159BEF:        TYA                       
CODE_159BF0:        CLC                       
CODE_159BF1:        ADC #$10                  
CODE_159BF3:        TAY                       
CODE_159BF4:        CMP #$F0                  
CODE_159BF6:        BCC CODE_159C03           
CODE_159BF8:        INC $E9                   
CODE_159BFA:        LDX $E9                   
CODE_159BFC:        JSR CODE_159C2D           
CODE_159BFF:        TYA                       
CODE_159C00:        AND #$0F                  
CODE_159C02:        TAY                       
CODE_159C03:        RTS                       

CODE_159C04:        INY                       
CODE_159C05:        LDA $0628                 
CODE_159C08:        BEQ CODE_159C0E           
CODE_159C0A:        LDX #$0A                  
CODE_159C0C:        BRA CODE_159C29           
CODE_159C0E:        LDA $076D                 
CODE_159C11:        CMP #$07                  
CODE_159C13:        BEQ CODE_159C27           
CODE_159C15:        CMP #$08                  
CODE_159C17:        BEQ CODE_159C27           
CODE_159C19:        DEC $E9                   
CODE_159C1B:        LDX $E9                   
CODE_159C1D:        CPX #$FF                  
CODE_159C1F:        BNE CODE_159C29           
CODE_159C21:        LDX #$00                  
CODE_159C23:        STX $E9                   
CODE_159C25:        BRA CODE_159C29           

CODE_159C27:        LDX #$01                  
CODE_159C29:        JSR CODE_159C2D           
CODE_159C2C:        RTS                       

CODE_159C2D:        PHY                       
CODE_159C2E:        LDA $0628                 
CODE_159C31:        BEQ CODE_159C37           
CODE_159C33:        LDY #$00                  
CODE_159C35:        BRA CODE_159C3A           
CODE_159C37:        LDY $0534                 
CODE_159C3A:        LDA.w DATA_11AB11,y               
CODE_159C3D:        CLC                       
CODE_159C3E:        ADC.w DATA_11AAFB,x               
CODE_159C41:        STA $C5                   
CODE_159C43:        LDA.w DATA_11AAF0,x               
CODE_159C46:        STA $C4                   
CODE_159C48:        LDA.w DATA_11AB06,x               
CODE_159C4B:        STA $C6                   
CODE_159C4D:        PLY                       
CODE_159C4E:        RTS                       

DATA_159C4F:        db $15,$16

DATA_159C51:        db $01,$02

CODE_159C53:        LDA $0533                 
CODE_159C56:        CMP #$05                  
CODE_159C58:        BNE CODE_159C85           
CODE_159C5A:        LDA #$11                  
CODE_159C5C:        STA $00                   
CODE_159C5E:        LDA #$C1                  
CODE_159C60:        STA $03                   
CODE_159C62:        LDA #$6D                  
CODE_159C64:        STA $01                   
CODE_159C66:        STA $04                   
CODE_159C68:        LDA #$7E                  
CODE_159C6A:        STA $02                   
CODE_159C6C:        STA $05                   
CODE_159C6E:        LDY #$00                  
CODE_159C70:        TYA                       
CODE_159C71:        AND #$01                  
CODE_159C73:        TAX                       
CODE_159C74:        LDA.l DATA_159C4F,x             
CODE_159C78:        STA [$00],y               
CODE_159C7A:        LDA.l DATA_159C51,x             
CODE_159C7E:        STA [$03],y               
CODE_159C80:        INY                       
CODE_159C81:        CPY #$0E                  
CODE_159C83:        BNE CODE_159C70           
CODE_159C85:        RTL                       

DATA_159C86:        db $F1,$F2,$F3,$F4,$EF,$F0

CODE_159C8C:        LDA $0533
CODE_159C8F:        CMP #$13
CODE_159C91:        BNE CODE_159C85
CODE_159C93:        LDA $0534
CODE_159C96:        CMP #$05                  
CODE_159C98:        BNE CODE_159C85           
CODE_159C9A:        STZ $0712                 
CODE_159C9D:        STZ $0713                 
CODE_159CA0:        STZ $0714                 
CODE_159CA3:        LDX #$00                  
CODE_159CA5:        JSR CODE_159C2D           
CODE_159CA8:        REP #$20                  
CODE_159CAA:        LDA $0712                 
CODE_159CAD:        AND #$00FF                
CODE_159CB0:        ASL A                     
CODE_159CB1:        ASL A                     
CODE_159CB2:        ASL A                     
CODE_159CB3:        ASL A                     
CODE_159CB4:        CLC                       
CODE_159CB5:        ADC $C4                   
CODE_159CB7:        STA $C4                   
CODE_159CB9:        SEP #$20                  
CODE_159CBB:        LDA $0541                 
CODE_159CBE:        STA $0715                 
CODE_159CC1:        LDA $0713                 
CODE_159CC4:        STA $0714                 
CODE_159CC7:        LDY #$00                  
CODE_159CC9:        LDA [$C4],y               
CODE_159CCB:        CMP #$AA                  
CODE_159CCD:        BEQ CODE_159CD7           
CODE_159CCF:        CMP #$DD                  
CODE_159CD1:        BEQ CODE_159CD7           
CODE_159CD3:        CMP #$2D                  
CODE_159CD5:        BNE CODE_159CE0           
CODE_159CD7:        LDX $0714                 
CODE_159CDA:        LDA.l DATA_159C86,x             
CODE_159CDE:        STA [$C4],y               
CODE_159CE0:        INC $0714                 
CODE_159CE3:        LDA $0714                 
CODE_159CE6:        CMP #$06                  
CODE_159CE8:        BNE CODE_159CED           
CODE_159CEA:        STZ $0714                 
CODE_159CED:        INY                       
CODE_159CEE:        CPY #$10                  
CODE_159CF0:        BNE CODE_159CC9           
CODE_159CF2:        REP #$20                  
CODE_159CF4:        LDA $C4                   
CODE_159CF6:        CLC                       
CODE_159CF7:        ADC #$00F0                
CODE_159CFA:        STA $C4                   
CODE_159CFC:        SEP #$20                  
CODE_159CFE:        DEC $0715                 
CODE_159D01:        BPL CODE_159CC7           
CODE_159D03:        INC $0713                 
CODE_159D06:        LDA $0713                 
CODE_159D09:        CMP #$06                  
CODE_159D0B:        BNE CODE_159D10           
CODE_159D0D:        STZ $0713                 
CODE_159D10:        INC $0712                 
CODE_159D13:        LDA $0712                 
CODE_159D16:        CMP #$0F                  
CODE_159D18:        BNE CODE_159CA3           
CODE_159D1A:        RTL                       

DATA_159D1B:        db $00,$01,$02,$03,$04,$05,$06,$07
                    db $08,$09,$0A,$0B,$10,$11,$12,$13
                    db $14,$15,$16,$17,$18,$19,$1A,$1B

DATA_159D33:        db $20,$21,$22,$23,$24,$25,$26,$27
                    db $28,$29,$2A,$2B,$20,$21,$22,$23
                    db $24,$25,$26,$27,$28,$29,$2A,$2B

CODE_159D4B:        STY $0712                 
CODE_159D4E:        STX $0715                 
CODE_159D51:        LDA $050F                 
CODE_159D54:        CMP #$0A                  
CODE_159D56:        BNE CODE_159DBC           
CODE_159D58:        LDA $0534                 
CODE_159D5B:        CMP #$02                  
CODE_159D5D:        BNE CODE_159D66           
CODE_159D5F:        TYA                       
CODE_159D60:        AND #$F0                  
CODE_159D62:        CMP #$90                  
CODE_159D64:        BEQ CODE_159DBC           
CODE_159D66:        TYA                       
CODE_159D67:        CLC                       
CODE_159D68:        ADC #$10                  
CODE_159D6A:        TAY                       
CODE_159D6B:        LDA [$01],y               
CODE_159D6D:        CMP #$40                  
CODE_159D6F:        BEQ CODE_159DBC           
CODE_159D71:        STA $0716                 
CODE_159D74:        LDA $01                   
CODE_159D76:        STA $0713                 
CODE_159D79:        LDA $02                   
CODE_159D7B:        STA $0714                 
CODE_159D7E:        REP #$20                  
CODE_159D80:        LDA $01                   
CODE_159D82:        CLC                       
CODE_159D83:        ADC #$7000                
CODE_159D86:        STA $01                   
CODE_159D88:        SEP #$20                  
CODE_159D8A:        LDA [$01],y               
CODE_159D8C:        BEQ CODE_159DB2           
CODE_159D8E:        LDA $0713                 
CODE_159D91:        STA $01                   
CODE_159D93:        LDA $0714                 
CODE_159D96:        STA $02                   
CODE_159D98:        LDA $0716                 
CODE_159D9B:        SEC                       
CODE_159D9C:        SBC #$5C                  
CODE_159D9E:        LDX #$17                  
CODE_159DA0:        CMP.l DATA_159D1B,x             
CODE_159DA4:        BEQ CODE_159DA9           
CODE_159DA6:        DEX                       
CODE_159DA7:        BPL CODE_159DA0           
CODE_159DA9:        LDA.l DATA_159D33,x             
CODE_159DAD:        CLC                       
CODE_159DAE:        ADC #$5C                  
CODE_159DB0:        STA [$01],y               
CODE_159DB2:        LDA $0713                 
CODE_159DB5:        STA $01                   
CODE_159DB7:        LDA $0714                 
CODE_159DBA:        STA $02                   
CODE_159DBC:        LDY $0712                 
CODE_159DBF:        LDX $0715                 
CODE_159DC2:        RTL                       

DATA_159DC3:        db $06,$05,$12,$11,$0A

DATA_159DC8:        db $01,$02

CODE_159DCA:        STZ $0714                 
CODE_159DCD:        STZ $0716                 
CODE_159DD0:        LDX $E9                   
CODE_159DD2:        JSR CODE_159E48           
CODE_159DD5:        LDA $050E                 
CODE_159DD8:        STA $07                   
CODE_159DDA:        LDY $E7                   
CODE_159DDC:        LDX #$00                  
CODE_159DDE:        TYA                       
CODE_159DDF:        AND #$10                  
CODE_159DE1:        BEQ CODE_159DE5           
CODE_159DE3:        INX                       
CODE_159DE4:        INX                       
CODE_159DE5:        TYA                       
CODE_159DE6:        AND #$01                  
CODE_159DE8:        BEQ CODE_159DEB           
CODE_159DEA:        INX                       
CODE_159DEB:        LDA $0714                 
CODE_159DEE:        BEQ CODE_159DF2           
CODE_159DF0:        LDX #$04                  
CODE_159DF2:        LDA $0716                 
CODE_159DF5:        BNE CODE_159E07           
CODE_159DF7:        LDA [$01],y               
CODE_159DF9:        CMP #$40                  
CODE_159DFB:        BNE CODE_159E07           
CODE_159DFD:        TXA                       
CODE_159DFE:        AND #$01                  
CODE_159E00:        TAX                       
CODE_159E01:        LDA.l DATA_159DC8,x             
CODE_159E05:        BRA CODE_159E0B           

CODE_159E07:        LDA.l DATA_159DC3,x             
CODE_159E0B:        STA [$01],y               
CODE_159E0D:        LDA $02                   
CODE_159E0F:        STA $0715                 
CODE_159E12:        CLC                       
CODE_159E13:        ADC #$70                  
CODE_159E15:        STA $02                   
CODE_159E17:        LDA $0714                 
CODE_159E1A:        BNE CODE_159E20           
CODE_159E1C:        LDA #$01                  
CODE_159E1E:        BRA CODE_159E22           

CODE_159E20:        LDA #$00                  
CODE_159E22:        STA [$01],y               
CODE_159E24:        LDA $0715                 
CODE_159E27:        STA $02                   
CODE_159E29:        JSR CODE_159651           
CODE_159E2C:        DEC $07                   
CODE_159E2E:        BPL CODE_159DDC           
CODE_159E30:        LDA #$01                  
CODE_159E32:        STA $0716                 
CODE_159E35:        LDA $E7                   
CODE_159E37:        CLC                       
CODE_159E38:        ADC #$10                  
CODE_159E3A:        STA $E7                   
CODE_159E3C:        CMP #$C0                  
CODE_159E3E:        BCC CODE_159DD0           
CODE_159E40:        INC $0714                 
CODE_159E43:        CMP #$D0                  
CODE_159E45:        BCC CODE_159DD0           
CODE_159E47:        RTL                       

CODE_159E48:        STY $02F5                 
CODE_159E4B:        LDY $0534                 
CODE_159E4E:        LDA.w DATA_11AB11,y               
CODE_159E51:        CLC                       
CODE_159E52:        ADC.w DATA_11AAFB,x               
CODE_159E55:        STA $02                   
CODE_159E57:        LDA.w DATA_11AAF0,x               
CODE_159E5A:        STA $01                   
CODE_159E5C:        LDA.w DATA_11AB06,x               
CODE_159E5F:        STA $03                   
CODE_159E61:        LDY $02F5                 
CODE_159E64:        RTS                       

CODE_159E65:        STZ $E9                   
CODE_159E67:        JSR CODE_1594EC           
CODE_159E6A:        STZ $0F                   
CODE_159E6C:        LDX $0F                   
CODE_159E6E:        LDA.l DATA_15C5CE,x             
CODE_159E72:        CMP #$FF                  
CODE_159E74:        BEQ CODE_159E9C           
CODE_159E76:        ASL A                     
CODE_159E77:        TAX                       
CODE_159E78:        LDA.l PNTR_15C466,x             
CODE_159E7C:        STA $C4                   
CODE_159E7E:        INX                       
CODE_159E7F:        LDA.l PNTR_15C466,x             
CODE_159E83:        STA $C5                   
CODE_159E85:        LDA #$15                  
CODE_159E87:        STA $C6                   
CODE_159E89:        LDX $0F                   
CODE_159E8B:        INX                       
CODE_159E8C:        LDA.l DATA_15C5CE,x             
CODE_159E90:        DEC A                     
CODE_159E91:        STA $0E                   
CODE_159E93:        JSR CODE_159E9D           
CODE_159E96:        INC $0F                   
CODE_159E98:        INC $0F                   
CODE_159E9A:        BRA CODE_159E6C           

CODE_159E9C:        RTL                       

CODE_159E9D:        LDY #$00                  
CODE_159E9F:        LDA [$C4],y               
CODE_159EA1:        STA [$01],y               
CODE_159EA3:        INY                       
CODE_159EA4:        CPY #$10                  
CODE_159EA6:        BMI CODE_159E9F           
CODE_159EA8:        REP #$20                  
CODE_159EAA:        LDA $01                   
CODE_159EAC:        CLC                       
CODE_159EAD:        ADC #$0010                
CODE_159EB0:        STA $01                   
CODE_159EB2:        SEP #$20                  
CODE_159EB4:        DEC $0E                   
CODE_159EB6:        BPL CODE_159E9D           
CODE_159EB8:        RTS                       

CODE_159EB9:        LDA $0533                 
CODE_159EBC:        CMP #$13                  
CODE_159EBE:        BEQ CODE_159EDD           
CODE_159EC0:        CMP #$12                  
CODE_159EC2:        BNE CODE_159EC7           
CODE_159EC4:        JMP CODE_159FC3           

CODE_159EC7:        CMP #$01                  
CODE_159EC9:        BNE CODE_159ECE           
CODE_159ECB:        JMP CODE_159FF2           

CODE_159ECE:        CMP #$02                  
CODE_159ED0:        BNE CODE_159ED5           
CODE_159ED2:        JMP CODE_15A037           

CODE_159ED5:        CMP #$0D                  
CODE_159ED7:        BNE CODE_159EDC           
CODE_159ED9:        JMP CODE_15A03F           

CODE_159EDC:        RTL                       

CODE_159EDD:        STZ $0F                   
CODE_159EDF:        LDX #$00                  
CODE_159EE1:        LDA.l PNTR_15C625,x             
CODE_159EE5:        STA $04                   
CODE_159EE7:        INX                       
CODE_159EE8:        LDA.l PNTR_15C625,x             
CODE_159EEC:        STA $05                   
CODE_159EEE:        INX                       
CODE_159EEF:        LDA.l PNTR_15C625,x             
CODE_159EF3:        STA $06                   
CODE_159EF5:        LDY #$00                  
CODE_159EF7:        LDA [$04],y               
CODE_159EF9:        CMP #$FF                  
CODE_159EFB:        BEQ CODE_159F60           
CODE_159EFD:        CMP #$01                  
CODE_159EFF:        BEQ CODE_159F19           
CODE_159F01:        INY                       
CODE_159F02:        LDA [$04],y               
CODE_159F04:        ASL A                     
CODE_159F05:        TAX                       
CODE_159F06:        LDA.l PNTR_15C890,x             
CODE_159F0A:        STA $C4                   
CODE_159F0C:        INX                       
CODE_159F0D:        LDA.l PNTR_15C890,x             
CODE_159F11:        STA $C5                   
CODE_159F13:        LDA #$15                  
CODE_159F15:        STA $C6                   
CODE_159F17:        BRA CODE_159F2F           

CODE_159F19:        INY                       
CODE_159F1A:        LDA [$04],y               
CODE_159F1C:        ASL A                     
CODE_159F1D:        TAX                       
CODE_159F1E:        LDA.l PNTR_15C8B4,x             
CODE_159F22:        STA $C4                   
CODE_159F24:        INX                       
CODE_159F25:        LDA.l PNTR_15C8B4,x             
CODE_159F29:        STA $C5                   
CODE_159F2B:        LDA #$15                  
CODE_159F2D:        STA $C6                   
CODE_159F2F:        INY                       
CODE_159F30:        LDA [$04],y               
CODE_159F32:        DEC A                     
CODE_159F33:        STA $0721                 
CODE_159F36:        INY                       
CODE_159F37:        LDA [$04],y               
CODE_159F39:        STA $01                   
CODE_159F3B:        INY                       
CODE_159F3C:        LDA [$04],y               
CODE_159F3E:        STA $02                   
CODE_159F40:        LDA #$7E                  
CODE_159F42:        STA $03                   
CODE_159F44:        LDY #$00                  
CODE_159F46:        LDA [$04],y               
CODE_159F48:        BNE CODE_159F4F           
CODE_159F4A:        JSR CODE_159F61           
CODE_159F4D:        BRA CODE_159F52           

CODE_159F4F:        JSR CODE_159F88           
CODE_159F52:        REP #$20                  
CODE_159F54:        LDA $04                   
CODE_159F56:        CLC                       
CODE_159F57:        ADC #$0005                
CODE_159F5A:        STA $04                   
CODE_159F5C:        SEP #$20                  
CODE_159F5E:        BRA CODE_159EF5           

CODE_159F60:        RTL                       

CODE_159F61:        STZ $0712                 
CODE_159F64:        LDA $0712                 
CODE_159F67:        AND #$01                  
CODE_159F69:        TAY                       
CODE_159F6A:        LDA [$C4],y               
CODE_159F6C:        STA [$01]                 
CODE_159F6E:        JSR CODE_15A06B           
CODE_159F71:        DEC $0721                 
CODE_159F74:        BMI CODE_159F87           
CODE_159F76:        INC $0712                 
CODE_159F79:        REP #$20                  
CODE_159F7B:        LDA $01                   
CODE_159F7D:        CLC                       
CODE_159F7E:        ADC #$0010                
CODE_159F81:        STA $01                   
CODE_159F83:        SEP #$20                  
CODE_159F85:        BRA CODE_159F64           
CODE_159F87:        RTS                       

CODE_159F88:        STZ $0712                 
CODE_159F8B:        LDA $0712                 
CODE_159F8E:        AND #$01                  
CODE_159F90:        TAY                       
CODE_159F91:        LDA [$C4],y               
CODE_159F93:        STA [$01]                 
CODE_159F95:        JSR CODE_15A06B           
CODE_159F98:        DEC $0721                 
CODE_159F9B:        BMI CODE_159FC0           
CODE_159F9D:        INC $0712                 
CODE_159FA0:        LDA $01                   
CODE_159FA2:        AND #$0F                  
CODE_159FA4:        CMP #$0F                  
CODE_159FA6:        BEQ CODE_159FAC           
CODE_159FA8:        INC $01                   
CODE_159FAA:        BRA CODE_159F8B           

CODE_159FAC:        LDA $01                   
CODE_159FAE:        AND #$F0                  
CODE_159FB0:        STA $01                   
CODE_159FB2:        REP #$20                  
CODE_159FB4:        LDA $01                   
CODE_159FB6:        CLC                       
CODE_159FB7:        ADC #$00F0                
CODE_159FBA:        STA $01                   
CODE_159FBC:        SEP #$20                  
CODE_159FBE:        BRA CODE_159F8B           

CODE_159FC0:        RTS                       

DATA_159FC1:        db $07,$13
      
CODE_159FC3:        LDA #$20                  
CODE_159FC5:        STA $01                   
CODE_159FC7:        LDA #$57                  
CODE_159FC9:        STA $02                   
CODE_159FCB:        LDA #$7E                  
CODE_159FCD:        STA $03                   
CODE_159FCF:        STZ $0712                 
CODE_159FD2:        LDA $0712                 
CODE_159FD5:        AND #$01                  
CODE_159FD7:        TAX                       
CODE_159FD8:        LDA $0712                 
CODE_159FDB:        ASL A                     
CODE_159FDC:        ASL A                     
CODE_159FDD:        ASL A                     
CODE_159FDE:        ASL A                     
CODE_159FDF:        TAY                       
CODE_159FE0:        LDA.l DATA_159FC1,x             
CODE_159FE4:        STA [$01],y               
CODE_159FE6:        INC $0712                 
CODE_159FE9:        CPY #$A0                  
CODE_159FEB:        BNE CODE_159FD2           
CODE_159FED:        RTL                       


DATA_159FEE:        db $11,$05

DATA_159FF0:        db $12,$06


CODE_159FF2:        STZ $0713                 
CODE_159FF5:        LDA #$9F                  
CODE_159FF7:        STA $01                   
CODE_159FF9:        LDA #$26                  
CODE_159FFB:        STA $02                   
CODE_159FFD:        LDA #$7E                  
CODE_159FFF:        STA $03                   
CODE_15A001:        STZ $0712                 
CODE_15A004:        LDA $0712                 
CODE_15A007:        AND #$01                  
CODE_15A009:        CLC                       
CODE_15A00A:        ADC $0713                 
CODE_15A00D:        TAX                       
CODE_15A00E:        LDA $0712                 
CODE_15A011:        ASL A                     
CODE_15A012:        ASL A                     
CODE_15A013:        ASL A                     
CODE_15A014:        ASL A                     
CODE_15A015:        TAY                       
CODE_15A016:        LDA.l DATA_159FEE,x             
CODE_15A01A:        STA [$01],y               
CODE_15A01C:        INC $0712                 
CODE_15A01F:        CPY #$C0                  
CODE_15A021:        BNE CODE_15A004           
CODE_15A023:        LDA $0713                 
CODE_15A026:        BNE CODE_15A036           
CODE_15A028:        STZ $01                   
CODE_15A02A:        LDA #$36                  
CODE_15A02C:        STA $02                   
CODE_15A02E:        INC $0713                 
CODE_15A031:        INC $0713                 
CODE_15A034:        BRA CODE_159FFD           

CODE_15A036:        RTL                       

CODE_15A037:        STZ $01                   
CODE_15A039:        LDA #$20                  
CODE_15A03B:        STA $02                   
CODE_15A03D:        BRA CODE_15A047           

CODE_15A03F:        LDA #$7F                  
CODE_15A041:        STA $01                   
CODE_15A043:        LDA #$33                  
CODE_15A045:        STA $02                   
CODE_15A047:        LDA #$7E                  
CODE_15A049:        STA $0003                 
CODE_15A04C:        STZ $0712                 
CODE_15A04F:        LDA $0712                 
CODE_15A052:        AND #$01                  
CODE_15A054:        TAX                       
CODE_15A055:        LDA $0712                 
CODE_15A058:        ASL A                     
CODE_15A059:        ASL A                     
CODE_15A05A:        ASL A                     
CODE_15A05B:        ASL A                     
CODE_15A05C:        TAY                       
CODE_15A05D:        LDA.l DATA_159FF0,x             
CODE_15A061:        STA [$01],y               
CODE_15A063:        INC $0712                 
CODE_15A066:        CPY #$A0                  
CODE_15A068:        BNE CODE_15A04F           
CODE_15A06A:        RTL                       

CODE_15A06B:        LDY #$00                  
CODE_15A06D:        STA $076E                 
CODE_15A070:        LDA $02                   
CODE_15A072:        STA $076F                 
CODE_15A075:        CLC                       
CODE_15A076:        ADC #$70                  
CODE_15A078:        STA $02                   
CODE_15A07A:        LDA #$01                  
CODE_15A07C:        STA [$01],y               
CODE_15A07E:        LDA $076F                 
CODE_15A081:        STA $02                   
CODE_15A083:        LDA $076E                 
CODE_15A086:        RTS                       

DATA_15A087:        db $04,$10,$14

DATA_15A08A:        db $06,$05,$15

DATA_15A08D:        db $12,$11,$16
               
CODE_15A090:        STZ $0719                 
CODE_15A093:        LDA $E7              
CODE_15A095:        TAY                 
CODE_15A096:        AND #$F0                  
CODE_15A098:        CMP #$C0                  
CODE_15A09A:        BEQ CODE_15A0A5           
CODE_15A09C:        AND #$10                  
CODE_15A09E:        LSR A                     
CODE_15A09F:        LSR A                     
CODE_15A0A0:        LSR A                     
CODE_15A0A1:        LSR A                     
CODE_15A0A2:        TAX                       
CODE_15A0A3:        BRA CODE_15A0AA 
          
CODE_15A0A5:        INC $0719                 
CODE_15A0A8:        LDX #$02                  
CODE_15A0AA:        LDA.l DATA_15A087,x             
CODE_15A0AE:        STA [$01],y               
CODE_15A0B0:        JSR CODE_15A06D           
CODE_15A0B3:        INY                       
CODE_15A0B4:        LDA $0719                 
CODE_15A0B7:        BNE CODE_15A0BF           
CODE_15A0B9:        TYA                       
CODE_15A0BA:        AND #$01                  
CODE_15A0BC:        TAX                       
CODE_15A0BD:        BRA CODE_15A0C1           

CODE_15A0BF:        LDX #$02                  
CODE_15A0C1:        TYA                       
CODE_15A0C2:        AND #$10                  
CODE_15A0C4:        BNE CODE_15A0CC           
CODE_15A0C6:        LDA.l DATA_15A08A,x             
CODE_15A0CA:        BRA CODE_15A0D0
           
CODE_15A0CC:        LDA.l DATA_15A08D,x             
CODE_15A0D0:        STA [$01],y               
CODE_15A0D2:        JSR CODE_15A06D           
CODE_15A0D5:        INY                       
CODE_15A0D6:        TYA                       
CODE_15A0D7:        AND #$0F                  
CODE_15A0D9:        BNE CODE_15A0B4           
CODE_15A0DB:        LDA $0719                 
CODE_15A0DE:        BNE CODE_15A0E9           
CODE_15A0E0:        LDA $E7                   
CODE_15A0E2:        CLC                       
CODE_15A0E3:        ADC #$10                  
CODE_15A0E5:        STA $E7                   
CODE_15A0E7:        BRA CODE_15A093
           
CODE_15A0E9:        RTL                       

DATA_15A0EA:        db $02,$05,$08,$0B,$0E,$11

DATA_15A0F0:        db $04,$06,$08,$07,$05,$06

DATA_15A0F6:        db $2C,$A9,$DC,$2C,$A9,$DC,$2C,$A9
                    db $DC,$2C,$A9,$DC,$2C,$A9,$DC

DATA_15A105:        db $BA,$BD,$BE,$BB,$BC,$BF,$BA,$BD
                    db $BE,$BB,$BC,$BF,$BA,$BD,$BE

DATA_15A114:        db $BB,$BC,$BF,$BA,$BD,$BE,$BB,$BC
                    db $BF,$BA,$BD,$BE,$BB,$BC,$BF

CODE_15A123:        LDX #$05            
CODE_15A125:        LDA $0533
CODE_15A128:        CMP.l DATA_15A0EA,x             
CODE_15A12C:        BEQ CODE_15A132           
CODE_15A12E:        DEX                       
CODE_15A12F:        BPL CODE_15A128           
CODE_15A131:        RTL                       

CODE_15A132:        LDA $0534                 
CODE_15A135:        CMP.l DATA_15A0F0,x             
CODE_15A139:        BNE CODE_15A131           
CODE_15A13B:        STZ $E9                   
CODE_15A13D:        LDX $E9                   
CODE_15A13F:        JSR CODE_15A177           
CODE_15A142:        STZ $E7                   
CODE_15A144:        LDA $E7                   
CODE_15A146:        TAY                       
CODE_15A147:        LSR A                     
CODE_15A148:        LSR A                     
CODE_15A149:        LSR A                     
CODE_15A14A:        LSR A                     
CODE_15A14B:        TAX                       
CODE_15A14C:        LDA [$01],y               
CODE_15A14E:        CMP.l DATA_15A0F6,x             
CODE_15A152:        BNE CODE_15A166           
CODE_15A154:        LDA $E7                   
CODE_15A156:        AND #$01                  
CODE_15A158:        BNE CODE_15A160           
CODE_15A15A:        LDA.l DATA_15A105,x             
CODE_15A15E:        BRA CODE_15A164           

CODE_15A160:        LDA.l DATA_15A114,x             
CODE_15A164:        STA [$01],y               
CODE_15A166:        INC $E7                   
CODE_15A168:        LDA $E7                   
CODE_15A16A:        CMP #$F0                  
CODE_15A16C:        BNE CODE_15A146           
CODE_15A16E:        LDA $E9                   
CODE_15A170:        BNE CODE_15A176           
CODE_15A172:        INC $E9                   
CODE_15A174:        BRA CODE_15A13D           

CODE_15A176:        RTL                       

CODE_15A177:        STY $02F5                 
CODE_15A17A:        LDY $0534                 
CODE_15A17D:        LDA.w DATA_11AB11,y               
CODE_15A180:        CLC                       
CODE_15A181:        ADC.w DATA_11AAFB,x               
CODE_15A184:        STA $02                   
CODE_15A186:        LDA.w DATA_11AAF0,x               
CODE_15A189:        STA $01                   
CODE_15A18B:        LDA.w DATA_11AB06,x               
CODE_15A18E:        STA $03                   
CODE_15A190:        LDY $02F5                 
CODE_15A193:        RTS                       

DATA_15A194:        db $5C,$2F,$7E,$36,$86,$4C,$63,$4E
                    db $44,$51

DATA_15A19E:        db $03,$05,$0D,$04,$07

CODE_15A1A3:        LDA $0533                 
CODE_15A1A6:        CMP #$0E                  
CODE_15A1A8:        BNE CODE_15A1EF           
CODE_15A1AA:        LDX #$04                  
CODE_15A1AC:        STX $0714                 
CODE_15A1AF:        TXA                       
CODE_15A1B0:        ASL A                     
CODE_15A1B1:        TAX                       
CODE_15A1B2:        REP #$20                  
CODE_15A1B4:        LDA.l DATA_15A194,x             
CODE_15A1B8:        STA $01                   
CODE_15A1BA:        SEP #$20                  
CODE_15A1BC:        LDA #$7E                  
CODE_15A1BE:        STA $03                   
CODE_15A1C0:        LDX $0714                 
CODE_15A1C3:        LDA $01                   
CODE_15A1C5:        AND #$0F                  
CODE_15A1C7:        TAY                       
CODE_15A1C8:        LDA $01                   
CODE_15A1CA:        AND #$F0                  
CODE_15A1CC:        STA $01                   
CODE_15A1CE:        LDA #$B2                  
CODE_15A1D0:        STA [$01],y               
CODE_15A1D2:        JSR CODE_15A1F0           
CODE_15A1D5:        LDA.l DATA_15A19E,x             
CODE_15A1D9:        STA $0713                 
CODE_15A1DC:        LDA #$FD                  
CODE_15A1DE:        STA [$01],y               
CODE_15A1E0:        JSR CODE_15A1F0           
CODE_15A1E3:        DEC $0713                 
CODE_15A1E6:        BPL CODE_15A1DC           
CODE_15A1E8:        LDA #$FE                  
CODE_15A1EA:        STA [$01],y               
CODE_15A1EC:        DEX                       
CODE_15A1ED:        BPL CODE_15A1AC           
CODE_15A1EF:        RTL                       

CODE_15A1F0:        INY                       
CODE_15A1F1:        TYA                       
CODE_15A1F2:        AND #$0F                  
CODE_15A1F4:        BNE CODE_15A1F8           
CODE_15A1F6:        LDY #$F0                  
CODE_15A1F8:        RTS                       

CODE_15A1F9:        LDA $0533                 
CODE_15A1FC:        CMP #$06                  
CODE_15A1FE:        BNE CODE_15A22F           
CODE_15A200:        LDA $0534                 
CODE_15A203:        CMP #$01                  
CODE_15A205:        BNE CODE_15A22F           
CODE_15A207:        LDA #$7E                  
CODE_15A209:        STA $03                   
CODE_15A20B:        LDA #$31                  
CODE_15A20D:        STA $02                   
CODE_15A20F:        LDA #$80                  
CODE_15A211:        STA $01                   
CODE_15A213:        REP #$10                  
CODE_15A215:        LDY #$02DF                
CODE_15A218:        LDA [$01],y               
CODE_15A21A:        CMP #$04                  
CODE_15A21C:        BNE CODE_15A222           
CODE_15A21E:        LDA #$1C                  
CODE_15A220:        BRA CODE_15A228           

CODE_15A222:        CMP #$07                  
CODE_15A224:        BNE CODE_15A22A           
CODE_15A226:        LDA #$1D                  
CODE_15A228:        STA [$01],y               
CODE_15A22A:        DEY                       
CODE_15A22B:        BPL CODE_15A218           
CODE_15A22D:        SEP #$10                  
CODE_15A22F:        RTL                       

DATA_15A230:        db $BA,$BB,$BC,$BD,$BE,$BF,$70,$F5
                    db $3F,$76,$62,$63,$A4,$A5,$CA,$CE
                    db $C7,$C9,$D2,$D3

CODE_15A244:        LDX #$97
CODE_15A246:        LDA $0533                 
CODE_15A249:        CMP.l DATA_15C8D8,x             
CODE_15A24D:        BNE CODE_15A298           
CODE_15A24F:        LDA $0534                 
CODE_15A252:        CMP.l DATA_15C970,x             
CODE_15A256:        BNE CODE_15A298           
CODE_15A258:        STX $0719                 
CODE_15A25B:        REP #$30                  
CODE_15A25D:        TXA                       
CODE_15A25E:        AND #$00FF                
CODE_15A261:        ASL A                     
CODE_15A262:        TAX                       
CODE_15A263:        LDA.l DATA_15CA08,x             
CODE_15A267:        STA $01                   
CODE_15A269:        SEP #$30                  
CODE_15A26B:        LDA #$7E                  
CODE_15A26D:        STA $03                   
CODE_15A26F:        LDX $0719                 
CODE_15A272:        LDA.l DATA_15CB38,x             
CODE_15A276:        STA $071A                 
CODE_15A279:        LDX #$13                  
CODE_15A27B:        CMP.l DATA_15A230,x             
CODE_15A27F:        BEQ CODE_15A293           
CODE_15A281:        DEX                       
CODE_15A282:        BPL CODE_15A27B           
CODE_15A284:        LDX $0534                 
CODE_15A287:        LDA.l DATA_11AB11,x             
CODE_15A28B:        CLC                       
CODE_15A28C:        ADC $02                   
CODE_15A28E:        STA $02                   
CODE_15A290:        LDA $071A                 
CODE_15A293:        STA [$01]                 
CODE_15A295:        LDX $0719                 
CODE_15A298:        DEX                       
CODE_15A299:        CPX #$FF                  
CODE_15A29B:        BEQ CODE_15A2A0           
CODE_15A29D:        BRL CODE_15A246           

CODE_15A2A0:        RTL                       

DATA_15A2A1:        db $28,$29,$26,$2A,$2B,$27
     
CODE_15A2A7:        REP #$20                 
CODE_15A2A9:        LDA $01           
CODE_15A2AB:        CLC                       
CODE_15A2AC:        ADC #$0050                  
CODE_15A2AF:        STA $01                 
CODE_15A2B1:        SEP #$20
CODE_15A2B3:        LDY $E7
CODE_15A2B5:        LDX #$00                  
CODE_15A2B7:        LDA.l DATA_15A2A1,x             
CODE_15A2BB:        STA [$01],y               
CODE_15A2BD:        JSR CODE_15A06D           
CODE_15A2C0:        PHY                       
CODE_15A2C1:        TYA                       
CODE_15A2C2:        CLC                       
CODE_15A2C3:        ADC #$20                  
CODE_15A2C5:        TAY                       
CODE_15A2C6:        LDA.l DATA_15A2A1,x             
CODE_15A2CA:        STA [$01],y               
CODE_15A2CC:        JSR CODE_15A06D           
CODE_15A2CF:        PLY                       
CODE_15A2D0:        INY                       
CODE_15A2D1:        INX                       
CODE_15A2D2:        CPX #$06                  
CODE_15A2D4:        BEQ CODE_15A2E5           
CODE_15A2D6:        CPX #$03                  
CODE_15A2D8:        BNE CODE_15A2B7           
CODE_15A2DA:        LDA $01                   
CODE_15A2DC:        CLC                       
CODE_15A2DD:        ADC #$10                  
CODE_15A2DF:        STA $01                   
CODE_15A2E1:        LDY $E7                   
CODE_15A2E3:        BRA CODE_15A2B7           

CODE_15A2E5:        RTL                       

CODE_15A2E6:        LDA #$02                  
CODE_15A2E8:        STA $0712                 
CODE_15A2EB:        STZ $0713                 
CODE_15A2EE:        STZ $0714                 
CODE_15A2F1:        LDX #$00                  
CODE_15A2F3:        JSR CODE_15A3D4           
CODE_15A2F6:        LDY $04EE                 
CODE_15A2F9:        TYA                       
CODE_15A2FA:        JSR CODE_15A395           
CODE_15A2FD:        STY $142A                 
CODE_15A300:        STA $142C                 
CODE_15A303:        LDA #$15                  
CODE_15A305:        STA $142D                 
CODE_15A308:        CPY #$BF                  
CODE_15A30A:        BNE CODE_15A313           
CODE_15A30C:        LDA #$BD                  
CODE_15A30E:        STA $142A                 
CODE_15A311:        LDA #$09                  
CODE_15A313:        STA $142B                 
CODE_15A316:        INC $062B                 
CODE_15A319:        LDA $062B                 
CODE_15A31C:        JSR CODE_15A395           
CODE_15A31F:        CPY #$BF                  
CODE_15A321:        BNE CODE_15A326           
CODE_15A323:        TAX                       
CODE_15A324:        TYA                       
CODE_15A325:        TXY                       
CODE_15A326:        STY $1408                 
CODE_15A329:        STA $140A                 
CODE_15A32C:        LDX #$15                  
CODE_15A32E:        CMP #$BF                  
CODE_15A330:        BNE CODE_15A339           
CODE_15A332:        LDA #$BD                  
CODE_15A334:        STA $140A                 
CODE_15A337:        LDX #$09                  
CODE_15A339:        STX $140B                 
CODE_15A33C:        LDA #$15                  
CODE_15A33E:        CPY #$BF                  
CODE_15A340:        BNE CODE_15A349           
CODE_15A342:        LDA #$BD                  
CODE_15A344:        STA $1408                 
CODE_15A347:        LDA #$09                  
CODE_15A349:        STA $1409                 
CODE_15A34C:        LDA #$01                  
CODE_15A34E:        STA $11                   
CODE_15A350:        LDA #$01                  
CODE_15A352:        STA $1DE3                 
CODE_15A355:        JSL CODE_118014           
CODE_15A359:        LDA #$04                  
CODE_15A35B:        STA $0782                 
CODE_15A35E:        LDA.w DATA_15CAFC                 
CODE_15A361:        STA $11                   
CODE_15A363:        LDA #$0A                  
CODE_15A365:        STA $0783                 
CODE_15A368:        JSL CODE_118014           
CODE_15A36C:        JSR CODE_15A3B9           
CODE_15A36F:        INC $0713                 
CODE_15A372:        DEC $0783                 
CODE_15A375:        BNE CODE_15A368           
CODE_15A377:        DEC $0782                 
CODE_15A37A:        BPL CODE_15A35E           
CODE_15A37C:        DEC $0712                 
CODE_15A37F:        BPL CODE_15A316           
CODE_15A381:        LDA #$FF                  
CODE_15A383:        STA $0796                 
CODE_15A386:        LDX #$0A                  
CODE_15A388:        JSR CODE_15A3D4           
CODE_15A38B:        LDA.w DATA_11CAFB                 
CODE_15A38E:        STA $11                   
CODE_15A390:        JSL CODE_118014           
CODE_15A394:        RTL                       

CODE_15A395:        LDY #$C0                  
CODE_15A397:        CMP #$0A                  
CODE_15A399:        BCC CODE_15A3A0           
CODE_15A39B:        SBC #$0A                  
CODE_15A39D:        INY                       
CODE_15A39E:        BRA CODE_15A397           

CODE_15A3A0:        ORA #$C0                  
CODE_15A3A2:        CPY #$C0                  
CODE_15A3A4:        BNE CODE_15A3A8           
CODE_15A3A6:        LDY #$BF                  
CODE_15A3A8:        RTS                       

DATA_15A3A9:        dw $125F

DATA_15A3AB:        dw $12FF

DATA_15A3AD:        dw $1B7F,$125F,$12FF,$35AD
                    dw $4631,$56B5

CODE_15A3B9:        LDA $0713                 
CODE_15A3BC:        CMP #$06                  
CODE_15A3BE:        BNE CODE_15A3C6           
CODE_15A3C0:        STZ $0713                 
CODE_15A3C3:        INC $0714                 
CODE_15A3C6:        LDA $0714                 
CODE_15A3C9:        CMP #$03                  
CODE_15A3CB:        BNE CODE_15A3D2           
CODE_15A3CD:        LDA #$00                  
CODE_15A3CF:        STA $0714                 
CODE_15A3D2:        ASL A                     
CODE_15A3D3:        TAX                       
CODE_15A3D4:        REP #$20                  
CODE_15A3D6:        LDA.l DATA_15A3A9,x             
CODE_15A3DA:        STA $0B1A                 
CODE_15A3DD:        LDA.l DATA_15A3AB,x             
CODE_15A3E1:        STA $0B1C                 
CODE_15A3E4:        LDA.l DATA_15A3AD,x             
CODE_15A3E8:        STA $0B1E                 
CODE_15A3EB:        SEP #$20                  
CODE_15A3ED:        LDA #$01                  
CODE_15A3EF:        STA $02A9                 
CODE_15A3F2:        RTS                       

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

CODE_15D007:        PHX                       
CODE_15D008:        LDX $12                   
CODE_15D00A:        LDA $90,x                 
CODE_15D00C:        CMP #$36                  
CODE_15D00E:        BNE CODE_15D038           
CODE_15D010:        LDA $79,x                 
CODE_15D012:        BEQ CODE_15D038           
CODE_15D014:        INC $079E                 
CODE_15D017:        LDA $079E                 
CODE_15D01A:        CMP #$0E                  
CODE_15D01C:        BCC CODE_15D023           
CODE_15D01E:        LDA #$00                  
CODE_15D020:        STA $079E                 
CODE_15D023:        LSR A                     
CODE_15D024:        TAX                       
CODE_15D025:        LDA.l DATA_15D000,x             
CODE_15D029:        STA $0712                 
CODE_15D02C:        CPX #$04                  
CODE_15D02E:        BCC CODE_15D038           
CODE_15D030:        LDA $0713                 
CODE_15D033:        ORA #$40                  
CODE_15D035:        STA $0713                 
CODE_15D038:        PLX                       
CODE_15D039:        RTL                       

CODE_15D03A:        PHB                       
CODE_15D03B:        PHK                       
CODE_15D03C:        PLB                       
CODE_15D03D:        PHX                       
CODE_15D03E:        PHY                       
CODE_15D03F:        LDA #$01                  
CODE_15D041:        STA $85                   
CODE_15D043:        LDA $0779                 
CODE_15D046:        ASL A                     
CODE_15D047:        TAX                       
CODE_15D048:        LDA.w PNTR_15D055,x               
CODE_15D04B:        STA $00                   
CODE_15D04D:        LDA.w PNTR_15D055+1,x               
CODE_15D050:        STA $01                   
CODE_15D052:        JMP ($0000)               

PNTR_15D055:        dw CODE_15D067
                    dw CODE_15D084
                    dw CODE_15D05D
                    dw CODE_15D072

CODE_15D05D:        DEC $0795
CODE_15D060:        BPL CODE_15D084           
CODE_15D062:        INC $0779                 
CODE_15D065:        BRA CODE_15D084           

CODE_15D067:        STZ $04BE                 
CODE_15D06A:        INC $0779                 
CODE_15D06D:        INC $041B                 
CODE_15D070:        BRA CODE_15D084           

CODE_15D072:        DEC $04BE                 
CODE_15D075:        LDA $04BE                 
CODE_15D078:        BPL CODE_15D084           
CODE_15D07A:        LDA #$FF                  
CODE_15D07C:        STA $0778                 
CODE_15D07F:        STZ $041B                 
CODE_15D082:        BRA CODE_15D084           

CODE_15D084:        REP #$10                  
CODE_15D086:        LDY #$01FC                
CODE_15D089:        LDX #$0007                
CODE_15D08C:        LDA $04C1                 
CODE_15D08F:        STA $00                   
CODE_15D091:        LDA $04BF                 
CODE_15D094:        STA $01                   
CODE_15D096:        LDA $0779                 
CODE_15D099:        CMP #$03                  
CODE_15D09B:        BNE CODE_15D0A0           
CODE_15D09D:        LDY #$007C                
CODE_15D0A0:        JSR CODE_15D197           
CODE_15D0A3:        LDA.l DATA_15D1AD,x             
CODE_15D0A7:        CPX #$0002                
CODE_15D0AA:        BCC CODE_15D0B0           
CODE_15D0AC:        SEC                       
CODE_15D0AD:        SBC $04BE                 
CODE_15D0B0:        CMP #$60                  
CODE_15D0B2:        BCS CODE_15D0B6                   
CODE_15D0B4:        LDA #$F0                  
CODE_15D0B6:        DEC A                     
CODE_15D0B7:        STA $0801,y               
CODE_15D0BA:        LDA.l DATA_15D1B5,x             
CODE_15D0BE:        STA $0802,y               
CODE_15D0C1:        LDA.l DATA_15D1BD,x             
CODE_15D0C5:        STA $0803,y               
CODE_15D0C8:        LDA #$04                  
CODE_15D0CA:        XBA                       
CODE_15D0CB:        LDA.l DATA_15D1A5,x             
CODE_15D0CF:        REP #$20                  
CODE_15D0D1:        SEC                       
CODE_15D0D2:        SBC $00                   
CODE_15D0D4:        STA $02                   
CODE_15D0D6:        SEP #$20                  
CODE_15D0D8:        STA $0800,y               
CODE_15D0DB:        PHY                       
CODE_15D0DC:        REP #$20                  
CODE_15D0DE:        TYA                       
CODE_15D0DF:        LSR A                     
CODE_15D0E0:        LSR A                     
CODE_15D0E1:        TAY                       
CODE_15D0E2:        SEP #$20                  
CODE_15D0E4:        LDA $03                   
CODE_15D0E6:        BEQ CODE_15D0EA           
CODE_15D0E8:        LDA #$01                  
CODE_15D0EA:        ORA #$02                  
CODE_15D0EC:        STA $0A20,y               
CODE_15D0EF:        PLY                       
CODE_15D0F0:        DEX                       
CODE_15D0F1:        BPL CODE_15D0A0           
CODE_15D0F3:        LDA $0779                 
CODE_15D0F6:        CMP #$01                  
CODE_15D0F8:        BNE CODE_15D10C           
CODE_15D0FA:        INC $04BE                 
CODE_15D0FD:        LDA $04BE                 
CODE_15D100:        CMP #$20                  
CODE_15D102:        BCC CODE_15D10C           
CODE_15D104:        INC $0779                 
CODE_15D107:        LDA #$10                  
CODE_15D109:        STA $0795                 
CODE_15D10C:        LDA $0778                 
CODE_15D10F:        BPL CODE_15D117           
CODE_15D111:        STZ $0779                 
CODE_15D114:        STZ $04BE                 
CODE_15D117:        SEP #$10                  
CODE_15D119:        PLY                       
CODE_15D11A:        PLX                       
CODE_15D11B:        PLB                       
CODE_15D11C:        RTL                       

CODE_15D11D:        LDA $0779                 
CODE_15D120:        BNE CODE_15D196           
CODE_15D122:        LDA $0533                 
CODE_15D125:        CMP #$11                  
CODE_15D127:        BNE CODE_15D196           
CODE_15D129:        LDA $0534                 
CODE_15D12C:        CMP #$01                  
CODE_15D12E:        BNE CODE_15D196           
CODE_15D130:        LDA $14                   
CODE_15D132:        CMP #$04                  
CODE_15D134:        BCC CODE_15D196           
CODE_15D136:        PHB                       
CODE_15D137:        PHK                       
CODE_15D138:        PLB                       
CODE_15D139:        PHX                       
CODE_15D13A:        PHY                       
CODE_15D13B:        REP #$10                  
CODE_15D13D:        LDX #$0007                
CODE_15D140:        LDY #$01FC                
CODE_15D143:        LDA $04C1                 
CODE_15D146:        STA $00                   
CODE_15D148:        LDA $04BF                 
CODE_15D14B:        STA $01                   
CODE_15D14D:        JSR CODE_15D197           
CODE_15D150:        LDA.l DATA_15D1AD,x             
CODE_15D154:        DEC A                     
CODE_15D155:        STA $0801,y               
CODE_15D158:        LDA.l DATA_15D1B5,x             
CODE_15D15C:        STA $0802,y               
CODE_15D15F:        LDA.l DATA_15D1BD,x             
CODE_15D163:        STA $0803,y               
CODE_15D166:        LDA #$04                  
CODE_15D168:        XBA                       
CODE_15D169:        LDA.l DATA_15D1A5,x             
CODE_15D16D:        REP #$20                  
CODE_15D16F:        SEC                       
CODE_15D170:        SBC $00                   
CODE_15D172:        STA $02                   
CODE_15D174:        SEP #$20                  
CODE_15D176:        STA $0800,y               
CODE_15D179:        PHY                       
CODE_15D17A:        REP #$20                  
CODE_15D17C:        TYA                       
CODE_15D17D:        LSR A                     
CODE_15D17E:        LSR A                     
CODE_15D17F:        TAY                       
CODE_15D180:        SEP #$20                  
CODE_15D182:        LDA $03                   
CODE_15D184:        BEQ CODE_15D188           
CODE_15D186:        LDA #$01                  
CODE_15D188:        ORA #$02                  
CODE_15D18A:        STA $0A20,y               
CODE_15D18D:        PLY                       
CODE_15D18E:        DEX                       
CODE_15D18F:        BPL CODE_15D14D           
CODE_15D191:        SEP #$10                  
CODE_15D193:        PLY                       
CODE_15D194:        PLX                       
CODE_15D195:        PLB                       
CODE_15D196:        RTL                       

CODE_15D197:        LDA $0801,y               
CODE_15D19A:        CMP #$F0                  
CODE_15D19C:        BEQ CODE_15D1A4           
CODE_15D19E:        DEY                       
CODE_15D19F:        DEY                       
CODE_15D1A0:        DEY                       
CODE_15D1A1:        DEY                       
CODE_15D1A2:        BRA CODE_15D197           

CODE_15D1A4:        RTS                       

DATA_15D1A5:        db $90,$A0,$90,$A0,$90,$A0,$90,$A0

DATA_15D1AD:        db $60,$60,$70,$70,$80,$80,$90,$90

DATA_15D1B5:        db $A0,$A2,$A4,$A6,$62,$64,$66,$AE

DATA_15D1BD:        db $27,$27,$27,$27,$26,$26,$26,$27

CODE_15D1C5:        LDA $0533                 
CODE_15D1C8:        CMP #$11                  
CODE_15D1CA:        BNE CODE_15D1F9           
CODE_15D1CC:        LDA $0534                 
CODE_15D1CF:        CMP #$02                  
CODE_15D1D1:        BEQ CODE_15D1E9           
CODE_15D1D3:        CMP #$01                  
CODE_15D1D5:        BNE CODE_15D1F9           
CODE_15D1D7:        LDA $14                   
CODE_15D1D9:        CMP #$04                  
CODE_15D1DB:        BNE CODE_15D1F9           
CODE_15D1DD:        LDA $28                   
CODE_15D1DF:        CMP #$90                  
CODE_15D1E1:        BCC CODE_15D1F9           
CODE_15D1E3:        CMP #$A0                  
CODE_15D1E5:        BCS CODE_15D1F9                   
CODE_15D1E7:        SEC                       
CODE_15D1E8:        RTL                       

CODE_15D1E9:        LDA $14                   
CODE_15D1EB:        BNE CODE_15D1F9           
CODE_15D1ED:        LDA $28                   
CODE_15D1EF:        CMP #$50                  
CODE_15D1F1:        BCC CODE_15D1F9           
CODE_15D1F3:        CMP #$60                  
CODE_15D1F5:        BCS CODE_15D1F9                   
CODE_15D1F7:        SEC                       
CODE_15D1F8:        RTL                       

CODE_15D1F9:        CLC                       
CODE_15D1FA:        RTL                       

DATA_15D1FB:        db $A6

DATA_15D1FC:        db $A7

DATA_15D1FD:        db $A8

DATA_15D1FE:        db $A9,$AA,$AB,$AC,$AD,$B6
                    db $B7,$B8,$B9,$BA,$BB,$BC,$BD,$BD
                    db $BC,$BB,$BA,$B9,$B8,$B7,$B6,$AD
                    db $AC,$AB,$AA,$A9,$A8,$A7,$A6

CODE_15D21B:        SEP #$30                  
CODE_15D21D:        SEC                       
CODE_15D21E:        RTL                       
CODE_15D21F:        LDA $EB                   
CODE_15D221:        BNE CODE_15D226           
CODE_15D223:        STZ $021F                 
CODE_15D226:        LDA $021F                 
CODE_15D229:        XBA                       
CODE_15D22A:        LDA $0429                 
CODE_15D22D:        REP #$20                  
CODE_15D22F:        CMP #$0180                
CODE_15D232:        BCC CODE_15D239           
CODE_15D234:        CMP #$FF80                
CODE_15D237:        BCC CODE_15D21B           
CODE_15D239:        LDA $02F8                 
CODE_15D23C:        STA $070B                 
CODE_15D23F:        SEP #$20                  
CODE_15D241:        LDA $10                   
CODE_15D243:        LSR A                     
CODE_15D244:        LSR A                     
CODE_15D245:        AND #$07                  
CODE_15D247:        LDY $3D,x                 
CODE_15D249:        BMI CODE_15D24B           
CODE_15D24B:        TAX                       
CODE_15D24C:        ASL A                     
CODE_15D24D:        ASL A                     
CODE_15D24E:        STA $0E                   
CODE_15D250:        STZ $0F                   
CODE_15D252:        LDA.w DATA_119AA6,x               
CODE_15D255:        LDX $12                   
CODE_15D257:        STA $6F,x                 
CODE_15D259:        LDA $044A,x               
CODE_15D25C:        AND #$02                  
CODE_15D25E:        LSR A                     
CODE_15D25F:        LDX $ED                   
CODE_15D261:        BEQ CODE_15D265           
CODE_15D263:        LDA #$00                  
CODE_15D265:        ADC $0429                 
CODE_15D268:        STA $0713                 
CODE_15D26B:        LDA $042C                 
CODE_15D26E:        LDX $EE                   
CODE_15D270:        BEQ CODE_15D274           
CODE_15D272:        LDA #$F0                  
CODE_15D274:        REP #$10                  
CODE_15D276:        LDY $070B                 
CODE_15D279:        STA $0801,y               
CODE_15D27C:        STA $0805,y               
CODE_15D27F:        STA $0712                 
CODE_15D282:        LDA $0713                 
CODE_15D285:        STA $0800,y               
CODE_15D288:        CLC                       
CODE_15D289:        ADC #$08                  
CODE_15D28B:        STA $0804,y               
CODE_15D28E:        STA $0713                 
CODE_15D291:        LDX $0E                   
CODE_15D293:        LDA.l DATA_15D1FB,x             
CODE_15D297:        STA $0802,y               
CODE_15D29A:        LDA.l DATA_15D1FC,x             
CODE_15D29E:        STA $0806,y               
CODE_15D2A1:        LDA #$00                  
CODE_15D2A3:        LDX $0E                   
CODE_15D2A5:        CPX #$0010                
CODE_15D2A8:        BCC CODE_15D2AC           
CODE_15D2AA:        LDA #$40                  
CODE_15D2AC:        ORA #$2D                  
CODE_15D2AE:        STA $0803,y               
CODE_15D2B1:        STA $0807,y               
CODE_15D2B4:        STA $0714                 
CODE_15D2B7:        JSL CODE_14E483           
CODE_15D2BB:        REP #$10                  
CODE_15D2BD:        LDY $02F8                 
CODE_15D2C0:        STY $070D                 
CODE_15D2C3:        LDA $0712                 
CODE_15D2C6:        STA $0801,y               
CODE_15D2C9:        STA $0805,y               
CODE_15D2CC:        LDA $0713                 
CODE_15D2CF:        CLC                       
CODE_15D2D0:        ADC #$08                  
CODE_15D2D2:        STA $0800,y               
CODE_15D2D5:        CLC                       
CODE_15D2D6:        ADC #$08                  
CODE_15D2D8:        STA $0804,y               
CODE_15D2DB:        LDX $0E                   
CODE_15D2DD:        LDA.l DATA_15D1FD,x             
CODE_15D2E1:        STA $0802,y               
CODE_15D2E4:        LDA.l DATA_15D1FE,x             
CODE_15D2E8:        STA $0806,y               
CODE_15D2EB:        LDA $0714                 
CODE_15D2EE:        STA $0803,y               
CODE_15D2F1:        STA $0807,y               
CODE_15D2F4:        CLC                       
CODE_15D2F5:        RTL                       

DATA_15D2F6:        db $58,$C8,$DF,$30,$60,$C8,$79,$31
                    db $68,$C8,$2F,$31,$70,$C8,$CF,$30
                    db $80,$C8,$2F,$31,$88,$C8,$3F,$31
                    db $90,$C8,$C8,$30,$98,$C8,$1F,$31
                    db $A0,$C8,$3F,$31


CODE_15D31A:        LDX #$23
CODE_15D31C:        LDA.l DATA_15D2F6,x             
CODE_15D320:        STA $0900,x               
CODE_15D323:        DEX                       
CODE_15D324:        BPL CODE_15D31C           
CODE_15D326:        STZ $0A60                 
CODE_15D329:        STZ $0A61                 
CODE_15D32C:        STZ $0A62                 
CODE_15D32F:        STZ $0A63                 
CODE_15D332:        STZ $0A64                 
CODE_15D335:        STZ $0A65                 
CODE_15D338:        STZ $0A66                 
CODE_15D33B:        STZ $0A67                 
CODE_15D33E:        STZ $0A68                 
CODE_15D341:        RTL                       

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
