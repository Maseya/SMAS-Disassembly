;Super Mario Bros. 3
;This bank is mostly code. Absolute addressing to ROM seems to use databank 21.

CODE_238000:        6B            RTL                       

CODE_238001:        AC 26 07      LDY $0726                 
CODE_238004:        A2 00         LDX #$00                  
CODE_238006:        C0 00         CPY #$00                  
CODE_238008:        F0 02         BEQ CODE_23800C           
CODE_23800A:        A2 0B         LDX #$0B                  
CODE_23800C:        A0 00         LDY #$00                  
CODE_23800E:        BD E9 8A      LDA.w DATA_218AE9,x               
CODE_238011:        99 06 16      STA $1606,y               
CODE_238014:        E8            INX                       
CODE_238015:        C8            INY                       
CODE_238016:        C0 0B         CPY #$0B                  
CODE_238018:        D0 F4         BNE CODE_23800E           
CODE_23801A:        A9 51         LDA #$51                  
CODE_23801C:        8D 02 16      STA $1602                 
CODE_23801F:        9C 04 16      STZ $1604                 
CODE_238022:        A9 09         LDA #$09                  
CODE_238024:        8D 05 16      STA $1605                 
CODE_238027:        A9 2A         LDA #$2A                  
CODE_238029:        8D 03 16      STA $1603                 
CODE_23802C:        AD 00 16      LDA $1600                 
CODE_23802F:        18            CLC                       
CODE_238030:        69 0E         ADC #$0E                  
CODE_238032:        8D 00 16      STA $1600                 
CODE_238035:        6B            RTL                       

CODE_238036:        A2 51         LDX #$51                  
CODE_238038:        8E 02 16      STX $1602                 
CODE_23803B:        A9 52         LDA #$52                  
CODE_23803D:        8D 03 16      STA $1603                 
CODE_238040:        9C 04 16      STZ $1604                 
CODE_238043:        A9 01         LDA #$01                  
CODE_238045:        8D 05 16      STA $1605                 
CODE_238048:        AD 27 07      LDA $0727                 
CODE_23804B:        1A            INC A                     
CODE_23804C:        09 F0         ORA #$F0                  
CODE_23804E:        8D 06 16      STA $1606                 
CODE_238051:        8E 08 16      STX $1608                 
CODE_238054:        A9 B4         LDA #$B4                  
CODE_238056:        8D 09 16      STA $1609                 
CODE_238059:        9C 0A 16      STZ $160A                 
CODE_23805C:        A9 03         LDA #$03                  
CODE_23805E:        8D 0B 16      STA $160B                 
CODE_238061:        AD 4A 1F      LDA $1F4A                 
CODE_238064:        C9 AD         CMP #$AD                  
CODE_238066:        D0 02         BNE CODE_23806A           
CODE_238068:        A9 0E         LDA #$0E                  
CODE_23806A:        29 0F         AND #$0F                  
CODE_23806C:        09 F0         ORA #$F0                  
CODE_23806E:        8D 0C 16      STA $160C                 
CODE_238071:        AD 4B 1F      LDA $1F4B                 
CODE_238074:        29 0F         AND #$0F                  
CODE_238076:        09 F0         ORA #$F0                  
CODE_238078:        8D 0E 16      STA $160E                 
CODE_23807B:        A9 01         LDA #$01                  
CODE_23807D:        8D 07 16      STA $1607                 
CODE_238080:        8D 0D 16      STA $160D                 
CODE_238083:        8D 0F 16      STA $160F                 
CODE_238086:        A9 FF         LDA #$FF                  
CODE_238088:        8D 10 16      STA $1610                 
CODE_23808B:        6B            RTL                       

CODE_23808C:        A2 80         LDX #$80                  
CODE_23808E:        8E 15 21      STX $2115                 
CODE_238091:        9C 00 42      STZ $4200                 
CODE_238094:        C2 30         REP #$30                  
CODE_238096:        A9 40 08      LDA #$0840                
CODE_238099:        8D 16 21      STA $2116                 
CODE_23809C:        A0 60 02      LDY #$0260                
CODE_23809F:        A9 FF 00      LDA #$00FF                
CODE_2380A2:        8D 18 21      STA $2118                 
CODE_2380A5:        88            DEY                       
CODE_2380A6:        D0 FA         BNE CODE_2380A2           
CODE_2380A8:        E2 30         SEP #$30                  
CODE_2380AA:        6B            RTL                       

CODE_2380AB:        22 A3 82 23   JSL CODE_2382A3           
CODE_2380AF:        AD 29 07      LDA $0729                 
CODE_2380B2:        C9 0D         CMP #$0D                  
CODE_2380B4:        D0 55         BNE CODE_23810B           
CODE_2380B6:        AE 27 07      LDX $0727                 
CODE_2380B9:        BC 03 8B      LDY.w DATA_218B03,x               
CODE_2380BC:        E0 04         CPX #$04                  
CODE_2380BE:        D0 09         BNE CODE_2380C9           
CODE_2380C0:        AE 26 07      LDX $0726                 
CODE_2380C3:        B5 45         LDA $45,x                 
CODE_2380C5:        F0 02         BEQ CODE_2380C9           
CODE_2380C7:        A0 10         LDY #$10                  
CODE_2380C9:        AD 55 1F      LDA $1F55                 
CODE_2380CC:        F0 02         BEQ CODE_2380D0           
CODE_2380CE:        A0 0E         LDY #$0E                  
CODE_2380D0:        AD 06 12      LDA $1206                 
CODE_2380D3:        10 0B         BPL CODE_2380E0           
CODE_2380D5:        C9 F1         CMP #$F1                  
CODE_2380D7:        F0 07         BEQ CODE_2380E0           
CODE_2380D9:        C9 F2         CMP #$F2                  
CODE_2380DB:        F0 03         BEQ CODE_2380E0           
CODE_2380DD:        8C 02 12      STY $1202                 
CODE_2380E0:        AE 26 07      LDX $0726                 
CODE_2380E3:        B5 49         LDA $49,x                 
CODE_2380E5:        D0 1B         BNE CODE_238102           
CODE_2380E7:        BF 50 39 7E   LDA $7E3950,x             
CODE_2380EB:        C9 18         CMP #$18                  
CODE_2380ED:        F0 09         BEQ CODE_2380F8           
CODE_2380EF:        BF 50 39 7E   LDA $7E3950,x             
CODE_2380F3:        1A            INC A                     
CODE_2380F4:        9F 50 39 7E   STA $7E3950,x             
CODE_2380F8:        A5 17         LDA $17                   
CODE_2380FA:        D0 06         BNE CODE_238102           
CODE_2380FC:        A9 FF         LDA #$FF                  
CODE_2380FE:        9F 50 39 7E   STA $7E3950,x             
CODE_238102:        A5 59         LDA $59                   
CODE_238104:        F0 05         BEQ CODE_23810B           
CODE_238106:        22 33 A8 29   JSL CODE_29A833           
CODE_23810A:        6B            RTL                       

CODE_23810B:        AD 10 07      LDA $0710                 
CODE_23810E:        F0 03         BEQ CODE_238113           
CODE_238110:        4C ED 81      JMP CODE_2381ED           

CODE_238113:        AE 26 07      LDX $0726                 
CODE_238116:        B5 49         LDA $49,x                 
CODE_238118:        F0 03         BEQ CODE_23811D           
CODE_23811A:        4C 26 82      JMP CODE_238226           

CODE_23811D:        AD 29 07      LDA $0729                 
CODE_238120:        C9 0D         CMP #$0D                  
CODE_238122:        F0 03         BEQ CODE_238127           
CODE_238124:        4C 26 82      JMP CODE_238226           

CODE_238127:        AD 49 03      LDA $0349                 
CODE_23812A:        F0 06         BEQ CODE_238132           
CODE_23812C:        CE 49 03      DEC $0349                 
CODE_23812F:        4C 8F 81      JMP CODE_23818F           

CODE_238132:        AD 27 07      LDA $0727                 
CODE_238135:        C9 08         CMP #$08                  
CODE_238137:        F0 56         BEQ CODE_23818F           
CODE_238139:        AD 8C 02      LDA $028C                 
CODE_23813C:        C9 01         CMP #$01                  
CODE_23813E:        F0 4F         BEQ CODE_23818F           
CODE_238140:        C9 03         CMP #$03                  
CODE_238142:        F0 4B         BEQ CODE_23818F           
CODE_238144:        A5 18         LDA $18                   
CODE_238146:        29 10         AND #$10                  
CODE_238148:        F0 45         BEQ CODE_23818F           
CODE_23814A:        AD 8C 02      LDA $028C                 
CODE_23814D:        D0 28         BNE CODE_238177           
CODE_23814F:        AD 98 05      LDA $0598                 
CODE_238152:        F0 21         BEQ CODE_238175           
CODE_238154:        A9 04         LDA #$04                  
CODE_238156:        8D 91 02      STA $0291                 
CODE_238159:        22 A9 F9 2A   JSL CODE_2AF9A9           
CODE_23815D:        A9 03         LDA #$03                  
CODE_23815F:        8D 00 02      STA $0200                 
CODE_238162:        22 63 FA 2A   JSL CODE_2AFA63           
CODE_238166:        22 4D 80 20   JSL CODE_20804D           
CODE_23816A:        AD 50 10      LDA $1050                 
CODE_23816D:        10 F3         BPL CODE_238162           
CODE_23816F:        9C 50 10      STZ $1050                 
CODE_238172:        9C 93 02      STZ $0293                 
CODE_238175:        80 00         BRA CODE_238177           

CODE_238177:        22 B7 EB 29   JSL CODE_29EBB7           
CODE_23817B:        AD 98 05      LDA $0598                 
CODE_23817E:        F0 0F         BEQ CODE_23818F           
CODE_238180:        A9 13         LDA #$13                  
CODE_238182:        8D 08 02      STA $0208                 
CODE_238185:        A9 23         LDA #$23                  
CODE_238187:        8D 00 02      STA $0200                 
CODE_23818A:        A9 33         LDA #$33                  
CODE_23818C:        8D 02 02      STA $0202                 
CODE_23818F:        AD 8C 02      LDA $028C                 
CODE_238192:        F0 3D         BEQ CODE_2381D1           
CODE_238194:        22 F7 EB 29   JSL CODE_29EBF7           
CODE_238198:        AD 98 05      LDA $0598                 
CODE_23819B:        F0 32         BEQ CODE_2381CF           
CODE_23819D:        AD 8C 02      LDA $028C                 
CODE_2381A0:        D0 2D         BNE CODE_2381CF           
CODE_2381A2:        A9 05         LDA #$05                  
CODE_2381A4:        8D 91 02      STA $0291                 
CODE_2381A7:        22 A9 F9 2A   JSL CODE_2AF9A9           
CODE_2381AB:        AD 98 05      LDA $0598                 
CODE_2381AE:        F0 0F         BEQ CODE_2381BF           
CODE_2381B0:        A9 23         LDA #$23                  
CODE_2381B2:        8D 00 02      STA $0200                 
CODE_2381B5:        A9 03         LDA #$03                  
CODE_2381B7:        8D 01 02      STA $0201                 
CODE_2381BA:        A9 30         LDA #$30                  
CODE_2381BC:        8D 02 02      STA $0202                 
CODE_2381BF:        22 63 FA 2A   JSL CODE_2AFA63           
CODE_2381C3:        22 4D 80 20   JSL CODE_20804D           
CODE_2381C7:        AD 50 10      LDA $1050                 
CODE_2381CA:        10 F3         BPL CODE_2381BF           
CODE_2381CC:        9C 50 10      STZ $1050                 
CODE_2381CF:        80 55         BRA CODE_238226           

CODE_2381D1:        AC 26 07      LDY $0726                 
CODE_2381D4:        B9 F8 00      LDA $00F8,y               
CODE_2381D7:        05 18         ORA $18                   
CODE_2381D9:        29 40         AND #$40                  
CODE_2381DB:        F0 49         BEQ CODE_238226           
CODE_2381DD:        A9 1C         LDA #$1C                  
CODE_2381DF:        8D 03 12      STA $1203                 
CODE_2381E2:        AD F2 05      LDA $05F2                 
CODE_2381E5:        49 01         EOR #$01                  
CODE_2381E7:        8D F2 05      STA $05F2                 
CODE_2381EA:        82 2E 0A      BRL CODE_238C1B           

CODE_2381ED:        AD 17 04      LDA $0417                 
CODE_2381F0:        F0 07         BEQ CODE_2381F9           
CODE_2381F2:        22 91 88 23   JSL CODE_238891           
CODE_2381F6:        82 22 0A      BRL CODE_238C1B           

CODE_2381F9:        A4 25         LDY $25                   
CODE_2381FB:        AD 10 02      LDA $0210                 
CODE_2381FE:        18            CLC                       
CODE_2381FF:        79 FF 8A      ADC.w DATA_218AFF,y               
CODE_238202:        8D 10 02      STA $0210                 
CODE_238205:        85 B7         STA $B7                   
CODE_238207:        AD 11 02      LDA $0211                 
CODE_23820A:        79 01 8B      ADC.w DATA_218B01,y               
CODE_23820D:        8D 11 02      STA $0211                 
CODE_238210:        85 12         STA $12                   
CODE_238212:        22 F5 97 20   JSL CODE_2097F5           
CODE_238216:        22 5A 9D 20   JSL CODE_209D5A           
CODE_23821A:        22 D7 8D 23   JSL CODE_238DD7           
CODE_23821E:        CE 10 07      DEC $0710                 
CODE_238221:        CE 10 07      DEC $0710                 
CODE_238224:        F0 05         BEQ CODE_23822B           
CODE_238226:        AD 17 04      LDA $0417                 
CODE_238229:        F0 13         BEQ CODE_23823E           
CODE_23822B:        22 91 88 23   JSL CODE_238891           
CODE_23822F:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238233:        AD 17 04      LDA $0417                 
CODE_238236:        D0 06         BNE CODE_23823E           
CODE_238238:        A9 01         LDA #$01                  
CODE_23823A:        8D 28 07      STA $0728                 
CODE_23823D:        6B            RTL                       

CODE_23823E:        AD 00 05      LDA $0500                 
CODE_238241:        D0 26         BNE CODE_238269           
CODE_238243:        A0 0D         LDY #$0D                  
CODE_238245:        B9 ED 1E      LDA $1EED,y               
CODE_238248:        99 00 05      STA $0500,y               
CODE_23824B:        B9 09 1F      LDA $1F09,y               
CODE_23824E:        99 1E 05      STA $051E,y               
CODE_238251:        B9 FB 1E      LDA $1EFB,y               
CODE_238254:        99 0F 05      STA $050F,y               
CODE_238257:        B9 17 1F      LDA $1F17,y               
CODE_23825A:        C9 10         CMP #$10                  
CODE_23825C:        B0 08         BCS CODE_238266                   
CODE_23825E:        B9 83 07      LDA $0783,y               
CODE_238261:        29 03         AND #$03                  
CODE_238263:        99 2D 05      STA $052D,y               
CODE_238266:        88            DEY                       
CODE_238267:        10 DC         BPL CODE_238245           
CODE_238269:        AD 8C 02      LDA $028C                 
CODE_23826C:        F0 01         BEQ CODE_23826F           
CODE_23826E:        6B            RTL                       

CODE_23826F:        AD 29 07      LDA $0729                 
CODE_238272:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_238276:        dl CODE_2382C5
                    dl CODE_238631
                    dl CODE_29AC7A
                    dl CODE_29ADFC
                    dl CODE_29AE52
                    dl CODE_29AEAA
                    dl CODE_23863B
                    dl CODE_29AF05
                    dl CODE_238652
                    dl CODE_29B17F
                    dl CODE_23863B
                    dl CODE_2387E4
                    dl CODE_23882E
                    dl CODE_238A4E
                    dl CODE_29A9AE

CODE_2382A3:        AD 27 07      LDA $0727                 
CODE_2382A6:        C9 04         CMP #$04                  
CODE_2382A8:        D0 1A         BNE CODE_2382C4           
CODE_2382AA:        AE 26 07      LDX $0726                 
CODE_2382AD:        B5 45         LDA $45,x                 
CODE_2382AF:        F0 13         BEQ CODE_2382C4           
CODE_2382B1:        A0 07         LDY #$07                  
CODE_2382B3:        B9 0C 8B      LDA.w DATA_218B0C,y               
CODE_2382B6:        99 50 08      STA $0850,y               
CODE_2382B9:        88            DEY                       
CODE_2382BA:        10 F7         BPL CODE_2382B3           
CODE_2382BC:        A9 02         LDA #$02                  
CODE_2382BE:        8D 34 0A      STA $0A34                 
CODE_2382C1:        8D 35 0A      STA $0A35                 
CODE_2382C4:        6B            RTL                       

CODE_2382C5:        AD 28 07      LDA $0728                 
CODE_2382C8:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_2382CC:        dw CODE_2382D2
                    dw CODE_238338
                    dw CODE_2383D1

CODE_2382D2:        20 06 83      JSR CODE_238306
CODE_2382D5:        AD 11 07      LDA $0711                 
CODE_2382D8:        D0 09         BNE CODE_2382E3           
CODE_2382DA:        A9 80         LDA #$80                  
CODE_2382DC:        8D 11 07      STA $0711                 
CODE_2382DF:        22 00 F8 2A   JSL CODE_2AF800           
CODE_2382E3:        CE 11 07      DEC $0711                 
CODE_2382E6:        D0 06         BNE CODE_2382EE           
CODE_2382E8:        EE 85 02      INC $0285                 
CODE_2382EB:        EE 28 07      INC $0728                 
CODE_2382EE:        22 67 F8 2A   JSL CODE_2AF867           
CODE_2382F2:        6B            RTL                       

CODE_2382F3:        AD 11 07      LDA $0711                 
CODE_2382F6:        D0 05         BNE CODE_2382FD           
CODE_2382F8:        A9 80         LDA #$80                  
CODE_2382FA:        8D 11 07      STA $0711                 
CODE_2382FD:        CE 11 07      DEC $0711                 
CODE_238300:        D0 03         BNE CODE_238305           
CODE_238302:        EE 28 07      INC $0728                 
CODE_238305:        6B            RTL                       

CODE_238306:        A0 03         LDY #$03                  
CODE_238308:        B9 14 8B      LDA.w DATA_218B14,y               
CODE_23830B:        99 84 08      STA $0884,y               
CODE_23830E:        88            DEY                       
CODE_23830F:        10 F7         BPL CODE_238308           
CODE_238311:        AE 26 07      LDX $0726                 
CODE_238314:        F0 13         BEQ CODE_238329           
CODE_238316:        A0 03         LDY #$03                  
CODE_238318:        B9 84 08      LDA $0884,y               
CODE_23831B:        09 01         ORA #$01                  
CODE_23831D:        99 84 08      STA $0884,y               
CODE_238320:        BD 47 07      LDA $0747,x               
CODE_238323:        18            CLC                       
CODE_238324:        69 07         ADC #$07                  
CODE_238326:        A8            TAY                       
CODE_238327:        80 03         BRA CODE_23832C           

CODE_238329:        BC 47 07      LDY $0747,x               
CODE_23832C:        B9 18 8B      LDA.w DATA_218B18,y               
CODE_23832F:        8D 86 08      STA $0886                 
CODE_238332:        A9 02         LDA #$02                  
CODE_238334:        8D 41 0A      STA $0A41                 
CODE_238337:        60            RTS                       

CODE_238338:        22 67 F8 2A   JSL CODE_2AF867           
CODE_23833C:        6B            RTL                       

CODE_23833D:        A5 20         LDA $20                   
CODE_23833F:        D0 29         BNE CODE_23836A           
CODE_238341:        A5 23         LDA $23                   
CODE_238343:        29 08         AND #$08                  
CODE_238345:        18            CLC                       
CODE_238346:        69 34         ADC #$34                  
CODE_238348:        85 20         STA $20                   
CODE_23834A:        A5 24         LDA $24                   
CODE_23834C:        29 F0         AND #$F0                  
CODE_23834E:        4A            LSR A                     
CODE_23834F:        4A            LSR A                     
CODE_238350:        4A            LSR A                     
CODE_238351:        A8            TAY                       
CODE_238352:        B9 00 82      LDA.w DATA_218200,y               
CODE_238355:        85 2E         STA $2E                   
CODE_238357:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_23835A:        85 2F         STA $2F                   
CODE_23835C:        E6 2F         INC $2F                   
CODE_23835E:        A9 7E         LDA #$7E                  
CODE_238360:        85 30         STA $30                   
CODE_238362:        A9 08         LDA #$08                  
CODE_238364:        85 9B         STA $9B                   
CODE_238366:        A9 02         LDA #$02                  
CODE_238368:        85 92         STA $92                   
CODE_23836A:        C2 20         REP #$20                  
CODE_23836C:        A9 FF 20      LDA #$20FF                
CODE_23836F:        8D 06 16      STA $1606                 
CODE_238372:        8D 0C 16      STA $160C                 
CODE_238375:        E2 20         SEP #$20                  
CODE_238377:        A9 11         LDA #$11                  
CODE_238379:        8D 02 16      STA $1602                 
CODE_23837C:        8D 08 16      STA $1608                 
CODE_23837F:        A9 C0         LDA #$C0                  
CODE_238381:        8D 04 16      STA $1604                 
CODE_238384:        8D 0A 16      STA $160A                 
CODE_238387:        A9 0E         LDA #$0E                  
CODE_238389:        8D 05 16      STA $1605                 
CODE_23838C:        8D 0B 16      STA $160B                 
CODE_23838F:        A6 9B         LDX $9B                   
CODE_238391:        8E 03 16      STX $1603                 
CODE_238394:        E8            INX                       
CODE_238395:        8E 09 16      STX $1609                 
CODE_238398:        A9 FF         LDA #$FF                  
CODE_23839A:        8D 0E 16      STA $160E                 
CODE_23839D:        A6 20         LDX $20                   
CODE_23839F:        E8            INX                       
CODE_2383A0:        86 20         STX $20                   
CODE_2383A2:        8A            TXA                       
CODE_2383A3:        29 01         AND #$01                  
CODE_2383A5:        D0 0F         BNE CODE_2383B6           
CODE_2383A7:        A6 9C         LDX $9C                   
CODE_2383A9:        E8            INX                       
CODE_2383AA:        8A            TXA                       
CODE_2383AB:        29 07         AND #$07                  
CODE_2383AD:        D0 05         BNE CODE_2383B4           
CODE_2383AF:        A5 9C         LDA $9C                   
CODE_2383B1:        29 F0         AND #$F0                  
CODE_2383B3:        AA            TAX                       
CODE_2383B4:        86 9C         STX $9C                   
CODE_2383B6:        A6 9B         LDX $9B                   
CODE_2383B8:        E8            INX                       
CODE_2383B9:        E8            INX                       
CODE_2383BA:        8A            TXA                       
CODE_2383BB:        29 1F         AND #$1F                  
CODE_2383BD:        D0 02         BNE CODE_2383C1           
CODE_2383BF:        A2 00         LDX #$00                  
CODE_2383C1:        86 9B         STX $9B                   
CODE_2383C3:        E6 9A         INC $9A                   
CODE_2383C5:        A5 9A         LDA $9A                   
CODE_2383C7:        C9 08         CMP #$08                  
CODE_2383C9:        D0 05         BNE CODE_2383D0           
CODE_2383CB:        64 20         STZ $20                   
CODE_2383CD:        EE 28 07      INC $0728                 
CODE_2383D0:        60            RTS                       

CODE_2383D1:        22 D1 B9 29   JSL CODE_29B9D1           
CODE_2383D5:        AD 59 00      LDA $0059                 
CODE_2383D8:        D0 17         BNE CODE_2383F1           
CODE_2383DA:        EE 29 07      INC $0729                 
CODE_2383DD:        9C 28 07      STZ $0728                 
CODE_2383E0:        20 27 8C      JSR CODE_238C27           
CODE_2383E3:        AD 98 05      LDA $0598                 
CODE_2383E6:        F0 09         BEQ CODE_2383F1           
CODE_2383E8:        A9 03         LDA #$03                  
CODE_2383EA:        8D 91 02      STA $0291                 
CODE_2383ED:        22 A9 F9 2A   JSL CODE_2AF9A9           
CODE_2383F1:        6B            RTL                       

CODE_2383F2:        AD 11 07      LDA $0711                 
CODE_2383F5:        D0 05         BNE CODE_2383FC           
CODE_2383F7:        A9 10         LDA #$10                  
CODE_2383F9:        8D 11 07      STA $0711                 
CODE_2383FC:        22 FD 82 23   JSL CODE_2382FD           
CODE_238400:        AD 11 07      LDA $0711                 
CODE_238403:        D0 03         BNE CODE_238408           
CODE_238405:        9C 00 05      STZ $0500                 
CODE_238408:        22 1B 8C 23   JSL CODE_238C1B           
CODE_23840C:        6B            RTL                       

CODE_23840D:        AD 28 07      LDA $0728                 
CODE_238410:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_238414:        dl CODE_23842F
                    dl CODE_238441
                    dl CODE_238606
                    dl CODE_23860B
                    dl CODE_29AAFE
                    dl CODE_29ABE7
                    dl CODE_29AC4C
                    dl CODE_29AC61
                    dl CODE_2383F2

CODE_23842F:        CE D8 02      DEC $02D8                 
CODE_238432:        D0 06         BNE CODE_23843A           
CODE_238434:        EE 28 07      INC $0728                 
CODE_238437:        9C DD 02      STZ $02DD                 
CODE_23843A:        22 67 F8 2A   JSL CODE_2AF867           
CODE_23843E:        4C B0 85      JMP CODE_2385B0           

CODE_238441:        AD DD 02      LDA $02DD                 
CODE_238444:        F0 0C         BEQ CODE_238452           
CODE_238446:        CE DD 02      DEC $02DD                 
CODE_238449:        D0 04         BNE CODE_23844F           
CODE_23844B:        5C DE 80 00   JML CODE_0080DE           

CODE_23844F:        4C 77 85      JMP CODE_238577           

CODE_238452:        22 67 F8 2A   JSL CODE_2AF867           
CODE_238456:        AD 4D 03      LDA $034D                 
CODE_238459:        F0 52         BEQ CODE_2384AD           
CODE_23845B:        A5 18         LDA $18                   
CODE_23845D:        29 20         AND #$20                  
CODE_23845F:        F0 17         BEQ CODE_238478           
CODE_238461:        A9 23         LDA #$23                  
CODE_238463:        8D 03 12      STA $1203                 
CODE_238466:        AD CB 1D      LDA $1DCB                 
CODE_238469:        18            CLC                       
CODE_23846A:        69 10         ADC #$10                  
CODE_23846C:        C9 88         CMP #$88                  
CODE_23846E:        D0 02         BNE CODE_238472           
CODE_238470:        A9 58         LDA #$58                  
CODE_238472:        8D CB 1D      STA $1DCB                 
CODE_238475:        4C 77 85      JMP CODE_238577           

CODE_238478:        A5 18         LDA $18                   
CODE_23847A:        29 0C         AND #$0C                  
CODE_23847C:        F0 67         BEQ CODE_2384E5           
CODE_23847E:        A2 23         LDX #$23                  
CODE_238480:        8E 03 12      STX $1203                 
CODE_238483:        29 08         AND #$08                  
CODE_238485:        F0 11         BEQ CODE_238498           
CODE_238487:        AD CB 1D      LDA $1DCB                 
CODE_23848A:        38            SEC                       
CODE_23848B:        E9 10         SBC #$10                  
CODE_23848D:        C9 48         CMP #$48                  
CODE_23848F:        D0 16         BNE CODE_2384A7           
CODE_238491:        9C 03 12      STZ $1203                 
CODE_238494:        A9 58         LDA #$58                  
CODE_238496:        80 0F         BRA CODE_2384A7           

CODE_238498:        AD CB 1D      LDA $1DCB                 
CODE_23849B:        18            CLC                       
CODE_23849C:        69 10         ADC #$10                  
CODE_23849E:        C9 88         CMP #$88                  
CODE_2384A0:        D0 05         BNE CODE_2384A7           
CODE_2384A2:        9C 03 12      STZ $1203                 
CODE_2384A5:        A9 78         LDA #$78                  
CODE_2384A7:        8D CB 1D      STA $1DCB                 
CODE_2384AA:        4C 77 85      JMP CODE_238577           

CODE_2384AD:        A5 18         LDA $18                   
CODE_2384AF:        29 20         AND #$20                  
CODE_2384B1:        F0 10         BEQ CODE_2384C3           
CODE_2384B3:        A9 23         LDA #$23                  
CODE_2384B5:        8D 03 12      STA $1203                 
CODE_2384B8:        AD CB 1D      LDA $1DCB                 
CODE_2384BB:        49 10         EOR #$10                  
CODE_2384BD:        8D CB 1D      STA $1DCB                 
CODE_2384C0:        4C 77 85      JMP CODE_238577           

CODE_2384C3:        A5 18         LDA $18                   
CODE_2384C5:        29 0C         AND #$0C                  
CODE_2384C7:        F0 1C         BEQ CODE_2384E5           
CODE_2384C9:        A2 23         LDX #$23                  
CODE_2384CB:        8E 03 12      STX $1203                 
CODE_2384CE:        A2 60         LDX #$60                  
CODE_2384D0:        29 08         AND #$08                  
CODE_2384D2:        D0 02         BNE CODE_2384D6           
CODE_2384D4:        A2 70         LDX #$70                  
CODE_2384D6:        8A            TXA                       
CODE_2384D7:        4D CB 1D      EOR $1DCB                 
CODE_2384DA:        D0 03         BNE CODE_2384DF           
CODE_2384DC:        9C 03 12      STZ $1203                 
CODE_2384DF:        8E CB 1D      STX $1DCB                 
CODE_2384E2:        4C 77 85      JMP CODE_238577           

CODE_2384E5:        A5 18         LDA $18                   
CODE_2384E7:        29 10         AND #$10                  
CODE_2384E9:        D0 03         BNE CODE_2384EE           
CODE_2384EB:        4C 77 85      JMP CODE_238577           

CODE_2384EE:        A9 01         LDA #$01                  
CODE_2384F0:        8D 03 12      STA $1203                 
CODE_2384F3:        A2 02         LDX #$02                  
CODE_2384F5:        AD CB 1D      LDA $1DCB                 
CODE_2384F8:        C9 70         CMP #$70                  
CODE_2384FA:        90 02         BCC CODE_2384FE           
CODE_2384FC:        A2 09         LDX #$09                  
CODE_2384FE:        8E 28 07      STX $0728                 
CODE_238501:        8E 85 02      STX $0285                 
CODE_238504:        AD CB 1D      LDA $1DCB                 
CODE_238507:        C9 68         CMP #$68                  
CODE_238509:        90 33         BCC CODE_23853E           
CODE_23850B:        22 93 85 23   JSL CODE_238593           
CODE_23850F:        AD 4D 03      LDA $034D                 
CODE_238512:        F0 2A         BEQ CODE_23853E           
CODE_238514:        A9 3B         LDA #$3B                  
CODE_238516:        8D 00 12      STA $1200                 
CODE_238519:        AD CB 1D      LDA $1DCB                 
CODE_23851C:        C9 78         CMP #$78                  
CODE_23851E:        D0 05         BNE CODE_238525           
CODE_238520:        A9 F3         LDA #$F3                  
CODE_238522:        8D 02 12      STA $1202                 
CODE_238525:        22 2D 92 00   JSL CODE_00922D           
CODE_238529:        AD CB 1D      LDA $1DCB                 
CODE_23852C:        C9 78         CMP #$78                  
CODE_23852E:        D0 0E         BNE CODE_23853E           
CODE_238530:        A9 20         LDA #$20                  
CODE_238532:        8D DD 02      STA $02DD                 
CODE_238535:        A9 01         LDA #$01                  
CODE_238537:        8D 28 07      STA $0728                 
CODE_23853A:        9C 85 02      STZ $0285                 
CODE_23853D:        6B            RTL                       

CODE_23853E:        E0 09         CPX #$09                  
CODE_238540:        D0 31         BNE CODE_238573           
CODE_238542:        9C 85 02      STZ $0285                 
CODE_238545:        9C 02 02      STZ $0202                 
CODE_238548:        9C 01 02      STZ $0201                 
CODE_23854B:        9C 00 02      STZ $0200                 
CODE_23854E:        9C 93 02      STZ $0293                 
CODE_238551:        9C 91 02      STZ $0291                 
CODE_238554:        9C 0A 02      STZ $020A                 
CODE_238557:        A9 03         LDA #$03                  
CODE_238559:        8D 08 02      STA $0208                 
CODE_23855C:        AD 2B 07      LDA $072B                 
CODE_23855F:        C9 02         CMP #$02                  
CODE_238561:        D0 05         BNE CODE_238568           
CODE_238563:        AD 4D 03      LDA $034D                 
CODE_238566:        F0 70         BEQ CODE_2385D8           
CODE_238568:        9C 03 01      STZ $0103                 
CODE_23856B:        AC 26 07      LDY $0726                 
CODE_23856E:        A9 00         LDA #$00                  
CODE_238570:        99 3F 07      STA $073F,y               
CODE_238573:        A9 F0         LDA #$F0                  
CODE_238575:        85 95         STA $95                   
CODE_238577:        A0 0D         LDY #$0D                  
CODE_238579:        A9 F0         LDA #$F0                  
CODE_23857B:        99 00 05      STA $0500,y               
CODE_23857E:        88            DEY                       
CODE_23857F:        10 FA         BPL CODE_23857B           
CODE_238581:        A5 18         LDA $18                   
CODE_238583:        29 2C         AND #$2C                  
CODE_238585:        D0 09         BNE CODE_238590           
CODE_238587:        AD 8F 02      LDA $028F                 
CODE_23858A:        29 10         AND #$10                  
CODE_23858C:        F0 05         BEQ CODE_238593           
CODE_23858E:        80 1D         BRA CODE_2385AD           

CODE_238590:        9C 8F 02      STZ $028F                 
CODE_238593:        AD CB 1D      LDA $1DCB                 
CODE_238596:        8D 95 08      STA $0895                 
CODE_238599:        A9 73         LDA #$73                  
CODE_23859B:        8D 96 08      STA $0896                 
CODE_23859E:        A9 33         LDA #$33                  
CODE_2385A0:        8D 97 08      STA $0897                 
CODE_2385A3:        A9 4F         LDA #$4F                  
CODE_2385A5:        8D 94 08      STA $0894                 
CODE_2385A8:        A9 00         LDA #$00                  
CODE_2385AA:        8D 45 0A      STA $0A45                 
CODE_2385AD:        EE 8F 02      INC $028F                 
CODE_2385B0:        A0 03         LDY #$03                  
CODE_2385B2:        B9 26 8B      LDA.w DATA_218B26,y               
CODE_2385B5:        99 84 08      STA $0884,y               
CODE_2385B8:        88            DEY                       
CODE_2385B9:        10 F7         BPL CODE_2385B2           
CODE_2385BB:        AD 4D 03      LDA $034D                 
CODE_2385BE:        D0 05         BNE CODE_2385C5           
CODE_2385C0:        A9 42         LDA #$42                  
CODE_2385C2:        8D 85 08      STA $0885                 
CODE_2385C5:        AD 26 07      LDA $0726                 
CODE_2385C8:        F0 08         BEQ CODE_2385D2           
CODE_2385CA:        A9 7E         LDA #$7E                  
CODE_2385CC:        8D 86 08      STA $0886                 
CODE_2385CF:        EE 87 08      INC $0887                 
CODE_2385D2:        A9 02         LDA #$02                  
CODE_2385D4:        8D 41 0A      STA $0A41                 
CODE_2385D7:        6B            RTL                       

CODE_2385D8:        DA            PHX                       
CODE_2385D9:        AE 26 07      LDX $0726                 
CODE_2385DC:        BF 7D 39 7E   LDA $7E397D,x             
CODE_2385E0:        9F 75 39 7E   STA $7E3975,x             
CODE_2385E4:        BF 7F 39 7E   LDA $7E397F,x             
CODE_2385E8:        9F 77 39 7E   STA $7E3977,x             
CODE_2385EC:        BF 81 39 7E   LDA $7E3981,x             
CODE_2385F0:        9F 79 39 7E   STA $7E3979,x             
CODE_2385F4:        BF 85 39 7E   LDA $7E3985,x             
CODE_2385F8:        9D 22 07      STA $0722,x               
CODE_2385FB:        BF 87 39 7E   LDA $7E3987,x             
CODE_2385FF:        9D 24 07      STA $0724,x               
CODE_238602:        FA            PLX                       
CODE_238603:        4C 73 85      JMP CODE_238573           

CODE_238606:        22 67 F8 2A   JSL CODE_2AF867           
CODE_23860A:        6B            RTL                       

CODE_23860B:        AD 11 07      LDA $0711                 
CODE_23860E:        D0 05         BNE CODE_238615           
CODE_238610:        A9 10         LDA #$10                  
CODE_238612:        8D 11 07      STA $0711                 
CODE_238615:        22 F3 82 23   JSL CODE_2382F3           
CODE_238619:        AD 28 07      LDA $0728                 
CODE_23861C:        C9 04         CMP #$04                  
CODE_23861E:        D0 0C         BNE CODE_23862C           
CODE_238620:        A5 12         LDA $12                   
CODE_238622:        D0 05         BNE CODE_238629           
CODE_238624:        AD 10 02      LDA $0210                 
CODE_238627:        F0 03         BEQ CODE_23862C           
CODE_238629:        EE 28 07      INC $0728                 
CODE_23862C:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238630:        6B            RTL                       

CODE_238631:        A9 0D         LDA #$0D                  
CODE_238633:        8D 29 07      STA $0729                 
CODE_238636:        22 1B 8C 23   JSL CODE_238C1B           
CODE_23863A:        6B            RTL                       

CODE_23863B:        AD 11 07      LDA $0711                 
CODE_23863E:        D0 05         BNE CODE_238645           
CODE_238640:        A9 0E         LDA #$0E                  
CODE_238642:        8D 11 07      STA $0711                 
CODE_238645:        CE 11 07      DEC $0711                 
CODE_238648:        D0 03         BNE CODE_23864D           
CODE_23864A:        EE 29 07      INC $0729                 
CODE_23864D:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238651:        6B            RTL                       

CODE_238652:        A5 20         LDA $20                   
CODE_238654:        F0 03         BEQ CODE_238659           
CODE_238656:        4C 58 87      JMP CODE_238758           

CODE_238659:        AD 46 07      LDA $0746                 
CODE_23865C:        D0 03         BNE CODE_238661           
CODE_23865E:        4C 85 87      JMP CODE_238785           

CODE_238661:        AD 11 07      LDA $0711                 
CODE_238664:        D0 05         BNE CODE_23866B           
CODE_238666:        A9 20         LDA #$20                  
CODE_238668:        8D 11 07      STA $0711                 
CODE_23866B:        22 8D 87 23   JSL CODE_23878D           
CODE_23866F:        AD 11 07      LDA $0711                 
CODE_238672:        F0 05         BEQ CODE_238679           
CODE_238674:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238678:        6B            RTL                       

CODE_238679:        CE 46 07      DEC $0746                 
CODE_23867C:        A9 15         LDA #$15                  
CODE_23867E:        8D 03 12      STA $1203                 
CODE_238681:        AC 27 07      LDY $0727                 
CODE_238684:        B9 49 8C      LDA.w DATA_218C49,y               
CODE_238687:        18            CLC                       
CODE_238688:        6D 46 07      ADC $0746                 
CODE_23868B:        A8            TAY                       
CODE_23868C:        B9 29 8C      LDA.w DATA_218C29,y               
CODE_23868F:        8D 46 07      STA $0746                 
CODE_238692:        A9 01         LDA #$01                  
CODE_238694:        85 20         STA $20                   
CODE_238696:        AC 00 16      LDY $1600                 
CODE_238699:        AE 46 07      LDX $0746                 
CODE_23869C:        BD 2A 8B      LDA.w DATA_218B2A,x               
CODE_23869F:        85 0A         STA $0A                   
CODE_2386A1:        99 02 16      STA $1602,y               
CODE_2386A4:        C8            INY                       
CODE_2386A5:        BD 3B 8B      LDA.w DATA_218B3B,x               
CODE_2386A8:        85 0B         STA $0B                   
CODE_2386AA:        99 02 16      STA $1602,y               
CODE_2386AD:        C8            INY                       
CODE_2386AE:        A9 00         LDA #$00                  
CODE_2386B0:        99 02 16      STA $1602,y               
CODE_2386B3:        C8            INY                       
CODE_2386B4:        A9 03         LDA #$03                  
CODE_2386B6:        99 02 16      STA $1602,y               
CODE_2386B9:        C8            INY                       
CODE_2386BA:        AD 46 07      LDA $0746                 
CODE_2386BD:        0A            ASL A                     
CODE_2386BE:        0A            ASL A                     
CODE_2386BF:        0A            ASL A                     
CODE_2386C0:        AA            TAX                       
CODE_2386C1:        C2 20         REP #$20                  
CODE_2386C3:        BD 6E 8B      LDA.w DATA_218B6E,x               
CODE_2386C6:        99 02 16      STA $1602,y               
CODE_2386C9:        C8            INY                       
CODE_2386CA:        C8            INY                       
CODE_2386CB:        BD 70 8B      LDA.w DATA_218B70,x               
CODE_2386CE:        99 02 16      STA $1602,y               
CODE_2386D1:        C8            INY                       
CODE_2386D2:        C8            INY                       
CODE_2386D3:        A5 0A         LDA $0A                   
CODE_2386D5:        18            CLC                       
CODE_2386D6:        69 00 20      ADC #$2000                
CODE_2386D9:        85 0A         STA $0A                   
CODE_2386DB:        99 02 16      STA $1602,y               
CODE_2386DE:        C8            INY                       
CODE_2386DF:        C8            INY                       
CODE_2386E0:        A9 00 03      LDA #$0300                
CODE_2386E3:        99 02 16      STA $1602,y               
CODE_2386E6:        C8            INY                       
CODE_2386E7:        C8            INY                       
CODE_2386E8:        BD 72 8B      LDA.w DATA_218B72,x               
CODE_2386EB:        99 02 16      STA $1602,y               
CODE_2386EE:        C8            INY                       
CODE_2386EF:        C8            INY                       
CODE_2386F0:        BD 74 8B      LDA.w DATA_218B74,x               
CODE_2386F3:        99 02 16      STA $1602,y               
CODE_2386F6:        C8            INY                       
CODE_2386F7:        C8            INY                       
CODE_2386F8:        E2 20         SEP #$20                  
CODE_2386FA:        A9 FF         LDA #$FF                  
CODE_2386FC:        99 02 16      STA $1602,y               
CODE_2386FF:        8C 00 16      STY $1600                 
CODE_238702:        AD 46 07      LDA $0746                 
CODE_238705:        0A            ASL A                     
CODE_238706:        A8            TAY                       
CODE_238707:        B9 4C 8B      LDA.w DATA_218B4C,y               
CODE_23870A:        85 0A         STA $0A                   
CODE_23870C:        C8            INY                       
CODE_23870D:        B9 4C 8B      LDA.w DATA_218B4C,y               
CODE_238710:        85 0B         STA $0B                   
CODE_238712:        A4 0A         LDY $0A                   
CODE_238714:        B9 00 1D      LDA $1D00,y               
CODE_238717:        25 0B         AND $0B                   
CODE_238719:        D0 65         BNE CODE_238780           
CODE_23871B:        B9 00 1D      LDA $1D00,y               
CODE_23871E:        05 0B         ORA $0B                   
CODE_238720:        99 00 1D      STA $1D00,y               
CODE_238723:        B9 40 1D      LDA $1D40,y               
CODE_238726:        05 0B         ORA $0B                   
CODE_238728:        99 40 1D      STA $1D40,y               
CODE_23872B:        AE 46 07      LDX $0746                 
CODE_23872E:        BD 07 8C      LDA.w DATA_218C07,x               
CODE_238731:        29 0F         AND #$0F                  
CODE_238733:        0A            ASL A                     
CODE_238734:        A8            TAY                       
CODE_238735:        B9 00 82      LDA.w DATA_218200,y               
CODE_238738:        18            CLC                       
CODE_238739:        69 F0         ADC #$F0                  
CODE_23873B:        85 0D         STA $0D                   
CODE_23873D:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_238740:        69 00         ADC #$00                  
CODE_238742:        85 0E         STA $0E                   
CODE_238744:        A9 7E         LDA #$7E                  
CODE_238746:        85 0F         STA $0F                   
CODE_238748:        BD 07 8C      LDA.w DATA_218C07,x               
CODE_23874B:        4A            LSR A                     
CODE_23874C:        4A            LSR A                     
CODE_23874D:        4A            LSR A                     
CODE_23874E:        4A            LSR A                     
CODE_23874F:        1D F6 8B      ORA.w DATA_218BF6,x               
CODE_238752:        A8            TAY                       
CODE_238753:        BD 18 8C      LDA.w DATA_218C18,x               
CODE_238756:        97 0D         STA [$0D],y               
CODE_238758:        A5 15         LDA $15                   
CODE_23875A:        29 03         AND #$03                  
CODE_23875C:        D0 08         BNE CODE_238766           
CODE_23875E:        E6 20         INC $20                   
CODE_238760:        A5 20         LDA $20                   
CODE_238762:        C9 05         CMP #$05                  
CODE_238764:        F0 1A         BEQ CODE_238780           
CODE_238766:        AC 46 07      LDY $0746                 
CODE_238769:        B9 F6 8B      LDA.w DATA_218BF6,y               
CODE_23876C:        85 00         STA $00                   
CODE_23876E:        B9 07 8C      LDA.w DATA_218C07,y               
CODE_238771:        29 F0         AND #$F0                  
CODE_238773:        85 01         STA $01                   
CODE_238775:        A4 20         LDY $20                   
CODE_238777:        22 1F B1 29   JSL CODE_29B11F           
CODE_23877B:        22 1B 8C 23   JSL CODE_238C1B           
CODE_23877F:        6B            RTL                       

CODE_238780:        9C 46 07      STZ $0746                 
CODE_238783:        64 20         STZ $20                   
CODE_238785:        EE 29 07      INC $0729                 
CODE_238788:        22 1B 8C 23   JSL CODE_238C1B           
CODE_23878C:        6B            RTL                       

CODE_23878D:        AD 11 07      LDA $0711                 
CODE_238790:        29 1F         AND #$1F                  
CODE_238792:        D0 1E         BNE CODE_2387B2           
CODE_238794:        A9 12         LDA #$12                  
CODE_238796:        8D 08 02      STA $0208                 
CODE_238799:        A9 01         LDA #$01                  
CODE_23879B:        8D 09 02      STA $0209                 
CODE_23879E:        A9 02         LDA #$02                  
CODE_2387A0:        8D 03 02      STA $0203                 
CODE_2387A3:        A9 20         LDA #$20                  
CODE_2387A5:        8D 04 02      STA $0204                 
CODE_2387A8:        AD 98 05      LDA $0598                 
CODE_2387AB:        F0 05         BEQ CODE_2387B2           
CODE_2387AD:        A9 01         LDA #$01                  
CODE_2387AF:        8D 0B 02      STA $020B                 
CODE_2387B2:        AD 11 07      LDA $0711                 
CODE_2387B5:        29 04         AND #$04                  
CODE_2387B7:        4A            LSR A                     
CODE_2387B8:        AA            TAX                       
CODE_2387B9:        C2 20         REP #$20                  
CODE_2387BB:        BF E0 87 23   LDA.l DATA_2387E0,x             
CODE_2387BF:        8D 00 13      STA $1300                 
CODE_2387C2:        E2 20         SEP #$20                  
CODE_2387C4:        A9 01         LDA #$01                  
CODE_2387C6:        8D 00 15      STA $1500                 
CODE_2387C9:        CE 11 07      DEC $0711                 
CODE_2387CC:        D0 11         BNE CODE_2387DF           
CODE_2387CE:        A9 17         LDA #$17                  
CODE_2387D0:        8D 08 02      STA $0208                 
CODE_2387D3:        9C 09 02      STZ $0209                 
CODE_2387D6:        9C 03 02      STZ $0203                 
CODE_2387D9:        9C 04 02      STZ $0204                 
CODE_2387DC:        9C 0B 02      STZ $020B                 
CODE_2387DF:        6B            RTL                       

DATA_2387E0:        db $00,$00,$FF,$7F

CODE_2387E4:        AF 6D 39 7E   LDA $7E396D
CODE_2387E8:        F0 0A         BEQ CODE_2387F4
CODE_2387EA:        A9 0C         LDA #$0C                  
CODE_2387EC:        8D 29 07      STA $0729                 
CODE_2387EF:        22 1B 8C 23   JSL CODE_238C1B           
CODE_2387F3:        6B            RTL                       

CODE_2387F4:        22 1B 8C 23   JSL CODE_238C1B           
CODE_2387F8:        A0 0D         LDY #$0D                  
CODE_2387FA:        B9 3C 05      LDA $053C,y               
CODE_2387FD:        D0 2E         BNE CODE_23882D           
CODE_2387FF:        88            DEY                       
CODE_238800:        10 F8         BPL CODE_2387FA           
CODE_238802:        A9 08         LDA #$08                  
CODE_238804:        8D 3C 05      STA $053C                 
CODE_238807:        EE 29 07      INC $0729                 
CODE_23880A:        A0 0D         LDY #$0D                  
CODE_23880C:        B9 00 05      LDA $0500,y               
CODE_23880F:        18            CLC                       
CODE_238810:        69 08         ADC #$08                  
CODE_238812:        29 F0         AND #$F0                  
CODE_238814:        99 ED 1E      STA $1EED,y               
CODE_238817:        B9 0F 05      LDA $050F,y               
CODE_23881A:        18            CLC                       
CODE_23881B:        69 08         ADC #$08                  
CODE_23881D:        29 F0         AND #$F0                  
CODE_23881F:        99 FB 1E      STA $1EFB,y               
CODE_238822:        B9 1E 05      LDA $051E,y               
CODE_238825:        69 00         ADC #$00                  
CODE_238827:        99 09 1F      STA $1F09,y               
CODE_23882A:        88            DEY                       
CODE_23882B:        10 DF         BPL CODE_23880C           
CODE_23882D:        6B            RTL                       

CODE_23882E:        AD 11 07      LDA $0711                 
CODE_238831:        D0 05         BNE CODE_238838           
CODE_238833:        A9 08         LDA #$08                  
CODE_238835:        8D 11 07      STA $0711                 
CODE_238838:        CE 11 07      DEC $0711                 
CODE_23883B:        D0 42         BNE CODE_23887F           
CODE_23883D:        AE 26 07      LDX $0726                 
CODE_238840:        64 F2         STZ $F2                   
CODE_238842:        64 F6         STZ $F6                   
CODE_238844:        64 F3         STZ $F3                   
CODE_238846:        64 F7         STZ $F7                   
CODE_238848:        A9 FF         LDA #$FF                  
CODE_23884A:        9F 50 39 7E   STA $7E3950,x             
CODE_23884E:        AF 6D 39 7E   LDA $7E396D               
CODE_238852:        D0 25         BNE CODE_238879           
CODE_238854:        AD 27 07      LDA $0727                 
CODE_238857:        C9 02         CMP #$02                  
CODE_238859:        D0 08         BNE CODE_238863           
CODE_23885B:        AD BC 07      LDA $07BC                 
CODE_23885E:        49 01         EOR #$01                  
CODE_238860:        8D BC 07      STA $07BC                 
CODE_238863:        AD 2B 07      LDA $072B                 
CODE_238866:        C9 01         CMP #$01                  
CODE_238868:        F0 0F         BEQ CODE_238879           
CODE_23886A:        AE 26 07      LDX $0726                 
CODE_23886D:        A9 01         LDA #$01                  
CODE_23886F:        9D 3F 07      STA $073F,x               
CODE_238872:        A9 0F         LDA #$0F                  
CODE_238874:        8D 29 07      STA $0729                 
CODE_238877:        80 06         BRA CODE_23887F           
CODE_238879:        EE 29 07      INC $0729                 
CODE_23887C:        9C 28 07      STZ $0728                 
CODE_23887F:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238883:        6B            RTL                       

CODE_238884:        AD 28 07      LDA $0728                 
CODE_238887:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_23888B:        dl CODE_238A0E
                    dl CODE_238A4E

CODE_238891:        AD 17 04      LDA $0417                 
CODE_238894:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_238898:        dw CODE_2388A6
                    dw CODE_2388A6
                    dw CODE_238922
                    dw CODE_238922
                    dw CODE_238951
                    dw CODE_238956
                    dw CODE_2389FE

CODE_2388A6:        A6 20         LDX $20                   
CODE_2388A8:        A5 24         LDA $24
CODE_2388AA:        18            CLC                       
CODE_2388AB:        7D 5A 8C      ADC.w DATA_218C5A,x               
CODE_2388AE:        48            PHA                       
CODE_2388AF:        29 F0         AND #$F0                  
CODE_2388B1:        4A            LSR A                     
CODE_2388B2:        4A            LSR A                     
CODE_2388B3:        4A            LSR A                     
CODE_2388B4:        A8            TAY                       
CODE_2388B5:        B9 00 82      LDA.w DATA_218200,y               
CODE_2388B8:        18            CLC                       
CODE_2388B9:        69 F0         ADC #$F0                  
CODE_2388BB:        85 2E         STA $2E                   
CODE_2388BD:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_2388C0:        69 00         ADC #$00                  
CODE_2388C2:        85 2F         STA $2F                   
CODE_2388C4:        68            PLA                       
CODE_2388C5:        29 0F         AND #$0F                  
CODE_2388C7:        85 04         STA $04                   
CODE_2388C9:        A2 00         LDX #$00                  
CODE_2388CB:        A5 20         LDA $20                   
CODE_2388CD:        29 01         AND #$01                  
CODE_2388CF:        F0 02         BEQ CODE_2388D3           
CODE_2388D1:        A2 06         LDX #$06                  
CODE_2388D3:        A4 04         LDY $04                   
CODE_2388D5:        B7 2E         LDA [$2E],y               
CODE_2388D7:        29 C0         AND #$C0                  
CODE_2388D9:        85 00         STA $00                   
CODE_2388DB:        C8            INY                       
CODE_2388DC:        B7 2E         LDA [$2E],y               
CODE_2388DE:        29 C0         AND #$C0                  
CODE_2388E0:        85 01         STA $01                   
CODE_2388E2:        98            TYA                       
CODE_2388E3:        18            CLC                       
CODE_2388E4:        69 0F         ADC #$0F                  
CODE_2388E6:        A8            TAY                       
CODE_2388E7:        B7 2E         LDA [$2E],y               
CODE_2388E9:        29 C0         AND #$C0                  
CODE_2388EB:        85 02         STA $02                   
CODE_2388ED:        C8            INY                       
CODE_2388EE:        B7 2E         LDA [$2E],y               
CODE_2388F0:        29 C0         AND #$C0                  
CODE_2388F2:        85 03         STA $03                   
CODE_2388F4:        A5 00         LDA $00                   
CODE_2388F6:        4A            LSR A                     
CODE_2388F7:        4A            LSR A                     
CODE_2388F8:        05 01         ORA $01                   
CODE_2388FA:        4A            LSR A                     
CODE_2388FB:        4A            LSR A                     
CODE_2388FC:        05 02         ORA $02                   
CODE_2388FE:        4A            LSR A                     
CODE_2388FF:        4A            LSR A                     
CODE_238900:        05 03         ORA $03                   
CODE_238902:        9D C0 1E      STA $1EC0,x               
CODE_238905:        E8            INX                       
CODE_238906:        A5 04         LDA $04                   
CODE_238908:        18            CLC                       
CODE_238909:        69 20         ADC #$20                  
CODE_23890B:        85 04         STA $04                   
CODE_23890D:        29 F0         AND #$F0                  
CODE_23890F:        C9 C0         CMP #$C0                  
CODE_238911:        D0 C0         BNE CODE_2388D3           
CODE_238913:        E6 20         INC $20                   
CODE_238915:        A5 20         LDA $20                   
CODE_238917:        29 01         AND #$01                  
CODE_238919:        D0 04         BNE CODE_23891F           
CODE_23891B:        A9 00         LDA #$00                  
CODE_23891D:        85 20         STA $20                   
CODE_23891F:        4C 4C 89      JMP CODE_23894C           

CODE_238922:        AD 17 04      LDA $0417                 
CODE_238925:        C9 02         CMP #$02                  
CODE_238927:        D0 14         BNE CODE_23893D           
CODE_238929:        A0 12         LDY #$12                  
CODE_23892B:        E6 20         INC $20                   
CODE_23892D:        A5 20         LDA $20                   
CODE_23892F:        C9 04         CMP #$04                  
CODE_238931:        D0 07         BNE CODE_23893A           
CODE_238933:        A9 00         LDA #$00                  
CODE_238935:        85 20         STA $20                   
CODE_238937:        EE 17 04      INC $0417                 
CODE_23893A:        4C 4C 89      JMP CODE_23894C           

CODE_23893D:        E6 20         INC $20                   
CODE_23893F:        A5 20         LDA $20                   
CODE_238941:        29 01         AND #$01                  
CODE_238943:        D0 07         BNE CODE_23894C           
CODE_238945:        A9 00         LDA #$00                  
CODE_238947:        8D 17 04      STA $0417                 
CODE_23894A:        85 20         STA $20                   
CODE_23894C:        22 D7 8D 23   JSL CODE_238DD7           
CODE_238950:        6B            RTL                       

CODE_238951:        64 20         STZ $20                   
CODE_238953:        EE 17 04      INC $0417                 
CODE_238956:        A4 20         LDY $20                   
CODE_238958:        A5 24         LDA $24                   
CODE_23895A:        18            CLC                       
CODE_23895B:        79 97 8C      ADC.w DATA_218C97,y               
CODE_23895E:        85 24         STA $24                   
CODE_238960:        29 F0         AND #$F0                  
CODE_238962:        4A            LSR A                     
CODE_238963:        4A            LSR A                     
CODE_238964:        4A            LSR A                     
CODE_238965:        A8            TAY                       
CODE_238966:        B9 00 82      LDA.w DATA_218200,y               
CODE_238969:        85 2E         STA $2E                   
CODE_23896B:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_23896E:        85 2F         STA $2F                   
CODE_238970:        E6 2F         INC $2F                   
CODE_238972:        A9 7E         LDA #$7E                  
CODE_238974:        85 30         STA $30                   
CODE_238976:        A5 24         LDA $24                   
CODE_238978:        29 0F         AND #$0F                  
CODE_23897A:        85 00         STA $00                   
CODE_23897C:        A2 00         LDX #$00                  
CODE_23897E:        AD 0A 07      LDA $070A                 
CODE_238981:        0A            ASL A                     
CODE_238982:        A8            TAY                       
CODE_238983:        B9 5A CE      LDA.w DATA_21CE5A,y               
CODE_238986:        85 0D         STA $0D                   
CODE_238988:        B9 5B CE      LDA.w DATA_21CE5A+1,y               
CODE_23898B:        85 0E         STA $0E                   
CODE_23898D:        AC 0A 07      LDY $070A                 
CODE_238990:        B9 80 CE      LDA.w DATA_21CE80,y               
CODE_238993:        85 0F         STA $0F                   
CODE_238995:        A4 00         LDY $00                   
CODE_238997:        B7 2E         LDA [$2E],y               
CODE_238999:        C2 30         REP #$30                  
CODE_23899B:        29 FF 00      AND #$00FF                
CODE_23899E:        0A            ASL A                     
CODE_23899F:        0A            ASL A                     
CODE_2389A0:        0A            ASL A                     
CODE_2389A1:        A8            TAY                       
CODE_2389A2:        8A            TXA                       
CODE_2389A3:        29 FF 00      AND #$00FF                
CODE_2389A6:        AA            TAX                       
CODE_2389A7:        A5 20         LDA $20                   
CODE_2389A9:        29 01 00      AND #$0001                
CODE_2389AC:        D0 04         BNE CODE_2389B2           
CODE_2389AE:        C8            INY                       
CODE_2389AF:        C8            INY                       
CODE_2389B0:        C8            INY                       
CODE_2389B1:        C8            INY                       
CODE_2389B2:        B7 0D         LDA [$0D],y               
CODE_2389B4:        9D C2 03      STA $03C2,x               
CODE_2389B7:        C8            INY                       
CODE_2389B8:        C8            INY                       
CODE_2389B9:        B7 0D         LDA [$0D],y               
CODE_2389BB:        9D C4 03      STA $03C4,x               
CODE_2389BE:        E8            INX                       
CODE_2389BF:        E8            INX                       
CODE_2389C0:        E8            INX                       
CODE_2389C1:        E8            INX                       
CODE_2389C2:        E2 30         SEP #$30                  
CODE_2389C4:        A5 00         LDA $00                   
CODE_2389C6:        18            CLC                       
CODE_2389C7:        69 10         ADC #$10                  
CODE_2389C9:        85 00         STA $00                   
CODE_2389CB:        29 F0         AND #$F0                  
CODE_2389CD:        C9 B0         CMP #$B0                  
CODE_2389CF:        D0 AD         BNE CODE_23897E           
CODE_2389D1:        A5 24         LDA $24                   
CODE_2389D3:        29 0F         AND #$0F                  
CODE_2389D5:        0A            ASL A                     
CODE_2389D6:        A8            TAY                       
CODE_2389D7:        A5 20         LDA $20                   
CODE_2389D9:        29 01         AND #$01                  
CODE_2389DB:        D0 01         BNE CODE_2389DE           
CODE_2389DD:        C8            INY                       
CODE_2389DE:        8C 81 03      STY $0381                 
CODE_2389E1:        A2 00         LDX #$00                  
CODE_2389E3:        A5 24         LDA $24                   
CODE_2389E5:        29 10         AND #$10                  
CODE_2389E7:        F0 02         BEQ CODE_2389EB           
CODE_2389E9:        A2 04         LDX #$04                  
CODE_2389EB:        8E 80 03      STX $0380                 
CODE_2389EE:        E6 20         INC $20                   
CODE_2389F0:        A5 20         LDA $20                   
CODE_2389F2:        C9 04         CMP #$04                  
CODE_2389F4:        D0 05         BNE CODE_2389FB           
CODE_2389F6:        64 20         STZ $20                   
CODE_2389F8:        EE 17 04      INC $0417                 
CODE_2389FB:        4C 4C 89      JMP CODE_23894C           

CODE_2389FE:        E6 20         INC $20                   
CODE_238A00:        A5 20         LDA $20                   
CODE_238A02:        29 01         AND #$01                  
CODE_238A04:        D0 05         BNE CODE_238A0B           
CODE_238A06:        9C 17 04      STZ $0417                 
CODE_238A09:        64 20         STZ $20                   
CODE_238A0B:        4C 4C 89      JMP CODE_23894C           

CODE_238A0E:        EE 28 07      INC $0728                 
CODE_238A11:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238A15:        6B            RTL                       

CODE_238A16:        AE 26 07      LDX $0726                 
CODE_238A19:        A9 00         LDA #$00                  
CODE_238A1B:        8D 2C 07      STA $072C                 
CODE_238A1E:        8F 94 39 7E   STA $7E3994               
CODE_238A22:        9D 3D 07      STA $073D,x               
CODE_238A25:        8D 0F 07      STA $070F                 
CODE_238A28:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238A2C:        60            RTS                       

CODE_238A2D:        A9 03         LDA #$03                  
CODE_238A2F:        8D 13 07      STA $0713                 
CODE_238A32:        A9 80         LDA #$80                  
CODE_238A34:        8D 11 07      STA $0711                 
CODE_238A37:        AE 26 07      LDX $0726                 
CODE_238A3A:        A9 00         LDA #$00                  
CODE_238A3C:        8D 2C 07      STA $072C                 
CODE_238A3F:        8F 94 39 7E   STA $7E3994               
CODE_238A43:        9D 3D 07      STA $073D,x               
CODE_238A46:        EE 28 07      INC $0728                 
CODE_238A49:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238A4D:        60            RTS                       

CODE_238A4E:        A9 00         LDA #$00                  
CODE_238A50:        8F 6D 39 7E   STA $7E396D               
CODE_238A54:        8F 72 39 7E   STA $7E3972               
CODE_238A58:        AE 26 07      LDX $0726                 
CODE_238A5B:        B5 49         LDA $49,x                 
CODE_238A5D:        F0 03         BEQ CODE_238A62           
CODE_238A5F:        4C D5 8B      JMP CODE_238BD5           

CODE_238A62:        AD 10 07      LDA $0710                 
CODE_238A65:        F0 03         BEQ CODE_238A6A           
CODE_238A67:        82 33 01      BRL CODE_238B9D           

CODE_238A6A:        A5 18         LDA $18                   
CODE_238A6C:        29 0F         AND #$0F                  
CODE_238A6E:        F0 05         BEQ CODE_238A75           
CODE_238A70:        A9 01         LDA #$01                  
CODE_238A72:        8D 00 12      STA $1200                 
CODE_238A75:        22 D8 8D 23   JSL CODE_238DD8           
CODE_238A79:        29 C0         AND #$C0                  
CODE_238A7B:        18            CLC                       
CODE_238A7C:        2A            ROL A                     
CODE_238A7D:        2A            ROL A                     
CODE_238A7E:        2A            ROL A                     
CODE_238A7F:        A8            TAY                       
CODE_238A80:        A5 B3         LDA $B3                   
CODE_238A82:        D9 9A 1E      CMP $1E9A,y               
CODE_238A85:        90 18         BCC CODE_238A9F           
CODE_238A87:        A5 17         LDA $17                   
CODE_238A89:        29 0F         AND #$0F                  
CODE_238A8B:        F0 12         BEQ CODE_238A9F           
CODE_238A8D:        A0 03         LDY #$03                  
CODE_238A8F:        D9 B4 8D      CMP.w DATA_218DB4,y               
CODE_238A92:        F0 03         BEQ CODE_238A97           
CODE_238A94:        88            DEY                       
CODE_238A95:        D0 F8         BNE CODE_238A8F           
CODE_238A97:        AD D5 1D      LDA $1DD5                 
CODE_238A9A:        D9 B8 8D      CMP.w DATA_218DB8,y               
CODE_238A9D:        D0 03         BNE CODE_238AA2           
CODE_238A9F:        82 78 00      BRL CODE_238B1A           

CODE_238AA2:        AD D5 1D      LDA $1DD5                 
CODE_238AA5:        48            PHA                       
CODE_238AA6:        20 15 8E      JSR CODE_238E15           
CODE_238AA9:        68            PLA                       
CODE_238AAA:        8D D5 1D      STA $1DD5                 
CODE_238AAD:        AD 03 12      LDA $1203                 
CODE_238AB0:        F0 65         BEQ CODE_238B17           
CODE_238AB2:        AD 29 04      LDA $0429                 
CODE_238AB5:        C9 07         CMP #$07                  
CODE_238AB7:        F0 12         BEQ CODE_238ACB           
CODE_238AB9:        AE 26 07      LDX $0726                 
CODE_238ABC:        A9 00         LDA #$00                  
CODE_238ABE:        95 49         STA $49,x                 
CODE_238AC0:        8D 03 12      STA $1203                 
CODE_238AC3:        A9 01         LDA #$01                  
CODE_238AC5:        8D 00 12      STA $1200                 
CODE_238AC8:        4C 27 8B      JMP CODE_238B27           

CODE_238ACB:        A5 03         LDA $03                   
CODE_238ACD:        29 0F         AND #$0F                  
CODE_238ACF:        8D D5 1D      STA $1DD5                 
CODE_238AD2:        AE 26 07      LDX $0726                 
CODE_238AD5:        BD 47 07      LDA $0747,x               
CODE_238AD8:        8D 29 04      STA $0429                 
CODE_238ADB:        C2 30         REP #$30                  
CODE_238ADD:        AD 29 04      LDA $0429                 
CODE_238AE0:        29 FF 00      AND #$00FF                
CODE_238AE3:        0A            ASL A                     
CODE_238AE4:        85 D8         STA $D8                   
CODE_238AE6:        BF 1D C8 29   LDA.l DATA_29C81D,x             
CODE_238AEA:        29 FF 00      AND #$00FF                
CODE_238AED:        0A            ASL A                     
CODE_238AEE:        18            CLC                       
CODE_238AEF:        65 D8         ADC $D8                   
CODE_238AF1:        AA            TAX                       
CODE_238AF2:        BF E3 C7 29   LDA.l PNTR_29C7E3,x             
CODE_238AF6:        8B            PHB                       
CODE_238AF7:        AA            TAX                       
CODE_238AF8:        A0 E0 14      LDY #$14E0                
CODE_238AFB:        A9 1F 00      LDA #$001F                
CODE_238AFE:        54 00 3C      MVN $00, DATA_3C88A0>>16  ;first data pointer in above table              
CODE_238B01:        AB            PLB                       
CODE_238B02:        A2 1E 00      LDX #$001E                
CODE_238B05:        BD E0 14      LDA $14E0,x               
CODE_238B08:        9F 00 C5 7F   STA $7FC500,x             
CODE_238B0C:        CA            DEX                       
CODE_238B0D:        CA            DEX                       
CODE_238B0E:        10 F5         BPL CODE_238B05           
CODE_238B10:        E2 30         SEP #$30                  
CODE_238B12:        A9 01         LDA #$01                  
CODE_238B14:        8D 00 15      STA $1500                 
CODE_238B17:        4C 1D 8B      JMP CODE_238B1D           

CODE_238B1A:        20 15 8E      JSR CODE_238E15           
CODE_238B1D:        AE 26 07      LDX $0726                 
CODE_238B20:        B5 49         LDA $49,x                 
CODE_238B22:        F0 03         BEQ CODE_238B27           
CODE_238B24:        4C D5 8B      JMP CODE_238BD5           

CODE_238B27:        A5 B3         LDA $B3                   
CODE_238B29:        C9 BC         CMP #$BC                  
CODE_238B2B:        D0 0F         BNE CODE_238B3C           
CODE_238B2D:        AE 26 07      LDX $0726                 
CODE_238B30:        B5 F8         LDA $F8,x                 
CODE_238B32:        30 19         BMI CODE_238B4D           
CODE_238B34:        B5 F6         LDA $F6,x                 
CODE_238B36:        29 80         AND #$80                  
CODE_238B38:        D0 13         BNE CODE_238B4D           
CODE_238B3A:        80 0E         BRA CODE_238B4A           

CODE_238B3C:        A5 F8         LDA $F8                   
CODE_238B3E:        05 F9         ORA $F9                   
CODE_238B40:        30 0B         BMI CODE_238B4D           
CODE_238B42:        A5 F6         LDA $F6                   
CODE_238B44:        05 F7         ORA $F7                   
CODE_238B46:        29 80         AND #$80                  
CODE_238B48:        D0 03         BNE CODE_238B4D           
CODE_238B4A:        4C D0 8B      JMP CODE_238BD0           

CODE_238B4D:        AD 2B 07      LDA $072B                 
CODE_238B50:        C9 02         CMP #$02                  
CODE_238B52:        D0 53         BNE CODE_238BA7           
CODE_238B54:        AE 26 07      LDX $0726                 
CODE_238B57:        8A            TXA                       
CODE_238B58:        49 01         EOR #$01                  
CODE_238B5A:        A8            TAY                       
CODE_238B5B:        B9 36 07      LDA $0736,y               
CODE_238B5E:        C9 FF         CMP #$FF                  
CODE_238B60:        F0 45         BEQ CODE_238BA7           
CODE_238B62:        B5 45         LDA $45,x                 
CODE_238B64:        D9 45 00      CMP $0045,y               
CODE_238B67:        D0 3E         BNE CODE_238BA7           
CODE_238B69:        B5 43         LDA $43,x                 
CODE_238B6B:        D9 43 00      CMP $0043,y               
CODE_238B6E:        D0 37         BNE CODE_238BA7           
CODE_238B70:        B5 47         LDA $47,x                 
CODE_238B72:        D9 47 00      CMP $0047,y               
CODE_238B75:        D0 30         BNE CODE_238BA7           
CODE_238B77:        AF F4 1F 70   LDA $701FF4               
CODE_238B7B:        D0 25         BNE CODE_238BA2           
CODE_238B7D:        AF F6 1F 70   LDA $701FF6               
CODE_238B81:        C9 02         CMP #$02                  
CODE_238B83:        D0 1D         BNE CODE_238BA2           
CODE_238B85:        A9 12         LDA #$12                  
CODE_238B87:        85 1D         STA $1D                   
CODE_238B89:        A9 10         LDA #$10                  
CODE_238B8B:        8D 29 07      STA $0729                 
CODE_238B8E:        AE 26 07      LDX $0726                 
CODE_238B91:        A9 00         LDA #$00                  
CODE_238B93:        9D 3F 07      STA $073F,x               
CODE_238B96:        8D 28 07      STA $0728                 
CODE_238B99:        8F 6D 39 7E   STA $7E396D               
CODE_238B9D:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238BA1:        6B            RTL                       

CODE_238BA2:        A9 2A         LDA #$2A                  
CODE_238BA4:        8D 03 12      STA $1203                 
CODE_238BA7:        AE 26 07      LDX $0726                 
CODE_238BAA:        B5 F8         LDA $F8,x                 
CODE_238BAC:        30 06         BMI CODE_238BB4           
CODE_238BAE:        A5 18         LDA $18                   
CODE_238BB0:        29 80         AND #$80                  
CODE_238BB2:        F0 1C         BEQ CODE_238BD0           
CODE_238BB4:        A5 B3         LDA $B3                   
CODE_238BB6:        A0 0A         LDY #$0A                  
CODE_238BB8:        D9 D9 8C      CMP.w DATA_218CD9,y               
CODE_238BBB:        F0 CC         BEQ CODE_238B89           
CODE_238BBD:        88            DEY                       
CODE_238BBE:        10 F8         BPL CODE_238BB8           
CODE_238BC0:        A5 B3         LDA $B3                   
CODE_238BC2:        29 C0         AND #$C0                  
CODE_238BC4:        18            CLC                       
CODE_238BC5:        2A            ROL A                     
CODE_238BC6:        2A            ROL A                     
CODE_238BC7:        2A            ROL A                     
CODE_238BC8:        A8            TAY                       
CODE_238BC9:        A5 B3         LDA $B3                   
CODE_238BCB:        D9 9A 1E      CMP $1E9A,y               
CODE_238BCE:        B0 B9         BCS CODE_238B89                   
CODE_238BD0:        22 1B 8C 23   JSL CODE_238C1B           
CODE_238BD4:        6B            RTL                       

CODE_238BD5:        D6 49         DEC $49,x                 
CODE_238BD7:        D6 49         DEC $49,x                 
CODE_238BD9:        B5 4B         LDA $4B,x                 
CODE_238BDB:        AC 97 05      LDY $0597                 
CODE_238BDE:        F0 05         BEQ CODE_238BE5           
CODE_238BE0:        18            CLC                       
CODE_238BE1:        69 1B         ADC #$1B                  
CODE_238BE3:        F6 49         INC $49,x                 
CODE_238BE5:        A8            TAY                       
CODE_238BE6:        B5 43         LDA $43,x                 
CODE_238BE8:        18            CLC                       
CODE_238BE9:        79 9B 8C      ADC.w DATA_218C9B,y               
CODE_238BEC:        95 43         STA $43,x                 
CODE_238BEE:        B5 47         LDA $47,x                 
CODE_238BF0:        18            CLC                       
CODE_238BF1:        79 A4 8C      ADC.w DATA_218CA4,y               
CODE_238BF4:        95 47         STA $47,x                 
CODE_238BF6:        B5 45         LDA $45,x                 
CODE_238BF8:        79 AD 8C      ADC.w DATA_218CAD,y               
CODE_238BFB:        95 45         STA $45,x                 
CODE_238BFD:        B5 49         LDA $49,x                 
CODE_238BFF:        29 1F         AND #$1F                  
CODE_238C01:        D0 18         BNE CODE_238C1B           
CODE_238C03:        22 D8 8D 23   JSL CODE_238DD8           
CODE_238C07:        C9 E6         CMP #$E6                  
CODE_238C09:        D0 10         BNE CODE_238C1B           
CODE_238C0B:        AE 26 07      LDX $0726                 
CODE_238C0E:        BD 83 07      LDA $0783,x               
CODE_238C11:        29 01         AND #$01                  
CODE_238C13:        D0 06         BNE CODE_238C1B           
CODE_238C15:        EE 29 07      INC $0729                 
CODE_238C18:        4C 8E 8B      JMP CODE_238B8E           

CODE_238C1B:        AC 26 07      LDY $0726                 
CODE_238C1E:        B9 52 00      LDA $0052,y               
CODE_238C21:        85 02         STA $02                   
CODE_238C23:        20 27 8C      JSR CODE_238C27           
CODE_238C26:        6B            RTL                       

CODE_238C27:        AE 26 07      LDX $0726                 
CODE_238C2A:        B5 43         LDA $43,x                 
CODE_238C2C:        C9 F0         CMP #$F0                  
CODE_238C2E:        F0 09         BEQ CODE_238C39           
CODE_238C30:        8D 89 08      STA $0889                 
CODE_238C33:        38            SEC                       
CODE_238C34:        E9 10         SBC #$10                  
CODE_238C36:        8D 85 08      STA $0885                 
CODE_238C39:        B5 47         LDA $47,x                 
CODE_238C3B:        38            SEC                       
CODE_238C3C:        ED 10 02      SBC $0210                 
CODE_238C3F:        8D 84 08      STA $0884                 
CODE_238C42:        8D 88 08      STA $0888                 
CODE_238C45:        AD 29 04      LDA $0429                 
CODE_238C48:        0A            ASL A                     
CODE_238C49:        AA            TAX                       
CODE_238C4A:        A5 15         LDA $15                   
CODE_238C4C:        29 08         AND #$08                  
CODE_238C4E:        F0 05         BEQ CODE_238C55           
CODE_238C50:        8A            TXA                       
CODE_238C51:        18            CLC                       
CODE_238C52:        69 12         ADC #$12                  
CODE_238C54:        AA            TAX                       
CODE_238C55:        AD 26 07      LDA $0726                 
CODE_238C58:        F0 10         BEQ CODE_238C6A           
CODE_238C5A:        BD 54 8D      LDA.w DATA_218D54,x               
CODE_238C5D:        09 01         ORA #$01                  
CODE_238C5F:        8D 87 08      STA $0887                 
CODE_238C62:        BD 30 8D      LDA.w DATA_218D30,x               
CODE_238C65:        8D 86 08      STA $0886                 
CODE_238C68:        80 0C         BRA CODE_238C76           

CODE_238C6A:        BD 54 8D      LDA.w DATA_218D54,x               
CODE_238C6D:        8D 87 08      STA $0887                 
CODE_238C70:        BD 0C 8D      LDA.w DATA_218D0C,x               
CODE_238C73:        8D 86 08      STA $0886                 
CODE_238C76:        AD 26 07      LDA $0726                 
CODE_238C79:        F0 10         BEQ CODE_238C8B           
CODE_238C7B:        BD 31 8D      LDA.w DATA_218D31,x               
CODE_238C7E:        8D 8A 08      STA $088A                 
CODE_238C81:        BD 55 8D      LDA.w DATA_218D55,x               
CODE_238C84:        09 01         ORA #$01                  
CODE_238C86:        8D 8B 08      STA $088B                 
CODE_238C89:        80 0C         BRA CODE_238C97           

CODE_238C8B:        BD 0D 8D      LDA.w DATA_218D0D,x               
CODE_238C8E:        8D 8A 08      STA $088A                 
CODE_238C91:        BD 55 8D      LDA.w DATA_218D55,x               
CODE_238C94:        8D 8B 08      STA $088B                 
CODE_238C97:        AD 28 04      LDA $0428                 
CODE_238C9A:        F0 11         BEQ CODE_238CAD           
CODE_238C9C:        CE C6 02      DEC $02C6                 
CODE_238C9F:        10 08         BPL CODE_238CA9           
CODE_238CA1:        A9 03         LDA #$03                  
CODE_238CA3:        8D C6 02      STA $02C6                 
CODE_238CA6:        EE C7 02      INC $02C7                 
CODE_238CA9:        22 B2 CD 29   JSL CODE_29CDB2           
CODE_238CAD:        A9 02         LDA #$02                  
CODE_238CAF:        8D 41 0A      STA $0A41                 
CODE_238CB2:        8D 42 0A      STA $0A42                 
CODE_238CB5:        AD 86 08      LDA $0886                 
CODE_238CB8:        C9 26         CMP #$26                  
CODE_238CBA:        D0 05         BNE CODE_238CC1           
CODE_238CBC:        A9 F0         LDA #$F0                  
CODE_238CBE:        8D 85 08      STA $0885                 
CODE_238CC1:        AE 26 07      LDX $0726                 
CODE_238CC4:        BD 5A 00      LDA $005A,x               
CODE_238CC7:        D0 25         BNE CODE_238CEE           
CODE_238CC9:        AD 29 07      LDA $0729                 
CODE_238CCC:        C9 06         CMP #$06                  
CODE_238CCE:        90 32         BCC CODE_238D02           
CODE_238CD0:        C9 0D         CMP #$0D                  
CODE_238CD2:        90 04         BCC CODE_238CD8           
CODE_238CD4:        C9 0F         CMP #$0F                  
CODE_238CD6:        D0 2A         BNE CODE_238D02           
CODE_238CD8:        AE 26 07      LDX $0726                 
CODE_238CDB:        BD 78 8D      LDA.w DATA_218D78,x               
CODE_238CDE:        8D 8A 08      STA $088A                 
CODE_238CE1:        BD 7A 8D      LDA.w DATA_218D7A,x               
CODE_238CE4:        8D 8B 08      STA $088B                 
CODE_238CE7:        A9 F0         LDA #$F0                  
CODE_238CE9:        8D 85 08      STA $0885                 
CODE_238CEC:        80 14         BRA CODE_238D02           

CODE_238CEE:        C6 64         DEC $64                   
CODE_238CF0:        A5 64         LDA $64                   
CODE_238CF2:        29 06         AND #$06                  
CODE_238CF4:        4A            LSR A                     
CODE_238CF5:        A8            TAY                       
CODE_238CF6:        B9 80 8D      LDA.w DATA_218D80,y               
CODE_238CF9:        8D 8A 08      STA $088A                 
CODE_238CFC:        B9 84 8D      LDA.w DATA_218D84,y               
CODE_238CFF:        8D 8B 08      STA $088B                 
CODE_238D02:        AD 29 07      LDA $0729                 
CODE_238D05:        C9 02         CMP #$02                  
CODE_238D07:        F0 0C         BEQ CODE_238D15           
CODE_238D09:        AE 26 07      LDX $0726                 
CODE_238D0C:        BD 3F 07      LDA $073F,x               
CODE_238D0F:        D0 42         BNE CODE_238D53           
CODE_238D11:        A5 59         LDA $59                   
CODE_238D13:        D0 3E         BNE CODE_238D53           
CODE_238D15:        AD 10 07      LDA $0710                 
CODE_238D18:        D0 39         BNE CODE_238D53           
CODE_238D1A:        AD 27 07      LDA $0727                 
CODE_238D1D:        C9 07         CMP #$07                  
CODE_238D1F:        F0 32         BEQ CODE_238D53           
CODE_238D21:        C9 04         CMP #$04                  
CODE_238D23:        F0 2E         BEQ CODE_238D53           
CODE_238D25:        AD 84 08      LDA $0884                 
CODE_238D28:        C9 D0         CMP #$D0                  
CODE_238D2A:        90 0E         BCC CODE_238D3A           
CODE_238D2C:        AC 27 07      LDY $0727                 
CODE_238D2F:        A5 23         LDA $23                   
CODE_238D31:        D9 04 8D      CMP.w DATA_218D04,y               
CODE_238D34:        F0 1D         BEQ CODE_238D53           
CODE_238D36:        A2 00         LDX #$00                  
CODE_238D38:        80 0D         BRA CODE_238D47           

CODE_238D3A:        A5 24         LDA $24                   
CODE_238D3C:        F0 15         BEQ CODE_238D53           
CODE_238D3E:        AD 84 08      LDA $0884                 
CODE_238D41:        C9 21         CMP #$21                  
CODE_238D43:        B0 0E         BCS CODE_238D53                   
CODE_238D45:        A2 01         LDX #$01                  
CODE_238D47:        86 25         STX $25                   
CODE_238D49:        A9 80         LDA #$80                  
CODE_238D4B:        8D 10 07      STA $0710                 
CODE_238D4E:        A9 04         LDA #$04                  
CODE_238D50:        8D 17 04      STA $0417                 
CODE_238D53:        AD 2B 07      LDA $072B                 
CODE_238D56:        C9 01         CMP #$01                  
CODE_238D58:        F0 44         BEQ CODE_238D9E           
CODE_238D5A:        AD 27 07      LDA $0727                 
CODE_238D5D:        C9 08         CMP #$08                  
CODE_238D5F:        F0 3D         BEQ CODE_238D9E           
CODE_238D61:        AD 26 07      LDA $0726                 
CODE_238D64:        49 01         EOR #$01                  
CODE_238D66:        AA            TAX                       
CODE_238D67:        BD 36 07      LDA $0736,x               
CODE_238D6A:        30 32         BMI CODE_238D9E           
CODE_238D6C:        B5 47         LDA $47,x                 
CODE_238D6E:        38            SEC                       
CODE_238D6F:        ED 10 02      SBC $0210                 
CODE_238D72:        F0 2A         BEQ CODE_238D9E           
CODE_238D74:        B5 45         LDA $45,x                 
CODE_238D76:        E9 00         SBC #$00                  
CODE_238D78:        C5 12         CMP $12                   
CODE_238D7A:        D0 22         BNE CODE_238D9E           
CODE_238D7C:        B5 43         LDA $43,x                 
CODE_238D7E:        8D 95 08      STA $0895                 
CODE_238D81:        BD 78 8D      LDA.w DATA_218D78,x               
CODE_238D84:        8D 96 08      STA $0896                 
CODE_238D87:        BD 7A 8D      LDA.w DATA_218D7A,x               
CODE_238D8A:        8D 97 08      STA $0897                 
CODE_238D8D:        B5 47         LDA $47,x                 
CODE_238D8F:        38            SEC                       
CODE_238D90:        ED 10 02      SBC $0210                 
CODE_238D93:        38            SEC                       
CODE_238D94:        E9 04         SBC #$04                  
CODE_238D96:        8D 94 08      STA $0894                 
CODE_238D99:        A9 02         LDA #$02                  
CODE_238D9B:        8D 45 0A      STA $0A45                 
CODE_238D9E:        AD 29 07      LDA $0729                 
CODE_238DA1:        C9 01         CMP #$01                  
CODE_238DA3:        90 04         BCC CODE_238DA9           
CODE_238DA5:        22 AE B7 29   JSL CODE_29B7AE           
CODE_238DA9:        AD 27 07      LDA $0727                 
CODE_238DAC:        C9 08         CMP #$08                  
CODE_238DAE:        D0 03         BNE CODE_238DB3           
CODE_238DB0:        20 B4 8D      JSR CODE_238DB4           
CODE_238DB3:        60            RTS                       

CODE_238DB4:        A0 1B         LDY #$1B                  
CODE_238DB6:        B9 98 8D      LDA.w DATA_218D98,y               
CODE_238DB9:        99 98 08      STA $0898,y               
CODE_238DBC:        88            DEY                       
CODE_238DBD:        10 F7         BPL CODE_238DB6           
CODE_238DBF:        A9 00         LDA #$00                  
CODE_238DC1:        8D 46 0A      STA $0A46                 
CODE_238DC4:        8D 47 0A      STA $0A47                 
CODE_238DC7:        8D 48 0A      STA $0A48                 
CODE_238DCA:        8D 49 0A      STA $0A49                 
CODE_238DCD:        8D 4A 0A      STA $0A4A                 
CODE_238DD0:        8D 4B 0A      STA $0A4B                 
CODE_238DD3:        8D 4C 0A      STA $0A4C                 
CODE_238DD6:        60            RTS                       

CODE_238DD7:        6B            RTL                       

CODE_238DD8:        AE 26 07      LDX $0726                 
CODE_238DDB:        B5 45         LDA $45,x                 
CODE_238DDD:        0A            ASL A                     
CODE_238DDE:        A8            TAY                       
CODE_238DDF:        A9 7E         LDA #$7E                  
CODE_238DE1:        85 30         STA $30                   
CODE_238DE3:        B9 00 82      LDA.w DATA_218200,y               
CODE_238DE6:        85 2E         STA $2E                   
CODE_238DE8:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_238DEB:        1A            INC A                     
CODE_238DEC:        85 2F         STA $2F                   
CODE_238DEE:        B5 47         LDA $47,x                 
CODE_238DF0:        4A            LSR A                     
CODE_238DF1:        4A            LSR A                     
CODE_238DF2:        4A            LSR A                     
CODE_238DF3:        4A            LSR A                     
CODE_238DF4:        85 00         STA $00                   
CODE_238DF6:        B5 43         LDA $43,x                 
CODE_238DF8:        38            SEC                       
CODE_238DF9:        E9 10         SBC #$10                  
CODE_238DFB:        29 F0         AND #$F0                  
CODE_238DFD:        05 00         ORA $00                   
CODE_238DFF:        A8            TAY                       
CODE_238E00:        B7 2E         LDA [$2E],y               
CODE_238E02:        85 B3         STA $B3                   
CODE_238E04:        6B            RTL                       

CODE_238E05:        AE 26 07      LDX $0726                 
CODE_238E08:        B5 4B         LDA $4B,x                 
CODE_238E0A:        49 03         EOR #$03                  
CODE_238E0C:        C9 03         CMP #$03                  
CODE_238E0E:        D0 02         BNE CODE_238E12           
CODE_238E10:        49 0F         EOR #$0F                  
CODE_238E12:        95 4B         STA $4B,x                 
CODE_238E14:        60            RTS                       

CODE_238E15:        A5 17         LDA $17                   
CODE_238E17:        85 03         STA $03                   
CODE_238E19:        AD 97 05      LDA $0597                 
CODE_238E1C:        D0 0E         BNE CODE_238E2C           
CODE_238E1E:        AE 26 07      LDX $0726                 
CODE_238E21:        BF 50 39 7E   LDA $7E3950,x             
CODE_238E25:        F0 05         BEQ CODE_238E2C           
CODE_238E27:        C9 18         CMP #$18                  
CODE_238E29:        F0 01         BEQ CODE_238E2C           
CODE_238E2B:        60            RTS                       

CODE_238E2C:        A0 03         LDY #$03                  
CODE_238E2E:        A5 03         LDA $03                   
CODE_238E30:        29 0F         AND #$0F                  
CODE_238E32:        D9 B4 8D      CMP.w DATA_218DB4,y               
CODE_238E35:        F0 04         BEQ CODE_238E3B           
CODE_238E37:        88            DEY                       
CODE_238E38:        10 F8         BPL CODE_238E32           
CODE_238E3A:        60            RTS                       

CODE_238E3B:        A0 00         LDY #$00                  
CODE_238E3D:        4A            LSR A                     
CODE_238E3E:        B0 03         BCS CODE_238E43                   
CODE_238E40:        C8            INY                       
CODE_238E41:        D0 FA         BNE CODE_238E3D           
CODE_238E43:        98            TYA                       
CODE_238E44:        85 04         STA $04                   
CODE_238E46:        0A            ASL A                     
CODE_238E47:        AA            TAX                       
CODE_238E48:        BD BC 8D      LDA.w DATA_218DBC,x               
CODE_238E4B:        85 00         STA $00                   
CODE_238E4D:        BD BD 8D      LDA.w DATA_218DBD,x               
CODE_238E50:        85 01         STA $01                   
CODE_238E52:        A9 21         LDA #$21                  
CODE_238E54:        85 02         STA $02                   
CODE_238E56:        22 FC 8E 23   JSL CODE_238EFC           
CODE_238E5A:        A0 08         LDY #$08                  
CODE_238E5C:        D7 00         CMP [$00],y               
CODE_238E5E:        F0 71         BEQ CODE_238ED1           
CODE_238E60:        88            DEY                       
CODE_238E61:        10 F9         BPL CODE_238E5C           
CODE_238E63:        AC 97 05      LDY $0597                 
CODE_238E66:        F0 14         BEQ CODE_238E7C           
CODE_238E68:        C9 4B         CMP #$4B                  
CODE_238E6A:        D0 07         BNE CODE_238E73           
CODE_238E6C:        A9 00         LDA #$00                  
CODE_238E6E:        8D 97 05      STA $0597                 
CODE_238E71:        F0 5A         BEQ CODE_238ECD           
CODE_238E73:        C9 82         CMP #$82                  
CODE_238E75:        90 34         BCC CODE_238EAB           
CODE_238E77:        C9 AA         CMP #$AA                  
CODE_238E79:        90 52         BCC CODE_238ECD           
CODE_238E7B:        60            RTS                       

CODE_238E7C:        AC B3 00      LDY $00B3                 
CODE_238E7F:        C0 4B         CPY #$4B                  
CODE_238E81:        D0 28         BNE CODE_238EAB           
CODE_238E83:        A4 04         LDY $04                   
CODE_238E85:        AE 26 07      LDX $0726                 
CODE_238E88:        B5 43         LDA $43,x                 
CODE_238E8A:        18            CLC                       
CODE_238E8B:        79 F0 8D      ADC.w DATA_218DF0,y               
CODE_238E8E:        85 00         STA $00                   
CODE_238E90:        B5 47         LDA $47,x                 
CODE_238E92:        18            CLC                       
CODE_238E93:        79 F4 8D      ADC.w DATA_218DF4,y               
CODE_238E96:        85 01         STA $01                   
CODE_238E98:        B5 45         LDA $45,x                 
CODE_238E9A:        79 F8 8D      ADC.w DATA_218DF8,y               
CODE_238E9D:        85 04         STA $04                   
CODE_238E9F:        A2 0D         LDX #$0D                  
CODE_238EA1:        BC 17 1F      LDY $1F17,x               
CODE_238EA4:        C0 10         CPY #$10                  
CODE_238EA6:        F0 10         BEQ CODE_238EB8           
CODE_238EA8:        CA            DEX                       
CODE_238EA9:        D0 F6         BNE CODE_238EA1           
CODE_238EAB:        AD 18 00      LDA $0018                 
CODE_238EAE:        29 0F         AND #$0F                  
CODE_238EB0:        F0 05         BEQ CODE_238EB7           
CODE_238EB2:        A9 01         LDA #$01                  
CODE_238EB4:        8D 00 12      STA $1200                 
CODE_238EB7:        60            RTS                       

CODE_238EB8:        BC 00 05      LDY $0500,x               
CODE_238EBB:        C4 00         CPY $00                   
CODE_238EBD:        D0 EC         BNE CODE_238EAB           
CODE_238EBF:        BC 0F 05      LDY $050F,x               
CODE_238EC2:        C4 01         CPY $01                   
CODE_238EC4:        D0 E5         BNE CODE_238EAB           
CODE_238EC6:        BC 1E 05      LDY $051E,x               
CODE_238EC9:        C4 04         CPY $04                   
CODE_238ECB:        D0 DE         BNE CODE_238EAB           
CODE_238ECD:        A9 10         LDA #$10                  
CODE_238ECF:        D0 11         BNE CODE_238EE2           
CODE_238ED1:        A4 04         LDY $04                   
CODE_238ED3:        D9 E8 8D      CMP.w DATA_218DE8,y               
CODE_238ED6:        D0 08         BNE CODE_238EE0           
CODE_238ED8:        AD BC 07      LDA $07BC                 
CODE_238EDB:        D9 EC 8D      CMP.w DATA_218DEC,y               
CODE_238EDE:        D0 18         BNE CODE_238EF8           
CODE_238EE0:        A9 20         LDA #$20                  
CODE_238EE2:        AE 26 07      LDX $0726                 
CODE_238EE5:        95 49         STA $49,x                 
CODE_238EE7:        A5 03         LDA $03                   
CODE_238EE9:        29 0F         AND #$0F                  
CODE_238EEB:        95 4B         STA $4B,x                 
CODE_238EED:        8D D5 1D      STA $1DD5                 
CODE_238EF0:        A2 23         LDX #$23                  
CODE_238EF2:        8E 03 12      STX $1203                 
CODE_238EF5:        9C 00 12      STZ $1200                 
CODE_238EF8:        60            RTS                       

DATA_238EF9:        db $AA,$AF,$B7

CODE_238EFC:        AE 26 07      LDX $0726
CODE_238EFF:        B5 43         LDA $43,x
CODE_238F01:        18            CLC
CODE_238F02:        79 FC 8D      ADC.w DATA_218DFC,y               
CODE_238F05:        29 F0         AND #$F0                  
CODE_238F07:        85 0E         STA $0E                   
CODE_238F09:        B5 47         LDA $47,x                 
CODE_238F0B:        18            CLC                       
CODE_238F0C:        79 04 8E      ADC.w DATA_218E04,y               
CODE_238F0F:        85 0F         STA $0F                   
CODE_238F11:        B5 45         LDA $45,x                 
CODE_238F13:        79 00 8E      ADC.w DATA_218E00,y               
CODE_238F16:        0A            ASL A                     
CODE_238F17:        AA            TAX                       
CODE_238F18:        BD 00 82      LDA.w DATA_218200,x               
CODE_238F1B:        85 2E         STA $2E                   
CODE_238F1D:        85 D8         STA $D8                   
CODE_238F1F:        BD 01 82      LDA.w DATA_218200+1,x               
CODE_238F22:        1A            INC A                     
CODE_238F23:        85 2F         STA $2F                   
CODE_238F25:        18            CLC                       
CODE_238F26:        69 20         ADC #$20                  
CODE_238F28:        85 D9         STA $D9                   
CODE_238F2A:        A9 7E         LDA #$7E                  
CODE_238F2C:        85 30         STA $30                   
CODE_238F2E:        85 DA         STA $DA                   
CODE_238F30:        A5 0F         LDA $0F                   
CODE_238F32:        4A            LSR A                     
CODE_238F33:        4A            LSR A                     
CODE_238F34:        4A            LSR A                     
CODE_238F35:        4A            LSR A                     
CODE_238F36:        05 0E         ORA $0E                   
CODE_238F38:        A8            TAY                       
CODE_238F39:        DA            PHX                       
CODE_238F3A:        B7 2E         LDA [$2E],y               
CODE_238F3C:        AA            TAX                       
CODE_238F3D:        48            PHA                       
CODE_238F3E:        B7 D8         LDA [$D8],y               
CODE_238F40:        F0 06         BEQ CODE_238F48           
CODE_238F42:        68            PLA                       
CODE_238F43:        BF F9 8E 23   LDA.l DATA_238EF9,x             
CODE_238F47:        48            PHA                       
CODE_238F48:        68            PLA                       
CODE_238F49:        FA            PLX                       
CODE_238F4A:        6B            RTL                       

CODE_238F4B:        8D 59 10      STA $1059                 
CODE_238F4E:        8C 58 10      STY $1058                 
CODE_238F51:        8E 5B 10      STX $105B                 
CODE_238F54:        A0 00         LDY #$00                  
CODE_238F56:        A2 00         LDX #$00                  
CODE_238F58:        AD 5B 10      LDA $105B                 
CODE_238F5B:        29 03         AND #$03                  
CODE_238F5D:        F0 26         BEQ CODE_238F85           
CODE_238F5F:        A0 86         LDY #$86                  
CODE_238F61:        84 02         STY $02                   
CODE_238F63:        29 02         AND #$02                  
CODE_238F65:        D0 01         BNE CODE_238F68           
CODE_238F67:        E8            INX                       
CODE_238F68:        AD 5E 10      LDA $105E                 
CODE_238F6B:        F0 02         BEQ CODE_238F6F           
CODE_238F6D:        E8            INX                       
CODE_238F6E:        E8            INX                       
CODE_238F6F:        AD 59 10      LDA $1059                 
CODE_238F72:        18            CLC                       
CODE_238F73:        7D 08 8E      ADC.w DATA_218E08,x               
CODE_238F76:        8D 5C 10      STA $105C                 
CODE_238F79:        AD 58 10      LDA $1058                 
CODE_238F7C:        38            SEC                       
CODE_238F7D:        E9 10         SBC #$10                  
CODE_238F7F:        8D 5D 10      STA $105D                 
CODE_238F82:        4C AD 8F      JMP CODE_238FAD           

CODE_238F85:        A0 06         LDY #$06                  
CODE_238F87:        84 02         STY $02                   
CODE_238F89:        A2 00         LDX #$00                  
CODE_238F8B:        AD 5B 10      LDA $105B                 
CODE_238F8E:        29 08         AND #$08                  
CODE_238F90:        D0 01         BNE CODE_238F93           
CODE_238F92:        E8            INX                       
CODE_238F93:        AD 5E 10      LDA $105E                 
CODE_238F96:        F0 02         BEQ CODE_238F9A           
CODE_238F98:        E8            INX                       
CODE_238F99:        E8            INX                       
CODE_238F9A:        AD 58 10      LDA $1058                 
CODE_238F9D:        18            CLC                       
CODE_238F9E:        7D 0C 8E      ADC.w DATA_218E0C,x               
CODE_238FA1:        8D 5D 10      STA $105D                 
CODE_238FA4:        AD 59 10      LDA $1059                 
CODE_238FA7:        38            SEC                       
CODE_238FA8:        E9 10         SBC #$10                  
CODE_238FAA:        8D 5C 10      STA $105C                 
CODE_238FAD:        AD 5D 10      LDA $105D                 
CODE_238FB0:        38            SEC                       
CODE_238FB1:        E9 10         SBC #$10                  
CODE_238FB3:        AE 5C 10      LDX $105C                 
CODE_238FB6:        20 AA 90      JSR CODE_2390AA           
CODE_238FB9:        A5 0E         LDA $0E                   
CODE_238FBB:        8D 47 10      STA $1047                 
CODE_238FBE:        A5 0F         LDA $0F                   
CODE_238FC0:        8D 4B 10      STA $104B                 
CODE_238FC3:        20 52 90      JSR CODE_239052           
CODE_238FC6:        AD 47 10      LDA $1047                 
CODE_238FC9:        8D 51 10      STA $1051                 
CODE_238FCC:        AD 4B 10      LDA $104B                 
CODE_238FCF:        8D 53 10      STA $1053                 
CODE_238FD2:        20 DE 8F      JSR CODE_238FDE           
CODE_238FD5:        A9 FF         LDA #$FF                  
CODE_238FD7:        99 02 16      STA $1602,y               
CODE_238FDA:        8C 00 16      STY $1600                 
CODE_238FDD:        6B            RTL                       

CODE_238FDE:        AD 5B 10      LDA $105B                 
CODE_238FE1:        29 03         AND #$03                  
CODE_238FE3:        D0 05         BNE CODE_238FEA           
CODE_238FE5:        A9 01         LDA #$01                  
CODE_238FE7:        AA            TAX                       
CODE_238FE8:        D0 04         BNE CODE_238FEE           
CODE_238FEA:        A9 20         LDA #$20                  
CODE_238FEC:        A2 10         LDX #$10                  
CODE_238FEE:        85 05         STA $05                   
CODE_238FF0:        86 06         STX $06                   
CODE_238FF2:        AC 00 16      LDY $1600                 
CODE_238FF5:        A2 05         LDX #$05                  
CODE_238FF7:        AD 51 10      LDA $1051                 
CODE_238FFA:        99 02 16      STA $1602,y               
CODE_238FFD:        C8            INY                       
CODE_238FFE:        AD 53 10      LDA $1053                 
CODE_239001:        99 02 16      STA $1602,y               
CODE_239004:        C8            INY                       
CODE_239005:        A5 02         LDA $02                   
CODE_239007:        29 C0         AND #$C0                  
CODE_239009:        99 02 16      STA $1602,y               
CODE_23900C:        C8            INY                       
CODE_23900D:        A5 02         LDA $02                   
CODE_23900F:        29 3F         AND #$3F                  
CODE_239011:        0A            ASL A                     
CODE_239012:        3A            DEC A                     
CODE_239013:        99 02 16      STA $1602,y               
CODE_239016:        C8            INY                       
CODE_239017:        AD 5E 10      LDA $105E                 
CODE_23901A:        F0 09         BEQ CODE_239025           
CODE_23901C:        A9 00         LDA #$00                  
CODE_23901E:        99 03 16      STA $1603,y               
CODE_239021:        A9 FF         LDA #$FF                  
CODE_239023:        D0 05         BNE CODE_23902A           
CODE_239025:        20 68 90      JSR CODE_239068           
CODE_239028:        80 03         BRA CODE_23902D           

CODE_23902A:        99 02 16      STA $1602,y               
CODE_23902D:        C8            INY                       
CODE_23902E:        C8            INY                       
CODE_23902F:        AD 53 10      LDA $1053                 
CODE_239032:        18            CLC                       
CODE_239033:        65 05         ADC $05                   
CODE_239035:        8D 53 10      STA $1053                 
CODE_239038:        AD 51 10      LDA $1051                 
CODE_23903B:        69 00         ADC #$00                  
CODE_23903D:        8D 51 10      STA $1051                 
CODE_239040:        8A            TXA                       
CODE_239041:        29 01         AND #$01                  
CODE_239043:        D0 09         BNE CODE_23904E           
CODE_239045:        AD 5A 10      LDA $105A                 
CODE_239048:        18            CLC                       
CODE_239049:        65 06         ADC $06                   
CODE_23904B:        8D 5A 10      STA $105A                 
CODE_23904E:        CA            DEX                       
CODE_23904F:        10 C6         BPL CODE_239017           
CODE_239051:        60            RTS                       

CODE_239052:        AD 5D 10      LDA $105D                 
CODE_239055:        29 F0         AND #$F0                  
CODE_239057:        8D 5A 10      STA $105A                 
CODE_23905A:        AD 5C 10      LDA $105C                 
CODE_23905D:        4A            LSR A                     
CODE_23905E:        4A            LSR A                     
CODE_23905F:        4A            LSR A                     
CODE_239060:        4A            LSR A                     
CODE_239061:        0D 5A 10      ORA $105A                 
CODE_239064:        8D 5A 10      STA $105A                 
CODE_239067:        60            RTS                       

CODE_239068:        84 01         STY $01                   
CODE_23906A:        86 04         STX $04                   
CODE_23906C:        20 C9 90      JSR CODE_2390C9           
CODE_23906F:        AE 5A 10      LDX $105A                 
CODE_239072:        BF 50 24 7E   LDA $7E2450,x             
CODE_239076:        85 0A         STA $0A                   
CODE_239078:        22 37 9F 20   JSL CODE_209F37           
CODE_23907C:        C2 30         REP #$30                  
CODE_23907E:        A5 02         LDA $02                   
CODE_239080:        48            PHA                       
CODE_239081:        AD 55 10      LDA $1055                 
CODE_239084:        29 FF 00      AND #$00FF                
CODE_239087:        0A            ASL A                     
CODE_239088:        85 02         STA $02                   
CODE_23908A:        A5 01         LDA $01                   
CODE_23908C:        29 FF 00      AND #$00FF                
CODE_23908F:        AA            TAX                       
CODE_239090:        98            TYA                       
CODE_239091:        29 FF 00      AND #$00FF                
CODE_239094:        0A            ASL A                     
CODE_239095:        0A            ASL A                     
CODE_239096:        0A            ASL A                     
CODE_239097:        18            CLC                       
CODE_239098:        65 02         ADC $02                   
CODE_23909A:        A8            TAY                       
CODE_23909B:        B7 0C         LDA [$0C],y               
CODE_23909D:        9D 02 16      STA $1602,x               
CODE_2390A0:        68            PLA                       
CODE_2390A1:        85 02         STA $02                   
CODE_2390A3:        E2 30         SEP #$30                  
CODE_2390A5:        A4 01         LDY $01                   
CODE_2390A7:        A6 04         LDX $04                   
CODE_2390A9:        60            RTS                       

CODE_2390AA:        0A            ASL A                     
CODE_2390AB:        69 00         ADC #$00                  
CODE_2390AD:        0A            ASL A                     
CODE_2390AE:        69 00         ADC #$00                  
CODE_2390B0:        85 0C         STA $0C                   
CODE_2390B2:        8A            TXA                       
CODE_2390B3:        4A            LSR A                     
CODE_2390B4:        4A            LSR A                     
CODE_2390B5:        4A            LSR A                     
CODE_2390B6:        85 0D         STA $0D                   
CODE_2390B8:        A5 0C         LDA $0C                   
CODE_2390BA:        29 03         AND #$03                  
CODE_2390BC:        09 08         ORA #$08                  
CODE_2390BE:        85 0E         STA $0E                   
CODE_2390C0:        A5 0C         LDA $0C                   
CODE_2390C2:        29 E0         AND #$E0                  
CODE_2390C4:        05 0D         ORA $0D                   
CODE_2390C6:        85 0F         STA $0F                   
CODE_2390C8:        60            RTS                       

CODE_2390C9:        AD 53 10      LDA $1053                 
CODE_2390CC:        29 01         AND #$01                  
CODE_2390CE:        8D 55 10      STA $1055                 
CODE_2390D1:        AD 53 10      LDA $1053                 
CODE_2390D4:        29 20         AND #$20                  
CODE_2390D6:        D0 05         BNE CODE_2390DD           
CODE_2390D8:        0E 55 10      ASL $1055                 
CODE_2390DB:        80 04         BRA CODE_2390E1           
CODE_2390DD:        38            SEC                       
CODE_2390DE:        2E 55 10      ROL $1055                 
CODE_2390E1:        60            RTS                       

CODE_2390E2:        BC 34 8E      LDY.w DATA_218E34,x               
CODE_2390E5:        A2 04         LDX #$04                  
CODE_2390E7:        C2 20         REP #$20                  
CODE_2390E9:        B9 10 8E      LDA.w DATA_218E10,y               
CODE_2390EC:        9D 02 14      STA $1402,x               
CODE_2390EF:        88            DEY                       
CODE_2390F0:        88            DEY                       
CODE_2390F1:        CA            DEX                       
CODE_2390F2:        CA            DEX                       
CODE_2390F3:        10 F4         BPL CODE_2390E9           
CODE_2390F5:        A9 01 00      LDA #$0001                
CODE_2390F8:        8D 00 15      STA $1500                 
CODE_2390FB:        60            RTS                       

DATA_2390FC:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF

CODE_239110:        A2 00         LDX #$00                  ;
CODE_239112:        A9 09         LDA #$09                  ;
CODE_239114:        22 A8 98 20   JSL CODE_2098A8           ;
CODE_239118:        22 44 98 20   JSL CODE_209844           ;
CODE_23911C:        E0 40         CPX #$40                  ;
CODE_23911E:        D0 F2         BNE CODE_239112           ;
CODE_239120:        A9 40         LDA #$40                  ;
CODE_239122:        22 A8 98 20   JSL CODE_2098A8           ;
CODE_239126:        A9 09         LDA #$09                  ;
CODE_239128:        22 44 98 20   JSL CODE_209844           ;
CODE_23912C:        E0 F0         CPX #$F0                  ;
CODE_23912E:        D0 F0         BNE CODE_239120           ;
CODE_239130:        22 0B 99 20   JSL CODE_20990B           ;
CODE_239134:        6B            RTL                       ;

CODE_239135:        20 39 91      JSR CODE_239139           
CODE_239138:        6B            RTL                       

CODE_239139:        AD 06 07      LDA $0706                 
CODE_23913C:        4A            LSR A                     
CODE_23913D:        4A            LSR A                     
CODE_23913E:        4A            LSR A                     
CODE_23913F:        4A            LSR A                     
CODE_239140:        AA            TAX                       
CODE_239141:        CA            DEX                       
CODE_239142:        8A            TXA                       
CODE_239143:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_239147:        dl CODE_2392D2

CODE_23914A:        20 4E 91      JSR CODE_23914E
CODE_23914D:        6B            RTL

CODE_23914E:        AD 06 07      LDA $0706                 
CODE_239151:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_239155:        dl CODE_2391EF
                    dl CODE_23922C
                    dl CODE_23924F
                    dl CODE_23928C
                    dl CODE_23916A
                    dl CODE_2391AF
                    dl CODE_2392AF

CODE_23916A:        A9 00         LDA #$00                  
CODE_23916C:        85 00         STA $00                   
CODE_23916E:        A6 00         LDX $00                   
CODE_239170:        BD B9 96      LDA.w DATA_2196B9,x               
CODE_239173:        85 01         STA $01                   
CODE_239175:        BD BA 96      LDA.w DATA_2196B9+1,x               
CODE_239178:        85 02         STA $02                   
CODE_23917A:        BD BB 96      LDA.w DATA_2196B9+2,x               
CODE_23917D:        85 03         STA $03                   
CODE_23917F:        8A            TXA                       
CODE_239180:        18            CLC                       
CODE_239181:        69 03         ADC #$03                  
CODE_239183:        85 00         STA $00                   
CODE_239185:        A2 00         LDX #$00                  
CODE_239187:        AC 00 07      LDY $0700                 
CODE_23918A:        A5 01         LDA $01                   
CODE_23918C:        97 2E         STA [$2E],y               
CODE_23918E:        C8            INY                       
CODE_23918F:        E8            INX                       
CODE_239190:        A5 02         LDA $02                   
CODE_239192:        97 2E         STA [$2E],y               
CODE_239194:        8A            TXA                       
CODE_239195:        29 07         AND #$07                  
CODE_239197:        C9 05         CMP #$05                  
CODE_239199:        D0 F3         BNE CODE_23918E           
CODE_23919B:        A5 03         LDA $03                   
CODE_23919D:        97 2E         STA [$2E],y               
CODE_23919F:        AD 00 07      LDA $0700                 
CODE_2391A2:        18            CLC                       
CODE_2391A3:        69 10         ADC #$10                  
CODE_2391A5:        8D 00 07      STA $0700                 
CODE_2391A8:        A5 00         LDA $00                   
CODE_2391AA:        C9 06         CMP #$06                  
CODE_2391AC:        D0 C0         BNE CODE_23916E           
CODE_2391AE:        60            RTS                       

CODE_2391AF:        AC 00 07      LDY $0700                 
CODE_2391B2:        A2 00         LDX #$00                  
CODE_2391B4:        86 0B         STX $0B                   
CODE_2391B6:        A6 0B         LDX $0B                   
CODE_2391B8:        BD BF 96      LDA.w DATA_2196BF,x               
CODE_2391BB:        85 00         STA $00                   
CODE_2391BD:        C9 FF         CMP #$FF                  
CODE_2391BF:        D0 01         BNE CODE_2391C2           
CODE_2391C1:        60            RTS                       

CODE_2391C2:        C9 80         CMP #$80                  
CODE_2391C4:        D0 0F         BNE CODE_2391D5           
CODE_2391C6:        AD 00 07      LDA $0700                 
CODE_2391C9:        18            CLC                       
CODE_2391CA:        69 10         ADC #$10                  
CODE_2391CC:        8D 00 07      STA $0700                 
CODE_2391CF:        A8            TAY                       
CODE_2391D0:        E6 0B         INC $0B                   
CODE_2391D2:        4C B6 91      JMP CODE_2391B6           

CODE_2391D5:        4A            LSR A                     
CODE_2391D6:        4A            LSR A                     
CODE_2391D7:        4A            LSR A                     
CODE_2391D8:        4A            LSR A                     
CODE_2391D9:        AA            TAX                       
CODE_2391DA:        A5 00         LDA $00                   
CODE_2391DC:        29 0F         AND #$0F                  
CODE_2391DE:        85 0A         STA $0A                   
CODE_2391E0:        BD EA 96      LDA.w DATA_2196EA,x               
CODE_2391E3:        97 2E         STA [$2E],y               
CODE_2391E5:        C8            INY                       
CODE_2391E6:        C6 0A         DEC $0A                   
CODE_2391E8:        10 F6         BPL CODE_2391E0           
CODE_2391EA:        E6 0B         INC $0B                   
CODE_2391EC:        4C B6 91      JMP CODE_2391B6           

CODE_2391EF:        A2 02         LDX #$02                  
CODE_2391F1:        AC 26 07      LDY $0726                 
CODE_2391F4:        B9 47 07      LDA $0747,y               
CODE_2391F7:        DD 16 97      CMP.w DATA_219716,x               
CODE_2391FA:        F0 03         BEQ CODE_2391FF           
CODE_2391FC:        CA            DEX                       
CODE_2391FD:        D0 F8         BNE CODE_2391F7           
CODE_2391FF:        BD 19 97      LDA.w DATA_219719,x               
CODE_239202:        AA            TAX                       
CODE_239203:        A9 00         LDA #$00                  
CODE_239205:        85 02         STA $02                   
CODE_239207:        AC 00 07      LDY $0700                 
CODE_23920A:        A9 02         LDA #$02                  
CODE_23920C:        85 00         STA $00                   
CODE_23920E:        BD F2 96      LDA.w DATA_2196F2,x               
CODE_239211:        97 2E         STA [$2E],y               
CODE_239213:        C8            INY                       
CODE_239214:        E8            INX                       
CODE_239215:        E6 02         INC $02                   
CODE_239217:        C6 00         DEC $00                   
CODE_239219:        10 F3         BPL CODE_23920E           
CODE_23921B:        AD 00 07      LDA $0700                 
CODE_23921E:        18            CLC                       
CODE_23921F:        69 10         ADC #$10                  
CODE_239221:        8D 00 07      STA $0700                 
CODE_239224:        A8            TAY                       
CODE_239225:        A5 02         LDA $02                   
CODE_239227:        C9 0C         CMP #$0C                  
CODE_239229:        D0 DF         BNE CODE_23920A           
CODE_23922B:        60            RTS                       

CODE_23922C:        A2 00         LDX #$00                  
CODE_23922E:        AC 00 07      LDY $0700                 
CODE_239231:        A9 01         LDA #$01                  
CODE_239233:        85 00         STA $00                   
CODE_239235:        BD 1C 97      LDA.w DATA_21971C,x               
CODE_239238:        97 2E         STA [$2E],y               
CODE_23923A:        C8            INY                       
CODE_23923B:        E8            INX                       
CODE_23923C:        C6 00         DEC $00                   
CODE_23923E:        10 F5         BPL CODE_239235           
CODE_239240:        AD 00 07      LDA $0700                 
CODE_239243:        18            CLC                       
CODE_239244:        69 10         ADC #$10                  
CODE_239246:        8D 00 07      STA $0700                 
CODE_239249:        A8            TAY                       
CODE_23924A:        E0 08         CPX #$08                  
CODE_23924C:        D0 E3         BNE CODE_239231           
CODE_23924E:        60            RTS                       

CODE_23924F:        AC 00 07      LDY $0700                 
CODE_239252:        A9 C1         LDA #$C1                  
CODE_239254:        97 2E         STA [$2E],y               
CODE_239256:        C8            INY                       
CODE_239257:        A9 C4         LDA #$C4                  
CODE_239259:        97 2E         STA [$2E],y               
CODE_23925B:        C0 0F         CPY #$0F                  
CODE_23925D:        D0 F7         BNE CODE_239256           
CODE_23925F:        A9 C6         LDA #$C6                  
CODE_239261:        97 2E         STA [$2E],y               
CODE_239263:        C8            INY                       
CODE_239264:        98            TYA                       
CODE_239265:        29 0F         AND #$0F                  
CODE_239267:        D0 04         BNE CODE_23926D           
CODE_239269:        A9 C2         LDA #$C2                  
CODE_23926B:        D0 06         BNE CODE_239273           
CODE_23926D:        C9 0F         CMP #$0F                  
CODE_23926F:        D0 F2         BNE CODE_239263           
CODE_239271:        A9 C7         LDA #$C7                  
CODE_239273:        97 2E         STA [$2E],y               
CODE_239275:        C0 9F         CPY #$9F                  
CODE_239277:        D0 EA         BNE CODE_239263           
CODE_239279:        C8            INY                       
CODE_23927A:        A9 C3         LDA #$C3                  
CODE_23927C:        97 2E         STA [$2E],y               
CODE_23927E:        C8            INY                       
CODE_23927F:        A9 C5         LDA #$C5                  
CODE_239281:        97 2E         STA [$2E],y               
CODE_239283:        C0 AF         CPY #$AF                  
CODE_239285:        D0 F7         BNE CODE_23927E           
CODE_239287:        A9 C8         LDA #$C8                  
CODE_239289:        97 2E         STA [$2E],y               
CODE_23928B:        60            RTS                       

CODE_23928C:        A2 00         LDX #$00                  
CODE_23928E:        AC 00 07      LDY $0700                 
CODE_239291:        A9 01         LDA #$01                  
CODE_239293:        85 00         STA $00                   
CODE_239295:        BD 24 97      LDA.w DATA_219724,x               
CODE_239298:        97 2E         STA [$2E],y               
CODE_23929A:        C8            INY                       
CODE_23929B:        E8            INX                       
CODE_23929C:        C6 00         DEC $00                   
CODE_23929E:        10 F5         BPL CODE_239295           
CODE_2392A0:        AD 00 07      LDA $0700                 
CODE_2392A3:        18            CLC                       
CODE_2392A4:        69 10         ADC #$10                  
CODE_2392A6:        8D 00 07      STA $0700                 
CODE_2392A9:        A8            TAY                       
CODE_2392AA:        E0 04         CPX #$04                  
CODE_2392AC:        D0 E3         BNE CODE_239291           
CODE_2392AE:        60            RTS                       

CODE_2392AF:        A2 00         LDX #$00                  
CODE_2392B1:        AC 00 07      LDY $0700                 
CODE_2392B4:        A9 01         LDA #$01                  
CODE_2392B6:        85 00         STA $00                   
CODE_2392B8:        BD 28 97      LDA.w DATA_219728,x               
CODE_2392BB:        97 2E         STA [$2E],y               
CODE_2392BD:        C8            INY                       
CODE_2392BE:        E8            INX                       
CODE_2392BF:        C6 00         DEC $00                   
CODE_2392C1:        10 F5         BPL CODE_2392B8           
CODE_2392C3:        AD 00 07      LDA $0700                 
CODE_2392C6:        18            CLC                       
CODE_2392C7:        69 10         ADC #$10                  
CODE_2392C9:        8D 00 07      STA $0700                 
CODE_2392CC:        A8            TAY                       
CODE_2392CD:        E0 04         CPX #$04                  
CODE_2392CF:        D0 E3         BNE CODE_2392B4           
CODE_2392D1:        60            RTS                       

CODE_2392D2:        A9 01         LDA #$01                  
CODE_2392D4:        85 00         STA $00                   
CODE_2392D6:        AC 00 07      LDY $0700                 
CODE_2392D9:        AD 06 07      LDA $0706                 
CODE_2392DC:        29 0F         AND #$0F                  
CODE_2392DE:        AA            TAX                       
CODE_2392DF:        A9 C0         LDA #$C0                  
CODE_2392E1:        97 2E         STA [$2E],y               
CODE_2392E3:        C8            INY                       
CODE_2392E4:        CA            DEX                       
CODE_2392E5:        10 F8         BPL CODE_2392DF           
CODE_2392E7:        AD 00 07      LDA $0700                 
CODE_2392EA:        18            CLC                       
CODE_2392EB:        69 10         ADC #$10                  
CODE_2392ED:        8D 00 07      STA $0700                 
CODE_2392F0:        A8            TAY                       
CODE_2392F1:        C6 00         DEC $00                   
CODE_2392F3:        10 E4         BPL CODE_2392D9           
CODE_2392F5:        60            RTS                       
CODE_2392F6:        98            TYA                       
CODE_2392F7:        18            CLC                       
CODE_2392F8:        69 10         ADC #$10                  
CODE_2392FA:        A8            TAY                       
CODE_2392FB:        A5 2F         LDA $2F                   
CODE_2392FD:        69 00         ADC #$00                  
CODE_2392FF:        85 2F         STA $2F                   
CODE_239301:        60            RTS                       

CODE_239302:        A5 05         LDA $05                   
CODE_239304:        85 2F         STA $2F                   
CODE_239306:        AC 00 07      LDY $0700                 
CODE_239309:        C8            INY                       
CODE_23930A:        98            TYA                       
CODE_23930B:        29 0F         AND #$0F                  
CODE_23930D:        D0 31         BNE CODE_239340           
CODE_23930F:        A0 00         LDY #$00                  
CODE_239311:        A5 0E         LDA $0E                   
CODE_239313:        29 10         AND #$10                  
CODE_239315:        F0 01         BEQ CODE_239318           
CODE_239317:        C8            INY                       
CODE_239318:        84 09         STY $09                   
CODE_23931A:        A5 2E         LDA $2E                   
CODE_23931C:        18            CLC                       
CODE_23931D:        69 B0         ADC #$B0                  
CODE_23931F:        85 2E         STA $2E                   
CODE_239321:        A5 2F         LDA $2F                   
CODE_239323:        65 09         ADC $09                   
CODE_239325:        85 2F         STA $2F                   
CODE_239327:        85 05         STA $05                   
CODE_239329:        A5 0F         LDA $0F                   
CODE_23932B:        29 F0         AND #$F0                  
CODE_23932D:        4A            LSR A                     
CODE_23932E:        4A            LSR A                     
CODE_23932F:        4A            LSR A                     
CODE_239330:        A8            TAY                       
CODE_239331:        C8            INY                       
CODE_239332:        C8            INY                       
CODE_239333:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_239336:        85 04         STA $04                   
CODE_239338:        E6 04         INC $04                   
CODE_23933A:        AD 00 07      LDA $0700                 
CODE_23933D:        29 F0         AND #$F0                  
CODE_23933F:        A8            TAY                       
CODE_239340:        8C 00 07      STY $0700                 
CODE_239343:        60            RTS                       

CODE_239344:        AD BF 1E      LDA $1EBF                 
CODE_239347:        C9 0F         CMP #$0F                  
CODE_239349:        D0 03         BNE CODE_23934E           
CODE_23934B:        20 4F 93      JSR CODE_23934F           
CODE_23934E:        6B            RTL                       

CODE_23934F:        AD 34 10      LDA $1034                 
CODE_239352:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239356:        dw CODE_23935E
                    dw CODE_239362
                    dw CODE_23936B
                    dw CODE_23936F

CODE_23935E:        20 73 93      JSR CODE_239373
CODE_239361:        60            RTS                       

CODE_239362:        20 BC 93      JSR CODE_2393BC           
CODE_239365:        A9 3F         LDA #$3F                  
CODE_239367:        20 10 94      JSR CODE_239410           
CODE_23936A:        60            RTS                       

CODE_23936B:        20 BC 93      JSR CODE_2393BC           
CODE_23936E:        60            RTS                       

CODE_23936F:        20 E6 93      JSR CODE_2393E6           
CODE_239372:        60            RTS                       

CODE_239373:        A9 94         LDA #$94                  
CODE_239375:        85 0A         STA $0A                   
CODE_239377:        A0 00         LDY #$00                  
CODE_239379:        A2 0A         LDX #$0A                  
CODE_23937B:        BD 37 97      LDA.w DATA_219737,x               
CODE_23937E:        99 10 08      STA $0810,y               
CODE_239381:        99 14 08      STA $0814,y               
CODE_239384:        BD 2C 97      LDA.w DATA_21972C,x               
CODE_239387:        99 11 08      STA $0811,y               
CODE_23938A:        18            CLC                       
CODE_23938B:        69 08         ADC #$08                  
CODE_23938D:        99 15 08      STA $0815,y               
CODE_239390:        A5 0A         LDA $0A                   
CODE_239392:        99 12 08      STA $0812,y               
CODE_239395:        1A            INC A                     
CODE_239396:        99 16 08      STA $0816,y               
CODE_239399:        A9 2A         LDA #$2A                  
CODE_23939B:        99 13 08      STA $0813,y               
CODE_23939E:        99 17 08      STA $0817,y               
CODE_2393A1:        5A            PHY                       
CODE_2393A2:        98            TYA                       
CODE_2393A3:        4A            LSR A                     
CODE_2393A4:        4A            LSR A                     
CODE_2393A5:        A8            TAY                       
CODE_2393A6:        A9 00         LDA #$00                  
CODE_2393A8:        99 24 0A      STA $0A24,y               
CODE_2393AB:        99 25 0A      STA $0A25,y               
CODE_2393AE:        7A            PLY                       
CODE_2393AF:        C6 0A         DEC $0A                   
CODE_2393B1:        C6 0A         DEC $0A                   
CODE_2393B3:        98            TYA                       
CODE_2393B4:        18            CLC                       
CODE_2393B5:        69 08         ADC #$08                  
CODE_2393B7:        A8            TAY                       
CODE_2393B8:        CA            DEX                       
CODE_2393B9:        10 C0         BPL CODE_23937B           
CODE_2393BB:        60            RTS                       

CODE_2393BC:        A9 99         LDA #$99                  
CODE_2393BE:        85 0A         STA $0A                   
CODE_2393C0:        A0 00         LDY #$00                  
CODE_2393C2:        A2 09         LDX #$09                  
CODE_2393C4:        BD 42 97      LDA.w DATA_219742,x               
CODE_2393C7:        99 10 08      STA $0810,y               
CODE_2393CA:        C8            INY                       
CODE_2393CB:        A5 0A         LDA $0A                   
CODE_2393CD:        99 10 08      STA $0810,y               
CODE_2393D0:        C8            INY                       
CODE_2393D1:        A9 00         LDA #$00                  
CODE_2393D3:        99 10 08      STA $0810,y               
CODE_2393D6:        C8            INY                       
CODE_2393D7:        BD 4C 97      LDA.w DATA_21974C,x               
CODE_2393DA:        99 10 08      STA $0810,y               
CODE_2393DD:        C8            INY                       
CODE_2393DE:        C6 0A         DEC $0A                   
CODE_2393E0:        C6 0A         DEC $0A                   
CODE_2393E2:        CA            DEX                       
CODE_2393E3:        10 DF         BPL CODE_2393C4           
CODE_2393E5:        60            RTS                       

CODE_2393E6:        A9 AF         LDA #$AF                  
CODE_2393E8:        85 0A         STA $0A                   
CODE_2393EA:        A0 00         LDY #$00                  
CODE_2393EC:        A2 0A         LDX #$0A                  
CODE_2393EE:        BD 56 97      LDA.w DATA_219756,x               
CODE_2393F1:        99 10 08      STA $0810,y               
CODE_2393F4:        C8            INY                       
CODE_2393F5:        A5 0A         LDA $0A                   
CODE_2393F7:        99 10 08      STA $0810,y               
CODE_2393FA:        C8            INY                       
CODE_2393FB:        A9 00         LDA #$00                  
CODE_2393FD:        99 10 08      STA $0810,y               
CODE_239400:        C8            INY                       
CODE_239401:        BD 61 97      LDA.w DATA_219761,x               
CODE_239404:        99 10 08      STA $0810,y               
CODE_239407:        C8            INY                       
CODE_239408:        C6 0A         DEC $0A                   
CODE_23940A:        C6 0A         DEC $0A                   
CODE_23940C:        CA            DEX                       
CODE_23940D:        10 DF         BPL CODE_2393EE           
CODE_23940F:        60            RTS                       

CODE_239410:        85 0A         STA $0A                   
CODE_239412:        A2 07         LDX #$07                  
CODE_239414:        BD 6C 97      LDA.w DATA_21976C,x               
CODE_239417:        99 10 08      STA $0810,y               
CODE_23941A:        C8            INY                       
CODE_23941B:        A5 0A         LDA $0A                   
CODE_23941D:        99 10 08      STA $0810,y               
CODE_239420:        C8            INY                       
CODE_239421:        A9 00         LDA #$00                  
CODE_239423:        99 10 08      STA $0810,y               
CODE_239426:        C8            INY                       
CODE_239427:        BD 74 97      LDA.w DATA_219774,x               
CODE_23942A:        99 10 08      STA $0810,y               
CODE_23942D:        C8            INY                       
CODE_23942E:        C6 0A         DEC $0A                   
CODE_239430:        C6 0A         DEC $0A                   
CODE_239432:        CA            DEX                       
CODE_239433:        10 DF         BPL CODE_239414           
CODE_239435:        AD 40 10      LDA $1040                 
CODE_239438:        C9 02         CMP #$02                  
CODE_23943A:        90 49         BCC CODE_239485           
CODE_23943C:        AE 43 10      LDX $1043                 
CODE_23943F:        BD 7E 97      LDA.w DATA_21977E,x               
CODE_239442:        85 0A         STA $0A                   
CODE_239444:        AD 26 10      LDA $1026                 
CODE_239447:        85 0B         STA $0B                   
CODE_239449:        A2 01         LDX #$01                  
CODE_23944B:        AD 27 10      LDA $1027                 
CODE_23944E:        99 10 08      STA $0810,y               
CODE_239451:        C8            INY                       
CODE_239452:        A5 0A         LDA $0A                   
CODE_239454:        99 10 08      STA $0810,y               
CODE_239457:        C8            INY                       
CODE_239458:        BD 7C 97      LDA.w DATA_21977C,x               
CODE_23945B:        99 10 08      STA $0810,y               
CODE_23945E:        C8            INY                       
CODE_23945F:        A5 0B         LDA $0B                   
CODE_239461:        99 10 08      STA $0810,y               
CODE_239464:        C8            INY                       
CODE_239465:        A5 0B         LDA $0B                   
CODE_239467:        18            CLC                       
CODE_239468:        69 08         ADC #$08                  
CODE_23946A:        85 0B         STA $0B                   
CODE_23946C:        CA            DEX                       
CODE_23946D:        10 DC         BPL CODE_23944B           
CODE_23946F:        AD 27 10      LDA $1027                 
CODE_239472:        C9 60         CMP #$60                  
CODE_239474:        F0 0F         BEQ CODE_239485           
CODE_239476:        CE 27 10      DEC $1027                 
CODE_239479:        AD 27 10      LDA $1027                 
CODE_23947C:        C9 5F         CMP #$5F                  
CODE_23947E:        B0 05         BCS CODE_239485                   
CODE_239480:        A9 60         LDA #$60                  
CODE_239482:        8D 27 10      STA $1027                 
CODE_239485:        60            RTS                       

CODE_239486:        20 4F 93      JSR CODE_23934F           
CODE_239489:        AD 40 10      LDA $1040                 
CODE_23948C:        C9 07         CMP #$07                  
CODE_23948E:        90 0E         BCC CODE_23949E           
CODE_239490:        20 DC A4      JSR CODE_23A4DC           
CODE_239493:        90 09         BCC CODE_23949E           
CODE_239495:        A9 09         LDA #$09                  
CODE_239497:        8D 40 10      STA $1040                 
CODE_23949A:        A9 01         LDA #$01                  
CODE_23949C:        85 14         STA $14                   
CODE_23949E:        20 A2 94      JSR CODE_2394A2           
CODE_2394A1:        6B            RTL                       

CODE_2394A2:        AD 40 10      LDA $1040                 
CODE_2394A5:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_2394A9:        dw CODE_2394BD
                    dw CODE_239513
                    dw CODE_2395F5
                    dw CODE_239752
                    dw CODE_239853
                    dw CODE_2396EB
                    dw CODE_2395B0
                    dw CODE_239513
                    dw CODE_2394FC
                    dw CODE_2395B1
  
CODE_2394BD:        A9 51         LDA #$51
CODE_2394BF:        8D 09 21      STA $2109                  
CODE_2394C2:        AD 28 10      LDA $1028                 
CODE_2394C5:        18            CLC                       
CODE_2394C6:        69 08         ADC #$08                  
CODE_2394C8:        85 28         STA $28                   
CODE_2394CA:        EE 28 10      INC $1028                 
CODE_2394CD:        C9 0C         CMP #$0C                  
CODE_2394CF:        D0 2A         BNE CODE_2394FB           
CODE_2394D1:        A9 00         LDA #$00                  
CODE_2394D3:        8D 0F 07      STA $070F                 
CODE_2394D6:        EE 40 10      INC $1040                 
CODE_2394D9:        AC 42 10      LDY $1042                 
CODE_2394DC:        B9 82 97      LDA.w DATA_219782,y               
CODE_2394DF:        85 2E         STA $2E                   
CODE_2394E1:        B9 8A 97      LDA.w DATA_21978A,y               
CODE_2394E4:        85 2F         STA $2F                   
CODE_2394E6:        A9 21         LDA #$21                  
CODE_2394E8:        85 30         STA $30                   
CODE_2394EA:        C0 01         CPY #$01                  
CODE_2394EC:        F0 04         BEQ CODE_2394F2           
CODE_2394EE:        C0 02         CPY #$02                  
CODE_2394F0:        D0 09         BNE CODE_2394FB           
CODE_2394F2:        A9 F8         LDA #$F8                  
CODE_2394F4:        85 95         STA $95                   
CODE_2394F6:        A9 07         LDA #$07                  
CODE_2394F8:        8D 40 10      STA $1040                 
CODE_2394FB:        60            RTS                       

CODE_2394FC:        AD 11 07      LDA $0711                 
CODE_2394FF:        D0 05         BNE CODE_239506           
CODE_239501:        A9 A0         LDA #$A0                  
CODE_239503:        8D 11 07      STA $0711                 
CODE_239506:        CE 11 07      DEC $0711                 
CODE_239509:        D0 07         BNE CODE_239512           
CODE_23950B:        EE 40 10      INC $1040                 
CODE_23950E:        A9 01         LDA #$01                  
CODE_239510:        85 14         STA $14                   
CODE_239512:        60            RTS                       

CODE_239513:        CE 0E 07      DEC $070E                 
CODE_239516:        F0 01         BEQ CODE_239519           
CODE_239518:        60            RTS                       

CODE_239519:        A9 04         LDA #$04                  
CODE_23951B:        8D 0E 07      STA $070E                 
CODE_23951E:        AD D4 02      LDA $02D4                 
CODE_239521:        29 01         AND #$01                  
CODE_239523:        F0 05         BEQ CODE_23952A           
CODE_239525:        A9 19         LDA #$19                  
CODE_239527:        8D 00 12      STA $1200                 
CODE_23952A:        AC D4 02      LDY $02D4                 
CODE_23952D:        B7 2E         LDA [$2E],y               
CODE_23952F:        D0 1C         BNE CODE_23954D           
CODE_239531:        AD E8 05      LDA $05E8                 
CODE_239534:        18            CLC                       
CODE_239535:        69 20         ADC #$20                  
CODE_239537:        A8            TAY                       
CODE_239538:        AD E7 05      LDA $05E7                 
CODE_23953B:        69 00         ADC #$00                  
CODE_23953D:        8D E7 05      STA $05E7                 
CODE_239540:        98            TYA                       
CODE_239541:        29 E0         AND #$E0                  
CODE_239543:        09 04         ORA #$04                  
CODE_239545:        8D E8 05      STA $05E8                 
CODE_239548:        EE D4 02      INC $02D4                 
CODE_23954B:        80 D1         BRA CODE_23951E           

CODE_23954D:        C9 FF         CMP #$FF                  
CODE_23954F:        F0 41         BEQ CODE_239592           
CODE_239551:        C9 FE         CMP #$FE                  
CODE_239553:        D0 07         BNE CODE_23955C           
CODE_239555:        A0 00         LDY #$00                  
CODE_239557:        8C 00 12      STY $1200                 
CODE_23955A:        80 2F         BRA CODE_23958B           

CODE_23955C:        AE 00 16      LDX $1600                 
CODE_23955F:        9D 06 16      STA $1606,x               
CODE_239562:        A9 21         LDA #$21                  
CODE_239564:        9D 07 16      STA $1607,x               
CODE_239567:        AD E7 05      LDA $05E7                 
CODE_23956A:        9D 02 16      STA $1602,x               
CODE_23956D:        AD E8 05      LDA $05E8                 
CODE_239570:        9D 03 16      STA $1603,x               
CODE_239573:        A9 00         LDA #$00                  
CODE_239575:        9D 04 16      STA $1604,x               
CODE_239578:        A9 01         LDA #$01                  
CODE_23957A:        9D 05 16      STA $1605,x               
CODE_23957D:        A9 FF         LDA #$FF                  
CODE_23957F:        9D 08 16      STA $1608,x               
CODE_239582:        AD 00 16      LDA $1600                 
CODE_239585:        18            CLC                       
CODE_239586:        69 06         ADC #$06                  
CODE_239588:        8D 00 16      STA $1600                 
CODE_23958B:        EE E8 05      INC $05E8                 
CODE_23958E:        EE D4 02      INC $02D4                 
CODE_239591:        60            RTS                       

CODE_239592:        AD 40 10      LDA $1040                 
CODE_239595:        C9 07         CMP #$07                  
CODE_239597:        F0 08         BEQ CODE_2395A1           
CODE_239599:        A9 78         LDA #$78                  
CODE_23959B:        8D 27 10      STA $1027                 
CODE_23959E:        8D 26 10      STA $1026                 
CODE_2395A1:        A9 00         LDA #$00                  
CODE_2395A3:        8D D4 02      STA $02D4                 
CODE_2395A6:        EE 40 10      INC $1040                 
CODE_2395A9:        C8            INY                       
CODE_2395AA:        B7 2E         LDA [$2E],y               
CODE_2395AC:        8D 2A 10      STA $102A                 
CODE_2395AF:        60            RTS                       

CODE_2395B0:        60            RTS                       

CODE_2395B1:        AD 34 10      LDA $1034                 
CODE_2395B4:        C9 01         CMP #$01                  
CODE_2395B6:        D0 07         BNE CODE_2395BF           
CODE_2395B8:        AD 27 10      LDA $1027                 
CODE_2395BB:        C9 60         CMP #$60                  
CODE_2395BD:        D0 00         BNE CODE_2395BF           
CODE_2395BF:        60            RTS                       

CODE_2395C0:        60            RTS                       

CODE_2395C1:        AD 43 10      LDA $1043                 
CODE_2395C4:        0A            ASL A                     
CODE_2395C5:        85 00         STA $00                   
CODE_2395C7:        AE 26 07      LDX $0726                 
CODE_2395CA:        BF 92 39 7E   LDA $7E3992,x             
CODE_2395CE:        29 0A         AND #$0A                  
CODE_2395D0:        F0 02         BEQ CODE_2395D4           
CODE_2395D2:        E6 00         INC $00                   
CODE_2395D4:        A4 00         LDY $00                   
CODE_2395D6:        B9 76 99      LDA.w DATA_219976,y               
CODE_2395D9:        9F 7D 39 7E   STA $7E397D,x             
CODE_2395DD:        B9 7A 99      LDA.w DATA_21997A,y               
CODE_2395E0:        29 F0         AND #$F0                  
CODE_2395E2:        9F 81 39 7E   STA $7E3981,x             
CODE_2395E6:        B9 7A 99      LDA.w DATA_21997A,y               
CODE_2395E9:        29 0F         AND #$0F                  
CODE_2395EB:        9F 7F 39 7E   STA $7E397F,x             
CODE_2395EF:        A9 01         LDA #$01                  
CODE_2395F1:        8D 13 07      STA $0713                 
CODE_2395F4:        60            RTS                       

CODE_2395F5:        EE 9A 06      INC $069A                 
CODE_2395F8:        AD 9A 06      LDA $069A                 
CODE_2395FB:        29 03         AND #$03                  
CODE_2395FD:        D0 13         BNE CODE_239612           
CODE_2395FF:        AF 91 39 7E   LDA $7E3991               
CODE_239603:        1A            INC A                     
CODE_239604:        8F 91 39 7E   STA $7E3991               
CODE_239608:        C9 06         CMP #$06                  
CODE_23960A:        D0 06         BNE CODE_239612           
CODE_23960C:        A9 00         LDA #$00                  
CODE_23960E:        8F 91 39 7E   STA $7E3991               
CODE_239612:        A5 18         LDA $18                   
CODE_239614:        29 80         AND #$80                  
CODE_239616:        F0 3F         BEQ CODE_239657           
CODE_239618:        A9 00         LDA #$00                  
CODE_23961A:        8D 9A 06      STA $069A                 
CODE_23961D:        8D 0F 07      STA $070F                 
CODE_239620:        A0 00         LDY #$00                  
CODE_239622:        AD 42 10      LDA $1042                 
CODE_239625:        C9 01         CMP #$01                  
CODE_239627:        F0 05         BEQ CODE_23962E           
CODE_239629:        C8            INY                       
CODE_23962A:        C9 02         CMP #$02                  
CODE_23962C:        D0 19         BNE CODE_239647           
CODE_23962E:        AF 91 39 7E   LDA $7E3991               
CODE_239632:        29 01         AND #$01                  
CODE_239634:        D9 7E 99      CMP.w DATA_21997E,y               
CODE_239637:        D0 06         BNE CODE_23963F           
CODE_239639:        B9 80 99      LDA.w DATA_219980,y               
CODE_23963C:        8D 9A 06      STA $069A                 
CODE_23963F:        A9 04         LDA #$04                  
CODE_239641:        8D 40 10      STA $1040                 
CODE_239644:        4C 57 96      JMP CODE_239657           

CODE_239647:        AF 91 39 7E   LDA $7E3991               
CODE_23964B:        AA            TAX                       
CODE_23964C:        E0 02         CPX #$02                  
CODE_23964E:        90 04         BCC CODE_239654           
CODE_239650:        E8            INX                       
CODE_239651:        8E 9C 06      STX $069C                 
CODE_239654:        EE 40 10      INC $1040                 
CODE_239657:        A5 96         LDA $96                   
CODE_239659:        8D F8 08      STA $08F8                 
CODE_23965C:        18            CLC                       
CODE_23965D:        69 08         ADC #$08                  
CODE_23965F:        8D FC 08      STA $08FC                 
CODE_239662:        A5 95         LDA $95                   
CODE_239664:        8D F9 08      STA $08F9                 
CODE_239667:        8D FD 08      STA $08FD                 
CODE_23966A:        AF 91 39 7E   LDA $7E3991               
CODE_23966E:        0A            ASL A                     
CODE_23966F:        09 10         ORA #$10                  
CODE_239671:        8D FA 08      STA $08FA                 
CODE_239674:        8D FE 08      STA $08FE                 
CODE_239677:        A9 26         LDA #$26                  
CODE_239679:        8D FB 08      STA $08FB                 
CODE_23967C:        A9 E6         LDA #$E6                  
CODE_23967E:        8D FF 08      STA $08FF                 
CODE_239681:        A9 00         LDA #$00                  
CODE_239683:        8D 5E 0A      STA $0A5E                 
CODE_239686:        8D 5F 0A      STA $0A5F                 
CODE_239689:        60            RTS                       

CODE_23968A:        60            RTS                       

CODE_23968B:        AD 0F 07      LDA $070F                 
CODE_23968E:        D0 5A         BNE CODE_2396EA           
CODE_239690:        EE 0E 07      INC $070E                 
CODE_239693:        AD 0E 07      LDA $070E                 
CODE_239696:        29 03         AND #$03                  
CODE_239698:        D0 50         BNE CODE_2396EA           
CODE_23969A:        AE D4 02      LDX $02D4                 
CODE_23969D:        BD 82 99      LDA.w DATA_219982,x               
CODE_2396A0:        D0 0B         BNE CODE_2396AD           
CODE_2396A2:        A9 55         LDA #$55                  
CODE_2396A4:        8D 0C 07      STA $070C                 
CODE_2396A7:        EE D4 02      INC $02D4                 
CODE_2396AA:        4C 9A 96      JMP CODE_23969A           

CODE_2396AD:        C9 FF         CMP #$FF                  
CODE_2396AF:        D0 0E         BNE CODE_2396BF           
CODE_2396B1:        A9 35         LDA #$35                  
CODE_2396B3:        8D 0C 07      STA $070C                 
CODE_2396B6:        A9 00         LDA #$00                  
CODE_2396B8:        8D D4 02      STA $02D4                 
CODE_2396BB:        EE 0F 07      INC $070F                 
CODE_2396BE:        60            RTS                       

CODE_2396BF:        AC 00 16      LDY $1600                 
CODE_2396C2:        99 04 16      STA $1604,y               
CODE_2396C5:        AD 0B 07      LDA $070B                 
CODE_2396C8:        99 01 16      STA $1601,y               
CODE_2396CB:        AD 0C 07      LDA $070C                 
CODE_2396CE:        99 02 16      STA $1602,y               
CODE_2396D1:        A9 01         LDA #$01                  
CODE_2396D3:        99 03 16      STA $1603,y               
CODE_2396D6:        A9 00         LDA #$00                  
CODE_2396D8:        99 05 16      STA $1605,y               
CODE_2396DB:        AD 00 16      LDA $1600                 
CODE_2396DE:        18            CLC                       
CODE_2396DF:        69 04         ADC #$04                  
CODE_2396E1:        8D 00 16      STA $1600                 
CODE_2396E4:        EE 0C 07      INC $070C                 
CODE_2396E7:        EE D4 02      INC $02D4                 
CODE_2396EA:        60            RTS                       

CODE_2396EB:        A5 15         LDA $15                   
CODE_2396ED:        29 01         AND #$01                  
CODE_2396EF:        D0 13         BNE CODE_239704           
CODE_2396F1:        AF 91 39 7E   LDA $7E3991               
CODE_2396F5:        1A            INC A                     
CODE_2396F6:        8F 91 39 7E   STA $7E3991               
CODE_2396FA:        C9 06         CMP #$06                  
CODE_2396FC:        D0 06         BNE CODE_239704           
CODE_2396FE:        A9 00         LDA #$00                  
CODE_239700:        8F 91 39 7E   STA $7E3991               
CODE_239704:        A5 97         LDA $97                   
CODE_239706:        C9 80         CMP #$80                  
CODE_239708:        F0 05         BEQ CODE_23970F           
CODE_23970A:        38            SEC                       
CODE_23970B:        E9 08         SBC #$08                  
CODE_23970D:        85 97         STA $97                   
CODE_23970F:        A5 97         LDA $97                   
CODE_239711:        0A            ASL A                     
CODE_239712:        0A            ASL A                     
CODE_239713:        0A            ASL A                     
CODE_239714:        0A            ASL A                     
CODE_239715:        85 00         STA $00                   
CODE_239717:        A5 97         LDA $97                   
CODE_239719:        4A            LSR A                     
CODE_23971A:        4A            LSR A                     
CODE_23971B:        4A            LSR A                     
CODE_23971C:        4A            LSR A                     
CODE_23971D:        C9 08         CMP #$08                  
CODE_23971F:        90 02         BCC CODE_239723           
CODE_239721:        09 F0         ORA #$F0                  
CODE_239723:        85 01         STA $01                   
CODE_239725:        A5 98         LDA $98                   
CODE_239727:        18            CLC                       
CODE_239728:        65 00         ADC $00                   
CODE_23972A:        85 98         STA $98                   
CODE_23972C:        A5 95         LDA $95                   
CODE_23972E:        65 01         ADC $01                   
CODE_239730:        85 95         STA $95                   
CODE_239732:        A5 95         LDA $95                   
CODE_239734:        C9 F8         CMP #$F8                  
CODE_239736:        90 19         BCC CODE_239751           
CODE_239738:        A9 F8         LDA #$F8                  
CODE_23973A:        85 95         STA $95                   
CODE_23973C:        A9 00         LDA #$00                  
CODE_23973E:        85 97         STA $97                   
CODE_239740:        8D 0F 07      STA $070F                 
CODE_239743:        AD 9A 06      LDA $069A                 
CODE_239746:        F0 04         BEQ CODE_23974C           
CODE_239748:        EE 40 10      INC $1040                 
CODE_23974B:        60            RTS                       

CODE_23974C:        A9 08         LDA #$08                  
CODE_23974E:        8D 40 10      STA $1040                 
CODE_239751:        60            RTS                       

CODE_239752:        AF 91 39 7E   LDA $7E3991               
CODE_239756:        C9 02         CMP #$02                  
CODE_239758:        B0 18         BCS CODE_239772                   
CODE_23975A:        C9 01         CMP #$01                  
CODE_23975C:        D0 0A         BNE CODE_239768           
CODE_23975E:        A2 03         LDX #$03                  
CODE_239760:        22 5B 97 20   JSL CODE_20975B           
CODE_239764:        EE 40 10      INC $1040                 
CODE_239767:        60            RTS                       

CODE_239768:        AE 26 07      LDX $0726                 
CODE_23976B:        FE 36 07      INC $0736,x               
CODE_23976E:        EE 40 10      INC $1040                 
CODE_239771:        60            RTS                       

CODE_239772:        AD 59 00      LDA $0059                 
CODE_239775:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239779:        dw CODE_23977D
                    dw CODE_2397B1

CODE_23977D:        AF 91 39 7E   LDA $7E3991
CODE_239781:        A8            TAY
CODE_239782:        A9 78         LDA #$78    
CODE_239784:        99 1F 06      STA $061F,y               
CODE_239787:        99 2B 06      STA $062B,y               
CODE_23978A:        A2 F0         LDX #$F0                  
CODE_23978C:        B9 83 07      LDA $0783,y               
CODE_23978F:        0A            ASL A                     
CODE_239790:        48            PHA                       
CODE_239791:        90 02         BCC CODE_239795           
CODE_239793:        A2 00         LDX #$00                  
CODE_239795:        8A            TXA                       
CODE_239796:        85 00         STA $00                   
CODE_239798:        68            PLA                       
CODE_239799:        29 0F         AND #$0F                  
CODE_23979B:        05 00         ORA $00                   
CODE_23979D:        99 25 06      STA $0625,y               
CODE_2397A0:        B9 83 07      LDA $0783,y               
CODE_2397A3:        29 07         AND #$07                  
CODE_2397A5:        09 C0         ORA #$C0                  
CODE_2397A7:        99 19 06      STA $0619,y               
CODE_2397AA:        88            DEY                       
CODE_2397AB:        10 D5         BPL CODE_239782           
CODE_2397AD:        EE 59 00      INC $0059                 
CODE_2397B0:        60            RTS                       

CODE_2397B1:        AF 91 39 7E   LDA $7E3991               
CODE_2397B5:        A8            TAY                       
CODE_2397B6:        20 EC 97      JSR CODE_2397EC           
CODE_2397B9:        20 DE 97      JSR CODE_2397DE           
CODE_2397BC:        B9 19 06      LDA $0619,y               
CODE_2397BF:        18            CLC                       
CODE_2397C0:        69 02         ADC #$02                  
CODE_2397C2:        99 19 06      STA $0619,y               
CODE_2397C5:        88            DEY                       
CODE_2397C6:        10 EE         BPL CODE_2397B6           
CODE_2397C8:        20 27 98      JSR CODE_239827           
CODE_2397CB:        AF 91 39 7E   LDA $7E3991               
CODE_2397CF:        A8            TAY                       
CODE_2397D0:        B9 1F 06      LDA $061F,y               
CODE_2397D3:        C9 F8         CMP #$F8                  
CODE_2397D5:        D0 06         BNE CODE_2397DD           
CODE_2397D7:        88            DEY                       
CODE_2397D8:        10 F6         BPL CODE_2397D0           
CODE_2397DA:        EE 40 10      INC $1040                 
CODE_2397DD:        60            RTS                       

CODE_2397DE:        98            TYA                       
CODE_2397DF:        18            CLC                       
CODE_2397E0:        69 0C         ADC #$0C                  
CODE_2397E2:        A8            TAY                       
CODE_2397E3:        20 FA 97      JSR CODE_2397FA           
CODE_2397E6:        98            TYA                       
CODE_2397E7:        38            SEC                       
CODE_2397E8:        E9 0C         SBC #$0C                  
CODE_2397EA:        A8            TAY                       
CODE_2397EB:        60            RTS                       

CODE_2397EC:        B9 19 06      LDA $0619,y               
CODE_2397EF:        30 09         BMI CODE_2397FA           
CODE_2397F1:        C9 40         CMP #$40                  
CODE_2397F3:        30 05         BMI CODE_2397FA           
CODE_2397F5:        A9 40         LDA #$40                  
CODE_2397F7:        99 19 06      STA $0619,y               
CODE_2397FA:        B9 19 06      LDA $0619,y               
CODE_2397FD:        0A            ASL A                     
CODE_2397FE:        0A            ASL A                     
CODE_2397FF:        0A            ASL A                     
CODE_239800:        0A            ASL A                     
CODE_239801:        85 00         STA $00                   
CODE_239803:        A2 00         LDX #$00                  
CODE_239805:        B9 19 06      LDA $0619,y               
CODE_239808:        4A            LSR A                     
CODE_239809:        4A            LSR A                     
CODE_23980A:        4A            LSR A                     
CODE_23980B:        4A            LSR A                     
CODE_23980C:        C9 08         CMP #$08                  
CODE_23980E:        90 03         BCC CODE_239813           
CODE_239810:        CA            DEX                       
CODE_239811:        09 F0         ORA #$F0                  
CODE_239813:        85 01         STA $01                   
CODE_239815:        B9 31 06      LDA $0631,y               
CODE_239818:        18            CLC                       
CODE_239819:        65 00         ADC $00                   
CODE_23981B:        99 31 06      STA $0631,y               
CODE_23981E:        B9 1F 06      LDA $061F,y               
CODE_239821:        65 01         ADC $01                   
CODE_239823:        99 1F 06      STA $061F,y               
CODE_239826:        60            RTS                       

CODE_239827:        AF 91 39 7E   LDA $7E3991               
CODE_23982B:        A8            TAY                       
CODE_23982C:        98            TYA                       
CODE_23982D:        0A            ASL A                     
CODE_23982E:        0A            ASL A                     
CODE_23982F:        AA            TAX                       
CODE_239830:        B9 1F 06      LDA $061F,y               
CODE_239833:        C9 C0         CMP #$C0                  
CODE_239835:        90 05         BCC CODE_23983C           
CODE_239837:        A9 F8         LDA #$F8                  
CODE_239839:        99 1F 06      STA $061F,y               
CODE_23983C:        9D 80 08      STA $0880,x               
CODE_23983F:        A9 61         LDA #$61                  
CODE_239841:        9D 81 08      STA $0881,x               
CODE_239844:        A9 01         LDA #$01                  
CODE_239846:        9D 82 08      STA $0882,x               
CODE_239849:        B9 2B 06      LDA $062B,y               
CODE_23984C:        9D 83 08      STA $0883,x               
CODE_23984F:        88            DEY                       
CODE_239850:        10 DA         BPL CODE_23982C           
CODE_239852:        60            RTS                       

CODE_239853:        AD 11 07      LDA $0711                 
CODE_239856:        D0 05         BNE CODE_23985D           
CODE_239858:        A9 80         LDA #$80                  
CODE_23985A:        8D 11 07      STA $0711                 
CODE_23985D:        CE 11 07      DEC $0711                 
CODE_239860:        D0 0E         BNE CODE_239870           
CODE_239862:        EE 40 10      INC $1040                 
CODE_239865:        AD 40 10      LDA $1040                 
CODE_239868:        C9 09         CMP #$09                  
CODE_23986A:        D0 04         BNE CODE_239870           
CODE_23986C:        A9 01         LDA #$01                  
CODE_23986E:        85 14         STA $14                   
CODE_239870:        60            RTS                       

CODE_239871:        C2 10         REP #$10                  
CODE_239873:        A9 1F         LDA #$1F                  
CODE_239875:        85 00         STA $00                   
CODE_239877:        A0 60 01      LDY #$0160                
CODE_23987A:        A9 08         LDA #$08                  
CODE_23987C:        99 00 08      STA $0800,y               
CODE_23987F:        99 04 08      STA $0804,y               
CODE_239882:        A9 F0         LDA #$F0                  
CODE_239884:        99 08 08      STA $0808,y               
CODE_239887:        99 0C 08      STA $080C,y               
CODE_23988A:        A9 F8         LDA #$F8                  
CODE_23988C:        99 10 08      STA $0810,y               
CODE_23988F:        99 14 08      STA $0814,y               
CODE_239892:        A9 00         LDA #$00                  
CODE_239894:        99 18 08      STA $0818,y               
CODE_239897:        99 1C 08      STA $081C,y               
CODE_23989A:        A5 00         LDA $00                   
CODE_23989C:        99 01 08      STA $0801,y               
CODE_23989F:        99 09 08      STA $0809,y               
CODE_2398A2:        99 11 08      STA $0811,y               
CODE_2398A5:        99 19 08      STA $0819,y               
CODE_2398A8:        18            CLC                       
CODE_2398A9:        69 08         ADC #$08                  
CODE_2398AB:        99 05 08      STA $0805,y               
CODE_2398AE:        99 0D 08      STA $080D,y               
CODE_2398B1:        99 15 08      STA $0815,y               
CODE_2398B4:        99 1D 08      STA $081D,y               
CODE_2398B7:        A9 70         LDA #$70                  
CODE_2398B9:        99 02 08      STA $0802,y               
CODE_2398BC:        99 0A 08      STA $080A,y               
CODE_2398BF:        1A            INC A                     
CODE_2398C0:        99 06 08      STA $0806,y               
CODE_2398C3:        99 0E 08      STA $080E,y               
CODE_2398C6:        A9 7A         LDA #$7A                  
CODE_2398C8:        99 12 08      STA $0812,y               
CODE_2398CB:        99 1A 08      STA $081A,y               
CODE_2398CE:        1A            INC A                     
CODE_2398CF:        99 16 08      STA $0816,y               
CODE_2398D2:        99 1E 08      STA $081E,y               
CODE_2398D5:        A9 2A         LDA #$2A                  
CODE_2398D7:        99 03 08      STA $0803,y               
CODE_2398DA:        99 07 08      STA $0807,y               
CODE_2398DD:        99 0B 08      STA $080B,y               
CODE_2398E0:        99 0F 08      STA $080F,y               
CODE_2398E3:        99 13 08      STA $0813,y               
CODE_2398E6:        99 17 08      STA $0817,y               
CODE_2398E9:        99 1B 08      STA $081B,y               
CODE_2398EC:        99 1F 08      STA $081F,y               
CODE_2398EF:        5A            PHY                       
CODE_2398F0:        C2 20         REP #$20                  
CODE_2398F2:        98            TYA                       
CODE_2398F3:        4A            LSR A                     
CODE_2398F4:        4A            LSR A                     
CODE_2398F5:        A8            TAY                       
CODE_2398F6:        E2 20         SEP #$20                  
CODE_2398F8:        A9 00         LDA #$00                  
CODE_2398FA:        99 20 0A      STA $0A20,y               
CODE_2398FD:        99 21 0A      STA $0A21,y               
CODE_239900:        99 22 0A      STA $0A22,y               
CODE_239903:        99 23 0A      STA $0A23,y               
CODE_239906:        99 24 0A      STA $0A24,y               
CODE_239909:        99 25 0A      STA $0A25,y               
CODE_23990C:        99 26 0A      STA $0A26,y               
CODE_23990F:        99 27 0A      STA $0A27,y               
CODE_239912:        7A            PLY                       
CODE_239913:        A5 00         LDA $00                   
CODE_239915:        18            CLC                       
CODE_239916:        69 10         ADC #$10                  
CODE_239918:        85 00         STA $00                   
CODE_23991A:        C2 20         REP #$20                  
CODE_23991C:        98            TYA                       
CODE_23991D:        38            SEC                       
CODE_23991E:        E9 20 00      SBC #$0020                
CODE_239921:        A8            TAY                       
CODE_239922:        E2 20         SEP #$20                  
CODE_239924:        C0 20 00      CPY #$0020                
CODE_239927:        F0 03         BEQ CODE_23992C           
CODE_239929:        82 4E FF      BRL CODE_23987A           

CODE_23992C:        E2 10         SEP #$10                  
CODE_23992E:        A0 2F         LDY #$2F                  
CODE_239930:        B9 8B 99      LDA.w DATA_21998B,y               
CODE_239933:        99 00 08      STA $0800,y               
CODE_239936:        88            DEY                       
CODE_239937:        10 F7         BPL CODE_239930           
CODE_239939:        C2 20         REP #$20                  
CODE_23993B:        A9 00 00      LDA #$0000                
CODE_23993E:        8D 20 0A      STA $0A20                 
CODE_239941:        8D 22 0A      STA $0A22                 
CODE_239944:        8D 24 0A      STA $0A24                 
CODE_239947:        8D 26 0A      STA $0A26                 
CODE_23994A:        8D 28 0A      STA $0A28                 
CODE_23994D:        8D 2A 0A      STA $0A2A                 
CODE_239950:        E2 20         SEP #$20                  
CODE_239952:        6B            RTL                       

CODE_239953:        20 57 99      JSR CODE_239957           
CODE_239956:        6B            RTL                       

CODE_239957:        AD 09 10      LDA $1009                 
CODE_23995A:        0A            ASL A                     
CODE_23995B:        AA            TAX                       
CODE_23995C:        7C 5F 99      JMP (PNTR_23995F,x)             

PNTR_23995F:        dw CODE_239963
                    dw CODE_23997B

CODE_239963:        AD 0A 10      LDA $100A
CODE_239966:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23996A:        dw CODE_23996E
                    dw CODE_239972

CODE_23996E:        EE 0A 10      INC $100A                 
CODE_239971:        60            RTS                       

CODE_239972:        EE 09 10      INC $1009                 
CODE_239975:        A9 00         LDA #$00                  
CODE_239977:        8D 19 10      STA $1019                 
CODE_23997A:        60            RTS                       

CODE_23997B:        22 00 80 2A   JSL CODE_2A8000           
CODE_23997F:        AD 0B 10      LDA $100B                 
CODE_239982:        0A            ASL A                     
CODE_239983:        AA            TAX                       
CODE_239984:        7C 87 99      JMP (PNTR_239987,x)             

PNTR_239987:        dw CODE_239993
                    dw CODE_2399D5
                    dw CODE_239B98
                    dw CODE_239BB5
                    dw CODE_239BCD
                    dw CODE_239BE1
   
CODE_239993:        9C 0C 10      STZ $100C                 
CODE_239996:        9C 0D 10      STZ $100D                 
CODE_239999:        9C 0E 10      STZ $100E                 
CODE_23999C:        9C F9 1F      STZ $1FF9                 
CODE_23999F:        A9 70         LDA #$70                  
CODE_2399A1:        8D 0F 10      STA $100F                 
CODE_2399A4:        A9 90         LDA #$90                  
CODE_2399A6:        8D 10 10      STA $1010                 
CODE_2399A9:        A9 7F         LDA #$7F                  
CODE_2399AB:        8D 11 10      STA $1011                 
CODE_2399AE:        9C 5F 1A      STZ $1A5F                 
CODE_2399B1:        9C 15 10      STZ $1015                 
CODE_2399B4:        9C 16 10      STZ $1016                 
CODE_2399B7:        9C 17 10      STZ $1017                 
CODE_2399BA:        9C 00 10      STZ $1000                 
CODE_2399BD:        9C 01 10      STZ $1001                 
CODE_2399C0:        9C 02 10      STZ $1002                 
CODE_2399C3:        9C 03 10      STZ $1003                 
CODE_2399C6:        9C 04 10      STZ $1004                 
CODE_2399C9:        9C 05 10      STZ $1005                 
CODE_2399CC:        A9 30         LDA #$30                  
CODE_2399CE:        8D 60 1A      STA $1A60                 
CODE_2399D1:        EE 0B 10      INC $100B                 
CODE_2399D4:        60            RTS                       

CODE_2399D5:        20 DC A4      JSR CODE_23A4DC           
CODE_2399D8:        90 4F         BCC CODE_239A29           
CODE_2399DA:        AD 0C 10      LDA $100C                 
CODE_2399DD:        D0 10         BNE CODE_2399EF           
CODE_2399DF:        EE 0C 10      INC $100C                 
CODE_2399E2:        AD 83 07      LDA $0783                 
CODE_2399E5:        29 0F         AND #$0F                  
CODE_2399E7:        09 20         ORA #$20                  
CODE_2399E9:        8D 12 10      STA $1012                 
CODE_2399EC:        4C 24 9A      JMP CODE_239A24           

CODE_2399EF:        AD 0D 10      LDA $100D                 
CODE_2399F2:        D0 17         BNE CODE_239A0B           
CODE_2399F4:        AD 0C 10      LDA $100C                 
CODE_2399F7:        C9 02         CMP #$02                  
CODE_2399F9:        90 10         BCC CODE_239A0B           
CODE_2399FB:        EE 0D 10      INC $100D                 
CODE_2399FE:        AD 84 07      LDA $0784                 
CODE_239A01:        29 1F         AND #$1F                  
CODE_239A03:        09 20         ORA #$20                  
CODE_239A05:        8D 13 10      STA $1013                 
CODE_239A08:        4C 24 9A      JMP CODE_239A24           

CODE_239A0B:        AD 0E 10      LDA $100E                 
CODE_239A0E:        D0 19         BNE CODE_239A29           
CODE_239A10:        AD 0D 10      LDA $100D                 
CODE_239A13:        C9 02         CMP #$02                  
CODE_239A15:        90 12         BCC CODE_239A29           
CODE_239A17:        EE 0E 10      INC $100E                 
CODE_239A1A:        AD 85 07      LDA $0785                 
CODE_239A1D:        29 3F         AND #$3F                  
CODE_239A1F:        09 40         ORA #$40                  
CODE_239A21:        8D 14 10      STA $1014                 
CODE_239A24:        A9 23         LDA #$23                  
CODE_239A26:        8D 03 12      STA $1203                 
CODE_239A29:        A2 02         LDX #$02                  
CODE_239A2B:        86 19         STX $19                   
CODE_239A2D:        BD 12 10      LDA $1012,x               
CODE_239A30:        F0 03         BEQ CODE_239A35           
CODE_239A32:        DE 12 10      DEC $1012,x               
CODE_239A35:        20 3C 9A      JSR CODE_239A3C           
CODE_239A38:        CA            DEX                       
CODE_239A39:        10 F0         BPL CODE_239A2B           
CODE_239A3B:        60            RTS                       

CODE_239A3C:        BD 0C 10      LDA $100C,x               
CODE_239A3F:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239A43:        dw CODE_239A4F
                    dw CODE_239A6F
                    dw CODE_239A7A
                    dw CODE_239ABB
                    dw CODE_239AE5
                    dw CODE_239B6D

CODE_239A4F:        E0 02         CPX #$02
CODE_239A51:        D0 19         BNE CODE_239A6C
CODE_239A53:        AD 5F 1A      LDA $1A5F
CODE_239A56:        18            CLC                       
CODE_239A57:        6D 60 1A      ADC $1A60                 
CODE_239A5A:        8D 5F 1A      STA $1A5F                 
CODE_239A5D:        CE E0 02      DEC $02E0                 
CODE_239A60:        10 0A         BPL CODE_239A6C           
CODE_239A62:        A9 06         LDA #$06                  
CODE_239A64:        8D E0 02      STA $02E0                 
CODE_239A67:        A9 41         LDA #$41                  
CODE_239A69:        8D 00 12      STA $1200                 
CODE_239A6C:        4C C5 9C      JMP CODE_239CC5           

CODE_239A6F:        BD 12 10      LDA $1012,x               
CODE_239A72:        D0 DB         BNE CODE_239A4F           
CODE_239A74:        FE 0C 10      INC $100C,x               
CODE_239A77:        4C 4F 9A      JMP CODE_239A4F           

CODE_239A7A:        BD 0F 10      LDA $100F,x               
CODE_239A7D:        18            CLC                       
CODE_239A7E:        69 3F         ADC #$3F                  
CODE_239A80:        C9 7F         CMP #$7F                  
CODE_239A82:        B0 06         BCS CODE_239A8A                   
CODE_239A84:        FE 0C 10      INC $100C,x               
CODE_239A87:        4C 4F 9A      JMP CODE_239A4F           

CODE_239A8A:        E0 02         CPX #$02                  
CODE_239A8C:        D0 13         BNE CODE_239AA1           
CODE_239A8E:        AD 60 1A      LDA $1A60                 
CODE_239A91:        C9 11         CMP #$11                  
CODE_239A93:        90 0C         BCC CODE_239AA1           
CODE_239A95:        CE 60 1A      DEC $1A60                 
CODE_239A98:        A5 15         LDA $15                   
CODE_239A9A:        29 01         AND #$01                  
CODE_239A9C:        D0 03         BNE CODE_239AA1           
CODE_239A9E:        CE 60 1A      DEC $1A60                 
CODE_239AA1:        BD 0F 10      LDA $100F,x               
CODE_239AA4:        10 09         BPL CODE_239AAF           
CODE_239AA6:        BD 0F 10      LDA $100F,x               
CODE_239AA9:        18            CLC                       
CODE_239AAA:        69 04         ADC #$04                  
CODE_239AAC:        9D 0F 10      STA $100F,x               
CODE_239AAF:        BD 0F 10      LDA $100F,x               
CODE_239AB2:        38            SEC                       
CODE_239AB3:        E9 02         SBC #$02                  
CODE_239AB5:        9D 0F 10      STA $100F,x               
CODE_239AB8:        4C 4F 9A      JMP CODE_239A4F           

CODE_239ABB:        BD 00 10      LDA $1000,x               
CODE_239ABE:        29 7C         AND #$7C                  
CODE_239AC0:        D0 20         BNE CODE_239AE2           
CODE_239AC2:        A9 3E         LDA #$3E                  
CODE_239AC4:        8D 03 12      STA $1203                 
CODE_239AC7:        A9 12         LDA #$12                  
CODE_239AC9:        9D 12 10      STA $1012,x               
CODE_239ACC:        BD 00 10      LDA $1000,x               
CODE_239ACF:        18            CLC                       
CODE_239AD0:        69 20         ADC #$20                  
CODE_239AD2:        29 80         AND #$80                  
CODE_239AD4:        9D 00 10      STA $1000,x               
CODE_239AD7:        BD 03 10      LDA $1003,x               
CODE_239ADA:        69 00         ADC #$00                  
CODE_239ADC:        9D 03 10      STA $1003,x               
CODE_239ADF:        FE 0C 10      INC $100C,x               
CODE_239AE2:        4C 4F 9A      JMP CODE_239A4F           

CODE_239AE5:        BD 12 10      LDA $1012,x               
CODE_239AE8:        D0 74         BNE CODE_239B5E           
CODE_239AEA:        BD 00 10      LDA $1000,x               
CODE_239AED:        18            CLC                       
CODE_239AEE:        69 20         ADC #$20                  
CODE_239AF0:        29 80         AND #$80                  
CODE_239AF2:        9D 00 10      STA $1000,x               
CODE_239AF5:        85 00         STA $00                   
CODE_239AF7:        BD 03 10      LDA $1003,x               
CODE_239AFA:        69 00         ADC #$00                  
CODE_239AFC:        9D 03 10      STA $1003,x               
CODE_239AFF:        06 00         ASL $00                   
CODE_239B01:        2A            ROL A                     
CODE_239B02:        29 03         AND #$03                  
CODE_239B04:        9D 06 10      STA $1006,x               
CODE_239B07:        E0 02         CPX #$02                  
CODE_239B09:        D0 4D         BNE CODE_239B58           
CODE_239B0B:        A9 50         LDA #$50                  
CODE_239B0D:        9D 12 10      STA $1012,x               
CODE_239B10:        AD 06 10      LDA $1006                 
CODE_239B13:        0A            ASL A                     
CODE_239B14:        AA            TAX                       
CODE_239B15:        A0 01         LDY #$01                  
CODE_239B17:        B9 07 10      LDA $1007,y               
CODE_239B1A:        DF BB 99 21   CMP.l DATA_2199BB,x             
CODE_239B1E:        F0 06         BEQ CODE_239B26           
CODE_239B20:        DF BC 99 21   CMP.l DATA_2199BB+1,x             
CODE_239B24:        D0 2D         BNE CODE_239B53           
CODE_239B26:        88            DEY                       
CODE_239B27:        10 EE         BPL CODE_239B17           
CODE_239B29:        AE 06 10      LDX $1006                 
CODE_239B2C:        BF C3 99 21   LDA.l DATA_2199C3,x             
CODE_239B30:        8D F9 1F      STA $1FF9                 
CODE_239B33:        22 0D 81 2A   JSL CODE_2A810D           
CODE_239B37:        A9 07         LDA #$07                  
CODE_239B39:        8D 02 12      STA $1202                 
CODE_239B3C:        A9 60         LDA #$60                  
CODE_239B3E:        8D D8 02      STA $02D8                 
CODE_239B41:        A9 04         LDA #$04                  
CODE_239B43:        8D 0B 10      STA $100B                 
CODE_239B46:        A9 F0         LDA #$F0                  
CODE_239B48:        8D 0C 10      STA $100C                 
CODE_239B4B:        9C 12 10      STZ $1012                 
CODE_239B4E:        A6 19         LDX $19                   
CODE_239B50:        68            PLA                       
CODE_239B51:        68            PLA                       
CODE_239B52:        60            RTS                       

CODE_239B53:        A9 2A         LDA #$2A                  
CODE_239B55:        8D 03 12      STA $1203                 
CODE_239B58:        A6 19         LDX $19                   
CODE_239B5A:        FE 0C 10      INC $100C,x               
CODE_239B5D:        60            RTS                       

CODE_239B5E:        A0 10         LDY #$10                  
CODE_239B60:        29 04         AND #$04                  
CODE_239B62:        D0 02         BNE CODE_239B66           
CODE_239B64:        A0 F0         LDY #$F0                  
CODE_239B66:        98            TYA                       
CODE_239B67:        9D 0F 10      STA $100F,x               
CODE_239B6A:        4C 4F 9A      JMP CODE_239A4F           

CODE_239B6D:        E0 02         CPX #$02                  
CODE_239B6F:        D0 05         BNE CODE_239B76           
CODE_239B71:        BD 12 10      LDA $1012,x               
CODE_239B74:        F0 01         BEQ CODE_239B77           
CODE_239B76:        60            RTS                       

CODE_239B77:        AD 19 10      LDA $1019                 
CODE_239B7A:        F0 0F         BEQ CODE_239B8B           
CODE_239B7C:        A5 17         LDA $17                   
CODE_239B7E:        29 D0         AND #$D0                  
CODE_239B80:        F0 08         BEQ CODE_239B8A           
CODE_239B82:        CE 19 10      DEC $1019                 
CODE_239B85:        A9 00         LDA #$00                  
CODE_239B87:        8D 0B 10      STA $100B                 
CODE_239B8A:        60            RTS                       

CODE_239B8B:        68            PLA                       
CODE_239B8C:        68            PLA                       
CODE_239B8D:        A9 02         LDA #$02                  
CODE_239B8F:        8D 0B 10      STA $100B                 
CODE_239B92:        A9 00         LDA #$00                  
CODE_239B94:        8D 0C 10      STA $100C                 
CODE_239B97:        60            RTS                       

CODE_239B98:        AD 0C 10      LDA $100C                 
CODE_239B9B:        D0 08         BNE CODE_239BA5           
CODE_239B9D:        EE 0C 10      INC $100C                 
CODE_239BA0:        22 6B E2 29   JSL CODE_29E26B           
CODE_239BA4:        60            RTS                       

CODE_239BA5:        A5 15         LDA $15                   
CODE_239BA7:        29 01         AND #$01                  
CODE_239BA9:        D0 09         BNE CODE_239BB4           
CODE_239BAB:        C6 16         DEC $16                   
CODE_239BAD:        A5 16         LDA $16                   
CODE_239BAF:        D0 03         BNE CODE_239BB4           
CODE_239BB1:        EE 0B 10      INC $100B                 
CODE_239BB4:        60            RTS                       

CODE_239BB5:        A9 01         LDA #$01                  
CODE_239BB7:        8D 1E 10      STA $101E                 
CODE_239BBA:        A9 01         LDA #$01                  
CODE_239BBC:        85 14         STA $14                   
CODE_239BBE:        A9 80         LDA #$80                  
CODE_239BC0:        85 16         STA $16                   
CODE_239BC2:        A9 C0         LDA #$C0                  
CODE_239BC4:        8D 00 01      STA $0100                 
CODE_239BC7:        A9 00         LDA #$00                  
CODE_239BC9:        8D 27 04      STA $0427                 
CODE_239BCC:        60            RTS                       

CODE_239BCD:        AD D8 02      LDA $02D8                 
CODE_239BD0:        D0 06         BNE CODE_239BD8           
CODE_239BD2:        A9 05         LDA #$05                  
CODE_239BD4:        8D 0B 10      STA $100B                 
CODE_239BD7:        60            RTS                       

CODE_239BD8:        CE D8 02      DEC $02D8                 
CODE_239BDB:        60            RTS                       

DATA_239BDC:        db $32,$34,$36,$00,$38   

CODE_239BE1:        AD 12 10      LDA $1012                 
CODE_239BE4:        F0 2E         BEQ CODE_239C14           
CODE_239BE6:        CE 12 10      DEC $1012                 
CODE_239BE9:        D0 03         BNE CODE_239BEE           
CODE_239BEB:        4C 8D 9B      JMP CODE_239B8D           

CODE_239BEE:        A5 15         LDA $15                   
CODE_239BF0:        29 1F         AND #$1F                  
CODE_239BF2:        D0 1D         BNE CODE_239C11           
CODE_239BF4:        AD 0D 10      LDA $100D                 
CODE_239BF7:        F0 18         BEQ CODE_239C11           
CODE_239BF9:        A9 A0         LDA #$A0                  
CODE_239BFB:        8D 12 10      STA $1012                 
CODE_239BFE:        CE 0D 10      DEC $100D                 
CODE_239C01:        A9 05         LDA #$05                  
CODE_239C03:        8D 03 12      STA $1203                 
CODE_239C06:        AE 26 07      LDX $0726                 
CODE_239C09:        BD 36 07      LDA $0736,x               
CODE_239C0C:        30 03         BMI CODE_239C11           
CODE_239C0E:        FE 36 07      INC $0736,x               
CODE_239C11:        4C 32 9C      JMP CODE_239C32           

CODE_239C14:        CE 0C 10      DEC $100C                 
CODE_239C17:        CE 0C 10      DEC $100C                 
CODE_239C1A:        CE 0C 10      DEC $100C                 
CODE_239C1D:        CE 0C 10      DEC $100C                 
CODE_239C20:        AD 0C 10      LDA $100C                 
CODE_239C23:        C9 60         CMP #$60                  
CODE_239C25:        B0 0B         BCS CODE_239C32                   
CODE_239C27:        AD F9 1F      LDA $1FF9                 
CODE_239C2A:        8D 0D 10      STA $100D                 
CODE_239C2D:        A9 50         LDA #$50                  
CODE_239C2F:        8D 12 10      STA $1012                 
CODE_239C32:        A9 70         LDA #$70                  
CODE_239C34:        8D D0 09      STA $09D0                 
CODE_239C37:        8D DC 09      STA $09DC                 
CODE_239C3A:        A9 7C         LDA #$7C                  
CODE_239C3C:        8D D4 09      STA $09D4                 
CODE_239C3F:        8D E0 09      STA $09E0                 
CODE_239C42:        A9 84         LDA #$84                  
CODE_239C44:        8D D8 09      STA $09D8                 
CODE_239C47:        8D E4 09      STA $09E4                 
CODE_239C4A:        AD 0C 10      LDA $100C                 
CODE_239C4D:        8D D1 09      STA $09D1                 
CODE_239C50:        8D D5 09      STA $09D5                 
CODE_239C53:        8D D9 09      STA $09D9                 
CODE_239C56:        18            CLC                       
CODE_239C57:        69 08         ADC #$08                  
CODE_239C59:        8D DD 09      STA $09DD                 
CODE_239C5C:        8D E1 09      STA $09E1                 
CODE_239C5F:        8D E5 09      STA $09E5                 
CODE_239C62:        AE F9 1F      LDX $1FF9                 
CODE_239C65:        BF DB 9B 23   LDA.l DATA_239BDC-1,x             
CODE_239C69:        8D D2 09      STA $09D2                 
CODE_239C6C:        1A            INC A                     
CODE_239C6D:        8D DE 09      STA $09DE                 
CODE_239C70:        A9 0C         LDA #$0C                  
CODE_239C72:        8D D6 09      STA $09D6                 
CODE_239C75:        1A            INC A                     
CODE_239C76:        8D E2 09      STA $09E2                 
CODE_239C79:        1A            INC A                     
CODE_239C7A:        8D DA 09      STA $09DA                 
CODE_239C7D:        1A            INC A                     
CODE_239C7E:        8D E6 09      STA $09E6                 
CODE_239C81:        A9 22         LDA #$22                  
CODE_239C83:        8D D3 09      STA $09D3                 
CODE_239C86:        8D DF 09      STA $09DF                 
CODE_239C89:        8D D7 09      STA $09D7                 
CODE_239C8C:        8D E3 09      STA $09E3                 
CODE_239C8F:        8D DB 09      STA $09DB                 
CODE_239C92:        8D E7 09      STA $09E7                 
CODE_239C95:        A9 00         LDA #$00                  
CODE_239C97:        8D 94 0A      STA $0A94                 
CODE_239C9A:        8D 95 0A      STA $0A95                 
CODE_239C9D:        8D 96 0A      STA $0A96                 
CODE_239CA0:        8D 97 0A      STA $0A97                 
CODE_239CA3:        8D 98 0A      STA $0A98                 
CODE_239CA6:        8D 99 0A      STA $0A99                 
CODE_239CA9:        60            RTS                       

CODE_239CAA:        AD 1C 10      LDA $101C                 
CODE_239CAD:        F0 03         BEQ CODE_239CB2           
CODE_239CAF:        CE 1C 10      DEC $101C                 
CODE_239CB2:        AD 1D 10      LDA $101D                 
CODE_239CB5:        F0 0D         BEQ CODE_239CC4           
CODE_239CB7:        AD 1C 10      LDA $101C                 
CODE_239CBA:        D0 08         BNE CODE_239CC4           
CODE_239CBC:        A9 04         LDA #$04                  
CODE_239CBE:        8D 1C 10      STA $101C                 
CODE_239CC1:        CE 1D 10      DEC $101D                 
CODE_239CC4:        60            RTS                       

CODE_239CC5:        BD 0F 10      LDA $100F,x               
CODE_239CC8:        0A            ASL A                     
CODE_239CC9:        0A            ASL A                     
CODE_239CCA:        0A            ASL A                     
CODE_239CCB:        0A            ASL A                     
CODE_239CCC:        85 01         STA $01                   
CODE_239CCE:        BD 0F 10      LDA $100F,x               
CODE_239CD1:        4A            LSR A                     
CODE_239CD2:        4A            LSR A                     
CODE_239CD3:        4A            LSR A                     
CODE_239CD4:        4A            LSR A                     
CODE_239CD5:        C9 08         CMP #$08                  
CODE_239CD7:        90 02         BCC CODE_239CDB           
CODE_239CD9:        09 F0         ORA #$F0                  
CODE_239CDB:        85 00         STA $00                   
CODE_239CDD:        A0 00         LDY #$00                  
CODE_239CDF:        C9 00         CMP #$00                  
CODE_239CE1:        10 01         BPL CODE_239CE4           
CODE_239CE3:        88            DEY                       
CODE_239CE4:        84 02         STY $02                   
CODE_239CE6:        BD 15 10      LDA $1015,x               
CODE_239CE9:        18            CLC                       
CODE_239CEA:        65 01         ADC $01                   
CODE_239CEC:        9D 15 10      STA $1015,x               
CODE_239CEF:        BD 00 10      LDA $1000,x               
CODE_239CF2:        65 00         ADC $00                   
CODE_239CF4:        9D 00 10      STA $1000,x               
CODE_239CF7:        BD 03 10      LDA $1003,x               
CODE_239CFA:        65 02         ADC $02                   
CODE_239CFC:        9D 03 10      STA $1003,x               
CODE_239CFF:        60            RTS                       

CODE_239D00:        22 A5 81 2A   JSL CODE_2A81A5           
CODE_239D04:        A2 80         LDX #$80                  
CODE_239D06:        8E 15 21      STX $2115                 
CODE_239D09:        A9 80         LDA #$80                  
CODE_239D0B:        8D 16 21      STA $2116                 
CODE_239D0E:        A9 00         LDA #$00                  
CODE_239D10:        8D 17 21      STA $2117                 
CODE_239D13:        22 21 9D 23   JSL CODE_239D21           
CODE_239D17:        A9 80         LDA #$80                  
CODE_239D19:        8D 16 21      STA $2116                 
CODE_239D1C:        A9 04         LDA #$04                  
CODE_239D1E:        8D 17 21      STA $2117                 
CODE_239D21:        C2 30         REP #$30                  
CODE_239D23:        A0 00 00      LDY #$0000                
CODE_239D26:        A9 FC 00      LDA #$00FC                
CODE_239D29:        8D 18 21      STA $2118                 
CODE_239D2C:        8D 18 21      STA $2118                 
CODE_239D2F:        C8            INY                       
CODE_239D30:        C0 30 01      CPY #$0130                
CODE_239D33:        D0 F1         BNE CODE_239D26           
CODE_239D35:        29 00 00      AND #$0000                
CODE_239D38:        E2 30         SEP #$30                  
CODE_239D3A:        C2 10         REP #$10                  
CODE_239D3C:        64 01         STZ $01                   
CODE_239D3E:        64 04         STZ $04                   
CODE_239D40:        A9 C0         LDA #$C0                  
CODE_239D42:        85 00         STA $00                   
CODE_239D44:        A0 0C 00      LDY #$000C                
CODE_239D47:        A5 04         LDA $04                   
CODE_239D49:        0A            ASL A                     
CODE_239D4A:        18            CLC                       
CODE_239D4B:        65 04         ADC $04                   
CODE_239D4D:        AA            TAX                       
CODE_239D4E:        BF FB 82 22   LDA.l PNTR_2282FB,x             
CODE_239D52:        85 0D         STA $0D                   
CODE_239D54:        BF FC 82 22   LDA.l PNTR_2282FB+1,x             
CODE_239D58:        85 0E         STA $0E                   
CODE_239D5A:        BF FD 82 22   LDA.l PNTR_2282FB+2,x             
CODE_239D5E:        85 0F         STA $0F                   
CODE_239D60:        C2 20         REP #$20                  
CODE_239D62:        A5 00         LDA $00                   
CODE_239D64:        8D 16 21      STA $2116                 
CODE_239D67:        A2 00 00      LDX #$0000                
CODE_239D6A:        B7 0D         LDA [$0D],y               
CODE_239D6C:        8D 18 21      STA $2118                 
CODE_239D6F:        C8            INY                       
CODE_239D70:        C8            INY                       
CODE_239D71:        E8            INX                       
CODE_239D72:        E0 06 00      CPX #$0006                
CODE_239D75:        D0 F3         BNE CODE_239D6A           
CODE_239D77:        98            TYA                       
CODE_239D78:        18            CLC                       
CODE_239D79:        69 0C 00      ADC #$000C                
CODE_239D7C:        A8            TAY                       
CODE_239D7D:        29 FF 00      AND #$00FF                
CODE_239D80:        E2 20         SEP #$20                  
CODE_239D82:        A5 00         LDA $00                   
CODE_239D84:        18            CLC                       
CODE_239D85:        69 20         ADC #$20                  
CODE_239D87:        90 02         BCC CODE_239D8B           
CODE_239D89:        E6 01         INC $01                   
CODE_239D8B:        85 00         STA $00                   
CODE_239D8D:        29 E0         AND #$E0                  
CODE_239D8F:        C9 80         CMP #$80                  
CODE_239D91:        D0 CD         BNE CODE_239D60           
CODE_239D93:        A5 01         LDA $01                   
CODE_239D95:        29 03         AND #$03                  
CODE_239D97:        C9 02         CMP #$02                  
CODE_239D99:        D0 C5         BNE CODE_239D60           
CODE_239D9B:        C6 01         DEC $01                   
CODE_239D9D:        C6 01         DEC $01                   
CODE_239D9F:        A5 00         LDA $00                   
CODE_239DA1:        18            CLC                       
CODE_239DA2:        69 46         ADC #$46                  
CODE_239DA4:        85 00         STA $00                   
CODE_239DA6:        A5 04         LDA $04                   
CODE_239DA8:        C9 01         CMP #$01                  
CODE_239DAA:        D0 0A         BNE CODE_239DB6           
CODE_239DAC:        C0 5C 01      CPY #$015C                
CODE_239DAF:        F0 05         BEQ CODE_239DB6           
CODE_239DB1:        A0 0C 00      LDY #$000C                
CODE_239DB4:        80 AA         BRA CODE_239D60           

CODE_239DB6:        A5 00         LDA $00                   
CODE_239DB8:        18            CLC                       
CODE_239DB9:        69 04         ADC #$04                  
CODE_239DBB:        85 00         STA $00                   
CODE_239DBD:        A0 00 00      LDY #$0000                
CODE_239DC0:        A5 01         LDA $01                   
CODE_239DC2:        C9 04         CMP #$04                  
CODE_239DC4:        F0 0F         BEQ CODE_239DD5           
CODE_239DC6:        E6 04         INC $04                   
CODE_239DC8:        A5 04         LDA $04                   
CODE_239DCA:        C9 03         CMP #$03                  
CODE_239DCC:        F0 03         BEQ CODE_239DD1           
CODE_239DCE:        82 76 FF      BRL CODE_239D47           

CODE_239DD1:        A9 04         LDA #$04                  
CODE_239DD3:        85 01         STA $01                   
CODE_239DD5:        C6 04         DEC $04                   
CODE_239DD7:        30 09         BMI CODE_239DE2           
CODE_239DD9:        A5 04         LDA $04                   
CODE_239DDB:        C9 02         CMP #$02                  
CODE_239DDD:        F0 06         BEQ CODE_239DE5           
CODE_239DDF:        4C 47 9D      JMP CODE_239D47           

CODE_239DE2:        E2 10         SEP #$10                  
CODE_239DE4:        6B            RTL                       

CODE_239DE5:        82 58 FF      BRL CODE_239D40           

CODE_239DE8:        20 EC 9D      JSR CODE_239DEC           
CODE_239DEB:        6B            RTL                       

CODE_239DEC:        AD 41 10      LDA $1041                 
CODE_239DEF:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239DF3:        dw CODE_239DF9
                    dw CODE_239E18
                    dw CODE_239E36

CODE_239DF9:        AD 42 07      LDA $0742                 ;Flag to shuffle N-Space cards
CODE_239DFC:        D0 11         BNE CODE_239E0F           ;$00 means N-Spade was cleared and it's time to shuffle
CODE_239DFE:        A0 11         LDY #$11                  ;\
CODE_239E00:        B9 1C 9A      LDA.w DATA_219A1C,y       ; |
CODE_239E03:        99 84 1E      STA $1E84,y               ; | Load set of cards
CODE_239E06:        88            DEY                       ; |
CODE_239E07:        10 F7         BPL CODE_239E00           ; |
CODE_239E09:        20 E6 9F      JSR CODE_239FE6           ;/ Shuffle them
CODE_239E0C:        EE 42 07      INC $0742                 ;Set flag to keep the cards
CODE_239E0F:        EE 41 10      INC $1041                 
CODE_239E12:        A9 11         LDA #$11                  ; N-Spade cursor position
CODE_239E14:        8D 28 10      STA $1028                 ;
CODE_239E17:        60            RTS                       

CODE_239E18:        AC 28 10      LDY $1028                 
CODE_239E1B:        84 0A         STY $0A                   
CODE_239E1D:        B9 84 1E      LDA $1E84,y               
CODE_239E20:        29 80         AND #$80                  
CODE_239E22:        D0 06         BNE CODE_239E2A           
CODE_239E24:        20 DA A0      JSR CODE_23A0DA           
CODE_239E27:        4C 2D 9E      JMP CODE_239E2D           

CODE_239E2A:        20 2A A0      JSR CODE_23A02A           
CODE_239E2D:        CE 28 10      DEC $1028                 
CODE_239E30:        10 03         BPL CODE_239E35           
CODE_239E32:        EE 41 10      INC $1041                 
CODE_239E35:        60            RTS                       

CODE_239E36:        EE 41 10      INC $1041                 
CODE_239E39:        A0 19         LDY #$19                  
CODE_239E3B:        A9 00         LDA #$00                  
CODE_239E3D:        99 26 10      STA $1026,y               
CODE_239E40:        88            DEY                       
CODE_239E41:        10 F8         BPL CODE_239E3B           
CODE_239E43:        A0 03         LDY #$03                  
CODE_239E45:        A9 FF         LDA #$FF                  
CODE_239E47:        99 37 10      STA $1037,y               
CODE_239E4A:        88            DEY                       
CODE_239E4B:        10 F8         BPL CODE_239E45           
CODE_239E4D:        A9 20         LDA #$20                  
CODE_239E4F:        8D 32 10      STA $1032                 
CODE_239E52:        A9 DA         LDA #$DA                  
CODE_239E54:        8D 33 10      STA $1033                 
CODE_239E57:        A9 CE         LDA #$CE                  
CODE_239E59:        8D 3B 10      STA $103B                 
CODE_239E5C:        A9 01         LDA #$01                  
CODE_239E5E:        8D 35 10      STA $1035                 
CODE_239E61:        60            RTS                       

CODE_239E62:        AD 3E 10      LDA $103E                 
CODE_239E65:        F0 0B         BEQ CODE_239E72           
CODE_239E67:        EE 22 04      INC $0422                 
CODE_239E6A:        A9 0A         LDA #$0A                  
CODE_239E6C:        8D 9C 06      STA $069C                 
CODE_239E6F:        CE 3E 10      DEC $103E                 
CODE_239E72:        20 76 9E      JSR CODE_239E76           
CODE_239E75:        6B            RTL                       

CODE_239E76:        AD 34 10      LDA $1034                 
CODE_239E79:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_239E7D:        dw CODE_239E8F
                    dw CODE_239E99
                    dw CODE_239EC4
                    dw CODE_239EF0
                    dw CODE_239EF7
                    dw CODE_239F46
                    dw CODE_239F7E
                    dw CODE_239F86
                    dw CODE_239FA6
   
CODE_239E8F:        20 69 A2      JSR CODE_23A269   
CODE_239E92:        20 09 A3      JSR CODE_23A309           
CODE_239E95:        9C D2 02      STZ $02D2                 
CODE_239E98:        60            RTS                       

CODE_239E99:        AC 28 10      LDY $1028                 
CODE_239E9C:        B9 84 1E      LDA $1E84,y               
CODE_239E9F:        29 80         AND #$80                  
CODE_239EA1:        D0 1D         BNE CODE_239EC0           
CODE_239EA3:        A9 04         LDA #$04                  
CODE_239EA5:        8D 36 10      STA $1036                 
CODE_239EA8:        AD 28 10      LDA $1028                 
CODE_239EAB:        85 0A         STA $0A                   
CODE_239EAD:        20 C0 A1      JSR CODE_23A1C0           
CODE_239EB0:        A9 00         LDA #$00                  
CODE_239EB2:        8D 2D 10      STA $102D                 
CODE_239EB5:        EE 34 10      INC $1034                 
CODE_239EB8:        A9 41         LDA #$41                  
CODE_239EBA:        8D 00 12      STA $1200                 
CODE_239EBD:        4C C4 9E      JMP CODE_239EC4           

CODE_239EC0:        CE 34 10      DEC $1034                 
CODE_239EC3:        60            RTS                       

CODE_239EC4:        AD 2D 10      LDA $102D                 
CODE_239EC7:        F0 04         BEQ CODE_239ECD           
CODE_239EC9:        CE 2D 10      DEC $102D                 
CODE_239ECC:        60            RTS                       

CODE_239ECD:        AD 28 10      LDA $1028                 
CODE_239ED0:        85 0A         STA $0A                   
CODE_239ED2:        20 83 A3      JSR CODE_23A383           
CODE_239ED5:        CE 36 10      DEC $1036                 
CODE_239ED8:        AD 36 10      LDA $1036                 
CODE_239EDB:        C9 FE         CMP #$FE                  
CODE_239EDD:        D0 0B         BNE CODE_239EEA           
CODE_239EDF:        AD 28 10      LDA $1028                 
CODE_239EE2:        85 0A         STA $0A                   
CODE_239EE4:        20 2A A0      JSR CODE_23A02A           
CODE_239EE7:        EE 34 10      INC $1034                 
CODE_239EEA:        A9 04         LDA #$04                  
CODE_239EEC:        8D 2D 10      STA $102D                 
CODE_239EEF:        60            RTS                       

CODE_239EF0:        EE 30 10      INC $1030                 
CODE_239EF3:        20 0B A2      JSR CODE_23A20B           
CODE_239EF6:        60            RTS                       

CODE_239EF7:        AC 28 10      LDY $1028                 
CODE_239EFA:        B9 84 1E      LDA $1E84,y               
CODE_239EFD:        09 80         ORA #$80                  
CODE_239EFF:        99 84 1E      STA $1E84,y               
CODE_239F02:        A9 04         LDA #$04                  
CODE_239F04:        8D 34 10      STA $1034                 
CODE_239F07:        AD 3D 10      LDA $103D                 
CODE_239F0A:        D0 06         BNE CODE_239F12           
CODE_239F0C:        20 54 A4      JSR CODE_23A454           
CODE_239F0F:        EE 41 07      INC $0741                 
CODE_239F12:        EE 3D 10      INC $103D                 
CODE_239F15:        AD 3D 10      LDA $103D                 
CODE_239F18:        C9 51         CMP #$51                  
CODE_239F1A:        F0 04         BEQ CODE_239F20           
CODE_239F1C:        20 9F A4      JSR CODE_23A49F           
CODE_239F1F:        60            RTS                       

CODE_239F20:        9C 34 10      STZ $1034                 
CODE_239F23:        9C 3D 10      STZ $103D                 
CODE_239F26:        A0 00         LDY #$00                  
CODE_239F28:        20 B0 A4      JSR CODE_23A4B0           
CODE_239F2B:        9C D2 02      STZ $02D2                 
CODE_239F2E:        AD 41 07      LDA $0741                 
CODE_239F31:        C9 09         CMP #$09                  
CODE_239F33:        D0 10         BNE CODE_239F45           
CODE_239F35:        A9 06         LDA #$06                  
CODE_239F37:        8D 34 10      STA $1034                 
CODE_239F3A:        A9 40         LDA #$40                  
CODE_239F3C:        8D 2B 10      STA $102B                 
CODE_239F3F:        9C 42 07      STZ $0742                 ;Set the N-Space cards to shuffle again.
CODE_239F42:        9C 41 07      STZ $0741                 
CODE_239F45:        60            RTS                       

CODE_239F46:        A9 00         LDA #$00                  
CODE_239F48:        8D 36 10      STA $1036                 
CODE_239F4B:        A9 01         LDA #$01                  
CODE_239F4D:        85 0B         STA $0B                   
CODE_239F4F:        EE 34 10      INC $1034                 
CODE_239F52:        EE 34 10      INC $1034                 
CODE_239F55:        A9 40         LDA #$40                  
CODE_239F57:        8D 2B 10      STA $102B                 
CODE_239F5A:        AC 28 10      LDY $1028                 
CODE_239F5D:        B9 84 1E      LDA $1E84,y               
CODE_239F60:        29 7F         AND #$7F                  
CODE_239F62:        99 84 1E      STA $1E84,y               
CODE_239F65:        AC 29 10      LDY $1029                 
CODE_239F68:        B9 84 1E      LDA $1E84,y               
CODE_239F6B:        29 7F         AND #$7F                  
CODE_239F6D:        99 84 1E      STA $1E84,y               
CODE_239F70:        A9 2A         LDA #$2A                  
CODE_239F72:        8D 03 12      STA $1203                 
CODE_239F75:        CE 35 10      DEC $1035                 
CODE_239F78:        10 03         BPL CODE_239F7D           
CODE_239F7A:        CE 34 10      DEC $1034                 
CODE_239F7D:        60            RTS                       

CODE_239F7E:        CE 2B 10      DEC $102B                 
CODE_239F81:        10 02         BPL CODE_239F85           
CODE_239F83:        E6 14         INC $14                   
CODE_239F85:        60            RTS                       

CODE_239F86:        AD 2B 10      LDA $102B                 
CODE_239F89:        F0 04         BEQ CODE_239F8F           
CODE_239F8B:        CE 2B 10      DEC $102B                 
CODE_239F8E:        60            RTS                       

CODE_239F8F:        A9 00         LDA #$00                  
CODE_239F91:        8D 36 10      STA $1036                 
CODE_239F94:        A4 0B         LDY $0B                   
CODE_239F96:        B9 28 10      LDA $1028,y               
CODE_239F99:        85 0A         STA $0A                   
CODE_239F9B:        20 C0 A1      JSR CODE_23A1C0           
CODE_239F9E:        EE 34 10      INC $1034                 
CODE_239FA1:        A9 00         LDA #$00                  
CODE_239FA3:        8D 2D 10      STA $102D                 
CODE_239FA6:        AD 2D 10      LDA $102D                 
CODE_239FA9:        F0 04         BEQ CODE_239FAF           
CODE_239FAB:        CE 2D 10      DEC $102D                 
CODE_239FAE:        60            RTS                       

CODE_239FAF:        A4 0B         LDY $0B                   
CODE_239FB1:        B9 28 10      LDA $1028,y               
CODE_239FB4:        85 0A         STA $0A                   
CODE_239FB6:        20 83 A3      JSR CODE_23A383           
CODE_239FB9:        EE 36 10      INC $1036                 
CODE_239FBC:        AD 36 10      LDA $1036                 
CODE_239FBF:        C9 06         CMP #$06                  
CODE_239FC1:        90 1D         BCC CODE_239FE0           
CODE_239FC3:        A4 0B         LDY $0B                   
CODE_239FC5:        B9 28 10      LDA $1028,y               
CODE_239FC8:        85 0A         STA $0A                   
CODE_239FCA:        20 DA A0      JSR CODE_23A0DA           
CODE_239FCD:        C6 0B         DEC $0B                   
CODE_239FCF:        10 06         BPL CODE_239FD7           
CODE_239FD1:        A9 00         LDA #$00                  
CODE_239FD3:        8D 34 10      STA $1034                 
CODE_239FD6:        60            RTS                       

CODE_239FD7:        A9 02         LDA #$02                  
CODE_239FD9:        8D 2B 10      STA $102B                 
CODE_239FDC:        CE 34 10      DEC $1034                 
CODE_239FDF:        60            RTS                       

CODE_239FE0:        A9 04         LDA #$04                  
CODE_239FE2:        8D 2D 10      STA $102D                 
CODE_239FE5:        60            RTS                       

CODE_239FE6:        A9 02         LDA #$02                  ;Shuffle cards thrice. The cards are stored in $1E84 as 18 cards
CODE_239FE8:        85 0A         STA $0A                   ;
CODE_239FEA:        22 03 E1 22   JSL CODE_22E103           ;\ Random number generation
CODE_239FEE:        29 1F         AND #$1F                  ; | The amount of time card-shifting should be performed. Always 00 or 02.
CODE_239FF0:        A8            TAY                       ;/
CODE_239FF1:        AD 92 1E      LDA $1E92                 ;\ Store card #15 in $0B
CODE_239FF4:        85 0B         STA $0B                   ; |
CODE_239FF6:        A2 0D         LDX #$0D                  ; | Shift the cards one time to the right. Kinda like ROR
CODE_239FF8:        BD 84 1E      LDA $1E84,x               ; |
CODE_239FFB:        9D 85 1E      STA $1E85,x               ; |
CODE_239FFE:        CA            DEX                       ; |
CODE_239FFF:        10 F7         BPL CODE_239FF8           ; |
CODE_23A001:        A5 0B         LDA $0B                   ; | Store card #15 as card #00
CODE_23A003:        8D 84 1E      STA $1E84                 ;/|
CODE_23A006:        88            DEY                       ; |
CODE_23A007:        10 E8         BPL CODE_239FF1           ;/  Depending on the RNG output from earlier, repeat card-shifting.
CODE_23A009:        A2 00         LDX #$00                  ;\
CODE_23A00B:        BD 84 1E      LDA $1E84,x               ; | Store card #00 in $0B
CODE_23A00E:        85 0B         STA $0B                   ; |
CODE_23A010:        BD 89 1E      LDA $1E89,x               ; | Swap card 5 with 0, 6 with 1, etc. until card 10
CODE_23A013:        9D 84 1E      STA $1E84,x               ; |
CODE_23A016:        BD 8E 1E      LDA $1E8E,x               ; |
CODE_23A019:        9D 89 1E      STA $1E89,x               ; |
CODE_23A01C:        A5 0B         LDA $0B                   ; | Store card #00 as card #11
CODE_23A01E:        9D 8E 1E      STA $1E8E,x               ;/|
CODE_23A021:        CA            DEX                       ; |
CODE_23A022:        CA            DEX                       ; |
CODE_23A023:        10 E6         BPL CODE_23A00B           ;/ This branch never gets taken as X always will become FE after the card-swapping.
CODE_23A025:        C6 0A         DEC $0A                   ;
CODE_23A027:        10 C1         BPL CODE_239FEA           ;Repeat the whole shuffling process
CODE_23A029:        60            RTS                       ;One quirk about this routine is that cards 16 17 and 18 are untouched.

CODE_23A02A:        C2 20         REP #$20                  
CODE_23A02C:        A0 3A         LDY #$3A                  
CODE_23A02E:        B9 C3 9A      LDA.w DATA_219AC3,y               
CODE_23A031:        99 02 16      STA $1602,y               
CODE_23A034:        88            DEY                       
CODE_23A035:        88            DEY                       
CODE_23A036:        10 F6         BPL CODE_23A02E           
CODE_23A038:        A5 0A         LDA $0A                   
CODE_23A03A:        29 FF 00      AND #$00FF                
CODE_23A03D:        0A            ASL A                     
CODE_23A03E:        A8            TAY                       
CODE_23A03F:        B9 2E 9A      LDA.w DATA_219A2E,y               
CODE_23A042:        8D 2E 10      STA $102E                 
CODE_23A045:        A0 00         LDY #$00                  
CODE_23A047:        A2 04         LDX #$04                  
CODE_23A049:        AD 2E 10      LDA $102E                 
CODE_23A04C:        99 02 16      STA $1602,y               
CODE_23A04F:        E2 20         SEP #$20                  
CODE_23A051:        98            TYA                       
CODE_23A052:        18            CLC                       
CODE_23A053:        69 0C         ADC #$0C                  
CODE_23A055:        A8            TAY                       
CODE_23A056:        AD 2F 10      LDA $102F                 
CODE_23A059:        18            CLC                       
CODE_23A05A:        69 20         ADC #$20                  
CODE_23A05C:        8D 2F 10      STA $102F                 
CODE_23A05F:        AD 2E 10      LDA $102E                 
CODE_23A062:        69 00         ADC #$00                  
CODE_23A064:        8D 2E 10      STA $102E                 
CODE_23A067:        C2 20         REP #$20                  
CODE_23A069:        CA            DEX                       
CODE_23A06A:        10 DD         BPL CODE_23A049           
CODE_23A06C:        E2 20         SEP #$20                  
CODE_23A06E:        A4 0A         LDY $0A                   
CODE_23A070:        B9 84 1E      LDA $1E84,y               
CODE_23A073:        29 7F         AND #$7F                  
CODE_23A075:        85 0B         STA $0B                   
CODE_23A077:        0A            ASL A                     
CODE_23A078:        0A            ASL A                     
CODE_23A079:        0A            ASL A                     
CODE_23A07A:        A8            TAY                       
CODE_23A07B:        C2 20         REP #$20                  
CODE_23A07D:        B9 52 9A      LDA.w DATA_219A52,y               
CODE_23A080:        8D 14 16      STA $1614                 
CODE_23A083:        C8            INY                       
CODE_23A084:        C8            INY                       
CODE_23A085:        B9 52 9A      LDA.w DATA_219A52,y               
CODE_23A088:        8D 16 16      STA $1616                 
CODE_23A08B:        C8            INY                       
CODE_23A08C:        C8            INY                       
CODE_23A08D:        B9 52 9A      LDA.w DATA_219A52,y               
CODE_23A090:        8D 20 16      STA $1620                 
CODE_23A093:        C8            INY                       
CODE_23A094:        C8            INY                       
CODE_23A095:        B9 52 9A      LDA.w DATA_219A52,y               
CODE_23A098:        8D 22 16      STA $1622                 
CODE_23A09B:        A9 FF FF      LDA #$FFFF                
CODE_23A09E:        8D 3E 16      STA $163E                 
CODE_23A0A1:        E2 20         SEP #$20                  
CODE_23A0A3:        A9 3C         LDA #$3C                  
CODE_23A0A5:        8D 00 16      STA $1600                 
CODE_23A0A8:        A5 0B         LDA $0B                   
CODE_23A0AA:        C9 03         CMP #$03                  
CODE_23A0AC:        90 11         BCC CODE_23A0BF           
CODE_23A0AE:        38            SEC                       
CODE_23A0AF:        E9 03         SBC #$03                  
CODE_23A0B1:        0A            ASL A                     
CODE_23A0B2:        A8            TAY                       
CODE_23A0B3:        B9 87 9A      LDA.w DATA_219A87,y               
CODE_23A0B6:        8D 2C 16      STA $162C                 
CODE_23A0B9:        B9 8D 9A      LDA.w DATA_219A8D,y               
CODE_23A0BC:        8D 2E 16      STA $162E                 
CODE_23A0BF:        A9 F0         LDA #$F0                  
CODE_23A0C1:        8D 1D 08      STA $081D                 
CODE_23A0C4:        8D 21 08      STA $0821                 
CODE_23A0C7:        8D 25 08      STA $0825                 
CODE_23A0CA:        8D 29 08      STA $0829                 
CODE_23A0CD:        8D 2D 08      STA $082D                 
CODE_23A0D0:        8D 31 08      STA $0831                 
CODE_23A0D3:        8D 35 08      STA $0835                 
CODE_23A0D6:        8D 39 08      STA $0839                 
CODE_23A0D9:        60            RTS                       

CODE_23A0DA:        C2 20         REP #$20                  
CODE_23A0DC:        A0 3A         LDY #$3A                  
CODE_23A0DE:        B9 3D 9B      LDA.w DATA_219B3D,y               
CODE_23A0E1:        99 02 16      STA $1602,y               
CODE_23A0E4:        88            DEY                       
CODE_23A0E5:        88            DEY                       
CODE_23A0E6:        10 F6         BPL CODE_23A0DE           
CODE_23A0E8:        A5 0A         LDA $0A                   
CODE_23A0EA:        29 FF 00      AND #$00FF                
CODE_23A0ED:        0A            ASL A                     
CODE_23A0EE:        A8            TAY                       
CODE_23A0EF:        B9 2E 9A      LDA.w DATA_219A2E,y               
CODE_23A0F2:        8D 2E 10      STA $102E                 
CODE_23A0F5:        A0 00         LDY #$00                  
CODE_23A0F7:        A2 04         LDX #$04                  
CODE_23A0F9:        AD 2E 10      LDA $102E                 
CODE_23A0FC:        99 02 16      STA $1602,y               
CODE_23A0FF:        E2 20         SEP #$20                  
CODE_23A101:        98            TYA                       
CODE_23A102:        18            CLC                       
CODE_23A103:        69 0C         ADC #$0C                  
CODE_23A105:        A8            TAY                       
CODE_23A106:        AD 2F 10      LDA $102F                 
CODE_23A109:        18            CLC                       
CODE_23A10A:        69 20         ADC #$20                  
CODE_23A10C:        8D 2F 10      STA $102F                 
CODE_23A10F:        AD 2E 10      LDA $102E                 
CODE_23A112:        69 00         ADC #$00                  
CODE_23A114:        8D 2E 10      STA $102E                 
CODE_23A117:        C2 20         REP #$20                  
CODE_23A119:        CA            DEX                       
CODE_23A11A:        10 DD         BPL CODE_23A0F9           
CODE_23A11C:        A9 FF FF      LDA #$FFFF                
CODE_23A11F:        8D 3E 16      STA $163E                 
CODE_23A122:        E2 20         SEP #$20                  
CODE_23A124:        A9 3C         LDA #$3C                  
CODE_23A126:        8D 00 16      STA $1600                 
CODE_23A129:        A9 F0         LDA #$F0                  
CODE_23A12B:        8D 1D 08      STA $081D                 
CODE_23A12E:        8D 21 08      STA $0821                 
CODE_23A131:        8D 25 08      STA $0825                 
CODE_23A134:        8D 29 08      STA $0829                 
CODE_23A137:        8D 2D 08      STA $082D                 
CODE_23A13A:        8D 31 08      STA $0831                 
CODE_23A13D:        8D 35 08      STA $0835                 
CODE_23A140:        8D 39 08      STA $0839                 
CODE_23A143:        60            RTS                       
CODE_23A144:        A0 00         LDY #$00                  
CODE_23A146:        A9 01         LDA #$01                  
CODE_23A148:        85 0A         STA $0A                   
CODE_23A14A:        AE 28 10      LDX $1028                 
CODE_23A14D:        BD 84 1E      LDA $1E84,x               
CODE_23A150:        85 0B         STA $0B                   
CODE_23A152:        0A            ASL A                     
CODE_23A153:        0A            ASL A                     
CODE_23A154:        AA            TAX                       
CODE_23A155:        C2 20         REP #$20                  
CODE_23A157:        AD 33 10      LDA $1033                 
CODE_23A15A:        99 02 16      STA $1602,y               
CODE_23A15D:        C8            INY                       
CODE_23A15E:        C8            INY                       
CODE_23A15F:        E2 20         SEP #$20                  
CODE_23A161:        A9 02         LDA #$02                  
CODE_23A163:        99 02 16      STA $1602,y               
CODE_23A166:        C8            INY                       
CODE_23A167:        BD 52 9A      LDA.w DATA_219A52,x               
CODE_23A16A:        99 02 16      STA $1602,y               
CODE_23A16D:        C8            INY                       
CODE_23A16E:        E8            INX                       
CODE_23A16F:        BD 52 9A      LDA.w DATA_219A52,x               
CODE_23A172:        99 02 16      STA $1602,y               
CODE_23A175:        C8            INY                       
CODE_23A176:        E8            INX                       
CODE_23A177:        AD 33 10      LDA $1033                 
CODE_23A17A:        18            CLC                       
CODE_23A17B:        69 20         ADC #$20                  
CODE_23A17D:        8D 33 10      STA $1033                 
CODE_23A180:        AD 32 10      LDA $1032                 
CODE_23A183:        69 00         ADC #$00                  
CODE_23A185:        8D 32 10      STA $1032                 
CODE_23A188:        C6 0A         DEC $0A                   
CODE_23A18A:        10 C9         BPL CODE_23A155           
CODE_23A18C:        AD 3D 10      LDA $103D                 
CODE_23A18F:        29 01         AND #$01                  
CODE_23A191:        F0 0E         BEQ CODE_23A1A1           
CODE_23A193:        EE 3C 10      INC $103C                 
CODE_23A196:        BD 82 9A      LDA.w DATA_219A82,x               
CODE_23A199:        4A            LSR A                     
CODE_23A19A:        4A            LSR A                     
CODE_23A19B:        4A            LSR A                     
CODE_23A19C:        4A            LSR A                     
CODE_23A19D:        09 F0         ORA #$F0                  
CODE_23A19F:        D0 0C         BNE CODE_23A1AD           
CODE_23A1A1:        AD 3B 10      LDA $103B                 
CODE_23A1A4:        18            CLC                       
CODE_23A1A5:        69 08         ADC #$08                  
CODE_23A1A7:        8D 3B 10      STA $103B                 
CODE_23A1AA:        BD 82 9A      LDA.w DATA_219A82,x               
CODE_23A1AD:        AE 3C 10      LDX $103C                 
CODE_23A1B0:        3D 37 10      AND $1037,x               
CODE_23A1B3:        9D 37 10      STA $1037,x               
CODE_23A1B6:        99 02 16      STA $1602,y               
CODE_23A1B9:        C8            INY                       
CODE_23A1BA:        A9 FF         LDA #$FF                  
CODE_23A1BC:        99 02 16      STA $1602,y               
CODE_23A1BF:        60            RTS                       

CODE_23A1C0:        C2 20         REP #$20                  
CODE_23A1C2:        A0 3C         LDY #$3C                  
CODE_23A1C4:        B9 FF 9A      LDA.w DATA_219AFF,y               
CODE_23A1C7:        99 02 16      STA $1602,y               
CODE_23A1CA:        88            DEY                       
CODE_23A1CB:        88            DEY                       
CODE_23A1CC:        10 F6         BPL CODE_23A1C4           
CODE_23A1CE:        A5 0A         LDA $0A                   
CODE_23A1D0:        29 FF 00      AND #$00FF                
CODE_23A1D3:        0A            ASL A                     
CODE_23A1D4:        A8            TAY                       
CODE_23A1D5:        B9 2E 9A      LDA.w DATA_219A2E,y               
CODE_23A1D8:        8D 2E 10      STA $102E                 
CODE_23A1DB:        A9 3C 00      LDA #$003C                
CODE_23A1DE:        8D 00 16      STA $1600                 
CODE_23A1E1:        A0 00         LDY #$00                  
CODE_23A1E3:        A2 04         LDX #$04                  
CODE_23A1E5:        AD 2E 10      LDA $102E                 
CODE_23A1E8:        99 02 16      STA $1602,y               
CODE_23A1EB:        E2 20         SEP #$20                  
CODE_23A1ED:        98            TYA                       
CODE_23A1EE:        18            CLC                       
CODE_23A1EF:        69 0C         ADC #$0C                  
CODE_23A1F1:        A8            TAY                       
CODE_23A1F2:        AD 2F 10      LDA $102F                 
CODE_23A1F5:        18            CLC                       
CODE_23A1F6:        69 20         ADC #$20                  
CODE_23A1F8:        8D 2F 10      STA $102F                 
CODE_23A1FB:        AD 2E 10      LDA $102E                 
CODE_23A1FE:        69 00         ADC #$00                  
CODE_23A200:        8D 2E 10      STA $102E                 
CODE_23A203:        C2 20         REP #$20                  
CODE_23A205:        CA            DEX                       
CODE_23A206:        10 DD         BPL CODE_23A1E5           
CODE_23A208:        E2 20         SEP #$20                  
CODE_23A20A:        60            RTS                       

CODE_23A20B:        AD 30 10      LDA $1030                 
CODE_23A20E:        29 01         AND #$01                  
CODE_23A210:        D0 39         BNE CODE_23A24B           
CODE_23A212:        AC 28 10      LDY $1028                 
CODE_23A215:        B9 84 1E      LDA $1E84,y               
CODE_23A218:        CD 31 10      CMP $1031                 
CODE_23A21B:        F0 48         BEQ CODE_23A265           
CODE_23A21D:        B9 84 1E      LDA $1E84,y               
CODE_23A220:        C9 08         CMP #$08                  
CODE_23A222:        D0 06         BNE CODE_23A22A           
CODE_23A224:        AD 31 10      LDA $1031                 
CODE_23A227:        4C 39 A2      JMP CODE_23A239           

CODE_23A22A:        AD 31 10      LDA $1031                 
CODE_23A22D:        C9 08         CMP #$08                  
CODE_23A22F:        D0 0E         BNE CODE_23A23F           
CODE_23A231:        B9 84 1E      LDA $1E84,y               
CODE_23A234:        09 80         ORA #$80                  
CODE_23A236:        AC 29 10      LDY $1029                 
CODE_23A239:        99 84 1E      STA $1E84,y               
CODE_23A23C:        4C 65 A2      JMP CODE_23A265           

CODE_23A23F:        EE 34 10      INC $1034                 
CODE_23A242:        EE 34 10      INC $1034                 
CODE_23A245:        A9 30         LDA #$30                  
CODE_23A247:        8D 2B 10      STA $102B                 
CODE_23A24A:        60            RTS                       

CODE_23A24B:        AC 28 10      LDY $1028                 
CODE_23A24E:        8C 29 10      STY $1029                 
CODE_23A251:        B9 84 1E      LDA $1E84,y               
CODE_23A254:        8D 31 10      STA $1031                 
CODE_23A257:        B9 84 1E      LDA $1E84,y               
CODE_23A25A:        09 80         ORA #$80                  
CODE_23A25C:        99 84 1E      STA $1E84,y               
CODE_23A25F:        A9 00         LDA #$00                  
CODE_23A261:        8D 34 10      STA $1034                 
CODE_23A264:        60            RTS                       

CODE_23A265:        EE 34 10      INC $1034                 
CODE_23A268:        60            RTS                       

CODE_23A269:        AD 2B 10      LDA $102B                 
CODE_23A26C:        F0 04         BEQ CODE_23A272           
CODE_23A26E:        CE 2B 10      DEC $102B                 
CODE_23A271:        60            RTS                       

CODE_23A272:        20 DC A4      JSR CODE_23A4DC           
CODE_23A275:        90 04         BCC CODE_23A27B           
CODE_23A277:        EE 34 10      INC $1034                 
CODE_23A27A:        60            RTS                       

CODE_23A27B:        A5 17         LDA $17                   
CODE_23A27D:        29 0F         AND #$0F                  
CODE_23A27F:        F0 68         BEQ CODE_23A2E9           
CODE_23A281:        A9 08         LDA #$08                  
CODE_23A283:        8D 2B 10      STA $102B                 
CODE_23A286:        A9 01         LDA #$01                  
CODE_23A288:        8D 03 12      STA $1203                 
CODE_23A28B:        A5 17         LDA $17                   
CODE_23A28D:        29 08         AND #$08                  
CODE_23A28F:        F0 14         BEQ CODE_23A2A5           
CODE_23A291:        AD 28 10      LDA $1028                 
CODE_23A294:        38            SEC                       
CODE_23A295:        E9 06         SBC #$06                  
CODE_23A297:        8D 28 10      STA $1028                 
CODE_23A29A:        B0 09         BCS CODE_23A2A5                   
CODE_23A29C:        AD 28 10      LDA $1028                 
CODE_23A29F:        18            CLC                       
CODE_23A2A0:        69 12         ADC #$12                  
CODE_23A2A2:        8D 28 10      STA $1028                 
CODE_23A2A5:        A5 17         LDA $17                   
CODE_23A2A7:        29 04         AND #$04                  
CODE_23A2A9:        F0 19         BEQ CODE_23A2C4           
CODE_23A2AB:        AD 28 10      LDA $1028                 
CODE_23A2AE:        18            CLC                       
CODE_23A2AF:        69 06         ADC #$06                  
CODE_23A2B1:        8D 28 10      STA $1028                 
CODE_23A2B4:        AD 28 10      LDA $1028                 
CODE_23A2B7:        C9 12         CMP #$12                  
CODE_23A2B9:        90 09         BCC CODE_23A2C4           
CODE_23A2BB:        AD 28 10      LDA $1028                 
CODE_23A2BE:        38            SEC                       
CODE_23A2BF:        E9 12         SBC #$12                  
CODE_23A2C1:        8D 28 10      STA $1028                 
CODE_23A2C4:        A5 17         LDA $17                   
CODE_23A2C6:        29 01         AND #$01                  
CODE_23A2C8:        F0 0F         BEQ CODE_23A2D9           
CODE_23A2CA:        EE 28 10      INC $1028                 
CODE_23A2CD:        AD 28 10      LDA $1028                 
CODE_23A2D0:        C9 12         CMP #$12                  
CODE_23A2D2:        90 05         BCC CODE_23A2D9           
CODE_23A2D4:        A9 00         LDA #$00                  
CODE_23A2D6:        8D 28 10      STA $1028                 
CODE_23A2D9:        A5 17         LDA $17                   
CODE_23A2DB:        29 02         AND #$02                  
CODE_23A2DD:        F0 0A         BEQ CODE_23A2E9           
CODE_23A2DF:        CE 28 10      DEC $1028                 
CODE_23A2E2:        10 05         BPL CODE_23A2E9           
CODE_23A2E4:        A9 11         LDA #$11                  
CODE_23A2E6:        8D 28 10      STA $1028                 
CODE_23A2E9:        60            RTS                       

CODE_23A2EA:        AD 26 10      LDA $1026                 
CODE_23A2ED:        99 04 08      STA $0804,y               
CODE_23A2F0:        AD 27 10      LDA $1027                 
CODE_23A2F3:        99 05 08      STA $0805,y               
CODE_23A2F6:        BD CE 99      LDA.w DATA_2199CE,x               
CODE_23A2F9:        99 06 08      STA $0806,y               
CODE_23A2FC:        BD D4 99      LDA.w DATA_2199D4,x               
CODE_23A2FF:        99 07 08      STA $0807,y               
CODE_23A302:        98            TYA                       
CODE_23A303:        18            CLC                       
CODE_23A304:        69 04         ADC #$04                  
CODE_23A306:        A8            TAY                       
CODE_23A307:        E8            INX                       
CODE_23A308:        60            RTS                       

CODE_23A309:        AE 28 10      LDX $1028                 
CODE_23A30C:        BD DA 99      LDA.w DATA_2199DA,x               
CODE_23A30F:        8D 26 10      STA $1026                 
CODE_23A312:        8D 2A 10      STA $102A                 
CODE_23A315:        BD EC 99      LDA.w DATA_2199EC,x               
CODE_23A318:        8D 27 10      STA $1027                 
CODE_23A31B:        A2 00         LDX #$00                  
CODE_23A31D:        A0 00         LDY #$00                  
CODE_23A31F:        20 EA A2      JSR CODE_23A2EA           
CODE_23A322:        AD 26 10      LDA $1026                 
CODE_23A325:        18            CLC                       
CODE_23A326:        69 10         ADC #$10                  
CODE_23A328:        8D 26 10      STA $1026                 
CODE_23A32B:        E0 02         CPX #$02                  
CODE_23A32D:        90 F0         BCC CODE_23A31F           
CODE_23A32F:        AD 27 10      LDA $1027                 
CODE_23A332:        18            CLC                       
CODE_23A333:        69 10         ADC #$10                  
CODE_23A335:        8D 27 10      STA $1027                 
CODE_23A338:        AD 2A 10      LDA $102A                 
CODE_23A33B:        8D 26 10      STA $1026                 
CODE_23A33E:        20 EA A2      JSR CODE_23A2EA           
CODE_23A341:        AD 26 10      LDA $1026                 
CODE_23A344:        18            CLC                       
CODE_23A345:        69 10         ADC #$10                  
CODE_23A347:        8D 26 10      STA $1026                 
CODE_23A34A:        20 EA A2      JSR CODE_23A2EA           
CODE_23A34D:        AD 27 10      LDA $1027                 
CODE_23A350:        18            CLC                       
CODE_23A351:        69 10         ADC #$10                  
CODE_23A353:        8D 27 10      STA $1027                 
CODE_23A356:        AD 2A 10      LDA $102A                 
CODE_23A359:        8D 26 10      STA $1026                 
CODE_23A35C:        20 EA A2      JSR CODE_23A2EA           
CODE_23A35F:        AD 26 10      LDA $1026                 
CODE_23A362:        18            CLC                       
CODE_23A363:        69 10         ADC #$10                  
CODE_23A365:        8D 26 10      STA $1026                 
CODE_23A368:        E0 06         CPX #$06                  
CODE_23A36A:        90 F0         BCC CODE_23A35C           
CODE_23A36C:        8C 2C 10      STY $102C                 
CODE_23A36F:        C2 20         REP #$20                  
CODE_23A371:        A9 02 02      LDA #$0202                
CODE_23A374:        8D 20 0A      STA $0A20                 
CODE_23A377:        8D 22 0A      STA $0A22                 
CODE_23A37A:        8D 24 0A      STA $0A24                 
CODE_23A37D:        8D 26 0A      STA $0A26                 
CODE_23A380:        E2 20         SEP #$20                  
CODE_23A382:        60            RTS                       

CODE_23A383:        A6 0A         LDX $0A                   
CODE_23A385:        BD DA 99      LDA.w DATA_2199DA,x               
CODE_23A388:        18            CLC                       
CODE_23A389:        69 08         ADC #$08                  
CODE_23A38B:        8D 26 10      STA $1026                 
CODE_23A38E:        8D 2A 10      STA $102A                 
CODE_23A391:        BD EC 99      LDA.w DATA_2199EC,x               
CODE_23A394:        18            CLC                       
CODE_23A395:        69 08         ADC #$08                  
CODE_23A397:        8D 27 10      STA $1027                 
CODE_23A39A:        A2 00         LDX #$00                  
CODE_23A39C:        AC 2C 10      LDY $102C                 
CODE_23A39F:        AD 26 10      LDA $1026                 
CODE_23A3A2:        99 04 08      STA $0804,y               
CODE_23A3A5:        99 08 08      STA $0808,y               
CODE_23A3A8:        C8            INY                       
CODE_23A3A9:        AD 27 10      LDA $1027                 
CODE_23A3AC:        99 04 08      STA $0804,y               
CODE_23A3AF:        18            CLC                       
CODE_23A3B0:        69 08         ADC #$08                  
CODE_23A3B2:        99 08 08      STA $0808,y               
CODE_23A3B5:        C8            INY                       
CODE_23A3B6:        20 39 A4      JSR CODE_23A439           
CODE_23A3B9:        99 04 08      STA $0804,y               
CODE_23A3BC:        E0 02         CPX #$02                  
CODE_23A3BE:        90 07         BCC CODE_23A3C7           
CODE_23A3C0:        A5 00         LDA $00                   
CODE_23A3C2:        99 08 08      STA $0808,y               
CODE_23A3C5:        80 04         BRA CODE_23A3CB           

CODE_23A3C7:        1A            INC A                     
CODE_23A3C8:        99 08 08      STA $0808,y               
CODE_23A3CB:        C8            INY                       
CODE_23A3CC:        A9 00         LDA #$00                  
CODE_23A3CE:        A9 0C         LDA #$0C                  
CODE_23A3D0:        99 04 08      STA $0804,y               
CODE_23A3D3:        99 08 08      STA $0808,y               
CODE_23A3D6:        98            TYA                       
CODE_23A3D7:        18            CLC                       
CODE_23A3D8:        69 05         ADC #$05                  
CODE_23A3DA:        A8            TAY                       
CODE_23A3DB:        E8            INX                       
CODE_23A3DC:        E0 04         CPX #$04                  
CODE_23A3DE:        B0 20         BCS CODE_23A400                  
CODE_23A3E0:        AD 26 10      LDA $1026                 
CODE_23A3E3:        18            CLC                       
CODE_23A3E4:        69 08         ADC #$08                  
CODE_23A3E6:        8D 26 10      STA $1026                 
CODE_23A3E9:        8A            TXA                       
CODE_23A3EA:        29 01         AND #$01                  
CODE_23A3EC:        D0 0F         BNE CODE_23A3FD           
CODE_23A3EE:        AD 27 10      LDA $1027                 
CODE_23A3F1:        18            CLC                       
CODE_23A3F2:        69 10         ADC #$10                  
CODE_23A3F4:        8D 27 10      STA $1027                 
CODE_23A3F7:        AD 2A 10      LDA $102A                 
CODE_23A3FA:        8D 26 10      STA $1026                 
CODE_23A3FD:        4C 9F A3      JMP CODE_23A39F           

CODE_23A400:        AD 27 08      LDA $0827                 
CODE_23A403:        09 40         ORA #$40                  
CODE_23A405:        8D 27 08      STA $0827                 
CODE_23A408:        AD 2B 08      LDA $082B                 
CODE_23A40B:        09 40         ORA #$40                  
CODE_23A40D:        8D 2B 08      STA $082B                 
CODE_23A410:        AD 33 08      LDA $0833                 
CODE_23A413:        09 80         ORA #$80                  
CODE_23A415:        8D 33 08      STA $0833                 
CODE_23A418:        AD 37 08      LDA $0837                 
CODE_23A41B:        09 40         ORA #$40                  
CODE_23A41D:        8D 37 08      STA $0837                 
CODE_23A420:        AD 3B 08      LDA $083B                 
CODE_23A423:        09 C0         ORA #$C0                  
CODE_23A425:        8D 3B 08      STA $083B                 
CODE_23A428:        C2 20         REP #$20                  
CODE_23A42A:        9C 27 0A      STZ $0A27                 
CODE_23A42D:        9C 29 0A      STZ $0A29                 
CODE_23A430:        9C 2B 0A      STZ $0A2B                 
CODE_23A433:        9C 2D 0A      STZ $0A2D                 
CODE_23A436:        E2 20         SEP #$20                  
CODE_23A438:        60            RTS                       

CODE_23A439:        86 0A         STX $0A                   
CODE_23A43B:        AE 36 10      LDX $1036                 
CODE_23A43E:        BD 17 9A      LDA.w DATA_219A17,x               
CODE_23A441:        18            CLC                       
CODE_23A442:        65 0A         ADC $0A                   
CODE_23A444:        AA            TAX                       
CODE_23A445:        BD 03 9A      LDA.w DATA_219A03,x               
CODE_23A448:        A6 0A         LDX $0A                   
CODE_23A44A:        E0 02         CPX #$02                  
CODE_23A44C:        B0 02         BCS CODE_23A450                   
CODE_23A44E:        85 00         STA $00                   
CODE_23A450:        60            RTS                      

DATA_23A451:        db $01,$02,$09

CODE_23A454:        AC 28 10      LDY $1028    
CODE_23A457:        B9 84 1E      LDA $1E84,y                 
CODE_23A45A:        29 0F         AND #$0F                  
CODE_23A45C:        85 0C         STA $0C                   
CODE_23A45E:        C9 03         CMP #$03                  
CODE_23A460:        D0 0D         BNE CODE_23A46F           
CODE_23A462:        AE 26 07      LDX $0726                 
CODE_23A465:        FE 36 07      INC $0736,x               
CODE_23A468:        A9 05         LDA #$05                  
CODE_23A46A:        8D 03 12      STA $1203                 
CODE_23A46D:        D0 2F         BNE CODE_23A49E           
CODE_23A46F:        C9 04         CMP #$04                  
CODE_23A471:        90 17         BCC CODE_23A48A           
CODE_23A473:        A0 0A         LDY #$0A                  
CODE_23A475:        C9 04         CMP #$04                  
CODE_23A477:        F0 02         BEQ CODE_23A47B           
CODE_23A479:        A0 14         LDY #$14                  
CODE_23A47B:        98            TYA                       
CODE_23A47C:        18            CLC                       
CODE_23A47D:        6D 3E 10      ADC $103E                 
CODE_23A480:        8D 3E 10      STA $103E                 
CODE_23A483:        A9 01         LDA #$01                  
CODE_23A485:        8D 03 12      STA $1203                 
CODE_23A488:        D0 14         BNE CODE_23A49E           
CODE_23A48A:        A5 0C         LDA $0C                   
CODE_23A48C:        C9 03         CMP #$03                  
CODE_23A48E:        B0 0E         BCS CODE_23A49E                   
CODE_23A490:        AA            TAX                       
CODE_23A491:        BF 51 A4 23   LDA.l DATA_23A451,x             
CODE_23A495:        22 34 F6 20   JSL CODE_20F634           
CODE_23A499:        A9 29         LDA #$29                  
CODE_23A49B:        8D 03 12      STA $1203                 
CODE_23A49E:        60            RTS                       

CODE_23A49F:        AD 3D 10      LDA $103D                 
CODE_23A4A2:        3A            DEC A                     
CODE_23A4A3:        48            PHA                       
CODE_23A4A4:        29 06         AND #$06                  
CODE_23A4A6:        A8            TAY                       
CODE_23A4A7:        68            PLA                       
CODE_23A4A8:        29 18         AND #$18                  
CODE_23A4AA:        4A            LSR A                     
CODE_23A4AB:        4A            LSR A                     
CODE_23A4AC:        4A            LSR A                     
CODE_23A4AD:        8D D2 02      STA $02D2                 
CODE_23A4B0:        C2 20         REP #$20                  
CODE_23A4B2:        B9 93 9A      LDA.w DATA_219A93,y               
CODE_23A4B5:        8D 86 13      STA $1386                 
CODE_23A4B8:        B9 9B 9A      LDA.w DATA_219A9B,y               
CODE_23A4BB:        8D 92 13      STA $1392                 
CODE_23A4BE:        B9 A3 9A      LDA.w DATA_219AA3,y               
CODE_23A4C1:        8D 94 13      STA $1394                 
CODE_23A4C4:        B9 AB 9A      LDA.w DATA_219AAB,y               
CODE_23A4C7:        8D 96 13      STA $1396                 
CODE_23A4CA:        B9 B3 9A      LDA.w DATA_219AB3,y               
CODE_23A4CD:        8D 98 13      STA $1398                 
CODE_23A4D0:        B9 BB 9A      LDA.w DATA_219ABB,y               
CODE_23A4D3:        8D 9C 13      STA $139C                 
CODE_23A4D6:        E2 20         SEP #$20                  
CODE_23A4D8:        EE 00 15      INC $1500                 
CODE_23A4DB:        60            RTS                       

CODE_23A4DC:        A5 18         LDA $18                   
CODE_23A4DE:        29 C0         AND #$C0                  
CODE_23A4E0:        D0 0A         BNE CODE_23A4EC           
CODE_23A4E2:        AE 26 07      LDX $0726                 
CODE_23A4E5:        BD F8 00      LDA $00F8,x               
CODE_23A4E8:        29 C0         AND #$C0                  
CODE_23A4EA:        F0 02         BEQ CODE_23A4EE           
CODE_23A4EC:        38            SEC                       
CODE_23A4ED:        60            RTS                       

CODE_23A4EE:        18            CLC                       
CODE_23A4EF:        60            RTS                       

DATA_23A4F0:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

DATA_23A540:        db $32,$50,$AD,$C1,$32,$50,$AD,$C1

CODE_23A548:        A2 00         LDX #$00                  ; prepare battle level data
CODE_23A54A:        A9 02         LDA #$02                  
CODE_23A54C:        22 A8 98 20   JSL CODE_2098A8           
CODE_23A550:        22 44 98 20   JSL CODE_209844           ; clear out everything first
CODE_23A554:        E0 F0         CPX #$F0                  
CODE_23A556:        D0 F2         BNE CODE_23A54A           
CODE_23A558:        A2 D0         LDX #$D0                  
CODE_23A55A:        A9 50         LDA #$50                  
CODE_23A55C:        22 44 98 20   JSL CODE_209844           ; lay down some ground
CODE_23A560:        E0 F0         CPX #$F0                  
CODE_23A562:        D0 F6         BNE CODE_23A55A           
CODE_23A564:        22 0B 99 20   JSL CODE_20990B           ; lay down everything else
CODE_23A568:        6B            RTL                       

CODE_23A569:        A5 0E         LDA $0E                   
CODE_23A56B:        29 E0         AND #$E0                  
CODE_23A56D:        4A            LSR A                     
CODE_23A56E:        4A            LSR A                     
CODE_23A56F:        4A            LSR A                     
CODE_23A570:        4A            LSR A                     
CODE_23A571:        4A            LSR A                     
CODE_23A572:        AA            TAX                       
CODE_23A573:        AD 06 07      LDA $0706                 
CODE_23A576:        4A            LSR A                     
CODE_23A577:        4A            LSR A                     
CODE_23A578:        4A            LSR A                     
CODE_23A579:        4A            LSR A                     
CODE_23A57A:        18            CLC                       
CODE_23A57B:        7D 79 A3      ADC.w DATA_21A379,x               
CODE_23A57E:        AA            TAX                       
CODE_23A57F:        CA            DEX                       
CODE_23A580:        8A            TXA                       
CODE_23A581:        22 3A FB 20   JSL CODE_20FB3A           ; ExecutePtrLong

PNTR_23A585:        dl CODE_23A5FE
                    dl CODE_23A603
                    dl CODE_23A608
                    dl CODE_23A920
                    dl CODE_23A61F
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl $000000
                    dl CODE_23A6C1
                    dl CODE_23A6C1
                    dl CODE_23A6C1
                    dl CODE_23A728
                    dl CODE_23A728
                    dl CODE_23A81D
                    dl CODE_23A81D
                    dl CODE_23A8AE
                    dl CODE_23A8AE

CODE_23A5E8:        A5 0E         LDA $0E                   
CODE_23A5EA:        29 E0         AND #$E0                  
CODE_23A5EC:        4A            LSR A                     
CODE_23A5ED:        18            CLC                       
CODE_23A5EE:        6D 06 07      ADC $0706                 
CODE_23A5F1:        AA            TAX                       
CODE_23A5F2:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23A5F6:        dw CODE_23A635
                    dw CODE_23A63A
                    dw CODE_23A658
                    dw CODE_23A660

CODE_23A5FE:        A2 00         LDX #$00
CODE_23A600:        4C 0A A6      JMP CODE_23A60A

CODE_23A603:        A2 01         LDX #$01
CODE_23A605:        4C 0A A6      JMP CODE_23A60A

CODE_23A608:        A2 02         LDX #$02
CODE_23A60A:        A6 06 07      LDA $0706
CODE_23A60D:        29 0F         AND #$0F                  
CODE_23A60F:        85 00         STA $00                   
CODE_23A611:        AC 00 07      LDY $0700                 
CODE_23A614:        BD 64 A4      LDA.w DATA_21A464,x               
CODE_23A617:        97 2E         STA [$2E],y               
CODE_23A619:        C8            INY                       
CODE_23A61A:        C6 00         DEC $00                   
CODE_23A61C:        10 F6         BPL CODE_23A614           
CODE_23A61E:        6B            RTL                       

CODE_23A61F:        AD 06 07      LDA $0706                 
CODE_23A622:        29 0F         AND #$0F                  
CODE_23A624:        AA            TAX                       
CODE_23A625:        AC 00 07      LDY $0700                 
CODE_23A628:        A9 C0         LDA #$C0                  
CODE_23A62A:        97 2E         STA [$2E],y               
CODE_23A62C:        98            TYA                       
CODE_23A62D:        18            CLC                       
CODE_23A62E:        69 10         ADC #$10                  
CODE_23A630:        A8            TAY                       
CODE_23A631:        CA            DEX                       
CODE_23A632:        10 F4         BPL CODE_23A628           
CODE_23A634:        6B            RTL                       

CODE_23A635:        A2 00         LDX #$00                  
CODE_23A637:        4C 3C A6      JMP CODE_23A63C           

CODE_23A63A:        A2 04         LDX #$04                  
CODE_23A63C:        AC 00 07      LDY $0700                 
CODE_23A63F:        BD 67 A4      LDA.w DATA_21A467,x               
CODE_23A642:        97 2E         STA [$2E],y               
CODE_23A644:        C8            INY                       
CODE_23A645:        E8            INX                       
CODE_23A646:        8A            TXA                       
CODE_23A647:        29 01         AND #$01                  
CODE_23A649:        D0 F4         BNE CODE_23A63F           
CODE_23A64B:        AD 00 07      LDA $0700                 
CODE_23A64E:        18            CLC                       
CODE_23A64F:        69 10         ADC #$10                  
CODE_23A651:        A8            TAY                       
CODE_23A652:        8A            TXA                       
CODE_23A653:        29 03         AND #$03                  
CODE_23A655:        D0 E8         BNE CODE_23A63F           
CODE_23A657:        6B            RTL                       

CODE_23A658:        AC 00 07      LDY $0700                 
CODE_23A65B:        A9 BC         LDA #$BC                  
CODE_23A65D:        97 2E         STA [$2E],y               
CODE_23A65F:        6B            RTL                       

CODE_23A660:        A2 00         LDX #$00                  
CODE_23A662:        AC 00 07      LDY $0700                 
CODE_23A665:        A9 09         LDA #$09                  
CODE_23A667:        85 00         STA $00                   
CODE_23A669:        BD 6F A4      LDA.w DATA_21A46F,x               
CODE_23A66C:        97 2E         STA [$2E],y               
CODE_23A66E:        C8            INY                       
CODE_23A66F:        E8            INX                       
CODE_23A670:        C6 00         DEC $00                   
CODE_23A672:        10 F5         BPL CODE_23A669           
CODE_23A674:        AD 00 07      LDA $0700                 
CODE_23A677:        18            CLC                       
CODE_23A678:        69 10         ADC #$10                  
CODE_23A67A:        8D 00 07      STA $0700                 
CODE_23A67D:        E0 14         CPX #$14                  
CODE_23A67F:        D0 E1         BNE CODE_23A662           
CODE_23A681:        6B            RTL                       

CODE_23A682:        AC 00 07      LDY $0700                 
CODE_23A685:        A9 42         LDA #$42                  
CODE_23A687:        97 2E         STA [$2E],y               
CODE_23A689:        98            TYA                       
CODE_23A68A:        18            CLC                       
CODE_23A68B:        69 10         ADC #$10                  
CODE_23A68D:        A8            TAY                       
CODE_23A68E:        A5 2F         LDA $2F                   
CODE_23A690:        69 00         ADC #$00                  
CODE_23A692:        85 2F         STA $2F                   
CODE_23A694:        A9 42         LDA #$42                  
CODE_23A696:        97 2E         STA [$2E],y               
CODE_23A698:        6B            RTL                       

CODE_23A699:        AC 00 07      LDY $0700                 
CODE_23A69C:        A9 00         LDA #$00                  
CODE_23A69E:        97 2E         STA [$2E],y               
CODE_23A6A0:        C2 30         REP #$30                  
CODE_23A6A2:        98            TYA                       
CODE_23A6A3:        09 00 20      ORA #$2000                
CODE_23A6A6:        A8            TAY                       
CODE_23A6A7:        A9 00 01      LDA #$0100                
CODE_23A6AA:        EB            XBA                       
CODE_23A6AB:        E2 20         SEP #$20                  
CODE_23A6AD:        97 2E         STA [$2E],y               
CODE_23A6AF:        E2 10         SEP #$10                  
CODE_23A6B1:        98            TYA                       
CODE_23A6B2:        18            CLC                       
CODE_23A6B3:        69 10         ADC #$10                  
CODE_23A6B5:        A8            TAY                       
CODE_23A6B6:        A5 2F         LDA $2F                   
CODE_23A6B8:        69 00         ADC #$00                  
CODE_23A6BA:        85 2F         STA $2F                   
CODE_23A6BC:        A9 43         LDA #$43                  
CODE_23A6BE:        97 2E         STA [$2E],y               
CODE_23A6C0:        6B            RTL                       

CODE_23A6C1:        A5 2E         LDA $2E                   
CODE_23A6C3:        85 00         STA $00                   
CODE_23A6C5:        A5 2F         LDA $2F                   
CODE_23A6C7:        85 01         STA $01                   
CODE_23A6C9:        AD 06 07      LDA $0706                 
CODE_23A6CC:        38            SEC                       
CODE_23A6CD:        E9 90         SBC #$90                  
CODE_23A6CF:        29 F0         AND #$F0                  
CODE_23A6D1:        4A            LSR A                     
CODE_23A6D2:        4A            LSR A                     
CODE_23A6D3:        4A            LSR A                     
CODE_23A6D4:        AA            TAX                       
CODE_23A6D5:        AD 06 07      LDA $0706                 
CODE_23A6D8:        29 0F         AND #$0F                  
CODE_23A6DA:        85 02         STA $02                   
CODE_23A6DC:        AC 00 07      LDY $0700                 
CODE_23A6DF:        BD 83 A4      LDA.w DATA_21A483,x               
CODE_23A6E2:        97 2E         STA [$2E],y               
CODE_23A6E4:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A6E8:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A6EC:        BD 84 A4      LDA.w DATA_21A483+1,x               
CODE_23A6EF:        97 2E         STA [$2E],y               
CODE_23A6F1:        80 13         BRA CODE_23A706           

CODE_23A6F3:        AC 00 07      LDY $0700                 
CODE_23A6F6:        A9 BA         LDA #$BA                  
CODE_23A6F8:        97 2E         STA [$2E],y               
CODE_23A6FA:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A6FE:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A702:        A9 BB         LDA #$BB                  
CODE_23A704:        97 2E         STA [$2E],y               
CODE_23A706:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A70A:        A5 00         LDA $00                   
CODE_23A70C:        85 2E         STA $2E                   
CODE_23A70E:        A5 01         LDA $01                   
CODE_23A710:        85 2F         STA $2F                   
CODE_23A712:        AD 00 07      LDA $0700                 
CODE_23A715:        18            CLC                       
CODE_23A716:        69 10         ADC #$10                  
CODE_23A718:        8D 00 07      STA $0700                 
CODE_23A71B:        A5 2F         LDA $2F                   
CODE_23A71D:        69 00         ADC #$00                  
CODE_23A71F:        85 2F         STA $2F                   
CODE_23A721:        85 01         STA $01                   
CODE_23A723:        C6 02         DEC $02                   
CODE_23A725:        10 CC         BPL CODE_23A6F3           
CODE_23A727:        6B            RTL                       

CODE_23A728:        AD 06 07      LDA $0706                 
CODE_23A72B:        48            PHA                       
CODE_23A72C:        38            SEC                       
CODE_23A72D:        E9 C0         SBC #$C0                  
CODE_23A72F:        29 F0         AND #$F0                  
CODE_23A731:        4A            LSR A                     
CODE_23A732:        4A            LSR A                     
CODE_23A733:        4A            LSR A                     
CODE_23A734:        AA            TAX                       
CODE_23A735:        68            PLA                       
CODE_23A736:        29 0F         AND #$0F                  
CODE_23A738:        85 02         STA $02                   
CODE_23A73A:        A5 2E         LDA $2E                   
CODE_23A73C:        85 00         STA $00                   
CODE_23A73E:        A5 2F         LDA $2F                   
CODE_23A740:        85 01         STA $01                   
CODE_23A742:        AC 00 07      LDY $0700                 
CODE_23A745:        A9 BA         LDA #$BA                  
CODE_23A747:        97 2E         STA [$2E],y               
CODE_23A749:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A74D:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A751:        A9 BB         LDA #$BB                  
CODE_23A753:        97 2E         STA [$2E],y               
CODE_23A755:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A759:        A5 00         LDA $00                   
CODE_23A75B:        85 2E         STA $2E                   
CODE_23A75D:        A5 01         LDA $01                   
CODE_23A75F:        85 2F         STA $2F                   
CODE_23A761:        AD 00 07      LDA $0700                 
CODE_23A764:        18            CLC                       
CODE_23A765:        69 10         ADC #$10                  
CODE_23A767:        8D 00 07      STA $0700                 
CODE_23A76A:        A5 2F         LDA $2F                   
CODE_23A76C:        69 00         ADC #$00                  
CODE_23A76E:        85 2F         STA $2F                   
CODE_23A770:        85 01         STA $01                   
CODE_23A772:        C6 02         DEC $02                   
CODE_23A774:        D0 CC         BNE CODE_23A742           
CODE_23A776:        AC 00 07      LDY $0700                 
CODE_23A779:        BD 83 A4      LDA.w DATA_21A483,x               
CODE_23A77C:        97 2E         STA [$2E],y               
CODE_23A77E:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A782:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A786:        BD 84 A4      LDA.w DATA_21A483+1,x               
CODE_23A789:        97 2E         STA [$2E],y               
CODE_23A78B:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A78F:        6B            RTL                       

CODE_23A790:        A5 2E         LDA $2E                   
CODE_23A792:        85 00         STA $00                   
CODE_23A794:        A5 2F         LDA $2F                   
CODE_23A796:        85 01         STA $01                   
CODE_23A798:        A2 06         LDX #$06                  
CODE_23A79A:        AD 06 07      LDA $0706                 
CODE_23A79D:        29 0F         AND #$0F                  
CODE_23A79F:        85 02         STA $02                   
CODE_23A7A1:        AC 00 07      LDY $0700                 
CODE_23A7A4:        B7 2E         LDA [$2E],y               
CODE_23A7A6:        DD 83 A4      CMP.w DATA_21A483,x               
CODE_23A7A9:        F0 18         BEQ CODE_23A7C3           
CODE_23A7AB:        BD 83 A4      LDA.w DATA_21A483,x               
CODE_23A7AE:        97 2E         STA [$2E],y               
CODE_23A7B0:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A7B4:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A7B8:        BD 84 A4      LDA.w DATA_21A483+1,x               
CODE_23A7BB:        97 2E         STA [$2E],y               
CODE_23A7BD:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A7C1:        80 17         BRA CODE_23A7DA           

CODE_23A7C3:        AC 00 07      LDY $0700                 
CODE_23A7C6:        A9 BA         LDA #$BA                  
CODE_23A7C8:        97 2E         STA [$2E],y               
CODE_23A7CA:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A7CE:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A7D2:        A9 BB         LDA #$BB                  
CODE_23A7D4:        97 2E         STA [$2E],y               
CODE_23A7D6:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A7DA:        A5 00         LDA $00                   
CODE_23A7DC:        85 2E         STA $2E                   
CODE_23A7DE:        A5 01         LDA $01                   
CODE_23A7E0:        85 2F         STA $2F                   
CODE_23A7E2:        AD 00 07      LDA $0700                 
CODE_23A7E5:        18            CLC                       
CODE_23A7E6:        69 10         ADC #$10                  
CODE_23A7E8:        8D 00 07      STA $0700                 
CODE_23A7EB:        A5 2F         LDA $2F                   
CODE_23A7ED:        69 00         ADC #$00                  
CODE_23A7EF:        85 2F         STA $2F                   
CODE_23A7F1:        85 01         STA $01                   
CODE_23A7F3:        C6 02         DEC $02                   
CODE_23A7F5:        D0 CC         BNE CODE_23A7C3           
CODE_23A7F7:        AC 00 07      LDY $0700                 
CODE_23A7FA:        BD 83 A4      LDA.w DATA_21A483,x               
CODE_23A7FD:        97 2E         STA [$2E],y               
CODE_23A7FF:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A803:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A807:        BD 84 A4      LDA.w DATA_21A483+1,x               
CODE_23A80A:        97 2E         STA [$2E],y               
CODE_23A80C:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A810:        6B            RTL                       

CODE_23A811:        A2 08         LDX #$08                  
CODE_23A813:        AD 06 07      LDA $0706                 
CODE_23A816:        29 0F         AND #$0F                  
CODE_23A818:        85 02         STA $02                   
CODE_23A81A:        4C 3A A7      JMP CODE_23A73A           

CODE_23A81D:        AD 06 07      LDA $0706                 
CODE_23A820:        38            SEC                       
CODE_23A821:        E9 E0         SBC #$E0                  
CODE_23A823:        4A            LSR A                     
CODE_23A824:        4A            LSR A                     
CODE_23A825:        4A            LSR A                     
CODE_23A826:        4A            LSR A                     
CODE_23A827:        AA            TAX                       
CODE_23A828:        A5 2E         LDA $2E                   
CODE_23A82A:        85 00         STA $00                   
CODE_23A82C:        A5 2F         LDA $2F                   
CODE_23A82E:        85 01         STA $01                   
CODE_23A830:        AD 06 07      LDA $0706                 
CODE_23A833:        29 0F         AND #$0F                  
CODE_23A835:        85 02         STA $02                   
CODE_23A837:        AC 00 07      LDY $0700                 
CODE_23A83A:        BD 8D A4      LDA.w DATA_21A48D,x               
CODE_23A83D:        97 2E         STA [$2E],y               
CODE_23A83F:        80 16         BRA CODE_23A857           

CODE_23A841:        B7 2E         LDA [$2E],y               
CODE_23A843:        C9 BA         CMP #$BA                  
CODE_23A845:        F0 08         BEQ CODE_23A84F           
CODE_23A847:        C9 BB         CMP #$BB                  
CODE_23A849:        F0 08         BEQ CODE_23A853           
CODE_23A84B:        A9 B8         LDA #$B8                  
CODE_23A84D:        80 06         BRA CODE_23A855           

CODE_23A84F:        A9 A5         LDA #$A5                  
CODE_23A851:        80 02         BRA CODE_23A855           

CODE_23A853:        A9 A6         LDA #$A6                  
CODE_23A855:        97 2E         STA [$2E],y               
CODE_23A857:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A85B:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A85F:        C6 02         DEC $02                   
CODE_23A861:        10 DE         BPL CODE_23A841           
CODE_23A863:        A5 00         LDA $00                   
CODE_23A865:        85 2E         STA $2E                   
CODE_23A867:        A5 01         LDA $01                   
CODE_23A869:        85 2F         STA $2F                   
CODE_23A86B:        AD 00 07      LDA $0700                 
CODE_23A86E:        18            CLC                       
CODE_23A86F:        69 10         ADC #$10                  
CODE_23A871:        8D 00 07      STA $0700                 
CODE_23A874:        A8            TAY                       
CODE_23A875:        A5 2F         LDA $2F                   
CODE_23A877:        69 00         ADC #$00                  
CODE_23A879:        85 2F         STA $2F                   
CODE_23A87B:        85 01         STA $01                   
CODE_23A87D:        AD 06 07      LDA $0706                 
CODE_23A880:        29 0F         AND #$0F                  
CODE_23A882:        85 02         STA $02                   
CODE_23A884:        BD 90 A4      LDA.w DATA_21A490,x               
CODE_23A887:        97 2E         STA [$2E],y               
CODE_23A889:        80 16         BRA CODE_23A8A1           

CODE_23A88B:        B7 2E         LDA [$2E],y               
CODE_23A88D:        C9 BA         CMP #$BA                  
CODE_23A88F:        F0 08         BEQ CODE_23A899           
CODE_23A891:        C9 BB         CMP #$BB                  
CODE_23A893:        F0 08         BEQ CODE_23A89D           
CODE_23A895:        A9 B9         LDA #$B9                  
CODE_23A897:        80 06         BRA CODE_23A89F           

CODE_23A899:        A9 AA         LDA #$AA                  
CODE_23A89B:        80 02         BRA CODE_23A89F           

CODE_23A89D:        A9 AB         LDA #$AB                  
CODE_23A89F:        97 2E         STA [$2E],y               
CODE_23A8A1:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A8A5:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A8A9:        C6 02         DEC $02                   
CODE_23A8AB:        10 DE         BPL CODE_23A88B           
CODE_23A8AD:        6B            RTL                       

CODE_23A8AE:        A5 2E         LDA $2E                   
CODE_23A8B0:        85 00         STA $00                   
CODE_23A8B2:        A5 2F         LDA $2F                   
CODE_23A8B4:        85 01         STA $01                   
CODE_23A8B6:        AD 06 07      LDA $0706                 
CODE_23A8B9:        38            SEC                       
CODE_23A8BA:        E9 10         SBC #$10                  
CODE_23A8BC:        4A            LSR A                     
CODE_23A8BD:        4A            LSR A                     
CODE_23A8BE:        4A            LSR A                     
CODE_23A8BF:        4A            LSR A                     
CODE_23A8C0:        AA            TAX                       
CODE_23A8C1:        AD 06 07      LDA $0706                 
CODE_23A8C4:        29 0F         AND #$0F                  
CODE_23A8C6:        85 02         STA $02                   
CODE_23A8C8:        AC 00 07      LDY $0700                 
CODE_23A8CB:        A9 B8         LDA #$B8                  
CODE_23A8CD:        97 2E         STA [$2E],y               
CODE_23A8CF:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A8D3:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A8D7:        C6 02         DEC $02                   
CODE_23A8D9:        D0 F0         BNE CODE_23A8CB           
CODE_23A8DB:        BD 8D A4      LDA.w DATA_21A48D,x               
CODE_23A8DE:        97 2E         STA [$2E],y               
CODE_23A8E0:        A5 00         LDA $00                   
CODE_23A8E2:        85 2E         STA $2E                   
CODE_23A8E4:        A5 01         LDA $01                   
CODE_23A8E6:        85 2F         STA $2F                   
CODE_23A8E8:        AD 00 07      LDA $0700                 
CODE_23A8EB:        18            CLC                       
CODE_23A8EC:        69 10         ADC #$10                  
CODE_23A8EE:        8D 00 07      STA $0700                 
CODE_23A8F1:        A8            TAY                       
CODE_23A8F2:        A5 2F         LDA $2F                   
CODE_23A8F4:        69 00         ADC #$00                  
CODE_23A8F6:        85 2F         STA $2F                   
CODE_23A8F8:        85 01         STA $01                   
CODE_23A8FA:        AD 06 07      LDA $0706                 
CODE_23A8FD:        29 0F         AND #$0F                  
CODE_23A8FF:        85 02         STA $02                   
CODE_23A901:        A9 B9         LDA #$B9                  
CODE_23A903:        97 2E         STA [$2E],y               
CODE_23A905:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A909:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A90D:        C6 02         DEC $02                   
CODE_23A90F:        D0 F0         BNE CODE_23A901           
CODE_23A911:        BD 90 A4      LDA.w DATA_21A490,x               
CODE_23A914:        97 2E         STA [$2E],y               
CODE_23A916:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A91A:        6B            RTL                       

CODE_23A91B:        A2 02         LDX #$02                  
CODE_23A91D:        4C 28 A8      JMP CODE_23A828           

CODE_23A920:        AD 06 07      LDA $0706                 
CODE_23A923:        29 0F         AND #$0F                  
CODE_23A925:        85 02         STA $02                   
CODE_23A927:        AC 00 07      LDY $0700                 
CODE_23A92A:        A2 41         LDX #$41                  
CODE_23A92C:        20 71 BE      JSR CODE_23BE71           
CODE_23A92F:        C9 00         CMP #$00                  
CODE_23A931:        D0 02         BNE CODE_23A935           
CODE_23A933:        A2 40         LDX #$40                  
CODE_23A935:        8A            TXA                       
CODE_23A936:        97 2E         STA [$2E],y               
CODE_23A938:        E6 0F         INC $0F                   
CODE_23A93A:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23A93E:        C6 02         DEC $02                   
CODE_23A940:        10 E8         BPL CODE_23A92A           
CODE_23A942:        6B            RTL                       

CODE_23A943:        A5 2E         LDA $2E                   
CODE_23A945:        85 00         STA $00                   
CODE_23A947:        A5 2F         LDA $2F                   
CODE_23A949:        85 01         STA $01                   
CODE_23A94B:        A2 00         LDX #$00                  
CODE_23A94D:        86 03         STX $03                   
CODE_23A94F:        A9 19         LDA #$19                  
CODE_23A951:        85 02         STA $02                   
CODE_23A953:        AC 00 07      LDY $0700                 
CODE_23A956:        BD 93 A4      LDA.w DATA_21A493,x               
CODE_23A959:        97 2E         STA [$2E],y               
CODE_23A95B:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23A95F:        98            TYA                       
CODE_23A960:        18            CLC                       
CODE_23A961:        69 10         ADC #$10                  
CODE_23A963:        A8            TAY                       
CODE_23A964:        A5 2F         LDA $2F                   
CODE_23A966:        69 00         ADC #$00                  
CODE_23A968:        85 2F         STA $2F                   
CODE_23A96A:        C6 02         DEC $02                   
CODE_23A96C:        10 E8         BPL CODE_23A956           
CODE_23A96E:        B7 2E         LDA [$2E],y               
CODE_23A970:        C9 2C         CMP #$2C                  
CODE_23A972:        F0 04         BEQ CODE_23A978           
CODE_23A974:        C9 9A         CMP #$9A                  
CODE_23A976:        D0 0F         BNE CODE_23A987           
CODE_23A978:        A9 0D         LDA #$0D                  
CODE_23A97A:        97 2E         STA [$2E],y               
CODE_23A97C:        A5 2F         LDA $2F                   
CODE_23A97E:        18            CLC                       
CODE_23A97F:        69 20         ADC #$20                  
CODE_23A981:        85 2F         STA $2F                   
CODE_23A983:        A9 01         LDA #$01                  
CODE_23A985:        97 2E         STA [$2E],y               
CODE_23A987:        C2 20         REP #$20                  
CODE_23A989:        A5 00         LDA $00                   
CODE_23A98B:        85 2E         STA $2E                   
CODE_23A98D:        E2 20         SEP #$20                  
CODE_23A98F:        AC 00 07      LDY $0700                 
CODE_23A992:        C8            INY                       
CODE_23A993:        98            TYA                       
CODE_23A994:        29 0F         AND #$0F                  
CODE_23A996:        D0 3E         BNE CODE_23A9D6           
CODE_23A998:        AD 0A 07      LDA $070A                 
CODE_23A99B:        C9 01         CMP #$01                  
CODE_23A99D:        F0 18         BEQ CODE_23A9B7           
CODE_23A99F:        C9 04         CMP #$04                  
CODE_23A9A1:        F0 14         BEQ CODE_23A9B7           
CODE_23A9A3:        C9 0C         CMP #$0C                  
CODE_23A9A5:        F0 10         BEQ CODE_23A9B7           
CODE_23A9A7:        C9 09         CMP #$09                  
CODE_23A9A9:        F0 0C         BEQ CODE_23A9B7           
CODE_23A9AB:        C9 03         CMP #$03                  
CODE_23A9AD:        F0 08         BEQ CODE_23A9B7           
CODE_23A9AF:        C9 0E         CMP #$0E                  
CODE_23A9B1:        F0 04         BEQ CODE_23A9B7           
CODE_23A9B3:        C9 0D         CMP #$0D                  
CODE_23A9B5:        D0 09         BNE CODE_23A9C0           
CODE_23A9B7:        A5 03         LDA $03                   
CODE_23A9B9:        C9 01         CMP #$01                  
CODE_23A9BB:        D0 03         BNE CODE_23A9C0           
CODE_23A9BD:        20 E5 A9      JSR CODE_23A9E5           
CODE_23A9C0:        C2 20         REP #$20                  
CODE_23A9C2:        A5 2E         LDA $2E                   
CODE_23A9C4:        18            CLC                       
CODE_23A9C5:        69 B0 01      ADC #$01B0                
CODE_23A9C8:        85 2E         STA $2E                   
CODE_23A9CA:        85 00         STA $00                   
CODE_23A9CC:        E2 20         SEP #$20                  
CODE_23A9CE:        E6 03         INC $03                   
CODE_23A9D0:        AD 00 07      LDA $0700                 
CODE_23A9D3:        29 F0         AND #$F0                  
CODE_23A9D5:        A8            TAY                       
CODE_23A9D6:        8C 00 07      STY $0700                 
CODE_23A9D9:        A2 01         LDX #$01                  
CODE_23A9DB:        A5 03         LDA $03                   
CODE_23A9DD:        C9 02         CMP #$02                  
CODE_23A9DF:        F0 03         BEQ CODE_23A9E4           
CODE_23A9E1:        4C 4F A9      JMP CODE_23A94F           

CODE_23A9E4:        6B            RTL                       

CODE_23A9E5:        8B            PHB                       
CODE_23A9E6:        A9 2A         LDA #$2A                  
CODE_23A9E8:        48            PHA                       
CODE_23A9E9:        AB            PLB                       
CODE_23A9EA:        E6 2F         INC $2F                   
CODE_23A9EC:        A5 2E         LDA $2E                   
CODE_23A9EE:        18            CLC                       
CODE_23A9EF:        69 40         ADC #$40                  
CODE_23A9F1:        85 2E         STA $2E                   
CODE_23A9F3:        A5 2F         LDA $2F                   
CODE_23A9F5:        69 00         ADC #$00                  
CODE_23A9F7:        85 2F         STA $2F                   
CODE_23A9F9:        A0 00         LDY #$00                  
CODE_23A9FB:        84 06         STY $06                   
CODE_23A9FD:        A2 06         LDX #$06                  
CODE_23A9FF:        AD 0A 07      LDA $070A                 
CODE_23AA02:        DD F1 B9      CMP.w DATA_2AB9F1,x               
CODE_23AA05:        F0 03         BEQ CODE_23AA0A           
CODE_23AA07:        CA            DEX                       
CODE_23AA08:        D0 F8         BNE CODE_23AA02           
CODE_23AA0A:        8A            TXA                       
CODE_23AA0B:        0A            ASL A                     
CODE_23AA0C:        AA            TAX                       
CODE_23AA0D:        C2 20         REP #$20                  
CODE_23AA0F:        BD E3 B9      LDA.w DATA_2AB9E3,x               
CODE_23AA12:        85 0C         STA $0C                   
CODE_23AA14:        BD D8 BB      LDA.w DATA_2ABBD8,x               
CODE_23AA17:        85 D8         STA $D8                   
CODE_23AA19:        A5 2E         LDA $2E                   
CODE_23AA1B:        18            CLC                       
CODE_23AA1C:        69 00 20      ADC #$2000                
CODE_23AA1F:        85 DB         STA $DB                   
CODE_23AA21:        E2 20         SEP #$20                  
CODE_23AA23:        A5 30         LDA $30                   
CODE_23AA25:        85 DD         STA $DD                   
CODE_23AA27:        A2 0F         LDX #$0F                  
CODE_23AA29:        B1 0C         LDA ($0C),y               
CODE_23AA2B:        97 2E         STA [$2E],y               
CODE_23AA2D:        B1 D8         LDA ($D8),y               
CODE_23AA2F:        97 DB         STA [$DB],y               
CODE_23AA31:        C8            INY                       
CODE_23AA32:        CA            DEX                       
CODE_23AA33:        10 F4         BPL CODE_23AA29           
CODE_23AA35:        E6 06         INC $06                   
CODE_23AA37:        A5 06         LDA $06                   
CODE_23AA39:        C9 06         CMP #$06                  
CODE_23AA3B:        D0 EA         BNE CODE_23AA27           
CODE_23AA3D:        A5 00         LDA $00                   
CODE_23AA3F:        85 2E         STA $2E                   
CODE_23AA41:        A5 01         LDA $01                   
CODE_23AA43:        85 2F         STA $2F                   
CODE_23AA45:        AB            PLB                       
CODE_23AA46:        60            RTS                       

CODE_23AA47:        8A            TXA                       
CODE_23AA48:        38            SEC                       
CODE_23AA49:        E9 10         SBC #$10                  
CODE_23AA4B:        AA            TAX                       
CODE_23AA4C:        AC 00 07      LDY $0700                 
CODE_23AA4F:        E0 0B         CPX #$0B                  
CODE_23AA51:        F0 04         BEQ CODE_23AA57           
CODE_23AA53:        E0 0F         CPX #$0F                  
CODE_23AA55:        D0 10         BNE CODE_23AA67           
CODE_23AA57:        20 71 BE      JSR CODE_23BE71           
CODE_23AA5A:        C9 00         CMP #$00                  
CODE_23AA5C:        F0 09         BEQ CODE_23AA67           
CODE_23AA5E:        A9 5F         LDA #$5F                  
CODE_23AA60:        E0 0B         CPX #$0B                  
CODE_23AA62:        F0 06         BEQ CODE_23AA6A           
CODE_23AA64:        4C 89 AA      JMP CODE_23AA89           

CODE_23AA67:        BD 95 A4      LDA.w DATA_21A495,x               
CODE_23AA6A:        97 2E         STA [$2E],y               
CODE_23AA6C:        48            PHA                       
CODE_23AA6D:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AA71:        68            PLA                       
CODE_23AA72:        C9 70         CMP #$70                  
CODE_23AA74:        D0 13         BNE CODE_23AA89           
CODE_23AA76:        98            TYA                       
CODE_23AA77:        38            SEC                       
CODE_23AA78:        E9 10         SBC #$10                  
CODE_23AA7A:        A8            TAY                       
CODE_23AA7B:        A5 2F         LDA $2F                   
CODE_23AA7D:        E9 00         SBC #$00                  
CODE_23AA7F:        85 2F         STA $2F                   
CODE_23AA81:        A9 C1         LDA #$C1                  
CODE_23AA83:        97 2E         STA [$2E],y               
CODE_23AA85:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AA89:        6B            RTL                       

CODE_23AA8A:        AD 06 07      LDA $0706                 
CODE_23AA8D:        38            SEC                       
CODE_23AA8E:        E9 10         SBC #$10                  
CODE_23AA90:        4A            LSR A                     
CODE_23AA91:        4A            LSR A                     
CODE_23AA92:        4A            LSR A                     
CODE_23AA93:        4A            LSR A                     
CODE_23AA94:        AA            TAX                       
CODE_23AA95:        AD 06 07      LDA $0706                 
CODE_23AA98:        29 0F         AND #$0F                  
CODE_23AA9A:        85 02         STA $02                   
CODE_23AA9C:        AC 00 07      LDY $0700                 
CODE_23AA9F:        E0 07         CPX #$07                  
CODE_23AAA1:        D0 07         BNE CODE_23AAAA           
CODE_23AAA3:        20 71 BE      JSR CODE_23BE71           
CODE_23AAA6:        C9 00         CMP #$00                  
CODE_23AAA8:        D0 09         BNE CODE_23AAB3           
CODE_23AAAA:        BD AE A4      LDA.w DATA_21A4AE,x               
CODE_23AAAD:        97 2E         STA [$2E],y               
CODE_23AAAF:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AAB3:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AAB7:        C6 02         DEC $02                   
CODE_23AAB9:        10 E4         BPL CODE_23AA9F           
CODE_23AABB:        6B            RTL                       

CODE_23AABC:        A2 08         LDX #$08                  
CODE_23AABE:        4C 95 AA      JMP CODE_23AA95           

CODE_23AAC1:        A2 00         LDX #$00                  
CODE_23AAC3:        A0 00         LDY #$00                  
CODE_23AAC5:        80 0A         BRA CODE_23AAD1           

CODE_23AAC7:        A2 15         LDX #$15                  
CODE_23AAC9:        A0 01         LDY #$01                  
CODE_23AACB:        80 04         BRA CODE_23AAD1           

CODE_23AACD:        A2 22         LDX #$22                  
CODE_23AACF:        A0 02         LDY #$02                  
CODE_23AAD1:        A5 30         LDA $30                   
CODE_23AAD3:        85 DA         STA $DA                   
CODE_23AAD5:        64 DB         STZ $DB                   
CODE_23AAD7:        AD BF 1E      LDA $1EBF                 
CODE_23AADA:        C9 01         CMP #$01                  
CODE_23AADC:        F0 14         BEQ CODE_23AAF2           
CODE_23AADE:        C9 14         CMP #$14                  
CODE_23AAE0:        F0 10         BEQ CODE_23AAF2           
CODE_23AAE2:        C9 1C         CMP #$1C                  
CODE_23AAE4:        F0 0C         BEQ CODE_23AAF2           
CODE_23AAE6:        C9 1F         CMP #$1F                  
CODE_23AAE8:        F0 08         BEQ CODE_23AAF2           
CODE_23AAEA:        C9 20         CMP #$20                  
CODE_23AAEC:        F0 04         BEQ CODE_23AAF2           
CODE_23AAEE:        C9 29         CMP #$29                  
CODE_23AAF0:        D0 02         BNE CODE_23AAF4           
CODE_23AAF2:        E6 DB         INC $DB                   
CODE_23AAF4:        C2 21         REP #$21                  
CODE_23AAF6:        A5 2E         LDA $2E                   
CODE_23AAF8:        85 00         STA $00                   
CODE_23AAFA:        E2 20         SEP #$20                  
CODE_23AAFC:        84 0C         STY $0C                   
CODE_23AAFE:        A4 0C         LDY $0C                   
CODE_23AB00:        B9 B0 A5      LDA.w DATA_21A5B0,y               
CODE_23AB03:        85 02         STA $02                   
CODE_23AB05:        AC 00 07      LDY $0700                 
CODE_23AB08:        C2 21         REP #$21                  
CODE_23AB0A:        A5 2E         LDA $2E                   
CODE_23AB0C:        69 00 20      ADC #$2000                
CODE_23AB0F:        85 D8         STA $D8                   
CODE_23AB11:        E2 20         SEP #$20                  
CODE_23AB13:        A5 DB         LDA $DB                   
CODE_23AB15:        D0 05         BNE CODE_23AB1C           
CODE_23AB17:        BD B7 A4      LDA.w DATA_21A4B7,x               
CODE_23AB1A:        80 03         BRA CODE_23AB1F           

CODE_23AB1C:        BD 0A A5      LDA.w DATA_21A50A,x               
CODE_23AB1F:        C9 80         CMP #$80                  
CODE_23AB21:        D0 03         BNE CODE_23AB26           
CODE_23AB23:        4C E9 AB      JMP CODE_23ABE9           

CODE_23AB26:        85 03         STA $03                   
CODE_23AB28:        C9 92         CMP #$92                  
CODE_23AB2A:        F0 08         BEQ CODE_23AB34           
CODE_23AB2C:        C9 93         CMP #$93                  
CODE_23AB2E:        D0 0B         BNE CODE_23AB3B           
CODE_23AB30:        A5 DB         LDA $DB                   
CODE_23AB32:        D0 07         BNE CODE_23AB3B           
CODE_23AB34:        A9 00         LDA #$00                  
CODE_23AB36:        97 D8         STA [$D8],y               
CODE_23AB38:        4C D9 AB      JMP CODE_23ABD9           

CODE_23AB3B:        A5 DB         LDA $DB                   
CODE_23AB3D:        D0 07         BNE CODE_23AB46           
CODE_23AB3F:        B7 D8         LDA [$D8],y               
CODE_23AB41:        F0 03         BEQ CODE_23AB46           
CODE_23AB43:        4C E9 AB      JMP CODE_23ABE9           

CODE_23AB46:        BD 5D A5      LDA.w DATA_21A55D,x               
CODE_23AB49:        97 D8         STA [$D8],y               
CODE_23AB4B:        F0 03         BEQ CODE_23AB50           
CODE_23AB4D:        4C D9 AB      JMP CODE_23ABD9           

CODE_23AB50:        B7 2E         LDA [$2E],y               
CODE_23AB52:        C9 03         CMP #$03                  
CODE_23AB54:        F0 65         BEQ CODE_23ABBB           
CODE_23AB56:        C9 90         CMP #$90                  
CODE_23AB58:        90 7F         BCC CODE_23ABD9           
CODE_23AB5A:        C9 9F         CMP #$9F                  
CODE_23AB5C:        B0 7B         BCS CODE_23ABD9                   
CODE_23AB5E:        C5 03         CMP $03                   
CODE_23AB60:        F0 E1         BEQ CODE_23AB43           
CODE_23AB62:        A5 DB         LDA $DB                   
CODE_23AB64:        F0 26         BEQ CODE_23AB8C           
CODE_23AB66:        A5 03         LDA $03                   
CODE_23AB68:        C9 94         CMP #$94                  
CODE_23AB6A:        F0 04         BEQ CODE_23AB70           
CODE_23AB6C:        C9 95         CMP #$95                  
CODE_23AB6E:        D0 1C         BNE CODE_23AB8C           
CODE_23AB70:        B7 2E         LDA [$2E],y               
CODE_23AB72:        C9 94         CMP #$94                  
CODE_23AB74:        F0 5F         BEQ CODE_23ABD5           
CODE_23AB76:        C9 91         CMP #$91                  
CODE_23AB78:        F0 41         BEQ CODE_23ABBB           
CODE_23AB7A:        C9 95         CMP #$95                  
CODE_23AB7C:        F0 3D         BEQ CODE_23ABBB           
CODE_23AB7E:        C9 98         CMP #$98                  
CODE_23AB80:        F0 53         BEQ CODE_23ABD5           
CODE_23AB82:        A9 01         LDA #$01                  
CODE_23AB84:        97 D8         STA [$D8],y               
CODE_23AB86:        A9 03         LDA #$03                  
CODE_23AB88:        85 03         STA $03                   
CODE_23AB8A:        80 4D         BRA CODE_23ABD9           

CODE_23AB8C:        A5 03         LDA $03                   
CODE_23AB8E:        C9 94         CMP #$94                  
CODE_23AB90:        B0 29         BCS CODE_23ABBB                   
CODE_23AB92:        E6 03         INC $03                   
CODE_23AB94:        E6 03         INC $03                   
CODE_23AB96:        AD BF 1E      LDA $1EBF                 
CODE_23AB99:        C9 01         CMP #$01                  
CODE_23AB9B:        F0 0E         BEQ CODE_23ABAB           
CODE_23AB9D:        AD 27 07      LDA $0727                 
CODE_23ABA0:        C9 06         CMP #$06                  
CODE_23ABA2:        D0 35         BNE CODE_23ABD9           
CODE_23ABA4:        AD BF 1E      LDA $1EBF                 
CODE_23ABA7:        C9 29         CMP #$29                  
CODE_23ABA9:        D0 2E         BNE CODE_23ABD9           
CODE_23ABAB:        B7 2E         LDA [$2E],y               
CODE_23ABAD:        C9 98         CMP #$98                  
CODE_23ABAF:        D0 28         BNE CODE_23ABD9           
CODE_23ABB1:        A9 01         LDA #$01                  
CODE_23ABB3:        97 D8         STA [$D8],y               
CODE_23ABB5:        A9 02         LDA #$02                  
CODE_23ABB7:        85 03         STA $03                   
CODE_23ABB9:        80 1E         BRA CODE_23ABD9           

CODE_23ABBB:        A5 DB         LDA $DB                   
CODE_23ABBD:        F0 16         BEQ CODE_23ABD5           
CODE_23ABBF:        A5 03         LDA $03                   
CODE_23ABC1:        C9 93         CMP #$93                  
CODE_23ABC3:        F0 14         BEQ CODE_23ABD9           
CODE_23ABC5:        B7 2E         LDA [$2E],y               
CODE_23ABC7:        1A            INC A                     
CODE_23ABC8:        1A            INC A                     
CODE_23ABC9:        85 03         STA $03                   
CODE_23ABCB:        29 F0         AND #$F0                  
CODE_23ABCD:        D0 0A         BNE CODE_23ABD9           
CODE_23ABCF:        A9 01         LDA #$01                  
CODE_23ABD1:        97 D8         STA [$D8],y               
CODE_23ABD3:        80 04         BRA CODE_23ABD9           

CODE_23ABD5:        A9 98         LDA #$98                  
CODE_23ABD7:        85 03         STA $03                   
CODE_23ABD9:        A5 03         LDA $03                   
CODE_23ABDB:        97 2E         STA [$2E],y               
CODE_23ABDD:        C9 98         CMP #$98                  
CODE_23ABDF:        D0 04         BNE CODE_23ABE5           
CODE_23ABE1:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23ABE5:        22 94 87 2A   JSL CODE_2A8794           
CODE_23ABE9:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23ABED:        E8            INX                       
CODE_23ABEE:        C6 02         DEC $02                   
CODE_23ABF0:        30 03         BMI CODE_23ABF5           
CODE_23ABF2:        4C 08 AB      JMP CODE_23AB08           

CODE_23ABF5:        A5 00         LDA $00                   
CODE_23ABF7:        85 2E         STA $2E                   
CODE_23ABF9:        A5 01         LDA $01                   
CODE_23ABFB:        85 2F         STA $2F                   
CODE_23ABFD:        AD 00 07      LDA $0700                 
CODE_23AC00:        18            CLC                       
CODE_23AC01:        69 10         ADC #$10                  
CODE_23AC03:        8D 00 07      STA $0700                 
CODE_23AC06:        A5 2F         LDA $2F                   
CODE_23AC08:        69 00         ADC #$00                  
CODE_23AC0A:        85 2F         STA $2F                   
CODE_23AC0C:        85 01         STA $01                   
CODE_23AC0E:        BD B7 A4      LDA.w DATA_21A4B7,x               
CODE_23AC11:        C9 FF         CMP #$FF                  
CODE_23AC13:        F0 03         BEQ CODE_23AC18           
CODE_23AC15:        4C FE AA      JMP CODE_23AAFE           

CODE_23AC18:        6B            RTL                       

CODE_23AC19:        20 F3 AC      JSR CODE_23ACF3           
CODE_23AC1C:        BD B3 A5      LDA.w DATA_21A5B3,x               
CODE_23AC1F:        97 2E         STA [$2E],y               
CODE_23AC21:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AC25:        C6 02         DEC $02                   
CODE_23AC27:        10 F3         BPL CODE_23AC1C           
CODE_23AC29:        6B            RTL                       

CODE_23AC2A:        20 F3 AC      JSR CODE_23ACF3           
CODE_23AC2D:        BD B5 A5      LDA.w DATA_21A5B5,x               
CODE_23AC30:        97 2E         STA [$2E],y               
CODE_23AC32:        98            TYA                       
CODE_23AC33:        18            CLC                       
CODE_23AC34:        69 10         ADC #$10                  
CODE_23AC36:        A8            TAY                       
CODE_23AC37:        A5 2F         LDA $2F                   
CODE_23AC39:        69 00         ADC #$00                  
CODE_23AC3B:        85 2F         STA $2F                   
CODE_23AC3D:        C6 02         DEC $02                   
CODE_23AC3F:        10 EC         BPL CODE_23AC2D           
CODE_23AC41:        6B            RTL                       

CODE_23AC42:        20 F3 AC      JSR CODE_23ACF3           
CODE_23AC45:        BD B7 A5      LDA.w DATA_21A5B7,x               
CODE_23AC48:        97 2E         STA [$2E],y               
CODE_23AC4A:        98            TYA                       
CODE_23AC4B:        18            CLC                       
CODE_23AC4C:        69 10         ADC #$10                  
CODE_23AC4E:        A8            TAY                       
CODE_23AC4F:        8D 00 07      STA $0700                 
CODE_23AC52:        A5 2F         LDA $2F                   
CODE_23AC54:        69 00         ADC #$00                  
CODE_23AC56:        85 2F         STA $2F                   
CODE_23AC58:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AC5C:        C6 02         DEC $02                   
CODE_23AC5E:        10 E5         BPL CODE_23AC45           
CODE_23AC60:        6B            RTL                       

CODE_23AC61:        20 F3 AC      JSR CODE_23ACF3           
CODE_23AC64:        BD B9 A5      LDA.w DATA_21A5B9,x               
CODE_23AC67:        97 2E         STA [$2E],y               
CODE_23AC69:        98            TYA                       
CODE_23AC6A:        38            SEC                       
CODE_23AC6B:        E9 10         SBC #$10                  
CODE_23AC6D:        A8            TAY                       
CODE_23AC6E:        8D 00 07      STA $0700                 
CODE_23AC71:        A5 2F         LDA $2F                   
CODE_23AC73:        E9 00         SBC #$00                  
CODE_23AC75:        85 2F         STA $2F                   
CODE_23AC77:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AC7B:        C6 02         DEC $02                   
CODE_23AC7D:        10 E5         BPL CODE_23AC64           
CODE_23AC7F:        6B            RTL                       

CODE_23AC80:        20 F3 AC      JSR CODE_23ACF3           
CODE_23AC83:        BD BB A5      LDA.w DATA_21A5BB,x               
CODE_23AC86:        97 2E         STA [$2E],y               
CODE_23AC88:        98            TYA                       
CODE_23AC89:        18            CLC                       
CODE_23AC8A:        69 10         ADC #$10                  
CODE_23AC8C:        A8            TAY                       
CODE_23AC8D:        A5 2F         LDA $2F                   
CODE_23AC8F:        69 00         ADC #$00                  
CODE_23AC91:        85 2F         STA $2F                   
CODE_23AC93:        BD BD A5      LDA.w DATA_21A5BD,x               
CODE_23AC96:        97 2E         STA [$2E],y               
CODE_23AC98:        98            TYA                       
CODE_23AC99:        18            CLC                       
CODE_23AC9A:        69 10         ADC #$10                  
CODE_23AC9C:        A8            TAY                       
CODE_23AC9D:        A5 2F         LDA $2F                   
CODE_23AC9F:        69 00         ADC #$00                  
CODE_23ACA1:        85 2F         STA $2F                   
CODE_23ACA3:        8C 00 07      STY $0700                 
CODE_23ACA6:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23ACAA:        C6 02         DEC $02                   
CODE_23ACAC:        10 D5         BPL CODE_23AC83           
CODE_23ACAE:        6B            RTL                       

CODE_23ACAF:        20 F3 AC      JSR CODE_23ACF3           
CODE_23ACB2:        BD BF A5      LDA.w DATA_21A5BF,x               
CODE_23ACB5:        97 2E         STA [$2E],y               
CODE_23ACB7:        98            TYA                       
CODE_23ACB8:        18            CLC                       
CODE_23ACB9:        69 10         ADC #$10                  
CODE_23ACBB:        A8            TAY                       
CODE_23ACBC:        A5 2F         LDA $2F                   
CODE_23ACBE:        69 00         ADC #$00                  
CODE_23ACC0:        85 2F         STA $2F                   
CODE_23ACC2:        BD C1 A5      LDA.w DATA_21A5C1,x               
CODE_23ACC5:        97 2E         STA [$2E],y               
CODE_23ACC7:        98            TYA                       
CODE_23ACC8:        18            CLC                       
CODE_23ACC9:        69 10         ADC #$10                  
CODE_23ACCB:        A8            TAY                       
CODE_23ACCC:        A5 2F         LDA $2F                   
CODE_23ACCE:        69 00         ADC #$00                  
CODE_23ACD0:        85 2F         STA $2F                   
CODE_23ACD2:        88            DEY                       
CODE_23ACD3:        98            TYA                       
CODE_23ACD4:        29 0F         AND #$0F                  
CODE_23ACD6:        C9 0F         CMP #$0F                  
CODE_23ACD8:        D0 14         BNE CODE_23ACEE           
CODE_23ACDA:        A5 2E         LDA $2E                   
CODE_23ACDC:        38            SEC                       
CODE_23ACDD:        E9 B0         SBC #$B0                  
CODE_23ACDF:        85 2E         STA $2E                   
CODE_23ACE1:        A5 2F         LDA $2F                   
CODE_23ACE3:        E9 01         SBC #$01                  
CODE_23ACE5:        85 2F         STA $2F                   
CODE_23ACE7:        C8            INY                       
CODE_23ACE8:        98            TYA                       
CODE_23ACE9:        29 F0         AND #$F0                  
CODE_23ACEB:        09 0F         ORA #$0F                  
CODE_23ACED:        A8            TAY                       
CODE_23ACEE:        C6 02         DEC $02                   
CODE_23ACF0:        10 C0         BPL CODE_23ACB2           
CODE_23ACF2:        6B            RTL                       

CODE_23ACF3:        AD 06 07      LDA $0706                 
CODE_23ACF6:        29 0F         AND #$0F                  
CODE_23ACF8:        85 02         STA $02                   
CODE_23ACFA:        AC 00 07      LDY $0700                 
CODE_23ACFD:        A2 00         LDX #$00                  
CODE_23ACFF:        AD 0A 07      LDA $070A                 
CODE_23AD02:        C9 02         CMP #$02                  
CODE_23AD04:        D0 02         BNE CODE_23AD08           
CODE_23AD06:        A2 01         LDX #$01                  
CODE_23AD08:        60            RTS                       

CODE_23AD09:        A0 00         LDY #$00                  
CODE_23AD0B:        B7 2B         LDA [$2B],y               
CODE_23AD0D:        85 02         STA $02                   
CODE_23AD0F:        C2 20         REP #$20                  
CODE_23AD11:        E6 2B         INC $2B                   
CODE_23AD13:        A5 2E         LDA $2E                   
CODE_23AD15:        85 00         STA $00                   
CODE_23AD17:        E2 20         SEP #$20                  
CODE_23AD19:        AD 06 07      LDA $0706                 
CODE_23AD1C:        29 0F         AND #$0F                  
CODE_23AD1E:        85 03         STA $03                   
CODE_23AD20:        A2 00         LDX #$00                  
CODE_23AD22:        64 D8         STZ $D8                   
CODE_23AD24:        AC 00 07      LDY $0700                 
CODE_23AD27:        A5 02         LDA $02                   
CODE_23AD29:        85 04         STA $04                   
CODE_23AD2B:        10 0D         BPL CODE_23AD3A           
CODE_23AD2D:        AD 27 07      LDA $0727                 
CODE_23AD30:        C9 04         CMP #$04                  
CODE_23AD32:        D0 06         BNE CODE_23AD3A           
CODE_23AD34:        C6 04         DEC $04                   
CODE_23AD36:        A9 8B         LDA #$8B                  
CODE_23AD38:        85 D8         STA $D8                   
CODE_23AD3A:        A5 D8         LDA $D8                   
CODE_23AD3C:        D0 03         BNE CODE_23AD41           
CODE_23AD3E:        BD C3 A5      LDA.w DATA_21A5C3,x               
CODE_23AD41:        97 2E         STA [$2E],y               
CODE_23AD43:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AD47:        C6 04         DEC $04                   
CODE_23AD49:        A5 04         LDA $04                   
CODE_23AD4B:        C9 FF         CMP #$FF                  
CODE_23AD4D:        D0 EB         BNE CODE_23AD3A           
CODE_23AD4F:        C2 20         REP #$20                  
CODE_23AD51:        A5 00         LDA $00                   
CODE_23AD53:        85 2E         STA $2E                   
CODE_23AD55:        E2 20         SEP #$20                  
CODE_23AD57:        AD 00 07      LDA $0700                 
CODE_23AD5A:        18            CLC                       
CODE_23AD5B:        69 10         ADC #$10                  
CODE_23AD5D:        8D 00 07      STA $0700                 
CODE_23AD60:        A5 2F         LDA $2F                   
CODE_23AD62:        69 00         ADC #$00                  
CODE_23AD64:        85 2F         STA $2F                   
CODE_23AD66:        85 01         STA $01                   
CODE_23AD68:        A2 01         LDX #$01                  
CODE_23AD6A:        C6 03         DEC $03                   
CODE_23AD6C:        10 B4         BPL CODE_23AD22           
CODE_23AD6E:        6B            RTL                       

CODE_23AD6F:        A2 00         LDX #$00                  
CODE_23AD71:        F0 02         BEQ CODE_23AD75           
CODE_23AD73:        A2 01         LDX #$01                  
CODE_23AD75:        86 02         STX $02                   
CODE_23AD77:        A5 2E         LDA $2E                   
CODE_23AD79:        85 00         STA $00                   
CODE_23AD7B:        A5 2F         LDA $2F                   
CODE_23AD7D:        85 01         STA $01                   
CODE_23AD7F:        AD 06 07      LDA $0706                 
CODE_23AD82:        29 0F         AND #$0F                  
CODE_23AD84:        85 03         STA $03                   
CODE_23AD86:        AC 00 07      LDY $0700                 
CODE_23AD89:        A6 02         LDX $02                   
CODE_23AD8B:        BD C5 A5      LDA.w DATA_21A5C5,x               
CODE_23AD8E:        97 2E         STA [$2E],y               
CODE_23AD90:        98            TYA                       
CODE_23AD91:        18            CLC                       
CODE_23AD92:        69 10         ADC #$10                  
CODE_23AD94:        A8            TAY                       
CODE_23AD95:        A5 2F         LDA $2F                   
CODE_23AD97:        69 00         ADC #$00                  
CODE_23AD99:        85 2F         STA $2F                   
CODE_23AD9B:        B7 2E         LDA [$2E],y               
CODE_23AD9D:        C9 02         CMP #$02                  
CODE_23AD9F:        D0 07         BNE CODE_23ADA8           
CODE_23ADA1:        BD C7 A5      LDA.w DATA_21A5C7,x               
CODE_23ADA4:        97 2E         STA [$2E],y               
CODE_23ADA6:        80 E8         BRA CODE_23AD90           

CODE_23ADA8:        98            TYA                       
CODE_23ADA9:        38            SEC                       
CODE_23ADAA:        E9 10         SBC #$10                  
CODE_23ADAC:        A8            TAY                       
CODE_23ADAD:        A5 2F         LDA $2F                   
CODE_23ADAF:        E9 00         SBC #$00                  
CODE_23ADB1:        85 2F         STA $2F                   
CODE_23ADB3:        BD C9 A5      LDA.w DATA_21A5C9,x               
CODE_23ADB6:        97 2E         STA [$2E],y               
CODE_23ADB8:        A5 00         LDA $00                   
CODE_23ADBA:        85 2E         STA $2E                   
CODE_23ADBC:        A5 01         LDA $01                   
CODE_23ADBE:        85 2F         STA $2F                   
CODE_23ADC0:        AC 00 07      LDY $0700                 
CODE_23ADC3:        C8            INY                       
CODE_23ADC4:        98            TYA                       
CODE_23ADC5:        29 0F         AND #$0F                  
CODE_23ADC7:        D0 14         BNE CODE_23ADDD           
CODE_23ADC9:        C2 20         REP #$20                  
CODE_23ADCB:        A5 2E         LDA $2E                   
CODE_23ADCD:        18            CLC                       
CODE_23ADCE:        69 B0 01      ADC #$01B0                
CODE_23ADD1:        85 2E         STA $2E                   
CODE_23ADD3:        85 00         STA $00                   
CODE_23ADD5:        E2 20         SEP #$20                  
CODE_23ADD7:        AD 00 07      LDA $0700                 
CODE_23ADDA:        29 F0         AND #$F0                  
CODE_23ADDC:        A8            TAY                       
CODE_23ADDD:        8C 00 07      STY $0700                 
CODE_23ADE0:        98            TYA                       
CODE_23ADE1:        18            CLC                       
CODE_23ADE2:        69 10         ADC #$10                  
CODE_23ADE4:        A8            TAY                       
CODE_23ADE5:        A5 2F         LDA $2F                   
CODE_23ADE7:        69 00         ADC #$00                  
CODE_23ADE9:        85 2F         STA $2F                   
CODE_23ADEB:        B7 2E         LDA [$2E],y               
CODE_23ADED:        DD CF A5      CMP.w DATA_21A5CF,x               
CODE_23ADF0:        D0 07         BNE CODE_23ADF9           
CODE_23ADF2:        BD CD A5      LDA.w DATA_21A5CD,x               
CODE_23ADF5:        97 2E         STA [$2E],y               
CODE_23ADF7:        80 E7         BRA CODE_23ADE0           

CODE_23ADF9:        C6 03         DEC $03                   
CODE_23ADFB:        30 30         BMI CODE_23AE2D           
CODE_23ADFD:        A5 00         LDA $00                   
CODE_23ADFF:        85 2E         STA $2E                   
CODE_23AE01:        A5 01         LDA $01                   
CODE_23AE03:        85 2F         STA $2F                   
CODE_23AE05:        A2 02         LDX #$02                  
CODE_23AE07:        AC 00 07      LDY $0700                 
CODE_23AE0A:        C8            INY                       
CODE_23AE0B:        98            TYA                       
CODE_23AE0C:        29 0F         AND #$0F                  
CODE_23AE0E:        D0 14         BNE CODE_23AE24           
CODE_23AE10:        C2 20         REP #$20                  
CODE_23AE12:        A5 2E         LDA $2E                   
CODE_23AE14:        18            CLC                       
CODE_23AE15:        69 B0 01      ADC #$01B0                
CODE_23AE18:        85 2E         STA $2E                   
CODE_23AE1A:        85 00         STA $00                   
CODE_23AE1C:        E2 20         SEP #$20                  
CODE_23AE1E:        AD 00 07      LDA $0700                 
CODE_23AE21:        29 F0         AND #$F0                  
CODE_23AE23:        A8            TAY                       
CODE_23AE24:        CA            DEX                       
CODE_23AE25:        10 E3         BPL CODE_23AE0A           
CODE_23AE27:        8C 00 07      STY $0700                 
CODE_23AE2A:        4C 89 AD      JMP CODE_23AD89           

CODE_23AE2D:        6B            RTL                       

CODE_23AE2E:        A5 2E         LDA $2E                   
CODE_23AE30:        85 00         STA $00                   
CODE_23AE32:        A5 2F         LDA $2F                   
CODE_23AE34:        85 01         STA $01                   
CODE_23AE36:        AC 00 07      LDY $0700                 
CODE_23AE39:        AD 06 07      LDA $0706                 
CODE_23AE3C:        29 0F         AND #$0F                  
CODE_23AE3E:        AA            TAX                       
CODE_23AE3F:        A9 9C         LDA #$9C                  
CODE_23AE41:        97 2E         STA [$2E],y               
CODE_23AE43:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AE47:        CA            DEX                       
CODE_23AE48:        10 F5         BPL CODE_23AE3F           
CODE_23AE4A:        A5 00         LDA $00                   
CODE_23AE4C:        85 2E         STA $2E                   
CODE_23AE4E:        A5 01         LDA $01                   
CODE_23AE50:        85 2F         STA $2F                   
CODE_23AE52:        AD 00 07      LDA $0700                 
CODE_23AE55:        18            CLC                       
CODE_23AE56:        69 10         ADC #$10                  
CODE_23AE58:        8D 00 07      STA $0700                 
CODE_23AE5B:        A8            TAY                       
CODE_23AE5C:        A5 2F         LDA $2F                   
CODE_23AE5E:        69 00         ADC #$00                  
CODE_23AE60:        85 2F         STA $2F                   
CODE_23AE62:        AD 06 07      LDA $0706                 
CODE_23AE65:        29 0F         AND #$0F                  
CODE_23AE67:        AA            TAX                       
CODE_23AE68:        A9 90         LDA #$90                  
CODE_23AE6A:        97 2E         STA [$2E],y               
CODE_23AE6C:        4C 73 AE      JMP CODE_23AE73           

CODE_23AE6F:        A9 8E         LDA #$8E                  
CODE_23AE71:        97 2E         STA [$2E],y               
CODE_23AE73:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AE77:        CA            DEX                       
CODE_23AE78:        10 F5         BPL CODE_23AE6F           
CODE_23AE7A:        6B            RTL                       

CODE_23AE7B:        AD 06 07      LDA $0706                 
CODE_23AE7E:        29 0F         AND #$0F                  
CODE_23AE80:        AA            TAX                       
CODE_23AE81:        AC 00 07      LDY $0700                 
CODE_23AE84:        A9 76         LDA #$76                  
CODE_23AE86:        97 2E         STA [$2E],y               
CODE_23AE88:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AE8C:        98            TYA                       
CODE_23AE8D:        18            CLC                       
CODE_23AE8E:        69 10         ADC #$10                  
CODE_23AE90:        A8            TAY                       
CODE_23AE91:        A5 2F         LDA $2F                   
CODE_23AE93:        69 00         ADC #$00                  
CODE_23AE95:        85 2F         STA $2F                   
CODE_23AE97:        CA            DEX                       
CODE_23AE98:        30 2C         BMI CODE_23AEC6           
CODE_23AE9A:        A9 77         LDA #$77                  
CODE_23AE9C:        97 2E         STA [$2E],y               
CODE_23AE9E:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AEA2:        98            TYA                       
CODE_23AEA3:        18            CLC                       
CODE_23AEA4:        69 10         ADC #$10                  
CODE_23AEA6:        A8            TAY                       
CODE_23AEA7:        A5 2F         LDA $2F                   
CODE_23AEA9:        69 00         ADC #$00                  
CODE_23AEAB:        85 2F         STA $2F                   
CODE_23AEAD:        CA            DEX                       
CODE_23AEAE:        30 16         BMI CODE_23AEC6           
CODE_23AEB0:        A9 78         LDA #$78                  
CODE_23AEB2:        97 2E         STA [$2E],y               
CODE_23AEB4:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AEB8:        98            TYA                       
CODE_23AEB9:        18            CLC                       
CODE_23AEBA:        69 10         ADC #$10                  
CODE_23AEBC:        A8            TAY                       
CODE_23AEBD:        A5 2F         LDA $2F                   
CODE_23AEBF:        69 00         ADC #$00                  
CODE_23AEC1:        85 2F         STA $2F                   
CODE_23AEC3:        CA            DEX                       
CODE_23AEC4:        10 EA         BPL CODE_23AEB0           
CODE_23AEC6:        6B            RTL                       

CODE_23AEC7:        A5 2E         LDA $2E                   
CODE_23AEC9:        85 00         STA $00                   
CODE_23AECB:        A5 2F         LDA $2F                   
CODE_23AECD:        85 01         STA $01                   
CODE_23AECF:        AD 06 07      LDA $0706                 
CODE_23AED2:        48            PHA                       
CODE_23AED3:        38            SEC                       
CODE_23AED4:        E9 40         SBC #$40                  
CODE_23AED6:        4A            LSR A                     
CODE_23AED7:        4A            LSR A                     
CODE_23AED8:        4A            LSR A                     
CODE_23AED9:        4A            LSR A                     
CODE_23AEDA:        AA            TAX                       
CODE_23AEDB:        68            PLA                       
CODE_23AEDC:        29 0F         AND #$0F                  
CODE_23AEDE:        85 02         STA $02                   
CODE_23AEE0:        85 03         STA $03                   
CODE_23AEE2:        AC 00 07      LDY $0700                 
CODE_23AEE5:        BD CF A5      LDA.w DATA_21A5CF,x               
CODE_23AEE8:        97 2E         STA [$2E],y               
CODE_23AEEA:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AEEE:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AEF2:        C6 03         DEC $03                   
CODE_23AEF4:        10 EF         BPL CODE_23AEE5           
CODE_23AEF6:        A5 00         LDA $00                   
CODE_23AEF8:        85 2E         STA $2E                   
CODE_23AEFA:        A5 01         LDA $01                   
CODE_23AEFC:        85 2F         STA $2F                   
CODE_23AEFE:        AD 00 07      LDA $0700                 
CODE_23AF01:        18            CLC                       
CODE_23AF02:        69 10         ADC #$10                  
CODE_23AF04:        8D 00 07      STA $0700                 
CODE_23AF07:        A8            TAY                       
CODE_23AF08:        A5 2F         LDA $2F                   
CODE_23AF0A:        69 00         ADC #$00                  
CODE_23AF0C:        85 2F         STA $2F                   
CODE_23AF0E:        85 01         STA $01                   
CODE_23AF10:        A5 02         LDA $02                   
CODE_23AF12:        85 03         STA $03                   
CODE_23AF14:        BD D1 A5      LDA.w DATA_21A5D1,x               
CODE_23AF17:        C9 C1         CMP #$C1                  
CODE_23AF19:        F0 0E         BEQ CODE_23AF29           
CODE_23AF1B:        97 2E         STA [$2E],y               
CODE_23AF1D:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AF21:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AF25:        C6 03         DEC $03                   
CODE_23AF27:        10 EB         BPL CODE_23AF14           
CODE_23AF29:        6B            RTL                       

CODE_23AF2A:        A0 00         LDY #$00                  
CODE_23AF2C:        B7 2B         LDA [$2B],y               
CODE_23AF2E:        85 02         STA $02                   
CODE_23AF30:        C2 20         REP #$20                  
CODE_23AF32:        E6 2B         INC $2B                   
CODE_23AF34:        A5 2E         LDA $2E                   
CODE_23AF36:        85 00         STA $00                   
CODE_23AF38:        E2 20         SEP #$20                  
CODE_23AF3A:        AD 06 07      LDA $0706                 
CODE_23AF3D:        48            PHA                       
CODE_23AF3E:        38            SEC                       
CODE_23AF3F:        E9 60         SBC #$60                  
CODE_23AF41:        4A            LSR A                     
CODE_23AF42:        4A            LSR A                     
CODE_23AF43:        4A            LSR A                     
CODE_23AF44:        4A            LSR A                     
CODE_23AF45:        AA            TAX                       
CODE_23AF46:        68            PLA                       
CODE_23AF47:        29 0F         AND #$0F                  
CODE_23AF49:        85 03         STA $03                   
CODE_23AF4B:        A5 02         LDA $02                   
CODE_23AF4D:        85 04         STA $04                   
CODE_23AF4F:        AC 00 07      LDY $0700                 
CODE_23AF52:        AD BF 02      LDA $02BF                 
CODE_23AF55:        C9 01         CMP #$01                  
CODE_23AF57:        F0 10         BEQ CODE_23AF69           
CODE_23AF59:        C9 05         CMP #$05                  
CODE_23AF5B:        F0 0C         BEQ CODE_23AF69           
CODE_23AF5D:        C9 06         CMP #$06                  
CODE_23AF5F:        F0 08         BEQ CODE_23AF69           
CODE_23AF61:        C9 07         CMP #$07                  
CODE_23AF63:        F0 04         BEQ CODE_23AF69           
CODE_23AF65:        C9 0D         CMP #$0D                  
CODE_23AF67:        D0 04         BNE CODE_23AF6D           
CODE_23AF69:        E0 02         CPX #$02                  
CODE_23AF6B:        F0 1A         BEQ CODE_23AF87           
CODE_23AF6D:        BD D3 A5      LDA.w DATA_21A5D3,x               
CODE_23AF70:        97 2E         STA [$2E],y               
CODE_23AF72:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AF76:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AF7A:        C6 04         DEC $04                   
CODE_23AF7C:        A5 04         LDA $04                   
CODE_23AF7E:        C9 FF         CMP #$FF                  
CODE_23AF80:        D0 EB         BNE CODE_23AF6D           
CODE_23AF82:        C6 03         DEC $03                   
CODE_23AF84:        10 2B         BPL CODE_23AFB1           
CODE_23AF86:        6B            RTL                       

CODE_23AF87:        A2 08         LDX #$08                  
CODE_23AF89:        BD D3 A5      LDA.w DATA_21A5D3,x               
CODE_23AF8C:        97 2E         STA [$2E],y               
CODE_23AF8E:        C2 30         REP #$30                  
CODE_23AF90:        98            TYA                       
CODE_23AF91:        29 FF 00      AND #$00FF                
CODE_23AF94:        09 00 20      ORA #$2000                
CODE_23AF97:        A8            TAY                       
CODE_23AF98:        E2 20         SEP #$20                  
CODE_23AF9A:        A9 01         LDA #$01                  
CODE_23AF9C:        97 2E         STA [$2E],y               
CODE_23AF9E:        E2 10         SEP #$10                  
CODE_23AFA0:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AFA4:        C6 04         DEC $04                   
CODE_23AFA6:        A5 04         LDA $04                   
CODE_23AFA8:        C9 FF         CMP #$FF                  
CODE_23AFAA:        D0 DB         BNE CODE_23AF87           
CODE_23AFAC:        C6 03         DEC $03                   
CODE_23AFAE:        10 01         BPL CODE_23AFB1           
CODE_23AFB0:        6B            RTL                       

CODE_23AFB1:        A5 00         LDA $00                   
CODE_23AFB3:        85 2E         STA $2E                   
CODE_23AFB5:        A5 01         LDA $01                   
CODE_23AFB7:        85 2F         STA $2F                   
CODE_23AFB9:        AD 00 07      LDA $0700                 
CODE_23AFBC:        18            CLC                       
CODE_23AFBD:        69 10         ADC #$10                  
CODE_23AFBF:        8D 00 07      STA $0700                 
CODE_23AFC2:        A8            TAY                       
CODE_23AFC3:        A5 2F         LDA $2F                   
CODE_23AFC5:        69 00         ADC #$00                  
CODE_23AFC7:        85 2F         STA $2F                   
CODE_23AFC9:        85 01         STA $01                   
CODE_23AFCB:        A5 02         LDA $02                   
CODE_23AFCD:        85 04         STA $04                   
CODE_23AFCF:        E0 07         CPX #$07                  
CODE_23AFD1:        D0 0F         BNE CODE_23AFE2           
CODE_23AFD3:        C2 30         REP #$30                  
CODE_23AFD5:        98            TYA                       
CODE_23AFD6:        09 00 20      ORA #$2000                
CODE_23AFD9:        A8            TAY                       
CODE_23AFDA:        E2 20         SEP #$20                  
CODE_23AFDC:        A9 00         LDA #$00                  
CODE_23AFDE:        97 2E         STA [$2E],y               
CODE_23AFE0:        E2 10         SEP #$10                  
CODE_23AFE2:        E0 08         CPX #$08                  
CODE_23AFE4:        F0 18         BEQ CODE_23AFFE           
CODE_23AFE6:        BD DC A5      LDA.w DATA_21A5DC,x               
CODE_23AFE9:        97 2E         STA [$2E],y               
CODE_23AFEB:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23AFEF:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23AFF3:        C6 04         DEC $04                   
CODE_23AFF5:        A5 04         LDA $04                   
CODE_23AFF7:        C9 FF         CMP #$FF                  
CODE_23AFF9:        D0 D4         BNE CODE_23AFCF           
CODE_23AFFB:        4C 82 AF      JMP CODE_23AF82           

CODE_23AFFE:        BD DC A5      LDA.w DATA_21A5DC,x               
CODE_23B001:        97 2E         STA [$2E],y               
CODE_23B003:        C2 30         REP #$30                  
CODE_23B005:        98            TYA                       
CODE_23B006:        29 FF 00      AND #$00FF                
CODE_23B009:        09 00 20      ORA #$2000                
CODE_23B00C:        A8            TAY                       
CODE_23B00D:        E2 20         SEP #$20                  
CODE_23B00F:        A9 01         LDA #$01                  
CODE_23B011:        97 2E         STA [$2E],y               
CODE_23B013:        E2 10         SEP #$10                  
CODE_23B015:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B019:        C6 04         DEC $04                   
CODE_23B01B:        A5 04         LDA $04                   
CODE_23B01D:        C9 FF         CMP #$FF                  
CODE_23B01F:        D0 AE         BNE CODE_23AFCF           
CODE_23B021:        4C 82 AF      JMP CODE_23AF82           

CODE_23B024:        A2 01         LDX #$01                  
CODE_23B026:        F0 02         BEQ CODE_23B02A           
CODE_23B028:        A2 00         LDX #$00                  
CODE_23B02A:        AD 06 07      LDA $0706                 
CODE_23B02D:        29 0F         AND #$0F                  
CODE_23B02F:        85 02         STA $02                   
CODE_23B031:        AC 00 07      LDY $0700                 
CODE_23B034:        BD E5 A5      LDA.w DATA_21A5E5,x               
CODE_23B037:        97 2E         STA [$2E],y               
CODE_23B039:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B03D:        C6 02         DEC $02                   
CODE_23B03F:        10 F3         BPL CODE_23B034           
CODE_23B041:        6B            RTL                       

CODE_23B042:        A2 02         LDX #$02                  
CODE_23B044:        AD 06 07      LDA $0706                 
CODE_23B047:        4C 57 B0      JMP CODE_23B057           

CODE_23B04A:        AD 06 07      LDA $0706                 
CODE_23B04D:        48            PHA                       
CODE_23B04E:        38            SEC                       
CODE_23B04F:        E9 50         SBC #$50                  
CODE_23B051:        4A            LSR A                     
CODE_23B052:        4A            LSR A                     
CODE_23B053:        4A            LSR A                     
CODE_23B054:        4A            LSR A                     
CODE_23B055:        AA            TAX                       
CODE_23B056:        68            PLA                       
CODE_23B057:        29 0F         AND #$0F                  
CODE_23B059:        85 02         STA $02                   
CODE_23B05B:        AC 00 07      LDY $0700                 
CODE_23B05E:        BD E7 A5      LDA.w DATA_21A5E7,x               
CODE_23B061:        97 2E         STA [$2E],y               
CODE_23B063:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B067:        C6 02         DEC $02                   
CODE_23B069:        10 F3         BPL CODE_23B05E           
CODE_23B06B:        6B            RTL                       

CODE_23B06C:        AC 00 07      LDY $0700                 
CODE_23B06F:        A9 06         LDA #$06                  
CODE_23B071:        97 2E         STA [$2E],y               
CODE_23B073:        6B            RTL                       

CODE_23B074:        AD 06 07      LDA $0706                 
CODE_23B077:        29 0F         AND #$0F                  
CODE_23B079:        AA            TAX                       
CODE_23B07A:        AC 00 07      LDY $0700                 
CODE_23B07D:        A9 5B         LDA #$5B                  
CODE_23B07F:        97 2E         STA [$2E],y               
CODE_23B081:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B085:        CA            DEX                       
CODE_23B086:        10 F5         BPL CODE_23B07D           
CODE_23B088:        6B            RTL                       

CODE_23B089:        86 0B         STX $0B                   
CODE_23B08B:        C2 20         REP #$20                  
CODE_23B08D:        A5 2E         LDA $2E                   
CODE_23B08F:        85 02         STA $02                   
CODE_23B091:        E2 20         SEP #$20                  
CODE_23B093:        AD 06 07      LDA $0706                 
CODE_23B096:        29 0F         AND #$0F                  
CODE_23B098:        85 00         STA $00                   
CODE_23B09A:        A2 00         LDX #$00                  
CODE_23B09C:        8A            TXA                       
CODE_23B09D:        A6 0B         LDX $0B                   
CODE_23B09F:        18            CLC                       
CODE_23B0A0:        7D 44 A6      ADC.w DATA_21A644,x               
CODE_23B0A3:        85 0C         STA $0C                   
CODE_23B0A5:        AA            TAX                       
CODE_23B0A6:        AD 06 07      LDA $0706                 
CODE_23B0A9:        29 C0         AND #$C0                  
CODE_23B0AB:        85 01         STA $01                   
CODE_23B0AD:        AC 00 07      LDY $0700                 
CODE_23B0B0:        E0 06         CPX #$06                  
CODE_23B0B2:        D0 14         BNE CODE_23B0C8           
CODE_23B0B4:        AD 50 03      LDA $0350                 
CODE_23B0B7:        C9 0C         CMP #$0C                  
CODE_23B0B9:        D0 0D         BNE CODE_23B0C8           
CODE_23B0BB:        B7 2E         LDA [$2E],y               
CODE_23B0BD:        C9 80         CMP #$80                  
CODE_23B0BF:        F0 07         BEQ CODE_23B0C8           
CODE_23B0C1:        20 A5 B1      JSR CODE_23B1A5           
CODE_23B0C4:        A9 0A         LDA #$0A                  
CODE_23B0C6:        80 03         BRA CODE_23B0CB           

CODE_23B0C8:        BD EA A5      LDA.w DATA_21A5EA,x               
CODE_23B0CB:        97 2E         STA [$2E],y               
CODE_23B0CD:        20 6A B3      JSR CODE_23B36A           
CODE_23B0D0:        B7 2E         LDA [$2E],y               
CODE_23B0D2:        C9 53         CMP #$53                  
CODE_23B0D4:        F0 25         BEQ CODE_23B0FB           
CODE_23B0D6:        C9 55         CMP #$55                  
CODE_23B0D8:        F0 21         BEQ CODE_23B0FB           
CODE_23B0DA:        A6 0C         LDX $0C                   
CODE_23B0DC:        E0 06         CPX #$06                  
CODE_23B0DE:        D0 14         BNE CODE_23B0F4           
CODE_23B0E0:        AD 50 03      LDA $0350                 
CODE_23B0E3:        C9 0C         CMP #$0C                  
CODE_23B0E5:        D0 0D         BNE CODE_23B0F4           
CODE_23B0E7:        B7 2E         LDA [$2E],y               
CODE_23B0E9:        C9 80         CMP #$80                  
CODE_23B0EB:        F0 07         BEQ CODE_23B0F4           
CODE_23B0ED:        20 A5 B1      JSR CODE_23B1A5           
CODE_23B0F0:        A9 0B         LDA #$0B                  
CODE_23B0F2:        80 03         BRA CODE_23B0F7           

CODE_23B0F4:        BD F6 A5      LDA.w DATA_21A5F6,x               
CODE_23B0F7:        97 2E         STA [$2E],y               
CODE_23B0F9:        80 D2         BRA CODE_23B0CD           

CODE_23B0FB:        98            TYA                       
CODE_23B0FC:        38            SEC                       
CODE_23B0FD:        E9 10         SBC #$10                  
CODE_23B0FF:        A8            TAY                       
CODE_23B100:        A5 2F         LDA $2F                   
CODE_23B102:        E9 00         SBC #$00                  
CODE_23B104:        85 2F         STA $2F                   
CODE_23B106:        A6 0C         LDX $0C                   
CODE_23B108:        E0 06         CPX #$06                  
CODE_23B10A:        D0 11         BNE CODE_23B11D           
CODE_23B10C:        AD 50 03      LDA $0350                 
CODE_23B10F:        C9 0C         CMP #$0C                  
CODE_23B111:        D0 0A         BNE CODE_23B11D           
CODE_23B113:        B7 2E         LDA [$2E],y               
CODE_23B115:        C9 0B         CMP #$0B                  
CODE_23B117:        D0 04         BNE CODE_23B11D           
CODE_23B119:        A9 0C         LDA #$0C                  
CODE_23B11B:        80 03         BRA CODE_23B120           

CODE_23B11D:        BD 02 A6      LDA.w DATA_21A602,x               
CODE_23B120:        97 2E         STA [$2E],y               
CODE_23B122:        C2 20         REP #$20                  
CODE_23B124:        A5 02         LDA $02                   
CODE_23B126:        85 2E         STA $2E                   
CODE_23B128:        E2 20         SEP #$20                  
CODE_23B12A:        AC 00 07      LDY $0700                 
CODE_23B12D:        C8            INY                       
CODE_23B12E:        98            TYA                       
CODE_23B12F:        29 0F         AND #$0F                  
CODE_23B131:        D0 20         BNE CODE_23B153           
CODE_23B133:        AD 00 07      LDA $0700                 
CODE_23B136:        29 F0         AND #$F0                  
CODE_23B138:        A8            TAY                       
CODE_23B139:        C2 20         REP #$20                  
CODE_23B13B:        A5 2E         LDA $2E                   
CODE_23B13D:        18            CLC                       
CODE_23B13E:        69 B0 01      ADC #$01B0                
CODE_23B141:        85 2E         STA $2E                   
CODE_23B143:        85 02         STA $02                   
CODE_23B145:        E2 20         SEP #$20                  
CODE_23B147:        A5 03         LDA $03                   
CODE_23B149:        85 04         STA $04                   
CODE_23B14B:        A5 0E         LDA $0E                   
CODE_23B14D:        29 10         AND #$10                  
CODE_23B14F:        D0 02         BNE CODE_23B153           
CODE_23B151:        E6 04         INC $04                   
CODE_23B153:        8C 00 07      STY $0700                 
CODE_23B156:        C6 00         DEC $00                   
CODE_23B158:        A2 01         LDX #$01                  
CODE_23B15A:        A5 00         LDA $00                   
CODE_23B15C:        C9 01         CMP #$01                  
CODE_23B15E:        10 05         BPL CODE_23B165           
CODE_23B160:        E8            INX                       
CODE_23B161:        C9 00         CMP #$00                  
CODE_23B163:        D0 05         BNE CODE_23B16A           
CODE_23B165:        86 0C         STX $0C                   
CODE_23B167:        4C 9C B0      JMP CODE_23B09C           

CODE_23B16A:        B7 2E         LDA [$2E],y               
CODE_23B16C:        C9 80         CMP #$80                  
CODE_23B16E:        F0 12         BEQ CODE_23B182           
CODE_23B170:        C9 90         CMP #$90                  
CODE_23B172:        90 08         BCC CODE_23B17C           
CODE_23B174:        C9 9F         CMP #$9F                  
CODE_23B176:        B0 04         BCS CODE_23B17C                   
CODE_23B178:        A9 9D         LDA #$9D                  
CODE_23B17A:        80 04         BRA CODE_23B180           

CODE_23B17C:        29 C0         AND #$C0                  
CODE_23B17E:        09 0B         ORA #$0B                  
CODE_23B180:        97 2E         STA [$2E],y               
CODE_23B182:        20 6A B3      JSR CODE_23B36A           
CODE_23B185:        B7 2E         LDA [$2E],y               
CODE_23B187:        C9 53         CMP #$53                  
CODE_23B189:        F0 04         BEQ CODE_23B18F           
CODE_23B18B:        C9 57         CMP #$57                  
CODE_23B18D:        D0 01         BNE CODE_23B190           
CODE_23B18F:        6B            RTL                       

CODE_23B190:        A2 18         LDX #$18                  
CODE_23B192:        B7 2E         LDA [$2E],y               
CODE_23B194:        DD 0E A6      CMP.w DATA_21A60E,x               
CODE_23B197:        F0 05         BEQ CODE_23B19E           
CODE_23B199:        CA            DEX                       
CODE_23B19A:        10 F8         BPL CODE_23B194           
CODE_23B19C:        80 E4         BRA CODE_23B182           

CODE_23B19E:        BD 27 A6      LDA.w DATA_21A627,x               
CODE_23B1A1:        97 2E         STA [$2E],y               
CODE_23B1A3:        80 DD         BRA CODE_23B182           

CODE_23B1A5:        DA            PHX                       
CODE_23B1A6:        5A            PHY                       
CODE_23B1A7:        C2 30         REP #$30                  
CODE_23B1A9:        98            TYA                       
CODE_23B1AA:        29 FF 00      AND #$00FF                
CODE_23B1AD:        09 00 20      ORA #$2000                
CODE_23B1B0:        A8            TAY                       
CODE_23B1B1:        E2 20         SEP #$20                  
CODE_23B1B3:        A9 01         LDA #$01                  
CODE_23B1B5:        97 2E         STA [$2E],y               
CODE_23B1B7:        E2 10         SEP #$10                  
CODE_23B1B9:        7A            PLY                       
CODE_23B1BA:        FA            PLX                       
CODE_23B1BB:        60            RTS                       

CODE_23B1BC:        A5 2E         LDA $2E                   
CODE_23B1BE:        85 00         STA $00                   
CODE_23B1C0:        A5 2F         LDA $2F                   
CODE_23B1C2:        85 01         STA $01                   
CODE_23B1C4:        AD 06 07      LDA $0706                 
CODE_23B1C7:        38            SEC                       
CODE_23B1C8:        E9 50         SBC #$50                  
CODE_23B1CA:        48            PHA                       
CODE_23B1CB:        29 F0         AND #$F0                  
CODE_23B1CD:        4A            LSR A                     
CODE_23B1CE:        4A            LSR A                     
CODE_23B1CF:        4A            LSR A                     
CODE_23B1D0:        4A            LSR A                     
CODE_23B1D1:        85 02         STA $02                   
CODE_23B1D3:        68            PLA                       
CODE_23B1D4:        29 0F         AND #$0F                  
CODE_23B1D6:        85 03         STA $03                   
CODE_23B1D8:        85 05         STA $05                   
CODE_23B1DA:        64 04         STZ $04                   
CODE_23B1DC:        A6 02         LDX $02                   
CODE_23B1DE:        A5 04         LDA $04                   
CODE_23B1E0:        18            CLC                       
CODE_23B1E1:        7D 44 A6      ADC.w DATA_21A644,x               
CODE_23B1E4:        AA            TAX                       
CODE_23B1E5:        AC 00 07      LDY $0700                 
CODE_23B1E8:        BD 48 A6      LDA.w DATA_21A648,x               
CODE_23B1EB:        97 2E         STA [$2E],y               
CODE_23B1ED:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B1F1:        C6 05         DEC $05                   
CODE_23B1F3:        BD 54 A6      LDA.w DATA_21A654,x               
CODE_23B1F6:        97 2E         STA [$2E],y               
CODE_23B1F8:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B1FC:        C6 05         DEC $05                   
CODE_23B1FE:        A5 05         LDA $05                   
CODE_23B200:        C9 01         CMP #$01                  
CODE_23B202:        D0 EF         BNE CODE_23B1F3           
CODE_23B204:        BD 60 A6      LDA.w DATA_21A660,x               
CODE_23B207:        97 2E         STA [$2E],y               
CODE_23B209:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B20D:        A5 00         LDA $00                   
CODE_23B20F:        85 2E         STA $2E                   
CODE_23B211:        A5 01         LDA $01                   
CODE_23B213:        85 2F         STA $2F                   
CODE_23B215:        AD 00 07      LDA $0700                 
CODE_23B218:        18            CLC                       
CODE_23B219:        69 10         ADC #$10                  
CODE_23B21B:        8D 00 07      STA $0700                 
CODE_23B21E:        A5 2F         LDA $2F                   
CODE_23B220:        69 00         ADC #$00                  
CODE_23B222:        85 2F         STA $2F                   
CODE_23B224:        85 01         STA $01                   
CODE_23B226:        A5 03         LDA $03                   
CODE_23B228:        85 05         STA $05                   
CODE_23B22A:        E6 04         INC $04                   
CODE_23B22C:        A5 04         LDA $04                   
CODE_23B22E:        C9 02         CMP #$02                  
CODE_23B230:        D0 AA         BNE CODE_23B1DC           
CODE_23B232:        6B            RTL                       

CODE_23B233:        A9 3B         LDA #$3B                  
CODE_23B235:        8D ED 05      STA $05ED                 
CODE_23B238:        22 03 E1 22   JSL CODE_22E103           
CODE_23B23C:        6B            RTL                       

CODE_23B23D:        AC 00 07      LDY $0700                 
CODE_23B240:        B7 2E         LDA [$2E],y               
CODE_23B242:        C9 80         CMP #$80                  
CODE_23B244:        F0 04         BEQ CODE_23B24A           
CODE_23B246:        C9 80         CMP #$80                  
CODE_23B248:        D0 09         BNE CODE_23B253           
CODE_23B24A:        A9 85         LDA #$85                  
CODE_23B24C:        97 2E         STA [$2E],y               
CODE_23B24E:        20 6A B3      JSR CODE_23B36A           
CODE_23B251:        80 ED         BRA CODE_23B240           

CODE_23B253:        6B            RTL                       

CODE_23B254:        AD 06 07      LDA $0706                 
CODE_23B257:        29 0F         AND #$0F                  
CODE_23B259:        AA            TAX                       
CODE_23B25A:        AC 00 07      LDY $0700                 
CODE_23B25D:        A9 86         LDA #$86                  
CODE_23B25F:        97 2E         STA [$2E],y               
CODE_23B261:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B265:        CA            DEX                       
CODE_23B266:        10 F5         BPL CODE_23B25D           
CODE_23B268:        6B            RTL                       

CODE_23B269:        A2 00         LDX #$00                  
CODE_23B26B:        F0 02         BEQ CODE_23B26F           
CODE_23B26D:        A2 02         LDX #$02                  
CODE_23B26F:        A5 2E         LDA $2E                   
CODE_23B271:        85 00         STA $00                   
CODE_23B273:        A5 2F         LDA $2F                   
CODE_23B275:        85 01         STA $01                   
CODE_23B277:        AD 06 07      LDA $0706                 
CODE_23B27A:        29 0F         AND #$0F                  
CODE_23B27C:        85 02         STA $02                   
CODE_23B27E:        AC 00 07      LDY $0700                 
CODE_23B281:        A5 02         LDA $02                   
CODE_23B283:        85 03         STA $03                   
CODE_23B285:        BD 7B A6      LDA.w DATA_21A67B,x               
CODE_23B288:        97 2E         STA [$2E],y               
CODE_23B28A:        80 05         BRA CODE_23B291           

CODE_23B28C:        BD 7F A6      LDA.w DATA_21A67F,x               
CODE_23B28F:        97 2E         STA [$2E],y               
CODE_23B291:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B295:        C6 03         DEC $03                   
CODE_23B297:        D0 F3         BNE CODE_23B28C           
CODE_23B299:        BD 83 A6      LDA.w DATA_21A683,x               
CODE_23B29C:        97 2E         STA [$2E],y               
CODE_23B29E:        A5 00         LDA $00                   
CODE_23B2A0:        85 2E         STA $2E                   
CODE_23B2A2:        A5 01         LDA $01                   
CODE_23B2A4:        85 2F         STA $2F                   
CODE_23B2A6:        AD 00 07      LDA $0700                 
CODE_23B2A9:        18            CLC                       
CODE_23B2AA:        69 10         ADC #$10                  
CODE_23B2AC:        8D 00 07      STA $0700                 
CODE_23B2AF:        A8            TAY                       
CODE_23B2B0:        A5 2F         LDA $2F                   
CODE_23B2B2:        69 00         ADC #$00                  
CODE_23B2B4:        85 2F         STA $2F                   
CODE_23B2B6:        85 01         STA $01                   
CODE_23B2B8:        E8            INX                       
CODE_23B2B9:        C0 B0         CPY #$B0                  
CODE_23B2BB:        90 C4         BCC CODE_23B281           
CODE_23B2BD:        6B            RTL                       

CODE_23B2BE:        A0 00         LDY #$00                  
CODE_23B2C0:        B7 2B         LDA [$2B],y               
CODE_23B2C2:        85 02         STA $02                   
CODE_23B2C4:        A5 2B         LDA $2B                   
CODE_23B2C6:        18            CLC                       
CODE_23B2C7:        69 01         ADC #$01                  
CODE_23B2C9:        85 2B         STA $2B                   
CODE_23B2CB:        A5 2C         LDA $2C                   
CODE_23B2CD:        69 00         ADC #$00                  
CODE_23B2CF:        85 2C         STA $2C                   
CODE_23B2D1:        A5 2E         LDA $2E                   
CODE_23B2D3:        85 00         STA $00                   
CODE_23B2D5:        A5 2F         LDA $2F                   
CODE_23B2D7:        85 01         STA $01                   
CODE_23B2D9:        AD 06 07      LDA $0706                 
CODE_23B2DC:        48            PHA                       
CODE_23B2DD:        38            SEC                       
CODE_23B2DE:        E9 C0         SBC #$C0                  
CODE_23B2E0:        4A            LSR A                     
CODE_23B2E1:        4A            LSR A                     
CODE_23B2E2:        4A            LSR A                     
CODE_23B2E3:        4A            LSR A                     
CODE_23B2E4:        A8            TAY                       
CODE_23B2E5:        BE 93 A6      LDX.w DATA_21A693,y               
CODE_23B2E8:        68            PLA                       
CODE_23B2E9:        29 0F         AND #$0F                  
CODE_23B2EB:        85 03         STA $03                   
CODE_23B2ED:        A5 02         LDA $02                   
CODE_23B2EF:        85 04         STA $04                   
CODE_23B2F1:        AC 00 07      LDY $0700                 
CODE_23B2F4:        BD 87 A6      LDA.w DATA_21A687,x               
CODE_23B2F7:        97 2E         STA [$2E],y               
CODE_23B2F9:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B2FD:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B301:        C6 04         DEC $04                   
CODE_23B303:        F0 11         BEQ CODE_23B316           
CODE_23B305:        BD 88 A6      LDA.w DATA_21A687+1,x               
CODE_23B308:        97 2E         STA [$2E],y               
CODE_23B30A:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B30E:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B312:        C6 04         DEC $04                   
CODE_23B314:        D0 EF         BNE CODE_23B305           
CODE_23B316:        BD 89 A6      LDA.w DATA_21A687+2,x               
CODE_23B319:        97 2E         STA [$2E],y               
CODE_23B31B:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B31F:        A5 00         LDA $00                   
CODE_23B321:        85 2E         STA $2E                   
CODE_23B323:        A5 01         LDA $01                   
CODE_23B325:        85 2F         STA $2F                   
CODE_23B327:        AD 00 07      LDA $0700                 
CODE_23B32A:        18            CLC                       
CODE_23B32B:        69 10         ADC #$10                  
CODE_23B32D:        8D 00 07      STA $0700                 
CODE_23B330:        A8            TAY                       
CODE_23B331:        A5 2F         LDA $2F                   
CODE_23B333:        69 00         ADC #$00                  
CODE_23B335:        85 2F         STA $2F                   
CODE_23B337:        85 01         STA $01                   
CODE_23B339:        C6 03         DEC $03                   
CODE_23B33B:        30 2B         BMI CODE_23B368           
CODE_23B33D:        A5 02         LDA $02                   
CODE_23B33F:        85 04         STA $04                   
CODE_23B341:        BD 8D A6      LDA.w DATA_21A68D,x               
CODE_23B344:        97 2E         STA [$2E],y               
CODE_23B346:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B34A:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B34E:        C6 04         DEC $04                   
CODE_23B350:        F0 11         BEQ CODE_23B363           
CODE_23B352:        BD 8E A6      LDA.w DATA_21A68D+1,x               
CODE_23B355:        97 2E         STA [$2E],y               
CODE_23B357:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B35B:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B35F:        C6 04         DEC $04                   
CODE_23B361:        D0 EF         BNE CODE_23B352           
CODE_23B363:        BD 8F A6      LDA.w DATA_21A68D+2,x               
CODE_23B366:        97 2E         STA [$2E],y               
CODE_23B368:        6B            RTL                       

CODE_23B369:        6B            RTL                       

CODE_23B36A:        98            TYA                       
CODE_23B36B:        18            CLC                       
CODE_23B36C:        69 10         ADC #$10                  
CODE_23B36E:        A8            TAY                       
CODE_23B36F:        A5 2F         LDA $2F                   
CODE_23B371:        69 00         ADC #$00                  
CODE_23B373:        85 2F         STA $2F                   
CODE_23B375:        60            RTS                       

CODE_23B376:        A5 05         LDA $05                   
CODE_23B378:        85 2F         STA $2F                   
CODE_23B37A:        AC 00 07      LDY $0700                 
CODE_23B37D:        C8            INY                       
CODE_23B37E:        98            TYA                       
CODE_23B37F:        29 0F         AND #$0F                  
CODE_23B381:        D0 31         BNE CODE_23B3B4           
CODE_23B383:        A0 00         LDY #$00                  
CODE_23B385:        A5 0E         LDA $0E                   
CODE_23B387:        29 10         AND #$10                  
CODE_23B389:        F0 01         BEQ CODE_23B38C           
CODE_23B38B:        C8            INY                       
CODE_23B38C:        84 09         STY $09                   
CODE_23B38E:        A5 2E         LDA $2E                   
CODE_23B390:        18            CLC                       
CODE_23B391:        69 B0         ADC #$B0                  
CODE_23B393:        85 2E         STA $2E                   
CODE_23B395:        A5 2F         LDA $2F                   
CODE_23B397:        65 09         ADC $09                   
CODE_23B399:        85 2F         STA $2F                   
CODE_23B39B:        85 05         STA $05                   
CODE_23B39D:        A5 0F         LDA $0F                   
CODE_23B39F:        29 F0         AND #$F0                  
CODE_23B3A1:        4A            LSR A                     
CODE_23B3A2:        4A            LSR A                     
CODE_23B3A3:        4A            LSR A                     
CODE_23B3A4:        A8            TAY                       
CODE_23B3A5:        C8            INY                       
CODE_23B3A6:        C8            INY                       
CODE_23B3A7:        B9 01 82      LDA.w DATA_218200+1,y               
CODE_23B3AA:        85 04         STA $04                   
CODE_23B3AC:        E6 04         INC $04                   
CODE_23B3AE:        AD 00 07      LDA $0700                 
CODE_23B3B1:        29 F0         AND #$F0                  
CODE_23B3B3:        A8            TAY                       
CODE_23B3B4:        8C 00 07      STY $0700                 
CODE_23B3B7:        60            RTS                       

CODE_23B3B8:        AE 06 07      LDX $0706                 
CODE_23B3BB:        AC 00 07      LDY $0700                 
CODE_23B3BE:        BD 9B A6      LDA.w DATA_21A69B,x               
CODE_23B3C1:        97 2E         STA [$2E],y               
CODE_23B3C3:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B3C7:        DA            PHX                       
CODE_23B3C8:        A2 00         LDX #$00                  
CODE_23B3CA:        C9 33         CMP #$33                  
CODE_23B3CC:        F0 17         BEQ CODE_23B3E5           
CODE_23B3CE:        C9 35         CMP #$35                  
CODE_23B3D0:        F0 12         BEQ CODE_23B3E4           
CODE_23B3D2:        C9 A7         CMP #$A7                  
CODE_23B3D4:        F0 0D         BEQ CODE_23B3E3           
CODE_23B3D6:        C9 AC         CMP #$AC                  
CODE_23B3D8:        F0 08         BEQ CODE_23B3E2           
CODE_23B3DA:        C9 A9         CMP #$A9                  
CODE_23B3DC:        F0 03         BEQ CODE_23B3E1           
CODE_23B3DE:        4C 8E B4      JMP CODE_23B48E           

CODE_23B3E1:        E8            INX                       
CODE_23B3E2:        E8            INX                       
CODE_23B3E3:        E8            INX                       
CODE_23B3E4:        E8            INX                       
CODE_23B3E5:        A5 30         LDA $30                   
CODE_23B3E7:        85 DA         STA $DA                   
CODE_23B3E9:        85 DD         STA $DD                   
CODE_23B3EB:        C2 20         REP #$20                  
CODE_23B3ED:        A5 2E         LDA $2E                   
CODE_23B3EF:        38            SEC                       
CODE_23B3F0:        E9 0F 00      SBC #$000F                
CODE_23B3F3:        85 D8         STA $D8                   
CODE_23B3F5:        18            CLC                       
CODE_23B3F6:        69 20 00      ADC #$0020                
CODE_23B3F9:        85 DB         STA $DB                   
CODE_23B3FB:        E2 20         SEP #$20                  
CODE_23B3FD:        5A            PHY                       
CODE_23B3FE:        C8            INY                       
CODE_23B3FF:        98            TYA                       
CODE_23B400:        29 0F         AND #$0F                  
CODE_23B402:        D0 13         BNE CODE_23B417           
CODE_23B404:        C2 21         REP #$21                  
CODE_23B406:        A5 D8         LDA $D8                   
CODE_23B408:        69 A0 01      ADC #$01A0                
CODE_23B40B:        85 D8         STA $D8                   
CODE_23B40D:        A5 DB         LDA $DB                   
CODE_23B40F:        18            CLC                       
CODE_23B410:        69 A0 01      ADC #$01A0                
CODE_23B413:        85 DB         STA $DB                   
CODE_23B415:        E2 20         SEP #$20                  
CODE_23B417:        7A            PLY                       
CODE_23B418:        B7 D8         LDA [$D8],y               
CODE_23B41A:        C9 34         CMP #$34                  
CODE_23B41C:        F0 21         BEQ CODE_23B43F           
CODE_23B41E:        B7 DB         LDA [$DB],y               
CODE_23B420:        C9 9A         CMP #$9A                  
CODE_23B422:        F0 0F         BEQ CODE_23B433           
CODE_23B424:        C9 26         CMP #$26                  
CODE_23B426:        F0 0B         BEQ CODE_23B433           
CODE_23B428:        88            DEY                       
CODE_23B429:        88            DEY                       
CODE_23B42A:        B7 D8         LDA [$D8],y               
CODE_23B42C:        C9 A0         CMP #$A0                  
CODE_23B42E:        D0 42         BNE CODE_23B472           
CODE_23B430:        C8            INY                       
CODE_23B431:        80 17         BRA CODE_23B44A           

CODE_23B433:        C2 20         REP #$20                  
CODE_23B435:        A5 DB         LDA $DB                   
CODE_23B437:        38            SEC                       
CODE_23B438:        E9 11 00      SBC #$0011                
CODE_23B43B:        85 D8         STA $D8                   
CODE_23B43D:        E2 20         SEP #$20                  
CODE_23B43F:        C2 21         REP #$21                  
CODE_23B441:        A5 D8         LDA $D8                   
CODE_23B443:        69 10 00      ADC #$0010                
CODE_23B446:        85 D8         STA $D8                   
CODE_23B448:        E2 20         SEP #$20                  
CODE_23B44A:        5A            PHY                       
CODE_23B44B:        C8            INY                       
CODE_23B44C:        98            TYA                       
CODE_23B44D:        29 0F         AND #$0F                  
CODE_23B44F:        D0 0C         BNE CODE_23B45D           
CODE_23B451:        C2 20         REP #$20                  
CODE_23B453:        A5 D8         LDA $D8                   
CODE_23B455:        38            SEC                       
CODE_23B456:        E9 A0 01      SBC #$01A0                
CODE_23B459:        85 D8         STA $D8                   
CODE_23B45B:        E2 20         SEP #$20                  
CODE_23B45D:        7A            PLY                       
CODE_23B45E:        BF 9E B4 23   LDA.l DATA_23B49E,x             
CODE_23B462:        97 D8         STA [$D8],y               
CODE_23B464:        A5 D9         LDA $D9                   
CODE_23B466:        18            CLC                       
CODE_23B467:        69 20         ADC #$20                  
CODE_23B469:        85 D9         STA $D9                   
CODE_23B46B:        A9 01         LDA #$01                  
CODE_23B46D:        97 D8         STA [$D8],y               
CODE_23B46F:        FA            PLX                       
CODE_23B470:        80 2B         BRA CODE_23B49D           

CODE_23B472:        C2 20         REP #$20                  
CODE_23B474:        A5 D8         LDA $D8                   
CODE_23B476:        18            CLC                       
CODE_23B477:        69 20 00      ADC #$0020                
CODE_23B47A:        85 D8         STA $D8                   
CODE_23B47C:        E2 20         SEP #$20                  
CODE_23B47E:        B7 D8         LDA [$D8],y               
CODE_23B480:        C9 9A         CMP #$9A                  
CODE_23B482:        D0 0A         BNE CODE_23B48E           
CODE_23B484:        AD 50 03      LDA $0350                 
CODE_23B487:        C9 1D         CMP #$1D                  
CODE_23B489:        F0 03         BEQ CODE_23B48E           
CODE_23B48B:        C8            INY                       
CODE_23B48C:        80 BC         BRA CODE_23B44A           
CODE_23B48E:        FA            PLX                       
CODE_23B48F:        B7 2E         LDA [$2E],y               
CODE_23B491:        C9 0D         CMP #$0D                  
CODE_23B493:        F0 08         BEQ CODE_23B49D           
CODE_23B495:        C9 04         CMP #$04                  
CODE_23B497:        F0 04         BEQ CODE_23B49D           
CODE_23B499:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B49D:        6B            RTL                       

DATA_23B49E:        db $09,$0A,$02,$05,$04

CODE_23B4A3:        A5 2E         LDA $2E
CODE_23B4A5:        85 00         STA $00
CODE_23B4A7:        A5 2F         LDA $2F                   
CODE_23B4A9:        85 01         STA $01                   
CODE_23B4AB:        64 02         STZ $02                   
CODE_23B4AD:        AD 06 07      LDA $0706                 
CODE_23B4B0:        48            PHA                       
CODE_23B4B1:        29 0F         AND #$0F                  
CODE_23B4B3:        85 03         STA $03                   
CODE_23B4B5:        68            PLA                       
CODE_23B4B6:        38            SEC                       
CODE_23B4B7:        E9 10         SBC #$10                  
CODE_23B4B9:        29 C0         AND #$C0                  
CODE_23B4BB:        18            CLC                       
CODE_23B4BC:        2A            ROL A                     
CODE_23B4BD:        2A            ROL A                     
CODE_23B4BE:        2A            ROL A                     
CODE_23B4BF:        AA            TAX                       
CODE_23B4C0:        AC 00 07      LDY $0700                 
CODE_23B4C3:        A5 02         LDA $02                   
CODE_23B4C5:        85 04         STA $04                   
CODE_23B4C7:        F0 1C         BEQ CODE_23B4E5           
CODE_23B4C9:        8A            TXA                       
CODE_23B4CA:        D0 06         BNE CODE_23B4D2           
CODE_23B4CC:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B4D0:        80 06         BRA CODE_23B4D8           

CODE_23B4D2:        B7 2E         LDA [$2E],y               
CODE_23B4D4:        C9 04         CMP #$04                  
CODE_23B4D6:        F0 05         BEQ CODE_23B4DD           
CODE_23B4D8:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B4DB:        97 2E         STA [$2E],y               
CODE_23B4DD:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B4E1:        C6 04         DEC $04                   
CODE_23B4E3:        D0 E4         BNE CODE_23B4C9           
CODE_23B4E5:        BD AA A6      LDA.w DATA_21A6AA,x               
CODE_23B4E8:        97 2E         STA [$2E],y               
CODE_23B4EA:        22 DC 89 2A   JSL CODE_2A89DC           
CODE_23B4EE:        A5 00         LDA $00                   
CODE_23B4F0:        85 2E         STA $2E                   
CODE_23B4F2:        A5 01         LDA $01                   
CODE_23B4F4:        85 2F         STA $2F                   
CODE_23B4F6:        AD 00 07      LDA $0700                 
CODE_23B4F9:        18            CLC                       
CODE_23B4FA:        69 10         ADC #$10                  
CODE_23B4FC:        8D 00 07      STA $0700                 
CODE_23B4FF:        A5 2F         LDA $2F                   
CODE_23B501:        69 00         ADC #$00                  
CODE_23B503:        85 2F         STA $2F                   
CODE_23B505:        85 01         STA $01                   
CODE_23B507:        E6 02         INC $02                   
CODE_23B509:        C6 03         DEC $03                   
CODE_23B50B:        10 B3         BPL CODE_23B4C0           
CODE_23B50D:        6B            RTL                       

CODE_23B50E:        A5 2E         LDA $2E                   
CODE_23B510:        85 00         STA $00                   
CODE_23B512:        A5 2F         LDA $2F                   
CODE_23B514:        85 01         STA $01                   
CODE_23B516:        64 02         STZ $02                   
CODE_23B518:        AD 06 07      LDA $0706                 
CODE_23B51B:        48            PHA                       
CODE_23B51C:        29 0F         AND #$0F                  
CODE_23B51E:        85 03         STA $03                   
CODE_23B520:        68            PLA                       
CODE_23B521:        38            SEC                       
CODE_23B522:        E9 10         SBC #$10                  
CODE_23B524:        29 C0         AND #$C0                  
CODE_23B526:        18            CLC                       
CODE_23B527:        2A            ROL A                     
CODE_23B528:        2A            ROL A                     
CODE_23B529:        2A            ROL A                     
CODE_23B52A:        AA            TAX                       
CODE_23B52B:        AC 00 07      LDY $0700                 
CODE_23B52E:        A5 02         LDA $02                   
CODE_23B530:        85 04         STA $04                   
CODE_23B532:        BD AD A6      LDA.w DATA_21A6AD,x               
CODE_23B535:        97 2E         STA [$2E],y               
CODE_23B537:        22 E2 8A 2A   JSL CODE_2A8AE2           
CODE_23B53B:        80 22         BRA CODE_23B55F           

CODE_23B53D:        C2 21         REP #$21                  
CODE_23B53F:        A5 2E         LDA $2E                   
CODE_23B541:        69 00 20      ADC #$2000                
CODE_23B544:        85 D8         STA $D8                   
CODE_23B546:        E2 20         SEP #$20                  
CODE_23B548:        A5 30         LDA $30                   
CODE_23B54A:        85 DA         STA $DA                   
CODE_23B54C:        B7 D8         LDA [$D8],y               
CODE_23B54E:        F0 0A         BEQ CODE_23B55A           
CODE_23B550:        B7 2E         LDA [$2E],y               
CODE_23B552:        C9 02         CMP #$02                  
CODE_23B554:        F0 09         BEQ CODE_23B55F           
CODE_23B556:        C9 09         CMP #$09                  
CODE_23B558:        F0 05         BEQ CODE_23B55F           
CODE_23B55A:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B55D:        97 2E         STA [$2E],y               
CODE_23B55F:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B563:        C6 04         DEC $04                   
CODE_23B565:        10 D6         BPL CODE_23B53D           
CODE_23B567:        E6 02         INC $02                   
CODE_23B569:        A5 00         LDA $00                   
CODE_23B56B:        85 2E         STA $2E                   
CODE_23B56D:        A5 01         LDA $01                   
CODE_23B56F:        85 2F         STA $2F                   
CODE_23B571:        AD 00 07      LDA $0700                 
CODE_23B574:        18            CLC                       
CODE_23B575:        69 0F         ADC #$0F                  
CODE_23B577:        A8            TAY                       
CODE_23B578:        A5 2F         LDA $2F                   
CODE_23B57A:        69 00         ADC #$00                  
CODE_23B57C:        85 2F         STA $2F                   
CODE_23B57E:        85 01         STA $01                   
CODE_23B580:        98            TYA                       
CODE_23B581:        29 0F         AND #$0F                  
CODE_23B583:        C9 0F         CMP #$0F                  
CODE_23B585:        D0 1B         BNE CODE_23B5A2           
CODE_23B587:        C2 20         REP #$20                  
CODE_23B589:        A5 2E         LDA $2E                   
CODE_23B58B:        38            SEC                       
CODE_23B58C:        E9 B0 01      SBC #$01B0                
CODE_23B58F:        85 2E         STA $2E                   
CODE_23B591:        85 00         STA $00                   
CODE_23B593:        E2 20         SEP #$20                  
CODE_23B595:        98            TYA                       
CODE_23B596:        18            CLC                       
CODE_23B597:        69 10         ADC #$10                  
CODE_23B599:        A8            TAY                       
CODE_23B59A:        A5 2F         LDA $2F                   
CODE_23B59C:        69 00         ADC #$00                  
CODE_23B59E:        85 2F         STA $2F                   
CODE_23B5A0:        85 01         STA $01                   
CODE_23B5A2:        8C 00 07      STY $0700                 
CODE_23B5A5:        C6 03         DEC $03                   
CODE_23B5A7:        10 82         BPL CODE_23B52B           
CODE_23B5A9:        6B            RTL                       

CODE_23B5AA:        A5 2E         LDA $2E                   
CODE_23B5AC:        85 00         STA $00                   
CODE_23B5AE:        A5 2F         LDA $2F                   
CODE_23B5B0:        85 01         STA $01                   
CODE_23B5B2:        AD 06 07      LDA $0706                 
CODE_23B5B5:        48            PHA                       
CODE_23B5B6:        29 0F         AND #$0F                  
CODE_23B5B8:        85 02         STA $02                   
CODE_23B5BA:        68            PLA                       
CODE_23B5BB:        38            SEC                       
CODE_23B5BC:        E9 10         SBC #$10                  
CODE_23B5BE:        29 C0         AND #$C0                  
CODE_23B5C0:        18            CLC                       
CODE_23B5C1:        2A            ROL A                     
CODE_23B5C2:        2A            ROL A                     
CODE_23B5C3:        2A            ROL A                     
CODE_23B5C4:        AA            TAX                       
CODE_23B5C5:        AC 00 07      LDY $0700                 
CODE_23B5C8:        A5 02         LDA $02                   
CODE_23B5CA:        85 04         STA $04                   
CODE_23B5CC:        BD B0 A6      LDA.w DATA_21A6B0,x               
CODE_23B5CF:        97 2E         STA [$2E],y               
CODE_23B5D1:        8A            TXA                       
CODE_23B5D2:        F0 0B         BEQ CODE_23B5DF           
CODE_23B5D4:        22 1E 88 2A   JSL CODE_2A881E           
CODE_23B5D8:        80 05         BRA CODE_23B5DF           

CODE_23B5DA:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B5DD:        97 2E         STA [$2E],y               
CODE_23B5DF:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B5E3:        C6 04         DEC $04                   
CODE_23B5E5:        10 F3         BPL CODE_23B5DA           
CODE_23B5E7:        A5 00         LDA $00                   
CODE_23B5E9:        85 2E         STA $2E                   
CODE_23B5EB:        A5 01         LDA $01                   
CODE_23B5ED:        85 2F         STA $2F                   
CODE_23B5EF:        AD 00 07      LDA $0700                 
CODE_23B5F2:        18            CLC                       
CODE_23B5F3:        69 10         ADC #$10                  
CODE_23B5F5:        A8            TAY                       
CODE_23B5F6:        A5 2F         LDA $2F                   
CODE_23B5F8:        69 00         ADC #$00                  
CODE_23B5FA:        85 2F         STA $2F                   
CODE_23B5FC:        85 01         STA $01                   
CODE_23B5FE:        C8            INY                       
CODE_23B5FF:        98            TYA                       
CODE_23B600:        29 0F         AND #$0F                  
CODE_23B602:        D0 13         BNE CODE_23B617           
CODE_23B604:        C2 20         REP #$20                  
CODE_23B606:        A5 2E         LDA $2E                   
CODE_23B608:        18            CLC                       
CODE_23B609:        69 B0 01      ADC #$01B0                
CODE_23B60C:        85 2E         STA $2E                   
CODE_23B60E:        85 00         STA $00                   
CODE_23B610:        E2 20         SEP #$20                  
CODE_23B612:        88            DEY                       
CODE_23B613:        98            TYA                       
CODE_23B614:        29 F0         AND #$F0                  
CODE_23B616:        A8            TAY                       
CODE_23B617:        8C 00 07      STY $0700                 
CODE_23B61A:        C6 02         DEC $02                   
CODE_23B61C:        30 03         BMI CODE_23B621           
CODE_23B61E:        4C C5 B5      JMP CODE_23B5C5           

CODE_23B621:        6B            RTL                       

CODE_23B622:        A5 2E         LDA $2E                   
CODE_23B624:        85 00         STA $00                   
CODE_23B626:        A5 2F         LDA $2F                   
CODE_23B628:        85 01         STA $01                   
CODE_23B62A:        AD 06 07      LDA $0706                 
CODE_23B62D:        48            PHA                       
CODE_23B62E:        29 0F         AND #$0F                  
CODE_23B630:        85 02         STA $02                   
CODE_23B632:        68            PLA                       
CODE_23B633:        38            SEC                       
CODE_23B634:        E9 10         SBC #$10                  
CODE_23B636:        29 C0         AND #$C0                  
CODE_23B638:        18            CLC                       
CODE_23B639:        2A            ROL A                     
CODE_23B63A:        2A            ROL A                     
CODE_23B63B:        2A            ROL A                     
CODE_23B63C:        AA            TAX                       
CODE_23B63D:        AC 00 07      LDY $0700                 
CODE_23B640:        A5 02         LDA $02                   
CODE_23B642:        85 04         STA $04                   
CODE_23B644:        F0 20         BEQ CODE_23B666           
CODE_23B646:        C2 21         REP #$21                  
CODE_23B648:        A5 2E         LDA $2E                   
CODE_23B64A:        69 00 20      ADC #$2000                
CODE_23B64D:        85 D8         STA $D8                   
CODE_23B64F:        E2 20         SEP #$20                  
CODE_23B651:        A5 30         LDA $30                   
CODE_23B653:        85 DA         STA $DA                   
CODE_23B655:        B7 D8         LDA [$D8],y               
CODE_23B657:        D0 05         BNE CODE_23B65E           
CODE_23B659:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B65C:        97 2E         STA [$2E],y               
CODE_23B65E:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B662:        C6 04         DEC $04                   
CODE_23B664:        D0 E0         BNE CODE_23B646           
CODE_23B666:        BD B3 A6      LDA.w DATA_21A6B3,x               
CODE_23B669:        97 2E         STA [$2E],y               
CODE_23B66B:        8A            TXA                       
CODE_23B66C:        F0 0C         BEQ CODE_23B67A           
CODE_23B66E:        DA            PHX                       
CODE_23B66F:        A2 00         LDX #$00                  
CODE_23B671:        22 44 88 2A   JSL CODE_2A8844           
CODE_23B675:        22 B2 87 2A   JSL CODE_2A87B2           
CODE_23B679:        FA            PLX                       
CODE_23B67A:        A5 00         LDA $00                   
CODE_23B67C:        85 2E         STA $2E                   
CODE_23B67E:        A5 01         LDA $01                   
CODE_23B680:        85 2F         STA $2F                   
CODE_23B682:        AD 00 07      LDA $0700                 
CODE_23B685:        18            CLC                       
CODE_23B686:        69 10         ADC #$10                  
CODE_23B688:        8D 00 07      STA $0700                 
CODE_23B68B:        A5 2F         LDA $2F                   
CODE_23B68D:        69 00         ADC #$00                  
CODE_23B68F:        85 2F         STA $2F                   
CODE_23B691:        85 01         STA $01                   
CODE_23B693:        C6 02         DEC $02                   
CODE_23B695:        10 A6         BPL CODE_23B63D           
CODE_23B697:        6B            RTL                       

CODE_23B698:        A5 2E         LDA $2E                   
CODE_23B69A:        85 00         STA $00                   
CODE_23B69C:        A5 2F         LDA $2F                   
CODE_23B69E:        85 01         STA $01                   
CODE_23B6A0:        A9 00         LDA #$00                  
CODE_23B6A2:        85 02         STA $02                   
CODE_23B6A4:        AD 06 07      LDA $0706                 
CODE_23B6A7:        48            PHA                       
CODE_23B6A8:        29 0F         AND #$0F                  
CODE_23B6AA:        85 03         STA $03                   
CODE_23B6AC:        68            PLA                       
CODE_23B6AD:        38            SEC                       
CODE_23B6AE:        E9 10         SBC #$10                  
CODE_23B6B0:        29 C0         AND #$C0                  
CODE_23B6B2:        18            CLC                       
CODE_23B6B3:        2A            ROL A                     
CODE_23B6B4:        2A            ROL A                     
CODE_23B6B5:        2A            ROL A                     
CODE_23B6B6:        AA            TAX                       
CODE_23B6B7:        AC 00 07      LDY $0700                 
CODE_23B6BA:        A5 02         LDA $02                   
CODE_23B6BC:        85 04         STA $04                   
CODE_23B6BE:        F0 1F         BEQ CODE_23B6DF           
CODE_23B6C0:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B6C3:        97 2E         STA [$2E],y               
CODE_23B6C5:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B6C9:        8A            TXA                       
CODE_23B6CA:        F0 06         BEQ CODE_23B6D2           
CODE_23B6CC:        B7 2E         LDA [$2E],y               
CODE_23B6CE:        C9 08         CMP #$08                  
CODE_23B6D0:        F0 05         BEQ CODE_23B6D7           
CODE_23B6D2:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B6D5:        97 2E         STA [$2E],y               
CODE_23B6D7:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B6DB:        C6 04         DEC $04                   
CODE_23B6DD:        D0 E1         BNE CODE_23B6C0           
CODE_23B6DF:        BD B6 A6      LDA.w DATA_21A6B6,x               
CODE_23B6E2:        97 2E         STA [$2E],y               
CODE_23B6E4:        8A            TXA                       
CODE_23B6E5:        D0 08         BNE CODE_23B6EF           
CODE_23B6E7:        DA            PHX                       
CODE_23B6E8:        A2 04         LDX #$04                  
CODE_23B6EA:        22 DC 89 2A   JSL CODE_2A89DC           
CODE_23B6EE:        FA            PLX                       
CODE_23B6EF:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B6F3:        BD B9 A6      LDA.w DATA_21A6B9,x               
CODE_23B6F6:        97 2E         STA [$2E],y               
CODE_23B6F8:        C9 9F         CMP #$9F                  
CODE_23B6FA:        D0 04         BNE CODE_23B700           
CODE_23B6FC:        22 DC 89 2A   JSL CODE_2A89DC           
CODE_23B700:        A5 00         LDA $00                   
CODE_23B702:        85 2E         STA $2E                   
CODE_23B704:        A5 01         LDA $01                   
CODE_23B706:        85 2F         STA $2F                   
CODE_23B708:        AD 00 07      LDA $0700                 
CODE_23B70B:        18            CLC                       
CODE_23B70C:        69 10         ADC #$10                  
CODE_23B70E:        8D 00 07      STA $0700                 
CODE_23B711:        A5 2F         LDA $2F                   
CODE_23B713:        69 00         ADC #$00                  
CODE_23B715:        85 2F         STA $2F                   
CODE_23B717:        85 01         STA $01                   
CODE_23B719:        E6 02         INC $02                   
CODE_23B71B:        C6 03         DEC $03                   
CODE_23B71D:        10 98         BPL CODE_23B6B7           
CODE_23B71F:        6B            RTL                       

CODE_23B720:        A5 2E         LDA $2E                   
CODE_23B722:        85 00         STA $00                   
CODE_23B724:        A5 2F         LDA $2F                   
CODE_23B726:        85 01         STA $01                   
CODE_23B728:        A9 00         LDA #$00                  
CODE_23B72A:        85 02         STA $02                   
CODE_23B72C:        AD 06 07      LDA $0706                 
CODE_23B72F:        48            PHA                       
CODE_23B730:        29 0F         AND #$0F                  
CODE_23B732:        85 03         STA $03                   
CODE_23B734:        68            PLA                       
CODE_23B735:        38            SEC                       
CODE_23B736:        E9 10         SBC #$10                  
CODE_23B738:        29 C0         AND #$C0                  
CODE_23B73A:        18            CLC                       
CODE_23B73B:        2A            ROL A                     
CODE_23B73C:        2A            ROL A                     
CODE_23B73D:        2A            ROL A                     
CODE_23B73E:        AA            TAX                       
CODE_23B73F:        AC 00 07      LDY $0700                 
CODE_23B742:        A5 02         LDA $02                   
CODE_23B744:        85 04         STA $04                   
CODE_23B746:        BD BC A6      LDA.w DATA_21A6BC,x               
CODE_23B749:        97 2E         STA [$2E],y               
CODE_23B74B:        C9 9C         CMP #$9C                  
CODE_23B74D:        D0 08         BNE CODE_23B757           
CODE_23B74F:        DA            PHX                       
CODE_23B750:        A2 03         LDX #$03                  
CODE_23B752:        22 E2 8A 2A   JSL CODE_2A8AE2           
CODE_23B756:        FA            PLX                       
CODE_23B757:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B75B:        BD BF A6      LDA.w DATA_21A6BF,x               
CODE_23B75E:        97 2E         STA [$2E],y               
CODE_23B760:        C9 9D         CMP #$9D                  
CODE_23B762:        D0 31         BNE CODE_23B795           
CODE_23B764:        22 B2 87 2A   JSL CODE_2A87B2           
CODE_23B768:        80 2B         BRA CODE_23B795           

CODE_23B76A:        C2 21         REP #$21                  
CODE_23B76C:        A5 2E         LDA $2E                   
CODE_23B76E:        69 00 20      ADC #$2000                
CODE_23B771:        85 D8         STA $D8                   
CODE_23B773:        E2 20         SEP #$20                  
CODE_23B775:        A5 30         LDA $30                   
CODE_23B777:        85 DA         STA $DA                   
CODE_23B779:        B7 D8         LDA [$D8],y               
CODE_23B77B:        F0 0A         BEQ CODE_23B787           
CODE_23B77D:        B7 2E         LDA [$2E],y               
CODE_23B77F:        C9 02         CMP #$02                  
CODE_23B781:        F0 09         BEQ CODE_23B78C           
CODE_23B783:        C9 07         CMP #$07                  
CODE_23B785:        F0 05         BEQ CODE_23B78C           
CODE_23B787:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B78A:        97 2E         STA [$2E],y               
CODE_23B78C:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B790:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B793:        97 2E         STA [$2E],y               
CODE_23B795:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B799:        C6 04         DEC $04                   
CODE_23B79B:        10 CD         BPL CODE_23B76A           
CODE_23B79D:        A5 00         LDA $00                   
CODE_23B79F:        85 2E         STA $2E                   
CODE_23B7A1:        A5 01         LDA $01                   
CODE_23B7A3:        85 2F         STA $2F                   
CODE_23B7A5:        AD 00 07      LDA $0700                 
CODE_23B7A8:        18            CLC                       
CODE_23B7A9:        69 0E         ADC #$0E                  
CODE_23B7AB:        A8            TAY                       
CODE_23B7AC:        A5 2F         LDA $2F                   
CODE_23B7AE:        69 00         ADC #$00                  
CODE_23B7B0:        85 2F         STA $2F                   
CODE_23B7B2:        85 01         STA $01                   
CODE_23B7B4:        98            TYA                       
CODE_23B7B5:        29 0F         AND #$0F                  
CODE_23B7B7:        C9 0E         CMP #$0E                  
CODE_23B7B9:        90 1C         BCC CODE_23B7D7           
CODE_23B7BB:        A5 2E         LDA $2E                   
CODE_23B7BD:        38            SEC                       
CODE_23B7BE:        E9 B0         SBC #$B0                  
CODE_23B7C0:        85 2E         STA $2E                   
CODE_23B7C2:        85 00         STA $00                   
CODE_23B7C4:        A5 2F         LDA $2F                   
CODE_23B7C6:        E9 01         SBC #$01                  
CODE_23B7C8:        85 2F         STA $2F                   
CODE_23B7CA:        98            TYA                       
CODE_23B7CB:        18            CLC                       
CODE_23B7CC:        69 10         ADC #$10                  
CODE_23B7CE:        A8            TAY                       
CODE_23B7CF:        A5 2F         LDA $2F                   
CODE_23B7D1:        69 00         ADC #$00                  
CODE_23B7D3:        85 2F         STA $2F                   
CODE_23B7D5:        85 01         STA $01                   
CODE_23B7D7:        8C 00 07      STY $0700                 
CODE_23B7DA:        E6 02         INC $02                   
CODE_23B7DC:        C6 03         DEC $03                   
CODE_23B7DE:        30 03         BMI CODE_23B7E3           
CODE_23B7E0:        4C 3F B7      JMP CODE_23B73F           

CODE_23B7E3:        6B            RTL                       

CODE_23B7E4:        C2 20         REP #$20                  
CODE_23B7E6:        A5 2E         LDA $2E                   
CODE_23B7E8:        85 00         STA $00                   
CODE_23B7EA:        E2 20         SEP #$20                  
CODE_23B7EC:        AD 06 07      LDA $0706                 
CODE_23B7EF:        48            PHA                       
CODE_23B7F0:        29 0F         AND #$0F                  
CODE_23B7F2:        85 02         STA $02                   
CODE_23B7F4:        68            PLA                       
CODE_23B7F5:        38            SEC                       
CODE_23B7F6:        E9 10         SBC #$10                  
CODE_23B7F8:        29 C0         AND #$C0                  
CODE_23B7FA:        18            CLC                       
CODE_23B7FB:        2A            ROL A                     
CODE_23B7FC:        2A            ROL A                     
CODE_23B7FD:        2A            ROL A                     
CODE_23B7FE:        AA            TAX                       
CODE_23B7FF:        AC 00 07      LDY $0700                 
CODE_23B802:        A5 02         LDA $02                   
CODE_23B804:        85 04         STA $04                   
CODE_23B806:        BD C2 A6      LDA.w DATA_21A6C2,x               
CODE_23B809:        97 2E         STA [$2E],y               
CODE_23B80B:        22 76 87 2A   JSL CODE_2A8776           
CODE_23B80F:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B813:        BD C5 A6      LDA.w DATA_21A6C5,x               
CODE_23B816:        97 2E         STA [$2E],y               
CODE_23B818:        80 0E         BRA CODE_23B828           

CODE_23B81A:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B81D:        97 2E         STA [$2E],y               
CODE_23B81F:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B823:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B826:        97 2E         STA [$2E],y               
CODE_23B828:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B82C:        C6 04         DEC $04                   
CODE_23B82E:        10 EA         BPL CODE_23B81A           
CODE_23B830:        C2 20         REP #$20                  
CODE_23B832:        A5 00         LDA $00                   
CODE_23B834:        85 2E         STA $2E                   
CODE_23B836:        E2 20         SEP #$20                  
CODE_23B838:        AD 00 07      LDA $0700                 
CODE_23B83B:        18            CLC                       
CODE_23B83C:        69 10         ADC #$10                  
CODE_23B83E:        A8            TAY                       
CODE_23B83F:        A5 2F         LDA $2F                   
CODE_23B841:        69 00         ADC #$00                  
CODE_23B843:        85 2F         STA $2F                   
CODE_23B845:        85 01         STA $01                   
CODE_23B847:        C8            INY                       
CODE_23B848:        C8            INY                       
CODE_23B849:        98            TYA                       
CODE_23B84A:        29 0F         AND #$0F                  
CODE_23B84C:        C9 02         CMP #$02                  
CODE_23B84E:        B0 13         BCS CODE_23B863                   
CODE_23B850:        C2 21         REP #$21                  
CODE_23B852:        A5 2E         LDA $2E                   
CODE_23B854:        69 B0 01      ADC #$01B0                
CODE_23B857:        85 2E         STA $2E                   
CODE_23B859:        85 00         STA $00                   
CODE_23B85B:        E2 20         SEP #$20                  
CODE_23B85D:        88            DEY                       
CODE_23B85E:        88            DEY                       
CODE_23B85F:        98            TYA                       
CODE_23B860:        29 F1         AND #$F1                  
CODE_23B862:        A8            TAY                       
CODE_23B863:        8C 00 07      STY $0700                 
CODE_23B866:        C6 02         DEC $02                   
CODE_23B868:        10 95         BPL CODE_23B7FF           
CODE_23B86A:        6B            RTL                       

CODE_23B86B:        A5 2E         LDA $2E                   
CODE_23B86D:        85 00         STA $00                   
CODE_23B86F:        A5 2F         LDA $2F                   
CODE_23B871:        85 01         STA $01                   
CODE_23B873:        AD 06 07      LDA $0706                 
CODE_23B876:        48            PHA                       
CODE_23B877:        29 0F         AND #$0F                  
CODE_23B879:        85 02         STA $02                   
CODE_23B87B:        68            PLA                       
CODE_23B87C:        38            SEC                       
CODE_23B87D:        E9 10         SBC #$10                  
CODE_23B87F:        29 C0         AND #$C0                  
CODE_23B881:        18            CLC                       
CODE_23B882:        2A            ROL A                     
CODE_23B883:        2A            ROL A                     
CODE_23B884:        2A            ROL A                     
CODE_23B885:        AA            TAX                       
CODE_23B886:        AC 00 07      LDY $0700                 
CODE_23B889:        A5 02         LDA $02                   
CODE_23B88B:        85 04         STA $04                   
CODE_23B88D:        F0 16         BEQ CODE_23B8A5           
CODE_23B88F:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B892:        97 2E         STA [$2E],y               
CODE_23B894:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B898:        BD A7 A6      LDA.w DATA_21A6A7,x               
CODE_23B89B:        97 2E         STA [$2E],y               
CODE_23B89D:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B8A1:        C6 04         DEC $04                   
CODE_23B8A3:        D0 EA         BNE CODE_23B88F           
CODE_23B8A5:        BD C8 A6      LDA.w DATA_21A6C8,x               
CODE_23B8A8:        97 2E         STA [$2E],y               
CODE_23B8AA:        E0 01         CPX #$01                  
CODE_23B8AC:        D0 04         BNE CODE_23B8B2           
CODE_23B8AE:        22 B2 87 2A   JSL CODE_2A87B2           
CODE_23B8B2:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B8B6:        BD CB A6      LDA.w DATA_21A6CB,x               
CODE_23B8B9:        97 2E         STA [$2E],y               
CODE_23B8BB:        C9 A5         CMP #$A5                  
CODE_23B8BD:        D0 08         BNE CODE_23B8C7           
CODE_23B8BF:        DA            PHX                       
CODE_23B8C0:        A2 01         LDX #$01                  
CODE_23B8C2:        22 44 88 2A   JSL CODE_2A8844           
CODE_23B8C6:        FA            PLX                       
CODE_23B8C7:        A5 00         LDA $00                   
CODE_23B8C9:        85 2E         STA $2E                   
CODE_23B8CB:        A5 01         LDA $01                   
CODE_23B8CD:        85 2F         STA $2F                   
CODE_23B8CF:        AD 00 07      LDA $0700                 
CODE_23B8D2:        18            CLC                       
CODE_23B8D3:        69 10         ADC #$10                  
CODE_23B8D5:        8D 00 07      STA $0700                 
CODE_23B8D8:        A5 2F         LDA $2F                   
CODE_23B8DA:        69 00         ADC #$00                  
CODE_23B8DC:        85 2F         STA $2F                   
CODE_23B8DE:        85 01         STA $01                   
CODE_23B8E0:        C6 02         DEC $02                   
CODE_23B8E2:        10 A2         BPL CODE_23B886           
CODE_23B8E4:        6B            RTL                       

CODE_23B8E5:        AD 06 07      LDA $0706                 
CODE_23B8E8:        48            PHA                       
CODE_23B8E9:        29 0F         AND #$0F                  
CODE_23B8EB:        85 00         STA $00                   
CODE_23B8ED:        68            PLA                       
CODE_23B8EE:        38            SEC                       
CODE_23B8EF:        E9 D0         SBC #$D0                  
CODE_23B8F1:        4A            LSR A                     
CODE_23B8F2:        4A            LSR A                     
CODE_23B8F3:        4A            LSR A                     
CODE_23B8F4:        4A            LSR A                     
CODE_23B8F5:        AA            TAX                       
CODE_23B8F6:        AC 00 07      LDY $0700                 
CODE_23B8F9:        BD CE A6      LDA.w DATA_21A6CE,x               
CODE_23B8FC:        97 2E         STA [$2E],y               
CODE_23B8FE:        8A            TXA                       
CODE_23B8FF:        D0 31         BNE CODE_23B932           
CODE_23B901:        5A            PHY                       
CODE_23B902:        C2 20         REP #$20                  
CODE_23B904:        A5 2E         LDA $2E                   
CODE_23B906:        85 D8         STA $D8                   
CODE_23B908:        E2 20         SEP #$20                  
CODE_23B90A:        A5 30         LDA $30                   
CODE_23B90C:        85 DA         STA $DA                   
CODE_23B90E:        98            TYA                       
CODE_23B90F:        18            CLC                       
CODE_23B910:        69 0F         ADC #$0F                  
CODE_23B912:        A8            TAY                       
CODE_23B913:        B7 D8         LDA [$D8],y               
CODE_23B915:        C9 25         CMP #$25                  
CODE_23B917:        F0 08         BEQ CODE_23B921           
CODE_23B919:        C9 26         CMP #$26                  
CODE_23B91B:        F0 04         BEQ CODE_23B921           
CODE_23B91D:        C9 33         CMP #$33                  
CODE_23B91F:        D0 10         BNE CODE_23B931           
CODE_23B921:        C8            INY                       
CODE_23B922:        A9 09         LDA #$09                  
CODE_23B924:        97 D8         STA [$D8],y               
CODE_23B926:        A5 D9         LDA $D9                   
CODE_23B928:        18            CLC                       
CODE_23B929:        69 20         ADC #$20                  
CODE_23B92B:        85 D9         STA $D9                   
CODE_23B92D:        A9 01         LDA #$01                  
CODE_23B92F:        97 D8         STA [$D8],y               
CODE_23B931:        7A            PLY                       
CODE_23B932:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B936:        98            TYA                       
CODE_23B937:        18            CLC                       
CODE_23B938:        69 10         ADC #$10                  
CODE_23B93A:        A8            TAY                       
CODE_23B93B:        A5 2F         LDA $2F                   
CODE_23B93D:        69 00         ADC #$00                  
CODE_23B93F:        85 2F         STA $2F                   
CODE_23B941:        C6 00         DEC $00                   
CODE_23B943:        10 B4         BPL CODE_23B8F9           
CODE_23B945:        6B            RTL                       

CODE_23B946:        AD 06 07      LDA $0706                 
CODE_23B949:        48            PHA                       
CODE_23B94A:        29 0F         AND #$0F                  
CODE_23B94C:        85 00         STA $00                   
CODE_23B94E:        68            PLA                       
CODE_23B94F:        38            SEC                       
CODE_23B950:        E9 D0         SBC #$D0                  
CODE_23B952:        4A            LSR A                     
CODE_23B953:        4A            LSR A                     
CODE_23B954:        4A            LSR A                     
CODE_23B955:        4A            LSR A                     
CODE_23B956:        18            CLC                       
CODE_23B957:        69 03         ADC #$03                  
CODE_23B959:        AA            TAX                       
CODE_23B95A:        AC 00 07      LDY $0700                 
CODE_23B95D:        4C F9 B8      JMP CODE_23B8F9           

CODE_23B960:        A0 00         LDY #$00                  
CODE_23B962:        B7 2B         LDA [$2B],y               
CODE_23B964:        85 02         STA $02                   
CODE_23B966:        A5 2B         LDA $2B                   
CODE_23B968:        18            CLC                       
CODE_23B969:        69 01         ADC #$01                  
CODE_23B96B:        85 2B         STA $2B                   
CODE_23B96D:        A5 2C         LDA $2C                   
CODE_23B96F:        69 00         ADC #$00                  
CODE_23B971:        85 2C         STA $2C                   
CODE_23B973:        A5 2E         LDA $2E                   
CODE_23B975:        85 00         STA $00                   
CODE_23B977:        A5 2F         LDA $2F                   
CODE_23B979:        85 01         STA $01                   
CODE_23B97B:        AD 06 07      LDA $0706                 
CODE_23B97E:        48            PHA                       
CODE_23B97F:        29 0F         AND #$0F                  
CODE_23B981:        85 04         STA $04                   
CODE_23B983:        68            PLA                       
CODE_23B984:        38            SEC                       
CODE_23B985:        E9 40         SBC #$40                  
CODE_23B987:        4A            LSR A                     
CODE_23B988:        4A            LSR A                     
CODE_23B989:        4A            LSR A                     
CODE_23B98A:        4A            LSR A                     
CODE_23B98B:        AA            TAX                       
CODE_23B98C:        AC 00 07      LDY $0700                 
CODE_23B98F:        A5 02         LDA $02                   
CODE_23B991:        85 03         STA $03                   
CODE_23B993:        E0 03         CPX #$03                  
CODE_23B995:        B0 2D         BCS CODE_23B9C4                   
CODE_23B997:        C2 21         REP #$21                  
CODE_23B999:        A5 2E         LDA $2E                   
CODE_23B99B:        69 00 20      ADC #$2000                
CODE_23B99E:        85 D8         STA $D8                   
CODE_23B9A0:        E2 20         SEP #$20                  
CODE_23B9A2:        A5 30         LDA $30                   
CODE_23B9A4:        85 DA         STA $DA                   
CODE_23B9A6:        B7 D8         LDA [$D8],y               
CODE_23B9A8:        F0 1A         BEQ CODE_23B9C4           
CODE_23B9AA:        B7 2E         LDA [$2E],y               
CODE_23B9AC:        C9 02         CMP #$02                  
CODE_23B9AE:        F0 29         BEQ CODE_23B9D9           
CODE_23B9B0:        C9 04         CMP #$04                  
CODE_23B9B2:        F0 25         BEQ CODE_23B9D9           
CODE_23B9B4:        C9 05         CMP #$05                  
CODE_23B9B6:        F0 21         BEQ CODE_23B9D9           
CODE_23B9B8:        C9 07         CMP #$07                  
CODE_23B9BA:        F0 1D         BEQ CODE_23B9D9           
CODE_23B9BC:        C9 09         CMP #$09                  
CODE_23B9BE:        F0 19         BEQ CODE_23B9D9           
CODE_23B9C0:        C9 0A         CMP #$0A                  
CODE_23B9C2:        F0 15         BEQ CODE_23B9D9           
CODE_23B9C4:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23B9C8:        BD D4 A6      LDA.w DATA_21A6D4,x               
CODE_23B9CB:        97 2E         STA [$2E],y               
CODE_23B9CD:        C9 37         CMP #$37                  
CODE_23B9CF:        F0 08         BEQ CODE_23B9D9           
CODE_23B9D1:        C9 AB         CMP #$AB                  
CODE_23B9D3:        F0 04         BEQ CODE_23B9D9           
CODE_23B9D5:        22 2C 89 2A   JSL CODE_2A892C           
CODE_23B9D9:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23B9DD:        C6 03         DEC $03                   
CODE_23B9DF:        A5 03         LDA $03                   
CODE_23B9E1:        C9 FF         CMP #$FF                  
CODE_23B9E3:        D0 AE         BNE CODE_23B993           
CODE_23B9E5:        80 28         BRA CODE_23BA0F           

CODE_23B9E7:        C2 21         REP #$21                  
CODE_23B9E9:        A5 2E         LDA $2E                   
CODE_23B9EB:        69 00 20      ADC #$2000                
CODE_23B9EE:        85 D8         STA $D8                   
CODE_23B9F0:        E2 20         SEP #$20                  
CODE_23B9F2:        A5 30         LDA $30                   
CODE_23B9F4:        85 DA         STA $DA                   
CODE_23B9F6:        B7 D8         LDA [$D8],y               
CODE_23B9F8:        D0 09         BNE CODE_23BA03           
CODE_23B9FA:        BD DA A6      LDA.w DATA_21A6DA,x               
CODE_23B9FD:        97 2E         STA [$2E],y               
CODE_23B9FF:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23BA03:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BA07:        C6 03         DEC $03                   
CODE_23BA09:        A5 03         LDA $03                   
CODE_23BA0B:        C9 FF         CMP #$FF                  
CODE_23BA0D:        D0 D8         BNE CODE_23B9E7           
CODE_23BA0F:        A5 00         LDA $00                   
CODE_23BA11:        85 2E         STA $2E                   
CODE_23BA13:        A5 01         LDA $01                   
CODE_23BA15:        85 2F         STA $2F                   
CODE_23BA17:        AD 00 07      LDA $0700                 
CODE_23BA1A:        18            CLC                       
CODE_23BA1B:        69 10         ADC #$10                  
CODE_23BA1D:        8D 00 07      STA $0700                 
CODE_23BA20:        A8            TAY                       
CODE_23BA21:        A5 2F         LDA $2F                   
CODE_23BA23:        69 00         ADC #$00                  
CODE_23BA25:        85 2F         STA $2F                   
CODE_23BA27:        85 01         STA $01                   
CODE_23BA29:        A5 02         LDA $02                   
CODE_23BA2B:        85 03         STA $03                   
CODE_23BA2D:        C6 04         DEC $04                   
CODE_23BA2F:        10 B6         BPL CODE_23B9E7           
CODE_23BA31:        6B            RTL                       

CODE_23BA32:        A0 00         LDY #$00                  
CODE_23BA34:        B7 2B         LDA [$2B],y               
CODE_23BA36:        85 02         STA $02                   
CODE_23BA38:        A5 2B         LDA $2B                   
CODE_23BA3A:        18            CLC                       
CODE_23BA3B:        69 01         ADC #$01                  
CODE_23BA3D:        85 2B         STA $2B                   
CODE_23BA3F:        A5 2C         LDA $2C                   
CODE_23BA41:        69 00         ADC #$00                  
CODE_23BA43:        85 2C         STA $2C                   
CODE_23BA45:        A5 2E         LDA $2E                   
CODE_23BA47:        85 00         STA $00                   
CODE_23BA49:        A5 2F         LDA $2F                   
CODE_23BA4B:        85 01         STA $01                   
CODE_23BA4D:        AD 06 07      LDA $0706                 
CODE_23BA50:        38            SEC                       
CODE_23BA51:        E9 A0         SBC #$A0                  
CODE_23BA53:        4A            LSR A                     
CODE_23BA54:        4A            LSR A                     
CODE_23BA55:        4A            LSR A                     
CODE_23BA56:        4A            LSR A                     
CODE_23BA57:        AA            TAX                       
CODE_23BA58:        AD 06 07      LDA $0706                 
CODE_23BA5B:        29 0F         AND #$0F                  
CODE_23BA5D:        85 04         STA $04                   
CODE_23BA5F:        A5 02         LDA $02                   
CODE_23BA61:        85 03         STA $03                   
CODE_23BA63:        AC 00 07      LDY $0700                 
CODE_23BA66:        A5 04         LDA $04                   
CODE_23BA68:        F0 66         BEQ CODE_23BAD0           
CODE_23BA6A:        C2 21         REP #$21                  
CODE_23BA6C:        A5 2E         LDA $2E                   
CODE_23BA6E:        69 00 20      ADC #$2000                
CODE_23BA71:        85 D8         STA $D8                   
CODE_23BA73:        A5 2E         LDA $2E                   
CODE_23BA75:        38            SEC                       
CODE_23BA76:        E9 10 00      SBC #$0010                
CODE_23BA79:        85 DB         STA $DB                   
CODE_23BA7B:        E2 20         SEP #$20                  
CODE_23BA7D:        A5 30         LDA $30                   
CODE_23BA7F:        85 DA         STA $DA                   
CODE_23BA81:        85 DD         STA $DD                   
CODE_23BA83:        B7 DB         LDA [$DB],y               
CODE_23BA85:        C9 26         CMP #$26                  
CODE_23BA87:        F0 0E         BEQ CODE_23BA97           
CODE_23BA89:        B7 D8         LDA [$D8],y               
CODE_23BA8B:        F0 0A         BEQ CODE_23BA97           
CODE_23BA8D:        B7 2E         LDA [$2E],y               
CODE_23BA8F:        C9 02         CMP #$02                  
CODE_23BA91:        F0 0D         BEQ CODE_23BAA0           
CODE_23BA93:        C9 04         CMP #$04                  
CODE_23BA95:        F0 09         BEQ CODE_23BAA0           
CODE_23BA97:        BD E0 A6      LDA.w DATA_21A6E0,x               
CODE_23BA9A:        97 2E         STA [$2E],y               
CODE_23BA9C:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23BAA0:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BAA4:        C6 03         DEC $03                   
CODE_23BAA6:        A5 03         LDA $03                   
CODE_23BAA8:        C9 FF         CMP #$FF                  
CODE_23BAAA:        D0 BE         BNE CODE_23BA6A           
CODE_23BAAC:        A5 00         LDA $00                   
CODE_23BAAE:        85 2E         STA $2E                   
CODE_23BAB0:        A5 01         LDA $01                   
CODE_23BAB2:        85 2F         STA $2F                   
CODE_23BAB4:        AD 00 07      LDA $0700                 
CODE_23BAB7:        18            CLC                       
CODE_23BAB8:        69 10         ADC #$10                  
CODE_23BABA:        8D 00 07      STA $0700                 
CODE_23BABD:        A5 2F         LDA $2F                   
CODE_23BABF:        69 00         ADC #$00                  
CODE_23BAC1:        85 2F         STA $2F                   
CODE_23BAC3:        85 01         STA $01                   
CODE_23BAC5:        C6 04         DEC $04                   
CODE_23BAC7:        D0 96         BNE CODE_23BA5F           
CODE_23BAC9:        A5 02         LDA $02                   
CODE_23BACB:        85 03         STA $03                   
CODE_23BACD:        AC 00 07      LDY $0700                 
CODE_23BAD0:        5A            PHY                       
CODE_23BAD1:        C2 20         REP #$20                  
CODE_23BAD3:        A5 2E         LDA $2E                   
CODE_23BAD5:        85 D8         STA $D8                   
CODE_23BAD7:        E2 20         SEP #$20                  
CODE_23BAD9:        BD E3 A6      LDA.w DATA_21A6E3,x               
CODE_23BADC:        97 2E         STA [$2E],y               
CODE_23BADE:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23BAE2:        22 6F 88 2A   JSL CODE_2A886F           
CODE_23BAE6:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BAEA:        C6 03         DEC $03                   
CODE_23BAEC:        A5 03         LDA $03                   
CODE_23BAEE:        C9 FF         CMP #$FF                  
CODE_23BAF0:        D0 E7         BNE CODE_23BAD9           
CODE_23BAF2:        7A            PLY                       
CODE_23BAF3:        B7 D8         LDA [$D8],y               
CODE_23BAF5:        C9 F4         CMP #$F4                  
CODE_23BAF7:        F0 04         BEQ CODE_23BAFD           
CODE_23BAF9:        C9 A6         CMP #$A6                  
CODE_23BAFB:        D0 34         BNE CODE_23BB31           
CODE_23BAFD:        C2 21         REP #$21                  
CODE_23BAFF:        A5 D8         LDA $D8                   
CODE_23BB01:        69 0F 00      ADC #$000F                
CODE_23BB04:        85 D8         STA $D8                   
CODE_23BB06:        E2 20         SEP #$20                  
CODE_23BB08:        B7 D8         LDA [$D8],y               
CODE_23BB0A:        C9 F8         CMP #$F8                  
CODE_23BB0C:        F0 08         BEQ CODE_23BB16           
CODE_23BB0E:        C9 AA         CMP #$AA                  
CODE_23BB10:        F0 04         BEQ CODE_23BB16           
CODE_23BB12:        C9 BF         CMP #$BF                  
CODE_23BB14:        D0 1B         BNE CODE_23BB31           
CODE_23BB16:        C2 20         REP #$20                  
CODE_23BB18:        A5 D8         LDA $D8                   
CODE_23BB1A:        38            SEC                       
CODE_23BB1B:        E9 10 00      SBC #$0010                
CODE_23BB1E:        85 D8         STA $D8                   
CODE_23BB20:        E2 20         SEP #$20                  
CODE_23BB22:        A9 06         LDA #$06                  
CODE_23BB24:        97 D8         STA [$D8],y               
CODE_23BB26:        A5 D9         LDA $D9                   
CODE_23BB28:        18            CLC                       
CODE_23BB29:        69 20         ADC #$20                  
CODE_23BB2B:        85 D9         STA $D9                   
CODE_23BB2D:        A9 01         LDA #$01                  
CODE_23BB2F:        97 D8         STA [$D8],y               
CODE_23BB31:        6B            RTL                       

CODE_23BB32:        A0 00         LDY #$00                  
CODE_23BB34:        B7 2B         LDA [$2B],y               
CODE_23BB36:        85 02         STA $02                   
CODE_23BB38:        A5 2B         LDA $2B                   
CODE_23BB3A:        18            CLC                       
CODE_23BB3B:        69 01         ADC #$01                  
CODE_23BB3D:        85 2B         STA $2B                   
CODE_23BB3F:        A5 2C         LDA $2C                   
CODE_23BB41:        69 00         ADC #$00                  
CODE_23BB43:        85 2C         STA $2C                   
CODE_23BB45:        A5 2E         LDA $2E                   
CODE_23BB47:        85 00         STA $00                   
CODE_23BB49:        A5 2F         LDA $2F                   
CODE_23BB4B:        85 01         STA $01                   
CODE_23BB4D:        AD 06 07      LDA $0706                 
CODE_23BB50:        48            PHA                       
CODE_23BB51:        38            SEC                       
CODE_23BB52:        E9 10         SBC #$10                  
CODE_23BB54:        4A            LSR A                     
CODE_23BB55:        4A            LSR A                     
CODE_23BB56:        4A            LSR A                     
CODE_23BB57:        4A            LSR A                     
CODE_23BB58:        AA            TAX                       
CODE_23BB59:        68            PLA                       
CODE_23BB5A:        29 0F         AND #$0F                  
CODE_23BB5C:        85 03         STA $03                   
CODE_23BB5E:        AC 00 07      LDY $0700                 
CODE_23BB61:        A5 02         LDA $02                   
CODE_23BB63:        85 04         STA $04                   
CODE_23BB65:        A5 03         LDA $03                   
CODE_23BB67:        F0 1A         BEQ CODE_23BB83           
CODE_23BB69:        BD E6 A6      LDA.w DATA_21A6E6,x               
CODE_23BB6C:        97 2E         STA [$2E],y               
CODE_23BB6E:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BB72:        C6 04         DEC $04                   
CODE_23BB74:        A5 04         LDA $04                   
CODE_23BB76:        C9 FF         CMP #$FF                  
CODE_23BB78:        D0 EF         BNE CODE_23BB69           
CODE_23BB7A:        80 14         BRA CODE_23BB90           

CODE_23BB7C:        A5 02         LDA $02                   
CODE_23BB7E:        85 04         STA $04                   
CODE_23BB80:        AC 00 07      LDY $0700                 
CODE_23BB83:        BD E9 A6      LDA.w DATA_21A6E9,x               
CODE_23BB86:        97 2E         STA [$2E],y               
CODE_23BB88:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BB8C:        C6 04         DEC $04                   
CODE_23BB8E:        10 F3         BPL CODE_23BB83           
CODE_23BB90:        A5 00         LDA $00                   
CODE_23BB92:        85 2E         STA $2E                   
CODE_23BB94:        A5 01         LDA $01                   
CODE_23BB96:        85 2F         STA $2F                   
CODE_23BB98:        AD 00 07      LDA $0700                 
CODE_23BB9B:        18            CLC                       
CODE_23BB9C:        69 10         ADC #$10                  
CODE_23BB9E:        8D 00 07      STA $0700                 
CODE_23BBA1:        A5 2F         LDA $2F                   
CODE_23BBA3:        69 00         ADC #$00                  
CODE_23BBA5:        85 2F         STA $2F                   
CODE_23BBA7:        85 01         STA $01                   
CODE_23BBA9:        C6 03         DEC $03                   
CODE_23BBAB:        10 CF         BPL CODE_23BB7C           
CODE_23BBAD:        6B            RTL                       

CODE_23BBAE:        6B            RTL                       

CODE_23BBAF:        AD 06 07      LDA $0706                 
CODE_23BBB2:        38            SEC                       
CODE_23BBB3:        E9 0D         SBC #$0D                  
CODE_23BBB5:        A8            TAY                       
CODE_23BBB6:        AE 00 07      LDX $0700                 
CODE_23BBB9:        A5 0E         LDA $0E                   
CODE_23BBBB:        29 10         AND #$10                  
CODE_23BBBD:        D0 04         BNE CODE_23BBC3           
CODE_23BBBF:        E0 C0         CPX #$C0                  
CODE_23BBC1:        90 08         BCC CODE_23BBCB           
CODE_23BBC3:        8A            TXA                       
CODE_23BBC4:        38            SEC                       
CODE_23BBC5:        E9 C0         SBC #$C0                  
CODE_23BBC7:        AA            TAX                       
CODE_23BBC8:        4C D6 BB      JMP CODE_23BBD6           

CODE_23BBCB:        B9 EC A6      LDA.w DATA_21A6EC,y               
CODE_23BBCE:        22 44 98 20   JSL CODE_209844           
CODE_23BBD2:        E0 00         CPX #$00                  
CODE_23BBD4:        D0 F5         BNE CODE_23BBCB           
CODE_23BBD6:        B9 EC A6      LDA.w DATA_21A6EC,y               
CODE_23BBD9:        22 A8 98 20   JSL CODE_2098A8           
CODE_23BBDD:        E8            INX                       
CODE_23BBDE:        E0 F0         CPX #$F0                  
CODE_23BBE0:        D0 F4         BNE CODE_23BBD6           
CODE_23BBE2:        6B            RTL                       

CODE_23BBE3:        A5 2E         LDA $2E                   
CODE_23BBE5:        85 00         STA $00                   
CODE_23BBE7:        A5 2F         LDA $2F                   
CODE_23BBE9:        85 01         STA $01                   
CODE_23BBEB:        AD 06 07      LDA $0706                 
CODE_23BBEE:        29 0F         AND #$0F                  
CODE_23BBF0:        85 02         STA $02                   
CODE_23BBF2:        A5 0F         LDA $0F                   
CODE_23BBF4:        4A            LSR A                     
CODE_23BBF5:        4A            LSR A                     
CODE_23BBF6:        4A            LSR A                     
CODE_23BBF7:        4A            LSR A                     
CODE_23BBF8:        85 03         STA $03                   
CODE_23BBFA:        AC 00 07      LDY $0700                 
CODE_23BBFD:        A9 47         LDA #$47                  
CODE_23BBFF:        97 2E         STA [$2E],y               
CODE_23BC01:        98            TYA                       
CODE_23BC02:        18            CLC                       
CODE_23BC03:        69 10         ADC #$10                  
CODE_23BC05:        A8            TAY                       
CODE_23BC06:        90 06         BCC CODE_23BC0E           
CODE_23BC08:        A5 2F         LDA $2F                   
CODE_23BC0A:        69 00         ADC #$00                  
CODE_23BC0C:        85 2F         STA $2F                   
CODE_23BC0E:        A5 04         LDA $04                   
CODE_23BC10:        C5 2F         CMP $2F                   
CODE_23BC12:        D0 E9         BNE CODE_23BBFD           
CODE_23BC14:        C0 B0         CPY #$B0                  
CODE_23BC16:        90 E5         BCC CODE_23BBFD           
CODE_23BC18:        A5 00         LDA $00                   
CODE_23BC1A:        85 2E         STA $2E                   
CODE_23BC1C:        A5 01         LDA $01                   
CODE_23BC1E:        85 2F         STA $2F                   
CODE_23BC20:        AC 00 07      LDY $0700                 
CODE_23BC23:        C8            INY                       
CODE_23BC24:        98            TYA                       
CODE_23BC25:        29 0F         AND #$0F                  
CODE_23BC27:        D0 28         BNE CODE_23BC51           
CODE_23BC29:        AD 00 07      LDA $0700                 
CODE_23BC2C:        29 F0         AND #$F0                  
CODE_23BC2E:        A8            TAY                       
CODE_23BC2F:        E6 03         INC $03                   
CODE_23BC31:        A5 03         LDA $03                   
CODE_23BC33:        0A            ASL A                     
CODE_23BC34:        AA            TAX                       
CODE_23BC35:        BD 00 82      LDA.w DATA_218200,x               
CODE_23BC38:        85 2E         STA $2E                   
CODE_23BC3A:        85 00         STA $00                   
CODE_23BC3C:        BD 01 82      LDA.w DATA_218200+1,x               
CODE_23BC3F:        85 2F         STA $2F                   
CODE_23BC41:        85 01         STA $01                   
CODE_23BC43:        85 04         STA $04                   
CODE_23BC45:        E6 04         INC $04                   
CODE_23BC47:        A5 0E         LDA $0E                   
CODE_23BC49:        29 10         AND #$10                  
CODE_23BC4B:        F0 04         BEQ CODE_23BC51           
CODE_23BC4D:        E6 2F         INC $2F                   
CODE_23BC4F:        E6 01         INC $01                   
CODE_23BC51:        8C 00 07      STY $0700                 
CODE_23BC54:        C6 02         DEC $02                   
CODE_23BC56:        10 A2         BPL CODE_23BBFA           
CODE_23BC58:        60            RTS                       

CODE_23BC59:        AD 06 07      LDA $0706                 
CODE_23BC5C:        29 0F         AND #$0F                  
CODE_23BC5E:        85 02         STA $02                   
CODE_23BC60:        A5 30         LDA $30                   
CODE_23BC62:        85 DA         STA $DA                   
CODE_23BC64:        AC 00 07      LDY $0700                 
CODE_23BC67:        A9 81         LDA #$81                  
CODE_23BC69:        97 2E         STA [$2E],y               
CODE_23BC6B:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23BC6F:        20 93 BC      JSR CODE_23BC93           
CODE_23BC72:        80 0B         BRA CODE_23BC7F           

CODE_23BC74:        A9 82         LDA #$82                  
CODE_23BC76:        97 2E         STA [$2E],y               
CODE_23BC78:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23BC7C:        20 93 BC      JSR CODE_23BC93           
CODE_23BC7F:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BC83:        C6 02         DEC $02                   
CODE_23BC85:        D0 ED         BNE CODE_23BC74           
CODE_23BC87:        A9 83         LDA #$83                  
CODE_23BC89:        97 2E         STA [$2E],y               
CODE_23BC8B:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23BC8F:        20 93 BC      JSR CODE_23BC93           
CODE_23BC92:        6B            RTL                       

CODE_23BC93:        C2 20         REP #$20                  
CODE_23BC95:        A5 2E         LDA $2E                   
CODE_23BC97:        18            CLC                       
CODE_23BC98:        69 10 00      ADC #$0010                
CODE_23BC9B:        85 D8         STA $D8                   
CODE_23BC9D:        E2 20         SEP #$20                  
CODE_23BC9F:        B7 D8         LDA [$D8],y               
CODE_23BCA1:        C9 9A         CMP #$9A                  
CODE_23BCA3:        D0 0F         BNE CODE_23BCB4           
CODE_23BCA5:        A9 0D         LDA #$0D                  
CODE_23BCA7:        97 D8         STA [$D8],y               
CODE_23BCA9:        A5 D9         LDA $D9                   
CODE_23BCAB:        18            CLC                       
CODE_23BCAC:        69 20         ADC #$20                  
CODE_23BCAE:        85 D9         STA $D9                   
CODE_23BCB0:        A9 01         LDA #$01                  
CODE_23BCB2:        97 D8         STA [$D8],y               
CODE_23BCB4:        60            RTS                       

CODE_23BCB5:        A5 2E         LDA $2E                   
CODE_23BCB7:        85 00         STA $00                   
CODE_23BCB9:        A5 2F         LDA $2F                   
CODE_23BCBB:        85 01         STA $01                   
CODE_23BCBD:        AD 06 07      LDA $0706                 
CODE_23BCC0:        29 0F         AND #$0F                  
CODE_23BCC2:        85 02         STA $02                   
CODE_23BCC4:        AC 00 07      LDY $0700                 
CODE_23BCC7:        A2 00         LDX #$00                  
CODE_23BCC9:        A5 02         LDA $02                   
CODE_23BCCB:        85 03         STA $03                   
CODE_23BCCD:        BD EF A6      LDA.w DATA_21A6EF,x               
CODE_23BCD0:        97 2E         STA [$2E],y               
CODE_23BCD2:        80 05         BRA CODE_23BCD9           

CODE_23BCD4:        BD F1 A6      LDA.w DATA_21A6F1,x               
CODE_23BCD7:        97 2E         STA [$2E],y               
CODE_23BCD9:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BCDD:        C6 03         DEC $03                   
CODE_23BCDF:        D0 F3         BNE CODE_23BCD4           
CODE_23BCE1:        BD F3 A6      LDA.w DATA_21A6F3,x               
CODE_23BCE4:        97 2E         STA [$2E],y               
CODE_23BCE6:        A5 00         LDA $00                   
CODE_23BCE8:        85 2E         STA $2E                   
CODE_23BCEA:        A5 01         LDA $01                   
CODE_23BCEC:        85 2F         STA $2F                   
CODE_23BCEE:        AD 00 07      LDA $0700                 
CODE_23BCF1:        18            CLC                       
CODE_23BCF2:        69 10         ADC #$10                  
CODE_23BCF4:        8D 00 07      STA $0700                 
CODE_23BCF7:        A8            TAY                       
CODE_23BCF8:        A5 2F         LDA $2F                   
CODE_23BCFA:        69 00         ADC #$00                  
CODE_23BCFC:        85 2F         STA $2F                   
CODE_23BCFE:        85 01         STA $01                   
CODE_23BD00:        E8            INX                       
CODE_23BD01:        E0 02         CPX #$02                  
CODE_23BD03:        D0 C4         BNE CODE_23BCC9           
CODE_23BD05:        6B            RTL                       

CODE_23BD06:        AD 06 07      LDA $0706                 
CODE_23BD09:        48            PHA                       
CODE_23BD0A:        38            SEC                       
CODE_23BD0B:        E9 10         SBC #$10                  
CODE_23BD0D:        29 F0         AND #$F0                  
CODE_23BD0F:        4A            LSR A                     
CODE_23BD10:        4A            LSR A                     
CODE_23BD11:        4A            LSR A                     
CODE_23BD12:        4A            LSR A                     
CODE_23BD13:        AA            TAX                       
CODE_23BD14:        D0 19         BNE CODE_23BD2F           
CODE_23BD16:        68            PLA                       
CODE_23BD17:        29 0F         AND #$0F                  
CODE_23BD19:        85 03         STA $03                   
CODE_23BD1B:        AC 00 07      LDY $0700                 
CODE_23BD1E:        BD F5 A6      LDA.w DATA_21A6F5,x               
CODE_23BD21:        97 2E         STA [$2E],y               
CODE_23BD23:        22 3A B7 2A   JSL CODE_2AB73A           
CODE_23BD27:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BD2B:        C6 03         DEC $03                   
CODE_23BD2D:        10 EF         BPL CODE_23BD1E           
CODE_23BD2F:        6B            RTL                       

CODE_23BD30:        AE 06 07      LDX $0706                 
CODE_23BD33:        AC 00 07      LDY $0700                 
CODE_23BD36:        BD F7 A6      LDA.w DATA_21A6F7,x               
CODE_23BD39:        97 2E         STA [$2E],y               
CODE_23BD3B:        6B            RTL                       

CODE_23BD3C:        A5 2E         LDA $2E                   
CODE_23BD3E:        85 00         STA $00                   
CODE_23BD40:        A5 2F         LDA $2F                   
CODE_23BD42:        85 01         STA $01                   
CODE_23BD44:        AD 06 07      LDA $0706                 
CODE_23BD47:        0A            ASL A                     
CODE_23BD48:        0A            ASL A                     
CODE_23BD49:        0A            ASL A                     
CODE_23BD4A:        85 04         STA $04                   
CODE_23BD4C:        AD 00 07      LDA $0700                 
CODE_23BD4F:        85 05         STA $05                   
CODE_23BD51:        64 06         STZ $06                   
CODE_23BD53:        A5 04         LDA $04                   
CODE_23BD55:        0A            ASL A                     
CODE_23BD56:        AA            TAX                       
CODE_23BD57:        BD 17 A8      LDA.w DATA_21A817,x               
CODE_23BD5A:        85 02         STA $02                   
CODE_23BD5C:        BD 18 A8      LDA.w DATA_21A817+1,x               
CODE_23BD5F:        85 03         STA $03                   
CODE_23BD61:        A4 05         LDY $05                   
CODE_23BD63:        C2 21         REP #$21                  
CODE_23BD65:        A5 2E         LDA $2E                   
CODE_23BD67:        69 00 20      ADC #$2000                
CODE_23BD6A:        85 D8         STA $D8                   
CODE_23BD6C:        E2 20         SEP #$20                  
CODE_23BD6E:        A5 30         LDA $30                   
CODE_23BD70:        85 DA         STA $DA                   
CODE_23BD72:        B7 D8         LDA [$D8],y               
CODE_23BD74:        F0 0E         BEQ CODE_23BD84           
CODE_23BD76:        B7 2E         LDA [$2E],y               
CODE_23BD78:        C9 02         CMP #$02                  
CODE_23BD7A:        F0 31         BEQ CODE_23BDAD           
CODE_23BD7C:        C9 04         CMP #$04                  
CODE_23BD7E:        F0 2D         BEQ CODE_23BDAD           
CODE_23BD80:        C9 06         CMP #$06                  
CODE_23BD82:        F0 29         BEQ CODE_23BDAD           
CODE_23BD84:        A4 06         LDY $06                   
CODE_23BD86:        B1 02         LDA ($02),y               
CODE_23BD88:        A4 05         LDY $05                   
CODE_23BD8A:        C2 21         REP #$21                  
CODE_23BD8C:        A5 2E         LDA $2E                   
CODE_23BD8E:        69 00 20      ADC #$2000                
CODE_23BD91:        85 D8         STA $D8                   
CODE_23BD93:        E2 20         SEP #$20                  
CODE_23BD95:        B7 D8         LDA [$D8],y               
CODE_23BD97:        D0 08         BNE CODE_23BDA1           
CODE_23BD99:        A4 06         LDY $06                   
CODE_23BD9B:        B1 02         LDA ($02),y               
CODE_23BD9D:        A4 05         LDY $05                   
CODE_23BD9F:        97 2E         STA [$2E],y               
CODE_23BDA1:        C9 E3         CMP #$E3                  
CODE_23BDA3:        D0 08         BNE CODE_23BDAD           
CODE_23BDA5:        DA            PHX                       
CODE_23BDA6:        A2 02         LDX #$02                  
CODE_23BDA8:        22 DC 89 2A   JSL CODE_2A89DC           
CODE_23BDAC:        FA            PLX                       
CODE_23BDAD:        C9 99         CMP #$99                  
CODE_23BDAF:        D0 08         BNE CODE_23BDB9           
CODE_23BDB1:        DA            PHX                       
CODE_23BDB2:        A2 02         LDX #$02                  
CODE_23BDB4:        22 E2 8A 2A   JSL CODE_2A8AE2           
CODE_23BDB8:        FA            PLX                       
CODE_23BDB9:        C9 A8         CMP #$A8                  
CODE_23BDBB:        F0 04         BEQ CODE_23BDC1           
CODE_23BDBD:        C9 F6         CMP #$F6                  
CODE_23BDBF:        D0 08         BNE CODE_23BDC9           
CODE_23BDC1:        DA            PHX                       
CODE_23BDC2:        A2 00         LDX #$00                  
CODE_23BDC4:        22 E8 88 2A   JSL CODE_2A88E8           
CODE_23BDC8:        FA            PLX                       
CODE_23BDC9:        C9 A1         CMP #$A1                  
CODE_23BDCB:        D0 08         BNE CODE_23BDD5           
CODE_23BDCD:        DA            PHX                       
CODE_23BDCE:        A2 00         LDX #$00                  
CODE_23BDD0:        22 44 88 2A   JSL CODE_2A8844           
CODE_23BDD4:        FA            PLX                       
CODE_23BDD5:        C9 A0         CMP #$A0                  
CODE_23BDD7:        D0 04         BNE CODE_23BDDD           
CODE_23BDD9:        22 1E 88 2A   JSL CODE_2A881E           
CODE_23BDDD:        C9 26         CMP #$26                  
CODE_23BDDF:        D0 04         BNE CODE_23BDE5           
CODE_23BDE1:        22 2C 89 2A   JSL CODE_2A892C           
CODE_23BDE5:        C9 A7         CMP #$A7                  
CODE_23BDE7:        D0 2B         BNE CODE_23BE14           
CODE_23BDE9:        A5 30         LDA $30                   
CODE_23BDEB:        85 DA         STA $DA                   
CODE_23BDED:        C2 20         REP #$20                  
CODE_23BDEF:        A5 2E         LDA $2E                   
CODE_23BDF1:        18            CLC                       
CODE_23BDF2:        69 0F 00      ADC #$000F                
CODE_23BDF5:        85 D8         STA $D8                   
CODE_23BDF7:        E2 20         SEP #$20                  
CODE_23BDF9:        B7 D8         LDA [$D8],y               
CODE_23BDFB:        C9 A7         CMP #$A7                  
CODE_23BDFD:        F0 04         BEQ CODE_23BE03           
CODE_23BDFF:        C9 9A         CMP #$9A                  
CODE_23BE01:        D0 11         BNE CODE_23BE14           
CODE_23BE03:        E6 D8         INC $D8                   
CODE_23BE05:        A9 02         LDA #$02                  
CODE_23BE07:        97 D8         STA [$D8],y               
CODE_23BE09:        A5 D9         LDA $D9                   
CODE_23BE0B:        18            CLC                       
CODE_23BE0C:        69 20         ADC #$20                  
CODE_23BE0E:        85 D9         STA $D9                   
CODE_23BE10:        A9 01         LDA #$01                  
CODE_23BE12:        97 D8         STA [$D8],y               
CODE_23BE14:        98            TYA                       
CODE_23BE15:        18            CLC                       
CODE_23BE16:        69 10         ADC #$10                  
CODE_23BE18:        85 05         STA $05                   
CODE_23BE1A:        A5 2F         LDA $2F                   
CODE_23BE1C:        69 00         ADC #$00                  
CODE_23BE1E:        85 2F         STA $2F                   
CODE_23BE20:        E6 06         INC $06                   
CODE_23BE22:        A5 06         LDA $06                   
CODE_23BE24:        C9 06         CMP #$06                  
CODE_23BE26:        F0 03         BEQ CODE_23BE2B           
CODE_23BE28:        4C 61 BD      JMP CODE_23BD61           

CODE_23BE2B:        A5 00         LDA $00                   
CODE_23BE2D:        85 2E         STA $2E                   
CODE_23BE2F:        A5 01         LDA $01                   
CODE_23BE31:        85 2F         STA $2F                   
CODE_23BE33:        AC 00 07      LDY $0700                 
CODE_23BE36:        22 BB BE 23   JSL CODE_23BEBB           
CODE_23BE3A:        8C 00 07      STY $0700                 
CODE_23BE3D:        A5 2E         LDA $2E                   
CODE_23BE3F:        85 00         STA $00                   
CODE_23BE41:        A5 2F         LDA $2F                   
CODE_23BE43:        85 01         STA $01                   
CODE_23BE45:        E6 04         INC $04                   
CODE_23BE47:        A5 04         LDA $04                   
CODE_23BE49:        29 07         AND #$07                  
CODE_23BE4B:        F0 03         BEQ CODE_23BE50           
CODE_23BE4D:        4C 4C BD      JMP CODE_23BD4C          
 
CODE_23BE50:        6B            RTL                       

CODE_23BE51:        AC 00 07      LDY $0700                 
CODE_23BE54:        A9 17         LDA #$17                  
CODE_23BE56:        85 00         STA $00                   
CODE_23BE58:        A9 A9         LDA #$A9                  
CODE_23BE5A:        85 01         STA $01                   
CODE_23BE5C:        B1 00         LDA ($00),y               
CODE_23BE5E:        C9 FF         CMP #$FF                  
CODE_23BE60:        F0 0E         BEQ CODE_23BE70           
CODE_23BE62:        97 2E         STA [$2E],y               
CODE_23BE64:        C8            INY                       
CODE_23BE65:        C0 00         CPY #$00                  
CODE_23BE67:        D0 04         BNE CODE_23BE6D           
CODE_23BE69:        E6 2F         INC $2F                   
CODE_23BE6B:        E6 01         INC $01                   
CODE_23BE6D:        E8            INX                       
CODE_23BE6E:        80 EC         BRA CODE_23BE5C           

CODE_23BE70:        6B            RTL                       

CODE_23BE71:        86 0B         STX $0B                   
CODE_23BE73:        84 0C         STY $0C                   
CODE_23BE75:        A5 0E         LDA $0E                   
CODE_23BE77:        29 10         AND #$10                  
CODE_23BE79:        4A            LSR A                     
CODE_23BE7A:        4A            LSR A                     
CODE_23BE7B:        4A            LSR A                     
CODE_23BE7C:        4A            LSR A                     
CODE_23BE7D:        85 0D         STA $0D                   
CODE_23BE7F:        A4 0F         LDY $0F                   
CODE_23BE81:        AD 06 07      LDA $0706                 
CODE_23BE84:        29 F0         AND #$F0                  
CODE_23BE86:        F0 0C         BEQ CODE_23BE94           
CODE_23BE88:        AD 06 07      LDA $0706                 
CODE_23BE8B:        29 0F         AND #$0F                  
CODE_23BE8D:        38            SEC                       
CODE_23BE8E:        E5 02         SBC $02                   
CODE_23BE90:        18            CLC                       
CODE_23BE91:        65 0F         ADC $0F                   
CODE_23BE93:        A8            TAY                       
CODE_23BE94:        98            TYA                       
CODE_23BE95:        29 F8         AND #$F8                  
CODE_23BE97:        4A            LSR A                     
CODE_23BE98:        4A            LSR A                     
CODE_23BE99:        05 0D         ORA $0D                   
CODE_23BE9B:        85 0D         STA $0D                   
CODE_23BE9D:        AD 15 04      LDA $0415                 
CODE_23BEA0:        F0 07         BEQ CODE_23BEA9           
CODE_23BEA2:        A5 0D         LDA $0D                   
CODE_23BEA4:        18            CLC                       
CODE_23BEA5:        69 40         ADC #$40                  
CODE_23BEA7:        85 0D         STA $0D                   
CODE_23BEA9:        A5 0C         LDA $0C                   
CODE_23BEAB:        29 07         AND #$07                  
CODE_23BEAD:        AA            TAX                       
CODE_23BEAE:        A4 0D         LDY $0D                   
CODE_23BEB0:        B9 04 1E      LDA $1E04,y               
CODE_23BEB3:        3D A8 AA      AND.w DATA_21AAA8,x               
CODE_23BEB6:        A6 0B         LDX $0B                   
CODE_23BEB8:        A4 0C         LDY $0C                   
CODE_23BEBA:        60            RTS                       

CODE_23BEBB:        C8            INY                       
CODE_23BEBC:        98            TYA                       
CODE_23BEBD:        29 0F         AND #$0F                  
CODE_23BEBF:        D0 12         BNE CODE_23BED3           
CODE_23BEC1:        C2 20         REP #$20                  
CODE_23BEC3:        A5 2E         LDA $2E                   
CODE_23BEC5:        18            CLC                       
CODE_23BEC6:        69 B0 01      ADC #$01B0                
CODE_23BEC9:        85 2E         STA $2E                   
CODE_23BECB:        E2 20         SEP #$20                  
CODE_23BECD:        AD 00 07      LDA $0700                 
CODE_23BED0:        29 F0         AND #$F0                  
CODE_23BED2:        A8            TAY                       
CODE_23BED3:        6B            RTL                       

CODE_23BED4:        A5 0E         LDA $0E                   
CODE_23BED6:        29 0F         AND #$0F                  
CODE_23BED8:        A8            TAY                       
CODE_23BED9:        A5 0F         LDA $0F                   
CODE_23BEDB:        99 56 1F      STA $1F56,y               
CODE_23BEDE:        AD 06 07      LDA $0706                 
CODE_23BEE1:        99 66 1F      STA $1F66,y               
CODE_23BEE4:        6B            RTL                       

DATA_23BEE5:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF

CODE_23BF00:        A5 82         LDA $82
CODE_23BF02:        C9 B8         CMP #$B8
CODE_23BF04:        B0 77         BCS CODE_23BF7D                   
CODE_23BF06:        AD 45 1A      LDA $1A45                 
CODE_23BF09:        D0 5A         BNE CODE_23BF65           
CODE_23BF0B:        85 00         STA $00                   
CODE_23BF0D:        A5 BB         LDA $BB                   
CODE_23BF0F:        F0 05         BEQ CODE_23BF16           
CODE_23BF11:        AD 6F 05      LDA $056F                 
CODE_23BF14:        F0 04         BEQ CODE_23BF1A           
CODE_23BF16:        A9 0A         LDA #$0A                  
CODE_23BF18:        85 00         STA $00                   
CODE_23BF1A:        A9 01         LDA #$01                  
CODE_23BF1C:        8D 90 1F      STA $1F90                 
CODE_23BF1F:        4A            LSR A                     
CODE_23BF20:        8D 99 1F      STA $1F99                 
CODE_23BF23:        AD FC 05      LDA $05FC                 
CODE_23BF26:        F0 10         BEQ CODE_23BF38           
CODE_23BF28:        A5 82         LDA $82                   
CODE_23BF2A:        C9 80         CMP #$80                  
CODE_23BF2C:        90 0A         BCC CODE_23BF38           
CODE_23BF2E:        A9 00         LDA #$00                  
CODE_23BF30:        EB            XBA                       
CODE_23BF31:        A9 93         LDA #$93                  
CODE_23BF33:        8D 99 1F      STA $1F99                 
CODE_23BF36:        D0 1B         BNE CODE_23BF53           
CODE_23BF38:        64 D9         STZ $D9                   
CODE_23BF3A:        A5 00         LDA $00                   
CODE_23BF3C:        85 D8         STA $D8                   
CODE_23BF3E:        10 02         BPL CODE_23BF42           
CODE_23BF40:        C6 D9         DEC $D9                   
CODE_23BF42:        A5 55         LDA $55                   
CODE_23BF44:        EB            XBA                       
CODE_23BF45:        A5 70         LDA $70                   
CODE_23BF47:        C2 20         REP #$20                  
CODE_23BF49:        18            CLC                       
CODE_23BF4A:        65 D8         ADC $D8                   
CODE_23BF4C:        29 F0 FF      AND #$FFF0                
CODE_23BF4F:        18            CLC                       
CODE_23BF50:        69 02 00      ADC #$0002                
CODE_23BF53:        E2 20         SEP #$20                  
CODE_23BF55:        8D 93 1F      STA $1F93                 
CODE_23BF58:        EB            XBA                       
CODE_23BF59:        8D 8E 05      STA $058E                 
CODE_23BF5C:        A5 5E         LDA $5E                   
CODE_23BF5E:        8D 96 1F      STA $1F96                 
CODE_23BF61:        A5 43         LDA $43                   
CODE_23BF63:        85 EF         STA $EF                   
CODE_23BF65:        A5 9D         LDA $9D                   
CODE_23BF67:        30 14         BMI CODE_23BF7D           
CODE_23BF69:        A9 00         LDA #$00                  
CODE_23BF6B:        85 9D         STA $9D                   
CODE_23BF6D:        A4 A6         LDY $A6                   
CODE_23BF6F:        F0 02         BEQ CODE_23BF73           
CODE_23BF71:        85 8B         STA $8B                   
CODE_23BF73:        A0 02         LDY #$02                  
CODE_23BF75:        B9 7C 1F      LDA $1F7C,y               
CODE_23BF78:        F0 04         BEQ CODE_23BF7E           
CODE_23BF7A:        88            DEY                       
CODE_23BF7B:        10 F8         BPL CODE_23BF75           
CODE_23BF7D:        6B            RTL                       

CODE_23BF7E:        B9 83 07      LDA $0783,y               
CODE_23BF81:        09 10         ORA #$10                  
CODE_23BF83:        99 7C 1F      STA $1F7C,y               
CODE_23BF86:        A5 70         LDA $70                   
CODE_23BF88:        79 FB E9      ADC.w DATA_21E9FB,y               
CODE_23BF8B:        99 84 1F      STA $1F84,y               
CODE_23BF8E:        A5 55         LDA $55                   
CODE_23BF90:        69 00         ADC #$00                  
CODE_23BF92:        99 80 1F      STA $1F80,y               
CODE_23BF95:        A5 5E         LDA $5E                   
CODE_23BF97:        79 FE E9      ADC.w DATA_21E9FE,y               
CODE_23BF9A:        99 8C 1F      STA $1F8C,y               
CODE_23BF9D:        A5 43         LDA $43                   
CODE_23BF9F:        69 00         ADC #$00                  
CODE_23BFA1:        99 88 1F      STA $1F88,y               
CODE_23BFA4:        4C 7A BF      JMP CODE_23BF7A           

CODE_23BFA7:        AC 0A 07      LDY $070A                 
CODE_23BFAA:        B9 45 E9      LDA.w DATA_21E945,y               
CODE_23BFAD:        8D 60 05      STA $0560                 
CODE_23BFB0:        22 67 DF 23   JSL CODE_23DF67           
CODE_23BFB4:        20 CD C0      JSR CODE_23C0CD           
CODE_23BFB7:        20 E7 C1      JSR CODE_23C1E7           
CODE_23BFBA:        AD 0A 07      LDA $070A                 
CODE_23BFBD:        C9 07         CMP #$07                  
CODE_23BFBF:        F0 0C         BEQ CODE_23BFCD           
CODE_23BFC1:        AD F3 05      LDA $05F3                 
CODE_23BFC4:        F0 0C         BEQ CODE_23BFD2           
CODE_23BFC6:        AD 50 03      LDA $0350                 
CODE_23BFC9:        C9 0B         CMP #$0B                  
CODE_23BFCB:        D0 05         BNE CODE_23BFD2           
CODE_23BFCD:        9C 28 04      STZ $0428                 
CODE_23BFD0:        80 25         BRA CODE_23BFF7           

CODE_23BFD2:        AD 28 04      LDA $0428                 
CODE_23BFD5:        F0 20         BEQ CODE_23BFF7           
CODE_23BFD7:        AD 41 1B      LDA $1B41                 
CODE_23BFDA:        C9 D5         CMP #$D5                  
CODE_23BFDC:        F0 19         BEQ CODE_23BFF7           
CODE_23BFDE:        C9 09         CMP #$09                  
CODE_23BFE0:        F0 15         BEQ CODE_23BFF7           
CODE_23BFE2:        CE 28 04      DEC $0428                 
CODE_23BFE5:        A9 E0         LDA #$E0                  
CODE_23BFE7:        8D 53 05      STA $0553                 
CODE_23BFEA:        9C C7 02      STZ $02C7                 
CODE_23BFED:        A9 03         LDA #$03                  
CODE_23BFEF:        8D C6 02      STA $02C6                 
CODE_23BFF2:        A9 0D         LDA #$0D                  
CODE_23BFF4:        8D 02 12      STA $1202                 
CODE_23BFF7:        AD 5C 05      LDA $055C                 
CODE_23BFFA:        29 F0         AND #$F0                  
CODE_23BFFC:        38            SEC                       
CODE_23BFFD:        E9 90         SBC #$90                  
CODE_23BFFF:        8D 5C 05      STA $055C                 
CODE_23C002:        20 61 C2      JSR CODE_23C261           
CODE_23C005:        AD 52 05      LDA $0552                 
CODE_23C008:        F0 18         BEQ CODE_23C022           
CODE_23C00A:        AF 86 C5 7F   LDA $7FC586               
CODE_23C00E:        F0 12         BEQ CODE_23C022           
CODE_23C010:        AF 86 C5 7F   LDA $7FC586               
CODE_23C014:        3A            DEC A                     
CODE_23C015:        8F 86 C5 7F   STA $7FC586               
CODE_23C019:        A9 02         LDA #$02                  
CODE_23C01B:        05 BF         ORA $BF                   
CODE_23C01D:        8D 56 05      STA $0556                 
CODE_23C020:        80 02         BRA CODE_23C024           

CODE_23C022:        A5 BF         LDA $BF                   ; Player death animation phase
CODE_23C024:        0D 71 05      ORA $0571                 ; 
CODE_23C027:        0D 54 05      ORA $0554                 
CODE_23C02A:        0D 55 05      ORA $0555                 
CODE_23C02D:        0D 51 05      ORA $0551                 ; Player growing/shrinking animation timer
CODE_23C030:        8D 9C 00      STA $009C                 
CODE_23C033:        D0 03         BNE CODE_23C038           
CODE_23C035:        EE 65 05      INC $0565                 
CODE_23C038:        AD 64 05      LDA $0564                 
CODE_23C03B:        C9 01         CMP #$01                  
CODE_23C03D:        D0 15         BNE CODE_23C054           
CODE_23C03F:        AD 9C 06      LDA $069C                 
CODE_23C042:        18            CLC                       
CODE_23C043:        69 05         ADC #$05                  
CODE_23C045:        8D 9C 06      STA $069C                 
CODE_23C048:        EE 22 04      INC $0422                 
CODE_23C04B:        AF 66 39 7E   LDA $7E3966               
CODE_23C04F:        1A            INC A                     
CODE_23C050:        8F 66 39 7E   STA $7E3966               
CODE_23C054:        A9 00         LDA #$00                  
CODE_23C056:        8D 85 05      STA $0585                 
CODE_23C059:        A2 07         LDX #$07                  
CODE_23C05B:        BD 10 05      LDA $0510,x               
CODE_23C05E:        F0 03         BEQ CODE_23C063           
CODE_23C060:        DE 10 05      DEC $0510,x               
CODE_23C063:        CA            DEX                       
CODE_23C064:        10 F5         BPL CODE_23C05B           
CODE_23C066:        AD 67 05      LDA $0567                 
CODE_23C069:        F0 1E         BEQ CODE_23C089           
CODE_23C06B:        C9 01         CMP #$01                  
CODE_23C06D:        D0 11         BNE CODE_23C080           
CODE_23C06F:        A0 0D         LDY #$0D                  
CODE_23C071:        AD 53 05      LDA $0553                 
CODE_23C074:        C9 20         CMP #$20                  
CODE_23C076:        B0 03         BCS CODE_23C07B                   
CODE_23C078:        AC 62 10      LDY $1062                 
CODE_23C07B:        8C 02 12      STY $1202                 
CODE_23C07E:        D0 06         BNE CODE_23C086           
CODE_23C080:        A5 15         LDA $15                   
CODE_23C082:        29 03         AND #$03                  
CODE_23C084:        D0 03         BNE CODE_23C089           
CODE_23C086:        CE 67 05      DEC $0567                 
CODE_23C089:        6B            RTL                       

CODE_23C08A:        22 37 E2 20   JSL CODE_20E237           
CODE_23C08E:        60            RTS                       

CODE_23C08F:        9C 8C 05      STZ $058C                 
CODE_23C092:        22 56 E8 20   JSL CODE_20E856           
CODE_23C096:        AD 80 02      LDA $0280                 
CODE_23C099:        F0 04         BEQ CODE_23C09F           
CODE_23C09B:        64 17         STZ $17                   
CODE_23C09D:        64 18         STZ $18                   
CODE_23C09F:        AD 14 04      LDA $0414                 
CODE_23C0A2:        C9 03         CMP #$03                  
CODE_23C0A4:        F0 20         BEQ CODE_23C0C6           
CODE_23C0A6:        AD BE 07      LDA $07BE                 
CODE_23C0A9:        C9 03         CMP #$03                  
CODE_23C0AB:        B0 19         BCS CODE_23C0C6                   
CODE_23C0AD:        AD 56 05      LDA $0556                 
CODE_23C0B0:        05 BF         ORA $BF                   
CODE_23C0B2:        0D 54 05      ORA $0554                 
CODE_23C0B5:        0D 55 05      ORA $0555                 
CODE_23C0B8:        0D 51 05      ORA $0551                 ; Player growing/shrinking animation timer
CODE_23C0BB:        0D 59 05      ORA $0559                 
CODE_23C0BE:        0D 71 05      ORA $0571                 
CODE_23C0C1:        0D 5A 05      ORA $055A                 
CODE_23C0C4:        F0 05         BEQ CODE_23C0CB           
CODE_23C0C6:        EE 8C 05      INC $058C                 
CODE_23C0C9:        68            PLA                       
CODE_23C0CA:        68            PLA                       
CODE_23C0CB:        60            RTS                       

CODE_23C0CC:        60            RTS                       

CODE_23C0CD:        A5 B9         LDA $B9                   
CODE_23C0CF:        F0 01         BEQ CODE_23C0D2           
CODE_23C0D1:        60            RTS                       

CODE_23C0D2:        8D 61 05      STA $0561                 
CODE_23C0D5:        A9 50         LDA #$50                  
CODE_23C0D7:        85 C4         STA $C4                   
CODE_23C0D9:        64 C5         STZ $C5                   
CODE_23C0DB:        AE 26 07      LDX $0726                 
CODE_23C0DE:        BD 47 07      LDA $0747,x               
CODE_23C0E1:        85 BB         STA $BB                   
CODE_23C0E3:        20 67 C4      JSR CODE_23C467           
CODE_23C0E6:        A9 40         LDA #$40                  
CODE_23C0E8:        85 BD         STA $BD                   
CODE_23C0EA:        AC 26 04      LDY $0426                 
CODE_23C0ED:        B9 01 EA      LDA.w DATA_21EA01,y               
CODE_23C0F0:        85 5E         STA $5E                   
CODE_23C0F2:        85 B9         STA $B9                   
CODE_23C0F4:        20 4C C1      JSR CODE_23C14C           
CODE_23C0F7:        AD 29 04      LDA $0429                 
CODE_23C0FA:        C9 08         CMP #$08                  
CODE_23C0FC:        D0 0A         BNE CODE_23C108           
CODE_23C0FE:        A9 7F         LDA #$7F                  
CODE_23C100:        8D 13 04      STA $0413                 
CODE_23C103:        A9 FF         LDA #$FF                  
CODE_23C105:        8D 6E 05      STA $056E                 
CODE_23C108:        20 C9 C1      JSR CODE_23C1C9           
CODE_23C10B:        AD 25 04      LDA $0425                 
CODE_23C10E:        F0 20         BEQ CODE_23C130           
CODE_23C110:        A4 55         LDY $55                   
CODE_23C112:        B9 ED CE      LDA.w DATA_21CEED,y               
CODE_23C115:        8D 42 05      STA $0542                 
CODE_23C118:        B9 FD CE      LDA.w DATA_21CEFD,y               
CODE_23C11B:        8D 43 05      STA $0543                 
CODE_23C11E:        A5 70         LDA $70                   
CODE_23C120:        A4 55         LDY $55                   
CODE_23C122:        22 D4 9F 20   JSL CODE_209FD4           
CODE_23C126:        84 55         STY $55                   
CODE_23C128:        85 70         STA $70                   
CODE_23C12A:        A9 01         LDA #$01                  
CODE_23C12C:        8D 62 05      STA $0562                 
CODE_23C12F:        60            RTS                       

CODE_23C130:        AD 16 02      LDA $0216                 
CODE_23C133:        8D 43 05      STA $0543                 
CODE_23C136:        A5 13         LDA $13                   
CODE_23C138:        8D 42 05      STA $0542                 
CODE_23C13B:        60            RTS                       

PNTR_23C13C:        dw CODE_23C173
                    dw CODE_23C167
                    dw CODE_23C174
                    dw CODE_23C17B
                    dw CODE_23C182
                    dw CODE_23C189
                    dw CODE_23C190
                    dw CODE_23C19F

CODE_23C14C:        8B            PHB
CODE_23C14D:        4B            PHK                       
CODE_23C14E:        AB            PLB                       
CODE_23C14F:        AD 45 05      LDA $0545                 
CODE_23C152:        0A            ASL A                     
CODE_23C153:        A8            TAY                       
CODE_23C154:        B9 3C C1      LDA PNTR_23C13C,y               
CODE_23C157:        85 00         STA $00                   
CODE_23C159:        B9 3D C1      LDA PNTR_23C13C+1,y               
CODE_23C15C:        85 01         STA $01                   
CODE_23C15E:        A9 00         LDA #$00                  
CODE_23C160:        8D 45 05      STA $0545                 
CODE_23C163:        AB            PLB                       
CODE_23C164:        6C 00 00      JMP ($0000)               

CODE_23C167:        A4 BB         LDY $BB                   
CODE_23C169:        B9 64 AF      LDA.w DATA_21AF64,y               
CODE_23C16C:        29 02         AND #$02                  
CODE_23C16E:        D0 03         BNE CODE_23C173           
CODE_23C170:        EE 45 05      INC $0545                 
CODE_23C173:        60            RTS                       

CODE_23C174:        A9 83         LDA #$83                  
CODE_23C176:        A0 01         LDY #$01                  
CODE_23C178:        4C BF C1      JMP CODE_23C1BF           

CODE_23C17B:        A9 82         LDA #$82                  
CODE_23C17D:        A0 02         LDY #$02                  
CODE_23C17F:        4C BF C1      JMP CODE_23C1BF           

CODE_23C182:        A9 80         LDA #$80                  
CODE_23C184:        A0 03         LDY #$03                  
CODE_23C186:        4C BF C1      JMP CODE_23C1BF           

CODE_23C189:        A9 81         LDA #$81                  
CODE_23C18B:        A0 04         LDY #$04                  
CODE_23C18D:        4C BF C1      JMP CODE_23C1BF           

CODE_23C190:        A9 01         LDA #$01                  
CODE_23C192:        8D 5A 05      STA $055A                 
CODE_23C195:        A9 06         LDA #$06                  
CODE_23C197:        8D 27 04      STA $0427                 
CODE_23C19A:        4A            LSR A                     
CODE_23C19B:        8D 16 02      STA $0216                 
CODE_23C19E:        60            RTS                       

CODE_23C19F:        A9 04         LDA #$04                  
CODE_23C1A1:        8D 5A 05      STA $055A                 
CODE_23C1A4:        A9 40         LDA #$40                  
CODE_23C1A6:        85 BD         STA $BD                   
CODE_23C1A8:        85 A6         STA $A6                   
CODE_23C1AA:        A9 90         LDA #$90                  
CODE_23C1AC:        85 9D         STA $9D                   
CODE_23C1AE:        85 5E         STA $5E                   
CODE_23C1B0:        AD 16 02      LDA $0216                 
CODE_23C1B3:        18            CLC                       
CODE_23C1B4:        69 80         ADC #$80                  
CODE_23C1B6:        85 70         STA $70                   
CODE_23C1B8:        A9 00         LDA #$00                  
CODE_23C1BA:        69 00         ADC #$00                  
CODE_23C1BC:        85 55         STA $55                   
CODE_23C1BE:        60            RTS                       

CODE_23C1BF:        8D 71 05      STA $0571                 
CODE_23C1C2:        8C 77 03      STY $0377                 
CODE_23C1C5:        22 27 C2 23   JSL CODE_23C227           
CODE_23C1C9:        A0 01         LDY #$01                  
CODE_23C1CB:        AD 0A 07      LDA $070A                 
CODE_23C1CE:        C9 03         CMP #$03                  
CODE_23C1D0:        F0 11         BEQ CODE_23C1E3           
CODE_23C1D2:        C9 0E         CMP #$0E                  
CODE_23C1D4:        F0 0D         BEQ CODE_23C1E3           
CODE_23C1D6:        C9 05         CMP #$05                  
CODE_23C1D8:        D0 07         BNE CODE_23C1E1           
CODE_23C1DA:        AD 9E 1E      LDA $1E9E                 
CODE_23C1DD:        C9 02         CMP #$02                  
CODE_23C1DF:        F0 02         BEQ CODE_23C1E3           
CODE_23C1E1:        A0 00         LDY #$00                  
CODE_23C1E3:        8C 63 05      STY $0563                 
CODE_23C1E6:        60            RTS                       

CODE_23C1E7:        AD 5F 05      LDA $055F                 
CODE_23C1EA:        F0 3A         BEQ CODE_23C226           
CODE_23C1EC:        A9 00         LDA #$00                  
CODE_23C1EE:        8D 5F 05      STA $055F                 
CODE_23C1F1:        8D 80 05      STA $0580                 
CODE_23C1F4:        8D FC 05      STA $05FC                 
CODE_23C1F7:        8D 69 05      STA $0569                 
CODE_23C1FA:        8D 61 05      STA $0561                 
CODE_23C1FD:        20 67 C4      JSR CODE_23C467           
CODE_23C200:        20 0B C1      JSR CODE_23C10B           
CODE_23C203:        20 C9 C1      JSR CODE_23C1C9           
CODE_23C206:        AD 5A 05      LDA $055A                 
CODE_23C209:        F0 0A         BEQ CODE_23C215           
CODE_23C20B:        A9 00         LDA #$00                  
CODE_23C20D:        85 8B         STA $8B                   
CODE_23C20F:        8D 45 05      STA $0545                 
CODE_23C212:        20 9F C1      JSR CODE_23C19F           
CODE_23C215:        AD 45 05      LDA $0545                 
CODE_23C218:        C9 06         CMP #$06                  
CODE_23C21A:        D0 03         BNE CODE_23C21F           
CODE_23C21C:        20 90 C1      JSR CODE_23C190           
CODE_23C21F:        22 27 C2 23   JSL CODE_23C227           
CODE_23C223:        68            PLA                       
CODE_23C224:        68            PLA                       
CODE_23C225:        6B            RTL                       

CODE_23C226:        60            RTS                       

CODE_23C227:        AD 71 05      LDA $0571                 
CODE_23C22A:        F0 34         BEQ CODE_23C260           
CODE_23C22C:        A9 04         LDA #$04                  
CODE_23C22E:        8D 00 12      STA $1200                 
CODE_23C231:        A5 5E         LDA $5E                   
CODE_23C233:        85 52         STA $52                   
CODE_23C235:        A5 70         LDA $70                   
CODE_23C237:        29 F0         AND #$F0                  
CODE_23C239:        85 53         STA $53                   
CODE_23C23B:        C6 53         DEC $53                   
CODE_23C23D:        AD 25 04      LDA $0425                 
CODE_23C240:        D0 0B         BNE CODE_23C24D           
CODE_23C242:        AD 16 02      LDA $0216                 
CODE_23C245:        8D 43 05      STA $0543                 
CODE_23C248:        A5 13         LDA $13                   
CODE_23C24A:        8D 42 05      STA $0542                 
CODE_23C24D:        AD 77 03      LDA $0377                 
CODE_23C250:        D0 05         BNE CODE_23C257           
CODE_23C252:        A9 02         LDA #$02                  
CODE_23C254:        8D 77 03      STA $0377                 
CODE_23C257:        29 0F         AND #$0F                  
CODE_23C259:        A8            TAY                       
CODE_23C25A:        B9 05 EA      LDA.w DATA_21EA05,y               
CODE_23C25D:        8D 10 05      STA $0510                 
CODE_23C260:        6B            RTL                       

CODE_23C261:        AD 78 05      LDA $0578                 
CODE_23C264:        F0 5C         BEQ CODE_23C2C2           
CODE_23C266:        C9 0F         CMP #$0F                  
CODE_23C268:        30 1C         BMI CODE_23C286           
CODE_23C26A:        C9 80         CMP #$80                  
CODE_23C26C:        D0 08         BNE CODE_23C276           
CODE_23C26E:        EE 77 05      INC $0577                 
CODE_23C271:        9C 7A 05      STZ $057A                 
CODE_23C274:        80 44         BRA CODE_23C2BA           

CODE_23C276:        C9 40         CMP #$40                  
CODE_23C278:        F0 07         BEQ CODE_23C281           
CODE_23C27A:        A9 C0         LDA #$C0                  
CODE_23C27C:        8D 7A 05      STA $057A                 
CODE_23C27F:        D0 39         BNE CODE_23C2BA           
CODE_23C281:        EE 75 05      INC $0575                 
CODE_23C284:        D0 34         BNE CODE_23C2BA           
CODE_23C286:        29 0F         AND #$0F                  
CODE_23C288:        A8            TAY                       
CODE_23C289:        A5 BB         LDA $BB                   
CODE_23C28B:        C9 02         CMP #$02                  
CODE_23C28D:        F0 04         BEQ CODE_23C293           
CODE_23C28F:        C9 03         CMP #$03                  
CODE_23C291:        D0 0F         BNE CODE_23C2A2           
CODE_23C293:        AD EE 05      LDA $05EE                 
CODE_23C296:        0D EF 05      ORA $05EF                 
CODE_23C299:        0D F0 05      ORA $05F0                 
CODE_23C29C:        F0 00         BEQ CODE_23C29E           
CODE_23C29E:        A9 20         LDA #$20                  
CODE_23C2A0:        80 02         BRA CODE_23C2A4           

CODE_23C2A2:        A9 00         LDA #$00                  
CODE_23C2A4:        8F 86 C5 7F   STA $7FC586               
CODE_23C2A8:        88            DEY                       
CODE_23C2A9:        84 BB         STY $BB                   
CODE_23C2AB:        5A            PHY                       
CODE_23C2AC:        DA            PHX                       
CODE_23C2AD:        20 62 CC      JSR CODE_23CC62           
CODE_23C2B0:        A5 BB         LDA $BB                   
CODE_23C2B2:        AE 26 07      LDX $0726                 
CODE_23C2B5:        9D 47 07      STA $0747,x               
CODE_23C2B8:        FA            PLX                       
CODE_23C2B9:        7A            PLY                       
CODE_23C2BA:        A9 00         LDA #$00                  
CODE_23C2BC:        8D 78 05      STA $0578                 
CODE_23C2BF:        20 67 C4      JSR CODE_23C467           
CODE_23C2C2:        A5 BF         LDA $BF                   
CODE_23C2C4:        0D 56 05      ORA $0556                 
CODE_23C2C7:        D0 74         BNE CODE_23C33D           
CODE_23C2C9:        AD BE 07      LDA $07BE                 
CODE_23C2CC:        C9 03         CMP #$03                  
CODE_23C2CE:        10 6D         BPL CODE_23C33D           
CODE_23C2D0:        AD 44 05      LDA $0544                 
CODE_23C2D3:        D0 1B         BNE CODE_23C2F0           
CODE_23C2D5:        A5 82         LDA $82                   
CODE_23C2D7:        29 F0         AND #$F0                  
CODE_23C2D9:        C9 C0         CMP #$C0                  
CODE_23C2DB:        D0 13         BNE CODE_23C2F0           
CODE_23C2DD:        A9 00         LDA #$00                  
CODE_23C2DF:        85 BB         STA $BB                   
CODE_23C2E1:        22 46 A5 27   JSL CODE_27A546           
CODE_23C2E5:        A9 C0         LDA #$C0                  
CODE_23C2E7:        8D 10 05      STA $0510                 
CODE_23C2EA:        A9 02         LDA #$02                  
CODE_23C2EC:        85 BF         STA $BF                   
CODE_23C2EE:        D0 4D         BNE CODE_23C33D           
CODE_23C2F0:        AD 60 01      LDA $0160                 
CODE_23C2F3:        C9 80         CMP #$80                  
CODE_23C2F5:        F0 2D         BEQ CODE_23C324           
CODE_23C2F7:        AD F3 05      LDA $05F3                 
CODE_23C2FA:        29 7F         AND #$7F                  
CODE_23C2FC:        D0 3F         BNE CODE_23C33D           
CODE_23C2FE:        AD EE 05      LDA $05EE                 
CODE_23C301:        0D EF 05      ORA $05EF                 
CODE_23C304:        0D F0 05      ORA $05F0                 
CODE_23C307:        D0 1B         BNE CODE_23C324           
CODE_23C309:        22 46 A5 27   JSL CODE_27A546           
CODE_23C30D:        A9 03         LDA #$03                  
CODE_23C30F:        85 BF         STA $BF                   
CODE_23C311:        A9 FF         LDA #$FF                  
CODE_23C313:        85 52         STA $52                   
CODE_23C315:        85 53         STA $53                   
CODE_23C317:        A9 01         LDA #$01                  
CODE_23C319:        8D 78 05      STA $0578                 
CODE_23C31C:        A9 50         LDA #$50                  
CODE_23C31E:        8D 10 05      STA $0510                 
CODE_23C321:        4C 3D C3      JMP CODE_23C33D           

CODE_23C324:        A5 79         LDA $79                   
CODE_23C326:        C9 F8         CMP #$F8                  
CODE_23C328:        90 13         BCC CODE_23C33D           
CODE_23C32A:        AD 25 04      LDA $0425                 
CODE_23C32D:        0D 59 05      ORA $0559                 
CODE_23C330:        D0 0B         BNE CODE_23C33D           
CODE_23C332:        22 46 A5 27   JSL CODE_27A546           
CODE_23C336:        A9 01         LDA #$01                  
CODE_23C338:        85 BF         STA $BF                   
CODE_23C33A:        4C 17 C3      JMP CODE_23C317           

CODE_23C33D:        20 8F C0      JSR CODE_23C08F           
CODE_23C340:        AF 07 00 70   LDA $700007               
CODE_23C344:        F0 37         BEQ CODE_23C37D           
CODE_23C346:        A5 F6         LDA $F6                   
CODE_23C348:        05 F7         ORA $F7                   
CODE_23C34A:        29 20         AND #$20                  
CODE_23C34C:        F0 0D         BEQ CODE_23C35B           
CODE_23C34E:        A9 E0         LDA #$E0                  
CODE_23C350:        8D 53 05      STA $0553                 
CODE_23C353:        A9 03         LDA #$03                  
CODE_23C355:        8D C6 02      STA $02C6                 
CODE_23C358:        9C C7 02      STZ $02C7                 
CODE_23C35B:        A5 F8         LDA $F8                   
CODE_23C35D:        05 F9         ORA $F9                   
CODE_23C35F:        29 80         AND #$80                  
CODE_23C361:        F0 08         BEQ CODE_23C36B           
CODE_23C363:        AD 3D 02      LDA $023D                 
CODE_23C366:        49 01         EOR #$01                  
CODE_23C368:        8D 3D 02      STA $023D                 
CODE_23C36B:        A5 F8         LDA $F8                   
CODE_23C36D:        05 F9         ORA $F9                   
CODE_23C36F:        29 40         AND #$40                  
CODE_23C371:        F0 0A         BEQ CODE_23C37D           
CODE_23C373:        E6 BB         INC $BB                   
CODE_23C375:        A5 BB         LDA $BB                   
CODE_23C377:        C9 07         CMP #$07                  
CODE_23C379:        D0 02         BNE CODE_23C37D           
CODE_23C37B:        64 BB         STZ $BB                   
CODE_23C37D:        AD BF 1E      LDA $1EBF                 
CODE_23C380:        C9 16         CMP #$16                  
CODE_23C382:        D0 0C         BNE CODE_23C390           
CODE_23C384:        64 F2         STZ $F2                   
CODE_23C386:        64 F6         STZ $F6                   
CODE_23C388:        64 F3         STZ $F3                   
CODE_23C38A:        64 F7         STZ $F7                   
CODE_23C38C:        64 17         STZ $17                   
CODE_23C38E:        64 18         STZ $18                   
CODE_23C390:        20 FA C4      JSR CODE_23C4FA           
CODE_23C393:        20 DE C3      JSR CODE_23C3DE           
CODE_23C396:        22 CA CF 23   JSL CODE_23CFCA           
CODE_23C39A:        22 3C A9 27   JSL CODE_27A93C           
CODE_23C39E:        20 64 D3      JSR CODE_23D364           
CODE_23C3A1:        20 10 D8      JSR CODE_23D810           
CODE_23C3A4:        20 F9 DA      JSR CODE_23DAF9           
CODE_23C3A7:        20 BC C3      JSR CODE_23C3BC           
CODE_23C3AA:        A5 BC         LDA $BC                   
CODE_23C3AC:        C9 2E         CMP #$2E                  
CODE_23C3AE:        F0 03         BEQ CODE_23C3B3           
CODE_23C3B0:        20 71 CD      JSR CODE_23CD71           
CODE_23C3B3:        20 8A C0      JSR CODE_23C08A           
CODE_23C3B6:        A9 00         LDA #$00                  
CODE_23C3B8:        8D 20 10      STA $1020                 
CODE_23C3BB:        60            RTS                       

CODE_23C3BC:        AD F3 1C      LDA $1CF3                 
CODE_23C3BF:        F0 19         BEQ CODE_23C3DA           
CODE_23C3C1:        CE F3 1C      DEC $1CF3                 
CODE_23C3C4:        29 03         AND #$03                  
CODE_23C3C6:        AC 16 02      LDY $0216                 
CODE_23C3C9:        10 02         BPL CODE_23C3CD           
CODE_23C3CB:        09 04         ORA #$04                  
CODE_23C3CD:        A8            TAY                       
CODE_23C3CE:        B9 0A EA      LDA.w DATA_21EA0A,y               
CODE_23C3D1:        48            PHA                       
CODE_23C3D2:        18            CLC                       
CODE_23C3D3:        6D 43 05      ADC $0543                 
CODE_23C3D6:        8D 43 05      STA $0543                 
CODE_23C3D9:        68            PLA                       
CODE_23C3DA:        8D F2 1C      STA $1CF2                 
CODE_23C3DD:        60            RTS                       

CODE_23C3DE:        AC 6E 05      LDY $056E                 
CODE_23C3E1:        F0 29         BEQ CODE_23C40C           
CODE_23C3E3:        C0 FF         CPY #$FF                  
CODE_23C3E5:        F0 10         BEQ CODE_23C3F7           
CODE_23C3E7:        A5 15         LDA $15                   
CODE_23C3E9:        29 01         AND #$01                  
CODE_23C3EB:        F0 04         BEQ CODE_23C3F1           
CODE_23C3ED:        88            DEY                       
CODE_23C3EE:        8C 6E 05      STY $056E                 
CODE_23C3F1:        98            TYA                       
CODE_23C3F2:        D0 03         BNE CODE_23C3F7           
CODE_23C3F4:        8C 13 04      STY $0413                 
CODE_23C3F7:        AD D8 02      LDA $02D8                 
CODE_23C3FA:        D0 0F         BNE CODE_23C40B           
CODE_23C3FC:        CE E0 02      DEC $02E0                 
CODE_23C3FF:        10 0A         BPL CODE_23C40B           
CODE_23C401:        A9 06         LDA #$06                  
CODE_23C403:        8D E0 02      STA $02E0                 
CODE_23C406:        A9 41         LDA #$41                  
CODE_23C408:        8D 00 12      STA $1200                 
CODE_23C40B:        60            RTS                       

CODE_23C40C:        AD 13 04      LDA $0413                 
CODE_23C40F:        C9 7F         CMP #$7F                  
CODE_23C411:        D0 0D         BNE CODE_23C420           
CODE_23C413:        20 F7 C3      JSR CODE_23C3F7           
CODE_23C416:        AD 7B 05      LDA $057B                 
CODE_23C419:        F0 05         BEQ CODE_23C420           
CODE_23C41B:        A0 10         LDY #$10                  
CODE_23C41D:        4C 42 C4      JMP CODE_23C442           

CODE_23C420:        AD 15 05      LDA $0515                 
CODE_23C423:        D0 26         BNE CODE_23C44B           
CODE_23C425:        38            SEC                       
CODE_23C426:        2E 13 04      ROL $0413                 
CODE_23C429:        AD 7B 05      LDA $057B                 
CODE_23C42C:        D0 06         BNE CODE_23C434           
CODE_23C42E:        6E 13 04      ROR $0413                 
CODE_23C431:        4E 13 04      LSR $0413                 
CODE_23C434:        A0 18         LDY #$18                  
CODE_23C436:        AD 13 04      LDA $0413                 
CODE_23C439:        F0 0D         BEQ CODE_23C448           
CODE_23C43B:        AD 7B 05      LDA $057B                 
CODE_23C43E:        F0 02         BEQ CODE_23C442           
CODE_23C440:        A0 08         LDY #$08                  
CODE_23C442:        8C 15 05      STY $0515                 
CODE_23C445:        4C 4B C4      JMP CODE_23C44B           

CODE_23C448:        8D 6E 05      STA $056E                 
CODE_23C44B:        A9 00         LDA #$00                  
CODE_23C44D:        8D 7B 05      STA $057B                 
CODE_23C450:        60            RTS                       

PNTR_23C451:        dw DATA_3C88A0
                    dw DATA_3C88E0
                    dw DATA_3C8920
                    dw DATA_3C88A0
                    dw DATA_3C88E0
                    dw DATA_3C88C0
                    dw DATA_3C8900
                    dw DATA_3C88C0
                    dw DATA_3C8940

CODE_23C463:        20 67 C4      JSR CODE_23C467                 
CODE_23C466:        6B            RTL                       

CODE_23C467:        A0 07         LDY #$07                  
CODE_23C469:        AD 26 07      LDA $0726                 
CODE_23C46C:        F0 09         BEQ CODE_23C477           
CODE_23C46E:        A5 BB         LDA $BB                   
CODE_23C470:        C9 02         CMP #$02                  
CODE_23C472:        D0 03         BNE CODE_23C477           
CODE_23C474:        C8            INY                       
CODE_23C475:        80 13         BRA CODE_23C48A           

CODE_23C477:        AD 7A 05      LDA $057A                 
CODE_23C47A:        D0 0E         BNE CODE_23C48A           
CODE_23C47C:        A5 BB         LDA $BB                   
CODE_23C47E:        A8            TAY                       
CODE_23C47F:        C9 03         CMP #$03                  
CODE_23C481:        F0 04         BEQ CODE_23C487           
CODE_23C483:        C9 02         CMP #$02                  
CODE_23C485:        10 03         BPL CODE_23C48A           
CODE_23C487:        AC 26 07      LDY $0726                 
CODE_23C48A:        DA            PHX                       
CODE_23C48B:        C2 30         REP #$30                  
CODE_23C48D:        98            TYA                       
CODE_23C48E:        29 FF 00      AND #$00FF                
CODE_23C491:        0A            ASL A                     
CODE_23C492:        AA            TAX                       
CODE_23C493:        BF 51 C4 23   LDA.l PNTR_23C451,x             
CODE_23C497:        8B            PHB                       
CODE_23C498:        AA            TAX                       
CODE_23C499:        A0 E0 14      LDY #$14E0                
CODE_23C49C:        A9 1F 00      LDA #$001F                
CODE_23C49F:        54 00 3C      MVN $00, DATA_3C88A0>>16  ;first data pointer in above table                 
CODE_23C4A2:        AB            PLB                       
CODE_23C4A3:        A2 1E 00      LDX #$001E                
CODE_23C4A6:        BD E0 14      LDA $14E0,x               
CODE_23C4A9:        9F 00 C5 7F   STA $7FC500,x             
CODE_23C4AD:        CA            DEX                       
CODE_23C4AE:        CA            DEX                       
CODE_23C4AF:        10 F5         BPL CODE_23C4A6           
CODE_23C4B1:        E2 30         SEP #$30                  
CODE_23C4B3:        FA            PLX                       
CODE_23C4B4:        A9 01         LDA #$01                  
CODE_23C4B6:        8D 00 15      STA $1500                 
CODE_23C4B9:        60            RTS                       

CODE_23C4BA:        A0 01         LDY #$01                  
CODE_23C4BC:        84 0E         STY $0E                   
CODE_23C4BE:        AD 84 05      LDA $0584                 
CODE_23C4C1:        3D 1E EB      AND.w DATA_21EB1E,x               
CODE_23C4C4:        D0 32         BNE CODE_23C4F8           
CODE_23C4C6:        B5 00         LDA $00,x                 
CODE_23C4C8:        0A            ASL A                     
CODE_23C4C9:        2A            ROL A                     
CODE_23C4CA:        2A            ROL A                     
CODE_23C4CB:        29 03         AND #$03                  
CODE_23C4CD:        A8            TAY                       
CODE_23C4CE:        B5 00         LDA $00,x                 
CODE_23C4D0:        D9 96 1E      CMP $1E96,y               
CODE_23C4D3:        B0 24         BCS CODE_23C4F9                   
CODE_23C4D5:        C9 D7         CMP #$D7                  
CODE_23C4D7:        D0 04         BNE CODE_23C4DD           
CODE_23C4D9:        A0 00         LDY #$00                  
CODE_23C4DB:        F0 19         BEQ CODE_23C4F6           
CODE_23C4DD:        98            TYA                       
CODE_23C4DE:        05 02         ORA $02                   
CODE_23C4E0:        A8            TAY                       
CODE_23C4E1:        B9 84 AD      LDA.w DATA_21AD84,y               
CODE_23C4E4:        A0 00         LDY #$00                  
CODE_23C4E6:        D5 00         CMP $00,x                 
CODE_23C4E8:        B0 0C         BCS CODE_23C4F6                   
CODE_23C4EA:        C8            INY                       
CODE_23C4EB:        B5 00         LDA $00,x                 
CODE_23C4ED:        C9 E0         CMP #$E0                  
CODE_23C4EF:        F0 04         BEQ CODE_23C4F5           
CODE_23C4F1:        C9 E1         CMP #$E1                  
CODE_23C4F3:        D0 01         BNE CODE_23C4F6           
CODE_23C4F5:        C8            INY                       
CODE_23C4F6:        84 0E         STY $0E                   
CODE_23C4F8:        18            CLC                       
CODE_23C4F9:        60            RTS                       

CODE_23C4FA:        AF 07 00 70   LDA $700007               
CODE_23C4FE:        F0 38         BEQ CODE_23C538           
CODE_23C500:        AD 3D 02      LDA $023D                 
CODE_23C503:        F0 33         BEQ CODE_23C538           
CODE_23C505:        64 8B         STZ $8B                   
CODE_23C507:        64 9D         STZ $9D                   
CODE_23C509:        A2 C0         LDX #$C0                  
CODE_23C50B:        A5 F2         LDA $F2                   
CODE_23C50D:        05 F3         ORA $F3                   
CODE_23C50F:        29 03         AND #$03                  
CODE_23C511:        F0 08         BEQ CODE_23C51B           
CODE_23C513:        29 02         AND #$02                  
CODE_23C515:        D0 02         BNE CODE_23C519           
CODE_23C517:        A2 30         LDX #$30                  
CODE_23C519:        86 8B         STX $8B                   
CODE_23C51B:        A2 C0         LDX #$C0                  
CODE_23C51D:        A5 F2         LDA $F2                   
CODE_23C51F:        05 F3         ORA $F3                   
CODE_23C521:        29 0C         AND #$0C                  
CODE_23C523:        F0 08         BEQ CODE_23C52D           
CODE_23C525:        29 08         AND #$08                  
CODE_23C527:        D0 02         BNE CODE_23C52B           
CODE_23C529:        A2 30         LDX #$30                  
CODE_23C52B:        86 9D         STX $9D                   
CODE_23C52D:        22 53 DE 23   JSL CODE_23DE53           
CODE_23C531:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_23C535:        4C 8A C0      JMP CODE_23C08A           

CODE_23C538:        A5 BD         LDA $BD                   
CODE_23C53A:        8D 6C 05      STA $056C                 
CODE_23C53D:        AD 59 05      LDA $0559                 
CODE_23C540:        D0 08         BNE CODE_23C54A           
CODE_23C542:        AD F4 1C      LDA $1CF4                 
CODE_23C545:        F0 0B         BEQ CODE_23C552           
CODE_23C547:        CE F4 1C      DEC $1CF4                 
CODE_23C54A:        A9 00         LDA #$00                  
CODE_23C54C:        85 8B         STA $8B                   
CODE_23C54E:        85 17         STA $17                   
CODE_23C550:        85 18         STA $18                   
CODE_23C552:        AD 45 05      LDA $0545                 
CODE_23C555:        F0 06         BEQ CODE_23C55D           
CODE_23C557:        A5 18         LDA $18                   
CODE_23C559:        29 BF         AND #$BF                  
CODE_23C55B:        85 18         STA $18                   
CODE_23C55D:        A4 BB         LDY $BB                   
CODE_23C55F:        F0 18         BEQ CODE_23C579           
CODE_23C561:        C0 04         CPY #$04                  
CODE_23C563:        F0 14         BEQ CODE_23C579           
CODE_23C565:        AD A4 06      LDA $06A4                 
CODE_23C568:        0D 45 05      ORA $0545                 
CODE_23C56B:        0D 77 05      ORA $0577                 
CODE_23C56E:        D0 09         BNE CODE_23C579           
CODE_23C570:        A5 A6         LDA $A6                   
CODE_23C572:        F0 13         BEQ CODE_23C587           
CODE_23C574:        AD 75 05      LDA $0575                 
CODE_23C577:        F0 07         BEQ CODE_23C580           
CODE_23C579:        A9 00         LDA #$00                  
CODE_23C57B:        8D 6F 05      STA $056F                 
CODE_23C57E:        F0 21         BEQ CODE_23C5A1           
CODE_23C580:        AD 6F 05      LDA $056F                 
CODE_23C583:        D0 19         BNE CODE_23C59E           
CODE_23C585:        F0 1A         BEQ CODE_23C5A1           
CODE_23C587:        A9 00         LDA #$00                  
CODE_23C589:        8D 6F 05      STA $056F                 
CODE_23C58C:        AD 63 05      LDA $0563                 
CODE_23C58F:        F0 05         BEQ CODE_23C596           
CODE_23C591:        AD 69 05      LDA $0569                 
CODE_23C594:        D0 0B         BNE CODE_23C5A1           
CODE_23C596:        A5 17         LDA $17                   
CODE_23C598:        29 0F         AND #$0F                  
CODE_23C59A:        C9 04         CMP #$04                  
CODE_23C59C:        D0 03         BNE CODE_23C5A1           
CODE_23C59E:        8C 6F 05      STY $056F                 
CODE_23C5A1:        A0 14         LDY #$14                  
CODE_23C5A3:        A5 BB         LDA $BB                   
CODE_23C5A5:        F0 07         BEQ CODE_23C5AE           
CODE_23C5A7:        AD 6F 05      LDA $056F                 
CODE_23C5AA:        D0 02         BNE CODE_23C5AE           
CODE_23C5AC:        A0 0A         LDY #$0A                  
CODE_23C5AE:        84 09         STY $09                   
CODE_23C5B0:        A9 08         LDA #$08                  
CODE_23C5B2:        85 0A         STA $0A                   
CODE_23C5B4:        22 B6 D2 23   JSL CODE_23D2B6           
CODE_23C5B8:        8D 02 06      STA $0602                 
CODE_23C5BB:        85 00         STA $00                   
CODE_23C5BD:        AD 03 06      LDA $0603                 
CODE_23C5C0:        85 01         STA $01                   
CODE_23C5C2:        AD 88 05      LDA $0588                 
CODE_23C5C5:        8D 87 05      STA $0587                 
CODE_23C5C8:        F0 20         BEQ CODE_23C5EA           
CODE_23C5CA:        A5 15         LDA $15                   
CODE_23C5CC:        4A            LSR A                     
CODE_23C5CD:        90 03         BCC CODE_23C5D2           
CODE_23C5CF:        CE 88 05      DEC $0588                 
CODE_23C5D2:        A0 00         LDY #$00                  
CODE_23C5D4:        A5 00         LDA $00                   
CODE_23C5D6:        C9 41         CMP #$41                  
CODE_23C5D8:        F0 0D         BEQ CODE_23C5E7           
CODE_23C5DA:        C9 80         CMP #$80                  
CODE_23C5DC:        F0 09         BEQ CODE_23C5E7           
CODE_23C5DE:        C8            INY                       
CODE_23C5DF:        AD 88 05      LDA $0588                 
CODE_23C5E2:        D0 03         BNE CODE_23C5E7           
CODE_23C5E4:        8C 88 05      STY $0588                 
CODE_23C5E7:        8C 87 05      STY $0587                 
CODE_23C5EA:        A5 00         LDA $00                   
CODE_23C5EC:        29 C0         AND #$C0                  
CODE_23C5EE:        0A            ASL A                     
CODE_23C5EF:        2A            ROL A                     
CODE_23C5F0:        2A            ROL A                     
CODE_23C5F1:        A8            TAY                       
CODE_23C5F2:        A5 00         LDA $00                   
CODE_23C5F4:        D9 9A 1E      CMP $1E9A,y               
CODE_23C5F7:        90 20         BCC CODE_23C619           
CODE_23C5F9:        A5 A6         LDA $A6                   
CODE_23C5FB:        0D 75 05      ORA $0575                 
CODE_23C5FE:        0D 71 05      ORA $0571                 
CODE_23C601:        D0 16         BNE CODE_23C619           
CODE_23C603:        85 8B         STA $8B                   
CODE_23C605:        85 18         STA $18                   
CODE_23C607:        29 7F         AND #$7F                  
CODE_23C609:        85 18         STA $18                   
CODE_23C60B:        A9 01         LDA #$01                  
CODE_23C60D:        8D 85 05      STA $0585                 
CODE_23C610:        18            CLC                       
CODE_23C611:        65 5E         ADC $5E                   
CODE_23C613:        85 5E         STA $5E                   
CODE_23C615:        90 02         BCC CODE_23C619           
CODE_23C617:        E6 43         INC $43                   
CODE_23C619:        AD 60 05      LDA $0560                 
CODE_23C61C:        0A            ASL A                     
CODE_23C61D:        0A            ASL A                     
CODE_23C61E:        85 02         STA $02                   
CODE_23C620:        A2 00         LDX #$00                  
CODE_23C622:        20 BA C4      JSR CODE_23C4BA           
CODE_23C625:        B0 03         BCS CODE_23C62A                   
CODE_23C627:        98            TYA                       
CODE_23C628:        D0 54         BNE CODE_23C67E           
CODE_23C62A:        AD 75 05      LDA $0575                 
CODE_23C62D:        F0 65         BEQ CODE_23C694           
CODE_23C62F:        A5 A6         LDA $A6                   
CODE_23C631:        D0 04         BNE CODE_23C637           
CODE_23C633:        B0 5F         BCS CODE_23C694                   
CODE_23C635:        90 40         BCC CODE_23C677           
CODE_23C637:        B0 04         BCS CODE_23C63D                   
CODE_23C639:        A5 9D         LDA $9D                   
CODE_23C63B:        30 11         BMI CODE_23C64E           
CODE_23C63D:        6A            ROR A                     
CODE_23C63E:        85 0F         STA $0F                   
CODE_23C640:        A2 01         LDX #$01                  
CODE_23C642:        20 BA C4      JSR CODE_23C4BA           
CODE_23C645:        B0 03         BCS CODE_23C64A                   
CODE_23C647:        98            TYA                       
CODE_23C648:        F0 2D         BEQ CODE_23C677           
CODE_23C64A:        A5 0F         LDA $0F                   
CODE_23C64C:        30 30         BMI CODE_23C67E           
CODE_23C64E:        A4 9D         LDY $9D                   
CODE_23C650:        C0 F4         CPY #$F4                  
CODE_23C652:        10 02         BPL CODE_23C656           
CODE_23C654:        A0 F4         LDY #$F4                  
CODE_23C656:        A5 15         LDA $15                   
CODE_23C658:        29 07         AND #$07                  
CODE_23C65A:        D0 01         BNE CODE_23C65D           
CODE_23C65C:        C8            INY                       
CODE_23C65D:        84 9D         STY $9D                   
CODE_23C65F:        A5 18         LDA $18                   
CODE_23C661:        29 7F         AND #$7F                  
CODE_23C663:        85 18         STA $18                   
CODE_23C665:        A5 17         LDA $17                   
CODE_23C667:        A8            TAY                       
CODE_23C668:        29 F7         AND #$F7                  
CODE_23C66A:        85 17         STA $17                   
CODE_23C66C:        98            TYA                       
CODE_23C66D:        29 88         AND #$88                  
CODE_23C66F:        C9 88         CMP #$88                  
CODE_23C671:        D0 21         BNE CODE_23C694           
CODE_23C673:        A9 CC         LDA #$CC                  
CODE_23C675:        85 9D         STA $9D                   
CODE_23C677:        A0 00         LDY #$00                  
CODE_23C679:        8C 76 05      STY $0576                 
CODE_23C67C:        F0 07         BEQ CODE_23C685           
CODE_23C67E:        A4 0E         LDY $0E                   
CODE_23C680:        CC 75 05      CPY $0575                 
CODE_23C683:        F0 0F         BEQ CODE_23C694           
CODE_23C685:        98            TYA                       
CODE_23C686:        0D 75 05      ORA $0575                 
CODE_23C689:        8C 75 05      STY $0575                 
CODE_23C68C:        C9 02         CMP #$02                  
CODE_23C68E:        F0 04         BEQ CODE_23C694           
CODE_23C690:        22 00 BF 23   JSL CODE_23BF00           
CODE_23C694:        A5 BD         LDA $BD                   
CODE_23C696:        29 7F         AND #$7F                  
CODE_23C698:        85 BD         STA $BD                   
CODE_23C69A:        A2 00         LDX #$00                  
CODE_23C69C:        AC 60 05      LDY $0560                 
CODE_23C69F:        A9 43         LDA #$43                  
CODE_23C6A1:        38            SEC                       
CODE_23C6A2:        E5 00         SBC $00                   
CODE_23C6A4:        F0 09         BEQ CODE_23C6AF           
CODE_23C6A6:        C0 01         CPY #$01                  
CODE_23C6A8:        D0 5A         BNE CODE_23C704           
CODE_23C6AA:        C9 01         CMP #$01                  
CODE_23C6AC:        D0 56         BNE CODE_23C704           
CODE_23C6AE:        E8            INX                       
CODE_23C6AF:        A5 18         LDA $18                   
CODE_23C6B1:        29 08         AND #$08                  
CODE_23C6B3:        F0 4F         BEQ CODE_23C704           
CODE_23C6B5:        A5 A6         LDA $A6                   
CODE_23C6B7:        D0 4B         BNE CODE_23C704           
CODE_23C6B9:        A0 01         LDY #$01                  
CODE_23C6BB:        AD 79 03      LDA $0379                 
CODE_23C6BE:        F0 02         BEQ CODE_23C6C2           
CODE_23C6C0:        A0 03         LDY #$03                  
CODE_23C6C2:        8C 14 04      STY $0414                 
CODE_23C6C5:        9C 13 07      STZ $0713                 
CODE_23C6C8:        64 8B         STZ $8B                   
CODE_23C6CA:        9C 4E 03      STZ $034E                 
CODE_23C6CD:        E0 01         CPX #$01                  
CODE_23C6CF:        F0 33         BEQ CODE_23C704           
CODE_23C6D1:        A5 43         LDA $43                   
CODE_23C6D3:        85 D9         STA $D9                   
CODE_23C6D5:        EB            XBA                       
CODE_23C6D6:        A5 5E         LDA $5E                   
CODE_23C6D8:        85 D8         STA $D8                   
CODE_23C6DA:        C2 30         REP #$30                  
CODE_23C6DC:        A0 00 00      LDY #$0000                
CODE_23C6DF:        29 08 00      AND #$0008                
CODE_23C6E2:        F0 03         BEQ CODE_23C6E7           
CODE_23C6E4:        A0 10 00      LDY #$0010                
CODE_23C6E7:        98            TYA                       
CODE_23C6E8:        18            CLC                       
CODE_23C6E9:        65 D8         ADC $D8                   
CODE_23C6EB:        29 F0 FF      AND #$FFF0                
CODE_23C6EE:        E2 30         SEP #$30                  
CODE_23C6F0:        85 5E         STA $5E                   
CODE_23C6F2:        EB            XBA                       
CODE_23C6F3:        85 43         STA $43                   
CODE_23C6F5:        A0 01         LDY #$01                  
CODE_23C6F7:        8C 4E 03      STY $034E                 
CODE_23C6FA:        A0 0F         LDY #$0F                  
CODE_23C6FC:        8C 03 12      STY $1203                 
CODE_23C6FF:        DA            PHX                       
CODE_23C700:        20 B6 DE      JSR CODE_23DEB6           
CODE_23C703:        FA            PLX                       
CODE_23C704:        AD 75 05      LDA $0575                 
CODE_23C707:        0D A4 06      ORA $06A4                 
CODE_23C70A:        0D 77 05      ORA $0577                 
CODE_23C70D:        D0 19         BNE CODE_23C728           
CODE_23C70F:        A5 00         LDA $00                   
CODE_23C711:        C9 85         CMP #$85                  
CODE_23C713:        D0 13         BNE CODE_23C728           
CODE_23C715:        AD 6B 05      LDA $056B                 
CODE_23C718:        D0 16         BNE CODE_23C730           
CODE_23C71A:        A5 17         LDA $17                   
CODE_23C71C:        29 0C         AND #$0C                  
CODE_23C71E:        F0 08         BEQ CODE_23C728           
CODE_23C720:        A4 A6         LDY $A6                   
CODE_23C722:        D0 0C         BNE CODE_23C730           
CODE_23C724:        29 08         AND #$08                  
CODE_23C726:        D0 08         BNE CODE_23C730           
CODE_23C728:        A9 00         LDA #$00                  
CODE_23C72A:        8D 6B 05      STA $056B                 
CODE_23C72D:        4C 9F C7      JMP CODE_23C79F           

CODE_23C730:        A9 01         LDA #$01                  
CODE_23C732:        8D 6B 05      STA $056B                 
CODE_23C735:        A9 00         LDA #$00                  
CODE_23C737:        85 8B         STA $8B                   
CODE_23C739:        85 9D         STA $9D                   
CODE_23C73B:        A0 10         LDY #$10                  
CODE_23C73D:        A5 17         LDA $17                   
CODE_23C73F:        29 0C         AND #$0C                  
CODE_23C741:        F0 2B         BEQ CODE_23C76E           
CODE_23C743:        29 08         AND #$08                  
CODE_23C745:        F0 25         BEQ CODE_23C76C           
CODE_23C747:        A5 15         LDA $15                   
CODE_23C749:        29 07         AND #$07                  
CODE_23C74B:        D0 05         BNE CODE_23C752           
CODE_23C74D:        A9 30         LDA #$30                  
CODE_23C74F:        8D 00 12      STA $1200                 
CODE_23C752:        A0 10         LDY #$10                  
CODE_23C754:        A5 BB         LDA $BB                   
CODE_23C756:        F0 02         BEQ CODE_23C75A           
CODE_23C758:        A0 00         LDY #$00                  
CODE_23C75A:        84 09         STY $09                   
CODE_23C75C:        A9 08         LDA #$08                  
CODE_23C75E:        85 0A         STA $0A                   
CODE_23C760:        22 B6 D2 23   JSL CODE_23D2B6           
CODE_23C764:        C9 85         CMP #$85                  
CODE_23C766:        D0 06         BNE CODE_23C76E           
CODE_23C768:        A0 F0         LDY #$F0                  
CODE_23C76A:        84 A6         STY $A6                   
CODE_23C76C:        84 9D         STY $9D                   
CODE_23C76E:        A0 10         LDY #$10                  
CODE_23C770:        A5 17         LDA $17                   
CODE_23C772:        29 03         AND #$03                  
CODE_23C774:        F0 08         BEQ CODE_23C77E           
CODE_23C776:        29 02         AND #$02                  
CODE_23C778:        F0 02         BEQ CODE_23C77C           
CODE_23C77A:        A0 F0         LDY #$F0                  
CODE_23C77C:        84 8B         STY $8B                   
CODE_23C77E:        AD 6B 05      LDA $056B                 
CODE_23C781:        F0 0D         BEQ CODE_23C790           
CODE_23C783:        A5 A6         LDA $A6                   
CODE_23C785:        D0 09         BNE CODE_23C790           
CODE_23C787:        A5 17         LDA $17                   
CODE_23C789:        29 0C         AND #$0C                  
CODE_23C78B:        D0 03         BNE CODE_23C790           
CODE_23C78D:        8D 6B 05      STA $056B                 
CODE_23C790:        22 53 DE 23   JSL CODE_23DE53           
CODE_23C794:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_23C798:        20 CA CE      JSR CODE_23CECA           
CODE_23C79B:        20 8A C0      JSR CODE_23C08A           
CODE_23C79E:        60            RTS                       

CODE_23C79F:        AD 69 05      LDA $0569                 
CODE_23C7A2:        F0 08         BEQ CODE_23C7AC           
CODE_23C7A4:        A5 8B         LDA $8B                   
CODE_23C7A6:        18            CLC                       
CODE_23C7A7:        6D 69 05      ADC $0569                 
CODE_23C7AA:        85 8B         STA $8B                   
CODE_23C7AC:        22 53 DE 23   JSL CODE_23DE53           
CODE_23C7B0:        AD 69 05      LDA $0569                 
CODE_23C7B3:        F0 08         BEQ CODE_23C7BD           
CODE_23C7B5:        A5 8B         LDA $8B                   
CODE_23C7B7:        38            SEC                       
CODE_23C7B8:        ED 69 05      SBC $0569                 
CODE_23C7BB:        85 8B         STA $8B                   
CODE_23C7BD:        A9 00         LDA #$00                  
CODE_23C7BF:        8D 69 05      STA $0569                 
CODE_23C7C2:        A0 02         LDY #$02                  
CODE_23C7C4:        A5 8B         LDA $8B                   
CODE_23C7C6:        10 05         BPL CODE_23C7CD           
CODE_23C7C8:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23C7CC:        88            DEY                       
CODE_23C7CD:        D0 01         BNE CODE_23C7D0           
CODE_23C7CF:        A8            TAY                       
CODE_23C7D0:        85 02         STA $02                   
CODE_23C7D2:        8C 73 05      STY $0573                 
CODE_23C7D5:        A5 A6         LDA $A6                   
CODE_23C7D7:        F0 10         BEQ CODE_23C7E9           
CODE_23C7D9:        A5 55         LDA $55                   
CODE_23C7DB:        10 08         BPL CODE_23C7E5           
CODE_23C7DD:        A5 70         LDA $70                   
CODE_23C7DF:        30 04         BMI CODE_23C7E5           
CODE_23C7E1:        A5 9D         LDA $9D                   
CODE_23C7E3:        30 04         BMI CODE_23C7E9           
CODE_23C7E5:        22 A3 DE 23   JSL CODE_23DEA3           
CODE_23C7E9:        20 62 CC      JSR CODE_23CC62           
CODE_23C7EC:        AD 77 05      LDA $0577                 
CODE_23C7EF:        F0 04         BEQ CODE_23C7F5           
CODE_23C7F1:        A9 0E         LDA #$0E                  
CODE_23C7F3:        D0 0A         BNE CODE_23C7FF           
CODE_23C7F5:        A5 BB         LDA $BB                   
CODE_23C7F7:        AC 75 05      LDY $0575                 
CODE_23C7FA:        F0 03         BEQ CODE_23C7FF           
CODE_23C7FC:        18            CLC                       
CODE_23C7FD:        69 07         ADC #$07                  
CODE_23C7FF:        DA            PHX                       
CODE_23C800:        0A            ASL A                     
CODE_23C801:        AA            TAX                       
CODE_23C802:        8B            PHB                       
CODE_23C803:        4B            PHK                       
CODE_23C804:        AB            PLB                       
CODE_23C805:        BF 16 C8 23   LDA.l PNTR_23C816,x             
CODE_23C809:        85 00         STA $00                   
CODE_23C80B:        BF 17 C8 23   LDA.l PNTR_23C816+1,x             
CODE_23C80F:        85 01         STA $01                   
CODE_23C811:        AB            PLB                       
CODE_23C812:        FA            PLX                       
CODE_23C813:        6C 00 00      JMP ($0000)               

PNTR_23C816:        dw CODE_23C834
                    dw CODE_23C85F
                    dw CODE_23C86A
                    dw CODE_23C884
                    dw CODE_23C892
                    dw CODE_23C972
                    dw CODE_23C86A
                    dw CODE_23C855
                    dw CODE_23C855
                    dw CODE_23C877
                    dw CODE_23C855
                    dw CODE_23C8D2
                    dw CODE_23C982
                    dw CODE_23C877
                    dw CODE_23C98F

CODE_23C834:        20 D8 C9      JSR CODE_23C9D8
CODE_23C837:        20 B6 CA      JSR CODE_23CAB6
CODE_23C83A:        AD 8A 05      LDA $058A                 
CODE_23C83D:        4A            LSR A                     
CODE_23C83E:        B0 14         BCS CODE_23C854                   
CODE_23C840:        AD 1F 10      LDA $101F                 
CODE_23C843:        D0 0F         BNE CODE_23C854           
CODE_23C845:        A5 A6         LDA $A6                   
CODE_23C847:        F0 0B         BEQ CODE_23C854           
CODE_23C849:        A9 80         LDA #$80                  
CODE_23C84B:        AC 6E 05      LDY $056E                 
CODE_23C84E:        F0 02         BEQ CODE_23C852           
CODE_23C850:        A9 9C         LDA #$9C                  
CODE_23C852:        85 BC         STA $BC                   
CODE_23C854:        60            RTS                       

CODE_23C855:        20 96 CA      JSR CODE_23CA96           
CODE_23C858:        20 BB CB      JSR CODE_23CBBB           
CODE_23C85B:        20 08 CC      JSR CODE_23CC08           
CODE_23C85E:        60            RTS                       

CODE_23C85F:        20 D8 C9      JSR CODE_23C9D8           
CODE_23C862:        20 B6 CA      JSR CODE_23CAB6           
CODE_23C865:        20 4E CF      JSR CODE_23CF4E           
CODE_23C868:        60            RTS                       

CODE_23C869:        60            RTS                       

CODE_23C86A:        20 D8 C9      JSR CODE_23C9D8           
CODE_23C86D:        20 B6 CA      JSR CODE_23CAB6           
CODE_23C870:        20 4E CF      JSR CODE_23CF4E           
CODE_23C873:        20 B5 CF      JSR CODE_23CFB5           
CODE_23C876:        60            RTS                       

CODE_23C877:        20 96 CA      JSR CODE_23CA96           
CODE_23C87A:        20 BB CB      JSR CODE_23CBBB           
CODE_23C87D:        20 08 CC      JSR CODE_23CC08           
CODE_23C880:        20 B5 CF      JSR CODE_23CFB5           
CODE_23C883:        60            RTS                       

CODE_23C884:        20 D8 C9      JSR CODE_23C9D8           
CODE_23C887:        20 B6 CA      JSR CODE_23CAB6           
CODE_23C88A:        20 E6 CE      JSR CODE_23CEE6           
CODE_23C88D:        20 74 CF      JSR CODE_23CF74           
CODE_23C890:        60            RTS                       

CODE_23C891:        60            RTS                       

CODE_23C892:        20 D8 C9      JSR CODE_23C9D8           
CODE_23C895:        20 B6 CA      JSR CODE_23CAB6           
CODE_23C898:        AD A4 06      LDA $06A4                 
CODE_23C89B:        D0 34         BNE CODE_23C8D1           
CODE_23C89D:        A5 A6         LDA $A6                   
CODE_23C89F:        F0 10         BEQ CODE_23C8B1           
CODE_23C8A1:        AD 8A 05      LDA $058A                 
CODE_23C8A4:        4A            LSR A                     
CODE_23C8A5:        B0 0A         BCS CODE_23C8B1                   
CODE_23C8A7:        A9 00         LDA #$00                  
CODE_23C8A9:        8D 13 05      STA $0513                 
CODE_23C8AC:        A0 01         LDY #$01                  
CODE_23C8AE:        4C CC C8      JMP CODE_23C8CC           

CODE_23C8B1:        AD 13 05      LDA $0513                 
CODE_23C8B4:        D0 12         BNE CODE_23C8C8           
CODE_23C8B6:        85 8B         STA $8B                   
CODE_23C8B8:        A5 17         LDA $17                   
CODE_23C8BA:        29 03         AND #$03                  
CODE_23C8BC:        F0 0A         BEQ CODE_23C8C8           
CODE_23C8BE:        A9 40         LDA #$40                  
CODE_23C8C0:        8D 00 12      STA $1200                 
CODE_23C8C3:        A9 1F         LDA #$1F                  
CODE_23C8C5:        8D 13 05      STA $0513                 
CODE_23C8C8:        4A            LSR A                     
CODE_23C8C9:        4A            LSR A                     
CODE_23C8CA:        4A            LSR A                     
CODE_23C8CB:        A8            TAY                       
CODE_23C8CC:        B9 AE E9      LDA.w DATA_21E9AE,y               
CODE_23C8CF:        85 BC         STA $BC                   
CODE_23C8D1:        60            RTS                       

CODE_23C8D2:        A2 FF         LDX #$FF                  
CODE_23C8D4:        A5 17         LDA $17                   
CODE_23C8D6:        29 0C         AND #$0C                  
CODE_23C8D8:        F0 26         BEQ CODE_23C900           
CODE_23C8DA:        85 A6         STA $A6                   
CODE_23C8DC:        4A            LSR A                     
CODE_23C8DD:        4A            LSR A                     
CODE_23C8DE:        4A            LSR A                     
CODE_23C8DF:        AA            TAX                       
CODE_23C8E0:        BD 2D EB      LDA.w DATA_21EB2D,x               
CODE_23C8E3:        10 07         BPL CODE_23C8EC           
CODE_23C8E5:        AC 44 05      LDY $0544                 
CODE_23C8E8:        10 02         BPL CODE_23C8EC           
CODE_23C8EA:        A9 00         LDA #$00                  
CODE_23C8EC:        A4 17         LDY $17                   
CODE_23C8EE:        10 01         BPL CODE_23C8F1           
CODE_23C8F0:        0A            ASL A                     
CODE_23C8F1:        C9 E1         CMP #$E1                  
CODE_23C8F3:        90 06         BCC CODE_23C8FB           
CODE_23C8F5:        A4 A6         LDY $A6                   
CODE_23C8F7:        D0 02         BNE CODE_23C8FB           
CODE_23C8F9:        A9 E0         LDA #$E0                  
CODE_23C8FB:        85 9D         STA $9D                   
CODE_23C8FD:        4C 0D C9      JMP CODE_23C90D           

CODE_23C900:        A4 9D         LDY $9D                   
CODE_23C902:        F0 09         BEQ CODE_23C90D           
CODE_23C904:        C8            INY                       
CODE_23C905:        A5 9D         LDA $9D                   
CODE_23C907:        30 02         BMI CODE_23C90B           
CODE_23C909:        88            DEY                       
CODE_23C90A:        88            DEY                       
CODE_23C90B:        84 9D         STY $9D                   
CODE_23C90D:        A5 17         LDA $17                   
CODE_23C90F:        29 03         AND #$03                  
CODE_23C911:        F0 10         BEQ CODE_23C923           
CODE_23C913:        4A            LSR A                     
CODE_23C914:        A8            TAY                       
CODE_23C915:        B9 2D EB      LDA.w DATA_21EB2D,y               
CODE_23C918:        A4 17         LDY $17                   
CODE_23C91A:        10 01         BPL CODE_23C91D           
CODE_23C91C:        0A            ASL A                     
CODE_23C91D:        85 8B         STA $8B                   
CODE_23C91F:        A2 02         LDX #$02                  
CODE_23C921:        D0 18         BNE CODE_23C93B           
CODE_23C923:        A4 8B         LDY $8B                   
CODE_23C925:        F0 0C         BEQ CODE_23C933           
CODE_23C927:        C8            INY                       
CODE_23C928:        A5 8B         LDA $8B                   
CODE_23C92A:        30 02         BMI CODE_23C92E           
CODE_23C92C:        88            DEY                       
CODE_23C92D:        88            DEY                       
CODE_23C92E:        84 8B         STY $8B                   
CODE_23C930:        4C 3B C9      JMP CODE_23C93B           

CODE_23C933:        A5 A6         LDA $A6                   
CODE_23C935:        D0 04         BNE CODE_23C93B           
CODE_23C937:        A9 2A         LDA #$2A                  
CODE_23C939:        D0 34         BNE CODE_23C96F           
CODE_23C93B:        8A            TXA                       
CODE_23C93C:        30 26         BMI CODE_23C964           
CODE_23C93E:        A5 15         LDA $15                   
CODE_23C940:        4A            LSR A                     
CODE_23C941:        4A            LSR A                     
CODE_23C942:        A0 00         LDY #$00                  
CODE_23C944:        24 17         BIT $17                   
CODE_23C946:        30 02         BMI CODE_23C94A           
CODE_23C948:        4A            LSR A                     
CODE_23C949:        C8            INY                       
CODE_23C94A:        29 07         AND #$07                  
CODE_23C94C:        A8            TAY                       
CODE_23C94D:        D0 0C         BNE CODE_23C95B           
CODE_23C94F:        A5 15         LDA $15                   
CODE_23C951:        39 20 EB      AND.w DATA_21EB20,y               
CODE_23C954:        D0 05         BNE CODE_23C95B           
CODE_23C956:        A9 0E         LDA #$0E                  
CODE_23C958:        8D 00 12      STA $1200                 
CODE_23C95B:        BD 22 EB      LDA.w DATA_21EB22,x               
CODE_23C95E:        18            CLC                       
CODE_23C95F:        79 25 EB      ADC.w DATA_21EB25,y               
CODE_23C962:        D0 0B         BNE CODE_23C96F           
CODE_23C964:        A0 3E         LDY #$3E                  
CODE_23C966:        A5 15         LDA $15                   
CODE_23C968:        29 08         AND #$08                  
CODE_23C96A:        F0 02         BEQ CODE_23C96E           
CODE_23C96C:        C8            INY                       
CODE_23C96D:        C8            INY                       
CODE_23C96E:        98            TYA                       
CODE_23C96F:        85 BC         STA $BC                   
CODE_23C971:        60            RTS                       

CODE_23C972:        20 61 CE      JSR CODE_23CE61           
CODE_23C975:        20 D8 C9      JSR CODE_23C9D8           
CODE_23C978:        20 B6 CA      JSR CODE_23CAB6           
CODE_23C97B:        20 E6 CE      JSR CODE_23CEE6           
CODE_23C97E:        20 74 CF      JSR CODE_23CF74           
CODE_23C981:        60            RTS                       

CODE_23C982:        20 61 CE      JSR CODE_23CE61           
CODE_23C985:        20 96 CA      JSR CODE_23CA96           
CODE_23C988:        20 BB CB      JSR CODE_23CBBB           
CODE_23C98B:        20 08 CC      JSR CODE_23CC08           
CODE_23C98E:        60            RTS                       

CODE_23C98F:        20 D8 C9      JSR CODE_23C9D8           
CODE_23C992:        20 B6 CA      JSR CODE_23CAB6           
CODE_23C995:        A5 A6         LDA $A6                   
CODE_23C997:        D0 03         BNE CODE_23C99C           
CODE_23C999:        8D 50 05      STA $0550                 
CODE_23C99C:        AD 50 05      LDA $0550                 
CODE_23C99F:        D0 13         BNE CODE_23C9B4           
CODE_23C9A1:        A5 A6         LDA $A6                   
CODE_23C9A3:        D0 1D         BNE CODE_23C9C2           
CODE_23C9A5:        A5 17         LDA $17                   
CODE_23C9A7:        29 03         AND #$03                  
CODE_23C9A9:        8D 50 05      STA $0550                 
CODE_23C9AC:        F0 14         BEQ CODE_23C9C2           
CODE_23C9AE:        E6 A6         INC $A6                   
CODE_23C9B0:        A0 E0         LDY #$E0                  
CODE_23C9B2:        84 9D         STY $9D                   
CODE_23C9B4:        A5 18         LDA $18                   
CODE_23C9B6:        10 0A         BPL CODE_23C9C2           
CODE_23C9B8:        A9 00         LDA #$00                  
CODE_23C9BA:        8D 50 05      STA $0550                 
CODE_23C9BD:        AC FD EA      LDY.w DATA_21EAFD                 
CODE_23C9C0:        84 9D         STY $9D                   
CODE_23C9C2:        A4 BB         LDY $BB                   
CODE_23C9C4:        F0 02         BEQ CODE_23C9C8           
CODE_23C9C6:        A0 01         LDY #$01                  
CODE_23C9C8:        B9 A4 E9      LDA.w DATA_21E9A4,y               
CODE_23C9CB:        85 BC         STA $BC                   
CODE_23C9CD:        A5 15         LDA $15                   
CODE_23C9CF:        29 08         AND #$08                  
CODE_23C9D1:        F0 04         BEQ CODE_23C9D7           
CODE_23C9D3:        E6 BC         INC $BC                   
CODE_23C9D5:        E6 BC         INC $BC                   
CODE_23C9D7:        60            RTS                       

CODE_23C9D8:        AD 46 05      LDA $0546                 
CODE_23C9DB:        F0 0D         BEQ CODE_23C9EA           
CODE_23C9DD:        EE 74 05      INC $0574                 
CODE_23C9E0:        A0 0A         LDY #$0A                  
CODE_23C9E2:        24 17         BIT $17                   
CODE_23C9E4:        50 09         BVC CODE_23C9EF                   
CODE_23C9E6:        A0 01         LDY #$01                  
CODE_23C9E8:        D0 05         BNE CODE_23C9EF           
CODE_23C9EA:        AC B6 06      LDY $06B6                 
CODE_23C9ED:        F0 07         BEQ CODE_23C9F6           
CODE_23C9EF:        B9 2F EB      LDA.w DATA_21EB2F,y               
CODE_23C9F2:        A8            TAY                       
CODE_23C9F3:        4C 17 CA      JMP CODE_23CA17           

CODE_23C9F6:        A0 18         LDY #$18                  
CODE_23C9F8:        24 17         BIT $17                   
CODE_23C9FA:        50 1B         BVC CODE_23CA17                   
CODE_23C9FC:        A5 A6         LDA $A6                   
CODE_23C9FE:        0D 45 05      ORA $0545                 
CODE_23CA01:        D0 09         BNE CODE_23CA0C           
CODE_23CA03:        A5 02         LDA $02                   
CODE_23CA05:        C9 28         CMP #$28                  
CODE_23CA07:        30 03         BMI CODE_23CA0C           
CODE_23CA09:        EE 7B 05      INC $057B                 
CODE_23CA0C:        A0 28         LDY #$28                  
CODE_23CA0E:        AD 13 04      LDA $0413                 
CODE_23CA11:        C9 7F         CMP #$7F                  
CODE_23CA13:        D0 02         BNE CODE_23CA17           
CODE_23CA15:        A0 38         LDY #$38                  
CODE_23CA17:        84 0D         STY $0D                   
CODE_23CA19:        AC 89 05      LDY $0589                 
CODE_23CA1C:        F0 0E         BEQ CODE_23CA2C           
CODE_23CA1E:        EE 74 05      INC $0574                 
CODE_23CA21:        88            DEY                       
CODE_23CA22:        98            TYA                       
CODE_23CA23:        0A            ASL A                     
CODE_23CA24:        0A            ASL A                     
CODE_23CA25:        0A            ASL A                     
CODE_23CA26:        18            CLC                       
CODE_23CA27:        69 40         ADC #$40                  
CODE_23CA29:        A8            TAY                       
CODE_23CA2A:        D0 06         BNE CODE_23CA32           
CODE_23CA2C:        A5 BB         LDA $BB                   
CODE_23CA2E:        0A            ASL A                     
CODE_23CA2F:        0A            ASL A                     
CODE_23CA30:        0A            ASL A                     
CODE_23CA31:        A8            TAY                       
CODE_23CA32:        24 17         BIT $17                   
CODE_23CA34:        50 04         BVC CODE_23CA3A                   
CODE_23CA36:        C8            INY                       
CODE_23CA37:        C8            INY                       
CODE_23CA38:        C8            INY                       
CODE_23CA39:        C8            INY                       
CODE_23CA3A:        A5 17         LDA $17                   
CODE_23CA3C:        29 03         AND #$03                  
CODE_23CA3E:        D0 0C         BNE CODE_23CA4C           
CODE_23CA40:        A5 A6         LDA $A6                   
CODE_23CA42:        D0 51         BNE CODE_23CA95           
CODE_23CA44:        A5 8B         LDA $8B                   
CODE_23CA46:        F0 4D         BEQ CODE_23CA95           
CODE_23CA48:        30 1D         BMI CODE_23CA67           
CODE_23CA4A:        10 33         BPL CODE_23CA7F           
CODE_23CA4C:        C8            INY                       
CODE_23CA4D:        C8            INY                       
CODE_23CA4E:        2D 73 05      AND $0573                 
CODE_23CA51:        D0 0E         BNE CODE_23CA61           
CODE_23CA53:        88            DEY                       
CODE_23CA54:        A5 02         LDA $02                   
CODE_23CA56:        C5 0D         CMP $0D                   
CODE_23CA58:        F0 3B         BEQ CODE_23CA95           
CODE_23CA5A:        30 05         BMI CODE_23CA61           
CODE_23CA5C:        A5 A6         LDA $A6                   
CODE_23CA5E:        D0 35         BNE CODE_23CA95           
CODE_23CA60:        88            DEY                       
CODE_23CA61:        A5 17         LDA $17                   
CODE_23CA63:        29 01         AND #$01                  
CODE_23CA65:        D0 18         BNE CODE_23CA7F           
CODE_23CA67:        A9 00         LDA #$00                  
CODE_23CA69:        38            SEC                       
CODE_23CA6A:        F9 A2 EA      SBC.w DATA_21EAA2,y               
CODE_23CA6D:        85 00         STA $00                   
CODE_23CA6F:        B9 52 EA      LDA.w DATA_21EA52,y               
CODE_23CA72:        49 FF         EOR #$FF                  
CODE_23CA74:        85 01         STA $01                   
CODE_23CA76:        A5 00         LDA $00                   
CODE_23CA78:        D0 0F         BNE CODE_23CA89           
CODE_23CA7A:        E6 01         INC $01                   
CODE_23CA7C:        4C 89 CA      JMP CODE_23CA89           

CODE_23CA7F:        B9 A2 EA      LDA.w DATA_21EAA2,y               
CODE_23CA82:        85 00         STA $00                   
CODE_23CA84:        B9 52 EA      LDA.w DATA_21EA52,y               
CODE_23CA87:        85 01         STA $01                   
CODE_23CA89:        A5 00         LDA $00                   
CODE_23CA8B:        18            CLC                       
CODE_23CA8C:        6D 5C 05      ADC $055C                 
CODE_23CA8F:        A5 8B         LDA $8B                   
CODE_23CA91:        65 01         ADC $01                   
CODE_23CA93:        85 8B         STA $8B                   
CODE_23CA95:        60            RTS                       

CODE_23CA96:        A0 38         LDY #$38                  
CODE_23CA98:        A9 08         LDA #$08                  
CODE_23CA9A:        85 0D         STA $0D                   
CODE_23CA9C:        A5 A6         LDA $A6                   
CODE_23CA9E:        F0 08         BEQ CODE_23CAA8           
CODE_23CAA0:        A9 18         LDA #$18                  
CODE_23CAA2:        85 0D         STA $0D                   
CODE_23CAA4:        C8            INY                       
CODE_23CAA5:        C8            INY                       
CODE_23CAA6:        C8            INY                       
CODE_23CAA7:        C8            INY                       
CODE_23CAA8:        A5 A6         LDA $A6                   
CODE_23CAAA:        48            PHA                       
CODE_23CAAB:        A9 00         LDA #$00                  
CODE_23CAAD:        85 A6         STA $A6                   
CODE_23CAAF:        20 3A CA      JSR CODE_23CA3A           
CODE_23CAB2:        68            PLA                       
CODE_23CAB3:        85 A6         STA $A6                   
CODE_23CAB5:        60            RTS                       

CODE_23CAB6:        AD 1F 10      LDA $101F                 
CODE_23CAB9:        F0 03         BEQ CODE_23CABE           
CODE_23CABB:        CE 1F 10      DEC $101F                 
CODE_23CABE:        A5 18         LDA $18                   
CODE_23CAC0:        29 80         AND #$80                  
CODE_23CAC2:        85 00         STA $00                   
CODE_23CAC4:        F0 64         BEQ CODE_23CB2A           
CODE_23CAC6:        AD 1F 10      LDA $101F                 
CODE_23CAC9:        D0 04         BNE CODE_23CACF           
CODE_23CACB:        A5 A6         LDA $A6                   
CODE_23CACD:        D0 5B         BNE CODE_23CB2A           
CODE_23CACF:        A9 01         LDA #$01                  
CODE_23CAD1:        8D 01 12      STA $1201                 
CODE_23CAD4:        AD 53 05      LDA $0553                 
CODE_23CAD7:        F0 1E         BEQ CODE_23CAF7           
CODE_23CAD9:        AD 13 04      LDA $0413                 
CODE_23CADC:        C9 7F         CMP #$7F                  
CODE_23CADE:        F0 17         BEQ CODE_23CAF7           
CODE_23CAE0:        AD A4 06      LDA $06A4                 
CODE_23CAE3:        D0 12         BNE CODE_23CAF7           
CODE_23CAE5:        A5 BB         LDA $BB                   
CODE_23CAE7:        F0 0E         BEQ CODE_23CAF7           
CODE_23CAE9:        C9 04         CMP #$04                  
CODE_23CAEB:        F0 0A         BEQ CODE_23CAF7           
CODE_23CAED:        8D 4F 05      STA $054F                 
CODE_23CAF0:        85 A6         STA $A6                   
CODE_23CAF2:        A9 00         LDA #$00                  
CODE_23CAF4:        8D 1F 10      STA $101F                 
CODE_23CAF7:        A5 8B         LDA $8B                   
CODE_23CAF9:        10 04         BPL CODE_23CAFF           
CODE_23CAFB:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CAFF:        4A            LSR A                     
CODE_23CB00:        4A            LSR A                     
CODE_23CB01:        4A            LSR A                     
CODE_23CB02:        4A            LSR A                     
CODE_23CB03:        AA            TAX                       
CODE_23CB04:        AD FD EA      LDA.w DATA_21EAFD                 
CODE_23CB07:        38            SEC                       
CODE_23CB08:        FD FE EA      SBC.w DATA_21EAFE,x               
CODE_23CB0B:        85 9D         STA $9D                   
CODE_23CB0D:        A9 01         LDA #$01                  
CODE_23CB0F:        85 A6         STA $A6                   
CODE_23CB11:        A9 00         LDA #$00                  
CODE_23CB13:        8D BE 00      STA $00BE                 
CODE_23CB16:        8D 1F 10      STA $101F                 
CODE_23CB19:        AD 13 04      LDA $0413                 
CODE_23CB1C:        C9 7F         CMP #$7F                  
CODE_23CB1E:        D0 0A         BNE CODE_23CB2A           
CODE_23CB20:        AD 6E 05      LDA $056E                 
CODE_23CB23:        D0 05         BNE CODE_23CB2A           
CODE_23CB25:        A9 80         LDA #$80                  
CODE_23CB27:        8D 6E 05      STA $056E                 
CODE_23CB2A:        A5 A6         LDA $A6                   
CODE_23CB2C:        D0 11         BNE CODE_23CB3F           
CODE_23CB2E:        A4 BB         LDY $BB                   
CODE_23CB30:        B9 64 AF      LDA.w DATA_21AF64,y               
CODE_23CB33:        29 01         AND #$01                  
CODE_23CB35:        D0 6F         BNE CODE_23CBA6           
CODE_23CB37:        A9 00         LDA #$00                  
CODE_23CB39:        8D 6E 05      STA $056E                 
CODE_23CB3C:        4C A6 CB      JMP CODE_23CBA6           

CODE_23CB3F:        A0 05         LDY #$05                  
CODE_23CB41:        A5 9D         LDA $9D                   
CODE_23CB43:        C9 E0         CMP #$E0                  
CODE_23CB45:        10 0D         BPL CODE_23CB54           
CODE_23CB47:        AD 79 05      LDA $0579                 
CODE_23CB4A:        D0 0D         BNE CODE_23CB59           
CODE_23CB4C:        A5 17         LDA $17                   
CODE_23CB4E:        10 04         BPL CODE_23CB54           
CODE_23CB50:        A0 01         LDY #$01                  
CODE_23CB52:        D0 05         BNE CODE_23CB59           
CODE_23CB54:        A9 00         LDA #$00                  
CODE_23CB56:        8D 79 05      STA $0579                 
CODE_23CB59:        98            TYA                       
CODE_23CB5A:        18            CLC                       
CODE_23CB5B:        65 9D         ADC $9D                   
CODE_23CB5D:        85 9D         STA $9D                   
CODE_23CB5F:        A5 BE         LDA $BE                   
CODE_23CB61:        F0 02         BEQ CODE_23CB65           
CODE_23CB63:        C6 BE         DEC $BE                   
CODE_23CB65:        AD 77 05      LDA $0577                 
CODE_23CB68:        D0 11         BNE CODE_23CB7B           
CODE_23CB6A:        A6 BB         LDX $BB                   
CODE_23CB6C:        BD 64 AF      LDA.w DATA_21AF64,x               
CODE_23CB6F:        29 01         AND #$01                  
CODE_23CB71:        F0 08         BEQ CODE_23CB7B           
CODE_23CB73:        A4 00         LDY $00                   
CODE_23CB75:        F0 04         BEQ CODE_23CB7B           
CODE_23CB77:        A9 10         LDA #$10                  
CODE_23CB79:        85 BE         STA $BE                   
CODE_23CB7B:        A5 BE         LDA $BE                   
CODE_23CB7D:        F0 27         BEQ CODE_23CBA6           
CODE_23CB7F:        A5 9D         LDA $9D                   
CODE_23CB81:        C9 E8         CMP #$E8                  
CODE_23CB83:        30 21         BMI CODE_23CBA6           
CODE_23CB85:        A0 E8         LDY #$E8                  
CODE_23CB87:        AD 6E 05      LDA $056E                 
CODE_23CB8A:        F0 0E         BEQ CODE_23CB9A           
CODE_23CB8C:        C9 0F         CMP #$0F                  
CODE_23CB8E:        B0 14         BCS CODE_23CBA4                   
CODE_23CB90:        A0 F0         LDY #$F0                  
CODE_23CB92:        29 08         AND #$08                  
CODE_23CB94:        D0 0E         BNE CODE_23CBA4           
CODE_23CB96:        A0 00         LDY #$00                  
CODE_23CB98:        F0 0A         BEQ CODE_23CBA4           
CODE_23CB9A:        A5 9D         LDA $9D                   
CODE_23CB9C:        30 08         BMI CODE_23CBA6           
CODE_23CB9E:        C9 10         CMP #$10                  
CODE_23CBA0:        90 04         BCC CODE_23CBA6           
CODE_23CBA2:        A0 10         LDY #$10                  
CODE_23CBA4:        84 9D         STY $9D                   
CODE_23CBA6:        AD B6 06      LDA $06B6                 
CODE_23CBA9:        F0 0F         BEQ CODE_23CBBA           
CODE_23CBAB:        4A            LSR A                     
CODE_23CBAC:        A8            TAY                       
CODE_23CBAD:        A5 9D         LDA $9D                   
CODE_23CBAF:        10 09         BPL CODE_23CBBA           
CODE_23CBB1:        D9 3A EB      CMP.w DATA_21EB3A,y               
CODE_23CBB4:        30 04         BMI CODE_23CBBA           
CODE_23CBB6:        A9 20         LDA #$20                  
CODE_23CBB8:        85 9D         STA $9D                   
CODE_23CBBA:        60            RTS                       

CODE_23CBBB:        A5 18         LDA $18                   
CODE_23CBBD:        10 16         BPL CODE_23CBD5           
CODE_23CBBF:        A9 0E         LDA #$0E                  
CODE_23CBC1:        8D 00 12      STA $1200                 
CODE_23CBC4:        A4 A6         LDY $A6                   
CODE_23CBC6:        D0 06         BNE CODE_23CBCE           
CODE_23CBC8:        A9 E0         LDA #$E0                  
CODE_23CBCA:        85 A6         STA $A6                   
CODE_23CBCC:        D0 05         BNE CODE_23CBD3           
CODE_23CBCE:        A5 9D         LDA $9D                   
CODE_23CBD0:        38            SEC                       
CODE_23CBD1:        E9 20         SBC #$20                  
CODE_23CBD3:        85 9D         STA $9D                   
CODE_23CBD5:        A5 A6         LDA $A6                   
CODE_23CBD7:        F0 2E         BEQ CODE_23CC07           
CODE_23CBD9:        A5 9D         LDA $9D                   
CODE_23CBDB:        30 06         BMI CODE_23CBE3           
CODE_23CBDD:        A5 15         LDA $15                   
CODE_23CBDF:        29 02         AND #$02                  
CODE_23CBE1:        D0 02         BNE CODE_23CBE5           
CODE_23CBE3:        E6 9D         INC $9D                   
CODE_23CBE5:        A0 20         LDY #$20                  
CODE_23CBE7:        A5 9D         LDA $9D                   
CODE_23CBE9:        10 13         BPL CODE_23CBFE           
CODE_23CBEB:        AC 44 05      LDY $0544                 
CODE_23CBEE:        10 0C         BPL CODE_23CBFC           
CODE_23CBF0:        AC 82 00      LDY $0082                 
CODE_23CBF3:        C0 F8         CPY #$F8                  
CODE_23CBF5:        B0 05         BCS CODE_23CBFC                   
CODE_23CBF7:        18            CLC                       
CODE_23CBF8:        69 10         ADC #$10                  
CODE_23CBFA:        85 9D         STA $9D                   
CODE_23CBFC:        A0 E0         LDY #$E0                  
CODE_23CBFE:        18            CLC                       
CODE_23CBFF:        69 20         ADC #$20                  
CODE_23CC01:        C9 40         CMP #$40                  
CODE_23CC03:        90 02         BCC CODE_23CC07           
CODE_23CC05:        84 9D         STY $9D                   
CODE_23CC07:        60            RTS                       

CODE_23CC08:        A5 A6         LDA $A6                   
CODE_23CC0A:        F0 39         BEQ CODE_23CC45           
CODE_23CC0C:        A5 18         LDA $18                   
CODE_23CC0E:        10 13         BPL CODE_23CC23           
CODE_23CC10:        AD 76 05      LDA $0576                 
CODE_23CC13:        D0 0B         BNE CODE_23CC20           
CODE_23CC15:        A9 00         LDA #$00                  
CODE_23CC17:        8D 76 05      STA $0576                 
CODE_23CC1A:        8D 7F 05      STA $057F                 
CODE_23CC1D:        8D 74 05      STA $0574                 
CODE_23CC20:        EE 76 05      INC $0576                 
CODE_23CC23:        AD 76 05      LDA $0576                 
CODE_23CC26:        D0 1E         BNE CODE_23CC46           
CODE_23CC28:        A5 8B         LDA $8B                   
CODE_23CC2A:        D0 0A         BNE CODE_23CC36           
CODE_23CC2C:        A5 15         LDA $15                   
CODE_23CC2E:        29 30         AND #$30                  
CODE_23CC30:        4A            LSR A                     
CODE_23CC31:        4A            LSR A                     
CODE_23CC32:        4A            LSR A                     
CODE_23CC33:        4A            LSR A                     
CODE_23CC34:        85 BA         STA $BA                   
CODE_23CC36:        A4 BA         LDY $BA                   
CODE_23CC38:        A5 BB         LDA $BB                   
CODE_23CC3A:        D0 04         BNE CODE_23CC40           
CODE_23CC3C:        C8            INY                       
CODE_23CC3D:        C8            INY                       
CODE_23CC3E:        C8            INY                       
CODE_23CC3F:        C8            INY                       
CODE_23CC40:        B9 92 E9      LDA.w DATA_21E992,y               
CODE_23CC43:        85 BC         STA $BC                   
CODE_23CC45:        60            RTS                       

CODE_23CC46:        AD 7F 05      LDA $057F                 
CODE_23CC49:        C9 06         CMP #$06                  
CODE_23CC4B:        90 07         BCC CODE_23CC54           
CODE_23CC4D:        CE 76 05      DEC $0576                 
CODE_23CC50:        D0 C3         BNE CODE_23CC15           
CODE_23CC52:        A9 05         LDA #$05                  
CODE_23CC54:        A4 BB         LDY $BB                   
CODE_23CC56:        D0 03         BNE CODE_23CC5B           
CODE_23CC58:        18            CLC                       
CODE_23CC59:        69 06         ADC #$06                  
CODE_23CC5B:        A8            TAY                       
CODE_23CC5C:        B9 86 E9      LDA.w DATA_21E986,y               
CODE_23CC5F:        85 BC         STA $BC                   
CODE_23CC61:        60            RTS                       

CODE_23CC62:        A5 8B         LDA $8B                   
CODE_23CC64:        10 04         BPL CODE_23CC6A           
CODE_23CC66:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CC6A:        4A            LSR A                     
CODE_23CC6B:        4A            LSR A                     
CODE_23CC6C:        4A            LSR A                     
CODE_23CC6D:        A8            TAY                       
CODE_23CC6E:        EE 74 05      INC $0574                 
CODE_23CC71:        AD 74 05      LDA $0574                 
CODE_23CC74:        D9 F4 EA      CMP.w DATA_21EAF4,y               
CODE_23CC77:        30 14         BMI CODE_23CC8D           
CODE_23CC79:        A9 00         LDA #$00                  
CODE_23CC7B:        8D 74 05      STA $0574                 
CODE_23CC7E:        E6 BA         INC $BA                   
CODE_23CC80:        EE 7F 05      INC $057F                 
CODE_23CC83:        A5 BA         LDA $BA                   
CODE_23CC85:        C9 04         CMP #$04                  
CODE_23CC87:        30 04         BMI CODE_23CC8D           
CODE_23CC89:        A9 00         LDA #$00                  
CODE_23CC8B:        85 BA         STA $BA                   
CODE_23CC8D:        A5 17         LDA $17                   
CODE_23CC8F:        29 03         AND #$03                  
CODE_23CC91:        D0 08         BNE CODE_23CC9B           
CODE_23CC93:        A5 8B         LDA $8B                   
CODE_23CC95:        D0 04         BNE CODE_23CC9B           
CODE_23CC97:        A9 02         LDA #$02                  
CODE_23CC99:        85 BA         STA $BA                   
CODE_23CC9B:        AD 17 05      LDA $0517                 
CODE_23CC9E:        D0 10         BNE CODE_23CCB0           
CODE_23CCA0:        A5 17         LDA $17                   
CODE_23CCA2:        29 03         AND #$03                  
CODE_23CCA4:        F0 0A         BEQ CODE_23CCB0           
CODE_23CCA6:        A0 00         LDY #$00                  
CODE_23CCA8:        29 02         AND #$02                  
CODE_23CCAA:        D0 02         BNE CODE_23CCAE           
CODE_23CCAC:        A0 40         LDY #$40                  
CODE_23CCAE:        84 BD         STY $BD                   
CODE_23CCB0:        AD 60 01      LDA $0160                 
CODE_23CCB3:        C9 80         CMP #$80                  
CODE_23CCB5:        D0 2B         BNE CODE_23CCE2           
CODE_23CCB7:        A5 18         LDA $18                   
CODE_23CCB9:        29 20         AND #$20                  
CODE_23CCBB:        F0 25         BEQ CODE_23CCE2           
CODE_23CCBD:        A5 17         LDA $17                   
CODE_23CCBF:        29 C0         AND #$C0                  
CODE_23CCC1:        D0 17         BNE CODE_23CCDA           
CODE_23CCC3:        A5 BB         LDA $BB                   
CODE_23CCC5:        18            CLC                       
CODE_23CCC6:        69 01         ADC #$01                  
CODE_23CCC8:        8D 78 05      STA $0578                 
CODE_23CCCB:        C9 07         CMP #$07                  
CODE_23CCCD:        30 02         BMI CODE_23CCD1           
CODE_23CCCF:        A9 00         LDA #$00                  
CODE_23CCD1:        8D 78 05      STA $0578                 
CODE_23CCD4:        EE 78 05      INC $0578                 
CODE_23CCD7:        4C E2 CC      JMP CODE_23CCE2           

CODE_23CCDA:        AD 77 05      LDA $0577                 
CODE_23CCDD:        49 01         EOR #$01                  
CODE_23CCDF:        8D 77 05      STA $0577                 
CODE_23CCE2:        A5 BB         LDA $BB                   
CODE_23CCE4:        0A            ASL A                     
CODE_23CCE5:        0A            ASL A                     
CODE_23CCE6:        05 BA         ORA $BA                   
CODE_23CCE8:        A8            TAY                       
CODE_23CCE9:        B9 58 E9      LDA.w DATA_21E958,y               
CODE_23CCEC:        85 BC         STA $BC                   
CODE_23CCEE:        AD 75 05      LDA $0575                 
CODE_23CCF1:        D0 4D         BNE CODE_23CD40           
CODE_23CCF3:        A5 8B         LDA $8B                   
CODE_23CCF5:        18            CLC                       
CODE_23CCF6:        69 01         ADC #$01                  
CODE_23CCF8:        C9 03         CMP #$03                  
CODE_23CCFA:        90 44         BCC CODE_23CD40           
CODE_23CCFC:        AD 73 05      LDA $0573                 
CODE_23CCFF:        25 17         AND $17                   
CODE_23CD01:        F0 3D         BEQ CODE_23CD40           
CODE_23CD03:        A4 BB         LDY $BB                   
CODE_23CD05:        F0 02         BEQ CODE_23CD09           
CODE_23CD07:        A0 01         LDY #$01                  
CODE_23CD09:        A5 A6         LDA $A6                   
CODE_23CD0B:        D0 33         BNE CODE_23CD40           
CODE_23CD0D:        B9 84 E9      LDA.w DATA_21E984,y               
CODE_23CD10:        85 BC         STA $BC                   
CODE_23CD12:        AF 22 C5 7F   LDA $7FC522               
CODE_23CD16:        0F 23 C5 7F   ORA $7FC523               
CODE_23CD1A:        D0 24         BNE CODE_23CD40           
CODE_23CD1C:        A9 10         LDA #$10                  
CODE_23CD1E:        8F 22 C5 7F   STA $7FC522               
CODE_23CD22:        A5 5E         LDA $5E                   
CODE_23CD24:        8F 24 C5 7F   STA $7FC524               
CODE_23CD28:        A5 43         LDA $43                   
CODE_23CD2A:        8F 26 C5 7F   STA $7FC526               
CODE_23CD2E:        A5 70         LDA $70                   
CODE_23CD30:        8F 28 C5 7F   STA $7FC528               
CODE_23CD34:        A5 55         LDA $55                   
CODE_23CD36:        8F 2A C5 7F   STA $7FC52A               
CODE_23CD3A:        A5 BD         LDA $BD                   
CODE_23CD3C:        8F 2C C5 7F   STA $7FC52C               
CODE_23CD40:        AD 6F 05      LDA $056F                 
CODE_23CD43:        F0 0D         BEQ CODE_23CD52           
CODE_23CD45:        A4 BB         LDY $BB                   
CODE_23CD47:        B9 64 AF      LDA.w DATA_21AF64,y               
CODE_23CD4A:        29 01         AND #$01                  
CODE_23CD4C:        A8            TAY                       
CODE_23CD4D:        B9 A6 E9      LDA.w DATA_21E9A6,y               
CODE_23CD50:        85 BC         STA $BC                   
CODE_23CD52:        AD 45 05      LDA $0545                 
CODE_23CD55:        F0 19         BEQ CODE_23CD70           
CODE_23CD57:        A5 A6         LDA $A6                   
CODE_23CD59:        D0 06         BNE CODE_23CD61           
CODE_23CD5B:        A5 17         LDA $17                   
CODE_23CD5D:        29 0B         AND #$0B                  
CODE_23CD5F:        F0 05         BEQ CODE_23CD66           
CODE_23CD61:        A9 00         LDA #$00                  
CODE_23CD63:        8D 45 05      STA $0545                 
CODE_23CD66:        A9 62         LDA #$62                  
CODE_23CD68:        A4 BB         LDY $BB                   
CODE_23CD6A:        D0 02         BNE CODE_23CD6E           
CODE_23CD6C:        A9 66         LDA #$66                  
CODE_23CD6E:        85 BC         STA $BC                   
CODE_23CD70:        60            RTS                       

CODE_23CD71:        A5 8B         LDA $8B                   
CODE_23CD73:        10 04         BPL CODE_23CD79           
CODE_23CD75:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CD79:        C9 37         CMP #$37                  
CODE_23CD7B:        90 22         BCC CODE_23CD9F           
CODE_23CD7D:        AD 6E 05      LDA $056E                 
CODE_23CD80:        D0 1D         BNE CODE_23CD9F           
CODE_23CD82:        AD 6F 05      LDA $056F                 
CODE_23CD85:        0D 77 05      ORA $0577                 
CODE_23CD88:        0D 6B 05      ORA $056B                 
CODE_23CD8B:        0D 45 05      ORA $0545                 
CODE_23CD8E:        D0 0F         BNE CODE_23CD9F           
CODE_23CD90:        A4 BA         LDY $BA                   
CODE_23CD92:        A5 BB         LDA $BB                   
CODE_23CD94:        D0 04         BNE CODE_23CD9A           
CODE_23CD96:        C8            INY                       
CODE_23CD97:        C8            INY                       
CODE_23CD98:        C8            INY                       
CODE_23CD99:        C8            INY                       
CODE_23CD9A:        B9 B2 E9      LDA.w DATA_21E9B2,y               
CODE_23CD9D:        85 BC         STA $BC                   
CODE_23CD9F:        AD 4F 05      LDA $054F                 
CODE_23CDA2:        F0 1B         BEQ CODE_23CDBF           
CODE_23CDA4:        A5 15         LDA $15                   
CODE_23CDA6:        4A            LSR A                     
CODE_23CDA7:        48            PHA                       
CODE_23CDA8:        29 07         AND #$07                  
CODE_23CDAA:        A8            TAY                       
CODE_23CDAB:        B9 14 EB      LDA.w DATA_21EB14,y               
CODE_23CDAE:        A4 8B         LDY $8B                   
CODE_23CDB0:        10 02         BPL CODE_23CDB4           
CODE_23CDB2:        49 40         EOR #$40                  
CODE_23CDB4:        85 BD         STA $BD                   
CODE_23CDB6:        68            PLA                       
CODE_23CDB7:        29 03         AND #$03                  
CODE_23CDB9:        0A            ASL A                     
CODE_23CDBA:        18            CLC                       
CODE_23CDBB:        69 34         ADC #$34                  
CODE_23CDBD:        85 BC         STA $BC                   
CODE_23CDBF:        AD A4 06      LDA $06A4                 
CODE_23CDC2:        F0 1A         BEQ CODE_23CDDE           
CODE_23CDC4:        A4 BA         LDY $BA                   
CODE_23CDC6:        A5 A6         LDA $A6                   
CODE_23CDC8:        F0 07         BEQ CODE_23CDD1           
CODE_23CDCA:        A0 00         LDY #$00                  
CODE_23CDCC:        A5 BB         LDA $BB                   
CODE_23CDCE:        D0 01         BNE CODE_23CDD1           
CODE_23CDD0:        C8            INY                       
CODE_23CDD1:        A5 BB         LDA $BB                   
CODE_23CDD3:        D0 04         BNE CODE_23CDD9           
CODE_23CDD5:        C8            INY                       
CODE_23CDD6:        C8            INY                       
CODE_23CDD7:        C8            INY                       
CODE_23CDD8:        C8            INY                       
CODE_23CDD9:        B9 C6 E9      LDA.w DATA_21E9C6,y               
CODE_23CDDC:        85 BC         STA $BC                   
CODE_23CDDE:        AD 58 05      LDA $0558                 
CODE_23CDE1:        D0 11         BNE CODE_23CDF4           
CODE_23CDE3:        AD A4 06      LDA $06A4                 
CODE_23CDE6:        F0 19         BEQ CODE_23CE01           
CODE_23CDE8:        A5 BD         LDA $BD                   
CODE_23CDEA:        CD 6C 05      CMP $056C                 
CODE_23CDED:        F0 12         BEQ CODE_23CE01           
CODE_23CDEF:        A9 07         LDA #$07                  
CODE_23CDF1:        8D 58 05      STA $0558                 
CODE_23CDF4:        CE 58 05      DEC $0558                 
CODE_23CDF7:        A9 0A         LDA #$0A                  
CODE_23CDF9:        A4 BB         LDY $BB                   
CODE_23CDFB:        D0 02         BNE CODE_23CDFF           
CODE_23CDFD:        A9 64         LDA #$64                  
CODE_23CDFF:        85 BC         STA $BC                   
CODE_23CE01:        AD 57 05      LDA $0557                 
CODE_23CE04:        F0 12         BEQ CODE_23CE18           
CODE_23CE06:        A9 00         LDA #$00                  
CODE_23CE08:        8D 17 05      STA $0517                 
CODE_23CE0B:        A0 84         LDY #$84                  
CODE_23CE0D:        A5 BB         LDA $BB                   
CODE_23CE0F:        F0 02         BEQ CODE_23CE13           
CODE_23CE11:        A0 5A         LDY #$5A                  
CODE_23CE13:        84 BC         STY $BC                   
CODE_23CE15:        CE 57 05      DEC $0557                 
CODE_23CE18:        AD F5 1C      LDA $1CF5                 
CODE_23CE1B:        F0 37         BEQ CODE_23CE54           
CODE_23CE1D:        CE F5 1C      DEC $1CF5                 
CODE_23CE20:        A0 00         LDY #$00                  
CODE_23CE22:        A5 BB         LDA $BB                   
CODE_23CE24:        F0 14         BEQ CODE_23CE3A           
CODE_23CE26:        C9 04         CMP #$04                  
CODE_23CE28:        D0 04         BNE CODE_23CE2E           
CODE_23CE2A:        A0 0C         LDY #$0C                  
CODE_23CE2C:        80 0C         BRA CODE_23CE3A           

CODE_23CE2E:        A0 04         LDY #$04                  
CODE_23CE30:        AA            TAX                       
CODE_23CE31:        BD 64 AF      LDA.w DATA_21AF64,x               
CODE_23CE34:        29 01         AND #$01                  
CODE_23CE36:        F0 02         BEQ CODE_23CE3A           
CODE_23CE38:        A0 08         LDY #$08                  
CODE_23CE3A:        84 00         STY $00                   
CODE_23CE3C:        A5 15         LDA $15                   
CODE_23CE3E:        29 0C         AND #$0C                  
CODE_23CE40:        4A            LSR A                     
CODE_23CE41:        4A            LSR A                     
CODE_23CE42:        48            PHA                       
CODE_23CE43:        4A            LSR A                     
CODE_23CE44:        A8            TAY                       
CODE_23CE45:        B9 40 EB      LDA.w DATA_21EB40,y               
CODE_23CE48:        85 BD         STA $BD                   
CODE_23CE4A:        68            PLA                       
CODE_23CE4B:        18            CLC                       
CODE_23CE4C:        65 00         ADC $00                   
CODE_23CE4E:        A8            TAY                       
CODE_23CE4F:        B9 CE E9      LDA.w DATA_21E9CE,y               
CODE_23CE52:        85 BC         STA $BC                   
CODE_23CE54:        AD F4 1C      LDA $1CF4                 
CODE_23CE57:        F0 07         BEQ CODE_23CE60           
CODE_23CE59:        A4 BB         LDY $BB                   
CODE_23CE5B:        B9 EC E9      LDA.w DATA_21E9EC,y               
CODE_23CE5E:        85 BC         STA $BC                   
CODE_23CE60:        60            RTS                       

CODE_23CE61:        A5 17         LDA $17                   
CODE_23CE63:        29 04         AND #$04                  
CODE_23CE65:        A8            TAY                       
CODE_23CE66:        F0 2E         BEQ CODE_23CE96           
CODE_23CE68:        24 18         BIT $18                   
CODE_23CE6A:        50 2A         BVC CODE_23CE96                   
CODE_23CE6C:        AD 7A 05      LDA $057A                 
CODE_23CE6F:        D0 25         BNE CODE_23CE96           
CODE_23CE71:        20 C4 CE      JSR CODE_23CEC4           
CODE_23CE74:        A9 20         LDA #$20                  
CODE_23CE76:        8D 78 05      STA $0578                 
CODE_23CE79:        A9 17         LDA #$17                  
CODE_23CE7B:        8D 54 05      STA $0554                 
CODE_23CE7E:        D0 43         BNE CODE_23CEC3           
CODE_23CE80:        A9 3C         LDA #$3C                  
CODE_23CE82:        85 BC         STA $BC                   
CODE_23CE84:        A9 00         LDA #$00                  
CODE_23CE86:        85 8B         STA $8B                   
CODE_23CE88:        A5 A6         LDA $A6                   
CODE_23CE8A:        F0 07         BEQ CODE_23CE93           
CODE_23CE8C:        A5 9D         LDA $9D                   
CODE_23CE8E:        18            CLC                       
CODE_23CE8F:        69 07         ADC #$07                  
CODE_23CE91:        85 9D         STA $9D                   
CODE_23CE93:        68            PLA                       
CODE_23CE94:        68            PLA                       
CODE_23CE95:        60            RTS                       

CODE_23CE96:        AD 7A 05      LDA $057A                 
CODE_23CE99:        F0 28         BEQ CODE_23CEC3           
CODE_23CE9B:        C9 01         CMP #$01                  
CODE_23CE9D:        F0 0F         BEQ CODE_23CEAE           
CODE_23CE9F:        C9 60         CMP #$60                  
CODE_23CEA1:        D0 05         BNE CODE_23CEA8           
CODE_23CEA3:        A9 60         LDA #$60                  
CODE_23CEA5:        8D 52 05      STA $0552                 
CODE_23CEA8:        CE 7A 05      DEC $057A                 
CODE_23CEAB:        98            TYA                       
CODE_23CEAC:        D0 D2         BNE CODE_23CE80           
CODE_23CEAE:        A9 00         LDA #$00                  
CODE_23CEB0:        8D 7A 05      STA $057A                 
CODE_23CEB3:        8D 52 05      STA $0552                 
CODE_23CEB6:        20 67 C4      JSR CODE_23C467           
CODE_23CEB9:        20 C4 CE      JSR CODE_23CEC4           
CODE_23CEBC:        A9 17         LDA #$17                  
CODE_23CEBE:        8D 54 05      STA $0554                 
CODE_23CEC1:        D0 BD         BNE CODE_23CE80           
CODE_23CEC3:        60            RTS                       

CODE_23CEC4:        A9 0C         LDA #$0C                  
CODE_23CEC6:        8D 00 12      STA $1200                 
CODE_23CEC9:        60            RTS                       

CODE_23CECA:        AD 6B 05      LDA $056B                 
CODE_23CECD:        F0 16         BEQ CODE_23CEE5           
CODE_23CECF:        A4 BB         LDY $BB                   
CODE_23CED1:        B9 DE E9      LDA.w DATA_21E9DE,y               
CODE_23CED4:        85 BC         STA $BC                   
CODE_23CED6:        A5 17         LDA $17                   
CODE_23CED8:        29 0C         AND #$0C                  
CODE_23CEDA:        F0 09         BEQ CODE_23CEE5           
CODE_23CEDC:        A5 15         LDA $15                   
CODE_23CEDE:        29 08         AND #$08                  
CODE_23CEE0:        0A            ASL A                     
CODE_23CEE1:        0A            ASL A                     
CODE_23CEE2:        0A            ASL A                     
CODE_23CEE3:        85 BD         STA $BD                   
CODE_23CEE5:        60            RTS                       

CODE_23CEE6:        AD 8A 05      LDA $058A                 
CODE_23CEE9:        4A            LSR A                     
CODE_23CEEA:        B0 61         BCS CODE_23CF4D                   
CODE_23CEEC:        AD 1F 10      LDA $101F                 
CODE_23CEEF:        D0 5C         BNE CODE_23CF4D           
CODE_23CEF1:        A5 A6         LDA $A6                   
CODE_23CEF3:        F0 58         BEQ CODE_23CF4D           
CODE_23CEF5:        AD 6F 05      LDA $056F                 
CODE_23CEF8:        D0 35         BNE CODE_23CF2F           
CODE_23CEFA:        A5 18         LDA $18                   
CODE_23CEFC:        10 11         BPL CODE_23CF0F           
CODE_23CEFE:        AD 01 12      LDA $1201                 
CODE_23CF01:        C9 01         CMP #$01                  
CODE_23CF03:        F0 05         BEQ CODE_23CF0A           
CODE_23CF05:        A9 04         LDA #$04                  
CODE_23CF07:        8D 03 12      STA $1203                 
CODE_23CF0A:        A9 0A         LDA #$0A                  
CODE_23CF0C:        8D 11 05      STA $0511                 
CODE_23CF0F:        AD 11 05      LDA $0511                 
CODE_23CF12:        4A            LSR A                     
CODE_23CF13:        4A            LSR A                     
CODE_23CF14:        85 00         STA $00                   
CODE_23CF16:        A9 00         LDA #$00                  
CODE_23CF18:        AC 6E 05      LDY $056E                 
CODE_23CF1B:        D0 02         BNE CODE_23CF1F           
CODE_23CF1D:        A9 06         LDA #$06                  
CODE_23CF1F:        A4 9D         LDY $9D                   
CODE_23CF21:        30 03         BMI CODE_23CF26           
CODE_23CF23:        18            CLC                       
CODE_23CF24:        69 03         ADC #$03                  
CODE_23CF26:        18            CLC                       
CODE_23CF27:        65 00         ADC $00                   
CODE_23CF29:        A8            TAY                       
CODE_23CF2A:        B9 BA E9      LDA.w DATA_21E9BA,y               
CODE_23CF2D:        85 BC         STA $BC                   
CODE_23CF2F:        AD 6E 05      LDA $056E                 
CODE_23CF32:        0D BE 00      ORA $00BE                 
CODE_23CF35:        F0 16         BEQ CODE_23CF4D           
CODE_23CF37:        A0 FF         LDY #$FF                  
CODE_23CF39:        A5 8B         LDA $8B                   
CODE_23CF3B:        10 06         BPL CODE_23CF43           
CODE_23CF3D:        A0 01         LDY #$01                  
CODE_23CF3F:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23CF43:        C9 18         CMP #$18                  
CODE_23CF45:        30 06         BMI CODE_23CF4D           
CODE_23CF47:        98            TYA                       
CODE_23CF48:        18            CLC                       
CODE_23CF49:        65 8B         ADC $8B                   
CODE_23CF4B:        85 8B         STA $8B                   
CODE_23CF4D:        60            RTS                       

CODE_23CF4E:        AD 8A 05      LDA $058A                 
CODE_23CF51:        4A            LSR A                     
CODE_23CF52:        B0 1F         BCS CODE_23CF73                   
CODE_23CF54:        AD 1F 10      LDA $101F                 
CODE_23CF57:        D0 1A         BNE CODE_23CF73           
CODE_23CF59:        A5 A6         LDA $A6                   
CODE_23CF5B:        F0 16         BEQ CODE_23CF73           
CODE_23CF5D:        AD 6F 05      LDA $056F                 
CODE_23CF60:        D0 11         BNE CODE_23CF73           
CODE_23CF62:        A9 70         LDA #$70                  
CODE_23CF64:        AC 6E 05      LDY $056E                 
CODE_23CF67:        D0 08         BNE CODE_23CF71           
CODE_23CF69:        A9 9E         LDA #$9E                  
CODE_23CF6B:        A4 9D         LDY $9D                   
CODE_23CF6D:        30 02         BMI CODE_23CF71           
CODE_23CF6F:        A9 0C         LDA #$0C                  
CODE_23CF71:        85 BC         STA $BC                   
CODE_23CF73:        60            RTS                       

CODE_23CF74:        A5 17         LDA $17                   
CODE_23CF76:        29 04         AND #$04                  
CODE_23CF78:        D0 3A         BNE CODE_23CFB4           
CODE_23CF7A:        24 18         BIT $18                   
CODE_23CF7C:        50 0F         BVC CODE_23CF8D                   
CODE_23CF7E:        AD 17 05      LDA $0517                 
CODE_23CF81:        D0 0A         BNE CODE_23CF8D           
CODE_23CF83:        A9 12         LDA #$12                  
CODE_23CF85:        8D 17 05      STA $0517                 
CODE_23CF88:        A9 04         LDA #$04                  
CODE_23CF8A:        8D 03 12      STA $1203                 
CODE_23CF8D:        AD 17 05      LDA $0517                 
CODE_23CF90:        F0 22         BEQ CODE_23CFB4           
CODE_23CF92:        4A            LSR A                     
CODE_23CF93:        4A            LSR A                     
CODE_23CF94:        A8            TAY                       
CODE_23CF95:        A5 A6         LDA $A6                   
CODE_23CF97:        F0 05         BEQ CODE_23CF9E           
CODE_23CF99:        C8            INY                       
CODE_23CF9A:        C8            INY                       
CODE_23CF9B:        C8            INY                       
CODE_23CF9C:        C8            INY                       
CODE_23CF9D:        C8            INY                       
CODE_23CF9E:        B9 9A E9      LDA.w DATA_21E99A,y               
CODE_23CFA1:        85 BC         STA $BC                   
CODE_23CFA3:        AD 17 05      LDA $0517                 
CODE_23CFA6:        C9 0B         CMP #$0B                  
CODE_23CFA8:        F0 04         BEQ CODE_23CFAE           
CODE_23CFAA:        C9 03         CMP #$03                  
CODE_23CFAC:        D0 06         BNE CODE_23CFB4           
CODE_23CFAE:        A5 BD         LDA $BD                   
CODE_23CFB0:        49 40         EOR #$40                  
CODE_23CFB2:        85 BD         STA $BD                   
CODE_23CFB4:        60            RTS                       

CODE_23CFB5:        AD 13 05      LDA $0513                 
CODE_23CFB8:        F0 0F         BEQ CODE_23CFC9           
CODE_23CFBA:        4A            LSR A                     
CODE_23CFBB:        4A            LSR A                     
CODE_23CFBC:        A4 A6         LDY $A6                   
CODE_23CFBE:        F0 03         BEQ CODE_23CFC3           
CODE_23CFC0:        18            CLC                       
CODE_23CFC1:        69 03         ADC #$03                  
CODE_23CFC3:        A8            TAY                       
CODE_23CFC4:        B9 A8 E9      LDA.w DATA_21E9A8,y               
CODE_23CFC7:        85 BC         STA $BC                   
CODE_23CFC9:        60            RTS                       

CODE_23CFCA:        AD 25 04      LDA $0425                 
CODE_23CFCD:        F0 03         BEQ CODE_23CFD2           
CODE_23CFCF:        4C FC D1      JMP CODE_23D1FC           

CODE_23CFD2:        AD B8 1E      LDA $1EB8                 
CODE_23CFD5:        F0 03         BEQ CODE_23CFDA           
CODE_23CFD7:        4C 93 D0      JMP CODE_23D093           

CODE_23CFDA:        AC FC 05      LDY $05FC                 
CODE_23CFDD:        F0 2B         BEQ CODE_23D00A           
CODE_23CFDF:        30 29         BMI CODE_23D00A           
CODE_23CFE1:        AD 0C 1A      LDA $1A0C                 
CODE_23CFE4:        48            PHA                       
CODE_23CFE5:        38            SEC                       
CODE_23CFE6:        ED 10 02      SBC $0210                 
CODE_23CFE9:        8D 81 07      STA $0781                 
CODE_23CFEC:        68            PLA                       
CODE_23CFED:        8D 10 02      STA $0210                 
CODE_23CFF0:        8D 12 02      STA $0212                 
CODE_23CFF3:        AD 0A 1A      LDA $1A0A                 
CODE_23CFF6:        85 12         STA $12                   
CODE_23CFF8:        8D 11 02      STA $0211                 
CODE_23CFFB:        4A            LSR A                     
CODE_23CFFC:        8D 13 02      STA $0213                 
CODE_23CFFF:        6E 12 02      ROR $0212                 
CODE_23D002:        AD 07 1A      LDA $1A07                 
CODE_23D005:        85 25         STA $25                   
CODE_23D007:        4C FA D0      JMP CODE_23D0FA           

CODE_23D00A:        A5 5E         LDA $5E                   
CODE_23D00C:        38            SEC                       
CODE_23D00D:        ED 10 02      SBC $0210                 
CODE_23D010:        10 40         BPL CODE_23D052           
CODE_23D012:        A5 12         LDA $12                   
CODE_23D014:        85 00         STA $00                   
CODE_23D016:        A9 80         LDA #$80                  
CODE_23D018:        18            CLC                       
CODE_23D019:        6D 10 02      ADC $0210                 
CODE_23D01C:        85 01         STA $01                   
CODE_23D01E:        90 02         BCC CODE_23D022           
CODE_23D020:        E6 00         INC $00                   
CODE_23D022:        A5 43         LDA $43                   
CODE_23D024:        C5 00         CMP $00                   
CODE_23D026:        30 6B         BMI CODE_23D093           
CODE_23D028:        A5 5E         LDA $5E                   
CODE_23D02A:        38            SEC                       
CODE_23D02B:        E5 01         SBC $01                   
CODE_23D02D:        F0 64         BEQ CODE_23D093           
CODE_23D02F:        30 62         BMI CODE_23D093           
CODE_23D031:        8D 81 07      STA $0781                 
CODE_23D034:        18            CLC                       
CODE_23D035:        6D 10 02      ADC $0210                 
CODE_23D038:        8D 10 02      STA $0210                 
CODE_23D03B:        90 05         BCC CODE_23D042           
CODE_23D03D:        E6 12         INC $12                   
CODE_23D03F:        EE 11 02      INC $0211                 
CODE_23D042:        64 25         STZ $25                   
CODE_23D044:        A5 12         LDA $12                   
CODE_23D046:        C5 22         CMP $22                   
CODE_23D048:        30 49         BMI CODE_23D093           
CODE_23D04A:        9C 10 02      STZ $0210                 
CODE_23D04D:        9C 81 07      STZ $0781                 
CODE_23D050:        80 41         BRA CODE_23D093           

CODE_23D052:        A5 12         LDA $12                   
CODE_23D054:        85 00         STA $00                   
CODE_23D056:        A9 70         LDA #$70                  
CODE_23D058:        18            CLC                       
CODE_23D059:        6D 10 02      ADC $0210                 
CODE_23D05C:        85 01         STA $01                   
CODE_23D05E:        90 02         BCC CODE_23D062           
CODE_23D060:        E6 00         INC $00                   
CODE_23D062:        A5 00         LDA $00                   
CODE_23D064:        C5 43         CMP $43                   
CODE_23D066:        30 2B         BMI CODE_23D093           
CODE_23D068:        A5 5E         LDA $5E                   
CODE_23D06A:        38            SEC                       
CODE_23D06B:        E5 01         SBC $01                   
CODE_23D06D:        10 24         BPL CODE_23D093           
CODE_23D06F:        8D 81 07      STA $0781                 
CODE_23D072:        18            CLC                       
CODE_23D073:        6D 10 02      ADC $0210                 
CODE_23D076:        8D 10 02      STA $0210                 
CODE_23D079:        B0 05         BCS CODE_23D080                   
CODE_23D07B:        C6 12         DEC $12                   
CODE_23D07D:        CE 11 02      DEC $0211                 
CODE_23D080:        A9 01         LDA #$01                  
CODE_23D082:        85 25         STA $25                   
CODE_23D084:        A5 12         LDA $12                   
CODE_23D086:        10 0B         BPL CODE_23D093           
CODE_23D088:        64 12         STZ $12                   
CODE_23D08A:        9C 10 02      STZ $0210                 
CODE_23D08D:        9C 11 02      STZ $0211                 
CODE_23D090:        9C 81 07      STZ $0781                 
CODE_23D093:        AD BF 02      LDA $02BF                 
CODE_23D096:        C9 0B         CMP #$0B                  
CODE_23D098:        D0 16         BNE CODE_23D0B0           
CODE_23D09A:        A0 00         LDY #$00                  
CODE_23D09C:        AD 81 07      LDA $0781                 
CODE_23D09F:        10 01         BPL CODE_23D0A2           
CODE_23D0A1:        88            DEY                       
CODE_23D0A2:        18            CLC                       
CODE_23D0A3:        6D 53 03      ADC $0353                 
CODE_23D0A6:        8D 53 03      STA $0353                 
CODE_23D0A9:        98            TYA                       
CODE_23D0AA:        6D 54 03      ADC $0354                 
CODE_23D0AD:        8D 54 03      STA $0354                 
CODE_23D0B0:        C2 20         REP #$20                  
CODE_23D0B2:        AD 10 02      LDA $0210                 
CODE_23D0B5:        4A            LSR A                     
CODE_23D0B6:        8D 12 02      STA $0212                 
CODE_23D0B9:        E2 20         SEP #$20                  
CODE_23D0BB:        AD 59 05      LDA $0559                 
CODE_23D0BE:        D0 3A         BNE CODE_23D0FA           
CODE_23D0C0:        A5 79         LDA $79                   
CODE_23D0C2:        A4 8B         LDY $8B                   
CODE_23D0C4:        30 09         BMI CODE_23D0CF           
CODE_23D0C6:        C9 E8         CMP #$E8                  
CODE_23D0C8:        90 30         BCC CODE_23D0FA           
CODE_23D0CA:        A9 E8         LDA #$E8                  
CODE_23D0CC:        4C D5 D0      JMP CODE_23D0D5           

CODE_23D0CF:        C9 11         CMP #$11                  
CODE_23D0D1:        B0 27         BCS CODE_23D0FA                   
CODE_23D0D3:        A9 10         LDA #$10                  
CODE_23D0D5:        85 79         STA $79                   
CODE_23D0D7:        A0 00         LDY #$00                  
CODE_23D0D9:        38            SEC                       
CODE_23D0DA:        E5 5E         SBC $5E                   
CODE_23D0DC:        10 02         BPL CODE_23D0E0           
CODE_23D0DE:        A0 FF         LDY #$FF                  
CODE_23D0E0:        18            CLC                       
CODE_23D0E1:        65 5E         ADC $5E                   
CODE_23D0E3:        85 5E         STA $5E                   
CODE_23D0E5:        90 01         BCC CODE_23D0E8           
CODE_23D0E7:        C8            INY                       
CODE_23D0E8:        98            TYA                       
CODE_23D0E9:        18            CLC                       
CODE_23D0EA:        65 43         ADC $43                   
CODE_23D0EC:        85 43         STA $43                   
CODE_23D0EE:        A5 8B         LDA $8B                   
CODE_23D0F0:        08            PHP                       
CODE_23D0F1:        29 0F         AND #$0F                  
CODE_23D0F3:        28            PLP                       
CODE_23D0F4:        10 02         BPL CODE_23D0F8           
CODE_23D0F6:        09 F0         ORA #$F0                  
CODE_23D0F8:        85 8B         STA $8B                   
CODE_23D0FA:        AD 24 04      LDA $0424                 
CODE_23D0FD:        F0 0A         BEQ CODE_23D109           
CODE_23D0FF:        C9 01         CMP #$01                  
CODE_23D101:        D0 03         BNE CODE_23D106           
CODE_23D103:        4C 8A D1      JMP CODE_23D18A           

CODE_23D106:        4C EF D1      JMP CODE_23D1EF           

CODE_23D109:        AD FC 05      LDA $05FC                 
CODE_23D10C:        F0 69         BEQ CODE_23D177           
CODE_23D10E:        AD 0D 1A      LDA $1A0D                 
CODE_23D111:        48            PHA                       
CODE_23D112:        38            SEC                       
CODE_23D113:        ED 16 02      SBC $0216                 
CODE_23D116:        8D 80 07      STA $0780                 
CODE_23D119:        68            PLA                       
CODE_23D11A:        8D 16 02      STA $0216                 
CODE_23D11D:        8D 43 05      STA $0543                 
CODE_23D120:        AD 50 03      LDA $0350                 
CODE_23D123:        C9 01         CMP #$01                  
CODE_23D125:        F0 0F         BEQ CODE_23D136           
CODE_23D127:        C9 02         CMP #$02                  
CODE_23D129:        F0 2F         BEQ CODE_23D15A           
CODE_23D12B:        C9 23         CMP #$23                  
CODE_23D12D:        F0 2B         BEQ CODE_23D15A           
CODE_23D12F:        AD 27 07      LDA $0727                 
CODE_23D132:        C9 05         CMP #$05                  
CODE_23D134:        D0 24         BNE CODE_23D15A           
CODE_23D136:        C2 20         REP #$20                  
CODE_23D138:        AD 16 02      LDA $0216                 
CODE_23D13B:        4A            LSR A                     
CODE_23D13C:        4A            LSR A                     
CODE_23D13D:        8D 18 02      STA $0218                 
CODE_23D140:        AD 16 02      LDA $0216                 
CODE_23D143:        38            SEC                       
CODE_23D144:        ED 18 02      SBC $0218                 
CODE_23D147:        8D 18 02      STA $0218                 
CODE_23D14A:        AD 4F 03      LDA $034F                 
CODE_23D14D:        29 FF 00      AND #$00FF                
CODE_23D150:        F0 06         BEQ CODE_23D158           
CODE_23D152:        AD 16 02      LDA $0216                 
CODE_23D155:        8D 18 02      STA $0218                 
CODE_23D158:        E2 20         SEP #$20                  
CODE_23D15A:        A5 A6         LDA $A6                   
CODE_23D15C:        F0 18         BEQ CODE_23D176           
CODE_23D15E:        AD 6B 05      LDA $056B                 
CODE_23D161:        0D FE 05      ORA $05FE                 
CODE_23D164:        D0 10         BNE CODE_23D176           
CODE_23D166:        AD 80 07      LDA $0780                 
CODE_23D169:        10 02         BPL CODE_23D16D           
CODE_23D16B:        C6 55         DEC $55                   
CODE_23D16D:        18            CLC                       
CODE_23D16E:        65 70         ADC $70                   
CODE_23D170:        85 70         STA $70                   
CODE_23D172:        90 02         BCC CODE_23D176           
CODE_23D174:        E6 55         INC $55                   
CODE_23D176:        6B            RTL                       

CODE_23D177:        AD 16 02      LDA $0216                 
CODE_23D17A:        C9 EF         CMP #$EF                  
CODE_23D17C:        D0 0C         BNE CODE_23D18A           
CODE_23D17E:        AD 6E 05      LDA $056E                 
CODE_23D181:        0D 6B 05      ORA $056B                 
CODE_23D184:        08            PHP                       
CODE_23D185:        A9 EF         LDA #$EF                  
CODE_23D187:        28            PLP                       
CODE_23D188:        F0 68         BEQ CODE_23D1F2           
CODE_23D18A:        A5 70         LDA $70                   
CODE_23D18C:        38            SEC                       
CODE_23D18D:        ED 43 05      SBC $0543                 
CODE_23D190:        85 00         STA $00                   
CODE_23D192:        A5 55         LDA $55                   
CODE_23D194:        ED 42 05      SBC $0542                 
CODE_23D197:        30 0B         BMI CODE_23D1A4           
CODE_23D199:        A5 00         LDA $00                   
CODE_23D19B:        38            SEC                       
CODE_23D19C:        E9 30         SBC #$30                  
CODE_23D19E:        B0 17         BCS CODE_23D1B7                   
CODE_23D1A0:        C9 FD         CMP #$FD                  
CODE_23D1A2:        B0 02         BCS CODE_23D1A6                   
CODE_23D1A4:        A9 FD         LDA #$FD                  
CODE_23D1A6:        8D 80 07      STA $0780                 
CODE_23D1A9:        18            CLC                       
CODE_23D1AA:        6D 16 02      ADC $0216                 
CODE_23D1AD:        B0 05         BCS CODE_23D1B4                   
CODE_23D1AF:        A9 00         LDA #$00                  
CODE_23D1B1:        8D 80 07      STA $0780                 
CODE_23D1B4:        4C D2 D1      JMP CODE_23D1D2           

CODE_23D1B7:        A5 00         LDA $00                   
CODE_23D1B9:        38            SEC                       
CODE_23D1BA:        E9 79         SBC #$79                  
CODE_23D1BC:        90 31         BCC CODE_23D1EF           
CODE_23D1BE:        8D 80 07      STA $0780                 
CODE_23D1C1:        18            CLC                       
CODE_23D1C2:        6D 16 02      ADC $0216                 
CODE_23D1C5:        B0 04         BCS CODE_23D1CB                   
CODE_23D1C7:        C9 EF         CMP #$EF                  
CODE_23D1C9:        90 07         BCC CODE_23D1D2           
CODE_23D1CB:        A9 00         LDA #$00                  
CODE_23D1CD:        8D 80 07      STA $0780                 
CODE_23D1D0:        A9 EF         LDA #$EF                  
CODE_23D1D2:        8D 16 02      STA $0216                 
CODE_23D1D5:        4A            LSR A                     
CODE_23D1D6:        4A            LSR A                     
CODE_23D1D7:        8D 18 02      STA $0218                 
CODE_23D1DA:        AD 16 02      LDA $0216                 
CODE_23D1DD:        38            SEC                       
CODE_23D1DE:        ED 18 02      SBC $0218                 
CODE_23D1E1:        8D 18 02      STA $0218                 
CODE_23D1E4:        AD 4F 03      LDA $034F                 
CODE_23D1E7:        F0 06         BEQ CODE_23D1EF           
CODE_23D1E9:        AD 16 02      LDA $0216                 
CODE_23D1EC:        8D 18 02      STA $0218                 
CODE_23D1EF:        AD 16 02      LDA $0216                 
CODE_23D1F2:        8D 43 05      STA $0543                 
CODE_23D1F5:        AD 17 02      LDA $0217                 
CODE_23D1F8:        8D 42 05      STA $0542                 
CODE_23D1FB:        6B            RTL                       

CODE_23D1FC:        A9 00         LDA #$00                  
CODE_23D1FE:        85 43         STA $43                   
CODE_23D200:        A4 22         LDY $22                   
CODE_23D202:        B9 ED CE      LDA.w DATA_21CEED,y               
CODE_23D205:        85 00         STA $00                   
CODE_23D207:        B9 FD CE      LDA.w DATA_21CEFD,y               
CODE_23D20A:        85 01         STA $01                   
CODE_23D20C:        A5 70         LDA $70                   
CODE_23D20E:        38            SEC                       
CODE_23D20F:        ED 43 05      SBC $0543                 
CODE_23D212:        A8            TAY                       
CODE_23D213:        A5 55         LDA $55                   
CODE_23D215:        ED 42 05      SBC $0542                 
CODE_23D218:        F0 03         BEQ CODE_23D21D           
CODE_23D21A:        4C B5 D2      JMP CODE_23D2B5           

CODE_23D21D:        98            TYA                       
CODE_23D21E:        38            SEC                       
CODE_23D21F:        E9 30         SBC #$30                  
CODE_23D221:        B0 2A         BCS CODE_23D24D                   
CODE_23D223:        CE 42 05      DEC $0542                 
CODE_23D226:        C9 FD         CMP #$FD                  
CODE_23D228:        B0 02         BCS CODE_23D22C                   
CODE_23D22A:        A9 FD         LDA #$FD                  
CODE_23D22C:        8D 80 07      STA $0780                 
CODE_23D22F:        18            CLC                       
CODE_23D230:        6D 43 05      ADC $0543                 
CODE_23D233:        8D 43 05      STA $0543                 
CODE_23D236:        A9 00         LDA #$00                  
CODE_23D238:        85 25         STA $25                   
CODE_23D23A:        6D 42 05      ADC $0542                 
CODE_23D23D:        10 08         BPL CODE_23D247           
CODE_23D23F:        A9 00         LDA #$00                  
CODE_23D241:        8D 43 05      STA $0543                 
CODE_23D244:        8D 80 07      STA $0780                 
CODE_23D247:        8D 42 05      STA $0542                 
CODE_23D24A:        4C 8C D2      JMP CODE_23D28C           

CODE_23D24D:        98            TYA                       
CODE_23D24E:        E9 58         SBC #$58                  
CODE_23D250:        90 63         BCC CODE_23D2B5           
CODE_23D252:        C9 04         CMP #$04                  
CODE_23D254:        90 02         BCC CODE_23D258           
CODE_23D256:        A9 04         LDA #$04                  
CODE_23D258:        8D 80 07      STA $0780                 
CODE_23D25B:        18            CLC                       
CODE_23D25C:        6D 43 05      ADC $0543                 
CODE_23D25F:        8D 43 05      STA $0543                 
CODE_23D262:        A9 00         LDA #$00                  
CODE_23D264:        6D 42 05      ADC $0542                 
CODE_23D267:        8D 42 05      STA $0542                 
CODE_23D26A:        C5 00         CMP $00                   
CODE_23D26C:        08            PHP                       
CODE_23D26D:        A9 01         LDA #$01                  
CODE_23D26F:        85 25         STA $25                   
CODE_23D271:        28            PLP                       
CODE_23D272:        90 18         BCC CODE_23D28C           
CODE_23D274:        D0 07         BNE CODE_23D27D           
CODE_23D276:        AD 43 05      LDA $0543                 
CODE_23D279:        C5 01         CMP $01                   
CODE_23D27B:        90 0F         BCC CODE_23D28C           
CODE_23D27D:        A5 00         LDA $00                   
CODE_23D27F:        8D 42 05      STA $0542                 
CODE_23D282:        A5 01         LDA $01                   
CODE_23D284:        8D 43 05      STA $0543                 
CODE_23D287:        A9 00         LDA #$00                  
CODE_23D289:        8D 80 07      STA $0780                 
CODE_23D28C:        C2 20         REP #$20                  
CODE_23D28E:        AD 42 05      LDA $0542                 
CODE_23D291:        EB            XBA                       
CODE_23D292:        8D 16 02      STA $0216                 
CODE_23D295:        4A            LSR A                     
CODE_23D296:        4A            LSR A                     
CODE_23D297:        8D 18 02      STA $0218                 
CODE_23D29A:        AD 16 02      LDA $0216                 
CODE_23D29D:        38            SEC                       
CODE_23D29E:        ED 18 02      SBC $0218                 
CODE_23D2A1:        8D 18 02      STA $0218                 
CODE_23D2A4:        E2 20         SEP #$20                  
CODE_23D2A6:        AD 42 05      LDA $0542                 
CODE_23D2A9:        85 13         STA $13                   
CODE_23D2AB:        AD 25 04      LDA $0425                 
CODE_23D2AE:        F0 05         BEQ CODE_23D2B5           
CODE_23D2B0:        A9 0F         LDA #$0F                  
CODE_23D2B2:        8D 16 00      STA $0016                 
CODE_23D2B5:        6B            RTL                       

CODE_23D2B6:        9C EF 1C      STZ $1CEF                 
CODE_23D2B9:        AD 25 04      LDA $0425                 
CODE_23D2BC:        D0 73         BNE CODE_23D331           
CODE_23D2BE:        AD 8B 05      LDA $058B                 
CODE_23D2C1:        F0 21         BEQ CODE_23D2E4           
CODE_23D2C3:        AD 44 05      LDA $0544                 
CODE_23D2C6:        D0 1C         BNE CODE_23D2E4           
CODE_23D2C8:        A5 70         LDA $70                   
CODE_23D2CA:        18            CLC                       
CODE_23D2CB:        65 09         ADC $09                   
CODE_23D2CD:        38            SEC                       
CODE_23D2CE:        ED 43 05      SBC $0543                 
CODE_23D2D1:        C9 A0         CMP #$A0                  
CODE_23D2D3:        90 0F         BCC CODE_23D2E4           
CODE_23D2D5:        E9 10         SBC #$10                  
CODE_23D2D7:        29 F0         AND #$F0                  
CODE_23D2D9:        85 0D         STA $0D                   
CODE_23D2DB:        A9 01         LDA #$01                  
CODE_23D2DD:        85 0C         STA $0C                   
CODE_23D2DF:        8D EF 1C      STA $1CEF                 
CODE_23D2E2:        D0 0F         BNE CODE_23D2F3           
CODE_23D2E4:        A5 55         LDA $55                   
CODE_23D2E6:        85 0C         STA $0C                   
CODE_23D2E8:        A5 09         LDA $09                   
CODE_23D2EA:        18            CLC                       
CODE_23D2EB:        65 70         ADC $70                   
CODE_23D2ED:        85 0D         STA $0D                   
CODE_23D2EF:        90 02         BCC CODE_23D2F3           
CODE_23D2F1:        E6 0C         INC $0C                   
CODE_23D2F3:        A5 0C         LDA $0C                   
CODE_23D2F5:        F0 0F         BEQ CODE_23D306           
CODE_23D2F7:        C9 01         CMP #$01                  
CODE_23D2F9:        D0 06         BNE CODE_23D301           
CODE_23D2FB:        A5 0D         LDA $0D                   
CODE_23D2FD:        C9 B0         CMP #$B0                  
CODE_23D2FF:        90 05         BCC CODE_23D306           
CODE_23D301:        A9 00         LDA #$00                  
CODE_23D303:        85 B4         STA $B4                   
CODE_23D305:        6B            RTL                       

CODE_23D306:        A5 43         LDA $43                   
CODE_23D308:        85 0E         STA $0E                   
CODE_23D30A:        A5 0A         LDA $0A                   
CODE_23D30C:        10 02         BPL CODE_23D310           
CODE_23D30E:        C6 0E         DEC $0E                   
CODE_23D310:        A5 5E         LDA $5E                   
CODE_23D312:        18            CLC                       
CODE_23D313:        65 0A         ADC $0A                   
CODE_23D315:        85 0F         STA $0F                   
CODE_23D317:        90 02         BCC CODE_23D31B           
CODE_23D319:        E6 0E         INC $0E                   
CODE_23D31B:        84 09         STY $09                   
CODE_23D31D:        86 0A         STX $0A                   
CODE_23D31F:        22 E0 9F 20   JSL CODE_209FE0           
CODE_23D323:        A6 0A         LDX $0A                   
CODE_23D325:        AC 71 05      LDY $0571                 
CODE_23D328:        D0 04         BNE CODE_23D32E           
CODE_23D32A:        22 D2 8E 27   JSL CODE_278ED2           
CODE_23D32E:        A4 09         LDY $09                   
CODE_23D330:        6B            RTL                       

CODE_23D331:        A5 55         LDA $55                   
CODE_23D333:        85 0C         STA $0C                   
CODE_23D335:        A5 09         LDA $09                   
CODE_23D337:        18            CLC                       
CODE_23D338:        65 70         ADC $70                   
CODE_23D33A:        85 0D         STA $0D                   
CODE_23D33C:        90 02         BCC CODE_23D340           
CODE_23D33E:        E6 0C         INC $0C                   
CODE_23D340:        A5 0C         LDA $0C                   
CODE_23D342:        10 03         BPL CODE_23D347           
CODE_23D344:        A9 00         LDA #$00                  
CODE_23D346:        6B            RTL                       

CODE_23D347:        A5 5E         LDA $5E                   
CODE_23D349:        18            CLC                       
CODE_23D34A:        65 0A         ADC $0A                   
CODE_23D34C:        85 0F         STA $0F                   
CODE_23D34E:        84 09         STY $09                   
CODE_23D350:        22 69 9F 20   JSL CODE_209F69           
CODE_23D354:        AC 71 05      LDY $0571                 
CODE_23D357:        D0 04         BNE CODE_23D35D           
CODE_23D359:        22 D2 8E 27   JSL CODE_278ED2           
CODE_23D35D:        A0 00         LDY #$00                  
CODE_23D35F:        84 0E         STY $0E                   
CODE_23D361:        A4 09         LDY $09                   
CODE_23D363:        6B            RTL                       

CODE_23D364:        A9 00         LDA #$00                  
CODE_23D366:        8D 6D 05      STA $056D                 
CODE_23D369:        AD 71 05      LDA $0571                 
CODE_23D36C:        F0 01         BEQ CODE_23D36F           
CODE_23D36E:        60            RTS                       

CODE_23D36F:        AD 82 AD      LDA.w DATA_21AD82                 
CODE_23D372:        85 52         STA $52                   
CODE_23D374:        AD 83 AD      LDA.w DATA_21AD82+1                 
CODE_23D377:        85 53         STA $53                   
CODE_23D379:        AD 63 05      LDA $0563                 
CODE_23D37C:        F0 18         BEQ CODE_23D396           
CODE_23D37E:        AD 0A 07      LDA $070A                 
CODE_23D381:        C9 03         CMP #$03                  
CODE_23D383:        F0 0E         BEQ CODE_23D393           
CODE_23D385:        C9 0E         CMP #$0E                  
CODE_23D387:        F0 0A         BEQ CODE_23D393           
CODE_23D389:        AD 80 AD      LDA.w DATA_21AD80                 
CODE_23D38C:        85 52         STA $52                   
CODE_23D38E:        AD 81 AD      LDA.w DATA_21AD80+1                 
CODE_23D391:        85 53         STA $53                   
CODE_23D393:        4C 96 D8      JMP CODE_23D896           

CODE_23D396:        A0 26         LDY #$26                  
CODE_23D398:        A5 BB         LDA $BB                   
CODE_23D39A:        F0 07         BEQ CODE_23D3A3           
CODE_23D39C:        AD 6F 05      LDA $056F                 
CODE_23D39F:        D0 02         BNE CODE_23D3A3           
CODE_23D3A1:        A0 06         LDY #$06                  
CODE_23D3A3:        A2 03         LDX #$03                  
CODE_23D3A5:        A5 9D         LDA $9D                   
CODE_23D3A7:        10 05         BPL CODE_23D3AE           
CODE_23D3A9:        98            TYA                       
CODE_23D3AA:        18            CLC                       
CODE_23D3AB:        69 10         ADC #$10                  
CODE_23D3AD:        A8            TAY                       
CODE_23D3AE:        A5 5E         LDA $5E                   
CODE_23D3B0:        29 0F         AND #$0F                  
CODE_23D3B2:        C9 08         CMP #$08                  
CODE_23D3B4:        30 05         BMI CODE_23D3BB           
CODE_23D3B6:        98            TYA                       
CODE_23D3B7:        18            CLC                       
CODE_23D3B8:        69 08         ADC #$08                  
CODE_23D3BA:        A8            TAY                       
CODE_23D3BB:        98            TYA                       
CODE_23D3BC:        48            PHA                       
CODE_23D3BD:        B9 42 EB      LDA.w DATA_21EB42,y               
CODE_23D3C0:        85 09         STA $09                   
CODE_23D3C2:        B9 43 EB      LDA.w DATA_21EB42+1,y               
CODE_23D3C5:        85 0A         STA $0A                   
CODE_23D3C7:        22 B6 D2 23   JSL CODE_23D2B6           
CODE_23D3CB:        9D 03 06      STA $0603,x               
CODE_23D3CE:        48            PHA                       
CODE_23D3CF:        29 C0         AND #$C0                  
CODE_23D3D1:        0A            ASL A                     
CODE_23D3D2:        2A            ROL A                     
CODE_23D3D3:        2A            ROL A                     
CODE_23D3D4:        9D 08 06      STA $0608,x               
CODE_23D3D7:        68            PLA                       
CODE_23D3D8:        20 C9 D4      JSR CODE_23D4C9           
CODE_23D3DB:        68            PLA                       
CODE_23D3DC:        A8            TAY                       
CODE_23D3DD:        88            DEY                       
CODE_23D3DE:        88            DEY                       
CODE_23D3DF:        CA            DEX                       
CODE_23D3E0:        30 03         BMI CODE_23D3E5           
CODE_23D3E2:        4C BB D3      JMP CODE_23D3BB           

CODE_23D3E5:        A0 02         LDY #$02                  
CODE_23D3E7:        20 B4 D4      JSR CODE_23D4B4           
CODE_23D3EA:        90 41         BCC CODE_23D42D           
CODE_23D3EC:        AD 85 05      LDA $0585                 
CODE_23D3EF:        D0 3C         BNE CODE_23D42D           
CODE_23D3F1:        EE 74 05      INC $0574                 
CODE_23D3F4:        A0 01         LDY #$01                  
CODE_23D3F6:        A2 00         LDX #$00                  
CODE_23D3F8:        A5 5E         LDA $5E                   
CODE_23D3FA:        29 0F         AND #$0F                  
CODE_23D3FC:        C9 08         CMP #$08                  
CODE_23D3FE:        10 03         BPL CODE_23D403           
CODE_23D400:        A0 FF         LDY #$FF                  
CODE_23D402:        E8            INX                       
CODE_23D403:        A5 BB         LDA $BB                   
CODE_23D405:        D0 02         BNE CODE_23D409           
CODE_23D407:        E8            INX                       
CODE_23D408:        E8            INX                       
CODE_23D409:        BD A8 EB      LDA.w DATA_21EBA8,x               
CODE_23D40C:        18            CLC                       
CODE_23D40D:        65 5E         ADC $5E                   
CODE_23D40F:        29 0F         AND #$0F                  
CODE_23D411:        F0 1A         BEQ CODE_23D42D           
CODE_23D413:        98            TYA                       
CODE_23D414:        10 02         BPL CODE_23D418           
CODE_23D416:        C6 43         DEC $43                   
CODE_23D418:        18            CLC                       
CODE_23D419:        65 5E         ADC $5E                   
CODE_23D41B:        85 5E         STA $5E                   
CODE_23D41D:        90 02         BCC CODE_23D421           
CODE_23D41F:        E6 43         INC $43                   
CODE_23D421:        C8            INY                       
CODE_23D422:        A5 8B         LDA $8B                   
CODE_23D424:        10 02         BPL CODE_23D428           
CODE_23D426:        88            DEY                       
CODE_23D427:        88            DEY                       
CODE_23D428:        98            TYA                       
CODE_23D429:        D0 02         BNE CODE_23D42D           
CODE_23D42B:        85 8B         STA $8B                   
CODE_23D42D:        A5 9D         LDA $9D                   
CODE_23D42F:        10 22         BPL CODE_23D453           
CODE_23D431:        A5 A6         LDA $A6                   
CODE_23D433:        F0 1E         BEQ CODE_23D453           
CODE_23D435:        A0 00         LDY #$00                  
CODE_23D437:        20 B4 D4      JSR CODE_23D4B4           
CODE_23D43A:        90 16         BCC CODE_23D452           
CODE_23D43C:        A9 01         LDA #$01                  
CODE_23D43E:        8D 00 12      STA $1200                 
CODE_23D441:        C8            INY                       
CODE_23D442:        8C 6D 05      STY $056D                 
CODE_23D445:        AD 0F 1A      LDA $1A0F                 
CODE_23D448:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23D44C:        10 02         BPL CODE_23D450           
CODE_23D44E:        A9 01         LDA #$01                  
CODE_23D450:        85 9D         STA $9D                   
CODE_23D452:        60            RTS                       

CODE_23D453:        AE 09 06      LDX $0609                 
CODE_23D456:        AD 04 06      LDA $0604                 
CODE_23D459:        DD 96 1E      CMP $1E96,x               
CODE_23D45C:        B0 18         BCS CODE_23D476                   
CODE_23D45E:        AE 08 06      LDX $0608                 
CODE_23D461:        AD 03 06      LDA $0603                 
CODE_23D464:        DD 96 1E      CMP $1E96,x               
CODE_23D467:        B0 0D         BCS CODE_23D476                   
CODE_23D469:        A5 A6         LDA $A6                   
CODE_23D46B:        D0 46         BNE CODE_23D4B3           
CODE_23D46D:        85 9D         STA $9D                   
CODE_23D46F:        A9 01         LDA #$01                  
CODE_23D471:        85 A6         STA $A6                   
CODE_23D473:        4C B3 D4      JMP CODE_23D4B3           

CODE_23D476:        AD EF 1C      LDA $1CEF                 
CODE_23D479:        F0 19         BEQ CODE_23D494           
CODE_23D47B:        A5 70         LDA $70                   
CODE_23D47D:        38            SEC                       
CODE_23D47E:        ED 43 05      SBC $0543                 
CODE_23D481:        29 F0         AND #$F0                  
CODE_23D483:        18            CLC                       
CODE_23D484:        69 01         ADC #$01                  
CODE_23D486:        18            CLC                       
CODE_23D487:        6D 43 05      ADC $0543                 
CODE_23D48A:        85 70         STA $70                   
CODE_23D48C:        A9 00         LDA #$00                  
CODE_23D48E:        69 00         ADC #$00                  
CODE_23D490:        85 55         STA $55                   
CODE_23D492:        10 16         BPL CODE_23D4AA           
CODE_23D494:        A5 70         LDA $70                   
CODE_23D496:        29 0F         AND #$0F                  
CODE_23D498:        C9 06         CMP #$06                  
CODE_23D49A:        B0 17         BCS CODE_23D4B3                   
CODE_23D49C:        A5 70         LDA $70                   
CODE_23D49E:        29 0F         AND #$0F                  
CODE_23D4A0:        F0 08         BEQ CODE_23D4AA           
CODE_23D4A2:        C9 01         CMP #$01                  
CODE_23D4A4:        F0 02         BEQ CODE_23D4A8           
CODE_23D4A6:        C6 70         DEC $70                   
CODE_23D4A8:        C6 70         DEC $70                   
CODE_23D4AA:        A9 00         LDA #$00                  
CODE_23D4AC:        85 A6         STA $A6                   
CODE_23D4AE:        85 9D         STA $9D                   
CODE_23D4B0:        8D F4 05      STA $05F4                 
CODE_23D4B3:        60            RTS                       

CODE_23D4B4:        BE 09 06      LDX $0609,y               
CODE_23D4B7:        B9 04 06      LDA $0604,y               
CODE_23D4BA:        DD 9A 1E      CMP $1E9A,x               
CODE_23D4BD:        B0 09         BCS CODE_23D4C8                   
CODE_23D4BF:        BE 08 06      LDX $0608,y               
CODE_23D4C2:        B9 03 06      LDA $0603,y               
CODE_23D4C5:        DD 9A 1E      CMP $1E9A,x               
CODE_23D4C8:        60            RTS                       

CODE_23D4C9:        98            TYA                       
CODE_23D4CA:        48            PHA                       
CODE_23D4CB:        AC 77 05      LDY $0577                 
CODE_23D4CE:        D0 2C         BNE CODE_23D4FC           
CODE_23D4D0:        A9 32         LDA #$32                  
CODE_23D4D2:        DD 03 06      CMP $0603,x               
CODE_23D4D5:        D0 25         BNE CODE_23D4FC           
CODE_23D4D7:        24 18         BIT $18                   
CODE_23D4D9:        50 21         BVC CODE_23D4FC                   
CODE_23D4DB:        E0 03         CPX #$03                  
CODE_23D4DD:        F0 1D         BEQ CODE_23D4FC           
CODE_23D4DF:        AD 64 05      LDA $0564                 
CODE_23D4E2:        D0 18         BNE CODE_23D4FC           
CODE_23D4E4:        8A            TXA                       
CODE_23D4E5:        48            PHA                       
CODE_23D4E6:        20 48 D5      JSR CODE_23D548           
CODE_23D4E9:        8A            TXA                       
CODE_23D4EA:        0A            ASL A                     
CODE_23D4EB:        68            PLA                       
CODE_23D4EC:        AA            TAX                       
CODE_23D4ED:        B0 0D         BCS CODE_23D4FC                   
CODE_23D4EF:        A9 00         LDA #$00                  
CODE_23D4F1:        8D 17 05      STA $0517                 
CODE_23D4F4:        A9 02         LDA #$02                  
CODE_23D4F6:        20 37 DE      JSR CODE_23DE37           
CODE_23D4F9:        4C 45 D5      JMP CODE_23D545           

CODE_23D4FC:        BD 03 06      LDA $0603,x               
CODE_23D4FF:        C9 40         CMP #$40                  
CODE_23D501:        D0 16         BNE CODE_23D519           
CODE_23D503:        A9 01         LDA #$01                  
CODE_23D505:        20 37 DE      JSR CODE_23DE37           
CODE_23D508:        22 B7 9B 20   JSL CODE_209BB7           
CODE_23D50C:        A9 01         LDA #$01                  
CODE_23D50E:        8D 03 12      STA $1203                 
CODE_23D511:        A9 00         LDA #$00                  
CODE_23D513:        8D 04 06      STA $0604                 
CODE_23D516:        4C 45 D5      JMP CODE_23D545           

CODE_23D519:        C9 F2         CMP #$F2                  
CODE_23D51B:        D0 25         BNE CODE_23D542           
CODE_23D51D:        E0 02         CPX #$02                  
CODE_23D51F:        10 21         BPL CODE_23D542           
CODE_23D521:        A9 09         LDA #$09                  
CODE_23D523:        CD 64 05      CMP $0564                 
CODE_23D526:        F0 1A         BEQ CODE_23D542           
CODE_23D528:        20 37 DE      JSR CODE_23DE37           
CODE_23D52B:        A9 10         LDA #$10                  
CODE_23D52D:        8D F3 1C      STA $1CF3                 
CODE_23D530:        A9 0B         LDA #$0B                  
CODE_23D532:        8D 00 12      STA $1200                 
CODE_23D535:        A9 84         LDA #$84                  
CODE_23D537:        8D 67 05      STA $0567                 
CODE_23D53A:        A9 04         LDA #$04                  ; \
CODE_23D53C:        8D 02 12      STA $1202                 ; / P-switch music
CODE_23D53F:        4C 45 D5      JMP CODE_23D545           

CODE_23D542:        20 67 D5      JSR CODE_23D567           
CODE_23D545:        68            PLA                       
CODE_23D546:        A8            TAY                       
CODE_23D547:        60            RTS                       

CODE_23D548:        A2 04         LDX #$04                  
CODE_23D54A:        BD 61 06      LDA $0661,x               
CODE_23D54D:        F0 04         BEQ CODE_23D553           
CODE_23D54F:        CA            DEX                       
CODE_23D550:        10 F8         BPL CODE_23D54A           
CODE_23D552:        60            RTS                       

CODE_23D553:        22 96 9C 27   JSL CODE_279C96           
CODE_23D557:        A9 04         LDA #$04                  
CODE_23D559:        9D 61 06      STA $0661,x               
CODE_23D55C:        A9 5C         LDA #$5C                  
CODE_23D55E:        9D 71 06      STA $0671,x               
CODE_23D561:        A9 80         LDA #$80                  
CODE_23D563:        9D A6 06      STA $06A6,x               
CODE_23D566:        60            RTS                       

CODE_23D567:        98            TYA                       
CODE_23D568:        48            PHA                       
CODE_23D569:        A0 03         LDY #$03                  
CODE_23D56B:        E0 04         CPX #$04                  
CODE_23D56D:        F0 04         BEQ CODE_23D573           
CODE_23D56F:        A5 9D         LDA $9D                   
CODE_23D571:        10 0B         BPL CODE_23D57E           
CODE_23D573:        C8            INY                       
CODE_23D574:        C8            INY                       
CODE_23D575:        C8            INY                       
CODE_23D576:        AD 60 05      LDA $0560                 
CODE_23D579:        C9 08         CMP #$08                  
CODE_23D57B:        D0 01         BNE CODE_23D57E           
CODE_23D57D:        C8            INY                       
CODE_23D57E:        BD 03 06      LDA $0603,x               
CODE_23D581:        38            SEC                       
CODE_23D582:        F9 13 EC      SBC.w DATA_21EC13,y               
CODE_23D585:        D9 03 EC      CMP.w DATA_21EC03,y               
CODE_23D588:        90 06         BCC CODE_23D590           
CODE_23D58A:        88            DEY                       
CODE_23D58B:        10 F1         BPL CODE_23D57E           
CODE_23D58D:        4C 19 D6      JMP CODE_23D619           

CODE_23D590:        18            CLC                       
CODE_23D591:        79 0B EC      ADC.w DATA_21EC0B,y               
CODE_23D594:        85 05         STA $05                   
CODE_23D596:        BD 23 EC      LDA.w DATA_21EC23,x               
CODE_23D599:        39 1B EC      AND.w DATA_21EC1B,y               
CODE_23D59C:        F0 EC         BEQ CODE_23D58A           
CODE_23D59E:        A9 10         LDA #$10                  
CODE_23D5A0:        8D 45 1A      STA $1A45                 
CODE_23D5A3:        A4 05         LDY $05                   
CODE_23D5A5:        B9 C3 EB      LDA.w DATA_21EBC3,y               
CODE_23D5A8:        20 1C D6      JSR CODE_23D61C           
CODE_23D5AB:        98            TYA                       
CODE_23D5AC:        D0 03         BNE CODE_23D5B1           
CODE_23D5AE:        4C 19 D6      JMP CODE_23D619           

CODE_23D5B1:        30 23         BMI CODE_23D5D6           
CODE_23D5B3:        A4 05         LDY $05                   
CODE_23D5B5:        19 E3 EB      ORA.w DATA_21EBE3,y               
CODE_23D5B8:        8D 7C 05      STA $057C                 
CODE_23D5BB:        A9 01         LDA #$01                  
CODE_23D5BD:        8D 00 12      STA $1200                 
CODE_23D5C0:        A9 02         LDA #$02                  
CODE_23D5C2:        85 0B         STA $0B                   
CODE_23D5C4:        E0 02         CPX #$02                  
CODE_23D5C6:        30 0E         BMI CODE_23D5D6           
CODE_23D5C8:        A0 02         LDY #$02                  
CODE_23D5CA:        A5 5E         LDA $5E                   
CODE_23D5CC:        29 0F         AND #$0F                  
CODE_23D5CE:        C9 08         CMP #$08                  
CODE_23D5D0:        30 01         BMI CODE_23D5D3           
CODE_23D5D2:        C8            INY                       
CODE_23D5D3:        4C E7 D5      JMP CODE_23D5E7           

CODE_23D5D6:        A0 00         LDY #$00                  
CODE_23D5D8:        AD 63 05      LDA $0563                 
CODE_23D5DB:        F0 05         BEQ CODE_23D5E2           
CODE_23D5DD:        8A            TXA                       
CODE_23D5DE:        F0 07         BEQ CODE_23D5E7           
CODE_23D5E0:        D0 04         BNE CODE_23D5E6           
CODE_23D5E2:        A5 9D         LDA $9D                   
CODE_23D5E4:        10 01         BPL CODE_23D5E7           
CODE_23D5E6:        C8            INY                       
CODE_23D5E7:        8C 7D 05      STY $057D                 
CODE_23D5EA:        A0 06         LDY #$06                  
CODE_23D5EC:        B9 61 06      LDA $0661,y               
CODE_23D5EF:        F0 01         BEQ CODE_23D5F2           
CODE_23D5F1:        C8            INY                       
CODE_23D5F2:        A5 0D         LDA $0D                   
CODE_23D5F4:        29 F0         AND #$F0                  
CODE_23D5F6:        85 0D         STA $0D                   
CODE_23D5F8:        99 71 00      STA $0071,y               
CODE_23D5FB:        A5 0C         LDA $0C                   
CODE_23D5FD:        99 56 00      STA $0056,y               
CODE_23D600:        A5 0E         LDA $0E                   
CODE_23D602:        99 44 00      STA $0044,y               
CODE_23D605:        A5 0F         LDA $0F                   
CODE_23D607:        99 5F 00      STA $005F,y               
CODE_23D60A:        22 B1 A8 27   JSL CODE_27A8B1           
CODE_23D60E:        AD 7D 05      LDA $057D                 
CODE_23D611:        F0 06         BEQ CODE_23D619           
CODE_23D613:        A9 F3         LDA #$F3                  
CODE_23D615:        22 5D A7 27   JSL CODE_27A75D           
CODE_23D619:        68            PLA                       
CODE_23D61A:        A8            TAY                       
CODE_23D61B:        60            RTS                       

CODE_23D61C:        85 00         STA $00                   
CODE_23D61E:        AD 7C 05      LDA $057C                 
CODE_23D621:        D0 22         BNE CODE_23D645           
CODE_23D623:        A0 06         LDY #$06                  
CODE_23D625:        B9 61 06      LDA $0661,y               
CODE_23D628:        0D 2E 05      ORA $052E                 
CODE_23D62B:        F0 08         BEQ CODE_23D635           
CODE_23D62D:        B9 62 06      LDA $0662,y               
CODE_23D630:        0D 2F 05      ORA $052F                 
CODE_23D633:        D0 10         BNE CODE_23D645           
CODE_23D635:        A0 05         LDY #$05                  
CODE_23D637:        B9 18 05      LDA $0518,y               
CODE_23D63A:        F0 0C         BEQ CODE_23D648           
CODE_23D63C:        A5 0F         LDA $0F                   
CODE_23D63E:        29 F0         AND #$F0                  
CODE_23D640:        D9 5F 00      CMP $005F,y               
CODE_23D643:        D0 03         BNE CODE_23D648           
CODE_23D645:        A0 00         LDY #$00                  
CODE_23D647:        60            RTS                       

CODE_23D648:        A5 0F         LDA $0F                   
CODE_23D64A:        29 F0         AND #$F0                  
CODE_23D64C:        85 0F         STA $0F                   
CODE_23D64E:        A5 00         LDA $00                   
CODE_23D650:        0A            ASL A                     
CODE_23D651:        A8            TAY                       
CODE_23D652:        8B            PHB                       
CODE_23D653:        4B            PHK                       
CODE_23D654:        AB            PLB                       
CODE_23D655:        B9 63 D6      LDA PNTR_23D663,y               
CODE_23D658:        85 00         STA $00                   
CODE_23D65A:        B9 64 D6      LDA PNTR_23D663+1,y               
CODE_23D65D:        85 01         STA $01                   
CODE_23D65F:        AB            PLB                       
CODE_23D660:        6C 00 00      JMP ($0000)               

PNTR_23D663:        dw CODE_23D67B
                    dw CODE_23D67E
                    dw CODE_23D68C
                    dw CODE_23D69A
                    dw CODE_23D6A2
                    dw CODE_23D6C2
                    dw CODE_23D6D2
                    dw CODE_23D74D
                    dw CODE_23D757
                    dw CODE_23D76B
                    dw CODE_23D777
                    dw CODE_23D7C8

CODE_23D67B:        A0 01         LDY #$01
CODE_23D67D:        60            RTS

CODE_23D67E:        A9 00         LDA #$00                  
CODE_23D680:        8D 86 05      STA $0586                 
CODE_23D683:        A0 05         LDY #$05                  
CODE_23D685:        A5 BB         LDA $BB                   
CODE_23D687:        F0 02         BEQ CODE_23D68B           
CODE_23D689:        A0 02         LDY #$02                  
CODE_23D68B:        60            RTS                       

CODE_23D68C:        A9 00         LDA #$00                  
CODE_23D68E:        8D 86 05      STA $0586                 
CODE_23D691:        A0 05         LDY #$05                  
CODE_23D693:        A5 BB         LDA $BB                   
CODE_23D695:        F0 02         BEQ CODE_23D699           
CODE_23D697:        A0 03         LDY #$03                  
CODE_23D699:        60            RTS                       

CODE_23D69A:        A9 80         LDA #$80                  
CODE_23D69C:        8D 86 05      STA $0586                 
CODE_23D69F:        A0 04         LDY #$04                  
CODE_23D6A1:        60            RTS                       

CODE_23D6A2:        20 D2 D7      JSR CODE_23D7D2           
CODE_23D6A5:        A0 01         LDY #$01                  
CODE_23D6A7:        A5 0F         LDA $0F                   
CODE_23D6A9:        05 0E         ORA $0E                   
CODE_23D6AB:        CD 82 05      CMP $0582                 
CODE_23D6AE:        D0 11         BNE CODE_23D6C1           
CODE_23D6B0:        AD 16 05      LDA $0516                 
CODE_23D6B3:        F0 0C         BEQ CODE_23D6C1           
CODE_23D6B5:        AD 81 05      LDA $0581                 
CODE_23D6B8:        30 07         BMI CODE_23D6C1           
CODE_23D6BA:        CE 81 05      DEC $0581                 
CODE_23D6BD:        A9 17         LDA #$17                  
CODE_23D6BF:        85 05         STA $05                   
CODE_23D6C1:        60            RTS                       

CODE_23D6C2:        A9 80         LDA #$80                  
CODE_23D6C4:        8D 86 05      STA $0586                 
CODE_23D6C7:        A0 04         LDY #$04                  
CODE_23D6C9:        AD 53 05      LDA $0553                 
CODE_23D6CC:        D0 03         BNE CODE_23D6D1           
CODE_23D6CE:        4C A2 D6      JMP CODE_23D6A2           

CODE_23D6D1:        60            RTS                       

CODE_23D6D2:        20 ED D7      JSR CODE_23D7ED           
CODE_23D6D5:        E0 04         CPX #$04                  
CODE_23D6D7:        F0 07         BEQ CODE_23D6E0           
CODE_23D6D9:        A5 BB         LDA $BB                   
CODE_23D6DB:        D0 03         BNE CODE_23D6E0           
CODE_23D6DD:        A0 01         LDY #$01                  
CODE_23D6DF:        60            RTS                       

CODE_23D6E0:        A9 07         LDA #$07                  
CODE_23D6E2:        8D 03 12      STA $1203                 
CODE_23D6E5:        22 44 95 27   JSL CODE_279544           
CODE_23D6E9:        A9 02         LDA #$02                  
CODE_23D6EB:        8D 9C 1F      STA $1F9C                 
CODE_23D6EE:        AD 43 05      LDA $0543                 
CODE_23D6F1:        85 D8         STA $D8                   
CODE_23D6F3:        AD 42 05      LDA $0542                 
CODE_23D6F6:        85 D9         STA $D9                   
CODE_23D6F8:        A5 0C         LDA $0C                   
CODE_23D6FA:        EB            XBA                       
CODE_23D6FB:        A5 0D         LDA $0D                   
CODE_23D6FD:        C2 20         REP #$20                  
CODE_23D6FF:        29 F0 FF      AND #$FFF0                
CODE_23D702:        38            SEC                       
CODE_23D703:        E5 D8         SBC $D8                   
CODE_23D705:        85 DA         STA $DA                   
CODE_23D707:        18            CLC                       
CODE_23D708:        69 08 00      ADC #$0008                
CODE_23D70B:        85 DC         STA $DC                   
CODE_23D70D:        E2 20         SEP #$20                  
CODE_23D70F:        A5 DA         LDA $DA                   
CODE_23D711:        8D 9F 1F      STA $1F9F                 
CODE_23D714:        A5 DB         LDA $DB                   
CODE_23D716:        8D B1 1F      STA $1FB1                 
CODE_23D719:        A5 DC         LDA $DC                   
CODE_23D71B:        8D AB 1F      STA $1FAB                 
CODE_23D71E:        A5 DD         LDA $DD                   
CODE_23D720:        85 DF         STA $DF                   
CODE_23D722:        A5 0E         LDA $0E                   
CODE_23D724:        EB            XBA                       
CODE_23D725:        A5 0F         LDA $0F                   
CODE_23D727:        C2 20         REP #$20                  
CODE_23D729:        38            SEC                       
CODE_23D72A:        ED 10 02      SBC $0210                 
CODE_23D72D:        E2 20         SEP #$20                  
CODE_23D72F:        8D A2 1F      STA $1FA2                 
CODE_23D732:        EB            XBA                       
CODE_23D733:        8D AE 02      STA $02AE                 
CODE_23D736:        9C A8 1F      STZ $1FA8                 
CODE_23D739:        9C AE 1F      STZ $1FAE                 
CODE_23D73C:        A9 FA         LDA #$FA                  
CODE_23D73E:        8D A5 1F      STA $1FA5                 
CODE_23D741:        A9 01         LDA #$01                  
CODE_23D743:        8D 9C 06      STA $069C                 
CODE_23D746:        A0 02         LDY #$02                  
CODE_23D748:        84 0B         STY $0B                   
CODE_23D74A:        A0 80         LDY #$80                  
CODE_23D74C:        60            RTS                       

CODE_23D74D:        A0 00         LDY #$00                  
CODE_23D74F:        A9 03         LDA #$03                  
CODE_23D751:        8D 03 12      STA $1203                 
CODE_23D754:        A0 06         LDY #$06                  
CODE_23D756:        60            RTS                       

CODE_23D757:        A5 0F         LDA $0F                   
CODE_23D759:        05 0E         ORA $0E                   
CODE_23D75B:        8D 82 05      STA $0582                 
CODE_23D75E:        A9 09         LDA #$09                  
CODE_23D760:        8D 81 05      STA $0581                 
CODE_23D763:        A9 C8         LDA #$C8                  
CODE_23D765:        8D 16 05      STA $0516                 
CODE_23D768:        4C A2 D6      JMP CODE_23D6A2           

CODE_23D76B:        22 B7 9B 20   JSL CODE_209BB7           
CODE_23D76F:        A9 00         LDA #$00                  
CODE_23D771:        8D 86 05      STA $0586                 
CODE_23D774:        A0 07         LDY #$07                  
CODE_23D776:        60            RTS                       

CODE_23D777:        A0 05         LDY #$05                  
CODE_23D779:        B9 C8 1F      LDA $1FC8,y               
CODE_23D77C:        F0 06         BEQ CODE_23D784           
CODE_23D77E:        88            DEY                       
CODE_23D77F:        10 F8         BPL CODE_23D779           
CODE_23D781:        4C 8E D7      JMP CODE_23D78E           

CODE_23D784:        A9 16         LDA #$16                  
CODE_23D786:        99 C8 1F      STA $1FC8,y               
CODE_23D789:        A9 20         LDA #$20                  
CODE_23D78B:        99 C7 06      STA $06C7,y               
CODE_23D78E:        A5 0D         LDA $0D                   
CODE_23D790:        29 F0         AND #$F0                  
CODE_23D792:        38            SEC                       
CODE_23D793:        E9 10         SBC #$10                  
CODE_23D795:        08            PHP                       
CODE_23D796:        C0 00         CPY #$00                  
CODE_23D798:        30 03         BMI CODE_23D79D           
CODE_23D79A:        99 BF 05      STA $05BF,y               
CODE_23D79D:        8D 2B 05      STA $052B                 
CODE_23D7A0:        28            PLP                       
CODE_23D7A1:        A5 0C         LDA $0C                   
CODE_23D7A3:        E9 00         SBC #$00                  
CODE_23D7A5:        C0 00         CPY #$00                  
CODE_23D7A7:        30 03         BMI CODE_23D7AC           
CODE_23D7A9:        99 D7 1F      STA $1FD7,y               
CODE_23D7AC:        8D 2A 05      STA $052A                 
CODE_23D7AF:        A5 0F         LDA $0F                   
CODE_23D7B1:        C0 00         CPY #$00                  
CODE_23D7B3:        30 03         BMI CODE_23D7B8           
CODE_23D7B5:        99 C9 05      STA $05C9,y               
CODE_23D7B8:        8D 29 05      STA $0529                 
CODE_23D7BB:        A5 0E         LDA $0E                   
CODE_23D7BD:        8D 28 05      STA $0528                 
CODE_23D7C0:        A9 12         LDA #$12                  
CODE_23D7C2:        8D 64 05      STA $0564                 
CODE_23D7C5:        A0 01         LDY #$01                  
CODE_23D7C7:        60            RTS                       

CODE_23D7C8:        20 D2 D6      JSR CODE_23D6D2           
CODE_23D7CB:        F0 04         BEQ CODE_23D7D1           
CODE_23D7CD:        A9 0C         LDA #$0C                  
CODE_23D7CF:        85 0B         STA $0B                   
CODE_23D7D1:        60            RTS                       

CODE_23D7D2:        EE 22 04      INC $0422                 
CODE_23D7D5:        AF 66 39 7E   LDA $7E3966               
CODE_23D7D9:        1A            INC A                     
CODE_23D7DA:        8F 66 39 7E   STA $7E3966               
CODE_23D7DE:        A5 0D         LDA $0D                   
CODE_23D7E0:        85 00         STA $00                   
CODE_23D7E2:        A5 0F         LDA $0F                   
CODE_23D7E4:        09 04         ORA #$04                  
CODE_23D7E6:        85 01         STA $01                   
CODE_23D7E8:        22 E8 8A 27   JSL CODE_278AE8           
CODE_23D7EC:        60            RTS                       

CODE_23D7ED:        A5 0D         LDA $0D                   
CODE_23D7EF:        48            PHA                       
CODE_23D7F0:        38            SEC                       
CODE_23D7F1:        E9 10         SBC #$10                  
CODE_23D7F3:        85 0D         STA $0D                   
CODE_23D7F5:        86 04         STX $04                   
CODE_23D7F7:        22 E0 9F 20   JSL CODE_209FE0           
CODE_23D7FB:        A6 04         LDX $04                   
CODE_23D7FD:        C9 40         CMP #$40                  
CODE_23D7FF:        D0 0B         BNE CODE_23D80C           
CODE_23D801:        A9 02         LDA #$02                  
CODE_23D803:        20 37 DE      JSR CODE_23DE37           
CODE_23D806:        68            PLA                       
CODE_23D807:        85 0D         STA $0D                   
CODE_23D809:        4C D2 D7      JMP CODE_23D7D2           

CODE_23D80C:        68            PLA                       
CODE_23D80D:        85 0D         STA $0D                   
CODE_23D80F:        60            RTS                       

CODE_23D810:        AD 17 05      LDA $0517                 
CODE_23D813:        C9 09         CMP #$09                  
CODE_23D815:        D0 23         BNE CODE_23D83A           
CODE_23D817:        A0 00         LDY #$00                  
CODE_23D819:        A5 BD         LDA $BD                   
CODE_23D81B:        D0 02         BNE CODE_23D81F           
CODE_23D81D:        A0 02         LDY #$02                  
CODE_23D81F:        B9 28 EC      LDA.w DATA_21EC28,y               
CODE_23D822:        85 09         STA $09                   
CODE_23D824:        B9 29 EC      LDA.w DATA_21EC28+1,y               
CODE_23D827:        85 0A         STA $0A                   
CODE_23D829:        22 B6 D2 23   JSL CODE_23D2B6           
CODE_23D82D:        A2 04         LDX #$04                  
CODE_23D82F:        9D 03 06      STA $0603,x               
CODE_23D832:        20 67 D5      JSR CODE_23D567           
CODE_23D835:        A9 01         LDA #$01                  
CODE_23D837:        8D 7D 05      STA $057D                 
CODE_23D83A:        60            RTS                       

CODE_23D83B:        A2 04         LDX #$04                  
CODE_23D83D:        9D 03 06      STA $0603,x               
CODE_23D840:        AD 7C 05      LDA $057C                 
CODE_23D843:        D0 50         BNE CODE_23D895           
CODE_23D845:        20 67 D5      JSR CODE_23D567           
CODE_23D848:        AD 7C 05      LDA $057C                 
CODE_23D84B:        F0 08         BEQ CODE_23D855           
CODE_23D84D:        A9 01         LDA #$01                  
CODE_23D84F:        8D 7D 05      STA $057D                 
CODE_23D852:        8D 7E 05      STA $057E                 
CODE_23D855:        AD 60 05      LDA $0560                 
CODE_23D858:        C9 0A         CMP #$0A                  
CODE_23D85A:        D0 39         BNE CODE_23D895           
CODE_23D85C:        A2 04         LDX #$04                  
CODE_23D85E:        BD 18 05      LDA $0518,x               
CODE_23D861:        D0 32         BNE CODE_23D895           
CODE_23D863:        A5 0C         LDA $0C                   
CODE_23D865:        95 56         STA $56,x                 
CODE_23D867:        A5 0D         LDA $0D                   
CODE_23D869:        38            SEC                       
CODE_23D86A:        E9 10         SBC #$10                  
CODE_23D86C:        B0 02         BCS CODE_23D870                   
CODE_23D86E:        D6 56         DEC $56,x                 
CODE_23D870:        29 E0         AND #$E0                  
CODE_23D872:        09 10         ORA #$10                  
CODE_23D874:        95 71         STA $71,x                 
CODE_23D876:        A5 0E         LDA $0E                   
CODE_23D878:        95 44         STA $44,x                 
CODE_23D87A:        A5 0F         LDA $0F                   
CODE_23D87C:        29 E0         AND #$E0                  
CODE_23D87E:        95 5F         STA $5F,x                 
CODE_23D880:        38            SEC                       
CODE_23D881:        ED 10 02      SBC $0210                 
CODE_23D884:        A8            TAY                       
CODE_23D885:        B5 44         LDA $44,x                 
CODE_23D887:        E5 12         SBC $12                   
CODE_23D889:        D0 0A         BNE CODE_23D895           
CODE_23D88B:        C0 E0         CPY #$E0                  
CODE_23D88D:        B0 06         BCS CODE_23D895                   
CODE_23D88F:        AD 07 06      LDA $0607                 
CODE_23D892:        9D 91 06      STA $0691,x               
CODE_23D895:        6B            RTL                       

CODE_23D896:        A0 16         LDY #$16                  
CODE_23D898:        AD 6F 05      LDA $056F                 
CODE_23D89B:        D0 06         BNE CODE_23D8A3           
CODE_23D89D:        A5 BB         LDA $BB                   
CODE_23D89F:        F0 02         BEQ CODE_23D8A3           
CODE_23D8A1:        A0 06         LDY #$06                  
CODE_23D8A3:        A5 5E         LDA $5E                   
CODE_23D8A5:        29 0F         AND #$0F                  
CODE_23D8A7:        C9 08         CMP #$08                  
CODE_23D8A9:        10 05         BPL CODE_23D8B0           
CODE_23D8AB:        98            TYA                       
CODE_23D8AC:        18            CLC                       
CODE_23D8AD:        69 08         ADC #$08                  
CODE_23D8AF:        A8            TAY                       
CODE_23D8B0:        A2 03         LDX #$03                  
CODE_23D8B2:        20 DA DA      JSR CODE_23DADA           
CODE_23D8B5:        20 C9 D4      JSR CODE_23D4C9           
CODE_23D8B8:        88            DEY                       
CODE_23D8B9:        88            DEY                       
CODE_23D8BA:        CA            DEX                       
CODE_23D8BB:        10 F5         BPL CODE_23D8B2           
CODE_23D8BD:        A2 00         LDX #$00                  
CODE_23D8BF:        A0 00         LDY #$00                  
CODE_23D8C1:        BD 0D 06      LDA $060D,x               
CODE_23D8C4:        C9 04         CMP #$04                  
CODE_23D8C6:        F0 4D         BEQ CODE_23D915           
CODE_23D8C8:        C9 08         CMP #$08                  
CODE_23D8CA:        F0 49         BEQ CODE_23D915           
CODE_23D8CC:        A4 A6         LDY $A6                   
CODE_23D8CE:        D0 09         BNE CODE_23D8D9           
CODE_23D8D0:        AC 7F 02      LDY $027F                 
CODE_23D8D3:        D0 04         BNE CODE_23D8D9           
CODE_23D8D5:        C9 00         CMP #$00                  
CODE_23D8D7:        F0 33         BEQ CODE_23D90C           
CODE_23D8D9:        9C 7F 02      STZ $027F                 
CODE_23D8DC:        E8            INX                       
CODE_23D8DD:        BD 0D 06      LDA $060D,x               
CODE_23D8E0:        C9 07         CMP #$07                  
CODE_23D8E2:        F0 04         BEQ CODE_23D8E8           
CODE_23D8E4:        C9 04         CMP #$04                  
CODE_23D8E6:        D0 4C         BNE CODE_23D934           
CODE_23D8E8:        A6 BB         LDX $BB                   
CODE_23D8EA:        F0 08         BEQ CODE_23D8F4           
CODE_23D8EC:        A2 01         LDX #$01                  
CODE_23D8EE:        AD 6F 05      LDA $056F                 
CODE_23D8F1:        F0 01         BEQ CODE_23D8F4           
CODE_23D8F3:        CA            DEX                       
CODE_23D8F4:        A5 70         LDA $70                   
CODE_23D8F6:        18            CLC                       
CODE_23D8F7:        7D A6 EB      ADC.w DATA_21EBA6,x               
CODE_23D8FA:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23D8FE:        29 0F         AND #$0F                  
CODE_23D900:        18            CLC                       
CODE_23D901:        65 70         ADC $70                   
CODE_23D903:        90 02         BCC CODE_23D907           
CODE_23D905:        E6 55         INC $55                   
CODE_23D907:        85 70         STA $70                   
CODE_23D909:        4C 26 D9      JMP CODE_23D926           

CODE_23D90C:        A5 70         LDA $70                   
CODE_23D90E:        29 0F         AND #$0F                  
CODE_23D910:        C9 0A         CMP #$0A                  
CODE_23D912:        30 20         BMI CODE_23D934           
CODE_23D914:        C8            INY                       
CODE_23D915:        A5 70         LDA $70                   
CODE_23D917:        29 F0         AND #$F0                  
CODE_23D919:        18            CLC                       
CODE_23D91A:        79 2E EC      ADC.w DATA_21EC2E,y               
CODE_23D91D:        85 70         STA $70                   
CODE_23D91F:        A5 55         LDA $55                   
CODE_23D921:        79 2C EC      ADC.w DATA_21EC2C,y               
CODE_23D924:        85 55         STA $55                   
CODE_23D926:        BD 30 EC      LDA.w DATA_21EC30,x               
CODE_23D929:        A4 BB         LDY $BB                   
CODE_23D92B:        F0 03         BEQ CODE_23D930           
CODE_23D92D:        18            CLC                       
CODE_23D92E:        69 10         ADC #$10                  
CODE_23D930:        A8            TAY                       
CODE_23D931:        20 DA DA      JSR CODE_23DADA           
CODE_23D934:        A0 02         LDY #$02                  
CODE_23D936:        20 B4 D4      JSR CODE_23D4B4           
CODE_23D939:        90 3E         BCC CODE_23D979           
CODE_23D93B:        AD 85 05      LDA $0585                 
CODE_23D93E:        D0 39         BNE CODE_23D979           
CODE_23D940:        A2 00         LDX #$00                  
CODE_23D942:        A0 01         LDY #$01                  
CODE_23D944:        A5 5E         LDA $5E                   
CODE_23D946:        29 0F         AND #$0F                  
CODE_23D948:        C9 08         CMP #$08                  
CODE_23D94A:        10 03         BPL CODE_23D94F           
CODE_23D94C:        E8            INX                       
CODE_23D94D:        A0 FF         LDY #$FF                  
CODE_23D94F:        BD AC EB      LDA.w DATA_21EBAC,x               
CODE_23D952:        18            CLC                       
CODE_23D953:        65 5E         ADC $5E                   
CODE_23D955:        29 0F         AND #$0F                  
CODE_23D957:        F0 20         BEQ CODE_23D979           
CODE_23D959:        98            TYA                       
CODE_23D95A:        10 02         BPL CODE_23D95E           
CODE_23D95C:        C6 43         DEC $43                   
CODE_23D95E:        18            CLC                       
CODE_23D95F:        65 5E         ADC $5E                   
CODE_23D961:        85 5E         STA $5E                   
CODE_23D963:        90 02         BCC CODE_23D967           
CODE_23D965:        E6 43         INC $43                   
CODE_23D967:        C8            INY                       
CODE_23D968:        A5 8B         LDA $8B                   
CODE_23D96A:        10 02         BPL CODE_23D96E           
CODE_23D96C:        88            DEY                       
CODE_23D96D:        88            DEY                       
CODE_23D96E:        98            TYA                       
CODE_23D96F:        D0 08         BNE CODE_23D979           
CODE_23D971:        85 8B         STA $8B                   
CODE_23D973:        8D 45 05      STA $0545                 
CODE_23D976:        EE 74 05      INC $0574                 
CODE_23D979:        A2 00         LDX #$00                  
CODE_23D97B:        AC 0D 06      LDY $060D                 
CODE_23D97E:        B9 AE EB      LDA.w DATA_21EBAE,y               
CODE_23D981:        F0 01         BEQ CODE_23D984           
CODE_23D983:        E8            INX                       
CODE_23D984:        A5 5E         LDA $5E                   
CODE_23D986:        18            CLC                       
CODE_23D987:        6D 83 EB      ADC.w DATA_21EB83                 
CODE_23D98A:        29 0F         AND #$0F                  
CODE_23D98C:        85 00         STA $00                   
CODE_23D98E:        BD 0D 06      LDA $060D,x               
CODE_23D991:        A8            TAY                       
CODE_23D992:        4A            LSR A                     
CODE_23D993:        4A            LSR A                     
CODE_23D994:        4A            LSR A                     
CODE_23D995:        4A            LSR A                     
CODE_23D996:        18            CLC                       
CODE_23D997:        65 53         ADC $53                   
CODE_23D999:        85 53         STA $53                   
CODE_23D99B:        98            TYA                       
CODE_23D99C:        0A            ASL A                     
CODE_23D99D:        0A            ASL A                     
CODE_23D99E:        0A            ASL A                     
CODE_23D99F:        0A            ASL A                     
CODE_23D9A0:        05 00         ORA $00                   
CODE_23D9A2:        85 00         STA $00                   
CODE_23D9A4:        B9 5B AD      LDA.w DATA_21AD5B,y               
CODE_23D9A7:        85 0F         STA $0F                   
CODE_23D9A9:        A4 00         LDY $00                   
CODE_23D9AB:        8A            TXA                       
CODE_23D9AC:        D0 03         BNE CODE_23D9B1           
CODE_23D9AE:        4C 2C DA      JMP CODE_23DA2C           

CODE_23D9B1:        AD 0E 06      LDA $060E                 
CODE_23D9B4:        C9 00         CMP #$00                  
CODE_23D9B6:        D0 20         BNE CODE_23D9D8           
CODE_23D9B8:        A5 A6         LDA $A6                   
CODE_23D9BA:        D0 1B         BNE CODE_23D9D7           
CODE_23D9BC:        A2 04         LDX #$04                  
CODE_23D9BE:        A0 20         LDY #$20                  
CODE_23D9C0:        A5 5E         LDA $5E                   
CODE_23D9C2:        29 0F         AND #$0F                  
CODE_23D9C4:        C9 08         CMP #$08                  
CODE_23D9C6:        10 02         BPL CODE_23D9CA           
CODE_23D9C8:        C8            INY                       
CODE_23D9C9:        C8            INY                       
CODE_23D9CA:        20 DA DA      JSR CODE_23DADA           
CODE_23D9CD:        C9 03         CMP #$03                  
CODE_23D9CF:        F0 06         BEQ CODE_23D9D7           
CODE_23D9D1:        A9 00         LDA #$00                  
CODE_23D9D3:        85 9D         STA $9D                   
CODE_23D9D5:        E6 A6         INC $A6                   
CODE_23D9D7:        60            RTS                       

CODE_23D9D8:        A6 BB         LDX $BB                   
CODE_23D9DA:        F0 08         BEQ CODE_23D9E4           
CODE_23D9DC:        A2 01         LDX #$01                  
CODE_23D9DE:        AD 6F 05      LDA $056F                 
CODE_23D9E1:        F0 01         BEQ CODE_23D9E4           
CODE_23D9E3:        CA            DEX                       
CODE_23D9E4:        A5 70         LDA $70                   
CODE_23D9E6:        18            CLC                       
CODE_23D9E7:        7D A6 EB      ADC.w DATA_21EBA6,x               
CODE_23D9EA:        29 0F         AND #$0F                  
CODE_23D9EC:        85 00         STA $00                   
CODE_23D9EE:        B1 52         LDA ($52),y               
CODE_23D9F0:        4A            LSR A                     
CODE_23D9F1:        4A            LSR A                     
CODE_23D9F2:        4A            LSR A                     
CODE_23D9F3:        4A            LSR A                     
CODE_23D9F4:        85 01         STA $01                   
CODE_23D9F6:        38            SEC                       
CODE_23D9F7:        E5 00         SBC $00                   
CODE_23D9F9:        30 30         BMI CODE_23DA2B           
CODE_23D9FB:        EE 6D 05      INC $056D                 
CODE_23D9FE:        48            PHA                       
CODE_23D9FF:        A5 9D         LDA $9D                   
CODE_23DA01:        10 12         BPL CODE_23DA15           
CODE_23DA03:        AD 0F 1A      LDA $1A0F                 
CODE_23DA06:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23DA0A:        10 02         BPL CODE_23DA0E           
CODE_23DA0C:        A9 00         LDA #$00                  
CODE_23DA0E:        85 9D         STA $9D                   
CODE_23DA10:        A9 01         LDA #$01                  
CODE_23DA12:        8D 00 12      STA $1200                 
CODE_23DA15:        68            PLA                       
CODE_23DA16:        AC 0E 06      LDY $060E                 
CODE_23DA19:        C0 03         CPY #$03                  
CODE_23DA1B:        D0 05         BNE CODE_23DA22           
CODE_23DA1D:        AC 85 05      LDY $0585                 
CODE_23DA20:        D0 09         BNE CODE_23DA2B           
CODE_23DA22:        18            CLC                       
CODE_23DA23:        65 70         ADC $70                   
CODE_23DA25:        85 70         STA $70                   
CODE_23DA27:        90 02         BCC CODE_23DA2B           
CODE_23DA29:        E6 55         INC $55                   
CODE_23DA2B:        60            RTS                       

CODE_23DA2C:        A6 0F         LDX $0F                   
CODE_23DA2E:        A5 A6         LDA $A6                   
CODE_23DA30:        F0 0F         BEQ CODE_23DA41           
CODE_23DA32:        A5 9D         LDA $9D                   
CODE_23DA34:        C9 E4         CMP #$E4                  
CODE_23DA36:        30 9F         BMI CODE_23D9D7           
CODE_23DA38:        A5 70         LDA $70                   
CODE_23DA3A:        29 0F         AND #$0F                  
CODE_23DA3C:        38            SEC                       
CODE_23DA3D:        F1 52         SBC ($52),y               
CODE_23DA3F:        30 96         BMI CODE_23D9D7           
CODE_23DA41:        A9 00         LDA #$00                  
CODE_23DA43:        85 A6         STA $A6                   
CODE_23DA45:        85 9D         STA $9D                   
CODE_23DA47:        8D F4 05      STA $05F4                 
CODE_23DA4A:        B1 52         LDA ($52),y               
CODE_23DA4C:        29 0F         AND #$0F                  
CODE_23DA4E:        85 00         STA $00                   
CODE_23DA50:        A5 70         LDA $70                   
CODE_23DA52:        29 F0         AND #$F0                  
CODE_23DA54:        18            CLC                       
CODE_23DA55:        65 00         ADC $00                   
CODE_23DA57:        85 70         STA $70                   
CODE_23DA59:        90 02         BCC CODE_23DA5D           
CODE_23DA5B:        E6 55         INC $55                   
CODE_23DA5D:        8A            TXA                       
CODE_23DA5E:        F0 04         BEQ CODE_23DA64           
CODE_23DA60:        45 8B         EOR $8B                   
CODE_23DA62:        29 80         AND #$80                  
CODE_23DA64:        8D 46 05      STA $0546                 
CODE_23DA67:        AD 75 05      LDA $0575                 
CODE_23DA6A:        F0 07         BEQ CODE_23DA73           
CODE_23DA6C:        A9 00         LDA #$00                  
CODE_23DA6E:        8D 45 05      STA $0545                 
CODE_23DA71:        F0 5F         BEQ CODE_23DAD2           
CODE_23DA73:        8A            TXA                       
CODE_23DA74:        AC 45 05      LDY $0545                 
CODE_23DA77:        F0 0A         BEQ CODE_23DA83           
CODE_23DA79:        10 04         BPL CODE_23DA7F           
CODE_23DA7B:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23DA7F:        C9 00         CMP #$00                  
CODE_23DA81:        30 3F         BMI CODE_23DAC2           
CODE_23DA83:        AD 45 05      LDA $0545                 
CODE_23DA86:        D0 1C         BNE CODE_23DAA4           
CODE_23DA88:        8A            TXA                       
CODE_23DA89:        F0 47         BEQ CODE_23DAD2           
CODE_23DA8B:        A4 BB         LDY $BB                   
CODE_23DA8D:        B9 64 AF      LDA.w DATA_21AF64,y               
CODE_23DA90:        29 02         AND #$02                  
CODE_23DA92:        D0 3E         BNE CODE_23DAD2           
CODE_23DA94:        AD 77 05      LDA $0577                 
CODE_23DA97:        D0 39         BNE CODE_23DAD2           
CODE_23DA99:        A5 17         LDA $17                   
CODE_23DA9B:        29 07         AND #$07                  
CODE_23DA9D:        C9 04         CMP #$04                  
CODE_23DA9F:        D0 31         BNE CODE_23DAD2           
CODE_23DAA1:        20 66 CD      JSR CODE_23CD66           
CODE_23DAA4:        8A            TXA                       
CODE_23DAA5:        18            CLC                       
CODE_23DAA6:        6D 45 05      ADC $0545                 
CODE_23DAA9:        8D 45 05      STA $0545                 
CODE_23DAAC:        10 04         BPL CODE_23DAB2           
CODE_23DAAE:        22 59 A8 27   JSL CODE_27A859           ;Invert Accumulator (8-bit)
CODE_23DAB2:        C9 40         CMP #$40                  
CODE_23DAB4:        30 0C         BMI CODE_23DAC2           
CODE_23DAB6:        A0 40         LDY #$40                  
CODE_23DAB8:        AD 45 05      LDA $0545                 
CODE_23DABB:        10 02         BPL CODE_23DABF           
CODE_23DABD:        A0 C0         LDY #$C0                  
CODE_23DABF:        8C 45 05      STY $0545                 
CODE_23DAC2:        CE 45 05      DEC $0545                 
CODE_23DAC5:        10 06         BPL CODE_23DACD           
CODE_23DAC7:        EE 45 05      INC $0545                 
CODE_23DACA:        EE 45 05      INC $0545                 
CODE_23DACD:        AD 45 05      LDA $0545                 
CODE_23DAD0:        85 8B         STA $8B                   
CODE_23DAD2:        A5 8B         LDA $8B                   
CODE_23DAD4:        F0 03         BEQ CODE_23DAD9           
CODE_23DAD6:        8E 69 05      STX $0569                 
CODE_23DAD9:        60            RTS                       

CODE_23DADA:        B9 82 EB      LDA.w DATA_21EB82,y               
CODE_23DADD:        85 09         STA $09                   
CODE_23DADF:        B9 83 EB      LDA.w DATA_21EB83,y               
CODE_23DAE2:        85 0A         STA $0A                   
CODE_23DAE4:        22 B6 D2 23   JSL CODE_23D2B6           
CODE_23DAE8:        9D 03 06      STA $0603,x               
CODE_23DAEB:        29 C0         AND #$C0                  
CODE_23DAED:        0A            ASL A                     
CODE_23DAEE:        2A            ROL A                     
CODE_23DAEF:        2A            ROL A                     
CODE_23DAF0:        9D 08 06      STA $0608,x               
CODE_23DAF3:        A5 B4         LDA $B4                   
CODE_23DAF5:        9D 0D 06      STA $060D,x               
CODE_23DAF8:        60            RTS                       

CODE_23DAF9:        AD 7A 05      LDA $057A                 
CODE_23DAFC:        0D 17 05      ORA $0517                 
CODE_23DAFF:        0D 4F 05      ORA $054F                 
CODE_23DB02:        D0 4A         BNE CODE_23DB4E           
CODE_23DB04:        AC 60 05      LDY $0560                 
CODE_23DB07:        B9 32 EC      LDA.w DATA_21EC32,y               
CODE_23DB0A:        85 0F         STA $0F                   
CODE_23DB0C:        A5 A6         LDA $A6                   
CODE_23DB0E:        D0 41         BNE CODE_23DB51           
CODE_23DB10:        AD 05 06      LDA $0605                 
CODE_23DB13:        AC 25 04      LDY $0425                 
CODE_23DB16:        F0 08         BEQ CODE_23DB20           
CODE_23DB18:        A0 02         LDY #$02                  
CODE_23DB1A:        C9 9E         CMP #$9E                  
CODE_23DB1C:        F0 10         BEQ CODE_23DB2E           
CODE_23DB1E:        A0 00         LDY #$00                  
CODE_23DB20:        C9 B5         CMP #$B5                  
CODE_23DB22:        F0 0A         BEQ CODE_23DB2E           
CODE_23DB24:        24 0F         BIT $0F                   
CODE_23DB26:        50 29         BVC CODE_23DB51                   
CODE_23DB28:        A0 03         LDY #$03                  
CODE_23DB2A:        C9 BF         CMP #$BF                  
CODE_23DB2C:        D0 23         BNE CODE_23DB51           
CODE_23DB2E:        A2 00         LDX #$00                  
CODE_23DB30:        A5 5E         LDA $5E                   
CODE_23DB32:        29 0F         AND #$0F                  
CODE_23DB34:        C9 08         CMP #$08                  
CODE_23DB36:        30 01         BMI CODE_23DB39           
CODE_23DB38:        E8            INX                       
CODE_23DB39:        A5 17         LDA $17                   
CODE_23DB3B:        3D 43 EC      AND.w DATA_21EC43,x               
CODE_23DB3E:        F0 11         BEQ CODE_23DB51           
CODE_23DB40:        98            TYA                       
CODE_23DB41:        D0 08         BNE CODE_23DB4B           
CODE_23DB43:        A0 01         LDY #$01                  
CODE_23DB45:        AD B8 1E      LDA $1EB8                 
CODE_23DB48:        F0 01         BEQ CODE_23DB4B           
CODE_23DB4A:        88            DEY                       
CODE_23DB4B:        20 CD DD      JSR CODE_23DDCD           
CODE_23DB4E:        4C F3 DB      JMP CODE_23DBF3           

CODE_23DB51:        A2 02         LDX #$02                  
CODE_23DB53:        AD 03 06      LDA $0603                 
CODE_23DB56:        A4 A6         LDY $A6                   
CODE_23DB58:        F0 11         BEQ CODE_23DB6B           
CODE_23DB5A:        AC 6D 05      LDY $056D                 
CODE_23DB5D:        F0 EF         BEQ CODE_23DB4E           
CODE_23DB5F:        AC 6F 05      LDY $056F                 
CODE_23DB62:        F0 03         BEQ CODE_23DB67           
CODE_23DB64:        4C F3 DB      JMP CODE_23DBF3           

CODE_23DB67:        E8            INX                       
CODE_23DB68:        AD 04 06      LDA $0604                 
CODE_23DB6B:        85 00         STA $00                   
CODE_23DB6D:        86 02         STX $02                   
CODE_23DB6F:        A9 B0         LDA #$B0                  
CODE_23DB71:        38            SEC                       
CODE_23DB72:        E5 00         SBC $00                   
CODE_23DB74:        C9 04         CMP #$04                  
CODE_23DB76:        AC B8 1E      LDY $1EB8                 
CODE_23DB79:        F0 02         BEQ CODE_23DB7D           
CODE_23DB7B:        29 01         AND #$01                  
CODE_23DB7D:        A8            TAY                       
CODE_23DB7E:        90 21         BCC CODE_23DBA1           
CODE_23DB80:        A4 0F         LDY $0F                   
CODE_23DB82:        10 0B         BPL CODE_23DB8F           
CODE_23DB84:        A9 BE         LDA #$BE                  
CODE_23DB86:        38            SEC                       
CODE_23DB87:        E5 00         SBC $00                   
CODE_23DB89:        C9 02         CMP #$02                  
CODE_23DB8B:        A0 06         LDY #$06                  
CODE_23DB8D:        90 12         BCC CODE_23DBA1           
CODE_23DB8F:        A9 B4         LDA #$B4                  
CODE_23DB91:        AC 25 04      LDY $0425                 
CODE_23DB94:        F0 02         BEQ CODE_23DB98           
CODE_23DB96:        A9 92         LDA #$92                  
CODE_23DB98:        38            SEC                       
CODE_23DB99:        E5 00         SBC $00                   
CODE_23DB9B:        C9 02         CMP #$02                  
CODE_23DB9D:        B0 54         BCS CODE_23DBF3                   
CODE_23DB9F:        A0 04         LDY #$04                  
CODE_23DBA1:        84 00         STY $00                   
CODE_23DBA3:        29 01         AND #$01                  
CODE_23DBA5:        0A            ASL A                     
CODE_23DBA6:        0A            ASL A                     
CODE_23DBA7:        0A            ASL A                     
CODE_23DBA8:        0A            ASL A                     
CODE_23DBA9:        85 01         STA $01                   
CODE_23DBAB:        A5 17         LDA $17                   
CODE_23DBAD:        3D 43 EC      AND.w DATA_21EC43,x               
CODE_23DBB0:        F0 41         BEQ CODE_23DBF3           
CODE_23DBB2:        AD 71 05      LDA $0571                 
CODE_23DBB5:        D0 3C         BNE CODE_23DBF3           
CODE_23DBB7:        A0 00         LDY #$00                  
CODE_23DBB9:        A5 A6         LDA $A6                   
CODE_23DBBB:        0D 63 05      ORA $0563                 
CODE_23DBBE:        D0 06         BNE CODE_23DBC6           
CODE_23DBC0:        C8            INY                       
CODE_23DBC1:        A5 BB         LDA $BB                   
CODE_23DBC3:        D0 01         BNE CODE_23DBC6           
CODE_23DBC5:        C8            INY                       
CODE_23DBC6:        A5 5E         LDA $5E                   
CODE_23DBC8:        29 0F         AND #$0F                  
CODE_23DBCA:        48            PHA                       
CODE_23DBCB:        18            CLC                       
CODE_23DBCC:        79 40 EC      ADC.w DATA_21EC40,y               
CODE_23DBCF:        29 10         AND #$10                  
CODE_23DBD1:        D0 04         BNE CODE_23DBD7           
CODE_23DBD3:        68            PLA                       
CODE_23DBD4:        09 F0         ORA #$F0                  
CODE_23DBD6:        48            PHA                       
CODE_23DBD7:        68            PLA                       
CODE_23DBD8:        18            CLC                       
CODE_23DBD9:        65 01         ADC $01                   
CODE_23DBDB:        38            SEC                       
CODE_23DBDC:        E9 03         SBC #$03                  
CODE_23DBDE:        C9 0A         CMP #$0A                  
CODE_23DBE0:        B0 11         BCS CODE_23DBF3                   
CODE_23DBE2:        A5 00         LDA $00                   
CODE_23DBE4:        4A            LSR A                     
CODE_23DBE5:        A8            TAY                       
CODE_23DBE6:        20 CD DD      JSR CODE_23DDCD           
CODE_23DBE9:        22 BB DD 23   JSL CODE_23DDBB           
CODE_23DBED:        20 8A C0      JSR CODE_23C08A           
CODE_23DBF0:        68            PLA                       
CODE_23DBF1:        68            PLA                       
CODE_23DBF2:        60            RTS                       

CODE_23DBF3:        AC 60 05      LDY $0560                 
CODE_23DBF6:        A5 A6         LDA $A6                   
CODE_23DBF8:        D0 21         BNE CODE_23DC1B           
CODE_23DBFA:        AD 67 05      LDA $0567                 
CODE_23DBFD:        D0 1C         BNE CODE_23DC1B           
CODE_23DBFF:        A2 01         LDX #$01                  
CODE_23DC01:        B9 48 AF      LDA.w DATA_21AF48,y               
CODE_23DC04:        F0 15         BEQ CODE_23DC1B           
CODE_23DC06:        38            SEC                       
CODE_23DC07:        FD 03 06      SBC $0603,x               
CODE_23DC0A:        C9 02         CMP #$02                  
CODE_23DC0C:        B0 0A         BCS CODE_23DC18                   
CODE_23DC0E:        AA            TAX                       
CODE_23DC0F:        BD 47 EC      LDA.w DATA_21EC47,x               
CODE_23DC12:        8D 69 05      STA $0569                 
CODE_23DC15:        4C 1B DC      JMP CODE_23DC1B           

CODE_23DC18:        CA            DEX                       
CODE_23DC19:        10 E6         BPL CODE_23DC01           
CODE_23DC1B:        A2 02         LDX #$02                  
CODE_23DC1D:        B9 3A AF      LDA.w DATA_21AF3A,y               
CODE_23DC20:        C9 FF         CMP #$FF                  
CODE_23DC22:        F0 1C         BEQ CODE_23DC40           
CODE_23DC24:        38            SEC                       
CODE_23DC25:        FD 02 06      SBC $0602,x               
CODE_23DC28:        C9 02         CMP #$02                  
CODE_23DC2A:        90 05         BCC CODE_23DC31           
CODE_23DC2C:        CA            DEX                       
CODE_23DC2D:        10 EE         BPL CODE_23DC1D           
CODE_23DC2F:        30 0F         BMI CODE_23DC40           
CODE_23DC31:        AD 77 05      LDA $0577                 
CODE_23DC34:        F0 05         BEQ CODE_23DC3B           
CODE_23DC36:        AD 6D 05      LDA $056D                 
CODE_23DC39:        F0 05         BEQ CODE_23DC40           
CODE_23DC3B:        22 C6 A4 27   JSL CODE_27A4C6           
CODE_23DC3F:        60            RTS                       

CODE_23DC40:        A2 03         LDX #$03                  
CODE_23DC42:        BD 03 06      LDA $0603,x               
CODE_23DC45:        D9 56 AF      CMP.w DATA_21AF56,y               
CODE_23DC48:        F0 04         BEQ CODE_23DC4E           
CODE_23DC4A:        C9 66         CMP #$66                  
CODE_23DC4C:        D0 0F         BNE CODE_23DC5D           
CODE_23DC4E:        AD 77 05      LDA $0577                 
CODE_23DC51:        F0 05         BEQ CODE_23DC58           
CODE_23DC53:        AD 6D 05      LDA $056D                 
CODE_23DC56:        F0 08         BEQ CODE_23DC60           
CODE_23DC58:        22 C6 A4 27   JSL CODE_27A4C6           
CODE_23DC5C:        60            RTS                       

CODE_23DC5D:        CA            DEX                       
CODE_23DC5E:        10 E2         BPL CODE_23DC42           
CODE_23DC60:        AD 0A 07      LDA $070A                 
CODE_23DC63:        C9 05         CMP #$05                  
CODE_23DC65:        D0 31         BNE CODE_23DC98           
CODE_23DC67:        A0 00         LDY #$00                  
CODE_23DC69:        AD 45 02      LDA $0245                 
CODE_23DC6C:        C9 01         CMP #$01                  
CODE_23DC6E:        F0 05         BEQ CODE_23DC75           
CODE_23DC70:        C8            INY                       
CODE_23DC71:        C9 00         CMP #$00                  
CODE_23DC73:        D0 23         BNE CODE_23DC98           
CODE_23DC75:        A2 02         LDX #$02                  
CODE_23DC77:        BD 02 06      LDA $0602,x               
CODE_23DC7A:        48            PHA                       
CODE_23DC7B:        38            SEC                       
CODE_23DC7C:        F9 4B EC      SBC.w DATA_21EC4B,y               
CODE_23DC7F:        C9 01         CMP #$01                  
CODE_23DC81:        68            PLA                       
CODE_23DC82:        90 0B         BCC CODE_23DC8F           
CODE_23DC84:        D9 4D EC      CMP.w DATA_21EC4D,y               
CODE_23DC87:        F0 06         BEQ CODE_23DC8F           
CODE_23DC89:        CA            DEX                       
CODE_23DC8A:        10 EB         BPL CODE_23DC77           
CODE_23DC8C:        4C 98 DC      JMP CODE_23DC98           

CODE_23DC8F:        AD 77 05      LDA $0577                 
CODE_23DC92:        D0 04         BNE CODE_23DC98           
CODE_23DC94:        22 C6 A4 27   JSL CODE_27A4C6           
CODE_23DC98:        A9 00         LDA #$00                  
CODE_23DC9A:        8D 89 05      STA $0589                 
CODE_23DC9D:        AD 60 05      LDA $0560                 
CODE_23DCA0:        C9 0B         CMP #$0B                  
CODE_23DCA2:        D0 3A         BNE CODE_23DCDE           
CODE_23DCA4:        A5 A6         LDA $A6                   
CODE_23DCA6:        D0 36         BNE CODE_23DCDE           
CODE_23DCA8:        A2 01         LDX #$01                  
CODE_23DCAA:        BD 03 06      LDA $0603,x               
CODE_23DCAD:        A8            TAY                       
CODE_23DCAE:        38            SEC                       
CODE_23DCAF:        E9 22         SBC #$22                  
CODE_23DCB1:        C9 03         CMP #$03                  
CODE_23DCB3:        90 08         BCC CODE_23DCBD           
CODE_23DCB5:        98            TYA                       
CODE_23DCB6:        38            SEC                       
CODE_23DCB7:        E9 4A         SBC #$4A                  
CODE_23DCB9:        C9 03         CMP #$03                  
CODE_23DCBB:        B0 06         BCS CODE_23DCC3                   
CODE_23DCBD:        EE 89 05      INC $0589                 
CODE_23DCC0:        4C DE DC      JMP CODE_23DCDE           

CODE_23DCC3:        98            TYA                       
CODE_23DCC4:        38            SEC                       
CODE_23DCC5:        E9 36         SBC #$36                  
CODE_23DCC7:        C9 05         CMP #$05                  
CODE_23DCC9:        90 08         BCC CODE_23DCD3           
CODE_23DCCB:        C0 55         CPY #$55                  
CODE_23DCCD:        F0 04         BEQ CODE_23DCD3           
CODE_23DCCF:        C0 56         CPY #$56                  
CODE_23DCD1:        D0 08         BNE CODE_23DCDB           
CODE_23DCD3:        A9 02         LDA #$02                  
CODE_23DCD5:        8D 89 05      STA $0589                 
CODE_23DCD8:        4C DE DC      JMP CODE_23DCDE           

CODE_23DCDB:        CA            DEX                       
CODE_23DCDC:        10 CC         BPL CODE_23DCAA           
CODE_23DCDE:        AD 60 05      LDA $0560                 
CODE_23DCE1:        C9 00         CMP #$00                  
CODE_23DCE3:        D0 3E         BNE CODE_23DD23           
CODE_23DCE5:        A0 01         LDY #$01                  
CODE_23DCE7:        B9 03 06      LDA $0603,y               
CODE_23DCEA:        38            SEC                       
CODE_23DCEB:        E9 25         SBC #$25                  
CODE_23DCED:        C9 03         CMP #$03                  
CODE_23DCEF:        90 0A         BCC CODE_23DCFB           
CODE_23DCF1:        88            DEY                       
CODE_23DCF2:        10 F3         BPL CODE_23DCE7           
CODE_23DCF4:        A9 00         LDA #$00                  
CODE_23DCF6:        8D 70 05      STA $0570                 
CODE_23DCF9:        F0 28         BEQ CODE_23DD23           
CODE_23DCFB:        A5 17         LDA $17                   
CODE_23DCFD:        29 04         AND #$04                  
CODE_23DCFF:        F0 F3         BEQ CODE_23DCF4           
CODE_23DD01:        EE 70 05      INC $0570                 
CODE_23DD04:        AD 70 05      LDA $0570                 
CODE_23DD07:        C9 F0         CMP #$F0                  
CODE_23DD09:        D0 18         BNE CODE_23DD23           
CODE_23DD0B:        A9 F0         LDA #$F0                  
CODE_23DD0D:        8D 88 05      STA $0588                 
CODE_23DD10:        A9 00         LDA #$00                  
CODE_23DD12:        85 9D         STA $9D                   
CODE_23DD14:        A5 70         LDA $70                   
CODE_23DD16:        18            CLC                       
CODE_23DD17:        69 06         ADC #$06                  
CODE_23DD19:        85 70         STA $70                   
CODE_23DD1B:        E6 A6         INC $A6                   
CODE_23DD1D:        A5 18         LDA $18                   
CODE_23DD1F:        29 7F         AND #$7F                  
CODE_23DD21:        85 18         STA $18                   
CODE_23DD23:        AD 60 05      LDA $0560                 
CODE_23DD26:        C9 02         CMP #$02                  
CODE_23DD28:        F0 04         BEQ CODE_23DD2E           
CODE_23DD2A:        C9 0D         CMP #$0D                  
CODE_23DD2C:        D0 61         BNE CODE_23DD8F           
CODE_23DD2E:        A5 9D         LDA $9D                   
CODE_23DD30:        30 5D         BMI CODE_23DD8F           
CODE_23DD32:        A2 03         LDX #$03                  
CODE_23DD34:        BD 03 06      LDA $0603,x               
CODE_23DD37:        C9 49         CMP #$49                  
CODE_23DD39:        F0 0F         BEQ CODE_23DD4A           
CODE_23DD3B:        C9 4A         CMP #$4A                  
CODE_23DD3D:        F0 0B         BEQ CODE_23DD4A           
CODE_23DD3F:        CA            DEX                       
CODE_23DD40:        10 F2         BPL CODE_23DD34           
CODE_23DD42:        A9 00         LDA #$00                  
CODE_23DD44:        8D 8A 05      STA $058A                 
CODE_23DD47:        4C 8F DD      JMP CODE_23DD8F           

CODE_23DD4A:        A9 00         LDA #$00                  
CODE_23DD4C:        8D 6F 05      STA $056F                 
CODE_23DD4F:        8D 45 05      STA $0545                 
CODE_23DD52:        AD 8A 05      LDA $058A                 
CODE_23DD55:        D0 02         BNE CODE_23DD59           
CODE_23DD57:        A5 70         LDA $70                   
CODE_23DD59:        29 F0         AND #$F0                  
CODE_23DD5B:        8D 8A 05      STA $058A                 
CODE_23DD5E:        A5 70         LDA $70                   
CODE_23DD60:        38            SEC                       
CODE_23DD61:        ED 8A 05      SBC $058A                 
CODE_23DD64:        A0 E0         LDY #$E0                  
CODE_23DD66:        AA            TAX                       
CODE_23DD67:        29 F0         AND #$F0                  
CODE_23DD69:        D0 09         BNE CODE_23DD74           
CODE_23DD6B:        8A            TXA                       
CODE_23DD6C:        29 0F         AND #$0F                  
CODE_23DD6E:        C9 03         CMP #$03                  
CODE_23DD70:        B0 02         BCS CODE_23DD74                   
CODE_23DD72:        A0 D0         LDY #$D0                  
CODE_23DD74:        A5 18         LDA $18                   
CODE_23DD76:        30 07         BMI CODE_23DD7F           
CODE_23DD78:        EE 8A 05      INC $058A                 
CODE_23DD7B:        A0 06         LDY #$06                  
CODE_23DD7D:        D0 05         BNE CODE_23DD84           
CODE_23DD7F:        A9 01         LDA #$01                  
CODE_23DD81:        8D 01 12      STA $1201                 
CODE_23DD84:        84 9D         STY $9D                   
CODE_23DD86:        A5 8B         LDA $8B                   
CODE_23DD88:        0A            ASL A                     
CODE_23DD89:        66 8B         ROR $8B                   
CODE_23DD8B:        10 02         BPL CODE_23DD8F           
CODE_23DD8D:        E6 8B         INC $8B                   
CODE_23DD8F:        AC 60 05      LDY $0560                 
CODE_23DD92:        C0 06         CPY #$06                  
CODE_23DD94:        D0 24         BNE CODE_23DDBA           
CODE_23DD96:        A5 18         LDA $18                   
CODE_23DD98:        89 40         BIT #$40                  
CODE_23DD9A:        D0 0F         BNE CODE_23DDAB           
CODE_23DD9C:        AD F8 00      LDA $00F8                 
CODE_23DD9F:        AC 26 07      LDY $0726                 
CODE_23DDA2:        F0 03         BEQ CODE_23DDA7           
CODE_23DDA4:        AD F9 00      LDA $00F9                 
CODE_23DDA7:        29 40         AND #$40                  
CODE_23DDA9:        F0 0F         BEQ CODE_23DDBA           
CODE_23DDAB:        22 03 E8 20   JSL CODE_20E803           
CODE_23DDAF:        8A            TXA                       
CODE_23DDB0:        F0 08         BEQ CODE_23DDBA           
CODE_23DDB2:        CA            DEX                       
CODE_23DDB3:        AD 29 05      LDA $0529                 
CODE_23DDB6:        22 D8 A8 27   JSL CODE_27A8D8           
CODE_23DDBA:        60            RTS                       

CODE_23DDBB:        A4 BB         LDY $BB                   
CODE_23DDBD:        F0 02         BEQ CODE_23DDC1           
CODE_23DDBF:        A0 02         LDY #$02                  
CODE_23DDC1:        AD 77 05      LDA $0577                 
CODE_23DDC4:        F0 01         BEQ CODE_23DDC7           
CODE_23DDC6:        C8            INY                       
CODE_23DDC7:        B9 80 E9      LDA.w DATA_21E980,y               
CODE_23DDCA:        85 BC         STA $BC                   
CODE_23DDCC:        6B            RTL                       

CODE_23DDCD:        8E 71 05      STX $0571                 
CODE_23DDD0:        A9 04         LDA #$04                  
CODE_23DDD2:        8D 00 12      STA $1200                 
CODE_23DDD5:        AD 03 15      LDA $1503                 
CODE_23DDD8:        D0 05         BNE CODE_23DDDF           
CODE_23DDDA:        A9 80         LDA #$80                  
CODE_23DDDC:        8D 02 12      STA $1202                 
CODE_23DDDF:        A9 04         LDA #$04                  
CODE_23DDE1:        C0 03         CPY #$03                  
CODE_23DDE3:        F0 1A         BEQ CODE_23DDFF           
CODE_23DDE5:        A9 05         LDA #$05                  
CODE_23DDE7:        C0 02         CPY #$02                  
CODE_23DDE9:        F0 14         BEQ CODE_23DDFF           
CODE_23DDEB:        A9 02         LDA #$02                  
CODE_23DDED:        C0 00         CPY #$00                  
CODE_23DDEF:        F0 0E         BEQ CODE_23DDFF           
CODE_23DDF1:        A9 01         LDA #$01                  
CODE_23DDF3:        AC 79 03      LDY $0379                 
CODE_23DDF6:        D0 05         BNE CODE_23DDFD           
CODE_23DDF8:        AC B8 1E      LDY $1EB8                 
CODE_23DDFB:        F0 02         BEQ CODE_23DDFF           
CODE_23DDFD:        A9 03         LDA #$03                  
CODE_23DDFF:        0A            ASL A                     
CODE_23DE00:        0A            ASL A                     
CODE_23DE01:        0D 71 05      ORA $0571                 
CODE_23DE04:        8D 71 05      STA $0571                 
CODE_23DE07:        A9 3C         LDA #$3C                  
CODE_23DE09:        8D 10 05      STA $0510                 
CODE_23DE0C:        8A            TXA                       
CODE_23DE0D:        0A            ASL A                     
CODE_23DE0E:        AA            TAX                       
CODE_23DE0F:        A5 5E         LDA $5E                   
CODE_23DE11:        18            CLC                       
CODE_23DE12:        7D 4F EC      ADC.w DATA_21EC4F,x               
CODE_23DE15:        E0 04         CPX #$04                  
CODE_23DE17:        10 02         BPL CODE_23DE1B           
CODE_23DE19:        29 F0         AND #$F0                  
CODE_23DE1B:        85 52         STA $52                   
CODE_23DE1D:        A5 70         LDA $70                   
CODE_23DE1F:        E0 06         CPX #$06                  
CODE_23DE21:        D0 04         BNE CODE_23DE27           
CODE_23DE23:        A4 BB         LDY $BB                   
CODE_23DE25:        F0 04         BEQ CODE_23DE2B           
CODE_23DE27:        18            CLC                       
CODE_23DE28:        7D 50 EC      ADC.w DATA_21EC4F+1,x               
CODE_23DE2B:        29 F0         AND #$F0                  
CODE_23DE2D:        E0 04         CPX #$04                  
CODE_23DE2F:        30 03         BMI CODE_23DE34           
CODE_23DE31:        38            SEC                       
CODE_23DE32:        E9 01         SBC #$01                  
CODE_23DE34:        85 53         STA $53                   
CODE_23DE36:        60            RTS                       

CODE_23DE37:        8D 64 05      STA $0564                 
CODE_23DE3A:        A5 0C         LDA $0C                   
CODE_23DE3C:        8D 2A 05      STA $052A                 
CODE_23DE3F:        A5 0D         LDA $0D                   
CODE_23DE41:        29 F0         AND #$F0                  
CODE_23DE43:        8D 2B 05      STA $052B                 
CODE_23DE46:        A5 0E         LDA $0E                   
CODE_23DE48:        8D 28 05      STA $0528                 
CODE_23DE4B:        A5 0F         LDA $0F                   
CODE_23DE4D:        29 F0         AND #$F0                  
CODE_23DE4F:        8D 29 05      STA $0529                 
CODE_23DE52:        60            RTS                       

CODE_23DE53:        A2 00         LDX #$00                  
CODE_23DE55:        A0 40         LDY #$40                  
CODE_23DE57:        A5 8B         LDA $8B                   
CODE_23DE59:        10 07         BPL CODE_23DE62           
CODE_23DE5B:        A0 C0         LDY #$C0                  
CODE_23DE5D:        49 FF         EOR #$FF                  
CODE_23DE5F:        18            CLC                       
CODE_23DE60:        69 01         ADC #$01                  
CODE_23DE62:        85 0F         STA $0F                   
CODE_23DE64:        C9 40         CMP #$40                  
CODE_23DE66:        30 02         BMI CODE_23DE6A           
CODE_23DE68:        84 8B         STY $8B                   
CODE_23DE6A:        B5 8B         LDA $8B,x                 
CODE_23DE6C:        E0 00         CPX #$00                  
CODE_23DE6E:        D0 04         BNE CODE_23DE74           
CODE_23DE70:        18            CLC                       
CODE_23DE71:        6D 20 10      ADC $1020                 
CODE_23DE74:        48            PHA                       
CODE_23DE75:        0A            ASL A                     
CODE_23DE76:        0A            ASL A                     
CODE_23DE77:        0A            ASL A                     
CODE_23DE78:        0A            ASL A                     
CODE_23DE79:        85 0B         STA $0B                   
CODE_23DE7B:        A0 00         LDY #$00                  
CODE_23DE7D:        68            PLA                       
CODE_23DE7E:        4A            LSR A                     
CODE_23DE7F:        4A            LSR A                     
CODE_23DE80:        4A            LSR A                     
CODE_23DE81:        4A            LSR A                     
CODE_23DE82:        C9 08         CMP #$08                  
CODE_23DE84:        90 03         BCC CODE_23DE89           
CODE_23DE86:        88            DEY                       
CODE_23DE87:        09 F0         ORA #$F0                  
CODE_23DE89:        85 0A         STA $0A                   
CODE_23DE8B:        84 0C         STY $0C                   
CODE_23DE8D:        BD 4E 07      LDA $074E,x               
CODE_23DE90:        18            CLC                       
CODE_23DE91:        65 0B         ADC $0B                   
CODE_23DE93:        9D 4E 07      STA $074E,x               
CODE_23DE96:        B5 5E         LDA $5E,x                 
CODE_23DE98:        65 0A         ADC $0A                   
CODE_23DE9A:        95 5E         STA $5E,x                 
CODE_23DE9C:        B5 43         LDA $43,x                 
CODE_23DE9E:        65 0C         ADC $0C                   
CODE_23DEA0:        95 43         STA $43,x                 
CODE_23DEA2:        6B            RTL                       

CODE_23DEA3:        A5 9D         LDA $9D                   
CODE_23DEA5:        30 08         BMI CODE_23DEAF           
CODE_23DEA7:        C9 40         CMP #$40                  
CODE_23DEA9:        30 04         BMI CODE_23DEAF           
CODE_23DEAB:        A9 40         LDA #$40                  
CODE_23DEAD:        85 9D         STA $9D                   
CODE_23DEAF:        A2 12         LDX #$12                  
CODE_23DEB1:        22 6A DE 23   JSL CODE_23DE6A           
CODE_23DEB5:        6B            RTL                       

CODE_23DEB6:        C2 20         REP #$20                  
CODE_23DEB8:        64 0A         STZ $0A                   
CODE_23DEBA:        29 01 00      AND #$0001                
CODE_23DEBD:        F0 05         BEQ CODE_23DEC4           
CODE_23DEBF:        A9 00 04      LDA #$0400                
CODE_23DEC2:        04 0A         TSB $0A                   
CODE_23DEC4:        A5 55         LDA $55                   
CODE_23DEC6:        29 01 00      AND #$0001                
CODE_23DEC9:        F0 05         BEQ CODE_23DED0           
CODE_23DECB:        A9 00 08      LDA #$0800                
CODE_23DECE:        04 0A         TSB $0A                   
CODE_23DED0:        A5 5E         LDA $5E                   
CODE_23DED2:        29 F8 00      AND #$00F8                
CODE_23DED5:        4A            LSR A                     
CODE_23DED6:        4A            LSR A                     
CODE_23DED7:        4A            LSR A                     
CODE_23DED8:        04 0A         TSB $0A                   
CODE_23DEDA:        A5 70         LDA $70                   
CODE_23DEDC:        29 07 00      AND #$0007                
CODE_23DEDF:        F0 0B         BEQ CODE_23DEEC           
CODE_23DEE1:        A5 70         LDA $70                   
CODE_23DEE3:        29 F8 00      AND #$00F8                
CODE_23DEE6:        18            CLC                       
CODE_23DEE7:        69 08 00      ADC #$0008                
CODE_23DEEA:        80 05         BRA CODE_23DEF1           

CODE_23DEEC:        A5 70         LDA $70                   
CODE_23DEEE:        29 F8 00      AND #$00F8                
CODE_23DEF1:        0A            ASL A                     
CODE_23DEF2:        0A            ASL A                     
CODE_23DEF3:        18            CLC                       
CODE_23DEF4:        65 0A         ADC $0A                   
CODE_23DEF6:        85 0A         STA $0A                   
CODE_23DEF8:        8B            PHB                       
CODE_23DEF9:        4B            PHK                       
CODE_23DEFA:        AB            PLB                       
CODE_23DEFB:        AE 00 16      LDX $1600                 
CODE_23DEFE:        A5 0A         LDA $0A                   
CODE_23DF00:        EB            XBA                       
CODE_23DF01:        9D 02 16      STA $1602,x               
CODE_23DF04:        E8            INX                       
CODE_23DF05:        E8            INX                       
CODE_23DF06:        BD 45 DF      LDA.w DATA_23DF47-2,x               
CODE_23DF09:        9D 02 16      STA $1602,x               
CODE_23DF0C:        E8            INX                       
CODE_23DF0D:        E8            INX                       
CODE_23DF0E:        C9 FF FF      CMP #$FFFF                
CODE_23DF11:        D0 F3         BNE CODE_23DF06           
CODE_23DF13:        A5 0A         LDA $0A                   
CODE_23DF15:        1A            INC A                     
CODE_23DF16:        EB            XBA                       
CODE_23DF17:        9D E8 15      STA $15E8,x               
CODE_23DF1A:        A5 0A         LDA $0A                   
CODE_23DF1C:        48            PHA                       
CODE_23DF1D:        29 FF 03      AND #$03FF                
CODE_23DF20:        C9 C0 03      CMP #$03C0                
CODE_23DF23:        90 07         BCC CODE_23DF2C           
CODE_23DF25:        68            PLA                       
CODE_23DF26:        18            CLC                       
CODE_23DF27:        69 00 04      ADC #$0400                
CODE_23DF2A:        80 01         BRA CODE_23DF2D           

CODE_23DF2C:        68            PLA                       
CODE_23DF2D:        18            CLC                       
CODE_23DF2E:        69 40 00      ADC #$0040                
CODE_23DF31:        29 FF 0F      AND #$0FFF                
CODE_23DF34:        EB            XBA                       
CODE_23DF35:        9D F0 15      STA $15F0,x               
CODE_23DF38:        EB            XBA                       
CODE_23DF39:        1A            INC A                     
CODE_23DF3A:        EB            XBA                       
CODE_23DF3B:        9D F8 15      STA $15F8,x               
CODE_23DF3E:        CA            DEX                       
CODE_23DF3F:        CA            DEX                       
CODE_23DF40:        8E 00 16      STX $1600                 
CODE_23DF43:        E2 20         SEP #$20                  
CODE_23DF45:        AB            PLB                       
CODE_23DF46:        60            RTS                       

DATA_23DF47:        db $80,$03,$5A,$16,$5B,$16,$00,$00
                    db $80,$03,$5A,$56,$5B,$56,$00,$00
                    db $80,$03,$5B,$16,$5A,$96,$00,$00
                    db $80,$03,$5B,$56,$5A,$D6,$FF,$FF

CODE_23DF67:        8B            PHB                       
CODE_23DF68:        4B            PHK                       
CODE_23DF69:        AB            PLB                       
CODE_23DF6A:        AF 06 00 70   LDA $700006               
CODE_23DF6E:        D0 1A         BNE CODE_23DF8A           
CODE_23DF70:        A5 F4         LDA $F4                   
CODE_23DF72:        29 C0         AND #$C0                  
CODE_23DF74:        04 F2         TSB $F2                   
CODE_23DF76:        A5 F8         LDA $F8                   
CODE_23DF78:        29 C0         AND #$C0                  
CODE_23DF7A:        04 F6         TSB $F6                   
CODE_23DF7C:        A5 F5         LDA $F5                   
CODE_23DF7E:        29 C0         AND #$C0                  
CODE_23DF80:        04 F3         TSB $F3                   
CODE_23DF82:        A5 F9         LDA $F9                   
CODE_23DF84:        29 C0         AND #$C0                  
CODE_23DF86:        04 F7         TSB $F7                   
CODE_23DF88:        80 54         BRA CODE_23DFDE           

CODE_23DF8A:        A5 F2         LDA $F2                   
CODE_23DF8C:        29 80         AND #$80                  
CODE_23DF8E:        4A            LSR A                     
CODE_23DF8F:        04 F2         TSB $F2                   
CODE_23DF91:        A5 F4         LDA $F4                   
CODE_23DF93:        29 C0         AND #$C0                  
CODE_23DF95:        85 00         STA $00                   
CODE_23DF97:        A5 F2         LDA $F2                   
CODE_23DF99:        29 7F         AND #$7F                  
CODE_23DF9B:        05 00         ORA $00                   
CODE_23DF9D:        85 F2         STA $F2                   
CODE_23DF9F:        A5 F6         LDA $F6                   
CODE_23DFA1:        29 80         AND #$80                  
CODE_23DFA3:        4A            LSR A                     
CODE_23DFA4:        04 F6         TSB $F6                   
CODE_23DFA6:        A5 F8         LDA $F8                   
CODE_23DFA8:        29 C0         AND #$C0                  
CODE_23DFAA:        85 00         STA $00                   
CODE_23DFAC:        A5 F6         LDA $F6                   
CODE_23DFAE:        29 7F         AND #$7F                  
CODE_23DFB0:        05 00         ORA $00                   
CODE_23DFB2:        85 F6         STA $F6                   
CODE_23DFB4:        A5 F3         LDA $F3                   
CODE_23DFB6:        29 80         AND #$80                  
CODE_23DFB8:        4A            LSR A                     
CODE_23DFB9:        04 F3         TSB $F3                   
CODE_23DFBB:        A5 F5         LDA $F5                   
CODE_23DFBD:        29 C0         AND #$C0                  
CODE_23DFBF:        85 00         STA $00                   
CODE_23DFC1:        A5 F3         LDA $F3                   
CODE_23DFC3:        29 7F         AND #$7F                  
CODE_23DFC5:        05 00         ORA $00                   
CODE_23DFC7:        85 F3         STA $F3                   
CODE_23DFC9:        A5 F7         LDA $F7                   
CODE_23DFCB:        29 80         AND #$80                  
CODE_23DFCD:        4A            LSR A                     
CODE_23DFCE:        04 F7         TSB $F7                   
CODE_23DFD0:        A5 F9         LDA $F9                   
CODE_23DFD2:        29 C0         AND #$C0                  
CODE_23DFD4:        85 00         STA $00                   
CODE_23DFD6:        A5 F7         LDA $F7                   
CODE_23DFD8:        29 7F         AND #$7F                  
CODE_23DFDA:        05 00         ORA $00                   
CODE_23DFDC:        85 F7         STA $F7                   
CODE_23DFDE:        DA            PHX                       
CODE_23DFDF:        AE 26 07      LDX $0726                 
CODE_23DFE2:        B5 F2         LDA $F2,x                 
CODE_23DFE4:        85 17         STA $17                   
CODE_23DFE6:        B5 F6         LDA $F6,x                 
CODE_23DFE8:        85 18         STA $18                   
CODE_23DFEA:        FA            PLX                       
CODE_23DFEB:        AB            PLB                       
CODE_23DFEC:        6B            RTL                       

DATA_23DFED:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF

CODE_23E000:        20 71 E0      JSR CODE_23E071
CODE_23E003:        A2 00         LDX #$00                  
CODE_23E005:        A0 00         LDY #$00                  
CODE_23E007:        20 0E E0      JSR CODE_23E00E           
CODE_23E00A:        A2 23         LDX #$23                  
CODE_23E00C:        A0 01         LDY #$01                  
CODE_23E00E:        84 00         STY $00                   
CODE_23E010:        86 01         STX $01                   
CODE_23E012:        BD 9C 1D      LDA $1D9C,x               
CODE_23E015:        F0 0A         BEQ CODE_23E021           
CODE_23E017:        BD 9D 1D      LDA $1D9D,x               
CODE_23E01A:        F0 05         BEQ CODE_23E021           
CODE_23E01C:        BD 9E 1D      LDA $1D9E,x               
CODE_23E01F:        D0 01         BNE CODE_23E022           
CODE_23E021:        60            RTS                       

CODE_23E022:        BC 9C 1D      LDY $1D9C,x               
CODE_23E025:        B9 71 EC      LDA.w DATA_21EC71,y               
CODE_23E028:        BC 9D 1D      LDY $1D9D,x               
CODE_23E02B:        19 71 EC      ORA.w DATA_21EC71,y               
CODE_23E02E:        BC 9E 1D      LDY $1D9E,x               
CODE_23E031:        19 71 EC      ORA.w DATA_21EC71,y               
CODE_23E034:        A8            TAY                       
CODE_23E035:        A6 00         LDX $00                   
CODE_23E037:        19 61 EC      ORA.w DATA_21EC61,y               
CODE_23E03A:        8D 03 12      STA $1203                 
CODE_23E03D:        B9 69 EC      LDA.w DATA_21EC69,y               
CODE_23E040:        9D A1 19      STA $19A1,x               
CODE_23E043:        BD 22 18      LDA $1822,x               
CODE_23E046:        9D A5 19      STA $19A5,x               
CODE_23E049:        BD 11 18      LDA $1811,x               
CODE_23E04C:        38            SEC                       
CODE_23E04D:        E9 08         SBC #$08                  
CODE_23E04F:        9D A3 19      STA $19A3,x               
CODE_23E052:        B9 59 EC      LDA.w DATA_21EC59,y               
CODE_23E055:        48            PHA                       
CODE_23E056:        9D A7 19      STA $19A7,x               
CODE_23E059:        18            CLC                       
CODE_23E05A:        7D 36 07      ADC $0736,x               
CODE_23E05D:        9D 36 07      STA $0736,x               
CODE_23E060:        68            PLA                       
CODE_23E061:        F0 0D         BEQ CODE_23E070           
CODE_23E063:        A6 01         LDX $01                   
CODE_23E065:        A9 00         LDA #$00                  
CODE_23E067:        9D 9C 1D      STA $1D9C,x               
CODE_23E06A:        9D 9D 1D      STA $1D9D,x               
CODE_23E06D:        9D 9E 1D      STA $1D9E,x               
CODE_23E070:        60            RTS                       

CODE_23E071:        A2 01         LDX #$01                  
CODE_23E073:        86 00         STX $00                   
CODE_23E075:        20 7C E0      JSR CODE_23E07C           
CODE_23E078:        CA            DEX                       
CODE_23E079:        10 F8         BPL CODE_23E073           
CODE_23E07B:        60            RTS                       

CODE_23E07C:        BD A1 19      LDA $19A1,x               
CODE_23E07F:        F0 09         BEQ CODE_23E08A           
CODE_23E081:        C9 20         CMP #$20                  
CODE_23E083:        90 06         BCC CODE_23E08B           
CODE_23E085:        A9 00         LDA #$00                  
CODE_23E087:        9D A1 19      STA $19A1,x               
CODE_23E08A:        60            RTS                       

CODE_23E08B:        AD 76 00      LDA $0076                 
CODE_23E08E:        D0 08         BNE CODE_23E098           
CODE_23E090:        A5 15         LDA $15                   
CODE_23E092:        4A            LSR A                     
CODE_23E093:        90 03         BCC CODE_23E098           
CODE_23E095:        FE A1 19      INC $19A1,x               
CODE_23E098:        BC 7A EC      LDY.w DATA_21EC7A,x               
CODE_23E09B:        BD A3 19      LDA $19A3,x               
CODE_23E09E:        38            SEC                       
CODE_23E09F:        FD A1 19      SBC $19A1,x               
CODE_23E0A2:        99 01 08      STA $0801,y               
CODE_23E0A5:        BD A5 19      LDA $19A5,x               
CODE_23E0A8:        99 00 08      STA $0800,y               
CODE_23E0AB:        A9 22         LDA #$22                  
CODE_23E0AD:        99 03 08      STA $0803,y               
CODE_23E0B0:        BD A7 19      LDA $19A7,x               
CODE_23E0B3:        AA            TAX                       
CODE_23E0B4:        BD 74 EC      LDA.w DATA_21EC74,x               
CODE_23E0B7:        99 02 08      STA $0802,y               
CODE_23E0BA:        BD A5 19      LDA $19A5,x               
CODE_23E0BD:        38            SEC                       
CODE_23E0BE:        E9 08         SBC #$08                  
CODE_23E0C0:        C9 F1         CMP #$F1                  
CODE_23E0C2:        90 23         BCC CODE_23E0E7           
CODE_23E0C4:        B9 00 08      LDA $0800,y               
CODE_23E0C7:        99 04 08      STA $0804,y               
CODE_23E0CA:        B9 01 08      LDA $0801,y               
CODE_23E0CD:        99 05 08      STA $0805,y               
CODE_23E0D0:        B9 02 08      LDA $0802,y               
CODE_23E0D3:        99 06 08      STA $0806,y               
CODE_23E0D6:        B9 03 08      LDA $0803,y               
CODE_23E0D9:        99 07 08      STA $0807,y               
CODE_23E0DC:        98            TYA                       
CODE_23E0DD:        4A            LSR A                     
CODE_23E0DE:        4A            LSR A                     
CODE_23E0DF:        A8            TAY                       
CODE_23E0E0:        A9 03         LDA #$03                  
CODE_23E0E2:        99 21 0A      STA $0A21,y               
CODE_23E0E5:        80 04         BRA CODE_23E0EB           

CODE_23E0E7:        98            TYA                       
CODE_23E0E8:        4A            LSR A                     
CODE_23E0E9:        4A            LSR A                     
CODE_23E0EA:        A8            TAY                       
CODE_23E0EB:        A9 02         LDA #$02                  
CODE_23E0ED:        99 20 0A      STA $0A20,y               
CODE_23E0F0:        A6 00         LDX $00                   
CODE_23E0F2:        60            RTS                       

CODE_23E0F3:        64 00         STZ $00                   
CODE_23E0F5:        A9 02         LDA #$02                  
CODE_23E0F7:        85 01         STA $01                   
CODE_23E0F9:        A2 02         LDX #$02                  
CODE_23E0FB:        A4 01         LDY $01                   
CODE_23E0FD:        86 03         STX $03                   
CODE_23E0FF:        B9 9C 1D      LDA $1D9C,y               
CODE_23E102:        F0 44         BEQ CODE_23E148           
CODE_23E104:        A8            TAY                       
CODE_23E105:        B9 90 EC      LDA.w DATA_21EC90,y               
CODE_23E108:        A4 00         LDY $00                   
CODE_23E10A:        99 E2 09      STA $09E2,y               
CODE_23E10D:        A9 D0         LDA #$D0                  
CODE_23E10F:        99 E1 09      STA $09E1,y               
CODE_23E112:        A2 00         LDX #$00                  
CODE_23E114:        C0 04         CPY #$04                  
CODE_23E116:        F0 05         BEQ CODE_23E11D           
CODE_23E118:        E8            INX                       
CODE_23E119:        C0 0C         CPY #$0C                  
CODE_23E11B:        D0 0C         BNE CODE_23E129           
CODE_23E11D:        BD 89 19      LDA $1989,x               
CODE_23E120:        F0 07         BEQ CODE_23E129           
CODE_23E122:        4A            LSR A                     
CODE_23E123:        4A            LSR A                     
CODE_23E124:        4A            LSR A                     
CODE_23E125:        29 0E         AND #$0E                  
CODE_23E127:        80 02         BRA CODE_23E12B           

CODE_23E129:        A9 24         LDA #$24                  
CODE_23E12B:        99 E3 09      STA $09E3,y               
CODE_23E12E:        A6 03         LDX $03                   
CODE_23E130:        A9 10         LDA #$10                  
CODE_23E132:        C0 0C         CPY #$0C                  
CODE_23E134:        90 02         BCC CODE_23E138           
CODE_23E136:        A9 C0         LDA #$C0                  
CODE_23E138:        18            CLC                       
CODE_23E139:        7D 8E EC      ADC.w DATA_21EC8E,x               
CODE_23E13C:        99 E0 09      STA $09E0,y               
CODE_23E13F:        98            TYA                       
CODE_23E140:        4A            LSR A                     
CODE_23E141:        4A            LSR A                     
CODE_23E142:        A8            TAY                       
CODE_23E143:        A9 02         LDA #$02                  
CODE_23E145:        99 98 0A      STA $0A98,y               
CODE_23E148:        A5 00         LDA $00                   
CODE_23E14A:        18            CLC                       
CODE_23E14B:        69 04         ADC #$04                  
CODE_23E14D:        85 00         STA $00                   
CODE_23E14F:        C6 01         DEC $01                   
CODE_23E151:        CA            DEX                       
CODE_23E152:        30 02         BMI CODE_23E156           
CODE_23E154:        80 A5         BRA CODE_23E0FB           

CODE_23E156:        A9 0C         LDA #$0C                  
CODE_23E158:        85 00         STA $00                   
CODE_23E15A:        A9 25         LDA #$25                  
CODE_23E15C:        A4 01         LDY $01                   
CODE_23E15E:        30 97         BMI CODE_23E0F7           
CODE_23E160:        60            RTS                       

CODE_23E161:        8A            TXA                       
CODE_23E162:        48            PHA                       
CODE_23E163:        C2 30         REP #$30                  
CODE_23E165:        A0 00 00      LDY #$0000                
CODE_23E168:        AE 00 16      LDX $1600                 
CODE_23E16B:        B9 7C EC      LDA.w DATA_21EC7C,y               
CODE_23E16E:        9D 02 16      STA $1602,x               
CODE_23E171:        E8            INX                       
CODE_23E172:        E8            INX                       
CODE_23E173:        C8            INY                       
CODE_23E174:        C8            INY                       
CODE_23E175:        C0 08 00      CPY #$0008                
CODE_23E178:        D0 F1         BNE CODE_23E16B           
CODE_23E17A:        E2 30         SEP #$30                  
CODE_23E17C:        A4 0F         LDY $0F                   
CODE_23E17E:        B9 8C EC      LDA.w DATA_21EC8C,y               
CODE_23E181:        18            CLC                       
CODE_23E182:        79 2E 19      ADC $192E,y               
CODE_23E185:        9D FB 15      STA $15FB,x               
CODE_23E188:        CA            DEX                       
CODE_23E189:        CA            DEX                       
CODE_23E18A:        8E 00 16      STX $1600                 
CODE_23E18D:        68            PLA                       
CODE_23E18E:        AA            TAX                       
CODE_23E18F:        60            RTS                       

CODE_23E190:        AD 30 19      LDA $1930                 
CODE_23E193:        D0 3E         BNE CODE_23E1D3           
CODE_23E195:        A5 F6         LDA $F6                   
CODE_23E197:        05 F7         ORA $F7                   
CODE_23E199:        29 10         AND #$10                  
CODE_23E19B:        F0 36         BEQ CODE_23E1D3           
CODE_23E19D:        AD 76 00      LDA $0076                 
CODE_23E1A0:        49 01         EOR #$01                  
CODE_23E1A2:        8D 76 00      STA $0076                 
CODE_23E1A5:        D0 17         BNE CODE_23E1BE           
CODE_23E1A7:        A9 F2         LDA #$F2                  
CODE_23E1A9:        8D 02 12      STA $1202                 
CODE_23E1AC:        A9 43         LDA #$43                  
CODE_23E1AE:        8D 00 12      STA $1200                 
CODE_23E1B1:        A2 0E         LDX #$0E                  
CODE_23E1B3:        BD 8B 19      LDA $198B,x               
CODE_23E1B6:        9D CB 18      STA $18CB,x               
CODE_23E1B9:        CA            DEX                       
CODE_23E1BA:        10 F7         BPL CODE_23E1B3           
CODE_23E1BC:        30 15         BMI CODE_23E1D3           
CODE_23E1BE:        A9 F1         LDA #$F1                  
CODE_23E1C0:        8D 02 12      STA $1202                 
CODE_23E1C3:        A9 43         LDA #$43                  
CODE_23E1C5:        8D 00 12      STA $1200                 
CODE_23E1C8:        A2 0E         LDX #$0E                  
CODE_23E1CA:        BD CB 18      LDA $18CB,x               
CODE_23E1CD:        9D 8B 19      STA $198B,x               
CODE_23E1D0:        CA            DEX                       
CODE_23E1D1:        10 F7         BPL CODE_23E1CA           
CODE_23E1D3:        AD 76 00      LDA $0076                 
CODE_23E1D6:        F0 0A         BEQ CODE_23E1E2           
CODE_23E1D8:        A2 0E         LDX #$0E                  
CODE_23E1DA:        A9 FF         LDA #$FF                  
CODE_23E1DC:        9D CB 18      STA $18CB,x               
CODE_23E1DF:        CA            DEX                       
CODE_23E1E0:        10 FA         BPL CODE_23E1DC           
CODE_23E1E2:        20 E6 E1      JSR CODE_23E1E6           
CODE_23E1E5:        6B            RTL                       

CODE_23E1E6:        AD 75 00      LDA $0075                 
CODE_23E1E9:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23E1ED:        dw CODE_23E1FD
                    dw CODE_23E2AB

DATA_23E1F1:        db $00,$01,$02,$00,$03,$04,$05,$00
                    db $00,$01,$05,$00

CODE_23E1FD:        C2 30         REP #$30
CODE_23E1FF:        A9 58 00      LDA #$0058
CODE_23E202:        85 8D         STA $8D
CODE_23E204:        85 8E         STA $8E                 
CODE_23E206:        A0 00 02      LDY #$0200
CODE_23E209:        A9 00 00      LDA #$0000
CODE_23E20C:        99 00 18      STA $1800,y               
CODE_23E20F:        88            DEY                       
CODE_23E210:        88            DEY                       
CODE_23E211:        10 F9         BPL CODE_23E20C           
CODE_23E213:        E2 30         SEP #$30                  
CODE_23E215:        A5 15         LDA $15                   
CODE_23E217:        09 91         ORA #$91                  
CODE_23E219:        8D 2B 19      STA $192B                 
CODE_23E21C:        EE 75 00      INC $0075                 
CODE_23E21F:        AE 26 1F      LDX $1F26                 
CODE_23E222:        BF F1 E1 23   LDA.l DATA_23E1F1,x             
CODE_23E226:        8D 9A 19      STA $199A                 
CODE_23E229:        8A            TXA                       
CODE_23E22A:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23E22E:        dw CODE_23E24B
                    dw CODE_23E24B
                    dw CODE_23E24B
                    dw CODE_23E28E
                    dw CODE_23E24B
                    dw CODE_23E24B
                    dw CODE_23E24B
                    dw CODE_23E246
                    dw CODE_23E24B
                    dw CODE_23E24B
                    dw CODE_23E24B
                    dw CODE_23E24C

CODE_23E246:        A9 01         LDA #$01
CODE_23E248:        8D 6D 1A      STA $1A6D
CODE_23E24B:        60            RTS                 

CODE_23E24C:        A2 0D         LDX #$0D                  
CODE_23E24E:        8A            TXA                       
CODE_23E24F:        95 00         STA $00,x                 
CODE_23E251:        CA            DEX                       
CODE_23E252:        10 FA         BPL CODE_23E24E           
CODE_23E254:        A9 FF         LDA #$FF                  
CODE_23E256:        85 0E         STA $0E                   
CODE_23E258:        85 0F         STA $0F                   
CODE_23E25A:        A2 04         LDX #$04                  
CODE_23E25C:        20 7A E2      JSR CODE_23E27A           
CODE_23E25F:        A8            TAY                       
CODE_23E260:        B9 94 EC      LDA.w DATA_21EC94,y               
CODE_23E263:        9D 24 18      STA $1824,x               
CODE_23E266:        B9 A2 EC      LDA.w DATA_21ECA2,y               
CODE_23E269:        9D 13 18      STA $1813,x               
CODE_23E26C:        A9 01         LDA #$01                  
CODE_23E26E:        9D 02 18      STA $1802,x               
CODE_23E271:        A9 0B         LDA #$0B                  
CODE_23E273:        9D BB 18      STA $18BB,x               
CODE_23E276:        CA            DEX                       
CODE_23E277:        10 E3         BPL CODE_23E25C           
CODE_23E279:        60            RTS                       

CODE_23E27A:        22 05 F8 25   JSL CODE_25F805           
CODE_23E27E:        29 0F         AND #$0F                  
CODE_23E280:        A8            TAY                       
CODE_23E281:        B9 00 00      LDA $0000,y               
CODE_23E284:        30 F4         BMI CODE_23E27A           
CODE_23E286:        48            PHA                       
CODE_23E287:        A9 FF         LDA #$FF                  
CODE_23E289:        99 00 00      STA $0000,y               
CODE_23E28C:        68            PLA                       
CODE_23E28D:        60            RTS                       

CODE_23E28E:        A2 04         LDX #$04                  
CODE_23E290:        FE 02 18      INC $1802,x               
CODE_23E293:        A9 0B         LDA #$0B                  
CODE_23E295:        9D BB 18      STA $18BB,x               
CODE_23E298:        BD B5 EC      LDA.w DATA_21ECB5,x               
CODE_23E29B:        9D 13 18      STA $1813,x               
CODE_23E29E:        BD B0 EC      LDA.w DATA_21ECB0,x               
CODE_23E2A1:        9D 24 18      STA $1824,x               
CODE_23E2A4:        20 8D ED      JSR CODE_23ED8D           
CODE_23E2A7:        CA            DEX                       
CODE_23E2A8:        10 E6         BPL CODE_23E290           
CODE_23E2AA:        60            RTS                       

CODE_23E2AB:        20 F3 E0      JSR CODE_23E0F3           
CODE_23E2AE:        20 00 E0      JSR CODE_23E000           
CODE_23E2B1:        AD 26 1F      LDA $1F26                 
CODE_23E2B4:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23E2B8:        dw CODE_23E2D0
                    dw CODE_23E2D0
                    dw CODE_23E2D0
                    dw CODE_23E2FA
                    dw CODE_23E2D0
                    dw CODE_23E2D0
                    dw CODE_23E2D0
                    dw CODE_23E2ED
                    dw CODE_23E2D0
                    dw CODE_23E2D0
                    dw CODE_23E2D0
                    dw CODE_23E2E3

CODE_23E2D0:        20 FA E3      JSR CODE_23E3FA
CODE_23E2D3:        20 04 ED      JSR CODE_23ED04              
CODE_23E2D6:        20 51 EE      JSR CODE_23EE51           
CODE_23E2D9:        20 5D F8      JSR CODE_23F85D           
CODE_23E2DC:        20 D9 F6      JSR CODE_23F6D9           
CODE_23E2DF:        20 C3 F9      JSR CODE_23F9C3           
CODE_23E2E2:        60            RTS                       

CODE_23E2E3:        20 FA E3      JSR CODE_23E3FA           
CODE_23E2E6:        20 51 EE      JSR CODE_23EE51           
CODE_23E2E9:        20 C3 F9      JSR CODE_23F9C3           
CODE_23E2EC:        60            RTS                       

CODE_23E2ED:        20 FA E3      JSR CODE_23E3FA           
CODE_23E2F0:        20 1B E3      JSR CODE_23E31B           
CODE_23E2F3:        20 51 EE      JSR CODE_23EE51           
CODE_23E2F6:        20 C3 F9      JSR CODE_23F9C3           
CODE_23E2F9:        60            RTS                       

CODE_23E2FA:        20 FA E3      JSR CODE_23E3FA           
CODE_23E2FD:        20 51 EE      JSR CODE_23EE51           
CODE_23E300:        20 5D F8      JSR CODE_23F85D           
CODE_23E303:        20 C3 F9      JSR CODE_23F9C3           
CODE_23E306:        60            RTS                       

CODE_23E307:        A5 15         LDA $15                   
CODE_23E309:        29 07         AND #$07                  
CODE_23E30B:        D0 0D         BNE CODE_23E31A           
CODE_23E30D:        EE 41 19      INC $1941                 
CODE_23E310:        D0 08         BNE CODE_23E31A           
CODE_23E312:        A9 01         LDA #$01                  
CODE_23E314:        8D 8C 07      STA $078C                 
CODE_23E317:        4C 92 E4      JMP CODE_23E492           

CODE_23E31A:        60            RTS                       

CODE_23E31B:        AD CB 18      LDA $18CB                 
CODE_23E31E:        0D CC 18      ORA $18CC                 
CODE_23E321:        0D 30 19      ORA $1930                 
CODE_23E324:        0D 76 00      ORA $0076                 
CODE_23E327:        D0 1F         BNE CODE_23E348           
CODE_23E329:        CE 6D 1A      DEC $1A6D                 
CODE_23E32C:        D0 0A         BNE CODE_23E338           
CODE_23E32E:        A9 20         LDA #$20                  
CODE_23E330:        8D 6D 1A      STA $1A6D                 
CODE_23E333:        A9 1C         LDA #$1C                  
CODE_23E335:        8D 00 12      STA $1200                 
CODE_23E338:        A5 15         LDA $15                   
CODE_23E33A:        29 07         AND #$07                  
CODE_23E33C:        D0 0A         BNE CODE_23E348           
CODE_23E33E:        A2 09         LDX #$09                  
CODE_23E340:        BD 02 18      LDA $1802,x               
CODE_23E343:        F0 04         BEQ CODE_23E349           
CODE_23E345:        CA            DEX                       
CODE_23E346:        10 F8         BPL CODE_23E340           
CODE_23E348:        60            RTS                       

CODE_23E349:        FE 02 18      INC $1802,x               
CODE_23E34C:        A0 0B         LDY #$0B                  
CODE_23E34E:        AD 2D 19      LDA $192D                 
CODE_23E351:        29 1C         AND #$1C                  
CODE_23E353:        D0 02         BNE CODE_23E357           
CODE_23E355:        A0 06         LDY #$06                  
CODE_23E357:        98            TYA                       
CODE_23E358:        9D BB 18      STA $18BB,x               
CODE_23E35B:        A9 B0         LDA #$B0                  
CODE_23E35D:        9D 13 18      STA $1813,x               
CODE_23E360:        A9 7C         LDA #$7C                  
CODE_23E362:        9D 24 18      STA $1824,x               
CODE_23E365:        22 05 F8 25   JSL CODE_25F805           
CODE_23E369:        29 0F         AND #$0F                  
CODE_23E36B:        69 A8         ADC #$A8                  
CODE_23E36D:        9D 35 18      STA $1835,x               
CODE_23E370:        22 05 F8 25   JSL CODE_25F805           
CODE_23E374:        29 1F         AND #$1F                  
CODE_23E376:        E9 10         SBC #$10                  
CODE_23E378:        9D 46 18      STA $1846,x               
CODE_23E37B:        20 8D ED      JSR CODE_23ED8D           
CODE_23E37E:        FE A6 18      INC $18A6,x               
CODE_23E381:        A9 30         LDA #$30                  
CODE_23E383:        9D 1E 19      STA $191E,x               
CODE_23E386:        60            RTS                       

CODE_23E387:        A2 02         LDX #$02                  
CODE_23E389:        A0 02         LDY #$02                  
CODE_23E38B:        AD 0E 19      LDA $190E                 
CODE_23E38E:        F0 02         BEQ CODE_23E392           
CODE_23E390:        A0 25         LDY #$25                  
CODE_23E392:        84 00         STY $00                   
CODE_23E394:        B9 9C 1D      LDA $1D9C,y               
CODE_23E397:        D0 08         BNE CODE_23E3A1           
CODE_23E399:        88            DEY                       
CODE_23E39A:        CA            DEX                       
CODE_23E39B:        10 F5         BPL CODE_23E392           
CODE_23E39D:        AE 0E 19      LDX $190E                 
CODE_23E3A0:        60            RTS                       

CODE_23E3A1:        A2 0B         LDX #$0B                  
CODE_23E3A3:        BD 02 18      LDA $1802,x               
CODE_23E3A6:        F0 09         BEQ CODE_23E3B1           
CODE_23E3A8:        CA            DEX                       
CODE_23E3A9:        E0 0A         CPX #$0A                  
CODE_23E3AB:        D0 F6         BNE CODE_23E3A3           
CODE_23E3AD:        AE 0E 19      LDX $190E                 
CODE_23E3B0:        60            RTS                       

CODE_23E3B1:        A9 0F         LDA #$0F                  
CODE_23E3B3:        8D 00 12      STA $1200                 
CODE_23E3B6:        B9 9C 1D      LDA $1D9C,y               
CODE_23E3B9:        A8            TAY                       
CODE_23E3BA:        18            CLC                       
CODE_23E3BB:        69 0B         ADC #$0B                  
CODE_23E3BD:        9D BB 18      STA $18BB,x               
CODE_23E3C0:        B9 B9 EC      LDA.w DATA_21ECB9,y               
CODE_23E3C3:        9D 35 18      STA $1835,x               
CODE_23E3C6:        FE 02 18      INC $1802,x               
CODE_23E3C9:        A4 00         LDY $00                   
CODE_23E3CB:        A9 00         LDA #$00                  
CODE_23E3CD:        99 9C 1D      STA $1D9C,y               
CODE_23E3D0:        20 8D ED      JSR CODE_23ED8D           
CODE_23E3D3:        AC 0E 19      LDY $190E                 
CODE_23E3D6:        B9 22 18      LDA $1822,y               
CODE_23E3D9:        9D 24 18      STA $1824,x               
CODE_23E3DC:        0A            ASL A                     
CODE_23E3DD:        A9 06         LDA #$06                  
CODE_23E3DF:        90 02         BCC CODE_23E3E3           
CODE_23E3E1:        A9 FA         LDA #$FA                  
CODE_23E3E3:        9D 46 18      STA $1846,x               
CODE_23E3E6:        B9 11 18      LDA $1811,y               
CODE_23E3E9:        9D 13 18      STA $1813,x               
CODE_23E3EC:        A9 00         LDA #$00                  
CODE_23E3EE:        9D 44 19      STA $1944,x               
CODE_23E3F1:        A9 20         LDA #$20                  
CODE_23E3F3:        9D E9 18      STA $18E9,x               
CODE_23E3F6:        AE 0E 19      LDX $190E                 
CODE_23E3F9:        60            RTS                       

CODE_23E3FA:        22 67 DF 23   JSL CODE_23DF67           
CODE_23E3FE:        AD 30 19      LDA $1930                 
CODE_23E401:        F0 07         BEQ CODE_23E40A           
CODE_23E403:        9C 76 00      STZ $0076                 
CODE_23E406:        64 F2         STZ $F2                   
CODE_23E408:        64 F3         STZ $F3                   
CODE_23E40A:        A2 01         LDX #$01                  
CODE_23E40C:        8E 0E 19      STX $190E                 
CODE_23E40F:        B5 F2         LDA $F2,x                 
CODE_23E411:        29 03         AND #$03                  
CODE_23E413:        C9 03         CMP #$03                  
CODE_23E415:        D0 02         BNE CODE_23E419           
CODE_23E417:        D6 F2         DEC $F2,x                 
CODE_23E419:        B5 F2         LDA $F2,x                 
CODE_23E41B:        29 0C         AND #$0C                  
CODE_23E41D:        C9 0C         CMP #$0C                  
CODE_23E41F:        D0 06         BNE CODE_23E427           
CODE_23E421:        B5 F2         LDA $F2,x                 
CODE_23E423:        29 F7         AND #$F7                  
CODE_23E425:        95 F2         STA $F2,x                 
CODE_23E427:        AD 76 00      LDA $0076                 
CODE_23E42A:        D0 10         BNE CODE_23E43C           
CODE_23E42C:        BD E7 18      LDA $18E7,x               
CODE_23E42F:        F0 03         BEQ CODE_23E434           
CODE_23E431:        DE E7 18      DEC $18E7,x               
CODE_23E434:        BD 89 19      LDA $1989,x               
CODE_23E437:        F0 03         BEQ CODE_23E43C           
CODE_23E439:        DE 89 19      DEC $1989,x               
CODE_23E43C:        20 52 E4      JSR CODE_23E452           
CODE_23E43F:        9E 3F 19      STZ $193F,x               
CODE_23E442:        CA            DEX                       
CODE_23E443:        10 C7         BPL CODE_23E40C           
CODE_23E445:        AD 76 00      LDA $0076                 
CODE_23E448:        D0 03         BNE CODE_23E44D           
CODE_23E44A:        20 DD EB      JSR CODE_23EBDD           
CODE_23E44D:        22 CE F8 25   JSL CODE_25F8CE           
CODE_23E451:        60            RTS                       

CODE_23E452:        AD 30 19      LDA $1930                 
CODE_23E455:        F0 03         BEQ CODE_23E45A           
CODE_23E457:        4C 6C E4      JMP CODE_23E46C           

CODE_23E45A:        BD CB 18      LDA $18CB,x               
CODE_23E45D:        F0 08         BEQ CODE_23E467           
CODE_23E45F:        DE CB 18      DEC $18CB,x               
CODE_23E462:        F0 03         BEQ CODE_23E467           
CODE_23E464:        4C 9B E4      JMP CODE_23E49B           

CODE_23E467:        AC 30 19      LDY $1930                 
CODE_23E46A:        F0 6A         BEQ CODE_23E4D6           
CODE_23E46C:        8A            TXA                       
CODE_23E46D:        F0 09         BEQ CODE_23E478           
CODE_23E46F:        AD 01 18      LDA $1801                 
CODE_23E472:        C9 02         CMP #$02                  
CODE_23E474:        F0 60         BEQ CODE_23E4D6           
CODE_23E476:        80 23         BRA CODE_23E49B           

CODE_23E478:        AD 76 00      LDA $0076                 
CODE_23E47B:        D0 03         BNE CODE_23E480           
CODE_23E47D:        CE 30 19      DEC $1930                 
CODE_23E480:        AD 00 18      LDA $1800                 
CODE_23E483:        C9 02         CMP #$02                  
CODE_23E485:        F0 4F         BEQ CODE_23E4D6           
CODE_23E487:        AD 30 19      LDA $1930                 
CODE_23E48A:        D0 0F         BNE CODE_23E49B           
CODE_23E48C:        EE 30 19      INC $1930                 
CODE_23E48F:        20 CC E6      JSR CODE_23E6CC           
CODE_23E492:        A9 01         LDA #$01                  
CODE_23E494:        8D 14 00      STA $0014                 
CODE_23E497:        9C 75 00      STZ $0075                 
CODE_23E49A:        60            RTS                       

CODE_23E49B:        BD 00 18      LDA $1800,x               
CODE_23E49E:        F0 FA         BEQ CODE_23E49A           
CODE_23E4A0:        AD 76 00      LDA $0076                 
CODE_23E4A3:        0D 30 19      ORA $1930                 
CODE_23E4A6:        F0 11         BEQ CODE_23E4B9           
CODE_23E4A8:        BD 3F 19      LDA $193F,x               
CODE_23E4AB:        F0 0C         BEQ CODE_23E4B9           
CODE_23E4AD:        BD 11 18      LDA $1811,x               
CODE_23E4B0:        29 F8         AND #$F8                  
CODE_23E4B2:        18            CLC                       
CODE_23E4B3:        7D 3F 19      ADC $193F,x               
CODE_23E4B6:        9D 11 18      STA $1811,x               
CODE_23E4B9:        BD 00 18      LDA $1800,x               
CODE_23E4BC:        C9 03         CMP #$03                  
CODE_23E4BE:        D0 12         BNE CODE_23E4D2           
CODE_23E4C0:        AD 30 19      LDA $1930                 
CODE_23E4C3:        F0 0A         BEQ CODE_23E4CF           
CODE_23E4C5:        BD 95 18      LDA $1895,x               
CODE_23E4C8:        09 04         ORA #$04                  
CODE_23E4CA:        9D 95 18      STA $1895,x               
CODE_23E4CD:        80 03         BRA CODE_23E4D2           

CODE_23E4CF:        4C 16 E8      JMP CODE_23E816           

CODE_23E4D2:        20 CC E6      JSR CODE_23E6CC           
CODE_23E4D5:        60            RTS                       

CODE_23E4D6:        BD 00 18      LDA $1800,x               
CODE_23E4D9:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

DATA_23E4DD:        dw CODE_23E4E5
                    dw CODE_23E51E
                    dw CODE_23E82C
                    dw CODE_23E78E

CODE_23E4E5:        BC E7 18      LDY $18E7,x
CODE_23E4E8:        F0 0A         BEQ CODE_23E4F4           
CODE_23E4EA:        88            DEY                       
CODE_23E4EB:        D0 30         BNE CODE_23E51D           
CODE_23E4ED:        E8            INX                       
CODE_23E4EE:        8E 8C 07      STX $078C                 
CODE_23E4F1:        4C 92 E4      JMP CODE_23E492           

CODE_23E4F4:        A9 00         LDA #$00                  
CODE_23E4F6:        9D 44 18      STA $1844,x               
CODE_23E4F9:        9D 33 18      STA $1833,x               
CODE_23E4FC:        A9 01         LDA #$01                  
CODE_23E4FE:        9D 00 18      STA $1800,x               
CODE_23E501:        8A            TXA                       
CODE_23E502:        A8            TAY                       
CODE_23E503:        B9 C1 EC      LDA.w DATA_21ECC1,y               
CODE_23E506:        9D 64 18      STA $1864,x               
CODE_23E509:        A9 90         LDA #$90                  
CODE_23E50B:        9D 11 18      STA $1811,x               
CODE_23E50E:        AD 26 1F      LDA $1F26                 
CODE_23E511:        C9 07         CMP #$07                  
CODE_23E513:        D0 02         BNE CODE_23E517           
CODE_23E515:        C8            INY                       
CODE_23E516:        C8            INY                       
CODE_23E517:        B9 BD EC      LDA.w DATA_21ECBD,y               
CODE_23E51A:        9D 22 18      STA $1822,x               
CODE_23E51D:        60            RTS                       

CODE_23E51E:        20 25 E5      JSR CODE_23E525           
CODE_23E521:        20 CC E6      JSR CODE_23E6CC           
CODE_23E524:        60            RTS                       

CODE_23E525:        AD B9 18      LDA $18B9                 
CODE_23E528:        D0 22         BNE CODE_23E54C           
CODE_23E52A:        B5 F2         LDA $F2,x                 
CODE_23E52C:        29 0C         AND #$0C                  
CODE_23E52E:        F0 1C         BEQ CODE_23E54C           
CODE_23E530:        3D 95 18      AND $1895,x               
CODE_23E533:        D0 17         BNE CODE_23E54C           
CODE_23E535:        BD 0F 19      LDA $190F,x               
CODE_23E538:        C9 C0         CMP #$C0                  
CODE_23E53A:        D0 10         BNE CODE_23E54C           
CODE_23E53C:        A9 00         LDA #$00                  
CODE_23E53E:        9D 44 18      STA $1844,x               
CODE_23E541:        9D 33 18      STA $1833,x               
CODE_23E544:        A9 03         LDA #$03                  
CODE_23E546:        9D 00 18      STA $1800,x               
CODE_23E549:        4C A1 EA      JMP CODE_23EAA1           

CODE_23E54C:        B5 F2         LDA $F2,x                 
CODE_23E54E:        F0 05         BEQ CODE_23E555           
CODE_23E550:        A9 00         LDA #$00                  
CODE_23E552:        9D 0A 19      STA $190A,x               
CODE_23E555:        BD B5 18      LDA $18B5,x               
CODE_23E558:        F0 0D         BEQ CODE_23E567           
CODE_23E55A:        C9 08         CMP #$08                  
CODE_23E55C:        D0 03         BNE CODE_23E561           
CODE_23E55E:        20 87 E3      JSR CODE_23E387           
CODE_23E561:        A9 00         LDA #$00                  
CODE_23E563:        95 F2         STA $F2,x                 
CODE_23E565:        95 F6         STA $F6,x                 
CODE_23E567:        B5 F2         LDA $F2,x                 
CODE_23E569:        29 03         AND #$03                  
CODE_23E56B:        F0 56         BEQ CODE_23E5C3           
CODE_23E56D:        9D 64 18      STA $1864,x               
CODE_23E570:        4A            LSR A                     
CODE_23E571:        90 28         BCC CODE_23E59B           
CODE_23E573:        B5 F2         LDA $F2,x                 
CODE_23E575:        29 40         AND #$40                  
CODE_23E577:        F0 0D         BEQ CODE_23E586           
CODE_23E579:        BD 44 18      LDA $1844,x               
CODE_23E57C:        C9 18         CMP #$18                  
CODE_23E57E:        10 03         BPL CODE_23E583           
CODE_23E580:        18            CLC                       
CODE_23E581:        69 01         ADC #$01                  
CODE_23E583:        4C C0 E5      JMP CODE_23E5C0           

CODE_23E586:        BD 44 18      LDA $1844,x               
CODE_23E589:        C9 0C         CMP #$0C                  
CODE_23E58B:        F0 0B         BEQ CODE_23E598           
CODE_23E58D:        10 06         BPL CODE_23E595           
CODE_23E58F:        18            CLC                       
CODE_23E590:        69 01         ADC #$01                  
CODE_23E592:        4C C0 E5      JMP CODE_23E5C0           

CODE_23E595:        38            SEC                       
CODE_23E596:        E9 01         SBC #$01                  
CODE_23E598:        4C C0 E5      JMP CODE_23E5C0           

CODE_23E59B:        B5 F2         LDA $F2,x                 
CODE_23E59D:        29 40         AND #$40                  
CODE_23E59F:        F0 0D         BEQ CODE_23E5AE           
CODE_23E5A1:        BD 44 18      LDA $1844,x               
CODE_23E5A4:        C9 E9         CMP #$E9                  
CODE_23E5A6:        30 03         BMI CODE_23E5AB           
CODE_23E5A8:        38            SEC                       
CODE_23E5A9:        E9 01         SBC #$01                  
CODE_23E5AB:        4C C0 E5      JMP CODE_23E5C0           

CODE_23E5AE:        BD 44 18      LDA $1844,x               
CODE_23E5B1:        C9 F4         CMP #$F4                  
CODE_23E5B3:        F0 0B         BEQ CODE_23E5C0           
CODE_23E5B5:        30 06         BMI CODE_23E5BD           
CODE_23E5B7:        38            SEC                       
CODE_23E5B8:        E9 01         SBC #$01                  
CODE_23E5BA:        4C C0 E5      JMP CODE_23E5C0           

CODE_23E5BD:        18            CLC                       
CODE_23E5BE:        69 01         ADC #$01                  
CODE_23E5C0:        9D 44 18      STA $1844,x               
CODE_23E5C3:        BD 95 18      LDA $1895,x               
CODE_23E5C6:        29 04         AND #$04                  
CODE_23E5C8:        F0 05         BEQ CODE_23E5CF           
CODE_23E5CA:        BD 33 18      LDA $1833,x               
CODE_23E5CD:        10 03         BPL CODE_23E5D2           
CODE_23E5CF:        4C 56 E6      JMP CODE_23E656           

CODE_23E5D2:        BD 11 18      LDA $1811,x               
CODE_23E5D5:        29 F8         AND #$F8                  
CODE_23E5D7:        18            CLC                       
CODE_23E5D8:        7D 3F 19      ADC $193F,x               
CODE_23E5DB:        9D 11 18      STA $1811,x               
CODE_23E5DE:        A9 00         LDA #$00                  
CODE_23E5E0:        9D 33 18      STA $1833,x               
CODE_23E5E3:        9D F6 18      STA $18F6,x               
CODE_23E5E6:        BC F8 18      LDY $18F8,x               
CODE_23E5E9:        C0 C2         CPY #$C2                  
CODE_23E5EB:        D0 18         BNE CODE_23E605           
CODE_23E5ED:        BD 95 18      LDA $1895,x               
CODE_23E5F0:        29 C0         AND #$C0                  
CODE_23E5F2:        A0 08         LDY #$08                  
CODE_23E5F4:        C9 C0         CMP #$C0                  
CODE_23E5F6:        F0 0A         BEQ CODE_23E602           
CODE_23E5F8:        C9 80         CMP #$80                  
CODE_23E5FA:        F0 02         BEQ CODE_23E5FE           
CODE_23E5FC:        A0 F8         LDY #$F8                  
CODE_23E5FE:        98            TYA                       
CODE_23E5FF:        9D 44 18      STA $1844,x               
CODE_23E602:        4C 0A E6      JMP CODE_23E60A           

CODE_23E605:        AC BA 18      LDY $18BA                 
CODE_23E608:        F0 0F         BEQ CODE_23E619           
CODE_23E60A:        A9 12         LDA #$12                  
CODE_23E60C:        9D B5 18      STA $18B5,x               
CODE_23E60F:        A9 02         LDA #$02                  
CODE_23E611:        8D 00 12      STA $1200                 
CODE_23E614:        A9 C8         LDA #$C8                  
CODE_23E616:        4C 37 E6      JMP CODE_23E637           

CODE_23E619:        B5 F6         LDA $F6,x                 
CODE_23E61B:        10 1D         BPL CODE_23E63A           
CODE_23E61D:        A9 01         LDA #$01                  
CODE_23E61F:        8D 01 12      STA $1201                 
CODE_23E622:        A9 01         LDA #$01                  
CODE_23E624:        9D F6 18      STA $18F6,x               
CODE_23E627:        BD 44 18      LDA $1844,x               
CODE_23E62A:        10 05         BPL CODE_23E631           
CODE_23E62C:        49 FF         EOR #$FF                  
CODE_23E62E:        18            CLC                       
CODE_23E62F:        69 01         ADC #$01                  
CODE_23E631:        4A            LSR A                     
CODE_23E632:        4A            LSR A                     
CODE_23E633:        A8            TAY                       
CODE_23E634:        B9 D9 EC      LDA.w DATA_21ECD9,y               
CODE_23E637:        9D 33 18      STA $1833,x               
CODE_23E63A:        B5 F2         LDA $F2,x                 
CODE_23E63C:        29 03         AND #$03                  
CODE_23E63E:        D0 16         BNE CODE_23E656           
CODE_23E640:        BD 44 18      LDA $1844,x               
CODE_23E643:        F0 11         BEQ CODE_23E656           
CODE_23E645:        10 09         BPL CODE_23E650           
CODE_23E647:        18            CLC                       
CODE_23E648:        69 01         ADC #$01                  
CODE_23E64A:        9D 44 18      STA $1844,x               
CODE_23E64D:        4C 56 E6      JMP CODE_23E656           

CODE_23E650:        38            SEC                       
CODE_23E651:        E9 01         SBC #$01                  
CODE_23E653:        9D 44 18      STA $1844,x               
CODE_23E656:        AC 26 1F      LDY $1F26                 
CODE_23E659:        B9 CD EC      LDA.w DATA_21ECCD,y               
CODE_23E65C:        F0 1B         BEQ CODE_23E679           
CODE_23E65E:        A9 01         LDA #$01                  
CODE_23E660:        BC 44 18      LDY $1844,x               
CODE_23E663:        10 01         BPL CODE_23E666           
CODE_23E665:        0A            ASL A                     
CODE_23E666:        3D 95 18      AND $1895,x               
CODE_23E669:        F0 0E         BEQ CODE_23E679           
CODE_23E66B:        35 F2         AND $F2,x                 
CODE_23E66D:        F0 04         BEQ CODE_23E673           
CODE_23E66F:        A8            TAY                       
CODE_23E670:        B9 CA EC      LDA.w DATA_21ECCA,y               
CODE_23E673:        9D 44 18      STA $1844,x               
CODE_23E676:        4C 7C E6      JMP CODE_23E67C           

CODE_23E679:        20 83 F9      JSR CODE_23F983           
CODE_23E67C:        BD B7 18      LDA $18B7,x               
CODE_23E67F:        F0 05         BEQ CODE_23E686           
CODE_23E681:        DE B7 18      DEC $18B7,x               
CODE_23E684:        D0 45         BNE CODE_23E6CB           
CODE_23E686:        BC 33 18      LDY $1833,x               
CODE_23E689:        10 22         BPL CODE_23E6AD           
CODE_23E68B:        BD 95 18      LDA $1895,x               
CODE_23E68E:        29 08         AND #$08                  
CODE_23E690:        F0 1B         BEQ CODE_23E6AD           
CODE_23E692:        98            TYA                       
CODE_23E693:        49 FF         EOR #$FF                  
CODE_23E695:        4A            LSR A                     
CODE_23E696:        4A            LSR A                     
CODE_23E697:        4A            LSR A                     
CODE_23E698:        69 04         ADC #$04                  
CODE_23E69A:        9D B7 18      STA $18B7,x               
CODE_23E69D:        A9 00         LDA #$00                  
CODE_23E69F:        9D 33 18      STA $1833,x               
CODE_23E6A2:        BD 11 18      LDA $1811,x               
CODE_23E6A5:        29 F0         AND #$F0                  
CODE_23E6A7:        18            CLC                       
CODE_23E6A8:        69 0E         ADC #$0E                  
CODE_23E6AA:        9D 11 18      STA $1811,x               
CODE_23E6AD:        20 8F F9      JSR CODE_23F98F           
CODE_23E6B0:        BD 33 18      LDA $1833,x               
CODE_23E6B3:        30 04         BMI CODE_23E6B9           
CODE_23E6B5:        C9 40         CMP #$40                  
CODE_23E6B7:        B0 12         BCS CODE_23E6CB                   
CODE_23E6B9:        BD 33 18      LDA $1833,x               
CODE_23E6BC:        10 04         BPL CODE_23E6C2           
CODE_23E6BE:        B4 F2         LDY $F2,x                 
CODE_23E6C0:        30 03         BMI CODE_23E6C5           
CODE_23E6C2:        18            CLC                       
CODE_23E6C3:        69 03         ADC #$03                  
CODE_23E6C5:        18            CLC                       
CODE_23E6C6:        69 02         ADC #$02                  
CODE_23E6C8:        9D 33 18      STA $1833,x               
CODE_23E6CB:        60            RTS                       

CODE_23E6CC:        AD 30 19      LDA $1930                 
CODE_23E6CF:        F0 24         BEQ CODE_23E6F5           
CODE_23E6D1:        8A            TXA                       
CODE_23E6D2:        4D 8C 07      EOR $078C                 
CODE_23E6D5:        29 01         AND #$01                  
CODE_23E6D7:        D0 1C         BNE CODE_23E6F5           
CODE_23E6D9:        BD 95 18      LDA $1895,x               
CODE_23E6DC:        89 04         BIT #$04                  
CODE_23E6DE:        F0 12         BEQ CODE_23E6F2           
CODE_23E6E0:        B5 8D         LDA $8D,x                 
CODE_23E6E2:        C9 98         CMP #$98                  
CODE_23E6E4:        F0 04         BEQ CODE_23E6EA           
CODE_23E6E6:        C9 58         CMP #$58                  
CODE_23E6E8:        D0 08         BNE CODE_23E6F2           
CODE_23E6EA:        A9 98         LDA #$98                  
CODE_23E6EC:        95 8D         STA $8D,x                 
CODE_23E6EE:        20 A1 EA      JSR CODE_23EAA1           
CODE_23E6F1:        60            RTS                       

CODE_23E6F2:        20 25 E5      JSR CODE_23E525           
CODE_23E6F5:        A0 58         LDY #$58                  
CODE_23E6F7:        BD 44 18      LDA $1844,x               
CODE_23E6FA:        D0 05         BNE CODE_23E701           
CODE_23E6FC:        9D 55 18      STA $1855,x               
CODE_23E6FF:        F0 47         BEQ CODE_23E748           
CODE_23E701:        A0 01         LDY #$01                  
CODE_23E703:        0A            ASL A                     
CODE_23E704:        90 01         BCC CODE_23E707           
CODE_23E706:        C8            INY                       
CODE_23E707:        98            TYA                       
CODE_23E708:        A0 68         LDY #$68                  
CODE_23E70A:        DD 64 18      CMP $1864,x               
CODE_23E70D:        D0 39         BNE CODE_23E748           
CODE_23E70F:        AD CB 18      LDA $18CB                 
CODE_23E712:        0D CC 18      ORA $18CC                 
CODE_23E715:        0D 30 19      ORA $1930                 
CODE_23E718:        D0 1A         BNE CODE_23E734           
CODE_23E71A:        BD 44 18      LDA $1844,x               
CODE_23E71D:        10 03         BPL CODE_23E722           
CODE_23E71F:        49 FF         EOR #$FF                  
CODE_23E721:        1A            INC A                     
CODE_23E722:        4A            LSR A                     
CODE_23E723:        4A            LSR A                     
CODE_23E724:        A8            TAY                       
CODE_23E725:        BD 9C 19      LDA $199C,x               
CODE_23E728:        18            CLC                       
CODE_23E729:        79 C3 EC      ADC.w DATA_21ECC3,y               
CODE_23E72C:        9D 9C 19      STA $199C,x               
CODE_23E72F:        90 03         BCC CODE_23E734           
CODE_23E731:        FE 9E 19      INC $199E,x               
CODE_23E734:        BD 9E 19      LDA $199E,x               
CODE_23E737:        A8            TAY                       
CODE_23E738:        98            TYA                       
CODE_23E739:        F0 07         BEQ CODE_23E742           
CODE_23E73B:        89 01         BIT #$01                  
CODE_23E73D:        D0 07         BNE CODE_23E746           
CODE_23E73F:        9E 9E 19      STZ $199E,x               
CODE_23E742:        A0 58         LDY #$58                  
CODE_23E744:        80 02         BRA CODE_23E748           

CODE_23E746:        A0 60         LDY #$60                  
CODE_23E748:        BD 95 18      LDA $1895,x               
CODE_23E74B:        29 04         AND #$04                  
CODE_23E74D:        D0 0F         BNE CODE_23E75E           
CODE_23E74F:        BD F6 18      LDA $18F6,x               
CODE_23E752:        D0 05         BNE CODE_23E759           
CODE_23E754:        A0 60         LDY #$60                  
CODE_23E756:        4C 76 E7      JMP CODE_23E776           

CODE_23E759:        A0 70         LDY #$70                  
CODE_23E75B:        4C 76 E7      JMP CODE_23E776           

CODE_23E75E:        BD B5 18      LDA $18B5,x               
CODE_23E761:        F0 07         BEQ CODE_23E76A           
CODE_23E763:        DE B5 18      DEC $18B5,x               
CODE_23E766:        A0 78         LDY #$78                  
CODE_23E768:        80 0C         BRA CODE_23E776           

CODE_23E76A:        BD B3 18      LDA $18B3,x               
CODE_23E76D:        F0 07         BEQ CODE_23E776           
CODE_23E76F:        DE B3 18      DEC $18B3,x               
CODE_23E772:        A0 80         LDY #$80                  
CODE_23E774:        80 00         BRA CODE_23E776           

CODE_23E776:        98            TYA                       
CODE_23E777:        95 8D         STA $8D,x                 
CODE_23E779:        C9 68         CMP #$68                  
CODE_23E77B:        D0 0A         BNE CODE_23E787           
CODE_23E77D:        AD 01 12      LDA $1201                 
CODE_23E780:        D0 05         BNE CODE_23E787           
CODE_23E782:        A9 04         LDA #$04                  
CODE_23E784:        8D 01 12      STA $1201                 
CODE_23E787:        20 A1 EA      JSR CODE_23EAA1           
CODE_23E78A:        20 64 E8      JSR CODE_23E864           
CODE_23E78D:        60            RTS                       

CODE_23E78E:        B5 F2         LDA $F2,x                 
CODE_23E790:        29 0C         AND #$0C                  
CODE_23E792:        F0 1C         BEQ CODE_23E7B0           
CODE_23E794:        3D 95 18      AND $1895,x               
CODE_23E797:        D0 17         BNE CODE_23E7B0           
CODE_23E799:        BD 22 18      LDA $1822,x               
CODE_23E79C:        29 0F         AND #$0F                  
CODE_23E79E:        F0 10         BEQ CODE_23E7B0           
CODE_23E7A0:        C9 08         CMP #$08                  
CODE_23E7A2:        A0 01         LDY #$01                  
CODE_23E7A4:        B0 02         BCS CODE_23E7A8                   
CODE_23E7A6:        A0 FF         LDY #$FF                  
CODE_23E7A8:        98            TYA                       
CODE_23E7A9:        18            CLC                       
CODE_23E7AA:        7D 22 18      ADC $1822,x               
CODE_23E7AD:        9D 22 18      STA $1822,x               
CODE_23E7B0:        B5 F2         LDA $F2,x                 
CODE_23E7B2:        29 0C         AND #$0C                  
CODE_23E7B4:        F0 30         BEQ CODE_23E7E6           
CODE_23E7B6:        85 00         STA $00                   
CODE_23E7B8:        3D 95 18      AND $1895,x               
CODE_23E7BB:        D0 49         BNE CODE_23E806           
CODE_23E7BD:        A5 00         LDA $00                   
CODE_23E7BF:        C9 08         CMP #$08                  
CODE_23E7C1:        D0 1D         BNE CODE_23E7E0           
CODE_23E7C3:        A9 C0         LDA #$C0                  
CODE_23E7C5:        DD 0F 19      CMP $190F,x               
CODE_23E7C8:        D0 3C         BNE CODE_23E806           
CODE_23E7CA:        DE 11 18      DEC $1811,x               
CODE_23E7CD:        20 64 E8      JSR CODE_23E864           
CODE_23E7D0:        BD 0F 19      LDA $190F,x               
CODE_23E7D3:        C9 C0         CMP #$C0                  
CODE_23E7D5:        F0 03         BEQ CODE_23E7DA           
CODE_23E7D7:        FE 11 18      INC $1811,x               
CODE_23E7DA:        FE 55 18      INC $1855,x               
CODE_23E7DD:        4C 16 E8      JMP CODE_23E816           

CODE_23E7E0:        FE 11 18      INC $1811,x               
CODE_23E7E3:        FE 55 18      INC $1855,x               
CODE_23E7E6:        B5 F2         LDA $F2,x                 
CODE_23E7E8:        29 03         AND #$03                  
CODE_23E7EA:        85 00         STA $00                   
CODE_23E7EC:        3D 95 18      AND $1895,x               
CODE_23E7EF:        D0 0E         BNE CODE_23E7FF           
CODE_23E7F1:        46 00         LSR $00                   
CODE_23E7F3:        90 03         BCC CODE_23E7F8           
CODE_23E7F5:        FE 22 18      INC $1822,x               
CODE_23E7F8:        46 00         LSR $00                   
CODE_23E7FA:        90 03         BCC CODE_23E7FF           
CODE_23E7FC:        DE 22 18      DEC $1822,x               
CODE_23E7FF:        BD 0F 19      LDA $190F,x               
CODE_23E802:        C9 C0         CMP #$C0                  
CODE_23E804:        F0 10         BEQ CODE_23E816           
CODE_23E806:        A9 01         LDA #$01                  
CODE_23E808:        9D 00 18      STA $1800,x               
CODE_23E80B:        A9 00         LDA #$00                  
CODE_23E80D:        9D 44 18      STA $1844,x               
CODE_23E810:        9D 33 18      STA $1833,x               
CODE_23E813:        9D F6 18      STA $18F6,x               
CODE_23E816:        A9 88         LDA #$88                  
CODE_23E818:        95 8D         STA $8D,x                 
CODE_23E81A:        20 64 E8      JSR CODE_23E864           
CODE_23E81D:        BD 55 18      LDA $1855,x               
CODE_23E820:        29 04         AND #$04                  
CODE_23E822:        4A            LSR A                     
CODE_23E823:        4A            LSR A                     
CODE_23E824:        69 01         ADC #$01                  
CODE_23E826:        9D 64 18      STA $1864,x               
CODE_23E829:        4C A1 EA      JMP CODE_23EAA1           

CODE_23E82C:        A9 90         LDA #$90                  
CODE_23E82E:        95 8D         STA $8D,x                 
CODE_23E830:        20 A1 EA      JSR CODE_23EAA1           
CODE_23E833:        BD E7 18      LDA $18E7,x               
CODE_23E836:        D0 2B         BNE CODE_23E863           
CODE_23E838:        20 8F F9      JSR CODE_23F98F           
CODE_23E83B:        BD 33 18      LDA $1833,x               
CODE_23E83E:        30 04         BMI CODE_23E844           
CODE_23E840:        C9 40         CMP #$40                  
CODE_23E842:        B0 06         BCS CODE_23E84A                   
CODE_23E844:        FE 33 18      INC $1833,x               
CODE_23E847:        FE 33 18      INC $1833,x               
CODE_23E84A:        BD 11 18      LDA $1811,x               
CODE_23E84D:        C9 EF         CMP #$EF                  
CODE_23E84F:        90 12         BCC CODE_23E863           
CODE_23E851:        BD 42 19      LDA $1942,x               
CODE_23E854:        D0 0D         BNE CODE_23E863           
CODE_23E856:        A9 40         LDA #$40                  
CODE_23E858:        9D E7 18      STA $18E7,x               
CODE_23E85B:        9D 0A 19      STA $190A,x               
CODE_23E85E:        A9 00         LDA #$00                  
CODE_23E860:        9D 00 18      STA $1800,x               
CODE_23E863:        60            RTS                       

CODE_23E864:        A9 00         LDA #$00                  
CODE_23E866:        9D 95 18      STA $1895,x               
CODE_23E869:        9D F8 18      STA $18F8,x               
CODE_23E86C:        9D 0F 19      STA $190F,x               
CODE_23E86F:        A0 05         LDY #$05                  
CODE_23E871:        84 0F         STY $0F                   
CODE_23E873:        BD 11 18      LDA $1811,x               
CODE_23E876:        18            CLC                       
CODE_23E877:        79 F3 EC      ADC.w DATA_21ECF3,y               
CODE_23E87A:        29 F0         AND #$F0                  
CODE_23E87C:        85 00         STA $00                   
CODE_23E87E:        E0 02         CPX #$02                  
CODE_23E880:        90 0C         BCC CODE_23E88E           
CODE_23E882:        BD B9 18      LDA $18B9,x               
CODE_23E885:        C9 0B         CMP #$0B                  
CODE_23E887:        D0 05         BNE CODE_23E88E           
CODE_23E889:        98            TYA                       
CODE_23E88A:        18            CLC                       
CODE_23E88B:        69 06         ADC #$06                  
CODE_23E88D:        A8            TAY                       
CODE_23E88E:        BD 22 18      LDA $1822,x               
CODE_23E891:        18            CLC                       
CODE_23E892:        79 E7 EC      ADC.w DATA_21ECE7,y               
CODE_23E895:        85 01         STA $01                   
CODE_23E897:        20 61 EA      JSR CODE_23EA61           
CODE_23E89A:        A4 0F         LDY $0F                   
CODE_23E89C:        B0 03         BCS CODE_23E8A1                   
CODE_23E89E:        4C E8 E9      JMP CODE_23E9E8           

CODE_23E8A1:        C0 02         CPY #$02                  
CODE_23E8A3:        B0 5B         BCS CODE_23E900                   
CODE_23E8A5:        BD 11 18      LDA $1811,x               
CODE_23E8A8:        C9 D0         CMP #$D0                  
CODE_23E8AA:        B0 51         BCS CODE_23E8FD                   
CODE_23E8AC:        29 0F         AND #$0F                  
CODE_23E8AE:        C9 09         CMP #$09                  
CODE_23E8B0:        B0 03         BCS CODE_23E8B5                   
CODE_23E8B2:        4C E8 E9      JMP CODE_23E9E8           

CODE_23E8B5:        E0 02         CPX #$02                  
CODE_23E8B7:        B0 44         BCS CODE_23E8FD                   
CODE_23E8B9:        BD 33 18      LDA $1833,x               
CODE_23E8BC:        10 3F         BPL CODE_23E8FD           
CODE_23E8BE:        BD 0F 18      LDA $180F,x               
CODE_23E8C1:        D0 3A         BNE CODE_23E8FD           
CODE_23E8C3:        AD 26 1F      LDA $1F26                 
CODE_23E8C6:        C9 0B         CMP #$0B                  
CODE_23E8C8:        F0 33         BEQ CODE_23E8FD           
CODE_23E8CA:        A9 00         LDA #$00                  
CODE_23E8CC:        85 2E         STA $2E                   
CODE_23E8CE:        A9 20         LDA #$20                  
CODE_23E8D0:        85 2F         STA $2F                   
CODE_23E8D2:        A9 7E         LDA #$7E                  
CODE_23E8D4:        85 30         STA $30                   
CODE_23E8D6:        A4 02         LDY $02                   
CODE_23E8D8:        A9 C2         LDA #$C2                  
CODE_23E8DA:        97 2E         STA [$2E],y               
CODE_23E8DC:        98            TYA                       
CODE_23E8DD:        9D 08 19      STA $1908,x               
CODE_23E8E0:        BD 11 18      LDA $1811,x               
CODE_23E8E3:        29 F0         AND #$F0                  
CODE_23E8E5:        9D 20 18      STA $1820,x               
CODE_23E8E8:        BD 22 18      LDA $1822,x               
CODE_23E8EB:        18            CLC                       
CODE_23E8EC:        69 08         ADC #$08                  
CODE_23E8EE:        29 F0         AND #$F0                  
CODE_23E8F0:        9D 31 18      STA $1831,x               
CODE_23E8F3:        A9 0E         LDA #$0E                  
CODE_23E8F5:        9D 0F 18      STA $180F,x               
CODE_23E8F8:        A9 E0         LDA #$E0                  
CODE_23E8FA:        9D 42 18      STA $1842,x               
CODE_23E8FD:        4C B3 E9      JMP CODE_23E9B3           

CODE_23E900:        C0 04         CPY #$04                  
CODE_23E902:        B0 7D         BCS CODE_23E981                   
CODE_23E904:        E0 02         CPX #$02                  
CODE_23E906:        B0 76         BCS CODE_23E97E                   
CODE_23E908:        C9 50         CMP #$50                  
CODE_23E90A:        F0 72         BEQ CODE_23E97E           
CODE_23E90C:        AD 26 1F      LDA $1F26                 
CODE_23E90F:        C9 0B         CMP #$0B                  
CODE_23E911:        D0 6B         BNE CODE_23E97E           
CODE_23E913:        B5 F6         LDA $F6,x                 
CODE_23E915:        29 40         AND #$40                  
CODE_23E917:        F0 65         BEQ CODE_23E97E           
CODE_23E919:        A9 0C         LDA #$0C                  
CODE_23E91B:        9D B3 18      STA $18B3,x               
CODE_23E91E:        A9 03         LDA #$03                  
CODE_23E920:        8D 00 12      STA $1200                 
CODE_23E923:        A9 00         LDA #$00                  
CODE_23E925:        85 2E         STA $2E                   
CODE_23E927:        A9 20         LDA #$20                  
CODE_23E929:        85 2F         STA $2F                   
CODE_23E92B:        A9 7E         LDA #$7E                  
CODE_23E92D:        85 30         STA $30                   
CODE_23E92F:        A4 02         LDY $02                   
CODE_23E931:        A9 00         LDA #$00                  
CODE_23E933:        97 2E         STA [$2E],y               
CODE_23E935:        20 0F EA      JSR CODE_23EA0F           
CODE_23E938:        A2 06         LDX #$06                  
CODE_23E93A:        BD 02 18      LDA $1802,x               
CODE_23E93D:        F0 05         BEQ CODE_23E944           
CODE_23E93F:        CA            DEX                       
CODE_23E940:        10 F8         BPL CODE_23E93A           
CODE_23E942:        A2 06         LDX #$06                  
CODE_23E944:        86 00         STX $00                   
CODE_23E946:        20 8D ED      JSR CODE_23ED8D           
CODE_23E949:        FE 02 18      INC $1802,x               
CODE_23E94C:        A9 0F         LDA #$0F                  
CODE_23E94E:        9D BB 18      STA $18BB,x               
CODE_23E951:        A5 02         LDA $02                   
CODE_23E953:        29 F0         AND #$F0                  
CODE_23E955:        9D 13 18      STA $1813,x               
CODE_23E958:        A5 02         LDA $02                   
CODE_23E95A:        0A            ASL A                     
CODE_23E95B:        0A            ASL A                     
CODE_23E95C:        0A            ASL A                     
CODE_23E95D:        0A            ASL A                     
CODE_23E95E:        9D 24 18      STA $1824,x               
CODE_23E961:        A9 C0         LDA #$C0                  
CODE_23E963:        9D 35 18      STA $1835,x               
CODE_23E966:        A0 10         LDY #$10                  
CODE_23E968:        BD 24 18      LDA $1824,x               
CODE_23E96B:        AE 0E 19      LDX $190E                 
CODE_23E96E:        DD 22 18      CMP $1822,x               
CODE_23E971:        B0 02         BCS CODE_23E975                   
CODE_23E973:        A0 F0         LDY #$F0                  
CODE_23E975:        A6 00         LDX $00                   
CODE_23E977:        98            TYA                       
CODE_23E978:        9D 46 18      STA $1846,x               
CODE_23E97B:        AE 0E 19      LDX $190E                 
CODE_23E97E:        4C B3 E9      JMP CODE_23E9B3           

CODE_23E981:        BD 11 18      LDA $1811,x               
CODE_23E984:        29 0F         AND #$0F                  
CODE_23E986:        C9 06         CMP #$06                  
CODE_23E988:        B0 5E         BCS CODE_23E9E8                   
CODE_23E98A:        BD 33 18      LDA $1833,x               
CODE_23E98D:        30 59         BMI CODE_23E9E8           
CODE_23E98F:        A4 02         LDY $02                   
CODE_23E991:        BD F8 18      LDA $18F8,x               
CODE_23E994:        C9 C2         CMP #$C2                  
CODE_23E996:        F0 1B         BEQ CODE_23E9B3           
CODE_23E998:        A9 00         LDA #$00                  
CODE_23E99A:        85 2E         STA $2E                   
CODE_23E99C:        A9 20         LDA #$20                  
CODE_23E99E:        85 2F         STA $2F                   
CODE_23E9A0:        A9 7E         LDA #$7E                  
CODE_23E9A2:        85 30         STA $30                   
CODE_23E9A4:        B7 2E         LDA [$2E],y               
CODE_23E9A6:        C9 FE         CMP #$FE                  
CODE_23E9A8:        90 06         BCC CODE_23E9B0           
CODE_23E9AA:        29 01         AND #$01                  
CODE_23E9AC:        A8            TAY                       
CODE_23E9AD:        B9 57 EC      LDA.w DATA_21EC57,y               
CODE_23E9B0:        9D F8 18      STA $18F8,x               
CODE_23E9B3:        A4 0F         LDY $0F                   
CODE_23E9B5:        BD 95 18      LDA $1895,x               
CODE_23E9B8:        19 FF EC      ORA.w DATA_21ECFF,y               
CODE_23E9BB:        9D 95 18      STA $1895,x               
CODE_23E9BE:        E0 02         CPX #$02                  
CODE_23E9C0:        90 07         BCC CODE_23E9C9           
CODE_23E9C2:        BD B9 18      LDA $18B9,x               
CODE_23E9C5:        C9 01         CMP #$01                  
CODE_23E9C7:        F0 16         BEQ CODE_23E9DF           
CODE_23E9C9:        A4 02         LDY $02                   
CODE_23E9CB:        A9 00         LDA #$00                  
CODE_23E9CD:        85 2E         STA $2E                   
CODE_23E9CF:        A9 20         LDA #$20                  
CODE_23E9D1:        85 2F         STA $2F                   
CODE_23E9D3:        A9 7E         LDA #$7E                  
CODE_23E9D5:        85 30         STA $30                   
CODE_23E9D7:        B7 2E         LDA [$2E],y               
CODE_23E9D9:        A4 0F         LDY $0F                   
CODE_23E9DB:        C9 C2         CMP #$C2                  
CODE_23E9DD:        D0 09         BNE CODE_23E9E8           
CODE_23E9DF:        BD 95 18      LDA $1895,x               
CODE_23E9E2:        19 05 ED      ORA.w DATA_21ED05,y               
CODE_23E9E5:        9D 95 18      STA $1895,x               
CODE_23E9E8:        C0 02         CPY #$02                  
CODE_23E9EA:        B0 1A         BCS CODE_23EA06                   
CODE_23E9EC:        A4 02         LDY $02                   
CODE_23E9EE:        BD 0F 19      LDA $190F,x               
CODE_23E9F1:        C9 C0         CMP #$C0                  
CODE_23E9F3:        F0 11         BEQ CODE_23EA06           
CODE_23E9F5:        A9 00         LDA #$00                  
CODE_23E9F7:        85 2E         STA $2E                   
CODE_23E9F9:        A9 20         LDA #$20                  
CODE_23E9FB:        85 2F         STA $2F                   
CODE_23E9FD:        A9 7E         LDA #$7E                  
CODE_23E9FF:        85 30         STA $30                   
CODE_23EA01:        B7 2E         LDA [$2E],y               
CODE_23EA03:        9D 0F 19      STA $190F,x               
CODE_23EA06:        A4 0F         LDY $0F                   
CODE_23EA08:        88            DEY                       
CODE_23EA09:        30 03         BMI CODE_23EA0E           
CODE_23EA0B:        4C 71 E8      JMP CODE_23E871           

CODE_23EA0E:        60            RTS                       

CODE_23EA0F:        AC 00 16      LDY $1600                 
CODE_23EA12:        A9 08         LDA #$08                  
CODE_23EA14:        85 03         STA $03                   
CODE_23EA16:        A5 02         LDA $02                   
CODE_23EA18:        29 F0         AND #$F0                  
CODE_23EA1A:        0A            ASL A                     
CODE_23EA1B:        26 03         ROL $03                   
CODE_23EA1D:        0A            ASL A                     
CODE_23EA1E:        26 03         ROL $03                   
CODE_23EA20:        85 04         STA $04                   
CODE_23EA22:        A5 02         LDA $02                   
CODE_23EA24:        0A            ASL A                     
CODE_23EA25:        29 1F         AND #$1F                  
CODE_23EA27:        18            CLC                       
CODE_23EA28:        65 04         ADC $04                   
CODE_23EA2A:        99 03 16      STA $1603,y               
CODE_23EA2D:        18            CLC                       
CODE_23EA2E:        69 20         ADC #$20                  
CODE_23EA30:        99 09 16      STA $1609,y               
CODE_23EA33:        A5 03         LDA $03                   
CODE_23EA35:        29 DF         AND #$DF                  
CODE_23EA37:        99 02 16      STA $1602,y               
CODE_23EA3A:        99 08 16      STA $1608,y               
CODE_23EA3D:        C2 20         REP #$20                  
CODE_23EA3F:        A9 40 02      LDA #$0240                
CODE_23EA42:        99 04 16      STA $1604,y               
CODE_23EA45:        99 0A 16      STA $160A,y               
CODE_23EA48:        A9 FF 1C      LDA #$1CFF                
CODE_23EA4B:        99 06 16      STA $1606,y               
CODE_23EA4E:        99 0C 16      STA $160C,y               
CODE_23EA51:        A9 FF FF      LDA #$FFFF                
CODE_23EA54:        99 0E 16      STA $160E,y               
CODE_23EA57:        E2 20         SEP #$20                  
CODE_23EA59:        98            TYA                       
CODE_23EA5A:        18            CLC                       
CODE_23EA5B:        69 0C         ADC #$0C                  
CODE_23EA5D:        8D 00 16      STA $1600                 
CODE_23EA60:        60            RTS                       

CODE_23EA61:        A5 01         LDA $01                   
CODE_23EA63:        4A            LSR A                     
CODE_23EA64:        4A            LSR A                     
CODE_23EA65:        4A            LSR A                     
CODE_23EA66:        4A            LSR A                     
CODE_23EA67:        05 00         ORA $00                   
CODE_23EA69:        A8            TAY                       
CODE_23EA6A:        84 02         STY $02                   
CODE_23EA6C:        A9 00         LDA #$00                  
CODE_23EA6E:        85 2E         STA $2E                   
CODE_23EA70:        A9 20         LDA #$20                  
CODE_23EA72:        85 2F         STA $2F                   
CODE_23EA74:        A9 7E         LDA #$7E                  
CODE_23EA76:        85 30         STA $30                   
CODE_23EA78:        B7 2E         LDA [$2E],y               
CODE_23EA7A:        C9 FE         CMP #$FE                  
CODE_23EA7C:        90 06         BCC CODE_23EA84           
CODE_23EA7E:        29 01         AND #$01                  
CODE_23EA80:        A8            TAY                       
CODE_23EA81:        B9 57 EC      LDA.w DATA_21EC57,y               
CODE_23EA84:        48            PHA                       
CODE_23EA85:        0A            ASL A                     
CODE_23EA86:        26 0E         ROL $0E                   
CODE_23EA88:        0A            ASL A                     
CODE_23EA89:        26 0E         ROL $0E                   
CODE_23EA8B:        A5 0E         LDA $0E                   
CODE_23EA8D:        29 03         AND #$03                  
CODE_23EA8F:        A8            TAY                       
CODE_23EA90:        68            PLA                       
CODE_23EA91:        D9 9A 1E      CMP $1E9A,y               
CODE_23EA94:        60            RTS                       

CODE_23EA95:        8A            TXA                       
CODE_23EA96:        18            CLC                       
CODE_23EA97:        69 02         ADC #$02                  
CODE_23EA99:        AA            TAX                       
CODE_23EA9A:        20 64 E8      JSR CODE_23E864           
CODE_23EA9D:        AE 0E 19      LDX $190E                 
CODE_23EAA0:        60            RTS                       

CODE_23EAA1:        BD 42 19      LDA $1942,x               
CODE_23EAA4:        10 08         BPL CODE_23EAAE           
CODE_23EAA6:        BD 11 18      LDA $1811,x               
CODE_23EAA9:        C9 F0         CMP #$F0                  
CODE_23EAAB:        B0 04         BCS CODE_23EAB1                   
CODE_23EAAD:        60            RTS                       

CODE_23EAAE:        F0 01         BEQ CODE_23EAB1           
CODE_23EAB0:        60            RTS                       

CODE_23EAB1:        BD 0A 19      LDA $190A,x               
CODE_23EAB4:        F0 07         BEQ CODE_23EABD           
CODE_23EAB6:        A5 15         LDA $15                   
CODE_23EAB8:        29 02         AND #$02                  
CODE_23EABA:        F0 01         BEQ CODE_23EABD           
CODE_23EABC:        60            RTS                       

CODE_23EABD:        8A            TXA                       
CODE_23EABE:        0A            ASL A                     
CODE_23EABF:        0A            ASL A                     
CODE_23EAC0:        0A            ASL A                     
CODE_23EAC1:        0A            ASL A                     
CODE_23EAC2:        0A            ASL A                     
CODE_23EAC3:        A8            TAY                       
CODE_23EAC4:        BD 22 18      LDA $1822,x               
CODE_23EAC7:        99 80 08      STA $0880,y               
CODE_23EACA:        BD 11 18      LDA $1811,x               
CODE_23EACD:        99 81 08      STA $0881,y               
CODE_23EAD0:        A9 0E         LDA #$0E                  
CODE_23EAD2:        85 0A         STA $0A                   
CODE_23EAD4:        AD 0E 19      LDA $190E                 
CODE_23EAD7:        F0 04         BEQ CODE_23EADD           
CODE_23EAD9:        A9 0A         LDA #$0A                  
CODE_23EADB:        85 0A         STA $0A                   
CODE_23EADD:        BD 64 18      LDA $1864,x               
CODE_23EAE0:        AA            TAX                       
CODE_23EAE1:        BD 16 ED      LDA.w DATA_21ED15+1,x               
CODE_23EAE4:        05 0A         ORA $0A                   
CODE_23EAE6:        99 83 08      STA $0883,y               
CODE_23EAE9:        AE 0E 19      LDX $190E                 
CODE_23EAEC:        BD 00 18      LDA $1800,x               
CODE_23EAEF:        C9 02         CMP #$02                  
CODE_23EAF1:        F0 07         BEQ CODE_23EAFA           
CODE_23EAF3:        BD 64 18      LDA $1864,x               
CODE_23EAF6:        89 01         BIT #$01                  
CODE_23EAF8:        D0 08         BNE CODE_23EB02           
CODE_23EAFA:        B9 83 08      LDA $0883,y               
CODE_23EAFD:        29 BF         AND #$BF                  
CODE_23EAFF:        99 83 08      STA $0883,y               
CODE_23EB02:        BD 00 18      LDA $1800,x               
CODE_23EB05:        C9 02         CMP #$02                  
CODE_23EB07:        F0 31         BEQ CODE_23EB3A           
CODE_23EB09:        BD 64 18      LDA $1864,x               
CODE_23EB0C:        89 01         BIT #$01                  
CODE_23EB0E:        F0 2A         BEQ CODE_23EB3A           
CODE_23EB10:        AD 30 19      LDA $1930                 
CODE_23EB13:        F0 18         BEQ CODE_23EB2D           
CODE_23EB15:        8A            TXA                       
CODE_23EB16:        4D 8C 07      EOR $078C                 
CODE_23EB19:        29 01         AND #$01                  
CODE_23EB1B:        D0 10         BNE CODE_23EB2D           
CODE_23EB1D:        B5 8D         LDA $8D,x                 
CODE_23EB1F:        C9 98         CMP #$98                  
CODE_23EB21:        D0 0A         BNE CODE_23EB2D           
CODE_23EB23:        B9 83 08      LDA $0883,y               
CODE_23EB26:        29 BF         AND #$BF                  
CODE_23EB28:        99 83 08      STA $0883,y               
CODE_23EB2B:        80 0D         BRA CODE_23EB3A           

CODE_23EB2D:        B9 80 08      LDA $0880,y               
CODE_23EB30:        18            CLC                       
CODE_23EB31:        69 08         ADC #$08                  
CODE_23EB33:        99 80 08      STA $0880,y               
CODE_23EB36:        A9 F8         LDA #$F8                  
CODE_23EB38:        80 02         BRA CODE_23EB3C           

CODE_23EB3A:        A9 08         LDA #$08                  
CODE_23EB3C:        8D 00 00      STA $0000                 
CODE_23EB3F:        A9 04         LDA #$04                  
CODE_23EB41:        99 82 08      STA $0882,y               
CODE_23EB44:        E0 00         CPX #$00                  
CODE_23EB46:        F0 05         BEQ CODE_23EB4D           
CODE_23EB48:        A9 14         LDA #$14                  
CODE_23EB4A:        99 82 08      STA $0882,y               
CODE_23EB4D:        B9 80 08      LDA $0880,y               
CODE_23EB50:        99 88 08      STA $0888,y               
CODE_23EB53:        18            CLC                       
CODE_23EB54:        6D 00 00      ADC $0000                 
CODE_23EB57:        99 84 08      STA $0884,y               
CODE_23EB5A:        99 8C 08      STA $088C,y               
CODE_23EB5D:        B9 81 08      LDA $0881,y               
CODE_23EB60:        99 85 08      STA $0885,y               
CODE_23EB63:        18            CLC                       
CODE_23EB64:        69 08         ADC #$08                  
CODE_23EB66:        99 89 08      STA $0889,y               
CODE_23EB69:        99 8D 08      STA $088D,y               
CODE_23EB6C:        B9 82 08      LDA $0882,y               
CODE_23EB6F:        1A            INC A                     
CODE_23EB70:        99 86 08      STA $0886,y               
CODE_23EB73:        1A            INC A                     
CODE_23EB74:        99 8A 08      STA $088A,y               
CODE_23EB77:        1A            INC A                     
CODE_23EB78:        99 8E 08      STA $088E,y               
CODE_23EB7B:        B9 83 08      LDA $0883,y               
CODE_23EB7E:        99 87 08      STA $0887,y               
CODE_23EB81:        99 8B 08      STA $088B,y               
CODE_23EB84:        99 8F 08      STA $088F,y               
CODE_23EB87:        85 00         STA $00                   
CODE_23EB89:        BD 22 18      LDA $1822,x               
CODE_23EB8C:        C9 F1         CMP #$F1                  
CODE_23EB8E:        90 3A         BCC CODE_23EBCA           
CODE_23EB90:        5A            PHY                       
CODE_23EB91:        A9 08         LDA #$08                  
CODE_23EB93:        85 00         STA $00                   
CODE_23EB95:        B9 80 08      LDA $0880,y               
CODE_23EB98:        99 C0 08      STA $08C0,y               
CODE_23EB9B:        B9 81 08      LDA $0881,y               
CODE_23EB9E:        99 C1 08      STA $08C1,y               
CODE_23EBA1:        B9 82 08      LDA $0882,y               
CODE_23EBA4:        99 C2 08      STA $08C2,y               
CODE_23EBA7:        B9 83 08      LDA $0883,y               
CODE_23EBAA:        99 C3 08      STA $08C3,y               
CODE_23EBAD:        98            TYA                       
CODE_23EBAE:        18            CLC                       
CODE_23EBAF:        69 04         ADC #$04                  
CODE_23EBB1:        A8            TAY                       
CODE_23EBB2:        C6 00         DEC $00                   
CODE_23EBB4:        D0 DF         BNE CODE_23EB95           
CODE_23EBB6:        68            PLA                       
CODE_23EBB7:        4A            LSR A                     
CODE_23EBB8:        4A            LSR A                     
CODE_23EBB9:        A8            TAY                       
CODE_23EBBA:        A9 01         LDA #$01                  
CODE_23EBBC:        99 50 0A      STA $0A50,y               
CODE_23EBBF:        99 52 0A      STA $0A52,y               
CODE_23EBC2:        99 51 0A      STA $0A51,y               
CODE_23EBC5:        99 53 0A      STA $0A53,y               
CODE_23EBC8:        80 04         BRA CODE_23EBCE           

CODE_23EBCA:        98            TYA                       
CODE_23EBCB:        4A            LSR A                     
CODE_23EBCC:        4A            LSR A                     
CODE_23EBCD:        A8            TAY                       
CODE_23EBCE:        A9 00         LDA #$00                  
CODE_23EBD0:        99 40 0A      STA $0A40,y               
CODE_23EBD3:        99 41 0A      STA $0A41,y               
CODE_23EBD6:        99 42 0A      STA $0A42,y               
CODE_23EBD9:        99 43 0A      STA $0A43,y               
CODE_23EBDC:        60            RTS                       

CODE_23EBDD:        AD 00 18      LDA $1800                 
CODE_23EBE0:        C9 02         CMP #$02                  
CODE_23EBE2:        F0 32         BEQ CODE_23EC16           
CODE_23EBE4:        AD 01 18      LDA $1801                 
CODE_23EBE7:        C9 02         CMP #$02                  
CODE_23EBE9:        F0 2B         BEQ CODE_23EC16           
CODE_23EBEB:        AD B9 18      LDA $18B9                 
CODE_23EBEE:        D0 23         BNE CODE_23EC13           
CODE_23EBF0:        A2 01         LDX #$01                  
CODE_23EBF2:        A0 04         LDY #$04                  
CODE_23EBF4:        20 AC EC      JSR CODE_23ECAC           
CODE_23EBF7:        88            DEY                       
CODE_23EBF8:        88            DEY                       
CODE_23EBF9:        88            DEY                       
CODE_23EBFA:        88            DEY                       
CODE_23EBFB:        CA            DEX                       
CODE_23EBFC:        10 F6         BPL CODE_23EBF4           
CODE_23EBFE:        20 C9 EC      JSR CODE_23ECC9           
CODE_23EC01:        90 13         BCC CODE_23EC16           
CODE_23EC03:        A9 01         LDA #$01                  
CODE_23EC05:        8D 00 18      STA $1800                 
CODE_23EC08:        8D 01 18      STA $1801                 
CODE_23EC0B:        A9 08         LDA #$08                  
CODE_23EC0D:        8D B9 18      STA $18B9                 
CODE_23EC10:        4C 17 EC      JMP CODE_23EC17           

CODE_23EC13:        CE B9 18      DEC $18B9                 
CODE_23EC16:        60            RTS
                       
CODE_23EC17:        AD 11 18      LDA $1811                 
CODE_23EC1A:        38            SEC                       
CODE_23EC1B:        ED 12 18      SBC $1812                 
CODE_23EC1E:        08            PHP                       
CODE_23EC1F:        10 05         BPL CODE_23EC26           
CODE_23EC21:        49 FF         EOR #$FF                  
CODE_23EC23:        18            CLC                       
CODE_23EC24:        69 01         ADC #$01                  
CODE_23EC26:        C9 08         CMP #$08                  
CODE_23EC28:        90 49         BCC CODE_23EC73           
CODE_23EC2A:        A0 00         LDY #$00                  
CODE_23EC2C:        28            PLP                       
CODE_23EC2D:        90 01         BCC CODE_23EC30           
CODE_23EC2F:        C8            INY                       
CODE_23EC30:        B9 1D ED      LDA.w DATA_21ED1D,y               
CODE_23EC33:        2D 33 18      AND $1833                 
CODE_23EC36:        30 19         BMI CODE_23EC51           
CODE_23EC38:        B9 1D ED      LDA.w DATA_21ED1D,y               
CODE_23EC3B:        8D 33 18      STA $1833                 
CODE_23EC3E:        AD 95 18      LDA $1895                 
CODE_23EC41:        29 04         AND #$04                  
CODE_23EC43:        F0 0C         BEQ CODE_23EC51           
CODE_23EC45:        B9 20 ED      LDA.w DATA_21ED20,y               
CODE_23EC48:        8D B5 18      STA $18B5                 
CODE_23EC4B:        B9 23 ED      LDA.w DATA_21ED23,y               
CODE_23EC4E:        8D 00 12      STA $1200                 
CODE_23EC51:        B9 1E ED      LDA.w DATA_21ED1E,y               
CODE_23EC54:        2D 34 18      AND $1834                 
CODE_23EC57:        30 19         BMI CODE_23EC72           
CODE_23EC59:        B9 1E ED      LDA.w DATA_21ED1E,y               
CODE_23EC5C:        8D 34 18      STA $1834                 
CODE_23EC5F:        AD 96 18      LDA $1896                 
CODE_23EC62:        29 04         AND #$04                  
CODE_23EC64:        F0 0C         BEQ CODE_23EC72           
CODE_23EC66:        B9 21 ED      LDA.w DATA_21ED21,y               
CODE_23EC69:        8D B6 18      STA $18B6                 
CODE_23EC6C:        B9 24 ED      LDA.w DATA_21ED24,y               
CODE_23EC6F:        8D 00 12      STA $1200                 
CODE_23EC72:        60            RTS                       

CODE_23EC73:        28            PLP                       
CODE_23EC74:        A0 00         LDY #$00                  
CODE_23EC76:        AD 22 18      LDA $1822                 
CODE_23EC79:        CD 23 18      CMP $1823                 
CODE_23EC7C:        B0 01         BCS CODE_23EC7F                   
CODE_23EC7E:        C8            INY                       
CODE_23EC7F:        4D 23 18      EOR $1823                 
CODE_23EC82:        10 0D         BPL CODE_23EC91           
CODE_23EC84:        A9 EF         LDA #$EF                  
CODE_23EC86:        CD 22 18      CMP $1822                 
CODE_23EC89:        90 05         BCC CODE_23EC90           
CODE_23EC8B:        CD 23 18      CMP $1823                 
CODE_23EC8E:        B0 01         BCS CODE_23EC91                 
CODE_23EC90:        C8            INY                       
CODE_23EC91:        B9 19 ED      LDA.w DATA_21ED19,y               
CODE_23EC94:        8D 44 18      STA $1844                 
CODE_23EC97:        B9 1A ED      LDA.w DATA_21ED19+1,y               
CODE_23EC9A:        8D 45 18      STA $1845                 
CODE_23EC9D:        98            TYA                       
CODE_23EC9E:        29 01         AND #$01                  
CODE_23ECA0:        18            CLC                       
CODE_23ECA1:        69 01         ADC #$01                  
CODE_23ECA3:        8D 65 18      STA $1865                 
CODE_23ECA6:        49 03         EOR #$03                  
CODE_23ECA8:        8D 64 18      STA $1864                 
CODE_23ECAB:        60            RTS                       

CODE_23ECAC:        BD 11 18      LDA $1811,x               
CODE_23ECAF:        18            CLC                       
CODE_23ECB0:        69 02         ADC #$02                  
CODE_23ECB2:        99 00 00      STA $0000,y               
CODE_23ECB5:        A9 0E         LDA #$0E                  
CODE_23ECB7:        99 02 00      STA $0002,y               
CODE_23ECBA:        BD 22 18      LDA $1822,x               
CODE_23ECBD:        18            CLC                       
CODE_23ECBE:        69 04         ADC #$04                  
CODE_23ECC0:        99 01 00      STA $0001,y               
CODE_23ECC3:        A9 08         LDA #$08                  
CODE_23ECC5:        99 03 00      STA $0003,y               
CODE_23ECC8:        60            RTS                       

CODE_23ECC9:        8A            TXA                       
CODE_23ECCA:        48            PHA                       
CODE_23ECCB:        A2 01         LDX #$01                  
CODE_23ECCD:        B5 04         LDA $04,x                 
CODE_23ECCF:        38            SEC                       
CODE_23ECD0:        F5 00         SBC $00,x                 
CODE_23ECD2:        18            CLC                       
CODE_23ECD3:        75 06         ADC $06,x                 
CODE_23ECD5:        85 08         STA $08                   
CODE_23ECD7:        B5 02         LDA $02,x                 
CODE_23ECD9:        18            CLC                       
CODE_23ECDA:        75 06         ADC $06,x                 
CODE_23ECDC:        C5 08         CMP $08                   
CODE_23ECDE:        90 03         BCC CODE_23ECE3           
CODE_23ECE0:        CA            DEX                       
CODE_23ECE1:        10 EA         BPL CODE_23ECCD           
CODE_23ECE3:        68            PLA                       
CODE_23ECE4:        AA            TAX                       
CODE_23ECE5:        60            RTS                       

DATA_23ECE6:        db $00,$00,$00,$00,$00,$01,$01,$01
                    db $01,$01,$00,$01,$00,$01,$00,$00
                    db $02,$00,$02,$00,$01,$02,$01,$02
                    db $01,$02,$02,$02,$02,$02    

CODE_23ED04:        AD CB 18      LDA $18CB                 
CODE_23ED07:        0D CC 18      ORA $18CC                 
CODE_23ED0A:        0D 30 19      ORA $1930                 
CODE_23ED0D:        D0 1D         BNE CODE_23ED2C           
CODE_23ED0F:        E6 A9         INC $A9                   
CODE_23ED11:        A5 A9         LDA $A9                   
CODE_23ED13:        29 1F         AND #$1F                  
CODE_23ED15:        D0 16         BNE CODE_23ED2D           
CODE_23ED17:        EE 0D 19      INC $190D                 
CODE_23ED1A:        D0 11         BNE CODE_23ED2D           
CODE_23ED1C:        20 3D ED      JSR CODE_23ED3D           
CODE_23ED1F:        8A            TXA                       
CODE_23ED20:        30 0B         BMI CODE_23ED2D           
CODE_23ED22:        A9 10         LDA #$10                  
CODE_23ED24:        9D 35 18      STA $1835,x               
CODE_23ED27:        A9 05         LDA #$05                  
CODE_23ED29:        9D BB 18      STA $18BB,x               
CODE_23ED2C:        60            RTS                       

CODE_23ED2D:        A5 A9         LDA $A9                   
CODE_23ED2F:        C9 80         CMP #$80                  
CODE_23ED31:        D0 7E         BNE CODE_23EDB1           
CODE_23ED33:        EE 0C 19      INC $190C                 
CODE_23ED36:        AD 0C 19      LDA $190C                 
CODE_23ED39:        29 07         AND #$07                  
CODE_23ED3B:        D0 74         BNE CODE_23EDB1           
CODE_23ED3D:        A2 06         LDX #$06                  
CODE_23ED3F:        20 04 EE      JSR CODE_23EE04           
CODE_23ED42:        8A            TXA                       
CODE_23ED43:        30 6B         BMI CODE_23EDB0           
CODE_23ED45:        CE CA 18      DEC $18CA                 
CODE_23ED48:        E0 05         CPX #$05                  
CODE_23ED4A:        B0 03         BCS CODE_23ED4F                   
CODE_23ED4C:        4C B3 F6      JMP CODE_23F6B3           

CODE_23ED4F:        AD 0C 19      LDA $190C                 
CODE_23ED52:        4A            LSR A                     
CODE_23ED53:        29 01         AND #$01                  
CODE_23ED55:        A8            TAY                       
CODE_23ED56:        B9 3C ED      LDA.w DATA_21ED3C,y               
CODE_23ED59:        9D 46 18      STA $1846,x               
CODE_23ED5C:        B9 3A ED      LDA.w DATA_21ED3A,y               
CODE_23ED5F:        9D 24 18      STA $1824,x               
CODE_23ED62:        22 05 F8 25   JSL CODE_25F805           
CODE_23ED66:        AD 2D 19      LDA $192D                 
CODE_23ED69:        29 01         AND #$01                  
CODE_23ED6B:        A8            TAY                       
CODE_23ED6C:        B9 11 18      LDA $1811,y               
CODE_23ED6F:        9D 13 18      STA $1813,x               
CODE_23ED72:        A9 04         LDA #$04                  
CODE_23ED74:        9D BB 18      STA $18BB,x               
CODE_23ED77:        A9 00         LDA #$00                  
CODE_23ED79:        9D 35 18      STA $1835,x               
CODE_23ED7C:        9D A6 18      STA $18A6,x               
CODE_23ED7F:        20 8D ED      JSR CODE_23ED8D           
CODE_23ED82:        A9 20         LDA #$20                  
CODE_23ED84:        9D E9 18      STA $18E9,x               
CODE_23ED87:        A9 17         LDA #$17                  
CODE_23ED89:        8D 03 12      STA $1203                 
CODE_23ED8C:        60            RTS                       

CODE_23ED8D:        A9 00         LDA #$00                  
CODE_23ED8F:        9D 44 19      STA $1944,x               
CODE_23ED92:        9D A6 18      STA $18A6,x               
CODE_23ED95:        9D FA 18      STA $18FA,x               
CODE_23ED98:        9D 31 19      STA $1931,x               
CODE_23ED9B:        9D 53 19      STA $1953,x               
CODE_23ED9E:        9D 1E 19      STA $191E,x               
CODE_23EDA1:        9D CD 18      STA $18CD,x               
CODE_23EDA4:        9D DA 18      STA $18DA,x               
CODE_23EDA7:        9D 7C 19      STA $197C,x               
CODE_23EDAA:        9D E9 18      STA $18E9,x               
CODE_23EDAD:        9D 6F 19      STA $196F,x               
CODE_23EDB0:        60            RTS                       

CODE_23EDB1:        AD CA 18      LDA $18CA                 
CODE_23EDB4:        C9 05         CMP #$05                  
CODE_23EDB6:        F0 F8         BEQ CODE_23EDB0           
CODE_23EDB8:        A5 A9         LDA $A9                   
CODE_23EDBA:        29 FF         AND #$FF                  
CODE_23EDBC:        D0 F2         BNE CODE_23EDB0           
CODE_23EDBE:        DA            PHX                       
CODE_23EDBF:        AD 9A 19      LDA $199A                 
CODE_23EDC2:        0A            ASL A                     
CODE_23EDC3:        0A            ASL A                     
CODE_23EDC4:        6D 9A 19      ADC $199A                 
CODE_23EDC7:        6D CA 18      ADC $18CA                 
CODE_23EDCA:        AA            TAX                       
CODE_23EDCB:        BF E6 EC 23   LDA.l DATA_23ECE6,x             
CODE_23EDCF:        FA            PLX                       
CODE_23EDD0:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

DATA_23EDD4:        dw CODE_23EE02
                    dw CODE_23EDF6
                    dw CODE_23EDDA

CODE_23EDDA:        20 02 EE      JSR CODE_23EE02
CODE_23EDDD:        8A            TXA
CODE_23EDDE:        30 15         BMI CODE_23EDF5
CODE_23EDE0:        A9 02         LDA #$02                  
CODE_23EDE2:        9D BB 18      STA $18BB,x           
CODE_23EDE5:        AD 60 19      LDA $1960                 
CODE_23EDE8:        F0 0B         BEQ CODE_23EDF5           
CODE_23EDEA:        CE 60 19      DEC $1960                 
CODE_23EDED:        A9 01         LDA #$01                  
CODE_23EDEF:        9D 53 19      STA $1953,x               
CODE_23EDF2:        20 2C EE      JSR CODE_23EE2C           
CODE_23EDF5:        60            RTS                       

CODE_23EDF6:        20 02 EE      JSR CODE_23EE02           
CODE_23EDF9:        8A            TXA                       
CODE_23EDFA:        30 05         BMI CODE_23EE01           
CODE_23EDFC:        A9 03         LDA #$03                  
CODE_23EDFE:        9D BB 18      STA $18BB,x               
CODE_23EE01:        60            RTS                       

CODE_23EE02:        A2 04         LDX #$04                  
CODE_23EE04:        BD 02 18      LDA $1802,x               
CODE_23EE07:        F0 04         BEQ CODE_23EE0D           
CODE_23EE09:        CA            DEX                       
CODE_23EE0A:        10 F8         BPL CODE_23EE04           
CODE_23EE0C:        60            RTS                       

CODE_23EE0D:        EE CA 18      INC $18CA                 
CODE_23EE10:        A9 01         LDA #$01                  
CODE_23EE12:        9D 02 18      STA $1802,x               
CODE_23EE15:        A9 20         LDA #$20                  
CODE_23EE17:        9D 13 18      STA $1813,x               
CODE_23EE1A:        A9 00         LDA #$00                  
CODE_23EE1C:        9D 35 18      STA $1835,x               
CODE_23EE1F:        A9 00         LDA #$00                  
CODE_23EE21:        9D BB 18      STA $18BB,x               
CODE_23EE24:        20 8D ED      JSR CODE_23ED8D           
CODE_23EE27:        A9 30         LDA #$30                  
CODE_23EE29:        9D 1E 19      STA $191E,x               
CODE_23EE2C:        AD CA 18      LDA $18CA                 
CODE_23EE2F:        29 01         AND #$01                  
CODE_23EE31:        A8            TAY                       
CODE_23EE32:        B9 32 ED      LDA.w DATA_21ED32,y               
CODE_23EE35:        9D 24 18      STA $1824,x               
CODE_23EE38:        AD CA 18      LDA $18CA                 
CODE_23EE3B:        C9 05         CMP #$05                  
CODE_23EE3D:        D0 0B         BNE CODE_23EE4A           
CODE_23EE3F:        AD A0 19      LDA $19A0                 
CODE_23EE42:        F0 06         BEQ CODE_23EE4A           
CODE_23EE44:        9D 31 19      STA $1931,x               
CODE_23EE47:        C8            INY                       
CODE_23EE48:        C8            INY                       
CODE_23EE49:        C8            INY                       
CODE_23EE4A:        B9 34 ED      LDA.w DATA_21ED34,y               
CODE_23EE4D:        9D 46 18      STA $1846,x               
CODE_23EE50:        60            RTS
                       
CODE_23EE51:        CE C9 18      DEC $18C9                 
CODE_23EE54:        10 05         BPL CODE_23EE5B           
CODE_23EE56:        A9 0D         LDA #$0D                  
CODE_23EE58:        8D C9 18      STA $18C9                 
CODE_23EE5B:        A2 0B         LDX #$0B                  
CODE_23EE5D:        8E 0E 19      STX $190E                 
CODE_23EE60:        8A            TXA                       
CODE_23EE61:        18            CLC                       
CODE_23EE62:        6D C9 18      ADC $18C9                 
CODE_23EE65:        A8            TAY                       
CODE_23EE66:        B9 3E ED      LDA.w DATA_21ED3E,y               
CODE_23EE69:        8D C8 18      STA $18C8                 
CODE_23EE6C:        22 05 F8 25   JSL CODE_25F805           
CODE_23EE70:        20 77 EE      JSR CODE_23EE77           
CODE_23EE73:        CA            DEX                       
CODE_23EE74:        10 E7         BPL CODE_23EE5D           
CODE_23EE76:        60            RTS                       

CODE_23EE77:        BD CD 18      LDA $18CD,x               
CODE_23EE7A:        F0 03         BEQ CODE_23EE7F           
CODE_23EE7C:        DE CD 18      DEC $18CD,x               
CODE_23EE7F:        BD 7C 19      LDA $197C,x               
CODE_23EE82:        F0 03         BEQ CODE_23EE87           
CODE_23EE84:        DE 7C 19      DEC $197C,x               
CODE_23EE87:        BD 02 18      LDA $1802,x               
CODE_23EE8A:        F0 EA         BEQ CODE_23EE76           
CODE_23EE8C:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23EE90:        dw CODE_23EE76
                    dw CODE_23EE98
                    dw CODE_23F605
                    dw CODE_23F69D

CODE_23EE98:        BD CD 18      LDA $18CD,x
CODE_23EE9B:        1D 7C 19      ORA $197C,x
CODE_23EE9E:        0D 30 19      ORA $1930
CODE_23EEA1:        F0 10         BEQ CODE_23EEB3           
CODE_23EEA3:        20 95 EA      JSR CODE_23EA95           
CODE_23EEA6:        20 A5 F1      JSR CODE_23F1A5           
CODE_23EEA9:        BD BB 18      LDA $18BB,x               
CODE_23EEAC:        C9 0B         CMP #$0B                  
CODE_23EEAE:        F0 13         BEQ CODE_23EEC3           
CODE_23EEB0:        4C 2E F2      JMP CODE_23F22E           

CODE_23EEB3:        BD DA 18      LDA $18DA,x               
CODE_23EEB6:        F0 03         BEQ CODE_23EEBB           
CODE_23EEB8:        DE DA 18      DEC $18DA,x               
CODE_23EEBB:        BD 1E 19      LDA $191E,x               
CODE_23EEBE:        F0 03         BEQ CODE_23EEC3           
CODE_23EEC0:        DE 1E 19      DEC $191E,x               
CODE_23EEC3:        BD E9 18      LDA $18E9,x               
CODE_23EEC6:        F0 03         BEQ CODE_23EECB           
CODE_23EEC8:        DE E9 18      DEC $18E9,x               
CODE_23EECB:        A9 01         LDA #$01                  
CODE_23EECD:        BC 46 18      LDY $1846,x               
CODE_23EED0:        10 02         BPL CODE_23EED4           
CODE_23EED2:        A9 02         LDA #$02                  
CODE_23EED4:        9D 66 18      STA $1866,x               
CODE_23EED7:        A9 04         LDA #$04                  
CODE_23EED9:        BC 35 18      LDY $1835,x               
CODE_23EEDC:        10 02         BPL CODE_23EEE0           
CODE_23EEDE:        A9 08         LDA #$08                  
CODE_23EEE0:        9D 62 19      STA $1962,x               
CODE_23EEE3:        BD BB 18      LDA $18BB,x               
CODE_23EEE6:        22 1F FB 20   JSL CODE_20FB1F           ; ExecutePtrShort

PNTR_23EEEA:        dw CODE_23F129
                    dw CODE_23F074
                    dw CODE_23F129
                    dw CODE_23F08E
                    dw CODE_23F79C
                    dw CODE_23F79C
                    dw CODE_23F79C
                    dw CODE_23F79C
                    dw CODE_23F79C
                    dw CODE_23F79C
                    dw CODE_23EF34
                    dw CODE_23EF9B
                    dw CODE_23EF3A
                    dw CODE_23EF35
                    dw CODE_23EF3A
                    dw CODE_23EF0A

CODE_23EF0A:        20 71 F9      JSR CODE_23F971
CODE_23EF0D:        20 77 F9      JSR CODE_23F977           
CODE_23EF10:        BD 35 18      LDA $1835,x               
CODE_23EF13:        30 04         BMI CODE_23EF19           
CODE_23EF15:        C9 7D         CMP #$7D                  
CODE_23EF17:        B0 09         BCS CODE_23EF22                   
CODE_23EF19:        FE 35 18      INC $1835,x               
CODE_23EF1C:        FE 35 18      INC $1835,x               
CODE_23EF1F:        FE 35 18      INC $1835,x               
CODE_23EF22:        BD 13 18      LDA $1813,x               
CODE_23EF25:        C9 E0         CMP #$E0                  
CODE_23EF27:        90 08         BCC CODE_23EF31           
CODE_23EF29:        BD 44 19      LDA $1944,x               
CODE_23EF2C:        D0 03         BNE CODE_23EF31           
CODE_23EF2E:        4C B3 F6      JMP CODE_23F6B3           

CODE_23EF31:        20 2E F2      JSR CODE_23F22E           
CODE_23EF34:        60            RTS                       

CODE_23EF35:        A9 00         LDA #$00                  
CODE_23EF37:        9D 46 18      STA $1846,x               
CODE_23EF3A:        20 71 F9      JSR CODE_23F971           
CODE_23EF3D:        20 77 F9      JSR CODE_23F977           
CODE_23EF40:        20 95 EA      JSR CODE_23EA95           
CODE_23EF43:        FE 35 18      INC $1835,x               
CODE_23EF46:        BD BB 18      LDA $18BB,x               
CODE_23EF49:        C9 0E         CMP #$0E                  
CODE_23EF4B:        F0 10         BEQ CODE_23EF5D           
CODE_23EF4D:        FE 35 18      INC $1835,x               
CODE_23EF50:        BD 97 18      LDA $1897,x               
CODE_23EF53:        29 03         AND #$03                  
CODE_23EF55:        3D 66 18      AND $1866,x               
CODE_23EF58:        F0 03         BEQ CODE_23EF5D           
CODE_23EF5A:        20 1A F4      JSR CODE_23F41A           
CODE_23EF5D:        BD 44 19      LDA $1944,x               
CODE_23EF60:        F0 07         BEQ CODE_23EF69           
CODE_23EF62:        BD 13 18      LDA $1813,x               
CODE_23EF65:        C9 F0         CMP #$F0                  
CODE_23EF67:        90 31         BCC CODE_23EF9A           
CODE_23EF69:        BD 97 18      LDA $1897,x               
CODE_23EF6C:        29 04         AND #$04                  
CODE_23EF6E:        F0 17         BEQ CODE_23EF87           
CODE_23EF70:        20 97 F1      JSR CODE_23F197           
CODE_23EF73:        BD BB 18      LDA $18BB,x               
CODE_23EF76:        C9 0E         CMP #$0E                  
CODE_23EF78:        D0 0A         BNE CODE_23EF84           
CODE_23EF7A:        BD 35 18      LDA $1835,x               
CODE_23EF7D:        30 05         BMI CODE_23EF84           
CODE_23EF7F:        A9 DC         LDA #$DC                  
CODE_23EF81:        9D 35 18      STA $1835,x               
CODE_23EF84:        20 A5 F1      JSR CODE_23F1A5           
CODE_23EF87:        BC BB 18      LDY $18BB,x               
CODE_23EF8A:        BE 81 ED      LDX.w DATA_21ED81,y               
CODE_23EF8D:        A5 15         LDA $15                   
CODE_23EF8F:        4A            LSR A                     
CODE_23EF90:        4A            LSR A                     
CODE_23EF91:        4A            LSR A                     
CODE_23EF92:        29 06         AND #$06                  
CODE_23EF94:        20 56 F2      JSR CODE_23F256           
CODE_23EF97:        20 58 F4      JSR CODE_23F458           
CODE_23EF9A:        60            RTS                       

CODE_23EF9B:        BC E9 18      LDY $18E9,x               
CODE_23EF9E:        F0 06         BEQ CODE_23EFA6           
CODE_23EFA0:        88            DEY                       
CODE_23EFA1:        D0 35         BNE CODE_23EFD8           
CODE_23EFA3:        4C B3 F6      JMP CODE_23F6B3           

CODE_23EFA6:        AD 30 19      LDA $1930                 
CODE_23EFA9:        0D 76 00      ORA $0076                 
CODE_23EFAC:        1D CD 18      ORA $18CD,x               
CODE_23EFAF:        D0 27         BNE CODE_23EFD8           
CODE_23EFB1:        20 95 EA      JSR CODE_23EA95           
CODE_23EFB4:        BD A6 18      LDA $18A6,x               
CODE_23EFB7:        F0 19         BEQ CODE_23EFD2           
CODE_23EFB9:        20 71 F9      JSR CODE_23F971           
CODE_23EFBC:        20 77 F9      JSR CODE_23F977           
CODE_23EFBF:        FE 35 18      INC $1835,x               
CODE_23EFC2:        FE 35 18      INC $1835,x               
CODE_23EFC5:        BD 13 18      LDA $1813,x               
CODE_23EFC8:        C9 E0         CMP #$E0                  
CODE_23EFCA:        90 06         BCC CODE_23EFD2           
CODE_23EFCC:        A9 00         LDA #$00                  
CODE_23EFCE:        9D 02 18      STA $1802,x               
CODE_23EFD1:        60            RTS                       

CODE_23EFD2:        20 58 F4      JSR CODE_23F458           
CODE_23EFD5:        FE 57 18      INC $1857,x               
CODE_23EFD8:        C2 30         REP #$30                  
CODE_23EFDA:        AD C8 18      LDA $18C8                 
CODE_23EFDD:        29 FF 00      AND #$00FF                
CODE_23EFE0:        18            CLC                       
CODE_23EFE1:        69 00 01      ADC #$0100                
CODE_23EFE4:        A8            TAY                       
CODE_23EFE5:        E2 20         SEP #$20                  
CODE_23EFE7:        BD E9 18      LDA $18E9,x               
CODE_23EFEA:        F0 16         BEQ CODE_23F002           
CODE_23EFEC:        AD 01 08      LDA $0801                 
CODE_23EFEF:        C9 F0         CMP #$F0                  
CODE_23EFF1:        F0 0C         BEQ CODE_23EFFF           
CODE_23EFF3:        AD 11 08      LDA $0811                 
CODE_23EFF6:        C9 F0         CMP #$F0                  
CODE_23EFF8:        D0 08         BNE CODE_23F002           
CODE_23EFFA:        A0 10 00      LDY #$0010                
CODE_23EFFD:        D0 03         BNE CODE_23F002           
CODE_23EFFF:        A0 00 00      LDY #$0000                
CODE_23F002:        AD 26 1F      LDA $1F26                 
CODE_23F005:        C9 0B         CMP #$0B                  
CODE_23F007:        D0 0A         BNE CODE_23F013           
CODE_23F009:        BD 97 18      LDA $1897,x               
CODE_23F00C:        29 03         AND #$03                  
CODE_23F00E:        F0 03         BEQ CODE_23F013           
CODE_23F010:        E2 10         SEP #$10                  
CODE_23F012:        60            RTS                       

CODE_23F013:        A9 00         LDA #$00                  
CODE_23F015:        DD 1E 19      CMP $191E,x               
CODE_23F018:        A9 22         LDA #$22                  
CODE_23F01A:        B0 02         BCS CODE_23F01E                   
CODE_23F01C:        A9 12         LDA #$12                  
CODE_23F01E:        99 03 08      STA $0803,y               
CODE_23F021:        BD 13 18      LDA $1813,x               
CODE_23F024:        99 01 08      STA $0801,y               
CODE_23F027:        BD 24 18      LDA $1824,x               
CODE_23F02A:        38            SEC                       
CODE_23F02B:        E9 04         SBC #$04                  
CODE_23F02D:        99 00 08      STA $0800,y               
CODE_23F030:        BD E9 18      LDA $18E9,x               
CODE_23F033:        F0 18         BEQ CODE_23F04D           
CODE_23F035:        E2 10         SEP #$10                  
CODE_23F037:        4A            LSR A                     
CODE_23F038:        29 07         AND #$07                  
CODE_23F03A:        AA            TAX                       
CODE_23F03B:        BD 5D ED      LDA.w DATA_21ED5D,x               
CODE_23F03E:        99 02 08      STA $0802,y               
CODE_23F041:        AE 0E 19      LDX $190E                 
CODE_23F044:        A9 02         LDA #$02                  
CODE_23F046:        99 03 08      STA $0803,y               
CODE_23F049:        C2 10         REP #$10                  
CODE_23F04B:        80 18         BRA CODE_23F065           

CODE_23F04D:        5A            PHY                       
CODE_23F04E:        E2 10         SEP #$10                  
CODE_23F050:        BD 57 18      LDA $1857,x               
CODE_23F053:        4A            LSR A                     
CODE_23F054:        4A            LSR A                     
CODE_23F055:        18            CLC                       
CODE_23F056:        6D 0E 19      ADC $190E                 
CODE_23F059:        29 03         AND #$03                  
CODE_23F05B:        A8            TAY                       
CODE_23F05C:        B9 59 ED      LDA.w DATA_21ED59,y               
CODE_23F05F:        C2 10         REP #$10                  
CODE_23F061:        7A            PLY                       
CODE_23F062:        99 02 08      STA $0802,y               
CODE_23F065:        C2 20         REP #$20                  
CODE_23F067:        98            TYA                       
CODE_23F068:        4A            LSR A                     
CODE_23F069:        4A            LSR A                     
CODE_23F06A:        A8            TAY                       
CODE_23F06B:        A9 02 00      LDA #$0002                
CODE_23F06E:        99 20 0A      STA $0A20,y               
CODE_23F071:        E2 30         SEP #$30                  
CODE_23F073:        60            RTS                       

CODE_23F074:        BD 46 18      LDA $1846,x               
CODE_23F077:        48            PHA                       
CODE_23F078:        BD 1E 19      LDA $191E,x               
CODE_23F07B:        F0 09         BEQ CODE_23F086           
CODE_23F07D:        BC 66 18      LDY $1866,x               
CODE_23F080:        B9 6A ED      LDA.w DATA_21ED6A,y               
CODE_23F083:        9D 46 18      STA $1846,x               
CODE_23F086:        20 71 F9      JSR CODE_23F971           
CODE_23F089:        68            PLA                       
CODE_23F08A:        9D 46 18      STA $1846,x               
CODE_23F08D:        60            RTS                       

CODE_23F08E:        20 EF F0      JSR CODE_23F0EF           
CODE_23F091:        BC E9 18      LDY $18E9,x               
CODE_23F094:        F0 08         BEQ CODE_23F09E           
CODE_23F096:        88            DEY                       
CODE_23F097:        D0 17         BNE CODE_23F0B0           
CODE_23F099:        A9 E4         LDA #$E4                  
CODE_23F09B:        9D 35 18      STA $1835,x               
CODE_23F09E:        20 74 F0      JSR CODE_23F074           
CODE_23F0A1:        20 77 F9      JSR CODE_23F977           
CODE_23F0A4:        BD 35 18      LDA $1835,x               
CODE_23F0A7:        30 04         BMI CODE_23F0AD           
CODE_23F0A9:        C9 40         CMP #$40                  
CODE_23F0AB:        B0 03         BCS CODE_23F0B0                   
CODE_23F0AD:        FE 35 18      INC $1835,x               
CODE_23F0B0:        20 95 EA      JSR CODE_23EA95           
CODE_23F0B3:        BD 97 18      LDA $1897,x               
CODE_23F0B6:        29 04         AND #$04                  
CODE_23F0B8:        D0 0C         BNE CODE_23F0C6           
CODE_23F0BA:        BD 57 18      LDA $1857,x               
CODE_23F0BD:        18            CLC                       
CODE_23F0BE:        69 04         ADC #$04                  
CODE_23F0C0:        9D 57 18      STA $1857,x               
CODE_23F0C3:        4C EC F0      JMP CODE_23F0EC           

CODE_23F0C6:        0A            ASL A                     
CODE_23F0C7:        9D 57 18      STA $1857,x               
CODE_23F0CA:        BD E9 18      LDA $18E9,x               
CODE_23F0CD:        D0 05         BNE CODE_23F0D4           
CODE_23F0CF:        A9 10         LDA #$10                  
CODE_23F0D1:        9D E9 18      STA $18E9,x               
CODE_23F0D4:        20 97 F1      JSR CODE_23F197           
CODE_23F0D7:        20 A5 F1      JSR CODE_23F1A5           
CODE_23F0DA:        BD 1E 19      LDA $191E,x               
CODE_23F0DD:        F0 0D         BEQ CODE_23F0EC           
CODE_23F0DF:        A9 00         LDA #$00                  
CODE_23F0E1:        9D E9 18      STA $18E9,x               
CODE_23F0E4:        9D 35 18      STA $1835,x               
CODE_23F0E7:        A5 15         LDA $15                   
CODE_23F0E9:        9D 57 18      STA $1857,x               
CODE_23F0EC:        4C 8D F1      JMP CODE_23F18D           

CODE_23F0EF:        BD 13 18      LDA $1813,x               
CODE_23F0F2:        C9 A0         CMP #$A0                  
CODE_23F0F4:        90 32         BCC CODE_23F128           
CODE_23F0F6:        BC 66 18      LDY $1866,x               
CODE_23F0F9:        BD 24 18      LDA $1824,x               
CODE_23F0FC:        D9 64 ED      CMP.w DATA_21ED64,y               
CODE_23F0FF:        D0 07         BNE CODE_23F108           
CODE_23F101:        A9 60         LDA #$60                  
CODE_23F103:        9D 1E 19      STA $191E,x               
CODE_23F106:        D0 20         BNE CODE_23F128           
CODE_23F108:        D9 66 ED      CMP.w DATA_21ED66,y               
CODE_23F10B:        D0 1B         BNE CODE_23F128           
CODE_23F10D:        A9 20         LDA #$20                  
CODE_23F10F:        9D 13 18      STA $1813,x               
CODE_23F112:        AD 83 07      LDA $0783                 
CODE_23F115:        29 01         AND #$01                  
CODE_23F117:        A8            TAY                       
CODE_23F118:        B9 32 ED      LDA.w DATA_21ED32,y               
CODE_23F11B:        9D 24 18      STA $1824,x               
CODE_23F11E:        5D 46 18      EOR $1846,x               
CODE_23F121:        10 03         BPL CODE_23F126           
CODE_23F123:        20 1A F4      JSR CODE_23F41A           
CODE_23F126:        68            PLA                       
CODE_23F127:        68            PLA                       
CODE_23F128:        60            RTS                       

CODE_23F129:        20 EF F0      JSR CODE_23F0EF           
CODE_23F12C:        20 74 F0      JSR CODE_23F074           
CODE_23F12F:        20 77 F9      JSR CODE_23F977           
CODE_23F132:        BD 35 18      LDA $1835,x               
CODE_23F135:        30 04         BMI CODE_23F13B           
CODE_23F137:        C9 40         CMP #$40                  
CODE_23F139:        B0 06         BCS CODE_23F141                   
CODE_23F13B:        FE 35 18      INC $1835,x               
CODE_23F13E:        FE 35 18      INC $1835,x               
CODE_23F141:        20 95 EA      JSR CODE_23EA95           
CODE_23F144:        BD 97 18      LDA $1897,x               
CODE_23F147:        29 04         AND #$04                  
CODE_23F149:        D0 06         BNE CODE_23F151           
CODE_23F14B:        9D 57 18      STA $1857,x               
CODE_23F14E:        4C 8D F1      JMP CODE_23F18D           

CODE_23F151:        BD 35 18      LDA $1835,x               
CODE_23F154:        48            PHA                       
CODE_23F155:        20 97 F1      JSR CODE_23F197           
CODE_23F158:        20 A5 F1      JSR CODE_23F1A5           
CODE_23F15B:        BD BB 18      LDA $18BB,x               
CODE_23F15E:        C9 02         CMP #$02                  
CODE_23F160:        D0 03         BNE CODE_23F165           
CODE_23F162:        FE 57 18      INC $1857,x               
CODE_23F165:        BD 31 19      LDA $1931,x               
CODE_23F168:        1D 53 19      ORA $1953,x               
CODE_23F16B:        F0 03         BEQ CODE_23F170           
CODE_23F16D:        FE 57 18      INC $1857,x               
CODE_23F170:        FE 57 18      INC $1857,x               
CODE_23F173:        BD 1E 19      LDA $191E,x               
CODE_23F176:        F0 03         BEQ CODE_23F17B           
CODE_23F178:        FE 57 18      INC $1857,x               
CODE_23F17B:        68            PLA                       
CODE_23F17C:        C9 10         CMP #$10                  
CODE_23F17E:        90 0D         BCC CODE_23F18D           
CODE_23F180:        BD 6F 19      LDA $196F,x               
CODE_23F183:        F0 08         BEQ CODE_23F18D           
CODE_23F185:        9D 46 18      STA $1846,x               
CODE_23F188:        A9 00         LDA #$00                  
CODE_23F18A:        9D 6F 19      STA $196F,x               
CODE_23F18D:        20 2E F2      JSR CODE_23F22E           
CODE_23F190:        20 58 F3      JSR CODE_23F358           
CODE_23F193:        20 58 F4      JSR CODE_23F458           
CODE_23F196:        60            RTS                       

CODE_23F197:        BD 13 18      LDA $1813,x               
CODE_23F19A:        29 F0         AND #$F0                  
CODE_23F19C:        9D 13 18      STA $1813,x               
CODE_23F19F:        A9 00         LDA #$00                  
CODE_23F1A1:        9D 35 18      STA $1835,x               
CODE_23F1A4:        60            RTS                       

CODE_23F1A5:        BD 35 18      LDA $1835,x               
CODE_23F1A8:        30 FA         BMI CODE_23F1A4           
CODE_23F1AA:        BD 1E 19      LDA $191E,x               
CODE_23F1AD:        D0 F5         BNE CODE_23F1A4           
CODE_23F1AF:        BD FA 18      LDA $18FA,x               
CODE_23F1B2:        C9 C2         CMP #$C2                  
CODE_23F1B4:        F0 05         BEQ CODE_23F1BB           
CODE_23F1B6:        AD BA 18      LDA $18BA                 
CODE_23F1B9:        F0 72         BEQ CODE_23F22D           
CODE_23F1BB:        A9 02         LDA #$02                  
CODE_23F1BD:        8D 00 12      STA $1200                 
CODE_23F1C0:        A9 00         LDA #$00                  
CODE_23F1C2:        9D CD 18      STA $18CD,x               
CODE_23F1C5:        9D 7C 19      STA $197C,x               
CODE_23F1C8:        BD BB 18      LDA $18BB,x               
CODE_23F1CB:        C9 0C         CMP #$0C                  
CODE_23F1CD:        B0 3A         BCS CODE_23F209                   
CODE_23F1CF:        C9 02         CMP #$02                  
CODE_23F1D1:        D0 1A         BNE CODE_23F1ED           
CODE_23F1D3:        BD 02 18      LDA $1802,x               
CODE_23F1D6:        C9 02         CMP #$02                  
CODE_23F1D8:        F0 13         BEQ CODE_23F1ED           
CODE_23F1DA:        BD 53 19      LDA $1953,x               
CODE_23F1DD:        D0 0E         BNE CODE_23F1ED           
CODE_23F1DF:        A9 01         LDA #$01                  
CODE_23F1E1:        9D 53 19      STA $1953,x               
CODE_23F1E4:        BD 46 18      LDA $1846,x               
CODE_23F1E7:        20 26 F6      JSR CODE_23F626           
CODE_23F1EA:        4C 04 F2      JMP CODE_23F204           

CODE_23F1ED:        BD 02 18      LDA $1802,x               
CODE_23F1F0:        49 03         EOR #$03                  
CODE_23F1F2:        9D 02 18      STA $1802,x               
CODE_23F1F5:        C9 01         CMP #$01                  
CODE_23F1F7:        D0 0B         BNE CODE_23F204           
CODE_23F1F9:        BC 66 18      LDY $1866,x               
CODE_23F1FC:        88            DEY                       
CODE_23F1FD:        20 38 EE      JSR CODE_23EE38           
CODE_23F200:        A9 00         LDA #$00                  
CODE_23F202:        F0 02         BEQ CODE_23F206           
CODE_23F204:        A9 FF         LDA #$FF                  
CODE_23F206:        9D E9 18      STA $18E9,x               
CODE_23F209:        BD FA 18      LDA $18FA,x               
CODE_23F20C:        C9 C2         CMP #$C2                  
CODE_23F20E:        D0 18         BNE CODE_23F228           
CODE_23F210:        BD 97 18      LDA $1897,x               
CODE_23F213:        29 C0         AND #$C0                  
CODE_23F215:        C9 C0         CMP #$C0                  
CODE_23F217:        F0 0F         BEQ CODE_23F228           
CODE_23F219:        A0 01         LDY #$01                  
CODE_23F21B:        0A            ASL A                     
CODE_23F21C:        90 01         BCC CODE_23F21F           
CODE_23F21E:        88            DEY                       
CODE_23F21F:        BD 46 18      LDA $1846,x               
CODE_23F222:        9D 6F 19      STA $196F,x               
CODE_23F225:        20 38 EE      JSR CODE_23EE38           
CODE_23F228:        A9 E0         LDA #$E0                  
CODE_23F22A:        9D 35 18      STA $1835,x               
CODE_23F22D:        60            RTS                       

CODE_23F22E:        BC BB 18      LDY $18BB,x               
CODE_23F231:        C0 04         CPY #$04                  
CODE_23F233:        F0 04         BEQ CODE_23F239           
CODE_23F235:        C0 05         CPY #$05                  
CODE_23F237:        D0 17         BNE CODE_23F250           
CODE_23F239:        BD E9 18      LDA $18E9,x               
CODE_23F23C:        F0 12         BEQ CODE_23F250           
CODE_23F23E:        4A            LSR A                     
CODE_23F23F:        4A            LSR A                     
CODE_23F240:        29 0F         AND #$0F                  
CODE_23F242:        A8            TAY                       
CODE_23F243:        B9 BD ED      LDA.w DATA_21EDBD,y               
CODE_23F246:        9D 57 18      STA $1857,x               
CODE_23F249:        A2 18         LDX #$18                  
CODE_23F24B:        A9 06         LDA #$06                  
CODE_23F24D:        4C 56 F2      JMP CODE_23F256           

CODE_23F250:        BE 81 ED      LDX.w DATA_21ED81,y               
CODE_23F253:        B9 6D ED      LDA.w DATA_21ED6D,y               
CODE_23F256:        85 00         STA $00                   
CODE_23F258:        86 01         STX $01                   
CODE_23F25A:        AE 0E 19      LDX $190E                 
CODE_23F25D:        BD 44 19      LDA $1944,x               
CODE_23F260:        F0 08         BEQ CODE_23F26A           
CODE_23F262:        BD 13 18      LDA $1813,x               
CODE_23F265:        C9 F0         CMP #$F0                  
CODE_23F267:        B0 01         BCS CODE_23F26A                   
CODE_23F269:        60            RTS                       

CODE_23F26A:        BC BB 18      LDY $18BB,x               
CODE_23F26D:        BD 31 19      LDA $1931,x               
CODE_23F270:        F0 04         BEQ CODE_23F276           
CODE_23F272:        A9 0C         LDA #$0C                  
CODE_23F274:        85 00         STA $00                   
CODE_23F276:        BD 13 18      LDA $1813,x               
CODE_23F279:        85 03         STA $03                   
CODE_23F27B:        A0 20         LDY #$20                  
CODE_23F27D:        BD 02 18      LDA $1802,x               
CODE_23F280:        C9 02         CMP #$02                  
CODE_23F282:        90 15         BCC CODE_23F299           
CODE_23F284:        BD BB 18      LDA $18BB,x               
CODE_23F287:        C9 03         CMP #$03                  
CODE_23F289:        F0 0E         BEQ CODE_23F299           
CODE_23F28B:        C9 02         CMP #$02                  
CODE_23F28D:        B0 08         BCS CODE_23F297                   
CODE_23F28F:        E6 03         INC $03                   
CODE_23F291:        E6 03         INC $03                   
CODE_23F293:        A9 1A         LDA #$1A                  
CODE_23F295:        85 01         STA $01                   
CODE_23F297:        A0 A0         LDY #$A0                  
CODE_23F299:        BD 1E 19      LDA $191E,x               
CODE_23F29C:        F0 08         BEQ CODE_23F2A6           
CODE_23F29E:        C6 03         DEC $03                   
CODE_23F2A0:        C6 03         DEC $03                   
CODE_23F2A2:        C6 03         DEC $03                   
CODE_23F2A4:        A0 10         LDY #$10                  
CODE_23F2A6:        BD 02 18      LDA $1802,x               
CODE_23F2A9:        C9 01         CMP #$01                  
CODE_23F2AB:        F0 0B         BEQ CODE_23F2B8           
CODE_23F2AD:        BD BB 18      LDA $18BB,x               
CODE_23F2B0:        C9 00         CMP #$00                  
CODE_23F2B2:        F0 04         BEQ CODE_23F2B8           
CODE_23F2B4:        98            TYA                       
CODE_23F2B5:        09 80         ORA #$80                  
CODE_23F2B7:        A8            TAY                       
CODE_23F2B8:        84 02         STY $02                   
CODE_23F2BA:        AC C8 18      LDY $18C8                 
CODE_23F2BD:        BD 24 18      LDA $1824,x               
CODE_23F2C0:        18            CLC                       
CODE_23F2C1:        6D 9B 19      ADC $199B                 
CODE_23F2C4:        99 00 09      STA $0900,y               
CODE_23F2C7:        A9 00         LDA #$00                  
CODE_23F2C9:        8D 9B 19      STA $199B                 
CODE_23F2CC:        A5 03         LDA $03                   
CODE_23F2CE:        99 01 09      STA $0901,y               
CODE_23F2D1:        BD BB 18      LDA $18BB,x               
CODE_23F2D4:        C9 02         CMP #$02                  
CODE_23F2D6:        D0 12         BNE CODE_23F2EA           
CODE_23F2D8:        BD 57 18      LDA $1857,x               
CODE_23F2DB:        A0 00         LDY #$00                  
CODE_23F2DD:        29 08         AND #$08                  
CODE_23F2DF:        F0 02         BEQ CODE_23F2E3           
CODE_23F2E1:        A0 40         LDY #$40                  
CODE_23F2E3:        98            TYA                       
CODE_23F2E4:        AC C8 18      LDY $18C8                 
CODE_23F2E7:        4C F4 F2      JMP CODE_23F2F4           

CODE_23F2EA:        BD 66 18      LDA $1866,x               
CODE_23F2ED:        4A            LSR A                     
CODE_23F2EE:        A9 00         LDA #$00                  
CODE_23F2F0:        90 02         BCC CODE_23F2F4           
CODE_23F2F2:        A9 40         LDA #$40                  
CODE_23F2F4:        05 00         ORA $00                   
CODE_23F2F6:        05 02         ORA $02                   
CODE_23F2F8:        99 03 09      STA $0903,y               
CODE_23F2FB:        BD BB 18      LDA $18BB,x               
CODE_23F2FE:        C9 02         CMP #$02                  
CODE_23F300:        D0 0F         BNE CODE_23F311           
CODE_23F302:        BD 53 19      LDA $1953,x               
CODE_23F305:        A6 01         LDX $01                   
CODE_23F307:        29 01         AND #$01                  
CODE_23F309:        D0 0F         BNE CODE_23F31A           
CODE_23F30B:        F0 0E         BEQ CODE_23F31B           
CODE_23F30D:        A9 00         LDA #$00                  
CODE_23F30F:        80 03         BRA CODE_23F314           

CODE_23F311:        BD 57 18      LDA $1857,x               
CODE_23F314:        A6 01         LDX $01                   
CODE_23F316:        29 08         AND #$08                  
CODE_23F318:        F0 01         BEQ CODE_23F31B           
CODE_23F31A:        E8            INX                       
CODE_23F31B:        BD 95 ED      LDA.w DATA_21ED95,x               
CODE_23F31E:        99 02 09      STA $0902,y               
CODE_23F321:        B9 00 09      LDA $0900,y               
CODE_23F324:        C9 F1         CMP #$F1                  
CODE_23F326:        90 23         BCC CODE_23F34B           
CODE_23F328:        B9 00 09      LDA $0900,y               
CODE_23F32B:        99 04 09      STA $0904,y               
CODE_23F32E:        B9 01 09      LDA $0901,y               
CODE_23F331:        99 05 09      STA $0905,y               
CODE_23F334:        B9 02 09      LDA $0902,y               
CODE_23F337:        99 06 09      STA $0906,y               
CODE_23F33A:        B9 03 09      LDA $0903,y               
CODE_23F33D:        99 07 09      STA $0907,y               
CODE_23F340:        98            TYA                       
CODE_23F341:        4A            LSR A                     
CODE_23F342:        4A            LSR A                     
CODE_23F343:        A8            TAY                       
CODE_23F344:        A9 03         LDA #$03                  
CODE_23F346:        99 61 0A      STA $0A61,y               
CODE_23F349:        80 04         BRA CODE_23F34F           

CODE_23F34B:        98            TYA                       
CODE_23F34C:        4A            LSR A                     
CODE_23F34D:        4A            LSR A                     
CODE_23F34E:        A8            TAY                       
CODE_23F34F:        A9 02         LDA #$02                  
CODE_23F351:        99 60 0A      STA $0A60,y               
CODE_23F354:        AE 0E 19      LDX $190E                 
CODE_23F357:        60            RTS                       

CODE_23F358:        E0 00         CPX #$00                  
CODE_23F35A:        F0 13         BEQ CODE_23F36F           
CODE_23F35C:        8A            TXA                       
CODE_23F35D:        18            CLC                       
CODE_23F35E:        65 15         ADC $15                   
CODE_23F360:        4A            LSR A                     
CODE_23F361:        90 0C         BCC CODE_23F36F           
CODE_23F363:        8A            TXA                       
CODE_23F364:        A8            TAY                       
CODE_23F365:        88            DEY                       
CODE_23F366:        84 0F         STY $0F                   
CODE_23F368:        20 70 F3      JSR CODE_23F370           
CODE_23F36B:        C6 0F         DEC $0F                   
CODE_23F36D:        10 F9         BPL CODE_23F368           
CODE_23F36F:        60            RTS                       

CODE_23F370:        A4 0F         LDY $0F                   
CODE_23F372:        B9 BB 18      LDA $18BB,y               
CODE_23F375:        C9 04         CMP #$04                  
CODE_23F377:        F0 DB         BEQ CODE_23F354           
CODE_23F379:        C9 05         CMP #$05                  
CODE_23F37B:        F0 D7         BEQ CODE_23F354           
CODE_23F37D:        B9 02 18      LDA $1802,y               
CODE_23F380:        F0 D2         BEQ CODE_23F354           
CODE_23F382:        C9 03         CMP #$03                  
CODE_23F384:        B0 08         BCS CODE_23F38E                   
CODE_23F386:        BD 1E 19      LDA $191E,x               
CODE_23F389:        19 1E 19      ORA $191E,y               
CODE_23F38C:        F0 03         BEQ CODE_23F391           
CODE_23F38E:        4C 16 F4      JMP CODE_23F416           

CODE_23F391:        BD DA 18      LDA $18DA,x               
CODE_23F394:        F0 05         BEQ CODE_23F39B           
CODE_23F396:        B9 DA 18      LDA $18DA,y               
CODE_23F399:        D0 7B         BNE CODE_23F416           
CODE_23F39B:        A6 0F         LDX $0F                   
CODE_23F39D:        A0 04         LDY #$04                  
CODE_23F39F:        20 32 F4      JSR CODE_23F432           
CODE_23F3A2:        AE 0E 19      LDX $190E                 
CODE_23F3A5:        A0 00         LDY #$00                  
CODE_23F3A7:        20 32 F4      JSR CODE_23F432           
CODE_23F3AA:        20 C9 EC      JSR CODE_23ECC9           
CODE_23F3AD:        90 67         BCC CODE_23F416           
CODE_23F3AF:        A4 0F         LDY $0F                   
CODE_23F3B1:        BD 97 18      LDA $1897,x               
CODE_23F3B4:        39 97 18      AND $1897,y               
CODE_23F3B7:        29 04         AND #$04                  
CODE_23F3B9:        F0 5B         BEQ CODE_23F416           
CODE_23F3BB:        BD CD 18      LDA $18CD,x               
CODE_23F3BE:        D0 25         BNE CODE_23F3E5           
CODE_23F3C0:        A9 28         LDA #$28                  
CODE_23F3C2:        9D DA 18      STA $18DA,x               
CODE_23F3C5:        BD 02 18      LDA $1802,x               
CODE_23F3C8:        C9 01         CMP #$01                  
CODE_23F3CA:        D0 0A         BNE CODE_23F3D6           
CODE_23F3CC:        A9 10         LDA #$10                  
CODE_23F3CE:        9D CD 18      STA $18CD,x               
CODE_23F3D1:        A9 08         LDA #$08                  
CODE_23F3D3:        9D 57 18      STA $1857,x               
CODE_23F3D6:        BD 24 18      LDA $1824,x               
CODE_23F3D9:        D9 24 18      CMP $1824,y               
CODE_23F3DC:        6A            ROR A                     
CODE_23F3DD:        5D 46 18      EOR $1846,x               
CODE_23F3E0:        30 03         BMI CODE_23F3E5           
CODE_23F3E2:        20 1A F4      JSR CODE_23F41A           
CODE_23F3E5:        B9 CD 18      LDA $18CD,y               
CODE_23F3E8:        D0 2C         BNE CODE_23F416           
CODE_23F3EA:        A9 28         LDA #$28                  
CODE_23F3EC:        99 DA 18      STA $18DA,y               
CODE_23F3EF:        B9 02 18      LDA $1802,y               
CODE_23F3F2:        C9 01         CMP #$01                  
CODE_23F3F4:        D0 0A         BNE CODE_23F400           
CODE_23F3F6:        A9 10         LDA #$10                  
CODE_23F3F8:        99 CD 18      STA $18CD,y               
CODE_23F3FB:        A9 08         LDA #$08                  
CODE_23F3FD:        99 57 18      STA $1857,y               
CODE_23F400:        B9 24 18      LDA $1824,y               
CODE_23F403:        DD 24 18      CMP $1824,x               
CODE_23F406:        6A            ROR A                     
CODE_23F407:        59 46 18      EOR $1846,y               
CODE_23F40A:        30 05         BMI CODE_23F411           
CODE_23F40C:        A6 0F         LDX $0F                   
CODE_23F40E:        20 1A F4      JSR CODE_23F41A           
CODE_23F411:        A4 0F         LDY $0F                   
CODE_23F413:        AE 0E 19      LDX $190E                 
CODE_23F416:        AE 0E 19      LDX $190E                 
CODE_23F419:        60            RTS                       

CODE_23F41A:        BD 46 18      LDA $1846,x               
CODE_23F41D:        49 FF         EOR #$FF                  
CODE_23F41F:        18            CLC                       
CODE_23F420:        69 01         ADC #$01                  
CODE_23F422:        9D 46 18      STA $1846,x               
CODE_23F425:        60            RTS                       

CODE_23F426:        B9 22 18      LDA $1822,y               
CODE_23F429:        A0 00         LDY #$00                  
CODE_23F42B:        FD 24 18      SBC $1824,x               
CODE_23F42E:        10 01         BPL CODE_23F431           
CODE_23F430:        C8            INY                       
CODE_23F431:        60            RTS                       

CODE_23F432:        BD 13 18      LDA $1813,x               
CODE_23F435:        18            CLC                       
CODE_23F436:        69 06         ADC #$06                  
CODE_23F438:        99 00 00      STA $0000,y               
CODE_23F43B:        A9 04         LDA #$04                  
CODE_23F43D:        99 02 00      STA $0002,y               
CODE_23F440:        BD 24 18      LDA $1824,x               
CODE_23F443:        18            CLC                       
CODE_23F444:        69 02         ADC #$02                  
CODE_23F446:        99 01 00      STA $0001,y               
CODE_23F449:        BD BB 18      LDA $18BB,x               
CODE_23F44C:        C9 0B         CMP #$0B                  
CODE_23F44E:        A9 0C         LDA #$0C                  
CODE_23F450:        90 02         BCC CODE_23F454           
CODE_23F452:        A9 05         LDA #$05                  
CODE_23F454:        99 03 00      STA $0003,y               
CODE_23F457:        60            RTS                       

CODE_23F458:        AD 00 18      LDA $1800                 
CODE_23F45B:        C9 03         CMP #$03                  
CODE_23F45D:        F0 04         BEQ CODE_23F463           
CODE_23F45F:        C9 01         CMP #$01                  
CODE_23F461:        D0 F4         BNE CODE_23F457           
CODE_23F463:        AD 01 18      LDA $1801                 
CODE_23F466:        C9 03         CMP #$03                  
CODE_23F468:        F0 04         BEQ CODE_23F46E           
CODE_23F46A:        C9 01         CMP #$01                  
CODE_23F46C:        D0 E9         BNE CODE_23F457           
CODE_23F46E:        8A            TXA                       
CODE_23F46F:        18            CLC                       
CODE_23F470:        65 15         ADC $15                   
CODE_23F472:        4A            LSR A                     
CODE_23F473:        B0 E2         BCS CODE_23F457                   
CODE_23F475:        BD BB 18      LDA $18BB,x               
CODE_23F478:        C9 06         CMP #$06                  
CODE_23F47A:        F0 05         BEQ CODE_23F481           
CODE_23F47C:        BD 1E 19      LDA $191E,x               
CODE_23F47F:        D0 D6         BNE CODE_23F457           
CODE_23F481:        A9 01         LDA #$01                  
CODE_23F483:        85 0F         STA $0F                   
CODE_23F485:        A6 0F         LDX $0F                   
CODE_23F487:        BD 00 18      LDA $1800,x               
CODE_23F48A:        C9 01         CMP #$01                  
CODE_23F48C:        D0 05         BNE CODE_23F493           
CODE_23F48E:        BD 0A 19      LDA $190A,x               
CODE_23F491:        F0 03         BEQ CODE_23F496           
CODE_23F493:        4C 59 F5      JMP CODE_23F559           

CODE_23F496:        A0 04         LDY #$04                  
CODE_23F498:        20 AC EC      JSR CODE_23ECAC           
CODE_23F49B:        A0 00         LDY #$00                  
CODE_23F49D:        AE 0E 19      LDX $190E                 
CODE_23F4A0:        20 32 F4      JSR CODE_23F432           
CODE_23F4A3:        20 C9 EC      JSR CODE_23ECC9           
CODE_23F4A6:        A4 0F         LDY $0F                   
CODE_23F4A8:        90 E9         BCC CODE_23F493           
CODE_23F4AA:        BD BB 18      LDA $18BB,x               
CODE_23F4AD:        C9 0C         CMP #$0C                  
CODE_23F4AF:        90 03         BCC CODE_23F4B4           
CODE_23F4B1:        4C D3 F5      JMP CODE_23F5D3           

CODE_23F4B4:        C9 0B         CMP #$0B                  
CODE_23F4B6:        D0 44         BNE CODE_23F4FC           
CODE_23F4B8:        A9 01         LDA #$01                  
CODE_23F4BA:        8D 03 12      STA $1203                 
CODE_23F4BD:        A9 0F         LDA #$0F                  
CODE_23F4BF:        9D E9 18      STA $18E9,x               
CODE_23F4C2:        B9 2E 19      LDA $192E,y               
CODE_23F4C5:        18            CLC                       
CODE_23F4C6:        69 01         ADC #$01                  
CODE_23F4C8:        99 2E 19      STA $192E,y               
CODE_23F4CB:        AD 2E 19      LDA $192E                 
CODE_23F4CE:        18            CLC                       
CODE_23F4CF:        6D 2F 19      ADC $192F                 
CODE_23F4D2:        C9 05         CMP #$05                  
CODE_23F4D4:        D0 22         BNE CODE_23F4F8           
CODE_23F4D6:        A0 0B         LDY #$0B                  
CODE_23F4D8:        A9 FF         LDA #$FF                  
CODE_23F4DA:        99 CD 18      STA $18CD,y               
CODE_23F4DD:        88            DEY                       
CODE_23F4DE:        10 FA         BPL CODE_23F4DA           
CODE_23F4E0:        A0 01         LDY #$01                  
CODE_23F4E2:        AD 2E 19      LDA $192E                 
CODE_23F4E5:        CD 2F 19      CMP $192F                 
CODE_23F4E8:        90 01         BCC CODE_23F4EB           
CODE_23F4EA:        C8            INY                       
CODE_23F4EB:        8C 8C 07      STY $078C                 
CODE_23F4EE:        A9 C0         LDA #$C0                  
CODE_23F4F0:        8D 30 19      STA $1930                 
CODE_23F4F3:        A9 07         LDA #$07                  
CODE_23F4F5:        8D 02 12      STA $1202                 
CODE_23F4F8:        20 61 E1      JSR CODE_23E161           
CODE_23F4FB:        60            RTS                       

CODE_23F4FC:        BD 02 18      LDA $1802,x               
CODE_23F4FF:        C9 01         CMP #$01                  
CODE_23F501:        D0 61         BNE CODE_23F564           
CODE_23F503:        A0 0B         LDY #$0B                  
CODE_23F505:        A9 FF         LDA #$FF                  
CODE_23F507:        99 CD 18      STA $18CD,y               
CODE_23F50A:        88            DEY                       
CODE_23F50B:        10 FA         BPL CODE_23F507           
CODE_23F50D:        A5 0F         LDA $0F                   
CODE_23F50F:        49 01         EOR #$01                  
CODE_23F511:        A8            TAY                       
CODE_23F512:        A9 FE         LDA #$FE                  
CODE_23F514:        8D 30 19      STA $1930                 
CODE_23F517:        A4 0F         LDY $0F                   
CODE_23F519:        A9 02         LDA #$02                  
CODE_23F51B:        8D 8C 07      STA $078C                 
CODE_23F51E:        C0 01         CPY #$01                  
CODE_23F520:        F0 05         BEQ CODE_23F527           
CODE_23F522:        A9 01         LDA #$01                  
CODE_23F524:        8D 8C 07      STA $078C                 
CODE_23F527:        A9 20         LDA #$20                  
CODE_23F529:        9D 57 18      STA $1857,x               
CODE_23F52C:        99 E7 18      STA $18E7,y               
CODE_23F52F:        A9 09         LDA #$09                  
CODE_23F531:        8D 02 12      STA $1202                 
CODE_23F534:        A9 02         LDA #$02                  
CODE_23F536:        99 00 18      STA $1800,y               
CODE_23F539:        A9 D0         LDA #$D0                  
CODE_23F53B:        99 33 18      STA $1833,y               
CODE_23F53E:        BD BB 18      LDA $18BB,x               
CODE_23F541:        C9 04         CMP #$04                  
CODE_23F543:        F0 0C         BEQ CODE_23F551           
CODE_23F545:        C9 05         CMP #$05                  
CODE_23F547:        F0 08         BEQ CODE_23F551           
CODE_23F549:        20 26 F4      JSR CODE_23F426           
CODE_23F54C:        C8            INY                       
CODE_23F54D:        98            TYA                       
CODE_23F54E:        9D 66 18      STA $1866,x               
CODE_23F551:        AE 0E 19      LDX $190E                 
CODE_23F554:        60            RTS                       

CODE_23F555:        88            DEY                       
CODE_23F556:        20 38 EE      JSR CODE_23EE38           
CODE_23F559:        C6 0F         DEC $0F                   
CODE_23F55B:        30 03         BMI CODE_23F560           
CODE_23F55D:        4C 85 F4      JMP CODE_23F485           

CODE_23F560:        AE 0E 19      LDX $190E                 
CODE_23F563:        60            RTS                       

CODE_23F564:        A9 03         LDA #$03                  
CODE_23F566:        8D 00 12      STA $1200                 
CODE_23F569:        B9 44 18      LDA $1844,y               
CODE_23F56C:        A0 00         LDY #$00                  
CODE_23F56E:        C9 00         CMP #$00                  
CODE_23F570:        30 01         BMI CODE_23F573           
CODE_23F572:        C8            INY                       
CODE_23F573:        B9 CD ED      LDA.w DATA_21EDCD,y               
CODE_23F576:        9D 46 18      STA $1846,x               
CODE_23F579:        A4 0F         LDY $0F                   
CODE_23F57B:        A9 03         LDA #$03                  
CODE_23F57D:        9D 02 18      STA $1802,x               
CODE_23F580:        A9 E0         LDA #$E0                  
CODE_23F582:        9D 35 18      STA $1835,x               
CODE_23F585:        A9 0C         LDA #$0C                  
CODE_23F587:        99 B3 18      STA $18B3,y               
CODE_23F58A:        B9 2E 19      LDA $192E,y               
CODE_23F58D:        18            CLC                       
CODE_23F58E:        69 01         ADC #$01                  
CODE_23F590:        99 2E 19      STA $192E,y               
CODE_23F593:        AD 2E 19      LDA $192E                 
CODE_23F596:        18            CLC                       
CODE_23F597:        6D 2F 19      ADC $192F                 
CODE_23F59A:        C9 05         CMP #$05                  
CODE_23F59C:        F0 24         BEQ CODE_23F5C2           
CODE_23F59E:        C9 04         CMP #$04                  
CODE_23F5A0:        D0 23         BNE CODE_23F5C5           
CODE_23F5A2:        EE A0 19      INC $19A0                 
CODE_23F5A5:        A2 04         LDX #$04                  
CODE_23F5A7:        BD 02 18      LDA $1802,x               
CODE_23F5AA:        F0 04         BEQ CODE_23F5B0           
CODE_23F5AC:        C9 03         CMP #$03                  
CODE_23F5AE:        90 05         BCC CODE_23F5B5           
CODE_23F5B0:        CA            DEX                       
CODE_23F5B1:        10 F4         BPL CODE_23F5A7           
CODE_23F5B3:        30 10         BMI CODE_23F5C5           
CODE_23F5B5:        BD 46 18      LDA $1846,x               
CODE_23F5B8:        20 26 F6      JSR CODE_23F626           
CODE_23F5BB:        A9 01         LDA #$01                  
CODE_23F5BD:        9D 31 19      STA $1931,x               
CODE_23F5C0:        D0 03         BNE CODE_23F5C5           
CODE_23F5C2:        20 D6 F4      JSR CODE_23F4D6           
CODE_23F5C5:        AE 0E 19      LDX $190E                 
CODE_23F5C8:        A4 0F         LDY $0F                   
CODE_23F5CA:        A9 05         LDA #$05                  
CODE_23F5CC:        99 BC 00      STA $00BC,y               
CODE_23F5CF:        20 61 E1      JSR CODE_23E161           
CODE_23F5D2:        60            RTS                       

CODE_23F5D3:        BD E9 18      LDA $18E9,x               
CODE_23F5D6:        D0 2C         BNE CODE_23F604           
CODE_23F5D8:        20 B3 F6      JSR CODE_23F6B3           
CODE_23F5DB:        A9 05         LDA #$05                  
CODE_23F5DD:        8D 00 12      STA $1200                 
CODE_23F5E0:        A4 0F         LDY $0F                   
CODE_23F5E2:        A9 40         LDA #$40                  
CODE_23F5E4:        99 89 19      STA $1989,y               
CODE_23F5E7:        A0 00         LDY #$00                  
CODE_23F5E9:        A5 0F         LDA $0F                   
CODE_23F5EB:        F0 02         BEQ CODE_23F5EF           
CODE_23F5ED:        A0 23         LDY #$23                  
CODE_23F5EF:        B9 9D 1D      LDA $1D9D,y               
CODE_23F5F2:        99 9E 1D      STA $1D9E,y               
CODE_23F5F5:        B9 9C 1D      LDA $1D9C,y               
CODE_23F5F8:        99 9D 1D      STA $1D9D,y               
CODE_23F5FB:        BD BB 18      LDA $18BB,x               
CODE_23F5FE:        38            SEC                       
CODE_23F5FF:        E9 0B         SBC #$0B                  
CODE_23F601:        99 9C 1D      STA $1D9C,y               
CODE_23F604:        60            RTS                       

CODE_23F605:        BD CD 18      LDA $18CD,x               
CODE_23F608:        D0 7A         BNE CODE_23F684           
CODE_23F60A:        A9 00         LDA #$00                  
CODE_23F60C:        9D 57 18      STA $1857,x               
CODE_23F60F:        BD E9 18      LDA $18E9,x               
CODE_23F612:        D0 33         BNE CODE_23F647           
CODE_23F614:        20 2E F2      JSR CODE_23F22E           
CODE_23F617:        A9 01         LDA #$01                  
CODE_23F619:        9D 02 18      STA $1802,x               
CODE_23F61C:        BD 6F 19      LDA $196F,x               
CODE_23F61F:        48            PHA                       
CODE_23F620:        A9 00         LDA #$00                  
CODE_23F622:        9D 6F 19      STA $196F,x               
CODE_23F625:        68            PLA                       
CODE_23F626:        08            PHP                       
CODE_23F627:        10 05         BPL CODE_23F62E           
CODE_23F629:        49 FF         EOR #$FF                  
CODE_23F62B:        18            CLC                       
CODE_23F62C:        69 01         ADC #$01                  
CODE_23F62E:        A0 00         LDY #$00                  
CODE_23F630:        C9 0A         CMP #$0A                  
CODE_23F632:        90 02         BCC CODE_23F636           
CODE_23F634:        C8            INY                       
CODE_23F635:        C8            INY                       
CODE_23F636:        C9 0C         CMP #$0C                  
CODE_23F638:        90 02         BCC CODE_23F63C           
CODE_23F63A:        C8            INY                       
CODE_23F63B:        C8            INY                       
CODE_23F63C:        28            PLP                       
CODE_23F63D:        10 01         BPL CODE_23F640           
CODE_23F63F:        C8            INY                       
CODE_23F640:        B9 D5 ED      LDA.w DATA_21EDD5,y               
CODE_23F643:        9D 46 18      STA $1846,x               
CODE_23F646:        60            RTS                       

CODE_23F647:        A5 15         LDA $15                   
CODE_23F649:        29 01         AND #$01                  
CODE_23F64B:        D0 03         BNE CODE_23F650           
CODE_23F64D:        DE E9 18      DEC $18E9,x               
CODE_23F650:        BD E9 18      LDA $18E9,x               
CODE_23F653:        C9 60         CMP #$60                  
CODE_23F655:        B0 15         BCS CODE_23F66C                   
CODE_23F657:        4A            LSR A                     
CODE_23F658:        4A            LSR A                     
CODE_23F659:        4A            LSR A                     
CODE_23F65A:        4A            LSR A                     
CODE_23F65B:        4A            LSR A                     
CODE_23F65C:        A8            TAY                       
CODE_23F65D:        A5 15         LDA $15                   
CODE_23F65F:        39 CF ED      AND.w DATA_21EDCF,y               
CODE_23F662:        F0 08         BEQ CODE_23F66C           
CODE_23F664:        EE 9B 19      INC $199B                 
CODE_23F667:        A9 08         LDA #$08                  
CODE_23F669:        9D 57 18      STA $1857,x               
CODE_23F66C:        20 95 EA      JSR CODE_23EA95           
CODE_23F66F:        BD 97 18      LDA $1897,x               
CODE_23F672:        29 04         AND #$04                  
CODE_23F674:        F0 0B         BEQ CODE_23F681           
CODE_23F676:        20 97 F1      JSR CODE_23F197           
CODE_23F679:        A9 00         LDA #$00                  
CODE_23F67B:        9D 46 18      STA $1846,x               
CODE_23F67E:        20 A5 F1      JSR CODE_23F1A5           
CODE_23F681:        20 87 F6      JSR CODE_23F687           
CODE_23F684:        4C 8D F1      JMP CODE_23F18D           

CODE_23F687:        20 71 F9      JSR CODE_23F971           
CODE_23F68A:        20 77 F9      JSR CODE_23F977           
CODE_23F68D:        BD 35 18      LDA $1835,x               
CODE_23F690:        30 04         BMI CODE_23F696           
CODE_23F692:        C9 40         CMP #$40                  
CODE_23F694:        B0 06         BCS CODE_23F69C                   
CODE_23F696:        FE 35 18      INC $1835,x               
CODE_23F699:        FE 35 18      INC $1835,x               
CODE_23F69C:        60            RTS                       

CODE_23F69D:        BD 31 19      LDA $1931,x               
CODE_23F6A0:        D0 05         BNE CODE_23F6A7           
CODE_23F6A2:        BD CD 18      LDA $18CD,x               
CODE_23F6A5:        D0 2E         BNE CODE_23F6D5           
CODE_23F6A7:        BD 13 18      LDA $1813,x               
CODE_23F6AA:        C9 E0         CMP #$E0                  
CODE_23F6AC:        90 0B         BCC CODE_23F6B9           
CODE_23F6AE:        BD 44 19      LDA $1944,x               
CODE_23F6B1:        D0 06         BNE CODE_23F6B9           
CODE_23F6B3:        A9 00         LDA #$00                  
CODE_23F6B5:        9D 02 18      STA $1802,x               
CODE_23F6B8:        60            RTS                       

CODE_23F6B9:        20 87 F6      JSR CODE_23F687           
CODE_23F6BC:        FE 35 18      INC $1835,x               
CODE_23F6BF:        A5 15         LDA $15                   
CODE_23F6C1:        29 01         AND #$01                  
CODE_23F6C3:        D0 10         BNE CODE_23F6D5           
CODE_23F6C5:        BD 46 18      LDA $1846,x               
CODE_23F6C8:        F0 0B         BEQ CODE_23F6D5           
CODE_23F6CA:        30 06         BMI CODE_23F6D2           
CODE_23F6CC:        DE 46 18      DEC $1846,x               
CODE_23F6CF:        DE 46 18      DEC $1846,x               
CODE_23F6D2:        FE 46 18      INC $1846,x               
CODE_23F6D5:        4C 2E F2      JMP CODE_23F22E           

CODE_23F6D8:        60            RTS                       

CODE_23F6D9:        AD BA 18      LDA $18BA                 
CODE_23F6DC:        85 00         STA $00                   
CODE_23F6DE:        F0 0D         BEQ CODE_23F6ED           
CODE_23F6E0:        CE BA 18      DEC $18BA                 
CODE_23F6E3:        4A            LSR A                     
CODE_23F6E4:        29 03         AND #$03                  
CODE_23F6E6:        A8            TAY                       
CODE_23F6E7:        B9 DD ED      LDA.w DATA_21EDDD,y               
CODE_23F6EA:        8D 16 02      STA $0216                 
CODE_23F6ED:        AD 3E 19      LDA $193E                 
CODE_23F6F0:        C9 03         CMP #$03                  
CODE_23F6F2:        F0 E4         BEQ CODE_23F6D8           
CODE_23F6F4:        A9 98         LDA #$98                  
CODE_23F6F6:        38            SEC                       
CODE_23F6F7:        ED 16 02      SBC $0216                 
CODE_23F6FA:        8D 21 08      STA $0821                 
CODE_23F6FD:        A9 78         LDA #$78                  
CODE_23F6FF:        8D 20 08      STA $0820                 
CODE_23F702:        AD 3E 19      LDA $193E                 
CODE_23F705:        A8            TAY                       
CODE_23F706:        B9 E1 ED      LDA.w DATA_21EDE1,y               
CODE_23F709:        8D 22 08      STA $0822                 
CODE_23F70C:        A9 04         LDA #$04                  
CODE_23F70E:        8D 23 08      STA $0823                 
CODE_23F711:        A9 02         LDA #$02                  
CODE_23F713:        8D 28 0A      STA $0A28                 
CODE_23F716:        A2 01         LDX #$01                  
CODE_23F718:        AD 3E 19      LDA $193E                 
CODE_23F71B:        C9 03         CMP #$03                  
CODE_23F71D:        F0 76         BEQ CODE_23F795           
CODE_23F71F:        BD 00 18      LDA $1800,x               
CODE_23F722:        C9 01         CMP #$01                  
CODE_23F724:        D0 6F         BNE CODE_23F795           
CODE_23F726:        A0 00         LDY #$00                  
CODE_23F728:        20 AC EC      JSR CODE_23ECAC           
CODE_23F72B:        A9 98         LDA #$98                  
CODE_23F72D:        85 04         STA $04                   
CODE_23F72F:        A9 78         LDA #$78                  
CODE_23F731:        85 05         STA $05                   
CODE_23F733:        A9 10         LDA #$10                  
CODE_23F735:        85 07         STA $07                   
CODE_23F737:        AC 3E 19      LDY $193E                 
CODE_23F73A:        38            SEC                       
CODE_23F73B:        F9 E4 ED      SBC.w DATA_21EDE4,y               
CODE_23F73E:        85 06         STA $06                   
CODE_23F740:        20 C9 EC      JSR CODE_23ECC9           
CODE_23F743:        90 50         BCC CODE_23F795           
CODE_23F745:        AC 3E 19      LDY $193E                 
CODE_23F748:        B9 E4 ED      LDA.w DATA_21EDE4,y               
CODE_23F74B:        9D 3F 19      STA $193F,x               
CODE_23F74E:        BD 11 18      LDA $1811,x               
CODE_23F751:        38            SEC                       
CODE_23F752:        FD 3F 19      SBC $193F,x               
CODE_23F755:        C9 8D         CMP #$8D                  
CODE_23F757:        B0 0C         BCS CODE_23F765                   
CODE_23F759:        BD 33 18      LDA $1833,x               
CODE_23F75C:        30 37         BMI CODE_23F795           
CODE_23F75E:        A9 04         LDA #$04                  
CODE_23F760:        9D 95 18      STA $1895,x               
CODE_23F763:        F0 30         BEQ CODE_23F795           
CODE_23F765:        BD 11 18      LDA $1811,x               
CODE_23F768:        18            CLC                       
CODE_23F769:        7D 3F 19      ADC $193F,x               
CODE_23F76C:        C9 A1         CMP #$A1                  
CODE_23F76E:        90 25         BCC CODE_23F795           
CODE_23F770:        BD 33 18      LDA $1833,x               
CODE_23F773:        10 20         BPL CODE_23F795           
CODE_23F775:        A9 09         LDA #$09                  
CODE_23F777:        8D 03 12      STA $1203                 
CODE_23F77A:        EE 3E 19      INC $193E                 
CODE_23F77D:        A9 00         LDA #$00                  
CODE_23F77F:        9D 33 18      STA $1833,x               
CODE_23F782:        A9 A9         LDA #$A9                  
CODE_23F784:        38            SEC                       
CODE_23F785:        FD 3F 19      SBC $193F,x               
CODE_23F788:        9D 11 18      STA $1811,x               
CODE_23F78B:        A9 08         LDA #$08                  
CODE_23F78D:        9D B7 18      STA $18B7,x               
CODE_23F790:        A9 10         LDA #$10                  
CODE_23F792:        8D BA 18      STA $18BA                 
CODE_23F795:        CA            DEX                       
CODE_23F796:        30 03         BMI CODE_23F79B           
CODE_23F798:        4C 18 F7      JMP CODE_23F718           

CODE_23F79B:        60            RTS                       

CODE_23F79C:        BD E9 18      LDA $18E9,x               
CODE_23F79F:        F0 0A         BEQ CODE_23F7AB           
CODE_23F7A1:        C9 20         CMP #$20                  
CODE_23F7A3:        D0 03         BNE CODE_23F7A8           
CODE_23F7A5:        4C B3 F6      JMP CODE_23F6B3           

CODE_23F7A8:        4C 2E F2      JMP CODE_23F22E           

CODE_23F7AB:        20 2E F2      JSR CODE_23F22E           
CODE_23F7AE:        AC C8 18      LDY $18C8                 
CODE_23F7B1:        BD 57 18      LDA $1857,x               
CODE_23F7B4:        29 10         AND #$10                  
CODE_23F7B6:        F0 08         BEQ CODE_23F7C0           
CODE_23F7B8:        B9 03 09      LDA $0903,y               
CODE_23F7BB:        49 C0         EOR #$C0                  
CODE_23F7BD:        99 03 09      STA $0903,y               
CODE_23F7C0:        FE 57 18      INC $1857,x               
CODE_23F7C3:        FE 57 18      INC $1857,x               
CODE_23F7C6:        BC 66 18      LDY $1866,x               
CODE_23F7C9:        BD 24 18      LDA $1824,x               
CODE_23F7CC:        D9 EA ED      CMP.w DATA_21EDEA,y               
CODE_23F7CF:        D0 0C         BNE CODE_23F7DD           
CODE_23F7D1:        BD BB 18      LDA $18BB,x               
CODE_23F7D4:        C9 04         CMP #$04                  
CODE_23F7D6:        D0 05         BNE CODE_23F7DD           
CODE_23F7D8:        A9 40         LDA #$40                  
CODE_23F7DA:        9D E9 18      STA $18E9,x               
CODE_23F7DD:        20 58 F4      JSR CODE_23F458           
CODE_23F7E0:        20 95 EA      JSR CODE_23EA95           
CODE_23F7E3:        AD BA 18      LDA $18BA                 
CODE_23F7E6:        D0 07         BNE CODE_23F7EF           
CODE_23F7E8:        BD FA 18      LDA $18FA,x               
CODE_23F7EB:        C9 C2         CMP #$C2                  
CODE_23F7ED:        D0 05         BNE CODE_23F7F4           
CODE_23F7EF:        A9 40         LDA #$40                  
CODE_23F7F1:        9D E9 18      STA $18E9,x               
CODE_23F7F4:        BD BB 18      LDA $18BB,x               
CODE_23F7F7:        C9 04         CMP #$04                  
CODE_23F7F9:        D0 1F         BNE CODE_23F81A           
CODE_23F7FB:        20 71 F9      JSR CODE_23F971           
CODE_23F7FE:        20 77 F9      JSR CODE_23F977           
CODE_23F801:        BD A6 18      LDA $18A6,x               
CODE_23F804:        29 01         AND #$01                  
CODE_23F806:        A8            TAY                       
CODE_23F807:        BD 35 18      LDA $1835,x               
CODE_23F80A:        18            CLC                       
CODE_23F80B:        79 E7 ED      ADC.w DATA_21EDE7,y               
CODE_23F80E:        9D 35 18      STA $1835,x               
CODE_23F811:        D9 E9 ED      CMP.w DATA_21EDE9,y               
CODE_23F814:        D0 03         BNE CODE_23F819           
CODE_23F816:        FE A6 18      INC $18A6,x               
CODE_23F819:        60            RTS                       

CODE_23F81A:        C9 06         CMP #$06                  
CODE_23F81C:        F0 29         BEQ CODE_23F847           
CODE_23F81E:        BD 97 18      LDA $1897,x               
CODE_23F821:        29 03         AND #$03                  
CODE_23F823:        3D 66 18      AND $1866,x               
CODE_23F826:        F0 03         BEQ CODE_23F82B           
CODE_23F828:        20 1A F4      JSR CODE_23F41A           
CODE_23F82B:        BD 97 18      LDA $1897,x               
CODE_23F82E:        29 0C         AND #$0C                  
CODE_23F830:        3D 62 19      AND $1962,x               
CODE_23F833:        F0 0B         BEQ CODE_23F840           
CODE_23F835:        BD 35 18      LDA $1835,x               
CODE_23F838:        49 FF         EOR #$FF                  
CODE_23F83A:        18            CLC                       
CODE_23F83B:        69 01         ADC #$01                  
CODE_23F83D:        9D 35 18      STA $1835,x               
CODE_23F840:        20 71 F9      JSR CODE_23F971           
CODE_23F843:        20 77 F9      JSR CODE_23F977           
CODE_23F846:        60            RTS                       

CODE_23F847:        20 40 F8      JSR CODE_23F840           
CODE_23F84A:        FE 35 18      INC $1835,x               
CODE_23F84D:        FE 35 18      INC $1835,x               
CODE_23F850:        BD 13 18      LDA $1813,x               
CODE_23F853:        C9 E0         CMP #$E0                  
CODE_23F855:        90 05         BCC CODE_23F85C           
CODE_23F857:        A9 00         LDA #$00                  
CODE_23F859:        9D 02 18      STA $1802,x               
CODE_23F85C:        60            RTS                       

CODE_23F85D:        A2 01         LDX #$01                  
CODE_23F85F:        8E 0E 19      STX $190E                 
CODE_23F862:        8A            TXA                       
CODE_23F863:        18            CLC                       
CODE_23F864:        6D C9 18      ADC $18C9                 
CODE_23F867:        A8            TAY                       
CODE_23F868:        B9 4A ED      LDA.w DATA_21ED4A,y               
CODE_23F86B:        8D C8 18      STA $18C8                 
CODE_23F86E:        BD 0F 18      LDA $180F,x               
CODE_23F871:        F0 26         BEQ CODE_23F899           
CODE_23F873:        48            PHA                       
CODE_23F874:        C9 0E         CMP #$0E                  
CODE_23F876:        D0 03         BNE CODE_23F87B           
CODE_23F878:        20 F0 F8      JSR CODE_23F8F0           
CODE_23F87B:        68            PLA                       
CODE_23F87C:        C9 01         CMP #$01                  
CODE_23F87E:        D0 16         BNE CODE_23F896           
CODE_23F880:        20 DD F8      JSR CODE_23F8DD           
CODE_23F883:        A9 00         LDA #$00                  
CODE_23F885:        85 2E         STA $2E                   
CODE_23F887:        A9 20         LDA #$20                  
CODE_23F889:        85 2F         STA $2F                   
CODE_23F88B:        A9 7E         LDA #$7E                  
CODE_23F88D:        85 30         STA $30                   
CODE_23F88F:        BC 08 19      LDY $1908,x               
CODE_23F892:        A9 C1         LDA #$C1                  
CODE_23F894:        97 2E         STA [$2E],y               
CODE_23F896:        20 9D F8      JSR CODE_23F89D           
CODE_23F899:        CA            DEX                       
CODE_23F89A:        10 C3         BPL CODE_23F85F           
CODE_23F89C:        60            RTS                       

CODE_23F89D:        AD 76 00      LDA $0076                 
CODE_23F8A0:        0D CB 18      ORA $18CB                 
CODE_23F8A3:        0D CC 18      ORA $18CC                 
CODE_23F8A6:        0D 30 19      ORA $1930                 
CODE_23F8A9:        D0 0F         BNE CODE_23F8BA           
CODE_23F8AB:        DE 0F 18      DEC $180F,x               
CODE_23F8AE:        20 6B F9      JSR CODE_23F96B           
CODE_23F8B1:        BD 42 18      LDA $1842,x               
CODE_23F8B4:        18            CLC                       
CODE_23F8B5:        69 05         ADC #$05                  
CODE_23F8B7:        9D 42 18      STA $1842,x               
CODE_23F8BA:        AC C8 18      LDY $18C8                 
CODE_23F8BD:        BD 31 18      LDA $1831,x               
CODE_23F8C0:        99 00 09      STA $0900,y               
CODE_23F8C3:        BD 20 18      LDA $1820,x               
CODE_23F8C6:        99 01 09      STA $0901,y               
CODE_23F8C9:        A9 2C         LDA #$2C                  
CODE_23F8CB:        99 03 09      STA $0903,y               
CODE_23F8CE:        A9 80         LDA #$80                  
CODE_23F8D0:        99 02 09      STA $0902,y               
CODE_23F8D3:        98            TYA                       
CODE_23F8D4:        4A            LSR A                     
CODE_23F8D5:        4A            LSR A                     
CODE_23F8D6:        A8            TAY                       
CODE_23F8D7:        A9 02         LDA #$02                  
CODE_23F8D9:        99 60 0A      STA $0A60,y               
CODE_23F8DC:        60            RTS                       

CODE_23F8DD:        A9 02         LDA #$02                  
CODE_23F8DF:        85 0C         STA $0C                   
CODE_23F8E1:        A9 03         LDA #$03                  
CODE_23F8E3:        85 0D         STA $0D                   
CODE_23F8E5:        A9 12         LDA #$12                  
CODE_23F8E7:        85 0E         STA $0E                   
CODE_23F8E9:        A9 13         LDA #$13                  
CODE_23F8EB:        85 0F         STA $0F                   
CODE_23F8ED:        4C FA F8      JMP CODE_23F8FA           

CODE_23F8F0:        A9 FF         LDA #$FF                  
CODE_23F8F2:        85 0C         STA $0C                   
CODE_23F8F4:        85 0D         STA $0D                   
CODE_23F8F6:        85 0E         STA $0E                   
CODE_23F8F8:        85 0F         STA $0F                   
CODE_23F8FA:        AC 00 16      LDY $1600                 
CODE_23F8FD:        A9 08         LDA #$08                  
CODE_23F8FF:        85 03         STA $03                   
CODE_23F901:        BD 08 19      LDA $1908,x               
CODE_23F904:        48            PHA                       
CODE_23F905:        29 F0         AND #$F0                  
CODE_23F907:        0A            ASL A                     
CODE_23F908:        26 03         ROL $03                   
CODE_23F90A:        0A            ASL A                     
CODE_23F90B:        26 03         ROL $03                   
CODE_23F90D:        85 04         STA $04                   
CODE_23F90F:        68            PLA                       
CODE_23F910:        0A            ASL A                     
CODE_23F911:        29 1F         AND #$1F                  
CODE_23F913:        18            CLC                       
CODE_23F914:        65 04         ADC $04                   
CODE_23F916:        99 03 16      STA $1603,y               
CODE_23F919:        18            CLC                       
CODE_23F91A:        69 20         ADC #$20                  
CODE_23F91C:        99 0B 16      STA $160B,y               
CODE_23F91F:        A5 03         LDA $03                   
CODE_23F921:        29 DF         AND #$DF                  
CODE_23F923:        99 02 16      STA $1602,y               
CODE_23F926:        99 0A 16      STA $160A,y               
CODE_23F929:        A9 00         LDA #$00                  
CODE_23F92B:        99 04 16      STA $1604,y               
CODE_23F92E:        99 0C 16      STA $160C,y               
CODE_23F931:        A9 03         LDA #$03                  
CODE_23F933:        99 05 16      STA $1605,y               
CODE_23F936:        99 0D 16      STA $160D,y               
CODE_23F939:        A5 0C         LDA $0C                   
CODE_23F93B:        99 06 16      STA $1606,y               
CODE_23F93E:        A5 0D         LDA $0D                   
CODE_23F940:        99 08 16      STA $1608,y               
CODE_23F943:        A5 0E         LDA $0E                   
CODE_23F945:        99 0E 16      STA $160E,y               
CODE_23F948:        A5 0F         LDA $0F                   
CODE_23F94A:        99 10 16      STA $1610,y               
CODE_23F94D:        A9 18         LDA #$18                  
CODE_23F94F:        99 07 16      STA $1607,y               
CODE_23F952:        99 09 16      STA $1609,y               
CODE_23F955:        99 0F 16      STA $160F,y               
CODE_23F958:        99 11 16      STA $1611,y               
CODE_23F95B:        A9 FF         LDA #$FF                  
CODE_23F95D:        99 12 16      STA $1612,y               
CODE_23F960:        99 13 16      STA $1613,y               
CODE_23F963:        98            TYA                       
CODE_23F964:        18            CLC                       
CODE_23F965:        69 10         ADC #$10                  
CODE_23F967:        8D 00 16      STA $1600                 
CODE_23F96A:        60            RTS                       

CODE_23F96B:        8A            TXA                       
CODE_23F96C:        18            CLC                       
CODE_23F96D:        69 0F         ADC #$0F                  
CODE_23F96F:        10 0A         BPL CODE_23F97B           
CODE_23F971:        8A            TXA                       
CODE_23F972:        18            CLC                       
CODE_23F973:        69 13         ADC #$13                  
CODE_23F975:        10 04         BPL CODE_23F97B           
CODE_23F977:        8A            TXA                       
CODE_23F978:        18            CLC                       
CODE_23F979:        69 02         ADC #$02                  
CODE_23F97B:        AA            TAX                       
CODE_23F97C:        20 8F F9      JSR CODE_23F98F           
CODE_23F97F:        AE 0E 19      LDX $190E                 
CODE_23F982:        60            RTS                       

CODE_23F983:        8A            TXA                       
CODE_23F984:        18            CLC                       
CODE_23F985:        69 11         ADC #$11                  
CODE_23F987:        AA            TAX                       
CODE_23F988:        20 8F F9      JSR CODE_23F98F           
CODE_23F98B:        AE 0E 19      LDX $190E                 
CODE_23F98E:        60            RTS                       

CODE_23F98F:        BD 33 18      LDA $1833,x               
CODE_23F992:        0A            ASL A                     
CODE_23F993:        0A            ASL A                     
CODE_23F994:        0A            ASL A                     
CODE_23F995:        0A            ASL A                     
CODE_23F996:        18            CLC                       
CODE_23F997:        7D 73 18      ADC $1873,x               
CODE_23F99A:        9D 73 18      STA $1873,x               
CODE_23F99D:        08            PHP                       
CODE_23F99E:        A0 00         LDY #$00                  
CODE_23F9A0:        BD 33 18      LDA $1833,x               
CODE_23F9A3:        4A            LSR A                     
CODE_23F9A4:        4A            LSR A                     
CODE_23F9A5:        4A            LSR A                     
CODE_23F9A6:        4A            LSR A                     
CODE_23F9A7:        C9 08         CMP #$08                  
CODE_23F9A9:        90 03         BCC CODE_23F9AE           
CODE_23F9AB:        09 F0         ORA #$F0                  
CODE_23F9AD:        88            DEY                       
CODE_23F9AE:        28            PLP                       
CODE_23F9AF:        7D 11 18      ADC $1811,x               
CODE_23F9B2:        9D 11 18      STA $1811,x               
CODE_23F9B5:        2A            ROL A                     
CODE_23F9B6:        E0 11         CPX #$11                  
CODE_23F9B8:        B0 08         BCS CODE_23F9C2                   
CODE_23F9BA:        6A            ROR A                     
CODE_23F9BB:        98            TYA                       
CODE_23F9BC:        7D 42 19      ADC $1942,x               
CODE_23F9BF:        9D 42 19      STA $1942,x               
CODE_23F9C2:        60            RTS                       

CODE_23F9C3:        AD 76 00      LDA $0076                 
CODE_23F9C6:        F0 1F         BEQ CODE_23F9E7           
CODE_23F9C8:        8B            PHB                       
CODE_23F9C9:        4B            PHK                       
CODE_23F9CA:        AB            PLB                       
CODE_23F9CB:        A0 00         LDY #$00                  
CODE_23F9CD:        C2 30         REP #$30                  
CODE_23F9CF:        A9 17 FA      LDA #$FA17                
CODE_23F9D2:        8D 00 00      STA $0000                 
CODE_23F9D5:        A9 2B FA      LDA #$FA2B                
CODE_23F9D8:        8D 02 00      STA $0002                 
CODE_23F9DB:        A9 28 00      LDA #$0028                
CODE_23F9DE:        8D 04 00      STA $0004                 
CODE_23F9E1:        20 E8 F9      JSR CODE_23F9E8           
CODE_23F9E4:        E2 30         SEP #$30                  
CODE_23F9E6:        AB            PLB                       
CODE_23F9E7:        60            RTS                       

CODE_23F9E8:        B2 00         LDA ($00)                 
CODE_23F9EA:        99 30 08      STA $0830,y               
CODE_23F9ED:        B2 02         LDA ($02)                 
CODE_23F9EF:        99 32 08      STA $0832,y               
CODE_23F9F2:        EE 00 00      INC $0000                 
CODE_23F9F5:        EE 00 00      INC $0000                 
CODE_23F9F8:        EE 02 00      INC $0002                 
CODE_23F9FB:        EE 02 00      INC $0002                 
CODE_23F9FE:        5A            PHY                       
CODE_23F9FF:        98            TYA                       
CODE_23FA00:        4A            LSR A                     
CODE_23FA01:        4A            LSR A                     
CODE_23FA02:        A8            TAY                       
CODE_23FA03:        E2 30         SEP #$30                  
CODE_23FA05:        A9 00         LDA #$00                  
CODE_23FA07:        99 2C 0A      STA $0A2C,y               
CODE_23FA0A:        C2 30         REP #$30                  
CODE_23FA0C:        7A            PLY                       
CODE_23FA0D:        C8            INY                       
CODE_23FA0E:        C8            INY                       
CODE_23FA0F:        C8            INY                       
CODE_23FA10:        C8            INY                       
CODE_23FA11:        CC 04 00      CPY $0004                 
CODE_23FA14:        D0 D2         BNE CODE_23F9E8           
CODE_23FA16:        60            RTS                       

DATA_23FA17:        db $6C,$80,$74,$80,$7C,$80,$84,$80
                    db $8C,$80,$6C,$88,$74,$88,$7C,$88
                    db $84,$88,$8C,$88,$2D,$23,$C6,$22
                    db $C2,$22,$2E,$23,$2F,$23,$3D,$23
                    db $D6,$22,$D2,$22,$3E,$23,$3F,$23

DATA_23FA3F:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF