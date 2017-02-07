;Super Mario Bros. 2

CODE_158000:        AD 24 07      LDA $0724                 
CODE_158003:        D0 74         BNE CODE_158079           
CODE_158005:        AD 72 07      LDA $0772                 
CODE_158008:        F0 0D         BEQ CODE_158017           
CODE_15800A:        A2 02         LDX #$02                  
CODE_15800C:        BD B2 02      LDA $02B2,x               
CODE_15800F:        9D 25 07      STA $0725,x               
CODE_158012:        CA            DEX                       
CODE_158013:        10 F7         BPL CODE_15800C           
CODE_158015:        80 18         BRA CODE_15802F      
     
CODE_158017:        AE 35 05      LDX $0535                 
CODE_15801A:        BF 1A D0 11   LDA.l DATA_11D01A,x             
CODE_15801E:        8D 25 07      STA $0725                 
CODE_158021:        BF 24 D0 11   LDA.l DATA_11D024,x             
CODE_158025:        8D 26 07      STA $0726                 
CODE_158028:        BF 2E D0 11   LDA.l DATA_11D02E,x             
CODE_15802C:        8D 27 07      STA $0727                 
CODE_15802F:        AD 35 05      LDA $0535                 
CODE_158032:        A0 01         LDY #$01                  
CODE_158034:        20 07 81      JSR CODE_158107           
CODE_158037:        AD 33 05      LDA $0533                 
CODE_15803A:        C9 06         CMP #$06                  
CODE_15803C:        F0 08         BEQ CODE_158046           
CODE_15803E:        C9 07         CMP #$07                  
CODE_158040:        F0 04         BEQ CODE_158046           
CODE_158042:        C9 0C         CMP #$0C                  
CODE_158044:        D0 0C         BNE CODE_158052           
CODE_158046:        AD 34 05      LDA $0534                 
CODE_158049:        D0 07         BNE CODE_158052           
CODE_15804B:        A9 10         LDA #$10                  ; \ Layer 3 Y pos = #$0010.
CODE_15804D:        8D 0A 02      STA $020A                 ; /
CODE_158050:        80 03         BRA CODE_158055         
  
CODE_158052:        9C 0A 02      STZ $020A                 
CODE_158055:        9C 0B 02      STZ $020B                 
CODE_158058:        EE 24 07      INC $0724                 
CODE_15805B:        AD 35 05      LDA $0535                 
CODE_15805E:        8D 28 07      STA $0728                 
CODE_158061:        A9 01         LDA #$01                  
CODE_158063:        8D 29 07      STA $0729                 
CODE_158066:        4A            LSR A                     
CODE_158067:        85 06         STA $06                   
CODE_158069:        A9 FF         LDA #$FF                  
CODE_15806B:        8D 2A 07      STA $072A                 
CODE_15806E:        A9 0F         LDA #$0F                  
CODE_158070:        8D 2B 07      STA $072B                 
CODE_158073:        20 83 80      JSR CODE_158083           
CODE_158076:        20 F2 83      JSR CODE_1583F2           
CODE_158079:        22 BD 81 15   JSL CODE_1581BD           
CODE_15807D:        AD 29 07      LDA $0729                 
CODE_158080:        D0 00         BNE CODE_158082           
CODE_158082:        6B            RTL    
                   
CODE_158083:        AD 35 05      LDA $0535                 
CODE_158086:        D0 0B         BNE CODE_158093           
CODE_158088:        AD 2C 07      LDA $072C                 
CODE_15808B:        10 03         BPL CODE_158090           
CODE_15808D:        4C 00 81      JMP CODE_158100           

CODE_158090:        AD 35 05      LDA $0535                 
CODE_158093:        CD 41 05      CMP $0541                 
CODE_158096:        D0 05         BNE CODE_15809D           
CODE_158098:        AD 2C 07      LDA $072C                 
CODE_15809B:        10 63         BPL CODE_158100           
CODE_15809D:        A2 02         LDX #$02                  
CODE_15809F:        AD 2C 07      LDA $072C                 
CODE_1580A2:        10 06         BPL CODE_1580AA           
CODE_1580A4:        A9 FF         LDA #$FF                  
CODE_1580A6:        85 0B         STA $0B                   
CODE_1580A8:        D0 02         BNE CODE_1580AC           
CODE_1580AA:        64 0B         STZ $0B                   
CODE_1580AC:        AD 2C 07      LDA $072C                 
CODE_1580AF:        29 F0         AND #$F0                  
CODE_1580B1:        18            CLC                       
CODE_1580B2:        7D 25 07      ADC $0725,x               
CODE_1580B5:        08            PHP                       
CODE_1580B6:        65 0B         ADC $0B                   
CODE_1580B8:        28            PLP                       
CODE_1580B9:        85 0C         STA $0C                   
CODE_1580BB:        A5 0B         LDA $0B                   
CODE_1580BD:        D0 12         BNE CODE_1580D1           
CODE_1580BF:        90 22         BCC CODE_1580E3           
CODE_1580C1:        BD 25 07      LDA $0725,x               
CODE_1580C4:        29 0F         AND #$0F                  
CODE_1580C6:        C9 09         CMP #$09                  
CODE_1580C8:        D0 19         BNE CODE_1580E3           
CODE_1580CA:        A5 0C         LDA $0C                   
CODE_1580CC:        29 F0         AND #$F0                  
CODE_1580CE:        4C E5 80      JMP CODE_1580E5           

CODE_1580D1:        B0 10         BCS CODE_1580E3                   
CODE_1580D3:        BD 25 07      LDA $0725,x               
CODE_1580D6:        29 0F         AND #$0F                  
CODE_1580D8:        D0 09         BNE CODE_1580E3           
CODE_1580DA:        A5 0C         LDA $0C                   
CODE_1580DC:        29 F0         AND #$F0                  
CODE_1580DE:        69 09         ADC #$09                  
CODE_1580E0:        4C E5 80      JMP CODE_1580E5           

CODE_1580E3:        A5 0C         LDA $0C                   
CODE_1580E5:        9D 25 07      STA $0725,x               
CODE_1580E8:        CA            DEX                       
CODE_1580E9:        10 C1         BPL CODE_1580AC           
CODE_1580EB:        AD 2C 07      LDA $072C                 
CODE_1580EE:        10 10         BPL CODE_158100           
CODE_1580F0:        CE 28 07      DEC $0728                 
CODE_1580F3:        AD 05 02      LDA $0205                 
CODE_1580F6:        49 01         EOR #$01                  
CODE_1580F8:        8D 05 02      STA $0205                 
CODE_1580FB:        A9 01         LDA #$01                  
CODE_1580FD:        8D 2B 07      STA $072B                 
CODE_158100:        9C 2C 07      STZ $072C                 
CODE_158103:        20 2E 83      JSR CODE_15832E           
CODE_158106:        60            RTS
                       
CODE_158107:        4A            LSR A                     
CODE_158108:        B0 1A         BCS CODE_158124                   
CODE_15810A:        C0 01         CPY #$01                  
CODE_15810C:        F0 05         BEQ CODE_158113           
CODE_15810E:        AD 28 06      LDA $0628                 
CODE_158111:        F0 07         BEQ CODE_15811A           
CODE_158113:        A9 01         LDA #$01                  
CODE_158115:        8D 05 02      STA $0205                 
CODE_158118:        80 03         BRA CODE_15811D           
CODE_15811A:        9C 05 02      STZ $0205                 
CODE_15811D:        9C 0B 02      STZ $020B                 
CODE_158120:        A9 00         LDA #$00                  
CODE_158122:        80 19         BRA CODE_15813D           

CODE_158124:        C0 01         CPY #$01                  
CODE_158126:        F0 05         BEQ CODE_15812D           
CODE_158128:        9C 05 02      STZ $0205                 
CODE_15812B:        80 0D         BRA CODE_15813A           

CODE_15812D:        A9 01         LDA #$01                  
CODE_15812F:        8D 05 02      STA $0205                 
CODE_158132:        8D 0B 02      STA $020B                 
CODE_158135:        A9 40         LDA #$40                  
CODE_158137:        8D 04 02      STA $0204                 
CODE_15813A:        B9 3C 9B      LDA.w DATA_119B3C,y               
CODE_15813D:        8D 30 07      STA $0730                 
CODE_158140:        60            RTS
                       
CODE_158141:        AD 04 02      LDA $0204                 
CODE_158144:        8D 32 07      STA $0732                 
CODE_158147:        AD 05 02      LDA $0205                 
CODE_15814A:        8D 33 07      STA $0733                 
CODE_15814D:        AD 34 07      LDA $0734                 
CODE_158150:        8D 35 07      STA $0735                 
CODE_158153:        EE 36 07      INC $0736                 
CODE_158156:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_158159:        8D 35 05      STA $0535                 
CODE_15815C:        20 07 81      JSR CODE_158107           
CODE_15815F:        A9 00         LDA #$00                  
CODE_158161:        8D 04 02      STA $0204                 
CODE_158164:        8D 37 07      STA $0737                 
CODE_158167:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_15816A:        8D 34 07      STA $0734                 
CODE_15816D:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_158170:        8D 25 07      STA $0725                 
CODE_158173:        A9 E0         LDA #$E0                  
CODE_158175:        8D 30 07      STA $0730                 
CODE_158178:        AD 3E 9B      LDA.w DATA_119B3E                 
CODE_15817B:        18            CLC                       
CODE_15817C:        69 F0         ADC #$F0                  
CODE_15817E:        8D 2A 07      STA $072A                 
CODE_158181:        6B            RTL
                       
CODE_158182:        AD 32 07      LDA $0732                 
CODE_158185:        8D 04 02      STA $0204                 
CODE_158188:        8D 37 07      STA $0737                 
CODE_15818B:        AD 33 07      LDA $0733                 
CODE_15818E:        8D 05 02      STA $0205                 
CODE_158191:        AD 35 07      LDA $0735                 
CODE_158194:        8D 34 07      STA $0734                 
CODE_158197:        AD 36 07      LDA $0736                 
CODE_15819A:        D0 20         BNE CODE_1581BC           
CODE_15819C:        EE 38 07      INC $0738                 
CODE_15819F:        EE 36 07      INC $0736                 
CODE_1581A2:        E6 D5         INC $D5                   
CODE_1581A4:        AD 26 07      LDA $0726                 
CODE_1581A7:        8D 25 07      STA $0725                 
CODE_1581AA:        A9 10         LDA #$10                  
CODE_1581AC:        85 01         STA $01                   
CODE_1581AE:        A9 F0         LDA #$F0                  
CODE_1581B0:        8D 30 07      STA $0730                 
CODE_1581B3:        8D 2B 07      STA $072B                 
CODE_1581B6:        AD 27 07      LDA $0727                 
CODE_1581B9:        8D 2A 07      STA $072A                 
CODE_1581BC:        6B            RTL
                       
CODE_1581BD:        A2 00         LDX #$00                  
CODE_1581BF:        8E 39 07      STX $0739                 
CODE_1581C2:        8E 3A 07      STX $073A                 
CODE_1581C5:        86 D8         STX $D8                   
CODE_1581C7:        22 36 82 15   JSL CODE_158236           
CODE_1581CB:        22 6D 82 15   JSL CODE_15826D           
CODE_1581CF:        AD 30 07      LDA $0730                 
CODE_1581D2:        CD 3B 07      CMP $073B                 
CODE_1581D5:        D0 1A         BNE CODE_1581F1           
CODE_1581D7:        80 18         BRA CODE_1581F1           

CODE_1581D9:        AD 2B 07      LDA $072B                 
CODE_1581DC:        18            CLC                       
CODE_1581DD:        69 01         ADC #$01                  
CODE_1581DF:        CD 3C 07      CMP $073C                 
CODE_1581E2:        D0 0D         BNE CODE_1581F1           
CODE_1581E4:        9C 29 07      STZ $0729                 
CODE_1581E7:        9C 36 07      STZ $0736                 
CODE_1581EA:        9C 38 07      STZ $0738                 
CODE_1581ED:        EE 39 07      INC $0739                 
CODE_1581F0:        6B            RTL
                       
CODE_1581F1:        AD 25 07      LDA $0725                 
CODE_1581F4:        CD 2A 07      CMP $072A                 
CODE_1581F7:        F0 EB         BEQ CODE_1581E4           
CODE_1581F9:        A2 00         LDX #$00                  
CODE_1581FB:        22 1B 82 15   JSL CODE_15821B           
CODE_1581FF:        6B            RTL                       

CODE_158200:        BD 25 07      LDA $0725,x               
CODE_158203:        38            SEC                       
CODE_158204:        E9 10         SBC #$10                  
CODE_158206:        9D 25 07      STA $0725,x               
CODE_158209:        B0 0F         BCS CODE_15821A                   
CODE_15820B:        DE 25 07      DEC $0725,x               
CODE_15820E:        BD 25 07      LDA $0725,x               
CODE_158211:        C9 EF         CMP #$EF                  
CODE_158213:        D0 05         BNE CODE_15821A           
CODE_158215:        A9 F9         LDA #$F9                  
CODE_158217:        9D 25 07      STA $0725,x               
CODE_15821A:        6B            RTL                       

CODE_15821B:        BD 25 07      LDA $0725,x               
CODE_15821E:        18            CLC                       
CODE_15821F:        69 10         ADC #$10                  
CODE_158221:        9D 25 07      STA $0725,x               
CODE_158224:        90 0F         BCC CODE_158235           
CODE_158226:        FE 25 07      INC $0725,x               
CODE_158229:        BD 25 07      LDA $0725,x               
CODE_15822C:        C9 0A         CMP #$0A                  
CODE_15822E:        D0 05         BNE CODE_158235           
CODE_158230:        A9 00         LDA #$00                  
CODE_158232:        9D 25 07      STA $0725,x               
CODE_158235:        6B            RTL                       

CODE_158236:        84 0F         STY $0F                   
CODE_158238:        BD 25 07      LDA $0725,x               
CODE_15823B:        29 0F         AND #$0F                  
CODE_15823D:        A8            TAY                       
CODE_15823E:        B9 1B AB      LDA.w DATA_11AB1B,y               
CODE_158241:        8D 3F 07      STA $073F                 
CODE_158244:        B9 25 AB      LDA.w DATA_11AB25,y               
CODE_158247:        8D 40 07      STA $0740                 
CODE_15824A:        A9 7F         LDA #$7F                  
CODE_15824C:        8D 41 07      STA $0741                 
CODE_15824F:        BD 25 07      LDA $0725,x               
CODE_158252:        4A            LSR A                     
CODE_158253:        4A            LSR A                     
CODE_158254:        4A            LSR A                     
CODE_158255:        4A            LSR A                     
CODE_158256:        8D 42 07      STA $0742                 
CODE_158259:        0A            ASL A                     
CODE_15825A:        8D 3C 07      STA $073C                 
CODE_15825D:        A0 00         LDY #$00                  
CODE_15825F:        BD 25 07      LDA $0725,x               
CODE_158262:        4A            LSR A                     
CODE_158263:        B0 02         BCS CODE_158267                   
CODE_158265:        A0 04         LDY #$04                  
CODE_158267:        8C 3B 07      STY $073B                 
CODE_15826A:        A4 0F         LDY $0F                   
CODE_15826C:        6B            RTL                       

CODE_15826D:        AF 00 08 7F   LDA $7F0800               
CODE_158271:        AA            TAX                       
CODE_158272:        AD 3F 07      LDA $073F                 
CODE_158275:        85 C4         STA $C4                   
CODE_158277:        AD 40 07      LDA $0740                 
CODE_15827A:        85 C5         STA $C5                   
CODE_15827C:        AD 41 07      LDA $0741                 
CODE_15827F:        85 C6         STA $C6                   
CODE_158281:        C2 20         REP #$20                  
CODE_158283:        AD 3B 07      LDA $073B                 
CODE_158286:        18            CLC                       
CODE_158287:        69 48 00      ADC #$0048                
CODE_15828A:        9F 02 08 7F   STA $7F0802,x             
CODE_15828E:        EB            XBA                       
CODE_15828F:        18            CLC                       
CODE_158290:        69 01 00      ADC #$0001                
CODE_158293:        EB            XBA                       
CODE_158294:        9F 42 08 7F   STA $7F0842,x             
CODE_158298:        E8            INX                       
CODE_158299:        E8            INX                       
CODE_15829A:        A9 00 3C      LDA #$3C00                
CODE_15829D:        9F 02 08 7F   STA $7F0802,x             
CODE_1582A1:        9F 42 08 7F   STA $7F0842,x             
CODE_1582A5:        E8            INX                       
CODE_1582A6:        E8            INX                       
CODE_1582A7:        E2 20         SEP #$20                  
CODE_1582A9:        9C 43 07      STZ $0743                 
CODE_1582AC:        9C 4F 07      STZ $074F                 
CODE_1582AF:        AD 44 07      LDA $0744                 
CODE_1582B2:        85 00         STA $00                   
CODE_1582B4:        AD 45 07      LDA $0745                 
CODE_1582B7:        85 01         STA $01                   
CODE_1582B9:        AD 46 07      LDA $0746                 
CODE_1582BC:        85 02         STA $02                   
CODE_1582BE:        AC 42 07      LDY $0742                 
CODE_1582C1:        C2 30         REP #$30                  
CODE_1582C3:        B7 C4         LDA [$C4],y               
CODE_1582C5:        29 FF 00      AND #$00FF                
CODE_1582C8:        C9 FF 00      CMP #$00FF                
CODE_1582CB:        D0 10         BNE CODE_1582DD           
CODE_1582CD:        AF 4F 93 15   LDA.l DATA_15934F               
CODE_1582D1:        85 00         STA $00                   
CODE_1582D3:        A9 15 00      LDA #$0015                
CODE_1582D6:        85 02         STA $02                   
CODE_1582D8:        A0 00 00      LDY #$0000                
CODE_1582DB:        80 04         BRA CODE_1582E1           

CODE_1582DD:        0A            ASL A                     
CODE_1582DE:        0A            ASL A                     
CODE_1582DF:        0A            ASL A                     
CODE_1582E0:        A8            TAY                       
CODE_1582E1:        B7 00         LDA [$00],y               
CODE_1582E3:        9F 02 08 7F   STA $7F0802,x             
CODE_1582E7:        C8            INY                       
CODE_1582E8:        C8            INY                       
CODE_1582E9:        B7 00         LDA [$00],y               
CODE_1582EB:        9F 42 08 7F   STA $7F0842,x             
CODE_1582EF:        C8            INY                       
CODE_1582F0:        C8            INY                       
CODE_1582F1:        B7 00         LDA [$00],y               
CODE_1582F3:        9F 04 08 7F   STA $7F0804,x             
CODE_1582F7:        C8            INY                       
CODE_1582F8:        C8            INY                       
CODE_1582F9:        B7 00         LDA [$00],y               
CODE_1582FB:        9F 44 08 7F   STA $7F0844,x             
CODE_1582FF:        E2 30         SEP #$30                  
CODE_158301:        EE 43 07      INC $0743                 
CODE_158304:        E8            INX                       
CODE_158305:        E8            INX                       
CODE_158306:        E8            INX                       
CODE_158307:        E8            INX                       
CODE_158308:        AD 42 07      LDA $0742                 
CODE_15830B:        18            CLC                       
CODE_15830C:        69 10         ADC #$10                  
CODE_15830E:        8D 42 07      STA $0742                 
CODE_158311:        AD 43 07      LDA $0743                 
CODE_158314:        C9 0F         CMP #$0F                  
CODE_158316:        90 97         BCC CODE_1582AF           
CODE_158318:        A9 FF         LDA #$FF                  
CODE_15831A:        9F 42 08 7F   STA $7F0842,x             
CODE_15831E:        8A            TXA                       
CODE_15831F:        18            CLC                       
CODE_158320:        69 40         ADC #$40                  
CODE_158322:        8F 00 08 7F   STA $7F0800               
CODE_158326:        EE 3A 07      INC $073A                 
CODE_158329:        6B            RTL                       

DATA_15832A:        db $00,$40,$80,$C0

CODE_15832E:        AD 72 07      LDA $0772                 
CODE_158331:        F0 0F         BEQ CODE_158342           
CODE_158333:        AD 00 02      LDA $0200                 
CODE_158336:        8D 04 02      STA $0204                 
CODE_158339:        AD 01 02      LDA $0201                 
CODE_15833C:        8D 05 02      STA $0205                 
CODE_15833F:        82 A4 00      BRL CODE_1583E6           

CODE_158342:        AD 35 05      LDA $0535                 
CODE_158345:        29 04         AND #$04                  
CODE_158347:        D0 50         BNE CODE_158399           
CODE_158349:        AD 35 05      LDA $0535                 
CODE_15834C:        29 07         AND #$07                  
CODE_15834E:        D0 15         BNE CODE_158365           
CODE_158350:        AD 01 02      LDA $0201                 
CODE_158353:        D0 10         BNE CODE_158365           
CODE_158355:        9C 05 02      STZ $0205                 
CODE_158358:        AD 00 02      LDA $0200                 
CODE_15835B:        4A            LSR A                     
CODE_15835C:        4A            LSR A                     
CODE_15835D:        09 C0         ORA #$C0                  
CODE_15835F:        8D 04 02      STA $0204                 
CODE_158362:        4C E6 83      JMP CODE_1583E6           

CODE_158365:        A9 01         LDA #$01                  
CODE_158367:        8D 05 02      STA $0205                 
CODE_15836A:        AD 00 02      LDA $0200                 
CODE_15836D:        4A            LSR A                     
CODE_15836E:        4A            LSR A                     
CODE_15836F:        8D 04 02      STA $0204                 
CODE_158372:        AD 35 05      LDA $0535                 
CODE_158375:        29 03         AND #$03                  
CODE_158377:        AA            TAX                       
CODE_158378:        AD 35 05      LDA $0535                 
CODE_15837B:        29 01         AND #$01                  
CODE_15837D:        F0 07         BEQ CODE_158386           
CODE_15837F:        AD 01 02      LDA $0201                 
CODE_158382:        F0 08         BEQ CODE_15838C           
CODE_158384:        80 05         BRA CODE_15838B           

CODE_158386:        AD 01 02      LDA $0201                 
CODE_158389:        D0 01         BNE CODE_15838C           
CODE_15838B:        CA            DEX                       
CODE_15838C:        BF 2A 83 15   LDA.l DATA_15832A,x             
CODE_158390:        18            CLC                       
CODE_158391:        6D 04 02      ADC $0204                 
CODE_158394:        8D 04 02      STA $0204                 
CODE_158397:        80 4D         BRA CODE_1583E6           

CODE_158399:        AD 35 05      LDA $0535                 
CODE_15839C:        C9 04         CMP #$04                  
CODE_15839E:        D0 16         BNE CODE_1583B6           
CODE_1583A0:        AD 01 02      LDA $0201                 
CODE_1583A3:        D0 11         BNE CODE_1583B6           
CODE_1583A5:        A9 01         LDA #$01                  
CODE_1583A7:        8D 05 02      STA $0205                 
CODE_1583AA:        AD 00 02      LDA $0200                 
CODE_1583AD:        4A            LSR A                     
CODE_1583AE:        4A            LSR A                     
CODE_1583AF:        09 C0         ORA #$C0                  
CODE_1583B1:        8D 04 02      STA $0204                 
CODE_1583B4:        80 30         BRA CODE_1583E6           

CODE_1583B6:        9C 05 02      STZ $0205                 
CODE_1583B9:        AD 00 02      LDA $0200                 
CODE_1583BC:        4A            LSR A                     
CODE_1583BD:        4A            LSR A                     
CODE_1583BE:        8D 04 02      STA $0204                 
CODE_1583C1:        AD 35 05      LDA $0535                 
CODE_1583C4:        29 03         AND #$03                  
CODE_1583C6:        AA            TAX                       
CODE_1583C7:        AD 35 05      LDA $0535                 
CODE_1583CA:        29 01         AND #$01                  
CODE_1583CC:        F0 07         BEQ CODE_1583D5           
CODE_1583CE:        AD 01 02      LDA $0201                 
CODE_1583D1:        F0 08         BEQ CODE_1583DB           
CODE_1583D3:        80 05         BRA CODE_1583DA           

CODE_1583D5:        AD 01 02      LDA $0201                 
CODE_1583D8:        D0 01         BNE CODE_1583DB           
CODE_1583DA:        CA            DEX                       
CODE_1583DB:        BF 2A 83 15   LDA.l DATA_15832A,x             
CODE_1583DF:        18            CLC                       
CODE_1583E0:        6D 04 02      ADC $0204                 
CODE_1583E3:        8D 04 02      STA $0204                 
CODE_1583E6:        AD 04 02      LDA $0204                 
CODE_1583E9:        29 F0         AND #$F0                  
CODE_1583EB:        8D 50 07      STA $0750                 
CODE_1583EE:        9C 51 07      STZ $0751                 
CODE_1583F1:        60            RTS                       

CODE_1583F2:        AE 33 05      LDX $0533                ; \ Get room + level number into index.
CODE_1583F5:        BF 98 D0 11   LDA.l DATA_11D098,x      ;  |
CODE_1583F9:        18            CLC                      ;  |
CODE_1583FA:        6D 34 05      ADC $0534                ;  |
CODE_1583FD:        AA            TAX                      ;  |
CODE_1583FE:        BF 6B 91 15   LDA.l DATA_15916B,x      ;  | Load which set of Layer 3 Map16 tiles to use (the cloud tiles or the light beams of the shining door) 
CODE_158402:        0A            ASL A                    ;  | Multiply by 2.
CODE_158403:        AA            TAX                      ;  |
CODE_158404:        BF 33 92 15   LDA.l PNTR_159233,x        ;  | Get low byte of Map16 table.   
CODE_158408:        8D 44 07      STA $0744                ;  |
CODE_15840B:        E8            INX                      ;  |
CODE_15840C:        BF 33 92 15   LDA.l PNTR_159233,x        ;  | Get high byte of Map16 table.   
CODE_158410:        8D 45 07      STA $0745                ;  |
CODE_158413:        A9 15         LDA #$15                 ;  | Bank number = $15.
CODE_158415:        8D 46 07      STA $0746                ; /
CODE_158418:        60            RTS                      ; Return.

CODE_158419:        A2 44         LDX #$44                  
CODE_15841B:        A0 00         LDY #$00                  
CODE_15841D:        AD 28 06      LDA $0628                 
CODE_158420:        C9 01         CMP #$01                  
CODE_158422:        D0 04         BNE CODE_158428           
CODE_158424:        A2 84         LDX #$84                  
CODE_158426:        80 07         BRA CODE_15842F           

CODE_158428:        A5 EB         LDA $EB                   
CODE_15842A:        F0 03         BEQ CODE_15842F           
CODE_15842C:        A2 40         LDX #$40                  
CODE_15842E:        C8            INY                       
CODE_15842F:        86 03         STX $03                   
CODE_158431:        64 04         STZ $04                   
CODE_158433:        98            TYA                       
CODE_158434:        09 80         ORA #$80                  
CODE_158436:        8D 15 21      STA $2115                 
CODE_158439:        A9 7F         LDA #$7F                  
CODE_15843B:        8D 14 43      STA $4314                 
CODE_15843E:        C2 10         REP #$10                  
CODE_158440:        A2 01 18      LDX #$1801                
CODE_158443:        8E 10 43      STX $4310                 
CODE_158446:        A2 02 00      LDX #$0002                
CODE_158449:        BF 00 08 7F   LDA $7F0800,x             
CODE_15844D:        30 30         BMI CODE_15847F           
CODE_15844F:        C2 20         REP #$20                  
CODE_158451:        BF 00 08 7F   LDA $7F0800,x             
CODE_158455:        EB            XBA                       
CODE_158456:        8D 16 21      STA $2116                 
CODE_158459:        BF 02 08 7F   LDA $7F0802,x             
CODE_15845D:        EB            XBA                       
CODE_15845E:        8D 15 43      STA $4315                 
CODE_158461:        8A            TXA                       
CODE_158462:        18            CLC                       
CODE_158463:        69 04 00      ADC #$0004                
CODE_158466:        18            CLC                       
CODE_158467:        69 00 08      ADC #$0800                
CODE_15846A:        8D 12 43      STA $4312                 
CODE_15846D:        8A            TXA                       
CODE_15846E:        18            CLC                       
CODE_15846F:        65 03         ADC $03                   
CODE_158471:        AA            TAX                       
CODE_158472:        E2 20         SEP #$20                  
CODE_158474:        A9 02         LDA #$02                  
CODE_158476:        8D 0B 42      STA $420B                 
CODE_158479:        BF 00 08 7F   LDA $7F0800,x             
CODE_15847D:        10 D0         BPL CODE_15844F           
CODE_15847F:        E2 30         SEP #$30                  
CODE_158481:        6B            RTL                       

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

CODE_158500:        AD 24 07      LDA $0724
CODE_158503:        D0 4F         BNE CODE_158554
CODE_158505:        A9 02         LDA #$02
CODE_158507:        8D 3B 07      STA $073B               
CODE_15850A:        AD 72 07      LDA $0772   
CODE_15850D:        D0 14         BNE CODE_158523           
CODE_15850F:        AE 35 05      LDX $0535                 
CODE_158512:        BF 38 D0 11   LDA.l DATA_11D038,x             
CODE_158516:        8D 25 07      STA $0725                 
CODE_158519:        8D 26 07      STA $0726                 
CODE_15851C:        BF 42 D0 11   LDA.l DATA_11D042,x             
CODE_158520:        8D 27 07      STA $0727                 
CODE_158523:        AD 35 05      LDA $0535                 
CODE_158526:        A0 00         LDY #$00                  
CODE_158528:        20 07 81      JSR CODE_158107           
CODE_15852B:        A9 02         LDA #$02                  
CODE_15852D:        8D 47 07      STA $0747                 
CODE_158530:        A9 00         LDA #$00                  
CODE_158532:        8D 48 07      STA $0748                 
CODE_158535:        A9 20         LDA #$20                  
CODE_158537:        8D 3D 07      STA $073D                 
CODE_15853A:        A9 A0         LDA #$A0                  
CODE_15853C:        8D 3E 07      STA $073E                 
CODE_15853F:        EE 24 07      INC $0724                 
CODE_158542:        A9 E0         LDA #$E0                  
CODE_158544:        85 E2         STA $E2                   
CODE_158546:        A9 01         LDA #$01                  
CODE_158548:        85 E4         STA $E4                   
CODE_15854A:        8D 29 07      STA $0729                 
CODE_15854D:        4A            LSR A                     
CODE_15854E:        8D 3C 07      STA $073C                 
CODE_158551:        20 F2 83      JSR CODE_1583F2           
CODE_158554:        64 06         STZ $06                   
CODE_158556:        A9 FF         LDA #$FF                  
CODE_158558:        8D 2A 07      STA $072A                 
CODE_15855B:        A9 A0         LDA #$A0                  
CODE_15855D:        8D 2B 07      STA $072B                 
CODE_158560:        22 F8 85 15   JSL CODE_1585F8           
CODE_158564:        AD 29 07      LDA $0729                 
CODE_158567:        D0 08         BNE CODE_158571           
CODE_158569:        A9 E8         LDA #$E8                  
CODE_15856B:        85 E1         STA $E1                   
CODE_15856D:        A9 C8         LDA #$C8                  
CODE_15856F:        85 E2         STA $E2                   
CODE_158571:        6B            RTL                       

CODE_158572:        AD 0A 02      LDA $020A                 
CODE_158575:        8D 31 07      STA $0731                 
CODE_158578:        AD 04 02      LDA $0204                 
CODE_15857B:        8D 32 07      STA $0732                 
CODE_15857E:        AD 49 07      LDA $0749                 
CODE_158581:        8D 4B 07      STA $074B                 
CODE_158584:        AD 4A 07      LDA $074A                 
CODE_158587:        8D 4C 07      STA $074C                 
CODE_15858A:        AD 34 07      LDA $0734                 
CODE_15858D:        8D 4D 07      STA $074D                 
CODE_158590:        9C 0A 02      STZ $020A                 
CODE_158593:        9C 04 02      STZ $0204                 
CODE_158596:        6B            RTL                       

CODE_158597:        AD 31 07      LDA $0731                 
CODE_15859A:        8D 0A 02      STA $020A                 
CODE_15859D:        AD 32 07      LDA $0732                 
CODE_1585A0:        8D 04 02      STA $0204                 
CODE_1585A3:        AD 4B 07      LDA $074B                 
CODE_1585A6:        8D 49 07      STA $0749                 
CODE_1585A9:        AD 4C 07      LDA $074C                 
CODE_1585AC:        8D 4A 07      STA $074A                 
CODE_1585AF:        AD 4D 07      LDA $074D                 
CODE_1585B2:        8D 34 07      STA $0734                 
CODE_1585B5:        6B            RTL                       

CODE_1585B6:        AD 26 07      LDA $0726                 
CODE_1585B9:        29 10         AND #$10                  
CODE_1585BB:        F0 07         BEQ CODE_1585C4           
CODE_1585BD:        A5 E1         LDA $E1                   
CODE_1585BF:        38            SEC                       
CODE_1585C0:        E9 08         SBC #$08                  
CODE_1585C2:        85 E1         STA $E1                   
CODE_1585C4:        A9 01         LDA #$01                  
CODE_1585C6:        85 E4         STA $E4                   
CODE_1585C8:        AD 26 07      LDA $0726                 
CODE_1585CB:        8D 25 07      STA $0725                 
CODE_1585CE:        A9 10         LDA #$10                  
CODE_1585D0:        85 01         STA $01                   
CODE_1585D2:        A2 00         LDX #$00                  
CODE_1585D4:        22 3F 87 15   JSL CODE_15873F           
CODE_1585D8:        AD 3D 07      LDA $073D                 
CODE_1585DB:        8D 3C 07      STA $073C                 
CODE_1585DE:        A5 E1         LDA $E1                   
CODE_1585E0:        85 E2         STA $E2                   
CODE_1585E2:        A9 F0         LDA #$F0                  
CODE_1585E4:        8D 30 07      STA $0730                 
CODE_1585E7:        8D 2B 07      STA $072B                 
CODE_1585EA:        AD 27 07      LDA $0727                 
CODE_1585ED:        8D 2A 07      STA $072A                 
CODE_1585F0:        EE 4F 07      INC $074F                 
CODE_1585F3:        A9 01         LDA #$01                  
CODE_1585F5:        85 06         STA $06                   
CODE_1585F7:        6B            RTL                       

CODE_1585F8:        A2 00         LDX #$00                  
CODE_1585FA:        8E 39 07      STX $0739                 
CODE_1585FD:        22 F1 86 15   JSL CODE_1586F1           
CODE_158601:        22 6F 87 15   JSL CODE_15876F           
CODE_158605:        A2 00         LDX #$00                  
CODE_158607:        22 6E 86 15   JSL CODE_15866E           
CODE_15860B:        AD 30 07      LDA $0730                 
CODE_15860E:        CD 3B 07      CMP $073B                 
CODE_158611:        D0 22         BNE CODE_158635           
CODE_158613:        AD 2B 07      LDA $072B                 
CODE_158616:        18            CLC                       
CODE_158617:        69 20         ADC #$20                  
CODE_158619:        CD 3C 07      CMP $073C                 
CODE_15861C:        D0 17         BNE CODE_158635           
CODE_15861E:        A5 06         LDA $06                   
CODE_158620:        AA            TAX                       
CODE_158621:        F0 05         BEQ CODE_158628           
CODE_158623:        AD 19 05      LDA $0519                 
CODE_158626:        85 E1         STA $E1                   
CODE_158628:        EE 39 07      INC $0739                 
CODE_15862B:        9C 29 07      STZ $0729                 
CODE_15862E:        9C 36 07      STZ $0736                 
CODE_158631:        9C 38 07      STZ $0738                 
CODE_158634:        6B            RTL                       

CODE_158635:        AD 3C 07      LDA $073C                 
CODE_158638:        29 20         AND #$20                  
CODE_15863A:        D0 0E         BNE CODE_15864A           
CODE_15863C:        AD 25 07      LDA $0725                 
CODE_15863F:        CD 2A 07      CMP $072A                 
CODE_158642:        F0 DA         BEQ CODE_15861E           
CODE_158644:        A2 00         LDX #$00                  
CODE_158646:        22 CA 86 15   JSL CODE_1586CA           
CODE_15864A:        6B            RTL                       

CODE_15864B:        BD 3D 07      LDA $073D,x               
CODE_15864E:        38            SEC                       
CODE_15864F:        E9 20         SBC #$20                  
CODE_158651:        9D 3D 07      STA $073D,x               
CODE_158654:        B0 17         BCS CODE_15866D                   
CODE_158656:        BD 47 07      LDA $0747,x               
CODE_158659:        38            SEC                       
CODE_15865A:        E9 01         SBC #$01                  
CODE_15865C:        C9 FF         CMP #$FF                  
CODE_15865E:        D0 04         BNE CODE_158664           
CODE_158660:        A9 0B         LDA #$0B                  
CODE_158662:        80 06         BRA CODE_15866A           

CODE_158664:        C9 07         CMP #$07                  
CODE_158666:        D0 34         BNE CODE_15869C           
CODE_158668:        A9 03         LDA #$03                  
CODE_15866A:        9D 47 07      STA $0747,x               
CODE_15866D:        6B            RTL                       

CODE_15866E:        BD 3C 07      LDA $073C,x               
CODE_158671:        18            CLC                       
CODE_158672:        69 20         ADC #$20                  
CODE_158674:        9D 3C 07      STA $073C,x               
CODE_158677:        90 26         BCC CODE_15869F           
CODE_158679:        E0 00         CPX #$00                  
CODE_15867B:        D0 0A         BNE CODE_158687           
CODE_15867D:        AD 3B 07      LDA $073B                 
CODE_158680:        18            CLC                       
CODE_158681:        69 01         ADC #$01                  
CODE_158683:        8D 3B 07      STA $073B                 
CODE_158686:        6B            RTL                       

CODE_158687:        CA            DEX                       
CODE_158688:        BD 47 07      LDA $0747,x               
CODE_15868B:        18            CLC                       
CODE_15868C:        69 01         ADC #$01                  
CODE_15868E:        C9 04         CMP #$04                  
CODE_158690:        D0 04         BNE CODE_158696           
CODE_158692:        A9 08         LDA #$08                  
CODE_158694:        80 06         BRA CODE_15869C           
CODE_158696:        C9 0C         CMP #$0C                  
CODE_158698:        D0 02         BNE CODE_15869C           
CODE_15869A:        A9 00         LDA #$00                  
CODE_15869C:        9D 47 07      STA $0747,x               
CODE_15869F:        6B            RTL                       

CODE_1586A0:        BD 26 07      LDA $0726,x               
CODE_1586A3:        38            SEC                       
CODE_1586A4:        E9 10         SBC #$10                  
CODE_1586A6:        9D 26 07      STA $0726,x               
CODE_1586A9:        29 F0         AND #$F0                  
CODE_1586AB:        C9 F0         CMP #$F0                  
CODE_1586AD:        D0 1A         BNE CODE_1586C9           
CODE_1586AF:        BD 26 07      LDA $0726,x               
CODE_1586B2:        29 0F         AND #$0F                  
CODE_1586B4:        18            CLC                       
CODE_1586B5:        69 E0         ADC #$E0                  
CODE_1586B7:        9D 26 07      STA $0726,x               
CODE_1586BA:        DE 26 07      DEC $0726,x               
CODE_1586BD:        BD 26 07      LDA $0726,x               
CODE_1586C0:        C9 DF         CMP #$DF                  
CODE_1586C2:        D0 05         BNE CODE_1586C9           
CODE_1586C4:        A9 E9         LDA #$E9                  
CODE_1586C6:        9D 26 07      STA $0726,x               
CODE_1586C9:        6B            RTL                       

CODE_1586CA:        BD 25 07      LDA $0725,x               
CODE_1586CD:        18            CLC                       
CODE_1586CE:        69 10         ADC #$10                  
CODE_1586D0:        9D 25 07      STA $0725,x               
CODE_1586D3:        29 F0         AND #$F0                  
CODE_1586D5:        C9 F0         CMP #$F0                  
CODE_1586D7:        D0 17         BNE CODE_1586F0           
CODE_1586D9:        BD 25 07      LDA $0725,x               
CODE_1586DC:        29 0F         AND #$0F                  
CODE_1586DE:        9D 25 07      STA $0725,x               
CODE_1586E1:        FE 25 07      INC $0725,x               
CODE_1586E4:        BD 25 07      LDA $0725,x               
CODE_1586E7:        C9 0A         CMP #$0A                  
CODE_1586E9:        D0 05         BNE CODE_1586F0           
CODE_1586EB:        A9 00         LDA #$00                  
CODE_1586ED:        9D 25 07      STA $0725,x               
CODE_1586F0:        6B            RTL                       

CODE_1586F1:        DA            PHX                       
CODE_1586F2:        BD 25 07      LDA $0725,x               
CODE_1586F5:        29 0F         AND #$0F                  
CODE_1586F7:        A8            TAY                       
CODE_1586F8:        B9 1B AB      LDA.w DATA_11AB1B,y               
CODE_1586FB:        8D 3F 07      STA $073F                 
CODE_1586FE:        B9 25 AB      LDA.w DATA_11AB25,y               
CODE_158701:        8D 40 07      STA $0740                 
CODE_158704:        A9 7F         LDA #$7F                  
CODE_158706:        8D 41 07      STA $0741                 
CODE_158709:        BD 25 07      LDA $0725,x               
CODE_15870C:        29 F0         AND #$F0                  
CODE_15870E:        8D 42 07      STA $0742                 
CODE_158711:        E0 00         CPX #$00                  
CODE_158713:        D0 1B         BNE CODE_158730           
CODE_158715:        AD 3B 07      LDA $073B                 
CODE_158718:        C9 FF         CMP #$FF                  
CODE_15871A:        D0 04         BNE CODE_158720           
CODE_15871C:        A9 0B         LDA #$0B                  
CODE_15871E:        80 14         BRA CODE_158734           

CODE_158720:        C9 04         CMP #$04                  
CODE_158722:        D0 04         BNE CODE_158728           
CODE_158724:        A9 08         LDA #$08                  
CODE_158726:        80 0C         BRA CODE_158734           

CODE_158728:        C9 0C         CMP #$0C                  
CODE_15872A:        D0 08         BNE CODE_158734           
CODE_15872C:        A9 00         LDA #$00                  
CODE_15872E:        80 04         BRA CODE_158734           

CODE_158730:        CA            DEX                       
CODE_158731:        BD 47 07      LDA $0747,x               
CODE_158734:        8D 3B 07      STA $073B                 
CODE_158737:        FA            PLX                       
CODE_158738:        BD 3C 07      LDA $073C,x               
CODE_15873B:        8D 3C 07      STA $073C                 
CODE_15873E:        6B            RTL                       

CODE_15873F:        BD 25 07      LDA $0725,x               
CODE_158742:        29 10         AND #$10                  
CODE_158744:        F0 F8         BEQ CODE_15873E           
CODE_158746:        BD 25 07      LDA $0725,x               
CODE_158749:        85 03         STA $03                   
CODE_15874B:        38            SEC                       
CODE_15874C:        E5 01         SBC $01                   
CODE_15874E:        9D 25 07      STA $0725,x               
CODE_158751:        22 F1 86 15   JSL CODE_1586F1           
CODE_158755:        A9 0F         LDA #$0F                  
CODE_158757:        85 E3         STA $E3                   
CODE_158759:        A9 00         LDA #$00                  
CODE_15875B:        8D 43 07      STA $0743                 
CODE_15875E:        C6 E3         DEC $E3                   
CODE_158760:        A5 E3         LDA $E3                   
CODE_158762:        10 FA         BPL CODE_15875E           
CODE_158764:        A5 03         LDA $03                   
CODE_158766:        9D 25 07      STA $0725,x               
CODE_158769:        C6 E4         DEC $E4                   
CODE_15876B:        5C F1 86 15   JML CODE_1586F1           

CODE_15876F:        AF 00 08 7F   LDA $7F0800               
CODE_158773:        AA            TAX                       
CODE_158774:        AD 3F 07      LDA $073F                 
CODE_158777:        85 C4         STA $C4                   
CODE_158779:        AD 40 07      LDA $0740                 
CODE_15877C:        85 C5         STA $C5                   
CODE_15877E:        AD 41 07      LDA $0741                 
CODE_158781:        85 C6         STA $C6                   
CODE_158783:        AD 3B 07      LDA $073B                 
CODE_158786:        18            CLC                       
CODE_158787:        69 48         ADC #$48                  
CODE_158789:        9F 02 08 7F   STA $7F0802,x             
CODE_15878D:        E8            INX                       
CODE_15878E:        AD 3C 07      LDA $073C                 
CODE_158791:        9F 02 08 7F   STA $7F0802,x             
CODE_158795:        E8            INX                       
CODE_158796:        A9 00         LDA #$00                  
CODE_158798:        9F 02 08 7F   STA $7F0802,x             
CODE_15879C:        E8            INX                       
CODE_15879D:        A9 40         LDA #$40                  
CODE_15879F:        9F 02 08 7F   STA $7F0802,x             
CODE_1587A3:        E8            INX                       
CODE_1587A4:        9C 43 07      STZ $0743                 
CODE_1587A7:        A9 0F         LDA #$0F                  
CODE_1587A9:        85 E3         STA $E3                   
CODE_1587AB:        AD 44 07      LDA $0744                 ; \ Map16 table into [$00]
CODE_1587AE:        85 00         STA $00                   ;  |
CODE_1587B0:        AD 45 07      LDA $0745                 ;  |
CODE_1587B3:        85 01         STA $01                   ;  |
CODE_1587B5:        AD 46 07      LDA $0746                 ;  |
CODE_1587B8:        85 02         STA $02                   ; /
CODE_1587BA:        AC 42 07      LDY $0742                 
CODE_1587BD:        C2 30         REP #$30                  ; Accumulator and Index = 16-bit.
CODE_1587BF:        B7 C4         LDA [$C4],y               ; \ Check if tile in Layer 3 Map16 table is #$FF...
CODE_1587C1:        29 FF 00      AND #$00FF                ;  |
CODE_1587C4:        C9 FF 00      CMP #$00FF                ;  |
CODE_1587C7:        D0 10         BNE CODE_1587D9           ; / If not, branch.
CODE_1587C9:        AF 4F 93 15   LDA.l DATA_15934F           ; \ Load value for empty tile.
CODE_1587CD:        85 00         STA $00                   ;  | ($159351 is empty tile)
CODE_1587CF:        A9 15 00      LDA #$0015                ;  |
CODE_1587D2:        85 02         STA $02                   ; /
CODE_1587D4:        A0 00 00      LDY #$0000                ; Y = #$0000.
CODE_1587D7:        80 04         BRA CODE_1587DD           

CODE_1587D9:        0A            ASL A                     ; \ Multiply Map16 num by 8.
CODE_1587DA:        0A            ASL A                     ;  |
CODE_1587DB:        0A            ASL A                     ;  |
CODE_1587DC:        A8            TAY                       ; / Into Y index.
CODE_1587DD:        AD 4F 07      LDA $074F                 
CODE_1587E0:        29 FF 00      AND #$00FF                
CODE_1587E3:        F0 04         BEQ CODE_1587E9           
CODE_1587E5:        C8            INY                       
CODE_1587E6:        C8            INY                       
CODE_1587E7:        C8            INY                       
CODE_1587E8:        C8            INY                       
CODE_1587E9:        C2 20         REP #$20                  ; Accumulator = 16-bit.
CODE_1587EB:        B7 00         LDA [$00],y               
CODE_1587ED:        9F 02 08 7F   STA $7F0802,x             
CODE_1587F1:        E2 20         SEP #$20                  ; Accumulator = 8-bit.
CODE_1587F3:        EE 43 07      INC $0743                 
CODE_1587F6:        E8            INX                       
CODE_1587F7:        E8            INX                       
CODE_1587F8:        C8            INY                       
CODE_1587F9:        C8            INY                       
CODE_1587FA:        AD 43 07      LDA $0743                 
CODE_1587FD:        4A            LSR A                     
CODE_1587FE:        B0 E9         BCS CODE_1587E9                   
CODE_158800:        EE 42 07      INC $0742                 
CODE_158803:        E2 30         SEP #$30                  ; Accumulator and Index = 8-bit.
CODE_158805:        AD 43 07      LDA $0743                 
CODE_158808:        C9 20         CMP #$20                  
CODE_15880A:        90 9F         BCC CODE_1587AB           
CODE_15880C:        A9 FF         LDA #$FF                  ; \ End upload.
CODE_15880E:        9F 02 08 7F   STA $7F0802,x             ; /
CODE_158812:        8A            TXA                       ; \ Amount of tiles transferred...
CODE_158813:        8F 00 08 7F   STA $7F0800               ; / Into $7F0800.
CODE_158817:        AD 4F 07      LDA $074F                 
CODE_15881A:        49 01         EOR #$01                  
CODE_15881C:        8D 4F 07      STA $074F                 
CODE_15881F:        6B            RTL                       

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

CODE_159400:        AD 33 05      LDA $0533
CODE_159403:        C9 0E         CMP #$0E                  
CODE_159405:        D0 0A         BNE CODE_159411           
CODE_159407:        AD 34 05      LDA $0534                 
CODE_15940A:        C9 03         CMP #$03                  
CODE_15940C:        D0 03         BNE CODE_159411           
CODE_15940E:        4C 65 9E      JMP CODE_159E65           

CODE_159411:        9C 42 05      STZ $0542                 
CODE_159414:        A9 FF         LDA #$FF                  
CODE_159416:        8D 56 07      STA $0756                 
CODE_159419:        64 09         STZ $09                   
CODE_15941B:        9C 57 07      STZ $0757                 
CODE_15941E:        B1 D9         LDA ($D9),y               
CODE_159420:        C9 FF         CMP #$FF                  
CODE_159422:        D0 0F         BNE CODE_159433           
CODE_159424:        AD 41 05      LDA $0541                 
CODE_159427:        1A            INC A                     
CODE_159428:        1A            INC A                     
CODE_159429:        8D 42 05      STA $0542                 
CODE_15942C:        64 0E         STZ $0E                   
CODE_15942E:        9C C8 02      STZ $02C8                 
CODE_159431:        80 46         BRA CODE_159479           

CODE_159433:        B1 D9         LDA ($D9),y               
CODE_159435:        29 F0         AND #$F0                  
CODE_159437:        F0 24         BEQ CODE_15945D           
CODE_159439:        C9 F0         CMP #$F0                  
CODE_15943B:        D0 24         BNE CODE_159461           
CODE_15943D:        9C C8 02      STZ $02C8                 
CODE_159440:        B1 D9         LDA ($D9),y               
CODE_159442:        29 0F         AND #$0F                  
CODE_159444:        84 0F         STY $0F                   
CODE_159446:        22 9F F6 12   JSL CODE_12F69F           
CODE_15944A:        A4 0F         LDY $0F                   
CODE_15944C:        B1 D9         LDA ($D9),y               
CODE_15944E:        29 0F         AND #$0F                  
CODE_159450:        C9 02         CMP #$02                  
CODE_159452:        90 25         BCC CODE_159479           
CODE_159454:        C9 06         CMP #$06                  
CODE_159456:        F0 05         BEQ CODE_15945D           
CODE_159458:        C9 05         CMP #$05                  
CODE_15945A:        D0 02         BNE CODE_15945E           
CODE_15945C:        C8            INY                       
CODE_15945D:        C8            INY                       
CODE_15945E:        C8            INY                       
CODE_15945F:        80 BA         BRA CODE_15941B           

CODE_159461:        18            CLC                       
CODE_159462:        65 09         ADC $09                   
CODE_159464:        90 04         BCC CODE_15946A           
CODE_159466:        69 0F         ADC #$0F                  
CODE_159468:        80 06         BRA CODE_159470           

CODE_15946A:        C9 F0         CMP #$F0                  
CODE_15946C:        D0 05         BNE CODE_159473           
CODE_15946E:        A9 00         LDA #$00                  
CODE_159470:        EE 42 05      INC $0542                 
CODE_159473:        85 09         STA $09                   
CODE_159475:        C8            INY                       
CODE_159476:        C8            INY                       
CODE_159477:        80 A2         BRA CODE_15941B           

CODE_159479:        A5 E5         LDA $E5                   
CODE_15947B:        1A            INC A                     
CODE_15947C:        C5 0E         CMP $0E                   
CODE_15947E:        90 09         BCC CODE_159489           
CODE_159480:        B1 D9         LDA ($D9),y               
CODE_159482:        C9 FF         CMP #$FF                  
CODE_159484:        F0 03         BEQ CODE_159489           
CODE_159486:        20 91 96      JSR CODE_159691           
CODE_159489:        20 EC 94      JSR CODE_1594EC           
CODE_15948C:        20 95 99      JSR CODE_159995           
CODE_15948F:        AD 64 07      LDA $0764                 
CODE_159492:        F0 06         BEQ CODE_15949A           
CODE_159494:        22 CE F7 12   JSL CODE_12F7CE           
CODE_159498:        80 0C         BRA CODE_1594A6           

CODE_15949A:        A5 EB         LDA $EB                   
CODE_15949C:        F0 05         BEQ CODE_1594A3           
CODE_15949E:        20 17 95      JSR CODE_159517           
CODE_1594A1:        80 03         BRA CODE_1594A6           

CODE_1594A3:        20 F1 99      JSR CODE_1599F1           
CODE_1594A6:        9C 57 07      STZ $0757                 
CODE_1594A9:        A5 EB         LDA $EB                   
CODE_1594AB:        F0 0E         BEQ CODE_1594BB           
CODE_1594AD:        E6 E5         INC $E5                   
CODE_1594AF:        A5 E5         LDA $E5                   
CODE_1594B1:        C9 10         CMP #$10                  
CODE_1594B3:        D0 0B         BNE CODE_1594C0           
CODE_1594B5:        E6 E9         INC $E9                   
CODE_1594B7:        64 E5         STZ $E5                   
CODE_1594B9:        80 05         BRA CODE_1594C0           

CODE_1594BB:        A9 10         LDA #$10                  
CODE_1594BD:        20 7D 96      JSR CODE_15967D           
CODE_1594C0:        A5 E9         LDA $E9                   
CODE_1594C2:        CD 42 05      CMP $0542                 
CODE_1594C5:        D0 C2         BNE CODE_159489           
CODE_1594C7:        A5 EB         LDA $EB                   
CODE_1594C9:        F0 08         BEQ CODE_1594D3           
CODE_1594CB:        A5 E5         LDA $E5                   
CODE_1594CD:        C5 0E         CMP $0E                   
CODE_1594CF:        90 A8         BCC CODE_159479           
CODE_1594D1:        B0 06         BCS CODE_1594D9                   
CODE_1594D3:        A5 E6         LDA $E6                   
CODE_1594D5:        C5 0E         CMP $0E                   
CODE_1594D7:        90 A0         BCC CODE_159479           
CODE_1594D9:        B1 D9         LDA ($D9),y               
CODE_1594DB:        C9 FF         CMP #$FF                  
CODE_1594DD:        F0 0C         BEQ CODE_1594EB           
CODE_1594DF:        C8            INY                       
CODE_1594E0:        B1 D9         LDA ($D9),y               
CODE_1594E2:        29 1F         AND #$1F                  
CODE_1594E4:        8D 43 05      STA $0543                 
CODE_1594E7:        C8            INY                       
CODE_1594E8:        4C 1B 94      JMP CODE_15941B           

CODE_1594EB:        6B            RTL                       

CODE_1594EC:        8C 13 07      STY $0713                 
CODE_1594EF:        A6 E9         LDX $E9                   
CODE_1594F1:        AC 34 05      LDY $0534                 
CODE_1594F4:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_1594F7:        18            CLC                       
CODE_1594F8:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_1594FB:        85 02         STA $02                   
CODE_1594FD:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_159500:        85 01         STA $01                   
CODE_159502:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_159505:        85 03         STA $03                   
CODE_159507:        A5 E6         LDA $E6                   
CODE_159509:        18            CLC                       
CODE_15950A:        65 E5         ADC $E5                   
CODE_15950C:        85 E7         STA $E7                   
CODE_15950E:        AC 13 07      LDY $0713                 
CODE_159511:        60            RTS                       

DATA_159512:        db $0F,$1E,$2D,$3C,$4B

CODE_159517:        84 04         STY $04                   
CODE_159519:        EE 56 07      INC $0756                 
CODE_15951C:        AD 43 05      LDA $0543                 
CODE_15951F:        0A            ASL A                     
CODE_159520:        AA            TAX                       
CODE_159521:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_159525:        85 C4         STA $C4                   
CODE_159527:        E8            INX                       
CODE_159528:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_15952C:        85 C5         STA $C5                   
CODE_15952E:        A9 15         LDA #$15                  
CODE_159530:        85 C6         STA $C6                   
CODE_159532:        AD C8 02      LDA $02C8                 
CODE_159535:        D0 16         BNE CODE_15954D           
CODE_159537:        AD 5A 07      LDA $075A                 
CODE_15953A:        F0 05         BEQ CODE_159541           
CODE_15953C:        9C 5A 07      STZ $075A                 
CODE_15953F:        80 36         BRA CODE_159577           

CODE_159541:        AD 57 07      LDA $0757                 
CODE_159544:        C9 01         CMP #$01                  
CODE_159546:        D0 19         BNE CODE_159561           
CODE_159548:        EE 5A 07      INC $075A                 
CODE_15954B:        80 14         BRA CODE_159561           

CODE_15954D:        AD 57 07      LDA $0757                 
CODE_159550:        F0 0F         BEQ CODE_159561           
CODE_159552:        C9 FF         CMP #$FF                  
CODE_159554:        F0 0B         BEQ CODE_159561           
CODE_159556:        C9 01         CMP #$01                  
CODE_159558:        F0 04         BEQ CODE_15955E           
CODE_15955A:        A2 04         LDX #$04                  
CODE_15955C:        80 09         BRA CODE_159567           

CODE_15955E:        EE 5A 07      INC $075A                 
CODE_159561:        AD 56 07      LDA $0756                 
CODE_159564:        29 03         AND #$03                  
CODE_159566:        AA            TAX                       
CODE_159567:        BF 12 95 15   LDA.l DATA_159512,x             
CODE_15956B:        C2 20         REP #$20                  
CODE_15956D:        29 FF 00      AND #$00FF                
CODE_159570:        18            CLC                       
CODE_159571:        65 C4         ADC $C4                   
CODE_159573:        85 C4         STA $C4                   
CODE_159575:        E2 20         SEP #$20                  
CODE_159577:        A4 E7         LDY $E7                   
CODE_159579:        20 8C 95      JSR CODE_15958C           
CODE_15957C:        A4 E7         LDY $E7                   
CODE_15957E:        20 B7 97      JSR CODE_1597B7           
CODE_159581:        AD C8 02      LDA $02C8                 
CODE_159584:        D0 03         BNE CODE_159589           
CODE_159586:        EE C8 02      INC $02C8                 
CODE_159589:        A4 04         LDY $04                   
CODE_15958B:        60            RTS                       

CODE_15958C:        9C 13 07      STZ $0713                 
CODE_15958F:        A5 C4         LDA $C4                   
CODE_159591:        8D 16 07      STA $0716                 
CODE_159594:        A5 C5         LDA $C5                   
CODE_159596:        8D 17 07      STA $0717                 
CODE_159599:        AD 57 07      LDA $0757                 
CODE_15959C:        29 F0         AND #$F0                  
CODE_15959E:        D0 0F         BNE CODE_1595AF           
CODE_1595A0:        AD 5B 07      LDA $075B                 
CODE_1595A3:        29 0F         AND #$0F                  
CODE_1595A5:        F0 1B         BEQ CODE_1595C2           
CODE_1595A7:        A9 0E         LDA #$0E                  
CODE_1595A9:        38            SEC                       
CODE_1595AA:        ED 5C 07      SBC $075C                 
CODE_1595AD:        80 0D         BRA CODE_1595BC           

CODE_1595AF:        AD 5B 07      LDA $075B                 
CODE_1595B2:        29 0F         AND #$0F                  
CODE_1595B4:        D0 F1         BNE CODE_1595A7           
CODE_1595B6:        A9 0E         LDA #$0E                  
CODE_1595B8:        38            SEC                       
CODE_1595B9:        ED 58 07      SBC $0758                 
CODE_1595BC:        8D 15 07      STA $0715                 
CODE_1595BF:        9C 57 07      STZ $0757                 
CODE_1595C2:        AD 15 07      LDA $0715                 
CODE_1595C5:        F0 37         BEQ CODE_1595FE           
CODE_1595C7:        CD 13 07      CMP $0713                 
CODE_1595CA:        10 32         BPL CODE_1595FE           
CODE_1595CC:        A5 C4         LDA $C4                   
CODE_1595CE:        8D 16 07      STA $0716                 
CODE_1595D1:        A5 C5         LDA $C5                   
CODE_1595D3:        8D 17 07      STA $0717                 
CODE_1595D6:        AD 43 05      LDA $0543                 
CODE_1595D9:        0A            ASL A                     
CODE_1595DA:        AA            TAX                       
CODE_1595DB:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_1595DF:        85 C4         STA $C4                   
CODE_1595E1:        E8            INX                       
CODE_1595E2:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_1595E6:        85 C5         STA $C5                   
CODE_1595E8:        AD 56 07      LDA $0756                 
CODE_1595EB:        29 03         AND #$03                  
CODE_1595ED:        AA            TAX                       
CODE_1595EE:        BF 12 95 15   LDA.l DATA_159512,x             
CODE_1595F2:        C2 20         REP #$20                  
CODE_1595F4:        29 FF 00      AND #$00FF                
CODE_1595F7:        18            CLC                       
CODE_1595F8:        65 C4         ADC $C4                   
CODE_1595FA:        85 C4         STA $C4                   
CODE_1595FC:        E2 20         SEP #$20                  
CODE_1595FE:        8C 14 07      STY $0714                 
CODE_159601:        AC 13 07      LDY $0713                 
CODE_159604:        B7 C4         LDA [$C4],y               
CODE_159606:        AC 14 07      LDY $0714                 
CODE_159609:        97 01         STA [$01],y               
CODE_15960B:        C9 40         CMP #$40                  
CODE_15960D:        F0 16         BEQ CODE_159625           
CODE_15960F:        C2 30         REP #$30                  
CODE_159611:        98            TYA                       
CODE_159612:        29 FF 00      AND #$00FF                
CODE_159615:        18            CLC                       
CODE_159616:        69 00 70      ADC #$7000                
CODE_159619:        A8            TAY                       
CODE_15961A:        E2 20         SEP #$20                  
CODE_15961C:        A9 01         LDA #$01                  
CODE_15961E:        97 01         STA [$01],y               
CODE_159620:        E2 10         SEP #$10                  
CODE_159622:        AC 14 07      LDY $0714                 
CODE_159625:        AD 16 07      LDA $0716                 
CODE_159628:        85 C4         STA $C4                   
CODE_15962A:        AD 17 07      LDA $0717                 
CODE_15962D:        85 C5         STA $C5                   
CODE_15962F:        98            TYA                       
CODE_159630:        18            CLC                       
CODE_159631:        69 10         ADC #$10                  
CODE_159633:        A8            TAY                       
CODE_159634:        EE 13 07      INC $0713                 
CODE_159637:        AD 13 07      LDA $0713                 
CODE_15963A:        C9 0F         CMP #$0F                  
CODE_15963C:        F0 03         BEQ CODE_159641           
CODE_15963E:        82 81 FF      BRL CODE_1595C2           
CODE_159641:        AD 57 07      LDA $0757                 
CODE_159644:        8D 5B 07      STA $075B                 
CODE_159647:        AD 58 07      LDA $0758                 
CODE_15964A:        8D 5C 07      STA $075C                 
CODE_15964D:        9C 15 07      STZ $0715                 
CODE_159650:        60            RTS                       

CODE_159651:        C8            INY                       
CODE_159652:        98            TYA                       
CODE_159653:        29 0F         AND #$0F                  
CODE_159655:        D0 11         BNE CODE_159668           
CODE_159657:        98            TYA                       
CODE_159658:        38            SEC                       
CODE_159659:        E9 10         SBC #$10                  
CODE_15965B:        A8            TAY                       
CODE_15965C:        86 0B         STX $0B                   
CODE_15965E:        A6 E9         LDX $E9                   
CODE_159660:        E8            INX                       
CODE_159661:        86 0D         STX $0D                   
CODE_159663:        20 F1 94      JSR CODE_1594F1           
CODE_159666:        A6 0B         LDX $0B                   
CODE_159668:        60            RTS                       

CODE_159669:        98            TYA                       
CODE_15966A:        18            CLC                       
CODE_15966B:        69 10         ADC #$10                  
CODE_15966D:        A8            TAY                       
CODE_15966E:        C9 F0         CMP #$F0                  
CODE_159670:        90 0A         BCC CODE_15967C           
CODE_159672:        A6 E9         LDX $E9                   
CODE_159674:        E8            INX                       
CODE_159675:        20 F1 94      JSR CODE_1594F1           
CODE_159678:        98            TYA                       
CODE_159679:        29 0F         AND #$0F                  
CODE_15967B:        A8            TAY                       
CODE_15967C:        60            RTS                       

CODE_15967D:        18            CLC                       
CODE_15967E:        65 E6         ADC $E6                   
CODE_159680:        90 04         BCC CODE_159686           
CODE_159682:        69 0F         ADC #$0F                  
CODE_159684:        80 06         BRA CODE_15968C           
CODE_159686:        C9 F0         CMP #$F0                  
CODE_159688:        D0 04         BNE CODE_15968E           
CODE_15968A:        A9 00         LDA #$00                  
CODE_15968C:        E6 E9         INC $E9                   
CODE_15968E:        85 E6         STA $E6                   
CODE_159690:        60            RTS                       

CODE_159691:        8C 12 07      STY $0712                 
CODE_159694:        C8            INY                       
CODE_159695:        B1 D9         LDA ($D9),y               
CODE_159697:        C9 FF         CMP #$FF                  
CODE_159699:        D0 03         BNE CODE_15969E           
CODE_15969B:        82 0F 01      BRL CODE_1597AD           

CODE_15969E:        29 1F         AND #$1F                  
CODE_1596A0:        0A            ASL A                     
CODE_1596A1:        AA            TAX                       
CODE_1596A2:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_1596A6:        85 C4         STA $C4                   
CODE_1596A8:        E8            INX                       
CODE_1596A9:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_1596AD:        85 C5         STA $C5                   
CODE_1596AF:        A9 15         LDA #$15                  
CODE_1596B1:        85 C6         STA $C6                   
CODE_1596B3:        9C 16 07      STZ $0716                 
CODE_1596B6:        9C 17 07      STZ $0717                 
CODE_1596B9:        9C 1A 07      STZ $071A                 
CODE_1596BC:        A0 00         LDY #$00                  
CODE_1596BE:        B7 C4         LDA [$C4],y               
CODE_1596C0:        C9 40         CMP #$40                  
CODE_1596C2:        F0 08         BEQ CODE_1596CC           
CODE_1596C4:        AE 1A 07      LDX $071A                 
CODE_1596C7:        FE 16 07      INC $0716,x               
CODE_1596CA:        80 12         BRA CODE_1596DE           

CODE_1596CC:        C0 00         CPY #$00                  
CODE_1596CE:        F0 08         BEQ CODE_1596D8           
CODE_1596D0:        88            DEY                       
CODE_1596D1:        B7 C4         LDA [$C4],y               
CODE_1596D3:        C9 40         CMP #$40                  
CODE_1596D5:        F0 06         BEQ CODE_1596DD           
CODE_1596D7:        C8            INY                       
CODE_1596D8:        EE 1A 07      INC $071A                 
CODE_1596DB:        80 01         BRA CODE_1596DE           

CODE_1596DD:        C8            INY                       
CODE_1596DE:        C8            INY                       
CODE_1596DF:        C0 0F         CPY #$0F                  
CODE_1596E1:        D0 DB         BNE CODE_1596BE           
CODE_1596E3:        AD 16 07      LDA $0716                 
CODE_1596E6:        C9 0F         CMP #$0F                  
CODE_1596E8:        D0 03         BNE CODE_1596ED           
CODE_1596EA:        8D 17 07      STA $0717                 
CODE_1596ED:        AD 43 05      LDA $0543                 
CODE_1596F0:        0A            ASL A                     
CODE_1596F1:        AA            TAX                       
CODE_1596F2:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_1596F6:        85 C4         STA $C4                   
CODE_1596F8:        E8            INX                       
CODE_1596F9:        BF 0E A9 15   LDA.l PNTR_15A90E,x             
CODE_1596FD:        85 C5         STA $C5                   
CODE_1596FF:        A9 15         LDA #$15                  
CODE_159701:        85 C6         STA $C6                   
CODE_159703:        9C 18 07      STZ $0718                 
CODE_159706:        9C 19 07      STZ $0719                 
CODE_159709:        9C 1A 07      STZ $071A                 
CODE_15970C:        A0 00         LDY #$00                  
CODE_15970E:        B7 C4         LDA [$C4],y               
CODE_159710:        C9 40         CMP #$40                  
CODE_159712:        F0 08         BEQ CODE_15971C           
CODE_159714:        AE 1A 07      LDX $071A                 
CODE_159717:        FE 18 07      INC $0718,x               
CODE_15971A:        80 12         BRA CODE_15972E           
CODE_15971C:        C0 00         CPY #$00                  
CODE_15971E:        F0 08         BEQ CODE_159728           
CODE_159720:        88            DEY                       
CODE_159721:        B7 C4         LDA [$C4],y               
CODE_159723:        C9 40         CMP #$40                  
CODE_159725:        F0 06         BEQ CODE_15972D           
CODE_159727:        C8            INY                       
CODE_159728:        EE 1A 07      INC $071A                 
CODE_15972B:        80 01         BRA CODE_15972E           

CODE_15972D:        C8            INY                       
CODE_15972E:        C8            INY                       
CODE_15972F:        C0 0F         CPY #$0F                  
CODE_159731:        D0 DB         BNE CODE_15970E           
CODE_159733:        AD 18 07      LDA $0718                 
CODE_159736:        C9 0F         CMP #$0F                  
CODE_159738:        D0 03         BNE CODE_15973D           
CODE_15973A:        8D 19 07      STA $0719                 
CODE_15973D:        AD 19 07      LDA $0719                 
CODE_159740:        CD 17 07      CMP $0717                 
CODE_159743:        F0 0F         BEQ CODE_159754           
CODE_159745:        30 1A         BMI CODE_159761           
CODE_159747:        A9 10         LDA #$10                  
CODE_159749:        8D 57 07      STA $0757                 
CODE_15974C:        AD 17 07      LDA $0717                 
CODE_15974F:        8D 58 07      STA $0758                 
CODE_159752:        80 18         BRA CODE_15976C           

CODE_159754:        A9 FF         LDA #$FF                  
CODE_159756:        8D 57 07      STA $0757                 
CODE_159759:        AD 17 07      LDA $0717                 
CODE_15975C:        8D 58 07      STA $0758                 
CODE_15975F:        80 0B         BRA CODE_15976C           

CODE_159761:        A9 01         LDA #$01                  
CODE_159763:        8D 57 07      STA $0757                 
CODE_159766:        AD 19 07      LDA $0719                 
CODE_159769:        8D 58 07      STA $0758                 
CODE_15976C:        AD 18 07      LDA $0718                 
CODE_15976F:        CD 16 07      CMP $0716                 
CODE_159772:        F0 14         BEQ CODE_159788           
CODE_159774:        30 21         BMI CODE_159797           
CODE_159776:        AD 16 07      LDA $0716                 
CODE_159779:        F0 32         BEQ CODE_1597AD           
CODE_15977B:        A9 10         LDA #$10                  
CODE_15977D:        8D 5D 07      STA $075D                 
CODE_159780:        AD 16 07      LDA $0716                 
CODE_159783:        8D 5E 07      STA $075E                 
CODE_159786:        80 25         BRA CODE_1597AD           

CODE_159788:        AD 18 07      LDA $0718                 
CODE_15978B:        F0 20         BEQ CODE_1597AD           
CODE_15978D:        8D 5E 07      STA $075E                 
CODE_159790:        A9 FF         LDA #$FF                  
CODE_159792:        8D 5D 07      STA $075D                 
CODE_159795:        80 16         BRA CODE_1597AD           

CODE_159797:        AD 18 07      LDA $0718                 
CODE_15979A:        F0 11         BEQ CODE_1597AD           
CODE_15979C:        A9 11         LDA #$11                  
CODE_15979E:        8D 5D 07      STA $075D                 
CODE_1597A1:        AD 18 07      LDA $0718                 
CODE_1597A4:        8D 5E 07      STA $075E                 
CODE_1597A7:        AD 16 07      LDA $0716                 
CODE_1597AA:        8D 63 07      STA $0763                 
CODE_1597AD:        AC 12 07      LDY $0712                 
CODE_1597B0:        60            RTS                       

DATA_1597B1:        db $05,$06

DATA_1597B3:        db $11,$12,$04,$10

CODE_1597B7:        9C 13 07      STZ $0713                 
CODE_1597BA:        AD 5D 07      LDA $075D                 
CODE_1597BD:        29 F0         AND #$F0                  
CODE_1597BF:        D0 0A         BNE CODE_1597CB           
CODE_1597C1:        AD 5F 07      LDA $075F                 
CODE_1597C4:        29 0F         AND #$0F                  
CODE_1597C6:        D0 0E         BNE CODE_1597D6           
CODE_1597C8:        82 B7 00      BRL CODE_159882           

CODE_1597CB:        AD 5E 07      LDA $075E                 
CODE_1597CE:        8D 15 07      STA $0715                 
CODE_1597D1:        9C 61 07      STZ $0761                 
CODE_1597D4:        80 0D         BRA CODE_1597E3           

CODE_1597D6:        AD 60 07      LDA $0760                 
CODE_1597D9:        8D 15 07      STA $0715                 
CODE_1597DC:        A9 01         LDA #$01                  
CODE_1597DE:        8D 61 07      STA $0761                 
CODE_1597E1:        80 39         BRA CODE_15981C           

CODE_1597E3:        98            TYA                       
CODE_1597E4:        29 10         AND #$10                  
CODE_1597E6:        D0 1A         BNE CODE_159802           
CODE_1597E8:        B7 01         LDA [$01],y               
CODE_1597EA:        C9 07         CMP #$07                  
CODE_1597EC:        D0 07         BNE CODE_1597F5           
CODE_1597EE:        AD 56 07      LDA $0756                 
CODE_1597F1:        29 01         AND #$01                  
CODE_1597F3:        80 60         BRA CODE_159855           

CODE_1597F5:        C9 13         CMP #$13                  
CODE_1597F7:        D0 6A         BNE CODE_159863           
CODE_1597F9:        AD 56 07      LDA $0756                 
CODE_1597FC:        29 01         AND #$01                  
CODE_1597FE:        49 01         EOR #$01                  
CODE_159800:        80 53         BRA CODE_159855           

CODE_159802:        B7 01         LDA [$01],y               
CODE_159804:        C9 07         CMP #$07                  
CODE_159806:        D0 09         BNE CODE_159811           
CODE_159808:        AD 56 07      LDA $0756                 
CODE_15980B:        29 01         AND #$01                  
CODE_15980D:        49 01         EOR #$01                  
CODE_15980F:        80 4B         BRA CODE_15985C           

CODE_159811:        C9 13         CMP #$13                  
CODE_159813:        D0 4E         BNE CODE_159863           
CODE_159815:        AD 56 07      LDA $0756                 
CODE_159818:        29 01         AND #$01                  
CODE_15981A:        80 40         BRA CODE_15985C           
CODE_15981C:        98            TYA                       
CODE_15981D:        29 10         AND #$10                  
CODE_15981F:        D0 1A         BNE CODE_15983B           
CODE_159821:        B7 01         LDA [$01],y               
CODE_159823:        C9 04         CMP #$04                  
CODE_159825:        D0 07         BNE CODE_15982E           
CODE_159827:        AD 56 07      LDA $0756                 
CODE_15982A:        29 01         AND #$01                  
CODE_15982C:        80 27         BRA CODE_159855           

CODE_15982E:        C9 10         CMP #$10                  
CODE_159830:        D0 31         BNE CODE_159863           
CODE_159832:        AD 56 07      LDA $0756                 
CODE_159835:        29 01         AND #$01                  
CODE_159837:        49 01         EOR #$01                  
CODE_159839:        80 1A         BRA CODE_159855           

CODE_15983B:        B7 01         LDA [$01],y               
CODE_15983D:        C9 04         CMP #$04                  
CODE_15983F:        D0 09         BNE CODE_15984A           
CODE_159841:        AD 56 07      LDA $0756                 
CODE_159844:        29 01         AND #$01                  
CODE_159846:        49 01         EOR #$01                  
CODE_159848:        80 12         BRA CODE_15985C           

CODE_15984A:        C9 10         CMP #$10                  
CODE_15984C:        D0 15         BNE CODE_159863           
CODE_15984E:        AD 56 07      LDA $0756                 
CODE_159851:        29 01         AND #$01                  
CODE_159853:        80 07         BRA CODE_15985C           

CODE_159855:        AA            TAX                       
CODE_159856:        BF B1 97 15   LDA.l DATA_1597B1,x             
CODE_15985A:        80 05         BRA CODE_159861           

CODE_15985C:        AA            TAX                       
CODE_15985D:        BF B3 97 15   LDA.l DATA_1597B3,x             
CODE_159861:        97 01         STA [$01],y               
CODE_159863:        A5 EB         LDA $EB                   
CODE_159865:        D0 03         BNE CODE_15986A           
CODE_159867:        C8            INY                       
CODE_159868:        80 05         BRA CODE_15986F           
CODE_15986A:        98            TYA                       
CODE_15986B:        18            CLC                       
CODE_15986C:        69 10         ADC #$10                  
CODE_15986E:        A8            TAY                       
CODE_15986F:        EE 13 07      INC $0713                 
CODE_159872:        AD 13 07      LDA $0713                 
CODE_159875:        CD 15 07      CMP $0715                 
CODE_159878:        10 08         BPL CODE_159882           
CODE_15987A:        AD 61 07      LDA $0761                 
CODE_15987D:        D0 9D         BNE CODE_15981C           
CODE_15987F:        82 61 FF      BRL CODE_1597E3           
CODE_159882:        AD 5D 07      LDA $075D                 
CODE_159885:        8D 5F 07      STA $075F                 
CODE_159888:        AD 5E 07      LDA $075E                 
CODE_15988B:        8D 60 07      STA $0760                 
CODE_15988E:        9C 5D 07      STZ $075D                 
CODE_159891:        9C 15 07      STZ $0715                 
CODE_159894:        60            RTS                       

CODE_159895:        8C 12 07      STY $0712                 
CODE_159898:        20 29 99      JSR CODE_159929           
CODE_15989B:        AD 13 07      LDA $0713                 
CODE_15989E:        F0 3E         BEQ CODE_1598DE           
CODE_1598A0:        B7 01         LDA [$01],y               
CODE_1598A2:        C9 01         CMP #$01                  
CODE_1598A4:        F0 1E         BEQ CODE_1598C4           
CODE_1598A6:        C9 02         CMP #$02                  
CODE_1598A8:        F0 1A         BEQ CODE_1598C4           
CODE_1598AA:        C9 05         CMP #$05                  
CODE_1598AC:        F0 1A         BEQ CODE_1598C8           
CODE_1598AE:        C9 06         CMP #$06                  
CODE_1598B0:        F0 16         BEQ CODE_1598C8           
CODE_1598B2:        C9 11         CMP #$11                  
CODE_1598B4:        F0 12         BEQ CODE_1598C8           
CODE_1598B6:        C9 12         CMP #$12                  
CODE_1598B8:        F0 0E         BEQ CODE_1598C8           
CODE_1598BA:        C9 15         CMP #$15                  
CODE_1598BC:        F0 19         BEQ CODE_1598D7           
CODE_1598BE:        C9 16         CMP #$16                  
CODE_1598C0:        F0 15         BEQ CODE_1598D7           
CODE_1598C2:        80 1A         BRA CODE_1598DE           

CODE_1598C4:        A9 03         LDA #$03                  
CODE_1598C6:        80 11         BRA CODE_1598D9           

CODE_1598C8:        AD 12 07      LDA $0712                 
CODE_1598CB:        29 10         AND #$10                  
CODE_1598CD:        D0 04         BNE CODE_1598D3           
CODE_1598CF:        A9 07         LDA #$07                  
CODE_1598D1:        80 06         BRA CODE_1598D9           

CODE_1598D3:        A9 13         LDA #$13                  
CODE_1598D5:        80 02         BRA CODE_1598D9           

CODE_1598D7:        A9 17         LDA #$17                  
CODE_1598D9:        AC 12 07      LDY $0712                 
CODE_1598DC:        97 01         STA [$01],y               
CODE_1598DE:        6B            RTL                       

CODE_1598DF:        8C 12 07      STY $0712                 
CODE_1598E2:        20 29 99      JSR CODE_159929           
CODE_1598E5:        AD 13 07      LDA $0713                 
CODE_1598E8:        F0 3E         BEQ CODE_159928           
CODE_1598EA:        B7 01         LDA [$01],y               
CODE_1598EC:        C9 01         CMP #$01                  
CODE_1598EE:        F0 1E         BEQ CODE_15990E           
CODE_1598F0:        C9 02         CMP #$02                  
CODE_1598F2:        F0 1A         BEQ CODE_15990E           
CODE_1598F4:        C9 05         CMP #$05                  
CODE_1598F6:        F0 1A         BEQ CODE_159912           
CODE_1598F8:        C9 06         CMP #$06                  
CODE_1598FA:        F0 16         BEQ CODE_159912           
CODE_1598FC:        C9 11         CMP #$11                  
CODE_1598FE:        F0 12         BEQ CODE_159912           
CODE_159900:        C9 12         CMP #$12                  
CODE_159902:        F0 0E         BEQ CODE_159912           
CODE_159904:        C9 15         CMP #$15                  
CODE_159906:        F0 19         BEQ CODE_159921           
CODE_159908:        C9 16         CMP #$16                  
CODE_15990A:        F0 15         BEQ CODE_159921           
CODE_15990C:        80 1A         BRA CODE_159928           

CODE_15990E:        A9 00         LDA #$00                  
CODE_159910:        80 11         BRA CODE_159923           

CODE_159912:        AD 12 07      LDA $0712                 
CODE_159915:        29 10         AND #$10                  
CODE_159917:        D0 04         BNE CODE_15991D           
CODE_159919:        A9 04         LDA #$04                  
CODE_15991B:        80 06         BRA CODE_159923           
CODE_15991D:        A9 10         LDA #$10                  
CODE_15991F:        80 02         BRA CODE_159923           
CODE_159921:        A9 14         LDA #$14                  
CODE_159923:        AC 12 07      LDY $0712                 
CODE_159926:        97 01         STA [$01],y               
CODE_159928:        6B            RTL                       

CODE_159929:        C2 30         REP #$30                  
CODE_15992B:        98            TYA                       
CODE_15992C:        29 FF 00      AND #$00FF                
CODE_15992F:        18            CLC                       
CODE_159930:        69 00 70      ADC #$7000                
CODE_159933:        A8            TAY                       
CODE_159934:        E2 20         SEP #$20                  
CODE_159936:        B7 01         LDA [$01],y               
CODE_159938:        8D 13 07      STA $0713                 
CODE_15993B:        E2 10         SEP #$10                  
CODE_15993D:        60            RTS                       

CODE_15993E:        AD 33 05      LDA $0533                 
CODE_159941:        0A            ASL A                     
CODE_159942:        AA            TAX                       
CODE_159943:        BF F8 B3 15   LDA.l PNTR_15B3F8,x             
CODE_159947:        85 01         STA $01                   
CODE_159949:        E8            INX                       
CODE_15994A:        BF F8 B3 15   LDA.l PNTR_15B3F8,x             
CODE_15994E:        85 02         STA $02                   
CODE_159950:        A9 15         LDA #$15                  
CODE_159952:        85 03         STA $03                   
CODE_159954:        A9 7E         LDA #$7E                  
CODE_159956:        85 0F         STA $0F                   
CODE_159958:        C2 10         REP #$10                  
CODE_15995A:        A0 00 00      LDY #$0000                
CODE_15995D:        C2 30         REP #$30                  
CODE_15995F:        B7 01         LDA [$01],y               
CODE_159961:        C9 FF FF      CMP #$FFFF                
CODE_159964:        F0 2C         BEQ CODE_159992           
CODE_159966:        29 00 FF      AND #$FF00                
CODE_159969:        C9 00 FE      CMP #$FE00                
CODE_15996C:        D0 0A         BNE CODE_159978           
CODE_15996E:        B7 01         LDA [$01],y               
CODE_159970:        29 FF 00      AND #$00FF                
CODE_159973:        8D 21 07      STA $0721                 
CODE_159976:        C8            INY                       
CODE_159977:        C8            INY                       
CODE_159978:        B7 01         LDA [$01],y               
CODE_15997A:        85 0D         STA $0D                   
CODE_15997C:        E2 20         SEP #$20                  
CODE_15997E:        AD 21 07      LDA $0721                 
CODE_159981:        87 0D         STA [$0D]                 
CODE_159983:        A5 0E         LDA $0E                   
CODE_159985:        18            CLC                       
CODE_159986:        69 70         ADC #$70                  
CODE_159988:        85 0E         STA $0E                   
CODE_15998A:        A9 01         LDA #$01                  
CODE_15998C:        87 0D         STA [$0D]                 
CODE_15998E:        C8            INY                       
CODE_15998F:        C8            INY                       
CODE_159990:        80 CB         BRA CODE_15995D           

CODE_159992:        E2 30         SEP #$30                  
CODE_159994:        6B            RTL                       

CODE_159995:        8C 12 07      STY $0712                 
CODE_159998:        A5 01         LDA $01                   
CODE_15999A:        8D 13 07      STA $0713                 
CODE_15999D:        A5 02         LDA $02                   
CODE_15999F:        8D 14 07      STA $0714                 
CODE_1599A2:        A5 03         LDA $03                   
CODE_1599A4:        8D 15 07      STA $0715                 
CODE_1599A7:        9C 64 07      STZ $0764                 
CODE_1599AA:        AD 33 05      LDA $0533                 
CODE_1599AD:        0A            ASL A                     
CODE_1599AE:        AA            TAX                       
CODE_1599AF:        BF A8 B3 15   LDA.l PNTR_15B3A8,x             
CODE_1599B3:        85 01         STA $01                   
CODE_1599B5:        E8            INX                       
CODE_1599B6:        BF A8 B3 15   LDA.l PNTR_15B3A8,x             
CODE_1599BA:        85 02         STA $02                   
CODE_1599BC:        A9 15         LDA #$15                  
CODE_1599BE:        85 03         STA $03                   
CODE_1599C0:        A0 00         LDY #$00                  
CODE_1599C2:        B7 01         LDA [$01],y               
CODE_1599C4:        C9 FF         CMP #$FF                  
CODE_1599C6:        F0 16         BEQ CODE_1599DE           
CODE_1599C8:        CD 34 05      CMP $0534                 
CODE_1599CB:        D0 0D         BNE CODE_1599DA           
CODE_1599CD:        C8            INY                       
CODE_1599CE:        B7 01         LDA [$01],y               
CODE_1599D0:        CD 43 05      CMP $0543                 
CODE_1599D3:        D0 06         BNE CODE_1599DB           
CODE_1599D5:        EE 64 07      INC $0764                 
CODE_1599D8:        80 04         BRA CODE_1599DE           

CODE_1599DA:        C8            INY                       
CODE_1599DB:        C8            INY                       
CODE_1599DC:        80 E4         BRA CODE_1599C2           

CODE_1599DE:        AC 12 07      LDY $0712                 
CODE_1599E1:        AD 13 07      LDA $0713                 
CODE_1599E4:        85 01         STA $01                   
CODE_1599E6:        AD 14 07      LDA $0714                 
CODE_1599E9:        85 02         STA $02                   
CODE_1599EB:        AD 15 07      LDA $0715                 
CODE_1599EE:        85 03         STA $03                   
CODE_1599F0:        60            RTS                       

CODE_1599F1:        84 04         STY $04                   
CODE_1599F3:        EE 56 07      INC $0756                 
CODE_1599F6:        AD 33 05      LDA $0533                 
CODE_1599F9:        C9 0D         CMP #$0D                  
CODE_1599FB:        D0 1B         BNE CODE_159A18           
CODE_1599FD:        AD 34 05      LDA $0534                 
CODE_159A00:        C9 03         CMP #$03                  
CODE_159A02:        D0 14         BNE CODE_159A18           
CODE_159A04:        A5 E9         LDA $E9                   
CODE_159A06:        C9 01         CMP #$01                  
CODE_159A08:        D0 04         BNE CODE_159A0E           
CODE_159A0A:        A9 1F         LDA #$1F                  
CODE_159A0C:        80 0D         BRA CODE_159A1B           

CODE_159A0E:        A5 E9         LDA $E9                   
CODE_159A10:        C9 02         CMP #$02                  
CODE_159A12:        D0 04         BNE CODE_159A18           
CODE_159A14:        A9 20         LDA #$20                  
CODE_159A16:        80 03         BRA CODE_159A1B           

CODE_159A18:        AD 43 05      LDA $0543                 
CODE_159A1B:        0A            ASL A                     
CODE_159A1C:        AA            TAX                       
CODE_159A1D:        BF 06 B1 15   LDA.l PNTR_15B106,x             
CODE_159A21:        85 C4         STA $C4                   
CODE_159A23:        E8            INX                       
CODE_159A24:        BF 06 B1 15   LDA.l PNTR_15B106,x             
CODE_159A28:        85 C5         STA $C5                   
CODE_159A2A:        A9 15         LDA #$15                  
CODE_159A2C:        85 C6         STA $C6                   
CODE_159A2E:        AD 56 07      LDA $0756                 
CODE_159A31:        29 01         AND #$01                  
CODE_159A33:        0A            ASL A                     
CODE_159A34:        0A            ASL A                     
CODE_159A35:        0A            ASL A                     
CODE_159A36:        0A            ASL A                     
CODE_159A37:        C2 20         REP #$20                  
CODE_159A39:        29 FF 00      AND #$00FF                
CODE_159A3C:        18            CLC                       
CODE_159A3D:        65 C4         ADC $C4                   
CODE_159A3F:        85 C4         STA $C4                   
CODE_159A41:        E2 20         SEP #$20                  
CODE_159A43:        A4 E7         LDY $E7                   
CODE_159A45:        20 4B 9A      JSR CODE_159A4B           
CODE_159A48:        A4 04         LDY $04                   
CODE_159A4A:        60            RTS                       

CODE_159A4B:        9C 13 07      STZ $0713                 
CODE_159A4E:        8C 14 07      STY $0714                 
CODE_159A51:        AC 13 07      LDY $0713                 
CODE_159A54:        B7 C4         LDA [$C4],y               
CODE_159A56:        C9 9D         CMP #$9D                  
CODE_159A58:        D0 10         BNE CODE_159A6A           
CODE_159A5A:        AE 33 05      LDX $0533                 
CODE_159A5D:        E0 06         CPX #$06                  
CODE_159A5F:        D0 09         BNE CODE_159A6A           
CODE_159A61:        AE 34 05      LDX $0534                 
CODE_159A64:        E0 01         CPX #$01                  
CODE_159A66:        D0 02         BNE CODE_159A6A           
CODE_159A68:        A9 05         LDA #$05                  
CODE_159A6A:        AC 14 07      LDY $0714                 
CODE_159A6D:        97 01         STA [$01],y               
CODE_159A6F:        C9 40         CMP #$40                  
CODE_159A71:        D0 03         BNE CODE_159A76           
CODE_159A73:        4C F8 9A      JMP CODE_159AF8           

CODE_159A76:        C9 9D         CMP #$9D                  
CODE_159A78:        F0 7E         BEQ CODE_159AF8           
CODE_159A7A:        C9 05         CMP #$05                  
CODE_159A7C:        D0 36         BNE CODE_159AB4           
CODE_159A7E:        AD 43 05      LDA $0543                 
CODE_159A81:        C9 0C         CMP #$0C                  
CODE_159A83:        F0 73         BEQ CODE_159AF8           
CODE_159A85:        C9 0A         CMP #$0A                  
CODE_159A87:        D0 09         BNE CODE_159A92           
CODE_159A89:        98            TYA                       
CODE_159A8A:        29 0F         AND #$0F                  
CODE_159A8C:        C9 0F         CMP #$0F                  
CODE_159A8E:        D0 68         BNE CODE_159AF8           
CODE_159A90:        80 22         BRA CODE_159AB4           

CODE_159A92:        C9 11         CMP #$11                  
CODE_159A94:        D0 0D         BNE CODE_159AA3           
CODE_159A96:        98            TYA                       
CODE_159A97:        29 0F         AND #$0F                  
CODE_159A99:        C9 06         CMP #$06                  
CODE_159A9B:        30 48         BMI CODE_159AE5           
CODE_159A9D:        C9 0F         CMP #$0F                  
CODE_159A9F:        F0 44         BEQ CODE_159AE5           
CODE_159AA1:        80 55         BRA CODE_159AF8           

CODE_159AA3:        C9 0B         CMP #$0B                  
CODE_159AA5:        D0 3E         BNE CODE_159AE5           
CODE_159AA7:        98            TYA                       
CODE_159AA8:        29 0F         AND #$0F                  
CODE_159AAA:        C9 07         CMP #$07                  
CODE_159AAC:        F0 37         BEQ CODE_159AE5           
CODE_159AAE:        C9 0F         CMP #$0F                  
CODE_159AB0:        F0 33         BEQ CODE_159AE5           
CODE_159AB2:        80 44         BRA CODE_159AF8           

CODE_159AB4:        C9 06         CMP #$06                  
CODE_159AB6:        D0 2D         BNE CODE_159AE5           
CODE_159AB8:        AD 33 05      LDA $0533                 
CODE_159ABB:        C9 06         CMP #$06                  
CODE_159ABD:        D0 26         BNE CODE_159AE5           
CODE_159ABF:        A5 E9         LDA $E9                   
CODE_159AC1:        C9 09         CMP #$09                  
CODE_159AC3:        90 20         BCC CODE_159AE5           
CODE_159AC5:        D0 31         BNE CODE_159AF8           
CODE_159AC7:        98            TYA                       
CODE_159AC8:        29 F0         AND #$F0                  
CODE_159ACA:        C9 C0         CMP #$C0                  
CODE_159ACC:        D0 06         BNE CODE_159AD4           
CODE_159ACE:        A9 05         LDA #$05                  
CODE_159AD0:        97 01         STA [$01],y               
CODE_159AD2:        80 24         BRA CODE_159AF8           

CODE_159AD4:        C0 D0         CPY #$D0                  
CODE_159AD6:        90 0D         BCC CODE_159AE5           
CODE_159AD8:        98            TYA                       
CODE_159AD9:        29 0F         AND #$0F                  
CODE_159ADB:        F0 08         BEQ CODE_159AE5           
CODE_159ADD:        C9 06         CMP #$06                  
CODE_159ADF:        90 17         BCC CODE_159AF8           

CODE_159AE1:        C9 0A         CMP #$0A                  
CODE_159AE3:        B0 13         BCS CODE_159AF8                   
CODE_159AE5:        A5 02         LDA $02                   
CODE_159AE7:        8D 15 07      STA $0715                 
CODE_159AEA:        18            CLC                       
CODE_159AEB:        69 70         ADC #$70                  
CODE_159AED:        85 02         STA $02                   
CODE_159AEF:        A9 01         LDA #$01                  
CODE_159AF1:        97 01         STA [$01],y               
CODE_159AF3:        AD 15 07      LDA $0715                 
CODE_159AF6:        85 02         STA $02                   
CODE_159AF8:        C8            INY                       
CODE_159AF9:        98            TYA                       
CODE_159AFA:        29 0F         AND #$0F                  
CODE_159AFC:        8D 13 07      STA $0713                 
CODE_159AFF:        F0 03         BEQ CODE_159B04           
CODE_159B01:        4C 4E 9A      JMP CODE_159A4E           

CODE_159B04:        60            RTS                       

CODE_159B05:        A5 05         LDA $05                   
CODE_159B07:        8D 17 07      STA $0717                 
CODE_159B0A:        A5 06         LDA $06                   
CODE_159B0C:        8D 18 07      STA $0718                 
CODE_159B0F:        A0 00         LDY #$00                  
CODE_159B11:        AD 6B 07      LDA $076B                 
CODE_159B14:        0A            ASL A                     
CODE_159B15:        AA            TAX                       
CODE_159B16:        BF 40 C4 15   LDA.l PNTR_15C440,x             
CODE_159B1A:        85 05         STA $05                   
CODE_159B1C:        E8            INX                       
CODE_159B1D:        BF 40 C4 15   LDA.l PNTR_15C440,x             
CODE_159B21:        85 06         STA $06                   
CODE_159B23:        A9 15         LDA #$15                  
CODE_159B25:        85 07         STA $07                   
CODE_159B27:        B7 05         LDA [$05],y               
CODE_159B29:        C9 FF         CMP #$FF                  
CODE_159B2B:        F0 0B         BEQ CODE_159B38           
CODE_159B2D:        8D 6D 07      STA $076D                 
CODE_159B30:        5A            PHY                       
CODE_159B31:        20 43 9B      JSR CODE_159B43           
CODE_159B34:        7A            PLY                       
CODE_159B35:        C8            INY                       
CODE_159B36:        80 D9         BRA CODE_159B11           

CODE_159B38:        AD 17 07      LDA $0717                 
CODE_159B3B:        85 05         STA $05                   
CODE_159B3D:        AD 18 07      LDA $0718                 
CODE_159B40:        85 06         STA $06                   
CODE_159B42:        6B            RTL                       

CODE_159B43:        0A            ASL A                     
CODE_159B44:        AA            TAX                       
CODE_159B45:        BF 40 C1 15   LDA.l PNTR_15C140,x             
CODE_159B49:        85 05         STA $05                   
CODE_159B4B:        E8            INX                       
CODE_159B4C:        BF 40 C1 15   LDA.l PNTR_15C140,x             
CODE_159B50:        85 06         STA $06                   
CODE_159B52:        A9 15         LDA #$15                  
CODE_159B54:        85 07         STA $07                   
CODE_159B56:        A0 00         LDY #$00                  
CODE_159B58:        B7 05         LDA [$05],y               
CODE_159B5A:        85 E7         STA $E7                   
CODE_159B5C:        C8            INY                       
CODE_159B5D:        B7 05         LDA [$05],y               
CODE_159B5F:        29 F0         AND #$F0                  
CODE_159B61:        4A            LSR A                     
CODE_159B62:        4A            LSR A                     
CODE_159B63:        4A            LSR A                     
CODE_159B64:        4A            LSR A                     
CODE_159B65:        85 0E         STA $0E                   
CODE_159B67:        85 0D         STA $0D                   
CODE_159B69:        B7 05         LDA [$05],y               
CODE_159B6B:        29 0F         AND #$0F                  
CODE_159B6D:        85 0F         STA $0F                   
CODE_159B6F:        20 76 9B      JSR CODE_159B76           
CODE_159B72:        9C E4 02      STZ $02E4                 
CODE_159B75:        60            RTS                       

CODE_159B76:        A9 02         LDA #$02                  
CODE_159B78:        8D E3 02      STA $02E3                 
CODE_159B7B:        A5 E7         LDA $E7                   
CODE_159B7D:        8D E2 02      STA $02E2                 
CODE_159B80:        85 0C         STA $0C                   
CODE_159B82:        9C 6C 07      STZ $076C                 
CODE_159B85:        AC E2 02      LDY $02E2                 
CODE_159B88:        B7 C4         LDA [$C4],y               
CODE_159B8A:        C9 5B         CMP #$5B                  
CODE_159B8C:        F0 38         BEQ CODE_159BC6           
CODE_159B8E:        AC E3 02      LDY $02E3                 
CODE_159B91:        B7 05         LDA [$05],y               
CODE_159B93:        C9 40         CMP #$40                  
CODE_159B95:        F0 12         BEQ CODE_159BA9           
CODE_159B97:        C9 AB         CMP #$AB                  
CODE_159B99:        F0 0E         BEQ CODE_159BA9           
CODE_159B9B:        C9 9D         CMP #$9D                  
CODE_159B9D:        F0 0A         BEQ CODE_159BA9           
CODE_159B9F:        C9 9C         CMP #$9C                  
CODE_159BA1:        F0 06         BEQ CODE_159BA9           
CODE_159BA3:        18            CLC                       
CODE_159BA4:        69 2C         ADC #$2C                  
CODE_159BA6:        EE 6C 07      INC $076C                 
CODE_159BA9:        AC E2 02      LDY $02E2                 
CODE_159BAC:        97 C4         STA [$C4],y               
CODE_159BAE:        AE 6C 07      LDX $076C                 
CODE_159BB1:        F0 13         BEQ CODE_159BC6           
CODE_159BB3:        A5 C5         LDA $C5                   
CODE_159BB5:        8D 14 07      STA $0714                 
CODE_159BB8:        18            CLC                       
CODE_159BB9:        69 70         ADC #$70                  
CODE_159BBB:        85 C5         STA $C5                   
CODE_159BBD:        A9 01         LDA #$01                  
CODE_159BBF:        97 C4         STA [$C4],y               
CODE_159BC1:        AD 14 07      LDA $0714                 
CODE_159BC4:        85 C5         STA $C5                   
CODE_159BC6:        EE E3 02      INC $02E3                 
CODE_159BC9:        AC E2 02      LDY $02E2                 
CODE_159BCC:        20 EF 9B      JSR CODE_159BEF           
CODE_159BCF:        8C E2 02      STY $02E2                 
CODE_159BD2:        C6 0E         DEC $0E                   
CODE_159BD4:        A5 0E         LDA $0E                   
CODE_159BD6:        10 AA         BPL CODE_159B82           
CODE_159BD8:        C6 0F         DEC $0F                   
CODE_159BDA:        A5 0F         LDA $0F                   
CODE_159BDC:        30 10         BMI CODE_159BEE           
CODE_159BDE:        A4 0C         LDY $0C                   
CODE_159BE0:        20 04 9C      JSR CODE_159C04           
CODE_159BE3:        84 0C         STY $0C                   
CODE_159BE5:        8C E2 02      STY $02E2                 
CODE_159BE8:        A5 0D         LDA $0D                   
CODE_159BEA:        85 0E         STA $0E                   
CODE_159BEC:        80 94         BRA CODE_159B82           

CODE_159BEE:        60            RTS                       

CODE_159BEF:        98            TYA                       
CODE_159BF0:        18            CLC                       
CODE_159BF1:        69 10         ADC #$10                  
CODE_159BF3:        A8            TAY                       
CODE_159BF4:        C9 F0         CMP #$F0                  
CODE_159BF6:        90 0B         BCC CODE_159C03           
CODE_159BF8:        E6 E9         INC $E9                   
CODE_159BFA:        A6 E9         LDX $E9                   
CODE_159BFC:        20 2D 9C      JSR CODE_159C2D           
CODE_159BFF:        98            TYA                       
CODE_159C00:        29 0F         AND #$0F                  
CODE_159C02:        A8            TAY                       
CODE_159C03:        60            RTS                       

CODE_159C04:        C8            INY                       
CODE_159C05:        AD 28 06      LDA $0628                 
CODE_159C08:        F0 04         BEQ CODE_159C0E           
CODE_159C0A:        A2 0A         LDX #$0A                  
CODE_159C0C:        80 1B         BRA CODE_159C29           
CODE_159C0E:        AD 6D 07      LDA $076D                 
CODE_159C11:        C9 07         CMP #$07                  
CODE_159C13:        F0 12         BEQ CODE_159C27           
CODE_159C15:        C9 08         CMP #$08                  
CODE_159C17:        F0 0E         BEQ CODE_159C27           
CODE_159C19:        C6 E9         DEC $E9                   
CODE_159C1B:        A6 E9         LDX $E9                   
CODE_159C1D:        E0 FF         CPX #$FF                  
CODE_159C1F:        D0 08         BNE CODE_159C29           
CODE_159C21:        A2 00         LDX #$00                  
CODE_159C23:        86 E9         STX $E9                   
CODE_159C25:        80 02         BRA CODE_159C29           

CODE_159C27:        A2 01         LDX #$01                  
CODE_159C29:        20 2D 9C      JSR CODE_159C2D           
CODE_159C2C:        60            RTS                       

CODE_159C2D:        5A            PHY                       
CODE_159C2E:        AD 28 06      LDA $0628                 
CODE_159C31:        F0 04         BEQ CODE_159C37           
CODE_159C33:        A0 00         LDY #$00                  
CODE_159C35:        80 03         BRA CODE_159C3A           
CODE_159C37:        AC 34 05      LDY $0534                 
CODE_159C3A:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_159C3D:        18            CLC                       
CODE_159C3E:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_159C41:        85 C5         STA $C5                   
CODE_159C43:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_159C46:        85 C4         STA $C4                   
CODE_159C48:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_159C4B:        85 C6         STA $C6                   
CODE_159C4D:        7A            PLY                       
CODE_159C4E:        60            RTS                       

DATA_159C4F:        db $15,$16

DATA_159C51:        db $01,$02

CODE_159C53:        AD 33 05      LDA $0533                 
CODE_159C56:        C9 05         CMP #$05                  
CODE_159C58:        D0 2B         BNE CODE_159C85           
CODE_159C5A:        A9 11         LDA #$11                  
CODE_159C5C:        85 00         STA $00                   
CODE_159C5E:        A9 C1         LDA #$C1                  
CODE_159C60:        85 03         STA $03                   
CODE_159C62:        A9 6D         LDA #$6D                  
CODE_159C64:        85 01         STA $01                   
CODE_159C66:        85 04         STA $04                   
CODE_159C68:        A9 7E         LDA #$7E                  
CODE_159C6A:        85 02         STA $02                   
CODE_159C6C:        85 05         STA $05                   
CODE_159C6E:        A0 00         LDY #$00                  
CODE_159C70:        98            TYA                       
CODE_159C71:        29 01         AND #$01                  
CODE_159C73:        AA            TAX                       
CODE_159C74:        BF 4F 9C 15   LDA.l DATA_159C4F,x             
CODE_159C78:        97 00         STA [$00],y               
CODE_159C7A:        BF 51 9C 15   LDA.l DATA_159C51,x             
CODE_159C7E:        97 03         STA [$03],y               
CODE_159C80:        C8            INY                       
CODE_159C81:        C0 0E         CPY #$0E                  
CODE_159C83:        D0 EB         BNE CODE_159C70           
CODE_159C85:        6B            RTL                       

DATA_159C86:        db $F1,$F2,$F3,$F4,$EF,$F0

CODE_159C8C:        AD 33 05      LDA $0533
CODE_159C8F:        C9 13         CMP #$13
CODE_159C91:        D0 F2         BNE CODE_159C85
CODE_159C93:        AD 34 05      LDA $0534
CODE_159C96:        C9 05         CMP #$05                  
CODE_159C98:        D0 EB         BNE CODE_159C85           
CODE_159C9A:        9C 12 07      STZ $0712                 
CODE_159C9D:        9C 13 07      STZ $0713                 
CODE_159CA0:        9C 14 07      STZ $0714                 
CODE_159CA3:        A2 00         LDX #$00                  
CODE_159CA5:        20 2D 9C      JSR CODE_159C2D           
CODE_159CA8:        C2 20         REP #$20                  
CODE_159CAA:        AD 12 07      LDA $0712                 
CODE_159CAD:        29 FF 00      AND #$00FF                
CODE_159CB0:        0A            ASL A                     
CODE_159CB1:        0A            ASL A                     
CODE_159CB2:        0A            ASL A                     
CODE_159CB3:        0A            ASL A                     
CODE_159CB4:        18            CLC                       
CODE_159CB5:        65 C4         ADC $C4                   
CODE_159CB7:        85 C4         STA $C4                   
CODE_159CB9:        E2 20         SEP #$20                  
CODE_159CBB:        AD 41 05      LDA $0541                 
CODE_159CBE:        8D 15 07      STA $0715                 
CODE_159CC1:        AD 13 07      LDA $0713                 
CODE_159CC4:        8D 14 07      STA $0714                 
CODE_159CC7:        A0 00         LDY #$00                  
CODE_159CC9:        B7 C4         LDA [$C4],y               
CODE_159CCB:        C9 AA         CMP #$AA                  
CODE_159CCD:        F0 08         BEQ CODE_159CD7           
CODE_159CCF:        C9 DD         CMP #$DD                  
CODE_159CD1:        F0 04         BEQ CODE_159CD7           
CODE_159CD3:        C9 2D         CMP #$2D                  
CODE_159CD5:        D0 09         BNE CODE_159CE0           
CODE_159CD7:        AE 14 07      LDX $0714                 
CODE_159CDA:        BF 86 9C 15   LDA.l DATA_159C86,x             
CODE_159CDE:        97 C4         STA [$C4],y               
CODE_159CE0:        EE 14 07      INC $0714                 
CODE_159CE3:        AD 14 07      LDA $0714                 
CODE_159CE6:        C9 06         CMP #$06                  
CODE_159CE8:        D0 03         BNE CODE_159CED           
CODE_159CEA:        9C 14 07      STZ $0714                 
CODE_159CED:        C8            INY                       
CODE_159CEE:        C0 10         CPY #$10                  
CODE_159CF0:        D0 D7         BNE CODE_159CC9           
CODE_159CF2:        C2 20         REP #$20                  
CODE_159CF4:        A5 C4         LDA $C4                   
CODE_159CF6:        18            CLC                       
CODE_159CF7:        69 F0 00      ADC #$00F0                
CODE_159CFA:        85 C4         STA $C4                   
CODE_159CFC:        E2 20         SEP #$20                  
CODE_159CFE:        CE 15 07      DEC $0715                 
CODE_159D01:        10 C4         BPL CODE_159CC7           
CODE_159D03:        EE 13 07      INC $0713                 
CODE_159D06:        AD 13 07      LDA $0713                 
CODE_159D09:        C9 06         CMP #$06                  
CODE_159D0B:        D0 03         BNE CODE_159D10           
CODE_159D0D:        9C 13 07      STZ $0713                 
CODE_159D10:        EE 12 07      INC $0712                 
CODE_159D13:        AD 12 07      LDA $0712                 
CODE_159D16:        C9 0F         CMP #$0F                  
CODE_159D18:        D0 89         BNE CODE_159CA3           
CODE_159D1A:        6B            RTL                       

DATA_159D1B:        db $00,$01,$02,$03,$04,$05,$06,$07
                    db $08,$09,$0A,$0B,$10,$11,$12,$13
                    db $14,$15,$16,$17,$18,$19,$1A,$1B

DATA_159D33:        db $20,$21,$22,$23,$24,$25,$26,$27
                    db $28,$29,$2A,$2B,$20,$21,$22,$23
                    db $24,$25,$26,$27,$28,$29,$2A,$2B

CODE_159D4B:        8C 12 07      STY $0712                 
CODE_159D4E:        8E 15 07      STX $0715                 
CODE_159D51:        AD 0F 05      LDA $050F                 
CODE_159D54:        C9 0A         CMP #$0A                  
CODE_159D56:        D0 64         BNE CODE_159DBC           
CODE_159D58:        AD 34 05      LDA $0534                 
CODE_159D5B:        C9 02         CMP #$02                  
CODE_159D5D:        D0 07         BNE CODE_159D66           
CODE_159D5F:        98            TYA                       
CODE_159D60:        29 F0         AND #$F0                  
CODE_159D62:        C9 90         CMP #$90                  
CODE_159D64:        F0 56         BEQ CODE_159DBC           
CODE_159D66:        98            TYA                       
CODE_159D67:        18            CLC                       
CODE_159D68:        69 10         ADC #$10                  
CODE_159D6A:        A8            TAY                       
CODE_159D6B:        B7 01         LDA [$01],y               
CODE_159D6D:        C9 40         CMP #$40                  
CODE_159D6F:        F0 4B         BEQ CODE_159DBC           
CODE_159D71:        8D 16 07      STA $0716                 
CODE_159D74:        A5 01         LDA $01                   
CODE_159D76:        8D 13 07      STA $0713                 
CODE_159D79:        A5 02         LDA $02                   
CODE_159D7B:        8D 14 07      STA $0714                 
CODE_159D7E:        C2 20         REP #$20                  
CODE_159D80:        A5 01         LDA $01                   
CODE_159D82:        18            CLC                       
CODE_159D83:        69 00 70      ADC #$7000                
CODE_159D86:        85 01         STA $01                   
CODE_159D88:        E2 20         SEP #$20                  
CODE_159D8A:        B7 01         LDA [$01],y               
CODE_159D8C:        F0 24         BEQ CODE_159DB2           
CODE_159D8E:        AD 13 07      LDA $0713                 
CODE_159D91:        85 01         STA $01                   
CODE_159D93:        AD 14 07      LDA $0714                 
CODE_159D96:        85 02         STA $02                   
CODE_159D98:        AD 16 07      LDA $0716                 
CODE_159D9B:        38            SEC                       
CODE_159D9C:        E9 5C         SBC #$5C                  
CODE_159D9E:        A2 17         LDX #$17                  
CODE_159DA0:        DF 1B 9D 15   CMP.l DATA_159D1B,x             
CODE_159DA4:        F0 03         BEQ CODE_159DA9           
CODE_159DA6:        CA            DEX                       
CODE_159DA7:        10 F7         BPL CODE_159DA0           
CODE_159DA9:        BF 33 9D 15   LDA.l DATA_159D33,x             
CODE_159DAD:        18            CLC                       
CODE_159DAE:        69 5C         ADC #$5C                  
CODE_159DB0:        97 01         STA [$01],y               
CODE_159DB2:        AD 13 07      LDA $0713                 
CODE_159DB5:        85 01         STA $01                   
CODE_159DB7:        AD 14 07      LDA $0714                 
CODE_159DBA:        85 02         STA $02                   
CODE_159DBC:        AC 12 07      LDY $0712                 
CODE_159DBF:        AE 15 07      LDX $0715                 
CODE_159DC2:        6B            RTL                       

DATA_159DC3:        db $06,$05,$12,$11,$0A

DATA_159DC8:        db $01,$02

CODE_159DCA:        9C 14 07      STZ $0714                 
CODE_159DCD:        9C 16 07      STZ $0716                 
CODE_159DD0:        A6 E9         LDX $E9                   
CODE_159DD2:        20 48 9E      JSR CODE_159E48           
CODE_159DD5:        AD 0E 05      LDA $050E                 
CODE_159DD8:        85 07         STA $07                   
CODE_159DDA:        A4 E7         LDY $E7                   
CODE_159DDC:        A2 00         LDX #$00                  
CODE_159DDE:        98            TYA                       
CODE_159DDF:        29 10         AND #$10                  
CODE_159DE1:        F0 02         BEQ CODE_159DE5           
CODE_159DE3:        E8            INX                       
CODE_159DE4:        E8            INX                       
CODE_159DE5:        98            TYA                       
CODE_159DE6:        29 01         AND #$01                  
CODE_159DE8:        F0 01         BEQ CODE_159DEB           
CODE_159DEA:        E8            INX                       
CODE_159DEB:        AD 14 07      LDA $0714                 
CODE_159DEE:        F0 02         BEQ CODE_159DF2           
CODE_159DF0:        A2 04         LDX #$04                  
CODE_159DF2:        AD 16 07      LDA $0716                 
CODE_159DF5:        D0 10         BNE CODE_159E07           
CODE_159DF7:        B7 01         LDA [$01],y               
CODE_159DF9:        C9 40         CMP #$40                  
CODE_159DFB:        D0 0A         BNE CODE_159E07           
CODE_159DFD:        8A            TXA                       
CODE_159DFE:        29 01         AND #$01                  
CODE_159E00:        AA            TAX                       
CODE_159E01:        BF C8 9D 15   LDA.l DATA_159DC8,x             
CODE_159E05:        80 04         BRA CODE_159E0B           

CODE_159E07:        BF C3 9D 15   LDA.l DATA_159DC3,x             
CODE_159E0B:        97 01         STA [$01],y               
CODE_159E0D:        A5 02         LDA $02                   
CODE_159E0F:        8D 15 07      STA $0715                 
CODE_159E12:        18            CLC                       
CODE_159E13:        69 70         ADC #$70                  
CODE_159E15:        85 02         STA $02                   
CODE_159E17:        AD 14 07      LDA $0714                 
CODE_159E1A:        D0 04         BNE CODE_159E20           
CODE_159E1C:        A9 01         LDA #$01                  
CODE_159E1E:        80 02         BRA CODE_159E22           

CODE_159E20:        A9 00         LDA #$00                  
CODE_159E22:        97 01         STA [$01],y               
CODE_159E24:        AD 15 07      LDA $0715                 
CODE_159E27:        85 02         STA $02                   
CODE_159E29:        20 51 96      JSR CODE_159651           
CODE_159E2C:        C6 07         DEC $07                   
CODE_159E2E:        10 AC         BPL CODE_159DDC           
CODE_159E30:        A9 01         LDA #$01                  
CODE_159E32:        8D 16 07      STA $0716                 
CODE_159E35:        A5 E7         LDA $E7                   
CODE_159E37:        18            CLC                       
CODE_159E38:        69 10         ADC #$10                  
CODE_159E3A:        85 E7         STA $E7                   
CODE_159E3C:        C9 C0         CMP #$C0                  
CODE_159E3E:        90 90         BCC CODE_159DD0           
CODE_159E40:        EE 14 07      INC $0714                 
CODE_159E43:        C9 D0         CMP #$D0                  
CODE_159E45:        90 89         BCC CODE_159DD0           
CODE_159E47:        6B            RTL                       

CODE_159E48:        8C F5 02      STY $02F5                 
CODE_159E4B:        AC 34 05      LDY $0534                 
CODE_159E4E:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_159E51:        18            CLC                       
CODE_159E52:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_159E55:        85 02         STA $02                   
CODE_159E57:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_159E5A:        85 01         STA $01                   
CODE_159E5C:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_159E5F:        85 03         STA $03                   
CODE_159E61:        AC F5 02      LDY $02F5                 
CODE_159E64:        60            RTS                       

CODE_159E65:        64 E9         STZ $E9                   
CODE_159E67:        20 EC 94      JSR CODE_1594EC           
CODE_159E6A:        64 0F         STZ $0F                   
CODE_159E6C:        A6 0F         LDX $0F                   
CODE_159E6E:        BF CE C5 15   LDA.l DATA_15C5CE,x             
CODE_159E72:        C9 FF         CMP #$FF                  
CODE_159E74:        F0 26         BEQ CODE_159E9C           
CODE_159E76:        0A            ASL A                     
CODE_159E77:        AA            TAX                       
CODE_159E78:        BF 66 C4 15   LDA.l PNTR_15C466,x             
CODE_159E7C:        85 C4         STA $C4                   
CODE_159E7E:        E8            INX                       
CODE_159E7F:        BF 66 C4 15   LDA.l PNTR_15C466,x             
CODE_159E83:        85 C5         STA $C5                   
CODE_159E85:        A9 15         LDA #$15                  
CODE_159E87:        85 C6         STA $C6                   
CODE_159E89:        A6 0F         LDX $0F                   
CODE_159E8B:        E8            INX                       
CODE_159E8C:        BF CE C5 15   LDA.l DATA_15C5CE,x             
CODE_159E90:        3A            DEC A                     
CODE_159E91:        85 0E         STA $0E                   
CODE_159E93:        20 9D 9E      JSR CODE_159E9D           
CODE_159E96:        E6 0F         INC $0F                   
CODE_159E98:        E6 0F         INC $0F                   
CODE_159E9A:        80 D0         BRA CODE_159E6C           

CODE_159E9C:        6B            RTL                       

CODE_159E9D:        A0 00         LDY #$00                  
CODE_159E9F:        B7 C4         LDA [$C4],y               
CODE_159EA1:        97 01         STA [$01],y               
CODE_159EA3:        C8            INY                       
CODE_159EA4:        C0 10         CPY #$10                  
CODE_159EA6:        30 F7         BMI CODE_159E9F           
CODE_159EA8:        C2 20         REP #$20                  
CODE_159EAA:        A5 01         LDA $01                   
CODE_159EAC:        18            CLC                       
CODE_159EAD:        69 10 00      ADC #$0010                
CODE_159EB0:        85 01         STA $01                   
CODE_159EB2:        E2 20         SEP #$20                  
CODE_159EB4:        C6 0E         DEC $0E                   
CODE_159EB6:        10 E5         BPL CODE_159E9D           
CODE_159EB8:        60            RTS                       

CODE_159EB9:        AD 33 05      LDA $0533                 
CODE_159EBC:        C9 13         CMP #$13                  
CODE_159EBE:        F0 1D         BEQ CODE_159EDD           
CODE_159EC0:        C9 12         CMP #$12                  
CODE_159EC2:        D0 03         BNE CODE_159EC7           
CODE_159EC4:        4C C3 9F      JMP CODE_159FC3           

CODE_159EC7:        C9 01         CMP #$01                  
CODE_159EC9:        D0 03         BNE CODE_159ECE           
CODE_159ECB:        4C F2 9F      JMP CODE_159FF2           

CODE_159ECE:        C9 02         CMP #$02                  
CODE_159ED0:        D0 03         BNE CODE_159ED5           
CODE_159ED2:        4C 37 A0      JMP CODE_15A037           

CODE_159ED5:        C9 0D         CMP #$0D                  
CODE_159ED7:        D0 03         BNE CODE_159EDC           
CODE_159ED9:        4C 3F A0      JMP CODE_15A03F           

CODE_159EDC:        6B            RTL                       

CODE_159EDD:        64 0F         STZ $0F                   
CODE_159EDF:        A2 00         LDX #$00                  
CODE_159EE1:        BF 25 C6 15   LDA.l PNTR_15C625,x             
CODE_159EE5:        85 04         STA $04                   
CODE_159EE7:        E8            INX                       
CODE_159EE8:        BF 25 C6 15   LDA.l PNTR_15C625,x             
CODE_159EEC:        85 05         STA $05                   
CODE_159EEE:        E8            INX                       
CODE_159EEF:        BF 25 C6 15   LDA.l PNTR_15C625,x             
CODE_159EF3:        85 06         STA $06                   
CODE_159EF5:        A0 00         LDY #$00                  
CODE_159EF7:        B7 04         LDA [$04],y               
CODE_159EF9:        C9 FF         CMP #$FF                  
CODE_159EFB:        F0 63         BEQ CODE_159F60           
CODE_159EFD:        C9 01         CMP #$01                  
CODE_159EFF:        F0 18         BEQ CODE_159F19           
CODE_159F01:        C8            INY                       
CODE_159F02:        B7 04         LDA [$04],y               
CODE_159F04:        0A            ASL A                     
CODE_159F05:        AA            TAX                       
CODE_159F06:        BF 90 C8 15   LDA.l PNTR_15C890,x             
CODE_159F0A:        85 C4         STA $C4                   
CODE_159F0C:        E8            INX                       
CODE_159F0D:        BF 90 C8 15   LDA.l PNTR_15C890,x             
CODE_159F11:        85 C5         STA $C5                   
CODE_159F13:        A9 15         LDA #$15                  
CODE_159F15:        85 C6         STA $C6                   
CODE_159F17:        80 16         BRA CODE_159F2F           

CODE_159F19:        C8            INY                       
CODE_159F1A:        B7 04         LDA [$04],y               
CODE_159F1C:        0A            ASL A                     
CODE_159F1D:        AA            TAX                       
CODE_159F1E:        BF B4 C8 15   LDA.l PNTR_15C8B4,x             
CODE_159F22:        85 C4         STA $C4                   
CODE_159F24:        E8            INX                       
CODE_159F25:        BF B4 C8 15   LDA.l PNTR_15C8B4,x             
CODE_159F29:        85 C5         STA $C5                   
CODE_159F2B:        A9 15         LDA #$15                  
CODE_159F2D:        85 C6         STA $C6                   
CODE_159F2F:        C8            INY                       
CODE_159F30:        B7 04         LDA [$04],y               
CODE_159F32:        3A            DEC A                     
CODE_159F33:        8D 21 07      STA $0721                 
CODE_159F36:        C8            INY                       
CODE_159F37:        B7 04         LDA [$04],y               
CODE_159F39:        85 01         STA $01                   
CODE_159F3B:        C8            INY                       
CODE_159F3C:        B7 04         LDA [$04],y               
CODE_159F3E:        85 02         STA $02                   
CODE_159F40:        A9 7E         LDA #$7E                  
CODE_159F42:        85 03         STA $03                   
CODE_159F44:        A0 00         LDY #$00                  
CODE_159F46:        B7 04         LDA [$04],y               
CODE_159F48:        D0 05         BNE CODE_159F4F           
CODE_159F4A:        20 61 9F      JSR CODE_159F61           
CODE_159F4D:        80 03         BRA CODE_159F52           

CODE_159F4F:        20 88 9F      JSR CODE_159F88           
CODE_159F52:        C2 20         REP #$20                  
CODE_159F54:        A5 04         LDA $04                   
CODE_159F56:        18            CLC                       
CODE_159F57:        69 05 00      ADC #$0005                
CODE_159F5A:        85 04         STA $04                   
CODE_159F5C:        E2 20         SEP #$20                  
CODE_159F5E:        80 95         BRA CODE_159EF5           

CODE_159F60:        6B            RTL                       

CODE_159F61:        9C 12 07      STZ $0712                 
CODE_159F64:        AD 12 07      LDA $0712                 
CODE_159F67:        29 01         AND #$01                  
CODE_159F69:        A8            TAY                       
CODE_159F6A:        B7 C4         LDA [$C4],y               
CODE_159F6C:        87 01         STA [$01]                 
CODE_159F6E:        20 6B A0      JSR CODE_15A06B           
CODE_159F71:        CE 21 07      DEC $0721                 
CODE_159F74:        30 11         BMI CODE_159F87           
CODE_159F76:        EE 12 07      INC $0712                 
CODE_159F79:        C2 20         REP #$20                  
CODE_159F7B:        A5 01         LDA $01                   
CODE_159F7D:        18            CLC                       
CODE_159F7E:        69 10 00      ADC #$0010                
CODE_159F81:        85 01         STA $01                   
CODE_159F83:        E2 20         SEP #$20                  
CODE_159F85:        80 DD         BRA CODE_159F64           
CODE_159F87:        60            RTS                       

CODE_159F88:        9C 12 07      STZ $0712                 
CODE_159F8B:        AD 12 07      LDA $0712                 
CODE_159F8E:        29 01         AND #$01                  
CODE_159F90:        A8            TAY                       
CODE_159F91:        B7 C4         LDA [$C4],y               
CODE_159F93:        87 01         STA [$01]                 
CODE_159F95:        20 6B A0      JSR CODE_15A06B           
CODE_159F98:        CE 21 07      DEC $0721                 
CODE_159F9B:        30 23         BMI CODE_159FC0           
CODE_159F9D:        EE 12 07      INC $0712                 
CODE_159FA0:        A5 01         LDA $01                   
CODE_159FA2:        29 0F         AND #$0F                  
CODE_159FA4:        C9 0F         CMP #$0F                  
CODE_159FA6:        F0 04         BEQ CODE_159FAC           
CODE_159FA8:        E6 01         INC $01                   
CODE_159FAA:        80 DF         BRA CODE_159F8B           

CODE_159FAC:        A5 01         LDA $01                   
CODE_159FAE:        29 F0         AND #$F0                  
CODE_159FB0:        85 01         STA $01                   
CODE_159FB2:        C2 20         REP #$20                  
CODE_159FB4:        A5 01         LDA $01                   
CODE_159FB6:        18            CLC                       
CODE_159FB7:        69 F0 00      ADC #$00F0                
CODE_159FBA:        85 01         STA $01                   
CODE_159FBC:        E2 20         SEP #$20                  
CODE_159FBE:        80 CB         BRA CODE_159F8B           

CODE_159FC0:        60            RTS                       

DATA_159FC1:        db $07,$13
      
CODE_159FC3:        A9 20         LDA #$20                  
CODE_159FC5:        85 01         STA $01                   
CODE_159FC7:        A9 57         LDA #$57                  
CODE_159FC9:        85 02         STA $02                   
CODE_159FCB:        A9 7E         LDA #$7E                  
CODE_159FCD:        85 03         STA $03                   
CODE_159FCF:        9C 12 07      STZ $0712                 
CODE_159FD2:        AD 12 07      LDA $0712                 
CODE_159FD5:        29 01         AND #$01                  
CODE_159FD7:        AA            TAX                       
CODE_159FD8:        AD 12 07      LDA $0712                 
CODE_159FDB:        0A            ASL A                     
CODE_159FDC:        0A            ASL A                     
CODE_159FDD:        0A            ASL A                     
CODE_159FDE:        0A            ASL A                     
CODE_159FDF:        A8            TAY                       
CODE_159FE0:        BF C1 9F 15   LDA.l DATA_159FC1,x             
CODE_159FE4:        97 01         STA [$01],y               
CODE_159FE6:        EE 12 07      INC $0712                 
CODE_159FE9:        C0 A0         CPY #$A0                  
CODE_159FEB:        D0 E5         BNE CODE_159FD2           
CODE_159FED:        6B            RTL                       

DATA_159FEE:        db $11,$05

DATA_159FF0:        db $12,$06

CODE_159FF2:        9C 13 07      STZ $0713                 
CODE_159FF5:        A9 9F         LDA #$9F                  
CODE_159FF7:        85 01         STA $01                   
CODE_159FF9:        A9 26         LDA #$26                  
CODE_159FFB:        85 02         STA $02                   
CODE_159FFD:        A9 7E         LDA #$7E                  
CODE_159FFF:        85 03         STA $03                   
CODE_15A001:        9C 12 07      STZ $0712                 
CODE_15A004:        AD 12 07      LDA $0712                 
CODE_15A007:        29 01         AND #$01                  
CODE_15A009:        18            CLC                       
CODE_15A00A:        6D 13 07      ADC $0713                 
CODE_15A00D:        AA            TAX                       
CODE_15A00E:        AD 12 07      LDA $0712                 
CODE_15A011:        0A            ASL A                     
CODE_15A012:        0A            ASL A                     
CODE_15A013:        0A            ASL A                     
CODE_15A014:        0A            ASL A                     
CODE_15A015:        A8            TAY                       
CODE_15A016:        BF EE 9F 15   LDA.l DATA_159FEE,x             
CODE_15A01A:        97 01         STA [$01],y               
CODE_15A01C:        EE 12 07      INC $0712                 
CODE_15A01F:        C0 C0         CPY #$C0                  
CODE_15A021:        D0 E1         BNE CODE_15A004           
CODE_15A023:        AD 13 07      LDA $0713                 
CODE_15A026:        D0 0E         BNE CODE_15A036           
CODE_15A028:        64 01         STZ $01                   
CODE_15A02A:        A9 36         LDA #$36                  
CODE_15A02C:        85 02         STA $02                   
CODE_15A02E:        EE 13 07      INC $0713                 
CODE_15A031:        EE 13 07      INC $0713                 
CODE_15A034:        80 C7         BRA CODE_159FFD           

CODE_15A036:        6B            RTL                       

CODE_15A037:        64 01         STZ $01                   
CODE_15A039:        A9 20         LDA #$20                  
CODE_15A03B:        85 02         STA $02                   
CODE_15A03D:        80 08         BRA CODE_15A047           

CODE_15A03F:        A9 7F         LDA #$7F                  
CODE_15A041:        85 01         STA $01                   
CODE_15A043:        A9 33         LDA #$33                  
CODE_15A045:        85 02         STA $02                   
CODE_15A047:        A9 7E         LDA #$7E                  
CODE_15A049:        8D 03 00      STA $0003                 
CODE_15A04C:        9C 12 07      STZ $0712                 
CODE_15A04F:        AD 12 07      LDA $0712                 
CODE_15A052:        29 01         AND #$01                  
CODE_15A054:        AA            TAX                       
CODE_15A055:        AD 12 07      LDA $0712                 
CODE_15A058:        0A            ASL A                     
CODE_15A059:        0A            ASL A                     
CODE_15A05A:        0A            ASL A                     
CODE_15A05B:        0A            ASL A                     
CODE_15A05C:        A8            TAY                       
CODE_15A05D:        BF F0 9F 15   LDA.l DATA_159FF0,x             
CODE_15A061:        97 01         STA [$01],y               
CODE_15A063:        EE 12 07      INC $0712                 
CODE_15A066:        C0 A0         CPY #$A0                  
CODE_15A068:        D0 E5         BNE CODE_15A04F           
CODE_15A06A:        6B            RTL                       

CODE_15A06B:        A0 00         LDY #$00                  
CODE_15A06D:        8D 6E 07      STA $076E                 
CODE_15A070:        A5 02         LDA $02                   
CODE_15A072:        8D 6F 07      STA $076F                 
CODE_15A075:        18            CLC                       
CODE_15A076:        69 70         ADC #$70                  
CODE_15A078:        85 02         STA $02                   
CODE_15A07A:        A9 01         LDA #$01                  
CODE_15A07C:        97 01         STA [$01],y               
CODE_15A07E:        AD 6F 07      LDA $076F                 
CODE_15A081:        85 02         STA $02                   
CODE_15A083:        AD 6E 07      LDA $076E                 
CODE_15A086:        60            RTS                       

DATA_15A087:        db $04,$10,$14

DATA_15A08A:        db $06,$05,$15

DATA_15A08D:        db $12,$11,$16
               
CODE_15A090:        9C 19 07      STZ $0719                 
CODE_15A093:        A5 E7         LDA $E7              
CODE_15A095:        A8            TAY                 
CODE_15A096:        29 F0         AND #$F0                  
CODE_15A098:        C9 C0         CMP #$C0                  
CODE_15A09A:        F0 09         BEQ CODE_15A0A5           
CODE_15A09C:        29 10         AND #$10                  
CODE_15A09E:        4A            LSR A                     
CODE_15A09F:        4A            LSR A                     
CODE_15A0A0:        4A            LSR A                     
CODE_15A0A1:        4A            LSR A                     
CODE_15A0A2:        AA            TAX                       
CODE_15A0A3:        80 05         BRA CODE_15A0AA 
          
CODE_15A0A5:        EE 19 07      INC $0719                 
CODE_15A0A8:        A2 02         LDX #$02                  
CODE_15A0AA:        BF 87 A0 15   LDA.l DATA_15A087,x             
CODE_15A0AE:        97 01         STA [$01],y               
CODE_15A0B0:        20 6D A0      JSR CODE_15A06D           
CODE_15A0B3:        C8            INY                       
CODE_15A0B4:        AD 19 07      LDA $0719                 
CODE_15A0B7:        D0 06         BNE CODE_15A0BF           
CODE_15A0B9:        98            TYA                       
CODE_15A0BA:        29 01         AND #$01                  
CODE_15A0BC:        AA            TAX                       
CODE_15A0BD:        80 02         BRA CODE_15A0C1           

CODE_15A0BF:        A2 02         LDX #$02                  
CODE_15A0C1:        98            TYA                       
CODE_15A0C2:        29 10         AND #$10                  
CODE_15A0C4:        D0 06         BNE CODE_15A0CC           
CODE_15A0C6:        BF 8A A0 15   LDA.l DATA_15A08A,x             
CODE_15A0CA:        80 04         BRA CODE_15A0D0
           
CODE_15A0CC:        BF 8D A0 15   LDA.l DATA_15A08D,x             
CODE_15A0D0:        97 01         STA [$01],y               
CODE_15A0D2:        20 6D A0      JSR CODE_15A06D           
CODE_15A0D5:        C8            INY                       
CODE_15A0D6:        98            TYA                       
CODE_15A0D7:        29 0F         AND #$0F                  
CODE_15A0D9:        D0 D9         BNE CODE_15A0B4           
CODE_15A0DB:        AD 19 07      LDA $0719                 
CODE_15A0DE:        D0 09         BNE CODE_15A0E9           
CODE_15A0E0:        A5 E7         LDA $E7                   
CODE_15A0E2:        18            CLC                       
CODE_15A0E3:        69 10         ADC #$10                  
CODE_15A0E5:        85 E7         STA $E7                   
CODE_15A0E7:        80 AA         BRA CODE_15A093
           
CODE_15A0E9:        6B            RTL                       

DATA_15A0EA:        db $02,$05,$08,$0B,$0E,$11

DATA_15A0F0:        db $04,$06,$08,$07,$05,$06

DATA_15A0F6:        db $2C,$A9,$DC,$2C,$A9,$DC,$2C,$A9
                    db $DC,$2C,$A9,$DC,$2C,$A9,$DC

DATA_15A105:        db $BA,$BD,$BE,$BB,$BC,$BF,$BA,$BD
                    db $BE,$BB,$BC,$BF,$BA,$BD,$BE

DATA_15A114:        db $BB,$BC,$BF,$BA,$BD,$BE,$BB,$BC
                    db $BF,$BA,$BD,$BE,$BB,$BC,$BF

CODE_15A123:        A2 05         LDX #$05            
CODE_15A125:        AD 33 05      LDA $0533
CODE_15A128:        DF EA A0 15   CMP.l DATA_15A0EA,x             
CODE_15A12C:        F0 04         BEQ CODE_15A132           
CODE_15A12E:        CA            DEX                       
CODE_15A12F:        10 F7         BPL CODE_15A128           
CODE_15A131:        6B            RTL                       

CODE_15A132:        AD 34 05      LDA $0534                 
CODE_15A135:        DF F0 A0 15   CMP.l DATA_15A0F0,x             
CODE_15A139:        D0 F6         BNE CODE_15A131           
CODE_15A13B:        64 E9         STZ $E9                   
CODE_15A13D:        A6 E9         LDX $E9                   
CODE_15A13F:        20 77 A1      JSR CODE_15A177           
CODE_15A142:        64 E7         STZ $E7                   
CODE_15A144:        A5 E7         LDA $E7                   
CODE_15A146:        A8            TAY                       
CODE_15A147:        4A            LSR A                     
CODE_15A148:        4A            LSR A                     
CODE_15A149:        4A            LSR A                     
CODE_15A14A:        4A            LSR A                     
CODE_15A14B:        AA            TAX                       
CODE_15A14C:        B7 01         LDA [$01],y               
CODE_15A14E:        DF F6 A0 15   CMP.l DATA_15A0F6,x             
CODE_15A152:        D0 12         BNE CODE_15A166           
CODE_15A154:        A5 E7         LDA $E7                   
CODE_15A156:        29 01         AND #$01                  
CODE_15A158:        D0 06         BNE CODE_15A160           
CODE_15A15A:        BF 05 A1 15   LDA.l DATA_15A105,x             
CODE_15A15E:        80 04         BRA CODE_15A164           

CODE_15A160:        BF 14 A1 15   LDA.l DATA_15A114,x             
CODE_15A164:        97 01         STA [$01],y               
CODE_15A166:        E6 E7         INC $E7                   
CODE_15A168:        A5 E7         LDA $E7                   
CODE_15A16A:        C9 F0         CMP #$F0                  
CODE_15A16C:        D0 D8         BNE CODE_15A146           
CODE_15A16E:        A5 E9         LDA $E9                   
CODE_15A170:        D0 04         BNE CODE_15A176           
CODE_15A172:        E6 E9         INC $E9                   
CODE_15A174:        80 C7         BRA CODE_15A13D           

CODE_15A176:        6B            RTL                       

CODE_15A177:        8C F5 02      STY $02F5                 
CODE_15A17A:        AC 34 05      LDY $0534                 
CODE_15A17D:        B9 11 AB      LDA.w DATA_11AB11,y               
CODE_15A180:        18            CLC                       
CODE_15A181:        7D FB AA      ADC.w DATA_11AAFB,x               
CODE_15A184:        85 02         STA $02                   
CODE_15A186:        BD F0 AA      LDA.w DATA_11AAF0,x               
CODE_15A189:        85 01         STA $01                   
CODE_15A18B:        BD 06 AB      LDA.w DATA_11AB06,x               
CODE_15A18E:        85 03         STA $03                   
CODE_15A190:        AC F5 02      LDY $02F5                 
CODE_15A193:        60            RTS                       

DATA_15A194:        db $5C,$2F,$7E,$36,$86,$4C,$63,$4E
                    db $44,$51

DATA_15A19E:        db $03,$05,$0D,$04,$07

CODE_15A1A3:        AD 33 05      LDA $0533                 
CODE_15A1A6:        C9 0E         CMP #$0E                  
CODE_15A1A8:        D0 45         BNE CODE_15A1EF           
CODE_15A1AA:        A2 04         LDX #$04                  
CODE_15A1AC:        8E 14 07      STX $0714                 
CODE_15A1AF:        8A            TXA                       
CODE_15A1B0:        0A            ASL A                     
CODE_15A1B1:        AA            TAX                       
CODE_15A1B2:        C2 20         REP #$20                  
CODE_15A1B4:        BF 94 A1 15   LDA.l DATA_15A194,x             
CODE_15A1B8:        85 01         STA $01                   
CODE_15A1BA:        E2 20         SEP #$20                  
CODE_15A1BC:        A9 7E         LDA #$7E                  
CODE_15A1BE:        85 03         STA $03                   
CODE_15A1C0:        AE 14 07      LDX $0714                 
CODE_15A1C3:        A5 01         LDA $01                   
CODE_15A1C5:        29 0F         AND #$0F                  
CODE_15A1C7:        A8            TAY                       
CODE_15A1C8:        A5 01         LDA $01                   
CODE_15A1CA:        29 F0         AND #$F0                  
CODE_15A1CC:        85 01         STA $01                   
CODE_15A1CE:        A9 B2         LDA #$B2                  
CODE_15A1D0:        97 01         STA [$01],y               
CODE_15A1D2:        20 F0 A1      JSR CODE_15A1F0           
CODE_15A1D5:        BF 9E A1 15   LDA.l DATA_15A19E,x             
CODE_15A1D9:        8D 13 07      STA $0713                 
CODE_15A1DC:        A9 FD         LDA #$FD                  
CODE_15A1DE:        97 01         STA [$01],y               
CODE_15A1E0:        20 F0 A1      JSR CODE_15A1F0           
CODE_15A1E3:        CE 13 07      DEC $0713                 
CODE_15A1E6:        10 F4         BPL CODE_15A1DC           
CODE_15A1E8:        A9 FE         LDA #$FE                  
CODE_15A1EA:        97 01         STA [$01],y               
CODE_15A1EC:        CA            DEX                       
CODE_15A1ED:        10 BD         BPL CODE_15A1AC           
CODE_15A1EF:        6B            RTL                       

CODE_15A1F0:        C8            INY                       
CODE_15A1F1:        98            TYA                       
CODE_15A1F2:        29 0F         AND #$0F                  
CODE_15A1F4:        D0 02         BNE CODE_15A1F8           
CODE_15A1F6:        A0 F0         LDY #$F0                  
CODE_15A1F8:        60            RTS                       

CODE_15A1F9:        AD 33 05      LDA $0533                 
CODE_15A1FC:        C9 06         CMP #$06                  
CODE_15A1FE:        D0 2F         BNE CODE_15A22F           
CODE_15A200:        AD 34 05      LDA $0534                 
CODE_15A203:        C9 01         CMP #$01                  
CODE_15A205:        D0 28         BNE CODE_15A22F           
CODE_15A207:        A9 7E         LDA #$7E                  
CODE_15A209:        85 03         STA $03                   
CODE_15A20B:        A9 31         LDA #$31                  
CODE_15A20D:        85 02         STA $02                   
CODE_15A20F:        A9 80         LDA #$80                  
CODE_15A211:        85 01         STA $01                   
CODE_15A213:        C2 10         REP #$10                  
CODE_15A215:        A0 DF 02      LDY #$02DF                
CODE_15A218:        B7 01         LDA [$01],y               
CODE_15A21A:        C9 04         CMP #$04                  
CODE_15A21C:        D0 04         BNE CODE_15A222           
CODE_15A21E:        A9 1C         LDA #$1C                  
CODE_15A220:        80 06         BRA CODE_15A228           

CODE_15A222:        C9 07         CMP #$07                  
CODE_15A224:        D0 04         BNE CODE_15A22A           
CODE_15A226:        A9 1D         LDA #$1D                  
CODE_15A228:        97 01         STA [$01],y               
CODE_15A22A:        88            DEY                       
CODE_15A22B:        10 EB         BPL CODE_15A218           
CODE_15A22D:        E2 10         SEP #$10                  
CODE_15A22F:        6B            RTL                       

DATA_15A230:        db $BA,$BB,$BC,$BD,$BE,$BF,$70,$F5
                    db $3F,$76,$62,$63,$A4,$A5,$CA,$CE
                    db $C7,$C9,$D2,$D3

CODE_15A244:        A2 97         LDX #$97
CODE_15A246:        AD 33 05      LDA $0533                 
CODE_15A249:        DF D8 C8 15   CMP.l DATA_15C8D8,x             
CODE_15A24D:        D0 49         BNE CODE_15A298           
CODE_15A24F:        AD 34 05      LDA $0534                 
CODE_15A252:        DF 70 C9 15   CMP.l DATA_15C970,x             
CODE_15A256:        D0 40         BNE CODE_15A298           
CODE_15A258:        8E 19 07      STX $0719                 
CODE_15A25B:        C2 30         REP #$30                  
CODE_15A25D:        8A            TXA                       
CODE_15A25E:        29 FF 00      AND #$00FF                
CODE_15A261:        0A            ASL A                     
CODE_15A262:        AA            TAX                       
CODE_15A263:        BF 08 CA 15   LDA.l DATA_15CA08,x             
CODE_15A267:        85 01         STA $01                   
CODE_15A269:        E2 30         SEP #$30                  
CODE_15A26B:        A9 7E         LDA #$7E                  
CODE_15A26D:        85 03         STA $03                   
CODE_15A26F:        AE 19 07      LDX $0719                 
CODE_15A272:        BF 38 CB 15   LDA.l DATA_15CB38,x             
CODE_15A276:        8D 1A 07      STA $071A                 
CODE_15A279:        A2 13         LDX #$13                  
CODE_15A27B:        DF 30 A2 15   CMP.l DATA_15A230,x             
CODE_15A27F:        F0 12         BEQ CODE_15A293           
CODE_15A281:        CA            DEX                       
CODE_15A282:        10 F7         BPL CODE_15A27B           
CODE_15A284:        AE 34 05      LDX $0534                 
CODE_15A287:        BF 11 AB 11   LDA.l DATA_11AB11,x             
CODE_15A28B:        18            CLC                       
CODE_15A28C:        65 02         ADC $02                   
CODE_15A28E:        85 02         STA $02                   
CODE_15A290:        AD 1A 07      LDA $071A                 
CODE_15A293:        87 01         STA [$01]                 
CODE_15A295:        AE 19 07      LDX $0719                 
CODE_15A298:        CA            DEX                       
CODE_15A299:        E0 FF         CPX #$FF                  
CODE_15A29B:        F0 03         BEQ CODE_15A2A0           
CODE_15A29D:        82 A6 FF      BRL CODE_15A246           

CODE_15A2A0:        6B            RTL                       

DATA_15A2A1:        db $28,$29,$26,$2A,$2B,$27
     
CODE_15A2A7:        C2 20         REP #$20                 
CODE_15A2A9:        A5 01         LDA $01           
CODE_15A2AB:        18            CLC                       
CODE_15A2AC:        69 50         ADC #$0050                  
CODE_15A2AF:        85 01         STA $01                 
CODE_15A2B1:        E2 20         SEP #$20
CODE_15A2B3:        A4 E7         LDY $E7
CODE_15A2B5:        A2 00         LDX #$00                  
CODE_15A2B7:        BF A1 A2 15   LDA.l DATA_15A2A1,x             
CODE_15A2BB:        97 01         STA [$01],y               
CODE_15A2BD:        20 6D A0      JSR CODE_15A06D           
CODE_15A2C0:        5A            PHY                       
CODE_15A2C1:        98            TYA                       
CODE_15A2C2:        18            CLC                       
CODE_15A2C3:        69 20         ADC #$20                  
CODE_15A2C5:        A8            TAY                       
CODE_15A2C6:        BF A1 A2 15   LDA.l DATA_15A2A1,x             
CODE_15A2CA:        97 01         STA [$01],y               
CODE_15A2CC:        20 6D A0      JSR CODE_15A06D           
CODE_15A2CF:        7A            PLY                       
CODE_15A2D0:        C8            INY                       
CODE_15A2D1:        E8            INX                       
CODE_15A2D2:        E0 06         CPX #$06                  
CODE_15A2D4:        F0 0F         BEQ CODE_15A2E5           
CODE_15A2D6:        E0 03         CPX #$03                  
CODE_15A2D8:        D0 DD         BNE CODE_15A2B7           
CODE_15A2DA:        A5 01         LDA $01                   
CODE_15A2DC:        18            CLC                       
CODE_15A2DD:        69 10         ADC #$10                  
CODE_15A2DF:        85 01         STA $01                   
CODE_15A2E1:        A4 E7         LDY $E7                   
CODE_15A2E3:        80 D2         BRA CODE_15A2B7           

CODE_15A2E5:        6B            RTL                       

CODE_15A2E6:        A9 02         LDA #$02                  
CODE_15A2E8:        8D 12 07      STA $0712                 
CODE_15A2EB:        9C 13 07      STZ $0713                 
CODE_15A2EE:        9C 14 07      STZ $0714                 
CODE_15A2F1:        A2 00         LDX #$00                  
CODE_15A2F3:        20 D4 A3      JSR CODE_15A3D4           
CODE_15A2F6:        AC EE 04      LDY $04EE                 
CODE_15A2F9:        98            TYA                       
CODE_15A2FA:        20 95 A3      JSR CODE_15A395           
CODE_15A2FD:        8C 2A 14      STY $142A                 
CODE_15A300:        8D 2C 14      STA $142C                 
CODE_15A303:        A9 15         LDA #$15                  
CODE_15A305:        8D 2D 14      STA $142D                 
CODE_15A308:        C0 BF         CPY #$BF                  
CODE_15A30A:        D0 07         BNE CODE_15A313           
CODE_15A30C:        A9 BD         LDA #$BD                  
CODE_15A30E:        8D 2A 14      STA $142A                 
CODE_15A311:        A9 09         LDA #$09                  
CODE_15A313:        8D 2B 14      STA $142B                 
CODE_15A316:        EE 2B 06      INC $062B                 
CODE_15A319:        AD 2B 06      LDA $062B                 
CODE_15A31C:        20 95 A3      JSR CODE_15A395           
CODE_15A31F:        C0 BF         CPY #$BF                  
CODE_15A321:        D0 03         BNE CODE_15A326           
CODE_15A323:        AA            TAX                       
CODE_15A324:        98            TYA                       
CODE_15A325:        9B            TXY                       
CODE_15A326:        8C 08 14      STY $1408                 
CODE_15A329:        8D 0A 14      STA $140A                 
CODE_15A32C:        A2 15         LDX #$15                  
CODE_15A32E:        C9 BF         CMP #$BF                  
CODE_15A330:        D0 07         BNE CODE_15A339           
CODE_15A332:        A9 BD         LDA #$BD                  
CODE_15A334:        8D 0A 14      STA $140A                 
CODE_15A337:        A2 09         LDX #$09                  
CODE_15A339:        8E 0B 14      STX $140B                 
CODE_15A33C:        A9 15         LDA #$15                  
CODE_15A33E:        C0 BF         CPY #$BF                  
CODE_15A340:        D0 07         BNE CODE_15A349           
CODE_15A342:        A9 BD         LDA #$BD                  
CODE_15A344:        8D 08 14      STA $1408                 
CODE_15A347:        A9 09         LDA #$09                  
CODE_15A349:        8D 09 14      STA $1409                 
CODE_15A34C:        A9 01         LDA #$01                  
CODE_15A34E:        85 11         STA $11                   
CODE_15A350:        A9 01         LDA #$01                  
CODE_15A352:        8D E3 1D      STA $1DE3                 
CODE_15A355:        22 14 80 11   JSL CODE_118014           
CODE_15A359:        A9 04         LDA #$04                  
CODE_15A35B:        8D 82 07      STA $0782                 
CODE_15A35E:        AD FC CA      LDA.w DATA_15CAFC                 
CODE_15A361:        85 11         STA $11                   
CODE_15A363:        A9 0A         LDA #$0A                  
CODE_15A365:        8D 83 07      STA $0783                 
CODE_15A368:        22 14 80 11   JSL CODE_118014           
CODE_15A36C:        20 B9 A3      JSR CODE_15A3B9           
CODE_15A36F:        EE 13 07      INC $0713                 
CODE_15A372:        CE 83 07      DEC $0783                 
CODE_15A375:        D0 F1         BNE CODE_15A368           
CODE_15A377:        CE 82 07      DEC $0782                 
CODE_15A37A:        10 E2         BPL CODE_15A35E           
CODE_15A37C:        CE 12 07      DEC $0712                 
CODE_15A37F:        10 95         BPL CODE_15A316           
CODE_15A381:        A9 FF         LDA #$FF                  
CODE_15A383:        8D 96 07      STA $0796                 
CODE_15A386:        A2 0A         LDX #$0A                  
CODE_15A388:        20 D4 A3      JSR CODE_15A3D4           
CODE_15A38B:        AD FB CA      LDA.w DATA_11CAFB                 
CODE_15A38E:        85 11         STA $11                   
CODE_15A390:        22 14 80 11   JSL CODE_118014           
CODE_15A394:        6B            RTL                       

CODE_15A395:        A0 C0         LDY #$C0                  
CODE_15A397:        C9 0A         CMP #$0A                  
CODE_15A399:        90 05         BCC CODE_15A3A0           
CODE_15A39B:        E9 0A         SBC #$0A                  
CODE_15A39D:        C8            INY                       
CODE_15A39E:        80 F7         BRA CODE_15A397           

CODE_15A3A0:        09 C0         ORA #$C0                  
CODE_15A3A2:        C0 C0         CPY #$C0                  
CODE_15A3A4:        D0 02         BNE CODE_15A3A8           
CODE_15A3A6:        A0 BF         LDY #$BF                  
CODE_15A3A8:        60            RTS                       

DATA_15A3A9:        dw $125F

DATA_15A3AB:        dw $12FF

DATA_15A3AD:        dw $1B7F,$125F,$12FF,$35AD
                    dw $4631,$56B5

CODE_15A3B9:        AD 13 07      LDA $0713                 
CODE_15A3BC:        C9 06         CMP #$06                  
CODE_15A3BE:        D0 06         BNE CODE_15A3C6           
CODE_15A3C0:        9C 13 07      STZ $0713                 
CODE_15A3C3:        EE 14 07      INC $0714                 
CODE_15A3C6:        AD 14 07      LDA $0714                 
CODE_15A3C9:        C9 03         CMP #$03                  
CODE_15A3CB:        D0 05         BNE CODE_15A3D2           
CODE_15A3CD:        A9 00         LDA #$00                  
CODE_15A3CF:        8D 14 07      STA $0714                 
CODE_15A3D2:        0A            ASL A                     
CODE_15A3D3:        AA            TAX                       
CODE_15A3D4:        C2 20         REP #$20                  
CODE_15A3D6:        BF A9 A3 15   LDA.l DATA_15A3A9,x             
CODE_15A3DA:        8D 1A 0B      STA $0B1A                 
CODE_15A3DD:        BF AB A3 15   LDA.l DATA_15A3AB,x             
CODE_15A3E1:        8D 1C 0B      STA $0B1C                 
CODE_15A3E4:        BF AD A3 15   LDA.l DATA_15A3AD,x             
CODE_15A3E8:        8D 1E 0B      STA $0B1E                 
CODE_15A3EB:        E2 20         SEP #$20                  
CODE_15A3ED:        A9 01         LDA #$01                  
CODE_15A3EF:        8D A9 02      STA $02A9                 
CODE_15A3F2:        60            RTS                       

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

CODE_15D007:        DA            PHX                       
CODE_15D008:        A6 12         LDX $12                   
CODE_15D00A:        B5 90         LDA $90,x                 
CODE_15D00C:        C9 36         CMP #$36                  
CODE_15D00E:        D0 28         BNE CODE_15D038           
CODE_15D010:        B5 79         LDA $79,x                 
CODE_15D012:        F0 24         BEQ CODE_15D038           
CODE_15D014:        EE 9E 07      INC $079E                 
CODE_15D017:        AD 9E 07      LDA $079E                 
CODE_15D01A:        C9 0E         CMP #$0E                  
CODE_15D01C:        90 05         BCC CODE_15D023           
CODE_15D01E:        A9 00         LDA #$00                  
CODE_15D020:        8D 9E 07      STA $079E                 
CODE_15D023:        4A            LSR A                     
CODE_15D024:        AA            TAX                       
CODE_15D025:        BF 00 D0 15   LDA.l DATA_15D000,x             
CODE_15D029:        8D 12 07      STA $0712                 
CODE_15D02C:        E0 04         CPX #$04                  
CODE_15D02E:        90 08         BCC CODE_15D038           
CODE_15D030:        AD 13 07      LDA $0713                 
CODE_15D033:        09 40         ORA #$40                  
CODE_15D035:        8D 13 07      STA $0713                 
CODE_15D038:        FA            PLX                       
CODE_15D039:        6B            RTL                       

CODE_15D03A:        8B            PHB                       
CODE_15D03B:        4B            PHK                       
CODE_15D03C:        AB            PLB                       
CODE_15D03D:        DA            PHX                       
CODE_15D03E:        5A            PHY                       
CODE_15D03F:        A9 01         LDA #$01                  
CODE_15D041:        85 85         STA $85                   
CODE_15D043:        AD 79 07      LDA $0779                 
CODE_15D046:        0A            ASL A                     
CODE_15D047:        AA            TAX                       
CODE_15D048:        BD 55 D0      LDA.w PNTR_15D055,x               
CODE_15D04B:        85 00         STA $00                   
CODE_15D04D:        BD 56 D0      LDA.w PNTR_15D055+1,x               
CODE_15D050:        85 01         STA $01                   
CODE_15D052:        6C 00 00      JMP ($0000)               

PNTR_15D055:        dw CODE_15D067
                    dw CODE_15D084
                    dw CODE_15D05D
                    dw CODE_15D072

CODE_15D05D:        CE 95 07      DEC $0795
CODE_15D060:        10 22         BPL CODE_15D084           
CODE_15D062:        EE 79 07      INC $0779                 
CODE_15D065:        80 1D         BRA CODE_15D084           

CODE_15D067:        9C BE 04      STZ $04BE                 
CODE_15D06A:        EE 79 07      INC $0779                 
CODE_15D06D:        EE 1B 04      INC $041B                 
CODE_15D070:        80 12         BRA CODE_15D084           

CODE_15D072:        CE BE 04      DEC $04BE                 
CODE_15D075:        AD BE 04      LDA $04BE                 
CODE_15D078:        10 0A         BPL CODE_15D084           
CODE_15D07A:        A9 FF         LDA #$FF                  
CODE_15D07C:        8D 78 07      STA $0778                 
CODE_15D07F:        9C 1B 04      STZ $041B                 
CODE_15D082:        80 00         BRA CODE_15D084           

CODE_15D084:        C2 10         REP #$10                  
CODE_15D086:        A0 FC 01      LDY #$01FC                
CODE_15D089:        A2 07 00      LDX #$0007                
CODE_15D08C:        AD C1 04      LDA $04C1                 
CODE_15D08F:        85 00         STA $00                   
CODE_15D091:        AD BF 04      LDA $04BF                 
CODE_15D094:        85 01         STA $01                   
CODE_15D096:        AD 79 07      LDA $0779                 
CODE_15D099:        C9 03         CMP #$03                  
CODE_15D09B:        D0 03         BNE CODE_15D0A0           
CODE_15D09D:        A0 7C 00      LDY #$007C                
CODE_15D0A0:        20 97 D1      JSR CODE_15D197           
CODE_15D0A3:        BF AD D1 15   LDA.l DATA_15D1AD,x             
CODE_15D0A7:        E0 02 00      CPX #$0002                
CODE_15D0AA:        90 04         BCC CODE_15D0B0           
CODE_15D0AC:        38            SEC                       
CODE_15D0AD:        ED BE 04      SBC $04BE                 
CODE_15D0B0:        C9 60         CMP #$60                  
CODE_15D0B2:        B0 02         BCS CODE_15D0B6                   
CODE_15D0B4:        A9 F0         LDA #$F0                  
CODE_15D0B6:        3A            DEC A                     
CODE_15D0B7:        99 01 08      STA $0801,y               
CODE_15D0BA:        BF B5 D1 15   LDA.l DATA_15D1B5,x             
CODE_15D0BE:        99 02 08      STA $0802,y               
CODE_15D0C1:        BF BD D1 15   LDA.l DATA_15D1BD,x             
CODE_15D0C5:        99 03 08      STA $0803,y               
CODE_15D0C8:        A9 04         LDA #$04                  
CODE_15D0CA:        EB            XBA                       
CODE_15D0CB:        BF A5 D1 15   LDA.l DATA_15D1A5,x             
CODE_15D0CF:        C2 20         REP #$20                  
CODE_15D0D1:        38            SEC                       
CODE_15D0D2:        E5 00         SBC $00                   
CODE_15D0D4:        85 02         STA $02                   
CODE_15D0D6:        E2 20         SEP #$20                  
CODE_15D0D8:        99 00 08      STA $0800,y               
CODE_15D0DB:        5A            PHY                       
CODE_15D0DC:        C2 20         REP #$20                  
CODE_15D0DE:        98            TYA                       
CODE_15D0DF:        4A            LSR A                     
CODE_15D0E0:        4A            LSR A                     
CODE_15D0E1:        A8            TAY                       
CODE_15D0E2:        E2 20         SEP #$20                  
CODE_15D0E4:        A5 03         LDA $03                   
CODE_15D0E6:        F0 02         BEQ CODE_15D0EA           
CODE_15D0E8:        A9 01         LDA #$01                  
CODE_15D0EA:        09 02         ORA #$02                  
CODE_15D0EC:        99 20 0A      STA $0A20,y               
CODE_15D0EF:        7A            PLY                       
CODE_15D0F0:        CA            DEX                       
CODE_15D0F1:        10 AD         BPL CODE_15D0A0           
CODE_15D0F3:        AD 79 07      LDA $0779                 
CODE_15D0F6:        C9 01         CMP #$01                  
CODE_15D0F8:        D0 12         BNE CODE_15D10C           
CODE_15D0FA:        EE BE 04      INC $04BE                 
CODE_15D0FD:        AD BE 04      LDA $04BE                 
CODE_15D100:        C9 20         CMP #$20                  
CODE_15D102:        90 08         BCC CODE_15D10C           
CODE_15D104:        EE 79 07      INC $0779                 
CODE_15D107:        A9 10         LDA #$10                  
CODE_15D109:        8D 95 07      STA $0795                 
CODE_15D10C:        AD 78 07      LDA $0778                 
CODE_15D10F:        10 06         BPL CODE_15D117           
CODE_15D111:        9C 79 07      STZ $0779                 
CODE_15D114:        9C BE 04      STZ $04BE                 
CODE_15D117:        E2 10         SEP #$10                  
CODE_15D119:        7A            PLY                       
CODE_15D11A:        FA            PLX                       
CODE_15D11B:        AB            PLB                       
CODE_15D11C:        6B            RTL                       

CODE_15D11D:        AD 79 07      LDA $0779                 
CODE_15D120:        D0 74         BNE CODE_15D196           
CODE_15D122:        AD 33 05      LDA $0533                 
CODE_15D125:        C9 11         CMP #$11                  
CODE_15D127:        D0 6D         BNE CODE_15D196           
CODE_15D129:        AD 34 05      LDA $0534                 
CODE_15D12C:        C9 01         CMP #$01                  
CODE_15D12E:        D0 66         BNE CODE_15D196           
CODE_15D130:        A5 14         LDA $14                   
CODE_15D132:        C9 04         CMP #$04                  
CODE_15D134:        90 60         BCC CODE_15D196           
CODE_15D136:        8B            PHB                       
CODE_15D137:        4B            PHK                       
CODE_15D138:        AB            PLB                       
CODE_15D139:        DA            PHX                       
CODE_15D13A:        5A            PHY                       
CODE_15D13B:        C2 10         REP #$10                  
CODE_15D13D:        A2 07 00      LDX #$0007                
CODE_15D140:        A0 FC 01      LDY #$01FC                
CODE_15D143:        AD C1 04      LDA $04C1                 
CODE_15D146:        85 00         STA $00                   
CODE_15D148:        AD BF 04      LDA $04BF                 
CODE_15D14B:        85 01         STA $01                   
CODE_15D14D:        20 97 D1      JSR CODE_15D197           
CODE_15D150:        BF AD D1 15   LDA.l DATA_15D1AD,x             
CODE_15D154:        3A            DEC A                     
CODE_15D155:        99 01 08      STA $0801,y               
CODE_15D158:        BF B5 D1 15   LDA.l DATA_15D1B5,x             
CODE_15D15C:        99 02 08      STA $0802,y               
CODE_15D15F:        BF BD D1 15   LDA.l DATA_15D1BD,x             
CODE_15D163:        99 03 08      STA $0803,y               
CODE_15D166:        A9 04         LDA #$04                  
CODE_15D168:        EB            XBA                       
CODE_15D169:        BF A5 D1 15   LDA.l DATA_15D1A5,x             
CODE_15D16D:        C2 20         REP #$20                  
CODE_15D16F:        38            SEC                       
CODE_15D170:        E5 00         SBC $00                   
CODE_15D172:        85 02         STA $02                   
CODE_15D174:        E2 20         SEP #$20                  
CODE_15D176:        99 00 08      STA $0800,y               
CODE_15D179:        5A            PHY                       
CODE_15D17A:        C2 20         REP #$20                  
CODE_15D17C:        98            TYA                       
CODE_15D17D:        4A            LSR A                     
CODE_15D17E:        4A            LSR A                     
CODE_15D17F:        A8            TAY                       
CODE_15D180:        E2 20         SEP #$20                  
CODE_15D182:        A5 03         LDA $03                   
CODE_15D184:        F0 02         BEQ CODE_15D188           
CODE_15D186:        A9 01         LDA #$01                  
CODE_15D188:        09 02         ORA #$02                  
CODE_15D18A:        99 20 0A      STA $0A20,y               
CODE_15D18D:        7A            PLY                       
CODE_15D18E:        CA            DEX                       
CODE_15D18F:        10 BC         BPL CODE_15D14D           
CODE_15D191:        E2 10         SEP #$10                  
CODE_15D193:        7A            PLY                       
CODE_15D194:        FA            PLX                       
CODE_15D195:        AB            PLB                       
CODE_15D196:        6B            RTL                       

CODE_15D197:        B9 01 08      LDA $0801,y               
CODE_15D19A:        C9 F0         CMP #$F0                  
CODE_15D19C:        F0 06         BEQ CODE_15D1A4           
CODE_15D19E:        88            DEY                       
CODE_15D19F:        88            DEY                       
CODE_15D1A0:        88            DEY                       
CODE_15D1A1:        88            DEY                       
CODE_15D1A2:        80 F3         BRA CODE_15D197           

CODE_15D1A4:        60            RTS                       

DATA_15D1A5:        db $90,$A0,$90,$A0,$90,$A0,$90,$A0

DATA_15D1AD:        db $60,$60,$70,$70,$80,$80,$90,$90

DATA_15D1B5:        db $A0,$A2,$A4,$A6,$62,$64,$66,$AE

DATA_15D1BD:        db $27,$27,$27,$27,$26,$26,$26,$27

CODE_15D1C5:        AD 33 05      LDA $0533                 
CODE_15D1C8:        C9 11         CMP #$11                  
CODE_15D1CA:        D0 2D         BNE CODE_15D1F9           
CODE_15D1CC:        AD 34 05      LDA $0534                 
CODE_15D1CF:        C9 02         CMP #$02                  
CODE_15D1D1:        F0 16         BEQ CODE_15D1E9           
CODE_15D1D3:        C9 01         CMP #$01                  
CODE_15D1D5:        D0 22         BNE CODE_15D1F9           
CODE_15D1D7:        A5 14         LDA $14                   
CODE_15D1D9:        C9 04         CMP #$04                  
CODE_15D1DB:        D0 1C         BNE CODE_15D1F9           
CODE_15D1DD:        A5 28         LDA $28                   
CODE_15D1DF:        C9 90         CMP #$90                  
CODE_15D1E1:        90 16         BCC CODE_15D1F9           
CODE_15D1E3:        C9 A0         CMP #$A0                  
CODE_15D1E5:        B0 12         BCS CODE_15D1F9                   
CODE_15D1E7:        38            SEC                       
CODE_15D1E8:        6B            RTL                       

CODE_15D1E9:        A5 14         LDA $14                   
CODE_15D1EB:        D0 0C         BNE CODE_15D1F9           
CODE_15D1ED:        A5 28         LDA $28                   
CODE_15D1EF:        C9 50         CMP #$50                  
CODE_15D1F1:        90 06         BCC CODE_15D1F9           
CODE_15D1F3:        C9 60         CMP #$60                  
CODE_15D1F5:        B0 02         BCS CODE_15D1F9                   
CODE_15D1F7:        38            SEC                       
CODE_15D1F8:        6B            RTL                       

CODE_15D1F9:        18            CLC                       
CODE_15D1FA:        6B            RTL                       

DATA_15D1FB:        db $A6

DATA_15D1FC:        db $A7

DATA_15D1FD:        db $A8

DATA_15D1FE:        db $A9,$AA,$AB,$AC,$AD,$B6
                    db $B7,$B8,$B9,$BA,$BB,$BC,$BD,$BD
                    db $BC,$BB,$BA,$B9,$B8,$B7,$B6,$AD
                    db $AC,$AB,$AA,$A9,$A8,$A7,$A6

CODE_15D21B:        E2 30         SEP #$30                  
CODE_15D21D:        38            SEC                       
CODE_15D21E:        6B            RTL                       
CODE_15D21F:        A5 EB         LDA $EB                   
CODE_15D221:        D0 03         BNE CODE_15D226           
CODE_15D223:        9C 1F 02      STZ $021F                 
CODE_15D226:        AD 1F 02      LDA $021F                 
CODE_15D229:        EB            XBA                       
CODE_15D22A:        AD 29 04      LDA $0429                 
CODE_15D22D:        C2 20         REP #$20                  
CODE_15D22F:        C9 80 01      CMP #$0180                
CODE_15D232:        90 05         BCC CODE_15D239           
CODE_15D234:        C9 80 FF      CMP #$FF80                
CODE_15D237:        90 E2         BCC CODE_15D21B           
CODE_15D239:        AD F8 02      LDA $02F8                 
CODE_15D23C:        8D 0B 07      STA $070B                 
CODE_15D23F:        E2 20         SEP #$20                  
CODE_15D241:        A5 10         LDA $10                   
CODE_15D243:        4A            LSR A                     
CODE_15D244:        4A            LSR A                     
CODE_15D245:        29 07         AND #$07                  
CODE_15D247:        B4 3D         LDY $3D,x                 
CODE_15D249:        30 00         BMI CODE_15D24B           
CODE_15D24B:        AA            TAX                       
CODE_15D24C:        0A            ASL A                     
CODE_15D24D:        0A            ASL A                     
CODE_15D24E:        85 0E         STA $0E                   
CODE_15D250:        64 0F         STZ $0F                   
CODE_15D252:        BD A6 9A      LDA.w DATA_119AA6,x               
CODE_15D255:        A6 12         LDX $12                   
CODE_15D257:        95 6F         STA $6F,x                 
CODE_15D259:        BD 4A 04      LDA $044A,x               
CODE_15D25C:        29 02         AND #$02                  
CODE_15D25E:        4A            LSR A                     
CODE_15D25F:        A6 ED         LDX $ED                   
CODE_15D261:        F0 02         BEQ CODE_15D265           
CODE_15D263:        A9 00         LDA #$00                  
CODE_15D265:        6D 29 04      ADC $0429                 
CODE_15D268:        8D 13 07      STA $0713                 
CODE_15D26B:        AD 2C 04      LDA $042C                 
CODE_15D26E:        A6 EE         LDX $EE                   
CODE_15D270:        F0 02         BEQ CODE_15D274           
CODE_15D272:        A9 F0         LDA #$F0                  
CODE_15D274:        C2 10         REP #$10                  
CODE_15D276:        AC 0B 07      LDY $070B                 
CODE_15D279:        99 01 08      STA $0801,y               
CODE_15D27C:        99 05 08      STA $0805,y               
CODE_15D27F:        8D 12 07      STA $0712                 
CODE_15D282:        AD 13 07      LDA $0713                 
CODE_15D285:        99 00 08      STA $0800,y               
CODE_15D288:        18            CLC                       
CODE_15D289:        69 08         ADC #$08                  
CODE_15D28B:        99 04 08      STA $0804,y               
CODE_15D28E:        8D 13 07      STA $0713                 
CODE_15D291:        A6 0E         LDX $0E                   
CODE_15D293:        BF FB D1 15   LDA.l DATA_15D1FB,x             
CODE_15D297:        99 02 08      STA $0802,y               
CODE_15D29A:        BF FC D1 15   LDA.l DATA_15D1FC,x             
CODE_15D29E:        99 06 08      STA $0806,y               
CODE_15D2A1:        A9 00         LDA #$00                  
CODE_15D2A3:        A6 0E         LDX $0E                   
CODE_15D2A5:        E0 10 00      CPX #$0010                
CODE_15D2A8:        90 02         BCC CODE_15D2AC           
CODE_15D2AA:        A9 40         LDA #$40                  
CODE_15D2AC:        09 2D         ORA #$2D                  
CODE_15D2AE:        99 03 08      STA $0803,y               
CODE_15D2B1:        99 07 08      STA $0807,y               
CODE_15D2B4:        8D 14 07      STA $0714                 
CODE_15D2B7:        22 83 E4 14   JSL CODE_14E483           
CODE_15D2BB:        C2 10         REP #$10                  
CODE_15D2BD:        AC F8 02      LDY $02F8                 
CODE_15D2C0:        8C 0D 07      STY $070D                 
CODE_15D2C3:        AD 12 07      LDA $0712                 
CODE_15D2C6:        99 01 08      STA $0801,y               
CODE_15D2C9:        99 05 08      STA $0805,y               
CODE_15D2CC:        AD 13 07      LDA $0713                 
CODE_15D2CF:        18            CLC                       
CODE_15D2D0:        69 08         ADC #$08                  
CODE_15D2D2:        99 00 08      STA $0800,y               
CODE_15D2D5:        18            CLC                       
CODE_15D2D6:        69 08         ADC #$08                  
CODE_15D2D8:        99 04 08      STA $0804,y               
CODE_15D2DB:        A6 0E         LDX $0E                   
CODE_15D2DD:        BF FD D1 15   LDA.l DATA_15D1FD,x             
CODE_15D2E1:        99 02 08      STA $0802,y               
CODE_15D2E4:        BF FE D1 15   LDA.l DATA_15D1FE,x             
CODE_15D2E8:        99 06 08      STA $0806,y               
CODE_15D2EB:        AD 14 07      LDA $0714                 
CODE_15D2EE:        99 03 08      STA $0803,y               
CODE_15D2F1:        99 07 08      STA $0807,y               
CODE_15D2F4:        18            CLC                       
CODE_15D2F5:        6B            RTL                       

DATA_15D2F6:        db $58,$C8,$DF,$30,$60,$C8,$79,$31
                    db $68,$C8,$2F,$31,$70,$C8,$CF,$30
                    db $80,$C8,$2F,$31,$88,$C8,$3F,$31
                    db $90,$C8,$C8,$30,$98,$C8,$1F,$31
                    db $A0,$C8,$3F,$31

CODE_15D31A:        A2 23         LDX #$23
CODE_15D31C:        BF F6 D2 15   LDA.l DATA_15D2F6,x             
CODE_15D320:        9D 00 09      STA $0900,x               
CODE_15D323:        CA            DEX                       
CODE_15D324:        10 F6         BPL CODE_15D31C           
CODE_15D326:        9C 60 0A      STZ $0A60                 
CODE_15D329:        9C 61 0A      STZ $0A61                 
CODE_15D32C:        9C 62 0A      STZ $0A62                 
CODE_15D32F:        9C 63 0A      STZ $0A63                 
CODE_15D332:        9C 64 0A      STZ $0A64                 
CODE_15D335:        9C 65 0A      STZ $0A65                 
CODE_15D338:        9C 66 0A      STZ $0A66                 
CODE_15D33B:        9C 67 0A      STZ $0A67                 
CODE_15D33E:        9C 68 0A      STZ $0A68                 
CODE_15D341:        6B            RTL                       

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
